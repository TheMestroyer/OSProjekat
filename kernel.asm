
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	95813103          	ld	sp,-1704(sp) # 8000c958 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	104070ef          	jal	ra,80007120 <start>

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
    80001248:	358020ef          	jal	ra,800035a0 <HandleInterupt>

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
    80001364:	62890913          	addi	s2,s2,1576 # 8000c988 <mutex>
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
    800013c0:	5c453503          	ld	a0,1476(a0) # 8000c980 <done>
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
    8000146c:	52050513          	addi	a0,a0,1312 # 8000c988 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	228080e7          	jalr	552(ra) # 80001698 <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000b517          	auipc	a0,0xb
    80001480:	50450513          	addi	a0,a0,1284 # 8000c980 <done>
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
    800014d8:	4ac48493          	addi	s1,s1,1196 # 8000c980 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	264080e7          	jalr	612(ra) # 80001748 <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000b517          	auipc	a0,0xb
    800014f0:	49c53503          	ld	a0,1180(a0) # 8000c988 <mutex>
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
    80001834:	180080e7          	jalr	384(ra) # 800029b0 <userMainK>
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
    80001888:	1a0080e7          	jalr	416(ra) # 80003a24 <start_main_thread>
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
    80001918:	490080e7          	jalr	1168(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    8000191c:	01093583          	ld	a1,16(s2)
    80001920:	02058e63          	beqz	a1,8000195c <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        thread->setPrevInQueue(blockedTail);
    80001924:	00048513          	mv	a0,s1
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	498080e7          	jalr	1176(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    80001930:	00048593          	mv	a1,s1
    80001934:	01093503          	ld	a0,16(s2)
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	46c080e7          	jalr	1132(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
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
    80001968:	45c080e7          	jalr	1116(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
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
    800019a0:	3d0080e7          	jalr	976(ra) # 80001d6c <_ZN7KThread14getNextInQueueEv>
    800019a4:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    800019a8:	04050663          	beqz	a0,800019f4 <_ZN10KSemaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    800019ac:	00000593          	li	a1,0
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	410080e7          	jalr	1040(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    800019b8:	00000593          	li	a1,0
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	3e4080e7          	jalr	996(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800019c8:	00000593          	li	a1,0
    800019cc:	00048513          	mv	a0,s1
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	3f0080e7          	jalr	1008(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
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
    80001a30:	02f5bc23          	sd	a5,56(a1)
    caller->threadContext.x[10] = 0;
    80001a34:	0a05b023          	sd	zero,160(a1)
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
    80001a8c:	0387a783          	lw	a5,56(a5)
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
    80001ab4:	03853703          	ld	a4,56(a0)
    80001ab8:	0004a783          	lw	a5,0(s1)
    80001abc:	40e787bb          	subw	a5,a5,a4
    80001ac0:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	5c4080e7          	jalr	1476(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
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
    80001b00:	0af5b023          	sd	a5,160(a1)
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
    80001b24:	02c5bc23          	sd	a2,56(a1)
    caller->threadContext.x[10] = 0;
    80001b28:	0a05b023          	sd	zero,160(a1)
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
    80001b78:	0387a783          	lw	a5,56(a5)
    80001b7c:	02f74663          	blt	a4,a5,80001ba8 <_ZN10KSemaphore7signalNEj+0x60>
        KThread* thread = dequeue();
    80001b80:	00048513          	mv	a0,s1
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	df0080e7          	jalr	-528(ra) # 80001974 <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001b8c:	03853703          	ld	a4,56(a0)
    80001b90:	0004a783          	lw	a5,0(s1)
    80001b94:	40e787bb          	subw	a5,a5,a4
    80001b98:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	4ec080e7          	jalr	1260(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
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
    80001bf0:	0af53023          	sd	a5,160(a0)
        Scheduler::Put(thread);
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	494080e7          	jalr	1172(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
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
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void KThread::threadTrampoline(KThread* t) {
    if (t->body) t->body(t->arg);
    80001c24:	00053783          	ld	a5,0(a0)
    80001c28:	02078a63          	beqz	a5,80001c5c <_ZN7KThread16threadTrampolineEPS_+0x38>
void KThread::threadTrampoline(KThread* t) {
    80001c2c:	ff010113          	addi	sp,sp,-16
    80001c30:	00113423          	sd	ra,8(sp)
    80001c34:	00813023          	sd	s0,0(sp)
    80001c38:	01010413          	addi	s0,sp,16
    if (t->body) t->body(t->arg);
    80001c3c:	00853503          	ld	a0,8(a0)
    80001c40:	000780e7          	jalr	a5
    __asm__ volatile("li a0, 0x12; ecall");
    80001c44:	01200513          	li	a0,18
    80001c48:	00000073          	ecall
    80001c4c:	00813083          	ld	ra,8(sp)
    80001c50:	00013403          	ld	s0,0(sp)
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00008067          	ret
    __asm__ volatile("li a0, 0x12; ecall");
    80001c5c:	01200513          	li	a0,18
    80001c60:	00000073          	ecall
    80001c64:	00008067          	ret

0000000080001c68 <_ZN7KThreadC1Ev>:
KThread::KThread() {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00813423          	sd	s0,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
}
    80001c74:	00813403          	ld	s0,8(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_ZN7KThread4initEv>:
void KThread::init() {
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001c8c:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001c90:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001c94:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001c98:	00053c23          	sd	zero,24(a0)
    next = nullptr;
    80001c9c:	02053023          	sd	zero,32(a0)
    stackPtr = nullptr;
    80001ca0:	02053423          	sd	zero,40(a0)
    supervisorSp = nullptr;
    80001ca4:	02053823          	sd	zero,48(a0)
    stackBase = nullptr;
    80001ca8:	04053423          	sd	zero,72(a0)
    sleepDelta = 0;
    80001cac:	02053c23          	sd	zero,56(a0)
    priority = 0;
    80001cb0:	04050023          	sb	zero,64(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001cb4:	00000713          	li	a4,0
    80001cb8:	01f00793          	li	a5,31
    80001cbc:	00e7ce63          	blt	a5,a4,80001cd8 <_ZN7KThread4initEv+0x58>
    80001cc0:	00a70793          	addi	a5,a4,10 # 800a <_entry-0x7fff7ff6>
    80001cc4:	00379793          	slli	a5,a5,0x3
    80001cc8:	00f507b3          	add	a5,a0,a5
    80001ccc:	0007b023          	sd	zero,0(a5)
    80001cd0:	0017071b          	addiw	a4,a4,1
    80001cd4:	fe5ff06f          	j	80001cb8 <_ZN7KThread4initEv+0x38>
    threadContext.sepc = 0;
    80001cd8:	14053823          	sd	zero,336(a0)
    threadContext.sstatus = 0;
    80001cdc:	14053c23          	sd	zero,344(a0)
    threadContext.pc = 0;
    80001ce0:	16053023          	sd	zero,352(a0)
}
    80001ce4:	00813403          	ld	s0,8(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00813423          	sd	s0,8(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001cfc:	00000713          	li	a4,0
    80001d00:	01f00793          	li	a5,31
    80001d04:	02e7c463          	blt	a5,a4,80001d2c <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001d08:	00371793          	slli	a5,a4,0x3
    80001d0c:	00f587b3          	add	a5,a1,a5
    80001d10:	0007b683          	ld	a3,0(a5)
    80001d14:	00a70793          	addi	a5,a4,10
    80001d18:	00379793          	slli	a5,a5,0x3
    80001d1c:	00f507b3          	add	a5,a0,a5
    80001d20:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    80001d24:	0017071b          	addiw	a4,a4,1
    80001d28:	fd9ff06f          	j	80001d00 <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001d2c:	02853783          	ld	a5,40(a0)
    80001d30:	06f53023          	sd	a5,96(a0)
    threadContext.sepc = cont->sepc;
    80001d34:	1005b783          	ld	a5,256(a1)
    80001d38:	14f53823          	sd	a5,336(a0)
    threadContext.sstatus =cont->sstatus;
    80001d3c:	1085b783          	ld	a5,264(a1)
    80001d40:	14f53c23          	sd	a5,344(a0)
}
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
}
    80001d5c:	05050513          	addi	a0,a0,80
    80001d60:	00813403          	ld	s0,8(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00813423          	sd	s0,8(sp)
    80001d74:	01010413          	addi	s0,sp,16
}
    80001d78:	02053503          	ld	a0,32(a0)
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
}
    80001d94:	01853503          	ld	a0,24(a0)
    80001d98:	00813403          	ld	s0,8(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00813423          	sd	s0,8(sp)
    80001dac:	01010413          	addi	s0,sp,16
    this->next = next;
    80001db0:	02b53023          	sd	a1,32(a0)
}
    80001db4:	00813403          	ld	s0,8(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00813423          	sd	s0,8(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001dcc:	00b53c23          	sd	a1,24(a0)
}
    80001dd0:	00813403          	ld	s0,8(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001ddc:	fe010113          	addi	sp,sp,-32
    80001de0:	00113c23          	sd	ra,24(sp)
    80001de4:	00813823          	sd	s0,16(sp)
    80001de8:	00913423          	sd	s1,8(sp)
    80001dec:	01213023          	sd	s2,0(sp)
    80001df0:	02010413          	addi	s0,sp,32
    80001df4:	00050493          	mv	s1,a0
    80001df8:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	fa8080e7          	jalr	-88(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001e04:	00090593          	mv	a1,s2
    80001e08:	00048513          	mv	a0,s1
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	fb4080e7          	jalr	-76(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	00013903          	ld	s2,0(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret

0000000080001e2c <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00813423          	sd	s0,8(sp)
    80001e34:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001e38:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001e3c:	02c53423          	sd	a2,40(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001e40:	06c53023          	sd	a2,96(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001e44:	00000797          	auipc	a5,0x0
    80001e48:	de078793          	addi	a5,a5,-544 # 80001c24 <_ZN7KThread16threadTrampolineEPS_>
    80001e4c:	14f53823          	sd	a5,336(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001e50:	0aa53023          	sd	a0,160(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001e54:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001e58:	06f53423          	sd	a5,104(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001e5c:	100027f3          	csrr	a5,sstatus
    sstatus_val &= ~(1UL << 8); // SPP=0
    80001e60:	eff7f793          	andi	a5,a5,-257
    sstatus_val |= (1UL << 5); // SPIE=1
    80001e64:	0207e793          	ori	a5,a5,32
    threadContext.sstatus = sstatus_val;
    80001e68:	14f53c23          	sd	a5,344(a0)
}
    80001e6c:	00813403          	ld	s0,8(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZL8idleBodyPv>:
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	00813023          	sd	s0,0(sp)
    80001e84:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001e88:	fffff097          	auipc	ra,0xfffff
    80001e8c:	7c8080e7          	jalr	1992(ra) # 80001650 <thread_dispatch>
    80001e90:	ff9ff06f          	j	80001e88 <_ZL8idleBodyPv+0x10>

0000000080001e94 <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00813423          	sd	s0,8(sp)
    80001e9c:	01010413          	addi	s0,sp,16
}
    80001ea0:	0000b517          	auipc	a0,0xb
    80001ea4:	b2053503          	ld	a0,-1248(a0) # 8000c9c0 <_ZN9Scheduler7runningE>
    80001ea8:	00813403          	ld	s0,8(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	00058513          	mv	a0,a1
    running = newThread;
    80001ec8:	0000b797          	auipc	a5,0xb
    80001ecc:	aeb7bc23          	sd	a1,-1288(a5) # 8000c9c0 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	e80080e7          	jalr	-384(ra) # 80001d50 <_ZN7KThread10getContextEv>
    80001ed8:	fffff097          	auipc	ra,0xfffff
    80001edc:	1bc080e7          	jalr	444(ra) # 80001094 <restoreContext>
}
    80001ee0:	00813083          	ld	ra,8(sp)
    80001ee4:	00013403          	ld	s0,0(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN9Scheduler8freeDeadEv>:
void Scheduler::freeDead() {
    80001ef0:	fe010113          	addi	sp,sp,-32
    80001ef4:	00113c23          	sd	ra,24(sp)
    80001ef8:	00813823          	sd	s0,16(sp)
    80001efc:	00913423          	sd	s1,8(sp)
    80001f00:	02010413          	addi	s0,sp,32
    if (deadThread == nullptr) return;
    80001f04:	0000b497          	auipc	s1,0xb
    80001f08:	ac44b483          	ld	s1,-1340(s1) # 8000c9c8 <_ZN9Scheduler10deadThreadE>
    80001f0c:	02048e63          	beqz	s1,80001f48 <_ZN9Scheduler8freeDeadEv+0x58>
    deadThread = nullptr;
    80001f10:	0000b797          	auipc	a5,0xb
    80001f14:	aa07bc23          	sd	zero,-1352(a5) # 8000c9c8 <_ZN9Scheduler10deadThreadE>
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    80001f18:	0484b783          	ld	a5,72(s1)
    80001f1c:	00078c63          	beqz	a5,80001f34 <_ZN9Scheduler8freeDeadEv+0x44>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	4cc080e7          	jalr	1228(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    80001f28:	0484b583          	ld	a1,72(s1)
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	5b8080e7          	jalr	1464(ra) # 800034e4 <_ZN15MemoryAllocator12FreeFragmentEPv>
    MemoryAllocator::GetInstance().FreeFragment(dead);
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	4b8080e7          	jalr	1208(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    80001f3c:	00048593          	mv	a1,s1
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	5a4080e7          	jalr	1444(ra) # 800034e4 <_ZN15MemoryAllocator12FreeFragmentEPv>
}
    80001f48:	01813083          	ld	ra,24(sp)
    80001f4c:	01013403          	ld	s0,16(sp)
    80001f50:	00813483          	ld	s1,8(sp)
    80001f54:	02010113          	addi	sp,sp,32
    80001f58:	00008067          	ret

0000000080001f5c <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00113c23          	sd	ra,24(sp)
    80001f64:	00813823          	sd	s0,16(sp)
    80001f68:	00913423          	sd	s1,8(sp)
    80001f6c:	01213023          	sd	s2,0(sp)
    80001f70:	02010413          	addi	s0,sp,32
    for (int i = 0; i < LEVELS; i++) {
    80001f74:	00000493          	li	s1,0
    80001f78:	00300793          	li	a5,3
    80001f7c:	0a97c463          	blt	a5,s1,80002024 <_ZN9Scheduler7GetNextEv+0xc8>
        if (readyHead[i] == nullptr) continue;
    80001f80:	00349713          	slli	a4,s1,0x3
    80001f84:	0000b797          	auipc	a5,0xb
    80001f88:	a3c78793          	addi	a5,a5,-1476 # 8000c9c0 <_ZN9Scheduler7runningE>
    80001f8c:	00e787b3          	add	a5,a5,a4
    80001f90:	0107b903          	ld	s2,16(a5)
    80001f94:	06090863          	beqz	s2,80002004 <_ZN9Scheduler7GetNextEv+0xa8>
        readyHead[i] = toRet->getNextInQueue();
    80001f98:	00090513          	mv	a0,s2
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	dd0080e7          	jalr	-560(ra) # 80001d6c <_ZN7KThread14getNextInQueueEv>
    80001fa4:	00349713          	slli	a4,s1,0x3
    80001fa8:	0000b797          	auipc	a5,0xb
    80001fac:	a1878793          	addi	a5,a5,-1512 # 8000c9c0 <_ZN9Scheduler7runningE>
    80001fb0:	00e787b3          	add	a5,a5,a4
    80001fb4:	00a7b823          	sd	a0,16(a5)
        if (readyHead[i] != nullptr) readyHead[i]->setPrevInQueue(nullptr);
    80001fb8:	04050a63          	beqz	a0,8000200c <_ZN9Scheduler7GetNextEv+0xb0>
    80001fbc:	00000593          	li	a1,0
    80001fc0:	00000097          	auipc	ra,0x0
    80001fc4:	e00080e7          	jalr	-512(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
        toRet->setNextInQueue(nullptr);
    80001fc8:	00000593          	li	a1,0
    80001fcc:	00090513          	mv	a0,s2
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	dd4080e7          	jalr	-556(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
        toRet->setPrevInQueue(nullptr);
    80001fd8:	00000593          	li	a1,0
    80001fdc:	00090513          	mv	a0,s2
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	de0080e7          	jalr	-544(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001fe8:	00090513          	mv	a0,s2
    80001fec:	01813083          	ld	ra,24(sp)
    80001ff0:	01013403          	ld	s0,16(sp)
    80001ff4:	00813483          	ld	s1,8(sp)
    80001ff8:	00013903          	ld	s2,0(sp)
    80001ffc:	02010113          	addi	sp,sp,32
    80002000:	00008067          	ret
    for (int i = 0; i < LEVELS; i++) {
    80002004:	0014849b          	addiw	s1,s1,1
    80002008:	f71ff06f          	j	80001f78 <_ZN9Scheduler7GetNextEv+0x1c>
        else readyTail[i] = nullptr;
    8000200c:	00349493          	slli	s1,s1,0x3
    80002010:	0000b797          	auipc	a5,0xb
    80002014:	9b078793          	addi	a5,a5,-1616 # 8000c9c0 <_ZN9Scheduler7runningE>
    80002018:	009784b3          	add	s1,a5,s1
    8000201c:	0204b823          	sd	zero,48(s1)
    80002020:	fa9ff06f          	j	80001fc8 <_ZN9Scheduler7GetNextEv+0x6c>
    return nullptr;
    80002024:	00000913          	li	s2,0
    80002028:	fc1ff06f          	j	80001fe8 <_ZN9Scheduler7GetNextEv+0x8c>

000000008000202c <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    8000202c:	fe010113          	addi	sp,sp,-32
    80002030:	00113c23          	sd	ra,24(sp)
    80002034:	00813823          	sd	s0,16(sp)
    80002038:	00913423          	sd	s1,8(sp)
    8000203c:	02010413          	addi	s0,sp,32
    80002040:	00050493          	mv	s1,a0
    deadThread = t;
    80002044:	0000b797          	auipc	a5,0xb
    80002048:	98a7b223          	sd	a0,-1660(a5) # 8000c9c8 <_ZN9Scheduler10deadThreadE>
    KThread* next = GetNext();
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	f10080e7          	jalr	-240(ra) # 80001f5c <_ZN9Scheduler7GetNextEv>
    80002054:	00050593          	mv	a1,a0
    if (next == nullptr) {
    80002058:	02050263          	beqz	a0,8000207c <_ZN9Scheduler10ThreadExitEP7KThread+0x50>
    yield(t, next);
    8000205c:	00048513          	mv	a0,s1
    80002060:	00000097          	auipc	ra,0x0
    80002064:	e54080e7          	jalr	-428(ra) # 80001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80002068:	01813083          	ld	ra,24(sp)
    8000206c:	01013403          	ld	s0,16(sp)
    80002070:	00813483          	ld	s1,8(sp)
    80002074:	02010113          	addi	sp,sp,32
    80002078:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    8000207c:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    80002080:	fc059ee3          	bnez	a1,8000205c <_ZN9Scheduler10ThreadExitEP7KThread+0x30>
    80002084:	0000006f          	j	80002084 <_ZN9Scheduler10ThreadExitEP7KThread+0x58>

0000000080002088 <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    80002088:	fd010113          	addi	sp,sp,-48
    8000208c:	02113423          	sd	ra,40(sp)
    80002090:	02813023          	sd	s0,32(sp)
    80002094:	00913c23          	sd	s1,24(sp)
    80002098:	01213823          	sd	s2,16(sp)
    8000209c:	01313423          	sd	s3,8(sp)
    800020a0:	03010413          	addi	s0,sp,48
    800020a4:	00050493          	mv	s1,a0
    int lvl = thread->priority;
    800020a8:	04054903          	lbu	s2,64(a0)
    thread->setNextInQueue(nullptr);
    800020ac:	00000593          	li	a1,0
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	cf4080e7          	jalr	-780(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(readyTail[lvl]);
    800020b8:	00391793          	slli	a5,s2,0x3
    800020bc:	0000b997          	auipc	s3,0xb
    800020c0:	90498993          	addi	s3,s3,-1788 # 8000c9c0 <_ZN9Scheduler7runningE>
    800020c4:	00f989b3          	add	s3,s3,a5
    800020c8:	0309b583          	ld	a1,48(s3)
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	cf0080e7          	jalr	-784(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
    if (readyTail[lvl] != nullptr) readyTail[lvl]->setNextInQueue(thread);
    800020d8:	0309b503          	ld	a0,48(s3)
    800020dc:	04050063          	beqz	a0,8000211c <_ZN9Scheduler3PutEP7KThread+0x94>
    800020e0:	00048593          	mv	a1,s1
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	cc0080e7          	jalr	-832(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    readyTail[lvl] = thread;
    800020ec:	00391913          	slli	s2,s2,0x3
    800020f0:	0000b797          	auipc	a5,0xb
    800020f4:	8d078793          	addi	a5,a5,-1840 # 8000c9c0 <_ZN9Scheduler7runningE>
    800020f8:	01278933          	add	s2,a5,s2
    800020fc:	02993823          	sd	s1,48(s2)
}
    80002100:	02813083          	ld	ra,40(sp)
    80002104:	02013403          	ld	s0,32(sp)
    80002108:	01813483          	ld	s1,24(sp)
    8000210c:	01013903          	ld	s2,16(sp)
    80002110:	00813983          	ld	s3,8(sp)
    80002114:	03010113          	addi	sp,sp,48
    80002118:	00008067          	ret
    else readyHead[lvl] = thread;
    8000211c:	00391713          	slli	a4,s2,0x3
    80002120:	0000b797          	auipc	a5,0xb
    80002124:	8a078793          	addi	a5,a5,-1888 # 8000c9c0 <_ZN9Scheduler7runningE>
    80002128:	00e787b3          	add	a5,a5,a4
    8000212c:	0097b823          	sd	s1,16(a5)
    80002130:	fbdff06f          	j	800020ec <_ZN9Scheduler3PutEP7KThread+0x64>

0000000080002134 <_ZN9Scheduler12PutPreemptedEP7KThread>:
void Scheduler::PutPreempted(KThread* thread) {
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00113423          	sd	ra,8(sp)
    8000213c:	00813023          	sd	s0,0(sp)
    80002140:	01010413          	addi	s0,sp,16
    if (thread->priority < LEVELS - 1) thread->priority++;
    80002144:	04054783          	lbu	a5,64(a0)
    80002148:	00200713          	li	a4,2
    8000214c:	00f76663          	bltu	a4,a5,80002158 <_ZN9Scheduler12PutPreemptedEP7KThread+0x24>
    80002150:	0017879b          	addiw	a5,a5,1
    80002154:	04f50023          	sb	a5,64(a0)
    Put(thread);
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	f30080e7          	jalr	-208(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00813423          	sd	s0,8(sp)
    80002178:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    8000217c:	0000a797          	auipc	a5,0xa
    80002180:	7e47b783          	ld	a5,2020(a5) # 8000c960 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002184:	00778793          	addi	a5,a5,7
    80002188:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    8000218c:	0000b717          	auipc	a4,0xb
    80002190:	88f73223          	sd	a5,-1916(a4) # 8000ca10 <_ZN9Scheduler12stack_cursorE>
}
    80002194:	00813403          	ld	s0,8(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    800021a0:	fe010113          	addi	sp,sp,-32
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	02010413          	addi	s0,sp,32
    SetupStartStack();
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	fbc080e7          	jalr	-68(ra) # 80002170 <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	230080e7          	jalr	560(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    800021c4:	16800593          	li	a1,360
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	280080e7          	jalr	640(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800021d0:	0000a497          	auipc	s1,0xa
    800021d4:	7f048493          	addi	s1,s1,2032 # 8000c9c0 <_ZN9Scheduler7runningE>
    800021d8:	00a4b023          	sd	a0,0(s1)
    running->init();
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	aa4080e7          	jalr	-1372(ra) # 80001c80 <_ZN7KThread4initEv>
    setupStartContext(running->getContext());
    800021e4:	0004b503          	ld	a0,0(s1)
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	b68080e7          	jalr	-1176(ra) # 80001d50 <_ZN7KThread10getContextEv>
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	f34080e7          	jalr	-204(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    800021f8:	00200793          	li	a5,2
    800021fc:	0000a717          	auipc	a4,0xa
    80002200:	4af73223          	sd	a5,1188(a4) # 8000c6a0 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002204:	00001097          	auipc	ra,0x1
    80002208:	1e8080e7          	jalr	488(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    8000220c:	16800593          	li	a1,360
    80002210:	00001097          	auipc	ra,0x1
    80002214:	238080e7          	jalr	568(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002218:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	a64080e7          	jalr	-1436(ra) # 80001c80 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002224:	00000797          	auipc	a5,0x0
    80002228:	c5478793          	addi	a5,a5,-940 # 80001e78 <_ZL8idleBodyPv>
    8000222c:	00f4b023          	sd	a5,0(s1)
    80002230:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002234:	00001097          	auipc	ra,0x1
    80002238:	1b8080e7          	jalr	440(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    8000223c:	000085b7          	lui	a1,0x8
    80002240:	00001097          	auipc	ra,0x1
    80002244:	208080e7          	jalr	520(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    80002248:	00008637          	lui	a2,0x8
    8000224c:	00c50633          	add	a2,a0,a2
    80002250:	00000593          	li	a1,0
    80002254:	00048513          	mv	a0,s1
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	bd4080e7          	jalr	-1068(ra) # 80001e2c <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    80002260:	00048513          	mv	a0,s1
    80002264:	00000097          	auipc	ra,0x0
    80002268:	e24080e7          	jalr	-476(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
}
    8000226c:	01813083          	ld	ra,24(sp)
    80002270:	01013403          	ld	s0,16(sp)
    80002274:	00813483          	ld	s1,8(sp)
    80002278:	02010113          	addi	sp,sp,32
    8000227c:	00008067          	ret

0000000080002280 <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    8000228c:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80002290:	06f53023          	sd	a5,96(a0)
}
    80002294:	00813403          	ld	s0,8(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret

00000000800022a0 <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    800022a0:	fd010113          	addi	sp,sp,-48
    800022a4:	02113423          	sd	ra,40(sp)
    800022a8:	02813023          	sd	s0,32(sp)
    800022ac:	00913c23          	sd	s1,24(sp)
    800022b0:	01213823          	sd	s2,16(sp)
    800022b4:	01313423          	sd	s3,8(sp)
    800022b8:	01413023          	sd	s4,0(sp)
    800022bc:	03010413          	addi	s0,sp,48
    800022c0:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    800022c4:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    800022c8:	0000a797          	auipc	a5,0xa
    800022cc:	7507b783          	ld	a5,1872(a5) # 8000ca18 <_ZN9Scheduler10sleepQueueE>
    800022d0:	04078e63          	beqz	a5,8000232c <_ZN9Scheduler9timerTickEP7KThread+0x8c>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    800022d4:	0387b703          	ld	a4,56(a5)
    800022d8:	04070063          	beqz	a4,80002318 <_ZN9Scheduler9timerTickEP7KThread+0x78>
    800022dc:	fff70713          	addi	a4,a4,-1
    800022e0:	02e7bc23          	sd	a4,56(a5)
    800022e4:	0340006f          	j	80002318 <_ZN9Scheduler9timerTickEP7KThread+0x78>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	a80080e7          	jalr	-1408(ra) # 80001d6c <_ZN7KThread14getNextInQueueEv>
    800022f4:	0000a797          	auipc	a5,0xa
    800022f8:	72a7b223          	sd	a0,1828(a5) # 8000ca18 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    800022fc:	00000593          	li	a1,0
    80002300:	00048513          	mv	a0,s1
    80002304:	00000097          	auipc	ra,0x0
    80002308:	aa0080e7          	jalr	-1376(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    8000230c:	00048513          	mv	a0,s1
    80002310:	00000097          	auipc	ra,0x0
    80002314:	d78080e7          	jalr	-648(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80002318:	0000a497          	auipc	s1,0xa
    8000231c:	7004b483          	ld	s1,1792(s1) # 8000ca18 <_ZN9Scheduler10sleepQueueE>
    80002320:	00048663          	beqz	s1,8000232c <_ZN9Scheduler9timerTickEP7KThread+0x8c>
    80002324:	0384b783          	ld	a5,56(s1)
    80002328:	fc0780e3          	beqz	a5,800022e8 <_ZN9Scheduler9timerTickEP7KThread+0x48>
        }
    }

    if (current == nullptr) return;
    8000232c:	12090e63          	beqz	s2,80002468 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    80002330:	0000a797          	auipc	a5,0xa
    80002334:	3707b783          	ld	a5,880(a5) # 8000c6a0 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002338:	00078863          	beqz	a5,80002348 <_ZN9Scheduler9timerTickEP7KThread+0xa8>
    8000233c:	fff78793          	addi	a5,a5,-1
    80002340:	0000a717          	auipc	a4,0xa
    80002344:	36f73023          	sd	a5,864(a4) # 8000c6a0 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80002348:	0000a797          	auipc	a5,0xa
    8000234c:	3587b783          	ld	a5,856(a5) # 8000c6a0 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002350:	10079c63          	bnez	a5,80002468 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (++agingTick >= 100) {
    80002354:	0000a717          	auipc	a4,0xa
    80002358:	66c70713          	addi	a4,a4,1644 # 8000c9c0 <_ZN9Scheduler7runningE>
    8000235c:	06072783          	lw	a5,96(a4)
    80002360:	0017879b          	addiw	a5,a5,1
    80002364:	0007869b          	sext.w	a3,a5
    80002368:	06f72023          	sw	a5,96(a4)
    8000236c:	06300793          	li	a5,99
    80002370:	0cd7d063          	bge	a5,a3,80002430 <_ZN9Scheduler9timerTickEP7KThread+0x190>
        agingTick = 0;
    80002374:	0000a797          	auipc	a5,0xa
    80002378:	6a07a623          	sw	zero,1708(a5) # 8000ca20 <_ZN9Scheduler9agingTickE>
        for (int i = 1; i < LEVELS; i++) {
    8000237c:	00100493          	li	s1,1
    80002380:	0600006f          	j	800023e0 <_ZN9Scheduler9timerTickEP7KThread+0x140>
            if (readyHead[i] == nullptr) continue;
            KThread* curr = readyHead[i];
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
            if (readyTail[0] != nullptr) {
    80002384:	0000a517          	auipc	a0,0xa
    80002388:	66c53503          	ld	a0,1644(a0) # 8000c9f0 <_ZN9Scheduler9readyTailE>
    8000238c:	08050463          	beqz	a0,80002414 <_ZN9Scheduler9timerTickEP7KThread+0x174>
                readyTail[0]->setNextInQueue(readyHead[i]);
    80002390:	0000aa17          	auipc	s4,0xa
    80002394:	630a0a13          	addi	s4,s4,1584 # 8000c9c0 <_ZN9Scheduler7runningE>
    80002398:	00349993          	slli	s3,s1,0x3
    8000239c:	013a09b3          	add	s3,s4,s3
    800023a0:	0109b583          	ld	a1,16(s3)
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	a00080e7          	jalr	-1536(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
                readyHead[i]->setPrevInQueue(readyTail[0]);
    800023ac:	030a3583          	ld	a1,48(s4)
    800023b0:	0109b503          	ld	a0,16(s3)
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	a0c080e7          	jalr	-1524(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
            } else {
                readyHead[0] = readyHead[i];
            }
            readyTail[0] = readyTail[i];
    800023bc:	0000a717          	auipc	a4,0xa
    800023c0:	60470713          	addi	a4,a4,1540 # 8000c9c0 <_ZN9Scheduler7runningE>
    800023c4:	00349793          	slli	a5,s1,0x3
    800023c8:	00f707b3          	add	a5,a4,a5
    800023cc:	0307b683          	ld	a3,48(a5)
    800023d0:	02d73823          	sd	a3,48(a4)
            readyHead[i] = readyTail[i] = nullptr;
    800023d4:	0207b823          	sd	zero,48(a5)
    800023d8:	0007b823          	sd	zero,16(a5)
        for (int i = 1; i < LEVELS; i++) {
    800023dc:	0014849b          	addiw	s1,s1,1
    800023e0:	00300793          	li	a5,3
    800023e4:	0497c663          	blt	a5,s1,80002430 <_ZN9Scheduler9timerTickEP7KThread+0x190>
            if (readyHead[i] == nullptr) continue;
    800023e8:	00349713          	slli	a4,s1,0x3
    800023ec:	0000a797          	auipc	a5,0xa
    800023f0:	5d478793          	addi	a5,a5,1492 # 8000c9c0 <_ZN9Scheduler7runningE>
    800023f4:	00e787b3          	add	a5,a5,a4
    800023f8:	0107b503          	ld	a0,16(a5)
    800023fc:	fe0500e3          	beqz	a0,800023dc <_ZN9Scheduler9timerTickEP7KThread+0x13c>
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
    80002400:	f80502e3          	beqz	a0,80002384 <_ZN9Scheduler9timerTickEP7KThread+0xe4>
    80002404:	04050023          	sb	zero,64(a0)
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	964080e7          	jalr	-1692(ra) # 80001d6c <_ZN7KThread14getNextInQueueEv>
    80002410:	ff1ff06f          	j	80002400 <_ZN9Scheduler9timerTickEP7KThread+0x160>
                readyHead[0] = readyHead[i];
    80002414:	0000a717          	auipc	a4,0xa
    80002418:	5ac70713          	addi	a4,a4,1452 # 8000c9c0 <_ZN9Scheduler7runningE>
    8000241c:	00349793          	slli	a5,s1,0x3
    80002420:	00f707b3          	add	a5,a4,a5
    80002424:	0107b783          	ld	a5,16(a5)
    80002428:	00f73823          	sd	a5,16(a4)
    8000242c:	f91ff06f          	j	800023bc <_ZN9Scheduler9timerTickEP7KThread+0x11c>
        }
    }

    KThread* next = GetNext();
    80002430:	00000097          	auipc	ra,0x0
    80002434:	b2c080e7          	jalr	-1236(ra) # 80001f5c <_ZN9Scheduler7GetNextEv>
    80002438:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    8000243c:	00200793          	li	a5,2
    80002440:	0000a717          	auipc	a4,0xa
    80002444:	26f73023          	sd	a5,608(a4) # 8000c6a0 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002448:	02050063          	beqz	a0,80002468 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>
    PutPreempted(current);
    8000244c:	00090513          	mv	a0,s2
    80002450:	00000097          	auipc	ra,0x0
    80002454:	ce4080e7          	jalr	-796(ra) # 80002134 <_ZN9Scheduler12PutPreemptedEP7KThread>
    yield(current, next);
    80002458:	00048593          	mv	a1,s1
    8000245c:	00090513          	mv	a0,s2
    80002460:	00000097          	auipc	ra,0x0
    80002464:	a54080e7          	jalr	-1452(ra) # 80001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80002468:	02813083          	ld	ra,40(sp)
    8000246c:	02013403          	ld	s0,32(sp)
    80002470:	01813483          	ld	s1,24(sp)
    80002474:	01013903          	ld	s2,16(sp)
    80002478:	00813983          	ld	s3,8(sp)
    8000247c:	00013a03          	ld	s4,0(sp)
    80002480:	03010113          	addi	sp,sp,48
    80002484:	00008067          	ret

0000000080002488 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    80002488:	fd010113          	addi	sp,sp,-48
    8000248c:	02113423          	sd	ra,40(sp)
    80002490:	02813023          	sd	s0,32(sp)
    80002494:	00913c23          	sd	s1,24(sp)
    80002498:	01213823          	sd	s2,16(sp)
    8000249c:	01313423          	sd	s3,8(sp)
    800024a0:	01413023          	sd	s4,0(sp)
    800024a4:	03010413          	addi	s0,sp,48
    800024a8:	00050a13          	mv	s4,a0
    800024ac:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    800024b0:	0000a497          	auipc	s1,0xa
    800024b4:	5684b483          	ld	s1,1384(s1) # 8000ca18 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    800024b8:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    800024bc:	02048463          	beqz	s1,800024e4 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    800024c0:	0384b783          	ld	a5,56(s1)
    800024c4:	02f96063          	bltu	s2,a5,800024e4 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    800024c8:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    800024cc:	00048513          	mv	a0,s1
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	89c080e7          	jalr	-1892(ra) # 80001d6c <_ZN7KThread14getNextInQueueEv>
        previous = current;
    800024d8:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    800024dc:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    800024e0:	fddff06f          	j	800024bc <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    800024e4:	032a3c23          	sd	s2,56(s4)
    thread->setNextInQueue(current);
    800024e8:	00048593          	mv	a1,s1
    800024ec:	000a0513          	mv	a0,s4
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	8b4080e7          	jalr	-1868(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    800024f8:	04098263          	beqz	s3,8000253c <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    800024fc:	000a0593          	mv	a1,s4
    80002500:	00098513          	mv	a0,s3
    80002504:	00000097          	auipc	ra,0x0
    80002508:	8a0080e7          	jalr	-1888(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    8000250c:	00048863          	beqz	s1,8000251c <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    80002510:	0384b583          	ld	a1,56(s1)
    80002514:	41258933          	sub	s2,a1,s2
    80002518:	0324bc23          	sd	s2,56(s1)
    8000251c:	02813083          	ld	ra,40(sp)
    80002520:	02013403          	ld	s0,32(sp)
    80002524:	01813483          	ld	s1,24(sp)
    80002528:	01013903          	ld	s2,16(sp)
    8000252c:	00813983          	ld	s3,8(sp)
    80002530:	00013a03          	ld	s4,0(sp)
    80002534:	03010113          	addi	sp,sp,48
    80002538:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    8000253c:	0000a797          	auipc	a5,0xa
    80002540:	4d47be23          	sd	s4,1244(a5) # 8000ca18 <_ZN9Scheduler10sleepQueueE>
    80002544:	fc9ff06f          	j	8000250c <_ZN9Scheduler5sleepEP7KThreadm+0x84>

0000000080002548 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    80002558:	0000a517          	auipc	a0,0xa
    8000255c:	4d050513          	addi	a0,a0,1232 # 8000ca28 <_ZN7Konsole11outputItemsE>
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	198080e7          	jalr	408(ra) # 800016f8 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    80002568:	0000a797          	auipc	a5,0xa
    8000256c:	3d07b783          	ld	a5,976(a5) # 8000c938 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002570:	0007b783          	ld	a5,0(a5)
    80002574:	0007c783          	lbu	a5,0(a5)
    80002578:	0ff7f793          	andi	a5,a5,255
    8000257c:	0207f793          	andi	a5,a5,32
    80002580:	fe0784e3          	beqz	a5,80002568 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    80002584:	0000a717          	auipc	a4,0xa
    80002588:	4a470713          	addi	a4,a4,1188 # 8000ca28 <_ZN7Konsole11outputItemsE>
    8000258c:	01872783          	lw	a5,24(a4)
    80002590:	01c72703          	lw	a4,28(a4)
    80002594:	fce782e3          	beq	a5,a4,80002558 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002598:	0000a697          	auipc	a3,0xa
    8000259c:	49068693          	addi	a3,a3,1168 # 8000ca28 <_ZN7Konsole11outputItemsE>
    800025a0:	00f68733          	add	a4,a3,a5
    800025a4:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    800025a8:	0017879b          	addiw	a5,a5,1
    800025ac:	41f7d71b          	sraiw	a4,a5,0x1f
    800025b0:	0187571b          	srliw	a4,a4,0x18
    800025b4:	00e787bb          	addw	a5,a5,a4
    800025b8:	0ff7f793          	andi	a5,a5,255
    800025bc:	40e787bb          	subw	a5,a5,a4
    800025c0:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    800025c4:	0000a797          	auipc	a5,0xa
    800025c8:	38c7b783          	ld	a5,908(a5) # 8000c950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025cc:	0007b783          	ld	a5,0(a5)
    800025d0:	00c78023          	sb	a2,0(a5)
    800025d4:	f85ff06f          	j	80002558 <_ZN7Konsole16outputThreadBodyEPv+0x10>

00000000800025d8 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    800025d8:	fe010113          	addi	sp,sp,-32
    800025dc:	00113c23          	sd	ra,24(sp)
    800025e0:	00813823          	sd	s0,16(sp)
    800025e4:	00913423          	sd	s1,8(sp)
    800025e8:	02010413          	addi	s0,sp,32
    800025ec:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    800025f0:	00000593          	li	a1,0
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	7b0080e7          	jalr	1968(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    800025fc:	0000a597          	auipc	a1,0xa
    80002600:	54c5b583          	ld	a1,1356(a1) # 8000cb48 <_ZN7Konsole14getcWaiterTailE>
    80002604:	04058063          	beqz	a1,80002644 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    80002608:	00048513          	mv	a0,s1
    8000260c:	fffff097          	auipc	ra,0xfffff
    80002610:	7b4080e7          	jalr	1972(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    80002614:	00048593          	mv	a1,s1
    80002618:	0000a517          	auipc	a0,0xa
    8000261c:	53053503          	ld	a0,1328(a0) # 8000cb48 <_ZN7Konsole14getcWaiterTailE>
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	784080e7          	jalr	1924(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    80002628:	0000a797          	auipc	a5,0xa
    8000262c:	5297b023          	sd	s1,1312(a5) # 8000cb48 <_ZN7Konsole14getcWaiterTailE>
}
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	01013403          	ld	s0,16(sp)
    80002638:	00813483          	ld	s1,8(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80002644:	00000593          	li	a1,0
    80002648:	00048513          	mv	a0,s1
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	774080e7          	jalr	1908(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    80002654:	0000a797          	auipc	a5,0xa
    80002658:	4e97be23          	sd	s1,1276(a5) # 8000cb50 <_ZN7Konsole14getcWaiterHeadE>
    8000265c:	fcdff06f          	j	80002628 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

0000000080002660 <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    80002660:	fe010113          	addi	sp,sp,-32
    80002664:	00113c23          	sd	ra,24(sp)
    80002668:	00813823          	sd	s0,16(sp)
    8000266c:	00913423          	sd	s1,8(sp)
    80002670:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    80002674:	0000a497          	auipc	s1,0xa
    80002678:	4dc4b483          	ld	s1,1244(s1) # 8000cb50 <_ZN7Konsole14getcWaiterHeadE>
    8000267c:	04048463          	beqz	s1,800026c4 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    80002680:	00048513          	mv	a0,s1
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	6e8080e7          	jalr	1768(ra) # 80001d6c <_ZN7KThread14getNextInQueueEv>
    8000268c:	0000a797          	auipc	a5,0xa
    80002690:	4ca7b223          	sd	a0,1220(a5) # 8000cb50 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002694:	04050463          	beqz	a0,800026dc <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002698:	00000593          	li	a1,0
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	724080e7          	jalr	1828(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    800026a4:	00000593          	li	a1,0
    800026a8:	00048513          	mv	a0,s1
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	6f8080e7          	jalr	1784(ra) # 80001da4 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800026b4:	00000593          	li	a1,0
    800026b8:	00048513          	mv	a0,s1
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	704080e7          	jalr	1796(ra) # 80001dc0 <_ZN7KThread14setPrevInQueueEPS_>
}
    800026c4:	00048513          	mv	a0,s1
    800026c8:	01813083          	ld	ra,24(sp)
    800026cc:	01013403          	ld	s0,16(sp)
    800026d0:	00813483          	ld	s1,8(sp)
    800026d4:	02010113          	addi	sp,sp,32
    800026d8:	00008067          	ret
    else getcWaiterTail = nullptr;
    800026dc:	0000a797          	auipc	a5,0xa
    800026e0:	4607b623          	sd	zero,1132(a5) # 8000cb48 <_ZN7Konsole14getcWaiterTailE>
    800026e4:	fc1ff06f          	j	800026a4 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

00000000800026e8 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    800026e8:	fe010113          	addi	sp,sp,-32
    800026ec:	00113c23          	sd	ra,24(sp)
    800026f0:	00813823          	sd	s0,16(sp)
    800026f4:	00913423          	sd	s1,8(sp)
    800026f8:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    800026fc:	0000a517          	auipc	a0,0xa
    80002700:	32c50513          	addi	a0,a0,812 # 8000ca28 <_ZN7Konsole11outputItemsE>
    80002704:	12052823          	sw	zero,304(a0)
    80002708:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    8000270c:	00052c23          	sw	zero,24(a0)
    80002710:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    80002714:	12053423          	sd	zero,296(a0)
    80002718:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    8000271c:	00000593          	li	a1,0
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	1a4080e7          	jalr	420(ra) # 800018c4 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	cc4080e7          	jalr	-828(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    80002730:	16800593          	li	a1,360
    80002734:	00001097          	auipc	ra,0x1
    80002738:	d14080e7          	jalr	-748(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
    8000273c:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	540080e7          	jalr	1344(ra) # 80001c80 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002748:	00000797          	auipc	a5,0x0
    8000274c:	e0078793          	addi	a5,a5,-512 # 80002548 <_ZN7Konsole16outputThreadBodyEPv>
    80002750:	00f4b023          	sd	a5,0(s1)
    80002754:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002758:	00001097          	auipc	ra,0x1
    8000275c:	c94080e7          	jalr	-876(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    80002760:	000085b7          	lui	a1,0x8
    80002764:	00001097          	auipc	ra,0x1
    80002768:	ce4080e7          	jalr	-796(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    8000276c:	00008637          	lui	a2,0x8
    80002770:	00c50633          	add	a2,a0,a2
    80002774:	00000593          	li	a1,0
    80002778:	00048513          	mv	a0,s1
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	6b0080e7          	jalr	1712(ra) # 80001e2c <_ZN7KThread5setupEPS_Pm>
    outputThread->threadContext.sstatus |= (1UL << 8);
    80002784:	1584b783          	ld	a5,344(s1)
    80002788:	1007e793          	ori	a5,a5,256
    8000278c:	14f4bc23          	sd	a5,344(s1)
    Scheduler::Put(outputThread);
    80002790:	00048513          	mv	a0,s1
    80002794:	00000097          	auipc	ra,0x0
    80002798:	8f4080e7          	jalr	-1804(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
}
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret

00000000800027b0 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    800027b0:	fe010113          	addi	sp,sp,-32
    800027b4:	00113c23          	sd	ra,24(sp)
    800027b8:	00813823          	sd	s0,16(sp)
    800027bc:	00913423          	sd	s1,8(sp)
    800027c0:	01213023          	sd	s2,0(sp)
    800027c4:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    800027c8:	00005097          	auipc	ra,0x5
    800027cc:	1ac080e7          	jalr	428(ra) # 80007974 <plic_claim>
    800027d0:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    800027d4:	00a00793          	li	a5,10
    800027d8:	02f50663          	beq	a0,a5,80002804 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    800027dc:	0a049463          	bnez	s1,80002884 <_ZN7Konsole15handleInterruptEv+0xd4>
}
    800027e0:	01813083          	ld	ra,24(sp)
    800027e4:	01013403          	ld	s0,16(sp)
    800027e8:	00813483          	ld	s1,8(sp)
    800027ec:	00013903          	ld	s2,0(sp)
    800027f0:	02010113          	addi	sp,sp,32
    800027f4:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    800027f8:	0b253023          	sd	s2,160(a0)
                Scheduler::Put(waiter);
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	88c080e7          	jalr	-1908(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80002804:	0000a797          	auipc	a5,0xa
    80002808:	1347b783          	ld	a5,308(a5) # 8000c938 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000280c:	0007b783          	ld	a5,0(a5)
    80002810:	0007c783          	lbu	a5,0(a5)
    80002814:	0017f793          	andi	a5,a5,1
    80002818:	fc0782e3          	beqz	a5,800027dc <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    8000281c:	0000a797          	auipc	a5,0xa
    80002820:	1147b783          	ld	a5,276(a5) # 8000c930 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002824:	0007b783          	ld	a5,0(a5)
    80002828:	0007c783          	lbu	a5,0(a5)
    8000282c:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    80002830:	00000097          	auipc	ra,0x0
    80002834:	e30080e7          	jalr	-464(ra) # 80002660 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    80002838:	fc0510e3          	bnez	a0,800027f8 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    8000283c:	0000a617          	auipc	a2,0xa
    80002840:	1ec60613          	addi	a2,a2,492 # 8000ca28 <_ZN7Konsole11outputItemsE>
    80002844:	13462683          	lw	a3,308(a2)
    80002848:	0016879b          	addiw	a5,a3,1
    8000284c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002850:	0187571b          	srliw	a4,a4,0x18
    80002854:	00e787bb          	addw	a5,a5,a4
    80002858:	0ff7f793          	andi	a5,a5,255
    8000285c:	40e787bb          	subw	a5,a5,a4
    80002860:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    80002864:	13062603          	lw	a2,304(a2)
    80002868:	f8e60ee3          	beq	a2,a4,80002804 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    8000286c:	0000a717          	auipc	a4,0xa
    80002870:	1bc70713          	addi	a4,a4,444 # 8000ca28 <_ZN7Konsole11outputItemsE>
    80002874:	00d706b3          	add	a3,a4,a3
    80002878:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    8000287c:	12f72a23          	sw	a5,308(a4)
    80002880:	f85ff06f          	j	80002804 <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    80002884:	00048513          	mv	a0,s1
    80002888:	00005097          	auipc	ra,0x5
    8000288c:	124080e7          	jalr	292(ra) # 800079ac <plic_complete>
}
    80002890:	f51ff06f          	j	800027e0 <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002894 <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    80002894:	fe010113          	addi	sp,sp,-32
    80002898:	00113c23          	sd	ra,24(sp)
    8000289c:	00813823          	sd	s0,16(sp)
    800028a0:	00913423          	sd	s1,8(sp)
    800028a4:	02010413          	addi	s0,sp,32
    800028a8:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    800028ac:	0000a617          	auipc	a2,0xa
    800028b0:	17c60613          	addi	a2,a2,380 # 8000ca28 <_ZN7Konsole11outputItemsE>
    800028b4:	01c62683          	lw	a3,28(a2)
    800028b8:	0016879b          	addiw	a5,a3,1
    800028bc:	41f7d71b          	sraiw	a4,a5,0x1f
    800028c0:	0187571b          	srliw	a4,a4,0x18
    800028c4:	00e787bb          	addw	a5,a5,a4
    800028c8:	0ff7f793          	andi	a5,a5,255
    800028cc:	40e787bb          	subw	a5,a5,a4
    800028d0:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    800028d4:	01862603          	lw	a2,24(a2)
    800028d8:	04e60063          	beq	a2,a4,80002918 <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    800028dc:	0000a517          	auipc	a0,0xa
    800028e0:	14c50513          	addi	a0,a0,332 # 8000ca28 <_ZN7Konsole11outputItemsE>
    800028e4:	00d506b3          	add	a3,a0,a3
    800028e8:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    800028ec:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	16c080e7          	jalr	364(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    800028f8:	02048a63          	beqz	s1,8000292c <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    800028fc:	0a04b023          	sd	zero,160(s1)
    return 0;
    80002900:	00000513          	li	a0,0
}
    80002904:	01813083          	ld	ra,24(sp)
    80002908:	01013403          	ld	s0,16(sp)
    8000290c:	00813483          	ld	s1,8(sp)
    80002910:	02010113          	addi	sp,sp,32
    80002914:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    80002918:	00050663          	beqz	a0,80002924 <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    8000291c:	fff00793          	li	a5,-1
    80002920:	0af53023          	sd	a5,160(a0)
        return -1;
    80002924:	fff00513          	li	a0,-1
    80002928:	fddff06f          	j	80002904 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    8000292c:	00000513          	li	a0,0
    80002930:	fd5ff06f          	j	80002904 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

0000000080002934 <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    80002934:	0000a717          	auipc	a4,0xa
    80002938:	0f470713          	addi	a4,a4,244 # 8000ca28 <_ZN7Konsole11outputItemsE>
    8000293c:	13072783          	lw	a5,304(a4)
    80002940:	13472703          	lw	a4,308(a4)
    80002944:	04e78063          	beq	a5,a4,80002984 <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    80002948:	0000a617          	auipc	a2,0xa
    8000294c:	0e060613          	addi	a2,a2,224 # 8000ca28 <_ZN7Konsole11outputItemsE>
    80002950:	00f60733          	add	a4,a2,a5
    80002954:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    80002958:	0017879b          	addiw	a5,a5,1
    8000295c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002960:	0187571b          	srliw	a4,a4,0x18
    80002964:	00e787bb          	addw	a5,a5,a4
    80002968:	0ff7f793          	andi	a5,a5,255
    8000296c:	40e787bb          	subw	a5,a5,a4
    80002970:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002974:	00050463          	beqz	a0,8000297c <_ZN7Konsole10getcKernelEP7KThread+0x48>
    80002978:	0ad53023          	sd	a3,160(a0)
        return (unsigned char)c;
    8000297c:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002980:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002994:	00000097          	auipc	ra,0x0
    80002998:	c44080e7          	jalr	-956(ra) # 800025d8 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    8000299c:	ffe00513          	li	a0,-2
    800029a0:	00813083          	ld	ra,8(sp)
    800029a4:	00013403          	ld	s0,0(sp)
    800029a8:	01010113          	addi	sp,sp,16
    800029ac:	00008067          	ret

00000000800029b0 <userMainK>:
//#define USE_C_TEST
void userMain();

#ifdef USE_CPP_TEST
extern "C" void userMainCpp(void);
extern "C" void userMainK(void) {
    800029b0:	ff010113          	addi	sp,sp,-16
    800029b4:	00113423          	sd	ra,8(sp)
    800029b8:	00813023          	sd	s0,0(sp)
    800029bc:	01010413          	addi	s0,sp,16
    userMain();
    800029c0:	00002097          	auipc	ra,0x2
    800029c4:	6ac080e7          	jalr	1708(ra) # 8000506c <_Z8userMainv>
}
    800029c8:	00813083          	ld	ra,8(sp)
    800029cc:	00013403          	ld	s0,0(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret

00000000800029d8 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    800029d8:	ff010113          	addi	sp,sp,-16
    800029dc:	00113423          	sd	ra,8(sp)
    800029e0:	00813023          	sd	s0,0(sp)
    800029e4:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    800029e8:	03e00513          	li	a0,62
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	900080e7          	jalr	-1792(ra) # 800032ec <_ZN7Console4putcEc>
    800029f4:	00c0006f          	j	80002a00 <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    800029f8:	00001097          	auipc	ra,0x1
    800029fc:	8f4080e7          	jalr	-1804(ra) # 800032ec <_ZN7Console4putcEc>
        char c = Console::getc();
    80002a00:	00001097          	auipc	ra,0x1
    80002a04:	8c4080e7          	jalr	-1852(ra) # 800032c4 <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002a08:	00d00793          	li	a5,13
    80002a0c:	fef50ae3          	beq	a0,a5,80002a00 <_ZL8echoFuncPv+0x28>
    80002a10:	fe9ff06f          	j	800029f8 <_ZL8echoFuncPv+0x20>

0000000080002a14 <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    80002a14:	fb010113          	addi	sp,sp,-80
    80002a18:	04113423          	sd	ra,72(sp)
    80002a1c:	04813023          	sd	s0,64(sp)
    80002a20:	02913c23          	sd	s1,56(sp)
    80002a24:	03213823          	sd	s2,48(sp)
    80002a28:	03313423          	sd	s3,40(sp)
    80002a2c:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    80002a30:	00400513          	li	a0,4
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	b20080e7          	jalr	-1248(ra) # 80001554 <mem_alloc>
    80002a3c:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    80002a40:	04300793          	li	a5,67
    80002a44:	00f50023          	sb	a5,0(a0)
    80002a48:	02b00793          	li	a5,43
    80002a4c:	00f500a3          	sb	a5,1(a0)
    80002a50:	00f50123          	sb	a5,2(a0)
    80002a54:	00a00793          	li	a5,10
    80002a58:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    80002a5c:	04300513          	li	a0,67
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	88c080e7          	jalr	-1908(ra) # 800032ec <_ZN7Console4putcEc>
    80002a68:	0014c503          	lbu	a0,1(s1)
    80002a6c:	00001097          	auipc	ra,0x1
    80002a70:	880080e7          	jalr	-1920(ra) # 800032ec <_ZN7Console4putcEc>
    80002a74:	0024c503          	lbu	a0,2(s1)
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	874080e7          	jalr	-1932(ra) # 800032ec <_ZN7Console4putcEc>
    80002a80:	0034c503          	lbu	a0,3(s1)
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	868080e7          	jalr	-1944(ra) # 800032ec <_ZN7Console4putcEc>
    mem_free(buf);
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	af0080e7          	jalr	-1296(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002a98:	00100593          	li	a1,1
    80002a9c:	fc040513          	addi	a0,s0,-64
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	728080e7          	jalr	1832(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    80002aa8:	00000593          	li	a1,0
    80002aac:	fb040513          	addi	a0,s0,-80
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	718080e7          	jalr	1816(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002ab8:	03800513          	li	a0,56
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	550080e7          	jalr	1360(ra) # 8000300c <_Znwm>
    80002ac4:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002ac8:	00000097          	auipc	ra,0x0
    80002acc:	62c080e7          	jalr	1580(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80002ad0:	0000a797          	auipc	a5,0xa
    80002ad4:	be878793          	addi	a5,a5,-1048 # 8000c6b8 <_ZTV6Worker+0x10>
    80002ad8:	00f9b023          	sd	a5,0(s3)
    80002adc:	04100793          	li	a5,65
    80002ae0:	02f98023          	sb	a5,32(s3)
    80002ae4:	fc040793          	addi	a5,s0,-64
    80002ae8:	02f9b423          	sd	a5,40(s3)
    80002aec:	fb040793          	addi	a5,s0,-80
    80002af0:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    80002af4:	03800513          	li	a0,56
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	514080e7          	jalr	1300(ra) # 8000300c <_Znwm>
    80002b00:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	5f0080e7          	jalr	1520(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80002b0c:	0000a797          	auipc	a5,0xa
    80002b10:	bac78793          	addi	a5,a5,-1108 # 8000c6b8 <_ZTV6Worker+0x10>
    80002b14:	00f93023          	sd	a5,0(s2)
    80002b18:	04200793          	li	a5,66
    80002b1c:	02f90023          	sb	a5,32(s2)
    80002b20:	fc040793          	addi	a5,s0,-64
    80002b24:	02f93423          	sd	a5,40(s2)
    80002b28:	fb040793          	addi	a5,s0,-80
    80002b2c:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    80002b30:	03800513          	li	a0,56
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	4d8080e7          	jalr	1240(ra) # 8000300c <_Znwm>
    80002b3c:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	5b4080e7          	jalr	1460(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80002b48:	0000a797          	auipc	a5,0xa
    80002b4c:	b7078793          	addi	a5,a5,-1168 # 8000c6b8 <_ZTV6Worker+0x10>
    80002b50:	00f4b023          	sd	a5,0(s1)
    80002b54:	04300793          	li	a5,67
    80002b58:	02f48023          	sb	a5,32(s1)
    80002b5c:	fc040793          	addi	a5,s0,-64
    80002b60:	02f4b423          	sd	a5,40(s1)
    80002b64:	fb040793          	addi	a5,s0,-80
    80002b68:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    80002b6c:	00098513          	mv	a0,s3
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	5b4080e7          	jalr	1460(ra) # 80003124 <_ZN6Thread5startEv>
    80002b78:	00090513          	mv	a0,s2
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	5a8080e7          	jalr	1448(ra) # 80003124 <_ZN6Thread5startEv>
    80002b84:	00048513          	mv	a0,s1
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	59c080e7          	jalr	1436(ra) # 80003124 <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002b90:	fb040513          	addi	a0,s0,-80
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	66c080e7          	jalr	1644(ra) # 80003200 <_ZN9Semaphore4waitEv>
    80002b9c:	fb040513          	addi	a0,s0,-80
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	660080e7          	jalr	1632(ra) # 80003200 <_ZN9Semaphore4waitEv>
    80002ba8:	fb040513          	addi	a0,s0,-80
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	654080e7          	jalr	1620(ra) # 80003200 <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002bb4:	00098a63          	beqz	s3,80002bc8 <userMainCpp+0x1b4>
    80002bb8:	0009b783          	ld	a5,0(s3)
    80002bbc:	0087b783          	ld	a5,8(a5)
    80002bc0:	00098513          	mv	a0,s3
    80002bc4:	000780e7          	jalr	a5
    80002bc8:	00090a63          	beqz	s2,80002bdc <userMainCpp+0x1c8>
    80002bcc:	00093783          	ld	a5,0(s2)
    80002bd0:	0087b783          	ld	a5,8(a5)
    80002bd4:	00090513          	mv	a0,s2
    80002bd8:	000780e7          	jalr	a5
    80002bdc:	00048a63          	beqz	s1,80002bf0 <userMainCpp+0x1dc>
    80002be0:	0004b783          	ld	a5,0(s1)
    80002be4:	0087b783          	ld	a5,8(a5)
    80002be8:	00048513          	mv	a0,s1
    80002bec:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002bf0:	00a00513          	li	a0,10
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	6f8080e7          	jalr	1784(ra) # 800032ec <_ZN7Console4putcEc>
    80002bfc:	04f00513          	li	a0,79
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	6ec080e7          	jalr	1772(ra) # 800032ec <_ZN7Console4putcEc>
    80002c08:	04b00513          	li	a0,75
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	6e0080e7          	jalr	1760(ra) # 800032ec <_ZN7Console4putcEc>
    80002c14:	00a00513          	li	a0,10
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	6d4080e7          	jalr	1748(ra) # 800032ec <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    80002c20:	02800513          	li	a0,40
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	3e8080e7          	jalr	1000(ra) # 8000300c <_Znwm>
    80002c2c:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002c30:	00300593          	li	a1,3
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	624080e7          	jalr	1572(ra) # 80003258 <_ZN14PeriodicThreadC1Em>
    80002c3c:	0000a797          	auipc	a5,0xa
    80002c40:	aa478793          	addi	a5,a5,-1372 # 8000c6e0 <_ZTV6Ticker+0x10>
    80002c44:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002c48:	00048513          	mv	a0,s1
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	4d8080e7          	jalr	1240(ra) # 80003124 <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002c54:	00f00513          	li	a0,15
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	548080e7          	jalr	1352(ra) # 800031a0 <_ZN6Thread5sleepEm>
    t->terminate();
    80002c60:	00048513          	mv	a0,s1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	644080e7          	jalr	1604(ra) # 800032a8 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002c6c:	00500513          	li	a0,5
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	530080e7          	jalr	1328(ra) # 800031a0 <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002c78:	00a00513          	li	a0,10
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	670080e7          	jalr	1648(ra) # 800032ec <_ZN7Console4putcEc>
    delete t;
    80002c84:	00048a63          	beqz	s1,80002c98 <userMainCpp+0x284>
    80002c88:	0004b783          	ld	a5,0(s1)
    80002c8c:	0087b783          	ld	a5,8(a5)
    80002c90:	00048513          	mv	a0,s1
    80002c94:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002c98:	02000513          	li	a0,32
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	370080e7          	jalr	880(ra) # 8000300c <_Znwm>
    80002ca4:	00050493          	mv	s1,a0
    80002ca8:	00000613          	li	a2,0
    80002cac:	00000597          	auipc	a1,0x0
    80002cb0:	d2c58593          	addi	a1,a1,-724 # 800029d8 <_ZL8echoFuncPv>
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	410080e7          	jalr	1040(ra) # 800030c4 <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002cbc:	00048513          	mv	a0,s1
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	464080e7          	jalr	1124(ra) # 80003124 <_ZN6Thread5startEv>
    while (true) {}
    80002cc8:	0000006f          	j	80002cc8 <userMainCpp+0x2b4>
    80002ccc:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002cd0:	00098513          	mv	a0,s3
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	360080e7          	jalr	864(ra) # 80003034 <_ZdlPv>
    Semaphore mx(1), done(0);
    80002cdc:	fb040513          	addi	a0,s0,-80
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	2f4080e7          	jalr	756(ra) # 80002fd4 <_ZN9SemaphoreD1Ev>
    80002ce8:	fc040513          	addi	a0,s0,-64
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	2e8080e7          	jalr	744(ra) # 80002fd4 <_ZN9SemaphoreD1Ev>
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	0000b097          	auipc	ra,0xb
    80002cfc:	090080e7          	jalr	144(ra) # 8000dd88 <_Unwind_Resume>
    80002d00:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002d04:	00090513          	mv	a0,s2
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	32c080e7          	jalr	812(ra) # 80003034 <_ZdlPv>
    80002d10:	fcdff06f          	j	80002cdc <userMainCpp+0x2c8>
    80002d14:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002d18:	00048513          	mv	a0,s1
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	318080e7          	jalr	792(ra) # 80003034 <_ZdlPv>
    80002d24:	00090493          	mv	s1,s2
    80002d28:	fb5ff06f          	j	80002cdc <userMainCpp+0x2c8>
    80002d2c:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002d30:	00048513          	mv	a0,s1
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	300080e7          	jalr	768(ra) # 80003034 <_ZdlPv>
    80002d3c:	00090493          	mv	s1,s2
    80002d40:	f9dff06f          	j	80002cdc <userMainCpp+0x2c8>
    80002d44:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002d48:	00048513          	mv	a0,s1
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	2e8080e7          	jalr	744(ra) # 80003034 <_ZdlPv>
    80002d54:	00090493          	mv	s1,s2
    80002d58:	f85ff06f          	j	80002cdc <userMainCpp+0x2c8>
    80002d5c:	00050493          	mv	s1,a0
    80002d60:	f7dff06f          	j	80002cdc <userMainCpp+0x2c8>
    80002d64:	00050493          	mv	s1,a0
    80002d68:	f81ff06f          	j	80002ce8 <userMainCpp+0x2d4>

0000000080002d6c <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00113423          	sd	ra,8(sp)
    80002d74:	00813023          	sd	s0,0(sp)
    80002d78:	01010413          	addi	s0,sp,16
    80002d7c:	02e00513          	li	a0,46
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	56c080e7          	jalr	1388(ra) # 800032ec <_ZN7Console4putcEc>
    80002d88:	00813083          	ld	ra,8(sp)
    80002d8c:	00013403          	ld	s0,0(sp)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret

0000000080002d98 <_ZN6Worker3runEv>:
    void run() override {
    80002d98:	fe010113          	addi	sp,sp,-32
    80002d9c:	00113c23          	sd	ra,24(sp)
    80002da0:	00813823          	sd	s0,16(sp)
    80002da4:	00913423          	sd	s1,8(sp)
    80002da8:	01213023          	sd	s2,0(sp)
    80002dac:	02010413          	addi	s0,sp,32
    80002db0:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002db4:	00000913          	li	s2,0
    80002db8:	0500006f          	j	80002e08 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002dbc:	0284b503          	ld	a0,40(s1)
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	440080e7          	jalr	1088(ra) # 80003200 <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002dc8:	05b00513          	li	a0,91
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	520080e7          	jalr	1312(ra) # 800032ec <_ZN7Console4putcEc>
    80002dd4:	0204c503          	lbu	a0,32(s1)
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	514080e7          	jalr	1300(ra) # 800032ec <_ZN7Console4putcEc>
    80002de0:	05d00513          	li	a0,93
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	508080e7          	jalr	1288(ra) # 800032ec <_ZN7Console4putcEc>
            mx->signal();
    80002dec:	0284b503          	ld	a0,40(s1)
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	43c080e7          	jalr	1084(ra) # 8000322c <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002df8:	00200513          	li	a0,2
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	3a4080e7          	jalr	932(ra) # 800031a0 <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002e04:	0019091b          	addiw	s2,s2,1
    80002e08:	00200793          	li	a5,2
    80002e0c:	fb27d8e3          	bge	a5,s2,80002dbc <_ZN6Worker3runEv+0x24>
        done->signal();
    80002e10:	0304b503          	ld	a0,48(s1)
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	418080e7          	jalr	1048(ra) # 8000322c <_ZN9Semaphore6signalEv>
    }
    80002e1c:	01813083          	ld	ra,24(sp)
    80002e20:	01013403          	ld	s0,16(sp)
    80002e24:	00813483          	ld	s1,8(sp)
    80002e28:	00013903          	ld	s2,0(sp)
    80002e2c:	02010113          	addi	sp,sp,32
    80002e30:	00008067          	ret

0000000080002e34 <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002e34:	ff010113          	addi	sp,sp,-16
    80002e38:	00113423          	sd	ra,8(sp)
    80002e3c:	00813023          	sd	s0,0(sp)
    80002e40:	01010413          	addi	s0,sp,16
    80002e44:	0000a797          	auipc	a5,0xa
    80002e48:	87478793          	addi	a5,a5,-1932 # 8000c6b8 <_ZTV6Worker+0x10>
    80002e4c:	00f53023          	sd	a5,0(a0)
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	0ec080e7          	jalr	236(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80002e58:	00813083          	ld	ra,8(sp)
    80002e5c:	00013403          	ld	s0,0(sp)
    80002e60:	01010113          	addi	sp,sp,16
    80002e64:	00008067          	ret

0000000080002e68 <_ZN6WorkerD0Ev>:
    80002e68:	fe010113          	addi	sp,sp,-32
    80002e6c:	00113c23          	sd	ra,24(sp)
    80002e70:	00813823          	sd	s0,16(sp)
    80002e74:	00913423          	sd	s1,8(sp)
    80002e78:	02010413          	addi	s0,sp,32
    80002e7c:	00050493          	mv	s1,a0
    80002e80:	0000a797          	auipc	a5,0xa
    80002e84:	83878793          	addi	a5,a5,-1992 # 8000c6b8 <_ZTV6Worker+0x10>
    80002e88:	00f53023          	sd	a5,0(a0)
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	0b0080e7          	jalr	176(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80002e94:	00048513          	mv	a0,s1
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	19c080e7          	jalr	412(ra) # 80003034 <_ZdlPv>
    80002ea0:	01813083          	ld	ra,24(sp)
    80002ea4:	01013403          	ld	s0,16(sp)
    80002ea8:	00813483          	ld	s1,8(sp)
    80002eac:	02010113          	addi	sp,sp,32
    80002eb0:	00008067          	ret

0000000080002eb4 <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80002eb4:	ff010113          	addi	sp,sp,-16
    80002eb8:	00113423          	sd	ra,8(sp)
    80002ebc:	00813023          	sd	s0,0(sp)
    80002ec0:	01010413          	addi	s0,sp,16
    int signal();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    80002ec4:	0000a797          	auipc	a5,0xa
    80002ec8:	a847b783          	ld	a5,-1404(a5) # 8000c948 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ecc:	01078793          	addi	a5,a5,16
    80002ed0:	00f53023          	sd	a5,0(a0)
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	068080e7          	jalr	104(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80002edc:	00813083          	ld	ra,8(sp)
    80002ee0:	00013403          	ld	s0,0(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00008067          	ret

0000000080002eec <_ZN6TickerD0Ev>:
    80002eec:	fe010113          	addi	sp,sp,-32
    80002ef0:	00113c23          	sd	ra,24(sp)
    80002ef4:	00813823          	sd	s0,16(sp)
    80002ef8:	00913423          	sd	s1,8(sp)
    80002efc:	02010413          	addi	s0,sp,32
    80002f00:	00050493          	mv	s1,a0
    80002f04:	0000a797          	auipc	a5,0xa
    80002f08:	a447b783          	ld	a5,-1468(a5) # 8000c948 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002f0c:	01078793          	addi	a5,a5,16
    80002f10:	00f53023          	sd	a5,0(a0)
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	028080e7          	jalr	40(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80002f1c:	00048513          	mv	a0,s1
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	114080e7          	jalr	276(ra) # 80003034 <_ZdlPv>
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	02010113          	addi	sp,sp,32
    80002f38:	00008067          	ret

0000000080002f3c <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00813423          	sd	s0,8(sp)
    80002f44:	01010413          	addi	s0,sp,16
    80002f48:	00813403          	ld	s0,8(sp)
    80002f4c:	01010113          	addi	sp,sp,16
    80002f50:	00008067          	ret

0000000080002f54 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80002f54:	ff010113          	addi	sp,sp,-16
    80002f58:	00113423          	sd	ra,8(sp)
    80002f5c:	00813023          	sd	s0,0(sp)
    80002f60:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80002f64:	00053783          	ld	a5,0(a0)
    80002f68:	0107b783          	ld	a5,16(a5)
    80002f6c:	000780e7          	jalr	a5
}
    80002f70:	00813083          	ld	ra,8(sp)
    80002f74:	00013403          	ld	s0,0(sp)
    80002f78:	01010113          	addi	sp,sp,16
    80002f7c:	00008067          	ret

0000000080002f80 <_ZN14PeriodicThread3runEv>:
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    80002f80:	fe010113          	addi	sp,sp,-32
    80002f84:	00113c23          	sd	ra,24(sp)
    80002f88:	00813823          	sd	s0,16(sp)
    80002f8c:	00913423          	sd	s1,8(sp)
    80002f90:	02010413          	addi	s0,sp,32
    80002f94:	00050493          	mv	s1,a0
    while (period) {
    80002f98:	0204b783          	ld	a5,32(s1)
    80002f9c:	02078263          	beqz	a5,80002fc0 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002fa0:	0004b783          	ld	a5,0(s1)
    80002fa4:	0187b783          	ld	a5,24(a5)
    80002fa8:	00048513          	mv	a0,s1
    80002fac:	000780e7          	jalr	a5
        time_sleep(period);
    80002fb0:	0204b503          	ld	a0,32(s1)
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	6bc080e7          	jalr	1724(ra) # 80001670 <time_sleep>
    while (period) {
    80002fbc:	fddff06f          	j	80002f98 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002fc0:	01813083          	ld	ra,24(sp)
    80002fc4:	01013403          	ld	s0,16(sp)
    80002fc8:	00813483          	ld	s1,8(sp)
    80002fcc:	02010113          	addi	sp,sp,32
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00113423          	sd	ra,8(sp)
    80002fdc:	00813023          	sd	s0,0(sp)
    80002fe0:	01010413          	addi	s0,sp,16
    80002fe4:	00009797          	auipc	a5,0x9
    80002fe8:	75c78793          	addi	a5,a5,1884 # 8000c740 <_ZTV9Semaphore+0x10>
    80002fec:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002ff0:	00853503          	ld	a0,8(a0)
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	6dc080e7          	jalr	1756(ra) # 800016d0 <sem_close>
}
    80002ffc:	00813083          	ld	ra,8(sp)
    80003000:	00013403          	ld	s0,0(sp)
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00008067          	ret

000000008000300c <_Znwm>:
void* operator new(size_t size) {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00113423          	sd	ra,8(sp)
    80003014:	00813023          	sd	s0,0(sp)
    80003018:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    8000301c:	ffffe097          	auipc	ra,0xffffe
    80003020:	538080e7          	jalr	1336(ra) # 80001554 <mem_alloc>
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <_ZdlPv>:
void  operator delete(void* p)  {
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00113423          	sd	ra,8(sp)
    8000303c:	00813023          	sd	s0,0(sp)
    80003040:	01010413          	addi	s0,sp,16
    mem_free(p); }
    80003044:	ffffe097          	auipc	ra,0xffffe
    80003048:	53c080e7          	jalr	1340(ra) # 80001580 <mem_free>
    8000304c:	00813083          	ld	ra,8(sp)
    80003050:	00013403          	ld	s0,0(sp)
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00008067          	ret

000000008000305c <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    8000305c:	ff010113          	addi	sp,sp,-16
    80003060:	00113423          	sd	ra,8(sp)
    80003064:	00813023          	sd	s0,0(sp)
    80003068:	01010413          	addi	s0,sp,16
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	fc8080e7          	jalr	-56(ra) # 80003034 <_ZdlPv>
    80003074:	00813083          	ld	ra,8(sp)
    80003078:	00013403          	ld	s0,0(sp)
    8000307c:	01010113          	addi	sp,sp,16
    80003080:	00008067          	ret

0000000080003084 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003084:	fe010113          	addi	sp,sp,-32
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	00813823          	sd	s0,16(sp)
    80003090:	00913423          	sd	s1,8(sp)
    80003094:	02010413          	addi	s0,sp,32
    80003098:	00050493          	mv	s1,a0
}
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	f38080e7          	jalr	-200(ra) # 80002fd4 <_ZN9SemaphoreD1Ev>
    800030a4:	00048513          	mv	a0,s1
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	f8c080e7          	jalr	-116(ra) # 80003034 <_ZdlPv>
    800030b0:	01813083          	ld	ra,24(sp)
    800030b4:	01013403          	ld	s0,16(sp)
    800030b8:	00813483          	ld	s1,8(sp)
    800030bc:	02010113          	addi	sp,sp,32
    800030c0:	00008067          	ret

00000000800030c4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00813423          	sd	s0,8(sp)
    800030cc:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    800030d0:	00009797          	auipc	a5,0x9
    800030d4:	64878793          	addi	a5,a5,1608 # 8000c718 <_ZTV6Thread+0x10>
    800030d8:	00f53023          	sd	a5,0(a0)
    800030dc:	00053423          	sd	zero,8(a0)
    800030e0:	00b53823          	sd	a1,16(a0)
    800030e4:	00c53c23          	sd	a2,24(a0)
    800030e8:	00813403          	ld	s0,8(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    800030f4:	ff010113          	addi	sp,sp,-16
    800030f8:	00813423          	sd	s0,8(sp)
    800030fc:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    80003100:	00009797          	auipc	a5,0x9
    80003104:	61878793          	addi	a5,a5,1560 # 8000c718 <_ZTV6Thread+0x10>
    80003108:	00f53023          	sd	a5,0(a0)
    8000310c:	00053423          	sd	zero,8(a0)
    80003110:	00053823          	sd	zero,16(a0)
    80003114:	00053c23          	sd	zero,24(a0)
    80003118:	00813403          	ld	s0,8(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret

0000000080003124 <_ZN6Thread5startEv>:
int Thread::start() {
    80003124:	ff010113          	addi	sp,sp,-16
    80003128:	00113423          	sd	ra,8(sp)
    8000312c:	00813023          	sd	s0,0(sp)
    80003130:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    80003134:	01053783          	ld	a5,16(a0)
    80003138:	02078663          	beqz	a5,80003164 <_ZN6Thread5startEv+0x40>
    8000313c:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    80003140:	02078863          	beqz	a5,80003170 <_ZN6Thread5startEv+0x4c>
    80003144:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    80003148:	00850513          	addi	a0,a0,8
    8000314c:	ffffe097          	auipc	ra,0xffffe
    80003150:	460080e7          	jalr	1120(ra) # 800015ac <thread_create>
}
    80003154:	00813083          	ld	ra,8(sp)
    80003158:	00013403          	ld	s0,0(sp)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80003164:	00000597          	auipc	a1,0x0
    80003168:	df058593          	addi	a1,a1,-528 # 80002f54 <_ZN6Thread7runBodyEPv>
    8000316c:	fd5ff06f          	j	80003140 <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    80003170:	00050613          	mv	a2,a0
    80003174:	fd5ff06f          	j	80003148 <_ZN6Thread5startEv+0x24>

0000000080003178 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003178:	ff010113          	addi	sp,sp,-16
    8000317c:	00113423          	sd	ra,8(sp)
    80003180:	00813023          	sd	s0,0(sp)
    80003184:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	4c8080e7          	jalr	1224(ra) # 80001650 <thread_dispatch>
}
    80003190:	00813083          	ld	ra,8(sp)
    80003194:	00013403          	ld	s0,0(sp)
    80003198:	01010113          	addi	sp,sp,16
    8000319c:	00008067          	ret

00000000800031a0 <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00113423          	sd	ra,8(sp)
    800031a8:	00813023          	sd	s0,0(sp)
    800031ac:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	4c0080e7          	jalr	1216(ra) # 80001670 <time_sleep>
}
    800031b8:	00813083          	ld	ra,8(sp)
    800031bc:	00013403          	ld	s0,0(sp)
    800031c0:	01010113          	addi	sp,sp,16
    800031c4:	00008067          	ret

00000000800031c8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800031c8:	ff010113          	addi	sp,sp,-16
    800031cc:	00113423          	sd	ra,8(sp)
    800031d0:	00813023          	sd	s0,0(sp)
    800031d4:	01010413          	addi	s0,sp,16
    800031d8:	00009797          	auipc	a5,0x9
    800031dc:	56878793          	addi	a5,a5,1384 # 8000c740 <_ZTV9Semaphore+0x10>
    800031e0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800031e4:	00850513          	addi	a0,a0,8
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	4b0080e7          	jalr	1200(ra) # 80001698 <sem_open>
}
    800031f0:	00813083          	ld	ra,8(sp)
    800031f4:	00013403          	ld	s0,0(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret

0000000080003200 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80003200:	ff010113          	addi	sp,sp,-16
    80003204:	00113423          	sd	ra,8(sp)
    80003208:	00813023          	sd	s0,0(sp)
    8000320c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003210:	00853503          	ld	a0,8(a0)
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	4e4080e7          	jalr	1252(ra) # 800016f8 <sem_wait>
}
    8000321c:	00813083          	ld	ra,8(sp)
    80003220:	00013403          	ld	s0,0(sp)
    80003224:	01010113          	addi	sp,sp,16
    80003228:	00008067          	ret

000000008000322c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000322c:	ff010113          	addi	sp,sp,-16
    80003230:	00113423          	sd	ra,8(sp)
    80003234:	00813023          	sd	s0,0(sp)
    80003238:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000323c:	00853503          	ld	a0,8(a0)
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	4e0080e7          	jalr	1248(ra) # 80001720 <sem_signal>
}
    80003248:	00813083          	ld	ra,8(sp)
    8000324c:	00013403          	ld	s0,0(sp)
    80003250:	01010113          	addi	sp,sp,16
    80003254:	00008067          	ret

0000000080003258 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    80003258:	fe010113          	addi	sp,sp,-32
    8000325c:	00113c23          	sd	ra,24(sp)
    80003260:	00813823          	sd	s0,16(sp)
    80003264:	00913423          	sd	s1,8(sp)
    80003268:	01213023          	sd	s2,0(sp)
    8000326c:	02010413          	addi	s0,sp,32
    80003270:	00050493          	mv	s1,a0
    80003274:	00058913          	mv	s2,a1
    80003278:	00000097          	auipc	ra,0x0
    8000327c:	e7c080e7          	jalr	-388(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80003280:	00009797          	auipc	a5,0x9
    80003284:	4e078793          	addi	a5,a5,1248 # 8000c760 <_ZTV14PeriodicThread+0x10>
    80003288:	00f4b023          	sd	a5,0(s1)
    8000328c:	0324b023          	sd	s2,32(s1)
    80003290:	01813083          	ld	ra,24(sp)
    80003294:	01013403          	ld	s0,16(sp)
    80003298:	00813483          	ld	s1,8(sp)
    8000329c:	00013903          	ld	s2,0(sp)
    800032a0:	02010113          	addi	sp,sp,32
    800032a4:	00008067          	ret

00000000800032a8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    800032a8:	ff010113          	addi	sp,sp,-16
    800032ac:	00813423          	sd	s0,8(sp)
    800032b0:	01010413          	addi	s0,sp,16
    800032b4:	02053023          	sd	zero,32(a0)
    800032b8:	00813403          	ld	s0,8(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret

00000000800032c4 <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    800032c4:	ff010113          	addi	sp,sp,-16
    800032c8:	00113423          	sd	ra,8(sp)
    800032cc:	00813023          	sd	s0,0(sp)
    800032d0:	01010413          	addi	s0,sp,16
    800032d4:	ffffe097          	auipc	ra,0xffffe
    800032d8:	4ac080e7          	jalr	1196(ra) # 80001780 <getc>
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret

00000000800032ec <_ZN7Console4putcEc>:
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	00813023          	sd	s0,0(sp)
    800032f8:	01010413          	addi	s0,sp,16
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	4a8080e7          	jalr	1192(ra) # 800017a4 <putc>
    80003304:	00813083          	ld	ra,8(sp)
    80003308:	00013403          	ld	s0,0(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_ZN6Thread3runEv>:
    int start();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00813423          	sd	s0,8(sp)
    8000331c:	01010413          	addi	s0,sp,16
    80003320:	00813403          	ld	s0,8(sp)
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00008067          	ret

000000008000332c <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    8000332c:	ff010113          	addi	sp,sp,-16
    80003330:	00813423          	sd	s0,8(sp)
    80003334:	01010413          	addi	s0,sp,16
    80003338:	00813403          	ld	s0,8(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00813423          	sd	s0,8(sp)
    8000334c:	01010413          	addi	s0,sp,16
    80003350:	00009797          	auipc	a5,0x9
    80003354:	41078793          	addi	a5,a5,1040 # 8000c760 <_ZTV14PeriodicThread+0x10>
    80003358:	00f53023          	sd	a5,0(a0)
    8000335c:	00813403          	ld	s0,8(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <_ZN14PeriodicThreadD0Ev>:
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00113423          	sd	ra,8(sp)
    80003370:	00813023          	sd	s0,0(sp)
    80003374:	01010413          	addi	s0,sp,16
    80003378:	00009797          	auipc	a5,0x9
    8000337c:	3e878793          	addi	a5,a5,1000 # 8000c760 <_ZTV14PeriodicThread+0x10>
    80003380:	00f53023          	sd	a5,0(a0)
    80003384:	00000097          	auipc	ra,0x0
    80003388:	cb0080e7          	jalr	-848(ra) # 80003034 <_ZdlPv>
    8000338c:	00813083          	ld	ra,8(sp)
    80003390:	00013403          	ld	s0,0(sp)
    80003394:	01010113          	addi	sp,sp,16
    80003398:	00008067          	ret

000000008000339c <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    8000339c:	ff010113          	addi	sp,sp,-16
    800033a0:	00813423          	sd	s0,8(sp)
    800033a4:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    800033a8:	00009797          	auipc	a5,0x9
    800033ac:	5c07b783          	ld	a5,1472(a5) # 8000c968 <_GLOBAL_OFFSET_TABLE_+0x40>
    800033b0:	0007b703          	ld	a4,0(a5)
    800033b4:	00009797          	auipc	a5,0x9
    800033b8:	58c7b783          	ld	a5,1420(a5) # 8000c940 <_GLOBAL_OFFSET_TABLE_+0x18>
    800033bc:	0007b783          	ld	a5,0(a5)
    800033c0:	40f70733          	sub	a4,a4,a5
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    800033c4:	00675713          	srli	a4,a4,0x6
    head = (Fragment*)HEAP_START_ADDR;
    800033c8:	00f53023          	sd	a5,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    800033cc:	00100693          	li	a3,1
    800033d0:	00d78823          	sb	a3,16(a5)
    startFrag->next=nullptr;
    800033d4:	0007b023          	sd	zero,0(a5)
    startFrag->size = HEAP_SIZE_BLCK;
    800033d8:	00e7bc23          	sd	a4,24(a5)
    startFrag->prev=nullptr;
    800033dc:	0007b423          	sd	zero,8(a5)
}
    800033e0:	00813403          	ld	s0,8(sp)
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00008067          	ret

00000000800033ec <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    800033ec:	0000a797          	auipc	a5,0xa
    800033f0:	8747c783          	lbu	a5,-1932(a5) # 8000cc60 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    800033f4:	00078863          	beqz	a5,80003404 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    800033f8:	0000a517          	auipc	a0,0xa
    800033fc:	87050513          	addi	a0,a0,-1936 # 8000cc68 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003400:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00113423          	sd	ra,8(sp)
    8000340c:	00813023          	sd	s0,0(sp)
    80003410:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80003414:	0000a517          	auipc	a0,0xa
    80003418:	85450513          	addi	a0,a0,-1964 # 8000cc68 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000341c:	00000097          	auipc	ra,0x0
    80003420:	f80080e7          	jalr	-128(ra) # 8000339c <_ZN15MemoryAllocatorC1Ev>
    80003424:	00100793          	li	a5,1
    80003428:	0000a717          	auipc	a4,0xa
    8000342c:	82f70c23          	sb	a5,-1992(a4) # 8000cc60 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80003430:	0000a517          	auipc	a0,0xa
    80003434:	83850513          	addi	a0,a0,-1992 # 8000cc68 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003438:	00813083          	ld	ra,8(sp)
    8000343c:	00013403          	ld	s0,0(sp)
    80003440:	01010113          	addi	sp,sp,16
    80003444:	00008067          	ret

0000000080003448 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    80003448:	ff010113          	addi	sp,sp,-16
    8000344c:	00813423          	sd	s0,8(sp)
    80003450:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    80003454:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80003458:	03f58593          	addi	a1,a1,63
    8000345c:	0065d593          	srli	a1,a1,0x6
    80003460:	0080006f          	j	80003468 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80003464:	00053503          	ld	a0,0(a0)
    while(curr){
    80003468:	06050863          	beqz	a0,800034d8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    8000346c:	01054703          	lbu	a4,16(a0)
    80003470:	00100793          	li	a5,1
    80003474:	fef718e3          	bne	a4,a5,80003464 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    80003478:	01853703          	ld	a4,24(a0)
    8000347c:	00158793          	addi	a5,a1,1
    80003480:	fef762e3          	bltu	a4,a5,80003464 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80003484:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80003488:	04e7f663          	bgeu	a5,a4,800034d4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    8000348c:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80003490:	00679793          	slli	a5,a5,0x6
    80003494:	00f507b3          	add	a5,a0,a5
    80003498:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    8000349c:	00100713          	li	a4,1
    800034a0:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    800034a4:	01853703          	ld	a4,24(a0)
    800034a8:	40b70733          	sub	a4,a4,a1
    800034ac:	fff70713          	addi	a4,a4,-1
    800034b0:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    800034b4:	00d7b023          	sd	a3,0(a5)
                if(old)
    800034b8:	00068463          	beqz	a3,800034c0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    800034bc:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    800034c0:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    800034c4:	01853703          	ld	a4,24(a0)
    800034c8:	0187b783          	ld	a5,24(a5)
    800034cc:	40f707b3          	sub	a5,a4,a5
    800034d0:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    800034d4:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    800034d8:	00813403          	ld	s0,8(sp)
    800034dc:	01010113          	addi	sp,sp,16
    800034e0:	00008067          	ret

00000000800034e4 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00813423          	sd	s0,8(sp)
    800034ec:	01010413          	addi	s0,sp,16
    if(!startLoc)return -1;
    800034f0:	08058c63          	beqz	a1,80003588 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    800034f4:	fc058613          	addi	a2,a1,-64
    curr->free=1;
    800034f8:	00100793          	li	a5,1
    800034fc:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80003500:	fc05b783          	ld	a5,-64(a1)
    80003504:	00078863          	beqz	a5,80003514 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003508:	0107c683          	lbu	a3,16(a5)
    8000350c:	00100713          	li	a4,1
    80003510:	02e68463          	beq	a3,a4,80003538 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80003514:	fc85b783          	ld	a5,-56(a1)
    80003518:	06078c63          	beqz	a5,80003590 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    8000351c:	0107c683          	lbu	a3,16(a5)
    80003520:	00100713          	li	a4,1
    80003524:	02e68e63          	beq	a3,a4,80003560 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80003528:	00000513          	li	a0,0
}
    8000352c:	00813403          	ld	s0,8(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret
        curr->size +=next->size;
    80003538:	0187b683          	ld	a3,24(a5)
    8000353c:	fd85b703          	ld	a4,-40(a1)
    80003540:	00d70733          	add	a4,a4,a3
    80003544:	fce5bc23          	sd	a4,-40(a1)
        curr->next = next->next;
    80003548:	0007b703          	ld	a4,0(a5)
    8000354c:	fce5b023          	sd	a4,-64(a1)
        if(next->next)
    80003550:	0007b783          	ld	a5,0(a5)
    80003554:	fc0780e3          	beqz	a5,80003514 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80003558:	00c7b423          	sd	a2,8(a5)
    8000355c:	fb9ff06f          	j	80003514 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80003560:	fd85b683          	ld	a3,-40(a1)
    80003564:	0187b703          	ld	a4,24(a5)
    80003568:	00d70733          	add	a4,a4,a3
    8000356c:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80003570:	fc05b703          	ld	a4,-64(a1)
    80003574:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80003578:	02070063          	beqz	a4,80003598 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    8000357c:	00f73423          	sd	a5,8(a4)
    return 0;
    80003580:	00000513          	li	a0,0
    80003584:	fa9ff06f          	j	8000352c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!startLoc)return -1;
    80003588:	fff00513          	li	a0,-1
    8000358c:	fa1ff06f          	j	8000352c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80003590:	00000513          	li	a0,0
    80003594:	f99ff06f          	j	8000352c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003598:	00000513          	li	a0,0
    8000359c:	f91ff06f          	j	8000352c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

00000000800035a0 <HandleInterupt>:
#include "Konsole.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    800035a0:	fb010113          	addi	sp,sp,-80
    800035a4:	04113423          	sd	ra,72(sp)
    800035a8:	04813023          	sd	s0,64(sp)
    800035ac:	02913c23          	sd	s1,56(sp)
    800035b0:	03213823          	sd	s2,48(sp)
    800035b4:	03313423          	sd	s3,40(sp)
    800035b8:	03413023          	sd	s4,32(sp)
    800035bc:	01513c23          	sd	s5,24(sp)
    800035c0:	01613823          	sd	s6,16(sp)
    800035c4:	01713423          	sd	s7,8(sp)
    800035c8:	05010413          	addi	s0,sp,80
    800035cc:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800035d0:	142029f3          	csrr	s3,scause

    Scheduler::freeDead();
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	91c080e7          	jalr	-1764(ra) # 80001ef0 <_ZN9Scheduler8freeDeadEv>

    KThread* current = Scheduler::GetRunning();
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	8b8080e7          	jalr	-1864(ra) # 80001e94 <_ZN9Scheduler10GetRunningEv>
    800035e4:	00050493          	mv	s1,a0
    if (current != nullptr) {
    800035e8:	04050863          	beqz	a0,80003638 <HandleInterupt+0x98>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    800035ec:	00000713          	li	a4,0
    800035f0:	01f00793          	li	a5,31
    800035f4:	02e7c063          	blt	a5,a4,80003614 <HandleInterupt+0x74>
    800035f8:	00371793          	slli	a5,a4,0x3
    800035fc:	00f906b3          	add	a3,s2,a5
    80003600:	0006b683          	ld	a3,0(a3)
    80003604:	00f487b3          	add	a5,s1,a5
    80003608:	04d7b823          	sd	a3,80(a5)
    8000360c:	0017071b          	addiw	a4,a4,1
    80003610:	fe1ff06f          	j	800035f0 <HandleInterupt+0x50>
        ctx.x[2] = (size_t)frame + 256;
    80003614:	10090793          	addi	a5,s2,256
    80003618:	06f4b023          	sd	a5,96(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    8000361c:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003620:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    80003624:	ff898793          	addi	a5,s3,-8
    80003628:	00100613          	li	a2,1
    8000362c:	06f67a63          	bgeu	a2,a5,800036a0 <HandleInterupt+0x100>
        ctx.sepc    = sepc;
    80003630:	14e4b823          	sd	a4,336(s1)
        ctx.sstatus = sstatus;
    80003634:	14d4bc23          	sd	a3,344(s1)
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
    80003638:	fff00793          	li	a5,-1
    8000363c:	03f79793          	slli	a5,a5,0x3f
    80003640:	00178793          	addi	a5,a5,1
    80003644:	06f98263          	beq	s3,a5,800036a8 <HandleInterupt+0x108>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == 0x8000000000000009UL) {
    80003648:	fff00793          	li	a5,-1
    8000364c:	03f79793          	slli	a5,a5,0x3f
    80003650:	00978793          	addi	a5,a5,9
    80003654:	06f98863          	beq	s3,a5,800036c4 <HandleInterupt+0x124>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != 8 && scause != 9) {
    80003658:	ff898793          	addi	a5,s3,-8
    8000365c:	00100713          	li	a4,1
    80003660:	06f76e63          	bltu	a4,a5,800036dc <HandleInterupt+0x13c>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003664:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80003668:	00478793          	addi	a5,a5,4
    8000366c:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    80003670:	05093783          	ld	a5,80(s2)
    switch (code) {
    80003674:	04200713          	li	a4,66
    80003678:	0af76263          	bltu	a4,a5,8000371c <HandleInterupt+0x17c>
    8000367c:	06078a63          	beqz	a5,800036f0 <HandleInterupt+0x150>
    80003680:	06f76863          	bltu	a4,a5,800036f0 <HandleInterupt+0x150>
    80003684:	00279793          	slli	a5,a5,0x2
    80003688:	00007717          	auipc	a4,0x7
    8000368c:	99870713          	addi	a4,a4,-1640 # 8000a020 <CONSOLE_STATUS+0x10>
    80003690:	00e787b3          	add	a5,a5,a4
    80003694:	0007a783          	lw	a5,0(a5)
    80003698:	00e787b3          	add	a5,a5,a4
    8000369c:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    800036a0:	00470713          	addi	a4,a4,4
    800036a4:	f8dff06f          	j	80003630 <HandleInterupt+0x90>
        Scheduler::timerTick(current);
    800036a8:	00048513          	mv	a0,s1
    800036ac:	fffff097          	auipc	ra,0xfffff
    800036b0:	bf4080e7          	jalr	-1036(ra) # 800022a0 <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    800036b4:	02048e63          	beqz	s1,800036f0 <HandleInterupt+0x150>
    800036b8:	0a04b783          	ld	a5,160(s1)
    800036bc:	00078513          	mv	a0,a5
    800036c0:	0300006f          	j	800036f0 <HandleInterupt+0x150>
        Konsole::handleInterrupt();
    800036c4:	fffff097          	auipc	ra,0xfffff
    800036c8:	0ec080e7          	jalr	236(ra) # 800027b0 <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    800036cc:	02048263          	beqz	s1,800036f0 <HandleInterupt+0x150>
    800036d0:	0a04b783          	ld	a5,160(s1)
    800036d4:	00078513          	mv	a0,a5
    800036d8:	0180006f          	j	800036f0 <HandleInterupt+0x150>
        if ((scause >> 63) == 0 && current != nullptr) {
    800036dc:	0009ca63          	bltz	s3,800036f0 <HandleInterupt+0x150>
    800036e0:	00048863          	beqz	s1,800036f0 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    800036e4:	00048513          	mv	a0,s1
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	944080e7          	jalr	-1724(ra) # 8000202c <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    800036f0:	04813083          	ld	ra,72(sp)
    800036f4:	04013403          	ld	s0,64(sp)
    800036f8:	03813483          	ld	s1,56(sp)
    800036fc:	03013903          	ld	s2,48(sp)
    80003700:	02813983          	ld	s3,40(sp)
    80003704:	02013a03          	ld	s4,32(sp)
    80003708:	01813a83          	ld	s5,24(sp)
    8000370c:	01013b03          	ld	s6,16(sp)
    80003710:	00813b83          	ld	s7,8(sp)
    80003714:	05010113          	addi	sp,sp,80
    80003718:	00008067          	ret
    switch (code) {
    8000371c:	0ff00713          	li	a4,255
    80003720:	fce798e3          	bne	a5,a4,800036f0 <HandleInterupt+0x150>
            *((volatile uint32*)0x100000UL) = 0x5555;
    80003724:	00100737          	lui	a4,0x100
    80003728:	000057b7          	lui	a5,0x5
    8000372c:	5557879b          	addiw	a5,a5,1365
    80003730:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    80003734:	0000006f          	j	80003734 <HandleInterupt+0x194>
            size_t size = frame[11];
    80003738:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	cb0080e7          	jalr	-848(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    80003744:	00048593          	mv	a1,s1
    80003748:	00000097          	auipc	ra,0x0
    8000374c:	d00080e7          	jalr	-768(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80003750:	00050513          	mv	a0,a0
            break;
    80003754:	f9dff06f          	j	800036f0 <HandleInterupt+0x150>
            void* ptr = (void*)frame[11];
    80003758:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	c90080e7          	jalr	-880(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    80003764:	00048593          	mv	a1,s1
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	d7c080e7          	jalr	-644(ra) # 800034e4 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80003770:	f81ff06f          	j	800036f0 <HandleInterupt+0x150>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    80003774:	05893a03          	ld	s4,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    80003778:	06093b03          	ld	s6,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    8000377c:	06893a83          	ld	s5,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    80003780:	07093b83          	ld	s7,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80003784:	00000097          	auipc	ra,0x0
    80003788:	c68080e7          	jalr	-920(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    8000378c:	16800593          	li	a1,360
    80003790:	00000097          	auipc	ra,0x0
    80003794:	cb8080e7          	jalr	-840(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003798:	00050993          	mv	s3,a0
            if (!mem) {
    8000379c:	04050863          	beqz	a0,800037ec <HandleInterupt+0x24c>
            t->init();
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	4e0080e7          	jalr	1248(ra) # 80001c80 <_ZN7KThread4initEv>
    800037a8:	0169b023          	sd	s6,0(s3)
    800037ac:	0159b423          	sd	s5,8(s3)
            t->setup(current, stack_space);
    800037b0:	000b8613          	mv	a2,s7
    800037b4:	00048593          	mv	a1,s1
    800037b8:	00098513          	mv	a0,s3
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	670080e7          	jalr	1648(ra) # 80001e2c <_ZN7KThread5setupEPS_Pm>
            t->stackBase = reinterpret_cast<void*>(frame[15]);
    800037c4:	07893783          	ld	a5,120(s2)
    800037c8:	04f9b423          	sd	a5,72(s3)
            *handle = reinterpret_cast<thread_t>(t);
    800037cc:	013a3023          	sd	s3,0(s4)
            Scheduler::Put(t);
    800037d0:	00098513          	mv	a0,s3
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	8b4080e7          	jalr	-1868(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    800037dc:	00048463          	beqz	s1,800037e4 <HandleInterupt+0x244>
    800037e0:	0a04b023          	sd	zero,160(s1)
            __asm__ volatile("li a0, 0");
    800037e4:	00000513          	li	a0,0
            break;
    800037e8:	f09ff06f          	j	800036f0 <HandleInterupt+0x150>
                if (current) {
    800037ec:	f00482e3          	beqz	s1,800036f0 <HandleInterupt+0x150>
                    current->threadContext.x[10] = (size_t)-1;
    800037f0:	fff00793          	li	a5,-1
    800037f4:	0af4b023          	sd	a5,160(s1)
                    restoreContext(current->getContext());
    800037f8:	00048513          	mv	a0,s1
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	554080e7          	jalr	1364(ra) # 80001d50 <_ZN7KThread10getContextEv>
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	890080e7          	jalr	-1904(ra) # 80001094 <restoreContext>
                return;
    8000380c:	ee5ff06f          	j	800036f0 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003810:	00048513          	mv	a0,s1
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	818080e7          	jalr	-2024(ra) # 8000202c <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    8000381c:	ed5ff06f          	j	800036f0 <HandleInterupt+0x150>
            KThread* next = Scheduler::GetNext();
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	73c080e7          	jalr	1852(ra) # 80001f5c <_ZN9Scheduler7GetNextEv>
    80003828:	00050913          	mv	s2,a0
            if (next == nullptr) {
    8000382c:	02050663          	beqz	a0,80003858 <HandleInterupt+0x2b8>
            if (current) current->threadContext.x[10] = 0;
    80003830:	00048463          	beqz	s1,80003838 <HandleInterupt+0x298>
    80003834:	0a04b023          	sd	zero,160(s1)
            Scheduler::Put(current);
    80003838:	00048513          	mv	a0,s1
    8000383c:	fffff097          	auipc	ra,0xfffff
    80003840:	84c080e7          	jalr	-1972(ra) # 80002088 <_ZN9Scheduler3PutEP7KThread>
            Scheduler::yield(current, next);
    80003844:	00090593          	mv	a1,s2
    80003848:	00048513          	mv	a0,s1
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	668080e7          	jalr	1640(ra) # 80001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003854:	e9dff06f          	j	800036f0 <HandleInterupt+0x150>
                __asm__ volatile("li a0, 0");
    80003858:	00000513          	li	a0,0
                break;
    8000385c:	e95ff06f          	j	800036f0 <HandleInterupt+0x150>
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
    80003860:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)frame[12];
    80003864:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    80003868:	00000097          	auipc	ra,0x0
    8000386c:	b84080e7          	jalr	-1148(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    80003870:	01800593          	li	a1,24
    80003874:	00000097          	auipc	ra,0x0
    80003878:	bd4080e7          	jalr	-1068(ra) # 80003448 <_ZN15MemoryAllocator16AllocateFragmentEm>
    8000387c:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003880:	00050e63          	beqz	a0,8000389c <HandleInterupt+0x2fc>
            semaphore->init(initialValue);
    80003884:	00090593          	mv	a1,s2
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	03c080e7          	jalr	60(ra) # 800018c4 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    80003890:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80003894:	00000513          	li	a0,0
            break;
    80003898:	e59ff06f          	j	800036f0 <HandleInterupt+0x150>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    8000389c:	fff00513          	li	a0,-1
    800038a0:	e51ff06f          	j	800036f0 <HandleInterupt+0x150>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(frame[11]);
    800038a4:	05893483          	ld	s1,88(s2)
            semaphore->close();
    800038a8:	00048513          	mv	a0,s1
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	314080e7          	jalr	788(ra) # 80001bc0 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	b38080e7          	jalr	-1224(ra) # 800033ec <_ZN15MemoryAllocator11GetInstanceEv>
    800038bc:	00048593          	mv	a1,s1
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	c24080e7          	jalr	-988(ra) # 800034e4 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    800038c8:	00000513          	li	a0,0
            break;
    800038cc:	e25ff06f          	j	800036f0 <HandleInterupt+0x150>
            int result = semaphore->wait(current);
    800038d0:	00048593          	mv	a1,s1
    800038d4:	05893503          	ld	a0,88(s2)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	124080e7          	jalr	292(ra) # 800019fc <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    800038e0:	00a04663          	bgtz	a0,800038ec <HandleInterupt+0x34c>
    800038e4:	00050513          	mv	a0,a0
    800038e8:	e09ff06f          	j	800036f0 <HandleInterupt+0x150>
            KThread* next = Scheduler::GetNext();
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	670080e7          	jalr	1648(ra) # 80001f5c <_ZN9Scheduler7GetNextEv>
    800038f4:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    800038f8:	00050a63          	beqz	a0,8000390c <HandleInterupt+0x36c>
            Scheduler::yield(current, next);
    800038fc:	00048513          	mv	a0,s1
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	5b4080e7          	jalr	1460(ra) # 80001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003908:	de9ff06f          	j	800036f0 <HandleInterupt+0x150>
            if (next == nullptr) { while(true){} }
    8000390c:	0000006f          	j	8000390c <HandleInterupt+0x36c>
            semaphore->signal();
    80003910:	05893503          	ld	a0,88(s2)
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	148080e7          	jalr	328(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    8000391c:	00000513          	li	a0,0
            break;
    80003920:	dd1ff06f          	j	800036f0 <HandleInterupt+0x150>
            int result = semaphore->waitN(current, n);
    80003924:	06092603          	lw	a2,96(s2)
    80003928:	00048593          	mv	a1,s1
    8000392c:	05893503          	ld	a0,88(s2)
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	1a8080e7          	jalr	424(ra) # 80001ad8 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003938:	00a04663          	bgtz	a0,80003944 <HandleInterupt+0x3a4>
    8000393c:	00050513          	mv	a0,a0
    80003940:	db1ff06f          	j	800036f0 <HandleInterupt+0x150>
            KThread* next = Scheduler::GetNext();
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	618080e7          	jalr	1560(ra) # 80001f5c <_ZN9Scheduler7GetNextEv>
    8000394c:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80003950:	00050a63          	beqz	a0,80003964 <HandleInterupt+0x3c4>
            Scheduler::yield(current, next);
    80003954:	00048513          	mv	a0,s1
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	55c080e7          	jalr	1372(ra) # 80001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003960:	d91ff06f          	j	800036f0 <HandleInterupt+0x150>
            if (next == nullptr) { while(true){} }
    80003964:	0000006f          	j	80003964 <HandleInterupt+0x3c4>
            semaphore->signalN(n);
    80003968:	06092583          	lw	a1,96(s2)
    8000396c:	05893503          	ld	a0,88(s2)
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	1d8080e7          	jalr	472(ra) # 80001b48 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80003978:	00000513          	li	a0,0
            break;
    8000397c:	d75ff06f          	j	800036f0 <HandleInterupt+0x150>
            time_t dur = (time_t)frame[11];
    80003980:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80003984:	00048463          	beqz	s1,8000398c <HandleInterupt+0x3ec>
    80003988:	0a04b023          	sd	zero,160(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    8000398c:	00059663          	bnez	a1,80003998 <HandleInterupt+0x3f8>
    80003990:	00000513          	li	a0,0
    80003994:	d5dff06f          	j	800036f0 <HandleInterupt+0x150>
            Scheduler::sleep(current, dur);
    80003998:	00048513          	mv	a0,s1
    8000399c:	fffff097          	auipc	ra,0xfffff
    800039a0:	aec080e7          	jalr	-1300(ra) # 80002488 <_ZN9Scheduler5sleepEP7KThreadm>
            KThread* next = Scheduler::GetNext();
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	5b8080e7          	jalr	1464(ra) # 80001f5c <_ZN9Scheduler7GetNextEv>
    800039ac:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    800039b0:	00050a63          	beqz	a0,800039c4 <HandleInterupt+0x424>
            Scheduler::yield(current, next);
    800039b4:	00048513          	mv	a0,s1
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	4fc080e7          	jalr	1276(ra) # 80001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800039c0:	d31ff06f          	j	800036f0 <HandleInterupt+0x150>
            if (next == nullptr) { while(true){} }
    800039c4:	0000006f          	j	800039c4 <HandleInterupt+0x424>
            int result = Konsole::getcKernel(current);
    800039c8:	00048513          	mv	a0,s1
    800039cc:	fffff097          	auipc	ra,0xfffff
    800039d0:	f68080e7          	jalr	-152(ra) # 80002934 <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2) {
    800039d4:	ffe00713          	li	a4,-2
    800039d8:	00e50863          	beq	a0,a4,800039e8 <HandleInterupt+0x448>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    800039dc:	0ff57793          	andi	a5,a0,255
    800039e0:	00078513          	mv	a0,a5
    800039e4:	d0dff06f          	j	800036f0 <HandleInterupt+0x150>
                KThread* next = Scheduler::GetNext();
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	574080e7          	jalr	1396(ra) # 80001f5c <_ZN9Scheduler7GetNextEv>
    800039f0:	00050593          	mv	a1,a0
                if (next == nullptr) { while(true){} }
    800039f4:	00050a63          	beqz	a0,80003a08 <HandleInterupt+0x468>
                Scheduler::yield(current, next);
    800039f8:	00048513          	mv	a0,s1
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	4b8080e7          	jalr	1208(ra) # 80001eb4 <_ZN9Scheduler5yieldEP7KThreadS1_>
    80003a04:	cedff06f          	j	800036f0 <HandleInterupt+0x150>
                if (next == nullptr) { while(true){} }
    80003a08:	0000006f          	j	80003a08 <HandleInterupt+0x468>
            int result = Konsole::putcKernel(current, c);
    80003a0c:	05894583          	lbu	a1,88(s2)
    80003a10:	00048513          	mv	a0,s1
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	e80080e7          	jalr	-384(ra) # 80002894 <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003a1c:	00050513          	mv	a0,a0
            break;
    80003a20:	cd1ff06f          	j	800036f0 <HandleInterupt+0x150>

0000000080003a24 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00113423          	sd	ra,8(sp)
    80003a2c:	00813023          	sd	s0,0(sp)
    80003a30:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	76c080e7          	jalr	1900(ra) # 800021a0 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	cac080e7          	jalr	-852(ra) # 800026e8 <_ZN7Konsole4initEv>
    return 0;
}
    80003a44:	00000513          	li	a0,0
    80003a48:	00813083          	ld	ra,8(sp)
    80003a4c:	00013403          	ld	s0,0(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003a58:	fe010113          	addi	sp,sp,-32
    80003a5c:	00113c23          	sd	ra,24(sp)
    80003a60:	00813823          	sd	s0,16(sp)
    80003a64:	00913423          	sd	s1,8(sp)
    80003a68:	01213023          	sd	s2,0(sp)
    80003a6c:	02010413          	addi	s0,sp,32
    80003a70:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003a74:	00000913          	li	s2,0
    80003a78:	00c0006f          	j	80003a84 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	bd4080e7          	jalr	-1068(ra) # 80001650 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	cfc080e7          	jalr	-772(ra) # 80001780 <getc>
    80003a8c:	0005059b          	sext.w	a1,a0
    80003a90:	01b00793          	li	a5,27
    80003a94:	02f58a63          	beq	a1,a5,80003ac8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003a98:	0084b503          	ld	a0,8(s1)
    80003a9c:	00003097          	auipc	ra,0x3
    80003aa0:	400080e7          	jalr	1024(ra) # 80006e9c <_ZN6Buffer3putEi>
        i++;
    80003aa4:	0019071b          	addiw	a4,s2,1
    80003aa8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003aac:	0004a683          	lw	a3,0(s1)
    80003ab0:	0026979b          	slliw	a5,a3,0x2
    80003ab4:	00d787bb          	addw	a5,a5,a3
    80003ab8:	0017979b          	slliw	a5,a5,0x1
    80003abc:	02f767bb          	remw	a5,a4,a5
    80003ac0:	fc0792e3          	bnez	a5,80003a84 <_ZL16producerKeyboardPv+0x2c>
    80003ac4:	fb9ff06f          	j	80003a7c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003ac8:	00100793          	li	a5,1
    80003acc:	00009717          	auipc	a4,0x9
    80003ad0:	1af72223          	sw	a5,420(a4) # 8000cc70 <_ZL9threadEnd>
    data->buffer->put('!');
    80003ad4:	02100593          	li	a1,33
    80003ad8:	0084b503          	ld	a0,8(s1)
    80003adc:	00003097          	auipc	ra,0x3
    80003ae0:	3c0080e7          	jalr	960(ra) # 80006e9c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003ae4:	0104b503          	ld	a0,16(s1)
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	c38080e7          	jalr	-968(ra) # 80001720 <sem_signal>
}
    80003af0:	01813083          	ld	ra,24(sp)
    80003af4:	01013403          	ld	s0,16(sp)
    80003af8:	00813483          	ld	s1,8(sp)
    80003afc:	00013903          	ld	s2,0(sp)
    80003b00:	02010113          	addi	sp,sp,32
    80003b04:	00008067          	ret

0000000080003b08 <_ZL8producerPv>:

static void producer(void *arg) {
    80003b08:	fe010113          	addi	sp,sp,-32
    80003b0c:	00113c23          	sd	ra,24(sp)
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00913423          	sd	s1,8(sp)
    80003b18:	01213023          	sd	s2,0(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003b24:	00000913          	li	s2,0
    80003b28:	00c0006f          	j	80003b34 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	b24080e7          	jalr	-1244(ra) # 80001650 <thread_dispatch>
    while (!threadEnd) {
    80003b34:	00009797          	auipc	a5,0x9
    80003b38:	13c7a783          	lw	a5,316(a5) # 8000cc70 <_ZL9threadEnd>
    80003b3c:	02079e63          	bnez	a5,80003b78 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003b40:	0004a583          	lw	a1,0(s1)
    80003b44:	0305859b          	addiw	a1,a1,48
    80003b48:	0084b503          	ld	a0,8(s1)
    80003b4c:	00003097          	auipc	ra,0x3
    80003b50:	350080e7          	jalr	848(ra) # 80006e9c <_ZN6Buffer3putEi>
        i++;
    80003b54:	0019071b          	addiw	a4,s2,1
    80003b58:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003b5c:	0004a683          	lw	a3,0(s1)
    80003b60:	0026979b          	slliw	a5,a3,0x2
    80003b64:	00d787bb          	addw	a5,a5,a3
    80003b68:	0017979b          	slliw	a5,a5,0x1
    80003b6c:	02f767bb          	remw	a5,a4,a5
    80003b70:	fc0792e3          	bnez	a5,80003b34 <_ZL8producerPv+0x2c>
    80003b74:	fb9ff06f          	j	80003b2c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003b78:	0104b503          	ld	a0,16(s1)
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	ba4080e7          	jalr	-1116(ra) # 80001720 <sem_signal>
}
    80003b84:	01813083          	ld	ra,24(sp)
    80003b88:	01013403          	ld	s0,16(sp)
    80003b8c:	00813483          	ld	s1,8(sp)
    80003b90:	00013903          	ld	s2,0(sp)
    80003b94:	02010113          	addi	sp,sp,32
    80003b98:	00008067          	ret

0000000080003b9c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003b9c:	fd010113          	addi	sp,sp,-48
    80003ba0:	02113423          	sd	ra,40(sp)
    80003ba4:	02813023          	sd	s0,32(sp)
    80003ba8:	00913c23          	sd	s1,24(sp)
    80003bac:	01213823          	sd	s2,16(sp)
    80003bb0:	01313423          	sd	s3,8(sp)
    80003bb4:	03010413          	addi	s0,sp,48
    80003bb8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003bbc:	00000993          	li	s3,0
    80003bc0:	01c0006f          	j	80003bdc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	a8c080e7          	jalr	-1396(ra) # 80001650 <thread_dispatch>
    80003bcc:	0500006f          	j	80003c1c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003bd0:	00a00513          	li	a0,10
    80003bd4:	ffffe097          	auipc	ra,0xffffe
    80003bd8:	bd0080e7          	jalr	-1072(ra) # 800017a4 <putc>
    while (!threadEnd) {
    80003bdc:	00009797          	auipc	a5,0x9
    80003be0:	0947a783          	lw	a5,148(a5) # 8000cc70 <_ZL9threadEnd>
    80003be4:	06079063          	bnez	a5,80003c44 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003be8:	00893503          	ld	a0,8(s2)
    80003bec:	00003097          	auipc	ra,0x3
    80003bf0:	340080e7          	jalr	832(ra) # 80006f2c <_ZN6Buffer3getEv>
        i++;
    80003bf4:	0019849b          	addiw	s1,s3,1
    80003bf8:	0004899b          	sext.w	s3,s1
        putc(key);
    80003bfc:	0ff57513          	andi	a0,a0,255
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	ba4080e7          	jalr	-1116(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    80003c08:	00092703          	lw	a4,0(s2)
    80003c0c:	0027179b          	slliw	a5,a4,0x2
    80003c10:	00e787bb          	addw	a5,a5,a4
    80003c14:	02f4e7bb          	remw	a5,s1,a5
    80003c18:	fa0786e3          	beqz	a5,80003bc4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003c1c:	05000793          	li	a5,80
    80003c20:	02f4e4bb          	remw	s1,s1,a5
    80003c24:	fa049ce3          	bnez	s1,80003bdc <_ZL8consumerPv+0x40>
    80003c28:	fa9ff06f          	j	80003bd0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003c2c:	00893503          	ld	a0,8(s2)
    80003c30:	00003097          	auipc	ra,0x3
    80003c34:	2fc080e7          	jalr	764(ra) # 80006f2c <_ZN6Buffer3getEv>
        putc(key);
    80003c38:	0ff57513          	andi	a0,a0,255
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	b68080e7          	jalr	-1176(ra) # 800017a4 <putc>
    while (data->buffer->getCnt() > 0) {
    80003c44:	00893503          	ld	a0,8(s2)
    80003c48:	00003097          	auipc	ra,0x3
    80003c4c:	370080e7          	jalr	880(ra) # 80006fb8 <_ZN6Buffer6getCntEv>
    80003c50:	fca04ee3          	bgtz	a0,80003c2c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003c54:	01093503          	ld	a0,16(s2)
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	ac8080e7          	jalr	-1336(ra) # 80001720 <sem_signal>
}
    80003c60:	02813083          	ld	ra,40(sp)
    80003c64:	02013403          	ld	s0,32(sp)
    80003c68:	01813483          	ld	s1,24(sp)
    80003c6c:	01013903          	ld	s2,16(sp)
    80003c70:	00813983          	ld	s3,8(sp)
    80003c74:	03010113          	addi	sp,sp,48
    80003c78:	00008067          	ret

0000000080003c7c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003c7c:	f9010113          	addi	sp,sp,-112
    80003c80:	06113423          	sd	ra,104(sp)
    80003c84:	06813023          	sd	s0,96(sp)
    80003c88:	04913c23          	sd	s1,88(sp)
    80003c8c:	05213823          	sd	s2,80(sp)
    80003c90:	05313423          	sd	s3,72(sp)
    80003c94:	05413023          	sd	s4,64(sp)
    80003c98:	03513c23          	sd	s5,56(sp)
    80003c9c:	03613823          	sd	s6,48(sp)
    80003ca0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003ca4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ca8:	00006517          	auipc	a0,0x6
    80003cac:	48850513          	addi	a0,a0,1160 # 8000a130 <CONSOLE_STATUS+0x120>
    80003cb0:	00002097          	auipc	ra,0x2
    80003cb4:	374080e7          	jalr	884(ra) # 80006024 <_Z11printStringPKc>
    getString(input, 30);
    80003cb8:	01e00593          	li	a1,30
    80003cbc:	fa040493          	addi	s1,s0,-96
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	3e8080e7          	jalr	1000(ra) # 800060ac <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ccc:	00048513          	mv	a0,s1
    80003cd0:	00002097          	auipc	ra,0x2
    80003cd4:	4b4080e7          	jalr	1204(ra) # 80006184 <_Z11stringToIntPKc>
    80003cd8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003cdc:	00006517          	auipc	a0,0x6
    80003ce0:	47450513          	addi	a0,a0,1140 # 8000a150 <CONSOLE_STATUS+0x140>
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	340080e7          	jalr	832(ra) # 80006024 <_Z11printStringPKc>
    getString(input, 30);
    80003cec:	01e00593          	li	a1,30
    80003cf0:	00048513          	mv	a0,s1
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	3b8080e7          	jalr	952(ra) # 800060ac <_Z9getStringPci>
    n = stringToInt(input);
    80003cfc:	00048513          	mv	a0,s1
    80003d00:	00002097          	auipc	ra,0x2
    80003d04:	484080e7          	jalr	1156(ra) # 80006184 <_Z11stringToIntPKc>
    80003d08:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003d0c:	00006517          	auipc	a0,0x6
    80003d10:	46450513          	addi	a0,a0,1124 # 8000a170 <CONSOLE_STATUS+0x160>
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	310080e7          	jalr	784(ra) # 80006024 <_Z11printStringPKc>
    80003d1c:	00000613          	li	a2,0
    80003d20:	00a00593          	li	a1,10
    80003d24:	00090513          	mv	a0,s2
    80003d28:	00002097          	auipc	ra,0x2
    80003d2c:	4ac080e7          	jalr	1196(ra) # 800061d4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003d30:	00006517          	auipc	a0,0x6
    80003d34:	45850513          	addi	a0,a0,1112 # 8000a188 <CONSOLE_STATUS+0x178>
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	2ec080e7          	jalr	748(ra) # 80006024 <_Z11printStringPKc>
    80003d40:	00000613          	li	a2,0
    80003d44:	00a00593          	li	a1,10
    80003d48:	00048513          	mv	a0,s1
    80003d4c:	00002097          	auipc	ra,0x2
    80003d50:	488080e7          	jalr	1160(ra) # 800061d4 <_Z8printIntiii>
    printString(".\n");
    80003d54:	00006517          	auipc	a0,0x6
    80003d58:	44c50513          	addi	a0,a0,1100 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003d5c:	00002097          	auipc	ra,0x2
    80003d60:	2c8080e7          	jalr	712(ra) # 80006024 <_Z11printStringPKc>
    if(threadNum > n) {
    80003d64:	0324c463          	blt	s1,s2,80003d8c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003d68:	03205c63          	blez	s2,80003da0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003d6c:	03800513          	li	a0,56
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	29c080e7          	jalr	668(ra) # 8000300c <_Znwm>
    80003d78:	00050a13          	mv	s4,a0
    80003d7c:	00048593          	mv	a1,s1
    80003d80:	00003097          	auipc	ra,0x3
    80003d84:	080080e7          	jalr	128(ra) # 80006e00 <_ZN6BufferC1Ei>
    80003d88:	0300006f          	j	80003db8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d8c:	00006517          	auipc	a0,0x6
    80003d90:	41c50513          	addi	a0,a0,1052 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003d94:	00002097          	auipc	ra,0x2
    80003d98:	290080e7          	jalr	656(ra) # 80006024 <_Z11printStringPKc>
        return;
    80003d9c:	0140006f          	j	80003db0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003da0:	00006517          	auipc	a0,0x6
    80003da4:	44850513          	addi	a0,a0,1096 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	27c080e7          	jalr	636(ra) # 80006024 <_Z11printStringPKc>
        return;
    80003db0:	000b0113          	mv	sp,s6
    80003db4:	1500006f          	j	80003f04 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003db8:	00000593          	li	a1,0
    80003dbc:	00009517          	auipc	a0,0x9
    80003dc0:	ebc50513          	addi	a0,a0,-324 # 8000cc78 <_ZL10waitForAll>
    80003dc4:	ffffe097          	auipc	ra,0xffffe
    80003dc8:	8d4080e7          	jalr	-1836(ra) # 80001698 <sem_open>
    thread_t threads[threadNum];
    80003dcc:	00391793          	slli	a5,s2,0x3
    80003dd0:	00f78793          	addi	a5,a5,15
    80003dd4:	ff07f793          	andi	a5,a5,-16
    80003dd8:	40f10133          	sub	sp,sp,a5
    80003ddc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003de0:	0019071b          	addiw	a4,s2,1
    80003de4:	00171793          	slli	a5,a4,0x1
    80003de8:	00e787b3          	add	a5,a5,a4
    80003dec:	00379793          	slli	a5,a5,0x3
    80003df0:	00f78793          	addi	a5,a5,15
    80003df4:	ff07f793          	andi	a5,a5,-16
    80003df8:	40f10133          	sub	sp,sp,a5
    80003dfc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003e00:	00191613          	slli	a2,s2,0x1
    80003e04:	012607b3          	add	a5,a2,s2
    80003e08:	00379793          	slli	a5,a5,0x3
    80003e0c:	00f987b3          	add	a5,s3,a5
    80003e10:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003e14:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003e18:	00009717          	auipc	a4,0x9
    80003e1c:	e6073703          	ld	a4,-416(a4) # 8000cc78 <_ZL10waitForAll>
    80003e20:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003e24:	00078613          	mv	a2,a5
    80003e28:	00000597          	auipc	a1,0x0
    80003e2c:	d7458593          	addi	a1,a1,-652 # 80003b9c <_ZL8consumerPv>
    80003e30:	f9840513          	addi	a0,s0,-104
    80003e34:	ffffd097          	auipc	ra,0xffffd
    80003e38:	778080e7          	jalr	1912(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003e3c:	00000493          	li	s1,0
    80003e40:	0280006f          	j	80003e68 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003e44:	00000597          	auipc	a1,0x0
    80003e48:	c1458593          	addi	a1,a1,-1004 # 80003a58 <_ZL16producerKeyboardPv>
                      data + i);
    80003e4c:	00179613          	slli	a2,a5,0x1
    80003e50:	00f60633          	add	a2,a2,a5
    80003e54:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003e58:	00c98633          	add	a2,s3,a2
    80003e5c:	ffffd097          	auipc	ra,0xffffd
    80003e60:	750080e7          	jalr	1872(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003e64:	0014849b          	addiw	s1,s1,1
    80003e68:	0524d263          	bge	s1,s2,80003eac <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003e6c:	00149793          	slli	a5,s1,0x1
    80003e70:	009787b3          	add	a5,a5,s1
    80003e74:	00379793          	slli	a5,a5,0x3
    80003e78:	00f987b3          	add	a5,s3,a5
    80003e7c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003e80:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003e84:	00009717          	auipc	a4,0x9
    80003e88:	df473703          	ld	a4,-524(a4) # 8000cc78 <_ZL10waitForAll>
    80003e8c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003e90:	00048793          	mv	a5,s1
    80003e94:	00349513          	slli	a0,s1,0x3
    80003e98:	00aa8533          	add	a0,s5,a0
    80003e9c:	fa9054e3          	blez	s1,80003e44 <_Z22producerConsumer_C_APIv+0x1c8>
    80003ea0:	00000597          	auipc	a1,0x0
    80003ea4:	c6858593          	addi	a1,a1,-920 # 80003b08 <_ZL8producerPv>
    80003ea8:	fa5ff06f          	j	80003e4c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003eac:	ffffd097          	auipc	ra,0xffffd
    80003eb0:	7a4080e7          	jalr	1956(ra) # 80001650 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003eb4:	00000493          	li	s1,0
    80003eb8:	00994e63          	blt	s2,s1,80003ed4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003ebc:	00009517          	auipc	a0,0x9
    80003ec0:	dbc53503          	ld	a0,-580(a0) # 8000cc78 <_ZL10waitForAll>
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	834080e7          	jalr	-1996(ra) # 800016f8 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003ecc:	0014849b          	addiw	s1,s1,1
    80003ed0:	fe9ff06f          	j	80003eb8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003ed4:	00009517          	auipc	a0,0x9
    80003ed8:	da453503          	ld	a0,-604(a0) # 8000cc78 <_ZL10waitForAll>
    80003edc:	ffffd097          	auipc	ra,0xffffd
    80003ee0:	7f4080e7          	jalr	2036(ra) # 800016d0 <sem_close>
    delete buffer;
    80003ee4:	000a0e63          	beqz	s4,80003f00 <_Z22producerConsumer_C_APIv+0x284>
    80003ee8:	000a0513          	mv	a0,s4
    80003eec:	00003097          	auipc	ra,0x3
    80003ef0:	154080e7          	jalr	340(ra) # 80007040 <_ZN6BufferD1Ev>
    80003ef4:	000a0513          	mv	a0,s4
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	13c080e7          	jalr	316(ra) # 80003034 <_ZdlPv>
    80003f00:	000b0113          	mv	sp,s6

}
    80003f04:	f9040113          	addi	sp,s0,-112
    80003f08:	06813083          	ld	ra,104(sp)
    80003f0c:	06013403          	ld	s0,96(sp)
    80003f10:	05813483          	ld	s1,88(sp)
    80003f14:	05013903          	ld	s2,80(sp)
    80003f18:	04813983          	ld	s3,72(sp)
    80003f1c:	04013a03          	ld	s4,64(sp)
    80003f20:	03813a83          	ld	s5,56(sp)
    80003f24:	03013b03          	ld	s6,48(sp)
    80003f28:	07010113          	addi	sp,sp,112
    80003f2c:	00008067          	ret
    80003f30:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003f34:	000a0513          	mv	a0,s4
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	0fc080e7          	jalr	252(ra) # 80003034 <_ZdlPv>
    80003f40:	00048513          	mv	a0,s1
    80003f44:	0000a097          	auipc	ra,0xa
    80003f48:	e44080e7          	jalr	-444(ra) # 8000dd88 <_Unwind_Resume>

0000000080003f4c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003f4c:	fe010113          	addi	sp,sp,-32
    80003f50:	00113c23          	sd	ra,24(sp)
    80003f54:	00813823          	sd	s0,16(sp)
    80003f58:	00913423          	sd	s1,8(sp)
    80003f5c:	01213023          	sd	s2,0(sp)
    80003f60:	02010413          	addi	s0,sp,32
    80003f64:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003f68:	00100793          	li	a5,1
    80003f6c:	02a7f863          	bgeu	a5,a0,80003f9c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003f70:	00a00793          	li	a5,10
    80003f74:	02f577b3          	remu	a5,a0,a5
    80003f78:	02078e63          	beqz	a5,80003fb4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003f7c:	fff48513          	addi	a0,s1,-1
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	fcc080e7          	jalr	-52(ra) # 80003f4c <_ZL9fibonaccim>
    80003f88:	00050913          	mv	s2,a0
    80003f8c:	ffe48513          	addi	a0,s1,-2
    80003f90:	00000097          	auipc	ra,0x0
    80003f94:	fbc080e7          	jalr	-68(ra) # 80003f4c <_ZL9fibonaccim>
    80003f98:	00a90533          	add	a0,s2,a0
}
    80003f9c:	01813083          	ld	ra,24(sp)
    80003fa0:	01013403          	ld	s0,16(sp)
    80003fa4:	00813483          	ld	s1,8(sp)
    80003fa8:	00013903          	ld	s2,0(sp)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003fb4:	ffffd097          	auipc	ra,0xffffd
    80003fb8:	69c080e7          	jalr	1692(ra) # 80001650 <thread_dispatch>
    80003fbc:	fc1ff06f          	j	80003f7c <_ZL9fibonaccim+0x30>

0000000080003fc0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00113c23          	sd	ra,24(sp)
    80003fc8:	00813823          	sd	s0,16(sp)
    80003fcc:	00913423          	sd	s1,8(sp)
    80003fd0:	01213023          	sd	s2,0(sp)
    80003fd4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003fd8:	00000913          	li	s2,0
    80003fdc:	0380006f          	j	80004014 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003fe0:	ffffd097          	auipc	ra,0xffffd
    80003fe4:	670080e7          	jalr	1648(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003fe8:	00148493          	addi	s1,s1,1
    80003fec:	000027b7          	lui	a5,0x2
    80003ff0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ff4:	0097ee63          	bltu	a5,s1,80004010 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ff8:	00000713          	li	a4,0
    80003ffc:	000077b7          	lui	a5,0x7
    80004000:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004004:	fce7eee3          	bltu	a5,a4,80003fe0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004008:	00170713          	addi	a4,a4,1
    8000400c:	ff1ff06f          	j	80003ffc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004010:	00190913          	addi	s2,s2,1
    80004014:	00900793          	li	a5,9
    80004018:	0527e063          	bltu	a5,s2,80004058 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000401c:	00006517          	auipc	a0,0x6
    80004020:	1fc50513          	addi	a0,a0,508 # 8000a218 <CONSOLE_STATUS+0x208>
    80004024:	00002097          	auipc	ra,0x2
    80004028:	000080e7          	jalr	ra # 80006024 <_Z11printStringPKc>
    8000402c:	00000613          	li	a2,0
    80004030:	00a00593          	li	a1,10
    80004034:	0009051b          	sext.w	a0,s2
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	19c080e7          	jalr	412(ra) # 800061d4 <_Z8printIntiii>
    80004040:	00006517          	auipc	a0,0x6
    80004044:	44850513          	addi	a0,a0,1096 # 8000a488 <CONSOLE_STATUS+0x478>
    80004048:	00002097          	auipc	ra,0x2
    8000404c:	fdc080e7          	jalr	-36(ra) # 80006024 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004050:	00000493          	li	s1,0
    80004054:	f99ff06f          	j	80003fec <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004058:	00006517          	auipc	a0,0x6
    8000405c:	1c850513          	addi	a0,a0,456 # 8000a220 <CONSOLE_STATUS+0x210>
    80004060:	00002097          	auipc	ra,0x2
    80004064:	fc4080e7          	jalr	-60(ra) # 80006024 <_Z11printStringPKc>
    finishedA = true;
    80004068:	00100793          	li	a5,1
    8000406c:	00009717          	auipc	a4,0x9
    80004070:	c0f70a23          	sb	a5,-1004(a4) # 8000cc80 <_ZL9finishedA>
}
    80004074:	01813083          	ld	ra,24(sp)
    80004078:	01013403          	ld	s0,16(sp)
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	00013903          	ld	s2,0(sp)
    80004084:	02010113          	addi	sp,sp,32
    80004088:	00008067          	ret

000000008000408c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000408c:	fe010113          	addi	sp,sp,-32
    80004090:	00113c23          	sd	ra,24(sp)
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	01213023          	sd	s2,0(sp)
    800040a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800040a4:	00000913          	li	s2,0
    800040a8:	0380006f          	j	800040e0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800040ac:	ffffd097          	auipc	ra,0xffffd
    800040b0:	5a4080e7          	jalr	1444(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800040b4:	00148493          	addi	s1,s1,1
    800040b8:	000027b7          	lui	a5,0x2
    800040bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800040c0:	0097ee63          	bltu	a5,s1,800040dc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800040c4:	00000713          	li	a4,0
    800040c8:	000077b7          	lui	a5,0x7
    800040cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040d0:	fce7eee3          	bltu	a5,a4,800040ac <_ZN7WorkerB11workerBodyBEPv+0x20>
    800040d4:	00170713          	addi	a4,a4,1
    800040d8:	ff1ff06f          	j	800040c8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800040dc:	00190913          	addi	s2,s2,1
    800040e0:	00f00793          	li	a5,15
    800040e4:	0527e063          	bltu	a5,s2,80004124 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800040e8:	00006517          	auipc	a0,0x6
    800040ec:	14850513          	addi	a0,a0,328 # 8000a230 <CONSOLE_STATUS+0x220>
    800040f0:	00002097          	auipc	ra,0x2
    800040f4:	f34080e7          	jalr	-204(ra) # 80006024 <_Z11printStringPKc>
    800040f8:	00000613          	li	a2,0
    800040fc:	00a00593          	li	a1,10
    80004100:	0009051b          	sext.w	a0,s2
    80004104:	00002097          	auipc	ra,0x2
    80004108:	0d0080e7          	jalr	208(ra) # 800061d4 <_Z8printIntiii>
    8000410c:	00006517          	auipc	a0,0x6
    80004110:	37c50513          	addi	a0,a0,892 # 8000a488 <CONSOLE_STATUS+0x478>
    80004114:	00002097          	auipc	ra,0x2
    80004118:	f10080e7          	jalr	-240(ra) # 80006024 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000411c:	00000493          	li	s1,0
    80004120:	f99ff06f          	j	800040b8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004124:	00006517          	auipc	a0,0x6
    80004128:	11450513          	addi	a0,a0,276 # 8000a238 <CONSOLE_STATUS+0x228>
    8000412c:	00002097          	auipc	ra,0x2
    80004130:	ef8080e7          	jalr	-264(ra) # 80006024 <_Z11printStringPKc>
    finishedB = true;
    80004134:	00100793          	li	a5,1
    80004138:	00009717          	auipc	a4,0x9
    8000413c:	b4f704a3          	sb	a5,-1207(a4) # 8000cc81 <_ZL9finishedB>
    thread_dispatch();
    80004140:	ffffd097          	auipc	ra,0xffffd
    80004144:	510080e7          	jalr	1296(ra) # 80001650 <thread_dispatch>
}
    80004148:	01813083          	ld	ra,24(sp)
    8000414c:	01013403          	ld	s0,16(sp)
    80004150:	00813483          	ld	s1,8(sp)
    80004154:	00013903          	ld	s2,0(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00113c23          	sd	ra,24(sp)
    80004168:	00813823          	sd	s0,16(sp)
    8000416c:	00913423          	sd	s1,8(sp)
    80004170:	01213023          	sd	s2,0(sp)
    80004174:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004178:	00000493          	li	s1,0
    8000417c:	0400006f          	j	800041bc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004180:	00006517          	auipc	a0,0x6
    80004184:	0c850513          	addi	a0,a0,200 # 8000a248 <CONSOLE_STATUS+0x238>
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	e9c080e7          	jalr	-356(ra) # 80006024 <_Z11printStringPKc>
    80004190:	00000613          	li	a2,0
    80004194:	00a00593          	li	a1,10
    80004198:	00048513          	mv	a0,s1
    8000419c:	00002097          	auipc	ra,0x2
    800041a0:	038080e7          	jalr	56(ra) # 800061d4 <_Z8printIntiii>
    800041a4:	00006517          	auipc	a0,0x6
    800041a8:	2e450513          	addi	a0,a0,740 # 8000a488 <CONSOLE_STATUS+0x478>
    800041ac:	00002097          	auipc	ra,0x2
    800041b0:	e78080e7          	jalr	-392(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800041b4:	0014849b          	addiw	s1,s1,1
    800041b8:	0ff4f493          	andi	s1,s1,255
    800041bc:	00200793          	li	a5,2
    800041c0:	fc97f0e3          	bgeu	a5,s1,80004180 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800041c4:	00006517          	auipc	a0,0x6
    800041c8:	08c50513          	addi	a0,a0,140 # 8000a250 <CONSOLE_STATUS+0x240>
    800041cc:	00002097          	auipc	ra,0x2
    800041d0:	e58080e7          	jalr	-424(ra) # 80006024 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800041d4:	00700313          	li	t1,7
    thread_dispatch();
    800041d8:	ffffd097          	auipc	ra,0xffffd
    800041dc:	478080e7          	jalr	1144(ra) # 80001650 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800041e0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800041e4:	00006517          	auipc	a0,0x6
    800041e8:	07c50513          	addi	a0,a0,124 # 8000a260 <CONSOLE_STATUS+0x250>
    800041ec:	00002097          	auipc	ra,0x2
    800041f0:	e38080e7          	jalr	-456(ra) # 80006024 <_Z11printStringPKc>
    800041f4:	00000613          	li	a2,0
    800041f8:	00a00593          	li	a1,10
    800041fc:	0009051b          	sext.w	a0,s2
    80004200:	00002097          	auipc	ra,0x2
    80004204:	fd4080e7          	jalr	-44(ra) # 800061d4 <_Z8printIntiii>
    80004208:	00006517          	auipc	a0,0x6
    8000420c:	28050513          	addi	a0,a0,640 # 8000a488 <CONSOLE_STATUS+0x478>
    80004210:	00002097          	auipc	ra,0x2
    80004214:	e14080e7          	jalr	-492(ra) # 80006024 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004218:	00c00513          	li	a0,12
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	d30080e7          	jalr	-720(ra) # 80003f4c <_ZL9fibonaccim>
    80004224:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004228:	00006517          	auipc	a0,0x6
    8000422c:	04050513          	addi	a0,a0,64 # 8000a268 <CONSOLE_STATUS+0x258>
    80004230:	00002097          	auipc	ra,0x2
    80004234:	df4080e7          	jalr	-524(ra) # 80006024 <_Z11printStringPKc>
    80004238:	00000613          	li	a2,0
    8000423c:	00a00593          	li	a1,10
    80004240:	0009051b          	sext.w	a0,s2
    80004244:	00002097          	auipc	ra,0x2
    80004248:	f90080e7          	jalr	-112(ra) # 800061d4 <_Z8printIntiii>
    8000424c:	00006517          	auipc	a0,0x6
    80004250:	23c50513          	addi	a0,a0,572 # 8000a488 <CONSOLE_STATUS+0x478>
    80004254:	00002097          	auipc	ra,0x2
    80004258:	dd0080e7          	jalr	-560(ra) # 80006024 <_Z11printStringPKc>
    8000425c:	0400006f          	j	8000429c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004260:	00006517          	auipc	a0,0x6
    80004264:	fe850513          	addi	a0,a0,-24 # 8000a248 <CONSOLE_STATUS+0x238>
    80004268:	00002097          	auipc	ra,0x2
    8000426c:	dbc080e7          	jalr	-580(ra) # 80006024 <_Z11printStringPKc>
    80004270:	00000613          	li	a2,0
    80004274:	00a00593          	li	a1,10
    80004278:	00048513          	mv	a0,s1
    8000427c:	00002097          	auipc	ra,0x2
    80004280:	f58080e7          	jalr	-168(ra) # 800061d4 <_Z8printIntiii>
    80004284:	00006517          	auipc	a0,0x6
    80004288:	20450513          	addi	a0,a0,516 # 8000a488 <CONSOLE_STATUS+0x478>
    8000428c:	00002097          	auipc	ra,0x2
    80004290:	d98080e7          	jalr	-616(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004294:	0014849b          	addiw	s1,s1,1
    80004298:	0ff4f493          	andi	s1,s1,255
    8000429c:	00500793          	li	a5,5
    800042a0:	fc97f0e3          	bgeu	a5,s1,80004260 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800042a4:	00006517          	auipc	a0,0x6
    800042a8:	f7c50513          	addi	a0,a0,-132 # 8000a220 <CONSOLE_STATUS+0x210>
    800042ac:	00002097          	auipc	ra,0x2
    800042b0:	d78080e7          	jalr	-648(ra) # 80006024 <_Z11printStringPKc>
    finishedC = true;
    800042b4:	00100793          	li	a5,1
    800042b8:	00009717          	auipc	a4,0x9
    800042bc:	9cf70523          	sb	a5,-1590(a4) # 8000cc82 <_ZL9finishedC>
    thread_dispatch();
    800042c0:	ffffd097          	auipc	ra,0xffffd
    800042c4:	390080e7          	jalr	912(ra) # 80001650 <thread_dispatch>
}
    800042c8:	01813083          	ld	ra,24(sp)
    800042cc:	01013403          	ld	s0,16(sp)
    800042d0:	00813483          	ld	s1,8(sp)
    800042d4:	00013903          	ld	s2,0(sp)
    800042d8:	02010113          	addi	sp,sp,32
    800042dc:	00008067          	ret

00000000800042e0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800042e0:	fe010113          	addi	sp,sp,-32
    800042e4:	00113c23          	sd	ra,24(sp)
    800042e8:	00813823          	sd	s0,16(sp)
    800042ec:	00913423          	sd	s1,8(sp)
    800042f0:	01213023          	sd	s2,0(sp)
    800042f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800042f8:	00a00493          	li	s1,10
    800042fc:	0400006f          	j	8000433c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004300:	00006517          	auipc	a0,0x6
    80004304:	f7850513          	addi	a0,a0,-136 # 8000a278 <CONSOLE_STATUS+0x268>
    80004308:	00002097          	auipc	ra,0x2
    8000430c:	d1c080e7          	jalr	-740(ra) # 80006024 <_Z11printStringPKc>
    80004310:	00000613          	li	a2,0
    80004314:	00a00593          	li	a1,10
    80004318:	00048513          	mv	a0,s1
    8000431c:	00002097          	auipc	ra,0x2
    80004320:	eb8080e7          	jalr	-328(ra) # 800061d4 <_Z8printIntiii>
    80004324:	00006517          	auipc	a0,0x6
    80004328:	16450513          	addi	a0,a0,356 # 8000a488 <CONSOLE_STATUS+0x478>
    8000432c:	00002097          	auipc	ra,0x2
    80004330:	cf8080e7          	jalr	-776(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004334:	0014849b          	addiw	s1,s1,1
    80004338:	0ff4f493          	andi	s1,s1,255
    8000433c:	00c00793          	li	a5,12
    80004340:	fc97f0e3          	bgeu	a5,s1,80004300 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004344:	00006517          	auipc	a0,0x6
    80004348:	f3c50513          	addi	a0,a0,-196 # 8000a280 <CONSOLE_STATUS+0x270>
    8000434c:	00002097          	auipc	ra,0x2
    80004350:	cd8080e7          	jalr	-808(ra) # 80006024 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004354:	00500313          	li	t1,5
    thread_dispatch();
    80004358:	ffffd097          	auipc	ra,0xffffd
    8000435c:	2f8080e7          	jalr	760(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004360:	01000513          	li	a0,16
    80004364:	00000097          	auipc	ra,0x0
    80004368:	be8080e7          	jalr	-1048(ra) # 80003f4c <_ZL9fibonaccim>
    8000436c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004370:	00006517          	auipc	a0,0x6
    80004374:	f2050513          	addi	a0,a0,-224 # 8000a290 <CONSOLE_STATUS+0x280>
    80004378:	00002097          	auipc	ra,0x2
    8000437c:	cac080e7          	jalr	-852(ra) # 80006024 <_Z11printStringPKc>
    80004380:	00000613          	li	a2,0
    80004384:	00a00593          	li	a1,10
    80004388:	0009051b          	sext.w	a0,s2
    8000438c:	00002097          	auipc	ra,0x2
    80004390:	e48080e7          	jalr	-440(ra) # 800061d4 <_Z8printIntiii>
    80004394:	00006517          	auipc	a0,0x6
    80004398:	0f450513          	addi	a0,a0,244 # 8000a488 <CONSOLE_STATUS+0x478>
    8000439c:	00002097          	auipc	ra,0x2
    800043a0:	c88080e7          	jalr	-888(ra) # 80006024 <_Z11printStringPKc>
    800043a4:	0400006f          	j	800043e4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800043a8:	00006517          	auipc	a0,0x6
    800043ac:	ed050513          	addi	a0,a0,-304 # 8000a278 <CONSOLE_STATUS+0x268>
    800043b0:	00002097          	auipc	ra,0x2
    800043b4:	c74080e7          	jalr	-908(ra) # 80006024 <_Z11printStringPKc>
    800043b8:	00000613          	li	a2,0
    800043bc:	00a00593          	li	a1,10
    800043c0:	00048513          	mv	a0,s1
    800043c4:	00002097          	auipc	ra,0x2
    800043c8:	e10080e7          	jalr	-496(ra) # 800061d4 <_Z8printIntiii>
    800043cc:	00006517          	auipc	a0,0x6
    800043d0:	0bc50513          	addi	a0,a0,188 # 8000a488 <CONSOLE_STATUS+0x478>
    800043d4:	00002097          	auipc	ra,0x2
    800043d8:	c50080e7          	jalr	-944(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800043dc:	0014849b          	addiw	s1,s1,1
    800043e0:	0ff4f493          	andi	s1,s1,255
    800043e4:	00f00793          	li	a5,15
    800043e8:	fc97f0e3          	bgeu	a5,s1,800043a8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800043ec:	00006517          	auipc	a0,0x6
    800043f0:	eb450513          	addi	a0,a0,-332 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800043f4:	00002097          	auipc	ra,0x2
    800043f8:	c30080e7          	jalr	-976(ra) # 80006024 <_Z11printStringPKc>
    finishedD = true;
    800043fc:	00100793          	li	a5,1
    80004400:	00009717          	auipc	a4,0x9
    80004404:	88f701a3          	sb	a5,-1917(a4) # 8000cc83 <_ZL9finishedD>
    thread_dispatch();
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	248080e7          	jalr	584(ra) # 80001650 <thread_dispatch>
}
    80004410:	01813083          	ld	ra,24(sp)
    80004414:	01013403          	ld	s0,16(sp)
    80004418:	00813483          	ld	s1,8(sp)
    8000441c:	00013903          	ld	s2,0(sp)
    80004420:	02010113          	addi	sp,sp,32
    80004424:	00008067          	ret

0000000080004428 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004428:	fc010113          	addi	sp,sp,-64
    8000442c:	02113c23          	sd	ra,56(sp)
    80004430:	02813823          	sd	s0,48(sp)
    80004434:	02913423          	sd	s1,40(sp)
    80004438:	03213023          	sd	s2,32(sp)
    8000443c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004440:	02000513          	li	a0,32
    80004444:	fffff097          	auipc	ra,0xfffff
    80004448:	bc8080e7          	jalr	-1080(ra) # 8000300c <_Znwm>
    8000444c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004450:	fffff097          	auipc	ra,0xfffff
    80004454:	ca4080e7          	jalr	-860(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80004458:	00008797          	auipc	a5,0x8
    8000445c:	33878793          	addi	a5,a5,824 # 8000c790 <_ZTV7WorkerA+0x10>
    80004460:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004464:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004468:	00006517          	auipc	a0,0x6
    8000446c:	e4850513          	addi	a0,a0,-440 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80004470:	00002097          	auipc	ra,0x2
    80004474:	bb4080e7          	jalr	-1100(ra) # 80006024 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004478:	02000513          	li	a0,32
    8000447c:	fffff097          	auipc	ra,0xfffff
    80004480:	b90080e7          	jalr	-1136(ra) # 8000300c <_Znwm>
    80004484:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004488:	fffff097          	auipc	ra,0xfffff
    8000448c:	c6c080e7          	jalr	-916(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80004490:	00008797          	auipc	a5,0x8
    80004494:	32878793          	addi	a5,a5,808 # 8000c7b8 <_ZTV7WorkerB+0x10>
    80004498:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000449c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800044a0:	00006517          	auipc	a0,0x6
    800044a4:	e2850513          	addi	a0,a0,-472 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800044a8:	00002097          	auipc	ra,0x2
    800044ac:	b7c080e7          	jalr	-1156(ra) # 80006024 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800044b0:	02000513          	li	a0,32
    800044b4:	fffff097          	auipc	ra,0xfffff
    800044b8:	b58080e7          	jalr	-1192(ra) # 8000300c <_Znwm>
    800044bc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800044c0:	fffff097          	auipc	ra,0xfffff
    800044c4:	c34080e7          	jalr	-972(ra) # 800030f4 <_ZN6ThreadC1Ev>
    800044c8:	00008797          	auipc	a5,0x8
    800044cc:	31878793          	addi	a5,a5,792 # 8000c7e0 <_ZTV7WorkerC+0x10>
    800044d0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800044d4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800044d8:	00006517          	auipc	a0,0x6
    800044dc:	e0850513          	addi	a0,a0,-504 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800044e0:	00002097          	auipc	ra,0x2
    800044e4:	b44080e7          	jalr	-1212(ra) # 80006024 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800044e8:	02000513          	li	a0,32
    800044ec:	fffff097          	auipc	ra,0xfffff
    800044f0:	b20080e7          	jalr	-1248(ra) # 8000300c <_Znwm>
    800044f4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	bfc080e7          	jalr	-1028(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80004500:	00008797          	auipc	a5,0x8
    80004504:	30878793          	addi	a5,a5,776 # 8000c808 <_ZTV7WorkerD+0x10>
    80004508:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000450c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004510:	00006517          	auipc	a0,0x6
    80004514:	de850513          	addi	a0,a0,-536 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004518:	00002097          	auipc	ra,0x2
    8000451c:	b0c080e7          	jalr	-1268(ra) # 80006024 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004520:	00000493          	li	s1,0
    80004524:	00300793          	li	a5,3
    80004528:	0297c663          	blt	a5,s1,80004554 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000452c:	00349793          	slli	a5,s1,0x3
    80004530:	fe040713          	addi	a4,s0,-32
    80004534:	00f707b3          	add	a5,a4,a5
    80004538:	fe07b503          	ld	a0,-32(a5)
    8000453c:	fffff097          	auipc	ra,0xfffff
    80004540:	be8080e7          	jalr	-1048(ra) # 80003124 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004544:	0014849b          	addiw	s1,s1,1
    80004548:	fddff06f          	j	80004524 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000454c:	fffff097          	auipc	ra,0xfffff
    80004550:	c2c080e7          	jalr	-980(ra) # 80003178 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004554:	00008797          	auipc	a5,0x8
    80004558:	72c7c783          	lbu	a5,1836(a5) # 8000cc80 <_ZL9finishedA>
    8000455c:	fe0788e3          	beqz	a5,8000454c <_Z20Threads_CPP_API_testv+0x124>
    80004560:	00008797          	auipc	a5,0x8
    80004564:	7217c783          	lbu	a5,1825(a5) # 8000cc81 <_ZL9finishedB>
    80004568:	fe0782e3          	beqz	a5,8000454c <_Z20Threads_CPP_API_testv+0x124>
    8000456c:	00008797          	auipc	a5,0x8
    80004570:	7167c783          	lbu	a5,1814(a5) # 8000cc82 <_ZL9finishedC>
    80004574:	fc078ce3          	beqz	a5,8000454c <_Z20Threads_CPP_API_testv+0x124>
    80004578:	00008797          	auipc	a5,0x8
    8000457c:	70b7c783          	lbu	a5,1803(a5) # 8000cc83 <_ZL9finishedD>
    80004580:	fc0786e3          	beqz	a5,8000454c <_Z20Threads_CPP_API_testv+0x124>
    80004584:	fc040493          	addi	s1,s0,-64
    80004588:	0080006f          	j	80004590 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000458c:	00848493          	addi	s1,s1,8
    80004590:	fe040793          	addi	a5,s0,-32
    80004594:	08f48663          	beq	s1,a5,80004620 <_Z20Threads_CPP_API_testv+0x1f8>
    80004598:	0004b503          	ld	a0,0(s1)
    8000459c:	fe0508e3          	beqz	a0,8000458c <_Z20Threads_CPP_API_testv+0x164>
    800045a0:	00053783          	ld	a5,0(a0)
    800045a4:	0087b783          	ld	a5,8(a5)
    800045a8:	000780e7          	jalr	a5
    800045ac:	fe1ff06f          	j	8000458c <_Z20Threads_CPP_API_testv+0x164>
    800045b0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800045b4:	00048513          	mv	a0,s1
    800045b8:	fffff097          	auipc	ra,0xfffff
    800045bc:	a7c080e7          	jalr	-1412(ra) # 80003034 <_ZdlPv>
    800045c0:	00090513          	mv	a0,s2
    800045c4:	00009097          	auipc	ra,0x9
    800045c8:	7c4080e7          	jalr	1988(ra) # 8000dd88 <_Unwind_Resume>
    800045cc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800045d0:	00048513          	mv	a0,s1
    800045d4:	fffff097          	auipc	ra,0xfffff
    800045d8:	a60080e7          	jalr	-1440(ra) # 80003034 <_ZdlPv>
    800045dc:	00090513          	mv	a0,s2
    800045e0:	00009097          	auipc	ra,0x9
    800045e4:	7a8080e7          	jalr	1960(ra) # 8000dd88 <_Unwind_Resume>
    800045e8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800045ec:	00048513          	mv	a0,s1
    800045f0:	fffff097          	auipc	ra,0xfffff
    800045f4:	a44080e7          	jalr	-1468(ra) # 80003034 <_ZdlPv>
    800045f8:	00090513          	mv	a0,s2
    800045fc:	00009097          	auipc	ra,0x9
    80004600:	78c080e7          	jalr	1932(ra) # 8000dd88 <_Unwind_Resume>
    80004604:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004608:	00048513          	mv	a0,s1
    8000460c:	fffff097          	auipc	ra,0xfffff
    80004610:	a28080e7          	jalr	-1496(ra) # 80003034 <_ZdlPv>
    80004614:	00090513          	mv	a0,s2
    80004618:	00009097          	auipc	ra,0x9
    8000461c:	770080e7          	jalr	1904(ra) # 8000dd88 <_Unwind_Resume>
}
    80004620:	03813083          	ld	ra,56(sp)
    80004624:	03013403          	ld	s0,48(sp)
    80004628:	02813483          	ld	s1,40(sp)
    8000462c:	02013903          	ld	s2,32(sp)
    80004630:	04010113          	addi	sp,sp,64
    80004634:	00008067          	ret

0000000080004638 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004638:	ff010113          	addi	sp,sp,-16
    8000463c:	00113423          	sd	ra,8(sp)
    80004640:	00813023          	sd	s0,0(sp)
    80004644:	01010413          	addi	s0,sp,16
    80004648:	00008797          	auipc	a5,0x8
    8000464c:	14878793          	addi	a5,a5,328 # 8000c790 <_ZTV7WorkerA+0x10>
    80004650:	00f53023          	sd	a5,0(a0)
    80004654:	fffff097          	auipc	ra,0xfffff
    80004658:	8e8080e7          	jalr	-1816(ra) # 80002f3c <_ZN6ThreadD1Ev>
    8000465c:	00813083          	ld	ra,8(sp)
    80004660:	00013403          	ld	s0,0(sp)
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00008067          	ret

000000008000466c <_ZN7WorkerAD0Ev>:
    8000466c:	fe010113          	addi	sp,sp,-32
    80004670:	00113c23          	sd	ra,24(sp)
    80004674:	00813823          	sd	s0,16(sp)
    80004678:	00913423          	sd	s1,8(sp)
    8000467c:	02010413          	addi	s0,sp,32
    80004680:	00050493          	mv	s1,a0
    80004684:	00008797          	auipc	a5,0x8
    80004688:	10c78793          	addi	a5,a5,268 # 8000c790 <_ZTV7WorkerA+0x10>
    8000468c:	00f53023          	sd	a5,0(a0)
    80004690:	fffff097          	auipc	ra,0xfffff
    80004694:	8ac080e7          	jalr	-1876(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004698:	00048513          	mv	a0,s1
    8000469c:	fffff097          	auipc	ra,0xfffff
    800046a0:	998080e7          	jalr	-1640(ra) # 80003034 <_ZdlPv>
    800046a4:	01813083          	ld	ra,24(sp)
    800046a8:	01013403          	ld	s0,16(sp)
    800046ac:	00813483          	ld	s1,8(sp)
    800046b0:	02010113          	addi	sp,sp,32
    800046b4:	00008067          	ret

00000000800046b8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800046b8:	ff010113          	addi	sp,sp,-16
    800046bc:	00113423          	sd	ra,8(sp)
    800046c0:	00813023          	sd	s0,0(sp)
    800046c4:	01010413          	addi	s0,sp,16
    800046c8:	00008797          	auipc	a5,0x8
    800046cc:	0f078793          	addi	a5,a5,240 # 8000c7b8 <_ZTV7WorkerB+0x10>
    800046d0:	00f53023          	sd	a5,0(a0)
    800046d4:	fffff097          	auipc	ra,0xfffff
    800046d8:	868080e7          	jalr	-1944(ra) # 80002f3c <_ZN6ThreadD1Ev>
    800046dc:	00813083          	ld	ra,8(sp)
    800046e0:	00013403          	ld	s0,0(sp)
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret

00000000800046ec <_ZN7WorkerBD0Ev>:
    800046ec:	fe010113          	addi	sp,sp,-32
    800046f0:	00113c23          	sd	ra,24(sp)
    800046f4:	00813823          	sd	s0,16(sp)
    800046f8:	00913423          	sd	s1,8(sp)
    800046fc:	02010413          	addi	s0,sp,32
    80004700:	00050493          	mv	s1,a0
    80004704:	00008797          	auipc	a5,0x8
    80004708:	0b478793          	addi	a5,a5,180 # 8000c7b8 <_ZTV7WorkerB+0x10>
    8000470c:	00f53023          	sd	a5,0(a0)
    80004710:	fffff097          	auipc	ra,0xfffff
    80004714:	82c080e7          	jalr	-2004(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004718:	00048513          	mv	a0,s1
    8000471c:	fffff097          	auipc	ra,0xfffff
    80004720:	918080e7          	jalr	-1768(ra) # 80003034 <_ZdlPv>
    80004724:	01813083          	ld	ra,24(sp)
    80004728:	01013403          	ld	s0,16(sp)
    8000472c:	00813483          	ld	s1,8(sp)
    80004730:	02010113          	addi	sp,sp,32
    80004734:	00008067          	ret

0000000080004738 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004738:	ff010113          	addi	sp,sp,-16
    8000473c:	00113423          	sd	ra,8(sp)
    80004740:	00813023          	sd	s0,0(sp)
    80004744:	01010413          	addi	s0,sp,16
    80004748:	00008797          	auipc	a5,0x8
    8000474c:	09878793          	addi	a5,a5,152 # 8000c7e0 <_ZTV7WorkerC+0x10>
    80004750:	00f53023          	sd	a5,0(a0)
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	7e8080e7          	jalr	2024(ra) # 80002f3c <_ZN6ThreadD1Ev>
    8000475c:	00813083          	ld	ra,8(sp)
    80004760:	00013403          	ld	s0,0(sp)
    80004764:	01010113          	addi	sp,sp,16
    80004768:	00008067          	ret

000000008000476c <_ZN7WorkerCD0Ev>:
    8000476c:	fe010113          	addi	sp,sp,-32
    80004770:	00113c23          	sd	ra,24(sp)
    80004774:	00813823          	sd	s0,16(sp)
    80004778:	00913423          	sd	s1,8(sp)
    8000477c:	02010413          	addi	s0,sp,32
    80004780:	00050493          	mv	s1,a0
    80004784:	00008797          	auipc	a5,0x8
    80004788:	05c78793          	addi	a5,a5,92 # 8000c7e0 <_ZTV7WorkerC+0x10>
    8000478c:	00f53023          	sd	a5,0(a0)
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	7ac080e7          	jalr	1964(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004798:	00048513          	mv	a0,s1
    8000479c:	fffff097          	auipc	ra,0xfffff
    800047a0:	898080e7          	jalr	-1896(ra) # 80003034 <_ZdlPv>
    800047a4:	01813083          	ld	ra,24(sp)
    800047a8:	01013403          	ld	s0,16(sp)
    800047ac:	00813483          	ld	s1,8(sp)
    800047b0:	02010113          	addi	sp,sp,32
    800047b4:	00008067          	ret

00000000800047b8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800047b8:	ff010113          	addi	sp,sp,-16
    800047bc:	00113423          	sd	ra,8(sp)
    800047c0:	00813023          	sd	s0,0(sp)
    800047c4:	01010413          	addi	s0,sp,16
    800047c8:	00008797          	auipc	a5,0x8
    800047cc:	04078793          	addi	a5,a5,64 # 8000c808 <_ZTV7WorkerD+0x10>
    800047d0:	00f53023          	sd	a5,0(a0)
    800047d4:	ffffe097          	auipc	ra,0xffffe
    800047d8:	768080e7          	jalr	1896(ra) # 80002f3c <_ZN6ThreadD1Ev>
    800047dc:	00813083          	ld	ra,8(sp)
    800047e0:	00013403          	ld	s0,0(sp)
    800047e4:	01010113          	addi	sp,sp,16
    800047e8:	00008067          	ret

00000000800047ec <_ZN7WorkerDD0Ev>:
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00113c23          	sd	ra,24(sp)
    800047f4:	00813823          	sd	s0,16(sp)
    800047f8:	00913423          	sd	s1,8(sp)
    800047fc:	02010413          	addi	s0,sp,32
    80004800:	00050493          	mv	s1,a0
    80004804:	00008797          	auipc	a5,0x8
    80004808:	00478793          	addi	a5,a5,4 # 8000c808 <_ZTV7WorkerD+0x10>
    8000480c:	00f53023          	sd	a5,0(a0)
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	72c080e7          	jalr	1836(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004818:	00048513          	mv	a0,s1
    8000481c:	fffff097          	auipc	ra,0xfffff
    80004820:	818080e7          	jalr	-2024(ra) # 80003034 <_ZdlPv>
    80004824:	01813083          	ld	ra,24(sp)
    80004828:	01013403          	ld	s0,16(sp)
    8000482c:	00813483          	ld	s1,8(sp)
    80004830:	02010113          	addi	sp,sp,32
    80004834:	00008067          	ret

0000000080004838 <_ZN7WorkerA3runEv>:
    void run() override {
    80004838:	ff010113          	addi	sp,sp,-16
    8000483c:	00113423          	sd	ra,8(sp)
    80004840:	00813023          	sd	s0,0(sp)
    80004844:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004848:	00000593          	li	a1,0
    8000484c:	fffff097          	auipc	ra,0xfffff
    80004850:	774080e7          	jalr	1908(ra) # 80003fc0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004854:	00813083          	ld	ra,8(sp)
    80004858:	00013403          	ld	s0,0(sp)
    8000485c:	01010113          	addi	sp,sp,16
    80004860:	00008067          	ret

0000000080004864 <_ZN7WorkerB3runEv>:
    void run() override {
    80004864:	ff010113          	addi	sp,sp,-16
    80004868:	00113423          	sd	ra,8(sp)
    8000486c:	00813023          	sd	s0,0(sp)
    80004870:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004874:	00000593          	li	a1,0
    80004878:	00000097          	auipc	ra,0x0
    8000487c:	814080e7          	jalr	-2028(ra) # 8000408c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004880:	00813083          	ld	ra,8(sp)
    80004884:	00013403          	ld	s0,0(sp)
    80004888:	01010113          	addi	sp,sp,16
    8000488c:	00008067          	ret

0000000080004890 <_ZN7WorkerC3runEv>:
    void run() override {
    80004890:	ff010113          	addi	sp,sp,-16
    80004894:	00113423          	sd	ra,8(sp)
    80004898:	00813023          	sd	s0,0(sp)
    8000489c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800048a0:	00000593          	li	a1,0
    800048a4:	00000097          	auipc	ra,0x0
    800048a8:	8bc080e7          	jalr	-1860(ra) # 80004160 <_ZN7WorkerC11workerBodyCEPv>
    }
    800048ac:	00813083          	ld	ra,8(sp)
    800048b0:	00013403          	ld	s0,0(sp)
    800048b4:	01010113          	addi	sp,sp,16
    800048b8:	00008067          	ret

00000000800048bc <_ZN7WorkerD3runEv>:
    void run() override {
    800048bc:	ff010113          	addi	sp,sp,-16
    800048c0:	00113423          	sd	ra,8(sp)
    800048c4:	00813023          	sd	s0,0(sp)
    800048c8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800048cc:	00000593          	li	a1,0
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	a10080e7          	jalr	-1520(ra) # 800042e0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800048d8:	00813083          	ld	ra,8(sp)
    800048dc:	00013403          	ld	s0,0(sp)
    800048e0:	01010113          	addi	sp,sp,16
    800048e4:	00008067          	ret

00000000800048e8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800048e8:	f8010113          	addi	sp,sp,-128
    800048ec:	06113c23          	sd	ra,120(sp)
    800048f0:	06813823          	sd	s0,112(sp)
    800048f4:	06913423          	sd	s1,104(sp)
    800048f8:	07213023          	sd	s2,96(sp)
    800048fc:	05313c23          	sd	s3,88(sp)
    80004900:	05413823          	sd	s4,80(sp)
    80004904:	05513423          	sd	s5,72(sp)
    80004908:	05613023          	sd	s6,64(sp)
    8000490c:	03713c23          	sd	s7,56(sp)
    80004910:	03813823          	sd	s8,48(sp)
    80004914:	03913423          	sd	s9,40(sp)
    80004918:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000491c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004920:	00006517          	auipc	a0,0x6
    80004924:	81050513          	addi	a0,a0,-2032 # 8000a130 <CONSOLE_STATUS+0x120>
    80004928:	00001097          	auipc	ra,0x1
    8000492c:	6fc080e7          	jalr	1788(ra) # 80006024 <_Z11printStringPKc>
    getString(input, 30);
    80004930:	01e00593          	li	a1,30
    80004934:	f8040493          	addi	s1,s0,-128
    80004938:	00048513          	mv	a0,s1
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	770080e7          	jalr	1904(ra) # 800060ac <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004944:	00048513          	mv	a0,s1
    80004948:	00002097          	auipc	ra,0x2
    8000494c:	83c080e7          	jalr	-1988(ra) # 80006184 <_Z11stringToIntPKc>
    80004950:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004954:	00005517          	auipc	a0,0x5
    80004958:	7fc50513          	addi	a0,a0,2044 # 8000a150 <CONSOLE_STATUS+0x140>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	6c8080e7          	jalr	1736(ra) # 80006024 <_Z11printStringPKc>
    getString(input, 30);
    80004964:	01e00593          	li	a1,30
    80004968:	00048513          	mv	a0,s1
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	740080e7          	jalr	1856(ra) # 800060ac <_Z9getStringPci>
    n = stringToInt(input);
    80004974:	00048513          	mv	a0,s1
    80004978:	00002097          	auipc	ra,0x2
    8000497c:	80c080e7          	jalr	-2036(ra) # 80006184 <_Z11stringToIntPKc>
    80004980:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004984:	00005517          	auipc	a0,0x5
    80004988:	7ec50513          	addi	a0,a0,2028 # 8000a170 <CONSOLE_STATUS+0x160>
    8000498c:	00001097          	auipc	ra,0x1
    80004990:	698080e7          	jalr	1688(ra) # 80006024 <_Z11printStringPKc>
    printInt(threadNum);
    80004994:	00000613          	li	a2,0
    80004998:	00a00593          	li	a1,10
    8000499c:	00098513          	mv	a0,s3
    800049a0:	00002097          	auipc	ra,0x2
    800049a4:	834080e7          	jalr	-1996(ra) # 800061d4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800049a8:	00005517          	auipc	a0,0x5
    800049ac:	7e050513          	addi	a0,a0,2016 # 8000a188 <CONSOLE_STATUS+0x178>
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	674080e7          	jalr	1652(ra) # 80006024 <_Z11printStringPKc>
    printInt(n);
    800049b8:	00000613          	li	a2,0
    800049bc:	00a00593          	li	a1,10
    800049c0:	00048513          	mv	a0,s1
    800049c4:	00002097          	auipc	ra,0x2
    800049c8:	810080e7          	jalr	-2032(ra) # 800061d4 <_Z8printIntiii>
    printString(".\n");
    800049cc:	00005517          	auipc	a0,0x5
    800049d0:	7d450513          	addi	a0,a0,2004 # 8000a1a0 <CONSOLE_STATUS+0x190>
    800049d4:	00001097          	auipc	ra,0x1
    800049d8:	650080e7          	jalr	1616(ra) # 80006024 <_Z11printStringPKc>
    if (threadNum > n) {
    800049dc:	0334c463          	blt	s1,s3,80004a04 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800049e0:	03305c63          	blez	s3,80004a18 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800049e4:	03800513          	li	a0,56
    800049e8:	ffffe097          	auipc	ra,0xffffe
    800049ec:	624080e7          	jalr	1572(ra) # 8000300c <_Znwm>
    800049f0:	00050a93          	mv	s5,a0
    800049f4:	00048593          	mv	a1,s1
    800049f8:	00002097          	auipc	ra,0x2
    800049fc:	8fc080e7          	jalr	-1796(ra) # 800062f4 <_ZN9BufferCPPC1Ei>
    80004a00:	0300006f          	j	80004a30 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    80004a04:	00006517          	auipc	a0,0x6
    80004a08:	90c50513          	addi	a0,a0,-1780 # 8000a310 <CONSOLE_STATUS+0x300>
    80004a0c:	00001097          	auipc	ra,0x1
    80004a10:	618080e7          	jalr	1560(ra) # 80006024 <_Z11printStringPKc>
        return;
    80004a14:	0140006f          	j	80004a28 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004a18:	00005517          	auipc	a0,0x5
    80004a1c:	7d050513          	addi	a0,a0,2000 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	604080e7          	jalr	1540(ra) # 80006024 <_Z11printStringPKc>
        return;
    80004a28:	000c0113          	mv	sp,s8
    80004a2c:	2140006f          	j	80004c40 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004a30:	01000513          	li	a0,16
    80004a34:	ffffe097          	auipc	ra,0xffffe
    80004a38:	5d8080e7          	jalr	1496(ra) # 8000300c <_Znwm>
    80004a3c:	00050913          	mv	s2,a0
    80004a40:	00000593          	li	a1,0
    80004a44:	ffffe097          	auipc	ra,0xffffe
    80004a48:	784080e7          	jalr	1924(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    80004a4c:	00008797          	auipc	a5,0x8
    80004a50:	2527b223          	sd	s2,580(a5) # 8000cc90 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004a54:	00399793          	slli	a5,s3,0x3
    80004a58:	00f78793          	addi	a5,a5,15
    80004a5c:	ff07f793          	andi	a5,a5,-16
    80004a60:	40f10133          	sub	sp,sp,a5
    80004a64:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004a68:	0019871b          	addiw	a4,s3,1
    80004a6c:	00171793          	slli	a5,a4,0x1
    80004a70:	00e787b3          	add	a5,a5,a4
    80004a74:	00379793          	slli	a5,a5,0x3
    80004a78:	00f78793          	addi	a5,a5,15
    80004a7c:	ff07f793          	andi	a5,a5,-16
    80004a80:	40f10133          	sub	sp,sp,a5
    80004a84:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004a88:	00199493          	slli	s1,s3,0x1
    80004a8c:	013484b3          	add	s1,s1,s3
    80004a90:	00349493          	slli	s1,s1,0x3
    80004a94:	009b04b3          	add	s1,s6,s1
    80004a98:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004a9c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004aa0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004aa4:	02800513          	li	a0,40
    80004aa8:	ffffe097          	auipc	ra,0xffffe
    80004aac:	564080e7          	jalr	1380(ra) # 8000300c <_Znwm>
    80004ab0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004ab4:	ffffe097          	auipc	ra,0xffffe
    80004ab8:	640080e7          	jalr	1600(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80004abc:	00008797          	auipc	a5,0x8
    80004ac0:	dc478793          	addi	a5,a5,-572 # 8000c880 <_ZTV8Consumer+0x10>
    80004ac4:	00fbb023          	sd	a5,0(s7)
    80004ac8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004acc:	000b8513          	mv	a0,s7
    80004ad0:	ffffe097          	auipc	ra,0xffffe
    80004ad4:	654080e7          	jalr	1620(ra) # 80003124 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004ad8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004adc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004ae0:	00008797          	auipc	a5,0x8
    80004ae4:	1b07b783          	ld	a5,432(a5) # 8000cc90 <_ZL10waitForAll>
    80004ae8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004aec:	02800513          	li	a0,40
    80004af0:	ffffe097          	auipc	ra,0xffffe
    80004af4:	51c080e7          	jalr	1308(ra) # 8000300c <_Znwm>
    80004af8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004afc:	ffffe097          	auipc	ra,0xffffe
    80004b00:	5f8080e7          	jalr	1528(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80004b04:	00008797          	auipc	a5,0x8
    80004b08:	d2c78793          	addi	a5,a5,-724 # 8000c830 <_ZTV16ProducerKeyborad+0x10>
    80004b0c:	00f4b023          	sd	a5,0(s1)
    80004b10:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004b14:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	ffffe097          	auipc	ra,0xffffe
    80004b20:	608080e7          	jalr	1544(ra) # 80003124 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004b24:	00100913          	li	s2,1
    80004b28:	0300006f          	j	80004b58 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004b2c:	00008797          	auipc	a5,0x8
    80004b30:	d2c78793          	addi	a5,a5,-724 # 8000c858 <_ZTV8Producer+0x10>
    80004b34:	00fcb023          	sd	a5,0(s9)
    80004b38:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004b3c:	00391793          	slli	a5,s2,0x3
    80004b40:	00fa07b3          	add	a5,s4,a5
    80004b44:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004b48:	000c8513          	mv	a0,s9
    80004b4c:	ffffe097          	auipc	ra,0xffffe
    80004b50:	5d8080e7          	jalr	1496(ra) # 80003124 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004b54:	0019091b          	addiw	s2,s2,1
    80004b58:	05395263          	bge	s2,s3,80004b9c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004b5c:	00191493          	slli	s1,s2,0x1
    80004b60:	012484b3          	add	s1,s1,s2
    80004b64:	00349493          	slli	s1,s1,0x3
    80004b68:	009b04b3          	add	s1,s6,s1
    80004b6c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004b70:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004b74:	00008797          	auipc	a5,0x8
    80004b78:	11c7b783          	ld	a5,284(a5) # 8000cc90 <_ZL10waitForAll>
    80004b7c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004b80:	02800513          	li	a0,40
    80004b84:	ffffe097          	auipc	ra,0xffffe
    80004b88:	488080e7          	jalr	1160(ra) # 8000300c <_Znwm>
    80004b8c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004b90:	ffffe097          	auipc	ra,0xffffe
    80004b94:	564080e7          	jalr	1380(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80004b98:	f95ff06f          	j	80004b2c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004b9c:	ffffe097          	auipc	ra,0xffffe
    80004ba0:	5dc080e7          	jalr	1500(ra) # 80003178 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ba4:	00000493          	li	s1,0
    80004ba8:	0099ce63          	blt	s3,s1,80004bc4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004bac:	00008517          	auipc	a0,0x8
    80004bb0:	0e453503          	ld	a0,228(a0) # 8000cc90 <_ZL10waitForAll>
    80004bb4:	ffffe097          	auipc	ra,0xffffe
    80004bb8:	64c080e7          	jalr	1612(ra) # 80003200 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004bbc:	0014849b          	addiw	s1,s1,1
    80004bc0:	fe9ff06f          	j	80004ba8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004bc4:	00008517          	auipc	a0,0x8
    80004bc8:	0cc53503          	ld	a0,204(a0) # 8000cc90 <_ZL10waitForAll>
    80004bcc:	00050863          	beqz	a0,80004bdc <_Z20testConsumerProducerv+0x2f4>
    80004bd0:	00053783          	ld	a5,0(a0)
    80004bd4:	0087b783          	ld	a5,8(a5)
    80004bd8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004bdc:	00000493          	li	s1,0
    80004be0:	0080006f          	j	80004be8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004be4:	0014849b          	addiw	s1,s1,1
    80004be8:	0334d263          	bge	s1,s3,80004c0c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004bec:	00349793          	slli	a5,s1,0x3
    80004bf0:	00fa07b3          	add	a5,s4,a5
    80004bf4:	0007b503          	ld	a0,0(a5)
    80004bf8:	fe0506e3          	beqz	a0,80004be4 <_Z20testConsumerProducerv+0x2fc>
    80004bfc:	00053783          	ld	a5,0(a0)
    80004c00:	0087b783          	ld	a5,8(a5)
    80004c04:	000780e7          	jalr	a5
    80004c08:	fddff06f          	j	80004be4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004c0c:	000b8a63          	beqz	s7,80004c20 <_Z20testConsumerProducerv+0x338>
    80004c10:	000bb783          	ld	a5,0(s7)
    80004c14:	0087b783          	ld	a5,8(a5)
    80004c18:	000b8513          	mv	a0,s7
    80004c1c:	000780e7          	jalr	a5
    delete buffer;
    80004c20:	000a8e63          	beqz	s5,80004c3c <_Z20testConsumerProducerv+0x354>
    80004c24:	000a8513          	mv	a0,s5
    80004c28:	00002097          	auipc	ra,0x2
    80004c2c:	9c4080e7          	jalr	-1596(ra) # 800065ec <_ZN9BufferCPPD1Ev>
    80004c30:	000a8513          	mv	a0,s5
    80004c34:	ffffe097          	auipc	ra,0xffffe
    80004c38:	400080e7          	jalr	1024(ra) # 80003034 <_ZdlPv>
    80004c3c:	000c0113          	mv	sp,s8
}
    80004c40:	f8040113          	addi	sp,s0,-128
    80004c44:	07813083          	ld	ra,120(sp)
    80004c48:	07013403          	ld	s0,112(sp)
    80004c4c:	06813483          	ld	s1,104(sp)
    80004c50:	06013903          	ld	s2,96(sp)
    80004c54:	05813983          	ld	s3,88(sp)
    80004c58:	05013a03          	ld	s4,80(sp)
    80004c5c:	04813a83          	ld	s5,72(sp)
    80004c60:	04013b03          	ld	s6,64(sp)
    80004c64:	03813b83          	ld	s7,56(sp)
    80004c68:	03013c03          	ld	s8,48(sp)
    80004c6c:	02813c83          	ld	s9,40(sp)
    80004c70:	08010113          	addi	sp,sp,128
    80004c74:	00008067          	ret
    80004c78:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004c7c:	000a8513          	mv	a0,s5
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	3b4080e7          	jalr	948(ra) # 80003034 <_ZdlPv>
    80004c88:	00048513          	mv	a0,s1
    80004c8c:	00009097          	auipc	ra,0x9
    80004c90:	0fc080e7          	jalr	252(ra) # 8000dd88 <_Unwind_Resume>
    80004c94:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004c98:	00090513          	mv	a0,s2
    80004c9c:	ffffe097          	auipc	ra,0xffffe
    80004ca0:	398080e7          	jalr	920(ra) # 80003034 <_ZdlPv>
    80004ca4:	00048513          	mv	a0,s1
    80004ca8:	00009097          	auipc	ra,0x9
    80004cac:	0e0080e7          	jalr	224(ra) # 8000dd88 <_Unwind_Resume>
    80004cb0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004cb4:	000b8513          	mv	a0,s7
    80004cb8:	ffffe097          	auipc	ra,0xffffe
    80004cbc:	37c080e7          	jalr	892(ra) # 80003034 <_ZdlPv>
    80004cc0:	00048513          	mv	a0,s1
    80004cc4:	00009097          	auipc	ra,0x9
    80004cc8:	0c4080e7          	jalr	196(ra) # 8000dd88 <_Unwind_Resume>
    80004ccc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004cd0:	00048513          	mv	a0,s1
    80004cd4:	ffffe097          	auipc	ra,0xffffe
    80004cd8:	360080e7          	jalr	864(ra) # 80003034 <_ZdlPv>
    80004cdc:	00090513          	mv	a0,s2
    80004ce0:	00009097          	auipc	ra,0x9
    80004ce4:	0a8080e7          	jalr	168(ra) # 8000dd88 <_Unwind_Resume>
    80004ce8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004cec:	000c8513          	mv	a0,s9
    80004cf0:	ffffe097          	auipc	ra,0xffffe
    80004cf4:	344080e7          	jalr	836(ra) # 80003034 <_ZdlPv>
    80004cf8:	00048513          	mv	a0,s1
    80004cfc:	00009097          	auipc	ra,0x9
    80004d00:	08c080e7          	jalr	140(ra) # 8000dd88 <_Unwind_Resume>

0000000080004d04 <_ZN8Consumer3runEv>:
    void run() override {
    80004d04:	fd010113          	addi	sp,sp,-48
    80004d08:	02113423          	sd	ra,40(sp)
    80004d0c:	02813023          	sd	s0,32(sp)
    80004d10:	00913c23          	sd	s1,24(sp)
    80004d14:	01213823          	sd	s2,16(sp)
    80004d18:	01313423          	sd	s3,8(sp)
    80004d1c:	03010413          	addi	s0,sp,48
    80004d20:	00050913          	mv	s2,a0
        int i = 0;
    80004d24:	00000993          	li	s3,0
    80004d28:	0100006f          	j	80004d38 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004d2c:	00a00513          	li	a0,10
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	5bc080e7          	jalr	1468(ra) # 800032ec <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004d38:	00008797          	auipc	a5,0x8
    80004d3c:	f507a783          	lw	a5,-176(a5) # 8000cc88 <_ZL9threadEnd>
    80004d40:	04079a63          	bnez	a5,80004d94 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004d44:	02093783          	ld	a5,32(s2)
    80004d48:	0087b503          	ld	a0,8(a5)
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	78c080e7          	jalr	1932(ra) # 800064d8 <_ZN9BufferCPP3getEv>
            i++;
    80004d54:	0019849b          	addiw	s1,s3,1
    80004d58:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004d5c:	0ff57513          	andi	a0,a0,255
    80004d60:	ffffe097          	auipc	ra,0xffffe
    80004d64:	58c080e7          	jalr	1420(ra) # 800032ec <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004d68:	05000793          	li	a5,80
    80004d6c:	02f4e4bb          	remw	s1,s1,a5
    80004d70:	fc0494e3          	bnez	s1,80004d38 <_ZN8Consumer3runEv+0x34>
    80004d74:	fb9ff06f          	j	80004d2c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004d78:	02093783          	ld	a5,32(s2)
    80004d7c:	0087b503          	ld	a0,8(a5)
    80004d80:	00001097          	auipc	ra,0x1
    80004d84:	758080e7          	jalr	1880(ra) # 800064d8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004d88:	0ff57513          	andi	a0,a0,255
    80004d8c:	ffffe097          	auipc	ra,0xffffe
    80004d90:	560080e7          	jalr	1376(ra) # 800032ec <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004d94:	02093783          	ld	a5,32(s2)
    80004d98:	0087b503          	ld	a0,8(a5)
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	7c8080e7          	jalr	1992(ra) # 80006564 <_ZN9BufferCPP6getCntEv>
    80004da4:	fca04ae3          	bgtz	a0,80004d78 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004da8:	02093783          	ld	a5,32(s2)
    80004dac:	0107b503          	ld	a0,16(a5)
    80004db0:	ffffe097          	auipc	ra,0xffffe
    80004db4:	47c080e7          	jalr	1148(ra) # 8000322c <_ZN9Semaphore6signalEv>
    }
    80004db8:	02813083          	ld	ra,40(sp)
    80004dbc:	02013403          	ld	s0,32(sp)
    80004dc0:	01813483          	ld	s1,24(sp)
    80004dc4:	01013903          	ld	s2,16(sp)
    80004dc8:	00813983          	ld	s3,8(sp)
    80004dcc:	03010113          	addi	sp,sp,48
    80004dd0:	00008067          	ret

0000000080004dd4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004dd4:	ff010113          	addi	sp,sp,-16
    80004dd8:	00113423          	sd	ra,8(sp)
    80004ddc:	00813023          	sd	s0,0(sp)
    80004de0:	01010413          	addi	s0,sp,16
    80004de4:	00008797          	auipc	a5,0x8
    80004de8:	a9c78793          	addi	a5,a5,-1380 # 8000c880 <_ZTV8Consumer+0x10>
    80004dec:	00f53023          	sd	a5,0(a0)
    80004df0:	ffffe097          	auipc	ra,0xffffe
    80004df4:	14c080e7          	jalr	332(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004df8:	00813083          	ld	ra,8(sp)
    80004dfc:	00013403          	ld	s0,0(sp)
    80004e00:	01010113          	addi	sp,sp,16
    80004e04:	00008067          	ret

0000000080004e08 <_ZN8ConsumerD0Ev>:
    80004e08:	fe010113          	addi	sp,sp,-32
    80004e0c:	00113c23          	sd	ra,24(sp)
    80004e10:	00813823          	sd	s0,16(sp)
    80004e14:	00913423          	sd	s1,8(sp)
    80004e18:	02010413          	addi	s0,sp,32
    80004e1c:	00050493          	mv	s1,a0
    80004e20:	00008797          	auipc	a5,0x8
    80004e24:	a6078793          	addi	a5,a5,-1440 # 8000c880 <_ZTV8Consumer+0x10>
    80004e28:	00f53023          	sd	a5,0(a0)
    80004e2c:	ffffe097          	auipc	ra,0xffffe
    80004e30:	110080e7          	jalr	272(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004e34:	00048513          	mv	a0,s1
    80004e38:	ffffe097          	auipc	ra,0xffffe
    80004e3c:	1fc080e7          	jalr	508(ra) # 80003034 <_ZdlPv>
    80004e40:	01813083          	ld	ra,24(sp)
    80004e44:	01013403          	ld	s0,16(sp)
    80004e48:	00813483          	ld	s1,8(sp)
    80004e4c:	02010113          	addi	sp,sp,32
    80004e50:	00008067          	ret

0000000080004e54 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004e54:	ff010113          	addi	sp,sp,-16
    80004e58:	00113423          	sd	ra,8(sp)
    80004e5c:	00813023          	sd	s0,0(sp)
    80004e60:	01010413          	addi	s0,sp,16
    80004e64:	00008797          	auipc	a5,0x8
    80004e68:	9cc78793          	addi	a5,a5,-1588 # 8000c830 <_ZTV16ProducerKeyborad+0x10>
    80004e6c:	00f53023          	sd	a5,0(a0)
    80004e70:	ffffe097          	auipc	ra,0xffffe
    80004e74:	0cc080e7          	jalr	204(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004e78:	00813083          	ld	ra,8(sp)
    80004e7c:	00013403          	ld	s0,0(sp)
    80004e80:	01010113          	addi	sp,sp,16
    80004e84:	00008067          	ret

0000000080004e88 <_ZN16ProducerKeyboradD0Ev>:
    80004e88:	fe010113          	addi	sp,sp,-32
    80004e8c:	00113c23          	sd	ra,24(sp)
    80004e90:	00813823          	sd	s0,16(sp)
    80004e94:	00913423          	sd	s1,8(sp)
    80004e98:	02010413          	addi	s0,sp,32
    80004e9c:	00050493          	mv	s1,a0
    80004ea0:	00008797          	auipc	a5,0x8
    80004ea4:	99078793          	addi	a5,a5,-1648 # 8000c830 <_ZTV16ProducerKeyborad+0x10>
    80004ea8:	00f53023          	sd	a5,0(a0)
    80004eac:	ffffe097          	auipc	ra,0xffffe
    80004eb0:	090080e7          	jalr	144(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004eb4:	00048513          	mv	a0,s1
    80004eb8:	ffffe097          	auipc	ra,0xffffe
    80004ebc:	17c080e7          	jalr	380(ra) # 80003034 <_ZdlPv>
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	02010113          	addi	sp,sp,32
    80004ed0:	00008067          	ret

0000000080004ed4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004ed4:	ff010113          	addi	sp,sp,-16
    80004ed8:	00113423          	sd	ra,8(sp)
    80004edc:	00813023          	sd	s0,0(sp)
    80004ee0:	01010413          	addi	s0,sp,16
    80004ee4:	00008797          	auipc	a5,0x8
    80004ee8:	97478793          	addi	a5,a5,-1676 # 8000c858 <_ZTV8Producer+0x10>
    80004eec:	00f53023          	sd	a5,0(a0)
    80004ef0:	ffffe097          	auipc	ra,0xffffe
    80004ef4:	04c080e7          	jalr	76(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004ef8:	00813083          	ld	ra,8(sp)
    80004efc:	00013403          	ld	s0,0(sp)
    80004f00:	01010113          	addi	sp,sp,16
    80004f04:	00008067          	ret

0000000080004f08 <_ZN8ProducerD0Ev>:
    80004f08:	fe010113          	addi	sp,sp,-32
    80004f0c:	00113c23          	sd	ra,24(sp)
    80004f10:	00813823          	sd	s0,16(sp)
    80004f14:	00913423          	sd	s1,8(sp)
    80004f18:	02010413          	addi	s0,sp,32
    80004f1c:	00050493          	mv	s1,a0
    80004f20:	00008797          	auipc	a5,0x8
    80004f24:	93878793          	addi	a5,a5,-1736 # 8000c858 <_ZTV8Producer+0x10>
    80004f28:	00f53023          	sd	a5,0(a0)
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	010080e7          	jalr	16(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80004f34:	00048513          	mv	a0,s1
    80004f38:	ffffe097          	auipc	ra,0xffffe
    80004f3c:	0fc080e7          	jalr	252(ra) # 80003034 <_ZdlPv>
    80004f40:	01813083          	ld	ra,24(sp)
    80004f44:	01013403          	ld	s0,16(sp)
    80004f48:	00813483          	ld	s1,8(sp)
    80004f4c:	02010113          	addi	sp,sp,32
    80004f50:	00008067          	ret

0000000080004f54 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004f54:	fe010113          	addi	sp,sp,-32
    80004f58:	00113c23          	sd	ra,24(sp)
    80004f5c:	00813823          	sd	s0,16(sp)
    80004f60:	00913423          	sd	s1,8(sp)
    80004f64:	02010413          	addi	s0,sp,32
    80004f68:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	814080e7          	jalr	-2028(ra) # 80001780 <getc>
    80004f74:	0005059b          	sext.w	a1,a0
    80004f78:	01b00793          	li	a5,27
    80004f7c:	00f58c63          	beq	a1,a5,80004f94 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004f80:	0204b783          	ld	a5,32(s1)
    80004f84:	0087b503          	ld	a0,8(a5)
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	4c0080e7          	jalr	1216(ra) # 80006448 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004f90:	fddff06f          	j	80004f6c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004f94:	00100793          	li	a5,1
    80004f98:	00008717          	auipc	a4,0x8
    80004f9c:	cef72823          	sw	a5,-784(a4) # 8000cc88 <_ZL9threadEnd>
        td->buffer->put('!');
    80004fa0:	0204b783          	ld	a5,32(s1)
    80004fa4:	02100593          	li	a1,33
    80004fa8:	0087b503          	ld	a0,8(a5)
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	49c080e7          	jalr	1180(ra) # 80006448 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004fb4:	0204b783          	ld	a5,32(s1)
    80004fb8:	0107b503          	ld	a0,16(a5)
    80004fbc:	ffffe097          	auipc	ra,0xffffe
    80004fc0:	270080e7          	jalr	624(ra) # 8000322c <_ZN9Semaphore6signalEv>
    }
    80004fc4:	01813083          	ld	ra,24(sp)
    80004fc8:	01013403          	ld	s0,16(sp)
    80004fcc:	00813483          	ld	s1,8(sp)
    80004fd0:	02010113          	addi	sp,sp,32
    80004fd4:	00008067          	ret

0000000080004fd8 <_ZN8Producer3runEv>:
    void run() override {
    80004fd8:	fe010113          	addi	sp,sp,-32
    80004fdc:	00113c23          	sd	ra,24(sp)
    80004fe0:	00813823          	sd	s0,16(sp)
    80004fe4:	00913423          	sd	s1,8(sp)
    80004fe8:	01213023          	sd	s2,0(sp)
    80004fec:	02010413          	addi	s0,sp,32
    80004ff0:	00050493          	mv	s1,a0
        int i = 0;
    80004ff4:	00000913          	li	s2,0
        while (!threadEnd) {
    80004ff8:	00008797          	auipc	a5,0x8
    80004ffc:	c907a783          	lw	a5,-880(a5) # 8000cc88 <_ZL9threadEnd>
    80005000:	04079263          	bnez	a5,80005044 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80005004:	0204b783          	ld	a5,32(s1)
    80005008:	0007a583          	lw	a1,0(a5)
    8000500c:	0305859b          	addiw	a1,a1,48
    80005010:	0087b503          	ld	a0,8(a5)
    80005014:	00001097          	auipc	ra,0x1
    80005018:	434080e7          	jalr	1076(ra) # 80006448 <_ZN9BufferCPP3putEi>
            i++;
    8000501c:	0019071b          	addiw	a4,s2,1
    80005020:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80005024:	0204b783          	ld	a5,32(s1)
    80005028:	0007a783          	lw	a5,0(a5)
    8000502c:	00e787bb          	addw	a5,a5,a4
    80005030:	00500513          	li	a0,5
    80005034:	02a7e53b          	remw	a0,a5,a0
    80005038:	ffffe097          	auipc	ra,0xffffe
    8000503c:	168080e7          	jalr	360(ra) # 800031a0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80005040:	fb9ff06f          	j	80004ff8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80005044:	0204b783          	ld	a5,32(s1)
    80005048:	0107b503          	ld	a0,16(a5)
    8000504c:	ffffe097          	auipc	ra,0xffffe
    80005050:	1e0080e7          	jalr	480(ra) # 8000322c <_ZN9Semaphore6signalEv>
    }
    80005054:	01813083          	ld	ra,24(sp)
    80005058:	01013403          	ld	s0,16(sp)
    8000505c:	00813483          	ld	s1,8(sp)
    80005060:	00013903          	ld	s2,0(sp)
    80005064:	02010113          	addi	sp,sp,32
    80005068:	00008067          	ret

000000008000506c <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    8000506c:	fe010113          	addi	sp,sp,-32
    80005070:	00113c23          	sd	ra,24(sp)
    80005074:	00813823          	sd	s0,16(sp)
    80005078:	00913423          	sd	s1,8(sp)
    8000507c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005080:	00005517          	auipc	a0,0x5
    80005084:	2c850513          	addi	a0,a0,712 # 8000a348 <CONSOLE_STATUS+0x338>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	f9c080e7          	jalr	-100(ra) # 80006024 <_Z11printStringPKc>
    int test = getc() - '0';
    80005090:	ffffc097          	auipc	ra,0xffffc
    80005094:	6f0080e7          	jalr	1776(ra) # 80001780 <getc>
    80005098:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000509c:	ffffc097          	auipc	ra,0xffffc
    800050a0:	6e4080e7          	jalr	1764(ra) # 80001780 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800050a4:	00700793          	li	a5,7
    800050a8:	1097e263          	bltu	a5,s1,800051ac <_Z8userMainv+0x140>
    800050ac:	00249493          	slli	s1,s1,0x2
    800050b0:	00005717          	auipc	a4,0x5
    800050b4:	4f070713          	addi	a4,a4,1264 # 8000a5a0 <CONSOLE_STATUS+0x590>
    800050b8:	00e484b3          	add	s1,s1,a4
    800050bc:	0004a783          	lw	a5,0(s1)
    800050c0:	00e787b3          	add	a5,a5,a4
    800050c4:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800050c8:	00000097          	auipc	ra,0x0
    800050cc:	5d4080e7          	jalr	1492(ra) # 8000569c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800050d0:	00005517          	auipc	a0,0x5
    800050d4:	29850513          	addi	a0,a0,664 # 8000a368 <CONSOLE_STATUS+0x358>
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	f4c080e7          	jalr	-180(ra) # 80006024 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    800050e0:	01813083          	ld	ra,24(sp)
    800050e4:	01013403          	ld	s0,16(sp)
    800050e8:	00813483          	ld	s1,8(sp)
    800050ec:	02010113          	addi	sp,sp,32
    800050f0:	00008067          	ret
            Threads_CPP_API_test();
    800050f4:	fffff097          	auipc	ra,0xfffff
    800050f8:	334080e7          	jalr	820(ra) # 80004428 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800050fc:	00005517          	auipc	a0,0x5
    80005100:	2ac50513          	addi	a0,a0,684 # 8000a3a8 <CONSOLE_STATUS+0x398>
    80005104:	00001097          	auipc	ra,0x1
    80005108:	f20080e7          	jalr	-224(ra) # 80006024 <_Z11printStringPKc>
            break;
    8000510c:	fd5ff06f          	j	800050e0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005110:	fffff097          	auipc	ra,0xfffff
    80005114:	b6c080e7          	jalr	-1172(ra) # 80003c7c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005118:	00005517          	auipc	a0,0x5
    8000511c:	2d050513          	addi	a0,a0,720 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80005120:	00001097          	auipc	ra,0x1
    80005124:	f04080e7          	jalr	-252(ra) # 80006024 <_Z11printStringPKc>
            break;
    80005128:	fb9ff06f          	j	800050e0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	8b4080e7          	jalr	-1868(ra) # 800059e0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005134:	00005517          	auipc	a0,0x5
    80005138:	30450513          	addi	a0,a0,772 # 8000a438 <CONSOLE_STATUS+0x428>
    8000513c:	00001097          	auipc	ra,0x1
    80005140:	ee8080e7          	jalr	-280(ra) # 80006024 <_Z11printStringPKc>
            break;
    80005144:	f9dff06f          	j	800050e0 <_Z8userMainv+0x74>
            testSleeping();
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	648080e7          	jalr	1608(ra) # 80006790 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005150:	00005517          	auipc	a0,0x5
    80005154:	34050513          	addi	a0,a0,832 # 8000a490 <CONSOLE_STATUS+0x480>
    80005158:	00001097          	auipc	ra,0x1
    8000515c:	ecc080e7          	jalr	-308(ra) # 80006024 <_Z11printStringPKc>
            break;
    80005160:	f81ff06f          	j	800050e0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005164:	fffff097          	auipc	ra,0xfffff
    80005168:	784080e7          	jalr	1924(ra) # 800048e8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000516c:	00005517          	auipc	a0,0x5
    80005170:	35450513          	addi	a0,a0,852 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005174:	00001097          	auipc	ra,0x1
    80005178:	eb0080e7          	jalr	-336(ra) # 80006024 <_Z11printStringPKc>
            break;
    8000517c:	f65ff06f          	j	800050e0 <_Z8userMainv+0x74>
            System_Mode_test();
    80005180:	00002097          	auipc	ra,0x2
    80005184:	b84080e7          	jalr	-1148(ra) # 80006d04 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005188:	00005517          	auipc	a0,0x5
    8000518c:	37850513          	addi	a0,a0,888 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80005190:	00001097          	auipc	ra,0x1
    80005194:	e94080e7          	jalr	-364(ra) # 80006024 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005198:	00005517          	auipc	a0,0x5
    8000519c:	38850513          	addi	a0,a0,904 # 8000a520 <CONSOLE_STATUS+0x510>
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	e84080e7          	jalr	-380(ra) # 80006024 <_Z11printStringPKc>
            break;
    800051a8:	f39ff06f          	j	800050e0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800051ac:	00005517          	auipc	a0,0x5
    800051b0:	3cc50513          	addi	a0,a0,972 # 8000a578 <CONSOLE_STATUS+0x568>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	e70080e7          	jalr	-400(ra) # 80006024 <_Z11printStringPKc>
    800051bc:	f25ff06f          	j	800050e0 <_Z8userMainv+0x74>

00000000800051c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800051c0:	fe010113          	addi	sp,sp,-32
    800051c4:	00113c23          	sd	ra,24(sp)
    800051c8:	00813823          	sd	s0,16(sp)
    800051cc:	00913423          	sd	s1,8(sp)
    800051d0:	01213023          	sd	s2,0(sp)
    800051d4:	02010413          	addi	s0,sp,32
    800051d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800051dc:	00100793          	li	a5,1
    800051e0:	02a7f863          	bgeu	a5,a0,80005210 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800051e4:	00a00793          	li	a5,10
    800051e8:	02f577b3          	remu	a5,a0,a5
    800051ec:	02078e63          	beqz	a5,80005228 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800051f0:	fff48513          	addi	a0,s1,-1
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	fcc080e7          	jalr	-52(ra) # 800051c0 <_ZL9fibonaccim>
    800051fc:	00050913          	mv	s2,a0
    80005200:	ffe48513          	addi	a0,s1,-2
    80005204:	00000097          	auipc	ra,0x0
    80005208:	fbc080e7          	jalr	-68(ra) # 800051c0 <_ZL9fibonaccim>
    8000520c:	00a90533          	add	a0,s2,a0
}
    80005210:	01813083          	ld	ra,24(sp)
    80005214:	01013403          	ld	s0,16(sp)
    80005218:	00813483          	ld	s1,8(sp)
    8000521c:	00013903          	ld	s2,0(sp)
    80005220:	02010113          	addi	sp,sp,32
    80005224:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	428080e7          	jalr	1064(ra) # 80001650 <thread_dispatch>
    80005230:	fc1ff06f          	j	800051f0 <_ZL9fibonaccim+0x30>

0000000080005234 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005234:	fe010113          	addi	sp,sp,-32
    80005238:	00113c23          	sd	ra,24(sp)
    8000523c:	00813823          	sd	s0,16(sp)
    80005240:	00913423          	sd	s1,8(sp)
    80005244:	01213023          	sd	s2,0(sp)
    80005248:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000524c:	00a00493          	li	s1,10
    80005250:	0400006f          	j	80005290 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005254:	00005517          	auipc	a0,0x5
    80005258:	02450513          	addi	a0,a0,36 # 8000a278 <CONSOLE_STATUS+0x268>
    8000525c:	00001097          	auipc	ra,0x1
    80005260:	dc8080e7          	jalr	-568(ra) # 80006024 <_Z11printStringPKc>
    80005264:	00000613          	li	a2,0
    80005268:	00a00593          	li	a1,10
    8000526c:	00048513          	mv	a0,s1
    80005270:	00001097          	auipc	ra,0x1
    80005274:	f64080e7          	jalr	-156(ra) # 800061d4 <_Z8printIntiii>
    80005278:	00005517          	auipc	a0,0x5
    8000527c:	21050513          	addi	a0,a0,528 # 8000a488 <CONSOLE_STATUS+0x478>
    80005280:	00001097          	auipc	ra,0x1
    80005284:	da4080e7          	jalr	-604(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005288:	0014849b          	addiw	s1,s1,1
    8000528c:	0ff4f493          	andi	s1,s1,255
    80005290:	00c00793          	li	a5,12
    80005294:	fc97f0e3          	bgeu	a5,s1,80005254 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005298:	00005517          	auipc	a0,0x5
    8000529c:	fe850513          	addi	a0,a0,-24 # 8000a280 <CONSOLE_STATUS+0x270>
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	d84080e7          	jalr	-636(ra) # 80006024 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800052a8:	00500313          	li	t1,5
    thread_dispatch();
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	3a4080e7          	jalr	932(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    800052b4:	01000513          	li	a0,16
    800052b8:	00000097          	auipc	ra,0x0
    800052bc:	f08080e7          	jalr	-248(ra) # 800051c0 <_ZL9fibonaccim>
    800052c0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800052c4:	00005517          	auipc	a0,0x5
    800052c8:	fcc50513          	addi	a0,a0,-52 # 8000a290 <CONSOLE_STATUS+0x280>
    800052cc:	00001097          	auipc	ra,0x1
    800052d0:	d58080e7          	jalr	-680(ra) # 80006024 <_Z11printStringPKc>
    800052d4:	00000613          	li	a2,0
    800052d8:	00a00593          	li	a1,10
    800052dc:	0009051b          	sext.w	a0,s2
    800052e0:	00001097          	auipc	ra,0x1
    800052e4:	ef4080e7          	jalr	-268(ra) # 800061d4 <_Z8printIntiii>
    800052e8:	00005517          	auipc	a0,0x5
    800052ec:	1a050513          	addi	a0,a0,416 # 8000a488 <CONSOLE_STATUS+0x478>
    800052f0:	00001097          	auipc	ra,0x1
    800052f4:	d34080e7          	jalr	-716(ra) # 80006024 <_Z11printStringPKc>
    800052f8:	0400006f          	j	80005338 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052fc:	00005517          	auipc	a0,0x5
    80005300:	f7c50513          	addi	a0,a0,-132 # 8000a278 <CONSOLE_STATUS+0x268>
    80005304:	00001097          	auipc	ra,0x1
    80005308:	d20080e7          	jalr	-736(ra) # 80006024 <_Z11printStringPKc>
    8000530c:	00000613          	li	a2,0
    80005310:	00a00593          	li	a1,10
    80005314:	00048513          	mv	a0,s1
    80005318:	00001097          	auipc	ra,0x1
    8000531c:	ebc080e7          	jalr	-324(ra) # 800061d4 <_Z8printIntiii>
    80005320:	00005517          	auipc	a0,0x5
    80005324:	16850513          	addi	a0,a0,360 # 8000a488 <CONSOLE_STATUS+0x478>
    80005328:	00001097          	auipc	ra,0x1
    8000532c:	cfc080e7          	jalr	-772(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005330:	0014849b          	addiw	s1,s1,1
    80005334:	0ff4f493          	andi	s1,s1,255
    80005338:	00f00793          	li	a5,15
    8000533c:	fc97f0e3          	bgeu	a5,s1,800052fc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005340:	00005517          	auipc	a0,0x5
    80005344:	f6050513          	addi	a0,a0,-160 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005348:	00001097          	auipc	ra,0x1
    8000534c:	cdc080e7          	jalr	-804(ra) # 80006024 <_Z11printStringPKc>
    finishedD = true;
    80005350:	00100793          	li	a5,1
    80005354:	00008717          	auipc	a4,0x8
    80005358:	94f70223          	sb	a5,-1724(a4) # 8000cc98 <_ZL9finishedD>
    thread_dispatch();
    8000535c:	ffffc097          	auipc	ra,0xffffc
    80005360:	2f4080e7          	jalr	756(ra) # 80001650 <thread_dispatch>
}
    80005364:	01813083          	ld	ra,24(sp)
    80005368:	01013403          	ld	s0,16(sp)
    8000536c:	00813483          	ld	s1,8(sp)
    80005370:	00013903          	ld	s2,0(sp)
    80005374:	02010113          	addi	sp,sp,32
    80005378:	00008067          	ret

000000008000537c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000537c:	fe010113          	addi	sp,sp,-32
    80005380:	00113c23          	sd	ra,24(sp)
    80005384:	00813823          	sd	s0,16(sp)
    80005388:	00913423          	sd	s1,8(sp)
    8000538c:	01213023          	sd	s2,0(sp)
    80005390:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005394:	00000493          	li	s1,0
    80005398:	0400006f          	j	800053d8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000539c:	00005517          	auipc	a0,0x5
    800053a0:	eac50513          	addi	a0,a0,-340 # 8000a248 <CONSOLE_STATUS+0x238>
    800053a4:	00001097          	auipc	ra,0x1
    800053a8:	c80080e7          	jalr	-896(ra) # 80006024 <_Z11printStringPKc>
    800053ac:	00000613          	li	a2,0
    800053b0:	00a00593          	li	a1,10
    800053b4:	00048513          	mv	a0,s1
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	e1c080e7          	jalr	-484(ra) # 800061d4 <_Z8printIntiii>
    800053c0:	00005517          	auipc	a0,0x5
    800053c4:	0c850513          	addi	a0,a0,200 # 8000a488 <CONSOLE_STATUS+0x478>
    800053c8:	00001097          	auipc	ra,0x1
    800053cc:	c5c080e7          	jalr	-932(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800053d0:	0014849b          	addiw	s1,s1,1
    800053d4:	0ff4f493          	andi	s1,s1,255
    800053d8:	00200793          	li	a5,2
    800053dc:	fc97f0e3          	bgeu	a5,s1,8000539c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800053e0:	00005517          	auipc	a0,0x5
    800053e4:	e7050513          	addi	a0,a0,-400 # 8000a250 <CONSOLE_STATUS+0x240>
    800053e8:	00001097          	auipc	ra,0x1
    800053ec:	c3c080e7          	jalr	-964(ra) # 80006024 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800053f0:	00700313          	li	t1,7
    thread_dispatch();
    800053f4:	ffffc097          	auipc	ra,0xffffc
    800053f8:	25c080e7          	jalr	604(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800053fc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005400:	00005517          	auipc	a0,0x5
    80005404:	e6050513          	addi	a0,a0,-416 # 8000a260 <CONSOLE_STATUS+0x250>
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	c1c080e7          	jalr	-996(ra) # 80006024 <_Z11printStringPKc>
    80005410:	00000613          	li	a2,0
    80005414:	00a00593          	li	a1,10
    80005418:	0009051b          	sext.w	a0,s2
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	db8080e7          	jalr	-584(ra) # 800061d4 <_Z8printIntiii>
    80005424:	00005517          	auipc	a0,0x5
    80005428:	06450513          	addi	a0,a0,100 # 8000a488 <CONSOLE_STATUS+0x478>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	bf8080e7          	jalr	-1032(ra) # 80006024 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005434:	00c00513          	li	a0,12
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	d88080e7          	jalr	-632(ra) # 800051c0 <_ZL9fibonaccim>
    80005440:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005444:	00005517          	auipc	a0,0x5
    80005448:	e2450513          	addi	a0,a0,-476 # 8000a268 <CONSOLE_STATUS+0x258>
    8000544c:	00001097          	auipc	ra,0x1
    80005450:	bd8080e7          	jalr	-1064(ra) # 80006024 <_Z11printStringPKc>
    80005454:	00000613          	li	a2,0
    80005458:	00a00593          	li	a1,10
    8000545c:	0009051b          	sext.w	a0,s2
    80005460:	00001097          	auipc	ra,0x1
    80005464:	d74080e7          	jalr	-652(ra) # 800061d4 <_Z8printIntiii>
    80005468:	00005517          	auipc	a0,0x5
    8000546c:	02050513          	addi	a0,a0,32 # 8000a488 <CONSOLE_STATUS+0x478>
    80005470:	00001097          	auipc	ra,0x1
    80005474:	bb4080e7          	jalr	-1100(ra) # 80006024 <_Z11printStringPKc>
    80005478:	0400006f          	j	800054b8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000547c:	00005517          	auipc	a0,0x5
    80005480:	dcc50513          	addi	a0,a0,-564 # 8000a248 <CONSOLE_STATUS+0x238>
    80005484:	00001097          	auipc	ra,0x1
    80005488:	ba0080e7          	jalr	-1120(ra) # 80006024 <_Z11printStringPKc>
    8000548c:	00000613          	li	a2,0
    80005490:	00a00593          	li	a1,10
    80005494:	00048513          	mv	a0,s1
    80005498:	00001097          	auipc	ra,0x1
    8000549c:	d3c080e7          	jalr	-708(ra) # 800061d4 <_Z8printIntiii>
    800054a0:	00005517          	auipc	a0,0x5
    800054a4:	fe850513          	addi	a0,a0,-24 # 8000a488 <CONSOLE_STATUS+0x478>
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	b7c080e7          	jalr	-1156(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800054b0:	0014849b          	addiw	s1,s1,1
    800054b4:	0ff4f493          	andi	s1,s1,255
    800054b8:	00500793          	li	a5,5
    800054bc:	fc97f0e3          	bgeu	a5,s1,8000547c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800054c0:	00005517          	auipc	a0,0x5
    800054c4:	d6050513          	addi	a0,a0,-672 # 8000a220 <CONSOLE_STATUS+0x210>
    800054c8:	00001097          	auipc	ra,0x1
    800054cc:	b5c080e7          	jalr	-1188(ra) # 80006024 <_Z11printStringPKc>
    finishedC = true;
    800054d0:	00100793          	li	a5,1
    800054d4:	00007717          	auipc	a4,0x7
    800054d8:	7cf702a3          	sb	a5,1989(a4) # 8000cc99 <_ZL9finishedC>
    thread_dispatch();
    800054dc:	ffffc097          	auipc	ra,0xffffc
    800054e0:	174080e7          	jalr	372(ra) # 80001650 <thread_dispatch>
}
    800054e4:	01813083          	ld	ra,24(sp)
    800054e8:	01013403          	ld	s0,16(sp)
    800054ec:	00813483          	ld	s1,8(sp)
    800054f0:	00013903          	ld	s2,0(sp)
    800054f4:	02010113          	addi	sp,sp,32
    800054f8:	00008067          	ret

00000000800054fc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00113c23          	sd	ra,24(sp)
    80005504:	00813823          	sd	s0,16(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	01213023          	sd	s2,0(sp)
    80005510:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005514:	00000913          	li	s2,0
    80005518:	0380006f          	j	80005550 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	134080e7          	jalr	308(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005524:	00148493          	addi	s1,s1,1
    80005528:	000027b7          	lui	a5,0x2
    8000552c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005530:	0097ee63          	bltu	a5,s1,8000554c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005534:	00000713          	li	a4,0
    80005538:	000077b7          	lui	a5,0x7
    8000553c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005540:	fce7eee3          	bltu	a5,a4,8000551c <_ZL11workerBodyBPv+0x20>
    80005544:	00170713          	addi	a4,a4,1
    80005548:	ff1ff06f          	j	80005538 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000554c:	00190913          	addi	s2,s2,1
    80005550:	00f00793          	li	a5,15
    80005554:	0527e063          	bltu	a5,s2,80005594 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005558:	00005517          	auipc	a0,0x5
    8000555c:	cd850513          	addi	a0,a0,-808 # 8000a230 <CONSOLE_STATUS+0x220>
    80005560:	00001097          	auipc	ra,0x1
    80005564:	ac4080e7          	jalr	-1340(ra) # 80006024 <_Z11printStringPKc>
    80005568:	00000613          	li	a2,0
    8000556c:	00a00593          	li	a1,10
    80005570:	0009051b          	sext.w	a0,s2
    80005574:	00001097          	auipc	ra,0x1
    80005578:	c60080e7          	jalr	-928(ra) # 800061d4 <_Z8printIntiii>
    8000557c:	00005517          	auipc	a0,0x5
    80005580:	f0c50513          	addi	a0,a0,-244 # 8000a488 <CONSOLE_STATUS+0x478>
    80005584:	00001097          	auipc	ra,0x1
    80005588:	aa0080e7          	jalr	-1376(ra) # 80006024 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000558c:	00000493          	li	s1,0
    80005590:	f99ff06f          	j	80005528 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005594:	00005517          	auipc	a0,0x5
    80005598:	ca450513          	addi	a0,a0,-860 # 8000a238 <CONSOLE_STATUS+0x228>
    8000559c:	00001097          	auipc	ra,0x1
    800055a0:	a88080e7          	jalr	-1400(ra) # 80006024 <_Z11printStringPKc>
    finishedB = true;
    800055a4:	00100793          	li	a5,1
    800055a8:	00007717          	auipc	a4,0x7
    800055ac:	6ef70923          	sb	a5,1778(a4) # 8000cc9a <_ZL9finishedB>
    thread_dispatch();
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	0a0080e7          	jalr	160(ra) # 80001650 <thread_dispatch>
}
    800055b8:	01813083          	ld	ra,24(sp)
    800055bc:	01013403          	ld	s0,16(sp)
    800055c0:	00813483          	ld	s1,8(sp)
    800055c4:	00013903          	ld	s2,0(sp)
    800055c8:	02010113          	addi	sp,sp,32
    800055cc:	00008067          	ret

00000000800055d0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800055d0:	fe010113          	addi	sp,sp,-32
    800055d4:	00113c23          	sd	ra,24(sp)
    800055d8:	00813823          	sd	s0,16(sp)
    800055dc:	00913423          	sd	s1,8(sp)
    800055e0:	01213023          	sd	s2,0(sp)
    800055e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800055e8:	00000913          	li	s2,0
    800055ec:	0380006f          	j	80005624 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800055f0:	ffffc097          	auipc	ra,0xffffc
    800055f4:	060080e7          	jalr	96(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800055f8:	00148493          	addi	s1,s1,1
    800055fc:	000027b7          	lui	a5,0x2
    80005600:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005604:	0097ee63          	bltu	a5,s1,80005620 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005608:	00000713          	li	a4,0
    8000560c:	000077b7          	lui	a5,0x7
    80005610:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005614:	fce7eee3          	bltu	a5,a4,800055f0 <_ZL11workerBodyAPv+0x20>
    80005618:	00170713          	addi	a4,a4,1
    8000561c:	ff1ff06f          	j	8000560c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005620:	00190913          	addi	s2,s2,1
    80005624:	00900793          	li	a5,9
    80005628:	0527e063          	bltu	a5,s2,80005668 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000562c:	00005517          	auipc	a0,0x5
    80005630:	bec50513          	addi	a0,a0,-1044 # 8000a218 <CONSOLE_STATUS+0x208>
    80005634:	00001097          	auipc	ra,0x1
    80005638:	9f0080e7          	jalr	-1552(ra) # 80006024 <_Z11printStringPKc>
    8000563c:	00000613          	li	a2,0
    80005640:	00a00593          	li	a1,10
    80005644:	0009051b          	sext.w	a0,s2
    80005648:	00001097          	auipc	ra,0x1
    8000564c:	b8c080e7          	jalr	-1140(ra) # 800061d4 <_Z8printIntiii>
    80005650:	00005517          	auipc	a0,0x5
    80005654:	e3850513          	addi	a0,a0,-456 # 8000a488 <CONSOLE_STATUS+0x478>
    80005658:	00001097          	auipc	ra,0x1
    8000565c:	9cc080e7          	jalr	-1588(ra) # 80006024 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005660:	00000493          	li	s1,0
    80005664:	f99ff06f          	j	800055fc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005668:	00005517          	auipc	a0,0x5
    8000566c:	bb850513          	addi	a0,a0,-1096 # 8000a220 <CONSOLE_STATUS+0x210>
    80005670:	00001097          	auipc	ra,0x1
    80005674:	9b4080e7          	jalr	-1612(ra) # 80006024 <_Z11printStringPKc>
    finishedA = true;
    80005678:	00100793          	li	a5,1
    8000567c:	00007717          	auipc	a4,0x7
    80005680:	60f70fa3          	sb	a5,1567(a4) # 8000cc9b <_ZL9finishedA>
}
    80005684:	01813083          	ld	ra,24(sp)
    80005688:	01013403          	ld	s0,16(sp)
    8000568c:	00813483          	ld	s1,8(sp)
    80005690:	00013903          	ld	s2,0(sp)
    80005694:	02010113          	addi	sp,sp,32
    80005698:	00008067          	ret

000000008000569c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000569c:	fd010113          	addi	sp,sp,-48
    800056a0:	02113423          	sd	ra,40(sp)
    800056a4:	02813023          	sd	s0,32(sp)
    800056a8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800056ac:	00000613          	li	a2,0
    800056b0:	00000597          	auipc	a1,0x0
    800056b4:	f2058593          	addi	a1,a1,-224 # 800055d0 <_ZL11workerBodyAPv>
    800056b8:	fd040513          	addi	a0,s0,-48
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	ef0080e7          	jalr	-272(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    800056c4:	00005517          	auipc	a0,0x5
    800056c8:	bec50513          	addi	a0,a0,-1044 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800056cc:	00001097          	auipc	ra,0x1
    800056d0:	958080e7          	jalr	-1704(ra) # 80006024 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800056d4:	00000613          	li	a2,0
    800056d8:	00000597          	auipc	a1,0x0
    800056dc:	e2458593          	addi	a1,a1,-476 # 800054fc <_ZL11workerBodyBPv>
    800056e0:	fd840513          	addi	a0,s0,-40
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	ec8080e7          	jalr	-312(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    800056ec:	00005517          	auipc	a0,0x5
    800056f0:	bdc50513          	addi	a0,a0,-1060 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800056f4:	00001097          	auipc	ra,0x1
    800056f8:	930080e7          	jalr	-1744(ra) # 80006024 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800056fc:	00000613          	li	a2,0
    80005700:	00000597          	auipc	a1,0x0
    80005704:	c7c58593          	addi	a1,a1,-900 # 8000537c <_ZL11workerBodyCPv>
    80005708:	fe040513          	addi	a0,s0,-32
    8000570c:	ffffc097          	auipc	ra,0xffffc
    80005710:	ea0080e7          	jalr	-352(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80005714:	00005517          	auipc	a0,0x5
    80005718:	bcc50513          	addi	a0,a0,-1076 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000571c:	00001097          	auipc	ra,0x1
    80005720:	908080e7          	jalr	-1784(ra) # 80006024 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005724:	00000613          	li	a2,0
    80005728:	00000597          	auipc	a1,0x0
    8000572c:	b0c58593          	addi	a1,a1,-1268 # 80005234 <_ZL11workerBodyDPv>
    80005730:	fe840513          	addi	a0,s0,-24
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	e78080e7          	jalr	-392(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    8000573c:	00005517          	auipc	a0,0x5
    80005740:	bbc50513          	addi	a0,a0,-1092 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005744:	00001097          	auipc	ra,0x1
    80005748:	8e0080e7          	jalr	-1824(ra) # 80006024 <_Z11printStringPKc>
    8000574c:	00c0006f          	j	80005758 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	f00080e7          	jalr	-256(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005758:	00007797          	auipc	a5,0x7
    8000575c:	5437c783          	lbu	a5,1347(a5) # 8000cc9b <_ZL9finishedA>
    80005760:	fe0788e3          	beqz	a5,80005750 <_Z18Threads_C_API_testv+0xb4>
    80005764:	00007797          	auipc	a5,0x7
    80005768:	5367c783          	lbu	a5,1334(a5) # 8000cc9a <_ZL9finishedB>
    8000576c:	fe0782e3          	beqz	a5,80005750 <_Z18Threads_C_API_testv+0xb4>
    80005770:	00007797          	auipc	a5,0x7
    80005774:	5297c783          	lbu	a5,1321(a5) # 8000cc99 <_ZL9finishedC>
    80005778:	fc078ce3          	beqz	a5,80005750 <_Z18Threads_C_API_testv+0xb4>
    8000577c:	00007797          	auipc	a5,0x7
    80005780:	51c7c783          	lbu	a5,1308(a5) # 8000cc98 <_ZL9finishedD>
    80005784:	fc0786e3          	beqz	a5,80005750 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005788:	02813083          	ld	ra,40(sp)
    8000578c:	02013403          	ld	s0,32(sp)
    80005790:	03010113          	addi	sp,sp,48
    80005794:	00008067          	ret

0000000080005798 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005798:	fd010113          	addi	sp,sp,-48
    8000579c:	02113423          	sd	ra,40(sp)
    800057a0:	02813023          	sd	s0,32(sp)
    800057a4:	00913c23          	sd	s1,24(sp)
    800057a8:	01213823          	sd	s2,16(sp)
    800057ac:	01313423          	sd	s3,8(sp)
    800057b0:	03010413          	addi	s0,sp,48
    800057b4:	00050993          	mv	s3,a0
    800057b8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800057bc:	00000913          	li	s2,0
    800057c0:	00c0006f          	j	800057cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800057c4:	ffffe097          	auipc	ra,0xffffe
    800057c8:	9b4080e7          	jalr	-1612(ra) # 80003178 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800057cc:	ffffc097          	auipc	ra,0xffffc
    800057d0:	fb4080e7          	jalr	-76(ra) # 80001780 <getc>
    800057d4:	0005059b          	sext.w	a1,a0
    800057d8:	01b00793          	li	a5,27
    800057dc:	02f58a63          	beq	a1,a5,80005810 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800057e0:	0084b503          	ld	a0,8(s1)
    800057e4:	00001097          	auipc	ra,0x1
    800057e8:	c64080e7          	jalr	-924(ra) # 80006448 <_ZN9BufferCPP3putEi>
        i++;
    800057ec:	0019071b          	addiw	a4,s2,1
    800057f0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800057f4:	0004a683          	lw	a3,0(s1)
    800057f8:	0026979b          	slliw	a5,a3,0x2
    800057fc:	00d787bb          	addw	a5,a5,a3
    80005800:	0017979b          	slliw	a5,a5,0x1
    80005804:	02f767bb          	remw	a5,a4,a5
    80005808:	fc0792e3          	bnez	a5,800057cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000580c:	fb9ff06f          	j	800057c4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005810:	00100793          	li	a5,1
    80005814:	00007717          	auipc	a4,0x7
    80005818:	48f72623          	sw	a5,1164(a4) # 8000cca0 <_ZL9threadEnd>
    td->buffer->put('!');
    8000581c:	0209b783          	ld	a5,32(s3)
    80005820:	02100593          	li	a1,33
    80005824:	0087b503          	ld	a0,8(a5)
    80005828:	00001097          	auipc	ra,0x1
    8000582c:	c20080e7          	jalr	-992(ra) # 80006448 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005830:	0104b503          	ld	a0,16(s1)
    80005834:	ffffe097          	auipc	ra,0xffffe
    80005838:	9f8080e7          	jalr	-1544(ra) # 8000322c <_ZN9Semaphore6signalEv>
}
    8000583c:	02813083          	ld	ra,40(sp)
    80005840:	02013403          	ld	s0,32(sp)
    80005844:	01813483          	ld	s1,24(sp)
    80005848:	01013903          	ld	s2,16(sp)
    8000584c:	00813983          	ld	s3,8(sp)
    80005850:	03010113          	addi	sp,sp,48
    80005854:	00008067          	ret

0000000080005858 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005858:	fe010113          	addi	sp,sp,-32
    8000585c:	00113c23          	sd	ra,24(sp)
    80005860:	00813823          	sd	s0,16(sp)
    80005864:	00913423          	sd	s1,8(sp)
    80005868:	01213023          	sd	s2,0(sp)
    8000586c:	02010413          	addi	s0,sp,32
    80005870:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005874:	00000913          	li	s2,0
    80005878:	00c0006f          	j	80005884 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000587c:	ffffe097          	auipc	ra,0xffffe
    80005880:	8fc080e7          	jalr	-1796(ra) # 80003178 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005884:	00007797          	auipc	a5,0x7
    80005888:	41c7a783          	lw	a5,1052(a5) # 8000cca0 <_ZL9threadEnd>
    8000588c:	02079e63          	bnez	a5,800058c8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005890:	0004a583          	lw	a1,0(s1)
    80005894:	0305859b          	addiw	a1,a1,48
    80005898:	0084b503          	ld	a0,8(s1)
    8000589c:	00001097          	auipc	ra,0x1
    800058a0:	bac080e7          	jalr	-1108(ra) # 80006448 <_ZN9BufferCPP3putEi>
        i++;
    800058a4:	0019071b          	addiw	a4,s2,1
    800058a8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800058ac:	0004a683          	lw	a3,0(s1)
    800058b0:	0026979b          	slliw	a5,a3,0x2
    800058b4:	00d787bb          	addw	a5,a5,a3
    800058b8:	0017979b          	slliw	a5,a5,0x1
    800058bc:	02f767bb          	remw	a5,a4,a5
    800058c0:	fc0792e3          	bnez	a5,80005884 <_ZN12ProducerSync8producerEPv+0x2c>
    800058c4:	fb9ff06f          	j	8000587c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800058c8:	0104b503          	ld	a0,16(s1)
    800058cc:	ffffe097          	auipc	ra,0xffffe
    800058d0:	960080e7          	jalr	-1696(ra) # 8000322c <_ZN9Semaphore6signalEv>
}
    800058d4:	01813083          	ld	ra,24(sp)
    800058d8:	01013403          	ld	s0,16(sp)
    800058dc:	00813483          	ld	s1,8(sp)
    800058e0:	00013903          	ld	s2,0(sp)
    800058e4:	02010113          	addi	sp,sp,32
    800058e8:	00008067          	ret

00000000800058ec <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800058ec:	fd010113          	addi	sp,sp,-48
    800058f0:	02113423          	sd	ra,40(sp)
    800058f4:	02813023          	sd	s0,32(sp)
    800058f8:	00913c23          	sd	s1,24(sp)
    800058fc:	01213823          	sd	s2,16(sp)
    80005900:	01313423          	sd	s3,8(sp)
    80005904:	01413023          	sd	s4,0(sp)
    80005908:	03010413          	addi	s0,sp,48
    8000590c:	00050993          	mv	s3,a0
    80005910:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005914:	00000a13          	li	s4,0
    80005918:	01c0006f          	j	80005934 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000591c:	ffffe097          	auipc	ra,0xffffe
    80005920:	85c080e7          	jalr	-1956(ra) # 80003178 <_ZN6Thread8dispatchEv>
    80005924:	0500006f          	j	80005974 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005928:	00a00513          	li	a0,10
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	e78080e7          	jalr	-392(ra) # 800017a4 <putc>
    while (!threadEnd) {
    80005934:	00007797          	auipc	a5,0x7
    80005938:	36c7a783          	lw	a5,876(a5) # 8000cca0 <_ZL9threadEnd>
    8000593c:	06079263          	bnez	a5,800059a0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005940:	00893503          	ld	a0,8(s2)
    80005944:	00001097          	auipc	ra,0x1
    80005948:	b94080e7          	jalr	-1132(ra) # 800064d8 <_ZN9BufferCPP3getEv>
        i++;
    8000594c:	001a049b          	addiw	s1,s4,1
    80005950:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005954:	0ff57513          	andi	a0,a0,255
    80005958:	ffffc097          	auipc	ra,0xffffc
    8000595c:	e4c080e7          	jalr	-436(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    80005960:	00092703          	lw	a4,0(s2)
    80005964:	0027179b          	slliw	a5,a4,0x2
    80005968:	00e787bb          	addw	a5,a5,a4
    8000596c:	02f4e7bb          	remw	a5,s1,a5
    80005970:	fa0786e3          	beqz	a5,8000591c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005974:	05000793          	li	a5,80
    80005978:	02f4e4bb          	remw	s1,s1,a5
    8000597c:	fa049ce3          	bnez	s1,80005934 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005980:	fa9ff06f          	j	80005928 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005984:	0209b783          	ld	a5,32(s3)
    80005988:	0087b503          	ld	a0,8(a5)
    8000598c:	00001097          	auipc	ra,0x1
    80005990:	b4c080e7          	jalr	-1204(ra) # 800064d8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005994:	0ff57513          	andi	a0,a0,255
    80005998:	ffffe097          	auipc	ra,0xffffe
    8000599c:	954080e7          	jalr	-1708(ra) # 800032ec <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800059a0:	0209b783          	ld	a5,32(s3)
    800059a4:	0087b503          	ld	a0,8(a5)
    800059a8:	00001097          	auipc	ra,0x1
    800059ac:	bbc080e7          	jalr	-1092(ra) # 80006564 <_ZN9BufferCPP6getCntEv>
    800059b0:	fca04ae3          	bgtz	a0,80005984 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800059b4:	01093503          	ld	a0,16(s2)
    800059b8:	ffffe097          	auipc	ra,0xffffe
    800059bc:	874080e7          	jalr	-1932(ra) # 8000322c <_ZN9Semaphore6signalEv>
}
    800059c0:	02813083          	ld	ra,40(sp)
    800059c4:	02013403          	ld	s0,32(sp)
    800059c8:	01813483          	ld	s1,24(sp)
    800059cc:	01013903          	ld	s2,16(sp)
    800059d0:	00813983          	ld	s3,8(sp)
    800059d4:	00013a03          	ld	s4,0(sp)
    800059d8:	03010113          	addi	sp,sp,48
    800059dc:	00008067          	ret

00000000800059e0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800059e0:	f8010113          	addi	sp,sp,-128
    800059e4:	06113c23          	sd	ra,120(sp)
    800059e8:	06813823          	sd	s0,112(sp)
    800059ec:	06913423          	sd	s1,104(sp)
    800059f0:	07213023          	sd	s2,96(sp)
    800059f4:	05313c23          	sd	s3,88(sp)
    800059f8:	05413823          	sd	s4,80(sp)
    800059fc:	05513423          	sd	s5,72(sp)
    80005a00:	05613023          	sd	s6,64(sp)
    80005a04:	03713c23          	sd	s7,56(sp)
    80005a08:	03813823          	sd	s8,48(sp)
    80005a0c:	03913423          	sd	s9,40(sp)
    80005a10:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005a14:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005a18:	00004517          	auipc	a0,0x4
    80005a1c:	71850513          	addi	a0,a0,1816 # 8000a130 <CONSOLE_STATUS+0x120>
    80005a20:	00000097          	auipc	ra,0x0
    80005a24:	604080e7          	jalr	1540(ra) # 80006024 <_Z11printStringPKc>
    getString(input, 30);
    80005a28:	01e00593          	li	a1,30
    80005a2c:	f8040493          	addi	s1,s0,-128
    80005a30:	00048513          	mv	a0,s1
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	678080e7          	jalr	1656(ra) # 800060ac <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005a3c:	00048513          	mv	a0,s1
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	744080e7          	jalr	1860(ra) # 80006184 <_Z11stringToIntPKc>
    80005a48:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005a4c:	00004517          	auipc	a0,0x4
    80005a50:	70450513          	addi	a0,a0,1796 # 8000a150 <CONSOLE_STATUS+0x140>
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	5d0080e7          	jalr	1488(ra) # 80006024 <_Z11printStringPKc>
    getString(input, 30);
    80005a5c:	01e00593          	li	a1,30
    80005a60:	00048513          	mv	a0,s1
    80005a64:	00000097          	auipc	ra,0x0
    80005a68:	648080e7          	jalr	1608(ra) # 800060ac <_Z9getStringPci>
    n = stringToInt(input);
    80005a6c:	00048513          	mv	a0,s1
    80005a70:	00000097          	auipc	ra,0x0
    80005a74:	714080e7          	jalr	1812(ra) # 80006184 <_Z11stringToIntPKc>
    80005a78:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005a7c:	00004517          	auipc	a0,0x4
    80005a80:	6f450513          	addi	a0,a0,1780 # 8000a170 <CONSOLE_STATUS+0x160>
    80005a84:	00000097          	auipc	ra,0x0
    80005a88:	5a0080e7          	jalr	1440(ra) # 80006024 <_Z11printStringPKc>
    80005a8c:	00000613          	li	a2,0
    80005a90:	00a00593          	li	a1,10
    80005a94:	00090513          	mv	a0,s2
    80005a98:	00000097          	auipc	ra,0x0
    80005a9c:	73c080e7          	jalr	1852(ra) # 800061d4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005aa0:	00004517          	auipc	a0,0x4
    80005aa4:	6e850513          	addi	a0,a0,1768 # 8000a188 <CONSOLE_STATUS+0x178>
    80005aa8:	00000097          	auipc	ra,0x0
    80005aac:	57c080e7          	jalr	1404(ra) # 80006024 <_Z11printStringPKc>
    80005ab0:	00000613          	li	a2,0
    80005ab4:	00a00593          	li	a1,10
    80005ab8:	00048513          	mv	a0,s1
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	718080e7          	jalr	1816(ra) # 800061d4 <_Z8printIntiii>
    printString(".\n");
    80005ac4:	00004517          	auipc	a0,0x4
    80005ac8:	6dc50513          	addi	a0,a0,1756 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	558080e7          	jalr	1368(ra) # 80006024 <_Z11printStringPKc>
    if(threadNum > n) {
    80005ad4:	0324c463          	blt	s1,s2,80005afc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005ad8:	03205c63          	blez	s2,80005b10 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005adc:	03800513          	li	a0,56
    80005ae0:	ffffd097          	auipc	ra,0xffffd
    80005ae4:	52c080e7          	jalr	1324(ra) # 8000300c <_Znwm>
    80005ae8:	00050a93          	mv	s5,a0
    80005aec:	00048593          	mv	a1,s1
    80005af0:	00001097          	auipc	ra,0x1
    80005af4:	804080e7          	jalr	-2044(ra) # 800062f4 <_ZN9BufferCPPC1Ei>
    80005af8:	0300006f          	j	80005b28 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005afc:	00004517          	auipc	a0,0x4
    80005b00:	6ac50513          	addi	a0,a0,1708 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005b04:	00000097          	auipc	ra,0x0
    80005b08:	520080e7          	jalr	1312(ra) # 80006024 <_Z11printStringPKc>
        return;
    80005b0c:	0140006f          	j	80005b20 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005b10:	00004517          	auipc	a0,0x4
    80005b14:	6d850513          	addi	a0,a0,1752 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005b18:	00000097          	auipc	ra,0x0
    80005b1c:	50c080e7          	jalr	1292(ra) # 80006024 <_Z11printStringPKc>
        return;
    80005b20:	000b8113          	mv	sp,s7
    80005b24:	2380006f          	j	80005d5c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005b28:	01000513          	li	a0,16
    80005b2c:	ffffd097          	auipc	ra,0xffffd
    80005b30:	4e0080e7          	jalr	1248(ra) # 8000300c <_Znwm>
    80005b34:	00050493          	mv	s1,a0
    80005b38:	00000593          	li	a1,0
    80005b3c:	ffffd097          	auipc	ra,0xffffd
    80005b40:	68c080e7          	jalr	1676(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    80005b44:	00007797          	auipc	a5,0x7
    80005b48:	1697b223          	sd	s1,356(a5) # 8000cca8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005b4c:	00391793          	slli	a5,s2,0x3
    80005b50:	00f78793          	addi	a5,a5,15
    80005b54:	ff07f793          	andi	a5,a5,-16
    80005b58:	40f10133          	sub	sp,sp,a5
    80005b5c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005b60:	0019071b          	addiw	a4,s2,1
    80005b64:	00171793          	slli	a5,a4,0x1
    80005b68:	00e787b3          	add	a5,a5,a4
    80005b6c:	00379793          	slli	a5,a5,0x3
    80005b70:	00f78793          	addi	a5,a5,15
    80005b74:	ff07f793          	andi	a5,a5,-16
    80005b78:	40f10133          	sub	sp,sp,a5
    80005b7c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005b80:	00191c13          	slli	s8,s2,0x1
    80005b84:	012c07b3          	add	a5,s8,s2
    80005b88:	00379793          	slli	a5,a5,0x3
    80005b8c:	00fa07b3          	add	a5,s4,a5
    80005b90:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005b94:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005b98:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005b9c:	02800513          	li	a0,40
    80005ba0:	ffffd097          	auipc	ra,0xffffd
    80005ba4:	46c080e7          	jalr	1132(ra) # 8000300c <_Znwm>
    80005ba8:	00050b13          	mv	s6,a0
    80005bac:	012c0c33          	add	s8,s8,s2
    80005bb0:	003c1c13          	slli	s8,s8,0x3
    80005bb4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005bb8:	ffffd097          	auipc	ra,0xffffd
    80005bbc:	53c080e7          	jalr	1340(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80005bc0:	00007797          	auipc	a5,0x7
    80005bc4:	d3878793          	addi	a5,a5,-712 # 8000c8f8 <_ZTV12ConsumerSync+0x10>
    80005bc8:	00fb3023          	sd	a5,0(s6)
    80005bcc:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005bd0:	000b0513          	mv	a0,s6
    80005bd4:	ffffd097          	auipc	ra,0xffffd
    80005bd8:	550080e7          	jalr	1360(ra) # 80003124 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005bdc:	00000493          	li	s1,0
    80005be0:	0380006f          	j	80005c18 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005be4:	00007797          	auipc	a5,0x7
    80005be8:	cec78793          	addi	a5,a5,-788 # 8000c8d0 <_ZTV12ProducerSync+0x10>
    80005bec:	00fcb023          	sd	a5,0(s9)
    80005bf0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005bf4:	00349793          	slli	a5,s1,0x3
    80005bf8:	00f987b3          	add	a5,s3,a5
    80005bfc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005c00:	00349793          	slli	a5,s1,0x3
    80005c04:	00f987b3          	add	a5,s3,a5
    80005c08:	0007b503          	ld	a0,0(a5)
    80005c0c:	ffffd097          	auipc	ra,0xffffd
    80005c10:	518080e7          	jalr	1304(ra) # 80003124 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c14:	0014849b          	addiw	s1,s1,1
    80005c18:	0b24d063          	bge	s1,s2,80005cb8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005c1c:	00149793          	slli	a5,s1,0x1
    80005c20:	009787b3          	add	a5,a5,s1
    80005c24:	00379793          	slli	a5,a5,0x3
    80005c28:	00fa07b3          	add	a5,s4,a5
    80005c2c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005c30:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005c34:	00007717          	auipc	a4,0x7
    80005c38:	07473703          	ld	a4,116(a4) # 8000cca8 <_ZL10waitForAll>
    80005c3c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005c40:	02905863          	blez	s1,80005c70 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005c44:	02800513          	li	a0,40
    80005c48:	ffffd097          	auipc	ra,0xffffd
    80005c4c:	3c4080e7          	jalr	964(ra) # 8000300c <_Znwm>
    80005c50:	00050c93          	mv	s9,a0
    80005c54:	00149c13          	slli	s8,s1,0x1
    80005c58:	009c0c33          	add	s8,s8,s1
    80005c5c:	003c1c13          	slli	s8,s8,0x3
    80005c60:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c64:	ffffd097          	auipc	ra,0xffffd
    80005c68:	490080e7          	jalr	1168(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80005c6c:	f79ff06f          	j	80005be4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005c70:	02800513          	li	a0,40
    80005c74:	ffffd097          	auipc	ra,0xffffd
    80005c78:	398080e7          	jalr	920(ra) # 8000300c <_Znwm>
    80005c7c:	00050c93          	mv	s9,a0
    80005c80:	00149c13          	slli	s8,s1,0x1
    80005c84:	009c0c33          	add	s8,s8,s1
    80005c88:	003c1c13          	slli	s8,s8,0x3
    80005c8c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005c90:	ffffd097          	auipc	ra,0xffffd
    80005c94:	464080e7          	jalr	1124(ra) # 800030f4 <_ZN6ThreadC1Ev>
    80005c98:	00007797          	auipc	a5,0x7
    80005c9c:	c1078793          	addi	a5,a5,-1008 # 8000c8a8 <_ZTV16ProducerKeyboard+0x10>
    80005ca0:	00fcb023          	sd	a5,0(s9)
    80005ca4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005ca8:	00349793          	slli	a5,s1,0x3
    80005cac:	00f987b3          	add	a5,s3,a5
    80005cb0:	0197b023          	sd	s9,0(a5)
    80005cb4:	f4dff06f          	j	80005c00 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005cb8:	ffffd097          	auipc	ra,0xffffd
    80005cbc:	4c0080e7          	jalr	1216(ra) # 80003178 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005cc0:	00000493          	li	s1,0
    80005cc4:	00994e63          	blt	s2,s1,80005ce0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005cc8:	00007517          	auipc	a0,0x7
    80005ccc:	fe053503          	ld	a0,-32(a0) # 8000cca8 <_ZL10waitForAll>
    80005cd0:	ffffd097          	auipc	ra,0xffffd
    80005cd4:	530080e7          	jalr	1328(ra) # 80003200 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005cd8:	0014849b          	addiw	s1,s1,1
    80005cdc:	fe9ff06f          	j	80005cc4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005ce0:	00000493          	li	s1,0
    80005ce4:	0080006f          	j	80005cec <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005ce8:	0014849b          	addiw	s1,s1,1
    80005cec:	0324d263          	bge	s1,s2,80005d10 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005cf0:	00349793          	slli	a5,s1,0x3
    80005cf4:	00f987b3          	add	a5,s3,a5
    80005cf8:	0007b503          	ld	a0,0(a5)
    80005cfc:	fe0506e3          	beqz	a0,80005ce8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005d00:	00053783          	ld	a5,0(a0)
    80005d04:	0087b783          	ld	a5,8(a5)
    80005d08:	000780e7          	jalr	a5
    80005d0c:	fddff06f          	j	80005ce8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005d10:	000b0a63          	beqz	s6,80005d24 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005d14:	000b3783          	ld	a5,0(s6)
    80005d18:	0087b783          	ld	a5,8(a5)
    80005d1c:	000b0513          	mv	a0,s6
    80005d20:	000780e7          	jalr	a5
    delete waitForAll;
    80005d24:	00007517          	auipc	a0,0x7
    80005d28:	f8453503          	ld	a0,-124(a0) # 8000cca8 <_ZL10waitForAll>
    80005d2c:	00050863          	beqz	a0,80005d3c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005d30:	00053783          	ld	a5,0(a0)
    80005d34:	0087b783          	ld	a5,8(a5)
    80005d38:	000780e7          	jalr	a5
    delete buffer;
    80005d3c:	000a8e63          	beqz	s5,80005d58 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005d40:	000a8513          	mv	a0,s5
    80005d44:	00001097          	auipc	ra,0x1
    80005d48:	8a8080e7          	jalr	-1880(ra) # 800065ec <_ZN9BufferCPPD1Ev>
    80005d4c:	000a8513          	mv	a0,s5
    80005d50:	ffffd097          	auipc	ra,0xffffd
    80005d54:	2e4080e7          	jalr	740(ra) # 80003034 <_ZdlPv>
    80005d58:	000b8113          	mv	sp,s7

}
    80005d5c:	f8040113          	addi	sp,s0,-128
    80005d60:	07813083          	ld	ra,120(sp)
    80005d64:	07013403          	ld	s0,112(sp)
    80005d68:	06813483          	ld	s1,104(sp)
    80005d6c:	06013903          	ld	s2,96(sp)
    80005d70:	05813983          	ld	s3,88(sp)
    80005d74:	05013a03          	ld	s4,80(sp)
    80005d78:	04813a83          	ld	s5,72(sp)
    80005d7c:	04013b03          	ld	s6,64(sp)
    80005d80:	03813b83          	ld	s7,56(sp)
    80005d84:	03013c03          	ld	s8,48(sp)
    80005d88:	02813c83          	ld	s9,40(sp)
    80005d8c:	08010113          	addi	sp,sp,128
    80005d90:	00008067          	ret
    80005d94:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005d98:	000a8513          	mv	a0,s5
    80005d9c:	ffffd097          	auipc	ra,0xffffd
    80005da0:	298080e7          	jalr	664(ra) # 80003034 <_ZdlPv>
    80005da4:	00048513          	mv	a0,s1
    80005da8:	00008097          	auipc	ra,0x8
    80005dac:	fe0080e7          	jalr	-32(ra) # 8000dd88 <_Unwind_Resume>
    80005db0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005db4:	00048513          	mv	a0,s1
    80005db8:	ffffd097          	auipc	ra,0xffffd
    80005dbc:	27c080e7          	jalr	636(ra) # 80003034 <_ZdlPv>
    80005dc0:	00090513          	mv	a0,s2
    80005dc4:	00008097          	auipc	ra,0x8
    80005dc8:	fc4080e7          	jalr	-60(ra) # 8000dd88 <_Unwind_Resume>
    80005dcc:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005dd0:	000b0513          	mv	a0,s6
    80005dd4:	ffffd097          	auipc	ra,0xffffd
    80005dd8:	260080e7          	jalr	608(ra) # 80003034 <_ZdlPv>
    80005ddc:	00048513          	mv	a0,s1
    80005de0:	00008097          	auipc	ra,0x8
    80005de4:	fa8080e7          	jalr	-88(ra) # 8000dd88 <_Unwind_Resume>
    80005de8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005dec:	000c8513          	mv	a0,s9
    80005df0:	ffffd097          	auipc	ra,0xffffd
    80005df4:	244080e7          	jalr	580(ra) # 80003034 <_ZdlPv>
    80005df8:	00048513          	mv	a0,s1
    80005dfc:	00008097          	auipc	ra,0x8
    80005e00:	f8c080e7          	jalr	-116(ra) # 8000dd88 <_Unwind_Resume>
    80005e04:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005e08:	000c8513          	mv	a0,s9
    80005e0c:	ffffd097          	auipc	ra,0xffffd
    80005e10:	228080e7          	jalr	552(ra) # 80003034 <_ZdlPv>
    80005e14:	00048513          	mv	a0,s1
    80005e18:	00008097          	auipc	ra,0x8
    80005e1c:	f70080e7          	jalr	-144(ra) # 8000dd88 <_Unwind_Resume>

0000000080005e20 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005e20:	ff010113          	addi	sp,sp,-16
    80005e24:	00113423          	sd	ra,8(sp)
    80005e28:	00813023          	sd	s0,0(sp)
    80005e2c:	01010413          	addi	s0,sp,16
    80005e30:	00007797          	auipc	a5,0x7
    80005e34:	ac878793          	addi	a5,a5,-1336 # 8000c8f8 <_ZTV12ConsumerSync+0x10>
    80005e38:	00f53023          	sd	a5,0(a0)
    80005e3c:	ffffd097          	auipc	ra,0xffffd
    80005e40:	100080e7          	jalr	256(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80005e44:	00813083          	ld	ra,8(sp)
    80005e48:	00013403          	ld	s0,0(sp)
    80005e4c:	01010113          	addi	sp,sp,16
    80005e50:	00008067          	ret

0000000080005e54 <_ZN12ConsumerSyncD0Ev>:
    80005e54:	fe010113          	addi	sp,sp,-32
    80005e58:	00113c23          	sd	ra,24(sp)
    80005e5c:	00813823          	sd	s0,16(sp)
    80005e60:	00913423          	sd	s1,8(sp)
    80005e64:	02010413          	addi	s0,sp,32
    80005e68:	00050493          	mv	s1,a0
    80005e6c:	00007797          	auipc	a5,0x7
    80005e70:	a8c78793          	addi	a5,a5,-1396 # 8000c8f8 <_ZTV12ConsumerSync+0x10>
    80005e74:	00f53023          	sd	a5,0(a0)
    80005e78:	ffffd097          	auipc	ra,0xffffd
    80005e7c:	0c4080e7          	jalr	196(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80005e80:	00048513          	mv	a0,s1
    80005e84:	ffffd097          	auipc	ra,0xffffd
    80005e88:	1b0080e7          	jalr	432(ra) # 80003034 <_ZdlPv>
    80005e8c:	01813083          	ld	ra,24(sp)
    80005e90:	01013403          	ld	s0,16(sp)
    80005e94:	00813483          	ld	s1,8(sp)
    80005e98:	02010113          	addi	sp,sp,32
    80005e9c:	00008067          	ret

0000000080005ea0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005ea0:	ff010113          	addi	sp,sp,-16
    80005ea4:	00113423          	sd	ra,8(sp)
    80005ea8:	00813023          	sd	s0,0(sp)
    80005eac:	01010413          	addi	s0,sp,16
    80005eb0:	00007797          	auipc	a5,0x7
    80005eb4:	a2078793          	addi	a5,a5,-1504 # 8000c8d0 <_ZTV12ProducerSync+0x10>
    80005eb8:	00f53023          	sd	a5,0(a0)
    80005ebc:	ffffd097          	auipc	ra,0xffffd
    80005ec0:	080080e7          	jalr	128(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80005ec4:	00813083          	ld	ra,8(sp)
    80005ec8:	00013403          	ld	s0,0(sp)
    80005ecc:	01010113          	addi	sp,sp,16
    80005ed0:	00008067          	ret

0000000080005ed4 <_ZN12ProducerSyncD0Ev>:
    80005ed4:	fe010113          	addi	sp,sp,-32
    80005ed8:	00113c23          	sd	ra,24(sp)
    80005edc:	00813823          	sd	s0,16(sp)
    80005ee0:	00913423          	sd	s1,8(sp)
    80005ee4:	02010413          	addi	s0,sp,32
    80005ee8:	00050493          	mv	s1,a0
    80005eec:	00007797          	auipc	a5,0x7
    80005ef0:	9e478793          	addi	a5,a5,-1564 # 8000c8d0 <_ZTV12ProducerSync+0x10>
    80005ef4:	00f53023          	sd	a5,0(a0)
    80005ef8:	ffffd097          	auipc	ra,0xffffd
    80005efc:	044080e7          	jalr	68(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80005f00:	00048513          	mv	a0,s1
    80005f04:	ffffd097          	auipc	ra,0xffffd
    80005f08:	130080e7          	jalr	304(ra) # 80003034 <_ZdlPv>
    80005f0c:	01813083          	ld	ra,24(sp)
    80005f10:	01013403          	ld	s0,16(sp)
    80005f14:	00813483          	ld	s1,8(sp)
    80005f18:	02010113          	addi	sp,sp,32
    80005f1c:	00008067          	ret

0000000080005f20 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005f20:	ff010113          	addi	sp,sp,-16
    80005f24:	00113423          	sd	ra,8(sp)
    80005f28:	00813023          	sd	s0,0(sp)
    80005f2c:	01010413          	addi	s0,sp,16
    80005f30:	00007797          	auipc	a5,0x7
    80005f34:	97878793          	addi	a5,a5,-1672 # 8000c8a8 <_ZTV16ProducerKeyboard+0x10>
    80005f38:	00f53023          	sd	a5,0(a0)
    80005f3c:	ffffd097          	auipc	ra,0xffffd
    80005f40:	000080e7          	jalr	ra # 80002f3c <_ZN6ThreadD1Ev>
    80005f44:	00813083          	ld	ra,8(sp)
    80005f48:	00013403          	ld	s0,0(sp)
    80005f4c:	01010113          	addi	sp,sp,16
    80005f50:	00008067          	ret

0000000080005f54 <_ZN16ProducerKeyboardD0Ev>:
    80005f54:	fe010113          	addi	sp,sp,-32
    80005f58:	00113c23          	sd	ra,24(sp)
    80005f5c:	00813823          	sd	s0,16(sp)
    80005f60:	00913423          	sd	s1,8(sp)
    80005f64:	02010413          	addi	s0,sp,32
    80005f68:	00050493          	mv	s1,a0
    80005f6c:	00007797          	auipc	a5,0x7
    80005f70:	93c78793          	addi	a5,a5,-1732 # 8000c8a8 <_ZTV16ProducerKeyboard+0x10>
    80005f74:	00f53023          	sd	a5,0(a0)
    80005f78:	ffffd097          	auipc	ra,0xffffd
    80005f7c:	fc4080e7          	jalr	-60(ra) # 80002f3c <_ZN6ThreadD1Ev>
    80005f80:	00048513          	mv	a0,s1
    80005f84:	ffffd097          	auipc	ra,0xffffd
    80005f88:	0b0080e7          	jalr	176(ra) # 80003034 <_ZdlPv>
    80005f8c:	01813083          	ld	ra,24(sp)
    80005f90:	01013403          	ld	s0,16(sp)
    80005f94:	00813483          	ld	s1,8(sp)
    80005f98:	02010113          	addi	sp,sp,32
    80005f9c:	00008067          	ret

0000000080005fa0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005fa0:	ff010113          	addi	sp,sp,-16
    80005fa4:	00113423          	sd	ra,8(sp)
    80005fa8:	00813023          	sd	s0,0(sp)
    80005fac:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005fb0:	02053583          	ld	a1,32(a0)
    80005fb4:	fffff097          	auipc	ra,0xfffff
    80005fb8:	7e4080e7          	jalr	2020(ra) # 80005798 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005fbc:	00813083          	ld	ra,8(sp)
    80005fc0:	00013403          	ld	s0,0(sp)
    80005fc4:	01010113          	addi	sp,sp,16
    80005fc8:	00008067          	ret

0000000080005fcc <_ZN12ProducerSync3runEv>:
    void run() override {
    80005fcc:	ff010113          	addi	sp,sp,-16
    80005fd0:	00113423          	sd	ra,8(sp)
    80005fd4:	00813023          	sd	s0,0(sp)
    80005fd8:	01010413          	addi	s0,sp,16
        producer(td);
    80005fdc:	02053583          	ld	a1,32(a0)
    80005fe0:	00000097          	auipc	ra,0x0
    80005fe4:	878080e7          	jalr	-1928(ra) # 80005858 <_ZN12ProducerSync8producerEPv>
    }
    80005fe8:	00813083          	ld	ra,8(sp)
    80005fec:	00013403          	ld	s0,0(sp)
    80005ff0:	01010113          	addi	sp,sp,16
    80005ff4:	00008067          	ret

0000000080005ff8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005ff8:	ff010113          	addi	sp,sp,-16
    80005ffc:	00113423          	sd	ra,8(sp)
    80006000:	00813023          	sd	s0,0(sp)
    80006004:	01010413          	addi	s0,sp,16
        consumer(td);
    80006008:	02053583          	ld	a1,32(a0)
    8000600c:	00000097          	auipc	ra,0x0
    80006010:	8e0080e7          	jalr	-1824(ra) # 800058ec <_ZN12ConsumerSync8consumerEPv>
    }
    80006014:	00813083          	ld	ra,8(sp)
    80006018:	00013403          	ld	s0,0(sp)
    8000601c:	01010113          	addi	sp,sp,16
    80006020:	00008067          	ret

0000000080006024 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006024:	fe010113          	addi	sp,sp,-32
    80006028:	00113c23          	sd	ra,24(sp)
    8000602c:	00813823          	sd	s0,16(sp)
    80006030:	00913423          	sd	s1,8(sp)
    80006034:	02010413          	addi	s0,sp,32
    80006038:	00050493          	mv	s1,a0
    LOCK();
    8000603c:	00100613          	li	a2,1
    80006040:	00000593          	li	a1,0
    80006044:	00007517          	auipc	a0,0x7
    80006048:	c6c50513          	addi	a0,a0,-916 # 8000ccb0 <lockPrint>
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	284080e7          	jalr	644(ra) # 800012d0 <copy_and_swap>
    80006054:	00050863          	beqz	a0,80006064 <_Z11printStringPKc+0x40>
    80006058:	ffffb097          	auipc	ra,0xffffb
    8000605c:	5f8080e7          	jalr	1528(ra) # 80001650 <thread_dispatch>
    80006060:	fddff06f          	j	8000603c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006064:	0004c503          	lbu	a0,0(s1)
    80006068:	00050a63          	beqz	a0,8000607c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	738080e7          	jalr	1848(ra) # 800017a4 <putc>
        string++;
    80006074:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006078:	fedff06f          	j	80006064 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000607c:	00000613          	li	a2,0
    80006080:	00100593          	li	a1,1
    80006084:	00007517          	auipc	a0,0x7
    80006088:	c2c50513          	addi	a0,a0,-980 # 8000ccb0 <lockPrint>
    8000608c:	ffffb097          	auipc	ra,0xffffb
    80006090:	244080e7          	jalr	580(ra) # 800012d0 <copy_and_swap>
    80006094:	fe0514e3          	bnez	a0,8000607c <_Z11printStringPKc+0x58>
}
    80006098:	01813083          	ld	ra,24(sp)
    8000609c:	01013403          	ld	s0,16(sp)
    800060a0:	00813483          	ld	s1,8(sp)
    800060a4:	02010113          	addi	sp,sp,32
    800060a8:	00008067          	ret

00000000800060ac <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800060ac:	fd010113          	addi	sp,sp,-48
    800060b0:	02113423          	sd	ra,40(sp)
    800060b4:	02813023          	sd	s0,32(sp)
    800060b8:	00913c23          	sd	s1,24(sp)
    800060bc:	01213823          	sd	s2,16(sp)
    800060c0:	01313423          	sd	s3,8(sp)
    800060c4:	01413023          	sd	s4,0(sp)
    800060c8:	03010413          	addi	s0,sp,48
    800060cc:	00050993          	mv	s3,a0
    800060d0:	00058a13          	mv	s4,a1
    LOCK();
    800060d4:	00100613          	li	a2,1
    800060d8:	00000593          	li	a1,0
    800060dc:	00007517          	auipc	a0,0x7
    800060e0:	bd450513          	addi	a0,a0,-1068 # 8000ccb0 <lockPrint>
    800060e4:	ffffb097          	auipc	ra,0xffffb
    800060e8:	1ec080e7          	jalr	492(ra) # 800012d0 <copy_and_swap>
    800060ec:	00050863          	beqz	a0,800060fc <_Z9getStringPci+0x50>
    800060f0:	ffffb097          	auipc	ra,0xffffb
    800060f4:	560080e7          	jalr	1376(ra) # 80001650 <thread_dispatch>
    800060f8:	fddff06f          	j	800060d4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800060fc:	00000913          	li	s2,0
    80006100:	00090493          	mv	s1,s2
    80006104:	0019091b          	addiw	s2,s2,1
    80006108:	03495a63          	bge	s2,s4,8000613c <_Z9getStringPci+0x90>
        cc = getc();
    8000610c:	ffffb097          	auipc	ra,0xffffb
    80006110:	674080e7          	jalr	1652(ra) # 80001780 <getc>
        if(cc < 1)
    80006114:	02050463          	beqz	a0,8000613c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006118:	009984b3          	add	s1,s3,s1
    8000611c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006120:	00a00793          	li	a5,10
    80006124:	00f50a63          	beq	a0,a5,80006138 <_Z9getStringPci+0x8c>
    80006128:	00d00793          	li	a5,13
    8000612c:	fcf51ae3          	bne	a0,a5,80006100 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006130:	00090493          	mv	s1,s2
    80006134:	0080006f          	j	8000613c <_Z9getStringPci+0x90>
    80006138:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000613c:	009984b3          	add	s1,s3,s1
    80006140:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006144:	00000613          	li	a2,0
    80006148:	00100593          	li	a1,1
    8000614c:	00007517          	auipc	a0,0x7
    80006150:	b6450513          	addi	a0,a0,-1180 # 8000ccb0 <lockPrint>
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	17c080e7          	jalr	380(ra) # 800012d0 <copy_and_swap>
    8000615c:	fe0514e3          	bnez	a0,80006144 <_Z9getStringPci+0x98>
    return buf;
}
    80006160:	00098513          	mv	a0,s3
    80006164:	02813083          	ld	ra,40(sp)
    80006168:	02013403          	ld	s0,32(sp)
    8000616c:	01813483          	ld	s1,24(sp)
    80006170:	01013903          	ld	s2,16(sp)
    80006174:	00813983          	ld	s3,8(sp)
    80006178:	00013a03          	ld	s4,0(sp)
    8000617c:	03010113          	addi	sp,sp,48
    80006180:	00008067          	ret

0000000080006184 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006184:	ff010113          	addi	sp,sp,-16
    80006188:	00813423          	sd	s0,8(sp)
    8000618c:	01010413          	addi	s0,sp,16
    80006190:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006194:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006198:	0006c603          	lbu	a2,0(a3)
    8000619c:	fd06071b          	addiw	a4,a2,-48
    800061a0:	0ff77713          	andi	a4,a4,255
    800061a4:	00900793          	li	a5,9
    800061a8:	02e7e063          	bltu	a5,a4,800061c8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800061ac:	0025179b          	slliw	a5,a0,0x2
    800061b0:	00a787bb          	addw	a5,a5,a0
    800061b4:	0017979b          	slliw	a5,a5,0x1
    800061b8:	00168693          	addi	a3,a3,1
    800061bc:	00c787bb          	addw	a5,a5,a2
    800061c0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800061c4:	fd5ff06f          	j	80006198 <_Z11stringToIntPKc+0x14>
    return n;
}
    800061c8:	00813403          	ld	s0,8(sp)
    800061cc:	01010113          	addi	sp,sp,16
    800061d0:	00008067          	ret

00000000800061d4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800061d4:	fc010113          	addi	sp,sp,-64
    800061d8:	02113c23          	sd	ra,56(sp)
    800061dc:	02813823          	sd	s0,48(sp)
    800061e0:	02913423          	sd	s1,40(sp)
    800061e4:	03213023          	sd	s2,32(sp)
    800061e8:	01313c23          	sd	s3,24(sp)
    800061ec:	04010413          	addi	s0,sp,64
    800061f0:	00050493          	mv	s1,a0
    800061f4:	00058913          	mv	s2,a1
    800061f8:	00060993          	mv	s3,a2
    LOCK();
    800061fc:	00100613          	li	a2,1
    80006200:	00000593          	li	a1,0
    80006204:	00007517          	auipc	a0,0x7
    80006208:	aac50513          	addi	a0,a0,-1364 # 8000ccb0 <lockPrint>
    8000620c:	ffffb097          	auipc	ra,0xffffb
    80006210:	0c4080e7          	jalr	196(ra) # 800012d0 <copy_and_swap>
    80006214:	00050863          	beqz	a0,80006224 <_Z8printIntiii+0x50>
    80006218:	ffffb097          	auipc	ra,0xffffb
    8000621c:	438080e7          	jalr	1080(ra) # 80001650 <thread_dispatch>
    80006220:	fddff06f          	j	800061fc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006224:	00098463          	beqz	s3,8000622c <_Z8printIntiii+0x58>
    80006228:	0804c463          	bltz	s1,800062b0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000622c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006230:	00000593          	li	a1,0
    }

    i = 0;
    80006234:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006238:	0009079b          	sext.w	a5,s2
    8000623c:	0325773b          	remuw	a4,a0,s2
    80006240:	00048613          	mv	a2,s1
    80006244:	0014849b          	addiw	s1,s1,1
    80006248:	02071693          	slli	a3,a4,0x20
    8000624c:	0206d693          	srli	a3,a3,0x20
    80006250:	00006717          	auipc	a4,0x6
    80006254:	6c070713          	addi	a4,a4,1728 # 8000c910 <digits>
    80006258:	00d70733          	add	a4,a4,a3
    8000625c:	00074683          	lbu	a3,0(a4)
    80006260:	fd040713          	addi	a4,s0,-48
    80006264:	00c70733          	add	a4,a4,a2
    80006268:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000626c:	0005071b          	sext.w	a4,a0
    80006270:	0325553b          	divuw	a0,a0,s2
    80006274:	fcf772e3          	bgeu	a4,a5,80006238 <_Z8printIntiii+0x64>
    if(neg)
    80006278:	00058c63          	beqz	a1,80006290 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000627c:	fd040793          	addi	a5,s0,-48
    80006280:	009784b3          	add	s1,a5,s1
    80006284:	02d00793          	li	a5,45
    80006288:	fef48823          	sb	a5,-16(s1)
    8000628c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006290:	fff4849b          	addiw	s1,s1,-1
    80006294:	0204c463          	bltz	s1,800062bc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006298:	fd040793          	addi	a5,s0,-48
    8000629c:	009787b3          	add	a5,a5,s1
    800062a0:	ff07c503          	lbu	a0,-16(a5)
    800062a4:	ffffb097          	auipc	ra,0xffffb
    800062a8:	500080e7          	jalr	1280(ra) # 800017a4 <putc>
    800062ac:	fe5ff06f          	j	80006290 <_Z8printIntiii+0xbc>
        x = -xx;
    800062b0:	4090053b          	negw	a0,s1
        neg = 1;
    800062b4:	00100593          	li	a1,1
        x = -xx;
    800062b8:	f7dff06f          	j	80006234 <_Z8printIntiii+0x60>

    UNLOCK();
    800062bc:	00000613          	li	a2,0
    800062c0:	00100593          	li	a1,1
    800062c4:	00007517          	auipc	a0,0x7
    800062c8:	9ec50513          	addi	a0,a0,-1556 # 8000ccb0 <lockPrint>
    800062cc:	ffffb097          	auipc	ra,0xffffb
    800062d0:	004080e7          	jalr	4(ra) # 800012d0 <copy_and_swap>
    800062d4:	fe0514e3          	bnez	a0,800062bc <_Z8printIntiii+0xe8>
    800062d8:	03813083          	ld	ra,56(sp)
    800062dc:	03013403          	ld	s0,48(sp)
    800062e0:	02813483          	ld	s1,40(sp)
    800062e4:	02013903          	ld	s2,32(sp)
    800062e8:	01813983          	ld	s3,24(sp)
    800062ec:	04010113          	addi	sp,sp,64
    800062f0:	00008067          	ret

00000000800062f4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800062f4:	fd010113          	addi	sp,sp,-48
    800062f8:	02113423          	sd	ra,40(sp)
    800062fc:	02813023          	sd	s0,32(sp)
    80006300:	00913c23          	sd	s1,24(sp)
    80006304:	01213823          	sd	s2,16(sp)
    80006308:	01313423          	sd	s3,8(sp)
    8000630c:	03010413          	addi	s0,sp,48
    80006310:	00050493          	mv	s1,a0
    80006314:	00058913          	mv	s2,a1
    80006318:	0015879b          	addiw	a5,a1,1
    8000631c:	0007851b          	sext.w	a0,a5
    80006320:	00f4a023          	sw	a5,0(s1)
    80006324:	0004a823          	sw	zero,16(s1)
    80006328:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000632c:	00251513          	slli	a0,a0,0x2
    80006330:	ffffb097          	auipc	ra,0xffffb
    80006334:	224080e7          	jalr	548(ra) # 80001554 <mem_alloc>
    80006338:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000633c:	01000513          	li	a0,16
    80006340:	ffffd097          	auipc	ra,0xffffd
    80006344:	ccc080e7          	jalr	-820(ra) # 8000300c <_Znwm>
    80006348:	00050993          	mv	s3,a0
    8000634c:	00000593          	li	a1,0
    80006350:	ffffd097          	auipc	ra,0xffffd
    80006354:	e78080e7          	jalr	-392(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    80006358:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000635c:	01000513          	li	a0,16
    80006360:	ffffd097          	auipc	ra,0xffffd
    80006364:	cac080e7          	jalr	-852(ra) # 8000300c <_Znwm>
    80006368:	00050993          	mv	s3,a0
    8000636c:	00090593          	mv	a1,s2
    80006370:	ffffd097          	auipc	ra,0xffffd
    80006374:	e58080e7          	jalr	-424(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    80006378:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000637c:	01000513          	li	a0,16
    80006380:	ffffd097          	auipc	ra,0xffffd
    80006384:	c8c080e7          	jalr	-884(ra) # 8000300c <_Znwm>
    80006388:	00050913          	mv	s2,a0
    8000638c:	00100593          	li	a1,1
    80006390:	ffffd097          	auipc	ra,0xffffd
    80006394:	e38080e7          	jalr	-456(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    80006398:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000639c:	01000513          	li	a0,16
    800063a0:	ffffd097          	auipc	ra,0xffffd
    800063a4:	c6c080e7          	jalr	-916(ra) # 8000300c <_Znwm>
    800063a8:	00050913          	mv	s2,a0
    800063ac:	00100593          	li	a1,1
    800063b0:	ffffd097          	auipc	ra,0xffffd
    800063b4:	e18080e7          	jalr	-488(ra) # 800031c8 <_ZN9SemaphoreC1Ej>
    800063b8:	0324b823          	sd	s2,48(s1)
}
    800063bc:	02813083          	ld	ra,40(sp)
    800063c0:	02013403          	ld	s0,32(sp)
    800063c4:	01813483          	ld	s1,24(sp)
    800063c8:	01013903          	ld	s2,16(sp)
    800063cc:	00813983          	ld	s3,8(sp)
    800063d0:	03010113          	addi	sp,sp,48
    800063d4:	00008067          	ret
    800063d8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800063dc:	00098513          	mv	a0,s3
    800063e0:	ffffd097          	auipc	ra,0xffffd
    800063e4:	c54080e7          	jalr	-940(ra) # 80003034 <_ZdlPv>
    800063e8:	00048513          	mv	a0,s1
    800063ec:	00008097          	auipc	ra,0x8
    800063f0:	99c080e7          	jalr	-1636(ra) # 8000dd88 <_Unwind_Resume>
    800063f4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800063f8:	00098513          	mv	a0,s3
    800063fc:	ffffd097          	auipc	ra,0xffffd
    80006400:	c38080e7          	jalr	-968(ra) # 80003034 <_ZdlPv>
    80006404:	00048513          	mv	a0,s1
    80006408:	00008097          	auipc	ra,0x8
    8000640c:	980080e7          	jalr	-1664(ra) # 8000dd88 <_Unwind_Resume>
    80006410:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006414:	00090513          	mv	a0,s2
    80006418:	ffffd097          	auipc	ra,0xffffd
    8000641c:	c1c080e7          	jalr	-996(ra) # 80003034 <_ZdlPv>
    80006420:	00048513          	mv	a0,s1
    80006424:	00008097          	auipc	ra,0x8
    80006428:	964080e7          	jalr	-1692(ra) # 8000dd88 <_Unwind_Resume>
    8000642c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006430:	00090513          	mv	a0,s2
    80006434:	ffffd097          	auipc	ra,0xffffd
    80006438:	c00080e7          	jalr	-1024(ra) # 80003034 <_ZdlPv>
    8000643c:	00048513          	mv	a0,s1
    80006440:	00008097          	auipc	ra,0x8
    80006444:	948080e7          	jalr	-1720(ra) # 8000dd88 <_Unwind_Resume>

0000000080006448 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006448:	fe010113          	addi	sp,sp,-32
    8000644c:	00113c23          	sd	ra,24(sp)
    80006450:	00813823          	sd	s0,16(sp)
    80006454:	00913423          	sd	s1,8(sp)
    80006458:	01213023          	sd	s2,0(sp)
    8000645c:	02010413          	addi	s0,sp,32
    80006460:	00050493          	mv	s1,a0
    80006464:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006468:	01853503          	ld	a0,24(a0)
    8000646c:	ffffd097          	auipc	ra,0xffffd
    80006470:	d94080e7          	jalr	-620(ra) # 80003200 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006474:	0304b503          	ld	a0,48(s1)
    80006478:	ffffd097          	auipc	ra,0xffffd
    8000647c:	d88080e7          	jalr	-632(ra) # 80003200 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006480:	0084b783          	ld	a5,8(s1)
    80006484:	0144a703          	lw	a4,20(s1)
    80006488:	00271713          	slli	a4,a4,0x2
    8000648c:	00e787b3          	add	a5,a5,a4
    80006490:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006494:	0144a783          	lw	a5,20(s1)
    80006498:	0017879b          	addiw	a5,a5,1
    8000649c:	0004a703          	lw	a4,0(s1)
    800064a0:	02e7e7bb          	remw	a5,a5,a4
    800064a4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800064a8:	0304b503          	ld	a0,48(s1)
    800064ac:	ffffd097          	auipc	ra,0xffffd
    800064b0:	d80080e7          	jalr	-640(ra) # 8000322c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800064b4:	0204b503          	ld	a0,32(s1)
    800064b8:	ffffd097          	auipc	ra,0xffffd
    800064bc:	d74080e7          	jalr	-652(ra) # 8000322c <_ZN9Semaphore6signalEv>

}
    800064c0:	01813083          	ld	ra,24(sp)
    800064c4:	01013403          	ld	s0,16(sp)
    800064c8:	00813483          	ld	s1,8(sp)
    800064cc:	00013903          	ld	s2,0(sp)
    800064d0:	02010113          	addi	sp,sp,32
    800064d4:	00008067          	ret

00000000800064d8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800064d8:	fe010113          	addi	sp,sp,-32
    800064dc:	00113c23          	sd	ra,24(sp)
    800064e0:	00813823          	sd	s0,16(sp)
    800064e4:	00913423          	sd	s1,8(sp)
    800064e8:	01213023          	sd	s2,0(sp)
    800064ec:	02010413          	addi	s0,sp,32
    800064f0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800064f4:	02053503          	ld	a0,32(a0)
    800064f8:	ffffd097          	auipc	ra,0xffffd
    800064fc:	d08080e7          	jalr	-760(ra) # 80003200 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006500:	0284b503          	ld	a0,40(s1)
    80006504:	ffffd097          	auipc	ra,0xffffd
    80006508:	cfc080e7          	jalr	-772(ra) # 80003200 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000650c:	0084b703          	ld	a4,8(s1)
    80006510:	0104a783          	lw	a5,16(s1)
    80006514:	00279693          	slli	a3,a5,0x2
    80006518:	00d70733          	add	a4,a4,a3
    8000651c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006520:	0017879b          	addiw	a5,a5,1
    80006524:	0004a703          	lw	a4,0(s1)
    80006528:	02e7e7bb          	remw	a5,a5,a4
    8000652c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006530:	0284b503          	ld	a0,40(s1)
    80006534:	ffffd097          	auipc	ra,0xffffd
    80006538:	cf8080e7          	jalr	-776(ra) # 8000322c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000653c:	0184b503          	ld	a0,24(s1)
    80006540:	ffffd097          	auipc	ra,0xffffd
    80006544:	cec080e7          	jalr	-788(ra) # 8000322c <_ZN9Semaphore6signalEv>

    return ret;
}
    80006548:	00090513          	mv	a0,s2
    8000654c:	01813083          	ld	ra,24(sp)
    80006550:	01013403          	ld	s0,16(sp)
    80006554:	00813483          	ld	s1,8(sp)
    80006558:	00013903          	ld	s2,0(sp)
    8000655c:	02010113          	addi	sp,sp,32
    80006560:	00008067          	ret

0000000080006564 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006564:	fe010113          	addi	sp,sp,-32
    80006568:	00113c23          	sd	ra,24(sp)
    8000656c:	00813823          	sd	s0,16(sp)
    80006570:	00913423          	sd	s1,8(sp)
    80006574:	01213023          	sd	s2,0(sp)
    80006578:	02010413          	addi	s0,sp,32
    8000657c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006580:	02853503          	ld	a0,40(a0)
    80006584:	ffffd097          	auipc	ra,0xffffd
    80006588:	c7c080e7          	jalr	-900(ra) # 80003200 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000658c:	0304b503          	ld	a0,48(s1)
    80006590:	ffffd097          	auipc	ra,0xffffd
    80006594:	c70080e7          	jalr	-912(ra) # 80003200 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006598:	0144a783          	lw	a5,20(s1)
    8000659c:	0104a903          	lw	s2,16(s1)
    800065a0:	0327ce63          	blt	a5,s2,800065dc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800065a4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800065a8:	0304b503          	ld	a0,48(s1)
    800065ac:	ffffd097          	auipc	ra,0xffffd
    800065b0:	c80080e7          	jalr	-896(ra) # 8000322c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800065b4:	0284b503          	ld	a0,40(s1)
    800065b8:	ffffd097          	auipc	ra,0xffffd
    800065bc:	c74080e7          	jalr	-908(ra) # 8000322c <_ZN9Semaphore6signalEv>

    return ret;
}
    800065c0:	00090513          	mv	a0,s2
    800065c4:	01813083          	ld	ra,24(sp)
    800065c8:	01013403          	ld	s0,16(sp)
    800065cc:	00813483          	ld	s1,8(sp)
    800065d0:	00013903          	ld	s2,0(sp)
    800065d4:	02010113          	addi	sp,sp,32
    800065d8:	00008067          	ret
        ret = cap - head + tail;
    800065dc:	0004a703          	lw	a4,0(s1)
    800065e0:	4127093b          	subw	s2,a4,s2
    800065e4:	00f9093b          	addw	s2,s2,a5
    800065e8:	fc1ff06f          	j	800065a8 <_ZN9BufferCPP6getCntEv+0x44>

00000000800065ec <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800065ec:	fe010113          	addi	sp,sp,-32
    800065f0:	00113c23          	sd	ra,24(sp)
    800065f4:	00813823          	sd	s0,16(sp)
    800065f8:	00913423          	sd	s1,8(sp)
    800065fc:	02010413          	addi	s0,sp,32
    80006600:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006604:	00a00513          	li	a0,10
    80006608:	ffffd097          	auipc	ra,0xffffd
    8000660c:	ce4080e7          	jalr	-796(ra) # 800032ec <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006610:	00004517          	auipc	a0,0x4
    80006614:	fb050513          	addi	a0,a0,-80 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80006618:	00000097          	auipc	ra,0x0
    8000661c:	a0c080e7          	jalr	-1524(ra) # 80006024 <_Z11printStringPKc>
    while (getCnt()) {
    80006620:	00048513          	mv	a0,s1
    80006624:	00000097          	auipc	ra,0x0
    80006628:	f40080e7          	jalr	-192(ra) # 80006564 <_ZN9BufferCPP6getCntEv>
    8000662c:	02050c63          	beqz	a0,80006664 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006630:	0084b783          	ld	a5,8(s1)
    80006634:	0104a703          	lw	a4,16(s1)
    80006638:	00271713          	slli	a4,a4,0x2
    8000663c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006640:	0007c503          	lbu	a0,0(a5)
    80006644:	ffffd097          	auipc	ra,0xffffd
    80006648:	ca8080e7          	jalr	-856(ra) # 800032ec <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000664c:	0104a783          	lw	a5,16(s1)
    80006650:	0017879b          	addiw	a5,a5,1
    80006654:	0004a703          	lw	a4,0(s1)
    80006658:	02e7e7bb          	remw	a5,a5,a4
    8000665c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006660:	fc1ff06f          	j	80006620 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006664:	02100513          	li	a0,33
    80006668:	ffffd097          	auipc	ra,0xffffd
    8000666c:	c84080e7          	jalr	-892(ra) # 800032ec <_ZN7Console4putcEc>
    Console::putc('\n');
    80006670:	00a00513          	li	a0,10
    80006674:	ffffd097          	auipc	ra,0xffffd
    80006678:	c78080e7          	jalr	-904(ra) # 800032ec <_ZN7Console4putcEc>
    mem_free(buffer);
    8000667c:	0084b503          	ld	a0,8(s1)
    80006680:	ffffb097          	auipc	ra,0xffffb
    80006684:	f00080e7          	jalr	-256(ra) # 80001580 <mem_free>
    delete itemAvailable;
    80006688:	0204b503          	ld	a0,32(s1)
    8000668c:	00050863          	beqz	a0,8000669c <_ZN9BufferCPPD1Ev+0xb0>
    80006690:	00053783          	ld	a5,0(a0)
    80006694:	0087b783          	ld	a5,8(a5)
    80006698:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000669c:	0184b503          	ld	a0,24(s1)
    800066a0:	00050863          	beqz	a0,800066b0 <_ZN9BufferCPPD1Ev+0xc4>
    800066a4:	00053783          	ld	a5,0(a0)
    800066a8:	0087b783          	ld	a5,8(a5)
    800066ac:	000780e7          	jalr	a5
    delete mutexTail;
    800066b0:	0304b503          	ld	a0,48(s1)
    800066b4:	00050863          	beqz	a0,800066c4 <_ZN9BufferCPPD1Ev+0xd8>
    800066b8:	00053783          	ld	a5,0(a0)
    800066bc:	0087b783          	ld	a5,8(a5)
    800066c0:	000780e7          	jalr	a5
    delete mutexHead;
    800066c4:	0284b503          	ld	a0,40(s1)
    800066c8:	00050863          	beqz	a0,800066d8 <_ZN9BufferCPPD1Ev+0xec>
    800066cc:	00053783          	ld	a5,0(a0)
    800066d0:	0087b783          	ld	a5,8(a5)
    800066d4:	000780e7          	jalr	a5
}
    800066d8:	01813083          	ld	ra,24(sp)
    800066dc:	01013403          	ld	s0,16(sp)
    800066e0:	00813483          	ld	s1,8(sp)
    800066e4:	02010113          	addi	sp,sp,32
    800066e8:	00008067          	ret

00000000800066ec <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800066ec:	fe010113          	addi	sp,sp,-32
    800066f0:	00113c23          	sd	ra,24(sp)
    800066f4:	00813823          	sd	s0,16(sp)
    800066f8:	00913423          	sd	s1,8(sp)
    800066fc:	01213023          	sd	s2,0(sp)
    80006700:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006704:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006708:	00600493          	li	s1,6
    while (--i > 0) {
    8000670c:	fff4849b          	addiw	s1,s1,-1
    80006710:	04905463          	blez	s1,80006758 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006714:	00004517          	auipc	a0,0x4
    80006718:	ec450513          	addi	a0,a0,-316 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    8000671c:	00000097          	auipc	ra,0x0
    80006720:	908080e7          	jalr	-1784(ra) # 80006024 <_Z11printStringPKc>
        printInt(sleep_time);
    80006724:	00000613          	li	a2,0
    80006728:	00a00593          	li	a1,10
    8000672c:	0009051b          	sext.w	a0,s2
    80006730:	00000097          	auipc	ra,0x0
    80006734:	aa4080e7          	jalr	-1372(ra) # 800061d4 <_Z8printIntiii>
        printString(" !\n");
    80006738:	00004517          	auipc	a0,0x4
    8000673c:	ea850513          	addi	a0,a0,-344 # 8000a5e0 <CONSOLE_STATUS+0x5d0>
    80006740:	00000097          	auipc	ra,0x0
    80006744:	8e4080e7          	jalr	-1820(ra) # 80006024 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006748:	00090513          	mv	a0,s2
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	f24080e7          	jalr	-220(ra) # 80001670 <time_sleep>
    while (--i > 0) {
    80006754:	fb9ff06f          	j	8000670c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006758:	00a00793          	li	a5,10
    8000675c:	02f95933          	divu	s2,s2,a5
    80006760:	fff90913          	addi	s2,s2,-1
    80006764:	00006797          	auipc	a5,0x6
    80006768:	55478793          	addi	a5,a5,1364 # 8000ccb8 <_ZL8finished>
    8000676c:	01278933          	add	s2,a5,s2
    80006770:	00100793          	li	a5,1
    80006774:	00f90023          	sb	a5,0(s2)
}
    80006778:	01813083          	ld	ra,24(sp)
    8000677c:	01013403          	ld	s0,16(sp)
    80006780:	00813483          	ld	s1,8(sp)
    80006784:	00013903          	ld	s2,0(sp)
    80006788:	02010113          	addi	sp,sp,32
    8000678c:	00008067          	ret

0000000080006790 <_Z12testSleepingv>:

void testSleeping() {
    80006790:	fc010113          	addi	sp,sp,-64
    80006794:	02113c23          	sd	ra,56(sp)
    80006798:	02813823          	sd	s0,48(sp)
    8000679c:	02913423          	sd	s1,40(sp)
    800067a0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800067a4:	00a00793          	li	a5,10
    800067a8:	fcf43823          	sd	a5,-48(s0)
    800067ac:	01400793          	li	a5,20
    800067b0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800067b4:	00000493          	li	s1,0
    800067b8:	02c0006f          	j	800067e4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800067bc:	00349793          	slli	a5,s1,0x3
    800067c0:	fd040613          	addi	a2,s0,-48
    800067c4:	00f60633          	add	a2,a2,a5
    800067c8:	00000597          	auipc	a1,0x0
    800067cc:	f2458593          	addi	a1,a1,-220 # 800066ec <_ZL9sleepyRunPv>
    800067d0:	fc040513          	addi	a0,s0,-64
    800067d4:	00f50533          	add	a0,a0,a5
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	dd4080e7          	jalr	-556(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800067e0:	0014849b          	addiw	s1,s1,1
    800067e4:	00100793          	li	a5,1
    800067e8:	fc97dae3          	bge	a5,s1,800067bc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800067ec:	00006797          	auipc	a5,0x6
    800067f0:	4cc7c783          	lbu	a5,1228(a5) # 8000ccb8 <_ZL8finished>
    800067f4:	fe078ce3          	beqz	a5,800067ec <_Z12testSleepingv+0x5c>
    800067f8:	00006797          	auipc	a5,0x6
    800067fc:	4c17c783          	lbu	a5,1217(a5) # 8000ccb9 <_ZL8finished+0x1>
    80006800:	fe0786e3          	beqz	a5,800067ec <_Z12testSleepingv+0x5c>
}
    80006804:	03813083          	ld	ra,56(sp)
    80006808:	03013403          	ld	s0,48(sp)
    8000680c:	02813483          	ld	s1,40(sp)
    80006810:	04010113          	addi	sp,sp,64
    80006814:	00008067          	ret

0000000080006818 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006818:	fe010113          	addi	sp,sp,-32
    8000681c:	00113c23          	sd	ra,24(sp)
    80006820:	00813823          	sd	s0,16(sp)
    80006824:	00913423          	sd	s1,8(sp)
    80006828:	01213023          	sd	s2,0(sp)
    8000682c:	02010413          	addi	s0,sp,32
    80006830:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006834:	00100793          	li	a5,1
    80006838:	02a7f863          	bgeu	a5,a0,80006868 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000683c:	00a00793          	li	a5,10
    80006840:	02f577b3          	remu	a5,a0,a5
    80006844:	02078e63          	beqz	a5,80006880 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006848:	fff48513          	addi	a0,s1,-1
    8000684c:	00000097          	auipc	ra,0x0
    80006850:	fcc080e7          	jalr	-52(ra) # 80006818 <_ZL9fibonaccim>
    80006854:	00050913          	mv	s2,a0
    80006858:	ffe48513          	addi	a0,s1,-2
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	fbc080e7          	jalr	-68(ra) # 80006818 <_ZL9fibonaccim>
    80006864:	00a90533          	add	a0,s2,a0
}
    80006868:	01813083          	ld	ra,24(sp)
    8000686c:	01013403          	ld	s0,16(sp)
    80006870:	00813483          	ld	s1,8(sp)
    80006874:	00013903          	ld	s2,0(sp)
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	dd0080e7          	jalr	-560(ra) # 80001650 <thread_dispatch>
    80006888:	fc1ff06f          	j	80006848 <_ZL9fibonaccim+0x30>

000000008000688c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000688c:	fe010113          	addi	sp,sp,-32
    80006890:	00113c23          	sd	ra,24(sp)
    80006894:	00813823          	sd	s0,16(sp)
    80006898:	00913423          	sd	s1,8(sp)
    8000689c:	01213023          	sd	s2,0(sp)
    800068a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800068a4:	00a00493          	li	s1,10
    800068a8:	0400006f          	j	800068e8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800068ac:	00004517          	auipc	a0,0x4
    800068b0:	9cc50513          	addi	a0,a0,-1588 # 8000a278 <CONSOLE_STATUS+0x268>
    800068b4:	fffff097          	auipc	ra,0xfffff
    800068b8:	770080e7          	jalr	1904(ra) # 80006024 <_Z11printStringPKc>
    800068bc:	00000613          	li	a2,0
    800068c0:	00a00593          	li	a1,10
    800068c4:	00048513          	mv	a0,s1
    800068c8:	00000097          	auipc	ra,0x0
    800068cc:	90c080e7          	jalr	-1780(ra) # 800061d4 <_Z8printIntiii>
    800068d0:	00004517          	auipc	a0,0x4
    800068d4:	bb850513          	addi	a0,a0,-1096 # 8000a488 <CONSOLE_STATUS+0x478>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	74c080e7          	jalr	1868(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800068e0:	0014849b          	addiw	s1,s1,1
    800068e4:	0ff4f493          	andi	s1,s1,255
    800068e8:	00c00793          	li	a5,12
    800068ec:	fc97f0e3          	bgeu	a5,s1,800068ac <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800068f0:	00004517          	auipc	a0,0x4
    800068f4:	99050513          	addi	a0,a0,-1648 # 8000a280 <CONSOLE_STATUS+0x270>
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	72c080e7          	jalr	1836(ra) # 80006024 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006900:	00500313          	li	t1,5
    thread_dispatch();
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	d4c080e7          	jalr	-692(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    8000690c:	01000513          	li	a0,16
    80006910:	00000097          	auipc	ra,0x0
    80006914:	f08080e7          	jalr	-248(ra) # 80006818 <_ZL9fibonaccim>
    80006918:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000691c:	00004517          	auipc	a0,0x4
    80006920:	97450513          	addi	a0,a0,-1676 # 8000a290 <CONSOLE_STATUS+0x280>
    80006924:	fffff097          	auipc	ra,0xfffff
    80006928:	700080e7          	jalr	1792(ra) # 80006024 <_Z11printStringPKc>
    8000692c:	00000613          	li	a2,0
    80006930:	00a00593          	li	a1,10
    80006934:	0009051b          	sext.w	a0,s2
    80006938:	00000097          	auipc	ra,0x0
    8000693c:	89c080e7          	jalr	-1892(ra) # 800061d4 <_Z8printIntiii>
    80006940:	00004517          	auipc	a0,0x4
    80006944:	b4850513          	addi	a0,a0,-1208 # 8000a488 <CONSOLE_STATUS+0x478>
    80006948:	fffff097          	auipc	ra,0xfffff
    8000694c:	6dc080e7          	jalr	1756(ra) # 80006024 <_Z11printStringPKc>
    80006950:	0400006f          	j	80006990 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006954:	00004517          	auipc	a0,0x4
    80006958:	92450513          	addi	a0,a0,-1756 # 8000a278 <CONSOLE_STATUS+0x268>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	6c8080e7          	jalr	1736(ra) # 80006024 <_Z11printStringPKc>
    80006964:	00000613          	li	a2,0
    80006968:	00a00593          	li	a1,10
    8000696c:	00048513          	mv	a0,s1
    80006970:	00000097          	auipc	ra,0x0
    80006974:	864080e7          	jalr	-1948(ra) # 800061d4 <_Z8printIntiii>
    80006978:	00004517          	auipc	a0,0x4
    8000697c:	b1050513          	addi	a0,a0,-1264 # 8000a488 <CONSOLE_STATUS+0x478>
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	6a4080e7          	jalr	1700(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006988:	0014849b          	addiw	s1,s1,1
    8000698c:	0ff4f493          	andi	s1,s1,255
    80006990:	00f00793          	li	a5,15
    80006994:	fc97f0e3          	bgeu	a5,s1,80006954 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006998:	00004517          	auipc	a0,0x4
    8000699c:	90850513          	addi	a0,a0,-1784 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800069a0:	fffff097          	auipc	ra,0xfffff
    800069a4:	684080e7          	jalr	1668(ra) # 80006024 <_Z11printStringPKc>
    finishedD = true;
    800069a8:	00100793          	li	a5,1
    800069ac:	00006717          	auipc	a4,0x6
    800069b0:	30f70723          	sb	a5,782(a4) # 8000ccba <_ZL9finishedD>
    thread_dispatch();
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	c9c080e7          	jalr	-868(ra) # 80001650 <thread_dispatch>
}
    800069bc:	01813083          	ld	ra,24(sp)
    800069c0:	01013403          	ld	s0,16(sp)
    800069c4:	00813483          	ld	s1,8(sp)
    800069c8:	00013903          	ld	s2,0(sp)
    800069cc:	02010113          	addi	sp,sp,32
    800069d0:	00008067          	ret

00000000800069d4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00913423          	sd	s1,8(sp)
    800069e4:	01213023          	sd	s2,0(sp)
    800069e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800069ec:	00000493          	li	s1,0
    800069f0:	0400006f          	j	80006a30 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800069f4:	00004517          	auipc	a0,0x4
    800069f8:	85450513          	addi	a0,a0,-1964 # 8000a248 <CONSOLE_STATUS+0x238>
    800069fc:	fffff097          	auipc	ra,0xfffff
    80006a00:	628080e7          	jalr	1576(ra) # 80006024 <_Z11printStringPKc>
    80006a04:	00000613          	li	a2,0
    80006a08:	00a00593          	li	a1,10
    80006a0c:	00048513          	mv	a0,s1
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	7c4080e7          	jalr	1988(ra) # 800061d4 <_Z8printIntiii>
    80006a18:	00004517          	auipc	a0,0x4
    80006a1c:	a7050513          	addi	a0,a0,-1424 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a20:	fffff097          	auipc	ra,0xfffff
    80006a24:	604080e7          	jalr	1540(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006a28:	0014849b          	addiw	s1,s1,1
    80006a2c:	0ff4f493          	andi	s1,s1,255
    80006a30:	00200793          	li	a5,2
    80006a34:	fc97f0e3          	bgeu	a5,s1,800069f4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006a38:	00004517          	auipc	a0,0x4
    80006a3c:	81850513          	addi	a0,a0,-2024 # 8000a250 <CONSOLE_STATUS+0x240>
    80006a40:	fffff097          	auipc	ra,0xfffff
    80006a44:	5e4080e7          	jalr	1508(ra) # 80006024 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006a48:	00700313          	li	t1,7
    thread_dispatch();
    80006a4c:	ffffb097          	auipc	ra,0xffffb
    80006a50:	c04080e7          	jalr	-1020(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006a54:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006a58:	00004517          	auipc	a0,0x4
    80006a5c:	80850513          	addi	a0,a0,-2040 # 8000a260 <CONSOLE_STATUS+0x250>
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	5c4080e7          	jalr	1476(ra) # 80006024 <_Z11printStringPKc>
    80006a68:	00000613          	li	a2,0
    80006a6c:	00a00593          	li	a1,10
    80006a70:	0009051b          	sext.w	a0,s2
    80006a74:	fffff097          	auipc	ra,0xfffff
    80006a78:	760080e7          	jalr	1888(ra) # 800061d4 <_Z8printIntiii>
    80006a7c:	00004517          	auipc	a0,0x4
    80006a80:	a0c50513          	addi	a0,a0,-1524 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	5a0080e7          	jalr	1440(ra) # 80006024 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006a8c:	00c00513          	li	a0,12
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	d88080e7          	jalr	-632(ra) # 80006818 <_ZL9fibonaccim>
    80006a98:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006a9c:	00003517          	auipc	a0,0x3
    80006aa0:	7cc50513          	addi	a0,a0,1996 # 8000a268 <CONSOLE_STATUS+0x258>
    80006aa4:	fffff097          	auipc	ra,0xfffff
    80006aa8:	580080e7          	jalr	1408(ra) # 80006024 <_Z11printStringPKc>
    80006aac:	00000613          	li	a2,0
    80006ab0:	00a00593          	li	a1,10
    80006ab4:	0009051b          	sext.w	a0,s2
    80006ab8:	fffff097          	auipc	ra,0xfffff
    80006abc:	71c080e7          	jalr	1820(ra) # 800061d4 <_Z8printIntiii>
    80006ac0:	00004517          	auipc	a0,0x4
    80006ac4:	9c850513          	addi	a0,a0,-1592 # 8000a488 <CONSOLE_STATUS+0x478>
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	55c080e7          	jalr	1372(ra) # 80006024 <_Z11printStringPKc>
    80006ad0:	0400006f          	j	80006b10 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006ad4:	00003517          	auipc	a0,0x3
    80006ad8:	77450513          	addi	a0,a0,1908 # 8000a248 <CONSOLE_STATUS+0x238>
    80006adc:	fffff097          	auipc	ra,0xfffff
    80006ae0:	548080e7          	jalr	1352(ra) # 80006024 <_Z11printStringPKc>
    80006ae4:	00000613          	li	a2,0
    80006ae8:	00a00593          	li	a1,10
    80006aec:	00048513          	mv	a0,s1
    80006af0:	fffff097          	auipc	ra,0xfffff
    80006af4:	6e4080e7          	jalr	1764(ra) # 800061d4 <_Z8printIntiii>
    80006af8:	00004517          	auipc	a0,0x4
    80006afc:	99050513          	addi	a0,a0,-1648 # 8000a488 <CONSOLE_STATUS+0x478>
    80006b00:	fffff097          	auipc	ra,0xfffff
    80006b04:	524080e7          	jalr	1316(ra) # 80006024 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006b08:	0014849b          	addiw	s1,s1,1
    80006b0c:	0ff4f493          	andi	s1,s1,255
    80006b10:	00500793          	li	a5,5
    80006b14:	fc97f0e3          	bgeu	a5,s1,80006ad4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006b18:	00003517          	auipc	a0,0x3
    80006b1c:	70850513          	addi	a0,a0,1800 # 8000a220 <CONSOLE_STATUS+0x210>
    80006b20:	fffff097          	auipc	ra,0xfffff
    80006b24:	504080e7          	jalr	1284(ra) # 80006024 <_Z11printStringPKc>
    finishedC = true;
    80006b28:	00100793          	li	a5,1
    80006b2c:	00006717          	auipc	a4,0x6
    80006b30:	18f707a3          	sb	a5,399(a4) # 8000ccbb <_ZL9finishedC>
    thread_dispatch();
    80006b34:	ffffb097          	auipc	ra,0xffffb
    80006b38:	b1c080e7          	jalr	-1252(ra) # 80001650 <thread_dispatch>
}
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	00813483          	ld	s1,8(sp)
    80006b48:	00013903          	ld	s2,0(sp)
    80006b4c:	02010113          	addi	sp,sp,32
    80006b50:	00008067          	ret

0000000080006b54 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006b54:	fe010113          	addi	sp,sp,-32
    80006b58:	00113c23          	sd	ra,24(sp)
    80006b5c:	00813823          	sd	s0,16(sp)
    80006b60:	00913423          	sd	s1,8(sp)
    80006b64:	01213023          	sd	s2,0(sp)
    80006b68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006b6c:	00000913          	li	s2,0
    80006b70:	0400006f          	j	80006bb0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006b74:	ffffb097          	auipc	ra,0xffffb
    80006b78:	adc080e7          	jalr	-1316(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006b7c:	00148493          	addi	s1,s1,1
    80006b80:	000027b7          	lui	a5,0x2
    80006b84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006b88:	0097ee63          	bltu	a5,s1,80006ba4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006b8c:	00000713          	li	a4,0
    80006b90:	000077b7          	lui	a5,0x7
    80006b94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006b98:	fce7eee3          	bltu	a5,a4,80006b74 <_ZL11workerBodyBPv+0x20>
    80006b9c:	00170713          	addi	a4,a4,1
    80006ba0:	ff1ff06f          	j	80006b90 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006ba4:	00a00793          	li	a5,10
    80006ba8:	04f90663          	beq	s2,a5,80006bf4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006bac:	00190913          	addi	s2,s2,1
    80006bb0:	00f00793          	li	a5,15
    80006bb4:	0527e463          	bltu	a5,s2,80006bfc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006bb8:	00003517          	auipc	a0,0x3
    80006bbc:	67850513          	addi	a0,a0,1656 # 8000a230 <CONSOLE_STATUS+0x220>
    80006bc0:	fffff097          	auipc	ra,0xfffff
    80006bc4:	464080e7          	jalr	1124(ra) # 80006024 <_Z11printStringPKc>
    80006bc8:	00000613          	li	a2,0
    80006bcc:	00a00593          	li	a1,10
    80006bd0:	0009051b          	sext.w	a0,s2
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	600080e7          	jalr	1536(ra) # 800061d4 <_Z8printIntiii>
    80006bdc:	00004517          	auipc	a0,0x4
    80006be0:	8ac50513          	addi	a0,a0,-1876 # 8000a488 <CONSOLE_STATUS+0x478>
    80006be4:	fffff097          	auipc	ra,0xfffff
    80006be8:	440080e7          	jalr	1088(ra) # 80006024 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006bec:	00000493          	li	s1,0
    80006bf0:	f91ff06f          	j	80006b80 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006bf4:	14102ff3          	csrr	t6,sepc
    80006bf8:	fb5ff06f          	j	80006bac <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006bfc:	00003517          	auipc	a0,0x3
    80006c00:	63c50513          	addi	a0,a0,1596 # 8000a238 <CONSOLE_STATUS+0x228>
    80006c04:	fffff097          	auipc	ra,0xfffff
    80006c08:	420080e7          	jalr	1056(ra) # 80006024 <_Z11printStringPKc>
    finishedB = true;
    80006c0c:	00100793          	li	a5,1
    80006c10:	00006717          	auipc	a4,0x6
    80006c14:	0af70623          	sb	a5,172(a4) # 8000ccbc <_ZL9finishedB>
    thread_dispatch();
    80006c18:	ffffb097          	auipc	ra,0xffffb
    80006c1c:	a38080e7          	jalr	-1480(ra) # 80001650 <thread_dispatch>
}
    80006c20:	01813083          	ld	ra,24(sp)
    80006c24:	01013403          	ld	s0,16(sp)
    80006c28:	00813483          	ld	s1,8(sp)
    80006c2c:	00013903          	ld	s2,0(sp)
    80006c30:	02010113          	addi	sp,sp,32
    80006c34:	00008067          	ret

0000000080006c38 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006c38:	fe010113          	addi	sp,sp,-32
    80006c3c:	00113c23          	sd	ra,24(sp)
    80006c40:	00813823          	sd	s0,16(sp)
    80006c44:	00913423          	sd	s1,8(sp)
    80006c48:	01213023          	sd	s2,0(sp)
    80006c4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006c50:	00000913          	li	s2,0
    80006c54:	0380006f          	j	80006c8c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006c58:	ffffb097          	auipc	ra,0xffffb
    80006c5c:	9f8080e7          	jalr	-1544(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006c60:	00148493          	addi	s1,s1,1
    80006c64:	000027b7          	lui	a5,0x2
    80006c68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c6c:	0097ee63          	bltu	a5,s1,80006c88 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c70:	00000713          	li	a4,0
    80006c74:	000077b7          	lui	a5,0x7
    80006c78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c7c:	fce7eee3          	bltu	a5,a4,80006c58 <_ZL11workerBodyAPv+0x20>
    80006c80:	00170713          	addi	a4,a4,1
    80006c84:	ff1ff06f          	j	80006c74 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006c88:	00190913          	addi	s2,s2,1
    80006c8c:	00900793          	li	a5,9
    80006c90:	0527e063          	bltu	a5,s2,80006cd0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006c94:	00003517          	auipc	a0,0x3
    80006c98:	58450513          	addi	a0,a0,1412 # 8000a218 <CONSOLE_STATUS+0x208>
    80006c9c:	fffff097          	auipc	ra,0xfffff
    80006ca0:	388080e7          	jalr	904(ra) # 80006024 <_Z11printStringPKc>
    80006ca4:	00000613          	li	a2,0
    80006ca8:	00a00593          	li	a1,10
    80006cac:	0009051b          	sext.w	a0,s2
    80006cb0:	fffff097          	auipc	ra,0xfffff
    80006cb4:	524080e7          	jalr	1316(ra) # 800061d4 <_Z8printIntiii>
    80006cb8:	00003517          	auipc	a0,0x3
    80006cbc:	7d050513          	addi	a0,a0,2000 # 8000a488 <CONSOLE_STATUS+0x478>
    80006cc0:	fffff097          	auipc	ra,0xfffff
    80006cc4:	364080e7          	jalr	868(ra) # 80006024 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006cc8:	00000493          	li	s1,0
    80006ccc:	f99ff06f          	j	80006c64 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006cd0:	00003517          	auipc	a0,0x3
    80006cd4:	55050513          	addi	a0,a0,1360 # 8000a220 <CONSOLE_STATUS+0x210>
    80006cd8:	fffff097          	auipc	ra,0xfffff
    80006cdc:	34c080e7          	jalr	844(ra) # 80006024 <_Z11printStringPKc>
    finishedA = true;
    80006ce0:	00100793          	li	a5,1
    80006ce4:	00006717          	auipc	a4,0x6
    80006ce8:	fcf70ca3          	sb	a5,-39(a4) # 8000ccbd <_ZL9finishedA>
}
    80006cec:	01813083          	ld	ra,24(sp)
    80006cf0:	01013403          	ld	s0,16(sp)
    80006cf4:	00813483          	ld	s1,8(sp)
    80006cf8:	00013903          	ld	s2,0(sp)
    80006cfc:	02010113          	addi	sp,sp,32
    80006d00:	00008067          	ret

0000000080006d04 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006d04:	fd010113          	addi	sp,sp,-48
    80006d08:	02113423          	sd	ra,40(sp)
    80006d0c:	02813023          	sd	s0,32(sp)
    80006d10:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006d14:	00000613          	li	a2,0
    80006d18:	00000597          	auipc	a1,0x0
    80006d1c:	f2058593          	addi	a1,a1,-224 # 80006c38 <_ZL11workerBodyAPv>
    80006d20:	fd040513          	addi	a0,s0,-48
    80006d24:	ffffb097          	auipc	ra,0xffffb
    80006d28:	888080e7          	jalr	-1912(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80006d2c:	00003517          	auipc	a0,0x3
    80006d30:	58450513          	addi	a0,a0,1412 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006d34:	fffff097          	auipc	ra,0xfffff
    80006d38:	2f0080e7          	jalr	752(ra) # 80006024 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006d3c:	00000613          	li	a2,0
    80006d40:	00000597          	auipc	a1,0x0
    80006d44:	e1458593          	addi	a1,a1,-492 # 80006b54 <_ZL11workerBodyBPv>
    80006d48:	fd840513          	addi	a0,s0,-40
    80006d4c:	ffffb097          	auipc	ra,0xffffb
    80006d50:	860080e7          	jalr	-1952(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80006d54:	00003517          	auipc	a0,0x3
    80006d58:	57450513          	addi	a0,a0,1396 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006d5c:	fffff097          	auipc	ra,0xfffff
    80006d60:	2c8080e7          	jalr	712(ra) # 80006024 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006d64:	00000613          	li	a2,0
    80006d68:	00000597          	auipc	a1,0x0
    80006d6c:	c6c58593          	addi	a1,a1,-916 # 800069d4 <_ZL11workerBodyCPv>
    80006d70:	fe040513          	addi	a0,s0,-32
    80006d74:	ffffb097          	auipc	ra,0xffffb
    80006d78:	838080e7          	jalr	-1992(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80006d7c:	00003517          	auipc	a0,0x3
    80006d80:	56450513          	addi	a0,a0,1380 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006d84:	fffff097          	auipc	ra,0xfffff
    80006d88:	2a0080e7          	jalr	672(ra) # 80006024 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006d8c:	00000613          	li	a2,0
    80006d90:	00000597          	auipc	a1,0x0
    80006d94:	afc58593          	addi	a1,a1,-1284 # 8000688c <_ZL11workerBodyDPv>
    80006d98:	fe840513          	addi	a0,s0,-24
    80006d9c:	ffffb097          	auipc	ra,0xffffb
    80006da0:	810080e7          	jalr	-2032(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80006da4:	00003517          	auipc	a0,0x3
    80006da8:	55450513          	addi	a0,a0,1364 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006dac:	fffff097          	auipc	ra,0xfffff
    80006db0:	278080e7          	jalr	632(ra) # 80006024 <_Z11printStringPKc>
    80006db4:	00c0006f          	j	80006dc0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006db8:	ffffb097          	auipc	ra,0xffffb
    80006dbc:	898080e7          	jalr	-1896(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006dc0:	00006797          	auipc	a5,0x6
    80006dc4:	efd7c783          	lbu	a5,-259(a5) # 8000ccbd <_ZL9finishedA>
    80006dc8:	fe0788e3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    80006dcc:	00006797          	auipc	a5,0x6
    80006dd0:	ef07c783          	lbu	a5,-272(a5) # 8000ccbc <_ZL9finishedB>
    80006dd4:	fe0782e3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    80006dd8:	00006797          	auipc	a5,0x6
    80006ddc:	ee37c783          	lbu	a5,-285(a5) # 8000ccbb <_ZL9finishedC>
    80006de0:	fc078ce3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    80006de4:	00006797          	auipc	a5,0x6
    80006de8:	ed67c783          	lbu	a5,-298(a5) # 8000ccba <_ZL9finishedD>
    80006dec:	fc0786e3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006df0:	02813083          	ld	ra,40(sp)
    80006df4:	02013403          	ld	s0,32(sp)
    80006df8:	03010113          	addi	sp,sp,48
    80006dfc:	00008067          	ret

0000000080006e00 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006e00:	fe010113          	addi	sp,sp,-32
    80006e04:	00113c23          	sd	ra,24(sp)
    80006e08:	00813823          	sd	s0,16(sp)
    80006e0c:	00913423          	sd	s1,8(sp)
    80006e10:	01213023          	sd	s2,0(sp)
    80006e14:	02010413          	addi	s0,sp,32
    80006e18:	00050493          	mv	s1,a0
    80006e1c:	00058913          	mv	s2,a1
    80006e20:	0015879b          	addiw	a5,a1,1
    80006e24:	0007851b          	sext.w	a0,a5
    80006e28:	00f4a023          	sw	a5,0(s1)
    80006e2c:	0004a823          	sw	zero,16(s1)
    80006e30:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006e34:	00251513          	slli	a0,a0,0x2
    80006e38:	ffffa097          	auipc	ra,0xffffa
    80006e3c:	71c080e7          	jalr	1820(ra) # 80001554 <mem_alloc>
    80006e40:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006e44:	00000593          	li	a1,0
    80006e48:	02048513          	addi	a0,s1,32
    80006e4c:	ffffb097          	auipc	ra,0xffffb
    80006e50:	84c080e7          	jalr	-1972(ra) # 80001698 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006e54:	00090593          	mv	a1,s2
    80006e58:	01848513          	addi	a0,s1,24
    80006e5c:	ffffb097          	auipc	ra,0xffffb
    80006e60:	83c080e7          	jalr	-1988(ra) # 80001698 <sem_open>
    sem_open(&mutexHead, 1);
    80006e64:	00100593          	li	a1,1
    80006e68:	02848513          	addi	a0,s1,40
    80006e6c:	ffffb097          	auipc	ra,0xffffb
    80006e70:	82c080e7          	jalr	-2004(ra) # 80001698 <sem_open>
    sem_open(&mutexTail, 1);
    80006e74:	00100593          	li	a1,1
    80006e78:	03048513          	addi	a0,s1,48
    80006e7c:	ffffb097          	auipc	ra,0xffffb
    80006e80:	81c080e7          	jalr	-2020(ra) # 80001698 <sem_open>
}
    80006e84:	01813083          	ld	ra,24(sp)
    80006e88:	01013403          	ld	s0,16(sp)
    80006e8c:	00813483          	ld	s1,8(sp)
    80006e90:	00013903          	ld	s2,0(sp)
    80006e94:	02010113          	addi	sp,sp,32
    80006e98:	00008067          	ret

0000000080006e9c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006e9c:	fe010113          	addi	sp,sp,-32
    80006ea0:	00113c23          	sd	ra,24(sp)
    80006ea4:	00813823          	sd	s0,16(sp)
    80006ea8:	00913423          	sd	s1,8(sp)
    80006eac:	01213023          	sd	s2,0(sp)
    80006eb0:	02010413          	addi	s0,sp,32
    80006eb4:	00050493          	mv	s1,a0
    80006eb8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006ebc:	01853503          	ld	a0,24(a0)
    80006ec0:	ffffb097          	auipc	ra,0xffffb
    80006ec4:	838080e7          	jalr	-1992(ra) # 800016f8 <sem_wait>

    sem_wait(mutexTail);
    80006ec8:	0304b503          	ld	a0,48(s1)
    80006ecc:	ffffb097          	auipc	ra,0xffffb
    80006ed0:	82c080e7          	jalr	-2004(ra) # 800016f8 <sem_wait>
    buffer[tail] = val;
    80006ed4:	0084b783          	ld	a5,8(s1)
    80006ed8:	0144a703          	lw	a4,20(s1)
    80006edc:	00271713          	slli	a4,a4,0x2
    80006ee0:	00e787b3          	add	a5,a5,a4
    80006ee4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006ee8:	0144a783          	lw	a5,20(s1)
    80006eec:	0017879b          	addiw	a5,a5,1
    80006ef0:	0004a703          	lw	a4,0(s1)
    80006ef4:	02e7e7bb          	remw	a5,a5,a4
    80006ef8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006efc:	0304b503          	ld	a0,48(s1)
    80006f00:	ffffb097          	auipc	ra,0xffffb
    80006f04:	820080e7          	jalr	-2016(ra) # 80001720 <sem_signal>

    sem_signal(itemAvailable);
    80006f08:	0204b503          	ld	a0,32(s1)
    80006f0c:	ffffb097          	auipc	ra,0xffffb
    80006f10:	814080e7          	jalr	-2028(ra) # 80001720 <sem_signal>

}
    80006f14:	01813083          	ld	ra,24(sp)
    80006f18:	01013403          	ld	s0,16(sp)
    80006f1c:	00813483          	ld	s1,8(sp)
    80006f20:	00013903          	ld	s2,0(sp)
    80006f24:	02010113          	addi	sp,sp,32
    80006f28:	00008067          	ret

0000000080006f2c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006f2c:	fe010113          	addi	sp,sp,-32
    80006f30:	00113c23          	sd	ra,24(sp)
    80006f34:	00813823          	sd	s0,16(sp)
    80006f38:	00913423          	sd	s1,8(sp)
    80006f3c:	01213023          	sd	s2,0(sp)
    80006f40:	02010413          	addi	s0,sp,32
    80006f44:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006f48:	02053503          	ld	a0,32(a0)
    80006f4c:	ffffa097          	auipc	ra,0xffffa
    80006f50:	7ac080e7          	jalr	1964(ra) # 800016f8 <sem_wait>

    sem_wait(mutexHead);
    80006f54:	0284b503          	ld	a0,40(s1)
    80006f58:	ffffa097          	auipc	ra,0xffffa
    80006f5c:	7a0080e7          	jalr	1952(ra) # 800016f8 <sem_wait>

    int ret = buffer[head];
    80006f60:	0084b703          	ld	a4,8(s1)
    80006f64:	0104a783          	lw	a5,16(s1)
    80006f68:	00279693          	slli	a3,a5,0x2
    80006f6c:	00d70733          	add	a4,a4,a3
    80006f70:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006f74:	0017879b          	addiw	a5,a5,1
    80006f78:	0004a703          	lw	a4,0(s1)
    80006f7c:	02e7e7bb          	remw	a5,a5,a4
    80006f80:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006f84:	0284b503          	ld	a0,40(s1)
    80006f88:	ffffa097          	auipc	ra,0xffffa
    80006f8c:	798080e7          	jalr	1944(ra) # 80001720 <sem_signal>

    sem_signal(spaceAvailable);
    80006f90:	0184b503          	ld	a0,24(s1)
    80006f94:	ffffa097          	auipc	ra,0xffffa
    80006f98:	78c080e7          	jalr	1932(ra) # 80001720 <sem_signal>

    return ret;
}
    80006f9c:	00090513          	mv	a0,s2
    80006fa0:	01813083          	ld	ra,24(sp)
    80006fa4:	01013403          	ld	s0,16(sp)
    80006fa8:	00813483          	ld	s1,8(sp)
    80006fac:	00013903          	ld	s2,0(sp)
    80006fb0:	02010113          	addi	sp,sp,32
    80006fb4:	00008067          	ret

0000000080006fb8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006fb8:	fe010113          	addi	sp,sp,-32
    80006fbc:	00113c23          	sd	ra,24(sp)
    80006fc0:	00813823          	sd	s0,16(sp)
    80006fc4:	00913423          	sd	s1,8(sp)
    80006fc8:	01213023          	sd	s2,0(sp)
    80006fcc:	02010413          	addi	s0,sp,32
    80006fd0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006fd4:	02853503          	ld	a0,40(a0)
    80006fd8:	ffffa097          	auipc	ra,0xffffa
    80006fdc:	720080e7          	jalr	1824(ra) # 800016f8 <sem_wait>
    sem_wait(mutexTail);
    80006fe0:	0304b503          	ld	a0,48(s1)
    80006fe4:	ffffa097          	auipc	ra,0xffffa
    80006fe8:	714080e7          	jalr	1812(ra) # 800016f8 <sem_wait>

    if (tail >= head) {
    80006fec:	0144a783          	lw	a5,20(s1)
    80006ff0:	0104a903          	lw	s2,16(s1)
    80006ff4:	0327ce63          	blt	a5,s2,80007030 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006ff8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006ffc:	0304b503          	ld	a0,48(s1)
    80007000:	ffffa097          	auipc	ra,0xffffa
    80007004:	720080e7          	jalr	1824(ra) # 80001720 <sem_signal>
    sem_signal(mutexHead);
    80007008:	0284b503          	ld	a0,40(s1)
    8000700c:	ffffa097          	auipc	ra,0xffffa
    80007010:	714080e7          	jalr	1812(ra) # 80001720 <sem_signal>

    return ret;
}
    80007014:	00090513          	mv	a0,s2
    80007018:	01813083          	ld	ra,24(sp)
    8000701c:	01013403          	ld	s0,16(sp)
    80007020:	00813483          	ld	s1,8(sp)
    80007024:	00013903          	ld	s2,0(sp)
    80007028:	02010113          	addi	sp,sp,32
    8000702c:	00008067          	ret
        ret = cap - head + tail;
    80007030:	0004a703          	lw	a4,0(s1)
    80007034:	4127093b          	subw	s2,a4,s2
    80007038:	00f9093b          	addw	s2,s2,a5
    8000703c:	fc1ff06f          	j	80006ffc <_ZN6Buffer6getCntEv+0x44>

0000000080007040 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007040:	fe010113          	addi	sp,sp,-32
    80007044:	00113c23          	sd	ra,24(sp)
    80007048:	00813823          	sd	s0,16(sp)
    8000704c:	00913423          	sd	s1,8(sp)
    80007050:	02010413          	addi	s0,sp,32
    80007054:	00050493          	mv	s1,a0
    putc('\n');
    80007058:	00a00513          	li	a0,10
    8000705c:	ffffa097          	auipc	ra,0xffffa
    80007060:	748080e7          	jalr	1864(ra) # 800017a4 <putc>
    printString("Buffer deleted!\n");
    80007064:	00003517          	auipc	a0,0x3
    80007068:	55c50513          	addi	a0,a0,1372 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    8000706c:	fffff097          	auipc	ra,0xfffff
    80007070:	fb8080e7          	jalr	-72(ra) # 80006024 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007074:	00048513          	mv	a0,s1
    80007078:	00000097          	auipc	ra,0x0
    8000707c:	f40080e7          	jalr	-192(ra) # 80006fb8 <_ZN6Buffer6getCntEv>
    80007080:	02a05c63          	blez	a0,800070b8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007084:	0084b783          	ld	a5,8(s1)
    80007088:	0104a703          	lw	a4,16(s1)
    8000708c:	00271713          	slli	a4,a4,0x2
    80007090:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007094:	0007c503          	lbu	a0,0(a5)
    80007098:	ffffa097          	auipc	ra,0xffffa
    8000709c:	70c080e7          	jalr	1804(ra) # 800017a4 <putc>
        head = (head + 1) % cap;
    800070a0:	0104a783          	lw	a5,16(s1)
    800070a4:	0017879b          	addiw	a5,a5,1
    800070a8:	0004a703          	lw	a4,0(s1)
    800070ac:	02e7e7bb          	remw	a5,a5,a4
    800070b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800070b4:	fc1ff06f          	j	80007074 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800070b8:	02100513          	li	a0,33
    800070bc:	ffffa097          	auipc	ra,0xffffa
    800070c0:	6e8080e7          	jalr	1768(ra) # 800017a4 <putc>
    putc('\n');
    800070c4:	00a00513          	li	a0,10
    800070c8:	ffffa097          	auipc	ra,0xffffa
    800070cc:	6dc080e7          	jalr	1756(ra) # 800017a4 <putc>
    mem_free(buffer);
    800070d0:	0084b503          	ld	a0,8(s1)
    800070d4:	ffffa097          	auipc	ra,0xffffa
    800070d8:	4ac080e7          	jalr	1196(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    800070dc:	0204b503          	ld	a0,32(s1)
    800070e0:	ffffa097          	auipc	ra,0xffffa
    800070e4:	5f0080e7          	jalr	1520(ra) # 800016d0 <sem_close>
    sem_close(spaceAvailable);
    800070e8:	0184b503          	ld	a0,24(s1)
    800070ec:	ffffa097          	auipc	ra,0xffffa
    800070f0:	5e4080e7          	jalr	1508(ra) # 800016d0 <sem_close>
    sem_close(mutexTail);
    800070f4:	0304b503          	ld	a0,48(s1)
    800070f8:	ffffa097          	auipc	ra,0xffffa
    800070fc:	5d8080e7          	jalr	1496(ra) # 800016d0 <sem_close>
    sem_close(mutexHead);
    80007100:	0284b503          	ld	a0,40(s1)
    80007104:	ffffa097          	auipc	ra,0xffffa
    80007108:	5cc080e7          	jalr	1484(ra) # 800016d0 <sem_close>
}
    8000710c:	01813083          	ld	ra,24(sp)
    80007110:	01013403          	ld	s0,16(sp)
    80007114:	00813483          	ld	s1,8(sp)
    80007118:	02010113          	addi	sp,sp,32
    8000711c:	00008067          	ret

0000000080007120 <start>:
    80007120:	ff010113          	addi	sp,sp,-16
    80007124:	00813423          	sd	s0,8(sp)
    80007128:	01010413          	addi	s0,sp,16
    8000712c:	300027f3          	csrr	a5,mstatus
    80007130:	ffffe737          	lui	a4,0xffffe
    80007134:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff08df>
    80007138:	00e7f7b3          	and	a5,a5,a4
    8000713c:	00001737          	lui	a4,0x1
    80007140:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007144:	00e7e7b3          	or	a5,a5,a4
    80007148:	30079073          	csrw	mstatus,a5
    8000714c:	00000797          	auipc	a5,0x0
    80007150:	16078793          	addi	a5,a5,352 # 800072ac <system_main>
    80007154:	34179073          	csrw	mepc,a5
    80007158:	00000793          	li	a5,0
    8000715c:	18079073          	csrw	satp,a5
    80007160:	000107b7          	lui	a5,0x10
    80007164:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007168:	30279073          	csrw	medeleg,a5
    8000716c:	30379073          	csrw	mideleg,a5
    80007170:	104027f3          	csrr	a5,sie
    80007174:	2227e793          	ori	a5,a5,546
    80007178:	10479073          	csrw	sie,a5
    8000717c:	fff00793          	li	a5,-1
    80007180:	00a7d793          	srli	a5,a5,0xa
    80007184:	3b079073          	csrw	pmpaddr0,a5
    80007188:	00f00793          	li	a5,15
    8000718c:	3a079073          	csrw	pmpcfg0,a5
    80007190:	f14027f3          	csrr	a5,mhartid
    80007194:	0200c737          	lui	a4,0x200c
    80007198:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000719c:	0007869b          	sext.w	a3,a5
    800071a0:	00269713          	slli	a4,a3,0x2
    800071a4:	000f4637          	lui	a2,0xf4
    800071a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800071ac:	00d70733          	add	a4,a4,a3
    800071b0:	0037979b          	slliw	a5,a5,0x3
    800071b4:	020046b7          	lui	a3,0x2004
    800071b8:	00d787b3          	add	a5,a5,a3
    800071bc:	00c585b3          	add	a1,a1,a2
    800071c0:	00371693          	slli	a3,a4,0x3
    800071c4:	00006717          	auipc	a4,0x6
    800071c8:	afc70713          	addi	a4,a4,-1284 # 8000ccc0 <timer_scratch>
    800071cc:	00b7b023          	sd	a1,0(a5)
    800071d0:	00d70733          	add	a4,a4,a3
    800071d4:	00f73c23          	sd	a5,24(a4)
    800071d8:	02c73023          	sd	a2,32(a4)
    800071dc:	34071073          	csrw	mscratch,a4
    800071e0:	00000797          	auipc	a5,0x0
    800071e4:	6e078793          	addi	a5,a5,1760 # 800078c0 <timervec>
    800071e8:	30579073          	csrw	mtvec,a5
    800071ec:	300027f3          	csrr	a5,mstatus
    800071f0:	0087e793          	ori	a5,a5,8
    800071f4:	30079073          	csrw	mstatus,a5
    800071f8:	304027f3          	csrr	a5,mie
    800071fc:	0807e793          	ori	a5,a5,128
    80007200:	30479073          	csrw	mie,a5
    80007204:	f14027f3          	csrr	a5,mhartid
    80007208:	0007879b          	sext.w	a5,a5
    8000720c:	00078213          	mv	tp,a5
    80007210:	30200073          	mret
    80007214:	00813403          	ld	s0,8(sp)
    80007218:	01010113          	addi	sp,sp,16
    8000721c:	00008067          	ret

0000000080007220 <timerinit>:
    80007220:	ff010113          	addi	sp,sp,-16
    80007224:	00813423          	sd	s0,8(sp)
    80007228:	01010413          	addi	s0,sp,16
    8000722c:	f14027f3          	csrr	a5,mhartid
    80007230:	0200c737          	lui	a4,0x200c
    80007234:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007238:	0007869b          	sext.w	a3,a5
    8000723c:	00269713          	slli	a4,a3,0x2
    80007240:	000f4637          	lui	a2,0xf4
    80007244:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007248:	00d70733          	add	a4,a4,a3
    8000724c:	0037979b          	slliw	a5,a5,0x3
    80007250:	020046b7          	lui	a3,0x2004
    80007254:	00d787b3          	add	a5,a5,a3
    80007258:	00c585b3          	add	a1,a1,a2
    8000725c:	00371693          	slli	a3,a4,0x3
    80007260:	00006717          	auipc	a4,0x6
    80007264:	a6070713          	addi	a4,a4,-1440 # 8000ccc0 <timer_scratch>
    80007268:	00b7b023          	sd	a1,0(a5)
    8000726c:	00d70733          	add	a4,a4,a3
    80007270:	00f73c23          	sd	a5,24(a4)
    80007274:	02c73023          	sd	a2,32(a4)
    80007278:	34071073          	csrw	mscratch,a4
    8000727c:	00000797          	auipc	a5,0x0
    80007280:	64478793          	addi	a5,a5,1604 # 800078c0 <timervec>
    80007284:	30579073          	csrw	mtvec,a5
    80007288:	300027f3          	csrr	a5,mstatus
    8000728c:	0087e793          	ori	a5,a5,8
    80007290:	30079073          	csrw	mstatus,a5
    80007294:	304027f3          	csrr	a5,mie
    80007298:	0807e793          	ori	a5,a5,128
    8000729c:	30479073          	csrw	mie,a5
    800072a0:	00813403          	ld	s0,8(sp)
    800072a4:	01010113          	addi	sp,sp,16
    800072a8:	00008067          	ret

00000000800072ac <system_main>:
    800072ac:	fe010113          	addi	sp,sp,-32
    800072b0:	00813823          	sd	s0,16(sp)
    800072b4:	00913423          	sd	s1,8(sp)
    800072b8:	00113c23          	sd	ra,24(sp)
    800072bc:	02010413          	addi	s0,sp,32
    800072c0:	00000097          	auipc	ra,0x0
    800072c4:	0c4080e7          	jalr	196(ra) # 80007384 <cpuid>
    800072c8:	00005497          	auipc	s1,0x5
    800072cc:	6c848493          	addi	s1,s1,1736 # 8000c990 <started>
    800072d0:	02050263          	beqz	a0,800072f4 <system_main+0x48>
    800072d4:	0004a783          	lw	a5,0(s1)
    800072d8:	0007879b          	sext.w	a5,a5
    800072dc:	fe078ce3          	beqz	a5,800072d4 <system_main+0x28>
    800072e0:	0ff0000f          	fence
    800072e4:	00003517          	auipc	a0,0x3
    800072e8:	33450513          	addi	a0,a0,820 # 8000a618 <CONSOLE_STATUS+0x608>
    800072ec:	00001097          	auipc	ra,0x1
    800072f0:	a70080e7          	jalr	-1424(ra) # 80007d5c <panic>
    800072f4:	00001097          	auipc	ra,0x1
    800072f8:	9c4080e7          	jalr	-1596(ra) # 80007cb8 <consoleinit>
    800072fc:	00001097          	auipc	ra,0x1
    80007300:	150080e7          	jalr	336(ra) # 8000844c <printfinit>
    80007304:	00003517          	auipc	a0,0x3
    80007308:	18450513          	addi	a0,a0,388 # 8000a488 <CONSOLE_STATUS+0x478>
    8000730c:	00001097          	auipc	ra,0x1
    80007310:	aac080e7          	jalr	-1364(ra) # 80007db8 <__printf>
    80007314:	00003517          	auipc	a0,0x3
    80007318:	2d450513          	addi	a0,a0,724 # 8000a5e8 <CONSOLE_STATUS+0x5d8>
    8000731c:	00001097          	auipc	ra,0x1
    80007320:	a9c080e7          	jalr	-1380(ra) # 80007db8 <__printf>
    80007324:	00003517          	auipc	a0,0x3
    80007328:	16450513          	addi	a0,a0,356 # 8000a488 <CONSOLE_STATUS+0x478>
    8000732c:	00001097          	auipc	ra,0x1
    80007330:	a8c080e7          	jalr	-1396(ra) # 80007db8 <__printf>
    80007334:	00001097          	auipc	ra,0x1
    80007338:	4a4080e7          	jalr	1188(ra) # 800087d8 <kinit>
    8000733c:	00000097          	auipc	ra,0x0
    80007340:	148080e7          	jalr	328(ra) # 80007484 <trapinit>
    80007344:	00000097          	auipc	ra,0x0
    80007348:	16c080e7          	jalr	364(ra) # 800074b0 <trapinithart>
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	5b4080e7          	jalr	1460(ra) # 80007900 <plicinit>
    80007354:	00000097          	auipc	ra,0x0
    80007358:	5d4080e7          	jalr	1492(ra) # 80007928 <plicinithart>
    8000735c:	00000097          	auipc	ra,0x0
    80007360:	078080e7          	jalr	120(ra) # 800073d4 <userinit>
    80007364:	0ff0000f          	fence
    80007368:	00100793          	li	a5,1
    8000736c:	00003517          	auipc	a0,0x3
    80007370:	29450513          	addi	a0,a0,660 # 8000a600 <CONSOLE_STATUS+0x5f0>
    80007374:	00f4a023          	sw	a5,0(s1)
    80007378:	00001097          	auipc	ra,0x1
    8000737c:	a40080e7          	jalr	-1472(ra) # 80007db8 <__printf>
    80007380:	0000006f          	j	80007380 <system_main+0xd4>

0000000080007384 <cpuid>:
    80007384:	ff010113          	addi	sp,sp,-16
    80007388:	00813423          	sd	s0,8(sp)
    8000738c:	01010413          	addi	s0,sp,16
    80007390:	00020513          	mv	a0,tp
    80007394:	00813403          	ld	s0,8(sp)
    80007398:	0005051b          	sext.w	a0,a0
    8000739c:	01010113          	addi	sp,sp,16
    800073a0:	00008067          	ret

00000000800073a4 <mycpu>:
    800073a4:	ff010113          	addi	sp,sp,-16
    800073a8:	00813423          	sd	s0,8(sp)
    800073ac:	01010413          	addi	s0,sp,16
    800073b0:	00020793          	mv	a5,tp
    800073b4:	00813403          	ld	s0,8(sp)
    800073b8:	0007879b          	sext.w	a5,a5
    800073bc:	00779793          	slli	a5,a5,0x7
    800073c0:	00007517          	auipc	a0,0x7
    800073c4:	93050513          	addi	a0,a0,-1744 # 8000dcf0 <cpus>
    800073c8:	00f50533          	add	a0,a0,a5
    800073cc:	01010113          	addi	sp,sp,16
    800073d0:	00008067          	ret

00000000800073d4 <userinit>:
    800073d4:	ff010113          	addi	sp,sp,-16
    800073d8:	00813423          	sd	s0,8(sp)
    800073dc:	01010413          	addi	s0,sp,16
    800073e0:	00813403          	ld	s0,8(sp)
    800073e4:	01010113          	addi	sp,sp,16
    800073e8:	ffffa317          	auipc	t1,0xffffa
    800073ec:	48c30067          	jr	1164(t1) # 80001874 <main>

00000000800073f0 <either_copyout>:
    800073f0:	ff010113          	addi	sp,sp,-16
    800073f4:	00813023          	sd	s0,0(sp)
    800073f8:	00113423          	sd	ra,8(sp)
    800073fc:	01010413          	addi	s0,sp,16
    80007400:	02051663          	bnez	a0,8000742c <either_copyout+0x3c>
    80007404:	00058513          	mv	a0,a1
    80007408:	00060593          	mv	a1,a2
    8000740c:	0006861b          	sext.w	a2,a3
    80007410:	00002097          	auipc	ra,0x2
    80007414:	c54080e7          	jalr	-940(ra) # 80009064 <__memmove>
    80007418:	00813083          	ld	ra,8(sp)
    8000741c:	00013403          	ld	s0,0(sp)
    80007420:	00000513          	li	a0,0
    80007424:	01010113          	addi	sp,sp,16
    80007428:	00008067          	ret
    8000742c:	00003517          	auipc	a0,0x3
    80007430:	21450513          	addi	a0,a0,532 # 8000a640 <CONSOLE_STATUS+0x630>
    80007434:	00001097          	auipc	ra,0x1
    80007438:	928080e7          	jalr	-1752(ra) # 80007d5c <panic>

000000008000743c <either_copyin>:
    8000743c:	ff010113          	addi	sp,sp,-16
    80007440:	00813023          	sd	s0,0(sp)
    80007444:	00113423          	sd	ra,8(sp)
    80007448:	01010413          	addi	s0,sp,16
    8000744c:	02059463          	bnez	a1,80007474 <either_copyin+0x38>
    80007450:	00060593          	mv	a1,a2
    80007454:	0006861b          	sext.w	a2,a3
    80007458:	00002097          	auipc	ra,0x2
    8000745c:	c0c080e7          	jalr	-1012(ra) # 80009064 <__memmove>
    80007460:	00813083          	ld	ra,8(sp)
    80007464:	00013403          	ld	s0,0(sp)
    80007468:	00000513          	li	a0,0
    8000746c:	01010113          	addi	sp,sp,16
    80007470:	00008067          	ret
    80007474:	00003517          	auipc	a0,0x3
    80007478:	1f450513          	addi	a0,a0,500 # 8000a668 <CONSOLE_STATUS+0x658>
    8000747c:	00001097          	auipc	ra,0x1
    80007480:	8e0080e7          	jalr	-1824(ra) # 80007d5c <panic>

0000000080007484 <trapinit>:
    80007484:	ff010113          	addi	sp,sp,-16
    80007488:	00813423          	sd	s0,8(sp)
    8000748c:	01010413          	addi	s0,sp,16
    80007490:	00813403          	ld	s0,8(sp)
    80007494:	00003597          	auipc	a1,0x3
    80007498:	1fc58593          	addi	a1,a1,508 # 8000a690 <CONSOLE_STATUS+0x680>
    8000749c:	00007517          	auipc	a0,0x7
    800074a0:	8d450513          	addi	a0,a0,-1836 # 8000dd70 <tickslock>
    800074a4:	01010113          	addi	sp,sp,16
    800074a8:	00001317          	auipc	t1,0x1
    800074ac:	5c030067          	jr	1472(t1) # 80008a68 <initlock>

00000000800074b0 <trapinithart>:
    800074b0:	ff010113          	addi	sp,sp,-16
    800074b4:	00813423          	sd	s0,8(sp)
    800074b8:	01010413          	addi	s0,sp,16
    800074bc:	00000797          	auipc	a5,0x0
    800074c0:	2f478793          	addi	a5,a5,756 # 800077b0 <kernelvec>
    800074c4:	10579073          	csrw	stvec,a5
    800074c8:	00813403          	ld	s0,8(sp)
    800074cc:	01010113          	addi	sp,sp,16
    800074d0:	00008067          	ret

00000000800074d4 <usertrap>:
    800074d4:	ff010113          	addi	sp,sp,-16
    800074d8:	00813423          	sd	s0,8(sp)
    800074dc:	01010413          	addi	s0,sp,16
    800074e0:	00813403          	ld	s0,8(sp)
    800074e4:	01010113          	addi	sp,sp,16
    800074e8:	00008067          	ret

00000000800074ec <usertrapret>:
    800074ec:	ff010113          	addi	sp,sp,-16
    800074f0:	00813423          	sd	s0,8(sp)
    800074f4:	01010413          	addi	s0,sp,16
    800074f8:	00813403          	ld	s0,8(sp)
    800074fc:	01010113          	addi	sp,sp,16
    80007500:	00008067          	ret

0000000080007504 <kerneltrap>:
    80007504:	fe010113          	addi	sp,sp,-32
    80007508:	00813823          	sd	s0,16(sp)
    8000750c:	00113c23          	sd	ra,24(sp)
    80007510:	00913423          	sd	s1,8(sp)
    80007514:	02010413          	addi	s0,sp,32
    80007518:	142025f3          	csrr	a1,scause
    8000751c:	100027f3          	csrr	a5,sstatus
    80007520:	0027f793          	andi	a5,a5,2
    80007524:	10079c63          	bnez	a5,8000763c <kerneltrap+0x138>
    80007528:	142027f3          	csrr	a5,scause
    8000752c:	0207ce63          	bltz	a5,80007568 <kerneltrap+0x64>
    80007530:	00003517          	auipc	a0,0x3
    80007534:	1a850513          	addi	a0,a0,424 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    80007538:	00001097          	auipc	ra,0x1
    8000753c:	880080e7          	jalr	-1920(ra) # 80007db8 <__printf>
    80007540:	141025f3          	csrr	a1,sepc
    80007544:	14302673          	csrr	a2,stval
    80007548:	00003517          	auipc	a0,0x3
    8000754c:	1a050513          	addi	a0,a0,416 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007550:	00001097          	auipc	ra,0x1
    80007554:	868080e7          	jalr	-1944(ra) # 80007db8 <__printf>
    80007558:	00003517          	auipc	a0,0x3
    8000755c:	1a850513          	addi	a0,a0,424 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80007560:	00000097          	auipc	ra,0x0
    80007564:	7fc080e7          	jalr	2044(ra) # 80007d5c <panic>
    80007568:	0ff7f713          	andi	a4,a5,255
    8000756c:	00900693          	li	a3,9
    80007570:	04d70063          	beq	a4,a3,800075b0 <kerneltrap+0xac>
    80007574:	fff00713          	li	a4,-1
    80007578:	03f71713          	slli	a4,a4,0x3f
    8000757c:	00170713          	addi	a4,a4,1
    80007580:	fae798e3          	bne	a5,a4,80007530 <kerneltrap+0x2c>
    80007584:	00000097          	auipc	ra,0x0
    80007588:	e00080e7          	jalr	-512(ra) # 80007384 <cpuid>
    8000758c:	06050663          	beqz	a0,800075f8 <kerneltrap+0xf4>
    80007590:	144027f3          	csrr	a5,sip
    80007594:	ffd7f793          	andi	a5,a5,-3
    80007598:	14479073          	csrw	sip,a5
    8000759c:	01813083          	ld	ra,24(sp)
    800075a0:	01013403          	ld	s0,16(sp)
    800075a4:	00813483          	ld	s1,8(sp)
    800075a8:	02010113          	addi	sp,sp,32
    800075ac:	00008067          	ret
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	3c4080e7          	jalr	964(ra) # 80007974 <plic_claim>
    800075b8:	00a00793          	li	a5,10
    800075bc:	00050493          	mv	s1,a0
    800075c0:	06f50863          	beq	a0,a5,80007630 <kerneltrap+0x12c>
    800075c4:	fc050ce3          	beqz	a0,8000759c <kerneltrap+0x98>
    800075c8:	00050593          	mv	a1,a0
    800075cc:	00003517          	auipc	a0,0x3
    800075d0:	0ec50513          	addi	a0,a0,236 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	7e4080e7          	jalr	2020(ra) # 80007db8 <__printf>
    800075dc:	01013403          	ld	s0,16(sp)
    800075e0:	01813083          	ld	ra,24(sp)
    800075e4:	00048513          	mv	a0,s1
    800075e8:	00813483          	ld	s1,8(sp)
    800075ec:	02010113          	addi	sp,sp,32
    800075f0:	00000317          	auipc	t1,0x0
    800075f4:	3bc30067          	jr	956(t1) # 800079ac <plic_complete>
    800075f8:	00006517          	auipc	a0,0x6
    800075fc:	77850513          	addi	a0,a0,1912 # 8000dd70 <tickslock>
    80007600:	00001097          	auipc	ra,0x1
    80007604:	48c080e7          	jalr	1164(ra) # 80008a8c <acquire>
    80007608:	00005717          	auipc	a4,0x5
    8000760c:	38c70713          	addi	a4,a4,908 # 8000c994 <ticks>
    80007610:	00072783          	lw	a5,0(a4)
    80007614:	00006517          	auipc	a0,0x6
    80007618:	75c50513          	addi	a0,a0,1884 # 8000dd70 <tickslock>
    8000761c:	0017879b          	addiw	a5,a5,1
    80007620:	00f72023          	sw	a5,0(a4)
    80007624:	00001097          	auipc	ra,0x1
    80007628:	534080e7          	jalr	1332(ra) # 80008b58 <release>
    8000762c:	f65ff06f          	j	80007590 <kerneltrap+0x8c>
    80007630:	00001097          	auipc	ra,0x1
    80007634:	090080e7          	jalr	144(ra) # 800086c0 <uartintr>
    80007638:	fa5ff06f          	j	800075dc <kerneltrap+0xd8>
    8000763c:	00003517          	auipc	a0,0x3
    80007640:	05c50513          	addi	a0,a0,92 # 8000a698 <CONSOLE_STATUS+0x688>
    80007644:	00000097          	auipc	ra,0x0
    80007648:	718080e7          	jalr	1816(ra) # 80007d5c <panic>

000000008000764c <clockintr>:
    8000764c:	fe010113          	addi	sp,sp,-32
    80007650:	00813823          	sd	s0,16(sp)
    80007654:	00913423          	sd	s1,8(sp)
    80007658:	00113c23          	sd	ra,24(sp)
    8000765c:	02010413          	addi	s0,sp,32
    80007660:	00006497          	auipc	s1,0x6
    80007664:	71048493          	addi	s1,s1,1808 # 8000dd70 <tickslock>
    80007668:	00048513          	mv	a0,s1
    8000766c:	00001097          	auipc	ra,0x1
    80007670:	420080e7          	jalr	1056(ra) # 80008a8c <acquire>
    80007674:	00005717          	auipc	a4,0x5
    80007678:	32070713          	addi	a4,a4,800 # 8000c994 <ticks>
    8000767c:	00072783          	lw	a5,0(a4)
    80007680:	01013403          	ld	s0,16(sp)
    80007684:	01813083          	ld	ra,24(sp)
    80007688:	00048513          	mv	a0,s1
    8000768c:	0017879b          	addiw	a5,a5,1
    80007690:	00813483          	ld	s1,8(sp)
    80007694:	00f72023          	sw	a5,0(a4)
    80007698:	02010113          	addi	sp,sp,32
    8000769c:	00001317          	auipc	t1,0x1
    800076a0:	4bc30067          	jr	1212(t1) # 80008b58 <release>

00000000800076a4 <devintr>:
    800076a4:	142027f3          	csrr	a5,scause
    800076a8:	00000513          	li	a0,0
    800076ac:	0007c463          	bltz	a5,800076b4 <devintr+0x10>
    800076b0:	00008067          	ret
    800076b4:	fe010113          	addi	sp,sp,-32
    800076b8:	00813823          	sd	s0,16(sp)
    800076bc:	00113c23          	sd	ra,24(sp)
    800076c0:	00913423          	sd	s1,8(sp)
    800076c4:	02010413          	addi	s0,sp,32
    800076c8:	0ff7f713          	andi	a4,a5,255
    800076cc:	00900693          	li	a3,9
    800076d0:	04d70c63          	beq	a4,a3,80007728 <devintr+0x84>
    800076d4:	fff00713          	li	a4,-1
    800076d8:	03f71713          	slli	a4,a4,0x3f
    800076dc:	00170713          	addi	a4,a4,1
    800076e0:	00e78c63          	beq	a5,a4,800076f8 <devintr+0x54>
    800076e4:	01813083          	ld	ra,24(sp)
    800076e8:	01013403          	ld	s0,16(sp)
    800076ec:	00813483          	ld	s1,8(sp)
    800076f0:	02010113          	addi	sp,sp,32
    800076f4:	00008067          	ret
    800076f8:	00000097          	auipc	ra,0x0
    800076fc:	c8c080e7          	jalr	-884(ra) # 80007384 <cpuid>
    80007700:	06050663          	beqz	a0,8000776c <devintr+0xc8>
    80007704:	144027f3          	csrr	a5,sip
    80007708:	ffd7f793          	andi	a5,a5,-3
    8000770c:	14479073          	csrw	sip,a5
    80007710:	01813083          	ld	ra,24(sp)
    80007714:	01013403          	ld	s0,16(sp)
    80007718:	00813483          	ld	s1,8(sp)
    8000771c:	00200513          	li	a0,2
    80007720:	02010113          	addi	sp,sp,32
    80007724:	00008067          	ret
    80007728:	00000097          	auipc	ra,0x0
    8000772c:	24c080e7          	jalr	588(ra) # 80007974 <plic_claim>
    80007730:	00a00793          	li	a5,10
    80007734:	00050493          	mv	s1,a0
    80007738:	06f50663          	beq	a0,a5,800077a4 <devintr+0x100>
    8000773c:	00100513          	li	a0,1
    80007740:	fa0482e3          	beqz	s1,800076e4 <devintr+0x40>
    80007744:	00048593          	mv	a1,s1
    80007748:	00003517          	auipc	a0,0x3
    8000774c:	f7050513          	addi	a0,a0,-144 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    80007750:	00000097          	auipc	ra,0x0
    80007754:	668080e7          	jalr	1640(ra) # 80007db8 <__printf>
    80007758:	00048513          	mv	a0,s1
    8000775c:	00000097          	auipc	ra,0x0
    80007760:	250080e7          	jalr	592(ra) # 800079ac <plic_complete>
    80007764:	00100513          	li	a0,1
    80007768:	f7dff06f          	j	800076e4 <devintr+0x40>
    8000776c:	00006517          	auipc	a0,0x6
    80007770:	60450513          	addi	a0,a0,1540 # 8000dd70 <tickslock>
    80007774:	00001097          	auipc	ra,0x1
    80007778:	318080e7          	jalr	792(ra) # 80008a8c <acquire>
    8000777c:	00005717          	auipc	a4,0x5
    80007780:	21870713          	addi	a4,a4,536 # 8000c994 <ticks>
    80007784:	00072783          	lw	a5,0(a4)
    80007788:	00006517          	auipc	a0,0x6
    8000778c:	5e850513          	addi	a0,a0,1512 # 8000dd70 <tickslock>
    80007790:	0017879b          	addiw	a5,a5,1
    80007794:	00f72023          	sw	a5,0(a4)
    80007798:	00001097          	auipc	ra,0x1
    8000779c:	3c0080e7          	jalr	960(ra) # 80008b58 <release>
    800077a0:	f65ff06f          	j	80007704 <devintr+0x60>
    800077a4:	00001097          	auipc	ra,0x1
    800077a8:	f1c080e7          	jalr	-228(ra) # 800086c0 <uartintr>
    800077ac:	fadff06f          	j	80007758 <devintr+0xb4>

00000000800077b0 <kernelvec>:
    800077b0:	f0010113          	addi	sp,sp,-256
    800077b4:	00113023          	sd	ra,0(sp)
    800077b8:	00213423          	sd	sp,8(sp)
    800077bc:	00313823          	sd	gp,16(sp)
    800077c0:	00413c23          	sd	tp,24(sp)
    800077c4:	02513023          	sd	t0,32(sp)
    800077c8:	02613423          	sd	t1,40(sp)
    800077cc:	02713823          	sd	t2,48(sp)
    800077d0:	02813c23          	sd	s0,56(sp)
    800077d4:	04913023          	sd	s1,64(sp)
    800077d8:	04a13423          	sd	a0,72(sp)
    800077dc:	04b13823          	sd	a1,80(sp)
    800077e0:	04c13c23          	sd	a2,88(sp)
    800077e4:	06d13023          	sd	a3,96(sp)
    800077e8:	06e13423          	sd	a4,104(sp)
    800077ec:	06f13823          	sd	a5,112(sp)
    800077f0:	07013c23          	sd	a6,120(sp)
    800077f4:	09113023          	sd	a7,128(sp)
    800077f8:	09213423          	sd	s2,136(sp)
    800077fc:	09313823          	sd	s3,144(sp)
    80007800:	09413c23          	sd	s4,152(sp)
    80007804:	0b513023          	sd	s5,160(sp)
    80007808:	0b613423          	sd	s6,168(sp)
    8000780c:	0b713823          	sd	s7,176(sp)
    80007810:	0b813c23          	sd	s8,184(sp)
    80007814:	0d913023          	sd	s9,192(sp)
    80007818:	0da13423          	sd	s10,200(sp)
    8000781c:	0db13823          	sd	s11,208(sp)
    80007820:	0dc13c23          	sd	t3,216(sp)
    80007824:	0fd13023          	sd	t4,224(sp)
    80007828:	0fe13423          	sd	t5,232(sp)
    8000782c:	0ff13823          	sd	t6,240(sp)
    80007830:	cd5ff0ef          	jal	ra,80007504 <kerneltrap>
    80007834:	00013083          	ld	ra,0(sp)
    80007838:	00813103          	ld	sp,8(sp)
    8000783c:	01013183          	ld	gp,16(sp)
    80007840:	02013283          	ld	t0,32(sp)
    80007844:	02813303          	ld	t1,40(sp)
    80007848:	03013383          	ld	t2,48(sp)
    8000784c:	03813403          	ld	s0,56(sp)
    80007850:	04013483          	ld	s1,64(sp)
    80007854:	04813503          	ld	a0,72(sp)
    80007858:	05013583          	ld	a1,80(sp)
    8000785c:	05813603          	ld	a2,88(sp)
    80007860:	06013683          	ld	a3,96(sp)
    80007864:	06813703          	ld	a4,104(sp)
    80007868:	07013783          	ld	a5,112(sp)
    8000786c:	07813803          	ld	a6,120(sp)
    80007870:	08013883          	ld	a7,128(sp)
    80007874:	08813903          	ld	s2,136(sp)
    80007878:	09013983          	ld	s3,144(sp)
    8000787c:	09813a03          	ld	s4,152(sp)
    80007880:	0a013a83          	ld	s5,160(sp)
    80007884:	0a813b03          	ld	s6,168(sp)
    80007888:	0b013b83          	ld	s7,176(sp)
    8000788c:	0b813c03          	ld	s8,184(sp)
    80007890:	0c013c83          	ld	s9,192(sp)
    80007894:	0c813d03          	ld	s10,200(sp)
    80007898:	0d013d83          	ld	s11,208(sp)
    8000789c:	0d813e03          	ld	t3,216(sp)
    800078a0:	0e013e83          	ld	t4,224(sp)
    800078a4:	0e813f03          	ld	t5,232(sp)
    800078a8:	0f013f83          	ld	t6,240(sp)
    800078ac:	10010113          	addi	sp,sp,256
    800078b0:	10200073          	sret
    800078b4:	00000013          	nop
    800078b8:	00000013          	nop
    800078bc:	00000013          	nop

00000000800078c0 <timervec>:
    800078c0:	34051573          	csrrw	a0,mscratch,a0
    800078c4:	00b53023          	sd	a1,0(a0)
    800078c8:	00c53423          	sd	a2,8(a0)
    800078cc:	00d53823          	sd	a3,16(a0)
    800078d0:	01853583          	ld	a1,24(a0)
    800078d4:	02053603          	ld	a2,32(a0)
    800078d8:	0005b683          	ld	a3,0(a1)
    800078dc:	00c686b3          	add	a3,a3,a2
    800078e0:	00d5b023          	sd	a3,0(a1)
    800078e4:	00200593          	li	a1,2
    800078e8:	14459073          	csrw	sip,a1
    800078ec:	01053683          	ld	a3,16(a0)
    800078f0:	00853603          	ld	a2,8(a0)
    800078f4:	00053583          	ld	a1,0(a0)
    800078f8:	34051573          	csrrw	a0,mscratch,a0
    800078fc:	30200073          	mret

0000000080007900 <plicinit>:
    80007900:	ff010113          	addi	sp,sp,-16
    80007904:	00813423          	sd	s0,8(sp)
    80007908:	01010413          	addi	s0,sp,16
    8000790c:	00813403          	ld	s0,8(sp)
    80007910:	0c0007b7          	lui	a5,0xc000
    80007914:	00100713          	li	a4,1
    80007918:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000791c:	00e7a223          	sw	a4,4(a5)
    80007920:	01010113          	addi	sp,sp,16
    80007924:	00008067          	ret

0000000080007928 <plicinithart>:
    80007928:	ff010113          	addi	sp,sp,-16
    8000792c:	00813023          	sd	s0,0(sp)
    80007930:	00113423          	sd	ra,8(sp)
    80007934:	01010413          	addi	s0,sp,16
    80007938:	00000097          	auipc	ra,0x0
    8000793c:	a4c080e7          	jalr	-1460(ra) # 80007384 <cpuid>
    80007940:	0085171b          	slliw	a4,a0,0x8
    80007944:	0c0027b7          	lui	a5,0xc002
    80007948:	00e787b3          	add	a5,a5,a4
    8000794c:	40200713          	li	a4,1026
    80007950:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007954:	00813083          	ld	ra,8(sp)
    80007958:	00013403          	ld	s0,0(sp)
    8000795c:	00d5151b          	slliw	a0,a0,0xd
    80007960:	0c2017b7          	lui	a5,0xc201
    80007964:	00a78533          	add	a0,a5,a0
    80007968:	00052023          	sw	zero,0(a0)
    8000796c:	01010113          	addi	sp,sp,16
    80007970:	00008067          	ret

0000000080007974 <plic_claim>:
    80007974:	ff010113          	addi	sp,sp,-16
    80007978:	00813023          	sd	s0,0(sp)
    8000797c:	00113423          	sd	ra,8(sp)
    80007980:	01010413          	addi	s0,sp,16
    80007984:	00000097          	auipc	ra,0x0
    80007988:	a00080e7          	jalr	-1536(ra) # 80007384 <cpuid>
    8000798c:	00813083          	ld	ra,8(sp)
    80007990:	00013403          	ld	s0,0(sp)
    80007994:	00d5151b          	slliw	a0,a0,0xd
    80007998:	0c2017b7          	lui	a5,0xc201
    8000799c:	00a78533          	add	a0,a5,a0
    800079a0:	00452503          	lw	a0,4(a0)
    800079a4:	01010113          	addi	sp,sp,16
    800079a8:	00008067          	ret

00000000800079ac <plic_complete>:
    800079ac:	fe010113          	addi	sp,sp,-32
    800079b0:	00813823          	sd	s0,16(sp)
    800079b4:	00913423          	sd	s1,8(sp)
    800079b8:	00113c23          	sd	ra,24(sp)
    800079bc:	02010413          	addi	s0,sp,32
    800079c0:	00050493          	mv	s1,a0
    800079c4:	00000097          	auipc	ra,0x0
    800079c8:	9c0080e7          	jalr	-1600(ra) # 80007384 <cpuid>
    800079cc:	01813083          	ld	ra,24(sp)
    800079d0:	01013403          	ld	s0,16(sp)
    800079d4:	00d5179b          	slliw	a5,a0,0xd
    800079d8:	0c201737          	lui	a4,0xc201
    800079dc:	00f707b3          	add	a5,a4,a5
    800079e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800079e4:	00813483          	ld	s1,8(sp)
    800079e8:	02010113          	addi	sp,sp,32
    800079ec:	00008067          	ret

00000000800079f0 <consolewrite>:
    800079f0:	fb010113          	addi	sp,sp,-80
    800079f4:	04813023          	sd	s0,64(sp)
    800079f8:	04113423          	sd	ra,72(sp)
    800079fc:	02913c23          	sd	s1,56(sp)
    80007a00:	03213823          	sd	s2,48(sp)
    80007a04:	03313423          	sd	s3,40(sp)
    80007a08:	03413023          	sd	s4,32(sp)
    80007a0c:	01513c23          	sd	s5,24(sp)
    80007a10:	05010413          	addi	s0,sp,80
    80007a14:	06c05c63          	blez	a2,80007a8c <consolewrite+0x9c>
    80007a18:	00060993          	mv	s3,a2
    80007a1c:	00050a13          	mv	s4,a0
    80007a20:	00058493          	mv	s1,a1
    80007a24:	00000913          	li	s2,0
    80007a28:	fff00a93          	li	s5,-1
    80007a2c:	01c0006f          	j	80007a48 <consolewrite+0x58>
    80007a30:	fbf44503          	lbu	a0,-65(s0)
    80007a34:	0019091b          	addiw	s2,s2,1
    80007a38:	00148493          	addi	s1,s1,1
    80007a3c:	00001097          	auipc	ra,0x1
    80007a40:	a9c080e7          	jalr	-1380(ra) # 800084d8 <uartputc>
    80007a44:	03298063          	beq	s3,s2,80007a64 <consolewrite+0x74>
    80007a48:	00048613          	mv	a2,s1
    80007a4c:	00100693          	li	a3,1
    80007a50:	000a0593          	mv	a1,s4
    80007a54:	fbf40513          	addi	a0,s0,-65
    80007a58:	00000097          	auipc	ra,0x0
    80007a5c:	9e4080e7          	jalr	-1564(ra) # 8000743c <either_copyin>
    80007a60:	fd5518e3          	bne	a0,s5,80007a30 <consolewrite+0x40>
    80007a64:	04813083          	ld	ra,72(sp)
    80007a68:	04013403          	ld	s0,64(sp)
    80007a6c:	03813483          	ld	s1,56(sp)
    80007a70:	02813983          	ld	s3,40(sp)
    80007a74:	02013a03          	ld	s4,32(sp)
    80007a78:	01813a83          	ld	s5,24(sp)
    80007a7c:	00090513          	mv	a0,s2
    80007a80:	03013903          	ld	s2,48(sp)
    80007a84:	05010113          	addi	sp,sp,80
    80007a88:	00008067          	ret
    80007a8c:	00000913          	li	s2,0
    80007a90:	fd5ff06f          	j	80007a64 <consolewrite+0x74>

0000000080007a94 <consoleread>:
    80007a94:	f9010113          	addi	sp,sp,-112
    80007a98:	06813023          	sd	s0,96(sp)
    80007a9c:	04913c23          	sd	s1,88(sp)
    80007aa0:	05213823          	sd	s2,80(sp)
    80007aa4:	05313423          	sd	s3,72(sp)
    80007aa8:	05413023          	sd	s4,64(sp)
    80007aac:	03513c23          	sd	s5,56(sp)
    80007ab0:	03613823          	sd	s6,48(sp)
    80007ab4:	03713423          	sd	s7,40(sp)
    80007ab8:	03813023          	sd	s8,32(sp)
    80007abc:	06113423          	sd	ra,104(sp)
    80007ac0:	01913c23          	sd	s9,24(sp)
    80007ac4:	07010413          	addi	s0,sp,112
    80007ac8:	00060b93          	mv	s7,a2
    80007acc:	00050913          	mv	s2,a0
    80007ad0:	00058c13          	mv	s8,a1
    80007ad4:	00060b1b          	sext.w	s6,a2
    80007ad8:	00006497          	auipc	s1,0x6
    80007adc:	2c048493          	addi	s1,s1,704 # 8000dd98 <cons>
    80007ae0:	00400993          	li	s3,4
    80007ae4:	fff00a13          	li	s4,-1
    80007ae8:	00a00a93          	li	s5,10
    80007aec:	05705e63          	blez	s7,80007b48 <consoleread+0xb4>
    80007af0:	09c4a703          	lw	a4,156(s1)
    80007af4:	0984a783          	lw	a5,152(s1)
    80007af8:	0007071b          	sext.w	a4,a4
    80007afc:	08e78463          	beq	a5,a4,80007b84 <consoleread+0xf0>
    80007b00:	07f7f713          	andi	a4,a5,127
    80007b04:	00e48733          	add	a4,s1,a4
    80007b08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007b0c:	0017869b          	addiw	a3,a5,1
    80007b10:	08d4ac23          	sw	a3,152(s1)
    80007b14:	00070c9b          	sext.w	s9,a4
    80007b18:	0b370663          	beq	a4,s3,80007bc4 <consoleread+0x130>
    80007b1c:	00100693          	li	a3,1
    80007b20:	f9f40613          	addi	a2,s0,-97
    80007b24:	000c0593          	mv	a1,s8
    80007b28:	00090513          	mv	a0,s2
    80007b2c:	f8e40fa3          	sb	a4,-97(s0)
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	8c0080e7          	jalr	-1856(ra) # 800073f0 <either_copyout>
    80007b38:	01450863          	beq	a0,s4,80007b48 <consoleread+0xb4>
    80007b3c:	001c0c13          	addi	s8,s8,1
    80007b40:	fffb8b9b          	addiw	s7,s7,-1
    80007b44:	fb5c94e3          	bne	s9,s5,80007aec <consoleread+0x58>
    80007b48:	000b851b          	sext.w	a0,s7
    80007b4c:	06813083          	ld	ra,104(sp)
    80007b50:	06013403          	ld	s0,96(sp)
    80007b54:	05813483          	ld	s1,88(sp)
    80007b58:	05013903          	ld	s2,80(sp)
    80007b5c:	04813983          	ld	s3,72(sp)
    80007b60:	04013a03          	ld	s4,64(sp)
    80007b64:	03813a83          	ld	s5,56(sp)
    80007b68:	02813b83          	ld	s7,40(sp)
    80007b6c:	02013c03          	ld	s8,32(sp)
    80007b70:	01813c83          	ld	s9,24(sp)
    80007b74:	40ab053b          	subw	a0,s6,a0
    80007b78:	03013b03          	ld	s6,48(sp)
    80007b7c:	07010113          	addi	sp,sp,112
    80007b80:	00008067          	ret
    80007b84:	00001097          	auipc	ra,0x1
    80007b88:	1d8080e7          	jalr	472(ra) # 80008d5c <push_on>
    80007b8c:	0984a703          	lw	a4,152(s1)
    80007b90:	09c4a783          	lw	a5,156(s1)
    80007b94:	0007879b          	sext.w	a5,a5
    80007b98:	fef70ce3          	beq	a4,a5,80007b90 <consoleread+0xfc>
    80007b9c:	00001097          	auipc	ra,0x1
    80007ba0:	234080e7          	jalr	564(ra) # 80008dd0 <pop_on>
    80007ba4:	0984a783          	lw	a5,152(s1)
    80007ba8:	07f7f713          	andi	a4,a5,127
    80007bac:	00e48733          	add	a4,s1,a4
    80007bb0:	01874703          	lbu	a4,24(a4)
    80007bb4:	0017869b          	addiw	a3,a5,1
    80007bb8:	08d4ac23          	sw	a3,152(s1)
    80007bbc:	00070c9b          	sext.w	s9,a4
    80007bc0:	f5371ee3          	bne	a4,s3,80007b1c <consoleread+0x88>
    80007bc4:	000b851b          	sext.w	a0,s7
    80007bc8:	f96bf2e3          	bgeu	s7,s6,80007b4c <consoleread+0xb8>
    80007bcc:	08f4ac23          	sw	a5,152(s1)
    80007bd0:	f7dff06f          	j	80007b4c <consoleread+0xb8>

0000000080007bd4 <consputc>:
    80007bd4:	10000793          	li	a5,256
    80007bd8:	00f50663          	beq	a0,a5,80007be4 <consputc+0x10>
    80007bdc:	00001317          	auipc	t1,0x1
    80007be0:	9f430067          	jr	-1548(t1) # 800085d0 <uartputc_sync>
    80007be4:	ff010113          	addi	sp,sp,-16
    80007be8:	00113423          	sd	ra,8(sp)
    80007bec:	00813023          	sd	s0,0(sp)
    80007bf0:	01010413          	addi	s0,sp,16
    80007bf4:	00800513          	li	a0,8
    80007bf8:	00001097          	auipc	ra,0x1
    80007bfc:	9d8080e7          	jalr	-1576(ra) # 800085d0 <uartputc_sync>
    80007c00:	02000513          	li	a0,32
    80007c04:	00001097          	auipc	ra,0x1
    80007c08:	9cc080e7          	jalr	-1588(ra) # 800085d0 <uartputc_sync>
    80007c0c:	00013403          	ld	s0,0(sp)
    80007c10:	00813083          	ld	ra,8(sp)
    80007c14:	00800513          	li	a0,8
    80007c18:	01010113          	addi	sp,sp,16
    80007c1c:	00001317          	auipc	t1,0x1
    80007c20:	9b430067          	jr	-1612(t1) # 800085d0 <uartputc_sync>

0000000080007c24 <consoleintr>:
    80007c24:	fe010113          	addi	sp,sp,-32
    80007c28:	00813823          	sd	s0,16(sp)
    80007c2c:	00913423          	sd	s1,8(sp)
    80007c30:	01213023          	sd	s2,0(sp)
    80007c34:	00113c23          	sd	ra,24(sp)
    80007c38:	02010413          	addi	s0,sp,32
    80007c3c:	00006917          	auipc	s2,0x6
    80007c40:	15c90913          	addi	s2,s2,348 # 8000dd98 <cons>
    80007c44:	00050493          	mv	s1,a0
    80007c48:	00090513          	mv	a0,s2
    80007c4c:	00001097          	auipc	ra,0x1
    80007c50:	e40080e7          	jalr	-448(ra) # 80008a8c <acquire>
    80007c54:	02048c63          	beqz	s1,80007c8c <consoleintr+0x68>
    80007c58:	0a092783          	lw	a5,160(s2)
    80007c5c:	09892703          	lw	a4,152(s2)
    80007c60:	07f00693          	li	a3,127
    80007c64:	40e7873b          	subw	a4,a5,a4
    80007c68:	02e6e263          	bltu	a3,a4,80007c8c <consoleintr+0x68>
    80007c6c:	00d00713          	li	a4,13
    80007c70:	04e48063          	beq	s1,a4,80007cb0 <consoleintr+0x8c>
    80007c74:	07f7f713          	andi	a4,a5,127
    80007c78:	00e90733          	add	a4,s2,a4
    80007c7c:	0017879b          	addiw	a5,a5,1
    80007c80:	0af92023          	sw	a5,160(s2)
    80007c84:	00970c23          	sb	s1,24(a4)
    80007c88:	08f92e23          	sw	a5,156(s2)
    80007c8c:	01013403          	ld	s0,16(sp)
    80007c90:	01813083          	ld	ra,24(sp)
    80007c94:	00813483          	ld	s1,8(sp)
    80007c98:	00013903          	ld	s2,0(sp)
    80007c9c:	00006517          	auipc	a0,0x6
    80007ca0:	0fc50513          	addi	a0,a0,252 # 8000dd98 <cons>
    80007ca4:	02010113          	addi	sp,sp,32
    80007ca8:	00001317          	auipc	t1,0x1
    80007cac:	eb030067          	jr	-336(t1) # 80008b58 <release>
    80007cb0:	00a00493          	li	s1,10
    80007cb4:	fc1ff06f          	j	80007c74 <consoleintr+0x50>

0000000080007cb8 <consoleinit>:
    80007cb8:	fe010113          	addi	sp,sp,-32
    80007cbc:	00113c23          	sd	ra,24(sp)
    80007cc0:	00813823          	sd	s0,16(sp)
    80007cc4:	00913423          	sd	s1,8(sp)
    80007cc8:	02010413          	addi	s0,sp,32
    80007ccc:	00006497          	auipc	s1,0x6
    80007cd0:	0cc48493          	addi	s1,s1,204 # 8000dd98 <cons>
    80007cd4:	00048513          	mv	a0,s1
    80007cd8:	00003597          	auipc	a1,0x3
    80007cdc:	a3858593          	addi	a1,a1,-1480 # 8000a710 <CONSOLE_STATUS+0x700>
    80007ce0:	00001097          	auipc	ra,0x1
    80007ce4:	d88080e7          	jalr	-632(ra) # 80008a68 <initlock>
    80007ce8:	00000097          	auipc	ra,0x0
    80007cec:	7ac080e7          	jalr	1964(ra) # 80008494 <uartinit>
    80007cf0:	01813083          	ld	ra,24(sp)
    80007cf4:	01013403          	ld	s0,16(sp)
    80007cf8:	00000797          	auipc	a5,0x0
    80007cfc:	d9c78793          	addi	a5,a5,-612 # 80007a94 <consoleread>
    80007d00:	0af4bc23          	sd	a5,184(s1)
    80007d04:	00000797          	auipc	a5,0x0
    80007d08:	cec78793          	addi	a5,a5,-788 # 800079f0 <consolewrite>
    80007d0c:	0cf4b023          	sd	a5,192(s1)
    80007d10:	00813483          	ld	s1,8(sp)
    80007d14:	02010113          	addi	sp,sp,32
    80007d18:	00008067          	ret

0000000080007d1c <console_read>:
    80007d1c:	ff010113          	addi	sp,sp,-16
    80007d20:	00813423          	sd	s0,8(sp)
    80007d24:	01010413          	addi	s0,sp,16
    80007d28:	00813403          	ld	s0,8(sp)
    80007d2c:	00006317          	auipc	t1,0x6
    80007d30:	12433303          	ld	t1,292(t1) # 8000de50 <devsw+0x10>
    80007d34:	01010113          	addi	sp,sp,16
    80007d38:	00030067          	jr	t1

0000000080007d3c <console_write>:
    80007d3c:	ff010113          	addi	sp,sp,-16
    80007d40:	00813423          	sd	s0,8(sp)
    80007d44:	01010413          	addi	s0,sp,16
    80007d48:	00813403          	ld	s0,8(sp)
    80007d4c:	00006317          	auipc	t1,0x6
    80007d50:	10c33303          	ld	t1,268(t1) # 8000de58 <devsw+0x18>
    80007d54:	01010113          	addi	sp,sp,16
    80007d58:	00030067          	jr	t1

0000000080007d5c <panic>:
    80007d5c:	fe010113          	addi	sp,sp,-32
    80007d60:	00113c23          	sd	ra,24(sp)
    80007d64:	00813823          	sd	s0,16(sp)
    80007d68:	00913423          	sd	s1,8(sp)
    80007d6c:	02010413          	addi	s0,sp,32
    80007d70:	00050493          	mv	s1,a0
    80007d74:	00003517          	auipc	a0,0x3
    80007d78:	9a450513          	addi	a0,a0,-1628 # 8000a718 <CONSOLE_STATUS+0x708>
    80007d7c:	00006797          	auipc	a5,0x6
    80007d80:	1607ae23          	sw	zero,380(a5) # 8000def8 <pr+0x18>
    80007d84:	00000097          	auipc	ra,0x0
    80007d88:	034080e7          	jalr	52(ra) # 80007db8 <__printf>
    80007d8c:	00048513          	mv	a0,s1
    80007d90:	00000097          	auipc	ra,0x0
    80007d94:	028080e7          	jalr	40(ra) # 80007db8 <__printf>
    80007d98:	00002517          	auipc	a0,0x2
    80007d9c:	6f050513          	addi	a0,a0,1776 # 8000a488 <CONSOLE_STATUS+0x478>
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	018080e7          	jalr	24(ra) # 80007db8 <__printf>
    80007da8:	00100793          	li	a5,1
    80007dac:	00005717          	auipc	a4,0x5
    80007db0:	bef72623          	sw	a5,-1044(a4) # 8000c998 <panicked>
    80007db4:	0000006f          	j	80007db4 <panic+0x58>

0000000080007db8 <__printf>:
    80007db8:	f3010113          	addi	sp,sp,-208
    80007dbc:	08813023          	sd	s0,128(sp)
    80007dc0:	07313423          	sd	s3,104(sp)
    80007dc4:	09010413          	addi	s0,sp,144
    80007dc8:	05813023          	sd	s8,64(sp)
    80007dcc:	08113423          	sd	ra,136(sp)
    80007dd0:	06913c23          	sd	s1,120(sp)
    80007dd4:	07213823          	sd	s2,112(sp)
    80007dd8:	07413023          	sd	s4,96(sp)
    80007ddc:	05513c23          	sd	s5,88(sp)
    80007de0:	05613823          	sd	s6,80(sp)
    80007de4:	05713423          	sd	s7,72(sp)
    80007de8:	03913c23          	sd	s9,56(sp)
    80007dec:	03a13823          	sd	s10,48(sp)
    80007df0:	03b13423          	sd	s11,40(sp)
    80007df4:	00006317          	auipc	t1,0x6
    80007df8:	0ec30313          	addi	t1,t1,236 # 8000dee0 <pr>
    80007dfc:	01832c03          	lw	s8,24(t1)
    80007e00:	00b43423          	sd	a1,8(s0)
    80007e04:	00c43823          	sd	a2,16(s0)
    80007e08:	00d43c23          	sd	a3,24(s0)
    80007e0c:	02e43023          	sd	a4,32(s0)
    80007e10:	02f43423          	sd	a5,40(s0)
    80007e14:	03043823          	sd	a6,48(s0)
    80007e18:	03143c23          	sd	a7,56(s0)
    80007e1c:	00050993          	mv	s3,a0
    80007e20:	4a0c1663          	bnez	s8,800082cc <__printf+0x514>
    80007e24:	60098c63          	beqz	s3,8000843c <__printf+0x684>
    80007e28:	0009c503          	lbu	a0,0(s3)
    80007e2c:	00840793          	addi	a5,s0,8
    80007e30:	f6f43c23          	sd	a5,-136(s0)
    80007e34:	00000493          	li	s1,0
    80007e38:	22050063          	beqz	a0,80008058 <__printf+0x2a0>
    80007e3c:	00002a37          	lui	s4,0x2
    80007e40:	00018ab7          	lui	s5,0x18
    80007e44:	000f4b37          	lui	s6,0xf4
    80007e48:	00989bb7          	lui	s7,0x989
    80007e4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007e50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007e54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007e58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007e5c:	00148c9b          	addiw	s9,s1,1
    80007e60:	02500793          	li	a5,37
    80007e64:	01998933          	add	s2,s3,s9
    80007e68:	38f51263          	bne	a0,a5,800081ec <__printf+0x434>
    80007e6c:	00094783          	lbu	a5,0(s2)
    80007e70:	00078c9b          	sext.w	s9,a5
    80007e74:	1e078263          	beqz	a5,80008058 <__printf+0x2a0>
    80007e78:	0024849b          	addiw	s1,s1,2
    80007e7c:	07000713          	li	a4,112
    80007e80:	00998933          	add	s2,s3,s1
    80007e84:	38e78a63          	beq	a5,a4,80008218 <__printf+0x460>
    80007e88:	20f76863          	bltu	a4,a5,80008098 <__printf+0x2e0>
    80007e8c:	42a78863          	beq	a5,a0,800082bc <__printf+0x504>
    80007e90:	06400713          	li	a4,100
    80007e94:	40e79663          	bne	a5,a4,800082a0 <__printf+0x4e8>
    80007e98:	f7843783          	ld	a5,-136(s0)
    80007e9c:	0007a603          	lw	a2,0(a5)
    80007ea0:	00878793          	addi	a5,a5,8
    80007ea4:	f6f43c23          	sd	a5,-136(s0)
    80007ea8:	42064a63          	bltz	a2,800082dc <__printf+0x524>
    80007eac:	00a00713          	li	a4,10
    80007eb0:	02e677bb          	remuw	a5,a2,a4
    80007eb4:	00003d97          	auipc	s11,0x3
    80007eb8:	88cd8d93          	addi	s11,s11,-1908 # 8000a740 <digits>
    80007ebc:	00900593          	li	a1,9
    80007ec0:	0006051b          	sext.w	a0,a2
    80007ec4:	00000c93          	li	s9,0
    80007ec8:	02079793          	slli	a5,a5,0x20
    80007ecc:	0207d793          	srli	a5,a5,0x20
    80007ed0:	00fd87b3          	add	a5,s11,a5
    80007ed4:	0007c783          	lbu	a5,0(a5)
    80007ed8:	02e656bb          	divuw	a3,a2,a4
    80007edc:	f8f40023          	sb	a5,-128(s0)
    80007ee0:	14c5d863          	bge	a1,a2,80008030 <__printf+0x278>
    80007ee4:	06300593          	li	a1,99
    80007ee8:	00100c93          	li	s9,1
    80007eec:	02e6f7bb          	remuw	a5,a3,a4
    80007ef0:	02079793          	slli	a5,a5,0x20
    80007ef4:	0207d793          	srli	a5,a5,0x20
    80007ef8:	00fd87b3          	add	a5,s11,a5
    80007efc:	0007c783          	lbu	a5,0(a5)
    80007f00:	02e6d73b          	divuw	a4,a3,a4
    80007f04:	f8f400a3          	sb	a5,-127(s0)
    80007f08:	12a5f463          	bgeu	a1,a0,80008030 <__printf+0x278>
    80007f0c:	00a00693          	li	a3,10
    80007f10:	00900593          	li	a1,9
    80007f14:	02d777bb          	remuw	a5,a4,a3
    80007f18:	02079793          	slli	a5,a5,0x20
    80007f1c:	0207d793          	srli	a5,a5,0x20
    80007f20:	00fd87b3          	add	a5,s11,a5
    80007f24:	0007c503          	lbu	a0,0(a5)
    80007f28:	02d757bb          	divuw	a5,a4,a3
    80007f2c:	f8a40123          	sb	a0,-126(s0)
    80007f30:	48e5f263          	bgeu	a1,a4,800083b4 <__printf+0x5fc>
    80007f34:	06300513          	li	a0,99
    80007f38:	02d7f5bb          	remuw	a1,a5,a3
    80007f3c:	02059593          	slli	a1,a1,0x20
    80007f40:	0205d593          	srli	a1,a1,0x20
    80007f44:	00bd85b3          	add	a1,s11,a1
    80007f48:	0005c583          	lbu	a1,0(a1)
    80007f4c:	02d7d7bb          	divuw	a5,a5,a3
    80007f50:	f8b401a3          	sb	a1,-125(s0)
    80007f54:	48e57263          	bgeu	a0,a4,800083d8 <__printf+0x620>
    80007f58:	3e700513          	li	a0,999
    80007f5c:	02d7f5bb          	remuw	a1,a5,a3
    80007f60:	02059593          	slli	a1,a1,0x20
    80007f64:	0205d593          	srli	a1,a1,0x20
    80007f68:	00bd85b3          	add	a1,s11,a1
    80007f6c:	0005c583          	lbu	a1,0(a1)
    80007f70:	02d7d7bb          	divuw	a5,a5,a3
    80007f74:	f8b40223          	sb	a1,-124(s0)
    80007f78:	46e57663          	bgeu	a0,a4,800083e4 <__printf+0x62c>
    80007f7c:	02d7f5bb          	remuw	a1,a5,a3
    80007f80:	02059593          	slli	a1,a1,0x20
    80007f84:	0205d593          	srli	a1,a1,0x20
    80007f88:	00bd85b3          	add	a1,s11,a1
    80007f8c:	0005c583          	lbu	a1,0(a1)
    80007f90:	02d7d7bb          	divuw	a5,a5,a3
    80007f94:	f8b402a3          	sb	a1,-123(s0)
    80007f98:	46ea7863          	bgeu	s4,a4,80008408 <__printf+0x650>
    80007f9c:	02d7f5bb          	remuw	a1,a5,a3
    80007fa0:	02059593          	slli	a1,a1,0x20
    80007fa4:	0205d593          	srli	a1,a1,0x20
    80007fa8:	00bd85b3          	add	a1,s11,a1
    80007fac:	0005c583          	lbu	a1,0(a1)
    80007fb0:	02d7d7bb          	divuw	a5,a5,a3
    80007fb4:	f8b40323          	sb	a1,-122(s0)
    80007fb8:	3eeaf863          	bgeu	s5,a4,800083a8 <__printf+0x5f0>
    80007fbc:	02d7f5bb          	remuw	a1,a5,a3
    80007fc0:	02059593          	slli	a1,a1,0x20
    80007fc4:	0205d593          	srli	a1,a1,0x20
    80007fc8:	00bd85b3          	add	a1,s11,a1
    80007fcc:	0005c583          	lbu	a1,0(a1)
    80007fd0:	02d7d7bb          	divuw	a5,a5,a3
    80007fd4:	f8b403a3          	sb	a1,-121(s0)
    80007fd8:	42eb7e63          	bgeu	s6,a4,80008414 <__printf+0x65c>
    80007fdc:	02d7f5bb          	remuw	a1,a5,a3
    80007fe0:	02059593          	slli	a1,a1,0x20
    80007fe4:	0205d593          	srli	a1,a1,0x20
    80007fe8:	00bd85b3          	add	a1,s11,a1
    80007fec:	0005c583          	lbu	a1,0(a1)
    80007ff0:	02d7d7bb          	divuw	a5,a5,a3
    80007ff4:	f8b40423          	sb	a1,-120(s0)
    80007ff8:	42ebfc63          	bgeu	s7,a4,80008430 <__printf+0x678>
    80007ffc:	02079793          	slli	a5,a5,0x20
    80008000:	0207d793          	srli	a5,a5,0x20
    80008004:	00fd8db3          	add	s11,s11,a5
    80008008:	000dc703          	lbu	a4,0(s11)
    8000800c:	00a00793          	li	a5,10
    80008010:	00900c93          	li	s9,9
    80008014:	f8e404a3          	sb	a4,-119(s0)
    80008018:	00065c63          	bgez	a2,80008030 <__printf+0x278>
    8000801c:	f9040713          	addi	a4,s0,-112
    80008020:	00f70733          	add	a4,a4,a5
    80008024:	02d00693          	li	a3,45
    80008028:	fed70823          	sb	a3,-16(a4)
    8000802c:	00078c93          	mv	s9,a5
    80008030:	f8040793          	addi	a5,s0,-128
    80008034:	01978cb3          	add	s9,a5,s9
    80008038:	f7f40d13          	addi	s10,s0,-129
    8000803c:	000cc503          	lbu	a0,0(s9)
    80008040:	fffc8c93          	addi	s9,s9,-1
    80008044:	00000097          	auipc	ra,0x0
    80008048:	b90080e7          	jalr	-1136(ra) # 80007bd4 <consputc>
    8000804c:	ffac98e3          	bne	s9,s10,8000803c <__printf+0x284>
    80008050:	00094503          	lbu	a0,0(s2)
    80008054:	e00514e3          	bnez	a0,80007e5c <__printf+0xa4>
    80008058:	1a0c1663          	bnez	s8,80008204 <__printf+0x44c>
    8000805c:	08813083          	ld	ra,136(sp)
    80008060:	08013403          	ld	s0,128(sp)
    80008064:	07813483          	ld	s1,120(sp)
    80008068:	07013903          	ld	s2,112(sp)
    8000806c:	06813983          	ld	s3,104(sp)
    80008070:	06013a03          	ld	s4,96(sp)
    80008074:	05813a83          	ld	s5,88(sp)
    80008078:	05013b03          	ld	s6,80(sp)
    8000807c:	04813b83          	ld	s7,72(sp)
    80008080:	04013c03          	ld	s8,64(sp)
    80008084:	03813c83          	ld	s9,56(sp)
    80008088:	03013d03          	ld	s10,48(sp)
    8000808c:	02813d83          	ld	s11,40(sp)
    80008090:	0d010113          	addi	sp,sp,208
    80008094:	00008067          	ret
    80008098:	07300713          	li	a4,115
    8000809c:	1ce78a63          	beq	a5,a4,80008270 <__printf+0x4b8>
    800080a0:	07800713          	li	a4,120
    800080a4:	1ee79e63          	bne	a5,a4,800082a0 <__printf+0x4e8>
    800080a8:	f7843783          	ld	a5,-136(s0)
    800080ac:	0007a703          	lw	a4,0(a5)
    800080b0:	00878793          	addi	a5,a5,8
    800080b4:	f6f43c23          	sd	a5,-136(s0)
    800080b8:	28074263          	bltz	a4,8000833c <__printf+0x584>
    800080bc:	00002d97          	auipc	s11,0x2
    800080c0:	684d8d93          	addi	s11,s11,1668 # 8000a740 <digits>
    800080c4:	00f77793          	andi	a5,a4,15
    800080c8:	00fd87b3          	add	a5,s11,a5
    800080cc:	0007c683          	lbu	a3,0(a5)
    800080d0:	00f00613          	li	a2,15
    800080d4:	0007079b          	sext.w	a5,a4
    800080d8:	f8d40023          	sb	a3,-128(s0)
    800080dc:	0047559b          	srliw	a1,a4,0x4
    800080e0:	0047569b          	srliw	a3,a4,0x4
    800080e4:	00000c93          	li	s9,0
    800080e8:	0ee65063          	bge	a2,a4,800081c8 <__printf+0x410>
    800080ec:	00f6f693          	andi	a3,a3,15
    800080f0:	00dd86b3          	add	a3,s11,a3
    800080f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800080f8:	0087d79b          	srliw	a5,a5,0x8
    800080fc:	00100c93          	li	s9,1
    80008100:	f8d400a3          	sb	a3,-127(s0)
    80008104:	0cb67263          	bgeu	a2,a1,800081c8 <__printf+0x410>
    80008108:	00f7f693          	andi	a3,a5,15
    8000810c:	00dd86b3          	add	a3,s11,a3
    80008110:	0006c583          	lbu	a1,0(a3)
    80008114:	00f00613          	li	a2,15
    80008118:	0047d69b          	srliw	a3,a5,0x4
    8000811c:	f8b40123          	sb	a1,-126(s0)
    80008120:	0047d593          	srli	a1,a5,0x4
    80008124:	28f67e63          	bgeu	a2,a5,800083c0 <__printf+0x608>
    80008128:	00f6f693          	andi	a3,a3,15
    8000812c:	00dd86b3          	add	a3,s11,a3
    80008130:	0006c503          	lbu	a0,0(a3)
    80008134:	0087d813          	srli	a6,a5,0x8
    80008138:	0087d69b          	srliw	a3,a5,0x8
    8000813c:	f8a401a3          	sb	a0,-125(s0)
    80008140:	28b67663          	bgeu	a2,a1,800083cc <__printf+0x614>
    80008144:	00f6f693          	andi	a3,a3,15
    80008148:	00dd86b3          	add	a3,s11,a3
    8000814c:	0006c583          	lbu	a1,0(a3)
    80008150:	00c7d513          	srli	a0,a5,0xc
    80008154:	00c7d69b          	srliw	a3,a5,0xc
    80008158:	f8b40223          	sb	a1,-124(s0)
    8000815c:	29067a63          	bgeu	a2,a6,800083f0 <__printf+0x638>
    80008160:	00f6f693          	andi	a3,a3,15
    80008164:	00dd86b3          	add	a3,s11,a3
    80008168:	0006c583          	lbu	a1,0(a3)
    8000816c:	0107d813          	srli	a6,a5,0x10
    80008170:	0107d69b          	srliw	a3,a5,0x10
    80008174:	f8b402a3          	sb	a1,-123(s0)
    80008178:	28a67263          	bgeu	a2,a0,800083fc <__printf+0x644>
    8000817c:	00f6f693          	andi	a3,a3,15
    80008180:	00dd86b3          	add	a3,s11,a3
    80008184:	0006c683          	lbu	a3,0(a3)
    80008188:	0147d79b          	srliw	a5,a5,0x14
    8000818c:	f8d40323          	sb	a3,-122(s0)
    80008190:	21067663          	bgeu	a2,a6,8000839c <__printf+0x5e4>
    80008194:	02079793          	slli	a5,a5,0x20
    80008198:	0207d793          	srli	a5,a5,0x20
    8000819c:	00fd8db3          	add	s11,s11,a5
    800081a0:	000dc683          	lbu	a3,0(s11)
    800081a4:	00800793          	li	a5,8
    800081a8:	00700c93          	li	s9,7
    800081ac:	f8d403a3          	sb	a3,-121(s0)
    800081b0:	00075c63          	bgez	a4,800081c8 <__printf+0x410>
    800081b4:	f9040713          	addi	a4,s0,-112
    800081b8:	00f70733          	add	a4,a4,a5
    800081bc:	02d00693          	li	a3,45
    800081c0:	fed70823          	sb	a3,-16(a4)
    800081c4:	00078c93          	mv	s9,a5
    800081c8:	f8040793          	addi	a5,s0,-128
    800081cc:	01978cb3          	add	s9,a5,s9
    800081d0:	f7f40d13          	addi	s10,s0,-129
    800081d4:	000cc503          	lbu	a0,0(s9)
    800081d8:	fffc8c93          	addi	s9,s9,-1
    800081dc:	00000097          	auipc	ra,0x0
    800081e0:	9f8080e7          	jalr	-1544(ra) # 80007bd4 <consputc>
    800081e4:	ff9d18e3          	bne	s10,s9,800081d4 <__printf+0x41c>
    800081e8:	0100006f          	j	800081f8 <__printf+0x440>
    800081ec:	00000097          	auipc	ra,0x0
    800081f0:	9e8080e7          	jalr	-1560(ra) # 80007bd4 <consputc>
    800081f4:	000c8493          	mv	s1,s9
    800081f8:	00094503          	lbu	a0,0(s2)
    800081fc:	c60510e3          	bnez	a0,80007e5c <__printf+0xa4>
    80008200:	e40c0ee3          	beqz	s8,8000805c <__printf+0x2a4>
    80008204:	00006517          	auipc	a0,0x6
    80008208:	cdc50513          	addi	a0,a0,-804 # 8000dee0 <pr>
    8000820c:	00001097          	auipc	ra,0x1
    80008210:	94c080e7          	jalr	-1716(ra) # 80008b58 <release>
    80008214:	e49ff06f          	j	8000805c <__printf+0x2a4>
    80008218:	f7843783          	ld	a5,-136(s0)
    8000821c:	03000513          	li	a0,48
    80008220:	01000d13          	li	s10,16
    80008224:	00878713          	addi	a4,a5,8
    80008228:	0007bc83          	ld	s9,0(a5)
    8000822c:	f6e43c23          	sd	a4,-136(s0)
    80008230:	00000097          	auipc	ra,0x0
    80008234:	9a4080e7          	jalr	-1628(ra) # 80007bd4 <consputc>
    80008238:	07800513          	li	a0,120
    8000823c:	00000097          	auipc	ra,0x0
    80008240:	998080e7          	jalr	-1640(ra) # 80007bd4 <consputc>
    80008244:	00002d97          	auipc	s11,0x2
    80008248:	4fcd8d93          	addi	s11,s11,1276 # 8000a740 <digits>
    8000824c:	03ccd793          	srli	a5,s9,0x3c
    80008250:	00fd87b3          	add	a5,s11,a5
    80008254:	0007c503          	lbu	a0,0(a5)
    80008258:	fffd0d1b          	addiw	s10,s10,-1
    8000825c:	004c9c93          	slli	s9,s9,0x4
    80008260:	00000097          	auipc	ra,0x0
    80008264:	974080e7          	jalr	-1676(ra) # 80007bd4 <consputc>
    80008268:	fe0d12e3          	bnez	s10,8000824c <__printf+0x494>
    8000826c:	f8dff06f          	j	800081f8 <__printf+0x440>
    80008270:	f7843783          	ld	a5,-136(s0)
    80008274:	0007bc83          	ld	s9,0(a5)
    80008278:	00878793          	addi	a5,a5,8
    8000827c:	f6f43c23          	sd	a5,-136(s0)
    80008280:	000c9a63          	bnez	s9,80008294 <__printf+0x4dc>
    80008284:	1080006f          	j	8000838c <__printf+0x5d4>
    80008288:	001c8c93          	addi	s9,s9,1
    8000828c:	00000097          	auipc	ra,0x0
    80008290:	948080e7          	jalr	-1720(ra) # 80007bd4 <consputc>
    80008294:	000cc503          	lbu	a0,0(s9)
    80008298:	fe0518e3          	bnez	a0,80008288 <__printf+0x4d0>
    8000829c:	f5dff06f          	j	800081f8 <__printf+0x440>
    800082a0:	02500513          	li	a0,37
    800082a4:	00000097          	auipc	ra,0x0
    800082a8:	930080e7          	jalr	-1744(ra) # 80007bd4 <consputc>
    800082ac:	000c8513          	mv	a0,s9
    800082b0:	00000097          	auipc	ra,0x0
    800082b4:	924080e7          	jalr	-1756(ra) # 80007bd4 <consputc>
    800082b8:	f41ff06f          	j	800081f8 <__printf+0x440>
    800082bc:	02500513          	li	a0,37
    800082c0:	00000097          	auipc	ra,0x0
    800082c4:	914080e7          	jalr	-1772(ra) # 80007bd4 <consputc>
    800082c8:	f31ff06f          	j	800081f8 <__printf+0x440>
    800082cc:	00030513          	mv	a0,t1
    800082d0:	00000097          	auipc	ra,0x0
    800082d4:	7bc080e7          	jalr	1980(ra) # 80008a8c <acquire>
    800082d8:	b4dff06f          	j	80007e24 <__printf+0x6c>
    800082dc:	40c0053b          	negw	a0,a2
    800082e0:	00a00713          	li	a4,10
    800082e4:	02e576bb          	remuw	a3,a0,a4
    800082e8:	00002d97          	auipc	s11,0x2
    800082ec:	458d8d93          	addi	s11,s11,1112 # 8000a740 <digits>
    800082f0:	ff700593          	li	a1,-9
    800082f4:	02069693          	slli	a3,a3,0x20
    800082f8:	0206d693          	srli	a3,a3,0x20
    800082fc:	00dd86b3          	add	a3,s11,a3
    80008300:	0006c683          	lbu	a3,0(a3)
    80008304:	02e557bb          	divuw	a5,a0,a4
    80008308:	f8d40023          	sb	a3,-128(s0)
    8000830c:	10b65e63          	bge	a2,a1,80008428 <__printf+0x670>
    80008310:	06300593          	li	a1,99
    80008314:	02e7f6bb          	remuw	a3,a5,a4
    80008318:	02069693          	slli	a3,a3,0x20
    8000831c:	0206d693          	srli	a3,a3,0x20
    80008320:	00dd86b3          	add	a3,s11,a3
    80008324:	0006c683          	lbu	a3,0(a3)
    80008328:	02e7d73b          	divuw	a4,a5,a4
    8000832c:	00200793          	li	a5,2
    80008330:	f8d400a3          	sb	a3,-127(s0)
    80008334:	bca5ece3          	bltu	a1,a0,80007f0c <__printf+0x154>
    80008338:	ce5ff06f          	j	8000801c <__printf+0x264>
    8000833c:	40e007bb          	negw	a5,a4
    80008340:	00002d97          	auipc	s11,0x2
    80008344:	400d8d93          	addi	s11,s11,1024 # 8000a740 <digits>
    80008348:	00f7f693          	andi	a3,a5,15
    8000834c:	00dd86b3          	add	a3,s11,a3
    80008350:	0006c583          	lbu	a1,0(a3)
    80008354:	ff100613          	li	a2,-15
    80008358:	0047d69b          	srliw	a3,a5,0x4
    8000835c:	f8b40023          	sb	a1,-128(s0)
    80008360:	0047d59b          	srliw	a1,a5,0x4
    80008364:	0ac75e63          	bge	a4,a2,80008420 <__printf+0x668>
    80008368:	00f6f693          	andi	a3,a3,15
    8000836c:	00dd86b3          	add	a3,s11,a3
    80008370:	0006c603          	lbu	a2,0(a3)
    80008374:	00f00693          	li	a3,15
    80008378:	0087d79b          	srliw	a5,a5,0x8
    8000837c:	f8c400a3          	sb	a2,-127(s0)
    80008380:	d8b6e4e3          	bltu	a3,a1,80008108 <__printf+0x350>
    80008384:	00200793          	li	a5,2
    80008388:	e2dff06f          	j	800081b4 <__printf+0x3fc>
    8000838c:	00002c97          	auipc	s9,0x2
    80008390:	394c8c93          	addi	s9,s9,916 # 8000a720 <CONSOLE_STATUS+0x710>
    80008394:	02800513          	li	a0,40
    80008398:	ef1ff06f          	j	80008288 <__printf+0x4d0>
    8000839c:	00700793          	li	a5,7
    800083a0:	00600c93          	li	s9,6
    800083a4:	e0dff06f          	j	800081b0 <__printf+0x3f8>
    800083a8:	00700793          	li	a5,7
    800083ac:	00600c93          	li	s9,6
    800083b0:	c69ff06f          	j	80008018 <__printf+0x260>
    800083b4:	00300793          	li	a5,3
    800083b8:	00200c93          	li	s9,2
    800083bc:	c5dff06f          	j	80008018 <__printf+0x260>
    800083c0:	00300793          	li	a5,3
    800083c4:	00200c93          	li	s9,2
    800083c8:	de9ff06f          	j	800081b0 <__printf+0x3f8>
    800083cc:	00400793          	li	a5,4
    800083d0:	00300c93          	li	s9,3
    800083d4:	dddff06f          	j	800081b0 <__printf+0x3f8>
    800083d8:	00400793          	li	a5,4
    800083dc:	00300c93          	li	s9,3
    800083e0:	c39ff06f          	j	80008018 <__printf+0x260>
    800083e4:	00500793          	li	a5,5
    800083e8:	00400c93          	li	s9,4
    800083ec:	c2dff06f          	j	80008018 <__printf+0x260>
    800083f0:	00500793          	li	a5,5
    800083f4:	00400c93          	li	s9,4
    800083f8:	db9ff06f          	j	800081b0 <__printf+0x3f8>
    800083fc:	00600793          	li	a5,6
    80008400:	00500c93          	li	s9,5
    80008404:	dadff06f          	j	800081b0 <__printf+0x3f8>
    80008408:	00600793          	li	a5,6
    8000840c:	00500c93          	li	s9,5
    80008410:	c09ff06f          	j	80008018 <__printf+0x260>
    80008414:	00800793          	li	a5,8
    80008418:	00700c93          	li	s9,7
    8000841c:	bfdff06f          	j	80008018 <__printf+0x260>
    80008420:	00100793          	li	a5,1
    80008424:	d91ff06f          	j	800081b4 <__printf+0x3fc>
    80008428:	00100793          	li	a5,1
    8000842c:	bf1ff06f          	j	8000801c <__printf+0x264>
    80008430:	00900793          	li	a5,9
    80008434:	00800c93          	li	s9,8
    80008438:	be1ff06f          	j	80008018 <__printf+0x260>
    8000843c:	00002517          	auipc	a0,0x2
    80008440:	2ec50513          	addi	a0,a0,748 # 8000a728 <CONSOLE_STATUS+0x718>
    80008444:	00000097          	auipc	ra,0x0
    80008448:	918080e7          	jalr	-1768(ra) # 80007d5c <panic>

000000008000844c <printfinit>:
    8000844c:	fe010113          	addi	sp,sp,-32
    80008450:	00813823          	sd	s0,16(sp)
    80008454:	00913423          	sd	s1,8(sp)
    80008458:	00113c23          	sd	ra,24(sp)
    8000845c:	02010413          	addi	s0,sp,32
    80008460:	00006497          	auipc	s1,0x6
    80008464:	a8048493          	addi	s1,s1,-1408 # 8000dee0 <pr>
    80008468:	00048513          	mv	a0,s1
    8000846c:	00002597          	auipc	a1,0x2
    80008470:	2cc58593          	addi	a1,a1,716 # 8000a738 <CONSOLE_STATUS+0x728>
    80008474:	00000097          	auipc	ra,0x0
    80008478:	5f4080e7          	jalr	1524(ra) # 80008a68 <initlock>
    8000847c:	01813083          	ld	ra,24(sp)
    80008480:	01013403          	ld	s0,16(sp)
    80008484:	0004ac23          	sw	zero,24(s1)
    80008488:	00813483          	ld	s1,8(sp)
    8000848c:	02010113          	addi	sp,sp,32
    80008490:	00008067          	ret

0000000080008494 <uartinit>:
    80008494:	ff010113          	addi	sp,sp,-16
    80008498:	00813423          	sd	s0,8(sp)
    8000849c:	01010413          	addi	s0,sp,16
    800084a0:	100007b7          	lui	a5,0x10000
    800084a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800084a8:	f8000713          	li	a4,-128
    800084ac:	00e781a3          	sb	a4,3(a5)
    800084b0:	00300713          	li	a4,3
    800084b4:	00e78023          	sb	a4,0(a5)
    800084b8:	000780a3          	sb	zero,1(a5)
    800084bc:	00e781a3          	sb	a4,3(a5)
    800084c0:	00700693          	li	a3,7
    800084c4:	00d78123          	sb	a3,2(a5)
    800084c8:	00e780a3          	sb	a4,1(a5)
    800084cc:	00813403          	ld	s0,8(sp)
    800084d0:	01010113          	addi	sp,sp,16
    800084d4:	00008067          	ret

00000000800084d8 <uartputc>:
    800084d8:	00004797          	auipc	a5,0x4
    800084dc:	4c07a783          	lw	a5,1216(a5) # 8000c998 <panicked>
    800084e0:	00078463          	beqz	a5,800084e8 <uartputc+0x10>
    800084e4:	0000006f          	j	800084e4 <uartputc+0xc>
    800084e8:	fd010113          	addi	sp,sp,-48
    800084ec:	02813023          	sd	s0,32(sp)
    800084f0:	00913c23          	sd	s1,24(sp)
    800084f4:	01213823          	sd	s2,16(sp)
    800084f8:	01313423          	sd	s3,8(sp)
    800084fc:	02113423          	sd	ra,40(sp)
    80008500:	03010413          	addi	s0,sp,48
    80008504:	00004917          	auipc	s2,0x4
    80008508:	49c90913          	addi	s2,s2,1180 # 8000c9a0 <uart_tx_r>
    8000850c:	00093783          	ld	a5,0(s2)
    80008510:	00004497          	auipc	s1,0x4
    80008514:	49848493          	addi	s1,s1,1176 # 8000c9a8 <uart_tx_w>
    80008518:	0004b703          	ld	a4,0(s1)
    8000851c:	02078693          	addi	a3,a5,32
    80008520:	00050993          	mv	s3,a0
    80008524:	02e69c63          	bne	a3,a4,8000855c <uartputc+0x84>
    80008528:	00001097          	auipc	ra,0x1
    8000852c:	834080e7          	jalr	-1996(ra) # 80008d5c <push_on>
    80008530:	00093783          	ld	a5,0(s2)
    80008534:	0004b703          	ld	a4,0(s1)
    80008538:	02078793          	addi	a5,a5,32
    8000853c:	00e79463          	bne	a5,a4,80008544 <uartputc+0x6c>
    80008540:	0000006f          	j	80008540 <uartputc+0x68>
    80008544:	00001097          	auipc	ra,0x1
    80008548:	88c080e7          	jalr	-1908(ra) # 80008dd0 <pop_on>
    8000854c:	00093783          	ld	a5,0(s2)
    80008550:	0004b703          	ld	a4,0(s1)
    80008554:	02078693          	addi	a3,a5,32
    80008558:	fce688e3          	beq	a3,a4,80008528 <uartputc+0x50>
    8000855c:	01f77693          	andi	a3,a4,31
    80008560:	00006597          	auipc	a1,0x6
    80008564:	9a058593          	addi	a1,a1,-1632 # 8000df00 <uart_tx_buf>
    80008568:	00d586b3          	add	a3,a1,a3
    8000856c:	00170713          	addi	a4,a4,1
    80008570:	01368023          	sb	s3,0(a3)
    80008574:	00e4b023          	sd	a4,0(s1)
    80008578:	10000637          	lui	a2,0x10000
    8000857c:	02f71063          	bne	a4,a5,8000859c <uartputc+0xc4>
    80008580:	0340006f          	j	800085b4 <uartputc+0xdc>
    80008584:	00074703          	lbu	a4,0(a4)
    80008588:	00f93023          	sd	a5,0(s2)
    8000858c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008590:	00093783          	ld	a5,0(s2)
    80008594:	0004b703          	ld	a4,0(s1)
    80008598:	00f70e63          	beq	a4,a5,800085b4 <uartputc+0xdc>
    8000859c:	00564683          	lbu	a3,5(a2)
    800085a0:	01f7f713          	andi	a4,a5,31
    800085a4:	00e58733          	add	a4,a1,a4
    800085a8:	0206f693          	andi	a3,a3,32
    800085ac:	00178793          	addi	a5,a5,1
    800085b0:	fc069ae3          	bnez	a3,80008584 <uartputc+0xac>
    800085b4:	02813083          	ld	ra,40(sp)
    800085b8:	02013403          	ld	s0,32(sp)
    800085bc:	01813483          	ld	s1,24(sp)
    800085c0:	01013903          	ld	s2,16(sp)
    800085c4:	00813983          	ld	s3,8(sp)
    800085c8:	03010113          	addi	sp,sp,48
    800085cc:	00008067          	ret

00000000800085d0 <uartputc_sync>:
    800085d0:	ff010113          	addi	sp,sp,-16
    800085d4:	00813423          	sd	s0,8(sp)
    800085d8:	01010413          	addi	s0,sp,16
    800085dc:	00004717          	auipc	a4,0x4
    800085e0:	3bc72703          	lw	a4,956(a4) # 8000c998 <panicked>
    800085e4:	02071663          	bnez	a4,80008610 <uartputc_sync+0x40>
    800085e8:	00050793          	mv	a5,a0
    800085ec:	100006b7          	lui	a3,0x10000
    800085f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800085f4:	02077713          	andi	a4,a4,32
    800085f8:	fe070ce3          	beqz	a4,800085f0 <uartputc_sync+0x20>
    800085fc:	0ff7f793          	andi	a5,a5,255
    80008600:	00f68023          	sb	a5,0(a3)
    80008604:	00813403          	ld	s0,8(sp)
    80008608:	01010113          	addi	sp,sp,16
    8000860c:	00008067          	ret
    80008610:	0000006f          	j	80008610 <uartputc_sync+0x40>

0000000080008614 <uartstart>:
    80008614:	ff010113          	addi	sp,sp,-16
    80008618:	00813423          	sd	s0,8(sp)
    8000861c:	01010413          	addi	s0,sp,16
    80008620:	00004617          	auipc	a2,0x4
    80008624:	38060613          	addi	a2,a2,896 # 8000c9a0 <uart_tx_r>
    80008628:	00004517          	auipc	a0,0x4
    8000862c:	38050513          	addi	a0,a0,896 # 8000c9a8 <uart_tx_w>
    80008630:	00063783          	ld	a5,0(a2)
    80008634:	00053703          	ld	a4,0(a0)
    80008638:	04f70263          	beq	a4,a5,8000867c <uartstart+0x68>
    8000863c:	100005b7          	lui	a1,0x10000
    80008640:	00006817          	auipc	a6,0x6
    80008644:	8c080813          	addi	a6,a6,-1856 # 8000df00 <uart_tx_buf>
    80008648:	01c0006f          	j	80008664 <uartstart+0x50>
    8000864c:	0006c703          	lbu	a4,0(a3)
    80008650:	00f63023          	sd	a5,0(a2)
    80008654:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008658:	00063783          	ld	a5,0(a2)
    8000865c:	00053703          	ld	a4,0(a0)
    80008660:	00f70e63          	beq	a4,a5,8000867c <uartstart+0x68>
    80008664:	01f7f713          	andi	a4,a5,31
    80008668:	00e806b3          	add	a3,a6,a4
    8000866c:	0055c703          	lbu	a4,5(a1)
    80008670:	00178793          	addi	a5,a5,1
    80008674:	02077713          	andi	a4,a4,32
    80008678:	fc071ae3          	bnez	a4,8000864c <uartstart+0x38>
    8000867c:	00813403          	ld	s0,8(sp)
    80008680:	01010113          	addi	sp,sp,16
    80008684:	00008067          	ret

0000000080008688 <uartgetc>:
    80008688:	ff010113          	addi	sp,sp,-16
    8000868c:	00813423          	sd	s0,8(sp)
    80008690:	01010413          	addi	s0,sp,16
    80008694:	10000737          	lui	a4,0x10000
    80008698:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000869c:	0017f793          	andi	a5,a5,1
    800086a0:	00078c63          	beqz	a5,800086b8 <uartgetc+0x30>
    800086a4:	00074503          	lbu	a0,0(a4)
    800086a8:	0ff57513          	andi	a0,a0,255
    800086ac:	00813403          	ld	s0,8(sp)
    800086b0:	01010113          	addi	sp,sp,16
    800086b4:	00008067          	ret
    800086b8:	fff00513          	li	a0,-1
    800086bc:	ff1ff06f          	j	800086ac <uartgetc+0x24>

00000000800086c0 <uartintr>:
    800086c0:	100007b7          	lui	a5,0x10000
    800086c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800086c8:	0017f793          	andi	a5,a5,1
    800086cc:	0a078463          	beqz	a5,80008774 <uartintr+0xb4>
    800086d0:	fe010113          	addi	sp,sp,-32
    800086d4:	00813823          	sd	s0,16(sp)
    800086d8:	00913423          	sd	s1,8(sp)
    800086dc:	00113c23          	sd	ra,24(sp)
    800086e0:	02010413          	addi	s0,sp,32
    800086e4:	100004b7          	lui	s1,0x10000
    800086e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800086ec:	0ff57513          	andi	a0,a0,255
    800086f0:	fffff097          	auipc	ra,0xfffff
    800086f4:	534080e7          	jalr	1332(ra) # 80007c24 <consoleintr>
    800086f8:	0054c783          	lbu	a5,5(s1)
    800086fc:	0017f793          	andi	a5,a5,1
    80008700:	fe0794e3          	bnez	a5,800086e8 <uartintr+0x28>
    80008704:	00004617          	auipc	a2,0x4
    80008708:	29c60613          	addi	a2,a2,668 # 8000c9a0 <uart_tx_r>
    8000870c:	00004517          	auipc	a0,0x4
    80008710:	29c50513          	addi	a0,a0,668 # 8000c9a8 <uart_tx_w>
    80008714:	00063783          	ld	a5,0(a2)
    80008718:	00053703          	ld	a4,0(a0)
    8000871c:	04f70263          	beq	a4,a5,80008760 <uartintr+0xa0>
    80008720:	100005b7          	lui	a1,0x10000
    80008724:	00005817          	auipc	a6,0x5
    80008728:	7dc80813          	addi	a6,a6,2012 # 8000df00 <uart_tx_buf>
    8000872c:	01c0006f          	j	80008748 <uartintr+0x88>
    80008730:	0006c703          	lbu	a4,0(a3)
    80008734:	00f63023          	sd	a5,0(a2)
    80008738:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000873c:	00063783          	ld	a5,0(a2)
    80008740:	00053703          	ld	a4,0(a0)
    80008744:	00f70e63          	beq	a4,a5,80008760 <uartintr+0xa0>
    80008748:	01f7f713          	andi	a4,a5,31
    8000874c:	00e806b3          	add	a3,a6,a4
    80008750:	0055c703          	lbu	a4,5(a1)
    80008754:	00178793          	addi	a5,a5,1
    80008758:	02077713          	andi	a4,a4,32
    8000875c:	fc071ae3          	bnez	a4,80008730 <uartintr+0x70>
    80008760:	01813083          	ld	ra,24(sp)
    80008764:	01013403          	ld	s0,16(sp)
    80008768:	00813483          	ld	s1,8(sp)
    8000876c:	02010113          	addi	sp,sp,32
    80008770:	00008067          	ret
    80008774:	00004617          	auipc	a2,0x4
    80008778:	22c60613          	addi	a2,a2,556 # 8000c9a0 <uart_tx_r>
    8000877c:	00004517          	auipc	a0,0x4
    80008780:	22c50513          	addi	a0,a0,556 # 8000c9a8 <uart_tx_w>
    80008784:	00063783          	ld	a5,0(a2)
    80008788:	00053703          	ld	a4,0(a0)
    8000878c:	04f70263          	beq	a4,a5,800087d0 <uartintr+0x110>
    80008790:	100005b7          	lui	a1,0x10000
    80008794:	00005817          	auipc	a6,0x5
    80008798:	76c80813          	addi	a6,a6,1900 # 8000df00 <uart_tx_buf>
    8000879c:	01c0006f          	j	800087b8 <uartintr+0xf8>
    800087a0:	0006c703          	lbu	a4,0(a3)
    800087a4:	00f63023          	sd	a5,0(a2)
    800087a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800087ac:	00063783          	ld	a5,0(a2)
    800087b0:	00053703          	ld	a4,0(a0)
    800087b4:	02f70063          	beq	a4,a5,800087d4 <uartintr+0x114>
    800087b8:	01f7f713          	andi	a4,a5,31
    800087bc:	00e806b3          	add	a3,a6,a4
    800087c0:	0055c703          	lbu	a4,5(a1)
    800087c4:	00178793          	addi	a5,a5,1
    800087c8:	02077713          	andi	a4,a4,32
    800087cc:	fc071ae3          	bnez	a4,800087a0 <uartintr+0xe0>
    800087d0:	00008067          	ret
    800087d4:	00008067          	ret

00000000800087d8 <kinit>:
    800087d8:	fc010113          	addi	sp,sp,-64
    800087dc:	02913423          	sd	s1,40(sp)
    800087e0:	fffff7b7          	lui	a5,0xfffff
    800087e4:	00006497          	auipc	s1,0x6
    800087e8:	73b48493          	addi	s1,s1,1851 # 8000ef1f <end+0xfff>
    800087ec:	02813823          	sd	s0,48(sp)
    800087f0:	01313c23          	sd	s3,24(sp)
    800087f4:	00f4f4b3          	and	s1,s1,a5
    800087f8:	02113c23          	sd	ra,56(sp)
    800087fc:	03213023          	sd	s2,32(sp)
    80008800:	01413823          	sd	s4,16(sp)
    80008804:	01513423          	sd	s5,8(sp)
    80008808:	04010413          	addi	s0,sp,64
    8000880c:	000017b7          	lui	a5,0x1
    80008810:	01100993          	li	s3,17
    80008814:	00f487b3          	add	a5,s1,a5
    80008818:	01b99993          	slli	s3,s3,0x1b
    8000881c:	06f9e063          	bltu	s3,a5,8000887c <kinit+0xa4>
    80008820:	00005a97          	auipc	s5,0x5
    80008824:	700a8a93          	addi	s5,s5,1792 # 8000df20 <end>
    80008828:	0754ec63          	bltu	s1,s5,800088a0 <kinit+0xc8>
    8000882c:	0734fa63          	bgeu	s1,s3,800088a0 <kinit+0xc8>
    80008830:	00088a37          	lui	s4,0x88
    80008834:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008838:	00004917          	auipc	s2,0x4
    8000883c:	17890913          	addi	s2,s2,376 # 8000c9b0 <kmem>
    80008840:	00ca1a13          	slli	s4,s4,0xc
    80008844:	0140006f          	j	80008858 <kinit+0x80>
    80008848:	000017b7          	lui	a5,0x1
    8000884c:	00f484b3          	add	s1,s1,a5
    80008850:	0554e863          	bltu	s1,s5,800088a0 <kinit+0xc8>
    80008854:	0534f663          	bgeu	s1,s3,800088a0 <kinit+0xc8>
    80008858:	00001637          	lui	a2,0x1
    8000885c:	00100593          	li	a1,1
    80008860:	00048513          	mv	a0,s1
    80008864:	00000097          	auipc	ra,0x0
    80008868:	5e4080e7          	jalr	1508(ra) # 80008e48 <__memset>
    8000886c:	00093783          	ld	a5,0(s2)
    80008870:	00f4b023          	sd	a5,0(s1)
    80008874:	00993023          	sd	s1,0(s2)
    80008878:	fd4498e3          	bne	s1,s4,80008848 <kinit+0x70>
    8000887c:	03813083          	ld	ra,56(sp)
    80008880:	03013403          	ld	s0,48(sp)
    80008884:	02813483          	ld	s1,40(sp)
    80008888:	02013903          	ld	s2,32(sp)
    8000888c:	01813983          	ld	s3,24(sp)
    80008890:	01013a03          	ld	s4,16(sp)
    80008894:	00813a83          	ld	s5,8(sp)
    80008898:	04010113          	addi	sp,sp,64
    8000889c:	00008067          	ret
    800088a0:	00002517          	auipc	a0,0x2
    800088a4:	eb850513          	addi	a0,a0,-328 # 8000a758 <digits+0x18>
    800088a8:	fffff097          	auipc	ra,0xfffff
    800088ac:	4b4080e7          	jalr	1204(ra) # 80007d5c <panic>

00000000800088b0 <freerange>:
    800088b0:	fc010113          	addi	sp,sp,-64
    800088b4:	000017b7          	lui	a5,0x1
    800088b8:	02913423          	sd	s1,40(sp)
    800088bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800088c0:	009504b3          	add	s1,a0,s1
    800088c4:	fffff537          	lui	a0,0xfffff
    800088c8:	02813823          	sd	s0,48(sp)
    800088cc:	02113c23          	sd	ra,56(sp)
    800088d0:	03213023          	sd	s2,32(sp)
    800088d4:	01313c23          	sd	s3,24(sp)
    800088d8:	01413823          	sd	s4,16(sp)
    800088dc:	01513423          	sd	s5,8(sp)
    800088e0:	01613023          	sd	s6,0(sp)
    800088e4:	04010413          	addi	s0,sp,64
    800088e8:	00a4f4b3          	and	s1,s1,a0
    800088ec:	00f487b3          	add	a5,s1,a5
    800088f0:	06f5e463          	bltu	a1,a5,80008958 <freerange+0xa8>
    800088f4:	00005a97          	auipc	s5,0x5
    800088f8:	62ca8a93          	addi	s5,s5,1580 # 8000df20 <end>
    800088fc:	0954e263          	bltu	s1,s5,80008980 <freerange+0xd0>
    80008900:	01100993          	li	s3,17
    80008904:	01b99993          	slli	s3,s3,0x1b
    80008908:	0734fc63          	bgeu	s1,s3,80008980 <freerange+0xd0>
    8000890c:	00058a13          	mv	s4,a1
    80008910:	00004917          	auipc	s2,0x4
    80008914:	0a090913          	addi	s2,s2,160 # 8000c9b0 <kmem>
    80008918:	00002b37          	lui	s6,0x2
    8000891c:	0140006f          	j	80008930 <freerange+0x80>
    80008920:	000017b7          	lui	a5,0x1
    80008924:	00f484b3          	add	s1,s1,a5
    80008928:	0554ec63          	bltu	s1,s5,80008980 <freerange+0xd0>
    8000892c:	0534fa63          	bgeu	s1,s3,80008980 <freerange+0xd0>
    80008930:	00001637          	lui	a2,0x1
    80008934:	00100593          	li	a1,1
    80008938:	00048513          	mv	a0,s1
    8000893c:	00000097          	auipc	ra,0x0
    80008940:	50c080e7          	jalr	1292(ra) # 80008e48 <__memset>
    80008944:	00093703          	ld	a4,0(s2)
    80008948:	016487b3          	add	a5,s1,s6
    8000894c:	00e4b023          	sd	a4,0(s1)
    80008950:	00993023          	sd	s1,0(s2)
    80008954:	fcfa76e3          	bgeu	s4,a5,80008920 <freerange+0x70>
    80008958:	03813083          	ld	ra,56(sp)
    8000895c:	03013403          	ld	s0,48(sp)
    80008960:	02813483          	ld	s1,40(sp)
    80008964:	02013903          	ld	s2,32(sp)
    80008968:	01813983          	ld	s3,24(sp)
    8000896c:	01013a03          	ld	s4,16(sp)
    80008970:	00813a83          	ld	s5,8(sp)
    80008974:	00013b03          	ld	s6,0(sp)
    80008978:	04010113          	addi	sp,sp,64
    8000897c:	00008067          	ret
    80008980:	00002517          	auipc	a0,0x2
    80008984:	dd850513          	addi	a0,a0,-552 # 8000a758 <digits+0x18>
    80008988:	fffff097          	auipc	ra,0xfffff
    8000898c:	3d4080e7          	jalr	980(ra) # 80007d5c <panic>

0000000080008990 <kfree>:
    80008990:	fe010113          	addi	sp,sp,-32
    80008994:	00813823          	sd	s0,16(sp)
    80008998:	00113c23          	sd	ra,24(sp)
    8000899c:	00913423          	sd	s1,8(sp)
    800089a0:	02010413          	addi	s0,sp,32
    800089a4:	03451793          	slli	a5,a0,0x34
    800089a8:	04079c63          	bnez	a5,80008a00 <kfree+0x70>
    800089ac:	00005797          	auipc	a5,0x5
    800089b0:	57478793          	addi	a5,a5,1396 # 8000df20 <end>
    800089b4:	00050493          	mv	s1,a0
    800089b8:	04f56463          	bltu	a0,a5,80008a00 <kfree+0x70>
    800089bc:	01100793          	li	a5,17
    800089c0:	01b79793          	slli	a5,a5,0x1b
    800089c4:	02f57e63          	bgeu	a0,a5,80008a00 <kfree+0x70>
    800089c8:	00001637          	lui	a2,0x1
    800089cc:	00100593          	li	a1,1
    800089d0:	00000097          	auipc	ra,0x0
    800089d4:	478080e7          	jalr	1144(ra) # 80008e48 <__memset>
    800089d8:	00004797          	auipc	a5,0x4
    800089dc:	fd878793          	addi	a5,a5,-40 # 8000c9b0 <kmem>
    800089e0:	0007b703          	ld	a4,0(a5)
    800089e4:	01813083          	ld	ra,24(sp)
    800089e8:	01013403          	ld	s0,16(sp)
    800089ec:	00e4b023          	sd	a4,0(s1)
    800089f0:	0097b023          	sd	s1,0(a5)
    800089f4:	00813483          	ld	s1,8(sp)
    800089f8:	02010113          	addi	sp,sp,32
    800089fc:	00008067          	ret
    80008a00:	00002517          	auipc	a0,0x2
    80008a04:	d5850513          	addi	a0,a0,-680 # 8000a758 <digits+0x18>
    80008a08:	fffff097          	auipc	ra,0xfffff
    80008a0c:	354080e7          	jalr	852(ra) # 80007d5c <panic>

0000000080008a10 <kalloc>:
    80008a10:	fe010113          	addi	sp,sp,-32
    80008a14:	00813823          	sd	s0,16(sp)
    80008a18:	00913423          	sd	s1,8(sp)
    80008a1c:	00113c23          	sd	ra,24(sp)
    80008a20:	02010413          	addi	s0,sp,32
    80008a24:	00004797          	auipc	a5,0x4
    80008a28:	f8c78793          	addi	a5,a5,-116 # 8000c9b0 <kmem>
    80008a2c:	0007b483          	ld	s1,0(a5)
    80008a30:	02048063          	beqz	s1,80008a50 <kalloc+0x40>
    80008a34:	0004b703          	ld	a4,0(s1)
    80008a38:	00001637          	lui	a2,0x1
    80008a3c:	00500593          	li	a1,5
    80008a40:	00048513          	mv	a0,s1
    80008a44:	00e7b023          	sd	a4,0(a5)
    80008a48:	00000097          	auipc	ra,0x0
    80008a4c:	400080e7          	jalr	1024(ra) # 80008e48 <__memset>
    80008a50:	01813083          	ld	ra,24(sp)
    80008a54:	01013403          	ld	s0,16(sp)
    80008a58:	00048513          	mv	a0,s1
    80008a5c:	00813483          	ld	s1,8(sp)
    80008a60:	02010113          	addi	sp,sp,32
    80008a64:	00008067          	ret

0000000080008a68 <initlock>:
    80008a68:	ff010113          	addi	sp,sp,-16
    80008a6c:	00813423          	sd	s0,8(sp)
    80008a70:	01010413          	addi	s0,sp,16
    80008a74:	00813403          	ld	s0,8(sp)
    80008a78:	00b53423          	sd	a1,8(a0)
    80008a7c:	00052023          	sw	zero,0(a0)
    80008a80:	00053823          	sd	zero,16(a0)
    80008a84:	01010113          	addi	sp,sp,16
    80008a88:	00008067          	ret

0000000080008a8c <acquire>:
    80008a8c:	fe010113          	addi	sp,sp,-32
    80008a90:	00813823          	sd	s0,16(sp)
    80008a94:	00913423          	sd	s1,8(sp)
    80008a98:	00113c23          	sd	ra,24(sp)
    80008a9c:	01213023          	sd	s2,0(sp)
    80008aa0:	02010413          	addi	s0,sp,32
    80008aa4:	00050493          	mv	s1,a0
    80008aa8:	10002973          	csrr	s2,sstatus
    80008aac:	100027f3          	csrr	a5,sstatus
    80008ab0:	ffd7f793          	andi	a5,a5,-3
    80008ab4:	10079073          	csrw	sstatus,a5
    80008ab8:	fffff097          	auipc	ra,0xfffff
    80008abc:	8ec080e7          	jalr	-1812(ra) # 800073a4 <mycpu>
    80008ac0:	07852783          	lw	a5,120(a0)
    80008ac4:	06078e63          	beqz	a5,80008b40 <acquire+0xb4>
    80008ac8:	fffff097          	auipc	ra,0xfffff
    80008acc:	8dc080e7          	jalr	-1828(ra) # 800073a4 <mycpu>
    80008ad0:	07852783          	lw	a5,120(a0)
    80008ad4:	0004a703          	lw	a4,0(s1)
    80008ad8:	0017879b          	addiw	a5,a5,1
    80008adc:	06f52c23          	sw	a5,120(a0)
    80008ae0:	04071063          	bnez	a4,80008b20 <acquire+0x94>
    80008ae4:	00100713          	li	a4,1
    80008ae8:	00070793          	mv	a5,a4
    80008aec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008af0:	0007879b          	sext.w	a5,a5
    80008af4:	fe079ae3          	bnez	a5,80008ae8 <acquire+0x5c>
    80008af8:	0ff0000f          	fence
    80008afc:	fffff097          	auipc	ra,0xfffff
    80008b00:	8a8080e7          	jalr	-1880(ra) # 800073a4 <mycpu>
    80008b04:	01813083          	ld	ra,24(sp)
    80008b08:	01013403          	ld	s0,16(sp)
    80008b0c:	00a4b823          	sd	a0,16(s1)
    80008b10:	00013903          	ld	s2,0(sp)
    80008b14:	00813483          	ld	s1,8(sp)
    80008b18:	02010113          	addi	sp,sp,32
    80008b1c:	00008067          	ret
    80008b20:	0104b903          	ld	s2,16(s1)
    80008b24:	fffff097          	auipc	ra,0xfffff
    80008b28:	880080e7          	jalr	-1920(ra) # 800073a4 <mycpu>
    80008b2c:	faa91ce3          	bne	s2,a0,80008ae4 <acquire+0x58>
    80008b30:	00002517          	auipc	a0,0x2
    80008b34:	c3050513          	addi	a0,a0,-976 # 8000a760 <digits+0x20>
    80008b38:	fffff097          	auipc	ra,0xfffff
    80008b3c:	224080e7          	jalr	548(ra) # 80007d5c <panic>
    80008b40:	00195913          	srli	s2,s2,0x1
    80008b44:	fffff097          	auipc	ra,0xfffff
    80008b48:	860080e7          	jalr	-1952(ra) # 800073a4 <mycpu>
    80008b4c:	00197913          	andi	s2,s2,1
    80008b50:	07252e23          	sw	s2,124(a0)
    80008b54:	f75ff06f          	j	80008ac8 <acquire+0x3c>

0000000080008b58 <release>:
    80008b58:	fe010113          	addi	sp,sp,-32
    80008b5c:	00813823          	sd	s0,16(sp)
    80008b60:	00113c23          	sd	ra,24(sp)
    80008b64:	00913423          	sd	s1,8(sp)
    80008b68:	01213023          	sd	s2,0(sp)
    80008b6c:	02010413          	addi	s0,sp,32
    80008b70:	00052783          	lw	a5,0(a0)
    80008b74:	00079a63          	bnez	a5,80008b88 <release+0x30>
    80008b78:	00002517          	auipc	a0,0x2
    80008b7c:	bf050513          	addi	a0,a0,-1040 # 8000a768 <digits+0x28>
    80008b80:	fffff097          	auipc	ra,0xfffff
    80008b84:	1dc080e7          	jalr	476(ra) # 80007d5c <panic>
    80008b88:	01053903          	ld	s2,16(a0)
    80008b8c:	00050493          	mv	s1,a0
    80008b90:	fffff097          	auipc	ra,0xfffff
    80008b94:	814080e7          	jalr	-2028(ra) # 800073a4 <mycpu>
    80008b98:	fea910e3          	bne	s2,a0,80008b78 <release+0x20>
    80008b9c:	0004b823          	sd	zero,16(s1)
    80008ba0:	0ff0000f          	fence
    80008ba4:	0f50000f          	fence	iorw,ow
    80008ba8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008bac:	ffffe097          	auipc	ra,0xffffe
    80008bb0:	7f8080e7          	jalr	2040(ra) # 800073a4 <mycpu>
    80008bb4:	100027f3          	csrr	a5,sstatus
    80008bb8:	0027f793          	andi	a5,a5,2
    80008bbc:	04079a63          	bnez	a5,80008c10 <release+0xb8>
    80008bc0:	07852783          	lw	a5,120(a0)
    80008bc4:	02f05e63          	blez	a5,80008c00 <release+0xa8>
    80008bc8:	fff7871b          	addiw	a4,a5,-1
    80008bcc:	06e52c23          	sw	a4,120(a0)
    80008bd0:	00071c63          	bnez	a4,80008be8 <release+0x90>
    80008bd4:	07c52783          	lw	a5,124(a0)
    80008bd8:	00078863          	beqz	a5,80008be8 <release+0x90>
    80008bdc:	100027f3          	csrr	a5,sstatus
    80008be0:	0027e793          	ori	a5,a5,2
    80008be4:	10079073          	csrw	sstatus,a5
    80008be8:	01813083          	ld	ra,24(sp)
    80008bec:	01013403          	ld	s0,16(sp)
    80008bf0:	00813483          	ld	s1,8(sp)
    80008bf4:	00013903          	ld	s2,0(sp)
    80008bf8:	02010113          	addi	sp,sp,32
    80008bfc:	00008067          	ret
    80008c00:	00002517          	auipc	a0,0x2
    80008c04:	b8850513          	addi	a0,a0,-1144 # 8000a788 <digits+0x48>
    80008c08:	fffff097          	auipc	ra,0xfffff
    80008c0c:	154080e7          	jalr	340(ra) # 80007d5c <panic>
    80008c10:	00002517          	auipc	a0,0x2
    80008c14:	b6050513          	addi	a0,a0,-1184 # 8000a770 <digits+0x30>
    80008c18:	fffff097          	auipc	ra,0xfffff
    80008c1c:	144080e7          	jalr	324(ra) # 80007d5c <panic>

0000000080008c20 <holding>:
    80008c20:	00052783          	lw	a5,0(a0)
    80008c24:	00079663          	bnez	a5,80008c30 <holding+0x10>
    80008c28:	00000513          	li	a0,0
    80008c2c:	00008067          	ret
    80008c30:	fe010113          	addi	sp,sp,-32
    80008c34:	00813823          	sd	s0,16(sp)
    80008c38:	00913423          	sd	s1,8(sp)
    80008c3c:	00113c23          	sd	ra,24(sp)
    80008c40:	02010413          	addi	s0,sp,32
    80008c44:	01053483          	ld	s1,16(a0)
    80008c48:	ffffe097          	auipc	ra,0xffffe
    80008c4c:	75c080e7          	jalr	1884(ra) # 800073a4 <mycpu>
    80008c50:	01813083          	ld	ra,24(sp)
    80008c54:	01013403          	ld	s0,16(sp)
    80008c58:	40a48533          	sub	a0,s1,a0
    80008c5c:	00153513          	seqz	a0,a0
    80008c60:	00813483          	ld	s1,8(sp)
    80008c64:	02010113          	addi	sp,sp,32
    80008c68:	00008067          	ret

0000000080008c6c <push_off>:
    80008c6c:	fe010113          	addi	sp,sp,-32
    80008c70:	00813823          	sd	s0,16(sp)
    80008c74:	00113c23          	sd	ra,24(sp)
    80008c78:	00913423          	sd	s1,8(sp)
    80008c7c:	02010413          	addi	s0,sp,32
    80008c80:	100024f3          	csrr	s1,sstatus
    80008c84:	100027f3          	csrr	a5,sstatus
    80008c88:	ffd7f793          	andi	a5,a5,-3
    80008c8c:	10079073          	csrw	sstatus,a5
    80008c90:	ffffe097          	auipc	ra,0xffffe
    80008c94:	714080e7          	jalr	1812(ra) # 800073a4 <mycpu>
    80008c98:	07852783          	lw	a5,120(a0)
    80008c9c:	02078663          	beqz	a5,80008cc8 <push_off+0x5c>
    80008ca0:	ffffe097          	auipc	ra,0xffffe
    80008ca4:	704080e7          	jalr	1796(ra) # 800073a4 <mycpu>
    80008ca8:	07852783          	lw	a5,120(a0)
    80008cac:	01813083          	ld	ra,24(sp)
    80008cb0:	01013403          	ld	s0,16(sp)
    80008cb4:	0017879b          	addiw	a5,a5,1
    80008cb8:	06f52c23          	sw	a5,120(a0)
    80008cbc:	00813483          	ld	s1,8(sp)
    80008cc0:	02010113          	addi	sp,sp,32
    80008cc4:	00008067          	ret
    80008cc8:	0014d493          	srli	s1,s1,0x1
    80008ccc:	ffffe097          	auipc	ra,0xffffe
    80008cd0:	6d8080e7          	jalr	1752(ra) # 800073a4 <mycpu>
    80008cd4:	0014f493          	andi	s1,s1,1
    80008cd8:	06952e23          	sw	s1,124(a0)
    80008cdc:	fc5ff06f          	j	80008ca0 <push_off+0x34>

0000000080008ce0 <pop_off>:
    80008ce0:	ff010113          	addi	sp,sp,-16
    80008ce4:	00813023          	sd	s0,0(sp)
    80008ce8:	00113423          	sd	ra,8(sp)
    80008cec:	01010413          	addi	s0,sp,16
    80008cf0:	ffffe097          	auipc	ra,0xffffe
    80008cf4:	6b4080e7          	jalr	1716(ra) # 800073a4 <mycpu>
    80008cf8:	100027f3          	csrr	a5,sstatus
    80008cfc:	0027f793          	andi	a5,a5,2
    80008d00:	04079663          	bnez	a5,80008d4c <pop_off+0x6c>
    80008d04:	07852783          	lw	a5,120(a0)
    80008d08:	02f05a63          	blez	a5,80008d3c <pop_off+0x5c>
    80008d0c:	fff7871b          	addiw	a4,a5,-1
    80008d10:	06e52c23          	sw	a4,120(a0)
    80008d14:	00071c63          	bnez	a4,80008d2c <pop_off+0x4c>
    80008d18:	07c52783          	lw	a5,124(a0)
    80008d1c:	00078863          	beqz	a5,80008d2c <pop_off+0x4c>
    80008d20:	100027f3          	csrr	a5,sstatus
    80008d24:	0027e793          	ori	a5,a5,2
    80008d28:	10079073          	csrw	sstatus,a5
    80008d2c:	00813083          	ld	ra,8(sp)
    80008d30:	00013403          	ld	s0,0(sp)
    80008d34:	01010113          	addi	sp,sp,16
    80008d38:	00008067          	ret
    80008d3c:	00002517          	auipc	a0,0x2
    80008d40:	a4c50513          	addi	a0,a0,-1460 # 8000a788 <digits+0x48>
    80008d44:	fffff097          	auipc	ra,0xfffff
    80008d48:	018080e7          	jalr	24(ra) # 80007d5c <panic>
    80008d4c:	00002517          	auipc	a0,0x2
    80008d50:	a2450513          	addi	a0,a0,-1500 # 8000a770 <digits+0x30>
    80008d54:	fffff097          	auipc	ra,0xfffff
    80008d58:	008080e7          	jalr	8(ra) # 80007d5c <panic>

0000000080008d5c <push_on>:
    80008d5c:	fe010113          	addi	sp,sp,-32
    80008d60:	00813823          	sd	s0,16(sp)
    80008d64:	00113c23          	sd	ra,24(sp)
    80008d68:	00913423          	sd	s1,8(sp)
    80008d6c:	02010413          	addi	s0,sp,32
    80008d70:	100024f3          	csrr	s1,sstatus
    80008d74:	100027f3          	csrr	a5,sstatus
    80008d78:	0027e793          	ori	a5,a5,2
    80008d7c:	10079073          	csrw	sstatus,a5
    80008d80:	ffffe097          	auipc	ra,0xffffe
    80008d84:	624080e7          	jalr	1572(ra) # 800073a4 <mycpu>
    80008d88:	07852783          	lw	a5,120(a0)
    80008d8c:	02078663          	beqz	a5,80008db8 <push_on+0x5c>
    80008d90:	ffffe097          	auipc	ra,0xffffe
    80008d94:	614080e7          	jalr	1556(ra) # 800073a4 <mycpu>
    80008d98:	07852783          	lw	a5,120(a0)
    80008d9c:	01813083          	ld	ra,24(sp)
    80008da0:	01013403          	ld	s0,16(sp)
    80008da4:	0017879b          	addiw	a5,a5,1
    80008da8:	06f52c23          	sw	a5,120(a0)
    80008dac:	00813483          	ld	s1,8(sp)
    80008db0:	02010113          	addi	sp,sp,32
    80008db4:	00008067          	ret
    80008db8:	0014d493          	srli	s1,s1,0x1
    80008dbc:	ffffe097          	auipc	ra,0xffffe
    80008dc0:	5e8080e7          	jalr	1512(ra) # 800073a4 <mycpu>
    80008dc4:	0014f493          	andi	s1,s1,1
    80008dc8:	06952e23          	sw	s1,124(a0)
    80008dcc:	fc5ff06f          	j	80008d90 <push_on+0x34>

0000000080008dd0 <pop_on>:
    80008dd0:	ff010113          	addi	sp,sp,-16
    80008dd4:	00813023          	sd	s0,0(sp)
    80008dd8:	00113423          	sd	ra,8(sp)
    80008ddc:	01010413          	addi	s0,sp,16
    80008de0:	ffffe097          	auipc	ra,0xffffe
    80008de4:	5c4080e7          	jalr	1476(ra) # 800073a4 <mycpu>
    80008de8:	100027f3          	csrr	a5,sstatus
    80008dec:	0027f793          	andi	a5,a5,2
    80008df0:	04078463          	beqz	a5,80008e38 <pop_on+0x68>
    80008df4:	07852783          	lw	a5,120(a0)
    80008df8:	02f05863          	blez	a5,80008e28 <pop_on+0x58>
    80008dfc:	fff7879b          	addiw	a5,a5,-1
    80008e00:	06f52c23          	sw	a5,120(a0)
    80008e04:	07853783          	ld	a5,120(a0)
    80008e08:	00079863          	bnez	a5,80008e18 <pop_on+0x48>
    80008e0c:	100027f3          	csrr	a5,sstatus
    80008e10:	ffd7f793          	andi	a5,a5,-3
    80008e14:	10079073          	csrw	sstatus,a5
    80008e18:	00813083          	ld	ra,8(sp)
    80008e1c:	00013403          	ld	s0,0(sp)
    80008e20:	01010113          	addi	sp,sp,16
    80008e24:	00008067          	ret
    80008e28:	00002517          	auipc	a0,0x2
    80008e2c:	98850513          	addi	a0,a0,-1656 # 8000a7b0 <digits+0x70>
    80008e30:	fffff097          	auipc	ra,0xfffff
    80008e34:	f2c080e7          	jalr	-212(ra) # 80007d5c <panic>
    80008e38:	00002517          	auipc	a0,0x2
    80008e3c:	95850513          	addi	a0,a0,-1704 # 8000a790 <digits+0x50>
    80008e40:	fffff097          	auipc	ra,0xfffff
    80008e44:	f1c080e7          	jalr	-228(ra) # 80007d5c <panic>

0000000080008e48 <__memset>:
    80008e48:	ff010113          	addi	sp,sp,-16
    80008e4c:	00813423          	sd	s0,8(sp)
    80008e50:	01010413          	addi	s0,sp,16
    80008e54:	1a060e63          	beqz	a2,80009010 <__memset+0x1c8>
    80008e58:	40a007b3          	neg	a5,a0
    80008e5c:	0077f793          	andi	a5,a5,7
    80008e60:	00778693          	addi	a3,a5,7
    80008e64:	00b00813          	li	a6,11
    80008e68:	0ff5f593          	andi	a1,a1,255
    80008e6c:	fff6071b          	addiw	a4,a2,-1
    80008e70:	1b06e663          	bltu	a3,a6,8000901c <__memset+0x1d4>
    80008e74:	1cd76463          	bltu	a4,a3,8000903c <__memset+0x1f4>
    80008e78:	1a078e63          	beqz	a5,80009034 <__memset+0x1ec>
    80008e7c:	00b50023          	sb	a1,0(a0)
    80008e80:	00100713          	li	a4,1
    80008e84:	1ae78463          	beq	a5,a4,8000902c <__memset+0x1e4>
    80008e88:	00b500a3          	sb	a1,1(a0)
    80008e8c:	00200713          	li	a4,2
    80008e90:	1ae78a63          	beq	a5,a4,80009044 <__memset+0x1fc>
    80008e94:	00b50123          	sb	a1,2(a0)
    80008e98:	00300713          	li	a4,3
    80008e9c:	18e78463          	beq	a5,a4,80009024 <__memset+0x1dc>
    80008ea0:	00b501a3          	sb	a1,3(a0)
    80008ea4:	00400713          	li	a4,4
    80008ea8:	1ae78263          	beq	a5,a4,8000904c <__memset+0x204>
    80008eac:	00b50223          	sb	a1,4(a0)
    80008eb0:	00500713          	li	a4,5
    80008eb4:	1ae78063          	beq	a5,a4,80009054 <__memset+0x20c>
    80008eb8:	00b502a3          	sb	a1,5(a0)
    80008ebc:	00700713          	li	a4,7
    80008ec0:	18e79e63          	bne	a5,a4,8000905c <__memset+0x214>
    80008ec4:	00b50323          	sb	a1,6(a0)
    80008ec8:	00700e93          	li	t4,7
    80008ecc:	00859713          	slli	a4,a1,0x8
    80008ed0:	00e5e733          	or	a4,a1,a4
    80008ed4:	01059e13          	slli	t3,a1,0x10
    80008ed8:	01c76e33          	or	t3,a4,t3
    80008edc:	01859313          	slli	t1,a1,0x18
    80008ee0:	006e6333          	or	t1,t3,t1
    80008ee4:	02059893          	slli	a7,a1,0x20
    80008ee8:	40f60e3b          	subw	t3,a2,a5
    80008eec:	011368b3          	or	a7,t1,a7
    80008ef0:	02859813          	slli	a6,a1,0x28
    80008ef4:	0108e833          	or	a6,a7,a6
    80008ef8:	03059693          	slli	a3,a1,0x30
    80008efc:	003e589b          	srliw	a7,t3,0x3
    80008f00:	00d866b3          	or	a3,a6,a3
    80008f04:	03859713          	slli	a4,a1,0x38
    80008f08:	00389813          	slli	a6,a7,0x3
    80008f0c:	00f507b3          	add	a5,a0,a5
    80008f10:	00e6e733          	or	a4,a3,a4
    80008f14:	000e089b          	sext.w	a7,t3
    80008f18:	00f806b3          	add	a3,a6,a5
    80008f1c:	00e7b023          	sd	a4,0(a5)
    80008f20:	00878793          	addi	a5,a5,8
    80008f24:	fed79ce3          	bne	a5,a3,80008f1c <__memset+0xd4>
    80008f28:	ff8e7793          	andi	a5,t3,-8
    80008f2c:	0007871b          	sext.w	a4,a5
    80008f30:	01d787bb          	addw	a5,a5,t4
    80008f34:	0ce88e63          	beq	a7,a4,80009010 <__memset+0x1c8>
    80008f38:	00f50733          	add	a4,a0,a5
    80008f3c:	00b70023          	sb	a1,0(a4)
    80008f40:	0017871b          	addiw	a4,a5,1
    80008f44:	0cc77663          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008f48:	00e50733          	add	a4,a0,a4
    80008f4c:	00b70023          	sb	a1,0(a4)
    80008f50:	0027871b          	addiw	a4,a5,2
    80008f54:	0ac77e63          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008f58:	00e50733          	add	a4,a0,a4
    80008f5c:	00b70023          	sb	a1,0(a4)
    80008f60:	0037871b          	addiw	a4,a5,3
    80008f64:	0ac77663          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008f68:	00e50733          	add	a4,a0,a4
    80008f6c:	00b70023          	sb	a1,0(a4)
    80008f70:	0047871b          	addiw	a4,a5,4
    80008f74:	08c77e63          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008f78:	00e50733          	add	a4,a0,a4
    80008f7c:	00b70023          	sb	a1,0(a4)
    80008f80:	0057871b          	addiw	a4,a5,5
    80008f84:	08c77663          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008f88:	00e50733          	add	a4,a0,a4
    80008f8c:	00b70023          	sb	a1,0(a4)
    80008f90:	0067871b          	addiw	a4,a5,6
    80008f94:	06c77e63          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008f98:	00e50733          	add	a4,a0,a4
    80008f9c:	00b70023          	sb	a1,0(a4)
    80008fa0:	0077871b          	addiw	a4,a5,7
    80008fa4:	06c77663          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008fa8:	00e50733          	add	a4,a0,a4
    80008fac:	00b70023          	sb	a1,0(a4)
    80008fb0:	0087871b          	addiw	a4,a5,8
    80008fb4:	04c77e63          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008fb8:	00e50733          	add	a4,a0,a4
    80008fbc:	00b70023          	sb	a1,0(a4)
    80008fc0:	0097871b          	addiw	a4,a5,9
    80008fc4:	04c77663          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008fc8:	00e50733          	add	a4,a0,a4
    80008fcc:	00b70023          	sb	a1,0(a4)
    80008fd0:	00a7871b          	addiw	a4,a5,10
    80008fd4:	02c77e63          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008fd8:	00e50733          	add	a4,a0,a4
    80008fdc:	00b70023          	sb	a1,0(a4)
    80008fe0:	00b7871b          	addiw	a4,a5,11
    80008fe4:	02c77663          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008fe8:	00e50733          	add	a4,a0,a4
    80008fec:	00b70023          	sb	a1,0(a4)
    80008ff0:	00c7871b          	addiw	a4,a5,12
    80008ff4:	00c77e63          	bgeu	a4,a2,80009010 <__memset+0x1c8>
    80008ff8:	00e50733          	add	a4,a0,a4
    80008ffc:	00b70023          	sb	a1,0(a4)
    80009000:	00d7879b          	addiw	a5,a5,13
    80009004:	00c7f663          	bgeu	a5,a2,80009010 <__memset+0x1c8>
    80009008:	00f507b3          	add	a5,a0,a5
    8000900c:	00b78023          	sb	a1,0(a5)
    80009010:	00813403          	ld	s0,8(sp)
    80009014:	01010113          	addi	sp,sp,16
    80009018:	00008067          	ret
    8000901c:	00b00693          	li	a3,11
    80009020:	e55ff06f          	j	80008e74 <__memset+0x2c>
    80009024:	00300e93          	li	t4,3
    80009028:	ea5ff06f          	j	80008ecc <__memset+0x84>
    8000902c:	00100e93          	li	t4,1
    80009030:	e9dff06f          	j	80008ecc <__memset+0x84>
    80009034:	00000e93          	li	t4,0
    80009038:	e95ff06f          	j	80008ecc <__memset+0x84>
    8000903c:	00000793          	li	a5,0
    80009040:	ef9ff06f          	j	80008f38 <__memset+0xf0>
    80009044:	00200e93          	li	t4,2
    80009048:	e85ff06f          	j	80008ecc <__memset+0x84>
    8000904c:	00400e93          	li	t4,4
    80009050:	e7dff06f          	j	80008ecc <__memset+0x84>
    80009054:	00500e93          	li	t4,5
    80009058:	e75ff06f          	j	80008ecc <__memset+0x84>
    8000905c:	00600e93          	li	t4,6
    80009060:	e6dff06f          	j	80008ecc <__memset+0x84>

0000000080009064 <__memmove>:
    80009064:	ff010113          	addi	sp,sp,-16
    80009068:	00813423          	sd	s0,8(sp)
    8000906c:	01010413          	addi	s0,sp,16
    80009070:	0e060863          	beqz	a2,80009160 <__memmove+0xfc>
    80009074:	fff6069b          	addiw	a3,a2,-1
    80009078:	0006881b          	sext.w	a6,a3
    8000907c:	0ea5e863          	bltu	a1,a0,8000916c <__memmove+0x108>
    80009080:	00758713          	addi	a4,a1,7
    80009084:	00a5e7b3          	or	a5,a1,a0
    80009088:	40a70733          	sub	a4,a4,a0
    8000908c:	0077f793          	andi	a5,a5,7
    80009090:	00f73713          	sltiu	a4,a4,15
    80009094:	00174713          	xori	a4,a4,1
    80009098:	0017b793          	seqz	a5,a5
    8000909c:	00e7f7b3          	and	a5,a5,a4
    800090a0:	10078863          	beqz	a5,800091b0 <__memmove+0x14c>
    800090a4:	00900793          	li	a5,9
    800090a8:	1107f463          	bgeu	a5,a6,800091b0 <__memmove+0x14c>
    800090ac:	0036581b          	srliw	a6,a2,0x3
    800090b0:	fff8081b          	addiw	a6,a6,-1
    800090b4:	02081813          	slli	a6,a6,0x20
    800090b8:	01d85893          	srli	a7,a6,0x1d
    800090bc:	00858813          	addi	a6,a1,8
    800090c0:	00058793          	mv	a5,a1
    800090c4:	00050713          	mv	a4,a0
    800090c8:	01088833          	add	a6,a7,a6
    800090cc:	0007b883          	ld	a7,0(a5)
    800090d0:	00878793          	addi	a5,a5,8
    800090d4:	00870713          	addi	a4,a4,8
    800090d8:	ff173c23          	sd	a7,-8(a4)
    800090dc:	ff0798e3          	bne	a5,a6,800090cc <__memmove+0x68>
    800090e0:	ff867713          	andi	a4,a2,-8
    800090e4:	02071793          	slli	a5,a4,0x20
    800090e8:	0207d793          	srli	a5,a5,0x20
    800090ec:	00f585b3          	add	a1,a1,a5
    800090f0:	40e686bb          	subw	a3,a3,a4
    800090f4:	00f507b3          	add	a5,a0,a5
    800090f8:	06e60463          	beq	a2,a4,80009160 <__memmove+0xfc>
    800090fc:	0005c703          	lbu	a4,0(a1)
    80009100:	00e78023          	sb	a4,0(a5)
    80009104:	04068e63          	beqz	a3,80009160 <__memmove+0xfc>
    80009108:	0015c603          	lbu	a2,1(a1)
    8000910c:	00100713          	li	a4,1
    80009110:	00c780a3          	sb	a2,1(a5)
    80009114:	04e68663          	beq	a3,a4,80009160 <__memmove+0xfc>
    80009118:	0025c603          	lbu	a2,2(a1)
    8000911c:	00200713          	li	a4,2
    80009120:	00c78123          	sb	a2,2(a5)
    80009124:	02e68e63          	beq	a3,a4,80009160 <__memmove+0xfc>
    80009128:	0035c603          	lbu	a2,3(a1)
    8000912c:	00300713          	li	a4,3
    80009130:	00c781a3          	sb	a2,3(a5)
    80009134:	02e68663          	beq	a3,a4,80009160 <__memmove+0xfc>
    80009138:	0045c603          	lbu	a2,4(a1)
    8000913c:	00400713          	li	a4,4
    80009140:	00c78223          	sb	a2,4(a5)
    80009144:	00e68e63          	beq	a3,a4,80009160 <__memmove+0xfc>
    80009148:	0055c603          	lbu	a2,5(a1)
    8000914c:	00500713          	li	a4,5
    80009150:	00c782a3          	sb	a2,5(a5)
    80009154:	00e68663          	beq	a3,a4,80009160 <__memmove+0xfc>
    80009158:	0065c703          	lbu	a4,6(a1)
    8000915c:	00e78323          	sb	a4,6(a5)
    80009160:	00813403          	ld	s0,8(sp)
    80009164:	01010113          	addi	sp,sp,16
    80009168:	00008067          	ret
    8000916c:	02061713          	slli	a4,a2,0x20
    80009170:	02075713          	srli	a4,a4,0x20
    80009174:	00e587b3          	add	a5,a1,a4
    80009178:	f0f574e3          	bgeu	a0,a5,80009080 <__memmove+0x1c>
    8000917c:	02069613          	slli	a2,a3,0x20
    80009180:	02065613          	srli	a2,a2,0x20
    80009184:	fff64613          	not	a2,a2
    80009188:	00e50733          	add	a4,a0,a4
    8000918c:	00c78633          	add	a2,a5,a2
    80009190:	fff7c683          	lbu	a3,-1(a5)
    80009194:	fff78793          	addi	a5,a5,-1
    80009198:	fff70713          	addi	a4,a4,-1
    8000919c:	00d70023          	sb	a3,0(a4)
    800091a0:	fec798e3          	bne	a5,a2,80009190 <__memmove+0x12c>
    800091a4:	00813403          	ld	s0,8(sp)
    800091a8:	01010113          	addi	sp,sp,16
    800091ac:	00008067          	ret
    800091b0:	02069713          	slli	a4,a3,0x20
    800091b4:	02075713          	srli	a4,a4,0x20
    800091b8:	00170713          	addi	a4,a4,1
    800091bc:	00e50733          	add	a4,a0,a4
    800091c0:	00050793          	mv	a5,a0
    800091c4:	0005c683          	lbu	a3,0(a1)
    800091c8:	00178793          	addi	a5,a5,1
    800091cc:	00158593          	addi	a1,a1,1
    800091d0:	fed78fa3          	sb	a3,-1(a5)
    800091d4:	fee798e3          	bne	a5,a4,800091c4 <__memmove+0x160>
    800091d8:	f89ff06f          	j	80009160 <__memmove+0xfc>
	...
