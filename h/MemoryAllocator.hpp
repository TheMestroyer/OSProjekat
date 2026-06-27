

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
#include "../lib/hw.h"



class Fragment{
public:
    Fragment* next;
    Fragment* prev;
    uint8 free;//1 = free, 0 = taken
    size_t size;
};

class MemoryAllocator{

public:
    static MemoryAllocator& GetInstance();
    void* AllocateFragment(size_t size);
    int FreeFragment(void* startLoc);
    Fragment* head;
private:
    MemoryAllocator();
};
constexpr size_t HEADER_BLOCKS = (sizeof(Fragment) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
constexpr size_t HEADER_SIZE   = HEADER_BLOCKS * MEM_BLOCK_SIZE;

#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
