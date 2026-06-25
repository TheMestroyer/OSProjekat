//
// Created by os on 6/24/26.
//

#include "Konsole.hpp"
#include "Scheduler.hpp"
#include "MemoryAllocator.hpp"
#include "APIC.h"

char Konsole::inputBuffer[BUFFER_SIZE];
int Konsole::inputHead = 0;
int Konsole::inputTail = 0;

char Konsole::outputBuffer[BUFFER_SIZE];
int Konsole::outputHead = 0;
int Konsole::outputTail = 0;
Semaphore Konsole::outputItems;

Thread* Konsole::getcWaiterHead = nullptr;
Thread* Konsole::getcWaiterTail = nullptr;

void Konsole::enqueueGetcWaiter(Thread* thread) {
    thread->setNextInQueue(nullptr);
    if (getcWaiterTail != nullptr) {
        thread->setPrevInQueue(getcWaiterTail);
        getcWaiterTail->setNextInQueue(thread);
    } else {
        thread->setPrevInQueue(nullptr);
        getcWaiterHead = thread;
    }
    getcWaiterTail = thread;
}

Thread* Konsole::dequeueGetcWaiter() {
    if (getcWaiterHead == nullptr) return nullptr;
    Thread* thread = getcWaiterHead;
    getcWaiterHead = thread->getNextInQueue();
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    else getcWaiterTail = nullptr;
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    while (true) {
        sem_wait((sem_t)&outputItems);
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
        if (outputHead!=outputTail) {//TODO:Maybe gonna cause problems
            char c = outputBuffer[outputHead];
            outputHead = (outputHead + 1) % BUFFER_SIZE;
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
        }
    }
}

void Konsole::init() {
    inputHead = 0; inputTail = 0;
    outputHead = 0; outputTail = 0;
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    outputItems.init(0);

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread));
    Thread* outputThread = reinterpret_cast<Thread*>(threadMem);
    outputThread->init();
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    Scheduler::Put(outputThread);
}

void Konsole::handleInterrupt() {
    int irq = plic_claim();
    if (irq == (int)CONSOLE_IRQ) {
        while (!(*((volatile uint8*)CONSOLE_STATUS) & (CONSOLE_RX_STATUS_BIT | CONSOLE_TX_STATUS_BIT))){};
        volatile int a = *((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT;
        volatile int b = *((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT;
        if (a+b){}
        if (a) {
            b = 100;
        }
        while (a) {
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
            Thread* waiter = dequeueGetcWaiter();
            if (waiter != nullptr) {
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
                Scheduler::Put(waiter);
            } else {
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
                if (nextTail != inputHead) {
                    inputBuffer[inputTail] = c;
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
}

int Konsole::putcKernel(Thread* caller, char c) {
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    if (nextTail == outputHead) {
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    outputTail = nextTail;
    outputItems.signal();
    if (caller) caller->threadContext.x[10] = 0;
    return 0;
}

int Konsole::getcKernel(Thread* caller) {
    if (inputHead != inputTail) {
        char c = inputBuffer[inputHead];
        inputHead = (inputHead + 1) % BUFFER_SIZE;
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
        return (unsigned char)c;
    }
    enqueueGetcWaiter(caller);
    return -2;
}
