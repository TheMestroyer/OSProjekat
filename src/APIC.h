//
// Created by os on 5/6/26.
//

#ifndef PROJECT_BASE_V1_1_APIC_H
  #define PROJECT_BASE_V1_1_APIC_H
  #include "../lib/hw.h"

  #ifdef __cplusplus
  class Thread;
typedef Thread _thread;
typedef _thread* thread_t;
extern "C" {
#else
typedef void* thread_t;
#endif

void* mem_alloc(size_t size);
int   mem_free(void* ptr);

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg);
int thread_exit(void);
void thread_dispatch(void);
int time_sleep(time_t dur);
int start_main_thread(void);

#ifdef __cplusplus
  }
#endif

#endif //PROJECT_BASE_V1_1_APIC_H