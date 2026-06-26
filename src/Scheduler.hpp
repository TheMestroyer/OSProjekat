//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_SCHEDULER_H
#define OSPROJEKAT_SCHEDULER_H
#include "Thread.hpp"
#include "../lib/hw.h"




class Scheduler{
    static time_t runningThreadTimeLeft;
    static KThread* running;
    static constexpr int LEVELS = 4;
    static KThread* readyHead[LEVELS];
    static KThread* readyTail[LEVELS];
    static int agingTick;
    static KThread* sleepQueue;
    static void* free_stacks;
    static size_t* stack_cursor;
    static KThread* deadThread;

    static void SaveContext();
    static void RestoreContext(KThread* thread);
    static void PutPreempted(KThread* thread);
public:
    static void SetupStartStack();
    static void SetupStartThread();

    static KThread* GetRunning();
    static void yield(KThread* oldThread, KThread* newThread);
    static void ThreadExit(KThread* t);
    static KThread* GetNext();
    static void Put(KThread* thread);
    static void AddNewThread(KThread* thread);
    static void timerTick(KThread* current);
    static void sleep(KThread* thread, time_t duration);
    static void freeDead();

};


#endif //OSPROJEKAT_SCHEDULER_H