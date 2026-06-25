//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_SEMAPHORE_H
#define OSPROJEKAT_SEMAPHORE_H

#include "../lib/hw.h"
#include "Thread.hpp"

class KSemaphore {
    int value;
    bool closed;
    KThread* blockedHead;
    KThread* blockedTail;

    void enqueue(KThread* thread);
    KThread* dequeue();
public:
    void init(unsigned initialValue);
    int wait(KThread* caller);
    int signal();
    int waitN(KThread* caller, unsigned n);
    int signalN(unsigned n);
    int close();
};

#endif //OSPROJEKAT_SEMAPHORE_H