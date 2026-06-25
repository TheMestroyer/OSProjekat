//
// Created by os on 6/25/26.
//
#include "syscall_cpp.hpp"

void* operator new(size_t size) {
    return mem_alloc(size); }
void  operator delete(void* p)  {
    mem_free(p); }

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}

void Thread::runBody(void* arg) {
    ((Thread*)arg)->run();
}

int Thread::start() {
    void (*fn)(void*) = body ? body : runBody;
    void* fnArg       = body ? arg  : this;
    return thread_create(&myHandle, fn, fnArg);
}

void Thread::dispatch() {
    thread_dispatch();
}
int  Thread::sleep(time_t t) {
    return time_sleep(t);
}

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}
Semaphore::~Semaphore() {
    sem_close(myHandle);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}
int Semaphore::signal() {
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    while (period) {
        periodicActivation();
        time_sleep(period);
    }
}

void PeriodicThread::terminate() { period = 0; }

char Console::getc()       { return ::getc(); }
void Console::putc(char c) { ::putc(c); }