//
// Switch active test here — comment/uncomment one line
//
//#define USE_CPP_TEST
#define USE_C_TEST

#ifdef USE_CPP_TEST
extern "C" void userMainCpp(void);
extern "C" void userMain(void) {
    userMainCpp();
}
#else
extern "C" void userMainC(void);
extern "C" void userMain(void) {
    userMainC();
}
#endif
