//
// Created by os on 6/10/26.
//

#include "Scheduler.hpp"

#include "MemoryAllocator.hpp"

extern "C" void saveContext(size_t* ctx);
extern "C" void restoreContext(size_t* ctx);
extern "C" void setupStartContext(size_t* ctx);

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
    restoreContext(newThread->getContext());
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

extern "C" char end[];

void Scheduler::SetupStartStack() {

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

void Scheduler::SetupStartThread() {
    SetupStartStack();
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    setupStartContext(running->getContext());
}

void Scheduler::AddNewThread(Thread* thread) {
    Scheduler::stack_cursor = Scheduler::stack_cursor-2*DEFAULT_STACK_SIZE;

    thread->setStackPtr(stack_cursor+DEFAULT_STACK_SIZE);
    thread->setSupervisorSp(stack_cursor);
}


