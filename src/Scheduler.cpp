//
// Created by os on 6/10/26.
//

#include "Scheduler.hpp"
#include "MemoryAllocator.hpp"

extern "C" void saveContext(size_t* ctx);
extern "C" void restoreContext(size_t* ctx);
extern "C" void setupStartContext(size_t* ctx);

KThread* Scheduler::running = nullptr;
KThread* Scheduler::readyHead[Scheduler::LEVELS] = {};
KThread* Scheduler::readyTail[Scheduler::LEVELS] = {};
int      Scheduler::agingTick = 0;
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

bool Scheduler::yieldCurrent(KThread* current) {
    KThread* next = GetNext();
    if (next == nullptr) return false;

    if (current) current->threadContext.x[10] = 0;
    Put(current);
    yield(current, next);
    return true;
}

void Scheduler::blockCurrent(KThread* current) {
    KThread* next = GetNext();
    if (next == nullptr) { while (true) {} }
    yield(current, next);
}

void Scheduler::ThreadExit(KThread* t) {
    deadThread = t;
    KThread* next = GetNext();
    if (next == nullptr) {
        next = t->getParent();
        if (next == nullptr) { while (true) {} }
    }
    if (t->stopperThread)return;
    if (t->waitingThread) {
        Put(t->waitingThread);
        t->waitingThread->stopperThread = t->stopperThread;
        t->waitingThread=nullptr;
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
    for (int i = 0; i < LEVELS; i++) {
        if (readyHead[i] == nullptr) continue;
        KThread* toRet = readyHead[i];
        readyHead[i] = toRet->getNextInQueue();
        if (readyHead[i] != nullptr) readyHead[i]->setPrevInQueue(nullptr);
        else readyTail[i] = nullptr;
        toRet->setNextInQueue(nullptr);
        toRet->setPrevInQueue(nullptr);
        return toRet;
    }
    return nullptr;
}

void Scheduler::Put(KThread* thread) {
    int lvl = thread->priority;
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(readyTail[lvl]);
    if (readyTail[lvl] != nullptr) readyTail[lvl]->setNextInQueue(thread);
    else readyHead[lvl] = thread;
    readyTail[lvl] = thread;
}

void Scheduler::PutPreempted(KThread* thread) {
    if (thread->priority < LEVELS - 1) thread->priority++;
    Put(thread);
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

    if (++agingTick >= 100) {
        agingTick = 0;
        for (int i = 1; i < LEVELS; i++) {
            if (readyHead[i] == nullptr) continue;
            KThread* curr = readyHead[i];
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
            if (readyTail[0] != nullptr) {
                readyTail[0]->setNextInQueue(readyHead[i]);
                readyHead[i]->setPrevInQueue(readyTail[0]);
            } else {
                readyHead[0] = readyHead[i];
            }
            readyTail[0] = readyTail[i];
            readyHead[i] = readyTail[i] = nullptr;
        }
    }

    KThread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    PutPreempted(current);
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

void Scheduler::joinThread(KThread* joiningThread) {
    joiningThread->waitingThread = running;
    running->stopperThread = joiningThread;
    blockCurrent(running);

}