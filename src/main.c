//
// Created by os on 5/6/26.
//
#include "APIC.h"
#include "../lib/console.h"

// prints arg char 5 times, with a busy-wait between each print
// busy-wait forces async preemption (no voluntary yield)
void body(void* arg) {
    char c = (char)(size_t)arg;
    for (int i = 0; i < 50; i++) {
        for (volatile long j = 0; j < 5000000L; j++);
        __putc(c);
    }
}

void userMain() {
    thread_t t1, t2, t3;
    thread_create(&t1, body, (void*)'A');
    thread_create(&t2, body, (void*)'B');
    thread_create(&t3, body, (void*)'C');
    thread_dispatch();
    __putc('\n');
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
    __asm__ volatile("csrw sie, %0"    :: "r"((uint64)0x2));  // enable SSIE (timer)
    drop_to_user(userMain);
    return 0;
}