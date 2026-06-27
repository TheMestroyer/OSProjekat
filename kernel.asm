
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	c8813103          	ld	sp,-888(sp) # 8000cc88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	574070ef          	jal	ra,80007590 <start>

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
    80001248:	031020ef          	jal	ra,80003a78 <HandleInterupt>

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
    80001308:	4c8080e7          	jalr	1224(ra) # 800017cc <putc>
    8000130c:	03e00513          	li	a0,62
    80001310:	00000097          	auipc	ra,0x0
    80001314:	4bc080e7          	jalr	1212(ra) # 800017cc <putc>
    80001318:	00c0006f          	j	80001324 <echoBody+0x34>
    while (1) {
        char c = getc();
        if (c != '\r') putc(c);
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	4b0080e7          	jalr	1200(ra) # 800017cc <putc>
        char c = getc();
    80001324:	00000097          	auipc	ra,0x0
    80001328:	484080e7          	jalr	1156(ra) # 800017a8 <getc>
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
    80001360:	0000c917          	auipc	s2,0xc
    80001364:	95890913          	addi	s2,s2,-1704 # 8000ccb8 <mutex>
    80001368:	00093503          	ld	a0,0(s2)
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	3b4080e7          	jalr	948(ra) # 80001720 <sem_wait>
        putc('['); putc(id); putc(']');
    80001374:	05b00513          	li	a0,91
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	454080e7          	jalr	1108(ra) # 800017cc <putc>
    80001380:	00098513          	mv	a0,s3
    80001384:	00000097          	auipc	ra,0x0
    80001388:	448080e7          	jalr	1096(ra) # 800017cc <putc>
    8000138c:	05d00513          	li	a0,93
    80001390:	00000097          	auipc	ra,0x0
    80001394:	43c080e7          	jalr	1084(ra) # 800017cc <putc>
        sem_signal(mutex);
    80001398:	00093503          	ld	a0,0(s2)
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	3ac080e7          	jalr	940(ra) # 80001748 <sem_signal>
        time_sleep(2);
    800013a4:	00200513          	li	a0,2
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	2f0080e7          	jalr	752(ra) # 80001698 <time_sleep>
    for (int i = 0; i < 3; i++) {
    800013b0:	0014849b          	addiw	s1,s1,1
    800013b4:	00200793          	li	a5,2
    800013b8:	fa97d4e3          	bge	a5,s1,80001360 <worker+0x28>
    sem_signal(done);
    800013bc:	0000c517          	auipc	a0,0xc
    800013c0:	8f453503          	ld	a0,-1804(a0) # 8000ccb0 <done>
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	384080e7          	jalr	900(ra) # 80001748 <sem_signal>
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
    80001430:	3a0080e7          	jalr	928(ra) # 800017cc <putc>
    80001434:	0014c503          	lbu	a0,1(s1)
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	394080e7          	jalr	916(ra) # 800017cc <putc>
    80001440:	0024c503          	lbu	a0,2(s1)
    80001444:	00000097          	auipc	ra,0x0
    80001448:	388080e7          	jalr	904(ra) # 800017cc <putc>
    8000144c:	0034c503          	lbu	a0,3(s1)
    80001450:	00000097          	auipc	ra,0x0
    80001454:	37c080e7          	jalr	892(ra) # 800017cc <putc>
    mem_free(buf);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	124080e7          	jalr	292(ra) # 80001580 <mem_free>

    sem_open(&mutex, 1);
    80001464:	00100593          	li	a1,1
    80001468:	0000c517          	auipc	a0,0xc
    8000146c:	85050513          	addi	a0,a0,-1968 # 8000ccb8 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	250080e7          	jalr	592(ra) # 800016c0 <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000c517          	auipc	a0,0xc
    80001480:	83450513          	addi	a0,a0,-1996 # 8000ccb0 <done>
    80001484:	00000097          	auipc	ra,0x0
    80001488:	23c080e7          	jalr	572(ra) # 800016c0 <sem_open>
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
    800014d8:	7dc48493          	addi	s1,s1,2012 # 8000ccb0 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	28c080e7          	jalr	652(ra) # 80001770 <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000b517          	auipc	a0,0xb
    800014f0:	7cc53503          	ld	a0,1996(a0) # 8000ccb8 <mutex>
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	204080e7          	jalr	516(ra) # 800016f8 <sem_close>
    sem_close(done);
    800014fc:	0004b503          	ld	a0,0(s1)
    80001500:	00000097          	auipc	ra,0x0
    80001504:	1f8080e7          	jalr	504(ra) # 800016f8 <sem_close>
    putc('\n'); putc('O'); putc('K'); putc('\n');
    80001508:	00a00513          	li	a0,10
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	2c0080e7          	jalr	704(ra) # 800017cc <putc>
    80001514:	04f00513          	li	a0,79
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	2b4080e7          	jalr	692(ra) # 800017cc <putc>
    80001520:	04b00513          	li	a0,75
    80001524:	00000097          	auipc	ra,0x0
    80001528:	2a8080e7          	jalr	680(ra) # 800017cc <putc>
    8000152c:	00a00513          	li	a0,10
    80001530:	00000097          	auipc	ra,0x0
    80001534:	29c080e7          	jalr	668(ra) # 800017cc <putc>

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

000000008000162c <join>:

void join(thread_t* thread) {
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    80001638:	00050793          	mv	a5,a0
    register size_t a0 asm("a0") = 0x14;
    8000163c:	01400513          	li	a0,20
    register size_t a1 asm("a1") = (size_t)*thread;
    80001640:	0007b583          	ld	a1,0(a5)
    __asm__ volatile("ecall" : "+r"(a0):"r"(a1));
    80001644:	00000073          	ecall
}
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <thread_exit>:

int thread_exit(void) {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x12;
    80001660:	01200513          	li	a0,18
    __asm__ volatile("ecall" : "+r"(a0));
    80001664:	00000073          	ecall
    return (int)a0;
}
    80001668:	0005051b          	sext.w	a0,a0
    8000166c:	00813403          	ld	s0,8(sp)
    80001670:	01010113          	addi	sp,sp,16
    80001674:	00008067          	ret

0000000080001678 <thread_dispatch>:

void thread_dispatch(void) {
    80001678:	ff010113          	addi	sp,sp,-16
    8000167c:	00813423          	sd	s0,8(sp)
    80001680:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x13;
    80001684:	01300513          	li	a0,19
    __asm__ volatile("ecall" : "+r"(a0));
    80001688:	00000073          	ecall
}
    8000168c:	00813403          	ld	s0,8(sp)
    80001690:	01010113          	addi	sp,sp,16
    80001694:	00008067          	ret

0000000080001698 <time_sleep>:

int time_sleep(time_t dur) {
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00813423          	sd	s0,8(sp)
    800016a0:	01010413          	addi	s0,sp,16
    800016a4:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x31;
    800016a8:	03100513          	li	a0,49
    register size_t a1 asm("a1") = (size_t)dur;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800016ac:	00000073          	ecall
    return (int)a0;
}
    800016b0:	0005051b          	sext.w	a0,a0
    800016b4:	00813403          	ld	s0,8(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret

00000000800016c0 <sem_open>:

int sem_open(sem_t* handle, unsigned init) {
    800016c0:	ff010113          	addi	sp,sp,-16
    800016c4:	00813423          	sd	s0,8(sp)
    800016c8:	01010413          	addi	s0,sp,16
    800016cc:	00050793          	mv	a5,a0
    800016d0:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x21;
    800016d4:	02100513          	li	a0,33
    register size_t a1 asm("a1") = (size_t)handle;
    800016d8:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)init;
    800016dc:	02061613          	slli	a2,a2,0x20
    800016e0:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    800016e4:	00000073          	ecall
    return (int)a0;
}
    800016e8:	0005051b          	sext.w	a0,a0
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <sem_close>:

int sem_close(sem_t handle) {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    80001704:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x22;
    80001708:	02200513          	li	a0,34
    register size_t a1 asm("a1") = (size_t)handle;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    8000170c:	00000073          	ecall
    return (int)a0;
}
    80001710:	0005051b          	sext.w	a0,a0
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <sem_wait>:

int sem_wait(sem_t id) {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00813423          	sd	s0,8(sp)
    80001728:	01010413          	addi	s0,sp,16
    8000172c:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x23;
    80001730:	02300513          	li	a0,35
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001734:	00000073          	ecall
    return (int)a0;
}
    80001738:	0005051b          	sext.w	a0,a0
    8000173c:	00813403          	ld	s0,8(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret

0000000080001748 <sem_signal>:

int sem_signal(sem_t id) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    80001754:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x24;
    80001758:	02400513          	li	a0,36
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    8000175c:	00000073          	ecall
    return (int)a0;
}
    80001760:	0005051b          	sext.w	a0,a0
    80001764:	00813403          	ld	s0,8(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret

0000000080001770 <sem_wait_n>:

int sem_wait_n(sem_t id, unsigned n) {
    80001770:	ff010113          	addi	sp,sp,-16
    80001774:	00813423          	sd	s0,8(sp)
    80001778:	01010413          	addi	s0,sp,16
    8000177c:	00050793          	mv	a5,a0
    80001780:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x25;
    80001784:	02500513          	li	a0,37
    register size_t a1 asm("a1") = (size_t)id;
    80001788:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    8000178c:	02061613          	slli	a2,a2,0x20
    80001790:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001794:	00000073          	ecall
    return (int)a0;
}
    80001798:	0005051b          	sext.w	a0,a0
    8000179c:	00813403          	ld	s0,8(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret

00000000800017a8 <getc>:

char getc(void) {
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00813423          	sd	s0,8(sp)
    800017b0:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x41;
    800017b4:	04100513          	li	a0,65
    __asm__ volatile("ecall" : "+r"(a0));
    800017b8:	00000073          	ecall
    return (char)a0;
}
    800017bc:	0ff57513          	andi	a0,a0,255
    800017c0:	00813403          	ld	s0,8(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret

00000000800017cc <putc>:

void putc(char c) {
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00813423          	sd	s0,8(sp)
    800017d4:	01010413          	addi	s0,sp,16
    800017d8:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x42;
    800017dc:	04200513          	li	a0,66
    register size_t a1 asm("a1") = (size_t)(unsigned char)c;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800017e0:	00000073          	ecall
}
    800017e4:	00813403          	ld	s0,8(sp)
    800017e8:	01010113          	addi	sp,sp,16
    800017ec:	00008067          	ret

00000000800017f0 <sys_halt>:

void sys_halt(void) {
    800017f0:	ff010113          	addi	sp,sp,-16
    800017f4:	00813423          	sd	s0,8(sp)
    800017f8:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0xFF;
    800017fc:	0ff00513          	li	a0,255
    __asm__ volatile("ecall" : "+r"(a0));
    80001800:	00000073          	ecall
}
    80001804:	00813403          	ld	s0,8(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret

0000000080001810 <sem_signal_n>:

int sem_signal_n(sem_t id, unsigned n) {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00813423          	sd	s0,8(sp)
    80001818:	01010413          	addi	s0,sp,16
    8000181c:	00050793          	mv	a5,a0
    80001820:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x26;
    80001824:	02600513          	li	a0,38
    register size_t a1 asm("a1") = (size_t)id;
    80001828:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    8000182c:	02061613          	slli	a2,a2,0x20
    80001830:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001834:	00000073          	ecall
    return (int)a0;
    80001838:	0005051b          	sext.w	a0,a0
    8000183c:	00813403          	ld	s0,8(sp)
    80001840:	01010113          	addi	sp,sp,16
    80001844:	00008067          	ret

0000000080001848 <userMainWrapper>:
#include "syscall_c.h"
#include "../lib/console.h"

void userMainK();

static void userMainWrapper() {
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00113423          	sd	ra,8(sp)
    80001850:	00813023          	sd	s0,0(sp)
    80001854:	01010413          	addi	s0,sp,16
    userMainK();
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	2c8080e7          	jalr	712(ra) # 80002b20 <userMainK>
    sys_halt();
    80001860:	00000097          	auipc	ra,0x0
    80001864:	f90080e7          	jalr	-112(ra) # 800017f0 <sys_halt>
    while (1) {}
    80001868:	0000006f          	j	80001868 <userMainWrapper+0x20>

000000008000186c <drop_to_user>:
}

void drop_to_user(void (*fn)()) {
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00813423          	sd	s0,8(sp)
    80001874:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001878:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000187c:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    80001880:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    80001884:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001888:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    8000188c:	10200073          	sret
}
    80001890:	00813403          	ld	s0,8(sp)
    80001894:	01010113          	addi	sp,sp,16
    80001898:	00008067          	ret

000000008000189c <main>:

void interupt();
int main() {
    8000189c:	ff010113          	addi	sp,sp,-16
    800018a0:	00113423          	sd	ra,8(sp)
    800018a4:	00813023          	sd	s0,0(sp)
    800018a8:	01010413          	addi	s0,sp,16
    start_main_thread();
    800018ac:	00002097          	auipc	ra,0x2
    800018b0:	5e8080e7          	jalr	1512(ra) # 80003e94 <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    800018b4:	00000797          	auipc	a5,0x0
    800018b8:	90c78793          	addi	a5,a5,-1780 # 800011c0 <interupt>
    800018bc:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0" :: "r"((uint64)(0x2 | 0x200)));
    800018c0:	20200793          	li	a5,514
    800018c4:	10479073          	csrw	sie,a5
    drop_to_user(userMainWrapper);
    800018c8:	00000517          	auipc	a0,0x0
    800018cc:	f8050513          	addi	a0,a0,-128 # 80001848 <userMainWrapper>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	f9c080e7          	jalr	-100(ra) # 8000186c <drop_to_user>
    return 0;
    800018d8:	00000513          	li	a0,0
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_ZN10KSemaphore4initEj>:
//

#include "Semaphore.hpp"
#include "Scheduler.hpp"

void KSemaphore::init(unsigned initialValue) {
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00813423          	sd	s0,8(sp)
    800018f4:	01010413          	addi	s0,sp,16
    blockedHead = nullptr;
    800018f8:	00053423          	sd	zero,8(a0)
    blockedTail = nullptr;
    800018fc:	00053823          	sd	zero,16(a0)
    value = (int)initialValue;
    80001900:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001904:	00050223          	sb	zero,4(a0)
}
    80001908:	00813403          	ld	s0,8(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret

0000000080001914 <_ZN10KSemaphore7enqueueEP7KThread>:

void KSemaphore::enqueue(KThread* thread) {
    80001914:	fe010113          	addi	sp,sp,-32
    80001918:	00113c23          	sd	ra,24(sp)
    8000191c:	00813823          	sd	s0,16(sp)
    80001920:	00913423          	sd	s1,8(sp)
    80001924:	01213023          	sd	s2,0(sp)
    80001928:	02010413          	addi	s0,sp,32
    8000192c:	00050913          	mv	s2,a0
    80001930:	00058493          	mv	s1,a1
    thread->setNextInQueue(nullptr);
    80001934:	00000593          	li	a1,0
    80001938:	00048513          	mv	a0,s1
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	4a4080e7          	jalr	1188(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    80001944:	01093583          	ld	a1,16(s2)
    80001948:	02058e63          	beqz	a1,80001984 <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        thread->setPrevInQueue(blockedTail);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00000097          	auipc	ra,0x0
    80001954:	4ac080e7          	jalr	1196(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    80001958:	00048593          	mv	a1,s1
    8000195c:	01093503          	ld	a0,16(s2)
    80001960:	00000097          	auipc	ra,0x0
    80001964:	480080e7          	jalr	1152(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        blockedHead = thread;
    }
    blockedTail = thread;
    80001968:	00993823          	sd	s1,16(s2)
}
    8000196c:	01813083          	ld	ra,24(sp)
    80001970:	01013403          	ld	s0,16(sp)
    80001974:	00813483          	ld	s1,8(sp)
    80001978:	00013903          	ld	s2,0(sp)
    8000197c:	02010113          	addi	sp,sp,32
    80001980:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80001984:	00000593          	li	a1,0
    80001988:	00048513          	mv	a0,s1
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	470080e7          	jalr	1136(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
        blockedHead = thread;
    80001994:	00993423          	sd	s1,8(s2)
    80001998:	fd1ff06f          	j	80001968 <_ZN10KSemaphore7enqueueEP7KThread+0x54>

000000008000199c <_ZN10KSemaphore7dequeueEv>:

KThread* KSemaphore::dequeue() {
    8000199c:	fe010113          	addi	sp,sp,-32
    800019a0:	00113c23          	sd	ra,24(sp)
    800019a4:	00813823          	sd	s0,16(sp)
    800019a8:	00913423          	sd	s1,8(sp)
    800019ac:	01213023          	sd	s2,0(sp)
    800019b0:	02010413          	addi	s0,sp,32
    if (blockedHead == nullptr) return nullptr;
    800019b4:	00853483          	ld	s1,8(a0)
    800019b8:	04048463          	beqz	s1,80001a00 <_ZN10KSemaphore7dequeueEv+0x64>
    800019bc:	00050913          	mv	s2,a0
    KThread* thread = blockedHead;
    blockedHead = thread->getNextInQueue();
    800019c0:	00048513          	mv	a0,s1
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	3e4080e7          	jalr	996(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    800019cc:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    800019d0:	04050663          	beqz	a0,80001a1c <_ZN10KSemaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    800019d4:	00000593          	li	a1,0
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	424080e7          	jalr	1060(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    800019e0:	00000593          	li	a1,0
    800019e4:	00048513          	mv	a0,s1
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	3f8080e7          	jalr	1016(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800019f0:	00000593          	li	a1,0
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	404080e7          	jalr	1028(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
    return thread;
}
    80001a00:	00048513          	mv	a0,s1
    80001a04:	01813083          	ld	ra,24(sp)
    80001a08:	01013403          	ld	s0,16(sp)
    80001a0c:	00813483          	ld	s1,8(sp)
    80001a10:	00013903          	ld	s2,0(sp)
    80001a14:	02010113          	addi	sp,sp,32
    80001a18:	00008067          	ret
    else blockedTail = nullptr;
    80001a1c:	00093823          	sd	zero,16(s2)
    80001a20:	fc1ff06f          	j	800019e0 <_ZN10KSemaphore7dequeueEv+0x44>

0000000080001a24 <_ZN10KSemaphore4waitEP7KThread>:

int KSemaphore::wait(KThread* caller) {
    if (closed) { return -1; }
    80001a24:	00454783          	lbu	a5,4(a0)
    80001a28:	04079a63          	bnez	a5,80001a7c <_ZN10KSemaphore4waitEP7KThread+0x58>
    if (value > 0) { value--; return 0; }
    80001a2c:	00052783          	lw	a5,0(a0)
    80001a30:	00f05a63          	blez	a5,80001a44 <_ZN10KSemaphore4waitEP7KThread+0x20>
    80001a34:	fff7879b          	addiw	a5,a5,-1
    80001a38:	00f52023          	sw	a5,0(a0)
    80001a3c:	00000513          	li	a0,0
    80001a40:	00008067          	ret
int KSemaphore::wait(KThread* caller) {
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00113423          	sd	ra,8(sp)
    80001a4c:	00813023          	sd	s0,0(sp)
    80001a50:	01010413          	addi	s0,sp,16
    caller->sleepDelta = 1;
    80001a54:	00100793          	li	a5,1
    80001a58:	04f5b023          	sd	a5,64(a1)
    caller->threadContext.x[10] = 0;
    80001a5c:	0a05bc23          	sd	zero,184(a1)
    enqueue(caller);
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	eb4080e7          	jalr	-332(ra) # 80001914 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001a68:	00100513          	li	a0,1
}
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret
    if (closed) { return -1; }
    80001a7c:	fff00513          	li	a0,-1
}
    80001a80:	00008067          	ret

0000000080001a84 <_ZN10KSemaphore6signalEv>:

int KSemaphore::signal() {
    value+=1;
    80001a84:	00052783          	lw	a5,0(a0)
    80001a88:	0017879b          	addiw	a5,a5,1
    80001a8c:	0007871b          	sext.w	a4,a5
    80001a90:	00f52023          	sw	a5,0(a0)
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a94:	00853783          	ld	a5,8(a0)
    80001a98:	06078063          	beqz	a5,80001af8 <_ZN10KSemaphore6signalEv+0x74>
int KSemaphore::signal() {
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	02010413          	addi	s0,sp,32
    80001ab0:	00050493          	mv	s1,a0
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001ab4:	0407a783          	lw	a5,64(a5)
    80001ab8:	00f75e63          	bge	a4,a5,80001ad4 <_ZN10KSemaphore6signalEv+0x50>
        KThread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}
    80001abc:	00000513          	li	a0,0
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	02010113          	addi	sp,sp,32
    80001ad0:	00008067          	ret
        KThread* thread = dequeue();
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	ec8080e7          	jalr	-312(ra) # 8000199c <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001adc:	04053703          	ld	a4,64(a0)
    80001ae0:	0004a783          	lw	a5,0(s1)
    80001ae4:	40e787bb          	subw	a5,a5,a4
    80001ae8:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	5c8080e7          	jalr	1480(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
    80001af4:	fc9ff06f          	j	80001abc <_ZN10KSemaphore6signalEv+0x38>
}
    80001af8:	00000513          	li	a0,0
    80001afc:	00008067          	ret

0000000080001b00 <_ZN10KSemaphore5waitNEP7KThreadj>:

int KSemaphore::waitN(KThread* caller, unsigned n) {
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001b00:	00454783          	lbu	a5,4(a0)
    80001b04:	02079063          	bnez	a5,80001b24 <_ZN10KSemaphore5waitNEP7KThreadj+0x24>
    if (value >= (int)n) { value -= (int)n; return 0; }
    80001b08:	00052783          	lw	a5,0(a0)
    80001b0c:	0006071b          	sext.w	a4,a2
    80001b10:	02e7c263          	blt	a5,a4,80001b34 <_ZN10KSemaphore5waitNEP7KThreadj+0x34>
    80001b14:	40e787bb          	subw	a5,a5,a4
    80001b18:	00f52023          	sw	a5,0(a0)
    80001b1c:	00000513          	li	a0,0
    caller->sleepDelta = (time_t)n;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}
    80001b20:	00008067          	ret
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001b24:	fff00793          	li	a5,-1
    80001b28:	0af5bc23          	sd	a5,184(a1)
    80001b2c:	fff00513          	li	a0,-1
    80001b30:	00008067          	ret
int KSemaphore::waitN(KThread* caller, unsigned n) {
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00113423          	sd	ra,8(sp)
    80001b3c:	00813023          	sd	s0,0(sp)
    80001b40:	01010413          	addi	s0,sp,16
    caller->sleepDelta = (time_t)n;
    80001b44:	02061613          	slli	a2,a2,0x20
    80001b48:	02065613          	srli	a2,a2,0x20
    80001b4c:	04c5b023          	sd	a2,64(a1)
    caller->threadContext.x[10] = 0;
    80001b50:	0a05bc23          	sd	zero,184(a1)
    enqueue(caller);
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	dc0080e7          	jalr	-576(ra) # 80001914 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001b5c:	00100513          	li	a0,1
}
    80001b60:	00813083          	ld	ra,8(sp)
    80001b64:	00013403          	ld	s0,0(sp)
    80001b68:	01010113          	addi	sp,sp,16
    80001b6c:	00008067          	ret

0000000080001b70 <_ZN10KSemaphore7signalNEj>:

int KSemaphore::signalN(unsigned n) {
    80001b70:	fe010113          	addi	sp,sp,-32
    80001b74:	00113c23          	sd	ra,24(sp)
    80001b78:	00813823          	sd	s0,16(sp)
    80001b7c:	00913423          	sd	s1,8(sp)
    80001b80:	02010413          	addi	s0,sp,32
    80001b84:	00050493          	mv	s1,a0
    value += (int)n;
    80001b88:	00052783          	lw	a5,0(a0)
    80001b8c:	00b787bb          	addw	a5,a5,a1
    80001b90:	00f52023          	sw	a5,0(a0)
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001b94:	0084b783          	ld	a5,8(s1)
    80001b98:	02078c63          	beqz	a5,80001bd0 <_ZN10KSemaphore7signalNEj+0x60>
    80001b9c:	0004a703          	lw	a4,0(s1)
    80001ba0:	0407a783          	lw	a5,64(a5)
    80001ba4:	02f74663          	blt	a4,a5,80001bd0 <_ZN10KSemaphore7signalNEj+0x60>
        KThread* thread = dequeue();
    80001ba8:	00048513          	mv	a0,s1
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	df0080e7          	jalr	-528(ra) # 8000199c <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001bb4:	04053703          	ld	a4,64(a0)
    80001bb8:	0004a783          	lw	a5,0(s1)
    80001bbc:	40e787bb          	subw	a5,a5,a4
    80001bc0:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	4f0080e7          	jalr	1264(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001bcc:	fc9ff06f          	j	80001b94 <_ZN10KSemaphore7signalNEj+0x24>
    }
    return 0;
}
    80001bd0:	00000513          	li	a0,0
    80001bd4:	01813083          	ld	ra,24(sp)
    80001bd8:	01013403          	ld	s0,16(sp)
    80001bdc:	00813483          	ld	s1,8(sp)
    80001be0:	02010113          	addi	sp,sp,32
    80001be4:	00008067          	ret

0000000080001be8 <_ZN10KSemaphore5closeEv>:

int KSemaphore::close() {
    80001be8:	fe010113          	addi	sp,sp,-32
    80001bec:	00113c23          	sd	ra,24(sp)
    80001bf0:	00813823          	sd	s0,16(sp)
    80001bf4:	00913423          	sd	s1,8(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    80001bfc:	00050493          	mv	s1,a0
    closed = true;
    80001c00:	00100793          	li	a5,1
    80001c04:	00f50223          	sb	a5,4(a0)
    KThread* thread = dequeue();
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	d94080e7          	jalr	-620(ra) # 8000199c <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001c10:	02050263          	beqz	a0,80001c34 <_ZN10KSemaphore5closeEv+0x4c>
        thread->threadContext.x[10] = (size_t)-1;
    80001c14:	fff00793          	li	a5,-1
    80001c18:	0af53c23          	sd	a5,184(a0)
        Scheduler::Put(thread);
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	498080e7          	jalr	1176(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
        thread = dequeue();
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	d74080e7          	jalr	-652(ra) # 8000199c <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001c30:	fe1ff06f          	j	80001c10 <_ZN10KSemaphore5closeEv+0x28>
    }
    return 0;
    80001c34:	00000513          	li	a0,0
    80001c38:	01813083          	ld	ra,24(sp)
    80001c3c:	01013403          	ld	s0,16(sp)
    80001c40:	00813483          	ld	s1,8(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret

0000000080001c4c <_ZN7KThread16threadTrampolineEPS_>:
    sstatus_val &= ~(1UL << 8); // SPP=0
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void KThread::threadTrampoline(KThread* t) {
    80001c4c:	fe010113          	addi	sp,sp,-32
    80001c50:	00113c23          	sd	ra,24(sp)
    80001c54:	00813823          	sd	s0,16(sp)
    80001c58:	00913423          	sd	s1,8(sp)
    80001c5c:	02010413          	addi	s0,sp,32
    80001c60:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001c64:	00053783          	ld	a5,0(a0)
    80001c68:	00078663          	beqz	a5,80001c74 <_ZN7KThread16threadTrampolineEPS_+0x28>
    80001c6c:	00853503          	ld	a0,8(a0)
    80001c70:	000780e7          	jalr	a5
    t->finished=true;
    80001c74:	00100793          	li	a5,1
    80001c78:	00f48c23          	sb	a5,24(s1)
    __asm__ volatile("li a0, 0x12; ecall");
    80001c7c:	01200513          	li	a0,18
    80001c80:	00000073          	ecall
    80001c84:	01813083          	ld	ra,24(sp)
    80001c88:	01013403          	ld	s0,16(sp)
    80001c8c:	00813483          	ld	s1,8(sp)
    80001c90:	02010113          	addi	sp,sp,32
    80001c94:	00008067          	ret

0000000080001c98 <_ZN7KThreadC1Ev>:
KThread::KThread() {
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00813423          	sd	s0,8(sp)
    80001ca0:	01010413          	addi	s0,sp,16
}
    80001ca4:	00813403          	ld	s0,8(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN7KThread4initEv>:
void KThread::init() {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00813423          	sd	s0,8(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001cbc:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001cc0:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001cc4:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001cc8:	02053023          	sd	zero,32(a0)
    next = nullptr;
    80001ccc:	02053423          	sd	zero,40(a0)
    stackPtr = nullptr;
    80001cd0:	02053823          	sd	zero,48(a0)
    supervisorSp = nullptr;
    80001cd4:	02053c23          	sd	zero,56(a0)
    stackBase = nullptr;
    80001cd8:	06053023          	sd	zero,96(a0)
    sleepDelta = 0;
    80001cdc:	04053023          	sd	zero,64(a0)
    priority = 0;
    80001ce0:	04050423          	sb	zero,72(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001ce4:	00000713          	li	a4,0
    80001ce8:	01f00793          	li	a5,31
    80001cec:	00e7ce63          	blt	a5,a4,80001d08 <_ZN7KThread4initEv+0x58>
    80001cf0:	00c70793          	addi	a5,a4,12 # 800c <_entry-0x7fff7ff4>
    80001cf4:	00379793          	slli	a5,a5,0x3
    80001cf8:	00f507b3          	add	a5,a0,a5
    80001cfc:	0007b423          	sd	zero,8(a5)
    80001d00:	0017071b          	addiw	a4,a4,1
    80001d04:	fe5ff06f          	j	80001ce8 <_ZN7KThread4initEv+0x38>
    threadContext.sepc = 0;
    80001d08:	16053423          	sd	zero,360(a0)
    threadContext.sstatus = 0;
    80001d0c:	16053823          	sd	zero,368(a0)
    threadContext.pc = 0;
    80001d10:	16053c23          	sd	zero,376(a0)
    finished=false;
    80001d14:	00050c23          	sb	zero,24(a0)
    waitingThread=nullptr;
    80001d18:	04053823          	sd	zero,80(a0)
    stopperThread=nullptr;
    80001d1c:	04053c23          	sd	zero,88(a0)
}
    80001d20:	00813403          	ld	s0,8(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00813423          	sd	s0,8(sp)
    80001d34:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001d38:	00000713          	li	a4,0
    80001d3c:	01f00793          	li	a5,31
    80001d40:	02e7c463          	blt	a5,a4,80001d68 <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001d44:	00371793          	slli	a5,a4,0x3
    80001d48:	00f587b3          	add	a5,a1,a5
    80001d4c:	0007b683          	ld	a3,0(a5)
    80001d50:	00c70793          	addi	a5,a4,12
    80001d54:	00379793          	slli	a5,a5,0x3
    80001d58:	00f507b3          	add	a5,a0,a5
    80001d5c:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    80001d60:	0017071b          	addiw	a4,a4,1
    80001d64:	fd9ff06f          	j	80001d3c <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001d68:	03053783          	ld	a5,48(a0)
    80001d6c:	06f53c23          	sd	a5,120(a0)
    threadContext.sepc = cont->sepc;
    80001d70:	1005b783          	ld	a5,256(a1)
    80001d74:	16f53423          	sd	a5,360(a0)
    threadContext.sstatus =cont->sstatus;
    80001d78:	1085b783          	ld	a5,264(a1)
    80001d7c:	16f53823          	sd	a5,368(a0)
}
    80001d80:	00813403          	ld	s0,8(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00813423          	sd	s0,8(sp)
    80001d94:	01010413          	addi	s0,sp,16
}
    80001d98:	06850513          	addi	a0,a0,104
    80001d9c:	00813403          	ld	s0,8(sp)
    80001da0:	01010113          	addi	sp,sp,16
    80001da4:	00008067          	ret

0000000080001da8 <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00813423          	sd	s0,8(sp)
    80001db0:	01010413          	addi	s0,sp,16
}
    80001db4:	02853503          	ld	a0,40(a0)
    80001db8:	00813403          	ld	s0,8(sp)
    80001dbc:	01010113          	addi	sp,sp,16
    80001dc0:	00008067          	ret

0000000080001dc4 <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001dc4:	ff010113          	addi	sp,sp,-16
    80001dc8:	00813423          	sd	s0,8(sp)
    80001dcc:	01010413          	addi	s0,sp,16
}
    80001dd0:	02053503          	ld	a0,32(a0)
    80001dd4:	00813403          	ld	s0,8(sp)
    80001dd8:	01010113          	addi	sp,sp,16
    80001ddc:	00008067          	ret

0000000080001de0 <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00813423          	sd	s0,8(sp)
    80001de8:	01010413          	addi	s0,sp,16
    this->next = next;
    80001dec:	02b53423          	sd	a1,40(a0)
}
    80001df0:	00813403          	ld	s0,8(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00813423          	sd	s0,8(sp)
    80001e04:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001e08:	02b53023          	sd	a1,32(a0)
}
    80001e0c:	00813403          	ld	s0,8(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001e18:	fe010113          	addi	sp,sp,-32
    80001e1c:	00113c23          	sd	ra,24(sp)
    80001e20:	00813823          	sd	s0,16(sp)
    80001e24:	00913423          	sd	s1,8(sp)
    80001e28:	01213023          	sd	s2,0(sp)
    80001e2c:	02010413          	addi	s0,sp,32
    80001e30:	00050493          	mv	s1,a0
    80001e34:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001e38:	00000097          	auipc	ra,0x0
    80001e3c:	fa8080e7          	jalr	-88(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001e40:	00090593          	mv	a1,s2
    80001e44:	00048513          	mv	a0,s1
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	fb4080e7          	jalr	-76(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
}
    80001e50:	01813083          	ld	ra,24(sp)
    80001e54:	01013403          	ld	s0,16(sp)
    80001e58:	00813483          	ld	s1,8(sp)
    80001e5c:	00013903          	ld	s2,0(sp)
    80001e60:	02010113          	addi	sp,sp,32
    80001e64:	00008067          	ret

0000000080001e68 <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00813423          	sd	s0,8(sp)
    80001e70:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001e74:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001e78:	02c53823          	sd	a2,48(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001e7c:	06c53c23          	sd	a2,120(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001e80:	00000797          	auipc	a5,0x0
    80001e84:	dcc78793          	addi	a5,a5,-564 # 80001c4c <_ZN7KThread16threadTrampolineEPS_>
    80001e88:	16f53423          	sd	a5,360(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001e8c:	0aa53c23          	sd	a0,184(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001e90:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001e94:	08f53023          	sd	a5,128(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001e98:	100027f3          	csrr	a5,sstatus
    sstatus_val &= ~(1UL << 8); // SPP=0
    80001e9c:	eff7f793          	andi	a5,a5,-257
    sstatus_val |= (1UL << 5); // SPIE=1
    80001ea0:	0207e793          	ori	a5,a5,32
    threadContext.sstatus = sstatus_val;
    80001ea4:	16f53823          	sd	a5,368(a0)
}
    80001ea8:	00813403          	ld	s0,8(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZL8idleBodyPv>:
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001ec4:	fffff097          	auipc	ra,0xfffff
    80001ec8:	7b4080e7          	jalr	1972(ra) # 80001678 <thread_dispatch>
    80001ecc:	ff9ff06f          	j	80001ec4 <_ZL8idleBodyPv+0x10>

0000000080001ed0 <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00813423          	sd	s0,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
}
    80001edc:	0000b517          	auipc	a0,0xb
    80001ee0:	e1453503          	ld	a0,-492(a0) # 8000ccf0 <_ZN9Scheduler7runningE>
    80001ee4:	00813403          	ld	s0,8(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00113423          	sd	ra,8(sp)
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	01010413          	addi	s0,sp,16
    80001f00:	00058513          	mv	a0,a1
    running = newThread;
    80001f04:	0000b797          	auipc	a5,0xb
    80001f08:	deb7b623          	sd	a1,-532(a5) # 8000ccf0 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	e80080e7          	jalr	-384(ra) # 80001d8c <_ZN7KThread10getContextEv>
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	180080e7          	jalr	384(ra) # 80001094 <restoreContext>
}
    80001f1c:	00813083          	ld	ra,8(sp)
    80001f20:	00013403          	ld	s0,0(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_ZN9Scheduler8freeDeadEv>:
void Scheduler::freeDead() {
    80001f2c:	fe010113          	addi	sp,sp,-32
    80001f30:	00113c23          	sd	ra,24(sp)
    80001f34:	00813823          	sd	s0,16(sp)
    80001f38:	00913423          	sd	s1,8(sp)
    80001f3c:	02010413          	addi	s0,sp,32
    if (deadThread == nullptr) return;
    80001f40:	0000b497          	auipc	s1,0xb
    80001f44:	db84b483          	ld	s1,-584(s1) # 8000ccf8 <_ZN9Scheduler10deadThreadE>
    80001f48:	02048e63          	beqz	s1,80001f84 <_ZN9Scheduler8freeDeadEv+0x58>
    deadThread = nullptr;
    80001f4c:	0000b797          	auipc	a5,0xb
    80001f50:	da07b623          	sd	zero,-596(a5) # 8000ccf8 <_ZN9Scheduler10deadThreadE>
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    80001f54:	0604b783          	ld	a5,96(s1)
    80001f58:	00078c63          	beqz	a5,80001f70 <_ZN9Scheduler8freeDeadEv+0x44>
    80001f5c:	00002097          	auipc	ra,0x2
    80001f60:	968080e7          	jalr	-1688(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f64:	0604b583          	ld	a1,96(s1)
    80001f68:	00002097          	auipc	ra,0x2
    80001f6c:	a54080e7          	jalr	-1452(ra) # 800039bc <_ZN15MemoryAllocator12FreeFragmentEPv>
    MemoryAllocator::GetInstance().FreeFragment(dead);
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	954080e7          	jalr	-1708(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f78:	00048593          	mv	a1,s1
    80001f7c:	00002097          	auipc	ra,0x2
    80001f80:	a40080e7          	jalr	-1472(ra) # 800039bc <_ZN15MemoryAllocator12FreeFragmentEPv>
}
    80001f84:	01813083          	ld	ra,24(sp)
    80001f88:	01013403          	ld	s0,16(sp)
    80001f8c:	00813483          	ld	s1,8(sp)
    80001f90:	02010113          	addi	sp,sp,32
    80001f94:	00008067          	ret

0000000080001f98 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001f98:	fe010113          	addi	sp,sp,-32
    80001f9c:	00113c23          	sd	ra,24(sp)
    80001fa0:	00813823          	sd	s0,16(sp)
    80001fa4:	00913423          	sd	s1,8(sp)
    80001fa8:	01213023          	sd	s2,0(sp)
    80001fac:	02010413          	addi	s0,sp,32
    for (int i = 0; i < LEVELS; i++) {
    80001fb0:	00000493          	li	s1,0
    80001fb4:	00300793          	li	a5,3
    80001fb8:	0a97c463          	blt	a5,s1,80002060 <_ZN9Scheduler7GetNextEv+0xc8>
        if (readyHead[i] == nullptr) continue;
    80001fbc:	00349713          	slli	a4,s1,0x3
    80001fc0:	0000b797          	auipc	a5,0xb
    80001fc4:	d3078793          	addi	a5,a5,-720 # 8000ccf0 <_ZN9Scheduler7runningE>
    80001fc8:	00e787b3          	add	a5,a5,a4
    80001fcc:	0107b903          	ld	s2,16(a5)
    80001fd0:	06090863          	beqz	s2,80002040 <_ZN9Scheduler7GetNextEv+0xa8>
        readyHead[i] = toRet->getNextInQueue();
    80001fd4:	00090513          	mv	a0,s2
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	dd0080e7          	jalr	-560(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    80001fe0:	00349713          	slli	a4,s1,0x3
    80001fe4:	0000b797          	auipc	a5,0xb
    80001fe8:	d0c78793          	addi	a5,a5,-756 # 8000ccf0 <_ZN9Scheduler7runningE>
    80001fec:	00e787b3          	add	a5,a5,a4
    80001ff0:	00a7b823          	sd	a0,16(a5)
        if (readyHead[i] != nullptr) readyHead[i]->setPrevInQueue(nullptr);
    80001ff4:	04050a63          	beqz	a0,80002048 <_ZN9Scheduler7GetNextEv+0xb0>
    80001ff8:	00000593          	li	a1,0
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	e00080e7          	jalr	-512(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
        toRet->setNextInQueue(nullptr);
    80002004:	00000593          	li	a1,0
    80002008:	00090513          	mv	a0,s2
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	dd4080e7          	jalr	-556(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
        toRet->setPrevInQueue(nullptr);
    80002014:	00000593          	li	a1,0
    80002018:	00090513          	mv	a0,s2
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	de0080e7          	jalr	-544(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
}
    80002024:	00090513          	mv	a0,s2
    80002028:	01813083          	ld	ra,24(sp)
    8000202c:	01013403          	ld	s0,16(sp)
    80002030:	00813483          	ld	s1,8(sp)
    80002034:	00013903          	ld	s2,0(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret
    for (int i = 0; i < LEVELS; i++) {
    80002040:	0014849b          	addiw	s1,s1,1
    80002044:	f71ff06f          	j	80001fb4 <_ZN9Scheduler7GetNextEv+0x1c>
        else readyTail[i] = nullptr;
    80002048:	00349493          	slli	s1,s1,0x3
    8000204c:	0000b797          	auipc	a5,0xb
    80002050:	ca478793          	addi	a5,a5,-860 # 8000ccf0 <_ZN9Scheduler7runningE>
    80002054:	009784b3          	add	s1,a5,s1
    80002058:	0204b823          	sd	zero,48(s1)
    8000205c:	fa9ff06f          	j	80002004 <_ZN9Scheduler7GetNextEv+0x6c>
    return nullptr;
    80002060:	00000913          	li	s2,0
    80002064:	fc1ff06f          	j	80002024 <_ZN9Scheduler7GetNextEv+0x8c>

0000000080002068 <_ZN9Scheduler12blockCurrentEP7KThread>:
void Scheduler::blockCurrent(KThread* current) {
    80002068:	fe010113          	addi	sp,sp,-32
    8000206c:	00113c23          	sd	ra,24(sp)
    80002070:	00813823          	sd	s0,16(sp)
    80002074:	00913423          	sd	s1,8(sp)
    80002078:	02010413          	addi	s0,sp,32
    8000207c:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80002080:	00000097          	auipc	ra,0x0
    80002084:	f18080e7          	jalr	-232(ra) # 80001f98 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) { while (true) {} }
    80002088:	02050463          	beqz	a0,800020b0 <_ZN9Scheduler12blockCurrentEP7KThread+0x48>
    8000208c:	00050593          	mv	a1,a0
    yield(current, next);
    80002090:	00048513          	mv	a0,s1
    80002094:	00000097          	auipc	ra,0x0
    80002098:	e5c080e7          	jalr	-420(ra) # 80001ef0 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	01013403          	ld	s0,16(sp)
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	02010113          	addi	sp,sp,32
    800020ac:	00008067          	ret
    if (next == nullptr) { while (true) {} }
    800020b0:	0000006f          	j	800020b0 <_ZN9Scheduler12blockCurrentEP7KThread+0x48>

00000000800020b4 <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    800020b4:	fd010113          	addi	sp,sp,-48
    800020b8:	02113423          	sd	ra,40(sp)
    800020bc:	02813023          	sd	s0,32(sp)
    800020c0:	00913c23          	sd	s1,24(sp)
    800020c4:	01213823          	sd	s2,16(sp)
    800020c8:	01313423          	sd	s3,8(sp)
    800020cc:	03010413          	addi	s0,sp,48
    800020d0:	00050493          	mv	s1,a0
    int lvl = thread->priority;
    800020d4:	04854903          	lbu	s2,72(a0)
    thread->setNextInQueue(nullptr);
    800020d8:	00000593          	li	a1,0
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	d04080e7          	jalr	-764(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(readyTail[lvl]);
    800020e4:	00391793          	slli	a5,s2,0x3
    800020e8:	0000b997          	auipc	s3,0xb
    800020ec:	c0898993          	addi	s3,s3,-1016 # 8000ccf0 <_ZN9Scheduler7runningE>
    800020f0:	00f989b3          	add	s3,s3,a5
    800020f4:	0309b583          	ld	a1,48(s3)
    800020f8:	00048513          	mv	a0,s1
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	d00080e7          	jalr	-768(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
    if (readyTail[lvl] != nullptr) readyTail[lvl]->setNextInQueue(thread);
    80002104:	0309b503          	ld	a0,48(s3)
    80002108:	04050063          	beqz	a0,80002148 <_ZN9Scheduler3PutEP7KThread+0x94>
    8000210c:	00048593          	mv	a1,s1
    80002110:	00000097          	auipc	ra,0x0
    80002114:	cd0080e7          	jalr	-816(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    readyTail[lvl] = thread;
    80002118:	00391913          	slli	s2,s2,0x3
    8000211c:	0000b797          	auipc	a5,0xb
    80002120:	bd478793          	addi	a5,a5,-1068 # 8000ccf0 <_ZN9Scheduler7runningE>
    80002124:	01278933          	add	s2,a5,s2
    80002128:	02993823          	sd	s1,48(s2)
}
    8000212c:	02813083          	ld	ra,40(sp)
    80002130:	02013403          	ld	s0,32(sp)
    80002134:	01813483          	ld	s1,24(sp)
    80002138:	01013903          	ld	s2,16(sp)
    8000213c:	00813983          	ld	s3,8(sp)
    80002140:	03010113          	addi	sp,sp,48
    80002144:	00008067          	ret
    else readyHead[lvl] = thread;
    80002148:	00391713          	slli	a4,s2,0x3
    8000214c:	0000b797          	auipc	a5,0xb
    80002150:	ba478793          	addi	a5,a5,-1116 # 8000ccf0 <_ZN9Scheduler7runningE>
    80002154:	00e787b3          	add	a5,a5,a4
    80002158:	0097b823          	sd	s1,16(a5)
    8000215c:	fbdff06f          	j	80002118 <_ZN9Scheduler3PutEP7KThread+0x64>

0000000080002160 <_ZN9Scheduler12yieldCurrentEP7KThread>:
bool Scheduler::yieldCurrent(KThread* current) {
    80002160:	fe010113          	addi	sp,sp,-32
    80002164:	00113c23          	sd	ra,24(sp)
    80002168:	00813823          	sd	s0,16(sp)
    8000216c:	00913423          	sd	s1,8(sp)
    80002170:	01213023          	sd	s2,0(sp)
    80002174:	02010413          	addi	s0,sp,32
    80002178:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	e1c080e7          	jalr	-484(ra) # 80001f98 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) return false;
    80002184:	04050463          	beqz	a0,800021cc <_ZN9Scheduler12yieldCurrentEP7KThread+0x6c>
    80002188:	00050913          	mv	s2,a0
    if (current) current->threadContext.x[10] = 0;
    8000218c:	00048463          	beqz	s1,80002194 <_ZN9Scheduler12yieldCurrentEP7KThread+0x34>
    80002190:	0a04bc23          	sd	zero,184(s1)
    Put(current);
    80002194:	00048513          	mv	a0,s1
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	f1c080e7          	jalr	-228(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    800021a0:	00090593          	mv	a1,s2
    800021a4:	00048513          	mv	a0,s1
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	d48080e7          	jalr	-696(ra) # 80001ef0 <_ZN9Scheduler5yieldEP7KThreadS1_>
    return true;
    800021b0:	00100513          	li	a0,1
}
    800021b4:	01813083          	ld	ra,24(sp)
    800021b8:	01013403          	ld	s0,16(sp)
    800021bc:	00813483          	ld	s1,8(sp)
    800021c0:	00013903          	ld	s2,0(sp)
    800021c4:	02010113          	addi	sp,sp,32
    800021c8:	00008067          	ret
    if (next == nullptr) return false;
    800021cc:	00000513          	li	a0,0
    800021d0:	fe5ff06f          	j	800021b4 <_ZN9Scheduler12yieldCurrentEP7KThread+0x54>

00000000800021d4 <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    800021d4:	fe010113          	addi	sp,sp,-32
    800021d8:	00113c23          	sd	ra,24(sp)
    800021dc:	00813823          	sd	s0,16(sp)
    800021e0:	00913423          	sd	s1,8(sp)
    800021e4:	01213023          	sd	s2,0(sp)
    800021e8:	02010413          	addi	s0,sp,32
    800021ec:	00050493          	mv	s1,a0
    deadThread = t;
    800021f0:	0000b797          	auipc	a5,0xb
    800021f4:	b0a7b423          	sd	a0,-1272(a5) # 8000ccf8 <_ZN9Scheduler10deadThreadE>
    KThread* next = GetNext();
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	da0080e7          	jalr	-608(ra) # 80001f98 <_ZN9Scheduler7GetNextEv>
    80002200:	00050913          	mv	s2,a0
    if (next == nullptr) {
    80002204:	02050263          	beqz	a0,80002228 <_ZN9Scheduler10ThreadExitEP7KThread+0x54>
    if (t->stopperThread)return;
    80002208:	0584b783          	ld	a5,88(s1)
    8000220c:	02078463          	beqz	a5,80002234 <_ZN9Scheduler10ThreadExitEP7KThread+0x60>
}
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	00013903          	ld	s2,0(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80002228:	0104b903          	ld	s2,16(s1)
        if (next == nullptr) { while (true) {} }
    8000222c:	fc091ee3          	bnez	s2,80002208 <_ZN9Scheduler10ThreadExitEP7KThread+0x34>
    80002230:	0000006f          	j	80002230 <_ZN9Scheduler10ThreadExitEP7KThread+0x5c>
    if (t->waitingThread) {
    80002234:	0504b503          	ld	a0,80(s1)
    80002238:	00050e63          	beqz	a0,80002254 <_ZN9Scheduler10ThreadExitEP7KThread+0x80>
        Put(t->waitingThread);
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	e78080e7          	jalr	-392(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
        t->waitingThread->stopperThread = t->stopperThread;
    80002244:	0504b783          	ld	a5,80(s1)
    80002248:	0584b703          	ld	a4,88(s1)
    8000224c:	04e7bc23          	sd	a4,88(a5)
        t->waitingThread=nullptr;
    80002250:	0404b823          	sd	zero,80(s1)
    yield(t, next);
    80002254:	00090593          	mv	a1,s2
    80002258:	00048513          	mv	a0,s1
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	c94080e7          	jalr	-876(ra) # 80001ef0 <_ZN9Scheduler5yieldEP7KThreadS1_>
    80002264:	fadff06f          	j	80002210 <_ZN9Scheduler10ThreadExitEP7KThread+0x3c>

0000000080002268 <_ZN9Scheduler12PutPreemptedEP7KThread>:
void Scheduler::PutPreempted(KThread* thread) {
    80002268:	ff010113          	addi	sp,sp,-16
    8000226c:	00113423          	sd	ra,8(sp)
    80002270:	00813023          	sd	s0,0(sp)
    80002274:	01010413          	addi	s0,sp,16
    if (thread->priority < LEVELS - 1) thread->priority++;
    80002278:	04854783          	lbu	a5,72(a0)
    8000227c:	00200713          	li	a4,2
    80002280:	00f76663          	bltu	a4,a5,8000228c <_ZN9Scheduler12PutPreemptedEP7KThread+0x24>
    80002284:	0017879b          	addiw	a5,a5,1
    80002288:	04f50423          	sb	a5,72(a0)
    Put(thread);
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	e28080e7          	jalr	-472(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
}
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00813423          	sd	s0,8(sp)
    800022ac:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    800022b0:	0000b797          	auipc	a5,0xb
    800022b4:	9e07b783          	ld	a5,-1568(a5) # 8000cc90 <_GLOBAL_OFFSET_TABLE_+0x38>
    800022b8:	00778793          	addi	a5,a5,7
    800022bc:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    800022c0:	0000b717          	auipc	a4,0xb
    800022c4:	a8f73023          	sd	a5,-1408(a4) # 8000cd40 <_ZN9Scheduler12stack_cursorE>
}
    800022c8:	00813403          	ld	s0,8(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    800022d4:	fe010113          	addi	sp,sp,-32
    800022d8:	00113c23          	sd	ra,24(sp)
    800022dc:	00813823          	sd	s0,16(sp)
    800022e0:	00913423          	sd	s1,8(sp)
    800022e4:	02010413          	addi	s0,sp,32
    SetupStartStack();
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	fbc080e7          	jalr	-68(ra) # 800022a4 <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    800022f0:	00001097          	auipc	ra,0x1
    800022f4:	5d4080e7          	jalr	1492(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    800022f8:	18000593          	li	a1,384
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	624080e7          	jalr	1572(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002304:	0000b497          	auipc	s1,0xb
    80002308:	9ec48493          	addi	s1,s1,-1556 # 8000ccf0 <_ZN9Scheduler7runningE>
    8000230c:	00a4b023          	sd	a0,0(s1)
    running->init();
    80002310:	00000097          	auipc	ra,0x0
    80002314:	9a0080e7          	jalr	-1632(ra) # 80001cb0 <_ZN7KThread4initEv>
    setupStartContext(running->getContext());
    80002318:	0004b503          	ld	a0,0(s1)
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	a70080e7          	jalr	-1424(ra) # 80001d8c <_ZN7KThread10getContextEv>
    80002324:	fffff097          	auipc	ra,0xfffff
    80002328:	e00080e7          	jalr	-512(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    8000232c:	00200793          	li	a5,2
    80002330:	0000a717          	auipc	a4,0xa
    80002334:	64f73823          	sd	a5,1616(a4) # 8000c980 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	58c080e7          	jalr	1420(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80002340:	18000593          	li	a1,384
    80002344:	00001097          	auipc	ra,0x1
    80002348:	5dc080e7          	jalr	1500(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
    8000234c:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    80002350:	00000097          	auipc	ra,0x0
    80002354:	960080e7          	jalr	-1696(ra) # 80001cb0 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002358:	00000797          	auipc	a5,0x0
    8000235c:	b5c78793          	addi	a5,a5,-1188 # 80001eb4 <_ZL8idleBodyPv>
    80002360:	00f4b023          	sd	a5,0(s1)
    80002364:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	55c080e7          	jalr	1372(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80002370:	000085b7          	lui	a1,0x8
    80002374:	00001097          	auipc	ra,0x1
    80002378:	5ac080e7          	jalr	1452(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    8000237c:	00008637          	lui	a2,0x8
    80002380:	00c50633          	add	a2,a0,a2
    80002384:	00000593          	li	a1,0
    80002388:	00048513          	mv	a0,s1
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	adc080e7          	jalr	-1316(ra) # 80001e68 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    80002394:	00048513          	mv	a0,s1
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	d1c080e7          	jalr	-740(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
}
    800023a0:	01813083          	ld	ra,24(sp)
    800023a4:	01013403          	ld	s0,16(sp)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	02010113          	addi	sp,sp,32
    800023b0:	00008067          	ret

00000000800023b4 <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00813423          	sd	s0,8(sp)
    800023bc:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    800023c0:	03053783          	ld	a5,48(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    800023c4:	06f53c23          	sd	a5,120(a0)
}
    800023c8:	00813403          	ld	s0,8(sp)
    800023cc:	01010113          	addi	sp,sp,16
    800023d0:	00008067          	ret

00000000800023d4 <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    800023d4:	fd010113          	addi	sp,sp,-48
    800023d8:	02113423          	sd	ra,40(sp)
    800023dc:	02813023          	sd	s0,32(sp)
    800023e0:	00913c23          	sd	s1,24(sp)
    800023e4:	01213823          	sd	s2,16(sp)
    800023e8:	01313423          	sd	s3,8(sp)
    800023ec:	01413023          	sd	s4,0(sp)
    800023f0:	03010413          	addi	s0,sp,48
    800023f4:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    800023f8:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    800023fc:	0000b797          	auipc	a5,0xb
    80002400:	94c7b783          	ld	a5,-1716(a5) # 8000cd48 <_ZN9Scheduler10sleepQueueE>
    80002404:	04078e63          	beqz	a5,80002460 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80002408:	0407b703          	ld	a4,64(a5)
    8000240c:	04070063          	beqz	a4,8000244c <_ZN9Scheduler9timerTickEP7KThread+0x78>
    80002410:	fff70713          	addi	a4,a4,-1
    80002414:	04e7b023          	sd	a4,64(a5)
    80002418:	0340006f          	j	8000244c <_ZN9Scheduler9timerTickEP7KThread+0x78>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    8000241c:	00048513          	mv	a0,s1
    80002420:	00000097          	auipc	ra,0x0
    80002424:	988080e7          	jalr	-1656(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    80002428:	0000b797          	auipc	a5,0xb
    8000242c:	92a7b023          	sd	a0,-1760(a5) # 8000cd48 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    80002430:	00000593          	li	a1,0
    80002434:	00048513          	mv	a0,s1
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	9a8080e7          	jalr	-1624(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    80002440:	00048513          	mv	a0,s1
    80002444:	00000097          	auipc	ra,0x0
    80002448:	c70080e7          	jalr	-912(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    8000244c:	0000b497          	auipc	s1,0xb
    80002450:	8fc4b483          	ld	s1,-1796(s1) # 8000cd48 <_ZN9Scheduler10sleepQueueE>
    80002454:	00048663          	beqz	s1,80002460 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
    80002458:	0404b783          	ld	a5,64(s1)
    8000245c:	fc0780e3          	beqz	a5,8000241c <_ZN9Scheduler9timerTickEP7KThread+0x48>
        }
    }

    if (current == nullptr) return;
    80002460:	12090e63          	beqz	s2,8000259c <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    80002464:	0000a797          	auipc	a5,0xa
    80002468:	51c7b783          	ld	a5,1308(a5) # 8000c980 <_ZN9Scheduler21runningThreadTimeLeftE>
    8000246c:	00078863          	beqz	a5,8000247c <_ZN9Scheduler9timerTickEP7KThread+0xa8>
    80002470:	fff78793          	addi	a5,a5,-1
    80002474:	0000a717          	auipc	a4,0xa
    80002478:	50f73623          	sd	a5,1292(a4) # 8000c980 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    8000247c:	0000a797          	auipc	a5,0xa
    80002480:	5047b783          	ld	a5,1284(a5) # 8000c980 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002484:	10079c63          	bnez	a5,8000259c <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (++agingTick >= 100) {
    80002488:	0000b717          	auipc	a4,0xb
    8000248c:	86870713          	addi	a4,a4,-1944 # 8000ccf0 <_ZN9Scheduler7runningE>
    80002490:	06072783          	lw	a5,96(a4)
    80002494:	0017879b          	addiw	a5,a5,1
    80002498:	0007869b          	sext.w	a3,a5
    8000249c:	06f72023          	sw	a5,96(a4)
    800024a0:	06300793          	li	a5,99
    800024a4:	0cd7d063          	bge	a5,a3,80002564 <_ZN9Scheduler9timerTickEP7KThread+0x190>
        agingTick = 0;
    800024a8:	0000b797          	auipc	a5,0xb
    800024ac:	8a07a423          	sw	zero,-1880(a5) # 8000cd50 <_ZN9Scheduler9agingTickE>
        for (int i = 1; i < LEVELS; i++) {
    800024b0:	00100493          	li	s1,1
    800024b4:	0600006f          	j	80002514 <_ZN9Scheduler9timerTickEP7KThread+0x140>
            if (readyHead[i] == nullptr) continue;
            KThread* curr = readyHead[i];
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
            if (readyTail[0] != nullptr) {
    800024b8:	0000b517          	auipc	a0,0xb
    800024bc:	86853503          	ld	a0,-1944(a0) # 8000cd20 <_ZN9Scheduler9readyTailE>
    800024c0:	08050463          	beqz	a0,80002548 <_ZN9Scheduler9timerTickEP7KThread+0x174>
                readyTail[0]->setNextInQueue(readyHead[i]);
    800024c4:	0000ba17          	auipc	s4,0xb
    800024c8:	82ca0a13          	addi	s4,s4,-2004 # 8000ccf0 <_ZN9Scheduler7runningE>
    800024cc:	00349993          	slli	s3,s1,0x3
    800024d0:	013a09b3          	add	s3,s4,s3
    800024d4:	0109b583          	ld	a1,16(s3)
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	908080e7          	jalr	-1784(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
                readyHead[i]->setPrevInQueue(readyTail[0]);
    800024e0:	030a3583          	ld	a1,48(s4)
    800024e4:	0109b503          	ld	a0,16(s3)
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	914080e7          	jalr	-1772(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
            } else {
                readyHead[0] = readyHead[i];
            }
            readyTail[0] = readyTail[i];
    800024f0:	0000b717          	auipc	a4,0xb
    800024f4:	80070713          	addi	a4,a4,-2048 # 8000ccf0 <_ZN9Scheduler7runningE>
    800024f8:	00349793          	slli	a5,s1,0x3
    800024fc:	00f707b3          	add	a5,a4,a5
    80002500:	0307b683          	ld	a3,48(a5)
    80002504:	02d73823          	sd	a3,48(a4)
            readyHead[i] = readyTail[i] = nullptr;
    80002508:	0207b823          	sd	zero,48(a5)
    8000250c:	0007b823          	sd	zero,16(a5)
        for (int i = 1; i < LEVELS; i++) {
    80002510:	0014849b          	addiw	s1,s1,1
    80002514:	00300793          	li	a5,3
    80002518:	0497c663          	blt	a5,s1,80002564 <_ZN9Scheduler9timerTickEP7KThread+0x190>
            if (readyHead[i] == nullptr) continue;
    8000251c:	00349713          	slli	a4,s1,0x3
    80002520:	0000a797          	auipc	a5,0xa
    80002524:	7d078793          	addi	a5,a5,2000 # 8000ccf0 <_ZN9Scheduler7runningE>
    80002528:	00e787b3          	add	a5,a5,a4
    8000252c:	0107b503          	ld	a0,16(a5)
    80002530:	fe0500e3          	beqz	a0,80002510 <_ZN9Scheduler9timerTickEP7KThread+0x13c>
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
    80002534:	f80502e3          	beqz	a0,800024b8 <_ZN9Scheduler9timerTickEP7KThread+0xe4>
    80002538:	04050423          	sb	zero,72(a0)
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	86c080e7          	jalr	-1940(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    80002544:	ff1ff06f          	j	80002534 <_ZN9Scheduler9timerTickEP7KThread+0x160>
                readyHead[0] = readyHead[i];
    80002548:	0000a717          	auipc	a4,0xa
    8000254c:	7a870713          	addi	a4,a4,1960 # 8000ccf0 <_ZN9Scheduler7runningE>
    80002550:	00349793          	slli	a5,s1,0x3
    80002554:	00f707b3          	add	a5,a4,a5
    80002558:	0107b783          	ld	a5,16(a5)
    8000255c:	00f73823          	sd	a5,16(a4)
    80002560:	f91ff06f          	j	800024f0 <_ZN9Scheduler9timerTickEP7KThread+0x11c>
        }
    }

    KThread* next = GetNext();
    80002564:	00000097          	auipc	ra,0x0
    80002568:	a34080e7          	jalr	-1484(ra) # 80001f98 <_ZN9Scheduler7GetNextEv>
    8000256c:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002570:	00200793          	li	a5,2
    80002574:	0000a717          	auipc	a4,0xa
    80002578:	40f73623          	sd	a5,1036(a4) # 8000c980 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    8000257c:	02050063          	beqz	a0,8000259c <_ZN9Scheduler9timerTickEP7KThread+0x1c8>
    PutPreempted(current);
    80002580:	00090513          	mv	a0,s2
    80002584:	00000097          	auipc	ra,0x0
    80002588:	ce4080e7          	jalr	-796(ra) # 80002268 <_ZN9Scheduler12PutPreemptedEP7KThread>
    yield(current, next);
    8000258c:	00048593          	mv	a1,s1
    80002590:	00090513          	mv	a0,s2
    80002594:	00000097          	auipc	ra,0x0
    80002598:	95c080e7          	jalr	-1700(ra) # 80001ef0 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    8000259c:	02813083          	ld	ra,40(sp)
    800025a0:	02013403          	ld	s0,32(sp)
    800025a4:	01813483          	ld	s1,24(sp)
    800025a8:	01013903          	ld	s2,16(sp)
    800025ac:	00813983          	ld	s3,8(sp)
    800025b0:	00013a03          	ld	s4,0(sp)
    800025b4:	03010113          	addi	sp,sp,48
    800025b8:	00008067          	ret

00000000800025bc <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    800025bc:	fd010113          	addi	sp,sp,-48
    800025c0:	02113423          	sd	ra,40(sp)
    800025c4:	02813023          	sd	s0,32(sp)
    800025c8:	00913c23          	sd	s1,24(sp)
    800025cc:	01213823          	sd	s2,16(sp)
    800025d0:	01313423          	sd	s3,8(sp)
    800025d4:	01413023          	sd	s4,0(sp)
    800025d8:	03010413          	addi	s0,sp,48
    800025dc:	00050a13          	mv	s4,a0
    800025e0:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    800025e4:	0000a497          	auipc	s1,0xa
    800025e8:	7644b483          	ld	s1,1892(s1) # 8000cd48 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    800025ec:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    800025f0:	02048463          	beqz	s1,80002618 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    800025f4:	0404b783          	ld	a5,64(s1)
    800025f8:	02f96063          	bltu	s2,a5,80002618 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    800025fc:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    80002600:	00048513          	mv	a0,s1
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	7a4080e7          	jalr	1956(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    8000260c:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    80002610:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    80002614:	fddff06f          	j	800025f0 <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    80002618:	052a3023          	sd	s2,64(s4)
    thread->setNextInQueue(current);
    8000261c:	00048593          	mv	a1,s1
    80002620:	000a0513          	mv	a0,s4
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	7bc080e7          	jalr	1980(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    8000262c:	04098263          	beqz	s3,80002670 <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    80002630:	000a0593          	mv	a1,s4
    80002634:	00098513          	mv	a0,s3
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	7a8080e7          	jalr	1960(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    80002640:	00048863          	beqz	s1,80002650 <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    80002644:	0404b583          	ld	a1,64(s1)
    80002648:	41258933          	sub	s2,a1,s2
    8000264c:	0524b023          	sd	s2,64(s1)
}
    80002650:	02813083          	ld	ra,40(sp)
    80002654:	02013403          	ld	s0,32(sp)
    80002658:	01813483          	ld	s1,24(sp)
    8000265c:	01013903          	ld	s2,16(sp)
    80002660:	00813983          	ld	s3,8(sp)
    80002664:	00013a03          	ld	s4,0(sp)
    80002668:	03010113          	addi	sp,sp,48
    8000266c:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    80002670:	0000a797          	auipc	a5,0xa
    80002674:	6d47bc23          	sd	s4,1752(a5) # 8000cd48 <_ZN9Scheduler10sleepQueueE>
    80002678:	fc9ff06f          	j	80002640 <_ZN9Scheduler5sleepEP7KThreadm+0x84>

000000008000267c <_ZN9Scheduler10joinThreadEP7KThread>:

void Scheduler::joinThread(KThread* joiningThread) {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00113423          	sd	ra,8(sp)
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	01010413          	addi	s0,sp,16
    8000268c:	00050793          	mv	a5,a0
    joiningThread->waitingThread = running;
    80002690:	0000a517          	auipc	a0,0xa
    80002694:	66053503          	ld	a0,1632(a0) # 8000ccf0 <_ZN9Scheduler7runningE>
    80002698:	04a7b823          	sd	a0,80(a5)
    running->stopperThread = joiningThread;
    8000269c:	04f53c23          	sd	a5,88(a0)
    blockCurrent(running);
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	9c8080e7          	jalr	-1592(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>

    800026a8:	00813083          	ld	ra,8(sp)
    800026ac:	00013403          	ld	s0,0(sp)
    800026b0:	01010113          	addi	sp,sp,16
    800026b4:	00008067          	ret

00000000800026b8 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    800026b8:	ff010113          	addi	sp,sp,-16
    800026bc:	00113423          	sd	ra,8(sp)
    800026c0:	00813023          	sd	s0,0(sp)
    800026c4:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    800026c8:	0000a517          	auipc	a0,0xa
    800026cc:	69050513          	addi	a0,a0,1680 # 8000cd58 <_ZN7Konsole11outputItemsE>
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	050080e7          	jalr	80(ra) # 80001720 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    800026d8:	0000a797          	auipc	a5,0xa
    800026dc:	5907b783          	ld	a5,1424(a5) # 8000cc68 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026e0:	0007b783          	ld	a5,0(a5)
    800026e4:	0007c783          	lbu	a5,0(a5)
    800026e8:	0ff7f793          	andi	a5,a5,255
    800026ec:	0207f793          	andi	a5,a5,32
    800026f0:	fe0784e3          	beqz	a5,800026d8 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    800026f4:	0000a717          	auipc	a4,0xa
    800026f8:	66470713          	addi	a4,a4,1636 # 8000cd58 <_ZN7Konsole11outputItemsE>
    800026fc:	01872783          	lw	a5,24(a4)
    80002700:	01c72703          	lw	a4,28(a4)
    80002704:	fce782e3          	beq	a5,a4,800026c8 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002708:	0000a697          	auipc	a3,0xa
    8000270c:	65068693          	addi	a3,a3,1616 # 8000cd58 <_ZN7Konsole11outputItemsE>
    80002710:	00f68733          	add	a4,a3,a5
    80002714:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    80002718:	0017879b          	addiw	a5,a5,1
    8000271c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002720:	0187571b          	srliw	a4,a4,0x18
    80002724:	00e787bb          	addw	a5,a5,a4
    80002728:	0ff7f793          	andi	a5,a5,255
    8000272c:	40e787bb          	subw	a5,a5,a4
    80002730:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    80002734:	0000a797          	auipc	a5,0xa
    80002738:	54c7b783          	ld	a5,1356(a5) # 8000cc80 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000273c:	0007b783          	ld	a5,0(a5)
    80002740:	00c78023          	sb	a2,0(a5)
    80002744:	f85ff06f          	j	800026c8 <_ZN7Konsole16outputThreadBodyEPv+0x10>

0000000080002748 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    80002748:	fe010113          	addi	sp,sp,-32
    8000274c:	00113c23          	sd	ra,24(sp)
    80002750:	00813823          	sd	s0,16(sp)
    80002754:	00913423          	sd	s1,8(sp)
    80002758:	02010413          	addi	s0,sp,32
    8000275c:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80002760:	00000593          	li	a1,0
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	67c080e7          	jalr	1660(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    8000276c:	0000a597          	auipc	a1,0xa
    80002770:	70c5b583          	ld	a1,1804(a1) # 8000ce78 <_ZN7Konsole14getcWaiterTailE>
    80002774:	04058063          	beqz	a1,800027b4 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    80002778:	00048513          	mv	a0,s1
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	680080e7          	jalr	1664(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    80002784:	00048593          	mv	a1,s1
    80002788:	0000a517          	auipc	a0,0xa
    8000278c:	6f053503          	ld	a0,1776(a0) # 8000ce78 <_ZN7Konsole14getcWaiterTailE>
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	650080e7          	jalr	1616(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    80002798:	0000a797          	auipc	a5,0xa
    8000279c:	6e97b023          	sd	s1,1760(a5) # 8000ce78 <_ZN7Konsole14getcWaiterTailE>
}
    800027a0:	01813083          	ld	ra,24(sp)
    800027a4:	01013403          	ld	s0,16(sp)
    800027a8:	00813483          	ld	s1,8(sp)
    800027ac:	02010113          	addi	sp,sp,32
    800027b0:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800027b4:	00000593          	li	a1,0
    800027b8:	00048513          	mv	a0,s1
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	640080e7          	jalr	1600(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    800027c4:	0000a797          	auipc	a5,0xa
    800027c8:	6a97be23          	sd	s1,1724(a5) # 8000ce80 <_ZN7Konsole14getcWaiterHeadE>
    800027cc:	fcdff06f          	j	80002798 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

00000000800027d0 <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    800027d0:	fe010113          	addi	sp,sp,-32
    800027d4:	00113c23          	sd	ra,24(sp)
    800027d8:	00813823          	sd	s0,16(sp)
    800027dc:	00913423          	sd	s1,8(sp)
    800027e0:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    800027e4:	0000a497          	auipc	s1,0xa
    800027e8:	69c4b483          	ld	s1,1692(s1) # 8000ce80 <_ZN7Konsole14getcWaiterHeadE>
    800027ec:	04048463          	beqz	s1,80002834 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    800027f0:	00048513          	mv	a0,s1
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	5b4080e7          	jalr	1460(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    800027fc:	0000a797          	auipc	a5,0xa
    80002800:	68a7b223          	sd	a0,1668(a5) # 8000ce80 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002804:	04050463          	beqz	a0,8000284c <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002808:	00000593          	li	a1,0
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	5f0080e7          	jalr	1520(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    80002814:	00000593          	li	a1,0
    80002818:	00048513          	mv	a0,s1
    8000281c:	fffff097          	auipc	ra,0xfffff
    80002820:	5c4080e7          	jalr	1476(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80002824:	00000593          	li	a1,0
    80002828:	00048513          	mv	a0,s1
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	5d0080e7          	jalr	1488(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
}
    80002834:	00048513          	mv	a0,s1
    80002838:	01813083          	ld	ra,24(sp)
    8000283c:	01013403          	ld	s0,16(sp)
    80002840:	00813483          	ld	s1,8(sp)
    80002844:	02010113          	addi	sp,sp,32
    80002848:	00008067          	ret
    else getcWaiterTail = nullptr;
    8000284c:	0000a797          	auipc	a5,0xa
    80002850:	6207b623          	sd	zero,1580(a5) # 8000ce78 <_ZN7Konsole14getcWaiterTailE>
    80002854:	fc1ff06f          	j	80002814 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

0000000080002858 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    80002858:	fe010113          	addi	sp,sp,-32
    8000285c:	00113c23          	sd	ra,24(sp)
    80002860:	00813823          	sd	s0,16(sp)
    80002864:	00913423          	sd	s1,8(sp)
    80002868:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    8000286c:	0000a517          	auipc	a0,0xa
    80002870:	4ec50513          	addi	a0,a0,1260 # 8000cd58 <_ZN7Konsole11outputItemsE>
    80002874:	12052823          	sw	zero,304(a0)
    80002878:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    8000287c:	00052c23          	sw	zero,24(a0)
    80002880:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    80002884:	12053423          	sd	zero,296(a0)
    80002888:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    8000288c:	00000593          	li	a1,0
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	05c080e7          	jalr	92(ra) # 800018ec <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002898:	00001097          	auipc	ra,0x1
    8000289c:	02c080e7          	jalr	44(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    800028a0:	18000593          	li	a1,384
    800028a4:	00001097          	auipc	ra,0x1
    800028a8:	07c080e7          	jalr	124(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800028ac:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	400080e7          	jalr	1024(ra) # 80001cb0 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800028b8:	00000797          	auipc	a5,0x0
    800028bc:	e0078793          	addi	a5,a5,-512 # 800026b8 <_ZN7Konsole16outputThreadBodyEPv>
    800028c0:	00f4b023          	sd	a5,0(s1)
    800028c4:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800028c8:	00001097          	auipc	ra,0x1
    800028cc:	ffc080e7          	jalr	-4(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    800028d0:	000085b7          	lui	a1,0x8
    800028d4:	00001097          	auipc	ra,0x1
    800028d8:	04c080e7          	jalr	76(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    800028dc:	00008637          	lui	a2,0x8
    800028e0:	00c50633          	add	a2,a0,a2
    800028e4:	00000593          	li	a1,0
    800028e8:	00048513          	mv	a0,s1
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	57c080e7          	jalr	1404(ra) # 80001e68 <_ZN7KThread5setupEPS_Pm>
    outputThread->threadContext.sstatus |= (1UL << 8);
    800028f4:	1704b783          	ld	a5,368(s1)
    800028f8:	1007e793          	ori	a5,a5,256
    800028fc:	16f4b823          	sd	a5,368(s1)
    Scheduler::Put(outputThread);
    80002900:	00048513          	mv	a0,s1
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	7b0080e7          	jalr	1968(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
}
    8000290c:	01813083          	ld	ra,24(sp)
    80002910:	01013403          	ld	s0,16(sp)
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret

0000000080002920 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    80002920:	fe010113          	addi	sp,sp,-32
    80002924:	00113c23          	sd	ra,24(sp)
    80002928:	00813823          	sd	s0,16(sp)
    8000292c:	00913423          	sd	s1,8(sp)
    80002930:	01213023          	sd	s2,0(sp)
    80002934:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    80002938:	00005097          	auipc	ra,0x5
    8000293c:	4ac080e7          	jalr	1196(ra) # 80007de4 <plic_claim>
    80002940:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    80002944:	00a00793          	li	a5,10
    80002948:	02f50663          	beq	a0,a5,80002974 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    8000294c:	0a049463          	bnez	s1,800029f4 <_ZN7Konsole15handleInterruptEv+0xd4>
}
    80002950:	01813083          	ld	ra,24(sp)
    80002954:	01013403          	ld	s0,16(sp)
    80002958:	00813483          	ld	s1,8(sp)
    8000295c:	00013903          	ld	s2,0(sp)
    80002960:	02010113          	addi	sp,sp,32
    80002964:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    80002968:	0b253c23          	sd	s2,184(a0)
                Scheduler::Put(waiter);
    8000296c:	fffff097          	auipc	ra,0xfffff
    80002970:	748080e7          	jalr	1864(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80002974:	0000a797          	auipc	a5,0xa
    80002978:	2f47b783          	ld	a5,756(a5) # 8000cc68 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000297c:	0007b783          	ld	a5,0(a5)
    80002980:	0007c783          	lbu	a5,0(a5)
    80002984:	0017f793          	andi	a5,a5,1
    80002988:	fc0782e3          	beqz	a5,8000294c <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    8000298c:	0000a797          	auipc	a5,0xa
    80002990:	2d47b783          	ld	a5,724(a5) # 8000cc60 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002994:	0007b783          	ld	a5,0(a5)
    80002998:	0007c783          	lbu	a5,0(a5)
    8000299c:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	e30080e7          	jalr	-464(ra) # 800027d0 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    800029a8:	fc0510e3          	bnez	a0,80002968 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    800029ac:	0000a617          	auipc	a2,0xa
    800029b0:	3ac60613          	addi	a2,a2,940 # 8000cd58 <_ZN7Konsole11outputItemsE>
    800029b4:	13462683          	lw	a3,308(a2)
    800029b8:	0016879b          	addiw	a5,a3,1
    800029bc:	41f7d71b          	sraiw	a4,a5,0x1f
    800029c0:	0187571b          	srliw	a4,a4,0x18
    800029c4:	00e787bb          	addw	a5,a5,a4
    800029c8:	0ff7f793          	andi	a5,a5,255
    800029cc:	40e787bb          	subw	a5,a5,a4
    800029d0:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    800029d4:	13062603          	lw	a2,304(a2)
    800029d8:	f8e60ee3          	beq	a2,a4,80002974 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    800029dc:	0000a717          	auipc	a4,0xa
    800029e0:	37c70713          	addi	a4,a4,892 # 8000cd58 <_ZN7Konsole11outputItemsE>
    800029e4:	00d706b3          	add	a3,a4,a3
    800029e8:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    800029ec:	12f72a23          	sw	a5,308(a4)
    800029f0:	f85ff06f          	j	80002974 <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    800029f4:	00048513          	mv	a0,s1
    800029f8:	00005097          	auipc	ra,0x5
    800029fc:	424080e7          	jalr	1060(ra) # 80007e1c <plic_complete>
}
    80002a00:	f51ff06f          	j	80002950 <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002a04 <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	02010413          	addi	s0,sp,32
    80002a18:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    80002a1c:	0000a617          	auipc	a2,0xa
    80002a20:	33c60613          	addi	a2,a2,828 # 8000cd58 <_ZN7Konsole11outputItemsE>
    80002a24:	01c62683          	lw	a3,28(a2)
    80002a28:	0016879b          	addiw	a5,a3,1
    80002a2c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002a30:	0187571b          	srliw	a4,a4,0x18
    80002a34:	00e787bb          	addw	a5,a5,a4
    80002a38:	0ff7f793          	andi	a5,a5,255
    80002a3c:	40e787bb          	subw	a5,a5,a4
    80002a40:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    80002a44:	01862603          	lw	a2,24(a2)
    80002a48:	04e60063          	beq	a2,a4,80002a88 <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    80002a4c:	0000a517          	auipc	a0,0xa
    80002a50:	30c50513          	addi	a0,a0,780 # 8000cd58 <_ZN7Konsole11outputItemsE>
    80002a54:	00d506b3          	add	a3,a0,a3
    80002a58:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    80002a5c:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	024080e7          	jalr	36(ra) # 80001a84 <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    80002a68:	02048a63          	beqz	s1,80002a9c <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    80002a6c:	0a04bc23          	sd	zero,184(s1)
    return 0;
    80002a70:	00000513          	li	a0,0
}
    80002a74:	01813083          	ld	ra,24(sp)
    80002a78:	01013403          	ld	s0,16(sp)
    80002a7c:	00813483          	ld	s1,8(sp)
    80002a80:	02010113          	addi	sp,sp,32
    80002a84:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    80002a88:	00050663          	beqz	a0,80002a94 <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    80002a8c:	fff00793          	li	a5,-1
    80002a90:	0af53c23          	sd	a5,184(a0)
        return -1;
    80002a94:	fff00513          	li	a0,-1
    80002a98:	fddff06f          	j	80002a74 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    80002a9c:	00000513          	li	a0,0
    80002aa0:	fd5ff06f          	j	80002a74 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

0000000080002aa4 <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    80002aa4:	0000a717          	auipc	a4,0xa
    80002aa8:	2b470713          	addi	a4,a4,692 # 8000cd58 <_ZN7Konsole11outputItemsE>
    80002aac:	13072783          	lw	a5,304(a4)
    80002ab0:	13472703          	lw	a4,308(a4)
    80002ab4:	04e78063          	beq	a5,a4,80002af4 <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    80002ab8:	0000a617          	auipc	a2,0xa
    80002abc:	2a060613          	addi	a2,a2,672 # 8000cd58 <_ZN7Konsole11outputItemsE>
    80002ac0:	00f60733          	add	a4,a2,a5
    80002ac4:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    80002ac8:	0017879b          	addiw	a5,a5,1
    80002acc:	41f7d71b          	sraiw	a4,a5,0x1f
    80002ad0:	0187571b          	srliw	a4,a4,0x18
    80002ad4:	00e787bb          	addw	a5,a5,a4
    80002ad8:	0ff7f793          	andi	a5,a5,255
    80002adc:	40e787bb          	subw	a5,a5,a4
    80002ae0:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002ae4:	00050463          	beqz	a0,80002aec <_ZN7Konsole10getcKernelEP7KThread+0x48>
    80002ae8:	0ad53c23          	sd	a3,184(a0)
        return (unsigned char)c;
    80002aec:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002af0:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	00813023          	sd	s0,0(sp)
    80002b00:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	c44080e7          	jalr	-956(ra) # 80002748 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    80002b0c:	ffe00513          	li	a0,-2
    80002b10:	00813083          	ld	ra,8(sp)
    80002b14:	00013403          	ld	s0,0(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <userMainK>:
void userMain();
void myUserMain();

extern "C" void userMainK(void) {
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00113423          	sd	ra,8(sp)
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    const bool mytests=true;
    if (!mytests) {
        userMain();
    }
    myUserMain();
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	65c080e7          	jalr	1628(ra) # 8000318c <_Z10myUserMainv>
}
    80002b38:	00813083          	ld	ra,8(sp)
    80002b3c:	00013403          	ld	s0,0(sp)
    80002b40:	01010113          	addi	sp,sp,16
    80002b44:	00008067          	ret

0000000080002b48 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    80002b48:	ff010113          	addi	sp,sp,-16
    80002b4c:	00113423          	sd	ra,8(sp)
    80002b50:	00813023          	sd	s0,0(sp)
    80002b54:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    80002b58:	03e00513          	li	a0,62
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	c68080e7          	jalr	-920(ra) # 800037c4 <_ZN7Console4putcEc>
    80002b64:	00c0006f          	j	80002b70 <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	c5c080e7          	jalr	-932(ra) # 800037c4 <_ZN7Console4putcEc>
        char c = Console::getc();
    80002b70:	00001097          	auipc	ra,0x1
    80002b74:	c2c080e7          	jalr	-980(ra) # 8000379c <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002b78:	00d00793          	li	a5,13
    80002b7c:	fef50ae3          	beq	a0,a5,80002b70 <_ZL8echoFuncPv+0x28>
    80002b80:	fe9ff06f          	j	80002b68 <_ZL8echoFuncPv+0x20>

0000000080002b84 <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    80002b84:	fb010113          	addi	sp,sp,-80
    80002b88:	04113423          	sd	ra,72(sp)
    80002b8c:	04813023          	sd	s0,64(sp)
    80002b90:	02913c23          	sd	s1,56(sp)
    80002b94:	03213823          	sd	s2,48(sp)
    80002b98:	03313423          	sd	s3,40(sp)
    80002b9c:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    80002ba0:	00400513          	li	a0,4
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	9b0080e7          	jalr	-1616(ra) # 80001554 <mem_alloc>
    80002bac:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    80002bb0:	04300793          	li	a5,67
    80002bb4:	00f50023          	sb	a5,0(a0)
    80002bb8:	02b00793          	li	a5,43
    80002bbc:	00f500a3          	sb	a5,1(a0)
    80002bc0:	00f50123          	sb	a5,2(a0)
    80002bc4:	00a00793          	li	a5,10
    80002bc8:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    80002bcc:	04300513          	li	a0,67
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	bf4080e7          	jalr	-1036(ra) # 800037c4 <_ZN7Console4putcEc>
    80002bd8:	0014c503          	lbu	a0,1(s1)
    80002bdc:	00001097          	auipc	ra,0x1
    80002be0:	be8080e7          	jalr	-1048(ra) # 800037c4 <_ZN7Console4putcEc>
    80002be4:	0024c503          	lbu	a0,2(s1)
    80002be8:	00001097          	auipc	ra,0x1
    80002bec:	bdc080e7          	jalr	-1060(ra) # 800037c4 <_ZN7Console4putcEc>
    80002bf0:	0034c503          	lbu	a0,3(s1)
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	bd0080e7          	jalr	-1072(ra) # 800037c4 <_ZN7Console4putcEc>
    mem_free(buf);
    80002bfc:	00048513          	mv	a0,s1
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	980080e7          	jalr	-1664(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002c08:	00100593          	li	a1,1
    80002c0c:	fc040513          	addi	a0,s0,-64
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	a64080e7          	jalr	-1436(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    80002c18:	00000593          	li	a1,0
    80002c1c:	fb040513          	addi	a0,s0,-80
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	a54080e7          	jalr	-1452(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002c28:	03800513          	li	a0,56
    80002c2c:	00001097          	auipc	ra,0x1
    80002c30:	88c080e7          	jalr	-1908(ra) # 800034b8 <_Znwm>
    80002c34:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	968080e7          	jalr	-1688(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80002c40:	0000a797          	auipc	a5,0xa
    80002c44:	d5878793          	addi	a5,a5,-680 # 8000c998 <_ZTV6Worker+0x10>
    80002c48:	00f9b023          	sd	a5,0(s3)
    80002c4c:	04100793          	li	a5,65
    80002c50:	02f98023          	sb	a5,32(s3)
    80002c54:	fc040793          	addi	a5,s0,-64
    80002c58:	02f9b423          	sd	a5,40(s3)
    80002c5c:	fb040793          	addi	a5,s0,-80
    80002c60:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    80002c64:	03800513          	li	a0,56
    80002c68:	00001097          	auipc	ra,0x1
    80002c6c:	850080e7          	jalr	-1968(ra) # 800034b8 <_Znwm>
    80002c70:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c74:	00001097          	auipc	ra,0x1
    80002c78:	92c080e7          	jalr	-1748(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80002c7c:	0000a797          	auipc	a5,0xa
    80002c80:	d1c78793          	addi	a5,a5,-740 # 8000c998 <_ZTV6Worker+0x10>
    80002c84:	00f93023          	sd	a5,0(s2)
    80002c88:	04200793          	li	a5,66
    80002c8c:	02f90023          	sb	a5,32(s2)
    80002c90:	fc040793          	addi	a5,s0,-64
    80002c94:	02f93423          	sd	a5,40(s2)
    80002c98:	fb040793          	addi	a5,s0,-80
    80002c9c:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    80002ca0:	03800513          	li	a0,56
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	814080e7          	jalr	-2028(ra) # 800034b8 <_Znwm>
    80002cac:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	8f0080e7          	jalr	-1808(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80002cb8:	0000a797          	auipc	a5,0xa
    80002cbc:	ce078793          	addi	a5,a5,-800 # 8000c998 <_ZTV6Worker+0x10>
    80002cc0:	00f4b023          	sd	a5,0(s1)
    80002cc4:	04300793          	li	a5,67
    80002cc8:	02f48023          	sb	a5,32(s1)
    80002ccc:	fc040793          	addi	a5,s0,-64
    80002cd0:	02f4b423          	sd	a5,40(s1)
    80002cd4:	fb040793          	addi	a5,s0,-80
    80002cd8:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    80002cdc:	00098513          	mv	a0,s3
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	8f0080e7          	jalr	-1808(ra) # 800035d0 <_ZN6Thread5startEv>
    80002ce8:	00090513          	mv	a0,s2
    80002cec:	00001097          	auipc	ra,0x1
    80002cf0:	8e4080e7          	jalr	-1820(ra) # 800035d0 <_ZN6Thread5startEv>
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	8d8080e7          	jalr	-1832(ra) # 800035d0 <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002d00:	fb040513          	addi	a0,s0,-80
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	9a8080e7          	jalr	-1624(ra) # 800036ac <_ZN9Semaphore4waitEv>
    80002d0c:	fb040513          	addi	a0,s0,-80
    80002d10:	00001097          	auipc	ra,0x1
    80002d14:	99c080e7          	jalr	-1636(ra) # 800036ac <_ZN9Semaphore4waitEv>
    80002d18:	fb040513          	addi	a0,s0,-80
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	990080e7          	jalr	-1648(ra) # 800036ac <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002d24:	00098a63          	beqz	s3,80002d38 <userMainCpp+0x1b4>
    80002d28:	0009b783          	ld	a5,0(s3)
    80002d2c:	0087b783          	ld	a5,8(a5)
    80002d30:	00098513          	mv	a0,s3
    80002d34:	000780e7          	jalr	a5
    80002d38:	00090a63          	beqz	s2,80002d4c <userMainCpp+0x1c8>
    80002d3c:	00093783          	ld	a5,0(s2)
    80002d40:	0087b783          	ld	a5,8(a5)
    80002d44:	00090513          	mv	a0,s2
    80002d48:	000780e7          	jalr	a5
    80002d4c:	00048a63          	beqz	s1,80002d60 <userMainCpp+0x1dc>
    80002d50:	0004b783          	ld	a5,0(s1)
    80002d54:	0087b783          	ld	a5,8(a5)
    80002d58:	00048513          	mv	a0,s1
    80002d5c:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002d60:	00a00513          	li	a0,10
    80002d64:	00001097          	auipc	ra,0x1
    80002d68:	a60080e7          	jalr	-1440(ra) # 800037c4 <_ZN7Console4putcEc>
    80002d6c:	04f00513          	li	a0,79
    80002d70:	00001097          	auipc	ra,0x1
    80002d74:	a54080e7          	jalr	-1452(ra) # 800037c4 <_ZN7Console4putcEc>
    80002d78:	04b00513          	li	a0,75
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	a48080e7          	jalr	-1464(ra) # 800037c4 <_ZN7Console4putcEc>
    80002d84:	00a00513          	li	a0,10
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	a3c080e7          	jalr	-1476(ra) # 800037c4 <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    80002d90:	02800513          	li	a0,40
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	724080e7          	jalr	1828(ra) # 800034b8 <_Znwm>
    80002d9c:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002da0:	00300593          	li	a1,3
    80002da4:	00001097          	auipc	ra,0x1
    80002da8:	98c080e7          	jalr	-1652(ra) # 80003730 <_ZN14PeriodicThreadC1Em>
    80002dac:	0000a797          	auipc	a5,0xa
    80002db0:	c1478793          	addi	a5,a5,-1004 # 8000c9c0 <_ZTV6Ticker+0x10>
    80002db4:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	00001097          	auipc	ra,0x1
    80002dc0:	814080e7          	jalr	-2028(ra) # 800035d0 <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002dc4:	00f00513          	li	a0,15
    80002dc8:	00001097          	auipc	ra,0x1
    80002dcc:	884080e7          	jalr	-1916(ra) # 8000364c <_ZN6Thread5sleepEm>
    t->terminate();
    80002dd0:	00048513          	mv	a0,s1
    80002dd4:	00001097          	auipc	ra,0x1
    80002dd8:	9ac080e7          	jalr	-1620(ra) # 80003780 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002ddc:	00500513          	li	a0,5
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	86c080e7          	jalr	-1940(ra) # 8000364c <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002de8:	00a00513          	li	a0,10
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	9d8080e7          	jalr	-1576(ra) # 800037c4 <_ZN7Console4putcEc>
    delete t;
    80002df4:	00048a63          	beqz	s1,80002e08 <userMainCpp+0x284>
    80002df8:	0004b783          	ld	a5,0(s1)
    80002dfc:	0087b783          	ld	a5,8(a5)
    80002e00:	00048513          	mv	a0,s1
    80002e04:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002e08:	02000513          	li	a0,32
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	6ac080e7          	jalr	1708(ra) # 800034b8 <_Znwm>
    80002e14:	00050493          	mv	s1,a0
    80002e18:	00000613          	li	a2,0
    80002e1c:	00000597          	auipc	a1,0x0
    80002e20:	d2c58593          	addi	a1,a1,-724 # 80002b48 <_ZL8echoFuncPv>
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	74c080e7          	jalr	1868(ra) # 80003570 <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002e2c:	00048513          	mv	a0,s1
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	7a0080e7          	jalr	1952(ra) # 800035d0 <_ZN6Thread5startEv>
    while (true) {}
    80002e38:	0000006f          	j	80002e38 <userMainCpp+0x2b4>
    80002e3c:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002e40:	00098513          	mv	a0,s3
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	69c080e7          	jalr	1692(ra) # 800034e0 <_ZdlPv>
    Semaphore mx(1), done(0);
    80002e4c:	fb040513          	addi	a0,s0,-80
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	630080e7          	jalr	1584(ra) # 80003480 <_ZN9SemaphoreD1Ev>
    80002e58:	fc040513          	addi	a0,s0,-64
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	624080e7          	jalr	1572(ra) # 80003480 <_ZN9SemaphoreD1Ev>
    80002e64:	00048513          	mv	a0,s1
    80002e68:	0000b097          	auipc	ra,0xb
    80002e6c:	250080e7          	jalr	592(ra) # 8000e0b8 <_Unwind_Resume>
    80002e70:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002e74:	00090513          	mv	a0,s2
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	668080e7          	jalr	1640(ra) # 800034e0 <_ZdlPv>
    80002e80:	fcdff06f          	j	80002e4c <userMainCpp+0x2c8>
    80002e84:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	654080e7          	jalr	1620(ra) # 800034e0 <_ZdlPv>
    80002e94:	00090493          	mv	s1,s2
    80002e98:	fb5ff06f          	j	80002e4c <userMainCpp+0x2c8>
    80002e9c:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002ea0:	00048513          	mv	a0,s1
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	63c080e7          	jalr	1596(ra) # 800034e0 <_ZdlPv>
    80002eac:	00090493          	mv	s1,s2
    80002eb0:	f9dff06f          	j	80002e4c <userMainCpp+0x2c8>
    80002eb4:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	624080e7          	jalr	1572(ra) # 800034e0 <_ZdlPv>
    80002ec4:	00090493          	mv	s1,s2
    80002ec8:	f85ff06f          	j	80002e4c <userMainCpp+0x2c8>
    80002ecc:	00050493          	mv	s1,a0
    80002ed0:	f7dff06f          	j	80002e4c <userMainCpp+0x2c8>
    80002ed4:	00050493          	mv	s1,a0
    80002ed8:	f81ff06f          	j	80002e58 <userMainCpp+0x2d4>

0000000080002edc <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002edc:	ff010113          	addi	sp,sp,-16
    80002ee0:	00113423          	sd	ra,8(sp)
    80002ee4:	00813023          	sd	s0,0(sp)
    80002ee8:	01010413          	addi	s0,sp,16
    80002eec:	02e00513          	li	a0,46
    80002ef0:	00001097          	auipc	ra,0x1
    80002ef4:	8d4080e7          	jalr	-1836(ra) # 800037c4 <_ZN7Console4putcEc>
    80002ef8:	00813083          	ld	ra,8(sp)
    80002efc:	00013403          	ld	s0,0(sp)
    80002f00:	01010113          	addi	sp,sp,16
    80002f04:	00008067          	ret

0000000080002f08 <_ZN6Worker3runEv>:
    void run() override {
    80002f08:	fe010113          	addi	sp,sp,-32
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	01213023          	sd	s2,0(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002f24:	00000913          	li	s2,0
    80002f28:	0500006f          	j	80002f78 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002f2c:	0284b503          	ld	a0,40(s1)
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	77c080e7          	jalr	1916(ra) # 800036ac <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002f38:	05b00513          	li	a0,91
    80002f3c:	00001097          	auipc	ra,0x1
    80002f40:	888080e7          	jalr	-1912(ra) # 800037c4 <_ZN7Console4putcEc>
    80002f44:	0204c503          	lbu	a0,32(s1)
    80002f48:	00001097          	auipc	ra,0x1
    80002f4c:	87c080e7          	jalr	-1924(ra) # 800037c4 <_ZN7Console4putcEc>
    80002f50:	05d00513          	li	a0,93
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	870080e7          	jalr	-1936(ra) # 800037c4 <_ZN7Console4putcEc>
            mx->signal();
    80002f5c:	0284b503          	ld	a0,40(s1)
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	778080e7          	jalr	1912(ra) # 800036d8 <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002f68:	00200513          	li	a0,2
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	6e0080e7          	jalr	1760(ra) # 8000364c <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002f74:	0019091b          	addiw	s2,s2,1
    80002f78:	00200793          	li	a5,2
    80002f7c:	fb27d8e3          	bge	a5,s2,80002f2c <_ZN6Worker3runEv+0x24>
        done->signal();
    80002f80:	0304b503          	ld	a0,48(s1)
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	754080e7          	jalr	1876(ra) # 800036d8 <_ZN9Semaphore6signalEv>
    }
    80002f8c:	01813083          	ld	ra,24(sp)
    80002f90:	01013403          	ld	s0,16(sp)
    80002f94:	00813483          	ld	s1,8(sp)
    80002f98:	00013903          	ld	s2,0(sp)
    80002f9c:	02010113          	addi	sp,sp,32
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002fa4:	ff010113          	addi	sp,sp,-16
    80002fa8:	00113423          	sd	ra,8(sp)
    80002fac:	00813023          	sd	s0,0(sp)
    80002fb0:	01010413          	addi	s0,sp,16
    80002fb4:	0000a797          	auipc	a5,0xa
    80002fb8:	9e478793          	addi	a5,a5,-1564 # 8000c998 <_ZTV6Worker+0x10>
    80002fbc:	00f53023          	sd	a5,0(a0)
    80002fc0:	00000097          	auipc	ra,0x0
    80002fc4:	428080e7          	jalr	1064(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80002fc8:	00813083          	ld	ra,8(sp)
    80002fcc:	00013403          	ld	s0,0(sp)
    80002fd0:	01010113          	addi	sp,sp,16
    80002fd4:	00008067          	ret

0000000080002fd8 <_ZN6WorkerD0Ev>:
    80002fd8:	fe010113          	addi	sp,sp,-32
    80002fdc:	00113c23          	sd	ra,24(sp)
    80002fe0:	00813823          	sd	s0,16(sp)
    80002fe4:	00913423          	sd	s1,8(sp)
    80002fe8:	02010413          	addi	s0,sp,32
    80002fec:	00050493          	mv	s1,a0
    80002ff0:	0000a797          	auipc	a5,0xa
    80002ff4:	9a878793          	addi	a5,a5,-1624 # 8000c998 <_ZTV6Worker+0x10>
    80002ff8:	00f53023          	sd	a5,0(a0)
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	3ec080e7          	jalr	1004(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80003004:	00048513          	mv	a0,s1
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	4d8080e7          	jalr	1240(ra) # 800034e0 <_ZdlPv>
    80003010:	01813083          	ld	ra,24(sp)
    80003014:	01013403          	ld	s0,16(sp)
    80003018:	00813483          	ld	s1,8(sp)
    8000301c:	02010113          	addi	sp,sp,32
    80003020:	00008067          	ret

0000000080003024 <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80003024:	ff010113          	addi	sp,sp,-16
    80003028:	00113423          	sd	ra,8(sp)
    8000302c:	00813023          	sd	s0,0(sp)
    80003030:	01010413          	addi	s0,sp,16
    int wait();
    int signal();
private:
    sem_t myHandle;
};

    80003034:	0000a797          	auipc	a5,0xa
    80003038:	c447b783          	ld	a5,-956(a5) # 8000cc78 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000303c:	01078793          	addi	a5,a5,16
    80003040:	00f53023          	sd	a5,0(a0)
    80003044:	00000097          	auipc	ra,0x0
    80003048:	3a4080e7          	jalr	932(ra) # 800033e8 <_ZN6ThreadD1Ev>
    8000304c:	00813083          	ld	ra,8(sp)
    80003050:	00013403          	ld	s0,0(sp)
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00008067          	ret

000000008000305c <_ZN6TickerD0Ev>:
    8000305c:	fe010113          	addi	sp,sp,-32
    80003060:	00113c23          	sd	ra,24(sp)
    80003064:	00813823          	sd	s0,16(sp)
    80003068:	00913423          	sd	s1,8(sp)
    8000306c:	02010413          	addi	s0,sp,32
    80003070:	00050493          	mv	s1,a0
    80003074:	0000a797          	auipc	a5,0xa
    80003078:	c047b783          	ld	a5,-1020(a5) # 8000cc78 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000307c:	01078793          	addi	a5,a5,16
    80003080:	00f53023          	sd	a5,0(a0)
    80003084:	00000097          	auipc	ra,0x0
    80003088:	364080e7          	jalr	868(ra) # 800033e8 <_ZN6ThreadD1Ev>
    8000308c:	00048513          	mv	a0,s1
    80003090:	00000097          	auipc	ra,0x0
    80003094:	450080e7          	jalr	1104(ra) # 800034e0 <_ZdlPv>
    80003098:	01813083          	ld	ra,24(sp)
    8000309c:	01013403          	ld	s0,16(sp)
    800030a0:	00813483          	ld	s1,8(sp)
    800030a4:	02010113          	addi	sp,sp,32
    800030a8:	00008067          	ret

00000000800030ac <_ZN6TestTh10testThBodyEPv>:
    void run() override {
        testThBody(nullptr);

    }
};
void TestTh::testThBody(void* arg) {
    800030ac:	fe010113          	addi	sp,sp,-32
    800030b0:	00113c23          	sd	ra,24(sp)
    800030b4:	00813823          	sd	s0,16(sp)
    800030b8:	00913423          	sd	s1,8(sp)
    800030bc:	02010413          	addi	s0,sp,32
    for (long long i=0; i < 5;i++) {
    800030c0:	00000493          	li	s1,0
    800030c4:	00400793          	li	a5,4
    800030c8:	0297c463          	blt	a5,s1,800030f0 <_ZN6TestTh10testThBodyEPv+0x44>
        printString("a\n");
    800030cc:	00007517          	auipc	a0,0x7
    800030d0:	f5450513          	addi	a0,a0,-172 # 8000a020 <CONSOLE_STATUS+0x10>
    800030d4:	00003097          	auipc	ra,0x3
    800030d8:	3c0080e7          	jalr	960(ra) # 80006494 <_Z11printStringPKc>
        sleep(10);
    800030dc:	00a00513          	li	a0,10
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	56c080e7          	jalr	1388(ra) # 8000364c <_ZN6Thread5sleepEm>
    for (long long i=0; i < 5;i++) {
    800030e8:	00148493          	addi	s1,s1,1
    800030ec:	fd9ff06f          	j	800030c4 <_ZN6TestTh10testThBodyEPv+0x18>
    }
    printString("Thread1 Finished\n");
    800030f0:	00007517          	auipc	a0,0x7
    800030f4:	f3850513          	addi	a0,a0,-200 # 8000a028 <CONSOLE_STATUS+0x18>
    800030f8:	00003097          	auipc	ra,0x3
    800030fc:	39c080e7          	jalr	924(ra) # 80006494 <_Z11printStringPKc>
    thread_dispatch();
    80003100:	ffffe097          	auipc	ra,0xffffe
    80003104:	578080e7          	jalr	1400(ra) # 80001678 <thread_dispatch>
}
    80003108:	01813083          	ld	ra,24(sp)
    8000310c:	01013403          	ld	s0,16(sp)
    80003110:	00813483          	ld	s1,8(sp)
    80003114:	02010113          	addi	sp,sp,32
    80003118:	00008067          	ret

000000008000311c <_ZN7TestTh211testTh2BodyEPv>:
    void run() override {
        testTh2Body(nullptr);

    }
};
void TestTh2::testTh2Body(void* arg) {
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	02010413          	addi	s0,sp,32
    for (long long i=0; i < 5;i++) {
    80003130:	00000493          	li	s1,0
    80003134:	00400793          	li	a5,4
    80003138:	0297c463          	blt	a5,s1,80003160 <_ZN7TestTh211testTh2BodyEPv+0x44>
        printString("k\n");
    8000313c:	00007517          	auipc	a0,0x7
    80003140:	f0450513          	addi	a0,a0,-252 # 8000a040 <CONSOLE_STATUS+0x30>
    80003144:	00003097          	auipc	ra,0x3
    80003148:	350080e7          	jalr	848(ra) # 80006494 <_Z11printStringPKc>
        sleep(20);
    8000314c:	01400513          	li	a0,20
    80003150:	00000097          	auipc	ra,0x0
    80003154:	4fc080e7          	jalr	1276(ra) # 8000364c <_ZN6Thread5sleepEm>
    for (long long i=0; i < 5;i++) {
    80003158:	00148493          	addi	s1,s1,1
    8000315c:	fd9ff06f          	j	80003134 <_ZN7TestTh211testTh2BodyEPv+0x18>
    }
    printString("Thread2 Finished\n");
    80003160:	00007517          	auipc	a0,0x7
    80003164:	ee850513          	addi	a0,a0,-280 # 8000a048 <CONSOLE_STATUS+0x38>
    80003168:	00003097          	auipc	ra,0x3
    8000316c:	32c080e7          	jalr	812(ra) # 80006494 <_Z11printStringPKc>
    thread_dispatch();
    80003170:	ffffe097          	auipc	ra,0xffffe
    80003174:	508080e7          	jalr	1288(ra) # 80001678 <thread_dispatch>
}
    80003178:	01813083          	ld	ra,24(sp)
    8000317c:	01013403          	ld	s0,16(sp)
    80003180:	00813483          	ld	s1,8(sp)
    80003184:	02010113          	addi	sp,sp,32
    80003188:	00008067          	ret

000000008000318c <_Z10myUserMainv>:
void myUserMain() {
    8000318c:	fe010113          	addi	sp,sp,-32
    80003190:	00113c23          	sd	ra,24(sp)
    80003194:	00813823          	sd	s0,16(sp)
    80003198:	00913423          	sd	s1,8(sp)
    8000319c:	01213023          	sd	s2,0(sp)
    800031a0:	02010413          	addi	s0,sp,32
    getc();
    800031a4:	ffffe097          	auipc	ra,0xffffe
    800031a8:	604080e7          	jalr	1540(ra) # 800017a8 <getc>
    printString("Hello World!");
    800031ac:	00007517          	auipc	a0,0x7
    800031b0:	eb450513          	addi	a0,a0,-332 # 8000a060 <CONSOLE_STATUS+0x50>
    800031b4:	00003097          	auipc	ra,0x3
    800031b8:	2e0080e7          	jalr	736(ra) # 80006494 <_Z11printStringPKc>
    Thread* th1 = new TestTh();
    800031bc:	02000513          	li	a0,32
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	2f8080e7          	jalr	760(ra) # 800034b8 <_Znwm>
    800031c8:	00050913          	mv	s2,a0
    TestTh():Thread() {}
    800031cc:	00000097          	auipc	ra,0x0
    800031d0:	3d4080e7          	jalr	980(ra) # 800035a0 <_ZN6ThreadC1Ev>
    800031d4:	0000a797          	auipc	a5,0xa
    800031d8:	82478793          	addi	a5,a5,-2012 # 8000c9f8 <_ZTV6TestTh+0x10>
    800031dc:	00f93023          	sd	a5,0(s2)
    Thread* th2 = new TestTh2();
    800031e0:	02000513          	li	a0,32
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	2d4080e7          	jalr	724(ra) # 800034b8 <_Znwm>
    800031ec:	00050493          	mv	s1,a0
    TestTh2():Thread() {}
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	3b0080e7          	jalr	944(ra) # 800035a0 <_ZN6ThreadC1Ev>
    800031f8:	0000a797          	auipc	a5,0xa
    800031fc:	82878793          	addi	a5,a5,-2008 # 8000ca20 <_ZTV7TestTh2+0x10>
    80003200:	00f4b023          	sd	a5,0(s1)
    th1->start();
    80003204:	00090513          	mv	a0,s2
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	3c8080e7          	jalr	968(ra) # 800035d0 <_ZN6Thread5startEv>
    th1->dispatch();
    80003210:	00000097          	auipc	ra,0x0
    80003214:	414080e7          	jalr	1044(ra) # 80003624 <_ZN6Thread8dispatchEv>
    th2->start();
    80003218:	00048513          	mv	a0,s1
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	3b4080e7          	jalr	948(ra) # 800035d0 <_ZN6Thread5startEv>
    th2->dispatch();
    80003224:	00000097          	auipc	ra,0x0
    80003228:	400080e7          	jalr	1024(ra) # 80003624 <_ZN6Thread8dispatchEv>

    th2->join(th2);
    8000322c:	00048513          	mv	a0,s1
    80003230:	00000097          	auipc	ra,0x0
    80003234:	4d4080e7          	jalr	1236(ra) # 80003704 <_ZN6Thread4joinEPS_>
    th1->join(th1);
    80003238:	00090513          	mv	a0,s2
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	4c8080e7          	jalr	1224(ra) # 80003704 <_ZN6Thread4joinEPS_>
    printString("c\n");
    80003244:	00007517          	auipc	a0,0x7
    80003248:	e2c50513          	addi	a0,a0,-468 # 8000a070 <CONSOLE_STATUS+0x60>
    8000324c:	00003097          	auipc	ra,0x3
    80003250:	248080e7          	jalr	584(ra) # 80006494 <_Z11printStringPKc>

    while (true) {}
    80003254:	0000006f          	j	80003254 <_Z10myUserMainv+0xc8>
    80003258:	00050493          	mv	s1,a0
    Thread* th1 = new TestTh();
    8000325c:	00090513          	mv	a0,s2
    80003260:	00000097          	auipc	ra,0x0
    80003264:	280080e7          	jalr	640(ra) # 800034e0 <_ZdlPv>
    80003268:	00048513          	mv	a0,s1
    8000326c:	0000b097          	auipc	ra,0xb
    80003270:	e4c080e7          	jalr	-436(ra) # 8000e0b8 <_Unwind_Resume>
    80003274:	00050913          	mv	s2,a0
    Thread* th2 = new TestTh2();
    80003278:	00048513          	mv	a0,s1
    8000327c:	00000097          	auipc	ra,0x0
    80003280:	264080e7          	jalr	612(ra) # 800034e0 <_ZdlPv>
    80003284:	00090513          	mv	a0,s2
    80003288:	0000b097          	auipc	ra,0xb
    8000328c:	e30080e7          	jalr	-464(ra) # 8000e0b8 <_Unwind_Resume>

0000000080003290 <_ZN6TestThD1Ev>:
class TestTh: public Thread {
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00113423          	sd	ra,8(sp)
    80003298:	00813023          	sd	s0,0(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	00009797          	auipc	a5,0x9
    800032a4:	75878793          	addi	a5,a5,1880 # 8000c9f8 <_ZTV6TestTh+0x10>
    800032a8:	00f53023          	sd	a5,0(a0)
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	13c080e7          	jalr	316(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800032b4:	00813083          	ld	ra,8(sp)
    800032b8:	00013403          	ld	s0,0(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret

00000000800032c4 <_ZN6TestThD0Ev>:
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	02010413          	addi	s0,sp,32
    800032d8:	00050493          	mv	s1,a0
    800032dc:	00009797          	auipc	a5,0x9
    800032e0:	71c78793          	addi	a5,a5,1820 # 8000c9f8 <_ZTV6TestTh+0x10>
    800032e4:	00f53023          	sd	a5,0(a0)
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	100080e7          	jalr	256(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800032f0:	00048513          	mv	a0,s1
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	1ec080e7          	jalr	492(ra) # 800034e0 <_ZdlPv>
    800032fc:	01813083          	ld	ra,24(sp)
    80003300:	01013403          	ld	s0,16(sp)
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret

0000000080003310 <_ZN7TestTh2D1Ev>:
class TestTh2: public Thread {
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00113423          	sd	ra,8(sp)
    80003318:	00813023          	sd	s0,0(sp)
    8000331c:	01010413          	addi	s0,sp,16
    80003320:	00009797          	auipc	a5,0x9
    80003324:	70078793          	addi	a5,a5,1792 # 8000ca20 <_ZTV7TestTh2+0x10>
    80003328:	00f53023          	sd	a5,0(a0)
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	0bc080e7          	jalr	188(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_ZN7TestTh2D0Ev>:
    80003344:	fe010113          	addi	sp,sp,-32
    80003348:	00113c23          	sd	ra,24(sp)
    8000334c:	00813823          	sd	s0,16(sp)
    80003350:	00913423          	sd	s1,8(sp)
    80003354:	02010413          	addi	s0,sp,32
    80003358:	00050493          	mv	s1,a0
    8000335c:	00009797          	auipc	a5,0x9
    80003360:	6c478793          	addi	a5,a5,1732 # 8000ca20 <_ZTV7TestTh2+0x10>
    80003364:	00f53023          	sd	a5,0(a0)
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	080080e7          	jalr	128(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80003370:	00048513          	mv	a0,s1
    80003374:	00000097          	auipc	ra,0x0
    80003378:	16c080e7          	jalr	364(ra) # 800034e0 <_ZdlPv>
    8000337c:	01813083          	ld	ra,24(sp)
    80003380:	01013403          	ld	s0,16(sp)
    80003384:	00813483          	ld	s1,8(sp)
    80003388:	02010113          	addi	sp,sp,32
    8000338c:	00008067          	ret

0000000080003390 <_ZN6TestTh3runEv>:
    void run() override {
    80003390:	ff010113          	addi	sp,sp,-16
    80003394:	00113423          	sd	ra,8(sp)
    80003398:	00813023          	sd	s0,0(sp)
    8000339c:	01010413          	addi	s0,sp,16
        testThBody(nullptr);
    800033a0:	00000593          	li	a1,0
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	d08080e7          	jalr	-760(ra) # 800030ac <_ZN6TestTh10testThBodyEPv>
    }
    800033ac:	00813083          	ld	ra,8(sp)
    800033b0:	00013403          	ld	s0,0(sp)
    800033b4:	01010113          	addi	sp,sp,16
    800033b8:	00008067          	ret

00000000800033bc <_ZN7TestTh23runEv>:
    void run() override {
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00113423          	sd	ra,8(sp)
    800033c4:	00813023          	sd	s0,0(sp)
    800033c8:	01010413          	addi	s0,sp,16
        testTh2Body(nullptr);
    800033cc:	00000593          	li	a1,0
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	d4c080e7          	jalr	-692(ra) # 8000311c <_ZN7TestTh211testTh2BodyEPv>
    }
    800033d8:	00813083          	ld	ra,8(sp)
    800033dc:	00013403          	ld	s0,0(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00813423          	sd	s0,8(sp)
    800033f0:	01010413          	addi	s0,sp,16
    800033f4:	00813403          	ld	s0,8(sp)
    800033f8:	01010113          	addi	sp,sp,16
    800033fc:	00008067          	ret

0000000080003400 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00113423          	sd	ra,8(sp)
    80003408:	00813023          	sd	s0,0(sp)
    8000340c:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80003410:	00053783          	ld	a5,0(a0)
    80003414:	0107b783          	ld	a5,16(a5)
    80003418:	000780e7          	jalr	a5
}
    8000341c:	00813083          	ld	ra,8(sp)
    80003420:	00013403          	ld	s0,0(sp)
    80003424:	01010113          	addi	sp,sp,16
    80003428:	00008067          	ret

000000008000342c <_ZN14PeriodicThread3runEv>:
}


PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00113c23          	sd	ra,24(sp)
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	00050493          	mv	s1,a0
    while (period) {
    80003444:	0204b783          	ld	a5,32(s1)
    80003448:	02078263          	beqz	a5,8000346c <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    8000344c:	0004b783          	ld	a5,0(s1)
    80003450:	0187b783          	ld	a5,24(a5)
    80003454:	00048513          	mv	a0,s1
    80003458:	000780e7          	jalr	a5
        time_sleep(period);
    8000345c:	0204b503          	ld	a0,32(s1)
    80003460:	ffffe097          	auipc	ra,0xffffe
    80003464:	238080e7          	jalr	568(ra) # 80001698 <time_sleep>
    while (period) {
    80003468:	fddff06f          	j	80003444 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    8000346c:	01813083          	ld	ra,24(sp)
    80003470:	01013403          	ld	s0,16(sp)
    80003474:	00813483          	ld	s1,8(sp)
    80003478:	02010113          	addi	sp,sp,32
    8000347c:	00008067          	ret

0000000080003480 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80003480:	ff010113          	addi	sp,sp,-16
    80003484:	00113423          	sd	ra,8(sp)
    80003488:	00813023          	sd	s0,0(sp)
    8000348c:	01010413          	addi	s0,sp,16
    80003490:	00009797          	auipc	a5,0x9
    80003494:	5e078793          	addi	a5,a5,1504 # 8000ca70 <_ZTV9Semaphore+0x10>
    80003498:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000349c:	00853503          	ld	a0,8(a0)
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	258080e7          	jalr	600(ra) # 800016f8 <sem_close>
}
    800034a8:	00813083          	ld	ra,8(sp)
    800034ac:	00013403          	ld	s0,0(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret

00000000800034b8 <_Znwm>:
void* operator new(size_t size) {
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00113423          	sd	ra,8(sp)
    800034c0:	00813023          	sd	s0,0(sp)
    800034c4:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    800034c8:	ffffe097          	auipc	ra,0xffffe
    800034cc:	08c080e7          	jalr	140(ra) # 80001554 <mem_alloc>
    800034d0:	00813083          	ld	ra,8(sp)
    800034d4:	00013403          	ld	s0,0(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <_ZdlPv>:
void  operator delete(void* p)  {
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00113423          	sd	ra,8(sp)
    800034e8:	00813023          	sd	s0,0(sp)
    800034ec:	01010413          	addi	s0,sp,16
    mem_free(p); }
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	090080e7          	jalr	144(ra) # 80001580 <mem_free>
    800034f8:	00813083          	ld	ra,8(sp)
    800034fc:	00013403          	ld	s0,0(sp)
    80003500:	01010113          	addi	sp,sp,16
    80003504:	00008067          	ret

0000000080003508 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80003508:	ff010113          	addi	sp,sp,-16
    8000350c:	00113423          	sd	ra,8(sp)
    80003510:	00813023          	sd	s0,0(sp)
    80003514:	01010413          	addi	s0,sp,16
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	fc8080e7          	jalr	-56(ra) # 800034e0 <_ZdlPv>
    80003520:	00813083          	ld	ra,8(sp)
    80003524:	00013403          	ld	s0,0(sp)
    80003528:	01010113          	addi	sp,sp,16
    8000352c:	00008067          	ret

0000000080003530 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00113c23          	sd	ra,24(sp)
    80003538:	00813823          	sd	s0,16(sp)
    8000353c:	00913423          	sd	s1,8(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	00050493          	mv	s1,a0
}
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	f38080e7          	jalr	-200(ra) # 80003480 <_ZN9SemaphoreD1Ev>
    80003550:	00048513          	mv	a0,s1
    80003554:	00000097          	auipc	ra,0x0
    80003558:	f8c080e7          	jalr	-116(ra) # 800034e0 <_ZdlPv>
    8000355c:	01813083          	ld	ra,24(sp)
    80003560:	01013403          	ld	s0,16(sp)
    80003564:	00813483          	ld	s1,8(sp)
    80003568:	02010113          	addi	sp,sp,32
    8000356c:	00008067          	ret

0000000080003570 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    80003570:	ff010113          	addi	sp,sp,-16
    80003574:	00813423          	sd	s0,8(sp)
    80003578:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    8000357c:	00009797          	auipc	a5,0x9
    80003580:	4cc78793          	addi	a5,a5,1228 # 8000ca48 <_ZTV6Thread+0x10>
    80003584:	00f53023          	sd	a5,0(a0)
    80003588:	00053423          	sd	zero,8(a0)
    8000358c:	00b53823          	sd	a1,16(a0)
    80003590:	00c53c23          	sd	a2,24(a0)
    80003594:	00813403          	ld	s0,8(sp)
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret

00000000800035a0 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00813423          	sd	s0,8(sp)
    800035a8:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    800035ac:	00009797          	auipc	a5,0x9
    800035b0:	49c78793          	addi	a5,a5,1180 # 8000ca48 <_ZTV6Thread+0x10>
    800035b4:	00f53023          	sd	a5,0(a0)
    800035b8:	00053423          	sd	zero,8(a0)
    800035bc:	00053823          	sd	zero,16(a0)
    800035c0:	00053c23          	sd	zero,24(a0)
    800035c4:	00813403          	ld	s0,8(sp)
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret

00000000800035d0 <_ZN6Thread5startEv>:
int Thread::start() {
    800035d0:	ff010113          	addi	sp,sp,-16
    800035d4:	00113423          	sd	ra,8(sp)
    800035d8:	00813023          	sd	s0,0(sp)
    800035dc:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    800035e0:	01053783          	ld	a5,16(a0)
    800035e4:	02078663          	beqz	a5,80003610 <_ZN6Thread5startEv+0x40>
    800035e8:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    800035ec:	02078863          	beqz	a5,8000361c <_ZN6Thread5startEv+0x4c>
    800035f0:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    800035f4:	00850513          	addi	a0,a0,8
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	fb4080e7          	jalr	-76(ra) # 800015ac <thread_create>
}
    80003600:	00813083          	ld	ra,8(sp)
    80003604:	00013403          	ld	s0,0(sp)
    80003608:	01010113          	addi	sp,sp,16
    8000360c:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80003610:	00000597          	auipc	a1,0x0
    80003614:	df058593          	addi	a1,a1,-528 # 80003400 <_ZN6Thread7runBodyEPv>
    80003618:	fd5ff06f          	j	800035ec <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    8000361c:	00050613          	mv	a2,a0
    80003620:	fd5ff06f          	j	800035f4 <_ZN6Thread5startEv+0x24>

0000000080003624 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00113423          	sd	ra,8(sp)
    8000362c:	00813023          	sd	s0,0(sp)
    80003630:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	044080e7          	jalr	68(ra) # 80001678 <thread_dispatch>
}
    8000363c:	00813083          	ld	ra,8(sp)
    80003640:	00013403          	ld	s0,0(sp)
    80003644:	01010113          	addi	sp,sp,16
    80003648:	00008067          	ret

000000008000364c <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    8000364c:	ff010113          	addi	sp,sp,-16
    80003650:	00113423          	sd	ra,8(sp)
    80003654:	00813023          	sd	s0,0(sp)
    80003658:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	03c080e7          	jalr	60(ra) # 80001698 <time_sleep>
}
    80003664:	00813083          	ld	ra,8(sp)
    80003668:	00013403          	ld	s0,0(sp)
    8000366c:	01010113          	addi	sp,sp,16
    80003670:	00008067          	ret

0000000080003674 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00113423          	sd	ra,8(sp)
    8000367c:	00813023          	sd	s0,0(sp)
    80003680:	01010413          	addi	s0,sp,16
    80003684:	00009797          	auipc	a5,0x9
    80003688:	3ec78793          	addi	a5,a5,1004 # 8000ca70 <_ZTV9Semaphore+0x10>
    8000368c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80003690:	00850513          	addi	a0,a0,8
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	02c080e7          	jalr	44(ra) # 800016c0 <sem_open>
}
    8000369c:	00813083          	ld	ra,8(sp)
    800036a0:	00013403          	ld	s0,0(sp)
    800036a4:	01010113          	addi	sp,sp,16
    800036a8:	00008067          	ret

00000000800036ac <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00113423          	sd	ra,8(sp)
    800036b4:	00813023          	sd	s0,0(sp)
    800036b8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800036bc:	00853503          	ld	a0,8(a0)
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	060080e7          	jalr	96(ra) # 80001720 <sem_wait>
}
    800036c8:	00813083          	ld	ra,8(sp)
    800036cc:	00013403          	ld	s0,0(sp)
    800036d0:	01010113          	addi	sp,sp,16
    800036d4:	00008067          	ret

00000000800036d8 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800036d8:	ff010113          	addi	sp,sp,-16
    800036dc:	00113423          	sd	ra,8(sp)
    800036e0:	00813023          	sd	s0,0(sp)
    800036e4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800036e8:	00853503          	ld	a0,8(a0)
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	05c080e7          	jalr	92(ra) # 80001748 <sem_signal>
}
    800036f4:	00813083          	ld	ra,8(sp)
    800036f8:	00013403          	ld	s0,0(sp)
    800036fc:	01010113          	addi	sp,sp,16
    80003700:	00008067          	ret

0000000080003704 <_ZN6Thread4joinEPS_>:
void Thread::join(Thread* thread) {
    80003704:	ff010113          	addi	sp,sp,-16
    80003708:	00113423          	sd	ra,8(sp)
    8000370c:	00813023          	sd	s0,0(sp)
    80003710:	01010413          	addi	s0,sp,16
    ::join(&thread->myHandle);
    80003714:	00850513          	addi	a0,a0,8
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	f14080e7          	jalr	-236(ra) # 8000162c <join>
}
    80003720:	00813083          	ld	ra,8(sp)
    80003724:	00013403          	ld	s0,0(sp)
    80003728:	01010113          	addi	sp,sp,16
    8000372c:	00008067          	ret

0000000080003730 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	00813823          	sd	s0,16(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	01213023          	sd	s2,0(sp)
    80003744:	02010413          	addi	s0,sp,32
    80003748:	00050493          	mv	s1,a0
    8000374c:	00058913          	mv	s2,a1
    80003750:	00000097          	auipc	ra,0x0
    80003754:	e50080e7          	jalr	-432(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80003758:	00009797          	auipc	a5,0x9
    8000375c:	33878793          	addi	a5,a5,824 # 8000ca90 <_ZTV14PeriodicThread+0x10>
    80003760:	00f4b023          	sd	a5,0(s1)
    80003764:	0324b023          	sd	s2,32(s1)
    80003768:	01813083          	ld	ra,24(sp)
    8000376c:	01013403          	ld	s0,16(sp)
    80003770:	00813483          	ld	s1,8(sp)
    80003774:	00013903          	ld	s2,0(sp)
    80003778:	02010113          	addi	sp,sp,32
    8000377c:	00008067          	ret

0000000080003780 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00813423          	sd	s0,8(sp)
    80003788:	01010413          	addi	s0,sp,16
    8000378c:	02053023          	sd	zero,32(a0)
    80003790:	00813403          	ld	s0,8(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00113423          	sd	ra,8(sp)
    800037a4:	00813023          	sd	s0,0(sp)
    800037a8:	01010413          	addi	s0,sp,16
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	ffc080e7          	jalr	-4(ra) # 800017a8 <getc>
    800037b4:	00813083          	ld	ra,8(sp)
    800037b8:	00013403          	ld	s0,0(sp)
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00008067          	ret

00000000800037c4 <_ZN7Console4putcEc>:
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00113423          	sd	ra,8(sp)
    800037cc:	00813023          	sd	s0,0(sp)
    800037d0:	01010413          	addi	s0,sp,16
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	ff8080e7          	jalr	-8(ra) # 800017cc <putc>
    800037dc:	00813083          	ld	ra,8(sp)
    800037e0:	00013403          	ld	s0,0(sp)
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00008067          	ret

00000000800037ec <_ZN6Thread3runEv>:
    static void dispatch();
    static void join(Thread* thread);
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    800037ec:	ff010113          	addi	sp,sp,-16
    800037f0:	00813423          	sd	s0,8(sp)
    800037f4:	01010413          	addi	s0,sp,16
    800037f8:	00813403          	ld	s0,8(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00813423          	sd	s0,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	00813403          	ld	s0,8(sp)
    80003814:	01010113          	addi	sp,sp,16
    80003818:	00008067          	ret

000000008000381c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000381c:	ff010113          	addi	sp,sp,-16
    80003820:	00813423          	sd	s0,8(sp)
    80003824:	01010413          	addi	s0,sp,16
    80003828:	00009797          	auipc	a5,0x9
    8000382c:	26878793          	addi	a5,a5,616 # 8000ca90 <_ZTV14PeriodicThread+0x10>
    80003830:	00f53023          	sd	a5,0(a0)
    80003834:	00813403          	ld	s0,8(sp)
    80003838:	01010113          	addi	sp,sp,16
    8000383c:	00008067          	ret

0000000080003840 <_ZN14PeriodicThreadD0Ev>:
    80003840:	ff010113          	addi	sp,sp,-16
    80003844:	00113423          	sd	ra,8(sp)
    80003848:	00813023          	sd	s0,0(sp)
    8000384c:	01010413          	addi	s0,sp,16
    80003850:	00009797          	auipc	a5,0x9
    80003854:	24078793          	addi	a5,a5,576 # 8000ca90 <_ZTV14PeriodicThread+0x10>
    80003858:	00f53023          	sd	a5,0(a0)
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	c84080e7          	jalr	-892(ra) # 800034e0 <_ZdlPv>
    80003864:	00813083          	ld	ra,8(sp)
    80003868:	00013403          	ld	s0,0(sp)
    8000386c:	01010113          	addi	sp,sp,16
    80003870:	00008067          	ret

0000000080003874 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80003874:	ff010113          	addi	sp,sp,-16
    80003878:	00813423          	sd	s0,8(sp)
    8000387c:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    80003880:	00009797          	auipc	a5,0x9
    80003884:	4187b783          	ld	a5,1048(a5) # 8000cc98 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003888:	0007b703          	ld	a4,0(a5)
    8000388c:	00009797          	auipc	a5,0x9
    80003890:	3e47b783          	ld	a5,996(a5) # 8000cc70 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003894:	0007b783          	ld	a5,0(a5)
    80003898:	40f70733          	sub	a4,a4,a5
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    8000389c:	00675713          	srli	a4,a4,0x6
    head = (Fragment*)HEAP_START_ADDR;
    800038a0:	00f53023          	sd	a5,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    800038a4:	00100693          	li	a3,1
    800038a8:	00d78823          	sb	a3,16(a5)
    startFrag->next=nullptr;
    800038ac:	0007b023          	sd	zero,0(a5)
    startFrag->size = HEAP_SIZE_BLCK;
    800038b0:	00e7bc23          	sd	a4,24(a5)
    startFrag->prev=nullptr;
    800038b4:	0007b423          	sd	zero,8(a5)
}
    800038b8:	00813403          	ld	s0,8(sp)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    800038c4:	00009797          	auipc	a5,0x9
    800038c8:	6cc7c783          	lbu	a5,1740(a5) # 8000cf90 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    800038cc:	00078863          	beqz	a5,800038dc <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    800038d0:	00009517          	auipc	a0,0x9
    800038d4:	6c850513          	addi	a0,a0,1736 # 8000cf98 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800038d8:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    800038dc:	ff010113          	addi	sp,sp,-16
    800038e0:	00113423          	sd	ra,8(sp)
    800038e4:	00813023          	sd	s0,0(sp)
    800038e8:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    800038ec:	00009517          	auipc	a0,0x9
    800038f0:	6ac50513          	addi	a0,a0,1708 # 8000cf98 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800038f4:	00000097          	auipc	ra,0x0
    800038f8:	f80080e7          	jalr	-128(ra) # 80003874 <_ZN15MemoryAllocatorC1Ev>
    800038fc:	00100793          	li	a5,1
    80003900:	00009717          	auipc	a4,0x9
    80003904:	68f70823          	sb	a5,1680(a4) # 8000cf90 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80003908:	00009517          	auipc	a0,0x9
    8000390c:	69050513          	addi	a0,a0,1680 # 8000cf98 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003910:	00813083          	ld	ra,8(sp)
    80003914:	00013403          	ld	s0,0(sp)
    80003918:	01010113          	addi	sp,sp,16
    8000391c:	00008067          	ret

0000000080003920 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    80003920:	ff010113          	addi	sp,sp,-16
    80003924:	00813423          	sd	s0,8(sp)
    80003928:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    8000392c:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80003930:	03f58593          	addi	a1,a1,63
    80003934:	0065d593          	srli	a1,a1,0x6
    80003938:	0080006f          	j	80003940 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    8000393c:	00053503          	ld	a0,0(a0)
    while(curr){
    80003940:	06050863          	beqz	a0,800039b0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80003944:	01054703          	lbu	a4,16(a0)
    80003948:	00100793          	li	a5,1
    8000394c:	fef718e3          	bne	a4,a5,8000393c <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    80003950:	01853703          	ld	a4,24(a0)
    80003954:	00158793          	addi	a5,a1,1
    80003958:	fef762e3          	bltu	a4,a5,8000393c <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    8000395c:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80003960:	04e7f663          	bgeu	a5,a4,800039ac <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80003964:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80003968:	00679793          	slli	a5,a5,0x6
    8000396c:	00f507b3          	add	a5,a0,a5
    80003970:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80003974:	00100713          	li	a4,1
    80003978:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    8000397c:	01853703          	ld	a4,24(a0)
    80003980:	40b70733          	sub	a4,a4,a1
    80003984:	fff70713          	addi	a4,a4,-1
    80003988:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    8000398c:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003990:	00068463          	beqz	a3,80003998 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80003994:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80003998:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    8000399c:	01853703          	ld	a4,24(a0)
    800039a0:	0187b783          	ld	a5,24(a5)
    800039a4:	40f707b3          	sub	a5,a4,a5
    800039a8:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    800039ac:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    800039b0:	00813403          	ld	s0,8(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret

00000000800039bc <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    800039bc:	ff010113          	addi	sp,sp,-16
    800039c0:	00813423          	sd	s0,8(sp)
    800039c4:	01010413          	addi	s0,sp,16
    if(!startLoc)return -1;
    800039c8:	08058c63          	beqz	a1,80003a60 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    800039cc:	fc058613          	addi	a2,a1,-64
    curr->free=1;
    800039d0:	00100793          	li	a5,1
    800039d4:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    800039d8:	fc05b783          	ld	a5,-64(a1)
    800039dc:	00078863          	beqz	a5,800039ec <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    800039e0:	0107c683          	lbu	a3,16(a5)
    800039e4:	00100713          	li	a4,1
    800039e8:	02e68463          	beq	a3,a4,80003a10 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    800039ec:	fc85b783          	ld	a5,-56(a1)
    800039f0:	06078c63          	beqz	a5,80003a68 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    800039f4:	0107c683          	lbu	a3,16(a5)
    800039f8:	00100713          	li	a4,1
    800039fc:	02e68e63          	beq	a3,a4,80003a38 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80003a00:	00000513          	li	a0,0
}
    80003a04:	00813403          	ld	s0,8(sp)
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret
        curr->size +=next->size;
    80003a10:	0187b683          	ld	a3,24(a5)
    80003a14:	fd85b703          	ld	a4,-40(a1)
    80003a18:	00d70733          	add	a4,a4,a3
    80003a1c:	fce5bc23          	sd	a4,-40(a1)
        curr->next = next->next;
    80003a20:	0007b703          	ld	a4,0(a5)
    80003a24:	fce5b023          	sd	a4,-64(a1)
        if(next->next)
    80003a28:	0007b783          	ld	a5,0(a5)
    80003a2c:	fc0780e3          	beqz	a5,800039ec <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80003a30:	00c7b423          	sd	a2,8(a5)
    80003a34:	fb9ff06f          	j	800039ec <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80003a38:	fd85b683          	ld	a3,-40(a1)
    80003a3c:	0187b703          	ld	a4,24(a5)
    80003a40:	00d70733          	add	a4,a4,a3
    80003a44:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80003a48:	fc05b703          	ld	a4,-64(a1)
    80003a4c:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80003a50:	02070063          	beqz	a4,80003a70 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80003a54:	00f73423          	sd	a5,8(a4)
    return 0;
    80003a58:	00000513          	li	a0,0
    80003a5c:	fa9ff06f          	j	80003a04 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!startLoc)return -1;
    80003a60:	fff00513          	li	a0,-1
    80003a64:	fa1ff06f          	j	80003a04 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80003a68:	00000513          	li	a0,0
    80003a6c:	f99ff06f          	j	80003a04 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003a70:	00000513          	li	a0,0
    80003a74:	f91ff06f          	j	80003a04 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080003a78 <HandleInterupt>:

extern "C" void restoreContext(size_t* ctx);



extern "C" void HandleInterupt(size_t* stackInfo){
    80003a78:	fb010113          	addi	sp,sp,-80
    80003a7c:	04113423          	sd	ra,72(sp)
    80003a80:	04813023          	sd	s0,64(sp)
    80003a84:	02913c23          	sd	s1,56(sp)
    80003a88:	03213823          	sd	s2,48(sp)
    80003a8c:	03313423          	sd	s3,40(sp)
    80003a90:	03413023          	sd	s4,32(sp)
    80003a94:	01513c23          	sd	s5,24(sp)
    80003a98:	01613823          	sd	s6,16(sp)
    80003a9c:	01713423          	sd	s7,8(sp)
    80003aa0:	05010413          	addi	s0,sp,80
    80003aa4:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003aa8:	142029f3          	csrr	s3,scause

    Scheduler::freeDead();
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	480080e7          	jalr	1152(ra) # 80001f2c <_ZN9Scheduler8freeDeadEv>

    KThread* current = Scheduler::GetRunning();
    80003ab4:	ffffe097          	auipc	ra,0xffffe
    80003ab8:	41c080e7          	jalr	1052(ra) # 80001ed0 <_ZN9Scheduler10GetRunningEv>
    80003abc:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80003ac0:	04050863          	beqz	a0,80003b10 <HandleInterupt+0x98>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = stackInfo[i];
    80003ac4:	00000713          	li	a4,0
    80003ac8:	01f00793          	li	a5,31
    80003acc:	02e7c063          	blt	a5,a4,80003aec <HandleInterupt+0x74>
    80003ad0:	00371793          	slli	a5,a4,0x3
    80003ad4:	00f906b3          	add	a3,s2,a5
    80003ad8:	0006b683          	ld	a3,0(a3)
    80003adc:	00f487b3          	add	a5,s1,a5
    80003ae0:	06d7b423          	sd	a3,104(a5)
    80003ae4:	0017071b          	addiw	a4,a4,1
    80003ae8:	fe1ff06f          	j	80003ac8 <HandleInterupt+0x50>
        ctx.x[2] = (size_t)stackInfo + 256;
    80003aec:	10090793          	addi	a5,s2,256
    80003af0:	06f4bc23          	sd	a5,120(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80003af4:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003af8:	100026f3          	csrr	a3,sstatus
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    80003afc:	ff898793          	addi	a5,s3,-8
    80003b00:	00100613          	li	a2,1
    80003b04:	06f67a63          	bgeu	a2,a5,80003b78 <HandleInterupt+0x100>
        ctx.sepc    = sepc;
    80003b08:	16e4b423          	sd	a4,360(s1)
        ctx.sstatus = sstatus;
    80003b0c:	16d4b823          	sd	a3,368(s1)
    }

    if (scause == SCause::TIMER_INTERRUPT) {
    80003b10:	fff00793          	li	a5,-1
    80003b14:	03f79793          	slli	a5,a5,0x3f
    80003b18:	00178793          	addi	a5,a5,1
    80003b1c:	06f98263          	beq	s3,a5,80003b80 <HandleInterupt+0x108>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == SCause::EXTERNAL_INTERRUPT) {
    80003b20:	fff00793          	li	a5,-1
    80003b24:	03f79793          	slli	a5,a5,0x3f
    80003b28:	00978793          	addi	a5,a5,9
    80003b2c:	06f98863          	beq	s3,a5,80003b9c <HandleInterupt+0x124>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != SCause::ECALL_USER && scause != SCause::ECALL_SUPERVISOR) {
    80003b30:	ff898793          	addi	a5,s3,-8
    80003b34:	00100713          	li	a4,1
    80003b38:	06f76e63          	bltu	a4,a5,80003bb4 <HandleInterupt+0x13c>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003b3c:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80003b40:	00478793          	addi	a5,a5,4
    80003b44:	14179073          	csrw	sepc,a5
    }

    size_t code = stackInfo[10];
    80003b48:	05093783          	ld	a5,80(s2)
    switch (code) {
    80003b4c:	04200713          	li	a4,66
    80003b50:	0af76263          	bltu	a4,a5,80003bf4 <HandleInterupt+0x17c>
    80003b54:	06078a63          	beqz	a5,80003bc8 <HandleInterupt+0x150>
    80003b58:	06f76863          	bltu	a4,a5,80003bc8 <HandleInterupt+0x150>
    80003b5c:	00279793          	slli	a5,a5,0x2
    80003b60:	00006717          	auipc	a4,0x6
    80003b64:	51470713          	addi	a4,a4,1300 # 8000a074 <CONSOLE_STATUS+0x64>
    80003b68:	00e787b3          	add	a5,a5,a4
    80003b6c:	0007a783          	lw	a5,0(a5)
    80003b70:	00e787b3          	add	a5,a5,a4
    80003b74:	00078067          	jr	a5
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    80003b78:	00470713          	addi	a4,a4,4
    80003b7c:	f8dff06f          	j	80003b08 <HandleInterupt+0x90>
        Scheduler::timerTick(current);
    80003b80:	00048513          	mv	a0,s1
    80003b84:	fffff097          	auipc	ra,0xfffff
    80003b88:	850080e7          	jalr	-1968(ra) # 800023d4 <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003b8c:	02048e63          	beqz	s1,80003bc8 <HandleInterupt+0x150>
    80003b90:	0b84b783          	ld	a5,184(s1)
    80003b94:	00078513          	mv	a0,a5
    80003b98:	0300006f          	j	80003bc8 <HandleInterupt+0x150>
        Konsole::handleInterrupt();
    80003b9c:	fffff097          	auipc	ra,0xfffff
    80003ba0:	d84080e7          	jalr	-636(ra) # 80002920 <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003ba4:	02048263          	beqz	s1,80003bc8 <HandleInterupt+0x150>
    80003ba8:	0b84b783          	ld	a5,184(s1)
    80003bac:	00078513          	mv	a0,a5
    80003bb0:	0180006f          	j	80003bc8 <HandleInterupt+0x150>
        if ((scause >> 63) == 0 && current != nullptr) {
    80003bb4:	0009ca63          	bltz	s3,80003bc8 <HandleInterupt+0x150>
    80003bb8:	00048863          	beqz	s1,80003bc8 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	614080e7          	jalr	1556(ra) # 800021d4 <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    80003bc8:	04813083          	ld	ra,72(sp)
    80003bcc:	04013403          	ld	s0,64(sp)
    80003bd0:	03813483          	ld	s1,56(sp)
    80003bd4:	03013903          	ld	s2,48(sp)
    80003bd8:	02813983          	ld	s3,40(sp)
    80003bdc:	02013a03          	ld	s4,32(sp)
    80003be0:	01813a83          	ld	s5,24(sp)
    80003be4:	01013b03          	ld	s6,16(sp)
    80003be8:	00813b83          	ld	s7,8(sp)
    80003bec:	05010113          	addi	sp,sp,80
    80003bf0:	00008067          	ret
    switch (code) {
    80003bf4:	0ff00713          	li	a4,255
    80003bf8:	fce798e3          	bne	a5,a4,80003bc8 <HandleInterupt+0x150>
            *((volatile uint32*)0x100000UL) = 0x5555;
    80003bfc:	00100737          	lui	a4,0x100
    80003c00:	000057b7          	lui	a5,0x5
    80003c04:	5557879b          	addiw	a5,a5,1365
    80003c08:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    80003c0c:	0000006f          	j	80003c0c <HandleInterupt+0x194>
            size_t size = stackInfo[11];
    80003c10:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	cb0080e7          	jalr	-848(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80003c1c:	00048593          	mv	a1,s1
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	d00080e7          	jalr	-768(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80003c28:	00050513          	mv	a0,a0
            break;
    80003c2c:	f9dff06f          	j	80003bc8 <HandleInterupt+0x150>
            void* ptr = (void*)stackInfo[11];
    80003c30:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	c90080e7          	jalr	-880(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80003c3c:	00048593          	mv	a1,s1
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	d7c080e7          	jalr	-644(ra) # 800039bc <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80003c48:	f81ff06f          	j	80003bc8 <HandleInterupt+0x150>
            thread_t* handle             = reinterpret_cast<thread_t*>(stackInfo[11]);
    80003c4c:	05893a03          	ld	s4,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(stackInfo[12]);
    80003c50:	06093b03          	ld	s6,96(s2)
            void* threadArg              = reinterpret_cast<void*>(stackInfo[13]);
    80003c54:	06893a83          	ld	s5,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(stackInfo[14]);
    80003c58:	07093b83          	ld	s7,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	c68080e7          	jalr	-920(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80003c64:	18000593          	li	a1,384
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	cb8080e7          	jalr	-840(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003c70:	00050993          	mv	s3,a0
            if (!mem) {
    80003c74:	04050863          	beqz	a0,80003cc4 <HandleInterupt+0x24c>
            t->init();
    80003c78:	ffffe097          	auipc	ra,0xffffe
    80003c7c:	038080e7          	jalr	56(ra) # 80001cb0 <_ZN7KThread4initEv>
    80003c80:	0169b023          	sd	s6,0(s3)
    80003c84:	0159b423          	sd	s5,8(s3)
            t->setup(current, stack_space);
    80003c88:	000b8613          	mv	a2,s7
    80003c8c:	00048593          	mv	a1,s1
    80003c90:	00098513          	mv	a0,s3
    80003c94:	ffffe097          	auipc	ra,0xffffe
    80003c98:	1d4080e7          	jalr	468(ra) # 80001e68 <_ZN7KThread5setupEPS_Pm>
            t->stackBase = reinterpret_cast<void*>(stackInfo[15]);
    80003c9c:	07893783          	ld	a5,120(s2)
    80003ca0:	06f9b023          	sd	a5,96(s3)
            *handle = reinterpret_cast<thread_t>(t);
    80003ca4:	013a3023          	sd	s3,0(s4)
            Scheduler::Put(t);
    80003ca8:	00098513          	mv	a0,s3
    80003cac:	ffffe097          	auipc	ra,0xffffe
    80003cb0:	408080e7          	jalr	1032(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    80003cb4:	00048463          	beqz	s1,80003cbc <HandleInterupt+0x244>
    80003cb8:	0a04bc23          	sd	zero,184(s1)
            __asm__ volatile("li a0, 0");
    80003cbc:	00000513          	li	a0,0
            break;
    80003cc0:	f09ff06f          	j	80003bc8 <HandleInterupt+0x150>
                if (current) {
    80003cc4:	f00482e3          	beqz	s1,80003bc8 <HandleInterupt+0x150>
                    current->threadContext.x[10] = (size_t)-1;
    80003cc8:	fff00793          	li	a5,-1
    80003ccc:	0af4bc23          	sd	a5,184(s1)
                    restoreContext(current->getContext());
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	0b8080e7          	jalr	184(ra) # 80001d8c <_ZN7KThread10getContextEv>
    80003cdc:	ffffd097          	auipc	ra,0xffffd
    80003ce0:	3b8080e7          	jalr	952(ra) # 80001094 <restoreContext>
                return;
    80003ce4:	ee5ff06f          	j	80003bc8 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	4e8080e7          	jalr	1256(ra) # 800021d4 <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    80003cf4:	ed5ff06f          	j	80003bc8 <HandleInterupt+0x150>
            if (!Scheduler::yieldCurrent(current))
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	464080e7          	jalr	1124(ra) # 80002160 <_ZN9Scheduler12yieldCurrentEP7KThread>
    80003d04:	ec0512e3          	bnez	a0,80003bc8 <HandleInterupt+0x150>
                __asm__ volatile("li a0, 0");
    80003d08:	00000513          	li	a0,0
    80003d0c:	ebdff06f          	j	80003bc8 <HandleInterupt+0x150>
            Scheduler::joinThread(t);
    80003d10:	05893503          	ld	a0,88(s2)
    80003d14:	fffff097          	auipc	ra,0xfffff
    80003d18:	968080e7          	jalr	-1688(ra) # 8000267c <_ZN9Scheduler10joinThreadEP7KThread>
            break;
    80003d1c:	eadff06f          	j	80003bc8 <HandleInterupt+0x150>
            sem_t* handle = reinterpret_cast<sem_t*>(stackInfo[11]);
    80003d20:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)stackInfo[12];
    80003d24:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	b9c080e7          	jalr	-1124(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80003d30:	01800593          	li	a1,24
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	bec080e7          	jalr	-1044(ra) # 80003920 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003d3c:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003d40:	00050e63          	beqz	a0,80003d5c <HandleInterupt+0x2e4>
            semaphore->init(initialValue);
    80003d44:	00090593          	mv	a1,s2
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	ba4080e7          	jalr	-1116(ra) # 800018ec <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    80003d50:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80003d54:	00000513          	li	a0,0
            break;
    80003d58:	e71ff06f          	j	80003bc8 <HandleInterupt+0x150>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003d5c:	fff00513          	li	a0,-1
    80003d60:	e69ff06f          	j	80003bc8 <HandleInterupt+0x150>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
    80003d64:	05893483          	ld	s1,88(s2)
            semaphore->close();
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	e7c080e7          	jalr	-388(ra) # 80001be8 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80003d74:	00000097          	auipc	ra,0x0
    80003d78:	b50080e7          	jalr	-1200(ra) # 800038c4 <_ZN15MemoryAllocator11GetInstanceEv>
    80003d7c:	00048593          	mv	a1,s1
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	c3c080e7          	jalr	-964(ra) # 800039bc <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80003d88:	00000513          	li	a0,0
            break;
    80003d8c:	e3dff06f          	j	80003bc8 <HandleInterupt+0x150>
            int result = semaphore->wait(current);
    80003d90:	00048593          	mv	a1,s1
    80003d94:	05893503          	ld	a0,88(s2)
    80003d98:	ffffe097          	auipc	ra,0xffffe
    80003d9c:	c8c080e7          	jalr	-884(ra) # 80001a24 <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003da0:	00a04663          	bgtz	a0,80003dac <HandleInterupt+0x334>
    80003da4:	00050513          	mv	a0,a0
    80003da8:	e21ff06f          	j	80003bc8 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003dac:	00048513          	mv	a0,s1
    80003db0:	ffffe097          	auipc	ra,0xffffe
    80003db4:	2b8080e7          	jalr	696(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003db8:	e11ff06f          	j	80003bc8 <HandleInterupt+0x150>
            semaphore->signal();
    80003dbc:	05893503          	ld	a0,88(s2)
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	cc4080e7          	jalr	-828(ra) # 80001a84 <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003dc8:	00000513          	li	a0,0
            break;
    80003dcc:	dfdff06f          	j	80003bc8 <HandleInterupt+0x150>
            int result = semaphore->waitN(current, n);
    80003dd0:	06092603          	lw	a2,96(s2)
    80003dd4:	00048593          	mv	a1,s1
    80003dd8:	05893503          	ld	a0,88(s2)
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	d24080e7          	jalr	-732(ra) # 80001b00 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003de4:	00a04663          	bgtz	a0,80003df0 <HandleInterupt+0x378>
    80003de8:	00050513          	mv	a0,a0
    80003dec:	dddff06f          	j	80003bc8 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003df0:	00048513          	mv	a0,s1
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	274080e7          	jalr	628(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003dfc:	dcdff06f          	j	80003bc8 <HandleInterupt+0x150>
            semaphore->signalN(n);
    80003e00:	06092583          	lw	a1,96(s2)
    80003e04:	05893503          	ld	a0,88(s2)
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	d68080e7          	jalr	-664(ra) # 80001b70 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80003e10:	00000513          	li	a0,0
            break;
    80003e14:	db5ff06f          	j	80003bc8 <HandleInterupt+0x150>
            time_t dur = (time_t)stackInfo[11];
    80003e18:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80003e1c:	00048463          	beqz	s1,80003e24 <HandleInterupt+0x3ac>
    80003e20:	0a04bc23          	sd	zero,184(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    80003e24:	00059663          	bnez	a1,80003e30 <HandleInterupt+0x3b8>
    80003e28:	00000513          	li	a0,0
    80003e2c:	d9dff06f          	j	80003bc8 <HandleInterupt+0x150>
            Scheduler::sleep(current, dur);
    80003e30:	00048513          	mv	a0,s1
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	788080e7          	jalr	1928(ra) # 800025bc <_ZN9Scheduler5sleepEP7KThreadm>
            Scheduler::blockCurrent(current);
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	ffffe097          	auipc	ra,0xffffe
    80003e44:	228080e7          	jalr	552(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003e48:	d81ff06f          	j	80003bc8 <HandleInterupt+0x150>
            int result = Konsole::getcKernel(current);
    80003e4c:	00048513          	mv	a0,s1
    80003e50:	fffff097          	auipc	ra,0xfffff
    80003e54:	c54080e7          	jalr	-940(ra) # 80002aa4 <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2)
    80003e58:	ffe00713          	li	a4,-2
    80003e5c:	00e50863          	beq	a0,a4,80003e6c <HandleInterupt+0x3f4>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    80003e60:	0ff57793          	andi	a5,a0,255
    80003e64:	00078513          	mv	a0,a5
    80003e68:	d61ff06f          	j	80003bc8 <HandleInterupt+0x150>
                Scheduler::blockCurrent(current);
    80003e6c:	00048513          	mv	a0,s1
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	1f8080e7          	jalr	504(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
    80003e78:	d51ff06f          	j	80003bc8 <HandleInterupt+0x150>
            int result = Konsole::putcKernel(current, c);
    80003e7c:	05894583          	lbu	a1,88(s2)
    80003e80:	00048513          	mv	a0,s1
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	b80080e7          	jalr	-1152(ra) # 80002a04 <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003e8c:	00050513          	mv	a0,a0
            break;
    80003e90:	d39ff06f          	j	80003bc8 <HandleInterupt+0x150>

0000000080003e94 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80003e94:	ff010113          	addi	sp,sp,-16
    80003e98:	00113423          	sd	ra,8(sp)
    80003e9c:	00813023          	sd	s0,0(sp)
    80003ea0:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	430080e7          	jalr	1072(ra) # 800022d4 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	9ac080e7          	jalr	-1620(ra) # 80002858 <_ZN7Konsole4initEv>
    return 0;
}
    80003eb4:	00000513          	li	a0,0
    80003eb8:	00813083          	ld	ra,8(sp)
    80003ebc:	00013403          	ld	s0,0(sp)
    80003ec0:	01010113          	addi	sp,sp,16
    80003ec4:	00008067          	ret

0000000080003ec8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003ec8:	fe010113          	addi	sp,sp,-32
    80003ecc:	00113c23          	sd	ra,24(sp)
    80003ed0:	00813823          	sd	s0,16(sp)
    80003ed4:	00913423          	sd	s1,8(sp)
    80003ed8:	01213023          	sd	s2,0(sp)
    80003edc:	02010413          	addi	s0,sp,32
    80003ee0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003ee4:	00000913          	li	s2,0
    80003ee8:	00c0006f          	j	80003ef4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003eec:	ffffd097          	auipc	ra,0xffffd
    80003ef0:	78c080e7          	jalr	1932(ra) # 80001678 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	8b4080e7          	jalr	-1868(ra) # 800017a8 <getc>
    80003efc:	0005059b          	sext.w	a1,a0
    80003f00:	01b00793          	li	a5,27
    80003f04:	02f58a63          	beq	a1,a5,80003f38 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003f08:	0084b503          	ld	a0,8(s1)
    80003f0c:	00003097          	auipc	ra,0x3
    80003f10:	400080e7          	jalr	1024(ra) # 8000730c <_ZN6Buffer3putEi>
        i++;
    80003f14:	0019071b          	addiw	a4,s2,1
    80003f18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003f1c:	0004a683          	lw	a3,0(s1)
    80003f20:	0026979b          	slliw	a5,a3,0x2
    80003f24:	00d787bb          	addw	a5,a5,a3
    80003f28:	0017979b          	slliw	a5,a5,0x1
    80003f2c:	02f767bb          	remw	a5,a4,a5
    80003f30:	fc0792e3          	bnez	a5,80003ef4 <_ZL16producerKeyboardPv+0x2c>
    80003f34:	fb9ff06f          	j	80003eec <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003f38:	00100793          	li	a5,1
    80003f3c:	00009717          	auipc	a4,0x9
    80003f40:	06f72223          	sw	a5,100(a4) # 8000cfa0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003f44:	02100593          	li	a1,33
    80003f48:	0084b503          	ld	a0,8(s1)
    80003f4c:	00003097          	auipc	ra,0x3
    80003f50:	3c0080e7          	jalr	960(ra) # 8000730c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003f54:	0104b503          	ld	a0,16(s1)
    80003f58:	ffffd097          	auipc	ra,0xffffd
    80003f5c:	7f0080e7          	jalr	2032(ra) # 80001748 <sem_signal>
}
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	00013903          	ld	s2,0(sp)
    80003f70:	02010113          	addi	sp,sp,32
    80003f74:	00008067          	ret

0000000080003f78 <_ZL8producerPv>:

static void producer(void *arg) {
    80003f78:	fe010113          	addi	sp,sp,-32
    80003f7c:	00113c23          	sd	ra,24(sp)
    80003f80:	00813823          	sd	s0,16(sp)
    80003f84:	00913423          	sd	s1,8(sp)
    80003f88:	01213023          	sd	s2,0(sp)
    80003f8c:	02010413          	addi	s0,sp,32
    80003f90:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003f94:	00000913          	li	s2,0
    80003f98:	00c0006f          	j	80003fa4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003f9c:	ffffd097          	auipc	ra,0xffffd
    80003fa0:	6dc080e7          	jalr	1756(ra) # 80001678 <thread_dispatch>
    while (!threadEnd) {
    80003fa4:	00009797          	auipc	a5,0x9
    80003fa8:	ffc7a783          	lw	a5,-4(a5) # 8000cfa0 <_ZL9threadEnd>
    80003fac:	02079e63          	bnez	a5,80003fe8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003fb0:	0004a583          	lw	a1,0(s1)
    80003fb4:	0305859b          	addiw	a1,a1,48
    80003fb8:	0084b503          	ld	a0,8(s1)
    80003fbc:	00003097          	auipc	ra,0x3
    80003fc0:	350080e7          	jalr	848(ra) # 8000730c <_ZN6Buffer3putEi>
        i++;
    80003fc4:	0019071b          	addiw	a4,s2,1
    80003fc8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003fcc:	0004a683          	lw	a3,0(s1)
    80003fd0:	0026979b          	slliw	a5,a3,0x2
    80003fd4:	00d787bb          	addw	a5,a5,a3
    80003fd8:	0017979b          	slliw	a5,a5,0x1
    80003fdc:	02f767bb          	remw	a5,a4,a5
    80003fe0:	fc0792e3          	bnez	a5,80003fa4 <_ZL8producerPv+0x2c>
    80003fe4:	fb9ff06f          	j	80003f9c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003fe8:	0104b503          	ld	a0,16(s1)
    80003fec:	ffffd097          	auipc	ra,0xffffd
    80003ff0:	75c080e7          	jalr	1884(ra) # 80001748 <sem_signal>
}
    80003ff4:	01813083          	ld	ra,24(sp)
    80003ff8:	01013403          	ld	s0,16(sp)
    80003ffc:	00813483          	ld	s1,8(sp)
    80004000:	00013903          	ld	s2,0(sp)
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret

000000008000400c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000400c:	fd010113          	addi	sp,sp,-48
    80004010:	02113423          	sd	ra,40(sp)
    80004014:	02813023          	sd	s0,32(sp)
    80004018:	00913c23          	sd	s1,24(sp)
    8000401c:	01213823          	sd	s2,16(sp)
    80004020:	01313423          	sd	s3,8(sp)
    80004024:	03010413          	addi	s0,sp,48
    80004028:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000402c:	00000993          	li	s3,0
    80004030:	01c0006f          	j	8000404c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004034:	ffffd097          	auipc	ra,0xffffd
    80004038:	644080e7          	jalr	1604(ra) # 80001678 <thread_dispatch>
    8000403c:	0500006f          	j	8000408c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004040:	00a00513          	li	a0,10
    80004044:	ffffd097          	auipc	ra,0xffffd
    80004048:	788080e7          	jalr	1928(ra) # 800017cc <putc>
    while (!threadEnd) {
    8000404c:	00009797          	auipc	a5,0x9
    80004050:	f547a783          	lw	a5,-172(a5) # 8000cfa0 <_ZL9threadEnd>
    80004054:	06079063          	bnez	a5,800040b4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80004058:	00893503          	ld	a0,8(s2)
    8000405c:	00003097          	auipc	ra,0x3
    80004060:	340080e7          	jalr	832(ra) # 8000739c <_ZN6Buffer3getEv>
        i++;
    80004064:	0019849b          	addiw	s1,s3,1
    80004068:	0004899b          	sext.w	s3,s1
        putc(key);
    8000406c:	0ff57513          	andi	a0,a0,255
    80004070:	ffffd097          	auipc	ra,0xffffd
    80004074:	75c080e7          	jalr	1884(ra) # 800017cc <putc>
        if (i % (5 * data->id) == 0) {
    80004078:	00092703          	lw	a4,0(s2)
    8000407c:	0027179b          	slliw	a5,a4,0x2
    80004080:	00e787bb          	addw	a5,a5,a4
    80004084:	02f4e7bb          	remw	a5,s1,a5
    80004088:	fa0786e3          	beqz	a5,80004034 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000408c:	05000793          	li	a5,80
    80004090:	02f4e4bb          	remw	s1,s1,a5
    80004094:	fa049ce3          	bnez	s1,8000404c <_ZL8consumerPv+0x40>
    80004098:	fa9ff06f          	j	80004040 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000409c:	00893503          	ld	a0,8(s2)
    800040a0:	00003097          	auipc	ra,0x3
    800040a4:	2fc080e7          	jalr	764(ra) # 8000739c <_ZN6Buffer3getEv>
        putc(key);
    800040a8:	0ff57513          	andi	a0,a0,255
    800040ac:	ffffd097          	auipc	ra,0xffffd
    800040b0:	720080e7          	jalr	1824(ra) # 800017cc <putc>
    while (data->buffer->getCnt() > 0) {
    800040b4:	00893503          	ld	a0,8(s2)
    800040b8:	00003097          	auipc	ra,0x3
    800040bc:	370080e7          	jalr	880(ra) # 80007428 <_ZN6Buffer6getCntEv>
    800040c0:	fca04ee3          	bgtz	a0,8000409c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800040c4:	01093503          	ld	a0,16(s2)
    800040c8:	ffffd097          	auipc	ra,0xffffd
    800040cc:	680080e7          	jalr	1664(ra) # 80001748 <sem_signal>
}
    800040d0:	02813083          	ld	ra,40(sp)
    800040d4:	02013403          	ld	s0,32(sp)
    800040d8:	01813483          	ld	s1,24(sp)
    800040dc:	01013903          	ld	s2,16(sp)
    800040e0:	00813983          	ld	s3,8(sp)
    800040e4:	03010113          	addi	sp,sp,48
    800040e8:	00008067          	ret

00000000800040ec <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800040ec:	f9010113          	addi	sp,sp,-112
    800040f0:	06113423          	sd	ra,104(sp)
    800040f4:	06813023          	sd	s0,96(sp)
    800040f8:	04913c23          	sd	s1,88(sp)
    800040fc:	05213823          	sd	s2,80(sp)
    80004100:	05313423          	sd	s3,72(sp)
    80004104:	05413023          	sd	s4,64(sp)
    80004108:	03513c23          	sd	s5,56(sp)
    8000410c:	03613823          	sd	s6,48(sp)
    80004110:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80004114:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80004118:	00006517          	auipc	a0,0x6
    8000411c:	06850513          	addi	a0,a0,104 # 8000a180 <CONSOLE_STATUS+0x170>
    80004120:	00002097          	auipc	ra,0x2
    80004124:	374080e7          	jalr	884(ra) # 80006494 <_Z11printStringPKc>
    getString(input, 30);
    80004128:	01e00593          	li	a1,30
    8000412c:	fa040493          	addi	s1,s0,-96
    80004130:	00048513          	mv	a0,s1
    80004134:	00002097          	auipc	ra,0x2
    80004138:	3e8080e7          	jalr	1000(ra) # 8000651c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000413c:	00048513          	mv	a0,s1
    80004140:	00002097          	auipc	ra,0x2
    80004144:	4b4080e7          	jalr	1204(ra) # 800065f4 <_Z11stringToIntPKc>
    80004148:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000414c:	00006517          	auipc	a0,0x6
    80004150:	05450513          	addi	a0,a0,84 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004154:	00002097          	auipc	ra,0x2
    80004158:	340080e7          	jalr	832(ra) # 80006494 <_Z11printStringPKc>
    getString(input, 30);
    8000415c:	01e00593          	li	a1,30
    80004160:	00048513          	mv	a0,s1
    80004164:	00002097          	auipc	ra,0x2
    80004168:	3b8080e7          	jalr	952(ra) # 8000651c <_Z9getStringPci>
    n = stringToInt(input);
    8000416c:	00048513          	mv	a0,s1
    80004170:	00002097          	auipc	ra,0x2
    80004174:	484080e7          	jalr	1156(ra) # 800065f4 <_Z11stringToIntPKc>
    80004178:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000417c:	00006517          	auipc	a0,0x6
    80004180:	04450513          	addi	a0,a0,68 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004184:	00002097          	auipc	ra,0x2
    80004188:	310080e7          	jalr	784(ra) # 80006494 <_Z11printStringPKc>
    8000418c:	00000613          	li	a2,0
    80004190:	00a00593          	li	a1,10
    80004194:	00090513          	mv	a0,s2
    80004198:	00002097          	auipc	ra,0x2
    8000419c:	4ac080e7          	jalr	1196(ra) # 80006644 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800041a0:	00006517          	auipc	a0,0x6
    800041a4:	03850513          	addi	a0,a0,56 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    800041a8:	00002097          	auipc	ra,0x2
    800041ac:	2ec080e7          	jalr	748(ra) # 80006494 <_Z11printStringPKc>
    800041b0:	00000613          	li	a2,0
    800041b4:	00a00593          	li	a1,10
    800041b8:	00048513          	mv	a0,s1
    800041bc:	00002097          	auipc	ra,0x2
    800041c0:	488080e7          	jalr	1160(ra) # 80006644 <_Z8printIntiii>
    printString(".\n");
    800041c4:	00006517          	auipc	a0,0x6
    800041c8:	02c50513          	addi	a0,a0,44 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    800041cc:	00002097          	auipc	ra,0x2
    800041d0:	2c8080e7          	jalr	712(ra) # 80006494 <_Z11printStringPKc>
    if(threadNum > n) {
    800041d4:	0324c463          	blt	s1,s2,800041fc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800041d8:	03205c63          	blez	s2,80004210 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800041dc:	03800513          	li	a0,56
    800041e0:	fffff097          	auipc	ra,0xfffff
    800041e4:	2d8080e7          	jalr	728(ra) # 800034b8 <_Znwm>
    800041e8:	00050a13          	mv	s4,a0
    800041ec:	00048593          	mv	a1,s1
    800041f0:	00003097          	auipc	ra,0x3
    800041f4:	080080e7          	jalr	128(ra) # 80007270 <_ZN6BufferC1Ei>
    800041f8:	0300006f          	j	80004228 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800041fc:	00006517          	auipc	a0,0x6
    80004200:	ffc50513          	addi	a0,a0,-4 # 8000a1f8 <CONSOLE_STATUS+0x1e8>
    80004204:	00002097          	auipc	ra,0x2
    80004208:	290080e7          	jalr	656(ra) # 80006494 <_Z11printStringPKc>
        return;
    8000420c:	0140006f          	j	80004220 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004210:	00006517          	auipc	a0,0x6
    80004214:	02850513          	addi	a0,a0,40 # 8000a238 <CONSOLE_STATUS+0x228>
    80004218:	00002097          	auipc	ra,0x2
    8000421c:	27c080e7          	jalr	636(ra) # 80006494 <_Z11printStringPKc>
        return;
    80004220:	000b0113          	mv	sp,s6
    80004224:	1500006f          	j	80004374 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80004228:	00000593          	li	a1,0
    8000422c:	00009517          	auipc	a0,0x9
    80004230:	d7c50513          	addi	a0,a0,-644 # 8000cfa8 <_ZL10waitForAll>
    80004234:	ffffd097          	auipc	ra,0xffffd
    80004238:	48c080e7          	jalr	1164(ra) # 800016c0 <sem_open>
    thread_t threads[threadNum];
    8000423c:	00391793          	slli	a5,s2,0x3
    80004240:	00f78793          	addi	a5,a5,15
    80004244:	ff07f793          	andi	a5,a5,-16
    80004248:	40f10133          	sub	sp,sp,a5
    8000424c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80004250:	0019071b          	addiw	a4,s2,1
    80004254:	00171793          	slli	a5,a4,0x1
    80004258:	00e787b3          	add	a5,a5,a4
    8000425c:	00379793          	slli	a5,a5,0x3
    80004260:	00f78793          	addi	a5,a5,15
    80004264:	ff07f793          	andi	a5,a5,-16
    80004268:	40f10133          	sub	sp,sp,a5
    8000426c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80004270:	00191613          	slli	a2,s2,0x1
    80004274:	012607b3          	add	a5,a2,s2
    80004278:	00379793          	slli	a5,a5,0x3
    8000427c:	00f987b3          	add	a5,s3,a5
    80004280:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004284:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004288:	00009717          	auipc	a4,0x9
    8000428c:	d2073703          	ld	a4,-736(a4) # 8000cfa8 <_ZL10waitForAll>
    80004290:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004294:	00078613          	mv	a2,a5
    80004298:	00000597          	auipc	a1,0x0
    8000429c:	d7458593          	addi	a1,a1,-652 # 8000400c <_ZL8consumerPv>
    800042a0:	f9840513          	addi	a0,s0,-104
    800042a4:	ffffd097          	auipc	ra,0xffffd
    800042a8:	308080e7          	jalr	776(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800042ac:	00000493          	li	s1,0
    800042b0:	0280006f          	j	800042d8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800042b4:	00000597          	auipc	a1,0x0
    800042b8:	c1458593          	addi	a1,a1,-1004 # 80003ec8 <_ZL16producerKeyboardPv>
                      data + i);
    800042bc:	00179613          	slli	a2,a5,0x1
    800042c0:	00f60633          	add	a2,a2,a5
    800042c4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800042c8:	00c98633          	add	a2,s3,a2
    800042cc:	ffffd097          	auipc	ra,0xffffd
    800042d0:	2e0080e7          	jalr	736(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    800042d4:	0014849b          	addiw	s1,s1,1
    800042d8:	0524d263          	bge	s1,s2,8000431c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800042dc:	00149793          	slli	a5,s1,0x1
    800042e0:	009787b3          	add	a5,a5,s1
    800042e4:	00379793          	slli	a5,a5,0x3
    800042e8:	00f987b3          	add	a5,s3,a5
    800042ec:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800042f0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800042f4:	00009717          	auipc	a4,0x9
    800042f8:	cb473703          	ld	a4,-844(a4) # 8000cfa8 <_ZL10waitForAll>
    800042fc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004300:	00048793          	mv	a5,s1
    80004304:	00349513          	slli	a0,s1,0x3
    80004308:	00aa8533          	add	a0,s5,a0
    8000430c:	fa9054e3          	blez	s1,800042b4 <_Z22producerConsumer_C_APIv+0x1c8>
    80004310:	00000597          	auipc	a1,0x0
    80004314:	c6858593          	addi	a1,a1,-920 # 80003f78 <_ZL8producerPv>
    80004318:	fa5ff06f          	j	800042bc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000431c:	ffffd097          	auipc	ra,0xffffd
    80004320:	35c080e7          	jalr	860(ra) # 80001678 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80004324:	00000493          	li	s1,0
    80004328:	00994e63          	blt	s2,s1,80004344 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000432c:	00009517          	auipc	a0,0x9
    80004330:	c7c53503          	ld	a0,-900(a0) # 8000cfa8 <_ZL10waitForAll>
    80004334:	ffffd097          	auipc	ra,0xffffd
    80004338:	3ec080e7          	jalr	1004(ra) # 80001720 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    8000433c:	0014849b          	addiw	s1,s1,1
    80004340:	fe9ff06f          	j	80004328 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80004344:	00009517          	auipc	a0,0x9
    80004348:	c6453503          	ld	a0,-924(a0) # 8000cfa8 <_ZL10waitForAll>
    8000434c:	ffffd097          	auipc	ra,0xffffd
    80004350:	3ac080e7          	jalr	940(ra) # 800016f8 <sem_close>
    delete buffer;
    80004354:	000a0e63          	beqz	s4,80004370 <_Z22producerConsumer_C_APIv+0x284>
    80004358:	000a0513          	mv	a0,s4
    8000435c:	00003097          	auipc	ra,0x3
    80004360:	154080e7          	jalr	340(ra) # 800074b0 <_ZN6BufferD1Ev>
    80004364:	000a0513          	mv	a0,s4
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	178080e7          	jalr	376(ra) # 800034e0 <_ZdlPv>
    80004370:	000b0113          	mv	sp,s6

}
    80004374:	f9040113          	addi	sp,s0,-112
    80004378:	06813083          	ld	ra,104(sp)
    8000437c:	06013403          	ld	s0,96(sp)
    80004380:	05813483          	ld	s1,88(sp)
    80004384:	05013903          	ld	s2,80(sp)
    80004388:	04813983          	ld	s3,72(sp)
    8000438c:	04013a03          	ld	s4,64(sp)
    80004390:	03813a83          	ld	s5,56(sp)
    80004394:	03013b03          	ld	s6,48(sp)
    80004398:	07010113          	addi	sp,sp,112
    8000439c:	00008067          	ret
    800043a0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800043a4:	000a0513          	mv	a0,s4
    800043a8:	fffff097          	auipc	ra,0xfffff
    800043ac:	138080e7          	jalr	312(ra) # 800034e0 <_ZdlPv>
    800043b0:	00048513          	mv	a0,s1
    800043b4:	0000a097          	auipc	ra,0xa
    800043b8:	d04080e7          	jalr	-764(ra) # 8000e0b8 <_Unwind_Resume>

00000000800043bc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800043bc:	fe010113          	addi	sp,sp,-32
    800043c0:	00113c23          	sd	ra,24(sp)
    800043c4:	00813823          	sd	s0,16(sp)
    800043c8:	00913423          	sd	s1,8(sp)
    800043cc:	01213023          	sd	s2,0(sp)
    800043d0:	02010413          	addi	s0,sp,32
    800043d4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800043d8:	00100793          	li	a5,1
    800043dc:	02a7f863          	bgeu	a5,a0,8000440c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043e0:	00a00793          	li	a5,10
    800043e4:	02f577b3          	remu	a5,a0,a5
    800043e8:	02078e63          	beqz	a5,80004424 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043ec:	fff48513          	addi	a0,s1,-1
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	fcc080e7          	jalr	-52(ra) # 800043bc <_ZL9fibonaccim>
    800043f8:	00050913          	mv	s2,a0
    800043fc:	ffe48513          	addi	a0,s1,-2
    80004400:	00000097          	auipc	ra,0x0
    80004404:	fbc080e7          	jalr	-68(ra) # 800043bc <_ZL9fibonaccim>
    80004408:	00a90533          	add	a0,s2,a0
}
    8000440c:	01813083          	ld	ra,24(sp)
    80004410:	01013403          	ld	s0,16(sp)
    80004414:	00813483          	ld	s1,8(sp)
    80004418:	00013903          	ld	s2,0(sp)
    8000441c:	02010113          	addi	sp,sp,32
    80004420:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004424:	ffffd097          	auipc	ra,0xffffd
    80004428:	254080e7          	jalr	596(ra) # 80001678 <thread_dispatch>
    8000442c:	fc1ff06f          	j	800043ec <_ZL9fibonaccim+0x30>

0000000080004430 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80004430:	fe010113          	addi	sp,sp,-32
    80004434:	00113c23          	sd	ra,24(sp)
    80004438:	00813823          	sd	s0,16(sp)
    8000443c:	00913423          	sd	s1,8(sp)
    80004440:	01213023          	sd	s2,0(sp)
    80004444:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004448:	00000913          	li	s2,0
    8000444c:	0380006f          	j	80004484 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004450:	ffffd097          	auipc	ra,0xffffd
    80004454:	228080e7          	jalr	552(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004458:	00148493          	addi	s1,s1,1
    8000445c:	000027b7          	lui	a5,0x2
    80004460:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004464:	0097ee63          	bltu	a5,s1,80004480 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004468:	00000713          	li	a4,0
    8000446c:	000077b7          	lui	a5,0x7
    80004470:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004474:	fce7eee3          	bltu	a5,a4,80004450 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004478:	00170713          	addi	a4,a4,1
    8000447c:	ff1ff06f          	j	8000446c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004480:	00190913          	addi	s2,s2,1
    80004484:	00900793          	li	a5,9
    80004488:	0527e063          	bltu	a5,s2,800044c8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000448c:	00006517          	auipc	a0,0x6
    80004490:	ddc50513          	addi	a0,a0,-548 # 8000a268 <CONSOLE_STATUS+0x258>
    80004494:	00002097          	auipc	ra,0x2
    80004498:	000080e7          	jalr	ra # 80006494 <_Z11printStringPKc>
    8000449c:	00000613          	li	a2,0
    800044a0:	00a00593          	li	a1,10
    800044a4:	0009051b          	sext.w	a0,s2
    800044a8:	00002097          	auipc	ra,0x2
    800044ac:	19c080e7          	jalr	412(ra) # 80006644 <_Z8printIntiii>
    800044b0:	00006517          	auipc	a0,0x6
    800044b4:	02850513          	addi	a0,a0,40 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    800044b8:	00002097          	auipc	ra,0x2
    800044bc:	fdc080e7          	jalr	-36(ra) # 80006494 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800044c0:	00000493          	li	s1,0
    800044c4:	f99ff06f          	j	8000445c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800044c8:	00006517          	auipc	a0,0x6
    800044cc:	da850513          	addi	a0,a0,-600 # 8000a270 <CONSOLE_STATUS+0x260>
    800044d0:	00002097          	auipc	ra,0x2
    800044d4:	fc4080e7          	jalr	-60(ra) # 80006494 <_Z11printStringPKc>
    finishedA = true;
    800044d8:	00100793          	li	a5,1
    800044dc:	00009717          	auipc	a4,0x9
    800044e0:	acf70a23          	sb	a5,-1324(a4) # 8000cfb0 <_ZL9finishedA>
}
    800044e4:	01813083          	ld	ra,24(sp)
    800044e8:	01013403          	ld	s0,16(sp)
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	00013903          	ld	s2,0(sp)
    800044f4:	02010113          	addi	sp,sp,32
    800044f8:	00008067          	ret

00000000800044fc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800044fc:	fe010113          	addi	sp,sp,-32
    80004500:	00113c23          	sd	ra,24(sp)
    80004504:	00813823          	sd	s0,16(sp)
    80004508:	00913423          	sd	s1,8(sp)
    8000450c:	01213023          	sd	s2,0(sp)
    80004510:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004514:	00000913          	li	s2,0
    80004518:	0380006f          	j	80004550 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	15c080e7          	jalr	348(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004524:	00148493          	addi	s1,s1,1
    80004528:	000027b7          	lui	a5,0x2
    8000452c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004530:	0097ee63          	bltu	a5,s1,8000454c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004534:	00000713          	li	a4,0
    80004538:	000077b7          	lui	a5,0x7
    8000453c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004540:	fce7eee3          	bltu	a5,a4,8000451c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004544:	00170713          	addi	a4,a4,1
    80004548:	ff1ff06f          	j	80004538 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000454c:	00190913          	addi	s2,s2,1
    80004550:	00f00793          	li	a5,15
    80004554:	0527e063          	bltu	a5,s2,80004594 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004558:	00006517          	auipc	a0,0x6
    8000455c:	d2850513          	addi	a0,a0,-728 # 8000a280 <CONSOLE_STATUS+0x270>
    80004560:	00002097          	auipc	ra,0x2
    80004564:	f34080e7          	jalr	-204(ra) # 80006494 <_Z11printStringPKc>
    80004568:	00000613          	li	a2,0
    8000456c:	00a00593          	li	a1,10
    80004570:	0009051b          	sext.w	a0,s2
    80004574:	00002097          	auipc	ra,0x2
    80004578:	0d0080e7          	jalr	208(ra) # 80006644 <_Z8printIntiii>
    8000457c:	00006517          	auipc	a0,0x6
    80004580:	f5c50513          	addi	a0,a0,-164 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80004584:	00002097          	auipc	ra,0x2
    80004588:	f10080e7          	jalr	-240(ra) # 80006494 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000458c:	00000493          	li	s1,0
    80004590:	f99ff06f          	j	80004528 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004594:	00006517          	auipc	a0,0x6
    80004598:	cf450513          	addi	a0,a0,-780 # 8000a288 <CONSOLE_STATUS+0x278>
    8000459c:	00002097          	auipc	ra,0x2
    800045a0:	ef8080e7          	jalr	-264(ra) # 80006494 <_Z11printStringPKc>
    finishedB = true;
    800045a4:	00100793          	li	a5,1
    800045a8:	00009717          	auipc	a4,0x9
    800045ac:	a0f704a3          	sb	a5,-1527(a4) # 8000cfb1 <_ZL9finishedB>
    thread_dispatch();
    800045b0:	ffffd097          	auipc	ra,0xffffd
    800045b4:	0c8080e7          	jalr	200(ra) # 80001678 <thread_dispatch>
}
    800045b8:	01813083          	ld	ra,24(sp)
    800045bc:	01013403          	ld	s0,16(sp)
    800045c0:	00813483          	ld	s1,8(sp)
    800045c4:	00013903          	ld	s2,0(sp)
    800045c8:	02010113          	addi	sp,sp,32
    800045cc:	00008067          	ret

00000000800045d0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800045d0:	fe010113          	addi	sp,sp,-32
    800045d4:	00113c23          	sd	ra,24(sp)
    800045d8:	00813823          	sd	s0,16(sp)
    800045dc:	00913423          	sd	s1,8(sp)
    800045e0:	01213023          	sd	s2,0(sp)
    800045e4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045e8:	00000493          	li	s1,0
    800045ec:	0400006f          	j	8000462c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800045f0:	00006517          	auipc	a0,0x6
    800045f4:	ca850513          	addi	a0,a0,-856 # 8000a298 <CONSOLE_STATUS+0x288>
    800045f8:	00002097          	auipc	ra,0x2
    800045fc:	e9c080e7          	jalr	-356(ra) # 80006494 <_Z11printStringPKc>
    80004600:	00000613          	li	a2,0
    80004604:	00a00593          	li	a1,10
    80004608:	00048513          	mv	a0,s1
    8000460c:	00002097          	auipc	ra,0x2
    80004610:	038080e7          	jalr	56(ra) # 80006644 <_Z8printIntiii>
    80004614:	00006517          	auipc	a0,0x6
    80004618:	ec450513          	addi	a0,a0,-316 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    8000461c:	00002097          	auipc	ra,0x2
    80004620:	e78080e7          	jalr	-392(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004624:	0014849b          	addiw	s1,s1,1
    80004628:	0ff4f493          	andi	s1,s1,255
    8000462c:	00200793          	li	a5,2
    80004630:	fc97f0e3          	bgeu	a5,s1,800045f0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004634:	00006517          	auipc	a0,0x6
    80004638:	c6c50513          	addi	a0,a0,-916 # 8000a2a0 <CONSOLE_STATUS+0x290>
    8000463c:	00002097          	auipc	ra,0x2
    80004640:	e58080e7          	jalr	-424(ra) # 80006494 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004644:	00700313          	li	t1,7
    thread_dispatch();
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	030080e7          	jalr	48(ra) # 80001678 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004650:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004654:	00006517          	auipc	a0,0x6
    80004658:	c5c50513          	addi	a0,a0,-932 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    8000465c:	00002097          	auipc	ra,0x2
    80004660:	e38080e7          	jalr	-456(ra) # 80006494 <_Z11printStringPKc>
    80004664:	00000613          	li	a2,0
    80004668:	00a00593          	li	a1,10
    8000466c:	0009051b          	sext.w	a0,s2
    80004670:	00002097          	auipc	ra,0x2
    80004674:	fd4080e7          	jalr	-44(ra) # 80006644 <_Z8printIntiii>
    80004678:	00006517          	auipc	a0,0x6
    8000467c:	e6050513          	addi	a0,a0,-416 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80004680:	00002097          	auipc	ra,0x2
    80004684:	e14080e7          	jalr	-492(ra) # 80006494 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004688:	00c00513          	li	a0,12
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	d30080e7          	jalr	-720(ra) # 800043bc <_ZL9fibonaccim>
    80004694:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004698:	00006517          	auipc	a0,0x6
    8000469c:	c2050513          	addi	a0,a0,-992 # 8000a2b8 <CONSOLE_STATUS+0x2a8>
    800046a0:	00002097          	auipc	ra,0x2
    800046a4:	df4080e7          	jalr	-524(ra) # 80006494 <_Z11printStringPKc>
    800046a8:	00000613          	li	a2,0
    800046ac:	00a00593          	li	a1,10
    800046b0:	0009051b          	sext.w	a0,s2
    800046b4:	00002097          	auipc	ra,0x2
    800046b8:	f90080e7          	jalr	-112(ra) # 80006644 <_Z8printIntiii>
    800046bc:	00006517          	auipc	a0,0x6
    800046c0:	e1c50513          	addi	a0,a0,-484 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    800046c4:	00002097          	auipc	ra,0x2
    800046c8:	dd0080e7          	jalr	-560(ra) # 80006494 <_Z11printStringPKc>
    800046cc:	0400006f          	j	8000470c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800046d0:	00006517          	auipc	a0,0x6
    800046d4:	bc850513          	addi	a0,a0,-1080 # 8000a298 <CONSOLE_STATUS+0x288>
    800046d8:	00002097          	auipc	ra,0x2
    800046dc:	dbc080e7          	jalr	-580(ra) # 80006494 <_Z11printStringPKc>
    800046e0:	00000613          	li	a2,0
    800046e4:	00a00593          	li	a1,10
    800046e8:	00048513          	mv	a0,s1
    800046ec:	00002097          	auipc	ra,0x2
    800046f0:	f58080e7          	jalr	-168(ra) # 80006644 <_Z8printIntiii>
    800046f4:	00006517          	auipc	a0,0x6
    800046f8:	de450513          	addi	a0,a0,-540 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    800046fc:	00002097          	auipc	ra,0x2
    80004700:	d98080e7          	jalr	-616(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004704:	0014849b          	addiw	s1,s1,1
    80004708:	0ff4f493          	andi	s1,s1,255
    8000470c:	00500793          	li	a5,5
    80004710:	fc97f0e3          	bgeu	a5,s1,800046d0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004714:	00006517          	auipc	a0,0x6
    80004718:	b5c50513          	addi	a0,a0,-1188 # 8000a270 <CONSOLE_STATUS+0x260>
    8000471c:	00002097          	auipc	ra,0x2
    80004720:	d78080e7          	jalr	-648(ra) # 80006494 <_Z11printStringPKc>
    finishedC = true;
    80004724:	00100793          	li	a5,1
    80004728:	00009717          	auipc	a4,0x9
    8000472c:	88f70523          	sb	a5,-1910(a4) # 8000cfb2 <_ZL9finishedC>
    thread_dispatch();
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	f48080e7          	jalr	-184(ra) # 80001678 <thread_dispatch>
}
    80004738:	01813083          	ld	ra,24(sp)
    8000473c:	01013403          	ld	s0,16(sp)
    80004740:	00813483          	ld	s1,8(sp)
    80004744:	00013903          	ld	s2,0(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret

0000000080004750 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004750:	fe010113          	addi	sp,sp,-32
    80004754:	00113c23          	sd	ra,24(sp)
    80004758:	00813823          	sd	s0,16(sp)
    8000475c:	00913423          	sd	s1,8(sp)
    80004760:	01213023          	sd	s2,0(sp)
    80004764:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004768:	00a00493          	li	s1,10
    8000476c:	0400006f          	j	800047ac <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004770:	00006517          	auipc	a0,0x6
    80004774:	b5850513          	addi	a0,a0,-1192 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004778:	00002097          	auipc	ra,0x2
    8000477c:	d1c080e7          	jalr	-740(ra) # 80006494 <_Z11printStringPKc>
    80004780:	00000613          	li	a2,0
    80004784:	00a00593          	li	a1,10
    80004788:	00048513          	mv	a0,s1
    8000478c:	00002097          	auipc	ra,0x2
    80004790:	eb8080e7          	jalr	-328(ra) # 80006644 <_Z8printIntiii>
    80004794:	00006517          	auipc	a0,0x6
    80004798:	d4450513          	addi	a0,a0,-700 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    8000479c:	00002097          	auipc	ra,0x2
    800047a0:	cf8080e7          	jalr	-776(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800047a4:	0014849b          	addiw	s1,s1,1
    800047a8:	0ff4f493          	andi	s1,s1,255
    800047ac:	00c00793          	li	a5,12
    800047b0:	fc97f0e3          	bgeu	a5,s1,80004770 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800047b4:	00006517          	auipc	a0,0x6
    800047b8:	b1c50513          	addi	a0,a0,-1252 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    800047bc:	00002097          	auipc	ra,0x2
    800047c0:	cd8080e7          	jalr	-808(ra) # 80006494 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800047c4:	00500313          	li	t1,5
    thread_dispatch();
    800047c8:	ffffd097          	auipc	ra,0xffffd
    800047cc:	eb0080e7          	jalr	-336(ra) # 80001678 <thread_dispatch>

    uint64 result = fibonacci(16);
    800047d0:	01000513          	li	a0,16
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	be8080e7          	jalr	-1048(ra) # 800043bc <_ZL9fibonaccim>
    800047dc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800047e0:	00006517          	auipc	a0,0x6
    800047e4:	b0050513          	addi	a0,a0,-1280 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800047e8:	00002097          	auipc	ra,0x2
    800047ec:	cac080e7          	jalr	-852(ra) # 80006494 <_Z11printStringPKc>
    800047f0:	00000613          	li	a2,0
    800047f4:	00a00593          	li	a1,10
    800047f8:	0009051b          	sext.w	a0,s2
    800047fc:	00002097          	auipc	ra,0x2
    80004800:	e48080e7          	jalr	-440(ra) # 80006644 <_Z8printIntiii>
    80004804:	00006517          	auipc	a0,0x6
    80004808:	cd450513          	addi	a0,a0,-812 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    8000480c:	00002097          	auipc	ra,0x2
    80004810:	c88080e7          	jalr	-888(ra) # 80006494 <_Z11printStringPKc>
    80004814:	0400006f          	j	80004854 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004818:	00006517          	auipc	a0,0x6
    8000481c:	ab050513          	addi	a0,a0,-1360 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004820:	00002097          	auipc	ra,0x2
    80004824:	c74080e7          	jalr	-908(ra) # 80006494 <_Z11printStringPKc>
    80004828:	00000613          	li	a2,0
    8000482c:	00a00593          	li	a1,10
    80004830:	00048513          	mv	a0,s1
    80004834:	00002097          	auipc	ra,0x2
    80004838:	e10080e7          	jalr	-496(ra) # 80006644 <_Z8printIntiii>
    8000483c:	00006517          	auipc	a0,0x6
    80004840:	c9c50513          	addi	a0,a0,-868 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80004844:	00002097          	auipc	ra,0x2
    80004848:	c50080e7          	jalr	-944(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000484c:	0014849b          	addiw	s1,s1,1
    80004850:	0ff4f493          	andi	s1,s1,255
    80004854:	00f00793          	li	a5,15
    80004858:	fc97f0e3          	bgeu	a5,s1,80004818 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000485c:	00006517          	auipc	a0,0x6
    80004860:	a9450513          	addi	a0,a0,-1388 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    80004864:	00002097          	auipc	ra,0x2
    80004868:	c30080e7          	jalr	-976(ra) # 80006494 <_Z11printStringPKc>
    finishedD = true;
    8000486c:	00100793          	li	a5,1
    80004870:	00008717          	auipc	a4,0x8
    80004874:	74f701a3          	sb	a5,1859(a4) # 8000cfb3 <_ZL9finishedD>
    thread_dispatch();
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	e00080e7          	jalr	-512(ra) # 80001678 <thread_dispatch>
}
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00813483          	ld	s1,8(sp)
    8000488c:	00013903          	ld	s2,0(sp)
    80004890:	02010113          	addi	sp,sp,32
    80004894:	00008067          	ret

0000000080004898 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004898:	fc010113          	addi	sp,sp,-64
    8000489c:	02113c23          	sd	ra,56(sp)
    800048a0:	02813823          	sd	s0,48(sp)
    800048a4:	02913423          	sd	s1,40(sp)
    800048a8:	03213023          	sd	s2,32(sp)
    800048ac:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800048b0:	02000513          	li	a0,32
    800048b4:	fffff097          	auipc	ra,0xfffff
    800048b8:	c04080e7          	jalr	-1020(ra) # 800034b8 <_Znwm>
    800048bc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800048c0:	fffff097          	auipc	ra,0xfffff
    800048c4:	ce0080e7          	jalr	-800(ra) # 800035a0 <_ZN6ThreadC1Ev>
    800048c8:	00008797          	auipc	a5,0x8
    800048cc:	1f878793          	addi	a5,a5,504 # 8000cac0 <_ZTV7WorkerA+0x10>
    800048d0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800048d4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800048d8:	00006517          	auipc	a0,0x6
    800048dc:	a2850513          	addi	a0,a0,-1496 # 8000a300 <CONSOLE_STATUS+0x2f0>
    800048e0:	00002097          	auipc	ra,0x2
    800048e4:	bb4080e7          	jalr	-1100(ra) # 80006494 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800048e8:	02000513          	li	a0,32
    800048ec:	fffff097          	auipc	ra,0xfffff
    800048f0:	bcc080e7          	jalr	-1076(ra) # 800034b8 <_Znwm>
    800048f4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800048f8:	fffff097          	auipc	ra,0xfffff
    800048fc:	ca8080e7          	jalr	-856(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80004900:	00008797          	auipc	a5,0x8
    80004904:	1e878793          	addi	a5,a5,488 # 8000cae8 <_ZTV7WorkerB+0x10>
    80004908:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000490c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004910:	00006517          	auipc	a0,0x6
    80004914:	a0850513          	addi	a0,a0,-1528 # 8000a318 <CONSOLE_STATUS+0x308>
    80004918:	00002097          	auipc	ra,0x2
    8000491c:	b7c080e7          	jalr	-1156(ra) # 80006494 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004920:	02000513          	li	a0,32
    80004924:	fffff097          	auipc	ra,0xfffff
    80004928:	b94080e7          	jalr	-1132(ra) # 800034b8 <_Znwm>
    8000492c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004930:	fffff097          	auipc	ra,0xfffff
    80004934:	c70080e7          	jalr	-912(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80004938:	00008797          	auipc	a5,0x8
    8000493c:	1d878793          	addi	a5,a5,472 # 8000cb10 <_ZTV7WorkerC+0x10>
    80004940:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004944:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004948:	00006517          	auipc	a0,0x6
    8000494c:	9e850513          	addi	a0,a0,-1560 # 8000a330 <CONSOLE_STATUS+0x320>
    80004950:	00002097          	auipc	ra,0x2
    80004954:	b44080e7          	jalr	-1212(ra) # 80006494 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004958:	02000513          	li	a0,32
    8000495c:	fffff097          	auipc	ra,0xfffff
    80004960:	b5c080e7          	jalr	-1188(ra) # 800034b8 <_Znwm>
    80004964:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004968:	fffff097          	auipc	ra,0xfffff
    8000496c:	c38080e7          	jalr	-968(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80004970:	00008797          	auipc	a5,0x8
    80004974:	1c878793          	addi	a5,a5,456 # 8000cb38 <_ZTV7WorkerD+0x10>
    80004978:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000497c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004980:	00006517          	auipc	a0,0x6
    80004984:	9c850513          	addi	a0,a0,-1592 # 8000a348 <CONSOLE_STATUS+0x338>
    80004988:	00002097          	auipc	ra,0x2
    8000498c:	b0c080e7          	jalr	-1268(ra) # 80006494 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004990:	00000493          	li	s1,0
    80004994:	00300793          	li	a5,3
    80004998:	0297c663          	blt	a5,s1,800049c4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000499c:	00349793          	slli	a5,s1,0x3
    800049a0:	fe040713          	addi	a4,s0,-32
    800049a4:	00f707b3          	add	a5,a4,a5
    800049a8:	fe07b503          	ld	a0,-32(a5)
    800049ac:	fffff097          	auipc	ra,0xfffff
    800049b0:	c24080e7          	jalr	-988(ra) # 800035d0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800049b4:	0014849b          	addiw	s1,s1,1
    800049b8:	fddff06f          	j	80004994 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800049bc:	fffff097          	auipc	ra,0xfffff
    800049c0:	c68080e7          	jalr	-920(ra) # 80003624 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800049c4:	00008797          	auipc	a5,0x8
    800049c8:	5ec7c783          	lbu	a5,1516(a5) # 8000cfb0 <_ZL9finishedA>
    800049cc:	fe0788e3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x124>
    800049d0:	00008797          	auipc	a5,0x8
    800049d4:	5e17c783          	lbu	a5,1505(a5) # 8000cfb1 <_ZL9finishedB>
    800049d8:	fe0782e3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x124>
    800049dc:	00008797          	auipc	a5,0x8
    800049e0:	5d67c783          	lbu	a5,1494(a5) # 8000cfb2 <_ZL9finishedC>
    800049e4:	fc078ce3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x124>
    800049e8:	00008797          	auipc	a5,0x8
    800049ec:	5cb7c783          	lbu	a5,1483(a5) # 8000cfb3 <_ZL9finishedD>
    800049f0:	fc0786e3          	beqz	a5,800049bc <_Z20Threads_CPP_API_testv+0x124>
    800049f4:	fc040493          	addi	s1,s0,-64
    800049f8:	0080006f          	j	80004a00 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800049fc:	00848493          	addi	s1,s1,8
    80004a00:	fe040793          	addi	a5,s0,-32
    80004a04:	08f48663          	beq	s1,a5,80004a90 <_Z20Threads_CPP_API_testv+0x1f8>
    80004a08:	0004b503          	ld	a0,0(s1)
    80004a0c:	fe0508e3          	beqz	a0,800049fc <_Z20Threads_CPP_API_testv+0x164>
    80004a10:	00053783          	ld	a5,0(a0)
    80004a14:	0087b783          	ld	a5,8(a5)
    80004a18:	000780e7          	jalr	a5
    80004a1c:	fe1ff06f          	j	800049fc <_Z20Threads_CPP_API_testv+0x164>
    80004a20:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004a24:	00048513          	mv	a0,s1
    80004a28:	fffff097          	auipc	ra,0xfffff
    80004a2c:	ab8080e7          	jalr	-1352(ra) # 800034e0 <_ZdlPv>
    80004a30:	00090513          	mv	a0,s2
    80004a34:	00009097          	auipc	ra,0x9
    80004a38:	684080e7          	jalr	1668(ra) # 8000e0b8 <_Unwind_Resume>
    80004a3c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004a40:	00048513          	mv	a0,s1
    80004a44:	fffff097          	auipc	ra,0xfffff
    80004a48:	a9c080e7          	jalr	-1380(ra) # 800034e0 <_ZdlPv>
    80004a4c:	00090513          	mv	a0,s2
    80004a50:	00009097          	auipc	ra,0x9
    80004a54:	668080e7          	jalr	1640(ra) # 8000e0b8 <_Unwind_Resume>
    80004a58:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004a5c:	00048513          	mv	a0,s1
    80004a60:	fffff097          	auipc	ra,0xfffff
    80004a64:	a80080e7          	jalr	-1408(ra) # 800034e0 <_ZdlPv>
    80004a68:	00090513          	mv	a0,s2
    80004a6c:	00009097          	auipc	ra,0x9
    80004a70:	64c080e7          	jalr	1612(ra) # 8000e0b8 <_Unwind_Resume>
    80004a74:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004a78:	00048513          	mv	a0,s1
    80004a7c:	fffff097          	auipc	ra,0xfffff
    80004a80:	a64080e7          	jalr	-1436(ra) # 800034e0 <_ZdlPv>
    80004a84:	00090513          	mv	a0,s2
    80004a88:	00009097          	auipc	ra,0x9
    80004a8c:	630080e7          	jalr	1584(ra) # 8000e0b8 <_Unwind_Resume>
}
    80004a90:	03813083          	ld	ra,56(sp)
    80004a94:	03013403          	ld	s0,48(sp)
    80004a98:	02813483          	ld	s1,40(sp)
    80004a9c:	02013903          	ld	s2,32(sp)
    80004aa0:	04010113          	addi	sp,sp,64
    80004aa4:	00008067          	ret

0000000080004aa8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004aa8:	ff010113          	addi	sp,sp,-16
    80004aac:	00113423          	sd	ra,8(sp)
    80004ab0:	00813023          	sd	s0,0(sp)
    80004ab4:	01010413          	addi	s0,sp,16
    80004ab8:	00008797          	auipc	a5,0x8
    80004abc:	00878793          	addi	a5,a5,8 # 8000cac0 <_ZTV7WorkerA+0x10>
    80004ac0:	00f53023          	sd	a5,0(a0)
    80004ac4:	fffff097          	auipc	ra,0xfffff
    80004ac8:	924080e7          	jalr	-1756(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004acc:	00813083          	ld	ra,8(sp)
    80004ad0:	00013403          	ld	s0,0(sp)
    80004ad4:	01010113          	addi	sp,sp,16
    80004ad8:	00008067          	ret

0000000080004adc <_ZN7WorkerAD0Ev>:
    80004adc:	fe010113          	addi	sp,sp,-32
    80004ae0:	00113c23          	sd	ra,24(sp)
    80004ae4:	00813823          	sd	s0,16(sp)
    80004ae8:	00913423          	sd	s1,8(sp)
    80004aec:	02010413          	addi	s0,sp,32
    80004af0:	00050493          	mv	s1,a0
    80004af4:	00008797          	auipc	a5,0x8
    80004af8:	fcc78793          	addi	a5,a5,-52 # 8000cac0 <_ZTV7WorkerA+0x10>
    80004afc:	00f53023          	sd	a5,0(a0)
    80004b00:	fffff097          	auipc	ra,0xfffff
    80004b04:	8e8080e7          	jalr	-1816(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004b08:	00048513          	mv	a0,s1
    80004b0c:	fffff097          	auipc	ra,0xfffff
    80004b10:	9d4080e7          	jalr	-1580(ra) # 800034e0 <_ZdlPv>
    80004b14:	01813083          	ld	ra,24(sp)
    80004b18:	01013403          	ld	s0,16(sp)
    80004b1c:	00813483          	ld	s1,8(sp)
    80004b20:	02010113          	addi	sp,sp,32
    80004b24:	00008067          	ret

0000000080004b28 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004b28:	ff010113          	addi	sp,sp,-16
    80004b2c:	00113423          	sd	ra,8(sp)
    80004b30:	00813023          	sd	s0,0(sp)
    80004b34:	01010413          	addi	s0,sp,16
    80004b38:	00008797          	auipc	a5,0x8
    80004b3c:	fb078793          	addi	a5,a5,-80 # 8000cae8 <_ZTV7WorkerB+0x10>
    80004b40:	00f53023          	sd	a5,0(a0)
    80004b44:	fffff097          	auipc	ra,0xfffff
    80004b48:	8a4080e7          	jalr	-1884(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004b4c:	00813083          	ld	ra,8(sp)
    80004b50:	00013403          	ld	s0,0(sp)
    80004b54:	01010113          	addi	sp,sp,16
    80004b58:	00008067          	ret

0000000080004b5c <_ZN7WorkerBD0Ev>:
    80004b5c:	fe010113          	addi	sp,sp,-32
    80004b60:	00113c23          	sd	ra,24(sp)
    80004b64:	00813823          	sd	s0,16(sp)
    80004b68:	00913423          	sd	s1,8(sp)
    80004b6c:	02010413          	addi	s0,sp,32
    80004b70:	00050493          	mv	s1,a0
    80004b74:	00008797          	auipc	a5,0x8
    80004b78:	f7478793          	addi	a5,a5,-140 # 8000cae8 <_ZTV7WorkerB+0x10>
    80004b7c:	00f53023          	sd	a5,0(a0)
    80004b80:	fffff097          	auipc	ra,0xfffff
    80004b84:	868080e7          	jalr	-1944(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	fffff097          	auipc	ra,0xfffff
    80004b90:	954080e7          	jalr	-1708(ra) # 800034e0 <_ZdlPv>
    80004b94:	01813083          	ld	ra,24(sp)
    80004b98:	01013403          	ld	s0,16(sp)
    80004b9c:	00813483          	ld	s1,8(sp)
    80004ba0:	02010113          	addi	sp,sp,32
    80004ba4:	00008067          	ret

0000000080004ba8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004ba8:	ff010113          	addi	sp,sp,-16
    80004bac:	00113423          	sd	ra,8(sp)
    80004bb0:	00813023          	sd	s0,0(sp)
    80004bb4:	01010413          	addi	s0,sp,16
    80004bb8:	00008797          	auipc	a5,0x8
    80004bbc:	f5878793          	addi	a5,a5,-168 # 8000cb10 <_ZTV7WorkerC+0x10>
    80004bc0:	00f53023          	sd	a5,0(a0)
    80004bc4:	fffff097          	auipc	ra,0xfffff
    80004bc8:	824080e7          	jalr	-2012(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004bcc:	00813083          	ld	ra,8(sp)
    80004bd0:	00013403          	ld	s0,0(sp)
    80004bd4:	01010113          	addi	sp,sp,16
    80004bd8:	00008067          	ret

0000000080004bdc <_ZN7WorkerCD0Ev>:
    80004bdc:	fe010113          	addi	sp,sp,-32
    80004be0:	00113c23          	sd	ra,24(sp)
    80004be4:	00813823          	sd	s0,16(sp)
    80004be8:	00913423          	sd	s1,8(sp)
    80004bec:	02010413          	addi	s0,sp,32
    80004bf0:	00050493          	mv	s1,a0
    80004bf4:	00008797          	auipc	a5,0x8
    80004bf8:	f1c78793          	addi	a5,a5,-228 # 8000cb10 <_ZTV7WorkerC+0x10>
    80004bfc:	00f53023          	sd	a5,0(a0)
    80004c00:	ffffe097          	auipc	ra,0xffffe
    80004c04:	7e8080e7          	jalr	2024(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004c08:	00048513          	mv	a0,s1
    80004c0c:	fffff097          	auipc	ra,0xfffff
    80004c10:	8d4080e7          	jalr	-1836(ra) # 800034e0 <_ZdlPv>
    80004c14:	01813083          	ld	ra,24(sp)
    80004c18:	01013403          	ld	s0,16(sp)
    80004c1c:	00813483          	ld	s1,8(sp)
    80004c20:	02010113          	addi	sp,sp,32
    80004c24:	00008067          	ret

0000000080004c28 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004c28:	ff010113          	addi	sp,sp,-16
    80004c2c:	00113423          	sd	ra,8(sp)
    80004c30:	00813023          	sd	s0,0(sp)
    80004c34:	01010413          	addi	s0,sp,16
    80004c38:	00008797          	auipc	a5,0x8
    80004c3c:	f0078793          	addi	a5,a5,-256 # 8000cb38 <_ZTV7WorkerD+0x10>
    80004c40:	00f53023          	sd	a5,0(a0)
    80004c44:	ffffe097          	auipc	ra,0xffffe
    80004c48:	7a4080e7          	jalr	1956(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004c4c:	00813083          	ld	ra,8(sp)
    80004c50:	00013403          	ld	s0,0(sp)
    80004c54:	01010113          	addi	sp,sp,16
    80004c58:	00008067          	ret

0000000080004c5c <_ZN7WorkerDD0Ev>:
    80004c5c:	fe010113          	addi	sp,sp,-32
    80004c60:	00113c23          	sd	ra,24(sp)
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	02010413          	addi	s0,sp,32
    80004c70:	00050493          	mv	s1,a0
    80004c74:	00008797          	auipc	a5,0x8
    80004c78:	ec478793          	addi	a5,a5,-316 # 8000cb38 <_ZTV7WorkerD+0x10>
    80004c7c:	00f53023          	sd	a5,0(a0)
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	768080e7          	jalr	1896(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80004c88:	00048513          	mv	a0,s1
    80004c8c:	fffff097          	auipc	ra,0xfffff
    80004c90:	854080e7          	jalr	-1964(ra) # 800034e0 <_ZdlPv>
    80004c94:	01813083          	ld	ra,24(sp)
    80004c98:	01013403          	ld	s0,16(sp)
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN7WorkerA3runEv>:
    void run() override {
    80004ca8:	ff010113          	addi	sp,sp,-16
    80004cac:	00113423          	sd	ra,8(sp)
    80004cb0:	00813023          	sd	s0,0(sp)
    80004cb4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004cb8:	00000593          	li	a1,0
    80004cbc:	fffff097          	auipc	ra,0xfffff
    80004cc0:	774080e7          	jalr	1908(ra) # 80004430 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004cc4:	00813083          	ld	ra,8(sp)
    80004cc8:	00013403          	ld	s0,0(sp)
    80004ccc:	01010113          	addi	sp,sp,16
    80004cd0:	00008067          	ret

0000000080004cd4 <_ZN7WorkerB3runEv>:
    void run() override {
    80004cd4:	ff010113          	addi	sp,sp,-16
    80004cd8:	00113423          	sd	ra,8(sp)
    80004cdc:	00813023          	sd	s0,0(sp)
    80004ce0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004ce4:	00000593          	li	a1,0
    80004ce8:	00000097          	auipc	ra,0x0
    80004cec:	814080e7          	jalr	-2028(ra) # 800044fc <_ZN7WorkerB11workerBodyBEPv>
    }
    80004cf0:	00813083          	ld	ra,8(sp)
    80004cf4:	00013403          	ld	s0,0(sp)
    80004cf8:	01010113          	addi	sp,sp,16
    80004cfc:	00008067          	ret

0000000080004d00 <_ZN7WorkerC3runEv>:
    void run() override {
    80004d00:	ff010113          	addi	sp,sp,-16
    80004d04:	00113423          	sd	ra,8(sp)
    80004d08:	00813023          	sd	s0,0(sp)
    80004d0c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004d10:	00000593          	li	a1,0
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	8bc080e7          	jalr	-1860(ra) # 800045d0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004d1c:	00813083          	ld	ra,8(sp)
    80004d20:	00013403          	ld	s0,0(sp)
    80004d24:	01010113          	addi	sp,sp,16
    80004d28:	00008067          	ret

0000000080004d2c <_ZN7WorkerD3runEv>:
    void run() override {
    80004d2c:	ff010113          	addi	sp,sp,-16
    80004d30:	00113423          	sd	ra,8(sp)
    80004d34:	00813023          	sd	s0,0(sp)
    80004d38:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004d3c:	00000593          	li	a1,0
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	a10080e7          	jalr	-1520(ra) # 80004750 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004d48:	00813083          	ld	ra,8(sp)
    80004d4c:	00013403          	ld	s0,0(sp)
    80004d50:	01010113          	addi	sp,sp,16
    80004d54:	00008067          	ret

0000000080004d58 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004d58:	f8010113          	addi	sp,sp,-128
    80004d5c:	06113c23          	sd	ra,120(sp)
    80004d60:	06813823          	sd	s0,112(sp)
    80004d64:	06913423          	sd	s1,104(sp)
    80004d68:	07213023          	sd	s2,96(sp)
    80004d6c:	05313c23          	sd	s3,88(sp)
    80004d70:	05413823          	sd	s4,80(sp)
    80004d74:	05513423          	sd	s5,72(sp)
    80004d78:	05613023          	sd	s6,64(sp)
    80004d7c:	03713c23          	sd	s7,56(sp)
    80004d80:	03813823          	sd	s8,48(sp)
    80004d84:	03913423          	sd	s9,40(sp)
    80004d88:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004d8c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004d90:	00005517          	auipc	a0,0x5
    80004d94:	3f050513          	addi	a0,a0,1008 # 8000a180 <CONSOLE_STATUS+0x170>
    80004d98:	00001097          	auipc	ra,0x1
    80004d9c:	6fc080e7          	jalr	1788(ra) # 80006494 <_Z11printStringPKc>
    getString(input, 30);
    80004da0:	01e00593          	li	a1,30
    80004da4:	f8040493          	addi	s1,s0,-128
    80004da8:	00048513          	mv	a0,s1
    80004dac:	00001097          	auipc	ra,0x1
    80004db0:	770080e7          	jalr	1904(ra) # 8000651c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004db4:	00048513          	mv	a0,s1
    80004db8:	00002097          	auipc	ra,0x2
    80004dbc:	83c080e7          	jalr	-1988(ra) # 800065f4 <_Z11stringToIntPKc>
    80004dc0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004dc4:	00005517          	auipc	a0,0x5
    80004dc8:	3dc50513          	addi	a0,a0,988 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	6c8080e7          	jalr	1736(ra) # 80006494 <_Z11printStringPKc>
    getString(input, 30);
    80004dd4:	01e00593          	li	a1,30
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	740080e7          	jalr	1856(ra) # 8000651c <_Z9getStringPci>
    n = stringToInt(input);
    80004de4:	00048513          	mv	a0,s1
    80004de8:	00002097          	auipc	ra,0x2
    80004dec:	80c080e7          	jalr	-2036(ra) # 800065f4 <_Z11stringToIntPKc>
    80004df0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004df4:	00005517          	auipc	a0,0x5
    80004df8:	3cc50513          	addi	a0,a0,972 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	698080e7          	jalr	1688(ra) # 80006494 <_Z11printStringPKc>
    printInt(threadNum);
    80004e04:	00000613          	li	a2,0
    80004e08:	00a00593          	li	a1,10
    80004e0c:	00098513          	mv	a0,s3
    80004e10:	00002097          	auipc	ra,0x2
    80004e14:	834080e7          	jalr	-1996(ra) # 80006644 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004e18:	00005517          	auipc	a0,0x5
    80004e1c:	3c050513          	addi	a0,a0,960 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    80004e20:	00001097          	auipc	ra,0x1
    80004e24:	674080e7          	jalr	1652(ra) # 80006494 <_Z11printStringPKc>
    printInt(n);
    80004e28:	00000613          	li	a2,0
    80004e2c:	00a00593          	li	a1,10
    80004e30:	00048513          	mv	a0,s1
    80004e34:	00002097          	auipc	ra,0x2
    80004e38:	810080e7          	jalr	-2032(ra) # 80006644 <_Z8printIntiii>
    printString(".\n");
    80004e3c:	00005517          	auipc	a0,0x5
    80004e40:	3b450513          	addi	a0,a0,948 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	650080e7          	jalr	1616(ra) # 80006494 <_Z11printStringPKc>
    if (threadNum > n) {
    80004e4c:	0334c463          	blt	s1,s3,80004e74 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004e50:	03305c63          	blez	s3,80004e88 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004e54:	03800513          	li	a0,56
    80004e58:	ffffe097          	auipc	ra,0xffffe
    80004e5c:	660080e7          	jalr	1632(ra) # 800034b8 <_Znwm>
    80004e60:	00050a93          	mv	s5,a0
    80004e64:	00048593          	mv	a1,s1
    80004e68:	00002097          	auipc	ra,0x2
    80004e6c:	8fc080e7          	jalr	-1796(ra) # 80006764 <_ZN9BufferCPPC1Ei>
    80004e70:	0300006f          	j	80004ea0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    80004e74:	00005517          	auipc	a0,0x5
    80004e78:	4ec50513          	addi	a0,a0,1260 # 8000a360 <CONSOLE_STATUS+0x350>
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	618080e7          	jalr	1560(ra) # 80006494 <_Z11printStringPKc>
        return;
    80004e84:	0140006f          	j	80004e98 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004e88:	00005517          	auipc	a0,0x5
    80004e8c:	3b050513          	addi	a0,a0,944 # 8000a238 <CONSOLE_STATUS+0x228>
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	604080e7          	jalr	1540(ra) # 80006494 <_Z11printStringPKc>
        return;
    80004e98:	000c0113          	mv	sp,s8
    80004e9c:	2140006f          	j	800050b0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004ea0:	01000513          	li	a0,16
    80004ea4:	ffffe097          	auipc	ra,0xffffe
    80004ea8:	614080e7          	jalr	1556(ra) # 800034b8 <_Znwm>
    80004eac:	00050913          	mv	s2,a0
    80004eb0:	00000593          	li	a1,0
    80004eb4:	ffffe097          	auipc	ra,0xffffe
    80004eb8:	7c0080e7          	jalr	1984(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    80004ebc:	00008797          	auipc	a5,0x8
    80004ec0:	1127b223          	sd	s2,260(a5) # 8000cfc0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004ec4:	00399793          	slli	a5,s3,0x3
    80004ec8:	00f78793          	addi	a5,a5,15
    80004ecc:	ff07f793          	andi	a5,a5,-16
    80004ed0:	40f10133          	sub	sp,sp,a5
    80004ed4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004ed8:	0019871b          	addiw	a4,s3,1
    80004edc:	00171793          	slli	a5,a4,0x1
    80004ee0:	00e787b3          	add	a5,a5,a4
    80004ee4:	00379793          	slli	a5,a5,0x3
    80004ee8:	00f78793          	addi	a5,a5,15
    80004eec:	ff07f793          	andi	a5,a5,-16
    80004ef0:	40f10133          	sub	sp,sp,a5
    80004ef4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004ef8:	00199493          	slli	s1,s3,0x1
    80004efc:	013484b3          	add	s1,s1,s3
    80004f00:	00349493          	slli	s1,s1,0x3
    80004f04:	009b04b3          	add	s1,s6,s1
    80004f08:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004f0c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004f10:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004f14:	02800513          	li	a0,40
    80004f18:	ffffe097          	auipc	ra,0xffffe
    80004f1c:	5a0080e7          	jalr	1440(ra) # 800034b8 <_Znwm>
    80004f20:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004f24:	ffffe097          	auipc	ra,0xffffe
    80004f28:	67c080e7          	jalr	1660(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80004f2c:	00008797          	auipc	a5,0x8
    80004f30:	c8478793          	addi	a5,a5,-892 # 8000cbb0 <_ZTV8Consumer+0x10>
    80004f34:	00fbb023          	sd	a5,0(s7)
    80004f38:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004f3c:	000b8513          	mv	a0,s7
    80004f40:	ffffe097          	auipc	ra,0xffffe
    80004f44:	690080e7          	jalr	1680(ra) # 800035d0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004f48:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004f4c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004f50:	00008797          	auipc	a5,0x8
    80004f54:	0707b783          	ld	a5,112(a5) # 8000cfc0 <_ZL10waitForAll>
    80004f58:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004f5c:	02800513          	li	a0,40
    80004f60:	ffffe097          	auipc	ra,0xffffe
    80004f64:	558080e7          	jalr	1368(ra) # 800034b8 <_Znwm>
    80004f68:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004f6c:	ffffe097          	auipc	ra,0xffffe
    80004f70:	634080e7          	jalr	1588(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80004f74:	00008797          	auipc	a5,0x8
    80004f78:	bec78793          	addi	a5,a5,-1044 # 8000cb60 <_ZTV16ProducerKeyborad+0x10>
    80004f7c:	00f4b023          	sd	a5,0(s1)
    80004f80:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004f84:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004f88:	00048513          	mv	a0,s1
    80004f8c:	ffffe097          	auipc	ra,0xffffe
    80004f90:	644080e7          	jalr	1604(ra) # 800035d0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004f94:	00100913          	li	s2,1
    80004f98:	0300006f          	j	80004fc8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004f9c:	00008797          	auipc	a5,0x8
    80004fa0:	bec78793          	addi	a5,a5,-1044 # 8000cb88 <_ZTV8Producer+0x10>
    80004fa4:	00fcb023          	sd	a5,0(s9)
    80004fa8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004fac:	00391793          	slli	a5,s2,0x3
    80004fb0:	00fa07b3          	add	a5,s4,a5
    80004fb4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004fb8:	000c8513          	mv	a0,s9
    80004fbc:	ffffe097          	auipc	ra,0xffffe
    80004fc0:	614080e7          	jalr	1556(ra) # 800035d0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004fc4:	0019091b          	addiw	s2,s2,1
    80004fc8:	05395263          	bge	s2,s3,8000500c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004fcc:	00191493          	slli	s1,s2,0x1
    80004fd0:	012484b3          	add	s1,s1,s2
    80004fd4:	00349493          	slli	s1,s1,0x3
    80004fd8:	009b04b3          	add	s1,s6,s1
    80004fdc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004fe0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004fe4:	00008797          	auipc	a5,0x8
    80004fe8:	fdc7b783          	ld	a5,-36(a5) # 8000cfc0 <_ZL10waitForAll>
    80004fec:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004ff0:	02800513          	li	a0,40
    80004ff4:	ffffe097          	auipc	ra,0xffffe
    80004ff8:	4c4080e7          	jalr	1220(ra) # 800034b8 <_Znwm>
    80004ffc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80005000:	ffffe097          	auipc	ra,0xffffe
    80005004:	5a0080e7          	jalr	1440(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80005008:	f95ff06f          	j	80004f9c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000500c:	ffffe097          	auipc	ra,0xffffe
    80005010:	618080e7          	jalr	1560(ra) # 80003624 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005014:	00000493          	li	s1,0
    80005018:	0099ce63          	blt	s3,s1,80005034 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000501c:	00008517          	auipc	a0,0x8
    80005020:	fa453503          	ld	a0,-92(a0) # 8000cfc0 <_ZL10waitForAll>
    80005024:	ffffe097          	auipc	ra,0xffffe
    80005028:	688080e7          	jalr	1672(ra) # 800036ac <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000502c:	0014849b          	addiw	s1,s1,1
    80005030:	fe9ff06f          	j	80005018 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80005034:	00008517          	auipc	a0,0x8
    80005038:	f8c53503          	ld	a0,-116(a0) # 8000cfc0 <_ZL10waitForAll>
    8000503c:	00050863          	beqz	a0,8000504c <_Z20testConsumerProducerv+0x2f4>
    80005040:	00053783          	ld	a5,0(a0)
    80005044:	0087b783          	ld	a5,8(a5)
    80005048:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000504c:	00000493          	li	s1,0
    80005050:	0080006f          	j	80005058 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80005054:	0014849b          	addiw	s1,s1,1
    80005058:	0334d263          	bge	s1,s3,8000507c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000505c:	00349793          	slli	a5,s1,0x3
    80005060:	00fa07b3          	add	a5,s4,a5
    80005064:	0007b503          	ld	a0,0(a5)
    80005068:	fe0506e3          	beqz	a0,80005054 <_Z20testConsumerProducerv+0x2fc>
    8000506c:	00053783          	ld	a5,0(a0)
    80005070:	0087b783          	ld	a5,8(a5)
    80005074:	000780e7          	jalr	a5
    80005078:	fddff06f          	j	80005054 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000507c:	000b8a63          	beqz	s7,80005090 <_Z20testConsumerProducerv+0x338>
    80005080:	000bb783          	ld	a5,0(s7)
    80005084:	0087b783          	ld	a5,8(a5)
    80005088:	000b8513          	mv	a0,s7
    8000508c:	000780e7          	jalr	a5
    delete buffer;
    80005090:	000a8e63          	beqz	s5,800050ac <_Z20testConsumerProducerv+0x354>
    80005094:	000a8513          	mv	a0,s5
    80005098:	00002097          	auipc	ra,0x2
    8000509c:	9c4080e7          	jalr	-1596(ra) # 80006a5c <_ZN9BufferCPPD1Ev>
    800050a0:	000a8513          	mv	a0,s5
    800050a4:	ffffe097          	auipc	ra,0xffffe
    800050a8:	43c080e7          	jalr	1084(ra) # 800034e0 <_ZdlPv>
    800050ac:	000c0113          	mv	sp,s8
}
    800050b0:	f8040113          	addi	sp,s0,-128
    800050b4:	07813083          	ld	ra,120(sp)
    800050b8:	07013403          	ld	s0,112(sp)
    800050bc:	06813483          	ld	s1,104(sp)
    800050c0:	06013903          	ld	s2,96(sp)
    800050c4:	05813983          	ld	s3,88(sp)
    800050c8:	05013a03          	ld	s4,80(sp)
    800050cc:	04813a83          	ld	s5,72(sp)
    800050d0:	04013b03          	ld	s6,64(sp)
    800050d4:	03813b83          	ld	s7,56(sp)
    800050d8:	03013c03          	ld	s8,48(sp)
    800050dc:	02813c83          	ld	s9,40(sp)
    800050e0:	08010113          	addi	sp,sp,128
    800050e4:	00008067          	ret
    800050e8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800050ec:	000a8513          	mv	a0,s5
    800050f0:	ffffe097          	auipc	ra,0xffffe
    800050f4:	3f0080e7          	jalr	1008(ra) # 800034e0 <_ZdlPv>
    800050f8:	00048513          	mv	a0,s1
    800050fc:	00009097          	auipc	ra,0x9
    80005100:	fbc080e7          	jalr	-68(ra) # 8000e0b8 <_Unwind_Resume>
    80005104:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80005108:	00090513          	mv	a0,s2
    8000510c:	ffffe097          	auipc	ra,0xffffe
    80005110:	3d4080e7          	jalr	980(ra) # 800034e0 <_ZdlPv>
    80005114:	00048513          	mv	a0,s1
    80005118:	00009097          	auipc	ra,0x9
    8000511c:	fa0080e7          	jalr	-96(ra) # 8000e0b8 <_Unwind_Resume>
    80005120:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80005124:	000b8513          	mv	a0,s7
    80005128:	ffffe097          	auipc	ra,0xffffe
    8000512c:	3b8080e7          	jalr	952(ra) # 800034e0 <_ZdlPv>
    80005130:	00048513          	mv	a0,s1
    80005134:	00009097          	auipc	ra,0x9
    80005138:	f84080e7          	jalr	-124(ra) # 8000e0b8 <_Unwind_Resume>
    8000513c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80005140:	00048513          	mv	a0,s1
    80005144:	ffffe097          	auipc	ra,0xffffe
    80005148:	39c080e7          	jalr	924(ra) # 800034e0 <_ZdlPv>
    8000514c:	00090513          	mv	a0,s2
    80005150:	00009097          	auipc	ra,0x9
    80005154:	f68080e7          	jalr	-152(ra) # 8000e0b8 <_Unwind_Resume>
    80005158:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000515c:	000c8513          	mv	a0,s9
    80005160:	ffffe097          	auipc	ra,0xffffe
    80005164:	380080e7          	jalr	896(ra) # 800034e0 <_ZdlPv>
    80005168:	00048513          	mv	a0,s1
    8000516c:	00009097          	auipc	ra,0x9
    80005170:	f4c080e7          	jalr	-180(ra) # 8000e0b8 <_Unwind_Resume>

0000000080005174 <_ZN8Consumer3runEv>:
    void run() override {
    80005174:	fd010113          	addi	sp,sp,-48
    80005178:	02113423          	sd	ra,40(sp)
    8000517c:	02813023          	sd	s0,32(sp)
    80005180:	00913c23          	sd	s1,24(sp)
    80005184:	01213823          	sd	s2,16(sp)
    80005188:	01313423          	sd	s3,8(sp)
    8000518c:	03010413          	addi	s0,sp,48
    80005190:	00050913          	mv	s2,a0
        int i = 0;
    80005194:	00000993          	li	s3,0
    80005198:	0100006f          	j	800051a8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000519c:	00a00513          	li	a0,10
    800051a0:	ffffe097          	auipc	ra,0xffffe
    800051a4:	624080e7          	jalr	1572(ra) # 800037c4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800051a8:	00008797          	auipc	a5,0x8
    800051ac:	e107a783          	lw	a5,-496(a5) # 8000cfb8 <_ZL9threadEnd>
    800051b0:	04079a63          	bnez	a5,80005204 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800051b4:	02093783          	ld	a5,32(s2)
    800051b8:	0087b503          	ld	a0,8(a5)
    800051bc:	00001097          	auipc	ra,0x1
    800051c0:	78c080e7          	jalr	1932(ra) # 80006948 <_ZN9BufferCPP3getEv>
            i++;
    800051c4:	0019849b          	addiw	s1,s3,1
    800051c8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800051cc:	0ff57513          	andi	a0,a0,255
    800051d0:	ffffe097          	auipc	ra,0xffffe
    800051d4:	5f4080e7          	jalr	1524(ra) # 800037c4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800051d8:	05000793          	li	a5,80
    800051dc:	02f4e4bb          	remw	s1,s1,a5
    800051e0:	fc0494e3          	bnez	s1,800051a8 <_ZN8Consumer3runEv+0x34>
    800051e4:	fb9ff06f          	j	8000519c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800051e8:	02093783          	ld	a5,32(s2)
    800051ec:	0087b503          	ld	a0,8(a5)
    800051f0:	00001097          	auipc	ra,0x1
    800051f4:	758080e7          	jalr	1880(ra) # 80006948 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800051f8:	0ff57513          	andi	a0,a0,255
    800051fc:	ffffe097          	auipc	ra,0xffffe
    80005200:	5c8080e7          	jalr	1480(ra) # 800037c4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80005204:	02093783          	ld	a5,32(s2)
    80005208:	0087b503          	ld	a0,8(a5)
    8000520c:	00001097          	auipc	ra,0x1
    80005210:	7c8080e7          	jalr	1992(ra) # 800069d4 <_ZN9BufferCPP6getCntEv>
    80005214:	fca04ae3          	bgtz	a0,800051e8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80005218:	02093783          	ld	a5,32(s2)
    8000521c:	0107b503          	ld	a0,16(a5)
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	4b8080e7          	jalr	1208(ra) # 800036d8 <_ZN9Semaphore6signalEv>
    }
    80005228:	02813083          	ld	ra,40(sp)
    8000522c:	02013403          	ld	s0,32(sp)
    80005230:	01813483          	ld	s1,24(sp)
    80005234:	01013903          	ld	s2,16(sp)
    80005238:	00813983          	ld	s3,8(sp)
    8000523c:	03010113          	addi	sp,sp,48
    80005240:	00008067          	ret

0000000080005244 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80005244:	ff010113          	addi	sp,sp,-16
    80005248:	00113423          	sd	ra,8(sp)
    8000524c:	00813023          	sd	s0,0(sp)
    80005250:	01010413          	addi	s0,sp,16
    80005254:	00008797          	auipc	a5,0x8
    80005258:	95c78793          	addi	a5,a5,-1700 # 8000cbb0 <_ZTV8Consumer+0x10>
    8000525c:	00f53023          	sd	a5,0(a0)
    80005260:	ffffe097          	auipc	ra,0xffffe
    80005264:	188080e7          	jalr	392(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80005268:	00813083          	ld	ra,8(sp)
    8000526c:	00013403          	ld	s0,0(sp)
    80005270:	01010113          	addi	sp,sp,16
    80005274:	00008067          	ret

0000000080005278 <_ZN8ConsumerD0Ev>:
    80005278:	fe010113          	addi	sp,sp,-32
    8000527c:	00113c23          	sd	ra,24(sp)
    80005280:	00813823          	sd	s0,16(sp)
    80005284:	00913423          	sd	s1,8(sp)
    80005288:	02010413          	addi	s0,sp,32
    8000528c:	00050493          	mv	s1,a0
    80005290:	00008797          	auipc	a5,0x8
    80005294:	92078793          	addi	a5,a5,-1760 # 8000cbb0 <_ZTV8Consumer+0x10>
    80005298:	00f53023          	sd	a5,0(a0)
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	14c080e7          	jalr	332(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800052a4:	00048513          	mv	a0,s1
    800052a8:	ffffe097          	auipc	ra,0xffffe
    800052ac:	238080e7          	jalr	568(ra) # 800034e0 <_ZdlPv>
    800052b0:	01813083          	ld	ra,24(sp)
    800052b4:	01013403          	ld	s0,16(sp)
    800052b8:	00813483          	ld	s1,8(sp)
    800052bc:	02010113          	addi	sp,sp,32
    800052c0:	00008067          	ret

00000000800052c4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800052c4:	ff010113          	addi	sp,sp,-16
    800052c8:	00113423          	sd	ra,8(sp)
    800052cc:	00813023          	sd	s0,0(sp)
    800052d0:	01010413          	addi	s0,sp,16
    800052d4:	00008797          	auipc	a5,0x8
    800052d8:	88c78793          	addi	a5,a5,-1908 # 8000cb60 <_ZTV16ProducerKeyborad+0x10>
    800052dc:	00f53023          	sd	a5,0(a0)
    800052e0:	ffffe097          	auipc	ra,0xffffe
    800052e4:	108080e7          	jalr	264(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800052e8:	00813083          	ld	ra,8(sp)
    800052ec:	00013403          	ld	s0,0(sp)
    800052f0:	01010113          	addi	sp,sp,16
    800052f4:	00008067          	ret

00000000800052f8 <_ZN16ProducerKeyboradD0Ev>:
    800052f8:	fe010113          	addi	sp,sp,-32
    800052fc:	00113c23          	sd	ra,24(sp)
    80005300:	00813823          	sd	s0,16(sp)
    80005304:	00913423          	sd	s1,8(sp)
    80005308:	02010413          	addi	s0,sp,32
    8000530c:	00050493          	mv	s1,a0
    80005310:	00008797          	auipc	a5,0x8
    80005314:	85078793          	addi	a5,a5,-1968 # 8000cb60 <_ZTV16ProducerKeyborad+0x10>
    80005318:	00f53023          	sd	a5,0(a0)
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	0cc080e7          	jalr	204(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80005324:	00048513          	mv	a0,s1
    80005328:	ffffe097          	auipc	ra,0xffffe
    8000532c:	1b8080e7          	jalr	440(ra) # 800034e0 <_ZdlPv>
    80005330:	01813083          	ld	ra,24(sp)
    80005334:	01013403          	ld	s0,16(sp)
    80005338:	00813483          	ld	s1,8(sp)
    8000533c:	02010113          	addi	sp,sp,32
    80005340:	00008067          	ret

0000000080005344 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80005344:	ff010113          	addi	sp,sp,-16
    80005348:	00113423          	sd	ra,8(sp)
    8000534c:	00813023          	sd	s0,0(sp)
    80005350:	01010413          	addi	s0,sp,16
    80005354:	00008797          	auipc	a5,0x8
    80005358:	83478793          	addi	a5,a5,-1996 # 8000cb88 <_ZTV8Producer+0x10>
    8000535c:	00f53023          	sd	a5,0(a0)
    80005360:	ffffe097          	auipc	ra,0xffffe
    80005364:	088080e7          	jalr	136(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80005368:	00813083          	ld	ra,8(sp)
    8000536c:	00013403          	ld	s0,0(sp)
    80005370:	01010113          	addi	sp,sp,16
    80005374:	00008067          	ret

0000000080005378 <_ZN8ProducerD0Ev>:
    80005378:	fe010113          	addi	sp,sp,-32
    8000537c:	00113c23          	sd	ra,24(sp)
    80005380:	00813823          	sd	s0,16(sp)
    80005384:	00913423          	sd	s1,8(sp)
    80005388:	02010413          	addi	s0,sp,32
    8000538c:	00050493          	mv	s1,a0
    80005390:	00007797          	auipc	a5,0x7
    80005394:	7f878793          	addi	a5,a5,2040 # 8000cb88 <_ZTV8Producer+0x10>
    80005398:	00f53023          	sd	a5,0(a0)
    8000539c:	ffffe097          	auipc	ra,0xffffe
    800053a0:	04c080e7          	jalr	76(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800053a4:	00048513          	mv	a0,s1
    800053a8:	ffffe097          	auipc	ra,0xffffe
    800053ac:	138080e7          	jalr	312(ra) # 800034e0 <_ZdlPv>
    800053b0:	01813083          	ld	ra,24(sp)
    800053b4:	01013403          	ld	s0,16(sp)
    800053b8:	00813483          	ld	s1,8(sp)
    800053bc:	02010113          	addi	sp,sp,32
    800053c0:	00008067          	ret

00000000800053c4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800053c4:	fe010113          	addi	sp,sp,-32
    800053c8:	00113c23          	sd	ra,24(sp)
    800053cc:	00813823          	sd	s0,16(sp)
    800053d0:	00913423          	sd	s1,8(sp)
    800053d4:	02010413          	addi	s0,sp,32
    800053d8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	3cc080e7          	jalr	972(ra) # 800017a8 <getc>
    800053e4:	0005059b          	sext.w	a1,a0
    800053e8:	01b00793          	li	a5,27
    800053ec:	00f58c63          	beq	a1,a5,80005404 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800053f0:	0204b783          	ld	a5,32(s1)
    800053f4:	0087b503          	ld	a0,8(a5)
    800053f8:	00001097          	auipc	ra,0x1
    800053fc:	4c0080e7          	jalr	1216(ra) # 800068b8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80005400:	fddff06f          	j	800053dc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80005404:	00100793          	li	a5,1
    80005408:	00008717          	auipc	a4,0x8
    8000540c:	baf72823          	sw	a5,-1104(a4) # 8000cfb8 <_ZL9threadEnd>
        td->buffer->put('!');
    80005410:	0204b783          	ld	a5,32(s1)
    80005414:	02100593          	li	a1,33
    80005418:	0087b503          	ld	a0,8(a5)
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	49c080e7          	jalr	1180(ra) # 800068b8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80005424:	0204b783          	ld	a5,32(s1)
    80005428:	0107b503          	ld	a0,16(a5)
    8000542c:	ffffe097          	auipc	ra,0xffffe
    80005430:	2ac080e7          	jalr	684(ra) # 800036d8 <_ZN9Semaphore6signalEv>
    }
    80005434:	01813083          	ld	ra,24(sp)
    80005438:	01013403          	ld	s0,16(sp)
    8000543c:	00813483          	ld	s1,8(sp)
    80005440:	02010113          	addi	sp,sp,32
    80005444:	00008067          	ret

0000000080005448 <_ZN8Producer3runEv>:
    void run() override {
    80005448:	fe010113          	addi	sp,sp,-32
    8000544c:	00113c23          	sd	ra,24(sp)
    80005450:	00813823          	sd	s0,16(sp)
    80005454:	00913423          	sd	s1,8(sp)
    80005458:	01213023          	sd	s2,0(sp)
    8000545c:	02010413          	addi	s0,sp,32
    80005460:	00050493          	mv	s1,a0
        int i = 0;
    80005464:	00000913          	li	s2,0
        while (!threadEnd) {
    80005468:	00008797          	auipc	a5,0x8
    8000546c:	b507a783          	lw	a5,-1200(a5) # 8000cfb8 <_ZL9threadEnd>
    80005470:	04079263          	bnez	a5,800054b4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80005474:	0204b783          	ld	a5,32(s1)
    80005478:	0007a583          	lw	a1,0(a5)
    8000547c:	0305859b          	addiw	a1,a1,48
    80005480:	0087b503          	ld	a0,8(a5)
    80005484:	00001097          	auipc	ra,0x1
    80005488:	434080e7          	jalr	1076(ra) # 800068b8 <_ZN9BufferCPP3putEi>
            i++;
    8000548c:	0019071b          	addiw	a4,s2,1
    80005490:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80005494:	0204b783          	ld	a5,32(s1)
    80005498:	0007a783          	lw	a5,0(a5)
    8000549c:	00e787bb          	addw	a5,a5,a4
    800054a0:	00500513          	li	a0,5
    800054a4:	02a7e53b          	remw	a0,a5,a0
    800054a8:	ffffe097          	auipc	ra,0xffffe
    800054ac:	1a4080e7          	jalr	420(ra) # 8000364c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800054b0:	fb9ff06f          	j	80005468 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800054b4:	0204b783          	ld	a5,32(s1)
    800054b8:	0107b503          	ld	a0,16(a5)
    800054bc:	ffffe097          	auipc	ra,0xffffe
    800054c0:	21c080e7          	jalr	540(ra) # 800036d8 <_ZN9Semaphore6signalEv>
    }
    800054c4:	01813083          	ld	ra,24(sp)
    800054c8:	01013403          	ld	s0,16(sp)
    800054cc:	00813483          	ld	s1,8(sp)
    800054d0:	00013903          	ld	s2,0(sp)
    800054d4:	02010113          	addi	sp,sp,32
    800054d8:	00008067          	ret

00000000800054dc <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    800054dc:	fe010113          	addi	sp,sp,-32
    800054e0:	00113c23          	sd	ra,24(sp)
    800054e4:	00813823          	sd	s0,16(sp)
    800054e8:	00913423          	sd	s1,8(sp)
    800054ec:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800054f0:	00005517          	auipc	a0,0x5
    800054f4:	ea850513          	addi	a0,a0,-344 # 8000a398 <CONSOLE_STATUS+0x388>
    800054f8:	00001097          	auipc	ra,0x1
    800054fc:	f9c080e7          	jalr	-100(ra) # 80006494 <_Z11printStringPKc>
    int test = getc() - '0';
    80005500:	ffffc097          	auipc	ra,0xffffc
    80005504:	2a8080e7          	jalr	680(ra) # 800017a8 <getc>
    80005508:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	29c080e7          	jalr	668(ra) # 800017a8 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005514:	00700793          	li	a5,7
    80005518:	1097e263          	bltu	a5,s1,8000561c <_Z8userMainv+0x140>
    8000551c:	00249493          	slli	s1,s1,0x2
    80005520:	00005717          	auipc	a4,0x5
    80005524:	0d070713          	addi	a4,a4,208 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    80005528:	00e484b3          	add	s1,s1,a4
    8000552c:	0004a783          	lw	a5,0(s1)
    80005530:	00e787b3          	add	a5,a5,a4
    80005534:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005538:	00000097          	auipc	ra,0x0
    8000553c:	5d4080e7          	jalr	1492(ra) # 80005b0c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005540:	00005517          	auipc	a0,0x5
    80005544:	e7850513          	addi	a0,a0,-392 # 8000a3b8 <CONSOLE_STATUS+0x3a8>
    80005548:	00001097          	auipc	ra,0x1
    8000554c:	f4c080e7          	jalr	-180(ra) # 80006494 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    80005550:	01813083          	ld	ra,24(sp)
    80005554:	01013403          	ld	s0,16(sp)
    80005558:	00813483          	ld	s1,8(sp)
    8000555c:	02010113          	addi	sp,sp,32
    80005560:	00008067          	ret
            Threads_CPP_API_test();
    80005564:	fffff097          	auipc	ra,0xfffff
    80005568:	334080e7          	jalr	820(ra) # 80004898 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000556c:	00005517          	auipc	a0,0x5
    80005570:	e8c50513          	addi	a0,a0,-372 # 8000a3f8 <CONSOLE_STATUS+0x3e8>
    80005574:	00001097          	auipc	ra,0x1
    80005578:	f20080e7          	jalr	-224(ra) # 80006494 <_Z11printStringPKc>
            break;
    8000557c:	fd5ff06f          	j	80005550 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	b6c080e7          	jalr	-1172(ra) # 800040ec <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005588:	00005517          	auipc	a0,0x5
    8000558c:	eb050513          	addi	a0,a0,-336 # 8000a438 <CONSOLE_STATUS+0x428>
    80005590:	00001097          	auipc	ra,0x1
    80005594:	f04080e7          	jalr	-252(ra) # 80006494 <_Z11printStringPKc>
            break;
    80005598:	fb9ff06f          	j	80005550 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000559c:	00001097          	auipc	ra,0x1
    800055a0:	8b4080e7          	jalr	-1868(ra) # 80005e50 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800055a4:	00005517          	auipc	a0,0x5
    800055a8:	ee450513          	addi	a0,a0,-284 # 8000a488 <CONSOLE_STATUS+0x478>
    800055ac:	00001097          	auipc	ra,0x1
    800055b0:	ee8080e7          	jalr	-280(ra) # 80006494 <_Z11printStringPKc>
            break;
    800055b4:	f9dff06f          	j	80005550 <_Z8userMainv+0x74>
            testSleeping();
    800055b8:	00001097          	auipc	ra,0x1
    800055bc:	648080e7          	jalr	1608(ra) # 80006c00 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    800055c0:	00005517          	auipc	a0,0x5
    800055c4:	f2050513          	addi	a0,a0,-224 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    800055c8:	00001097          	auipc	ra,0x1
    800055cc:	ecc080e7          	jalr	-308(ra) # 80006494 <_Z11printStringPKc>
            break;
    800055d0:	f81ff06f          	j	80005550 <_Z8userMainv+0x74>
            testConsumerProducer();
    800055d4:	fffff097          	auipc	ra,0xfffff
    800055d8:	784080e7          	jalr	1924(ra) # 80004d58 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    800055dc:	00005517          	auipc	a0,0x5
    800055e0:	f3450513          	addi	a0,a0,-204 # 8000a510 <CONSOLE_STATUS+0x500>
    800055e4:	00001097          	auipc	ra,0x1
    800055e8:	eb0080e7          	jalr	-336(ra) # 80006494 <_Z11printStringPKc>
            break;
    800055ec:	f65ff06f          	j	80005550 <_Z8userMainv+0x74>
            System_Mode_test();
    800055f0:	00002097          	auipc	ra,0x2
    800055f4:	b84080e7          	jalr	-1148(ra) # 80007174 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800055f8:	00005517          	auipc	a0,0x5
    800055fc:	f5850513          	addi	a0,a0,-168 # 8000a550 <CONSOLE_STATUS+0x540>
    80005600:	00001097          	auipc	ra,0x1
    80005604:	e94080e7          	jalr	-364(ra) # 80006494 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005608:	00005517          	auipc	a0,0x5
    8000560c:	f6850513          	addi	a0,a0,-152 # 8000a570 <CONSOLE_STATUS+0x560>
    80005610:	00001097          	auipc	ra,0x1
    80005614:	e84080e7          	jalr	-380(ra) # 80006494 <_Z11printStringPKc>
            break;
    80005618:	f39ff06f          	j	80005550 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000561c:	00005517          	auipc	a0,0x5
    80005620:	fac50513          	addi	a0,a0,-84 # 8000a5c8 <CONSOLE_STATUS+0x5b8>
    80005624:	00001097          	auipc	ra,0x1
    80005628:	e70080e7          	jalr	-400(ra) # 80006494 <_Z11printStringPKc>
    8000562c:	f25ff06f          	j	80005550 <_Z8userMainv+0x74>

0000000080005630 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005630:	fe010113          	addi	sp,sp,-32
    80005634:	00113c23          	sd	ra,24(sp)
    80005638:	00813823          	sd	s0,16(sp)
    8000563c:	00913423          	sd	s1,8(sp)
    80005640:	01213023          	sd	s2,0(sp)
    80005644:	02010413          	addi	s0,sp,32
    80005648:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000564c:	00100793          	li	a5,1
    80005650:	02a7f863          	bgeu	a5,a0,80005680 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005654:	00a00793          	li	a5,10
    80005658:	02f577b3          	remu	a5,a0,a5
    8000565c:	02078e63          	beqz	a5,80005698 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005660:	fff48513          	addi	a0,s1,-1
    80005664:	00000097          	auipc	ra,0x0
    80005668:	fcc080e7          	jalr	-52(ra) # 80005630 <_ZL9fibonaccim>
    8000566c:	00050913          	mv	s2,a0
    80005670:	ffe48513          	addi	a0,s1,-2
    80005674:	00000097          	auipc	ra,0x0
    80005678:	fbc080e7          	jalr	-68(ra) # 80005630 <_ZL9fibonaccim>
    8000567c:	00a90533          	add	a0,s2,a0
}
    80005680:	01813083          	ld	ra,24(sp)
    80005684:	01013403          	ld	s0,16(sp)
    80005688:	00813483          	ld	s1,8(sp)
    8000568c:	00013903          	ld	s2,0(sp)
    80005690:	02010113          	addi	sp,sp,32
    80005694:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	fe0080e7          	jalr	-32(ra) # 80001678 <thread_dispatch>
    800056a0:	fc1ff06f          	j	80005660 <_ZL9fibonaccim+0x30>

00000000800056a4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800056a4:	fe010113          	addi	sp,sp,-32
    800056a8:	00113c23          	sd	ra,24(sp)
    800056ac:	00813823          	sd	s0,16(sp)
    800056b0:	00913423          	sd	s1,8(sp)
    800056b4:	01213023          	sd	s2,0(sp)
    800056b8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800056bc:	00a00493          	li	s1,10
    800056c0:	0400006f          	j	80005700 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800056c4:	00005517          	auipc	a0,0x5
    800056c8:	c0450513          	addi	a0,a0,-1020 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800056cc:	00001097          	auipc	ra,0x1
    800056d0:	dc8080e7          	jalr	-568(ra) # 80006494 <_Z11printStringPKc>
    800056d4:	00000613          	li	a2,0
    800056d8:	00a00593          	li	a1,10
    800056dc:	00048513          	mv	a0,s1
    800056e0:	00001097          	auipc	ra,0x1
    800056e4:	f64080e7          	jalr	-156(ra) # 80006644 <_Z8printIntiii>
    800056e8:	00005517          	auipc	a0,0x5
    800056ec:	df050513          	addi	a0,a0,-528 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    800056f0:	00001097          	auipc	ra,0x1
    800056f4:	da4080e7          	jalr	-604(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800056f8:	0014849b          	addiw	s1,s1,1
    800056fc:	0ff4f493          	andi	s1,s1,255
    80005700:	00c00793          	li	a5,12
    80005704:	fc97f0e3          	bgeu	a5,s1,800056c4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005708:	00005517          	auipc	a0,0x5
    8000570c:	bc850513          	addi	a0,a0,-1080 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80005710:	00001097          	auipc	ra,0x1
    80005714:	d84080e7          	jalr	-636(ra) # 80006494 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005718:	00500313          	li	t1,5
    thread_dispatch();
    8000571c:	ffffc097          	auipc	ra,0xffffc
    80005720:	f5c080e7          	jalr	-164(ra) # 80001678 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005724:	01000513          	li	a0,16
    80005728:	00000097          	auipc	ra,0x0
    8000572c:	f08080e7          	jalr	-248(ra) # 80005630 <_ZL9fibonaccim>
    80005730:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005734:	00005517          	auipc	a0,0x5
    80005738:	bac50513          	addi	a0,a0,-1108 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000573c:	00001097          	auipc	ra,0x1
    80005740:	d58080e7          	jalr	-680(ra) # 80006494 <_Z11printStringPKc>
    80005744:	00000613          	li	a2,0
    80005748:	00a00593          	li	a1,10
    8000574c:	0009051b          	sext.w	a0,s2
    80005750:	00001097          	auipc	ra,0x1
    80005754:	ef4080e7          	jalr	-268(ra) # 80006644 <_Z8printIntiii>
    80005758:	00005517          	auipc	a0,0x5
    8000575c:	d8050513          	addi	a0,a0,-640 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80005760:	00001097          	auipc	ra,0x1
    80005764:	d34080e7          	jalr	-716(ra) # 80006494 <_Z11printStringPKc>
    80005768:	0400006f          	j	800057a8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000576c:	00005517          	auipc	a0,0x5
    80005770:	b5c50513          	addi	a0,a0,-1188 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80005774:	00001097          	auipc	ra,0x1
    80005778:	d20080e7          	jalr	-736(ra) # 80006494 <_Z11printStringPKc>
    8000577c:	00000613          	li	a2,0
    80005780:	00a00593          	li	a1,10
    80005784:	00048513          	mv	a0,s1
    80005788:	00001097          	auipc	ra,0x1
    8000578c:	ebc080e7          	jalr	-324(ra) # 80006644 <_Z8printIntiii>
    80005790:	00005517          	auipc	a0,0x5
    80005794:	d4850513          	addi	a0,a0,-696 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80005798:	00001097          	auipc	ra,0x1
    8000579c:	cfc080e7          	jalr	-772(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800057a0:	0014849b          	addiw	s1,s1,1
    800057a4:	0ff4f493          	andi	s1,s1,255
    800057a8:	00f00793          	li	a5,15
    800057ac:	fc97f0e3          	bgeu	a5,s1,8000576c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800057b0:	00005517          	auipc	a0,0x5
    800057b4:	b4050513          	addi	a0,a0,-1216 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    800057b8:	00001097          	auipc	ra,0x1
    800057bc:	cdc080e7          	jalr	-804(ra) # 80006494 <_Z11printStringPKc>
    finishedD = true;
    800057c0:	00100793          	li	a5,1
    800057c4:	00008717          	auipc	a4,0x8
    800057c8:	80f70223          	sb	a5,-2044(a4) # 8000cfc8 <_ZL9finishedD>
    thread_dispatch();
    800057cc:	ffffc097          	auipc	ra,0xffffc
    800057d0:	eac080e7          	jalr	-340(ra) # 80001678 <thread_dispatch>
}
    800057d4:	01813083          	ld	ra,24(sp)
    800057d8:	01013403          	ld	s0,16(sp)
    800057dc:	00813483          	ld	s1,8(sp)
    800057e0:	00013903          	ld	s2,0(sp)
    800057e4:	02010113          	addi	sp,sp,32
    800057e8:	00008067          	ret

00000000800057ec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800057ec:	fe010113          	addi	sp,sp,-32
    800057f0:	00113c23          	sd	ra,24(sp)
    800057f4:	00813823          	sd	s0,16(sp)
    800057f8:	00913423          	sd	s1,8(sp)
    800057fc:	01213023          	sd	s2,0(sp)
    80005800:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005804:	00000493          	li	s1,0
    80005808:	0400006f          	j	80005848 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000580c:	00005517          	auipc	a0,0x5
    80005810:	a8c50513          	addi	a0,a0,-1396 # 8000a298 <CONSOLE_STATUS+0x288>
    80005814:	00001097          	auipc	ra,0x1
    80005818:	c80080e7          	jalr	-896(ra) # 80006494 <_Z11printStringPKc>
    8000581c:	00000613          	li	a2,0
    80005820:	00a00593          	li	a1,10
    80005824:	00048513          	mv	a0,s1
    80005828:	00001097          	auipc	ra,0x1
    8000582c:	e1c080e7          	jalr	-484(ra) # 80006644 <_Z8printIntiii>
    80005830:	00005517          	auipc	a0,0x5
    80005834:	ca850513          	addi	a0,a0,-856 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80005838:	00001097          	auipc	ra,0x1
    8000583c:	c5c080e7          	jalr	-932(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005840:	0014849b          	addiw	s1,s1,1
    80005844:	0ff4f493          	andi	s1,s1,255
    80005848:	00200793          	li	a5,2
    8000584c:	fc97f0e3          	bgeu	a5,s1,8000580c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005850:	00005517          	auipc	a0,0x5
    80005854:	a5050513          	addi	a0,a0,-1456 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005858:	00001097          	auipc	ra,0x1
    8000585c:	c3c080e7          	jalr	-964(ra) # 80006494 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005860:	00700313          	li	t1,7
    thread_dispatch();
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	e14080e7          	jalr	-492(ra) # 80001678 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000586c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005870:	00005517          	auipc	a0,0x5
    80005874:	a4050513          	addi	a0,a0,-1472 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005878:	00001097          	auipc	ra,0x1
    8000587c:	c1c080e7          	jalr	-996(ra) # 80006494 <_Z11printStringPKc>
    80005880:	00000613          	li	a2,0
    80005884:	00a00593          	li	a1,10
    80005888:	0009051b          	sext.w	a0,s2
    8000588c:	00001097          	auipc	ra,0x1
    80005890:	db8080e7          	jalr	-584(ra) # 80006644 <_Z8printIntiii>
    80005894:	00005517          	auipc	a0,0x5
    80005898:	c4450513          	addi	a0,a0,-956 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    8000589c:	00001097          	auipc	ra,0x1
    800058a0:	bf8080e7          	jalr	-1032(ra) # 80006494 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800058a4:	00c00513          	li	a0,12
    800058a8:	00000097          	auipc	ra,0x0
    800058ac:	d88080e7          	jalr	-632(ra) # 80005630 <_ZL9fibonaccim>
    800058b0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800058b4:	00005517          	auipc	a0,0x5
    800058b8:	a0450513          	addi	a0,a0,-1532 # 8000a2b8 <CONSOLE_STATUS+0x2a8>
    800058bc:	00001097          	auipc	ra,0x1
    800058c0:	bd8080e7          	jalr	-1064(ra) # 80006494 <_Z11printStringPKc>
    800058c4:	00000613          	li	a2,0
    800058c8:	00a00593          	li	a1,10
    800058cc:	0009051b          	sext.w	a0,s2
    800058d0:	00001097          	auipc	ra,0x1
    800058d4:	d74080e7          	jalr	-652(ra) # 80006644 <_Z8printIntiii>
    800058d8:	00005517          	auipc	a0,0x5
    800058dc:	c0050513          	addi	a0,a0,-1024 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    800058e0:	00001097          	auipc	ra,0x1
    800058e4:	bb4080e7          	jalr	-1100(ra) # 80006494 <_Z11printStringPKc>
    800058e8:	0400006f          	j	80005928 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800058ec:	00005517          	auipc	a0,0x5
    800058f0:	9ac50513          	addi	a0,a0,-1620 # 8000a298 <CONSOLE_STATUS+0x288>
    800058f4:	00001097          	auipc	ra,0x1
    800058f8:	ba0080e7          	jalr	-1120(ra) # 80006494 <_Z11printStringPKc>
    800058fc:	00000613          	li	a2,0
    80005900:	00a00593          	li	a1,10
    80005904:	00048513          	mv	a0,s1
    80005908:	00001097          	auipc	ra,0x1
    8000590c:	d3c080e7          	jalr	-708(ra) # 80006644 <_Z8printIntiii>
    80005910:	00005517          	auipc	a0,0x5
    80005914:	bc850513          	addi	a0,a0,-1080 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80005918:	00001097          	auipc	ra,0x1
    8000591c:	b7c080e7          	jalr	-1156(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005920:	0014849b          	addiw	s1,s1,1
    80005924:	0ff4f493          	andi	s1,s1,255
    80005928:	00500793          	li	a5,5
    8000592c:	fc97f0e3          	bgeu	a5,s1,800058ec <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005930:	00005517          	auipc	a0,0x5
    80005934:	94050513          	addi	a0,a0,-1728 # 8000a270 <CONSOLE_STATUS+0x260>
    80005938:	00001097          	auipc	ra,0x1
    8000593c:	b5c080e7          	jalr	-1188(ra) # 80006494 <_Z11printStringPKc>
    finishedC = true;
    80005940:	00100793          	li	a5,1
    80005944:	00007717          	auipc	a4,0x7
    80005948:	68f702a3          	sb	a5,1669(a4) # 8000cfc9 <_ZL9finishedC>
    thread_dispatch();
    8000594c:	ffffc097          	auipc	ra,0xffffc
    80005950:	d2c080e7          	jalr	-724(ra) # 80001678 <thread_dispatch>
}
    80005954:	01813083          	ld	ra,24(sp)
    80005958:	01013403          	ld	s0,16(sp)
    8000595c:	00813483          	ld	s1,8(sp)
    80005960:	00013903          	ld	s2,0(sp)
    80005964:	02010113          	addi	sp,sp,32
    80005968:	00008067          	ret

000000008000596c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000596c:	fe010113          	addi	sp,sp,-32
    80005970:	00113c23          	sd	ra,24(sp)
    80005974:	00813823          	sd	s0,16(sp)
    80005978:	00913423          	sd	s1,8(sp)
    8000597c:	01213023          	sd	s2,0(sp)
    80005980:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005984:	00000913          	li	s2,0
    80005988:	0380006f          	j	800059c0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	cec080e7          	jalr	-788(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005994:	00148493          	addi	s1,s1,1
    80005998:	000027b7          	lui	a5,0x2
    8000599c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800059a0:	0097ee63          	bltu	a5,s1,800059bc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800059a4:	00000713          	li	a4,0
    800059a8:	000077b7          	lui	a5,0x7
    800059ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800059b0:	fce7eee3          	bltu	a5,a4,8000598c <_ZL11workerBodyBPv+0x20>
    800059b4:	00170713          	addi	a4,a4,1
    800059b8:	ff1ff06f          	j	800059a8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800059bc:	00190913          	addi	s2,s2,1
    800059c0:	00f00793          	li	a5,15
    800059c4:	0527e063          	bltu	a5,s2,80005a04 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800059c8:	00005517          	auipc	a0,0x5
    800059cc:	8b850513          	addi	a0,a0,-1864 # 8000a280 <CONSOLE_STATUS+0x270>
    800059d0:	00001097          	auipc	ra,0x1
    800059d4:	ac4080e7          	jalr	-1340(ra) # 80006494 <_Z11printStringPKc>
    800059d8:	00000613          	li	a2,0
    800059dc:	00a00593          	li	a1,10
    800059e0:	0009051b          	sext.w	a0,s2
    800059e4:	00001097          	auipc	ra,0x1
    800059e8:	c60080e7          	jalr	-928(ra) # 80006644 <_Z8printIntiii>
    800059ec:	00005517          	auipc	a0,0x5
    800059f0:	aec50513          	addi	a0,a0,-1300 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    800059f4:	00001097          	auipc	ra,0x1
    800059f8:	aa0080e7          	jalr	-1376(ra) # 80006494 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800059fc:	00000493          	li	s1,0
    80005a00:	f99ff06f          	j	80005998 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005a04:	00005517          	auipc	a0,0x5
    80005a08:	88450513          	addi	a0,a0,-1916 # 8000a288 <CONSOLE_STATUS+0x278>
    80005a0c:	00001097          	auipc	ra,0x1
    80005a10:	a88080e7          	jalr	-1400(ra) # 80006494 <_Z11printStringPKc>
    finishedB = true;
    80005a14:	00100793          	li	a5,1
    80005a18:	00007717          	auipc	a4,0x7
    80005a1c:	5af70923          	sb	a5,1458(a4) # 8000cfca <_ZL9finishedB>
    thread_dispatch();
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	c58080e7          	jalr	-936(ra) # 80001678 <thread_dispatch>
}
    80005a28:	01813083          	ld	ra,24(sp)
    80005a2c:	01013403          	ld	s0,16(sp)
    80005a30:	00813483          	ld	s1,8(sp)
    80005a34:	00013903          	ld	s2,0(sp)
    80005a38:	02010113          	addi	sp,sp,32
    80005a3c:	00008067          	ret

0000000080005a40 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005a40:	fe010113          	addi	sp,sp,-32
    80005a44:	00113c23          	sd	ra,24(sp)
    80005a48:	00813823          	sd	s0,16(sp)
    80005a4c:	00913423          	sd	s1,8(sp)
    80005a50:	01213023          	sd	s2,0(sp)
    80005a54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005a58:	00000913          	li	s2,0
    80005a5c:	0380006f          	j	80005a94 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	c18080e7          	jalr	-1000(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005a68:	00148493          	addi	s1,s1,1
    80005a6c:	000027b7          	lui	a5,0x2
    80005a70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a74:	0097ee63          	bltu	a5,s1,80005a90 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a78:	00000713          	li	a4,0
    80005a7c:	000077b7          	lui	a5,0x7
    80005a80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a84:	fce7eee3          	bltu	a5,a4,80005a60 <_ZL11workerBodyAPv+0x20>
    80005a88:	00170713          	addi	a4,a4,1
    80005a8c:	ff1ff06f          	j	80005a7c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005a90:	00190913          	addi	s2,s2,1
    80005a94:	00900793          	li	a5,9
    80005a98:	0527e063          	bltu	a5,s2,80005ad8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005a9c:	00004517          	auipc	a0,0x4
    80005aa0:	7cc50513          	addi	a0,a0,1996 # 8000a268 <CONSOLE_STATUS+0x258>
    80005aa4:	00001097          	auipc	ra,0x1
    80005aa8:	9f0080e7          	jalr	-1552(ra) # 80006494 <_Z11printStringPKc>
    80005aac:	00000613          	li	a2,0
    80005ab0:	00a00593          	li	a1,10
    80005ab4:	0009051b          	sext.w	a0,s2
    80005ab8:	00001097          	auipc	ra,0x1
    80005abc:	b8c080e7          	jalr	-1140(ra) # 80006644 <_Z8printIntiii>
    80005ac0:	00005517          	auipc	a0,0x5
    80005ac4:	a1850513          	addi	a0,a0,-1512 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80005ac8:	00001097          	auipc	ra,0x1
    80005acc:	9cc080e7          	jalr	-1588(ra) # 80006494 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ad0:	00000493          	li	s1,0
    80005ad4:	f99ff06f          	j	80005a6c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	79850513          	addi	a0,a0,1944 # 8000a270 <CONSOLE_STATUS+0x260>
    80005ae0:	00001097          	auipc	ra,0x1
    80005ae4:	9b4080e7          	jalr	-1612(ra) # 80006494 <_Z11printStringPKc>
    finishedA = true;
    80005ae8:	00100793          	li	a5,1
    80005aec:	00007717          	auipc	a4,0x7
    80005af0:	4cf70fa3          	sb	a5,1247(a4) # 8000cfcb <_ZL9finishedA>
}
    80005af4:	01813083          	ld	ra,24(sp)
    80005af8:	01013403          	ld	s0,16(sp)
    80005afc:	00813483          	ld	s1,8(sp)
    80005b00:	00013903          	ld	s2,0(sp)
    80005b04:	02010113          	addi	sp,sp,32
    80005b08:	00008067          	ret

0000000080005b0c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005b0c:	fd010113          	addi	sp,sp,-48
    80005b10:	02113423          	sd	ra,40(sp)
    80005b14:	02813023          	sd	s0,32(sp)
    80005b18:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005b1c:	00000613          	li	a2,0
    80005b20:	00000597          	auipc	a1,0x0
    80005b24:	f2058593          	addi	a1,a1,-224 # 80005a40 <_ZL11workerBodyAPv>
    80005b28:	fd040513          	addi	a0,s0,-48
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	a80080e7          	jalr	-1408(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80005b34:	00004517          	auipc	a0,0x4
    80005b38:	7cc50513          	addi	a0,a0,1996 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80005b3c:	00001097          	auipc	ra,0x1
    80005b40:	958080e7          	jalr	-1704(ra) # 80006494 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005b44:	00000613          	li	a2,0
    80005b48:	00000597          	auipc	a1,0x0
    80005b4c:	e2458593          	addi	a1,a1,-476 # 8000596c <_ZL11workerBodyBPv>
    80005b50:	fd840513          	addi	a0,s0,-40
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	a58080e7          	jalr	-1448(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80005b5c:	00004517          	auipc	a0,0x4
    80005b60:	7bc50513          	addi	a0,a0,1980 # 8000a318 <CONSOLE_STATUS+0x308>
    80005b64:	00001097          	auipc	ra,0x1
    80005b68:	930080e7          	jalr	-1744(ra) # 80006494 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005b6c:	00000613          	li	a2,0
    80005b70:	00000597          	auipc	a1,0x0
    80005b74:	c7c58593          	addi	a1,a1,-900 # 800057ec <_ZL11workerBodyCPv>
    80005b78:	fe040513          	addi	a0,s0,-32
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	a30080e7          	jalr	-1488(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80005b84:	00004517          	auipc	a0,0x4
    80005b88:	7ac50513          	addi	a0,a0,1964 # 8000a330 <CONSOLE_STATUS+0x320>
    80005b8c:	00001097          	auipc	ra,0x1
    80005b90:	908080e7          	jalr	-1784(ra) # 80006494 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005b94:	00000613          	li	a2,0
    80005b98:	00000597          	auipc	a1,0x0
    80005b9c:	b0c58593          	addi	a1,a1,-1268 # 800056a4 <_ZL11workerBodyDPv>
    80005ba0:	fe840513          	addi	a0,s0,-24
    80005ba4:	ffffc097          	auipc	ra,0xffffc
    80005ba8:	a08080e7          	jalr	-1528(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80005bac:	00004517          	auipc	a0,0x4
    80005bb0:	79c50513          	addi	a0,a0,1948 # 8000a348 <CONSOLE_STATUS+0x338>
    80005bb4:	00001097          	auipc	ra,0x1
    80005bb8:	8e0080e7          	jalr	-1824(ra) # 80006494 <_Z11printStringPKc>
    80005bbc:	00c0006f          	j	80005bc8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005bc0:	ffffc097          	auipc	ra,0xffffc
    80005bc4:	ab8080e7          	jalr	-1352(ra) # 80001678 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005bc8:	00007797          	auipc	a5,0x7
    80005bcc:	4037c783          	lbu	a5,1027(a5) # 8000cfcb <_ZL9finishedA>
    80005bd0:	fe0788e3          	beqz	a5,80005bc0 <_Z18Threads_C_API_testv+0xb4>
    80005bd4:	00007797          	auipc	a5,0x7
    80005bd8:	3f67c783          	lbu	a5,1014(a5) # 8000cfca <_ZL9finishedB>
    80005bdc:	fe0782e3          	beqz	a5,80005bc0 <_Z18Threads_C_API_testv+0xb4>
    80005be0:	00007797          	auipc	a5,0x7
    80005be4:	3e97c783          	lbu	a5,1001(a5) # 8000cfc9 <_ZL9finishedC>
    80005be8:	fc078ce3          	beqz	a5,80005bc0 <_Z18Threads_C_API_testv+0xb4>
    80005bec:	00007797          	auipc	a5,0x7
    80005bf0:	3dc7c783          	lbu	a5,988(a5) # 8000cfc8 <_ZL9finishedD>
    80005bf4:	fc0786e3          	beqz	a5,80005bc0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005bf8:	02813083          	ld	ra,40(sp)
    80005bfc:	02013403          	ld	s0,32(sp)
    80005c00:	03010113          	addi	sp,sp,48
    80005c04:	00008067          	ret

0000000080005c08 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005c08:	fd010113          	addi	sp,sp,-48
    80005c0c:	02113423          	sd	ra,40(sp)
    80005c10:	02813023          	sd	s0,32(sp)
    80005c14:	00913c23          	sd	s1,24(sp)
    80005c18:	01213823          	sd	s2,16(sp)
    80005c1c:	01313423          	sd	s3,8(sp)
    80005c20:	03010413          	addi	s0,sp,48
    80005c24:	00050993          	mv	s3,a0
    80005c28:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005c2c:	00000913          	li	s2,0
    80005c30:	00c0006f          	j	80005c3c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005c34:	ffffe097          	auipc	ra,0xffffe
    80005c38:	9f0080e7          	jalr	-1552(ra) # 80003624 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005c3c:	ffffc097          	auipc	ra,0xffffc
    80005c40:	b6c080e7          	jalr	-1172(ra) # 800017a8 <getc>
    80005c44:	0005059b          	sext.w	a1,a0
    80005c48:	01b00793          	li	a5,27
    80005c4c:	02f58a63          	beq	a1,a5,80005c80 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005c50:	0084b503          	ld	a0,8(s1)
    80005c54:	00001097          	auipc	ra,0x1
    80005c58:	c64080e7          	jalr	-924(ra) # 800068b8 <_ZN9BufferCPP3putEi>
        i++;
    80005c5c:	0019071b          	addiw	a4,s2,1
    80005c60:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005c64:	0004a683          	lw	a3,0(s1)
    80005c68:	0026979b          	slliw	a5,a3,0x2
    80005c6c:	00d787bb          	addw	a5,a5,a3
    80005c70:	0017979b          	slliw	a5,a5,0x1
    80005c74:	02f767bb          	remw	a5,a4,a5
    80005c78:	fc0792e3          	bnez	a5,80005c3c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005c7c:	fb9ff06f          	j	80005c34 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005c80:	00100793          	li	a5,1
    80005c84:	00007717          	auipc	a4,0x7
    80005c88:	34f72623          	sw	a5,844(a4) # 8000cfd0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005c8c:	0209b783          	ld	a5,32(s3)
    80005c90:	02100593          	li	a1,33
    80005c94:	0087b503          	ld	a0,8(a5)
    80005c98:	00001097          	auipc	ra,0x1
    80005c9c:	c20080e7          	jalr	-992(ra) # 800068b8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005ca0:	0104b503          	ld	a0,16(s1)
    80005ca4:	ffffe097          	auipc	ra,0xffffe
    80005ca8:	a34080e7          	jalr	-1484(ra) # 800036d8 <_ZN9Semaphore6signalEv>
}
    80005cac:	02813083          	ld	ra,40(sp)
    80005cb0:	02013403          	ld	s0,32(sp)
    80005cb4:	01813483          	ld	s1,24(sp)
    80005cb8:	01013903          	ld	s2,16(sp)
    80005cbc:	00813983          	ld	s3,8(sp)
    80005cc0:	03010113          	addi	sp,sp,48
    80005cc4:	00008067          	ret

0000000080005cc8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005cc8:	fe010113          	addi	sp,sp,-32
    80005ccc:	00113c23          	sd	ra,24(sp)
    80005cd0:	00813823          	sd	s0,16(sp)
    80005cd4:	00913423          	sd	s1,8(sp)
    80005cd8:	01213023          	sd	s2,0(sp)
    80005cdc:	02010413          	addi	s0,sp,32
    80005ce0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005ce4:	00000913          	li	s2,0
    80005ce8:	00c0006f          	j	80005cf4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005cec:	ffffe097          	auipc	ra,0xffffe
    80005cf0:	938080e7          	jalr	-1736(ra) # 80003624 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005cf4:	00007797          	auipc	a5,0x7
    80005cf8:	2dc7a783          	lw	a5,732(a5) # 8000cfd0 <_ZL9threadEnd>
    80005cfc:	02079e63          	bnez	a5,80005d38 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005d00:	0004a583          	lw	a1,0(s1)
    80005d04:	0305859b          	addiw	a1,a1,48
    80005d08:	0084b503          	ld	a0,8(s1)
    80005d0c:	00001097          	auipc	ra,0x1
    80005d10:	bac080e7          	jalr	-1108(ra) # 800068b8 <_ZN9BufferCPP3putEi>
        i++;
    80005d14:	0019071b          	addiw	a4,s2,1
    80005d18:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005d1c:	0004a683          	lw	a3,0(s1)
    80005d20:	0026979b          	slliw	a5,a3,0x2
    80005d24:	00d787bb          	addw	a5,a5,a3
    80005d28:	0017979b          	slliw	a5,a5,0x1
    80005d2c:	02f767bb          	remw	a5,a4,a5
    80005d30:	fc0792e3          	bnez	a5,80005cf4 <_ZN12ProducerSync8producerEPv+0x2c>
    80005d34:	fb9ff06f          	j	80005cec <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005d38:	0104b503          	ld	a0,16(s1)
    80005d3c:	ffffe097          	auipc	ra,0xffffe
    80005d40:	99c080e7          	jalr	-1636(ra) # 800036d8 <_ZN9Semaphore6signalEv>
}
    80005d44:	01813083          	ld	ra,24(sp)
    80005d48:	01013403          	ld	s0,16(sp)
    80005d4c:	00813483          	ld	s1,8(sp)
    80005d50:	00013903          	ld	s2,0(sp)
    80005d54:	02010113          	addi	sp,sp,32
    80005d58:	00008067          	ret

0000000080005d5c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005d5c:	fd010113          	addi	sp,sp,-48
    80005d60:	02113423          	sd	ra,40(sp)
    80005d64:	02813023          	sd	s0,32(sp)
    80005d68:	00913c23          	sd	s1,24(sp)
    80005d6c:	01213823          	sd	s2,16(sp)
    80005d70:	01313423          	sd	s3,8(sp)
    80005d74:	01413023          	sd	s4,0(sp)
    80005d78:	03010413          	addi	s0,sp,48
    80005d7c:	00050993          	mv	s3,a0
    80005d80:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005d84:	00000a13          	li	s4,0
    80005d88:	01c0006f          	j	80005da4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005d8c:	ffffe097          	auipc	ra,0xffffe
    80005d90:	898080e7          	jalr	-1896(ra) # 80003624 <_ZN6Thread8dispatchEv>
    80005d94:	0500006f          	j	80005de4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005d98:	00a00513          	li	a0,10
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	a30080e7          	jalr	-1488(ra) # 800017cc <putc>
    while (!threadEnd) {
    80005da4:	00007797          	auipc	a5,0x7
    80005da8:	22c7a783          	lw	a5,556(a5) # 8000cfd0 <_ZL9threadEnd>
    80005dac:	06079263          	bnez	a5,80005e10 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005db0:	00893503          	ld	a0,8(s2)
    80005db4:	00001097          	auipc	ra,0x1
    80005db8:	b94080e7          	jalr	-1132(ra) # 80006948 <_ZN9BufferCPP3getEv>
        i++;
    80005dbc:	001a049b          	addiw	s1,s4,1
    80005dc0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005dc4:	0ff57513          	andi	a0,a0,255
    80005dc8:	ffffc097          	auipc	ra,0xffffc
    80005dcc:	a04080e7          	jalr	-1532(ra) # 800017cc <putc>
        if (i % (5 * data->id) == 0) {
    80005dd0:	00092703          	lw	a4,0(s2)
    80005dd4:	0027179b          	slliw	a5,a4,0x2
    80005dd8:	00e787bb          	addw	a5,a5,a4
    80005ddc:	02f4e7bb          	remw	a5,s1,a5
    80005de0:	fa0786e3          	beqz	a5,80005d8c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005de4:	05000793          	li	a5,80
    80005de8:	02f4e4bb          	remw	s1,s1,a5
    80005dec:	fa049ce3          	bnez	s1,80005da4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005df0:	fa9ff06f          	j	80005d98 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005df4:	0209b783          	ld	a5,32(s3)
    80005df8:	0087b503          	ld	a0,8(a5)
    80005dfc:	00001097          	auipc	ra,0x1
    80005e00:	b4c080e7          	jalr	-1204(ra) # 80006948 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005e04:	0ff57513          	andi	a0,a0,255
    80005e08:	ffffe097          	auipc	ra,0xffffe
    80005e0c:	9bc080e7          	jalr	-1604(ra) # 800037c4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005e10:	0209b783          	ld	a5,32(s3)
    80005e14:	0087b503          	ld	a0,8(a5)
    80005e18:	00001097          	auipc	ra,0x1
    80005e1c:	bbc080e7          	jalr	-1092(ra) # 800069d4 <_ZN9BufferCPP6getCntEv>
    80005e20:	fca04ae3          	bgtz	a0,80005df4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005e24:	01093503          	ld	a0,16(s2)
    80005e28:	ffffe097          	auipc	ra,0xffffe
    80005e2c:	8b0080e7          	jalr	-1872(ra) # 800036d8 <_ZN9Semaphore6signalEv>
}
    80005e30:	02813083          	ld	ra,40(sp)
    80005e34:	02013403          	ld	s0,32(sp)
    80005e38:	01813483          	ld	s1,24(sp)
    80005e3c:	01013903          	ld	s2,16(sp)
    80005e40:	00813983          	ld	s3,8(sp)
    80005e44:	00013a03          	ld	s4,0(sp)
    80005e48:	03010113          	addi	sp,sp,48
    80005e4c:	00008067          	ret

0000000080005e50 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005e50:	f8010113          	addi	sp,sp,-128
    80005e54:	06113c23          	sd	ra,120(sp)
    80005e58:	06813823          	sd	s0,112(sp)
    80005e5c:	06913423          	sd	s1,104(sp)
    80005e60:	07213023          	sd	s2,96(sp)
    80005e64:	05313c23          	sd	s3,88(sp)
    80005e68:	05413823          	sd	s4,80(sp)
    80005e6c:	05513423          	sd	s5,72(sp)
    80005e70:	05613023          	sd	s6,64(sp)
    80005e74:	03713c23          	sd	s7,56(sp)
    80005e78:	03813823          	sd	s8,48(sp)
    80005e7c:	03913423          	sd	s9,40(sp)
    80005e80:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005e84:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005e88:	00004517          	auipc	a0,0x4
    80005e8c:	2f850513          	addi	a0,a0,760 # 8000a180 <CONSOLE_STATUS+0x170>
    80005e90:	00000097          	auipc	ra,0x0
    80005e94:	604080e7          	jalr	1540(ra) # 80006494 <_Z11printStringPKc>
    getString(input, 30);
    80005e98:	01e00593          	li	a1,30
    80005e9c:	f8040493          	addi	s1,s0,-128
    80005ea0:	00048513          	mv	a0,s1
    80005ea4:	00000097          	auipc	ra,0x0
    80005ea8:	678080e7          	jalr	1656(ra) # 8000651c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005eac:	00048513          	mv	a0,s1
    80005eb0:	00000097          	auipc	ra,0x0
    80005eb4:	744080e7          	jalr	1860(ra) # 800065f4 <_Z11stringToIntPKc>
    80005eb8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005ebc:	00004517          	auipc	a0,0x4
    80005ec0:	2e450513          	addi	a0,a0,740 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005ec4:	00000097          	auipc	ra,0x0
    80005ec8:	5d0080e7          	jalr	1488(ra) # 80006494 <_Z11printStringPKc>
    getString(input, 30);
    80005ecc:	01e00593          	li	a1,30
    80005ed0:	00048513          	mv	a0,s1
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	648080e7          	jalr	1608(ra) # 8000651c <_Z9getStringPci>
    n = stringToInt(input);
    80005edc:	00048513          	mv	a0,s1
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	714080e7          	jalr	1812(ra) # 800065f4 <_Z11stringToIntPKc>
    80005ee8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005eec:	00004517          	auipc	a0,0x4
    80005ef0:	2d450513          	addi	a0,a0,724 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80005ef4:	00000097          	auipc	ra,0x0
    80005ef8:	5a0080e7          	jalr	1440(ra) # 80006494 <_Z11printStringPKc>
    80005efc:	00000613          	li	a2,0
    80005f00:	00a00593          	li	a1,10
    80005f04:	00090513          	mv	a0,s2
    80005f08:	00000097          	auipc	ra,0x0
    80005f0c:	73c080e7          	jalr	1852(ra) # 80006644 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005f10:	00004517          	auipc	a0,0x4
    80005f14:	2c850513          	addi	a0,a0,712 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    80005f18:	00000097          	auipc	ra,0x0
    80005f1c:	57c080e7          	jalr	1404(ra) # 80006494 <_Z11printStringPKc>
    80005f20:	00000613          	li	a2,0
    80005f24:	00a00593          	li	a1,10
    80005f28:	00048513          	mv	a0,s1
    80005f2c:	00000097          	auipc	ra,0x0
    80005f30:	718080e7          	jalr	1816(ra) # 80006644 <_Z8printIntiii>
    printString(".\n");
    80005f34:	00004517          	auipc	a0,0x4
    80005f38:	2bc50513          	addi	a0,a0,700 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    80005f3c:	00000097          	auipc	ra,0x0
    80005f40:	558080e7          	jalr	1368(ra) # 80006494 <_Z11printStringPKc>
    if(threadNum > n) {
    80005f44:	0324c463          	blt	s1,s2,80005f6c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005f48:	03205c63          	blez	s2,80005f80 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005f4c:	03800513          	li	a0,56
    80005f50:	ffffd097          	auipc	ra,0xffffd
    80005f54:	568080e7          	jalr	1384(ra) # 800034b8 <_Znwm>
    80005f58:	00050a93          	mv	s5,a0
    80005f5c:	00048593          	mv	a1,s1
    80005f60:	00001097          	auipc	ra,0x1
    80005f64:	804080e7          	jalr	-2044(ra) # 80006764 <_ZN9BufferCPPC1Ei>
    80005f68:	0300006f          	j	80005f98 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005f6c:	00004517          	auipc	a0,0x4
    80005f70:	28c50513          	addi	a0,a0,652 # 8000a1f8 <CONSOLE_STATUS+0x1e8>
    80005f74:	00000097          	auipc	ra,0x0
    80005f78:	520080e7          	jalr	1312(ra) # 80006494 <_Z11printStringPKc>
        return;
    80005f7c:	0140006f          	j	80005f90 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005f80:	00004517          	auipc	a0,0x4
    80005f84:	2b850513          	addi	a0,a0,696 # 8000a238 <CONSOLE_STATUS+0x228>
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	50c080e7          	jalr	1292(ra) # 80006494 <_Z11printStringPKc>
        return;
    80005f90:	000b8113          	mv	sp,s7
    80005f94:	2380006f          	j	800061cc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005f98:	01000513          	li	a0,16
    80005f9c:	ffffd097          	auipc	ra,0xffffd
    80005fa0:	51c080e7          	jalr	1308(ra) # 800034b8 <_Znwm>
    80005fa4:	00050493          	mv	s1,a0
    80005fa8:	00000593          	li	a1,0
    80005fac:	ffffd097          	auipc	ra,0xffffd
    80005fb0:	6c8080e7          	jalr	1736(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    80005fb4:	00007797          	auipc	a5,0x7
    80005fb8:	0297b223          	sd	s1,36(a5) # 8000cfd8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005fbc:	00391793          	slli	a5,s2,0x3
    80005fc0:	00f78793          	addi	a5,a5,15
    80005fc4:	ff07f793          	andi	a5,a5,-16
    80005fc8:	40f10133          	sub	sp,sp,a5
    80005fcc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005fd0:	0019071b          	addiw	a4,s2,1
    80005fd4:	00171793          	slli	a5,a4,0x1
    80005fd8:	00e787b3          	add	a5,a5,a4
    80005fdc:	00379793          	slli	a5,a5,0x3
    80005fe0:	00f78793          	addi	a5,a5,15
    80005fe4:	ff07f793          	andi	a5,a5,-16
    80005fe8:	40f10133          	sub	sp,sp,a5
    80005fec:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005ff0:	00191c13          	slli	s8,s2,0x1
    80005ff4:	012c07b3          	add	a5,s8,s2
    80005ff8:	00379793          	slli	a5,a5,0x3
    80005ffc:	00fa07b3          	add	a5,s4,a5
    80006000:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006004:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80006008:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000600c:	02800513          	li	a0,40
    80006010:	ffffd097          	auipc	ra,0xffffd
    80006014:	4a8080e7          	jalr	1192(ra) # 800034b8 <_Znwm>
    80006018:	00050b13          	mv	s6,a0
    8000601c:	012c0c33          	add	s8,s8,s2
    80006020:	003c1c13          	slli	s8,s8,0x3
    80006024:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80006028:	ffffd097          	auipc	ra,0xffffd
    8000602c:	578080e7          	jalr	1400(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80006030:	00007797          	auipc	a5,0x7
    80006034:	bf878793          	addi	a5,a5,-1032 # 8000cc28 <_ZTV12ConsumerSync+0x10>
    80006038:	00fb3023          	sd	a5,0(s6)
    8000603c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80006040:	000b0513          	mv	a0,s6
    80006044:	ffffd097          	auipc	ra,0xffffd
    80006048:	58c080e7          	jalr	1420(ra) # 800035d0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000604c:	00000493          	li	s1,0
    80006050:	0380006f          	j	80006088 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80006054:	00007797          	auipc	a5,0x7
    80006058:	bac78793          	addi	a5,a5,-1108 # 8000cc00 <_ZTV12ProducerSync+0x10>
    8000605c:	00fcb023          	sd	a5,0(s9)
    80006060:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80006064:	00349793          	slli	a5,s1,0x3
    80006068:	00f987b3          	add	a5,s3,a5
    8000606c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80006070:	00349793          	slli	a5,s1,0x3
    80006074:	00f987b3          	add	a5,s3,a5
    80006078:	0007b503          	ld	a0,0(a5)
    8000607c:	ffffd097          	auipc	ra,0xffffd
    80006080:	554080e7          	jalr	1364(ra) # 800035d0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80006084:	0014849b          	addiw	s1,s1,1
    80006088:	0b24d063          	bge	s1,s2,80006128 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000608c:	00149793          	slli	a5,s1,0x1
    80006090:	009787b3          	add	a5,a5,s1
    80006094:	00379793          	slli	a5,a5,0x3
    80006098:	00fa07b3          	add	a5,s4,a5
    8000609c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800060a0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800060a4:	00007717          	auipc	a4,0x7
    800060a8:	f3473703          	ld	a4,-204(a4) # 8000cfd8 <_ZL10waitForAll>
    800060ac:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800060b0:	02905863          	blez	s1,800060e0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800060b4:	02800513          	li	a0,40
    800060b8:	ffffd097          	auipc	ra,0xffffd
    800060bc:	400080e7          	jalr	1024(ra) # 800034b8 <_Znwm>
    800060c0:	00050c93          	mv	s9,a0
    800060c4:	00149c13          	slli	s8,s1,0x1
    800060c8:	009c0c33          	add	s8,s8,s1
    800060cc:	003c1c13          	slli	s8,s8,0x3
    800060d0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800060d4:	ffffd097          	auipc	ra,0xffffd
    800060d8:	4cc080e7          	jalr	1228(ra) # 800035a0 <_ZN6ThreadC1Ev>
    800060dc:	f79ff06f          	j	80006054 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800060e0:	02800513          	li	a0,40
    800060e4:	ffffd097          	auipc	ra,0xffffd
    800060e8:	3d4080e7          	jalr	980(ra) # 800034b8 <_Znwm>
    800060ec:	00050c93          	mv	s9,a0
    800060f0:	00149c13          	slli	s8,s1,0x1
    800060f4:	009c0c33          	add	s8,s8,s1
    800060f8:	003c1c13          	slli	s8,s8,0x3
    800060fc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80006100:	ffffd097          	auipc	ra,0xffffd
    80006104:	4a0080e7          	jalr	1184(ra) # 800035a0 <_ZN6ThreadC1Ev>
    80006108:	00007797          	auipc	a5,0x7
    8000610c:	ad078793          	addi	a5,a5,-1328 # 8000cbd8 <_ZTV16ProducerKeyboard+0x10>
    80006110:	00fcb023          	sd	a5,0(s9)
    80006114:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80006118:	00349793          	slli	a5,s1,0x3
    8000611c:	00f987b3          	add	a5,s3,a5
    80006120:	0197b023          	sd	s9,0(a5)
    80006124:	f4dff06f          	j	80006070 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80006128:	ffffd097          	auipc	ra,0xffffd
    8000612c:	4fc080e7          	jalr	1276(ra) # 80003624 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80006130:	00000493          	li	s1,0
    80006134:	00994e63          	blt	s2,s1,80006150 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80006138:	00007517          	auipc	a0,0x7
    8000613c:	ea053503          	ld	a0,-352(a0) # 8000cfd8 <_ZL10waitForAll>
    80006140:	ffffd097          	auipc	ra,0xffffd
    80006144:	56c080e7          	jalr	1388(ra) # 800036ac <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80006148:	0014849b          	addiw	s1,s1,1
    8000614c:	fe9ff06f          	j	80006134 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80006150:	00000493          	li	s1,0
    80006154:	0080006f          	j	8000615c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80006158:	0014849b          	addiw	s1,s1,1
    8000615c:	0324d263          	bge	s1,s2,80006180 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80006160:	00349793          	slli	a5,s1,0x3
    80006164:	00f987b3          	add	a5,s3,a5
    80006168:	0007b503          	ld	a0,0(a5)
    8000616c:	fe0506e3          	beqz	a0,80006158 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80006170:	00053783          	ld	a5,0(a0)
    80006174:	0087b783          	ld	a5,8(a5)
    80006178:	000780e7          	jalr	a5
    8000617c:	fddff06f          	j	80006158 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80006180:	000b0a63          	beqz	s6,80006194 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80006184:	000b3783          	ld	a5,0(s6)
    80006188:	0087b783          	ld	a5,8(a5)
    8000618c:	000b0513          	mv	a0,s6
    80006190:	000780e7          	jalr	a5
    delete waitForAll;
    80006194:	00007517          	auipc	a0,0x7
    80006198:	e4453503          	ld	a0,-444(a0) # 8000cfd8 <_ZL10waitForAll>
    8000619c:	00050863          	beqz	a0,800061ac <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800061a0:	00053783          	ld	a5,0(a0)
    800061a4:	0087b783          	ld	a5,8(a5)
    800061a8:	000780e7          	jalr	a5
    delete buffer;
    800061ac:	000a8e63          	beqz	s5,800061c8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800061b0:	000a8513          	mv	a0,s5
    800061b4:	00001097          	auipc	ra,0x1
    800061b8:	8a8080e7          	jalr	-1880(ra) # 80006a5c <_ZN9BufferCPPD1Ev>
    800061bc:	000a8513          	mv	a0,s5
    800061c0:	ffffd097          	auipc	ra,0xffffd
    800061c4:	320080e7          	jalr	800(ra) # 800034e0 <_ZdlPv>
    800061c8:	000b8113          	mv	sp,s7

}
    800061cc:	f8040113          	addi	sp,s0,-128
    800061d0:	07813083          	ld	ra,120(sp)
    800061d4:	07013403          	ld	s0,112(sp)
    800061d8:	06813483          	ld	s1,104(sp)
    800061dc:	06013903          	ld	s2,96(sp)
    800061e0:	05813983          	ld	s3,88(sp)
    800061e4:	05013a03          	ld	s4,80(sp)
    800061e8:	04813a83          	ld	s5,72(sp)
    800061ec:	04013b03          	ld	s6,64(sp)
    800061f0:	03813b83          	ld	s7,56(sp)
    800061f4:	03013c03          	ld	s8,48(sp)
    800061f8:	02813c83          	ld	s9,40(sp)
    800061fc:	08010113          	addi	sp,sp,128
    80006200:	00008067          	ret
    80006204:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006208:	000a8513          	mv	a0,s5
    8000620c:	ffffd097          	auipc	ra,0xffffd
    80006210:	2d4080e7          	jalr	724(ra) # 800034e0 <_ZdlPv>
    80006214:	00048513          	mv	a0,s1
    80006218:	00008097          	auipc	ra,0x8
    8000621c:	ea0080e7          	jalr	-352(ra) # 8000e0b8 <_Unwind_Resume>
    80006220:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006224:	00048513          	mv	a0,s1
    80006228:	ffffd097          	auipc	ra,0xffffd
    8000622c:	2b8080e7          	jalr	696(ra) # 800034e0 <_ZdlPv>
    80006230:	00090513          	mv	a0,s2
    80006234:	00008097          	auipc	ra,0x8
    80006238:	e84080e7          	jalr	-380(ra) # 8000e0b8 <_Unwind_Resume>
    8000623c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80006240:	000b0513          	mv	a0,s6
    80006244:	ffffd097          	auipc	ra,0xffffd
    80006248:	29c080e7          	jalr	668(ra) # 800034e0 <_ZdlPv>
    8000624c:	00048513          	mv	a0,s1
    80006250:	00008097          	auipc	ra,0x8
    80006254:	e68080e7          	jalr	-408(ra) # 8000e0b8 <_Unwind_Resume>
    80006258:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000625c:	000c8513          	mv	a0,s9
    80006260:	ffffd097          	auipc	ra,0xffffd
    80006264:	280080e7          	jalr	640(ra) # 800034e0 <_ZdlPv>
    80006268:	00048513          	mv	a0,s1
    8000626c:	00008097          	auipc	ra,0x8
    80006270:	e4c080e7          	jalr	-436(ra) # 8000e0b8 <_Unwind_Resume>
    80006274:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80006278:	000c8513          	mv	a0,s9
    8000627c:	ffffd097          	auipc	ra,0xffffd
    80006280:	264080e7          	jalr	612(ra) # 800034e0 <_ZdlPv>
    80006284:	00048513          	mv	a0,s1
    80006288:	00008097          	auipc	ra,0x8
    8000628c:	e30080e7          	jalr	-464(ra) # 8000e0b8 <_Unwind_Resume>

0000000080006290 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80006290:	ff010113          	addi	sp,sp,-16
    80006294:	00113423          	sd	ra,8(sp)
    80006298:	00813023          	sd	s0,0(sp)
    8000629c:	01010413          	addi	s0,sp,16
    800062a0:	00007797          	auipc	a5,0x7
    800062a4:	98878793          	addi	a5,a5,-1656 # 8000cc28 <_ZTV12ConsumerSync+0x10>
    800062a8:	00f53023          	sd	a5,0(a0)
    800062ac:	ffffd097          	auipc	ra,0xffffd
    800062b0:	13c080e7          	jalr	316(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800062b4:	00813083          	ld	ra,8(sp)
    800062b8:	00013403          	ld	s0,0(sp)
    800062bc:	01010113          	addi	sp,sp,16
    800062c0:	00008067          	ret

00000000800062c4 <_ZN12ConsumerSyncD0Ev>:
    800062c4:	fe010113          	addi	sp,sp,-32
    800062c8:	00113c23          	sd	ra,24(sp)
    800062cc:	00813823          	sd	s0,16(sp)
    800062d0:	00913423          	sd	s1,8(sp)
    800062d4:	02010413          	addi	s0,sp,32
    800062d8:	00050493          	mv	s1,a0
    800062dc:	00007797          	auipc	a5,0x7
    800062e0:	94c78793          	addi	a5,a5,-1716 # 8000cc28 <_ZTV12ConsumerSync+0x10>
    800062e4:	00f53023          	sd	a5,0(a0)
    800062e8:	ffffd097          	auipc	ra,0xffffd
    800062ec:	100080e7          	jalr	256(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800062f0:	00048513          	mv	a0,s1
    800062f4:	ffffd097          	auipc	ra,0xffffd
    800062f8:	1ec080e7          	jalr	492(ra) # 800034e0 <_ZdlPv>
    800062fc:	01813083          	ld	ra,24(sp)
    80006300:	01013403          	ld	s0,16(sp)
    80006304:	00813483          	ld	s1,8(sp)
    80006308:	02010113          	addi	sp,sp,32
    8000630c:	00008067          	ret

0000000080006310 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80006310:	ff010113          	addi	sp,sp,-16
    80006314:	00113423          	sd	ra,8(sp)
    80006318:	00813023          	sd	s0,0(sp)
    8000631c:	01010413          	addi	s0,sp,16
    80006320:	00007797          	auipc	a5,0x7
    80006324:	8e078793          	addi	a5,a5,-1824 # 8000cc00 <_ZTV12ProducerSync+0x10>
    80006328:	00f53023          	sd	a5,0(a0)
    8000632c:	ffffd097          	auipc	ra,0xffffd
    80006330:	0bc080e7          	jalr	188(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80006334:	00813083          	ld	ra,8(sp)
    80006338:	00013403          	ld	s0,0(sp)
    8000633c:	01010113          	addi	sp,sp,16
    80006340:	00008067          	ret

0000000080006344 <_ZN12ProducerSyncD0Ev>:
    80006344:	fe010113          	addi	sp,sp,-32
    80006348:	00113c23          	sd	ra,24(sp)
    8000634c:	00813823          	sd	s0,16(sp)
    80006350:	00913423          	sd	s1,8(sp)
    80006354:	02010413          	addi	s0,sp,32
    80006358:	00050493          	mv	s1,a0
    8000635c:	00007797          	auipc	a5,0x7
    80006360:	8a478793          	addi	a5,a5,-1884 # 8000cc00 <_ZTV12ProducerSync+0x10>
    80006364:	00f53023          	sd	a5,0(a0)
    80006368:	ffffd097          	auipc	ra,0xffffd
    8000636c:	080080e7          	jalr	128(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80006370:	00048513          	mv	a0,s1
    80006374:	ffffd097          	auipc	ra,0xffffd
    80006378:	16c080e7          	jalr	364(ra) # 800034e0 <_ZdlPv>
    8000637c:	01813083          	ld	ra,24(sp)
    80006380:	01013403          	ld	s0,16(sp)
    80006384:	00813483          	ld	s1,8(sp)
    80006388:	02010113          	addi	sp,sp,32
    8000638c:	00008067          	ret

0000000080006390 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80006390:	ff010113          	addi	sp,sp,-16
    80006394:	00113423          	sd	ra,8(sp)
    80006398:	00813023          	sd	s0,0(sp)
    8000639c:	01010413          	addi	s0,sp,16
    800063a0:	00007797          	auipc	a5,0x7
    800063a4:	83878793          	addi	a5,a5,-1992 # 8000cbd8 <_ZTV16ProducerKeyboard+0x10>
    800063a8:	00f53023          	sd	a5,0(a0)
    800063ac:	ffffd097          	auipc	ra,0xffffd
    800063b0:	03c080e7          	jalr	60(ra) # 800033e8 <_ZN6ThreadD1Ev>
    800063b4:	00813083          	ld	ra,8(sp)
    800063b8:	00013403          	ld	s0,0(sp)
    800063bc:	01010113          	addi	sp,sp,16
    800063c0:	00008067          	ret

00000000800063c4 <_ZN16ProducerKeyboardD0Ev>:
    800063c4:	fe010113          	addi	sp,sp,-32
    800063c8:	00113c23          	sd	ra,24(sp)
    800063cc:	00813823          	sd	s0,16(sp)
    800063d0:	00913423          	sd	s1,8(sp)
    800063d4:	02010413          	addi	s0,sp,32
    800063d8:	00050493          	mv	s1,a0
    800063dc:	00006797          	auipc	a5,0x6
    800063e0:	7fc78793          	addi	a5,a5,2044 # 8000cbd8 <_ZTV16ProducerKeyboard+0x10>
    800063e4:	00f53023          	sd	a5,0(a0)
    800063e8:	ffffd097          	auipc	ra,0xffffd
    800063ec:	000080e7          	jalr	ra # 800033e8 <_ZN6ThreadD1Ev>
    800063f0:	00048513          	mv	a0,s1
    800063f4:	ffffd097          	auipc	ra,0xffffd
    800063f8:	0ec080e7          	jalr	236(ra) # 800034e0 <_ZdlPv>
    800063fc:	01813083          	ld	ra,24(sp)
    80006400:	01013403          	ld	s0,16(sp)
    80006404:	00813483          	ld	s1,8(sp)
    80006408:	02010113          	addi	sp,sp,32
    8000640c:	00008067          	ret

0000000080006410 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006410:	ff010113          	addi	sp,sp,-16
    80006414:	00113423          	sd	ra,8(sp)
    80006418:	00813023          	sd	s0,0(sp)
    8000641c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006420:	02053583          	ld	a1,32(a0)
    80006424:	fffff097          	auipc	ra,0xfffff
    80006428:	7e4080e7          	jalr	2020(ra) # 80005c08 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000642c:	00813083          	ld	ra,8(sp)
    80006430:	00013403          	ld	s0,0(sp)
    80006434:	01010113          	addi	sp,sp,16
    80006438:	00008067          	ret

000000008000643c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000643c:	ff010113          	addi	sp,sp,-16
    80006440:	00113423          	sd	ra,8(sp)
    80006444:	00813023          	sd	s0,0(sp)
    80006448:	01010413          	addi	s0,sp,16
        producer(td);
    8000644c:	02053583          	ld	a1,32(a0)
    80006450:	00000097          	auipc	ra,0x0
    80006454:	878080e7          	jalr	-1928(ra) # 80005cc8 <_ZN12ProducerSync8producerEPv>
    }
    80006458:	00813083          	ld	ra,8(sp)
    8000645c:	00013403          	ld	s0,0(sp)
    80006460:	01010113          	addi	sp,sp,16
    80006464:	00008067          	ret

0000000080006468 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006468:	ff010113          	addi	sp,sp,-16
    8000646c:	00113423          	sd	ra,8(sp)
    80006470:	00813023          	sd	s0,0(sp)
    80006474:	01010413          	addi	s0,sp,16
        consumer(td);
    80006478:	02053583          	ld	a1,32(a0)
    8000647c:	00000097          	auipc	ra,0x0
    80006480:	8e0080e7          	jalr	-1824(ra) # 80005d5c <_ZN12ConsumerSync8consumerEPv>
    }
    80006484:	00813083          	ld	ra,8(sp)
    80006488:	00013403          	ld	s0,0(sp)
    8000648c:	01010113          	addi	sp,sp,16
    80006490:	00008067          	ret

0000000080006494 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006494:	fe010113          	addi	sp,sp,-32
    80006498:	00113c23          	sd	ra,24(sp)
    8000649c:	00813823          	sd	s0,16(sp)
    800064a0:	00913423          	sd	s1,8(sp)
    800064a4:	02010413          	addi	s0,sp,32
    800064a8:	00050493          	mv	s1,a0
    LOCK();
    800064ac:	00100613          	li	a2,1
    800064b0:	00000593          	li	a1,0
    800064b4:	00007517          	auipc	a0,0x7
    800064b8:	b2c50513          	addi	a0,a0,-1236 # 8000cfe0 <lockPrint>
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	e14080e7          	jalr	-492(ra) # 800012d0 <copy_and_swap>
    800064c4:	00050863          	beqz	a0,800064d4 <_Z11printStringPKc+0x40>
    800064c8:	ffffb097          	auipc	ra,0xffffb
    800064cc:	1b0080e7          	jalr	432(ra) # 80001678 <thread_dispatch>
    800064d0:	fddff06f          	j	800064ac <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800064d4:	0004c503          	lbu	a0,0(s1)
    800064d8:	00050a63          	beqz	a0,800064ec <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800064dc:	ffffb097          	auipc	ra,0xffffb
    800064e0:	2f0080e7          	jalr	752(ra) # 800017cc <putc>
        string++;
    800064e4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800064e8:	fedff06f          	j	800064d4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800064ec:	00000613          	li	a2,0
    800064f0:	00100593          	li	a1,1
    800064f4:	00007517          	auipc	a0,0x7
    800064f8:	aec50513          	addi	a0,a0,-1300 # 8000cfe0 <lockPrint>
    800064fc:	ffffb097          	auipc	ra,0xffffb
    80006500:	dd4080e7          	jalr	-556(ra) # 800012d0 <copy_and_swap>
    80006504:	fe0514e3          	bnez	a0,800064ec <_Z11printStringPKc+0x58>
}
    80006508:	01813083          	ld	ra,24(sp)
    8000650c:	01013403          	ld	s0,16(sp)
    80006510:	00813483          	ld	s1,8(sp)
    80006514:	02010113          	addi	sp,sp,32
    80006518:	00008067          	ret

000000008000651c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000651c:	fd010113          	addi	sp,sp,-48
    80006520:	02113423          	sd	ra,40(sp)
    80006524:	02813023          	sd	s0,32(sp)
    80006528:	00913c23          	sd	s1,24(sp)
    8000652c:	01213823          	sd	s2,16(sp)
    80006530:	01313423          	sd	s3,8(sp)
    80006534:	01413023          	sd	s4,0(sp)
    80006538:	03010413          	addi	s0,sp,48
    8000653c:	00050993          	mv	s3,a0
    80006540:	00058a13          	mv	s4,a1
    LOCK();
    80006544:	00100613          	li	a2,1
    80006548:	00000593          	li	a1,0
    8000654c:	00007517          	auipc	a0,0x7
    80006550:	a9450513          	addi	a0,a0,-1388 # 8000cfe0 <lockPrint>
    80006554:	ffffb097          	auipc	ra,0xffffb
    80006558:	d7c080e7          	jalr	-644(ra) # 800012d0 <copy_and_swap>
    8000655c:	00050863          	beqz	a0,8000656c <_Z9getStringPci+0x50>
    80006560:	ffffb097          	auipc	ra,0xffffb
    80006564:	118080e7          	jalr	280(ra) # 80001678 <thread_dispatch>
    80006568:	fddff06f          	j	80006544 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000656c:	00000913          	li	s2,0
    80006570:	00090493          	mv	s1,s2
    80006574:	0019091b          	addiw	s2,s2,1
    80006578:	03495a63          	bge	s2,s4,800065ac <_Z9getStringPci+0x90>
        cc = getc();
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	22c080e7          	jalr	556(ra) # 800017a8 <getc>
        if(cc < 1)
    80006584:	02050463          	beqz	a0,800065ac <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006588:	009984b3          	add	s1,s3,s1
    8000658c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006590:	00a00793          	li	a5,10
    80006594:	00f50a63          	beq	a0,a5,800065a8 <_Z9getStringPci+0x8c>
    80006598:	00d00793          	li	a5,13
    8000659c:	fcf51ae3          	bne	a0,a5,80006570 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800065a0:	00090493          	mv	s1,s2
    800065a4:	0080006f          	j	800065ac <_Z9getStringPci+0x90>
    800065a8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800065ac:	009984b3          	add	s1,s3,s1
    800065b0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800065b4:	00000613          	li	a2,0
    800065b8:	00100593          	li	a1,1
    800065bc:	00007517          	auipc	a0,0x7
    800065c0:	a2450513          	addi	a0,a0,-1500 # 8000cfe0 <lockPrint>
    800065c4:	ffffb097          	auipc	ra,0xffffb
    800065c8:	d0c080e7          	jalr	-756(ra) # 800012d0 <copy_and_swap>
    800065cc:	fe0514e3          	bnez	a0,800065b4 <_Z9getStringPci+0x98>
    return buf;
}
    800065d0:	00098513          	mv	a0,s3
    800065d4:	02813083          	ld	ra,40(sp)
    800065d8:	02013403          	ld	s0,32(sp)
    800065dc:	01813483          	ld	s1,24(sp)
    800065e0:	01013903          	ld	s2,16(sp)
    800065e4:	00813983          	ld	s3,8(sp)
    800065e8:	00013a03          	ld	s4,0(sp)
    800065ec:	03010113          	addi	sp,sp,48
    800065f0:	00008067          	ret

00000000800065f4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800065f4:	ff010113          	addi	sp,sp,-16
    800065f8:	00813423          	sd	s0,8(sp)
    800065fc:	01010413          	addi	s0,sp,16
    80006600:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006604:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006608:	0006c603          	lbu	a2,0(a3)
    8000660c:	fd06071b          	addiw	a4,a2,-48
    80006610:	0ff77713          	andi	a4,a4,255
    80006614:	00900793          	li	a5,9
    80006618:	02e7e063          	bltu	a5,a4,80006638 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000661c:	0025179b          	slliw	a5,a0,0x2
    80006620:	00a787bb          	addw	a5,a5,a0
    80006624:	0017979b          	slliw	a5,a5,0x1
    80006628:	00168693          	addi	a3,a3,1
    8000662c:	00c787bb          	addw	a5,a5,a2
    80006630:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006634:	fd5ff06f          	j	80006608 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006638:	00813403          	ld	s0,8(sp)
    8000663c:	01010113          	addi	sp,sp,16
    80006640:	00008067          	ret

0000000080006644 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006644:	fc010113          	addi	sp,sp,-64
    80006648:	02113c23          	sd	ra,56(sp)
    8000664c:	02813823          	sd	s0,48(sp)
    80006650:	02913423          	sd	s1,40(sp)
    80006654:	03213023          	sd	s2,32(sp)
    80006658:	01313c23          	sd	s3,24(sp)
    8000665c:	04010413          	addi	s0,sp,64
    80006660:	00050493          	mv	s1,a0
    80006664:	00058913          	mv	s2,a1
    80006668:	00060993          	mv	s3,a2
    LOCK();
    8000666c:	00100613          	li	a2,1
    80006670:	00000593          	li	a1,0
    80006674:	00007517          	auipc	a0,0x7
    80006678:	96c50513          	addi	a0,a0,-1684 # 8000cfe0 <lockPrint>
    8000667c:	ffffb097          	auipc	ra,0xffffb
    80006680:	c54080e7          	jalr	-940(ra) # 800012d0 <copy_and_swap>
    80006684:	00050863          	beqz	a0,80006694 <_Z8printIntiii+0x50>
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	ff0080e7          	jalr	-16(ra) # 80001678 <thread_dispatch>
    80006690:	fddff06f          	j	8000666c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006694:	00098463          	beqz	s3,8000669c <_Z8printIntiii+0x58>
    80006698:	0804c463          	bltz	s1,80006720 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000669c:	0004851b          	sext.w	a0,s1
    neg = 0;
    800066a0:	00000593          	li	a1,0
    }

    i = 0;
    800066a4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800066a8:	0009079b          	sext.w	a5,s2
    800066ac:	0325773b          	remuw	a4,a0,s2
    800066b0:	00048613          	mv	a2,s1
    800066b4:	0014849b          	addiw	s1,s1,1
    800066b8:	02071693          	slli	a3,a4,0x20
    800066bc:	0206d693          	srli	a3,a3,0x20
    800066c0:	00006717          	auipc	a4,0x6
    800066c4:	58070713          	addi	a4,a4,1408 # 8000cc40 <digits>
    800066c8:	00d70733          	add	a4,a4,a3
    800066cc:	00074683          	lbu	a3,0(a4)
    800066d0:	fd040713          	addi	a4,s0,-48
    800066d4:	00c70733          	add	a4,a4,a2
    800066d8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800066dc:	0005071b          	sext.w	a4,a0
    800066e0:	0325553b          	divuw	a0,a0,s2
    800066e4:	fcf772e3          	bgeu	a4,a5,800066a8 <_Z8printIntiii+0x64>
    if(neg)
    800066e8:	00058c63          	beqz	a1,80006700 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800066ec:	fd040793          	addi	a5,s0,-48
    800066f0:	009784b3          	add	s1,a5,s1
    800066f4:	02d00793          	li	a5,45
    800066f8:	fef48823          	sb	a5,-16(s1)
    800066fc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006700:	fff4849b          	addiw	s1,s1,-1
    80006704:	0204c463          	bltz	s1,8000672c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006708:	fd040793          	addi	a5,s0,-48
    8000670c:	009787b3          	add	a5,a5,s1
    80006710:	ff07c503          	lbu	a0,-16(a5)
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	0b8080e7          	jalr	184(ra) # 800017cc <putc>
    8000671c:	fe5ff06f          	j	80006700 <_Z8printIntiii+0xbc>
        x = -xx;
    80006720:	4090053b          	negw	a0,s1
        neg = 1;
    80006724:	00100593          	li	a1,1
        x = -xx;
    80006728:	f7dff06f          	j	800066a4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000672c:	00000613          	li	a2,0
    80006730:	00100593          	li	a1,1
    80006734:	00007517          	auipc	a0,0x7
    80006738:	8ac50513          	addi	a0,a0,-1876 # 8000cfe0 <lockPrint>
    8000673c:	ffffb097          	auipc	ra,0xffffb
    80006740:	b94080e7          	jalr	-1132(ra) # 800012d0 <copy_and_swap>
    80006744:	fe0514e3          	bnez	a0,8000672c <_Z8printIntiii+0xe8>
    80006748:	03813083          	ld	ra,56(sp)
    8000674c:	03013403          	ld	s0,48(sp)
    80006750:	02813483          	ld	s1,40(sp)
    80006754:	02013903          	ld	s2,32(sp)
    80006758:	01813983          	ld	s3,24(sp)
    8000675c:	04010113          	addi	sp,sp,64
    80006760:	00008067          	ret

0000000080006764 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006764:	fd010113          	addi	sp,sp,-48
    80006768:	02113423          	sd	ra,40(sp)
    8000676c:	02813023          	sd	s0,32(sp)
    80006770:	00913c23          	sd	s1,24(sp)
    80006774:	01213823          	sd	s2,16(sp)
    80006778:	01313423          	sd	s3,8(sp)
    8000677c:	03010413          	addi	s0,sp,48
    80006780:	00050493          	mv	s1,a0
    80006784:	00058913          	mv	s2,a1
    80006788:	0015879b          	addiw	a5,a1,1
    8000678c:	0007851b          	sext.w	a0,a5
    80006790:	00f4a023          	sw	a5,0(s1)
    80006794:	0004a823          	sw	zero,16(s1)
    80006798:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000679c:	00251513          	slli	a0,a0,0x2
    800067a0:	ffffb097          	auipc	ra,0xffffb
    800067a4:	db4080e7          	jalr	-588(ra) # 80001554 <mem_alloc>
    800067a8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800067ac:	01000513          	li	a0,16
    800067b0:	ffffd097          	auipc	ra,0xffffd
    800067b4:	d08080e7          	jalr	-760(ra) # 800034b8 <_Znwm>
    800067b8:	00050993          	mv	s3,a0
    800067bc:	00000593          	li	a1,0
    800067c0:	ffffd097          	auipc	ra,0xffffd
    800067c4:	eb4080e7          	jalr	-332(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    800067c8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800067cc:	01000513          	li	a0,16
    800067d0:	ffffd097          	auipc	ra,0xffffd
    800067d4:	ce8080e7          	jalr	-792(ra) # 800034b8 <_Znwm>
    800067d8:	00050993          	mv	s3,a0
    800067dc:	00090593          	mv	a1,s2
    800067e0:	ffffd097          	auipc	ra,0xffffd
    800067e4:	e94080e7          	jalr	-364(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    800067e8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800067ec:	01000513          	li	a0,16
    800067f0:	ffffd097          	auipc	ra,0xffffd
    800067f4:	cc8080e7          	jalr	-824(ra) # 800034b8 <_Znwm>
    800067f8:	00050913          	mv	s2,a0
    800067fc:	00100593          	li	a1,1
    80006800:	ffffd097          	auipc	ra,0xffffd
    80006804:	e74080e7          	jalr	-396(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    80006808:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000680c:	01000513          	li	a0,16
    80006810:	ffffd097          	auipc	ra,0xffffd
    80006814:	ca8080e7          	jalr	-856(ra) # 800034b8 <_Znwm>
    80006818:	00050913          	mv	s2,a0
    8000681c:	00100593          	li	a1,1
    80006820:	ffffd097          	auipc	ra,0xffffd
    80006824:	e54080e7          	jalr	-428(ra) # 80003674 <_ZN9SemaphoreC1Ej>
    80006828:	0324b823          	sd	s2,48(s1)
}
    8000682c:	02813083          	ld	ra,40(sp)
    80006830:	02013403          	ld	s0,32(sp)
    80006834:	01813483          	ld	s1,24(sp)
    80006838:	01013903          	ld	s2,16(sp)
    8000683c:	00813983          	ld	s3,8(sp)
    80006840:	03010113          	addi	sp,sp,48
    80006844:	00008067          	ret
    80006848:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000684c:	00098513          	mv	a0,s3
    80006850:	ffffd097          	auipc	ra,0xffffd
    80006854:	c90080e7          	jalr	-880(ra) # 800034e0 <_ZdlPv>
    80006858:	00048513          	mv	a0,s1
    8000685c:	00008097          	auipc	ra,0x8
    80006860:	85c080e7          	jalr	-1956(ra) # 8000e0b8 <_Unwind_Resume>
    80006864:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006868:	00098513          	mv	a0,s3
    8000686c:	ffffd097          	auipc	ra,0xffffd
    80006870:	c74080e7          	jalr	-908(ra) # 800034e0 <_ZdlPv>
    80006874:	00048513          	mv	a0,s1
    80006878:	00008097          	auipc	ra,0x8
    8000687c:	840080e7          	jalr	-1984(ra) # 8000e0b8 <_Unwind_Resume>
    80006880:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006884:	00090513          	mv	a0,s2
    80006888:	ffffd097          	auipc	ra,0xffffd
    8000688c:	c58080e7          	jalr	-936(ra) # 800034e0 <_ZdlPv>
    80006890:	00048513          	mv	a0,s1
    80006894:	00008097          	auipc	ra,0x8
    80006898:	824080e7          	jalr	-2012(ra) # 8000e0b8 <_Unwind_Resume>
    8000689c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800068a0:	00090513          	mv	a0,s2
    800068a4:	ffffd097          	auipc	ra,0xffffd
    800068a8:	c3c080e7          	jalr	-964(ra) # 800034e0 <_ZdlPv>
    800068ac:	00048513          	mv	a0,s1
    800068b0:	00008097          	auipc	ra,0x8
    800068b4:	808080e7          	jalr	-2040(ra) # 8000e0b8 <_Unwind_Resume>

00000000800068b8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800068b8:	fe010113          	addi	sp,sp,-32
    800068bc:	00113c23          	sd	ra,24(sp)
    800068c0:	00813823          	sd	s0,16(sp)
    800068c4:	00913423          	sd	s1,8(sp)
    800068c8:	01213023          	sd	s2,0(sp)
    800068cc:	02010413          	addi	s0,sp,32
    800068d0:	00050493          	mv	s1,a0
    800068d4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800068d8:	01853503          	ld	a0,24(a0)
    800068dc:	ffffd097          	auipc	ra,0xffffd
    800068e0:	dd0080e7          	jalr	-560(ra) # 800036ac <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800068e4:	0304b503          	ld	a0,48(s1)
    800068e8:	ffffd097          	auipc	ra,0xffffd
    800068ec:	dc4080e7          	jalr	-572(ra) # 800036ac <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800068f0:	0084b783          	ld	a5,8(s1)
    800068f4:	0144a703          	lw	a4,20(s1)
    800068f8:	00271713          	slli	a4,a4,0x2
    800068fc:	00e787b3          	add	a5,a5,a4
    80006900:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006904:	0144a783          	lw	a5,20(s1)
    80006908:	0017879b          	addiw	a5,a5,1
    8000690c:	0004a703          	lw	a4,0(s1)
    80006910:	02e7e7bb          	remw	a5,a5,a4
    80006914:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006918:	0304b503          	ld	a0,48(s1)
    8000691c:	ffffd097          	auipc	ra,0xffffd
    80006920:	dbc080e7          	jalr	-580(ra) # 800036d8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006924:	0204b503          	ld	a0,32(s1)
    80006928:	ffffd097          	auipc	ra,0xffffd
    8000692c:	db0080e7          	jalr	-592(ra) # 800036d8 <_ZN9Semaphore6signalEv>

}
    80006930:	01813083          	ld	ra,24(sp)
    80006934:	01013403          	ld	s0,16(sp)
    80006938:	00813483          	ld	s1,8(sp)
    8000693c:	00013903          	ld	s2,0(sp)
    80006940:	02010113          	addi	sp,sp,32
    80006944:	00008067          	ret

0000000080006948 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006948:	fe010113          	addi	sp,sp,-32
    8000694c:	00113c23          	sd	ra,24(sp)
    80006950:	00813823          	sd	s0,16(sp)
    80006954:	00913423          	sd	s1,8(sp)
    80006958:	01213023          	sd	s2,0(sp)
    8000695c:	02010413          	addi	s0,sp,32
    80006960:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006964:	02053503          	ld	a0,32(a0)
    80006968:	ffffd097          	auipc	ra,0xffffd
    8000696c:	d44080e7          	jalr	-700(ra) # 800036ac <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006970:	0284b503          	ld	a0,40(s1)
    80006974:	ffffd097          	auipc	ra,0xffffd
    80006978:	d38080e7          	jalr	-712(ra) # 800036ac <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000697c:	0084b703          	ld	a4,8(s1)
    80006980:	0104a783          	lw	a5,16(s1)
    80006984:	00279693          	slli	a3,a5,0x2
    80006988:	00d70733          	add	a4,a4,a3
    8000698c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006990:	0017879b          	addiw	a5,a5,1
    80006994:	0004a703          	lw	a4,0(s1)
    80006998:	02e7e7bb          	remw	a5,a5,a4
    8000699c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800069a0:	0284b503          	ld	a0,40(s1)
    800069a4:	ffffd097          	auipc	ra,0xffffd
    800069a8:	d34080e7          	jalr	-716(ra) # 800036d8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800069ac:	0184b503          	ld	a0,24(s1)
    800069b0:	ffffd097          	auipc	ra,0xffffd
    800069b4:	d28080e7          	jalr	-728(ra) # 800036d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800069b8:	00090513          	mv	a0,s2
    800069bc:	01813083          	ld	ra,24(sp)
    800069c0:	01013403          	ld	s0,16(sp)
    800069c4:	00813483          	ld	s1,8(sp)
    800069c8:	00013903          	ld	s2,0(sp)
    800069cc:	02010113          	addi	sp,sp,32
    800069d0:	00008067          	ret

00000000800069d4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00913423          	sd	s1,8(sp)
    800069e4:	01213023          	sd	s2,0(sp)
    800069e8:	02010413          	addi	s0,sp,32
    800069ec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800069f0:	02853503          	ld	a0,40(a0)
    800069f4:	ffffd097          	auipc	ra,0xffffd
    800069f8:	cb8080e7          	jalr	-840(ra) # 800036ac <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800069fc:	0304b503          	ld	a0,48(s1)
    80006a00:	ffffd097          	auipc	ra,0xffffd
    80006a04:	cac080e7          	jalr	-852(ra) # 800036ac <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006a08:	0144a783          	lw	a5,20(s1)
    80006a0c:	0104a903          	lw	s2,16(s1)
    80006a10:	0327ce63          	blt	a5,s2,80006a4c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006a14:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006a18:	0304b503          	ld	a0,48(s1)
    80006a1c:	ffffd097          	auipc	ra,0xffffd
    80006a20:	cbc080e7          	jalr	-836(ra) # 800036d8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006a24:	0284b503          	ld	a0,40(s1)
    80006a28:	ffffd097          	auipc	ra,0xffffd
    80006a2c:	cb0080e7          	jalr	-848(ra) # 800036d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006a30:	00090513          	mv	a0,s2
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	01013403          	ld	s0,16(sp)
    80006a3c:	00813483          	ld	s1,8(sp)
    80006a40:	00013903          	ld	s2,0(sp)
    80006a44:	02010113          	addi	sp,sp,32
    80006a48:	00008067          	ret
        ret = cap - head + tail;
    80006a4c:	0004a703          	lw	a4,0(s1)
    80006a50:	4127093b          	subw	s2,a4,s2
    80006a54:	00f9093b          	addw	s2,s2,a5
    80006a58:	fc1ff06f          	j	80006a18 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006a5c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006a5c:	fe010113          	addi	sp,sp,-32
    80006a60:	00113c23          	sd	ra,24(sp)
    80006a64:	00813823          	sd	s0,16(sp)
    80006a68:	00913423          	sd	s1,8(sp)
    80006a6c:	02010413          	addi	s0,sp,32
    80006a70:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006a74:	00a00513          	li	a0,10
    80006a78:	ffffd097          	auipc	ra,0xffffd
    80006a7c:	d4c080e7          	jalr	-692(ra) # 800037c4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006a80:	00004517          	auipc	a0,0x4
    80006a84:	b9050513          	addi	a0,a0,-1136 # 8000a610 <CONSOLE_STATUS+0x600>
    80006a88:	00000097          	auipc	ra,0x0
    80006a8c:	a0c080e7          	jalr	-1524(ra) # 80006494 <_Z11printStringPKc>
    while (getCnt()) {
    80006a90:	00048513          	mv	a0,s1
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	f40080e7          	jalr	-192(ra) # 800069d4 <_ZN9BufferCPP6getCntEv>
    80006a9c:	02050c63          	beqz	a0,80006ad4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006aa0:	0084b783          	ld	a5,8(s1)
    80006aa4:	0104a703          	lw	a4,16(s1)
    80006aa8:	00271713          	slli	a4,a4,0x2
    80006aac:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006ab0:	0007c503          	lbu	a0,0(a5)
    80006ab4:	ffffd097          	auipc	ra,0xffffd
    80006ab8:	d10080e7          	jalr	-752(ra) # 800037c4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006abc:	0104a783          	lw	a5,16(s1)
    80006ac0:	0017879b          	addiw	a5,a5,1
    80006ac4:	0004a703          	lw	a4,0(s1)
    80006ac8:	02e7e7bb          	remw	a5,a5,a4
    80006acc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006ad0:	fc1ff06f          	j	80006a90 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006ad4:	02100513          	li	a0,33
    80006ad8:	ffffd097          	auipc	ra,0xffffd
    80006adc:	cec080e7          	jalr	-788(ra) # 800037c4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006ae0:	00a00513          	li	a0,10
    80006ae4:	ffffd097          	auipc	ra,0xffffd
    80006ae8:	ce0080e7          	jalr	-800(ra) # 800037c4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006aec:	0084b503          	ld	a0,8(s1)
    80006af0:	ffffb097          	auipc	ra,0xffffb
    80006af4:	a90080e7          	jalr	-1392(ra) # 80001580 <mem_free>
    delete itemAvailable;
    80006af8:	0204b503          	ld	a0,32(s1)
    80006afc:	00050863          	beqz	a0,80006b0c <_ZN9BufferCPPD1Ev+0xb0>
    80006b00:	00053783          	ld	a5,0(a0)
    80006b04:	0087b783          	ld	a5,8(a5)
    80006b08:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006b0c:	0184b503          	ld	a0,24(s1)
    80006b10:	00050863          	beqz	a0,80006b20 <_ZN9BufferCPPD1Ev+0xc4>
    80006b14:	00053783          	ld	a5,0(a0)
    80006b18:	0087b783          	ld	a5,8(a5)
    80006b1c:	000780e7          	jalr	a5
    delete mutexTail;
    80006b20:	0304b503          	ld	a0,48(s1)
    80006b24:	00050863          	beqz	a0,80006b34 <_ZN9BufferCPPD1Ev+0xd8>
    80006b28:	00053783          	ld	a5,0(a0)
    80006b2c:	0087b783          	ld	a5,8(a5)
    80006b30:	000780e7          	jalr	a5
    delete mutexHead;
    80006b34:	0284b503          	ld	a0,40(s1)
    80006b38:	00050863          	beqz	a0,80006b48 <_ZN9BufferCPPD1Ev+0xec>
    80006b3c:	00053783          	ld	a5,0(a0)
    80006b40:	0087b783          	ld	a5,8(a5)
    80006b44:	000780e7          	jalr	a5
}
    80006b48:	01813083          	ld	ra,24(sp)
    80006b4c:	01013403          	ld	s0,16(sp)
    80006b50:	00813483          	ld	s1,8(sp)
    80006b54:	02010113          	addi	sp,sp,32
    80006b58:	00008067          	ret

0000000080006b5c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006b5c:	fe010113          	addi	sp,sp,-32
    80006b60:	00113c23          	sd	ra,24(sp)
    80006b64:	00813823          	sd	s0,16(sp)
    80006b68:	00913423          	sd	s1,8(sp)
    80006b6c:	01213023          	sd	s2,0(sp)
    80006b70:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006b74:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006b78:	00600493          	li	s1,6
    while (--i > 0) {
    80006b7c:	fff4849b          	addiw	s1,s1,-1
    80006b80:	04905463          	blez	s1,80006bc8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006b84:	00004517          	auipc	a0,0x4
    80006b88:	aa450513          	addi	a0,a0,-1372 # 8000a628 <CONSOLE_STATUS+0x618>
    80006b8c:	00000097          	auipc	ra,0x0
    80006b90:	908080e7          	jalr	-1784(ra) # 80006494 <_Z11printStringPKc>
        printInt(sleep_time);
    80006b94:	00000613          	li	a2,0
    80006b98:	00a00593          	li	a1,10
    80006b9c:	0009051b          	sext.w	a0,s2
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	aa4080e7          	jalr	-1372(ra) # 80006644 <_Z8printIntiii>
        printString(" !\n");
    80006ba8:	00004517          	auipc	a0,0x4
    80006bac:	a8850513          	addi	a0,a0,-1400 # 8000a630 <CONSOLE_STATUS+0x620>
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	8e4080e7          	jalr	-1820(ra) # 80006494 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006bb8:	00090513          	mv	a0,s2
    80006bbc:	ffffb097          	auipc	ra,0xffffb
    80006bc0:	adc080e7          	jalr	-1316(ra) # 80001698 <time_sleep>
    while (--i > 0) {
    80006bc4:	fb9ff06f          	j	80006b7c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006bc8:	00a00793          	li	a5,10
    80006bcc:	02f95933          	divu	s2,s2,a5
    80006bd0:	fff90913          	addi	s2,s2,-1
    80006bd4:	00006797          	auipc	a5,0x6
    80006bd8:	41478793          	addi	a5,a5,1044 # 8000cfe8 <_ZL8finished>
    80006bdc:	01278933          	add	s2,a5,s2
    80006be0:	00100793          	li	a5,1
    80006be4:	00f90023          	sb	a5,0(s2)
}
    80006be8:	01813083          	ld	ra,24(sp)
    80006bec:	01013403          	ld	s0,16(sp)
    80006bf0:	00813483          	ld	s1,8(sp)
    80006bf4:	00013903          	ld	s2,0(sp)
    80006bf8:	02010113          	addi	sp,sp,32
    80006bfc:	00008067          	ret

0000000080006c00 <_Z12testSleepingv>:

void testSleeping() {
    80006c00:	fc010113          	addi	sp,sp,-64
    80006c04:	02113c23          	sd	ra,56(sp)
    80006c08:	02813823          	sd	s0,48(sp)
    80006c0c:	02913423          	sd	s1,40(sp)
    80006c10:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006c14:	00a00793          	li	a5,10
    80006c18:	fcf43823          	sd	a5,-48(s0)
    80006c1c:	01400793          	li	a5,20
    80006c20:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006c24:	00000493          	li	s1,0
    80006c28:	02c0006f          	j	80006c54 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006c2c:	00349793          	slli	a5,s1,0x3
    80006c30:	fd040613          	addi	a2,s0,-48
    80006c34:	00f60633          	add	a2,a2,a5
    80006c38:	00000597          	auipc	a1,0x0
    80006c3c:	f2458593          	addi	a1,a1,-220 # 80006b5c <_ZL9sleepyRunPv>
    80006c40:	fc040513          	addi	a0,s0,-64
    80006c44:	00f50533          	add	a0,a0,a5
    80006c48:	ffffb097          	auipc	ra,0xffffb
    80006c4c:	964080e7          	jalr	-1692(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006c50:	0014849b          	addiw	s1,s1,1
    80006c54:	00100793          	li	a5,1
    80006c58:	fc97dae3          	bge	a5,s1,80006c2c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006c5c:	00006797          	auipc	a5,0x6
    80006c60:	38c7c783          	lbu	a5,908(a5) # 8000cfe8 <_ZL8finished>
    80006c64:	fe078ce3          	beqz	a5,80006c5c <_Z12testSleepingv+0x5c>
    80006c68:	00006797          	auipc	a5,0x6
    80006c6c:	3817c783          	lbu	a5,897(a5) # 8000cfe9 <_ZL8finished+0x1>
    80006c70:	fe0786e3          	beqz	a5,80006c5c <_Z12testSleepingv+0x5c>
}
    80006c74:	03813083          	ld	ra,56(sp)
    80006c78:	03013403          	ld	s0,48(sp)
    80006c7c:	02813483          	ld	s1,40(sp)
    80006c80:	04010113          	addi	sp,sp,64
    80006c84:	00008067          	ret

0000000080006c88 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006c88:	fe010113          	addi	sp,sp,-32
    80006c8c:	00113c23          	sd	ra,24(sp)
    80006c90:	00813823          	sd	s0,16(sp)
    80006c94:	00913423          	sd	s1,8(sp)
    80006c98:	01213023          	sd	s2,0(sp)
    80006c9c:	02010413          	addi	s0,sp,32
    80006ca0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006ca4:	00100793          	li	a5,1
    80006ca8:	02a7f863          	bgeu	a5,a0,80006cd8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006cac:	00a00793          	li	a5,10
    80006cb0:	02f577b3          	remu	a5,a0,a5
    80006cb4:	02078e63          	beqz	a5,80006cf0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006cb8:	fff48513          	addi	a0,s1,-1
    80006cbc:	00000097          	auipc	ra,0x0
    80006cc0:	fcc080e7          	jalr	-52(ra) # 80006c88 <_ZL9fibonaccim>
    80006cc4:	00050913          	mv	s2,a0
    80006cc8:	ffe48513          	addi	a0,s1,-2
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	fbc080e7          	jalr	-68(ra) # 80006c88 <_ZL9fibonaccim>
    80006cd4:	00a90533          	add	a0,s2,a0
}
    80006cd8:	01813083          	ld	ra,24(sp)
    80006cdc:	01013403          	ld	s0,16(sp)
    80006ce0:	00813483          	ld	s1,8(sp)
    80006ce4:	00013903          	ld	s2,0(sp)
    80006ce8:	02010113          	addi	sp,sp,32
    80006cec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006cf0:	ffffb097          	auipc	ra,0xffffb
    80006cf4:	988080e7          	jalr	-1656(ra) # 80001678 <thread_dispatch>
    80006cf8:	fc1ff06f          	j	80006cb8 <_ZL9fibonaccim+0x30>

0000000080006cfc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006cfc:	fe010113          	addi	sp,sp,-32
    80006d00:	00113c23          	sd	ra,24(sp)
    80006d04:	00813823          	sd	s0,16(sp)
    80006d08:	00913423          	sd	s1,8(sp)
    80006d0c:	01213023          	sd	s2,0(sp)
    80006d10:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006d14:	00a00493          	li	s1,10
    80006d18:	0400006f          	j	80006d58 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006d1c:	00003517          	auipc	a0,0x3
    80006d20:	5ac50513          	addi	a0,a0,1452 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006d24:	fffff097          	auipc	ra,0xfffff
    80006d28:	770080e7          	jalr	1904(ra) # 80006494 <_Z11printStringPKc>
    80006d2c:	00000613          	li	a2,0
    80006d30:	00a00593          	li	a1,10
    80006d34:	00048513          	mv	a0,s1
    80006d38:	00000097          	auipc	ra,0x0
    80006d3c:	90c080e7          	jalr	-1780(ra) # 80006644 <_Z8printIntiii>
    80006d40:	00003517          	auipc	a0,0x3
    80006d44:	79850513          	addi	a0,a0,1944 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006d48:	fffff097          	auipc	ra,0xfffff
    80006d4c:	74c080e7          	jalr	1868(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006d50:	0014849b          	addiw	s1,s1,1
    80006d54:	0ff4f493          	andi	s1,s1,255
    80006d58:	00c00793          	li	a5,12
    80006d5c:	fc97f0e3          	bgeu	a5,s1,80006d1c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006d60:	00003517          	auipc	a0,0x3
    80006d64:	57050513          	addi	a0,a0,1392 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80006d68:	fffff097          	auipc	ra,0xfffff
    80006d6c:	72c080e7          	jalr	1836(ra) # 80006494 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006d70:	00500313          	li	t1,5
    thread_dispatch();
    80006d74:	ffffb097          	auipc	ra,0xffffb
    80006d78:	904080e7          	jalr	-1788(ra) # 80001678 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006d7c:	01000513          	li	a0,16
    80006d80:	00000097          	auipc	ra,0x0
    80006d84:	f08080e7          	jalr	-248(ra) # 80006c88 <_ZL9fibonaccim>
    80006d88:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006d8c:	00003517          	auipc	a0,0x3
    80006d90:	55450513          	addi	a0,a0,1364 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006d94:	fffff097          	auipc	ra,0xfffff
    80006d98:	700080e7          	jalr	1792(ra) # 80006494 <_Z11printStringPKc>
    80006d9c:	00000613          	li	a2,0
    80006da0:	00a00593          	li	a1,10
    80006da4:	0009051b          	sext.w	a0,s2
    80006da8:	00000097          	auipc	ra,0x0
    80006dac:	89c080e7          	jalr	-1892(ra) # 80006644 <_Z8printIntiii>
    80006db0:	00003517          	auipc	a0,0x3
    80006db4:	72850513          	addi	a0,a0,1832 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006db8:	fffff097          	auipc	ra,0xfffff
    80006dbc:	6dc080e7          	jalr	1756(ra) # 80006494 <_Z11printStringPKc>
    80006dc0:	0400006f          	j	80006e00 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006dc4:	00003517          	auipc	a0,0x3
    80006dc8:	50450513          	addi	a0,a0,1284 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006dcc:	fffff097          	auipc	ra,0xfffff
    80006dd0:	6c8080e7          	jalr	1736(ra) # 80006494 <_Z11printStringPKc>
    80006dd4:	00000613          	li	a2,0
    80006dd8:	00a00593          	li	a1,10
    80006ddc:	00048513          	mv	a0,s1
    80006de0:	00000097          	auipc	ra,0x0
    80006de4:	864080e7          	jalr	-1948(ra) # 80006644 <_Z8printIntiii>
    80006de8:	00003517          	auipc	a0,0x3
    80006dec:	6f050513          	addi	a0,a0,1776 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006df0:	fffff097          	auipc	ra,0xfffff
    80006df4:	6a4080e7          	jalr	1700(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006df8:	0014849b          	addiw	s1,s1,1
    80006dfc:	0ff4f493          	andi	s1,s1,255
    80006e00:	00f00793          	li	a5,15
    80006e04:	fc97f0e3          	bgeu	a5,s1,80006dc4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006e08:	00003517          	auipc	a0,0x3
    80006e0c:	4e850513          	addi	a0,a0,1256 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    80006e10:	fffff097          	auipc	ra,0xfffff
    80006e14:	684080e7          	jalr	1668(ra) # 80006494 <_Z11printStringPKc>
    finishedD = true;
    80006e18:	00100793          	li	a5,1
    80006e1c:	00006717          	auipc	a4,0x6
    80006e20:	1cf70723          	sb	a5,462(a4) # 8000cfea <_ZL9finishedD>
    thread_dispatch();
    80006e24:	ffffb097          	auipc	ra,0xffffb
    80006e28:	854080e7          	jalr	-1964(ra) # 80001678 <thread_dispatch>
}
    80006e2c:	01813083          	ld	ra,24(sp)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	00813483          	ld	s1,8(sp)
    80006e38:	00013903          	ld	s2,0(sp)
    80006e3c:	02010113          	addi	sp,sp,32
    80006e40:	00008067          	ret

0000000080006e44 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006e44:	fe010113          	addi	sp,sp,-32
    80006e48:	00113c23          	sd	ra,24(sp)
    80006e4c:	00813823          	sd	s0,16(sp)
    80006e50:	00913423          	sd	s1,8(sp)
    80006e54:	01213023          	sd	s2,0(sp)
    80006e58:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006e5c:	00000493          	li	s1,0
    80006e60:	0400006f          	j	80006ea0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006e64:	00003517          	auipc	a0,0x3
    80006e68:	43450513          	addi	a0,a0,1076 # 8000a298 <CONSOLE_STATUS+0x288>
    80006e6c:	fffff097          	auipc	ra,0xfffff
    80006e70:	628080e7          	jalr	1576(ra) # 80006494 <_Z11printStringPKc>
    80006e74:	00000613          	li	a2,0
    80006e78:	00a00593          	li	a1,10
    80006e7c:	00048513          	mv	a0,s1
    80006e80:	fffff097          	auipc	ra,0xfffff
    80006e84:	7c4080e7          	jalr	1988(ra) # 80006644 <_Z8printIntiii>
    80006e88:	00003517          	auipc	a0,0x3
    80006e8c:	65050513          	addi	a0,a0,1616 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006e90:	fffff097          	auipc	ra,0xfffff
    80006e94:	604080e7          	jalr	1540(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006e98:	0014849b          	addiw	s1,s1,1
    80006e9c:	0ff4f493          	andi	s1,s1,255
    80006ea0:	00200793          	li	a5,2
    80006ea4:	fc97f0e3          	bgeu	a5,s1,80006e64 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006ea8:	00003517          	auipc	a0,0x3
    80006eac:	3f850513          	addi	a0,a0,1016 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006eb0:	fffff097          	auipc	ra,0xfffff
    80006eb4:	5e4080e7          	jalr	1508(ra) # 80006494 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006eb8:	00700313          	li	t1,7
    thread_dispatch();
    80006ebc:	ffffa097          	auipc	ra,0xffffa
    80006ec0:	7bc080e7          	jalr	1980(ra) # 80001678 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006ec4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006ec8:	00003517          	auipc	a0,0x3
    80006ecc:	3e850513          	addi	a0,a0,1000 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006ed0:	fffff097          	auipc	ra,0xfffff
    80006ed4:	5c4080e7          	jalr	1476(ra) # 80006494 <_Z11printStringPKc>
    80006ed8:	00000613          	li	a2,0
    80006edc:	00a00593          	li	a1,10
    80006ee0:	0009051b          	sext.w	a0,s2
    80006ee4:	fffff097          	auipc	ra,0xfffff
    80006ee8:	760080e7          	jalr	1888(ra) # 80006644 <_Z8printIntiii>
    80006eec:	00003517          	auipc	a0,0x3
    80006ef0:	5ec50513          	addi	a0,a0,1516 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006ef4:	fffff097          	auipc	ra,0xfffff
    80006ef8:	5a0080e7          	jalr	1440(ra) # 80006494 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006efc:	00c00513          	li	a0,12
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	d88080e7          	jalr	-632(ra) # 80006c88 <_ZL9fibonaccim>
    80006f08:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006f0c:	00003517          	auipc	a0,0x3
    80006f10:	3ac50513          	addi	a0,a0,940 # 8000a2b8 <CONSOLE_STATUS+0x2a8>
    80006f14:	fffff097          	auipc	ra,0xfffff
    80006f18:	580080e7          	jalr	1408(ra) # 80006494 <_Z11printStringPKc>
    80006f1c:	00000613          	li	a2,0
    80006f20:	00a00593          	li	a1,10
    80006f24:	0009051b          	sext.w	a0,s2
    80006f28:	fffff097          	auipc	ra,0xfffff
    80006f2c:	71c080e7          	jalr	1820(ra) # 80006644 <_Z8printIntiii>
    80006f30:	00003517          	auipc	a0,0x3
    80006f34:	5a850513          	addi	a0,a0,1448 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006f38:	fffff097          	auipc	ra,0xfffff
    80006f3c:	55c080e7          	jalr	1372(ra) # 80006494 <_Z11printStringPKc>
    80006f40:	0400006f          	j	80006f80 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006f44:	00003517          	auipc	a0,0x3
    80006f48:	35450513          	addi	a0,a0,852 # 8000a298 <CONSOLE_STATUS+0x288>
    80006f4c:	fffff097          	auipc	ra,0xfffff
    80006f50:	548080e7          	jalr	1352(ra) # 80006494 <_Z11printStringPKc>
    80006f54:	00000613          	li	a2,0
    80006f58:	00a00593          	li	a1,10
    80006f5c:	00048513          	mv	a0,s1
    80006f60:	fffff097          	auipc	ra,0xfffff
    80006f64:	6e4080e7          	jalr	1764(ra) # 80006644 <_Z8printIntiii>
    80006f68:	00003517          	auipc	a0,0x3
    80006f6c:	57050513          	addi	a0,a0,1392 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006f70:	fffff097          	auipc	ra,0xfffff
    80006f74:	524080e7          	jalr	1316(ra) # 80006494 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006f78:	0014849b          	addiw	s1,s1,1
    80006f7c:	0ff4f493          	andi	s1,s1,255
    80006f80:	00500793          	li	a5,5
    80006f84:	fc97f0e3          	bgeu	a5,s1,80006f44 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006f88:	00003517          	auipc	a0,0x3
    80006f8c:	2e850513          	addi	a0,a0,744 # 8000a270 <CONSOLE_STATUS+0x260>
    80006f90:	fffff097          	auipc	ra,0xfffff
    80006f94:	504080e7          	jalr	1284(ra) # 80006494 <_Z11printStringPKc>
    finishedC = true;
    80006f98:	00100793          	li	a5,1
    80006f9c:	00006717          	auipc	a4,0x6
    80006fa0:	04f707a3          	sb	a5,79(a4) # 8000cfeb <_ZL9finishedC>
    thread_dispatch();
    80006fa4:	ffffa097          	auipc	ra,0xffffa
    80006fa8:	6d4080e7          	jalr	1748(ra) # 80001678 <thread_dispatch>
}
    80006fac:	01813083          	ld	ra,24(sp)
    80006fb0:	01013403          	ld	s0,16(sp)
    80006fb4:	00813483          	ld	s1,8(sp)
    80006fb8:	00013903          	ld	s2,0(sp)
    80006fbc:	02010113          	addi	sp,sp,32
    80006fc0:	00008067          	ret

0000000080006fc4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006fc4:	fe010113          	addi	sp,sp,-32
    80006fc8:	00113c23          	sd	ra,24(sp)
    80006fcc:	00813823          	sd	s0,16(sp)
    80006fd0:	00913423          	sd	s1,8(sp)
    80006fd4:	01213023          	sd	s2,0(sp)
    80006fd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006fdc:	00000913          	li	s2,0
    80006fe0:	0400006f          	j	80007020 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006fe4:	ffffa097          	auipc	ra,0xffffa
    80006fe8:	694080e7          	jalr	1684(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006fec:	00148493          	addi	s1,s1,1
    80006ff0:	000027b7          	lui	a5,0x2
    80006ff4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ff8:	0097ee63          	bltu	a5,s1,80007014 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006ffc:	00000713          	li	a4,0
    80007000:	000077b7          	lui	a5,0x7
    80007004:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80007008:	fce7eee3          	bltu	a5,a4,80006fe4 <_ZL11workerBodyBPv+0x20>
    8000700c:	00170713          	addi	a4,a4,1
    80007010:	ff1ff06f          	j	80007000 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80007014:	00a00793          	li	a5,10
    80007018:	04f90663          	beq	s2,a5,80007064 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000701c:	00190913          	addi	s2,s2,1
    80007020:	00f00793          	li	a5,15
    80007024:	0527e463          	bltu	a5,s2,8000706c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80007028:	00003517          	auipc	a0,0x3
    8000702c:	25850513          	addi	a0,a0,600 # 8000a280 <CONSOLE_STATUS+0x270>
    80007030:	fffff097          	auipc	ra,0xfffff
    80007034:	464080e7          	jalr	1124(ra) # 80006494 <_Z11printStringPKc>
    80007038:	00000613          	li	a2,0
    8000703c:	00a00593          	li	a1,10
    80007040:	0009051b          	sext.w	a0,s2
    80007044:	fffff097          	auipc	ra,0xfffff
    80007048:	600080e7          	jalr	1536(ra) # 80006644 <_Z8printIntiii>
    8000704c:	00003517          	auipc	a0,0x3
    80007050:	48c50513          	addi	a0,a0,1164 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80007054:	fffff097          	auipc	ra,0xfffff
    80007058:	440080e7          	jalr	1088(ra) # 80006494 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000705c:	00000493          	li	s1,0
    80007060:	f91ff06f          	j	80006ff0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80007064:	14102ff3          	csrr	t6,sepc
    80007068:	fb5ff06f          	j	8000701c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000706c:	00003517          	auipc	a0,0x3
    80007070:	21c50513          	addi	a0,a0,540 # 8000a288 <CONSOLE_STATUS+0x278>
    80007074:	fffff097          	auipc	ra,0xfffff
    80007078:	420080e7          	jalr	1056(ra) # 80006494 <_Z11printStringPKc>
    finishedB = true;
    8000707c:	00100793          	li	a5,1
    80007080:	00006717          	auipc	a4,0x6
    80007084:	f6f70623          	sb	a5,-148(a4) # 8000cfec <_ZL9finishedB>
    thread_dispatch();
    80007088:	ffffa097          	auipc	ra,0xffffa
    8000708c:	5f0080e7          	jalr	1520(ra) # 80001678 <thread_dispatch>
}
    80007090:	01813083          	ld	ra,24(sp)
    80007094:	01013403          	ld	s0,16(sp)
    80007098:	00813483          	ld	s1,8(sp)
    8000709c:	00013903          	ld	s2,0(sp)
    800070a0:	02010113          	addi	sp,sp,32
    800070a4:	00008067          	ret

00000000800070a8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800070a8:	fe010113          	addi	sp,sp,-32
    800070ac:	00113c23          	sd	ra,24(sp)
    800070b0:	00813823          	sd	s0,16(sp)
    800070b4:	00913423          	sd	s1,8(sp)
    800070b8:	01213023          	sd	s2,0(sp)
    800070bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800070c0:	00000913          	li	s2,0
    800070c4:	0380006f          	j	800070fc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800070c8:	ffffa097          	auipc	ra,0xffffa
    800070cc:	5b0080e7          	jalr	1456(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800070d0:	00148493          	addi	s1,s1,1
    800070d4:	000027b7          	lui	a5,0x2
    800070d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800070dc:	0097ee63          	bltu	a5,s1,800070f8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800070e0:	00000713          	li	a4,0
    800070e4:	000077b7          	lui	a5,0x7
    800070e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800070ec:	fce7eee3          	bltu	a5,a4,800070c8 <_ZL11workerBodyAPv+0x20>
    800070f0:	00170713          	addi	a4,a4,1
    800070f4:	ff1ff06f          	j	800070e4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800070f8:	00190913          	addi	s2,s2,1
    800070fc:	00900793          	li	a5,9
    80007100:	0527e063          	bltu	a5,s2,80007140 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80007104:	00003517          	auipc	a0,0x3
    80007108:	16450513          	addi	a0,a0,356 # 8000a268 <CONSOLE_STATUS+0x258>
    8000710c:	fffff097          	auipc	ra,0xfffff
    80007110:	388080e7          	jalr	904(ra) # 80006494 <_Z11printStringPKc>
    80007114:	00000613          	li	a2,0
    80007118:	00a00593          	li	a1,10
    8000711c:	0009051b          	sext.w	a0,s2
    80007120:	fffff097          	auipc	ra,0xfffff
    80007124:	524080e7          	jalr	1316(ra) # 80006644 <_Z8printIntiii>
    80007128:	00003517          	auipc	a0,0x3
    8000712c:	3b050513          	addi	a0,a0,944 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80007130:	fffff097          	auipc	ra,0xfffff
    80007134:	364080e7          	jalr	868(ra) # 80006494 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80007138:	00000493          	li	s1,0
    8000713c:	f99ff06f          	j	800070d4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80007140:	00003517          	auipc	a0,0x3
    80007144:	13050513          	addi	a0,a0,304 # 8000a270 <CONSOLE_STATUS+0x260>
    80007148:	fffff097          	auipc	ra,0xfffff
    8000714c:	34c080e7          	jalr	844(ra) # 80006494 <_Z11printStringPKc>
    finishedA = true;
    80007150:	00100793          	li	a5,1
    80007154:	00006717          	auipc	a4,0x6
    80007158:	e8f70ca3          	sb	a5,-359(a4) # 8000cfed <_ZL9finishedA>
}
    8000715c:	01813083          	ld	ra,24(sp)
    80007160:	01013403          	ld	s0,16(sp)
    80007164:	00813483          	ld	s1,8(sp)
    80007168:	00013903          	ld	s2,0(sp)
    8000716c:	02010113          	addi	sp,sp,32
    80007170:	00008067          	ret

0000000080007174 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80007174:	fd010113          	addi	sp,sp,-48
    80007178:	02113423          	sd	ra,40(sp)
    8000717c:	02813023          	sd	s0,32(sp)
    80007180:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80007184:	00000613          	li	a2,0
    80007188:	00000597          	auipc	a1,0x0
    8000718c:	f2058593          	addi	a1,a1,-224 # 800070a8 <_ZL11workerBodyAPv>
    80007190:	fd040513          	addi	a0,s0,-48
    80007194:	ffffa097          	auipc	ra,0xffffa
    80007198:	418080e7          	jalr	1048(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    8000719c:	00003517          	auipc	a0,0x3
    800071a0:	16450513          	addi	a0,a0,356 # 8000a300 <CONSOLE_STATUS+0x2f0>
    800071a4:	fffff097          	auipc	ra,0xfffff
    800071a8:	2f0080e7          	jalr	752(ra) # 80006494 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800071ac:	00000613          	li	a2,0
    800071b0:	00000597          	auipc	a1,0x0
    800071b4:	e1458593          	addi	a1,a1,-492 # 80006fc4 <_ZL11workerBodyBPv>
    800071b8:	fd840513          	addi	a0,s0,-40
    800071bc:	ffffa097          	auipc	ra,0xffffa
    800071c0:	3f0080e7          	jalr	1008(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    800071c4:	00003517          	auipc	a0,0x3
    800071c8:	15450513          	addi	a0,a0,340 # 8000a318 <CONSOLE_STATUS+0x308>
    800071cc:	fffff097          	auipc	ra,0xfffff
    800071d0:	2c8080e7          	jalr	712(ra) # 80006494 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800071d4:	00000613          	li	a2,0
    800071d8:	00000597          	auipc	a1,0x0
    800071dc:	c6c58593          	addi	a1,a1,-916 # 80006e44 <_ZL11workerBodyCPv>
    800071e0:	fe040513          	addi	a0,s0,-32
    800071e4:	ffffa097          	auipc	ra,0xffffa
    800071e8:	3c8080e7          	jalr	968(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    800071ec:	00003517          	auipc	a0,0x3
    800071f0:	14450513          	addi	a0,a0,324 # 8000a330 <CONSOLE_STATUS+0x320>
    800071f4:	fffff097          	auipc	ra,0xfffff
    800071f8:	2a0080e7          	jalr	672(ra) # 80006494 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800071fc:	00000613          	li	a2,0
    80007200:	00000597          	auipc	a1,0x0
    80007204:	afc58593          	addi	a1,a1,-1284 # 80006cfc <_ZL11workerBodyDPv>
    80007208:	fe840513          	addi	a0,s0,-24
    8000720c:	ffffa097          	auipc	ra,0xffffa
    80007210:	3a0080e7          	jalr	928(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80007214:	00003517          	auipc	a0,0x3
    80007218:	13450513          	addi	a0,a0,308 # 8000a348 <CONSOLE_STATUS+0x338>
    8000721c:	fffff097          	auipc	ra,0xfffff
    80007220:	278080e7          	jalr	632(ra) # 80006494 <_Z11printStringPKc>
    80007224:	00c0006f          	j	80007230 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80007228:	ffffa097          	auipc	ra,0xffffa
    8000722c:	450080e7          	jalr	1104(ra) # 80001678 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80007230:	00006797          	auipc	a5,0x6
    80007234:	dbd7c783          	lbu	a5,-579(a5) # 8000cfed <_ZL9finishedA>
    80007238:	fe0788e3          	beqz	a5,80007228 <_Z16System_Mode_testv+0xb4>
    8000723c:	00006797          	auipc	a5,0x6
    80007240:	db07c783          	lbu	a5,-592(a5) # 8000cfec <_ZL9finishedB>
    80007244:	fe0782e3          	beqz	a5,80007228 <_Z16System_Mode_testv+0xb4>
    80007248:	00006797          	auipc	a5,0x6
    8000724c:	da37c783          	lbu	a5,-605(a5) # 8000cfeb <_ZL9finishedC>
    80007250:	fc078ce3          	beqz	a5,80007228 <_Z16System_Mode_testv+0xb4>
    80007254:	00006797          	auipc	a5,0x6
    80007258:	d967c783          	lbu	a5,-618(a5) # 8000cfea <_ZL9finishedD>
    8000725c:	fc0786e3          	beqz	a5,80007228 <_Z16System_Mode_testv+0xb4>
    }

}
    80007260:	02813083          	ld	ra,40(sp)
    80007264:	02013403          	ld	s0,32(sp)
    80007268:	03010113          	addi	sp,sp,48
    8000726c:	00008067          	ret

0000000080007270 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80007270:	fe010113          	addi	sp,sp,-32
    80007274:	00113c23          	sd	ra,24(sp)
    80007278:	00813823          	sd	s0,16(sp)
    8000727c:	00913423          	sd	s1,8(sp)
    80007280:	01213023          	sd	s2,0(sp)
    80007284:	02010413          	addi	s0,sp,32
    80007288:	00050493          	mv	s1,a0
    8000728c:	00058913          	mv	s2,a1
    80007290:	0015879b          	addiw	a5,a1,1
    80007294:	0007851b          	sext.w	a0,a5
    80007298:	00f4a023          	sw	a5,0(s1)
    8000729c:	0004a823          	sw	zero,16(s1)
    800072a0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800072a4:	00251513          	slli	a0,a0,0x2
    800072a8:	ffffa097          	auipc	ra,0xffffa
    800072ac:	2ac080e7          	jalr	684(ra) # 80001554 <mem_alloc>
    800072b0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800072b4:	00000593          	li	a1,0
    800072b8:	02048513          	addi	a0,s1,32
    800072bc:	ffffa097          	auipc	ra,0xffffa
    800072c0:	404080e7          	jalr	1028(ra) # 800016c0 <sem_open>
    sem_open(&spaceAvailable, _cap);
    800072c4:	00090593          	mv	a1,s2
    800072c8:	01848513          	addi	a0,s1,24
    800072cc:	ffffa097          	auipc	ra,0xffffa
    800072d0:	3f4080e7          	jalr	1012(ra) # 800016c0 <sem_open>
    sem_open(&mutexHead, 1);
    800072d4:	00100593          	li	a1,1
    800072d8:	02848513          	addi	a0,s1,40
    800072dc:	ffffa097          	auipc	ra,0xffffa
    800072e0:	3e4080e7          	jalr	996(ra) # 800016c0 <sem_open>
    sem_open(&mutexTail, 1);
    800072e4:	00100593          	li	a1,1
    800072e8:	03048513          	addi	a0,s1,48
    800072ec:	ffffa097          	auipc	ra,0xffffa
    800072f0:	3d4080e7          	jalr	980(ra) # 800016c0 <sem_open>
}
    800072f4:	01813083          	ld	ra,24(sp)
    800072f8:	01013403          	ld	s0,16(sp)
    800072fc:	00813483          	ld	s1,8(sp)
    80007300:	00013903          	ld	s2,0(sp)
    80007304:	02010113          	addi	sp,sp,32
    80007308:	00008067          	ret

000000008000730c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00113c23          	sd	ra,24(sp)
    80007314:	00813823          	sd	s0,16(sp)
    80007318:	00913423          	sd	s1,8(sp)
    8000731c:	01213023          	sd	s2,0(sp)
    80007320:	02010413          	addi	s0,sp,32
    80007324:	00050493          	mv	s1,a0
    80007328:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000732c:	01853503          	ld	a0,24(a0)
    80007330:	ffffa097          	auipc	ra,0xffffa
    80007334:	3f0080e7          	jalr	1008(ra) # 80001720 <sem_wait>

    sem_wait(mutexTail);
    80007338:	0304b503          	ld	a0,48(s1)
    8000733c:	ffffa097          	auipc	ra,0xffffa
    80007340:	3e4080e7          	jalr	996(ra) # 80001720 <sem_wait>
    buffer[tail] = val;
    80007344:	0084b783          	ld	a5,8(s1)
    80007348:	0144a703          	lw	a4,20(s1)
    8000734c:	00271713          	slli	a4,a4,0x2
    80007350:	00e787b3          	add	a5,a5,a4
    80007354:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007358:	0144a783          	lw	a5,20(s1)
    8000735c:	0017879b          	addiw	a5,a5,1
    80007360:	0004a703          	lw	a4,0(s1)
    80007364:	02e7e7bb          	remw	a5,a5,a4
    80007368:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000736c:	0304b503          	ld	a0,48(s1)
    80007370:	ffffa097          	auipc	ra,0xffffa
    80007374:	3d8080e7          	jalr	984(ra) # 80001748 <sem_signal>

    sem_signal(itemAvailable);
    80007378:	0204b503          	ld	a0,32(s1)
    8000737c:	ffffa097          	auipc	ra,0xffffa
    80007380:	3cc080e7          	jalr	972(ra) # 80001748 <sem_signal>

}
    80007384:	01813083          	ld	ra,24(sp)
    80007388:	01013403          	ld	s0,16(sp)
    8000738c:	00813483          	ld	s1,8(sp)
    80007390:	00013903          	ld	s2,0(sp)
    80007394:	02010113          	addi	sp,sp,32
    80007398:	00008067          	ret

000000008000739c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000739c:	fe010113          	addi	sp,sp,-32
    800073a0:	00113c23          	sd	ra,24(sp)
    800073a4:	00813823          	sd	s0,16(sp)
    800073a8:	00913423          	sd	s1,8(sp)
    800073ac:	01213023          	sd	s2,0(sp)
    800073b0:	02010413          	addi	s0,sp,32
    800073b4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800073b8:	02053503          	ld	a0,32(a0)
    800073bc:	ffffa097          	auipc	ra,0xffffa
    800073c0:	364080e7          	jalr	868(ra) # 80001720 <sem_wait>

    sem_wait(mutexHead);
    800073c4:	0284b503          	ld	a0,40(s1)
    800073c8:	ffffa097          	auipc	ra,0xffffa
    800073cc:	358080e7          	jalr	856(ra) # 80001720 <sem_wait>

    int ret = buffer[head];
    800073d0:	0084b703          	ld	a4,8(s1)
    800073d4:	0104a783          	lw	a5,16(s1)
    800073d8:	00279693          	slli	a3,a5,0x2
    800073dc:	00d70733          	add	a4,a4,a3
    800073e0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800073e4:	0017879b          	addiw	a5,a5,1
    800073e8:	0004a703          	lw	a4,0(s1)
    800073ec:	02e7e7bb          	remw	a5,a5,a4
    800073f0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800073f4:	0284b503          	ld	a0,40(s1)
    800073f8:	ffffa097          	auipc	ra,0xffffa
    800073fc:	350080e7          	jalr	848(ra) # 80001748 <sem_signal>

    sem_signal(spaceAvailable);
    80007400:	0184b503          	ld	a0,24(s1)
    80007404:	ffffa097          	auipc	ra,0xffffa
    80007408:	344080e7          	jalr	836(ra) # 80001748 <sem_signal>

    return ret;
}
    8000740c:	00090513          	mv	a0,s2
    80007410:	01813083          	ld	ra,24(sp)
    80007414:	01013403          	ld	s0,16(sp)
    80007418:	00813483          	ld	s1,8(sp)
    8000741c:	00013903          	ld	s2,0(sp)
    80007420:	02010113          	addi	sp,sp,32
    80007424:	00008067          	ret

0000000080007428 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80007428:	fe010113          	addi	sp,sp,-32
    8000742c:	00113c23          	sd	ra,24(sp)
    80007430:	00813823          	sd	s0,16(sp)
    80007434:	00913423          	sd	s1,8(sp)
    80007438:	01213023          	sd	s2,0(sp)
    8000743c:	02010413          	addi	s0,sp,32
    80007440:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80007444:	02853503          	ld	a0,40(a0)
    80007448:	ffffa097          	auipc	ra,0xffffa
    8000744c:	2d8080e7          	jalr	728(ra) # 80001720 <sem_wait>
    sem_wait(mutexTail);
    80007450:	0304b503          	ld	a0,48(s1)
    80007454:	ffffa097          	auipc	ra,0xffffa
    80007458:	2cc080e7          	jalr	716(ra) # 80001720 <sem_wait>

    if (tail >= head) {
    8000745c:	0144a783          	lw	a5,20(s1)
    80007460:	0104a903          	lw	s2,16(s1)
    80007464:	0327ce63          	blt	a5,s2,800074a0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80007468:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000746c:	0304b503          	ld	a0,48(s1)
    80007470:	ffffa097          	auipc	ra,0xffffa
    80007474:	2d8080e7          	jalr	728(ra) # 80001748 <sem_signal>
    sem_signal(mutexHead);
    80007478:	0284b503          	ld	a0,40(s1)
    8000747c:	ffffa097          	auipc	ra,0xffffa
    80007480:	2cc080e7          	jalr	716(ra) # 80001748 <sem_signal>

    return ret;
}
    80007484:	00090513          	mv	a0,s2
    80007488:	01813083          	ld	ra,24(sp)
    8000748c:	01013403          	ld	s0,16(sp)
    80007490:	00813483          	ld	s1,8(sp)
    80007494:	00013903          	ld	s2,0(sp)
    80007498:	02010113          	addi	sp,sp,32
    8000749c:	00008067          	ret
        ret = cap - head + tail;
    800074a0:	0004a703          	lw	a4,0(s1)
    800074a4:	4127093b          	subw	s2,a4,s2
    800074a8:	00f9093b          	addw	s2,s2,a5
    800074ac:	fc1ff06f          	j	8000746c <_ZN6Buffer6getCntEv+0x44>

00000000800074b0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800074b0:	fe010113          	addi	sp,sp,-32
    800074b4:	00113c23          	sd	ra,24(sp)
    800074b8:	00813823          	sd	s0,16(sp)
    800074bc:	00913423          	sd	s1,8(sp)
    800074c0:	02010413          	addi	s0,sp,32
    800074c4:	00050493          	mv	s1,a0
    putc('\n');
    800074c8:	00a00513          	li	a0,10
    800074cc:	ffffa097          	auipc	ra,0xffffa
    800074d0:	300080e7          	jalr	768(ra) # 800017cc <putc>
    printString("Buffer deleted!\n");
    800074d4:	00003517          	auipc	a0,0x3
    800074d8:	13c50513          	addi	a0,a0,316 # 8000a610 <CONSOLE_STATUS+0x600>
    800074dc:	fffff097          	auipc	ra,0xfffff
    800074e0:	fb8080e7          	jalr	-72(ra) # 80006494 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800074e4:	00048513          	mv	a0,s1
    800074e8:	00000097          	auipc	ra,0x0
    800074ec:	f40080e7          	jalr	-192(ra) # 80007428 <_ZN6Buffer6getCntEv>
    800074f0:	02a05c63          	blez	a0,80007528 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800074f4:	0084b783          	ld	a5,8(s1)
    800074f8:	0104a703          	lw	a4,16(s1)
    800074fc:	00271713          	slli	a4,a4,0x2
    80007500:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007504:	0007c503          	lbu	a0,0(a5)
    80007508:	ffffa097          	auipc	ra,0xffffa
    8000750c:	2c4080e7          	jalr	708(ra) # 800017cc <putc>
        head = (head + 1) % cap;
    80007510:	0104a783          	lw	a5,16(s1)
    80007514:	0017879b          	addiw	a5,a5,1
    80007518:	0004a703          	lw	a4,0(s1)
    8000751c:	02e7e7bb          	remw	a5,a5,a4
    80007520:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007524:	fc1ff06f          	j	800074e4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007528:	02100513          	li	a0,33
    8000752c:	ffffa097          	auipc	ra,0xffffa
    80007530:	2a0080e7          	jalr	672(ra) # 800017cc <putc>
    putc('\n');
    80007534:	00a00513          	li	a0,10
    80007538:	ffffa097          	auipc	ra,0xffffa
    8000753c:	294080e7          	jalr	660(ra) # 800017cc <putc>
    mem_free(buffer);
    80007540:	0084b503          	ld	a0,8(s1)
    80007544:	ffffa097          	auipc	ra,0xffffa
    80007548:	03c080e7          	jalr	60(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    8000754c:	0204b503          	ld	a0,32(s1)
    80007550:	ffffa097          	auipc	ra,0xffffa
    80007554:	1a8080e7          	jalr	424(ra) # 800016f8 <sem_close>
    sem_close(spaceAvailable);
    80007558:	0184b503          	ld	a0,24(s1)
    8000755c:	ffffa097          	auipc	ra,0xffffa
    80007560:	19c080e7          	jalr	412(ra) # 800016f8 <sem_close>
    sem_close(mutexTail);
    80007564:	0304b503          	ld	a0,48(s1)
    80007568:	ffffa097          	auipc	ra,0xffffa
    8000756c:	190080e7          	jalr	400(ra) # 800016f8 <sem_close>
    sem_close(mutexHead);
    80007570:	0284b503          	ld	a0,40(s1)
    80007574:	ffffa097          	auipc	ra,0xffffa
    80007578:	184080e7          	jalr	388(ra) # 800016f8 <sem_close>
}
    8000757c:	01813083          	ld	ra,24(sp)
    80007580:	01013403          	ld	s0,16(sp)
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	02010113          	addi	sp,sp,32
    8000758c:	00008067          	ret

0000000080007590 <start>:
    80007590:	ff010113          	addi	sp,sp,-16
    80007594:	00813423          	sd	s0,8(sp)
    80007598:	01010413          	addi	s0,sp,16
    8000759c:	300027f3          	csrr	a5,mstatus
    800075a0:	ffffe737          	lui	a4,0xffffe
    800075a4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff05af>
    800075a8:	00e7f7b3          	and	a5,a5,a4
    800075ac:	00001737          	lui	a4,0x1
    800075b0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800075b4:	00e7e7b3          	or	a5,a5,a4
    800075b8:	30079073          	csrw	mstatus,a5
    800075bc:	00000797          	auipc	a5,0x0
    800075c0:	16078793          	addi	a5,a5,352 # 8000771c <system_main>
    800075c4:	34179073          	csrw	mepc,a5
    800075c8:	00000793          	li	a5,0
    800075cc:	18079073          	csrw	satp,a5
    800075d0:	000107b7          	lui	a5,0x10
    800075d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800075d8:	30279073          	csrw	medeleg,a5
    800075dc:	30379073          	csrw	mideleg,a5
    800075e0:	104027f3          	csrr	a5,sie
    800075e4:	2227e793          	ori	a5,a5,546
    800075e8:	10479073          	csrw	sie,a5
    800075ec:	fff00793          	li	a5,-1
    800075f0:	00a7d793          	srli	a5,a5,0xa
    800075f4:	3b079073          	csrw	pmpaddr0,a5
    800075f8:	00f00793          	li	a5,15
    800075fc:	3a079073          	csrw	pmpcfg0,a5
    80007600:	f14027f3          	csrr	a5,mhartid
    80007604:	0200c737          	lui	a4,0x200c
    80007608:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000760c:	0007869b          	sext.w	a3,a5
    80007610:	00269713          	slli	a4,a3,0x2
    80007614:	000f4637          	lui	a2,0xf4
    80007618:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000761c:	00d70733          	add	a4,a4,a3
    80007620:	0037979b          	slliw	a5,a5,0x3
    80007624:	020046b7          	lui	a3,0x2004
    80007628:	00d787b3          	add	a5,a5,a3
    8000762c:	00c585b3          	add	a1,a1,a2
    80007630:	00371693          	slli	a3,a4,0x3
    80007634:	00006717          	auipc	a4,0x6
    80007638:	9bc70713          	addi	a4,a4,-1604 # 8000cff0 <timer_scratch>
    8000763c:	00b7b023          	sd	a1,0(a5)
    80007640:	00d70733          	add	a4,a4,a3
    80007644:	00f73c23          	sd	a5,24(a4)
    80007648:	02c73023          	sd	a2,32(a4)
    8000764c:	34071073          	csrw	mscratch,a4
    80007650:	00000797          	auipc	a5,0x0
    80007654:	6e078793          	addi	a5,a5,1760 # 80007d30 <timervec>
    80007658:	30579073          	csrw	mtvec,a5
    8000765c:	300027f3          	csrr	a5,mstatus
    80007660:	0087e793          	ori	a5,a5,8
    80007664:	30079073          	csrw	mstatus,a5
    80007668:	304027f3          	csrr	a5,mie
    8000766c:	0807e793          	ori	a5,a5,128
    80007670:	30479073          	csrw	mie,a5
    80007674:	f14027f3          	csrr	a5,mhartid
    80007678:	0007879b          	sext.w	a5,a5
    8000767c:	00078213          	mv	tp,a5
    80007680:	30200073          	mret
    80007684:	00813403          	ld	s0,8(sp)
    80007688:	01010113          	addi	sp,sp,16
    8000768c:	00008067          	ret

0000000080007690 <timerinit>:
    80007690:	ff010113          	addi	sp,sp,-16
    80007694:	00813423          	sd	s0,8(sp)
    80007698:	01010413          	addi	s0,sp,16
    8000769c:	f14027f3          	csrr	a5,mhartid
    800076a0:	0200c737          	lui	a4,0x200c
    800076a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800076a8:	0007869b          	sext.w	a3,a5
    800076ac:	00269713          	slli	a4,a3,0x2
    800076b0:	000f4637          	lui	a2,0xf4
    800076b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800076b8:	00d70733          	add	a4,a4,a3
    800076bc:	0037979b          	slliw	a5,a5,0x3
    800076c0:	020046b7          	lui	a3,0x2004
    800076c4:	00d787b3          	add	a5,a5,a3
    800076c8:	00c585b3          	add	a1,a1,a2
    800076cc:	00371693          	slli	a3,a4,0x3
    800076d0:	00006717          	auipc	a4,0x6
    800076d4:	92070713          	addi	a4,a4,-1760 # 8000cff0 <timer_scratch>
    800076d8:	00b7b023          	sd	a1,0(a5)
    800076dc:	00d70733          	add	a4,a4,a3
    800076e0:	00f73c23          	sd	a5,24(a4)
    800076e4:	02c73023          	sd	a2,32(a4)
    800076e8:	34071073          	csrw	mscratch,a4
    800076ec:	00000797          	auipc	a5,0x0
    800076f0:	64478793          	addi	a5,a5,1604 # 80007d30 <timervec>
    800076f4:	30579073          	csrw	mtvec,a5
    800076f8:	300027f3          	csrr	a5,mstatus
    800076fc:	0087e793          	ori	a5,a5,8
    80007700:	30079073          	csrw	mstatus,a5
    80007704:	304027f3          	csrr	a5,mie
    80007708:	0807e793          	ori	a5,a5,128
    8000770c:	30479073          	csrw	mie,a5
    80007710:	00813403          	ld	s0,8(sp)
    80007714:	01010113          	addi	sp,sp,16
    80007718:	00008067          	ret

000000008000771c <system_main>:
    8000771c:	fe010113          	addi	sp,sp,-32
    80007720:	00813823          	sd	s0,16(sp)
    80007724:	00913423          	sd	s1,8(sp)
    80007728:	00113c23          	sd	ra,24(sp)
    8000772c:	02010413          	addi	s0,sp,32
    80007730:	00000097          	auipc	ra,0x0
    80007734:	0c4080e7          	jalr	196(ra) # 800077f4 <cpuid>
    80007738:	00005497          	auipc	s1,0x5
    8000773c:	58848493          	addi	s1,s1,1416 # 8000ccc0 <started>
    80007740:	02050263          	beqz	a0,80007764 <system_main+0x48>
    80007744:	0004a783          	lw	a5,0(s1)
    80007748:	0007879b          	sext.w	a5,a5
    8000774c:	fe078ce3          	beqz	a5,80007744 <system_main+0x28>
    80007750:	0ff0000f          	fence
    80007754:	00003517          	auipc	a0,0x3
    80007758:	f1450513          	addi	a0,a0,-236 # 8000a668 <CONSOLE_STATUS+0x658>
    8000775c:	00001097          	auipc	ra,0x1
    80007760:	a70080e7          	jalr	-1424(ra) # 800081cc <panic>
    80007764:	00001097          	auipc	ra,0x1
    80007768:	9c4080e7          	jalr	-1596(ra) # 80008128 <consoleinit>
    8000776c:	00001097          	auipc	ra,0x1
    80007770:	150080e7          	jalr	336(ra) # 800088bc <printfinit>
    80007774:	00003517          	auipc	a0,0x3
    80007778:	d6450513          	addi	a0,a0,-668 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    8000777c:	00001097          	auipc	ra,0x1
    80007780:	aac080e7          	jalr	-1364(ra) # 80008228 <__printf>
    80007784:	00003517          	auipc	a0,0x3
    80007788:	eb450513          	addi	a0,a0,-332 # 8000a638 <CONSOLE_STATUS+0x628>
    8000778c:	00001097          	auipc	ra,0x1
    80007790:	a9c080e7          	jalr	-1380(ra) # 80008228 <__printf>
    80007794:	00003517          	auipc	a0,0x3
    80007798:	d4450513          	addi	a0,a0,-700 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    8000779c:	00001097          	auipc	ra,0x1
    800077a0:	a8c080e7          	jalr	-1396(ra) # 80008228 <__printf>
    800077a4:	00001097          	auipc	ra,0x1
    800077a8:	4a4080e7          	jalr	1188(ra) # 80008c48 <kinit>
    800077ac:	00000097          	auipc	ra,0x0
    800077b0:	148080e7          	jalr	328(ra) # 800078f4 <trapinit>
    800077b4:	00000097          	auipc	ra,0x0
    800077b8:	16c080e7          	jalr	364(ra) # 80007920 <trapinithart>
    800077bc:	00000097          	auipc	ra,0x0
    800077c0:	5b4080e7          	jalr	1460(ra) # 80007d70 <plicinit>
    800077c4:	00000097          	auipc	ra,0x0
    800077c8:	5d4080e7          	jalr	1492(ra) # 80007d98 <plicinithart>
    800077cc:	00000097          	auipc	ra,0x0
    800077d0:	078080e7          	jalr	120(ra) # 80007844 <userinit>
    800077d4:	0ff0000f          	fence
    800077d8:	00100793          	li	a5,1
    800077dc:	00003517          	auipc	a0,0x3
    800077e0:	e7450513          	addi	a0,a0,-396 # 8000a650 <CONSOLE_STATUS+0x640>
    800077e4:	00f4a023          	sw	a5,0(s1)
    800077e8:	00001097          	auipc	ra,0x1
    800077ec:	a40080e7          	jalr	-1472(ra) # 80008228 <__printf>
    800077f0:	0000006f          	j	800077f0 <system_main+0xd4>

00000000800077f4 <cpuid>:
    800077f4:	ff010113          	addi	sp,sp,-16
    800077f8:	00813423          	sd	s0,8(sp)
    800077fc:	01010413          	addi	s0,sp,16
    80007800:	00020513          	mv	a0,tp
    80007804:	00813403          	ld	s0,8(sp)
    80007808:	0005051b          	sext.w	a0,a0
    8000780c:	01010113          	addi	sp,sp,16
    80007810:	00008067          	ret

0000000080007814 <mycpu>:
    80007814:	ff010113          	addi	sp,sp,-16
    80007818:	00813423          	sd	s0,8(sp)
    8000781c:	01010413          	addi	s0,sp,16
    80007820:	00020793          	mv	a5,tp
    80007824:	00813403          	ld	s0,8(sp)
    80007828:	0007879b          	sext.w	a5,a5
    8000782c:	00779793          	slli	a5,a5,0x7
    80007830:	00006517          	auipc	a0,0x6
    80007834:	7f050513          	addi	a0,a0,2032 # 8000e020 <cpus>
    80007838:	00f50533          	add	a0,a0,a5
    8000783c:	01010113          	addi	sp,sp,16
    80007840:	00008067          	ret

0000000080007844 <userinit>:
    80007844:	ff010113          	addi	sp,sp,-16
    80007848:	00813423          	sd	s0,8(sp)
    8000784c:	01010413          	addi	s0,sp,16
    80007850:	00813403          	ld	s0,8(sp)
    80007854:	01010113          	addi	sp,sp,16
    80007858:	ffffa317          	auipc	t1,0xffffa
    8000785c:	04430067          	jr	68(t1) # 8000189c <main>

0000000080007860 <either_copyout>:
    80007860:	ff010113          	addi	sp,sp,-16
    80007864:	00813023          	sd	s0,0(sp)
    80007868:	00113423          	sd	ra,8(sp)
    8000786c:	01010413          	addi	s0,sp,16
    80007870:	02051663          	bnez	a0,8000789c <either_copyout+0x3c>
    80007874:	00058513          	mv	a0,a1
    80007878:	00060593          	mv	a1,a2
    8000787c:	0006861b          	sext.w	a2,a3
    80007880:	00002097          	auipc	ra,0x2
    80007884:	c54080e7          	jalr	-940(ra) # 800094d4 <__memmove>
    80007888:	00813083          	ld	ra,8(sp)
    8000788c:	00013403          	ld	s0,0(sp)
    80007890:	00000513          	li	a0,0
    80007894:	01010113          	addi	sp,sp,16
    80007898:	00008067          	ret
    8000789c:	00003517          	auipc	a0,0x3
    800078a0:	df450513          	addi	a0,a0,-524 # 8000a690 <CONSOLE_STATUS+0x680>
    800078a4:	00001097          	auipc	ra,0x1
    800078a8:	928080e7          	jalr	-1752(ra) # 800081cc <panic>

00000000800078ac <either_copyin>:
    800078ac:	ff010113          	addi	sp,sp,-16
    800078b0:	00813023          	sd	s0,0(sp)
    800078b4:	00113423          	sd	ra,8(sp)
    800078b8:	01010413          	addi	s0,sp,16
    800078bc:	02059463          	bnez	a1,800078e4 <either_copyin+0x38>
    800078c0:	00060593          	mv	a1,a2
    800078c4:	0006861b          	sext.w	a2,a3
    800078c8:	00002097          	auipc	ra,0x2
    800078cc:	c0c080e7          	jalr	-1012(ra) # 800094d4 <__memmove>
    800078d0:	00813083          	ld	ra,8(sp)
    800078d4:	00013403          	ld	s0,0(sp)
    800078d8:	00000513          	li	a0,0
    800078dc:	01010113          	addi	sp,sp,16
    800078e0:	00008067          	ret
    800078e4:	00003517          	auipc	a0,0x3
    800078e8:	dd450513          	addi	a0,a0,-556 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    800078ec:	00001097          	auipc	ra,0x1
    800078f0:	8e0080e7          	jalr	-1824(ra) # 800081cc <panic>

00000000800078f4 <trapinit>:
    800078f4:	ff010113          	addi	sp,sp,-16
    800078f8:	00813423          	sd	s0,8(sp)
    800078fc:	01010413          	addi	s0,sp,16
    80007900:	00813403          	ld	s0,8(sp)
    80007904:	00003597          	auipc	a1,0x3
    80007908:	ddc58593          	addi	a1,a1,-548 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    8000790c:	00006517          	auipc	a0,0x6
    80007910:	79450513          	addi	a0,a0,1940 # 8000e0a0 <tickslock>
    80007914:	01010113          	addi	sp,sp,16
    80007918:	00001317          	auipc	t1,0x1
    8000791c:	5c030067          	jr	1472(t1) # 80008ed8 <initlock>

0000000080007920 <trapinithart>:
    80007920:	ff010113          	addi	sp,sp,-16
    80007924:	00813423          	sd	s0,8(sp)
    80007928:	01010413          	addi	s0,sp,16
    8000792c:	00000797          	auipc	a5,0x0
    80007930:	2f478793          	addi	a5,a5,756 # 80007c20 <kernelvec>
    80007934:	10579073          	csrw	stvec,a5
    80007938:	00813403          	ld	s0,8(sp)
    8000793c:	01010113          	addi	sp,sp,16
    80007940:	00008067          	ret

0000000080007944 <usertrap>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813423          	sd	s0,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	00813403          	ld	s0,8(sp)
    80007954:	01010113          	addi	sp,sp,16
    80007958:	00008067          	ret

000000008000795c <usertrapret>:
    8000795c:	ff010113          	addi	sp,sp,-16
    80007960:	00813423          	sd	s0,8(sp)
    80007964:	01010413          	addi	s0,sp,16
    80007968:	00813403          	ld	s0,8(sp)
    8000796c:	01010113          	addi	sp,sp,16
    80007970:	00008067          	ret

0000000080007974 <kerneltrap>:
    80007974:	fe010113          	addi	sp,sp,-32
    80007978:	00813823          	sd	s0,16(sp)
    8000797c:	00113c23          	sd	ra,24(sp)
    80007980:	00913423          	sd	s1,8(sp)
    80007984:	02010413          	addi	s0,sp,32
    80007988:	142025f3          	csrr	a1,scause
    8000798c:	100027f3          	csrr	a5,sstatus
    80007990:	0027f793          	andi	a5,a5,2
    80007994:	10079c63          	bnez	a5,80007aac <kerneltrap+0x138>
    80007998:	142027f3          	csrr	a5,scause
    8000799c:	0207ce63          	bltz	a5,800079d8 <kerneltrap+0x64>
    800079a0:	00003517          	auipc	a0,0x3
    800079a4:	d8850513          	addi	a0,a0,-632 # 8000a728 <CONSOLE_STATUS+0x718>
    800079a8:	00001097          	auipc	ra,0x1
    800079ac:	880080e7          	jalr	-1920(ra) # 80008228 <__printf>
    800079b0:	141025f3          	csrr	a1,sepc
    800079b4:	14302673          	csrr	a2,stval
    800079b8:	00003517          	auipc	a0,0x3
    800079bc:	d8050513          	addi	a0,a0,-640 # 8000a738 <CONSOLE_STATUS+0x728>
    800079c0:	00001097          	auipc	ra,0x1
    800079c4:	868080e7          	jalr	-1944(ra) # 80008228 <__printf>
    800079c8:	00003517          	auipc	a0,0x3
    800079cc:	d8850513          	addi	a0,a0,-632 # 8000a750 <CONSOLE_STATUS+0x740>
    800079d0:	00000097          	auipc	ra,0x0
    800079d4:	7fc080e7          	jalr	2044(ra) # 800081cc <panic>
    800079d8:	0ff7f713          	andi	a4,a5,255
    800079dc:	00900693          	li	a3,9
    800079e0:	04d70063          	beq	a4,a3,80007a20 <kerneltrap+0xac>
    800079e4:	fff00713          	li	a4,-1
    800079e8:	03f71713          	slli	a4,a4,0x3f
    800079ec:	00170713          	addi	a4,a4,1
    800079f0:	fae798e3          	bne	a5,a4,800079a0 <kerneltrap+0x2c>
    800079f4:	00000097          	auipc	ra,0x0
    800079f8:	e00080e7          	jalr	-512(ra) # 800077f4 <cpuid>
    800079fc:	06050663          	beqz	a0,80007a68 <kerneltrap+0xf4>
    80007a00:	144027f3          	csrr	a5,sip
    80007a04:	ffd7f793          	andi	a5,a5,-3
    80007a08:	14479073          	csrw	sip,a5
    80007a0c:	01813083          	ld	ra,24(sp)
    80007a10:	01013403          	ld	s0,16(sp)
    80007a14:	00813483          	ld	s1,8(sp)
    80007a18:	02010113          	addi	sp,sp,32
    80007a1c:	00008067          	ret
    80007a20:	00000097          	auipc	ra,0x0
    80007a24:	3c4080e7          	jalr	964(ra) # 80007de4 <plic_claim>
    80007a28:	00a00793          	li	a5,10
    80007a2c:	00050493          	mv	s1,a0
    80007a30:	06f50863          	beq	a0,a5,80007aa0 <kerneltrap+0x12c>
    80007a34:	fc050ce3          	beqz	a0,80007a0c <kerneltrap+0x98>
    80007a38:	00050593          	mv	a1,a0
    80007a3c:	00003517          	auipc	a0,0x3
    80007a40:	ccc50513          	addi	a0,a0,-820 # 8000a708 <CONSOLE_STATUS+0x6f8>
    80007a44:	00000097          	auipc	ra,0x0
    80007a48:	7e4080e7          	jalr	2020(ra) # 80008228 <__printf>
    80007a4c:	01013403          	ld	s0,16(sp)
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	00048513          	mv	a0,s1
    80007a58:	00813483          	ld	s1,8(sp)
    80007a5c:	02010113          	addi	sp,sp,32
    80007a60:	00000317          	auipc	t1,0x0
    80007a64:	3bc30067          	jr	956(t1) # 80007e1c <plic_complete>
    80007a68:	00006517          	auipc	a0,0x6
    80007a6c:	63850513          	addi	a0,a0,1592 # 8000e0a0 <tickslock>
    80007a70:	00001097          	auipc	ra,0x1
    80007a74:	48c080e7          	jalr	1164(ra) # 80008efc <acquire>
    80007a78:	00005717          	auipc	a4,0x5
    80007a7c:	24c70713          	addi	a4,a4,588 # 8000ccc4 <ticks>
    80007a80:	00072783          	lw	a5,0(a4)
    80007a84:	00006517          	auipc	a0,0x6
    80007a88:	61c50513          	addi	a0,a0,1564 # 8000e0a0 <tickslock>
    80007a8c:	0017879b          	addiw	a5,a5,1
    80007a90:	00f72023          	sw	a5,0(a4)
    80007a94:	00001097          	auipc	ra,0x1
    80007a98:	534080e7          	jalr	1332(ra) # 80008fc8 <release>
    80007a9c:	f65ff06f          	j	80007a00 <kerneltrap+0x8c>
    80007aa0:	00001097          	auipc	ra,0x1
    80007aa4:	090080e7          	jalr	144(ra) # 80008b30 <uartintr>
    80007aa8:	fa5ff06f          	j	80007a4c <kerneltrap+0xd8>
    80007aac:	00003517          	auipc	a0,0x3
    80007ab0:	c3c50513          	addi	a0,a0,-964 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007ab4:	00000097          	auipc	ra,0x0
    80007ab8:	718080e7          	jalr	1816(ra) # 800081cc <panic>

0000000080007abc <clockintr>:
    80007abc:	fe010113          	addi	sp,sp,-32
    80007ac0:	00813823          	sd	s0,16(sp)
    80007ac4:	00913423          	sd	s1,8(sp)
    80007ac8:	00113c23          	sd	ra,24(sp)
    80007acc:	02010413          	addi	s0,sp,32
    80007ad0:	00006497          	auipc	s1,0x6
    80007ad4:	5d048493          	addi	s1,s1,1488 # 8000e0a0 <tickslock>
    80007ad8:	00048513          	mv	a0,s1
    80007adc:	00001097          	auipc	ra,0x1
    80007ae0:	420080e7          	jalr	1056(ra) # 80008efc <acquire>
    80007ae4:	00005717          	auipc	a4,0x5
    80007ae8:	1e070713          	addi	a4,a4,480 # 8000ccc4 <ticks>
    80007aec:	00072783          	lw	a5,0(a4)
    80007af0:	01013403          	ld	s0,16(sp)
    80007af4:	01813083          	ld	ra,24(sp)
    80007af8:	00048513          	mv	a0,s1
    80007afc:	0017879b          	addiw	a5,a5,1
    80007b00:	00813483          	ld	s1,8(sp)
    80007b04:	00f72023          	sw	a5,0(a4)
    80007b08:	02010113          	addi	sp,sp,32
    80007b0c:	00001317          	auipc	t1,0x1
    80007b10:	4bc30067          	jr	1212(t1) # 80008fc8 <release>

0000000080007b14 <devintr>:
    80007b14:	142027f3          	csrr	a5,scause
    80007b18:	00000513          	li	a0,0
    80007b1c:	0007c463          	bltz	a5,80007b24 <devintr+0x10>
    80007b20:	00008067          	ret
    80007b24:	fe010113          	addi	sp,sp,-32
    80007b28:	00813823          	sd	s0,16(sp)
    80007b2c:	00113c23          	sd	ra,24(sp)
    80007b30:	00913423          	sd	s1,8(sp)
    80007b34:	02010413          	addi	s0,sp,32
    80007b38:	0ff7f713          	andi	a4,a5,255
    80007b3c:	00900693          	li	a3,9
    80007b40:	04d70c63          	beq	a4,a3,80007b98 <devintr+0x84>
    80007b44:	fff00713          	li	a4,-1
    80007b48:	03f71713          	slli	a4,a4,0x3f
    80007b4c:	00170713          	addi	a4,a4,1
    80007b50:	00e78c63          	beq	a5,a4,80007b68 <devintr+0x54>
    80007b54:	01813083          	ld	ra,24(sp)
    80007b58:	01013403          	ld	s0,16(sp)
    80007b5c:	00813483          	ld	s1,8(sp)
    80007b60:	02010113          	addi	sp,sp,32
    80007b64:	00008067          	ret
    80007b68:	00000097          	auipc	ra,0x0
    80007b6c:	c8c080e7          	jalr	-884(ra) # 800077f4 <cpuid>
    80007b70:	06050663          	beqz	a0,80007bdc <devintr+0xc8>
    80007b74:	144027f3          	csrr	a5,sip
    80007b78:	ffd7f793          	andi	a5,a5,-3
    80007b7c:	14479073          	csrw	sip,a5
    80007b80:	01813083          	ld	ra,24(sp)
    80007b84:	01013403          	ld	s0,16(sp)
    80007b88:	00813483          	ld	s1,8(sp)
    80007b8c:	00200513          	li	a0,2
    80007b90:	02010113          	addi	sp,sp,32
    80007b94:	00008067          	ret
    80007b98:	00000097          	auipc	ra,0x0
    80007b9c:	24c080e7          	jalr	588(ra) # 80007de4 <plic_claim>
    80007ba0:	00a00793          	li	a5,10
    80007ba4:	00050493          	mv	s1,a0
    80007ba8:	06f50663          	beq	a0,a5,80007c14 <devintr+0x100>
    80007bac:	00100513          	li	a0,1
    80007bb0:	fa0482e3          	beqz	s1,80007b54 <devintr+0x40>
    80007bb4:	00048593          	mv	a1,s1
    80007bb8:	00003517          	auipc	a0,0x3
    80007bbc:	b5050513          	addi	a0,a0,-1200 # 8000a708 <CONSOLE_STATUS+0x6f8>
    80007bc0:	00000097          	auipc	ra,0x0
    80007bc4:	668080e7          	jalr	1640(ra) # 80008228 <__printf>
    80007bc8:	00048513          	mv	a0,s1
    80007bcc:	00000097          	auipc	ra,0x0
    80007bd0:	250080e7          	jalr	592(ra) # 80007e1c <plic_complete>
    80007bd4:	00100513          	li	a0,1
    80007bd8:	f7dff06f          	j	80007b54 <devintr+0x40>
    80007bdc:	00006517          	auipc	a0,0x6
    80007be0:	4c450513          	addi	a0,a0,1220 # 8000e0a0 <tickslock>
    80007be4:	00001097          	auipc	ra,0x1
    80007be8:	318080e7          	jalr	792(ra) # 80008efc <acquire>
    80007bec:	00005717          	auipc	a4,0x5
    80007bf0:	0d870713          	addi	a4,a4,216 # 8000ccc4 <ticks>
    80007bf4:	00072783          	lw	a5,0(a4)
    80007bf8:	00006517          	auipc	a0,0x6
    80007bfc:	4a850513          	addi	a0,a0,1192 # 8000e0a0 <tickslock>
    80007c00:	0017879b          	addiw	a5,a5,1
    80007c04:	00f72023          	sw	a5,0(a4)
    80007c08:	00001097          	auipc	ra,0x1
    80007c0c:	3c0080e7          	jalr	960(ra) # 80008fc8 <release>
    80007c10:	f65ff06f          	j	80007b74 <devintr+0x60>
    80007c14:	00001097          	auipc	ra,0x1
    80007c18:	f1c080e7          	jalr	-228(ra) # 80008b30 <uartintr>
    80007c1c:	fadff06f          	j	80007bc8 <devintr+0xb4>

0000000080007c20 <kernelvec>:
    80007c20:	f0010113          	addi	sp,sp,-256
    80007c24:	00113023          	sd	ra,0(sp)
    80007c28:	00213423          	sd	sp,8(sp)
    80007c2c:	00313823          	sd	gp,16(sp)
    80007c30:	00413c23          	sd	tp,24(sp)
    80007c34:	02513023          	sd	t0,32(sp)
    80007c38:	02613423          	sd	t1,40(sp)
    80007c3c:	02713823          	sd	t2,48(sp)
    80007c40:	02813c23          	sd	s0,56(sp)
    80007c44:	04913023          	sd	s1,64(sp)
    80007c48:	04a13423          	sd	a0,72(sp)
    80007c4c:	04b13823          	sd	a1,80(sp)
    80007c50:	04c13c23          	sd	a2,88(sp)
    80007c54:	06d13023          	sd	a3,96(sp)
    80007c58:	06e13423          	sd	a4,104(sp)
    80007c5c:	06f13823          	sd	a5,112(sp)
    80007c60:	07013c23          	sd	a6,120(sp)
    80007c64:	09113023          	sd	a7,128(sp)
    80007c68:	09213423          	sd	s2,136(sp)
    80007c6c:	09313823          	sd	s3,144(sp)
    80007c70:	09413c23          	sd	s4,152(sp)
    80007c74:	0b513023          	sd	s5,160(sp)
    80007c78:	0b613423          	sd	s6,168(sp)
    80007c7c:	0b713823          	sd	s7,176(sp)
    80007c80:	0b813c23          	sd	s8,184(sp)
    80007c84:	0d913023          	sd	s9,192(sp)
    80007c88:	0da13423          	sd	s10,200(sp)
    80007c8c:	0db13823          	sd	s11,208(sp)
    80007c90:	0dc13c23          	sd	t3,216(sp)
    80007c94:	0fd13023          	sd	t4,224(sp)
    80007c98:	0fe13423          	sd	t5,232(sp)
    80007c9c:	0ff13823          	sd	t6,240(sp)
    80007ca0:	cd5ff0ef          	jal	ra,80007974 <kerneltrap>
    80007ca4:	00013083          	ld	ra,0(sp)
    80007ca8:	00813103          	ld	sp,8(sp)
    80007cac:	01013183          	ld	gp,16(sp)
    80007cb0:	02013283          	ld	t0,32(sp)
    80007cb4:	02813303          	ld	t1,40(sp)
    80007cb8:	03013383          	ld	t2,48(sp)
    80007cbc:	03813403          	ld	s0,56(sp)
    80007cc0:	04013483          	ld	s1,64(sp)
    80007cc4:	04813503          	ld	a0,72(sp)
    80007cc8:	05013583          	ld	a1,80(sp)
    80007ccc:	05813603          	ld	a2,88(sp)
    80007cd0:	06013683          	ld	a3,96(sp)
    80007cd4:	06813703          	ld	a4,104(sp)
    80007cd8:	07013783          	ld	a5,112(sp)
    80007cdc:	07813803          	ld	a6,120(sp)
    80007ce0:	08013883          	ld	a7,128(sp)
    80007ce4:	08813903          	ld	s2,136(sp)
    80007ce8:	09013983          	ld	s3,144(sp)
    80007cec:	09813a03          	ld	s4,152(sp)
    80007cf0:	0a013a83          	ld	s5,160(sp)
    80007cf4:	0a813b03          	ld	s6,168(sp)
    80007cf8:	0b013b83          	ld	s7,176(sp)
    80007cfc:	0b813c03          	ld	s8,184(sp)
    80007d00:	0c013c83          	ld	s9,192(sp)
    80007d04:	0c813d03          	ld	s10,200(sp)
    80007d08:	0d013d83          	ld	s11,208(sp)
    80007d0c:	0d813e03          	ld	t3,216(sp)
    80007d10:	0e013e83          	ld	t4,224(sp)
    80007d14:	0e813f03          	ld	t5,232(sp)
    80007d18:	0f013f83          	ld	t6,240(sp)
    80007d1c:	10010113          	addi	sp,sp,256
    80007d20:	10200073          	sret
    80007d24:	00000013          	nop
    80007d28:	00000013          	nop
    80007d2c:	00000013          	nop

0000000080007d30 <timervec>:
    80007d30:	34051573          	csrrw	a0,mscratch,a0
    80007d34:	00b53023          	sd	a1,0(a0)
    80007d38:	00c53423          	sd	a2,8(a0)
    80007d3c:	00d53823          	sd	a3,16(a0)
    80007d40:	01853583          	ld	a1,24(a0)
    80007d44:	02053603          	ld	a2,32(a0)
    80007d48:	0005b683          	ld	a3,0(a1)
    80007d4c:	00c686b3          	add	a3,a3,a2
    80007d50:	00d5b023          	sd	a3,0(a1)
    80007d54:	00200593          	li	a1,2
    80007d58:	14459073          	csrw	sip,a1
    80007d5c:	01053683          	ld	a3,16(a0)
    80007d60:	00853603          	ld	a2,8(a0)
    80007d64:	00053583          	ld	a1,0(a0)
    80007d68:	34051573          	csrrw	a0,mscratch,a0
    80007d6c:	30200073          	mret

0000000080007d70 <plicinit>:
    80007d70:	ff010113          	addi	sp,sp,-16
    80007d74:	00813423          	sd	s0,8(sp)
    80007d78:	01010413          	addi	s0,sp,16
    80007d7c:	00813403          	ld	s0,8(sp)
    80007d80:	0c0007b7          	lui	a5,0xc000
    80007d84:	00100713          	li	a4,1
    80007d88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007d8c:	00e7a223          	sw	a4,4(a5)
    80007d90:	01010113          	addi	sp,sp,16
    80007d94:	00008067          	ret

0000000080007d98 <plicinithart>:
    80007d98:	ff010113          	addi	sp,sp,-16
    80007d9c:	00813023          	sd	s0,0(sp)
    80007da0:	00113423          	sd	ra,8(sp)
    80007da4:	01010413          	addi	s0,sp,16
    80007da8:	00000097          	auipc	ra,0x0
    80007dac:	a4c080e7          	jalr	-1460(ra) # 800077f4 <cpuid>
    80007db0:	0085171b          	slliw	a4,a0,0x8
    80007db4:	0c0027b7          	lui	a5,0xc002
    80007db8:	00e787b3          	add	a5,a5,a4
    80007dbc:	40200713          	li	a4,1026
    80007dc0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007dc4:	00813083          	ld	ra,8(sp)
    80007dc8:	00013403          	ld	s0,0(sp)
    80007dcc:	00d5151b          	slliw	a0,a0,0xd
    80007dd0:	0c2017b7          	lui	a5,0xc201
    80007dd4:	00a78533          	add	a0,a5,a0
    80007dd8:	00052023          	sw	zero,0(a0)
    80007ddc:	01010113          	addi	sp,sp,16
    80007de0:	00008067          	ret

0000000080007de4 <plic_claim>:
    80007de4:	ff010113          	addi	sp,sp,-16
    80007de8:	00813023          	sd	s0,0(sp)
    80007dec:	00113423          	sd	ra,8(sp)
    80007df0:	01010413          	addi	s0,sp,16
    80007df4:	00000097          	auipc	ra,0x0
    80007df8:	a00080e7          	jalr	-1536(ra) # 800077f4 <cpuid>
    80007dfc:	00813083          	ld	ra,8(sp)
    80007e00:	00013403          	ld	s0,0(sp)
    80007e04:	00d5151b          	slliw	a0,a0,0xd
    80007e08:	0c2017b7          	lui	a5,0xc201
    80007e0c:	00a78533          	add	a0,a5,a0
    80007e10:	00452503          	lw	a0,4(a0)
    80007e14:	01010113          	addi	sp,sp,16
    80007e18:	00008067          	ret

0000000080007e1c <plic_complete>:
    80007e1c:	fe010113          	addi	sp,sp,-32
    80007e20:	00813823          	sd	s0,16(sp)
    80007e24:	00913423          	sd	s1,8(sp)
    80007e28:	00113c23          	sd	ra,24(sp)
    80007e2c:	02010413          	addi	s0,sp,32
    80007e30:	00050493          	mv	s1,a0
    80007e34:	00000097          	auipc	ra,0x0
    80007e38:	9c0080e7          	jalr	-1600(ra) # 800077f4 <cpuid>
    80007e3c:	01813083          	ld	ra,24(sp)
    80007e40:	01013403          	ld	s0,16(sp)
    80007e44:	00d5179b          	slliw	a5,a0,0xd
    80007e48:	0c201737          	lui	a4,0xc201
    80007e4c:	00f707b3          	add	a5,a4,a5
    80007e50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007e54:	00813483          	ld	s1,8(sp)
    80007e58:	02010113          	addi	sp,sp,32
    80007e5c:	00008067          	ret

0000000080007e60 <consolewrite>:
    80007e60:	fb010113          	addi	sp,sp,-80
    80007e64:	04813023          	sd	s0,64(sp)
    80007e68:	04113423          	sd	ra,72(sp)
    80007e6c:	02913c23          	sd	s1,56(sp)
    80007e70:	03213823          	sd	s2,48(sp)
    80007e74:	03313423          	sd	s3,40(sp)
    80007e78:	03413023          	sd	s4,32(sp)
    80007e7c:	01513c23          	sd	s5,24(sp)
    80007e80:	05010413          	addi	s0,sp,80
    80007e84:	06c05c63          	blez	a2,80007efc <consolewrite+0x9c>
    80007e88:	00060993          	mv	s3,a2
    80007e8c:	00050a13          	mv	s4,a0
    80007e90:	00058493          	mv	s1,a1
    80007e94:	00000913          	li	s2,0
    80007e98:	fff00a93          	li	s5,-1
    80007e9c:	01c0006f          	j	80007eb8 <consolewrite+0x58>
    80007ea0:	fbf44503          	lbu	a0,-65(s0)
    80007ea4:	0019091b          	addiw	s2,s2,1
    80007ea8:	00148493          	addi	s1,s1,1
    80007eac:	00001097          	auipc	ra,0x1
    80007eb0:	a9c080e7          	jalr	-1380(ra) # 80008948 <uartputc>
    80007eb4:	03298063          	beq	s3,s2,80007ed4 <consolewrite+0x74>
    80007eb8:	00048613          	mv	a2,s1
    80007ebc:	00100693          	li	a3,1
    80007ec0:	000a0593          	mv	a1,s4
    80007ec4:	fbf40513          	addi	a0,s0,-65
    80007ec8:	00000097          	auipc	ra,0x0
    80007ecc:	9e4080e7          	jalr	-1564(ra) # 800078ac <either_copyin>
    80007ed0:	fd5518e3          	bne	a0,s5,80007ea0 <consolewrite+0x40>
    80007ed4:	04813083          	ld	ra,72(sp)
    80007ed8:	04013403          	ld	s0,64(sp)
    80007edc:	03813483          	ld	s1,56(sp)
    80007ee0:	02813983          	ld	s3,40(sp)
    80007ee4:	02013a03          	ld	s4,32(sp)
    80007ee8:	01813a83          	ld	s5,24(sp)
    80007eec:	00090513          	mv	a0,s2
    80007ef0:	03013903          	ld	s2,48(sp)
    80007ef4:	05010113          	addi	sp,sp,80
    80007ef8:	00008067          	ret
    80007efc:	00000913          	li	s2,0
    80007f00:	fd5ff06f          	j	80007ed4 <consolewrite+0x74>

0000000080007f04 <consoleread>:
    80007f04:	f9010113          	addi	sp,sp,-112
    80007f08:	06813023          	sd	s0,96(sp)
    80007f0c:	04913c23          	sd	s1,88(sp)
    80007f10:	05213823          	sd	s2,80(sp)
    80007f14:	05313423          	sd	s3,72(sp)
    80007f18:	05413023          	sd	s4,64(sp)
    80007f1c:	03513c23          	sd	s5,56(sp)
    80007f20:	03613823          	sd	s6,48(sp)
    80007f24:	03713423          	sd	s7,40(sp)
    80007f28:	03813023          	sd	s8,32(sp)
    80007f2c:	06113423          	sd	ra,104(sp)
    80007f30:	01913c23          	sd	s9,24(sp)
    80007f34:	07010413          	addi	s0,sp,112
    80007f38:	00060b93          	mv	s7,a2
    80007f3c:	00050913          	mv	s2,a0
    80007f40:	00058c13          	mv	s8,a1
    80007f44:	00060b1b          	sext.w	s6,a2
    80007f48:	00006497          	auipc	s1,0x6
    80007f4c:	18048493          	addi	s1,s1,384 # 8000e0c8 <cons>
    80007f50:	00400993          	li	s3,4
    80007f54:	fff00a13          	li	s4,-1
    80007f58:	00a00a93          	li	s5,10
    80007f5c:	05705e63          	blez	s7,80007fb8 <consoleread+0xb4>
    80007f60:	09c4a703          	lw	a4,156(s1)
    80007f64:	0984a783          	lw	a5,152(s1)
    80007f68:	0007071b          	sext.w	a4,a4
    80007f6c:	08e78463          	beq	a5,a4,80007ff4 <consoleread+0xf0>
    80007f70:	07f7f713          	andi	a4,a5,127
    80007f74:	00e48733          	add	a4,s1,a4
    80007f78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007f7c:	0017869b          	addiw	a3,a5,1
    80007f80:	08d4ac23          	sw	a3,152(s1)
    80007f84:	00070c9b          	sext.w	s9,a4
    80007f88:	0b370663          	beq	a4,s3,80008034 <consoleread+0x130>
    80007f8c:	00100693          	li	a3,1
    80007f90:	f9f40613          	addi	a2,s0,-97
    80007f94:	000c0593          	mv	a1,s8
    80007f98:	00090513          	mv	a0,s2
    80007f9c:	f8e40fa3          	sb	a4,-97(s0)
    80007fa0:	00000097          	auipc	ra,0x0
    80007fa4:	8c0080e7          	jalr	-1856(ra) # 80007860 <either_copyout>
    80007fa8:	01450863          	beq	a0,s4,80007fb8 <consoleread+0xb4>
    80007fac:	001c0c13          	addi	s8,s8,1
    80007fb0:	fffb8b9b          	addiw	s7,s7,-1
    80007fb4:	fb5c94e3          	bne	s9,s5,80007f5c <consoleread+0x58>
    80007fb8:	000b851b          	sext.w	a0,s7
    80007fbc:	06813083          	ld	ra,104(sp)
    80007fc0:	06013403          	ld	s0,96(sp)
    80007fc4:	05813483          	ld	s1,88(sp)
    80007fc8:	05013903          	ld	s2,80(sp)
    80007fcc:	04813983          	ld	s3,72(sp)
    80007fd0:	04013a03          	ld	s4,64(sp)
    80007fd4:	03813a83          	ld	s5,56(sp)
    80007fd8:	02813b83          	ld	s7,40(sp)
    80007fdc:	02013c03          	ld	s8,32(sp)
    80007fe0:	01813c83          	ld	s9,24(sp)
    80007fe4:	40ab053b          	subw	a0,s6,a0
    80007fe8:	03013b03          	ld	s6,48(sp)
    80007fec:	07010113          	addi	sp,sp,112
    80007ff0:	00008067          	ret
    80007ff4:	00001097          	auipc	ra,0x1
    80007ff8:	1d8080e7          	jalr	472(ra) # 800091cc <push_on>
    80007ffc:	0984a703          	lw	a4,152(s1)
    80008000:	09c4a783          	lw	a5,156(s1)
    80008004:	0007879b          	sext.w	a5,a5
    80008008:	fef70ce3          	beq	a4,a5,80008000 <consoleread+0xfc>
    8000800c:	00001097          	auipc	ra,0x1
    80008010:	234080e7          	jalr	564(ra) # 80009240 <pop_on>
    80008014:	0984a783          	lw	a5,152(s1)
    80008018:	07f7f713          	andi	a4,a5,127
    8000801c:	00e48733          	add	a4,s1,a4
    80008020:	01874703          	lbu	a4,24(a4)
    80008024:	0017869b          	addiw	a3,a5,1
    80008028:	08d4ac23          	sw	a3,152(s1)
    8000802c:	00070c9b          	sext.w	s9,a4
    80008030:	f5371ee3          	bne	a4,s3,80007f8c <consoleread+0x88>
    80008034:	000b851b          	sext.w	a0,s7
    80008038:	f96bf2e3          	bgeu	s7,s6,80007fbc <consoleread+0xb8>
    8000803c:	08f4ac23          	sw	a5,152(s1)
    80008040:	f7dff06f          	j	80007fbc <consoleread+0xb8>

0000000080008044 <consputc>:
    80008044:	10000793          	li	a5,256
    80008048:	00f50663          	beq	a0,a5,80008054 <consputc+0x10>
    8000804c:	00001317          	auipc	t1,0x1
    80008050:	9f430067          	jr	-1548(t1) # 80008a40 <uartputc_sync>
    80008054:	ff010113          	addi	sp,sp,-16
    80008058:	00113423          	sd	ra,8(sp)
    8000805c:	00813023          	sd	s0,0(sp)
    80008060:	01010413          	addi	s0,sp,16
    80008064:	00800513          	li	a0,8
    80008068:	00001097          	auipc	ra,0x1
    8000806c:	9d8080e7          	jalr	-1576(ra) # 80008a40 <uartputc_sync>
    80008070:	02000513          	li	a0,32
    80008074:	00001097          	auipc	ra,0x1
    80008078:	9cc080e7          	jalr	-1588(ra) # 80008a40 <uartputc_sync>
    8000807c:	00013403          	ld	s0,0(sp)
    80008080:	00813083          	ld	ra,8(sp)
    80008084:	00800513          	li	a0,8
    80008088:	01010113          	addi	sp,sp,16
    8000808c:	00001317          	auipc	t1,0x1
    80008090:	9b430067          	jr	-1612(t1) # 80008a40 <uartputc_sync>

0000000080008094 <consoleintr>:
    80008094:	fe010113          	addi	sp,sp,-32
    80008098:	00813823          	sd	s0,16(sp)
    8000809c:	00913423          	sd	s1,8(sp)
    800080a0:	01213023          	sd	s2,0(sp)
    800080a4:	00113c23          	sd	ra,24(sp)
    800080a8:	02010413          	addi	s0,sp,32
    800080ac:	00006917          	auipc	s2,0x6
    800080b0:	01c90913          	addi	s2,s2,28 # 8000e0c8 <cons>
    800080b4:	00050493          	mv	s1,a0
    800080b8:	00090513          	mv	a0,s2
    800080bc:	00001097          	auipc	ra,0x1
    800080c0:	e40080e7          	jalr	-448(ra) # 80008efc <acquire>
    800080c4:	02048c63          	beqz	s1,800080fc <consoleintr+0x68>
    800080c8:	0a092783          	lw	a5,160(s2)
    800080cc:	09892703          	lw	a4,152(s2)
    800080d0:	07f00693          	li	a3,127
    800080d4:	40e7873b          	subw	a4,a5,a4
    800080d8:	02e6e263          	bltu	a3,a4,800080fc <consoleintr+0x68>
    800080dc:	00d00713          	li	a4,13
    800080e0:	04e48063          	beq	s1,a4,80008120 <consoleintr+0x8c>
    800080e4:	07f7f713          	andi	a4,a5,127
    800080e8:	00e90733          	add	a4,s2,a4
    800080ec:	0017879b          	addiw	a5,a5,1
    800080f0:	0af92023          	sw	a5,160(s2)
    800080f4:	00970c23          	sb	s1,24(a4)
    800080f8:	08f92e23          	sw	a5,156(s2)
    800080fc:	01013403          	ld	s0,16(sp)
    80008100:	01813083          	ld	ra,24(sp)
    80008104:	00813483          	ld	s1,8(sp)
    80008108:	00013903          	ld	s2,0(sp)
    8000810c:	00006517          	auipc	a0,0x6
    80008110:	fbc50513          	addi	a0,a0,-68 # 8000e0c8 <cons>
    80008114:	02010113          	addi	sp,sp,32
    80008118:	00001317          	auipc	t1,0x1
    8000811c:	eb030067          	jr	-336(t1) # 80008fc8 <release>
    80008120:	00a00493          	li	s1,10
    80008124:	fc1ff06f          	j	800080e4 <consoleintr+0x50>

0000000080008128 <consoleinit>:
    80008128:	fe010113          	addi	sp,sp,-32
    8000812c:	00113c23          	sd	ra,24(sp)
    80008130:	00813823          	sd	s0,16(sp)
    80008134:	00913423          	sd	s1,8(sp)
    80008138:	02010413          	addi	s0,sp,32
    8000813c:	00006497          	auipc	s1,0x6
    80008140:	f8c48493          	addi	s1,s1,-116 # 8000e0c8 <cons>
    80008144:	00048513          	mv	a0,s1
    80008148:	00002597          	auipc	a1,0x2
    8000814c:	61858593          	addi	a1,a1,1560 # 8000a760 <CONSOLE_STATUS+0x750>
    80008150:	00001097          	auipc	ra,0x1
    80008154:	d88080e7          	jalr	-632(ra) # 80008ed8 <initlock>
    80008158:	00000097          	auipc	ra,0x0
    8000815c:	7ac080e7          	jalr	1964(ra) # 80008904 <uartinit>
    80008160:	01813083          	ld	ra,24(sp)
    80008164:	01013403          	ld	s0,16(sp)
    80008168:	00000797          	auipc	a5,0x0
    8000816c:	d9c78793          	addi	a5,a5,-612 # 80007f04 <consoleread>
    80008170:	0af4bc23          	sd	a5,184(s1)
    80008174:	00000797          	auipc	a5,0x0
    80008178:	cec78793          	addi	a5,a5,-788 # 80007e60 <consolewrite>
    8000817c:	0cf4b023          	sd	a5,192(s1)
    80008180:	00813483          	ld	s1,8(sp)
    80008184:	02010113          	addi	sp,sp,32
    80008188:	00008067          	ret

000000008000818c <console_read>:
    8000818c:	ff010113          	addi	sp,sp,-16
    80008190:	00813423          	sd	s0,8(sp)
    80008194:	01010413          	addi	s0,sp,16
    80008198:	00813403          	ld	s0,8(sp)
    8000819c:	00006317          	auipc	t1,0x6
    800081a0:	fe433303          	ld	t1,-28(t1) # 8000e180 <devsw+0x10>
    800081a4:	01010113          	addi	sp,sp,16
    800081a8:	00030067          	jr	t1

00000000800081ac <console_write>:
    800081ac:	ff010113          	addi	sp,sp,-16
    800081b0:	00813423          	sd	s0,8(sp)
    800081b4:	01010413          	addi	s0,sp,16
    800081b8:	00813403          	ld	s0,8(sp)
    800081bc:	00006317          	auipc	t1,0x6
    800081c0:	fcc33303          	ld	t1,-52(t1) # 8000e188 <devsw+0x18>
    800081c4:	01010113          	addi	sp,sp,16
    800081c8:	00030067          	jr	t1

00000000800081cc <panic>:
    800081cc:	fe010113          	addi	sp,sp,-32
    800081d0:	00113c23          	sd	ra,24(sp)
    800081d4:	00813823          	sd	s0,16(sp)
    800081d8:	00913423          	sd	s1,8(sp)
    800081dc:	02010413          	addi	s0,sp,32
    800081e0:	00050493          	mv	s1,a0
    800081e4:	00002517          	auipc	a0,0x2
    800081e8:	58450513          	addi	a0,a0,1412 # 8000a768 <CONSOLE_STATUS+0x758>
    800081ec:	00006797          	auipc	a5,0x6
    800081f0:	0207ae23          	sw	zero,60(a5) # 8000e228 <pr+0x18>
    800081f4:	00000097          	auipc	ra,0x0
    800081f8:	034080e7          	jalr	52(ra) # 80008228 <__printf>
    800081fc:	00048513          	mv	a0,s1
    80008200:	00000097          	auipc	ra,0x0
    80008204:	028080e7          	jalr	40(ra) # 80008228 <__printf>
    80008208:	00002517          	auipc	a0,0x2
    8000820c:	2d050513          	addi	a0,a0,720 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80008210:	00000097          	auipc	ra,0x0
    80008214:	018080e7          	jalr	24(ra) # 80008228 <__printf>
    80008218:	00100793          	li	a5,1
    8000821c:	00005717          	auipc	a4,0x5
    80008220:	aaf72623          	sw	a5,-1364(a4) # 8000ccc8 <panicked>
    80008224:	0000006f          	j	80008224 <panic+0x58>

0000000080008228 <__printf>:
    80008228:	f3010113          	addi	sp,sp,-208
    8000822c:	08813023          	sd	s0,128(sp)
    80008230:	07313423          	sd	s3,104(sp)
    80008234:	09010413          	addi	s0,sp,144
    80008238:	05813023          	sd	s8,64(sp)
    8000823c:	08113423          	sd	ra,136(sp)
    80008240:	06913c23          	sd	s1,120(sp)
    80008244:	07213823          	sd	s2,112(sp)
    80008248:	07413023          	sd	s4,96(sp)
    8000824c:	05513c23          	sd	s5,88(sp)
    80008250:	05613823          	sd	s6,80(sp)
    80008254:	05713423          	sd	s7,72(sp)
    80008258:	03913c23          	sd	s9,56(sp)
    8000825c:	03a13823          	sd	s10,48(sp)
    80008260:	03b13423          	sd	s11,40(sp)
    80008264:	00006317          	auipc	t1,0x6
    80008268:	fac30313          	addi	t1,t1,-84 # 8000e210 <pr>
    8000826c:	01832c03          	lw	s8,24(t1)
    80008270:	00b43423          	sd	a1,8(s0)
    80008274:	00c43823          	sd	a2,16(s0)
    80008278:	00d43c23          	sd	a3,24(s0)
    8000827c:	02e43023          	sd	a4,32(s0)
    80008280:	02f43423          	sd	a5,40(s0)
    80008284:	03043823          	sd	a6,48(s0)
    80008288:	03143c23          	sd	a7,56(s0)
    8000828c:	00050993          	mv	s3,a0
    80008290:	4a0c1663          	bnez	s8,8000873c <__printf+0x514>
    80008294:	60098c63          	beqz	s3,800088ac <__printf+0x684>
    80008298:	0009c503          	lbu	a0,0(s3)
    8000829c:	00840793          	addi	a5,s0,8
    800082a0:	f6f43c23          	sd	a5,-136(s0)
    800082a4:	00000493          	li	s1,0
    800082a8:	22050063          	beqz	a0,800084c8 <__printf+0x2a0>
    800082ac:	00002a37          	lui	s4,0x2
    800082b0:	00018ab7          	lui	s5,0x18
    800082b4:	000f4b37          	lui	s6,0xf4
    800082b8:	00989bb7          	lui	s7,0x989
    800082bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800082c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800082c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800082c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800082cc:	00148c9b          	addiw	s9,s1,1
    800082d0:	02500793          	li	a5,37
    800082d4:	01998933          	add	s2,s3,s9
    800082d8:	38f51263          	bne	a0,a5,8000865c <__printf+0x434>
    800082dc:	00094783          	lbu	a5,0(s2)
    800082e0:	00078c9b          	sext.w	s9,a5
    800082e4:	1e078263          	beqz	a5,800084c8 <__printf+0x2a0>
    800082e8:	0024849b          	addiw	s1,s1,2
    800082ec:	07000713          	li	a4,112
    800082f0:	00998933          	add	s2,s3,s1
    800082f4:	38e78a63          	beq	a5,a4,80008688 <__printf+0x460>
    800082f8:	20f76863          	bltu	a4,a5,80008508 <__printf+0x2e0>
    800082fc:	42a78863          	beq	a5,a0,8000872c <__printf+0x504>
    80008300:	06400713          	li	a4,100
    80008304:	40e79663          	bne	a5,a4,80008710 <__printf+0x4e8>
    80008308:	f7843783          	ld	a5,-136(s0)
    8000830c:	0007a603          	lw	a2,0(a5)
    80008310:	00878793          	addi	a5,a5,8
    80008314:	f6f43c23          	sd	a5,-136(s0)
    80008318:	42064a63          	bltz	a2,8000874c <__printf+0x524>
    8000831c:	00a00713          	li	a4,10
    80008320:	02e677bb          	remuw	a5,a2,a4
    80008324:	00002d97          	auipc	s11,0x2
    80008328:	46cd8d93          	addi	s11,s11,1132 # 8000a790 <digits>
    8000832c:	00900593          	li	a1,9
    80008330:	0006051b          	sext.w	a0,a2
    80008334:	00000c93          	li	s9,0
    80008338:	02079793          	slli	a5,a5,0x20
    8000833c:	0207d793          	srli	a5,a5,0x20
    80008340:	00fd87b3          	add	a5,s11,a5
    80008344:	0007c783          	lbu	a5,0(a5)
    80008348:	02e656bb          	divuw	a3,a2,a4
    8000834c:	f8f40023          	sb	a5,-128(s0)
    80008350:	14c5d863          	bge	a1,a2,800084a0 <__printf+0x278>
    80008354:	06300593          	li	a1,99
    80008358:	00100c93          	li	s9,1
    8000835c:	02e6f7bb          	remuw	a5,a3,a4
    80008360:	02079793          	slli	a5,a5,0x20
    80008364:	0207d793          	srli	a5,a5,0x20
    80008368:	00fd87b3          	add	a5,s11,a5
    8000836c:	0007c783          	lbu	a5,0(a5)
    80008370:	02e6d73b          	divuw	a4,a3,a4
    80008374:	f8f400a3          	sb	a5,-127(s0)
    80008378:	12a5f463          	bgeu	a1,a0,800084a0 <__printf+0x278>
    8000837c:	00a00693          	li	a3,10
    80008380:	00900593          	li	a1,9
    80008384:	02d777bb          	remuw	a5,a4,a3
    80008388:	02079793          	slli	a5,a5,0x20
    8000838c:	0207d793          	srli	a5,a5,0x20
    80008390:	00fd87b3          	add	a5,s11,a5
    80008394:	0007c503          	lbu	a0,0(a5)
    80008398:	02d757bb          	divuw	a5,a4,a3
    8000839c:	f8a40123          	sb	a0,-126(s0)
    800083a0:	48e5f263          	bgeu	a1,a4,80008824 <__printf+0x5fc>
    800083a4:	06300513          	li	a0,99
    800083a8:	02d7f5bb          	remuw	a1,a5,a3
    800083ac:	02059593          	slli	a1,a1,0x20
    800083b0:	0205d593          	srli	a1,a1,0x20
    800083b4:	00bd85b3          	add	a1,s11,a1
    800083b8:	0005c583          	lbu	a1,0(a1)
    800083bc:	02d7d7bb          	divuw	a5,a5,a3
    800083c0:	f8b401a3          	sb	a1,-125(s0)
    800083c4:	48e57263          	bgeu	a0,a4,80008848 <__printf+0x620>
    800083c8:	3e700513          	li	a0,999
    800083cc:	02d7f5bb          	remuw	a1,a5,a3
    800083d0:	02059593          	slli	a1,a1,0x20
    800083d4:	0205d593          	srli	a1,a1,0x20
    800083d8:	00bd85b3          	add	a1,s11,a1
    800083dc:	0005c583          	lbu	a1,0(a1)
    800083e0:	02d7d7bb          	divuw	a5,a5,a3
    800083e4:	f8b40223          	sb	a1,-124(s0)
    800083e8:	46e57663          	bgeu	a0,a4,80008854 <__printf+0x62c>
    800083ec:	02d7f5bb          	remuw	a1,a5,a3
    800083f0:	02059593          	slli	a1,a1,0x20
    800083f4:	0205d593          	srli	a1,a1,0x20
    800083f8:	00bd85b3          	add	a1,s11,a1
    800083fc:	0005c583          	lbu	a1,0(a1)
    80008400:	02d7d7bb          	divuw	a5,a5,a3
    80008404:	f8b402a3          	sb	a1,-123(s0)
    80008408:	46ea7863          	bgeu	s4,a4,80008878 <__printf+0x650>
    8000840c:	02d7f5bb          	remuw	a1,a5,a3
    80008410:	02059593          	slli	a1,a1,0x20
    80008414:	0205d593          	srli	a1,a1,0x20
    80008418:	00bd85b3          	add	a1,s11,a1
    8000841c:	0005c583          	lbu	a1,0(a1)
    80008420:	02d7d7bb          	divuw	a5,a5,a3
    80008424:	f8b40323          	sb	a1,-122(s0)
    80008428:	3eeaf863          	bgeu	s5,a4,80008818 <__printf+0x5f0>
    8000842c:	02d7f5bb          	remuw	a1,a5,a3
    80008430:	02059593          	slli	a1,a1,0x20
    80008434:	0205d593          	srli	a1,a1,0x20
    80008438:	00bd85b3          	add	a1,s11,a1
    8000843c:	0005c583          	lbu	a1,0(a1)
    80008440:	02d7d7bb          	divuw	a5,a5,a3
    80008444:	f8b403a3          	sb	a1,-121(s0)
    80008448:	42eb7e63          	bgeu	s6,a4,80008884 <__printf+0x65c>
    8000844c:	02d7f5bb          	remuw	a1,a5,a3
    80008450:	02059593          	slli	a1,a1,0x20
    80008454:	0205d593          	srli	a1,a1,0x20
    80008458:	00bd85b3          	add	a1,s11,a1
    8000845c:	0005c583          	lbu	a1,0(a1)
    80008460:	02d7d7bb          	divuw	a5,a5,a3
    80008464:	f8b40423          	sb	a1,-120(s0)
    80008468:	42ebfc63          	bgeu	s7,a4,800088a0 <__printf+0x678>
    8000846c:	02079793          	slli	a5,a5,0x20
    80008470:	0207d793          	srli	a5,a5,0x20
    80008474:	00fd8db3          	add	s11,s11,a5
    80008478:	000dc703          	lbu	a4,0(s11)
    8000847c:	00a00793          	li	a5,10
    80008480:	00900c93          	li	s9,9
    80008484:	f8e404a3          	sb	a4,-119(s0)
    80008488:	00065c63          	bgez	a2,800084a0 <__printf+0x278>
    8000848c:	f9040713          	addi	a4,s0,-112
    80008490:	00f70733          	add	a4,a4,a5
    80008494:	02d00693          	li	a3,45
    80008498:	fed70823          	sb	a3,-16(a4)
    8000849c:	00078c93          	mv	s9,a5
    800084a0:	f8040793          	addi	a5,s0,-128
    800084a4:	01978cb3          	add	s9,a5,s9
    800084a8:	f7f40d13          	addi	s10,s0,-129
    800084ac:	000cc503          	lbu	a0,0(s9)
    800084b0:	fffc8c93          	addi	s9,s9,-1
    800084b4:	00000097          	auipc	ra,0x0
    800084b8:	b90080e7          	jalr	-1136(ra) # 80008044 <consputc>
    800084bc:	ffac98e3          	bne	s9,s10,800084ac <__printf+0x284>
    800084c0:	00094503          	lbu	a0,0(s2)
    800084c4:	e00514e3          	bnez	a0,800082cc <__printf+0xa4>
    800084c8:	1a0c1663          	bnez	s8,80008674 <__printf+0x44c>
    800084cc:	08813083          	ld	ra,136(sp)
    800084d0:	08013403          	ld	s0,128(sp)
    800084d4:	07813483          	ld	s1,120(sp)
    800084d8:	07013903          	ld	s2,112(sp)
    800084dc:	06813983          	ld	s3,104(sp)
    800084e0:	06013a03          	ld	s4,96(sp)
    800084e4:	05813a83          	ld	s5,88(sp)
    800084e8:	05013b03          	ld	s6,80(sp)
    800084ec:	04813b83          	ld	s7,72(sp)
    800084f0:	04013c03          	ld	s8,64(sp)
    800084f4:	03813c83          	ld	s9,56(sp)
    800084f8:	03013d03          	ld	s10,48(sp)
    800084fc:	02813d83          	ld	s11,40(sp)
    80008500:	0d010113          	addi	sp,sp,208
    80008504:	00008067          	ret
    80008508:	07300713          	li	a4,115
    8000850c:	1ce78a63          	beq	a5,a4,800086e0 <__printf+0x4b8>
    80008510:	07800713          	li	a4,120
    80008514:	1ee79e63          	bne	a5,a4,80008710 <__printf+0x4e8>
    80008518:	f7843783          	ld	a5,-136(s0)
    8000851c:	0007a703          	lw	a4,0(a5)
    80008520:	00878793          	addi	a5,a5,8
    80008524:	f6f43c23          	sd	a5,-136(s0)
    80008528:	28074263          	bltz	a4,800087ac <__printf+0x584>
    8000852c:	00002d97          	auipc	s11,0x2
    80008530:	264d8d93          	addi	s11,s11,612 # 8000a790 <digits>
    80008534:	00f77793          	andi	a5,a4,15
    80008538:	00fd87b3          	add	a5,s11,a5
    8000853c:	0007c683          	lbu	a3,0(a5)
    80008540:	00f00613          	li	a2,15
    80008544:	0007079b          	sext.w	a5,a4
    80008548:	f8d40023          	sb	a3,-128(s0)
    8000854c:	0047559b          	srliw	a1,a4,0x4
    80008550:	0047569b          	srliw	a3,a4,0x4
    80008554:	00000c93          	li	s9,0
    80008558:	0ee65063          	bge	a2,a4,80008638 <__printf+0x410>
    8000855c:	00f6f693          	andi	a3,a3,15
    80008560:	00dd86b3          	add	a3,s11,a3
    80008564:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008568:	0087d79b          	srliw	a5,a5,0x8
    8000856c:	00100c93          	li	s9,1
    80008570:	f8d400a3          	sb	a3,-127(s0)
    80008574:	0cb67263          	bgeu	a2,a1,80008638 <__printf+0x410>
    80008578:	00f7f693          	andi	a3,a5,15
    8000857c:	00dd86b3          	add	a3,s11,a3
    80008580:	0006c583          	lbu	a1,0(a3)
    80008584:	00f00613          	li	a2,15
    80008588:	0047d69b          	srliw	a3,a5,0x4
    8000858c:	f8b40123          	sb	a1,-126(s0)
    80008590:	0047d593          	srli	a1,a5,0x4
    80008594:	28f67e63          	bgeu	a2,a5,80008830 <__printf+0x608>
    80008598:	00f6f693          	andi	a3,a3,15
    8000859c:	00dd86b3          	add	a3,s11,a3
    800085a0:	0006c503          	lbu	a0,0(a3)
    800085a4:	0087d813          	srli	a6,a5,0x8
    800085a8:	0087d69b          	srliw	a3,a5,0x8
    800085ac:	f8a401a3          	sb	a0,-125(s0)
    800085b0:	28b67663          	bgeu	a2,a1,8000883c <__printf+0x614>
    800085b4:	00f6f693          	andi	a3,a3,15
    800085b8:	00dd86b3          	add	a3,s11,a3
    800085bc:	0006c583          	lbu	a1,0(a3)
    800085c0:	00c7d513          	srli	a0,a5,0xc
    800085c4:	00c7d69b          	srliw	a3,a5,0xc
    800085c8:	f8b40223          	sb	a1,-124(s0)
    800085cc:	29067a63          	bgeu	a2,a6,80008860 <__printf+0x638>
    800085d0:	00f6f693          	andi	a3,a3,15
    800085d4:	00dd86b3          	add	a3,s11,a3
    800085d8:	0006c583          	lbu	a1,0(a3)
    800085dc:	0107d813          	srli	a6,a5,0x10
    800085e0:	0107d69b          	srliw	a3,a5,0x10
    800085e4:	f8b402a3          	sb	a1,-123(s0)
    800085e8:	28a67263          	bgeu	a2,a0,8000886c <__printf+0x644>
    800085ec:	00f6f693          	andi	a3,a3,15
    800085f0:	00dd86b3          	add	a3,s11,a3
    800085f4:	0006c683          	lbu	a3,0(a3)
    800085f8:	0147d79b          	srliw	a5,a5,0x14
    800085fc:	f8d40323          	sb	a3,-122(s0)
    80008600:	21067663          	bgeu	a2,a6,8000880c <__printf+0x5e4>
    80008604:	02079793          	slli	a5,a5,0x20
    80008608:	0207d793          	srli	a5,a5,0x20
    8000860c:	00fd8db3          	add	s11,s11,a5
    80008610:	000dc683          	lbu	a3,0(s11)
    80008614:	00800793          	li	a5,8
    80008618:	00700c93          	li	s9,7
    8000861c:	f8d403a3          	sb	a3,-121(s0)
    80008620:	00075c63          	bgez	a4,80008638 <__printf+0x410>
    80008624:	f9040713          	addi	a4,s0,-112
    80008628:	00f70733          	add	a4,a4,a5
    8000862c:	02d00693          	li	a3,45
    80008630:	fed70823          	sb	a3,-16(a4)
    80008634:	00078c93          	mv	s9,a5
    80008638:	f8040793          	addi	a5,s0,-128
    8000863c:	01978cb3          	add	s9,a5,s9
    80008640:	f7f40d13          	addi	s10,s0,-129
    80008644:	000cc503          	lbu	a0,0(s9)
    80008648:	fffc8c93          	addi	s9,s9,-1
    8000864c:	00000097          	auipc	ra,0x0
    80008650:	9f8080e7          	jalr	-1544(ra) # 80008044 <consputc>
    80008654:	ff9d18e3          	bne	s10,s9,80008644 <__printf+0x41c>
    80008658:	0100006f          	j	80008668 <__printf+0x440>
    8000865c:	00000097          	auipc	ra,0x0
    80008660:	9e8080e7          	jalr	-1560(ra) # 80008044 <consputc>
    80008664:	000c8493          	mv	s1,s9
    80008668:	00094503          	lbu	a0,0(s2)
    8000866c:	c60510e3          	bnez	a0,800082cc <__printf+0xa4>
    80008670:	e40c0ee3          	beqz	s8,800084cc <__printf+0x2a4>
    80008674:	00006517          	auipc	a0,0x6
    80008678:	b9c50513          	addi	a0,a0,-1124 # 8000e210 <pr>
    8000867c:	00001097          	auipc	ra,0x1
    80008680:	94c080e7          	jalr	-1716(ra) # 80008fc8 <release>
    80008684:	e49ff06f          	j	800084cc <__printf+0x2a4>
    80008688:	f7843783          	ld	a5,-136(s0)
    8000868c:	03000513          	li	a0,48
    80008690:	01000d13          	li	s10,16
    80008694:	00878713          	addi	a4,a5,8
    80008698:	0007bc83          	ld	s9,0(a5)
    8000869c:	f6e43c23          	sd	a4,-136(s0)
    800086a0:	00000097          	auipc	ra,0x0
    800086a4:	9a4080e7          	jalr	-1628(ra) # 80008044 <consputc>
    800086a8:	07800513          	li	a0,120
    800086ac:	00000097          	auipc	ra,0x0
    800086b0:	998080e7          	jalr	-1640(ra) # 80008044 <consputc>
    800086b4:	00002d97          	auipc	s11,0x2
    800086b8:	0dcd8d93          	addi	s11,s11,220 # 8000a790 <digits>
    800086bc:	03ccd793          	srli	a5,s9,0x3c
    800086c0:	00fd87b3          	add	a5,s11,a5
    800086c4:	0007c503          	lbu	a0,0(a5)
    800086c8:	fffd0d1b          	addiw	s10,s10,-1
    800086cc:	004c9c93          	slli	s9,s9,0x4
    800086d0:	00000097          	auipc	ra,0x0
    800086d4:	974080e7          	jalr	-1676(ra) # 80008044 <consputc>
    800086d8:	fe0d12e3          	bnez	s10,800086bc <__printf+0x494>
    800086dc:	f8dff06f          	j	80008668 <__printf+0x440>
    800086e0:	f7843783          	ld	a5,-136(s0)
    800086e4:	0007bc83          	ld	s9,0(a5)
    800086e8:	00878793          	addi	a5,a5,8
    800086ec:	f6f43c23          	sd	a5,-136(s0)
    800086f0:	000c9a63          	bnez	s9,80008704 <__printf+0x4dc>
    800086f4:	1080006f          	j	800087fc <__printf+0x5d4>
    800086f8:	001c8c93          	addi	s9,s9,1
    800086fc:	00000097          	auipc	ra,0x0
    80008700:	948080e7          	jalr	-1720(ra) # 80008044 <consputc>
    80008704:	000cc503          	lbu	a0,0(s9)
    80008708:	fe0518e3          	bnez	a0,800086f8 <__printf+0x4d0>
    8000870c:	f5dff06f          	j	80008668 <__printf+0x440>
    80008710:	02500513          	li	a0,37
    80008714:	00000097          	auipc	ra,0x0
    80008718:	930080e7          	jalr	-1744(ra) # 80008044 <consputc>
    8000871c:	000c8513          	mv	a0,s9
    80008720:	00000097          	auipc	ra,0x0
    80008724:	924080e7          	jalr	-1756(ra) # 80008044 <consputc>
    80008728:	f41ff06f          	j	80008668 <__printf+0x440>
    8000872c:	02500513          	li	a0,37
    80008730:	00000097          	auipc	ra,0x0
    80008734:	914080e7          	jalr	-1772(ra) # 80008044 <consputc>
    80008738:	f31ff06f          	j	80008668 <__printf+0x440>
    8000873c:	00030513          	mv	a0,t1
    80008740:	00000097          	auipc	ra,0x0
    80008744:	7bc080e7          	jalr	1980(ra) # 80008efc <acquire>
    80008748:	b4dff06f          	j	80008294 <__printf+0x6c>
    8000874c:	40c0053b          	negw	a0,a2
    80008750:	00a00713          	li	a4,10
    80008754:	02e576bb          	remuw	a3,a0,a4
    80008758:	00002d97          	auipc	s11,0x2
    8000875c:	038d8d93          	addi	s11,s11,56 # 8000a790 <digits>
    80008760:	ff700593          	li	a1,-9
    80008764:	02069693          	slli	a3,a3,0x20
    80008768:	0206d693          	srli	a3,a3,0x20
    8000876c:	00dd86b3          	add	a3,s11,a3
    80008770:	0006c683          	lbu	a3,0(a3)
    80008774:	02e557bb          	divuw	a5,a0,a4
    80008778:	f8d40023          	sb	a3,-128(s0)
    8000877c:	10b65e63          	bge	a2,a1,80008898 <__printf+0x670>
    80008780:	06300593          	li	a1,99
    80008784:	02e7f6bb          	remuw	a3,a5,a4
    80008788:	02069693          	slli	a3,a3,0x20
    8000878c:	0206d693          	srli	a3,a3,0x20
    80008790:	00dd86b3          	add	a3,s11,a3
    80008794:	0006c683          	lbu	a3,0(a3)
    80008798:	02e7d73b          	divuw	a4,a5,a4
    8000879c:	00200793          	li	a5,2
    800087a0:	f8d400a3          	sb	a3,-127(s0)
    800087a4:	bca5ece3          	bltu	a1,a0,8000837c <__printf+0x154>
    800087a8:	ce5ff06f          	j	8000848c <__printf+0x264>
    800087ac:	40e007bb          	negw	a5,a4
    800087b0:	00002d97          	auipc	s11,0x2
    800087b4:	fe0d8d93          	addi	s11,s11,-32 # 8000a790 <digits>
    800087b8:	00f7f693          	andi	a3,a5,15
    800087bc:	00dd86b3          	add	a3,s11,a3
    800087c0:	0006c583          	lbu	a1,0(a3)
    800087c4:	ff100613          	li	a2,-15
    800087c8:	0047d69b          	srliw	a3,a5,0x4
    800087cc:	f8b40023          	sb	a1,-128(s0)
    800087d0:	0047d59b          	srliw	a1,a5,0x4
    800087d4:	0ac75e63          	bge	a4,a2,80008890 <__printf+0x668>
    800087d8:	00f6f693          	andi	a3,a3,15
    800087dc:	00dd86b3          	add	a3,s11,a3
    800087e0:	0006c603          	lbu	a2,0(a3)
    800087e4:	00f00693          	li	a3,15
    800087e8:	0087d79b          	srliw	a5,a5,0x8
    800087ec:	f8c400a3          	sb	a2,-127(s0)
    800087f0:	d8b6e4e3          	bltu	a3,a1,80008578 <__printf+0x350>
    800087f4:	00200793          	li	a5,2
    800087f8:	e2dff06f          	j	80008624 <__printf+0x3fc>
    800087fc:	00002c97          	auipc	s9,0x2
    80008800:	f74c8c93          	addi	s9,s9,-140 # 8000a770 <CONSOLE_STATUS+0x760>
    80008804:	02800513          	li	a0,40
    80008808:	ef1ff06f          	j	800086f8 <__printf+0x4d0>
    8000880c:	00700793          	li	a5,7
    80008810:	00600c93          	li	s9,6
    80008814:	e0dff06f          	j	80008620 <__printf+0x3f8>
    80008818:	00700793          	li	a5,7
    8000881c:	00600c93          	li	s9,6
    80008820:	c69ff06f          	j	80008488 <__printf+0x260>
    80008824:	00300793          	li	a5,3
    80008828:	00200c93          	li	s9,2
    8000882c:	c5dff06f          	j	80008488 <__printf+0x260>
    80008830:	00300793          	li	a5,3
    80008834:	00200c93          	li	s9,2
    80008838:	de9ff06f          	j	80008620 <__printf+0x3f8>
    8000883c:	00400793          	li	a5,4
    80008840:	00300c93          	li	s9,3
    80008844:	dddff06f          	j	80008620 <__printf+0x3f8>
    80008848:	00400793          	li	a5,4
    8000884c:	00300c93          	li	s9,3
    80008850:	c39ff06f          	j	80008488 <__printf+0x260>
    80008854:	00500793          	li	a5,5
    80008858:	00400c93          	li	s9,4
    8000885c:	c2dff06f          	j	80008488 <__printf+0x260>
    80008860:	00500793          	li	a5,5
    80008864:	00400c93          	li	s9,4
    80008868:	db9ff06f          	j	80008620 <__printf+0x3f8>
    8000886c:	00600793          	li	a5,6
    80008870:	00500c93          	li	s9,5
    80008874:	dadff06f          	j	80008620 <__printf+0x3f8>
    80008878:	00600793          	li	a5,6
    8000887c:	00500c93          	li	s9,5
    80008880:	c09ff06f          	j	80008488 <__printf+0x260>
    80008884:	00800793          	li	a5,8
    80008888:	00700c93          	li	s9,7
    8000888c:	bfdff06f          	j	80008488 <__printf+0x260>
    80008890:	00100793          	li	a5,1
    80008894:	d91ff06f          	j	80008624 <__printf+0x3fc>
    80008898:	00100793          	li	a5,1
    8000889c:	bf1ff06f          	j	8000848c <__printf+0x264>
    800088a0:	00900793          	li	a5,9
    800088a4:	00800c93          	li	s9,8
    800088a8:	be1ff06f          	j	80008488 <__printf+0x260>
    800088ac:	00002517          	auipc	a0,0x2
    800088b0:	ecc50513          	addi	a0,a0,-308 # 8000a778 <CONSOLE_STATUS+0x768>
    800088b4:	00000097          	auipc	ra,0x0
    800088b8:	918080e7          	jalr	-1768(ra) # 800081cc <panic>

00000000800088bc <printfinit>:
    800088bc:	fe010113          	addi	sp,sp,-32
    800088c0:	00813823          	sd	s0,16(sp)
    800088c4:	00913423          	sd	s1,8(sp)
    800088c8:	00113c23          	sd	ra,24(sp)
    800088cc:	02010413          	addi	s0,sp,32
    800088d0:	00006497          	auipc	s1,0x6
    800088d4:	94048493          	addi	s1,s1,-1728 # 8000e210 <pr>
    800088d8:	00048513          	mv	a0,s1
    800088dc:	00002597          	auipc	a1,0x2
    800088e0:	eac58593          	addi	a1,a1,-340 # 8000a788 <CONSOLE_STATUS+0x778>
    800088e4:	00000097          	auipc	ra,0x0
    800088e8:	5f4080e7          	jalr	1524(ra) # 80008ed8 <initlock>
    800088ec:	01813083          	ld	ra,24(sp)
    800088f0:	01013403          	ld	s0,16(sp)
    800088f4:	0004ac23          	sw	zero,24(s1)
    800088f8:	00813483          	ld	s1,8(sp)
    800088fc:	02010113          	addi	sp,sp,32
    80008900:	00008067          	ret

0000000080008904 <uartinit>:
    80008904:	ff010113          	addi	sp,sp,-16
    80008908:	00813423          	sd	s0,8(sp)
    8000890c:	01010413          	addi	s0,sp,16
    80008910:	100007b7          	lui	a5,0x10000
    80008914:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008918:	f8000713          	li	a4,-128
    8000891c:	00e781a3          	sb	a4,3(a5)
    80008920:	00300713          	li	a4,3
    80008924:	00e78023          	sb	a4,0(a5)
    80008928:	000780a3          	sb	zero,1(a5)
    8000892c:	00e781a3          	sb	a4,3(a5)
    80008930:	00700693          	li	a3,7
    80008934:	00d78123          	sb	a3,2(a5)
    80008938:	00e780a3          	sb	a4,1(a5)
    8000893c:	00813403          	ld	s0,8(sp)
    80008940:	01010113          	addi	sp,sp,16
    80008944:	00008067          	ret

0000000080008948 <uartputc>:
    80008948:	00004797          	auipc	a5,0x4
    8000894c:	3807a783          	lw	a5,896(a5) # 8000ccc8 <panicked>
    80008950:	00078463          	beqz	a5,80008958 <uartputc+0x10>
    80008954:	0000006f          	j	80008954 <uartputc+0xc>
    80008958:	fd010113          	addi	sp,sp,-48
    8000895c:	02813023          	sd	s0,32(sp)
    80008960:	00913c23          	sd	s1,24(sp)
    80008964:	01213823          	sd	s2,16(sp)
    80008968:	01313423          	sd	s3,8(sp)
    8000896c:	02113423          	sd	ra,40(sp)
    80008970:	03010413          	addi	s0,sp,48
    80008974:	00004917          	auipc	s2,0x4
    80008978:	35c90913          	addi	s2,s2,860 # 8000ccd0 <uart_tx_r>
    8000897c:	00093783          	ld	a5,0(s2)
    80008980:	00004497          	auipc	s1,0x4
    80008984:	35848493          	addi	s1,s1,856 # 8000ccd8 <uart_tx_w>
    80008988:	0004b703          	ld	a4,0(s1)
    8000898c:	02078693          	addi	a3,a5,32
    80008990:	00050993          	mv	s3,a0
    80008994:	02e69c63          	bne	a3,a4,800089cc <uartputc+0x84>
    80008998:	00001097          	auipc	ra,0x1
    8000899c:	834080e7          	jalr	-1996(ra) # 800091cc <push_on>
    800089a0:	00093783          	ld	a5,0(s2)
    800089a4:	0004b703          	ld	a4,0(s1)
    800089a8:	02078793          	addi	a5,a5,32
    800089ac:	00e79463          	bne	a5,a4,800089b4 <uartputc+0x6c>
    800089b0:	0000006f          	j	800089b0 <uartputc+0x68>
    800089b4:	00001097          	auipc	ra,0x1
    800089b8:	88c080e7          	jalr	-1908(ra) # 80009240 <pop_on>
    800089bc:	00093783          	ld	a5,0(s2)
    800089c0:	0004b703          	ld	a4,0(s1)
    800089c4:	02078693          	addi	a3,a5,32
    800089c8:	fce688e3          	beq	a3,a4,80008998 <uartputc+0x50>
    800089cc:	01f77693          	andi	a3,a4,31
    800089d0:	00006597          	auipc	a1,0x6
    800089d4:	86058593          	addi	a1,a1,-1952 # 8000e230 <uart_tx_buf>
    800089d8:	00d586b3          	add	a3,a1,a3
    800089dc:	00170713          	addi	a4,a4,1
    800089e0:	01368023          	sb	s3,0(a3)
    800089e4:	00e4b023          	sd	a4,0(s1)
    800089e8:	10000637          	lui	a2,0x10000
    800089ec:	02f71063          	bne	a4,a5,80008a0c <uartputc+0xc4>
    800089f0:	0340006f          	j	80008a24 <uartputc+0xdc>
    800089f4:	00074703          	lbu	a4,0(a4)
    800089f8:	00f93023          	sd	a5,0(s2)
    800089fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008a00:	00093783          	ld	a5,0(s2)
    80008a04:	0004b703          	ld	a4,0(s1)
    80008a08:	00f70e63          	beq	a4,a5,80008a24 <uartputc+0xdc>
    80008a0c:	00564683          	lbu	a3,5(a2)
    80008a10:	01f7f713          	andi	a4,a5,31
    80008a14:	00e58733          	add	a4,a1,a4
    80008a18:	0206f693          	andi	a3,a3,32
    80008a1c:	00178793          	addi	a5,a5,1
    80008a20:	fc069ae3          	bnez	a3,800089f4 <uartputc+0xac>
    80008a24:	02813083          	ld	ra,40(sp)
    80008a28:	02013403          	ld	s0,32(sp)
    80008a2c:	01813483          	ld	s1,24(sp)
    80008a30:	01013903          	ld	s2,16(sp)
    80008a34:	00813983          	ld	s3,8(sp)
    80008a38:	03010113          	addi	sp,sp,48
    80008a3c:	00008067          	ret

0000000080008a40 <uartputc_sync>:
    80008a40:	ff010113          	addi	sp,sp,-16
    80008a44:	00813423          	sd	s0,8(sp)
    80008a48:	01010413          	addi	s0,sp,16
    80008a4c:	00004717          	auipc	a4,0x4
    80008a50:	27c72703          	lw	a4,636(a4) # 8000ccc8 <panicked>
    80008a54:	02071663          	bnez	a4,80008a80 <uartputc_sync+0x40>
    80008a58:	00050793          	mv	a5,a0
    80008a5c:	100006b7          	lui	a3,0x10000
    80008a60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008a64:	02077713          	andi	a4,a4,32
    80008a68:	fe070ce3          	beqz	a4,80008a60 <uartputc_sync+0x20>
    80008a6c:	0ff7f793          	andi	a5,a5,255
    80008a70:	00f68023          	sb	a5,0(a3)
    80008a74:	00813403          	ld	s0,8(sp)
    80008a78:	01010113          	addi	sp,sp,16
    80008a7c:	00008067          	ret
    80008a80:	0000006f          	j	80008a80 <uartputc_sync+0x40>

0000000080008a84 <uartstart>:
    80008a84:	ff010113          	addi	sp,sp,-16
    80008a88:	00813423          	sd	s0,8(sp)
    80008a8c:	01010413          	addi	s0,sp,16
    80008a90:	00004617          	auipc	a2,0x4
    80008a94:	24060613          	addi	a2,a2,576 # 8000ccd0 <uart_tx_r>
    80008a98:	00004517          	auipc	a0,0x4
    80008a9c:	24050513          	addi	a0,a0,576 # 8000ccd8 <uart_tx_w>
    80008aa0:	00063783          	ld	a5,0(a2)
    80008aa4:	00053703          	ld	a4,0(a0)
    80008aa8:	04f70263          	beq	a4,a5,80008aec <uartstart+0x68>
    80008aac:	100005b7          	lui	a1,0x10000
    80008ab0:	00005817          	auipc	a6,0x5
    80008ab4:	78080813          	addi	a6,a6,1920 # 8000e230 <uart_tx_buf>
    80008ab8:	01c0006f          	j	80008ad4 <uartstart+0x50>
    80008abc:	0006c703          	lbu	a4,0(a3)
    80008ac0:	00f63023          	sd	a5,0(a2)
    80008ac4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008ac8:	00063783          	ld	a5,0(a2)
    80008acc:	00053703          	ld	a4,0(a0)
    80008ad0:	00f70e63          	beq	a4,a5,80008aec <uartstart+0x68>
    80008ad4:	01f7f713          	andi	a4,a5,31
    80008ad8:	00e806b3          	add	a3,a6,a4
    80008adc:	0055c703          	lbu	a4,5(a1)
    80008ae0:	00178793          	addi	a5,a5,1
    80008ae4:	02077713          	andi	a4,a4,32
    80008ae8:	fc071ae3          	bnez	a4,80008abc <uartstart+0x38>
    80008aec:	00813403          	ld	s0,8(sp)
    80008af0:	01010113          	addi	sp,sp,16
    80008af4:	00008067          	ret

0000000080008af8 <uartgetc>:
    80008af8:	ff010113          	addi	sp,sp,-16
    80008afc:	00813423          	sd	s0,8(sp)
    80008b00:	01010413          	addi	s0,sp,16
    80008b04:	10000737          	lui	a4,0x10000
    80008b08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008b0c:	0017f793          	andi	a5,a5,1
    80008b10:	00078c63          	beqz	a5,80008b28 <uartgetc+0x30>
    80008b14:	00074503          	lbu	a0,0(a4)
    80008b18:	0ff57513          	andi	a0,a0,255
    80008b1c:	00813403          	ld	s0,8(sp)
    80008b20:	01010113          	addi	sp,sp,16
    80008b24:	00008067          	ret
    80008b28:	fff00513          	li	a0,-1
    80008b2c:	ff1ff06f          	j	80008b1c <uartgetc+0x24>

0000000080008b30 <uartintr>:
    80008b30:	100007b7          	lui	a5,0x10000
    80008b34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008b38:	0017f793          	andi	a5,a5,1
    80008b3c:	0a078463          	beqz	a5,80008be4 <uartintr+0xb4>
    80008b40:	fe010113          	addi	sp,sp,-32
    80008b44:	00813823          	sd	s0,16(sp)
    80008b48:	00913423          	sd	s1,8(sp)
    80008b4c:	00113c23          	sd	ra,24(sp)
    80008b50:	02010413          	addi	s0,sp,32
    80008b54:	100004b7          	lui	s1,0x10000
    80008b58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80008b5c:	0ff57513          	andi	a0,a0,255
    80008b60:	fffff097          	auipc	ra,0xfffff
    80008b64:	534080e7          	jalr	1332(ra) # 80008094 <consoleintr>
    80008b68:	0054c783          	lbu	a5,5(s1)
    80008b6c:	0017f793          	andi	a5,a5,1
    80008b70:	fe0794e3          	bnez	a5,80008b58 <uartintr+0x28>
    80008b74:	00004617          	auipc	a2,0x4
    80008b78:	15c60613          	addi	a2,a2,348 # 8000ccd0 <uart_tx_r>
    80008b7c:	00004517          	auipc	a0,0x4
    80008b80:	15c50513          	addi	a0,a0,348 # 8000ccd8 <uart_tx_w>
    80008b84:	00063783          	ld	a5,0(a2)
    80008b88:	00053703          	ld	a4,0(a0)
    80008b8c:	04f70263          	beq	a4,a5,80008bd0 <uartintr+0xa0>
    80008b90:	100005b7          	lui	a1,0x10000
    80008b94:	00005817          	auipc	a6,0x5
    80008b98:	69c80813          	addi	a6,a6,1692 # 8000e230 <uart_tx_buf>
    80008b9c:	01c0006f          	j	80008bb8 <uartintr+0x88>
    80008ba0:	0006c703          	lbu	a4,0(a3)
    80008ba4:	00f63023          	sd	a5,0(a2)
    80008ba8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008bac:	00063783          	ld	a5,0(a2)
    80008bb0:	00053703          	ld	a4,0(a0)
    80008bb4:	00f70e63          	beq	a4,a5,80008bd0 <uartintr+0xa0>
    80008bb8:	01f7f713          	andi	a4,a5,31
    80008bbc:	00e806b3          	add	a3,a6,a4
    80008bc0:	0055c703          	lbu	a4,5(a1)
    80008bc4:	00178793          	addi	a5,a5,1
    80008bc8:	02077713          	andi	a4,a4,32
    80008bcc:	fc071ae3          	bnez	a4,80008ba0 <uartintr+0x70>
    80008bd0:	01813083          	ld	ra,24(sp)
    80008bd4:	01013403          	ld	s0,16(sp)
    80008bd8:	00813483          	ld	s1,8(sp)
    80008bdc:	02010113          	addi	sp,sp,32
    80008be0:	00008067          	ret
    80008be4:	00004617          	auipc	a2,0x4
    80008be8:	0ec60613          	addi	a2,a2,236 # 8000ccd0 <uart_tx_r>
    80008bec:	00004517          	auipc	a0,0x4
    80008bf0:	0ec50513          	addi	a0,a0,236 # 8000ccd8 <uart_tx_w>
    80008bf4:	00063783          	ld	a5,0(a2)
    80008bf8:	00053703          	ld	a4,0(a0)
    80008bfc:	04f70263          	beq	a4,a5,80008c40 <uartintr+0x110>
    80008c00:	100005b7          	lui	a1,0x10000
    80008c04:	00005817          	auipc	a6,0x5
    80008c08:	62c80813          	addi	a6,a6,1580 # 8000e230 <uart_tx_buf>
    80008c0c:	01c0006f          	j	80008c28 <uartintr+0xf8>
    80008c10:	0006c703          	lbu	a4,0(a3)
    80008c14:	00f63023          	sd	a5,0(a2)
    80008c18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008c1c:	00063783          	ld	a5,0(a2)
    80008c20:	00053703          	ld	a4,0(a0)
    80008c24:	02f70063          	beq	a4,a5,80008c44 <uartintr+0x114>
    80008c28:	01f7f713          	andi	a4,a5,31
    80008c2c:	00e806b3          	add	a3,a6,a4
    80008c30:	0055c703          	lbu	a4,5(a1)
    80008c34:	00178793          	addi	a5,a5,1
    80008c38:	02077713          	andi	a4,a4,32
    80008c3c:	fc071ae3          	bnez	a4,80008c10 <uartintr+0xe0>
    80008c40:	00008067          	ret
    80008c44:	00008067          	ret

0000000080008c48 <kinit>:
    80008c48:	fc010113          	addi	sp,sp,-64
    80008c4c:	02913423          	sd	s1,40(sp)
    80008c50:	fffff7b7          	lui	a5,0xfffff
    80008c54:	00006497          	auipc	s1,0x6
    80008c58:	5fb48493          	addi	s1,s1,1531 # 8000f24f <end+0xfff>
    80008c5c:	02813823          	sd	s0,48(sp)
    80008c60:	01313c23          	sd	s3,24(sp)
    80008c64:	00f4f4b3          	and	s1,s1,a5
    80008c68:	02113c23          	sd	ra,56(sp)
    80008c6c:	03213023          	sd	s2,32(sp)
    80008c70:	01413823          	sd	s4,16(sp)
    80008c74:	01513423          	sd	s5,8(sp)
    80008c78:	04010413          	addi	s0,sp,64
    80008c7c:	000017b7          	lui	a5,0x1
    80008c80:	01100993          	li	s3,17
    80008c84:	00f487b3          	add	a5,s1,a5
    80008c88:	01b99993          	slli	s3,s3,0x1b
    80008c8c:	06f9e063          	bltu	s3,a5,80008cec <kinit+0xa4>
    80008c90:	00005a97          	auipc	s5,0x5
    80008c94:	5c0a8a93          	addi	s5,s5,1472 # 8000e250 <end>
    80008c98:	0754ec63          	bltu	s1,s5,80008d10 <kinit+0xc8>
    80008c9c:	0734fa63          	bgeu	s1,s3,80008d10 <kinit+0xc8>
    80008ca0:	00088a37          	lui	s4,0x88
    80008ca4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008ca8:	00004917          	auipc	s2,0x4
    80008cac:	03890913          	addi	s2,s2,56 # 8000cce0 <kmem>
    80008cb0:	00ca1a13          	slli	s4,s4,0xc
    80008cb4:	0140006f          	j	80008cc8 <kinit+0x80>
    80008cb8:	000017b7          	lui	a5,0x1
    80008cbc:	00f484b3          	add	s1,s1,a5
    80008cc0:	0554e863          	bltu	s1,s5,80008d10 <kinit+0xc8>
    80008cc4:	0534f663          	bgeu	s1,s3,80008d10 <kinit+0xc8>
    80008cc8:	00001637          	lui	a2,0x1
    80008ccc:	00100593          	li	a1,1
    80008cd0:	00048513          	mv	a0,s1
    80008cd4:	00000097          	auipc	ra,0x0
    80008cd8:	5e4080e7          	jalr	1508(ra) # 800092b8 <__memset>
    80008cdc:	00093783          	ld	a5,0(s2)
    80008ce0:	00f4b023          	sd	a5,0(s1)
    80008ce4:	00993023          	sd	s1,0(s2)
    80008ce8:	fd4498e3          	bne	s1,s4,80008cb8 <kinit+0x70>
    80008cec:	03813083          	ld	ra,56(sp)
    80008cf0:	03013403          	ld	s0,48(sp)
    80008cf4:	02813483          	ld	s1,40(sp)
    80008cf8:	02013903          	ld	s2,32(sp)
    80008cfc:	01813983          	ld	s3,24(sp)
    80008d00:	01013a03          	ld	s4,16(sp)
    80008d04:	00813a83          	ld	s5,8(sp)
    80008d08:	04010113          	addi	sp,sp,64
    80008d0c:	00008067          	ret
    80008d10:	00002517          	auipc	a0,0x2
    80008d14:	a9850513          	addi	a0,a0,-1384 # 8000a7a8 <digits+0x18>
    80008d18:	fffff097          	auipc	ra,0xfffff
    80008d1c:	4b4080e7          	jalr	1204(ra) # 800081cc <panic>

0000000080008d20 <freerange>:
    80008d20:	fc010113          	addi	sp,sp,-64
    80008d24:	000017b7          	lui	a5,0x1
    80008d28:	02913423          	sd	s1,40(sp)
    80008d2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008d30:	009504b3          	add	s1,a0,s1
    80008d34:	fffff537          	lui	a0,0xfffff
    80008d38:	02813823          	sd	s0,48(sp)
    80008d3c:	02113c23          	sd	ra,56(sp)
    80008d40:	03213023          	sd	s2,32(sp)
    80008d44:	01313c23          	sd	s3,24(sp)
    80008d48:	01413823          	sd	s4,16(sp)
    80008d4c:	01513423          	sd	s5,8(sp)
    80008d50:	01613023          	sd	s6,0(sp)
    80008d54:	04010413          	addi	s0,sp,64
    80008d58:	00a4f4b3          	and	s1,s1,a0
    80008d5c:	00f487b3          	add	a5,s1,a5
    80008d60:	06f5e463          	bltu	a1,a5,80008dc8 <freerange+0xa8>
    80008d64:	00005a97          	auipc	s5,0x5
    80008d68:	4eca8a93          	addi	s5,s5,1260 # 8000e250 <end>
    80008d6c:	0954e263          	bltu	s1,s5,80008df0 <freerange+0xd0>
    80008d70:	01100993          	li	s3,17
    80008d74:	01b99993          	slli	s3,s3,0x1b
    80008d78:	0734fc63          	bgeu	s1,s3,80008df0 <freerange+0xd0>
    80008d7c:	00058a13          	mv	s4,a1
    80008d80:	00004917          	auipc	s2,0x4
    80008d84:	f6090913          	addi	s2,s2,-160 # 8000cce0 <kmem>
    80008d88:	00002b37          	lui	s6,0x2
    80008d8c:	0140006f          	j	80008da0 <freerange+0x80>
    80008d90:	000017b7          	lui	a5,0x1
    80008d94:	00f484b3          	add	s1,s1,a5
    80008d98:	0554ec63          	bltu	s1,s5,80008df0 <freerange+0xd0>
    80008d9c:	0534fa63          	bgeu	s1,s3,80008df0 <freerange+0xd0>
    80008da0:	00001637          	lui	a2,0x1
    80008da4:	00100593          	li	a1,1
    80008da8:	00048513          	mv	a0,s1
    80008dac:	00000097          	auipc	ra,0x0
    80008db0:	50c080e7          	jalr	1292(ra) # 800092b8 <__memset>
    80008db4:	00093703          	ld	a4,0(s2)
    80008db8:	016487b3          	add	a5,s1,s6
    80008dbc:	00e4b023          	sd	a4,0(s1)
    80008dc0:	00993023          	sd	s1,0(s2)
    80008dc4:	fcfa76e3          	bgeu	s4,a5,80008d90 <freerange+0x70>
    80008dc8:	03813083          	ld	ra,56(sp)
    80008dcc:	03013403          	ld	s0,48(sp)
    80008dd0:	02813483          	ld	s1,40(sp)
    80008dd4:	02013903          	ld	s2,32(sp)
    80008dd8:	01813983          	ld	s3,24(sp)
    80008ddc:	01013a03          	ld	s4,16(sp)
    80008de0:	00813a83          	ld	s5,8(sp)
    80008de4:	00013b03          	ld	s6,0(sp)
    80008de8:	04010113          	addi	sp,sp,64
    80008dec:	00008067          	ret
    80008df0:	00002517          	auipc	a0,0x2
    80008df4:	9b850513          	addi	a0,a0,-1608 # 8000a7a8 <digits+0x18>
    80008df8:	fffff097          	auipc	ra,0xfffff
    80008dfc:	3d4080e7          	jalr	980(ra) # 800081cc <panic>

0000000080008e00 <kfree>:
    80008e00:	fe010113          	addi	sp,sp,-32
    80008e04:	00813823          	sd	s0,16(sp)
    80008e08:	00113c23          	sd	ra,24(sp)
    80008e0c:	00913423          	sd	s1,8(sp)
    80008e10:	02010413          	addi	s0,sp,32
    80008e14:	03451793          	slli	a5,a0,0x34
    80008e18:	04079c63          	bnez	a5,80008e70 <kfree+0x70>
    80008e1c:	00005797          	auipc	a5,0x5
    80008e20:	43478793          	addi	a5,a5,1076 # 8000e250 <end>
    80008e24:	00050493          	mv	s1,a0
    80008e28:	04f56463          	bltu	a0,a5,80008e70 <kfree+0x70>
    80008e2c:	01100793          	li	a5,17
    80008e30:	01b79793          	slli	a5,a5,0x1b
    80008e34:	02f57e63          	bgeu	a0,a5,80008e70 <kfree+0x70>
    80008e38:	00001637          	lui	a2,0x1
    80008e3c:	00100593          	li	a1,1
    80008e40:	00000097          	auipc	ra,0x0
    80008e44:	478080e7          	jalr	1144(ra) # 800092b8 <__memset>
    80008e48:	00004797          	auipc	a5,0x4
    80008e4c:	e9878793          	addi	a5,a5,-360 # 8000cce0 <kmem>
    80008e50:	0007b703          	ld	a4,0(a5)
    80008e54:	01813083          	ld	ra,24(sp)
    80008e58:	01013403          	ld	s0,16(sp)
    80008e5c:	00e4b023          	sd	a4,0(s1)
    80008e60:	0097b023          	sd	s1,0(a5)
    80008e64:	00813483          	ld	s1,8(sp)
    80008e68:	02010113          	addi	sp,sp,32
    80008e6c:	00008067          	ret
    80008e70:	00002517          	auipc	a0,0x2
    80008e74:	93850513          	addi	a0,a0,-1736 # 8000a7a8 <digits+0x18>
    80008e78:	fffff097          	auipc	ra,0xfffff
    80008e7c:	354080e7          	jalr	852(ra) # 800081cc <panic>

0000000080008e80 <kalloc>:
    80008e80:	fe010113          	addi	sp,sp,-32
    80008e84:	00813823          	sd	s0,16(sp)
    80008e88:	00913423          	sd	s1,8(sp)
    80008e8c:	00113c23          	sd	ra,24(sp)
    80008e90:	02010413          	addi	s0,sp,32
    80008e94:	00004797          	auipc	a5,0x4
    80008e98:	e4c78793          	addi	a5,a5,-436 # 8000cce0 <kmem>
    80008e9c:	0007b483          	ld	s1,0(a5)
    80008ea0:	02048063          	beqz	s1,80008ec0 <kalloc+0x40>
    80008ea4:	0004b703          	ld	a4,0(s1)
    80008ea8:	00001637          	lui	a2,0x1
    80008eac:	00500593          	li	a1,5
    80008eb0:	00048513          	mv	a0,s1
    80008eb4:	00e7b023          	sd	a4,0(a5)
    80008eb8:	00000097          	auipc	ra,0x0
    80008ebc:	400080e7          	jalr	1024(ra) # 800092b8 <__memset>
    80008ec0:	01813083          	ld	ra,24(sp)
    80008ec4:	01013403          	ld	s0,16(sp)
    80008ec8:	00048513          	mv	a0,s1
    80008ecc:	00813483          	ld	s1,8(sp)
    80008ed0:	02010113          	addi	sp,sp,32
    80008ed4:	00008067          	ret

0000000080008ed8 <initlock>:
    80008ed8:	ff010113          	addi	sp,sp,-16
    80008edc:	00813423          	sd	s0,8(sp)
    80008ee0:	01010413          	addi	s0,sp,16
    80008ee4:	00813403          	ld	s0,8(sp)
    80008ee8:	00b53423          	sd	a1,8(a0)
    80008eec:	00052023          	sw	zero,0(a0)
    80008ef0:	00053823          	sd	zero,16(a0)
    80008ef4:	01010113          	addi	sp,sp,16
    80008ef8:	00008067          	ret

0000000080008efc <acquire>:
    80008efc:	fe010113          	addi	sp,sp,-32
    80008f00:	00813823          	sd	s0,16(sp)
    80008f04:	00913423          	sd	s1,8(sp)
    80008f08:	00113c23          	sd	ra,24(sp)
    80008f0c:	01213023          	sd	s2,0(sp)
    80008f10:	02010413          	addi	s0,sp,32
    80008f14:	00050493          	mv	s1,a0
    80008f18:	10002973          	csrr	s2,sstatus
    80008f1c:	100027f3          	csrr	a5,sstatus
    80008f20:	ffd7f793          	andi	a5,a5,-3
    80008f24:	10079073          	csrw	sstatus,a5
    80008f28:	fffff097          	auipc	ra,0xfffff
    80008f2c:	8ec080e7          	jalr	-1812(ra) # 80007814 <mycpu>
    80008f30:	07852783          	lw	a5,120(a0)
    80008f34:	06078e63          	beqz	a5,80008fb0 <acquire+0xb4>
    80008f38:	fffff097          	auipc	ra,0xfffff
    80008f3c:	8dc080e7          	jalr	-1828(ra) # 80007814 <mycpu>
    80008f40:	07852783          	lw	a5,120(a0)
    80008f44:	0004a703          	lw	a4,0(s1)
    80008f48:	0017879b          	addiw	a5,a5,1
    80008f4c:	06f52c23          	sw	a5,120(a0)
    80008f50:	04071063          	bnez	a4,80008f90 <acquire+0x94>
    80008f54:	00100713          	li	a4,1
    80008f58:	00070793          	mv	a5,a4
    80008f5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008f60:	0007879b          	sext.w	a5,a5
    80008f64:	fe079ae3          	bnez	a5,80008f58 <acquire+0x5c>
    80008f68:	0ff0000f          	fence
    80008f6c:	fffff097          	auipc	ra,0xfffff
    80008f70:	8a8080e7          	jalr	-1880(ra) # 80007814 <mycpu>
    80008f74:	01813083          	ld	ra,24(sp)
    80008f78:	01013403          	ld	s0,16(sp)
    80008f7c:	00a4b823          	sd	a0,16(s1)
    80008f80:	00013903          	ld	s2,0(sp)
    80008f84:	00813483          	ld	s1,8(sp)
    80008f88:	02010113          	addi	sp,sp,32
    80008f8c:	00008067          	ret
    80008f90:	0104b903          	ld	s2,16(s1)
    80008f94:	fffff097          	auipc	ra,0xfffff
    80008f98:	880080e7          	jalr	-1920(ra) # 80007814 <mycpu>
    80008f9c:	faa91ce3          	bne	s2,a0,80008f54 <acquire+0x58>
    80008fa0:	00002517          	auipc	a0,0x2
    80008fa4:	81050513          	addi	a0,a0,-2032 # 8000a7b0 <digits+0x20>
    80008fa8:	fffff097          	auipc	ra,0xfffff
    80008fac:	224080e7          	jalr	548(ra) # 800081cc <panic>
    80008fb0:	00195913          	srli	s2,s2,0x1
    80008fb4:	fffff097          	auipc	ra,0xfffff
    80008fb8:	860080e7          	jalr	-1952(ra) # 80007814 <mycpu>
    80008fbc:	00197913          	andi	s2,s2,1
    80008fc0:	07252e23          	sw	s2,124(a0)
    80008fc4:	f75ff06f          	j	80008f38 <acquire+0x3c>

0000000080008fc8 <release>:
    80008fc8:	fe010113          	addi	sp,sp,-32
    80008fcc:	00813823          	sd	s0,16(sp)
    80008fd0:	00113c23          	sd	ra,24(sp)
    80008fd4:	00913423          	sd	s1,8(sp)
    80008fd8:	01213023          	sd	s2,0(sp)
    80008fdc:	02010413          	addi	s0,sp,32
    80008fe0:	00052783          	lw	a5,0(a0)
    80008fe4:	00079a63          	bnez	a5,80008ff8 <release+0x30>
    80008fe8:	00001517          	auipc	a0,0x1
    80008fec:	7d050513          	addi	a0,a0,2000 # 8000a7b8 <digits+0x28>
    80008ff0:	fffff097          	auipc	ra,0xfffff
    80008ff4:	1dc080e7          	jalr	476(ra) # 800081cc <panic>
    80008ff8:	01053903          	ld	s2,16(a0)
    80008ffc:	00050493          	mv	s1,a0
    80009000:	fffff097          	auipc	ra,0xfffff
    80009004:	814080e7          	jalr	-2028(ra) # 80007814 <mycpu>
    80009008:	fea910e3          	bne	s2,a0,80008fe8 <release+0x20>
    8000900c:	0004b823          	sd	zero,16(s1)
    80009010:	0ff0000f          	fence
    80009014:	0f50000f          	fence	iorw,ow
    80009018:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000901c:	ffffe097          	auipc	ra,0xffffe
    80009020:	7f8080e7          	jalr	2040(ra) # 80007814 <mycpu>
    80009024:	100027f3          	csrr	a5,sstatus
    80009028:	0027f793          	andi	a5,a5,2
    8000902c:	04079a63          	bnez	a5,80009080 <release+0xb8>
    80009030:	07852783          	lw	a5,120(a0)
    80009034:	02f05e63          	blez	a5,80009070 <release+0xa8>
    80009038:	fff7871b          	addiw	a4,a5,-1
    8000903c:	06e52c23          	sw	a4,120(a0)
    80009040:	00071c63          	bnez	a4,80009058 <release+0x90>
    80009044:	07c52783          	lw	a5,124(a0)
    80009048:	00078863          	beqz	a5,80009058 <release+0x90>
    8000904c:	100027f3          	csrr	a5,sstatus
    80009050:	0027e793          	ori	a5,a5,2
    80009054:	10079073          	csrw	sstatus,a5
    80009058:	01813083          	ld	ra,24(sp)
    8000905c:	01013403          	ld	s0,16(sp)
    80009060:	00813483          	ld	s1,8(sp)
    80009064:	00013903          	ld	s2,0(sp)
    80009068:	02010113          	addi	sp,sp,32
    8000906c:	00008067          	ret
    80009070:	00001517          	auipc	a0,0x1
    80009074:	76850513          	addi	a0,a0,1896 # 8000a7d8 <digits+0x48>
    80009078:	fffff097          	auipc	ra,0xfffff
    8000907c:	154080e7          	jalr	340(ra) # 800081cc <panic>
    80009080:	00001517          	auipc	a0,0x1
    80009084:	74050513          	addi	a0,a0,1856 # 8000a7c0 <digits+0x30>
    80009088:	fffff097          	auipc	ra,0xfffff
    8000908c:	144080e7          	jalr	324(ra) # 800081cc <panic>

0000000080009090 <holding>:
    80009090:	00052783          	lw	a5,0(a0)
    80009094:	00079663          	bnez	a5,800090a0 <holding+0x10>
    80009098:	00000513          	li	a0,0
    8000909c:	00008067          	ret
    800090a0:	fe010113          	addi	sp,sp,-32
    800090a4:	00813823          	sd	s0,16(sp)
    800090a8:	00913423          	sd	s1,8(sp)
    800090ac:	00113c23          	sd	ra,24(sp)
    800090b0:	02010413          	addi	s0,sp,32
    800090b4:	01053483          	ld	s1,16(a0)
    800090b8:	ffffe097          	auipc	ra,0xffffe
    800090bc:	75c080e7          	jalr	1884(ra) # 80007814 <mycpu>
    800090c0:	01813083          	ld	ra,24(sp)
    800090c4:	01013403          	ld	s0,16(sp)
    800090c8:	40a48533          	sub	a0,s1,a0
    800090cc:	00153513          	seqz	a0,a0
    800090d0:	00813483          	ld	s1,8(sp)
    800090d4:	02010113          	addi	sp,sp,32
    800090d8:	00008067          	ret

00000000800090dc <push_off>:
    800090dc:	fe010113          	addi	sp,sp,-32
    800090e0:	00813823          	sd	s0,16(sp)
    800090e4:	00113c23          	sd	ra,24(sp)
    800090e8:	00913423          	sd	s1,8(sp)
    800090ec:	02010413          	addi	s0,sp,32
    800090f0:	100024f3          	csrr	s1,sstatus
    800090f4:	100027f3          	csrr	a5,sstatus
    800090f8:	ffd7f793          	andi	a5,a5,-3
    800090fc:	10079073          	csrw	sstatus,a5
    80009100:	ffffe097          	auipc	ra,0xffffe
    80009104:	714080e7          	jalr	1812(ra) # 80007814 <mycpu>
    80009108:	07852783          	lw	a5,120(a0)
    8000910c:	02078663          	beqz	a5,80009138 <push_off+0x5c>
    80009110:	ffffe097          	auipc	ra,0xffffe
    80009114:	704080e7          	jalr	1796(ra) # 80007814 <mycpu>
    80009118:	07852783          	lw	a5,120(a0)
    8000911c:	01813083          	ld	ra,24(sp)
    80009120:	01013403          	ld	s0,16(sp)
    80009124:	0017879b          	addiw	a5,a5,1
    80009128:	06f52c23          	sw	a5,120(a0)
    8000912c:	00813483          	ld	s1,8(sp)
    80009130:	02010113          	addi	sp,sp,32
    80009134:	00008067          	ret
    80009138:	0014d493          	srli	s1,s1,0x1
    8000913c:	ffffe097          	auipc	ra,0xffffe
    80009140:	6d8080e7          	jalr	1752(ra) # 80007814 <mycpu>
    80009144:	0014f493          	andi	s1,s1,1
    80009148:	06952e23          	sw	s1,124(a0)
    8000914c:	fc5ff06f          	j	80009110 <push_off+0x34>

0000000080009150 <pop_off>:
    80009150:	ff010113          	addi	sp,sp,-16
    80009154:	00813023          	sd	s0,0(sp)
    80009158:	00113423          	sd	ra,8(sp)
    8000915c:	01010413          	addi	s0,sp,16
    80009160:	ffffe097          	auipc	ra,0xffffe
    80009164:	6b4080e7          	jalr	1716(ra) # 80007814 <mycpu>
    80009168:	100027f3          	csrr	a5,sstatus
    8000916c:	0027f793          	andi	a5,a5,2
    80009170:	04079663          	bnez	a5,800091bc <pop_off+0x6c>
    80009174:	07852783          	lw	a5,120(a0)
    80009178:	02f05a63          	blez	a5,800091ac <pop_off+0x5c>
    8000917c:	fff7871b          	addiw	a4,a5,-1
    80009180:	06e52c23          	sw	a4,120(a0)
    80009184:	00071c63          	bnez	a4,8000919c <pop_off+0x4c>
    80009188:	07c52783          	lw	a5,124(a0)
    8000918c:	00078863          	beqz	a5,8000919c <pop_off+0x4c>
    80009190:	100027f3          	csrr	a5,sstatus
    80009194:	0027e793          	ori	a5,a5,2
    80009198:	10079073          	csrw	sstatus,a5
    8000919c:	00813083          	ld	ra,8(sp)
    800091a0:	00013403          	ld	s0,0(sp)
    800091a4:	01010113          	addi	sp,sp,16
    800091a8:	00008067          	ret
    800091ac:	00001517          	auipc	a0,0x1
    800091b0:	62c50513          	addi	a0,a0,1580 # 8000a7d8 <digits+0x48>
    800091b4:	fffff097          	auipc	ra,0xfffff
    800091b8:	018080e7          	jalr	24(ra) # 800081cc <panic>
    800091bc:	00001517          	auipc	a0,0x1
    800091c0:	60450513          	addi	a0,a0,1540 # 8000a7c0 <digits+0x30>
    800091c4:	fffff097          	auipc	ra,0xfffff
    800091c8:	008080e7          	jalr	8(ra) # 800081cc <panic>

00000000800091cc <push_on>:
    800091cc:	fe010113          	addi	sp,sp,-32
    800091d0:	00813823          	sd	s0,16(sp)
    800091d4:	00113c23          	sd	ra,24(sp)
    800091d8:	00913423          	sd	s1,8(sp)
    800091dc:	02010413          	addi	s0,sp,32
    800091e0:	100024f3          	csrr	s1,sstatus
    800091e4:	100027f3          	csrr	a5,sstatus
    800091e8:	0027e793          	ori	a5,a5,2
    800091ec:	10079073          	csrw	sstatus,a5
    800091f0:	ffffe097          	auipc	ra,0xffffe
    800091f4:	624080e7          	jalr	1572(ra) # 80007814 <mycpu>
    800091f8:	07852783          	lw	a5,120(a0)
    800091fc:	02078663          	beqz	a5,80009228 <push_on+0x5c>
    80009200:	ffffe097          	auipc	ra,0xffffe
    80009204:	614080e7          	jalr	1556(ra) # 80007814 <mycpu>
    80009208:	07852783          	lw	a5,120(a0)
    8000920c:	01813083          	ld	ra,24(sp)
    80009210:	01013403          	ld	s0,16(sp)
    80009214:	0017879b          	addiw	a5,a5,1
    80009218:	06f52c23          	sw	a5,120(a0)
    8000921c:	00813483          	ld	s1,8(sp)
    80009220:	02010113          	addi	sp,sp,32
    80009224:	00008067          	ret
    80009228:	0014d493          	srli	s1,s1,0x1
    8000922c:	ffffe097          	auipc	ra,0xffffe
    80009230:	5e8080e7          	jalr	1512(ra) # 80007814 <mycpu>
    80009234:	0014f493          	andi	s1,s1,1
    80009238:	06952e23          	sw	s1,124(a0)
    8000923c:	fc5ff06f          	j	80009200 <push_on+0x34>

0000000080009240 <pop_on>:
    80009240:	ff010113          	addi	sp,sp,-16
    80009244:	00813023          	sd	s0,0(sp)
    80009248:	00113423          	sd	ra,8(sp)
    8000924c:	01010413          	addi	s0,sp,16
    80009250:	ffffe097          	auipc	ra,0xffffe
    80009254:	5c4080e7          	jalr	1476(ra) # 80007814 <mycpu>
    80009258:	100027f3          	csrr	a5,sstatus
    8000925c:	0027f793          	andi	a5,a5,2
    80009260:	04078463          	beqz	a5,800092a8 <pop_on+0x68>
    80009264:	07852783          	lw	a5,120(a0)
    80009268:	02f05863          	blez	a5,80009298 <pop_on+0x58>
    8000926c:	fff7879b          	addiw	a5,a5,-1
    80009270:	06f52c23          	sw	a5,120(a0)
    80009274:	07853783          	ld	a5,120(a0)
    80009278:	00079863          	bnez	a5,80009288 <pop_on+0x48>
    8000927c:	100027f3          	csrr	a5,sstatus
    80009280:	ffd7f793          	andi	a5,a5,-3
    80009284:	10079073          	csrw	sstatus,a5
    80009288:	00813083          	ld	ra,8(sp)
    8000928c:	00013403          	ld	s0,0(sp)
    80009290:	01010113          	addi	sp,sp,16
    80009294:	00008067          	ret
    80009298:	00001517          	auipc	a0,0x1
    8000929c:	56850513          	addi	a0,a0,1384 # 8000a800 <digits+0x70>
    800092a0:	fffff097          	auipc	ra,0xfffff
    800092a4:	f2c080e7          	jalr	-212(ra) # 800081cc <panic>
    800092a8:	00001517          	auipc	a0,0x1
    800092ac:	53850513          	addi	a0,a0,1336 # 8000a7e0 <digits+0x50>
    800092b0:	fffff097          	auipc	ra,0xfffff
    800092b4:	f1c080e7          	jalr	-228(ra) # 800081cc <panic>

00000000800092b8 <__memset>:
    800092b8:	ff010113          	addi	sp,sp,-16
    800092bc:	00813423          	sd	s0,8(sp)
    800092c0:	01010413          	addi	s0,sp,16
    800092c4:	1a060e63          	beqz	a2,80009480 <__memset+0x1c8>
    800092c8:	40a007b3          	neg	a5,a0
    800092cc:	0077f793          	andi	a5,a5,7
    800092d0:	00778693          	addi	a3,a5,7
    800092d4:	00b00813          	li	a6,11
    800092d8:	0ff5f593          	andi	a1,a1,255
    800092dc:	fff6071b          	addiw	a4,a2,-1
    800092e0:	1b06e663          	bltu	a3,a6,8000948c <__memset+0x1d4>
    800092e4:	1cd76463          	bltu	a4,a3,800094ac <__memset+0x1f4>
    800092e8:	1a078e63          	beqz	a5,800094a4 <__memset+0x1ec>
    800092ec:	00b50023          	sb	a1,0(a0)
    800092f0:	00100713          	li	a4,1
    800092f4:	1ae78463          	beq	a5,a4,8000949c <__memset+0x1e4>
    800092f8:	00b500a3          	sb	a1,1(a0)
    800092fc:	00200713          	li	a4,2
    80009300:	1ae78a63          	beq	a5,a4,800094b4 <__memset+0x1fc>
    80009304:	00b50123          	sb	a1,2(a0)
    80009308:	00300713          	li	a4,3
    8000930c:	18e78463          	beq	a5,a4,80009494 <__memset+0x1dc>
    80009310:	00b501a3          	sb	a1,3(a0)
    80009314:	00400713          	li	a4,4
    80009318:	1ae78263          	beq	a5,a4,800094bc <__memset+0x204>
    8000931c:	00b50223          	sb	a1,4(a0)
    80009320:	00500713          	li	a4,5
    80009324:	1ae78063          	beq	a5,a4,800094c4 <__memset+0x20c>
    80009328:	00b502a3          	sb	a1,5(a0)
    8000932c:	00700713          	li	a4,7
    80009330:	18e79e63          	bne	a5,a4,800094cc <__memset+0x214>
    80009334:	00b50323          	sb	a1,6(a0)
    80009338:	00700e93          	li	t4,7
    8000933c:	00859713          	slli	a4,a1,0x8
    80009340:	00e5e733          	or	a4,a1,a4
    80009344:	01059e13          	slli	t3,a1,0x10
    80009348:	01c76e33          	or	t3,a4,t3
    8000934c:	01859313          	slli	t1,a1,0x18
    80009350:	006e6333          	or	t1,t3,t1
    80009354:	02059893          	slli	a7,a1,0x20
    80009358:	40f60e3b          	subw	t3,a2,a5
    8000935c:	011368b3          	or	a7,t1,a7
    80009360:	02859813          	slli	a6,a1,0x28
    80009364:	0108e833          	or	a6,a7,a6
    80009368:	03059693          	slli	a3,a1,0x30
    8000936c:	003e589b          	srliw	a7,t3,0x3
    80009370:	00d866b3          	or	a3,a6,a3
    80009374:	03859713          	slli	a4,a1,0x38
    80009378:	00389813          	slli	a6,a7,0x3
    8000937c:	00f507b3          	add	a5,a0,a5
    80009380:	00e6e733          	or	a4,a3,a4
    80009384:	000e089b          	sext.w	a7,t3
    80009388:	00f806b3          	add	a3,a6,a5
    8000938c:	00e7b023          	sd	a4,0(a5)
    80009390:	00878793          	addi	a5,a5,8
    80009394:	fed79ce3          	bne	a5,a3,8000938c <__memset+0xd4>
    80009398:	ff8e7793          	andi	a5,t3,-8
    8000939c:	0007871b          	sext.w	a4,a5
    800093a0:	01d787bb          	addw	a5,a5,t4
    800093a4:	0ce88e63          	beq	a7,a4,80009480 <__memset+0x1c8>
    800093a8:	00f50733          	add	a4,a0,a5
    800093ac:	00b70023          	sb	a1,0(a4)
    800093b0:	0017871b          	addiw	a4,a5,1
    800093b4:	0cc77663          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    800093b8:	00e50733          	add	a4,a0,a4
    800093bc:	00b70023          	sb	a1,0(a4)
    800093c0:	0027871b          	addiw	a4,a5,2
    800093c4:	0ac77e63          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    800093c8:	00e50733          	add	a4,a0,a4
    800093cc:	00b70023          	sb	a1,0(a4)
    800093d0:	0037871b          	addiw	a4,a5,3
    800093d4:	0ac77663          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    800093d8:	00e50733          	add	a4,a0,a4
    800093dc:	00b70023          	sb	a1,0(a4)
    800093e0:	0047871b          	addiw	a4,a5,4
    800093e4:	08c77e63          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    800093e8:	00e50733          	add	a4,a0,a4
    800093ec:	00b70023          	sb	a1,0(a4)
    800093f0:	0057871b          	addiw	a4,a5,5
    800093f4:	08c77663          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    800093f8:	00e50733          	add	a4,a0,a4
    800093fc:	00b70023          	sb	a1,0(a4)
    80009400:	0067871b          	addiw	a4,a5,6
    80009404:	06c77e63          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    80009408:	00e50733          	add	a4,a0,a4
    8000940c:	00b70023          	sb	a1,0(a4)
    80009410:	0077871b          	addiw	a4,a5,7
    80009414:	06c77663          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    80009418:	00e50733          	add	a4,a0,a4
    8000941c:	00b70023          	sb	a1,0(a4)
    80009420:	0087871b          	addiw	a4,a5,8
    80009424:	04c77e63          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    80009428:	00e50733          	add	a4,a0,a4
    8000942c:	00b70023          	sb	a1,0(a4)
    80009430:	0097871b          	addiw	a4,a5,9
    80009434:	04c77663          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    80009438:	00e50733          	add	a4,a0,a4
    8000943c:	00b70023          	sb	a1,0(a4)
    80009440:	00a7871b          	addiw	a4,a5,10
    80009444:	02c77e63          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    80009448:	00e50733          	add	a4,a0,a4
    8000944c:	00b70023          	sb	a1,0(a4)
    80009450:	00b7871b          	addiw	a4,a5,11
    80009454:	02c77663          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    80009458:	00e50733          	add	a4,a0,a4
    8000945c:	00b70023          	sb	a1,0(a4)
    80009460:	00c7871b          	addiw	a4,a5,12
    80009464:	00c77e63          	bgeu	a4,a2,80009480 <__memset+0x1c8>
    80009468:	00e50733          	add	a4,a0,a4
    8000946c:	00b70023          	sb	a1,0(a4)
    80009470:	00d7879b          	addiw	a5,a5,13
    80009474:	00c7f663          	bgeu	a5,a2,80009480 <__memset+0x1c8>
    80009478:	00f507b3          	add	a5,a0,a5
    8000947c:	00b78023          	sb	a1,0(a5)
    80009480:	00813403          	ld	s0,8(sp)
    80009484:	01010113          	addi	sp,sp,16
    80009488:	00008067          	ret
    8000948c:	00b00693          	li	a3,11
    80009490:	e55ff06f          	j	800092e4 <__memset+0x2c>
    80009494:	00300e93          	li	t4,3
    80009498:	ea5ff06f          	j	8000933c <__memset+0x84>
    8000949c:	00100e93          	li	t4,1
    800094a0:	e9dff06f          	j	8000933c <__memset+0x84>
    800094a4:	00000e93          	li	t4,0
    800094a8:	e95ff06f          	j	8000933c <__memset+0x84>
    800094ac:	00000793          	li	a5,0
    800094b0:	ef9ff06f          	j	800093a8 <__memset+0xf0>
    800094b4:	00200e93          	li	t4,2
    800094b8:	e85ff06f          	j	8000933c <__memset+0x84>
    800094bc:	00400e93          	li	t4,4
    800094c0:	e7dff06f          	j	8000933c <__memset+0x84>
    800094c4:	00500e93          	li	t4,5
    800094c8:	e75ff06f          	j	8000933c <__memset+0x84>
    800094cc:	00600e93          	li	t4,6
    800094d0:	e6dff06f          	j	8000933c <__memset+0x84>

00000000800094d4 <__memmove>:
    800094d4:	ff010113          	addi	sp,sp,-16
    800094d8:	00813423          	sd	s0,8(sp)
    800094dc:	01010413          	addi	s0,sp,16
    800094e0:	0e060863          	beqz	a2,800095d0 <__memmove+0xfc>
    800094e4:	fff6069b          	addiw	a3,a2,-1
    800094e8:	0006881b          	sext.w	a6,a3
    800094ec:	0ea5e863          	bltu	a1,a0,800095dc <__memmove+0x108>
    800094f0:	00758713          	addi	a4,a1,7
    800094f4:	00a5e7b3          	or	a5,a1,a0
    800094f8:	40a70733          	sub	a4,a4,a0
    800094fc:	0077f793          	andi	a5,a5,7
    80009500:	00f73713          	sltiu	a4,a4,15
    80009504:	00174713          	xori	a4,a4,1
    80009508:	0017b793          	seqz	a5,a5
    8000950c:	00e7f7b3          	and	a5,a5,a4
    80009510:	10078863          	beqz	a5,80009620 <__memmove+0x14c>
    80009514:	00900793          	li	a5,9
    80009518:	1107f463          	bgeu	a5,a6,80009620 <__memmove+0x14c>
    8000951c:	0036581b          	srliw	a6,a2,0x3
    80009520:	fff8081b          	addiw	a6,a6,-1
    80009524:	02081813          	slli	a6,a6,0x20
    80009528:	01d85893          	srli	a7,a6,0x1d
    8000952c:	00858813          	addi	a6,a1,8
    80009530:	00058793          	mv	a5,a1
    80009534:	00050713          	mv	a4,a0
    80009538:	01088833          	add	a6,a7,a6
    8000953c:	0007b883          	ld	a7,0(a5)
    80009540:	00878793          	addi	a5,a5,8
    80009544:	00870713          	addi	a4,a4,8
    80009548:	ff173c23          	sd	a7,-8(a4)
    8000954c:	ff0798e3          	bne	a5,a6,8000953c <__memmove+0x68>
    80009550:	ff867713          	andi	a4,a2,-8
    80009554:	02071793          	slli	a5,a4,0x20
    80009558:	0207d793          	srli	a5,a5,0x20
    8000955c:	00f585b3          	add	a1,a1,a5
    80009560:	40e686bb          	subw	a3,a3,a4
    80009564:	00f507b3          	add	a5,a0,a5
    80009568:	06e60463          	beq	a2,a4,800095d0 <__memmove+0xfc>
    8000956c:	0005c703          	lbu	a4,0(a1)
    80009570:	00e78023          	sb	a4,0(a5)
    80009574:	04068e63          	beqz	a3,800095d0 <__memmove+0xfc>
    80009578:	0015c603          	lbu	a2,1(a1)
    8000957c:	00100713          	li	a4,1
    80009580:	00c780a3          	sb	a2,1(a5)
    80009584:	04e68663          	beq	a3,a4,800095d0 <__memmove+0xfc>
    80009588:	0025c603          	lbu	a2,2(a1)
    8000958c:	00200713          	li	a4,2
    80009590:	00c78123          	sb	a2,2(a5)
    80009594:	02e68e63          	beq	a3,a4,800095d0 <__memmove+0xfc>
    80009598:	0035c603          	lbu	a2,3(a1)
    8000959c:	00300713          	li	a4,3
    800095a0:	00c781a3          	sb	a2,3(a5)
    800095a4:	02e68663          	beq	a3,a4,800095d0 <__memmove+0xfc>
    800095a8:	0045c603          	lbu	a2,4(a1)
    800095ac:	00400713          	li	a4,4
    800095b0:	00c78223          	sb	a2,4(a5)
    800095b4:	00e68e63          	beq	a3,a4,800095d0 <__memmove+0xfc>
    800095b8:	0055c603          	lbu	a2,5(a1)
    800095bc:	00500713          	li	a4,5
    800095c0:	00c782a3          	sb	a2,5(a5)
    800095c4:	00e68663          	beq	a3,a4,800095d0 <__memmove+0xfc>
    800095c8:	0065c703          	lbu	a4,6(a1)
    800095cc:	00e78323          	sb	a4,6(a5)
    800095d0:	00813403          	ld	s0,8(sp)
    800095d4:	01010113          	addi	sp,sp,16
    800095d8:	00008067          	ret
    800095dc:	02061713          	slli	a4,a2,0x20
    800095e0:	02075713          	srli	a4,a4,0x20
    800095e4:	00e587b3          	add	a5,a1,a4
    800095e8:	f0f574e3          	bgeu	a0,a5,800094f0 <__memmove+0x1c>
    800095ec:	02069613          	slli	a2,a3,0x20
    800095f0:	02065613          	srli	a2,a2,0x20
    800095f4:	fff64613          	not	a2,a2
    800095f8:	00e50733          	add	a4,a0,a4
    800095fc:	00c78633          	add	a2,a5,a2
    80009600:	fff7c683          	lbu	a3,-1(a5)
    80009604:	fff78793          	addi	a5,a5,-1
    80009608:	fff70713          	addi	a4,a4,-1
    8000960c:	00d70023          	sb	a3,0(a4)
    80009610:	fec798e3          	bne	a5,a2,80009600 <__memmove+0x12c>
    80009614:	00813403          	ld	s0,8(sp)
    80009618:	01010113          	addi	sp,sp,16
    8000961c:	00008067          	ret
    80009620:	02069713          	slli	a4,a3,0x20
    80009624:	02075713          	srli	a4,a4,0x20
    80009628:	00170713          	addi	a4,a4,1
    8000962c:	00e50733          	add	a4,a0,a4
    80009630:	00050793          	mv	a5,a0
    80009634:	0005c683          	lbu	a3,0(a1)
    80009638:	00178793          	addi	a5,a5,1
    8000963c:	00158593          	addi	a1,a1,1
    80009640:	fed78fa3          	sb	a3,-1(a5)
    80009644:	fee798e3          	bne	a5,a4,80009634 <__memmove+0x160>
    80009648:	f89ff06f          	j	800095d0 <__memmove+0xfc>
	...
