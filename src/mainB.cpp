#include "../lib/console.h"
#include "MemoryAllocator.h"
void mainA(){
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    *a1 = 'a';
    *(a1+sizeof(char)) ='b';
    __putc(*a1);
    __putc(*(a1+1));
    *(a1+11) = 'h';
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    *a2 = 'c';
    *(a2+sizeof(char)) ='d';
    memAlloc.FreeFragment(a1);
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    *a3 = 'e';
    *(a3+sizeof(char)) ='f';
    __putc(*a3);
    __putc(*(a3+11));
    __putc(*a1);
    __putc(*(a1+1));


}