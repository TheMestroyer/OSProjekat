.extern HandleInterupt
.global interupt
.align 4
interupt:
    addi sp, sp, -256
    sd x0,0x00(sp)
    sd x1,0x08(sp)
    sd x2,0x10(sp)
    sd x3,0x18(sp)
    sd x4,0x20(sp)
    sd x5,0x28(sp)
    sd x6,0x30(sp)
    sd x7,0x38(sp)
    sd x8,0x40(sp)
    sd x9,0x48(sp)

    call HandleInterupt

    ld x0,0x00(sp)
    ld x1,0x08(sp)
    ld x2,0x10(sp)
    ld x3,0x18(sp)
    ld x4,0x20(sp)
    ld x5,0x28(sp)
    ld x6,0x30(sp)
    ld x7,0x38(sp)
    ld x8,0x40(sp)
    ld x9,0x48(sp)
    addi sp, sp, 256

    sret