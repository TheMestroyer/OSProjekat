//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_THREAD_H
#define OSPROJEKAT_THREAD_H

#include "../lib/hw.h"
struct Context {
    size_t* x[32];    // x0-x31, offsets 0x00-0xF
    size_t* sepc;     // offset 0x100
    size_t* sstatus;  // offset 0x108
};

class Thread{
private:
    static void threadTrampoline(Thread* t) {
        t->run();
    }

    Context threadContext;
    Thread* prev;
    Thread* next;
    size_t* stackPtr;
    size_t* stack[DEFAULT_STACK_SIZE];
    size_t* supervisorSp;
public:
    Thread();
    void setStackPtr(size_t* stackPtr);
    void setSupervisorSp(size_t* supervisorSp);
    size_t* getContext();
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
