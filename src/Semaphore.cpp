//
// Created by os on 6/25/26.
//

#include "Semaphore.hpp"
#include "Scheduler.hpp"

void KSemaphore::init(unsigned initialValue) {
    blockedHead = nullptr;
    blockedTail = nullptr;
    value = (int)initialValue;
    closed = false;
}

void KSemaphore::enqueue(KThread* thread) {
    thread->setNextInQueue(nullptr);
    if (blockedTail != nullptr) {
        thread->setPrevInQueue(blockedTail);
        blockedTail->setNextInQueue(thread);
    } else {
        thread->setPrevInQueue(nullptr);
        blockedHead = thread;
    }
    blockedTail = thread;
}

KThread* KSemaphore::dequeue() {
    if (blockedHead == nullptr) return nullptr;
    KThread* thread = blockedHead;
    blockedHead = thread->getNextInQueue();
    if (blockedHead != nullptr) {
        blockedHead->setPrevInQueue(nullptr);
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

int KSemaphore::wait(KThread* caller) {
    if (closed) { return -1; }
    if (value > 0) { value--; return 0; }
    caller->sleepDelta = 1;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}

int KSemaphore::signal() {
    value+=1;
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
        KThread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}

int KSemaphore::waitN(KThread* caller, unsigned n) {
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    if (value >= (int)n) { value -= (int)n; return 0; }
    caller->sleepDelta = (time_t)n;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}

int KSemaphore::signalN(unsigned n) {
    value += (int)n;
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
        KThread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}

int KSemaphore::close() {
    closed = true;
    KThread* thread = dequeue();
    while (thread != nullptr) {
        thread->threadContext.x[10] = (size_t)-1;
        Scheduler::Put(thread);
        thread = dequeue();
    }
    return 0;
}