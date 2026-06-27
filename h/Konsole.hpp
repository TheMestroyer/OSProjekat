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
    static KSemaphore outputItems;

    static KThread* getcWaiterHead;
    static KThread* getcWaiterTail;

    static void enqueueGetcWaiter(KThread* thread);
    static KThread* dequeueGetcWaiter();
    static void outputThreadBody(void*);

public:
    static void init();
    static void handleInterrupt();
    static int putcKernel(KThread* caller, char c);
    static int getcKernel(KThread* caller);
};

#endif //OSPROJEKAT_CONSOLE_H