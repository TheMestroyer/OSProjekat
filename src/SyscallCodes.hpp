//
// Created by os on 6/27/26.
//

#ifndef PROJECT_BASE_V1_1_SYSCALLCODES_HPP
#define PROJECT_BASE_V1_1_SYSCALLCODES_HPP

#include <cstdint>

namespace SCause {
    constexpr uint64_t TIMER_INTERRUPT    = 0x8000000000000001UL;
    constexpr uint64_t EXTERNAL_INTERRUPT = 0x8000000000000009UL;
    constexpr uint64_t ECALL_USER         = 8;
    constexpr uint64_t ECALL_SUPERVISOR   = 9;
}

namespace Syscall {
    enum Code : size_t {
        MEM_ALLOC    = 0x01,
        MEM_FREE     = 0x02,

        THREAD_CREATE = 0x11,
        THREAD_EXIT   = 0x12,
        THREAD_YIELD  = 0x13,

        SEM_OPEN     = 0x21,
        SEM_CLOSE    = 0x22,
        SEM_WAIT     = 0x23,
        SEM_SIGNAL   = 0x24,
        SEM_WAIT_N   = 0x25,
        SEM_SIGNAL_N = 0x26,

        SLEEP        = 0x31,

        GETC         = 0x41,
        PUTC         = 0x42,

        SHUTDOWN     = 0xFF,
    };
}

#endif //PROJECT_BASE_V1_1_SYSCALLCODES_HPP
