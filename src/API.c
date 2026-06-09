//
// Created by os on 5/6/26.
//

#include "./APIC.h"
#include "../lib/hw.h"
void* __mem__alloc(size_t size){
    uint64 code=0x01;
    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    __asm__ volatile("ecall");
    void* value;
    __asm__ volatile ("mv %0, a0" : "=r"(value));

    return (void*)value;
}



int __mem__free(void* ptr){
    uint64 code=0x02;
    __asm__ volatile("mv a1,a0");
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    __asm__ volatile("ecall");
    return 0;
}

