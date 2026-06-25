//
// C++ API test — Thread (run override), Semaphore, PeriodicThread, Console
//
#include "syscall_cpp.hpp"

class Worker : public Thread {
    char id;
    Semaphore* mx;
    Semaphore* done;
public:
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
protected:
    void run() override {
        for (int i = 0; i < 3; i++) {
            mx->wait();
            Console::putc('['); Console::putc(id); Console::putc(']');
            mx->signal();
            Thread::sleep((int)id);
        }
        done->signal();
    }
};

class Ticker : public PeriodicThread {
public:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    (void)arg;
    Console::putc('>');
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    }
}

extern "C" void userMainCpp(void) {
    char* buf = (char*)mem_alloc(4);
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    mem_free(buf);

    Semaphore mx(1), done(0);
    Worker* a = new Worker('A', &mx, &done);
    Worker* b = new Worker('B', &mx, &done);
    Worker* c = new Worker('C', &mx, &done);
    a->start(); b->start(); c->start();
    done.wait(); done.wait(); done.wait();
    delete a; delete b; delete c;
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');

    Ticker* t = new Ticker();
    t->start();
    Thread::sleep(15);
    t->terminate();
    Thread::sleep(5);
    Console::putc('\n');
    delete t;

    Thread* echo = new Thread(echoFunc, nullptr);
    echo->start();
    while (true) {}
}
