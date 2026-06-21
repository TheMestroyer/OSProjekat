//
// Created by os on 5/6/26.
//
#include "./MemoryAllocator.hpp"
#include "Thread.hpp"
#include "APIC.h"

extern "C" void HandleInterupt(uint64 code){
    __asm__ volatile("mv %[code],a0":[code]"=r"(code));
    uint64 scause=0;
    __asm__ volatile("csrr %[scause],scause":[scause]"=r"(scause));
    if (scause !=8&&scause !=9) {
        __asm__ volatile("csrw scause,0");
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
        default: {
            break;
        }
    }
    return;
}

inline void* operator new(size_t, void* p) { return p; }

class FunctionThread : public Thread {
public:
    FunctionThread(void (*f)(void)) : func(f) {}
    void run() override { func(); }
private:
    void (*func)(void);
};

extern "C" {
thread_t thread_create(void (*body)(void)) {
    void* mem = mem_alloc(sizeof(FunctionThread));
    return new(mem) FunctionThread(body);
}
int thread_start(thread_t t) {
    ((Thread*)t)->start();
    return 0;
}
int thread_join(thread_t t) {
    ((Thread*)t)->join();
    return 0;
}
}

