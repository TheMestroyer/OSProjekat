//
// Created by os on 5/6/26.
//
#include "syscall_c.h"
#include "../lib/console.h"

void userMainK();

static void userMainWrapper() {
    userMainK();
    sys_halt();
    while (1) {}
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
    start_main_thread();
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    __asm__ volatile("csrw sie, %0" :: "r"((uint64)(0x2 | 0x200)));
    drop_to_user(userMainWrapper);
    return 0;
}