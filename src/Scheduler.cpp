//
// Created by os on 6/10/26.
//

#include "Scheduler.h"
extern "C" void saveContext(context_t* ctx);
extern "C" void restoreContext(context_t* ctx);

Thread* Scheduler::GetRunning(){
    return running;
}
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    saveContext(oldThread->getContext());
    restoreContext(newThread->getContext());
}
Thread* Scheduler::GetNext(){
    //TODO: Add checks if empty and stuff
    Node* toRet = readyQueue;
    readyQueue = readyQueue->getNextInQueue();
    return toRet;
}
void Scheduler::Put(Thread* thread){
    //TODO: Add checks if it already exists
    thread->setNextAndPrevInQueue(nullptr, readyQueueEnd);
    readyQueueEnd->setNextInQueue(thread);
    readyQueueEnd = thread;
}

void Scheduler::SetupStartStack(){
    size_t sp;
    size_t pc;
    size_t newsp;
    __asm__ volatile("mv %[sp],sp":[sp]"=r"(sp));
    newsp = sp-4;
    __asm__ volatile("mv sp,%[sp]"::[sp]"r"(newsp));
    Scheduler::stack_cursor = newsp-DEFAULT_STACK_SIZE;
}

