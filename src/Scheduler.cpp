//
// Created by os on 6/10/26.
//

#include "Scheduler.hpp"
#include "MemoryAllocator.hpp"

extern "C" void saveContext(size_t* ctx);
extern "C" void restoreContext(size_t* ctx);
extern "C" void setupStartContext(size_t* ctx);

KThread* Scheduler::running = nullptr;
KThread* Scheduler::readyQueue = nullptr;
KThread* Scheduler::readyQueueEnd = nullptr;
KThread* Scheduler::sleepQueue = nullptr;
KThread* Scheduler::deadThread = nullptr;
time_t   Scheduler::runningThreadTimeLeft = DEFAULT_TIME_SLICE;
size_t*  Scheduler::stack_cursor = nullptr;


KThread* Scheduler::GetRunning(){
    return running;
}
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    running = newThread;
    restoreContext(newThread->getContext());
}

void Scheduler::ThreadExit(KThread* t) {
    deadThread = t;
    KThread* next = GetNext();
    if (next == nullptr) {
        next = t->getParent();
        if (next == nullptr) { while (true) {} }
    }
    yield(t, next);
}

void Scheduler::freeDead() {
    if (deadThread == nullptr) return;
    KThread* dead = deadThread;
    deadThread = nullptr;
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    MemoryAllocator::GetInstance().FreeFragment(dead);
}
KThread* Scheduler::GetNext() {
    if (readyQueue == nullptr) return nullptr;
    KThread* toRet = readyQueue;
    readyQueue = readyQueue->getNextInQueue();
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    else readyQueueEnd = nullptr;
    toRet->setNextInQueue(nullptr);
    toRet->setPrevInQueue(nullptr);
    return toRet;
}
void Scheduler::Put(KThread* thread) {
    thread->setNextInQueue(nullptr);
    if (readyQueueEnd != nullptr) {
        thread->setPrevInQueue(readyQueueEnd);
        readyQueueEnd->setNextInQueue(thread);
    } else {
        thread->setPrevInQueue(nullptr);
        readyQueue = thread;
    }
    readyQueueEnd = thread;
}

extern "C" char end[];

void Scheduler::SetupStartStack() {
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    while (true) { thread_dispatch(); }
}


void Scheduler::SetupStartThread() {
    SetupStartStack();

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    running->init();
    setupStartContext(running->getContext());
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    Put(idle);
}

void Scheduler::AddNewThread(KThread* thread) {
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
}

void Scheduler::timerTick(KThread* current) {
    __asm__ volatile("csrw sip, zero");

    if (sleepQueue != nullptr) {
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
            waking->setNextInQueue(nullptr);
            Put(waking);
        }
    }

    if (current == nullptr) return;

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    if (runningThreadTimeLeft > 0) return;

    KThread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}

void Scheduler::sleep(KThread* thread, time_t duration) {
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
        remaining -= current->sleepDelta;
        previous = current;
        current  = current->getNextInQueue();
    }

    thread->sleepDelta = remaining;
    thread->setNextInQueue(current);
    if (previous == nullptr) sleepQueue = thread;
    else previous->setNextInQueue(thread);
    if (current != nullptr) current->sleepDelta -= remaining;
}