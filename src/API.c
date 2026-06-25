//
// Created by os on 5/6/26.
//

#include "./syscall_c.h"
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
    register size_t a5 asm("a5") = (size_t)stack;
    __asm__ volatile("ecall"
        : "+r"(a0)
        : "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5)
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

int sem_open(sem_t* handle, unsigned init) {
    register size_t a0 asm("a0") = 0x21;
    register size_t a1 asm("a1") = (size_t)handle;
    register size_t a2 asm("a2") = (size_t)init;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    return (int)a0;
}

int sem_close(sem_t handle) {
    register size_t a0 asm("a0") = 0x22;
    register size_t a1 asm("a1") = (size_t)handle;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    return (int)a0;
}

int sem_wait(sem_t id) {
    register size_t a0 asm("a0") = 0x23;
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    return (int)a0;
}

int sem_signal(sem_t id) {
    register size_t a0 asm("a0") = 0x24;
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    return (int)a0;
}

int sem_wait_n(sem_t id, unsigned n) {
    register size_t a0 asm("a0") = 0x25;
    register size_t a1 asm("a1") = (size_t)id;
    register size_t a2 asm("a2") = (size_t)n;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    return (int)a0;
}

char getc(void) {
    register size_t a0 asm("a0") = 0x41;
    __asm__ volatile("ecall" : "+r"(a0));
    return (char)a0;
}

void putc(char c) {
    register size_t a0 asm("a0") = 0x42;
    register size_t a1 asm("a1") = (size_t)(unsigned char)c;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
}

void sys_halt(void) {
    register size_t a0 asm("a0") = 0xFF;
    __asm__ volatile("ecall" : "+r"(a0));
}

int sem_signal_n(sem_t id, unsigned n) {
    register size_t a0 asm("a0") = 0x26;
    register size_t a1 asm("a1") = (size_t)id;
    register size_t a2 asm("a2") = (size_t)n;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    return (int)a0;
}