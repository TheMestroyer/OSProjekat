//
// Created by os on 6/25/26.
//

#ifndef _syscall_c
#define _syscall_c
#include "../lib/hw.h"

#ifdef __cplusplus
class Thread;
typedef Thread _thread;
typedef _thread* thread_t;
class Semaphore;
typedef Semaphore _sem;
typedef _sem* sem_t;
extern "C" {
#else
typedef void* thread_t;
typedef void* sem_t;
#endif

void* mem_alloc(size_t size);
int   mem_free(void* ptr);

int  thread_create(thread_t* handle, void (*start_routine)(void*), void* arg);
int  thread_exit(void);
void thread_dispatch(void);
int  time_sleep(time_t dur);

#define EOF (-1)
char getc(void);
void putc(char c);

int sem_open(sem_t* handle, unsigned init);
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);
int sem_wait_n(sem_t id, unsigned n);
int sem_signal_n(sem_t id, unsigned n);

int start_main_thread(void);

#ifdef __cplusplus
}
#endif

#endif //_syscall_c