//
// Created by os on 5/6/26.
//
#include "./MemoryAllocator.hpp"
#include "Thread.hpp"
#include "syscall_c.h"
#include "Scheduler.hpp"
#include "Semaphore.hpp"
#include "Konsole.hpp"
#include "SyscallCodes.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);



extern "C" void HandleInterupt(size_t* stackInfo){
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));

    Scheduler::freeDead();

    KThread* current = Scheduler::GetRunning();
    if (current != nullptr) {
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = stackInfo[i];
        ctx.x[2] = (size_t)stackInfo + 256;

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
        ctx.sepc    = sepc;
        ctx.sstatus = sstatus;
    }

    if (scause == SCause::TIMER_INTERRUPT) {
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == SCause::EXTERNAL_INTERRUPT) {
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != SCause::ECALL_USER && scause != SCause::ECALL_SUPERVISOR) {
        if ((scause >> 63) == 0 && current != nullptr) {
            Scheduler::ThreadExit(current);
        }
        return;
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    }

    size_t code = stackInfo[10];
    switch (code) {
        case Syscall::MEM_ALLOC: {
            size_t size = stackInfo[11];
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
            break;
        }
        case Syscall::MEM_FREE: {
            void* ptr = (void*)stackInfo[11];
            MemoryAllocator::GetInstance().FreeFragment(ptr);
            break;
        }
        case Syscall::THREAD_CREATE: {
            thread_t* handle             = reinterpret_cast<thread_t*>(stackInfo[11]);
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(stackInfo[12]);
            void* threadArg              = reinterpret_cast<void*>(stackInfo[13]);
            size_t* stack_space          = reinterpret_cast<size_t*>(stackInfo[14]);

            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
            if (!mem) {
                if (current) {
                    current->threadContext.x[10] = (size_t)-1;
                    restoreContext(current->getContext());
                }
                return;
            }
            KThread* t = reinterpret_cast<KThread*>(mem);
            t->init();
            t->setBody(start_routine, threadArg);
            t->setup(current, stack_space);
            t->stackBase = reinterpret_cast<void*>(stackInfo[15]);

            *handle = reinterpret_cast<thread_t>(t);
            Scheduler::Put(t);
            if (current) current->threadContext.x[10] = 0;
            __asm__ volatile("li a0, 0");
            break;
        }
        case Syscall::THREAD_EXIT: {
            Scheduler::ThreadExit(current);
            break;
        }
        case Syscall::THREAD_YIELD: {
            if (!Scheduler::yieldCurrent(current))
                __asm__ volatile("li a0, 0");
            break;
        }
        case Syscall::SEM_OPEN: {
            sem_t* handle = reinterpret_cast<sem_t*>(stackInfo[11]);
            unsigned initialValue = (unsigned)stackInfo[12];
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(mem);
            semaphore->init(initialValue);
            *handle = reinterpret_cast<sem_t>(semaphore);
            __asm__ volatile("li a0, 0");
            break;
        }
        case Syscall::SEM_CLOSE: {
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
            semaphore->close();
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
            __asm__ volatile("li a0, 0");
            break;
        }
        case Syscall::SEM_WAIT: {
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
            int result = semaphore->wait(current);
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
            Scheduler::blockCurrent(current);
            break;
        }
        case Syscall::SEM_SIGNAL: {
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
            semaphore->signal();
            __asm__ volatile("li a0, 0");
            break;
        }
        case Syscall::SEM_WAIT_N: {
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
            unsigned n = (unsigned)stackInfo[12];
            int result = semaphore->waitN(current, n);
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
            Scheduler::blockCurrent(current);
            break;
        }
        case Syscall::SEM_SIGNAL_N: {
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
            unsigned n = (unsigned)stackInfo[12];
            semaphore->signalN(n);
            __asm__ volatile("li a0, 0");
            break;
        }
        case Syscall::SLEEP: {
            time_t dur = (time_t)stackInfo[11];
            if (current) current->threadContext.x[10] = 0;
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
            Scheduler::sleep(current, dur);
            Scheduler::blockCurrent(current);
            break;
        }
        case Syscall::GETC: {
            int result = Konsole::getcKernel(current);
            if (result == -2)
                Scheduler::blockCurrent(current);
            else
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
            break;
        }
        case Syscall::PUTC: {
            char c = (char)stackInfo[11];
            int result = Konsole::putcKernel(current, c);
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
            break;
        }
        case Syscall::SHUTDOWN: {
            *((volatile uint32*)0x100000UL) = 0x5555;
            while (true) {}
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
