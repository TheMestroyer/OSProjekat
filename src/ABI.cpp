//
// Created by os on 5/6/26.
//
#include "./MemoryAllocator.hpp"
#include "Thread.hpp"
#include "APIC.h"
#include "Scheduler.hpp"
#include "../lib/console.h"

extern "C" void HandleInterupt(uint64 code){
    __asm__ volatile("mv %[code],a0":[code]"=r"(code));
    uint64 scause=0;
    __asm__ volatile("csrr %[scause],scause":[scause]"=r"(scause));
    if (scause !=8&&scause !=9) {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
        __putc('!');
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
        return;

    }
    uint64 sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    switch (code) {
        case 0x01: {
            size_t size=0;
            __asm__ volatile("mv %[size],a1":[size]"=r"(size));
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
            break;
        }
        case 0x02: {
            void* ptr=nullptr;
            __asm__ volatile("mv %[ptr],a1":[ptr]"=r"(ptr));
            MemoryAllocator::GetInstance().FreeFragment(ptr);
            break;
        }
        case 0x03: {//TODO:Check code
            thread_t t = nullptr;
            __asm__ volatile("mv %0, a1" : "=r"(t));
            ((Thread*)t)->start();
            break;
        }

        default: {
            break;
        }
    }
    return;
}

inline void* operator new(size_t, void* p) { return p; }


extern "C" {
thread_t thread_create(void (*body)(void)) {
    void* mem = mem_alloc(sizeof(Thread));
    Thread* t = reinterpret_cast<Thread*>(mem);
    t->init();
    t->setBody(body);
    return reinterpret_cast<thread_t>(t);
}

int thread_start(thread_t handle) {//TODO:Change name
    uint64 code = 0x03;
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    __asm__ volatile("mv a0, %0" :: "r"(code));
    __asm__ volatile("ecall");
    return 0;
}

int thread_join(thread_t t) {
    ((Thread*)t)->join();
    return 0;
}
int start_main_thread() {
    Scheduler::SetupStartThread();
    return 0;
}
}

