//
// Created by os on 6/10/26.
//

#include "Thread.hpp"
#include "Scheduler.hpp"

#include "../lib/console.h"

KThread::KThread() {
}

void KThread::init() {
    body = nullptr;
    arg = nullptr;
    parent = nullptr;
    prev = nullptr;
    next = nullptr;
    stackPtr = nullptr;
    supervisorSp = nullptr;
    sleepDelta = 0;
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    threadContext.sepc = 0;
    threadContext.sstatus = 0;
    threadContext.pc = 0;
}

void KThread::copyContext(size_t* ctx) {
    Context* cont = reinterpret_cast<Context*>(ctx);
    for (int i = 0;i<32;i++) {
        threadContext.x[i] = cont->x[i];
    }
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    threadContext.sepc = cont->sepc;
    threadContext.sstatus =cont->sstatus;
}

size_t* KThread::getContext() {
    return reinterpret_cast<size_t*>(&threadContext);
}
KThread* KThread::getNextInQueue(){
    return next;
}
KThread* KThread::getPrevInQueue(){
    return prev;
}
void KThread::setNextInQueue(KThread* next){
    this->next = next;
}
void KThread::setPrevInQueue(KThread* prev){
    this->prev = prev;
}
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    setNextInQueue(next);
    setPrevInQueue(prev);
}

void KThread::setup(KThread* parentThread, size_t* stack_top) {
    parent = parentThread;
    stackPtr = stack_top;
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    threadContext.x[10] = reinterpret_cast<size_t>(this);

    size_t gp_val;
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    threadContext.x[3] = gp_val;

    size_t sstatus_val;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    sstatus_val |= (1UL << 8); // SPP=1
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void KThread::threadTrampoline(KThread* t) {
    if (t->body) t->body(t->arg);
    Scheduler::ThreadExit(t);
}