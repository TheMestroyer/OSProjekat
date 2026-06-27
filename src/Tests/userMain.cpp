void userMain();
void myUserMain();

extern "C" void userMainK(void) {
    const bool mytests=false;
    if (!mytests) {
        userMain();
    }else myUserMain();
}

