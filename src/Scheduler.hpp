//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_SCHEDULER_H
#define OSPROJEKAT_SCHEDULER_H
#include "Thread.hpp"
#include "../lib/hw.h"




class Scheduler{
    static time_t runningThreadTimeLeft;
    static Thread* running;
    static Thread* readyQueue;
    static Thread* readyQueueEnd;
    static Thread* sleepQueue;
    static void* free_stacks;
    static size_t* stack_cursor;

    static void SaveContext();
    static void RestoreContext(Thread* thread);
public:
    static void SetupStartStack();
    static void SetupStartThread();

    static Thread* GetRunning();
    static void yield(Thread* oldThread, Thread* newThread);
    static void ThreadExit(Thread* t);
    static Thread* GetNext();
    static void Put(Thread* thread);
    static void AddNewThread(Thread* thread);
    static void timerTick(Thread* current);
    static void sleep(Thread* thread, time_t duration);

};


#endif //OSPROJEKAT_SCHEDULER_H