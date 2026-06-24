//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_SEMAPHORE_H
#define OSPROJEKAT_SEMAPHORE_H

#include "../lib/hw.h"
#include "Thread.hpp"

class Semaphore {
    int value;
    bool closed;
    Thread* blockedHead;
    Thread* blockedTail;

    void enqueue(Thread* thread);
    Thread* dequeue();
public:
    void init(unsigned initialValue);
    int wait(Thread* caller);
    int signal();
    int waitN(Thread* caller, unsigned n);
    int signalN(unsigned n);
    int close();
};

#endif //OSPROJEKAT_SEMAPHORE_H