//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_THREAD_H
#define OSPROJEKAT_THREAD_H

#include "Scheduler.h"
#include "../lib/hw.h"

class Thread{
private:
    Context threadContext;
    Thread* prev;
    Thread* next;
    size_t stack[DEFAULT_STACK_SIZE];
    size_t supervisorSp;
public:
    Context* getContext();
    void setContext(Context* context);
    Thread* getNextInQueue();
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void start();
    virtual void run();
    void join();
};


#endif //OSPROJEKAT_THREAD_H
