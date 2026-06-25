//
// Created by os on 5/6/26.
//
#include "./MemoryAllocator.hpp"
#include "Thread.hpp"
#include "APIC.h"
#include "Scheduler.hpp"
#include "Semaphore.hpp"
#include "Konsole.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));

    Thread* current = Scheduler::GetRunning();
    if (current != nullptr) {
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
        ctx.x[2] = (size_t)frame + 256;

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
        if (scause == 8 || scause == 9) sepc += 4;
        ctx.sepc    = sepc;
        ctx.sstatus = sstatus;
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
        Scheduler::timerTick(current);
        return;
    }

    if (scause == 0x8000000000000009UL) {
        Konsole::handleInterrupt();
        return;
    }

    if (scause != 8 && scause != 9) {
        if ((scause >> 63) == 0) {  // exception, not interrupt
            uint64 sepc;
            __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
            //__putc('!');
            __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
        }
        return;
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    }

    size_t code = frame[10];
    switch (code) {
        case 0x01: {
            size_t size = frame[11];
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
            break;
        }
        case 0x02: {
            void* ptr = (void*)frame[11];
            MemoryAllocator::GetInstance().FreeFragment(ptr);
            break;
        }
        case 0x11: {
            // thread_create: a1=handle*, a2=start_routine, a3=arg, a4=stack_space (top of pre-alloc'd stack)
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);

            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread));
            if (!mem) {
                if (current) {
                    current->threadContext.x[10] = (size_t)-1;
                    restoreContext(current->getContext());
                }
                return;
            }
            Thread* t = reinterpret_cast<Thread*>(mem);
            t->init();
            t->setBody(start_routine, threadArg);
            t->setup(current, stack_space);

            *handle = reinterpret_cast<thread_t>(t);
            Scheduler::Put(t);   // enqueue; caller continues running
            if (current) current->threadContext.x[10] = 0;
            __asm__ volatile("li a0, 0");  // return 0 via Trap.S path (x10 not restored from frame)
            break;
        }
        case 0x12: {
            // thread_exit: terminate current thread, switch to next ready thread
            Scheduler::ThreadExit(current);
            break;
        }
        case 0x13: {
            // thread_dispatch: voluntarily yield to next ready thread
            Thread* next = Scheduler::GetNext();
            if (next == nullptr) {
                // no other thread ready — keep running current
                __asm__ volatile("li a0, 0");
                break;
            }
            if (current) current->threadContext.x[10] = 0; // dispatch returns 0 when resumed
            Scheduler::Put(current);
            Scheduler::yield(current, next); // never returns here
            break;
        }
        case 0x21: {
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
            unsigned initialValue = (unsigned)frame[12];
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Semaphore));
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(mem);
            semaphore->init(initialValue);
            *handle = reinterpret_cast<sem_t>(semaphore);
            __asm__ volatile("li a0, 0");
            break;
        }
        case 0x22: {
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(frame[11]);
            semaphore->close();
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
            __asm__ volatile("li a0, 0");
            break;
        }
        case 0x23: {
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(frame[11]);
            int result = semaphore->wait(current);
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
            Thread* next = Scheduler::GetNext();
            if (next == nullptr) { while(true){} }
            Scheduler::yield(current, next);
            break;
        }
        case 0x24: {
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(frame[11]);
            semaphore->signal();
            __asm__ volatile("li a0, 0");
            break;
        }
        case 0x25: {
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(frame[11]);
            unsigned n = (unsigned)frame[12];
            int result = semaphore->waitN(current, n);
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
            Thread* next = Scheduler::GetNext();
            if (next == nullptr) { while(true){} }
            Scheduler::yield(current, next);
            break;
        }
        case 0x26: {
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(frame[11]);
            unsigned n = (unsigned)frame[12];
            semaphore->signalN(n);
            __asm__ volatile("li a0, 0");
            break;
        }

        case 0x31: {
            // time_sleep: a1=duration (in timer periods)
            time_t dur = (time_t)frame[11];
            if (current) current->threadContext.x[10] = 0;
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
            Scheduler::sleep(current, dur);
            Thread* next = Scheduler::GetNext();
            if (next == nullptr) { while(true){} }
            Scheduler::yield(current, next);
            break;
        }
        case 0x41: {
            int result = Konsole::getcKernel(current);
            if (result == -2) {
                Thread* next = Scheduler::GetNext();
                if (next == nullptr) { while(true){} }
                Scheduler::yield(current, next);
            } else {
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
            }
            break;
        }
        case 0x42: {
            char c = (char)frame[11];
            int result = Konsole::putcKernel(current, c);
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
            break;
        }
        default: {
            break;
        }
    }
    return;
}

extern "C" {
int start_main_thread() {
    Scheduler::SetupStartThread();
    Konsole::init();
    return 0;
}
}