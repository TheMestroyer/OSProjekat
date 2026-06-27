
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	da013103          	ld	sp,-608(sp) # 8000cda0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6d4070ef          	jal	ra,800076f0 <start>

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
    80001248:	191020ef          	jal	ra,80003bd8 <HandleInterupt>

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
    80001364:	a7890913          	addi	s2,s2,-1416 # 8000cdd8 <mutex>
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
    800013c0:	a1453503          	ld	a0,-1516(a0) # 8000cdd0 <done>
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
    8000146c:	97050513          	addi	a0,a0,-1680 # 8000cdd8 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	250080e7          	jalr	592(ra) # 800016c0 <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000c517          	auipc	a0,0xc
    80001480:	95450513          	addi	a0,a0,-1708 # 8000cdd0 <done>
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
    800014d4:	0000c497          	auipc	s1,0xc
    800014d8:	8fc48493          	addi	s1,s1,-1796 # 8000cdd0 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	28c080e7          	jalr	652(ra) # 80001770 <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000c517          	auipc	a0,0xc
    800014f0:	8ec53503          	ld	a0,-1812(a0) # 8000cdd8 <mutex>
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
    8000185c:	2e0080e7          	jalr	736(ra) # 80002b38 <userMainK>
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
    800018b0:	748080e7          	jalr	1864(ra) # 80003ff4 <start_main_thread>
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
    80001ee0:	f3453503          	ld	a0,-204(a0) # 8000ce10 <_ZN9Scheduler7runningE>
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
    80001f08:	f0b7b623          	sd	a1,-244(a5) # 8000ce10 <_ZN9Scheduler7runningE>
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
    80001f44:	ed84b483          	ld	s1,-296(s1) # 8000ce18 <_ZN9Scheduler10deadThreadE>
    80001f48:	02048e63          	beqz	s1,80001f84 <_ZN9Scheduler8freeDeadEv+0x58>
    deadThread = nullptr;
    80001f4c:	0000b797          	auipc	a5,0xb
    80001f50:	ec07b623          	sd	zero,-308(a5) # 8000ce18 <_ZN9Scheduler10deadThreadE>
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    80001f54:	0604b783          	ld	a5,96(s1)
    80001f58:	00078c63          	beqz	a5,80001f70 <_ZN9Scheduler8freeDeadEv+0x44>
    80001f5c:	00002097          	auipc	ra,0x2
    80001f60:	ac8080e7          	jalr	-1336(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f64:	0604b583          	ld	a1,96(s1)
    80001f68:	00002097          	auipc	ra,0x2
    80001f6c:	bb4080e7          	jalr	-1100(ra) # 80003b1c <_ZN15MemoryAllocator12FreeFragmentEPv>
    MemoryAllocator::GetInstance().FreeFragment(dead);
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	ab4080e7          	jalr	-1356(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f78:	00048593          	mv	a1,s1
    80001f7c:	00002097          	auipc	ra,0x2
    80001f80:	ba0080e7          	jalr	-1120(ra) # 80003b1c <_ZN15MemoryAllocator12FreeFragmentEPv>
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
    80001fc4:	e5078793          	addi	a5,a5,-432 # 8000ce10 <_ZN9Scheduler7runningE>
    80001fc8:	00e787b3          	add	a5,a5,a4
    80001fcc:	0107b903          	ld	s2,16(a5)
    80001fd0:	06090863          	beqz	s2,80002040 <_ZN9Scheduler7GetNextEv+0xa8>
        readyHead[i] = toRet->getNextInQueue();
    80001fd4:	00090513          	mv	a0,s2
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	dd0080e7          	jalr	-560(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    80001fe0:	00349713          	slli	a4,s1,0x3
    80001fe4:	0000b797          	auipc	a5,0xb
    80001fe8:	e2c78793          	addi	a5,a5,-468 # 8000ce10 <_ZN9Scheduler7runningE>
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
    80002050:	dc478793          	addi	a5,a5,-572 # 8000ce10 <_ZN9Scheduler7runningE>
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
    800020ec:	d2898993          	addi	s3,s3,-728 # 8000ce10 <_ZN9Scheduler7runningE>
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
    80002120:	cf478793          	addi	a5,a5,-780 # 8000ce10 <_ZN9Scheduler7runningE>
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
    80002150:	cc478793          	addi	a5,a5,-828 # 8000ce10 <_ZN9Scheduler7runningE>
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
    800021f4:	c2a7b423          	sd	a0,-984(a5) # 8000ce18 <_ZN9Scheduler10deadThreadE>
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
    t->finished=true;
    80002254:	00100793          	li	a5,1
    80002258:	00f48c23          	sb	a5,24(s1)
    yield(t, next);
    8000225c:	00090593          	mv	a1,s2
    80002260:	00048513          	mv	a0,s1
    80002264:	00000097          	auipc	ra,0x0
    80002268:	c8c080e7          	jalr	-884(ra) # 80001ef0 <_ZN9Scheduler5yieldEP7KThreadS1_>
    8000226c:	fa5ff06f          	j	80002210 <_ZN9Scheduler10ThreadExitEP7KThread+0x3c>

0000000080002270 <_ZN9Scheduler12PutPreemptedEP7KThread>:
void Scheduler::PutPreempted(KThread* thread) {
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00113423          	sd	ra,8(sp)
    80002278:	00813023          	sd	s0,0(sp)
    8000227c:	01010413          	addi	s0,sp,16
    if (thread->priority < LEVELS - 1) thread->priority++;
    80002280:	04854783          	lbu	a5,72(a0)
    80002284:	00200713          	li	a4,2
    80002288:	00f76663          	bltu	a4,a5,80002294 <_ZN9Scheduler12PutPreemptedEP7KThread+0x24>
    8000228c:	0017879b          	addiw	a5,a5,1
    80002290:	04f50423          	sb	a5,72(a0)
    Put(thread);
    80002294:	00000097          	auipc	ra,0x0
    80002298:	e20080e7          	jalr	-480(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
}
    8000229c:	00813083          	ld	ra,8(sp)
    800022a0:	00013403          	ld	s0,0(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    800022b8:	0000b797          	auipc	a5,0xb
    800022bc:	af07b783          	ld	a5,-1296(a5) # 8000cda8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800022c0:	00778793          	addi	a5,a5,7
    800022c4:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    800022c8:	0000b717          	auipc	a4,0xb
    800022cc:	b8f73c23          	sd	a5,-1128(a4) # 8000ce60 <_ZN9Scheduler12stack_cursorE>
}
    800022d0:	00813403          	ld	s0,8(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    800022dc:	fe010113          	addi	sp,sp,-32
    800022e0:	00113c23          	sd	ra,24(sp)
    800022e4:	00813823          	sd	s0,16(sp)
    800022e8:	00913423          	sd	s1,8(sp)
    800022ec:	02010413          	addi	s0,sp,32
    SetupStartStack();
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	fbc080e7          	jalr	-68(ra) # 800022ac <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	72c080e7          	jalr	1836(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80002300:	18000593          	li	a1,384
    80002304:	00001097          	auipc	ra,0x1
    80002308:	77c080e7          	jalr	1916(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
    8000230c:	0000b497          	auipc	s1,0xb
    80002310:	b0448493          	addi	s1,s1,-1276 # 8000ce10 <_ZN9Scheduler7runningE>
    80002314:	00a4b023          	sd	a0,0(s1)
    running->init();
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	998080e7          	jalr	-1640(ra) # 80001cb0 <_ZN7KThread4initEv>
    setupStartContext(running->getContext());
    80002320:	0004b503          	ld	a0,0(s1)
    80002324:	00000097          	auipc	ra,0x0
    80002328:	a68080e7          	jalr	-1432(ra) # 80001d8c <_ZN7KThread10getContextEv>
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	df8080e7          	jalr	-520(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002334:	00200793          	li	a5,2
    80002338:	0000a717          	auipc	a4,0xa
    8000233c:	72f73c23          	sd	a5,1848(a4) # 8000ca70 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002340:	00001097          	auipc	ra,0x1
    80002344:	6e4080e7          	jalr	1764(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80002348:	18000593          	li	a1,384
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	734080e7          	jalr	1844(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002354:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	958080e7          	jalr	-1704(ra) # 80001cb0 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002360:	00000797          	auipc	a5,0x0
    80002364:	b5478793          	addi	a5,a5,-1196 # 80001eb4 <_ZL8idleBodyPv>
    80002368:	00f4b023          	sd	a5,0(s1)
    8000236c:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002370:	00001097          	auipc	ra,0x1
    80002374:	6b4080e7          	jalr	1716(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80002378:	000085b7          	lui	a1,0x8
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	704080e7          	jalr	1796(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    80002384:	00008637          	lui	a2,0x8
    80002388:	00c50633          	add	a2,a0,a2
    8000238c:	00000593          	li	a1,0
    80002390:	00048513          	mv	a0,s1
    80002394:	00000097          	auipc	ra,0x0
    80002398:	ad4080e7          	jalr	-1324(ra) # 80001e68 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    8000239c:	00048513          	mv	a0,s1
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	d14080e7          	jalr	-748(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
}
    800023a8:	01813083          	ld	ra,24(sp)
    800023ac:	01013403          	ld	s0,16(sp)
    800023b0:	00813483          	ld	s1,8(sp)
    800023b4:	02010113          	addi	sp,sp,32
    800023b8:	00008067          	ret

00000000800023bc <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    800023c8:	03053783          	ld	a5,48(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    800023cc:	06f53c23          	sd	a5,120(a0)
}
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    800023dc:	fd010113          	addi	sp,sp,-48
    800023e0:	02113423          	sd	ra,40(sp)
    800023e4:	02813023          	sd	s0,32(sp)
    800023e8:	00913c23          	sd	s1,24(sp)
    800023ec:	01213823          	sd	s2,16(sp)
    800023f0:	01313423          	sd	s3,8(sp)
    800023f4:	01413023          	sd	s4,0(sp)
    800023f8:	03010413          	addi	s0,sp,48
    800023fc:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80002400:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    80002404:	0000b797          	auipc	a5,0xb
    80002408:	a647b783          	ld	a5,-1436(a5) # 8000ce68 <_ZN9Scheduler10sleepQueueE>
    8000240c:	04078e63          	beqz	a5,80002468 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80002410:	0407b703          	ld	a4,64(a5)
    80002414:	04070063          	beqz	a4,80002454 <_ZN9Scheduler9timerTickEP7KThread+0x78>
    80002418:	fff70713          	addi	a4,a4,-1
    8000241c:	04e7b023          	sd	a4,64(a5)
    80002420:	0340006f          	j	80002454 <_ZN9Scheduler9timerTickEP7KThread+0x78>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    80002424:	00048513          	mv	a0,s1
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	980080e7          	jalr	-1664(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    80002430:	0000b797          	auipc	a5,0xb
    80002434:	a2a7bc23          	sd	a0,-1480(a5) # 8000ce68 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    80002438:	00000593          	li	a1,0
    8000243c:	00048513          	mv	a0,s1
    80002440:	00000097          	auipc	ra,0x0
    80002444:	9a0080e7          	jalr	-1632(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    80002448:	00048513          	mv	a0,s1
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	c68080e7          	jalr	-920(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80002454:	0000b497          	auipc	s1,0xb
    80002458:	a144b483          	ld	s1,-1516(s1) # 8000ce68 <_ZN9Scheduler10sleepQueueE>
    8000245c:	00048663          	beqz	s1,80002468 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
    80002460:	0404b783          	ld	a5,64(s1)
    80002464:	fc0780e3          	beqz	a5,80002424 <_ZN9Scheduler9timerTickEP7KThread+0x48>
        }
    }

    if (current == nullptr) return;
    80002468:	12090e63          	beqz	s2,800025a4 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    8000246c:	0000a797          	auipc	a5,0xa
    80002470:	6047b783          	ld	a5,1540(a5) # 8000ca70 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002474:	00078863          	beqz	a5,80002484 <_ZN9Scheduler9timerTickEP7KThread+0xa8>
    80002478:	fff78793          	addi	a5,a5,-1
    8000247c:	0000a717          	auipc	a4,0xa
    80002480:	5ef73a23          	sd	a5,1524(a4) # 8000ca70 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80002484:	0000a797          	auipc	a5,0xa
    80002488:	5ec7b783          	ld	a5,1516(a5) # 8000ca70 <_ZN9Scheduler21runningThreadTimeLeftE>
    8000248c:	10079c63          	bnez	a5,800025a4 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (++agingTick >= 100) {
    80002490:	0000b717          	auipc	a4,0xb
    80002494:	98070713          	addi	a4,a4,-1664 # 8000ce10 <_ZN9Scheduler7runningE>
    80002498:	06072783          	lw	a5,96(a4)
    8000249c:	0017879b          	addiw	a5,a5,1
    800024a0:	0007869b          	sext.w	a3,a5
    800024a4:	06f72023          	sw	a5,96(a4)
    800024a8:	06300793          	li	a5,99
    800024ac:	0cd7d063          	bge	a5,a3,8000256c <_ZN9Scheduler9timerTickEP7KThread+0x190>
        agingTick = 0;
    800024b0:	0000b797          	auipc	a5,0xb
    800024b4:	9c07a023          	sw	zero,-1600(a5) # 8000ce70 <_ZN9Scheduler9agingTickE>
        for (int i = 1; i < LEVELS; i++) {
    800024b8:	00100493          	li	s1,1
    800024bc:	0600006f          	j	8000251c <_ZN9Scheduler9timerTickEP7KThread+0x140>
            if (readyHead[i] == nullptr) continue;
            KThread* curr = readyHead[i];
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
            if (readyTail[0] != nullptr) {
    800024c0:	0000b517          	auipc	a0,0xb
    800024c4:	98053503          	ld	a0,-1664(a0) # 8000ce40 <_ZN9Scheduler9readyTailE>
    800024c8:	08050463          	beqz	a0,80002550 <_ZN9Scheduler9timerTickEP7KThread+0x174>
                readyTail[0]->setNextInQueue(readyHead[i]);
    800024cc:	0000ba17          	auipc	s4,0xb
    800024d0:	944a0a13          	addi	s4,s4,-1724 # 8000ce10 <_ZN9Scheduler7runningE>
    800024d4:	00349993          	slli	s3,s1,0x3
    800024d8:	013a09b3          	add	s3,s4,s3
    800024dc:	0109b583          	ld	a1,16(s3)
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	900080e7          	jalr	-1792(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
                readyHead[i]->setPrevInQueue(readyTail[0]);
    800024e8:	030a3583          	ld	a1,48(s4)
    800024ec:	0109b503          	ld	a0,16(s3)
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	90c080e7          	jalr	-1780(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
            } else {
                readyHead[0] = readyHead[i];
            }
            readyTail[0] = readyTail[i];
    800024f8:	0000b717          	auipc	a4,0xb
    800024fc:	91870713          	addi	a4,a4,-1768 # 8000ce10 <_ZN9Scheduler7runningE>
    80002500:	00349793          	slli	a5,s1,0x3
    80002504:	00f707b3          	add	a5,a4,a5
    80002508:	0307b683          	ld	a3,48(a5)
    8000250c:	02d73823          	sd	a3,48(a4)
            readyHead[i] = readyTail[i] = nullptr;
    80002510:	0207b823          	sd	zero,48(a5)
    80002514:	0007b823          	sd	zero,16(a5)
        for (int i = 1; i < LEVELS; i++) {
    80002518:	0014849b          	addiw	s1,s1,1
    8000251c:	00300793          	li	a5,3
    80002520:	0497c663          	blt	a5,s1,8000256c <_ZN9Scheduler9timerTickEP7KThread+0x190>
            if (readyHead[i] == nullptr) continue;
    80002524:	00349713          	slli	a4,s1,0x3
    80002528:	0000b797          	auipc	a5,0xb
    8000252c:	8e878793          	addi	a5,a5,-1816 # 8000ce10 <_ZN9Scheduler7runningE>
    80002530:	00e787b3          	add	a5,a5,a4
    80002534:	0107b503          	ld	a0,16(a5)
    80002538:	fe0500e3          	beqz	a0,80002518 <_ZN9Scheduler9timerTickEP7KThread+0x13c>
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
    8000253c:	f80502e3          	beqz	a0,800024c0 <_ZN9Scheduler9timerTickEP7KThread+0xe4>
    80002540:	04050423          	sb	zero,72(a0)
    80002544:	00000097          	auipc	ra,0x0
    80002548:	864080e7          	jalr	-1948(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    8000254c:	ff1ff06f          	j	8000253c <_ZN9Scheduler9timerTickEP7KThread+0x160>
                readyHead[0] = readyHead[i];
    80002550:	0000b717          	auipc	a4,0xb
    80002554:	8c070713          	addi	a4,a4,-1856 # 8000ce10 <_ZN9Scheduler7runningE>
    80002558:	00349793          	slli	a5,s1,0x3
    8000255c:	00f707b3          	add	a5,a4,a5
    80002560:	0107b783          	ld	a5,16(a5)
    80002564:	00f73823          	sd	a5,16(a4)
    80002568:	f91ff06f          	j	800024f8 <_ZN9Scheduler9timerTickEP7KThread+0x11c>
        }
    }

    KThread* next = GetNext();
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	a2c080e7          	jalr	-1492(ra) # 80001f98 <_ZN9Scheduler7GetNextEv>
    80002574:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002578:	00200793          	li	a5,2
    8000257c:	0000a717          	auipc	a4,0xa
    80002580:	4ef73a23          	sd	a5,1268(a4) # 8000ca70 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002584:	02050063          	beqz	a0,800025a4 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>
    PutPreempted(current);
    80002588:	00090513          	mv	a0,s2
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	ce4080e7          	jalr	-796(ra) # 80002270 <_ZN9Scheduler12PutPreemptedEP7KThread>
    yield(current, next);
    80002594:	00048593          	mv	a1,s1
    80002598:	00090513          	mv	a0,s2
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	954080e7          	jalr	-1708(ra) # 80001ef0 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    800025a4:	02813083          	ld	ra,40(sp)
    800025a8:	02013403          	ld	s0,32(sp)
    800025ac:	01813483          	ld	s1,24(sp)
    800025b0:	01013903          	ld	s2,16(sp)
    800025b4:	00813983          	ld	s3,8(sp)
    800025b8:	00013a03          	ld	s4,0(sp)
    800025bc:	03010113          	addi	sp,sp,48
    800025c0:	00008067          	ret

00000000800025c4 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    800025c4:	fd010113          	addi	sp,sp,-48
    800025c8:	02113423          	sd	ra,40(sp)
    800025cc:	02813023          	sd	s0,32(sp)
    800025d0:	00913c23          	sd	s1,24(sp)
    800025d4:	01213823          	sd	s2,16(sp)
    800025d8:	01313423          	sd	s3,8(sp)
    800025dc:	01413023          	sd	s4,0(sp)
    800025e0:	03010413          	addi	s0,sp,48
    800025e4:	00050a13          	mv	s4,a0
    800025e8:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    800025ec:	0000b497          	auipc	s1,0xb
    800025f0:	87c4b483          	ld	s1,-1924(s1) # 8000ce68 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    800025f4:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    800025f8:	02048463          	beqz	s1,80002620 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    800025fc:	0404b783          	ld	a5,64(s1)
    80002600:	02f96063          	bltu	s2,a5,80002620 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    80002604:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    80002608:	00048513          	mv	a0,s1
    8000260c:	fffff097          	auipc	ra,0xfffff
    80002610:	79c080e7          	jalr	1948(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    80002614:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    80002618:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    8000261c:	fddff06f          	j	800025f8 <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    80002620:	052a3023          	sd	s2,64(s4)
    thread->setNextInQueue(current);
    80002624:	00048593          	mv	a1,s1
    80002628:	000a0513          	mv	a0,s4
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	7b4080e7          	jalr	1972(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    80002634:	04098263          	beqz	s3,80002678 <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    80002638:	000a0593          	mv	a1,s4
    8000263c:	00098513          	mv	a0,s3
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	7a0080e7          	jalr	1952(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    80002648:	00048863          	beqz	s1,80002658 <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    8000264c:	0404b583          	ld	a1,64(s1)
    80002650:	41258933          	sub	s2,a1,s2
    80002654:	0524b023          	sd	s2,64(s1)
}
    80002658:	02813083          	ld	ra,40(sp)
    8000265c:	02013403          	ld	s0,32(sp)
    80002660:	01813483          	ld	s1,24(sp)
    80002664:	01013903          	ld	s2,16(sp)
    80002668:	00813983          	ld	s3,8(sp)
    8000266c:	00013a03          	ld	s4,0(sp)
    80002670:	03010113          	addi	sp,sp,48
    80002674:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    80002678:	0000a797          	auipc	a5,0xa
    8000267c:	7f47b823          	sd	s4,2032(a5) # 8000ce68 <_ZN9Scheduler10sleepQueueE>
    80002680:	fc9ff06f          	j	80002648 <_ZN9Scheduler5sleepEP7KThreadm+0x84>

0000000080002684 <_ZN9Scheduler10joinThreadEP7KThread>:

void Scheduler::joinThread(KThread* joiningThread) {
    if (joiningThread == nullptr||joiningThread->finished) return;
    80002684:	00050863          	beqz	a0,80002694 <_ZN9Scheduler10joinThreadEP7KThread+0x10>
    80002688:	00050793          	mv	a5,a0
    8000268c:	01854703          	lbu	a4,24(a0)
    80002690:	00070463          	beqz	a4,80002698 <_ZN9Scheduler10joinThreadEP7KThread+0x14>
    80002694:	00008067          	ret
void Scheduler::joinThread(KThread* joiningThread) {
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	00813023          	sd	s0,0(sp)
    800026a4:	01010413          	addi	s0,sp,16
    joiningThread->waitingThread = running;
    800026a8:	0000a517          	auipc	a0,0xa
    800026ac:	76853503          	ld	a0,1896(a0) # 8000ce10 <_ZN9Scheduler7runningE>
    800026b0:	04a7b823          	sd	a0,80(a5)
    running->stopperThread = joiningThread;
    800026b4:	04f53c23          	sd	a5,88(a0)
    blockCurrent(running);
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	9b0080e7          	jalr	-1616(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>

    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    800026e0:	0000a517          	auipc	a0,0xa
    800026e4:	79850513          	addi	a0,a0,1944 # 8000ce78 <_ZN7Konsole11outputItemsE>
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	038080e7          	jalr	56(ra) # 80001720 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    800026f0:	0000a797          	auipc	a5,0xa
    800026f4:	6907b783          	ld	a5,1680(a5) # 8000cd80 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026f8:	0007b783          	ld	a5,0(a5)
    800026fc:	0007c783          	lbu	a5,0(a5)
    80002700:	0ff7f793          	andi	a5,a5,255
    80002704:	0207f793          	andi	a5,a5,32
    80002708:	fe0784e3          	beqz	a5,800026f0 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    8000270c:	0000a717          	auipc	a4,0xa
    80002710:	76c70713          	addi	a4,a4,1900 # 8000ce78 <_ZN7Konsole11outputItemsE>
    80002714:	01872783          	lw	a5,24(a4)
    80002718:	01c72703          	lw	a4,28(a4)
    8000271c:	fce782e3          	beq	a5,a4,800026e0 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002720:	0000a697          	auipc	a3,0xa
    80002724:	75868693          	addi	a3,a3,1880 # 8000ce78 <_ZN7Konsole11outputItemsE>
    80002728:	00f68733          	add	a4,a3,a5
    8000272c:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    80002730:	0017879b          	addiw	a5,a5,1
    80002734:	41f7d71b          	sraiw	a4,a5,0x1f
    80002738:	0187571b          	srliw	a4,a4,0x18
    8000273c:	00e787bb          	addw	a5,a5,a4
    80002740:	0ff7f793          	andi	a5,a5,255
    80002744:	40e787bb          	subw	a5,a5,a4
    80002748:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    8000274c:	0000a797          	auipc	a5,0xa
    80002750:	64c7b783          	ld	a5,1612(a5) # 8000cd98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002754:	0007b783          	ld	a5,0(a5)
    80002758:	00c78023          	sb	a2,0(a5)
    8000275c:	f85ff06f          	j	800026e0 <_ZN7Konsole16outputThreadBodyEPv+0x10>

0000000080002760 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    80002760:	fe010113          	addi	sp,sp,-32
    80002764:	00113c23          	sd	ra,24(sp)
    80002768:	00813823          	sd	s0,16(sp)
    8000276c:	00913423          	sd	s1,8(sp)
    80002770:	02010413          	addi	s0,sp,32
    80002774:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80002778:	00000593          	li	a1,0
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	664080e7          	jalr	1636(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    80002784:	0000b597          	auipc	a1,0xb
    80002788:	8145b583          	ld	a1,-2028(a1) # 8000cf98 <_ZN7Konsole14getcWaiterTailE>
    8000278c:	04058063          	beqz	a1,800027cc <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    80002790:	00048513          	mv	a0,s1
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	668080e7          	jalr	1640(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    8000279c:	00048593          	mv	a1,s1
    800027a0:	0000a517          	auipc	a0,0xa
    800027a4:	7f853503          	ld	a0,2040(a0) # 8000cf98 <_ZN7Konsole14getcWaiterTailE>
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	638080e7          	jalr	1592(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    800027b0:	0000a797          	auipc	a5,0xa
    800027b4:	7e97b423          	sd	s1,2024(a5) # 8000cf98 <_ZN7Konsole14getcWaiterTailE>
}
    800027b8:	01813083          	ld	ra,24(sp)
    800027bc:	01013403          	ld	s0,16(sp)
    800027c0:	00813483          	ld	s1,8(sp)
    800027c4:	02010113          	addi	sp,sp,32
    800027c8:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800027cc:	00000593          	li	a1,0
    800027d0:	00048513          	mv	a0,s1
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	628080e7          	jalr	1576(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    800027dc:	0000a797          	auipc	a5,0xa
    800027e0:	7c97b223          	sd	s1,1988(a5) # 8000cfa0 <_ZN7Konsole14getcWaiterHeadE>
    800027e4:	fcdff06f          	j	800027b0 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

00000000800027e8 <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    800027e8:	fe010113          	addi	sp,sp,-32
    800027ec:	00113c23          	sd	ra,24(sp)
    800027f0:	00813823          	sd	s0,16(sp)
    800027f4:	00913423          	sd	s1,8(sp)
    800027f8:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    800027fc:	0000a497          	auipc	s1,0xa
    80002800:	7a44b483          	ld	s1,1956(s1) # 8000cfa0 <_ZN7Konsole14getcWaiterHeadE>
    80002804:	04048463          	beqz	s1,8000284c <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    80002808:	00048513          	mv	a0,s1
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	59c080e7          	jalr	1436(ra) # 80001da8 <_ZN7KThread14getNextInQueueEv>
    80002814:	0000a797          	auipc	a5,0xa
    80002818:	78a7b623          	sd	a0,1932(a5) # 8000cfa0 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    8000281c:	04050463          	beqz	a0,80002864 <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002820:	00000593          	li	a1,0
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	5d8080e7          	jalr	1496(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    8000282c:	00000593          	li	a1,0
    80002830:	00048513          	mv	a0,s1
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	5ac080e7          	jalr	1452(ra) # 80001de0 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    8000283c:	00000593          	li	a1,0
    80002840:	00048513          	mv	a0,s1
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	5b8080e7          	jalr	1464(ra) # 80001dfc <_ZN7KThread14setPrevInQueueEPS_>
}
    8000284c:	00048513          	mv	a0,s1
    80002850:	01813083          	ld	ra,24(sp)
    80002854:	01013403          	ld	s0,16(sp)
    80002858:	00813483          	ld	s1,8(sp)
    8000285c:	02010113          	addi	sp,sp,32
    80002860:	00008067          	ret
    else getcWaiterTail = nullptr;
    80002864:	0000a797          	auipc	a5,0xa
    80002868:	7207ba23          	sd	zero,1844(a5) # 8000cf98 <_ZN7Konsole14getcWaiterTailE>
    8000286c:	fc1ff06f          	j	8000282c <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

0000000080002870 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    80002870:	fe010113          	addi	sp,sp,-32
    80002874:	00113c23          	sd	ra,24(sp)
    80002878:	00813823          	sd	s0,16(sp)
    8000287c:	00913423          	sd	s1,8(sp)
    80002880:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    80002884:	0000a517          	auipc	a0,0xa
    80002888:	5f450513          	addi	a0,a0,1524 # 8000ce78 <_ZN7Konsole11outputItemsE>
    8000288c:	12052823          	sw	zero,304(a0)
    80002890:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    80002894:	00052c23          	sw	zero,24(a0)
    80002898:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    8000289c:	12053423          	sd	zero,296(a0)
    800028a0:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    800028a4:	00000593          	li	a1,0
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	044080e7          	jalr	68(ra) # 800018ec <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800028b0:	00001097          	auipc	ra,0x1
    800028b4:	174080e7          	jalr	372(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    800028b8:	18000593          	li	a1,384
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	1c4080e7          	jalr	452(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800028c4:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	3e8080e7          	jalr	1000(ra) # 80001cb0 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800028d0:	00000797          	auipc	a5,0x0
    800028d4:	e0078793          	addi	a5,a5,-512 # 800026d0 <_ZN7Konsole16outputThreadBodyEPv>
    800028d8:	00f4b023          	sd	a5,0(s1)
    800028dc:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800028e0:	00001097          	auipc	ra,0x1
    800028e4:	144080e7          	jalr	324(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    800028e8:	000085b7          	lui	a1,0x8
    800028ec:	00001097          	auipc	ra,0x1
    800028f0:	194080e7          	jalr	404(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    800028f4:	00008637          	lui	a2,0x8
    800028f8:	00c50633          	add	a2,a0,a2
    800028fc:	00000593          	li	a1,0
    80002900:	00048513          	mv	a0,s1
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	564080e7          	jalr	1380(ra) # 80001e68 <_ZN7KThread5setupEPS_Pm>
    outputThread->threadContext.sstatus |= (1UL << 8);
    8000290c:	1704b783          	ld	a5,368(s1)
    80002910:	1007e793          	ori	a5,a5,256
    80002914:	16f4b823          	sd	a5,368(s1)
    Scheduler::Put(outputThread);
    80002918:	00048513          	mv	a0,s1
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	798080e7          	jalr	1944(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
}
    80002924:	01813083          	ld	ra,24(sp)
    80002928:	01013403          	ld	s0,16(sp)
    8000292c:	00813483          	ld	s1,8(sp)
    80002930:	02010113          	addi	sp,sp,32
    80002934:	00008067          	ret

0000000080002938 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    80002938:	fe010113          	addi	sp,sp,-32
    8000293c:	00113c23          	sd	ra,24(sp)
    80002940:	00813823          	sd	s0,16(sp)
    80002944:	00913423          	sd	s1,8(sp)
    80002948:	01213023          	sd	s2,0(sp)
    8000294c:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    80002950:	00005097          	auipc	ra,0x5
    80002954:	5f4080e7          	jalr	1524(ra) # 80007f44 <plic_claim>
    80002958:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    8000295c:	00a00793          	li	a5,10
    80002960:	02f50663          	beq	a0,a5,8000298c <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    80002964:	0a049463          	bnez	s1,80002a0c <_ZN7Konsole15handleInterruptEv+0xd4>
}
    80002968:	01813083          	ld	ra,24(sp)
    8000296c:	01013403          	ld	s0,16(sp)
    80002970:	00813483          	ld	s1,8(sp)
    80002974:	00013903          	ld	s2,0(sp)
    80002978:	02010113          	addi	sp,sp,32
    8000297c:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    80002980:	0b253c23          	sd	s2,184(a0)
                Scheduler::Put(waiter);
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	730080e7          	jalr	1840(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    8000298c:	0000a797          	auipc	a5,0xa
    80002990:	3f47b783          	ld	a5,1012(a5) # 8000cd80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002994:	0007b783          	ld	a5,0(a5)
    80002998:	0007c783          	lbu	a5,0(a5)
    8000299c:	0017f793          	andi	a5,a5,1
    800029a0:	fc0782e3          	beqz	a5,80002964 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    800029a4:	0000a797          	auipc	a5,0xa
    800029a8:	3d47b783          	ld	a5,980(a5) # 8000cd78 <_GLOBAL_OFFSET_TABLE_+0x8>
    800029ac:	0007b783          	ld	a5,0(a5)
    800029b0:	0007c783          	lbu	a5,0(a5)
    800029b4:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	e30080e7          	jalr	-464(ra) # 800027e8 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    800029c0:	fc0510e3          	bnez	a0,80002980 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    800029c4:	0000a617          	auipc	a2,0xa
    800029c8:	4b460613          	addi	a2,a2,1204 # 8000ce78 <_ZN7Konsole11outputItemsE>
    800029cc:	13462683          	lw	a3,308(a2)
    800029d0:	0016879b          	addiw	a5,a3,1
    800029d4:	41f7d71b          	sraiw	a4,a5,0x1f
    800029d8:	0187571b          	srliw	a4,a4,0x18
    800029dc:	00e787bb          	addw	a5,a5,a4
    800029e0:	0ff7f793          	andi	a5,a5,255
    800029e4:	40e787bb          	subw	a5,a5,a4
    800029e8:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    800029ec:	13062603          	lw	a2,304(a2)
    800029f0:	f8e60ee3          	beq	a2,a4,8000298c <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    800029f4:	0000a717          	auipc	a4,0xa
    800029f8:	48470713          	addi	a4,a4,1156 # 8000ce78 <_ZN7Konsole11outputItemsE>
    800029fc:	00d706b3          	add	a3,a4,a3
    80002a00:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    80002a04:	12f72a23          	sw	a5,308(a4)
    80002a08:	f85ff06f          	j	8000298c <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    80002a0c:	00048513          	mv	a0,s1
    80002a10:	00005097          	auipc	ra,0x5
    80002a14:	56c080e7          	jalr	1388(ra) # 80007f7c <plic_complete>
}
    80002a18:	f51ff06f          	j	80002968 <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002a1c <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    80002a1c:	fe010113          	addi	sp,sp,-32
    80002a20:	00113c23          	sd	ra,24(sp)
    80002a24:	00813823          	sd	s0,16(sp)
    80002a28:	00913423          	sd	s1,8(sp)
    80002a2c:	02010413          	addi	s0,sp,32
    80002a30:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    80002a34:	0000a617          	auipc	a2,0xa
    80002a38:	44460613          	addi	a2,a2,1092 # 8000ce78 <_ZN7Konsole11outputItemsE>
    80002a3c:	01c62683          	lw	a3,28(a2)
    80002a40:	0016879b          	addiw	a5,a3,1
    80002a44:	41f7d71b          	sraiw	a4,a5,0x1f
    80002a48:	0187571b          	srliw	a4,a4,0x18
    80002a4c:	00e787bb          	addw	a5,a5,a4
    80002a50:	0ff7f793          	andi	a5,a5,255
    80002a54:	40e787bb          	subw	a5,a5,a4
    80002a58:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    80002a5c:	01862603          	lw	a2,24(a2)
    80002a60:	04e60063          	beq	a2,a4,80002aa0 <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    80002a64:	0000a517          	auipc	a0,0xa
    80002a68:	41450513          	addi	a0,a0,1044 # 8000ce78 <_ZN7Konsole11outputItemsE>
    80002a6c:	00d506b3          	add	a3,a0,a3
    80002a70:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    80002a74:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	00c080e7          	jalr	12(ra) # 80001a84 <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    80002a80:	02048a63          	beqz	s1,80002ab4 <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    80002a84:	0a04bc23          	sd	zero,184(s1)
    return 0;
    80002a88:	00000513          	li	a0,0
}
    80002a8c:	01813083          	ld	ra,24(sp)
    80002a90:	01013403          	ld	s0,16(sp)
    80002a94:	00813483          	ld	s1,8(sp)
    80002a98:	02010113          	addi	sp,sp,32
    80002a9c:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    80002aa0:	00050663          	beqz	a0,80002aac <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    80002aa4:	fff00793          	li	a5,-1
    80002aa8:	0af53c23          	sd	a5,184(a0)
        return -1;
    80002aac:	fff00513          	li	a0,-1
    80002ab0:	fddff06f          	j	80002a8c <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    80002ab4:	00000513          	li	a0,0
    80002ab8:	fd5ff06f          	j	80002a8c <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

0000000080002abc <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    80002abc:	0000a717          	auipc	a4,0xa
    80002ac0:	3bc70713          	addi	a4,a4,956 # 8000ce78 <_ZN7Konsole11outputItemsE>
    80002ac4:	13072783          	lw	a5,304(a4)
    80002ac8:	13472703          	lw	a4,308(a4)
    80002acc:	04e78063          	beq	a5,a4,80002b0c <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    80002ad0:	0000a617          	auipc	a2,0xa
    80002ad4:	3a860613          	addi	a2,a2,936 # 8000ce78 <_ZN7Konsole11outputItemsE>
    80002ad8:	00f60733          	add	a4,a2,a5
    80002adc:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    80002ae0:	0017879b          	addiw	a5,a5,1
    80002ae4:	41f7d71b          	sraiw	a4,a5,0x1f
    80002ae8:	0187571b          	srliw	a4,a4,0x18
    80002aec:	00e787bb          	addw	a5,a5,a4
    80002af0:	0ff7f793          	andi	a5,a5,255
    80002af4:	40e787bb          	subw	a5,a5,a4
    80002af8:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002afc:	00050463          	beqz	a0,80002b04 <_ZN7Konsole10getcKernelEP7KThread+0x48>
    80002b00:	0ad53c23          	sd	a3,184(a0)
        return (unsigned char)c;
    80002b04:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002b08:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    80002b0c:	ff010113          	addi	sp,sp,-16
    80002b10:	00113423          	sd	ra,8(sp)
    80002b14:	00813023          	sd	s0,0(sp)
    80002b18:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	c44080e7          	jalr	-956(ra) # 80002760 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    80002b24:	ffe00513          	li	a0,-2
    80002b28:	00813083          	ld	ra,8(sp)
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <userMainK>:
void userMain();
void myUserMain();

extern "C" void userMainK(void) {
    80002b38:	ff010113          	addi	sp,sp,-16
    80002b3c:	00113423          	sd	ra,8(sp)
    80002b40:	00813023          	sd	s0,0(sp)
    80002b44:	01010413          	addi	s0,sp,16
    const bool mytests=false;
    if (!mytests) {
        userMain();
    80002b48:	00003097          	auipc	ra,0x3
    80002b4c:	af4080e7          	jalr	-1292(ra) # 8000563c <_Z8userMainv>
    }else myUserMain();
}
    80002b50:	00813083          	ld	ra,8(sp)
    80002b54:	00013403          	ld	s0,0(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00113423          	sd	ra,8(sp)
    80002b68:	00813023          	sd	s0,0(sp)
    80002b6c:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    80002b70:	03e00513          	li	a0,62
    80002b74:	00001097          	auipc	ra,0x1
    80002b78:	db0080e7          	jalr	-592(ra) # 80003924 <_ZN7Console4putcEc>
    80002b7c:	00c0006f          	j	80002b88 <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    80002b80:	00001097          	auipc	ra,0x1
    80002b84:	da4080e7          	jalr	-604(ra) # 80003924 <_ZN7Console4putcEc>
        char c = Console::getc();
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	d74080e7          	jalr	-652(ra) # 800038fc <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002b90:	00d00793          	li	a5,13
    80002b94:	fef50ae3          	beq	a0,a5,80002b88 <_ZL8echoFuncPv+0x28>
    80002b98:	fe9ff06f          	j	80002b80 <_ZL8echoFuncPv+0x20>

0000000080002b9c <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    80002b9c:	fb010113          	addi	sp,sp,-80
    80002ba0:	04113423          	sd	ra,72(sp)
    80002ba4:	04813023          	sd	s0,64(sp)
    80002ba8:	02913c23          	sd	s1,56(sp)
    80002bac:	03213823          	sd	s2,48(sp)
    80002bb0:	03313423          	sd	s3,40(sp)
    80002bb4:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    80002bb8:	00400513          	li	a0,4
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	998080e7          	jalr	-1640(ra) # 80001554 <mem_alloc>
    80002bc4:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    80002bc8:	04300793          	li	a5,67
    80002bcc:	00f50023          	sb	a5,0(a0)
    80002bd0:	02b00793          	li	a5,43
    80002bd4:	00f500a3          	sb	a5,1(a0)
    80002bd8:	00f50123          	sb	a5,2(a0)
    80002bdc:	00a00793          	li	a5,10
    80002be0:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    80002be4:	04300513          	li	a0,67
    80002be8:	00001097          	auipc	ra,0x1
    80002bec:	d3c080e7          	jalr	-708(ra) # 80003924 <_ZN7Console4putcEc>
    80002bf0:	0014c503          	lbu	a0,1(s1)
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	d30080e7          	jalr	-720(ra) # 80003924 <_ZN7Console4putcEc>
    80002bfc:	0024c503          	lbu	a0,2(s1)
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	d24080e7          	jalr	-732(ra) # 80003924 <_ZN7Console4putcEc>
    80002c08:	0034c503          	lbu	a0,3(s1)
    80002c0c:	00001097          	auipc	ra,0x1
    80002c10:	d18080e7          	jalr	-744(ra) # 80003924 <_ZN7Console4putcEc>
    mem_free(buf);
    80002c14:	00048513          	mv	a0,s1
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	968080e7          	jalr	-1688(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002c20:	00100593          	li	a1,1
    80002c24:	fc040513          	addi	a0,s0,-64
    80002c28:	00001097          	auipc	ra,0x1
    80002c2c:	bac080e7          	jalr	-1108(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    80002c30:	00000593          	li	a1,0
    80002c34:	fb040513          	addi	a0,s0,-80
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	b9c080e7          	jalr	-1124(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002c40:	03800513          	li	a0,56
    80002c44:	00001097          	auipc	ra,0x1
    80002c48:	9d4080e7          	jalr	-1580(ra) # 80003618 <_Znwm>
    80002c4c:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c50:	00001097          	auipc	ra,0x1
    80002c54:	ab0080e7          	jalr	-1360(ra) # 80003700 <_ZN6ThreadC1Ev>
    80002c58:	0000a797          	auipc	a5,0xa
    80002c5c:	e3078793          	addi	a5,a5,-464 # 8000ca88 <_ZTV6Worker+0x10>
    80002c60:	00f9b023          	sd	a5,0(s3)
    80002c64:	04100793          	li	a5,65
    80002c68:	02f98023          	sb	a5,32(s3)
    80002c6c:	fc040793          	addi	a5,s0,-64
    80002c70:	02f9b423          	sd	a5,40(s3)
    80002c74:	fb040793          	addi	a5,s0,-80
    80002c78:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    80002c7c:	03800513          	li	a0,56
    80002c80:	00001097          	auipc	ra,0x1
    80002c84:	998080e7          	jalr	-1640(ra) # 80003618 <_Znwm>
    80002c88:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	a74080e7          	jalr	-1420(ra) # 80003700 <_ZN6ThreadC1Ev>
    80002c94:	0000a797          	auipc	a5,0xa
    80002c98:	df478793          	addi	a5,a5,-524 # 8000ca88 <_ZTV6Worker+0x10>
    80002c9c:	00f93023          	sd	a5,0(s2)
    80002ca0:	04200793          	li	a5,66
    80002ca4:	02f90023          	sb	a5,32(s2)
    80002ca8:	fc040793          	addi	a5,s0,-64
    80002cac:	02f93423          	sd	a5,40(s2)
    80002cb0:	fb040793          	addi	a5,s0,-80
    80002cb4:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    80002cb8:	03800513          	li	a0,56
    80002cbc:	00001097          	auipc	ra,0x1
    80002cc0:	95c080e7          	jalr	-1700(ra) # 80003618 <_Znwm>
    80002cc4:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	a38080e7          	jalr	-1480(ra) # 80003700 <_ZN6ThreadC1Ev>
    80002cd0:	0000a797          	auipc	a5,0xa
    80002cd4:	db878793          	addi	a5,a5,-584 # 8000ca88 <_ZTV6Worker+0x10>
    80002cd8:	00f4b023          	sd	a5,0(s1)
    80002cdc:	04300793          	li	a5,67
    80002ce0:	02f48023          	sb	a5,32(s1)
    80002ce4:	fc040793          	addi	a5,s0,-64
    80002ce8:	02f4b423          	sd	a5,40(s1)
    80002cec:	fb040793          	addi	a5,s0,-80
    80002cf0:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    80002cf4:	00098513          	mv	a0,s3
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	a38080e7          	jalr	-1480(ra) # 80003730 <_ZN6Thread5startEv>
    80002d00:	00090513          	mv	a0,s2
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	a2c080e7          	jalr	-1492(ra) # 80003730 <_ZN6Thread5startEv>
    80002d0c:	00048513          	mv	a0,s1
    80002d10:	00001097          	auipc	ra,0x1
    80002d14:	a20080e7          	jalr	-1504(ra) # 80003730 <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002d18:	fb040513          	addi	a0,s0,-80
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	af0080e7          	jalr	-1296(ra) # 8000380c <_ZN9Semaphore4waitEv>
    80002d24:	fb040513          	addi	a0,s0,-80
    80002d28:	00001097          	auipc	ra,0x1
    80002d2c:	ae4080e7          	jalr	-1308(ra) # 8000380c <_ZN9Semaphore4waitEv>
    80002d30:	fb040513          	addi	a0,s0,-80
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	ad8080e7          	jalr	-1320(ra) # 8000380c <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002d3c:	00098a63          	beqz	s3,80002d50 <userMainCpp+0x1b4>
    80002d40:	0009b783          	ld	a5,0(s3)
    80002d44:	0087b783          	ld	a5,8(a5)
    80002d48:	00098513          	mv	a0,s3
    80002d4c:	000780e7          	jalr	a5
    80002d50:	00090a63          	beqz	s2,80002d64 <userMainCpp+0x1c8>
    80002d54:	00093783          	ld	a5,0(s2)
    80002d58:	0087b783          	ld	a5,8(a5)
    80002d5c:	00090513          	mv	a0,s2
    80002d60:	000780e7          	jalr	a5
    80002d64:	00048a63          	beqz	s1,80002d78 <userMainCpp+0x1dc>
    80002d68:	0004b783          	ld	a5,0(s1)
    80002d6c:	0087b783          	ld	a5,8(a5)
    80002d70:	00048513          	mv	a0,s1
    80002d74:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002d78:	00a00513          	li	a0,10
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	ba8080e7          	jalr	-1112(ra) # 80003924 <_ZN7Console4putcEc>
    80002d84:	04f00513          	li	a0,79
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	b9c080e7          	jalr	-1124(ra) # 80003924 <_ZN7Console4putcEc>
    80002d90:	04b00513          	li	a0,75
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	b90080e7          	jalr	-1136(ra) # 80003924 <_ZN7Console4putcEc>
    80002d9c:	00a00513          	li	a0,10
    80002da0:	00001097          	auipc	ra,0x1
    80002da4:	b84080e7          	jalr	-1148(ra) # 80003924 <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    80002da8:	02800513          	li	a0,40
    80002dac:	00001097          	auipc	ra,0x1
    80002db0:	86c080e7          	jalr	-1940(ra) # 80003618 <_Znwm>
    80002db4:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002db8:	00300593          	li	a1,3
    80002dbc:	00001097          	auipc	ra,0x1
    80002dc0:	ad4080e7          	jalr	-1324(ra) # 80003890 <_ZN14PeriodicThreadC1Em>
    80002dc4:	0000a797          	auipc	a5,0xa
    80002dc8:	cec78793          	addi	a5,a5,-788 # 8000cab0 <_ZTV6Ticker+0x10>
    80002dcc:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002dd0:	00048513          	mv	a0,s1
    80002dd4:	00001097          	auipc	ra,0x1
    80002dd8:	95c080e7          	jalr	-1700(ra) # 80003730 <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002ddc:	00f00513          	li	a0,15
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	9cc080e7          	jalr	-1588(ra) # 800037ac <_ZN6Thread5sleepEm>
    t->terminate();
    80002de8:	00048513          	mv	a0,s1
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	af4080e7          	jalr	-1292(ra) # 800038e0 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002df4:	00500513          	li	a0,5
    80002df8:	00001097          	auipc	ra,0x1
    80002dfc:	9b4080e7          	jalr	-1612(ra) # 800037ac <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002e00:	00a00513          	li	a0,10
    80002e04:	00001097          	auipc	ra,0x1
    80002e08:	b20080e7          	jalr	-1248(ra) # 80003924 <_ZN7Console4putcEc>
    delete t;
    80002e0c:	00048a63          	beqz	s1,80002e20 <userMainCpp+0x284>
    80002e10:	0004b783          	ld	a5,0(s1)
    80002e14:	0087b783          	ld	a5,8(a5)
    80002e18:	00048513          	mv	a0,s1
    80002e1c:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002e20:	02000513          	li	a0,32
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	7f4080e7          	jalr	2036(ra) # 80003618 <_Znwm>
    80002e2c:	00050493          	mv	s1,a0
    80002e30:	00000613          	li	a2,0
    80002e34:	00000597          	auipc	a1,0x0
    80002e38:	d2c58593          	addi	a1,a1,-724 # 80002b60 <_ZL8echoFuncPv>
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	894080e7          	jalr	-1900(ra) # 800036d0 <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002e44:	00048513          	mv	a0,s1
    80002e48:	00001097          	auipc	ra,0x1
    80002e4c:	8e8080e7          	jalr	-1816(ra) # 80003730 <_ZN6Thread5startEv>
    while (true) {}
    80002e50:	0000006f          	j	80002e50 <userMainCpp+0x2b4>
    80002e54:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002e58:	00098513          	mv	a0,s3
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	7e4080e7          	jalr	2020(ra) # 80003640 <_ZdlPv>
    Semaphore mx(1), done(0);
    80002e64:	fb040513          	addi	a0,s0,-80
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	778080e7          	jalr	1912(ra) # 800035e0 <_ZN9SemaphoreD1Ev>
    80002e70:	fc040513          	addi	a0,s0,-64
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	76c080e7          	jalr	1900(ra) # 800035e0 <_ZN9SemaphoreD1Ev>
    80002e7c:	00048513          	mv	a0,s1
    80002e80:	0000b097          	auipc	ra,0xb
    80002e84:	358080e7          	jalr	856(ra) # 8000e1d8 <_Unwind_Resume>
    80002e88:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002e8c:	00090513          	mv	a0,s2
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	7b0080e7          	jalr	1968(ra) # 80003640 <_ZdlPv>
    80002e98:	fcdff06f          	j	80002e64 <userMainCpp+0x2c8>
    80002e9c:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002ea0:	00048513          	mv	a0,s1
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	79c080e7          	jalr	1948(ra) # 80003640 <_ZdlPv>
    80002eac:	00090493          	mv	s1,s2
    80002eb0:	fb5ff06f          	j	80002e64 <userMainCpp+0x2c8>
    80002eb4:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	784080e7          	jalr	1924(ra) # 80003640 <_ZdlPv>
    80002ec4:	00090493          	mv	s1,s2
    80002ec8:	f9dff06f          	j	80002e64 <userMainCpp+0x2c8>
    80002ecc:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002ed0:	00048513          	mv	a0,s1
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	76c080e7          	jalr	1900(ra) # 80003640 <_ZdlPv>
    80002edc:	00090493          	mv	s1,s2
    80002ee0:	f85ff06f          	j	80002e64 <userMainCpp+0x2c8>
    80002ee4:	00050493          	mv	s1,a0
    80002ee8:	f7dff06f          	j	80002e64 <userMainCpp+0x2c8>
    80002eec:	00050493          	mv	s1,a0
    80002ef0:	f81ff06f          	j	80002e70 <userMainCpp+0x2d4>

0000000080002ef4 <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	00813023          	sd	s0,0(sp)
    80002f00:	01010413          	addi	s0,sp,16
    80002f04:	02e00513          	li	a0,46
    80002f08:	00001097          	auipc	ra,0x1
    80002f0c:	a1c080e7          	jalr	-1508(ra) # 80003924 <_ZN7Console4putcEc>
    80002f10:	00813083          	ld	ra,8(sp)
    80002f14:	00013403          	ld	s0,0(sp)
    80002f18:	01010113          	addi	sp,sp,16
    80002f1c:	00008067          	ret

0000000080002f20 <_ZN6Worker3runEv>:
    void run() override {
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00113c23          	sd	ra,24(sp)
    80002f28:	00813823          	sd	s0,16(sp)
    80002f2c:	00913423          	sd	s1,8(sp)
    80002f30:	01213023          	sd	s2,0(sp)
    80002f34:	02010413          	addi	s0,sp,32
    80002f38:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002f3c:	00000913          	li	s2,0
    80002f40:	0500006f          	j	80002f90 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002f44:	0284b503          	ld	a0,40(s1)
    80002f48:	00001097          	auipc	ra,0x1
    80002f4c:	8c4080e7          	jalr	-1852(ra) # 8000380c <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002f50:	05b00513          	li	a0,91
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	9d0080e7          	jalr	-1584(ra) # 80003924 <_ZN7Console4putcEc>
    80002f5c:	0204c503          	lbu	a0,32(s1)
    80002f60:	00001097          	auipc	ra,0x1
    80002f64:	9c4080e7          	jalr	-1596(ra) # 80003924 <_ZN7Console4putcEc>
    80002f68:	05d00513          	li	a0,93
    80002f6c:	00001097          	auipc	ra,0x1
    80002f70:	9b8080e7          	jalr	-1608(ra) # 80003924 <_ZN7Console4putcEc>
            mx->signal();
    80002f74:	0284b503          	ld	a0,40(s1)
    80002f78:	00001097          	auipc	ra,0x1
    80002f7c:	8c0080e7          	jalr	-1856(ra) # 80003838 <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002f80:	00200513          	li	a0,2
    80002f84:	00001097          	auipc	ra,0x1
    80002f88:	828080e7          	jalr	-2008(ra) # 800037ac <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002f8c:	0019091b          	addiw	s2,s2,1
    80002f90:	00200793          	li	a5,2
    80002f94:	fb27d8e3          	bge	a5,s2,80002f44 <_ZN6Worker3runEv+0x24>
        done->signal();
    80002f98:	0304b503          	ld	a0,48(s1)
    80002f9c:	00001097          	auipc	ra,0x1
    80002fa0:	89c080e7          	jalr	-1892(ra) # 80003838 <_ZN9Semaphore6signalEv>
    }
    80002fa4:	01813083          	ld	ra,24(sp)
    80002fa8:	01013403          	ld	s0,16(sp)
    80002fac:	00813483          	ld	s1,8(sp)
    80002fb0:	00013903          	ld	s2,0(sp)
    80002fb4:	02010113          	addi	sp,sp,32
    80002fb8:	00008067          	ret

0000000080002fbc <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00113423          	sd	ra,8(sp)
    80002fc4:	00813023          	sd	s0,0(sp)
    80002fc8:	01010413          	addi	s0,sp,16
    80002fcc:	0000a797          	auipc	a5,0xa
    80002fd0:	abc78793          	addi	a5,a5,-1348 # 8000ca88 <_ZTV6Worker+0x10>
    80002fd4:	00f53023          	sd	a5,0(a0)
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	570080e7          	jalr	1392(ra) # 80003548 <_ZN6ThreadD1Ev>
    80002fe0:	00813083          	ld	ra,8(sp)
    80002fe4:	00013403          	ld	s0,0(sp)
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00008067          	ret

0000000080002ff0 <_ZN6WorkerD0Ev>:
    80002ff0:	fe010113          	addi	sp,sp,-32
    80002ff4:	00113c23          	sd	ra,24(sp)
    80002ff8:	00813823          	sd	s0,16(sp)
    80002ffc:	00913423          	sd	s1,8(sp)
    80003000:	02010413          	addi	s0,sp,32
    80003004:	00050493          	mv	s1,a0
    80003008:	0000a797          	auipc	a5,0xa
    8000300c:	a8078793          	addi	a5,a5,-1408 # 8000ca88 <_ZTV6Worker+0x10>
    80003010:	00f53023          	sd	a5,0(a0)
    80003014:	00000097          	auipc	ra,0x0
    80003018:	534080e7          	jalr	1332(ra) # 80003548 <_ZN6ThreadD1Ev>
    8000301c:	00048513          	mv	a0,s1
    80003020:	00000097          	auipc	ra,0x0
    80003024:	620080e7          	jalr	1568(ra) # 80003640 <_ZdlPv>
    80003028:	01813083          	ld	ra,24(sp)
    8000302c:	01013403          	ld	s0,16(sp)
    80003030:	00813483          	ld	s1,8(sp)
    80003034:	02010113          	addi	sp,sp,32
    80003038:	00008067          	ret

000000008000303c <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    8000303c:	ff010113          	addi	sp,sp,-16
    80003040:	00113423          	sd	ra,8(sp)
    80003044:	00813023          	sd	s0,0(sp)
    80003048:	01010413          	addi	s0,sp,16
    int wait();
    int signal();
private:
    sem_t myHandle;
};

    8000304c:	0000a797          	auipc	a5,0xa
    80003050:	d447b783          	ld	a5,-700(a5) # 8000cd90 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003054:	01078793          	addi	a5,a5,16
    80003058:	00f53023          	sd	a5,0(a0)
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	4ec080e7          	jalr	1260(ra) # 80003548 <_ZN6ThreadD1Ev>
    80003064:	00813083          	ld	ra,8(sp)
    80003068:	00013403          	ld	s0,0(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_ZN6TickerD0Ev>:
    80003074:	fe010113          	addi	sp,sp,-32
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	00813823          	sd	s0,16(sp)
    80003080:	00913423          	sd	s1,8(sp)
    80003084:	02010413          	addi	s0,sp,32
    80003088:	00050493          	mv	s1,a0
    8000308c:	0000a797          	auipc	a5,0xa
    80003090:	d047b783          	ld	a5,-764(a5) # 8000cd90 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003094:	01078793          	addi	a5,a5,16
    80003098:	00f53023          	sd	a5,0(a0)
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	4ac080e7          	jalr	1196(ra) # 80003548 <_ZN6ThreadD1Ev>
    800030a4:	00048513          	mv	a0,s1
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	598080e7          	jalr	1432(ra) # 80003640 <_ZdlPv>
    800030b0:	01813083          	ld	ra,24(sp)
    800030b4:	01013403          	ld	s0,16(sp)
    800030b8:	00813483          	ld	s1,8(sp)
    800030bc:	02010113          	addi	sp,sp,32
    800030c0:	00008067          	ret

00000000800030c4 <_ZN6TestTh10testThBodyEPv>:
    void run() override {
        testThBody(nullptr);

    }
};
void TestTh::testThBody(void* arg) {
    800030c4:	fe010113          	addi	sp,sp,-32
    800030c8:	00113c23          	sd	ra,24(sp)
    800030cc:	00813823          	sd	s0,16(sp)
    800030d0:	00913423          	sd	s1,8(sp)
    800030d4:	02010413          	addi	s0,sp,32
    for (long long i=0; i < 5;i++) {
    800030d8:	00000493          	li	s1,0
    800030dc:	00400793          	li	a5,4
    800030e0:	0297c463          	blt	a5,s1,80003108 <_ZN6TestTh10testThBodyEPv+0x44>
        printString("a\n");
    800030e4:	00007517          	auipc	a0,0x7
    800030e8:	f3c50513          	addi	a0,a0,-196 # 8000a020 <CONSOLE_STATUS+0x10>
    800030ec:	00003097          	auipc	ra,0x3
    800030f0:	508080e7          	jalr	1288(ra) # 800065f4 <_Z11printStringPKc>
        sleep(10);
    800030f4:	00a00513          	li	a0,10
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	6b4080e7          	jalr	1716(ra) # 800037ac <_ZN6Thread5sleepEm>
    for (long long i=0; i < 5;i++) {
    80003100:	00148493          	addi	s1,s1,1
    80003104:	fd9ff06f          	j	800030dc <_ZN6TestTh10testThBodyEPv+0x18>
    }
    printString("Thread1 Finished\n");
    80003108:	00007517          	auipc	a0,0x7
    8000310c:	f2050513          	addi	a0,a0,-224 # 8000a028 <CONSOLE_STATUS+0x18>
    80003110:	00003097          	auipc	ra,0x3
    80003114:	4e4080e7          	jalr	1252(ra) # 800065f4 <_Z11printStringPKc>
    thread_dispatch();
    80003118:	ffffe097          	auipc	ra,0xffffe
    8000311c:	560080e7          	jalr	1376(ra) # 80001678 <thread_dispatch>
}
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	00813483          	ld	s1,8(sp)
    8000312c:	02010113          	addi	sp,sp,32
    80003130:	00008067          	ret

0000000080003134 <_ZN7TestTh211testTh2BodyEPv>:
        testTh2Body(nullptr);

    }
};

void TestTh2::testTh2Body(void* arg) {
    80003134:	fe010113          	addi	sp,sp,-32
    80003138:	00113c23          	sd	ra,24(sp)
    8000313c:	00813823          	sd	s0,16(sp)
    80003140:	00913423          	sd	s1,8(sp)
    80003144:	02010413          	addi	s0,sp,32
    for (long long i=0; i < 5;i++) {
    80003148:	00000493          	li	s1,0
    8000314c:	00400793          	li	a5,4
    80003150:	0297c463          	blt	a5,s1,80003178 <_ZN7TestTh211testTh2BodyEPv+0x44>
        printString("k\n");
    80003154:	00007517          	auipc	a0,0x7
    80003158:	eec50513          	addi	a0,a0,-276 # 8000a040 <CONSOLE_STATUS+0x30>
    8000315c:	00003097          	auipc	ra,0x3
    80003160:	498080e7          	jalr	1176(ra) # 800065f4 <_Z11printStringPKc>
        sleep(20);
    80003164:	01400513          	li	a0,20
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	644080e7          	jalr	1604(ra) # 800037ac <_ZN6Thread5sleepEm>
    for (long long i=0; i < 5;i++) {
    80003170:	00148493          	addi	s1,s1,1
    80003174:	fd9ff06f          	j	8000314c <_ZN7TestTh211testTh2BodyEPv+0x18>
    }
    printString("Thread2 Finished\n");
    80003178:	00007517          	auipc	a0,0x7
    8000317c:	ed050513          	addi	a0,a0,-304 # 8000a048 <CONSOLE_STATUS+0x38>
    80003180:	00003097          	auipc	ra,0x3
    80003184:	474080e7          	jalr	1140(ra) # 800065f4 <_Z11printStringPKc>
    thread_dispatch();
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	4f0080e7          	jalr	1264(ra) # 80001678 <thread_dispatch>
}
    80003190:	01813083          	ld	ra,24(sp)
    80003194:	01013403          	ld	s0,16(sp)
    80003198:	00813483          	ld	s1,8(sp)
    8000319c:	02010113          	addi	sp,sp,32
    800031a0:	00008067          	ret

00000000800031a4 <_ZN7TestTh311testTh3BodyEPv>:
    void run() override {
        testTh3Body(nullptr);

    }
};
void TestTh3::testTh3Body(void* arg) {
    800031a4:	ff010113          	addi	sp,sp,-16
    800031a8:	00113423          	sd	ra,8(sp)
    800031ac:	00813023          	sd	s0,0(sp)
    800031b0:	01010413          	addi	s0,sp,16
    printString("All Finished\n");
    800031b4:	00007517          	auipc	a0,0x7
    800031b8:	eac50513          	addi	a0,a0,-340 # 8000a060 <CONSOLE_STATUS+0x50>
    800031bc:	00003097          	auipc	ra,0x3
    800031c0:	438080e7          	jalr	1080(ra) # 800065f4 <_Z11printStringPKc>
    thread_dispatch();
    800031c4:	ffffe097          	auipc	ra,0xffffe
    800031c8:	4b4080e7          	jalr	1204(ra) # 80001678 <thread_dispatch>
}
    800031cc:	00813083          	ld	ra,8(sp)
    800031d0:	00013403          	ld	s0,0(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret

00000000800031dc <_Z10myUserMainv>:
void myUserMain() {
    800031dc:	fe010113          	addi	sp,sp,-32
    800031e0:	00113c23          	sd	ra,24(sp)
    800031e4:	00813823          	sd	s0,16(sp)
    800031e8:	00913423          	sd	s1,8(sp)
    800031ec:	01213023          	sd	s2,0(sp)
    800031f0:	02010413          	addi	s0,sp,32
    getc();
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	5b4080e7          	jalr	1460(ra) # 800017a8 <getc>
    printString("Hello World!");
    800031fc:	00007517          	auipc	a0,0x7
    80003200:	e7450513          	addi	a0,a0,-396 # 8000a070 <CONSOLE_STATUS+0x60>
    80003204:	00003097          	auipc	ra,0x3
    80003208:	3f0080e7          	jalr	1008(ra) # 800065f4 <_Z11printStringPKc>
    Thread* th1 = new TestTh();
    8000320c:	02000513          	li	a0,32
    80003210:	00000097          	auipc	ra,0x0
    80003214:	408080e7          	jalr	1032(ra) # 80003618 <_Znwm>
    80003218:	00050913          	mv	s2,a0
    TestTh():Thread() {}
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	4e4080e7          	jalr	1252(ra) # 80003700 <_ZN6ThreadC1Ev>
    80003224:	0000a797          	auipc	a5,0xa
    80003228:	8c478793          	addi	a5,a5,-1852 # 8000cae8 <_ZTV6TestTh+0x10>
    8000322c:	00f93023          	sd	a5,0(s2)
    Thread* th2 = new TestTh2();
    80003230:	02000513          	li	a0,32
    80003234:	00000097          	auipc	ra,0x0
    80003238:	3e4080e7          	jalr	996(ra) # 80003618 <_Znwm>
    8000323c:	00050493          	mv	s1,a0
    TestTh2():Thread() {}
    80003240:	00000097          	auipc	ra,0x0
    80003244:	4c0080e7          	jalr	1216(ra) # 80003700 <_ZN6ThreadC1Ev>
    80003248:	0000a797          	auipc	a5,0xa
    8000324c:	8c878793          	addi	a5,a5,-1848 # 8000cb10 <_ZTV7TestTh2+0x10>
    80003250:	00f4b023          	sd	a5,0(s1)
    th1->start();
    80003254:	00090513          	mv	a0,s2
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	4d8080e7          	jalr	1240(ra) # 80003730 <_ZN6Thread5startEv>
    th1->dispatch();
    80003260:	00000097          	auipc	ra,0x0
    80003264:	524080e7          	jalr	1316(ra) # 80003784 <_ZN6Thread8dispatchEv>
    th2->start();
    80003268:	00048513          	mv	a0,s1
    8000326c:	00000097          	auipc	ra,0x0
    80003270:	4c4080e7          	jalr	1220(ra) # 80003730 <_ZN6Thread5startEv>
    th2->dispatch();
    80003274:	00000097          	auipc	ra,0x0
    80003278:	510080e7          	jalr	1296(ra) # 80003784 <_ZN6Thread8dispatchEv>

    Thread::join(th2);
    8000327c:	00048513          	mv	a0,s1
    80003280:	00000097          	auipc	ra,0x0
    80003284:	5e4080e7          	jalr	1508(ra) # 80003864 <_ZN6Thread4joinEPS_>
    Thread::join(th1);
    80003288:	00090513          	mv	a0,s2
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	5d8080e7          	jalr	1496(ra) # 80003864 <_ZN6Thread4joinEPS_>
    Thread* th3 = new TestTh3();
    80003294:	02000513          	li	a0,32
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	380080e7          	jalr	896(ra) # 80003618 <_Znwm>
    800032a0:	00050493          	mv	s1,a0
    TestTh3():Thread() {}
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	45c080e7          	jalr	1116(ra) # 80003700 <_ZN6ThreadC1Ev>
    800032ac:	0000a797          	auipc	a5,0xa
    800032b0:	88c78793          	addi	a5,a5,-1908 # 8000cb38 <_ZTV7TestTh3+0x10>
    800032b4:	00f4b023          	sd	a5,0(s1)
    th3->start();
    800032b8:	00048513          	mv	a0,s1
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	474080e7          	jalr	1140(ra) # 80003730 <_ZN6Thread5startEv>
    th3->dispatch();
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	4c0080e7          	jalr	1216(ra) # 80003784 <_ZN6Thread8dispatchEv>
    Thread::join(th3);
    800032cc:	00048513          	mv	a0,s1
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	594080e7          	jalr	1428(ra) # 80003864 <_ZN6Thread4joinEPS_>

    800032d8:	01813083          	ld	ra,24(sp)
    800032dc:	01013403          	ld	s0,16(sp)
    800032e0:	00813483          	ld	s1,8(sp)
    800032e4:	00013903          	ld	s2,0(sp)
    800032e8:	02010113          	addi	sp,sp,32
    800032ec:	00008067          	ret
    800032f0:	00050493          	mv	s1,a0
    Thread* th1 = new TestTh();
    800032f4:	00090513          	mv	a0,s2
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	348080e7          	jalr	840(ra) # 80003640 <_ZdlPv>
    80003300:	00048513          	mv	a0,s1
    80003304:	0000b097          	auipc	ra,0xb
    80003308:	ed4080e7          	jalr	-300(ra) # 8000e1d8 <_Unwind_Resume>
    8000330c:	00050913          	mv	s2,a0
    Thread* th2 = new TestTh2();
    80003310:	00048513          	mv	a0,s1
    80003314:	00000097          	auipc	ra,0x0
    80003318:	32c080e7          	jalr	812(ra) # 80003640 <_ZdlPv>
    8000331c:	00090513          	mv	a0,s2
    80003320:	0000b097          	auipc	ra,0xb
    80003324:	eb8080e7          	jalr	-328(ra) # 8000e1d8 <_Unwind_Resume>
    80003328:	00050913          	mv	s2,a0
    Thread* th3 = new TestTh3();
    8000332c:	00048513          	mv	a0,s1
    80003330:	00000097          	auipc	ra,0x0
    80003334:	310080e7          	jalr	784(ra) # 80003640 <_ZdlPv>
    80003338:	00090513          	mv	a0,s2
    8000333c:	0000b097          	auipc	ra,0xb
    80003340:	e9c080e7          	jalr	-356(ra) # 8000e1d8 <_Unwind_Resume>

0000000080003344 <_ZN6TestThD1Ev>:
class TestTh: public Thread {
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00113423          	sd	ra,8(sp)
    8000334c:	00813023          	sd	s0,0(sp)
    80003350:	01010413          	addi	s0,sp,16
    80003354:	00009797          	auipc	a5,0x9
    80003358:	79478793          	addi	a5,a5,1940 # 8000cae8 <_ZTV6TestTh+0x10>
    8000335c:	00f53023          	sd	a5,0(a0)
    80003360:	00000097          	auipc	ra,0x0
    80003364:	1e8080e7          	jalr	488(ra) # 80003548 <_ZN6ThreadD1Ev>
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZN6TestThD0Ev>:
    80003378:	fe010113          	addi	sp,sp,-32
    8000337c:	00113c23          	sd	ra,24(sp)
    80003380:	00813823          	sd	s0,16(sp)
    80003384:	00913423          	sd	s1,8(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	00050493          	mv	s1,a0
    80003390:	00009797          	auipc	a5,0x9
    80003394:	75878793          	addi	a5,a5,1880 # 8000cae8 <_ZTV6TestTh+0x10>
    80003398:	00f53023          	sd	a5,0(a0)
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	1ac080e7          	jalr	428(ra) # 80003548 <_ZN6ThreadD1Ev>
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	298080e7          	jalr	664(ra) # 80003640 <_ZdlPv>
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	01013403          	ld	s0,16(sp)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret

00000000800033c4 <_ZN7TestTh2D1Ev>:
class TestTh2: public Thread {
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00113423          	sd	ra,8(sp)
    800033cc:	00813023          	sd	s0,0(sp)
    800033d0:	01010413          	addi	s0,sp,16
    800033d4:	00009797          	auipc	a5,0x9
    800033d8:	73c78793          	addi	a5,a5,1852 # 8000cb10 <_ZTV7TestTh2+0x10>
    800033dc:	00f53023          	sd	a5,0(a0)
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	168080e7          	jalr	360(ra) # 80003548 <_ZN6ThreadD1Ev>
    800033e8:	00813083          	ld	ra,8(sp)
    800033ec:	00013403          	ld	s0,0(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN7TestTh2D0Ev>:
    800033f8:	fe010113          	addi	sp,sp,-32
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	00813823          	sd	s0,16(sp)
    80003404:	00913423          	sd	s1,8(sp)
    80003408:	02010413          	addi	s0,sp,32
    8000340c:	00050493          	mv	s1,a0
    80003410:	00009797          	auipc	a5,0x9
    80003414:	70078793          	addi	a5,a5,1792 # 8000cb10 <_ZTV7TestTh2+0x10>
    80003418:	00f53023          	sd	a5,0(a0)
    8000341c:	00000097          	auipc	ra,0x0
    80003420:	12c080e7          	jalr	300(ra) # 80003548 <_ZN6ThreadD1Ev>
    80003424:	00048513          	mv	a0,s1
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	218080e7          	jalr	536(ra) # 80003640 <_ZdlPv>
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	01013403          	ld	s0,16(sp)
    80003438:	00813483          	ld	s1,8(sp)
    8000343c:	02010113          	addi	sp,sp,32
    80003440:	00008067          	ret

0000000080003444 <_ZN7TestTh3D1Ev>:
class TestTh3: public Thread {
    80003444:	ff010113          	addi	sp,sp,-16
    80003448:	00113423          	sd	ra,8(sp)
    8000344c:	00813023          	sd	s0,0(sp)
    80003450:	01010413          	addi	s0,sp,16
    80003454:	00009797          	auipc	a5,0x9
    80003458:	6e478793          	addi	a5,a5,1764 # 8000cb38 <_ZTV7TestTh3+0x10>
    8000345c:	00f53023          	sd	a5,0(a0)
    80003460:	00000097          	auipc	ra,0x0
    80003464:	0e8080e7          	jalr	232(ra) # 80003548 <_ZN6ThreadD1Ev>
    80003468:	00813083          	ld	ra,8(sp)
    8000346c:	00013403          	ld	s0,0(sp)
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00008067          	ret

0000000080003478 <_ZN7TestTh3D0Ev>:
    80003478:	fe010113          	addi	sp,sp,-32
    8000347c:	00113c23          	sd	ra,24(sp)
    80003480:	00813823          	sd	s0,16(sp)
    80003484:	00913423          	sd	s1,8(sp)
    80003488:	02010413          	addi	s0,sp,32
    8000348c:	00050493          	mv	s1,a0
    80003490:	00009797          	auipc	a5,0x9
    80003494:	6a878793          	addi	a5,a5,1704 # 8000cb38 <_ZTV7TestTh3+0x10>
    80003498:	00f53023          	sd	a5,0(a0)
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	0ac080e7          	jalr	172(ra) # 80003548 <_ZN6ThreadD1Ev>
    800034a4:	00048513          	mv	a0,s1
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	198080e7          	jalr	408(ra) # 80003640 <_ZdlPv>
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	02010113          	addi	sp,sp,32
    800034c0:	00008067          	ret

00000000800034c4 <_ZN6TestTh3runEv>:
    void run() override {
    800034c4:	ff010113          	addi	sp,sp,-16
    800034c8:	00113423          	sd	ra,8(sp)
    800034cc:	00813023          	sd	s0,0(sp)
    800034d0:	01010413          	addi	s0,sp,16
        testThBody(nullptr);
    800034d4:	00000593          	li	a1,0
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	bec080e7          	jalr	-1044(ra) # 800030c4 <_ZN6TestTh10testThBodyEPv>
    }
    800034e0:	00813083          	ld	ra,8(sp)
    800034e4:	00013403          	ld	s0,0(sp)
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret

00000000800034f0 <_ZN7TestTh23runEv>:
    void run() override {
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00113423          	sd	ra,8(sp)
    800034f8:	00813023          	sd	s0,0(sp)
    800034fc:	01010413          	addi	s0,sp,16
        testTh2Body(nullptr);
    80003500:	00000593          	li	a1,0
    80003504:	00000097          	auipc	ra,0x0
    80003508:	c30080e7          	jalr	-976(ra) # 80003134 <_ZN7TestTh211testTh2BodyEPv>
    }
    8000350c:	00813083          	ld	ra,8(sp)
    80003510:	00013403          	ld	s0,0(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <_ZN7TestTh33runEv>:
    void run() override {
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00113423          	sd	ra,8(sp)
    80003524:	00813023          	sd	s0,0(sp)
    80003528:	01010413          	addi	s0,sp,16
        testTh3Body(nullptr);
    8000352c:	00000593          	li	a1,0
    80003530:	00000097          	auipc	ra,0x0
    80003534:	c74080e7          	jalr	-908(ra) # 800031a4 <_ZN7TestTh311testTh3BodyEPv>
    }
    80003538:	00813083          	ld	ra,8(sp)
    8000353c:	00013403          	ld	s0,0(sp)
    80003540:	01010113          	addi	sp,sp,16
    80003544:	00008067          	ret

0000000080003548 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00813423          	sd	s0,8(sp)
    80003550:	01010413          	addi	s0,sp,16
    80003554:	00813403          	ld	s0,8(sp)
    80003558:	01010113          	addi	sp,sp,16
    8000355c:	00008067          	ret

0000000080003560 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00113423          	sd	ra,8(sp)
    80003568:	00813023          	sd	s0,0(sp)
    8000356c:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80003570:	00053783          	ld	a5,0(a0)
    80003574:	0107b783          	ld	a5,16(a5)
    80003578:	000780e7          	jalr	a5
}
    8000357c:	00813083          	ld	ra,8(sp)
    80003580:	00013403          	ld	s0,0(sp)
    80003584:	01010113          	addi	sp,sp,16
    80003588:	00008067          	ret

000000008000358c <_ZN14PeriodicThread3runEv>:
}


PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    8000358c:	fe010113          	addi	sp,sp,-32
    80003590:	00113c23          	sd	ra,24(sp)
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	02010413          	addi	s0,sp,32
    800035a0:	00050493          	mv	s1,a0
    while (period) {
    800035a4:	0204b783          	ld	a5,32(s1)
    800035a8:	02078263          	beqz	a5,800035cc <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    800035ac:	0004b783          	ld	a5,0(s1)
    800035b0:	0187b783          	ld	a5,24(a5)
    800035b4:	00048513          	mv	a0,s1
    800035b8:	000780e7          	jalr	a5
        time_sleep(period);
    800035bc:	0204b503          	ld	a0,32(s1)
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	0d8080e7          	jalr	216(ra) # 80001698 <time_sleep>
    while (period) {
    800035c8:	fddff06f          	j	800035a4 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret

00000000800035e0 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800035e0:	ff010113          	addi	sp,sp,-16
    800035e4:	00113423          	sd	ra,8(sp)
    800035e8:	00813023          	sd	s0,0(sp)
    800035ec:	01010413          	addi	s0,sp,16
    800035f0:	00009797          	auipc	a5,0x9
    800035f4:	59878793          	addi	a5,a5,1432 # 8000cb88 <_ZTV9Semaphore+0x10>
    800035f8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800035fc:	00853503          	ld	a0,8(a0)
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	0f8080e7          	jalr	248(ra) # 800016f8 <sem_close>
}
    80003608:	00813083          	ld	ra,8(sp)
    8000360c:	00013403          	ld	s0,0(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret

0000000080003618 <_Znwm>:
void* operator new(size_t size) {
    80003618:	ff010113          	addi	sp,sp,-16
    8000361c:	00113423          	sd	ra,8(sp)
    80003620:	00813023          	sd	s0,0(sp)
    80003624:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	f2c080e7          	jalr	-212(ra) # 80001554 <mem_alloc>
    80003630:	00813083          	ld	ra,8(sp)
    80003634:	00013403          	ld	s0,0(sp)
    80003638:	01010113          	addi	sp,sp,16
    8000363c:	00008067          	ret

0000000080003640 <_ZdlPv>:
void  operator delete(void* p)  {
    80003640:	ff010113          	addi	sp,sp,-16
    80003644:	00113423          	sd	ra,8(sp)
    80003648:	00813023          	sd	s0,0(sp)
    8000364c:	01010413          	addi	s0,sp,16
    mem_free(p); }
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	f30080e7          	jalr	-208(ra) # 80001580 <mem_free>
    80003658:	00813083          	ld	ra,8(sp)
    8000365c:	00013403          	ld	s0,0(sp)
    80003660:	01010113          	addi	sp,sp,16
    80003664:	00008067          	ret

0000000080003668 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80003668:	ff010113          	addi	sp,sp,-16
    8000366c:	00113423          	sd	ra,8(sp)
    80003670:	00813023          	sd	s0,0(sp)
    80003674:	01010413          	addi	s0,sp,16
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	fc8080e7          	jalr	-56(ra) # 80003640 <_ZdlPv>
    80003680:	00813083          	ld	ra,8(sp)
    80003684:	00013403          	ld	s0,0(sp)
    80003688:	01010113          	addi	sp,sp,16
    8000368c:	00008067          	ret

0000000080003690 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	00913423          	sd	s1,8(sp)
    800036a0:	02010413          	addi	s0,sp,32
    800036a4:	00050493          	mv	s1,a0
}
    800036a8:	00000097          	auipc	ra,0x0
    800036ac:	f38080e7          	jalr	-200(ra) # 800035e0 <_ZN9SemaphoreD1Ev>
    800036b0:	00048513          	mv	a0,s1
    800036b4:	00000097          	auipc	ra,0x0
    800036b8:	f8c080e7          	jalr	-116(ra) # 80003640 <_ZdlPv>
    800036bc:	01813083          	ld	ra,24(sp)
    800036c0:	01013403          	ld	s0,16(sp)
    800036c4:	00813483          	ld	s1,8(sp)
    800036c8:	02010113          	addi	sp,sp,32
    800036cc:	00008067          	ret

00000000800036d0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    800036d0:	ff010113          	addi	sp,sp,-16
    800036d4:	00813423          	sd	s0,8(sp)
    800036d8:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    800036dc:	00009797          	auipc	a5,0x9
    800036e0:	48478793          	addi	a5,a5,1156 # 8000cb60 <_ZTV6Thread+0x10>
    800036e4:	00f53023          	sd	a5,0(a0)
    800036e8:	00053423          	sd	zero,8(a0)
    800036ec:	00b53823          	sd	a1,16(a0)
    800036f0:	00c53c23          	sd	a2,24(a0)
    800036f4:	00813403          	ld	s0,8(sp)
    800036f8:	01010113          	addi	sp,sp,16
    800036fc:	00008067          	ret

0000000080003700 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00813423          	sd	s0,8(sp)
    80003708:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    8000370c:	00009797          	auipc	a5,0x9
    80003710:	45478793          	addi	a5,a5,1108 # 8000cb60 <_ZTV6Thread+0x10>
    80003714:	00f53023          	sd	a5,0(a0)
    80003718:	00053423          	sd	zero,8(a0)
    8000371c:	00053823          	sd	zero,16(a0)
    80003720:	00053c23          	sd	zero,24(a0)
    80003724:	00813403          	ld	s0,8(sp)
    80003728:	01010113          	addi	sp,sp,16
    8000372c:	00008067          	ret

0000000080003730 <_ZN6Thread5startEv>:
int Thread::start() {
    80003730:	ff010113          	addi	sp,sp,-16
    80003734:	00113423          	sd	ra,8(sp)
    80003738:	00813023          	sd	s0,0(sp)
    8000373c:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    80003740:	01053783          	ld	a5,16(a0)
    80003744:	02078663          	beqz	a5,80003770 <_ZN6Thread5startEv+0x40>
    80003748:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    8000374c:	02078863          	beqz	a5,8000377c <_ZN6Thread5startEv+0x4c>
    80003750:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    80003754:	00850513          	addi	a0,a0,8
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	e54080e7          	jalr	-428(ra) # 800015ac <thread_create>
}
    80003760:	00813083          	ld	ra,8(sp)
    80003764:	00013403          	ld	s0,0(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80003770:	00000597          	auipc	a1,0x0
    80003774:	df058593          	addi	a1,a1,-528 # 80003560 <_ZN6Thread7runBodyEPv>
    80003778:	fd5ff06f          	j	8000374c <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    8000377c:	00050613          	mv	a2,a0
    80003780:	fd5ff06f          	j	80003754 <_ZN6Thread5startEv+0x24>

0000000080003784 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003784:	ff010113          	addi	sp,sp,-16
    80003788:	00113423          	sd	ra,8(sp)
    8000378c:	00813023          	sd	s0,0(sp)
    80003790:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	ee4080e7          	jalr	-284(ra) # 80001678 <thread_dispatch>
}
    8000379c:	00813083          	ld	ra,8(sp)
    800037a0:	00013403          	ld	s0,0(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00113423          	sd	ra,8(sp)
    800037b4:	00813023          	sd	s0,0(sp)
    800037b8:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	edc080e7          	jalr	-292(ra) # 80001698 <time_sleep>
}
    800037c4:	00813083          	ld	ra,8(sp)
    800037c8:	00013403          	ld	s0,0(sp)
    800037cc:	01010113          	addi	sp,sp,16
    800037d0:	00008067          	ret

00000000800037d4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800037d4:	ff010113          	addi	sp,sp,-16
    800037d8:	00113423          	sd	ra,8(sp)
    800037dc:	00813023          	sd	s0,0(sp)
    800037e0:	01010413          	addi	s0,sp,16
    800037e4:	00009797          	auipc	a5,0x9
    800037e8:	3a478793          	addi	a5,a5,932 # 8000cb88 <_ZTV9Semaphore+0x10>
    800037ec:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800037f0:	00850513          	addi	a0,a0,8
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	ecc080e7          	jalr	-308(ra) # 800016c0 <sem_open>
}
    800037fc:	00813083          	ld	ra,8(sp)
    80003800:	00013403          	ld	s0,0(sp)
    80003804:	01010113          	addi	sp,sp,16
    80003808:	00008067          	ret

000000008000380c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000380c:	ff010113          	addi	sp,sp,-16
    80003810:	00113423          	sd	ra,8(sp)
    80003814:	00813023          	sd	s0,0(sp)
    80003818:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000381c:	00853503          	ld	a0,8(a0)
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	f00080e7          	jalr	-256(ra) # 80001720 <sem_wait>
}
    80003828:	00813083          	ld	ra,8(sp)
    8000382c:	00013403          	ld	s0,0(sp)
    80003830:	01010113          	addi	sp,sp,16
    80003834:	00008067          	ret

0000000080003838 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003838:	ff010113          	addi	sp,sp,-16
    8000383c:	00113423          	sd	ra,8(sp)
    80003840:	00813023          	sd	s0,0(sp)
    80003844:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003848:	00853503          	ld	a0,8(a0)
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	efc080e7          	jalr	-260(ra) # 80001748 <sem_signal>
}
    80003854:	00813083          	ld	ra,8(sp)
    80003858:	00013403          	ld	s0,0(sp)
    8000385c:	01010113          	addi	sp,sp,16
    80003860:	00008067          	ret

0000000080003864 <_ZN6Thread4joinEPS_>:
void Thread::join(Thread* thread) {
    80003864:	ff010113          	addi	sp,sp,-16
    80003868:	00113423          	sd	ra,8(sp)
    8000386c:	00813023          	sd	s0,0(sp)
    80003870:	01010413          	addi	s0,sp,16
    ::join(&thread->myHandle);
    80003874:	00850513          	addi	a0,a0,8
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	db4080e7          	jalr	-588(ra) # 8000162c <join>
}
    80003880:	00813083          	ld	ra,8(sp)
    80003884:	00013403          	ld	s0,0(sp)
    80003888:	01010113          	addi	sp,sp,16
    8000388c:	00008067          	ret

0000000080003890 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00813823          	sd	s0,16(sp)
    8000389c:	00913423          	sd	s1,8(sp)
    800038a0:	01213023          	sd	s2,0(sp)
    800038a4:	02010413          	addi	s0,sp,32
    800038a8:	00050493          	mv	s1,a0
    800038ac:	00058913          	mv	s2,a1
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	e50080e7          	jalr	-432(ra) # 80003700 <_ZN6ThreadC1Ev>
    800038b8:	00009797          	auipc	a5,0x9
    800038bc:	2f078793          	addi	a5,a5,752 # 8000cba8 <_ZTV14PeriodicThread+0x10>
    800038c0:	00f4b023          	sd	a5,0(s1)
    800038c4:	0324b023          	sd	s2,32(s1)
    800038c8:	01813083          	ld	ra,24(sp)
    800038cc:	01013403          	ld	s0,16(sp)
    800038d0:	00813483          	ld	s1,8(sp)
    800038d4:	00013903          	ld	s2,0(sp)
    800038d8:	02010113          	addi	sp,sp,32
    800038dc:	00008067          	ret

00000000800038e0 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    800038e0:	ff010113          	addi	sp,sp,-16
    800038e4:	00813423          	sd	s0,8(sp)
    800038e8:	01010413          	addi	s0,sp,16
    800038ec:	02053023          	sd	zero,32(a0)
    800038f0:	00813403          	ld	s0,8(sp)
    800038f4:	01010113          	addi	sp,sp,16
    800038f8:	00008067          	ret

00000000800038fc <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    800038fc:	ff010113          	addi	sp,sp,-16
    80003900:	00113423          	sd	ra,8(sp)
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	01010413          	addi	s0,sp,16
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	e9c080e7          	jalr	-356(ra) # 800017a8 <getc>
    80003914:	00813083          	ld	ra,8(sp)
    80003918:	00013403          	ld	s0,0(sp)
    8000391c:	01010113          	addi	sp,sp,16
    80003920:	00008067          	ret

0000000080003924 <_ZN7Console4putcEc>:
    80003924:	ff010113          	addi	sp,sp,-16
    80003928:	00113423          	sd	ra,8(sp)
    8000392c:	00813023          	sd	s0,0(sp)
    80003930:	01010413          	addi	s0,sp,16
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	e98080e7          	jalr	-360(ra) # 800017cc <putc>
    8000393c:	00813083          	ld	ra,8(sp)
    80003940:	00013403          	ld	s0,0(sp)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret

000000008000394c <_ZN6Thread3runEv>:
    static void dispatch();
    static void join(Thread* thread);
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    8000394c:	ff010113          	addi	sp,sp,-16
    80003950:	00813423          	sd	s0,8(sp)
    80003954:	01010413          	addi	s0,sp,16
    80003958:	00813403          	ld	s0,8(sp)
    8000395c:	01010113          	addi	sp,sp,16
    80003960:	00008067          	ret

0000000080003964 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00813423          	sd	s0,8(sp)
    8000396c:	01010413          	addi	s0,sp,16
    80003970:	00813403          	ld	s0,8(sp)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret

000000008000397c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000397c:	ff010113          	addi	sp,sp,-16
    80003980:	00813423          	sd	s0,8(sp)
    80003984:	01010413          	addi	s0,sp,16
    80003988:	00009797          	auipc	a5,0x9
    8000398c:	22078793          	addi	a5,a5,544 # 8000cba8 <_ZTV14PeriodicThread+0x10>
    80003990:	00f53023          	sd	a5,0(a0)
    80003994:	00813403          	ld	s0,8(sp)
    80003998:	01010113          	addi	sp,sp,16
    8000399c:	00008067          	ret

00000000800039a0 <_ZN14PeriodicThreadD0Ev>:
    800039a0:	ff010113          	addi	sp,sp,-16
    800039a4:	00113423          	sd	ra,8(sp)
    800039a8:	00813023          	sd	s0,0(sp)
    800039ac:	01010413          	addi	s0,sp,16
    800039b0:	00009797          	auipc	a5,0x9
    800039b4:	1f878793          	addi	a5,a5,504 # 8000cba8 <_ZTV14PeriodicThread+0x10>
    800039b8:	00f53023          	sd	a5,0(a0)
    800039bc:	00000097          	auipc	ra,0x0
    800039c0:	c84080e7          	jalr	-892(ra) # 80003640 <_ZdlPv>
    800039c4:	00813083          	ld	ra,8(sp)
    800039c8:	00013403          	ld	s0,0(sp)
    800039cc:	01010113          	addi	sp,sp,16
    800039d0:	00008067          	ret

00000000800039d4 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00813423          	sd	s0,8(sp)
    800039dc:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    800039e0:	00009797          	auipc	a5,0x9
    800039e4:	3d07b783          	ld	a5,976(a5) # 8000cdb0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800039e8:	0007b703          	ld	a4,0(a5)
    800039ec:	00009797          	auipc	a5,0x9
    800039f0:	39c7b783          	ld	a5,924(a5) # 8000cd88 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039f4:	0007b783          	ld	a5,0(a5)
    800039f8:	40f70733          	sub	a4,a4,a5
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    800039fc:	00675713          	srli	a4,a4,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80003a00:	00f53023          	sd	a5,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    80003a04:	00100693          	li	a3,1
    80003a08:	00d78823          	sb	a3,16(a5)
    startFrag->next=nullptr;
    80003a0c:	0007b023          	sd	zero,0(a5)
    startFrag->size = HEAP_SIZE_BLCK;
    80003a10:	00e7bc23          	sd	a4,24(a5)
    startFrag->prev=nullptr;
    80003a14:	0007b423          	sd	zero,8(a5)
}
    80003a18:	00813403          	ld	s0,8(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret

0000000080003a24 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    80003a24:	00009797          	auipc	a5,0x9
    80003a28:	68c7c783          	lbu	a5,1676(a5) # 8000d0b0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80003a2c:	00078863          	beqz	a5,80003a3c <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80003a30:	00009517          	auipc	a0,0x9
    80003a34:	68850513          	addi	a0,a0,1672 # 8000d0b8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003a38:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003a3c:	ff010113          	addi	sp,sp,-16
    80003a40:	00113423          	sd	ra,8(sp)
    80003a44:	00813023          	sd	s0,0(sp)
    80003a48:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80003a4c:	00009517          	auipc	a0,0x9
    80003a50:	66c50513          	addi	a0,a0,1644 # 8000d0b8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003a54:	00000097          	auipc	ra,0x0
    80003a58:	f80080e7          	jalr	-128(ra) # 800039d4 <_ZN15MemoryAllocatorC1Ev>
    80003a5c:	00100793          	li	a5,1
    80003a60:	00009717          	auipc	a4,0x9
    80003a64:	64f70823          	sb	a5,1616(a4) # 8000d0b0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80003a68:	00009517          	auipc	a0,0x9
    80003a6c:	65050513          	addi	a0,a0,1616 # 8000d0b8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003a70:	00813083          	ld	ra,8(sp)
    80003a74:	00013403          	ld	s0,0(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret

0000000080003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    80003a80:	ff010113          	addi	sp,sp,-16
    80003a84:	00813423          	sd	s0,8(sp)
    80003a88:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    80003a8c:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80003a90:	03f58593          	addi	a1,a1,63
    80003a94:	0065d593          	srli	a1,a1,0x6
    80003a98:	0080006f          	j	80003aa0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80003a9c:	00053503          	ld	a0,0(a0)
    while(curr){
    80003aa0:	06050863          	beqz	a0,80003b10 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80003aa4:	01054703          	lbu	a4,16(a0)
    80003aa8:	00100793          	li	a5,1
    80003aac:	fef718e3          	bne	a4,a5,80003a9c <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    80003ab0:	01853703          	ld	a4,24(a0)
    80003ab4:	00158793          	addi	a5,a1,1
    80003ab8:	fef762e3          	bltu	a4,a5,80003a9c <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80003abc:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80003ac0:	04e7f663          	bgeu	a5,a4,80003b0c <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80003ac4:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80003ac8:	00679793          	slli	a5,a5,0x6
    80003acc:	00f507b3          	add	a5,a0,a5
    80003ad0:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80003ad4:	00100713          	li	a4,1
    80003ad8:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80003adc:	01853703          	ld	a4,24(a0)
    80003ae0:	40b70733          	sub	a4,a4,a1
    80003ae4:	fff70713          	addi	a4,a4,-1
    80003ae8:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003aec:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003af0:	00068463          	beqz	a3,80003af8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80003af4:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80003af8:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003afc:	01853703          	ld	a4,24(a0)
    80003b00:	0187b783          	ld	a5,24(a5)
    80003b04:	40f707b3          	sub	a5,a4,a5
    80003b08:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80003b0c:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80003b10:	00813403          	ld	s0,8(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80003b1c:	ff010113          	addi	sp,sp,-16
    80003b20:	00813423          	sd	s0,8(sp)
    80003b24:	01010413          	addi	s0,sp,16
    if(!startLoc)return -1;
    80003b28:	08058c63          	beqz	a1,80003bc0 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80003b2c:	fc058613          	addi	a2,a1,-64
    curr->free=1;
    80003b30:	00100793          	li	a5,1
    80003b34:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80003b38:	fc05b783          	ld	a5,-64(a1)
    80003b3c:	00078863          	beqz	a5,80003b4c <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003b40:	0107c683          	lbu	a3,16(a5)
    80003b44:	00100713          	li	a4,1
    80003b48:	02e68463          	beq	a3,a4,80003b70 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80003b4c:	fc85b783          	ld	a5,-56(a1)
    80003b50:	06078c63          	beqz	a5,80003bc8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80003b54:	0107c683          	lbu	a3,16(a5)
    80003b58:	00100713          	li	a4,1
    80003b5c:	02e68e63          	beq	a3,a4,80003b98 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80003b60:	00000513          	li	a0,0
}
    80003b64:	00813403          	ld	s0,8(sp)
    80003b68:	01010113          	addi	sp,sp,16
    80003b6c:	00008067          	ret
        curr->size +=next->size;
    80003b70:	0187b683          	ld	a3,24(a5)
    80003b74:	fd85b703          	ld	a4,-40(a1)
    80003b78:	00d70733          	add	a4,a4,a3
    80003b7c:	fce5bc23          	sd	a4,-40(a1)
        curr->next = next->next;
    80003b80:	0007b703          	ld	a4,0(a5)
    80003b84:	fce5b023          	sd	a4,-64(a1)
        if(next->next)
    80003b88:	0007b783          	ld	a5,0(a5)
    80003b8c:	fc0780e3          	beqz	a5,80003b4c <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80003b90:	00c7b423          	sd	a2,8(a5)
    80003b94:	fb9ff06f          	j	80003b4c <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80003b98:	fd85b683          	ld	a3,-40(a1)
    80003b9c:	0187b703          	ld	a4,24(a5)
    80003ba0:	00d70733          	add	a4,a4,a3
    80003ba4:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80003ba8:	fc05b703          	ld	a4,-64(a1)
    80003bac:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80003bb0:	02070063          	beqz	a4,80003bd0 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80003bb4:	00f73423          	sd	a5,8(a4)
    return 0;
    80003bb8:	00000513          	li	a0,0
    80003bbc:	fa9ff06f          	j	80003b64 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!startLoc)return -1;
    80003bc0:	fff00513          	li	a0,-1
    80003bc4:	fa1ff06f          	j	80003b64 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80003bc8:	00000513          	li	a0,0
    80003bcc:	f99ff06f          	j	80003b64 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003bd0:	00000513          	li	a0,0
    80003bd4:	f91ff06f          	j	80003b64 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080003bd8 <HandleInterupt>:

extern "C" void restoreContext(size_t* ctx);



extern "C" void HandleInterupt(size_t* stackInfo){
    80003bd8:	fb010113          	addi	sp,sp,-80
    80003bdc:	04113423          	sd	ra,72(sp)
    80003be0:	04813023          	sd	s0,64(sp)
    80003be4:	02913c23          	sd	s1,56(sp)
    80003be8:	03213823          	sd	s2,48(sp)
    80003bec:	03313423          	sd	s3,40(sp)
    80003bf0:	03413023          	sd	s4,32(sp)
    80003bf4:	01513c23          	sd	s5,24(sp)
    80003bf8:	01613823          	sd	s6,16(sp)
    80003bfc:	01713423          	sd	s7,8(sp)
    80003c00:	05010413          	addi	s0,sp,80
    80003c04:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003c08:	142029f3          	csrr	s3,scause

    Scheduler::freeDead();
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	320080e7          	jalr	800(ra) # 80001f2c <_ZN9Scheduler8freeDeadEv>

    KThread* current = Scheduler::GetRunning();
    80003c14:	ffffe097          	auipc	ra,0xffffe
    80003c18:	2bc080e7          	jalr	700(ra) # 80001ed0 <_ZN9Scheduler10GetRunningEv>
    80003c1c:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80003c20:	04050863          	beqz	a0,80003c70 <HandleInterupt+0x98>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = stackInfo[i];
    80003c24:	00000713          	li	a4,0
    80003c28:	01f00793          	li	a5,31
    80003c2c:	02e7c063          	blt	a5,a4,80003c4c <HandleInterupt+0x74>
    80003c30:	00371793          	slli	a5,a4,0x3
    80003c34:	00f906b3          	add	a3,s2,a5
    80003c38:	0006b683          	ld	a3,0(a3)
    80003c3c:	00f487b3          	add	a5,s1,a5
    80003c40:	06d7b423          	sd	a3,104(a5)
    80003c44:	0017071b          	addiw	a4,a4,1
    80003c48:	fe1ff06f          	j	80003c28 <HandleInterupt+0x50>
        ctx.x[2] = (size_t)stackInfo + 256;
    80003c4c:	10090793          	addi	a5,s2,256
    80003c50:	06f4bc23          	sd	a5,120(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80003c54:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003c58:	100026f3          	csrr	a3,sstatus
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    80003c5c:	ff898793          	addi	a5,s3,-8
    80003c60:	00100613          	li	a2,1
    80003c64:	06f67a63          	bgeu	a2,a5,80003cd8 <HandleInterupt+0x100>
        ctx.sepc    = sepc;
    80003c68:	16e4b423          	sd	a4,360(s1)
        ctx.sstatus = sstatus;
    80003c6c:	16d4b823          	sd	a3,368(s1)
    }

    if (scause == SCause::TIMER_INTERRUPT) {
    80003c70:	fff00793          	li	a5,-1
    80003c74:	03f79793          	slli	a5,a5,0x3f
    80003c78:	00178793          	addi	a5,a5,1
    80003c7c:	06f98263          	beq	s3,a5,80003ce0 <HandleInterupt+0x108>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == SCause::EXTERNAL_INTERRUPT) {
    80003c80:	fff00793          	li	a5,-1
    80003c84:	03f79793          	slli	a5,a5,0x3f
    80003c88:	00978793          	addi	a5,a5,9
    80003c8c:	06f98863          	beq	s3,a5,80003cfc <HandleInterupt+0x124>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != SCause::ECALL_USER && scause != SCause::ECALL_SUPERVISOR) {
    80003c90:	ff898793          	addi	a5,s3,-8
    80003c94:	00100713          	li	a4,1
    80003c98:	06f76e63          	bltu	a4,a5,80003d14 <HandleInterupt+0x13c>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003c9c:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80003ca0:	00478793          	addi	a5,a5,4
    80003ca4:	14179073          	csrw	sepc,a5
    }

    size_t code = stackInfo[10];
    80003ca8:	05093783          	ld	a5,80(s2)
    switch (code) {
    80003cac:	04200713          	li	a4,66
    80003cb0:	0af76263          	bltu	a4,a5,80003d54 <HandleInterupt+0x17c>
    80003cb4:	06078a63          	beqz	a5,80003d28 <HandleInterupt+0x150>
    80003cb8:	06f76863          	bltu	a4,a5,80003d28 <HandleInterupt+0x150>
    80003cbc:	00279793          	slli	a5,a5,0x2
    80003cc0:	00006717          	auipc	a4,0x6
    80003cc4:	3c070713          	addi	a4,a4,960 # 8000a080 <CONSOLE_STATUS+0x70>
    80003cc8:	00e787b3          	add	a5,a5,a4
    80003ccc:	0007a783          	lw	a5,0(a5)
    80003cd0:	00e787b3          	add	a5,a5,a4
    80003cd4:	00078067          	jr	a5
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    80003cd8:	00470713          	addi	a4,a4,4
    80003cdc:	f8dff06f          	j	80003c68 <HandleInterupt+0x90>
        Scheduler::timerTick(current);
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	6f8080e7          	jalr	1784(ra) # 800023dc <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003cec:	02048e63          	beqz	s1,80003d28 <HandleInterupt+0x150>
    80003cf0:	0b84b783          	ld	a5,184(s1)
    80003cf4:	00078513          	mv	a0,a5
    80003cf8:	0300006f          	j	80003d28 <HandleInterupt+0x150>
        Konsole::handleInterrupt();
    80003cfc:	fffff097          	auipc	ra,0xfffff
    80003d00:	c3c080e7          	jalr	-964(ra) # 80002938 <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003d04:	02048263          	beqz	s1,80003d28 <HandleInterupt+0x150>
    80003d08:	0b84b783          	ld	a5,184(s1)
    80003d0c:	00078513          	mv	a0,a5
    80003d10:	0180006f          	j	80003d28 <HandleInterupt+0x150>
        if ((scause >> 63) == 0 && current != nullptr) {
    80003d14:	0009ca63          	bltz	s3,80003d28 <HandleInterupt+0x150>
    80003d18:	00048863          	beqz	s1,80003d28 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003d1c:	00048513          	mv	a0,s1
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	4b4080e7          	jalr	1204(ra) # 800021d4 <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    80003d28:	04813083          	ld	ra,72(sp)
    80003d2c:	04013403          	ld	s0,64(sp)
    80003d30:	03813483          	ld	s1,56(sp)
    80003d34:	03013903          	ld	s2,48(sp)
    80003d38:	02813983          	ld	s3,40(sp)
    80003d3c:	02013a03          	ld	s4,32(sp)
    80003d40:	01813a83          	ld	s5,24(sp)
    80003d44:	01013b03          	ld	s6,16(sp)
    80003d48:	00813b83          	ld	s7,8(sp)
    80003d4c:	05010113          	addi	sp,sp,80
    80003d50:	00008067          	ret
    switch (code) {
    80003d54:	0ff00713          	li	a4,255
    80003d58:	fce798e3          	bne	a5,a4,80003d28 <HandleInterupt+0x150>
            *((volatile uint32*)0x100000UL) = 0x5555;
    80003d5c:	00100737          	lui	a4,0x100
    80003d60:	000057b7          	lui	a5,0x5
    80003d64:	5557879b          	addiw	a5,a5,1365
    80003d68:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    80003d6c:	0000006f          	j	80003d6c <HandleInterupt+0x194>
            size_t size = stackInfo[11];
    80003d70:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80003d74:	00000097          	auipc	ra,0x0
    80003d78:	cb0080e7          	jalr	-848(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80003d7c:	00048593          	mv	a1,s1
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	d00080e7          	jalr	-768(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80003d88:	00050513          	mv	a0,a0
            break;
    80003d8c:	f9dff06f          	j	80003d28 <HandleInterupt+0x150>
            void* ptr = (void*)stackInfo[11];
    80003d90:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	c90080e7          	jalr	-880(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80003d9c:	00048593          	mv	a1,s1
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	d7c080e7          	jalr	-644(ra) # 80003b1c <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80003da8:	f81ff06f          	j	80003d28 <HandleInterupt+0x150>
            thread_t* handle             = reinterpret_cast<thread_t*>(stackInfo[11]);
    80003dac:	05893a03          	ld	s4,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(stackInfo[12]);
    80003db0:	06093b03          	ld	s6,96(s2)
            void* threadArg              = reinterpret_cast<void*>(stackInfo[13]);
    80003db4:	06893a83          	ld	s5,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(stackInfo[14]);
    80003db8:	07093b83          	ld	s7,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80003dbc:	00000097          	auipc	ra,0x0
    80003dc0:	c68080e7          	jalr	-920(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80003dc4:	18000593          	li	a1,384
    80003dc8:	00000097          	auipc	ra,0x0
    80003dcc:	cb8080e7          	jalr	-840(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003dd0:	00050993          	mv	s3,a0
            if (!mem) {
    80003dd4:	04050863          	beqz	a0,80003e24 <HandleInterupt+0x24c>
            t->init();
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	ed8080e7          	jalr	-296(ra) # 80001cb0 <_ZN7KThread4initEv>
    80003de0:	0169b023          	sd	s6,0(s3)
    80003de4:	0159b423          	sd	s5,8(s3)
            t->setup(current, stack_space);
    80003de8:	000b8613          	mv	a2,s7
    80003dec:	00048593          	mv	a1,s1
    80003df0:	00098513          	mv	a0,s3
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	074080e7          	jalr	116(ra) # 80001e68 <_ZN7KThread5setupEPS_Pm>
            t->stackBase = reinterpret_cast<void*>(stackInfo[15]);
    80003dfc:	07893783          	ld	a5,120(s2)
    80003e00:	06f9b023          	sd	a5,96(s3)
            *handle = reinterpret_cast<thread_t>(t);
    80003e04:	013a3023          	sd	s3,0(s4)
            Scheduler::Put(t);
    80003e08:	00098513          	mv	a0,s3
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	2a8080e7          	jalr	680(ra) # 800020b4 <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    80003e14:	00048463          	beqz	s1,80003e1c <HandleInterupt+0x244>
    80003e18:	0a04bc23          	sd	zero,184(s1)
            __asm__ volatile("li a0, 0");
    80003e1c:	00000513          	li	a0,0
            break;
    80003e20:	f09ff06f          	j	80003d28 <HandleInterupt+0x150>
                if (current) {
    80003e24:	f00482e3          	beqz	s1,80003d28 <HandleInterupt+0x150>
                    current->threadContext.x[10] = (size_t)-1;
    80003e28:	fff00793          	li	a5,-1
    80003e2c:	0af4bc23          	sd	a5,184(s1)
                    restoreContext(current->getContext());
    80003e30:	00048513          	mv	a0,s1
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	f58080e7          	jalr	-168(ra) # 80001d8c <_ZN7KThread10getContextEv>
    80003e3c:	ffffd097          	auipc	ra,0xffffd
    80003e40:	258080e7          	jalr	600(ra) # 80001094 <restoreContext>
                return;
    80003e44:	ee5ff06f          	j	80003d28 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	388080e7          	jalr	904(ra) # 800021d4 <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    80003e54:	ed5ff06f          	j	80003d28 <HandleInterupt+0x150>
            if (!Scheduler::yieldCurrent(current))
    80003e58:	00048513          	mv	a0,s1
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	304080e7          	jalr	772(ra) # 80002160 <_ZN9Scheduler12yieldCurrentEP7KThread>
    80003e64:	ec0512e3          	bnez	a0,80003d28 <HandleInterupt+0x150>
                __asm__ volatile("li a0, 0");
    80003e68:	00000513          	li	a0,0
    80003e6c:	ebdff06f          	j	80003d28 <HandleInterupt+0x150>
            Scheduler::joinThread(t);
    80003e70:	05893503          	ld	a0,88(s2)
    80003e74:	fffff097          	auipc	ra,0xfffff
    80003e78:	810080e7          	jalr	-2032(ra) # 80002684 <_ZN9Scheduler10joinThreadEP7KThread>
            break;
    80003e7c:	eadff06f          	j	80003d28 <HandleInterupt+0x150>
            sem_t* handle = reinterpret_cast<sem_t*>(stackInfo[11]);
    80003e80:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)stackInfo[12];
    80003e84:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    80003e88:	00000097          	auipc	ra,0x0
    80003e8c:	b9c080e7          	jalr	-1124(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80003e90:	01800593          	li	a1,24
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	bec080e7          	jalr	-1044(ra) # 80003a80 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003e9c:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003ea0:	00050e63          	beqz	a0,80003ebc <HandleInterupt+0x2e4>
            semaphore->init(initialValue);
    80003ea4:	00090593          	mv	a1,s2
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	a44080e7          	jalr	-1468(ra) # 800018ec <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    80003eb0:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80003eb4:	00000513          	li	a0,0
            break;
    80003eb8:	e71ff06f          	j	80003d28 <HandleInterupt+0x150>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003ebc:	fff00513          	li	a0,-1
    80003ec0:	e69ff06f          	j	80003d28 <HandleInterupt+0x150>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
    80003ec4:	05893483          	ld	s1,88(s2)
            semaphore->close();
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	d1c080e7          	jalr	-740(ra) # 80001be8 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	b50080e7          	jalr	-1200(ra) # 80003a24 <_ZN15MemoryAllocator11GetInstanceEv>
    80003edc:	00048593          	mv	a1,s1
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	c3c080e7          	jalr	-964(ra) # 80003b1c <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80003ee8:	00000513          	li	a0,0
            break;
    80003eec:	e3dff06f          	j	80003d28 <HandleInterupt+0x150>
            int result = semaphore->wait(current);
    80003ef0:	00048593          	mv	a1,s1
    80003ef4:	05893503          	ld	a0,88(s2)
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	b2c080e7          	jalr	-1236(ra) # 80001a24 <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003f00:	00a04663          	bgtz	a0,80003f0c <HandleInterupt+0x334>
    80003f04:	00050513          	mv	a0,a0
    80003f08:	e21ff06f          	j	80003d28 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003f0c:	00048513          	mv	a0,s1
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	158080e7          	jalr	344(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003f18:	e11ff06f          	j	80003d28 <HandleInterupt+0x150>
            semaphore->signal();
    80003f1c:	05893503          	ld	a0,88(s2)
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	b64080e7          	jalr	-1180(ra) # 80001a84 <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003f28:	00000513          	li	a0,0
            break;
    80003f2c:	dfdff06f          	j	80003d28 <HandleInterupt+0x150>
            int result = semaphore->waitN(current, n);
    80003f30:	06092603          	lw	a2,96(s2)
    80003f34:	00048593          	mv	a1,s1
    80003f38:	05893503          	ld	a0,88(s2)
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	bc4080e7          	jalr	-1084(ra) # 80001b00 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003f44:	00a04663          	bgtz	a0,80003f50 <HandleInterupt+0x378>
    80003f48:	00050513          	mv	a0,a0
    80003f4c:	dddff06f          	j	80003d28 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003f50:	00048513          	mv	a0,s1
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	114080e7          	jalr	276(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003f5c:	dcdff06f          	j	80003d28 <HandleInterupt+0x150>
            semaphore->signalN(n);
    80003f60:	06092583          	lw	a1,96(s2)
    80003f64:	05893503          	ld	a0,88(s2)
    80003f68:	ffffe097          	auipc	ra,0xffffe
    80003f6c:	c08080e7          	jalr	-1016(ra) # 80001b70 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80003f70:	00000513          	li	a0,0
            break;
    80003f74:	db5ff06f          	j	80003d28 <HandleInterupt+0x150>
            time_t dur = (time_t)stackInfo[11];
    80003f78:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80003f7c:	00048463          	beqz	s1,80003f84 <HandleInterupt+0x3ac>
    80003f80:	0a04bc23          	sd	zero,184(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    80003f84:	00059663          	bnez	a1,80003f90 <HandleInterupt+0x3b8>
    80003f88:	00000513          	li	a0,0
    80003f8c:	d9dff06f          	j	80003d28 <HandleInterupt+0x150>
            Scheduler::sleep(current, dur);
    80003f90:	00048513          	mv	a0,s1
    80003f94:	ffffe097          	auipc	ra,0xffffe
    80003f98:	630080e7          	jalr	1584(ra) # 800025c4 <_ZN9Scheduler5sleepEP7KThreadm>
            Scheduler::blockCurrent(current);
    80003f9c:	00048513          	mv	a0,s1
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	0c8080e7          	jalr	200(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003fa8:	d81ff06f          	j	80003d28 <HandleInterupt+0x150>
            int result = Konsole::getcKernel(current);
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	fffff097          	auipc	ra,0xfffff
    80003fb4:	b0c080e7          	jalr	-1268(ra) # 80002abc <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2)
    80003fb8:	ffe00713          	li	a4,-2
    80003fbc:	00e50863          	beq	a0,a4,80003fcc <HandleInterupt+0x3f4>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    80003fc0:	0ff57793          	andi	a5,a0,255
    80003fc4:	00078513          	mv	a0,a5
    80003fc8:	d61ff06f          	j	80003d28 <HandleInterupt+0x150>
                Scheduler::blockCurrent(current);
    80003fcc:	00048513          	mv	a0,s1
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	098080e7          	jalr	152(ra) # 80002068 <_ZN9Scheduler12blockCurrentEP7KThread>
    80003fd8:	d51ff06f          	j	80003d28 <HandleInterupt+0x150>
            int result = Konsole::putcKernel(current, c);
    80003fdc:	05894583          	lbu	a1,88(s2)
    80003fe0:	00048513          	mv	a0,s1
    80003fe4:	fffff097          	auipc	ra,0xfffff
    80003fe8:	a38080e7          	jalr	-1480(ra) # 80002a1c <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003fec:	00050513          	mv	a0,a0
            break;
    80003ff0:	d39ff06f          	j	80003d28 <HandleInterupt+0x150>

0000000080003ff4 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80003ff4:	ff010113          	addi	sp,sp,-16
    80003ff8:	00113423          	sd	ra,8(sp)
    80003ffc:	00813023          	sd	s0,0(sp)
    80004000:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	2d8080e7          	jalr	728(ra) # 800022dc <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    8000400c:	fffff097          	auipc	ra,0xfffff
    80004010:	864080e7          	jalr	-1948(ra) # 80002870 <_ZN7Konsole4initEv>
    return 0;
}
    80004014:	00000513          	li	a0,0
    80004018:	00813083          	ld	ra,8(sp)
    8000401c:	00013403          	ld	s0,0(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80004028:	fe010113          	addi	sp,sp,-32
    8000402c:	00113c23          	sd	ra,24(sp)
    80004030:	00813823          	sd	s0,16(sp)
    80004034:	00913423          	sd	s1,8(sp)
    80004038:	01213023          	sd	s2,0(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004044:	00000913          	li	s2,0
    80004048:	00c0006f          	j	80004054 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000404c:	ffffd097          	auipc	ra,0xffffd
    80004050:	62c080e7          	jalr	1580(ra) # 80001678 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80004054:	ffffd097          	auipc	ra,0xffffd
    80004058:	754080e7          	jalr	1876(ra) # 800017a8 <getc>
    8000405c:	0005059b          	sext.w	a1,a0
    80004060:	01b00793          	li	a5,27
    80004064:	02f58a63          	beq	a1,a5,80004098 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80004068:	0084b503          	ld	a0,8(s1)
    8000406c:	00003097          	auipc	ra,0x3
    80004070:	400080e7          	jalr	1024(ra) # 8000746c <_ZN6Buffer3putEi>
        i++;
    80004074:	0019071b          	addiw	a4,s2,1
    80004078:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000407c:	0004a683          	lw	a3,0(s1)
    80004080:	0026979b          	slliw	a5,a3,0x2
    80004084:	00d787bb          	addw	a5,a5,a3
    80004088:	0017979b          	slliw	a5,a5,0x1
    8000408c:	02f767bb          	remw	a5,a4,a5
    80004090:	fc0792e3          	bnez	a5,80004054 <_ZL16producerKeyboardPv+0x2c>
    80004094:	fb9ff06f          	j	8000404c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80004098:	00100793          	li	a5,1
    8000409c:	00009717          	auipc	a4,0x9
    800040a0:	02f72223          	sw	a5,36(a4) # 8000d0c0 <_ZL9threadEnd>
    data->buffer->put('!');
    800040a4:	02100593          	li	a1,33
    800040a8:	0084b503          	ld	a0,8(s1)
    800040ac:	00003097          	auipc	ra,0x3
    800040b0:	3c0080e7          	jalr	960(ra) # 8000746c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800040b4:	0104b503          	ld	a0,16(s1)
    800040b8:	ffffd097          	auipc	ra,0xffffd
    800040bc:	690080e7          	jalr	1680(ra) # 80001748 <sem_signal>
}
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	00813483          	ld	s1,8(sp)
    800040cc:	00013903          	ld	s2,0(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret

00000000800040d8 <_ZL8producerPv>:

static void producer(void *arg) {
    800040d8:	fe010113          	addi	sp,sp,-32
    800040dc:	00113c23          	sd	ra,24(sp)
    800040e0:	00813823          	sd	s0,16(sp)
    800040e4:	00913423          	sd	s1,8(sp)
    800040e8:	01213023          	sd	s2,0(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800040f4:	00000913          	li	s2,0
    800040f8:	00c0006f          	j	80004104 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800040fc:	ffffd097          	auipc	ra,0xffffd
    80004100:	57c080e7          	jalr	1404(ra) # 80001678 <thread_dispatch>
    while (!threadEnd) {
    80004104:	00009797          	auipc	a5,0x9
    80004108:	fbc7a783          	lw	a5,-68(a5) # 8000d0c0 <_ZL9threadEnd>
    8000410c:	02079e63          	bnez	a5,80004148 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80004110:	0004a583          	lw	a1,0(s1)
    80004114:	0305859b          	addiw	a1,a1,48
    80004118:	0084b503          	ld	a0,8(s1)
    8000411c:	00003097          	auipc	ra,0x3
    80004120:	350080e7          	jalr	848(ra) # 8000746c <_ZN6Buffer3putEi>
        i++;
    80004124:	0019071b          	addiw	a4,s2,1
    80004128:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000412c:	0004a683          	lw	a3,0(s1)
    80004130:	0026979b          	slliw	a5,a3,0x2
    80004134:	00d787bb          	addw	a5,a5,a3
    80004138:	0017979b          	slliw	a5,a5,0x1
    8000413c:	02f767bb          	remw	a5,a4,a5
    80004140:	fc0792e3          	bnez	a5,80004104 <_ZL8producerPv+0x2c>
    80004144:	fb9ff06f          	j	800040fc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80004148:	0104b503          	ld	a0,16(s1)
    8000414c:	ffffd097          	auipc	ra,0xffffd
    80004150:	5fc080e7          	jalr	1532(ra) # 80001748 <sem_signal>
}
    80004154:	01813083          	ld	ra,24(sp)
    80004158:	01013403          	ld	s0,16(sp)
    8000415c:	00813483          	ld	s1,8(sp)
    80004160:	00013903          	ld	s2,0(sp)
    80004164:	02010113          	addi	sp,sp,32
    80004168:	00008067          	ret

000000008000416c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000416c:	fd010113          	addi	sp,sp,-48
    80004170:	02113423          	sd	ra,40(sp)
    80004174:	02813023          	sd	s0,32(sp)
    80004178:	00913c23          	sd	s1,24(sp)
    8000417c:	01213823          	sd	s2,16(sp)
    80004180:	01313423          	sd	s3,8(sp)
    80004184:	03010413          	addi	s0,sp,48
    80004188:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000418c:	00000993          	li	s3,0
    80004190:	01c0006f          	j	800041ac <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	4e4080e7          	jalr	1252(ra) # 80001678 <thread_dispatch>
    8000419c:	0500006f          	j	800041ec <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800041a0:	00a00513          	li	a0,10
    800041a4:	ffffd097          	auipc	ra,0xffffd
    800041a8:	628080e7          	jalr	1576(ra) # 800017cc <putc>
    while (!threadEnd) {
    800041ac:	00009797          	auipc	a5,0x9
    800041b0:	f147a783          	lw	a5,-236(a5) # 8000d0c0 <_ZL9threadEnd>
    800041b4:	06079063          	bnez	a5,80004214 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800041b8:	00893503          	ld	a0,8(s2)
    800041bc:	00003097          	auipc	ra,0x3
    800041c0:	340080e7          	jalr	832(ra) # 800074fc <_ZN6Buffer3getEv>
        i++;
    800041c4:	0019849b          	addiw	s1,s3,1
    800041c8:	0004899b          	sext.w	s3,s1
        putc(key);
    800041cc:	0ff57513          	andi	a0,a0,255
    800041d0:	ffffd097          	auipc	ra,0xffffd
    800041d4:	5fc080e7          	jalr	1532(ra) # 800017cc <putc>
        if (i % (5 * data->id) == 0) {
    800041d8:	00092703          	lw	a4,0(s2)
    800041dc:	0027179b          	slliw	a5,a4,0x2
    800041e0:	00e787bb          	addw	a5,a5,a4
    800041e4:	02f4e7bb          	remw	a5,s1,a5
    800041e8:	fa0786e3          	beqz	a5,80004194 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800041ec:	05000793          	li	a5,80
    800041f0:	02f4e4bb          	remw	s1,s1,a5
    800041f4:	fa049ce3          	bnez	s1,800041ac <_ZL8consumerPv+0x40>
    800041f8:	fa9ff06f          	j	800041a0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800041fc:	00893503          	ld	a0,8(s2)
    80004200:	00003097          	auipc	ra,0x3
    80004204:	2fc080e7          	jalr	764(ra) # 800074fc <_ZN6Buffer3getEv>
        putc(key);
    80004208:	0ff57513          	andi	a0,a0,255
    8000420c:	ffffd097          	auipc	ra,0xffffd
    80004210:	5c0080e7          	jalr	1472(ra) # 800017cc <putc>
    while (data->buffer->getCnt() > 0) {
    80004214:	00893503          	ld	a0,8(s2)
    80004218:	00003097          	auipc	ra,0x3
    8000421c:	370080e7          	jalr	880(ra) # 80007588 <_ZN6Buffer6getCntEv>
    80004220:	fca04ee3          	bgtz	a0,800041fc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80004224:	01093503          	ld	a0,16(s2)
    80004228:	ffffd097          	auipc	ra,0xffffd
    8000422c:	520080e7          	jalr	1312(ra) # 80001748 <sem_signal>
}
    80004230:	02813083          	ld	ra,40(sp)
    80004234:	02013403          	ld	s0,32(sp)
    80004238:	01813483          	ld	s1,24(sp)
    8000423c:	01013903          	ld	s2,16(sp)
    80004240:	00813983          	ld	s3,8(sp)
    80004244:	03010113          	addi	sp,sp,48
    80004248:	00008067          	ret

000000008000424c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000424c:	f9010113          	addi	sp,sp,-112
    80004250:	06113423          	sd	ra,104(sp)
    80004254:	06813023          	sd	s0,96(sp)
    80004258:	04913c23          	sd	s1,88(sp)
    8000425c:	05213823          	sd	s2,80(sp)
    80004260:	05313423          	sd	s3,72(sp)
    80004264:	05413023          	sd	s4,64(sp)
    80004268:	03513c23          	sd	s5,56(sp)
    8000426c:	03613823          	sd	s6,48(sp)
    80004270:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80004274:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80004278:	00006517          	auipc	a0,0x6
    8000427c:	f1850513          	addi	a0,a0,-232 # 8000a190 <CONSOLE_STATUS+0x180>
    80004280:	00002097          	auipc	ra,0x2
    80004284:	374080e7          	jalr	884(ra) # 800065f4 <_Z11printStringPKc>
    getString(input, 30);
    80004288:	01e00593          	li	a1,30
    8000428c:	fa040493          	addi	s1,s0,-96
    80004290:	00048513          	mv	a0,s1
    80004294:	00002097          	auipc	ra,0x2
    80004298:	3e8080e7          	jalr	1000(ra) # 8000667c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000429c:	00048513          	mv	a0,s1
    800042a0:	00002097          	auipc	ra,0x2
    800042a4:	4b4080e7          	jalr	1204(ra) # 80006754 <_Z11stringToIntPKc>
    800042a8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800042ac:	00006517          	auipc	a0,0x6
    800042b0:	f0450513          	addi	a0,a0,-252 # 8000a1b0 <CONSOLE_STATUS+0x1a0>
    800042b4:	00002097          	auipc	ra,0x2
    800042b8:	340080e7          	jalr	832(ra) # 800065f4 <_Z11printStringPKc>
    getString(input, 30);
    800042bc:	01e00593          	li	a1,30
    800042c0:	00048513          	mv	a0,s1
    800042c4:	00002097          	auipc	ra,0x2
    800042c8:	3b8080e7          	jalr	952(ra) # 8000667c <_Z9getStringPci>
    n = stringToInt(input);
    800042cc:	00048513          	mv	a0,s1
    800042d0:	00002097          	auipc	ra,0x2
    800042d4:	484080e7          	jalr	1156(ra) # 80006754 <_Z11stringToIntPKc>
    800042d8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800042dc:	00006517          	auipc	a0,0x6
    800042e0:	ef450513          	addi	a0,a0,-268 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    800042e4:	00002097          	auipc	ra,0x2
    800042e8:	310080e7          	jalr	784(ra) # 800065f4 <_Z11printStringPKc>
    800042ec:	00000613          	li	a2,0
    800042f0:	00a00593          	li	a1,10
    800042f4:	00090513          	mv	a0,s2
    800042f8:	00002097          	auipc	ra,0x2
    800042fc:	4ac080e7          	jalr	1196(ra) # 800067a4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004300:	00006517          	auipc	a0,0x6
    80004304:	ee850513          	addi	a0,a0,-280 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004308:	00002097          	auipc	ra,0x2
    8000430c:	2ec080e7          	jalr	748(ra) # 800065f4 <_Z11printStringPKc>
    80004310:	00000613          	li	a2,0
    80004314:	00a00593          	li	a1,10
    80004318:	00048513          	mv	a0,s1
    8000431c:	00002097          	auipc	ra,0x2
    80004320:	488080e7          	jalr	1160(ra) # 800067a4 <_Z8printIntiii>
    printString(".\n");
    80004324:	00006517          	auipc	a0,0x6
    80004328:	edc50513          	addi	a0,a0,-292 # 8000a200 <CONSOLE_STATUS+0x1f0>
    8000432c:	00002097          	auipc	ra,0x2
    80004330:	2c8080e7          	jalr	712(ra) # 800065f4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004334:	0324c463          	blt	s1,s2,8000435c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80004338:	03205c63          	blez	s2,80004370 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000433c:	03800513          	li	a0,56
    80004340:	fffff097          	auipc	ra,0xfffff
    80004344:	2d8080e7          	jalr	728(ra) # 80003618 <_Znwm>
    80004348:	00050a13          	mv	s4,a0
    8000434c:	00048593          	mv	a1,s1
    80004350:	00003097          	auipc	ra,0x3
    80004354:	080080e7          	jalr	128(ra) # 800073d0 <_ZN6BufferC1Ei>
    80004358:	0300006f          	j	80004388 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000435c:	00006517          	auipc	a0,0x6
    80004360:	eac50513          	addi	a0,a0,-340 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80004364:	00002097          	auipc	ra,0x2
    80004368:	290080e7          	jalr	656(ra) # 800065f4 <_Z11printStringPKc>
        return;
    8000436c:	0140006f          	j	80004380 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004370:	00006517          	auipc	a0,0x6
    80004374:	ed850513          	addi	a0,a0,-296 # 8000a248 <CONSOLE_STATUS+0x238>
    80004378:	00002097          	auipc	ra,0x2
    8000437c:	27c080e7          	jalr	636(ra) # 800065f4 <_Z11printStringPKc>
        return;
    80004380:	000b0113          	mv	sp,s6
    80004384:	1500006f          	j	800044d4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80004388:	00000593          	li	a1,0
    8000438c:	00009517          	auipc	a0,0x9
    80004390:	d3c50513          	addi	a0,a0,-708 # 8000d0c8 <_ZL10waitForAll>
    80004394:	ffffd097          	auipc	ra,0xffffd
    80004398:	32c080e7          	jalr	812(ra) # 800016c0 <sem_open>
    thread_t threads[threadNum];
    8000439c:	00391793          	slli	a5,s2,0x3
    800043a0:	00f78793          	addi	a5,a5,15
    800043a4:	ff07f793          	andi	a5,a5,-16
    800043a8:	40f10133          	sub	sp,sp,a5
    800043ac:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800043b0:	0019071b          	addiw	a4,s2,1
    800043b4:	00171793          	slli	a5,a4,0x1
    800043b8:	00e787b3          	add	a5,a5,a4
    800043bc:	00379793          	slli	a5,a5,0x3
    800043c0:	00f78793          	addi	a5,a5,15
    800043c4:	ff07f793          	andi	a5,a5,-16
    800043c8:	40f10133          	sub	sp,sp,a5
    800043cc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800043d0:	00191613          	slli	a2,s2,0x1
    800043d4:	012607b3          	add	a5,a2,s2
    800043d8:	00379793          	slli	a5,a5,0x3
    800043dc:	00f987b3          	add	a5,s3,a5
    800043e0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800043e4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800043e8:	00009717          	auipc	a4,0x9
    800043ec:	ce073703          	ld	a4,-800(a4) # 8000d0c8 <_ZL10waitForAll>
    800043f0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800043f4:	00078613          	mv	a2,a5
    800043f8:	00000597          	auipc	a1,0x0
    800043fc:	d7458593          	addi	a1,a1,-652 # 8000416c <_ZL8consumerPv>
    80004400:	f9840513          	addi	a0,s0,-104
    80004404:	ffffd097          	auipc	ra,0xffffd
    80004408:	1a8080e7          	jalr	424(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000440c:	00000493          	li	s1,0
    80004410:	0280006f          	j	80004438 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80004414:	00000597          	auipc	a1,0x0
    80004418:	c1458593          	addi	a1,a1,-1004 # 80004028 <_ZL16producerKeyboardPv>
                      data + i);
    8000441c:	00179613          	slli	a2,a5,0x1
    80004420:	00f60633          	add	a2,a2,a5
    80004424:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004428:	00c98633          	add	a2,s3,a2
    8000442c:	ffffd097          	auipc	ra,0xffffd
    80004430:	180080e7          	jalr	384(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004434:	0014849b          	addiw	s1,s1,1
    80004438:	0524d263          	bge	s1,s2,8000447c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000443c:	00149793          	slli	a5,s1,0x1
    80004440:	009787b3          	add	a5,a5,s1
    80004444:	00379793          	slli	a5,a5,0x3
    80004448:	00f987b3          	add	a5,s3,a5
    8000444c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004450:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004454:	00009717          	auipc	a4,0x9
    80004458:	c7473703          	ld	a4,-908(a4) # 8000d0c8 <_ZL10waitForAll>
    8000445c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004460:	00048793          	mv	a5,s1
    80004464:	00349513          	slli	a0,s1,0x3
    80004468:	00aa8533          	add	a0,s5,a0
    8000446c:	fa9054e3          	blez	s1,80004414 <_Z22producerConsumer_C_APIv+0x1c8>
    80004470:	00000597          	auipc	a1,0x0
    80004474:	c6858593          	addi	a1,a1,-920 # 800040d8 <_ZL8producerPv>
    80004478:	fa5ff06f          	j	8000441c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000447c:	ffffd097          	auipc	ra,0xffffd
    80004480:	1fc080e7          	jalr	508(ra) # 80001678 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80004484:	00000493          	li	s1,0
    80004488:	00994e63          	blt	s2,s1,800044a4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000448c:	00009517          	auipc	a0,0x9
    80004490:	c3c53503          	ld	a0,-964(a0) # 8000d0c8 <_ZL10waitForAll>
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	28c080e7          	jalr	652(ra) # 80001720 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    8000449c:	0014849b          	addiw	s1,s1,1
    800044a0:	fe9ff06f          	j	80004488 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800044a4:	00009517          	auipc	a0,0x9
    800044a8:	c2453503          	ld	a0,-988(a0) # 8000d0c8 <_ZL10waitForAll>
    800044ac:	ffffd097          	auipc	ra,0xffffd
    800044b0:	24c080e7          	jalr	588(ra) # 800016f8 <sem_close>
    delete buffer;
    800044b4:	000a0e63          	beqz	s4,800044d0 <_Z22producerConsumer_C_APIv+0x284>
    800044b8:	000a0513          	mv	a0,s4
    800044bc:	00003097          	auipc	ra,0x3
    800044c0:	154080e7          	jalr	340(ra) # 80007610 <_ZN6BufferD1Ev>
    800044c4:	000a0513          	mv	a0,s4
    800044c8:	fffff097          	auipc	ra,0xfffff
    800044cc:	178080e7          	jalr	376(ra) # 80003640 <_ZdlPv>
    800044d0:	000b0113          	mv	sp,s6

}
    800044d4:	f9040113          	addi	sp,s0,-112
    800044d8:	06813083          	ld	ra,104(sp)
    800044dc:	06013403          	ld	s0,96(sp)
    800044e0:	05813483          	ld	s1,88(sp)
    800044e4:	05013903          	ld	s2,80(sp)
    800044e8:	04813983          	ld	s3,72(sp)
    800044ec:	04013a03          	ld	s4,64(sp)
    800044f0:	03813a83          	ld	s5,56(sp)
    800044f4:	03013b03          	ld	s6,48(sp)
    800044f8:	07010113          	addi	sp,sp,112
    800044fc:	00008067          	ret
    80004500:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004504:	000a0513          	mv	a0,s4
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	138080e7          	jalr	312(ra) # 80003640 <_ZdlPv>
    80004510:	00048513          	mv	a0,s1
    80004514:	0000a097          	auipc	ra,0xa
    80004518:	cc4080e7          	jalr	-828(ra) # 8000e1d8 <_Unwind_Resume>

000000008000451c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	01213023          	sd	s2,0(sp)
    80004530:	02010413          	addi	s0,sp,32
    80004534:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004538:	00100793          	li	a5,1
    8000453c:	02a7f863          	bgeu	a5,a0,8000456c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004540:	00a00793          	li	a5,10
    80004544:	02f577b3          	remu	a5,a0,a5
    80004548:	02078e63          	beqz	a5,80004584 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000454c:	fff48513          	addi	a0,s1,-1
    80004550:	00000097          	auipc	ra,0x0
    80004554:	fcc080e7          	jalr	-52(ra) # 8000451c <_ZL9fibonaccim>
    80004558:	00050913          	mv	s2,a0
    8000455c:	ffe48513          	addi	a0,s1,-2
    80004560:	00000097          	auipc	ra,0x0
    80004564:	fbc080e7          	jalr	-68(ra) # 8000451c <_ZL9fibonaccim>
    80004568:	00a90533          	add	a0,s2,a0
}
    8000456c:	01813083          	ld	ra,24(sp)
    80004570:	01013403          	ld	s0,16(sp)
    80004574:	00813483          	ld	s1,8(sp)
    80004578:	00013903          	ld	s2,0(sp)
    8000457c:	02010113          	addi	sp,sp,32
    80004580:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004584:	ffffd097          	auipc	ra,0xffffd
    80004588:	0f4080e7          	jalr	244(ra) # 80001678 <thread_dispatch>
    8000458c:	fc1ff06f          	j	8000454c <_ZL9fibonaccim+0x30>

0000000080004590 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80004590:	fe010113          	addi	sp,sp,-32
    80004594:	00113c23          	sd	ra,24(sp)
    80004598:	00813823          	sd	s0,16(sp)
    8000459c:	00913423          	sd	s1,8(sp)
    800045a0:	01213023          	sd	s2,0(sp)
    800045a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800045a8:	00000913          	li	s2,0
    800045ac:	0380006f          	j	800045e4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800045b0:	ffffd097          	auipc	ra,0xffffd
    800045b4:	0c8080e7          	jalr	200(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800045b8:	00148493          	addi	s1,s1,1
    800045bc:	000027b7          	lui	a5,0x2
    800045c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800045c4:	0097ee63          	bltu	a5,s1,800045e0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800045c8:	00000713          	li	a4,0
    800045cc:	000077b7          	lui	a5,0x7
    800045d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800045d4:	fce7eee3          	bltu	a5,a4,800045b0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800045d8:	00170713          	addi	a4,a4,1
    800045dc:	ff1ff06f          	j	800045cc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800045e0:	00190913          	addi	s2,s2,1
    800045e4:	00900793          	li	a5,9
    800045e8:	0527e063          	bltu	a5,s2,80004628 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800045ec:	00006517          	auipc	a0,0x6
    800045f0:	c8c50513          	addi	a0,a0,-884 # 8000a278 <CONSOLE_STATUS+0x268>
    800045f4:	00002097          	auipc	ra,0x2
    800045f8:	000080e7          	jalr	ra # 800065f4 <_Z11printStringPKc>
    800045fc:	00000613          	li	a2,0
    80004600:	00a00593          	li	a1,10
    80004604:	0009051b          	sext.w	a0,s2
    80004608:	00002097          	auipc	ra,0x2
    8000460c:	19c080e7          	jalr	412(ra) # 800067a4 <_Z8printIntiii>
    80004610:	00006517          	auipc	a0,0x6
    80004614:	ed850513          	addi	a0,a0,-296 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80004618:	00002097          	auipc	ra,0x2
    8000461c:	fdc080e7          	jalr	-36(ra) # 800065f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004620:	00000493          	li	s1,0
    80004624:	f99ff06f          	j	800045bc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004628:	00006517          	auipc	a0,0x6
    8000462c:	c5850513          	addi	a0,a0,-936 # 8000a280 <CONSOLE_STATUS+0x270>
    80004630:	00002097          	auipc	ra,0x2
    80004634:	fc4080e7          	jalr	-60(ra) # 800065f4 <_Z11printStringPKc>
    finishedA = true;
    80004638:	00100793          	li	a5,1
    8000463c:	00009717          	auipc	a4,0x9
    80004640:	a8f70a23          	sb	a5,-1388(a4) # 8000d0d0 <_ZL9finishedA>
}
    80004644:	01813083          	ld	ra,24(sp)
    80004648:	01013403          	ld	s0,16(sp)
    8000464c:	00813483          	ld	s1,8(sp)
    80004650:	00013903          	ld	s2,0(sp)
    80004654:	02010113          	addi	sp,sp,32
    80004658:	00008067          	ret

000000008000465c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000465c:	fe010113          	addi	sp,sp,-32
    80004660:	00113c23          	sd	ra,24(sp)
    80004664:	00813823          	sd	s0,16(sp)
    80004668:	00913423          	sd	s1,8(sp)
    8000466c:	01213023          	sd	s2,0(sp)
    80004670:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004674:	00000913          	li	s2,0
    80004678:	0380006f          	j	800046b0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000467c:	ffffd097          	auipc	ra,0xffffd
    80004680:	ffc080e7          	jalr	-4(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80004684:	00148493          	addi	s1,s1,1
    80004688:	000027b7          	lui	a5,0x2
    8000468c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004690:	0097ee63          	bltu	a5,s1,800046ac <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004694:	00000713          	li	a4,0
    80004698:	000077b7          	lui	a5,0x7
    8000469c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800046a0:	fce7eee3          	bltu	a5,a4,8000467c <_ZN7WorkerB11workerBodyBEPv+0x20>
    800046a4:	00170713          	addi	a4,a4,1
    800046a8:	ff1ff06f          	j	80004698 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800046ac:	00190913          	addi	s2,s2,1
    800046b0:	00f00793          	li	a5,15
    800046b4:	0527e063          	bltu	a5,s2,800046f4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800046b8:	00006517          	auipc	a0,0x6
    800046bc:	bd850513          	addi	a0,a0,-1064 # 8000a290 <CONSOLE_STATUS+0x280>
    800046c0:	00002097          	auipc	ra,0x2
    800046c4:	f34080e7          	jalr	-204(ra) # 800065f4 <_Z11printStringPKc>
    800046c8:	00000613          	li	a2,0
    800046cc:	00a00593          	li	a1,10
    800046d0:	0009051b          	sext.w	a0,s2
    800046d4:	00002097          	auipc	ra,0x2
    800046d8:	0d0080e7          	jalr	208(ra) # 800067a4 <_Z8printIntiii>
    800046dc:	00006517          	auipc	a0,0x6
    800046e0:	e0c50513          	addi	a0,a0,-500 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800046e4:	00002097          	auipc	ra,0x2
    800046e8:	f10080e7          	jalr	-240(ra) # 800065f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800046ec:	00000493          	li	s1,0
    800046f0:	f99ff06f          	j	80004688 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800046f4:	00006517          	auipc	a0,0x6
    800046f8:	ba450513          	addi	a0,a0,-1116 # 8000a298 <CONSOLE_STATUS+0x288>
    800046fc:	00002097          	auipc	ra,0x2
    80004700:	ef8080e7          	jalr	-264(ra) # 800065f4 <_Z11printStringPKc>
    finishedB = true;
    80004704:	00100793          	li	a5,1
    80004708:	00009717          	auipc	a4,0x9
    8000470c:	9cf704a3          	sb	a5,-1591(a4) # 8000d0d1 <_ZL9finishedB>
    thread_dispatch();
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	f68080e7          	jalr	-152(ra) # 80001678 <thread_dispatch>
}
    80004718:	01813083          	ld	ra,24(sp)
    8000471c:	01013403          	ld	s0,16(sp)
    80004720:	00813483          	ld	s1,8(sp)
    80004724:	00013903          	ld	s2,0(sp)
    80004728:	02010113          	addi	sp,sp,32
    8000472c:	00008067          	ret

0000000080004730 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004730:	fe010113          	addi	sp,sp,-32
    80004734:	00113c23          	sd	ra,24(sp)
    80004738:	00813823          	sd	s0,16(sp)
    8000473c:	00913423          	sd	s1,8(sp)
    80004740:	01213023          	sd	s2,0(sp)
    80004744:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004748:	00000493          	li	s1,0
    8000474c:	0400006f          	j	8000478c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004750:	00006517          	auipc	a0,0x6
    80004754:	b5850513          	addi	a0,a0,-1192 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80004758:	00002097          	auipc	ra,0x2
    8000475c:	e9c080e7          	jalr	-356(ra) # 800065f4 <_Z11printStringPKc>
    80004760:	00000613          	li	a2,0
    80004764:	00a00593          	li	a1,10
    80004768:	00048513          	mv	a0,s1
    8000476c:	00002097          	auipc	ra,0x2
    80004770:	038080e7          	jalr	56(ra) # 800067a4 <_Z8printIntiii>
    80004774:	00006517          	auipc	a0,0x6
    80004778:	d7450513          	addi	a0,a0,-652 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    8000477c:	00002097          	auipc	ra,0x2
    80004780:	e78080e7          	jalr	-392(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004784:	0014849b          	addiw	s1,s1,1
    80004788:	0ff4f493          	andi	s1,s1,255
    8000478c:	00200793          	li	a5,2
    80004790:	fc97f0e3          	bgeu	a5,s1,80004750 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004794:	00006517          	auipc	a0,0x6
    80004798:	b1c50513          	addi	a0,a0,-1252 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    8000479c:	00002097          	auipc	ra,0x2
    800047a0:	e58080e7          	jalr	-424(ra) # 800065f4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800047a4:	00700313          	li	t1,7
    thread_dispatch();
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	ed0080e7          	jalr	-304(ra) # 80001678 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800047b0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800047b4:	00006517          	auipc	a0,0x6
    800047b8:	b0c50513          	addi	a0,a0,-1268 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    800047bc:	00002097          	auipc	ra,0x2
    800047c0:	e38080e7          	jalr	-456(ra) # 800065f4 <_Z11printStringPKc>
    800047c4:	00000613          	li	a2,0
    800047c8:	00a00593          	li	a1,10
    800047cc:	0009051b          	sext.w	a0,s2
    800047d0:	00002097          	auipc	ra,0x2
    800047d4:	fd4080e7          	jalr	-44(ra) # 800067a4 <_Z8printIntiii>
    800047d8:	00006517          	auipc	a0,0x6
    800047dc:	d1050513          	addi	a0,a0,-752 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800047e0:	00002097          	auipc	ra,0x2
    800047e4:	e14080e7          	jalr	-492(ra) # 800065f4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800047e8:	00c00513          	li	a0,12
    800047ec:	00000097          	auipc	ra,0x0
    800047f0:	d30080e7          	jalr	-720(ra) # 8000451c <_ZL9fibonaccim>
    800047f4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800047f8:	00006517          	auipc	a0,0x6
    800047fc:	ad050513          	addi	a0,a0,-1328 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004800:	00002097          	auipc	ra,0x2
    80004804:	df4080e7          	jalr	-524(ra) # 800065f4 <_Z11printStringPKc>
    80004808:	00000613          	li	a2,0
    8000480c:	00a00593          	li	a1,10
    80004810:	0009051b          	sext.w	a0,s2
    80004814:	00002097          	auipc	ra,0x2
    80004818:	f90080e7          	jalr	-112(ra) # 800067a4 <_Z8printIntiii>
    8000481c:	00006517          	auipc	a0,0x6
    80004820:	ccc50513          	addi	a0,a0,-820 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80004824:	00002097          	auipc	ra,0x2
    80004828:	dd0080e7          	jalr	-560(ra) # 800065f4 <_Z11printStringPKc>
    8000482c:	0400006f          	j	8000486c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004830:	00006517          	auipc	a0,0x6
    80004834:	a7850513          	addi	a0,a0,-1416 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80004838:	00002097          	auipc	ra,0x2
    8000483c:	dbc080e7          	jalr	-580(ra) # 800065f4 <_Z11printStringPKc>
    80004840:	00000613          	li	a2,0
    80004844:	00a00593          	li	a1,10
    80004848:	00048513          	mv	a0,s1
    8000484c:	00002097          	auipc	ra,0x2
    80004850:	f58080e7          	jalr	-168(ra) # 800067a4 <_Z8printIntiii>
    80004854:	00006517          	auipc	a0,0x6
    80004858:	c9450513          	addi	a0,a0,-876 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    8000485c:	00002097          	auipc	ra,0x2
    80004860:	d98080e7          	jalr	-616(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004864:	0014849b          	addiw	s1,s1,1
    80004868:	0ff4f493          	andi	s1,s1,255
    8000486c:	00500793          	li	a5,5
    80004870:	fc97f0e3          	bgeu	a5,s1,80004830 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004874:	00006517          	auipc	a0,0x6
    80004878:	a0c50513          	addi	a0,a0,-1524 # 8000a280 <CONSOLE_STATUS+0x270>
    8000487c:	00002097          	auipc	ra,0x2
    80004880:	d78080e7          	jalr	-648(ra) # 800065f4 <_Z11printStringPKc>
    finishedC = true;
    80004884:	00100793          	li	a5,1
    80004888:	00009717          	auipc	a4,0x9
    8000488c:	84f70523          	sb	a5,-1974(a4) # 8000d0d2 <_ZL9finishedC>
    thread_dispatch();
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	de8080e7          	jalr	-536(ra) # 80001678 <thread_dispatch>
}
    80004898:	01813083          	ld	ra,24(sp)
    8000489c:	01013403          	ld	s0,16(sp)
    800048a0:	00813483          	ld	s1,8(sp)
    800048a4:	00013903          	ld	s2,0(sp)
    800048a8:	02010113          	addi	sp,sp,32
    800048ac:	00008067          	ret

00000000800048b0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800048b0:	fe010113          	addi	sp,sp,-32
    800048b4:	00113c23          	sd	ra,24(sp)
    800048b8:	00813823          	sd	s0,16(sp)
    800048bc:	00913423          	sd	s1,8(sp)
    800048c0:	01213023          	sd	s2,0(sp)
    800048c4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800048c8:	00a00493          	li	s1,10
    800048cc:	0400006f          	j	8000490c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800048d0:	00006517          	auipc	a0,0x6
    800048d4:	a0850513          	addi	a0,a0,-1528 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    800048d8:	00002097          	auipc	ra,0x2
    800048dc:	d1c080e7          	jalr	-740(ra) # 800065f4 <_Z11printStringPKc>
    800048e0:	00000613          	li	a2,0
    800048e4:	00a00593          	li	a1,10
    800048e8:	00048513          	mv	a0,s1
    800048ec:	00002097          	auipc	ra,0x2
    800048f0:	eb8080e7          	jalr	-328(ra) # 800067a4 <_Z8printIntiii>
    800048f4:	00006517          	auipc	a0,0x6
    800048f8:	bf450513          	addi	a0,a0,-1036 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800048fc:	00002097          	auipc	ra,0x2
    80004900:	cf8080e7          	jalr	-776(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004904:	0014849b          	addiw	s1,s1,1
    80004908:	0ff4f493          	andi	s1,s1,255
    8000490c:	00c00793          	li	a5,12
    80004910:	fc97f0e3          	bgeu	a5,s1,800048d0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004914:	00006517          	auipc	a0,0x6
    80004918:	9cc50513          	addi	a0,a0,-1588 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000491c:	00002097          	auipc	ra,0x2
    80004920:	cd8080e7          	jalr	-808(ra) # 800065f4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004924:	00500313          	li	t1,5
    thread_dispatch();
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	d50080e7          	jalr	-688(ra) # 80001678 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004930:	01000513          	li	a0,16
    80004934:	00000097          	auipc	ra,0x0
    80004938:	be8080e7          	jalr	-1048(ra) # 8000451c <_ZL9fibonaccim>
    8000493c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004940:	00006517          	auipc	a0,0x6
    80004944:	9b050513          	addi	a0,a0,-1616 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    80004948:	00002097          	auipc	ra,0x2
    8000494c:	cac080e7          	jalr	-852(ra) # 800065f4 <_Z11printStringPKc>
    80004950:	00000613          	li	a2,0
    80004954:	00a00593          	li	a1,10
    80004958:	0009051b          	sext.w	a0,s2
    8000495c:	00002097          	auipc	ra,0x2
    80004960:	e48080e7          	jalr	-440(ra) # 800067a4 <_Z8printIntiii>
    80004964:	00006517          	auipc	a0,0x6
    80004968:	b8450513          	addi	a0,a0,-1148 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    8000496c:	00002097          	auipc	ra,0x2
    80004970:	c88080e7          	jalr	-888(ra) # 800065f4 <_Z11printStringPKc>
    80004974:	0400006f          	j	800049b4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004978:	00006517          	auipc	a0,0x6
    8000497c:	96050513          	addi	a0,a0,-1696 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80004980:	00002097          	auipc	ra,0x2
    80004984:	c74080e7          	jalr	-908(ra) # 800065f4 <_Z11printStringPKc>
    80004988:	00000613          	li	a2,0
    8000498c:	00a00593          	li	a1,10
    80004990:	00048513          	mv	a0,s1
    80004994:	00002097          	auipc	ra,0x2
    80004998:	e10080e7          	jalr	-496(ra) # 800067a4 <_Z8printIntiii>
    8000499c:	00006517          	auipc	a0,0x6
    800049a0:	b4c50513          	addi	a0,a0,-1204 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800049a4:	00002097          	auipc	ra,0x2
    800049a8:	c50080e7          	jalr	-944(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800049ac:	0014849b          	addiw	s1,s1,1
    800049b0:	0ff4f493          	andi	s1,s1,255
    800049b4:	00f00793          	li	a5,15
    800049b8:	fc97f0e3          	bgeu	a5,s1,80004978 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800049bc:	00006517          	auipc	a0,0x6
    800049c0:	94450513          	addi	a0,a0,-1724 # 8000a300 <CONSOLE_STATUS+0x2f0>
    800049c4:	00002097          	auipc	ra,0x2
    800049c8:	c30080e7          	jalr	-976(ra) # 800065f4 <_Z11printStringPKc>
    finishedD = true;
    800049cc:	00100793          	li	a5,1
    800049d0:	00008717          	auipc	a4,0x8
    800049d4:	70f701a3          	sb	a5,1795(a4) # 8000d0d3 <_ZL9finishedD>
    thread_dispatch();
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	ca0080e7          	jalr	-864(ra) # 80001678 <thread_dispatch>
}
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	00813483          	ld	s1,8(sp)
    800049ec:	00013903          	ld	s2,0(sp)
    800049f0:	02010113          	addi	sp,sp,32
    800049f4:	00008067          	ret

00000000800049f8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800049f8:	fc010113          	addi	sp,sp,-64
    800049fc:	02113c23          	sd	ra,56(sp)
    80004a00:	02813823          	sd	s0,48(sp)
    80004a04:	02913423          	sd	s1,40(sp)
    80004a08:	03213023          	sd	s2,32(sp)
    80004a0c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004a10:	02000513          	li	a0,32
    80004a14:	fffff097          	auipc	ra,0xfffff
    80004a18:	c04080e7          	jalr	-1020(ra) # 80003618 <_Znwm>
    80004a1c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004a20:	fffff097          	auipc	ra,0xfffff
    80004a24:	ce0080e7          	jalr	-800(ra) # 80003700 <_ZN6ThreadC1Ev>
    80004a28:	00008797          	auipc	a5,0x8
    80004a2c:	1b078793          	addi	a5,a5,432 # 8000cbd8 <_ZTV7WorkerA+0x10>
    80004a30:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004a34:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004a38:	00006517          	auipc	a0,0x6
    80004a3c:	8d850513          	addi	a0,a0,-1832 # 8000a310 <CONSOLE_STATUS+0x300>
    80004a40:	00002097          	auipc	ra,0x2
    80004a44:	bb4080e7          	jalr	-1100(ra) # 800065f4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004a48:	02000513          	li	a0,32
    80004a4c:	fffff097          	auipc	ra,0xfffff
    80004a50:	bcc080e7          	jalr	-1076(ra) # 80003618 <_Znwm>
    80004a54:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004a58:	fffff097          	auipc	ra,0xfffff
    80004a5c:	ca8080e7          	jalr	-856(ra) # 80003700 <_ZN6ThreadC1Ev>
    80004a60:	00008797          	auipc	a5,0x8
    80004a64:	1a078793          	addi	a5,a5,416 # 8000cc00 <_ZTV7WorkerB+0x10>
    80004a68:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004a6c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004a70:	00006517          	auipc	a0,0x6
    80004a74:	8b850513          	addi	a0,a0,-1864 # 8000a328 <CONSOLE_STATUS+0x318>
    80004a78:	00002097          	auipc	ra,0x2
    80004a7c:	b7c080e7          	jalr	-1156(ra) # 800065f4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004a80:	02000513          	li	a0,32
    80004a84:	fffff097          	auipc	ra,0xfffff
    80004a88:	b94080e7          	jalr	-1132(ra) # 80003618 <_Znwm>
    80004a8c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004a90:	fffff097          	auipc	ra,0xfffff
    80004a94:	c70080e7          	jalr	-912(ra) # 80003700 <_ZN6ThreadC1Ev>
    80004a98:	00008797          	auipc	a5,0x8
    80004a9c:	19078793          	addi	a5,a5,400 # 8000cc28 <_ZTV7WorkerC+0x10>
    80004aa0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004aa4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004aa8:	00006517          	auipc	a0,0x6
    80004aac:	89850513          	addi	a0,a0,-1896 # 8000a340 <CONSOLE_STATUS+0x330>
    80004ab0:	00002097          	auipc	ra,0x2
    80004ab4:	b44080e7          	jalr	-1212(ra) # 800065f4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004ab8:	02000513          	li	a0,32
    80004abc:	fffff097          	auipc	ra,0xfffff
    80004ac0:	b5c080e7          	jalr	-1188(ra) # 80003618 <_Znwm>
    80004ac4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004ac8:	fffff097          	auipc	ra,0xfffff
    80004acc:	c38080e7          	jalr	-968(ra) # 80003700 <_ZN6ThreadC1Ev>
    80004ad0:	00008797          	auipc	a5,0x8
    80004ad4:	18078793          	addi	a5,a5,384 # 8000cc50 <_ZTV7WorkerD+0x10>
    80004ad8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004adc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004ae0:	00006517          	auipc	a0,0x6
    80004ae4:	87850513          	addi	a0,a0,-1928 # 8000a358 <CONSOLE_STATUS+0x348>
    80004ae8:	00002097          	auipc	ra,0x2
    80004aec:	b0c080e7          	jalr	-1268(ra) # 800065f4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004af0:	00000493          	li	s1,0
    80004af4:	00300793          	li	a5,3
    80004af8:	0297c663          	blt	a5,s1,80004b24 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004afc:	00349793          	slli	a5,s1,0x3
    80004b00:	fe040713          	addi	a4,s0,-32
    80004b04:	00f707b3          	add	a5,a4,a5
    80004b08:	fe07b503          	ld	a0,-32(a5)
    80004b0c:	fffff097          	auipc	ra,0xfffff
    80004b10:	c24080e7          	jalr	-988(ra) # 80003730 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004b14:	0014849b          	addiw	s1,s1,1
    80004b18:	fddff06f          	j	80004af4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004b1c:	fffff097          	auipc	ra,0xfffff
    80004b20:	c68080e7          	jalr	-920(ra) # 80003784 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004b24:	00008797          	auipc	a5,0x8
    80004b28:	5ac7c783          	lbu	a5,1452(a5) # 8000d0d0 <_ZL9finishedA>
    80004b2c:	fe0788e3          	beqz	a5,80004b1c <_Z20Threads_CPP_API_testv+0x124>
    80004b30:	00008797          	auipc	a5,0x8
    80004b34:	5a17c783          	lbu	a5,1441(a5) # 8000d0d1 <_ZL9finishedB>
    80004b38:	fe0782e3          	beqz	a5,80004b1c <_Z20Threads_CPP_API_testv+0x124>
    80004b3c:	00008797          	auipc	a5,0x8
    80004b40:	5967c783          	lbu	a5,1430(a5) # 8000d0d2 <_ZL9finishedC>
    80004b44:	fc078ce3          	beqz	a5,80004b1c <_Z20Threads_CPP_API_testv+0x124>
    80004b48:	00008797          	auipc	a5,0x8
    80004b4c:	58b7c783          	lbu	a5,1419(a5) # 8000d0d3 <_ZL9finishedD>
    80004b50:	fc0786e3          	beqz	a5,80004b1c <_Z20Threads_CPP_API_testv+0x124>
    80004b54:	fc040493          	addi	s1,s0,-64
    80004b58:	0080006f          	j	80004b60 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004b5c:	00848493          	addi	s1,s1,8
    80004b60:	fe040793          	addi	a5,s0,-32
    80004b64:	08f48663          	beq	s1,a5,80004bf0 <_Z20Threads_CPP_API_testv+0x1f8>
    80004b68:	0004b503          	ld	a0,0(s1)
    80004b6c:	fe0508e3          	beqz	a0,80004b5c <_Z20Threads_CPP_API_testv+0x164>
    80004b70:	00053783          	ld	a5,0(a0)
    80004b74:	0087b783          	ld	a5,8(a5)
    80004b78:	000780e7          	jalr	a5
    80004b7c:	fe1ff06f          	j	80004b5c <_Z20Threads_CPP_API_testv+0x164>
    80004b80:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004b84:	00048513          	mv	a0,s1
    80004b88:	fffff097          	auipc	ra,0xfffff
    80004b8c:	ab8080e7          	jalr	-1352(ra) # 80003640 <_ZdlPv>
    80004b90:	00090513          	mv	a0,s2
    80004b94:	00009097          	auipc	ra,0x9
    80004b98:	644080e7          	jalr	1604(ra) # 8000e1d8 <_Unwind_Resume>
    80004b9c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004ba0:	00048513          	mv	a0,s1
    80004ba4:	fffff097          	auipc	ra,0xfffff
    80004ba8:	a9c080e7          	jalr	-1380(ra) # 80003640 <_ZdlPv>
    80004bac:	00090513          	mv	a0,s2
    80004bb0:	00009097          	auipc	ra,0x9
    80004bb4:	628080e7          	jalr	1576(ra) # 8000e1d8 <_Unwind_Resume>
    80004bb8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004bbc:	00048513          	mv	a0,s1
    80004bc0:	fffff097          	auipc	ra,0xfffff
    80004bc4:	a80080e7          	jalr	-1408(ra) # 80003640 <_ZdlPv>
    80004bc8:	00090513          	mv	a0,s2
    80004bcc:	00009097          	auipc	ra,0x9
    80004bd0:	60c080e7          	jalr	1548(ra) # 8000e1d8 <_Unwind_Resume>
    80004bd4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004bd8:	00048513          	mv	a0,s1
    80004bdc:	fffff097          	auipc	ra,0xfffff
    80004be0:	a64080e7          	jalr	-1436(ra) # 80003640 <_ZdlPv>
    80004be4:	00090513          	mv	a0,s2
    80004be8:	00009097          	auipc	ra,0x9
    80004bec:	5f0080e7          	jalr	1520(ra) # 8000e1d8 <_Unwind_Resume>
}
    80004bf0:	03813083          	ld	ra,56(sp)
    80004bf4:	03013403          	ld	s0,48(sp)
    80004bf8:	02813483          	ld	s1,40(sp)
    80004bfc:	02013903          	ld	s2,32(sp)
    80004c00:	04010113          	addi	sp,sp,64
    80004c04:	00008067          	ret

0000000080004c08 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004c08:	ff010113          	addi	sp,sp,-16
    80004c0c:	00113423          	sd	ra,8(sp)
    80004c10:	00813023          	sd	s0,0(sp)
    80004c14:	01010413          	addi	s0,sp,16
    80004c18:	00008797          	auipc	a5,0x8
    80004c1c:	fc078793          	addi	a5,a5,-64 # 8000cbd8 <_ZTV7WorkerA+0x10>
    80004c20:	00f53023          	sd	a5,0(a0)
    80004c24:	fffff097          	auipc	ra,0xfffff
    80004c28:	924080e7          	jalr	-1756(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004c2c:	00813083          	ld	ra,8(sp)
    80004c30:	00013403          	ld	s0,0(sp)
    80004c34:	01010113          	addi	sp,sp,16
    80004c38:	00008067          	ret

0000000080004c3c <_ZN7WorkerAD0Ev>:
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00113c23          	sd	ra,24(sp)
    80004c44:	00813823          	sd	s0,16(sp)
    80004c48:	00913423          	sd	s1,8(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    80004c50:	00050493          	mv	s1,a0
    80004c54:	00008797          	auipc	a5,0x8
    80004c58:	f8478793          	addi	a5,a5,-124 # 8000cbd8 <_ZTV7WorkerA+0x10>
    80004c5c:	00f53023          	sd	a5,0(a0)
    80004c60:	fffff097          	auipc	ra,0xfffff
    80004c64:	8e8080e7          	jalr	-1816(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	fffff097          	auipc	ra,0xfffff
    80004c70:	9d4080e7          	jalr	-1580(ra) # 80003640 <_ZdlPv>
    80004c74:	01813083          	ld	ra,24(sp)
    80004c78:	01013403          	ld	s0,16(sp)
    80004c7c:	00813483          	ld	s1,8(sp)
    80004c80:	02010113          	addi	sp,sp,32
    80004c84:	00008067          	ret

0000000080004c88 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004c88:	ff010113          	addi	sp,sp,-16
    80004c8c:	00113423          	sd	ra,8(sp)
    80004c90:	00813023          	sd	s0,0(sp)
    80004c94:	01010413          	addi	s0,sp,16
    80004c98:	00008797          	auipc	a5,0x8
    80004c9c:	f6878793          	addi	a5,a5,-152 # 8000cc00 <_ZTV7WorkerB+0x10>
    80004ca0:	00f53023          	sd	a5,0(a0)
    80004ca4:	fffff097          	auipc	ra,0xfffff
    80004ca8:	8a4080e7          	jalr	-1884(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004cac:	00813083          	ld	ra,8(sp)
    80004cb0:	00013403          	ld	s0,0(sp)
    80004cb4:	01010113          	addi	sp,sp,16
    80004cb8:	00008067          	ret

0000000080004cbc <_ZN7WorkerBD0Ev>:
    80004cbc:	fe010113          	addi	sp,sp,-32
    80004cc0:	00113c23          	sd	ra,24(sp)
    80004cc4:	00813823          	sd	s0,16(sp)
    80004cc8:	00913423          	sd	s1,8(sp)
    80004ccc:	02010413          	addi	s0,sp,32
    80004cd0:	00050493          	mv	s1,a0
    80004cd4:	00008797          	auipc	a5,0x8
    80004cd8:	f2c78793          	addi	a5,a5,-212 # 8000cc00 <_ZTV7WorkerB+0x10>
    80004cdc:	00f53023          	sd	a5,0(a0)
    80004ce0:	fffff097          	auipc	ra,0xfffff
    80004ce4:	868080e7          	jalr	-1944(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004ce8:	00048513          	mv	a0,s1
    80004cec:	fffff097          	auipc	ra,0xfffff
    80004cf0:	954080e7          	jalr	-1708(ra) # 80003640 <_ZdlPv>
    80004cf4:	01813083          	ld	ra,24(sp)
    80004cf8:	01013403          	ld	s0,16(sp)
    80004cfc:	00813483          	ld	s1,8(sp)
    80004d00:	02010113          	addi	sp,sp,32
    80004d04:	00008067          	ret

0000000080004d08 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004d08:	ff010113          	addi	sp,sp,-16
    80004d0c:	00113423          	sd	ra,8(sp)
    80004d10:	00813023          	sd	s0,0(sp)
    80004d14:	01010413          	addi	s0,sp,16
    80004d18:	00008797          	auipc	a5,0x8
    80004d1c:	f1078793          	addi	a5,a5,-240 # 8000cc28 <_ZTV7WorkerC+0x10>
    80004d20:	00f53023          	sd	a5,0(a0)
    80004d24:	fffff097          	auipc	ra,0xfffff
    80004d28:	824080e7          	jalr	-2012(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004d2c:	00813083          	ld	ra,8(sp)
    80004d30:	00013403          	ld	s0,0(sp)
    80004d34:	01010113          	addi	sp,sp,16
    80004d38:	00008067          	ret

0000000080004d3c <_ZN7WorkerCD0Ev>:
    80004d3c:	fe010113          	addi	sp,sp,-32
    80004d40:	00113c23          	sd	ra,24(sp)
    80004d44:	00813823          	sd	s0,16(sp)
    80004d48:	00913423          	sd	s1,8(sp)
    80004d4c:	02010413          	addi	s0,sp,32
    80004d50:	00050493          	mv	s1,a0
    80004d54:	00008797          	auipc	a5,0x8
    80004d58:	ed478793          	addi	a5,a5,-300 # 8000cc28 <_ZTV7WorkerC+0x10>
    80004d5c:	00f53023          	sd	a5,0(a0)
    80004d60:	ffffe097          	auipc	ra,0xffffe
    80004d64:	7e8080e7          	jalr	2024(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	fffff097          	auipc	ra,0xfffff
    80004d70:	8d4080e7          	jalr	-1836(ra) # 80003640 <_ZdlPv>
    80004d74:	01813083          	ld	ra,24(sp)
    80004d78:	01013403          	ld	s0,16(sp)
    80004d7c:	00813483          	ld	s1,8(sp)
    80004d80:	02010113          	addi	sp,sp,32
    80004d84:	00008067          	ret

0000000080004d88 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004d88:	ff010113          	addi	sp,sp,-16
    80004d8c:	00113423          	sd	ra,8(sp)
    80004d90:	00813023          	sd	s0,0(sp)
    80004d94:	01010413          	addi	s0,sp,16
    80004d98:	00008797          	auipc	a5,0x8
    80004d9c:	eb878793          	addi	a5,a5,-328 # 8000cc50 <_ZTV7WorkerD+0x10>
    80004da0:	00f53023          	sd	a5,0(a0)
    80004da4:	ffffe097          	auipc	ra,0xffffe
    80004da8:	7a4080e7          	jalr	1956(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004dac:	00813083          	ld	ra,8(sp)
    80004db0:	00013403          	ld	s0,0(sp)
    80004db4:	01010113          	addi	sp,sp,16
    80004db8:	00008067          	ret

0000000080004dbc <_ZN7WorkerDD0Ev>:
    80004dbc:	fe010113          	addi	sp,sp,-32
    80004dc0:	00113c23          	sd	ra,24(sp)
    80004dc4:	00813823          	sd	s0,16(sp)
    80004dc8:	00913423          	sd	s1,8(sp)
    80004dcc:	02010413          	addi	s0,sp,32
    80004dd0:	00050493          	mv	s1,a0
    80004dd4:	00008797          	auipc	a5,0x8
    80004dd8:	e7c78793          	addi	a5,a5,-388 # 8000cc50 <_ZTV7WorkerD+0x10>
    80004ddc:	00f53023          	sd	a5,0(a0)
    80004de0:	ffffe097          	auipc	ra,0xffffe
    80004de4:	768080e7          	jalr	1896(ra) # 80003548 <_ZN6ThreadD1Ev>
    80004de8:	00048513          	mv	a0,s1
    80004dec:	fffff097          	auipc	ra,0xfffff
    80004df0:	854080e7          	jalr	-1964(ra) # 80003640 <_ZdlPv>
    80004df4:	01813083          	ld	ra,24(sp)
    80004df8:	01013403          	ld	s0,16(sp)
    80004dfc:	00813483          	ld	s1,8(sp)
    80004e00:	02010113          	addi	sp,sp,32
    80004e04:	00008067          	ret

0000000080004e08 <_ZN7WorkerA3runEv>:
    void run() override {
    80004e08:	ff010113          	addi	sp,sp,-16
    80004e0c:	00113423          	sd	ra,8(sp)
    80004e10:	00813023          	sd	s0,0(sp)
    80004e14:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004e18:	00000593          	li	a1,0
    80004e1c:	fffff097          	auipc	ra,0xfffff
    80004e20:	774080e7          	jalr	1908(ra) # 80004590 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004e24:	00813083          	ld	ra,8(sp)
    80004e28:	00013403          	ld	s0,0(sp)
    80004e2c:	01010113          	addi	sp,sp,16
    80004e30:	00008067          	ret

0000000080004e34 <_ZN7WorkerB3runEv>:
    void run() override {
    80004e34:	ff010113          	addi	sp,sp,-16
    80004e38:	00113423          	sd	ra,8(sp)
    80004e3c:	00813023          	sd	s0,0(sp)
    80004e40:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004e44:	00000593          	li	a1,0
    80004e48:	00000097          	auipc	ra,0x0
    80004e4c:	814080e7          	jalr	-2028(ra) # 8000465c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004e50:	00813083          	ld	ra,8(sp)
    80004e54:	00013403          	ld	s0,0(sp)
    80004e58:	01010113          	addi	sp,sp,16
    80004e5c:	00008067          	ret

0000000080004e60 <_ZN7WorkerC3runEv>:
    void run() override {
    80004e60:	ff010113          	addi	sp,sp,-16
    80004e64:	00113423          	sd	ra,8(sp)
    80004e68:	00813023          	sd	s0,0(sp)
    80004e6c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004e70:	00000593          	li	a1,0
    80004e74:	00000097          	auipc	ra,0x0
    80004e78:	8bc080e7          	jalr	-1860(ra) # 80004730 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004e7c:	00813083          	ld	ra,8(sp)
    80004e80:	00013403          	ld	s0,0(sp)
    80004e84:	01010113          	addi	sp,sp,16
    80004e88:	00008067          	ret

0000000080004e8c <_ZN7WorkerD3runEv>:
    void run() override {
    80004e8c:	ff010113          	addi	sp,sp,-16
    80004e90:	00113423          	sd	ra,8(sp)
    80004e94:	00813023          	sd	s0,0(sp)
    80004e98:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004e9c:	00000593          	li	a1,0
    80004ea0:	00000097          	auipc	ra,0x0
    80004ea4:	a10080e7          	jalr	-1520(ra) # 800048b0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004ea8:	00813083          	ld	ra,8(sp)
    80004eac:	00013403          	ld	s0,0(sp)
    80004eb0:	01010113          	addi	sp,sp,16
    80004eb4:	00008067          	ret

0000000080004eb8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004eb8:	f8010113          	addi	sp,sp,-128
    80004ebc:	06113c23          	sd	ra,120(sp)
    80004ec0:	06813823          	sd	s0,112(sp)
    80004ec4:	06913423          	sd	s1,104(sp)
    80004ec8:	07213023          	sd	s2,96(sp)
    80004ecc:	05313c23          	sd	s3,88(sp)
    80004ed0:	05413823          	sd	s4,80(sp)
    80004ed4:	05513423          	sd	s5,72(sp)
    80004ed8:	05613023          	sd	s6,64(sp)
    80004edc:	03713c23          	sd	s7,56(sp)
    80004ee0:	03813823          	sd	s8,48(sp)
    80004ee4:	03913423          	sd	s9,40(sp)
    80004ee8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004eec:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004ef0:	00005517          	auipc	a0,0x5
    80004ef4:	2a050513          	addi	a0,a0,672 # 8000a190 <CONSOLE_STATUS+0x180>
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	6fc080e7          	jalr	1788(ra) # 800065f4 <_Z11printStringPKc>
    getString(input, 30);
    80004f00:	01e00593          	li	a1,30
    80004f04:	f8040493          	addi	s1,s0,-128
    80004f08:	00048513          	mv	a0,s1
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	770080e7          	jalr	1904(ra) # 8000667c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004f14:	00048513          	mv	a0,s1
    80004f18:	00002097          	auipc	ra,0x2
    80004f1c:	83c080e7          	jalr	-1988(ra) # 80006754 <_Z11stringToIntPKc>
    80004f20:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004f24:	00005517          	auipc	a0,0x5
    80004f28:	28c50513          	addi	a0,a0,652 # 8000a1b0 <CONSOLE_STATUS+0x1a0>
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	6c8080e7          	jalr	1736(ra) # 800065f4 <_Z11printStringPKc>
    getString(input, 30);
    80004f34:	01e00593          	li	a1,30
    80004f38:	00048513          	mv	a0,s1
    80004f3c:	00001097          	auipc	ra,0x1
    80004f40:	740080e7          	jalr	1856(ra) # 8000667c <_Z9getStringPci>
    n = stringToInt(input);
    80004f44:	00048513          	mv	a0,s1
    80004f48:	00002097          	auipc	ra,0x2
    80004f4c:	80c080e7          	jalr	-2036(ra) # 80006754 <_Z11stringToIntPKc>
    80004f50:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004f54:	00005517          	auipc	a0,0x5
    80004f58:	27c50513          	addi	a0,a0,636 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	698080e7          	jalr	1688(ra) # 800065f4 <_Z11printStringPKc>
    printInt(threadNum);
    80004f64:	00000613          	li	a2,0
    80004f68:	00a00593          	li	a1,10
    80004f6c:	00098513          	mv	a0,s3
    80004f70:	00002097          	auipc	ra,0x2
    80004f74:	834080e7          	jalr	-1996(ra) # 800067a4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004f78:	00005517          	auipc	a0,0x5
    80004f7c:	27050513          	addi	a0,a0,624 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80004f80:	00001097          	auipc	ra,0x1
    80004f84:	674080e7          	jalr	1652(ra) # 800065f4 <_Z11printStringPKc>
    printInt(n);
    80004f88:	00000613          	li	a2,0
    80004f8c:	00a00593          	li	a1,10
    80004f90:	00048513          	mv	a0,s1
    80004f94:	00002097          	auipc	ra,0x2
    80004f98:	810080e7          	jalr	-2032(ra) # 800067a4 <_Z8printIntiii>
    printString(".\n");
    80004f9c:	00005517          	auipc	a0,0x5
    80004fa0:	26450513          	addi	a0,a0,612 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	650080e7          	jalr	1616(ra) # 800065f4 <_Z11printStringPKc>
    if (threadNum > n) {
    80004fac:	0334c463          	blt	s1,s3,80004fd4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004fb0:	03305c63          	blez	s3,80004fe8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004fb4:	03800513          	li	a0,56
    80004fb8:	ffffe097          	auipc	ra,0xffffe
    80004fbc:	660080e7          	jalr	1632(ra) # 80003618 <_Znwm>
    80004fc0:	00050a93          	mv	s5,a0
    80004fc4:	00048593          	mv	a1,s1
    80004fc8:	00002097          	auipc	ra,0x2
    80004fcc:	8fc080e7          	jalr	-1796(ra) # 800068c4 <_ZN9BufferCPPC1Ei>
    80004fd0:	0300006f          	j	80005000 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    80004fd4:	00005517          	auipc	a0,0x5
    80004fd8:	39c50513          	addi	a0,a0,924 # 8000a370 <CONSOLE_STATUS+0x360>
    80004fdc:	00001097          	auipc	ra,0x1
    80004fe0:	618080e7          	jalr	1560(ra) # 800065f4 <_Z11printStringPKc>
        return;
    80004fe4:	0140006f          	j	80004ff8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004fe8:	00005517          	auipc	a0,0x5
    80004fec:	26050513          	addi	a0,a0,608 # 8000a248 <CONSOLE_STATUS+0x238>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	604080e7          	jalr	1540(ra) # 800065f4 <_Z11printStringPKc>
        return;
    80004ff8:	000c0113          	mv	sp,s8
    80004ffc:	2140006f          	j	80005210 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80005000:	01000513          	li	a0,16
    80005004:	ffffe097          	auipc	ra,0xffffe
    80005008:	614080e7          	jalr	1556(ra) # 80003618 <_Znwm>
    8000500c:	00050913          	mv	s2,a0
    80005010:	00000593          	li	a1,0
    80005014:	ffffe097          	auipc	ra,0xffffe
    80005018:	7c0080e7          	jalr	1984(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    8000501c:	00008797          	auipc	a5,0x8
    80005020:	0d27b223          	sd	s2,196(a5) # 8000d0e0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80005024:	00399793          	slli	a5,s3,0x3
    80005028:	00f78793          	addi	a5,a5,15
    8000502c:	ff07f793          	andi	a5,a5,-16
    80005030:	40f10133          	sub	sp,sp,a5
    80005034:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80005038:	0019871b          	addiw	a4,s3,1
    8000503c:	00171793          	slli	a5,a4,0x1
    80005040:	00e787b3          	add	a5,a5,a4
    80005044:	00379793          	slli	a5,a5,0x3
    80005048:	00f78793          	addi	a5,a5,15
    8000504c:	ff07f793          	andi	a5,a5,-16
    80005050:	40f10133          	sub	sp,sp,a5
    80005054:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80005058:	00199493          	slli	s1,s3,0x1
    8000505c:	013484b3          	add	s1,s1,s3
    80005060:	00349493          	slli	s1,s1,0x3
    80005064:	009b04b3          	add	s1,s6,s1
    80005068:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000506c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80005070:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80005074:	02800513          	li	a0,40
    80005078:	ffffe097          	auipc	ra,0xffffe
    8000507c:	5a0080e7          	jalr	1440(ra) # 80003618 <_Znwm>
    80005080:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80005084:	ffffe097          	auipc	ra,0xffffe
    80005088:	67c080e7          	jalr	1660(ra) # 80003700 <_ZN6ThreadC1Ev>
    8000508c:	00008797          	auipc	a5,0x8
    80005090:	c3c78793          	addi	a5,a5,-964 # 8000ccc8 <_ZTV8Consumer+0x10>
    80005094:	00fbb023          	sd	a5,0(s7)
    80005098:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000509c:	000b8513          	mv	a0,s7
    800050a0:	ffffe097          	auipc	ra,0xffffe
    800050a4:	690080e7          	jalr	1680(ra) # 80003730 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800050a8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800050ac:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800050b0:	00008797          	auipc	a5,0x8
    800050b4:	0307b783          	ld	a5,48(a5) # 8000d0e0 <_ZL10waitForAll>
    800050b8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800050bc:	02800513          	li	a0,40
    800050c0:	ffffe097          	auipc	ra,0xffffe
    800050c4:	558080e7          	jalr	1368(ra) # 80003618 <_Znwm>
    800050c8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800050cc:	ffffe097          	auipc	ra,0xffffe
    800050d0:	634080e7          	jalr	1588(ra) # 80003700 <_ZN6ThreadC1Ev>
    800050d4:	00008797          	auipc	a5,0x8
    800050d8:	ba478793          	addi	a5,a5,-1116 # 8000cc78 <_ZTV16ProducerKeyborad+0x10>
    800050dc:	00f4b023          	sd	a5,0(s1)
    800050e0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800050e4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800050e8:	00048513          	mv	a0,s1
    800050ec:	ffffe097          	auipc	ra,0xffffe
    800050f0:	644080e7          	jalr	1604(ra) # 80003730 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800050f4:	00100913          	li	s2,1
    800050f8:	0300006f          	j	80005128 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800050fc:	00008797          	auipc	a5,0x8
    80005100:	ba478793          	addi	a5,a5,-1116 # 8000cca0 <_ZTV8Producer+0x10>
    80005104:	00fcb023          	sd	a5,0(s9)
    80005108:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000510c:	00391793          	slli	a5,s2,0x3
    80005110:	00fa07b3          	add	a5,s4,a5
    80005114:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80005118:	000c8513          	mv	a0,s9
    8000511c:	ffffe097          	auipc	ra,0xffffe
    80005120:	614080e7          	jalr	1556(ra) # 80003730 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80005124:	0019091b          	addiw	s2,s2,1
    80005128:	05395263          	bge	s2,s3,8000516c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000512c:	00191493          	slli	s1,s2,0x1
    80005130:	012484b3          	add	s1,s1,s2
    80005134:	00349493          	slli	s1,s1,0x3
    80005138:	009b04b3          	add	s1,s6,s1
    8000513c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80005140:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80005144:	00008797          	auipc	a5,0x8
    80005148:	f9c7b783          	ld	a5,-100(a5) # 8000d0e0 <_ZL10waitForAll>
    8000514c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80005150:	02800513          	li	a0,40
    80005154:	ffffe097          	auipc	ra,0xffffe
    80005158:	4c4080e7          	jalr	1220(ra) # 80003618 <_Znwm>
    8000515c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80005160:	ffffe097          	auipc	ra,0xffffe
    80005164:	5a0080e7          	jalr	1440(ra) # 80003700 <_ZN6ThreadC1Ev>
    80005168:	f95ff06f          	j	800050fc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000516c:	ffffe097          	auipc	ra,0xffffe
    80005170:	618080e7          	jalr	1560(ra) # 80003784 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005174:	00000493          	li	s1,0
    80005178:	0099ce63          	blt	s3,s1,80005194 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000517c:	00008517          	auipc	a0,0x8
    80005180:	f6453503          	ld	a0,-156(a0) # 8000d0e0 <_ZL10waitForAll>
    80005184:	ffffe097          	auipc	ra,0xffffe
    80005188:	688080e7          	jalr	1672(ra) # 8000380c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000518c:	0014849b          	addiw	s1,s1,1
    80005190:	fe9ff06f          	j	80005178 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80005194:	00008517          	auipc	a0,0x8
    80005198:	f4c53503          	ld	a0,-180(a0) # 8000d0e0 <_ZL10waitForAll>
    8000519c:	00050863          	beqz	a0,800051ac <_Z20testConsumerProducerv+0x2f4>
    800051a0:	00053783          	ld	a5,0(a0)
    800051a4:	0087b783          	ld	a5,8(a5)
    800051a8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800051ac:	00000493          	li	s1,0
    800051b0:	0080006f          	j	800051b8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800051b4:	0014849b          	addiw	s1,s1,1
    800051b8:	0334d263          	bge	s1,s3,800051dc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800051bc:	00349793          	slli	a5,s1,0x3
    800051c0:	00fa07b3          	add	a5,s4,a5
    800051c4:	0007b503          	ld	a0,0(a5)
    800051c8:	fe0506e3          	beqz	a0,800051b4 <_Z20testConsumerProducerv+0x2fc>
    800051cc:	00053783          	ld	a5,0(a0)
    800051d0:	0087b783          	ld	a5,8(a5)
    800051d4:	000780e7          	jalr	a5
    800051d8:	fddff06f          	j	800051b4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800051dc:	000b8a63          	beqz	s7,800051f0 <_Z20testConsumerProducerv+0x338>
    800051e0:	000bb783          	ld	a5,0(s7)
    800051e4:	0087b783          	ld	a5,8(a5)
    800051e8:	000b8513          	mv	a0,s7
    800051ec:	000780e7          	jalr	a5
    delete buffer;
    800051f0:	000a8e63          	beqz	s5,8000520c <_Z20testConsumerProducerv+0x354>
    800051f4:	000a8513          	mv	a0,s5
    800051f8:	00002097          	auipc	ra,0x2
    800051fc:	9c4080e7          	jalr	-1596(ra) # 80006bbc <_ZN9BufferCPPD1Ev>
    80005200:	000a8513          	mv	a0,s5
    80005204:	ffffe097          	auipc	ra,0xffffe
    80005208:	43c080e7          	jalr	1084(ra) # 80003640 <_ZdlPv>
    8000520c:	000c0113          	mv	sp,s8
}
    80005210:	f8040113          	addi	sp,s0,-128
    80005214:	07813083          	ld	ra,120(sp)
    80005218:	07013403          	ld	s0,112(sp)
    8000521c:	06813483          	ld	s1,104(sp)
    80005220:	06013903          	ld	s2,96(sp)
    80005224:	05813983          	ld	s3,88(sp)
    80005228:	05013a03          	ld	s4,80(sp)
    8000522c:	04813a83          	ld	s5,72(sp)
    80005230:	04013b03          	ld	s6,64(sp)
    80005234:	03813b83          	ld	s7,56(sp)
    80005238:	03013c03          	ld	s8,48(sp)
    8000523c:	02813c83          	ld	s9,40(sp)
    80005240:	08010113          	addi	sp,sp,128
    80005244:	00008067          	ret
    80005248:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000524c:	000a8513          	mv	a0,s5
    80005250:	ffffe097          	auipc	ra,0xffffe
    80005254:	3f0080e7          	jalr	1008(ra) # 80003640 <_ZdlPv>
    80005258:	00048513          	mv	a0,s1
    8000525c:	00009097          	auipc	ra,0x9
    80005260:	f7c080e7          	jalr	-132(ra) # 8000e1d8 <_Unwind_Resume>
    80005264:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80005268:	00090513          	mv	a0,s2
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	3d4080e7          	jalr	980(ra) # 80003640 <_ZdlPv>
    80005274:	00048513          	mv	a0,s1
    80005278:	00009097          	auipc	ra,0x9
    8000527c:	f60080e7          	jalr	-160(ra) # 8000e1d8 <_Unwind_Resume>
    80005280:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80005284:	000b8513          	mv	a0,s7
    80005288:	ffffe097          	auipc	ra,0xffffe
    8000528c:	3b8080e7          	jalr	952(ra) # 80003640 <_ZdlPv>
    80005290:	00048513          	mv	a0,s1
    80005294:	00009097          	auipc	ra,0x9
    80005298:	f44080e7          	jalr	-188(ra) # 8000e1d8 <_Unwind_Resume>
    8000529c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800052a0:	00048513          	mv	a0,s1
    800052a4:	ffffe097          	auipc	ra,0xffffe
    800052a8:	39c080e7          	jalr	924(ra) # 80003640 <_ZdlPv>
    800052ac:	00090513          	mv	a0,s2
    800052b0:	00009097          	auipc	ra,0x9
    800052b4:	f28080e7          	jalr	-216(ra) # 8000e1d8 <_Unwind_Resume>
    800052b8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800052bc:	000c8513          	mv	a0,s9
    800052c0:	ffffe097          	auipc	ra,0xffffe
    800052c4:	380080e7          	jalr	896(ra) # 80003640 <_ZdlPv>
    800052c8:	00048513          	mv	a0,s1
    800052cc:	00009097          	auipc	ra,0x9
    800052d0:	f0c080e7          	jalr	-244(ra) # 8000e1d8 <_Unwind_Resume>

00000000800052d4 <_ZN8Consumer3runEv>:
    void run() override {
    800052d4:	fd010113          	addi	sp,sp,-48
    800052d8:	02113423          	sd	ra,40(sp)
    800052dc:	02813023          	sd	s0,32(sp)
    800052e0:	00913c23          	sd	s1,24(sp)
    800052e4:	01213823          	sd	s2,16(sp)
    800052e8:	01313423          	sd	s3,8(sp)
    800052ec:	03010413          	addi	s0,sp,48
    800052f0:	00050913          	mv	s2,a0
        int i = 0;
    800052f4:	00000993          	li	s3,0
    800052f8:	0100006f          	j	80005308 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800052fc:	00a00513          	li	a0,10
    80005300:	ffffe097          	auipc	ra,0xffffe
    80005304:	624080e7          	jalr	1572(ra) # 80003924 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80005308:	00008797          	auipc	a5,0x8
    8000530c:	dd07a783          	lw	a5,-560(a5) # 8000d0d8 <_ZL9threadEnd>
    80005310:	04079a63          	bnez	a5,80005364 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80005314:	02093783          	ld	a5,32(s2)
    80005318:	0087b503          	ld	a0,8(a5)
    8000531c:	00001097          	auipc	ra,0x1
    80005320:	78c080e7          	jalr	1932(ra) # 80006aa8 <_ZN9BufferCPP3getEv>
            i++;
    80005324:	0019849b          	addiw	s1,s3,1
    80005328:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000532c:	0ff57513          	andi	a0,a0,255
    80005330:	ffffe097          	auipc	ra,0xffffe
    80005334:	5f4080e7          	jalr	1524(ra) # 80003924 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80005338:	05000793          	li	a5,80
    8000533c:	02f4e4bb          	remw	s1,s1,a5
    80005340:	fc0494e3          	bnez	s1,80005308 <_ZN8Consumer3runEv+0x34>
    80005344:	fb9ff06f          	j	800052fc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80005348:	02093783          	ld	a5,32(s2)
    8000534c:	0087b503          	ld	a0,8(a5)
    80005350:	00001097          	auipc	ra,0x1
    80005354:	758080e7          	jalr	1880(ra) # 80006aa8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80005358:	0ff57513          	andi	a0,a0,255
    8000535c:	ffffe097          	auipc	ra,0xffffe
    80005360:	5c8080e7          	jalr	1480(ra) # 80003924 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80005364:	02093783          	ld	a5,32(s2)
    80005368:	0087b503          	ld	a0,8(a5)
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	7c8080e7          	jalr	1992(ra) # 80006b34 <_ZN9BufferCPP6getCntEv>
    80005374:	fca04ae3          	bgtz	a0,80005348 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80005378:	02093783          	ld	a5,32(s2)
    8000537c:	0107b503          	ld	a0,16(a5)
    80005380:	ffffe097          	auipc	ra,0xffffe
    80005384:	4b8080e7          	jalr	1208(ra) # 80003838 <_ZN9Semaphore6signalEv>
    }
    80005388:	02813083          	ld	ra,40(sp)
    8000538c:	02013403          	ld	s0,32(sp)
    80005390:	01813483          	ld	s1,24(sp)
    80005394:	01013903          	ld	s2,16(sp)
    80005398:	00813983          	ld	s3,8(sp)
    8000539c:	03010113          	addi	sp,sp,48
    800053a0:	00008067          	ret

00000000800053a4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800053a4:	ff010113          	addi	sp,sp,-16
    800053a8:	00113423          	sd	ra,8(sp)
    800053ac:	00813023          	sd	s0,0(sp)
    800053b0:	01010413          	addi	s0,sp,16
    800053b4:	00008797          	auipc	a5,0x8
    800053b8:	91478793          	addi	a5,a5,-1772 # 8000ccc8 <_ZTV8Consumer+0x10>
    800053bc:	00f53023          	sd	a5,0(a0)
    800053c0:	ffffe097          	auipc	ra,0xffffe
    800053c4:	188080e7          	jalr	392(ra) # 80003548 <_ZN6ThreadD1Ev>
    800053c8:	00813083          	ld	ra,8(sp)
    800053cc:	00013403          	ld	s0,0(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret

00000000800053d8 <_ZN8ConsumerD0Ev>:
    800053d8:	fe010113          	addi	sp,sp,-32
    800053dc:	00113c23          	sd	ra,24(sp)
    800053e0:	00813823          	sd	s0,16(sp)
    800053e4:	00913423          	sd	s1,8(sp)
    800053e8:	02010413          	addi	s0,sp,32
    800053ec:	00050493          	mv	s1,a0
    800053f0:	00008797          	auipc	a5,0x8
    800053f4:	8d878793          	addi	a5,a5,-1832 # 8000ccc8 <_ZTV8Consumer+0x10>
    800053f8:	00f53023          	sd	a5,0(a0)
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	14c080e7          	jalr	332(ra) # 80003548 <_ZN6ThreadD1Ev>
    80005404:	00048513          	mv	a0,s1
    80005408:	ffffe097          	auipc	ra,0xffffe
    8000540c:	238080e7          	jalr	568(ra) # 80003640 <_ZdlPv>
    80005410:	01813083          	ld	ra,24(sp)
    80005414:	01013403          	ld	s0,16(sp)
    80005418:	00813483          	ld	s1,8(sp)
    8000541c:	02010113          	addi	sp,sp,32
    80005420:	00008067          	ret

0000000080005424 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80005424:	ff010113          	addi	sp,sp,-16
    80005428:	00113423          	sd	ra,8(sp)
    8000542c:	00813023          	sd	s0,0(sp)
    80005430:	01010413          	addi	s0,sp,16
    80005434:	00008797          	auipc	a5,0x8
    80005438:	84478793          	addi	a5,a5,-1980 # 8000cc78 <_ZTV16ProducerKeyborad+0x10>
    8000543c:	00f53023          	sd	a5,0(a0)
    80005440:	ffffe097          	auipc	ra,0xffffe
    80005444:	108080e7          	jalr	264(ra) # 80003548 <_ZN6ThreadD1Ev>
    80005448:	00813083          	ld	ra,8(sp)
    8000544c:	00013403          	ld	s0,0(sp)
    80005450:	01010113          	addi	sp,sp,16
    80005454:	00008067          	ret

0000000080005458 <_ZN16ProducerKeyboradD0Ev>:
    80005458:	fe010113          	addi	sp,sp,-32
    8000545c:	00113c23          	sd	ra,24(sp)
    80005460:	00813823          	sd	s0,16(sp)
    80005464:	00913423          	sd	s1,8(sp)
    80005468:	02010413          	addi	s0,sp,32
    8000546c:	00050493          	mv	s1,a0
    80005470:	00008797          	auipc	a5,0x8
    80005474:	80878793          	addi	a5,a5,-2040 # 8000cc78 <_ZTV16ProducerKeyborad+0x10>
    80005478:	00f53023          	sd	a5,0(a0)
    8000547c:	ffffe097          	auipc	ra,0xffffe
    80005480:	0cc080e7          	jalr	204(ra) # 80003548 <_ZN6ThreadD1Ev>
    80005484:	00048513          	mv	a0,s1
    80005488:	ffffe097          	auipc	ra,0xffffe
    8000548c:	1b8080e7          	jalr	440(ra) # 80003640 <_ZdlPv>
    80005490:	01813083          	ld	ra,24(sp)
    80005494:	01013403          	ld	s0,16(sp)
    80005498:	00813483          	ld	s1,8(sp)
    8000549c:	02010113          	addi	sp,sp,32
    800054a0:	00008067          	ret

00000000800054a4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800054a4:	ff010113          	addi	sp,sp,-16
    800054a8:	00113423          	sd	ra,8(sp)
    800054ac:	00813023          	sd	s0,0(sp)
    800054b0:	01010413          	addi	s0,sp,16
    800054b4:	00007797          	auipc	a5,0x7
    800054b8:	7ec78793          	addi	a5,a5,2028 # 8000cca0 <_ZTV8Producer+0x10>
    800054bc:	00f53023          	sd	a5,0(a0)
    800054c0:	ffffe097          	auipc	ra,0xffffe
    800054c4:	088080e7          	jalr	136(ra) # 80003548 <_ZN6ThreadD1Ev>
    800054c8:	00813083          	ld	ra,8(sp)
    800054cc:	00013403          	ld	s0,0(sp)
    800054d0:	01010113          	addi	sp,sp,16
    800054d4:	00008067          	ret

00000000800054d8 <_ZN8ProducerD0Ev>:
    800054d8:	fe010113          	addi	sp,sp,-32
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	00813823          	sd	s0,16(sp)
    800054e4:	00913423          	sd	s1,8(sp)
    800054e8:	02010413          	addi	s0,sp,32
    800054ec:	00050493          	mv	s1,a0
    800054f0:	00007797          	auipc	a5,0x7
    800054f4:	7b078793          	addi	a5,a5,1968 # 8000cca0 <_ZTV8Producer+0x10>
    800054f8:	00f53023          	sd	a5,0(a0)
    800054fc:	ffffe097          	auipc	ra,0xffffe
    80005500:	04c080e7          	jalr	76(ra) # 80003548 <_ZN6ThreadD1Ev>
    80005504:	00048513          	mv	a0,s1
    80005508:	ffffe097          	auipc	ra,0xffffe
    8000550c:	138080e7          	jalr	312(ra) # 80003640 <_ZdlPv>
    80005510:	01813083          	ld	ra,24(sp)
    80005514:	01013403          	ld	s0,16(sp)
    80005518:	00813483          	ld	s1,8(sp)
    8000551c:	02010113          	addi	sp,sp,32
    80005520:	00008067          	ret

0000000080005524 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80005524:	fe010113          	addi	sp,sp,-32
    80005528:	00113c23          	sd	ra,24(sp)
    8000552c:	00813823          	sd	s0,16(sp)
    80005530:	00913423          	sd	s1,8(sp)
    80005534:	02010413          	addi	s0,sp,32
    80005538:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000553c:	ffffc097          	auipc	ra,0xffffc
    80005540:	26c080e7          	jalr	620(ra) # 800017a8 <getc>
    80005544:	0005059b          	sext.w	a1,a0
    80005548:	01b00793          	li	a5,27
    8000554c:	00f58c63          	beq	a1,a5,80005564 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80005550:	0204b783          	ld	a5,32(s1)
    80005554:	0087b503          	ld	a0,8(a5)
    80005558:	00001097          	auipc	ra,0x1
    8000555c:	4c0080e7          	jalr	1216(ra) # 80006a18 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80005560:	fddff06f          	j	8000553c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80005564:	00100793          	li	a5,1
    80005568:	00008717          	auipc	a4,0x8
    8000556c:	b6f72823          	sw	a5,-1168(a4) # 8000d0d8 <_ZL9threadEnd>
        td->buffer->put('!');
    80005570:	0204b783          	ld	a5,32(s1)
    80005574:	02100593          	li	a1,33
    80005578:	0087b503          	ld	a0,8(a5)
    8000557c:	00001097          	auipc	ra,0x1
    80005580:	49c080e7          	jalr	1180(ra) # 80006a18 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80005584:	0204b783          	ld	a5,32(s1)
    80005588:	0107b503          	ld	a0,16(a5)
    8000558c:	ffffe097          	auipc	ra,0xffffe
    80005590:	2ac080e7          	jalr	684(ra) # 80003838 <_ZN9Semaphore6signalEv>
    }
    80005594:	01813083          	ld	ra,24(sp)
    80005598:	01013403          	ld	s0,16(sp)
    8000559c:	00813483          	ld	s1,8(sp)
    800055a0:	02010113          	addi	sp,sp,32
    800055a4:	00008067          	ret

00000000800055a8 <_ZN8Producer3runEv>:
    void run() override {
    800055a8:	fe010113          	addi	sp,sp,-32
    800055ac:	00113c23          	sd	ra,24(sp)
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00913423          	sd	s1,8(sp)
    800055b8:	01213023          	sd	s2,0(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	00050493          	mv	s1,a0
        int i = 0;
    800055c4:	00000913          	li	s2,0
        while (!threadEnd) {
    800055c8:	00008797          	auipc	a5,0x8
    800055cc:	b107a783          	lw	a5,-1264(a5) # 8000d0d8 <_ZL9threadEnd>
    800055d0:	04079263          	bnez	a5,80005614 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800055d4:	0204b783          	ld	a5,32(s1)
    800055d8:	0007a583          	lw	a1,0(a5)
    800055dc:	0305859b          	addiw	a1,a1,48
    800055e0:	0087b503          	ld	a0,8(a5)
    800055e4:	00001097          	auipc	ra,0x1
    800055e8:	434080e7          	jalr	1076(ra) # 80006a18 <_ZN9BufferCPP3putEi>
            i++;
    800055ec:	0019071b          	addiw	a4,s2,1
    800055f0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800055f4:	0204b783          	ld	a5,32(s1)
    800055f8:	0007a783          	lw	a5,0(a5)
    800055fc:	00e787bb          	addw	a5,a5,a4
    80005600:	00500513          	li	a0,5
    80005604:	02a7e53b          	remw	a0,a5,a0
    80005608:	ffffe097          	auipc	ra,0xffffe
    8000560c:	1a4080e7          	jalr	420(ra) # 800037ac <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80005610:	fb9ff06f          	j	800055c8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80005614:	0204b783          	ld	a5,32(s1)
    80005618:	0107b503          	ld	a0,16(a5)
    8000561c:	ffffe097          	auipc	ra,0xffffe
    80005620:	21c080e7          	jalr	540(ra) # 80003838 <_ZN9Semaphore6signalEv>
    }
    80005624:	01813083          	ld	ra,24(sp)
    80005628:	01013403          	ld	s0,16(sp)
    8000562c:	00813483          	ld	s1,8(sp)
    80005630:	00013903          	ld	s2,0(sp)
    80005634:	02010113          	addi	sp,sp,32
    80005638:	00008067          	ret

000000008000563c <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    8000563c:	fe010113          	addi	sp,sp,-32
    80005640:	00113c23          	sd	ra,24(sp)
    80005644:	00813823          	sd	s0,16(sp)
    80005648:	00913423          	sd	s1,8(sp)
    8000564c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005650:	00005517          	auipc	a0,0x5
    80005654:	d5850513          	addi	a0,a0,-680 # 8000a3a8 <CONSOLE_STATUS+0x398>
    80005658:	00001097          	auipc	ra,0x1
    8000565c:	f9c080e7          	jalr	-100(ra) # 800065f4 <_Z11printStringPKc>
    int test = getc() - '0';
    80005660:	ffffc097          	auipc	ra,0xffffc
    80005664:	148080e7          	jalr	328(ra) # 800017a8 <getc>
    80005668:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000566c:	ffffc097          	auipc	ra,0xffffc
    80005670:	13c080e7          	jalr	316(ra) # 800017a8 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005674:	00700793          	li	a5,7
    80005678:	1097e263          	bltu	a5,s1,8000577c <_Z8userMainv+0x140>
    8000567c:	00249493          	slli	s1,s1,0x2
    80005680:	00005717          	auipc	a4,0x5
    80005684:	f8070713          	addi	a4,a4,-128 # 8000a600 <CONSOLE_STATUS+0x5f0>
    80005688:	00e484b3          	add	s1,s1,a4
    8000568c:	0004a783          	lw	a5,0(s1)
    80005690:	00e787b3          	add	a5,a5,a4
    80005694:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	5d4080e7          	jalr	1492(ra) # 80005c6c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800056a0:	00005517          	auipc	a0,0x5
    800056a4:	d2850513          	addi	a0,a0,-728 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    800056a8:	00001097          	auipc	ra,0x1
    800056ac:	f4c080e7          	jalr	-180(ra) # 800065f4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    800056b0:	01813083          	ld	ra,24(sp)
    800056b4:	01013403          	ld	s0,16(sp)
    800056b8:	00813483          	ld	s1,8(sp)
    800056bc:	02010113          	addi	sp,sp,32
    800056c0:	00008067          	ret
            Threads_CPP_API_test();
    800056c4:	fffff097          	auipc	ra,0xfffff
    800056c8:	334080e7          	jalr	820(ra) # 800049f8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800056cc:	00005517          	auipc	a0,0x5
    800056d0:	d3c50513          	addi	a0,a0,-708 # 8000a408 <CONSOLE_STATUS+0x3f8>
    800056d4:	00001097          	auipc	ra,0x1
    800056d8:	f20080e7          	jalr	-224(ra) # 800065f4 <_Z11printStringPKc>
            break;
    800056dc:	fd5ff06f          	j	800056b0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800056e0:	fffff097          	auipc	ra,0xfffff
    800056e4:	b6c080e7          	jalr	-1172(ra) # 8000424c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800056e8:	00005517          	auipc	a0,0x5
    800056ec:	d6050513          	addi	a0,a0,-672 # 8000a448 <CONSOLE_STATUS+0x438>
    800056f0:	00001097          	auipc	ra,0x1
    800056f4:	f04080e7          	jalr	-252(ra) # 800065f4 <_Z11printStringPKc>
            break;
    800056f8:	fb9ff06f          	j	800056b0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800056fc:	00001097          	auipc	ra,0x1
    80005700:	8b4080e7          	jalr	-1868(ra) # 80005fb0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005704:	00005517          	auipc	a0,0x5
    80005708:	d9450513          	addi	a0,a0,-620 # 8000a498 <CONSOLE_STATUS+0x488>
    8000570c:	00001097          	auipc	ra,0x1
    80005710:	ee8080e7          	jalr	-280(ra) # 800065f4 <_Z11printStringPKc>
            break;
    80005714:	f9dff06f          	j	800056b0 <_Z8userMainv+0x74>
            testSleeping();
    80005718:	00001097          	auipc	ra,0x1
    8000571c:	648080e7          	jalr	1608(ra) # 80006d60 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005720:	00005517          	auipc	a0,0x5
    80005724:	dd050513          	addi	a0,a0,-560 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80005728:	00001097          	auipc	ra,0x1
    8000572c:	ecc080e7          	jalr	-308(ra) # 800065f4 <_Z11printStringPKc>
            break;
    80005730:	f81ff06f          	j	800056b0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	784080e7          	jalr	1924(ra) # 80004eb8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000573c:	00005517          	auipc	a0,0x5
    80005740:	de450513          	addi	a0,a0,-540 # 8000a520 <CONSOLE_STATUS+0x510>
    80005744:	00001097          	auipc	ra,0x1
    80005748:	eb0080e7          	jalr	-336(ra) # 800065f4 <_Z11printStringPKc>
            break;
    8000574c:	f65ff06f          	j	800056b0 <_Z8userMainv+0x74>
            System_Mode_test();
    80005750:	00002097          	auipc	ra,0x2
    80005754:	b84080e7          	jalr	-1148(ra) # 800072d4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005758:	00005517          	auipc	a0,0x5
    8000575c:	e0850513          	addi	a0,a0,-504 # 8000a560 <CONSOLE_STATUS+0x550>
    80005760:	00001097          	auipc	ra,0x1
    80005764:	e94080e7          	jalr	-364(ra) # 800065f4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005768:	00005517          	auipc	a0,0x5
    8000576c:	e1850513          	addi	a0,a0,-488 # 8000a580 <CONSOLE_STATUS+0x570>
    80005770:	00001097          	auipc	ra,0x1
    80005774:	e84080e7          	jalr	-380(ra) # 800065f4 <_Z11printStringPKc>
            break;
    80005778:	f39ff06f          	j	800056b0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000577c:	00005517          	auipc	a0,0x5
    80005780:	e5c50513          	addi	a0,a0,-420 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80005784:	00001097          	auipc	ra,0x1
    80005788:	e70080e7          	jalr	-400(ra) # 800065f4 <_Z11printStringPKc>
    8000578c:	f25ff06f          	j	800056b0 <_Z8userMainv+0x74>

0000000080005790 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005790:	fe010113          	addi	sp,sp,-32
    80005794:	00113c23          	sd	ra,24(sp)
    80005798:	00813823          	sd	s0,16(sp)
    8000579c:	00913423          	sd	s1,8(sp)
    800057a0:	01213023          	sd	s2,0(sp)
    800057a4:	02010413          	addi	s0,sp,32
    800057a8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800057ac:	00100793          	li	a5,1
    800057b0:	02a7f863          	bgeu	a5,a0,800057e0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800057b4:	00a00793          	li	a5,10
    800057b8:	02f577b3          	remu	a5,a0,a5
    800057bc:	02078e63          	beqz	a5,800057f8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800057c0:	fff48513          	addi	a0,s1,-1
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	fcc080e7          	jalr	-52(ra) # 80005790 <_ZL9fibonaccim>
    800057cc:	00050913          	mv	s2,a0
    800057d0:	ffe48513          	addi	a0,s1,-2
    800057d4:	00000097          	auipc	ra,0x0
    800057d8:	fbc080e7          	jalr	-68(ra) # 80005790 <_ZL9fibonaccim>
    800057dc:	00a90533          	add	a0,s2,a0
}
    800057e0:	01813083          	ld	ra,24(sp)
    800057e4:	01013403          	ld	s0,16(sp)
    800057e8:	00813483          	ld	s1,8(sp)
    800057ec:	00013903          	ld	s2,0(sp)
    800057f0:	02010113          	addi	sp,sp,32
    800057f4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	e80080e7          	jalr	-384(ra) # 80001678 <thread_dispatch>
    80005800:	fc1ff06f          	j	800057c0 <_ZL9fibonaccim+0x30>

0000000080005804 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005804:	fe010113          	addi	sp,sp,-32
    80005808:	00113c23          	sd	ra,24(sp)
    8000580c:	00813823          	sd	s0,16(sp)
    80005810:	00913423          	sd	s1,8(sp)
    80005814:	01213023          	sd	s2,0(sp)
    80005818:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000581c:	00a00493          	li	s1,10
    80005820:	0400006f          	j	80005860 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005824:	00005517          	auipc	a0,0x5
    80005828:	ab450513          	addi	a0,a0,-1356 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    8000582c:	00001097          	auipc	ra,0x1
    80005830:	dc8080e7          	jalr	-568(ra) # 800065f4 <_Z11printStringPKc>
    80005834:	00000613          	li	a2,0
    80005838:	00a00593          	li	a1,10
    8000583c:	00048513          	mv	a0,s1
    80005840:	00001097          	auipc	ra,0x1
    80005844:	f64080e7          	jalr	-156(ra) # 800067a4 <_Z8printIntiii>
    80005848:	00005517          	auipc	a0,0x5
    8000584c:	ca050513          	addi	a0,a0,-864 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80005850:	00001097          	auipc	ra,0x1
    80005854:	da4080e7          	jalr	-604(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005858:	0014849b          	addiw	s1,s1,1
    8000585c:	0ff4f493          	andi	s1,s1,255
    80005860:	00c00793          	li	a5,12
    80005864:	fc97f0e3          	bgeu	a5,s1,80005824 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005868:	00005517          	auipc	a0,0x5
    8000586c:	a7850513          	addi	a0,a0,-1416 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005870:	00001097          	auipc	ra,0x1
    80005874:	d84080e7          	jalr	-636(ra) # 800065f4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005878:	00500313          	li	t1,5
    thread_dispatch();
    8000587c:	ffffc097          	auipc	ra,0xffffc
    80005880:	dfc080e7          	jalr	-516(ra) # 80001678 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005884:	01000513          	li	a0,16
    80005888:	00000097          	auipc	ra,0x0
    8000588c:	f08080e7          	jalr	-248(ra) # 80005790 <_ZL9fibonaccim>
    80005890:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005894:	00005517          	auipc	a0,0x5
    80005898:	a5c50513          	addi	a0,a0,-1444 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    8000589c:	00001097          	auipc	ra,0x1
    800058a0:	d58080e7          	jalr	-680(ra) # 800065f4 <_Z11printStringPKc>
    800058a4:	00000613          	li	a2,0
    800058a8:	00a00593          	li	a1,10
    800058ac:	0009051b          	sext.w	a0,s2
    800058b0:	00001097          	auipc	ra,0x1
    800058b4:	ef4080e7          	jalr	-268(ra) # 800067a4 <_Z8printIntiii>
    800058b8:	00005517          	auipc	a0,0x5
    800058bc:	c3050513          	addi	a0,a0,-976 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800058c0:	00001097          	auipc	ra,0x1
    800058c4:	d34080e7          	jalr	-716(ra) # 800065f4 <_Z11printStringPKc>
    800058c8:	0400006f          	j	80005908 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800058cc:	00005517          	auipc	a0,0x5
    800058d0:	a0c50513          	addi	a0,a0,-1524 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    800058d4:	00001097          	auipc	ra,0x1
    800058d8:	d20080e7          	jalr	-736(ra) # 800065f4 <_Z11printStringPKc>
    800058dc:	00000613          	li	a2,0
    800058e0:	00a00593          	li	a1,10
    800058e4:	00048513          	mv	a0,s1
    800058e8:	00001097          	auipc	ra,0x1
    800058ec:	ebc080e7          	jalr	-324(ra) # 800067a4 <_Z8printIntiii>
    800058f0:	00005517          	auipc	a0,0x5
    800058f4:	bf850513          	addi	a0,a0,-1032 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800058f8:	00001097          	auipc	ra,0x1
    800058fc:	cfc080e7          	jalr	-772(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005900:	0014849b          	addiw	s1,s1,1
    80005904:	0ff4f493          	andi	s1,s1,255
    80005908:	00f00793          	li	a5,15
    8000590c:	fc97f0e3          	bgeu	a5,s1,800058cc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005910:	00005517          	auipc	a0,0x5
    80005914:	9f050513          	addi	a0,a0,-1552 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80005918:	00001097          	auipc	ra,0x1
    8000591c:	cdc080e7          	jalr	-804(ra) # 800065f4 <_Z11printStringPKc>
    finishedD = true;
    80005920:	00100793          	li	a5,1
    80005924:	00007717          	auipc	a4,0x7
    80005928:	7cf70223          	sb	a5,1988(a4) # 8000d0e8 <_ZL9finishedD>
    thread_dispatch();
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	d4c080e7          	jalr	-692(ra) # 80001678 <thread_dispatch>
}
    80005934:	01813083          	ld	ra,24(sp)
    80005938:	01013403          	ld	s0,16(sp)
    8000593c:	00813483          	ld	s1,8(sp)
    80005940:	00013903          	ld	s2,0(sp)
    80005944:	02010113          	addi	sp,sp,32
    80005948:	00008067          	ret

000000008000594c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000594c:	fe010113          	addi	sp,sp,-32
    80005950:	00113c23          	sd	ra,24(sp)
    80005954:	00813823          	sd	s0,16(sp)
    80005958:	00913423          	sd	s1,8(sp)
    8000595c:	01213023          	sd	s2,0(sp)
    80005960:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005964:	00000493          	li	s1,0
    80005968:	0400006f          	j	800059a8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000596c:	00005517          	auipc	a0,0x5
    80005970:	93c50513          	addi	a0,a0,-1732 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80005974:	00001097          	auipc	ra,0x1
    80005978:	c80080e7          	jalr	-896(ra) # 800065f4 <_Z11printStringPKc>
    8000597c:	00000613          	li	a2,0
    80005980:	00a00593          	li	a1,10
    80005984:	00048513          	mv	a0,s1
    80005988:	00001097          	auipc	ra,0x1
    8000598c:	e1c080e7          	jalr	-484(ra) # 800067a4 <_Z8printIntiii>
    80005990:	00005517          	auipc	a0,0x5
    80005994:	b5850513          	addi	a0,a0,-1192 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80005998:	00001097          	auipc	ra,0x1
    8000599c:	c5c080e7          	jalr	-932(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800059a0:	0014849b          	addiw	s1,s1,1
    800059a4:	0ff4f493          	andi	s1,s1,255
    800059a8:	00200793          	li	a5,2
    800059ac:	fc97f0e3          	bgeu	a5,s1,8000596c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800059b0:	00005517          	auipc	a0,0x5
    800059b4:	90050513          	addi	a0,a0,-1792 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800059b8:	00001097          	auipc	ra,0x1
    800059bc:	c3c080e7          	jalr	-964(ra) # 800065f4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800059c0:	00700313          	li	t1,7
    thread_dispatch();
    800059c4:	ffffc097          	auipc	ra,0xffffc
    800059c8:	cb4080e7          	jalr	-844(ra) # 80001678 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800059cc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800059d0:	00005517          	auipc	a0,0x5
    800059d4:	8f050513          	addi	a0,a0,-1808 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    800059d8:	00001097          	auipc	ra,0x1
    800059dc:	c1c080e7          	jalr	-996(ra) # 800065f4 <_Z11printStringPKc>
    800059e0:	00000613          	li	a2,0
    800059e4:	00a00593          	li	a1,10
    800059e8:	0009051b          	sext.w	a0,s2
    800059ec:	00001097          	auipc	ra,0x1
    800059f0:	db8080e7          	jalr	-584(ra) # 800067a4 <_Z8printIntiii>
    800059f4:	00005517          	auipc	a0,0x5
    800059f8:	af450513          	addi	a0,a0,-1292 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800059fc:	00001097          	auipc	ra,0x1
    80005a00:	bf8080e7          	jalr	-1032(ra) # 800065f4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005a04:	00c00513          	li	a0,12
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	d88080e7          	jalr	-632(ra) # 80005790 <_ZL9fibonaccim>
    80005a10:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005a14:	00005517          	auipc	a0,0x5
    80005a18:	8b450513          	addi	a0,a0,-1868 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80005a1c:	00001097          	auipc	ra,0x1
    80005a20:	bd8080e7          	jalr	-1064(ra) # 800065f4 <_Z11printStringPKc>
    80005a24:	00000613          	li	a2,0
    80005a28:	00a00593          	li	a1,10
    80005a2c:	0009051b          	sext.w	a0,s2
    80005a30:	00001097          	auipc	ra,0x1
    80005a34:	d74080e7          	jalr	-652(ra) # 800067a4 <_Z8printIntiii>
    80005a38:	00005517          	auipc	a0,0x5
    80005a3c:	ab050513          	addi	a0,a0,-1360 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80005a40:	00001097          	auipc	ra,0x1
    80005a44:	bb4080e7          	jalr	-1100(ra) # 800065f4 <_Z11printStringPKc>
    80005a48:	0400006f          	j	80005a88 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005a4c:	00005517          	auipc	a0,0x5
    80005a50:	85c50513          	addi	a0,a0,-1956 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80005a54:	00001097          	auipc	ra,0x1
    80005a58:	ba0080e7          	jalr	-1120(ra) # 800065f4 <_Z11printStringPKc>
    80005a5c:	00000613          	li	a2,0
    80005a60:	00a00593          	li	a1,10
    80005a64:	00048513          	mv	a0,s1
    80005a68:	00001097          	auipc	ra,0x1
    80005a6c:	d3c080e7          	jalr	-708(ra) # 800067a4 <_Z8printIntiii>
    80005a70:	00005517          	auipc	a0,0x5
    80005a74:	a7850513          	addi	a0,a0,-1416 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80005a78:	00001097          	auipc	ra,0x1
    80005a7c:	b7c080e7          	jalr	-1156(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a80:	0014849b          	addiw	s1,s1,1
    80005a84:	0ff4f493          	andi	s1,s1,255
    80005a88:	00500793          	li	a5,5
    80005a8c:	fc97f0e3          	bgeu	a5,s1,80005a4c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005a90:	00004517          	auipc	a0,0x4
    80005a94:	7f050513          	addi	a0,a0,2032 # 8000a280 <CONSOLE_STATUS+0x270>
    80005a98:	00001097          	auipc	ra,0x1
    80005a9c:	b5c080e7          	jalr	-1188(ra) # 800065f4 <_Z11printStringPKc>
    finishedC = true;
    80005aa0:	00100793          	li	a5,1
    80005aa4:	00007717          	auipc	a4,0x7
    80005aa8:	64f702a3          	sb	a5,1605(a4) # 8000d0e9 <_ZL9finishedC>
    thread_dispatch();
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	bcc080e7          	jalr	-1076(ra) # 80001678 <thread_dispatch>
}
    80005ab4:	01813083          	ld	ra,24(sp)
    80005ab8:	01013403          	ld	s0,16(sp)
    80005abc:	00813483          	ld	s1,8(sp)
    80005ac0:	00013903          	ld	s2,0(sp)
    80005ac4:	02010113          	addi	sp,sp,32
    80005ac8:	00008067          	ret

0000000080005acc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005acc:	fe010113          	addi	sp,sp,-32
    80005ad0:	00113c23          	sd	ra,24(sp)
    80005ad4:	00813823          	sd	s0,16(sp)
    80005ad8:	00913423          	sd	s1,8(sp)
    80005adc:	01213023          	sd	s2,0(sp)
    80005ae0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005ae4:	00000913          	li	s2,0
    80005ae8:	0380006f          	j	80005b20 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	b8c080e7          	jalr	-1140(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005af4:	00148493          	addi	s1,s1,1
    80005af8:	000027b7          	lui	a5,0x2
    80005afc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005b00:	0097ee63          	bltu	a5,s1,80005b1c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005b04:	00000713          	li	a4,0
    80005b08:	000077b7          	lui	a5,0x7
    80005b0c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005b10:	fce7eee3          	bltu	a5,a4,80005aec <_ZL11workerBodyBPv+0x20>
    80005b14:	00170713          	addi	a4,a4,1
    80005b18:	ff1ff06f          	j	80005b08 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005b1c:	00190913          	addi	s2,s2,1
    80005b20:	00f00793          	li	a5,15
    80005b24:	0527e063          	bltu	a5,s2,80005b64 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005b28:	00004517          	auipc	a0,0x4
    80005b2c:	76850513          	addi	a0,a0,1896 # 8000a290 <CONSOLE_STATUS+0x280>
    80005b30:	00001097          	auipc	ra,0x1
    80005b34:	ac4080e7          	jalr	-1340(ra) # 800065f4 <_Z11printStringPKc>
    80005b38:	00000613          	li	a2,0
    80005b3c:	00a00593          	li	a1,10
    80005b40:	0009051b          	sext.w	a0,s2
    80005b44:	00001097          	auipc	ra,0x1
    80005b48:	c60080e7          	jalr	-928(ra) # 800067a4 <_Z8printIntiii>
    80005b4c:	00005517          	auipc	a0,0x5
    80005b50:	99c50513          	addi	a0,a0,-1636 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80005b54:	00001097          	auipc	ra,0x1
    80005b58:	aa0080e7          	jalr	-1376(ra) # 800065f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005b5c:	00000493          	li	s1,0
    80005b60:	f99ff06f          	j	80005af8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005b64:	00004517          	auipc	a0,0x4
    80005b68:	73450513          	addi	a0,a0,1844 # 8000a298 <CONSOLE_STATUS+0x288>
    80005b6c:	00001097          	auipc	ra,0x1
    80005b70:	a88080e7          	jalr	-1400(ra) # 800065f4 <_Z11printStringPKc>
    finishedB = true;
    80005b74:	00100793          	li	a5,1
    80005b78:	00007717          	auipc	a4,0x7
    80005b7c:	56f70923          	sb	a5,1394(a4) # 8000d0ea <_ZL9finishedB>
    thread_dispatch();
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	af8080e7          	jalr	-1288(ra) # 80001678 <thread_dispatch>
}
    80005b88:	01813083          	ld	ra,24(sp)
    80005b8c:	01013403          	ld	s0,16(sp)
    80005b90:	00813483          	ld	s1,8(sp)
    80005b94:	00013903          	ld	s2,0(sp)
    80005b98:	02010113          	addi	sp,sp,32
    80005b9c:	00008067          	ret

0000000080005ba0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005ba0:	fe010113          	addi	sp,sp,-32
    80005ba4:	00113c23          	sd	ra,24(sp)
    80005ba8:	00813823          	sd	s0,16(sp)
    80005bac:	00913423          	sd	s1,8(sp)
    80005bb0:	01213023          	sd	s2,0(sp)
    80005bb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005bb8:	00000913          	li	s2,0
    80005bbc:	0380006f          	j	80005bf4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005bc0:	ffffc097          	auipc	ra,0xffffc
    80005bc4:	ab8080e7          	jalr	-1352(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005bc8:	00148493          	addi	s1,s1,1
    80005bcc:	000027b7          	lui	a5,0x2
    80005bd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005bd4:	0097ee63          	bltu	a5,s1,80005bf0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005bd8:	00000713          	li	a4,0
    80005bdc:	000077b7          	lui	a5,0x7
    80005be0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005be4:	fce7eee3          	bltu	a5,a4,80005bc0 <_ZL11workerBodyAPv+0x20>
    80005be8:	00170713          	addi	a4,a4,1
    80005bec:	ff1ff06f          	j	80005bdc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005bf0:	00190913          	addi	s2,s2,1
    80005bf4:	00900793          	li	a5,9
    80005bf8:	0527e063          	bltu	a5,s2,80005c38 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005bfc:	00004517          	auipc	a0,0x4
    80005c00:	67c50513          	addi	a0,a0,1660 # 8000a278 <CONSOLE_STATUS+0x268>
    80005c04:	00001097          	auipc	ra,0x1
    80005c08:	9f0080e7          	jalr	-1552(ra) # 800065f4 <_Z11printStringPKc>
    80005c0c:	00000613          	li	a2,0
    80005c10:	00a00593          	li	a1,10
    80005c14:	0009051b          	sext.w	a0,s2
    80005c18:	00001097          	auipc	ra,0x1
    80005c1c:	b8c080e7          	jalr	-1140(ra) # 800067a4 <_Z8printIntiii>
    80005c20:	00005517          	auipc	a0,0x5
    80005c24:	8c850513          	addi	a0,a0,-1848 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80005c28:	00001097          	auipc	ra,0x1
    80005c2c:	9cc080e7          	jalr	-1588(ra) # 800065f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005c30:	00000493          	li	s1,0
    80005c34:	f99ff06f          	j	80005bcc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005c38:	00004517          	auipc	a0,0x4
    80005c3c:	64850513          	addi	a0,a0,1608 # 8000a280 <CONSOLE_STATUS+0x270>
    80005c40:	00001097          	auipc	ra,0x1
    80005c44:	9b4080e7          	jalr	-1612(ra) # 800065f4 <_Z11printStringPKc>
    finishedA = true;
    80005c48:	00100793          	li	a5,1
    80005c4c:	00007717          	auipc	a4,0x7
    80005c50:	48f70fa3          	sb	a5,1183(a4) # 8000d0eb <_ZL9finishedA>
}
    80005c54:	01813083          	ld	ra,24(sp)
    80005c58:	01013403          	ld	s0,16(sp)
    80005c5c:	00813483          	ld	s1,8(sp)
    80005c60:	00013903          	ld	s2,0(sp)
    80005c64:	02010113          	addi	sp,sp,32
    80005c68:	00008067          	ret

0000000080005c6c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005c6c:	fd010113          	addi	sp,sp,-48
    80005c70:	02113423          	sd	ra,40(sp)
    80005c74:	02813023          	sd	s0,32(sp)
    80005c78:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005c7c:	00000613          	li	a2,0
    80005c80:	00000597          	auipc	a1,0x0
    80005c84:	f2058593          	addi	a1,a1,-224 # 80005ba0 <_ZL11workerBodyAPv>
    80005c88:	fd040513          	addi	a0,s0,-48
    80005c8c:	ffffc097          	auipc	ra,0xffffc
    80005c90:	920080e7          	jalr	-1760(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80005c94:	00004517          	auipc	a0,0x4
    80005c98:	67c50513          	addi	a0,a0,1660 # 8000a310 <CONSOLE_STATUS+0x300>
    80005c9c:	00001097          	auipc	ra,0x1
    80005ca0:	958080e7          	jalr	-1704(ra) # 800065f4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005ca4:	00000613          	li	a2,0
    80005ca8:	00000597          	auipc	a1,0x0
    80005cac:	e2458593          	addi	a1,a1,-476 # 80005acc <_ZL11workerBodyBPv>
    80005cb0:	fd840513          	addi	a0,s0,-40
    80005cb4:	ffffc097          	auipc	ra,0xffffc
    80005cb8:	8f8080e7          	jalr	-1800(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80005cbc:	00004517          	auipc	a0,0x4
    80005cc0:	66c50513          	addi	a0,a0,1644 # 8000a328 <CONSOLE_STATUS+0x318>
    80005cc4:	00001097          	auipc	ra,0x1
    80005cc8:	930080e7          	jalr	-1744(ra) # 800065f4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005ccc:	00000613          	li	a2,0
    80005cd0:	00000597          	auipc	a1,0x0
    80005cd4:	c7c58593          	addi	a1,a1,-900 # 8000594c <_ZL11workerBodyCPv>
    80005cd8:	fe040513          	addi	a0,s0,-32
    80005cdc:	ffffc097          	auipc	ra,0xffffc
    80005ce0:	8d0080e7          	jalr	-1840(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80005ce4:	00004517          	auipc	a0,0x4
    80005ce8:	65c50513          	addi	a0,a0,1628 # 8000a340 <CONSOLE_STATUS+0x330>
    80005cec:	00001097          	auipc	ra,0x1
    80005cf0:	908080e7          	jalr	-1784(ra) # 800065f4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005cf4:	00000613          	li	a2,0
    80005cf8:	00000597          	auipc	a1,0x0
    80005cfc:	b0c58593          	addi	a1,a1,-1268 # 80005804 <_ZL11workerBodyDPv>
    80005d00:	fe840513          	addi	a0,s0,-24
    80005d04:	ffffc097          	auipc	ra,0xffffc
    80005d08:	8a8080e7          	jalr	-1880(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80005d0c:	00004517          	auipc	a0,0x4
    80005d10:	64c50513          	addi	a0,a0,1612 # 8000a358 <CONSOLE_STATUS+0x348>
    80005d14:	00001097          	auipc	ra,0x1
    80005d18:	8e0080e7          	jalr	-1824(ra) # 800065f4 <_Z11printStringPKc>
    80005d1c:	00c0006f          	j	80005d28 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005d20:	ffffc097          	auipc	ra,0xffffc
    80005d24:	958080e7          	jalr	-1704(ra) # 80001678 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005d28:	00007797          	auipc	a5,0x7
    80005d2c:	3c37c783          	lbu	a5,963(a5) # 8000d0eb <_ZL9finishedA>
    80005d30:	fe0788e3          	beqz	a5,80005d20 <_Z18Threads_C_API_testv+0xb4>
    80005d34:	00007797          	auipc	a5,0x7
    80005d38:	3b67c783          	lbu	a5,950(a5) # 8000d0ea <_ZL9finishedB>
    80005d3c:	fe0782e3          	beqz	a5,80005d20 <_Z18Threads_C_API_testv+0xb4>
    80005d40:	00007797          	auipc	a5,0x7
    80005d44:	3a97c783          	lbu	a5,937(a5) # 8000d0e9 <_ZL9finishedC>
    80005d48:	fc078ce3          	beqz	a5,80005d20 <_Z18Threads_C_API_testv+0xb4>
    80005d4c:	00007797          	auipc	a5,0x7
    80005d50:	39c7c783          	lbu	a5,924(a5) # 8000d0e8 <_ZL9finishedD>
    80005d54:	fc0786e3          	beqz	a5,80005d20 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005d58:	02813083          	ld	ra,40(sp)
    80005d5c:	02013403          	ld	s0,32(sp)
    80005d60:	03010113          	addi	sp,sp,48
    80005d64:	00008067          	ret

0000000080005d68 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005d68:	fd010113          	addi	sp,sp,-48
    80005d6c:	02113423          	sd	ra,40(sp)
    80005d70:	02813023          	sd	s0,32(sp)
    80005d74:	00913c23          	sd	s1,24(sp)
    80005d78:	01213823          	sd	s2,16(sp)
    80005d7c:	01313423          	sd	s3,8(sp)
    80005d80:	03010413          	addi	s0,sp,48
    80005d84:	00050993          	mv	s3,a0
    80005d88:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005d8c:	00000913          	li	s2,0
    80005d90:	00c0006f          	j	80005d9c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005d94:	ffffe097          	auipc	ra,0xffffe
    80005d98:	9f0080e7          	jalr	-1552(ra) # 80003784 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	a0c080e7          	jalr	-1524(ra) # 800017a8 <getc>
    80005da4:	0005059b          	sext.w	a1,a0
    80005da8:	01b00793          	li	a5,27
    80005dac:	02f58a63          	beq	a1,a5,80005de0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005db0:	0084b503          	ld	a0,8(s1)
    80005db4:	00001097          	auipc	ra,0x1
    80005db8:	c64080e7          	jalr	-924(ra) # 80006a18 <_ZN9BufferCPP3putEi>
        i++;
    80005dbc:	0019071b          	addiw	a4,s2,1
    80005dc0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005dc4:	0004a683          	lw	a3,0(s1)
    80005dc8:	0026979b          	slliw	a5,a3,0x2
    80005dcc:	00d787bb          	addw	a5,a5,a3
    80005dd0:	0017979b          	slliw	a5,a5,0x1
    80005dd4:	02f767bb          	remw	a5,a4,a5
    80005dd8:	fc0792e3          	bnez	a5,80005d9c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005ddc:	fb9ff06f          	j	80005d94 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005de0:	00100793          	li	a5,1
    80005de4:	00007717          	auipc	a4,0x7
    80005de8:	30f72623          	sw	a5,780(a4) # 8000d0f0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005dec:	0209b783          	ld	a5,32(s3)
    80005df0:	02100593          	li	a1,33
    80005df4:	0087b503          	ld	a0,8(a5)
    80005df8:	00001097          	auipc	ra,0x1
    80005dfc:	c20080e7          	jalr	-992(ra) # 80006a18 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005e00:	0104b503          	ld	a0,16(s1)
    80005e04:	ffffe097          	auipc	ra,0xffffe
    80005e08:	a34080e7          	jalr	-1484(ra) # 80003838 <_ZN9Semaphore6signalEv>
}
    80005e0c:	02813083          	ld	ra,40(sp)
    80005e10:	02013403          	ld	s0,32(sp)
    80005e14:	01813483          	ld	s1,24(sp)
    80005e18:	01013903          	ld	s2,16(sp)
    80005e1c:	00813983          	ld	s3,8(sp)
    80005e20:	03010113          	addi	sp,sp,48
    80005e24:	00008067          	ret

0000000080005e28 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005e28:	fe010113          	addi	sp,sp,-32
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	01213023          	sd	s2,0(sp)
    80005e3c:	02010413          	addi	s0,sp,32
    80005e40:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005e44:	00000913          	li	s2,0
    80005e48:	00c0006f          	j	80005e54 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005e4c:	ffffe097          	auipc	ra,0xffffe
    80005e50:	938080e7          	jalr	-1736(ra) # 80003784 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005e54:	00007797          	auipc	a5,0x7
    80005e58:	29c7a783          	lw	a5,668(a5) # 8000d0f0 <_ZL9threadEnd>
    80005e5c:	02079e63          	bnez	a5,80005e98 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005e60:	0004a583          	lw	a1,0(s1)
    80005e64:	0305859b          	addiw	a1,a1,48
    80005e68:	0084b503          	ld	a0,8(s1)
    80005e6c:	00001097          	auipc	ra,0x1
    80005e70:	bac080e7          	jalr	-1108(ra) # 80006a18 <_ZN9BufferCPP3putEi>
        i++;
    80005e74:	0019071b          	addiw	a4,s2,1
    80005e78:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005e7c:	0004a683          	lw	a3,0(s1)
    80005e80:	0026979b          	slliw	a5,a3,0x2
    80005e84:	00d787bb          	addw	a5,a5,a3
    80005e88:	0017979b          	slliw	a5,a5,0x1
    80005e8c:	02f767bb          	remw	a5,a4,a5
    80005e90:	fc0792e3          	bnez	a5,80005e54 <_ZN12ProducerSync8producerEPv+0x2c>
    80005e94:	fb9ff06f          	j	80005e4c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005e98:	0104b503          	ld	a0,16(s1)
    80005e9c:	ffffe097          	auipc	ra,0xffffe
    80005ea0:	99c080e7          	jalr	-1636(ra) # 80003838 <_ZN9Semaphore6signalEv>
}
    80005ea4:	01813083          	ld	ra,24(sp)
    80005ea8:	01013403          	ld	s0,16(sp)
    80005eac:	00813483          	ld	s1,8(sp)
    80005eb0:	00013903          	ld	s2,0(sp)
    80005eb4:	02010113          	addi	sp,sp,32
    80005eb8:	00008067          	ret

0000000080005ebc <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005ebc:	fd010113          	addi	sp,sp,-48
    80005ec0:	02113423          	sd	ra,40(sp)
    80005ec4:	02813023          	sd	s0,32(sp)
    80005ec8:	00913c23          	sd	s1,24(sp)
    80005ecc:	01213823          	sd	s2,16(sp)
    80005ed0:	01313423          	sd	s3,8(sp)
    80005ed4:	01413023          	sd	s4,0(sp)
    80005ed8:	03010413          	addi	s0,sp,48
    80005edc:	00050993          	mv	s3,a0
    80005ee0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005ee4:	00000a13          	li	s4,0
    80005ee8:	01c0006f          	j	80005f04 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005eec:	ffffe097          	auipc	ra,0xffffe
    80005ef0:	898080e7          	jalr	-1896(ra) # 80003784 <_ZN6Thread8dispatchEv>
    80005ef4:	0500006f          	j	80005f44 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005ef8:	00a00513          	li	a0,10
    80005efc:	ffffc097          	auipc	ra,0xffffc
    80005f00:	8d0080e7          	jalr	-1840(ra) # 800017cc <putc>
    while (!threadEnd) {
    80005f04:	00007797          	auipc	a5,0x7
    80005f08:	1ec7a783          	lw	a5,492(a5) # 8000d0f0 <_ZL9threadEnd>
    80005f0c:	06079263          	bnez	a5,80005f70 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005f10:	00893503          	ld	a0,8(s2)
    80005f14:	00001097          	auipc	ra,0x1
    80005f18:	b94080e7          	jalr	-1132(ra) # 80006aa8 <_ZN9BufferCPP3getEv>
        i++;
    80005f1c:	001a049b          	addiw	s1,s4,1
    80005f20:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005f24:	0ff57513          	andi	a0,a0,255
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	8a4080e7          	jalr	-1884(ra) # 800017cc <putc>
        if (i % (5 * data->id) == 0) {
    80005f30:	00092703          	lw	a4,0(s2)
    80005f34:	0027179b          	slliw	a5,a4,0x2
    80005f38:	00e787bb          	addw	a5,a5,a4
    80005f3c:	02f4e7bb          	remw	a5,s1,a5
    80005f40:	fa0786e3          	beqz	a5,80005eec <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005f44:	05000793          	li	a5,80
    80005f48:	02f4e4bb          	remw	s1,s1,a5
    80005f4c:	fa049ce3          	bnez	s1,80005f04 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005f50:	fa9ff06f          	j	80005ef8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005f54:	0209b783          	ld	a5,32(s3)
    80005f58:	0087b503          	ld	a0,8(a5)
    80005f5c:	00001097          	auipc	ra,0x1
    80005f60:	b4c080e7          	jalr	-1204(ra) # 80006aa8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005f64:	0ff57513          	andi	a0,a0,255
    80005f68:	ffffe097          	auipc	ra,0xffffe
    80005f6c:	9bc080e7          	jalr	-1604(ra) # 80003924 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005f70:	0209b783          	ld	a5,32(s3)
    80005f74:	0087b503          	ld	a0,8(a5)
    80005f78:	00001097          	auipc	ra,0x1
    80005f7c:	bbc080e7          	jalr	-1092(ra) # 80006b34 <_ZN9BufferCPP6getCntEv>
    80005f80:	fca04ae3          	bgtz	a0,80005f54 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005f84:	01093503          	ld	a0,16(s2)
    80005f88:	ffffe097          	auipc	ra,0xffffe
    80005f8c:	8b0080e7          	jalr	-1872(ra) # 80003838 <_ZN9Semaphore6signalEv>
}
    80005f90:	02813083          	ld	ra,40(sp)
    80005f94:	02013403          	ld	s0,32(sp)
    80005f98:	01813483          	ld	s1,24(sp)
    80005f9c:	01013903          	ld	s2,16(sp)
    80005fa0:	00813983          	ld	s3,8(sp)
    80005fa4:	00013a03          	ld	s4,0(sp)
    80005fa8:	03010113          	addi	sp,sp,48
    80005fac:	00008067          	ret

0000000080005fb0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005fb0:	f8010113          	addi	sp,sp,-128
    80005fb4:	06113c23          	sd	ra,120(sp)
    80005fb8:	06813823          	sd	s0,112(sp)
    80005fbc:	06913423          	sd	s1,104(sp)
    80005fc0:	07213023          	sd	s2,96(sp)
    80005fc4:	05313c23          	sd	s3,88(sp)
    80005fc8:	05413823          	sd	s4,80(sp)
    80005fcc:	05513423          	sd	s5,72(sp)
    80005fd0:	05613023          	sd	s6,64(sp)
    80005fd4:	03713c23          	sd	s7,56(sp)
    80005fd8:	03813823          	sd	s8,48(sp)
    80005fdc:	03913423          	sd	s9,40(sp)
    80005fe0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005fe4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005fe8:	00004517          	auipc	a0,0x4
    80005fec:	1a850513          	addi	a0,a0,424 # 8000a190 <CONSOLE_STATUS+0x180>
    80005ff0:	00000097          	auipc	ra,0x0
    80005ff4:	604080e7          	jalr	1540(ra) # 800065f4 <_Z11printStringPKc>
    getString(input, 30);
    80005ff8:	01e00593          	li	a1,30
    80005ffc:	f8040493          	addi	s1,s0,-128
    80006000:	00048513          	mv	a0,s1
    80006004:	00000097          	auipc	ra,0x0
    80006008:	678080e7          	jalr	1656(ra) # 8000667c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000600c:	00048513          	mv	a0,s1
    80006010:	00000097          	auipc	ra,0x0
    80006014:	744080e7          	jalr	1860(ra) # 80006754 <_Z11stringToIntPKc>
    80006018:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000601c:	00004517          	auipc	a0,0x4
    80006020:	19450513          	addi	a0,a0,404 # 8000a1b0 <CONSOLE_STATUS+0x1a0>
    80006024:	00000097          	auipc	ra,0x0
    80006028:	5d0080e7          	jalr	1488(ra) # 800065f4 <_Z11printStringPKc>
    getString(input, 30);
    8000602c:	01e00593          	li	a1,30
    80006030:	00048513          	mv	a0,s1
    80006034:	00000097          	auipc	ra,0x0
    80006038:	648080e7          	jalr	1608(ra) # 8000667c <_Z9getStringPci>
    n = stringToInt(input);
    8000603c:	00048513          	mv	a0,s1
    80006040:	00000097          	auipc	ra,0x0
    80006044:	714080e7          	jalr	1812(ra) # 80006754 <_Z11stringToIntPKc>
    80006048:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000604c:	00004517          	auipc	a0,0x4
    80006050:	18450513          	addi	a0,a0,388 # 8000a1d0 <CONSOLE_STATUS+0x1c0>
    80006054:	00000097          	auipc	ra,0x0
    80006058:	5a0080e7          	jalr	1440(ra) # 800065f4 <_Z11printStringPKc>
    8000605c:	00000613          	li	a2,0
    80006060:	00a00593          	li	a1,10
    80006064:	00090513          	mv	a0,s2
    80006068:	00000097          	auipc	ra,0x0
    8000606c:	73c080e7          	jalr	1852(ra) # 800067a4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80006070:	00004517          	auipc	a0,0x4
    80006074:	17850513          	addi	a0,a0,376 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80006078:	00000097          	auipc	ra,0x0
    8000607c:	57c080e7          	jalr	1404(ra) # 800065f4 <_Z11printStringPKc>
    80006080:	00000613          	li	a2,0
    80006084:	00a00593          	li	a1,10
    80006088:	00048513          	mv	a0,s1
    8000608c:	00000097          	auipc	ra,0x0
    80006090:	718080e7          	jalr	1816(ra) # 800067a4 <_Z8printIntiii>
    printString(".\n");
    80006094:	00004517          	auipc	a0,0x4
    80006098:	16c50513          	addi	a0,a0,364 # 8000a200 <CONSOLE_STATUS+0x1f0>
    8000609c:	00000097          	auipc	ra,0x0
    800060a0:	558080e7          	jalr	1368(ra) # 800065f4 <_Z11printStringPKc>
    if(threadNum > n) {
    800060a4:	0324c463          	blt	s1,s2,800060cc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800060a8:	03205c63          	blez	s2,800060e0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800060ac:	03800513          	li	a0,56
    800060b0:	ffffd097          	auipc	ra,0xffffd
    800060b4:	568080e7          	jalr	1384(ra) # 80003618 <_Znwm>
    800060b8:	00050a93          	mv	s5,a0
    800060bc:	00048593          	mv	a1,s1
    800060c0:	00001097          	auipc	ra,0x1
    800060c4:	804080e7          	jalr	-2044(ra) # 800068c4 <_ZN9BufferCPPC1Ei>
    800060c8:	0300006f          	j	800060f8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800060cc:	00004517          	auipc	a0,0x4
    800060d0:	13c50513          	addi	a0,a0,316 # 8000a208 <CONSOLE_STATUS+0x1f8>
    800060d4:	00000097          	auipc	ra,0x0
    800060d8:	520080e7          	jalr	1312(ra) # 800065f4 <_Z11printStringPKc>
        return;
    800060dc:	0140006f          	j	800060f0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800060e0:	00004517          	auipc	a0,0x4
    800060e4:	16850513          	addi	a0,a0,360 # 8000a248 <CONSOLE_STATUS+0x238>
    800060e8:	00000097          	auipc	ra,0x0
    800060ec:	50c080e7          	jalr	1292(ra) # 800065f4 <_Z11printStringPKc>
        return;
    800060f0:	000b8113          	mv	sp,s7
    800060f4:	2380006f          	j	8000632c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800060f8:	01000513          	li	a0,16
    800060fc:	ffffd097          	auipc	ra,0xffffd
    80006100:	51c080e7          	jalr	1308(ra) # 80003618 <_Znwm>
    80006104:	00050493          	mv	s1,a0
    80006108:	00000593          	li	a1,0
    8000610c:	ffffd097          	auipc	ra,0xffffd
    80006110:	6c8080e7          	jalr	1736(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    80006114:	00007797          	auipc	a5,0x7
    80006118:	fe97b223          	sd	s1,-28(a5) # 8000d0f8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000611c:	00391793          	slli	a5,s2,0x3
    80006120:	00f78793          	addi	a5,a5,15
    80006124:	ff07f793          	andi	a5,a5,-16
    80006128:	40f10133          	sub	sp,sp,a5
    8000612c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80006130:	0019071b          	addiw	a4,s2,1
    80006134:	00171793          	slli	a5,a4,0x1
    80006138:	00e787b3          	add	a5,a5,a4
    8000613c:	00379793          	slli	a5,a5,0x3
    80006140:	00f78793          	addi	a5,a5,15
    80006144:	ff07f793          	andi	a5,a5,-16
    80006148:	40f10133          	sub	sp,sp,a5
    8000614c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80006150:	00191c13          	slli	s8,s2,0x1
    80006154:	012c07b3          	add	a5,s8,s2
    80006158:	00379793          	slli	a5,a5,0x3
    8000615c:	00fa07b3          	add	a5,s4,a5
    80006160:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006164:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80006168:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000616c:	02800513          	li	a0,40
    80006170:	ffffd097          	auipc	ra,0xffffd
    80006174:	4a8080e7          	jalr	1192(ra) # 80003618 <_Znwm>
    80006178:	00050b13          	mv	s6,a0
    8000617c:	012c0c33          	add	s8,s8,s2
    80006180:	003c1c13          	slli	s8,s8,0x3
    80006184:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80006188:	ffffd097          	auipc	ra,0xffffd
    8000618c:	578080e7          	jalr	1400(ra) # 80003700 <_ZN6ThreadC1Ev>
    80006190:	00007797          	auipc	a5,0x7
    80006194:	bb078793          	addi	a5,a5,-1104 # 8000cd40 <_ZTV12ConsumerSync+0x10>
    80006198:	00fb3023          	sd	a5,0(s6)
    8000619c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800061a0:	000b0513          	mv	a0,s6
    800061a4:	ffffd097          	auipc	ra,0xffffd
    800061a8:	58c080e7          	jalr	1420(ra) # 80003730 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800061ac:	00000493          	li	s1,0
    800061b0:	0380006f          	j	800061e8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800061b4:	00007797          	auipc	a5,0x7
    800061b8:	b6478793          	addi	a5,a5,-1180 # 8000cd18 <_ZTV12ProducerSync+0x10>
    800061bc:	00fcb023          	sd	a5,0(s9)
    800061c0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800061c4:	00349793          	slli	a5,s1,0x3
    800061c8:	00f987b3          	add	a5,s3,a5
    800061cc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800061d0:	00349793          	slli	a5,s1,0x3
    800061d4:	00f987b3          	add	a5,s3,a5
    800061d8:	0007b503          	ld	a0,0(a5)
    800061dc:	ffffd097          	auipc	ra,0xffffd
    800061e0:	554080e7          	jalr	1364(ra) # 80003730 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800061e4:	0014849b          	addiw	s1,s1,1
    800061e8:	0b24d063          	bge	s1,s2,80006288 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800061ec:	00149793          	slli	a5,s1,0x1
    800061f0:	009787b3          	add	a5,a5,s1
    800061f4:	00379793          	slli	a5,a5,0x3
    800061f8:	00fa07b3          	add	a5,s4,a5
    800061fc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80006200:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80006204:	00007717          	auipc	a4,0x7
    80006208:	ef473703          	ld	a4,-268(a4) # 8000d0f8 <_ZL10waitForAll>
    8000620c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80006210:	02905863          	blez	s1,80006240 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80006214:	02800513          	li	a0,40
    80006218:	ffffd097          	auipc	ra,0xffffd
    8000621c:	400080e7          	jalr	1024(ra) # 80003618 <_Znwm>
    80006220:	00050c93          	mv	s9,a0
    80006224:	00149c13          	slli	s8,s1,0x1
    80006228:	009c0c33          	add	s8,s8,s1
    8000622c:	003c1c13          	slli	s8,s8,0x3
    80006230:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80006234:	ffffd097          	auipc	ra,0xffffd
    80006238:	4cc080e7          	jalr	1228(ra) # 80003700 <_ZN6ThreadC1Ev>
    8000623c:	f79ff06f          	j	800061b4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80006240:	02800513          	li	a0,40
    80006244:	ffffd097          	auipc	ra,0xffffd
    80006248:	3d4080e7          	jalr	980(ra) # 80003618 <_Znwm>
    8000624c:	00050c93          	mv	s9,a0
    80006250:	00149c13          	slli	s8,s1,0x1
    80006254:	009c0c33          	add	s8,s8,s1
    80006258:	003c1c13          	slli	s8,s8,0x3
    8000625c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80006260:	ffffd097          	auipc	ra,0xffffd
    80006264:	4a0080e7          	jalr	1184(ra) # 80003700 <_ZN6ThreadC1Ev>
    80006268:	00007797          	auipc	a5,0x7
    8000626c:	a8878793          	addi	a5,a5,-1400 # 8000ccf0 <_ZTV16ProducerKeyboard+0x10>
    80006270:	00fcb023          	sd	a5,0(s9)
    80006274:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80006278:	00349793          	slli	a5,s1,0x3
    8000627c:	00f987b3          	add	a5,s3,a5
    80006280:	0197b023          	sd	s9,0(a5)
    80006284:	f4dff06f          	j	800061d0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80006288:	ffffd097          	auipc	ra,0xffffd
    8000628c:	4fc080e7          	jalr	1276(ra) # 80003784 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80006290:	00000493          	li	s1,0
    80006294:	00994e63          	blt	s2,s1,800062b0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80006298:	00007517          	auipc	a0,0x7
    8000629c:	e6053503          	ld	a0,-416(a0) # 8000d0f8 <_ZL10waitForAll>
    800062a0:	ffffd097          	auipc	ra,0xffffd
    800062a4:	56c080e7          	jalr	1388(ra) # 8000380c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800062a8:	0014849b          	addiw	s1,s1,1
    800062ac:	fe9ff06f          	j	80006294 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800062b0:	00000493          	li	s1,0
    800062b4:	0080006f          	j	800062bc <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800062b8:	0014849b          	addiw	s1,s1,1
    800062bc:	0324d263          	bge	s1,s2,800062e0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800062c0:	00349793          	slli	a5,s1,0x3
    800062c4:	00f987b3          	add	a5,s3,a5
    800062c8:	0007b503          	ld	a0,0(a5)
    800062cc:	fe0506e3          	beqz	a0,800062b8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800062d0:	00053783          	ld	a5,0(a0)
    800062d4:	0087b783          	ld	a5,8(a5)
    800062d8:	000780e7          	jalr	a5
    800062dc:	fddff06f          	j	800062b8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800062e0:	000b0a63          	beqz	s6,800062f4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800062e4:	000b3783          	ld	a5,0(s6)
    800062e8:	0087b783          	ld	a5,8(a5)
    800062ec:	000b0513          	mv	a0,s6
    800062f0:	000780e7          	jalr	a5
    delete waitForAll;
    800062f4:	00007517          	auipc	a0,0x7
    800062f8:	e0453503          	ld	a0,-508(a0) # 8000d0f8 <_ZL10waitForAll>
    800062fc:	00050863          	beqz	a0,8000630c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80006300:	00053783          	ld	a5,0(a0)
    80006304:	0087b783          	ld	a5,8(a5)
    80006308:	000780e7          	jalr	a5
    delete buffer;
    8000630c:	000a8e63          	beqz	s5,80006328 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80006310:	000a8513          	mv	a0,s5
    80006314:	00001097          	auipc	ra,0x1
    80006318:	8a8080e7          	jalr	-1880(ra) # 80006bbc <_ZN9BufferCPPD1Ev>
    8000631c:	000a8513          	mv	a0,s5
    80006320:	ffffd097          	auipc	ra,0xffffd
    80006324:	320080e7          	jalr	800(ra) # 80003640 <_ZdlPv>
    80006328:	000b8113          	mv	sp,s7

}
    8000632c:	f8040113          	addi	sp,s0,-128
    80006330:	07813083          	ld	ra,120(sp)
    80006334:	07013403          	ld	s0,112(sp)
    80006338:	06813483          	ld	s1,104(sp)
    8000633c:	06013903          	ld	s2,96(sp)
    80006340:	05813983          	ld	s3,88(sp)
    80006344:	05013a03          	ld	s4,80(sp)
    80006348:	04813a83          	ld	s5,72(sp)
    8000634c:	04013b03          	ld	s6,64(sp)
    80006350:	03813b83          	ld	s7,56(sp)
    80006354:	03013c03          	ld	s8,48(sp)
    80006358:	02813c83          	ld	s9,40(sp)
    8000635c:	08010113          	addi	sp,sp,128
    80006360:	00008067          	ret
    80006364:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006368:	000a8513          	mv	a0,s5
    8000636c:	ffffd097          	auipc	ra,0xffffd
    80006370:	2d4080e7          	jalr	724(ra) # 80003640 <_ZdlPv>
    80006374:	00048513          	mv	a0,s1
    80006378:	00008097          	auipc	ra,0x8
    8000637c:	e60080e7          	jalr	-416(ra) # 8000e1d8 <_Unwind_Resume>
    80006380:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006384:	00048513          	mv	a0,s1
    80006388:	ffffd097          	auipc	ra,0xffffd
    8000638c:	2b8080e7          	jalr	696(ra) # 80003640 <_ZdlPv>
    80006390:	00090513          	mv	a0,s2
    80006394:	00008097          	auipc	ra,0x8
    80006398:	e44080e7          	jalr	-444(ra) # 8000e1d8 <_Unwind_Resume>
    8000639c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800063a0:	000b0513          	mv	a0,s6
    800063a4:	ffffd097          	auipc	ra,0xffffd
    800063a8:	29c080e7          	jalr	668(ra) # 80003640 <_ZdlPv>
    800063ac:	00048513          	mv	a0,s1
    800063b0:	00008097          	auipc	ra,0x8
    800063b4:	e28080e7          	jalr	-472(ra) # 8000e1d8 <_Unwind_Resume>
    800063b8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800063bc:	000c8513          	mv	a0,s9
    800063c0:	ffffd097          	auipc	ra,0xffffd
    800063c4:	280080e7          	jalr	640(ra) # 80003640 <_ZdlPv>
    800063c8:	00048513          	mv	a0,s1
    800063cc:	00008097          	auipc	ra,0x8
    800063d0:	e0c080e7          	jalr	-500(ra) # 8000e1d8 <_Unwind_Resume>
    800063d4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800063d8:	000c8513          	mv	a0,s9
    800063dc:	ffffd097          	auipc	ra,0xffffd
    800063e0:	264080e7          	jalr	612(ra) # 80003640 <_ZdlPv>
    800063e4:	00048513          	mv	a0,s1
    800063e8:	00008097          	auipc	ra,0x8
    800063ec:	df0080e7          	jalr	-528(ra) # 8000e1d8 <_Unwind_Resume>

00000000800063f0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800063f0:	ff010113          	addi	sp,sp,-16
    800063f4:	00113423          	sd	ra,8(sp)
    800063f8:	00813023          	sd	s0,0(sp)
    800063fc:	01010413          	addi	s0,sp,16
    80006400:	00007797          	auipc	a5,0x7
    80006404:	94078793          	addi	a5,a5,-1728 # 8000cd40 <_ZTV12ConsumerSync+0x10>
    80006408:	00f53023          	sd	a5,0(a0)
    8000640c:	ffffd097          	auipc	ra,0xffffd
    80006410:	13c080e7          	jalr	316(ra) # 80003548 <_ZN6ThreadD1Ev>
    80006414:	00813083          	ld	ra,8(sp)
    80006418:	00013403          	ld	s0,0(sp)
    8000641c:	01010113          	addi	sp,sp,16
    80006420:	00008067          	ret

0000000080006424 <_ZN12ConsumerSyncD0Ev>:
    80006424:	fe010113          	addi	sp,sp,-32
    80006428:	00113c23          	sd	ra,24(sp)
    8000642c:	00813823          	sd	s0,16(sp)
    80006430:	00913423          	sd	s1,8(sp)
    80006434:	02010413          	addi	s0,sp,32
    80006438:	00050493          	mv	s1,a0
    8000643c:	00007797          	auipc	a5,0x7
    80006440:	90478793          	addi	a5,a5,-1788 # 8000cd40 <_ZTV12ConsumerSync+0x10>
    80006444:	00f53023          	sd	a5,0(a0)
    80006448:	ffffd097          	auipc	ra,0xffffd
    8000644c:	100080e7          	jalr	256(ra) # 80003548 <_ZN6ThreadD1Ev>
    80006450:	00048513          	mv	a0,s1
    80006454:	ffffd097          	auipc	ra,0xffffd
    80006458:	1ec080e7          	jalr	492(ra) # 80003640 <_ZdlPv>
    8000645c:	01813083          	ld	ra,24(sp)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	00813483          	ld	s1,8(sp)
    80006468:	02010113          	addi	sp,sp,32
    8000646c:	00008067          	ret

0000000080006470 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80006470:	ff010113          	addi	sp,sp,-16
    80006474:	00113423          	sd	ra,8(sp)
    80006478:	00813023          	sd	s0,0(sp)
    8000647c:	01010413          	addi	s0,sp,16
    80006480:	00007797          	auipc	a5,0x7
    80006484:	89878793          	addi	a5,a5,-1896 # 8000cd18 <_ZTV12ProducerSync+0x10>
    80006488:	00f53023          	sd	a5,0(a0)
    8000648c:	ffffd097          	auipc	ra,0xffffd
    80006490:	0bc080e7          	jalr	188(ra) # 80003548 <_ZN6ThreadD1Ev>
    80006494:	00813083          	ld	ra,8(sp)
    80006498:	00013403          	ld	s0,0(sp)
    8000649c:	01010113          	addi	sp,sp,16
    800064a0:	00008067          	ret

00000000800064a4 <_ZN12ProducerSyncD0Ev>:
    800064a4:	fe010113          	addi	sp,sp,-32
    800064a8:	00113c23          	sd	ra,24(sp)
    800064ac:	00813823          	sd	s0,16(sp)
    800064b0:	00913423          	sd	s1,8(sp)
    800064b4:	02010413          	addi	s0,sp,32
    800064b8:	00050493          	mv	s1,a0
    800064bc:	00007797          	auipc	a5,0x7
    800064c0:	85c78793          	addi	a5,a5,-1956 # 8000cd18 <_ZTV12ProducerSync+0x10>
    800064c4:	00f53023          	sd	a5,0(a0)
    800064c8:	ffffd097          	auipc	ra,0xffffd
    800064cc:	080080e7          	jalr	128(ra) # 80003548 <_ZN6ThreadD1Ev>
    800064d0:	00048513          	mv	a0,s1
    800064d4:	ffffd097          	auipc	ra,0xffffd
    800064d8:	16c080e7          	jalr	364(ra) # 80003640 <_ZdlPv>
    800064dc:	01813083          	ld	ra,24(sp)
    800064e0:	01013403          	ld	s0,16(sp)
    800064e4:	00813483          	ld	s1,8(sp)
    800064e8:	02010113          	addi	sp,sp,32
    800064ec:	00008067          	ret

00000000800064f0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800064f0:	ff010113          	addi	sp,sp,-16
    800064f4:	00113423          	sd	ra,8(sp)
    800064f8:	00813023          	sd	s0,0(sp)
    800064fc:	01010413          	addi	s0,sp,16
    80006500:	00006797          	auipc	a5,0x6
    80006504:	7f078793          	addi	a5,a5,2032 # 8000ccf0 <_ZTV16ProducerKeyboard+0x10>
    80006508:	00f53023          	sd	a5,0(a0)
    8000650c:	ffffd097          	auipc	ra,0xffffd
    80006510:	03c080e7          	jalr	60(ra) # 80003548 <_ZN6ThreadD1Ev>
    80006514:	00813083          	ld	ra,8(sp)
    80006518:	00013403          	ld	s0,0(sp)
    8000651c:	01010113          	addi	sp,sp,16
    80006520:	00008067          	ret

0000000080006524 <_ZN16ProducerKeyboardD0Ev>:
    80006524:	fe010113          	addi	sp,sp,-32
    80006528:	00113c23          	sd	ra,24(sp)
    8000652c:	00813823          	sd	s0,16(sp)
    80006530:	00913423          	sd	s1,8(sp)
    80006534:	02010413          	addi	s0,sp,32
    80006538:	00050493          	mv	s1,a0
    8000653c:	00006797          	auipc	a5,0x6
    80006540:	7b478793          	addi	a5,a5,1972 # 8000ccf0 <_ZTV16ProducerKeyboard+0x10>
    80006544:	00f53023          	sd	a5,0(a0)
    80006548:	ffffd097          	auipc	ra,0xffffd
    8000654c:	000080e7          	jalr	ra # 80003548 <_ZN6ThreadD1Ev>
    80006550:	00048513          	mv	a0,s1
    80006554:	ffffd097          	auipc	ra,0xffffd
    80006558:	0ec080e7          	jalr	236(ra) # 80003640 <_ZdlPv>
    8000655c:	01813083          	ld	ra,24(sp)
    80006560:	01013403          	ld	s0,16(sp)
    80006564:	00813483          	ld	s1,8(sp)
    80006568:	02010113          	addi	sp,sp,32
    8000656c:	00008067          	ret

0000000080006570 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006570:	ff010113          	addi	sp,sp,-16
    80006574:	00113423          	sd	ra,8(sp)
    80006578:	00813023          	sd	s0,0(sp)
    8000657c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006580:	02053583          	ld	a1,32(a0)
    80006584:	fffff097          	auipc	ra,0xfffff
    80006588:	7e4080e7          	jalr	2020(ra) # 80005d68 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000658c:	00813083          	ld	ra,8(sp)
    80006590:	00013403          	ld	s0,0(sp)
    80006594:	01010113          	addi	sp,sp,16
    80006598:	00008067          	ret

000000008000659c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000659c:	ff010113          	addi	sp,sp,-16
    800065a0:	00113423          	sd	ra,8(sp)
    800065a4:	00813023          	sd	s0,0(sp)
    800065a8:	01010413          	addi	s0,sp,16
        producer(td);
    800065ac:	02053583          	ld	a1,32(a0)
    800065b0:	00000097          	auipc	ra,0x0
    800065b4:	878080e7          	jalr	-1928(ra) # 80005e28 <_ZN12ProducerSync8producerEPv>
    }
    800065b8:	00813083          	ld	ra,8(sp)
    800065bc:	00013403          	ld	s0,0(sp)
    800065c0:	01010113          	addi	sp,sp,16
    800065c4:	00008067          	ret

00000000800065c8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800065c8:	ff010113          	addi	sp,sp,-16
    800065cc:	00113423          	sd	ra,8(sp)
    800065d0:	00813023          	sd	s0,0(sp)
    800065d4:	01010413          	addi	s0,sp,16
        consumer(td);
    800065d8:	02053583          	ld	a1,32(a0)
    800065dc:	00000097          	auipc	ra,0x0
    800065e0:	8e0080e7          	jalr	-1824(ra) # 80005ebc <_ZN12ConsumerSync8consumerEPv>
    }
    800065e4:	00813083          	ld	ra,8(sp)
    800065e8:	00013403          	ld	s0,0(sp)
    800065ec:	01010113          	addi	sp,sp,16
    800065f0:	00008067          	ret

00000000800065f4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800065f4:	fe010113          	addi	sp,sp,-32
    800065f8:	00113c23          	sd	ra,24(sp)
    800065fc:	00813823          	sd	s0,16(sp)
    80006600:	00913423          	sd	s1,8(sp)
    80006604:	02010413          	addi	s0,sp,32
    80006608:	00050493          	mv	s1,a0
    LOCK();
    8000660c:	00100613          	li	a2,1
    80006610:	00000593          	li	a1,0
    80006614:	00007517          	auipc	a0,0x7
    80006618:	aec50513          	addi	a0,a0,-1300 # 8000d100 <lockPrint>
    8000661c:	ffffb097          	auipc	ra,0xffffb
    80006620:	cb4080e7          	jalr	-844(ra) # 800012d0 <copy_and_swap>
    80006624:	00050863          	beqz	a0,80006634 <_Z11printStringPKc+0x40>
    80006628:	ffffb097          	auipc	ra,0xffffb
    8000662c:	050080e7          	jalr	80(ra) # 80001678 <thread_dispatch>
    80006630:	fddff06f          	j	8000660c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006634:	0004c503          	lbu	a0,0(s1)
    80006638:	00050a63          	beqz	a0,8000664c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000663c:	ffffb097          	auipc	ra,0xffffb
    80006640:	190080e7          	jalr	400(ra) # 800017cc <putc>
        string++;
    80006644:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006648:	fedff06f          	j	80006634 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000664c:	00000613          	li	a2,0
    80006650:	00100593          	li	a1,1
    80006654:	00007517          	auipc	a0,0x7
    80006658:	aac50513          	addi	a0,a0,-1364 # 8000d100 <lockPrint>
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	c74080e7          	jalr	-908(ra) # 800012d0 <copy_and_swap>
    80006664:	fe0514e3          	bnez	a0,8000664c <_Z11printStringPKc+0x58>
}
    80006668:	01813083          	ld	ra,24(sp)
    8000666c:	01013403          	ld	s0,16(sp)
    80006670:	00813483          	ld	s1,8(sp)
    80006674:	02010113          	addi	sp,sp,32
    80006678:	00008067          	ret

000000008000667c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000667c:	fd010113          	addi	sp,sp,-48
    80006680:	02113423          	sd	ra,40(sp)
    80006684:	02813023          	sd	s0,32(sp)
    80006688:	00913c23          	sd	s1,24(sp)
    8000668c:	01213823          	sd	s2,16(sp)
    80006690:	01313423          	sd	s3,8(sp)
    80006694:	01413023          	sd	s4,0(sp)
    80006698:	03010413          	addi	s0,sp,48
    8000669c:	00050993          	mv	s3,a0
    800066a0:	00058a13          	mv	s4,a1
    LOCK();
    800066a4:	00100613          	li	a2,1
    800066a8:	00000593          	li	a1,0
    800066ac:	00007517          	auipc	a0,0x7
    800066b0:	a5450513          	addi	a0,a0,-1452 # 8000d100 <lockPrint>
    800066b4:	ffffb097          	auipc	ra,0xffffb
    800066b8:	c1c080e7          	jalr	-996(ra) # 800012d0 <copy_and_swap>
    800066bc:	00050863          	beqz	a0,800066cc <_Z9getStringPci+0x50>
    800066c0:	ffffb097          	auipc	ra,0xffffb
    800066c4:	fb8080e7          	jalr	-72(ra) # 80001678 <thread_dispatch>
    800066c8:	fddff06f          	j	800066a4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800066cc:	00000913          	li	s2,0
    800066d0:	00090493          	mv	s1,s2
    800066d4:	0019091b          	addiw	s2,s2,1
    800066d8:	03495a63          	bge	s2,s4,8000670c <_Z9getStringPci+0x90>
        cc = getc();
    800066dc:	ffffb097          	auipc	ra,0xffffb
    800066e0:	0cc080e7          	jalr	204(ra) # 800017a8 <getc>
        if(cc < 1)
    800066e4:	02050463          	beqz	a0,8000670c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800066e8:	009984b3          	add	s1,s3,s1
    800066ec:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800066f0:	00a00793          	li	a5,10
    800066f4:	00f50a63          	beq	a0,a5,80006708 <_Z9getStringPci+0x8c>
    800066f8:	00d00793          	li	a5,13
    800066fc:	fcf51ae3          	bne	a0,a5,800066d0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006700:	00090493          	mv	s1,s2
    80006704:	0080006f          	j	8000670c <_Z9getStringPci+0x90>
    80006708:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000670c:	009984b3          	add	s1,s3,s1
    80006710:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006714:	00000613          	li	a2,0
    80006718:	00100593          	li	a1,1
    8000671c:	00007517          	auipc	a0,0x7
    80006720:	9e450513          	addi	a0,a0,-1564 # 8000d100 <lockPrint>
    80006724:	ffffb097          	auipc	ra,0xffffb
    80006728:	bac080e7          	jalr	-1108(ra) # 800012d0 <copy_and_swap>
    8000672c:	fe0514e3          	bnez	a0,80006714 <_Z9getStringPci+0x98>
    return buf;
}
    80006730:	00098513          	mv	a0,s3
    80006734:	02813083          	ld	ra,40(sp)
    80006738:	02013403          	ld	s0,32(sp)
    8000673c:	01813483          	ld	s1,24(sp)
    80006740:	01013903          	ld	s2,16(sp)
    80006744:	00813983          	ld	s3,8(sp)
    80006748:	00013a03          	ld	s4,0(sp)
    8000674c:	03010113          	addi	sp,sp,48
    80006750:	00008067          	ret

0000000080006754 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006754:	ff010113          	addi	sp,sp,-16
    80006758:	00813423          	sd	s0,8(sp)
    8000675c:	01010413          	addi	s0,sp,16
    80006760:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006764:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006768:	0006c603          	lbu	a2,0(a3)
    8000676c:	fd06071b          	addiw	a4,a2,-48
    80006770:	0ff77713          	andi	a4,a4,255
    80006774:	00900793          	li	a5,9
    80006778:	02e7e063          	bltu	a5,a4,80006798 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000677c:	0025179b          	slliw	a5,a0,0x2
    80006780:	00a787bb          	addw	a5,a5,a0
    80006784:	0017979b          	slliw	a5,a5,0x1
    80006788:	00168693          	addi	a3,a3,1
    8000678c:	00c787bb          	addw	a5,a5,a2
    80006790:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006794:	fd5ff06f          	j	80006768 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006798:	00813403          	ld	s0,8(sp)
    8000679c:	01010113          	addi	sp,sp,16
    800067a0:	00008067          	ret

00000000800067a4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800067a4:	fc010113          	addi	sp,sp,-64
    800067a8:	02113c23          	sd	ra,56(sp)
    800067ac:	02813823          	sd	s0,48(sp)
    800067b0:	02913423          	sd	s1,40(sp)
    800067b4:	03213023          	sd	s2,32(sp)
    800067b8:	01313c23          	sd	s3,24(sp)
    800067bc:	04010413          	addi	s0,sp,64
    800067c0:	00050493          	mv	s1,a0
    800067c4:	00058913          	mv	s2,a1
    800067c8:	00060993          	mv	s3,a2
    LOCK();
    800067cc:	00100613          	li	a2,1
    800067d0:	00000593          	li	a1,0
    800067d4:	00007517          	auipc	a0,0x7
    800067d8:	92c50513          	addi	a0,a0,-1748 # 8000d100 <lockPrint>
    800067dc:	ffffb097          	auipc	ra,0xffffb
    800067e0:	af4080e7          	jalr	-1292(ra) # 800012d0 <copy_and_swap>
    800067e4:	00050863          	beqz	a0,800067f4 <_Z8printIntiii+0x50>
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	e90080e7          	jalr	-368(ra) # 80001678 <thread_dispatch>
    800067f0:	fddff06f          	j	800067cc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800067f4:	00098463          	beqz	s3,800067fc <_Z8printIntiii+0x58>
    800067f8:	0804c463          	bltz	s1,80006880 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800067fc:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006800:	00000593          	li	a1,0
    }

    i = 0;
    80006804:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006808:	0009079b          	sext.w	a5,s2
    8000680c:	0325773b          	remuw	a4,a0,s2
    80006810:	00048613          	mv	a2,s1
    80006814:	0014849b          	addiw	s1,s1,1
    80006818:	02071693          	slli	a3,a4,0x20
    8000681c:	0206d693          	srli	a3,a3,0x20
    80006820:	00006717          	auipc	a4,0x6
    80006824:	53870713          	addi	a4,a4,1336 # 8000cd58 <digits>
    80006828:	00d70733          	add	a4,a4,a3
    8000682c:	00074683          	lbu	a3,0(a4)
    80006830:	fd040713          	addi	a4,s0,-48
    80006834:	00c70733          	add	a4,a4,a2
    80006838:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000683c:	0005071b          	sext.w	a4,a0
    80006840:	0325553b          	divuw	a0,a0,s2
    80006844:	fcf772e3          	bgeu	a4,a5,80006808 <_Z8printIntiii+0x64>
    if(neg)
    80006848:	00058c63          	beqz	a1,80006860 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000684c:	fd040793          	addi	a5,s0,-48
    80006850:	009784b3          	add	s1,a5,s1
    80006854:	02d00793          	li	a5,45
    80006858:	fef48823          	sb	a5,-16(s1)
    8000685c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006860:	fff4849b          	addiw	s1,s1,-1
    80006864:	0204c463          	bltz	s1,8000688c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006868:	fd040793          	addi	a5,s0,-48
    8000686c:	009787b3          	add	a5,a5,s1
    80006870:	ff07c503          	lbu	a0,-16(a5)
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	f58080e7          	jalr	-168(ra) # 800017cc <putc>
    8000687c:	fe5ff06f          	j	80006860 <_Z8printIntiii+0xbc>
        x = -xx;
    80006880:	4090053b          	negw	a0,s1
        neg = 1;
    80006884:	00100593          	li	a1,1
        x = -xx;
    80006888:	f7dff06f          	j	80006804 <_Z8printIntiii+0x60>

    UNLOCK();
    8000688c:	00000613          	li	a2,0
    80006890:	00100593          	li	a1,1
    80006894:	00007517          	auipc	a0,0x7
    80006898:	86c50513          	addi	a0,a0,-1940 # 8000d100 <lockPrint>
    8000689c:	ffffb097          	auipc	ra,0xffffb
    800068a0:	a34080e7          	jalr	-1484(ra) # 800012d0 <copy_and_swap>
    800068a4:	fe0514e3          	bnez	a0,8000688c <_Z8printIntiii+0xe8>
    800068a8:	03813083          	ld	ra,56(sp)
    800068ac:	03013403          	ld	s0,48(sp)
    800068b0:	02813483          	ld	s1,40(sp)
    800068b4:	02013903          	ld	s2,32(sp)
    800068b8:	01813983          	ld	s3,24(sp)
    800068bc:	04010113          	addi	sp,sp,64
    800068c0:	00008067          	ret

00000000800068c4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800068c4:	fd010113          	addi	sp,sp,-48
    800068c8:	02113423          	sd	ra,40(sp)
    800068cc:	02813023          	sd	s0,32(sp)
    800068d0:	00913c23          	sd	s1,24(sp)
    800068d4:	01213823          	sd	s2,16(sp)
    800068d8:	01313423          	sd	s3,8(sp)
    800068dc:	03010413          	addi	s0,sp,48
    800068e0:	00050493          	mv	s1,a0
    800068e4:	00058913          	mv	s2,a1
    800068e8:	0015879b          	addiw	a5,a1,1
    800068ec:	0007851b          	sext.w	a0,a5
    800068f0:	00f4a023          	sw	a5,0(s1)
    800068f4:	0004a823          	sw	zero,16(s1)
    800068f8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800068fc:	00251513          	slli	a0,a0,0x2
    80006900:	ffffb097          	auipc	ra,0xffffb
    80006904:	c54080e7          	jalr	-940(ra) # 80001554 <mem_alloc>
    80006908:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000690c:	01000513          	li	a0,16
    80006910:	ffffd097          	auipc	ra,0xffffd
    80006914:	d08080e7          	jalr	-760(ra) # 80003618 <_Znwm>
    80006918:	00050993          	mv	s3,a0
    8000691c:	00000593          	li	a1,0
    80006920:	ffffd097          	auipc	ra,0xffffd
    80006924:	eb4080e7          	jalr	-332(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    80006928:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000692c:	01000513          	li	a0,16
    80006930:	ffffd097          	auipc	ra,0xffffd
    80006934:	ce8080e7          	jalr	-792(ra) # 80003618 <_Znwm>
    80006938:	00050993          	mv	s3,a0
    8000693c:	00090593          	mv	a1,s2
    80006940:	ffffd097          	auipc	ra,0xffffd
    80006944:	e94080e7          	jalr	-364(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    80006948:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000694c:	01000513          	li	a0,16
    80006950:	ffffd097          	auipc	ra,0xffffd
    80006954:	cc8080e7          	jalr	-824(ra) # 80003618 <_Znwm>
    80006958:	00050913          	mv	s2,a0
    8000695c:	00100593          	li	a1,1
    80006960:	ffffd097          	auipc	ra,0xffffd
    80006964:	e74080e7          	jalr	-396(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    80006968:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000696c:	01000513          	li	a0,16
    80006970:	ffffd097          	auipc	ra,0xffffd
    80006974:	ca8080e7          	jalr	-856(ra) # 80003618 <_Znwm>
    80006978:	00050913          	mv	s2,a0
    8000697c:	00100593          	li	a1,1
    80006980:	ffffd097          	auipc	ra,0xffffd
    80006984:	e54080e7          	jalr	-428(ra) # 800037d4 <_ZN9SemaphoreC1Ej>
    80006988:	0324b823          	sd	s2,48(s1)
}
    8000698c:	02813083          	ld	ra,40(sp)
    80006990:	02013403          	ld	s0,32(sp)
    80006994:	01813483          	ld	s1,24(sp)
    80006998:	01013903          	ld	s2,16(sp)
    8000699c:	00813983          	ld	s3,8(sp)
    800069a0:	03010113          	addi	sp,sp,48
    800069a4:	00008067          	ret
    800069a8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800069ac:	00098513          	mv	a0,s3
    800069b0:	ffffd097          	auipc	ra,0xffffd
    800069b4:	c90080e7          	jalr	-880(ra) # 80003640 <_ZdlPv>
    800069b8:	00048513          	mv	a0,s1
    800069bc:	00008097          	auipc	ra,0x8
    800069c0:	81c080e7          	jalr	-2020(ra) # 8000e1d8 <_Unwind_Resume>
    800069c4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800069c8:	00098513          	mv	a0,s3
    800069cc:	ffffd097          	auipc	ra,0xffffd
    800069d0:	c74080e7          	jalr	-908(ra) # 80003640 <_ZdlPv>
    800069d4:	00048513          	mv	a0,s1
    800069d8:	00008097          	auipc	ra,0x8
    800069dc:	800080e7          	jalr	-2048(ra) # 8000e1d8 <_Unwind_Resume>
    800069e0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800069e4:	00090513          	mv	a0,s2
    800069e8:	ffffd097          	auipc	ra,0xffffd
    800069ec:	c58080e7          	jalr	-936(ra) # 80003640 <_ZdlPv>
    800069f0:	00048513          	mv	a0,s1
    800069f4:	00007097          	auipc	ra,0x7
    800069f8:	7e4080e7          	jalr	2020(ra) # 8000e1d8 <_Unwind_Resume>
    800069fc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006a00:	00090513          	mv	a0,s2
    80006a04:	ffffd097          	auipc	ra,0xffffd
    80006a08:	c3c080e7          	jalr	-964(ra) # 80003640 <_ZdlPv>
    80006a0c:	00048513          	mv	a0,s1
    80006a10:	00007097          	auipc	ra,0x7
    80006a14:	7c8080e7          	jalr	1992(ra) # 8000e1d8 <_Unwind_Resume>

0000000080006a18 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006a18:	fe010113          	addi	sp,sp,-32
    80006a1c:	00113c23          	sd	ra,24(sp)
    80006a20:	00813823          	sd	s0,16(sp)
    80006a24:	00913423          	sd	s1,8(sp)
    80006a28:	01213023          	sd	s2,0(sp)
    80006a2c:	02010413          	addi	s0,sp,32
    80006a30:	00050493          	mv	s1,a0
    80006a34:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006a38:	01853503          	ld	a0,24(a0)
    80006a3c:	ffffd097          	auipc	ra,0xffffd
    80006a40:	dd0080e7          	jalr	-560(ra) # 8000380c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006a44:	0304b503          	ld	a0,48(s1)
    80006a48:	ffffd097          	auipc	ra,0xffffd
    80006a4c:	dc4080e7          	jalr	-572(ra) # 8000380c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006a50:	0084b783          	ld	a5,8(s1)
    80006a54:	0144a703          	lw	a4,20(s1)
    80006a58:	00271713          	slli	a4,a4,0x2
    80006a5c:	00e787b3          	add	a5,a5,a4
    80006a60:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a64:	0144a783          	lw	a5,20(s1)
    80006a68:	0017879b          	addiw	a5,a5,1
    80006a6c:	0004a703          	lw	a4,0(s1)
    80006a70:	02e7e7bb          	remw	a5,a5,a4
    80006a74:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006a78:	0304b503          	ld	a0,48(s1)
    80006a7c:	ffffd097          	auipc	ra,0xffffd
    80006a80:	dbc080e7          	jalr	-580(ra) # 80003838 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006a84:	0204b503          	ld	a0,32(s1)
    80006a88:	ffffd097          	auipc	ra,0xffffd
    80006a8c:	db0080e7          	jalr	-592(ra) # 80003838 <_ZN9Semaphore6signalEv>

}
    80006a90:	01813083          	ld	ra,24(sp)
    80006a94:	01013403          	ld	s0,16(sp)
    80006a98:	00813483          	ld	s1,8(sp)
    80006a9c:	00013903          	ld	s2,0(sp)
    80006aa0:	02010113          	addi	sp,sp,32
    80006aa4:	00008067          	ret

0000000080006aa8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006aa8:	fe010113          	addi	sp,sp,-32
    80006aac:	00113c23          	sd	ra,24(sp)
    80006ab0:	00813823          	sd	s0,16(sp)
    80006ab4:	00913423          	sd	s1,8(sp)
    80006ab8:	01213023          	sd	s2,0(sp)
    80006abc:	02010413          	addi	s0,sp,32
    80006ac0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006ac4:	02053503          	ld	a0,32(a0)
    80006ac8:	ffffd097          	auipc	ra,0xffffd
    80006acc:	d44080e7          	jalr	-700(ra) # 8000380c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006ad0:	0284b503          	ld	a0,40(s1)
    80006ad4:	ffffd097          	auipc	ra,0xffffd
    80006ad8:	d38080e7          	jalr	-712(ra) # 8000380c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006adc:	0084b703          	ld	a4,8(s1)
    80006ae0:	0104a783          	lw	a5,16(s1)
    80006ae4:	00279693          	slli	a3,a5,0x2
    80006ae8:	00d70733          	add	a4,a4,a3
    80006aec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006af0:	0017879b          	addiw	a5,a5,1
    80006af4:	0004a703          	lw	a4,0(s1)
    80006af8:	02e7e7bb          	remw	a5,a5,a4
    80006afc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006b00:	0284b503          	ld	a0,40(s1)
    80006b04:	ffffd097          	auipc	ra,0xffffd
    80006b08:	d34080e7          	jalr	-716(ra) # 80003838 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006b0c:	0184b503          	ld	a0,24(s1)
    80006b10:	ffffd097          	auipc	ra,0xffffd
    80006b14:	d28080e7          	jalr	-728(ra) # 80003838 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006b18:	00090513          	mv	a0,s2
    80006b1c:	01813083          	ld	ra,24(sp)
    80006b20:	01013403          	ld	s0,16(sp)
    80006b24:	00813483          	ld	s1,8(sp)
    80006b28:	00013903          	ld	s2,0(sp)
    80006b2c:	02010113          	addi	sp,sp,32
    80006b30:	00008067          	ret

0000000080006b34 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006b34:	fe010113          	addi	sp,sp,-32
    80006b38:	00113c23          	sd	ra,24(sp)
    80006b3c:	00813823          	sd	s0,16(sp)
    80006b40:	00913423          	sd	s1,8(sp)
    80006b44:	01213023          	sd	s2,0(sp)
    80006b48:	02010413          	addi	s0,sp,32
    80006b4c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006b50:	02853503          	ld	a0,40(a0)
    80006b54:	ffffd097          	auipc	ra,0xffffd
    80006b58:	cb8080e7          	jalr	-840(ra) # 8000380c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006b5c:	0304b503          	ld	a0,48(s1)
    80006b60:	ffffd097          	auipc	ra,0xffffd
    80006b64:	cac080e7          	jalr	-852(ra) # 8000380c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006b68:	0144a783          	lw	a5,20(s1)
    80006b6c:	0104a903          	lw	s2,16(s1)
    80006b70:	0327ce63          	blt	a5,s2,80006bac <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006b74:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006b78:	0304b503          	ld	a0,48(s1)
    80006b7c:	ffffd097          	auipc	ra,0xffffd
    80006b80:	cbc080e7          	jalr	-836(ra) # 80003838 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006b84:	0284b503          	ld	a0,40(s1)
    80006b88:	ffffd097          	auipc	ra,0xffffd
    80006b8c:	cb0080e7          	jalr	-848(ra) # 80003838 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006b90:	00090513          	mv	a0,s2
    80006b94:	01813083          	ld	ra,24(sp)
    80006b98:	01013403          	ld	s0,16(sp)
    80006b9c:	00813483          	ld	s1,8(sp)
    80006ba0:	00013903          	ld	s2,0(sp)
    80006ba4:	02010113          	addi	sp,sp,32
    80006ba8:	00008067          	ret
        ret = cap - head + tail;
    80006bac:	0004a703          	lw	a4,0(s1)
    80006bb0:	4127093b          	subw	s2,a4,s2
    80006bb4:	00f9093b          	addw	s2,s2,a5
    80006bb8:	fc1ff06f          	j	80006b78 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006bbc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006bbc:	fe010113          	addi	sp,sp,-32
    80006bc0:	00113c23          	sd	ra,24(sp)
    80006bc4:	00813823          	sd	s0,16(sp)
    80006bc8:	00913423          	sd	s1,8(sp)
    80006bcc:	02010413          	addi	s0,sp,32
    80006bd0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006bd4:	00a00513          	li	a0,10
    80006bd8:	ffffd097          	auipc	ra,0xffffd
    80006bdc:	d4c080e7          	jalr	-692(ra) # 80003924 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006be0:	00004517          	auipc	a0,0x4
    80006be4:	a4050513          	addi	a0,a0,-1472 # 8000a620 <CONSOLE_STATUS+0x610>
    80006be8:	00000097          	auipc	ra,0x0
    80006bec:	a0c080e7          	jalr	-1524(ra) # 800065f4 <_Z11printStringPKc>
    while (getCnt()) {
    80006bf0:	00048513          	mv	a0,s1
    80006bf4:	00000097          	auipc	ra,0x0
    80006bf8:	f40080e7          	jalr	-192(ra) # 80006b34 <_ZN9BufferCPP6getCntEv>
    80006bfc:	02050c63          	beqz	a0,80006c34 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006c00:	0084b783          	ld	a5,8(s1)
    80006c04:	0104a703          	lw	a4,16(s1)
    80006c08:	00271713          	slli	a4,a4,0x2
    80006c0c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006c10:	0007c503          	lbu	a0,0(a5)
    80006c14:	ffffd097          	auipc	ra,0xffffd
    80006c18:	d10080e7          	jalr	-752(ra) # 80003924 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006c1c:	0104a783          	lw	a5,16(s1)
    80006c20:	0017879b          	addiw	a5,a5,1
    80006c24:	0004a703          	lw	a4,0(s1)
    80006c28:	02e7e7bb          	remw	a5,a5,a4
    80006c2c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006c30:	fc1ff06f          	j	80006bf0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006c34:	02100513          	li	a0,33
    80006c38:	ffffd097          	auipc	ra,0xffffd
    80006c3c:	cec080e7          	jalr	-788(ra) # 80003924 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006c40:	00a00513          	li	a0,10
    80006c44:	ffffd097          	auipc	ra,0xffffd
    80006c48:	ce0080e7          	jalr	-800(ra) # 80003924 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006c4c:	0084b503          	ld	a0,8(s1)
    80006c50:	ffffb097          	auipc	ra,0xffffb
    80006c54:	930080e7          	jalr	-1744(ra) # 80001580 <mem_free>
    delete itemAvailable;
    80006c58:	0204b503          	ld	a0,32(s1)
    80006c5c:	00050863          	beqz	a0,80006c6c <_ZN9BufferCPPD1Ev+0xb0>
    80006c60:	00053783          	ld	a5,0(a0)
    80006c64:	0087b783          	ld	a5,8(a5)
    80006c68:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006c6c:	0184b503          	ld	a0,24(s1)
    80006c70:	00050863          	beqz	a0,80006c80 <_ZN9BufferCPPD1Ev+0xc4>
    80006c74:	00053783          	ld	a5,0(a0)
    80006c78:	0087b783          	ld	a5,8(a5)
    80006c7c:	000780e7          	jalr	a5
    delete mutexTail;
    80006c80:	0304b503          	ld	a0,48(s1)
    80006c84:	00050863          	beqz	a0,80006c94 <_ZN9BufferCPPD1Ev+0xd8>
    80006c88:	00053783          	ld	a5,0(a0)
    80006c8c:	0087b783          	ld	a5,8(a5)
    80006c90:	000780e7          	jalr	a5
    delete mutexHead;
    80006c94:	0284b503          	ld	a0,40(s1)
    80006c98:	00050863          	beqz	a0,80006ca8 <_ZN9BufferCPPD1Ev+0xec>
    80006c9c:	00053783          	ld	a5,0(a0)
    80006ca0:	0087b783          	ld	a5,8(a5)
    80006ca4:	000780e7          	jalr	a5
}
    80006ca8:	01813083          	ld	ra,24(sp)
    80006cac:	01013403          	ld	s0,16(sp)
    80006cb0:	00813483          	ld	s1,8(sp)
    80006cb4:	02010113          	addi	sp,sp,32
    80006cb8:	00008067          	ret

0000000080006cbc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006cbc:	fe010113          	addi	sp,sp,-32
    80006cc0:	00113c23          	sd	ra,24(sp)
    80006cc4:	00813823          	sd	s0,16(sp)
    80006cc8:	00913423          	sd	s1,8(sp)
    80006ccc:	01213023          	sd	s2,0(sp)
    80006cd0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006cd4:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006cd8:	00600493          	li	s1,6
    while (--i > 0) {
    80006cdc:	fff4849b          	addiw	s1,s1,-1
    80006ce0:	04905463          	blez	s1,80006d28 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006ce4:	00004517          	auipc	a0,0x4
    80006ce8:	95450513          	addi	a0,a0,-1708 # 8000a638 <CONSOLE_STATUS+0x628>
    80006cec:	00000097          	auipc	ra,0x0
    80006cf0:	908080e7          	jalr	-1784(ra) # 800065f4 <_Z11printStringPKc>
        printInt(sleep_time);
    80006cf4:	00000613          	li	a2,0
    80006cf8:	00a00593          	li	a1,10
    80006cfc:	0009051b          	sext.w	a0,s2
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	aa4080e7          	jalr	-1372(ra) # 800067a4 <_Z8printIntiii>
        printString(" !\n");
    80006d08:	00004517          	auipc	a0,0x4
    80006d0c:	93850513          	addi	a0,a0,-1736 # 8000a640 <CONSOLE_STATUS+0x630>
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	8e4080e7          	jalr	-1820(ra) # 800065f4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006d18:	00090513          	mv	a0,s2
    80006d1c:	ffffb097          	auipc	ra,0xffffb
    80006d20:	97c080e7          	jalr	-1668(ra) # 80001698 <time_sleep>
    while (--i > 0) {
    80006d24:	fb9ff06f          	j	80006cdc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006d28:	00a00793          	li	a5,10
    80006d2c:	02f95933          	divu	s2,s2,a5
    80006d30:	fff90913          	addi	s2,s2,-1
    80006d34:	00006797          	auipc	a5,0x6
    80006d38:	3d478793          	addi	a5,a5,980 # 8000d108 <_ZL8finished>
    80006d3c:	01278933          	add	s2,a5,s2
    80006d40:	00100793          	li	a5,1
    80006d44:	00f90023          	sb	a5,0(s2)
}
    80006d48:	01813083          	ld	ra,24(sp)
    80006d4c:	01013403          	ld	s0,16(sp)
    80006d50:	00813483          	ld	s1,8(sp)
    80006d54:	00013903          	ld	s2,0(sp)
    80006d58:	02010113          	addi	sp,sp,32
    80006d5c:	00008067          	ret

0000000080006d60 <_Z12testSleepingv>:

void testSleeping() {
    80006d60:	fc010113          	addi	sp,sp,-64
    80006d64:	02113c23          	sd	ra,56(sp)
    80006d68:	02813823          	sd	s0,48(sp)
    80006d6c:	02913423          	sd	s1,40(sp)
    80006d70:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006d74:	00a00793          	li	a5,10
    80006d78:	fcf43823          	sd	a5,-48(s0)
    80006d7c:	01400793          	li	a5,20
    80006d80:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006d84:	00000493          	li	s1,0
    80006d88:	02c0006f          	j	80006db4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006d8c:	00349793          	slli	a5,s1,0x3
    80006d90:	fd040613          	addi	a2,s0,-48
    80006d94:	00f60633          	add	a2,a2,a5
    80006d98:	00000597          	auipc	a1,0x0
    80006d9c:	f2458593          	addi	a1,a1,-220 # 80006cbc <_ZL9sleepyRunPv>
    80006da0:	fc040513          	addi	a0,s0,-64
    80006da4:	00f50533          	add	a0,a0,a5
    80006da8:	ffffb097          	auipc	ra,0xffffb
    80006dac:	804080e7          	jalr	-2044(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006db0:	0014849b          	addiw	s1,s1,1
    80006db4:	00100793          	li	a5,1
    80006db8:	fc97dae3          	bge	a5,s1,80006d8c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006dbc:	00006797          	auipc	a5,0x6
    80006dc0:	34c7c783          	lbu	a5,844(a5) # 8000d108 <_ZL8finished>
    80006dc4:	fe078ce3          	beqz	a5,80006dbc <_Z12testSleepingv+0x5c>
    80006dc8:	00006797          	auipc	a5,0x6
    80006dcc:	3417c783          	lbu	a5,833(a5) # 8000d109 <_ZL8finished+0x1>
    80006dd0:	fe0786e3          	beqz	a5,80006dbc <_Z12testSleepingv+0x5c>
}
    80006dd4:	03813083          	ld	ra,56(sp)
    80006dd8:	03013403          	ld	s0,48(sp)
    80006ddc:	02813483          	ld	s1,40(sp)
    80006de0:	04010113          	addi	sp,sp,64
    80006de4:	00008067          	ret

0000000080006de8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006de8:	fe010113          	addi	sp,sp,-32
    80006dec:	00113c23          	sd	ra,24(sp)
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00913423          	sd	s1,8(sp)
    80006df8:	01213023          	sd	s2,0(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006e04:	00100793          	li	a5,1
    80006e08:	02a7f863          	bgeu	a5,a0,80006e38 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006e0c:	00a00793          	li	a5,10
    80006e10:	02f577b3          	remu	a5,a0,a5
    80006e14:	02078e63          	beqz	a5,80006e50 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006e18:	fff48513          	addi	a0,s1,-1
    80006e1c:	00000097          	auipc	ra,0x0
    80006e20:	fcc080e7          	jalr	-52(ra) # 80006de8 <_ZL9fibonaccim>
    80006e24:	00050913          	mv	s2,a0
    80006e28:	ffe48513          	addi	a0,s1,-2
    80006e2c:	00000097          	auipc	ra,0x0
    80006e30:	fbc080e7          	jalr	-68(ra) # 80006de8 <_ZL9fibonaccim>
    80006e34:	00a90533          	add	a0,s2,a0
}
    80006e38:	01813083          	ld	ra,24(sp)
    80006e3c:	01013403          	ld	s0,16(sp)
    80006e40:	00813483          	ld	s1,8(sp)
    80006e44:	00013903          	ld	s2,0(sp)
    80006e48:	02010113          	addi	sp,sp,32
    80006e4c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006e50:	ffffb097          	auipc	ra,0xffffb
    80006e54:	828080e7          	jalr	-2008(ra) # 80001678 <thread_dispatch>
    80006e58:	fc1ff06f          	j	80006e18 <_ZL9fibonaccim+0x30>

0000000080006e5c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006e5c:	fe010113          	addi	sp,sp,-32
    80006e60:	00113c23          	sd	ra,24(sp)
    80006e64:	00813823          	sd	s0,16(sp)
    80006e68:	00913423          	sd	s1,8(sp)
    80006e6c:	01213023          	sd	s2,0(sp)
    80006e70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006e74:	00a00493          	li	s1,10
    80006e78:	0400006f          	j	80006eb8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006e7c:	00003517          	auipc	a0,0x3
    80006e80:	45c50513          	addi	a0,a0,1116 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80006e84:	fffff097          	auipc	ra,0xfffff
    80006e88:	770080e7          	jalr	1904(ra) # 800065f4 <_Z11printStringPKc>
    80006e8c:	00000613          	li	a2,0
    80006e90:	00a00593          	li	a1,10
    80006e94:	00048513          	mv	a0,s1
    80006e98:	00000097          	auipc	ra,0x0
    80006e9c:	90c080e7          	jalr	-1780(ra) # 800067a4 <_Z8printIntiii>
    80006ea0:	00003517          	auipc	a0,0x3
    80006ea4:	64850513          	addi	a0,a0,1608 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80006ea8:	fffff097          	auipc	ra,0xfffff
    80006eac:	74c080e7          	jalr	1868(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006eb0:	0014849b          	addiw	s1,s1,1
    80006eb4:	0ff4f493          	andi	s1,s1,255
    80006eb8:	00c00793          	li	a5,12
    80006ebc:	fc97f0e3          	bgeu	a5,s1,80006e7c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006ec0:	00003517          	auipc	a0,0x3
    80006ec4:	42050513          	addi	a0,a0,1056 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006ec8:	fffff097          	auipc	ra,0xfffff
    80006ecc:	72c080e7          	jalr	1836(ra) # 800065f4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006ed0:	00500313          	li	t1,5
    thread_dispatch();
    80006ed4:	ffffa097          	auipc	ra,0xffffa
    80006ed8:	7a4080e7          	jalr	1956(ra) # 80001678 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006edc:	01000513          	li	a0,16
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	f08080e7          	jalr	-248(ra) # 80006de8 <_ZL9fibonaccim>
    80006ee8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006eec:	00003517          	auipc	a0,0x3
    80006ef0:	40450513          	addi	a0,a0,1028 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    80006ef4:	fffff097          	auipc	ra,0xfffff
    80006ef8:	700080e7          	jalr	1792(ra) # 800065f4 <_Z11printStringPKc>
    80006efc:	00000613          	li	a2,0
    80006f00:	00a00593          	li	a1,10
    80006f04:	0009051b          	sext.w	a0,s2
    80006f08:	00000097          	auipc	ra,0x0
    80006f0c:	89c080e7          	jalr	-1892(ra) # 800067a4 <_Z8printIntiii>
    80006f10:	00003517          	auipc	a0,0x3
    80006f14:	5d850513          	addi	a0,a0,1496 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80006f18:	fffff097          	auipc	ra,0xfffff
    80006f1c:	6dc080e7          	jalr	1756(ra) # 800065f4 <_Z11printStringPKc>
    80006f20:	0400006f          	j	80006f60 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006f24:	00003517          	auipc	a0,0x3
    80006f28:	3b450513          	addi	a0,a0,948 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80006f2c:	fffff097          	auipc	ra,0xfffff
    80006f30:	6c8080e7          	jalr	1736(ra) # 800065f4 <_Z11printStringPKc>
    80006f34:	00000613          	li	a2,0
    80006f38:	00a00593          	li	a1,10
    80006f3c:	00048513          	mv	a0,s1
    80006f40:	00000097          	auipc	ra,0x0
    80006f44:	864080e7          	jalr	-1948(ra) # 800067a4 <_Z8printIntiii>
    80006f48:	00003517          	auipc	a0,0x3
    80006f4c:	5a050513          	addi	a0,a0,1440 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80006f50:	fffff097          	auipc	ra,0xfffff
    80006f54:	6a4080e7          	jalr	1700(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006f58:	0014849b          	addiw	s1,s1,1
    80006f5c:	0ff4f493          	andi	s1,s1,255
    80006f60:	00f00793          	li	a5,15
    80006f64:	fc97f0e3          	bgeu	a5,s1,80006f24 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006f68:	00003517          	auipc	a0,0x3
    80006f6c:	39850513          	addi	a0,a0,920 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80006f70:	fffff097          	auipc	ra,0xfffff
    80006f74:	684080e7          	jalr	1668(ra) # 800065f4 <_Z11printStringPKc>
    finishedD = true;
    80006f78:	00100793          	li	a5,1
    80006f7c:	00006717          	auipc	a4,0x6
    80006f80:	18f70723          	sb	a5,398(a4) # 8000d10a <_ZL9finishedD>
    thread_dispatch();
    80006f84:	ffffa097          	auipc	ra,0xffffa
    80006f88:	6f4080e7          	jalr	1780(ra) # 80001678 <thread_dispatch>
}
    80006f8c:	01813083          	ld	ra,24(sp)
    80006f90:	01013403          	ld	s0,16(sp)
    80006f94:	00813483          	ld	s1,8(sp)
    80006f98:	00013903          	ld	s2,0(sp)
    80006f9c:	02010113          	addi	sp,sp,32
    80006fa0:	00008067          	ret

0000000080006fa4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006fa4:	fe010113          	addi	sp,sp,-32
    80006fa8:	00113c23          	sd	ra,24(sp)
    80006fac:	00813823          	sd	s0,16(sp)
    80006fb0:	00913423          	sd	s1,8(sp)
    80006fb4:	01213023          	sd	s2,0(sp)
    80006fb8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006fbc:	00000493          	li	s1,0
    80006fc0:	0400006f          	j	80007000 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006fc4:	00003517          	auipc	a0,0x3
    80006fc8:	2e450513          	addi	a0,a0,740 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80006fcc:	fffff097          	auipc	ra,0xfffff
    80006fd0:	628080e7          	jalr	1576(ra) # 800065f4 <_Z11printStringPKc>
    80006fd4:	00000613          	li	a2,0
    80006fd8:	00a00593          	li	a1,10
    80006fdc:	00048513          	mv	a0,s1
    80006fe0:	fffff097          	auipc	ra,0xfffff
    80006fe4:	7c4080e7          	jalr	1988(ra) # 800067a4 <_Z8printIntiii>
    80006fe8:	00003517          	auipc	a0,0x3
    80006fec:	50050513          	addi	a0,a0,1280 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80006ff0:	fffff097          	auipc	ra,0xfffff
    80006ff4:	604080e7          	jalr	1540(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006ff8:	0014849b          	addiw	s1,s1,1
    80006ffc:	0ff4f493          	andi	s1,s1,255
    80007000:	00200793          	li	a5,2
    80007004:	fc97f0e3          	bgeu	a5,s1,80006fc4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80007008:	00003517          	auipc	a0,0x3
    8000700c:	2a850513          	addi	a0,a0,680 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80007010:	fffff097          	auipc	ra,0xfffff
    80007014:	5e4080e7          	jalr	1508(ra) # 800065f4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80007018:	00700313          	li	t1,7
    thread_dispatch();
    8000701c:	ffffa097          	auipc	ra,0xffffa
    80007020:	65c080e7          	jalr	1628(ra) # 80001678 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80007024:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80007028:	00003517          	auipc	a0,0x3
    8000702c:	29850513          	addi	a0,a0,664 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    80007030:	fffff097          	auipc	ra,0xfffff
    80007034:	5c4080e7          	jalr	1476(ra) # 800065f4 <_Z11printStringPKc>
    80007038:	00000613          	li	a2,0
    8000703c:	00a00593          	li	a1,10
    80007040:	0009051b          	sext.w	a0,s2
    80007044:	fffff097          	auipc	ra,0xfffff
    80007048:	760080e7          	jalr	1888(ra) # 800067a4 <_Z8printIntiii>
    8000704c:	00003517          	auipc	a0,0x3
    80007050:	49c50513          	addi	a0,a0,1180 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80007054:	fffff097          	auipc	ra,0xfffff
    80007058:	5a0080e7          	jalr	1440(ra) # 800065f4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000705c:	00c00513          	li	a0,12
    80007060:	00000097          	auipc	ra,0x0
    80007064:	d88080e7          	jalr	-632(ra) # 80006de8 <_ZL9fibonaccim>
    80007068:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000706c:	00003517          	auipc	a0,0x3
    80007070:	25c50513          	addi	a0,a0,604 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80007074:	fffff097          	auipc	ra,0xfffff
    80007078:	580080e7          	jalr	1408(ra) # 800065f4 <_Z11printStringPKc>
    8000707c:	00000613          	li	a2,0
    80007080:	00a00593          	li	a1,10
    80007084:	0009051b          	sext.w	a0,s2
    80007088:	fffff097          	auipc	ra,0xfffff
    8000708c:	71c080e7          	jalr	1820(ra) # 800067a4 <_Z8printIntiii>
    80007090:	00003517          	auipc	a0,0x3
    80007094:	45850513          	addi	a0,a0,1112 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80007098:	fffff097          	auipc	ra,0xfffff
    8000709c:	55c080e7          	jalr	1372(ra) # 800065f4 <_Z11printStringPKc>
    800070a0:	0400006f          	j	800070e0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800070a4:	00003517          	auipc	a0,0x3
    800070a8:	20450513          	addi	a0,a0,516 # 8000a2a8 <CONSOLE_STATUS+0x298>
    800070ac:	fffff097          	auipc	ra,0xfffff
    800070b0:	548080e7          	jalr	1352(ra) # 800065f4 <_Z11printStringPKc>
    800070b4:	00000613          	li	a2,0
    800070b8:	00a00593          	li	a1,10
    800070bc:	00048513          	mv	a0,s1
    800070c0:	fffff097          	auipc	ra,0xfffff
    800070c4:	6e4080e7          	jalr	1764(ra) # 800067a4 <_Z8printIntiii>
    800070c8:	00003517          	auipc	a0,0x3
    800070cc:	42050513          	addi	a0,a0,1056 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800070d0:	fffff097          	auipc	ra,0xfffff
    800070d4:	524080e7          	jalr	1316(ra) # 800065f4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800070d8:	0014849b          	addiw	s1,s1,1
    800070dc:	0ff4f493          	andi	s1,s1,255
    800070e0:	00500793          	li	a5,5
    800070e4:	fc97f0e3          	bgeu	a5,s1,800070a4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800070e8:	00003517          	auipc	a0,0x3
    800070ec:	19850513          	addi	a0,a0,408 # 8000a280 <CONSOLE_STATUS+0x270>
    800070f0:	fffff097          	auipc	ra,0xfffff
    800070f4:	504080e7          	jalr	1284(ra) # 800065f4 <_Z11printStringPKc>
    finishedC = true;
    800070f8:	00100793          	li	a5,1
    800070fc:	00006717          	auipc	a4,0x6
    80007100:	00f707a3          	sb	a5,15(a4) # 8000d10b <_ZL9finishedC>
    thread_dispatch();
    80007104:	ffffa097          	auipc	ra,0xffffa
    80007108:	574080e7          	jalr	1396(ra) # 80001678 <thread_dispatch>
}
    8000710c:	01813083          	ld	ra,24(sp)
    80007110:	01013403          	ld	s0,16(sp)
    80007114:	00813483          	ld	s1,8(sp)
    80007118:	00013903          	ld	s2,0(sp)
    8000711c:	02010113          	addi	sp,sp,32
    80007120:	00008067          	ret

0000000080007124 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80007124:	fe010113          	addi	sp,sp,-32
    80007128:	00113c23          	sd	ra,24(sp)
    8000712c:	00813823          	sd	s0,16(sp)
    80007130:	00913423          	sd	s1,8(sp)
    80007134:	01213023          	sd	s2,0(sp)
    80007138:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000713c:	00000913          	li	s2,0
    80007140:	0400006f          	j	80007180 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80007144:	ffffa097          	auipc	ra,0xffffa
    80007148:	534080e7          	jalr	1332(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000714c:	00148493          	addi	s1,s1,1
    80007150:	000027b7          	lui	a5,0x2
    80007154:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007158:	0097ee63          	bltu	a5,s1,80007174 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000715c:	00000713          	li	a4,0
    80007160:	000077b7          	lui	a5,0x7
    80007164:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80007168:	fce7eee3          	bltu	a5,a4,80007144 <_ZL11workerBodyBPv+0x20>
    8000716c:	00170713          	addi	a4,a4,1
    80007170:	ff1ff06f          	j	80007160 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80007174:	00a00793          	li	a5,10
    80007178:	04f90663          	beq	s2,a5,800071c4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000717c:	00190913          	addi	s2,s2,1
    80007180:	00f00793          	li	a5,15
    80007184:	0527e463          	bltu	a5,s2,800071cc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80007188:	00003517          	auipc	a0,0x3
    8000718c:	10850513          	addi	a0,a0,264 # 8000a290 <CONSOLE_STATUS+0x280>
    80007190:	fffff097          	auipc	ra,0xfffff
    80007194:	464080e7          	jalr	1124(ra) # 800065f4 <_Z11printStringPKc>
    80007198:	00000613          	li	a2,0
    8000719c:	00a00593          	li	a1,10
    800071a0:	0009051b          	sext.w	a0,s2
    800071a4:	fffff097          	auipc	ra,0xfffff
    800071a8:	600080e7          	jalr	1536(ra) # 800067a4 <_Z8printIntiii>
    800071ac:	00003517          	auipc	a0,0x3
    800071b0:	33c50513          	addi	a0,a0,828 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800071b4:	fffff097          	auipc	ra,0xfffff
    800071b8:	440080e7          	jalr	1088(ra) # 800065f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800071bc:	00000493          	li	s1,0
    800071c0:	f91ff06f          	j	80007150 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800071c4:	14102ff3          	csrr	t6,sepc
    800071c8:	fb5ff06f          	j	8000717c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800071cc:	00003517          	auipc	a0,0x3
    800071d0:	0cc50513          	addi	a0,a0,204 # 8000a298 <CONSOLE_STATUS+0x288>
    800071d4:	fffff097          	auipc	ra,0xfffff
    800071d8:	420080e7          	jalr	1056(ra) # 800065f4 <_Z11printStringPKc>
    finishedB = true;
    800071dc:	00100793          	li	a5,1
    800071e0:	00006717          	auipc	a4,0x6
    800071e4:	f2f70623          	sb	a5,-212(a4) # 8000d10c <_ZL9finishedB>
    thread_dispatch();
    800071e8:	ffffa097          	auipc	ra,0xffffa
    800071ec:	490080e7          	jalr	1168(ra) # 80001678 <thread_dispatch>
}
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	01013403          	ld	s0,16(sp)
    800071f8:	00813483          	ld	s1,8(sp)
    800071fc:	00013903          	ld	s2,0(sp)
    80007200:	02010113          	addi	sp,sp,32
    80007204:	00008067          	ret

0000000080007208 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80007208:	fe010113          	addi	sp,sp,-32
    8000720c:	00113c23          	sd	ra,24(sp)
    80007210:	00813823          	sd	s0,16(sp)
    80007214:	00913423          	sd	s1,8(sp)
    80007218:	01213023          	sd	s2,0(sp)
    8000721c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80007220:	00000913          	li	s2,0
    80007224:	0380006f          	j	8000725c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80007228:	ffffa097          	auipc	ra,0xffffa
    8000722c:	450080e7          	jalr	1104(ra) # 80001678 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80007230:	00148493          	addi	s1,s1,1
    80007234:	000027b7          	lui	a5,0x2
    80007238:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000723c:	0097ee63          	bltu	a5,s1,80007258 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80007240:	00000713          	li	a4,0
    80007244:	000077b7          	lui	a5,0x7
    80007248:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000724c:	fce7eee3          	bltu	a5,a4,80007228 <_ZL11workerBodyAPv+0x20>
    80007250:	00170713          	addi	a4,a4,1
    80007254:	ff1ff06f          	j	80007244 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80007258:	00190913          	addi	s2,s2,1
    8000725c:	00900793          	li	a5,9
    80007260:	0527e063          	bltu	a5,s2,800072a0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80007264:	00003517          	auipc	a0,0x3
    80007268:	01450513          	addi	a0,a0,20 # 8000a278 <CONSOLE_STATUS+0x268>
    8000726c:	fffff097          	auipc	ra,0xfffff
    80007270:	388080e7          	jalr	904(ra) # 800065f4 <_Z11printStringPKc>
    80007274:	00000613          	li	a2,0
    80007278:	00a00593          	li	a1,10
    8000727c:	0009051b          	sext.w	a0,s2
    80007280:	fffff097          	auipc	ra,0xfffff
    80007284:	524080e7          	jalr	1316(ra) # 800067a4 <_Z8printIntiii>
    80007288:	00003517          	auipc	a0,0x3
    8000728c:	26050513          	addi	a0,a0,608 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80007290:	fffff097          	auipc	ra,0xfffff
    80007294:	364080e7          	jalr	868(ra) # 800065f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80007298:	00000493          	li	s1,0
    8000729c:	f99ff06f          	j	80007234 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800072a0:	00003517          	auipc	a0,0x3
    800072a4:	fe050513          	addi	a0,a0,-32 # 8000a280 <CONSOLE_STATUS+0x270>
    800072a8:	fffff097          	auipc	ra,0xfffff
    800072ac:	34c080e7          	jalr	844(ra) # 800065f4 <_Z11printStringPKc>
    finishedA = true;
    800072b0:	00100793          	li	a5,1
    800072b4:	00006717          	auipc	a4,0x6
    800072b8:	e4f70ca3          	sb	a5,-423(a4) # 8000d10d <_ZL9finishedA>
}
    800072bc:	01813083          	ld	ra,24(sp)
    800072c0:	01013403          	ld	s0,16(sp)
    800072c4:	00813483          	ld	s1,8(sp)
    800072c8:	00013903          	ld	s2,0(sp)
    800072cc:	02010113          	addi	sp,sp,32
    800072d0:	00008067          	ret

00000000800072d4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800072d4:	fd010113          	addi	sp,sp,-48
    800072d8:	02113423          	sd	ra,40(sp)
    800072dc:	02813023          	sd	s0,32(sp)
    800072e0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800072e4:	00000613          	li	a2,0
    800072e8:	00000597          	auipc	a1,0x0
    800072ec:	f2058593          	addi	a1,a1,-224 # 80007208 <_ZL11workerBodyAPv>
    800072f0:	fd040513          	addi	a0,s0,-48
    800072f4:	ffffa097          	auipc	ra,0xffffa
    800072f8:	2b8080e7          	jalr	696(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    800072fc:	00003517          	auipc	a0,0x3
    80007300:	01450513          	addi	a0,a0,20 # 8000a310 <CONSOLE_STATUS+0x300>
    80007304:	fffff097          	auipc	ra,0xfffff
    80007308:	2f0080e7          	jalr	752(ra) # 800065f4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000730c:	00000613          	li	a2,0
    80007310:	00000597          	auipc	a1,0x0
    80007314:	e1458593          	addi	a1,a1,-492 # 80007124 <_ZL11workerBodyBPv>
    80007318:	fd840513          	addi	a0,s0,-40
    8000731c:	ffffa097          	auipc	ra,0xffffa
    80007320:	290080e7          	jalr	656(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80007324:	00003517          	auipc	a0,0x3
    80007328:	00450513          	addi	a0,a0,4 # 8000a328 <CONSOLE_STATUS+0x318>
    8000732c:	fffff097          	auipc	ra,0xfffff
    80007330:	2c8080e7          	jalr	712(ra) # 800065f4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80007334:	00000613          	li	a2,0
    80007338:	00000597          	auipc	a1,0x0
    8000733c:	c6c58593          	addi	a1,a1,-916 # 80006fa4 <_ZL11workerBodyCPv>
    80007340:	fe040513          	addi	a0,s0,-32
    80007344:	ffffa097          	auipc	ra,0xffffa
    80007348:	268080e7          	jalr	616(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    8000734c:	00003517          	auipc	a0,0x3
    80007350:	ff450513          	addi	a0,a0,-12 # 8000a340 <CONSOLE_STATUS+0x330>
    80007354:	fffff097          	auipc	ra,0xfffff
    80007358:	2a0080e7          	jalr	672(ra) # 800065f4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000735c:	00000613          	li	a2,0
    80007360:	00000597          	auipc	a1,0x0
    80007364:	afc58593          	addi	a1,a1,-1284 # 80006e5c <_ZL11workerBodyDPv>
    80007368:	fe840513          	addi	a0,s0,-24
    8000736c:	ffffa097          	auipc	ra,0xffffa
    80007370:	240080e7          	jalr	576(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80007374:	00003517          	auipc	a0,0x3
    80007378:	fe450513          	addi	a0,a0,-28 # 8000a358 <CONSOLE_STATUS+0x348>
    8000737c:	fffff097          	auipc	ra,0xfffff
    80007380:	278080e7          	jalr	632(ra) # 800065f4 <_Z11printStringPKc>
    80007384:	00c0006f          	j	80007390 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80007388:	ffffa097          	auipc	ra,0xffffa
    8000738c:	2f0080e7          	jalr	752(ra) # 80001678 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80007390:	00006797          	auipc	a5,0x6
    80007394:	d7d7c783          	lbu	a5,-643(a5) # 8000d10d <_ZL9finishedA>
    80007398:	fe0788e3          	beqz	a5,80007388 <_Z16System_Mode_testv+0xb4>
    8000739c:	00006797          	auipc	a5,0x6
    800073a0:	d707c783          	lbu	a5,-656(a5) # 8000d10c <_ZL9finishedB>
    800073a4:	fe0782e3          	beqz	a5,80007388 <_Z16System_Mode_testv+0xb4>
    800073a8:	00006797          	auipc	a5,0x6
    800073ac:	d637c783          	lbu	a5,-669(a5) # 8000d10b <_ZL9finishedC>
    800073b0:	fc078ce3          	beqz	a5,80007388 <_Z16System_Mode_testv+0xb4>
    800073b4:	00006797          	auipc	a5,0x6
    800073b8:	d567c783          	lbu	a5,-682(a5) # 8000d10a <_ZL9finishedD>
    800073bc:	fc0786e3          	beqz	a5,80007388 <_Z16System_Mode_testv+0xb4>
    }

}
    800073c0:	02813083          	ld	ra,40(sp)
    800073c4:	02013403          	ld	s0,32(sp)
    800073c8:	03010113          	addi	sp,sp,48
    800073cc:	00008067          	ret

00000000800073d0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800073d0:	fe010113          	addi	sp,sp,-32
    800073d4:	00113c23          	sd	ra,24(sp)
    800073d8:	00813823          	sd	s0,16(sp)
    800073dc:	00913423          	sd	s1,8(sp)
    800073e0:	01213023          	sd	s2,0(sp)
    800073e4:	02010413          	addi	s0,sp,32
    800073e8:	00050493          	mv	s1,a0
    800073ec:	00058913          	mv	s2,a1
    800073f0:	0015879b          	addiw	a5,a1,1
    800073f4:	0007851b          	sext.w	a0,a5
    800073f8:	00f4a023          	sw	a5,0(s1)
    800073fc:	0004a823          	sw	zero,16(s1)
    80007400:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80007404:	00251513          	slli	a0,a0,0x2
    80007408:	ffffa097          	auipc	ra,0xffffa
    8000740c:	14c080e7          	jalr	332(ra) # 80001554 <mem_alloc>
    80007410:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80007414:	00000593          	li	a1,0
    80007418:	02048513          	addi	a0,s1,32
    8000741c:	ffffa097          	auipc	ra,0xffffa
    80007420:	2a4080e7          	jalr	676(ra) # 800016c0 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80007424:	00090593          	mv	a1,s2
    80007428:	01848513          	addi	a0,s1,24
    8000742c:	ffffa097          	auipc	ra,0xffffa
    80007430:	294080e7          	jalr	660(ra) # 800016c0 <sem_open>
    sem_open(&mutexHead, 1);
    80007434:	00100593          	li	a1,1
    80007438:	02848513          	addi	a0,s1,40
    8000743c:	ffffa097          	auipc	ra,0xffffa
    80007440:	284080e7          	jalr	644(ra) # 800016c0 <sem_open>
    sem_open(&mutexTail, 1);
    80007444:	00100593          	li	a1,1
    80007448:	03048513          	addi	a0,s1,48
    8000744c:	ffffa097          	auipc	ra,0xffffa
    80007450:	274080e7          	jalr	628(ra) # 800016c0 <sem_open>
}
    80007454:	01813083          	ld	ra,24(sp)
    80007458:	01013403          	ld	s0,16(sp)
    8000745c:	00813483          	ld	s1,8(sp)
    80007460:	00013903          	ld	s2,0(sp)
    80007464:	02010113          	addi	sp,sp,32
    80007468:	00008067          	ret

000000008000746c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000746c:	fe010113          	addi	sp,sp,-32
    80007470:	00113c23          	sd	ra,24(sp)
    80007474:	00813823          	sd	s0,16(sp)
    80007478:	00913423          	sd	s1,8(sp)
    8000747c:	01213023          	sd	s2,0(sp)
    80007480:	02010413          	addi	s0,sp,32
    80007484:	00050493          	mv	s1,a0
    80007488:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000748c:	01853503          	ld	a0,24(a0)
    80007490:	ffffa097          	auipc	ra,0xffffa
    80007494:	290080e7          	jalr	656(ra) # 80001720 <sem_wait>

    sem_wait(mutexTail);
    80007498:	0304b503          	ld	a0,48(s1)
    8000749c:	ffffa097          	auipc	ra,0xffffa
    800074a0:	284080e7          	jalr	644(ra) # 80001720 <sem_wait>
    buffer[tail] = val;
    800074a4:	0084b783          	ld	a5,8(s1)
    800074a8:	0144a703          	lw	a4,20(s1)
    800074ac:	00271713          	slli	a4,a4,0x2
    800074b0:	00e787b3          	add	a5,a5,a4
    800074b4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800074b8:	0144a783          	lw	a5,20(s1)
    800074bc:	0017879b          	addiw	a5,a5,1
    800074c0:	0004a703          	lw	a4,0(s1)
    800074c4:	02e7e7bb          	remw	a5,a5,a4
    800074c8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800074cc:	0304b503          	ld	a0,48(s1)
    800074d0:	ffffa097          	auipc	ra,0xffffa
    800074d4:	278080e7          	jalr	632(ra) # 80001748 <sem_signal>

    sem_signal(itemAvailable);
    800074d8:	0204b503          	ld	a0,32(s1)
    800074dc:	ffffa097          	auipc	ra,0xffffa
    800074e0:	26c080e7          	jalr	620(ra) # 80001748 <sem_signal>

}
    800074e4:	01813083          	ld	ra,24(sp)
    800074e8:	01013403          	ld	s0,16(sp)
    800074ec:	00813483          	ld	s1,8(sp)
    800074f0:	00013903          	ld	s2,0(sp)
    800074f4:	02010113          	addi	sp,sp,32
    800074f8:	00008067          	ret

00000000800074fc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800074fc:	fe010113          	addi	sp,sp,-32
    80007500:	00113c23          	sd	ra,24(sp)
    80007504:	00813823          	sd	s0,16(sp)
    80007508:	00913423          	sd	s1,8(sp)
    8000750c:	01213023          	sd	s2,0(sp)
    80007510:	02010413          	addi	s0,sp,32
    80007514:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80007518:	02053503          	ld	a0,32(a0)
    8000751c:	ffffa097          	auipc	ra,0xffffa
    80007520:	204080e7          	jalr	516(ra) # 80001720 <sem_wait>

    sem_wait(mutexHead);
    80007524:	0284b503          	ld	a0,40(s1)
    80007528:	ffffa097          	auipc	ra,0xffffa
    8000752c:	1f8080e7          	jalr	504(ra) # 80001720 <sem_wait>

    int ret = buffer[head];
    80007530:	0084b703          	ld	a4,8(s1)
    80007534:	0104a783          	lw	a5,16(s1)
    80007538:	00279693          	slli	a3,a5,0x2
    8000753c:	00d70733          	add	a4,a4,a3
    80007540:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80007544:	0017879b          	addiw	a5,a5,1
    80007548:	0004a703          	lw	a4,0(s1)
    8000754c:	02e7e7bb          	remw	a5,a5,a4
    80007550:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80007554:	0284b503          	ld	a0,40(s1)
    80007558:	ffffa097          	auipc	ra,0xffffa
    8000755c:	1f0080e7          	jalr	496(ra) # 80001748 <sem_signal>

    sem_signal(spaceAvailable);
    80007560:	0184b503          	ld	a0,24(s1)
    80007564:	ffffa097          	auipc	ra,0xffffa
    80007568:	1e4080e7          	jalr	484(ra) # 80001748 <sem_signal>

    return ret;
}
    8000756c:	00090513          	mv	a0,s2
    80007570:	01813083          	ld	ra,24(sp)
    80007574:	01013403          	ld	s0,16(sp)
    80007578:	00813483          	ld	s1,8(sp)
    8000757c:	00013903          	ld	s2,0(sp)
    80007580:	02010113          	addi	sp,sp,32
    80007584:	00008067          	ret

0000000080007588 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80007588:	fe010113          	addi	sp,sp,-32
    8000758c:	00113c23          	sd	ra,24(sp)
    80007590:	00813823          	sd	s0,16(sp)
    80007594:	00913423          	sd	s1,8(sp)
    80007598:	01213023          	sd	s2,0(sp)
    8000759c:	02010413          	addi	s0,sp,32
    800075a0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800075a4:	02853503          	ld	a0,40(a0)
    800075a8:	ffffa097          	auipc	ra,0xffffa
    800075ac:	178080e7          	jalr	376(ra) # 80001720 <sem_wait>
    sem_wait(mutexTail);
    800075b0:	0304b503          	ld	a0,48(s1)
    800075b4:	ffffa097          	auipc	ra,0xffffa
    800075b8:	16c080e7          	jalr	364(ra) # 80001720 <sem_wait>

    if (tail >= head) {
    800075bc:	0144a783          	lw	a5,20(s1)
    800075c0:	0104a903          	lw	s2,16(s1)
    800075c4:	0327ce63          	blt	a5,s2,80007600 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800075c8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800075cc:	0304b503          	ld	a0,48(s1)
    800075d0:	ffffa097          	auipc	ra,0xffffa
    800075d4:	178080e7          	jalr	376(ra) # 80001748 <sem_signal>
    sem_signal(mutexHead);
    800075d8:	0284b503          	ld	a0,40(s1)
    800075dc:	ffffa097          	auipc	ra,0xffffa
    800075e0:	16c080e7          	jalr	364(ra) # 80001748 <sem_signal>

    return ret;
}
    800075e4:	00090513          	mv	a0,s2
    800075e8:	01813083          	ld	ra,24(sp)
    800075ec:	01013403          	ld	s0,16(sp)
    800075f0:	00813483          	ld	s1,8(sp)
    800075f4:	00013903          	ld	s2,0(sp)
    800075f8:	02010113          	addi	sp,sp,32
    800075fc:	00008067          	ret
        ret = cap - head + tail;
    80007600:	0004a703          	lw	a4,0(s1)
    80007604:	4127093b          	subw	s2,a4,s2
    80007608:	00f9093b          	addw	s2,s2,a5
    8000760c:	fc1ff06f          	j	800075cc <_ZN6Buffer6getCntEv+0x44>

0000000080007610 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007610:	fe010113          	addi	sp,sp,-32
    80007614:	00113c23          	sd	ra,24(sp)
    80007618:	00813823          	sd	s0,16(sp)
    8000761c:	00913423          	sd	s1,8(sp)
    80007620:	02010413          	addi	s0,sp,32
    80007624:	00050493          	mv	s1,a0
    putc('\n');
    80007628:	00a00513          	li	a0,10
    8000762c:	ffffa097          	auipc	ra,0xffffa
    80007630:	1a0080e7          	jalr	416(ra) # 800017cc <putc>
    printString("Buffer deleted!\n");
    80007634:	00003517          	auipc	a0,0x3
    80007638:	fec50513          	addi	a0,a0,-20 # 8000a620 <CONSOLE_STATUS+0x610>
    8000763c:	fffff097          	auipc	ra,0xfffff
    80007640:	fb8080e7          	jalr	-72(ra) # 800065f4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007644:	00048513          	mv	a0,s1
    80007648:	00000097          	auipc	ra,0x0
    8000764c:	f40080e7          	jalr	-192(ra) # 80007588 <_ZN6Buffer6getCntEv>
    80007650:	02a05c63          	blez	a0,80007688 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007654:	0084b783          	ld	a5,8(s1)
    80007658:	0104a703          	lw	a4,16(s1)
    8000765c:	00271713          	slli	a4,a4,0x2
    80007660:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007664:	0007c503          	lbu	a0,0(a5)
    80007668:	ffffa097          	auipc	ra,0xffffa
    8000766c:	164080e7          	jalr	356(ra) # 800017cc <putc>
        head = (head + 1) % cap;
    80007670:	0104a783          	lw	a5,16(s1)
    80007674:	0017879b          	addiw	a5,a5,1
    80007678:	0004a703          	lw	a4,0(s1)
    8000767c:	02e7e7bb          	remw	a5,a5,a4
    80007680:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007684:	fc1ff06f          	j	80007644 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007688:	02100513          	li	a0,33
    8000768c:	ffffa097          	auipc	ra,0xffffa
    80007690:	140080e7          	jalr	320(ra) # 800017cc <putc>
    putc('\n');
    80007694:	00a00513          	li	a0,10
    80007698:	ffffa097          	auipc	ra,0xffffa
    8000769c:	134080e7          	jalr	308(ra) # 800017cc <putc>
    mem_free(buffer);
    800076a0:	0084b503          	ld	a0,8(s1)
    800076a4:	ffffa097          	auipc	ra,0xffffa
    800076a8:	edc080e7          	jalr	-292(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    800076ac:	0204b503          	ld	a0,32(s1)
    800076b0:	ffffa097          	auipc	ra,0xffffa
    800076b4:	048080e7          	jalr	72(ra) # 800016f8 <sem_close>
    sem_close(spaceAvailable);
    800076b8:	0184b503          	ld	a0,24(s1)
    800076bc:	ffffa097          	auipc	ra,0xffffa
    800076c0:	03c080e7          	jalr	60(ra) # 800016f8 <sem_close>
    sem_close(mutexTail);
    800076c4:	0304b503          	ld	a0,48(s1)
    800076c8:	ffffa097          	auipc	ra,0xffffa
    800076cc:	030080e7          	jalr	48(ra) # 800016f8 <sem_close>
    sem_close(mutexHead);
    800076d0:	0284b503          	ld	a0,40(s1)
    800076d4:	ffffa097          	auipc	ra,0xffffa
    800076d8:	024080e7          	jalr	36(ra) # 800016f8 <sem_close>
}
    800076dc:	01813083          	ld	ra,24(sp)
    800076e0:	01013403          	ld	s0,16(sp)
    800076e4:	00813483          	ld	s1,8(sp)
    800076e8:	02010113          	addi	sp,sp,32
    800076ec:	00008067          	ret

00000000800076f0 <start>:
    800076f0:	ff010113          	addi	sp,sp,-16
    800076f4:	00813423          	sd	s0,8(sp)
    800076f8:	01010413          	addi	s0,sp,16
    800076fc:	300027f3          	csrr	a5,mstatus
    80007700:	ffffe737          	lui	a4,0xffffe
    80007704:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff048f>
    80007708:	00e7f7b3          	and	a5,a5,a4
    8000770c:	00001737          	lui	a4,0x1
    80007710:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007714:	00e7e7b3          	or	a5,a5,a4
    80007718:	30079073          	csrw	mstatus,a5
    8000771c:	00000797          	auipc	a5,0x0
    80007720:	16078793          	addi	a5,a5,352 # 8000787c <system_main>
    80007724:	34179073          	csrw	mepc,a5
    80007728:	00000793          	li	a5,0
    8000772c:	18079073          	csrw	satp,a5
    80007730:	000107b7          	lui	a5,0x10
    80007734:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007738:	30279073          	csrw	medeleg,a5
    8000773c:	30379073          	csrw	mideleg,a5
    80007740:	104027f3          	csrr	a5,sie
    80007744:	2227e793          	ori	a5,a5,546
    80007748:	10479073          	csrw	sie,a5
    8000774c:	fff00793          	li	a5,-1
    80007750:	00a7d793          	srli	a5,a5,0xa
    80007754:	3b079073          	csrw	pmpaddr0,a5
    80007758:	00f00793          	li	a5,15
    8000775c:	3a079073          	csrw	pmpcfg0,a5
    80007760:	f14027f3          	csrr	a5,mhartid
    80007764:	0200c737          	lui	a4,0x200c
    80007768:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000776c:	0007869b          	sext.w	a3,a5
    80007770:	00269713          	slli	a4,a3,0x2
    80007774:	000f4637          	lui	a2,0xf4
    80007778:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000777c:	00d70733          	add	a4,a4,a3
    80007780:	0037979b          	slliw	a5,a5,0x3
    80007784:	020046b7          	lui	a3,0x2004
    80007788:	00d787b3          	add	a5,a5,a3
    8000778c:	00c585b3          	add	a1,a1,a2
    80007790:	00371693          	slli	a3,a4,0x3
    80007794:	00006717          	auipc	a4,0x6
    80007798:	97c70713          	addi	a4,a4,-1668 # 8000d110 <timer_scratch>
    8000779c:	00b7b023          	sd	a1,0(a5)
    800077a0:	00d70733          	add	a4,a4,a3
    800077a4:	00f73c23          	sd	a5,24(a4)
    800077a8:	02c73023          	sd	a2,32(a4)
    800077ac:	34071073          	csrw	mscratch,a4
    800077b0:	00000797          	auipc	a5,0x0
    800077b4:	6e078793          	addi	a5,a5,1760 # 80007e90 <timervec>
    800077b8:	30579073          	csrw	mtvec,a5
    800077bc:	300027f3          	csrr	a5,mstatus
    800077c0:	0087e793          	ori	a5,a5,8
    800077c4:	30079073          	csrw	mstatus,a5
    800077c8:	304027f3          	csrr	a5,mie
    800077cc:	0807e793          	ori	a5,a5,128
    800077d0:	30479073          	csrw	mie,a5
    800077d4:	f14027f3          	csrr	a5,mhartid
    800077d8:	0007879b          	sext.w	a5,a5
    800077dc:	00078213          	mv	tp,a5
    800077e0:	30200073          	mret
    800077e4:	00813403          	ld	s0,8(sp)
    800077e8:	01010113          	addi	sp,sp,16
    800077ec:	00008067          	ret

00000000800077f0 <timerinit>:
    800077f0:	ff010113          	addi	sp,sp,-16
    800077f4:	00813423          	sd	s0,8(sp)
    800077f8:	01010413          	addi	s0,sp,16
    800077fc:	f14027f3          	csrr	a5,mhartid
    80007800:	0200c737          	lui	a4,0x200c
    80007804:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007808:	0007869b          	sext.w	a3,a5
    8000780c:	00269713          	slli	a4,a3,0x2
    80007810:	000f4637          	lui	a2,0xf4
    80007814:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007818:	00d70733          	add	a4,a4,a3
    8000781c:	0037979b          	slliw	a5,a5,0x3
    80007820:	020046b7          	lui	a3,0x2004
    80007824:	00d787b3          	add	a5,a5,a3
    80007828:	00c585b3          	add	a1,a1,a2
    8000782c:	00371693          	slli	a3,a4,0x3
    80007830:	00006717          	auipc	a4,0x6
    80007834:	8e070713          	addi	a4,a4,-1824 # 8000d110 <timer_scratch>
    80007838:	00b7b023          	sd	a1,0(a5)
    8000783c:	00d70733          	add	a4,a4,a3
    80007840:	00f73c23          	sd	a5,24(a4)
    80007844:	02c73023          	sd	a2,32(a4)
    80007848:	34071073          	csrw	mscratch,a4
    8000784c:	00000797          	auipc	a5,0x0
    80007850:	64478793          	addi	a5,a5,1604 # 80007e90 <timervec>
    80007854:	30579073          	csrw	mtvec,a5
    80007858:	300027f3          	csrr	a5,mstatus
    8000785c:	0087e793          	ori	a5,a5,8
    80007860:	30079073          	csrw	mstatus,a5
    80007864:	304027f3          	csrr	a5,mie
    80007868:	0807e793          	ori	a5,a5,128
    8000786c:	30479073          	csrw	mie,a5
    80007870:	00813403          	ld	s0,8(sp)
    80007874:	01010113          	addi	sp,sp,16
    80007878:	00008067          	ret

000000008000787c <system_main>:
    8000787c:	fe010113          	addi	sp,sp,-32
    80007880:	00813823          	sd	s0,16(sp)
    80007884:	00913423          	sd	s1,8(sp)
    80007888:	00113c23          	sd	ra,24(sp)
    8000788c:	02010413          	addi	s0,sp,32
    80007890:	00000097          	auipc	ra,0x0
    80007894:	0c4080e7          	jalr	196(ra) # 80007954 <cpuid>
    80007898:	00005497          	auipc	s1,0x5
    8000789c:	54848493          	addi	s1,s1,1352 # 8000cde0 <started>
    800078a0:	02050263          	beqz	a0,800078c4 <system_main+0x48>
    800078a4:	0004a783          	lw	a5,0(s1)
    800078a8:	0007879b          	sext.w	a5,a5
    800078ac:	fe078ce3          	beqz	a5,800078a4 <system_main+0x28>
    800078b0:	0ff0000f          	fence
    800078b4:	00003517          	auipc	a0,0x3
    800078b8:	dc450513          	addi	a0,a0,-572 # 8000a678 <CONSOLE_STATUS+0x668>
    800078bc:	00001097          	auipc	ra,0x1
    800078c0:	a70080e7          	jalr	-1424(ra) # 8000832c <panic>
    800078c4:	00001097          	auipc	ra,0x1
    800078c8:	9c4080e7          	jalr	-1596(ra) # 80008288 <consoleinit>
    800078cc:	00001097          	auipc	ra,0x1
    800078d0:	150080e7          	jalr	336(ra) # 80008a1c <printfinit>
    800078d4:	00003517          	auipc	a0,0x3
    800078d8:	c1450513          	addi	a0,a0,-1004 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800078dc:	00001097          	auipc	ra,0x1
    800078e0:	aac080e7          	jalr	-1364(ra) # 80008388 <__printf>
    800078e4:	00003517          	auipc	a0,0x3
    800078e8:	d6450513          	addi	a0,a0,-668 # 8000a648 <CONSOLE_STATUS+0x638>
    800078ec:	00001097          	auipc	ra,0x1
    800078f0:	a9c080e7          	jalr	-1380(ra) # 80008388 <__printf>
    800078f4:	00003517          	auipc	a0,0x3
    800078f8:	bf450513          	addi	a0,a0,-1036 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800078fc:	00001097          	auipc	ra,0x1
    80007900:	a8c080e7          	jalr	-1396(ra) # 80008388 <__printf>
    80007904:	00001097          	auipc	ra,0x1
    80007908:	4a4080e7          	jalr	1188(ra) # 80008da8 <kinit>
    8000790c:	00000097          	auipc	ra,0x0
    80007910:	148080e7          	jalr	328(ra) # 80007a54 <trapinit>
    80007914:	00000097          	auipc	ra,0x0
    80007918:	16c080e7          	jalr	364(ra) # 80007a80 <trapinithart>
    8000791c:	00000097          	auipc	ra,0x0
    80007920:	5b4080e7          	jalr	1460(ra) # 80007ed0 <plicinit>
    80007924:	00000097          	auipc	ra,0x0
    80007928:	5d4080e7          	jalr	1492(ra) # 80007ef8 <plicinithart>
    8000792c:	00000097          	auipc	ra,0x0
    80007930:	078080e7          	jalr	120(ra) # 800079a4 <userinit>
    80007934:	0ff0000f          	fence
    80007938:	00100793          	li	a5,1
    8000793c:	00003517          	auipc	a0,0x3
    80007940:	d2450513          	addi	a0,a0,-732 # 8000a660 <CONSOLE_STATUS+0x650>
    80007944:	00f4a023          	sw	a5,0(s1)
    80007948:	00001097          	auipc	ra,0x1
    8000794c:	a40080e7          	jalr	-1472(ra) # 80008388 <__printf>
    80007950:	0000006f          	j	80007950 <system_main+0xd4>

0000000080007954 <cpuid>:
    80007954:	ff010113          	addi	sp,sp,-16
    80007958:	00813423          	sd	s0,8(sp)
    8000795c:	01010413          	addi	s0,sp,16
    80007960:	00020513          	mv	a0,tp
    80007964:	00813403          	ld	s0,8(sp)
    80007968:	0005051b          	sext.w	a0,a0
    8000796c:	01010113          	addi	sp,sp,16
    80007970:	00008067          	ret

0000000080007974 <mycpu>:
    80007974:	ff010113          	addi	sp,sp,-16
    80007978:	00813423          	sd	s0,8(sp)
    8000797c:	01010413          	addi	s0,sp,16
    80007980:	00020793          	mv	a5,tp
    80007984:	00813403          	ld	s0,8(sp)
    80007988:	0007879b          	sext.w	a5,a5
    8000798c:	00779793          	slli	a5,a5,0x7
    80007990:	00006517          	auipc	a0,0x6
    80007994:	7b050513          	addi	a0,a0,1968 # 8000e140 <cpus>
    80007998:	00f50533          	add	a0,a0,a5
    8000799c:	01010113          	addi	sp,sp,16
    800079a0:	00008067          	ret

00000000800079a4 <userinit>:
    800079a4:	ff010113          	addi	sp,sp,-16
    800079a8:	00813423          	sd	s0,8(sp)
    800079ac:	01010413          	addi	s0,sp,16
    800079b0:	00813403          	ld	s0,8(sp)
    800079b4:	01010113          	addi	sp,sp,16
    800079b8:	ffffa317          	auipc	t1,0xffffa
    800079bc:	ee430067          	jr	-284(t1) # 8000189c <main>

00000000800079c0 <either_copyout>:
    800079c0:	ff010113          	addi	sp,sp,-16
    800079c4:	00813023          	sd	s0,0(sp)
    800079c8:	00113423          	sd	ra,8(sp)
    800079cc:	01010413          	addi	s0,sp,16
    800079d0:	02051663          	bnez	a0,800079fc <either_copyout+0x3c>
    800079d4:	00058513          	mv	a0,a1
    800079d8:	00060593          	mv	a1,a2
    800079dc:	0006861b          	sext.w	a2,a3
    800079e0:	00002097          	auipc	ra,0x2
    800079e4:	c54080e7          	jalr	-940(ra) # 80009634 <__memmove>
    800079e8:	00813083          	ld	ra,8(sp)
    800079ec:	00013403          	ld	s0,0(sp)
    800079f0:	00000513          	li	a0,0
    800079f4:	01010113          	addi	sp,sp,16
    800079f8:	00008067          	ret
    800079fc:	00003517          	auipc	a0,0x3
    80007a00:	ca450513          	addi	a0,a0,-860 # 8000a6a0 <CONSOLE_STATUS+0x690>
    80007a04:	00001097          	auipc	ra,0x1
    80007a08:	928080e7          	jalr	-1752(ra) # 8000832c <panic>

0000000080007a0c <either_copyin>:
    80007a0c:	ff010113          	addi	sp,sp,-16
    80007a10:	00813023          	sd	s0,0(sp)
    80007a14:	00113423          	sd	ra,8(sp)
    80007a18:	01010413          	addi	s0,sp,16
    80007a1c:	02059463          	bnez	a1,80007a44 <either_copyin+0x38>
    80007a20:	00060593          	mv	a1,a2
    80007a24:	0006861b          	sext.w	a2,a3
    80007a28:	00002097          	auipc	ra,0x2
    80007a2c:	c0c080e7          	jalr	-1012(ra) # 80009634 <__memmove>
    80007a30:	00813083          	ld	ra,8(sp)
    80007a34:	00013403          	ld	s0,0(sp)
    80007a38:	00000513          	li	a0,0
    80007a3c:	01010113          	addi	sp,sp,16
    80007a40:	00008067          	ret
    80007a44:	00003517          	auipc	a0,0x3
    80007a48:	c8450513          	addi	a0,a0,-892 # 8000a6c8 <CONSOLE_STATUS+0x6b8>
    80007a4c:	00001097          	auipc	ra,0x1
    80007a50:	8e0080e7          	jalr	-1824(ra) # 8000832c <panic>

0000000080007a54 <trapinit>:
    80007a54:	ff010113          	addi	sp,sp,-16
    80007a58:	00813423          	sd	s0,8(sp)
    80007a5c:	01010413          	addi	s0,sp,16
    80007a60:	00813403          	ld	s0,8(sp)
    80007a64:	00003597          	auipc	a1,0x3
    80007a68:	c8c58593          	addi	a1,a1,-884 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007a6c:	00006517          	auipc	a0,0x6
    80007a70:	75450513          	addi	a0,a0,1876 # 8000e1c0 <tickslock>
    80007a74:	01010113          	addi	sp,sp,16
    80007a78:	00001317          	auipc	t1,0x1
    80007a7c:	5c030067          	jr	1472(t1) # 80009038 <initlock>

0000000080007a80 <trapinithart>:
    80007a80:	ff010113          	addi	sp,sp,-16
    80007a84:	00813423          	sd	s0,8(sp)
    80007a88:	01010413          	addi	s0,sp,16
    80007a8c:	00000797          	auipc	a5,0x0
    80007a90:	2f478793          	addi	a5,a5,756 # 80007d80 <kernelvec>
    80007a94:	10579073          	csrw	stvec,a5
    80007a98:	00813403          	ld	s0,8(sp)
    80007a9c:	01010113          	addi	sp,sp,16
    80007aa0:	00008067          	ret

0000000080007aa4 <usertrap>:
    80007aa4:	ff010113          	addi	sp,sp,-16
    80007aa8:	00813423          	sd	s0,8(sp)
    80007aac:	01010413          	addi	s0,sp,16
    80007ab0:	00813403          	ld	s0,8(sp)
    80007ab4:	01010113          	addi	sp,sp,16
    80007ab8:	00008067          	ret

0000000080007abc <usertrapret>:
    80007abc:	ff010113          	addi	sp,sp,-16
    80007ac0:	00813423          	sd	s0,8(sp)
    80007ac4:	01010413          	addi	s0,sp,16
    80007ac8:	00813403          	ld	s0,8(sp)
    80007acc:	01010113          	addi	sp,sp,16
    80007ad0:	00008067          	ret

0000000080007ad4 <kerneltrap>:
    80007ad4:	fe010113          	addi	sp,sp,-32
    80007ad8:	00813823          	sd	s0,16(sp)
    80007adc:	00113c23          	sd	ra,24(sp)
    80007ae0:	00913423          	sd	s1,8(sp)
    80007ae4:	02010413          	addi	s0,sp,32
    80007ae8:	142025f3          	csrr	a1,scause
    80007aec:	100027f3          	csrr	a5,sstatus
    80007af0:	0027f793          	andi	a5,a5,2
    80007af4:	10079c63          	bnez	a5,80007c0c <kerneltrap+0x138>
    80007af8:	142027f3          	csrr	a5,scause
    80007afc:	0207ce63          	bltz	a5,80007b38 <kerneltrap+0x64>
    80007b00:	00003517          	auipc	a0,0x3
    80007b04:	c3850513          	addi	a0,a0,-968 # 8000a738 <CONSOLE_STATUS+0x728>
    80007b08:	00001097          	auipc	ra,0x1
    80007b0c:	880080e7          	jalr	-1920(ra) # 80008388 <__printf>
    80007b10:	141025f3          	csrr	a1,sepc
    80007b14:	14302673          	csrr	a2,stval
    80007b18:	00003517          	auipc	a0,0x3
    80007b1c:	c3050513          	addi	a0,a0,-976 # 8000a748 <CONSOLE_STATUS+0x738>
    80007b20:	00001097          	auipc	ra,0x1
    80007b24:	868080e7          	jalr	-1944(ra) # 80008388 <__printf>
    80007b28:	00003517          	auipc	a0,0x3
    80007b2c:	c3850513          	addi	a0,a0,-968 # 8000a760 <CONSOLE_STATUS+0x750>
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	7fc080e7          	jalr	2044(ra) # 8000832c <panic>
    80007b38:	0ff7f713          	andi	a4,a5,255
    80007b3c:	00900693          	li	a3,9
    80007b40:	04d70063          	beq	a4,a3,80007b80 <kerneltrap+0xac>
    80007b44:	fff00713          	li	a4,-1
    80007b48:	03f71713          	slli	a4,a4,0x3f
    80007b4c:	00170713          	addi	a4,a4,1
    80007b50:	fae798e3          	bne	a5,a4,80007b00 <kerneltrap+0x2c>
    80007b54:	00000097          	auipc	ra,0x0
    80007b58:	e00080e7          	jalr	-512(ra) # 80007954 <cpuid>
    80007b5c:	06050663          	beqz	a0,80007bc8 <kerneltrap+0xf4>
    80007b60:	144027f3          	csrr	a5,sip
    80007b64:	ffd7f793          	andi	a5,a5,-3
    80007b68:	14479073          	csrw	sip,a5
    80007b6c:	01813083          	ld	ra,24(sp)
    80007b70:	01013403          	ld	s0,16(sp)
    80007b74:	00813483          	ld	s1,8(sp)
    80007b78:	02010113          	addi	sp,sp,32
    80007b7c:	00008067          	ret
    80007b80:	00000097          	auipc	ra,0x0
    80007b84:	3c4080e7          	jalr	964(ra) # 80007f44 <plic_claim>
    80007b88:	00a00793          	li	a5,10
    80007b8c:	00050493          	mv	s1,a0
    80007b90:	06f50863          	beq	a0,a5,80007c00 <kerneltrap+0x12c>
    80007b94:	fc050ce3          	beqz	a0,80007b6c <kerneltrap+0x98>
    80007b98:	00050593          	mv	a1,a0
    80007b9c:	00003517          	auipc	a0,0x3
    80007ba0:	b7c50513          	addi	a0,a0,-1156 # 8000a718 <CONSOLE_STATUS+0x708>
    80007ba4:	00000097          	auipc	ra,0x0
    80007ba8:	7e4080e7          	jalr	2020(ra) # 80008388 <__printf>
    80007bac:	01013403          	ld	s0,16(sp)
    80007bb0:	01813083          	ld	ra,24(sp)
    80007bb4:	00048513          	mv	a0,s1
    80007bb8:	00813483          	ld	s1,8(sp)
    80007bbc:	02010113          	addi	sp,sp,32
    80007bc0:	00000317          	auipc	t1,0x0
    80007bc4:	3bc30067          	jr	956(t1) # 80007f7c <plic_complete>
    80007bc8:	00006517          	auipc	a0,0x6
    80007bcc:	5f850513          	addi	a0,a0,1528 # 8000e1c0 <tickslock>
    80007bd0:	00001097          	auipc	ra,0x1
    80007bd4:	48c080e7          	jalr	1164(ra) # 8000905c <acquire>
    80007bd8:	00005717          	auipc	a4,0x5
    80007bdc:	20c70713          	addi	a4,a4,524 # 8000cde4 <ticks>
    80007be0:	00072783          	lw	a5,0(a4)
    80007be4:	00006517          	auipc	a0,0x6
    80007be8:	5dc50513          	addi	a0,a0,1500 # 8000e1c0 <tickslock>
    80007bec:	0017879b          	addiw	a5,a5,1
    80007bf0:	00f72023          	sw	a5,0(a4)
    80007bf4:	00001097          	auipc	ra,0x1
    80007bf8:	534080e7          	jalr	1332(ra) # 80009128 <release>
    80007bfc:	f65ff06f          	j	80007b60 <kerneltrap+0x8c>
    80007c00:	00001097          	auipc	ra,0x1
    80007c04:	090080e7          	jalr	144(ra) # 80008c90 <uartintr>
    80007c08:	fa5ff06f          	j	80007bac <kerneltrap+0xd8>
    80007c0c:	00003517          	auipc	a0,0x3
    80007c10:	aec50513          	addi	a0,a0,-1300 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80007c14:	00000097          	auipc	ra,0x0
    80007c18:	718080e7          	jalr	1816(ra) # 8000832c <panic>

0000000080007c1c <clockintr>:
    80007c1c:	fe010113          	addi	sp,sp,-32
    80007c20:	00813823          	sd	s0,16(sp)
    80007c24:	00913423          	sd	s1,8(sp)
    80007c28:	00113c23          	sd	ra,24(sp)
    80007c2c:	02010413          	addi	s0,sp,32
    80007c30:	00006497          	auipc	s1,0x6
    80007c34:	59048493          	addi	s1,s1,1424 # 8000e1c0 <tickslock>
    80007c38:	00048513          	mv	a0,s1
    80007c3c:	00001097          	auipc	ra,0x1
    80007c40:	420080e7          	jalr	1056(ra) # 8000905c <acquire>
    80007c44:	00005717          	auipc	a4,0x5
    80007c48:	1a070713          	addi	a4,a4,416 # 8000cde4 <ticks>
    80007c4c:	00072783          	lw	a5,0(a4)
    80007c50:	01013403          	ld	s0,16(sp)
    80007c54:	01813083          	ld	ra,24(sp)
    80007c58:	00048513          	mv	a0,s1
    80007c5c:	0017879b          	addiw	a5,a5,1
    80007c60:	00813483          	ld	s1,8(sp)
    80007c64:	00f72023          	sw	a5,0(a4)
    80007c68:	02010113          	addi	sp,sp,32
    80007c6c:	00001317          	auipc	t1,0x1
    80007c70:	4bc30067          	jr	1212(t1) # 80009128 <release>

0000000080007c74 <devintr>:
    80007c74:	142027f3          	csrr	a5,scause
    80007c78:	00000513          	li	a0,0
    80007c7c:	0007c463          	bltz	a5,80007c84 <devintr+0x10>
    80007c80:	00008067          	ret
    80007c84:	fe010113          	addi	sp,sp,-32
    80007c88:	00813823          	sd	s0,16(sp)
    80007c8c:	00113c23          	sd	ra,24(sp)
    80007c90:	00913423          	sd	s1,8(sp)
    80007c94:	02010413          	addi	s0,sp,32
    80007c98:	0ff7f713          	andi	a4,a5,255
    80007c9c:	00900693          	li	a3,9
    80007ca0:	04d70c63          	beq	a4,a3,80007cf8 <devintr+0x84>
    80007ca4:	fff00713          	li	a4,-1
    80007ca8:	03f71713          	slli	a4,a4,0x3f
    80007cac:	00170713          	addi	a4,a4,1
    80007cb0:	00e78c63          	beq	a5,a4,80007cc8 <devintr+0x54>
    80007cb4:	01813083          	ld	ra,24(sp)
    80007cb8:	01013403          	ld	s0,16(sp)
    80007cbc:	00813483          	ld	s1,8(sp)
    80007cc0:	02010113          	addi	sp,sp,32
    80007cc4:	00008067          	ret
    80007cc8:	00000097          	auipc	ra,0x0
    80007ccc:	c8c080e7          	jalr	-884(ra) # 80007954 <cpuid>
    80007cd0:	06050663          	beqz	a0,80007d3c <devintr+0xc8>
    80007cd4:	144027f3          	csrr	a5,sip
    80007cd8:	ffd7f793          	andi	a5,a5,-3
    80007cdc:	14479073          	csrw	sip,a5
    80007ce0:	01813083          	ld	ra,24(sp)
    80007ce4:	01013403          	ld	s0,16(sp)
    80007ce8:	00813483          	ld	s1,8(sp)
    80007cec:	00200513          	li	a0,2
    80007cf0:	02010113          	addi	sp,sp,32
    80007cf4:	00008067          	ret
    80007cf8:	00000097          	auipc	ra,0x0
    80007cfc:	24c080e7          	jalr	588(ra) # 80007f44 <plic_claim>
    80007d00:	00a00793          	li	a5,10
    80007d04:	00050493          	mv	s1,a0
    80007d08:	06f50663          	beq	a0,a5,80007d74 <devintr+0x100>
    80007d0c:	00100513          	li	a0,1
    80007d10:	fa0482e3          	beqz	s1,80007cb4 <devintr+0x40>
    80007d14:	00048593          	mv	a1,s1
    80007d18:	00003517          	auipc	a0,0x3
    80007d1c:	a0050513          	addi	a0,a0,-1536 # 8000a718 <CONSOLE_STATUS+0x708>
    80007d20:	00000097          	auipc	ra,0x0
    80007d24:	668080e7          	jalr	1640(ra) # 80008388 <__printf>
    80007d28:	00048513          	mv	a0,s1
    80007d2c:	00000097          	auipc	ra,0x0
    80007d30:	250080e7          	jalr	592(ra) # 80007f7c <plic_complete>
    80007d34:	00100513          	li	a0,1
    80007d38:	f7dff06f          	j	80007cb4 <devintr+0x40>
    80007d3c:	00006517          	auipc	a0,0x6
    80007d40:	48450513          	addi	a0,a0,1156 # 8000e1c0 <tickslock>
    80007d44:	00001097          	auipc	ra,0x1
    80007d48:	318080e7          	jalr	792(ra) # 8000905c <acquire>
    80007d4c:	00005717          	auipc	a4,0x5
    80007d50:	09870713          	addi	a4,a4,152 # 8000cde4 <ticks>
    80007d54:	00072783          	lw	a5,0(a4)
    80007d58:	00006517          	auipc	a0,0x6
    80007d5c:	46850513          	addi	a0,a0,1128 # 8000e1c0 <tickslock>
    80007d60:	0017879b          	addiw	a5,a5,1
    80007d64:	00f72023          	sw	a5,0(a4)
    80007d68:	00001097          	auipc	ra,0x1
    80007d6c:	3c0080e7          	jalr	960(ra) # 80009128 <release>
    80007d70:	f65ff06f          	j	80007cd4 <devintr+0x60>
    80007d74:	00001097          	auipc	ra,0x1
    80007d78:	f1c080e7          	jalr	-228(ra) # 80008c90 <uartintr>
    80007d7c:	fadff06f          	j	80007d28 <devintr+0xb4>

0000000080007d80 <kernelvec>:
    80007d80:	f0010113          	addi	sp,sp,-256
    80007d84:	00113023          	sd	ra,0(sp)
    80007d88:	00213423          	sd	sp,8(sp)
    80007d8c:	00313823          	sd	gp,16(sp)
    80007d90:	00413c23          	sd	tp,24(sp)
    80007d94:	02513023          	sd	t0,32(sp)
    80007d98:	02613423          	sd	t1,40(sp)
    80007d9c:	02713823          	sd	t2,48(sp)
    80007da0:	02813c23          	sd	s0,56(sp)
    80007da4:	04913023          	sd	s1,64(sp)
    80007da8:	04a13423          	sd	a0,72(sp)
    80007dac:	04b13823          	sd	a1,80(sp)
    80007db0:	04c13c23          	sd	a2,88(sp)
    80007db4:	06d13023          	sd	a3,96(sp)
    80007db8:	06e13423          	sd	a4,104(sp)
    80007dbc:	06f13823          	sd	a5,112(sp)
    80007dc0:	07013c23          	sd	a6,120(sp)
    80007dc4:	09113023          	sd	a7,128(sp)
    80007dc8:	09213423          	sd	s2,136(sp)
    80007dcc:	09313823          	sd	s3,144(sp)
    80007dd0:	09413c23          	sd	s4,152(sp)
    80007dd4:	0b513023          	sd	s5,160(sp)
    80007dd8:	0b613423          	sd	s6,168(sp)
    80007ddc:	0b713823          	sd	s7,176(sp)
    80007de0:	0b813c23          	sd	s8,184(sp)
    80007de4:	0d913023          	sd	s9,192(sp)
    80007de8:	0da13423          	sd	s10,200(sp)
    80007dec:	0db13823          	sd	s11,208(sp)
    80007df0:	0dc13c23          	sd	t3,216(sp)
    80007df4:	0fd13023          	sd	t4,224(sp)
    80007df8:	0fe13423          	sd	t5,232(sp)
    80007dfc:	0ff13823          	sd	t6,240(sp)
    80007e00:	cd5ff0ef          	jal	ra,80007ad4 <kerneltrap>
    80007e04:	00013083          	ld	ra,0(sp)
    80007e08:	00813103          	ld	sp,8(sp)
    80007e0c:	01013183          	ld	gp,16(sp)
    80007e10:	02013283          	ld	t0,32(sp)
    80007e14:	02813303          	ld	t1,40(sp)
    80007e18:	03013383          	ld	t2,48(sp)
    80007e1c:	03813403          	ld	s0,56(sp)
    80007e20:	04013483          	ld	s1,64(sp)
    80007e24:	04813503          	ld	a0,72(sp)
    80007e28:	05013583          	ld	a1,80(sp)
    80007e2c:	05813603          	ld	a2,88(sp)
    80007e30:	06013683          	ld	a3,96(sp)
    80007e34:	06813703          	ld	a4,104(sp)
    80007e38:	07013783          	ld	a5,112(sp)
    80007e3c:	07813803          	ld	a6,120(sp)
    80007e40:	08013883          	ld	a7,128(sp)
    80007e44:	08813903          	ld	s2,136(sp)
    80007e48:	09013983          	ld	s3,144(sp)
    80007e4c:	09813a03          	ld	s4,152(sp)
    80007e50:	0a013a83          	ld	s5,160(sp)
    80007e54:	0a813b03          	ld	s6,168(sp)
    80007e58:	0b013b83          	ld	s7,176(sp)
    80007e5c:	0b813c03          	ld	s8,184(sp)
    80007e60:	0c013c83          	ld	s9,192(sp)
    80007e64:	0c813d03          	ld	s10,200(sp)
    80007e68:	0d013d83          	ld	s11,208(sp)
    80007e6c:	0d813e03          	ld	t3,216(sp)
    80007e70:	0e013e83          	ld	t4,224(sp)
    80007e74:	0e813f03          	ld	t5,232(sp)
    80007e78:	0f013f83          	ld	t6,240(sp)
    80007e7c:	10010113          	addi	sp,sp,256
    80007e80:	10200073          	sret
    80007e84:	00000013          	nop
    80007e88:	00000013          	nop
    80007e8c:	00000013          	nop

0000000080007e90 <timervec>:
    80007e90:	34051573          	csrrw	a0,mscratch,a0
    80007e94:	00b53023          	sd	a1,0(a0)
    80007e98:	00c53423          	sd	a2,8(a0)
    80007e9c:	00d53823          	sd	a3,16(a0)
    80007ea0:	01853583          	ld	a1,24(a0)
    80007ea4:	02053603          	ld	a2,32(a0)
    80007ea8:	0005b683          	ld	a3,0(a1)
    80007eac:	00c686b3          	add	a3,a3,a2
    80007eb0:	00d5b023          	sd	a3,0(a1)
    80007eb4:	00200593          	li	a1,2
    80007eb8:	14459073          	csrw	sip,a1
    80007ebc:	01053683          	ld	a3,16(a0)
    80007ec0:	00853603          	ld	a2,8(a0)
    80007ec4:	00053583          	ld	a1,0(a0)
    80007ec8:	34051573          	csrrw	a0,mscratch,a0
    80007ecc:	30200073          	mret

0000000080007ed0 <plicinit>:
    80007ed0:	ff010113          	addi	sp,sp,-16
    80007ed4:	00813423          	sd	s0,8(sp)
    80007ed8:	01010413          	addi	s0,sp,16
    80007edc:	00813403          	ld	s0,8(sp)
    80007ee0:	0c0007b7          	lui	a5,0xc000
    80007ee4:	00100713          	li	a4,1
    80007ee8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007eec:	00e7a223          	sw	a4,4(a5)
    80007ef0:	01010113          	addi	sp,sp,16
    80007ef4:	00008067          	ret

0000000080007ef8 <plicinithart>:
    80007ef8:	ff010113          	addi	sp,sp,-16
    80007efc:	00813023          	sd	s0,0(sp)
    80007f00:	00113423          	sd	ra,8(sp)
    80007f04:	01010413          	addi	s0,sp,16
    80007f08:	00000097          	auipc	ra,0x0
    80007f0c:	a4c080e7          	jalr	-1460(ra) # 80007954 <cpuid>
    80007f10:	0085171b          	slliw	a4,a0,0x8
    80007f14:	0c0027b7          	lui	a5,0xc002
    80007f18:	00e787b3          	add	a5,a5,a4
    80007f1c:	40200713          	li	a4,1026
    80007f20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007f24:	00813083          	ld	ra,8(sp)
    80007f28:	00013403          	ld	s0,0(sp)
    80007f2c:	00d5151b          	slliw	a0,a0,0xd
    80007f30:	0c2017b7          	lui	a5,0xc201
    80007f34:	00a78533          	add	a0,a5,a0
    80007f38:	00052023          	sw	zero,0(a0)
    80007f3c:	01010113          	addi	sp,sp,16
    80007f40:	00008067          	ret

0000000080007f44 <plic_claim>:
    80007f44:	ff010113          	addi	sp,sp,-16
    80007f48:	00813023          	sd	s0,0(sp)
    80007f4c:	00113423          	sd	ra,8(sp)
    80007f50:	01010413          	addi	s0,sp,16
    80007f54:	00000097          	auipc	ra,0x0
    80007f58:	a00080e7          	jalr	-1536(ra) # 80007954 <cpuid>
    80007f5c:	00813083          	ld	ra,8(sp)
    80007f60:	00013403          	ld	s0,0(sp)
    80007f64:	00d5151b          	slliw	a0,a0,0xd
    80007f68:	0c2017b7          	lui	a5,0xc201
    80007f6c:	00a78533          	add	a0,a5,a0
    80007f70:	00452503          	lw	a0,4(a0)
    80007f74:	01010113          	addi	sp,sp,16
    80007f78:	00008067          	ret

0000000080007f7c <plic_complete>:
    80007f7c:	fe010113          	addi	sp,sp,-32
    80007f80:	00813823          	sd	s0,16(sp)
    80007f84:	00913423          	sd	s1,8(sp)
    80007f88:	00113c23          	sd	ra,24(sp)
    80007f8c:	02010413          	addi	s0,sp,32
    80007f90:	00050493          	mv	s1,a0
    80007f94:	00000097          	auipc	ra,0x0
    80007f98:	9c0080e7          	jalr	-1600(ra) # 80007954 <cpuid>
    80007f9c:	01813083          	ld	ra,24(sp)
    80007fa0:	01013403          	ld	s0,16(sp)
    80007fa4:	00d5179b          	slliw	a5,a0,0xd
    80007fa8:	0c201737          	lui	a4,0xc201
    80007fac:	00f707b3          	add	a5,a4,a5
    80007fb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007fb4:	00813483          	ld	s1,8(sp)
    80007fb8:	02010113          	addi	sp,sp,32
    80007fbc:	00008067          	ret

0000000080007fc0 <consolewrite>:
    80007fc0:	fb010113          	addi	sp,sp,-80
    80007fc4:	04813023          	sd	s0,64(sp)
    80007fc8:	04113423          	sd	ra,72(sp)
    80007fcc:	02913c23          	sd	s1,56(sp)
    80007fd0:	03213823          	sd	s2,48(sp)
    80007fd4:	03313423          	sd	s3,40(sp)
    80007fd8:	03413023          	sd	s4,32(sp)
    80007fdc:	01513c23          	sd	s5,24(sp)
    80007fe0:	05010413          	addi	s0,sp,80
    80007fe4:	06c05c63          	blez	a2,8000805c <consolewrite+0x9c>
    80007fe8:	00060993          	mv	s3,a2
    80007fec:	00050a13          	mv	s4,a0
    80007ff0:	00058493          	mv	s1,a1
    80007ff4:	00000913          	li	s2,0
    80007ff8:	fff00a93          	li	s5,-1
    80007ffc:	01c0006f          	j	80008018 <consolewrite+0x58>
    80008000:	fbf44503          	lbu	a0,-65(s0)
    80008004:	0019091b          	addiw	s2,s2,1
    80008008:	00148493          	addi	s1,s1,1
    8000800c:	00001097          	auipc	ra,0x1
    80008010:	a9c080e7          	jalr	-1380(ra) # 80008aa8 <uartputc>
    80008014:	03298063          	beq	s3,s2,80008034 <consolewrite+0x74>
    80008018:	00048613          	mv	a2,s1
    8000801c:	00100693          	li	a3,1
    80008020:	000a0593          	mv	a1,s4
    80008024:	fbf40513          	addi	a0,s0,-65
    80008028:	00000097          	auipc	ra,0x0
    8000802c:	9e4080e7          	jalr	-1564(ra) # 80007a0c <either_copyin>
    80008030:	fd5518e3          	bne	a0,s5,80008000 <consolewrite+0x40>
    80008034:	04813083          	ld	ra,72(sp)
    80008038:	04013403          	ld	s0,64(sp)
    8000803c:	03813483          	ld	s1,56(sp)
    80008040:	02813983          	ld	s3,40(sp)
    80008044:	02013a03          	ld	s4,32(sp)
    80008048:	01813a83          	ld	s5,24(sp)
    8000804c:	00090513          	mv	a0,s2
    80008050:	03013903          	ld	s2,48(sp)
    80008054:	05010113          	addi	sp,sp,80
    80008058:	00008067          	ret
    8000805c:	00000913          	li	s2,0
    80008060:	fd5ff06f          	j	80008034 <consolewrite+0x74>

0000000080008064 <consoleread>:
    80008064:	f9010113          	addi	sp,sp,-112
    80008068:	06813023          	sd	s0,96(sp)
    8000806c:	04913c23          	sd	s1,88(sp)
    80008070:	05213823          	sd	s2,80(sp)
    80008074:	05313423          	sd	s3,72(sp)
    80008078:	05413023          	sd	s4,64(sp)
    8000807c:	03513c23          	sd	s5,56(sp)
    80008080:	03613823          	sd	s6,48(sp)
    80008084:	03713423          	sd	s7,40(sp)
    80008088:	03813023          	sd	s8,32(sp)
    8000808c:	06113423          	sd	ra,104(sp)
    80008090:	01913c23          	sd	s9,24(sp)
    80008094:	07010413          	addi	s0,sp,112
    80008098:	00060b93          	mv	s7,a2
    8000809c:	00050913          	mv	s2,a0
    800080a0:	00058c13          	mv	s8,a1
    800080a4:	00060b1b          	sext.w	s6,a2
    800080a8:	00006497          	auipc	s1,0x6
    800080ac:	14048493          	addi	s1,s1,320 # 8000e1e8 <cons>
    800080b0:	00400993          	li	s3,4
    800080b4:	fff00a13          	li	s4,-1
    800080b8:	00a00a93          	li	s5,10
    800080bc:	05705e63          	blez	s7,80008118 <consoleread+0xb4>
    800080c0:	09c4a703          	lw	a4,156(s1)
    800080c4:	0984a783          	lw	a5,152(s1)
    800080c8:	0007071b          	sext.w	a4,a4
    800080cc:	08e78463          	beq	a5,a4,80008154 <consoleread+0xf0>
    800080d0:	07f7f713          	andi	a4,a5,127
    800080d4:	00e48733          	add	a4,s1,a4
    800080d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800080dc:	0017869b          	addiw	a3,a5,1
    800080e0:	08d4ac23          	sw	a3,152(s1)
    800080e4:	00070c9b          	sext.w	s9,a4
    800080e8:	0b370663          	beq	a4,s3,80008194 <consoleread+0x130>
    800080ec:	00100693          	li	a3,1
    800080f0:	f9f40613          	addi	a2,s0,-97
    800080f4:	000c0593          	mv	a1,s8
    800080f8:	00090513          	mv	a0,s2
    800080fc:	f8e40fa3          	sb	a4,-97(s0)
    80008100:	00000097          	auipc	ra,0x0
    80008104:	8c0080e7          	jalr	-1856(ra) # 800079c0 <either_copyout>
    80008108:	01450863          	beq	a0,s4,80008118 <consoleread+0xb4>
    8000810c:	001c0c13          	addi	s8,s8,1
    80008110:	fffb8b9b          	addiw	s7,s7,-1
    80008114:	fb5c94e3          	bne	s9,s5,800080bc <consoleread+0x58>
    80008118:	000b851b          	sext.w	a0,s7
    8000811c:	06813083          	ld	ra,104(sp)
    80008120:	06013403          	ld	s0,96(sp)
    80008124:	05813483          	ld	s1,88(sp)
    80008128:	05013903          	ld	s2,80(sp)
    8000812c:	04813983          	ld	s3,72(sp)
    80008130:	04013a03          	ld	s4,64(sp)
    80008134:	03813a83          	ld	s5,56(sp)
    80008138:	02813b83          	ld	s7,40(sp)
    8000813c:	02013c03          	ld	s8,32(sp)
    80008140:	01813c83          	ld	s9,24(sp)
    80008144:	40ab053b          	subw	a0,s6,a0
    80008148:	03013b03          	ld	s6,48(sp)
    8000814c:	07010113          	addi	sp,sp,112
    80008150:	00008067          	ret
    80008154:	00001097          	auipc	ra,0x1
    80008158:	1d8080e7          	jalr	472(ra) # 8000932c <push_on>
    8000815c:	0984a703          	lw	a4,152(s1)
    80008160:	09c4a783          	lw	a5,156(s1)
    80008164:	0007879b          	sext.w	a5,a5
    80008168:	fef70ce3          	beq	a4,a5,80008160 <consoleread+0xfc>
    8000816c:	00001097          	auipc	ra,0x1
    80008170:	234080e7          	jalr	564(ra) # 800093a0 <pop_on>
    80008174:	0984a783          	lw	a5,152(s1)
    80008178:	07f7f713          	andi	a4,a5,127
    8000817c:	00e48733          	add	a4,s1,a4
    80008180:	01874703          	lbu	a4,24(a4)
    80008184:	0017869b          	addiw	a3,a5,1
    80008188:	08d4ac23          	sw	a3,152(s1)
    8000818c:	00070c9b          	sext.w	s9,a4
    80008190:	f5371ee3          	bne	a4,s3,800080ec <consoleread+0x88>
    80008194:	000b851b          	sext.w	a0,s7
    80008198:	f96bf2e3          	bgeu	s7,s6,8000811c <consoleread+0xb8>
    8000819c:	08f4ac23          	sw	a5,152(s1)
    800081a0:	f7dff06f          	j	8000811c <consoleread+0xb8>

00000000800081a4 <consputc>:
    800081a4:	10000793          	li	a5,256
    800081a8:	00f50663          	beq	a0,a5,800081b4 <consputc+0x10>
    800081ac:	00001317          	auipc	t1,0x1
    800081b0:	9f430067          	jr	-1548(t1) # 80008ba0 <uartputc_sync>
    800081b4:	ff010113          	addi	sp,sp,-16
    800081b8:	00113423          	sd	ra,8(sp)
    800081bc:	00813023          	sd	s0,0(sp)
    800081c0:	01010413          	addi	s0,sp,16
    800081c4:	00800513          	li	a0,8
    800081c8:	00001097          	auipc	ra,0x1
    800081cc:	9d8080e7          	jalr	-1576(ra) # 80008ba0 <uartputc_sync>
    800081d0:	02000513          	li	a0,32
    800081d4:	00001097          	auipc	ra,0x1
    800081d8:	9cc080e7          	jalr	-1588(ra) # 80008ba0 <uartputc_sync>
    800081dc:	00013403          	ld	s0,0(sp)
    800081e0:	00813083          	ld	ra,8(sp)
    800081e4:	00800513          	li	a0,8
    800081e8:	01010113          	addi	sp,sp,16
    800081ec:	00001317          	auipc	t1,0x1
    800081f0:	9b430067          	jr	-1612(t1) # 80008ba0 <uartputc_sync>

00000000800081f4 <consoleintr>:
    800081f4:	fe010113          	addi	sp,sp,-32
    800081f8:	00813823          	sd	s0,16(sp)
    800081fc:	00913423          	sd	s1,8(sp)
    80008200:	01213023          	sd	s2,0(sp)
    80008204:	00113c23          	sd	ra,24(sp)
    80008208:	02010413          	addi	s0,sp,32
    8000820c:	00006917          	auipc	s2,0x6
    80008210:	fdc90913          	addi	s2,s2,-36 # 8000e1e8 <cons>
    80008214:	00050493          	mv	s1,a0
    80008218:	00090513          	mv	a0,s2
    8000821c:	00001097          	auipc	ra,0x1
    80008220:	e40080e7          	jalr	-448(ra) # 8000905c <acquire>
    80008224:	02048c63          	beqz	s1,8000825c <consoleintr+0x68>
    80008228:	0a092783          	lw	a5,160(s2)
    8000822c:	09892703          	lw	a4,152(s2)
    80008230:	07f00693          	li	a3,127
    80008234:	40e7873b          	subw	a4,a5,a4
    80008238:	02e6e263          	bltu	a3,a4,8000825c <consoleintr+0x68>
    8000823c:	00d00713          	li	a4,13
    80008240:	04e48063          	beq	s1,a4,80008280 <consoleintr+0x8c>
    80008244:	07f7f713          	andi	a4,a5,127
    80008248:	00e90733          	add	a4,s2,a4
    8000824c:	0017879b          	addiw	a5,a5,1
    80008250:	0af92023          	sw	a5,160(s2)
    80008254:	00970c23          	sb	s1,24(a4)
    80008258:	08f92e23          	sw	a5,156(s2)
    8000825c:	01013403          	ld	s0,16(sp)
    80008260:	01813083          	ld	ra,24(sp)
    80008264:	00813483          	ld	s1,8(sp)
    80008268:	00013903          	ld	s2,0(sp)
    8000826c:	00006517          	auipc	a0,0x6
    80008270:	f7c50513          	addi	a0,a0,-132 # 8000e1e8 <cons>
    80008274:	02010113          	addi	sp,sp,32
    80008278:	00001317          	auipc	t1,0x1
    8000827c:	eb030067          	jr	-336(t1) # 80009128 <release>
    80008280:	00a00493          	li	s1,10
    80008284:	fc1ff06f          	j	80008244 <consoleintr+0x50>

0000000080008288 <consoleinit>:
    80008288:	fe010113          	addi	sp,sp,-32
    8000828c:	00113c23          	sd	ra,24(sp)
    80008290:	00813823          	sd	s0,16(sp)
    80008294:	00913423          	sd	s1,8(sp)
    80008298:	02010413          	addi	s0,sp,32
    8000829c:	00006497          	auipc	s1,0x6
    800082a0:	f4c48493          	addi	s1,s1,-180 # 8000e1e8 <cons>
    800082a4:	00048513          	mv	a0,s1
    800082a8:	00002597          	auipc	a1,0x2
    800082ac:	4c858593          	addi	a1,a1,1224 # 8000a770 <CONSOLE_STATUS+0x760>
    800082b0:	00001097          	auipc	ra,0x1
    800082b4:	d88080e7          	jalr	-632(ra) # 80009038 <initlock>
    800082b8:	00000097          	auipc	ra,0x0
    800082bc:	7ac080e7          	jalr	1964(ra) # 80008a64 <uartinit>
    800082c0:	01813083          	ld	ra,24(sp)
    800082c4:	01013403          	ld	s0,16(sp)
    800082c8:	00000797          	auipc	a5,0x0
    800082cc:	d9c78793          	addi	a5,a5,-612 # 80008064 <consoleread>
    800082d0:	0af4bc23          	sd	a5,184(s1)
    800082d4:	00000797          	auipc	a5,0x0
    800082d8:	cec78793          	addi	a5,a5,-788 # 80007fc0 <consolewrite>
    800082dc:	0cf4b023          	sd	a5,192(s1)
    800082e0:	00813483          	ld	s1,8(sp)
    800082e4:	02010113          	addi	sp,sp,32
    800082e8:	00008067          	ret

00000000800082ec <console_read>:
    800082ec:	ff010113          	addi	sp,sp,-16
    800082f0:	00813423          	sd	s0,8(sp)
    800082f4:	01010413          	addi	s0,sp,16
    800082f8:	00813403          	ld	s0,8(sp)
    800082fc:	00006317          	auipc	t1,0x6
    80008300:	fa433303          	ld	t1,-92(t1) # 8000e2a0 <devsw+0x10>
    80008304:	01010113          	addi	sp,sp,16
    80008308:	00030067          	jr	t1

000000008000830c <console_write>:
    8000830c:	ff010113          	addi	sp,sp,-16
    80008310:	00813423          	sd	s0,8(sp)
    80008314:	01010413          	addi	s0,sp,16
    80008318:	00813403          	ld	s0,8(sp)
    8000831c:	00006317          	auipc	t1,0x6
    80008320:	f8c33303          	ld	t1,-116(t1) # 8000e2a8 <devsw+0x18>
    80008324:	01010113          	addi	sp,sp,16
    80008328:	00030067          	jr	t1

000000008000832c <panic>:
    8000832c:	fe010113          	addi	sp,sp,-32
    80008330:	00113c23          	sd	ra,24(sp)
    80008334:	00813823          	sd	s0,16(sp)
    80008338:	00913423          	sd	s1,8(sp)
    8000833c:	02010413          	addi	s0,sp,32
    80008340:	00050493          	mv	s1,a0
    80008344:	00002517          	auipc	a0,0x2
    80008348:	43450513          	addi	a0,a0,1076 # 8000a778 <CONSOLE_STATUS+0x768>
    8000834c:	00006797          	auipc	a5,0x6
    80008350:	fe07ae23          	sw	zero,-4(a5) # 8000e348 <pr+0x18>
    80008354:	00000097          	auipc	ra,0x0
    80008358:	034080e7          	jalr	52(ra) # 80008388 <__printf>
    8000835c:	00048513          	mv	a0,s1
    80008360:	00000097          	auipc	ra,0x0
    80008364:	028080e7          	jalr	40(ra) # 80008388 <__printf>
    80008368:	00002517          	auipc	a0,0x2
    8000836c:	18050513          	addi	a0,a0,384 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80008370:	00000097          	auipc	ra,0x0
    80008374:	018080e7          	jalr	24(ra) # 80008388 <__printf>
    80008378:	00100793          	li	a5,1
    8000837c:	00005717          	auipc	a4,0x5
    80008380:	a6f72623          	sw	a5,-1428(a4) # 8000cde8 <panicked>
    80008384:	0000006f          	j	80008384 <panic+0x58>

0000000080008388 <__printf>:
    80008388:	f3010113          	addi	sp,sp,-208
    8000838c:	08813023          	sd	s0,128(sp)
    80008390:	07313423          	sd	s3,104(sp)
    80008394:	09010413          	addi	s0,sp,144
    80008398:	05813023          	sd	s8,64(sp)
    8000839c:	08113423          	sd	ra,136(sp)
    800083a0:	06913c23          	sd	s1,120(sp)
    800083a4:	07213823          	sd	s2,112(sp)
    800083a8:	07413023          	sd	s4,96(sp)
    800083ac:	05513c23          	sd	s5,88(sp)
    800083b0:	05613823          	sd	s6,80(sp)
    800083b4:	05713423          	sd	s7,72(sp)
    800083b8:	03913c23          	sd	s9,56(sp)
    800083bc:	03a13823          	sd	s10,48(sp)
    800083c0:	03b13423          	sd	s11,40(sp)
    800083c4:	00006317          	auipc	t1,0x6
    800083c8:	f6c30313          	addi	t1,t1,-148 # 8000e330 <pr>
    800083cc:	01832c03          	lw	s8,24(t1)
    800083d0:	00b43423          	sd	a1,8(s0)
    800083d4:	00c43823          	sd	a2,16(s0)
    800083d8:	00d43c23          	sd	a3,24(s0)
    800083dc:	02e43023          	sd	a4,32(s0)
    800083e0:	02f43423          	sd	a5,40(s0)
    800083e4:	03043823          	sd	a6,48(s0)
    800083e8:	03143c23          	sd	a7,56(s0)
    800083ec:	00050993          	mv	s3,a0
    800083f0:	4a0c1663          	bnez	s8,8000889c <__printf+0x514>
    800083f4:	60098c63          	beqz	s3,80008a0c <__printf+0x684>
    800083f8:	0009c503          	lbu	a0,0(s3)
    800083fc:	00840793          	addi	a5,s0,8
    80008400:	f6f43c23          	sd	a5,-136(s0)
    80008404:	00000493          	li	s1,0
    80008408:	22050063          	beqz	a0,80008628 <__printf+0x2a0>
    8000840c:	00002a37          	lui	s4,0x2
    80008410:	00018ab7          	lui	s5,0x18
    80008414:	000f4b37          	lui	s6,0xf4
    80008418:	00989bb7          	lui	s7,0x989
    8000841c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008420:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008424:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008428:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000842c:	00148c9b          	addiw	s9,s1,1
    80008430:	02500793          	li	a5,37
    80008434:	01998933          	add	s2,s3,s9
    80008438:	38f51263          	bne	a0,a5,800087bc <__printf+0x434>
    8000843c:	00094783          	lbu	a5,0(s2)
    80008440:	00078c9b          	sext.w	s9,a5
    80008444:	1e078263          	beqz	a5,80008628 <__printf+0x2a0>
    80008448:	0024849b          	addiw	s1,s1,2
    8000844c:	07000713          	li	a4,112
    80008450:	00998933          	add	s2,s3,s1
    80008454:	38e78a63          	beq	a5,a4,800087e8 <__printf+0x460>
    80008458:	20f76863          	bltu	a4,a5,80008668 <__printf+0x2e0>
    8000845c:	42a78863          	beq	a5,a0,8000888c <__printf+0x504>
    80008460:	06400713          	li	a4,100
    80008464:	40e79663          	bne	a5,a4,80008870 <__printf+0x4e8>
    80008468:	f7843783          	ld	a5,-136(s0)
    8000846c:	0007a603          	lw	a2,0(a5)
    80008470:	00878793          	addi	a5,a5,8
    80008474:	f6f43c23          	sd	a5,-136(s0)
    80008478:	42064a63          	bltz	a2,800088ac <__printf+0x524>
    8000847c:	00a00713          	li	a4,10
    80008480:	02e677bb          	remuw	a5,a2,a4
    80008484:	00002d97          	auipc	s11,0x2
    80008488:	31cd8d93          	addi	s11,s11,796 # 8000a7a0 <digits>
    8000848c:	00900593          	li	a1,9
    80008490:	0006051b          	sext.w	a0,a2
    80008494:	00000c93          	li	s9,0
    80008498:	02079793          	slli	a5,a5,0x20
    8000849c:	0207d793          	srli	a5,a5,0x20
    800084a0:	00fd87b3          	add	a5,s11,a5
    800084a4:	0007c783          	lbu	a5,0(a5)
    800084a8:	02e656bb          	divuw	a3,a2,a4
    800084ac:	f8f40023          	sb	a5,-128(s0)
    800084b0:	14c5d863          	bge	a1,a2,80008600 <__printf+0x278>
    800084b4:	06300593          	li	a1,99
    800084b8:	00100c93          	li	s9,1
    800084bc:	02e6f7bb          	remuw	a5,a3,a4
    800084c0:	02079793          	slli	a5,a5,0x20
    800084c4:	0207d793          	srli	a5,a5,0x20
    800084c8:	00fd87b3          	add	a5,s11,a5
    800084cc:	0007c783          	lbu	a5,0(a5)
    800084d0:	02e6d73b          	divuw	a4,a3,a4
    800084d4:	f8f400a3          	sb	a5,-127(s0)
    800084d8:	12a5f463          	bgeu	a1,a0,80008600 <__printf+0x278>
    800084dc:	00a00693          	li	a3,10
    800084e0:	00900593          	li	a1,9
    800084e4:	02d777bb          	remuw	a5,a4,a3
    800084e8:	02079793          	slli	a5,a5,0x20
    800084ec:	0207d793          	srli	a5,a5,0x20
    800084f0:	00fd87b3          	add	a5,s11,a5
    800084f4:	0007c503          	lbu	a0,0(a5)
    800084f8:	02d757bb          	divuw	a5,a4,a3
    800084fc:	f8a40123          	sb	a0,-126(s0)
    80008500:	48e5f263          	bgeu	a1,a4,80008984 <__printf+0x5fc>
    80008504:	06300513          	li	a0,99
    80008508:	02d7f5bb          	remuw	a1,a5,a3
    8000850c:	02059593          	slli	a1,a1,0x20
    80008510:	0205d593          	srli	a1,a1,0x20
    80008514:	00bd85b3          	add	a1,s11,a1
    80008518:	0005c583          	lbu	a1,0(a1)
    8000851c:	02d7d7bb          	divuw	a5,a5,a3
    80008520:	f8b401a3          	sb	a1,-125(s0)
    80008524:	48e57263          	bgeu	a0,a4,800089a8 <__printf+0x620>
    80008528:	3e700513          	li	a0,999
    8000852c:	02d7f5bb          	remuw	a1,a5,a3
    80008530:	02059593          	slli	a1,a1,0x20
    80008534:	0205d593          	srli	a1,a1,0x20
    80008538:	00bd85b3          	add	a1,s11,a1
    8000853c:	0005c583          	lbu	a1,0(a1)
    80008540:	02d7d7bb          	divuw	a5,a5,a3
    80008544:	f8b40223          	sb	a1,-124(s0)
    80008548:	46e57663          	bgeu	a0,a4,800089b4 <__printf+0x62c>
    8000854c:	02d7f5bb          	remuw	a1,a5,a3
    80008550:	02059593          	slli	a1,a1,0x20
    80008554:	0205d593          	srli	a1,a1,0x20
    80008558:	00bd85b3          	add	a1,s11,a1
    8000855c:	0005c583          	lbu	a1,0(a1)
    80008560:	02d7d7bb          	divuw	a5,a5,a3
    80008564:	f8b402a3          	sb	a1,-123(s0)
    80008568:	46ea7863          	bgeu	s4,a4,800089d8 <__printf+0x650>
    8000856c:	02d7f5bb          	remuw	a1,a5,a3
    80008570:	02059593          	slli	a1,a1,0x20
    80008574:	0205d593          	srli	a1,a1,0x20
    80008578:	00bd85b3          	add	a1,s11,a1
    8000857c:	0005c583          	lbu	a1,0(a1)
    80008580:	02d7d7bb          	divuw	a5,a5,a3
    80008584:	f8b40323          	sb	a1,-122(s0)
    80008588:	3eeaf863          	bgeu	s5,a4,80008978 <__printf+0x5f0>
    8000858c:	02d7f5bb          	remuw	a1,a5,a3
    80008590:	02059593          	slli	a1,a1,0x20
    80008594:	0205d593          	srli	a1,a1,0x20
    80008598:	00bd85b3          	add	a1,s11,a1
    8000859c:	0005c583          	lbu	a1,0(a1)
    800085a0:	02d7d7bb          	divuw	a5,a5,a3
    800085a4:	f8b403a3          	sb	a1,-121(s0)
    800085a8:	42eb7e63          	bgeu	s6,a4,800089e4 <__printf+0x65c>
    800085ac:	02d7f5bb          	remuw	a1,a5,a3
    800085b0:	02059593          	slli	a1,a1,0x20
    800085b4:	0205d593          	srli	a1,a1,0x20
    800085b8:	00bd85b3          	add	a1,s11,a1
    800085bc:	0005c583          	lbu	a1,0(a1)
    800085c0:	02d7d7bb          	divuw	a5,a5,a3
    800085c4:	f8b40423          	sb	a1,-120(s0)
    800085c8:	42ebfc63          	bgeu	s7,a4,80008a00 <__printf+0x678>
    800085cc:	02079793          	slli	a5,a5,0x20
    800085d0:	0207d793          	srli	a5,a5,0x20
    800085d4:	00fd8db3          	add	s11,s11,a5
    800085d8:	000dc703          	lbu	a4,0(s11)
    800085dc:	00a00793          	li	a5,10
    800085e0:	00900c93          	li	s9,9
    800085e4:	f8e404a3          	sb	a4,-119(s0)
    800085e8:	00065c63          	bgez	a2,80008600 <__printf+0x278>
    800085ec:	f9040713          	addi	a4,s0,-112
    800085f0:	00f70733          	add	a4,a4,a5
    800085f4:	02d00693          	li	a3,45
    800085f8:	fed70823          	sb	a3,-16(a4)
    800085fc:	00078c93          	mv	s9,a5
    80008600:	f8040793          	addi	a5,s0,-128
    80008604:	01978cb3          	add	s9,a5,s9
    80008608:	f7f40d13          	addi	s10,s0,-129
    8000860c:	000cc503          	lbu	a0,0(s9)
    80008610:	fffc8c93          	addi	s9,s9,-1
    80008614:	00000097          	auipc	ra,0x0
    80008618:	b90080e7          	jalr	-1136(ra) # 800081a4 <consputc>
    8000861c:	ffac98e3          	bne	s9,s10,8000860c <__printf+0x284>
    80008620:	00094503          	lbu	a0,0(s2)
    80008624:	e00514e3          	bnez	a0,8000842c <__printf+0xa4>
    80008628:	1a0c1663          	bnez	s8,800087d4 <__printf+0x44c>
    8000862c:	08813083          	ld	ra,136(sp)
    80008630:	08013403          	ld	s0,128(sp)
    80008634:	07813483          	ld	s1,120(sp)
    80008638:	07013903          	ld	s2,112(sp)
    8000863c:	06813983          	ld	s3,104(sp)
    80008640:	06013a03          	ld	s4,96(sp)
    80008644:	05813a83          	ld	s5,88(sp)
    80008648:	05013b03          	ld	s6,80(sp)
    8000864c:	04813b83          	ld	s7,72(sp)
    80008650:	04013c03          	ld	s8,64(sp)
    80008654:	03813c83          	ld	s9,56(sp)
    80008658:	03013d03          	ld	s10,48(sp)
    8000865c:	02813d83          	ld	s11,40(sp)
    80008660:	0d010113          	addi	sp,sp,208
    80008664:	00008067          	ret
    80008668:	07300713          	li	a4,115
    8000866c:	1ce78a63          	beq	a5,a4,80008840 <__printf+0x4b8>
    80008670:	07800713          	li	a4,120
    80008674:	1ee79e63          	bne	a5,a4,80008870 <__printf+0x4e8>
    80008678:	f7843783          	ld	a5,-136(s0)
    8000867c:	0007a703          	lw	a4,0(a5)
    80008680:	00878793          	addi	a5,a5,8
    80008684:	f6f43c23          	sd	a5,-136(s0)
    80008688:	28074263          	bltz	a4,8000890c <__printf+0x584>
    8000868c:	00002d97          	auipc	s11,0x2
    80008690:	114d8d93          	addi	s11,s11,276 # 8000a7a0 <digits>
    80008694:	00f77793          	andi	a5,a4,15
    80008698:	00fd87b3          	add	a5,s11,a5
    8000869c:	0007c683          	lbu	a3,0(a5)
    800086a0:	00f00613          	li	a2,15
    800086a4:	0007079b          	sext.w	a5,a4
    800086a8:	f8d40023          	sb	a3,-128(s0)
    800086ac:	0047559b          	srliw	a1,a4,0x4
    800086b0:	0047569b          	srliw	a3,a4,0x4
    800086b4:	00000c93          	li	s9,0
    800086b8:	0ee65063          	bge	a2,a4,80008798 <__printf+0x410>
    800086bc:	00f6f693          	andi	a3,a3,15
    800086c0:	00dd86b3          	add	a3,s11,a3
    800086c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800086c8:	0087d79b          	srliw	a5,a5,0x8
    800086cc:	00100c93          	li	s9,1
    800086d0:	f8d400a3          	sb	a3,-127(s0)
    800086d4:	0cb67263          	bgeu	a2,a1,80008798 <__printf+0x410>
    800086d8:	00f7f693          	andi	a3,a5,15
    800086dc:	00dd86b3          	add	a3,s11,a3
    800086e0:	0006c583          	lbu	a1,0(a3)
    800086e4:	00f00613          	li	a2,15
    800086e8:	0047d69b          	srliw	a3,a5,0x4
    800086ec:	f8b40123          	sb	a1,-126(s0)
    800086f0:	0047d593          	srli	a1,a5,0x4
    800086f4:	28f67e63          	bgeu	a2,a5,80008990 <__printf+0x608>
    800086f8:	00f6f693          	andi	a3,a3,15
    800086fc:	00dd86b3          	add	a3,s11,a3
    80008700:	0006c503          	lbu	a0,0(a3)
    80008704:	0087d813          	srli	a6,a5,0x8
    80008708:	0087d69b          	srliw	a3,a5,0x8
    8000870c:	f8a401a3          	sb	a0,-125(s0)
    80008710:	28b67663          	bgeu	a2,a1,8000899c <__printf+0x614>
    80008714:	00f6f693          	andi	a3,a3,15
    80008718:	00dd86b3          	add	a3,s11,a3
    8000871c:	0006c583          	lbu	a1,0(a3)
    80008720:	00c7d513          	srli	a0,a5,0xc
    80008724:	00c7d69b          	srliw	a3,a5,0xc
    80008728:	f8b40223          	sb	a1,-124(s0)
    8000872c:	29067a63          	bgeu	a2,a6,800089c0 <__printf+0x638>
    80008730:	00f6f693          	andi	a3,a3,15
    80008734:	00dd86b3          	add	a3,s11,a3
    80008738:	0006c583          	lbu	a1,0(a3)
    8000873c:	0107d813          	srli	a6,a5,0x10
    80008740:	0107d69b          	srliw	a3,a5,0x10
    80008744:	f8b402a3          	sb	a1,-123(s0)
    80008748:	28a67263          	bgeu	a2,a0,800089cc <__printf+0x644>
    8000874c:	00f6f693          	andi	a3,a3,15
    80008750:	00dd86b3          	add	a3,s11,a3
    80008754:	0006c683          	lbu	a3,0(a3)
    80008758:	0147d79b          	srliw	a5,a5,0x14
    8000875c:	f8d40323          	sb	a3,-122(s0)
    80008760:	21067663          	bgeu	a2,a6,8000896c <__printf+0x5e4>
    80008764:	02079793          	slli	a5,a5,0x20
    80008768:	0207d793          	srli	a5,a5,0x20
    8000876c:	00fd8db3          	add	s11,s11,a5
    80008770:	000dc683          	lbu	a3,0(s11)
    80008774:	00800793          	li	a5,8
    80008778:	00700c93          	li	s9,7
    8000877c:	f8d403a3          	sb	a3,-121(s0)
    80008780:	00075c63          	bgez	a4,80008798 <__printf+0x410>
    80008784:	f9040713          	addi	a4,s0,-112
    80008788:	00f70733          	add	a4,a4,a5
    8000878c:	02d00693          	li	a3,45
    80008790:	fed70823          	sb	a3,-16(a4)
    80008794:	00078c93          	mv	s9,a5
    80008798:	f8040793          	addi	a5,s0,-128
    8000879c:	01978cb3          	add	s9,a5,s9
    800087a0:	f7f40d13          	addi	s10,s0,-129
    800087a4:	000cc503          	lbu	a0,0(s9)
    800087a8:	fffc8c93          	addi	s9,s9,-1
    800087ac:	00000097          	auipc	ra,0x0
    800087b0:	9f8080e7          	jalr	-1544(ra) # 800081a4 <consputc>
    800087b4:	ff9d18e3          	bne	s10,s9,800087a4 <__printf+0x41c>
    800087b8:	0100006f          	j	800087c8 <__printf+0x440>
    800087bc:	00000097          	auipc	ra,0x0
    800087c0:	9e8080e7          	jalr	-1560(ra) # 800081a4 <consputc>
    800087c4:	000c8493          	mv	s1,s9
    800087c8:	00094503          	lbu	a0,0(s2)
    800087cc:	c60510e3          	bnez	a0,8000842c <__printf+0xa4>
    800087d0:	e40c0ee3          	beqz	s8,8000862c <__printf+0x2a4>
    800087d4:	00006517          	auipc	a0,0x6
    800087d8:	b5c50513          	addi	a0,a0,-1188 # 8000e330 <pr>
    800087dc:	00001097          	auipc	ra,0x1
    800087e0:	94c080e7          	jalr	-1716(ra) # 80009128 <release>
    800087e4:	e49ff06f          	j	8000862c <__printf+0x2a4>
    800087e8:	f7843783          	ld	a5,-136(s0)
    800087ec:	03000513          	li	a0,48
    800087f0:	01000d13          	li	s10,16
    800087f4:	00878713          	addi	a4,a5,8
    800087f8:	0007bc83          	ld	s9,0(a5)
    800087fc:	f6e43c23          	sd	a4,-136(s0)
    80008800:	00000097          	auipc	ra,0x0
    80008804:	9a4080e7          	jalr	-1628(ra) # 800081a4 <consputc>
    80008808:	07800513          	li	a0,120
    8000880c:	00000097          	auipc	ra,0x0
    80008810:	998080e7          	jalr	-1640(ra) # 800081a4 <consputc>
    80008814:	00002d97          	auipc	s11,0x2
    80008818:	f8cd8d93          	addi	s11,s11,-116 # 8000a7a0 <digits>
    8000881c:	03ccd793          	srli	a5,s9,0x3c
    80008820:	00fd87b3          	add	a5,s11,a5
    80008824:	0007c503          	lbu	a0,0(a5)
    80008828:	fffd0d1b          	addiw	s10,s10,-1
    8000882c:	004c9c93          	slli	s9,s9,0x4
    80008830:	00000097          	auipc	ra,0x0
    80008834:	974080e7          	jalr	-1676(ra) # 800081a4 <consputc>
    80008838:	fe0d12e3          	bnez	s10,8000881c <__printf+0x494>
    8000883c:	f8dff06f          	j	800087c8 <__printf+0x440>
    80008840:	f7843783          	ld	a5,-136(s0)
    80008844:	0007bc83          	ld	s9,0(a5)
    80008848:	00878793          	addi	a5,a5,8
    8000884c:	f6f43c23          	sd	a5,-136(s0)
    80008850:	000c9a63          	bnez	s9,80008864 <__printf+0x4dc>
    80008854:	1080006f          	j	8000895c <__printf+0x5d4>
    80008858:	001c8c93          	addi	s9,s9,1
    8000885c:	00000097          	auipc	ra,0x0
    80008860:	948080e7          	jalr	-1720(ra) # 800081a4 <consputc>
    80008864:	000cc503          	lbu	a0,0(s9)
    80008868:	fe0518e3          	bnez	a0,80008858 <__printf+0x4d0>
    8000886c:	f5dff06f          	j	800087c8 <__printf+0x440>
    80008870:	02500513          	li	a0,37
    80008874:	00000097          	auipc	ra,0x0
    80008878:	930080e7          	jalr	-1744(ra) # 800081a4 <consputc>
    8000887c:	000c8513          	mv	a0,s9
    80008880:	00000097          	auipc	ra,0x0
    80008884:	924080e7          	jalr	-1756(ra) # 800081a4 <consputc>
    80008888:	f41ff06f          	j	800087c8 <__printf+0x440>
    8000888c:	02500513          	li	a0,37
    80008890:	00000097          	auipc	ra,0x0
    80008894:	914080e7          	jalr	-1772(ra) # 800081a4 <consputc>
    80008898:	f31ff06f          	j	800087c8 <__printf+0x440>
    8000889c:	00030513          	mv	a0,t1
    800088a0:	00000097          	auipc	ra,0x0
    800088a4:	7bc080e7          	jalr	1980(ra) # 8000905c <acquire>
    800088a8:	b4dff06f          	j	800083f4 <__printf+0x6c>
    800088ac:	40c0053b          	negw	a0,a2
    800088b0:	00a00713          	li	a4,10
    800088b4:	02e576bb          	remuw	a3,a0,a4
    800088b8:	00002d97          	auipc	s11,0x2
    800088bc:	ee8d8d93          	addi	s11,s11,-280 # 8000a7a0 <digits>
    800088c0:	ff700593          	li	a1,-9
    800088c4:	02069693          	slli	a3,a3,0x20
    800088c8:	0206d693          	srli	a3,a3,0x20
    800088cc:	00dd86b3          	add	a3,s11,a3
    800088d0:	0006c683          	lbu	a3,0(a3)
    800088d4:	02e557bb          	divuw	a5,a0,a4
    800088d8:	f8d40023          	sb	a3,-128(s0)
    800088dc:	10b65e63          	bge	a2,a1,800089f8 <__printf+0x670>
    800088e0:	06300593          	li	a1,99
    800088e4:	02e7f6bb          	remuw	a3,a5,a4
    800088e8:	02069693          	slli	a3,a3,0x20
    800088ec:	0206d693          	srli	a3,a3,0x20
    800088f0:	00dd86b3          	add	a3,s11,a3
    800088f4:	0006c683          	lbu	a3,0(a3)
    800088f8:	02e7d73b          	divuw	a4,a5,a4
    800088fc:	00200793          	li	a5,2
    80008900:	f8d400a3          	sb	a3,-127(s0)
    80008904:	bca5ece3          	bltu	a1,a0,800084dc <__printf+0x154>
    80008908:	ce5ff06f          	j	800085ec <__printf+0x264>
    8000890c:	40e007bb          	negw	a5,a4
    80008910:	00002d97          	auipc	s11,0x2
    80008914:	e90d8d93          	addi	s11,s11,-368 # 8000a7a0 <digits>
    80008918:	00f7f693          	andi	a3,a5,15
    8000891c:	00dd86b3          	add	a3,s11,a3
    80008920:	0006c583          	lbu	a1,0(a3)
    80008924:	ff100613          	li	a2,-15
    80008928:	0047d69b          	srliw	a3,a5,0x4
    8000892c:	f8b40023          	sb	a1,-128(s0)
    80008930:	0047d59b          	srliw	a1,a5,0x4
    80008934:	0ac75e63          	bge	a4,a2,800089f0 <__printf+0x668>
    80008938:	00f6f693          	andi	a3,a3,15
    8000893c:	00dd86b3          	add	a3,s11,a3
    80008940:	0006c603          	lbu	a2,0(a3)
    80008944:	00f00693          	li	a3,15
    80008948:	0087d79b          	srliw	a5,a5,0x8
    8000894c:	f8c400a3          	sb	a2,-127(s0)
    80008950:	d8b6e4e3          	bltu	a3,a1,800086d8 <__printf+0x350>
    80008954:	00200793          	li	a5,2
    80008958:	e2dff06f          	j	80008784 <__printf+0x3fc>
    8000895c:	00002c97          	auipc	s9,0x2
    80008960:	e24c8c93          	addi	s9,s9,-476 # 8000a780 <CONSOLE_STATUS+0x770>
    80008964:	02800513          	li	a0,40
    80008968:	ef1ff06f          	j	80008858 <__printf+0x4d0>
    8000896c:	00700793          	li	a5,7
    80008970:	00600c93          	li	s9,6
    80008974:	e0dff06f          	j	80008780 <__printf+0x3f8>
    80008978:	00700793          	li	a5,7
    8000897c:	00600c93          	li	s9,6
    80008980:	c69ff06f          	j	800085e8 <__printf+0x260>
    80008984:	00300793          	li	a5,3
    80008988:	00200c93          	li	s9,2
    8000898c:	c5dff06f          	j	800085e8 <__printf+0x260>
    80008990:	00300793          	li	a5,3
    80008994:	00200c93          	li	s9,2
    80008998:	de9ff06f          	j	80008780 <__printf+0x3f8>
    8000899c:	00400793          	li	a5,4
    800089a0:	00300c93          	li	s9,3
    800089a4:	dddff06f          	j	80008780 <__printf+0x3f8>
    800089a8:	00400793          	li	a5,4
    800089ac:	00300c93          	li	s9,3
    800089b0:	c39ff06f          	j	800085e8 <__printf+0x260>
    800089b4:	00500793          	li	a5,5
    800089b8:	00400c93          	li	s9,4
    800089bc:	c2dff06f          	j	800085e8 <__printf+0x260>
    800089c0:	00500793          	li	a5,5
    800089c4:	00400c93          	li	s9,4
    800089c8:	db9ff06f          	j	80008780 <__printf+0x3f8>
    800089cc:	00600793          	li	a5,6
    800089d0:	00500c93          	li	s9,5
    800089d4:	dadff06f          	j	80008780 <__printf+0x3f8>
    800089d8:	00600793          	li	a5,6
    800089dc:	00500c93          	li	s9,5
    800089e0:	c09ff06f          	j	800085e8 <__printf+0x260>
    800089e4:	00800793          	li	a5,8
    800089e8:	00700c93          	li	s9,7
    800089ec:	bfdff06f          	j	800085e8 <__printf+0x260>
    800089f0:	00100793          	li	a5,1
    800089f4:	d91ff06f          	j	80008784 <__printf+0x3fc>
    800089f8:	00100793          	li	a5,1
    800089fc:	bf1ff06f          	j	800085ec <__printf+0x264>
    80008a00:	00900793          	li	a5,9
    80008a04:	00800c93          	li	s9,8
    80008a08:	be1ff06f          	j	800085e8 <__printf+0x260>
    80008a0c:	00002517          	auipc	a0,0x2
    80008a10:	d7c50513          	addi	a0,a0,-644 # 8000a788 <CONSOLE_STATUS+0x778>
    80008a14:	00000097          	auipc	ra,0x0
    80008a18:	918080e7          	jalr	-1768(ra) # 8000832c <panic>

0000000080008a1c <printfinit>:
    80008a1c:	fe010113          	addi	sp,sp,-32
    80008a20:	00813823          	sd	s0,16(sp)
    80008a24:	00913423          	sd	s1,8(sp)
    80008a28:	00113c23          	sd	ra,24(sp)
    80008a2c:	02010413          	addi	s0,sp,32
    80008a30:	00006497          	auipc	s1,0x6
    80008a34:	90048493          	addi	s1,s1,-1792 # 8000e330 <pr>
    80008a38:	00048513          	mv	a0,s1
    80008a3c:	00002597          	auipc	a1,0x2
    80008a40:	d5c58593          	addi	a1,a1,-676 # 8000a798 <CONSOLE_STATUS+0x788>
    80008a44:	00000097          	auipc	ra,0x0
    80008a48:	5f4080e7          	jalr	1524(ra) # 80009038 <initlock>
    80008a4c:	01813083          	ld	ra,24(sp)
    80008a50:	01013403          	ld	s0,16(sp)
    80008a54:	0004ac23          	sw	zero,24(s1)
    80008a58:	00813483          	ld	s1,8(sp)
    80008a5c:	02010113          	addi	sp,sp,32
    80008a60:	00008067          	ret

0000000080008a64 <uartinit>:
    80008a64:	ff010113          	addi	sp,sp,-16
    80008a68:	00813423          	sd	s0,8(sp)
    80008a6c:	01010413          	addi	s0,sp,16
    80008a70:	100007b7          	lui	a5,0x10000
    80008a74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008a78:	f8000713          	li	a4,-128
    80008a7c:	00e781a3          	sb	a4,3(a5)
    80008a80:	00300713          	li	a4,3
    80008a84:	00e78023          	sb	a4,0(a5)
    80008a88:	000780a3          	sb	zero,1(a5)
    80008a8c:	00e781a3          	sb	a4,3(a5)
    80008a90:	00700693          	li	a3,7
    80008a94:	00d78123          	sb	a3,2(a5)
    80008a98:	00e780a3          	sb	a4,1(a5)
    80008a9c:	00813403          	ld	s0,8(sp)
    80008aa0:	01010113          	addi	sp,sp,16
    80008aa4:	00008067          	ret

0000000080008aa8 <uartputc>:
    80008aa8:	00004797          	auipc	a5,0x4
    80008aac:	3407a783          	lw	a5,832(a5) # 8000cde8 <panicked>
    80008ab0:	00078463          	beqz	a5,80008ab8 <uartputc+0x10>
    80008ab4:	0000006f          	j	80008ab4 <uartputc+0xc>
    80008ab8:	fd010113          	addi	sp,sp,-48
    80008abc:	02813023          	sd	s0,32(sp)
    80008ac0:	00913c23          	sd	s1,24(sp)
    80008ac4:	01213823          	sd	s2,16(sp)
    80008ac8:	01313423          	sd	s3,8(sp)
    80008acc:	02113423          	sd	ra,40(sp)
    80008ad0:	03010413          	addi	s0,sp,48
    80008ad4:	00004917          	auipc	s2,0x4
    80008ad8:	31c90913          	addi	s2,s2,796 # 8000cdf0 <uart_tx_r>
    80008adc:	00093783          	ld	a5,0(s2)
    80008ae0:	00004497          	auipc	s1,0x4
    80008ae4:	31848493          	addi	s1,s1,792 # 8000cdf8 <uart_tx_w>
    80008ae8:	0004b703          	ld	a4,0(s1)
    80008aec:	02078693          	addi	a3,a5,32
    80008af0:	00050993          	mv	s3,a0
    80008af4:	02e69c63          	bne	a3,a4,80008b2c <uartputc+0x84>
    80008af8:	00001097          	auipc	ra,0x1
    80008afc:	834080e7          	jalr	-1996(ra) # 8000932c <push_on>
    80008b00:	00093783          	ld	a5,0(s2)
    80008b04:	0004b703          	ld	a4,0(s1)
    80008b08:	02078793          	addi	a5,a5,32
    80008b0c:	00e79463          	bne	a5,a4,80008b14 <uartputc+0x6c>
    80008b10:	0000006f          	j	80008b10 <uartputc+0x68>
    80008b14:	00001097          	auipc	ra,0x1
    80008b18:	88c080e7          	jalr	-1908(ra) # 800093a0 <pop_on>
    80008b1c:	00093783          	ld	a5,0(s2)
    80008b20:	0004b703          	ld	a4,0(s1)
    80008b24:	02078693          	addi	a3,a5,32
    80008b28:	fce688e3          	beq	a3,a4,80008af8 <uartputc+0x50>
    80008b2c:	01f77693          	andi	a3,a4,31
    80008b30:	00006597          	auipc	a1,0x6
    80008b34:	82058593          	addi	a1,a1,-2016 # 8000e350 <uart_tx_buf>
    80008b38:	00d586b3          	add	a3,a1,a3
    80008b3c:	00170713          	addi	a4,a4,1
    80008b40:	01368023          	sb	s3,0(a3)
    80008b44:	00e4b023          	sd	a4,0(s1)
    80008b48:	10000637          	lui	a2,0x10000
    80008b4c:	02f71063          	bne	a4,a5,80008b6c <uartputc+0xc4>
    80008b50:	0340006f          	j	80008b84 <uartputc+0xdc>
    80008b54:	00074703          	lbu	a4,0(a4)
    80008b58:	00f93023          	sd	a5,0(s2)
    80008b5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008b60:	00093783          	ld	a5,0(s2)
    80008b64:	0004b703          	ld	a4,0(s1)
    80008b68:	00f70e63          	beq	a4,a5,80008b84 <uartputc+0xdc>
    80008b6c:	00564683          	lbu	a3,5(a2)
    80008b70:	01f7f713          	andi	a4,a5,31
    80008b74:	00e58733          	add	a4,a1,a4
    80008b78:	0206f693          	andi	a3,a3,32
    80008b7c:	00178793          	addi	a5,a5,1
    80008b80:	fc069ae3          	bnez	a3,80008b54 <uartputc+0xac>
    80008b84:	02813083          	ld	ra,40(sp)
    80008b88:	02013403          	ld	s0,32(sp)
    80008b8c:	01813483          	ld	s1,24(sp)
    80008b90:	01013903          	ld	s2,16(sp)
    80008b94:	00813983          	ld	s3,8(sp)
    80008b98:	03010113          	addi	sp,sp,48
    80008b9c:	00008067          	ret

0000000080008ba0 <uartputc_sync>:
    80008ba0:	ff010113          	addi	sp,sp,-16
    80008ba4:	00813423          	sd	s0,8(sp)
    80008ba8:	01010413          	addi	s0,sp,16
    80008bac:	00004717          	auipc	a4,0x4
    80008bb0:	23c72703          	lw	a4,572(a4) # 8000cde8 <panicked>
    80008bb4:	02071663          	bnez	a4,80008be0 <uartputc_sync+0x40>
    80008bb8:	00050793          	mv	a5,a0
    80008bbc:	100006b7          	lui	a3,0x10000
    80008bc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008bc4:	02077713          	andi	a4,a4,32
    80008bc8:	fe070ce3          	beqz	a4,80008bc0 <uartputc_sync+0x20>
    80008bcc:	0ff7f793          	andi	a5,a5,255
    80008bd0:	00f68023          	sb	a5,0(a3)
    80008bd4:	00813403          	ld	s0,8(sp)
    80008bd8:	01010113          	addi	sp,sp,16
    80008bdc:	00008067          	ret
    80008be0:	0000006f          	j	80008be0 <uartputc_sync+0x40>

0000000080008be4 <uartstart>:
    80008be4:	ff010113          	addi	sp,sp,-16
    80008be8:	00813423          	sd	s0,8(sp)
    80008bec:	01010413          	addi	s0,sp,16
    80008bf0:	00004617          	auipc	a2,0x4
    80008bf4:	20060613          	addi	a2,a2,512 # 8000cdf0 <uart_tx_r>
    80008bf8:	00004517          	auipc	a0,0x4
    80008bfc:	20050513          	addi	a0,a0,512 # 8000cdf8 <uart_tx_w>
    80008c00:	00063783          	ld	a5,0(a2)
    80008c04:	00053703          	ld	a4,0(a0)
    80008c08:	04f70263          	beq	a4,a5,80008c4c <uartstart+0x68>
    80008c0c:	100005b7          	lui	a1,0x10000
    80008c10:	00005817          	auipc	a6,0x5
    80008c14:	74080813          	addi	a6,a6,1856 # 8000e350 <uart_tx_buf>
    80008c18:	01c0006f          	j	80008c34 <uartstart+0x50>
    80008c1c:	0006c703          	lbu	a4,0(a3)
    80008c20:	00f63023          	sd	a5,0(a2)
    80008c24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008c28:	00063783          	ld	a5,0(a2)
    80008c2c:	00053703          	ld	a4,0(a0)
    80008c30:	00f70e63          	beq	a4,a5,80008c4c <uartstart+0x68>
    80008c34:	01f7f713          	andi	a4,a5,31
    80008c38:	00e806b3          	add	a3,a6,a4
    80008c3c:	0055c703          	lbu	a4,5(a1)
    80008c40:	00178793          	addi	a5,a5,1
    80008c44:	02077713          	andi	a4,a4,32
    80008c48:	fc071ae3          	bnez	a4,80008c1c <uartstart+0x38>
    80008c4c:	00813403          	ld	s0,8(sp)
    80008c50:	01010113          	addi	sp,sp,16
    80008c54:	00008067          	ret

0000000080008c58 <uartgetc>:
    80008c58:	ff010113          	addi	sp,sp,-16
    80008c5c:	00813423          	sd	s0,8(sp)
    80008c60:	01010413          	addi	s0,sp,16
    80008c64:	10000737          	lui	a4,0x10000
    80008c68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008c6c:	0017f793          	andi	a5,a5,1
    80008c70:	00078c63          	beqz	a5,80008c88 <uartgetc+0x30>
    80008c74:	00074503          	lbu	a0,0(a4)
    80008c78:	0ff57513          	andi	a0,a0,255
    80008c7c:	00813403          	ld	s0,8(sp)
    80008c80:	01010113          	addi	sp,sp,16
    80008c84:	00008067          	ret
    80008c88:	fff00513          	li	a0,-1
    80008c8c:	ff1ff06f          	j	80008c7c <uartgetc+0x24>

0000000080008c90 <uartintr>:
    80008c90:	100007b7          	lui	a5,0x10000
    80008c94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008c98:	0017f793          	andi	a5,a5,1
    80008c9c:	0a078463          	beqz	a5,80008d44 <uartintr+0xb4>
    80008ca0:	fe010113          	addi	sp,sp,-32
    80008ca4:	00813823          	sd	s0,16(sp)
    80008ca8:	00913423          	sd	s1,8(sp)
    80008cac:	00113c23          	sd	ra,24(sp)
    80008cb0:	02010413          	addi	s0,sp,32
    80008cb4:	100004b7          	lui	s1,0x10000
    80008cb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80008cbc:	0ff57513          	andi	a0,a0,255
    80008cc0:	fffff097          	auipc	ra,0xfffff
    80008cc4:	534080e7          	jalr	1332(ra) # 800081f4 <consoleintr>
    80008cc8:	0054c783          	lbu	a5,5(s1)
    80008ccc:	0017f793          	andi	a5,a5,1
    80008cd0:	fe0794e3          	bnez	a5,80008cb8 <uartintr+0x28>
    80008cd4:	00004617          	auipc	a2,0x4
    80008cd8:	11c60613          	addi	a2,a2,284 # 8000cdf0 <uart_tx_r>
    80008cdc:	00004517          	auipc	a0,0x4
    80008ce0:	11c50513          	addi	a0,a0,284 # 8000cdf8 <uart_tx_w>
    80008ce4:	00063783          	ld	a5,0(a2)
    80008ce8:	00053703          	ld	a4,0(a0)
    80008cec:	04f70263          	beq	a4,a5,80008d30 <uartintr+0xa0>
    80008cf0:	100005b7          	lui	a1,0x10000
    80008cf4:	00005817          	auipc	a6,0x5
    80008cf8:	65c80813          	addi	a6,a6,1628 # 8000e350 <uart_tx_buf>
    80008cfc:	01c0006f          	j	80008d18 <uartintr+0x88>
    80008d00:	0006c703          	lbu	a4,0(a3)
    80008d04:	00f63023          	sd	a5,0(a2)
    80008d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008d0c:	00063783          	ld	a5,0(a2)
    80008d10:	00053703          	ld	a4,0(a0)
    80008d14:	00f70e63          	beq	a4,a5,80008d30 <uartintr+0xa0>
    80008d18:	01f7f713          	andi	a4,a5,31
    80008d1c:	00e806b3          	add	a3,a6,a4
    80008d20:	0055c703          	lbu	a4,5(a1)
    80008d24:	00178793          	addi	a5,a5,1
    80008d28:	02077713          	andi	a4,a4,32
    80008d2c:	fc071ae3          	bnez	a4,80008d00 <uartintr+0x70>
    80008d30:	01813083          	ld	ra,24(sp)
    80008d34:	01013403          	ld	s0,16(sp)
    80008d38:	00813483          	ld	s1,8(sp)
    80008d3c:	02010113          	addi	sp,sp,32
    80008d40:	00008067          	ret
    80008d44:	00004617          	auipc	a2,0x4
    80008d48:	0ac60613          	addi	a2,a2,172 # 8000cdf0 <uart_tx_r>
    80008d4c:	00004517          	auipc	a0,0x4
    80008d50:	0ac50513          	addi	a0,a0,172 # 8000cdf8 <uart_tx_w>
    80008d54:	00063783          	ld	a5,0(a2)
    80008d58:	00053703          	ld	a4,0(a0)
    80008d5c:	04f70263          	beq	a4,a5,80008da0 <uartintr+0x110>
    80008d60:	100005b7          	lui	a1,0x10000
    80008d64:	00005817          	auipc	a6,0x5
    80008d68:	5ec80813          	addi	a6,a6,1516 # 8000e350 <uart_tx_buf>
    80008d6c:	01c0006f          	j	80008d88 <uartintr+0xf8>
    80008d70:	0006c703          	lbu	a4,0(a3)
    80008d74:	00f63023          	sd	a5,0(a2)
    80008d78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008d7c:	00063783          	ld	a5,0(a2)
    80008d80:	00053703          	ld	a4,0(a0)
    80008d84:	02f70063          	beq	a4,a5,80008da4 <uartintr+0x114>
    80008d88:	01f7f713          	andi	a4,a5,31
    80008d8c:	00e806b3          	add	a3,a6,a4
    80008d90:	0055c703          	lbu	a4,5(a1)
    80008d94:	00178793          	addi	a5,a5,1
    80008d98:	02077713          	andi	a4,a4,32
    80008d9c:	fc071ae3          	bnez	a4,80008d70 <uartintr+0xe0>
    80008da0:	00008067          	ret
    80008da4:	00008067          	ret

0000000080008da8 <kinit>:
    80008da8:	fc010113          	addi	sp,sp,-64
    80008dac:	02913423          	sd	s1,40(sp)
    80008db0:	fffff7b7          	lui	a5,0xfffff
    80008db4:	00006497          	auipc	s1,0x6
    80008db8:	5bb48493          	addi	s1,s1,1467 # 8000f36f <end+0xfff>
    80008dbc:	02813823          	sd	s0,48(sp)
    80008dc0:	01313c23          	sd	s3,24(sp)
    80008dc4:	00f4f4b3          	and	s1,s1,a5
    80008dc8:	02113c23          	sd	ra,56(sp)
    80008dcc:	03213023          	sd	s2,32(sp)
    80008dd0:	01413823          	sd	s4,16(sp)
    80008dd4:	01513423          	sd	s5,8(sp)
    80008dd8:	04010413          	addi	s0,sp,64
    80008ddc:	000017b7          	lui	a5,0x1
    80008de0:	01100993          	li	s3,17
    80008de4:	00f487b3          	add	a5,s1,a5
    80008de8:	01b99993          	slli	s3,s3,0x1b
    80008dec:	06f9e063          	bltu	s3,a5,80008e4c <kinit+0xa4>
    80008df0:	00005a97          	auipc	s5,0x5
    80008df4:	580a8a93          	addi	s5,s5,1408 # 8000e370 <end>
    80008df8:	0754ec63          	bltu	s1,s5,80008e70 <kinit+0xc8>
    80008dfc:	0734fa63          	bgeu	s1,s3,80008e70 <kinit+0xc8>
    80008e00:	00088a37          	lui	s4,0x88
    80008e04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008e08:	00004917          	auipc	s2,0x4
    80008e0c:	ff890913          	addi	s2,s2,-8 # 8000ce00 <kmem>
    80008e10:	00ca1a13          	slli	s4,s4,0xc
    80008e14:	0140006f          	j	80008e28 <kinit+0x80>
    80008e18:	000017b7          	lui	a5,0x1
    80008e1c:	00f484b3          	add	s1,s1,a5
    80008e20:	0554e863          	bltu	s1,s5,80008e70 <kinit+0xc8>
    80008e24:	0534f663          	bgeu	s1,s3,80008e70 <kinit+0xc8>
    80008e28:	00001637          	lui	a2,0x1
    80008e2c:	00100593          	li	a1,1
    80008e30:	00048513          	mv	a0,s1
    80008e34:	00000097          	auipc	ra,0x0
    80008e38:	5e4080e7          	jalr	1508(ra) # 80009418 <__memset>
    80008e3c:	00093783          	ld	a5,0(s2)
    80008e40:	00f4b023          	sd	a5,0(s1)
    80008e44:	00993023          	sd	s1,0(s2)
    80008e48:	fd4498e3          	bne	s1,s4,80008e18 <kinit+0x70>
    80008e4c:	03813083          	ld	ra,56(sp)
    80008e50:	03013403          	ld	s0,48(sp)
    80008e54:	02813483          	ld	s1,40(sp)
    80008e58:	02013903          	ld	s2,32(sp)
    80008e5c:	01813983          	ld	s3,24(sp)
    80008e60:	01013a03          	ld	s4,16(sp)
    80008e64:	00813a83          	ld	s5,8(sp)
    80008e68:	04010113          	addi	sp,sp,64
    80008e6c:	00008067          	ret
    80008e70:	00002517          	auipc	a0,0x2
    80008e74:	94850513          	addi	a0,a0,-1720 # 8000a7b8 <digits+0x18>
    80008e78:	fffff097          	auipc	ra,0xfffff
    80008e7c:	4b4080e7          	jalr	1204(ra) # 8000832c <panic>

0000000080008e80 <freerange>:
    80008e80:	fc010113          	addi	sp,sp,-64
    80008e84:	000017b7          	lui	a5,0x1
    80008e88:	02913423          	sd	s1,40(sp)
    80008e8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008e90:	009504b3          	add	s1,a0,s1
    80008e94:	fffff537          	lui	a0,0xfffff
    80008e98:	02813823          	sd	s0,48(sp)
    80008e9c:	02113c23          	sd	ra,56(sp)
    80008ea0:	03213023          	sd	s2,32(sp)
    80008ea4:	01313c23          	sd	s3,24(sp)
    80008ea8:	01413823          	sd	s4,16(sp)
    80008eac:	01513423          	sd	s5,8(sp)
    80008eb0:	01613023          	sd	s6,0(sp)
    80008eb4:	04010413          	addi	s0,sp,64
    80008eb8:	00a4f4b3          	and	s1,s1,a0
    80008ebc:	00f487b3          	add	a5,s1,a5
    80008ec0:	06f5e463          	bltu	a1,a5,80008f28 <freerange+0xa8>
    80008ec4:	00005a97          	auipc	s5,0x5
    80008ec8:	4aca8a93          	addi	s5,s5,1196 # 8000e370 <end>
    80008ecc:	0954e263          	bltu	s1,s5,80008f50 <freerange+0xd0>
    80008ed0:	01100993          	li	s3,17
    80008ed4:	01b99993          	slli	s3,s3,0x1b
    80008ed8:	0734fc63          	bgeu	s1,s3,80008f50 <freerange+0xd0>
    80008edc:	00058a13          	mv	s4,a1
    80008ee0:	00004917          	auipc	s2,0x4
    80008ee4:	f2090913          	addi	s2,s2,-224 # 8000ce00 <kmem>
    80008ee8:	00002b37          	lui	s6,0x2
    80008eec:	0140006f          	j	80008f00 <freerange+0x80>
    80008ef0:	000017b7          	lui	a5,0x1
    80008ef4:	00f484b3          	add	s1,s1,a5
    80008ef8:	0554ec63          	bltu	s1,s5,80008f50 <freerange+0xd0>
    80008efc:	0534fa63          	bgeu	s1,s3,80008f50 <freerange+0xd0>
    80008f00:	00001637          	lui	a2,0x1
    80008f04:	00100593          	li	a1,1
    80008f08:	00048513          	mv	a0,s1
    80008f0c:	00000097          	auipc	ra,0x0
    80008f10:	50c080e7          	jalr	1292(ra) # 80009418 <__memset>
    80008f14:	00093703          	ld	a4,0(s2)
    80008f18:	016487b3          	add	a5,s1,s6
    80008f1c:	00e4b023          	sd	a4,0(s1)
    80008f20:	00993023          	sd	s1,0(s2)
    80008f24:	fcfa76e3          	bgeu	s4,a5,80008ef0 <freerange+0x70>
    80008f28:	03813083          	ld	ra,56(sp)
    80008f2c:	03013403          	ld	s0,48(sp)
    80008f30:	02813483          	ld	s1,40(sp)
    80008f34:	02013903          	ld	s2,32(sp)
    80008f38:	01813983          	ld	s3,24(sp)
    80008f3c:	01013a03          	ld	s4,16(sp)
    80008f40:	00813a83          	ld	s5,8(sp)
    80008f44:	00013b03          	ld	s6,0(sp)
    80008f48:	04010113          	addi	sp,sp,64
    80008f4c:	00008067          	ret
    80008f50:	00002517          	auipc	a0,0x2
    80008f54:	86850513          	addi	a0,a0,-1944 # 8000a7b8 <digits+0x18>
    80008f58:	fffff097          	auipc	ra,0xfffff
    80008f5c:	3d4080e7          	jalr	980(ra) # 8000832c <panic>

0000000080008f60 <kfree>:
    80008f60:	fe010113          	addi	sp,sp,-32
    80008f64:	00813823          	sd	s0,16(sp)
    80008f68:	00113c23          	sd	ra,24(sp)
    80008f6c:	00913423          	sd	s1,8(sp)
    80008f70:	02010413          	addi	s0,sp,32
    80008f74:	03451793          	slli	a5,a0,0x34
    80008f78:	04079c63          	bnez	a5,80008fd0 <kfree+0x70>
    80008f7c:	00005797          	auipc	a5,0x5
    80008f80:	3f478793          	addi	a5,a5,1012 # 8000e370 <end>
    80008f84:	00050493          	mv	s1,a0
    80008f88:	04f56463          	bltu	a0,a5,80008fd0 <kfree+0x70>
    80008f8c:	01100793          	li	a5,17
    80008f90:	01b79793          	slli	a5,a5,0x1b
    80008f94:	02f57e63          	bgeu	a0,a5,80008fd0 <kfree+0x70>
    80008f98:	00001637          	lui	a2,0x1
    80008f9c:	00100593          	li	a1,1
    80008fa0:	00000097          	auipc	ra,0x0
    80008fa4:	478080e7          	jalr	1144(ra) # 80009418 <__memset>
    80008fa8:	00004797          	auipc	a5,0x4
    80008fac:	e5878793          	addi	a5,a5,-424 # 8000ce00 <kmem>
    80008fb0:	0007b703          	ld	a4,0(a5)
    80008fb4:	01813083          	ld	ra,24(sp)
    80008fb8:	01013403          	ld	s0,16(sp)
    80008fbc:	00e4b023          	sd	a4,0(s1)
    80008fc0:	0097b023          	sd	s1,0(a5)
    80008fc4:	00813483          	ld	s1,8(sp)
    80008fc8:	02010113          	addi	sp,sp,32
    80008fcc:	00008067          	ret
    80008fd0:	00001517          	auipc	a0,0x1
    80008fd4:	7e850513          	addi	a0,a0,2024 # 8000a7b8 <digits+0x18>
    80008fd8:	fffff097          	auipc	ra,0xfffff
    80008fdc:	354080e7          	jalr	852(ra) # 8000832c <panic>

0000000080008fe0 <kalloc>:
    80008fe0:	fe010113          	addi	sp,sp,-32
    80008fe4:	00813823          	sd	s0,16(sp)
    80008fe8:	00913423          	sd	s1,8(sp)
    80008fec:	00113c23          	sd	ra,24(sp)
    80008ff0:	02010413          	addi	s0,sp,32
    80008ff4:	00004797          	auipc	a5,0x4
    80008ff8:	e0c78793          	addi	a5,a5,-500 # 8000ce00 <kmem>
    80008ffc:	0007b483          	ld	s1,0(a5)
    80009000:	02048063          	beqz	s1,80009020 <kalloc+0x40>
    80009004:	0004b703          	ld	a4,0(s1)
    80009008:	00001637          	lui	a2,0x1
    8000900c:	00500593          	li	a1,5
    80009010:	00048513          	mv	a0,s1
    80009014:	00e7b023          	sd	a4,0(a5)
    80009018:	00000097          	auipc	ra,0x0
    8000901c:	400080e7          	jalr	1024(ra) # 80009418 <__memset>
    80009020:	01813083          	ld	ra,24(sp)
    80009024:	01013403          	ld	s0,16(sp)
    80009028:	00048513          	mv	a0,s1
    8000902c:	00813483          	ld	s1,8(sp)
    80009030:	02010113          	addi	sp,sp,32
    80009034:	00008067          	ret

0000000080009038 <initlock>:
    80009038:	ff010113          	addi	sp,sp,-16
    8000903c:	00813423          	sd	s0,8(sp)
    80009040:	01010413          	addi	s0,sp,16
    80009044:	00813403          	ld	s0,8(sp)
    80009048:	00b53423          	sd	a1,8(a0)
    8000904c:	00052023          	sw	zero,0(a0)
    80009050:	00053823          	sd	zero,16(a0)
    80009054:	01010113          	addi	sp,sp,16
    80009058:	00008067          	ret

000000008000905c <acquire>:
    8000905c:	fe010113          	addi	sp,sp,-32
    80009060:	00813823          	sd	s0,16(sp)
    80009064:	00913423          	sd	s1,8(sp)
    80009068:	00113c23          	sd	ra,24(sp)
    8000906c:	01213023          	sd	s2,0(sp)
    80009070:	02010413          	addi	s0,sp,32
    80009074:	00050493          	mv	s1,a0
    80009078:	10002973          	csrr	s2,sstatus
    8000907c:	100027f3          	csrr	a5,sstatus
    80009080:	ffd7f793          	andi	a5,a5,-3
    80009084:	10079073          	csrw	sstatus,a5
    80009088:	fffff097          	auipc	ra,0xfffff
    8000908c:	8ec080e7          	jalr	-1812(ra) # 80007974 <mycpu>
    80009090:	07852783          	lw	a5,120(a0)
    80009094:	06078e63          	beqz	a5,80009110 <acquire+0xb4>
    80009098:	fffff097          	auipc	ra,0xfffff
    8000909c:	8dc080e7          	jalr	-1828(ra) # 80007974 <mycpu>
    800090a0:	07852783          	lw	a5,120(a0)
    800090a4:	0004a703          	lw	a4,0(s1)
    800090a8:	0017879b          	addiw	a5,a5,1
    800090ac:	06f52c23          	sw	a5,120(a0)
    800090b0:	04071063          	bnez	a4,800090f0 <acquire+0x94>
    800090b4:	00100713          	li	a4,1
    800090b8:	00070793          	mv	a5,a4
    800090bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800090c0:	0007879b          	sext.w	a5,a5
    800090c4:	fe079ae3          	bnez	a5,800090b8 <acquire+0x5c>
    800090c8:	0ff0000f          	fence
    800090cc:	fffff097          	auipc	ra,0xfffff
    800090d0:	8a8080e7          	jalr	-1880(ra) # 80007974 <mycpu>
    800090d4:	01813083          	ld	ra,24(sp)
    800090d8:	01013403          	ld	s0,16(sp)
    800090dc:	00a4b823          	sd	a0,16(s1)
    800090e0:	00013903          	ld	s2,0(sp)
    800090e4:	00813483          	ld	s1,8(sp)
    800090e8:	02010113          	addi	sp,sp,32
    800090ec:	00008067          	ret
    800090f0:	0104b903          	ld	s2,16(s1)
    800090f4:	fffff097          	auipc	ra,0xfffff
    800090f8:	880080e7          	jalr	-1920(ra) # 80007974 <mycpu>
    800090fc:	faa91ce3          	bne	s2,a0,800090b4 <acquire+0x58>
    80009100:	00001517          	auipc	a0,0x1
    80009104:	6c050513          	addi	a0,a0,1728 # 8000a7c0 <digits+0x20>
    80009108:	fffff097          	auipc	ra,0xfffff
    8000910c:	224080e7          	jalr	548(ra) # 8000832c <panic>
    80009110:	00195913          	srli	s2,s2,0x1
    80009114:	fffff097          	auipc	ra,0xfffff
    80009118:	860080e7          	jalr	-1952(ra) # 80007974 <mycpu>
    8000911c:	00197913          	andi	s2,s2,1
    80009120:	07252e23          	sw	s2,124(a0)
    80009124:	f75ff06f          	j	80009098 <acquire+0x3c>

0000000080009128 <release>:
    80009128:	fe010113          	addi	sp,sp,-32
    8000912c:	00813823          	sd	s0,16(sp)
    80009130:	00113c23          	sd	ra,24(sp)
    80009134:	00913423          	sd	s1,8(sp)
    80009138:	01213023          	sd	s2,0(sp)
    8000913c:	02010413          	addi	s0,sp,32
    80009140:	00052783          	lw	a5,0(a0)
    80009144:	00079a63          	bnez	a5,80009158 <release+0x30>
    80009148:	00001517          	auipc	a0,0x1
    8000914c:	68050513          	addi	a0,a0,1664 # 8000a7c8 <digits+0x28>
    80009150:	fffff097          	auipc	ra,0xfffff
    80009154:	1dc080e7          	jalr	476(ra) # 8000832c <panic>
    80009158:	01053903          	ld	s2,16(a0)
    8000915c:	00050493          	mv	s1,a0
    80009160:	fffff097          	auipc	ra,0xfffff
    80009164:	814080e7          	jalr	-2028(ra) # 80007974 <mycpu>
    80009168:	fea910e3          	bne	s2,a0,80009148 <release+0x20>
    8000916c:	0004b823          	sd	zero,16(s1)
    80009170:	0ff0000f          	fence
    80009174:	0f50000f          	fence	iorw,ow
    80009178:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000917c:	ffffe097          	auipc	ra,0xffffe
    80009180:	7f8080e7          	jalr	2040(ra) # 80007974 <mycpu>
    80009184:	100027f3          	csrr	a5,sstatus
    80009188:	0027f793          	andi	a5,a5,2
    8000918c:	04079a63          	bnez	a5,800091e0 <release+0xb8>
    80009190:	07852783          	lw	a5,120(a0)
    80009194:	02f05e63          	blez	a5,800091d0 <release+0xa8>
    80009198:	fff7871b          	addiw	a4,a5,-1
    8000919c:	06e52c23          	sw	a4,120(a0)
    800091a0:	00071c63          	bnez	a4,800091b8 <release+0x90>
    800091a4:	07c52783          	lw	a5,124(a0)
    800091a8:	00078863          	beqz	a5,800091b8 <release+0x90>
    800091ac:	100027f3          	csrr	a5,sstatus
    800091b0:	0027e793          	ori	a5,a5,2
    800091b4:	10079073          	csrw	sstatus,a5
    800091b8:	01813083          	ld	ra,24(sp)
    800091bc:	01013403          	ld	s0,16(sp)
    800091c0:	00813483          	ld	s1,8(sp)
    800091c4:	00013903          	ld	s2,0(sp)
    800091c8:	02010113          	addi	sp,sp,32
    800091cc:	00008067          	ret
    800091d0:	00001517          	auipc	a0,0x1
    800091d4:	61850513          	addi	a0,a0,1560 # 8000a7e8 <digits+0x48>
    800091d8:	fffff097          	auipc	ra,0xfffff
    800091dc:	154080e7          	jalr	340(ra) # 8000832c <panic>
    800091e0:	00001517          	auipc	a0,0x1
    800091e4:	5f050513          	addi	a0,a0,1520 # 8000a7d0 <digits+0x30>
    800091e8:	fffff097          	auipc	ra,0xfffff
    800091ec:	144080e7          	jalr	324(ra) # 8000832c <panic>

00000000800091f0 <holding>:
    800091f0:	00052783          	lw	a5,0(a0)
    800091f4:	00079663          	bnez	a5,80009200 <holding+0x10>
    800091f8:	00000513          	li	a0,0
    800091fc:	00008067          	ret
    80009200:	fe010113          	addi	sp,sp,-32
    80009204:	00813823          	sd	s0,16(sp)
    80009208:	00913423          	sd	s1,8(sp)
    8000920c:	00113c23          	sd	ra,24(sp)
    80009210:	02010413          	addi	s0,sp,32
    80009214:	01053483          	ld	s1,16(a0)
    80009218:	ffffe097          	auipc	ra,0xffffe
    8000921c:	75c080e7          	jalr	1884(ra) # 80007974 <mycpu>
    80009220:	01813083          	ld	ra,24(sp)
    80009224:	01013403          	ld	s0,16(sp)
    80009228:	40a48533          	sub	a0,s1,a0
    8000922c:	00153513          	seqz	a0,a0
    80009230:	00813483          	ld	s1,8(sp)
    80009234:	02010113          	addi	sp,sp,32
    80009238:	00008067          	ret

000000008000923c <push_off>:
    8000923c:	fe010113          	addi	sp,sp,-32
    80009240:	00813823          	sd	s0,16(sp)
    80009244:	00113c23          	sd	ra,24(sp)
    80009248:	00913423          	sd	s1,8(sp)
    8000924c:	02010413          	addi	s0,sp,32
    80009250:	100024f3          	csrr	s1,sstatus
    80009254:	100027f3          	csrr	a5,sstatus
    80009258:	ffd7f793          	andi	a5,a5,-3
    8000925c:	10079073          	csrw	sstatus,a5
    80009260:	ffffe097          	auipc	ra,0xffffe
    80009264:	714080e7          	jalr	1812(ra) # 80007974 <mycpu>
    80009268:	07852783          	lw	a5,120(a0)
    8000926c:	02078663          	beqz	a5,80009298 <push_off+0x5c>
    80009270:	ffffe097          	auipc	ra,0xffffe
    80009274:	704080e7          	jalr	1796(ra) # 80007974 <mycpu>
    80009278:	07852783          	lw	a5,120(a0)
    8000927c:	01813083          	ld	ra,24(sp)
    80009280:	01013403          	ld	s0,16(sp)
    80009284:	0017879b          	addiw	a5,a5,1
    80009288:	06f52c23          	sw	a5,120(a0)
    8000928c:	00813483          	ld	s1,8(sp)
    80009290:	02010113          	addi	sp,sp,32
    80009294:	00008067          	ret
    80009298:	0014d493          	srli	s1,s1,0x1
    8000929c:	ffffe097          	auipc	ra,0xffffe
    800092a0:	6d8080e7          	jalr	1752(ra) # 80007974 <mycpu>
    800092a4:	0014f493          	andi	s1,s1,1
    800092a8:	06952e23          	sw	s1,124(a0)
    800092ac:	fc5ff06f          	j	80009270 <push_off+0x34>

00000000800092b0 <pop_off>:
    800092b0:	ff010113          	addi	sp,sp,-16
    800092b4:	00813023          	sd	s0,0(sp)
    800092b8:	00113423          	sd	ra,8(sp)
    800092bc:	01010413          	addi	s0,sp,16
    800092c0:	ffffe097          	auipc	ra,0xffffe
    800092c4:	6b4080e7          	jalr	1716(ra) # 80007974 <mycpu>
    800092c8:	100027f3          	csrr	a5,sstatus
    800092cc:	0027f793          	andi	a5,a5,2
    800092d0:	04079663          	bnez	a5,8000931c <pop_off+0x6c>
    800092d4:	07852783          	lw	a5,120(a0)
    800092d8:	02f05a63          	blez	a5,8000930c <pop_off+0x5c>
    800092dc:	fff7871b          	addiw	a4,a5,-1
    800092e0:	06e52c23          	sw	a4,120(a0)
    800092e4:	00071c63          	bnez	a4,800092fc <pop_off+0x4c>
    800092e8:	07c52783          	lw	a5,124(a0)
    800092ec:	00078863          	beqz	a5,800092fc <pop_off+0x4c>
    800092f0:	100027f3          	csrr	a5,sstatus
    800092f4:	0027e793          	ori	a5,a5,2
    800092f8:	10079073          	csrw	sstatus,a5
    800092fc:	00813083          	ld	ra,8(sp)
    80009300:	00013403          	ld	s0,0(sp)
    80009304:	01010113          	addi	sp,sp,16
    80009308:	00008067          	ret
    8000930c:	00001517          	auipc	a0,0x1
    80009310:	4dc50513          	addi	a0,a0,1244 # 8000a7e8 <digits+0x48>
    80009314:	fffff097          	auipc	ra,0xfffff
    80009318:	018080e7          	jalr	24(ra) # 8000832c <panic>
    8000931c:	00001517          	auipc	a0,0x1
    80009320:	4b450513          	addi	a0,a0,1204 # 8000a7d0 <digits+0x30>
    80009324:	fffff097          	auipc	ra,0xfffff
    80009328:	008080e7          	jalr	8(ra) # 8000832c <panic>

000000008000932c <push_on>:
    8000932c:	fe010113          	addi	sp,sp,-32
    80009330:	00813823          	sd	s0,16(sp)
    80009334:	00113c23          	sd	ra,24(sp)
    80009338:	00913423          	sd	s1,8(sp)
    8000933c:	02010413          	addi	s0,sp,32
    80009340:	100024f3          	csrr	s1,sstatus
    80009344:	100027f3          	csrr	a5,sstatus
    80009348:	0027e793          	ori	a5,a5,2
    8000934c:	10079073          	csrw	sstatus,a5
    80009350:	ffffe097          	auipc	ra,0xffffe
    80009354:	624080e7          	jalr	1572(ra) # 80007974 <mycpu>
    80009358:	07852783          	lw	a5,120(a0)
    8000935c:	02078663          	beqz	a5,80009388 <push_on+0x5c>
    80009360:	ffffe097          	auipc	ra,0xffffe
    80009364:	614080e7          	jalr	1556(ra) # 80007974 <mycpu>
    80009368:	07852783          	lw	a5,120(a0)
    8000936c:	01813083          	ld	ra,24(sp)
    80009370:	01013403          	ld	s0,16(sp)
    80009374:	0017879b          	addiw	a5,a5,1
    80009378:	06f52c23          	sw	a5,120(a0)
    8000937c:	00813483          	ld	s1,8(sp)
    80009380:	02010113          	addi	sp,sp,32
    80009384:	00008067          	ret
    80009388:	0014d493          	srli	s1,s1,0x1
    8000938c:	ffffe097          	auipc	ra,0xffffe
    80009390:	5e8080e7          	jalr	1512(ra) # 80007974 <mycpu>
    80009394:	0014f493          	andi	s1,s1,1
    80009398:	06952e23          	sw	s1,124(a0)
    8000939c:	fc5ff06f          	j	80009360 <push_on+0x34>

00000000800093a0 <pop_on>:
    800093a0:	ff010113          	addi	sp,sp,-16
    800093a4:	00813023          	sd	s0,0(sp)
    800093a8:	00113423          	sd	ra,8(sp)
    800093ac:	01010413          	addi	s0,sp,16
    800093b0:	ffffe097          	auipc	ra,0xffffe
    800093b4:	5c4080e7          	jalr	1476(ra) # 80007974 <mycpu>
    800093b8:	100027f3          	csrr	a5,sstatus
    800093bc:	0027f793          	andi	a5,a5,2
    800093c0:	04078463          	beqz	a5,80009408 <pop_on+0x68>
    800093c4:	07852783          	lw	a5,120(a0)
    800093c8:	02f05863          	blez	a5,800093f8 <pop_on+0x58>
    800093cc:	fff7879b          	addiw	a5,a5,-1
    800093d0:	06f52c23          	sw	a5,120(a0)
    800093d4:	07853783          	ld	a5,120(a0)
    800093d8:	00079863          	bnez	a5,800093e8 <pop_on+0x48>
    800093dc:	100027f3          	csrr	a5,sstatus
    800093e0:	ffd7f793          	andi	a5,a5,-3
    800093e4:	10079073          	csrw	sstatus,a5
    800093e8:	00813083          	ld	ra,8(sp)
    800093ec:	00013403          	ld	s0,0(sp)
    800093f0:	01010113          	addi	sp,sp,16
    800093f4:	00008067          	ret
    800093f8:	00001517          	auipc	a0,0x1
    800093fc:	41850513          	addi	a0,a0,1048 # 8000a810 <digits+0x70>
    80009400:	fffff097          	auipc	ra,0xfffff
    80009404:	f2c080e7          	jalr	-212(ra) # 8000832c <panic>
    80009408:	00001517          	auipc	a0,0x1
    8000940c:	3e850513          	addi	a0,a0,1000 # 8000a7f0 <digits+0x50>
    80009410:	fffff097          	auipc	ra,0xfffff
    80009414:	f1c080e7          	jalr	-228(ra) # 8000832c <panic>

0000000080009418 <__memset>:
    80009418:	ff010113          	addi	sp,sp,-16
    8000941c:	00813423          	sd	s0,8(sp)
    80009420:	01010413          	addi	s0,sp,16
    80009424:	1a060e63          	beqz	a2,800095e0 <__memset+0x1c8>
    80009428:	40a007b3          	neg	a5,a0
    8000942c:	0077f793          	andi	a5,a5,7
    80009430:	00778693          	addi	a3,a5,7
    80009434:	00b00813          	li	a6,11
    80009438:	0ff5f593          	andi	a1,a1,255
    8000943c:	fff6071b          	addiw	a4,a2,-1
    80009440:	1b06e663          	bltu	a3,a6,800095ec <__memset+0x1d4>
    80009444:	1cd76463          	bltu	a4,a3,8000960c <__memset+0x1f4>
    80009448:	1a078e63          	beqz	a5,80009604 <__memset+0x1ec>
    8000944c:	00b50023          	sb	a1,0(a0)
    80009450:	00100713          	li	a4,1
    80009454:	1ae78463          	beq	a5,a4,800095fc <__memset+0x1e4>
    80009458:	00b500a3          	sb	a1,1(a0)
    8000945c:	00200713          	li	a4,2
    80009460:	1ae78a63          	beq	a5,a4,80009614 <__memset+0x1fc>
    80009464:	00b50123          	sb	a1,2(a0)
    80009468:	00300713          	li	a4,3
    8000946c:	18e78463          	beq	a5,a4,800095f4 <__memset+0x1dc>
    80009470:	00b501a3          	sb	a1,3(a0)
    80009474:	00400713          	li	a4,4
    80009478:	1ae78263          	beq	a5,a4,8000961c <__memset+0x204>
    8000947c:	00b50223          	sb	a1,4(a0)
    80009480:	00500713          	li	a4,5
    80009484:	1ae78063          	beq	a5,a4,80009624 <__memset+0x20c>
    80009488:	00b502a3          	sb	a1,5(a0)
    8000948c:	00700713          	li	a4,7
    80009490:	18e79e63          	bne	a5,a4,8000962c <__memset+0x214>
    80009494:	00b50323          	sb	a1,6(a0)
    80009498:	00700e93          	li	t4,7
    8000949c:	00859713          	slli	a4,a1,0x8
    800094a0:	00e5e733          	or	a4,a1,a4
    800094a4:	01059e13          	slli	t3,a1,0x10
    800094a8:	01c76e33          	or	t3,a4,t3
    800094ac:	01859313          	slli	t1,a1,0x18
    800094b0:	006e6333          	or	t1,t3,t1
    800094b4:	02059893          	slli	a7,a1,0x20
    800094b8:	40f60e3b          	subw	t3,a2,a5
    800094bc:	011368b3          	or	a7,t1,a7
    800094c0:	02859813          	slli	a6,a1,0x28
    800094c4:	0108e833          	or	a6,a7,a6
    800094c8:	03059693          	slli	a3,a1,0x30
    800094cc:	003e589b          	srliw	a7,t3,0x3
    800094d0:	00d866b3          	or	a3,a6,a3
    800094d4:	03859713          	slli	a4,a1,0x38
    800094d8:	00389813          	slli	a6,a7,0x3
    800094dc:	00f507b3          	add	a5,a0,a5
    800094e0:	00e6e733          	or	a4,a3,a4
    800094e4:	000e089b          	sext.w	a7,t3
    800094e8:	00f806b3          	add	a3,a6,a5
    800094ec:	00e7b023          	sd	a4,0(a5)
    800094f0:	00878793          	addi	a5,a5,8
    800094f4:	fed79ce3          	bne	a5,a3,800094ec <__memset+0xd4>
    800094f8:	ff8e7793          	andi	a5,t3,-8
    800094fc:	0007871b          	sext.w	a4,a5
    80009500:	01d787bb          	addw	a5,a5,t4
    80009504:	0ce88e63          	beq	a7,a4,800095e0 <__memset+0x1c8>
    80009508:	00f50733          	add	a4,a0,a5
    8000950c:	00b70023          	sb	a1,0(a4)
    80009510:	0017871b          	addiw	a4,a5,1
    80009514:	0cc77663          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009518:	00e50733          	add	a4,a0,a4
    8000951c:	00b70023          	sb	a1,0(a4)
    80009520:	0027871b          	addiw	a4,a5,2
    80009524:	0ac77e63          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009528:	00e50733          	add	a4,a0,a4
    8000952c:	00b70023          	sb	a1,0(a4)
    80009530:	0037871b          	addiw	a4,a5,3
    80009534:	0ac77663          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009538:	00e50733          	add	a4,a0,a4
    8000953c:	00b70023          	sb	a1,0(a4)
    80009540:	0047871b          	addiw	a4,a5,4
    80009544:	08c77e63          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009548:	00e50733          	add	a4,a0,a4
    8000954c:	00b70023          	sb	a1,0(a4)
    80009550:	0057871b          	addiw	a4,a5,5
    80009554:	08c77663          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009558:	00e50733          	add	a4,a0,a4
    8000955c:	00b70023          	sb	a1,0(a4)
    80009560:	0067871b          	addiw	a4,a5,6
    80009564:	06c77e63          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009568:	00e50733          	add	a4,a0,a4
    8000956c:	00b70023          	sb	a1,0(a4)
    80009570:	0077871b          	addiw	a4,a5,7
    80009574:	06c77663          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009578:	00e50733          	add	a4,a0,a4
    8000957c:	00b70023          	sb	a1,0(a4)
    80009580:	0087871b          	addiw	a4,a5,8
    80009584:	04c77e63          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009588:	00e50733          	add	a4,a0,a4
    8000958c:	00b70023          	sb	a1,0(a4)
    80009590:	0097871b          	addiw	a4,a5,9
    80009594:	04c77663          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    80009598:	00e50733          	add	a4,a0,a4
    8000959c:	00b70023          	sb	a1,0(a4)
    800095a0:	00a7871b          	addiw	a4,a5,10
    800095a4:	02c77e63          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    800095a8:	00e50733          	add	a4,a0,a4
    800095ac:	00b70023          	sb	a1,0(a4)
    800095b0:	00b7871b          	addiw	a4,a5,11
    800095b4:	02c77663          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    800095b8:	00e50733          	add	a4,a0,a4
    800095bc:	00b70023          	sb	a1,0(a4)
    800095c0:	00c7871b          	addiw	a4,a5,12
    800095c4:	00c77e63          	bgeu	a4,a2,800095e0 <__memset+0x1c8>
    800095c8:	00e50733          	add	a4,a0,a4
    800095cc:	00b70023          	sb	a1,0(a4)
    800095d0:	00d7879b          	addiw	a5,a5,13
    800095d4:	00c7f663          	bgeu	a5,a2,800095e0 <__memset+0x1c8>
    800095d8:	00f507b3          	add	a5,a0,a5
    800095dc:	00b78023          	sb	a1,0(a5)
    800095e0:	00813403          	ld	s0,8(sp)
    800095e4:	01010113          	addi	sp,sp,16
    800095e8:	00008067          	ret
    800095ec:	00b00693          	li	a3,11
    800095f0:	e55ff06f          	j	80009444 <__memset+0x2c>
    800095f4:	00300e93          	li	t4,3
    800095f8:	ea5ff06f          	j	8000949c <__memset+0x84>
    800095fc:	00100e93          	li	t4,1
    80009600:	e9dff06f          	j	8000949c <__memset+0x84>
    80009604:	00000e93          	li	t4,0
    80009608:	e95ff06f          	j	8000949c <__memset+0x84>
    8000960c:	00000793          	li	a5,0
    80009610:	ef9ff06f          	j	80009508 <__memset+0xf0>
    80009614:	00200e93          	li	t4,2
    80009618:	e85ff06f          	j	8000949c <__memset+0x84>
    8000961c:	00400e93          	li	t4,4
    80009620:	e7dff06f          	j	8000949c <__memset+0x84>
    80009624:	00500e93          	li	t4,5
    80009628:	e75ff06f          	j	8000949c <__memset+0x84>
    8000962c:	00600e93          	li	t4,6
    80009630:	e6dff06f          	j	8000949c <__memset+0x84>

0000000080009634 <__memmove>:
    80009634:	ff010113          	addi	sp,sp,-16
    80009638:	00813423          	sd	s0,8(sp)
    8000963c:	01010413          	addi	s0,sp,16
    80009640:	0e060863          	beqz	a2,80009730 <__memmove+0xfc>
    80009644:	fff6069b          	addiw	a3,a2,-1
    80009648:	0006881b          	sext.w	a6,a3
    8000964c:	0ea5e863          	bltu	a1,a0,8000973c <__memmove+0x108>
    80009650:	00758713          	addi	a4,a1,7
    80009654:	00a5e7b3          	or	a5,a1,a0
    80009658:	40a70733          	sub	a4,a4,a0
    8000965c:	0077f793          	andi	a5,a5,7
    80009660:	00f73713          	sltiu	a4,a4,15
    80009664:	00174713          	xori	a4,a4,1
    80009668:	0017b793          	seqz	a5,a5
    8000966c:	00e7f7b3          	and	a5,a5,a4
    80009670:	10078863          	beqz	a5,80009780 <__memmove+0x14c>
    80009674:	00900793          	li	a5,9
    80009678:	1107f463          	bgeu	a5,a6,80009780 <__memmove+0x14c>
    8000967c:	0036581b          	srliw	a6,a2,0x3
    80009680:	fff8081b          	addiw	a6,a6,-1
    80009684:	02081813          	slli	a6,a6,0x20
    80009688:	01d85893          	srli	a7,a6,0x1d
    8000968c:	00858813          	addi	a6,a1,8
    80009690:	00058793          	mv	a5,a1
    80009694:	00050713          	mv	a4,a0
    80009698:	01088833          	add	a6,a7,a6
    8000969c:	0007b883          	ld	a7,0(a5)
    800096a0:	00878793          	addi	a5,a5,8
    800096a4:	00870713          	addi	a4,a4,8
    800096a8:	ff173c23          	sd	a7,-8(a4)
    800096ac:	ff0798e3          	bne	a5,a6,8000969c <__memmove+0x68>
    800096b0:	ff867713          	andi	a4,a2,-8
    800096b4:	02071793          	slli	a5,a4,0x20
    800096b8:	0207d793          	srli	a5,a5,0x20
    800096bc:	00f585b3          	add	a1,a1,a5
    800096c0:	40e686bb          	subw	a3,a3,a4
    800096c4:	00f507b3          	add	a5,a0,a5
    800096c8:	06e60463          	beq	a2,a4,80009730 <__memmove+0xfc>
    800096cc:	0005c703          	lbu	a4,0(a1)
    800096d0:	00e78023          	sb	a4,0(a5)
    800096d4:	04068e63          	beqz	a3,80009730 <__memmove+0xfc>
    800096d8:	0015c603          	lbu	a2,1(a1)
    800096dc:	00100713          	li	a4,1
    800096e0:	00c780a3          	sb	a2,1(a5)
    800096e4:	04e68663          	beq	a3,a4,80009730 <__memmove+0xfc>
    800096e8:	0025c603          	lbu	a2,2(a1)
    800096ec:	00200713          	li	a4,2
    800096f0:	00c78123          	sb	a2,2(a5)
    800096f4:	02e68e63          	beq	a3,a4,80009730 <__memmove+0xfc>
    800096f8:	0035c603          	lbu	a2,3(a1)
    800096fc:	00300713          	li	a4,3
    80009700:	00c781a3          	sb	a2,3(a5)
    80009704:	02e68663          	beq	a3,a4,80009730 <__memmove+0xfc>
    80009708:	0045c603          	lbu	a2,4(a1)
    8000970c:	00400713          	li	a4,4
    80009710:	00c78223          	sb	a2,4(a5)
    80009714:	00e68e63          	beq	a3,a4,80009730 <__memmove+0xfc>
    80009718:	0055c603          	lbu	a2,5(a1)
    8000971c:	00500713          	li	a4,5
    80009720:	00c782a3          	sb	a2,5(a5)
    80009724:	00e68663          	beq	a3,a4,80009730 <__memmove+0xfc>
    80009728:	0065c703          	lbu	a4,6(a1)
    8000972c:	00e78323          	sb	a4,6(a5)
    80009730:	00813403          	ld	s0,8(sp)
    80009734:	01010113          	addi	sp,sp,16
    80009738:	00008067          	ret
    8000973c:	02061713          	slli	a4,a2,0x20
    80009740:	02075713          	srli	a4,a4,0x20
    80009744:	00e587b3          	add	a5,a1,a4
    80009748:	f0f574e3          	bgeu	a0,a5,80009650 <__memmove+0x1c>
    8000974c:	02069613          	slli	a2,a3,0x20
    80009750:	02065613          	srli	a2,a2,0x20
    80009754:	fff64613          	not	a2,a2
    80009758:	00e50733          	add	a4,a0,a4
    8000975c:	00c78633          	add	a2,a5,a2
    80009760:	fff7c683          	lbu	a3,-1(a5)
    80009764:	fff78793          	addi	a5,a5,-1
    80009768:	fff70713          	addi	a4,a4,-1
    8000976c:	00d70023          	sb	a3,0(a4)
    80009770:	fec798e3          	bne	a5,a2,80009760 <__memmove+0x12c>
    80009774:	00813403          	ld	s0,8(sp)
    80009778:	01010113          	addi	sp,sp,16
    8000977c:	00008067          	ret
    80009780:	02069713          	slli	a4,a3,0x20
    80009784:	02075713          	srli	a4,a4,0x20
    80009788:	00170713          	addi	a4,a4,1
    8000978c:	00e50733          	add	a4,a0,a4
    80009790:	00050793          	mv	a5,a0
    80009794:	0005c683          	lbu	a3,0(a1)
    80009798:	00178793          	addi	a5,a5,1
    8000979c:	00158593          	addi	a1,a1,1
    800097a0:	fed78fa3          	sb	a3,-1(a5)
    800097a4:	fee798e3          	bne	a5,a4,80009794 <__memmove+0x160>
    800097a8:	f89ff06f          	j	80009730 <__memmove+0xfc>
	...
