


#define USE_CPP_TEST
void userMain();
void myUserMain();

extern "C" void userMainCpp(void);
extern "C" void userMainK(void) {
    const bool mytests=true;
    if (!mytests) {
        userMain();
    }
    myUserMain();
}

