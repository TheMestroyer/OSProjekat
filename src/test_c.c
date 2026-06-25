//
// C API test — mem_alloc, threads, semaphores, time_sleep, getc, putc
//
#include "APIC.h"

static sem_t mutex;
static sem_t done;

static void worker(void* arg) {
    char id = (char)(size_t)arg;
    for (int i = 0; i < 3; i++) {
        sem_wait(mutex);
        putc('['); putc(id); putc(']');
        sem_signal(mutex);
        time_sleep(2);
    }
    sem_signal(done);
}

static void echoBody(void* arg) {
    (void)arg;
    putc('\n'); putc('>');
    while (1) {
        char c = getc();
        if (c != '\r') putc(c);
    }
}

void userMainC(void) {
    char* buf = (char*)mem_alloc(4);
    buf[0] = 'M'; buf[1] = 'E'; buf[2] = 'M'; buf[3] = '\n';
    putc(buf[0]); putc(buf[1]); putc(buf[2]); putc(buf[3]);
    mem_free(buf);

    sem_open(&mutex, 1);
    sem_open(&done, 0);
    thread_t t1, t2, t3;
    thread_create(&t1, worker, (void*)'A');
    thread_create(&t2, worker, (void*)'B');
    thread_create(&t3, worker, (void*)'C');
    sem_wait_n(done, 3);
    sem_close(mutex);
    sem_close(done);
    putc('\n'); putc('O'); putc('K'); putc('\n');

    thread_t echo;
    thread_create(&echo, echoBody, 0);
    while (1) {}
}
