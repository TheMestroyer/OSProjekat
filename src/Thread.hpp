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

class KThread{
    friend class Scheduler;
    friend class KSemaphore;
protected:
    static void threadTrampoline(KThread* t);
    void (*body)(void*);
    void* arg;
    KThread* parent;

    KThread* prev;
    KThread* next;
    size_t* stackPtr;
    size_t* supervisorSp;
    time_t sleepDelta;
    uint8  priority;
public:
    void* stackBase;
    Context threadContext;
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    KThread* getNextInQueue();
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
};


#endif //OSPROJEKAT_THREAD_H