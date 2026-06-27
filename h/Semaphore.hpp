//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_SEMAPHORE_H
#define OSPROJEKAT_SEMAPHORE_H

#include "../lib/hw.h"
#include "Thread.hpp"

class KSemaphore {
    int val;
    bool isClosed;
    KThread* head;
    KThread* tail;

    void enqueue(KThread* t);
    KThread* dequeue();
public:
    void init(unsigned initVal);
    int wait(KThread* tcb);
    int signal();
    int waitN(KThread* tcb, unsigned n);
    int signalN(unsigned n);
    int close();
};

#endif //OSPROJEKAT_SEMAPHORE_H
