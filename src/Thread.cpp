//
// Created by os on 6/10/26.
//

#include "Thread.hpp"
#include "Scheduler.hpp"

#include "../lib/console.h"

Thread::Thread() {

}
size_t* Thread::getContext() {
    return threadContext.x[0];
}
Thread* Thread::getNextInQueue(){
    return next;
}
Thread* Thread::getPrevInQueue(){
    return prev;
}
void Thread::setNextInQueue(Thread* next){
    this->next = next;
}
void Thread::setPrevInQueue(Thread* prev){
    this->prev = prev;
}
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    setNextInQueue(next);
    setPrevInQueue(prev);
}
void Thread::start(){
    Scheduler::AddNewThread(this);
    this->threadContext.x[5] = reinterpret_cast<size_t*>(&Thread::threadTrampoline);
    this->threadContext.x[10] = reinterpret_cast<size_t*>(this);
    Scheduler::yield(nullptr,this);
}
void Thread::run(){
    __putc('{');
}
void Thread::join(){

}
void Thread::setStackPtr(size_t* stackPtr) {
    this->stackPtr = stackPtr;
}

void Thread::setSupervisorSp(size_t* supervisorSp) {
    this->supervisorSp = supervisorSp;
}
