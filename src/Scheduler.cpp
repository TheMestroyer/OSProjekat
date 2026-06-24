//
// Created by os on 6/10/26.
//

#include "Scheduler.hpp"

#include "MemoryAllocator.hpp"

extern "C" void saveContext(size_t* ctx);
extern "C" void restoreContext(size_t* ctx);
extern "C" void setupStartContext(size_t* ctx);

Thread* Scheduler::running = nullptr;
Thread* Scheduler::readyQueue = nullptr;
Thread* Scheduler::readyQueueEnd = nullptr;
Thread* Scheduler::sleepQueue = nullptr;
time_t  Scheduler::runningThreadTimeLeft = DEFAULT_TIME_SLICE;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    return running;
}
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    running = newThread;
    restoreContext(newThread->getContext());
}

void Scheduler::ThreadExit(Thread* t) {
    Thread* next = GetNext();
    if (next == nullptr) {
        next = t->getParent();
        if (next == nullptr) { while (true) {} }
    }
    yield(t, next);
}
Thread* Scheduler::GetNext() {
    if (readyQueue == nullptr) return nullptr;
    Thread* toRet = readyQueue;
    readyQueue = readyQueue->getNextInQueue();
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    else readyQueueEnd = nullptr;
    toRet->setNextInQueue(nullptr);
    toRet->setPrevInQueue(nullptr);
    return toRet;
}
void Scheduler::Put(Thread* thread) {
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

void Scheduler::SetupStartThread() {
    SetupStartStack();
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    setupStartContext(running->getContext());
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
}

void Scheduler::AddNewThread(Thread* thread) {
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
}

void Scheduler::timerTick(Thread* cur) {
    __asm__ volatile("csrw sip, zero");

    // wake sleeping threads
    if (sleepQueue != nullptr) {
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            Thread* t = sleepQueue;
            sleepQueue = t->getNextInQueue();
            t->setNextInQueue(nullptr);
            Put(t);
        }
    }

    if (cur == nullptr) return;

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    if (runningThreadTimeLeft > 0) return;

    Thread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;  // no other thread, keep running
    Put(cur);
    yield(cur, next);
}

void Scheduler::sleep(Thread* t, time_t dur) {
    Thread* prev = nullptr;
    Thread* cur  = sleepQueue;
    time_t  rem  = dur;

    while (cur != nullptr && cur->sleepDelta <= rem) {
        rem -= cur->sleepDelta;
        prev = cur;
        cur  = cur->getNextInQueue();
    }

    t->sleepDelta = rem;
    t->setNextInQueue(cur);
    if (prev == nullptr) sleepQueue = t;
    else prev->setNextInQueue(t);
    if (cur != nullptr) cur->sleepDelta -= rem;
}

