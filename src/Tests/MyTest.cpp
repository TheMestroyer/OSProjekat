//
// Created by os on 6/27/26.
//
#include "../../test/printing.hpp"
#include "../../h/syscall_cpp.hpp"
class TestTh: public Thread {
    void testThBody(void* arg);
public:
    TestTh():Thread() {}

    void run() override {
        testThBody(nullptr);

    }
};
void TestTh::testThBody(void* arg) {
    for (long long i=0; i < 5;i++) {
        printString("a\n");
        sleep(10);
    }
    printString("Thread1 Finished\n");
    thread_dispatch();
}
class TestTh2: public Thread {
    void testTh2Body(void* arg);
public:
    TestTh2():Thread() {}

    void run() override {
        testTh2Body(nullptr);

    }
};

void TestTh2::testTh2Body(void* arg) {
    for (long long i=0; i < 5;i++) {
        printString("k\n");
        sleep(20);
    }
    printString("Thread2 Finished\n");
    thread_dispatch();
}
class TestTh3: public Thread {
    void testTh3Body(void* arg);
public:
    TestTh3():Thread() {}

    void run() override {
        testTh3Body(nullptr);

    }
};
void TestTh3::testTh3Body(void* arg) {
    printString("All Finished\n");
    thread_dispatch();
}
void myUserMain() {
    getc();
    printString("Hello World!");
    Thread* th1 = new TestTh();
    Thread* th2 = new TestTh2();
    th1->start();
    th1->dispatch();
    th2->start();
    th2->dispatch();

    Thread::join(th2);
    Thread::join(th1);
    Thread* th3 = new TestTh3();
    th3->start();
    th3->dispatch();
    Thread::join(th3);

}