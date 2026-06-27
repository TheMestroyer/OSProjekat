
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	a0813103          	ld	sp,-1528(sp) # 8000ca08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	208070ef          	jal	ra,80007224 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <saveContext>:
.global saveContext
.global restoreContext
.global setupStartContext
.align 4
saveContext:
    sd x1,0x08(a0)
    80001000:	00153423          	sd	ra,8(a0) # 1008 <_entry-0x7fffeff8>
    sd x2,0x10(a0)
    80001004:	00253823          	sd	sp,16(a0)
    sd x3,0x18(a0)
    80001008:	00353c23          	sd	gp,24(a0)
    sd x4,0x20(a0)
    8000100c:	02453023          	sd	tp,32(a0)
    sd x5,0x28(a0)
    80001010:	02553423          	sd	t0,40(a0)
    sd x6,0x30(a0)
    80001014:	02653823          	sd	t1,48(a0)
    sd x7,0x38(a0)
    80001018:	02753c23          	sd	t2,56(a0)
    sd x8,0x40(a0)
    8000101c:	04853023          	sd	s0,64(a0)
    sd x9,0x48(a0)
    80001020:	04953423          	sd	s1,72(a0)
    sd x10,0x50(a0)
    80001024:	04a53823          	sd	a0,80(a0)
    sd x11,0x58(a0)
    80001028:	04b53c23          	sd	a1,88(a0)
    sd x12,0x60(a0)
    8000102c:	06c53023          	sd	a2,96(a0)
    sd x13,0x68(a0)
    80001030:	06d53423          	sd	a3,104(a0)
    sd x14,0x70(a0)
    80001034:	06e53823          	sd	a4,112(a0)
    sd x15,0x78(a0)
    80001038:	06f53c23          	sd	a5,120(a0)
    sd x16,0x80(a0)
    8000103c:	09053023          	sd	a6,128(a0)
    sd x17,0x88(a0)
    80001040:	09153423          	sd	a7,136(a0)
    sd x18,0x90(a0)
    80001044:	09253823          	sd	s2,144(a0)
    sd x19,0x98(a0)
    80001048:	09353c23          	sd	s3,152(a0)
    sd x20,0xA0(a0)
    8000104c:	0b453023          	sd	s4,160(a0)
    sd x21,0xA8(a0)
    80001050:	0b553423          	sd	s5,168(a0)
    sd x22,0xB0(a0)
    80001054:	0b653823          	sd	s6,176(a0)
    sd x23,0xB8(a0)
    80001058:	0b753c23          	sd	s7,184(a0)
    sd x24,0xC0(a0)
    8000105c:	0d853023          	sd	s8,192(a0)
    sd x25,0xC8(a0)
    80001060:	0d953423          	sd	s9,200(a0)
    sd x26,0xD0(a0)
    80001064:	0da53823          	sd	s10,208(a0)
    sd x27,0xD8(a0)
    80001068:	0db53c23          	sd	s11,216(a0)
    sd x28,0xE0(a0)
    8000106c:	0fc53023          	sd	t3,224(a0)
    sd x29,0xE8(a0)
    80001070:	0fd53423          	sd	t4,232(a0)
    sd x30,0xF0(a0)
    80001074:	0fe53823          	sd	t5,240(a0)
    sd x31,0xF8(a0)
    80001078:	0ff53c23          	sd	t6,248(a0)
    csrr t0,sepc
    8000107c:	141022f3          	csrr	t0,sepc
    addi t0,t0, 0x00
    80001080:	00028293          	mv	t0,t0
    sd t0,0x100(a0)
    80001084:	10553023          	sd	t0,256(a0)
    csrr t0,sstatus
    80001088:	100022f3          	csrr	t0,sstatus
    sd t0,0x108(a0)
    8000108c:	10553423          	sd	t0,264(a0)
    ret
    80001090:	00008067          	ret

0000000080001094 <restoreContext>:
    
restoreContext:
    ld t0,  0x100(a0)
    80001094:	10053283          	ld	t0,256(a0)
    csrw sepc, t0
    80001098:	14129073          	csrw	sepc,t0
    ld t0,  0x108(a0)
    8000109c:	10853283          	ld	t0,264(a0)
    csrw sstatus, t0
    800010a0:	10029073          	csrw	sstatus,t0
    ld x1,  0x08(a0)
    800010a4:	00853083          	ld	ra,8(a0)
    ld x2,  0x10(a0)
    800010a8:	01053103          	ld	sp,16(a0)
    ld x3,  0x18(a0)
    800010ac:	01853183          	ld	gp,24(a0)
    ld x4,  0x20(a0)
    800010b0:	02053203          	ld	tp,32(a0)
    ld x5,  0x28(a0)
    800010b4:	02853283          	ld	t0,40(a0)
    ld x6,  0x30(a0)
    800010b8:	03053303          	ld	t1,48(a0)
    ld x7,  0x38(a0)
    800010bc:	03853383          	ld	t2,56(a0)
    ld x8,  0x40(a0)
    800010c0:	04053403          	ld	s0,64(a0)
    ld x9,  0x48(a0)
    800010c4:	04853483          	ld	s1,72(a0)
    ld x11, 0x58(a0)
    800010c8:	05853583          	ld	a1,88(a0)
    ld x12, 0x60(a0)
    800010cc:	06053603          	ld	a2,96(a0)
    ld x13, 0x68(a0)
    800010d0:	06853683          	ld	a3,104(a0)
    ld x14, 0x70(a0)
    800010d4:	07053703          	ld	a4,112(a0)
    ld x15, 0x78(a0)
    800010d8:	07853783          	ld	a5,120(a0)
    ld x16, 0x80(a0)
    800010dc:	08053803          	ld	a6,128(a0)
    ld x17, 0x88(a0)
    800010e0:	08853883          	ld	a7,136(a0)
    ld x18, 0x90(a0)
    800010e4:	09053903          	ld	s2,144(a0)
    ld x19, 0x98(a0)
    800010e8:	09853983          	ld	s3,152(a0)
    ld x20, 0xa0(a0)
    800010ec:	0a053a03          	ld	s4,160(a0)
    ld x21, 0xa8(a0)
    800010f0:	0a853a83          	ld	s5,168(a0)
    ld x22, 0xb0(a0)
    800010f4:	0b053b03          	ld	s6,176(a0)
    ld x23, 0xb8(a0)
    800010f8:	0b853b83          	ld	s7,184(a0)
    ld x24, 0xc0(a0)
    800010fc:	0c053c03          	ld	s8,192(a0)
    ld x25, 0xc8(a0)
    80001100:	0c853c83          	ld	s9,200(a0)
    ld x26, 0xd0(a0)
    80001104:	0d053d03          	ld	s10,208(a0)
    ld x27, 0xd8(a0)
    80001108:	0d853d83          	ld	s11,216(a0)
    ld x28, 0xe0(a0)
    8000110c:	0e053e03          	ld	t3,224(a0)
    ld x29, 0xe8(a0)
    80001110:	0e853e83          	ld	t4,232(a0)
    ld x30, 0xf0(a0)
    80001114:	0f053f03          	ld	t5,240(a0)
    ld x31, 0xf8(a0)
    80001118:	0f853f83          	ld	t6,248(a0)
    ld x10, 0x50(a0)
    8000111c:	05053503          	ld	a0,80(a0)
    sret
    80001120:	10200073          	sret

0000000080001124 <setupStartContext>:

setupStartContext:
    sd x1,0x08(a0)
    80001124:	00153423          	sd	ra,8(a0)
    sd x2,0x10(a0)
    80001128:	00253823          	sd	sp,16(a0)
    sd x3,0x18(a0)
    8000112c:	00353c23          	sd	gp,24(a0)
    sd x4,0x20(a0)
    80001130:	02453023          	sd	tp,32(a0)
    sd x5,0x28(a0)
    80001134:	02553423          	sd	t0,40(a0)
    sd x6,0x30(a0)
    80001138:	02653823          	sd	t1,48(a0)
    sd x7,0x38(a0)
    8000113c:	02753c23          	sd	t2,56(a0)
    sd x8,0x40(a0)
    80001140:	04853023          	sd	s0,64(a0)
    sd x9,0x48(a0)
    80001144:	04953423          	sd	s1,72(a0)
    sd x10,0x50(a0)
    80001148:	04a53823          	sd	a0,80(a0)
    sd x11,0x58(a0)
    8000114c:	04b53c23          	sd	a1,88(a0)
    sd x12,0x60(a0)
    80001150:	06c53023          	sd	a2,96(a0)
    sd x13,0x68(a0)
    80001154:	06d53423          	sd	a3,104(a0)
    sd x14,0x70(a0)
    80001158:	06e53823          	sd	a4,112(a0)
    sd x15,0x78(a0)
    8000115c:	06f53c23          	sd	a5,120(a0)
    sd x16,0x80(a0)
    80001160:	09053023          	sd	a6,128(a0)
    sd x17,0x88(a0)
    80001164:	09153423          	sd	a7,136(a0)
    sd x18,0x90(a0)
    80001168:	09253823          	sd	s2,144(a0)
    sd x19,0x98(a0)
    8000116c:	09353c23          	sd	s3,152(a0)
    sd x20,0xA0(a0)
    80001170:	0b453023          	sd	s4,160(a0)
    sd x21,0xA8(a0)
    80001174:	0b553423          	sd	s5,168(a0)
    sd x22,0xB0(a0)
    80001178:	0b653823          	sd	s6,176(a0)
    sd x23,0xB8(a0)
    8000117c:	0b753c23          	sd	s7,184(a0)
    sd x24,0xC0(a0)
    80001180:	0d853023          	sd	s8,192(a0)
    sd x25,0xC8(a0)
    80001184:	0d953423          	sd	s9,200(a0)
    sd x26,0xD0(a0)
    80001188:	0da53823          	sd	s10,208(a0)
    sd x27,0xD8(a0)
    8000118c:	0db53c23          	sd	s11,216(a0)
    sd x28,0xE0(a0)
    80001190:	0fc53023          	sd	t3,224(a0)
    sd x29,0xE8(a0)
    80001194:	0fd53423          	sd	t4,232(a0)
    sd x30,0xF0(a0)
    80001198:	0fe53823          	sd	t5,240(a0)
    sd x31,0xF8(a0)
    8000119c:	0ff53c23          	sd	t6,248(a0)
    sd x1,0x100(a0)
    800011a0:	10153023          	sd	ra,256(a0)
    csrr t0,sstatus
    800011a4:	100022f3          	csrr	t0,sstatus
    sd t0,0x108(a0)
    800011a8:	10553423          	sd	t0,264(a0)
    800011ac:	00008067          	ret
	...

00000000800011c0 <interupt>:
.extern HandleInterupt
.global interupt
.align 4
interupt:
    addi sp, sp, -256
    800011c0:	f0010113          	addi	sp,sp,-256
    sd x0,0x00(sp)
    800011c4:	00013023          	sd	zero,0(sp)
    sd x1,0x08(sp)
    800011c8:	00113423          	sd	ra,8(sp)
    sd x2,0x10(sp)
    800011cc:	00213823          	sd	sp,16(sp)
    sd x3,0x18(sp)
    800011d0:	00313c23          	sd	gp,24(sp)
    sd x4,0x20(sp)
    800011d4:	02413023          	sd	tp,32(sp)
    sd x5,0x28(sp)
    800011d8:	02513423          	sd	t0,40(sp)
    sd x6,0x30(sp)
    800011dc:	02613823          	sd	t1,48(sp)
    sd x7,0x38(sp)
    800011e0:	02713c23          	sd	t2,56(sp)
    sd x8,0x40(sp)
    800011e4:	04813023          	sd	s0,64(sp)
    sd x9,0x48(sp)
    800011e8:	04913423          	sd	s1,72(sp)
    sd x10,0x50(sp)
    800011ec:	04a13823          	sd	a0,80(sp)
    sd x11,0x58(sp)
    800011f0:	04b13c23          	sd	a1,88(sp)
    sd x12,0x60(sp)
    800011f4:	06c13023          	sd	a2,96(sp)
    sd x13,0x68(sp)
    800011f8:	06d13423          	sd	a3,104(sp)
    sd x14,0x70(sp)
    800011fc:	06e13823          	sd	a4,112(sp)
    sd x15,0x78(sp)
    80001200:	06f13c23          	sd	a5,120(sp)
    sd x16,0x80(sp)
    80001204:	09013023          	sd	a6,128(sp)
    sd x17,0x88(sp)
    80001208:	09113423          	sd	a7,136(sp)
    sd x18,0x90(sp)
    8000120c:	09213823          	sd	s2,144(sp)
    sd x19,0x98(sp)
    80001210:	09313c23          	sd	s3,152(sp)
    sd x20,0xA0(sp)
    80001214:	0b413023          	sd	s4,160(sp)
    sd x21,0xA8(sp)
    80001218:	0b513423          	sd	s5,168(sp)
    sd x22,0xB0(sp)
    8000121c:	0b613823          	sd	s6,176(sp)
    sd x23,0xB8(sp)
    80001220:	0b713c23          	sd	s7,184(sp)
    sd x24,0xC0(sp)
    80001224:	0d813023          	sd	s8,192(sp)
    sd x25,0xC8(sp)
    80001228:	0d913423          	sd	s9,200(sp)
    sd x26,0xD0(sp)
    8000122c:	0da13823          	sd	s10,208(sp)
    sd x27,0xD8(sp)
    80001230:	0db13c23          	sd	s11,216(sp)
    sd x28,0xE0(sp)
    80001234:	0fc13023          	sd	t3,224(sp)
    sd x29,0xE8(sp)
    80001238:	0fd13423          	sd	t4,232(sp)
    sd x30,0xF0(sp)
    8000123c:	0fe13823          	sd	t5,240(sp)
    sd x31,0xF8(sp)
    80001240:	0ff13c23          	sd	t6,248(sp)

    #csrw sepc,pc;
    mv a0, sp
    80001244:	00010513          	mv	a0,sp
    call HandleInterupt
    80001248:	4d4020ef          	jal	ra,8000371c <HandleInterupt>

    ld x0,0x00(sp)
    8000124c:	00013003          	ld	zero,0(sp)
    ld x1,0x08(sp)
    80001250:	00813083          	ld	ra,8(sp)
    ld x2,0x10(sp)
    80001254:	01013103          	ld	sp,16(sp)
    ld x3,0x18(sp)
    80001258:	01813183          	ld	gp,24(sp)
    ld x4,0x20(sp)
    8000125c:	02013203          	ld	tp,32(sp)
    ld x5,0x28(sp)
    80001260:	02813283          	ld	t0,40(sp)
    ld x6,0x30(sp)
    80001264:	03013303          	ld	t1,48(sp)
    ld x7,0x38(sp)
    80001268:	03813383          	ld	t2,56(sp)
    ld x8,0x40(sp)
    8000126c:	04013403          	ld	s0,64(sp)
    ld x9,0x48(sp)
    80001270:	04813483          	ld	s1,72(sp)
    #ld x10,0x50(sp)
    ld x11,0x58(sp)
    80001274:	05813583          	ld	a1,88(sp)
    ld x12,0x60(sp)
    80001278:	06013603          	ld	a2,96(sp)
    ld x13,0x68(sp)
    8000127c:	06813683          	ld	a3,104(sp)
    ld x14,0x70(sp)
    80001280:	07013703          	ld	a4,112(sp)
    ld x15,0x78(sp)
    80001284:	07813783          	ld	a5,120(sp)
    ld x16,0x80(sp)
    80001288:	08013803          	ld	a6,128(sp)
    ld x17,0x88(sp)
    8000128c:	08813883          	ld	a7,136(sp)
    ld x18,0x90(sp)
    80001290:	09013903          	ld	s2,144(sp)
    ld x19,0x98(sp)
    80001294:	09813983          	ld	s3,152(sp)
    ld x20,0xA0(sp)
    80001298:	0a013a03          	ld	s4,160(sp)
    ld x21,0xA8(sp)
    8000129c:	0a813a83          	ld	s5,168(sp)
    ld x22,0xB0(sp)
    800012a0:	0b013b03          	ld	s6,176(sp)
    ld x23,0xB8(sp)
    800012a4:	0b813b83          	ld	s7,184(sp)
    ld x24,0xC0(sp)
    800012a8:	0c013c03          	ld	s8,192(sp)
    ld x25,0xC8(sp)
    800012ac:	0c813c83          	ld	s9,200(sp)
    ld x26,0xD0(sp)
    800012b0:	0d013d03          	ld	s10,208(sp)
    ld x27,0xD8(sp)
    800012b4:	0d813d83          	ld	s11,216(sp)
    ld x28,0xE0(sp)
    800012b8:	0e013e03          	ld	t3,224(sp)
    ld x29,0xE8(sp)
    800012bc:	0e813e83          	ld	t4,232(sp)
    ld x30,0xF0(sp)
    800012c0:	0f013f03          	ld	t5,240(sp)
    ld x31,0xF8(sp)
    800012c4:	0f813f83          	ld	t6,248(sp)

    #csrr pc,sepc;
    addi sp, sp, 256
    800012c8:	10010113          	addi	sp,sp,256

    800012cc:	10200073          	sret

00000000800012d0 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800012d0:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800012d4:	00b29a63          	bne	t0,a1,800012e8 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800012d8:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800012dc:	fe029ae3          	bnez	t0,800012d0 <copy_and_swap>
    li a0, 0               # Set return to success.
    800012e0:	00000513          	li	a0,0
    jr ra                  # Return.
    800012e4:	00008067          	ret

00000000800012e8 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800012e8:	00100513          	li	a0,1
    800012ec:	00008067          	ret

00000000800012f0 <echoBody>:
        time_sleep(2);
    }
    sem_signal(done);
}

static void echoBody(void* arg) {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00113423          	sd	ra,8(sp)
    800012f8:	00813023          	sd	s0,0(sp)
    800012fc:	01010413          	addi	s0,sp,16
    (void)arg;
    putc('\n'); putc('>');
    80001300:	00a00513          	li	a0,10
    80001304:	00000097          	auipc	ra,0x0
    80001308:	4a0080e7          	jalr	1184(ra) # 800017a4 <putc>
    8000130c:	03e00513          	li	a0,62
    80001310:	00000097          	auipc	ra,0x0
    80001314:	494080e7          	jalr	1172(ra) # 800017a4 <putc>
    80001318:	00c0006f          	j	80001324 <echoBody+0x34>
    while (1) {
        char c = getc();
        if (c != '\r') putc(c);
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	488080e7          	jalr	1160(ra) # 800017a4 <putc>
        char c = getc();
    80001324:	00000097          	auipc	ra,0x0
    80001328:	45c080e7          	jalr	1116(ra) # 80001780 <getc>
        if (c != '\r') putc(c);
    8000132c:	00d00793          	li	a5,13
    80001330:	fef50ae3          	beq	a0,a5,80001324 <echoBody+0x34>
    80001334:	fe9ff06f          	j	8000131c <echoBody+0x2c>

0000000080001338 <worker>:
static void worker(void* arg) {
    80001338:	fd010113          	addi	sp,sp,-48
    8000133c:	02113423          	sd	ra,40(sp)
    80001340:	02813023          	sd	s0,32(sp)
    80001344:	00913c23          	sd	s1,24(sp)
    80001348:	01213823          	sd	s2,16(sp)
    8000134c:	01313423          	sd	s3,8(sp)
    80001350:	03010413          	addi	s0,sp,48
    char id = (char)(size_t)arg;
    80001354:	0ff57993          	andi	s3,a0,255
    for (int i = 0; i < 3; i++) {
    80001358:	00000493          	li	s1,0
    8000135c:	0580006f          	j	800013b4 <worker+0x7c>
        sem_wait(mutex);
    80001360:	0000b917          	auipc	s2,0xb
    80001364:	6d890913          	addi	s2,s2,1752 # 8000ca38 <mutex>
    80001368:	00093503          	ld	a0,0(s2)
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	38c080e7          	jalr	908(ra) # 800016f8 <sem_wait>
        putc('['); putc(id); putc(']');
    80001374:	05b00513          	li	a0,91
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	42c080e7          	jalr	1068(ra) # 800017a4 <putc>
    80001380:	00098513          	mv	a0,s3
    80001384:	00000097          	auipc	ra,0x0
    80001388:	420080e7          	jalr	1056(ra) # 800017a4 <putc>
    8000138c:	05d00513          	li	a0,93
    80001390:	00000097          	auipc	ra,0x0
    80001394:	414080e7          	jalr	1044(ra) # 800017a4 <putc>
        sem_signal(mutex);
    80001398:	00093503          	ld	a0,0(s2)
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	384080e7          	jalr	900(ra) # 80001720 <sem_signal>
        time_sleep(2);
    800013a4:	00200513          	li	a0,2
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	2c8080e7          	jalr	712(ra) # 80001670 <time_sleep>
    for (int i = 0; i < 3; i++) {
    800013b0:	0014849b          	addiw	s1,s1,1
    800013b4:	00200793          	li	a5,2
    800013b8:	fa97d4e3          	bge	a5,s1,80001360 <worker+0x28>
    sem_signal(done);
    800013bc:	0000b517          	auipc	a0,0xb
    800013c0:	67453503          	ld	a0,1652(a0) # 8000ca30 <done>
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	35c080e7          	jalr	860(ra) # 80001720 <sem_signal>
}
    800013cc:	02813083          	ld	ra,40(sp)
    800013d0:	02013403          	ld	s0,32(sp)
    800013d4:	01813483          	ld	s1,24(sp)
    800013d8:	01013903          	ld	s2,16(sp)
    800013dc:	00813983          	ld	s3,8(sp)
    800013e0:	03010113          	addi	sp,sp,48
    800013e4:	00008067          	ret

00000000800013e8 <userMainC>:
    }
}

void userMainC(void) {
    800013e8:	fc010113          	addi	sp,sp,-64
    800013ec:	02113c23          	sd	ra,56(sp)
    800013f0:	02813823          	sd	s0,48(sp)
    800013f4:	02913423          	sd	s1,40(sp)
    800013f8:	04010413          	addi	s0,sp,64
    char* buf = (char*)mem_alloc(4);
    800013fc:	00400513          	li	a0,4
    80001400:	00000097          	auipc	ra,0x0
    80001404:	154080e7          	jalr	340(ra) # 80001554 <mem_alloc>
    80001408:	00050493          	mv	s1,a0
    buf[0] = 'M'; buf[1] = 'E'; buf[2] = 'M'; buf[3] = '\n';
    8000140c:	04d00793          	li	a5,77
    80001410:	00f50023          	sb	a5,0(a0)
    80001414:	04500713          	li	a4,69
    80001418:	00e500a3          	sb	a4,1(a0)
    8000141c:	00f50123          	sb	a5,2(a0)
    80001420:	00a00793          	li	a5,10
    80001424:	00f501a3          	sb	a5,3(a0)
    putc(buf[0]); putc(buf[1]); putc(buf[2]); putc(buf[3]);
    80001428:	04d00513          	li	a0,77
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	378080e7          	jalr	888(ra) # 800017a4 <putc>
    80001434:	0014c503          	lbu	a0,1(s1)
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	36c080e7          	jalr	876(ra) # 800017a4 <putc>
    80001440:	0024c503          	lbu	a0,2(s1)
    80001444:	00000097          	auipc	ra,0x0
    80001448:	360080e7          	jalr	864(ra) # 800017a4 <putc>
    8000144c:	0034c503          	lbu	a0,3(s1)
    80001450:	00000097          	auipc	ra,0x0
    80001454:	354080e7          	jalr	852(ra) # 800017a4 <putc>
    mem_free(buf);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	124080e7          	jalr	292(ra) # 80001580 <mem_free>

    sem_open(&mutex, 1);
    80001464:	00100593          	li	a1,1
    80001468:	0000b517          	auipc	a0,0xb
    8000146c:	5d050513          	addi	a0,a0,1488 # 8000ca38 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	228080e7          	jalr	552(ra) # 80001698 <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000b517          	auipc	a0,0xb
    80001480:	5b450513          	addi	a0,a0,1460 # 8000ca30 <done>
    80001484:	00000097          	auipc	ra,0x0
    80001488:	214080e7          	jalr	532(ra) # 80001698 <sem_open>
    thread_t t1, t2, t3;
    thread_create(&t1, worker, (void*)'A');
    8000148c:	04100613          	li	a2,65
    80001490:	00000597          	auipc	a1,0x0
    80001494:	ea858593          	addi	a1,a1,-344 # 80001338 <worker>
    80001498:	fd840513          	addi	a0,s0,-40
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	110080e7          	jalr	272(ra) # 800015ac <thread_create>
    thread_create(&t2, worker, (void*)'B');
    800014a4:	04200613          	li	a2,66
    800014a8:	00000597          	auipc	a1,0x0
    800014ac:	e9058593          	addi	a1,a1,-368 # 80001338 <worker>
    800014b0:	fd040513          	addi	a0,s0,-48
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	0f8080e7          	jalr	248(ra) # 800015ac <thread_create>
    thread_create(&t3, worker, (void*)'C');
    800014bc:	04300613          	li	a2,67
    800014c0:	00000597          	auipc	a1,0x0
    800014c4:	e7858593          	addi	a1,a1,-392 # 80001338 <worker>
    800014c8:	fc840513          	addi	a0,s0,-56
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	0e0080e7          	jalr	224(ra) # 800015ac <thread_create>
    sem_wait_n(done, 3);
    800014d4:	0000b497          	auipc	s1,0xb
    800014d8:	55c48493          	addi	s1,s1,1372 # 8000ca30 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	264080e7          	jalr	612(ra) # 80001748 <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000b517          	auipc	a0,0xb
    800014f0:	54c53503          	ld	a0,1356(a0) # 8000ca38 <mutex>
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	1dc080e7          	jalr	476(ra) # 800016d0 <sem_close>
    sem_close(done);
    800014fc:	0004b503          	ld	a0,0(s1)
    80001500:	00000097          	auipc	ra,0x0
    80001504:	1d0080e7          	jalr	464(ra) # 800016d0 <sem_close>
    putc('\n'); putc('O'); putc('K'); putc('\n');
    80001508:	00a00513          	li	a0,10
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	298080e7          	jalr	664(ra) # 800017a4 <putc>
    80001514:	04f00513          	li	a0,79
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	28c080e7          	jalr	652(ra) # 800017a4 <putc>
    80001520:	04b00513          	li	a0,75
    80001524:	00000097          	auipc	ra,0x0
    80001528:	280080e7          	jalr	640(ra) # 800017a4 <putc>
    8000152c:	00a00513          	li	a0,10
    80001530:	00000097          	auipc	ra,0x0
    80001534:	274080e7          	jalr	628(ra) # 800017a4 <putc>

    thread_t echo;
    thread_create(&echo, echoBody, 0);
    80001538:	00000613          	li	a2,0
    8000153c:	00000597          	auipc	a1,0x0
    80001540:	db458593          	addi	a1,a1,-588 # 800012f0 <echoBody>
    80001544:	fc040513          	addi	a0,s0,-64
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	064080e7          	jalr	100(ra) # 800015ac <thread_create>
    while (1) {}
    80001550:	0000006f          	j	80001550 <userMainC+0x168>

0000000080001554 <mem_alloc>:
//

#include "./syscall_c.h"
#include "../lib/hw.h"

void* mem_alloc(size_t size){
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00813423          	sd	s0,8(sp)
    8000155c:	01010413          	addi	s0,sp,16
    uint64 code=0x01;
    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    80001560:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    80001564:	00100793          	li	a5,1
    80001568:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000156c:	00000073          	ecall
    void* value;
    __asm__ volatile ("mv %0, a0" : "=r"(value));
    80001570:	00050513          	mv	a0,a0
    return (void*)value;
}
    80001574:	00813403          	ld	s0,8(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <mem_free>:

int mem_free(void* ptr){
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00813423          	sd	s0,8(sp)
    80001588:	01010413          	addi	s0,sp,16
    uint64 code=0x02;
    __asm__ volatile("mv a1,a0");
    8000158c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    80001590:	00200793          	li	a5,2
    80001594:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001598:	00000073          	ecall
    return 0;
}
    8000159c:	00000513          	li	a0,0
    800015a0:	00813403          	ld	s0,8(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <thread_create>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800015ac:	fd010113          	addi	sp,sp,-48
    800015b0:	02113423          	sd	ra,40(sp)
    800015b4:	02813023          	sd	s0,32(sp)
    800015b8:	00913c23          	sd	s1,24(sp)
    800015bc:	01213823          	sd	s2,16(sp)
    800015c0:	01313423          	sd	s3,8(sp)
    800015c4:	03010413          	addi	s0,sp,48
    800015c8:	00050993          	mv	s3,a0
    800015cc:	00058913          	mv	s2,a1
    800015d0:	00060493          	mv	s1,a2
    // allocate stack separately; pass top pointer as a4 (stack_space)
    void* stack = mem_alloc(DEFAULT_STACK_SIZE * sizeof(size_t));
    800015d4:	00008537          	lui	a0,0x8
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	f7c080e7          	jalr	-132(ra) # 80001554 <mem_alloc>
    if (!stack) return -1;
    800015e0:	04050263          	beqz	a0,80001624 <thread_create+0x78>
    800015e4:	00050793          	mv	a5,a0
    register size_t a0 asm("a0") = 0x11;
    800015e8:	01100513          	li	a0,17
    register size_t a1 asm("a1") = (size_t)handle;
    800015ec:	00098593          	mv	a1,s3
    register size_t a2 asm("a2") = (size_t)start_routine;
    800015f0:	00090613          	mv	a2,s2
    register size_t a3 asm("a3") = (size_t)arg;
    800015f4:	00048693          	mv	a3,s1
    register size_t a4 asm("a4") = (size_t)stack + DEFAULT_STACK_SIZE * sizeof(size_t);
    800015f8:	00008737          	lui	a4,0x8
    800015fc:	00e78733          	add	a4,a5,a4
    register size_t a5 asm("a5") = (size_t)stack;
    __asm__ volatile("ecall"
    80001600:	00000073          	ecall
        : "+r"(a0)
        : "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5)
    );
    return (int)a0;
    80001604:	0005051b          	sext.w	a0,a0
}
    80001608:	02813083          	ld	ra,40(sp)
    8000160c:	02013403          	ld	s0,32(sp)
    80001610:	01813483          	ld	s1,24(sp)
    80001614:	01013903          	ld	s2,16(sp)
    80001618:	00813983          	ld	s3,8(sp)
    8000161c:	03010113          	addi	sp,sp,48
    80001620:	00008067          	ret
    if (!stack) return -1;
    80001624:	fff00513          	li	a0,-1
    80001628:	fe1ff06f          	j	80001608 <thread_create+0x5c>

000000008000162c <thread_exit>:

int thread_exit(void) {
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x12;
    80001638:	01200513          	li	a0,18
    __asm__ volatile("ecall" : "+r"(a0));
    8000163c:	00000073          	ecall
    return (int)a0;
}
    80001640:	0005051b          	sext.w	a0,a0
    80001644:	00813403          	ld	s0,8(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <thread_dispatch>:

void thread_dispatch(void) {
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00813423          	sd	s0,8(sp)
    80001658:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x13;
    8000165c:	01300513          	li	a0,19
    __asm__ volatile("ecall" : "+r"(a0));
    80001660:	00000073          	ecall
}
    80001664:	00813403          	ld	s0,8(sp)
    80001668:	01010113          	addi	sp,sp,16
    8000166c:	00008067          	ret

0000000080001670 <time_sleep>:

int time_sleep(time_t dur) {
    80001670:	ff010113          	addi	sp,sp,-16
    80001674:	00813423          	sd	s0,8(sp)
    80001678:	01010413          	addi	s0,sp,16
    8000167c:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x31;
    80001680:	03100513          	li	a0,49
    register size_t a1 asm("a1") = (size_t)dur;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001684:	00000073          	ecall
    return (int)a0;
}
    80001688:	0005051b          	sext.w	a0,a0
    8000168c:	00813403          	ld	s0,8(sp)
    80001690:	01010113          	addi	sp,sp,16
    80001694:	00008067          	ret

0000000080001698 <sem_open>:

int sem_open(sem_t* handle, unsigned init) {
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00813423          	sd	s0,8(sp)
    800016a0:	01010413          	addi	s0,sp,16
    800016a4:	00050793          	mv	a5,a0
    800016a8:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x21;
    800016ac:	02100513          	li	a0,33
    register size_t a1 asm("a1") = (size_t)handle;
    800016b0:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)init;
    800016b4:	02061613          	slli	a2,a2,0x20
    800016b8:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    800016bc:	00000073          	ecall
    return (int)a0;
}
    800016c0:	0005051b          	sext.w	a0,a0
    800016c4:	00813403          	ld	s0,8(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret

00000000800016d0 <sem_close>:

int sem_close(sem_t handle) {
    800016d0:	ff010113          	addi	sp,sp,-16
    800016d4:	00813423          	sd	s0,8(sp)
    800016d8:	01010413          	addi	s0,sp,16
    800016dc:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x22;
    800016e0:	02200513          	li	a0,34
    register size_t a1 asm("a1") = (size_t)handle;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800016e4:	00000073          	ecall
    return (int)a0;
}
    800016e8:	0005051b          	sext.w	a0,a0
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <sem_wait>:

int sem_wait(sem_t id) {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    80001704:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x23;
    80001708:	02300513          	li	a0,35
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    8000170c:	00000073          	ecall
    return (int)a0;
}
    80001710:	0005051b          	sext.w	a0,a0
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <sem_signal>:

int sem_signal(sem_t id) {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00813423          	sd	s0,8(sp)
    80001728:	01010413          	addi	s0,sp,16
    8000172c:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x24;
    80001730:	02400513          	li	a0,36
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001734:	00000073          	ecall
    return (int)a0;
}
    80001738:	0005051b          	sext.w	a0,a0
    8000173c:	00813403          	ld	s0,8(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret

0000000080001748 <sem_wait_n>:

int sem_wait_n(sem_t id, unsigned n) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    80001754:	00050793          	mv	a5,a0
    80001758:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x25;
    8000175c:	02500513          	li	a0,37
    register size_t a1 asm("a1") = (size_t)id;
    80001760:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    80001764:	02061613          	slli	a2,a2,0x20
    80001768:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    8000176c:	00000073          	ecall
    return (int)a0;
}
    80001770:	0005051b          	sext.w	a0,a0
    80001774:	00813403          	ld	s0,8(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <getc>:

char getc(void) {
    80001780:	ff010113          	addi	sp,sp,-16
    80001784:	00813423          	sd	s0,8(sp)
    80001788:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x41;
    8000178c:	04100513          	li	a0,65
    __asm__ volatile("ecall" : "+r"(a0));
    80001790:	00000073          	ecall
    return (char)a0;
}
    80001794:	0ff57513          	andi	a0,a0,255
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <putc>:

void putc(char c) {
    800017a4:	ff010113          	addi	sp,sp,-16
    800017a8:	00813423          	sd	s0,8(sp)
    800017ac:	01010413          	addi	s0,sp,16
    800017b0:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x42;
    800017b4:	04200513          	li	a0,66
    register size_t a1 asm("a1") = (size_t)(unsigned char)c;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800017b8:	00000073          	ecall
}
    800017bc:	00813403          	ld	s0,8(sp)
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret

00000000800017c8 <sys_halt>:

void sys_halt(void) {
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00813423          	sd	s0,8(sp)
    800017d0:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0xFF;
    800017d4:	0ff00513          	li	a0,255
    __asm__ volatile("ecall" : "+r"(a0));
    800017d8:	00000073          	ecall
}
    800017dc:	00813403          	ld	s0,8(sp)
    800017e0:	01010113          	addi	sp,sp,16
    800017e4:	00008067          	ret

00000000800017e8 <sem_signal_n>:

int sem_signal_n(sem_t id, unsigned n) {
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00813423          	sd	s0,8(sp)
    800017f0:	01010413          	addi	s0,sp,16
    800017f4:	00050793          	mv	a5,a0
    800017f8:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x26;
    800017fc:	02600513          	li	a0,38
    register size_t a1 asm("a1") = (size_t)id;
    80001800:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    80001804:	02061613          	slli	a2,a2,0x20
    80001808:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    8000180c:	00000073          	ecall
    return (int)a0;
    80001810:	0005051b          	sext.w	a0,a0
    80001814:	00813403          	ld	s0,8(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <userMainWrapper>:
#include "syscall_c.h"
#include "../lib/console.h"

void userMainK();

static void userMainWrapper() {
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00113423          	sd	ra,8(sp)
    80001828:	00813023          	sd	s0,0(sp)
    8000182c:	01010413          	addi	s0,sp,16
    userMainK();
    80001830:	00001097          	auipc	ra,0x1
    80001834:	2c8080e7          	jalr	712(ra) # 80002af8 <userMainK>
    sys_halt();
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	f90080e7          	jalr	-112(ra) # 800017c8 <sys_halt>
    while (1) {}
    80001840:	0000006f          	j	80001840 <userMainWrapper+0x20>

0000000080001844 <drop_to_user>:
}

void drop_to_user(void (*fn)()) {
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00813423          	sd	s0,8(sp)
    8000184c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001850:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001854:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    80001858:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    8000185c:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001860:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    80001864:	10200073          	sret
}
    80001868:	00813403          	ld	s0,8(sp)
    8000186c:	01010113          	addi	sp,sp,16
    80001870:	00008067          	ret

0000000080001874 <main>:

void interupt();
int main() {
    80001874:	ff010113          	addi	sp,sp,-16
    80001878:	00113423          	sd	ra,8(sp)
    8000187c:	00813023          	sd	s0,0(sp)
    80001880:	01010413          	addi	s0,sp,16
    start_main_thread();
    80001884:	00002097          	auipc	ra,0x2
    80001888:	2a4080e7          	jalr	676(ra) # 80003b28 <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    8000188c:	00000797          	auipc	a5,0x0
    80001890:	93478793          	addi	a5,a5,-1740 # 800011c0 <interupt>
    80001894:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0" :: "r"((uint64)(0x2 | 0x200)));
    80001898:	20200793          	li	a5,514
    8000189c:	10479073          	csrw	sie,a5
    drop_to_user(userMainWrapper);
    800018a0:	00000517          	auipc	a0,0x0
    800018a4:	f8050513          	addi	a0,a0,-128 # 80001820 <userMainWrapper>
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	f9c080e7          	jalr	-100(ra) # 80001844 <drop_to_user>
    return 0;
    800018b0:	00000513          	li	a0,0
    800018b4:	00813083          	ld	ra,8(sp)
    800018b8:	00013403          	ld	s0,0(sp)
    800018bc:	01010113          	addi	sp,sp,16
    800018c0:	00008067          	ret

00000000800018c4 <_ZN10KSemaphore4initEj>:
//

#include "Semaphore.hpp"
#include "Scheduler.hpp"

void KSemaphore::init(unsigned initialValue) {
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00813423          	sd	s0,8(sp)
    800018cc:	01010413          	addi	s0,sp,16
    blockedHead = nullptr;
    800018d0:	00053423          	sd	zero,8(a0)
    blockedTail = nullptr;
    800018d4:	00053823          	sd	zero,16(a0)
    value = (int)initialValue;
    800018d8:	00b52023          	sw	a1,0(a0)
    closed = false;
    800018dc:	00050223          	sb	zero,4(a0)
}
    800018e0:	00813403          	ld	s0,8(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_ZN10KSemaphore7enqueueEP7KThread>:

void KSemaphore::enqueue(KThread* thread) {
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	00913423          	sd	s1,8(sp)
    800018fc:	01213023          	sd	s2,0(sp)
    80001900:	02010413          	addi	s0,sp,32
    80001904:	00050913          	mv	s2,a0
    80001908:	00058493          	mv	s1,a1
    thread->setNextInQueue(nullptr);
    8000190c:	00000593          	li	a1,0
    80001910:	00048513          	mv	a0,s1
    80001914:	00000097          	auipc	ra,0x0
    80001918:	4a4080e7          	jalr	1188(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    8000191c:	01093583          	ld	a1,16(s2)
    80001920:	02058e63          	beqz	a1,8000195c <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        thread->setPrevInQueue(blockedTail);
    80001924:	00048513          	mv	a0,s1
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	4ac080e7          	jalr	1196(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    80001930:	00048593          	mv	a1,s1
    80001934:	01093503          	ld	a0,16(s2)
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	480080e7          	jalr	1152(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        blockedHead = thread;
    }
    blockedTail = thread;
    80001940:	00993823          	sd	s1,16(s2)
}
    80001944:	01813083          	ld	ra,24(sp)
    80001948:	01013403          	ld	s0,16(sp)
    8000194c:	00813483          	ld	s1,8(sp)
    80001950:	00013903          	ld	s2,0(sp)
    80001954:	02010113          	addi	sp,sp,32
    80001958:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    8000195c:	00000593          	li	a1,0
    80001960:	00048513          	mv	a0,s1
    80001964:	00000097          	auipc	ra,0x0
    80001968:	470080e7          	jalr	1136(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
        blockedHead = thread;
    8000196c:	00993423          	sd	s1,8(s2)
    80001970:	fd1ff06f          	j	80001940 <_ZN10KSemaphore7enqueueEP7KThread+0x54>

0000000080001974 <_ZN10KSemaphore7dequeueEv>:

KThread* KSemaphore::dequeue() {
    80001974:	fe010113          	addi	sp,sp,-32
    80001978:	00113c23          	sd	ra,24(sp)
    8000197c:	00813823          	sd	s0,16(sp)
    80001980:	00913423          	sd	s1,8(sp)
    80001984:	01213023          	sd	s2,0(sp)
    80001988:	02010413          	addi	s0,sp,32
    if (blockedHead == nullptr) return nullptr;
    8000198c:	00853483          	ld	s1,8(a0)
    80001990:	04048463          	beqz	s1,800019d8 <_ZN10KSemaphore7dequeueEv+0x64>
    80001994:	00050913          	mv	s2,a0
    KThread* thread = blockedHead;
    blockedHead = thread->getNextInQueue();
    80001998:	00048513          	mv	a0,s1
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	3e4080e7          	jalr	996(ra) # 80001d80 <_ZN7KThread14getNextInQueueEv>
    800019a4:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    800019a8:	04050663          	beqz	a0,800019f4 <_ZN10KSemaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    800019ac:	00000593          	li	a1,0
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	424080e7          	jalr	1060(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    800019b8:	00000593          	li	a1,0
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	3f8080e7          	jalr	1016(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800019c8:	00000593          	li	a1,0
    800019cc:	00048513          	mv	a0,s1
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	404080e7          	jalr	1028(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
    return thread;
}
    800019d8:	00048513          	mv	a0,s1
    800019dc:	01813083          	ld	ra,24(sp)
    800019e0:	01013403          	ld	s0,16(sp)
    800019e4:	00813483          	ld	s1,8(sp)
    800019e8:	00013903          	ld	s2,0(sp)
    800019ec:	02010113          	addi	sp,sp,32
    800019f0:	00008067          	ret
    else blockedTail = nullptr;
    800019f4:	00093823          	sd	zero,16(s2)
    800019f8:	fc1ff06f          	j	800019b8 <_ZN10KSemaphore7dequeueEv+0x44>

00000000800019fc <_ZN10KSemaphore4waitEP7KThread>:

int KSemaphore::wait(KThread* caller) {
    if (closed) { return -1; }
    800019fc:	00454783          	lbu	a5,4(a0)
    80001a00:	04079a63          	bnez	a5,80001a54 <_ZN10KSemaphore4waitEP7KThread+0x58>
    if (value > 0) { value--; return 0; }
    80001a04:	00052783          	lw	a5,0(a0)
    80001a08:	00f05a63          	blez	a5,80001a1c <_ZN10KSemaphore4waitEP7KThread+0x20>
    80001a0c:	fff7879b          	addiw	a5,a5,-1
    80001a10:	00f52023          	sw	a5,0(a0)
    80001a14:	00000513          	li	a0,0
    80001a18:	00008067          	ret
int KSemaphore::wait(KThread* caller) {
    80001a1c:	ff010113          	addi	sp,sp,-16
    80001a20:	00113423          	sd	ra,8(sp)
    80001a24:	00813023          	sd	s0,0(sp)
    80001a28:	01010413          	addi	s0,sp,16
    caller->sleepDelta = 1;
    80001a2c:	00100793          	li	a5,1
    80001a30:	04f5b023          	sd	a5,64(a1)
    caller->threadContext.x[10] = 0;
    80001a34:	0a05bc23          	sd	zero,184(a1)
    enqueue(caller);
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	eb4080e7          	jalr	-332(ra) # 800018ec <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001a40:	00100513          	li	a0,1
}
    80001a44:	00813083          	ld	ra,8(sp)
    80001a48:	00013403          	ld	s0,0(sp)
    80001a4c:	01010113          	addi	sp,sp,16
    80001a50:	00008067          	ret
    if (closed) { return -1; }
    80001a54:	fff00513          	li	a0,-1
}
    80001a58:	00008067          	ret

0000000080001a5c <_ZN10KSemaphore6signalEv>:

int KSemaphore::signal() {
    value+=1;
    80001a5c:	00052783          	lw	a5,0(a0)
    80001a60:	0017879b          	addiw	a5,a5,1
    80001a64:	0007871b          	sext.w	a4,a5
    80001a68:	00f52023          	sw	a5,0(a0)
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a6c:	00853783          	ld	a5,8(a0)
    80001a70:	06078063          	beqz	a5,80001ad0 <_ZN10KSemaphore6signalEv+0x74>
int KSemaphore::signal() {
    80001a74:	fe010113          	addi	sp,sp,-32
    80001a78:	00113c23          	sd	ra,24(sp)
    80001a7c:	00813823          	sd	s0,16(sp)
    80001a80:	00913423          	sd	s1,8(sp)
    80001a84:	02010413          	addi	s0,sp,32
    80001a88:	00050493          	mv	s1,a0
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a8c:	0407a783          	lw	a5,64(a5)
    80001a90:	00f75e63          	bge	a4,a5,80001aac <_ZN10KSemaphore6signalEv+0x50>
        KThread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}
    80001a94:	00000513          	li	a0,0
    80001a98:	01813083          	ld	ra,24(sp)
    80001a9c:	01013403          	ld	s0,16(sp)
    80001aa0:	00813483          	ld	s1,8(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret
        KThread* thread = dequeue();
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	ec8080e7          	jalr	-312(ra) # 80001974 <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001ab4:	04053703          	ld	a4,64(a0)
    80001ab8:	0004a783          	lw	a5,0(s1)
    80001abc:	40e787bb          	subw	a5,a5,a4
    80001ac0:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	5c8080e7          	jalr	1480(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
    80001acc:	fc9ff06f          	j	80001a94 <_ZN10KSemaphore6signalEv+0x38>
}
    80001ad0:	00000513          	li	a0,0
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN10KSemaphore5waitNEP7KThreadj>:

int KSemaphore::waitN(KThread* caller, unsigned n) {
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001ad8:	00454783          	lbu	a5,4(a0)
    80001adc:	02079063          	bnez	a5,80001afc <_ZN10KSemaphore5waitNEP7KThreadj+0x24>
    if (value >= (int)n) { value -= (int)n; return 0; }
    80001ae0:	00052783          	lw	a5,0(a0)
    80001ae4:	0006071b          	sext.w	a4,a2
    80001ae8:	02e7c263          	blt	a5,a4,80001b0c <_ZN10KSemaphore5waitNEP7KThreadj+0x34>
    80001aec:	40e787bb          	subw	a5,a5,a4
    80001af0:	00f52023          	sw	a5,0(a0)
    80001af4:	00000513          	li	a0,0
    caller->sleepDelta = (time_t)n;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}
    80001af8:	00008067          	ret
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001afc:	fff00793          	li	a5,-1
    80001b00:	0af5bc23          	sd	a5,184(a1)
    80001b04:	fff00513          	li	a0,-1
    80001b08:	00008067          	ret
int KSemaphore::waitN(KThread* caller, unsigned n) {
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00113423          	sd	ra,8(sp)
    80001b14:	00813023          	sd	s0,0(sp)
    80001b18:	01010413          	addi	s0,sp,16
    caller->sleepDelta = (time_t)n;
    80001b1c:	02061613          	slli	a2,a2,0x20
    80001b20:	02065613          	srli	a2,a2,0x20
    80001b24:	04c5b023          	sd	a2,64(a1)
    caller->threadContext.x[10] = 0;
    80001b28:	0a05bc23          	sd	zero,184(a1)
    enqueue(caller);
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	dc0080e7          	jalr	-576(ra) # 800018ec <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001b34:	00100513          	li	a0,1
}
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret

0000000080001b48 <_ZN10KSemaphore7signalNEj>:

int KSemaphore::signalN(unsigned n) {
    80001b48:	fe010113          	addi	sp,sp,-32
    80001b4c:	00113c23          	sd	ra,24(sp)
    80001b50:	00813823          	sd	s0,16(sp)
    80001b54:	00913423          	sd	s1,8(sp)
    80001b58:	02010413          	addi	s0,sp,32
    80001b5c:	00050493          	mv	s1,a0
    value += (int)n;
    80001b60:	00052783          	lw	a5,0(a0)
    80001b64:	00b787bb          	addw	a5,a5,a1
    80001b68:	00f52023          	sw	a5,0(a0)
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001b6c:	0084b783          	ld	a5,8(s1)
    80001b70:	02078c63          	beqz	a5,80001ba8 <_ZN10KSemaphore7signalNEj+0x60>
    80001b74:	0004a703          	lw	a4,0(s1)
    80001b78:	0407a783          	lw	a5,64(a5)
    80001b7c:	02f74663          	blt	a4,a5,80001ba8 <_ZN10KSemaphore7signalNEj+0x60>
        KThread* thread = dequeue();
    80001b80:	00048513          	mv	a0,s1
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	df0080e7          	jalr	-528(ra) # 80001974 <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001b8c:	04053703          	ld	a4,64(a0)
    80001b90:	0004a783          	lw	a5,0(s1)
    80001b94:	40e787bb          	subw	a5,a5,a4
    80001b98:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	4f0080e7          	jalr	1264(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001ba4:	fc9ff06f          	j	80001b6c <_ZN10KSemaphore7signalNEj+0x24>
    }
    return 0;
}
    80001ba8:	00000513          	li	a0,0
    80001bac:	01813083          	ld	ra,24(sp)
    80001bb0:	01013403          	ld	s0,16(sp)
    80001bb4:	00813483          	ld	s1,8(sp)
    80001bb8:	02010113          	addi	sp,sp,32
    80001bbc:	00008067          	ret

0000000080001bc0 <_ZN10KSemaphore5closeEv>:

int KSemaphore::close() {
    80001bc0:	fe010113          	addi	sp,sp,-32
    80001bc4:	00113c23          	sd	ra,24(sp)
    80001bc8:	00813823          	sd	s0,16(sp)
    80001bcc:	00913423          	sd	s1,8(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    80001bd4:	00050493          	mv	s1,a0
    closed = true;
    80001bd8:	00100793          	li	a5,1
    80001bdc:	00f50223          	sb	a5,4(a0)
    KThread* thread = dequeue();
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	d94080e7          	jalr	-620(ra) # 80001974 <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001be8:	02050263          	beqz	a0,80001c0c <_ZN10KSemaphore5closeEv+0x4c>
        thread->threadContext.x[10] = (size_t)-1;
    80001bec:	fff00793          	li	a5,-1
    80001bf0:	0af53c23          	sd	a5,184(a0)
        Scheduler::Put(thread);
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	498080e7          	jalr	1176(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
        thread = dequeue();
    80001bfc:	00048513          	mv	a0,s1
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	d74080e7          	jalr	-652(ra) # 80001974 <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001c08:	fe1ff06f          	j	80001be8 <_ZN10KSemaphore5closeEv+0x28>
    }
    return 0;
    80001c0c:	00000513          	li	a0,0
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00813483          	ld	s1,8(sp)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00008067          	ret

0000000080001c24 <_ZN7KThread16threadTrampolineEPS_>:
    sstatus_val &= ~(1UL << 8); // SPP=0
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void KThread::threadTrampoline(KThread* t) {
    80001c24:	fe010113          	addi	sp,sp,-32
    80001c28:	00113c23          	sd	ra,24(sp)
    80001c2c:	00813823          	sd	s0,16(sp)
    80001c30:	00913423          	sd	s1,8(sp)
    80001c34:	02010413          	addi	s0,sp,32
    80001c38:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001c3c:	00053783          	ld	a5,0(a0)
    80001c40:	00078663          	beqz	a5,80001c4c <_ZN7KThread16threadTrampolineEPS_+0x28>
    80001c44:	00853503          	ld	a0,8(a0)
    80001c48:	000780e7          	jalr	a5
    t->finished=true;
    80001c4c:	00100793          	li	a5,1
    80001c50:	00f48c23          	sb	a5,24(s1)
    __asm__ volatile("li a0, 0x12; ecall");
    80001c54:	01200513          	li	a0,18
    80001c58:	00000073          	ecall
    80001c5c:	01813083          	ld	ra,24(sp)
    80001c60:	01013403          	ld	s0,16(sp)
    80001c64:	00813483          	ld	s1,8(sp)
    80001c68:	02010113          	addi	sp,sp,32
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN7KThreadC1Ev>:
KThread::KThread() {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00813423          	sd	s0,8(sp)
    80001c78:	01010413          	addi	s0,sp,16
}
    80001c7c:	00813403          	ld	s0,8(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_ZN7KThread4initEv>:
void KThread::init() {
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00813423          	sd	s0,8(sp)
    80001c90:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001c94:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001c98:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001c9c:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001ca0:	02053023          	sd	zero,32(a0)
    next = nullptr;
    80001ca4:	02053423          	sd	zero,40(a0)
    stackPtr = nullptr;
    80001ca8:	02053823          	sd	zero,48(a0)
    supervisorSp = nullptr;
    80001cac:	02053c23          	sd	zero,56(a0)
    stackBase = nullptr;
    80001cb0:	06053023          	sd	zero,96(a0)
    sleepDelta = 0;
    80001cb4:	04053023          	sd	zero,64(a0)
    priority = 0;
    80001cb8:	04050423          	sb	zero,72(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001cbc:	00000713          	li	a4,0
    80001cc0:	01f00793          	li	a5,31
    80001cc4:	00e7ce63          	blt	a5,a4,80001ce0 <_ZN7KThread4initEv+0x58>
    80001cc8:	00c70793          	addi	a5,a4,12 # 800c <_entry-0x7fff7ff4>
    80001ccc:	00379793          	slli	a5,a5,0x3
    80001cd0:	00f507b3          	add	a5,a0,a5
    80001cd4:	0007b423          	sd	zero,8(a5)
    80001cd8:	0017071b          	addiw	a4,a4,1
    80001cdc:	fe5ff06f          	j	80001cc0 <_ZN7KThread4initEv+0x38>
    threadContext.sepc = 0;
    80001ce0:	16053423          	sd	zero,360(a0)
    threadContext.sstatus = 0;
    80001ce4:	16053823          	sd	zero,368(a0)
    threadContext.pc = 0;
    80001ce8:	16053c23          	sd	zero,376(a0)
    finished=false;
    80001cec:	00050c23          	sb	zero,24(a0)
    waitingThread=nullptr;
    80001cf0:	04053823          	sd	zero,80(a0)
    stopperThread=nullptr;
    80001cf4:	04053c23          	sd	zero,88(a0)
}
    80001cf8:	00813403          	ld	s0,8(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001d10:	00000713          	li	a4,0
    80001d14:	01f00793          	li	a5,31
    80001d18:	02e7c463          	blt	a5,a4,80001d40 <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001d1c:	00371793          	slli	a5,a4,0x3
    80001d20:	00f587b3          	add	a5,a1,a5
    80001d24:	0007b683          	ld	a3,0(a5)
    80001d28:	00c70793          	addi	a5,a4,12
    80001d2c:	00379793          	slli	a5,a5,0x3
    80001d30:	00f507b3          	add	a5,a0,a5
    80001d34:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    80001d38:	0017071b          	addiw	a4,a4,1
    80001d3c:	fd9ff06f          	j	80001d14 <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001d40:	03053783          	ld	a5,48(a0)
    80001d44:	06f53c23          	sd	a5,120(a0)
    threadContext.sepc = cont->sepc;
    80001d48:	1005b783          	ld	a5,256(a1)
    80001d4c:	16f53423          	sd	a5,360(a0)
    threadContext.sstatus =cont->sstatus;
    80001d50:	1085b783          	ld	a5,264(a1)
    80001d54:	16f53823          	sd	a5,368(a0)
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00813423          	sd	s0,8(sp)
    80001d6c:	01010413          	addi	s0,sp,16
}
    80001d70:	06850513          	addi	a0,a0,104
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00813423          	sd	s0,8(sp)
    80001d88:	01010413          	addi	s0,sp,16
}
    80001d8c:	02853503          	ld	a0,40(a0)
    80001d90:	00813403          	ld	s0,8(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret

0000000080001d9c <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00813423          	sd	s0,8(sp)
    80001da4:	01010413          	addi	s0,sp,16
}
    80001da8:	02053503          	ld	a0,32(a0)
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret

0000000080001db8 <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00813423          	sd	s0,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    this->next = next;
    80001dc4:	02b53423          	sd	a1,40(a0)
}
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00813423          	sd	s0,8(sp)
    80001ddc:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001de0:	02b53023          	sd	a1,32(a0)
}
    80001de4:	00813403          	ld	s0,8(sp)
    80001de8:	01010113          	addi	sp,sp,16
    80001dec:	00008067          	ret

0000000080001df0 <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	01213023          	sd	s2,0(sp)
    80001e04:	02010413          	addi	s0,sp,32
    80001e08:	00050493          	mv	s1,a0
    80001e0c:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	fa8080e7          	jalr	-88(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001e18:	00090593          	mv	a1,s2
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	fb4080e7          	jalr	-76(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001e28:	01813083          	ld	ra,24(sp)
    80001e2c:	01013403          	ld	s0,16(sp)
    80001e30:	00813483          	ld	s1,8(sp)
    80001e34:	00013903          	ld	s2,0(sp)
    80001e38:	02010113          	addi	sp,sp,32
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00813423          	sd	s0,8(sp)
    80001e48:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001e4c:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001e50:	02c53823          	sd	a2,48(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001e54:	06c53c23          	sd	a2,120(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001e58:	00000797          	auipc	a5,0x0
    80001e5c:	dcc78793          	addi	a5,a5,-564 # 80001c24 <_ZN7KThread16threadTrampolineEPS_>
    80001e60:	16f53423          	sd	a5,360(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001e64:	0aa53c23          	sd	a0,184(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001e68:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001e6c:	08f53023          	sd	a5,128(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001e70:	100027f3          	csrr	a5,sstatus
    sstatus_val &= ~(1UL << 8); // SPP=0
    80001e74:	eff7f793          	andi	a5,a5,-257
    sstatus_val |= (1UL << 5); // SPIE=1
    80001e78:	0207e793          	ori	a5,a5,32
    threadContext.sstatus = sstatus_val;
    80001e7c:	16f53823          	sd	a5,368(a0)
}
    80001e80:	00813403          	ld	s0,8(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_ZL8idleBodyPv>:
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	00813023          	sd	s0,0(sp)
    80001e98:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	7b4080e7          	jalr	1972(ra) # 80001650 <thread_dispatch>
    80001ea4:	ff9ff06f          	j	80001e9c <_ZL8idleBodyPv+0x10>

0000000080001ea8 <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00813423          	sd	s0,8(sp)
    80001eb0:	01010413          	addi	s0,sp,16
}
    80001eb4:	0000b517          	auipc	a0,0xb
    80001eb8:	bbc53503          	ld	a0,-1092(a0) # 8000ca70 <_ZN9Scheduler7runningE>
    80001ebc:	00813403          	ld	s0,8(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00113423          	sd	ra,8(sp)
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    80001ed8:	00058513          	mv	a0,a1
    running = newThread;
    80001edc:	0000b797          	auipc	a5,0xb
    80001ee0:	b8b7ba23          	sd	a1,-1132(a5) # 8000ca70 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	e80080e7          	jalr	-384(ra) # 80001d64 <_ZN7KThread10getContextEv>
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	1a8080e7          	jalr	424(ra) # 80001094 <restoreContext>
}
    80001ef4:	00813083          	ld	ra,8(sp)
    80001ef8:	00013403          	ld	s0,0(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN9Scheduler8freeDeadEv>:
void Scheduler::freeDead() {
    80001f04:	fe010113          	addi	sp,sp,-32
    80001f08:	00113c23          	sd	ra,24(sp)
    80001f0c:	00813823          	sd	s0,16(sp)
    80001f10:	00913423          	sd	s1,8(sp)
    80001f14:	02010413          	addi	s0,sp,32
    if (deadThread == nullptr) return;
    80001f18:	0000b497          	auipc	s1,0xb
    80001f1c:	b604b483          	ld	s1,-1184(s1) # 8000ca78 <_ZN9Scheduler10deadThreadE>
    80001f20:	02048e63          	beqz	s1,80001f5c <_ZN9Scheduler8freeDeadEv+0x58>
    deadThread = nullptr;
    80001f24:	0000b797          	auipc	a5,0xb
    80001f28:	b407ba23          	sd	zero,-1196(a5) # 8000ca78 <_ZN9Scheduler10deadThreadE>
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    80001f2c:	0604b783          	ld	a5,96(s1)
    80001f30:	00078c63          	beqz	a5,80001f48 <_ZN9Scheduler8freeDeadEv+0x44>
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	634080e7          	jalr	1588(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f3c:	0604b583          	ld	a1,96(s1)
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	720080e7          	jalr	1824(ra) # 80003660 <_ZN15MemoryAllocator12FreeFragmentEPv>
    MemoryAllocator::GetInstance().FreeFragment(dead);
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	620080e7          	jalr	1568(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f50:	00048593          	mv	a1,s1
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	70c080e7          	jalr	1804(ra) # 80003660 <_ZN15MemoryAllocator12FreeFragmentEPv>
}
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret

0000000080001f70 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001f70:	fe010113          	addi	sp,sp,-32
    80001f74:	00113c23          	sd	ra,24(sp)
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	01213023          	sd	s2,0(sp)
    80001f84:	02010413          	addi	s0,sp,32
    for (int i = 0; i < LEVELS; i++) {
    80001f88:	00000493          	li	s1,0
    80001f8c:	00300793          	li	a5,3
    80001f90:	0a97c463          	blt	a5,s1,80002038 <_ZN9Scheduler7GetNextEv+0xc8>
        if (readyHead[i] == nullptr) continue;
    80001f94:	00349713          	slli	a4,s1,0x3
    80001f98:	0000b797          	auipc	a5,0xb
    80001f9c:	ad878793          	addi	a5,a5,-1320 # 8000ca70 <_ZN9Scheduler7runningE>
    80001fa0:	00e787b3          	add	a5,a5,a4
    80001fa4:	0107b903          	ld	s2,16(a5)
    80001fa8:	06090863          	beqz	s2,80002018 <_ZN9Scheduler7GetNextEv+0xa8>
        readyHead[i] = toRet->getNextInQueue();
    80001fac:	00090513          	mv	a0,s2
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	dd0080e7          	jalr	-560(ra) # 80001d80 <_ZN7KThread14getNextInQueueEv>
    80001fb8:	00349713          	slli	a4,s1,0x3
    80001fbc:	0000b797          	auipc	a5,0xb
    80001fc0:	ab478793          	addi	a5,a5,-1356 # 8000ca70 <_ZN9Scheduler7runningE>
    80001fc4:	00e787b3          	add	a5,a5,a4
    80001fc8:	00a7b823          	sd	a0,16(a5)
        if (readyHead[i] != nullptr) readyHead[i]->setPrevInQueue(nullptr);
    80001fcc:	04050a63          	beqz	a0,80002020 <_ZN9Scheduler7GetNextEv+0xb0>
    80001fd0:	00000593          	li	a1,0
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	e00080e7          	jalr	-512(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
        toRet->setNextInQueue(nullptr);
    80001fdc:	00000593          	li	a1,0
    80001fe0:	00090513          	mv	a0,s2
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	dd4080e7          	jalr	-556(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
        toRet->setPrevInQueue(nullptr);
    80001fec:	00000593          	li	a1,0
    80001ff0:	00090513          	mv	a0,s2
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	de0080e7          	jalr	-544(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001ffc:	00090513          	mv	a0,s2
    80002000:	01813083          	ld	ra,24(sp)
    80002004:	01013403          	ld	s0,16(sp)
    80002008:	00813483          	ld	s1,8(sp)
    8000200c:	00013903          	ld	s2,0(sp)
    80002010:	02010113          	addi	sp,sp,32
    80002014:	00008067          	ret
    for (int i = 0; i < LEVELS; i++) {
    80002018:	0014849b          	addiw	s1,s1,1
    8000201c:	f71ff06f          	j	80001f8c <_ZN9Scheduler7GetNextEv+0x1c>
        else readyTail[i] = nullptr;
    80002020:	00349493          	slli	s1,s1,0x3
    80002024:	0000b797          	auipc	a5,0xb
    80002028:	a4c78793          	addi	a5,a5,-1460 # 8000ca70 <_ZN9Scheduler7runningE>
    8000202c:	009784b3          	add	s1,a5,s1
    80002030:	0204b823          	sd	zero,48(s1)
    80002034:	fa9ff06f          	j	80001fdc <_ZN9Scheduler7GetNextEv+0x6c>
    return nullptr;
    80002038:	00000913          	li	s2,0
    8000203c:	fc1ff06f          	j	80001ffc <_ZN9Scheduler7GetNextEv+0x8c>

0000000080002040 <_ZN9Scheduler12blockCurrentEP7KThread>:
void Scheduler::blockCurrent(KThread* current) {
    80002040:	fe010113          	addi	sp,sp,-32
    80002044:	00113c23          	sd	ra,24(sp)
    80002048:	00813823          	sd	s0,16(sp)
    8000204c:	00913423          	sd	s1,8(sp)
    80002050:	02010413          	addi	s0,sp,32
    80002054:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	f18080e7          	jalr	-232(ra) # 80001f70 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) { while (true) {} }
    80002060:	02050463          	beqz	a0,80002088 <_ZN9Scheduler12blockCurrentEP7KThread+0x48>
    80002064:	00050593          	mv	a1,a0
    yield(current, next);
    80002068:	00048513          	mv	a0,s1
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	e5c080e7          	jalr	-420(ra) # 80001ec8 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80002074:	01813083          	ld	ra,24(sp)
    80002078:	01013403          	ld	s0,16(sp)
    8000207c:	00813483          	ld	s1,8(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret
    if (next == nullptr) { while (true) {} }
    80002088:	0000006f          	j	80002088 <_ZN9Scheduler12blockCurrentEP7KThread+0x48>

000000008000208c <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    8000208c:	fd010113          	addi	sp,sp,-48
    80002090:	02113423          	sd	ra,40(sp)
    80002094:	02813023          	sd	s0,32(sp)
    80002098:	00913c23          	sd	s1,24(sp)
    8000209c:	01213823          	sd	s2,16(sp)
    800020a0:	01313423          	sd	s3,8(sp)
    800020a4:	03010413          	addi	s0,sp,48
    800020a8:	00050493          	mv	s1,a0
    int lvl = thread->priority;
    800020ac:	04854903          	lbu	s2,72(a0)
    thread->setNextInQueue(nullptr);
    800020b0:	00000593          	li	a1,0
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	d04080e7          	jalr	-764(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(readyTail[lvl]);
    800020bc:	00391793          	slli	a5,s2,0x3
    800020c0:	0000b997          	auipc	s3,0xb
    800020c4:	9b098993          	addi	s3,s3,-1616 # 8000ca70 <_ZN9Scheduler7runningE>
    800020c8:	00f989b3          	add	s3,s3,a5
    800020cc:	0309b583          	ld	a1,48(s3)
    800020d0:	00048513          	mv	a0,s1
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	d00080e7          	jalr	-768(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
    if (readyTail[lvl] != nullptr) readyTail[lvl]->setNextInQueue(thread);
    800020dc:	0309b503          	ld	a0,48(s3)
    800020e0:	04050063          	beqz	a0,80002120 <_ZN9Scheduler3PutEP7KThread+0x94>
    800020e4:	00048593          	mv	a1,s1
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	cd0080e7          	jalr	-816(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    readyTail[lvl] = thread;
    800020f0:	00391913          	slli	s2,s2,0x3
    800020f4:	0000b797          	auipc	a5,0xb
    800020f8:	97c78793          	addi	a5,a5,-1668 # 8000ca70 <_ZN9Scheduler7runningE>
    800020fc:	01278933          	add	s2,a5,s2
    80002100:	02993823          	sd	s1,48(s2)
}
    80002104:	02813083          	ld	ra,40(sp)
    80002108:	02013403          	ld	s0,32(sp)
    8000210c:	01813483          	ld	s1,24(sp)
    80002110:	01013903          	ld	s2,16(sp)
    80002114:	00813983          	ld	s3,8(sp)
    80002118:	03010113          	addi	sp,sp,48
    8000211c:	00008067          	ret
    else readyHead[lvl] = thread;
    80002120:	00391713          	slli	a4,s2,0x3
    80002124:	0000b797          	auipc	a5,0xb
    80002128:	94c78793          	addi	a5,a5,-1716 # 8000ca70 <_ZN9Scheduler7runningE>
    8000212c:	00e787b3          	add	a5,a5,a4
    80002130:	0097b823          	sd	s1,16(a5)
    80002134:	fbdff06f          	j	800020f0 <_ZN9Scheduler3PutEP7KThread+0x64>

0000000080002138 <_ZN9Scheduler12yieldCurrentEP7KThread>:
bool Scheduler::yieldCurrent(KThread* current) {
    80002138:	fe010113          	addi	sp,sp,-32
    8000213c:	00113c23          	sd	ra,24(sp)
    80002140:	00813823          	sd	s0,16(sp)
    80002144:	00913423          	sd	s1,8(sp)
    80002148:	01213023          	sd	s2,0(sp)
    8000214c:	02010413          	addi	s0,sp,32
    80002150:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80002154:	00000097          	auipc	ra,0x0
    80002158:	e1c080e7          	jalr	-484(ra) # 80001f70 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) return false;
    8000215c:	04050463          	beqz	a0,800021a4 <_ZN9Scheduler12yieldCurrentEP7KThread+0x6c>
    80002160:	00050913          	mv	s2,a0
    if (current) current->threadContext.x[10] = 0;
    80002164:	00048463          	beqz	s1,8000216c <_ZN9Scheduler12yieldCurrentEP7KThread+0x34>
    80002168:	0a04bc23          	sd	zero,184(s1)
    Put(current);
    8000216c:	00048513          	mv	a0,s1
    80002170:	00000097          	auipc	ra,0x0
    80002174:	f1c080e7          	jalr	-228(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    80002178:	00090593          	mv	a1,s2
    8000217c:	00048513          	mv	a0,s1
    80002180:	00000097          	auipc	ra,0x0
    80002184:	d48080e7          	jalr	-696(ra) # 80001ec8 <_ZN9Scheduler5yieldEP7KThreadS1_>
    return true;
    80002188:	00100513          	li	a0,1
}
    8000218c:	01813083          	ld	ra,24(sp)
    80002190:	01013403          	ld	s0,16(sp)
    80002194:	00813483          	ld	s1,8(sp)
    80002198:	00013903          	ld	s2,0(sp)
    8000219c:	02010113          	addi	sp,sp,32
    800021a0:	00008067          	ret
    if (next == nullptr) return false;
    800021a4:	00000513          	li	a0,0
    800021a8:	fe5ff06f          	j	8000218c <_ZN9Scheduler12yieldCurrentEP7KThread+0x54>

00000000800021ac <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    800021ac:	fe010113          	addi	sp,sp,-32
    800021b0:	00113c23          	sd	ra,24(sp)
    800021b4:	00813823          	sd	s0,16(sp)
    800021b8:	00913423          	sd	s1,8(sp)
    800021bc:	01213023          	sd	s2,0(sp)
    800021c0:	02010413          	addi	s0,sp,32
    800021c4:	00050493          	mv	s1,a0
    deadThread = t;
    800021c8:	0000b797          	auipc	a5,0xb
    800021cc:	8aa7b823          	sd	a0,-1872(a5) # 8000ca78 <_ZN9Scheduler10deadThreadE>
    KThread* next = GetNext();
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	da0080e7          	jalr	-608(ra) # 80001f70 <_ZN9Scheduler7GetNextEv>
    800021d8:	00050913          	mv	s2,a0
    if (next == nullptr) {
    800021dc:	02050263          	beqz	a0,80002200 <_ZN9Scheduler10ThreadExitEP7KThread+0x54>
    if (t->stopperThread)return;
    800021e0:	0584b783          	ld	a5,88(s1)
    800021e4:	02078463          	beqz	a5,8000220c <_ZN9Scheduler10ThreadExitEP7KThread+0x60>
}
    800021e8:	01813083          	ld	ra,24(sp)
    800021ec:	01013403          	ld	s0,16(sp)
    800021f0:	00813483          	ld	s1,8(sp)
    800021f4:	00013903          	ld	s2,0(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80002200:	0104b903          	ld	s2,16(s1)
        if (next == nullptr) { while (true) {} }
    80002204:	fc091ee3          	bnez	s2,800021e0 <_ZN9Scheduler10ThreadExitEP7KThread+0x34>
    80002208:	0000006f          	j	80002208 <_ZN9Scheduler10ThreadExitEP7KThread+0x5c>
    if (t->waitingThread) {
    8000220c:	0504b503          	ld	a0,80(s1)
    80002210:	00050e63          	beqz	a0,8000222c <_ZN9Scheduler10ThreadExitEP7KThread+0x80>
        Put(t->waitingThread);
    80002214:	00000097          	auipc	ra,0x0
    80002218:	e78080e7          	jalr	-392(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
        t->waitingThread->stopperThread = t->stopperThread;
    8000221c:	0504b783          	ld	a5,80(s1)
    80002220:	0584b703          	ld	a4,88(s1)
    80002224:	04e7bc23          	sd	a4,88(a5)
        t->waitingThread=nullptr;
    80002228:	0404b823          	sd	zero,80(s1)
    yield(t, next);
    8000222c:	00090593          	mv	a1,s2
    80002230:	00048513          	mv	a0,s1
    80002234:	00000097          	auipc	ra,0x0
    80002238:	c94080e7          	jalr	-876(ra) # 80001ec8 <_ZN9Scheduler5yieldEP7KThreadS1_>
    8000223c:	fadff06f          	j	800021e8 <_ZN9Scheduler10ThreadExitEP7KThread+0x3c>

0000000080002240 <_ZN9Scheduler12PutPreemptedEP7KThread>:
void Scheduler::PutPreempted(KThread* thread) {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00113423          	sd	ra,8(sp)
    80002248:	00813023          	sd	s0,0(sp)
    8000224c:	01010413          	addi	s0,sp,16
    if (thread->priority < LEVELS - 1) thread->priority++;
    80002250:	04854783          	lbu	a5,72(a0)
    80002254:	00200713          	li	a4,2
    80002258:	00f76663          	bltu	a4,a5,80002264 <_ZN9Scheduler12PutPreemptedEP7KThread+0x24>
    8000225c:	0017879b          	addiw	a5,a5,1
    80002260:	04f50423          	sb	a5,72(a0)
    Put(thread);
    80002264:	00000097          	auipc	ra,0x0
    80002268:	e28080e7          	jalr	-472(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00813423          	sd	s0,8(sp)
    80002284:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80002288:	0000a797          	auipc	a5,0xa
    8000228c:	7887b783          	ld	a5,1928(a5) # 8000ca10 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002290:	00778793          	addi	a5,a5,7
    80002294:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80002298:	0000b717          	auipc	a4,0xb
    8000229c:	82f73423          	sd	a5,-2008(a4) # 8000cac0 <_ZN9Scheduler12stack_cursorE>
}
    800022a0:	00813403          	ld	s0,8(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    800022ac:	fe010113          	addi	sp,sp,-32
    800022b0:	00113c23          	sd	ra,24(sp)
    800022b4:	00813823          	sd	s0,16(sp)
    800022b8:	00913423          	sd	s1,8(sp)
    800022bc:	02010413          	addi	s0,sp,32
    SetupStartStack();
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	fbc080e7          	jalr	-68(ra) # 8000227c <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	2a0080e7          	jalr	672(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    800022d0:	18000593          	li	a1,384
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	2f0080e7          	jalr	752(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800022dc:	0000a497          	auipc	s1,0xa
    800022e0:	79448493          	addi	s1,s1,1940 # 8000ca70 <_ZN9Scheduler7runningE>
    800022e4:	00a4b023          	sd	a0,0(s1)
    running->init();
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	9a0080e7          	jalr	-1632(ra) # 80001c88 <_ZN7KThread4initEv>
    setupStartContext(running->getContext());
    800022f0:	0004b503          	ld	a0,0(s1)
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	a70080e7          	jalr	-1424(ra) # 80001d64 <_ZN7KThread10getContextEv>
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	e28080e7          	jalr	-472(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002304:	00200793          	li	a5,2
    80002308:	0000a717          	auipc	a4,0xa
    8000230c:	44f73423          	sd	a5,1096(a4) # 8000c750 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002310:	00001097          	auipc	ra,0x1
    80002314:	258080e7          	jalr	600(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    80002318:	18000593          	li	a1,384
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	2a8080e7          	jalr	680(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002324:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	960080e7          	jalr	-1696(ra) # 80001c88 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002330:	00000797          	auipc	a5,0x0
    80002334:	b5c78793          	addi	a5,a5,-1188 # 80001e8c <_ZL8idleBodyPv>
    80002338:	00f4b023          	sd	a5,0(s1)
    8000233c:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002340:	00001097          	auipc	ra,0x1
    80002344:	228080e7          	jalr	552(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    80002348:	000085b7          	lui	a1,0x8
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	278080e7          	jalr	632(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    80002354:	00008637          	lui	a2,0x8
    80002358:	00c50633          	add	a2,a0,a2
    8000235c:	00000593          	li	a1,0
    80002360:	00048513          	mv	a0,s1
    80002364:	00000097          	auipc	ra,0x0
    80002368:	adc080e7          	jalr	-1316(ra) # 80001e40 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    8000236c:	00048513          	mv	a0,s1
    80002370:	00000097          	auipc	ra,0x0
    80002374:	d1c080e7          	jalr	-740(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
}
    80002378:	01813083          	ld	ra,24(sp)
    8000237c:	01013403          	ld	s0,16(sp)
    80002380:	00813483          	ld	s1,8(sp)
    80002384:	02010113          	addi	sp,sp,32
    80002388:	00008067          	ret

000000008000238c <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00813423          	sd	s0,8(sp)
    80002394:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80002398:	03053783          	ld	a5,48(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    8000239c:	06f53c23          	sd	a5,120(a0)
}
    800023a0:	00813403          	ld	s0,8(sp)
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret

00000000800023ac <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    800023ac:	fd010113          	addi	sp,sp,-48
    800023b0:	02113423          	sd	ra,40(sp)
    800023b4:	02813023          	sd	s0,32(sp)
    800023b8:	00913c23          	sd	s1,24(sp)
    800023bc:	01213823          	sd	s2,16(sp)
    800023c0:	01313423          	sd	s3,8(sp)
    800023c4:	01413023          	sd	s4,0(sp)
    800023c8:	03010413          	addi	s0,sp,48
    800023cc:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    800023d0:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    800023d4:	0000a797          	auipc	a5,0xa
    800023d8:	6f47b783          	ld	a5,1780(a5) # 8000cac8 <_ZN9Scheduler10sleepQueueE>
    800023dc:	04078e63          	beqz	a5,80002438 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    800023e0:	0407b703          	ld	a4,64(a5)
    800023e4:	04070063          	beqz	a4,80002424 <_ZN9Scheduler9timerTickEP7KThread+0x78>
    800023e8:	fff70713          	addi	a4,a4,-1
    800023ec:	04e7b023          	sd	a4,64(a5)
    800023f0:	0340006f          	j	80002424 <_ZN9Scheduler9timerTickEP7KThread+0x78>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    800023f4:	00048513          	mv	a0,s1
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	988080e7          	jalr	-1656(ra) # 80001d80 <_ZN7KThread14getNextInQueueEv>
    80002400:	0000a797          	auipc	a5,0xa
    80002404:	6ca7b423          	sd	a0,1736(a5) # 8000cac8 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    80002408:	00000593          	li	a1,0
    8000240c:	00048513          	mv	a0,s1
    80002410:	00000097          	auipc	ra,0x0
    80002414:	9a8080e7          	jalr	-1624(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    80002418:	00048513          	mv	a0,s1
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	c70080e7          	jalr	-912(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80002424:	0000a497          	auipc	s1,0xa
    80002428:	6a44b483          	ld	s1,1700(s1) # 8000cac8 <_ZN9Scheduler10sleepQueueE>
    8000242c:	00048663          	beqz	s1,80002438 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
    80002430:	0404b783          	ld	a5,64(s1)
    80002434:	fc0780e3          	beqz	a5,800023f4 <_ZN9Scheduler9timerTickEP7KThread+0x48>
        }
    }

    if (current == nullptr) return;
    80002438:	12090e63          	beqz	s2,80002574 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    8000243c:	0000a797          	auipc	a5,0xa
    80002440:	3147b783          	ld	a5,788(a5) # 8000c750 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002444:	00078863          	beqz	a5,80002454 <_ZN9Scheduler9timerTickEP7KThread+0xa8>
    80002448:	fff78793          	addi	a5,a5,-1
    8000244c:	0000a717          	auipc	a4,0xa
    80002450:	30f73223          	sd	a5,772(a4) # 8000c750 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80002454:	0000a797          	auipc	a5,0xa
    80002458:	2fc7b783          	ld	a5,764(a5) # 8000c750 <_ZN9Scheduler21runningThreadTimeLeftE>
    8000245c:	10079c63          	bnez	a5,80002574 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (++agingTick >= 100) {
    80002460:	0000a717          	auipc	a4,0xa
    80002464:	61070713          	addi	a4,a4,1552 # 8000ca70 <_ZN9Scheduler7runningE>
    80002468:	06072783          	lw	a5,96(a4)
    8000246c:	0017879b          	addiw	a5,a5,1
    80002470:	0007869b          	sext.w	a3,a5
    80002474:	06f72023          	sw	a5,96(a4)
    80002478:	06300793          	li	a5,99
    8000247c:	0cd7d063          	bge	a5,a3,8000253c <_ZN9Scheduler9timerTickEP7KThread+0x190>
        agingTick = 0;
    80002480:	0000a797          	auipc	a5,0xa
    80002484:	6407a823          	sw	zero,1616(a5) # 8000cad0 <_ZN9Scheduler9agingTickE>
        for (int i = 1; i < LEVELS; i++) {
    80002488:	00100493          	li	s1,1
    8000248c:	0600006f          	j	800024ec <_ZN9Scheduler9timerTickEP7KThread+0x140>
            if (readyHead[i] == nullptr) continue;
            KThread* curr = readyHead[i];
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
            if (readyTail[0] != nullptr) {
    80002490:	0000a517          	auipc	a0,0xa
    80002494:	61053503          	ld	a0,1552(a0) # 8000caa0 <_ZN9Scheduler9readyTailE>
    80002498:	08050463          	beqz	a0,80002520 <_ZN9Scheduler9timerTickEP7KThread+0x174>
                readyTail[0]->setNextInQueue(readyHead[i]);
    8000249c:	0000aa17          	auipc	s4,0xa
    800024a0:	5d4a0a13          	addi	s4,s4,1492 # 8000ca70 <_ZN9Scheduler7runningE>
    800024a4:	00349993          	slli	s3,s1,0x3
    800024a8:	013a09b3          	add	s3,s4,s3
    800024ac:	0109b583          	ld	a1,16(s3)
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	908080e7          	jalr	-1784(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
                readyHead[i]->setPrevInQueue(readyTail[0]);
    800024b8:	030a3583          	ld	a1,48(s4)
    800024bc:	0109b503          	ld	a0,16(s3)
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	914080e7          	jalr	-1772(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
            } else {
                readyHead[0] = readyHead[i];
            }
            readyTail[0] = readyTail[i];
    800024c8:	0000a717          	auipc	a4,0xa
    800024cc:	5a870713          	addi	a4,a4,1448 # 8000ca70 <_ZN9Scheduler7runningE>
    800024d0:	00349793          	slli	a5,s1,0x3
    800024d4:	00f707b3          	add	a5,a4,a5
    800024d8:	0307b683          	ld	a3,48(a5)
    800024dc:	02d73823          	sd	a3,48(a4)
            readyHead[i] = readyTail[i] = nullptr;
    800024e0:	0207b823          	sd	zero,48(a5)
    800024e4:	0007b823          	sd	zero,16(a5)
        for (int i = 1; i < LEVELS; i++) {
    800024e8:	0014849b          	addiw	s1,s1,1
    800024ec:	00300793          	li	a5,3
    800024f0:	0497c663          	blt	a5,s1,8000253c <_ZN9Scheduler9timerTickEP7KThread+0x190>
            if (readyHead[i] == nullptr) continue;
    800024f4:	00349713          	slli	a4,s1,0x3
    800024f8:	0000a797          	auipc	a5,0xa
    800024fc:	57878793          	addi	a5,a5,1400 # 8000ca70 <_ZN9Scheduler7runningE>
    80002500:	00e787b3          	add	a5,a5,a4
    80002504:	0107b503          	ld	a0,16(a5)
    80002508:	fe0500e3          	beqz	a0,800024e8 <_ZN9Scheduler9timerTickEP7KThread+0x13c>
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
    8000250c:	f80502e3          	beqz	a0,80002490 <_ZN9Scheduler9timerTickEP7KThread+0xe4>
    80002510:	04050423          	sb	zero,72(a0)
    80002514:	00000097          	auipc	ra,0x0
    80002518:	86c080e7          	jalr	-1940(ra) # 80001d80 <_ZN7KThread14getNextInQueueEv>
    8000251c:	ff1ff06f          	j	8000250c <_ZN9Scheduler9timerTickEP7KThread+0x160>
                readyHead[0] = readyHead[i];
    80002520:	0000a717          	auipc	a4,0xa
    80002524:	55070713          	addi	a4,a4,1360 # 8000ca70 <_ZN9Scheduler7runningE>
    80002528:	00349793          	slli	a5,s1,0x3
    8000252c:	00f707b3          	add	a5,a4,a5
    80002530:	0107b783          	ld	a5,16(a5)
    80002534:	00f73823          	sd	a5,16(a4)
    80002538:	f91ff06f          	j	800024c8 <_ZN9Scheduler9timerTickEP7KThread+0x11c>
        }
    }

    KThread* next = GetNext();
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	a34080e7          	jalr	-1484(ra) # 80001f70 <_ZN9Scheduler7GetNextEv>
    80002544:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002548:	00200793          	li	a5,2
    8000254c:	0000a717          	auipc	a4,0xa
    80002550:	20f73223          	sd	a5,516(a4) # 8000c750 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002554:	02050063          	beqz	a0,80002574 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>
    PutPreempted(current);
    80002558:	00090513          	mv	a0,s2
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	ce4080e7          	jalr	-796(ra) # 80002240 <_ZN9Scheduler12PutPreemptedEP7KThread>
    yield(current, next);
    80002564:	00048593          	mv	a1,s1
    80002568:	00090513          	mv	a0,s2
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	95c080e7          	jalr	-1700(ra) # 80001ec8 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80002574:	02813083          	ld	ra,40(sp)
    80002578:	02013403          	ld	s0,32(sp)
    8000257c:	01813483          	ld	s1,24(sp)
    80002580:	01013903          	ld	s2,16(sp)
    80002584:	00813983          	ld	s3,8(sp)
    80002588:	00013a03          	ld	s4,0(sp)
    8000258c:	03010113          	addi	sp,sp,48
    80002590:	00008067          	ret

0000000080002594 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    80002594:	fd010113          	addi	sp,sp,-48
    80002598:	02113423          	sd	ra,40(sp)
    8000259c:	02813023          	sd	s0,32(sp)
    800025a0:	00913c23          	sd	s1,24(sp)
    800025a4:	01213823          	sd	s2,16(sp)
    800025a8:	01313423          	sd	s3,8(sp)
    800025ac:	01413023          	sd	s4,0(sp)
    800025b0:	03010413          	addi	s0,sp,48
    800025b4:	00050a13          	mv	s4,a0
    800025b8:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    800025bc:	0000a497          	auipc	s1,0xa
    800025c0:	50c4b483          	ld	s1,1292(s1) # 8000cac8 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    800025c4:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    800025c8:	02048463          	beqz	s1,800025f0 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    800025cc:	0404b783          	ld	a5,64(s1)
    800025d0:	02f96063          	bltu	s2,a5,800025f0 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    800025d4:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    800025d8:	00048513          	mv	a0,s1
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	7a4080e7          	jalr	1956(ra) # 80001d80 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    800025e4:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    800025e8:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    800025ec:	fddff06f          	j	800025c8 <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    800025f0:	052a3023          	sd	s2,64(s4)
    thread->setNextInQueue(current);
    800025f4:	00048593          	mv	a1,s1
    800025f8:	000a0513          	mv	a0,s4
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	7bc080e7          	jalr	1980(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    80002604:	04098263          	beqz	s3,80002648 <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    80002608:	000a0593          	mv	a1,s4
    8000260c:	00098513          	mv	a0,s3
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	7a8080e7          	jalr	1960(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    80002618:	00048863          	beqz	s1,80002628 <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    8000261c:	0404b583          	ld	a1,64(s1)
    80002620:	41258933          	sub	s2,a1,s2
    80002624:	0524b023          	sd	s2,64(s1)
}
    80002628:	02813083          	ld	ra,40(sp)
    8000262c:	02013403          	ld	s0,32(sp)
    80002630:	01813483          	ld	s1,24(sp)
    80002634:	01013903          	ld	s2,16(sp)
    80002638:	00813983          	ld	s3,8(sp)
    8000263c:	00013a03          	ld	s4,0(sp)
    80002640:	03010113          	addi	sp,sp,48
    80002644:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    80002648:	0000a797          	auipc	a5,0xa
    8000264c:	4947b023          	sd	s4,1152(a5) # 8000cac8 <_ZN9Scheduler10sleepQueueE>
    80002650:	fc9ff06f          	j	80002618 <_ZN9Scheduler5sleepEP7KThreadm+0x84>

0000000080002654 <_ZN9Scheduler10joinThreadEP7KThread>:

void Scheduler::joinThread(KThread* joiningThread) {
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00113423          	sd	ra,8(sp)
    8000265c:	00813023          	sd	s0,0(sp)
    80002660:	01010413          	addi	s0,sp,16
    80002664:	00050793          	mv	a5,a0
    joiningThread->waitingThread = joiningThread;
    80002668:	04a53823          	sd	a0,80(a0)
    running->stopperThread = joiningThread;
    8000266c:	0000a517          	auipc	a0,0xa
    80002670:	40453503          	ld	a0,1028(a0) # 8000ca70 <_ZN9Scheduler7runningE>
    80002674:	04f53c23          	sd	a5,88(a0)
    blockCurrent(running);
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	9c8080e7          	jalr	-1592(ra) # 80002040 <_ZN9Scheduler12blockCurrentEP7KThread>

    80002680:	00813083          	ld	ra,8(sp)
    80002684:	00013403          	ld	s0,0(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00113423          	sd	ra,8(sp)
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    800026a0:	0000a517          	auipc	a0,0xa
    800026a4:	43850513          	addi	a0,a0,1080 # 8000cad8 <_ZN7Konsole11outputItemsE>
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	050080e7          	jalr	80(ra) # 800016f8 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    800026b0:	0000a797          	auipc	a5,0xa
    800026b4:	3387b783          	ld	a5,824(a5) # 8000c9e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026b8:	0007b783          	ld	a5,0(a5)
    800026bc:	0007c783          	lbu	a5,0(a5)
    800026c0:	0ff7f793          	andi	a5,a5,255
    800026c4:	0207f793          	andi	a5,a5,32
    800026c8:	fe0784e3          	beqz	a5,800026b0 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    800026cc:	0000a717          	auipc	a4,0xa
    800026d0:	40c70713          	addi	a4,a4,1036 # 8000cad8 <_ZN7Konsole11outputItemsE>
    800026d4:	01872783          	lw	a5,24(a4)
    800026d8:	01c72703          	lw	a4,28(a4)
    800026dc:	fce782e3          	beq	a5,a4,800026a0 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    800026e0:	0000a697          	auipc	a3,0xa
    800026e4:	3f868693          	addi	a3,a3,1016 # 8000cad8 <_ZN7Konsole11outputItemsE>
    800026e8:	00f68733          	add	a4,a3,a5
    800026ec:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    800026f0:	0017879b          	addiw	a5,a5,1
    800026f4:	41f7d71b          	sraiw	a4,a5,0x1f
    800026f8:	0187571b          	srliw	a4,a4,0x18
    800026fc:	00e787bb          	addw	a5,a5,a4
    80002700:	0ff7f793          	andi	a5,a5,255
    80002704:	40e787bb          	subw	a5,a5,a4
    80002708:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    8000270c:	0000a797          	auipc	a5,0xa
    80002710:	2f47b783          	ld	a5,756(a5) # 8000ca00 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002714:	0007b783          	ld	a5,0(a5)
    80002718:	00c78023          	sb	a2,0(a5)
    8000271c:	f85ff06f          	j	800026a0 <_ZN7Konsole16outputThreadBodyEPv+0x10>

0000000080002720 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    80002720:	fe010113          	addi	sp,sp,-32
    80002724:	00113c23          	sd	ra,24(sp)
    80002728:	00813823          	sd	s0,16(sp)
    8000272c:	00913423          	sd	s1,8(sp)
    80002730:	02010413          	addi	s0,sp,32
    80002734:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80002738:	00000593          	li	a1,0
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	67c080e7          	jalr	1660(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    80002744:	0000a597          	auipc	a1,0xa
    80002748:	4b45b583          	ld	a1,1204(a1) # 8000cbf8 <_ZN7Konsole14getcWaiterTailE>
    8000274c:	04058063          	beqz	a1,8000278c <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    80002750:	00048513          	mv	a0,s1
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	680080e7          	jalr	1664(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    8000275c:	00048593          	mv	a1,s1
    80002760:	0000a517          	auipc	a0,0xa
    80002764:	49853503          	ld	a0,1176(a0) # 8000cbf8 <_ZN7Konsole14getcWaiterTailE>
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	650080e7          	jalr	1616(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    80002770:	0000a797          	auipc	a5,0xa
    80002774:	4897b423          	sd	s1,1160(a5) # 8000cbf8 <_ZN7Konsole14getcWaiterTailE>
}
    80002778:	01813083          	ld	ra,24(sp)
    8000277c:	01013403          	ld	s0,16(sp)
    80002780:	00813483          	ld	s1,8(sp)
    80002784:	02010113          	addi	sp,sp,32
    80002788:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    8000278c:	00000593          	li	a1,0
    80002790:	00048513          	mv	a0,s1
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	640080e7          	jalr	1600(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    8000279c:	0000a797          	auipc	a5,0xa
    800027a0:	4697b223          	sd	s1,1124(a5) # 8000cc00 <_ZN7Konsole14getcWaiterHeadE>
    800027a4:	fcdff06f          	j	80002770 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

00000000800027a8 <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    800027a8:	fe010113          	addi	sp,sp,-32
    800027ac:	00113c23          	sd	ra,24(sp)
    800027b0:	00813823          	sd	s0,16(sp)
    800027b4:	00913423          	sd	s1,8(sp)
    800027b8:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    800027bc:	0000a497          	auipc	s1,0xa
    800027c0:	4444b483          	ld	s1,1092(s1) # 8000cc00 <_ZN7Konsole14getcWaiterHeadE>
    800027c4:	04048463          	beqz	s1,8000280c <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    800027c8:	00048513          	mv	a0,s1
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	5b4080e7          	jalr	1460(ra) # 80001d80 <_ZN7KThread14getNextInQueueEv>
    800027d4:	0000a797          	auipc	a5,0xa
    800027d8:	42a7b623          	sd	a0,1068(a5) # 8000cc00 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    800027dc:	04050463          	beqz	a0,80002824 <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    800027e0:	00000593          	li	a1,0
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	5f0080e7          	jalr	1520(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    800027ec:	00000593          	li	a1,0
    800027f0:	00048513          	mv	a0,s1
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	5c4080e7          	jalr	1476(ra) # 80001db8 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800027fc:	00000593          	li	a1,0
    80002800:	00048513          	mv	a0,s1
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	5d0080e7          	jalr	1488(ra) # 80001dd4 <_ZN7KThread14setPrevInQueueEPS_>
}
    8000280c:	00048513          	mv	a0,s1
    80002810:	01813083          	ld	ra,24(sp)
    80002814:	01013403          	ld	s0,16(sp)
    80002818:	00813483          	ld	s1,8(sp)
    8000281c:	02010113          	addi	sp,sp,32
    80002820:	00008067          	ret
    else getcWaiterTail = nullptr;
    80002824:	0000a797          	auipc	a5,0xa
    80002828:	3c07ba23          	sd	zero,980(a5) # 8000cbf8 <_ZN7Konsole14getcWaiterTailE>
    8000282c:	fc1ff06f          	j	800027ec <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

0000000080002830 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    80002830:	fe010113          	addi	sp,sp,-32
    80002834:	00113c23          	sd	ra,24(sp)
    80002838:	00813823          	sd	s0,16(sp)
    8000283c:	00913423          	sd	s1,8(sp)
    80002840:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    80002844:	0000a517          	auipc	a0,0xa
    80002848:	29450513          	addi	a0,a0,660 # 8000cad8 <_ZN7Konsole11outputItemsE>
    8000284c:	12052823          	sw	zero,304(a0)
    80002850:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    80002854:	00052c23          	sw	zero,24(a0)
    80002858:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    8000285c:	12053423          	sd	zero,296(a0)
    80002860:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    80002864:	00000593          	li	a1,0
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	05c080e7          	jalr	92(ra) # 800018c4 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002870:	00001097          	auipc	ra,0x1
    80002874:	cf8080e7          	jalr	-776(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    80002878:	18000593          	li	a1,384
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	d48080e7          	jalr	-696(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002884:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	400080e7          	jalr	1024(ra) # 80001c88 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002890:	00000797          	auipc	a5,0x0
    80002894:	e0078793          	addi	a5,a5,-512 # 80002690 <_ZN7Konsole16outputThreadBodyEPv>
    80002898:	00f4b023          	sd	a5,0(s1)
    8000289c:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	cc8080e7          	jalr	-824(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    800028a8:	000085b7          	lui	a1,0x8
    800028ac:	00001097          	auipc	ra,0x1
    800028b0:	d18080e7          	jalr	-744(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    800028b4:	00008637          	lui	a2,0x8
    800028b8:	00c50633          	add	a2,a0,a2
    800028bc:	00000593          	li	a1,0
    800028c0:	00048513          	mv	a0,s1
    800028c4:	fffff097          	auipc	ra,0xfffff
    800028c8:	57c080e7          	jalr	1404(ra) # 80001e40 <_ZN7KThread5setupEPS_Pm>
    outputThread->threadContext.sstatus |= (1UL << 8);
    800028cc:	1704b783          	ld	a5,368(s1)
    800028d0:	1007e793          	ori	a5,a5,256
    800028d4:	16f4b823          	sd	a5,368(s1)
    Scheduler::Put(outputThread);
    800028d8:	00048513          	mv	a0,s1
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	7b0080e7          	jalr	1968(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
}
    800028e4:	01813083          	ld	ra,24(sp)
    800028e8:	01013403          	ld	s0,16(sp)
    800028ec:	00813483          	ld	s1,8(sp)
    800028f0:	02010113          	addi	sp,sp,32
    800028f4:	00008067          	ret

00000000800028f8 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    800028f8:	fe010113          	addi	sp,sp,-32
    800028fc:	00113c23          	sd	ra,24(sp)
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	01213023          	sd	s2,0(sp)
    8000290c:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    80002910:	00005097          	auipc	ra,0x5
    80002914:	174080e7          	jalr	372(ra) # 80007a84 <plic_claim>
    80002918:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    8000291c:	00a00793          	li	a5,10
    80002920:	02f50663          	beq	a0,a5,8000294c <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    80002924:	0a049463          	bnez	s1,800029cc <_ZN7Konsole15handleInterruptEv+0xd4>
}
    80002928:	01813083          	ld	ra,24(sp)
    8000292c:	01013403          	ld	s0,16(sp)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	00013903          	ld	s2,0(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    80002940:	0b253c23          	sd	s2,184(a0)
                Scheduler::Put(waiter);
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	748080e7          	jalr	1864(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    8000294c:	0000a797          	auipc	a5,0xa
    80002950:	09c7b783          	ld	a5,156(a5) # 8000c9e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002954:	0007b783          	ld	a5,0(a5)
    80002958:	0007c783          	lbu	a5,0(a5)
    8000295c:	0017f793          	andi	a5,a5,1
    80002960:	fc0782e3          	beqz	a5,80002924 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    80002964:	0000a797          	auipc	a5,0xa
    80002968:	07c7b783          	ld	a5,124(a5) # 8000c9e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000296c:	0007b783          	ld	a5,0(a5)
    80002970:	0007c783          	lbu	a5,0(a5)
    80002974:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	e30080e7          	jalr	-464(ra) # 800027a8 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    80002980:	fc0510e3          	bnez	a0,80002940 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    80002984:	0000a617          	auipc	a2,0xa
    80002988:	15460613          	addi	a2,a2,340 # 8000cad8 <_ZN7Konsole11outputItemsE>
    8000298c:	13462683          	lw	a3,308(a2)
    80002990:	0016879b          	addiw	a5,a3,1
    80002994:	41f7d71b          	sraiw	a4,a5,0x1f
    80002998:	0187571b          	srliw	a4,a4,0x18
    8000299c:	00e787bb          	addw	a5,a5,a4
    800029a0:	0ff7f793          	andi	a5,a5,255
    800029a4:	40e787bb          	subw	a5,a5,a4
    800029a8:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    800029ac:	13062603          	lw	a2,304(a2)
    800029b0:	f8e60ee3          	beq	a2,a4,8000294c <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    800029b4:	0000a717          	auipc	a4,0xa
    800029b8:	12470713          	addi	a4,a4,292 # 8000cad8 <_ZN7Konsole11outputItemsE>
    800029bc:	00d706b3          	add	a3,a4,a3
    800029c0:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    800029c4:	12f72a23          	sw	a5,308(a4)
    800029c8:	f85ff06f          	j	8000294c <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    800029cc:	00048513          	mv	a0,s1
    800029d0:	00005097          	auipc	ra,0x5
    800029d4:	0ec080e7          	jalr	236(ra) # 80007abc <plic_complete>
}
    800029d8:	f51ff06f          	j	80002928 <_ZN7Konsole15handleInterruptEv+0x30>

00000000800029dc <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    800029dc:	fe010113          	addi	sp,sp,-32
    800029e0:	00113c23          	sd	ra,24(sp)
    800029e4:	00813823          	sd	s0,16(sp)
    800029e8:	00913423          	sd	s1,8(sp)
    800029ec:	02010413          	addi	s0,sp,32
    800029f0:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    800029f4:	0000a617          	auipc	a2,0xa
    800029f8:	0e460613          	addi	a2,a2,228 # 8000cad8 <_ZN7Konsole11outputItemsE>
    800029fc:	01c62683          	lw	a3,28(a2)
    80002a00:	0016879b          	addiw	a5,a3,1
    80002a04:	41f7d71b          	sraiw	a4,a5,0x1f
    80002a08:	0187571b          	srliw	a4,a4,0x18
    80002a0c:	00e787bb          	addw	a5,a5,a4
    80002a10:	0ff7f793          	andi	a5,a5,255
    80002a14:	40e787bb          	subw	a5,a5,a4
    80002a18:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    80002a1c:	01862603          	lw	a2,24(a2)
    80002a20:	04e60063          	beq	a2,a4,80002a60 <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    80002a24:	0000a517          	auipc	a0,0xa
    80002a28:	0b450513          	addi	a0,a0,180 # 8000cad8 <_ZN7Konsole11outputItemsE>
    80002a2c:	00d506b3          	add	a3,a0,a3
    80002a30:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    80002a34:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	024080e7          	jalr	36(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    80002a40:	02048a63          	beqz	s1,80002a74 <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    80002a44:	0a04bc23          	sd	zero,184(s1)
    return 0;
    80002a48:	00000513          	li	a0,0
}
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	02010113          	addi	sp,sp,32
    80002a5c:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    80002a60:	00050663          	beqz	a0,80002a6c <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    80002a64:	fff00793          	li	a5,-1
    80002a68:	0af53c23          	sd	a5,184(a0)
        return -1;
    80002a6c:	fff00513          	li	a0,-1
    80002a70:	fddff06f          	j	80002a4c <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    80002a74:	00000513          	li	a0,0
    80002a78:	fd5ff06f          	j	80002a4c <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

0000000080002a7c <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    80002a7c:	0000a717          	auipc	a4,0xa
    80002a80:	05c70713          	addi	a4,a4,92 # 8000cad8 <_ZN7Konsole11outputItemsE>
    80002a84:	13072783          	lw	a5,304(a4)
    80002a88:	13472703          	lw	a4,308(a4)
    80002a8c:	04e78063          	beq	a5,a4,80002acc <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    80002a90:	0000a617          	auipc	a2,0xa
    80002a94:	04860613          	addi	a2,a2,72 # 8000cad8 <_ZN7Konsole11outputItemsE>
    80002a98:	00f60733          	add	a4,a2,a5
    80002a9c:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    80002aa0:	0017879b          	addiw	a5,a5,1
    80002aa4:	41f7d71b          	sraiw	a4,a5,0x1f
    80002aa8:	0187571b          	srliw	a4,a4,0x18
    80002aac:	00e787bb          	addw	a5,a5,a4
    80002ab0:	0ff7f793          	andi	a5,a5,255
    80002ab4:	40e787bb          	subw	a5,a5,a4
    80002ab8:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002abc:	00050463          	beqz	a0,80002ac4 <_ZN7Konsole10getcKernelEP7KThread+0x48>
    80002ac0:	0ad53c23          	sd	a3,184(a0)
        return (unsigned char)c;
    80002ac4:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002ac8:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00113423          	sd	ra,8(sp)
    80002ad4:	00813023          	sd	s0,0(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	c44080e7          	jalr	-956(ra) # 80002720 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    80002ae4:	ffe00513          	li	a0,-2
    80002ae8:	00813083          	ld	ra,8(sp)
    80002aec:	00013403          	ld	s0,0(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <userMainK>:
#define USE_CPP_TEST
void userMain();
void myUserMain();

extern "C" void userMainCpp(void);
extern "C" void userMainK(void) {
    80002af8:	ff010113          	addi	sp,sp,-16
    80002afc:	00113423          	sd	ra,8(sp)
    80002b00:	00813023          	sd	s0,0(sp)
    80002b04:	01010413          	addi	s0,sp,16
    const bool mytests=true;
    if (!mytests) {
        userMain();
    }
    myUserMain();
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	57c080e7          	jalr	1404(ra) # 80003084 <_Z10myUserMainv>
}
    80002b10:	00813083          	ld	ra,8(sp)
    80002b14:	00013403          	ld	s0,0(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00113423          	sd	ra,8(sp)
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    80002b30:	03e00513          	li	a0,62
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	934080e7          	jalr	-1740(ra) # 80003468 <_ZN7Console4putcEc>
    80002b3c:	00c0006f          	j	80002b48 <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	928080e7          	jalr	-1752(ra) # 80003468 <_ZN7Console4putcEc>
        char c = Console::getc();
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	8f8080e7          	jalr	-1800(ra) # 80003440 <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002b50:	00d00793          	li	a5,13
    80002b54:	fef50ae3          	beq	a0,a5,80002b48 <_ZL8echoFuncPv+0x28>
    80002b58:	fe9ff06f          	j	80002b40 <_ZL8echoFuncPv+0x20>

0000000080002b5c <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    80002b5c:	fb010113          	addi	sp,sp,-80
    80002b60:	04113423          	sd	ra,72(sp)
    80002b64:	04813023          	sd	s0,64(sp)
    80002b68:	02913c23          	sd	s1,56(sp)
    80002b6c:	03213823          	sd	s2,48(sp)
    80002b70:	03313423          	sd	s3,40(sp)
    80002b74:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    80002b78:	00400513          	li	a0,4
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	9d8080e7          	jalr	-1576(ra) # 80001554 <mem_alloc>
    80002b84:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    80002b88:	04300793          	li	a5,67
    80002b8c:	00f50023          	sb	a5,0(a0)
    80002b90:	02b00793          	li	a5,43
    80002b94:	00f500a3          	sb	a5,1(a0)
    80002b98:	00f50123          	sb	a5,2(a0)
    80002b9c:	00a00793          	li	a5,10
    80002ba0:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    80002ba4:	04300513          	li	a0,67
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	8c0080e7          	jalr	-1856(ra) # 80003468 <_ZN7Console4putcEc>
    80002bb0:	0014c503          	lbu	a0,1(s1)
    80002bb4:	00001097          	auipc	ra,0x1
    80002bb8:	8b4080e7          	jalr	-1868(ra) # 80003468 <_ZN7Console4putcEc>
    80002bbc:	0024c503          	lbu	a0,2(s1)
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	8a8080e7          	jalr	-1880(ra) # 80003468 <_ZN7Console4putcEc>
    80002bc8:	0034c503          	lbu	a0,3(s1)
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	89c080e7          	jalr	-1892(ra) # 80003468 <_ZN7Console4putcEc>
    mem_free(buf);
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	9a8080e7          	jalr	-1624(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002be0:	00100593          	li	a1,1
    80002be4:	fc040513          	addi	a0,s0,-64
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	75c080e7          	jalr	1884(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    80002bf0:	00000593          	li	a1,0
    80002bf4:	fb040513          	addi	a0,s0,-80
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	74c080e7          	jalr	1868(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002c00:	03800513          	li	a0,56
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	584080e7          	jalr	1412(ra) # 80003188 <_Znwm>
    80002c0c:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	660080e7          	jalr	1632(ra) # 80003270 <_ZN6ThreadC1Ev>
    80002c18:	0000a797          	auipc	a5,0xa
    80002c1c:	b5078793          	addi	a5,a5,-1200 # 8000c768 <_ZTV6Worker+0x10>
    80002c20:	00f9b023          	sd	a5,0(s3)
    80002c24:	04100793          	li	a5,65
    80002c28:	02f98023          	sb	a5,32(s3)
    80002c2c:	fc040793          	addi	a5,s0,-64
    80002c30:	02f9b423          	sd	a5,40(s3)
    80002c34:	fb040793          	addi	a5,s0,-80
    80002c38:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    80002c3c:	03800513          	li	a0,56
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	548080e7          	jalr	1352(ra) # 80003188 <_Znwm>
    80002c48:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	624080e7          	jalr	1572(ra) # 80003270 <_ZN6ThreadC1Ev>
    80002c54:	0000a797          	auipc	a5,0xa
    80002c58:	b1478793          	addi	a5,a5,-1260 # 8000c768 <_ZTV6Worker+0x10>
    80002c5c:	00f93023          	sd	a5,0(s2)
    80002c60:	04200793          	li	a5,66
    80002c64:	02f90023          	sb	a5,32(s2)
    80002c68:	fc040793          	addi	a5,s0,-64
    80002c6c:	02f93423          	sd	a5,40(s2)
    80002c70:	fb040793          	addi	a5,s0,-80
    80002c74:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    80002c78:	03800513          	li	a0,56
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	50c080e7          	jalr	1292(ra) # 80003188 <_Znwm>
    80002c84:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	5e8080e7          	jalr	1512(ra) # 80003270 <_ZN6ThreadC1Ev>
    80002c90:	0000a797          	auipc	a5,0xa
    80002c94:	ad878793          	addi	a5,a5,-1320 # 8000c768 <_ZTV6Worker+0x10>
    80002c98:	00f4b023          	sd	a5,0(s1)
    80002c9c:	04300793          	li	a5,67
    80002ca0:	02f48023          	sb	a5,32(s1)
    80002ca4:	fc040793          	addi	a5,s0,-64
    80002ca8:	02f4b423          	sd	a5,40(s1)
    80002cac:	fb040793          	addi	a5,s0,-80
    80002cb0:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    80002cb4:	00098513          	mv	a0,s3
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	5e8080e7          	jalr	1512(ra) # 800032a0 <_ZN6Thread5startEv>
    80002cc0:	00090513          	mv	a0,s2
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	5dc080e7          	jalr	1500(ra) # 800032a0 <_ZN6Thread5startEv>
    80002ccc:	00048513          	mv	a0,s1
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	5d0080e7          	jalr	1488(ra) # 800032a0 <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002cd8:	fb040513          	addi	a0,s0,-80
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	6a0080e7          	jalr	1696(ra) # 8000337c <_ZN9Semaphore4waitEv>
    80002ce4:	fb040513          	addi	a0,s0,-80
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	694080e7          	jalr	1684(ra) # 8000337c <_ZN9Semaphore4waitEv>
    80002cf0:	fb040513          	addi	a0,s0,-80
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	688080e7          	jalr	1672(ra) # 8000337c <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002cfc:	00098a63          	beqz	s3,80002d10 <userMainCpp+0x1b4>
    80002d00:	0009b783          	ld	a5,0(s3)
    80002d04:	0087b783          	ld	a5,8(a5)
    80002d08:	00098513          	mv	a0,s3
    80002d0c:	000780e7          	jalr	a5
    80002d10:	00090a63          	beqz	s2,80002d24 <userMainCpp+0x1c8>
    80002d14:	00093783          	ld	a5,0(s2)
    80002d18:	0087b783          	ld	a5,8(a5)
    80002d1c:	00090513          	mv	a0,s2
    80002d20:	000780e7          	jalr	a5
    80002d24:	00048a63          	beqz	s1,80002d38 <userMainCpp+0x1dc>
    80002d28:	0004b783          	ld	a5,0(s1)
    80002d2c:	0087b783          	ld	a5,8(a5)
    80002d30:	00048513          	mv	a0,s1
    80002d34:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002d38:	00a00513          	li	a0,10
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	72c080e7          	jalr	1836(ra) # 80003468 <_ZN7Console4putcEc>
    80002d44:	04f00513          	li	a0,79
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	720080e7          	jalr	1824(ra) # 80003468 <_ZN7Console4putcEc>
    80002d50:	04b00513          	li	a0,75
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	714080e7          	jalr	1812(ra) # 80003468 <_ZN7Console4putcEc>
    80002d5c:	00a00513          	li	a0,10
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	708080e7          	jalr	1800(ra) # 80003468 <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    80002d68:	02800513          	li	a0,40
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	41c080e7          	jalr	1052(ra) # 80003188 <_Znwm>
    80002d74:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002d78:	00300593          	li	a1,3
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	658080e7          	jalr	1624(ra) # 800033d4 <_ZN14PeriodicThreadC1Em>
    80002d84:	0000a797          	auipc	a5,0xa
    80002d88:	a0c78793          	addi	a5,a5,-1524 # 8000c790 <_ZTV6Ticker+0x10>
    80002d8c:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002d90:	00048513          	mv	a0,s1
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	50c080e7          	jalr	1292(ra) # 800032a0 <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002d9c:	00f00513          	li	a0,15
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	57c080e7          	jalr	1404(ra) # 8000331c <_ZN6Thread5sleepEm>
    t->terminate();
    80002da8:	00048513          	mv	a0,s1
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	678080e7          	jalr	1656(ra) # 80003424 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002db4:	00500513          	li	a0,5
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	564080e7          	jalr	1380(ra) # 8000331c <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002dc0:	00a00513          	li	a0,10
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	6a4080e7          	jalr	1700(ra) # 80003468 <_ZN7Console4putcEc>
    delete t;
    80002dcc:	00048a63          	beqz	s1,80002de0 <userMainCpp+0x284>
    80002dd0:	0004b783          	ld	a5,0(s1)
    80002dd4:	0087b783          	ld	a5,8(a5)
    80002dd8:	00048513          	mv	a0,s1
    80002ddc:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002de0:	02000513          	li	a0,32
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	3a4080e7          	jalr	932(ra) # 80003188 <_Znwm>
    80002dec:	00050493          	mv	s1,a0
    80002df0:	00000613          	li	a2,0
    80002df4:	00000597          	auipc	a1,0x0
    80002df8:	d2c58593          	addi	a1,a1,-724 # 80002b20 <_ZL8echoFuncPv>
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	444080e7          	jalr	1092(ra) # 80003240 <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002e04:	00048513          	mv	a0,s1
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	498080e7          	jalr	1176(ra) # 800032a0 <_ZN6Thread5startEv>
    while (true) {}
    80002e10:	0000006f          	j	80002e10 <userMainCpp+0x2b4>
    80002e14:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002e18:	00098513          	mv	a0,s3
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	394080e7          	jalr	916(ra) # 800031b0 <_ZdlPv>
    Semaphore mx(1), done(0);
    80002e24:	fb040513          	addi	a0,s0,-80
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	328080e7          	jalr	808(ra) # 80003150 <_ZN9SemaphoreD1Ev>
    80002e30:	fc040513          	addi	a0,s0,-64
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	31c080e7          	jalr	796(ra) # 80003150 <_ZN9SemaphoreD1Ev>
    80002e3c:	00048513          	mv	a0,s1
    80002e40:	0000b097          	auipc	ra,0xb
    80002e44:	ff8080e7          	jalr	-8(ra) # 8000de38 <_Unwind_Resume>
    80002e48:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002e4c:	00090513          	mv	a0,s2
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	360080e7          	jalr	864(ra) # 800031b0 <_ZdlPv>
    80002e58:	fcdff06f          	j	80002e24 <userMainCpp+0x2c8>
    80002e5c:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002e60:	00048513          	mv	a0,s1
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	34c080e7          	jalr	844(ra) # 800031b0 <_ZdlPv>
    80002e6c:	00090493          	mv	s1,s2
    80002e70:	fb5ff06f          	j	80002e24 <userMainCpp+0x2c8>
    80002e74:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002e78:	00048513          	mv	a0,s1
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	334080e7          	jalr	820(ra) # 800031b0 <_ZdlPv>
    80002e84:	00090493          	mv	s1,s2
    80002e88:	f9dff06f          	j	80002e24 <userMainCpp+0x2c8>
    80002e8c:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002e90:	00048513          	mv	a0,s1
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	31c080e7          	jalr	796(ra) # 800031b0 <_ZdlPv>
    80002e9c:	00090493          	mv	s1,s2
    80002ea0:	f85ff06f          	j	80002e24 <userMainCpp+0x2c8>
    80002ea4:	00050493          	mv	s1,a0
    80002ea8:	f7dff06f          	j	80002e24 <userMainCpp+0x2c8>
    80002eac:	00050493          	mv	s1,a0
    80002eb0:	f81ff06f          	j	80002e30 <userMainCpp+0x2d4>

0000000080002eb4 <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002eb4:	ff010113          	addi	sp,sp,-16
    80002eb8:	00113423          	sd	ra,8(sp)
    80002ebc:	00813023          	sd	s0,0(sp)
    80002ec0:	01010413          	addi	s0,sp,16
    80002ec4:	02e00513          	li	a0,46
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	5a0080e7          	jalr	1440(ra) # 80003468 <_ZN7Console4putcEc>
    80002ed0:	00813083          	ld	ra,8(sp)
    80002ed4:	00013403          	ld	s0,0(sp)
    80002ed8:	01010113          	addi	sp,sp,16
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN6Worker3runEv>:
    void run() override {
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00913423          	sd	s1,8(sp)
    80002ef0:	01213023          	sd	s2,0(sp)
    80002ef4:	02010413          	addi	s0,sp,32
    80002ef8:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002efc:	00000913          	li	s2,0
    80002f00:	0500006f          	j	80002f50 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002f04:	0284b503          	ld	a0,40(s1)
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	474080e7          	jalr	1140(ra) # 8000337c <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002f10:	05b00513          	li	a0,91
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	554080e7          	jalr	1364(ra) # 80003468 <_ZN7Console4putcEc>
    80002f1c:	0204c503          	lbu	a0,32(s1)
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	548080e7          	jalr	1352(ra) # 80003468 <_ZN7Console4putcEc>
    80002f28:	05d00513          	li	a0,93
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	53c080e7          	jalr	1340(ra) # 80003468 <_ZN7Console4putcEc>
            mx->signal();
    80002f34:	0284b503          	ld	a0,40(s1)
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	470080e7          	jalr	1136(ra) # 800033a8 <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002f40:	00200513          	li	a0,2
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	3d8080e7          	jalr	984(ra) # 8000331c <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002f4c:	0019091b          	addiw	s2,s2,1
    80002f50:	00200793          	li	a5,2
    80002f54:	fb27d8e3          	bge	a5,s2,80002f04 <_ZN6Worker3runEv+0x24>
        done->signal();
    80002f58:	0304b503          	ld	a0,48(s1)
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	44c080e7          	jalr	1100(ra) # 800033a8 <_ZN9Semaphore6signalEv>
    }
    80002f64:	01813083          	ld	ra,24(sp)
    80002f68:	01013403          	ld	s0,16(sp)
    80002f6c:	00813483          	ld	s1,8(sp)
    80002f70:	00013903          	ld	s2,0(sp)
    80002f74:	02010113          	addi	sp,sp,32
    80002f78:	00008067          	ret

0000000080002f7c <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002f7c:	ff010113          	addi	sp,sp,-16
    80002f80:	00113423          	sd	ra,8(sp)
    80002f84:	00813023          	sd	s0,0(sp)
    80002f88:	01010413          	addi	s0,sp,16
    80002f8c:	00009797          	auipc	a5,0x9
    80002f90:	7dc78793          	addi	a5,a5,2012 # 8000c768 <_ZTV6Worker+0x10>
    80002f94:	00f53023          	sd	a5,0(a0)
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	120080e7          	jalr	288(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80002fa0:	00813083          	ld	ra,8(sp)
    80002fa4:	00013403          	ld	s0,0(sp)
    80002fa8:	01010113          	addi	sp,sp,16
    80002fac:	00008067          	ret

0000000080002fb0 <_ZN6WorkerD0Ev>:
    80002fb0:	fe010113          	addi	sp,sp,-32
    80002fb4:	00113c23          	sd	ra,24(sp)
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00913423          	sd	s1,8(sp)
    80002fc0:	02010413          	addi	s0,sp,32
    80002fc4:	00050493          	mv	s1,a0
    80002fc8:	00009797          	auipc	a5,0x9
    80002fcc:	7a078793          	addi	a5,a5,1952 # 8000c768 <_ZTV6Worker+0x10>
    80002fd0:	00f53023          	sd	a5,0(a0)
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	0e4080e7          	jalr	228(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	1d0080e7          	jalr	464(ra) # 800031b0 <_ZdlPv>
    80002fe8:	01813083          	ld	ra,24(sp)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	02010113          	addi	sp,sp,32
    80002ff8:	00008067          	ret

0000000080002ffc <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	00813023          	sd	s0,0(sp)
    80003008:	01010413          	addi	s0,sp,16
    int signal();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    8000300c:	0000a797          	auipc	a5,0xa
    80003010:	9ec7b783          	ld	a5,-1556(a5) # 8000c9f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003014:	01078793          	addi	a5,a5,16
    80003018:	00f53023          	sd	a5,0(a0)
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	09c080e7          	jalr	156(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <_ZN6TickerD0Ev>:
    80003034:	fe010113          	addi	sp,sp,-32
    80003038:	00113c23          	sd	ra,24(sp)
    8000303c:	00813823          	sd	s0,16(sp)
    80003040:	00913423          	sd	s1,8(sp)
    80003044:	02010413          	addi	s0,sp,32
    80003048:	00050493          	mv	s1,a0
    8000304c:	0000a797          	auipc	a5,0xa
    80003050:	9ac7b783          	ld	a5,-1620(a5) # 8000c9f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003054:	01078793          	addi	a5,a5,16
    80003058:	00f53023          	sd	a5,0(a0)
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	05c080e7          	jalr	92(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80003064:	00048513          	mv	a0,s1
    80003068:	00000097          	auipc	ra,0x0
    8000306c:	148080e7          	jalr	328(ra) # 800031b0 <_ZdlPv>
    80003070:	01813083          	ld	ra,24(sp)
    80003074:	01013403          	ld	s0,16(sp)
    80003078:	00813483          	ld	s1,8(sp)
    8000307c:	02010113          	addi	sp,sp,32
    80003080:	00008067          	ret

0000000080003084 <_Z10myUserMainv>:
//
// Created by os on 6/27/26.
//
#include "../syscall_cpp.hpp"
void myUserMain() {
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00113423          	sd	ra,8(sp)
    8000308c:	00813023          	sd	s0,0(sp)
    80003090:	01010413          	addi	s0,sp,16
    getc();
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	6ec080e7          	jalr	1772(ra) # 80001780 <getc>
    putc('t');
    8000309c:	07400513          	li	a0,116
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	704080e7          	jalr	1796(ra) # 800017a4 <putc>
    800030a8:	00813083          	ld	ra,8(sp)
    800030ac:	00013403          	ld	s0,0(sp)
    800030b0:	01010113          	addi	sp,sp,16
    800030b4:	00008067          	ret

00000000800030b8 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    800030b8:	ff010113          	addi	sp,sp,-16
    800030bc:	00813423          	sd	s0,8(sp)
    800030c0:	01010413          	addi	s0,sp,16
    800030c4:	00813403          	ld	s0,8(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret

00000000800030d0 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    800030d0:	ff010113          	addi	sp,sp,-16
    800030d4:	00113423          	sd	ra,8(sp)
    800030d8:	00813023          	sd	s0,0(sp)
    800030dc:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    800030e0:	00053783          	ld	a5,0(a0)
    800030e4:	0107b783          	ld	a5,16(a5)
    800030e8:	000780e7          	jalr	a5
}
    800030ec:	00813083          	ld	ra,8(sp)
    800030f0:	00013403          	ld	s0,0(sp)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret

00000000800030fc <_ZN14PeriodicThread3runEv>:
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	02010413          	addi	s0,sp,32
    80003110:	00050493          	mv	s1,a0
    while (period) {
    80003114:	0204b783          	ld	a5,32(s1)
    80003118:	02078263          	beqz	a5,8000313c <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    8000311c:	0004b783          	ld	a5,0(s1)
    80003120:	0187b783          	ld	a5,24(a5)
    80003124:	00048513          	mv	a0,s1
    80003128:	000780e7          	jalr	a5
        time_sleep(period);
    8000312c:	0204b503          	ld	a0,32(s1)
    80003130:	ffffe097          	auipc	ra,0xffffe
    80003134:	540080e7          	jalr	1344(ra) # 80001670 <time_sleep>
    while (period) {
    80003138:	fddff06f          	j	80003114 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    8000313c:	01813083          	ld	ra,24(sp)
    80003140:	01013403          	ld	s0,16(sp)
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	02010113          	addi	sp,sp,32
    8000314c:	00008067          	ret

0000000080003150 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80003150:	ff010113          	addi	sp,sp,-16
    80003154:	00113423          	sd	ra,8(sp)
    80003158:	00813023          	sd	s0,0(sp)
    8000315c:	01010413          	addi	s0,sp,16
    80003160:	00009797          	auipc	a5,0x9
    80003164:	69078793          	addi	a5,a5,1680 # 8000c7f0 <_ZTV9Semaphore+0x10>
    80003168:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000316c:	00853503          	ld	a0,8(a0)
    80003170:	ffffe097          	auipc	ra,0xffffe
    80003174:	560080e7          	jalr	1376(ra) # 800016d0 <sem_close>
}
    80003178:	00813083          	ld	ra,8(sp)
    8000317c:	00013403          	ld	s0,0(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <_Znwm>:
void* operator new(size_t size) {
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00113423          	sd	ra,8(sp)
    80003190:	00813023          	sd	s0,0(sp)
    80003194:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80003198:	ffffe097          	auipc	ra,0xffffe
    8000319c:	3bc080e7          	jalr	956(ra) # 80001554 <mem_alloc>
    800031a0:	00813083          	ld	ra,8(sp)
    800031a4:	00013403          	ld	s0,0(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <_ZdlPv>:
void  operator delete(void* p)  {
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00113423          	sd	ra,8(sp)
    800031b8:	00813023          	sd	s0,0(sp)
    800031bc:	01010413          	addi	s0,sp,16
    mem_free(p); }
    800031c0:	ffffe097          	auipc	ra,0xffffe
    800031c4:	3c0080e7          	jalr	960(ra) # 80001580 <mem_free>
    800031c8:	00813083          	ld	ra,8(sp)
    800031cc:	00013403          	ld	s0,0(sp)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret

00000000800031d8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00113423          	sd	ra,8(sp)
    800031e0:	00813023          	sd	s0,0(sp)
    800031e4:	01010413          	addi	s0,sp,16
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	fc8080e7          	jalr	-56(ra) # 800031b0 <_ZdlPv>
    800031f0:	00813083          	ld	ra,8(sp)
    800031f4:	00013403          	ld	s0,0(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret

0000000080003200 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00813823          	sd	s0,16(sp)
    8000320c:	00913423          	sd	s1,8(sp)
    80003210:	02010413          	addi	s0,sp,32
    80003214:	00050493          	mv	s1,a0
}
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	f38080e7          	jalr	-200(ra) # 80003150 <_ZN9SemaphoreD1Ev>
    80003220:	00048513          	mv	a0,s1
    80003224:	00000097          	auipc	ra,0x0
    80003228:	f8c080e7          	jalr	-116(ra) # 800031b0 <_ZdlPv>
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	02010113          	addi	sp,sp,32
    8000323c:	00008067          	ret

0000000080003240 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    80003240:	ff010113          	addi	sp,sp,-16
    80003244:	00813423          	sd	s0,8(sp)
    80003248:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    8000324c:	00009797          	auipc	a5,0x9
    80003250:	57c78793          	addi	a5,a5,1404 # 8000c7c8 <_ZTV6Thread+0x10>
    80003254:	00f53023          	sd	a5,0(a0)
    80003258:	00053423          	sd	zero,8(a0)
    8000325c:	00b53823          	sd	a1,16(a0)
    80003260:	00c53c23          	sd	a2,24(a0)
    80003264:	00813403          	ld	s0,8(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret

0000000080003270 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00813423          	sd	s0,8(sp)
    80003278:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    8000327c:	00009797          	auipc	a5,0x9
    80003280:	54c78793          	addi	a5,a5,1356 # 8000c7c8 <_ZTV6Thread+0x10>
    80003284:	00f53023          	sd	a5,0(a0)
    80003288:	00053423          	sd	zero,8(a0)
    8000328c:	00053823          	sd	zero,16(a0)
    80003290:	00053c23          	sd	zero,24(a0)
    80003294:	00813403          	ld	s0,8(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret

00000000800032a0 <_ZN6Thread5startEv>:
int Thread::start() {
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00113423          	sd	ra,8(sp)
    800032a8:	00813023          	sd	s0,0(sp)
    800032ac:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    800032b0:	01053783          	ld	a5,16(a0)
    800032b4:	02078663          	beqz	a5,800032e0 <_ZN6Thread5startEv+0x40>
    800032b8:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    800032bc:	02078863          	beqz	a5,800032ec <_ZN6Thread5startEv+0x4c>
    800032c0:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    800032c4:	00850513          	addi	a0,a0,8
    800032c8:	ffffe097          	auipc	ra,0xffffe
    800032cc:	2e4080e7          	jalr	740(ra) # 800015ac <thread_create>
}
    800032d0:	00813083          	ld	ra,8(sp)
    800032d4:	00013403          	ld	s0,0(sp)
    800032d8:	01010113          	addi	sp,sp,16
    800032dc:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    800032e0:	00000597          	auipc	a1,0x0
    800032e4:	df058593          	addi	a1,a1,-528 # 800030d0 <_ZN6Thread7runBodyEPv>
    800032e8:	fd5ff06f          	j	800032bc <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    800032ec:	00050613          	mv	a2,a0
    800032f0:	fd5ff06f          	j	800032c4 <_ZN6Thread5startEv+0x24>

00000000800032f4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800032f4:	ff010113          	addi	sp,sp,-16
    800032f8:	00113423          	sd	ra,8(sp)
    800032fc:	00813023          	sd	s0,0(sp)
    80003300:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003304:	ffffe097          	auipc	ra,0xffffe
    80003308:	34c080e7          	jalr	844(ra) # 80001650 <thread_dispatch>
}
    8000330c:	00813083          	ld	ra,8(sp)
    80003310:	00013403          	ld	s0,0(sp)
    80003314:	01010113          	addi	sp,sp,16
    80003318:	00008067          	ret

000000008000331c <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    8000331c:	ff010113          	addi	sp,sp,-16
    80003320:	00113423          	sd	ra,8(sp)
    80003324:	00813023          	sd	s0,0(sp)
    80003328:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	344080e7          	jalr	836(ra) # 80001670 <time_sleep>
}
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00113423          	sd	ra,8(sp)
    8000334c:	00813023          	sd	s0,0(sp)
    80003350:	01010413          	addi	s0,sp,16
    80003354:	00009797          	auipc	a5,0x9
    80003358:	49c78793          	addi	a5,a5,1180 # 8000c7f0 <_ZTV9Semaphore+0x10>
    8000335c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80003360:	00850513          	addi	a0,a0,8
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	334080e7          	jalr	820(ra) # 80001698 <sem_open>
}
    8000336c:	00813083          	ld	ra,8(sp)
    80003370:	00013403          	ld	s0,0(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret

000000008000337c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000337c:	ff010113          	addi	sp,sp,-16
    80003380:	00113423          	sd	ra,8(sp)
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000338c:	00853503          	ld	a0,8(a0)
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	368080e7          	jalr	872(ra) # 800016f8 <sem_wait>
}
    80003398:	00813083          	ld	ra,8(sp)
    8000339c:	00013403          	ld	s0,0(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret

00000000800033a8 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00113423          	sd	ra,8(sp)
    800033b0:	00813023          	sd	s0,0(sp)
    800033b4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800033b8:	00853503          	ld	a0,8(a0)
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	364080e7          	jalr	868(ra) # 80001720 <sem_signal>
}
    800033c4:	00813083          	ld	ra,8(sp)
    800033c8:	00013403          	ld	s0,0(sp)
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret

00000000800033d4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    800033d4:	fe010113          	addi	sp,sp,-32
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	00813823          	sd	s0,16(sp)
    800033e0:	00913423          	sd	s1,8(sp)
    800033e4:	01213023          	sd	s2,0(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	00050493          	mv	s1,a0
    800033f0:	00058913          	mv	s2,a1
    800033f4:	00000097          	auipc	ra,0x0
    800033f8:	e7c080e7          	jalr	-388(ra) # 80003270 <_ZN6ThreadC1Ev>
    800033fc:	00009797          	auipc	a5,0x9
    80003400:	41478793          	addi	a5,a5,1044 # 8000c810 <_ZTV14PeriodicThread+0x10>
    80003404:	00f4b023          	sd	a5,0(s1)
    80003408:	0324b023          	sd	s2,32(s1)
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	00013903          	ld	s2,0(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00813423          	sd	s0,8(sp)
    8000342c:	01010413          	addi	s0,sp,16
    80003430:	02053023          	sd	zero,32(a0)
    80003434:	00813403          	ld	s0,8(sp)
    80003438:	01010113          	addi	sp,sp,16
    8000343c:	00008067          	ret

0000000080003440 <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    80003440:	ff010113          	addi	sp,sp,-16
    80003444:	00113423          	sd	ra,8(sp)
    80003448:	00813023          	sd	s0,0(sp)
    8000344c:	01010413          	addi	s0,sp,16
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	330080e7          	jalr	816(ra) # 80001780 <getc>
    80003458:	00813083          	ld	ra,8(sp)
    8000345c:	00013403          	ld	s0,0(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	00008067          	ret

0000000080003468 <_ZN7Console4putcEc>:
    80003468:	ff010113          	addi	sp,sp,-16
    8000346c:	00113423          	sd	ra,8(sp)
    80003470:	00813023          	sd	s0,0(sp)
    80003474:	01010413          	addi	s0,sp,16
    80003478:	ffffe097          	auipc	ra,0xffffe
    8000347c:	32c080e7          	jalr	812(ra) # 800017a4 <putc>
    80003480:	00813083          	ld	ra,8(sp)
    80003484:	00013403          	ld	s0,0(sp)
    80003488:	01010113          	addi	sp,sp,16
    8000348c:	00008067          	ret

0000000080003490 <_ZN6Thread3runEv>:
    int start();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00813423          	sd	s0,8(sp)
    80003498:	01010413          	addi	s0,sp,16
    8000349c:	00813403          	ld	s0,8(sp)
    800034a0:	01010113          	addi	sp,sp,16
    800034a4:	00008067          	ret

00000000800034a8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    800034a8:	ff010113          	addi	sp,sp,-16
    800034ac:	00813423          	sd	s0,8(sp)
    800034b0:	01010413          	addi	s0,sp,16
    800034b4:	00813403          	ld	s0,8(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret

00000000800034c0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00813423          	sd	s0,8(sp)
    800034c8:	01010413          	addi	s0,sp,16
    800034cc:	00009797          	auipc	a5,0x9
    800034d0:	34478793          	addi	a5,a5,836 # 8000c810 <_ZTV14PeriodicThread+0x10>
    800034d4:	00f53023          	sd	a5,0(a0)
    800034d8:	00813403          	ld	s0,8(sp)
    800034dc:	01010113          	addi	sp,sp,16
    800034e0:	00008067          	ret

00000000800034e4 <_ZN14PeriodicThreadD0Ev>:
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00113423          	sd	ra,8(sp)
    800034ec:	00813023          	sd	s0,0(sp)
    800034f0:	01010413          	addi	s0,sp,16
    800034f4:	00009797          	auipc	a5,0x9
    800034f8:	31c78793          	addi	a5,a5,796 # 8000c810 <_ZTV14PeriodicThread+0x10>
    800034fc:	00f53023          	sd	a5,0(a0)
    80003500:	00000097          	auipc	ra,0x0
    80003504:	cb0080e7          	jalr	-848(ra) # 800031b0 <_ZdlPv>
    80003508:	00813083          	ld	ra,8(sp)
    8000350c:	00013403          	ld	s0,0(sp)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	00008067          	ret

0000000080003518 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00813423          	sd	s0,8(sp)
    80003520:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    80003524:	00009797          	auipc	a5,0x9
    80003528:	4f47b783          	ld	a5,1268(a5) # 8000ca18 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000352c:	0007b703          	ld	a4,0(a5)
    80003530:	00009797          	auipc	a5,0x9
    80003534:	4c07b783          	ld	a5,1216(a5) # 8000c9f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003538:	0007b783          	ld	a5,0(a5)
    8000353c:	40f70733          	sub	a4,a4,a5
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    80003540:	00675713          	srli	a4,a4,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80003544:	00f53023          	sd	a5,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    80003548:	00100693          	li	a3,1
    8000354c:	00d78823          	sb	a3,16(a5)
    startFrag->next=nullptr;
    80003550:	0007b023          	sd	zero,0(a5)
    startFrag->size = HEAP_SIZE_BLCK;
    80003554:	00e7bc23          	sd	a4,24(a5)
    startFrag->prev=nullptr;
    80003558:	0007b423          	sd	zero,8(a5)
}
    8000355c:	00813403          	ld	s0,8(sp)
    80003560:	01010113          	addi	sp,sp,16
    80003564:	00008067          	ret

0000000080003568 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    80003568:	00009797          	auipc	a5,0x9
    8000356c:	7a87c783          	lbu	a5,1960(a5) # 8000cd10 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80003570:	00078863          	beqz	a5,80003580 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80003574:	00009517          	auipc	a0,0x9
    80003578:	7a450513          	addi	a0,a0,1956 # 8000cd18 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000357c:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003580:	ff010113          	addi	sp,sp,-16
    80003584:	00113423          	sd	ra,8(sp)
    80003588:	00813023          	sd	s0,0(sp)
    8000358c:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80003590:	00009517          	auipc	a0,0x9
    80003594:	78850513          	addi	a0,a0,1928 # 8000cd18 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	f80080e7          	jalr	-128(ra) # 80003518 <_ZN15MemoryAllocatorC1Ev>
    800035a0:	00100793          	li	a5,1
    800035a4:	00009717          	auipc	a4,0x9
    800035a8:	76f70623          	sb	a5,1900(a4) # 8000cd10 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    800035ac:	00009517          	auipc	a0,0x9
    800035b0:	76c50513          	addi	a0,a0,1900 # 8000cd18 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800035b4:	00813083          	ld	ra,8(sp)
    800035b8:	00013403          	ld	s0,0(sp)
    800035bc:	01010113          	addi	sp,sp,16
    800035c0:	00008067          	ret

00000000800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00813423          	sd	s0,8(sp)
    800035cc:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800035d0:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800035d4:	03f58593          	addi	a1,a1,63
    800035d8:	0065d593          	srli	a1,a1,0x6
    800035dc:	0080006f          	j	800035e4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    800035e0:	00053503          	ld	a0,0(a0)
    while(curr){
    800035e4:	06050863          	beqz	a0,80003654 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    800035e8:	01054703          	lbu	a4,16(a0)
    800035ec:	00100793          	li	a5,1
    800035f0:	fef718e3          	bne	a4,a5,800035e0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    800035f4:	01853703          	ld	a4,24(a0)
    800035f8:	00158793          	addi	a5,a1,1
    800035fc:	fef762e3          	bltu	a4,a5,800035e0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80003600:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80003604:	04e7f663          	bgeu	a5,a4,80003650 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80003608:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    8000360c:	00679793          	slli	a5,a5,0x6
    80003610:	00f507b3          	add	a5,a0,a5
    80003614:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80003618:	00100713          	li	a4,1
    8000361c:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80003620:	01853703          	ld	a4,24(a0)
    80003624:	40b70733          	sub	a4,a4,a1
    80003628:	fff70713          	addi	a4,a4,-1
    8000362c:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003630:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003634:	00068463          	beqz	a3,8000363c <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80003638:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    8000363c:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003640:	01853703          	ld	a4,24(a0)
    80003644:	0187b783          	ld	a5,24(a5)
    80003648:	40f707b3          	sub	a5,a4,a5
    8000364c:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80003650:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80003654:	00813403          	ld	s0,8(sp)
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret

0000000080003660 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00813423          	sd	s0,8(sp)
    80003668:	01010413          	addi	s0,sp,16
    if(!startLoc)return -1;
    8000366c:	08058c63          	beqz	a1,80003704 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80003670:	fc058613          	addi	a2,a1,-64
    curr->free=1;
    80003674:	00100793          	li	a5,1
    80003678:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    8000367c:	fc05b783          	ld	a5,-64(a1)
    80003680:	00078863          	beqz	a5,80003690 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003684:	0107c683          	lbu	a3,16(a5)
    80003688:	00100713          	li	a4,1
    8000368c:	02e68463          	beq	a3,a4,800036b4 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80003690:	fc85b783          	ld	a5,-56(a1)
    80003694:	06078c63          	beqz	a5,8000370c <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80003698:	0107c683          	lbu	a3,16(a5)
    8000369c:	00100713          	li	a4,1
    800036a0:	02e68e63          	beq	a3,a4,800036dc <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    800036a4:	00000513          	li	a0,0
}
    800036a8:	00813403          	ld	s0,8(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	00008067          	ret
        curr->size +=next->size;
    800036b4:	0187b683          	ld	a3,24(a5)
    800036b8:	fd85b703          	ld	a4,-40(a1)
    800036bc:	00d70733          	add	a4,a4,a3
    800036c0:	fce5bc23          	sd	a4,-40(a1)
        curr->next = next->next;
    800036c4:	0007b703          	ld	a4,0(a5)
    800036c8:	fce5b023          	sd	a4,-64(a1)
        if(next->next)
    800036cc:	0007b783          	ld	a5,0(a5)
    800036d0:	fc0780e3          	beqz	a5,80003690 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    800036d4:	00c7b423          	sd	a2,8(a5)
    800036d8:	fb9ff06f          	j	80003690 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    800036dc:	fd85b683          	ld	a3,-40(a1)
    800036e0:	0187b703          	ld	a4,24(a5)
    800036e4:	00d70733          	add	a4,a4,a3
    800036e8:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    800036ec:	fc05b703          	ld	a4,-64(a1)
    800036f0:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    800036f4:	02070063          	beqz	a4,80003714 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    800036f8:	00f73423          	sd	a5,8(a4)
    return 0;
    800036fc:	00000513          	li	a0,0
    80003700:	fa9ff06f          	j	800036a8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!startLoc)return -1;
    80003704:	fff00513          	li	a0,-1
    80003708:	fa1ff06f          	j	800036a8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    8000370c:	00000513          	li	a0,0
    80003710:	f99ff06f          	j	800036a8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003714:	00000513          	li	a0,0
    80003718:	f91ff06f          	j	800036a8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

000000008000371c <HandleInterupt>:

extern "C" void restoreContext(size_t* ctx);



extern "C" void HandleInterupt(size_t* stackInfo){
    8000371c:	fb010113          	addi	sp,sp,-80
    80003720:	04113423          	sd	ra,72(sp)
    80003724:	04813023          	sd	s0,64(sp)
    80003728:	02913c23          	sd	s1,56(sp)
    8000372c:	03213823          	sd	s2,48(sp)
    80003730:	03313423          	sd	s3,40(sp)
    80003734:	03413023          	sd	s4,32(sp)
    80003738:	01513c23          	sd	s5,24(sp)
    8000373c:	01613823          	sd	s6,16(sp)
    80003740:	01713423          	sd	s7,8(sp)
    80003744:	05010413          	addi	s0,sp,80
    80003748:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000374c:	142029f3          	csrr	s3,scause

    Scheduler::freeDead();
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	7b4080e7          	jalr	1972(ra) # 80001f04 <_ZN9Scheduler8freeDeadEv>

    KThread* current = Scheduler::GetRunning();
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	750080e7          	jalr	1872(ra) # 80001ea8 <_ZN9Scheduler10GetRunningEv>
    80003760:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80003764:	04050863          	beqz	a0,800037b4 <HandleInterupt+0x98>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = stackInfo[i];
    80003768:	00000713          	li	a4,0
    8000376c:	01f00793          	li	a5,31
    80003770:	02e7c063          	blt	a5,a4,80003790 <HandleInterupt+0x74>
    80003774:	00371793          	slli	a5,a4,0x3
    80003778:	00f906b3          	add	a3,s2,a5
    8000377c:	0006b683          	ld	a3,0(a3)
    80003780:	00f487b3          	add	a5,s1,a5
    80003784:	06d7b423          	sd	a3,104(a5)
    80003788:	0017071b          	addiw	a4,a4,1
    8000378c:	fe1ff06f          	j	8000376c <HandleInterupt+0x50>
        ctx.x[2] = (size_t)stackInfo + 256;
    80003790:	10090793          	addi	a5,s2,256
    80003794:	06f4bc23          	sd	a5,120(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80003798:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000379c:	100026f3          	csrr	a3,sstatus
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    800037a0:	ff898793          	addi	a5,s3,-8
    800037a4:	00100613          	li	a2,1
    800037a8:	06f67a63          	bgeu	a2,a5,8000381c <HandleInterupt+0x100>
        ctx.sepc    = sepc;
    800037ac:	16e4b423          	sd	a4,360(s1)
        ctx.sstatus = sstatus;
    800037b0:	16d4b823          	sd	a3,368(s1)
    }

    if (scause == SCause::TIMER_INTERRUPT) {
    800037b4:	fff00793          	li	a5,-1
    800037b8:	03f79793          	slli	a5,a5,0x3f
    800037bc:	00178793          	addi	a5,a5,1
    800037c0:	06f98263          	beq	s3,a5,80003824 <HandleInterupt+0x108>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == SCause::EXTERNAL_INTERRUPT) {
    800037c4:	fff00793          	li	a5,-1
    800037c8:	03f79793          	slli	a5,a5,0x3f
    800037cc:	00978793          	addi	a5,a5,9
    800037d0:	06f98863          	beq	s3,a5,80003840 <HandleInterupt+0x124>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != SCause::ECALL_USER && scause != SCause::ECALL_SUPERVISOR) {
    800037d4:	ff898793          	addi	a5,s3,-8
    800037d8:	00100713          	li	a4,1
    800037dc:	06f76e63          	bltu	a4,a5,80003858 <HandleInterupt+0x13c>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800037e0:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800037e4:	00478793          	addi	a5,a5,4
    800037e8:	14179073          	csrw	sepc,a5
    }

    size_t code = stackInfo[10];
    800037ec:	05093783          	ld	a5,80(s2)
    switch (code) {
    800037f0:	04200713          	li	a4,66
    800037f4:	0af76263          	bltu	a4,a5,80003898 <HandleInterupt+0x17c>
    800037f8:	06078a63          	beqz	a5,8000386c <HandleInterupt+0x150>
    800037fc:	06f76863          	bltu	a4,a5,8000386c <HandleInterupt+0x150>
    80003800:	00279793          	slli	a5,a5,0x2
    80003804:	00007717          	auipc	a4,0x7
    80003808:	81c70713          	addi	a4,a4,-2020 # 8000a020 <CONSOLE_STATUS+0x10>
    8000380c:	00e787b3          	add	a5,a5,a4
    80003810:	0007a783          	lw	a5,0(a5)
    80003814:	00e787b3          	add	a5,a5,a4
    80003818:	00078067          	jr	a5
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    8000381c:	00470713          	addi	a4,a4,4
    80003820:	f8dff06f          	j	800037ac <HandleInterupt+0x90>
        Scheduler::timerTick(current);
    80003824:	00048513          	mv	a0,s1
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	b84080e7          	jalr	-1148(ra) # 800023ac <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003830:	02048e63          	beqz	s1,8000386c <HandleInterupt+0x150>
    80003834:	0b84b783          	ld	a5,184(s1)
    80003838:	00078513          	mv	a0,a5
    8000383c:	0300006f          	j	8000386c <HandleInterupt+0x150>
        Konsole::handleInterrupt();
    80003840:	fffff097          	auipc	ra,0xfffff
    80003844:	0b8080e7          	jalr	184(ra) # 800028f8 <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003848:	02048263          	beqz	s1,8000386c <HandleInterupt+0x150>
    8000384c:	0b84b783          	ld	a5,184(s1)
    80003850:	00078513          	mv	a0,a5
    80003854:	0180006f          	j	8000386c <HandleInterupt+0x150>
        if ((scause >> 63) == 0 && current != nullptr) {
    80003858:	0009ca63          	bltz	s3,8000386c <HandleInterupt+0x150>
    8000385c:	00048863          	beqz	s1,8000386c <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003860:	00048513          	mv	a0,s1
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	948080e7          	jalr	-1720(ra) # 800021ac <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    8000386c:	04813083          	ld	ra,72(sp)
    80003870:	04013403          	ld	s0,64(sp)
    80003874:	03813483          	ld	s1,56(sp)
    80003878:	03013903          	ld	s2,48(sp)
    8000387c:	02813983          	ld	s3,40(sp)
    80003880:	02013a03          	ld	s4,32(sp)
    80003884:	01813a83          	ld	s5,24(sp)
    80003888:	01013b03          	ld	s6,16(sp)
    8000388c:	00813b83          	ld	s7,8(sp)
    80003890:	05010113          	addi	sp,sp,80
    80003894:	00008067          	ret
    switch (code) {
    80003898:	0ff00713          	li	a4,255
    8000389c:	fce798e3          	bne	a5,a4,8000386c <HandleInterupt+0x150>
            *((volatile uint32*)0x100000UL) = 0x5555;
    800038a0:	00100737          	lui	a4,0x100
    800038a4:	000057b7          	lui	a5,0x5
    800038a8:	5557879b          	addiw	a5,a5,1365
    800038ac:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    800038b0:	0000006f          	j	800038b0 <HandleInterupt+0x194>
            size_t size = stackInfo[11];
    800038b4:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	cb0080e7          	jalr	-848(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    800038c0:	00048593          	mv	a1,s1
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	d00080e7          	jalr	-768(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    800038cc:	00050513          	mv	a0,a0
            break;
    800038d0:	f9dff06f          	j	8000386c <HandleInterupt+0x150>
            void* ptr = (void*)stackInfo[11];
    800038d4:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    800038d8:	00000097          	auipc	ra,0x0
    800038dc:	c90080e7          	jalr	-880(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    800038e0:	00048593          	mv	a1,s1
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	d7c080e7          	jalr	-644(ra) # 80003660 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    800038ec:	f81ff06f          	j	8000386c <HandleInterupt+0x150>
            thread_t* handle             = reinterpret_cast<thread_t*>(stackInfo[11]);
    800038f0:	05893a03          	ld	s4,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(stackInfo[12]);
    800038f4:	06093b03          	ld	s6,96(s2)
            void* threadArg              = reinterpret_cast<void*>(stackInfo[13]);
    800038f8:	06893a83          	ld	s5,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(stackInfo[14]);
    800038fc:	07093b83          	ld	s7,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80003900:	00000097          	auipc	ra,0x0
    80003904:	c68080e7          	jalr	-920(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    80003908:	18000593          	li	a1,384
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	cb8080e7          	jalr	-840(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003914:	00050993          	mv	s3,a0
            if (!mem) {
    80003918:	04050863          	beqz	a0,80003968 <HandleInterupt+0x24c>
            t->init();
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	36c080e7          	jalr	876(ra) # 80001c88 <_ZN7KThread4initEv>
    80003924:	0169b023          	sd	s6,0(s3)
    80003928:	0159b423          	sd	s5,8(s3)
            t->setup(current, stack_space);
    8000392c:	000b8613          	mv	a2,s7
    80003930:	00048593          	mv	a1,s1
    80003934:	00098513          	mv	a0,s3
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	508080e7          	jalr	1288(ra) # 80001e40 <_ZN7KThread5setupEPS_Pm>
            t->stackBase = reinterpret_cast<void*>(stackInfo[15]);
    80003940:	07893783          	ld	a5,120(s2)
    80003944:	06f9b023          	sd	a5,96(s3)
            *handle = reinterpret_cast<thread_t>(t);
    80003948:	013a3023          	sd	s3,0(s4)
            Scheduler::Put(t);
    8000394c:	00098513          	mv	a0,s3
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	73c080e7          	jalr	1852(ra) # 8000208c <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    80003958:	00048463          	beqz	s1,80003960 <HandleInterupt+0x244>
    8000395c:	0a04bc23          	sd	zero,184(s1)
            __asm__ volatile("li a0, 0");
    80003960:	00000513          	li	a0,0
            break;
    80003964:	f09ff06f          	j	8000386c <HandleInterupt+0x150>
                if (current) {
    80003968:	f00482e3          	beqz	s1,8000386c <HandleInterupt+0x150>
                    current->threadContext.x[10] = (size_t)-1;
    8000396c:	fff00793          	li	a5,-1
    80003970:	0af4bc23          	sd	a5,184(s1)
                    restoreContext(current->getContext());
    80003974:	00048513          	mv	a0,s1
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	3ec080e7          	jalr	1004(ra) # 80001d64 <_ZN7KThread10getContextEv>
    80003980:	ffffd097          	auipc	ra,0xffffd
    80003984:	714080e7          	jalr	1812(ra) # 80001094 <restoreContext>
                return;
    80003988:	ee5ff06f          	j	8000386c <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    8000398c:	00048513          	mv	a0,s1
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	81c080e7          	jalr	-2020(ra) # 800021ac <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    80003998:	ed5ff06f          	j	8000386c <HandleInterupt+0x150>
            if (!Scheduler::yieldCurrent(current))
    8000399c:	00048513          	mv	a0,s1
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	798080e7          	jalr	1944(ra) # 80002138 <_ZN9Scheduler12yieldCurrentEP7KThread>
    800039a8:	ec0512e3          	bnez	a0,8000386c <HandleInterupt+0x150>
                __asm__ volatile("li a0, 0");
    800039ac:	00000513          	li	a0,0
    800039b0:	ebdff06f          	j	8000386c <HandleInterupt+0x150>
            sem_t* handle = reinterpret_cast<sem_t*>(stackInfo[11]);
    800039b4:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)stackInfo[12];
    800039b8:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    800039bc:	00000097          	auipc	ra,0x0
    800039c0:	bac080e7          	jalr	-1108(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    800039c4:	01800593          	li	a1,24
    800039c8:	00000097          	auipc	ra,0x0
    800039cc:	bfc080e7          	jalr	-1028(ra) # 800035c4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800039d0:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800039d4:	00050e63          	beqz	a0,800039f0 <HandleInterupt+0x2d4>
            semaphore->init(initialValue);
    800039d8:	00090593          	mv	a1,s2
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	ee8080e7          	jalr	-280(ra) # 800018c4 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    800039e4:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    800039e8:	00000513          	li	a0,0
            break;
    800039ec:	e81ff06f          	j	8000386c <HandleInterupt+0x150>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800039f0:	fff00513          	li	a0,-1
    800039f4:	e79ff06f          	j	8000386c <HandleInterupt+0x150>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
    800039f8:	05893483          	ld	s1,88(s2)
            semaphore->close();
    800039fc:	00048513          	mv	a0,s1
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	1c0080e7          	jalr	448(ra) # 80001bc0 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80003a08:	00000097          	auipc	ra,0x0
    80003a0c:	b60080e7          	jalr	-1184(ra) # 80003568 <_ZN15MemoryAllocator11GetInstanceEv>
    80003a10:	00048593          	mv	a1,s1
    80003a14:	00000097          	auipc	ra,0x0
    80003a18:	c4c080e7          	jalr	-948(ra) # 80003660 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80003a1c:	00000513          	li	a0,0
            break;
    80003a20:	e4dff06f          	j	8000386c <HandleInterupt+0x150>
            int result = semaphore->wait(current);
    80003a24:	00048593          	mv	a1,s1
    80003a28:	05893503          	ld	a0,88(s2)
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	fd0080e7          	jalr	-48(ra) # 800019fc <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003a34:	00a04663          	bgtz	a0,80003a40 <HandleInterupt+0x324>
    80003a38:	00050513          	mv	a0,a0
    80003a3c:	e31ff06f          	j	8000386c <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003a40:	00048513          	mv	a0,s1
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	5fc080e7          	jalr	1532(ra) # 80002040 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003a4c:	e21ff06f          	j	8000386c <HandleInterupt+0x150>
            semaphore->signal();
    80003a50:	05893503          	ld	a0,88(s2)
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	008080e7          	jalr	8(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003a5c:	00000513          	li	a0,0
            break;
    80003a60:	e0dff06f          	j	8000386c <HandleInterupt+0x150>
            int result = semaphore->waitN(current, n);
    80003a64:	06092603          	lw	a2,96(s2)
    80003a68:	00048593          	mv	a1,s1
    80003a6c:	05893503          	ld	a0,88(s2)
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	068080e7          	jalr	104(ra) # 80001ad8 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003a78:	00a04663          	bgtz	a0,80003a84 <HandleInterupt+0x368>
    80003a7c:	00050513          	mv	a0,a0
    80003a80:	dedff06f          	j	8000386c <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003a84:	00048513          	mv	a0,s1
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	5b8080e7          	jalr	1464(ra) # 80002040 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003a90:	dddff06f          	j	8000386c <HandleInterupt+0x150>
            semaphore->signalN(n);
    80003a94:	06092583          	lw	a1,96(s2)
    80003a98:	05893503          	ld	a0,88(s2)
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	0ac080e7          	jalr	172(ra) # 80001b48 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80003aa4:	00000513          	li	a0,0
            break;
    80003aa8:	dc5ff06f          	j	8000386c <HandleInterupt+0x150>
            time_t dur = (time_t)stackInfo[11];
    80003aac:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80003ab0:	00048463          	beqz	s1,80003ab8 <HandleInterupt+0x39c>
    80003ab4:	0a04bc23          	sd	zero,184(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    80003ab8:	00059663          	bnez	a1,80003ac4 <HandleInterupt+0x3a8>
    80003abc:	00000513          	li	a0,0
    80003ac0:	dadff06f          	j	8000386c <HandleInterupt+0x150>
            Scheduler::sleep(current, dur);
    80003ac4:	00048513          	mv	a0,s1
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	acc080e7          	jalr	-1332(ra) # 80002594 <_ZN9Scheduler5sleepEP7KThreadm>
            Scheduler::blockCurrent(current);
    80003ad0:	00048513          	mv	a0,s1
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	56c080e7          	jalr	1388(ra) # 80002040 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003adc:	d91ff06f          	j	8000386c <HandleInterupt+0x150>
            int result = Konsole::getcKernel(current);
    80003ae0:	00048513          	mv	a0,s1
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	f98080e7          	jalr	-104(ra) # 80002a7c <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2)
    80003aec:	ffe00713          	li	a4,-2
    80003af0:	00e50863          	beq	a0,a4,80003b00 <HandleInterupt+0x3e4>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    80003af4:	0ff57793          	andi	a5,a0,255
    80003af8:	00078513          	mv	a0,a5
    80003afc:	d71ff06f          	j	8000386c <HandleInterupt+0x150>
                Scheduler::blockCurrent(current);
    80003b00:	00048513          	mv	a0,s1
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	53c080e7          	jalr	1340(ra) # 80002040 <_ZN9Scheduler12blockCurrentEP7KThread>
    80003b0c:	d61ff06f          	j	8000386c <HandleInterupt+0x150>
            int result = Konsole::putcKernel(current, c);
    80003b10:	05894583          	lbu	a1,88(s2)
    80003b14:	00048513          	mv	a0,s1
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	ec4080e7          	jalr	-316(ra) # 800029dc <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003b20:	00050513          	mv	a0,a0
            break;
    80003b24:	d49ff06f          	j	8000386c <HandleInterupt+0x150>

0000000080003b28 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00113423          	sd	ra,8(sp)
    80003b30:	00813023          	sd	s0,0(sp)
    80003b34:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	774080e7          	jalr	1908(ra) # 800022ac <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	cf0080e7          	jalr	-784(ra) # 80002830 <_ZN7Konsole4initEv>
    return 0;
}
    80003b48:	00000513          	li	a0,0
    80003b4c:	00813083          	ld	ra,8(sp)
    80003b50:	00013403          	ld	s0,0(sp)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00113c23          	sd	ra,24(sp)
    80003b64:	00813823          	sd	s0,16(sp)
    80003b68:	00913423          	sd	s1,8(sp)
    80003b6c:	01213023          	sd	s2,0(sp)
    80003b70:	02010413          	addi	s0,sp,32
    80003b74:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003b78:	00000913          	li	s2,0
    80003b7c:	00c0006f          	j	80003b88 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	ad0080e7          	jalr	-1328(ra) # 80001650 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	bf8080e7          	jalr	-1032(ra) # 80001780 <getc>
    80003b90:	0005059b          	sext.w	a1,a0
    80003b94:	01b00793          	li	a5,27
    80003b98:	02f58a63          	beq	a1,a5,80003bcc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003b9c:	0084b503          	ld	a0,8(s1)
    80003ba0:	00003097          	auipc	ra,0x3
    80003ba4:	400080e7          	jalr	1024(ra) # 80006fa0 <_ZN6Buffer3putEi>
        i++;
    80003ba8:	0019071b          	addiw	a4,s2,1
    80003bac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003bb0:	0004a683          	lw	a3,0(s1)
    80003bb4:	0026979b          	slliw	a5,a3,0x2
    80003bb8:	00d787bb          	addw	a5,a5,a3
    80003bbc:	0017979b          	slliw	a5,a5,0x1
    80003bc0:	02f767bb          	remw	a5,a4,a5
    80003bc4:	fc0792e3          	bnez	a5,80003b88 <_ZL16producerKeyboardPv+0x2c>
    80003bc8:	fb9ff06f          	j	80003b80 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003bcc:	00100793          	li	a5,1
    80003bd0:	00009717          	auipc	a4,0x9
    80003bd4:	14f72823          	sw	a5,336(a4) # 8000cd20 <_ZL9threadEnd>
    data->buffer->put('!');
    80003bd8:	02100593          	li	a1,33
    80003bdc:	0084b503          	ld	a0,8(s1)
    80003be0:	00003097          	auipc	ra,0x3
    80003be4:	3c0080e7          	jalr	960(ra) # 80006fa0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003be8:	0104b503          	ld	a0,16(s1)
    80003bec:	ffffe097          	auipc	ra,0xffffe
    80003bf0:	b34080e7          	jalr	-1228(ra) # 80001720 <sem_signal>
}
    80003bf4:	01813083          	ld	ra,24(sp)
    80003bf8:	01013403          	ld	s0,16(sp)
    80003bfc:	00813483          	ld	s1,8(sp)
    80003c00:	00013903          	ld	s2,0(sp)
    80003c04:	02010113          	addi	sp,sp,32
    80003c08:	00008067          	ret

0000000080003c0c <_ZL8producerPv>:

static void producer(void *arg) {
    80003c0c:	fe010113          	addi	sp,sp,-32
    80003c10:	00113c23          	sd	ra,24(sp)
    80003c14:	00813823          	sd	s0,16(sp)
    80003c18:	00913423          	sd	s1,8(sp)
    80003c1c:	01213023          	sd	s2,0(sp)
    80003c20:	02010413          	addi	s0,sp,32
    80003c24:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003c28:	00000913          	li	s2,0
    80003c2c:	00c0006f          	j	80003c38 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	a20080e7          	jalr	-1504(ra) # 80001650 <thread_dispatch>
    while (!threadEnd) {
    80003c38:	00009797          	auipc	a5,0x9
    80003c3c:	0e87a783          	lw	a5,232(a5) # 8000cd20 <_ZL9threadEnd>
    80003c40:	02079e63          	bnez	a5,80003c7c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003c44:	0004a583          	lw	a1,0(s1)
    80003c48:	0305859b          	addiw	a1,a1,48
    80003c4c:	0084b503          	ld	a0,8(s1)
    80003c50:	00003097          	auipc	ra,0x3
    80003c54:	350080e7          	jalr	848(ra) # 80006fa0 <_ZN6Buffer3putEi>
        i++;
    80003c58:	0019071b          	addiw	a4,s2,1
    80003c5c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003c60:	0004a683          	lw	a3,0(s1)
    80003c64:	0026979b          	slliw	a5,a3,0x2
    80003c68:	00d787bb          	addw	a5,a5,a3
    80003c6c:	0017979b          	slliw	a5,a5,0x1
    80003c70:	02f767bb          	remw	a5,a4,a5
    80003c74:	fc0792e3          	bnez	a5,80003c38 <_ZL8producerPv+0x2c>
    80003c78:	fb9ff06f          	j	80003c30 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003c7c:	0104b503          	ld	a0,16(s1)
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	aa0080e7          	jalr	-1376(ra) # 80001720 <sem_signal>
}
    80003c88:	01813083          	ld	ra,24(sp)
    80003c8c:	01013403          	ld	s0,16(sp)
    80003c90:	00813483          	ld	s1,8(sp)
    80003c94:	00013903          	ld	s2,0(sp)
    80003c98:	02010113          	addi	sp,sp,32
    80003c9c:	00008067          	ret

0000000080003ca0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003ca0:	fd010113          	addi	sp,sp,-48
    80003ca4:	02113423          	sd	ra,40(sp)
    80003ca8:	02813023          	sd	s0,32(sp)
    80003cac:	00913c23          	sd	s1,24(sp)
    80003cb0:	01213823          	sd	s2,16(sp)
    80003cb4:	01313423          	sd	s3,8(sp)
    80003cb8:	03010413          	addi	s0,sp,48
    80003cbc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003cc0:	00000993          	li	s3,0
    80003cc4:	01c0006f          	j	80003ce0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	988080e7          	jalr	-1656(ra) # 80001650 <thread_dispatch>
    80003cd0:	0500006f          	j	80003d20 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003cd4:	00a00513          	li	a0,10
    80003cd8:	ffffe097          	auipc	ra,0xffffe
    80003cdc:	acc080e7          	jalr	-1332(ra) # 800017a4 <putc>
    while (!threadEnd) {
    80003ce0:	00009797          	auipc	a5,0x9
    80003ce4:	0407a783          	lw	a5,64(a5) # 8000cd20 <_ZL9threadEnd>
    80003ce8:	06079063          	bnez	a5,80003d48 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003cec:	00893503          	ld	a0,8(s2)
    80003cf0:	00003097          	auipc	ra,0x3
    80003cf4:	340080e7          	jalr	832(ra) # 80007030 <_ZN6Buffer3getEv>
        i++;
    80003cf8:	0019849b          	addiw	s1,s3,1
    80003cfc:	0004899b          	sext.w	s3,s1
        putc(key);
    80003d00:	0ff57513          	andi	a0,a0,255
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	aa0080e7          	jalr	-1376(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    80003d0c:	00092703          	lw	a4,0(s2)
    80003d10:	0027179b          	slliw	a5,a4,0x2
    80003d14:	00e787bb          	addw	a5,a5,a4
    80003d18:	02f4e7bb          	remw	a5,s1,a5
    80003d1c:	fa0786e3          	beqz	a5,80003cc8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003d20:	05000793          	li	a5,80
    80003d24:	02f4e4bb          	remw	s1,s1,a5
    80003d28:	fa049ce3          	bnez	s1,80003ce0 <_ZL8consumerPv+0x40>
    80003d2c:	fa9ff06f          	j	80003cd4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003d30:	00893503          	ld	a0,8(s2)
    80003d34:	00003097          	auipc	ra,0x3
    80003d38:	2fc080e7          	jalr	764(ra) # 80007030 <_ZN6Buffer3getEv>
        putc(key);
    80003d3c:	0ff57513          	andi	a0,a0,255
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	a64080e7          	jalr	-1436(ra) # 800017a4 <putc>
    while (data->buffer->getCnt() > 0) {
    80003d48:	00893503          	ld	a0,8(s2)
    80003d4c:	00003097          	auipc	ra,0x3
    80003d50:	370080e7          	jalr	880(ra) # 800070bc <_ZN6Buffer6getCntEv>
    80003d54:	fca04ee3          	bgtz	a0,80003d30 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003d58:	01093503          	ld	a0,16(s2)
    80003d5c:	ffffe097          	auipc	ra,0xffffe
    80003d60:	9c4080e7          	jalr	-1596(ra) # 80001720 <sem_signal>
}
    80003d64:	02813083          	ld	ra,40(sp)
    80003d68:	02013403          	ld	s0,32(sp)
    80003d6c:	01813483          	ld	s1,24(sp)
    80003d70:	01013903          	ld	s2,16(sp)
    80003d74:	00813983          	ld	s3,8(sp)
    80003d78:	03010113          	addi	sp,sp,48
    80003d7c:	00008067          	ret

0000000080003d80 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003d80:	f9010113          	addi	sp,sp,-112
    80003d84:	06113423          	sd	ra,104(sp)
    80003d88:	06813023          	sd	s0,96(sp)
    80003d8c:	04913c23          	sd	s1,88(sp)
    80003d90:	05213823          	sd	s2,80(sp)
    80003d94:	05313423          	sd	s3,72(sp)
    80003d98:	05413023          	sd	s4,64(sp)
    80003d9c:	03513c23          	sd	s5,56(sp)
    80003da0:	03613823          	sd	s6,48(sp)
    80003da4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003da8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003dac:	00006517          	auipc	a0,0x6
    80003db0:	38450513          	addi	a0,a0,900 # 8000a130 <CONSOLE_STATUS+0x120>
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	374080e7          	jalr	884(ra) # 80006128 <_Z11printStringPKc>
    getString(input, 30);
    80003dbc:	01e00593          	li	a1,30
    80003dc0:	fa040493          	addi	s1,s0,-96
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	00002097          	auipc	ra,0x2
    80003dcc:	3e8080e7          	jalr	1000(ra) # 800061b0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003dd0:	00048513          	mv	a0,s1
    80003dd4:	00002097          	auipc	ra,0x2
    80003dd8:	4b4080e7          	jalr	1204(ra) # 80006288 <_Z11stringToIntPKc>
    80003ddc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003de0:	00006517          	auipc	a0,0x6
    80003de4:	37050513          	addi	a0,a0,880 # 8000a150 <CONSOLE_STATUS+0x140>
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	340080e7          	jalr	832(ra) # 80006128 <_Z11printStringPKc>
    getString(input, 30);
    80003df0:	01e00593          	li	a1,30
    80003df4:	00048513          	mv	a0,s1
    80003df8:	00002097          	auipc	ra,0x2
    80003dfc:	3b8080e7          	jalr	952(ra) # 800061b0 <_Z9getStringPci>
    n = stringToInt(input);
    80003e00:	00048513          	mv	a0,s1
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	484080e7          	jalr	1156(ra) # 80006288 <_Z11stringToIntPKc>
    80003e0c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003e10:	00006517          	auipc	a0,0x6
    80003e14:	36050513          	addi	a0,a0,864 # 8000a170 <CONSOLE_STATUS+0x160>
    80003e18:	00002097          	auipc	ra,0x2
    80003e1c:	310080e7          	jalr	784(ra) # 80006128 <_Z11printStringPKc>
    80003e20:	00000613          	li	a2,0
    80003e24:	00a00593          	li	a1,10
    80003e28:	00090513          	mv	a0,s2
    80003e2c:	00002097          	auipc	ra,0x2
    80003e30:	4ac080e7          	jalr	1196(ra) # 800062d8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003e34:	00006517          	auipc	a0,0x6
    80003e38:	35450513          	addi	a0,a0,852 # 8000a188 <CONSOLE_STATUS+0x178>
    80003e3c:	00002097          	auipc	ra,0x2
    80003e40:	2ec080e7          	jalr	748(ra) # 80006128 <_Z11printStringPKc>
    80003e44:	00000613          	li	a2,0
    80003e48:	00a00593          	li	a1,10
    80003e4c:	00048513          	mv	a0,s1
    80003e50:	00002097          	auipc	ra,0x2
    80003e54:	488080e7          	jalr	1160(ra) # 800062d8 <_Z8printIntiii>
    printString(".\n");
    80003e58:	00006517          	auipc	a0,0x6
    80003e5c:	34850513          	addi	a0,a0,840 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003e60:	00002097          	auipc	ra,0x2
    80003e64:	2c8080e7          	jalr	712(ra) # 80006128 <_Z11printStringPKc>
    if(threadNum > n) {
    80003e68:	0324c463          	blt	s1,s2,80003e90 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003e6c:	03205c63          	blez	s2,80003ea4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003e70:	03800513          	li	a0,56
    80003e74:	fffff097          	auipc	ra,0xfffff
    80003e78:	314080e7          	jalr	788(ra) # 80003188 <_Znwm>
    80003e7c:	00050a13          	mv	s4,a0
    80003e80:	00048593          	mv	a1,s1
    80003e84:	00003097          	auipc	ra,0x3
    80003e88:	080080e7          	jalr	128(ra) # 80006f04 <_ZN6BufferC1Ei>
    80003e8c:	0300006f          	j	80003ebc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003e90:	00006517          	auipc	a0,0x6
    80003e94:	31850513          	addi	a0,a0,792 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003e98:	00002097          	auipc	ra,0x2
    80003e9c:	290080e7          	jalr	656(ra) # 80006128 <_Z11printStringPKc>
        return;
    80003ea0:	0140006f          	j	80003eb4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003ea4:	00006517          	auipc	a0,0x6
    80003ea8:	34450513          	addi	a0,a0,836 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003eac:	00002097          	auipc	ra,0x2
    80003eb0:	27c080e7          	jalr	636(ra) # 80006128 <_Z11printStringPKc>
        return;
    80003eb4:	000b0113          	mv	sp,s6
    80003eb8:	1500006f          	j	80004008 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003ebc:	00000593          	li	a1,0
    80003ec0:	00009517          	auipc	a0,0x9
    80003ec4:	e6850513          	addi	a0,a0,-408 # 8000cd28 <_ZL10waitForAll>
    80003ec8:	ffffd097          	auipc	ra,0xffffd
    80003ecc:	7d0080e7          	jalr	2000(ra) # 80001698 <sem_open>
    thread_t threads[threadNum];
    80003ed0:	00391793          	slli	a5,s2,0x3
    80003ed4:	00f78793          	addi	a5,a5,15
    80003ed8:	ff07f793          	andi	a5,a5,-16
    80003edc:	40f10133          	sub	sp,sp,a5
    80003ee0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003ee4:	0019071b          	addiw	a4,s2,1
    80003ee8:	00171793          	slli	a5,a4,0x1
    80003eec:	00e787b3          	add	a5,a5,a4
    80003ef0:	00379793          	slli	a5,a5,0x3
    80003ef4:	00f78793          	addi	a5,a5,15
    80003ef8:	ff07f793          	andi	a5,a5,-16
    80003efc:	40f10133          	sub	sp,sp,a5
    80003f00:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003f04:	00191613          	slli	a2,s2,0x1
    80003f08:	012607b3          	add	a5,a2,s2
    80003f0c:	00379793          	slli	a5,a5,0x3
    80003f10:	00f987b3          	add	a5,s3,a5
    80003f14:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003f18:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003f1c:	00009717          	auipc	a4,0x9
    80003f20:	e0c73703          	ld	a4,-500(a4) # 8000cd28 <_ZL10waitForAll>
    80003f24:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003f28:	00078613          	mv	a2,a5
    80003f2c:	00000597          	auipc	a1,0x0
    80003f30:	d7458593          	addi	a1,a1,-652 # 80003ca0 <_ZL8consumerPv>
    80003f34:	f9840513          	addi	a0,s0,-104
    80003f38:	ffffd097          	auipc	ra,0xffffd
    80003f3c:	674080e7          	jalr	1652(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003f40:	00000493          	li	s1,0
    80003f44:	0280006f          	j	80003f6c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003f48:	00000597          	auipc	a1,0x0
    80003f4c:	c1458593          	addi	a1,a1,-1004 # 80003b5c <_ZL16producerKeyboardPv>
                      data + i);
    80003f50:	00179613          	slli	a2,a5,0x1
    80003f54:	00f60633          	add	a2,a2,a5
    80003f58:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003f5c:	00c98633          	add	a2,s3,a2
    80003f60:	ffffd097          	auipc	ra,0xffffd
    80003f64:	64c080e7          	jalr	1612(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003f68:	0014849b          	addiw	s1,s1,1
    80003f6c:	0524d263          	bge	s1,s2,80003fb0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003f70:	00149793          	slli	a5,s1,0x1
    80003f74:	009787b3          	add	a5,a5,s1
    80003f78:	00379793          	slli	a5,a5,0x3
    80003f7c:	00f987b3          	add	a5,s3,a5
    80003f80:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003f84:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003f88:	00009717          	auipc	a4,0x9
    80003f8c:	da073703          	ld	a4,-608(a4) # 8000cd28 <_ZL10waitForAll>
    80003f90:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003f94:	00048793          	mv	a5,s1
    80003f98:	00349513          	slli	a0,s1,0x3
    80003f9c:	00aa8533          	add	a0,s5,a0
    80003fa0:	fa9054e3          	blez	s1,80003f48 <_Z22producerConsumer_C_APIv+0x1c8>
    80003fa4:	00000597          	auipc	a1,0x0
    80003fa8:	c6858593          	addi	a1,a1,-920 # 80003c0c <_ZL8producerPv>
    80003fac:	fa5ff06f          	j	80003f50 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003fb0:	ffffd097          	auipc	ra,0xffffd
    80003fb4:	6a0080e7          	jalr	1696(ra) # 80001650 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003fb8:	00000493          	li	s1,0
    80003fbc:	00994e63          	blt	s2,s1,80003fd8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003fc0:	00009517          	auipc	a0,0x9
    80003fc4:	d6853503          	ld	a0,-664(a0) # 8000cd28 <_ZL10waitForAll>
    80003fc8:	ffffd097          	auipc	ra,0xffffd
    80003fcc:	730080e7          	jalr	1840(ra) # 800016f8 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003fd0:	0014849b          	addiw	s1,s1,1
    80003fd4:	fe9ff06f          	j	80003fbc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003fd8:	00009517          	auipc	a0,0x9
    80003fdc:	d5053503          	ld	a0,-688(a0) # 8000cd28 <_ZL10waitForAll>
    80003fe0:	ffffd097          	auipc	ra,0xffffd
    80003fe4:	6f0080e7          	jalr	1776(ra) # 800016d0 <sem_close>
    delete buffer;
    80003fe8:	000a0e63          	beqz	s4,80004004 <_Z22producerConsumer_C_APIv+0x284>
    80003fec:	000a0513          	mv	a0,s4
    80003ff0:	00003097          	auipc	ra,0x3
    80003ff4:	154080e7          	jalr	340(ra) # 80007144 <_ZN6BufferD1Ev>
    80003ff8:	000a0513          	mv	a0,s4
    80003ffc:	fffff097          	auipc	ra,0xfffff
    80004000:	1b4080e7          	jalr	436(ra) # 800031b0 <_ZdlPv>
    80004004:	000b0113          	mv	sp,s6

}
    80004008:	f9040113          	addi	sp,s0,-112
    8000400c:	06813083          	ld	ra,104(sp)
    80004010:	06013403          	ld	s0,96(sp)
    80004014:	05813483          	ld	s1,88(sp)
    80004018:	05013903          	ld	s2,80(sp)
    8000401c:	04813983          	ld	s3,72(sp)
    80004020:	04013a03          	ld	s4,64(sp)
    80004024:	03813a83          	ld	s5,56(sp)
    80004028:	03013b03          	ld	s6,48(sp)
    8000402c:	07010113          	addi	sp,sp,112
    80004030:	00008067          	ret
    80004034:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004038:	000a0513          	mv	a0,s4
    8000403c:	fffff097          	auipc	ra,0xfffff
    80004040:	174080e7          	jalr	372(ra) # 800031b0 <_ZdlPv>
    80004044:	00048513          	mv	a0,s1
    80004048:	0000a097          	auipc	ra,0xa
    8000404c:	df0080e7          	jalr	-528(ra) # 8000de38 <_Unwind_Resume>

0000000080004050 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004050:	fe010113          	addi	sp,sp,-32
    80004054:	00113c23          	sd	ra,24(sp)
    80004058:	00813823          	sd	s0,16(sp)
    8000405c:	00913423          	sd	s1,8(sp)
    80004060:	01213023          	sd	s2,0(sp)
    80004064:	02010413          	addi	s0,sp,32
    80004068:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000406c:	00100793          	li	a5,1
    80004070:	02a7f863          	bgeu	a5,a0,800040a0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004074:	00a00793          	li	a5,10
    80004078:	02f577b3          	remu	a5,a0,a5
    8000407c:	02078e63          	beqz	a5,800040b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004080:	fff48513          	addi	a0,s1,-1
    80004084:	00000097          	auipc	ra,0x0
    80004088:	fcc080e7          	jalr	-52(ra) # 80004050 <_ZL9fibonaccim>
    8000408c:	00050913          	mv	s2,a0
    80004090:	ffe48513          	addi	a0,s1,-2
    80004094:	00000097          	auipc	ra,0x0
    80004098:	fbc080e7          	jalr	-68(ra) # 80004050 <_ZL9fibonaccim>
    8000409c:	00a90533          	add	a0,s2,a0
}
    800040a0:	01813083          	ld	ra,24(sp)
    800040a4:	01013403          	ld	s0,16(sp)
    800040a8:	00813483          	ld	s1,8(sp)
    800040ac:	00013903          	ld	s2,0(sp)
    800040b0:	02010113          	addi	sp,sp,32
    800040b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800040b8:	ffffd097          	auipc	ra,0xffffd
    800040bc:	598080e7          	jalr	1432(ra) # 80001650 <thread_dispatch>
    800040c0:	fc1ff06f          	j	80004080 <_ZL9fibonaccim+0x30>

00000000800040c4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800040c4:	fe010113          	addi	sp,sp,-32
    800040c8:	00113c23          	sd	ra,24(sp)
    800040cc:	00813823          	sd	s0,16(sp)
    800040d0:	00913423          	sd	s1,8(sp)
    800040d4:	01213023          	sd	s2,0(sp)
    800040d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800040dc:	00000913          	li	s2,0
    800040e0:	0380006f          	j	80004118 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800040e4:	ffffd097          	auipc	ra,0xffffd
    800040e8:	56c080e7          	jalr	1388(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800040ec:	00148493          	addi	s1,s1,1
    800040f0:	000027b7          	lui	a5,0x2
    800040f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800040f8:	0097ee63          	bltu	a5,s1,80004114 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040fc:	00000713          	li	a4,0
    80004100:	000077b7          	lui	a5,0x7
    80004104:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004108:	fce7eee3          	bltu	a5,a4,800040e4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000410c:	00170713          	addi	a4,a4,1
    80004110:	ff1ff06f          	j	80004100 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004114:	00190913          	addi	s2,s2,1
    80004118:	00900793          	li	a5,9
    8000411c:	0527e063          	bltu	a5,s2,8000415c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004120:	00006517          	auipc	a0,0x6
    80004124:	0f850513          	addi	a0,a0,248 # 8000a218 <CONSOLE_STATUS+0x208>
    80004128:	00002097          	auipc	ra,0x2
    8000412c:	000080e7          	jalr	ra # 80006128 <_Z11printStringPKc>
    80004130:	00000613          	li	a2,0
    80004134:	00a00593          	li	a1,10
    80004138:	0009051b          	sext.w	a0,s2
    8000413c:	00002097          	auipc	ra,0x2
    80004140:	19c080e7          	jalr	412(ra) # 800062d8 <_Z8printIntiii>
    80004144:	00006517          	auipc	a0,0x6
    80004148:	34450513          	addi	a0,a0,836 # 8000a488 <CONSOLE_STATUS+0x478>
    8000414c:	00002097          	auipc	ra,0x2
    80004150:	fdc080e7          	jalr	-36(ra) # 80006128 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004154:	00000493          	li	s1,0
    80004158:	f99ff06f          	j	800040f0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000415c:	00006517          	auipc	a0,0x6
    80004160:	0c450513          	addi	a0,a0,196 # 8000a220 <CONSOLE_STATUS+0x210>
    80004164:	00002097          	auipc	ra,0x2
    80004168:	fc4080e7          	jalr	-60(ra) # 80006128 <_Z11printStringPKc>
    finishedA = true;
    8000416c:	00100793          	li	a5,1
    80004170:	00009717          	auipc	a4,0x9
    80004174:	bcf70023          	sb	a5,-1088(a4) # 8000cd30 <_ZL9finishedA>
}
    80004178:	01813083          	ld	ra,24(sp)
    8000417c:	01013403          	ld	s0,16(sp)
    80004180:	00813483          	ld	s1,8(sp)
    80004184:	00013903          	ld	s2,0(sp)
    80004188:	02010113          	addi	sp,sp,32
    8000418c:	00008067          	ret

0000000080004190 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	00113c23          	sd	ra,24(sp)
    80004198:	00813823          	sd	s0,16(sp)
    8000419c:	00913423          	sd	s1,8(sp)
    800041a0:	01213023          	sd	s2,0(sp)
    800041a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800041a8:	00000913          	li	s2,0
    800041ac:	0380006f          	j	800041e4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800041b0:	ffffd097          	auipc	ra,0xffffd
    800041b4:	4a0080e7          	jalr	1184(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800041b8:	00148493          	addi	s1,s1,1
    800041bc:	000027b7          	lui	a5,0x2
    800041c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800041c4:	0097ee63          	bltu	a5,s1,800041e0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800041c8:	00000713          	li	a4,0
    800041cc:	000077b7          	lui	a5,0x7
    800041d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800041d4:	fce7eee3          	bltu	a5,a4,800041b0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800041d8:	00170713          	addi	a4,a4,1
    800041dc:	ff1ff06f          	j	800041cc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800041e0:	00190913          	addi	s2,s2,1
    800041e4:	00f00793          	li	a5,15
    800041e8:	0527e063          	bltu	a5,s2,80004228 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800041ec:	00006517          	auipc	a0,0x6
    800041f0:	04450513          	addi	a0,a0,68 # 8000a230 <CONSOLE_STATUS+0x220>
    800041f4:	00002097          	auipc	ra,0x2
    800041f8:	f34080e7          	jalr	-204(ra) # 80006128 <_Z11printStringPKc>
    800041fc:	00000613          	li	a2,0
    80004200:	00a00593          	li	a1,10
    80004204:	0009051b          	sext.w	a0,s2
    80004208:	00002097          	auipc	ra,0x2
    8000420c:	0d0080e7          	jalr	208(ra) # 800062d8 <_Z8printIntiii>
    80004210:	00006517          	auipc	a0,0x6
    80004214:	27850513          	addi	a0,a0,632 # 8000a488 <CONSOLE_STATUS+0x478>
    80004218:	00002097          	auipc	ra,0x2
    8000421c:	f10080e7          	jalr	-240(ra) # 80006128 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004220:	00000493          	li	s1,0
    80004224:	f99ff06f          	j	800041bc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004228:	00006517          	auipc	a0,0x6
    8000422c:	01050513          	addi	a0,a0,16 # 8000a238 <CONSOLE_STATUS+0x228>
    80004230:	00002097          	auipc	ra,0x2
    80004234:	ef8080e7          	jalr	-264(ra) # 80006128 <_Z11printStringPKc>
    finishedB = true;
    80004238:	00100793          	li	a5,1
    8000423c:	00009717          	auipc	a4,0x9
    80004240:	aef70aa3          	sb	a5,-1291(a4) # 8000cd31 <_ZL9finishedB>
    thread_dispatch();
    80004244:	ffffd097          	auipc	ra,0xffffd
    80004248:	40c080e7          	jalr	1036(ra) # 80001650 <thread_dispatch>
}
    8000424c:	01813083          	ld	ra,24(sp)
    80004250:	01013403          	ld	s0,16(sp)
    80004254:	00813483          	ld	s1,8(sp)
    80004258:	00013903          	ld	s2,0(sp)
    8000425c:	02010113          	addi	sp,sp,32
    80004260:	00008067          	ret

0000000080004264 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00913423          	sd	s1,8(sp)
    80004274:	01213023          	sd	s2,0(sp)
    80004278:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000427c:	00000493          	li	s1,0
    80004280:	0400006f          	j	800042c0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004284:	00006517          	auipc	a0,0x6
    80004288:	fc450513          	addi	a0,a0,-60 # 8000a248 <CONSOLE_STATUS+0x238>
    8000428c:	00002097          	auipc	ra,0x2
    80004290:	e9c080e7          	jalr	-356(ra) # 80006128 <_Z11printStringPKc>
    80004294:	00000613          	li	a2,0
    80004298:	00a00593          	li	a1,10
    8000429c:	00048513          	mv	a0,s1
    800042a0:	00002097          	auipc	ra,0x2
    800042a4:	038080e7          	jalr	56(ra) # 800062d8 <_Z8printIntiii>
    800042a8:	00006517          	auipc	a0,0x6
    800042ac:	1e050513          	addi	a0,a0,480 # 8000a488 <CONSOLE_STATUS+0x478>
    800042b0:	00002097          	auipc	ra,0x2
    800042b4:	e78080e7          	jalr	-392(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800042b8:	0014849b          	addiw	s1,s1,1
    800042bc:	0ff4f493          	andi	s1,s1,255
    800042c0:	00200793          	li	a5,2
    800042c4:	fc97f0e3          	bgeu	a5,s1,80004284 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800042c8:	00006517          	auipc	a0,0x6
    800042cc:	f8850513          	addi	a0,a0,-120 # 8000a250 <CONSOLE_STATUS+0x240>
    800042d0:	00002097          	auipc	ra,0x2
    800042d4:	e58080e7          	jalr	-424(ra) # 80006128 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800042d8:	00700313          	li	t1,7
    thread_dispatch();
    800042dc:	ffffd097          	auipc	ra,0xffffd
    800042e0:	374080e7          	jalr	884(ra) # 80001650 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800042e4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800042e8:	00006517          	auipc	a0,0x6
    800042ec:	f7850513          	addi	a0,a0,-136 # 8000a260 <CONSOLE_STATUS+0x250>
    800042f0:	00002097          	auipc	ra,0x2
    800042f4:	e38080e7          	jalr	-456(ra) # 80006128 <_Z11printStringPKc>
    800042f8:	00000613          	li	a2,0
    800042fc:	00a00593          	li	a1,10
    80004300:	0009051b          	sext.w	a0,s2
    80004304:	00002097          	auipc	ra,0x2
    80004308:	fd4080e7          	jalr	-44(ra) # 800062d8 <_Z8printIntiii>
    8000430c:	00006517          	auipc	a0,0x6
    80004310:	17c50513          	addi	a0,a0,380 # 8000a488 <CONSOLE_STATUS+0x478>
    80004314:	00002097          	auipc	ra,0x2
    80004318:	e14080e7          	jalr	-492(ra) # 80006128 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000431c:	00c00513          	li	a0,12
    80004320:	00000097          	auipc	ra,0x0
    80004324:	d30080e7          	jalr	-720(ra) # 80004050 <_ZL9fibonaccim>
    80004328:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000432c:	00006517          	auipc	a0,0x6
    80004330:	f3c50513          	addi	a0,a0,-196 # 8000a268 <CONSOLE_STATUS+0x258>
    80004334:	00002097          	auipc	ra,0x2
    80004338:	df4080e7          	jalr	-524(ra) # 80006128 <_Z11printStringPKc>
    8000433c:	00000613          	li	a2,0
    80004340:	00a00593          	li	a1,10
    80004344:	0009051b          	sext.w	a0,s2
    80004348:	00002097          	auipc	ra,0x2
    8000434c:	f90080e7          	jalr	-112(ra) # 800062d8 <_Z8printIntiii>
    80004350:	00006517          	auipc	a0,0x6
    80004354:	13850513          	addi	a0,a0,312 # 8000a488 <CONSOLE_STATUS+0x478>
    80004358:	00002097          	auipc	ra,0x2
    8000435c:	dd0080e7          	jalr	-560(ra) # 80006128 <_Z11printStringPKc>
    80004360:	0400006f          	j	800043a0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004364:	00006517          	auipc	a0,0x6
    80004368:	ee450513          	addi	a0,a0,-284 # 8000a248 <CONSOLE_STATUS+0x238>
    8000436c:	00002097          	auipc	ra,0x2
    80004370:	dbc080e7          	jalr	-580(ra) # 80006128 <_Z11printStringPKc>
    80004374:	00000613          	li	a2,0
    80004378:	00a00593          	li	a1,10
    8000437c:	00048513          	mv	a0,s1
    80004380:	00002097          	auipc	ra,0x2
    80004384:	f58080e7          	jalr	-168(ra) # 800062d8 <_Z8printIntiii>
    80004388:	00006517          	auipc	a0,0x6
    8000438c:	10050513          	addi	a0,a0,256 # 8000a488 <CONSOLE_STATUS+0x478>
    80004390:	00002097          	auipc	ra,0x2
    80004394:	d98080e7          	jalr	-616(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004398:	0014849b          	addiw	s1,s1,1
    8000439c:	0ff4f493          	andi	s1,s1,255
    800043a0:	00500793          	li	a5,5
    800043a4:	fc97f0e3          	bgeu	a5,s1,80004364 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800043a8:	00006517          	auipc	a0,0x6
    800043ac:	e7850513          	addi	a0,a0,-392 # 8000a220 <CONSOLE_STATUS+0x210>
    800043b0:	00002097          	auipc	ra,0x2
    800043b4:	d78080e7          	jalr	-648(ra) # 80006128 <_Z11printStringPKc>
    finishedC = true;
    800043b8:	00100793          	li	a5,1
    800043bc:	00009717          	auipc	a4,0x9
    800043c0:	96f70b23          	sb	a5,-1674(a4) # 8000cd32 <_ZL9finishedC>
    thread_dispatch();
    800043c4:	ffffd097          	auipc	ra,0xffffd
    800043c8:	28c080e7          	jalr	652(ra) # 80001650 <thread_dispatch>
}
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	00013903          	ld	s2,0(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret

00000000800043e4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800043e4:	fe010113          	addi	sp,sp,-32
    800043e8:	00113c23          	sd	ra,24(sp)
    800043ec:	00813823          	sd	s0,16(sp)
    800043f0:	00913423          	sd	s1,8(sp)
    800043f4:	01213023          	sd	s2,0(sp)
    800043f8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800043fc:	00a00493          	li	s1,10
    80004400:	0400006f          	j	80004440 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004404:	00006517          	auipc	a0,0x6
    80004408:	e7450513          	addi	a0,a0,-396 # 8000a278 <CONSOLE_STATUS+0x268>
    8000440c:	00002097          	auipc	ra,0x2
    80004410:	d1c080e7          	jalr	-740(ra) # 80006128 <_Z11printStringPKc>
    80004414:	00000613          	li	a2,0
    80004418:	00a00593          	li	a1,10
    8000441c:	00048513          	mv	a0,s1
    80004420:	00002097          	auipc	ra,0x2
    80004424:	eb8080e7          	jalr	-328(ra) # 800062d8 <_Z8printIntiii>
    80004428:	00006517          	auipc	a0,0x6
    8000442c:	06050513          	addi	a0,a0,96 # 8000a488 <CONSOLE_STATUS+0x478>
    80004430:	00002097          	auipc	ra,0x2
    80004434:	cf8080e7          	jalr	-776(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004438:	0014849b          	addiw	s1,s1,1
    8000443c:	0ff4f493          	andi	s1,s1,255
    80004440:	00c00793          	li	a5,12
    80004444:	fc97f0e3          	bgeu	a5,s1,80004404 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004448:	00006517          	auipc	a0,0x6
    8000444c:	e3850513          	addi	a0,a0,-456 # 8000a280 <CONSOLE_STATUS+0x270>
    80004450:	00002097          	auipc	ra,0x2
    80004454:	cd8080e7          	jalr	-808(ra) # 80006128 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004458:	00500313          	li	t1,5
    thread_dispatch();
    8000445c:	ffffd097          	auipc	ra,0xffffd
    80004460:	1f4080e7          	jalr	500(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004464:	01000513          	li	a0,16
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	be8080e7          	jalr	-1048(ra) # 80004050 <_ZL9fibonaccim>
    80004470:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004474:	00006517          	auipc	a0,0x6
    80004478:	e1c50513          	addi	a0,a0,-484 # 8000a290 <CONSOLE_STATUS+0x280>
    8000447c:	00002097          	auipc	ra,0x2
    80004480:	cac080e7          	jalr	-852(ra) # 80006128 <_Z11printStringPKc>
    80004484:	00000613          	li	a2,0
    80004488:	00a00593          	li	a1,10
    8000448c:	0009051b          	sext.w	a0,s2
    80004490:	00002097          	auipc	ra,0x2
    80004494:	e48080e7          	jalr	-440(ra) # 800062d8 <_Z8printIntiii>
    80004498:	00006517          	auipc	a0,0x6
    8000449c:	ff050513          	addi	a0,a0,-16 # 8000a488 <CONSOLE_STATUS+0x478>
    800044a0:	00002097          	auipc	ra,0x2
    800044a4:	c88080e7          	jalr	-888(ra) # 80006128 <_Z11printStringPKc>
    800044a8:	0400006f          	j	800044e8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044ac:	00006517          	auipc	a0,0x6
    800044b0:	dcc50513          	addi	a0,a0,-564 # 8000a278 <CONSOLE_STATUS+0x268>
    800044b4:	00002097          	auipc	ra,0x2
    800044b8:	c74080e7          	jalr	-908(ra) # 80006128 <_Z11printStringPKc>
    800044bc:	00000613          	li	a2,0
    800044c0:	00a00593          	li	a1,10
    800044c4:	00048513          	mv	a0,s1
    800044c8:	00002097          	auipc	ra,0x2
    800044cc:	e10080e7          	jalr	-496(ra) # 800062d8 <_Z8printIntiii>
    800044d0:	00006517          	auipc	a0,0x6
    800044d4:	fb850513          	addi	a0,a0,-72 # 8000a488 <CONSOLE_STATUS+0x478>
    800044d8:	00002097          	auipc	ra,0x2
    800044dc:	c50080e7          	jalr	-944(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800044e0:	0014849b          	addiw	s1,s1,1
    800044e4:	0ff4f493          	andi	s1,s1,255
    800044e8:	00f00793          	li	a5,15
    800044ec:	fc97f0e3          	bgeu	a5,s1,800044ac <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800044f0:	00006517          	auipc	a0,0x6
    800044f4:	db050513          	addi	a0,a0,-592 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800044f8:	00002097          	auipc	ra,0x2
    800044fc:	c30080e7          	jalr	-976(ra) # 80006128 <_Z11printStringPKc>
    finishedD = true;
    80004500:	00100793          	li	a5,1
    80004504:	00009717          	auipc	a4,0x9
    80004508:	82f707a3          	sb	a5,-2001(a4) # 8000cd33 <_ZL9finishedD>
    thread_dispatch();
    8000450c:	ffffd097          	auipc	ra,0xffffd
    80004510:	144080e7          	jalr	324(ra) # 80001650 <thread_dispatch>
}
    80004514:	01813083          	ld	ra,24(sp)
    80004518:	01013403          	ld	s0,16(sp)
    8000451c:	00813483          	ld	s1,8(sp)
    80004520:	00013903          	ld	s2,0(sp)
    80004524:	02010113          	addi	sp,sp,32
    80004528:	00008067          	ret

000000008000452c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000452c:	fc010113          	addi	sp,sp,-64
    80004530:	02113c23          	sd	ra,56(sp)
    80004534:	02813823          	sd	s0,48(sp)
    80004538:	02913423          	sd	s1,40(sp)
    8000453c:	03213023          	sd	s2,32(sp)
    80004540:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004544:	02000513          	li	a0,32
    80004548:	fffff097          	auipc	ra,0xfffff
    8000454c:	c40080e7          	jalr	-960(ra) # 80003188 <_Znwm>
    80004550:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004554:	fffff097          	auipc	ra,0xfffff
    80004558:	d1c080e7          	jalr	-740(ra) # 80003270 <_ZN6ThreadC1Ev>
    8000455c:	00008797          	auipc	a5,0x8
    80004560:	2e478793          	addi	a5,a5,740 # 8000c840 <_ZTV7WorkerA+0x10>
    80004564:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004568:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000456c:	00006517          	auipc	a0,0x6
    80004570:	d4450513          	addi	a0,a0,-700 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80004574:	00002097          	auipc	ra,0x2
    80004578:	bb4080e7          	jalr	-1100(ra) # 80006128 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000457c:	02000513          	li	a0,32
    80004580:	fffff097          	auipc	ra,0xfffff
    80004584:	c08080e7          	jalr	-1016(ra) # 80003188 <_Znwm>
    80004588:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000458c:	fffff097          	auipc	ra,0xfffff
    80004590:	ce4080e7          	jalr	-796(ra) # 80003270 <_ZN6ThreadC1Ev>
    80004594:	00008797          	auipc	a5,0x8
    80004598:	2d478793          	addi	a5,a5,724 # 8000c868 <_ZTV7WorkerB+0x10>
    8000459c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800045a0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800045a4:	00006517          	auipc	a0,0x6
    800045a8:	d2450513          	addi	a0,a0,-732 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800045ac:	00002097          	auipc	ra,0x2
    800045b0:	b7c080e7          	jalr	-1156(ra) # 80006128 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800045b4:	02000513          	li	a0,32
    800045b8:	fffff097          	auipc	ra,0xfffff
    800045bc:	bd0080e7          	jalr	-1072(ra) # 80003188 <_Znwm>
    800045c0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800045c4:	fffff097          	auipc	ra,0xfffff
    800045c8:	cac080e7          	jalr	-852(ra) # 80003270 <_ZN6ThreadC1Ev>
    800045cc:	00008797          	auipc	a5,0x8
    800045d0:	2c478793          	addi	a5,a5,708 # 8000c890 <_ZTV7WorkerC+0x10>
    800045d4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800045d8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800045dc:	00006517          	auipc	a0,0x6
    800045e0:	d0450513          	addi	a0,a0,-764 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800045e4:	00002097          	auipc	ra,0x2
    800045e8:	b44080e7          	jalr	-1212(ra) # 80006128 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800045ec:	02000513          	li	a0,32
    800045f0:	fffff097          	auipc	ra,0xfffff
    800045f4:	b98080e7          	jalr	-1128(ra) # 80003188 <_Znwm>
    800045f8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800045fc:	fffff097          	auipc	ra,0xfffff
    80004600:	c74080e7          	jalr	-908(ra) # 80003270 <_ZN6ThreadC1Ev>
    80004604:	00008797          	auipc	a5,0x8
    80004608:	2b478793          	addi	a5,a5,692 # 8000c8b8 <_ZTV7WorkerD+0x10>
    8000460c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004610:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004614:	00006517          	auipc	a0,0x6
    80004618:	ce450513          	addi	a0,a0,-796 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    8000461c:	00002097          	auipc	ra,0x2
    80004620:	b0c080e7          	jalr	-1268(ra) # 80006128 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004624:	00000493          	li	s1,0
    80004628:	00300793          	li	a5,3
    8000462c:	0297c663          	blt	a5,s1,80004658 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004630:	00349793          	slli	a5,s1,0x3
    80004634:	fe040713          	addi	a4,s0,-32
    80004638:	00f707b3          	add	a5,a4,a5
    8000463c:	fe07b503          	ld	a0,-32(a5)
    80004640:	fffff097          	auipc	ra,0xfffff
    80004644:	c60080e7          	jalr	-928(ra) # 800032a0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004648:	0014849b          	addiw	s1,s1,1
    8000464c:	fddff06f          	j	80004628 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004650:	fffff097          	auipc	ra,0xfffff
    80004654:	ca4080e7          	jalr	-860(ra) # 800032f4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004658:	00008797          	auipc	a5,0x8
    8000465c:	6d87c783          	lbu	a5,1752(a5) # 8000cd30 <_ZL9finishedA>
    80004660:	fe0788e3          	beqz	a5,80004650 <_Z20Threads_CPP_API_testv+0x124>
    80004664:	00008797          	auipc	a5,0x8
    80004668:	6cd7c783          	lbu	a5,1741(a5) # 8000cd31 <_ZL9finishedB>
    8000466c:	fe0782e3          	beqz	a5,80004650 <_Z20Threads_CPP_API_testv+0x124>
    80004670:	00008797          	auipc	a5,0x8
    80004674:	6c27c783          	lbu	a5,1730(a5) # 8000cd32 <_ZL9finishedC>
    80004678:	fc078ce3          	beqz	a5,80004650 <_Z20Threads_CPP_API_testv+0x124>
    8000467c:	00008797          	auipc	a5,0x8
    80004680:	6b77c783          	lbu	a5,1719(a5) # 8000cd33 <_ZL9finishedD>
    80004684:	fc0786e3          	beqz	a5,80004650 <_Z20Threads_CPP_API_testv+0x124>
    80004688:	fc040493          	addi	s1,s0,-64
    8000468c:	0080006f          	j	80004694 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004690:	00848493          	addi	s1,s1,8
    80004694:	fe040793          	addi	a5,s0,-32
    80004698:	08f48663          	beq	s1,a5,80004724 <_Z20Threads_CPP_API_testv+0x1f8>
    8000469c:	0004b503          	ld	a0,0(s1)
    800046a0:	fe0508e3          	beqz	a0,80004690 <_Z20Threads_CPP_API_testv+0x164>
    800046a4:	00053783          	ld	a5,0(a0)
    800046a8:	0087b783          	ld	a5,8(a5)
    800046ac:	000780e7          	jalr	a5
    800046b0:	fe1ff06f          	j	80004690 <_Z20Threads_CPP_API_testv+0x164>
    800046b4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800046b8:	00048513          	mv	a0,s1
    800046bc:	fffff097          	auipc	ra,0xfffff
    800046c0:	af4080e7          	jalr	-1292(ra) # 800031b0 <_ZdlPv>
    800046c4:	00090513          	mv	a0,s2
    800046c8:	00009097          	auipc	ra,0x9
    800046cc:	770080e7          	jalr	1904(ra) # 8000de38 <_Unwind_Resume>
    800046d0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800046d4:	00048513          	mv	a0,s1
    800046d8:	fffff097          	auipc	ra,0xfffff
    800046dc:	ad8080e7          	jalr	-1320(ra) # 800031b0 <_ZdlPv>
    800046e0:	00090513          	mv	a0,s2
    800046e4:	00009097          	auipc	ra,0x9
    800046e8:	754080e7          	jalr	1876(ra) # 8000de38 <_Unwind_Resume>
    800046ec:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800046f0:	00048513          	mv	a0,s1
    800046f4:	fffff097          	auipc	ra,0xfffff
    800046f8:	abc080e7          	jalr	-1348(ra) # 800031b0 <_ZdlPv>
    800046fc:	00090513          	mv	a0,s2
    80004700:	00009097          	auipc	ra,0x9
    80004704:	738080e7          	jalr	1848(ra) # 8000de38 <_Unwind_Resume>
    80004708:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000470c:	00048513          	mv	a0,s1
    80004710:	fffff097          	auipc	ra,0xfffff
    80004714:	aa0080e7          	jalr	-1376(ra) # 800031b0 <_ZdlPv>
    80004718:	00090513          	mv	a0,s2
    8000471c:	00009097          	auipc	ra,0x9
    80004720:	71c080e7          	jalr	1820(ra) # 8000de38 <_Unwind_Resume>
}
    80004724:	03813083          	ld	ra,56(sp)
    80004728:	03013403          	ld	s0,48(sp)
    8000472c:	02813483          	ld	s1,40(sp)
    80004730:	02013903          	ld	s2,32(sp)
    80004734:	04010113          	addi	sp,sp,64
    80004738:	00008067          	ret

000000008000473c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000473c:	ff010113          	addi	sp,sp,-16
    80004740:	00113423          	sd	ra,8(sp)
    80004744:	00813023          	sd	s0,0(sp)
    80004748:	01010413          	addi	s0,sp,16
    8000474c:	00008797          	auipc	a5,0x8
    80004750:	0f478793          	addi	a5,a5,244 # 8000c840 <_ZTV7WorkerA+0x10>
    80004754:	00f53023          	sd	a5,0(a0)
    80004758:	fffff097          	auipc	ra,0xfffff
    8000475c:	960080e7          	jalr	-1696(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80004760:	00813083          	ld	ra,8(sp)
    80004764:	00013403          	ld	s0,0(sp)
    80004768:	01010113          	addi	sp,sp,16
    8000476c:	00008067          	ret

0000000080004770 <_ZN7WorkerAD0Ev>:
    80004770:	fe010113          	addi	sp,sp,-32
    80004774:	00113c23          	sd	ra,24(sp)
    80004778:	00813823          	sd	s0,16(sp)
    8000477c:	00913423          	sd	s1,8(sp)
    80004780:	02010413          	addi	s0,sp,32
    80004784:	00050493          	mv	s1,a0
    80004788:	00008797          	auipc	a5,0x8
    8000478c:	0b878793          	addi	a5,a5,184 # 8000c840 <_ZTV7WorkerA+0x10>
    80004790:	00f53023          	sd	a5,0(a0)
    80004794:	fffff097          	auipc	ra,0xfffff
    80004798:	924080e7          	jalr	-1756(ra) # 800030b8 <_ZN6ThreadD1Ev>
    8000479c:	00048513          	mv	a0,s1
    800047a0:	fffff097          	auipc	ra,0xfffff
    800047a4:	a10080e7          	jalr	-1520(ra) # 800031b0 <_ZdlPv>
    800047a8:	01813083          	ld	ra,24(sp)
    800047ac:	01013403          	ld	s0,16(sp)
    800047b0:	00813483          	ld	s1,8(sp)
    800047b4:	02010113          	addi	sp,sp,32
    800047b8:	00008067          	ret

00000000800047bc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800047bc:	ff010113          	addi	sp,sp,-16
    800047c0:	00113423          	sd	ra,8(sp)
    800047c4:	00813023          	sd	s0,0(sp)
    800047c8:	01010413          	addi	s0,sp,16
    800047cc:	00008797          	auipc	a5,0x8
    800047d0:	09c78793          	addi	a5,a5,156 # 8000c868 <_ZTV7WorkerB+0x10>
    800047d4:	00f53023          	sd	a5,0(a0)
    800047d8:	fffff097          	auipc	ra,0xfffff
    800047dc:	8e0080e7          	jalr	-1824(ra) # 800030b8 <_ZN6ThreadD1Ev>
    800047e0:	00813083          	ld	ra,8(sp)
    800047e4:	00013403          	ld	s0,0(sp)
    800047e8:	01010113          	addi	sp,sp,16
    800047ec:	00008067          	ret

00000000800047f0 <_ZN7WorkerBD0Ev>:
    800047f0:	fe010113          	addi	sp,sp,-32
    800047f4:	00113c23          	sd	ra,24(sp)
    800047f8:	00813823          	sd	s0,16(sp)
    800047fc:	00913423          	sd	s1,8(sp)
    80004800:	02010413          	addi	s0,sp,32
    80004804:	00050493          	mv	s1,a0
    80004808:	00008797          	auipc	a5,0x8
    8000480c:	06078793          	addi	a5,a5,96 # 8000c868 <_ZTV7WorkerB+0x10>
    80004810:	00f53023          	sd	a5,0(a0)
    80004814:	fffff097          	auipc	ra,0xfffff
    80004818:	8a4080e7          	jalr	-1884(ra) # 800030b8 <_ZN6ThreadD1Ev>
    8000481c:	00048513          	mv	a0,s1
    80004820:	fffff097          	auipc	ra,0xfffff
    80004824:	990080e7          	jalr	-1648(ra) # 800031b0 <_ZdlPv>
    80004828:	01813083          	ld	ra,24(sp)
    8000482c:	01013403          	ld	s0,16(sp)
    80004830:	00813483          	ld	s1,8(sp)
    80004834:	02010113          	addi	sp,sp,32
    80004838:	00008067          	ret

000000008000483c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000483c:	ff010113          	addi	sp,sp,-16
    80004840:	00113423          	sd	ra,8(sp)
    80004844:	00813023          	sd	s0,0(sp)
    80004848:	01010413          	addi	s0,sp,16
    8000484c:	00008797          	auipc	a5,0x8
    80004850:	04478793          	addi	a5,a5,68 # 8000c890 <_ZTV7WorkerC+0x10>
    80004854:	00f53023          	sd	a5,0(a0)
    80004858:	fffff097          	auipc	ra,0xfffff
    8000485c:	860080e7          	jalr	-1952(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80004860:	00813083          	ld	ra,8(sp)
    80004864:	00013403          	ld	s0,0(sp)
    80004868:	01010113          	addi	sp,sp,16
    8000486c:	00008067          	ret

0000000080004870 <_ZN7WorkerCD0Ev>:
    80004870:	fe010113          	addi	sp,sp,-32
    80004874:	00113c23          	sd	ra,24(sp)
    80004878:	00813823          	sd	s0,16(sp)
    8000487c:	00913423          	sd	s1,8(sp)
    80004880:	02010413          	addi	s0,sp,32
    80004884:	00050493          	mv	s1,a0
    80004888:	00008797          	auipc	a5,0x8
    8000488c:	00878793          	addi	a5,a5,8 # 8000c890 <_ZTV7WorkerC+0x10>
    80004890:	00f53023          	sd	a5,0(a0)
    80004894:	fffff097          	auipc	ra,0xfffff
    80004898:	824080e7          	jalr	-2012(ra) # 800030b8 <_ZN6ThreadD1Ev>
    8000489c:	00048513          	mv	a0,s1
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	910080e7          	jalr	-1776(ra) # 800031b0 <_ZdlPv>
    800048a8:	01813083          	ld	ra,24(sp)
    800048ac:	01013403          	ld	s0,16(sp)
    800048b0:	00813483          	ld	s1,8(sp)
    800048b4:	02010113          	addi	sp,sp,32
    800048b8:	00008067          	ret

00000000800048bc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800048bc:	ff010113          	addi	sp,sp,-16
    800048c0:	00113423          	sd	ra,8(sp)
    800048c4:	00813023          	sd	s0,0(sp)
    800048c8:	01010413          	addi	s0,sp,16
    800048cc:	00008797          	auipc	a5,0x8
    800048d0:	fec78793          	addi	a5,a5,-20 # 8000c8b8 <_ZTV7WorkerD+0x10>
    800048d4:	00f53023          	sd	a5,0(a0)
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	7e0080e7          	jalr	2016(ra) # 800030b8 <_ZN6ThreadD1Ev>
    800048e0:	00813083          	ld	ra,8(sp)
    800048e4:	00013403          	ld	s0,0(sp)
    800048e8:	01010113          	addi	sp,sp,16
    800048ec:	00008067          	ret

00000000800048f0 <_ZN7WorkerDD0Ev>:
    800048f0:	fe010113          	addi	sp,sp,-32
    800048f4:	00113c23          	sd	ra,24(sp)
    800048f8:	00813823          	sd	s0,16(sp)
    800048fc:	00913423          	sd	s1,8(sp)
    80004900:	02010413          	addi	s0,sp,32
    80004904:	00050493          	mv	s1,a0
    80004908:	00008797          	auipc	a5,0x8
    8000490c:	fb078793          	addi	a5,a5,-80 # 8000c8b8 <_ZTV7WorkerD+0x10>
    80004910:	00f53023          	sd	a5,0(a0)
    80004914:	ffffe097          	auipc	ra,0xffffe
    80004918:	7a4080e7          	jalr	1956(ra) # 800030b8 <_ZN6ThreadD1Ev>
    8000491c:	00048513          	mv	a0,s1
    80004920:	fffff097          	auipc	ra,0xfffff
    80004924:	890080e7          	jalr	-1904(ra) # 800031b0 <_ZdlPv>
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret

000000008000493c <_ZN7WorkerA3runEv>:
    void run() override {
    8000493c:	ff010113          	addi	sp,sp,-16
    80004940:	00113423          	sd	ra,8(sp)
    80004944:	00813023          	sd	s0,0(sp)
    80004948:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000494c:	00000593          	li	a1,0
    80004950:	fffff097          	auipc	ra,0xfffff
    80004954:	774080e7          	jalr	1908(ra) # 800040c4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004958:	00813083          	ld	ra,8(sp)
    8000495c:	00013403          	ld	s0,0(sp)
    80004960:	01010113          	addi	sp,sp,16
    80004964:	00008067          	ret

0000000080004968 <_ZN7WorkerB3runEv>:
    void run() override {
    80004968:	ff010113          	addi	sp,sp,-16
    8000496c:	00113423          	sd	ra,8(sp)
    80004970:	00813023          	sd	s0,0(sp)
    80004974:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004978:	00000593          	li	a1,0
    8000497c:	00000097          	auipc	ra,0x0
    80004980:	814080e7          	jalr	-2028(ra) # 80004190 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004984:	00813083          	ld	ra,8(sp)
    80004988:	00013403          	ld	s0,0(sp)
    8000498c:	01010113          	addi	sp,sp,16
    80004990:	00008067          	ret

0000000080004994 <_ZN7WorkerC3runEv>:
    void run() override {
    80004994:	ff010113          	addi	sp,sp,-16
    80004998:	00113423          	sd	ra,8(sp)
    8000499c:	00813023          	sd	s0,0(sp)
    800049a0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800049a4:	00000593          	li	a1,0
    800049a8:	00000097          	auipc	ra,0x0
    800049ac:	8bc080e7          	jalr	-1860(ra) # 80004264 <_ZN7WorkerC11workerBodyCEPv>
    }
    800049b0:	00813083          	ld	ra,8(sp)
    800049b4:	00013403          	ld	s0,0(sp)
    800049b8:	01010113          	addi	sp,sp,16
    800049bc:	00008067          	ret

00000000800049c0 <_ZN7WorkerD3runEv>:
    void run() override {
    800049c0:	ff010113          	addi	sp,sp,-16
    800049c4:	00113423          	sd	ra,8(sp)
    800049c8:	00813023          	sd	s0,0(sp)
    800049cc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800049d0:	00000593          	li	a1,0
    800049d4:	00000097          	auipc	ra,0x0
    800049d8:	a10080e7          	jalr	-1520(ra) # 800043e4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800049dc:	00813083          	ld	ra,8(sp)
    800049e0:	00013403          	ld	s0,0(sp)
    800049e4:	01010113          	addi	sp,sp,16
    800049e8:	00008067          	ret

00000000800049ec <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800049ec:	f8010113          	addi	sp,sp,-128
    800049f0:	06113c23          	sd	ra,120(sp)
    800049f4:	06813823          	sd	s0,112(sp)
    800049f8:	06913423          	sd	s1,104(sp)
    800049fc:	07213023          	sd	s2,96(sp)
    80004a00:	05313c23          	sd	s3,88(sp)
    80004a04:	05413823          	sd	s4,80(sp)
    80004a08:	05513423          	sd	s5,72(sp)
    80004a0c:	05613023          	sd	s6,64(sp)
    80004a10:	03713c23          	sd	s7,56(sp)
    80004a14:	03813823          	sd	s8,48(sp)
    80004a18:	03913423          	sd	s9,40(sp)
    80004a1c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004a20:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004a24:	00005517          	auipc	a0,0x5
    80004a28:	70c50513          	addi	a0,a0,1804 # 8000a130 <CONSOLE_STATUS+0x120>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	6fc080e7          	jalr	1788(ra) # 80006128 <_Z11printStringPKc>
    getString(input, 30);
    80004a34:	01e00593          	li	a1,30
    80004a38:	f8040493          	addi	s1,s0,-128
    80004a3c:	00048513          	mv	a0,s1
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	770080e7          	jalr	1904(ra) # 800061b0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004a48:	00048513          	mv	a0,s1
    80004a4c:	00002097          	auipc	ra,0x2
    80004a50:	83c080e7          	jalr	-1988(ra) # 80006288 <_Z11stringToIntPKc>
    80004a54:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004a58:	00005517          	auipc	a0,0x5
    80004a5c:	6f850513          	addi	a0,a0,1784 # 8000a150 <CONSOLE_STATUS+0x140>
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	6c8080e7          	jalr	1736(ra) # 80006128 <_Z11printStringPKc>
    getString(input, 30);
    80004a68:	01e00593          	li	a1,30
    80004a6c:	00048513          	mv	a0,s1
    80004a70:	00001097          	auipc	ra,0x1
    80004a74:	740080e7          	jalr	1856(ra) # 800061b0 <_Z9getStringPci>
    n = stringToInt(input);
    80004a78:	00048513          	mv	a0,s1
    80004a7c:	00002097          	auipc	ra,0x2
    80004a80:	80c080e7          	jalr	-2036(ra) # 80006288 <_Z11stringToIntPKc>
    80004a84:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004a88:	00005517          	auipc	a0,0x5
    80004a8c:	6e850513          	addi	a0,a0,1768 # 8000a170 <CONSOLE_STATUS+0x160>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	698080e7          	jalr	1688(ra) # 80006128 <_Z11printStringPKc>
    printInt(threadNum);
    80004a98:	00000613          	li	a2,0
    80004a9c:	00a00593          	li	a1,10
    80004aa0:	00098513          	mv	a0,s3
    80004aa4:	00002097          	auipc	ra,0x2
    80004aa8:	834080e7          	jalr	-1996(ra) # 800062d8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004aac:	00005517          	auipc	a0,0x5
    80004ab0:	6dc50513          	addi	a0,a0,1756 # 8000a188 <CONSOLE_STATUS+0x178>
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	674080e7          	jalr	1652(ra) # 80006128 <_Z11printStringPKc>
    printInt(n);
    80004abc:	00000613          	li	a2,0
    80004ac0:	00a00593          	li	a1,10
    80004ac4:	00048513          	mv	a0,s1
    80004ac8:	00002097          	auipc	ra,0x2
    80004acc:	810080e7          	jalr	-2032(ra) # 800062d8 <_Z8printIntiii>
    printString(".\n");
    80004ad0:	00005517          	auipc	a0,0x5
    80004ad4:	6d050513          	addi	a0,a0,1744 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	650080e7          	jalr	1616(ra) # 80006128 <_Z11printStringPKc>
    if (threadNum > n) {
    80004ae0:	0334c463          	blt	s1,s3,80004b08 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004ae4:	03305c63          	blez	s3,80004b1c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004ae8:	03800513          	li	a0,56
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	69c080e7          	jalr	1692(ra) # 80003188 <_Znwm>
    80004af4:	00050a93          	mv	s5,a0
    80004af8:	00048593          	mv	a1,s1
    80004afc:	00002097          	auipc	ra,0x2
    80004b00:	8fc080e7          	jalr	-1796(ra) # 800063f8 <_ZN9BufferCPPC1Ei>
    80004b04:	0300006f          	j	80004b34 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    80004b08:	00006517          	auipc	a0,0x6
    80004b0c:	80850513          	addi	a0,a0,-2040 # 8000a310 <CONSOLE_STATUS+0x300>
    80004b10:	00001097          	auipc	ra,0x1
    80004b14:	618080e7          	jalr	1560(ra) # 80006128 <_Z11printStringPKc>
        return;
    80004b18:	0140006f          	j	80004b2c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004b1c:	00005517          	auipc	a0,0x5
    80004b20:	6cc50513          	addi	a0,a0,1740 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	604080e7          	jalr	1540(ra) # 80006128 <_Z11printStringPKc>
        return;
    80004b2c:	000c0113          	mv	sp,s8
    80004b30:	2140006f          	j	80004d44 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004b34:	01000513          	li	a0,16
    80004b38:	ffffe097          	auipc	ra,0xffffe
    80004b3c:	650080e7          	jalr	1616(ra) # 80003188 <_Znwm>
    80004b40:	00050913          	mv	s2,a0
    80004b44:	00000593          	li	a1,0
    80004b48:	ffffe097          	auipc	ra,0xffffe
    80004b4c:	7fc080e7          	jalr	2044(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    80004b50:	00008797          	auipc	a5,0x8
    80004b54:	1f27b823          	sd	s2,496(a5) # 8000cd40 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004b58:	00399793          	slli	a5,s3,0x3
    80004b5c:	00f78793          	addi	a5,a5,15
    80004b60:	ff07f793          	andi	a5,a5,-16
    80004b64:	40f10133          	sub	sp,sp,a5
    80004b68:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004b6c:	0019871b          	addiw	a4,s3,1
    80004b70:	00171793          	slli	a5,a4,0x1
    80004b74:	00e787b3          	add	a5,a5,a4
    80004b78:	00379793          	slli	a5,a5,0x3
    80004b7c:	00f78793          	addi	a5,a5,15
    80004b80:	ff07f793          	andi	a5,a5,-16
    80004b84:	40f10133          	sub	sp,sp,a5
    80004b88:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004b8c:	00199493          	slli	s1,s3,0x1
    80004b90:	013484b3          	add	s1,s1,s3
    80004b94:	00349493          	slli	s1,s1,0x3
    80004b98:	009b04b3          	add	s1,s6,s1
    80004b9c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004ba0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004ba4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004ba8:	02800513          	li	a0,40
    80004bac:	ffffe097          	auipc	ra,0xffffe
    80004bb0:	5dc080e7          	jalr	1500(ra) # 80003188 <_Znwm>
    80004bb4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004bb8:	ffffe097          	auipc	ra,0xffffe
    80004bbc:	6b8080e7          	jalr	1720(ra) # 80003270 <_ZN6ThreadC1Ev>
    80004bc0:	00008797          	auipc	a5,0x8
    80004bc4:	d7078793          	addi	a5,a5,-656 # 8000c930 <_ZTV8Consumer+0x10>
    80004bc8:	00fbb023          	sd	a5,0(s7)
    80004bcc:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004bd0:	000b8513          	mv	a0,s7
    80004bd4:	ffffe097          	auipc	ra,0xffffe
    80004bd8:	6cc080e7          	jalr	1740(ra) # 800032a0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004bdc:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004be0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004be4:	00008797          	auipc	a5,0x8
    80004be8:	15c7b783          	ld	a5,348(a5) # 8000cd40 <_ZL10waitForAll>
    80004bec:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004bf0:	02800513          	li	a0,40
    80004bf4:	ffffe097          	auipc	ra,0xffffe
    80004bf8:	594080e7          	jalr	1428(ra) # 80003188 <_Znwm>
    80004bfc:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004c00:	ffffe097          	auipc	ra,0xffffe
    80004c04:	670080e7          	jalr	1648(ra) # 80003270 <_ZN6ThreadC1Ev>
    80004c08:	00008797          	auipc	a5,0x8
    80004c0c:	cd878793          	addi	a5,a5,-808 # 8000c8e0 <_ZTV16ProducerKeyborad+0x10>
    80004c10:	00f4b023          	sd	a5,0(s1)
    80004c14:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004c18:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	ffffe097          	auipc	ra,0xffffe
    80004c24:	680080e7          	jalr	1664(ra) # 800032a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004c28:	00100913          	li	s2,1
    80004c2c:	0300006f          	j	80004c5c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004c30:	00008797          	auipc	a5,0x8
    80004c34:	cd878793          	addi	a5,a5,-808 # 8000c908 <_ZTV8Producer+0x10>
    80004c38:	00fcb023          	sd	a5,0(s9)
    80004c3c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004c40:	00391793          	slli	a5,s2,0x3
    80004c44:	00fa07b3          	add	a5,s4,a5
    80004c48:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004c4c:	000c8513          	mv	a0,s9
    80004c50:	ffffe097          	auipc	ra,0xffffe
    80004c54:	650080e7          	jalr	1616(ra) # 800032a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004c58:	0019091b          	addiw	s2,s2,1
    80004c5c:	05395263          	bge	s2,s3,80004ca0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004c60:	00191493          	slli	s1,s2,0x1
    80004c64:	012484b3          	add	s1,s1,s2
    80004c68:	00349493          	slli	s1,s1,0x3
    80004c6c:	009b04b3          	add	s1,s6,s1
    80004c70:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004c74:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004c78:	00008797          	auipc	a5,0x8
    80004c7c:	0c87b783          	ld	a5,200(a5) # 8000cd40 <_ZL10waitForAll>
    80004c80:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004c84:	02800513          	li	a0,40
    80004c88:	ffffe097          	auipc	ra,0xffffe
    80004c8c:	500080e7          	jalr	1280(ra) # 80003188 <_Znwm>
    80004c90:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004c94:	ffffe097          	auipc	ra,0xffffe
    80004c98:	5dc080e7          	jalr	1500(ra) # 80003270 <_ZN6ThreadC1Ev>
    80004c9c:	f95ff06f          	j	80004c30 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004ca0:	ffffe097          	auipc	ra,0xffffe
    80004ca4:	654080e7          	jalr	1620(ra) # 800032f4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ca8:	00000493          	li	s1,0
    80004cac:	0099ce63          	blt	s3,s1,80004cc8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004cb0:	00008517          	auipc	a0,0x8
    80004cb4:	09053503          	ld	a0,144(a0) # 8000cd40 <_ZL10waitForAll>
    80004cb8:	ffffe097          	auipc	ra,0xffffe
    80004cbc:	6c4080e7          	jalr	1732(ra) # 8000337c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004cc0:	0014849b          	addiw	s1,s1,1
    80004cc4:	fe9ff06f          	j	80004cac <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004cc8:	00008517          	auipc	a0,0x8
    80004ccc:	07853503          	ld	a0,120(a0) # 8000cd40 <_ZL10waitForAll>
    80004cd0:	00050863          	beqz	a0,80004ce0 <_Z20testConsumerProducerv+0x2f4>
    80004cd4:	00053783          	ld	a5,0(a0)
    80004cd8:	0087b783          	ld	a5,8(a5)
    80004cdc:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004ce0:	00000493          	li	s1,0
    80004ce4:	0080006f          	j	80004cec <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004ce8:	0014849b          	addiw	s1,s1,1
    80004cec:	0334d263          	bge	s1,s3,80004d10 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004cf0:	00349793          	slli	a5,s1,0x3
    80004cf4:	00fa07b3          	add	a5,s4,a5
    80004cf8:	0007b503          	ld	a0,0(a5)
    80004cfc:	fe0506e3          	beqz	a0,80004ce8 <_Z20testConsumerProducerv+0x2fc>
    80004d00:	00053783          	ld	a5,0(a0)
    80004d04:	0087b783          	ld	a5,8(a5)
    80004d08:	000780e7          	jalr	a5
    80004d0c:	fddff06f          	j	80004ce8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004d10:	000b8a63          	beqz	s7,80004d24 <_Z20testConsumerProducerv+0x338>
    80004d14:	000bb783          	ld	a5,0(s7)
    80004d18:	0087b783          	ld	a5,8(a5)
    80004d1c:	000b8513          	mv	a0,s7
    80004d20:	000780e7          	jalr	a5
    delete buffer;
    80004d24:	000a8e63          	beqz	s5,80004d40 <_Z20testConsumerProducerv+0x354>
    80004d28:	000a8513          	mv	a0,s5
    80004d2c:	00002097          	auipc	ra,0x2
    80004d30:	9c4080e7          	jalr	-1596(ra) # 800066f0 <_ZN9BufferCPPD1Ev>
    80004d34:	000a8513          	mv	a0,s5
    80004d38:	ffffe097          	auipc	ra,0xffffe
    80004d3c:	478080e7          	jalr	1144(ra) # 800031b0 <_ZdlPv>
    80004d40:	000c0113          	mv	sp,s8
}
    80004d44:	f8040113          	addi	sp,s0,-128
    80004d48:	07813083          	ld	ra,120(sp)
    80004d4c:	07013403          	ld	s0,112(sp)
    80004d50:	06813483          	ld	s1,104(sp)
    80004d54:	06013903          	ld	s2,96(sp)
    80004d58:	05813983          	ld	s3,88(sp)
    80004d5c:	05013a03          	ld	s4,80(sp)
    80004d60:	04813a83          	ld	s5,72(sp)
    80004d64:	04013b03          	ld	s6,64(sp)
    80004d68:	03813b83          	ld	s7,56(sp)
    80004d6c:	03013c03          	ld	s8,48(sp)
    80004d70:	02813c83          	ld	s9,40(sp)
    80004d74:	08010113          	addi	sp,sp,128
    80004d78:	00008067          	ret
    80004d7c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004d80:	000a8513          	mv	a0,s5
    80004d84:	ffffe097          	auipc	ra,0xffffe
    80004d88:	42c080e7          	jalr	1068(ra) # 800031b0 <_ZdlPv>
    80004d8c:	00048513          	mv	a0,s1
    80004d90:	00009097          	auipc	ra,0x9
    80004d94:	0a8080e7          	jalr	168(ra) # 8000de38 <_Unwind_Resume>
    80004d98:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004d9c:	00090513          	mv	a0,s2
    80004da0:	ffffe097          	auipc	ra,0xffffe
    80004da4:	410080e7          	jalr	1040(ra) # 800031b0 <_ZdlPv>
    80004da8:	00048513          	mv	a0,s1
    80004dac:	00009097          	auipc	ra,0x9
    80004db0:	08c080e7          	jalr	140(ra) # 8000de38 <_Unwind_Resume>
    80004db4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004db8:	000b8513          	mv	a0,s7
    80004dbc:	ffffe097          	auipc	ra,0xffffe
    80004dc0:	3f4080e7          	jalr	1012(ra) # 800031b0 <_ZdlPv>
    80004dc4:	00048513          	mv	a0,s1
    80004dc8:	00009097          	auipc	ra,0x9
    80004dcc:	070080e7          	jalr	112(ra) # 8000de38 <_Unwind_Resume>
    80004dd0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004dd4:	00048513          	mv	a0,s1
    80004dd8:	ffffe097          	auipc	ra,0xffffe
    80004ddc:	3d8080e7          	jalr	984(ra) # 800031b0 <_ZdlPv>
    80004de0:	00090513          	mv	a0,s2
    80004de4:	00009097          	auipc	ra,0x9
    80004de8:	054080e7          	jalr	84(ra) # 8000de38 <_Unwind_Resume>
    80004dec:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004df0:	000c8513          	mv	a0,s9
    80004df4:	ffffe097          	auipc	ra,0xffffe
    80004df8:	3bc080e7          	jalr	956(ra) # 800031b0 <_ZdlPv>
    80004dfc:	00048513          	mv	a0,s1
    80004e00:	00009097          	auipc	ra,0x9
    80004e04:	038080e7          	jalr	56(ra) # 8000de38 <_Unwind_Resume>

0000000080004e08 <_ZN8Consumer3runEv>:
    void run() override {
    80004e08:	fd010113          	addi	sp,sp,-48
    80004e0c:	02113423          	sd	ra,40(sp)
    80004e10:	02813023          	sd	s0,32(sp)
    80004e14:	00913c23          	sd	s1,24(sp)
    80004e18:	01213823          	sd	s2,16(sp)
    80004e1c:	01313423          	sd	s3,8(sp)
    80004e20:	03010413          	addi	s0,sp,48
    80004e24:	00050913          	mv	s2,a0
        int i = 0;
    80004e28:	00000993          	li	s3,0
    80004e2c:	0100006f          	j	80004e3c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004e30:	00a00513          	li	a0,10
    80004e34:	ffffe097          	auipc	ra,0xffffe
    80004e38:	634080e7          	jalr	1588(ra) # 80003468 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004e3c:	00008797          	auipc	a5,0x8
    80004e40:	efc7a783          	lw	a5,-260(a5) # 8000cd38 <_ZL9threadEnd>
    80004e44:	04079a63          	bnez	a5,80004e98 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004e48:	02093783          	ld	a5,32(s2)
    80004e4c:	0087b503          	ld	a0,8(a5)
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	78c080e7          	jalr	1932(ra) # 800065dc <_ZN9BufferCPP3getEv>
            i++;
    80004e58:	0019849b          	addiw	s1,s3,1
    80004e5c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004e60:	0ff57513          	andi	a0,a0,255
    80004e64:	ffffe097          	auipc	ra,0xffffe
    80004e68:	604080e7          	jalr	1540(ra) # 80003468 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004e6c:	05000793          	li	a5,80
    80004e70:	02f4e4bb          	remw	s1,s1,a5
    80004e74:	fc0494e3          	bnez	s1,80004e3c <_ZN8Consumer3runEv+0x34>
    80004e78:	fb9ff06f          	j	80004e30 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004e7c:	02093783          	ld	a5,32(s2)
    80004e80:	0087b503          	ld	a0,8(a5)
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	758080e7          	jalr	1880(ra) # 800065dc <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004e8c:	0ff57513          	andi	a0,a0,255
    80004e90:	ffffe097          	auipc	ra,0xffffe
    80004e94:	5d8080e7          	jalr	1496(ra) # 80003468 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004e98:	02093783          	ld	a5,32(s2)
    80004e9c:	0087b503          	ld	a0,8(a5)
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	7c8080e7          	jalr	1992(ra) # 80006668 <_ZN9BufferCPP6getCntEv>
    80004ea8:	fca04ae3          	bgtz	a0,80004e7c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004eac:	02093783          	ld	a5,32(s2)
    80004eb0:	0107b503          	ld	a0,16(a5)
    80004eb4:	ffffe097          	auipc	ra,0xffffe
    80004eb8:	4f4080e7          	jalr	1268(ra) # 800033a8 <_ZN9Semaphore6signalEv>
    }
    80004ebc:	02813083          	ld	ra,40(sp)
    80004ec0:	02013403          	ld	s0,32(sp)
    80004ec4:	01813483          	ld	s1,24(sp)
    80004ec8:	01013903          	ld	s2,16(sp)
    80004ecc:	00813983          	ld	s3,8(sp)
    80004ed0:	03010113          	addi	sp,sp,48
    80004ed4:	00008067          	ret

0000000080004ed8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004ed8:	ff010113          	addi	sp,sp,-16
    80004edc:	00113423          	sd	ra,8(sp)
    80004ee0:	00813023          	sd	s0,0(sp)
    80004ee4:	01010413          	addi	s0,sp,16
    80004ee8:	00008797          	auipc	a5,0x8
    80004eec:	a4878793          	addi	a5,a5,-1464 # 8000c930 <_ZTV8Consumer+0x10>
    80004ef0:	00f53023          	sd	a5,0(a0)
    80004ef4:	ffffe097          	auipc	ra,0xffffe
    80004ef8:	1c4080e7          	jalr	452(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80004efc:	00813083          	ld	ra,8(sp)
    80004f00:	00013403          	ld	s0,0(sp)
    80004f04:	01010113          	addi	sp,sp,16
    80004f08:	00008067          	ret

0000000080004f0c <_ZN8ConsumerD0Ev>:
    80004f0c:	fe010113          	addi	sp,sp,-32
    80004f10:	00113c23          	sd	ra,24(sp)
    80004f14:	00813823          	sd	s0,16(sp)
    80004f18:	00913423          	sd	s1,8(sp)
    80004f1c:	02010413          	addi	s0,sp,32
    80004f20:	00050493          	mv	s1,a0
    80004f24:	00008797          	auipc	a5,0x8
    80004f28:	a0c78793          	addi	a5,a5,-1524 # 8000c930 <_ZTV8Consumer+0x10>
    80004f2c:	00f53023          	sd	a5,0(a0)
    80004f30:	ffffe097          	auipc	ra,0xffffe
    80004f34:	188080e7          	jalr	392(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80004f38:	00048513          	mv	a0,s1
    80004f3c:	ffffe097          	auipc	ra,0xffffe
    80004f40:	274080e7          	jalr	628(ra) # 800031b0 <_ZdlPv>
    80004f44:	01813083          	ld	ra,24(sp)
    80004f48:	01013403          	ld	s0,16(sp)
    80004f4c:	00813483          	ld	s1,8(sp)
    80004f50:	02010113          	addi	sp,sp,32
    80004f54:	00008067          	ret

0000000080004f58 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004f58:	ff010113          	addi	sp,sp,-16
    80004f5c:	00113423          	sd	ra,8(sp)
    80004f60:	00813023          	sd	s0,0(sp)
    80004f64:	01010413          	addi	s0,sp,16
    80004f68:	00008797          	auipc	a5,0x8
    80004f6c:	97878793          	addi	a5,a5,-1672 # 8000c8e0 <_ZTV16ProducerKeyborad+0x10>
    80004f70:	00f53023          	sd	a5,0(a0)
    80004f74:	ffffe097          	auipc	ra,0xffffe
    80004f78:	144080e7          	jalr	324(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80004f7c:	00813083          	ld	ra,8(sp)
    80004f80:	00013403          	ld	s0,0(sp)
    80004f84:	01010113          	addi	sp,sp,16
    80004f88:	00008067          	ret

0000000080004f8c <_ZN16ProducerKeyboradD0Ev>:
    80004f8c:	fe010113          	addi	sp,sp,-32
    80004f90:	00113c23          	sd	ra,24(sp)
    80004f94:	00813823          	sd	s0,16(sp)
    80004f98:	00913423          	sd	s1,8(sp)
    80004f9c:	02010413          	addi	s0,sp,32
    80004fa0:	00050493          	mv	s1,a0
    80004fa4:	00008797          	auipc	a5,0x8
    80004fa8:	93c78793          	addi	a5,a5,-1732 # 8000c8e0 <_ZTV16ProducerKeyborad+0x10>
    80004fac:	00f53023          	sd	a5,0(a0)
    80004fb0:	ffffe097          	auipc	ra,0xffffe
    80004fb4:	108080e7          	jalr	264(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80004fb8:	00048513          	mv	a0,s1
    80004fbc:	ffffe097          	auipc	ra,0xffffe
    80004fc0:	1f4080e7          	jalr	500(ra) # 800031b0 <_ZdlPv>
    80004fc4:	01813083          	ld	ra,24(sp)
    80004fc8:	01013403          	ld	s0,16(sp)
    80004fcc:	00813483          	ld	s1,8(sp)
    80004fd0:	02010113          	addi	sp,sp,32
    80004fd4:	00008067          	ret

0000000080004fd8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004fd8:	ff010113          	addi	sp,sp,-16
    80004fdc:	00113423          	sd	ra,8(sp)
    80004fe0:	00813023          	sd	s0,0(sp)
    80004fe4:	01010413          	addi	s0,sp,16
    80004fe8:	00008797          	auipc	a5,0x8
    80004fec:	92078793          	addi	a5,a5,-1760 # 8000c908 <_ZTV8Producer+0x10>
    80004ff0:	00f53023          	sd	a5,0(a0)
    80004ff4:	ffffe097          	auipc	ra,0xffffe
    80004ff8:	0c4080e7          	jalr	196(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80004ffc:	00813083          	ld	ra,8(sp)
    80005000:	00013403          	ld	s0,0(sp)
    80005004:	01010113          	addi	sp,sp,16
    80005008:	00008067          	ret

000000008000500c <_ZN8ProducerD0Ev>:
    8000500c:	fe010113          	addi	sp,sp,-32
    80005010:	00113c23          	sd	ra,24(sp)
    80005014:	00813823          	sd	s0,16(sp)
    80005018:	00913423          	sd	s1,8(sp)
    8000501c:	02010413          	addi	s0,sp,32
    80005020:	00050493          	mv	s1,a0
    80005024:	00008797          	auipc	a5,0x8
    80005028:	8e478793          	addi	a5,a5,-1820 # 8000c908 <_ZTV8Producer+0x10>
    8000502c:	00f53023          	sd	a5,0(a0)
    80005030:	ffffe097          	auipc	ra,0xffffe
    80005034:	088080e7          	jalr	136(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80005038:	00048513          	mv	a0,s1
    8000503c:	ffffe097          	auipc	ra,0xffffe
    80005040:	174080e7          	jalr	372(ra) # 800031b0 <_ZdlPv>
    80005044:	01813083          	ld	ra,24(sp)
    80005048:	01013403          	ld	s0,16(sp)
    8000504c:	00813483          	ld	s1,8(sp)
    80005050:	02010113          	addi	sp,sp,32
    80005054:	00008067          	ret

0000000080005058 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80005058:	fe010113          	addi	sp,sp,-32
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	00813823          	sd	s0,16(sp)
    80005064:	00913423          	sd	s1,8(sp)
    80005068:	02010413          	addi	s0,sp,32
    8000506c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80005070:	ffffc097          	auipc	ra,0xffffc
    80005074:	710080e7          	jalr	1808(ra) # 80001780 <getc>
    80005078:	0005059b          	sext.w	a1,a0
    8000507c:	01b00793          	li	a5,27
    80005080:	00f58c63          	beq	a1,a5,80005098 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80005084:	0204b783          	ld	a5,32(s1)
    80005088:	0087b503          	ld	a0,8(a5)
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	4c0080e7          	jalr	1216(ra) # 8000654c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80005094:	fddff06f          	j	80005070 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80005098:	00100793          	li	a5,1
    8000509c:	00008717          	auipc	a4,0x8
    800050a0:	c8f72e23          	sw	a5,-868(a4) # 8000cd38 <_ZL9threadEnd>
        td->buffer->put('!');
    800050a4:	0204b783          	ld	a5,32(s1)
    800050a8:	02100593          	li	a1,33
    800050ac:	0087b503          	ld	a0,8(a5)
    800050b0:	00001097          	auipc	ra,0x1
    800050b4:	49c080e7          	jalr	1180(ra) # 8000654c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800050b8:	0204b783          	ld	a5,32(s1)
    800050bc:	0107b503          	ld	a0,16(a5)
    800050c0:	ffffe097          	auipc	ra,0xffffe
    800050c4:	2e8080e7          	jalr	744(ra) # 800033a8 <_ZN9Semaphore6signalEv>
    }
    800050c8:	01813083          	ld	ra,24(sp)
    800050cc:	01013403          	ld	s0,16(sp)
    800050d0:	00813483          	ld	s1,8(sp)
    800050d4:	02010113          	addi	sp,sp,32
    800050d8:	00008067          	ret

00000000800050dc <_ZN8Producer3runEv>:
    void run() override {
    800050dc:	fe010113          	addi	sp,sp,-32
    800050e0:	00113c23          	sd	ra,24(sp)
    800050e4:	00813823          	sd	s0,16(sp)
    800050e8:	00913423          	sd	s1,8(sp)
    800050ec:	01213023          	sd	s2,0(sp)
    800050f0:	02010413          	addi	s0,sp,32
    800050f4:	00050493          	mv	s1,a0
        int i = 0;
    800050f8:	00000913          	li	s2,0
        while (!threadEnd) {
    800050fc:	00008797          	auipc	a5,0x8
    80005100:	c3c7a783          	lw	a5,-964(a5) # 8000cd38 <_ZL9threadEnd>
    80005104:	04079263          	bnez	a5,80005148 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80005108:	0204b783          	ld	a5,32(s1)
    8000510c:	0007a583          	lw	a1,0(a5)
    80005110:	0305859b          	addiw	a1,a1,48
    80005114:	0087b503          	ld	a0,8(a5)
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	434080e7          	jalr	1076(ra) # 8000654c <_ZN9BufferCPP3putEi>
            i++;
    80005120:	0019071b          	addiw	a4,s2,1
    80005124:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80005128:	0204b783          	ld	a5,32(s1)
    8000512c:	0007a783          	lw	a5,0(a5)
    80005130:	00e787bb          	addw	a5,a5,a4
    80005134:	00500513          	li	a0,5
    80005138:	02a7e53b          	remw	a0,a5,a0
    8000513c:	ffffe097          	auipc	ra,0xffffe
    80005140:	1e0080e7          	jalr	480(ra) # 8000331c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80005144:	fb9ff06f          	j	800050fc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80005148:	0204b783          	ld	a5,32(s1)
    8000514c:	0107b503          	ld	a0,16(a5)
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	258080e7          	jalr	600(ra) # 800033a8 <_ZN9Semaphore6signalEv>
    }
    80005158:	01813083          	ld	ra,24(sp)
    8000515c:	01013403          	ld	s0,16(sp)
    80005160:	00813483          	ld	s1,8(sp)
    80005164:	00013903          	ld	s2,0(sp)
    80005168:	02010113          	addi	sp,sp,32
    8000516c:	00008067          	ret

0000000080005170 <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    80005170:	fe010113          	addi	sp,sp,-32
    80005174:	00113c23          	sd	ra,24(sp)
    80005178:	00813823          	sd	s0,16(sp)
    8000517c:	00913423          	sd	s1,8(sp)
    80005180:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005184:	00005517          	auipc	a0,0x5
    80005188:	1c450513          	addi	a0,a0,452 # 8000a348 <CONSOLE_STATUS+0x338>
    8000518c:	00001097          	auipc	ra,0x1
    80005190:	f9c080e7          	jalr	-100(ra) # 80006128 <_Z11printStringPKc>
    int test = getc() - '0';
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	5ec080e7          	jalr	1516(ra) # 80001780 <getc>
    8000519c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800051a0:	ffffc097          	auipc	ra,0xffffc
    800051a4:	5e0080e7          	jalr	1504(ra) # 80001780 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800051a8:	00700793          	li	a5,7
    800051ac:	1097e263          	bltu	a5,s1,800052b0 <_Z8userMainv+0x140>
    800051b0:	00249493          	slli	s1,s1,0x2
    800051b4:	00005717          	auipc	a4,0x5
    800051b8:	3ec70713          	addi	a4,a4,1004 # 8000a5a0 <CONSOLE_STATUS+0x590>
    800051bc:	00e484b3          	add	s1,s1,a4
    800051c0:	0004a783          	lw	a5,0(s1)
    800051c4:	00e787b3          	add	a5,a5,a4
    800051c8:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	5d4080e7          	jalr	1492(ra) # 800057a0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800051d4:	00005517          	auipc	a0,0x5
    800051d8:	19450513          	addi	a0,a0,404 # 8000a368 <CONSOLE_STATUS+0x358>
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	f4c080e7          	jalr	-180(ra) # 80006128 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    800051e4:	01813083          	ld	ra,24(sp)
    800051e8:	01013403          	ld	s0,16(sp)
    800051ec:	00813483          	ld	s1,8(sp)
    800051f0:	02010113          	addi	sp,sp,32
    800051f4:	00008067          	ret
            Threads_CPP_API_test();
    800051f8:	fffff097          	auipc	ra,0xfffff
    800051fc:	334080e7          	jalr	820(ra) # 8000452c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005200:	00005517          	auipc	a0,0x5
    80005204:	1a850513          	addi	a0,a0,424 # 8000a3a8 <CONSOLE_STATUS+0x398>
    80005208:	00001097          	auipc	ra,0x1
    8000520c:	f20080e7          	jalr	-224(ra) # 80006128 <_Z11printStringPKc>
            break;
    80005210:	fd5ff06f          	j	800051e4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005214:	fffff097          	auipc	ra,0xfffff
    80005218:	b6c080e7          	jalr	-1172(ra) # 80003d80 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000521c:	00005517          	auipc	a0,0x5
    80005220:	1cc50513          	addi	a0,a0,460 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80005224:	00001097          	auipc	ra,0x1
    80005228:	f04080e7          	jalr	-252(ra) # 80006128 <_Z11printStringPKc>
            break;
    8000522c:	fb9ff06f          	j	800051e4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005230:	00001097          	auipc	ra,0x1
    80005234:	8b4080e7          	jalr	-1868(ra) # 80005ae4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005238:	00005517          	auipc	a0,0x5
    8000523c:	20050513          	addi	a0,a0,512 # 8000a438 <CONSOLE_STATUS+0x428>
    80005240:	00001097          	auipc	ra,0x1
    80005244:	ee8080e7          	jalr	-280(ra) # 80006128 <_Z11printStringPKc>
            break;
    80005248:	f9dff06f          	j	800051e4 <_Z8userMainv+0x74>
            testSleeping();
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	648080e7          	jalr	1608(ra) # 80006894 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005254:	00005517          	auipc	a0,0x5
    80005258:	23c50513          	addi	a0,a0,572 # 8000a490 <CONSOLE_STATUS+0x480>
    8000525c:	00001097          	auipc	ra,0x1
    80005260:	ecc080e7          	jalr	-308(ra) # 80006128 <_Z11printStringPKc>
            break;
    80005264:	f81ff06f          	j	800051e4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	784080e7          	jalr	1924(ra) # 800049ec <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005270:	00005517          	auipc	a0,0x5
    80005274:	25050513          	addi	a0,a0,592 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005278:	00001097          	auipc	ra,0x1
    8000527c:	eb0080e7          	jalr	-336(ra) # 80006128 <_Z11printStringPKc>
            break;
    80005280:	f65ff06f          	j	800051e4 <_Z8userMainv+0x74>
            System_Mode_test();
    80005284:	00002097          	auipc	ra,0x2
    80005288:	b84080e7          	jalr	-1148(ra) # 80006e08 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000528c:	00005517          	auipc	a0,0x5
    80005290:	27450513          	addi	a0,a0,628 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80005294:	00001097          	auipc	ra,0x1
    80005298:	e94080e7          	jalr	-364(ra) # 80006128 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000529c:	00005517          	auipc	a0,0x5
    800052a0:	28450513          	addi	a0,a0,644 # 8000a520 <CONSOLE_STATUS+0x510>
    800052a4:	00001097          	auipc	ra,0x1
    800052a8:	e84080e7          	jalr	-380(ra) # 80006128 <_Z11printStringPKc>
            break;
    800052ac:	f39ff06f          	j	800051e4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800052b0:	00005517          	auipc	a0,0x5
    800052b4:	2c850513          	addi	a0,a0,712 # 8000a578 <CONSOLE_STATUS+0x568>
    800052b8:	00001097          	auipc	ra,0x1
    800052bc:	e70080e7          	jalr	-400(ra) # 80006128 <_Z11printStringPKc>
    800052c0:	f25ff06f          	j	800051e4 <_Z8userMainv+0x74>

00000000800052c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800052c4:	fe010113          	addi	sp,sp,-32
    800052c8:	00113c23          	sd	ra,24(sp)
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00913423          	sd	s1,8(sp)
    800052d4:	01213023          	sd	s2,0(sp)
    800052d8:	02010413          	addi	s0,sp,32
    800052dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800052e0:	00100793          	li	a5,1
    800052e4:	02a7f863          	bgeu	a5,a0,80005314 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800052e8:	00a00793          	li	a5,10
    800052ec:	02f577b3          	remu	a5,a0,a5
    800052f0:	02078e63          	beqz	a5,8000532c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800052f4:	fff48513          	addi	a0,s1,-1
    800052f8:	00000097          	auipc	ra,0x0
    800052fc:	fcc080e7          	jalr	-52(ra) # 800052c4 <_ZL9fibonaccim>
    80005300:	00050913          	mv	s2,a0
    80005304:	ffe48513          	addi	a0,s1,-2
    80005308:	00000097          	auipc	ra,0x0
    8000530c:	fbc080e7          	jalr	-68(ra) # 800052c4 <_ZL9fibonaccim>
    80005310:	00a90533          	add	a0,s2,a0
}
    80005314:	01813083          	ld	ra,24(sp)
    80005318:	01013403          	ld	s0,16(sp)
    8000531c:	00813483          	ld	s1,8(sp)
    80005320:	00013903          	ld	s2,0(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000532c:	ffffc097          	auipc	ra,0xffffc
    80005330:	324080e7          	jalr	804(ra) # 80001650 <thread_dispatch>
    80005334:	fc1ff06f          	j	800052f4 <_ZL9fibonaccim+0x30>

0000000080005338 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	01213023          	sd	s2,0(sp)
    8000534c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005350:	00a00493          	li	s1,10
    80005354:	0400006f          	j	80005394 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005358:	00005517          	auipc	a0,0x5
    8000535c:	f2050513          	addi	a0,a0,-224 # 8000a278 <CONSOLE_STATUS+0x268>
    80005360:	00001097          	auipc	ra,0x1
    80005364:	dc8080e7          	jalr	-568(ra) # 80006128 <_Z11printStringPKc>
    80005368:	00000613          	li	a2,0
    8000536c:	00a00593          	li	a1,10
    80005370:	00048513          	mv	a0,s1
    80005374:	00001097          	auipc	ra,0x1
    80005378:	f64080e7          	jalr	-156(ra) # 800062d8 <_Z8printIntiii>
    8000537c:	00005517          	auipc	a0,0x5
    80005380:	10c50513          	addi	a0,a0,268 # 8000a488 <CONSOLE_STATUS+0x478>
    80005384:	00001097          	auipc	ra,0x1
    80005388:	da4080e7          	jalr	-604(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000538c:	0014849b          	addiw	s1,s1,1
    80005390:	0ff4f493          	andi	s1,s1,255
    80005394:	00c00793          	li	a5,12
    80005398:	fc97f0e3          	bgeu	a5,s1,80005358 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000539c:	00005517          	auipc	a0,0x5
    800053a0:	ee450513          	addi	a0,a0,-284 # 8000a280 <CONSOLE_STATUS+0x270>
    800053a4:	00001097          	auipc	ra,0x1
    800053a8:	d84080e7          	jalr	-636(ra) # 80006128 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800053ac:	00500313          	li	t1,5
    thread_dispatch();
    800053b0:	ffffc097          	auipc	ra,0xffffc
    800053b4:	2a0080e7          	jalr	672(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    800053b8:	01000513          	li	a0,16
    800053bc:	00000097          	auipc	ra,0x0
    800053c0:	f08080e7          	jalr	-248(ra) # 800052c4 <_ZL9fibonaccim>
    800053c4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800053c8:	00005517          	auipc	a0,0x5
    800053cc:	ec850513          	addi	a0,a0,-312 # 8000a290 <CONSOLE_STATUS+0x280>
    800053d0:	00001097          	auipc	ra,0x1
    800053d4:	d58080e7          	jalr	-680(ra) # 80006128 <_Z11printStringPKc>
    800053d8:	00000613          	li	a2,0
    800053dc:	00a00593          	li	a1,10
    800053e0:	0009051b          	sext.w	a0,s2
    800053e4:	00001097          	auipc	ra,0x1
    800053e8:	ef4080e7          	jalr	-268(ra) # 800062d8 <_Z8printIntiii>
    800053ec:	00005517          	auipc	a0,0x5
    800053f0:	09c50513          	addi	a0,a0,156 # 8000a488 <CONSOLE_STATUS+0x478>
    800053f4:	00001097          	auipc	ra,0x1
    800053f8:	d34080e7          	jalr	-716(ra) # 80006128 <_Z11printStringPKc>
    800053fc:	0400006f          	j	8000543c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005400:	00005517          	auipc	a0,0x5
    80005404:	e7850513          	addi	a0,a0,-392 # 8000a278 <CONSOLE_STATUS+0x268>
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	d20080e7          	jalr	-736(ra) # 80006128 <_Z11printStringPKc>
    80005410:	00000613          	li	a2,0
    80005414:	00a00593          	li	a1,10
    80005418:	00048513          	mv	a0,s1
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	ebc080e7          	jalr	-324(ra) # 800062d8 <_Z8printIntiii>
    80005424:	00005517          	auipc	a0,0x5
    80005428:	06450513          	addi	a0,a0,100 # 8000a488 <CONSOLE_STATUS+0x478>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	cfc080e7          	jalr	-772(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005434:	0014849b          	addiw	s1,s1,1
    80005438:	0ff4f493          	andi	s1,s1,255
    8000543c:	00f00793          	li	a5,15
    80005440:	fc97f0e3          	bgeu	a5,s1,80005400 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005444:	00005517          	auipc	a0,0x5
    80005448:	e5c50513          	addi	a0,a0,-420 # 8000a2a0 <CONSOLE_STATUS+0x290>
    8000544c:	00001097          	auipc	ra,0x1
    80005450:	cdc080e7          	jalr	-804(ra) # 80006128 <_Z11printStringPKc>
    finishedD = true;
    80005454:	00100793          	li	a5,1
    80005458:	00008717          	auipc	a4,0x8
    8000545c:	8ef70823          	sb	a5,-1808(a4) # 8000cd48 <_ZL9finishedD>
    thread_dispatch();
    80005460:	ffffc097          	auipc	ra,0xffffc
    80005464:	1f0080e7          	jalr	496(ra) # 80001650 <thread_dispatch>
}
    80005468:	01813083          	ld	ra,24(sp)
    8000546c:	01013403          	ld	s0,16(sp)
    80005470:	00813483          	ld	s1,8(sp)
    80005474:	00013903          	ld	s2,0(sp)
    80005478:	02010113          	addi	sp,sp,32
    8000547c:	00008067          	ret

0000000080005480 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005480:	fe010113          	addi	sp,sp,-32
    80005484:	00113c23          	sd	ra,24(sp)
    80005488:	00813823          	sd	s0,16(sp)
    8000548c:	00913423          	sd	s1,8(sp)
    80005490:	01213023          	sd	s2,0(sp)
    80005494:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005498:	00000493          	li	s1,0
    8000549c:	0400006f          	j	800054dc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800054a0:	00005517          	auipc	a0,0x5
    800054a4:	da850513          	addi	a0,a0,-600 # 8000a248 <CONSOLE_STATUS+0x238>
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	c80080e7          	jalr	-896(ra) # 80006128 <_Z11printStringPKc>
    800054b0:	00000613          	li	a2,0
    800054b4:	00a00593          	li	a1,10
    800054b8:	00048513          	mv	a0,s1
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	e1c080e7          	jalr	-484(ra) # 800062d8 <_Z8printIntiii>
    800054c4:	00005517          	auipc	a0,0x5
    800054c8:	fc450513          	addi	a0,a0,-60 # 8000a488 <CONSOLE_STATUS+0x478>
    800054cc:	00001097          	auipc	ra,0x1
    800054d0:	c5c080e7          	jalr	-932(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800054d4:	0014849b          	addiw	s1,s1,1
    800054d8:	0ff4f493          	andi	s1,s1,255
    800054dc:	00200793          	li	a5,2
    800054e0:	fc97f0e3          	bgeu	a5,s1,800054a0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800054e4:	00005517          	auipc	a0,0x5
    800054e8:	d6c50513          	addi	a0,a0,-660 # 8000a250 <CONSOLE_STATUS+0x240>
    800054ec:	00001097          	auipc	ra,0x1
    800054f0:	c3c080e7          	jalr	-964(ra) # 80006128 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800054f4:	00700313          	li	t1,7
    thread_dispatch();
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	158080e7          	jalr	344(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005500:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005504:	00005517          	auipc	a0,0x5
    80005508:	d5c50513          	addi	a0,a0,-676 # 8000a260 <CONSOLE_STATUS+0x250>
    8000550c:	00001097          	auipc	ra,0x1
    80005510:	c1c080e7          	jalr	-996(ra) # 80006128 <_Z11printStringPKc>
    80005514:	00000613          	li	a2,0
    80005518:	00a00593          	li	a1,10
    8000551c:	0009051b          	sext.w	a0,s2
    80005520:	00001097          	auipc	ra,0x1
    80005524:	db8080e7          	jalr	-584(ra) # 800062d8 <_Z8printIntiii>
    80005528:	00005517          	auipc	a0,0x5
    8000552c:	f6050513          	addi	a0,a0,-160 # 8000a488 <CONSOLE_STATUS+0x478>
    80005530:	00001097          	auipc	ra,0x1
    80005534:	bf8080e7          	jalr	-1032(ra) # 80006128 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005538:	00c00513          	li	a0,12
    8000553c:	00000097          	auipc	ra,0x0
    80005540:	d88080e7          	jalr	-632(ra) # 800052c4 <_ZL9fibonaccim>
    80005544:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005548:	00005517          	auipc	a0,0x5
    8000554c:	d2050513          	addi	a0,a0,-736 # 8000a268 <CONSOLE_STATUS+0x258>
    80005550:	00001097          	auipc	ra,0x1
    80005554:	bd8080e7          	jalr	-1064(ra) # 80006128 <_Z11printStringPKc>
    80005558:	00000613          	li	a2,0
    8000555c:	00a00593          	li	a1,10
    80005560:	0009051b          	sext.w	a0,s2
    80005564:	00001097          	auipc	ra,0x1
    80005568:	d74080e7          	jalr	-652(ra) # 800062d8 <_Z8printIntiii>
    8000556c:	00005517          	auipc	a0,0x5
    80005570:	f1c50513          	addi	a0,a0,-228 # 8000a488 <CONSOLE_STATUS+0x478>
    80005574:	00001097          	auipc	ra,0x1
    80005578:	bb4080e7          	jalr	-1100(ra) # 80006128 <_Z11printStringPKc>
    8000557c:	0400006f          	j	800055bc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005580:	00005517          	auipc	a0,0x5
    80005584:	cc850513          	addi	a0,a0,-824 # 8000a248 <CONSOLE_STATUS+0x238>
    80005588:	00001097          	auipc	ra,0x1
    8000558c:	ba0080e7          	jalr	-1120(ra) # 80006128 <_Z11printStringPKc>
    80005590:	00000613          	li	a2,0
    80005594:	00a00593          	li	a1,10
    80005598:	00048513          	mv	a0,s1
    8000559c:	00001097          	auipc	ra,0x1
    800055a0:	d3c080e7          	jalr	-708(ra) # 800062d8 <_Z8printIntiii>
    800055a4:	00005517          	auipc	a0,0x5
    800055a8:	ee450513          	addi	a0,a0,-284 # 8000a488 <CONSOLE_STATUS+0x478>
    800055ac:	00001097          	auipc	ra,0x1
    800055b0:	b7c080e7          	jalr	-1156(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800055b4:	0014849b          	addiw	s1,s1,1
    800055b8:	0ff4f493          	andi	s1,s1,255
    800055bc:	00500793          	li	a5,5
    800055c0:	fc97f0e3          	bgeu	a5,s1,80005580 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800055c4:	00005517          	auipc	a0,0x5
    800055c8:	c5c50513          	addi	a0,a0,-932 # 8000a220 <CONSOLE_STATUS+0x210>
    800055cc:	00001097          	auipc	ra,0x1
    800055d0:	b5c080e7          	jalr	-1188(ra) # 80006128 <_Z11printStringPKc>
    finishedC = true;
    800055d4:	00100793          	li	a5,1
    800055d8:	00007717          	auipc	a4,0x7
    800055dc:	76f708a3          	sb	a5,1905(a4) # 8000cd49 <_ZL9finishedC>
    thread_dispatch();
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	070080e7          	jalr	112(ra) # 80001650 <thread_dispatch>
}
    800055e8:	01813083          	ld	ra,24(sp)
    800055ec:	01013403          	ld	s0,16(sp)
    800055f0:	00813483          	ld	s1,8(sp)
    800055f4:	00013903          	ld	s2,0(sp)
    800055f8:	02010113          	addi	sp,sp,32
    800055fc:	00008067          	ret

0000000080005600 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005600:	fe010113          	addi	sp,sp,-32
    80005604:	00113c23          	sd	ra,24(sp)
    80005608:	00813823          	sd	s0,16(sp)
    8000560c:	00913423          	sd	s1,8(sp)
    80005610:	01213023          	sd	s2,0(sp)
    80005614:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005618:	00000913          	li	s2,0
    8000561c:	0380006f          	j	80005654 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005620:	ffffc097          	auipc	ra,0xffffc
    80005624:	030080e7          	jalr	48(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005628:	00148493          	addi	s1,s1,1
    8000562c:	000027b7          	lui	a5,0x2
    80005630:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005634:	0097ee63          	bltu	a5,s1,80005650 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005638:	00000713          	li	a4,0
    8000563c:	000077b7          	lui	a5,0x7
    80005640:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005644:	fce7eee3          	bltu	a5,a4,80005620 <_ZL11workerBodyBPv+0x20>
    80005648:	00170713          	addi	a4,a4,1
    8000564c:	ff1ff06f          	j	8000563c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005650:	00190913          	addi	s2,s2,1
    80005654:	00f00793          	li	a5,15
    80005658:	0527e063          	bltu	a5,s2,80005698 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000565c:	00005517          	auipc	a0,0x5
    80005660:	bd450513          	addi	a0,a0,-1068 # 8000a230 <CONSOLE_STATUS+0x220>
    80005664:	00001097          	auipc	ra,0x1
    80005668:	ac4080e7          	jalr	-1340(ra) # 80006128 <_Z11printStringPKc>
    8000566c:	00000613          	li	a2,0
    80005670:	00a00593          	li	a1,10
    80005674:	0009051b          	sext.w	a0,s2
    80005678:	00001097          	auipc	ra,0x1
    8000567c:	c60080e7          	jalr	-928(ra) # 800062d8 <_Z8printIntiii>
    80005680:	00005517          	auipc	a0,0x5
    80005684:	e0850513          	addi	a0,a0,-504 # 8000a488 <CONSOLE_STATUS+0x478>
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	aa0080e7          	jalr	-1376(ra) # 80006128 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005690:	00000493          	li	s1,0
    80005694:	f99ff06f          	j	8000562c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005698:	00005517          	auipc	a0,0x5
    8000569c:	ba050513          	addi	a0,a0,-1120 # 8000a238 <CONSOLE_STATUS+0x228>
    800056a0:	00001097          	auipc	ra,0x1
    800056a4:	a88080e7          	jalr	-1400(ra) # 80006128 <_Z11printStringPKc>
    finishedB = true;
    800056a8:	00100793          	li	a5,1
    800056ac:	00007717          	auipc	a4,0x7
    800056b0:	68f70f23          	sb	a5,1694(a4) # 8000cd4a <_ZL9finishedB>
    thread_dispatch();
    800056b4:	ffffc097          	auipc	ra,0xffffc
    800056b8:	f9c080e7          	jalr	-100(ra) # 80001650 <thread_dispatch>
}
    800056bc:	01813083          	ld	ra,24(sp)
    800056c0:	01013403          	ld	s0,16(sp)
    800056c4:	00813483          	ld	s1,8(sp)
    800056c8:	00013903          	ld	s2,0(sp)
    800056cc:	02010113          	addi	sp,sp,32
    800056d0:	00008067          	ret

00000000800056d4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800056d4:	fe010113          	addi	sp,sp,-32
    800056d8:	00113c23          	sd	ra,24(sp)
    800056dc:	00813823          	sd	s0,16(sp)
    800056e0:	00913423          	sd	s1,8(sp)
    800056e4:	01213023          	sd	s2,0(sp)
    800056e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800056ec:	00000913          	li	s2,0
    800056f0:	0380006f          	j	80005728 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	f5c080e7          	jalr	-164(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800056fc:	00148493          	addi	s1,s1,1
    80005700:	000027b7          	lui	a5,0x2
    80005704:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005708:	0097ee63          	bltu	a5,s1,80005724 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000570c:	00000713          	li	a4,0
    80005710:	000077b7          	lui	a5,0x7
    80005714:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005718:	fce7eee3          	bltu	a5,a4,800056f4 <_ZL11workerBodyAPv+0x20>
    8000571c:	00170713          	addi	a4,a4,1
    80005720:	ff1ff06f          	j	80005710 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005724:	00190913          	addi	s2,s2,1
    80005728:	00900793          	li	a5,9
    8000572c:	0527e063          	bltu	a5,s2,8000576c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005730:	00005517          	auipc	a0,0x5
    80005734:	ae850513          	addi	a0,a0,-1304 # 8000a218 <CONSOLE_STATUS+0x208>
    80005738:	00001097          	auipc	ra,0x1
    8000573c:	9f0080e7          	jalr	-1552(ra) # 80006128 <_Z11printStringPKc>
    80005740:	00000613          	li	a2,0
    80005744:	00a00593          	li	a1,10
    80005748:	0009051b          	sext.w	a0,s2
    8000574c:	00001097          	auipc	ra,0x1
    80005750:	b8c080e7          	jalr	-1140(ra) # 800062d8 <_Z8printIntiii>
    80005754:	00005517          	auipc	a0,0x5
    80005758:	d3450513          	addi	a0,a0,-716 # 8000a488 <CONSOLE_STATUS+0x478>
    8000575c:	00001097          	auipc	ra,0x1
    80005760:	9cc080e7          	jalr	-1588(ra) # 80006128 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005764:	00000493          	li	s1,0
    80005768:	f99ff06f          	j	80005700 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000576c:	00005517          	auipc	a0,0x5
    80005770:	ab450513          	addi	a0,a0,-1356 # 8000a220 <CONSOLE_STATUS+0x210>
    80005774:	00001097          	auipc	ra,0x1
    80005778:	9b4080e7          	jalr	-1612(ra) # 80006128 <_Z11printStringPKc>
    finishedA = true;
    8000577c:	00100793          	li	a5,1
    80005780:	00007717          	auipc	a4,0x7
    80005784:	5cf705a3          	sb	a5,1483(a4) # 8000cd4b <_ZL9finishedA>
}
    80005788:	01813083          	ld	ra,24(sp)
    8000578c:	01013403          	ld	s0,16(sp)
    80005790:	00813483          	ld	s1,8(sp)
    80005794:	00013903          	ld	s2,0(sp)
    80005798:	02010113          	addi	sp,sp,32
    8000579c:	00008067          	ret

00000000800057a0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800057a0:	fd010113          	addi	sp,sp,-48
    800057a4:	02113423          	sd	ra,40(sp)
    800057a8:	02813023          	sd	s0,32(sp)
    800057ac:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800057b0:	00000613          	li	a2,0
    800057b4:	00000597          	auipc	a1,0x0
    800057b8:	f2058593          	addi	a1,a1,-224 # 800056d4 <_ZL11workerBodyAPv>
    800057bc:	fd040513          	addi	a0,s0,-48
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	dec080e7          	jalr	-532(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    800057c8:	00005517          	auipc	a0,0x5
    800057cc:	ae850513          	addi	a0,a0,-1304 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800057d0:	00001097          	auipc	ra,0x1
    800057d4:	958080e7          	jalr	-1704(ra) # 80006128 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800057d8:	00000613          	li	a2,0
    800057dc:	00000597          	auipc	a1,0x0
    800057e0:	e2458593          	addi	a1,a1,-476 # 80005600 <_ZL11workerBodyBPv>
    800057e4:	fd840513          	addi	a0,s0,-40
    800057e8:	ffffc097          	auipc	ra,0xffffc
    800057ec:	dc4080e7          	jalr	-572(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    800057f0:	00005517          	auipc	a0,0x5
    800057f4:	ad850513          	addi	a0,a0,-1320 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800057f8:	00001097          	auipc	ra,0x1
    800057fc:	930080e7          	jalr	-1744(ra) # 80006128 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005800:	00000613          	li	a2,0
    80005804:	00000597          	auipc	a1,0x0
    80005808:	c7c58593          	addi	a1,a1,-900 # 80005480 <_ZL11workerBodyCPv>
    8000580c:	fe040513          	addi	a0,s0,-32
    80005810:	ffffc097          	auipc	ra,0xffffc
    80005814:	d9c080e7          	jalr	-612(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80005818:	00005517          	auipc	a0,0x5
    8000581c:	ac850513          	addi	a0,a0,-1336 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005820:	00001097          	auipc	ra,0x1
    80005824:	908080e7          	jalr	-1784(ra) # 80006128 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005828:	00000613          	li	a2,0
    8000582c:	00000597          	auipc	a1,0x0
    80005830:	b0c58593          	addi	a1,a1,-1268 # 80005338 <_ZL11workerBodyDPv>
    80005834:	fe840513          	addi	a0,s0,-24
    80005838:	ffffc097          	auipc	ra,0xffffc
    8000583c:	d74080e7          	jalr	-652(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80005840:	00005517          	auipc	a0,0x5
    80005844:	ab850513          	addi	a0,a0,-1352 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005848:	00001097          	auipc	ra,0x1
    8000584c:	8e0080e7          	jalr	-1824(ra) # 80006128 <_Z11printStringPKc>
    80005850:	00c0006f          	j	8000585c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005854:	ffffc097          	auipc	ra,0xffffc
    80005858:	dfc080e7          	jalr	-516(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000585c:	00007797          	auipc	a5,0x7
    80005860:	4ef7c783          	lbu	a5,1263(a5) # 8000cd4b <_ZL9finishedA>
    80005864:	fe0788e3          	beqz	a5,80005854 <_Z18Threads_C_API_testv+0xb4>
    80005868:	00007797          	auipc	a5,0x7
    8000586c:	4e27c783          	lbu	a5,1250(a5) # 8000cd4a <_ZL9finishedB>
    80005870:	fe0782e3          	beqz	a5,80005854 <_Z18Threads_C_API_testv+0xb4>
    80005874:	00007797          	auipc	a5,0x7
    80005878:	4d57c783          	lbu	a5,1237(a5) # 8000cd49 <_ZL9finishedC>
    8000587c:	fc078ce3          	beqz	a5,80005854 <_Z18Threads_C_API_testv+0xb4>
    80005880:	00007797          	auipc	a5,0x7
    80005884:	4c87c783          	lbu	a5,1224(a5) # 8000cd48 <_ZL9finishedD>
    80005888:	fc0786e3          	beqz	a5,80005854 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000588c:	02813083          	ld	ra,40(sp)
    80005890:	02013403          	ld	s0,32(sp)
    80005894:	03010113          	addi	sp,sp,48
    80005898:	00008067          	ret

000000008000589c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000589c:	fd010113          	addi	sp,sp,-48
    800058a0:	02113423          	sd	ra,40(sp)
    800058a4:	02813023          	sd	s0,32(sp)
    800058a8:	00913c23          	sd	s1,24(sp)
    800058ac:	01213823          	sd	s2,16(sp)
    800058b0:	01313423          	sd	s3,8(sp)
    800058b4:	03010413          	addi	s0,sp,48
    800058b8:	00050993          	mv	s3,a0
    800058bc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800058c0:	00000913          	li	s2,0
    800058c4:	00c0006f          	j	800058d0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800058c8:	ffffe097          	auipc	ra,0xffffe
    800058cc:	a2c080e7          	jalr	-1492(ra) # 800032f4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	eb0080e7          	jalr	-336(ra) # 80001780 <getc>
    800058d8:	0005059b          	sext.w	a1,a0
    800058dc:	01b00793          	li	a5,27
    800058e0:	02f58a63          	beq	a1,a5,80005914 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800058e4:	0084b503          	ld	a0,8(s1)
    800058e8:	00001097          	auipc	ra,0x1
    800058ec:	c64080e7          	jalr	-924(ra) # 8000654c <_ZN9BufferCPP3putEi>
        i++;
    800058f0:	0019071b          	addiw	a4,s2,1
    800058f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800058f8:	0004a683          	lw	a3,0(s1)
    800058fc:	0026979b          	slliw	a5,a3,0x2
    80005900:	00d787bb          	addw	a5,a5,a3
    80005904:	0017979b          	slliw	a5,a5,0x1
    80005908:	02f767bb          	remw	a5,a4,a5
    8000590c:	fc0792e3          	bnez	a5,800058d0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005910:	fb9ff06f          	j	800058c8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005914:	00100793          	li	a5,1
    80005918:	00007717          	auipc	a4,0x7
    8000591c:	42f72c23          	sw	a5,1080(a4) # 8000cd50 <_ZL9threadEnd>
    td->buffer->put('!');
    80005920:	0209b783          	ld	a5,32(s3)
    80005924:	02100593          	li	a1,33
    80005928:	0087b503          	ld	a0,8(a5)
    8000592c:	00001097          	auipc	ra,0x1
    80005930:	c20080e7          	jalr	-992(ra) # 8000654c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005934:	0104b503          	ld	a0,16(s1)
    80005938:	ffffe097          	auipc	ra,0xffffe
    8000593c:	a70080e7          	jalr	-1424(ra) # 800033a8 <_ZN9Semaphore6signalEv>
}
    80005940:	02813083          	ld	ra,40(sp)
    80005944:	02013403          	ld	s0,32(sp)
    80005948:	01813483          	ld	s1,24(sp)
    8000594c:	01013903          	ld	s2,16(sp)
    80005950:	00813983          	ld	s3,8(sp)
    80005954:	03010113          	addi	sp,sp,48
    80005958:	00008067          	ret

000000008000595c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000595c:	fe010113          	addi	sp,sp,-32
    80005960:	00113c23          	sd	ra,24(sp)
    80005964:	00813823          	sd	s0,16(sp)
    80005968:	00913423          	sd	s1,8(sp)
    8000596c:	01213023          	sd	s2,0(sp)
    80005970:	02010413          	addi	s0,sp,32
    80005974:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005978:	00000913          	li	s2,0
    8000597c:	00c0006f          	j	80005988 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005980:	ffffe097          	auipc	ra,0xffffe
    80005984:	974080e7          	jalr	-1676(ra) # 800032f4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005988:	00007797          	auipc	a5,0x7
    8000598c:	3c87a783          	lw	a5,968(a5) # 8000cd50 <_ZL9threadEnd>
    80005990:	02079e63          	bnez	a5,800059cc <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005994:	0004a583          	lw	a1,0(s1)
    80005998:	0305859b          	addiw	a1,a1,48
    8000599c:	0084b503          	ld	a0,8(s1)
    800059a0:	00001097          	auipc	ra,0x1
    800059a4:	bac080e7          	jalr	-1108(ra) # 8000654c <_ZN9BufferCPP3putEi>
        i++;
    800059a8:	0019071b          	addiw	a4,s2,1
    800059ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800059b0:	0004a683          	lw	a3,0(s1)
    800059b4:	0026979b          	slliw	a5,a3,0x2
    800059b8:	00d787bb          	addw	a5,a5,a3
    800059bc:	0017979b          	slliw	a5,a5,0x1
    800059c0:	02f767bb          	remw	a5,a4,a5
    800059c4:	fc0792e3          	bnez	a5,80005988 <_ZN12ProducerSync8producerEPv+0x2c>
    800059c8:	fb9ff06f          	j	80005980 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800059cc:	0104b503          	ld	a0,16(s1)
    800059d0:	ffffe097          	auipc	ra,0xffffe
    800059d4:	9d8080e7          	jalr	-1576(ra) # 800033a8 <_ZN9Semaphore6signalEv>
}
    800059d8:	01813083          	ld	ra,24(sp)
    800059dc:	01013403          	ld	s0,16(sp)
    800059e0:	00813483          	ld	s1,8(sp)
    800059e4:	00013903          	ld	s2,0(sp)
    800059e8:	02010113          	addi	sp,sp,32
    800059ec:	00008067          	ret

00000000800059f0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800059f0:	fd010113          	addi	sp,sp,-48
    800059f4:	02113423          	sd	ra,40(sp)
    800059f8:	02813023          	sd	s0,32(sp)
    800059fc:	00913c23          	sd	s1,24(sp)
    80005a00:	01213823          	sd	s2,16(sp)
    80005a04:	01313423          	sd	s3,8(sp)
    80005a08:	01413023          	sd	s4,0(sp)
    80005a0c:	03010413          	addi	s0,sp,48
    80005a10:	00050993          	mv	s3,a0
    80005a14:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005a18:	00000a13          	li	s4,0
    80005a1c:	01c0006f          	j	80005a38 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005a20:	ffffe097          	auipc	ra,0xffffe
    80005a24:	8d4080e7          	jalr	-1836(ra) # 800032f4 <_ZN6Thread8dispatchEv>
    80005a28:	0500006f          	j	80005a78 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005a2c:	00a00513          	li	a0,10
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	d74080e7          	jalr	-652(ra) # 800017a4 <putc>
    while (!threadEnd) {
    80005a38:	00007797          	auipc	a5,0x7
    80005a3c:	3187a783          	lw	a5,792(a5) # 8000cd50 <_ZL9threadEnd>
    80005a40:	06079263          	bnez	a5,80005aa4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005a44:	00893503          	ld	a0,8(s2)
    80005a48:	00001097          	auipc	ra,0x1
    80005a4c:	b94080e7          	jalr	-1132(ra) # 800065dc <_ZN9BufferCPP3getEv>
        i++;
    80005a50:	001a049b          	addiw	s1,s4,1
    80005a54:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005a58:	0ff57513          	andi	a0,a0,255
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	d48080e7          	jalr	-696(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    80005a64:	00092703          	lw	a4,0(s2)
    80005a68:	0027179b          	slliw	a5,a4,0x2
    80005a6c:	00e787bb          	addw	a5,a5,a4
    80005a70:	02f4e7bb          	remw	a5,s1,a5
    80005a74:	fa0786e3          	beqz	a5,80005a20 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005a78:	05000793          	li	a5,80
    80005a7c:	02f4e4bb          	remw	s1,s1,a5
    80005a80:	fa049ce3          	bnez	s1,80005a38 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005a84:	fa9ff06f          	j	80005a2c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005a88:	0209b783          	ld	a5,32(s3)
    80005a8c:	0087b503          	ld	a0,8(a5)
    80005a90:	00001097          	auipc	ra,0x1
    80005a94:	b4c080e7          	jalr	-1204(ra) # 800065dc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005a98:	0ff57513          	andi	a0,a0,255
    80005a9c:	ffffe097          	auipc	ra,0xffffe
    80005aa0:	9cc080e7          	jalr	-1588(ra) # 80003468 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005aa4:	0209b783          	ld	a5,32(s3)
    80005aa8:	0087b503          	ld	a0,8(a5)
    80005aac:	00001097          	auipc	ra,0x1
    80005ab0:	bbc080e7          	jalr	-1092(ra) # 80006668 <_ZN9BufferCPP6getCntEv>
    80005ab4:	fca04ae3          	bgtz	a0,80005a88 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005ab8:	01093503          	ld	a0,16(s2)
    80005abc:	ffffe097          	auipc	ra,0xffffe
    80005ac0:	8ec080e7          	jalr	-1812(ra) # 800033a8 <_ZN9Semaphore6signalEv>
}
    80005ac4:	02813083          	ld	ra,40(sp)
    80005ac8:	02013403          	ld	s0,32(sp)
    80005acc:	01813483          	ld	s1,24(sp)
    80005ad0:	01013903          	ld	s2,16(sp)
    80005ad4:	00813983          	ld	s3,8(sp)
    80005ad8:	00013a03          	ld	s4,0(sp)
    80005adc:	03010113          	addi	sp,sp,48
    80005ae0:	00008067          	ret

0000000080005ae4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005ae4:	f8010113          	addi	sp,sp,-128
    80005ae8:	06113c23          	sd	ra,120(sp)
    80005aec:	06813823          	sd	s0,112(sp)
    80005af0:	06913423          	sd	s1,104(sp)
    80005af4:	07213023          	sd	s2,96(sp)
    80005af8:	05313c23          	sd	s3,88(sp)
    80005afc:	05413823          	sd	s4,80(sp)
    80005b00:	05513423          	sd	s5,72(sp)
    80005b04:	05613023          	sd	s6,64(sp)
    80005b08:	03713c23          	sd	s7,56(sp)
    80005b0c:	03813823          	sd	s8,48(sp)
    80005b10:	03913423          	sd	s9,40(sp)
    80005b14:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005b18:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005b1c:	00004517          	auipc	a0,0x4
    80005b20:	61450513          	addi	a0,a0,1556 # 8000a130 <CONSOLE_STATUS+0x120>
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	604080e7          	jalr	1540(ra) # 80006128 <_Z11printStringPKc>
    getString(input, 30);
    80005b2c:	01e00593          	li	a1,30
    80005b30:	f8040493          	addi	s1,s0,-128
    80005b34:	00048513          	mv	a0,s1
    80005b38:	00000097          	auipc	ra,0x0
    80005b3c:	678080e7          	jalr	1656(ra) # 800061b0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005b40:	00048513          	mv	a0,s1
    80005b44:	00000097          	auipc	ra,0x0
    80005b48:	744080e7          	jalr	1860(ra) # 80006288 <_Z11stringToIntPKc>
    80005b4c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005b50:	00004517          	auipc	a0,0x4
    80005b54:	60050513          	addi	a0,a0,1536 # 8000a150 <CONSOLE_STATUS+0x140>
    80005b58:	00000097          	auipc	ra,0x0
    80005b5c:	5d0080e7          	jalr	1488(ra) # 80006128 <_Z11printStringPKc>
    getString(input, 30);
    80005b60:	01e00593          	li	a1,30
    80005b64:	00048513          	mv	a0,s1
    80005b68:	00000097          	auipc	ra,0x0
    80005b6c:	648080e7          	jalr	1608(ra) # 800061b0 <_Z9getStringPci>
    n = stringToInt(input);
    80005b70:	00048513          	mv	a0,s1
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	714080e7          	jalr	1812(ra) # 80006288 <_Z11stringToIntPKc>
    80005b7c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005b80:	00004517          	auipc	a0,0x4
    80005b84:	5f050513          	addi	a0,a0,1520 # 8000a170 <CONSOLE_STATUS+0x160>
    80005b88:	00000097          	auipc	ra,0x0
    80005b8c:	5a0080e7          	jalr	1440(ra) # 80006128 <_Z11printStringPKc>
    80005b90:	00000613          	li	a2,0
    80005b94:	00a00593          	li	a1,10
    80005b98:	00090513          	mv	a0,s2
    80005b9c:	00000097          	auipc	ra,0x0
    80005ba0:	73c080e7          	jalr	1852(ra) # 800062d8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005ba4:	00004517          	auipc	a0,0x4
    80005ba8:	5e450513          	addi	a0,a0,1508 # 8000a188 <CONSOLE_STATUS+0x178>
    80005bac:	00000097          	auipc	ra,0x0
    80005bb0:	57c080e7          	jalr	1404(ra) # 80006128 <_Z11printStringPKc>
    80005bb4:	00000613          	li	a2,0
    80005bb8:	00a00593          	li	a1,10
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	00000097          	auipc	ra,0x0
    80005bc4:	718080e7          	jalr	1816(ra) # 800062d8 <_Z8printIntiii>
    printString(".\n");
    80005bc8:	00004517          	auipc	a0,0x4
    80005bcc:	5d850513          	addi	a0,a0,1496 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005bd0:	00000097          	auipc	ra,0x0
    80005bd4:	558080e7          	jalr	1368(ra) # 80006128 <_Z11printStringPKc>
    if(threadNum > n) {
    80005bd8:	0324c463          	blt	s1,s2,80005c00 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005bdc:	03205c63          	blez	s2,80005c14 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005be0:	03800513          	li	a0,56
    80005be4:	ffffd097          	auipc	ra,0xffffd
    80005be8:	5a4080e7          	jalr	1444(ra) # 80003188 <_Znwm>
    80005bec:	00050a93          	mv	s5,a0
    80005bf0:	00048593          	mv	a1,s1
    80005bf4:	00001097          	auipc	ra,0x1
    80005bf8:	804080e7          	jalr	-2044(ra) # 800063f8 <_ZN9BufferCPPC1Ei>
    80005bfc:	0300006f          	j	80005c2c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005c00:	00004517          	auipc	a0,0x4
    80005c04:	5a850513          	addi	a0,a0,1448 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005c08:	00000097          	auipc	ra,0x0
    80005c0c:	520080e7          	jalr	1312(ra) # 80006128 <_Z11printStringPKc>
        return;
    80005c10:	0140006f          	j	80005c24 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	5d450513          	addi	a0,a0,1492 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	50c080e7          	jalr	1292(ra) # 80006128 <_Z11printStringPKc>
        return;
    80005c24:	000b8113          	mv	sp,s7
    80005c28:	2380006f          	j	80005e60 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005c2c:	01000513          	li	a0,16
    80005c30:	ffffd097          	auipc	ra,0xffffd
    80005c34:	558080e7          	jalr	1368(ra) # 80003188 <_Znwm>
    80005c38:	00050493          	mv	s1,a0
    80005c3c:	00000593          	li	a1,0
    80005c40:	ffffd097          	auipc	ra,0xffffd
    80005c44:	704080e7          	jalr	1796(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    80005c48:	00007797          	auipc	a5,0x7
    80005c4c:	1097b823          	sd	s1,272(a5) # 8000cd58 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005c50:	00391793          	slli	a5,s2,0x3
    80005c54:	00f78793          	addi	a5,a5,15
    80005c58:	ff07f793          	andi	a5,a5,-16
    80005c5c:	40f10133          	sub	sp,sp,a5
    80005c60:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005c64:	0019071b          	addiw	a4,s2,1
    80005c68:	00171793          	slli	a5,a4,0x1
    80005c6c:	00e787b3          	add	a5,a5,a4
    80005c70:	00379793          	slli	a5,a5,0x3
    80005c74:	00f78793          	addi	a5,a5,15
    80005c78:	ff07f793          	andi	a5,a5,-16
    80005c7c:	40f10133          	sub	sp,sp,a5
    80005c80:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005c84:	00191c13          	slli	s8,s2,0x1
    80005c88:	012c07b3          	add	a5,s8,s2
    80005c8c:	00379793          	slli	a5,a5,0x3
    80005c90:	00fa07b3          	add	a5,s4,a5
    80005c94:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005c98:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005c9c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005ca0:	02800513          	li	a0,40
    80005ca4:	ffffd097          	auipc	ra,0xffffd
    80005ca8:	4e4080e7          	jalr	1252(ra) # 80003188 <_Znwm>
    80005cac:	00050b13          	mv	s6,a0
    80005cb0:	012c0c33          	add	s8,s8,s2
    80005cb4:	003c1c13          	slli	s8,s8,0x3
    80005cb8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005cbc:	ffffd097          	auipc	ra,0xffffd
    80005cc0:	5b4080e7          	jalr	1460(ra) # 80003270 <_ZN6ThreadC1Ev>
    80005cc4:	00007797          	auipc	a5,0x7
    80005cc8:	ce478793          	addi	a5,a5,-796 # 8000c9a8 <_ZTV12ConsumerSync+0x10>
    80005ccc:	00fb3023          	sd	a5,0(s6)
    80005cd0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005cd4:	000b0513          	mv	a0,s6
    80005cd8:	ffffd097          	auipc	ra,0xffffd
    80005cdc:	5c8080e7          	jalr	1480(ra) # 800032a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005ce0:	00000493          	li	s1,0
    80005ce4:	0380006f          	j	80005d1c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005ce8:	00007797          	auipc	a5,0x7
    80005cec:	c9878793          	addi	a5,a5,-872 # 8000c980 <_ZTV12ProducerSync+0x10>
    80005cf0:	00fcb023          	sd	a5,0(s9)
    80005cf4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005cf8:	00349793          	slli	a5,s1,0x3
    80005cfc:	00f987b3          	add	a5,s3,a5
    80005d00:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005d04:	00349793          	slli	a5,s1,0x3
    80005d08:	00f987b3          	add	a5,s3,a5
    80005d0c:	0007b503          	ld	a0,0(a5)
    80005d10:	ffffd097          	auipc	ra,0xffffd
    80005d14:	590080e7          	jalr	1424(ra) # 800032a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005d18:	0014849b          	addiw	s1,s1,1
    80005d1c:	0b24d063          	bge	s1,s2,80005dbc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005d20:	00149793          	slli	a5,s1,0x1
    80005d24:	009787b3          	add	a5,a5,s1
    80005d28:	00379793          	slli	a5,a5,0x3
    80005d2c:	00fa07b3          	add	a5,s4,a5
    80005d30:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005d34:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005d38:	00007717          	auipc	a4,0x7
    80005d3c:	02073703          	ld	a4,32(a4) # 8000cd58 <_ZL10waitForAll>
    80005d40:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005d44:	02905863          	blez	s1,80005d74 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005d48:	02800513          	li	a0,40
    80005d4c:	ffffd097          	auipc	ra,0xffffd
    80005d50:	43c080e7          	jalr	1084(ra) # 80003188 <_Znwm>
    80005d54:	00050c93          	mv	s9,a0
    80005d58:	00149c13          	slli	s8,s1,0x1
    80005d5c:	009c0c33          	add	s8,s8,s1
    80005d60:	003c1c13          	slli	s8,s8,0x3
    80005d64:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005d68:	ffffd097          	auipc	ra,0xffffd
    80005d6c:	508080e7          	jalr	1288(ra) # 80003270 <_ZN6ThreadC1Ev>
    80005d70:	f79ff06f          	j	80005ce8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005d74:	02800513          	li	a0,40
    80005d78:	ffffd097          	auipc	ra,0xffffd
    80005d7c:	410080e7          	jalr	1040(ra) # 80003188 <_Znwm>
    80005d80:	00050c93          	mv	s9,a0
    80005d84:	00149c13          	slli	s8,s1,0x1
    80005d88:	009c0c33          	add	s8,s8,s1
    80005d8c:	003c1c13          	slli	s8,s8,0x3
    80005d90:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005d94:	ffffd097          	auipc	ra,0xffffd
    80005d98:	4dc080e7          	jalr	1244(ra) # 80003270 <_ZN6ThreadC1Ev>
    80005d9c:	00007797          	auipc	a5,0x7
    80005da0:	bbc78793          	addi	a5,a5,-1092 # 8000c958 <_ZTV16ProducerKeyboard+0x10>
    80005da4:	00fcb023          	sd	a5,0(s9)
    80005da8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005dac:	00349793          	slli	a5,s1,0x3
    80005db0:	00f987b3          	add	a5,s3,a5
    80005db4:	0197b023          	sd	s9,0(a5)
    80005db8:	f4dff06f          	j	80005d04 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005dbc:	ffffd097          	auipc	ra,0xffffd
    80005dc0:	538080e7          	jalr	1336(ra) # 800032f4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005dc4:	00000493          	li	s1,0
    80005dc8:	00994e63          	blt	s2,s1,80005de4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005dcc:	00007517          	auipc	a0,0x7
    80005dd0:	f8c53503          	ld	a0,-116(a0) # 8000cd58 <_ZL10waitForAll>
    80005dd4:	ffffd097          	auipc	ra,0xffffd
    80005dd8:	5a8080e7          	jalr	1448(ra) # 8000337c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005ddc:	0014849b          	addiw	s1,s1,1
    80005de0:	fe9ff06f          	j	80005dc8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005de4:	00000493          	li	s1,0
    80005de8:	0080006f          	j	80005df0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005dec:	0014849b          	addiw	s1,s1,1
    80005df0:	0324d263          	bge	s1,s2,80005e14 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005df4:	00349793          	slli	a5,s1,0x3
    80005df8:	00f987b3          	add	a5,s3,a5
    80005dfc:	0007b503          	ld	a0,0(a5)
    80005e00:	fe0506e3          	beqz	a0,80005dec <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005e04:	00053783          	ld	a5,0(a0)
    80005e08:	0087b783          	ld	a5,8(a5)
    80005e0c:	000780e7          	jalr	a5
    80005e10:	fddff06f          	j	80005dec <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005e14:	000b0a63          	beqz	s6,80005e28 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005e18:	000b3783          	ld	a5,0(s6)
    80005e1c:	0087b783          	ld	a5,8(a5)
    80005e20:	000b0513          	mv	a0,s6
    80005e24:	000780e7          	jalr	a5
    delete waitForAll;
    80005e28:	00007517          	auipc	a0,0x7
    80005e2c:	f3053503          	ld	a0,-208(a0) # 8000cd58 <_ZL10waitForAll>
    80005e30:	00050863          	beqz	a0,80005e40 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005e34:	00053783          	ld	a5,0(a0)
    80005e38:	0087b783          	ld	a5,8(a5)
    80005e3c:	000780e7          	jalr	a5
    delete buffer;
    80005e40:	000a8e63          	beqz	s5,80005e5c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005e44:	000a8513          	mv	a0,s5
    80005e48:	00001097          	auipc	ra,0x1
    80005e4c:	8a8080e7          	jalr	-1880(ra) # 800066f0 <_ZN9BufferCPPD1Ev>
    80005e50:	000a8513          	mv	a0,s5
    80005e54:	ffffd097          	auipc	ra,0xffffd
    80005e58:	35c080e7          	jalr	860(ra) # 800031b0 <_ZdlPv>
    80005e5c:	000b8113          	mv	sp,s7

}
    80005e60:	f8040113          	addi	sp,s0,-128
    80005e64:	07813083          	ld	ra,120(sp)
    80005e68:	07013403          	ld	s0,112(sp)
    80005e6c:	06813483          	ld	s1,104(sp)
    80005e70:	06013903          	ld	s2,96(sp)
    80005e74:	05813983          	ld	s3,88(sp)
    80005e78:	05013a03          	ld	s4,80(sp)
    80005e7c:	04813a83          	ld	s5,72(sp)
    80005e80:	04013b03          	ld	s6,64(sp)
    80005e84:	03813b83          	ld	s7,56(sp)
    80005e88:	03013c03          	ld	s8,48(sp)
    80005e8c:	02813c83          	ld	s9,40(sp)
    80005e90:	08010113          	addi	sp,sp,128
    80005e94:	00008067          	ret
    80005e98:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005e9c:	000a8513          	mv	a0,s5
    80005ea0:	ffffd097          	auipc	ra,0xffffd
    80005ea4:	310080e7          	jalr	784(ra) # 800031b0 <_ZdlPv>
    80005ea8:	00048513          	mv	a0,s1
    80005eac:	00008097          	auipc	ra,0x8
    80005eb0:	f8c080e7          	jalr	-116(ra) # 8000de38 <_Unwind_Resume>
    80005eb4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005eb8:	00048513          	mv	a0,s1
    80005ebc:	ffffd097          	auipc	ra,0xffffd
    80005ec0:	2f4080e7          	jalr	756(ra) # 800031b0 <_ZdlPv>
    80005ec4:	00090513          	mv	a0,s2
    80005ec8:	00008097          	auipc	ra,0x8
    80005ecc:	f70080e7          	jalr	-144(ra) # 8000de38 <_Unwind_Resume>
    80005ed0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005ed4:	000b0513          	mv	a0,s6
    80005ed8:	ffffd097          	auipc	ra,0xffffd
    80005edc:	2d8080e7          	jalr	728(ra) # 800031b0 <_ZdlPv>
    80005ee0:	00048513          	mv	a0,s1
    80005ee4:	00008097          	auipc	ra,0x8
    80005ee8:	f54080e7          	jalr	-172(ra) # 8000de38 <_Unwind_Resume>
    80005eec:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005ef0:	000c8513          	mv	a0,s9
    80005ef4:	ffffd097          	auipc	ra,0xffffd
    80005ef8:	2bc080e7          	jalr	700(ra) # 800031b0 <_ZdlPv>
    80005efc:	00048513          	mv	a0,s1
    80005f00:	00008097          	auipc	ra,0x8
    80005f04:	f38080e7          	jalr	-200(ra) # 8000de38 <_Unwind_Resume>
    80005f08:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005f0c:	000c8513          	mv	a0,s9
    80005f10:	ffffd097          	auipc	ra,0xffffd
    80005f14:	2a0080e7          	jalr	672(ra) # 800031b0 <_ZdlPv>
    80005f18:	00048513          	mv	a0,s1
    80005f1c:	00008097          	auipc	ra,0x8
    80005f20:	f1c080e7          	jalr	-228(ra) # 8000de38 <_Unwind_Resume>

0000000080005f24 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005f24:	ff010113          	addi	sp,sp,-16
    80005f28:	00113423          	sd	ra,8(sp)
    80005f2c:	00813023          	sd	s0,0(sp)
    80005f30:	01010413          	addi	s0,sp,16
    80005f34:	00007797          	auipc	a5,0x7
    80005f38:	a7478793          	addi	a5,a5,-1420 # 8000c9a8 <_ZTV12ConsumerSync+0x10>
    80005f3c:	00f53023          	sd	a5,0(a0)
    80005f40:	ffffd097          	auipc	ra,0xffffd
    80005f44:	178080e7          	jalr	376(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80005f48:	00813083          	ld	ra,8(sp)
    80005f4c:	00013403          	ld	s0,0(sp)
    80005f50:	01010113          	addi	sp,sp,16
    80005f54:	00008067          	ret

0000000080005f58 <_ZN12ConsumerSyncD0Ev>:
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	02010413          	addi	s0,sp,32
    80005f6c:	00050493          	mv	s1,a0
    80005f70:	00007797          	auipc	a5,0x7
    80005f74:	a3878793          	addi	a5,a5,-1480 # 8000c9a8 <_ZTV12ConsumerSync+0x10>
    80005f78:	00f53023          	sd	a5,0(a0)
    80005f7c:	ffffd097          	auipc	ra,0xffffd
    80005f80:	13c080e7          	jalr	316(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80005f84:	00048513          	mv	a0,s1
    80005f88:	ffffd097          	auipc	ra,0xffffd
    80005f8c:	228080e7          	jalr	552(ra) # 800031b0 <_ZdlPv>
    80005f90:	01813083          	ld	ra,24(sp)
    80005f94:	01013403          	ld	s0,16(sp)
    80005f98:	00813483          	ld	s1,8(sp)
    80005f9c:	02010113          	addi	sp,sp,32
    80005fa0:	00008067          	ret

0000000080005fa4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005fa4:	ff010113          	addi	sp,sp,-16
    80005fa8:	00113423          	sd	ra,8(sp)
    80005fac:	00813023          	sd	s0,0(sp)
    80005fb0:	01010413          	addi	s0,sp,16
    80005fb4:	00007797          	auipc	a5,0x7
    80005fb8:	9cc78793          	addi	a5,a5,-1588 # 8000c980 <_ZTV12ProducerSync+0x10>
    80005fbc:	00f53023          	sd	a5,0(a0)
    80005fc0:	ffffd097          	auipc	ra,0xffffd
    80005fc4:	0f8080e7          	jalr	248(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80005fc8:	00813083          	ld	ra,8(sp)
    80005fcc:	00013403          	ld	s0,0(sp)
    80005fd0:	01010113          	addi	sp,sp,16
    80005fd4:	00008067          	ret

0000000080005fd8 <_ZN12ProducerSyncD0Ev>:
    80005fd8:	fe010113          	addi	sp,sp,-32
    80005fdc:	00113c23          	sd	ra,24(sp)
    80005fe0:	00813823          	sd	s0,16(sp)
    80005fe4:	00913423          	sd	s1,8(sp)
    80005fe8:	02010413          	addi	s0,sp,32
    80005fec:	00050493          	mv	s1,a0
    80005ff0:	00007797          	auipc	a5,0x7
    80005ff4:	99078793          	addi	a5,a5,-1648 # 8000c980 <_ZTV12ProducerSync+0x10>
    80005ff8:	00f53023          	sd	a5,0(a0)
    80005ffc:	ffffd097          	auipc	ra,0xffffd
    80006000:	0bc080e7          	jalr	188(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80006004:	00048513          	mv	a0,s1
    80006008:	ffffd097          	auipc	ra,0xffffd
    8000600c:	1a8080e7          	jalr	424(ra) # 800031b0 <_ZdlPv>
    80006010:	01813083          	ld	ra,24(sp)
    80006014:	01013403          	ld	s0,16(sp)
    80006018:	00813483          	ld	s1,8(sp)
    8000601c:	02010113          	addi	sp,sp,32
    80006020:	00008067          	ret

0000000080006024 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80006024:	ff010113          	addi	sp,sp,-16
    80006028:	00113423          	sd	ra,8(sp)
    8000602c:	00813023          	sd	s0,0(sp)
    80006030:	01010413          	addi	s0,sp,16
    80006034:	00007797          	auipc	a5,0x7
    80006038:	92478793          	addi	a5,a5,-1756 # 8000c958 <_ZTV16ProducerKeyboard+0x10>
    8000603c:	00f53023          	sd	a5,0(a0)
    80006040:	ffffd097          	auipc	ra,0xffffd
    80006044:	078080e7          	jalr	120(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80006048:	00813083          	ld	ra,8(sp)
    8000604c:	00013403          	ld	s0,0(sp)
    80006050:	01010113          	addi	sp,sp,16
    80006054:	00008067          	ret

0000000080006058 <_ZN16ProducerKeyboardD0Ev>:
    80006058:	fe010113          	addi	sp,sp,-32
    8000605c:	00113c23          	sd	ra,24(sp)
    80006060:	00813823          	sd	s0,16(sp)
    80006064:	00913423          	sd	s1,8(sp)
    80006068:	02010413          	addi	s0,sp,32
    8000606c:	00050493          	mv	s1,a0
    80006070:	00007797          	auipc	a5,0x7
    80006074:	8e878793          	addi	a5,a5,-1816 # 8000c958 <_ZTV16ProducerKeyboard+0x10>
    80006078:	00f53023          	sd	a5,0(a0)
    8000607c:	ffffd097          	auipc	ra,0xffffd
    80006080:	03c080e7          	jalr	60(ra) # 800030b8 <_ZN6ThreadD1Ev>
    80006084:	00048513          	mv	a0,s1
    80006088:	ffffd097          	auipc	ra,0xffffd
    8000608c:	128080e7          	jalr	296(ra) # 800031b0 <_ZdlPv>
    80006090:	01813083          	ld	ra,24(sp)
    80006094:	01013403          	ld	s0,16(sp)
    80006098:	00813483          	ld	s1,8(sp)
    8000609c:	02010113          	addi	sp,sp,32
    800060a0:	00008067          	ret

00000000800060a4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800060a4:	ff010113          	addi	sp,sp,-16
    800060a8:	00113423          	sd	ra,8(sp)
    800060ac:	00813023          	sd	s0,0(sp)
    800060b0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800060b4:	02053583          	ld	a1,32(a0)
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	7e4080e7          	jalr	2020(ra) # 8000589c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800060c0:	00813083          	ld	ra,8(sp)
    800060c4:	00013403          	ld	s0,0(sp)
    800060c8:	01010113          	addi	sp,sp,16
    800060cc:	00008067          	ret

00000000800060d0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800060d0:	ff010113          	addi	sp,sp,-16
    800060d4:	00113423          	sd	ra,8(sp)
    800060d8:	00813023          	sd	s0,0(sp)
    800060dc:	01010413          	addi	s0,sp,16
        producer(td);
    800060e0:	02053583          	ld	a1,32(a0)
    800060e4:	00000097          	auipc	ra,0x0
    800060e8:	878080e7          	jalr	-1928(ra) # 8000595c <_ZN12ProducerSync8producerEPv>
    }
    800060ec:	00813083          	ld	ra,8(sp)
    800060f0:	00013403          	ld	s0,0(sp)
    800060f4:	01010113          	addi	sp,sp,16
    800060f8:	00008067          	ret

00000000800060fc <_ZN12ConsumerSync3runEv>:
    void run() override {
    800060fc:	ff010113          	addi	sp,sp,-16
    80006100:	00113423          	sd	ra,8(sp)
    80006104:	00813023          	sd	s0,0(sp)
    80006108:	01010413          	addi	s0,sp,16
        consumer(td);
    8000610c:	02053583          	ld	a1,32(a0)
    80006110:	00000097          	auipc	ra,0x0
    80006114:	8e0080e7          	jalr	-1824(ra) # 800059f0 <_ZN12ConsumerSync8consumerEPv>
    }
    80006118:	00813083          	ld	ra,8(sp)
    8000611c:	00013403          	ld	s0,0(sp)
    80006120:	01010113          	addi	sp,sp,16
    80006124:	00008067          	ret

0000000080006128 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006128:	fe010113          	addi	sp,sp,-32
    8000612c:	00113c23          	sd	ra,24(sp)
    80006130:	00813823          	sd	s0,16(sp)
    80006134:	00913423          	sd	s1,8(sp)
    80006138:	02010413          	addi	s0,sp,32
    8000613c:	00050493          	mv	s1,a0
    LOCK();
    80006140:	00100613          	li	a2,1
    80006144:	00000593          	li	a1,0
    80006148:	00007517          	auipc	a0,0x7
    8000614c:	c1850513          	addi	a0,a0,-1000 # 8000cd60 <lockPrint>
    80006150:	ffffb097          	auipc	ra,0xffffb
    80006154:	180080e7          	jalr	384(ra) # 800012d0 <copy_and_swap>
    80006158:	00050863          	beqz	a0,80006168 <_Z11printStringPKc+0x40>
    8000615c:	ffffb097          	auipc	ra,0xffffb
    80006160:	4f4080e7          	jalr	1268(ra) # 80001650 <thread_dispatch>
    80006164:	fddff06f          	j	80006140 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006168:	0004c503          	lbu	a0,0(s1)
    8000616c:	00050a63          	beqz	a0,80006180 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	634080e7          	jalr	1588(ra) # 800017a4 <putc>
        string++;
    80006178:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000617c:	fedff06f          	j	80006168 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006180:	00000613          	li	a2,0
    80006184:	00100593          	li	a1,1
    80006188:	00007517          	auipc	a0,0x7
    8000618c:	bd850513          	addi	a0,a0,-1064 # 8000cd60 <lockPrint>
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	140080e7          	jalr	320(ra) # 800012d0 <copy_and_swap>
    80006198:	fe0514e3          	bnez	a0,80006180 <_Z11printStringPKc+0x58>
}
    8000619c:	01813083          	ld	ra,24(sp)
    800061a0:	01013403          	ld	s0,16(sp)
    800061a4:	00813483          	ld	s1,8(sp)
    800061a8:	02010113          	addi	sp,sp,32
    800061ac:	00008067          	ret

00000000800061b0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800061b0:	fd010113          	addi	sp,sp,-48
    800061b4:	02113423          	sd	ra,40(sp)
    800061b8:	02813023          	sd	s0,32(sp)
    800061bc:	00913c23          	sd	s1,24(sp)
    800061c0:	01213823          	sd	s2,16(sp)
    800061c4:	01313423          	sd	s3,8(sp)
    800061c8:	01413023          	sd	s4,0(sp)
    800061cc:	03010413          	addi	s0,sp,48
    800061d0:	00050993          	mv	s3,a0
    800061d4:	00058a13          	mv	s4,a1
    LOCK();
    800061d8:	00100613          	li	a2,1
    800061dc:	00000593          	li	a1,0
    800061e0:	00007517          	auipc	a0,0x7
    800061e4:	b8050513          	addi	a0,a0,-1152 # 8000cd60 <lockPrint>
    800061e8:	ffffb097          	auipc	ra,0xffffb
    800061ec:	0e8080e7          	jalr	232(ra) # 800012d0 <copy_and_swap>
    800061f0:	00050863          	beqz	a0,80006200 <_Z9getStringPci+0x50>
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	45c080e7          	jalr	1116(ra) # 80001650 <thread_dispatch>
    800061fc:	fddff06f          	j	800061d8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006200:	00000913          	li	s2,0
    80006204:	00090493          	mv	s1,s2
    80006208:	0019091b          	addiw	s2,s2,1
    8000620c:	03495a63          	bge	s2,s4,80006240 <_Z9getStringPci+0x90>
        cc = getc();
    80006210:	ffffb097          	auipc	ra,0xffffb
    80006214:	570080e7          	jalr	1392(ra) # 80001780 <getc>
        if(cc < 1)
    80006218:	02050463          	beqz	a0,80006240 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000621c:	009984b3          	add	s1,s3,s1
    80006220:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006224:	00a00793          	li	a5,10
    80006228:	00f50a63          	beq	a0,a5,8000623c <_Z9getStringPci+0x8c>
    8000622c:	00d00793          	li	a5,13
    80006230:	fcf51ae3          	bne	a0,a5,80006204 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006234:	00090493          	mv	s1,s2
    80006238:	0080006f          	j	80006240 <_Z9getStringPci+0x90>
    8000623c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006240:	009984b3          	add	s1,s3,s1
    80006244:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006248:	00000613          	li	a2,0
    8000624c:	00100593          	li	a1,1
    80006250:	00007517          	auipc	a0,0x7
    80006254:	b1050513          	addi	a0,a0,-1264 # 8000cd60 <lockPrint>
    80006258:	ffffb097          	auipc	ra,0xffffb
    8000625c:	078080e7          	jalr	120(ra) # 800012d0 <copy_and_swap>
    80006260:	fe0514e3          	bnez	a0,80006248 <_Z9getStringPci+0x98>
    return buf;
}
    80006264:	00098513          	mv	a0,s3
    80006268:	02813083          	ld	ra,40(sp)
    8000626c:	02013403          	ld	s0,32(sp)
    80006270:	01813483          	ld	s1,24(sp)
    80006274:	01013903          	ld	s2,16(sp)
    80006278:	00813983          	ld	s3,8(sp)
    8000627c:	00013a03          	ld	s4,0(sp)
    80006280:	03010113          	addi	sp,sp,48
    80006284:	00008067          	ret

0000000080006288 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006288:	ff010113          	addi	sp,sp,-16
    8000628c:	00813423          	sd	s0,8(sp)
    80006290:	01010413          	addi	s0,sp,16
    80006294:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006298:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000629c:	0006c603          	lbu	a2,0(a3)
    800062a0:	fd06071b          	addiw	a4,a2,-48
    800062a4:	0ff77713          	andi	a4,a4,255
    800062a8:	00900793          	li	a5,9
    800062ac:	02e7e063          	bltu	a5,a4,800062cc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800062b0:	0025179b          	slliw	a5,a0,0x2
    800062b4:	00a787bb          	addw	a5,a5,a0
    800062b8:	0017979b          	slliw	a5,a5,0x1
    800062bc:	00168693          	addi	a3,a3,1
    800062c0:	00c787bb          	addw	a5,a5,a2
    800062c4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800062c8:	fd5ff06f          	j	8000629c <_Z11stringToIntPKc+0x14>
    return n;
}
    800062cc:	00813403          	ld	s0,8(sp)
    800062d0:	01010113          	addi	sp,sp,16
    800062d4:	00008067          	ret

00000000800062d8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800062d8:	fc010113          	addi	sp,sp,-64
    800062dc:	02113c23          	sd	ra,56(sp)
    800062e0:	02813823          	sd	s0,48(sp)
    800062e4:	02913423          	sd	s1,40(sp)
    800062e8:	03213023          	sd	s2,32(sp)
    800062ec:	01313c23          	sd	s3,24(sp)
    800062f0:	04010413          	addi	s0,sp,64
    800062f4:	00050493          	mv	s1,a0
    800062f8:	00058913          	mv	s2,a1
    800062fc:	00060993          	mv	s3,a2
    LOCK();
    80006300:	00100613          	li	a2,1
    80006304:	00000593          	li	a1,0
    80006308:	00007517          	auipc	a0,0x7
    8000630c:	a5850513          	addi	a0,a0,-1448 # 8000cd60 <lockPrint>
    80006310:	ffffb097          	auipc	ra,0xffffb
    80006314:	fc0080e7          	jalr	-64(ra) # 800012d0 <copy_and_swap>
    80006318:	00050863          	beqz	a0,80006328 <_Z8printIntiii+0x50>
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	334080e7          	jalr	820(ra) # 80001650 <thread_dispatch>
    80006324:	fddff06f          	j	80006300 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006328:	00098463          	beqz	s3,80006330 <_Z8printIntiii+0x58>
    8000632c:	0804c463          	bltz	s1,800063b4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006330:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006334:	00000593          	li	a1,0
    }

    i = 0;
    80006338:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000633c:	0009079b          	sext.w	a5,s2
    80006340:	0325773b          	remuw	a4,a0,s2
    80006344:	00048613          	mv	a2,s1
    80006348:	0014849b          	addiw	s1,s1,1
    8000634c:	02071693          	slli	a3,a4,0x20
    80006350:	0206d693          	srli	a3,a3,0x20
    80006354:	00006717          	auipc	a4,0x6
    80006358:	66c70713          	addi	a4,a4,1644 # 8000c9c0 <digits>
    8000635c:	00d70733          	add	a4,a4,a3
    80006360:	00074683          	lbu	a3,0(a4)
    80006364:	fd040713          	addi	a4,s0,-48
    80006368:	00c70733          	add	a4,a4,a2
    8000636c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006370:	0005071b          	sext.w	a4,a0
    80006374:	0325553b          	divuw	a0,a0,s2
    80006378:	fcf772e3          	bgeu	a4,a5,8000633c <_Z8printIntiii+0x64>
    if(neg)
    8000637c:	00058c63          	beqz	a1,80006394 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006380:	fd040793          	addi	a5,s0,-48
    80006384:	009784b3          	add	s1,a5,s1
    80006388:	02d00793          	li	a5,45
    8000638c:	fef48823          	sb	a5,-16(s1)
    80006390:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006394:	fff4849b          	addiw	s1,s1,-1
    80006398:	0204c463          	bltz	s1,800063c0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000639c:	fd040793          	addi	a5,s0,-48
    800063a0:	009787b3          	add	a5,a5,s1
    800063a4:	ff07c503          	lbu	a0,-16(a5)
    800063a8:	ffffb097          	auipc	ra,0xffffb
    800063ac:	3fc080e7          	jalr	1020(ra) # 800017a4 <putc>
    800063b0:	fe5ff06f          	j	80006394 <_Z8printIntiii+0xbc>
        x = -xx;
    800063b4:	4090053b          	negw	a0,s1
        neg = 1;
    800063b8:	00100593          	li	a1,1
        x = -xx;
    800063bc:	f7dff06f          	j	80006338 <_Z8printIntiii+0x60>

    UNLOCK();
    800063c0:	00000613          	li	a2,0
    800063c4:	00100593          	li	a1,1
    800063c8:	00007517          	auipc	a0,0x7
    800063cc:	99850513          	addi	a0,a0,-1640 # 8000cd60 <lockPrint>
    800063d0:	ffffb097          	auipc	ra,0xffffb
    800063d4:	f00080e7          	jalr	-256(ra) # 800012d0 <copy_and_swap>
    800063d8:	fe0514e3          	bnez	a0,800063c0 <_Z8printIntiii+0xe8>
    800063dc:	03813083          	ld	ra,56(sp)
    800063e0:	03013403          	ld	s0,48(sp)
    800063e4:	02813483          	ld	s1,40(sp)
    800063e8:	02013903          	ld	s2,32(sp)
    800063ec:	01813983          	ld	s3,24(sp)
    800063f0:	04010113          	addi	sp,sp,64
    800063f4:	00008067          	ret

00000000800063f8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800063f8:	fd010113          	addi	sp,sp,-48
    800063fc:	02113423          	sd	ra,40(sp)
    80006400:	02813023          	sd	s0,32(sp)
    80006404:	00913c23          	sd	s1,24(sp)
    80006408:	01213823          	sd	s2,16(sp)
    8000640c:	01313423          	sd	s3,8(sp)
    80006410:	03010413          	addi	s0,sp,48
    80006414:	00050493          	mv	s1,a0
    80006418:	00058913          	mv	s2,a1
    8000641c:	0015879b          	addiw	a5,a1,1
    80006420:	0007851b          	sext.w	a0,a5
    80006424:	00f4a023          	sw	a5,0(s1)
    80006428:	0004a823          	sw	zero,16(s1)
    8000642c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006430:	00251513          	slli	a0,a0,0x2
    80006434:	ffffb097          	auipc	ra,0xffffb
    80006438:	120080e7          	jalr	288(ra) # 80001554 <mem_alloc>
    8000643c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006440:	01000513          	li	a0,16
    80006444:	ffffd097          	auipc	ra,0xffffd
    80006448:	d44080e7          	jalr	-700(ra) # 80003188 <_Znwm>
    8000644c:	00050993          	mv	s3,a0
    80006450:	00000593          	li	a1,0
    80006454:	ffffd097          	auipc	ra,0xffffd
    80006458:	ef0080e7          	jalr	-272(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    8000645c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006460:	01000513          	li	a0,16
    80006464:	ffffd097          	auipc	ra,0xffffd
    80006468:	d24080e7          	jalr	-732(ra) # 80003188 <_Znwm>
    8000646c:	00050993          	mv	s3,a0
    80006470:	00090593          	mv	a1,s2
    80006474:	ffffd097          	auipc	ra,0xffffd
    80006478:	ed0080e7          	jalr	-304(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    8000647c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006480:	01000513          	li	a0,16
    80006484:	ffffd097          	auipc	ra,0xffffd
    80006488:	d04080e7          	jalr	-764(ra) # 80003188 <_Znwm>
    8000648c:	00050913          	mv	s2,a0
    80006490:	00100593          	li	a1,1
    80006494:	ffffd097          	auipc	ra,0xffffd
    80006498:	eb0080e7          	jalr	-336(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    8000649c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800064a0:	01000513          	li	a0,16
    800064a4:	ffffd097          	auipc	ra,0xffffd
    800064a8:	ce4080e7          	jalr	-796(ra) # 80003188 <_Znwm>
    800064ac:	00050913          	mv	s2,a0
    800064b0:	00100593          	li	a1,1
    800064b4:	ffffd097          	auipc	ra,0xffffd
    800064b8:	e90080e7          	jalr	-368(ra) # 80003344 <_ZN9SemaphoreC1Ej>
    800064bc:	0324b823          	sd	s2,48(s1)
}
    800064c0:	02813083          	ld	ra,40(sp)
    800064c4:	02013403          	ld	s0,32(sp)
    800064c8:	01813483          	ld	s1,24(sp)
    800064cc:	01013903          	ld	s2,16(sp)
    800064d0:	00813983          	ld	s3,8(sp)
    800064d4:	03010113          	addi	sp,sp,48
    800064d8:	00008067          	ret
    800064dc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800064e0:	00098513          	mv	a0,s3
    800064e4:	ffffd097          	auipc	ra,0xffffd
    800064e8:	ccc080e7          	jalr	-820(ra) # 800031b0 <_ZdlPv>
    800064ec:	00048513          	mv	a0,s1
    800064f0:	00008097          	auipc	ra,0x8
    800064f4:	948080e7          	jalr	-1720(ra) # 8000de38 <_Unwind_Resume>
    800064f8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800064fc:	00098513          	mv	a0,s3
    80006500:	ffffd097          	auipc	ra,0xffffd
    80006504:	cb0080e7          	jalr	-848(ra) # 800031b0 <_ZdlPv>
    80006508:	00048513          	mv	a0,s1
    8000650c:	00008097          	auipc	ra,0x8
    80006510:	92c080e7          	jalr	-1748(ra) # 8000de38 <_Unwind_Resume>
    80006514:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006518:	00090513          	mv	a0,s2
    8000651c:	ffffd097          	auipc	ra,0xffffd
    80006520:	c94080e7          	jalr	-876(ra) # 800031b0 <_ZdlPv>
    80006524:	00048513          	mv	a0,s1
    80006528:	00008097          	auipc	ra,0x8
    8000652c:	910080e7          	jalr	-1776(ra) # 8000de38 <_Unwind_Resume>
    80006530:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006534:	00090513          	mv	a0,s2
    80006538:	ffffd097          	auipc	ra,0xffffd
    8000653c:	c78080e7          	jalr	-904(ra) # 800031b0 <_ZdlPv>
    80006540:	00048513          	mv	a0,s1
    80006544:	00008097          	auipc	ra,0x8
    80006548:	8f4080e7          	jalr	-1804(ra) # 8000de38 <_Unwind_Resume>

000000008000654c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000654c:	fe010113          	addi	sp,sp,-32
    80006550:	00113c23          	sd	ra,24(sp)
    80006554:	00813823          	sd	s0,16(sp)
    80006558:	00913423          	sd	s1,8(sp)
    8000655c:	01213023          	sd	s2,0(sp)
    80006560:	02010413          	addi	s0,sp,32
    80006564:	00050493          	mv	s1,a0
    80006568:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000656c:	01853503          	ld	a0,24(a0)
    80006570:	ffffd097          	auipc	ra,0xffffd
    80006574:	e0c080e7          	jalr	-500(ra) # 8000337c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006578:	0304b503          	ld	a0,48(s1)
    8000657c:	ffffd097          	auipc	ra,0xffffd
    80006580:	e00080e7          	jalr	-512(ra) # 8000337c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006584:	0084b783          	ld	a5,8(s1)
    80006588:	0144a703          	lw	a4,20(s1)
    8000658c:	00271713          	slli	a4,a4,0x2
    80006590:	00e787b3          	add	a5,a5,a4
    80006594:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006598:	0144a783          	lw	a5,20(s1)
    8000659c:	0017879b          	addiw	a5,a5,1
    800065a0:	0004a703          	lw	a4,0(s1)
    800065a4:	02e7e7bb          	remw	a5,a5,a4
    800065a8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800065ac:	0304b503          	ld	a0,48(s1)
    800065b0:	ffffd097          	auipc	ra,0xffffd
    800065b4:	df8080e7          	jalr	-520(ra) # 800033a8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800065b8:	0204b503          	ld	a0,32(s1)
    800065bc:	ffffd097          	auipc	ra,0xffffd
    800065c0:	dec080e7          	jalr	-532(ra) # 800033a8 <_ZN9Semaphore6signalEv>

}
    800065c4:	01813083          	ld	ra,24(sp)
    800065c8:	01013403          	ld	s0,16(sp)
    800065cc:	00813483          	ld	s1,8(sp)
    800065d0:	00013903          	ld	s2,0(sp)
    800065d4:	02010113          	addi	sp,sp,32
    800065d8:	00008067          	ret

00000000800065dc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800065dc:	fe010113          	addi	sp,sp,-32
    800065e0:	00113c23          	sd	ra,24(sp)
    800065e4:	00813823          	sd	s0,16(sp)
    800065e8:	00913423          	sd	s1,8(sp)
    800065ec:	01213023          	sd	s2,0(sp)
    800065f0:	02010413          	addi	s0,sp,32
    800065f4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800065f8:	02053503          	ld	a0,32(a0)
    800065fc:	ffffd097          	auipc	ra,0xffffd
    80006600:	d80080e7          	jalr	-640(ra) # 8000337c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006604:	0284b503          	ld	a0,40(s1)
    80006608:	ffffd097          	auipc	ra,0xffffd
    8000660c:	d74080e7          	jalr	-652(ra) # 8000337c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006610:	0084b703          	ld	a4,8(s1)
    80006614:	0104a783          	lw	a5,16(s1)
    80006618:	00279693          	slli	a3,a5,0x2
    8000661c:	00d70733          	add	a4,a4,a3
    80006620:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006624:	0017879b          	addiw	a5,a5,1
    80006628:	0004a703          	lw	a4,0(s1)
    8000662c:	02e7e7bb          	remw	a5,a5,a4
    80006630:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006634:	0284b503          	ld	a0,40(s1)
    80006638:	ffffd097          	auipc	ra,0xffffd
    8000663c:	d70080e7          	jalr	-656(ra) # 800033a8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006640:	0184b503          	ld	a0,24(s1)
    80006644:	ffffd097          	auipc	ra,0xffffd
    80006648:	d64080e7          	jalr	-668(ra) # 800033a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000664c:	00090513          	mv	a0,s2
    80006650:	01813083          	ld	ra,24(sp)
    80006654:	01013403          	ld	s0,16(sp)
    80006658:	00813483          	ld	s1,8(sp)
    8000665c:	00013903          	ld	s2,0(sp)
    80006660:	02010113          	addi	sp,sp,32
    80006664:	00008067          	ret

0000000080006668 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006668:	fe010113          	addi	sp,sp,-32
    8000666c:	00113c23          	sd	ra,24(sp)
    80006670:	00813823          	sd	s0,16(sp)
    80006674:	00913423          	sd	s1,8(sp)
    80006678:	01213023          	sd	s2,0(sp)
    8000667c:	02010413          	addi	s0,sp,32
    80006680:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006684:	02853503          	ld	a0,40(a0)
    80006688:	ffffd097          	auipc	ra,0xffffd
    8000668c:	cf4080e7          	jalr	-780(ra) # 8000337c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006690:	0304b503          	ld	a0,48(s1)
    80006694:	ffffd097          	auipc	ra,0xffffd
    80006698:	ce8080e7          	jalr	-792(ra) # 8000337c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000669c:	0144a783          	lw	a5,20(s1)
    800066a0:	0104a903          	lw	s2,16(s1)
    800066a4:	0327ce63          	blt	a5,s2,800066e0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800066a8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800066ac:	0304b503          	ld	a0,48(s1)
    800066b0:	ffffd097          	auipc	ra,0xffffd
    800066b4:	cf8080e7          	jalr	-776(ra) # 800033a8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800066b8:	0284b503          	ld	a0,40(s1)
    800066bc:	ffffd097          	auipc	ra,0xffffd
    800066c0:	cec080e7          	jalr	-788(ra) # 800033a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800066c4:	00090513          	mv	a0,s2
    800066c8:	01813083          	ld	ra,24(sp)
    800066cc:	01013403          	ld	s0,16(sp)
    800066d0:	00813483          	ld	s1,8(sp)
    800066d4:	00013903          	ld	s2,0(sp)
    800066d8:	02010113          	addi	sp,sp,32
    800066dc:	00008067          	ret
        ret = cap - head + tail;
    800066e0:	0004a703          	lw	a4,0(s1)
    800066e4:	4127093b          	subw	s2,a4,s2
    800066e8:	00f9093b          	addw	s2,s2,a5
    800066ec:	fc1ff06f          	j	800066ac <_ZN9BufferCPP6getCntEv+0x44>

00000000800066f0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800066f0:	fe010113          	addi	sp,sp,-32
    800066f4:	00113c23          	sd	ra,24(sp)
    800066f8:	00813823          	sd	s0,16(sp)
    800066fc:	00913423          	sd	s1,8(sp)
    80006700:	02010413          	addi	s0,sp,32
    80006704:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006708:	00a00513          	li	a0,10
    8000670c:	ffffd097          	auipc	ra,0xffffd
    80006710:	d5c080e7          	jalr	-676(ra) # 80003468 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006714:	00004517          	auipc	a0,0x4
    80006718:	eac50513          	addi	a0,a0,-340 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    8000671c:	00000097          	auipc	ra,0x0
    80006720:	a0c080e7          	jalr	-1524(ra) # 80006128 <_Z11printStringPKc>
    while (getCnt()) {
    80006724:	00048513          	mv	a0,s1
    80006728:	00000097          	auipc	ra,0x0
    8000672c:	f40080e7          	jalr	-192(ra) # 80006668 <_ZN9BufferCPP6getCntEv>
    80006730:	02050c63          	beqz	a0,80006768 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006734:	0084b783          	ld	a5,8(s1)
    80006738:	0104a703          	lw	a4,16(s1)
    8000673c:	00271713          	slli	a4,a4,0x2
    80006740:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006744:	0007c503          	lbu	a0,0(a5)
    80006748:	ffffd097          	auipc	ra,0xffffd
    8000674c:	d20080e7          	jalr	-736(ra) # 80003468 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006750:	0104a783          	lw	a5,16(s1)
    80006754:	0017879b          	addiw	a5,a5,1
    80006758:	0004a703          	lw	a4,0(s1)
    8000675c:	02e7e7bb          	remw	a5,a5,a4
    80006760:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006764:	fc1ff06f          	j	80006724 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006768:	02100513          	li	a0,33
    8000676c:	ffffd097          	auipc	ra,0xffffd
    80006770:	cfc080e7          	jalr	-772(ra) # 80003468 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006774:	00a00513          	li	a0,10
    80006778:	ffffd097          	auipc	ra,0xffffd
    8000677c:	cf0080e7          	jalr	-784(ra) # 80003468 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006780:	0084b503          	ld	a0,8(s1)
    80006784:	ffffb097          	auipc	ra,0xffffb
    80006788:	dfc080e7          	jalr	-516(ra) # 80001580 <mem_free>
    delete itemAvailable;
    8000678c:	0204b503          	ld	a0,32(s1)
    80006790:	00050863          	beqz	a0,800067a0 <_ZN9BufferCPPD1Ev+0xb0>
    80006794:	00053783          	ld	a5,0(a0)
    80006798:	0087b783          	ld	a5,8(a5)
    8000679c:	000780e7          	jalr	a5
    delete spaceAvailable;
    800067a0:	0184b503          	ld	a0,24(s1)
    800067a4:	00050863          	beqz	a0,800067b4 <_ZN9BufferCPPD1Ev+0xc4>
    800067a8:	00053783          	ld	a5,0(a0)
    800067ac:	0087b783          	ld	a5,8(a5)
    800067b0:	000780e7          	jalr	a5
    delete mutexTail;
    800067b4:	0304b503          	ld	a0,48(s1)
    800067b8:	00050863          	beqz	a0,800067c8 <_ZN9BufferCPPD1Ev+0xd8>
    800067bc:	00053783          	ld	a5,0(a0)
    800067c0:	0087b783          	ld	a5,8(a5)
    800067c4:	000780e7          	jalr	a5
    delete mutexHead;
    800067c8:	0284b503          	ld	a0,40(s1)
    800067cc:	00050863          	beqz	a0,800067dc <_ZN9BufferCPPD1Ev+0xec>
    800067d0:	00053783          	ld	a5,0(a0)
    800067d4:	0087b783          	ld	a5,8(a5)
    800067d8:	000780e7          	jalr	a5
}
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	00813483          	ld	s1,8(sp)
    800067e8:	02010113          	addi	sp,sp,32
    800067ec:	00008067          	ret

00000000800067f0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800067f0:	fe010113          	addi	sp,sp,-32
    800067f4:	00113c23          	sd	ra,24(sp)
    800067f8:	00813823          	sd	s0,16(sp)
    800067fc:	00913423          	sd	s1,8(sp)
    80006800:	01213023          	sd	s2,0(sp)
    80006804:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006808:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000680c:	00600493          	li	s1,6
    while (--i > 0) {
    80006810:	fff4849b          	addiw	s1,s1,-1
    80006814:	04905463          	blez	s1,8000685c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006818:	00004517          	auipc	a0,0x4
    8000681c:	dc050513          	addi	a0,a0,-576 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80006820:	00000097          	auipc	ra,0x0
    80006824:	908080e7          	jalr	-1784(ra) # 80006128 <_Z11printStringPKc>
        printInt(sleep_time);
    80006828:	00000613          	li	a2,0
    8000682c:	00a00593          	li	a1,10
    80006830:	0009051b          	sext.w	a0,s2
    80006834:	00000097          	auipc	ra,0x0
    80006838:	aa4080e7          	jalr	-1372(ra) # 800062d8 <_Z8printIntiii>
        printString(" !\n");
    8000683c:	00004517          	auipc	a0,0x4
    80006840:	da450513          	addi	a0,a0,-604 # 8000a5e0 <CONSOLE_STATUS+0x5d0>
    80006844:	00000097          	auipc	ra,0x0
    80006848:	8e4080e7          	jalr	-1820(ra) # 80006128 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000684c:	00090513          	mv	a0,s2
    80006850:	ffffb097          	auipc	ra,0xffffb
    80006854:	e20080e7          	jalr	-480(ra) # 80001670 <time_sleep>
    while (--i > 0) {
    80006858:	fb9ff06f          	j	80006810 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000685c:	00a00793          	li	a5,10
    80006860:	02f95933          	divu	s2,s2,a5
    80006864:	fff90913          	addi	s2,s2,-1
    80006868:	00006797          	auipc	a5,0x6
    8000686c:	50078793          	addi	a5,a5,1280 # 8000cd68 <_ZL8finished>
    80006870:	01278933          	add	s2,a5,s2
    80006874:	00100793          	li	a5,1
    80006878:	00f90023          	sb	a5,0(s2)
}
    8000687c:	01813083          	ld	ra,24(sp)
    80006880:	01013403          	ld	s0,16(sp)
    80006884:	00813483          	ld	s1,8(sp)
    80006888:	00013903          	ld	s2,0(sp)
    8000688c:	02010113          	addi	sp,sp,32
    80006890:	00008067          	ret

0000000080006894 <_Z12testSleepingv>:

void testSleeping() {
    80006894:	fc010113          	addi	sp,sp,-64
    80006898:	02113c23          	sd	ra,56(sp)
    8000689c:	02813823          	sd	s0,48(sp)
    800068a0:	02913423          	sd	s1,40(sp)
    800068a4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800068a8:	00a00793          	li	a5,10
    800068ac:	fcf43823          	sd	a5,-48(s0)
    800068b0:	01400793          	li	a5,20
    800068b4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800068b8:	00000493          	li	s1,0
    800068bc:	02c0006f          	j	800068e8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800068c0:	00349793          	slli	a5,s1,0x3
    800068c4:	fd040613          	addi	a2,s0,-48
    800068c8:	00f60633          	add	a2,a2,a5
    800068cc:	00000597          	auipc	a1,0x0
    800068d0:	f2458593          	addi	a1,a1,-220 # 800067f0 <_ZL9sleepyRunPv>
    800068d4:	fc040513          	addi	a0,s0,-64
    800068d8:	00f50533          	add	a0,a0,a5
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	cd0080e7          	jalr	-816(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800068e4:	0014849b          	addiw	s1,s1,1
    800068e8:	00100793          	li	a5,1
    800068ec:	fc97dae3          	bge	a5,s1,800068c0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800068f0:	00006797          	auipc	a5,0x6
    800068f4:	4787c783          	lbu	a5,1144(a5) # 8000cd68 <_ZL8finished>
    800068f8:	fe078ce3          	beqz	a5,800068f0 <_Z12testSleepingv+0x5c>
    800068fc:	00006797          	auipc	a5,0x6
    80006900:	46d7c783          	lbu	a5,1133(a5) # 8000cd69 <_ZL8finished+0x1>
    80006904:	fe0786e3          	beqz	a5,800068f0 <_Z12testSleepingv+0x5c>
}
    80006908:	03813083          	ld	ra,56(sp)
    8000690c:	03013403          	ld	s0,48(sp)
    80006910:	02813483          	ld	s1,40(sp)
    80006914:	04010113          	addi	sp,sp,64
    80006918:	00008067          	ret

000000008000691c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000691c:	fe010113          	addi	sp,sp,-32
    80006920:	00113c23          	sd	ra,24(sp)
    80006924:	00813823          	sd	s0,16(sp)
    80006928:	00913423          	sd	s1,8(sp)
    8000692c:	01213023          	sd	s2,0(sp)
    80006930:	02010413          	addi	s0,sp,32
    80006934:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006938:	00100793          	li	a5,1
    8000693c:	02a7f863          	bgeu	a5,a0,8000696c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006940:	00a00793          	li	a5,10
    80006944:	02f577b3          	remu	a5,a0,a5
    80006948:	02078e63          	beqz	a5,80006984 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000694c:	fff48513          	addi	a0,s1,-1
    80006950:	00000097          	auipc	ra,0x0
    80006954:	fcc080e7          	jalr	-52(ra) # 8000691c <_ZL9fibonaccim>
    80006958:	00050913          	mv	s2,a0
    8000695c:	ffe48513          	addi	a0,s1,-2
    80006960:	00000097          	auipc	ra,0x0
    80006964:	fbc080e7          	jalr	-68(ra) # 8000691c <_ZL9fibonaccim>
    80006968:	00a90533          	add	a0,s2,a0
}
    8000696c:	01813083          	ld	ra,24(sp)
    80006970:	01013403          	ld	s0,16(sp)
    80006974:	00813483          	ld	s1,8(sp)
    80006978:	00013903          	ld	s2,0(sp)
    8000697c:	02010113          	addi	sp,sp,32
    80006980:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006984:	ffffb097          	auipc	ra,0xffffb
    80006988:	ccc080e7          	jalr	-820(ra) # 80001650 <thread_dispatch>
    8000698c:	fc1ff06f          	j	8000694c <_ZL9fibonaccim+0x30>

0000000080006990 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006990:	fe010113          	addi	sp,sp,-32
    80006994:	00113c23          	sd	ra,24(sp)
    80006998:	00813823          	sd	s0,16(sp)
    8000699c:	00913423          	sd	s1,8(sp)
    800069a0:	01213023          	sd	s2,0(sp)
    800069a4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800069a8:	00a00493          	li	s1,10
    800069ac:	0400006f          	j	800069ec <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800069b0:	00004517          	auipc	a0,0x4
    800069b4:	8c850513          	addi	a0,a0,-1848 # 8000a278 <CONSOLE_STATUS+0x268>
    800069b8:	fffff097          	auipc	ra,0xfffff
    800069bc:	770080e7          	jalr	1904(ra) # 80006128 <_Z11printStringPKc>
    800069c0:	00000613          	li	a2,0
    800069c4:	00a00593          	li	a1,10
    800069c8:	00048513          	mv	a0,s1
    800069cc:	00000097          	auipc	ra,0x0
    800069d0:	90c080e7          	jalr	-1780(ra) # 800062d8 <_Z8printIntiii>
    800069d4:	00004517          	auipc	a0,0x4
    800069d8:	ab450513          	addi	a0,a0,-1356 # 8000a488 <CONSOLE_STATUS+0x478>
    800069dc:	fffff097          	auipc	ra,0xfffff
    800069e0:	74c080e7          	jalr	1868(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800069e4:	0014849b          	addiw	s1,s1,1
    800069e8:	0ff4f493          	andi	s1,s1,255
    800069ec:	00c00793          	li	a5,12
    800069f0:	fc97f0e3          	bgeu	a5,s1,800069b0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800069f4:	00004517          	auipc	a0,0x4
    800069f8:	88c50513          	addi	a0,a0,-1908 # 8000a280 <CONSOLE_STATUS+0x270>
    800069fc:	fffff097          	auipc	ra,0xfffff
    80006a00:	72c080e7          	jalr	1836(ra) # 80006128 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006a04:	00500313          	li	t1,5
    thread_dispatch();
    80006a08:	ffffb097          	auipc	ra,0xffffb
    80006a0c:	c48080e7          	jalr	-952(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006a10:	01000513          	li	a0,16
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	f08080e7          	jalr	-248(ra) # 8000691c <_ZL9fibonaccim>
    80006a1c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006a20:	00004517          	auipc	a0,0x4
    80006a24:	87050513          	addi	a0,a0,-1936 # 8000a290 <CONSOLE_STATUS+0x280>
    80006a28:	fffff097          	auipc	ra,0xfffff
    80006a2c:	700080e7          	jalr	1792(ra) # 80006128 <_Z11printStringPKc>
    80006a30:	00000613          	li	a2,0
    80006a34:	00a00593          	li	a1,10
    80006a38:	0009051b          	sext.w	a0,s2
    80006a3c:	00000097          	auipc	ra,0x0
    80006a40:	89c080e7          	jalr	-1892(ra) # 800062d8 <_Z8printIntiii>
    80006a44:	00004517          	auipc	a0,0x4
    80006a48:	a4450513          	addi	a0,a0,-1468 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a4c:	fffff097          	auipc	ra,0xfffff
    80006a50:	6dc080e7          	jalr	1756(ra) # 80006128 <_Z11printStringPKc>
    80006a54:	0400006f          	j	80006a94 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006a58:	00004517          	auipc	a0,0x4
    80006a5c:	82050513          	addi	a0,a0,-2016 # 8000a278 <CONSOLE_STATUS+0x268>
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	6c8080e7          	jalr	1736(ra) # 80006128 <_Z11printStringPKc>
    80006a68:	00000613          	li	a2,0
    80006a6c:	00a00593          	li	a1,10
    80006a70:	00048513          	mv	a0,s1
    80006a74:	00000097          	auipc	ra,0x0
    80006a78:	864080e7          	jalr	-1948(ra) # 800062d8 <_Z8printIntiii>
    80006a7c:	00004517          	auipc	a0,0x4
    80006a80:	a0c50513          	addi	a0,a0,-1524 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	6a4080e7          	jalr	1700(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006a8c:	0014849b          	addiw	s1,s1,1
    80006a90:	0ff4f493          	andi	s1,s1,255
    80006a94:	00f00793          	li	a5,15
    80006a98:	fc97f0e3          	bgeu	a5,s1,80006a58 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006a9c:	00004517          	auipc	a0,0x4
    80006aa0:	80450513          	addi	a0,a0,-2044 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006aa4:	fffff097          	auipc	ra,0xfffff
    80006aa8:	684080e7          	jalr	1668(ra) # 80006128 <_Z11printStringPKc>
    finishedD = true;
    80006aac:	00100793          	li	a5,1
    80006ab0:	00006717          	auipc	a4,0x6
    80006ab4:	2af70d23          	sb	a5,698(a4) # 8000cd6a <_ZL9finishedD>
    thread_dispatch();
    80006ab8:	ffffb097          	auipc	ra,0xffffb
    80006abc:	b98080e7          	jalr	-1128(ra) # 80001650 <thread_dispatch>
}
    80006ac0:	01813083          	ld	ra,24(sp)
    80006ac4:	01013403          	ld	s0,16(sp)
    80006ac8:	00813483          	ld	s1,8(sp)
    80006acc:	00013903          	ld	s2,0(sp)
    80006ad0:	02010113          	addi	sp,sp,32
    80006ad4:	00008067          	ret

0000000080006ad8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006ad8:	fe010113          	addi	sp,sp,-32
    80006adc:	00113c23          	sd	ra,24(sp)
    80006ae0:	00813823          	sd	s0,16(sp)
    80006ae4:	00913423          	sd	s1,8(sp)
    80006ae8:	01213023          	sd	s2,0(sp)
    80006aec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006af0:	00000493          	li	s1,0
    80006af4:	0400006f          	j	80006b34 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006af8:	00003517          	auipc	a0,0x3
    80006afc:	75050513          	addi	a0,a0,1872 # 8000a248 <CONSOLE_STATUS+0x238>
    80006b00:	fffff097          	auipc	ra,0xfffff
    80006b04:	628080e7          	jalr	1576(ra) # 80006128 <_Z11printStringPKc>
    80006b08:	00000613          	li	a2,0
    80006b0c:	00a00593          	li	a1,10
    80006b10:	00048513          	mv	a0,s1
    80006b14:	fffff097          	auipc	ra,0xfffff
    80006b18:	7c4080e7          	jalr	1988(ra) # 800062d8 <_Z8printIntiii>
    80006b1c:	00004517          	auipc	a0,0x4
    80006b20:	96c50513          	addi	a0,a0,-1684 # 8000a488 <CONSOLE_STATUS+0x478>
    80006b24:	fffff097          	auipc	ra,0xfffff
    80006b28:	604080e7          	jalr	1540(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006b2c:	0014849b          	addiw	s1,s1,1
    80006b30:	0ff4f493          	andi	s1,s1,255
    80006b34:	00200793          	li	a5,2
    80006b38:	fc97f0e3          	bgeu	a5,s1,80006af8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006b3c:	00003517          	auipc	a0,0x3
    80006b40:	71450513          	addi	a0,a0,1812 # 8000a250 <CONSOLE_STATUS+0x240>
    80006b44:	fffff097          	auipc	ra,0xfffff
    80006b48:	5e4080e7          	jalr	1508(ra) # 80006128 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006b4c:	00700313          	li	t1,7
    thread_dispatch();
    80006b50:	ffffb097          	auipc	ra,0xffffb
    80006b54:	b00080e7          	jalr	-1280(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006b58:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006b5c:	00003517          	auipc	a0,0x3
    80006b60:	70450513          	addi	a0,a0,1796 # 8000a260 <CONSOLE_STATUS+0x250>
    80006b64:	fffff097          	auipc	ra,0xfffff
    80006b68:	5c4080e7          	jalr	1476(ra) # 80006128 <_Z11printStringPKc>
    80006b6c:	00000613          	li	a2,0
    80006b70:	00a00593          	li	a1,10
    80006b74:	0009051b          	sext.w	a0,s2
    80006b78:	fffff097          	auipc	ra,0xfffff
    80006b7c:	760080e7          	jalr	1888(ra) # 800062d8 <_Z8printIntiii>
    80006b80:	00004517          	auipc	a0,0x4
    80006b84:	90850513          	addi	a0,a0,-1784 # 8000a488 <CONSOLE_STATUS+0x478>
    80006b88:	fffff097          	auipc	ra,0xfffff
    80006b8c:	5a0080e7          	jalr	1440(ra) # 80006128 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006b90:	00c00513          	li	a0,12
    80006b94:	00000097          	auipc	ra,0x0
    80006b98:	d88080e7          	jalr	-632(ra) # 8000691c <_ZL9fibonaccim>
    80006b9c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006ba0:	00003517          	auipc	a0,0x3
    80006ba4:	6c850513          	addi	a0,a0,1736 # 8000a268 <CONSOLE_STATUS+0x258>
    80006ba8:	fffff097          	auipc	ra,0xfffff
    80006bac:	580080e7          	jalr	1408(ra) # 80006128 <_Z11printStringPKc>
    80006bb0:	00000613          	li	a2,0
    80006bb4:	00a00593          	li	a1,10
    80006bb8:	0009051b          	sext.w	a0,s2
    80006bbc:	fffff097          	auipc	ra,0xfffff
    80006bc0:	71c080e7          	jalr	1820(ra) # 800062d8 <_Z8printIntiii>
    80006bc4:	00004517          	auipc	a0,0x4
    80006bc8:	8c450513          	addi	a0,a0,-1852 # 8000a488 <CONSOLE_STATUS+0x478>
    80006bcc:	fffff097          	auipc	ra,0xfffff
    80006bd0:	55c080e7          	jalr	1372(ra) # 80006128 <_Z11printStringPKc>
    80006bd4:	0400006f          	j	80006c14 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006bd8:	00003517          	auipc	a0,0x3
    80006bdc:	67050513          	addi	a0,a0,1648 # 8000a248 <CONSOLE_STATUS+0x238>
    80006be0:	fffff097          	auipc	ra,0xfffff
    80006be4:	548080e7          	jalr	1352(ra) # 80006128 <_Z11printStringPKc>
    80006be8:	00000613          	li	a2,0
    80006bec:	00a00593          	li	a1,10
    80006bf0:	00048513          	mv	a0,s1
    80006bf4:	fffff097          	auipc	ra,0xfffff
    80006bf8:	6e4080e7          	jalr	1764(ra) # 800062d8 <_Z8printIntiii>
    80006bfc:	00004517          	auipc	a0,0x4
    80006c00:	88c50513          	addi	a0,a0,-1908 # 8000a488 <CONSOLE_STATUS+0x478>
    80006c04:	fffff097          	auipc	ra,0xfffff
    80006c08:	524080e7          	jalr	1316(ra) # 80006128 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006c0c:	0014849b          	addiw	s1,s1,1
    80006c10:	0ff4f493          	andi	s1,s1,255
    80006c14:	00500793          	li	a5,5
    80006c18:	fc97f0e3          	bgeu	a5,s1,80006bd8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006c1c:	00003517          	auipc	a0,0x3
    80006c20:	60450513          	addi	a0,a0,1540 # 8000a220 <CONSOLE_STATUS+0x210>
    80006c24:	fffff097          	auipc	ra,0xfffff
    80006c28:	504080e7          	jalr	1284(ra) # 80006128 <_Z11printStringPKc>
    finishedC = true;
    80006c2c:	00100793          	li	a5,1
    80006c30:	00006717          	auipc	a4,0x6
    80006c34:	12f70da3          	sb	a5,315(a4) # 8000cd6b <_ZL9finishedC>
    thread_dispatch();
    80006c38:	ffffb097          	auipc	ra,0xffffb
    80006c3c:	a18080e7          	jalr	-1512(ra) # 80001650 <thread_dispatch>
}
    80006c40:	01813083          	ld	ra,24(sp)
    80006c44:	01013403          	ld	s0,16(sp)
    80006c48:	00813483          	ld	s1,8(sp)
    80006c4c:	00013903          	ld	s2,0(sp)
    80006c50:	02010113          	addi	sp,sp,32
    80006c54:	00008067          	ret

0000000080006c58 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006c58:	fe010113          	addi	sp,sp,-32
    80006c5c:	00113c23          	sd	ra,24(sp)
    80006c60:	00813823          	sd	s0,16(sp)
    80006c64:	00913423          	sd	s1,8(sp)
    80006c68:	01213023          	sd	s2,0(sp)
    80006c6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006c70:	00000913          	li	s2,0
    80006c74:	0400006f          	j	80006cb4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006c78:	ffffb097          	auipc	ra,0xffffb
    80006c7c:	9d8080e7          	jalr	-1576(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006c80:	00148493          	addi	s1,s1,1
    80006c84:	000027b7          	lui	a5,0x2
    80006c88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c8c:	0097ee63          	bltu	a5,s1,80006ca8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c90:	00000713          	li	a4,0
    80006c94:	000077b7          	lui	a5,0x7
    80006c98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c9c:	fce7eee3          	bltu	a5,a4,80006c78 <_ZL11workerBodyBPv+0x20>
    80006ca0:	00170713          	addi	a4,a4,1
    80006ca4:	ff1ff06f          	j	80006c94 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006ca8:	00a00793          	li	a5,10
    80006cac:	04f90663          	beq	s2,a5,80006cf8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006cb0:	00190913          	addi	s2,s2,1
    80006cb4:	00f00793          	li	a5,15
    80006cb8:	0527e463          	bltu	a5,s2,80006d00 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006cbc:	00003517          	auipc	a0,0x3
    80006cc0:	57450513          	addi	a0,a0,1396 # 8000a230 <CONSOLE_STATUS+0x220>
    80006cc4:	fffff097          	auipc	ra,0xfffff
    80006cc8:	464080e7          	jalr	1124(ra) # 80006128 <_Z11printStringPKc>
    80006ccc:	00000613          	li	a2,0
    80006cd0:	00a00593          	li	a1,10
    80006cd4:	0009051b          	sext.w	a0,s2
    80006cd8:	fffff097          	auipc	ra,0xfffff
    80006cdc:	600080e7          	jalr	1536(ra) # 800062d8 <_Z8printIntiii>
    80006ce0:	00003517          	auipc	a0,0x3
    80006ce4:	7a850513          	addi	a0,a0,1960 # 8000a488 <CONSOLE_STATUS+0x478>
    80006ce8:	fffff097          	auipc	ra,0xfffff
    80006cec:	440080e7          	jalr	1088(ra) # 80006128 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006cf0:	00000493          	li	s1,0
    80006cf4:	f91ff06f          	j	80006c84 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006cf8:	14102ff3          	csrr	t6,sepc
    80006cfc:	fb5ff06f          	j	80006cb0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006d00:	00003517          	auipc	a0,0x3
    80006d04:	53850513          	addi	a0,a0,1336 # 8000a238 <CONSOLE_STATUS+0x228>
    80006d08:	fffff097          	auipc	ra,0xfffff
    80006d0c:	420080e7          	jalr	1056(ra) # 80006128 <_Z11printStringPKc>
    finishedB = true;
    80006d10:	00100793          	li	a5,1
    80006d14:	00006717          	auipc	a4,0x6
    80006d18:	04f70c23          	sb	a5,88(a4) # 8000cd6c <_ZL9finishedB>
    thread_dispatch();
    80006d1c:	ffffb097          	auipc	ra,0xffffb
    80006d20:	934080e7          	jalr	-1740(ra) # 80001650 <thread_dispatch>
}
    80006d24:	01813083          	ld	ra,24(sp)
    80006d28:	01013403          	ld	s0,16(sp)
    80006d2c:	00813483          	ld	s1,8(sp)
    80006d30:	00013903          	ld	s2,0(sp)
    80006d34:	02010113          	addi	sp,sp,32
    80006d38:	00008067          	ret

0000000080006d3c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006d3c:	fe010113          	addi	sp,sp,-32
    80006d40:	00113c23          	sd	ra,24(sp)
    80006d44:	00813823          	sd	s0,16(sp)
    80006d48:	00913423          	sd	s1,8(sp)
    80006d4c:	01213023          	sd	s2,0(sp)
    80006d50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006d54:	00000913          	li	s2,0
    80006d58:	0380006f          	j	80006d90 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006d5c:	ffffb097          	auipc	ra,0xffffb
    80006d60:	8f4080e7          	jalr	-1804(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006d64:	00148493          	addi	s1,s1,1
    80006d68:	000027b7          	lui	a5,0x2
    80006d6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006d70:	0097ee63          	bltu	a5,s1,80006d8c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006d74:	00000713          	li	a4,0
    80006d78:	000077b7          	lui	a5,0x7
    80006d7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006d80:	fce7eee3          	bltu	a5,a4,80006d5c <_ZL11workerBodyAPv+0x20>
    80006d84:	00170713          	addi	a4,a4,1
    80006d88:	ff1ff06f          	j	80006d78 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006d8c:	00190913          	addi	s2,s2,1
    80006d90:	00900793          	li	a5,9
    80006d94:	0527e063          	bltu	a5,s2,80006dd4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006d98:	00003517          	auipc	a0,0x3
    80006d9c:	48050513          	addi	a0,a0,1152 # 8000a218 <CONSOLE_STATUS+0x208>
    80006da0:	fffff097          	auipc	ra,0xfffff
    80006da4:	388080e7          	jalr	904(ra) # 80006128 <_Z11printStringPKc>
    80006da8:	00000613          	li	a2,0
    80006dac:	00a00593          	li	a1,10
    80006db0:	0009051b          	sext.w	a0,s2
    80006db4:	fffff097          	auipc	ra,0xfffff
    80006db8:	524080e7          	jalr	1316(ra) # 800062d8 <_Z8printIntiii>
    80006dbc:	00003517          	auipc	a0,0x3
    80006dc0:	6cc50513          	addi	a0,a0,1740 # 8000a488 <CONSOLE_STATUS+0x478>
    80006dc4:	fffff097          	auipc	ra,0xfffff
    80006dc8:	364080e7          	jalr	868(ra) # 80006128 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006dcc:	00000493          	li	s1,0
    80006dd0:	f99ff06f          	j	80006d68 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006dd4:	00003517          	auipc	a0,0x3
    80006dd8:	44c50513          	addi	a0,a0,1100 # 8000a220 <CONSOLE_STATUS+0x210>
    80006ddc:	fffff097          	auipc	ra,0xfffff
    80006de0:	34c080e7          	jalr	844(ra) # 80006128 <_Z11printStringPKc>
    finishedA = true;
    80006de4:	00100793          	li	a5,1
    80006de8:	00006717          	auipc	a4,0x6
    80006dec:	f8f702a3          	sb	a5,-123(a4) # 8000cd6d <_ZL9finishedA>
}
    80006df0:	01813083          	ld	ra,24(sp)
    80006df4:	01013403          	ld	s0,16(sp)
    80006df8:	00813483          	ld	s1,8(sp)
    80006dfc:	00013903          	ld	s2,0(sp)
    80006e00:	02010113          	addi	sp,sp,32
    80006e04:	00008067          	ret

0000000080006e08 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006e08:	fd010113          	addi	sp,sp,-48
    80006e0c:	02113423          	sd	ra,40(sp)
    80006e10:	02813023          	sd	s0,32(sp)
    80006e14:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006e18:	00000613          	li	a2,0
    80006e1c:	00000597          	auipc	a1,0x0
    80006e20:	f2058593          	addi	a1,a1,-224 # 80006d3c <_ZL11workerBodyAPv>
    80006e24:	fd040513          	addi	a0,s0,-48
    80006e28:	ffffa097          	auipc	ra,0xffffa
    80006e2c:	784080e7          	jalr	1924(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80006e30:	00003517          	auipc	a0,0x3
    80006e34:	48050513          	addi	a0,a0,1152 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006e38:	fffff097          	auipc	ra,0xfffff
    80006e3c:	2f0080e7          	jalr	752(ra) # 80006128 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006e40:	00000613          	li	a2,0
    80006e44:	00000597          	auipc	a1,0x0
    80006e48:	e1458593          	addi	a1,a1,-492 # 80006c58 <_ZL11workerBodyBPv>
    80006e4c:	fd840513          	addi	a0,s0,-40
    80006e50:	ffffa097          	auipc	ra,0xffffa
    80006e54:	75c080e7          	jalr	1884(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80006e58:	00003517          	auipc	a0,0x3
    80006e5c:	47050513          	addi	a0,a0,1136 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006e60:	fffff097          	auipc	ra,0xfffff
    80006e64:	2c8080e7          	jalr	712(ra) # 80006128 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006e68:	00000613          	li	a2,0
    80006e6c:	00000597          	auipc	a1,0x0
    80006e70:	c6c58593          	addi	a1,a1,-916 # 80006ad8 <_ZL11workerBodyCPv>
    80006e74:	fe040513          	addi	a0,s0,-32
    80006e78:	ffffa097          	auipc	ra,0xffffa
    80006e7c:	734080e7          	jalr	1844(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80006e80:	00003517          	auipc	a0,0x3
    80006e84:	46050513          	addi	a0,a0,1120 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006e88:	fffff097          	auipc	ra,0xfffff
    80006e8c:	2a0080e7          	jalr	672(ra) # 80006128 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006e90:	00000613          	li	a2,0
    80006e94:	00000597          	auipc	a1,0x0
    80006e98:	afc58593          	addi	a1,a1,-1284 # 80006990 <_ZL11workerBodyDPv>
    80006e9c:	fe840513          	addi	a0,s0,-24
    80006ea0:	ffffa097          	auipc	ra,0xffffa
    80006ea4:	70c080e7          	jalr	1804(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80006ea8:	00003517          	auipc	a0,0x3
    80006eac:	45050513          	addi	a0,a0,1104 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006eb0:	fffff097          	auipc	ra,0xfffff
    80006eb4:	278080e7          	jalr	632(ra) # 80006128 <_Z11printStringPKc>
    80006eb8:	00c0006f          	j	80006ec4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006ebc:	ffffa097          	auipc	ra,0xffffa
    80006ec0:	794080e7          	jalr	1940(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006ec4:	00006797          	auipc	a5,0x6
    80006ec8:	ea97c783          	lbu	a5,-343(a5) # 8000cd6d <_ZL9finishedA>
    80006ecc:	fe0788e3          	beqz	a5,80006ebc <_Z16System_Mode_testv+0xb4>
    80006ed0:	00006797          	auipc	a5,0x6
    80006ed4:	e9c7c783          	lbu	a5,-356(a5) # 8000cd6c <_ZL9finishedB>
    80006ed8:	fe0782e3          	beqz	a5,80006ebc <_Z16System_Mode_testv+0xb4>
    80006edc:	00006797          	auipc	a5,0x6
    80006ee0:	e8f7c783          	lbu	a5,-369(a5) # 8000cd6b <_ZL9finishedC>
    80006ee4:	fc078ce3          	beqz	a5,80006ebc <_Z16System_Mode_testv+0xb4>
    80006ee8:	00006797          	auipc	a5,0x6
    80006eec:	e827c783          	lbu	a5,-382(a5) # 8000cd6a <_ZL9finishedD>
    80006ef0:	fc0786e3          	beqz	a5,80006ebc <_Z16System_Mode_testv+0xb4>
    }

}
    80006ef4:	02813083          	ld	ra,40(sp)
    80006ef8:	02013403          	ld	s0,32(sp)
    80006efc:	03010113          	addi	sp,sp,48
    80006f00:	00008067          	ret

0000000080006f04 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006f04:	fe010113          	addi	sp,sp,-32
    80006f08:	00113c23          	sd	ra,24(sp)
    80006f0c:	00813823          	sd	s0,16(sp)
    80006f10:	00913423          	sd	s1,8(sp)
    80006f14:	01213023          	sd	s2,0(sp)
    80006f18:	02010413          	addi	s0,sp,32
    80006f1c:	00050493          	mv	s1,a0
    80006f20:	00058913          	mv	s2,a1
    80006f24:	0015879b          	addiw	a5,a1,1
    80006f28:	0007851b          	sext.w	a0,a5
    80006f2c:	00f4a023          	sw	a5,0(s1)
    80006f30:	0004a823          	sw	zero,16(s1)
    80006f34:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006f38:	00251513          	slli	a0,a0,0x2
    80006f3c:	ffffa097          	auipc	ra,0xffffa
    80006f40:	618080e7          	jalr	1560(ra) # 80001554 <mem_alloc>
    80006f44:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006f48:	00000593          	li	a1,0
    80006f4c:	02048513          	addi	a0,s1,32
    80006f50:	ffffa097          	auipc	ra,0xffffa
    80006f54:	748080e7          	jalr	1864(ra) # 80001698 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006f58:	00090593          	mv	a1,s2
    80006f5c:	01848513          	addi	a0,s1,24
    80006f60:	ffffa097          	auipc	ra,0xffffa
    80006f64:	738080e7          	jalr	1848(ra) # 80001698 <sem_open>
    sem_open(&mutexHead, 1);
    80006f68:	00100593          	li	a1,1
    80006f6c:	02848513          	addi	a0,s1,40
    80006f70:	ffffa097          	auipc	ra,0xffffa
    80006f74:	728080e7          	jalr	1832(ra) # 80001698 <sem_open>
    sem_open(&mutexTail, 1);
    80006f78:	00100593          	li	a1,1
    80006f7c:	03048513          	addi	a0,s1,48
    80006f80:	ffffa097          	auipc	ra,0xffffa
    80006f84:	718080e7          	jalr	1816(ra) # 80001698 <sem_open>
}
    80006f88:	01813083          	ld	ra,24(sp)
    80006f8c:	01013403          	ld	s0,16(sp)
    80006f90:	00813483          	ld	s1,8(sp)
    80006f94:	00013903          	ld	s2,0(sp)
    80006f98:	02010113          	addi	sp,sp,32
    80006f9c:	00008067          	ret

0000000080006fa0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006fa0:	fe010113          	addi	sp,sp,-32
    80006fa4:	00113c23          	sd	ra,24(sp)
    80006fa8:	00813823          	sd	s0,16(sp)
    80006fac:	00913423          	sd	s1,8(sp)
    80006fb0:	01213023          	sd	s2,0(sp)
    80006fb4:	02010413          	addi	s0,sp,32
    80006fb8:	00050493          	mv	s1,a0
    80006fbc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006fc0:	01853503          	ld	a0,24(a0)
    80006fc4:	ffffa097          	auipc	ra,0xffffa
    80006fc8:	734080e7          	jalr	1844(ra) # 800016f8 <sem_wait>

    sem_wait(mutexTail);
    80006fcc:	0304b503          	ld	a0,48(s1)
    80006fd0:	ffffa097          	auipc	ra,0xffffa
    80006fd4:	728080e7          	jalr	1832(ra) # 800016f8 <sem_wait>
    buffer[tail] = val;
    80006fd8:	0084b783          	ld	a5,8(s1)
    80006fdc:	0144a703          	lw	a4,20(s1)
    80006fe0:	00271713          	slli	a4,a4,0x2
    80006fe4:	00e787b3          	add	a5,a5,a4
    80006fe8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006fec:	0144a783          	lw	a5,20(s1)
    80006ff0:	0017879b          	addiw	a5,a5,1
    80006ff4:	0004a703          	lw	a4,0(s1)
    80006ff8:	02e7e7bb          	remw	a5,a5,a4
    80006ffc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80007000:	0304b503          	ld	a0,48(s1)
    80007004:	ffffa097          	auipc	ra,0xffffa
    80007008:	71c080e7          	jalr	1820(ra) # 80001720 <sem_signal>

    sem_signal(itemAvailable);
    8000700c:	0204b503          	ld	a0,32(s1)
    80007010:	ffffa097          	auipc	ra,0xffffa
    80007014:	710080e7          	jalr	1808(ra) # 80001720 <sem_signal>

}
    80007018:	01813083          	ld	ra,24(sp)
    8000701c:	01013403          	ld	s0,16(sp)
    80007020:	00813483          	ld	s1,8(sp)
    80007024:	00013903          	ld	s2,0(sp)
    80007028:	02010113          	addi	sp,sp,32
    8000702c:	00008067          	ret

0000000080007030 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007030:	fe010113          	addi	sp,sp,-32
    80007034:	00113c23          	sd	ra,24(sp)
    80007038:	00813823          	sd	s0,16(sp)
    8000703c:	00913423          	sd	s1,8(sp)
    80007040:	01213023          	sd	s2,0(sp)
    80007044:	02010413          	addi	s0,sp,32
    80007048:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000704c:	02053503          	ld	a0,32(a0)
    80007050:	ffffa097          	auipc	ra,0xffffa
    80007054:	6a8080e7          	jalr	1704(ra) # 800016f8 <sem_wait>

    sem_wait(mutexHead);
    80007058:	0284b503          	ld	a0,40(s1)
    8000705c:	ffffa097          	auipc	ra,0xffffa
    80007060:	69c080e7          	jalr	1692(ra) # 800016f8 <sem_wait>

    int ret = buffer[head];
    80007064:	0084b703          	ld	a4,8(s1)
    80007068:	0104a783          	lw	a5,16(s1)
    8000706c:	00279693          	slli	a3,a5,0x2
    80007070:	00d70733          	add	a4,a4,a3
    80007074:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80007078:	0017879b          	addiw	a5,a5,1
    8000707c:	0004a703          	lw	a4,0(s1)
    80007080:	02e7e7bb          	remw	a5,a5,a4
    80007084:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80007088:	0284b503          	ld	a0,40(s1)
    8000708c:	ffffa097          	auipc	ra,0xffffa
    80007090:	694080e7          	jalr	1684(ra) # 80001720 <sem_signal>

    sem_signal(spaceAvailable);
    80007094:	0184b503          	ld	a0,24(s1)
    80007098:	ffffa097          	auipc	ra,0xffffa
    8000709c:	688080e7          	jalr	1672(ra) # 80001720 <sem_signal>

    return ret;
}
    800070a0:	00090513          	mv	a0,s2
    800070a4:	01813083          	ld	ra,24(sp)
    800070a8:	01013403          	ld	s0,16(sp)
    800070ac:	00813483          	ld	s1,8(sp)
    800070b0:	00013903          	ld	s2,0(sp)
    800070b4:	02010113          	addi	sp,sp,32
    800070b8:	00008067          	ret

00000000800070bc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800070bc:	fe010113          	addi	sp,sp,-32
    800070c0:	00113c23          	sd	ra,24(sp)
    800070c4:	00813823          	sd	s0,16(sp)
    800070c8:	00913423          	sd	s1,8(sp)
    800070cc:	01213023          	sd	s2,0(sp)
    800070d0:	02010413          	addi	s0,sp,32
    800070d4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800070d8:	02853503          	ld	a0,40(a0)
    800070dc:	ffffa097          	auipc	ra,0xffffa
    800070e0:	61c080e7          	jalr	1564(ra) # 800016f8 <sem_wait>
    sem_wait(mutexTail);
    800070e4:	0304b503          	ld	a0,48(s1)
    800070e8:	ffffa097          	auipc	ra,0xffffa
    800070ec:	610080e7          	jalr	1552(ra) # 800016f8 <sem_wait>

    if (tail >= head) {
    800070f0:	0144a783          	lw	a5,20(s1)
    800070f4:	0104a903          	lw	s2,16(s1)
    800070f8:	0327ce63          	blt	a5,s2,80007134 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800070fc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80007100:	0304b503          	ld	a0,48(s1)
    80007104:	ffffa097          	auipc	ra,0xffffa
    80007108:	61c080e7          	jalr	1564(ra) # 80001720 <sem_signal>
    sem_signal(mutexHead);
    8000710c:	0284b503          	ld	a0,40(s1)
    80007110:	ffffa097          	auipc	ra,0xffffa
    80007114:	610080e7          	jalr	1552(ra) # 80001720 <sem_signal>

    return ret;
}
    80007118:	00090513          	mv	a0,s2
    8000711c:	01813083          	ld	ra,24(sp)
    80007120:	01013403          	ld	s0,16(sp)
    80007124:	00813483          	ld	s1,8(sp)
    80007128:	00013903          	ld	s2,0(sp)
    8000712c:	02010113          	addi	sp,sp,32
    80007130:	00008067          	ret
        ret = cap - head + tail;
    80007134:	0004a703          	lw	a4,0(s1)
    80007138:	4127093b          	subw	s2,a4,s2
    8000713c:	00f9093b          	addw	s2,s2,a5
    80007140:	fc1ff06f          	j	80007100 <_ZN6Buffer6getCntEv+0x44>

0000000080007144 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007144:	fe010113          	addi	sp,sp,-32
    80007148:	00113c23          	sd	ra,24(sp)
    8000714c:	00813823          	sd	s0,16(sp)
    80007150:	00913423          	sd	s1,8(sp)
    80007154:	02010413          	addi	s0,sp,32
    80007158:	00050493          	mv	s1,a0
    putc('\n');
    8000715c:	00a00513          	li	a0,10
    80007160:	ffffa097          	auipc	ra,0xffffa
    80007164:	644080e7          	jalr	1604(ra) # 800017a4 <putc>
    printString("Buffer deleted!\n");
    80007168:	00003517          	auipc	a0,0x3
    8000716c:	45850513          	addi	a0,a0,1112 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80007170:	fffff097          	auipc	ra,0xfffff
    80007174:	fb8080e7          	jalr	-72(ra) # 80006128 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007178:	00048513          	mv	a0,s1
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	f40080e7          	jalr	-192(ra) # 800070bc <_ZN6Buffer6getCntEv>
    80007184:	02a05c63          	blez	a0,800071bc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007188:	0084b783          	ld	a5,8(s1)
    8000718c:	0104a703          	lw	a4,16(s1)
    80007190:	00271713          	slli	a4,a4,0x2
    80007194:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007198:	0007c503          	lbu	a0,0(a5)
    8000719c:	ffffa097          	auipc	ra,0xffffa
    800071a0:	608080e7          	jalr	1544(ra) # 800017a4 <putc>
        head = (head + 1) % cap;
    800071a4:	0104a783          	lw	a5,16(s1)
    800071a8:	0017879b          	addiw	a5,a5,1
    800071ac:	0004a703          	lw	a4,0(s1)
    800071b0:	02e7e7bb          	remw	a5,a5,a4
    800071b4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800071b8:	fc1ff06f          	j	80007178 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800071bc:	02100513          	li	a0,33
    800071c0:	ffffa097          	auipc	ra,0xffffa
    800071c4:	5e4080e7          	jalr	1508(ra) # 800017a4 <putc>
    putc('\n');
    800071c8:	00a00513          	li	a0,10
    800071cc:	ffffa097          	auipc	ra,0xffffa
    800071d0:	5d8080e7          	jalr	1496(ra) # 800017a4 <putc>
    mem_free(buffer);
    800071d4:	0084b503          	ld	a0,8(s1)
    800071d8:	ffffa097          	auipc	ra,0xffffa
    800071dc:	3a8080e7          	jalr	936(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    800071e0:	0204b503          	ld	a0,32(s1)
    800071e4:	ffffa097          	auipc	ra,0xffffa
    800071e8:	4ec080e7          	jalr	1260(ra) # 800016d0 <sem_close>
    sem_close(spaceAvailable);
    800071ec:	0184b503          	ld	a0,24(s1)
    800071f0:	ffffa097          	auipc	ra,0xffffa
    800071f4:	4e0080e7          	jalr	1248(ra) # 800016d0 <sem_close>
    sem_close(mutexTail);
    800071f8:	0304b503          	ld	a0,48(s1)
    800071fc:	ffffa097          	auipc	ra,0xffffa
    80007200:	4d4080e7          	jalr	1236(ra) # 800016d0 <sem_close>
    sem_close(mutexHead);
    80007204:	0284b503          	ld	a0,40(s1)
    80007208:	ffffa097          	auipc	ra,0xffffa
    8000720c:	4c8080e7          	jalr	1224(ra) # 800016d0 <sem_close>
}
    80007210:	01813083          	ld	ra,24(sp)
    80007214:	01013403          	ld	s0,16(sp)
    80007218:	00813483          	ld	s1,8(sp)
    8000721c:	02010113          	addi	sp,sp,32
    80007220:	00008067          	ret

0000000080007224 <start>:
    80007224:	ff010113          	addi	sp,sp,-16
    80007228:	00813423          	sd	s0,8(sp)
    8000722c:	01010413          	addi	s0,sp,16
    80007230:	300027f3          	csrr	a5,mstatus
    80007234:	ffffe737          	lui	a4,0xffffe
    80007238:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff082f>
    8000723c:	00e7f7b3          	and	a5,a5,a4
    80007240:	00001737          	lui	a4,0x1
    80007244:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007248:	00e7e7b3          	or	a5,a5,a4
    8000724c:	30079073          	csrw	mstatus,a5
    80007250:	00000797          	auipc	a5,0x0
    80007254:	16078793          	addi	a5,a5,352 # 800073b0 <system_main>
    80007258:	34179073          	csrw	mepc,a5
    8000725c:	00000793          	li	a5,0
    80007260:	18079073          	csrw	satp,a5
    80007264:	000107b7          	lui	a5,0x10
    80007268:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000726c:	30279073          	csrw	medeleg,a5
    80007270:	30379073          	csrw	mideleg,a5
    80007274:	104027f3          	csrr	a5,sie
    80007278:	2227e793          	ori	a5,a5,546
    8000727c:	10479073          	csrw	sie,a5
    80007280:	fff00793          	li	a5,-1
    80007284:	00a7d793          	srli	a5,a5,0xa
    80007288:	3b079073          	csrw	pmpaddr0,a5
    8000728c:	00f00793          	li	a5,15
    80007290:	3a079073          	csrw	pmpcfg0,a5
    80007294:	f14027f3          	csrr	a5,mhartid
    80007298:	0200c737          	lui	a4,0x200c
    8000729c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800072a0:	0007869b          	sext.w	a3,a5
    800072a4:	00269713          	slli	a4,a3,0x2
    800072a8:	000f4637          	lui	a2,0xf4
    800072ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800072b0:	00d70733          	add	a4,a4,a3
    800072b4:	0037979b          	slliw	a5,a5,0x3
    800072b8:	020046b7          	lui	a3,0x2004
    800072bc:	00d787b3          	add	a5,a5,a3
    800072c0:	00c585b3          	add	a1,a1,a2
    800072c4:	00371693          	slli	a3,a4,0x3
    800072c8:	00006717          	auipc	a4,0x6
    800072cc:	aa870713          	addi	a4,a4,-1368 # 8000cd70 <timer_scratch>
    800072d0:	00b7b023          	sd	a1,0(a5)
    800072d4:	00d70733          	add	a4,a4,a3
    800072d8:	00f73c23          	sd	a5,24(a4)
    800072dc:	02c73023          	sd	a2,32(a4)
    800072e0:	34071073          	csrw	mscratch,a4
    800072e4:	00000797          	auipc	a5,0x0
    800072e8:	6ec78793          	addi	a5,a5,1772 # 800079d0 <timervec>
    800072ec:	30579073          	csrw	mtvec,a5
    800072f0:	300027f3          	csrr	a5,mstatus
    800072f4:	0087e793          	ori	a5,a5,8
    800072f8:	30079073          	csrw	mstatus,a5
    800072fc:	304027f3          	csrr	a5,mie
    80007300:	0807e793          	ori	a5,a5,128
    80007304:	30479073          	csrw	mie,a5
    80007308:	f14027f3          	csrr	a5,mhartid
    8000730c:	0007879b          	sext.w	a5,a5
    80007310:	00078213          	mv	tp,a5
    80007314:	30200073          	mret
    80007318:	00813403          	ld	s0,8(sp)
    8000731c:	01010113          	addi	sp,sp,16
    80007320:	00008067          	ret

0000000080007324 <timerinit>:
    80007324:	ff010113          	addi	sp,sp,-16
    80007328:	00813423          	sd	s0,8(sp)
    8000732c:	01010413          	addi	s0,sp,16
    80007330:	f14027f3          	csrr	a5,mhartid
    80007334:	0200c737          	lui	a4,0x200c
    80007338:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000733c:	0007869b          	sext.w	a3,a5
    80007340:	00269713          	slli	a4,a3,0x2
    80007344:	000f4637          	lui	a2,0xf4
    80007348:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000734c:	00d70733          	add	a4,a4,a3
    80007350:	0037979b          	slliw	a5,a5,0x3
    80007354:	020046b7          	lui	a3,0x2004
    80007358:	00d787b3          	add	a5,a5,a3
    8000735c:	00c585b3          	add	a1,a1,a2
    80007360:	00371693          	slli	a3,a4,0x3
    80007364:	00006717          	auipc	a4,0x6
    80007368:	a0c70713          	addi	a4,a4,-1524 # 8000cd70 <timer_scratch>
    8000736c:	00b7b023          	sd	a1,0(a5)
    80007370:	00d70733          	add	a4,a4,a3
    80007374:	00f73c23          	sd	a5,24(a4)
    80007378:	02c73023          	sd	a2,32(a4)
    8000737c:	34071073          	csrw	mscratch,a4
    80007380:	00000797          	auipc	a5,0x0
    80007384:	65078793          	addi	a5,a5,1616 # 800079d0 <timervec>
    80007388:	30579073          	csrw	mtvec,a5
    8000738c:	300027f3          	csrr	a5,mstatus
    80007390:	0087e793          	ori	a5,a5,8
    80007394:	30079073          	csrw	mstatus,a5
    80007398:	304027f3          	csrr	a5,mie
    8000739c:	0807e793          	ori	a5,a5,128
    800073a0:	30479073          	csrw	mie,a5
    800073a4:	00813403          	ld	s0,8(sp)
    800073a8:	01010113          	addi	sp,sp,16
    800073ac:	00008067          	ret

00000000800073b0 <system_main>:
    800073b0:	fe010113          	addi	sp,sp,-32
    800073b4:	00813823          	sd	s0,16(sp)
    800073b8:	00913423          	sd	s1,8(sp)
    800073bc:	00113c23          	sd	ra,24(sp)
    800073c0:	02010413          	addi	s0,sp,32
    800073c4:	00000097          	auipc	ra,0x0
    800073c8:	0c4080e7          	jalr	196(ra) # 80007488 <cpuid>
    800073cc:	00005497          	auipc	s1,0x5
    800073d0:	67448493          	addi	s1,s1,1652 # 8000ca40 <started>
    800073d4:	02050263          	beqz	a0,800073f8 <system_main+0x48>
    800073d8:	0004a783          	lw	a5,0(s1)
    800073dc:	0007879b          	sext.w	a5,a5
    800073e0:	fe078ce3          	beqz	a5,800073d8 <system_main+0x28>
    800073e4:	0ff0000f          	fence
    800073e8:	00003517          	auipc	a0,0x3
    800073ec:	23050513          	addi	a0,a0,560 # 8000a618 <CONSOLE_STATUS+0x608>
    800073f0:	00001097          	auipc	ra,0x1
    800073f4:	a7c080e7          	jalr	-1412(ra) # 80007e6c <panic>
    800073f8:	00001097          	auipc	ra,0x1
    800073fc:	9d0080e7          	jalr	-1584(ra) # 80007dc8 <consoleinit>
    80007400:	00001097          	auipc	ra,0x1
    80007404:	15c080e7          	jalr	348(ra) # 8000855c <printfinit>
    80007408:	00003517          	auipc	a0,0x3
    8000740c:	08050513          	addi	a0,a0,128 # 8000a488 <CONSOLE_STATUS+0x478>
    80007410:	00001097          	auipc	ra,0x1
    80007414:	ab8080e7          	jalr	-1352(ra) # 80007ec8 <__printf>
    80007418:	00003517          	auipc	a0,0x3
    8000741c:	1d050513          	addi	a0,a0,464 # 8000a5e8 <CONSOLE_STATUS+0x5d8>
    80007420:	00001097          	auipc	ra,0x1
    80007424:	aa8080e7          	jalr	-1368(ra) # 80007ec8 <__printf>
    80007428:	00003517          	auipc	a0,0x3
    8000742c:	06050513          	addi	a0,a0,96 # 8000a488 <CONSOLE_STATUS+0x478>
    80007430:	00001097          	auipc	ra,0x1
    80007434:	a98080e7          	jalr	-1384(ra) # 80007ec8 <__printf>
    80007438:	00001097          	auipc	ra,0x1
    8000743c:	4b0080e7          	jalr	1200(ra) # 800088e8 <kinit>
    80007440:	00000097          	auipc	ra,0x0
    80007444:	148080e7          	jalr	328(ra) # 80007588 <trapinit>
    80007448:	00000097          	auipc	ra,0x0
    8000744c:	16c080e7          	jalr	364(ra) # 800075b4 <trapinithart>
    80007450:	00000097          	auipc	ra,0x0
    80007454:	5c0080e7          	jalr	1472(ra) # 80007a10 <plicinit>
    80007458:	00000097          	auipc	ra,0x0
    8000745c:	5e0080e7          	jalr	1504(ra) # 80007a38 <plicinithart>
    80007460:	00000097          	auipc	ra,0x0
    80007464:	078080e7          	jalr	120(ra) # 800074d8 <userinit>
    80007468:	0ff0000f          	fence
    8000746c:	00100793          	li	a5,1
    80007470:	00003517          	auipc	a0,0x3
    80007474:	19050513          	addi	a0,a0,400 # 8000a600 <CONSOLE_STATUS+0x5f0>
    80007478:	00f4a023          	sw	a5,0(s1)
    8000747c:	00001097          	auipc	ra,0x1
    80007480:	a4c080e7          	jalr	-1460(ra) # 80007ec8 <__printf>
    80007484:	0000006f          	j	80007484 <system_main+0xd4>

0000000080007488 <cpuid>:
    80007488:	ff010113          	addi	sp,sp,-16
    8000748c:	00813423          	sd	s0,8(sp)
    80007490:	01010413          	addi	s0,sp,16
    80007494:	00020513          	mv	a0,tp
    80007498:	00813403          	ld	s0,8(sp)
    8000749c:	0005051b          	sext.w	a0,a0
    800074a0:	01010113          	addi	sp,sp,16
    800074a4:	00008067          	ret

00000000800074a8 <mycpu>:
    800074a8:	ff010113          	addi	sp,sp,-16
    800074ac:	00813423          	sd	s0,8(sp)
    800074b0:	01010413          	addi	s0,sp,16
    800074b4:	00020793          	mv	a5,tp
    800074b8:	00813403          	ld	s0,8(sp)
    800074bc:	0007879b          	sext.w	a5,a5
    800074c0:	00779793          	slli	a5,a5,0x7
    800074c4:	00007517          	auipc	a0,0x7
    800074c8:	8dc50513          	addi	a0,a0,-1828 # 8000dda0 <cpus>
    800074cc:	00f50533          	add	a0,a0,a5
    800074d0:	01010113          	addi	sp,sp,16
    800074d4:	00008067          	ret

00000000800074d8 <userinit>:
    800074d8:	ff010113          	addi	sp,sp,-16
    800074dc:	00813423          	sd	s0,8(sp)
    800074e0:	01010413          	addi	s0,sp,16
    800074e4:	00813403          	ld	s0,8(sp)
    800074e8:	01010113          	addi	sp,sp,16
    800074ec:	ffffa317          	auipc	t1,0xffffa
    800074f0:	38830067          	jr	904(t1) # 80001874 <main>

00000000800074f4 <either_copyout>:
    800074f4:	ff010113          	addi	sp,sp,-16
    800074f8:	00813023          	sd	s0,0(sp)
    800074fc:	00113423          	sd	ra,8(sp)
    80007500:	01010413          	addi	s0,sp,16
    80007504:	02051663          	bnez	a0,80007530 <either_copyout+0x3c>
    80007508:	00058513          	mv	a0,a1
    8000750c:	00060593          	mv	a1,a2
    80007510:	0006861b          	sext.w	a2,a3
    80007514:	00002097          	auipc	ra,0x2
    80007518:	c60080e7          	jalr	-928(ra) # 80009174 <__memmove>
    8000751c:	00813083          	ld	ra,8(sp)
    80007520:	00013403          	ld	s0,0(sp)
    80007524:	00000513          	li	a0,0
    80007528:	01010113          	addi	sp,sp,16
    8000752c:	00008067          	ret
    80007530:	00003517          	auipc	a0,0x3
    80007534:	11050513          	addi	a0,a0,272 # 8000a640 <CONSOLE_STATUS+0x630>
    80007538:	00001097          	auipc	ra,0x1
    8000753c:	934080e7          	jalr	-1740(ra) # 80007e6c <panic>

0000000080007540 <either_copyin>:
    80007540:	ff010113          	addi	sp,sp,-16
    80007544:	00813023          	sd	s0,0(sp)
    80007548:	00113423          	sd	ra,8(sp)
    8000754c:	01010413          	addi	s0,sp,16
    80007550:	02059463          	bnez	a1,80007578 <either_copyin+0x38>
    80007554:	00060593          	mv	a1,a2
    80007558:	0006861b          	sext.w	a2,a3
    8000755c:	00002097          	auipc	ra,0x2
    80007560:	c18080e7          	jalr	-1000(ra) # 80009174 <__memmove>
    80007564:	00813083          	ld	ra,8(sp)
    80007568:	00013403          	ld	s0,0(sp)
    8000756c:	00000513          	li	a0,0
    80007570:	01010113          	addi	sp,sp,16
    80007574:	00008067          	ret
    80007578:	00003517          	auipc	a0,0x3
    8000757c:	0f050513          	addi	a0,a0,240 # 8000a668 <CONSOLE_STATUS+0x658>
    80007580:	00001097          	auipc	ra,0x1
    80007584:	8ec080e7          	jalr	-1812(ra) # 80007e6c <panic>

0000000080007588 <trapinit>:
    80007588:	ff010113          	addi	sp,sp,-16
    8000758c:	00813423          	sd	s0,8(sp)
    80007590:	01010413          	addi	s0,sp,16
    80007594:	00813403          	ld	s0,8(sp)
    80007598:	00003597          	auipc	a1,0x3
    8000759c:	0f858593          	addi	a1,a1,248 # 8000a690 <CONSOLE_STATUS+0x680>
    800075a0:	00007517          	auipc	a0,0x7
    800075a4:	88050513          	addi	a0,a0,-1920 # 8000de20 <tickslock>
    800075a8:	01010113          	addi	sp,sp,16
    800075ac:	00001317          	auipc	t1,0x1
    800075b0:	5cc30067          	jr	1484(t1) # 80008b78 <initlock>

00000000800075b4 <trapinithart>:
    800075b4:	ff010113          	addi	sp,sp,-16
    800075b8:	00813423          	sd	s0,8(sp)
    800075bc:	01010413          	addi	s0,sp,16
    800075c0:	00000797          	auipc	a5,0x0
    800075c4:	30078793          	addi	a5,a5,768 # 800078c0 <kernelvec>
    800075c8:	10579073          	csrw	stvec,a5
    800075cc:	00813403          	ld	s0,8(sp)
    800075d0:	01010113          	addi	sp,sp,16
    800075d4:	00008067          	ret

00000000800075d8 <usertrap>:
    800075d8:	ff010113          	addi	sp,sp,-16
    800075dc:	00813423          	sd	s0,8(sp)
    800075e0:	01010413          	addi	s0,sp,16
    800075e4:	00813403          	ld	s0,8(sp)
    800075e8:	01010113          	addi	sp,sp,16
    800075ec:	00008067          	ret

00000000800075f0 <usertrapret>:
    800075f0:	ff010113          	addi	sp,sp,-16
    800075f4:	00813423          	sd	s0,8(sp)
    800075f8:	01010413          	addi	s0,sp,16
    800075fc:	00813403          	ld	s0,8(sp)
    80007600:	01010113          	addi	sp,sp,16
    80007604:	00008067          	ret

0000000080007608 <kerneltrap>:
    80007608:	fe010113          	addi	sp,sp,-32
    8000760c:	00813823          	sd	s0,16(sp)
    80007610:	00113c23          	sd	ra,24(sp)
    80007614:	00913423          	sd	s1,8(sp)
    80007618:	02010413          	addi	s0,sp,32
    8000761c:	142025f3          	csrr	a1,scause
    80007620:	100027f3          	csrr	a5,sstatus
    80007624:	0027f793          	andi	a5,a5,2
    80007628:	10079c63          	bnez	a5,80007740 <kerneltrap+0x138>
    8000762c:	142027f3          	csrr	a5,scause
    80007630:	0207ce63          	bltz	a5,8000766c <kerneltrap+0x64>
    80007634:	00003517          	auipc	a0,0x3
    80007638:	0a450513          	addi	a0,a0,164 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    8000763c:	00001097          	auipc	ra,0x1
    80007640:	88c080e7          	jalr	-1908(ra) # 80007ec8 <__printf>
    80007644:	141025f3          	csrr	a1,sepc
    80007648:	14302673          	csrr	a2,stval
    8000764c:	00003517          	auipc	a0,0x3
    80007650:	09c50513          	addi	a0,a0,156 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007654:	00001097          	auipc	ra,0x1
    80007658:	874080e7          	jalr	-1932(ra) # 80007ec8 <__printf>
    8000765c:	00003517          	auipc	a0,0x3
    80007660:	0a450513          	addi	a0,a0,164 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80007664:	00001097          	auipc	ra,0x1
    80007668:	808080e7          	jalr	-2040(ra) # 80007e6c <panic>
    8000766c:	0ff7f713          	andi	a4,a5,255
    80007670:	00900693          	li	a3,9
    80007674:	04d70063          	beq	a4,a3,800076b4 <kerneltrap+0xac>
    80007678:	fff00713          	li	a4,-1
    8000767c:	03f71713          	slli	a4,a4,0x3f
    80007680:	00170713          	addi	a4,a4,1
    80007684:	fae798e3          	bne	a5,a4,80007634 <kerneltrap+0x2c>
    80007688:	00000097          	auipc	ra,0x0
    8000768c:	e00080e7          	jalr	-512(ra) # 80007488 <cpuid>
    80007690:	06050663          	beqz	a0,800076fc <kerneltrap+0xf4>
    80007694:	144027f3          	csrr	a5,sip
    80007698:	ffd7f793          	andi	a5,a5,-3
    8000769c:	14479073          	csrw	sip,a5
    800076a0:	01813083          	ld	ra,24(sp)
    800076a4:	01013403          	ld	s0,16(sp)
    800076a8:	00813483          	ld	s1,8(sp)
    800076ac:	02010113          	addi	sp,sp,32
    800076b0:	00008067          	ret
    800076b4:	00000097          	auipc	ra,0x0
    800076b8:	3d0080e7          	jalr	976(ra) # 80007a84 <plic_claim>
    800076bc:	00a00793          	li	a5,10
    800076c0:	00050493          	mv	s1,a0
    800076c4:	06f50863          	beq	a0,a5,80007734 <kerneltrap+0x12c>
    800076c8:	fc050ce3          	beqz	a0,800076a0 <kerneltrap+0x98>
    800076cc:	00050593          	mv	a1,a0
    800076d0:	00003517          	auipc	a0,0x3
    800076d4:	fe850513          	addi	a0,a0,-24 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    800076d8:	00000097          	auipc	ra,0x0
    800076dc:	7f0080e7          	jalr	2032(ra) # 80007ec8 <__printf>
    800076e0:	01013403          	ld	s0,16(sp)
    800076e4:	01813083          	ld	ra,24(sp)
    800076e8:	00048513          	mv	a0,s1
    800076ec:	00813483          	ld	s1,8(sp)
    800076f0:	02010113          	addi	sp,sp,32
    800076f4:	00000317          	auipc	t1,0x0
    800076f8:	3c830067          	jr	968(t1) # 80007abc <plic_complete>
    800076fc:	00006517          	auipc	a0,0x6
    80007700:	72450513          	addi	a0,a0,1828 # 8000de20 <tickslock>
    80007704:	00001097          	auipc	ra,0x1
    80007708:	498080e7          	jalr	1176(ra) # 80008b9c <acquire>
    8000770c:	00005717          	auipc	a4,0x5
    80007710:	33870713          	addi	a4,a4,824 # 8000ca44 <ticks>
    80007714:	00072783          	lw	a5,0(a4)
    80007718:	00006517          	auipc	a0,0x6
    8000771c:	70850513          	addi	a0,a0,1800 # 8000de20 <tickslock>
    80007720:	0017879b          	addiw	a5,a5,1
    80007724:	00f72023          	sw	a5,0(a4)
    80007728:	00001097          	auipc	ra,0x1
    8000772c:	540080e7          	jalr	1344(ra) # 80008c68 <release>
    80007730:	f65ff06f          	j	80007694 <kerneltrap+0x8c>
    80007734:	00001097          	auipc	ra,0x1
    80007738:	09c080e7          	jalr	156(ra) # 800087d0 <uartintr>
    8000773c:	fa5ff06f          	j	800076e0 <kerneltrap+0xd8>
    80007740:	00003517          	auipc	a0,0x3
    80007744:	f5850513          	addi	a0,a0,-168 # 8000a698 <CONSOLE_STATUS+0x688>
    80007748:	00000097          	auipc	ra,0x0
    8000774c:	724080e7          	jalr	1828(ra) # 80007e6c <panic>

0000000080007750 <clockintr>:
    80007750:	fe010113          	addi	sp,sp,-32
    80007754:	00813823          	sd	s0,16(sp)
    80007758:	00913423          	sd	s1,8(sp)
    8000775c:	00113c23          	sd	ra,24(sp)
    80007760:	02010413          	addi	s0,sp,32
    80007764:	00006497          	auipc	s1,0x6
    80007768:	6bc48493          	addi	s1,s1,1724 # 8000de20 <tickslock>
    8000776c:	00048513          	mv	a0,s1
    80007770:	00001097          	auipc	ra,0x1
    80007774:	42c080e7          	jalr	1068(ra) # 80008b9c <acquire>
    80007778:	00005717          	auipc	a4,0x5
    8000777c:	2cc70713          	addi	a4,a4,716 # 8000ca44 <ticks>
    80007780:	00072783          	lw	a5,0(a4)
    80007784:	01013403          	ld	s0,16(sp)
    80007788:	01813083          	ld	ra,24(sp)
    8000778c:	00048513          	mv	a0,s1
    80007790:	0017879b          	addiw	a5,a5,1
    80007794:	00813483          	ld	s1,8(sp)
    80007798:	00f72023          	sw	a5,0(a4)
    8000779c:	02010113          	addi	sp,sp,32
    800077a0:	00001317          	auipc	t1,0x1
    800077a4:	4c830067          	jr	1224(t1) # 80008c68 <release>

00000000800077a8 <devintr>:
    800077a8:	142027f3          	csrr	a5,scause
    800077ac:	00000513          	li	a0,0
    800077b0:	0007c463          	bltz	a5,800077b8 <devintr+0x10>
    800077b4:	00008067          	ret
    800077b8:	fe010113          	addi	sp,sp,-32
    800077bc:	00813823          	sd	s0,16(sp)
    800077c0:	00113c23          	sd	ra,24(sp)
    800077c4:	00913423          	sd	s1,8(sp)
    800077c8:	02010413          	addi	s0,sp,32
    800077cc:	0ff7f713          	andi	a4,a5,255
    800077d0:	00900693          	li	a3,9
    800077d4:	04d70c63          	beq	a4,a3,8000782c <devintr+0x84>
    800077d8:	fff00713          	li	a4,-1
    800077dc:	03f71713          	slli	a4,a4,0x3f
    800077e0:	00170713          	addi	a4,a4,1
    800077e4:	00e78c63          	beq	a5,a4,800077fc <devintr+0x54>
    800077e8:	01813083          	ld	ra,24(sp)
    800077ec:	01013403          	ld	s0,16(sp)
    800077f0:	00813483          	ld	s1,8(sp)
    800077f4:	02010113          	addi	sp,sp,32
    800077f8:	00008067          	ret
    800077fc:	00000097          	auipc	ra,0x0
    80007800:	c8c080e7          	jalr	-884(ra) # 80007488 <cpuid>
    80007804:	06050663          	beqz	a0,80007870 <devintr+0xc8>
    80007808:	144027f3          	csrr	a5,sip
    8000780c:	ffd7f793          	andi	a5,a5,-3
    80007810:	14479073          	csrw	sip,a5
    80007814:	01813083          	ld	ra,24(sp)
    80007818:	01013403          	ld	s0,16(sp)
    8000781c:	00813483          	ld	s1,8(sp)
    80007820:	00200513          	li	a0,2
    80007824:	02010113          	addi	sp,sp,32
    80007828:	00008067          	ret
    8000782c:	00000097          	auipc	ra,0x0
    80007830:	258080e7          	jalr	600(ra) # 80007a84 <plic_claim>
    80007834:	00a00793          	li	a5,10
    80007838:	00050493          	mv	s1,a0
    8000783c:	06f50663          	beq	a0,a5,800078a8 <devintr+0x100>
    80007840:	00100513          	li	a0,1
    80007844:	fa0482e3          	beqz	s1,800077e8 <devintr+0x40>
    80007848:	00048593          	mv	a1,s1
    8000784c:	00003517          	auipc	a0,0x3
    80007850:	e6c50513          	addi	a0,a0,-404 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    80007854:	00000097          	auipc	ra,0x0
    80007858:	674080e7          	jalr	1652(ra) # 80007ec8 <__printf>
    8000785c:	00048513          	mv	a0,s1
    80007860:	00000097          	auipc	ra,0x0
    80007864:	25c080e7          	jalr	604(ra) # 80007abc <plic_complete>
    80007868:	00100513          	li	a0,1
    8000786c:	f7dff06f          	j	800077e8 <devintr+0x40>
    80007870:	00006517          	auipc	a0,0x6
    80007874:	5b050513          	addi	a0,a0,1456 # 8000de20 <tickslock>
    80007878:	00001097          	auipc	ra,0x1
    8000787c:	324080e7          	jalr	804(ra) # 80008b9c <acquire>
    80007880:	00005717          	auipc	a4,0x5
    80007884:	1c470713          	addi	a4,a4,452 # 8000ca44 <ticks>
    80007888:	00072783          	lw	a5,0(a4)
    8000788c:	00006517          	auipc	a0,0x6
    80007890:	59450513          	addi	a0,a0,1428 # 8000de20 <tickslock>
    80007894:	0017879b          	addiw	a5,a5,1
    80007898:	00f72023          	sw	a5,0(a4)
    8000789c:	00001097          	auipc	ra,0x1
    800078a0:	3cc080e7          	jalr	972(ra) # 80008c68 <release>
    800078a4:	f65ff06f          	j	80007808 <devintr+0x60>
    800078a8:	00001097          	auipc	ra,0x1
    800078ac:	f28080e7          	jalr	-216(ra) # 800087d0 <uartintr>
    800078b0:	fadff06f          	j	8000785c <devintr+0xb4>
	...

00000000800078c0 <kernelvec>:
    800078c0:	f0010113          	addi	sp,sp,-256
    800078c4:	00113023          	sd	ra,0(sp)
    800078c8:	00213423          	sd	sp,8(sp)
    800078cc:	00313823          	sd	gp,16(sp)
    800078d0:	00413c23          	sd	tp,24(sp)
    800078d4:	02513023          	sd	t0,32(sp)
    800078d8:	02613423          	sd	t1,40(sp)
    800078dc:	02713823          	sd	t2,48(sp)
    800078e0:	02813c23          	sd	s0,56(sp)
    800078e4:	04913023          	sd	s1,64(sp)
    800078e8:	04a13423          	sd	a0,72(sp)
    800078ec:	04b13823          	sd	a1,80(sp)
    800078f0:	04c13c23          	sd	a2,88(sp)
    800078f4:	06d13023          	sd	a3,96(sp)
    800078f8:	06e13423          	sd	a4,104(sp)
    800078fc:	06f13823          	sd	a5,112(sp)
    80007900:	07013c23          	sd	a6,120(sp)
    80007904:	09113023          	sd	a7,128(sp)
    80007908:	09213423          	sd	s2,136(sp)
    8000790c:	09313823          	sd	s3,144(sp)
    80007910:	09413c23          	sd	s4,152(sp)
    80007914:	0b513023          	sd	s5,160(sp)
    80007918:	0b613423          	sd	s6,168(sp)
    8000791c:	0b713823          	sd	s7,176(sp)
    80007920:	0b813c23          	sd	s8,184(sp)
    80007924:	0d913023          	sd	s9,192(sp)
    80007928:	0da13423          	sd	s10,200(sp)
    8000792c:	0db13823          	sd	s11,208(sp)
    80007930:	0dc13c23          	sd	t3,216(sp)
    80007934:	0fd13023          	sd	t4,224(sp)
    80007938:	0fe13423          	sd	t5,232(sp)
    8000793c:	0ff13823          	sd	t6,240(sp)
    80007940:	cc9ff0ef          	jal	ra,80007608 <kerneltrap>
    80007944:	00013083          	ld	ra,0(sp)
    80007948:	00813103          	ld	sp,8(sp)
    8000794c:	01013183          	ld	gp,16(sp)
    80007950:	02013283          	ld	t0,32(sp)
    80007954:	02813303          	ld	t1,40(sp)
    80007958:	03013383          	ld	t2,48(sp)
    8000795c:	03813403          	ld	s0,56(sp)
    80007960:	04013483          	ld	s1,64(sp)
    80007964:	04813503          	ld	a0,72(sp)
    80007968:	05013583          	ld	a1,80(sp)
    8000796c:	05813603          	ld	a2,88(sp)
    80007970:	06013683          	ld	a3,96(sp)
    80007974:	06813703          	ld	a4,104(sp)
    80007978:	07013783          	ld	a5,112(sp)
    8000797c:	07813803          	ld	a6,120(sp)
    80007980:	08013883          	ld	a7,128(sp)
    80007984:	08813903          	ld	s2,136(sp)
    80007988:	09013983          	ld	s3,144(sp)
    8000798c:	09813a03          	ld	s4,152(sp)
    80007990:	0a013a83          	ld	s5,160(sp)
    80007994:	0a813b03          	ld	s6,168(sp)
    80007998:	0b013b83          	ld	s7,176(sp)
    8000799c:	0b813c03          	ld	s8,184(sp)
    800079a0:	0c013c83          	ld	s9,192(sp)
    800079a4:	0c813d03          	ld	s10,200(sp)
    800079a8:	0d013d83          	ld	s11,208(sp)
    800079ac:	0d813e03          	ld	t3,216(sp)
    800079b0:	0e013e83          	ld	t4,224(sp)
    800079b4:	0e813f03          	ld	t5,232(sp)
    800079b8:	0f013f83          	ld	t6,240(sp)
    800079bc:	10010113          	addi	sp,sp,256
    800079c0:	10200073          	sret
    800079c4:	00000013          	nop
    800079c8:	00000013          	nop
    800079cc:	00000013          	nop

00000000800079d0 <timervec>:
    800079d0:	34051573          	csrrw	a0,mscratch,a0
    800079d4:	00b53023          	sd	a1,0(a0)
    800079d8:	00c53423          	sd	a2,8(a0)
    800079dc:	00d53823          	sd	a3,16(a0)
    800079e0:	01853583          	ld	a1,24(a0)
    800079e4:	02053603          	ld	a2,32(a0)
    800079e8:	0005b683          	ld	a3,0(a1)
    800079ec:	00c686b3          	add	a3,a3,a2
    800079f0:	00d5b023          	sd	a3,0(a1)
    800079f4:	00200593          	li	a1,2
    800079f8:	14459073          	csrw	sip,a1
    800079fc:	01053683          	ld	a3,16(a0)
    80007a00:	00853603          	ld	a2,8(a0)
    80007a04:	00053583          	ld	a1,0(a0)
    80007a08:	34051573          	csrrw	a0,mscratch,a0
    80007a0c:	30200073          	mret

0000000080007a10 <plicinit>:
    80007a10:	ff010113          	addi	sp,sp,-16
    80007a14:	00813423          	sd	s0,8(sp)
    80007a18:	01010413          	addi	s0,sp,16
    80007a1c:	00813403          	ld	s0,8(sp)
    80007a20:	0c0007b7          	lui	a5,0xc000
    80007a24:	00100713          	li	a4,1
    80007a28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007a2c:	00e7a223          	sw	a4,4(a5)
    80007a30:	01010113          	addi	sp,sp,16
    80007a34:	00008067          	ret

0000000080007a38 <plicinithart>:
    80007a38:	ff010113          	addi	sp,sp,-16
    80007a3c:	00813023          	sd	s0,0(sp)
    80007a40:	00113423          	sd	ra,8(sp)
    80007a44:	01010413          	addi	s0,sp,16
    80007a48:	00000097          	auipc	ra,0x0
    80007a4c:	a40080e7          	jalr	-1472(ra) # 80007488 <cpuid>
    80007a50:	0085171b          	slliw	a4,a0,0x8
    80007a54:	0c0027b7          	lui	a5,0xc002
    80007a58:	00e787b3          	add	a5,a5,a4
    80007a5c:	40200713          	li	a4,1026
    80007a60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007a64:	00813083          	ld	ra,8(sp)
    80007a68:	00013403          	ld	s0,0(sp)
    80007a6c:	00d5151b          	slliw	a0,a0,0xd
    80007a70:	0c2017b7          	lui	a5,0xc201
    80007a74:	00a78533          	add	a0,a5,a0
    80007a78:	00052023          	sw	zero,0(a0)
    80007a7c:	01010113          	addi	sp,sp,16
    80007a80:	00008067          	ret

0000000080007a84 <plic_claim>:
    80007a84:	ff010113          	addi	sp,sp,-16
    80007a88:	00813023          	sd	s0,0(sp)
    80007a8c:	00113423          	sd	ra,8(sp)
    80007a90:	01010413          	addi	s0,sp,16
    80007a94:	00000097          	auipc	ra,0x0
    80007a98:	9f4080e7          	jalr	-1548(ra) # 80007488 <cpuid>
    80007a9c:	00813083          	ld	ra,8(sp)
    80007aa0:	00013403          	ld	s0,0(sp)
    80007aa4:	00d5151b          	slliw	a0,a0,0xd
    80007aa8:	0c2017b7          	lui	a5,0xc201
    80007aac:	00a78533          	add	a0,a5,a0
    80007ab0:	00452503          	lw	a0,4(a0)
    80007ab4:	01010113          	addi	sp,sp,16
    80007ab8:	00008067          	ret

0000000080007abc <plic_complete>:
    80007abc:	fe010113          	addi	sp,sp,-32
    80007ac0:	00813823          	sd	s0,16(sp)
    80007ac4:	00913423          	sd	s1,8(sp)
    80007ac8:	00113c23          	sd	ra,24(sp)
    80007acc:	02010413          	addi	s0,sp,32
    80007ad0:	00050493          	mv	s1,a0
    80007ad4:	00000097          	auipc	ra,0x0
    80007ad8:	9b4080e7          	jalr	-1612(ra) # 80007488 <cpuid>
    80007adc:	01813083          	ld	ra,24(sp)
    80007ae0:	01013403          	ld	s0,16(sp)
    80007ae4:	00d5179b          	slliw	a5,a0,0xd
    80007ae8:	0c201737          	lui	a4,0xc201
    80007aec:	00f707b3          	add	a5,a4,a5
    80007af0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007af4:	00813483          	ld	s1,8(sp)
    80007af8:	02010113          	addi	sp,sp,32
    80007afc:	00008067          	ret

0000000080007b00 <consolewrite>:
    80007b00:	fb010113          	addi	sp,sp,-80
    80007b04:	04813023          	sd	s0,64(sp)
    80007b08:	04113423          	sd	ra,72(sp)
    80007b0c:	02913c23          	sd	s1,56(sp)
    80007b10:	03213823          	sd	s2,48(sp)
    80007b14:	03313423          	sd	s3,40(sp)
    80007b18:	03413023          	sd	s4,32(sp)
    80007b1c:	01513c23          	sd	s5,24(sp)
    80007b20:	05010413          	addi	s0,sp,80
    80007b24:	06c05c63          	blez	a2,80007b9c <consolewrite+0x9c>
    80007b28:	00060993          	mv	s3,a2
    80007b2c:	00050a13          	mv	s4,a0
    80007b30:	00058493          	mv	s1,a1
    80007b34:	00000913          	li	s2,0
    80007b38:	fff00a93          	li	s5,-1
    80007b3c:	01c0006f          	j	80007b58 <consolewrite+0x58>
    80007b40:	fbf44503          	lbu	a0,-65(s0)
    80007b44:	0019091b          	addiw	s2,s2,1
    80007b48:	00148493          	addi	s1,s1,1
    80007b4c:	00001097          	auipc	ra,0x1
    80007b50:	a9c080e7          	jalr	-1380(ra) # 800085e8 <uartputc>
    80007b54:	03298063          	beq	s3,s2,80007b74 <consolewrite+0x74>
    80007b58:	00048613          	mv	a2,s1
    80007b5c:	00100693          	li	a3,1
    80007b60:	000a0593          	mv	a1,s4
    80007b64:	fbf40513          	addi	a0,s0,-65
    80007b68:	00000097          	auipc	ra,0x0
    80007b6c:	9d8080e7          	jalr	-1576(ra) # 80007540 <either_copyin>
    80007b70:	fd5518e3          	bne	a0,s5,80007b40 <consolewrite+0x40>
    80007b74:	04813083          	ld	ra,72(sp)
    80007b78:	04013403          	ld	s0,64(sp)
    80007b7c:	03813483          	ld	s1,56(sp)
    80007b80:	02813983          	ld	s3,40(sp)
    80007b84:	02013a03          	ld	s4,32(sp)
    80007b88:	01813a83          	ld	s5,24(sp)
    80007b8c:	00090513          	mv	a0,s2
    80007b90:	03013903          	ld	s2,48(sp)
    80007b94:	05010113          	addi	sp,sp,80
    80007b98:	00008067          	ret
    80007b9c:	00000913          	li	s2,0
    80007ba0:	fd5ff06f          	j	80007b74 <consolewrite+0x74>

0000000080007ba4 <consoleread>:
    80007ba4:	f9010113          	addi	sp,sp,-112
    80007ba8:	06813023          	sd	s0,96(sp)
    80007bac:	04913c23          	sd	s1,88(sp)
    80007bb0:	05213823          	sd	s2,80(sp)
    80007bb4:	05313423          	sd	s3,72(sp)
    80007bb8:	05413023          	sd	s4,64(sp)
    80007bbc:	03513c23          	sd	s5,56(sp)
    80007bc0:	03613823          	sd	s6,48(sp)
    80007bc4:	03713423          	sd	s7,40(sp)
    80007bc8:	03813023          	sd	s8,32(sp)
    80007bcc:	06113423          	sd	ra,104(sp)
    80007bd0:	01913c23          	sd	s9,24(sp)
    80007bd4:	07010413          	addi	s0,sp,112
    80007bd8:	00060b93          	mv	s7,a2
    80007bdc:	00050913          	mv	s2,a0
    80007be0:	00058c13          	mv	s8,a1
    80007be4:	00060b1b          	sext.w	s6,a2
    80007be8:	00006497          	auipc	s1,0x6
    80007bec:	26048493          	addi	s1,s1,608 # 8000de48 <cons>
    80007bf0:	00400993          	li	s3,4
    80007bf4:	fff00a13          	li	s4,-1
    80007bf8:	00a00a93          	li	s5,10
    80007bfc:	05705e63          	blez	s7,80007c58 <consoleread+0xb4>
    80007c00:	09c4a703          	lw	a4,156(s1)
    80007c04:	0984a783          	lw	a5,152(s1)
    80007c08:	0007071b          	sext.w	a4,a4
    80007c0c:	08e78463          	beq	a5,a4,80007c94 <consoleread+0xf0>
    80007c10:	07f7f713          	andi	a4,a5,127
    80007c14:	00e48733          	add	a4,s1,a4
    80007c18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007c1c:	0017869b          	addiw	a3,a5,1
    80007c20:	08d4ac23          	sw	a3,152(s1)
    80007c24:	00070c9b          	sext.w	s9,a4
    80007c28:	0b370663          	beq	a4,s3,80007cd4 <consoleread+0x130>
    80007c2c:	00100693          	li	a3,1
    80007c30:	f9f40613          	addi	a2,s0,-97
    80007c34:	000c0593          	mv	a1,s8
    80007c38:	00090513          	mv	a0,s2
    80007c3c:	f8e40fa3          	sb	a4,-97(s0)
    80007c40:	00000097          	auipc	ra,0x0
    80007c44:	8b4080e7          	jalr	-1868(ra) # 800074f4 <either_copyout>
    80007c48:	01450863          	beq	a0,s4,80007c58 <consoleread+0xb4>
    80007c4c:	001c0c13          	addi	s8,s8,1
    80007c50:	fffb8b9b          	addiw	s7,s7,-1
    80007c54:	fb5c94e3          	bne	s9,s5,80007bfc <consoleread+0x58>
    80007c58:	000b851b          	sext.w	a0,s7
    80007c5c:	06813083          	ld	ra,104(sp)
    80007c60:	06013403          	ld	s0,96(sp)
    80007c64:	05813483          	ld	s1,88(sp)
    80007c68:	05013903          	ld	s2,80(sp)
    80007c6c:	04813983          	ld	s3,72(sp)
    80007c70:	04013a03          	ld	s4,64(sp)
    80007c74:	03813a83          	ld	s5,56(sp)
    80007c78:	02813b83          	ld	s7,40(sp)
    80007c7c:	02013c03          	ld	s8,32(sp)
    80007c80:	01813c83          	ld	s9,24(sp)
    80007c84:	40ab053b          	subw	a0,s6,a0
    80007c88:	03013b03          	ld	s6,48(sp)
    80007c8c:	07010113          	addi	sp,sp,112
    80007c90:	00008067          	ret
    80007c94:	00001097          	auipc	ra,0x1
    80007c98:	1d8080e7          	jalr	472(ra) # 80008e6c <push_on>
    80007c9c:	0984a703          	lw	a4,152(s1)
    80007ca0:	09c4a783          	lw	a5,156(s1)
    80007ca4:	0007879b          	sext.w	a5,a5
    80007ca8:	fef70ce3          	beq	a4,a5,80007ca0 <consoleread+0xfc>
    80007cac:	00001097          	auipc	ra,0x1
    80007cb0:	234080e7          	jalr	564(ra) # 80008ee0 <pop_on>
    80007cb4:	0984a783          	lw	a5,152(s1)
    80007cb8:	07f7f713          	andi	a4,a5,127
    80007cbc:	00e48733          	add	a4,s1,a4
    80007cc0:	01874703          	lbu	a4,24(a4)
    80007cc4:	0017869b          	addiw	a3,a5,1
    80007cc8:	08d4ac23          	sw	a3,152(s1)
    80007ccc:	00070c9b          	sext.w	s9,a4
    80007cd0:	f5371ee3          	bne	a4,s3,80007c2c <consoleread+0x88>
    80007cd4:	000b851b          	sext.w	a0,s7
    80007cd8:	f96bf2e3          	bgeu	s7,s6,80007c5c <consoleread+0xb8>
    80007cdc:	08f4ac23          	sw	a5,152(s1)
    80007ce0:	f7dff06f          	j	80007c5c <consoleread+0xb8>

0000000080007ce4 <consputc>:
    80007ce4:	10000793          	li	a5,256
    80007ce8:	00f50663          	beq	a0,a5,80007cf4 <consputc+0x10>
    80007cec:	00001317          	auipc	t1,0x1
    80007cf0:	9f430067          	jr	-1548(t1) # 800086e0 <uartputc_sync>
    80007cf4:	ff010113          	addi	sp,sp,-16
    80007cf8:	00113423          	sd	ra,8(sp)
    80007cfc:	00813023          	sd	s0,0(sp)
    80007d00:	01010413          	addi	s0,sp,16
    80007d04:	00800513          	li	a0,8
    80007d08:	00001097          	auipc	ra,0x1
    80007d0c:	9d8080e7          	jalr	-1576(ra) # 800086e0 <uartputc_sync>
    80007d10:	02000513          	li	a0,32
    80007d14:	00001097          	auipc	ra,0x1
    80007d18:	9cc080e7          	jalr	-1588(ra) # 800086e0 <uartputc_sync>
    80007d1c:	00013403          	ld	s0,0(sp)
    80007d20:	00813083          	ld	ra,8(sp)
    80007d24:	00800513          	li	a0,8
    80007d28:	01010113          	addi	sp,sp,16
    80007d2c:	00001317          	auipc	t1,0x1
    80007d30:	9b430067          	jr	-1612(t1) # 800086e0 <uartputc_sync>

0000000080007d34 <consoleintr>:
    80007d34:	fe010113          	addi	sp,sp,-32
    80007d38:	00813823          	sd	s0,16(sp)
    80007d3c:	00913423          	sd	s1,8(sp)
    80007d40:	01213023          	sd	s2,0(sp)
    80007d44:	00113c23          	sd	ra,24(sp)
    80007d48:	02010413          	addi	s0,sp,32
    80007d4c:	00006917          	auipc	s2,0x6
    80007d50:	0fc90913          	addi	s2,s2,252 # 8000de48 <cons>
    80007d54:	00050493          	mv	s1,a0
    80007d58:	00090513          	mv	a0,s2
    80007d5c:	00001097          	auipc	ra,0x1
    80007d60:	e40080e7          	jalr	-448(ra) # 80008b9c <acquire>
    80007d64:	02048c63          	beqz	s1,80007d9c <consoleintr+0x68>
    80007d68:	0a092783          	lw	a5,160(s2)
    80007d6c:	09892703          	lw	a4,152(s2)
    80007d70:	07f00693          	li	a3,127
    80007d74:	40e7873b          	subw	a4,a5,a4
    80007d78:	02e6e263          	bltu	a3,a4,80007d9c <consoleintr+0x68>
    80007d7c:	00d00713          	li	a4,13
    80007d80:	04e48063          	beq	s1,a4,80007dc0 <consoleintr+0x8c>
    80007d84:	07f7f713          	andi	a4,a5,127
    80007d88:	00e90733          	add	a4,s2,a4
    80007d8c:	0017879b          	addiw	a5,a5,1
    80007d90:	0af92023          	sw	a5,160(s2)
    80007d94:	00970c23          	sb	s1,24(a4)
    80007d98:	08f92e23          	sw	a5,156(s2)
    80007d9c:	01013403          	ld	s0,16(sp)
    80007da0:	01813083          	ld	ra,24(sp)
    80007da4:	00813483          	ld	s1,8(sp)
    80007da8:	00013903          	ld	s2,0(sp)
    80007dac:	00006517          	auipc	a0,0x6
    80007db0:	09c50513          	addi	a0,a0,156 # 8000de48 <cons>
    80007db4:	02010113          	addi	sp,sp,32
    80007db8:	00001317          	auipc	t1,0x1
    80007dbc:	eb030067          	jr	-336(t1) # 80008c68 <release>
    80007dc0:	00a00493          	li	s1,10
    80007dc4:	fc1ff06f          	j	80007d84 <consoleintr+0x50>

0000000080007dc8 <consoleinit>:
    80007dc8:	fe010113          	addi	sp,sp,-32
    80007dcc:	00113c23          	sd	ra,24(sp)
    80007dd0:	00813823          	sd	s0,16(sp)
    80007dd4:	00913423          	sd	s1,8(sp)
    80007dd8:	02010413          	addi	s0,sp,32
    80007ddc:	00006497          	auipc	s1,0x6
    80007de0:	06c48493          	addi	s1,s1,108 # 8000de48 <cons>
    80007de4:	00048513          	mv	a0,s1
    80007de8:	00003597          	auipc	a1,0x3
    80007dec:	92858593          	addi	a1,a1,-1752 # 8000a710 <CONSOLE_STATUS+0x700>
    80007df0:	00001097          	auipc	ra,0x1
    80007df4:	d88080e7          	jalr	-632(ra) # 80008b78 <initlock>
    80007df8:	00000097          	auipc	ra,0x0
    80007dfc:	7ac080e7          	jalr	1964(ra) # 800085a4 <uartinit>
    80007e00:	01813083          	ld	ra,24(sp)
    80007e04:	01013403          	ld	s0,16(sp)
    80007e08:	00000797          	auipc	a5,0x0
    80007e0c:	d9c78793          	addi	a5,a5,-612 # 80007ba4 <consoleread>
    80007e10:	0af4bc23          	sd	a5,184(s1)
    80007e14:	00000797          	auipc	a5,0x0
    80007e18:	cec78793          	addi	a5,a5,-788 # 80007b00 <consolewrite>
    80007e1c:	0cf4b023          	sd	a5,192(s1)
    80007e20:	00813483          	ld	s1,8(sp)
    80007e24:	02010113          	addi	sp,sp,32
    80007e28:	00008067          	ret

0000000080007e2c <console_read>:
    80007e2c:	ff010113          	addi	sp,sp,-16
    80007e30:	00813423          	sd	s0,8(sp)
    80007e34:	01010413          	addi	s0,sp,16
    80007e38:	00813403          	ld	s0,8(sp)
    80007e3c:	00006317          	auipc	t1,0x6
    80007e40:	0c433303          	ld	t1,196(t1) # 8000df00 <devsw+0x10>
    80007e44:	01010113          	addi	sp,sp,16
    80007e48:	00030067          	jr	t1

0000000080007e4c <console_write>:
    80007e4c:	ff010113          	addi	sp,sp,-16
    80007e50:	00813423          	sd	s0,8(sp)
    80007e54:	01010413          	addi	s0,sp,16
    80007e58:	00813403          	ld	s0,8(sp)
    80007e5c:	00006317          	auipc	t1,0x6
    80007e60:	0ac33303          	ld	t1,172(t1) # 8000df08 <devsw+0x18>
    80007e64:	01010113          	addi	sp,sp,16
    80007e68:	00030067          	jr	t1

0000000080007e6c <panic>:
    80007e6c:	fe010113          	addi	sp,sp,-32
    80007e70:	00113c23          	sd	ra,24(sp)
    80007e74:	00813823          	sd	s0,16(sp)
    80007e78:	00913423          	sd	s1,8(sp)
    80007e7c:	02010413          	addi	s0,sp,32
    80007e80:	00050493          	mv	s1,a0
    80007e84:	00003517          	auipc	a0,0x3
    80007e88:	89450513          	addi	a0,a0,-1900 # 8000a718 <CONSOLE_STATUS+0x708>
    80007e8c:	00006797          	auipc	a5,0x6
    80007e90:	1007ae23          	sw	zero,284(a5) # 8000dfa8 <pr+0x18>
    80007e94:	00000097          	auipc	ra,0x0
    80007e98:	034080e7          	jalr	52(ra) # 80007ec8 <__printf>
    80007e9c:	00048513          	mv	a0,s1
    80007ea0:	00000097          	auipc	ra,0x0
    80007ea4:	028080e7          	jalr	40(ra) # 80007ec8 <__printf>
    80007ea8:	00002517          	auipc	a0,0x2
    80007eac:	5e050513          	addi	a0,a0,1504 # 8000a488 <CONSOLE_STATUS+0x478>
    80007eb0:	00000097          	auipc	ra,0x0
    80007eb4:	018080e7          	jalr	24(ra) # 80007ec8 <__printf>
    80007eb8:	00100793          	li	a5,1
    80007ebc:	00005717          	auipc	a4,0x5
    80007ec0:	b8f72623          	sw	a5,-1140(a4) # 8000ca48 <panicked>
    80007ec4:	0000006f          	j	80007ec4 <panic+0x58>

0000000080007ec8 <__printf>:
    80007ec8:	f3010113          	addi	sp,sp,-208
    80007ecc:	08813023          	sd	s0,128(sp)
    80007ed0:	07313423          	sd	s3,104(sp)
    80007ed4:	09010413          	addi	s0,sp,144
    80007ed8:	05813023          	sd	s8,64(sp)
    80007edc:	08113423          	sd	ra,136(sp)
    80007ee0:	06913c23          	sd	s1,120(sp)
    80007ee4:	07213823          	sd	s2,112(sp)
    80007ee8:	07413023          	sd	s4,96(sp)
    80007eec:	05513c23          	sd	s5,88(sp)
    80007ef0:	05613823          	sd	s6,80(sp)
    80007ef4:	05713423          	sd	s7,72(sp)
    80007ef8:	03913c23          	sd	s9,56(sp)
    80007efc:	03a13823          	sd	s10,48(sp)
    80007f00:	03b13423          	sd	s11,40(sp)
    80007f04:	00006317          	auipc	t1,0x6
    80007f08:	08c30313          	addi	t1,t1,140 # 8000df90 <pr>
    80007f0c:	01832c03          	lw	s8,24(t1)
    80007f10:	00b43423          	sd	a1,8(s0)
    80007f14:	00c43823          	sd	a2,16(s0)
    80007f18:	00d43c23          	sd	a3,24(s0)
    80007f1c:	02e43023          	sd	a4,32(s0)
    80007f20:	02f43423          	sd	a5,40(s0)
    80007f24:	03043823          	sd	a6,48(s0)
    80007f28:	03143c23          	sd	a7,56(s0)
    80007f2c:	00050993          	mv	s3,a0
    80007f30:	4a0c1663          	bnez	s8,800083dc <__printf+0x514>
    80007f34:	60098c63          	beqz	s3,8000854c <__printf+0x684>
    80007f38:	0009c503          	lbu	a0,0(s3)
    80007f3c:	00840793          	addi	a5,s0,8
    80007f40:	f6f43c23          	sd	a5,-136(s0)
    80007f44:	00000493          	li	s1,0
    80007f48:	22050063          	beqz	a0,80008168 <__printf+0x2a0>
    80007f4c:	00002a37          	lui	s4,0x2
    80007f50:	00018ab7          	lui	s5,0x18
    80007f54:	000f4b37          	lui	s6,0xf4
    80007f58:	00989bb7          	lui	s7,0x989
    80007f5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007f60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007f64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007f68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007f6c:	00148c9b          	addiw	s9,s1,1
    80007f70:	02500793          	li	a5,37
    80007f74:	01998933          	add	s2,s3,s9
    80007f78:	38f51263          	bne	a0,a5,800082fc <__printf+0x434>
    80007f7c:	00094783          	lbu	a5,0(s2)
    80007f80:	00078c9b          	sext.w	s9,a5
    80007f84:	1e078263          	beqz	a5,80008168 <__printf+0x2a0>
    80007f88:	0024849b          	addiw	s1,s1,2
    80007f8c:	07000713          	li	a4,112
    80007f90:	00998933          	add	s2,s3,s1
    80007f94:	38e78a63          	beq	a5,a4,80008328 <__printf+0x460>
    80007f98:	20f76863          	bltu	a4,a5,800081a8 <__printf+0x2e0>
    80007f9c:	42a78863          	beq	a5,a0,800083cc <__printf+0x504>
    80007fa0:	06400713          	li	a4,100
    80007fa4:	40e79663          	bne	a5,a4,800083b0 <__printf+0x4e8>
    80007fa8:	f7843783          	ld	a5,-136(s0)
    80007fac:	0007a603          	lw	a2,0(a5)
    80007fb0:	00878793          	addi	a5,a5,8
    80007fb4:	f6f43c23          	sd	a5,-136(s0)
    80007fb8:	42064a63          	bltz	a2,800083ec <__printf+0x524>
    80007fbc:	00a00713          	li	a4,10
    80007fc0:	02e677bb          	remuw	a5,a2,a4
    80007fc4:	00002d97          	auipc	s11,0x2
    80007fc8:	77cd8d93          	addi	s11,s11,1916 # 8000a740 <digits>
    80007fcc:	00900593          	li	a1,9
    80007fd0:	0006051b          	sext.w	a0,a2
    80007fd4:	00000c93          	li	s9,0
    80007fd8:	02079793          	slli	a5,a5,0x20
    80007fdc:	0207d793          	srli	a5,a5,0x20
    80007fe0:	00fd87b3          	add	a5,s11,a5
    80007fe4:	0007c783          	lbu	a5,0(a5)
    80007fe8:	02e656bb          	divuw	a3,a2,a4
    80007fec:	f8f40023          	sb	a5,-128(s0)
    80007ff0:	14c5d863          	bge	a1,a2,80008140 <__printf+0x278>
    80007ff4:	06300593          	li	a1,99
    80007ff8:	00100c93          	li	s9,1
    80007ffc:	02e6f7bb          	remuw	a5,a3,a4
    80008000:	02079793          	slli	a5,a5,0x20
    80008004:	0207d793          	srli	a5,a5,0x20
    80008008:	00fd87b3          	add	a5,s11,a5
    8000800c:	0007c783          	lbu	a5,0(a5)
    80008010:	02e6d73b          	divuw	a4,a3,a4
    80008014:	f8f400a3          	sb	a5,-127(s0)
    80008018:	12a5f463          	bgeu	a1,a0,80008140 <__printf+0x278>
    8000801c:	00a00693          	li	a3,10
    80008020:	00900593          	li	a1,9
    80008024:	02d777bb          	remuw	a5,a4,a3
    80008028:	02079793          	slli	a5,a5,0x20
    8000802c:	0207d793          	srli	a5,a5,0x20
    80008030:	00fd87b3          	add	a5,s11,a5
    80008034:	0007c503          	lbu	a0,0(a5)
    80008038:	02d757bb          	divuw	a5,a4,a3
    8000803c:	f8a40123          	sb	a0,-126(s0)
    80008040:	48e5f263          	bgeu	a1,a4,800084c4 <__printf+0x5fc>
    80008044:	06300513          	li	a0,99
    80008048:	02d7f5bb          	remuw	a1,a5,a3
    8000804c:	02059593          	slli	a1,a1,0x20
    80008050:	0205d593          	srli	a1,a1,0x20
    80008054:	00bd85b3          	add	a1,s11,a1
    80008058:	0005c583          	lbu	a1,0(a1)
    8000805c:	02d7d7bb          	divuw	a5,a5,a3
    80008060:	f8b401a3          	sb	a1,-125(s0)
    80008064:	48e57263          	bgeu	a0,a4,800084e8 <__printf+0x620>
    80008068:	3e700513          	li	a0,999
    8000806c:	02d7f5bb          	remuw	a1,a5,a3
    80008070:	02059593          	slli	a1,a1,0x20
    80008074:	0205d593          	srli	a1,a1,0x20
    80008078:	00bd85b3          	add	a1,s11,a1
    8000807c:	0005c583          	lbu	a1,0(a1)
    80008080:	02d7d7bb          	divuw	a5,a5,a3
    80008084:	f8b40223          	sb	a1,-124(s0)
    80008088:	46e57663          	bgeu	a0,a4,800084f4 <__printf+0x62c>
    8000808c:	02d7f5bb          	remuw	a1,a5,a3
    80008090:	02059593          	slli	a1,a1,0x20
    80008094:	0205d593          	srli	a1,a1,0x20
    80008098:	00bd85b3          	add	a1,s11,a1
    8000809c:	0005c583          	lbu	a1,0(a1)
    800080a0:	02d7d7bb          	divuw	a5,a5,a3
    800080a4:	f8b402a3          	sb	a1,-123(s0)
    800080a8:	46ea7863          	bgeu	s4,a4,80008518 <__printf+0x650>
    800080ac:	02d7f5bb          	remuw	a1,a5,a3
    800080b0:	02059593          	slli	a1,a1,0x20
    800080b4:	0205d593          	srli	a1,a1,0x20
    800080b8:	00bd85b3          	add	a1,s11,a1
    800080bc:	0005c583          	lbu	a1,0(a1)
    800080c0:	02d7d7bb          	divuw	a5,a5,a3
    800080c4:	f8b40323          	sb	a1,-122(s0)
    800080c8:	3eeaf863          	bgeu	s5,a4,800084b8 <__printf+0x5f0>
    800080cc:	02d7f5bb          	remuw	a1,a5,a3
    800080d0:	02059593          	slli	a1,a1,0x20
    800080d4:	0205d593          	srli	a1,a1,0x20
    800080d8:	00bd85b3          	add	a1,s11,a1
    800080dc:	0005c583          	lbu	a1,0(a1)
    800080e0:	02d7d7bb          	divuw	a5,a5,a3
    800080e4:	f8b403a3          	sb	a1,-121(s0)
    800080e8:	42eb7e63          	bgeu	s6,a4,80008524 <__printf+0x65c>
    800080ec:	02d7f5bb          	remuw	a1,a5,a3
    800080f0:	02059593          	slli	a1,a1,0x20
    800080f4:	0205d593          	srli	a1,a1,0x20
    800080f8:	00bd85b3          	add	a1,s11,a1
    800080fc:	0005c583          	lbu	a1,0(a1)
    80008100:	02d7d7bb          	divuw	a5,a5,a3
    80008104:	f8b40423          	sb	a1,-120(s0)
    80008108:	42ebfc63          	bgeu	s7,a4,80008540 <__printf+0x678>
    8000810c:	02079793          	slli	a5,a5,0x20
    80008110:	0207d793          	srli	a5,a5,0x20
    80008114:	00fd8db3          	add	s11,s11,a5
    80008118:	000dc703          	lbu	a4,0(s11)
    8000811c:	00a00793          	li	a5,10
    80008120:	00900c93          	li	s9,9
    80008124:	f8e404a3          	sb	a4,-119(s0)
    80008128:	00065c63          	bgez	a2,80008140 <__printf+0x278>
    8000812c:	f9040713          	addi	a4,s0,-112
    80008130:	00f70733          	add	a4,a4,a5
    80008134:	02d00693          	li	a3,45
    80008138:	fed70823          	sb	a3,-16(a4)
    8000813c:	00078c93          	mv	s9,a5
    80008140:	f8040793          	addi	a5,s0,-128
    80008144:	01978cb3          	add	s9,a5,s9
    80008148:	f7f40d13          	addi	s10,s0,-129
    8000814c:	000cc503          	lbu	a0,0(s9)
    80008150:	fffc8c93          	addi	s9,s9,-1
    80008154:	00000097          	auipc	ra,0x0
    80008158:	b90080e7          	jalr	-1136(ra) # 80007ce4 <consputc>
    8000815c:	ffac98e3          	bne	s9,s10,8000814c <__printf+0x284>
    80008160:	00094503          	lbu	a0,0(s2)
    80008164:	e00514e3          	bnez	a0,80007f6c <__printf+0xa4>
    80008168:	1a0c1663          	bnez	s8,80008314 <__printf+0x44c>
    8000816c:	08813083          	ld	ra,136(sp)
    80008170:	08013403          	ld	s0,128(sp)
    80008174:	07813483          	ld	s1,120(sp)
    80008178:	07013903          	ld	s2,112(sp)
    8000817c:	06813983          	ld	s3,104(sp)
    80008180:	06013a03          	ld	s4,96(sp)
    80008184:	05813a83          	ld	s5,88(sp)
    80008188:	05013b03          	ld	s6,80(sp)
    8000818c:	04813b83          	ld	s7,72(sp)
    80008190:	04013c03          	ld	s8,64(sp)
    80008194:	03813c83          	ld	s9,56(sp)
    80008198:	03013d03          	ld	s10,48(sp)
    8000819c:	02813d83          	ld	s11,40(sp)
    800081a0:	0d010113          	addi	sp,sp,208
    800081a4:	00008067          	ret
    800081a8:	07300713          	li	a4,115
    800081ac:	1ce78a63          	beq	a5,a4,80008380 <__printf+0x4b8>
    800081b0:	07800713          	li	a4,120
    800081b4:	1ee79e63          	bne	a5,a4,800083b0 <__printf+0x4e8>
    800081b8:	f7843783          	ld	a5,-136(s0)
    800081bc:	0007a703          	lw	a4,0(a5)
    800081c0:	00878793          	addi	a5,a5,8
    800081c4:	f6f43c23          	sd	a5,-136(s0)
    800081c8:	28074263          	bltz	a4,8000844c <__printf+0x584>
    800081cc:	00002d97          	auipc	s11,0x2
    800081d0:	574d8d93          	addi	s11,s11,1396 # 8000a740 <digits>
    800081d4:	00f77793          	andi	a5,a4,15
    800081d8:	00fd87b3          	add	a5,s11,a5
    800081dc:	0007c683          	lbu	a3,0(a5)
    800081e0:	00f00613          	li	a2,15
    800081e4:	0007079b          	sext.w	a5,a4
    800081e8:	f8d40023          	sb	a3,-128(s0)
    800081ec:	0047559b          	srliw	a1,a4,0x4
    800081f0:	0047569b          	srliw	a3,a4,0x4
    800081f4:	00000c93          	li	s9,0
    800081f8:	0ee65063          	bge	a2,a4,800082d8 <__printf+0x410>
    800081fc:	00f6f693          	andi	a3,a3,15
    80008200:	00dd86b3          	add	a3,s11,a3
    80008204:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008208:	0087d79b          	srliw	a5,a5,0x8
    8000820c:	00100c93          	li	s9,1
    80008210:	f8d400a3          	sb	a3,-127(s0)
    80008214:	0cb67263          	bgeu	a2,a1,800082d8 <__printf+0x410>
    80008218:	00f7f693          	andi	a3,a5,15
    8000821c:	00dd86b3          	add	a3,s11,a3
    80008220:	0006c583          	lbu	a1,0(a3)
    80008224:	00f00613          	li	a2,15
    80008228:	0047d69b          	srliw	a3,a5,0x4
    8000822c:	f8b40123          	sb	a1,-126(s0)
    80008230:	0047d593          	srli	a1,a5,0x4
    80008234:	28f67e63          	bgeu	a2,a5,800084d0 <__printf+0x608>
    80008238:	00f6f693          	andi	a3,a3,15
    8000823c:	00dd86b3          	add	a3,s11,a3
    80008240:	0006c503          	lbu	a0,0(a3)
    80008244:	0087d813          	srli	a6,a5,0x8
    80008248:	0087d69b          	srliw	a3,a5,0x8
    8000824c:	f8a401a3          	sb	a0,-125(s0)
    80008250:	28b67663          	bgeu	a2,a1,800084dc <__printf+0x614>
    80008254:	00f6f693          	andi	a3,a3,15
    80008258:	00dd86b3          	add	a3,s11,a3
    8000825c:	0006c583          	lbu	a1,0(a3)
    80008260:	00c7d513          	srli	a0,a5,0xc
    80008264:	00c7d69b          	srliw	a3,a5,0xc
    80008268:	f8b40223          	sb	a1,-124(s0)
    8000826c:	29067a63          	bgeu	a2,a6,80008500 <__printf+0x638>
    80008270:	00f6f693          	andi	a3,a3,15
    80008274:	00dd86b3          	add	a3,s11,a3
    80008278:	0006c583          	lbu	a1,0(a3)
    8000827c:	0107d813          	srli	a6,a5,0x10
    80008280:	0107d69b          	srliw	a3,a5,0x10
    80008284:	f8b402a3          	sb	a1,-123(s0)
    80008288:	28a67263          	bgeu	a2,a0,8000850c <__printf+0x644>
    8000828c:	00f6f693          	andi	a3,a3,15
    80008290:	00dd86b3          	add	a3,s11,a3
    80008294:	0006c683          	lbu	a3,0(a3)
    80008298:	0147d79b          	srliw	a5,a5,0x14
    8000829c:	f8d40323          	sb	a3,-122(s0)
    800082a0:	21067663          	bgeu	a2,a6,800084ac <__printf+0x5e4>
    800082a4:	02079793          	slli	a5,a5,0x20
    800082a8:	0207d793          	srli	a5,a5,0x20
    800082ac:	00fd8db3          	add	s11,s11,a5
    800082b0:	000dc683          	lbu	a3,0(s11)
    800082b4:	00800793          	li	a5,8
    800082b8:	00700c93          	li	s9,7
    800082bc:	f8d403a3          	sb	a3,-121(s0)
    800082c0:	00075c63          	bgez	a4,800082d8 <__printf+0x410>
    800082c4:	f9040713          	addi	a4,s0,-112
    800082c8:	00f70733          	add	a4,a4,a5
    800082cc:	02d00693          	li	a3,45
    800082d0:	fed70823          	sb	a3,-16(a4)
    800082d4:	00078c93          	mv	s9,a5
    800082d8:	f8040793          	addi	a5,s0,-128
    800082dc:	01978cb3          	add	s9,a5,s9
    800082e0:	f7f40d13          	addi	s10,s0,-129
    800082e4:	000cc503          	lbu	a0,0(s9)
    800082e8:	fffc8c93          	addi	s9,s9,-1
    800082ec:	00000097          	auipc	ra,0x0
    800082f0:	9f8080e7          	jalr	-1544(ra) # 80007ce4 <consputc>
    800082f4:	ff9d18e3          	bne	s10,s9,800082e4 <__printf+0x41c>
    800082f8:	0100006f          	j	80008308 <__printf+0x440>
    800082fc:	00000097          	auipc	ra,0x0
    80008300:	9e8080e7          	jalr	-1560(ra) # 80007ce4 <consputc>
    80008304:	000c8493          	mv	s1,s9
    80008308:	00094503          	lbu	a0,0(s2)
    8000830c:	c60510e3          	bnez	a0,80007f6c <__printf+0xa4>
    80008310:	e40c0ee3          	beqz	s8,8000816c <__printf+0x2a4>
    80008314:	00006517          	auipc	a0,0x6
    80008318:	c7c50513          	addi	a0,a0,-900 # 8000df90 <pr>
    8000831c:	00001097          	auipc	ra,0x1
    80008320:	94c080e7          	jalr	-1716(ra) # 80008c68 <release>
    80008324:	e49ff06f          	j	8000816c <__printf+0x2a4>
    80008328:	f7843783          	ld	a5,-136(s0)
    8000832c:	03000513          	li	a0,48
    80008330:	01000d13          	li	s10,16
    80008334:	00878713          	addi	a4,a5,8
    80008338:	0007bc83          	ld	s9,0(a5)
    8000833c:	f6e43c23          	sd	a4,-136(s0)
    80008340:	00000097          	auipc	ra,0x0
    80008344:	9a4080e7          	jalr	-1628(ra) # 80007ce4 <consputc>
    80008348:	07800513          	li	a0,120
    8000834c:	00000097          	auipc	ra,0x0
    80008350:	998080e7          	jalr	-1640(ra) # 80007ce4 <consputc>
    80008354:	00002d97          	auipc	s11,0x2
    80008358:	3ecd8d93          	addi	s11,s11,1004 # 8000a740 <digits>
    8000835c:	03ccd793          	srli	a5,s9,0x3c
    80008360:	00fd87b3          	add	a5,s11,a5
    80008364:	0007c503          	lbu	a0,0(a5)
    80008368:	fffd0d1b          	addiw	s10,s10,-1
    8000836c:	004c9c93          	slli	s9,s9,0x4
    80008370:	00000097          	auipc	ra,0x0
    80008374:	974080e7          	jalr	-1676(ra) # 80007ce4 <consputc>
    80008378:	fe0d12e3          	bnez	s10,8000835c <__printf+0x494>
    8000837c:	f8dff06f          	j	80008308 <__printf+0x440>
    80008380:	f7843783          	ld	a5,-136(s0)
    80008384:	0007bc83          	ld	s9,0(a5)
    80008388:	00878793          	addi	a5,a5,8
    8000838c:	f6f43c23          	sd	a5,-136(s0)
    80008390:	000c9a63          	bnez	s9,800083a4 <__printf+0x4dc>
    80008394:	1080006f          	j	8000849c <__printf+0x5d4>
    80008398:	001c8c93          	addi	s9,s9,1
    8000839c:	00000097          	auipc	ra,0x0
    800083a0:	948080e7          	jalr	-1720(ra) # 80007ce4 <consputc>
    800083a4:	000cc503          	lbu	a0,0(s9)
    800083a8:	fe0518e3          	bnez	a0,80008398 <__printf+0x4d0>
    800083ac:	f5dff06f          	j	80008308 <__printf+0x440>
    800083b0:	02500513          	li	a0,37
    800083b4:	00000097          	auipc	ra,0x0
    800083b8:	930080e7          	jalr	-1744(ra) # 80007ce4 <consputc>
    800083bc:	000c8513          	mv	a0,s9
    800083c0:	00000097          	auipc	ra,0x0
    800083c4:	924080e7          	jalr	-1756(ra) # 80007ce4 <consputc>
    800083c8:	f41ff06f          	j	80008308 <__printf+0x440>
    800083cc:	02500513          	li	a0,37
    800083d0:	00000097          	auipc	ra,0x0
    800083d4:	914080e7          	jalr	-1772(ra) # 80007ce4 <consputc>
    800083d8:	f31ff06f          	j	80008308 <__printf+0x440>
    800083dc:	00030513          	mv	a0,t1
    800083e0:	00000097          	auipc	ra,0x0
    800083e4:	7bc080e7          	jalr	1980(ra) # 80008b9c <acquire>
    800083e8:	b4dff06f          	j	80007f34 <__printf+0x6c>
    800083ec:	40c0053b          	negw	a0,a2
    800083f0:	00a00713          	li	a4,10
    800083f4:	02e576bb          	remuw	a3,a0,a4
    800083f8:	00002d97          	auipc	s11,0x2
    800083fc:	348d8d93          	addi	s11,s11,840 # 8000a740 <digits>
    80008400:	ff700593          	li	a1,-9
    80008404:	02069693          	slli	a3,a3,0x20
    80008408:	0206d693          	srli	a3,a3,0x20
    8000840c:	00dd86b3          	add	a3,s11,a3
    80008410:	0006c683          	lbu	a3,0(a3)
    80008414:	02e557bb          	divuw	a5,a0,a4
    80008418:	f8d40023          	sb	a3,-128(s0)
    8000841c:	10b65e63          	bge	a2,a1,80008538 <__printf+0x670>
    80008420:	06300593          	li	a1,99
    80008424:	02e7f6bb          	remuw	a3,a5,a4
    80008428:	02069693          	slli	a3,a3,0x20
    8000842c:	0206d693          	srli	a3,a3,0x20
    80008430:	00dd86b3          	add	a3,s11,a3
    80008434:	0006c683          	lbu	a3,0(a3)
    80008438:	02e7d73b          	divuw	a4,a5,a4
    8000843c:	00200793          	li	a5,2
    80008440:	f8d400a3          	sb	a3,-127(s0)
    80008444:	bca5ece3          	bltu	a1,a0,8000801c <__printf+0x154>
    80008448:	ce5ff06f          	j	8000812c <__printf+0x264>
    8000844c:	40e007bb          	negw	a5,a4
    80008450:	00002d97          	auipc	s11,0x2
    80008454:	2f0d8d93          	addi	s11,s11,752 # 8000a740 <digits>
    80008458:	00f7f693          	andi	a3,a5,15
    8000845c:	00dd86b3          	add	a3,s11,a3
    80008460:	0006c583          	lbu	a1,0(a3)
    80008464:	ff100613          	li	a2,-15
    80008468:	0047d69b          	srliw	a3,a5,0x4
    8000846c:	f8b40023          	sb	a1,-128(s0)
    80008470:	0047d59b          	srliw	a1,a5,0x4
    80008474:	0ac75e63          	bge	a4,a2,80008530 <__printf+0x668>
    80008478:	00f6f693          	andi	a3,a3,15
    8000847c:	00dd86b3          	add	a3,s11,a3
    80008480:	0006c603          	lbu	a2,0(a3)
    80008484:	00f00693          	li	a3,15
    80008488:	0087d79b          	srliw	a5,a5,0x8
    8000848c:	f8c400a3          	sb	a2,-127(s0)
    80008490:	d8b6e4e3          	bltu	a3,a1,80008218 <__printf+0x350>
    80008494:	00200793          	li	a5,2
    80008498:	e2dff06f          	j	800082c4 <__printf+0x3fc>
    8000849c:	00002c97          	auipc	s9,0x2
    800084a0:	284c8c93          	addi	s9,s9,644 # 8000a720 <CONSOLE_STATUS+0x710>
    800084a4:	02800513          	li	a0,40
    800084a8:	ef1ff06f          	j	80008398 <__printf+0x4d0>
    800084ac:	00700793          	li	a5,7
    800084b0:	00600c93          	li	s9,6
    800084b4:	e0dff06f          	j	800082c0 <__printf+0x3f8>
    800084b8:	00700793          	li	a5,7
    800084bc:	00600c93          	li	s9,6
    800084c0:	c69ff06f          	j	80008128 <__printf+0x260>
    800084c4:	00300793          	li	a5,3
    800084c8:	00200c93          	li	s9,2
    800084cc:	c5dff06f          	j	80008128 <__printf+0x260>
    800084d0:	00300793          	li	a5,3
    800084d4:	00200c93          	li	s9,2
    800084d8:	de9ff06f          	j	800082c0 <__printf+0x3f8>
    800084dc:	00400793          	li	a5,4
    800084e0:	00300c93          	li	s9,3
    800084e4:	dddff06f          	j	800082c0 <__printf+0x3f8>
    800084e8:	00400793          	li	a5,4
    800084ec:	00300c93          	li	s9,3
    800084f0:	c39ff06f          	j	80008128 <__printf+0x260>
    800084f4:	00500793          	li	a5,5
    800084f8:	00400c93          	li	s9,4
    800084fc:	c2dff06f          	j	80008128 <__printf+0x260>
    80008500:	00500793          	li	a5,5
    80008504:	00400c93          	li	s9,4
    80008508:	db9ff06f          	j	800082c0 <__printf+0x3f8>
    8000850c:	00600793          	li	a5,6
    80008510:	00500c93          	li	s9,5
    80008514:	dadff06f          	j	800082c0 <__printf+0x3f8>
    80008518:	00600793          	li	a5,6
    8000851c:	00500c93          	li	s9,5
    80008520:	c09ff06f          	j	80008128 <__printf+0x260>
    80008524:	00800793          	li	a5,8
    80008528:	00700c93          	li	s9,7
    8000852c:	bfdff06f          	j	80008128 <__printf+0x260>
    80008530:	00100793          	li	a5,1
    80008534:	d91ff06f          	j	800082c4 <__printf+0x3fc>
    80008538:	00100793          	li	a5,1
    8000853c:	bf1ff06f          	j	8000812c <__printf+0x264>
    80008540:	00900793          	li	a5,9
    80008544:	00800c93          	li	s9,8
    80008548:	be1ff06f          	j	80008128 <__printf+0x260>
    8000854c:	00002517          	auipc	a0,0x2
    80008550:	1dc50513          	addi	a0,a0,476 # 8000a728 <CONSOLE_STATUS+0x718>
    80008554:	00000097          	auipc	ra,0x0
    80008558:	918080e7          	jalr	-1768(ra) # 80007e6c <panic>

000000008000855c <printfinit>:
    8000855c:	fe010113          	addi	sp,sp,-32
    80008560:	00813823          	sd	s0,16(sp)
    80008564:	00913423          	sd	s1,8(sp)
    80008568:	00113c23          	sd	ra,24(sp)
    8000856c:	02010413          	addi	s0,sp,32
    80008570:	00006497          	auipc	s1,0x6
    80008574:	a2048493          	addi	s1,s1,-1504 # 8000df90 <pr>
    80008578:	00048513          	mv	a0,s1
    8000857c:	00002597          	auipc	a1,0x2
    80008580:	1bc58593          	addi	a1,a1,444 # 8000a738 <CONSOLE_STATUS+0x728>
    80008584:	00000097          	auipc	ra,0x0
    80008588:	5f4080e7          	jalr	1524(ra) # 80008b78 <initlock>
    8000858c:	01813083          	ld	ra,24(sp)
    80008590:	01013403          	ld	s0,16(sp)
    80008594:	0004ac23          	sw	zero,24(s1)
    80008598:	00813483          	ld	s1,8(sp)
    8000859c:	02010113          	addi	sp,sp,32
    800085a0:	00008067          	ret

00000000800085a4 <uartinit>:
    800085a4:	ff010113          	addi	sp,sp,-16
    800085a8:	00813423          	sd	s0,8(sp)
    800085ac:	01010413          	addi	s0,sp,16
    800085b0:	100007b7          	lui	a5,0x10000
    800085b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800085b8:	f8000713          	li	a4,-128
    800085bc:	00e781a3          	sb	a4,3(a5)
    800085c0:	00300713          	li	a4,3
    800085c4:	00e78023          	sb	a4,0(a5)
    800085c8:	000780a3          	sb	zero,1(a5)
    800085cc:	00e781a3          	sb	a4,3(a5)
    800085d0:	00700693          	li	a3,7
    800085d4:	00d78123          	sb	a3,2(a5)
    800085d8:	00e780a3          	sb	a4,1(a5)
    800085dc:	00813403          	ld	s0,8(sp)
    800085e0:	01010113          	addi	sp,sp,16
    800085e4:	00008067          	ret

00000000800085e8 <uartputc>:
    800085e8:	00004797          	auipc	a5,0x4
    800085ec:	4607a783          	lw	a5,1120(a5) # 8000ca48 <panicked>
    800085f0:	00078463          	beqz	a5,800085f8 <uartputc+0x10>
    800085f4:	0000006f          	j	800085f4 <uartputc+0xc>
    800085f8:	fd010113          	addi	sp,sp,-48
    800085fc:	02813023          	sd	s0,32(sp)
    80008600:	00913c23          	sd	s1,24(sp)
    80008604:	01213823          	sd	s2,16(sp)
    80008608:	01313423          	sd	s3,8(sp)
    8000860c:	02113423          	sd	ra,40(sp)
    80008610:	03010413          	addi	s0,sp,48
    80008614:	00004917          	auipc	s2,0x4
    80008618:	43c90913          	addi	s2,s2,1084 # 8000ca50 <uart_tx_r>
    8000861c:	00093783          	ld	a5,0(s2)
    80008620:	00004497          	auipc	s1,0x4
    80008624:	43848493          	addi	s1,s1,1080 # 8000ca58 <uart_tx_w>
    80008628:	0004b703          	ld	a4,0(s1)
    8000862c:	02078693          	addi	a3,a5,32
    80008630:	00050993          	mv	s3,a0
    80008634:	02e69c63          	bne	a3,a4,8000866c <uartputc+0x84>
    80008638:	00001097          	auipc	ra,0x1
    8000863c:	834080e7          	jalr	-1996(ra) # 80008e6c <push_on>
    80008640:	00093783          	ld	a5,0(s2)
    80008644:	0004b703          	ld	a4,0(s1)
    80008648:	02078793          	addi	a5,a5,32
    8000864c:	00e79463          	bne	a5,a4,80008654 <uartputc+0x6c>
    80008650:	0000006f          	j	80008650 <uartputc+0x68>
    80008654:	00001097          	auipc	ra,0x1
    80008658:	88c080e7          	jalr	-1908(ra) # 80008ee0 <pop_on>
    8000865c:	00093783          	ld	a5,0(s2)
    80008660:	0004b703          	ld	a4,0(s1)
    80008664:	02078693          	addi	a3,a5,32
    80008668:	fce688e3          	beq	a3,a4,80008638 <uartputc+0x50>
    8000866c:	01f77693          	andi	a3,a4,31
    80008670:	00006597          	auipc	a1,0x6
    80008674:	94058593          	addi	a1,a1,-1728 # 8000dfb0 <uart_tx_buf>
    80008678:	00d586b3          	add	a3,a1,a3
    8000867c:	00170713          	addi	a4,a4,1
    80008680:	01368023          	sb	s3,0(a3)
    80008684:	00e4b023          	sd	a4,0(s1)
    80008688:	10000637          	lui	a2,0x10000
    8000868c:	02f71063          	bne	a4,a5,800086ac <uartputc+0xc4>
    80008690:	0340006f          	j	800086c4 <uartputc+0xdc>
    80008694:	00074703          	lbu	a4,0(a4)
    80008698:	00f93023          	sd	a5,0(s2)
    8000869c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800086a0:	00093783          	ld	a5,0(s2)
    800086a4:	0004b703          	ld	a4,0(s1)
    800086a8:	00f70e63          	beq	a4,a5,800086c4 <uartputc+0xdc>
    800086ac:	00564683          	lbu	a3,5(a2)
    800086b0:	01f7f713          	andi	a4,a5,31
    800086b4:	00e58733          	add	a4,a1,a4
    800086b8:	0206f693          	andi	a3,a3,32
    800086bc:	00178793          	addi	a5,a5,1
    800086c0:	fc069ae3          	bnez	a3,80008694 <uartputc+0xac>
    800086c4:	02813083          	ld	ra,40(sp)
    800086c8:	02013403          	ld	s0,32(sp)
    800086cc:	01813483          	ld	s1,24(sp)
    800086d0:	01013903          	ld	s2,16(sp)
    800086d4:	00813983          	ld	s3,8(sp)
    800086d8:	03010113          	addi	sp,sp,48
    800086dc:	00008067          	ret

00000000800086e0 <uartputc_sync>:
    800086e0:	ff010113          	addi	sp,sp,-16
    800086e4:	00813423          	sd	s0,8(sp)
    800086e8:	01010413          	addi	s0,sp,16
    800086ec:	00004717          	auipc	a4,0x4
    800086f0:	35c72703          	lw	a4,860(a4) # 8000ca48 <panicked>
    800086f4:	02071663          	bnez	a4,80008720 <uartputc_sync+0x40>
    800086f8:	00050793          	mv	a5,a0
    800086fc:	100006b7          	lui	a3,0x10000
    80008700:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008704:	02077713          	andi	a4,a4,32
    80008708:	fe070ce3          	beqz	a4,80008700 <uartputc_sync+0x20>
    8000870c:	0ff7f793          	andi	a5,a5,255
    80008710:	00f68023          	sb	a5,0(a3)
    80008714:	00813403          	ld	s0,8(sp)
    80008718:	01010113          	addi	sp,sp,16
    8000871c:	00008067          	ret
    80008720:	0000006f          	j	80008720 <uartputc_sync+0x40>

0000000080008724 <uartstart>:
    80008724:	ff010113          	addi	sp,sp,-16
    80008728:	00813423          	sd	s0,8(sp)
    8000872c:	01010413          	addi	s0,sp,16
    80008730:	00004617          	auipc	a2,0x4
    80008734:	32060613          	addi	a2,a2,800 # 8000ca50 <uart_tx_r>
    80008738:	00004517          	auipc	a0,0x4
    8000873c:	32050513          	addi	a0,a0,800 # 8000ca58 <uart_tx_w>
    80008740:	00063783          	ld	a5,0(a2)
    80008744:	00053703          	ld	a4,0(a0)
    80008748:	04f70263          	beq	a4,a5,8000878c <uartstart+0x68>
    8000874c:	100005b7          	lui	a1,0x10000
    80008750:	00006817          	auipc	a6,0x6
    80008754:	86080813          	addi	a6,a6,-1952 # 8000dfb0 <uart_tx_buf>
    80008758:	01c0006f          	j	80008774 <uartstart+0x50>
    8000875c:	0006c703          	lbu	a4,0(a3)
    80008760:	00f63023          	sd	a5,0(a2)
    80008764:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008768:	00063783          	ld	a5,0(a2)
    8000876c:	00053703          	ld	a4,0(a0)
    80008770:	00f70e63          	beq	a4,a5,8000878c <uartstart+0x68>
    80008774:	01f7f713          	andi	a4,a5,31
    80008778:	00e806b3          	add	a3,a6,a4
    8000877c:	0055c703          	lbu	a4,5(a1)
    80008780:	00178793          	addi	a5,a5,1
    80008784:	02077713          	andi	a4,a4,32
    80008788:	fc071ae3          	bnez	a4,8000875c <uartstart+0x38>
    8000878c:	00813403          	ld	s0,8(sp)
    80008790:	01010113          	addi	sp,sp,16
    80008794:	00008067          	ret

0000000080008798 <uartgetc>:
    80008798:	ff010113          	addi	sp,sp,-16
    8000879c:	00813423          	sd	s0,8(sp)
    800087a0:	01010413          	addi	s0,sp,16
    800087a4:	10000737          	lui	a4,0x10000
    800087a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800087ac:	0017f793          	andi	a5,a5,1
    800087b0:	00078c63          	beqz	a5,800087c8 <uartgetc+0x30>
    800087b4:	00074503          	lbu	a0,0(a4)
    800087b8:	0ff57513          	andi	a0,a0,255
    800087bc:	00813403          	ld	s0,8(sp)
    800087c0:	01010113          	addi	sp,sp,16
    800087c4:	00008067          	ret
    800087c8:	fff00513          	li	a0,-1
    800087cc:	ff1ff06f          	j	800087bc <uartgetc+0x24>

00000000800087d0 <uartintr>:
    800087d0:	100007b7          	lui	a5,0x10000
    800087d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800087d8:	0017f793          	andi	a5,a5,1
    800087dc:	0a078463          	beqz	a5,80008884 <uartintr+0xb4>
    800087e0:	fe010113          	addi	sp,sp,-32
    800087e4:	00813823          	sd	s0,16(sp)
    800087e8:	00913423          	sd	s1,8(sp)
    800087ec:	00113c23          	sd	ra,24(sp)
    800087f0:	02010413          	addi	s0,sp,32
    800087f4:	100004b7          	lui	s1,0x10000
    800087f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800087fc:	0ff57513          	andi	a0,a0,255
    80008800:	fffff097          	auipc	ra,0xfffff
    80008804:	534080e7          	jalr	1332(ra) # 80007d34 <consoleintr>
    80008808:	0054c783          	lbu	a5,5(s1)
    8000880c:	0017f793          	andi	a5,a5,1
    80008810:	fe0794e3          	bnez	a5,800087f8 <uartintr+0x28>
    80008814:	00004617          	auipc	a2,0x4
    80008818:	23c60613          	addi	a2,a2,572 # 8000ca50 <uart_tx_r>
    8000881c:	00004517          	auipc	a0,0x4
    80008820:	23c50513          	addi	a0,a0,572 # 8000ca58 <uart_tx_w>
    80008824:	00063783          	ld	a5,0(a2)
    80008828:	00053703          	ld	a4,0(a0)
    8000882c:	04f70263          	beq	a4,a5,80008870 <uartintr+0xa0>
    80008830:	100005b7          	lui	a1,0x10000
    80008834:	00005817          	auipc	a6,0x5
    80008838:	77c80813          	addi	a6,a6,1916 # 8000dfb0 <uart_tx_buf>
    8000883c:	01c0006f          	j	80008858 <uartintr+0x88>
    80008840:	0006c703          	lbu	a4,0(a3)
    80008844:	00f63023          	sd	a5,0(a2)
    80008848:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000884c:	00063783          	ld	a5,0(a2)
    80008850:	00053703          	ld	a4,0(a0)
    80008854:	00f70e63          	beq	a4,a5,80008870 <uartintr+0xa0>
    80008858:	01f7f713          	andi	a4,a5,31
    8000885c:	00e806b3          	add	a3,a6,a4
    80008860:	0055c703          	lbu	a4,5(a1)
    80008864:	00178793          	addi	a5,a5,1
    80008868:	02077713          	andi	a4,a4,32
    8000886c:	fc071ae3          	bnez	a4,80008840 <uartintr+0x70>
    80008870:	01813083          	ld	ra,24(sp)
    80008874:	01013403          	ld	s0,16(sp)
    80008878:	00813483          	ld	s1,8(sp)
    8000887c:	02010113          	addi	sp,sp,32
    80008880:	00008067          	ret
    80008884:	00004617          	auipc	a2,0x4
    80008888:	1cc60613          	addi	a2,a2,460 # 8000ca50 <uart_tx_r>
    8000888c:	00004517          	auipc	a0,0x4
    80008890:	1cc50513          	addi	a0,a0,460 # 8000ca58 <uart_tx_w>
    80008894:	00063783          	ld	a5,0(a2)
    80008898:	00053703          	ld	a4,0(a0)
    8000889c:	04f70263          	beq	a4,a5,800088e0 <uartintr+0x110>
    800088a0:	100005b7          	lui	a1,0x10000
    800088a4:	00005817          	auipc	a6,0x5
    800088a8:	70c80813          	addi	a6,a6,1804 # 8000dfb0 <uart_tx_buf>
    800088ac:	01c0006f          	j	800088c8 <uartintr+0xf8>
    800088b0:	0006c703          	lbu	a4,0(a3)
    800088b4:	00f63023          	sd	a5,0(a2)
    800088b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800088bc:	00063783          	ld	a5,0(a2)
    800088c0:	00053703          	ld	a4,0(a0)
    800088c4:	02f70063          	beq	a4,a5,800088e4 <uartintr+0x114>
    800088c8:	01f7f713          	andi	a4,a5,31
    800088cc:	00e806b3          	add	a3,a6,a4
    800088d0:	0055c703          	lbu	a4,5(a1)
    800088d4:	00178793          	addi	a5,a5,1
    800088d8:	02077713          	andi	a4,a4,32
    800088dc:	fc071ae3          	bnez	a4,800088b0 <uartintr+0xe0>
    800088e0:	00008067          	ret
    800088e4:	00008067          	ret

00000000800088e8 <kinit>:
    800088e8:	fc010113          	addi	sp,sp,-64
    800088ec:	02913423          	sd	s1,40(sp)
    800088f0:	fffff7b7          	lui	a5,0xfffff
    800088f4:	00006497          	auipc	s1,0x6
    800088f8:	6db48493          	addi	s1,s1,1755 # 8000efcf <end+0xfff>
    800088fc:	02813823          	sd	s0,48(sp)
    80008900:	01313c23          	sd	s3,24(sp)
    80008904:	00f4f4b3          	and	s1,s1,a5
    80008908:	02113c23          	sd	ra,56(sp)
    8000890c:	03213023          	sd	s2,32(sp)
    80008910:	01413823          	sd	s4,16(sp)
    80008914:	01513423          	sd	s5,8(sp)
    80008918:	04010413          	addi	s0,sp,64
    8000891c:	000017b7          	lui	a5,0x1
    80008920:	01100993          	li	s3,17
    80008924:	00f487b3          	add	a5,s1,a5
    80008928:	01b99993          	slli	s3,s3,0x1b
    8000892c:	06f9e063          	bltu	s3,a5,8000898c <kinit+0xa4>
    80008930:	00005a97          	auipc	s5,0x5
    80008934:	6a0a8a93          	addi	s5,s5,1696 # 8000dfd0 <end>
    80008938:	0754ec63          	bltu	s1,s5,800089b0 <kinit+0xc8>
    8000893c:	0734fa63          	bgeu	s1,s3,800089b0 <kinit+0xc8>
    80008940:	00088a37          	lui	s4,0x88
    80008944:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008948:	00004917          	auipc	s2,0x4
    8000894c:	11890913          	addi	s2,s2,280 # 8000ca60 <kmem>
    80008950:	00ca1a13          	slli	s4,s4,0xc
    80008954:	0140006f          	j	80008968 <kinit+0x80>
    80008958:	000017b7          	lui	a5,0x1
    8000895c:	00f484b3          	add	s1,s1,a5
    80008960:	0554e863          	bltu	s1,s5,800089b0 <kinit+0xc8>
    80008964:	0534f663          	bgeu	s1,s3,800089b0 <kinit+0xc8>
    80008968:	00001637          	lui	a2,0x1
    8000896c:	00100593          	li	a1,1
    80008970:	00048513          	mv	a0,s1
    80008974:	00000097          	auipc	ra,0x0
    80008978:	5e4080e7          	jalr	1508(ra) # 80008f58 <__memset>
    8000897c:	00093783          	ld	a5,0(s2)
    80008980:	00f4b023          	sd	a5,0(s1)
    80008984:	00993023          	sd	s1,0(s2)
    80008988:	fd4498e3          	bne	s1,s4,80008958 <kinit+0x70>
    8000898c:	03813083          	ld	ra,56(sp)
    80008990:	03013403          	ld	s0,48(sp)
    80008994:	02813483          	ld	s1,40(sp)
    80008998:	02013903          	ld	s2,32(sp)
    8000899c:	01813983          	ld	s3,24(sp)
    800089a0:	01013a03          	ld	s4,16(sp)
    800089a4:	00813a83          	ld	s5,8(sp)
    800089a8:	04010113          	addi	sp,sp,64
    800089ac:	00008067          	ret
    800089b0:	00002517          	auipc	a0,0x2
    800089b4:	da850513          	addi	a0,a0,-600 # 8000a758 <digits+0x18>
    800089b8:	fffff097          	auipc	ra,0xfffff
    800089bc:	4b4080e7          	jalr	1204(ra) # 80007e6c <panic>

00000000800089c0 <freerange>:
    800089c0:	fc010113          	addi	sp,sp,-64
    800089c4:	000017b7          	lui	a5,0x1
    800089c8:	02913423          	sd	s1,40(sp)
    800089cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800089d0:	009504b3          	add	s1,a0,s1
    800089d4:	fffff537          	lui	a0,0xfffff
    800089d8:	02813823          	sd	s0,48(sp)
    800089dc:	02113c23          	sd	ra,56(sp)
    800089e0:	03213023          	sd	s2,32(sp)
    800089e4:	01313c23          	sd	s3,24(sp)
    800089e8:	01413823          	sd	s4,16(sp)
    800089ec:	01513423          	sd	s5,8(sp)
    800089f0:	01613023          	sd	s6,0(sp)
    800089f4:	04010413          	addi	s0,sp,64
    800089f8:	00a4f4b3          	and	s1,s1,a0
    800089fc:	00f487b3          	add	a5,s1,a5
    80008a00:	06f5e463          	bltu	a1,a5,80008a68 <freerange+0xa8>
    80008a04:	00005a97          	auipc	s5,0x5
    80008a08:	5cca8a93          	addi	s5,s5,1484 # 8000dfd0 <end>
    80008a0c:	0954e263          	bltu	s1,s5,80008a90 <freerange+0xd0>
    80008a10:	01100993          	li	s3,17
    80008a14:	01b99993          	slli	s3,s3,0x1b
    80008a18:	0734fc63          	bgeu	s1,s3,80008a90 <freerange+0xd0>
    80008a1c:	00058a13          	mv	s4,a1
    80008a20:	00004917          	auipc	s2,0x4
    80008a24:	04090913          	addi	s2,s2,64 # 8000ca60 <kmem>
    80008a28:	00002b37          	lui	s6,0x2
    80008a2c:	0140006f          	j	80008a40 <freerange+0x80>
    80008a30:	000017b7          	lui	a5,0x1
    80008a34:	00f484b3          	add	s1,s1,a5
    80008a38:	0554ec63          	bltu	s1,s5,80008a90 <freerange+0xd0>
    80008a3c:	0534fa63          	bgeu	s1,s3,80008a90 <freerange+0xd0>
    80008a40:	00001637          	lui	a2,0x1
    80008a44:	00100593          	li	a1,1
    80008a48:	00048513          	mv	a0,s1
    80008a4c:	00000097          	auipc	ra,0x0
    80008a50:	50c080e7          	jalr	1292(ra) # 80008f58 <__memset>
    80008a54:	00093703          	ld	a4,0(s2)
    80008a58:	016487b3          	add	a5,s1,s6
    80008a5c:	00e4b023          	sd	a4,0(s1)
    80008a60:	00993023          	sd	s1,0(s2)
    80008a64:	fcfa76e3          	bgeu	s4,a5,80008a30 <freerange+0x70>
    80008a68:	03813083          	ld	ra,56(sp)
    80008a6c:	03013403          	ld	s0,48(sp)
    80008a70:	02813483          	ld	s1,40(sp)
    80008a74:	02013903          	ld	s2,32(sp)
    80008a78:	01813983          	ld	s3,24(sp)
    80008a7c:	01013a03          	ld	s4,16(sp)
    80008a80:	00813a83          	ld	s5,8(sp)
    80008a84:	00013b03          	ld	s6,0(sp)
    80008a88:	04010113          	addi	sp,sp,64
    80008a8c:	00008067          	ret
    80008a90:	00002517          	auipc	a0,0x2
    80008a94:	cc850513          	addi	a0,a0,-824 # 8000a758 <digits+0x18>
    80008a98:	fffff097          	auipc	ra,0xfffff
    80008a9c:	3d4080e7          	jalr	980(ra) # 80007e6c <panic>

0000000080008aa0 <kfree>:
    80008aa0:	fe010113          	addi	sp,sp,-32
    80008aa4:	00813823          	sd	s0,16(sp)
    80008aa8:	00113c23          	sd	ra,24(sp)
    80008aac:	00913423          	sd	s1,8(sp)
    80008ab0:	02010413          	addi	s0,sp,32
    80008ab4:	03451793          	slli	a5,a0,0x34
    80008ab8:	04079c63          	bnez	a5,80008b10 <kfree+0x70>
    80008abc:	00005797          	auipc	a5,0x5
    80008ac0:	51478793          	addi	a5,a5,1300 # 8000dfd0 <end>
    80008ac4:	00050493          	mv	s1,a0
    80008ac8:	04f56463          	bltu	a0,a5,80008b10 <kfree+0x70>
    80008acc:	01100793          	li	a5,17
    80008ad0:	01b79793          	slli	a5,a5,0x1b
    80008ad4:	02f57e63          	bgeu	a0,a5,80008b10 <kfree+0x70>
    80008ad8:	00001637          	lui	a2,0x1
    80008adc:	00100593          	li	a1,1
    80008ae0:	00000097          	auipc	ra,0x0
    80008ae4:	478080e7          	jalr	1144(ra) # 80008f58 <__memset>
    80008ae8:	00004797          	auipc	a5,0x4
    80008aec:	f7878793          	addi	a5,a5,-136 # 8000ca60 <kmem>
    80008af0:	0007b703          	ld	a4,0(a5)
    80008af4:	01813083          	ld	ra,24(sp)
    80008af8:	01013403          	ld	s0,16(sp)
    80008afc:	00e4b023          	sd	a4,0(s1)
    80008b00:	0097b023          	sd	s1,0(a5)
    80008b04:	00813483          	ld	s1,8(sp)
    80008b08:	02010113          	addi	sp,sp,32
    80008b0c:	00008067          	ret
    80008b10:	00002517          	auipc	a0,0x2
    80008b14:	c4850513          	addi	a0,a0,-952 # 8000a758 <digits+0x18>
    80008b18:	fffff097          	auipc	ra,0xfffff
    80008b1c:	354080e7          	jalr	852(ra) # 80007e6c <panic>

0000000080008b20 <kalloc>:
    80008b20:	fe010113          	addi	sp,sp,-32
    80008b24:	00813823          	sd	s0,16(sp)
    80008b28:	00913423          	sd	s1,8(sp)
    80008b2c:	00113c23          	sd	ra,24(sp)
    80008b30:	02010413          	addi	s0,sp,32
    80008b34:	00004797          	auipc	a5,0x4
    80008b38:	f2c78793          	addi	a5,a5,-212 # 8000ca60 <kmem>
    80008b3c:	0007b483          	ld	s1,0(a5)
    80008b40:	02048063          	beqz	s1,80008b60 <kalloc+0x40>
    80008b44:	0004b703          	ld	a4,0(s1)
    80008b48:	00001637          	lui	a2,0x1
    80008b4c:	00500593          	li	a1,5
    80008b50:	00048513          	mv	a0,s1
    80008b54:	00e7b023          	sd	a4,0(a5)
    80008b58:	00000097          	auipc	ra,0x0
    80008b5c:	400080e7          	jalr	1024(ra) # 80008f58 <__memset>
    80008b60:	01813083          	ld	ra,24(sp)
    80008b64:	01013403          	ld	s0,16(sp)
    80008b68:	00048513          	mv	a0,s1
    80008b6c:	00813483          	ld	s1,8(sp)
    80008b70:	02010113          	addi	sp,sp,32
    80008b74:	00008067          	ret

0000000080008b78 <initlock>:
    80008b78:	ff010113          	addi	sp,sp,-16
    80008b7c:	00813423          	sd	s0,8(sp)
    80008b80:	01010413          	addi	s0,sp,16
    80008b84:	00813403          	ld	s0,8(sp)
    80008b88:	00b53423          	sd	a1,8(a0)
    80008b8c:	00052023          	sw	zero,0(a0)
    80008b90:	00053823          	sd	zero,16(a0)
    80008b94:	01010113          	addi	sp,sp,16
    80008b98:	00008067          	ret

0000000080008b9c <acquire>:
    80008b9c:	fe010113          	addi	sp,sp,-32
    80008ba0:	00813823          	sd	s0,16(sp)
    80008ba4:	00913423          	sd	s1,8(sp)
    80008ba8:	00113c23          	sd	ra,24(sp)
    80008bac:	01213023          	sd	s2,0(sp)
    80008bb0:	02010413          	addi	s0,sp,32
    80008bb4:	00050493          	mv	s1,a0
    80008bb8:	10002973          	csrr	s2,sstatus
    80008bbc:	100027f3          	csrr	a5,sstatus
    80008bc0:	ffd7f793          	andi	a5,a5,-3
    80008bc4:	10079073          	csrw	sstatus,a5
    80008bc8:	fffff097          	auipc	ra,0xfffff
    80008bcc:	8e0080e7          	jalr	-1824(ra) # 800074a8 <mycpu>
    80008bd0:	07852783          	lw	a5,120(a0)
    80008bd4:	06078e63          	beqz	a5,80008c50 <acquire+0xb4>
    80008bd8:	fffff097          	auipc	ra,0xfffff
    80008bdc:	8d0080e7          	jalr	-1840(ra) # 800074a8 <mycpu>
    80008be0:	07852783          	lw	a5,120(a0)
    80008be4:	0004a703          	lw	a4,0(s1)
    80008be8:	0017879b          	addiw	a5,a5,1
    80008bec:	06f52c23          	sw	a5,120(a0)
    80008bf0:	04071063          	bnez	a4,80008c30 <acquire+0x94>
    80008bf4:	00100713          	li	a4,1
    80008bf8:	00070793          	mv	a5,a4
    80008bfc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008c00:	0007879b          	sext.w	a5,a5
    80008c04:	fe079ae3          	bnez	a5,80008bf8 <acquire+0x5c>
    80008c08:	0ff0000f          	fence
    80008c0c:	fffff097          	auipc	ra,0xfffff
    80008c10:	89c080e7          	jalr	-1892(ra) # 800074a8 <mycpu>
    80008c14:	01813083          	ld	ra,24(sp)
    80008c18:	01013403          	ld	s0,16(sp)
    80008c1c:	00a4b823          	sd	a0,16(s1)
    80008c20:	00013903          	ld	s2,0(sp)
    80008c24:	00813483          	ld	s1,8(sp)
    80008c28:	02010113          	addi	sp,sp,32
    80008c2c:	00008067          	ret
    80008c30:	0104b903          	ld	s2,16(s1)
    80008c34:	fffff097          	auipc	ra,0xfffff
    80008c38:	874080e7          	jalr	-1932(ra) # 800074a8 <mycpu>
    80008c3c:	faa91ce3          	bne	s2,a0,80008bf4 <acquire+0x58>
    80008c40:	00002517          	auipc	a0,0x2
    80008c44:	b2050513          	addi	a0,a0,-1248 # 8000a760 <digits+0x20>
    80008c48:	fffff097          	auipc	ra,0xfffff
    80008c4c:	224080e7          	jalr	548(ra) # 80007e6c <panic>
    80008c50:	00195913          	srli	s2,s2,0x1
    80008c54:	fffff097          	auipc	ra,0xfffff
    80008c58:	854080e7          	jalr	-1964(ra) # 800074a8 <mycpu>
    80008c5c:	00197913          	andi	s2,s2,1
    80008c60:	07252e23          	sw	s2,124(a0)
    80008c64:	f75ff06f          	j	80008bd8 <acquire+0x3c>

0000000080008c68 <release>:
    80008c68:	fe010113          	addi	sp,sp,-32
    80008c6c:	00813823          	sd	s0,16(sp)
    80008c70:	00113c23          	sd	ra,24(sp)
    80008c74:	00913423          	sd	s1,8(sp)
    80008c78:	01213023          	sd	s2,0(sp)
    80008c7c:	02010413          	addi	s0,sp,32
    80008c80:	00052783          	lw	a5,0(a0)
    80008c84:	00079a63          	bnez	a5,80008c98 <release+0x30>
    80008c88:	00002517          	auipc	a0,0x2
    80008c8c:	ae050513          	addi	a0,a0,-1312 # 8000a768 <digits+0x28>
    80008c90:	fffff097          	auipc	ra,0xfffff
    80008c94:	1dc080e7          	jalr	476(ra) # 80007e6c <panic>
    80008c98:	01053903          	ld	s2,16(a0)
    80008c9c:	00050493          	mv	s1,a0
    80008ca0:	fffff097          	auipc	ra,0xfffff
    80008ca4:	808080e7          	jalr	-2040(ra) # 800074a8 <mycpu>
    80008ca8:	fea910e3          	bne	s2,a0,80008c88 <release+0x20>
    80008cac:	0004b823          	sd	zero,16(s1)
    80008cb0:	0ff0000f          	fence
    80008cb4:	0f50000f          	fence	iorw,ow
    80008cb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008cbc:	ffffe097          	auipc	ra,0xffffe
    80008cc0:	7ec080e7          	jalr	2028(ra) # 800074a8 <mycpu>
    80008cc4:	100027f3          	csrr	a5,sstatus
    80008cc8:	0027f793          	andi	a5,a5,2
    80008ccc:	04079a63          	bnez	a5,80008d20 <release+0xb8>
    80008cd0:	07852783          	lw	a5,120(a0)
    80008cd4:	02f05e63          	blez	a5,80008d10 <release+0xa8>
    80008cd8:	fff7871b          	addiw	a4,a5,-1
    80008cdc:	06e52c23          	sw	a4,120(a0)
    80008ce0:	00071c63          	bnez	a4,80008cf8 <release+0x90>
    80008ce4:	07c52783          	lw	a5,124(a0)
    80008ce8:	00078863          	beqz	a5,80008cf8 <release+0x90>
    80008cec:	100027f3          	csrr	a5,sstatus
    80008cf0:	0027e793          	ori	a5,a5,2
    80008cf4:	10079073          	csrw	sstatus,a5
    80008cf8:	01813083          	ld	ra,24(sp)
    80008cfc:	01013403          	ld	s0,16(sp)
    80008d00:	00813483          	ld	s1,8(sp)
    80008d04:	00013903          	ld	s2,0(sp)
    80008d08:	02010113          	addi	sp,sp,32
    80008d0c:	00008067          	ret
    80008d10:	00002517          	auipc	a0,0x2
    80008d14:	a7850513          	addi	a0,a0,-1416 # 8000a788 <digits+0x48>
    80008d18:	fffff097          	auipc	ra,0xfffff
    80008d1c:	154080e7          	jalr	340(ra) # 80007e6c <panic>
    80008d20:	00002517          	auipc	a0,0x2
    80008d24:	a5050513          	addi	a0,a0,-1456 # 8000a770 <digits+0x30>
    80008d28:	fffff097          	auipc	ra,0xfffff
    80008d2c:	144080e7          	jalr	324(ra) # 80007e6c <panic>

0000000080008d30 <holding>:
    80008d30:	00052783          	lw	a5,0(a0)
    80008d34:	00079663          	bnez	a5,80008d40 <holding+0x10>
    80008d38:	00000513          	li	a0,0
    80008d3c:	00008067          	ret
    80008d40:	fe010113          	addi	sp,sp,-32
    80008d44:	00813823          	sd	s0,16(sp)
    80008d48:	00913423          	sd	s1,8(sp)
    80008d4c:	00113c23          	sd	ra,24(sp)
    80008d50:	02010413          	addi	s0,sp,32
    80008d54:	01053483          	ld	s1,16(a0)
    80008d58:	ffffe097          	auipc	ra,0xffffe
    80008d5c:	750080e7          	jalr	1872(ra) # 800074a8 <mycpu>
    80008d60:	01813083          	ld	ra,24(sp)
    80008d64:	01013403          	ld	s0,16(sp)
    80008d68:	40a48533          	sub	a0,s1,a0
    80008d6c:	00153513          	seqz	a0,a0
    80008d70:	00813483          	ld	s1,8(sp)
    80008d74:	02010113          	addi	sp,sp,32
    80008d78:	00008067          	ret

0000000080008d7c <push_off>:
    80008d7c:	fe010113          	addi	sp,sp,-32
    80008d80:	00813823          	sd	s0,16(sp)
    80008d84:	00113c23          	sd	ra,24(sp)
    80008d88:	00913423          	sd	s1,8(sp)
    80008d8c:	02010413          	addi	s0,sp,32
    80008d90:	100024f3          	csrr	s1,sstatus
    80008d94:	100027f3          	csrr	a5,sstatus
    80008d98:	ffd7f793          	andi	a5,a5,-3
    80008d9c:	10079073          	csrw	sstatus,a5
    80008da0:	ffffe097          	auipc	ra,0xffffe
    80008da4:	708080e7          	jalr	1800(ra) # 800074a8 <mycpu>
    80008da8:	07852783          	lw	a5,120(a0)
    80008dac:	02078663          	beqz	a5,80008dd8 <push_off+0x5c>
    80008db0:	ffffe097          	auipc	ra,0xffffe
    80008db4:	6f8080e7          	jalr	1784(ra) # 800074a8 <mycpu>
    80008db8:	07852783          	lw	a5,120(a0)
    80008dbc:	01813083          	ld	ra,24(sp)
    80008dc0:	01013403          	ld	s0,16(sp)
    80008dc4:	0017879b          	addiw	a5,a5,1
    80008dc8:	06f52c23          	sw	a5,120(a0)
    80008dcc:	00813483          	ld	s1,8(sp)
    80008dd0:	02010113          	addi	sp,sp,32
    80008dd4:	00008067          	ret
    80008dd8:	0014d493          	srli	s1,s1,0x1
    80008ddc:	ffffe097          	auipc	ra,0xffffe
    80008de0:	6cc080e7          	jalr	1740(ra) # 800074a8 <mycpu>
    80008de4:	0014f493          	andi	s1,s1,1
    80008de8:	06952e23          	sw	s1,124(a0)
    80008dec:	fc5ff06f          	j	80008db0 <push_off+0x34>

0000000080008df0 <pop_off>:
    80008df0:	ff010113          	addi	sp,sp,-16
    80008df4:	00813023          	sd	s0,0(sp)
    80008df8:	00113423          	sd	ra,8(sp)
    80008dfc:	01010413          	addi	s0,sp,16
    80008e00:	ffffe097          	auipc	ra,0xffffe
    80008e04:	6a8080e7          	jalr	1704(ra) # 800074a8 <mycpu>
    80008e08:	100027f3          	csrr	a5,sstatus
    80008e0c:	0027f793          	andi	a5,a5,2
    80008e10:	04079663          	bnez	a5,80008e5c <pop_off+0x6c>
    80008e14:	07852783          	lw	a5,120(a0)
    80008e18:	02f05a63          	blez	a5,80008e4c <pop_off+0x5c>
    80008e1c:	fff7871b          	addiw	a4,a5,-1
    80008e20:	06e52c23          	sw	a4,120(a0)
    80008e24:	00071c63          	bnez	a4,80008e3c <pop_off+0x4c>
    80008e28:	07c52783          	lw	a5,124(a0)
    80008e2c:	00078863          	beqz	a5,80008e3c <pop_off+0x4c>
    80008e30:	100027f3          	csrr	a5,sstatus
    80008e34:	0027e793          	ori	a5,a5,2
    80008e38:	10079073          	csrw	sstatus,a5
    80008e3c:	00813083          	ld	ra,8(sp)
    80008e40:	00013403          	ld	s0,0(sp)
    80008e44:	01010113          	addi	sp,sp,16
    80008e48:	00008067          	ret
    80008e4c:	00002517          	auipc	a0,0x2
    80008e50:	93c50513          	addi	a0,a0,-1732 # 8000a788 <digits+0x48>
    80008e54:	fffff097          	auipc	ra,0xfffff
    80008e58:	018080e7          	jalr	24(ra) # 80007e6c <panic>
    80008e5c:	00002517          	auipc	a0,0x2
    80008e60:	91450513          	addi	a0,a0,-1772 # 8000a770 <digits+0x30>
    80008e64:	fffff097          	auipc	ra,0xfffff
    80008e68:	008080e7          	jalr	8(ra) # 80007e6c <panic>

0000000080008e6c <push_on>:
    80008e6c:	fe010113          	addi	sp,sp,-32
    80008e70:	00813823          	sd	s0,16(sp)
    80008e74:	00113c23          	sd	ra,24(sp)
    80008e78:	00913423          	sd	s1,8(sp)
    80008e7c:	02010413          	addi	s0,sp,32
    80008e80:	100024f3          	csrr	s1,sstatus
    80008e84:	100027f3          	csrr	a5,sstatus
    80008e88:	0027e793          	ori	a5,a5,2
    80008e8c:	10079073          	csrw	sstatus,a5
    80008e90:	ffffe097          	auipc	ra,0xffffe
    80008e94:	618080e7          	jalr	1560(ra) # 800074a8 <mycpu>
    80008e98:	07852783          	lw	a5,120(a0)
    80008e9c:	02078663          	beqz	a5,80008ec8 <push_on+0x5c>
    80008ea0:	ffffe097          	auipc	ra,0xffffe
    80008ea4:	608080e7          	jalr	1544(ra) # 800074a8 <mycpu>
    80008ea8:	07852783          	lw	a5,120(a0)
    80008eac:	01813083          	ld	ra,24(sp)
    80008eb0:	01013403          	ld	s0,16(sp)
    80008eb4:	0017879b          	addiw	a5,a5,1
    80008eb8:	06f52c23          	sw	a5,120(a0)
    80008ebc:	00813483          	ld	s1,8(sp)
    80008ec0:	02010113          	addi	sp,sp,32
    80008ec4:	00008067          	ret
    80008ec8:	0014d493          	srli	s1,s1,0x1
    80008ecc:	ffffe097          	auipc	ra,0xffffe
    80008ed0:	5dc080e7          	jalr	1500(ra) # 800074a8 <mycpu>
    80008ed4:	0014f493          	andi	s1,s1,1
    80008ed8:	06952e23          	sw	s1,124(a0)
    80008edc:	fc5ff06f          	j	80008ea0 <push_on+0x34>

0000000080008ee0 <pop_on>:
    80008ee0:	ff010113          	addi	sp,sp,-16
    80008ee4:	00813023          	sd	s0,0(sp)
    80008ee8:	00113423          	sd	ra,8(sp)
    80008eec:	01010413          	addi	s0,sp,16
    80008ef0:	ffffe097          	auipc	ra,0xffffe
    80008ef4:	5b8080e7          	jalr	1464(ra) # 800074a8 <mycpu>
    80008ef8:	100027f3          	csrr	a5,sstatus
    80008efc:	0027f793          	andi	a5,a5,2
    80008f00:	04078463          	beqz	a5,80008f48 <pop_on+0x68>
    80008f04:	07852783          	lw	a5,120(a0)
    80008f08:	02f05863          	blez	a5,80008f38 <pop_on+0x58>
    80008f0c:	fff7879b          	addiw	a5,a5,-1
    80008f10:	06f52c23          	sw	a5,120(a0)
    80008f14:	07853783          	ld	a5,120(a0)
    80008f18:	00079863          	bnez	a5,80008f28 <pop_on+0x48>
    80008f1c:	100027f3          	csrr	a5,sstatus
    80008f20:	ffd7f793          	andi	a5,a5,-3
    80008f24:	10079073          	csrw	sstatus,a5
    80008f28:	00813083          	ld	ra,8(sp)
    80008f2c:	00013403          	ld	s0,0(sp)
    80008f30:	01010113          	addi	sp,sp,16
    80008f34:	00008067          	ret
    80008f38:	00002517          	auipc	a0,0x2
    80008f3c:	87850513          	addi	a0,a0,-1928 # 8000a7b0 <digits+0x70>
    80008f40:	fffff097          	auipc	ra,0xfffff
    80008f44:	f2c080e7          	jalr	-212(ra) # 80007e6c <panic>
    80008f48:	00002517          	auipc	a0,0x2
    80008f4c:	84850513          	addi	a0,a0,-1976 # 8000a790 <digits+0x50>
    80008f50:	fffff097          	auipc	ra,0xfffff
    80008f54:	f1c080e7          	jalr	-228(ra) # 80007e6c <panic>

0000000080008f58 <__memset>:
    80008f58:	ff010113          	addi	sp,sp,-16
    80008f5c:	00813423          	sd	s0,8(sp)
    80008f60:	01010413          	addi	s0,sp,16
    80008f64:	1a060e63          	beqz	a2,80009120 <__memset+0x1c8>
    80008f68:	40a007b3          	neg	a5,a0
    80008f6c:	0077f793          	andi	a5,a5,7
    80008f70:	00778693          	addi	a3,a5,7
    80008f74:	00b00813          	li	a6,11
    80008f78:	0ff5f593          	andi	a1,a1,255
    80008f7c:	fff6071b          	addiw	a4,a2,-1
    80008f80:	1b06e663          	bltu	a3,a6,8000912c <__memset+0x1d4>
    80008f84:	1cd76463          	bltu	a4,a3,8000914c <__memset+0x1f4>
    80008f88:	1a078e63          	beqz	a5,80009144 <__memset+0x1ec>
    80008f8c:	00b50023          	sb	a1,0(a0)
    80008f90:	00100713          	li	a4,1
    80008f94:	1ae78463          	beq	a5,a4,8000913c <__memset+0x1e4>
    80008f98:	00b500a3          	sb	a1,1(a0)
    80008f9c:	00200713          	li	a4,2
    80008fa0:	1ae78a63          	beq	a5,a4,80009154 <__memset+0x1fc>
    80008fa4:	00b50123          	sb	a1,2(a0)
    80008fa8:	00300713          	li	a4,3
    80008fac:	18e78463          	beq	a5,a4,80009134 <__memset+0x1dc>
    80008fb0:	00b501a3          	sb	a1,3(a0)
    80008fb4:	00400713          	li	a4,4
    80008fb8:	1ae78263          	beq	a5,a4,8000915c <__memset+0x204>
    80008fbc:	00b50223          	sb	a1,4(a0)
    80008fc0:	00500713          	li	a4,5
    80008fc4:	1ae78063          	beq	a5,a4,80009164 <__memset+0x20c>
    80008fc8:	00b502a3          	sb	a1,5(a0)
    80008fcc:	00700713          	li	a4,7
    80008fd0:	18e79e63          	bne	a5,a4,8000916c <__memset+0x214>
    80008fd4:	00b50323          	sb	a1,6(a0)
    80008fd8:	00700e93          	li	t4,7
    80008fdc:	00859713          	slli	a4,a1,0x8
    80008fe0:	00e5e733          	or	a4,a1,a4
    80008fe4:	01059e13          	slli	t3,a1,0x10
    80008fe8:	01c76e33          	or	t3,a4,t3
    80008fec:	01859313          	slli	t1,a1,0x18
    80008ff0:	006e6333          	or	t1,t3,t1
    80008ff4:	02059893          	slli	a7,a1,0x20
    80008ff8:	40f60e3b          	subw	t3,a2,a5
    80008ffc:	011368b3          	or	a7,t1,a7
    80009000:	02859813          	slli	a6,a1,0x28
    80009004:	0108e833          	or	a6,a7,a6
    80009008:	03059693          	slli	a3,a1,0x30
    8000900c:	003e589b          	srliw	a7,t3,0x3
    80009010:	00d866b3          	or	a3,a6,a3
    80009014:	03859713          	slli	a4,a1,0x38
    80009018:	00389813          	slli	a6,a7,0x3
    8000901c:	00f507b3          	add	a5,a0,a5
    80009020:	00e6e733          	or	a4,a3,a4
    80009024:	000e089b          	sext.w	a7,t3
    80009028:	00f806b3          	add	a3,a6,a5
    8000902c:	00e7b023          	sd	a4,0(a5)
    80009030:	00878793          	addi	a5,a5,8
    80009034:	fed79ce3          	bne	a5,a3,8000902c <__memset+0xd4>
    80009038:	ff8e7793          	andi	a5,t3,-8
    8000903c:	0007871b          	sext.w	a4,a5
    80009040:	01d787bb          	addw	a5,a5,t4
    80009044:	0ce88e63          	beq	a7,a4,80009120 <__memset+0x1c8>
    80009048:	00f50733          	add	a4,a0,a5
    8000904c:	00b70023          	sb	a1,0(a4)
    80009050:	0017871b          	addiw	a4,a5,1
    80009054:	0cc77663          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    80009058:	00e50733          	add	a4,a0,a4
    8000905c:	00b70023          	sb	a1,0(a4)
    80009060:	0027871b          	addiw	a4,a5,2
    80009064:	0ac77e63          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    80009068:	00e50733          	add	a4,a0,a4
    8000906c:	00b70023          	sb	a1,0(a4)
    80009070:	0037871b          	addiw	a4,a5,3
    80009074:	0ac77663          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    80009078:	00e50733          	add	a4,a0,a4
    8000907c:	00b70023          	sb	a1,0(a4)
    80009080:	0047871b          	addiw	a4,a5,4
    80009084:	08c77e63          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    80009088:	00e50733          	add	a4,a0,a4
    8000908c:	00b70023          	sb	a1,0(a4)
    80009090:	0057871b          	addiw	a4,a5,5
    80009094:	08c77663          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    80009098:	00e50733          	add	a4,a0,a4
    8000909c:	00b70023          	sb	a1,0(a4)
    800090a0:	0067871b          	addiw	a4,a5,6
    800090a4:	06c77e63          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    800090a8:	00e50733          	add	a4,a0,a4
    800090ac:	00b70023          	sb	a1,0(a4)
    800090b0:	0077871b          	addiw	a4,a5,7
    800090b4:	06c77663          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    800090b8:	00e50733          	add	a4,a0,a4
    800090bc:	00b70023          	sb	a1,0(a4)
    800090c0:	0087871b          	addiw	a4,a5,8
    800090c4:	04c77e63          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    800090c8:	00e50733          	add	a4,a0,a4
    800090cc:	00b70023          	sb	a1,0(a4)
    800090d0:	0097871b          	addiw	a4,a5,9
    800090d4:	04c77663          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    800090d8:	00e50733          	add	a4,a0,a4
    800090dc:	00b70023          	sb	a1,0(a4)
    800090e0:	00a7871b          	addiw	a4,a5,10
    800090e4:	02c77e63          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    800090e8:	00e50733          	add	a4,a0,a4
    800090ec:	00b70023          	sb	a1,0(a4)
    800090f0:	00b7871b          	addiw	a4,a5,11
    800090f4:	02c77663          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    800090f8:	00e50733          	add	a4,a0,a4
    800090fc:	00b70023          	sb	a1,0(a4)
    80009100:	00c7871b          	addiw	a4,a5,12
    80009104:	00c77e63          	bgeu	a4,a2,80009120 <__memset+0x1c8>
    80009108:	00e50733          	add	a4,a0,a4
    8000910c:	00b70023          	sb	a1,0(a4)
    80009110:	00d7879b          	addiw	a5,a5,13
    80009114:	00c7f663          	bgeu	a5,a2,80009120 <__memset+0x1c8>
    80009118:	00f507b3          	add	a5,a0,a5
    8000911c:	00b78023          	sb	a1,0(a5)
    80009120:	00813403          	ld	s0,8(sp)
    80009124:	01010113          	addi	sp,sp,16
    80009128:	00008067          	ret
    8000912c:	00b00693          	li	a3,11
    80009130:	e55ff06f          	j	80008f84 <__memset+0x2c>
    80009134:	00300e93          	li	t4,3
    80009138:	ea5ff06f          	j	80008fdc <__memset+0x84>
    8000913c:	00100e93          	li	t4,1
    80009140:	e9dff06f          	j	80008fdc <__memset+0x84>
    80009144:	00000e93          	li	t4,0
    80009148:	e95ff06f          	j	80008fdc <__memset+0x84>
    8000914c:	00000793          	li	a5,0
    80009150:	ef9ff06f          	j	80009048 <__memset+0xf0>
    80009154:	00200e93          	li	t4,2
    80009158:	e85ff06f          	j	80008fdc <__memset+0x84>
    8000915c:	00400e93          	li	t4,4
    80009160:	e7dff06f          	j	80008fdc <__memset+0x84>
    80009164:	00500e93          	li	t4,5
    80009168:	e75ff06f          	j	80008fdc <__memset+0x84>
    8000916c:	00600e93          	li	t4,6
    80009170:	e6dff06f          	j	80008fdc <__memset+0x84>

0000000080009174 <__memmove>:
    80009174:	ff010113          	addi	sp,sp,-16
    80009178:	00813423          	sd	s0,8(sp)
    8000917c:	01010413          	addi	s0,sp,16
    80009180:	0e060863          	beqz	a2,80009270 <__memmove+0xfc>
    80009184:	fff6069b          	addiw	a3,a2,-1
    80009188:	0006881b          	sext.w	a6,a3
    8000918c:	0ea5e863          	bltu	a1,a0,8000927c <__memmove+0x108>
    80009190:	00758713          	addi	a4,a1,7
    80009194:	00a5e7b3          	or	a5,a1,a0
    80009198:	40a70733          	sub	a4,a4,a0
    8000919c:	0077f793          	andi	a5,a5,7
    800091a0:	00f73713          	sltiu	a4,a4,15
    800091a4:	00174713          	xori	a4,a4,1
    800091a8:	0017b793          	seqz	a5,a5
    800091ac:	00e7f7b3          	and	a5,a5,a4
    800091b0:	10078863          	beqz	a5,800092c0 <__memmove+0x14c>
    800091b4:	00900793          	li	a5,9
    800091b8:	1107f463          	bgeu	a5,a6,800092c0 <__memmove+0x14c>
    800091bc:	0036581b          	srliw	a6,a2,0x3
    800091c0:	fff8081b          	addiw	a6,a6,-1
    800091c4:	02081813          	slli	a6,a6,0x20
    800091c8:	01d85893          	srli	a7,a6,0x1d
    800091cc:	00858813          	addi	a6,a1,8
    800091d0:	00058793          	mv	a5,a1
    800091d4:	00050713          	mv	a4,a0
    800091d8:	01088833          	add	a6,a7,a6
    800091dc:	0007b883          	ld	a7,0(a5)
    800091e0:	00878793          	addi	a5,a5,8
    800091e4:	00870713          	addi	a4,a4,8
    800091e8:	ff173c23          	sd	a7,-8(a4)
    800091ec:	ff0798e3          	bne	a5,a6,800091dc <__memmove+0x68>
    800091f0:	ff867713          	andi	a4,a2,-8
    800091f4:	02071793          	slli	a5,a4,0x20
    800091f8:	0207d793          	srli	a5,a5,0x20
    800091fc:	00f585b3          	add	a1,a1,a5
    80009200:	40e686bb          	subw	a3,a3,a4
    80009204:	00f507b3          	add	a5,a0,a5
    80009208:	06e60463          	beq	a2,a4,80009270 <__memmove+0xfc>
    8000920c:	0005c703          	lbu	a4,0(a1)
    80009210:	00e78023          	sb	a4,0(a5)
    80009214:	04068e63          	beqz	a3,80009270 <__memmove+0xfc>
    80009218:	0015c603          	lbu	a2,1(a1)
    8000921c:	00100713          	li	a4,1
    80009220:	00c780a3          	sb	a2,1(a5)
    80009224:	04e68663          	beq	a3,a4,80009270 <__memmove+0xfc>
    80009228:	0025c603          	lbu	a2,2(a1)
    8000922c:	00200713          	li	a4,2
    80009230:	00c78123          	sb	a2,2(a5)
    80009234:	02e68e63          	beq	a3,a4,80009270 <__memmove+0xfc>
    80009238:	0035c603          	lbu	a2,3(a1)
    8000923c:	00300713          	li	a4,3
    80009240:	00c781a3          	sb	a2,3(a5)
    80009244:	02e68663          	beq	a3,a4,80009270 <__memmove+0xfc>
    80009248:	0045c603          	lbu	a2,4(a1)
    8000924c:	00400713          	li	a4,4
    80009250:	00c78223          	sb	a2,4(a5)
    80009254:	00e68e63          	beq	a3,a4,80009270 <__memmove+0xfc>
    80009258:	0055c603          	lbu	a2,5(a1)
    8000925c:	00500713          	li	a4,5
    80009260:	00c782a3          	sb	a2,5(a5)
    80009264:	00e68663          	beq	a3,a4,80009270 <__memmove+0xfc>
    80009268:	0065c703          	lbu	a4,6(a1)
    8000926c:	00e78323          	sb	a4,6(a5)
    80009270:	00813403          	ld	s0,8(sp)
    80009274:	01010113          	addi	sp,sp,16
    80009278:	00008067          	ret
    8000927c:	02061713          	slli	a4,a2,0x20
    80009280:	02075713          	srli	a4,a4,0x20
    80009284:	00e587b3          	add	a5,a1,a4
    80009288:	f0f574e3          	bgeu	a0,a5,80009190 <__memmove+0x1c>
    8000928c:	02069613          	slli	a2,a3,0x20
    80009290:	02065613          	srli	a2,a2,0x20
    80009294:	fff64613          	not	a2,a2
    80009298:	00e50733          	add	a4,a0,a4
    8000929c:	00c78633          	add	a2,a5,a2
    800092a0:	fff7c683          	lbu	a3,-1(a5)
    800092a4:	fff78793          	addi	a5,a5,-1
    800092a8:	fff70713          	addi	a4,a4,-1
    800092ac:	00d70023          	sb	a3,0(a4)
    800092b0:	fec798e3          	bne	a5,a2,800092a0 <__memmove+0x12c>
    800092b4:	00813403          	ld	s0,8(sp)
    800092b8:	01010113          	addi	sp,sp,16
    800092bc:	00008067          	ret
    800092c0:	02069713          	slli	a4,a3,0x20
    800092c4:	02075713          	srli	a4,a4,0x20
    800092c8:	00170713          	addi	a4,a4,1
    800092cc:	00e50733          	add	a4,a0,a4
    800092d0:	00050793          	mv	a5,a0
    800092d4:	0005c683          	lbu	a3,0(a1)
    800092d8:	00178793          	addi	a5,a5,1
    800092dc:	00158593          	addi	a1,a1,1
    800092e0:	fed78fa3          	sb	a3,-1(a5)
    800092e4:	fee798e3          	bne	a5,a4,800092d4 <__memmove+0x160>
    800092e8:	f89ff06f          	j	80009270 <__memmove+0xfc>
	...
