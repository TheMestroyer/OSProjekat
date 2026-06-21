//
// Created by os on 6/10/26.
//

#include "Scheduler.hpp"
extern "C" void saveContext(size_t* ctx);
extern "C" void restoreContext(size_t* ctx);

Thread* Scheduler::running = nullptr;
Thread* Scheduler::readyQueue = nullptr;
Thread* Scheduler::readyQueueEnd = nullptr;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    return running;
}
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    if (oldThread != nullptr)//TODO: Add error and remove this temp logic
        saveContext(oldThread->getContext());
    if (newThread->getContext()!=nullptr)restoreContext(newThread->getContext());
}
Thread* Scheduler::GetNext(){
    //TODO: Add checks if empty and stuff
    Thread* toRet = readyQueue;
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
    size_t* sp;
    //size_t pc;
    size_t* newsp;
    __asm__ volatile("mv %[sp],sp":[sp]"=r"(sp));
    newsp = sp-4;
    __asm__ volatile("mv sp,%[sp]"::[sp]"r"(newsp));
    Scheduler::stack_cursor = newsp-DEFAULT_STACK_SIZE;
}

void Scheduler::AddNewThread(Thread* thread) {
    Scheduler::stack_cursor = Scheduler::stack_cursor-2*DEFAULT_STACK_SIZE;

    thread->setStackPtr(stack_cursor+DEFAULT_STACK_SIZE);
    thread->setSupervisorSp(stack_cursor);
}


