


#define USE_CPP_TEST
//#define USE_C_TEST
void userMain();

#ifdef USE_CPP_TEST
extern "C" void userMainCpp(void);
extern "C" void userMainK(void) {
    userMain();
}
#else
extern "C" void userMainC(void);
extern "C" void userMainK(void) {
    userMain();
}
#endif

