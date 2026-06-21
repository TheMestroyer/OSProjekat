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
    static void* free_stacks;
    static size_t* stack_cursor;

    static void SaveContext();
    static void RestoreContext(Thread* thread);
public:
    static void SetupStartStack();

    static Thread* GetRunning();
    //Switches from oldThread to newThread
    static void yield(Thread* oldThread, Thread* newThread);
    //Gets and removes the thread from the scheduler if its there
    static Thread* GetNext();
    //Adds the thread to the scheduler if not already there
    static void Put(Thread* thread);
    static void AddNewThread(Thread* thread);

};


#endif //OSPROJEKAT_SCHEDULER_H
