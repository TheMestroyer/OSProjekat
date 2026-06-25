//
// Created by os on 6/24/26.
//

#ifndef OSPROJEKAT_CONSOLE_H
#define OSPROJEKAT_CONSOLE_H

#include "../lib/hw.h"
#include "Thread.hpp"
#include "Semaphore.hpp"

class Konsole {
    static const int BUFFER_SIZE = 256;

    static char inputBuffer[BUFFER_SIZE];
    static int inputHead;
    static int inputTail;

    static char outputBuffer[BUFFER_SIZE];
    static int outputHead;
    static int outputTail;
    static Semaphore outputItems;

    static Thread* getcWaiterHead;
    static Thread* getcWaiterTail;

    static void enqueueGetcWaiter(Thread* thread);
    static Thread* dequeueGetcWaiter();
    static void outputThreadBody(void*);

public:
    static void init();
    static void handleInterrupt();
    static int putcKernel(Thread* caller, char c);
    static int getcKernel(Thread* caller);
};

#endif //OSPROJEKAT_CONSOLE_H
