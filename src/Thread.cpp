//
// Created by os on 6/10/26.
//

#include "Thread.h"
Thread* Thread::getNextInQueue(){
    return next;
}
Thread* Thread::getPrevInQueue(){
    return prev;
}
void Thread::setNextInQueue(Thread* next){
    this.next = next;
}
void Thread::setPrevInQueue(Thread* prev){
    this.prev = prev;
}
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    setNextInQueue(next);
    setPrevInQueue(prev);
}
void Thread::start(){
    Scheduler::Put(this);
}
void Thread::run(){

}
void Thread::join(){

}