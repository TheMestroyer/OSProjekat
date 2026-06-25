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
        putc('[');
        putc(c);
        putc(']');
        sem_signal(mutex);
        for (volatile long j = 0; j < 5000000L; j++);
    }
    sem_signal(done);
}

void echoBody(void* arg) {
    (void)arg;
    putc('>');
    while (1) {
        char c = getc();
        putc(c);
    }
}

void userMain() {
    // sem_open(&mutex, 1);
    // sem_open(&done, 0);
    //
    // thread_t t1, t2, t3;
    // thread_create(&t1, worker, (void*)'A');
    // thread_create(&t2, worker, (void*)'B');
    // thread_create(&t3, worker, (void*)'C');

    //sem_wait_n(done, 3);

    //sem_close(mutex);
    //sem_close(done);
    //putc('\n');
    //putc('O'); putc('K'); putc('\n');

    thread_t echo;
    thread_create(&echo, echoBody, 0);
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
    drop_to_user(userMain);
    return 0;
}