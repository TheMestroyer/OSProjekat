void userMain();
void myUserMain();

extern "C" void userMainK(void) {
    const bool mytests=true;
    if (!mytests) {
        userMain();
    }
    myUserMain();
}

