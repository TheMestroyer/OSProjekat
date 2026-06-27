//
// Created by os on 6/25/26.
//

#include "../h/Semaphore.hpp"
#include "../h/Scheduler.hpp"

void KSemaphore::init(unsigned initVal) {
    head = tail = nullptr;
    val = (int)initVal;
    isClosed = false;
}

void KSemaphore::enqueue(KThread* t) {
    t->setNextInQueue(nullptr);
    if (tail != nullptr) {
        t->setPrevInQueue(tail);
        tail->setNextInQueue(t);
    } else {
        t->setPrevInQueue(nullptr);
        head = t;
    }
    tail = t;
}

KThread* KSemaphore::dequeue() {
    if (head == nullptr) return nullptr;
    KThread* t = head;
    head = t->getNextInQueue();
    if (head != nullptr)
        head->setPrevInQueue(nullptr);
    else
        tail = nullptr;
    t->setNextInQueue(nullptr);
    t->setPrevInQueue(nullptr);
    return t;
}

int KSemaphore::wait(KThread* tcb) {
    if (isClosed) return -1;
    if (val > 0) { val--; return 0; }
    tcb->sleepDelta = 1;
    tcb->threadContext.x[10] = 0;
    enqueue(tcb);
    return 1;
}

int KSemaphore::signal() {
    val++;
    if (head != nullptr && val >= (int)head->sleepDelta) {
        KThread* t = dequeue();
        val -= (int)t->sleepDelta;
        Scheduler::Put(t);
    }
    return 0;
}

int KSemaphore::waitN(KThread* tcb, unsigned n) {
    if (isClosed) { tcb->threadContext.x[10] = (size_t)-1; return -1; }
    if (val >= (int)n) { val -= (int)n; return 0; }
    tcb->sleepDelta = (time_t)n;
    tcb->threadContext.x[10] = 0;
    enqueue(tcb);
    return 1;
}

int KSemaphore::signalN(unsigned n) {
    val += (int)n;
    while (head != nullptr && val >= (int)head->sleepDelta) {
        KThread* t = dequeue();
        val -= (int)t->sleepDelta;
        Scheduler::Put(t);
    }
    return 0;
}

int KSemaphore::close() {
    isClosed = true;
    KThread* t = dequeue();
    while (t != nullptr) {
        t->threadContext.x[10] = (size_t)-1;
        Scheduler::Put(t);
        t = dequeue();
    }
    return 0;
}
