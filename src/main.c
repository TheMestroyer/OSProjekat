//
// Created by os on 5/6/26.
//
#include "APIC.h"
#include "../lib/console.h"

static sem_t mutex;
static sem_t done;

void worker(void* arg) {
    char c = (char)(size_t)arg;
    for (int i = 0; i < 4; i++) {
        sem_wait(mutex);
        __putc('[');
        for (volatile long j = 0; j < 5000000L; j++);
        __putc(c);
        __putc(']');
        sem_signal(mutex);
    }
    sem_signal(done);
}

void userMain() {
    sem_open(&mutex, 1);
    sem_open(&done, 0);

    thread_t t1, t2, t3;
    thread_create(&t1, worker, (void*)'A');
    thread_create(&t2, worker, (void*)'B');
    thread_create(&t3, worker, (void*)'C');

    sem_wait_n(done, 3);

    sem_close(mutex);
    sem_close(done);
    __putc('\n');
    __putc('O'); __putc('K'); __putc('\n');
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