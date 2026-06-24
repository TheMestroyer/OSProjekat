//
// Created by os on 6/10/26.
//

#ifndef OSPROJEKAT_THREAD_H
#define OSPROJEKAT_THREAD_H

#include "../lib/hw.h"
struct Context {
    size_t x[32];    // x0-x31, offsets 0x00-0xF8
    size_t sepc;     // offset 0x100
    size_t sstatus;  // offset 0x108
    size_t pc;
};

class Thread{
    friend class Scheduler;
    friend class Semaphore;
protected:
    static void threadTrampoline(Thread* t);
    void (*body)(void*);
    void* arg;
    Thread* parent;

    Thread* prev;
    Thread* next;
    size_t* stackPtr;
    size_t* supervisorSp;
    time_t sleepDelta;
public:
    Context threadContext;
    Thread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    Thread* getParent() { return parent; }
    Thread* getNextInQueue();
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void setup(Thread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
};


#endif //OSPROJEKAT_THREAD_H