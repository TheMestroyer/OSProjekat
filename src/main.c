//
// Created by os on 5/6/26.
//
#include "APIC.h"
#include "../lib/console.h"
void mainU(){
    char* a1 = __mem__alloc(sizeof(char)*20);
    *a1 = 'a';
    *(a1+sizeof(char)) ='b';
    __putc(*a1);
    __putc(*(a1+1));
    *(a1+11) = 'h';
    char* a2 = __mem__alloc(sizeof(char)*10);
    *a2 = 'c';
    *(a2+sizeof(char)) ='d';
    __mem__free(a1);
    char* a3 = __mem__alloc(sizeof(char)*10);
    *(a3+sizeof(char)) ='f';
    __putc(*a3);
    __putc(*(a3+1));
    __putc(*a1);
    __putc(*(a1+1));
}


void drop_to_user(void (*fn)()) {
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    sstatus &= ~(1UL << 8);
    sstatus |=  (1UL << 5);
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));

    __asm__ volatile ("sret");
}
void interupt();
int main() {
    __asm__ volatile("csrw sie, zero");
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    drop_to_user(mainU);
    return 0;
}
