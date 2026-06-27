//
// Created by os on 6/27/26.
//
#include "../../test/printing.hpp"
#include "../syscall_cpp.hpp"
class TestTh: public Thread {
    void testThBody(void* arg);
public:
    TestTh():Thread() {}

    void run() override {
        testThBody(nullptr);

    }
};
void TestTh::testThBody(void* arg) {
    for (long long i=0; i < 1000000;i++) {
        printString("TestTh\n");
    }
    printString("Finished Thread\n");
    thread_dispatch();
}
void myUserMain() {
    getc();
    printString("Hello World!");
    Thread* th1 = new TestTh();
    th1->start();
    th1->dispatch();

    th1->join(th1);

    printString("Finished");

    while (true) {}
}