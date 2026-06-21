//
// Created by os on 5/6/26.
//

#ifndef PROJECT_BASE_V1_1_APIC_H
  #define PROJECT_BASE_V1_1_APIC_H
  #include "../lib/hw.h"

  #ifdef __cplusplus
  extern "C" {
#endif

  void* mem_alloc(size_t size);
  int   mem_free(void* ptr);

  typedef void* thread_t;
  thread_t thread_create(void (*body)(void));
  int      thread_start(thread_t t);
  int      thread_join(thread_t t);

#ifdef __cplusplus
  }
#endif

#endif //PROJECT_BASE_V1_1_APIC_H

