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

void Scheduler::timerTick(Thread* current) {
    __asm__ volatile("csrw sip, zero");

    if (sleepQueue != nullptr) {
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            Thread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
            waking->setNextInQueue(nullptr);
            Put(waking);
        }
    }

    if (current == nullptr) return;

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    if (runningThreadTimeLeft > 0) return;

    Thread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}

void Scheduler::sleep(Thread* thread, time_t duration) {
    Thread* previous = nullptr;
    Thread* current  = sleepQueue;
    time_t  remaining = duration;

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

