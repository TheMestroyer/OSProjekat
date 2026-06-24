//
// Created by os on 5/6/26.
//

#include "./APIC.h"
#include "../lib/hw.h"

void* mem_alloc(size_t size){
    uint64 code=0x01;
    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    __asm__ volatile("ecall");
    void* value;
    __asm__ volatile ("mv %0, a0" : "=r"(value));
    return (void*)value;
}

int mem_free(void* ptr){
    uint64 code=0x02;
    __asm__ volatile("mv a1,a0");
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    __asm__ volatile("ecall");
    return 0;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    // allocate stack separately; pass top pointer as a4 (stack_space)
    void* stack = mem_alloc(DEFAULT_STACK_SIZE * sizeof(size_t));
    if (!stack) return -1;
    register size_t a0 asm("a0") = 0x11;
    register size_t a1 asm("a1") = (size_t)handle;
    register size_t a2 asm("a2") = (size_t)start_routine;
    register size_t a3 asm("a3") = (size_t)arg;
    register size_t a4 asm("a4") = (size_t)stack + DEFAULT_STACK_SIZE * sizeof(size_t);
    __asm__ volatile("ecall"
        : "+r"(a0)
        : "r"(a1), "r"(a2), "r"(a3), "r"(a4)
    );
    return (int)a0;
}

int thread_exit(void) {
    register size_t a0 asm("a0") = 0x12;
    __asm__ volatile("ecall" : "+r"(a0));
    return (int)a0;
}

void thread_dispatch(void) {
    register size_t a0 asm("a0") = 0x13;
    __asm__ volatile("ecall" : "+r"(a0));
}

int time_sleep(time_t dur) {
    register size_t a0 asm("a0") = 0x31;
    register size_t a1 asm("a1") = (size_t)dur;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    return (int)a0;
}