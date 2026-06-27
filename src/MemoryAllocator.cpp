//
// Created by os on 5/6/26.
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    head = (Fragment*)HEAP_START_ADDR;
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    startFrag->next=nullptr;
    startFrag->size = HEAP_SIZE_BLCK;
    startFrag->prev=nullptr;
}

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    return inst;
}

void *MemoryAllocator::AllocateFragment(size_t size) {
    Fragment* curr = head;


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;

    while(curr){
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
            curr->free=0;
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
                Fragment* old = curr->next;
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
                Fragment* newFrag = curr->next;
                newFrag->free=1;
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
                newFrag->next = old;
                if(old)
                    old->prev = newFrag;
                newFrag->prev = curr;
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    }

    return nullptr;
}

int MemoryAllocator::FreeFragment(void *startLoc) {
    if(!startLoc)return -1;
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    curr->free=1;
    if(curr->next&&((Fragment*)curr->next)->free==1)
    {
        Fragment* next = (Fragment*)curr->next;
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    {
        Fragment* prev = ((Fragment*)curr->prev);
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
}
