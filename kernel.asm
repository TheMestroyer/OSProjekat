
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	91813103          	ld	sp,-1768(sp) # 8000c918 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	771060ef          	jal	ra,80006f8c <start>

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
    80001248:	1c4020ef          	jal	ra,8000340c <HandleInterupt>

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
    80001364:	5e890913          	addi	s2,s2,1512 # 8000c948 <mutex>
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
    800013c0:	58453503          	ld	a0,1412(a0) # 8000c940 <done>
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
    8000146c:	4e050513          	addi	a0,a0,1248 # 8000c948 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	228080e7          	jalr	552(ra) # 80001698 <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000b517          	auipc	a0,0xb
    80001480:	4c450513          	addi	a0,a0,1220 # 8000c940 <done>
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
    800014d8:	46c48493          	addi	s1,s1,1132 # 8000c940 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	264080e7          	jalr	612(ra) # 80001748 <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000b517          	auipc	a0,0xb
    800014f0:	45c53503          	ld	a0,1116(a0) # 8000c948 <mutex>
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
    80001834:	fec080e7          	jalr	-20(ra) # 8000281c <userMainK>
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
    80001888:	00c080e7          	jalr	12(ra) # 80003890 <start_main_thread>
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
    80001918:	48c080e7          	jalr	1164(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    8000191c:	01093583          	ld	a1,16(s2)
    80001920:	02058e63          	beqz	a1,8000195c <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        thread->setPrevInQueue(blockedTail);
    80001924:	00048513          	mv	a0,s1
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	494080e7          	jalr	1172(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    80001930:	00048593          	mv	a1,s1
    80001934:	01093503          	ld	a0,16(s2)
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	468080e7          	jalr	1128(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
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
    80001968:	458080e7          	jalr	1112(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
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
    800019a0:	3cc080e7          	jalr	972(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
    800019a4:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    800019a8:	04050663          	beqz	a0,800019f4 <_ZN10KSemaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    800019ac:	00000593          	li	a1,0
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	40c080e7          	jalr	1036(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    800019b8:	00000593          	li	a1,0
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	3e0080e7          	jalr	992(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800019c8:	00000593          	li	a1,0
    800019cc:	00048513          	mv	a0,s1
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	3ec080e7          	jalr	1004(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
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
    80001a34:	0805bc23          	sd	zero,152(a1)
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
    80001ac8:	578080e7          	jalr	1400(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
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
    80001b00:	08f5bc23          	sd	a5,152(a1)
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
    80001b28:	0805bc23          	sd	zero,152(a1)
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
    80001ba0:	4a0080e7          	jalr	1184(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
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
    80001bf0:	08f53c23          	sd	a5,152(a0)
        Scheduler::Put(thread);
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	448080e7          	jalr	1096(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
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
    80001ca8:	04053023          	sd	zero,64(a0)
    sleepDelta = 0;
    80001cac:	02053c23          	sd	zero,56(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001cb0:	00000713          	li	a4,0
    80001cb4:	01f00793          	li	a5,31
    80001cb8:	00e7ce63          	blt	a5,a4,80001cd4 <_ZN7KThread4initEv+0x54>
    80001cbc:	00870793          	addi	a5,a4,8 # 8008 <_entry-0x7fff7ff8>
    80001cc0:	00379793          	slli	a5,a5,0x3
    80001cc4:	00f507b3          	add	a5,a0,a5
    80001cc8:	0007b423          	sd	zero,8(a5)
    80001ccc:	0017071b          	addiw	a4,a4,1
    80001cd0:	fe5ff06f          	j	80001cb4 <_ZN7KThread4initEv+0x34>
    threadContext.sepc = 0;
    80001cd4:	14053423          	sd	zero,328(a0)
    threadContext.sstatus = 0;
    80001cd8:	14053823          	sd	zero,336(a0)
    threadContext.pc = 0;
    80001cdc:	14053c23          	sd	zero,344(a0)
}
    80001ce0:	00813403          	ld	s0,8(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00813423          	sd	s0,8(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001cf8:	00000713          	li	a4,0
    80001cfc:	01f00793          	li	a5,31
    80001d00:	02e7c463          	blt	a5,a4,80001d28 <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001d04:	00371793          	slli	a5,a4,0x3
    80001d08:	00f587b3          	add	a5,a1,a5
    80001d0c:	0007b683          	ld	a3,0(a5)
    80001d10:	00870793          	addi	a5,a4,8
    80001d14:	00379793          	slli	a5,a5,0x3
    80001d18:	00f507b3          	add	a5,a0,a5
    80001d1c:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    80001d20:	0017071b          	addiw	a4,a4,1
    80001d24:	fd9ff06f          	j	80001cfc <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001d28:	02853783          	ld	a5,40(a0)
    80001d2c:	04f53c23          	sd	a5,88(a0)
    threadContext.sepc = cont->sepc;
    80001d30:	1005b783          	ld	a5,256(a1)
    80001d34:	14f53423          	sd	a5,328(a0)
    threadContext.sstatus =cont->sstatus;
    80001d38:	1085b783          	ld	a5,264(a1)
    80001d3c:	14f53823          	sd	a5,336(a0)
}
    80001d40:	00813403          	ld	s0,8(sp)
    80001d44:	01010113          	addi	sp,sp,16
    80001d48:	00008067          	ret

0000000080001d4c <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813423          	sd	s0,8(sp)
    80001d54:	01010413          	addi	s0,sp,16
}
    80001d58:	04850513          	addi	a0,a0,72
    80001d5c:	00813403          	ld	s0,8(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813423          	sd	s0,8(sp)
    80001d70:	01010413          	addi	s0,sp,16
}
    80001d74:	02053503          	ld	a0,32(a0)
    80001d78:	00813403          	ld	s0,8(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret

0000000080001d84 <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00813423          	sd	s0,8(sp)
    80001d8c:	01010413          	addi	s0,sp,16
}
    80001d90:	01853503          	ld	a0,24(a0)
    80001d94:	00813403          	ld	s0,8(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00813423          	sd	s0,8(sp)
    80001da8:	01010413          	addi	s0,sp,16
    this->next = next;
    80001dac:	02b53023          	sd	a1,32(a0)
}
    80001db0:	00813403          	ld	s0,8(sp)
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00008067          	ret

0000000080001dbc <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001dc8:	00b53c23          	sd	a1,24(a0)
}
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001dd8:	fe010113          	addi	sp,sp,-32
    80001ddc:	00113c23          	sd	ra,24(sp)
    80001de0:	00813823          	sd	s0,16(sp)
    80001de4:	00913423          	sd	s1,8(sp)
    80001de8:	01213023          	sd	s2,0(sp)
    80001dec:	02010413          	addi	s0,sp,32
    80001df0:	00050493          	mv	s1,a0
    80001df4:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	fa8080e7          	jalr	-88(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001e00:	00090593          	mv	a1,s2
    80001e04:	00048513          	mv	a0,s1
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	fb4080e7          	jalr	-76(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
}
    80001e10:	01813083          	ld	ra,24(sp)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	00813483          	ld	s1,8(sp)
    80001e1c:	00013903          	ld	s2,0(sp)
    80001e20:	02010113          	addi	sp,sp,32
    80001e24:	00008067          	ret

0000000080001e28 <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813423          	sd	s0,8(sp)
    80001e30:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001e34:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001e38:	02c53423          	sd	a2,40(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001e3c:	04c53c23          	sd	a2,88(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001e40:	00000797          	auipc	a5,0x0
    80001e44:	de478793          	addi	a5,a5,-540 # 80001c24 <_ZN7KThread16threadTrampolineEPS_>
    80001e48:	14f53423          	sd	a5,328(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001e4c:	08a53c23          	sd	a0,152(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001e50:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001e54:	06f53023          	sd	a5,96(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001e58:	100027f3          	csrr	a5,sstatus
    sstatus_val &= ~(1UL << 8); // SPP=0
    80001e5c:	eff7f793          	andi	a5,a5,-257
    sstatus_val |= (1UL << 5); // SPIE=1
    80001e60:	0207e793          	ori	a5,a5,32
    threadContext.sstatus = sstatus_val;
    80001e64:	14f53823          	sd	a5,336(a0)
}
    80001e68:	00813403          	ld	s0,8(sp)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <_ZL8idleBodyPv>:
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00113423          	sd	ra,8(sp)
    80001e7c:	00813023          	sd	s0,0(sp)
    80001e80:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	7cc080e7          	jalr	1996(ra) # 80001650 <thread_dispatch>
    80001e8c:	ff9ff06f          	j	80001e84 <_ZL8idleBodyPv+0x10>

0000000080001e90 <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00813423          	sd	s0,8(sp)
    80001e98:	01010413          	addi	s0,sp,16
}
    80001e9c:	0000b517          	auipc	a0,0xb
    80001ea0:	ae453503          	ld	a0,-1308(a0) # 8000c980 <_ZN9Scheduler7runningE>
    80001ea4:	00813403          	ld	s0,8(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	00813023          	sd	s0,0(sp)
    80001ebc:	01010413          	addi	s0,sp,16
    80001ec0:	00058513          	mv	a0,a1
    running = newThread;
    80001ec4:	0000b797          	auipc	a5,0xb
    80001ec8:	aab7be23          	sd	a1,-1348(a5) # 8000c980 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	e80080e7          	jalr	-384(ra) # 80001d4c <_ZN7KThread10getContextEv>
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	1c0080e7          	jalr	448(ra) # 80001094 <restoreContext>
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN9Scheduler8freeDeadEv>:
void Scheduler::freeDead() {
    80001eec:	fe010113          	addi	sp,sp,-32
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00813823          	sd	s0,16(sp)
    80001ef8:	00913423          	sd	s1,8(sp)
    80001efc:	02010413          	addi	s0,sp,32
    if (deadThread == nullptr) return;
    80001f00:	0000b497          	auipc	s1,0xb
    80001f04:	a884b483          	ld	s1,-1400(s1) # 8000c988 <_ZN9Scheduler10deadThreadE>
    80001f08:	02048e63          	beqz	s1,80001f44 <_ZN9Scheduler8freeDeadEv+0x58>
    deadThread = nullptr;
    80001f0c:	0000b797          	auipc	a5,0xb
    80001f10:	a607be23          	sd	zero,-1412(a5) # 8000c988 <_ZN9Scheduler10deadThreadE>
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    80001f14:	0404b783          	ld	a5,64(s1)
    80001f18:	00078c63          	beqz	a5,80001f30 <_ZN9Scheduler8freeDeadEv+0x44>
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	33c080e7          	jalr	828(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f24:	0404b583          	ld	a1,64(s1)
    80001f28:	00001097          	auipc	ra,0x1
    80001f2c:	428080e7          	jalr	1064(ra) # 80003350 <_ZN15MemoryAllocator12FreeFragmentEPv>
    MemoryAllocator::GetInstance().FreeFragment(dead);
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	328080e7          	jalr	808(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f38:	00048593          	mv	a1,s1
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	414080e7          	jalr	1044(ra) # 80003350 <_ZN15MemoryAllocator12FreeFragmentEPv>
}
    80001f44:	01813083          	ld	ra,24(sp)
    80001f48:	01013403          	ld	s0,16(sp)
    80001f4c:	00813483          	ld	s1,8(sp)
    80001f50:	02010113          	addi	sp,sp,32
    80001f54:	00008067          	ret

0000000080001f58 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001f58:	fe010113          	addi	sp,sp,-32
    80001f5c:	00113c23          	sd	ra,24(sp)
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	02010413          	addi	s0,sp,32
    if (readyQueue == nullptr) return nullptr;
    80001f6c:	0000b497          	auipc	s1,0xb
    80001f70:	a244b483          	ld	s1,-1500(s1) # 8000c990 <_ZN9Scheduler10readyQueueE>
    80001f74:	04048463          	beqz	s1,80001fbc <_ZN9Scheduler7GetNextEv+0x64>
    readyQueue = readyQueue->getNextInQueue();
    80001f78:	00048513          	mv	a0,s1
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	dec080e7          	jalr	-532(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
    80001f84:	0000b797          	auipc	a5,0xb
    80001f88:	a0a7b623          	sd	a0,-1524(a5) # 8000c990 <_ZN9Scheduler10readyQueueE>
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    80001f8c:	04050463          	beqz	a0,80001fd4 <_ZN9Scheduler7GetNextEv+0x7c>
    80001f90:	00000593          	li	a1,0
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	e28080e7          	jalr	-472(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
    toRet->setNextInQueue(nullptr);
    80001f9c:	00000593          	li	a1,0
    80001fa0:	00048513          	mv	a0,s1
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	dfc080e7          	jalr	-516(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    toRet->setPrevInQueue(nullptr);
    80001fac:	00000593          	li	a1,0
    80001fb0:	00048513          	mv	a0,s1
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	e08080e7          	jalr	-504(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
}
    80001fbc:	00048513          	mv	a0,s1
    80001fc0:	01813083          	ld	ra,24(sp)
    80001fc4:	01013403          	ld	s0,16(sp)
    80001fc8:	00813483          	ld	s1,8(sp)
    80001fcc:	02010113          	addi	sp,sp,32
    80001fd0:	00008067          	ret
    else readyQueueEnd = nullptr;
    80001fd4:	0000b797          	auipc	a5,0xb
    80001fd8:	9c07b223          	sd	zero,-1596(a5) # 8000c998 <_ZN9Scheduler13readyQueueEndE>
    80001fdc:	fc1ff06f          	j	80001f9c <_ZN9Scheduler7GetNextEv+0x44>

0000000080001fe0 <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00113c23          	sd	ra,24(sp)
    80001fe8:	00813823          	sd	s0,16(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	00050493          	mv	s1,a0
    deadThread = t;
    80001ff8:	0000b797          	auipc	a5,0xb
    80001ffc:	98a7b823          	sd	a0,-1648(a5) # 8000c988 <_ZN9Scheduler10deadThreadE>
    KThread* next = GetNext();
    80002000:	00000097          	auipc	ra,0x0
    80002004:	f58080e7          	jalr	-168(ra) # 80001f58 <_ZN9Scheduler7GetNextEv>
    80002008:	00050593          	mv	a1,a0
    if (next == nullptr) {
    8000200c:	02050263          	beqz	a0,80002030 <_ZN9Scheduler10ThreadExitEP7KThread+0x50>
    yield(t, next);
    80002010:	00048513          	mv	a0,s1
    80002014:	00000097          	auipc	ra,0x0
    80002018:	e9c080e7          	jalr	-356(ra) # 80001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    8000201c:	01813083          	ld	ra,24(sp)
    80002020:	01013403          	ld	s0,16(sp)
    80002024:	00813483          	ld	s1,8(sp)
    80002028:	02010113          	addi	sp,sp,32
    8000202c:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80002030:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    80002034:	fc059ee3          	bnez	a1,80002010 <_ZN9Scheduler10ThreadExitEP7KThread+0x30>
    80002038:	0000006f          	j	80002038 <_ZN9Scheduler10ThreadExitEP7KThread+0x58>

000000008000203c <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	02010413          	addi	s0,sp,32
    80002050:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80002054:	00000593          	li	a1,0
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	d48080e7          	jalr	-696(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (readyQueueEnd != nullptr) {
    80002060:	0000b597          	auipc	a1,0xb
    80002064:	9385b583          	ld	a1,-1736(a1) # 8000c998 <_ZN9Scheduler13readyQueueEndE>
    80002068:	04058063          	beqz	a1,800020a8 <_ZN9Scheduler3PutEP7KThread+0x6c>
        thread->setPrevInQueue(readyQueueEnd);
    8000206c:	00048513          	mv	a0,s1
    80002070:	00000097          	auipc	ra,0x0
    80002074:	d4c080e7          	jalr	-692(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        readyQueueEnd->setNextInQueue(thread);
    80002078:	00048593          	mv	a1,s1
    8000207c:	0000b517          	auipc	a0,0xb
    80002080:	91c53503          	ld	a0,-1764(a0) # 8000c998 <_ZN9Scheduler13readyQueueEndE>
    80002084:	00000097          	auipc	ra,0x0
    80002088:	d1c080e7          	jalr	-740(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    8000208c:	0000b797          	auipc	a5,0xb
    80002090:	9097b623          	sd	s1,-1780(a5) # 8000c998 <_ZN9Scheduler13readyQueueEndE>
}
    80002094:	01813083          	ld	ra,24(sp)
    80002098:	01013403          	ld	s0,16(sp)
    8000209c:	00813483          	ld	s1,8(sp)
    800020a0:	02010113          	addi	sp,sp,32
    800020a4:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800020a8:	00000593          	li	a1,0
    800020ac:	00048513          	mv	a0,s1
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	d0c080e7          	jalr	-756(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        readyQueue = thread;
    800020b8:	0000b797          	auipc	a5,0xb
    800020bc:	8c97bc23          	sd	s1,-1832(a5) # 8000c990 <_ZN9Scheduler10readyQueueE>
    800020c0:	fcdff06f          	j	8000208c <_ZN9Scheduler3PutEP7KThread+0x50>

00000000800020c4 <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    800020d0:	0000b797          	auipc	a5,0xb
    800020d4:	8507b783          	ld	a5,-1968(a5) # 8000c920 <_GLOBAL_OFFSET_TABLE_+0x38>
    800020d8:	00778793          	addi	a5,a5,7
    800020dc:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    800020e0:	0000b717          	auipc	a4,0xb
    800020e4:	8cf73023          	sd	a5,-1856(a4) # 8000c9a0 <_ZN9Scheduler12stack_cursorE>
}
    800020e8:	00813403          	ld	s0,8(sp)
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret

00000000800020f4 <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    800020f4:	fe010113          	addi	sp,sp,-32
    800020f8:	00113c23          	sd	ra,24(sp)
    800020fc:	00813823          	sd	s0,16(sp)
    80002100:	00913423          	sd	s1,8(sp)
    80002104:	02010413          	addi	s0,sp,32
    SetupStartStack();
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	fbc080e7          	jalr	-68(ra) # 800020c4 <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    80002110:	00001097          	auipc	ra,0x1
    80002114:	148080e7          	jalr	328(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    80002118:	16000593          	li	a1,352
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	198080e7          	jalr	408(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002124:	0000b497          	auipc	s1,0xb
    80002128:	85c48493          	addi	s1,s1,-1956 # 8000c980 <_ZN9Scheduler7runningE>
    8000212c:	00a4b023          	sd	a0,0(s1)
    running->init();
    80002130:	00000097          	auipc	ra,0x0
    80002134:	b50080e7          	jalr	-1200(ra) # 80001c80 <_ZN7KThread4initEv>
    setupStartContext(running->getContext());
    80002138:	0004b503          	ld	a0,0(s1)
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	c10080e7          	jalr	-1008(ra) # 80001d4c <_ZN7KThread10getContextEv>
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	fe0080e7          	jalr	-32(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    8000214c:	00200793          	li	a5,2
    80002150:	0000a717          	auipc	a4,0xa
    80002154:	50f73823          	sd	a5,1296(a4) # 8000c660 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	100080e7          	jalr	256(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    80002160:	16000593          	li	a1,352
    80002164:	00001097          	auipc	ra,0x1
    80002168:	150080e7          	jalr	336(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    8000216c:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    80002170:	00000097          	auipc	ra,0x0
    80002174:	b10080e7          	jalr	-1264(ra) # 80001c80 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002178:	00000797          	auipc	a5,0x0
    8000217c:	cfc78793          	addi	a5,a5,-772 # 80001e74 <_ZL8idleBodyPv>
    80002180:	00f4b023          	sd	a5,0(s1)
    80002184:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	0d0080e7          	jalr	208(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    80002190:	000085b7          	lui	a1,0x8
    80002194:	00001097          	auipc	ra,0x1
    80002198:	120080e7          	jalr	288(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    8000219c:	00008637          	lui	a2,0x8
    800021a0:	00c50633          	add	a2,a0,a2
    800021a4:	00000593          	li	a1,0
    800021a8:	00048513          	mv	a0,s1
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	c7c080e7          	jalr	-900(ra) # 80001e28 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    800021b4:	00048513          	mv	a0,s1
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	e84080e7          	jalr	-380(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
}
    800021c0:	01813083          	ld	ra,24(sp)
    800021c4:	01013403          	ld	s0,16(sp)
    800021c8:	00813483          	ld	s1,8(sp)
    800021cc:	02010113          	addi	sp,sp,32
    800021d0:	00008067          	ret

00000000800021d4 <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00813423          	sd	s0,8(sp)
    800021dc:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    800021e0:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    800021e4:	04f53c23          	sd	a5,88(a0)
}
    800021e8:	00813403          	ld	s0,8(sp)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    800021f4:	fe010113          	addi	sp,sp,-32
    800021f8:	00113c23          	sd	ra,24(sp)
    800021fc:	00813823          	sd	s0,16(sp)
    80002200:	00913423          	sd	s1,8(sp)
    80002204:	01213023          	sd	s2,0(sp)
    80002208:	02010413          	addi	s0,sp,32
    8000220c:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80002210:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    80002214:	0000a797          	auipc	a5,0xa
    80002218:	7947b783          	ld	a5,1940(a5) # 8000c9a8 <_ZN9Scheduler10sleepQueueE>
    8000221c:	04078e63          	beqz	a5,80002278 <_ZN9Scheduler9timerTickEP7KThread+0x84>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80002220:	0387b703          	ld	a4,56(a5)
    80002224:	04070063          	beqz	a4,80002264 <_ZN9Scheduler9timerTickEP7KThread+0x70>
    80002228:	fff70713          	addi	a4,a4,-1
    8000222c:	02e7bc23          	sd	a4,56(a5)
    80002230:	0340006f          	j	80002264 <_ZN9Scheduler9timerTickEP7KThread+0x70>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    80002234:	00048513          	mv	a0,s1
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	b30080e7          	jalr	-1232(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
    80002240:	0000a797          	auipc	a5,0xa
    80002244:	76a7b423          	sd	a0,1896(a5) # 8000c9a8 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    80002248:	00000593          	li	a1,0
    8000224c:	00048513          	mv	a0,s1
    80002250:	00000097          	auipc	ra,0x0
    80002254:	b50080e7          	jalr	-1200(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    80002258:	00048513          	mv	a0,s1
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	de0080e7          	jalr	-544(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80002264:	0000a497          	auipc	s1,0xa
    80002268:	7444b483          	ld	s1,1860(s1) # 8000c9a8 <_ZN9Scheduler10sleepQueueE>
    8000226c:	00048663          	beqz	s1,80002278 <_ZN9Scheduler9timerTickEP7KThread+0x84>
    80002270:	0384b783          	ld	a5,56(s1)
    80002274:	fc0780e3          	beqz	a5,80002234 <_ZN9Scheduler9timerTickEP7KThread+0x40>
        }
    }

    if (current == nullptr) return;
    80002278:	02090463          	beqz	s2,800022a0 <_ZN9Scheduler9timerTickEP7KThread+0xac>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    8000227c:	0000a797          	auipc	a5,0xa
    80002280:	3e47b783          	ld	a5,996(a5) # 8000c660 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002284:	00078863          	beqz	a5,80002294 <_ZN9Scheduler9timerTickEP7KThread+0xa0>
    80002288:	fff78793          	addi	a5,a5,-1
    8000228c:	0000a717          	auipc	a4,0xa
    80002290:	3cf73a23          	sd	a5,980(a4) # 8000c660 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80002294:	0000a797          	auipc	a5,0xa
    80002298:	3cc7b783          	ld	a5,972(a5) # 8000c660 <_ZN9Scheduler21runningThreadTimeLeftE>
    8000229c:	00078e63          	beqz	a5,800022b8 <_ZN9Scheduler9timerTickEP7KThread+0xc4>
    KThread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	00813483          	ld	s1,8(sp)
    800022ac:	00013903          	ld	s2,0(sp)
    800022b0:	02010113          	addi	sp,sp,32
    800022b4:	00008067          	ret
    KThread* next = GetNext();
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	ca0080e7          	jalr	-864(ra) # 80001f58 <_ZN9Scheduler7GetNextEv>
    800022c0:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    800022c4:	00200793          	li	a5,2
    800022c8:	0000a717          	auipc	a4,0xa
    800022cc:	38f73c23          	sd	a5,920(a4) # 8000c660 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    800022d0:	fc0508e3          	beqz	a0,800022a0 <_ZN9Scheduler9timerTickEP7KThread+0xac>
    Put(current);
    800022d4:	00090513          	mv	a0,s2
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	d64080e7          	jalr	-668(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    800022e0:	00048593          	mv	a1,s1
    800022e4:	00090513          	mv	a0,s2
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	bc8080e7          	jalr	-1080(ra) # 80001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>
    800022f0:	fb1ff06f          	j	800022a0 <_ZN9Scheduler9timerTickEP7KThread+0xac>

00000000800022f4 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    800022f4:	fd010113          	addi	sp,sp,-48
    800022f8:	02113423          	sd	ra,40(sp)
    800022fc:	02813023          	sd	s0,32(sp)
    80002300:	00913c23          	sd	s1,24(sp)
    80002304:	01213823          	sd	s2,16(sp)
    80002308:	01313423          	sd	s3,8(sp)
    8000230c:	01413023          	sd	s4,0(sp)
    80002310:	03010413          	addi	s0,sp,48
    80002314:	00050a13          	mv	s4,a0
    80002318:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    8000231c:	0000a497          	auipc	s1,0xa
    80002320:	68c4b483          	ld	s1,1676(s1) # 8000c9a8 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    80002324:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    80002328:	02048463          	beqz	s1,80002350 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    8000232c:	0384b783          	ld	a5,56(s1)
    80002330:	02f96063          	bltu	s2,a5,80002350 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    80002334:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    80002338:	00048513          	mv	a0,s1
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	a2c080e7          	jalr	-1492(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    80002344:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    80002348:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    8000234c:	fddff06f          	j	80002328 <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    80002350:	032a3c23          	sd	s2,56(s4)
    thread->setNextInQueue(current);
    80002354:	00048593          	mv	a1,s1
    80002358:	000a0513          	mv	a0,s4
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	a44080e7          	jalr	-1468(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    80002364:	04098263          	beqz	s3,800023a8 <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    80002368:	000a0593          	mv	a1,s4
    8000236c:	00098513          	mv	a0,s3
    80002370:	00000097          	auipc	ra,0x0
    80002374:	a30080e7          	jalr	-1488(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    80002378:	00048863          	beqz	s1,80002388 <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    8000237c:	0384b583          	ld	a1,56(s1)
    80002380:	41258933          	sub	s2,a1,s2
    80002384:	0324bc23          	sd	s2,56(s1)
    80002388:	02813083          	ld	ra,40(sp)
    8000238c:	02013403          	ld	s0,32(sp)
    80002390:	01813483          	ld	s1,24(sp)
    80002394:	01013903          	ld	s2,16(sp)
    80002398:	00813983          	ld	s3,8(sp)
    8000239c:	00013a03          	ld	s4,0(sp)
    800023a0:	03010113          	addi	sp,sp,48
    800023a4:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    800023a8:	0000a797          	auipc	a5,0xa
    800023ac:	6147b023          	sd	s4,1536(a5) # 8000c9a8 <_ZN9Scheduler10sleepQueueE>
    800023b0:	fc9ff06f          	j	80002378 <_ZN9Scheduler5sleepEP7KThreadm+0x84>

00000000800023b4 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00113423          	sd	ra,8(sp)
    800023bc:	00813023          	sd	s0,0(sp)
    800023c0:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    800023c4:	0000a517          	auipc	a0,0xa
    800023c8:	5ec50513          	addi	a0,a0,1516 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    800023cc:	fffff097          	auipc	ra,0xfffff
    800023d0:	32c080e7          	jalr	812(ra) # 800016f8 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    800023d4:	0000a797          	auipc	a5,0xa
    800023d8:	5247b783          	ld	a5,1316(a5) # 8000c8f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023dc:	0007b783          	ld	a5,0(a5)
    800023e0:	0007c783          	lbu	a5,0(a5)
    800023e4:	0ff7f793          	andi	a5,a5,255
    800023e8:	0207f793          	andi	a5,a5,32
    800023ec:	fe0784e3          	beqz	a5,800023d4 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    800023f0:	0000a717          	auipc	a4,0xa
    800023f4:	5c070713          	addi	a4,a4,1472 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    800023f8:	01872783          	lw	a5,24(a4)
    800023fc:	01c72703          	lw	a4,28(a4)
    80002400:	fce782e3          	beq	a5,a4,800023c4 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002404:	0000a697          	auipc	a3,0xa
    80002408:	5ac68693          	addi	a3,a3,1452 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    8000240c:	00f68733          	add	a4,a3,a5
    80002410:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    80002414:	0017879b          	addiw	a5,a5,1
    80002418:	41f7d71b          	sraiw	a4,a5,0x1f
    8000241c:	0187571b          	srliw	a4,a4,0x18
    80002420:	00e787bb          	addw	a5,a5,a4
    80002424:	0ff7f793          	andi	a5,a5,255
    80002428:	40e787bb          	subw	a5,a5,a4
    8000242c:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    80002430:	0000a797          	auipc	a5,0xa
    80002434:	4e07b783          	ld	a5,1248(a5) # 8000c910 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002438:	0007b783          	ld	a5,0(a5)
    8000243c:	00c78023          	sb	a2,0(a5)
    80002440:	f85ff06f          	j	800023c4 <_ZN7Konsole16outputThreadBodyEPv+0x10>

0000000080002444 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    80002444:	fe010113          	addi	sp,sp,-32
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	00813823          	sd	s0,16(sp)
    80002450:	00913423          	sd	s1,8(sp)
    80002454:	02010413          	addi	s0,sp,32
    80002458:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    8000245c:	00000593          	li	a1,0
    80002460:	00000097          	auipc	ra,0x0
    80002464:	940080e7          	jalr	-1728(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    80002468:	0000a597          	auipc	a1,0xa
    8000246c:	6685b583          	ld	a1,1640(a1) # 8000cad0 <_ZN7Konsole14getcWaiterTailE>
    80002470:	04058063          	beqz	a1,800024b0 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    80002474:	00048513          	mv	a0,s1
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	944080e7          	jalr	-1724(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    80002480:	00048593          	mv	a1,s1
    80002484:	0000a517          	auipc	a0,0xa
    80002488:	64c53503          	ld	a0,1612(a0) # 8000cad0 <_ZN7Konsole14getcWaiterTailE>
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	914080e7          	jalr	-1772(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    80002494:	0000a797          	auipc	a5,0xa
    80002498:	6297be23          	sd	s1,1596(a5) # 8000cad0 <_ZN7Konsole14getcWaiterTailE>
}
    8000249c:	01813083          	ld	ra,24(sp)
    800024a0:	01013403          	ld	s0,16(sp)
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	02010113          	addi	sp,sp,32
    800024ac:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800024b0:	00000593          	li	a1,0
    800024b4:	00048513          	mv	a0,s1
    800024b8:	00000097          	auipc	ra,0x0
    800024bc:	904080e7          	jalr	-1788(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    800024c0:	0000a797          	auipc	a5,0xa
    800024c4:	6097bc23          	sd	s1,1560(a5) # 8000cad8 <_ZN7Konsole14getcWaiterHeadE>
    800024c8:	fcdff06f          	j	80002494 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

00000000800024cc <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00113c23          	sd	ra,24(sp)
    800024d4:	00813823          	sd	s0,16(sp)
    800024d8:	00913423          	sd	s1,8(sp)
    800024dc:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    800024e0:	0000a497          	auipc	s1,0xa
    800024e4:	5f84b483          	ld	s1,1528(s1) # 8000cad8 <_ZN7Konsole14getcWaiterHeadE>
    800024e8:	04048463          	beqz	s1,80002530 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    800024ec:	00048513          	mv	a0,s1
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	878080e7          	jalr	-1928(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
    800024f8:	0000a797          	auipc	a5,0xa
    800024fc:	5ea7b023          	sd	a0,1504(a5) # 8000cad8 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002500:	04050463          	beqz	a0,80002548 <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002504:	00000593          	li	a1,0
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	8b4080e7          	jalr	-1868(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    80002510:	00000593          	li	a1,0
    80002514:	00048513          	mv	a0,s1
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	888080e7          	jalr	-1912(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80002520:	00000593          	li	a1,0
    80002524:	00048513          	mv	a0,s1
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	894080e7          	jalr	-1900(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
}
    80002530:	00048513          	mv	a0,s1
    80002534:	01813083          	ld	ra,24(sp)
    80002538:	01013403          	ld	s0,16(sp)
    8000253c:	00813483          	ld	s1,8(sp)
    80002540:	02010113          	addi	sp,sp,32
    80002544:	00008067          	ret
    else getcWaiterTail = nullptr;
    80002548:	0000a797          	auipc	a5,0xa
    8000254c:	5807b423          	sd	zero,1416(a5) # 8000cad0 <_ZN7Konsole14getcWaiterTailE>
    80002550:	fc1ff06f          	j	80002510 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

0000000080002554 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    80002554:	fe010113          	addi	sp,sp,-32
    80002558:	00113c23          	sd	ra,24(sp)
    8000255c:	00813823          	sd	s0,16(sp)
    80002560:	00913423          	sd	s1,8(sp)
    80002564:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    80002568:	0000a517          	auipc	a0,0xa
    8000256c:	44850513          	addi	a0,a0,1096 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    80002570:	12052823          	sw	zero,304(a0)
    80002574:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    80002578:	00052c23          	sw	zero,24(a0)
    8000257c:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    80002580:	12053423          	sd	zero,296(a0)
    80002584:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    80002588:	00000593          	li	a1,0
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	338080e7          	jalr	824(ra) # 800018c4 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002594:	00001097          	auipc	ra,0x1
    80002598:	cc4080e7          	jalr	-828(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    8000259c:	16000593          	li	a1,352
    800025a0:	00001097          	auipc	ra,0x1
    800025a4:	d14080e7          	jalr	-748(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800025a8:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	6d4080e7          	jalr	1748(ra) # 80001c80 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800025b4:	00000797          	auipc	a5,0x0
    800025b8:	e0078793          	addi	a5,a5,-512 # 800023b4 <_ZN7Konsole16outputThreadBodyEPv>
    800025bc:	00f4b023          	sd	a5,0(s1)
    800025c0:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800025c4:	00001097          	auipc	ra,0x1
    800025c8:	c94080e7          	jalr	-876(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    800025cc:	000085b7          	lui	a1,0x8
    800025d0:	00001097          	auipc	ra,0x1
    800025d4:	ce4080e7          	jalr	-796(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    800025d8:	00008637          	lui	a2,0x8
    800025dc:	00c50633          	add	a2,a0,a2
    800025e0:	00000593          	li	a1,0
    800025e4:	00048513          	mv	a0,s1
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	840080e7          	jalr	-1984(ra) # 80001e28 <_ZN7KThread5setupEPS_Pm>
    outputThread->threadContext.sstatus |= (1UL << 8);
    800025f0:	1504b783          	ld	a5,336(s1)
    800025f4:	1007e793          	ori	a5,a5,256
    800025f8:	14f4b823          	sd	a5,336(s1)
    Scheduler::Put(outputThread);
    800025fc:	00048513          	mv	a0,s1
    80002600:	00000097          	auipc	ra,0x0
    80002604:	a3c080e7          	jalr	-1476(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
}
    80002608:	01813083          	ld	ra,24(sp)
    8000260c:	01013403          	ld	s0,16(sp)
    80002610:	00813483          	ld	s1,8(sp)
    80002614:	02010113          	addi	sp,sp,32
    80002618:	00008067          	ret

000000008000261c <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    8000261c:	fe010113          	addi	sp,sp,-32
    80002620:	00113c23          	sd	ra,24(sp)
    80002624:	00813823          	sd	s0,16(sp)
    80002628:	00913423          	sd	s1,8(sp)
    8000262c:	01213023          	sd	s2,0(sp)
    80002630:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    80002634:	00005097          	auipc	ra,0x5
    80002638:	1b0080e7          	jalr	432(ra) # 800077e4 <plic_claim>
    8000263c:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    80002640:	00a00793          	li	a5,10
    80002644:	02f50663          	beq	a0,a5,80002670 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    80002648:	0a049463          	bnez	s1,800026f0 <_ZN7Konsole15handleInterruptEv+0xd4>
}
    8000264c:	01813083          	ld	ra,24(sp)
    80002650:	01013403          	ld	s0,16(sp)
    80002654:	00813483          	ld	s1,8(sp)
    80002658:	00013903          	ld	s2,0(sp)
    8000265c:	02010113          	addi	sp,sp,32
    80002660:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    80002664:	09253c23          	sd	s2,152(a0)
                Scheduler::Put(waiter);
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	9d4080e7          	jalr	-1580(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80002670:	0000a797          	auipc	a5,0xa
    80002674:	2887b783          	ld	a5,648(a5) # 8000c8f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002678:	0007b783          	ld	a5,0(a5)
    8000267c:	0007c783          	lbu	a5,0(a5)
    80002680:	0017f793          	andi	a5,a5,1
    80002684:	fc0782e3          	beqz	a5,80002648 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    80002688:	0000a797          	auipc	a5,0xa
    8000268c:	2687b783          	ld	a5,616(a5) # 8000c8f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002690:	0007b783          	ld	a5,0(a5)
    80002694:	0007c783          	lbu	a5,0(a5)
    80002698:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	e30080e7          	jalr	-464(ra) # 800024cc <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    800026a4:	fc0510e3          	bnez	a0,80002664 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    800026a8:	0000a617          	auipc	a2,0xa
    800026ac:	30860613          	addi	a2,a2,776 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    800026b0:	13462683          	lw	a3,308(a2)
    800026b4:	0016879b          	addiw	a5,a3,1
    800026b8:	41f7d71b          	sraiw	a4,a5,0x1f
    800026bc:	0187571b          	srliw	a4,a4,0x18
    800026c0:	00e787bb          	addw	a5,a5,a4
    800026c4:	0ff7f793          	andi	a5,a5,255
    800026c8:	40e787bb          	subw	a5,a5,a4
    800026cc:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    800026d0:	13062603          	lw	a2,304(a2)
    800026d4:	f8e60ee3          	beq	a2,a4,80002670 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    800026d8:	0000a717          	auipc	a4,0xa
    800026dc:	2d870713          	addi	a4,a4,728 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    800026e0:	00d706b3          	add	a3,a4,a3
    800026e4:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    800026e8:	12f72a23          	sw	a5,308(a4)
    800026ec:	f85ff06f          	j	80002670 <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    800026f0:	00048513          	mv	a0,s1
    800026f4:	00005097          	auipc	ra,0x5
    800026f8:	128080e7          	jalr	296(ra) # 8000781c <plic_complete>
}
    800026fc:	f51ff06f          	j	8000264c <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002700 <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    80002700:	fe010113          	addi	sp,sp,-32
    80002704:	00113c23          	sd	ra,24(sp)
    80002708:	00813823          	sd	s0,16(sp)
    8000270c:	00913423          	sd	s1,8(sp)
    80002710:	02010413          	addi	s0,sp,32
    80002714:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    80002718:	0000a617          	auipc	a2,0xa
    8000271c:	29860613          	addi	a2,a2,664 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    80002720:	01c62683          	lw	a3,28(a2)
    80002724:	0016879b          	addiw	a5,a3,1
    80002728:	41f7d71b          	sraiw	a4,a5,0x1f
    8000272c:	0187571b          	srliw	a4,a4,0x18
    80002730:	00e787bb          	addw	a5,a5,a4
    80002734:	0ff7f793          	andi	a5,a5,255
    80002738:	40e787bb          	subw	a5,a5,a4
    8000273c:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    80002740:	01862603          	lw	a2,24(a2)
    80002744:	04e60063          	beq	a2,a4,80002784 <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    80002748:	0000a517          	auipc	a0,0xa
    8000274c:	26850513          	addi	a0,a0,616 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    80002750:	00d506b3          	add	a3,a0,a3
    80002754:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    80002758:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	300080e7          	jalr	768(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    80002764:	02048a63          	beqz	s1,80002798 <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    80002768:	0804bc23          	sd	zero,152(s1)
    return 0;
    8000276c:	00000513          	li	a0,0
}
    80002770:	01813083          	ld	ra,24(sp)
    80002774:	01013403          	ld	s0,16(sp)
    80002778:	00813483          	ld	s1,8(sp)
    8000277c:	02010113          	addi	sp,sp,32
    80002780:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    80002784:	00050663          	beqz	a0,80002790 <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    80002788:	fff00793          	li	a5,-1
    8000278c:	08f53c23          	sd	a5,152(a0)
        return -1;
    80002790:	fff00513          	li	a0,-1
    80002794:	fddff06f          	j	80002770 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    80002798:	00000513          	li	a0,0
    8000279c:	fd5ff06f          	j	80002770 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

00000000800027a0 <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    800027a0:	0000a717          	auipc	a4,0xa
    800027a4:	21070713          	addi	a4,a4,528 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    800027a8:	13072783          	lw	a5,304(a4)
    800027ac:	13472703          	lw	a4,308(a4)
    800027b0:	04e78063          	beq	a5,a4,800027f0 <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    800027b4:	0000a617          	auipc	a2,0xa
    800027b8:	1fc60613          	addi	a2,a2,508 # 8000c9b0 <_ZN7Konsole11outputItemsE>
    800027bc:	00f60733          	add	a4,a2,a5
    800027c0:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    800027c4:	0017879b          	addiw	a5,a5,1
    800027c8:	41f7d71b          	sraiw	a4,a5,0x1f
    800027cc:	0187571b          	srliw	a4,a4,0x18
    800027d0:	00e787bb          	addw	a5,a5,a4
    800027d4:	0ff7f793          	andi	a5,a5,255
    800027d8:	40e787bb          	subw	a5,a5,a4
    800027dc:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    800027e0:	00050463          	beqz	a0,800027e8 <_ZN7Konsole10getcKernelEP7KThread+0x48>
    800027e4:	08d53c23          	sd	a3,152(a0)
        return (unsigned char)c;
    800027e8:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    800027ec:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00113423          	sd	ra,8(sp)
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002800:	00000097          	auipc	ra,0x0
    80002804:	c44080e7          	jalr	-956(ra) # 80002444 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    80002808:	ffe00513          	li	a0,-2
    8000280c:	00813083          	ld	ra,8(sp)
    80002810:	00013403          	ld	s0,0(sp)
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00008067          	ret

000000008000281c <userMainK>:
//#define USE_C_TEST
void userMain();

#ifdef USE_CPP_TEST
extern "C" void userMainCpp(void);
extern "C" void userMainK(void) {
    8000281c:	ff010113          	addi	sp,sp,-16
    80002820:	00113423          	sd	ra,8(sp)
    80002824:	00813023          	sd	s0,0(sp)
    80002828:	01010413          	addi	s0,sp,16
    userMain();
    8000282c:	00002097          	auipc	ra,0x2
    80002830:	6ac080e7          	jalr	1708(ra) # 80004ed8 <_Z8userMainv>
}
    80002834:	00813083          	ld	ra,8(sp)
    80002838:	00013403          	ld	s0,0(sp)
    8000283c:	01010113          	addi	sp,sp,16
    80002840:	00008067          	ret

0000000080002844 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00113423          	sd	ra,8(sp)
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    80002854:	03e00513          	li	a0,62
    80002858:	00001097          	auipc	ra,0x1
    8000285c:	900080e7          	jalr	-1792(ra) # 80003158 <_ZN7Console4putcEc>
    80002860:	00c0006f          	j	8000286c <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    80002864:	00001097          	auipc	ra,0x1
    80002868:	8f4080e7          	jalr	-1804(ra) # 80003158 <_ZN7Console4putcEc>
        char c = Console::getc();
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	8c4080e7          	jalr	-1852(ra) # 80003130 <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002874:	00d00793          	li	a5,13
    80002878:	fef50ae3          	beq	a0,a5,8000286c <_ZL8echoFuncPv+0x28>
    8000287c:	fe9ff06f          	j	80002864 <_ZL8echoFuncPv+0x20>

0000000080002880 <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    80002880:	fb010113          	addi	sp,sp,-80
    80002884:	04113423          	sd	ra,72(sp)
    80002888:	04813023          	sd	s0,64(sp)
    8000288c:	02913c23          	sd	s1,56(sp)
    80002890:	03213823          	sd	s2,48(sp)
    80002894:	03313423          	sd	s3,40(sp)
    80002898:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    8000289c:	00400513          	li	a0,4
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	cb4080e7          	jalr	-844(ra) # 80001554 <mem_alloc>
    800028a8:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    800028ac:	04300793          	li	a5,67
    800028b0:	00f50023          	sb	a5,0(a0)
    800028b4:	02b00793          	li	a5,43
    800028b8:	00f500a3          	sb	a5,1(a0)
    800028bc:	00f50123          	sb	a5,2(a0)
    800028c0:	00a00793          	li	a5,10
    800028c4:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    800028c8:	04300513          	li	a0,67
    800028cc:	00001097          	auipc	ra,0x1
    800028d0:	88c080e7          	jalr	-1908(ra) # 80003158 <_ZN7Console4putcEc>
    800028d4:	0014c503          	lbu	a0,1(s1)
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	880080e7          	jalr	-1920(ra) # 80003158 <_ZN7Console4putcEc>
    800028e0:	0024c503          	lbu	a0,2(s1)
    800028e4:	00001097          	auipc	ra,0x1
    800028e8:	874080e7          	jalr	-1932(ra) # 80003158 <_ZN7Console4putcEc>
    800028ec:	0034c503          	lbu	a0,3(s1)
    800028f0:	00001097          	auipc	ra,0x1
    800028f4:	868080e7          	jalr	-1944(ra) # 80003158 <_ZN7Console4putcEc>
    mem_free(buf);
    800028f8:	00048513          	mv	a0,s1
    800028fc:	fffff097          	auipc	ra,0xfffff
    80002900:	c84080e7          	jalr	-892(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002904:	00100593          	li	a1,1
    80002908:	fc040513          	addi	a0,s0,-64
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	728080e7          	jalr	1832(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    80002914:	00000593          	li	a1,0
    80002918:	fb040513          	addi	a0,s0,-80
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	718080e7          	jalr	1816(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002924:	03800513          	li	a0,56
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	550080e7          	jalr	1360(ra) # 80002e78 <_Znwm>
    80002930:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002934:	00000097          	auipc	ra,0x0
    80002938:	62c080e7          	jalr	1580(ra) # 80002f60 <_ZN6ThreadC1Ev>
    8000293c:	0000a797          	auipc	a5,0xa
    80002940:	d3c78793          	addi	a5,a5,-708 # 8000c678 <_ZTV6Worker+0x10>
    80002944:	00f9b023          	sd	a5,0(s3)
    80002948:	04100793          	li	a5,65
    8000294c:	02f98023          	sb	a5,32(s3)
    80002950:	fc040793          	addi	a5,s0,-64
    80002954:	02f9b423          	sd	a5,40(s3)
    80002958:	fb040793          	addi	a5,s0,-80
    8000295c:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    80002960:	03800513          	li	a0,56
    80002964:	00000097          	auipc	ra,0x0
    80002968:	514080e7          	jalr	1300(ra) # 80002e78 <_Znwm>
    8000296c:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002970:	00000097          	auipc	ra,0x0
    80002974:	5f0080e7          	jalr	1520(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80002978:	0000a797          	auipc	a5,0xa
    8000297c:	d0078793          	addi	a5,a5,-768 # 8000c678 <_ZTV6Worker+0x10>
    80002980:	00f93023          	sd	a5,0(s2)
    80002984:	04200793          	li	a5,66
    80002988:	02f90023          	sb	a5,32(s2)
    8000298c:	fc040793          	addi	a5,s0,-64
    80002990:	02f93423          	sd	a5,40(s2)
    80002994:	fb040793          	addi	a5,s0,-80
    80002998:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    8000299c:	03800513          	li	a0,56
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	4d8080e7          	jalr	1240(ra) # 80002e78 <_Znwm>
    800029a8:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	5b4080e7          	jalr	1460(ra) # 80002f60 <_ZN6ThreadC1Ev>
    800029b4:	0000a797          	auipc	a5,0xa
    800029b8:	cc478793          	addi	a5,a5,-828 # 8000c678 <_ZTV6Worker+0x10>
    800029bc:	00f4b023          	sd	a5,0(s1)
    800029c0:	04300793          	li	a5,67
    800029c4:	02f48023          	sb	a5,32(s1)
    800029c8:	fc040793          	addi	a5,s0,-64
    800029cc:	02f4b423          	sd	a5,40(s1)
    800029d0:	fb040793          	addi	a5,s0,-80
    800029d4:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    800029d8:	00098513          	mv	a0,s3
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	5b4080e7          	jalr	1460(ra) # 80002f90 <_ZN6Thread5startEv>
    800029e4:	00090513          	mv	a0,s2
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	5a8080e7          	jalr	1448(ra) # 80002f90 <_ZN6Thread5startEv>
    800029f0:	00048513          	mv	a0,s1
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	59c080e7          	jalr	1436(ra) # 80002f90 <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    800029fc:	fb040513          	addi	a0,s0,-80
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	66c080e7          	jalr	1644(ra) # 8000306c <_ZN9Semaphore4waitEv>
    80002a08:	fb040513          	addi	a0,s0,-80
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	660080e7          	jalr	1632(ra) # 8000306c <_ZN9Semaphore4waitEv>
    80002a14:	fb040513          	addi	a0,s0,-80
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	654080e7          	jalr	1620(ra) # 8000306c <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002a20:	00098a63          	beqz	s3,80002a34 <userMainCpp+0x1b4>
    80002a24:	0009b783          	ld	a5,0(s3)
    80002a28:	0087b783          	ld	a5,8(a5)
    80002a2c:	00098513          	mv	a0,s3
    80002a30:	000780e7          	jalr	a5
    80002a34:	00090a63          	beqz	s2,80002a48 <userMainCpp+0x1c8>
    80002a38:	00093783          	ld	a5,0(s2)
    80002a3c:	0087b783          	ld	a5,8(a5)
    80002a40:	00090513          	mv	a0,s2
    80002a44:	000780e7          	jalr	a5
    80002a48:	00048a63          	beqz	s1,80002a5c <userMainCpp+0x1dc>
    80002a4c:	0004b783          	ld	a5,0(s1)
    80002a50:	0087b783          	ld	a5,8(a5)
    80002a54:	00048513          	mv	a0,s1
    80002a58:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002a5c:	00a00513          	li	a0,10
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	6f8080e7          	jalr	1784(ra) # 80003158 <_ZN7Console4putcEc>
    80002a68:	04f00513          	li	a0,79
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	6ec080e7          	jalr	1772(ra) # 80003158 <_ZN7Console4putcEc>
    80002a74:	04b00513          	li	a0,75
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	6e0080e7          	jalr	1760(ra) # 80003158 <_ZN7Console4putcEc>
    80002a80:	00a00513          	li	a0,10
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	6d4080e7          	jalr	1748(ra) # 80003158 <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    80002a8c:	02800513          	li	a0,40
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	3e8080e7          	jalr	1000(ra) # 80002e78 <_Znwm>
    80002a98:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002a9c:	00300593          	li	a1,3
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	624080e7          	jalr	1572(ra) # 800030c4 <_ZN14PeriodicThreadC1Em>
    80002aa8:	0000a797          	auipc	a5,0xa
    80002aac:	bf878793          	addi	a5,a5,-1032 # 8000c6a0 <_ZTV6Ticker+0x10>
    80002ab0:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	4d8080e7          	jalr	1240(ra) # 80002f90 <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002ac0:	00f00513          	li	a0,15
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	548080e7          	jalr	1352(ra) # 8000300c <_ZN6Thread5sleepEm>
    t->terminate();
    80002acc:	00048513          	mv	a0,s1
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	644080e7          	jalr	1604(ra) # 80003114 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002ad8:	00500513          	li	a0,5
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	530080e7          	jalr	1328(ra) # 8000300c <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002ae4:	00a00513          	li	a0,10
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	670080e7          	jalr	1648(ra) # 80003158 <_ZN7Console4putcEc>
    delete t;
    80002af0:	00048a63          	beqz	s1,80002b04 <userMainCpp+0x284>
    80002af4:	0004b783          	ld	a5,0(s1)
    80002af8:	0087b783          	ld	a5,8(a5)
    80002afc:	00048513          	mv	a0,s1
    80002b00:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002b04:	02000513          	li	a0,32
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	370080e7          	jalr	880(ra) # 80002e78 <_Znwm>
    80002b10:	00050493          	mv	s1,a0
    80002b14:	00000613          	li	a2,0
    80002b18:	00000597          	auipc	a1,0x0
    80002b1c:	d2c58593          	addi	a1,a1,-724 # 80002844 <_ZL8echoFuncPv>
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	410080e7          	jalr	1040(ra) # 80002f30 <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002b28:	00048513          	mv	a0,s1
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	464080e7          	jalr	1124(ra) # 80002f90 <_ZN6Thread5startEv>
    while (true) {}
    80002b34:	0000006f          	j	80002b34 <userMainCpp+0x2b4>
    80002b38:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002b3c:	00098513          	mv	a0,s3
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	360080e7          	jalr	864(ra) # 80002ea0 <_ZdlPv>
    Semaphore mx(1), done(0);
    80002b48:	fb040513          	addi	a0,s0,-80
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	2f4080e7          	jalr	756(ra) # 80002e40 <_ZN9SemaphoreD1Ev>
    80002b54:	fc040513          	addi	a0,s0,-64
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	2e8080e7          	jalr	744(ra) # 80002e40 <_ZN9SemaphoreD1Ev>
    80002b60:	00048513          	mv	a0,s1
    80002b64:	0000b097          	auipc	ra,0xb
    80002b68:	1b4080e7          	jalr	436(ra) # 8000dd18 <_Unwind_Resume>
    80002b6c:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002b70:	00090513          	mv	a0,s2
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	32c080e7          	jalr	812(ra) # 80002ea0 <_ZdlPv>
    80002b7c:	fcdff06f          	j	80002b48 <userMainCpp+0x2c8>
    80002b80:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002b84:	00048513          	mv	a0,s1
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	318080e7          	jalr	792(ra) # 80002ea0 <_ZdlPv>
    80002b90:	00090493          	mv	s1,s2
    80002b94:	fb5ff06f          	j	80002b48 <userMainCpp+0x2c8>
    80002b98:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002b9c:	00048513          	mv	a0,s1
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	300080e7          	jalr	768(ra) # 80002ea0 <_ZdlPv>
    80002ba8:	00090493          	mv	s1,s2
    80002bac:	f9dff06f          	j	80002b48 <userMainCpp+0x2c8>
    80002bb0:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002bb4:	00048513          	mv	a0,s1
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	2e8080e7          	jalr	744(ra) # 80002ea0 <_ZdlPv>
    80002bc0:	00090493          	mv	s1,s2
    80002bc4:	f85ff06f          	j	80002b48 <userMainCpp+0x2c8>
    80002bc8:	00050493          	mv	s1,a0
    80002bcc:	f7dff06f          	j	80002b48 <userMainCpp+0x2c8>
    80002bd0:	00050493          	mv	s1,a0
    80002bd4:	f81ff06f          	j	80002b54 <userMainCpp+0x2d4>

0000000080002bd8 <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	00813023          	sd	s0,0(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	02e00513          	li	a0,46
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	56c080e7          	jalr	1388(ra) # 80003158 <_ZN7Console4putcEc>
    80002bf4:	00813083          	ld	ra,8(sp)
    80002bf8:	00013403          	ld	s0,0(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <_ZN6Worker3runEv>:
    void run() override {
    80002c04:	fe010113          	addi	sp,sp,-32
    80002c08:	00113c23          	sd	ra,24(sp)
    80002c0c:	00813823          	sd	s0,16(sp)
    80002c10:	00913423          	sd	s1,8(sp)
    80002c14:	01213023          	sd	s2,0(sp)
    80002c18:	02010413          	addi	s0,sp,32
    80002c1c:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002c20:	00000913          	li	s2,0
    80002c24:	0500006f          	j	80002c74 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002c28:	0284b503          	ld	a0,40(s1)
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	440080e7          	jalr	1088(ra) # 8000306c <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002c34:	05b00513          	li	a0,91
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	520080e7          	jalr	1312(ra) # 80003158 <_ZN7Console4putcEc>
    80002c40:	0204c503          	lbu	a0,32(s1)
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	514080e7          	jalr	1300(ra) # 80003158 <_ZN7Console4putcEc>
    80002c4c:	05d00513          	li	a0,93
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	508080e7          	jalr	1288(ra) # 80003158 <_ZN7Console4putcEc>
            mx->signal();
    80002c58:	0284b503          	ld	a0,40(s1)
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	43c080e7          	jalr	1084(ra) # 80003098 <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002c64:	00200513          	li	a0,2
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	3a4080e7          	jalr	932(ra) # 8000300c <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002c70:	0019091b          	addiw	s2,s2,1
    80002c74:	00200793          	li	a5,2
    80002c78:	fb27d8e3          	bge	a5,s2,80002c28 <_ZN6Worker3runEv+0x24>
        done->signal();
    80002c7c:	0304b503          	ld	a0,48(s1)
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	418080e7          	jalr	1048(ra) # 80003098 <_ZN9Semaphore6signalEv>
    }
    80002c88:	01813083          	ld	ra,24(sp)
    80002c8c:	01013403          	ld	s0,16(sp)
    80002c90:	00813483          	ld	s1,8(sp)
    80002c94:	00013903          	ld	s2,0(sp)
    80002c98:	02010113          	addi	sp,sp,32
    80002c9c:	00008067          	ret

0000000080002ca0 <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002ca0:	ff010113          	addi	sp,sp,-16
    80002ca4:	00113423          	sd	ra,8(sp)
    80002ca8:	00813023          	sd	s0,0(sp)
    80002cac:	01010413          	addi	s0,sp,16
    80002cb0:	0000a797          	auipc	a5,0xa
    80002cb4:	9c878793          	addi	a5,a5,-1592 # 8000c678 <_ZTV6Worker+0x10>
    80002cb8:	00f53023          	sd	a5,0(a0)
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	0ec080e7          	jalr	236(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80002cc4:	00813083          	ld	ra,8(sp)
    80002cc8:	00013403          	ld	s0,0(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <_ZN6WorkerD0Ev>:
    80002cd4:	fe010113          	addi	sp,sp,-32
    80002cd8:	00113c23          	sd	ra,24(sp)
    80002cdc:	00813823          	sd	s0,16(sp)
    80002ce0:	00913423          	sd	s1,8(sp)
    80002ce4:	02010413          	addi	s0,sp,32
    80002ce8:	00050493          	mv	s1,a0
    80002cec:	0000a797          	auipc	a5,0xa
    80002cf0:	98c78793          	addi	a5,a5,-1652 # 8000c678 <_ZTV6Worker+0x10>
    80002cf4:	00f53023          	sd	a5,0(a0)
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	0b0080e7          	jalr	176(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80002d00:	00048513          	mv	a0,s1
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	19c080e7          	jalr	412(ra) # 80002ea0 <_ZdlPv>
    80002d0c:	01813083          	ld	ra,24(sp)
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	02010113          	addi	sp,sp,32
    80002d1c:	00008067          	ret

0000000080002d20 <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80002d20:	ff010113          	addi	sp,sp,-16
    80002d24:	00113423          	sd	ra,8(sp)
    80002d28:	00813023          	sd	s0,0(sp)
    80002d2c:	01010413          	addi	s0,sp,16
    int signal();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    80002d30:	0000a797          	auipc	a5,0xa
    80002d34:	bd87b783          	ld	a5,-1064(a5) # 8000c908 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d38:	01078793          	addi	a5,a5,16
    80002d3c:	00f53023          	sd	a5,0(a0)
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	068080e7          	jalr	104(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80002d48:	00813083          	ld	ra,8(sp)
    80002d4c:	00013403          	ld	s0,0(sp)
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret

0000000080002d58 <_ZN6TickerD0Ev>:
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	02010413          	addi	s0,sp,32
    80002d6c:	00050493          	mv	s1,a0
    80002d70:	0000a797          	auipc	a5,0xa
    80002d74:	b987b783          	ld	a5,-1128(a5) # 8000c908 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d78:	01078793          	addi	a5,a5,16
    80002d7c:	00f53023          	sd	a5,0(a0)
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	028080e7          	jalr	40(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	114080e7          	jalr	276(ra) # 80002ea0 <_ZdlPv>
    80002d94:	01813083          	ld	ra,24(sp)
    80002d98:	01013403          	ld	s0,16(sp)
    80002d9c:	00813483          	ld	s1,8(sp)
    80002da0:	02010113          	addi	sp,sp,32
    80002da4:	00008067          	ret

0000000080002da8 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80002da8:	ff010113          	addi	sp,sp,-16
    80002dac:	00813423          	sd	s0,8(sp)
    80002db0:	01010413          	addi	s0,sp,16
    80002db4:	00813403          	ld	s0,8(sp)
    80002db8:	01010113          	addi	sp,sp,16
    80002dbc:	00008067          	ret

0000000080002dc0 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80002dc0:	ff010113          	addi	sp,sp,-16
    80002dc4:	00113423          	sd	ra,8(sp)
    80002dc8:	00813023          	sd	s0,0(sp)
    80002dcc:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80002dd0:	00053783          	ld	a5,0(a0)
    80002dd4:	0107b783          	ld	a5,16(a5)
    80002dd8:	000780e7          	jalr	a5
}
    80002ddc:	00813083          	ld	ra,8(sp)
    80002de0:	00013403          	ld	s0,0(sp)
    80002de4:	01010113          	addi	sp,sp,16
    80002de8:	00008067          	ret

0000000080002dec <_ZN14PeriodicThread3runEv>:
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    80002dec:	fe010113          	addi	sp,sp,-32
    80002df0:	00113c23          	sd	ra,24(sp)
    80002df4:	00813823          	sd	s0,16(sp)
    80002df8:	00913423          	sd	s1,8(sp)
    80002dfc:	02010413          	addi	s0,sp,32
    80002e00:	00050493          	mv	s1,a0
    while (period) {
    80002e04:	0204b783          	ld	a5,32(s1)
    80002e08:	02078263          	beqz	a5,80002e2c <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002e0c:	0004b783          	ld	a5,0(s1)
    80002e10:	0187b783          	ld	a5,24(a5)
    80002e14:	00048513          	mv	a0,s1
    80002e18:	000780e7          	jalr	a5
        time_sleep(period);
    80002e1c:	0204b503          	ld	a0,32(s1)
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	850080e7          	jalr	-1968(ra) # 80001670 <time_sleep>
    while (period) {
    80002e28:	fddff06f          	j	80002e04 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002e2c:	01813083          	ld	ra,24(sp)
    80002e30:	01013403          	ld	s0,16(sp)
    80002e34:	00813483          	ld	s1,8(sp)
    80002e38:	02010113          	addi	sp,sp,32
    80002e3c:	00008067          	ret

0000000080002e40 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002e40:	ff010113          	addi	sp,sp,-16
    80002e44:	00113423          	sd	ra,8(sp)
    80002e48:	00813023          	sd	s0,0(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    80002e50:	0000a797          	auipc	a5,0xa
    80002e54:	8b078793          	addi	a5,a5,-1872 # 8000c700 <_ZTV9Semaphore+0x10>
    80002e58:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002e5c:	00853503          	ld	a0,8(a0)
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	870080e7          	jalr	-1936(ra) # 800016d0 <sem_close>
}
    80002e68:	00813083          	ld	ra,8(sp)
    80002e6c:	00013403          	ld	s0,0(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00008067          	ret

0000000080002e78 <_Znwm>:
void* operator new(size_t size) {
    80002e78:	ff010113          	addi	sp,sp,-16
    80002e7c:	00113423          	sd	ra,8(sp)
    80002e80:	00813023          	sd	s0,0(sp)
    80002e84:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	6cc080e7          	jalr	1740(ra) # 80001554 <mem_alloc>
    80002e90:	00813083          	ld	ra,8(sp)
    80002e94:	00013403          	ld	s0,0(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret

0000000080002ea0 <_ZdlPv>:
void  operator delete(void* p)  {
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00113423          	sd	ra,8(sp)
    80002ea8:	00813023          	sd	s0,0(sp)
    80002eac:	01010413          	addi	s0,sp,16
    mem_free(p); }
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	6d0080e7          	jalr	1744(ra) # 80001580 <mem_free>
    80002eb8:	00813083          	ld	ra,8(sp)
    80002ebc:	00013403          	ld	s0,0(sp)
    80002ec0:	01010113          	addi	sp,sp,16
    80002ec4:	00008067          	ret

0000000080002ec8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80002ec8:	ff010113          	addi	sp,sp,-16
    80002ecc:	00113423          	sd	ra,8(sp)
    80002ed0:	00813023          	sd	s0,0(sp)
    80002ed4:	01010413          	addi	s0,sp,16
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	fc8080e7          	jalr	-56(ra) # 80002ea0 <_ZdlPv>
    80002ee0:	00813083          	ld	ra,8(sp)
    80002ee4:	00013403          	ld	s0,0(sp)
    80002ee8:	01010113          	addi	sp,sp,16
    80002eec:	00008067          	ret

0000000080002ef0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002ef0:	fe010113          	addi	sp,sp,-32
    80002ef4:	00113c23          	sd	ra,24(sp)
    80002ef8:	00813823          	sd	s0,16(sp)
    80002efc:	00913423          	sd	s1,8(sp)
    80002f00:	02010413          	addi	s0,sp,32
    80002f04:	00050493          	mv	s1,a0
}
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	f38080e7          	jalr	-200(ra) # 80002e40 <_ZN9SemaphoreD1Ev>
    80002f10:	00048513          	mv	a0,s1
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	f8c080e7          	jalr	-116(ra) # 80002ea0 <_ZdlPv>
    80002f1c:	01813083          	ld	ra,24(sp)
    80002f20:	01013403          	ld	s0,16(sp)
    80002f24:	00813483          	ld	s1,8(sp)
    80002f28:	02010113          	addi	sp,sp,32
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    80002f30:	ff010113          	addi	sp,sp,-16
    80002f34:	00813423          	sd	s0,8(sp)
    80002f38:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    80002f3c:	00009797          	auipc	a5,0x9
    80002f40:	79c78793          	addi	a5,a5,1948 # 8000c6d8 <_ZTV6Thread+0x10>
    80002f44:	00f53023          	sd	a5,0(a0)
    80002f48:	00053423          	sd	zero,8(a0)
    80002f4c:	00b53823          	sd	a1,16(a0)
    80002f50:	00c53c23          	sd	a2,24(a0)
    80002f54:	00813403          	ld	s0,8(sp)
    80002f58:	01010113          	addi	sp,sp,16
    80002f5c:	00008067          	ret

0000000080002f60 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    80002f60:	ff010113          	addi	sp,sp,-16
    80002f64:	00813423          	sd	s0,8(sp)
    80002f68:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    80002f6c:	00009797          	auipc	a5,0x9
    80002f70:	76c78793          	addi	a5,a5,1900 # 8000c6d8 <_ZTV6Thread+0x10>
    80002f74:	00f53023          	sd	a5,0(a0)
    80002f78:	00053423          	sd	zero,8(a0)
    80002f7c:	00053823          	sd	zero,16(a0)
    80002f80:	00053c23          	sd	zero,24(a0)
    80002f84:	00813403          	ld	s0,8(sp)
    80002f88:	01010113          	addi	sp,sp,16
    80002f8c:	00008067          	ret

0000000080002f90 <_ZN6Thread5startEv>:
int Thread::start() {
    80002f90:	ff010113          	addi	sp,sp,-16
    80002f94:	00113423          	sd	ra,8(sp)
    80002f98:	00813023          	sd	s0,0(sp)
    80002f9c:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    80002fa0:	01053783          	ld	a5,16(a0)
    80002fa4:	02078663          	beqz	a5,80002fd0 <_ZN6Thread5startEv+0x40>
    80002fa8:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    80002fac:	02078863          	beqz	a5,80002fdc <_ZN6Thread5startEv+0x4c>
    80002fb0:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    80002fb4:	00850513          	addi	a0,a0,8
    80002fb8:	ffffe097          	auipc	ra,0xffffe
    80002fbc:	5f4080e7          	jalr	1524(ra) # 800015ac <thread_create>
}
    80002fc0:	00813083          	ld	ra,8(sp)
    80002fc4:	00013403          	ld	s0,0(sp)
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80002fd0:	00000597          	auipc	a1,0x0
    80002fd4:	df058593          	addi	a1,a1,-528 # 80002dc0 <_ZN6Thread7runBodyEPv>
    80002fd8:	fd5ff06f          	j	80002fac <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    80002fdc:	00050613          	mv	a2,a0
    80002fe0:	fd5ff06f          	j	80002fb4 <_ZN6Thread5startEv+0x24>

0000000080002fe4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002fe4:	ff010113          	addi	sp,sp,-16
    80002fe8:	00113423          	sd	ra,8(sp)
    80002fec:	00813023          	sd	s0,0(sp)
    80002ff0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	65c080e7          	jalr	1628(ra) # 80001650 <thread_dispatch>
}
    80002ffc:	00813083          	ld	ra,8(sp)
    80003000:	00013403          	ld	s0,0(sp)
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00008067          	ret

000000008000300c <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00113423          	sd	ra,8(sp)
    80003014:	00813023          	sd	s0,0(sp)
    80003018:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    8000301c:	ffffe097          	auipc	ra,0xffffe
    80003020:	654080e7          	jalr	1620(ra) # 80001670 <time_sleep>
}
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00113423          	sd	ra,8(sp)
    8000303c:	00813023          	sd	s0,0(sp)
    80003040:	01010413          	addi	s0,sp,16
    80003044:	00009797          	auipc	a5,0x9
    80003048:	6bc78793          	addi	a5,a5,1724 # 8000c700 <_ZTV9Semaphore+0x10>
    8000304c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80003050:	00850513          	addi	a0,a0,8
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	644080e7          	jalr	1604(ra) # 80001698 <sem_open>
}
    8000305c:	00813083          	ld	ra,8(sp)
    80003060:	00013403          	ld	s0,0(sp)
    80003064:	01010113          	addi	sp,sp,16
    80003068:	00008067          	ret

000000008000306c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000306c:	ff010113          	addi	sp,sp,-16
    80003070:	00113423          	sd	ra,8(sp)
    80003074:	00813023          	sd	s0,0(sp)
    80003078:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000307c:	00853503          	ld	a0,8(a0)
    80003080:	ffffe097          	auipc	ra,0xffffe
    80003084:	678080e7          	jalr	1656(ra) # 800016f8 <sem_wait>
}
    80003088:	00813083          	ld	ra,8(sp)
    8000308c:	00013403          	ld	s0,0(sp)
    80003090:	01010113          	addi	sp,sp,16
    80003094:	00008067          	ret

0000000080003098 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003098:	ff010113          	addi	sp,sp,-16
    8000309c:	00113423          	sd	ra,8(sp)
    800030a0:	00813023          	sd	s0,0(sp)
    800030a4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800030a8:	00853503          	ld	a0,8(a0)
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	674080e7          	jalr	1652(ra) # 80001720 <sem_signal>
}
    800030b4:	00813083          	ld	ra,8(sp)
    800030b8:	00013403          	ld	s0,0(sp)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret

00000000800030c4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    800030c4:	fe010113          	addi	sp,sp,-32
    800030c8:	00113c23          	sd	ra,24(sp)
    800030cc:	00813823          	sd	s0,16(sp)
    800030d0:	00913423          	sd	s1,8(sp)
    800030d4:	01213023          	sd	s2,0(sp)
    800030d8:	02010413          	addi	s0,sp,32
    800030dc:	00050493          	mv	s1,a0
    800030e0:	00058913          	mv	s2,a1
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	e7c080e7          	jalr	-388(ra) # 80002f60 <_ZN6ThreadC1Ev>
    800030ec:	00009797          	auipc	a5,0x9
    800030f0:	63478793          	addi	a5,a5,1588 # 8000c720 <_ZTV14PeriodicThread+0x10>
    800030f4:	00f4b023          	sd	a5,0(s1)
    800030f8:	0324b023          	sd	s2,32(s1)
    800030fc:	01813083          	ld	ra,24(sp)
    80003100:	01013403          	ld	s0,16(sp)
    80003104:	00813483          	ld	s1,8(sp)
    80003108:	00013903          	ld	s2,0(sp)
    8000310c:	02010113          	addi	sp,sp,32
    80003110:	00008067          	ret

0000000080003114 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    80003114:	ff010113          	addi	sp,sp,-16
    80003118:	00813423          	sd	s0,8(sp)
    8000311c:	01010413          	addi	s0,sp,16
    80003120:	02053023          	sd	zero,32(a0)
    80003124:	00813403          	ld	s0,8(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret

0000000080003130 <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00113423          	sd	ra,8(sp)
    80003138:	00813023          	sd	s0,0(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	640080e7          	jalr	1600(ra) # 80001780 <getc>
    80003148:	00813083          	ld	ra,8(sp)
    8000314c:	00013403          	ld	s0,0(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <_ZN7Console4putcEc>:
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00113423          	sd	ra,8(sp)
    80003160:	00813023          	sd	s0,0(sp)
    80003164:	01010413          	addi	s0,sp,16
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	63c080e7          	jalr	1596(ra) # 800017a4 <putc>
    80003170:	00813083          	ld	ra,8(sp)
    80003174:	00013403          	ld	s0,0(sp)
    80003178:	01010113          	addi	sp,sp,16
    8000317c:	00008067          	ret

0000000080003180 <_ZN6Thread3runEv>:
    int start();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    80003180:	ff010113          	addi	sp,sp,-16
    80003184:	00813423          	sd	s0,8(sp)
    80003188:	01010413          	addi	s0,sp,16
    8000318c:	00813403          	ld	s0,8(sp)
    80003190:	01010113          	addi	sp,sp,16
    80003194:	00008067          	ret

0000000080003198 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80003198:	ff010113          	addi	sp,sp,-16
    8000319c:	00813423          	sd	s0,8(sp)
    800031a0:	01010413          	addi	s0,sp,16
    800031a4:	00813403          	ld	s0,8(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00813423          	sd	s0,8(sp)
    800031b8:	01010413          	addi	s0,sp,16
    800031bc:	00009797          	auipc	a5,0x9
    800031c0:	56478793          	addi	a5,a5,1380 # 8000c720 <_ZTV14PeriodicThread+0x10>
    800031c4:	00f53023          	sd	a5,0(a0)
    800031c8:	00813403          	ld	s0,8(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <_ZN14PeriodicThreadD0Ev>:
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00113423          	sd	ra,8(sp)
    800031dc:	00813023          	sd	s0,0(sp)
    800031e0:	01010413          	addi	s0,sp,16
    800031e4:	00009797          	auipc	a5,0x9
    800031e8:	53c78793          	addi	a5,a5,1340 # 8000c720 <_ZTV14PeriodicThread+0x10>
    800031ec:	00f53023          	sd	a5,0(a0)
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	cb0080e7          	jalr	-848(ra) # 80002ea0 <_ZdlPv>
    800031f8:	00813083          	ld	ra,8(sp)
    800031fc:	00013403          	ld	s0,0(sp)
    80003200:	01010113          	addi	sp,sp,16
    80003204:	00008067          	ret

0000000080003208 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80003208:	ff010113          	addi	sp,sp,-16
    8000320c:	00813423          	sd	s0,8(sp)
    80003210:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    80003214:	00009797          	auipc	a5,0x9
    80003218:	7147b783          	ld	a5,1812(a5) # 8000c928 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000321c:	0007b703          	ld	a4,0(a5)
    80003220:	00009797          	auipc	a5,0x9
    80003224:	6e07b783          	ld	a5,1760(a5) # 8000c900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003228:	0007b783          	ld	a5,0(a5)
    8000322c:	40f70733          	sub	a4,a4,a5
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    80003230:	00675713          	srli	a4,a4,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80003234:	00f53023          	sd	a5,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    80003238:	00100693          	li	a3,1
    8000323c:	00d78823          	sb	a3,16(a5)
    startFrag->next=nullptr;
    80003240:	0007b023          	sd	zero,0(a5)
    startFrag->size = HEAP_SIZE_BLCK;
    80003244:	00e7bc23          	sd	a4,24(a5)
    startFrag->prev=nullptr;
    80003248:	0007b423          	sd	zero,8(a5)
}
    8000324c:	00813403          	ld	s0,8(sp)
    80003250:	01010113          	addi	sp,sp,16
    80003254:	00008067          	ret

0000000080003258 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    80003258:	0000a797          	auipc	a5,0xa
    8000325c:	9907c783          	lbu	a5,-1648(a5) # 8000cbe8 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80003260:	00078863          	beqz	a5,80003270 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80003264:	0000a517          	auipc	a0,0xa
    80003268:	98c50513          	addi	a0,a0,-1652 # 8000cbf0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000326c:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00113423          	sd	ra,8(sp)
    80003278:	00813023          	sd	s0,0(sp)
    8000327c:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80003280:	0000a517          	auipc	a0,0xa
    80003284:	97050513          	addi	a0,a0,-1680 # 8000cbf0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	f80080e7          	jalr	-128(ra) # 80003208 <_ZN15MemoryAllocatorC1Ev>
    80003290:	00100793          	li	a5,1
    80003294:	0000a717          	auipc	a4,0xa
    80003298:	94f70a23          	sb	a5,-1708(a4) # 8000cbe8 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    8000329c:	0000a517          	auipc	a0,0xa
    800032a0:	95450513          	addi	a0,a0,-1708 # 8000cbf0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800032a4:	00813083          	ld	ra,8(sp)
    800032a8:	00013403          	ld	s0,0(sp)
    800032ac:	01010113          	addi	sp,sp,16
    800032b0:	00008067          	ret

00000000800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00813423          	sd	s0,8(sp)
    800032bc:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800032c0:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800032c4:	03f58593          	addi	a1,a1,63
    800032c8:	0065d593          	srli	a1,a1,0x6
    800032cc:	0080006f          	j	800032d4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    800032d0:	00053503          	ld	a0,0(a0)
    while(curr){
    800032d4:	06050863          	beqz	a0,80003344 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    800032d8:	01054703          	lbu	a4,16(a0)
    800032dc:	00100793          	li	a5,1
    800032e0:	fef718e3          	bne	a4,a5,800032d0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    800032e4:	01853703          	ld	a4,24(a0)
    800032e8:	00158793          	addi	a5,a1,1
    800032ec:	fef762e3          	bltu	a4,a5,800032d0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    800032f0:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    800032f4:	04e7f663          	bgeu	a5,a4,80003340 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    800032f8:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    800032fc:	00679793          	slli	a5,a5,0x6
    80003300:	00f507b3          	add	a5,a0,a5
    80003304:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80003308:	00100713          	li	a4,1
    8000330c:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80003310:	01853703          	ld	a4,24(a0)
    80003314:	40b70733          	sub	a4,a4,a1
    80003318:	fff70713          	addi	a4,a4,-1
    8000331c:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003320:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003324:	00068463          	beqz	a3,8000332c <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80003328:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    8000332c:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003330:	01853703          	ld	a4,24(a0)
    80003334:	0187b783          	ld	a5,24(a5)
    80003338:	40f707b3          	sub	a5,a4,a5
    8000333c:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80003340:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80003344:	00813403          	ld	s0,8(sp)
    80003348:	01010113          	addi	sp,sp,16
    8000334c:	00008067          	ret

0000000080003350 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00813423          	sd	s0,8(sp)
    80003358:	01010413          	addi	s0,sp,16
    if(!startLoc)return -1;
    8000335c:	08058c63          	beqz	a1,800033f4 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80003360:	fc058613          	addi	a2,a1,-64
    curr->free=1;
    80003364:	00100793          	li	a5,1
    80003368:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    8000336c:	fc05b783          	ld	a5,-64(a1)
    80003370:	00078863          	beqz	a5,80003380 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003374:	0107c683          	lbu	a3,16(a5)
    80003378:	00100713          	li	a4,1
    8000337c:	02e68463          	beq	a3,a4,800033a4 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80003380:	fc85b783          	ld	a5,-56(a1)
    80003384:	06078c63          	beqz	a5,800033fc <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80003388:	0107c683          	lbu	a3,16(a5)
    8000338c:	00100713          	li	a4,1
    80003390:	02e68e63          	beq	a3,a4,800033cc <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80003394:	00000513          	li	a0,0
}
    80003398:	00813403          	ld	s0,8(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret
        curr->size +=next->size;
    800033a4:	0187b683          	ld	a3,24(a5)
    800033a8:	fd85b703          	ld	a4,-40(a1)
    800033ac:	00d70733          	add	a4,a4,a3
    800033b0:	fce5bc23          	sd	a4,-40(a1)
        curr->next = next->next;
    800033b4:	0007b703          	ld	a4,0(a5)
    800033b8:	fce5b023          	sd	a4,-64(a1)
        if(next->next)
    800033bc:	0007b783          	ld	a5,0(a5)
    800033c0:	fc0780e3          	beqz	a5,80003380 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    800033c4:	00c7b423          	sd	a2,8(a5)
    800033c8:	fb9ff06f          	j	80003380 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    800033cc:	fd85b683          	ld	a3,-40(a1)
    800033d0:	0187b703          	ld	a4,24(a5)
    800033d4:	00d70733          	add	a4,a4,a3
    800033d8:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    800033dc:	fc05b703          	ld	a4,-64(a1)
    800033e0:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    800033e4:	02070063          	beqz	a4,80003404 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    800033e8:	00f73423          	sd	a5,8(a4)
    return 0;
    800033ec:	00000513          	li	a0,0
    800033f0:	fa9ff06f          	j	80003398 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!startLoc)return -1;
    800033f4:	fff00513          	li	a0,-1
    800033f8:	fa1ff06f          	j	80003398 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    800033fc:	00000513          	li	a0,0
    80003400:	f99ff06f          	j	80003398 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003404:	00000513          	li	a0,0
    80003408:	f91ff06f          	j	80003398 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

000000008000340c <HandleInterupt>:
#include "Konsole.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    8000340c:	fb010113          	addi	sp,sp,-80
    80003410:	04113423          	sd	ra,72(sp)
    80003414:	04813023          	sd	s0,64(sp)
    80003418:	02913c23          	sd	s1,56(sp)
    8000341c:	03213823          	sd	s2,48(sp)
    80003420:	03313423          	sd	s3,40(sp)
    80003424:	03413023          	sd	s4,32(sp)
    80003428:	01513c23          	sd	s5,24(sp)
    8000342c:	01613823          	sd	s6,16(sp)
    80003430:	01713423          	sd	s7,8(sp)
    80003434:	05010413          	addi	s0,sp,80
    80003438:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000343c:	142029f3          	csrr	s3,scause

    Scheduler::freeDead();
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	aac080e7          	jalr	-1364(ra) # 80001eec <_ZN9Scheduler8freeDeadEv>

    KThread* current = Scheduler::GetRunning();
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	a48080e7          	jalr	-1464(ra) # 80001e90 <_ZN9Scheduler10GetRunningEv>
    80003450:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80003454:	04050863          	beqz	a0,800034a4 <HandleInterupt+0x98>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    80003458:	00000713          	li	a4,0
    8000345c:	01f00793          	li	a5,31
    80003460:	02e7c063          	blt	a5,a4,80003480 <HandleInterupt+0x74>
    80003464:	00371793          	slli	a5,a4,0x3
    80003468:	00f906b3          	add	a3,s2,a5
    8000346c:	0006b683          	ld	a3,0(a3)
    80003470:	00f487b3          	add	a5,s1,a5
    80003474:	04d7b423          	sd	a3,72(a5)
    80003478:	0017071b          	addiw	a4,a4,1
    8000347c:	fe1ff06f          	j	8000345c <HandleInterupt+0x50>
        ctx.x[2] = (size_t)frame + 256;
    80003480:	10090793          	addi	a5,s2,256
    80003484:	04f4bc23          	sd	a5,88(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80003488:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000348c:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    80003490:	ff898793          	addi	a5,s3,-8
    80003494:	00100613          	li	a2,1
    80003498:	06f67a63          	bgeu	a2,a5,8000350c <HandleInterupt+0x100>
        ctx.sepc    = sepc;
    8000349c:	14e4b423          	sd	a4,328(s1)
        ctx.sstatus = sstatus;
    800034a0:	14d4b823          	sd	a3,336(s1)
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
    800034a4:	fff00793          	li	a5,-1
    800034a8:	03f79793          	slli	a5,a5,0x3f
    800034ac:	00178793          	addi	a5,a5,1
    800034b0:	06f98263          	beq	s3,a5,80003514 <HandleInterupt+0x108>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == 0x8000000000000009UL) {
    800034b4:	fff00793          	li	a5,-1
    800034b8:	03f79793          	slli	a5,a5,0x3f
    800034bc:	00978793          	addi	a5,a5,9
    800034c0:	06f98863          	beq	s3,a5,80003530 <HandleInterupt+0x124>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != 8 && scause != 9) {
    800034c4:	ff898793          	addi	a5,s3,-8
    800034c8:	00100713          	li	a4,1
    800034cc:	06f76e63          	bltu	a4,a5,80003548 <HandleInterupt+0x13c>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800034d0:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800034d4:	00478793          	addi	a5,a5,4
    800034d8:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    800034dc:	05093783          	ld	a5,80(s2)
    switch (code) {
    800034e0:	04200713          	li	a4,66
    800034e4:	0af76263          	bltu	a4,a5,80003588 <HandleInterupt+0x17c>
    800034e8:	06078a63          	beqz	a5,8000355c <HandleInterupt+0x150>
    800034ec:	06f76863          	bltu	a4,a5,8000355c <HandleInterupt+0x150>
    800034f0:	00279793          	slli	a5,a5,0x2
    800034f4:	00007717          	auipc	a4,0x7
    800034f8:	b2c70713          	addi	a4,a4,-1236 # 8000a020 <CONSOLE_STATUS+0x10>
    800034fc:	00e787b3          	add	a5,a5,a4
    80003500:	0007a783          	lw	a5,0(a5)
    80003504:	00e787b3          	add	a5,a5,a4
    80003508:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    8000350c:	00470713          	addi	a4,a4,4
    80003510:	f8dff06f          	j	8000349c <HandleInterupt+0x90>
        Scheduler::timerTick(current);
    80003514:	00048513          	mv	a0,s1
    80003518:	fffff097          	auipc	ra,0xfffff
    8000351c:	cdc080e7          	jalr	-804(ra) # 800021f4 <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003520:	02048e63          	beqz	s1,8000355c <HandleInterupt+0x150>
    80003524:	0984b783          	ld	a5,152(s1)
    80003528:	00078513          	mv	a0,a5
    8000352c:	0300006f          	j	8000355c <HandleInterupt+0x150>
        Konsole::handleInterrupt();
    80003530:	fffff097          	auipc	ra,0xfffff
    80003534:	0ec080e7          	jalr	236(ra) # 8000261c <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003538:	02048263          	beqz	s1,8000355c <HandleInterupt+0x150>
    8000353c:	0984b783          	ld	a5,152(s1)
    80003540:	00078513          	mv	a0,a5
    80003544:	0180006f          	j	8000355c <HandleInterupt+0x150>
        if ((scause >> 63) == 0 && current != nullptr) {
    80003548:	0009ca63          	bltz	s3,8000355c <HandleInterupt+0x150>
    8000354c:	00048863          	beqz	s1,8000355c <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003550:	00048513          	mv	a0,s1
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	a8c080e7          	jalr	-1396(ra) # 80001fe0 <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    8000355c:	04813083          	ld	ra,72(sp)
    80003560:	04013403          	ld	s0,64(sp)
    80003564:	03813483          	ld	s1,56(sp)
    80003568:	03013903          	ld	s2,48(sp)
    8000356c:	02813983          	ld	s3,40(sp)
    80003570:	02013a03          	ld	s4,32(sp)
    80003574:	01813a83          	ld	s5,24(sp)
    80003578:	01013b03          	ld	s6,16(sp)
    8000357c:	00813b83          	ld	s7,8(sp)
    80003580:	05010113          	addi	sp,sp,80
    80003584:	00008067          	ret
    switch (code) {
    80003588:	0ff00713          	li	a4,255
    8000358c:	fce798e3          	bne	a5,a4,8000355c <HandleInterupt+0x150>
            *((volatile uint32*)0x100000UL) = 0x5555;
    80003590:	00100737          	lui	a4,0x100
    80003594:	000057b7          	lui	a5,0x5
    80003598:	5557879b          	addiw	a5,a5,1365
    8000359c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    800035a0:	0000006f          	j	800035a0 <HandleInterupt+0x194>
            size_t size = frame[11];
    800035a4:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	cb0080e7          	jalr	-848(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    800035b0:	00048593          	mv	a1,s1
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	d00080e7          	jalr	-768(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    800035bc:	00050513          	mv	a0,a0
            break;
    800035c0:	f9dff06f          	j	8000355c <HandleInterupt+0x150>
            void* ptr = (void*)frame[11];
    800035c4:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	c90080e7          	jalr	-880(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    800035d0:	00048593          	mv	a1,s1
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	d7c080e7          	jalr	-644(ra) # 80003350 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    800035dc:	f81ff06f          	j	8000355c <HandleInterupt+0x150>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    800035e0:	05893a03          	ld	s4,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    800035e4:	06093b03          	ld	s6,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    800035e8:	06893a83          	ld	s5,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    800035ec:	07093b83          	ld	s7,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	c68080e7          	jalr	-920(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    800035f8:	16000593          	li	a1,352
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	cb8080e7          	jalr	-840(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003604:	00050993          	mv	s3,a0
            if (!mem) {
    80003608:	04050863          	beqz	a0,80003658 <HandleInterupt+0x24c>
            t->init();
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	674080e7          	jalr	1652(ra) # 80001c80 <_ZN7KThread4initEv>
    80003614:	0169b023          	sd	s6,0(s3)
    80003618:	0159b423          	sd	s5,8(s3)
            t->setup(current, stack_space);
    8000361c:	000b8613          	mv	a2,s7
    80003620:	00048593          	mv	a1,s1
    80003624:	00098513          	mv	a0,s3
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	800080e7          	jalr	-2048(ra) # 80001e28 <_ZN7KThread5setupEPS_Pm>
            t->stackBase = reinterpret_cast<void*>(frame[15]);
    80003630:	07893783          	ld	a5,120(s2)
    80003634:	04f9b023          	sd	a5,64(s3)
            *handle = reinterpret_cast<thread_t>(t);
    80003638:	013a3023          	sd	s3,0(s4)
            Scheduler::Put(t);
    8000363c:	00098513          	mv	a0,s3
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	9fc080e7          	jalr	-1540(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    80003648:	00048463          	beqz	s1,80003650 <HandleInterupt+0x244>
    8000364c:	0804bc23          	sd	zero,152(s1)
            __asm__ volatile("li a0, 0");
    80003650:	00000513          	li	a0,0
            break;
    80003654:	f09ff06f          	j	8000355c <HandleInterupt+0x150>
                if (current) {
    80003658:	f00482e3          	beqz	s1,8000355c <HandleInterupt+0x150>
                    current->threadContext.x[10] = (size_t)-1;
    8000365c:	fff00793          	li	a5,-1
    80003660:	08f4bc23          	sd	a5,152(s1)
                    restoreContext(current->getContext());
    80003664:	00048513          	mv	a0,s1
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	6e4080e7          	jalr	1764(ra) # 80001d4c <_ZN7KThread10getContextEv>
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	a24080e7          	jalr	-1500(ra) # 80001094 <restoreContext>
                return;
    80003678:	ee5ff06f          	j	8000355c <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    8000367c:	00048513          	mv	a0,s1
    80003680:	fffff097          	auipc	ra,0xfffff
    80003684:	960080e7          	jalr	-1696(ra) # 80001fe0 <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    80003688:	ed5ff06f          	j	8000355c <HandleInterupt+0x150>
            KThread* next = Scheduler::GetNext();
    8000368c:	fffff097          	auipc	ra,0xfffff
    80003690:	8cc080e7          	jalr	-1844(ra) # 80001f58 <_ZN9Scheduler7GetNextEv>
    80003694:	00050913          	mv	s2,a0
            if (next == nullptr) {
    80003698:	02050663          	beqz	a0,800036c4 <HandleInterupt+0x2b8>
            if (current) current->threadContext.x[10] = 0;
    8000369c:	00048463          	beqz	s1,800036a4 <HandleInterupt+0x298>
    800036a0:	0804bc23          	sd	zero,152(s1)
            Scheduler::Put(current);
    800036a4:	00048513          	mv	a0,s1
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	994080e7          	jalr	-1644(ra) # 8000203c <_ZN9Scheduler3PutEP7KThread>
            Scheduler::yield(current, next);
    800036b0:	00090593          	mv	a1,s2
    800036b4:	00048513          	mv	a0,s1
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	7f8080e7          	jalr	2040(ra) # 80001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800036c0:	e9dff06f          	j	8000355c <HandleInterupt+0x150>
                __asm__ volatile("li a0, 0");
    800036c4:	00000513          	li	a0,0
                break;
    800036c8:	e95ff06f          	j	8000355c <HandleInterupt+0x150>
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
    800036cc:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)frame[12];
    800036d0:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	b84080e7          	jalr	-1148(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    800036dc:	01800593          	li	a1,24
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	bd4080e7          	jalr	-1068(ra) # 800032b4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800036e8:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800036ec:	00050e63          	beqz	a0,80003708 <HandleInterupt+0x2fc>
            semaphore->init(initialValue);
    800036f0:	00090593          	mv	a1,s2
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	1d0080e7          	jalr	464(ra) # 800018c4 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    800036fc:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80003700:	00000513          	li	a0,0
            break;
    80003704:	e59ff06f          	j	8000355c <HandleInterupt+0x150>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003708:	fff00513          	li	a0,-1
    8000370c:	e51ff06f          	j	8000355c <HandleInterupt+0x150>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(frame[11]);
    80003710:	05893483          	ld	s1,88(s2)
            semaphore->close();
    80003714:	00048513          	mv	a0,s1
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	4a8080e7          	jalr	1192(ra) # 80001bc0 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80003720:	00000097          	auipc	ra,0x0
    80003724:	b38080e7          	jalr	-1224(ra) # 80003258 <_ZN15MemoryAllocator11GetInstanceEv>
    80003728:	00048593          	mv	a1,s1
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	c24080e7          	jalr	-988(ra) # 80003350 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80003734:	00000513          	li	a0,0
            break;
    80003738:	e25ff06f          	j	8000355c <HandleInterupt+0x150>
            int result = semaphore->wait(current);
    8000373c:	00048593          	mv	a1,s1
    80003740:	05893503          	ld	a0,88(s2)
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	2b8080e7          	jalr	696(ra) # 800019fc <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    8000374c:	00a04663          	bgtz	a0,80003758 <HandleInterupt+0x34c>
    80003750:	00050513          	mv	a0,a0
    80003754:	e09ff06f          	j	8000355c <HandleInterupt+0x150>
            KThread* next = Scheduler::GetNext();
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	800080e7          	jalr	-2048(ra) # 80001f58 <_ZN9Scheduler7GetNextEv>
    80003760:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80003764:	00050a63          	beqz	a0,80003778 <HandleInterupt+0x36c>
            Scheduler::yield(current, next);
    80003768:	00048513          	mv	a0,s1
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	744080e7          	jalr	1860(ra) # 80001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003774:	de9ff06f          	j	8000355c <HandleInterupt+0x150>
            if (next == nullptr) { while(true){} }
    80003778:	0000006f          	j	80003778 <HandleInterupt+0x36c>
            semaphore->signal();
    8000377c:	05893503          	ld	a0,88(s2)
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	2dc080e7          	jalr	732(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003788:	00000513          	li	a0,0
            break;
    8000378c:	dd1ff06f          	j	8000355c <HandleInterupt+0x150>
            int result = semaphore->waitN(current, n);
    80003790:	06092603          	lw	a2,96(s2)
    80003794:	00048593          	mv	a1,s1
    80003798:	05893503          	ld	a0,88(s2)
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	33c080e7          	jalr	828(ra) # 80001ad8 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    800037a4:	00a04663          	bgtz	a0,800037b0 <HandleInterupt+0x3a4>
    800037a8:	00050513          	mv	a0,a0
    800037ac:	db1ff06f          	j	8000355c <HandleInterupt+0x150>
            KThread* next = Scheduler::GetNext();
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	7a8080e7          	jalr	1960(ra) # 80001f58 <_ZN9Scheduler7GetNextEv>
    800037b8:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    800037bc:	00050a63          	beqz	a0,800037d0 <HandleInterupt+0x3c4>
            Scheduler::yield(current, next);
    800037c0:	00048513          	mv	a0,s1
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	6ec080e7          	jalr	1772(ra) # 80001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800037cc:	d91ff06f          	j	8000355c <HandleInterupt+0x150>
            if (next == nullptr) { while(true){} }
    800037d0:	0000006f          	j	800037d0 <HandleInterupt+0x3c4>
            semaphore->signalN(n);
    800037d4:	06092583          	lw	a1,96(s2)
    800037d8:	05893503          	ld	a0,88(s2)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	36c080e7          	jalr	876(ra) # 80001b48 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    800037e4:	00000513          	li	a0,0
            break;
    800037e8:	d75ff06f          	j	8000355c <HandleInterupt+0x150>
            time_t dur = (time_t)frame[11];
    800037ec:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    800037f0:	00048463          	beqz	s1,800037f8 <HandleInterupt+0x3ec>
    800037f4:	0804bc23          	sd	zero,152(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    800037f8:	00059663          	bnez	a1,80003804 <HandleInterupt+0x3f8>
    800037fc:	00000513          	li	a0,0
    80003800:	d5dff06f          	j	8000355c <HandleInterupt+0x150>
            Scheduler::sleep(current, dur);
    80003804:	00048513          	mv	a0,s1
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	aec080e7          	jalr	-1300(ra) # 800022f4 <_ZN9Scheduler5sleepEP7KThreadm>
            KThread* next = Scheduler::GetNext();
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	748080e7          	jalr	1864(ra) # 80001f58 <_ZN9Scheduler7GetNextEv>
    80003818:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    8000381c:	00050a63          	beqz	a0,80003830 <HandleInterupt+0x424>
            Scheduler::yield(current, next);
    80003820:	00048513          	mv	a0,s1
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	68c080e7          	jalr	1676(ra) # 80001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    8000382c:	d31ff06f          	j	8000355c <HandleInterupt+0x150>
            if (next == nullptr) { while(true){} }
    80003830:	0000006f          	j	80003830 <HandleInterupt+0x424>
            int result = Konsole::getcKernel(current);
    80003834:	00048513          	mv	a0,s1
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	f68080e7          	jalr	-152(ra) # 800027a0 <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2) {
    80003840:	ffe00713          	li	a4,-2
    80003844:	00e50863          	beq	a0,a4,80003854 <HandleInterupt+0x448>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    80003848:	0ff57793          	andi	a5,a0,255
    8000384c:	00078513          	mv	a0,a5
    80003850:	d0dff06f          	j	8000355c <HandleInterupt+0x150>
                KThread* next = Scheduler::GetNext();
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	704080e7          	jalr	1796(ra) # 80001f58 <_ZN9Scheduler7GetNextEv>
    8000385c:	00050593          	mv	a1,a0
                if (next == nullptr) { while(true){} }
    80003860:	00050a63          	beqz	a0,80003874 <HandleInterupt+0x468>
                Scheduler::yield(current, next);
    80003864:	00048513          	mv	a0,s1
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	648080e7          	jalr	1608(ra) # 80001eb0 <_ZN9Scheduler5yieldEP7KThreadS1_>
    80003870:	cedff06f          	j	8000355c <HandleInterupt+0x150>
                if (next == nullptr) { while(true){} }
    80003874:	0000006f          	j	80003874 <HandleInterupt+0x468>
            int result = Konsole::putcKernel(current, c);
    80003878:	05894583          	lbu	a1,88(s2)
    8000387c:	00048513          	mv	a0,s1
    80003880:	fffff097          	auipc	ra,0xfffff
    80003884:	e80080e7          	jalr	-384(ra) # 80002700 <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003888:	00050513          	mv	a0,a0
            break;
    8000388c:	cd1ff06f          	j	8000355c <HandleInterupt+0x150>

0000000080003890 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00113423          	sd	ra,8(sp)
    80003898:	00813023          	sd	s0,0(sp)
    8000389c:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	854080e7          	jalr	-1964(ra) # 800020f4 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	cac080e7          	jalr	-852(ra) # 80002554 <_ZN7Konsole4initEv>
    return 0;
}
    800038b0:	00000513          	li	a0,0
    800038b4:	00813083          	ld	ra,8(sp)
    800038b8:	00013403          	ld	s0,0(sp)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800038c4:	fe010113          	addi	sp,sp,-32
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	00813823          	sd	s0,16(sp)
    800038d0:	00913423          	sd	s1,8(sp)
    800038d4:	01213023          	sd	s2,0(sp)
    800038d8:	02010413          	addi	s0,sp,32
    800038dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800038e0:	00000913          	li	s2,0
    800038e4:	00c0006f          	j	800038f0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	d68080e7          	jalr	-664(ra) # 80001650 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	e90080e7          	jalr	-368(ra) # 80001780 <getc>
    800038f8:	0005059b          	sext.w	a1,a0
    800038fc:	01b00793          	li	a5,27
    80003900:	02f58a63          	beq	a1,a5,80003934 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003904:	0084b503          	ld	a0,8(s1)
    80003908:	00003097          	auipc	ra,0x3
    8000390c:	400080e7          	jalr	1024(ra) # 80006d08 <_ZN6Buffer3putEi>
        i++;
    80003910:	0019071b          	addiw	a4,s2,1
    80003914:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003918:	0004a683          	lw	a3,0(s1)
    8000391c:	0026979b          	slliw	a5,a3,0x2
    80003920:	00d787bb          	addw	a5,a5,a3
    80003924:	0017979b          	slliw	a5,a5,0x1
    80003928:	02f767bb          	remw	a5,a4,a5
    8000392c:	fc0792e3          	bnez	a5,800038f0 <_ZL16producerKeyboardPv+0x2c>
    80003930:	fb9ff06f          	j	800038e8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003934:	00100793          	li	a5,1
    80003938:	00009717          	auipc	a4,0x9
    8000393c:	2cf72023          	sw	a5,704(a4) # 8000cbf8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003940:	02100593          	li	a1,33
    80003944:	0084b503          	ld	a0,8(s1)
    80003948:	00003097          	auipc	ra,0x3
    8000394c:	3c0080e7          	jalr	960(ra) # 80006d08 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003950:	0104b503          	ld	a0,16(s1)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	dcc080e7          	jalr	-564(ra) # 80001720 <sem_signal>
}
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	00013903          	ld	s2,0(sp)
    8000396c:	02010113          	addi	sp,sp,32
    80003970:	00008067          	ret

0000000080003974 <_ZL8producerPv>:

static void producer(void *arg) {
    80003974:	fe010113          	addi	sp,sp,-32
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	00813823          	sd	s0,16(sp)
    80003980:	00913423          	sd	s1,8(sp)
    80003984:	01213023          	sd	s2,0(sp)
    80003988:	02010413          	addi	s0,sp,32
    8000398c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003990:	00000913          	li	s2,0
    80003994:	00c0006f          	j	800039a0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	cb8080e7          	jalr	-840(ra) # 80001650 <thread_dispatch>
    while (!threadEnd) {
    800039a0:	00009797          	auipc	a5,0x9
    800039a4:	2587a783          	lw	a5,600(a5) # 8000cbf8 <_ZL9threadEnd>
    800039a8:	02079e63          	bnez	a5,800039e4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800039ac:	0004a583          	lw	a1,0(s1)
    800039b0:	0305859b          	addiw	a1,a1,48
    800039b4:	0084b503          	ld	a0,8(s1)
    800039b8:	00003097          	auipc	ra,0x3
    800039bc:	350080e7          	jalr	848(ra) # 80006d08 <_ZN6Buffer3putEi>
        i++;
    800039c0:	0019071b          	addiw	a4,s2,1
    800039c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800039c8:	0004a683          	lw	a3,0(s1)
    800039cc:	0026979b          	slliw	a5,a3,0x2
    800039d0:	00d787bb          	addw	a5,a5,a3
    800039d4:	0017979b          	slliw	a5,a5,0x1
    800039d8:	02f767bb          	remw	a5,a4,a5
    800039dc:	fc0792e3          	bnez	a5,800039a0 <_ZL8producerPv+0x2c>
    800039e0:	fb9ff06f          	j	80003998 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800039e4:	0104b503          	ld	a0,16(s1)
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	d38080e7          	jalr	-712(ra) # 80001720 <sem_signal>
}
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	00013903          	ld	s2,0(sp)
    80003a00:	02010113          	addi	sp,sp,32
    80003a04:	00008067          	ret

0000000080003a08 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003a08:	fd010113          	addi	sp,sp,-48
    80003a0c:	02113423          	sd	ra,40(sp)
    80003a10:	02813023          	sd	s0,32(sp)
    80003a14:	00913c23          	sd	s1,24(sp)
    80003a18:	01213823          	sd	s2,16(sp)
    80003a1c:	01313423          	sd	s3,8(sp)
    80003a20:	03010413          	addi	s0,sp,48
    80003a24:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a28:	00000993          	li	s3,0
    80003a2c:	01c0006f          	j	80003a48 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	c20080e7          	jalr	-992(ra) # 80001650 <thread_dispatch>
    80003a38:	0500006f          	j	80003a88 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003a3c:	00a00513          	li	a0,10
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	d64080e7          	jalr	-668(ra) # 800017a4 <putc>
    while (!threadEnd) {
    80003a48:	00009797          	auipc	a5,0x9
    80003a4c:	1b07a783          	lw	a5,432(a5) # 8000cbf8 <_ZL9threadEnd>
    80003a50:	06079063          	bnez	a5,80003ab0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003a54:	00893503          	ld	a0,8(s2)
    80003a58:	00003097          	auipc	ra,0x3
    80003a5c:	340080e7          	jalr	832(ra) # 80006d98 <_ZN6Buffer3getEv>
        i++;
    80003a60:	0019849b          	addiw	s1,s3,1
    80003a64:	0004899b          	sext.w	s3,s1
        putc(key);
    80003a68:	0ff57513          	andi	a0,a0,255
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	d38080e7          	jalr	-712(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    80003a74:	00092703          	lw	a4,0(s2)
    80003a78:	0027179b          	slliw	a5,a4,0x2
    80003a7c:	00e787bb          	addw	a5,a5,a4
    80003a80:	02f4e7bb          	remw	a5,s1,a5
    80003a84:	fa0786e3          	beqz	a5,80003a30 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003a88:	05000793          	li	a5,80
    80003a8c:	02f4e4bb          	remw	s1,s1,a5
    80003a90:	fa049ce3          	bnez	s1,80003a48 <_ZL8consumerPv+0x40>
    80003a94:	fa9ff06f          	j	80003a3c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003a98:	00893503          	ld	a0,8(s2)
    80003a9c:	00003097          	auipc	ra,0x3
    80003aa0:	2fc080e7          	jalr	764(ra) # 80006d98 <_ZN6Buffer3getEv>
        putc(key);
    80003aa4:	0ff57513          	andi	a0,a0,255
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	cfc080e7          	jalr	-772(ra) # 800017a4 <putc>
    while (data->buffer->getCnt() > 0) {
    80003ab0:	00893503          	ld	a0,8(s2)
    80003ab4:	00003097          	auipc	ra,0x3
    80003ab8:	370080e7          	jalr	880(ra) # 80006e24 <_ZN6Buffer6getCntEv>
    80003abc:	fca04ee3          	bgtz	a0,80003a98 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003ac0:	01093503          	ld	a0,16(s2)
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	c5c080e7          	jalr	-932(ra) # 80001720 <sem_signal>
}
    80003acc:	02813083          	ld	ra,40(sp)
    80003ad0:	02013403          	ld	s0,32(sp)
    80003ad4:	01813483          	ld	s1,24(sp)
    80003ad8:	01013903          	ld	s2,16(sp)
    80003adc:	00813983          	ld	s3,8(sp)
    80003ae0:	03010113          	addi	sp,sp,48
    80003ae4:	00008067          	ret

0000000080003ae8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003ae8:	f9010113          	addi	sp,sp,-112
    80003aec:	06113423          	sd	ra,104(sp)
    80003af0:	06813023          	sd	s0,96(sp)
    80003af4:	04913c23          	sd	s1,88(sp)
    80003af8:	05213823          	sd	s2,80(sp)
    80003afc:	05313423          	sd	s3,72(sp)
    80003b00:	05413023          	sd	s4,64(sp)
    80003b04:	03513c23          	sd	s5,56(sp)
    80003b08:	03613823          	sd	s6,48(sp)
    80003b0c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003b10:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003b14:	00006517          	auipc	a0,0x6
    80003b18:	61c50513          	addi	a0,a0,1564 # 8000a130 <CONSOLE_STATUS+0x120>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	374080e7          	jalr	884(ra) # 80005e90 <_Z11printStringPKc>
    getString(input, 30);
    80003b24:	01e00593          	li	a1,30
    80003b28:	fa040493          	addi	s1,s0,-96
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	3e8080e7          	jalr	1000(ra) # 80005f18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	4b4080e7          	jalr	1204(ra) # 80005ff0 <_Z11stringToIntPKc>
    80003b44:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003b48:	00006517          	auipc	a0,0x6
    80003b4c:	60850513          	addi	a0,a0,1544 # 8000a150 <CONSOLE_STATUS+0x140>
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	340080e7          	jalr	832(ra) # 80005e90 <_Z11printStringPKc>
    getString(input, 30);
    80003b58:	01e00593          	li	a1,30
    80003b5c:	00048513          	mv	a0,s1
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	3b8080e7          	jalr	952(ra) # 80005f18 <_Z9getStringPci>
    n = stringToInt(input);
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	484080e7          	jalr	1156(ra) # 80005ff0 <_Z11stringToIntPKc>
    80003b74:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003b78:	00006517          	auipc	a0,0x6
    80003b7c:	5f850513          	addi	a0,a0,1528 # 8000a170 <CONSOLE_STATUS+0x160>
    80003b80:	00002097          	auipc	ra,0x2
    80003b84:	310080e7          	jalr	784(ra) # 80005e90 <_Z11printStringPKc>
    80003b88:	00000613          	li	a2,0
    80003b8c:	00a00593          	li	a1,10
    80003b90:	00090513          	mv	a0,s2
    80003b94:	00002097          	auipc	ra,0x2
    80003b98:	4ac080e7          	jalr	1196(ra) # 80006040 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b9c:	00006517          	auipc	a0,0x6
    80003ba0:	5ec50513          	addi	a0,a0,1516 # 8000a188 <CONSOLE_STATUS+0x178>
    80003ba4:	00002097          	auipc	ra,0x2
    80003ba8:	2ec080e7          	jalr	748(ra) # 80005e90 <_Z11printStringPKc>
    80003bac:	00000613          	li	a2,0
    80003bb0:	00a00593          	li	a1,10
    80003bb4:	00048513          	mv	a0,s1
    80003bb8:	00002097          	auipc	ra,0x2
    80003bbc:	488080e7          	jalr	1160(ra) # 80006040 <_Z8printIntiii>
    printString(".\n");
    80003bc0:	00006517          	auipc	a0,0x6
    80003bc4:	5e050513          	addi	a0,a0,1504 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80003bc8:	00002097          	auipc	ra,0x2
    80003bcc:	2c8080e7          	jalr	712(ra) # 80005e90 <_Z11printStringPKc>
    if(threadNum > n) {
    80003bd0:	0324c463          	blt	s1,s2,80003bf8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003bd4:	03205c63          	blez	s2,80003c0c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003bd8:	03800513          	li	a0,56
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	29c080e7          	jalr	668(ra) # 80002e78 <_Znwm>
    80003be4:	00050a13          	mv	s4,a0
    80003be8:	00048593          	mv	a1,s1
    80003bec:	00003097          	auipc	ra,0x3
    80003bf0:	080080e7          	jalr	128(ra) # 80006c6c <_ZN6BufferC1Ei>
    80003bf4:	0300006f          	j	80003c24 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003bf8:	00006517          	auipc	a0,0x6
    80003bfc:	5b050513          	addi	a0,a0,1456 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003c00:	00002097          	auipc	ra,0x2
    80003c04:	290080e7          	jalr	656(ra) # 80005e90 <_Z11printStringPKc>
        return;
    80003c08:	0140006f          	j	80003c1c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c0c:	00006517          	auipc	a0,0x6
    80003c10:	5dc50513          	addi	a0,a0,1500 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	27c080e7          	jalr	636(ra) # 80005e90 <_Z11printStringPKc>
        return;
    80003c1c:	000b0113          	mv	sp,s6
    80003c20:	1500006f          	j	80003d70 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003c24:	00000593          	li	a1,0
    80003c28:	00009517          	auipc	a0,0x9
    80003c2c:	fd850513          	addi	a0,a0,-40 # 8000cc00 <_ZL10waitForAll>
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	a68080e7          	jalr	-1432(ra) # 80001698 <sem_open>
    thread_t threads[threadNum];
    80003c38:	00391793          	slli	a5,s2,0x3
    80003c3c:	00f78793          	addi	a5,a5,15
    80003c40:	ff07f793          	andi	a5,a5,-16
    80003c44:	40f10133          	sub	sp,sp,a5
    80003c48:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003c4c:	0019071b          	addiw	a4,s2,1
    80003c50:	00171793          	slli	a5,a4,0x1
    80003c54:	00e787b3          	add	a5,a5,a4
    80003c58:	00379793          	slli	a5,a5,0x3
    80003c5c:	00f78793          	addi	a5,a5,15
    80003c60:	ff07f793          	andi	a5,a5,-16
    80003c64:	40f10133          	sub	sp,sp,a5
    80003c68:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003c6c:	00191613          	slli	a2,s2,0x1
    80003c70:	012607b3          	add	a5,a2,s2
    80003c74:	00379793          	slli	a5,a5,0x3
    80003c78:	00f987b3          	add	a5,s3,a5
    80003c7c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003c80:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003c84:	00009717          	auipc	a4,0x9
    80003c88:	f7c73703          	ld	a4,-132(a4) # 8000cc00 <_ZL10waitForAll>
    80003c8c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003c90:	00078613          	mv	a2,a5
    80003c94:	00000597          	auipc	a1,0x0
    80003c98:	d7458593          	addi	a1,a1,-652 # 80003a08 <_ZL8consumerPv>
    80003c9c:	f9840513          	addi	a0,s0,-104
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	90c080e7          	jalr	-1780(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003ca8:	00000493          	li	s1,0
    80003cac:	0280006f          	j	80003cd4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003cb0:	00000597          	auipc	a1,0x0
    80003cb4:	c1458593          	addi	a1,a1,-1004 # 800038c4 <_ZL16producerKeyboardPv>
                      data + i);
    80003cb8:	00179613          	slli	a2,a5,0x1
    80003cbc:	00f60633          	add	a2,a2,a5
    80003cc0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003cc4:	00c98633          	add	a2,s3,a2
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	8e4080e7          	jalr	-1820(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003cd0:	0014849b          	addiw	s1,s1,1
    80003cd4:	0524d263          	bge	s1,s2,80003d18 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003cd8:	00149793          	slli	a5,s1,0x1
    80003cdc:	009787b3          	add	a5,a5,s1
    80003ce0:	00379793          	slli	a5,a5,0x3
    80003ce4:	00f987b3          	add	a5,s3,a5
    80003ce8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003cec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003cf0:	00009717          	auipc	a4,0x9
    80003cf4:	f1073703          	ld	a4,-240(a4) # 8000cc00 <_ZL10waitForAll>
    80003cf8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003cfc:	00048793          	mv	a5,s1
    80003d00:	00349513          	slli	a0,s1,0x3
    80003d04:	00aa8533          	add	a0,s5,a0
    80003d08:	fa9054e3          	blez	s1,80003cb0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003d0c:	00000597          	auipc	a1,0x0
    80003d10:	c6858593          	addi	a1,a1,-920 # 80003974 <_ZL8producerPv>
    80003d14:	fa5ff06f          	j	80003cb8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	938080e7          	jalr	-1736(ra) # 80001650 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003d20:	00000493          	li	s1,0
    80003d24:	00994e63          	blt	s2,s1,80003d40 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003d28:	00009517          	auipc	a0,0x9
    80003d2c:	ed853503          	ld	a0,-296(a0) # 8000cc00 <_ZL10waitForAll>
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	9c8080e7          	jalr	-1592(ra) # 800016f8 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003d38:	0014849b          	addiw	s1,s1,1
    80003d3c:	fe9ff06f          	j	80003d24 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003d40:	00009517          	auipc	a0,0x9
    80003d44:	ec053503          	ld	a0,-320(a0) # 8000cc00 <_ZL10waitForAll>
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	988080e7          	jalr	-1656(ra) # 800016d0 <sem_close>
    delete buffer;
    80003d50:	000a0e63          	beqz	s4,80003d6c <_Z22producerConsumer_C_APIv+0x284>
    80003d54:	000a0513          	mv	a0,s4
    80003d58:	00003097          	auipc	ra,0x3
    80003d5c:	154080e7          	jalr	340(ra) # 80006eac <_ZN6BufferD1Ev>
    80003d60:	000a0513          	mv	a0,s4
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	13c080e7          	jalr	316(ra) # 80002ea0 <_ZdlPv>
    80003d6c:	000b0113          	mv	sp,s6

}
    80003d70:	f9040113          	addi	sp,s0,-112
    80003d74:	06813083          	ld	ra,104(sp)
    80003d78:	06013403          	ld	s0,96(sp)
    80003d7c:	05813483          	ld	s1,88(sp)
    80003d80:	05013903          	ld	s2,80(sp)
    80003d84:	04813983          	ld	s3,72(sp)
    80003d88:	04013a03          	ld	s4,64(sp)
    80003d8c:	03813a83          	ld	s5,56(sp)
    80003d90:	03013b03          	ld	s6,48(sp)
    80003d94:	07010113          	addi	sp,sp,112
    80003d98:	00008067          	ret
    80003d9c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003da0:	000a0513          	mv	a0,s4
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	0fc080e7          	jalr	252(ra) # 80002ea0 <_ZdlPv>
    80003dac:	00048513          	mv	a0,s1
    80003db0:	0000a097          	auipc	ra,0xa
    80003db4:	f68080e7          	jalr	-152(ra) # 8000dd18 <_Unwind_Resume>

0000000080003db8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	01213023          	sd	s2,0(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003dd4:	00100793          	li	a5,1
    80003dd8:	02a7f863          	bgeu	a5,a0,80003e08 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003ddc:	00a00793          	li	a5,10
    80003de0:	02f577b3          	remu	a5,a0,a5
    80003de4:	02078e63          	beqz	a5,80003e20 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003de8:	fff48513          	addi	a0,s1,-1
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	fcc080e7          	jalr	-52(ra) # 80003db8 <_ZL9fibonaccim>
    80003df4:	00050913          	mv	s2,a0
    80003df8:	ffe48513          	addi	a0,s1,-2
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	fbc080e7          	jalr	-68(ra) # 80003db8 <_ZL9fibonaccim>
    80003e04:	00a90533          	add	a0,s2,a0
}
    80003e08:	01813083          	ld	ra,24(sp)
    80003e0c:	01013403          	ld	s0,16(sp)
    80003e10:	00813483          	ld	s1,8(sp)
    80003e14:	00013903          	ld	s2,0(sp)
    80003e18:	02010113          	addi	sp,sp,32
    80003e1c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	830080e7          	jalr	-2000(ra) # 80001650 <thread_dispatch>
    80003e28:	fc1ff06f          	j	80003de8 <_ZL9fibonaccim+0x30>

0000000080003e2c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00113c23          	sd	ra,24(sp)
    80003e34:	00813823          	sd	s0,16(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	01213023          	sd	s2,0(sp)
    80003e40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e44:	00000913          	li	s2,0
    80003e48:	0380006f          	j	80003e80 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	804080e7          	jalr	-2044(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003e54:	00148493          	addi	s1,s1,1
    80003e58:	000027b7          	lui	a5,0x2
    80003e5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e60:	0097ee63          	bltu	a5,s1,80003e7c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e64:	00000713          	li	a4,0
    80003e68:	000077b7          	lui	a5,0x7
    80003e6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e70:	fce7eee3          	bltu	a5,a4,80003e4c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003e74:	00170713          	addi	a4,a4,1
    80003e78:	ff1ff06f          	j	80003e68 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e7c:	00190913          	addi	s2,s2,1
    80003e80:	00900793          	li	a5,9
    80003e84:	0527e063          	bltu	a5,s2,80003ec4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e88:	00006517          	auipc	a0,0x6
    80003e8c:	39050513          	addi	a0,a0,912 # 8000a218 <CONSOLE_STATUS+0x208>
    80003e90:	00002097          	auipc	ra,0x2
    80003e94:	000080e7          	jalr	ra # 80005e90 <_Z11printStringPKc>
    80003e98:	00000613          	li	a2,0
    80003e9c:	00a00593          	li	a1,10
    80003ea0:	0009051b          	sext.w	a0,s2
    80003ea4:	00002097          	auipc	ra,0x2
    80003ea8:	19c080e7          	jalr	412(ra) # 80006040 <_Z8printIntiii>
    80003eac:	00006517          	auipc	a0,0x6
    80003eb0:	5dc50513          	addi	a0,a0,1500 # 8000a488 <CONSOLE_STATUS+0x478>
    80003eb4:	00002097          	auipc	ra,0x2
    80003eb8:	fdc080e7          	jalr	-36(ra) # 80005e90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ebc:	00000493          	li	s1,0
    80003ec0:	f99ff06f          	j	80003e58 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003ec4:	00006517          	auipc	a0,0x6
    80003ec8:	35c50513          	addi	a0,a0,860 # 8000a220 <CONSOLE_STATUS+0x210>
    80003ecc:	00002097          	auipc	ra,0x2
    80003ed0:	fc4080e7          	jalr	-60(ra) # 80005e90 <_Z11printStringPKc>
    finishedA = true;
    80003ed4:	00100793          	li	a5,1
    80003ed8:	00009717          	auipc	a4,0x9
    80003edc:	d2f70823          	sb	a5,-720(a4) # 8000cc08 <_ZL9finishedA>
}
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	00013903          	ld	s2,0(sp)
    80003ef0:	02010113          	addi	sp,sp,32
    80003ef4:	00008067          	ret

0000000080003ef8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003ef8:	fe010113          	addi	sp,sp,-32
    80003efc:	00113c23          	sd	ra,24(sp)
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00913423          	sd	s1,8(sp)
    80003f08:	01213023          	sd	s2,0(sp)
    80003f0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003f10:	00000913          	li	s2,0
    80003f14:	0380006f          	j	80003f4c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	738080e7          	jalr	1848(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003f20:	00148493          	addi	s1,s1,1
    80003f24:	000027b7          	lui	a5,0x2
    80003f28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f2c:	0097ee63          	bltu	a5,s1,80003f48 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f30:	00000713          	li	a4,0
    80003f34:	000077b7          	lui	a5,0x7
    80003f38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f3c:	fce7eee3          	bltu	a5,a4,80003f18 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003f40:	00170713          	addi	a4,a4,1
    80003f44:	ff1ff06f          	j	80003f34 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003f48:	00190913          	addi	s2,s2,1
    80003f4c:	00f00793          	li	a5,15
    80003f50:	0527e063          	bltu	a5,s2,80003f90 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f54:	00006517          	auipc	a0,0x6
    80003f58:	2dc50513          	addi	a0,a0,732 # 8000a230 <CONSOLE_STATUS+0x220>
    80003f5c:	00002097          	auipc	ra,0x2
    80003f60:	f34080e7          	jalr	-204(ra) # 80005e90 <_Z11printStringPKc>
    80003f64:	00000613          	li	a2,0
    80003f68:	00a00593          	li	a1,10
    80003f6c:	0009051b          	sext.w	a0,s2
    80003f70:	00002097          	auipc	ra,0x2
    80003f74:	0d0080e7          	jalr	208(ra) # 80006040 <_Z8printIntiii>
    80003f78:	00006517          	auipc	a0,0x6
    80003f7c:	51050513          	addi	a0,a0,1296 # 8000a488 <CONSOLE_STATUS+0x478>
    80003f80:	00002097          	auipc	ra,0x2
    80003f84:	f10080e7          	jalr	-240(ra) # 80005e90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f88:	00000493          	li	s1,0
    80003f8c:	f99ff06f          	j	80003f24 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f90:	00006517          	auipc	a0,0x6
    80003f94:	2a850513          	addi	a0,a0,680 # 8000a238 <CONSOLE_STATUS+0x228>
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	ef8080e7          	jalr	-264(ra) # 80005e90 <_Z11printStringPKc>
    finishedB = true;
    80003fa0:	00100793          	li	a5,1
    80003fa4:	00009717          	auipc	a4,0x9
    80003fa8:	c6f702a3          	sb	a5,-923(a4) # 8000cc09 <_ZL9finishedB>
    thread_dispatch();
    80003fac:	ffffd097          	auipc	ra,0xffffd
    80003fb0:	6a4080e7          	jalr	1700(ra) # 80001650 <thread_dispatch>
}
    80003fb4:	01813083          	ld	ra,24(sp)
    80003fb8:	01013403          	ld	s0,16(sp)
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	00013903          	ld	s2,0(sp)
    80003fc4:	02010113          	addi	sp,sp,32
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003fcc:	fe010113          	addi	sp,sp,-32
    80003fd0:	00113c23          	sd	ra,24(sp)
    80003fd4:	00813823          	sd	s0,16(sp)
    80003fd8:	00913423          	sd	s1,8(sp)
    80003fdc:	01213023          	sd	s2,0(sp)
    80003fe0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003fe4:	00000493          	li	s1,0
    80003fe8:	0400006f          	j	80004028 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003fec:	00006517          	auipc	a0,0x6
    80003ff0:	25c50513          	addi	a0,a0,604 # 8000a248 <CONSOLE_STATUS+0x238>
    80003ff4:	00002097          	auipc	ra,0x2
    80003ff8:	e9c080e7          	jalr	-356(ra) # 80005e90 <_Z11printStringPKc>
    80003ffc:	00000613          	li	a2,0
    80004000:	00a00593          	li	a1,10
    80004004:	00048513          	mv	a0,s1
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	038080e7          	jalr	56(ra) # 80006040 <_Z8printIntiii>
    80004010:	00006517          	auipc	a0,0x6
    80004014:	47850513          	addi	a0,a0,1144 # 8000a488 <CONSOLE_STATUS+0x478>
    80004018:	00002097          	auipc	ra,0x2
    8000401c:	e78080e7          	jalr	-392(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004020:	0014849b          	addiw	s1,s1,1
    80004024:	0ff4f493          	andi	s1,s1,255
    80004028:	00200793          	li	a5,2
    8000402c:	fc97f0e3          	bgeu	a5,s1,80003fec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004030:	00006517          	auipc	a0,0x6
    80004034:	22050513          	addi	a0,a0,544 # 8000a250 <CONSOLE_STATUS+0x240>
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	e58080e7          	jalr	-424(ra) # 80005e90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004040:	00700313          	li	t1,7
    thread_dispatch();
    80004044:	ffffd097          	auipc	ra,0xffffd
    80004048:	60c080e7          	jalr	1548(ra) # 80001650 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000404c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004050:	00006517          	auipc	a0,0x6
    80004054:	21050513          	addi	a0,a0,528 # 8000a260 <CONSOLE_STATUS+0x250>
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	e38080e7          	jalr	-456(ra) # 80005e90 <_Z11printStringPKc>
    80004060:	00000613          	li	a2,0
    80004064:	00a00593          	li	a1,10
    80004068:	0009051b          	sext.w	a0,s2
    8000406c:	00002097          	auipc	ra,0x2
    80004070:	fd4080e7          	jalr	-44(ra) # 80006040 <_Z8printIntiii>
    80004074:	00006517          	auipc	a0,0x6
    80004078:	41450513          	addi	a0,a0,1044 # 8000a488 <CONSOLE_STATUS+0x478>
    8000407c:	00002097          	auipc	ra,0x2
    80004080:	e14080e7          	jalr	-492(ra) # 80005e90 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004084:	00c00513          	li	a0,12
    80004088:	00000097          	auipc	ra,0x0
    8000408c:	d30080e7          	jalr	-720(ra) # 80003db8 <_ZL9fibonaccim>
    80004090:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004094:	00006517          	auipc	a0,0x6
    80004098:	1d450513          	addi	a0,a0,468 # 8000a268 <CONSOLE_STATUS+0x258>
    8000409c:	00002097          	auipc	ra,0x2
    800040a0:	df4080e7          	jalr	-524(ra) # 80005e90 <_Z11printStringPKc>
    800040a4:	00000613          	li	a2,0
    800040a8:	00a00593          	li	a1,10
    800040ac:	0009051b          	sext.w	a0,s2
    800040b0:	00002097          	auipc	ra,0x2
    800040b4:	f90080e7          	jalr	-112(ra) # 80006040 <_Z8printIntiii>
    800040b8:	00006517          	auipc	a0,0x6
    800040bc:	3d050513          	addi	a0,a0,976 # 8000a488 <CONSOLE_STATUS+0x478>
    800040c0:	00002097          	auipc	ra,0x2
    800040c4:	dd0080e7          	jalr	-560(ra) # 80005e90 <_Z11printStringPKc>
    800040c8:	0400006f          	j	80004108 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800040cc:	00006517          	auipc	a0,0x6
    800040d0:	17c50513          	addi	a0,a0,380 # 8000a248 <CONSOLE_STATUS+0x238>
    800040d4:	00002097          	auipc	ra,0x2
    800040d8:	dbc080e7          	jalr	-580(ra) # 80005e90 <_Z11printStringPKc>
    800040dc:	00000613          	li	a2,0
    800040e0:	00a00593          	li	a1,10
    800040e4:	00048513          	mv	a0,s1
    800040e8:	00002097          	auipc	ra,0x2
    800040ec:	f58080e7          	jalr	-168(ra) # 80006040 <_Z8printIntiii>
    800040f0:	00006517          	auipc	a0,0x6
    800040f4:	39850513          	addi	a0,a0,920 # 8000a488 <CONSOLE_STATUS+0x478>
    800040f8:	00002097          	auipc	ra,0x2
    800040fc:	d98080e7          	jalr	-616(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004100:	0014849b          	addiw	s1,s1,1
    80004104:	0ff4f493          	andi	s1,s1,255
    80004108:	00500793          	li	a5,5
    8000410c:	fc97f0e3          	bgeu	a5,s1,800040cc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004110:	00006517          	auipc	a0,0x6
    80004114:	11050513          	addi	a0,a0,272 # 8000a220 <CONSOLE_STATUS+0x210>
    80004118:	00002097          	auipc	ra,0x2
    8000411c:	d78080e7          	jalr	-648(ra) # 80005e90 <_Z11printStringPKc>
    finishedC = true;
    80004120:	00100793          	li	a5,1
    80004124:	00009717          	auipc	a4,0x9
    80004128:	aef70323          	sb	a5,-1306(a4) # 8000cc0a <_ZL9finishedC>
    thread_dispatch();
    8000412c:	ffffd097          	auipc	ra,0xffffd
    80004130:	524080e7          	jalr	1316(ra) # 80001650 <thread_dispatch>
}
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00813483          	ld	s1,8(sp)
    80004140:	00013903          	ld	s2,0(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret

000000008000414c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000414c:	fe010113          	addi	sp,sp,-32
    80004150:	00113c23          	sd	ra,24(sp)
    80004154:	00813823          	sd	s0,16(sp)
    80004158:	00913423          	sd	s1,8(sp)
    8000415c:	01213023          	sd	s2,0(sp)
    80004160:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004164:	00a00493          	li	s1,10
    80004168:	0400006f          	j	800041a8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000416c:	00006517          	auipc	a0,0x6
    80004170:	10c50513          	addi	a0,a0,268 # 8000a278 <CONSOLE_STATUS+0x268>
    80004174:	00002097          	auipc	ra,0x2
    80004178:	d1c080e7          	jalr	-740(ra) # 80005e90 <_Z11printStringPKc>
    8000417c:	00000613          	li	a2,0
    80004180:	00a00593          	li	a1,10
    80004184:	00048513          	mv	a0,s1
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	eb8080e7          	jalr	-328(ra) # 80006040 <_Z8printIntiii>
    80004190:	00006517          	auipc	a0,0x6
    80004194:	2f850513          	addi	a0,a0,760 # 8000a488 <CONSOLE_STATUS+0x478>
    80004198:	00002097          	auipc	ra,0x2
    8000419c:	cf8080e7          	jalr	-776(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800041a0:	0014849b          	addiw	s1,s1,1
    800041a4:	0ff4f493          	andi	s1,s1,255
    800041a8:	00c00793          	li	a5,12
    800041ac:	fc97f0e3          	bgeu	a5,s1,8000416c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800041b0:	00006517          	auipc	a0,0x6
    800041b4:	0d050513          	addi	a0,a0,208 # 8000a280 <CONSOLE_STATUS+0x270>
    800041b8:	00002097          	auipc	ra,0x2
    800041bc:	cd8080e7          	jalr	-808(ra) # 80005e90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800041c0:	00500313          	li	t1,5
    thread_dispatch();
    800041c4:	ffffd097          	auipc	ra,0xffffd
    800041c8:	48c080e7          	jalr	1164(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    800041cc:	01000513          	li	a0,16
    800041d0:	00000097          	auipc	ra,0x0
    800041d4:	be8080e7          	jalr	-1048(ra) # 80003db8 <_ZL9fibonaccim>
    800041d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800041dc:	00006517          	auipc	a0,0x6
    800041e0:	0b450513          	addi	a0,a0,180 # 8000a290 <CONSOLE_STATUS+0x280>
    800041e4:	00002097          	auipc	ra,0x2
    800041e8:	cac080e7          	jalr	-852(ra) # 80005e90 <_Z11printStringPKc>
    800041ec:	00000613          	li	a2,0
    800041f0:	00a00593          	li	a1,10
    800041f4:	0009051b          	sext.w	a0,s2
    800041f8:	00002097          	auipc	ra,0x2
    800041fc:	e48080e7          	jalr	-440(ra) # 80006040 <_Z8printIntiii>
    80004200:	00006517          	auipc	a0,0x6
    80004204:	28850513          	addi	a0,a0,648 # 8000a488 <CONSOLE_STATUS+0x478>
    80004208:	00002097          	auipc	ra,0x2
    8000420c:	c88080e7          	jalr	-888(ra) # 80005e90 <_Z11printStringPKc>
    80004210:	0400006f          	j	80004250 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004214:	00006517          	auipc	a0,0x6
    80004218:	06450513          	addi	a0,a0,100 # 8000a278 <CONSOLE_STATUS+0x268>
    8000421c:	00002097          	auipc	ra,0x2
    80004220:	c74080e7          	jalr	-908(ra) # 80005e90 <_Z11printStringPKc>
    80004224:	00000613          	li	a2,0
    80004228:	00a00593          	li	a1,10
    8000422c:	00048513          	mv	a0,s1
    80004230:	00002097          	auipc	ra,0x2
    80004234:	e10080e7          	jalr	-496(ra) # 80006040 <_Z8printIntiii>
    80004238:	00006517          	auipc	a0,0x6
    8000423c:	25050513          	addi	a0,a0,592 # 8000a488 <CONSOLE_STATUS+0x478>
    80004240:	00002097          	auipc	ra,0x2
    80004244:	c50080e7          	jalr	-944(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004248:	0014849b          	addiw	s1,s1,1
    8000424c:	0ff4f493          	andi	s1,s1,255
    80004250:	00f00793          	li	a5,15
    80004254:	fc97f0e3          	bgeu	a5,s1,80004214 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004258:	00006517          	auipc	a0,0x6
    8000425c:	04850513          	addi	a0,a0,72 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004260:	00002097          	auipc	ra,0x2
    80004264:	c30080e7          	jalr	-976(ra) # 80005e90 <_Z11printStringPKc>
    finishedD = true;
    80004268:	00100793          	li	a5,1
    8000426c:	00009717          	auipc	a4,0x9
    80004270:	98f70fa3          	sb	a5,-1633(a4) # 8000cc0b <_ZL9finishedD>
    thread_dispatch();
    80004274:	ffffd097          	auipc	ra,0xffffd
    80004278:	3dc080e7          	jalr	988(ra) # 80001650 <thread_dispatch>
}
    8000427c:	01813083          	ld	ra,24(sp)
    80004280:	01013403          	ld	s0,16(sp)
    80004284:	00813483          	ld	s1,8(sp)
    80004288:	00013903          	ld	s2,0(sp)
    8000428c:	02010113          	addi	sp,sp,32
    80004290:	00008067          	ret

0000000080004294 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004294:	fc010113          	addi	sp,sp,-64
    80004298:	02113c23          	sd	ra,56(sp)
    8000429c:	02813823          	sd	s0,48(sp)
    800042a0:	02913423          	sd	s1,40(sp)
    800042a4:	03213023          	sd	s2,32(sp)
    800042a8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800042ac:	02000513          	li	a0,32
    800042b0:	fffff097          	auipc	ra,0xfffff
    800042b4:	bc8080e7          	jalr	-1080(ra) # 80002e78 <_Znwm>
    800042b8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800042bc:	fffff097          	auipc	ra,0xfffff
    800042c0:	ca4080e7          	jalr	-860(ra) # 80002f60 <_ZN6ThreadC1Ev>
    800042c4:	00008797          	auipc	a5,0x8
    800042c8:	48c78793          	addi	a5,a5,1164 # 8000c750 <_ZTV7WorkerA+0x10>
    800042cc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800042d0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800042d4:	00006517          	auipc	a0,0x6
    800042d8:	fdc50513          	addi	a0,a0,-36 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800042dc:	00002097          	auipc	ra,0x2
    800042e0:	bb4080e7          	jalr	-1100(ra) # 80005e90 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800042e4:	02000513          	li	a0,32
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	b90080e7          	jalr	-1136(ra) # 80002e78 <_Znwm>
    800042f0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800042f4:	fffff097          	auipc	ra,0xfffff
    800042f8:	c6c080e7          	jalr	-916(ra) # 80002f60 <_ZN6ThreadC1Ev>
    800042fc:	00008797          	auipc	a5,0x8
    80004300:	47c78793          	addi	a5,a5,1148 # 8000c778 <_ZTV7WorkerB+0x10>
    80004304:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004308:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000430c:	00006517          	auipc	a0,0x6
    80004310:	fbc50513          	addi	a0,a0,-68 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004314:	00002097          	auipc	ra,0x2
    80004318:	b7c080e7          	jalr	-1156(ra) # 80005e90 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000431c:	02000513          	li	a0,32
    80004320:	fffff097          	auipc	ra,0xfffff
    80004324:	b58080e7          	jalr	-1192(ra) # 80002e78 <_Znwm>
    80004328:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000432c:	fffff097          	auipc	ra,0xfffff
    80004330:	c34080e7          	jalr	-972(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80004334:	00008797          	auipc	a5,0x8
    80004338:	46c78793          	addi	a5,a5,1132 # 8000c7a0 <_ZTV7WorkerC+0x10>
    8000433c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004340:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004344:	00006517          	auipc	a0,0x6
    80004348:	f9c50513          	addi	a0,a0,-100 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    8000434c:	00002097          	auipc	ra,0x2
    80004350:	b44080e7          	jalr	-1212(ra) # 80005e90 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004354:	02000513          	li	a0,32
    80004358:	fffff097          	auipc	ra,0xfffff
    8000435c:	b20080e7          	jalr	-1248(ra) # 80002e78 <_Znwm>
    80004360:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004364:	fffff097          	auipc	ra,0xfffff
    80004368:	bfc080e7          	jalr	-1028(ra) # 80002f60 <_ZN6ThreadC1Ev>
    8000436c:	00008797          	auipc	a5,0x8
    80004370:	45c78793          	addi	a5,a5,1116 # 8000c7c8 <_ZTV7WorkerD+0x10>
    80004374:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004378:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000437c:	00006517          	auipc	a0,0x6
    80004380:	f7c50513          	addi	a0,a0,-132 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004384:	00002097          	auipc	ra,0x2
    80004388:	b0c080e7          	jalr	-1268(ra) # 80005e90 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000438c:	00000493          	li	s1,0
    80004390:	00300793          	li	a5,3
    80004394:	0297c663          	blt	a5,s1,800043c0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004398:	00349793          	slli	a5,s1,0x3
    8000439c:	fe040713          	addi	a4,s0,-32
    800043a0:	00f707b3          	add	a5,a4,a5
    800043a4:	fe07b503          	ld	a0,-32(a5)
    800043a8:	fffff097          	auipc	ra,0xfffff
    800043ac:	be8080e7          	jalr	-1048(ra) # 80002f90 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800043b0:	0014849b          	addiw	s1,s1,1
    800043b4:	fddff06f          	j	80004390 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800043b8:	fffff097          	auipc	ra,0xfffff
    800043bc:	c2c080e7          	jalr	-980(ra) # 80002fe4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800043c0:	00009797          	auipc	a5,0x9
    800043c4:	8487c783          	lbu	a5,-1976(a5) # 8000cc08 <_ZL9finishedA>
    800043c8:	fe0788e3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043cc:	00009797          	auipc	a5,0x9
    800043d0:	83d7c783          	lbu	a5,-1987(a5) # 8000cc09 <_ZL9finishedB>
    800043d4:	fe0782e3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043d8:	00009797          	auipc	a5,0x9
    800043dc:	8327c783          	lbu	a5,-1998(a5) # 8000cc0a <_ZL9finishedC>
    800043e0:	fc078ce3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043e4:	00009797          	auipc	a5,0x9
    800043e8:	8277c783          	lbu	a5,-2009(a5) # 8000cc0b <_ZL9finishedD>
    800043ec:	fc0786e3          	beqz	a5,800043b8 <_Z20Threads_CPP_API_testv+0x124>
    800043f0:	fc040493          	addi	s1,s0,-64
    800043f4:	0080006f          	j	800043fc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800043f8:	00848493          	addi	s1,s1,8
    800043fc:	fe040793          	addi	a5,s0,-32
    80004400:	08f48663          	beq	s1,a5,8000448c <_Z20Threads_CPP_API_testv+0x1f8>
    80004404:	0004b503          	ld	a0,0(s1)
    80004408:	fe0508e3          	beqz	a0,800043f8 <_Z20Threads_CPP_API_testv+0x164>
    8000440c:	00053783          	ld	a5,0(a0)
    80004410:	0087b783          	ld	a5,8(a5)
    80004414:	000780e7          	jalr	a5
    80004418:	fe1ff06f          	j	800043f8 <_Z20Threads_CPP_API_testv+0x164>
    8000441c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004420:	00048513          	mv	a0,s1
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	a7c080e7          	jalr	-1412(ra) # 80002ea0 <_ZdlPv>
    8000442c:	00090513          	mv	a0,s2
    80004430:	0000a097          	auipc	ra,0xa
    80004434:	8e8080e7          	jalr	-1816(ra) # 8000dd18 <_Unwind_Resume>
    80004438:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000443c:	00048513          	mv	a0,s1
    80004440:	fffff097          	auipc	ra,0xfffff
    80004444:	a60080e7          	jalr	-1440(ra) # 80002ea0 <_ZdlPv>
    80004448:	00090513          	mv	a0,s2
    8000444c:	0000a097          	auipc	ra,0xa
    80004450:	8cc080e7          	jalr	-1844(ra) # 8000dd18 <_Unwind_Resume>
    80004454:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004458:	00048513          	mv	a0,s1
    8000445c:	fffff097          	auipc	ra,0xfffff
    80004460:	a44080e7          	jalr	-1468(ra) # 80002ea0 <_ZdlPv>
    80004464:	00090513          	mv	a0,s2
    80004468:	0000a097          	auipc	ra,0xa
    8000446c:	8b0080e7          	jalr	-1872(ra) # 8000dd18 <_Unwind_Resume>
    80004470:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004474:	00048513          	mv	a0,s1
    80004478:	fffff097          	auipc	ra,0xfffff
    8000447c:	a28080e7          	jalr	-1496(ra) # 80002ea0 <_ZdlPv>
    80004480:	00090513          	mv	a0,s2
    80004484:	0000a097          	auipc	ra,0xa
    80004488:	894080e7          	jalr	-1900(ra) # 8000dd18 <_Unwind_Resume>
}
    8000448c:	03813083          	ld	ra,56(sp)
    80004490:	03013403          	ld	s0,48(sp)
    80004494:	02813483          	ld	s1,40(sp)
    80004498:	02013903          	ld	s2,32(sp)
    8000449c:	04010113          	addi	sp,sp,64
    800044a0:	00008067          	ret

00000000800044a4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800044a4:	ff010113          	addi	sp,sp,-16
    800044a8:	00113423          	sd	ra,8(sp)
    800044ac:	00813023          	sd	s0,0(sp)
    800044b0:	01010413          	addi	s0,sp,16
    800044b4:	00008797          	auipc	a5,0x8
    800044b8:	29c78793          	addi	a5,a5,668 # 8000c750 <_ZTV7WorkerA+0x10>
    800044bc:	00f53023          	sd	a5,0(a0)
    800044c0:	fffff097          	auipc	ra,0xfffff
    800044c4:	8e8080e7          	jalr	-1816(ra) # 80002da8 <_ZN6ThreadD1Ev>
    800044c8:	00813083          	ld	ra,8(sp)
    800044cc:	00013403          	ld	s0,0(sp)
    800044d0:	01010113          	addi	sp,sp,16
    800044d4:	00008067          	ret

00000000800044d8 <_ZN7WorkerAD0Ev>:
    800044d8:	fe010113          	addi	sp,sp,-32
    800044dc:	00113c23          	sd	ra,24(sp)
    800044e0:	00813823          	sd	s0,16(sp)
    800044e4:	00913423          	sd	s1,8(sp)
    800044e8:	02010413          	addi	s0,sp,32
    800044ec:	00050493          	mv	s1,a0
    800044f0:	00008797          	auipc	a5,0x8
    800044f4:	26078793          	addi	a5,a5,608 # 8000c750 <_ZTV7WorkerA+0x10>
    800044f8:	00f53023          	sd	a5,0(a0)
    800044fc:	fffff097          	auipc	ra,0xfffff
    80004500:	8ac080e7          	jalr	-1876(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004504:	00048513          	mv	a0,s1
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	998080e7          	jalr	-1640(ra) # 80002ea0 <_ZdlPv>
    80004510:	01813083          	ld	ra,24(sp)
    80004514:	01013403          	ld	s0,16(sp)
    80004518:	00813483          	ld	s1,8(sp)
    8000451c:	02010113          	addi	sp,sp,32
    80004520:	00008067          	ret

0000000080004524 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004524:	ff010113          	addi	sp,sp,-16
    80004528:	00113423          	sd	ra,8(sp)
    8000452c:	00813023          	sd	s0,0(sp)
    80004530:	01010413          	addi	s0,sp,16
    80004534:	00008797          	auipc	a5,0x8
    80004538:	24478793          	addi	a5,a5,580 # 8000c778 <_ZTV7WorkerB+0x10>
    8000453c:	00f53023          	sd	a5,0(a0)
    80004540:	fffff097          	auipc	ra,0xfffff
    80004544:	868080e7          	jalr	-1944(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004548:	00813083          	ld	ra,8(sp)
    8000454c:	00013403          	ld	s0,0(sp)
    80004550:	01010113          	addi	sp,sp,16
    80004554:	00008067          	ret

0000000080004558 <_ZN7WorkerBD0Ev>:
    80004558:	fe010113          	addi	sp,sp,-32
    8000455c:	00113c23          	sd	ra,24(sp)
    80004560:	00813823          	sd	s0,16(sp)
    80004564:	00913423          	sd	s1,8(sp)
    80004568:	02010413          	addi	s0,sp,32
    8000456c:	00050493          	mv	s1,a0
    80004570:	00008797          	auipc	a5,0x8
    80004574:	20878793          	addi	a5,a5,520 # 8000c778 <_ZTV7WorkerB+0x10>
    80004578:	00f53023          	sd	a5,0(a0)
    8000457c:	fffff097          	auipc	ra,0xfffff
    80004580:	82c080e7          	jalr	-2004(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004584:	00048513          	mv	a0,s1
    80004588:	fffff097          	auipc	ra,0xfffff
    8000458c:	918080e7          	jalr	-1768(ra) # 80002ea0 <_ZdlPv>
    80004590:	01813083          	ld	ra,24(sp)
    80004594:	01013403          	ld	s0,16(sp)
    80004598:	00813483          	ld	s1,8(sp)
    8000459c:	02010113          	addi	sp,sp,32
    800045a0:	00008067          	ret

00000000800045a4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800045a4:	ff010113          	addi	sp,sp,-16
    800045a8:	00113423          	sd	ra,8(sp)
    800045ac:	00813023          	sd	s0,0(sp)
    800045b0:	01010413          	addi	s0,sp,16
    800045b4:	00008797          	auipc	a5,0x8
    800045b8:	1ec78793          	addi	a5,a5,492 # 8000c7a0 <_ZTV7WorkerC+0x10>
    800045bc:	00f53023          	sd	a5,0(a0)
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	7e8080e7          	jalr	2024(ra) # 80002da8 <_ZN6ThreadD1Ev>
    800045c8:	00813083          	ld	ra,8(sp)
    800045cc:	00013403          	ld	s0,0(sp)
    800045d0:	01010113          	addi	sp,sp,16
    800045d4:	00008067          	ret

00000000800045d8 <_ZN7WorkerCD0Ev>:
    800045d8:	fe010113          	addi	sp,sp,-32
    800045dc:	00113c23          	sd	ra,24(sp)
    800045e0:	00813823          	sd	s0,16(sp)
    800045e4:	00913423          	sd	s1,8(sp)
    800045e8:	02010413          	addi	s0,sp,32
    800045ec:	00050493          	mv	s1,a0
    800045f0:	00008797          	auipc	a5,0x8
    800045f4:	1b078793          	addi	a5,a5,432 # 8000c7a0 <_ZTV7WorkerC+0x10>
    800045f8:	00f53023          	sd	a5,0(a0)
    800045fc:	ffffe097          	auipc	ra,0xffffe
    80004600:	7ac080e7          	jalr	1964(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004604:	00048513          	mv	a0,s1
    80004608:	fffff097          	auipc	ra,0xfffff
    8000460c:	898080e7          	jalr	-1896(ra) # 80002ea0 <_ZdlPv>
    80004610:	01813083          	ld	ra,24(sp)
    80004614:	01013403          	ld	s0,16(sp)
    80004618:	00813483          	ld	s1,8(sp)
    8000461c:	02010113          	addi	sp,sp,32
    80004620:	00008067          	ret

0000000080004624 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004624:	ff010113          	addi	sp,sp,-16
    80004628:	00113423          	sd	ra,8(sp)
    8000462c:	00813023          	sd	s0,0(sp)
    80004630:	01010413          	addi	s0,sp,16
    80004634:	00008797          	auipc	a5,0x8
    80004638:	19478793          	addi	a5,a5,404 # 8000c7c8 <_ZTV7WorkerD+0x10>
    8000463c:	00f53023          	sd	a5,0(a0)
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	768080e7          	jalr	1896(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004648:	00813083          	ld	ra,8(sp)
    8000464c:	00013403          	ld	s0,0(sp)
    80004650:	01010113          	addi	sp,sp,16
    80004654:	00008067          	ret

0000000080004658 <_ZN7WorkerDD0Ev>:
    80004658:	fe010113          	addi	sp,sp,-32
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	00813823          	sd	s0,16(sp)
    80004664:	00913423          	sd	s1,8(sp)
    80004668:	02010413          	addi	s0,sp,32
    8000466c:	00050493          	mv	s1,a0
    80004670:	00008797          	auipc	a5,0x8
    80004674:	15878793          	addi	a5,a5,344 # 8000c7c8 <_ZTV7WorkerD+0x10>
    80004678:	00f53023          	sd	a5,0(a0)
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	72c080e7          	jalr	1836(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004684:	00048513          	mv	a0,s1
    80004688:	fffff097          	auipc	ra,0xfffff
    8000468c:	818080e7          	jalr	-2024(ra) # 80002ea0 <_ZdlPv>
    80004690:	01813083          	ld	ra,24(sp)
    80004694:	01013403          	ld	s0,16(sp)
    80004698:	00813483          	ld	s1,8(sp)
    8000469c:	02010113          	addi	sp,sp,32
    800046a0:	00008067          	ret

00000000800046a4 <_ZN7WorkerA3runEv>:
    void run() override {
    800046a4:	ff010113          	addi	sp,sp,-16
    800046a8:	00113423          	sd	ra,8(sp)
    800046ac:	00813023          	sd	s0,0(sp)
    800046b0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800046b4:	00000593          	li	a1,0
    800046b8:	fffff097          	auipc	ra,0xfffff
    800046bc:	774080e7          	jalr	1908(ra) # 80003e2c <_ZN7WorkerA11workerBodyAEPv>
    }
    800046c0:	00813083          	ld	ra,8(sp)
    800046c4:	00013403          	ld	s0,0(sp)
    800046c8:	01010113          	addi	sp,sp,16
    800046cc:	00008067          	ret

00000000800046d0 <_ZN7WorkerB3runEv>:
    void run() override {
    800046d0:	ff010113          	addi	sp,sp,-16
    800046d4:	00113423          	sd	ra,8(sp)
    800046d8:	00813023          	sd	s0,0(sp)
    800046dc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800046e0:	00000593          	li	a1,0
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	814080e7          	jalr	-2028(ra) # 80003ef8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800046ec:	00813083          	ld	ra,8(sp)
    800046f0:	00013403          	ld	s0,0(sp)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <_ZN7WorkerC3runEv>:
    void run() override {
    800046fc:	ff010113          	addi	sp,sp,-16
    80004700:	00113423          	sd	ra,8(sp)
    80004704:	00813023          	sd	s0,0(sp)
    80004708:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000470c:	00000593          	li	a1,0
    80004710:	00000097          	auipc	ra,0x0
    80004714:	8bc080e7          	jalr	-1860(ra) # 80003fcc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004718:	00813083          	ld	ra,8(sp)
    8000471c:	00013403          	ld	s0,0(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret

0000000080004728 <_ZN7WorkerD3runEv>:
    void run() override {
    80004728:	ff010113          	addi	sp,sp,-16
    8000472c:	00113423          	sd	ra,8(sp)
    80004730:	00813023          	sd	s0,0(sp)
    80004734:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004738:	00000593          	li	a1,0
    8000473c:	00000097          	auipc	ra,0x0
    80004740:	a10080e7          	jalr	-1520(ra) # 8000414c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004744:	00813083          	ld	ra,8(sp)
    80004748:	00013403          	ld	s0,0(sp)
    8000474c:	01010113          	addi	sp,sp,16
    80004750:	00008067          	ret

0000000080004754 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004754:	f8010113          	addi	sp,sp,-128
    80004758:	06113c23          	sd	ra,120(sp)
    8000475c:	06813823          	sd	s0,112(sp)
    80004760:	06913423          	sd	s1,104(sp)
    80004764:	07213023          	sd	s2,96(sp)
    80004768:	05313c23          	sd	s3,88(sp)
    8000476c:	05413823          	sd	s4,80(sp)
    80004770:	05513423          	sd	s5,72(sp)
    80004774:	05613023          	sd	s6,64(sp)
    80004778:	03713c23          	sd	s7,56(sp)
    8000477c:	03813823          	sd	s8,48(sp)
    80004780:	03913423          	sd	s9,40(sp)
    80004784:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004788:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000478c:	00006517          	auipc	a0,0x6
    80004790:	9a450513          	addi	a0,a0,-1628 # 8000a130 <CONSOLE_STATUS+0x120>
    80004794:	00001097          	auipc	ra,0x1
    80004798:	6fc080e7          	jalr	1788(ra) # 80005e90 <_Z11printStringPKc>
    getString(input, 30);
    8000479c:	01e00593          	li	a1,30
    800047a0:	f8040493          	addi	s1,s0,-128
    800047a4:	00048513          	mv	a0,s1
    800047a8:	00001097          	auipc	ra,0x1
    800047ac:	770080e7          	jalr	1904(ra) # 80005f18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00002097          	auipc	ra,0x2
    800047b8:	83c080e7          	jalr	-1988(ra) # 80005ff0 <_Z11stringToIntPKc>
    800047bc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800047c0:	00006517          	auipc	a0,0x6
    800047c4:	99050513          	addi	a0,a0,-1648 # 8000a150 <CONSOLE_STATUS+0x140>
    800047c8:	00001097          	auipc	ra,0x1
    800047cc:	6c8080e7          	jalr	1736(ra) # 80005e90 <_Z11printStringPKc>
    getString(input, 30);
    800047d0:	01e00593          	li	a1,30
    800047d4:	00048513          	mv	a0,s1
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	740080e7          	jalr	1856(ra) # 80005f18 <_Z9getStringPci>
    n = stringToInt(input);
    800047e0:	00048513          	mv	a0,s1
    800047e4:	00002097          	auipc	ra,0x2
    800047e8:	80c080e7          	jalr	-2036(ra) # 80005ff0 <_Z11stringToIntPKc>
    800047ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800047f0:	00006517          	auipc	a0,0x6
    800047f4:	98050513          	addi	a0,a0,-1664 # 8000a170 <CONSOLE_STATUS+0x160>
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	698080e7          	jalr	1688(ra) # 80005e90 <_Z11printStringPKc>
    printInt(threadNum);
    80004800:	00000613          	li	a2,0
    80004804:	00a00593          	li	a1,10
    80004808:	00098513          	mv	a0,s3
    8000480c:	00002097          	auipc	ra,0x2
    80004810:	834080e7          	jalr	-1996(ra) # 80006040 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004814:	00006517          	auipc	a0,0x6
    80004818:	97450513          	addi	a0,a0,-1676 # 8000a188 <CONSOLE_STATUS+0x178>
    8000481c:	00001097          	auipc	ra,0x1
    80004820:	674080e7          	jalr	1652(ra) # 80005e90 <_Z11printStringPKc>
    printInt(n);
    80004824:	00000613          	li	a2,0
    80004828:	00a00593          	li	a1,10
    8000482c:	00048513          	mv	a0,s1
    80004830:	00002097          	auipc	ra,0x2
    80004834:	810080e7          	jalr	-2032(ra) # 80006040 <_Z8printIntiii>
    printString(".\n");
    80004838:	00006517          	auipc	a0,0x6
    8000483c:	96850513          	addi	a0,a0,-1688 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80004840:	00001097          	auipc	ra,0x1
    80004844:	650080e7          	jalr	1616(ra) # 80005e90 <_Z11printStringPKc>
    if (threadNum > n) {
    80004848:	0334c463          	blt	s1,s3,80004870 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000484c:	03305c63          	blez	s3,80004884 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004850:	03800513          	li	a0,56
    80004854:	ffffe097          	auipc	ra,0xffffe
    80004858:	624080e7          	jalr	1572(ra) # 80002e78 <_Znwm>
    8000485c:	00050a93          	mv	s5,a0
    80004860:	00048593          	mv	a1,s1
    80004864:	00002097          	auipc	ra,0x2
    80004868:	8fc080e7          	jalr	-1796(ra) # 80006160 <_ZN9BufferCPPC1Ei>
    8000486c:	0300006f          	j	8000489c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    80004870:	00006517          	auipc	a0,0x6
    80004874:	aa050513          	addi	a0,a0,-1376 # 8000a310 <CONSOLE_STATUS+0x300>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	618080e7          	jalr	1560(ra) # 80005e90 <_Z11printStringPKc>
        return;
    80004880:	0140006f          	j	80004894 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004884:	00006517          	auipc	a0,0x6
    80004888:	96450513          	addi	a0,a0,-1692 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    8000488c:	00001097          	auipc	ra,0x1
    80004890:	604080e7          	jalr	1540(ra) # 80005e90 <_Z11printStringPKc>
        return;
    80004894:	000c0113          	mv	sp,s8
    80004898:	2140006f          	j	80004aac <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000489c:	01000513          	li	a0,16
    800048a0:	ffffe097          	auipc	ra,0xffffe
    800048a4:	5d8080e7          	jalr	1496(ra) # 80002e78 <_Znwm>
    800048a8:	00050913          	mv	s2,a0
    800048ac:	00000593          	li	a1,0
    800048b0:	ffffe097          	auipc	ra,0xffffe
    800048b4:	784080e7          	jalr	1924(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    800048b8:	00008797          	auipc	a5,0x8
    800048bc:	3727b023          	sd	s2,864(a5) # 8000cc18 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800048c0:	00399793          	slli	a5,s3,0x3
    800048c4:	00f78793          	addi	a5,a5,15
    800048c8:	ff07f793          	andi	a5,a5,-16
    800048cc:	40f10133          	sub	sp,sp,a5
    800048d0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800048d4:	0019871b          	addiw	a4,s3,1
    800048d8:	00171793          	slli	a5,a4,0x1
    800048dc:	00e787b3          	add	a5,a5,a4
    800048e0:	00379793          	slli	a5,a5,0x3
    800048e4:	00f78793          	addi	a5,a5,15
    800048e8:	ff07f793          	andi	a5,a5,-16
    800048ec:	40f10133          	sub	sp,sp,a5
    800048f0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800048f4:	00199493          	slli	s1,s3,0x1
    800048f8:	013484b3          	add	s1,s1,s3
    800048fc:	00349493          	slli	s1,s1,0x3
    80004900:	009b04b3          	add	s1,s6,s1
    80004904:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004908:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000490c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004910:	02800513          	li	a0,40
    80004914:	ffffe097          	auipc	ra,0xffffe
    80004918:	564080e7          	jalr	1380(ra) # 80002e78 <_Znwm>
    8000491c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004920:	ffffe097          	auipc	ra,0xffffe
    80004924:	640080e7          	jalr	1600(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80004928:	00008797          	auipc	a5,0x8
    8000492c:	f1878793          	addi	a5,a5,-232 # 8000c840 <_ZTV8Consumer+0x10>
    80004930:	00fbb023          	sd	a5,0(s7)
    80004934:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004938:	000b8513          	mv	a0,s7
    8000493c:	ffffe097          	auipc	ra,0xffffe
    80004940:	654080e7          	jalr	1620(ra) # 80002f90 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004944:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004948:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000494c:	00008797          	auipc	a5,0x8
    80004950:	2cc7b783          	ld	a5,716(a5) # 8000cc18 <_ZL10waitForAll>
    80004954:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004958:	02800513          	li	a0,40
    8000495c:	ffffe097          	auipc	ra,0xffffe
    80004960:	51c080e7          	jalr	1308(ra) # 80002e78 <_Znwm>
    80004964:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004968:	ffffe097          	auipc	ra,0xffffe
    8000496c:	5f8080e7          	jalr	1528(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80004970:	00008797          	auipc	a5,0x8
    80004974:	e8078793          	addi	a5,a5,-384 # 8000c7f0 <_ZTV16ProducerKeyborad+0x10>
    80004978:	00f4b023          	sd	a5,0(s1)
    8000497c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004980:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004984:	00048513          	mv	a0,s1
    80004988:	ffffe097          	auipc	ra,0xffffe
    8000498c:	608080e7          	jalr	1544(ra) # 80002f90 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004990:	00100913          	li	s2,1
    80004994:	0300006f          	j	800049c4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004998:	00008797          	auipc	a5,0x8
    8000499c:	e8078793          	addi	a5,a5,-384 # 8000c818 <_ZTV8Producer+0x10>
    800049a0:	00fcb023          	sd	a5,0(s9)
    800049a4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800049a8:	00391793          	slli	a5,s2,0x3
    800049ac:	00fa07b3          	add	a5,s4,a5
    800049b0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800049b4:	000c8513          	mv	a0,s9
    800049b8:	ffffe097          	auipc	ra,0xffffe
    800049bc:	5d8080e7          	jalr	1496(ra) # 80002f90 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800049c0:	0019091b          	addiw	s2,s2,1
    800049c4:	05395263          	bge	s2,s3,80004a08 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800049c8:	00191493          	slli	s1,s2,0x1
    800049cc:	012484b3          	add	s1,s1,s2
    800049d0:	00349493          	slli	s1,s1,0x3
    800049d4:	009b04b3          	add	s1,s6,s1
    800049d8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800049dc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800049e0:	00008797          	auipc	a5,0x8
    800049e4:	2387b783          	ld	a5,568(a5) # 8000cc18 <_ZL10waitForAll>
    800049e8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800049ec:	02800513          	li	a0,40
    800049f0:	ffffe097          	auipc	ra,0xffffe
    800049f4:	488080e7          	jalr	1160(ra) # 80002e78 <_Znwm>
    800049f8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800049fc:	ffffe097          	auipc	ra,0xffffe
    80004a00:	564080e7          	jalr	1380(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80004a04:	f95ff06f          	j	80004998 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	5dc080e7          	jalr	1500(ra) # 80002fe4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a10:	00000493          	li	s1,0
    80004a14:	0099ce63          	blt	s3,s1,80004a30 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004a18:	00008517          	auipc	a0,0x8
    80004a1c:	20053503          	ld	a0,512(a0) # 8000cc18 <_ZL10waitForAll>
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	64c080e7          	jalr	1612(ra) # 8000306c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a28:	0014849b          	addiw	s1,s1,1
    80004a2c:	fe9ff06f          	j	80004a14 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004a30:	00008517          	auipc	a0,0x8
    80004a34:	1e853503          	ld	a0,488(a0) # 8000cc18 <_ZL10waitForAll>
    80004a38:	00050863          	beqz	a0,80004a48 <_Z20testConsumerProducerv+0x2f4>
    80004a3c:	00053783          	ld	a5,0(a0)
    80004a40:	0087b783          	ld	a5,8(a5)
    80004a44:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004a48:	00000493          	li	s1,0
    80004a4c:	0080006f          	j	80004a54 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004a50:	0014849b          	addiw	s1,s1,1
    80004a54:	0334d263          	bge	s1,s3,80004a78 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004a58:	00349793          	slli	a5,s1,0x3
    80004a5c:	00fa07b3          	add	a5,s4,a5
    80004a60:	0007b503          	ld	a0,0(a5)
    80004a64:	fe0506e3          	beqz	a0,80004a50 <_Z20testConsumerProducerv+0x2fc>
    80004a68:	00053783          	ld	a5,0(a0)
    80004a6c:	0087b783          	ld	a5,8(a5)
    80004a70:	000780e7          	jalr	a5
    80004a74:	fddff06f          	j	80004a50 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004a78:	000b8a63          	beqz	s7,80004a8c <_Z20testConsumerProducerv+0x338>
    80004a7c:	000bb783          	ld	a5,0(s7)
    80004a80:	0087b783          	ld	a5,8(a5)
    80004a84:	000b8513          	mv	a0,s7
    80004a88:	000780e7          	jalr	a5
    delete buffer;
    80004a8c:	000a8e63          	beqz	s5,80004aa8 <_Z20testConsumerProducerv+0x354>
    80004a90:	000a8513          	mv	a0,s5
    80004a94:	00002097          	auipc	ra,0x2
    80004a98:	9c4080e7          	jalr	-1596(ra) # 80006458 <_ZN9BufferCPPD1Ev>
    80004a9c:	000a8513          	mv	a0,s5
    80004aa0:	ffffe097          	auipc	ra,0xffffe
    80004aa4:	400080e7          	jalr	1024(ra) # 80002ea0 <_ZdlPv>
    80004aa8:	000c0113          	mv	sp,s8
}
    80004aac:	f8040113          	addi	sp,s0,-128
    80004ab0:	07813083          	ld	ra,120(sp)
    80004ab4:	07013403          	ld	s0,112(sp)
    80004ab8:	06813483          	ld	s1,104(sp)
    80004abc:	06013903          	ld	s2,96(sp)
    80004ac0:	05813983          	ld	s3,88(sp)
    80004ac4:	05013a03          	ld	s4,80(sp)
    80004ac8:	04813a83          	ld	s5,72(sp)
    80004acc:	04013b03          	ld	s6,64(sp)
    80004ad0:	03813b83          	ld	s7,56(sp)
    80004ad4:	03013c03          	ld	s8,48(sp)
    80004ad8:	02813c83          	ld	s9,40(sp)
    80004adc:	08010113          	addi	sp,sp,128
    80004ae0:	00008067          	ret
    80004ae4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004ae8:	000a8513          	mv	a0,s5
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	3b4080e7          	jalr	948(ra) # 80002ea0 <_ZdlPv>
    80004af4:	00048513          	mv	a0,s1
    80004af8:	00009097          	auipc	ra,0x9
    80004afc:	220080e7          	jalr	544(ra) # 8000dd18 <_Unwind_Resume>
    80004b00:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004b04:	00090513          	mv	a0,s2
    80004b08:	ffffe097          	auipc	ra,0xffffe
    80004b0c:	398080e7          	jalr	920(ra) # 80002ea0 <_ZdlPv>
    80004b10:	00048513          	mv	a0,s1
    80004b14:	00009097          	auipc	ra,0x9
    80004b18:	204080e7          	jalr	516(ra) # 8000dd18 <_Unwind_Resume>
    80004b1c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004b20:	000b8513          	mv	a0,s7
    80004b24:	ffffe097          	auipc	ra,0xffffe
    80004b28:	37c080e7          	jalr	892(ra) # 80002ea0 <_ZdlPv>
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00009097          	auipc	ra,0x9
    80004b34:	1e8080e7          	jalr	488(ra) # 8000dd18 <_Unwind_Resume>
    80004b38:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004b3c:	00048513          	mv	a0,s1
    80004b40:	ffffe097          	auipc	ra,0xffffe
    80004b44:	360080e7          	jalr	864(ra) # 80002ea0 <_ZdlPv>
    80004b48:	00090513          	mv	a0,s2
    80004b4c:	00009097          	auipc	ra,0x9
    80004b50:	1cc080e7          	jalr	460(ra) # 8000dd18 <_Unwind_Resume>
    80004b54:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004b58:	000c8513          	mv	a0,s9
    80004b5c:	ffffe097          	auipc	ra,0xffffe
    80004b60:	344080e7          	jalr	836(ra) # 80002ea0 <_ZdlPv>
    80004b64:	00048513          	mv	a0,s1
    80004b68:	00009097          	auipc	ra,0x9
    80004b6c:	1b0080e7          	jalr	432(ra) # 8000dd18 <_Unwind_Resume>

0000000080004b70 <_ZN8Consumer3runEv>:
    void run() override {
    80004b70:	fd010113          	addi	sp,sp,-48
    80004b74:	02113423          	sd	ra,40(sp)
    80004b78:	02813023          	sd	s0,32(sp)
    80004b7c:	00913c23          	sd	s1,24(sp)
    80004b80:	01213823          	sd	s2,16(sp)
    80004b84:	01313423          	sd	s3,8(sp)
    80004b88:	03010413          	addi	s0,sp,48
    80004b8c:	00050913          	mv	s2,a0
        int i = 0;
    80004b90:	00000993          	li	s3,0
    80004b94:	0100006f          	j	80004ba4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004b98:	00a00513          	li	a0,10
    80004b9c:	ffffe097          	auipc	ra,0xffffe
    80004ba0:	5bc080e7          	jalr	1468(ra) # 80003158 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004ba4:	00008797          	auipc	a5,0x8
    80004ba8:	06c7a783          	lw	a5,108(a5) # 8000cc10 <_ZL9threadEnd>
    80004bac:	04079a63          	bnez	a5,80004c00 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004bb0:	02093783          	ld	a5,32(s2)
    80004bb4:	0087b503          	ld	a0,8(a5)
    80004bb8:	00001097          	auipc	ra,0x1
    80004bbc:	78c080e7          	jalr	1932(ra) # 80006344 <_ZN9BufferCPP3getEv>
            i++;
    80004bc0:	0019849b          	addiw	s1,s3,1
    80004bc4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004bc8:	0ff57513          	andi	a0,a0,255
    80004bcc:	ffffe097          	auipc	ra,0xffffe
    80004bd0:	58c080e7          	jalr	1420(ra) # 80003158 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004bd4:	05000793          	li	a5,80
    80004bd8:	02f4e4bb          	remw	s1,s1,a5
    80004bdc:	fc0494e3          	bnez	s1,80004ba4 <_ZN8Consumer3runEv+0x34>
    80004be0:	fb9ff06f          	j	80004b98 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004be4:	02093783          	ld	a5,32(s2)
    80004be8:	0087b503          	ld	a0,8(a5)
    80004bec:	00001097          	auipc	ra,0x1
    80004bf0:	758080e7          	jalr	1880(ra) # 80006344 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004bf4:	0ff57513          	andi	a0,a0,255
    80004bf8:	ffffe097          	auipc	ra,0xffffe
    80004bfc:	560080e7          	jalr	1376(ra) # 80003158 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004c00:	02093783          	ld	a5,32(s2)
    80004c04:	0087b503          	ld	a0,8(a5)
    80004c08:	00001097          	auipc	ra,0x1
    80004c0c:	7c8080e7          	jalr	1992(ra) # 800063d0 <_ZN9BufferCPP6getCntEv>
    80004c10:	fca04ae3          	bgtz	a0,80004be4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004c14:	02093783          	ld	a5,32(s2)
    80004c18:	0107b503          	ld	a0,16(a5)
    80004c1c:	ffffe097          	auipc	ra,0xffffe
    80004c20:	47c080e7          	jalr	1148(ra) # 80003098 <_ZN9Semaphore6signalEv>
    }
    80004c24:	02813083          	ld	ra,40(sp)
    80004c28:	02013403          	ld	s0,32(sp)
    80004c2c:	01813483          	ld	s1,24(sp)
    80004c30:	01013903          	ld	s2,16(sp)
    80004c34:	00813983          	ld	s3,8(sp)
    80004c38:	03010113          	addi	sp,sp,48
    80004c3c:	00008067          	ret

0000000080004c40 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004c40:	ff010113          	addi	sp,sp,-16
    80004c44:	00113423          	sd	ra,8(sp)
    80004c48:	00813023          	sd	s0,0(sp)
    80004c4c:	01010413          	addi	s0,sp,16
    80004c50:	00008797          	auipc	a5,0x8
    80004c54:	bf078793          	addi	a5,a5,-1040 # 8000c840 <_ZTV8Consumer+0x10>
    80004c58:	00f53023          	sd	a5,0(a0)
    80004c5c:	ffffe097          	auipc	ra,0xffffe
    80004c60:	14c080e7          	jalr	332(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004c64:	00813083          	ld	ra,8(sp)
    80004c68:	00013403          	ld	s0,0(sp)
    80004c6c:	01010113          	addi	sp,sp,16
    80004c70:	00008067          	ret

0000000080004c74 <_ZN8ConsumerD0Ev>:
    80004c74:	fe010113          	addi	sp,sp,-32
    80004c78:	00113c23          	sd	ra,24(sp)
    80004c7c:	00813823          	sd	s0,16(sp)
    80004c80:	00913423          	sd	s1,8(sp)
    80004c84:	02010413          	addi	s0,sp,32
    80004c88:	00050493          	mv	s1,a0
    80004c8c:	00008797          	auipc	a5,0x8
    80004c90:	bb478793          	addi	a5,a5,-1100 # 8000c840 <_ZTV8Consumer+0x10>
    80004c94:	00f53023          	sd	a5,0(a0)
    80004c98:	ffffe097          	auipc	ra,0xffffe
    80004c9c:	110080e7          	jalr	272(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004ca0:	00048513          	mv	a0,s1
    80004ca4:	ffffe097          	auipc	ra,0xffffe
    80004ca8:	1fc080e7          	jalr	508(ra) # 80002ea0 <_ZdlPv>
    80004cac:	01813083          	ld	ra,24(sp)
    80004cb0:	01013403          	ld	s0,16(sp)
    80004cb4:	00813483          	ld	s1,8(sp)
    80004cb8:	02010113          	addi	sp,sp,32
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004cc0:	ff010113          	addi	sp,sp,-16
    80004cc4:	00113423          	sd	ra,8(sp)
    80004cc8:	00813023          	sd	s0,0(sp)
    80004ccc:	01010413          	addi	s0,sp,16
    80004cd0:	00008797          	auipc	a5,0x8
    80004cd4:	b2078793          	addi	a5,a5,-1248 # 8000c7f0 <_ZTV16ProducerKeyborad+0x10>
    80004cd8:	00f53023          	sd	a5,0(a0)
    80004cdc:	ffffe097          	auipc	ra,0xffffe
    80004ce0:	0cc080e7          	jalr	204(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004ce4:	00813083          	ld	ra,8(sp)
    80004ce8:	00013403          	ld	s0,0(sp)
    80004cec:	01010113          	addi	sp,sp,16
    80004cf0:	00008067          	ret

0000000080004cf4 <_ZN16ProducerKeyboradD0Ev>:
    80004cf4:	fe010113          	addi	sp,sp,-32
    80004cf8:	00113c23          	sd	ra,24(sp)
    80004cfc:	00813823          	sd	s0,16(sp)
    80004d00:	00913423          	sd	s1,8(sp)
    80004d04:	02010413          	addi	s0,sp,32
    80004d08:	00050493          	mv	s1,a0
    80004d0c:	00008797          	auipc	a5,0x8
    80004d10:	ae478793          	addi	a5,a5,-1308 # 8000c7f0 <_ZTV16ProducerKeyborad+0x10>
    80004d14:	00f53023          	sd	a5,0(a0)
    80004d18:	ffffe097          	auipc	ra,0xffffe
    80004d1c:	090080e7          	jalr	144(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004d20:	00048513          	mv	a0,s1
    80004d24:	ffffe097          	auipc	ra,0xffffe
    80004d28:	17c080e7          	jalr	380(ra) # 80002ea0 <_ZdlPv>
    80004d2c:	01813083          	ld	ra,24(sp)
    80004d30:	01013403          	ld	s0,16(sp)
    80004d34:	00813483          	ld	s1,8(sp)
    80004d38:	02010113          	addi	sp,sp,32
    80004d3c:	00008067          	ret

0000000080004d40 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00113423          	sd	ra,8(sp)
    80004d48:	00813023          	sd	s0,0(sp)
    80004d4c:	01010413          	addi	s0,sp,16
    80004d50:	00008797          	auipc	a5,0x8
    80004d54:	ac878793          	addi	a5,a5,-1336 # 8000c818 <_ZTV8Producer+0x10>
    80004d58:	00f53023          	sd	a5,0(a0)
    80004d5c:	ffffe097          	auipc	ra,0xffffe
    80004d60:	04c080e7          	jalr	76(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004d64:	00813083          	ld	ra,8(sp)
    80004d68:	00013403          	ld	s0,0(sp)
    80004d6c:	01010113          	addi	sp,sp,16
    80004d70:	00008067          	ret

0000000080004d74 <_ZN8ProducerD0Ev>:
    80004d74:	fe010113          	addi	sp,sp,-32
    80004d78:	00113c23          	sd	ra,24(sp)
    80004d7c:	00813823          	sd	s0,16(sp)
    80004d80:	00913423          	sd	s1,8(sp)
    80004d84:	02010413          	addi	s0,sp,32
    80004d88:	00050493          	mv	s1,a0
    80004d8c:	00008797          	auipc	a5,0x8
    80004d90:	a8c78793          	addi	a5,a5,-1396 # 8000c818 <_ZTV8Producer+0x10>
    80004d94:	00f53023          	sd	a5,0(a0)
    80004d98:	ffffe097          	auipc	ra,0xffffe
    80004d9c:	010080e7          	jalr	16(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80004da0:	00048513          	mv	a0,s1
    80004da4:	ffffe097          	auipc	ra,0xffffe
    80004da8:	0fc080e7          	jalr	252(ra) # 80002ea0 <_ZdlPv>
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	00813483          	ld	s1,8(sp)
    80004db8:	02010113          	addi	sp,sp,32
    80004dbc:	00008067          	ret

0000000080004dc0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004dc0:	fe010113          	addi	sp,sp,-32
    80004dc4:	00113c23          	sd	ra,24(sp)
    80004dc8:	00813823          	sd	s0,16(sp)
    80004dcc:	00913423          	sd	s1,8(sp)
    80004dd0:	02010413          	addi	s0,sp,32
    80004dd4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004dd8:	ffffd097          	auipc	ra,0xffffd
    80004ddc:	9a8080e7          	jalr	-1624(ra) # 80001780 <getc>
    80004de0:	0005059b          	sext.w	a1,a0
    80004de4:	01b00793          	li	a5,27
    80004de8:	00f58c63          	beq	a1,a5,80004e00 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004dec:	0204b783          	ld	a5,32(s1)
    80004df0:	0087b503          	ld	a0,8(a5)
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	4c0080e7          	jalr	1216(ra) # 800062b4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004dfc:	fddff06f          	j	80004dd8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004e00:	00100793          	li	a5,1
    80004e04:	00008717          	auipc	a4,0x8
    80004e08:	e0f72623          	sw	a5,-500(a4) # 8000cc10 <_ZL9threadEnd>
        td->buffer->put('!');
    80004e0c:	0204b783          	ld	a5,32(s1)
    80004e10:	02100593          	li	a1,33
    80004e14:	0087b503          	ld	a0,8(a5)
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	49c080e7          	jalr	1180(ra) # 800062b4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004e20:	0204b783          	ld	a5,32(s1)
    80004e24:	0107b503          	ld	a0,16(a5)
    80004e28:	ffffe097          	auipc	ra,0xffffe
    80004e2c:	270080e7          	jalr	624(ra) # 80003098 <_ZN9Semaphore6signalEv>
    }
    80004e30:	01813083          	ld	ra,24(sp)
    80004e34:	01013403          	ld	s0,16(sp)
    80004e38:	00813483          	ld	s1,8(sp)
    80004e3c:	02010113          	addi	sp,sp,32
    80004e40:	00008067          	ret

0000000080004e44 <_ZN8Producer3runEv>:
    void run() override {
    80004e44:	fe010113          	addi	sp,sp,-32
    80004e48:	00113c23          	sd	ra,24(sp)
    80004e4c:	00813823          	sd	s0,16(sp)
    80004e50:	00913423          	sd	s1,8(sp)
    80004e54:	01213023          	sd	s2,0(sp)
    80004e58:	02010413          	addi	s0,sp,32
    80004e5c:	00050493          	mv	s1,a0
        int i = 0;
    80004e60:	00000913          	li	s2,0
        while (!threadEnd) {
    80004e64:	00008797          	auipc	a5,0x8
    80004e68:	dac7a783          	lw	a5,-596(a5) # 8000cc10 <_ZL9threadEnd>
    80004e6c:	04079263          	bnez	a5,80004eb0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004e70:	0204b783          	ld	a5,32(s1)
    80004e74:	0007a583          	lw	a1,0(a5)
    80004e78:	0305859b          	addiw	a1,a1,48
    80004e7c:	0087b503          	ld	a0,8(a5)
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	434080e7          	jalr	1076(ra) # 800062b4 <_ZN9BufferCPP3putEi>
            i++;
    80004e88:	0019071b          	addiw	a4,s2,1
    80004e8c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004e90:	0204b783          	ld	a5,32(s1)
    80004e94:	0007a783          	lw	a5,0(a5)
    80004e98:	00e787bb          	addw	a5,a5,a4
    80004e9c:	00500513          	li	a0,5
    80004ea0:	02a7e53b          	remw	a0,a5,a0
    80004ea4:	ffffe097          	auipc	ra,0xffffe
    80004ea8:	168080e7          	jalr	360(ra) # 8000300c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004eac:	fb9ff06f          	j	80004e64 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004eb0:	0204b783          	ld	a5,32(s1)
    80004eb4:	0107b503          	ld	a0,16(a5)
    80004eb8:	ffffe097          	auipc	ra,0xffffe
    80004ebc:	1e0080e7          	jalr	480(ra) # 80003098 <_ZN9Semaphore6signalEv>
    }
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	00013903          	ld	s2,0(sp)
    80004ed0:	02010113          	addi	sp,sp,32
    80004ed4:	00008067          	ret

0000000080004ed8 <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004eec:	00005517          	auipc	a0,0x5
    80004ef0:	45c50513          	addi	a0,a0,1116 # 8000a348 <CONSOLE_STATUS+0x338>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	f9c080e7          	jalr	-100(ra) # 80005e90 <_Z11printStringPKc>
    int test = getc() - '0';
    80004efc:	ffffd097          	auipc	ra,0xffffd
    80004f00:	884080e7          	jalr	-1916(ra) # 80001780 <getc>
    80004f04:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	878080e7          	jalr	-1928(ra) # 80001780 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004f10:	00700793          	li	a5,7
    80004f14:	1097e263          	bltu	a5,s1,80005018 <_Z8userMainv+0x140>
    80004f18:	00249493          	slli	s1,s1,0x2
    80004f1c:	00005717          	auipc	a4,0x5
    80004f20:	68470713          	addi	a4,a4,1668 # 8000a5a0 <CONSOLE_STATUS+0x590>
    80004f24:	00e484b3          	add	s1,s1,a4
    80004f28:	0004a783          	lw	a5,0(s1)
    80004f2c:	00e787b3          	add	a5,a5,a4
    80004f30:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004f34:	00000097          	auipc	ra,0x0
    80004f38:	5d4080e7          	jalr	1492(ra) # 80005508 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004f3c:	00005517          	auipc	a0,0x5
    80004f40:	42c50513          	addi	a0,a0,1068 # 8000a368 <CONSOLE_STATUS+0x358>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	f4c080e7          	jalr	-180(ra) # 80005e90 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    80004f4c:	01813083          	ld	ra,24(sp)
    80004f50:	01013403          	ld	s0,16(sp)
    80004f54:	00813483          	ld	s1,8(sp)
    80004f58:	02010113          	addi	sp,sp,32
    80004f5c:	00008067          	ret
            Threads_CPP_API_test();
    80004f60:	fffff097          	auipc	ra,0xfffff
    80004f64:	334080e7          	jalr	820(ra) # 80004294 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004f68:	00005517          	auipc	a0,0x5
    80004f6c:	44050513          	addi	a0,a0,1088 # 8000a3a8 <CONSOLE_STATUS+0x398>
    80004f70:	00001097          	auipc	ra,0x1
    80004f74:	f20080e7          	jalr	-224(ra) # 80005e90 <_Z11printStringPKc>
            break;
    80004f78:	fd5ff06f          	j	80004f4c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004f7c:	fffff097          	auipc	ra,0xfffff
    80004f80:	b6c080e7          	jalr	-1172(ra) # 80003ae8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004f84:	00005517          	auipc	a0,0x5
    80004f88:	46450513          	addi	a0,a0,1124 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	f04080e7          	jalr	-252(ra) # 80005e90 <_Z11printStringPKc>
            break;
    80004f94:	fb9ff06f          	j	80004f4c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	8b4080e7          	jalr	-1868(ra) # 8000584c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004fa0:	00005517          	auipc	a0,0x5
    80004fa4:	49850513          	addi	a0,a0,1176 # 8000a438 <CONSOLE_STATUS+0x428>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	ee8080e7          	jalr	-280(ra) # 80005e90 <_Z11printStringPKc>
            break;
    80004fb0:	f9dff06f          	j	80004f4c <_Z8userMainv+0x74>
            testSleeping();
    80004fb4:	00001097          	auipc	ra,0x1
    80004fb8:	648080e7          	jalr	1608(ra) # 800065fc <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80004fbc:	00005517          	auipc	a0,0x5
    80004fc0:	4d450513          	addi	a0,a0,1236 # 8000a490 <CONSOLE_STATUS+0x480>
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	ecc080e7          	jalr	-308(ra) # 80005e90 <_Z11printStringPKc>
            break;
    80004fcc:	f81ff06f          	j	80004f4c <_Z8userMainv+0x74>
            testConsumerProducer();
    80004fd0:	fffff097          	auipc	ra,0xfffff
    80004fd4:	784080e7          	jalr	1924(ra) # 80004754 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80004fd8:	00005517          	auipc	a0,0x5
    80004fdc:	4e850513          	addi	a0,a0,1256 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80004fe0:	00001097          	auipc	ra,0x1
    80004fe4:	eb0080e7          	jalr	-336(ra) # 80005e90 <_Z11printStringPKc>
            break;
    80004fe8:	f65ff06f          	j	80004f4c <_Z8userMainv+0x74>
            System_Mode_test();
    80004fec:	00002097          	auipc	ra,0x2
    80004ff0:	b84080e7          	jalr	-1148(ra) # 80006b70 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004ff4:	00005517          	auipc	a0,0x5
    80004ff8:	50c50513          	addi	a0,a0,1292 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	e94080e7          	jalr	-364(ra) # 80005e90 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005004:	00005517          	auipc	a0,0x5
    80005008:	51c50513          	addi	a0,a0,1308 # 8000a520 <CONSOLE_STATUS+0x510>
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	e84080e7          	jalr	-380(ra) # 80005e90 <_Z11printStringPKc>
            break;
    80005014:	f39ff06f          	j	80004f4c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005018:	00005517          	auipc	a0,0x5
    8000501c:	56050513          	addi	a0,a0,1376 # 8000a578 <CONSOLE_STATUS+0x568>
    80005020:	00001097          	auipc	ra,0x1
    80005024:	e70080e7          	jalr	-400(ra) # 80005e90 <_Z11printStringPKc>
    80005028:	f25ff06f          	j	80004f4c <_Z8userMainv+0x74>

000000008000502c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000502c:	fe010113          	addi	sp,sp,-32
    80005030:	00113c23          	sd	ra,24(sp)
    80005034:	00813823          	sd	s0,16(sp)
    80005038:	00913423          	sd	s1,8(sp)
    8000503c:	01213023          	sd	s2,0(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005048:	00100793          	li	a5,1
    8000504c:	02a7f863          	bgeu	a5,a0,8000507c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005050:	00a00793          	li	a5,10
    80005054:	02f577b3          	remu	a5,a0,a5
    80005058:	02078e63          	beqz	a5,80005094 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000505c:	fff48513          	addi	a0,s1,-1
    80005060:	00000097          	auipc	ra,0x0
    80005064:	fcc080e7          	jalr	-52(ra) # 8000502c <_ZL9fibonaccim>
    80005068:	00050913          	mv	s2,a0
    8000506c:	ffe48513          	addi	a0,s1,-2
    80005070:	00000097          	auipc	ra,0x0
    80005074:	fbc080e7          	jalr	-68(ra) # 8000502c <_ZL9fibonaccim>
    80005078:	00a90533          	add	a0,s2,a0
}
    8000507c:	01813083          	ld	ra,24(sp)
    80005080:	01013403          	ld	s0,16(sp)
    80005084:	00813483          	ld	s1,8(sp)
    80005088:	00013903          	ld	s2,0(sp)
    8000508c:	02010113          	addi	sp,sp,32
    80005090:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	5bc080e7          	jalr	1468(ra) # 80001650 <thread_dispatch>
    8000509c:	fc1ff06f          	j	8000505c <_ZL9fibonaccim+0x30>

00000000800050a0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800050a0:	fe010113          	addi	sp,sp,-32
    800050a4:	00113c23          	sd	ra,24(sp)
    800050a8:	00813823          	sd	s0,16(sp)
    800050ac:	00913423          	sd	s1,8(sp)
    800050b0:	01213023          	sd	s2,0(sp)
    800050b4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800050b8:	00a00493          	li	s1,10
    800050bc:	0400006f          	j	800050fc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050c0:	00005517          	auipc	a0,0x5
    800050c4:	1b850513          	addi	a0,a0,440 # 8000a278 <CONSOLE_STATUS+0x268>
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	dc8080e7          	jalr	-568(ra) # 80005e90 <_Z11printStringPKc>
    800050d0:	00000613          	li	a2,0
    800050d4:	00a00593          	li	a1,10
    800050d8:	00048513          	mv	a0,s1
    800050dc:	00001097          	auipc	ra,0x1
    800050e0:	f64080e7          	jalr	-156(ra) # 80006040 <_Z8printIntiii>
    800050e4:	00005517          	auipc	a0,0x5
    800050e8:	3a450513          	addi	a0,a0,932 # 8000a488 <CONSOLE_STATUS+0x478>
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	da4080e7          	jalr	-604(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800050f4:	0014849b          	addiw	s1,s1,1
    800050f8:	0ff4f493          	andi	s1,s1,255
    800050fc:	00c00793          	li	a5,12
    80005100:	fc97f0e3          	bgeu	a5,s1,800050c0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005104:	00005517          	auipc	a0,0x5
    80005108:	17c50513          	addi	a0,a0,380 # 8000a280 <CONSOLE_STATUS+0x270>
    8000510c:	00001097          	auipc	ra,0x1
    80005110:	d84080e7          	jalr	-636(ra) # 80005e90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005114:	00500313          	li	t1,5
    thread_dispatch();
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	538080e7          	jalr	1336(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005120:	01000513          	li	a0,16
    80005124:	00000097          	auipc	ra,0x0
    80005128:	f08080e7          	jalr	-248(ra) # 8000502c <_ZL9fibonaccim>
    8000512c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005130:	00005517          	auipc	a0,0x5
    80005134:	16050513          	addi	a0,a0,352 # 8000a290 <CONSOLE_STATUS+0x280>
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	d58080e7          	jalr	-680(ra) # 80005e90 <_Z11printStringPKc>
    80005140:	00000613          	li	a2,0
    80005144:	00a00593          	li	a1,10
    80005148:	0009051b          	sext.w	a0,s2
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	ef4080e7          	jalr	-268(ra) # 80006040 <_Z8printIntiii>
    80005154:	00005517          	auipc	a0,0x5
    80005158:	33450513          	addi	a0,a0,820 # 8000a488 <CONSOLE_STATUS+0x478>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	d34080e7          	jalr	-716(ra) # 80005e90 <_Z11printStringPKc>
    80005164:	0400006f          	j	800051a4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005168:	00005517          	auipc	a0,0x5
    8000516c:	11050513          	addi	a0,a0,272 # 8000a278 <CONSOLE_STATUS+0x268>
    80005170:	00001097          	auipc	ra,0x1
    80005174:	d20080e7          	jalr	-736(ra) # 80005e90 <_Z11printStringPKc>
    80005178:	00000613          	li	a2,0
    8000517c:	00a00593          	li	a1,10
    80005180:	00048513          	mv	a0,s1
    80005184:	00001097          	auipc	ra,0x1
    80005188:	ebc080e7          	jalr	-324(ra) # 80006040 <_Z8printIntiii>
    8000518c:	00005517          	auipc	a0,0x5
    80005190:	2fc50513          	addi	a0,a0,764 # 8000a488 <CONSOLE_STATUS+0x478>
    80005194:	00001097          	auipc	ra,0x1
    80005198:	cfc080e7          	jalr	-772(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000519c:	0014849b          	addiw	s1,s1,1
    800051a0:	0ff4f493          	andi	s1,s1,255
    800051a4:	00f00793          	li	a5,15
    800051a8:	fc97f0e3          	bgeu	a5,s1,80005168 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800051ac:	00005517          	auipc	a0,0x5
    800051b0:	0f450513          	addi	a0,a0,244 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	cdc080e7          	jalr	-804(ra) # 80005e90 <_Z11printStringPKc>
    finishedD = true;
    800051bc:	00100793          	li	a5,1
    800051c0:	00008717          	auipc	a4,0x8
    800051c4:	a6f70023          	sb	a5,-1440(a4) # 8000cc20 <_ZL9finishedD>
    thread_dispatch();
    800051c8:	ffffc097          	auipc	ra,0xffffc
    800051cc:	488080e7          	jalr	1160(ra) # 80001650 <thread_dispatch>
}
    800051d0:	01813083          	ld	ra,24(sp)
    800051d4:	01013403          	ld	s0,16(sp)
    800051d8:	00813483          	ld	s1,8(sp)
    800051dc:	00013903          	ld	s2,0(sp)
    800051e0:	02010113          	addi	sp,sp,32
    800051e4:	00008067          	ret

00000000800051e8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800051e8:	fe010113          	addi	sp,sp,-32
    800051ec:	00113c23          	sd	ra,24(sp)
    800051f0:	00813823          	sd	s0,16(sp)
    800051f4:	00913423          	sd	s1,8(sp)
    800051f8:	01213023          	sd	s2,0(sp)
    800051fc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005200:	00000493          	li	s1,0
    80005204:	0400006f          	j	80005244 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005208:	00005517          	auipc	a0,0x5
    8000520c:	04050513          	addi	a0,a0,64 # 8000a248 <CONSOLE_STATUS+0x238>
    80005210:	00001097          	auipc	ra,0x1
    80005214:	c80080e7          	jalr	-896(ra) # 80005e90 <_Z11printStringPKc>
    80005218:	00000613          	li	a2,0
    8000521c:	00a00593          	li	a1,10
    80005220:	00048513          	mv	a0,s1
    80005224:	00001097          	auipc	ra,0x1
    80005228:	e1c080e7          	jalr	-484(ra) # 80006040 <_Z8printIntiii>
    8000522c:	00005517          	auipc	a0,0x5
    80005230:	25c50513          	addi	a0,a0,604 # 8000a488 <CONSOLE_STATUS+0x478>
    80005234:	00001097          	auipc	ra,0x1
    80005238:	c5c080e7          	jalr	-932(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000523c:	0014849b          	addiw	s1,s1,1
    80005240:	0ff4f493          	andi	s1,s1,255
    80005244:	00200793          	li	a5,2
    80005248:	fc97f0e3          	bgeu	a5,s1,80005208 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000524c:	00005517          	auipc	a0,0x5
    80005250:	00450513          	addi	a0,a0,4 # 8000a250 <CONSOLE_STATUS+0x240>
    80005254:	00001097          	auipc	ra,0x1
    80005258:	c3c080e7          	jalr	-964(ra) # 80005e90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000525c:	00700313          	li	t1,7
    thread_dispatch();
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	3f0080e7          	jalr	1008(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005268:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000526c:	00005517          	auipc	a0,0x5
    80005270:	ff450513          	addi	a0,a0,-12 # 8000a260 <CONSOLE_STATUS+0x250>
    80005274:	00001097          	auipc	ra,0x1
    80005278:	c1c080e7          	jalr	-996(ra) # 80005e90 <_Z11printStringPKc>
    8000527c:	00000613          	li	a2,0
    80005280:	00a00593          	li	a1,10
    80005284:	0009051b          	sext.w	a0,s2
    80005288:	00001097          	auipc	ra,0x1
    8000528c:	db8080e7          	jalr	-584(ra) # 80006040 <_Z8printIntiii>
    80005290:	00005517          	auipc	a0,0x5
    80005294:	1f850513          	addi	a0,a0,504 # 8000a488 <CONSOLE_STATUS+0x478>
    80005298:	00001097          	auipc	ra,0x1
    8000529c:	bf8080e7          	jalr	-1032(ra) # 80005e90 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800052a0:	00c00513          	li	a0,12
    800052a4:	00000097          	auipc	ra,0x0
    800052a8:	d88080e7          	jalr	-632(ra) # 8000502c <_ZL9fibonaccim>
    800052ac:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800052b0:	00005517          	auipc	a0,0x5
    800052b4:	fb850513          	addi	a0,a0,-72 # 8000a268 <CONSOLE_STATUS+0x258>
    800052b8:	00001097          	auipc	ra,0x1
    800052bc:	bd8080e7          	jalr	-1064(ra) # 80005e90 <_Z11printStringPKc>
    800052c0:	00000613          	li	a2,0
    800052c4:	00a00593          	li	a1,10
    800052c8:	0009051b          	sext.w	a0,s2
    800052cc:	00001097          	auipc	ra,0x1
    800052d0:	d74080e7          	jalr	-652(ra) # 80006040 <_Z8printIntiii>
    800052d4:	00005517          	auipc	a0,0x5
    800052d8:	1b450513          	addi	a0,a0,436 # 8000a488 <CONSOLE_STATUS+0x478>
    800052dc:	00001097          	auipc	ra,0x1
    800052e0:	bb4080e7          	jalr	-1100(ra) # 80005e90 <_Z11printStringPKc>
    800052e4:	0400006f          	j	80005324 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800052e8:	00005517          	auipc	a0,0x5
    800052ec:	f6050513          	addi	a0,a0,-160 # 8000a248 <CONSOLE_STATUS+0x238>
    800052f0:	00001097          	auipc	ra,0x1
    800052f4:	ba0080e7          	jalr	-1120(ra) # 80005e90 <_Z11printStringPKc>
    800052f8:	00000613          	li	a2,0
    800052fc:	00a00593          	li	a1,10
    80005300:	00048513          	mv	a0,s1
    80005304:	00001097          	auipc	ra,0x1
    80005308:	d3c080e7          	jalr	-708(ra) # 80006040 <_Z8printIntiii>
    8000530c:	00005517          	auipc	a0,0x5
    80005310:	17c50513          	addi	a0,a0,380 # 8000a488 <CONSOLE_STATUS+0x478>
    80005314:	00001097          	auipc	ra,0x1
    80005318:	b7c080e7          	jalr	-1156(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000531c:	0014849b          	addiw	s1,s1,1
    80005320:	0ff4f493          	andi	s1,s1,255
    80005324:	00500793          	li	a5,5
    80005328:	fc97f0e3          	bgeu	a5,s1,800052e8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000532c:	00005517          	auipc	a0,0x5
    80005330:	ef450513          	addi	a0,a0,-268 # 8000a220 <CONSOLE_STATUS+0x210>
    80005334:	00001097          	auipc	ra,0x1
    80005338:	b5c080e7          	jalr	-1188(ra) # 80005e90 <_Z11printStringPKc>
    finishedC = true;
    8000533c:	00100793          	li	a5,1
    80005340:	00008717          	auipc	a4,0x8
    80005344:	8ef700a3          	sb	a5,-1823(a4) # 8000cc21 <_ZL9finishedC>
    thread_dispatch();
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	308080e7          	jalr	776(ra) # 80001650 <thread_dispatch>
}
    80005350:	01813083          	ld	ra,24(sp)
    80005354:	01013403          	ld	s0,16(sp)
    80005358:	00813483          	ld	s1,8(sp)
    8000535c:	00013903          	ld	s2,0(sp)
    80005360:	02010113          	addi	sp,sp,32
    80005364:	00008067          	ret

0000000080005368 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005368:	fe010113          	addi	sp,sp,-32
    8000536c:	00113c23          	sd	ra,24(sp)
    80005370:	00813823          	sd	s0,16(sp)
    80005374:	00913423          	sd	s1,8(sp)
    80005378:	01213023          	sd	s2,0(sp)
    8000537c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005380:	00000913          	li	s2,0
    80005384:	0380006f          	j	800053bc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	2c8080e7          	jalr	712(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005390:	00148493          	addi	s1,s1,1
    80005394:	000027b7          	lui	a5,0x2
    80005398:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000539c:	0097ee63          	bltu	a5,s1,800053b8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053a0:	00000713          	li	a4,0
    800053a4:	000077b7          	lui	a5,0x7
    800053a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800053ac:	fce7eee3          	bltu	a5,a4,80005388 <_ZL11workerBodyBPv+0x20>
    800053b0:	00170713          	addi	a4,a4,1
    800053b4:	ff1ff06f          	j	800053a4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800053b8:	00190913          	addi	s2,s2,1
    800053bc:	00f00793          	li	a5,15
    800053c0:	0527e063          	bltu	a5,s2,80005400 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800053c4:	00005517          	auipc	a0,0x5
    800053c8:	e6c50513          	addi	a0,a0,-404 # 8000a230 <CONSOLE_STATUS+0x220>
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	ac4080e7          	jalr	-1340(ra) # 80005e90 <_Z11printStringPKc>
    800053d4:	00000613          	li	a2,0
    800053d8:	00a00593          	li	a1,10
    800053dc:	0009051b          	sext.w	a0,s2
    800053e0:	00001097          	auipc	ra,0x1
    800053e4:	c60080e7          	jalr	-928(ra) # 80006040 <_Z8printIntiii>
    800053e8:	00005517          	auipc	a0,0x5
    800053ec:	0a050513          	addi	a0,a0,160 # 8000a488 <CONSOLE_STATUS+0x478>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	aa0080e7          	jalr	-1376(ra) # 80005e90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800053f8:	00000493          	li	s1,0
    800053fc:	f99ff06f          	j	80005394 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005400:	00005517          	auipc	a0,0x5
    80005404:	e3850513          	addi	a0,a0,-456 # 8000a238 <CONSOLE_STATUS+0x228>
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	a88080e7          	jalr	-1400(ra) # 80005e90 <_Z11printStringPKc>
    finishedB = true;
    80005410:	00100793          	li	a5,1
    80005414:	00008717          	auipc	a4,0x8
    80005418:	80f70723          	sb	a5,-2034(a4) # 8000cc22 <_ZL9finishedB>
    thread_dispatch();
    8000541c:	ffffc097          	auipc	ra,0xffffc
    80005420:	234080e7          	jalr	564(ra) # 80001650 <thread_dispatch>
}
    80005424:	01813083          	ld	ra,24(sp)
    80005428:	01013403          	ld	s0,16(sp)
    8000542c:	00813483          	ld	s1,8(sp)
    80005430:	00013903          	ld	s2,0(sp)
    80005434:	02010113          	addi	sp,sp,32
    80005438:	00008067          	ret

000000008000543c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000543c:	fe010113          	addi	sp,sp,-32
    80005440:	00113c23          	sd	ra,24(sp)
    80005444:	00813823          	sd	s0,16(sp)
    80005448:	00913423          	sd	s1,8(sp)
    8000544c:	01213023          	sd	s2,0(sp)
    80005450:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005454:	00000913          	li	s2,0
    80005458:	0380006f          	j	80005490 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	1f4080e7          	jalr	500(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005464:	00148493          	addi	s1,s1,1
    80005468:	000027b7          	lui	a5,0x2
    8000546c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005470:	0097ee63          	bltu	a5,s1,8000548c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005474:	00000713          	li	a4,0
    80005478:	000077b7          	lui	a5,0x7
    8000547c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005480:	fce7eee3          	bltu	a5,a4,8000545c <_ZL11workerBodyAPv+0x20>
    80005484:	00170713          	addi	a4,a4,1
    80005488:	ff1ff06f          	j	80005478 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000548c:	00190913          	addi	s2,s2,1
    80005490:	00900793          	li	a5,9
    80005494:	0527e063          	bltu	a5,s2,800054d4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005498:	00005517          	auipc	a0,0x5
    8000549c:	d8050513          	addi	a0,a0,-640 # 8000a218 <CONSOLE_STATUS+0x208>
    800054a0:	00001097          	auipc	ra,0x1
    800054a4:	9f0080e7          	jalr	-1552(ra) # 80005e90 <_Z11printStringPKc>
    800054a8:	00000613          	li	a2,0
    800054ac:	00a00593          	li	a1,10
    800054b0:	0009051b          	sext.w	a0,s2
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	b8c080e7          	jalr	-1140(ra) # 80006040 <_Z8printIntiii>
    800054bc:	00005517          	auipc	a0,0x5
    800054c0:	fcc50513          	addi	a0,a0,-52 # 8000a488 <CONSOLE_STATUS+0x478>
    800054c4:	00001097          	auipc	ra,0x1
    800054c8:	9cc080e7          	jalr	-1588(ra) # 80005e90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054cc:	00000493          	li	s1,0
    800054d0:	f99ff06f          	j	80005468 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800054d4:	00005517          	auipc	a0,0x5
    800054d8:	d4c50513          	addi	a0,a0,-692 # 8000a220 <CONSOLE_STATUS+0x210>
    800054dc:	00001097          	auipc	ra,0x1
    800054e0:	9b4080e7          	jalr	-1612(ra) # 80005e90 <_Z11printStringPKc>
    finishedA = true;
    800054e4:	00100793          	li	a5,1
    800054e8:	00007717          	auipc	a4,0x7
    800054ec:	72f70da3          	sb	a5,1851(a4) # 8000cc23 <_ZL9finishedA>
}
    800054f0:	01813083          	ld	ra,24(sp)
    800054f4:	01013403          	ld	s0,16(sp)
    800054f8:	00813483          	ld	s1,8(sp)
    800054fc:	00013903          	ld	s2,0(sp)
    80005500:	02010113          	addi	sp,sp,32
    80005504:	00008067          	ret

0000000080005508 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005508:	fd010113          	addi	sp,sp,-48
    8000550c:	02113423          	sd	ra,40(sp)
    80005510:	02813023          	sd	s0,32(sp)
    80005514:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005518:	00000613          	li	a2,0
    8000551c:	00000597          	auipc	a1,0x0
    80005520:	f2058593          	addi	a1,a1,-224 # 8000543c <_ZL11workerBodyAPv>
    80005524:	fd040513          	addi	a0,s0,-48
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	084080e7          	jalr	132(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80005530:	00005517          	auipc	a0,0x5
    80005534:	d8050513          	addi	a0,a0,-640 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005538:	00001097          	auipc	ra,0x1
    8000553c:	958080e7          	jalr	-1704(ra) # 80005e90 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005540:	00000613          	li	a2,0
    80005544:	00000597          	auipc	a1,0x0
    80005548:	e2458593          	addi	a1,a1,-476 # 80005368 <_ZL11workerBodyBPv>
    8000554c:	fd840513          	addi	a0,s0,-40
    80005550:	ffffc097          	auipc	ra,0xffffc
    80005554:	05c080e7          	jalr	92(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80005558:	00005517          	auipc	a0,0x5
    8000555c:	d7050513          	addi	a0,a0,-656 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80005560:	00001097          	auipc	ra,0x1
    80005564:	930080e7          	jalr	-1744(ra) # 80005e90 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005568:	00000613          	li	a2,0
    8000556c:	00000597          	auipc	a1,0x0
    80005570:	c7c58593          	addi	a1,a1,-900 # 800051e8 <_ZL11workerBodyCPv>
    80005574:	fe040513          	addi	a0,s0,-32
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	034080e7          	jalr	52(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80005580:	00005517          	auipc	a0,0x5
    80005584:	d6050513          	addi	a0,a0,-672 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80005588:	00001097          	auipc	ra,0x1
    8000558c:	908080e7          	jalr	-1784(ra) # 80005e90 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005590:	00000613          	li	a2,0
    80005594:	00000597          	auipc	a1,0x0
    80005598:	b0c58593          	addi	a1,a1,-1268 # 800050a0 <_ZL11workerBodyDPv>
    8000559c:	fe840513          	addi	a0,s0,-24
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	00c080e7          	jalr	12(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    800055a8:	00005517          	auipc	a0,0x5
    800055ac:	d5050513          	addi	a0,a0,-688 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    800055b0:	00001097          	auipc	ra,0x1
    800055b4:	8e0080e7          	jalr	-1824(ra) # 80005e90 <_Z11printStringPKc>
    800055b8:	00c0006f          	j	800055c4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	094080e7          	jalr	148(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800055c4:	00007797          	auipc	a5,0x7
    800055c8:	65f7c783          	lbu	a5,1631(a5) # 8000cc23 <_ZL9finishedA>
    800055cc:	fe0788e3          	beqz	a5,800055bc <_Z18Threads_C_API_testv+0xb4>
    800055d0:	00007797          	auipc	a5,0x7
    800055d4:	6527c783          	lbu	a5,1618(a5) # 8000cc22 <_ZL9finishedB>
    800055d8:	fe0782e3          	beqz	a5,800055bc <_Z18Threads_C_API_testv+0xb4>
    800055dc:	00007797          	auipc	a5,0x7
    800055e0:	6457c783          	lbu	a5,1605(a5) # 8000cc21 <_ZL9finishedC>
    800055e4:	fc078ce3          	beqz	a5,800055bc <_Z18Threads_C_API_testv+0xb4>
    800055e8:	00007797          	auipc	a5,0x7
    800055ec:	6387c783          	lbu	a5,1592(a5) # 8000cc20 <_ZL9finishedD>
    800055f0:	fc0786e3          	beqz	a5,800055bc <_Z18Threads_C_API_testv+0xb4>
    }

}
    800055f4:	02813083          	ld	ra,40(sp)
    800055f8:	02013403          	ld	s0,32(sp)
    800055fc:	03010113          	addi	sp,sp,48
    80005600:	00008067          	ret

0000000080005604 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005604:	fd010113          	addi	sp,sp,-48
    80005608:	02113423          	sd	ra,40(sp)
    8000560c:	02813023          	sd	s0,32(sp)
    80005610:	00913c23          	sd	s1,24(sp)
    80005614:	01213823          	sd	s2,16(sp)
    80005618:	01313423          	sd	s3,8(sp)
    8000561c:	03010413          	addi	s0,sp,48
    80005620:	00050993          	mv	s3,a0
    80005624:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005628:	00000913          	li	s2,0
    8000562c:	00c0006f          	j	80005638 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005630:	ffffe097          	auipc	ra,0xffffe
    80005634:	9b4080e7          	jalr	-1612(ra) # 80002fe4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	148080e7          	jalr	328(ra) # 80001780 <getc>
    80005640:	0005059b          	sext.w	a1,a0
    80005644:	01b00793          	li	a5,27
    80005648:	02f58a63          	beq	a1,a5,8000567c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000564c:	0084b503          	ld	a0,8(s1)
    80005650:	00001097          	auipc	ra,0x1
    80005654:	c64080e7          	jalr	-924(ra) # 800062b4 <_ZN9BufferCPP3putEi>
        i++;
    80005658:	0019071b          	addiw	a4,s2,1
    8000565c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005660:	0004a683          	lw	a3,0(s1)
    80005664:	0026979b          	slliw	a5,a3,0x2
    80005668:	00d787bb          	addw	a5,a5,a3
    8000566c:	0017979b          	slliw	a5,a5,0x1
    80005670:	02f767bb          	remw	a5,a4,a5
    80005674:	fc0792e3          	bnez	a5,80005638 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005678:	fb9ff06f          	j	80005630 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000567c:	00100793          	li	a5,1
    80005680:	00007717          	auipc	a4,0x7
    80005684:	5af72423          	sw	a5,1448(a4) # 8000cc28 <_ZL9threadEnd>
    td->buffer->put('!');
    80005688:	0209b783          	ld	a5,32(s3)
    8000568c:	02100593          	li	a1,33
    80005690:	0087b503          	ld	a0,8(a5)
    80005694:	00001097          	auipc	ra,0x1
    80005698:	c20080e7          	jalr	-992(ra) # 800062b4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000569c:	0104b503          	ld	a0,16(s1)
    800056a0:	ffffe097          	auipc	ra,0xffffe
    800056a4:	9f8080e7          	jalr	-1544(ra) # 80003098 <_ZN9Semaphore6signalEv>
}
    800056a8:	02813083          	ld	ra,40(sp)
    800056ac:	02013403          	ld	s0,32(sp)
    800056b0:	01813483          	ld	s1,24(sp)
    800056b4:	01013903          	ld	s2,16(sp)
    800056b8:	00813983          	ld	s3,8(sp)
    800056bc:	03010113          	addi	sp,sp,48
    800056c0:	00008067          	ret

00000000800056c4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800056c4:	fe010113          	addi	sp,sp,-32
    800056c8:	00113c23          	sd	ra,24(sp)
    800056cc:	00813823          	sd	s0,16(sp)
    800056d0:	00913423          	sd	s1,8(sp)
    800056d4:	01213023          	sd	s2,0(sp)
    800056d8:	02010413          	addi	s0,sp,32
    800056dc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800056e0:	00000913          	li	s2,0
    800056e4:	00c0006f          	j	800056f0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800056e8:	ffffe097          	auipc	ra,0xffffe
    800056ec:	8fc080e7          	jalr	-1796(ra) # 80002fe4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800056f0:	00007797          	auipc	a5,0x7
    800056f4:	5387a783          	lw	a5,1336(a5) # 8000cc28 <_ZL9threadEnd>
    800056f8:	02079e63          	bnez	a5,80005734 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800056fc:	0004a583          	lw	a1,0(s1)
    80005700:	0305859b          	addiw	a1,a1,48
    80005704:	0084b503          	ld	a0,8(s1)
    80005708:	00001097          	auipc	ra,0x1
    8000570c:	bac080e7          	jalr	-1108(ra) # 800062b4 <_ZN9BufferCPP3putEi>
        i++;
    80005710:	0019071b          	addiw	a4,s2,1
    80005714:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005718:	0004a683          	lw	a3,0(s1)
    8000571c:	0026979b          	slliw	a5,a3,0x2
    80005720:	00d787bb          	addw	a5,a5,a3
    80005724:	0017979b          	slliw	a5,a5,0x1
    80005728:	02f767bb          	remw	a5,a4,a5
    8000572c:	fc0792e3          	bnez	a5,800056f0 <_ZN12ProducerSync8producerEPv+0x2c>
    80005730:	fb9ff06f          	j	800056e8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005734:	0104b503          	ld	a0,16(s1)
    80005738:	ffffe097          	auipc	ra,0xffffe
    8000573c:	960080e7          	jalr	-1696(ra) # 80003098 <_ZN9Semaphore6signalEv>
}
    80005740:	01813083          	ld	ra,24(sp)
    80005744:	01013403          	ld	s0,16(sp)
    80005748:	00813483          	ld	s1,8(sp)
    8000574c:	00013903          	ld	s2,0(sp)
    80005750:	02010113          	addi	sp,sp,32
    80005754:	00008067          	ret

0000000080005758 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005758:	fd010113          	addi	sp,sp,-48
    8000575c:	02113423          	sd	ra,40(sp)
    80005760:	02813023          	sd	s0,32(sp)
    80005764:	00913c23          	sd	s1,24(sp)
    80005768:	01213823          	sd	s2,16(sp)
    8000576c:	01313423          	sd	s3,8(sp)
    80005770:	01413023          	sd	s4,0(sp)
    80005774:	03010413          	addi	s0,sp,48
    80005778:	00050993          	mv	s3,a0
    8000577c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005780:	00000a13          	li	s4,0
    80005784:	01c0006f          	j	800057a0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005788:	ffffe097          	auipc	ra,0xffffe
    8000578c:	85c080e7          	jalr	-1956(ra) # 80002fe4 <_ZN6Thread8dispatchEv>
    80005790:	0500006f          	j	800057e0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005794:	00a00513          	li	a0,10
    80005798:	ffffc097          	auipc	ra,0xffffc
    8000579c:	00c080e7          	jalr	12(ra) # 800017a4 <putc>
    while (!threadEnd) {
    800057a0:	00007797          	auipc	a5,0x7
    800057a4:	4887a783          	lw	a5,1160(a5) # 8000cc28 <_ZL9threadEnd>
    800057a8:	06079263          	bnez	a5,8000580c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800057ac:	00893503          	ld	a0,8(s2)
    800057b0:	00001097          	auipc	ra,0x1
    800057b4:	b94080e7          	jalr	-1132(ra) # 80006344 <_ZN9BufferCPP3getEv>
        i++;
    800057b8:	001a049b          	addiw	s1,s4,1
    800057bc:	00048a1b          	sext.w	s4,s1
        putc(key);
    800057c0:	0ff57513          	andi	a0,a0,255
    800057c4:	ffffc097          	auipc	ra,0xffffc
    800057c8:	fe0080e7          	jalr	-32(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    800057cc:	00092703          	lw	a4,0(s2)
    800057d0:	0027179b          	slliw	a5,a4,0x2
    800057d4:	00e787bb          	addw	a5,a5,a4
    800057d8:	02f4e7bb          	remw	a5,s1,a5
    800057dc:	fa0786e3          	beqz	a5,80005788 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800057e0:	05000793          	li	a5,80
    800057e4:	02f4e4bb          	remw	s1,s1,a5
    800057e8:	fa049ce3          	bnez	s1,800057a0 <_ZN12ConsumerSync8consumerEPv+0x48>
    800057ec:	fa9ff06f          	j	80005794 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800057f0:	0209b783          	ld	a5,32(s3)
    800057f4:	0087b503          	ld	a0,8(a5)
    800057f8:	00001097          	auipc	ra,0x1
    800057fc:	b4c080e7          	jalr	-1204(ra) # 80006344 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005800:	0ff57513          	andi	a0,a0,255
    80005804:	ffffe097          	auipc	ra,0xffffe
    80005808:	954080e7          	jalr	-1708(ra) # 80003158 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000580c:	0209b783          	ld	a5,32(s3)
    80005810:	0087b503          	ld	a0,8(a5)
    80005814:	00001097          	auipc	ra,0x1
    80005818:	bbc080e7          	jalr	-1092(ra) # 800063d0 <_ZN9BufferCPP6getCntEv>
    8000581c:	fca04ae3          	bgtz	a0,800057f0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005820:	01093503          	ld	a0,16(s2)
    80005824:	ffffe097          	auipc	ra,0xffffe
    80005828:	874080e7          	jalr	-1932(ra) # 80003098 <_ZN9Semaphore6signalEv>
}
    8000582c:	02813083          	ld	ra,40(sp)
    80005830:	02013403          	ld	s0,32(sp)
    80005834:	01813483          	ld	s1,24(sp)
    80005838:	01013903          	ld	s2,16(sp)
    8000583c:	00813983          	ld	s3,8(sp)
    80005840:	00013a03          	ld	s4,0(sp)
    80005844:	03010113          	addi	sp,sp,48
    80005848:	00008067          	ret

000000008000584c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000584c:	f8010113          	addi	sp,sp,-128
    80005850:	06113c23          	sd	ra,120(sp)
    80005854:	06813823          	sd	s0,112(sp)
    80005858:	06913423          	sd	s1,104(sp)
    8000585c:	07213023          	sd	s2,96(sp)
    80005860:	05313c23          	sd	s3,88(sp)
    80005864:	05413823          	sd	s4,80(sp)
    80005868:	05513423          	sd	s5,72(sp)
    8000586c:	05613023          	sd	s6,64(sp)
    80005870:	03713c23          	sd	s7,56(sp)
    80005874:	03813823          	sd	s8,48(sp)
    80005878:	03913423          	sd	s9,40(sp)
    8000587c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005880:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005884:	00005517          	auipc	a0,0x5
    80005888:	8ac50513          	addi	a0,a0,-1876 # 8000a130 <CONSOLE_STATUS+0x120>
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	604080e7          	jalr	1540(ra) # 80005e90 <_Z11printStringPKc>
    getString(input, 30);
    80005894:	01e00593          	li	a1,30
    80005898:	f8040493          	addi	s1,s0,-128
    8000589c:	00048513          	mv	a0,s1
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	678080e7          	jalr	1656(ra) # 80005f18 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800058a8:	00048513          	mv	a0,s1
    800058ac:	00000097          	auipc	ra,0x0
    800058b0:	744080e7          	jalr	1860(ra) # 80005ff0 <_Z11stringToIntPKc>
    800058b4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800058b8:	00005517          	auipc	a0,0x5
    800058bc:	89850513          	addi	a0,a0,-1896 # 8000a150 <CONSOLE_STATUS+0x140>
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	5d0080e7          	jalr	1488(ra) # 80005e90 <_Z11printStringPKc>
    getString(input, 30);
    800058c8:	01e00593          	li	a1,30
    800058cc:	00048513          	mv	a0,s1
    800058d0:	00000097          	auipc	ra,0x0
    800058d4:	648080e7          	jalr	1608(ra) # 80005f18 <_Z9getStringPci>
    n = stringToInt(input);
    800058d8:	00048513          	mv	a0,s1
    800058dc:	00000097          	auipc	ra,0x0
    800058e0:	714080e7          	jalr	1812(ra) # 80005ff0 <_Z11stringToIntPKc>
    800058e4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800058e8:	00005517          	auipc	a0,0x5
    800058ec:	88850513          	addi	a0,a0,-1912 # 8000a170 <CONSOLE_STATUS+0x160>
    800058f0:	00000097          	auipc	ra,0x0
    800058f4:	5a0080e7          	jalr	1440(ra) # 80005e90 <_Z11printStringPKc>
    800058f8:	00000613          	li	a2,0
    800058fc:	00a00593          	li	a1,10
    80005900:	00090513          	mv	a0,s2
    80005904:	00000097          	auipc	ra,0x0
    80005908:	73c080e7          	jalr	1852(ra) # 80006040 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000590c:	00005517          	auipc	a0,0x5
    80005910:	87c50513          	addi	a0,a0,-1924 # 8000a188 <CONSOLE_STATUS+0x178>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	57c080e7          	jalr	1404(ra) # 80005e90 <_Z11printStringPKc>
    8000591c:	00000613          	li	a2,0
    80005920:	00a00593          	li	a1,10
    80005924:	00048513          	mv	a0,s1
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	718080e7          	jalr	1816(ra) # 80006040 <_Z8printIntiii>
    printString(".\n");
    80005930:	00005517          	auipc	a0,0x5
    80005934:	87050513          	addi	a0,a0,-1936 # 8000a1a0 <CONSOLE_STATUS+0x190>
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	558080e7          	jalr	1368(ra) # 80005e90 <_Z11printStringPKc>
    if(threadNum > n) {
    80005940:	0324c463          	blt	s1,s2,80005968 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005944:	03205c63          	blez	s2,8000597c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005948:	03800513          	li	a0,56
    8000594c:	ffffd097          	auipc	ra,0xffffd
    80005950:	52c080e7          	jalr	1324(ra) # 80002e78 <_Znwm>
    80005954:	00050a93          	mv	s5,a0
    80005958:	00048593          	mv	a1,s1
    8000595c:	00001097          	auipc	ra,0x1
    80005960:	804080e7          	jalr	-2044(ra) # 80006160 <_ZN9BufferCPPC1Ei>
    80005964:	0300006f          	j	80005994 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005968:	00005517          	auipc	a0,0x5
    8000596c:	84050513          	addi	a0,a0,-1984 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005970:	00000097          	auipc	ra,0x0
    80005974:	520080e7          	jalr	1312(ra) # 80005e90 <_Z11printStringPKc>
        return;
    80005978:	0140006f          	j	8000598c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000597c:	00005517          	auipc	a0,0x5
    80005980:	86c50513          	addi	a0,a0,-1940 # 8000a1e8 <CONSOLE_STATUS+0x1d8>
    80005984:	00000097          	auipc	ra,0x0
    80005988:	50c080e7          	jalr	1292(ra) # 80005e90 <_Z11printStringPKc>
        return;
    8000598c:	000b8113          	mv	sp,s7
    80005990:	2380006f          	j	80005bc8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005994:	01000513          	li	a0,16
    80005998:	ffffd097          	auipc	ra,0xffffd
    8000599c:	4e0080e7          	jalr	1248(ra) # 80002e78 <_Znwm>
    800059a0:	00050493          	mv	s1,a0
    800059a4:	00000593          	li	a1,0
    800059a8:	ffffd097          	auipc	ra,0xffffd
    800059ac:	68c080e7          	jalr	1676(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    800059b0:	00007797          	auipc	a5,0x7
    800059b4:	2897b023          	sd	s1,640(a5) # 8000cc30 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800059b8:	00391793          	slli	a5,s2,0x3
    800059bc:	00f78793          	addi	a5,a5,15
    800059c0:	ff07f793          	andi	a5,a5,-16
    800059c4:	40f10133          	sub	sp,sp,a5
    800059c8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800059cc:	0019071b          	addiw	a4,s2,1
    800059d0:	00171793          	slli	a5,a4,0x1
    800059d4:	00e787b3          	add	a5,a5,a4
    800059d8:	00379793          	slli	a5,a5,0x3
    800059dc:	00f78793          	addi	a5,a5,15
    800059e0:	ff07f793          	andi	a5,a5,-16
    800059e4:	40f10133          	sub	sp,sp,a5
    800059e8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800059ec:	00191c13          	slli	s8,s2,0x1
    800059f0:	012c07b3          	add	a5,s8,s2
    800059f4:	00379793          	slli	a5,a5,0x3
    800059f8:	00fa07b3          	add	a5,s4,a5
    800059fc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005a00:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005a04:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005a08:	02800513          	li	a0,40
    80005a0c:	ffffd097          	auipc	ra,0xffffd
    80005a10:	46c080e7          	jalr	1132(ra) # 80002e78 <_Znwm>
    80005a14:	00050b13          	mv	s6,a0
    80005a18:	012c0c33          	add	s8,s8,s2
    80005a1c:	003c1c13          	slli	s8,s8,0x3
    80005a20:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005a24:	ffffd097          	auipc	ra,0xffffd
    80005a28:	53c080e7          	jalr	1340(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80005a2c:	00007797          	auipc	a5,0x7
    80005a30:	e8c78793          	addi	a5,a5,-372 # 8000c8b8 <_ZTV12ConsumerSync+0x10>
    80005a34:	00fb3023          	sd	a5,0(s6)
    80005a38:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005a3c:	000b0513          	mv	a0,s6
    80005a40:	ffffd097          	auipc	ra,0xffffd
    80005a44:	550080e7          	jalr	1360(ra) # 80002f90 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a48:	00000493          	li	s1,0
    80005a4c:	0380006f          	j	80005a84 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a50:	00007797          	auipc	a5,0x7
    80005a54:	e4078793          	addi	a5,a5,-448 # 8000c890 <_ZTV12ProducerSync+0x10>
    80005a58:	00fcb023          	sd	a5,0(s9)
    80005a5c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005a60:	00349793          	slli	a5,s1,0x3
    80005a64:	00f987b3          	add	a5,s3,a5
    80005a68:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005a6c:	00349793          	slli	a5,s1,0x3
    80005a70:	00f987b3          	add	a5,s3,a5
    80005a74:	0007b503          	ld	a0,0(a5)
    80005a78:	ffffd097          	auipc	ra,0xffffd
    80005a7c:	518080e7          	jalr	1304(ra) # 80002f90 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a80:	0014849b          	addiw	s1,s1,1
    80005a84:	0b24d063          	bge	s1,s2,80005b24 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005a88:	00149793          	slli	a5,s1,0x1
    80005a8c:	009787b3          	add	a5,a5,s1
    80005a90:	00379793          	slli	a5,a5,0x3
    80005a94:	00fa07b3          	add	a5,s4,a5
    80005a98:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005a9c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005aa0:	00007717          	auipc	a4,0x7
    80005aa4:	19073703          	ld	a4,400(a4) # 8000cc30 <_ZL10waitForAll>
    80005aa8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005aac:	02905863          	blez	s1,80005adc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005ab0:	02800513          	li	a0,40
    80005ab4:	ffffd097          	auipc	ra,0xffffd
    80005ab8:	3c4080e7          	jalr	964(ra) # 80002e78 <_Znwm>
    80005abc:	00050c93          	mv	s9,a0
    80005ac0:	00149c13          	slli	s8,s1,0x1
    80005ac4:	009c0c33          	add	s8,s8,s1
    80005ac8:	003c1c13          	slli	s8,s8,0x3
    80005acc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005ad0:	ffffd097          	auipc	ra,0xffffd
    80005ad4:	490080e7          	jalr	1168(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80005ad8:	f79ff06f          	j	80005a50 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005adc:	02800513          	li	a0,40
    80005ae0:	ffffd097          	auipc	ra,0xffffd
    80005ae4:	398080e7          	jalr	920(ra) # 80002e78 <_Znwm>
    80005ae8:	00050c93          	mv	s9,a0
    80005aec:	00149c13          	slli	s8,s1,0x1
    80005af0:	009c0c33          	add	s8,s8,s1
    80005af4:	003c1c13          	slli	s8,s8,0x3
    80005af8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005afc:	ffffd097          	auipc	ra,0xffffd
    80005b00:	464080e7          	jalr	1124(ra) # 80002f60 <_ZN6ThreadC1Ev>
    80005b04:	00007797          	auipc	a5,0x7
    80005b08:	d6478793          	addi	a5,a5,-668 # 8000c868 <_ZTV16ProducerKeyboard+0x10>
    80005b0c:	00fcb023          	sd	a5,0(s9)
    80005b10:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005b14:	00349793          	slli	a5,s1,0x3
    80005b18:	00f987b3          	add	a5,s3,a5
    80005b1c:	0197b023          	sd	s9,0(a5)
    80005b20:	f4dff06f          	j	80005a6c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005b24:	ffffd097          	auipc	ra,0xffffd
    80005b28:	4c0080e7          	jalr	1216(ra) # 80002fe4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005b2c:	00000493          	li	s1,0
    80005b30:	00994e63          	blt	s2,s1,80005b4c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005b34:	00007517          	auipc	a0,0x7
    80005b38:	0fc53503          	ld	a0,252(a0) # 8000cc30 <_ZL10waitForAll>
    80005b3c:	ffffd097          	auipc	ra,0xffffd
    80005b40:	530080e7          	jalr	1328(ra) # 8000306c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005b44:	0014849b          	addiw	s1,s1,1
    80005b48:	fe9ff06f          	j	80005b30 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005b4c:	00000493          	li	s1,0
    80005b50:	0080006f          	j	80005b58 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005b54:	0014849b          	addiw	s1,s1,1
    80005b58:	0324d263          	bge	s1,s2,80005b7c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005b5c:	00349793          	slli	a5,s1,0x3
    80005b60:	00f987b3          	add	a5,s3,a5
    80005b64:	0007b503          	ld	a0,0(a5)
    80005b68:	fe0506e3          	beqz	a0,80005b54 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005b6c:	00053783          	ld	a5,0(a0)
    80005b70:	0087b783          	ld	a5,8(a5)
    80005b74:	000780e7          	jalr	a5
    80005b78:	fddff06f          	j	80005b54 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005b7c:	000b0a63          	beqz	s6,80005b90 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005b80:	000b3783          	ld	a5,0(s6)
    80005b84:	0087b783          	ld	a5,8(a5)
    80005b88:	000b0513          	mv	a0,s6
    80005b8c:	000780e7          	jalr	a5
    delete waitForAll;
    80005b90:	00007517          	auipc	a0,0x7
    80005b94:	0a053503          	ld	a0,160(a0) # 8000cc30 <_ZL10waitForAll>
    80005b98:	00050863          	beqz	a0,80005ba8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005b9c:	00053783          	ld	a5,0(a0)
    80005ba0:	0087b783          	ld	a5,8(a5)
    80005ba4:	000780e7          	jalr	a5
    delete buffer;
    80005ba8:	000a8e63          	beqz	s5,80005bc4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005bac:	000a8513          	mv	a0,s5
    80005bb0:	00001097          	auipc	ra,0x1
    80005bb4:	8a8080e7          	jalr	-1880(ra) # 80006458 <_ZN9BufferCPPD1Ev>
    80005bb8:	000a8513          	mv	a0,s5
    80005bbc:	ffffd097          	auipc	ra,0xffffd
    80005bc0:	2e4080e7          	jalr	740(ra) # 80002ea0 <_ZdlPv>
    80005bc4:	000b8113          	mv	sp,s7

}
    80005bc8:	f8040113          	addi	sp,s0,-128
    80005bcc:	07813083          	ld	ra,120(sp)
    80005bd0:	07013403          	ld	s0,112(sp)
    80005bd4:	06813483          	ld	s1,104(sp)
    80005bd8:	06013903          	ld	s2,96(sp)
    80005bdc:	05813983          	ld	s3,88(sp)
    80005be0:	05013a03          	ld	s4,80(sp)
    80005be4:	04813a83          	ld	s5,72(sp)
    80005be8:	04013b03          	ld	s6,64(sp)
    80005bec:	03813b83          	ld	s7,56(sp)
    80005bf0:	03013c03          	ld	s8,48(sp)
    80005bf4:	02813c83          	ld	s9,40(sp)
    80005bf8:	08010113          	addi	sp,sp,128
    80005bfc:	00008067          	ret
    80005c00:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005c04:	000a8513          	mv	a0,s5
    80005c08:	ffffd097          	auipc	ra,0xffffd
    80005c0c:	298080e7          	jalr	664(ra) # 80002ea0 <_ZdlPv>
    80005c10:	00048513          	mv	a0,s1
    80005c14:	00008097          	auipc	ra,0x8
    80005c18:	104080e7          	jalr	260(ra) # 8000dd18 <_Unwind_Resume>
    80005c1c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005c20:	00048513          	mv	a0,s1
    80005c24:	ffffd097          	auipc	ra,0xffffd
    80005c28:	27c080e7          	jalr	636(ra) # 80002ea0 <_ZdlPv>
    80005c2c:	00090513          	mv	a0,s2
    80005c30:	00008097          	auipc	ra,0x8
    80005c34:	0e8080e7          	jalr	232(ra) # 8000dd18 <_Unwind_Resume>
    80005c38:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005c3c:	000b0513          	mv	a0,s6
    80005c40:	ffffd097          	auipc	ra,0xffffd
    80005c44:	260080e7          	jalr	608(ra) # 80002ea0 <_ZdlPv>
    80005c48:	00048513          	mv	a0,s1
    80005c4c:	00008097          	auipc	ra,0x8
    80005c50:	0cc080e7          	jalr	204(ra) # 8000dd18 <_Unwind_Resume>
    80005c54:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005c58:	000c8513          	mv	a0,s9
    80005c5c:	ffffd097          	auipc	ra,0xffffd
    80005c60:	244080e7          	jalr	580(ra) # 80002ea0 <_ZdlPv>
    80005c64:	00048513          	mv	a0,s1
    80005c68:	00008097          	auipc	ra,0x8
    80005c6c:	0b0080e7          	jalr	176(ra) # 8000dd18 <_Unwind_Resume>
    80005c70:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005c74:	000c8513          	mv	a0,s9
    80005c78:	ffffd097          	auipc	ra,0xffffd
    80005c7c:	228080e7          	jalr	552(ra) # 80002ea0 <_ZdlPv>
    80005c80:	00048513          	mv	a0,s1
    80005c84:	00008097          	auipc	ra,0x8
    80005c88:	094080e7          	jalr	148(ra) # 8000dd18 <_Unwind_Resume>

0000000080005c8c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005c8c:	ff010113          	addi	sp,sp,-16
    80005c90:	00113423          	sd	ra,8(sp)
    80005c94:	00813023          	sd	s0,0(sp)
    80005c98:	01010413          	addi	s0,sp,16
    80005c9c:	00007797          	auipc	a5,0x7
    80005ca0:	c1c78793          	addi	a5,a5,-996 # 8000c8b8 <_ZTV12ConsumerSync+0x10>
    80005ca4:	00f53023          	sd	a5,0(a0)
    80005ca8:	ffffd097          	auipc	ra,0xffffd
    80005cac:	100080e7          	jalr	256(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80005cb0:	00813083          	ld	ra,8(sp)
    80005cb4:	00013403          	ld	s0,0(sp)
    80005cb8:	01010113          	addi	sp,sp,16
    80005cbc:	00008067          	ret

0000000080005cc0 <_ZN12ConsumerSyncD0Ev>:
    80005cc0:	fe010113          	addi	sp,sp,-32
    80005cc4:	00113c23          	sd	ra,24(sp)
    80005cc8:	00813823          	sd	s0,16(sp)
    80005ccc:	00913423          	sd	s1,8(sp)
    80005cd0:	02010413          	addi	s0,sp,32
    80005cd4:	00050493          	mv	s1,a0
    80005cd8:	00007797          	auipc	a5,0x7
    80005cdc:	be078793          	addi	a5,a5,-1056 # 8000c8b8 <_ZTV12ConsumerSync+0x10>
    80005ce0:	00f53023          	sd	a5,0(a0)
    80005ce4:	ffffd097          	auipc	ra,0xffffd
    80005ce8:	0c4080e7          	jalr	196(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80005cec:	00048513          	mv	a0,s1
    80005cf0:	ffffd097          	auipc	ra,0xffffd
    80005cf4:	1b0080e7          	jalr	432(ra) # 80002ea0 <_ZdlPv>
    80005cf8:	01813083          	ld	ra,24(sp)
    80005cfc:	01013403          	ld	s0,16(sp)
    80005d00:	00813483          	ld	s1,8(sp)
    80005d04:	02010113          	addi	sp,sp,32
    80005d08:	00008067          	ret

0000000080005d0c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005d0c:	ff010113          	addi	sp,sp,-16
    80005d10:	00113423          	sd	ra,8(sp)
    80005d14:	00813023          	sd	s0,0(sp)
    80005d18:	01010413          	addi	s0,sp,16
    80005d1c:	00007797          	auipc	a5,0x7
    80005d20:	b7478793          	addi	a5,a5,-1164 # 8000c890 <_ZTV12ProducerSync+0x10>
    80005d24:	00f53023          	sd	a5,0(a0)
    80005d28:	ffffd097          	auipc	ra,0xffffd
    80005d2c:	080080e7          	jalr	128(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80005d30:	00813083          	ld	ra,8(sp)
    80005d34:	00013403          	ld	s0,0(sp)
    80005d38:	01010113          	addi	sp,sp,16
    80005d3c:	00008067          	ret

0000000080005d40 <_ZN12ProducerSyncD0Ev>:
    80005d40:	fe010113          	addi	sp,sp,-32
    80005d44:	00113c23          	sd	ra,24(sp)
    80005d48:	00813823          	sd	s0,16(sp)
    80005d4c:	00913423          	sd	s1,8(sp)
    80005d50:	02010413          	addi	s0,sp,32
    80005d54:	00050493          	mv	s1,a0
    80005d58:	00007797          	auipc	a5,0x7
    80005d5c:	b3878793          	addi	a5,a5,-1224 # 8000c890 <_ZTV12ProducerSync+0x10>
    80005d60:	00f53023          	sd	a5,0(a0)
    80005d64:	ffffd097          	auipc	ra,0xffffd
    80005d68:	044080e7          	jalr	68(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80005d6c:	00048513          	mv	a0,s1
    80005d70:	ffffd097          	auipc	ra,0xffffd
    80005d74:	130080e7          	jalr	304(ra) # 80002ea0 <_ZdlPv>
    80005d78:	01813083          	ld	ra,24(sp)
    80005d7c:	01013403          	ld	s0,16(sp)
    80005d80:	00813483          	ld	s1,8(sp)
    80005d84:	02010113          	addi	sp,sp,32
    80005d88:	00008067          	ret

0000000080005d8c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005d8c:	ff010113          	addi	sp,sp,-16
    80005d90:	00113423          	sd	ra,8(sp)
    80005d94:	00813023          	sd	s0,0(sp)
    80005d98:	01010413          	addi	s0,sp,16
    80005d9c:	00007797          	auipc	a5,0x7
    80005da0:	acc78793          	addi	a5,a5,-1332 # 8000c868 <_ZTV16ProducerKeyboard+0x10>
    80005da4:	00f53023          	sd	a5,0(a0)
    80005da8:	ffffd097          	auipc	ra,0xffffd
    80005dac:	000080e7          	jalr	ra # 80002da8 <_ZN6ThreadD1Ev>
    80005db0:	00813083          	ld	ra,8(sp)
    80005db4:	00013403          	ld	s0,0(sp)
    80005db8:	01010113          	addi	sp,sp,16
    80005dbc:	00008067          	ret

0000000080005dc0 <_ZN16ProducerKeyboardD0Ev>:
    80005dc0:	fe010113          	addi	sp,sp,-32
    80005dc4:	00113c23          	sd	ra,24(sp)
    80005dc8:	00813823          	sd	s0,16(sp)
    80005dcc:	00913423          	sd	s1,8(sp)
    80005dd0:	02010413          	addi	s0,sp,32
    80005dd4:	00050493          	mv	s1,a0
    80005dd8:	00007797          	auipc	a5,0x7
    80005ddc:	a9078793          	addi	a5,a5,-1392 # 8000c868 <_ZTV16ProducerKeyboard+0x10>
    80005de0:	00f53023          	sd	a5,0(a0)
    80005de4:	ffffd097          	auipc	ra,0xffffd
    80005de8:	fc4080e7          	jalr	-60(ra) # 80002da8 <_ZN6ThreadD1Ev>
    80005dec:	00048513          	mv	a0,s1
    80005df0:	ffffd097          	auipc	ra,0xffffd
    80005df4:	0b0080e7          	jalr	176(ra) # 80002ea0 <_ZdlPv>
    80005df8:	01813083          	ld	ra,24(sp)
    80005dfc:	01013403          	ld	s0,16(sp)
    80005e00:	00813483          	ld	s1,8(sp)
    80005e04:	02010113          	addi	sp,sp,32
    80005e08:	00008067          	ret

0000000080005e0c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005e0c:	ff010113          	addi	sp,sp,-16
    80005e10:	00113423          	sd	ra,8(sp)
    80005e14:	00813023          	sd	s0,0(sp)
    80005e18:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005e1c:	02053583          	ld	a1,32(a0)
    80005e20:	fffff097          	auipc	ra,0xfffff
    80005e24:	7e4080e7          	jalr	2020(ra) # 80005604 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005e28:	00813083          	ld	ra,8(sp)
    80005e2c:	00013403          	ld	s0,0(sp)
    80005e30:	01010113          	addi	sp,sp,16
    80005e34:	00008067          	ret

0000000080005e38 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005e38:	ff010113          	addi	sp,sp,-16
    80005e3c:	00113423          	sd	ra,8(sp)
    80005e40:	00813023          	sd	s0,0(sp)
    80005e44:	01010413          	addi	s0,sp,16
        producer(td);
    80005e48:	02053583          	ld	a1,32(a0)
    80005e4c:	00000097          	auipc	ra,0x0
    80005e50:	878080e7          	jalr	-1928(ra) # 800056c4 <_ZN12ProducerSync8producerEPv>
    }
    80005e54:	00813083          	ld	ra,8(sp)
    80005e58:	00013403          	ld	s0,0(sp)
    80005e5c:	01010113          	addi	sp,sp,16
    80005e60:	00008067          	ret

0000000080005e64 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005e64:	ff010113          	addi	sp,sp,-16
    80005e68:	00113423          	sd	ra,8(sp)
    80005e6c:	00813023          	sd	s0,0(sp)
    80005e70:	01010413          	addi	s0,sp,16
        consumer(td);
    80005e74:	02053583          	ld	a1,32(a0)
    80005e78:	00000097          	auipc	ra,0x0
    80005e7c:	8e0080e7          	jalr	-1824(ra) # 80005758 <_ZN12ConsumerSync8consumerEPv>
    }
    80005e80:	00813083          	ld	ra,8(sp)
    80005e84:	00013403          	ld	s0,0(sp)
    80005e88:	01010113          	addi	sp,sp,16
    80005e8c:	00008067          	ret

0000000080005e90 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005e90:	fe010113          	addi	sp,sp,-32
    80005e94:	00113c23          	sd	ra,24(sp)
    80005e98:	00813823          	sd	s0,16(sp)
    80005e9c:	00913423          	sd	s1,8(sp)
    80005ea0:	02010413          	addi	s0,sp,32
    80005ea4:	00050493          	mv	s1,a0
    LOCK();
    80005ea8:	00100613          	li	a2,1
    80005eac:	00000593          	li	a1,0
    80005eb0:	00007517          	auipc	a0,0x7
    80005eb4:	d8850513          	addi	a0,a0,-632 # 8000cc38 <lockPrint>
    80005eb8:	ffffb097          	auipc	ra,0xffffb
    80005ebc:	418080e7          	jalr	1048(ra) # 800012d0 <copy_and_swap>
    80005ec0:	00050863          	beqz	a0,80005ed0 <_Z11printStringPKc+0x40>
    80005ec4:	ffffb097          	auipc	ra,0xffffb
    80005ec8:	78c080e7          	jalr	1932(ra) # 80001650 <thread_dispatch>
    80005ecc:	fddff06f          	j	80005ea8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ed0:	0004c503          	lbu	a0,0(s1)
    80005ed4:	00050a63          	beqz	a0,80005ee8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005ed8:	ffffc097          	auipc	ra,0xffffc
    80005edc:	8cc080e7          	jalr	-1844(ra) # 800017a4 <putc>
        string++;
    80005ee0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005ee4:	fedff06f          	j	80005ed0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005ee8:	00000613          	li	a2,0
    80005eec:	00100593          	li	a1,1
    80005ef0:	00007517          	auipc	a0,0x7
    80005ef4:	d4850513          	addi	a0,a0,-696 # 8000cc38 <lockPrint>
    80005ef8:	ffffb097          	auipc	ra,0xffffb
    80005efc:	3d8080e7          	jalr	984(ra) # 800012d0 <copy_and_swap>
    80005f00:	fe0514e3          	bnez	a0,80005ee8 <_Z11printStringPKc+0x58>
}
    80005f04:	01813083          	ld	ra,24(sp)
    80005f08:	01013403          	ld	s0,16(sp)
    80005f0c:	00813483          	ld	s1,8(sp)
    80005f10:	02010113          	addi	sp,sp,32
    80005f14:	00008067          	ret

0000000080005f18 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005f18:	fd010113          	addi	sp,sp,-48
    80005f1c:	02113423          	sd	ra,40(sp)
    80005f20:	02813023          	sd	s0,32(sp)
    80005f24:	00913c23          	sd	s1,24(sp)
    80005f28:	01213823          	sd	s2,16(sp)
    80005f2c:	01313423          	sd	s3,8(sp)
    80005f30:	01413023          	sd	s4,0(sp)
    80005f34:	03010413          	addi	s0,sp,48
    80005f38:	00050993          	mv	s3,a0
    80005f3c:	00058a13          	mv	s4,a1
    LOCK();
    80005f40:	00100613          	li	a2,1
    80005f44:	00000593          	li	a1,0
    80005f48:	00007517          	auipc	a0,0x7
    80005f4c:	cf050513          	addi	a0,a0,-784 # 8000cc38 <lockPrint>
    80005f50:	ffffb097          	auipc	ra,0xffffb
    80005f54:	380080e7          	jalr	896(ra) # 800012d0 <copy_and_swap>
    80005f58:	00050863          	beqz	a0,80005f68 <_Z9getStringPci+0x50>
    80005f5c:	ffffb097          	auipc	ra,0xffffb
    80005f60:	6f4080e7          	jalr	1780(ra) # 80001650 <thread_dispatch>
    80005f64:	fddff06f          	j	80005f40 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005f68:	00000913          	li	s2,0
    80005f6c:	00090493          	mv	s1,s2
    80005f70:	0019091b          	addiw	s2,s2,1
    80005f74:	03495a63          	bge	s2,s4,80005fa8 <_Z9getStringPci+0x90>
        cc = getc();
    80005f78:	ffffc097          	auipc	ra,0xffffc
    80005f7c:	808080e7          	jalr	-2040(ra) # 80001780 <getc>
        if(cc < 1)
    80005f80:	02050463          	beqz	a0,80005fa8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005f84:	009984b3          	add	s1,s3,s1
    80005f88:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005f8c:	00a00793          	li	a5,10
    80005f90:	00f50a63          	beq	a0,a5,80005fa4 <_Z9getStringPci+0x8c>
    80005f94:	00d00793          	li	a5,13
    80005f98:	fcf51ae3          	bne	a0,a5,80005f6c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005f9c:	00090493          	mv	s1,s2
    80005fa0:	0080006f          	j	80005fa8 <_Z9getStringPci+0x90>
    80005fa4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005fa8:	009984b3          	add	s1,s3,s1
    80005fac:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005fb0:	00000613          	li	a2,0
    80005fb4:	00100593          	li	a1,1
    80005fb8:	00007517          	auipc	a0,0x7
    80005fbc:	c8050513          	addi	a0,a0,-896 # 8000cc38 <lockPrint>
    80005fc0:	ffffb097          	auipc	ra,0xffffb
    80005fc4:	310080e7          	jalr	784(ra) # 800012d0 <copy_and_swap>
    80005fc8:	fe0514e3          	bnez	a0,80005fb0 <_Z9getStringPci+0x98>
    return buf;
}
    80005fcc:	00098513          	mv	a0,s3
    80005fd0:	02813083          	ld	ra,40(sp)
    80005fd4:	02013403          	ld	s0,32(sp)
    80005fd8:	01813483          	ld	s1,24(sp)
    80005fdc:	01013903          	ld	s2,16(sp)
    80005fe0:	00813983          	ld	s3,8(sp)
    80005fe4:	00013a03          	ld	s4,0(sp)
    80005fe8:	03010113          	addi	sp,sp,48
    80005fec:	00008067          	ret

0000000080005ff0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005ff0:	ff010113          	addi	sp,sp,-16
    80005ff4:	00813423          	sd	s0,8(sp)
    80005ff8:	01010413          	addi	s0,sp,16
    80005ffc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006000:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006004:	0006c603          	lbu	a2,0(a3)
    80006008:	fd06071b          	addiw	a4,a2,-48
    8000600c:	0ff77713          	andi	a4,a4,255
    80006010:	00900793          	li	a5,9
    80006014:	02e7e063          	bltu	a5,a4,80006034 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006018:	0025179b          	slliw	a5,a0,0x2
    8000601c:	00a787bb          	addw	a5,a5,a0
    80006020:	0017979b          	slliw	a5,a5,0x1
    80006024:	00168693          	addi	a3,a3,1
    80006028:	00c787bb          	addw	a5,a5,a2
    8000602c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006030:	fd5ff06f          	j	80006004 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006034:	00813403          	ld	s0,8(sp)
    80006038:	01010113          	addi	sp,sp,16
    8000603c:	00008067          	ret

0000000080006040 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006040:	fc010113          	addi	sp,sp,-64
    80006044:	02113c23          	sd	ra,56(sp)
    80006048:	02813823          	sd	s0,48(sp)
    8000604c:	02913423          	sd	s1,40(sp)
    80006050:	03213023          	sd	s2,32(sp)
    80006054:	01313c23          	sd	s3,24(sp)
    80006058:	04010413          	addi	s0,sp,64
    8000605c:	00050493          	mv	s1,a0
    80006060:	00058913          	mv	s2,a1
    80006064:	00060993          	mv	s3,a2
    LOCK();
    80006068:	00100613          	li	a2,1
    8000606c:	00000593          	li	a1,0
    80006070:	00007517          	auipc	a0,0x7
    80006074:	bc850513          	addi	a0,a0,-1080 # 8000cc38 <lockPrint>
    80006078:	ffffb097          	auipc	ra,0xffffb
    8000607c:	258080e7          	jalr	600(ra) # 800012d0 <copy_and_swap>
    80006080:	00050863          	beqz	a0,80006090 <_Z8printIntiii+0x50>
    80006084:	ffffb097          	auipc	ra,0xffffb
    80006088:	5cc080e7          	jalr	1484(ra) # 80001650 <thread_dispatch>
    8000608c:	fddff06f          	j	80006068 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006090:	00098463          	beqz	s3,80006098 <_Z8printIntiii+0x58>
    80006094:	0804c463          	bltz	s1,8000611c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006098:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000609c:	00000593          	li	a1,0
    }

    i = 0;
    800060a0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800060a4:	0009079b          	sext.w	a5,s2
    800060a8:	0325773b          	remuw	a4,a0,s2
    800060ac:	00048613          	mv	a2,s1
    800060b0:	0014849b          	addiw	s1,s1,1
    800060b4:	02071693          	slli	a3,a4,0x20
    800060b8:	0206d693          	srli	a3,a3,0x20
    800060bc:	00007717          	auipc	a4,0x7
    800060c0:	81470713          	addi	a4,a4,-2028 # 8000c8d0 <digits>
    800060c4:	00d70733          	add	a4,a4,a3
    800060c8:	00074683          	lbu	a3,0(a4)
    800060cc:	fd040713          	addi	a4,s0,-48
    800060d0:	00c70733          	add	a4,a4,a2
    800060d4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800060d8:	0005071b          	sext.w	a4,a0
    800060dc:	0325553b          	divuw	a0,a0,s2
    800060e0:	fcf772e3          	bgeu	a4,a5,800060a4 <_Z8printIntiii+0x64>
    if(neg)
    800060e4:	00058c63          	beqz	a1,800060fc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800060e8:	fd040793          	addi	a5,s0,-48
    800060ec:	009784b3          	add	s1,a5,s1
    800060f0:	02d00793          	li	a5,45
    800060f4:	fef48823          	sb	a5,-16(s1)
    800060f8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800060fc:	fff4849b          	addiw	s1,s1,-1
    80006100:	0204c463          	bltz	s1,80006128 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006104:	fd040793          	addi	a5,s0,-48
    80006108:	009787b3          	add	a5,a5,s1
    8000610c:	ff07c503          	lbu	a0,-16(a5)
    80006110:	ffffb097          	auipc	ra,0xffffb
    80006114:	694080e7          	jalr	1684(ra) # 800017a4 <putc>
    80006118:	fe5ff06f          	j	800060fc <_Z8printIntiii+0xbc>
        x = -xx;
    8000611c:	4090053b          	negw	a0,s1
        neg = 1;
    80006120:	00100593          	li	a1,1
        x = -xx;
    80006124:	f7dff06f          	j	800060a0 <_Z8printIntiii+0x60>

    UNLOCK();
    80006128:	00000613          	li	a2,0
    8000612c:	00100593          	li	a1,1
    80006130:	00007517          	auipc	a0,0x7
    80006134:	b0850513          	addi	a0,a0,-1272 # 8000cc38 <lockPrint>
    80006138:	ffffb097          	auipc	ra,0xffffb
    8000613c:	198080e7          	jalr	408(ra) # 800012d0 <copy_and_swap>
    80006140:	fe0514e3          	bnez	a0,80006128 <_Z8printIntiii+0xe8>
    80006144:	03813083          	ld	ra,56(sp)
    80006148:	03013403          	ld	s0,48(sp)
    8000614c:	02813483          	ld	s1,40(sp)
    80006150:	02013903          	ld	s2,32(sp)
    80006154:	01813983          	ld	s3,24(sp)
    80006158:	04010113          	addi	sp,sp,64
    8000615c:	00008067          	ret

0000000080006160 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006160:	fd010113          	addi	sp,sp,-48
    80006164:	02113423          	sd	ra,40(sp)
    80006168:	02813023          	sd	s0,32(sp)
    8000616c:	00913c23          	sd	s1,24(sp)
    80006170:	01213823          	sd	s2,16(sp)
    80006174:	01313423          	sd	s3,8(sp)
    80006178:	03010413          	addi	s0,sp,48
    8000617c:	00050493          	mv	s1,a0
    80006180:	00058913          	mv	s2,a1
    80006184:	0015879b          	addiw	a5,a1,1
    80006188:	0007851b          	sext.w	a0,a5
    8000618c:	00f4a023          	sw	a5,0(s1)
    80006190:	0004a823          	sw	zero,16(s1)
    80006194:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006198:	00251513          	slli	a0,a0,0x2
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	3b8080e7          	jalr	952(ra) # 80001554 <mem_alloc>
    800061a4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800061a8:	01000513          	li	a0,16
    800061ac:	ffffd097          	auipc	ra,0xffffd
    800061b0:	ccc080e7          	jalr	-820(ra) # 80002e78 <_Znwm>
    800061b4:	00050993          	mv	s3,a0
    800061b8:	00000593          	li	a1,0
    800061bc:	ffffd097          	auipc	ra,0xffffd
    800061c0:	e78080e7          	jalr	-392(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    800061c4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800061c8:	01000513          	li	a0,16
    800061cc:	ffffd097          	auipc	ra,0xffffd
    800061d0:	cac080e7          	jalr	-852(ra) # 80002e78 <_Znwm>
    800061d4:	00050993          	mv	s3,a0
    800061d8:	00090593          	mv	a1,s2
    800061dc:	ffffd097          	auipc	ra,0xffffd
    800061e0:	e58080e7          	jalr	-424(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    800061e4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800061e8:	01000513          	li	a0,16
    800061ec:	ffffd097          	auipc	ra,0xffffd
    800061f0:	c8c080e7          	jalr	-884(ra) # 80002e78 <_Znwm>
    800061f4:	00050913          	mv	s2,a0
    800061f8:	00100593          	li	a1,1
    800061fc:	ffffd097          	auipc	ra,0xffffd
    80006200:	e38080e7          	jalr	-456(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    80006204:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006208:	01000513          	li	a0,16
    8000620c:	ffffd097          	auipc	ra,0xffffd
    80006210:	c6c080e7          	jalr	-916(ra) # 80002e78 <_Znwm>
    80006214:	00050913          	mv	s2,a0
    80006218:	00100593          	li	a1,1
    8000621c:	ffffd097          	auipc	ra,0xffffd
    80006220:	e18080e7          	jalr	-488(ra) # 80003034 <_ZN9SemaphoreC1Ej>
    80006224:	0324b823          	sd	s2,48(s1)
}
    80006228:	02813083          	ld	ra,40(sp)
    8000622c:	02013403          	ld	s0,32(sp)
    80006230:	01813483          	ld	s1,24(sp)
    80006234:	01013903          	ld	s2,16(sp)
    80006238:	00813983          	ld	s3,8(sp)
    8000623c:	03010113          	addi	sp,sp,48
    80006240:	00008067          	ret
    80006244:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006248:	00098513          	mv	a0,s3
    8000624c:	ffffd097          	auipc	ra,0xffffd
    80006250:	c54080e7          	jalr	-940(ra) # 80002ea0 <_ZdlPv>
    80006254:	00048513          	mv	a0,s1
    80006258:	00008097          	auipc	ra,0x8
    8000625c:	ac0080e7          	jalr	-1344(ra) # 8000dd18 <_Unwind_Resume>
    80006260:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006264:	00098513          	mv	a0,s3
    80006268:	ffffd097          	auipc	ra,0xffffd
    8000626c:	c38080e7          	jalr	-968(ra) # 80002ea0 <_ZdlPv>
    80006270:	00048513          	mv	a0,s1
    80006274:	00008097          	auipc	ra,0x8
    80006278:	aa4080e7          	jalr	-1372(ra) # 8000dd18 <_Unwind_Resume>
    8000627c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006280:	00090513          	mv	a0,s2
    80006284:	ffffd097          	auipc	ra,0xffffd
    80006288:	c1c080e7          	jalr	-996(ra) # 80002ea0 <_ZdlPv>
    8000628c:	00048513          	mv	a0,s1
    80006290:	00008097          	auipc	ra,0x8
    80006294:	a88080e7          	jalr	-1400(ra) # 8000dd18 <_Unwind_Resume>
    80006298:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000629c:	00090513          	mv	a0,s2
    800062a0:	ffffd097          	auipc	ra,0xffffd
    800062a4:	c00080e7          	jalr	-1024(ra) # 80002ea0 <_ZdlPv>
    800062a8:	00048513          	mv	a0,s1
    800062ac:	00008097          	auipc	ra,0x8
    800062b0:	a6c080e7          	jalr	-1428(ra) # 8000dd18 <_Unwind_Resume>

00000000800062b4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800062b4:	fe010113          	addi	sp,sp,-32
    800062b8:	00113c23          	sd	ra,24(sp)
    800062bc:	00813823          	sd	s0,16(sp)
    800062c0:	00913423          	sd	s1,8(sp)
    800062c4:	01213023          	sd	s2,0(sp)
    800062c8:	02010413          	addi	s0,sp,32
    800062cc:	00050493          	mv	s1,a0
    800062d0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800062d4:	01853503          	ld	a0,24(a0)
    800062d8:	ffffd097          	auipc	ra,0xffffd
    800062dc:	d94080e7          	jalr	-620(ra) # 8000306c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800062e0:	0304b503          	ld	a0,48(s1)
    800062e4:	ffffd097          	auipc	ra,0xffffd
    800062e8:	d88080e7          	jalr	-632(ra) # 8000306c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800062ec:	0084b783          	ld	a5,8(s1)
    800062f0:	0144a703          	lw	a4,20(s1)
    800062f4:	00271713          	slli	a4,a4,0x2
    800062f8:	00e787b3          	add	a5,a5,a4
    800062fc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006300:	0144a783          	lw	a5,20(s1)
    80006304:	0017879b          	addiw	a5,a5,1
    80006308:	0004a703          	lw	a4,0(s1)
    8000630c:	02e7e7bb          	remw	a5,a5,a4
    80006310:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006314:	0304b503          	ld	a0,48(s1)
    80006318:	ffffd097          	auipc	ra,0xffffd
    8000631c:	d80080e7          	jalr	-640(ra) # 80003098 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006320:	0204b503          	ld	a0,32(s1)
    80006324:	ffffd097          	auipc	ra,0xffffd
    80006328:	d74080e7          	jalr	-652(ra) # 80003098 <_ZN9Semaphore6signalEv>

}
    8000632c:	01813083          	ld	ra,24(sp)
    80006330:	01013403          	ld	s0,16(sp)
    80006334:	00813483          	ld	s1,8(sp)
    80006338:	00013903          	ld	s2,0(sp)
    8000633c:	02010113          	addi	sp,sp,32
    80006340:	00008067          	ret

0000000080006344 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006344:	fe010113          	addi	sp,sp,-32
    80006348:	00113c23          	sd	ra,24(sp)
    8000634c:	00813823          	sd	s0,16(sp)
    80006350:	00913423          	sd	s1,8(sp)
    80006354:	01213023          	sd	s2,0(sp)
    80006358:	02010413          	addi	s0,sp,32
    8000635c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006360:	02053503          	ld	a0,32(a0)
    80006364:	ffffd097          	auipc	ra,0xffffd
    80006368:	d08080e7          	jalr	-760(ra) # 8000306c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000636c:	0284b503          	ld	a0,40(s1)
    80006370:	ffffd097          	auipc	ra,0xffffd
    80006374:	cfc080e7          	jalr	-772(ra) # 8000306c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006378:	0084b703          	ld	a4,8(s1)
    8000637c:	0104a783          	lw	a5,16(s1)
    80006380:	00279693          	slli	a3,a5,0x2
    80006384:	00d70733          	add	a4,a4,a3
    80006388:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000638c:	0017879b          	addiw	a5,a5,1
    80006390:	0004a703          	lw	a4,0(s1)
    80006394:	02e7e7bb          	remw	a5,a5,a4
    80006398:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000639c:	0284b503          	ld	a0,40(s1)
    800063a0:	ffffd097          	auipc	ra,0xffffd
    800063a4:	cf8080e7          	jalr	-776(ra) # 80003098 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800063a8:	0184b503          	ld	a0,24(s1)
    800063ac:	ffffd097          	auipc	ra,0xffffd
    800063b0:	cec080e7          	jalr	-788(ra) # 80003098 <_ZN9Semaphore6signalEv>

    return ret;
}
    800063b4:	00090513          	mv	a0,s2
    800063b8:	01813083          	ld	ra,24(sp)
    800063bc:	01013403          	ld	s0,16(sp)
    800063c0:	00813483          	ld	s1,8(sp)
    800063c4:	00013903          	ld	s2,0(sp)
    800063c8:	02010113          	addi	sp,sp,32
    800063cc:	00008067          	ret

00000000800063d0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800063d0:	fe010113          	addi	sp,sp,-32
    800063d4:	00113c23          	sd	ra,24(sp)
    800063d8:	00813823          	sd	s0,16(sp)
    800063dc:	00913423          	sd	s1,8(sp)
    800063e0:	01213023          	sd	s2,0(sp)
    800063e4:	02010413          	addi	s0,sp,32
    800063e8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800063ec:	02853503          	ld	a0,40(a0)
    800063f0:	ffffd097          	auipc	ra,0xffffd
    800063f4:	c7c080e7          	jalr	-900(ra) # 8000306c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800063f8:	0304b503          	ld	a0,48(s1)
    800063fc:	ffffd097          	auipc	ra,0xffffd
    80006400:	c70080e7          	jalr	-912(ra) # 8000306c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006404:	0144a783          	lw	a5,20(s1)
    80006408:	0104a903          	lw	s2,16(s1)
    8000640c:	0327ce63          	blt	a5,s2,80006448 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006410:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006414:	0304b503          	ld	a0,48(s1)
    80006418:	ffffd097          	auipc	ra,0xffffd
    8000641c:	c80080e7          	jalr	-896(ra) # 80003098 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006420:	0284b503          	ld	a0,40(s1)
    80006424:	ffffd097          	auipc	ra,0xffffd
    80006428:	c74080e7          	jalr	-908(ra) # 80003098 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000642c:	00090513          	mv	a0,s2
    80006430:	01813083          	ld	ra,24(sp)
    80006434:	01013403          	ld	s0,16(sp)
    80006438:	00813483          	ld	s1,8(sp)
    8000643c:	00013903          	ld	s2,0(sp)
    80006440:	02010113          	addi	sp,sp,32
    80006444:	00008067          	ret
        ret = cap - head + tail;
    80006448:	0004a703          	lw	a4,0(s1)
    8000644c:	4127093b          	subw	s2,a4,s2
    80006450:	00f9093b          	addw	s2,s2,a5
    80006454:	fc1ff06f          	j	80006414 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006458 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006458:	fe010113          	addi	sp,sp,-32
    8000645c:	00113c23          	sd	ra,24(sp)
    80006460:	00813823          	sd	s0,16(sp)
    80006464:	00913423          	sd	s1,8(sp)
    80006468:	02010413          	addi	s0,sp,32
    8000646c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006470:	00a00513          	li	a0,10
    80006474:	ffffd097          	auipc	ra,0xffffd
    80006478:	ce4080e7          	jalr	-796(ra) # 80003158 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000647c:	00004517          	auipc	a0,0x4
    80006480:	14450513          	addi	a0,a0,324 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80006484:	00000097          	auipc	ra,0x0
    80006488:	a0c080e7          	jalr	-1524(ra) # 80005e90 <_Z11printStringPKc>
    while (getCnt()) {
    8000648c:	00048513          	mv	a0,s1
    80006490:	00000097          	auipc	ra,0x0
    80006494:	f40080e7          	jalr	-192(ra) # 800063d0 <_ZN9BufferCPP6getCntEv>
    80006498:	02050c63          	beqz	a0,800064d0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000649c:	0084b783          	ld	a5,8(s1)
    800064a0:	0104a703          	lw	a4,16(s1)
    800064a4:	00271713          	slli	a4,a4,0x2
    800064a8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800064ac:	0007c503          	lbu	a0,0(a5)
    800064b0:	ffffd097          	auipc	ra,0xffffd
    800064b4:	ca8080e7          	jalr	-856(ra) # 80003158 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800064b8:	0104a783          	lw	a5,16(s1)
    800064bc:	0017879b          	addiw	a5,a5,1
    800064c0:	0004a703          	lw	a4,0(s1)
    800064c4:	02e7e7bb          	remw	a5,a5,a4
    800064c8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800064cc:	fc1ff06f          	j	8000648c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800064d0:	02100513          	li	a0,33
    800064d4:	ffffd097          	auipc	ra,0xffffd
    800064d8:	c84080e7          	jalr	-892(ra) # 80003158 <_ZN7Console4putcEc>
    Console::putc('\n');
    800064dc:	00a00513          	li	a0,10
    800064e0:	ffffd097          	auipc	ra,0xffffd
    800064e4:	c78080e7          	jalr	-904(ra) # 80003158 <_ZN7Console4putcEc>
    mem_free(buffer);
    800064e8:	0084b503          	ld	a0,8(s1)
    800064ec:	ffffb097          	auipc	ra,0xffffb
    800064f0:	094080e7          	jalr	148(ra) # 80001580 <mem_free>
    delete itemAvailable;
    800064f4:	0204b503          	ld	a0,32(s1)
    800064f8:	00050863          	beqz	a0,80006508 <_ZN9BufferCPPD1Ev+0xb0>
    800064fc:	00053783          	ld	a5,0(a0)
    80006500:	0087b783          	ld	a5,8(a5)
    80006504:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006508:	0184b503          	ld	a0,24(s1)
    8000650c:	00050863          	beqz	a0,8000651c <_ZN9BufferCPPD1Ev+0xc4>
    80006510:	00053783          	ld	a5,0(a0)
    80006514:	0087b783          	ld	a5,8(a5)
    80006518:	000780e7          	jalr	a5
    delete mutexTail;
    8000651c:	0304b503          	ld	a0,48(s1)
    80006520:	00050863          	beqz	a0,80006530 <_ZN9BufferCPPD1Ev+0xd8>
    80006524:	00053783          	ld	a5,0(a0)
    80006528:	0087b783          	ld	a5,8(a5)
    8000652c:	000780e7          	jalr	a5
    delete mutexHead;
    80006530:	0284b503          	ld	a0,40(s1)
    80006534:	00050863          	beqz	a0,80006544 <_ZN9BufferCPPD1Ev+0xec>
    80006538:	00053783          	ld	a5,0(a0)
    8000653c:	0087b783          	ld	a5,8(a5)
    80006540:	000780e7          	jalr	a5
}
    80006544:	01813083          	ld	ra,24(sp)
    80006548:	01013403          	ld	s0,16(sp)
    8000654c:	00813483          	ld	s1,8(sp)
    80006550:	02010113          	addi	sp,sp,32
    80006554:	00008067          	ret

0000000080006558 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006558:	fe010113          	addi	sp,sp,-32
    8000655c:	00113c23          	sd	ra,24(sp)
    80006560:	00813823          	sd	s0,16(sp)
    80006564:	00913423          	sd	s1,8(sp)
    80006568:	01213023          	sd	s2,0(sp)
    8000656c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006570:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006574:	00600493          	li	s1,6
    while (--i > 0) {
    80006578:	fff4849b          	addiw	s1,s1,-1
    8000657c:	04905463          	blez	s1,800065c4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006580:	00004517          	auipc	a0,0x4
    80006584:	05850513          	addi	a0,a0,88 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80006588:	00000097          	auipc	ra,0x0
    8000658c:	908080e7          	jalr	-1784(ra) # 80005e90 <_Z11printStringPKc>
        printInt(sleep_time);
    80006590:	00000613          	li	a2,0
    80006594:	00a00593          	li	a1,10
    80006598:	0009051b          	sext.w	a0,s2
    8000659c:	00000097          	auipc	ra,0x0
    800065a0:	aa4080e7          	jalr	-1372(ra) # 80006040 <_Z8printIntiii>
        printString(" !\n");
    800065a4:	00004517          	auipc	a0,0x4
    800065a8:	03c50513          	addi	a0,a0,60 # 8000a5e0 <CONSOLE_STATUS+0x5d0>
    800065ac:	00000097          	auipc	ra,0x0
    800065b0:	8e4080e7          	jalr	-1820(ra) # 80005e90 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800065b4:	00090513          	mv	a0,s2
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	0b8080e7          	jalr	184(ra) # 80001670 <time_sleep>
    while (--i > 0) {
    800065c0:	fb9ff06f          	j	80006578 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800065c4:	00a00793          	li	a5,10
    800065c8:	02f95933          	divu	s2,s2,a5
    800065cc:	fff90913          	addi	s2,s2,-1
    800065d0:	00006797          	auipc	a5,0x6
    800065d4:	67078793          	addi	a5,a5,1648 # 8000cc40 <_ZL8finished>
    800065d8:	01278933          	add	s2,a5,s2
    800065dc:	00100793          	li	a5,1
    800065e0:	00f90023          	sb	a5,0(s2)
}
    800065e4:	01813083          	ld	ra,24(sp)
    800065e8:	01013403          	ld	s0,16(sp)
    800065ec:	00813483          	ld	s1,8(sp)
    800065f0:	00013903          	ld	s2,0(sp)
    800065f4:	02010113          	addi	sp,sp,32
    800065f8:	00008067          	ret

00000000800065fc <_Z12testSleepingv>:

void testSleeping() {
    800065fc:	fc010113          	addi	sp,sp,-64
    80006600:	02113c23          	sd	ra,56(sp)
    80006604:	02813823          	sd	s0,48(sp)
    80006608:	02913423          	sd	s1,40(sp)
    8000660c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006610:	00a00793          	li	a5,10
    80006614:	fcf43823          	sd	a5,-48(s0)
    80006618:	01400793          	li	a5,20
    8000661c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006620:	00000493          	li	s1,0
    80006624:	02c0006f          	j	80006650 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006628:	00349793          	slli	a5,s1,0x3
    8000662c:	fd040613          	addi	a2,s0,-48
    80006630:	00f60633          	add	a2,a2,a5
    80006634:	00000597          	auipc	a1,0x0
    80006638:	f2458593          	addi	a1,a1,-220 # 80006558 <_ZL9sleepyRunPv>
    8000663c:	fc040513          	addi	a0,s0,-64
    80006640:	00f50533          	add	a0,a0,a5
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	f68080e7          	jalr	-152(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000664c:	0014849b          	addiw	s1,s1,1
    80006650:	00100793          	li	a5,1
    80006654:	fc97dae3          	bge	a5,s1,80006628 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006658:	00006797          	auipc	a5,0x6
    8000665c:	5e87c783          	lbu	a5,1512(a5) # 8000cc40 <_ZL8finished>
    80006660:	fe078ce3          	beqz	a5,80006658 <_Z12testSleepingv+0x5c>
    80006664:	00006797          	auipc	a5,0x6
    80006668:	5dd7c783          	lbu	a5,1501(a5) # 8000cc41 <_ZL8finished+0x1>
    8000666c:	fe0786e3          	beqz	a5,80006658 <_Z12testSleepingv+0x5c>
}
    80006670:	03813083          	ld	ra,56(sp)
    80006674:	03013403          	ld	s0,48(sp)
    80006678:	02813483          	ld	s1,40(sp)
    8000667c:	04010113          	addi	sp,sp,64
    80006680:	00008067          	ret

0000000080006684 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006684:	fe010113          	addi	sp,sp,-32
    80006688:	00113c23          	sd	ra,24(sp)
    8000668c:	00813823          	sd	s0,16(sp)
    80006690:	00913423          	sd	s1,8(sp)
    80006694:	01213023          	sd	s2,0(sp)
    80006698:	02010413          	addi	s0,sp,32
    8000669c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800066a0:	00100793          	li	a5,1
    800066a4:	02a7f863          	bgeu	a5,a0,800066d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800066a8:	00a00793          	li	a5,10
    800066ac:	02f577b3          	remu	a5,a0,a5
    800066b0:	02078e63          	beqz	a5,800066ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800066b4:	fff48513          	addi	a0,s1,-1
    800066b8:	00000097          	auipc	ra,0x0
    800066bc:	fcc080e7          	jalr	-52(ra) # 80006684 <_ZL9fibonaccim>
    800066c0:	00050913          	mv	s2,a0
    800066c4:	ffe48513          	addi	a0,s1,-2
    800066c8:	00000097          	auipc	ra,0x0
    800066cc:	fbc080e7          	jalr	-68(ra) # 80006684 <_ZL9fibonaccim>
    800066d0:	00a90533          	add	a0,s2,a0
}
    800066d4:	01813083          	ld	ra,24(sp)
    800066d8:	01013403          	ld	s0,16(sp)
    800066dc:	00813483          	ld	s1,8(sp)
    800066e0:	00013903          	ld	s2,0(sp)
    800066e4:	02010113          	addi	sp,sp,32
    800066e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800066ec:	ffffb097          	auipc	ra,0xffffb
    800066f0:	f64080e7          	jalr	-156(ra) # 80001650 <thread_dispatch>
    800066f4:	fc1ff06f          	j	800066b4 <_ZL9fibonaccim+0x30>

00000000800066f8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800066f8:	fe010113          	addi	sp,sp,-32
    800066fc:	00113c23          	sd	ra,24(sp)
    80006700:	00813823          	sd	s0,16(sp)
    80006704:	00913423          	sd	s1,8(sp)
    80006708:	01213023          	sd	s2,0(sp)
    8000670c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006710:	00a00493          	li	s1,10
    80006714:	0400006f          	j	80006754 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006718:	00004517          	auipc	a0,0x4
    8000671c:	b6050513          	addi	a0,a0,-1184 # 8000a278 <CONSOLE_STATUS+0x268>
    80006720:	fffff097          	auipc	ra,0xfffff
    80006724:	770080e7          	jalr	1904(ra) # 80005e90 <_Z11printStringPKc>
    80006728:	00000613          	li	a2,0
    8000672c:	00a00593          	li	a1,10
    80006730:	00048513          	mv	a0,s1
    80006734:	00000097          	auipc	ra,0x0
    80006738:	90c080e7          	jalr	-1780(ra) # 80006040 <_Z8printIntiii>
    8000673c:	00004517          	auipc	a0,0x4
    80006740:	d4c50513          	addi	a0,a0,-692 # 8000a488 <CONSOLE_STATUS+0x478>
    80006744:	fffff097          	auipc	ra,0xfffff
    80006748:	74c080e7          	jalr	1868(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000674c:	0014849b          	addiw	s1,s1,1
    80006750:	0ff4f493          	andi	s1,s1,255
    80006754:	00c00793          	li	a5,12
    80006758:	fc97f0e3          	bgeu	a5,s1,80006718 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000675c:	00004517          	auipc	a0,0x4
    80006760:	b2450513          	addi	a0,a0,-1244 # 8000a280 <CONSOLE_STATUS+0x270>
    80006764:	fffff097          	auipc	ra,0xfffff
    80006768:	72c080e7          	jalr	1836(ra) # 80005e90 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000676c:	00500313          	li	t1,5
    thread_dispatch();
    80006770:	ffffb097          	auipc	ra,0xffffb
    80006774:	ee0080e7          	jalr	-288(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006778:	01000513          	li	a0,16
    8000677c:	00000097          	auipc	ra,0x0
    80006780:	f08080e7          	jalr	-248(ra) # 80006684 <_ZL9fibonaccim>
    80006784:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006788:	00004517          	auipc	a0,0x4
    8000678c:	b0850513          	addi	a0,a0,-1272 # 8000a290 <CONSOLE_STATUS+0x280>
    80006790:	fffff097          	auipc	ra,0xfffff
    80006794:	700080e7          	jalr	1792(ra) # 80005e90 <_Z11printStringPKc>
    80006798:	00000613          	li	a2,0
    8000679c:	00a00593          	li	a1,10
    800067a0:	0009051b          	sext.w	a0,s2
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	89c080e7          	jalr	-1892(ra) # 80006040 <_Z8printIntiii>
    800067ac:	00004517          	auipc	a0,0x4
    800067b0:	cdc50513          	addi	a0,a0,-804 # 8000a488 <CONSOLE_STATUS+0x478>
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	6dc080e7          	jalr	1756(ra) # 80005e90 <_Z11printStringPKc>
    800067bc:	0400006f          	j	800067fc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800067c0:	00004517          	auipc	a0,0x4
    800067c4:	ab850513          	addi	a0,a0,-1352 # 8000a278 <CONSOLE_STATUS+0x268>
    800067c8:	fffff097          	auipc	ra,0xfffff
    800067cc:	6c8080e7          	jalr	1736(ra) # 80005e90 <_Z11printStringPKc>
    800067d0:	00000613          	li	a2,0
    800067d4:	00a00593          	li	a1,10
    800067d8:	00048513          	mv	a0,s1
    800067dc:	00000097          	auipc	ra,0x0
    800067e0:	864080e7          	jalr	-1948(ra) # 80006040 <_Z8printIntiii>
    800067e4:	00004517          	auipc	a0,0x4
    800067e8:	ca450513          	addi	a0,a0,-860 # 8000a488 <CONSOLE_STATUS+0x478>
    800067ec:	fffff097          	auipc	ra,0xfffff
    800067f0:	6a4080e7          	jalr	1700(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800067f4:	0014849b          	addiw	s1,s1,1
    800067f8:	0ff4f493          	andi	s1,s1,255
    800067fc:	00f00793          	li	a5,15
    80006800:	fc97f0e3          	bgeu	a5,s1,800067c0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006804:	00004517          	auipc	a0,0x4
    80006808:	a9c50513          	addi	a0,a0,-1380 # 8000a2a0 <CONSOLE_STATUS+0x290>
    8000680c:	fffff097          	auipc	ra,0xfffff
    80006810:	684080e7          	jalr	1668(ra) # 80005e90 <_Z11printStringPKc>
    finishedD = true;
    80006814:	00100793          	li	a5,1
    80006818:	00006717          	auipc	a4,0x6
    8000681c:	42f70523          	sb	a5,1066(a4) # 8000cc42 <_ZL9finishedD>
    thread_dispatch();
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	e30080e7          	jalr	-464(ra) # 80001650 <thread_dispatch>
}
    80006828:	01813083          	ld	ra,24(sp)
    8000682c:	01013403          	ld	s0,16(sp)
    80006830:	00813483          	ld	s1,8(sp)
    80006834:	00013903          	ld	s2,0(sp)
    80006838:	02010113          	addi	sp,sp,32
    8000683c:	00008067          	ret

0000000080006840 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006840:	fe010113          	addi	sp,sp,-32
    80006844:	00113c23          	sd	ra,24(sp)
    80006848:	00813823          	sd	s0,16(sp)
    8000684c:	00913423          	sd	s1,8(sp)
    80006850:	01213023          	sd	s2,0(sp)
    80006854:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006858:	00000493          	li	s1,0
    8000685c:	0400006f          	j	8000689c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006860:	00004517          	auipc	a0,0x4
    80006864:	9e850513          	addi	a0,a0,-1560 # 8000a248 <CONSOLE_STATUS+0x238>
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	628080e7          	jalr	1576(ra) # 80005e90 <_Z11printStringPKc>
    80006870:	00000613          	li	a2,0
    80006874:	00a00593          	li	a1,10
    80006878:	00048513          	mv	a0,s1
    8000687c:	fffff097          	auipc	ra,0xfffff
    80006880:	7c4080e7          	jalr	1988(ra) # 80006040 <_Z8printIntiii>
    80006884:	00004517          	auipc	a0,0x4
    80006888:	c0450513          	addi	a0,a0,-1020 # 8000a488 <CONSOLE_STATUS+0x478>
    8000688c:	fffff097          	auipc	ra,0xfffff
    80006890:	604080e7          	jalr	1540(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006894:	0014849b          	addiw	s1,s1,1
    80006898:	0ff4f493          	andi	s1,s1,255
    8000689c:	00200793          	li	a5,2
    800068a0:	fc97f0e3          	bgeu	a5,s1,80006860 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800068a4:	00004517          	auipc	a0,0x4
    800068a8:	9ac50513          	addi	a0,a0,-1620 # 8000a250 <CONSOLE_STATUS+0x240>
    800068ac:	fffff097          	auipc	ra,0xfffff
    800068b0:	5e4080e7          	jalr	1508(ra) # 80005e90 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800068b4:	00700313          	li	t1,7
    thread_dispatch();
    800068b8:	ffffb097          	auipc	ra,0xffffb
    800068bc:	d98080e7          	jalr	-616(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800068c0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800068c4:	00004517          	auipc	a0,0x4
    800068c8:	99c50513          	addi	a0,a0,-1636 # 8000a260 <CONSOLE_STATUS+0x250>
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	5c4080e7          	jalr	1476(ra) # 80005e90 <_Z11printStringPKc>
    800068d4:	00000613          	li	a2,0
    800068d8:	00a00593          	li	a1,10
    800068dc:	0009051b          	sext.w	a0,s2
    800068e0:	fffff097          	auipc	ra,0xfffff
    800068e4:	760080e7          	jalr	1888(ra) # 80006040 <_Z8printIntiii>
    800068e8:	00004517          	auipc	a0,0x4
    800068ec:	ba050513          	addi	a0,a0,-1120 # 8000a488 <CONSOLE_STATUS+0x478>
    800068f0:	fffff097          	auipc	ra,0xfffff
    800068f4:	5a0080e7          	jalr	1440(ra) # 80005e90 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800068f8:	00c00513          	li	a0,12
    800068fc:	00000097          	auipc	ra,0x0
    80006900:	d88080e7          	jalr	-632(ra) # 80006684 <_ZL9fibonaccim>
    80006904:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006908:	00004517          	auipc	a0,0x4
    8000690c:	96050513          	addi	a0,a0,-1696 # 8000a268 <CONSOLE_STATUS+0x258>
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	580080e7          	jalr	1408(ra) # 80005e90 <_Z11printStringPKc>
    80006918:	00000613          	li	a2,0
    8000691c:	00a00593          	li	a1,10
    80006920:	0009051b          	sext.w	a0,s2
    80006924:	fffff097          	auipc	ra,0xfffff
    80006928:	71c080e7          	jalr	1820(ra) # 80006040 <_Z8printIntiii>
    8000692c:	00004517          	auipc	a0,0x4
    80006930:	b5c50513          	addi	a0,a0,-1188 # 8000a488 <CONSOLE_STATUS+0x478>
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	55c080e7          	jalr	1372(ra) # 80005e90 <_Z11printStringPKc>
    8000693c:	0400006f          	j	8000697c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006940:	00004517          	auipc	a0,0x4
    80006944:	90850513          	addi	a0,a0,-1784 # 8000a248 <CONSOLE_STATUS+0x238>
    80006948:	fffff097          	auipc	ra,0xfffff
    8000694c:	548080e7          	jalr	1352(ra) # 80005e90 <_Z11printStringPKc>
    80006950:	00000613          	li	a2,0
    80006954:	00a00593          	li	a1,10
    80006958:	00048513          	mv	a0,s1
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	6e4080e7          	jalr	1764(ra) # 80006040 <_Z8printIntiii>
    80006964:	00004517          	auipc	a0,0x4
    80006968:	b2450513          	addi	a0,a0,-1244 # 8000a488 <CONSOLE_STATUS+0x478>
    8000696c:	fffff097          	auipc	ra,0xfffff
    80006970:	524080e7          	jalr	1316(ra) # 80005e90 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006974:	0014849b          	addiw	s1,s1,1
    80006978:	0ff4f493          	andi	s1,s1,255
    8000697c:	00500793          	li	a5,5
    80006980:	fc97f0e3          	bgeu	a5,s1,80006940 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006984:	00004517          	auipc	a0,0x4
    80006988:	89c50513          	addi	a0,a0,-1892 # 8000a220 <CONSOLE_STATUS+0x210>
    8000698c:	fffff097          	auipc	ra,0xfffff
    80006990:	504080e7          	jalr	1284(ra) # 80005e90 <_Z11printStringPKc>
    finishedC = true;
    80006994:	00100793          	li	a5,1
    80006998:	00006717          	auipc	a4,0x6
    8000699c:	2af705a3          	sb	a5,683(a4) # 8000cc43 <_ZL9finishedC>
    thread_dispatch();
    800069a0:	ffffb097          	auipc	ra,0xffffb
    800069a4:	cb0080e7          	jalr	-848(ra) # 80001650 <thread_dispatch>
}
    800069a8:	01813083          	ld	ra,24(sp)
    800069ac:	01013403          	ld	s0,16(sp)
    800069b0:	00813483          	ld	s1,8(sp)
    800069b4:	00013903          	ld	s2,0(sp)
    800069b8:	02010113          	addi	sp,sp,32
    800069bc:	00008067          	ret

00000000800069c0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800069c0:	fe010113          	addi	sp,sp,-32
    800069c4:	00113c23          	sd	ra,24(sp)
    800069c8:	00813823          	sd	s0,16(sp)
    800069cc:	00913423          	sd	s1,8(sp)
    800069d0:	01213023          	sd	s2,0(sp)
    800069d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800069d8:	00000913          	li	s2,0
    800069dc:	0400006f          	j	80006a1c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800069e0:	ffffb097          	auipc	ra,0xffffb
    800069e4:	c70080e7          	jalr	-912(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800069e8:	00148493          	addi	s1,s1,1
    800069ec:	000027b7          	lui	a5,0x2
    800069f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800069f4:	0097ee63          	bltu	a5,s1,80006a10 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800069f8:	00000713          	li	a4,0
    800069fc:	000077b7          	lui	a5,0x7
    80006a00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a04:	fce7eee3          	bltu	a5,a4,800069e0 <_ZL11workerBodyBPv+0x20>
    80006a08:	00170713          	addi	a4,a4,1
    80006a0c:	ff1ff06f          	j	800069fc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006a10:	00a00793          	li	a5,10
    80006a14:	04f90663          	beq	s2,a5,80006a60 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006a18:	00190913          	addi	s2,s2,1
    80006a1c:	00f00793          	li	a5,15
    80006a20:	0527e463          	bltu	a5,s2,80006a68 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006a24:	00004517          	auipc	a0,0x4
    80006a28:	80c50513          	addi	a0,a0,-2036 # 8000a230 <CONSOLE_STATUS+0x220>
    80006a2c:	fffff097          	auipc	ra,0xfffff
    80006a30:	464080e7          	jalr	1124(ra) # 80005e90 <_Z11printStringPKc>
    80006a34:	00000613          	li	a2,0
    80006a38:	00a00593          	li	a1,10
    80006a3c:	0009051b          	sext.w	a0,s2
    80006a40:	fffff097          	auipc	ra,0xfffff
    80006a44:	600080e7          	jalr	1536(ra) # 80006040 <_Z8printIntiii>
    80006a48:	00004517          	auipc	a0,0x4
    80006a4c:	a4050513          	addi	a0,a0,-1472 # 8000a488 <CONSOLE_STATUS+0x478>
    80006a50:	fffff097          	auipc	ra,0xfffff
    80006a54:	440080e7          	jalr	1088(ra) # 80005e90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a58:	00000493          	li	s1,0
    80006a5c:	f91ff06f          	j	800069ec <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006a60:	14102ff3          	csrr	t6,sepc
    80006a64:	fb5ff06f          	j	80006a18 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006a68:	00003517          	auipc	a0,0x3
    80006a6c:	7d050513          	addi	a0,a0,2000 # 8000a238 <CONSOLE_STATUS+0x228>
    80006a70:	fffff097          	auipc	ra,0xfffff
    80006a74:	420080e7          	jalr	1056(ra) # 80005e90 <_Z11printStringPKc>
    finishedB = true;
    80006a78:	00100793          	li	a5,1
    80006a7c:	00006717          	auipc	a4,0x6
    80006a80:	1cf70423          	sb	a5,456(a4) # 8000cc44 <_ZL9finishedB>
    thread_dispatch();
    80006a84:	ffffb097          	auipc	ra,0xffffb
    80006a88:	bcc080e7          	jalr	-1076(ra) # 80001650 <thread_dispatch>
}
    80006a8c:	01813083          	ld	ra,24(sp)
    80006a90:	01013403          	ld	s0,16(sp)
    80006a94:	00813483          	ld	s1,8(sp)
    80006a98:	00013903          	ld	s2,0(sp)
    80006a9c:	02010113          	addi	sp,sp,32
    80006aa0:	00008067          	ret

0000000080006aa4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006aa4:	fe010113          	addi	sp,sp,-32
    80006aa8:	00113c23          	sd	ra,24(sp)
    80006aac:	00813823          	sd	s0,16(sp)
    80006ab0:	00913423          	sd	s1,8(sp)
    80006ab4:	01213023          	sd	s2,0(sp)
    80006ab8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006abc:	00000913          	li	s2,0
    80006ac0:	0380006f          	j	80006af8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	b8c080e7          	jalr	-1140(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006acc:	00148493          	addi	s1,s1,1
    80006ad0:	000027b7          	lui	a5,0x2
    80006ad4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ad8:	0097ee63          	bltu	a5,s1,80006af4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006adc:	00000713          	li	a4,0
    80006ae0:	000077b7          	lui	a5,0x7
    80006ae4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006ae8:	fce7eee3          	bltu	a5,a4,80006ac4 <_ZL11workerBodyAPv+0x20>
    80006aec:	00170713          	addi	a4,a4,1
    80006af0:	ff1ff06f          	j	80006ae0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006af4:	00190913          	addi	s2,s2,1
    80006af8:	00900793          	li	a5,9
    80006afc:	0527e063          	bltu	a5,s2,80006b3c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006b00:	00003517          	auipc	a0,0x3
    80006b04:	71850513          	addi	a0,a0,1816 # 8000a218 <CONSOLE_STATUS+0x208>
    80006b08:	fffff097          	auipc	ra,0xfffff
    80006b0c:	388080e7          	jalr	904(ra) # 80005e90 <_Z11printStringPKc>
    80006b10:	00000613          	li	a2,0
    80006b14:	00a00593          	li	a1,10
    80006b18:	0009051b          	sext.w	a0,s2
    80006b1c:	fffff097          	auipc	ra,0xfffff
    80006b20:	524080e7          	jalr	1316(ra) # 80006040 <_Z8printIntiii>
    80006b24:	00004517          	auipc	a0,0x4
    80006b28:	96450513          	addi	a0,a0,-1692 # 8000a488 <CONSOLE_STATUS+0x478>
    80006b2c:	fffff097          	auipc	ra,0xfffff
    80006b30:	364080e7          	jalr	868(ra) # 80005e90 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006b34:	00000493          	li	s1,0
    80006b38:	f99ff06f          	j	80006ad0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006b3c:	00003517          	auipc	a0,0x3
    80006b40:	6e450513          	addi	a0,a0,1764 # 8000a220 <CONSOLE_STATUS+0x210>
    80006b44:	fffff097          	auipc	ra,0xfffff
    80006b48:	34c080e7          	jalr	844(ra) # 80005e90 <_Z11printStringPKc>
    finishedA = true;
    80006b4c:	00100793          	li	a5,1
    80006b50:	00006717          	auipc	a4,0x6
    80006b54:	0ef70aa3          	sb	a5,245(a4) # 8000cc45 <_ZL9finishedA>
}
    80006b58:	01813083          	ld	ra,24(sp)
    80006b5c:	01013403          	ld	s0,16(sp)
    80006b60:	00813483          	ld	s1,8(sp)
    80006b64:	00013903          	ld	s2,0(sp)
    80006b68:	02010113          	addi	sp,sp,32
    80006b6c:	00008067          	ret

0000000080006b70 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006b70:	fd010113          	addi	sp,sp,-48
    80006b74:	02113423          	sd	ra,40(sp)
    80006b78:	02813023          	sd	s0,32(sp)
    80006b7c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006b80:	00000613          	li	a2,0
    80006b84:	00000597          	auipc	a1,0x0
    80006b88:	f2058593          	addi	a1,a1,-224 # 80006aa4 <_ZL11workerBodyAPv>
    80006b8c:	fd040513          	addi	a0,s0,-48
    80006b90:	ffffb097          	auipc	ra,0xffffb
    80006b94:	a1c080e7          	jalr	-1508(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80006b98:	00003517          	auipc	a0,0x3
    80006b9c:	71850513          	addi	a0,a0,1816 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006ba0:	fffff097          	auipc	ra,0xfffff
    80006ba4:	2f0080e7          	jalr	752(ra) # 80005e90 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006ba8:	00000613          	li	a2,0
    80006bac:	00000597          	auipc	a1,0x0
    80006bb0:	e1458593          	addi	a1,a1,-492 # 800069c0 <_ZL11workerBodyBPv>
    80006bb4:	fd840513          	addi	a0,s0,-40
    80006bb8:	ffffb097          	auipc	ra,0xffffb
    80006bbc:	9f4080e7          	jalr	-1548(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80006bc0:	00003517          	auipc	a0,0x3
    80006bc4:	70850513          	addi	a0,a0,1800 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006bc8:	fffff097          	auipc	ra,0xfffff
    80006bcc:	2c8080e7          	jalr	712(ra) # 80005e90 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006bd0:	00000613          	li	a2,0
    80006bd4:	00000597          	auipc	a1,0x0
    80006bd8:	c6c58593          	addi	a1,a1,-916 # 80006840 <_ZL11workerBodyCPv>
    80006bdc:	fe040513          	addi	a0,s0,-32
    80006be0:	ffffb097          	auipc	ra,0xffffb
    80006be4:	9cc080e7          	jalr	-1588(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80006be8:	00003517          	auipc	a0,0x3
    80006bec:	6f850513          	addi	a0,a0,1784 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006bf0:	fffff097          	auipc	ra,0xfffff
    80006bf4:	2a0080e7          	jalr	672(ra) # 80005e90 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006bf8:	00000613          	li	a2,0
    80006bfc:	00000597          	auipc	a1,0x0
    80006c00:	afc58593          	addi	a1,a1,-1284 # 800066f8 <_ZL11workerBodyDPv>
    80006c04:	fe840513          	addi	a0,s0,-24
    80006c08:	ffffb097          	auipc	ra,0xffffb
    80006c0c:	9a4080e7          	jalr	-1628(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80006c10:	00003517          	auipc	a0,0x3
    80006c14:	6e850513          	addi	a0,a0,1768 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006c18:	fffff097          	auipc	ra,0xfffff
    80006c1c:	278080e7          	jalr	632(ra) # 80005e90 <_Z11printStringPKc>
    80006c20:	00c0006f          	j	80006c2c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006c24:	ffffb097          	auipc	ra,0xffffb
    80006c28:	a2c080e7          	jalr	-1492(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006c2c:	00006797          	auipc	a5,0x6
    80006c30:	0197c783          	lbu	a5,25(a5) # 8000cc45 <_ZL9finishedA>
    80006c34:	fe0788e3          	beqz	a5,80006c24 <_Z16System_Mode_testv+0xb4>
    80006c38:	00006797          	auipc	a5,0x6
    80006c3c:	00c7c783          	lbu	a5,12(a5) # 8000cc44 <_ZL9finishedB>
    80006c40:	fe0782e3          	beqz	a5,80006c24 <_Z16System_Mode_testv+0xb4>
    80006c44:	00006797          	auipc	a5,0x6
    80006c48:	fff7c783          	lbu	a5,-1(a5) # 8000cc43 <_ZL9finishedC>
    80006c4c:	fc078ce3          	beqz	a5,80006c24 <_Z16System_Mode_testv+0xb4>
    80006c50:	00006797          	auipc	a5,0x6
    80006c54:	ff27c783          	lbu	a5,-14(a5) # 8000cc42 <_ZL9finishedD>
    80006c58:	fc0786e3          	beqz	a5,80006c24 <_Z16System_Mode_testv+0xb4>
    }

}
    80006c5c:	02813083          	ld	ra,40(sp)
    80006c60:	02013403          	ld	s0,32(sp)
    80006c64:	03010113          	addi	sp,sp,48
    80006c68:	00008067          	ret

0000000080006c6c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006c6c:	fe010113          	addi	sp,sp,-32
    80006c70:	00113c23          	sd	ra,24(sp)
    80006c74:	00813823          	sd	s0,16(sp)
    80006c78:	00913423          	sd	s1,8(sp)
    80006c7c:	01213023          	sd	s2,0(sp)
    80006c80:	02010413          	addi	s0,sp,32
    80006c84:	00050493          	mv	s1,a0
    80006c88:	00058913          	mv	s2,a1
    80006c8c:	0015879b          	addiw	a5,a1,1
    80006c90:	0007851b          	sext.w	a0,a5
    80006c94:	00f4a023          	sw	a5,0(s1)
    80006c98:	0004a823          	sw	zero,16(s1)
    80006c9c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006ca0:	00251513          	slli	a0,a0,0x2
    80006ca4:	ffffb097          	auipc	ra,0xffffb
    80006ca8:	8b0080e7          	jalr	-1872(ra) # 80001554 <mem_alloc>
    80006cac:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006cb0:	00000593          	li	a1,0
    80006cb4:	02048513          	addi	a0,s1,32
    80006cb8:	ffffb097          	auipc	ra,0xffffb
    80006cbc:	9e0080e7          	jalr	-1568(ra) # 80001698 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006cc0:	00090593          	mv	a1,s2
    80006cc4:	01848513          	addi	a0,s1,24
    80006cc8:	ffffb097          	auipc	ra,0xffffb
    80006ccc:	9d0080e7          	jalr	-1584(ra) # 80001698 <sem_open>
    sem_open(&mutexHead, 1);
    80006cd0:	00100593          	li	a1,1
    80006cd4:	02848513          	addi	a0,s1,40
    80006cd8:	ffffb097          	auipc	ra,0xffffb
    80006cdc:	9c0080e7          	jalr	-1600(ra) # 80001698 <sem_open>
    sem_open(&mutexTail, 1);
    80006ce0:	00100593          	li	a1,1
    80006ce4:	03048513          	addi	a0,s1,48
    80006ce8:	ffffb097          	auipc	ra,0xffffb
    80006cec:	9b0080e7          	jalr	-1616(ra) # 80001698 <sem_open>
}
    80006cf0:	01813083          	ld	ra,24(sp)
    80006cf4:	01013403          	ld	s0,16(sp)
    80006cf8:	00813483          	ld	s1,8(sp)
    80006cfc:	00013903          	ld	s2,0(sp)
    80006d00:	02010113          	addi	sp,sp,32
    80006d04:	00008067          	ret

0000000080006d08 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006d08:	fe010113          	addi	sp,sp,-32
    80006d0c:	00113c23          	sd	ra,24(sp)
    80006d10:	00813823          	sd	s0,16(sp)
    80006d14:	00913423          	sd	s1,8(sp)
    80006d18:	01213023          	sd	s2,0(sp)
    80006d1c:	02010413          	addi	s0,sp,32
    80006d20:	00050493          	mv	s1,a0
    80006d24:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006d28:	01853503          	ld	a0,24(a0)
    80006d2c:	ffffb097          	auipc	ra,0xffffb
    80006d30:	9cc080e7          	jalr	-1588(ra) # 800016f8 <sem_wait>

    sem_wait(mutexTail);
    80006d34:	0304b503          	ld	a0,48(s1)
    80006d38:	ffffb097          	auipc	ra,0xffffb
    80006d3c:	9c0080e7          	jalr	-1600(ra) # 800016f8 <sem_wait>
    buffer[tail] = val;
    80006d40:	0084b783          	ld	a5,8(s1)
    80006d44:	0144a703          	lw	a4,20(s1)
    80006d48:	00271713          	slli	a4,a4,0x2
    80006d4c:	00e787b3          	add	a5,a5,a4
    80006d50:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006d54:	0144a783          	lw	a5,20(s1)
    80006d58:	0017879b          	addiw	a5,a5,1
    80006d5c:	0004a703          	lw	a4,0(s1)
    80006d60:	02e7e7bb          	remw	a5,a5,a4
    80006d64:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006d68:	0304b503          	ld	a0,48(s1)
    80006d6c:	ffffb097          	auipc	ra,0xffffb
    80006d70:	9b4080e7          	jalr	-1612(ra) # 80001720 <sem_signal>

    sem_signal(itemAvailable);
    80006d74:	0204b503          	ld	a0,32(s1)
    80006d78:	ffffb097          	auipc	ra,0xffffb
    80006d7c:	9a8080e7          	jalr	-1624(ra) # 80001720 <sem_signal>

}
    80006d80:	01813083          	ld	ra,24(sp)
    80006d84:	01013403          	ld	s0,16(sp)
    80006d88:	00813483          	ld	s1,8(sp)
    80006d8c:	00013903          	ld	s2,0(sp)
    80006d90:	02010113          	addi	sp,sp,32
    80006d94:	00008067          	ret

0000000080006d98 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006d98:	fe010113          	addi	sp,sp,-32
    80006d9c:	00113c23          	sd	ra,24(sp)
    80006da0:	00813823          	sd	s0,16(sp)
    80006da4:	00913423          	sd	s1,8(sp)
    80006da8:	01213023          	sd	s2,0(sp)
    80006dac:	02010413          	addi	s0,sp,32
    80006db0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006db4:	02053503          	ld	a0,32(a0)
    80006db8:	ffffb097          	auipc	ra,0xffffb
    80006dbc:	940080e7          	jalr	-1728(ra) # 800016f8 <sem_wait>

    sem_wait(mutexHead);
    80006dc0:	0284b503          	ld	a0,40(s1)
    80006dc4:	ffffb097          	auipc	ra,0xffffb
    80006dc8:	934080e7          	jalr	-1740(ra) # 800016f8 <sem_wait>

    int ret = buffer[head];
    80006dcc:	0084b703          	ld	a4,8(s1)
    80006dd0:	0104a783          	lw	a5,16(s1)
    80006dd4:	00279693          	slli	a3,a5,0x2
    80006dd8:	00d70733          	add	a4,a4,a3
    80006ddc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006de0:	0017879b          	addiw	a5,a5,1
    80006de4:	0004a703          	lw	a4,0(s1)
    80006de8:	02e7e7bb          	remw	a5,a5,a4
    80006dec:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006df0:	0284b503          	ld	a0,40(s1)
    80006df4:	ffffb097          	auipc	ra,0xffffb
    80006df8:	92c080e7          	jalr	-1748(ra) # 80001720 <sem_signal>

    sem_signal(spaceAvailable);
    80006dfc:	0184b503          	ld	a0,24(s1)
    80006e00:	ffffb097          	auipc	ra,0xffffb
    80006e04:	920080e7          	jalr	-1760(ra) # 80001720 <sem_signal>

    return ret;
}
    80006e08:	00090513          	mv	a0,s2
    80006e0c:	01813083          	ld	ra,24(sp)
    80006e10:	01013403          	ld	s0,16(sp)
    80006e14:	00813483          	ld	s1,8(sp)
    80006e18:	00013903          	ld	s2,0(sp)
    80006e1c:	02010113          	addi	sp,sp,32
    80006e20:	00008067          	ret

0000000080006e24 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006e24:	fe010113          	addi	sp,sp,-32
    80006e28:	00113c23          	sd	ra,24(sp)
    80006e2c:	00813823          	sd	s0,16(sp)
    80006e30:	00913423          	sd	s1,8(sp)
    80006e34:	01213023          	sd	s2,0(sp)
    80006e38:	02010413          	addi	s0,sp,32
    80006e3c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006e40:	02853503          	ld	a0,40(a0)
    80006e44:	ffffb097          	auipc	ra,0xffffb
    80006e48:	8b4080e7          	jalr	-1868(ra) # 800016f8 <sem_wait>
    sem_wait(mutexTail);
    80006e4c:	0304b503          	ld	a0,48(s1)
    80006e50:	ffffb097          	auipc	ra,0xffffb
    80006e54:	8a8080e7          	jalr	-1880(ra) # 800016f8 <sem_wait>

    if (tail >= head) {
    80006e58:	0144a783          	lw	a5,20(s1)
    80006e5c:	0104a903          	lw	s2,16(s1)
    80006e60:	0327ce63          	blt	a5,s2,80006e9c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006e64:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006e68:	0304b503          	ld	a0,48(s1)
    80006e6c:	ffffb097          	auipc	ra,0xffffb
    80006e70:	8b4080e7          	jalr	-1868(ra) # 80001720 <sem_signal>
    sem_signal(mutexHead);
    80006e74:	0284b503          	ld	a0,40(s1)
    80006e78:	ffffb097          	auipc	ra,0xffffb
    80006e7c:	8a8080e7          	jalr	-1880(ra) # 80001720 <sem_signal>

    return ret;
}
    80006e80:	00090513          	mv	a0,s2
    80006e84:	01813083          	ld	ra,24(sp)
    80006e88:	01013403          	ld	s0,16(sp)
    80006e8c:	00813483          	ld	s1,8(sp)
    80006e90:	00013903          	ld	s2,0(sp)
    80006e94:	02010113          	addi	sp,sp,32
    80006e98:	00008067          	ret
        ret = cap - head + tail;
    80006e9c:	0004a703          	lw	a4,0(s1)
    80006ea0:	4127093b          	subw	s2,a4,s2
    80006ea4:	00f9093b          	addw	s2,s2,a5
    80006ea8:	fc1ff06f          	j	80006e68 <_ZN6Buffer6getCntEv+0x44>

0000000080006eac <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006eac:	fe010113          	addi	sp,sp,-32
    80006eb0:	00113c23          	sd	ra,24(sp)
    80006eb4:	00813823          	sd	s0,16(sp)
    80006eb8:	00913423          	sd	s1,8(sp)
    80006ebc:	02010413          	addi	s0,sp,32
    80006ec0:	00050493          	mv	s1,a0
    putc('\n');
    80006ec4:	00a00513          	li	a0,10
    80006ec8:	ffffb097          	auipc	ra,0xffffb
    80006ecc:	8dc080e7          	jalr	-1828(ra) # 800017a4 <putc>
    printString("Buffer deleted!\n");
    80006ed0:	00003517          	auipc	a0,0x3
    80006ed4:	6f050513          	addi	a0,a0,1776 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80006ed8:	fffff097          	auipc	ra,0xfffff
    80006edc:	fb8080e7          	jalr	-72(ra) # 80005e90 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006ee0:	00048513          	mv	a0,s1
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	f40080e7          	jalr	-192(ra) # 80006e24 <_ZN6Buffer6getCntEv>
    80006eec:	02a05c63          	blez	a0,80006f24 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006ef0:	0084b783          	ld	a5,8(s1)
    80006ef4:	0104a703          	lw	a4,16(s1)
    80006ef8:	00271713          	slli	a4,a4,0x2
    80006efc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006f00:	0007c503          	lbu	a0,0(a5)
    80006f04:	ffffb097          	auipc	ra,0xffffb
    80006f08:	8a0080e7          	jalr	-1888(ra) # 800017a4 <putc>
        head = (head + 1) % cap;
    80006f0c:	0104a783          	lw	a5,16(s1)
    80006f10:	0017879b          	addiw	a5,a5,1
    80006f14:	0004a703          	lw	a4,0(s1)
    80006f18:	02e7e7bb          	remw	a5,a5,a4
    80006f1c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006f20:	fc1ff06f          	j	80006ee0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006f24:	02100513          	li	a0,33
    80006f28:	ffffb097          	auipc	ra,0xffffb
    80006f2c:	87c080e7          	jalr	-1924(ra) # 800017a4 <putc>
    putc('\n');
    80006f30:	00a00513          	li	a0,10
    80006f34:	ffffb097          	auipc	ra,0xffffb
    80006f38:	870080e7          	jalr	-1936(ra) # 800017a4 <putc>
    mem_free(buffer);
    80006f3c:	0084b503          	ld	a0,8(s1)
    80006f40:	ffffa097          	auipc	ra,0xffffa
    80006f44:	640080e7          	jalr	1600(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    80006f48:	0204b503          	ld	a0,32(s1)
    80006f4c:	ffffa097          	auipc	ra,0xffffa
    80006f50:	784080e7          	jalr	1924(ra) # 800016d0 <sem_close>
    sem_close(spaceAvailable);
    80006f54:	0184b503          	ld	a0,24(s1)
    80006f58:	ffffa097          	auipc	ra,0xffffa
    80006f5c:	778080e7          	jalr	1912(ra) # 800016d0 <sem_close>
    sem_close(mutexTail);
    80006f60:	0304b503          	ld	a0,48(s1)
    80006f64:	ffffa097          	auipc	ra,0xffffa
    80006f68:	76c080e7          	jalr	1900(ra) # 800016d0 <sem_close>
    sem_close(mutexHead);
    80006f6c:	0284b503          	ld	a0,40(s1)
    80006f70:	ffffa097          	auipc	ra,0xffffa
    80006f74:	760080e7          	jalr	1888(ra) # 800016d0 <sem_close>
}
    80006f78:	01813083          	ld	ra,24(sp)
    80006f7c:	01013403          	ld	s0,16(sp)
    80006f80:	00813483          	ld	s1,8(sp)
    80006f84:	02010113          	addi	sp,sp,32
    80006f88:	00008067          	ret

0000000080006f8c <start>:
    80006f8c:	ff010113          	addi	sp,sp,-16
    80006f90:	00813423          	sd	s0,8(sp)
    80006f94:	01010413          	addi	s0,sp,16
    80006f98:	300027f3          	csrr	a5,mstatus
    80006f9c:	ffffe737          	lui	a4,0xffffe
    80006fa0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff094f>
    80006fa4:	00e7f7b3          	and	a5,a5,a4
    80006fa8:	00001737          	lui	a4,0x1
    80006fac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006fb0:	00e7e7b3          	or	a5,a5,a4
    80006fb4:	30079073          	csrw	mstatus,a5
    80006fb8:	00000797          	auipc	a5,0x0
    80006fbc:	16078793          	addi	a5,a5,352 # 80007118 <system_main>
    80006fc0:	34179073          	csrw	mepc,a5
    80006fc4:	00000793          	li	a5,0
    80006fc8:	18079073          	csrw	satp,a5
    80006fcc:	000107b7          	lui	a5,0x10
    80006fd0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006fd4:	30279073          	csrw	medeleg,a5
    80006fd8:	30379073          	csrw	mideleg,a5
    80006fdc:	104027f3          	csrr	a5,sie
    80006fe0:	2227e793          	ori	a5,a5,546
    80006fe4:	10479073          	csrw	sie,a5
    80006fe8:	fff00793          	li	a5,-1
    80006fec:	00a7d793          	srli	a5,a5,0xa
    80006ff0:	3b079073          	csrw	pmpaddr0,a5
    80006ff4:	00f00793          	li	a5,15
    80006ff8:	3a079073          	csrw	pmpcfg0,a5
    80006ffc:	f14027f3          	csrr	a5,mhartid
    80007000:	0200c737          	lui	a4,0x200c
    80007004:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007008:	0007869b          	sext.w	a3,a5
    8000700c:	00269713          	slli	a4,a3,0x2
    80007010:	000f4637          	lui	a2,0xf4
    80007014:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007018:	00d70733          	add	a4,a4,a3
    8000701c:	0037979b          	slliw	a5,a5,0x3
    80007020:	020046b7          	lui	a3,0x2004
    80007024:	00d787b3          	add	a5,a5,a3
    80007028:	00c585b3          	add	a1,a1,a2
    8000702c:	00371693          	slli	a3,a4,0x3
    80007030:	00006717          	auipc	a4,0x6
    80007034:	c2070713          	addi	a4,a4,-992 # 8000cc50 <timer_scratch>
    80007038:	00b7b023          	sd	a1,0(a5)
    8000703c:	00d70733          	add	a4,a4,a3
    80007040:	00f73c23          	sd	a5,24(a4)
    80007044:	02c73023          	sd	a2,32(a4)
    80007048:	34071073          	csrw	mscratch,a4
    8000704c:	00000797          	auipc	a5,0x0
    80007050:	6e478793          	addi	a5,a5,1764 # 80007730 <timervec>
    80007054:	30579073          	csrw	mtvec,a5
    80007058:	300027f3          	csrr	a5,mstatus
    8000705c:	0087e793          	ori	a5,a5,8
    80007060:	30079073          	csrw	mstatus,a5
    80007064:	304027f3          	csrr	a5,mie
    80007068:	0807e793          	ori	a5,a5,128
    8000706c:	30479073          	csrw	mie,a5
    80007070:	f14027f3          	csrr	a5,mhartid
    80007074:	0007879b          	sext.w	a5,a5
    80007078:	00078213          	mv	tp,a5
    8000707c:	30200073          	mret
    80007080:	00813403          	ld	s0,8(sp)
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00008067          	ret

000000008000708c <timerinit>:
    8000708c:	ff010113          	addi	sp,sp,-16
    80007090:	00813423          	sd	s0,8(sp)
    80007094:	01010413          	addi	s0,sp,16
    80007098:	f14027f3          	csrr	a5,mhartid
    8000709c:	0200c737          	lui	a4,0x200c
    800070a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800070a4:	0007869b          	sext.w	a3,a5
    800070a8:	00269713          	slli	a4,a3,0x2
    800070ac:	000f4637          	lui	a2,0xf4
    800070b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800070b4:	00d70733          	add	a4,a4,a3
    800070b8:	0037979b          	slliw	a5,a5,0x3
    800070bc:	020046b7          	lui	a3,0x2004
    800070c0:	00d787b3          	add	a5,a5,a3
    800070c4:	00c585b3          	add	a1,a1,a2
    800070c8:	00371693          	slli	a3,a4,0x3
    800070cc:	00006717          	auipc	a4,0x6
    800070d0:	b8470713          	addi	a4,a4,-1148 # 8000cc50 <timer_scratch>
    800070d4:	00b7b023          	sd	a1,0(a5)
    800070d8:	00d70733          	add	a4,a4,a3
    800070dc:	00f73c23          	sd	a5,24(a4)
    800070e0:	02c73023          	sd	a2,32(a4)
    800070e4:	34071073          	csrw	mscratch,a4
    800070e8:	00000797          	auipc	a5,0x0
    800070ec:	64878793          	addi	a5,a5,1608 # 80007730 <timervec>
    800070f0:	30579073          	csrw	mtvec,a5
    800070f4:	300027f3          	csrr	a5,mstatus
    800070f8:	0087e793          	ori	a5,a5,8
    800070fc:	30079073          	csrw	mstatus,a5
    80007100:	304027f3          	csrr	a5,mie
    80007104:	0807e793          	ori	a5,a5,128
    80007108:	30479073          	csrw	mie,a5
    8000710c:	00813403          	ld	s0,8(sp)
    80007110:	01010113          	addi	sp,sp,16
    80007114:	00008067          	ret

0000000080007118 <system_main>:
    80007118:	fe010113          	addi	sp,sp,-32
    8000711c:	00813823          	sd	s0,16(sp)
    80007120:	00913423          	sd	s1,8(sp)
    80007124:	00113c23          	sd	ra,24(sp)
    80007128:	02010413          	addi	s0,sp,32
    8000712c:	00000097          	auipc	ra,0x0
    80007130:	0c4080e7          	jalr	196(ra) # 800071f0 <cpuid>
    80007134:	00006497          	auipc	s1,0x6
    80007138:	81c48493          	addi	s1,s1,-2020 # 8000c950 <started>
    8000713c:	02050263          	beqz	a0,80007160 <system_main+0x48>
    80007140:	0004a783          	lw	a5,0(s1)
    80007144:	0007879b          	sext.w	a5,a5
    80007148:	fe078ce3          	beqz	a5,80007140 <system_main+0x28>
    8000714c:	0ff0000f          	fence
    80007150:	00003517          	auipc	a0,0x3
    80007154:	4c850513          	addi	a0,a0,1224 # 8000a618 <CONSOLE_STATUS+0x608>
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	a74080e7          	jalr	-1420(ra) # 80007bcc <panic>
    80007160:	00001097          	auipc	ra,0x1
    80007164:	9c8080e7          	jalr	-1592(ra) # 80007b28 <consoleinit>
    80007168:	00001097          	auipc	ra,0x1
    8000716c:	154080e7          	jalr	340(ra) # 800082bc <printfinit>
    80007170:	00003517          	auipc	a0,0x3
    80007174:	31850513          	addi	a0,a0,792 # 8000a488 <CONSOLE_STATUS+0x478>
    80007178:	00001097          	auipc	ra,0x1
    8000717c:	ab0080e7          	jalr	-1360(ra) # 80007c28 <__printf>
    80007180:	00003517          	auipc	a0,0x3
    80007184:	46850513          	addi	a0,a0,1128 # 8000a5e8 <CONSOLE_STATUS+0x5d8>
    80007188:	00001097          	auipc	ra,0x1
    8000718c:	aa0080e7          	jalr	-1376(ra) # 80007c28 <__printf>
    80007190:	00003517          	auipc	a0,0x3
    80007194:	2f850513          	addi	a0,a0,760 # 8000a488 <CONSOLE_STATUS+0x478>
    80007198:	00001097          	auipc	ra,0x1
    8000719c:	a90080e7          	jalr	-1392(ra) # 80007c28 <__printf>
    800071a0:	00001097          	auipc	ra,0x1
    800071a4:	4a8080e7          	jalr	1192(ra) # 80008648 <kinit>
    800071a8:	00000097          	auipc	ra,0x0
    800071ac:	148080e7          	jalr	328(ra) # 800072f0 <trapinit>
    800071b0:	00000097          	auipc	ra,0x0
    800071b4:	16c080e7          	jalr	364(ra) # 8000731c <trapinithart>
    800071b8:	00000097          	auipc	ra,0x0
    800071bc:	5b8080e7          	jalr	1464(ra) # 80007770 <plicinit>
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	5d8080e7          	jalr	1496(ra) # 80007798 <plicinithart>
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	078080e7          	jalr	120(ra) # 80007240 <userinit>
    800071d0:	0ff0000f          	fence
    800071d4:	00100793          	li	a5,1
    800071d8:	00003517          	auipc	a0,0x3
    800071dc:	42850513          	addi	a0,a0,1064 # 8000a600 <CONSOLE_STATUS+0x5f0>
    800071e0:	00f4a023          	sw	a5,0(s1)
    800071e4:	00001097          	auipc	ra,0x1
    800071e8:	a44080e7          	jalr	-1468(ra) # 80007c28 <__printf>
    800071ec:	0000006f          	j	800071ec <system_main+0xd4>

00000000800071f0 <cpuid>:
    800071f0:	ff010113          	addi	sp,sp,-16
    800071f4:	00813423          	sd	s0,8(sp)
    800071f8:	01010413          	addi	s0,sp,16
    800071fc:	00020513          	mv	a0,tp
    80007200:	00813403          	ld	s0,8(sp)
    80007204:	0005051b          	sext.w	a0,a0
    80007208:	01010113          	addi	sp,sp,16
    8000720c:	00008067          	ret

0000000080007210 <mycpu>:
    80007210:	ff010113          	addi	sp,sp,-16
    80007214:	00813423          	sd	s0,8(sp)
    80007218:	01010413          	addi	s0,sp,16
    8000721c:	00020793          	mv	a5,tp
    80007220:	00813403          	ld	s0,8(sp)
    80007224:	0007879b          	sext.w	a5,a5
    80007228:	00779793          	slli	a5,a5,0x7
    8000722c:	00007517          	auipc	a0,0x7
    80007230:	a5450513          	addi	a0,a0,-1452 # 8000dc80 <cpus>
    80007234:	00f50533          	add	a0,a0,a5
    80007238:	01010113          	addi	sp,sp,16
    8000723c:	00008067          	ret

0000000080007240 <userinit>:
    80007240:	ff010113          	addi	sp,sp,-16
    80007244:	00813423          	sd	s0,8(sp)
    80007248:	01010413          	addi	s0,sp,16
    8000724c:	00813403          	ld	s0,8(sp)
    80007250:	01010113          	addi	sp,sp,16
    80007254:	ffffa317          	auipc	t1,0xffffa
    80007258:	62030067          	jr	1568(t1) # 80001874 <main>

000000008000725c <either_copyout>:
    8000725c:	ff010113          	addi	sp,sp,-16
    80007260:	00813023          	sd	s0,0(sp)
    80007264:	00113423          	sd	ra,8(sp)
    80007268:	01010413          	addi	s0,sp,16
    8000726c:	02051663          	bnez	a0,80007298 <either_copyout+0x3c>
    80007270:	00058513          	mv	a0,a1
    80007274:	00060593          	mv	a1,a2
    80007278:	0006861b          	sext.w	a2,a3
    8000727c:	00002097          	auipc	ra,0x2
    80007280:	c58080e7          	jalr	-936(ra) # 80008ed4 <__memmove>
    80007284:	00813083          	ld	ra,8(sp)
    80007288:	00013403          	ld	s0,0(sp)
    8000728c:	00000513          	li	a0,0
    80007290:	01010113          	addi	sp,sp,16
    80007294:	00008067          	ret
    80007298:	00003517          	auipc	a0,0x3
    8000729c:	3a850513          	addi	a0,a0,936 # 8000a640 <CONSOLE_STATUS+0x630>
    800072a0:	00001097          	auipc	ra,0x1
    800072a4:	92c080e7          	jalr	-1748(ra) # 80007bcc <panic>

00000000800072a8 <either_copyin>:
    800072a8:	ff010113          	addi	sp,sp,-16
    800072ac:	00813023          	sd	s0,0(sp)
    800072b0:	00113423          	sd	ra,8(sp)
    800072b4:	01010413          	addi	s0,sp,16
    800072b8:	02059463          	bnez	a1,800072e0 <either_copyin+0x38>
    800072bc:	00060593          	mv	a1,a2
    800072c0:	0006861b          	sext.w	a2,a3
    800072c4:	00002097          	auipc	ra,0x2
    800072c8:	c10080e7          	jalr	-1008(ra) # 80008ed4 <__memmove>
    800072cc:	00813083          	ld	ra,8(sp)
    800072d0:	00013403          	ld	s0,0(sp)
    800072d4:	00000513          	li	a0,0
    800072d8:	01010113          	addi	sp,sp,16
    800072dc:	00008067          	ret
    800072e0:	00003517          	auipc	a0,0x3
    800072e4:	38850513          	addi	a0,a0,904 # 8000a668 <CONSOLE_STATUS+0x658>
    800072e8:	00001097          	auipc	ra,0x1
    800072ec:	8e4080e7          	jalr	-1820(ra) # 80007bcc <panic>

00000000800072f0 <trapinit>:
    800072f0:	ff010113          	addi	sp,sp,-16
    800072f4:	00813423          	sd	s0,8(sp)
    800072f8:	01010413          	addi	s0,sp,16
    800072fc:	00813403          	ld	s0,8(sp)
    80007300:	00003597          	auipc	a1,0x3
    80007304:	39058593          	addi	a1,a1,912 # 8000a690 <CONSOLE_STATUS+0x680>
    80007308:	00007517          	auipc	a0,0x7
    8000730c:	9f850513          	addi	a0,a0,-1544 # 8000dd00 <tickslock>
    80007310:	01010113          	addi	sp,sp,16
    80007314:	00001317          	auipc	t1,0x1
    80007318:	5c430067          	jr	1476(t1) # 800088d8 <initlock>

000000008000731c <trapinithart>:
    8000731c:	ff010113          	addi	sp,sp,-16
    80007320:	00813423          	sd	s0,8(sp)
    80007324:	01010413          	addi	s0,sp,16
    80007328:	00000797          	auipc	a5,0x0
    8000732c:	2f878793          	addi	a5,a5,760 # 80007620 <kernelvec>
    80007330:	10579073          	csrw	stvec,a5
    80007334:	00813403          	ld	s0,8(sp)
    80007338:	01010113          	addi	sp,sp,16
    8000733c:	00008067          	ret

0000000080007340 <usertrap>:
    80007340:	ff010113          	addi	sp,sp,-16
    80007344:	00813423          	sd	s0,8(sp)
    80007348:	01010413          	addi	s0,sp,16
    8000734c:	00813403          	ld	s0,8(sp)
    80007350:	01010113          	addi	sp,sp,16
    80007354:	00008067          	ret

0000000080007358 <usertrapret>:
    80007358:	ff010113          	addi	sp,sp,-16
    8000735c:	00813423          	sd	s0,8(sp)
    80007360:	01010413          	addi	s0,sp,16
    80007364:	00813403          	ld	s0,8(sp)
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00008067          	ret

0000000080007370 <kerneltrap>:
    80007370:	fe010113          	addi	sp,sp,-32
    80007374:	00813823          	sd	s0,16(sp)
    80007378:	00113c23          	sd	ra,24(sp)
    8000737c:	00913423          	sd	s1,8(sp)
    80007380:	02010413          	addi	s0,sp,32
    80007384:	142025f3          	csrr	a1,scause
    80007388:	100027f3          	csrr	a5,sstatus
    8000738c:	0027f793          	andi	a5,a5,2
    80007390:	10079c63          	bnez	a5,800074a8 <kerneltrap+0x138>
    80007394:	142027f3          	csrr	a5,scause
    80007398:	0207ce63          	bltz	a5,800073d4 <kerneltrap+0x64>
    8000739c:	00003517          	auipc	a0,0x3
    800073a0:	33c50513          	addi	a0,a0,828 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800073a4:	00001097          	auipc	ra,0x1
    800073a8:	884080e7          	jalr	-1916(ra) # 80007c28 <__printf>
    800073ac:	141025f3          	csrr	a1,sepc
    800073b0:	14302673          	csrr	a2,stval
    800073b4:	00003517          	auipc	a0,0x3
    800073b8:	33450513          	addi	a0,a0,820 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    800073bc:	00001097          	auipc	ra,0x1
    800073c0:	86c080e7          	jalr	-1940(ra) # 80007c28 <__printf>
    800073c4:	00003517          	auipc	a0,0x3
    800073c8:	33c50513          	addi	a0,a0,828 # 8000a700 <CONSOLE_STATUS+0x6f0>
    800073cc:	00001097          	auipc	ra,0x1
    800073d0:	800080e7          	jalr	-2048(ra) # 80007bcc <panic>
    800073d4:	0ff7f713          	andi	a4,a5,255
    800073d8:	00900693          	li	a3,9
    800073dc:	04d70063          	beq	a4,a3,8000741c <kerneltrap+0xac>
    800073e0:	fff00713          	li	a4,-1
    800073e4:	03f71713          	slli	a4,a4,0x3f
    800073e8:	00170713          	addi	a4,a4,1
    800073ec:	fae798e3          	bne	a5,a4,8000739c <kerneltrap+0x2c>
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	e00080e7          	jalr	-512(ra) # 800071f0 <cpuid>
    800073f8:	06050663          	beqz	a0,80007464 <kerneltrap+0xf4>
    800073fc:	144027f3          	csrr	a5,sip
    80007400:	ffd7f793          	andi	a5,a5,-3
    80007404:	14479073          	csrw	sip,a5
    80007408:	01813083          	ld	ra,24(sp)
    8000740c:	01013403          	ld	s0,16(sp)
    80007410:	00813483          	ld	s1,8(sp)
    80007414:	02010113          	addi	sp,sp,32
    80007418:	00008067          	ret
    8000741c:	00000097          	auipc	ra,0x0
    80007420:	3c8080e7          	jalr	968(ra) # 800077e4 <plic_claim>
    80007424:	00a00793          	li	a5,10
    80007428:	00050493          	mv	s1,a0
    8000742c:	06f50863          	beq	a0,a5,8000749c <kerneltrap+0x12c>
    80007430:	fc050ce3          	beqz	a0,80007408 <kerneltrap+0x98>
    80007434:	00050593          	mv	a1,a0
    80007438:	00003517          	auipc	a0,0x3
    8000743c:	28050513          	addi	a0,a0,640 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    80007440:	00000097          	auipc	ra,0x0
    80007444:	7e8080e7          	jalr	2024(ra) # 80007c28 <__printf>
    80007448:	01013403          	ld	s0,16(sp)
    8000744c:	01813083          	ld	ra,24(sp)
    80007450:	00048513          	mv	a0,s1
    80007454:	00813483          	ld	s1,8(sp)
    80007458:	02010113          	addi	sp,sp,32
    8000745c:	00000317          	auipc	t1,0x0
    80007460:	3c030067          	jr	960(t1) # 8000781c <plic_complete>
    80007464:	00007517          	auipc	a0,0x7
    80007468:	89c50513          	addi	a0,a0,-1892 # 8000dd00 <tickslock>
    8000746c:	00001097          	auipc	ra,0x1
    80007470:	490080e7          	jalr	1168(ra) # 800088fc <acquire>
    80007474:	00005717          	auipc	a4,0x5
    80007478:	4e070713          	addi	a4,a4,1248 # 8000c954 <ticks>
    8000747c:	00072783          	lw	a5,0(a4)
    80007480:	00007517          	auipc	a0,0x7
    80007484:	88050513          	addi	a0,a0,-1920 # 8000dd00 <tickslock>
    80007488:	0017879b          	addiw	a5,a5,1
    8000748c:	00f72023          	sw	a5,0(a4)
    80007490:	00001097          	auipc	ra,0x1
    80007494:	538080e7          	jalr	1336(ra) # 800089c8 <release>
    80007498:	f65ff06f          	j	800073fc <kerneltrap+0x8c>
    8000749c:	00001097          	auipc	ra,0x1
    800074a0:	094080e7          	jalr	148(ra) # 80008530 <uartintr>
    800074a4:	fa5ff06f          	j	80007448 <kerneltrap+0xd8>
    800074a8:	00003517          	auipc	a0,0x3
    800074ac:	1f050513          	addi	a0,a0,496 # 8000a698 <CONSOLE_STATUS+0x688>
    800074b0:	00000097          	auipc	ra,0x0
    800074b4:	71c080e7          	jalr	1820(ra) # 80007bcc <panic>

00000000800074b8 <clockintr>:
    800074b8:	fe010113          	addi	sp,sp,-32
    800074bc:	00813823          	sd	s0,16(sp)
    800074c0:	00913423          	sd	s1,8(sp)
    800074c4:	00113c23          	sd	ra,24(sp)
    800074c8:	02010413          	addi	s0,sp,32
    800074cc:	00007497          	auipc	s1,0x7
    800074d0:	83448493          	addi	s1,s1,-1996 # 8000dd00 <tickslock>
    800074d4:	00048513          	mv	a0,s1
    800074d8:	00001097          	auipc	ra,0x1
    800074dc:	424080e7          	jalr	1060(ra) # 800088fc <acquire>
    800074e0:	00005717          	auipc	a4,0x5
    800074e4:	47470713          	addi	a4,a4,1140 # 8000c954 <ticks>
    800074e8:	00072783          	lw	a5,0(a4)
    800074ec:	01013403          	ld	s0,16(sp)
    800074f0:	01813083          	ld	ra,24(sp)
    800074f4:	00048513          	mv	a0,s1
    800074f8:	0017879b          	addiw	a5,a5,1
    800074fc:	00813483          	ld	s1,8(sp)
    80007500:	00f72023          	sw	a5,0(a4)
    80007504:	02010113          	addi	sp,sp,32
    80007508:	00001317          	auipc	t1,0x1
    8000750c:	4c030067          	jr	1216(t1) # 800089c8 <release>

0000000080007510 <devintr>:
    80007510:	142027f3          	csrr	a5,scause
    80007514:	00000513          	li	a0,0
    80007518:	0007c463          	bltz	a5,80007520 <devintr+0x10>
    8000751c:	00008067          	ret
    80007520:	fe010113          	addi	sp,sp,-32
    80007524:	00813823          	sd	s0,16(sp)
    80007528:	00113c23          	sd	ra,24(sp)
    8000752c:	00913423          	sd	s1,8(sp)
    80007530:	02010413          	addi	s0,sp,32
    80007534:	0ff7f713          	andi	a4,a5,255
    80007538:	00900693          	li	a3,9
    8000753c:	04d70c63          	beq	a4,a3,80007594 <devintr+0x84>
    80007540:	fff00713          	li	a4,-1
    80007544:	03f71713          	slli	a4,a4,0x3f
    80007548:	00170713          	addi	a4,a4,1
    8000754c:	00e78c63          	beq	a5,a4,80007564 <devintr+0x54>
    80007550:	01813083          	ld	ra,24(sp)
    80007554:	01013403          	ld	s0,16(sp)
    80007558:	00813483          	ld	s1,8(sp)
    8000755c:	02010113          	addi	sp,sp,32
    80007560:	00008067          	ret
    80007564:	00000097          	auipc	ra,0x0
    80007568:	c8c080e7          	jalr	-884(ra) # 800071f0 <cpuid>
    8000756c:	06050663          	beqz	a0,800075d8 <devintr+0xc8>
    80007570:	144027f3          	csrr	a5,sip
    80007574:	ffd7f793          	andi	a5,a5,-3
    80007578:	14479073          	csrw	sip,a5
    8000757c:	01813083          	ld	ra,24(sp)
    80007580:	01013403          	ld	s0,16(sp)
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	00200513          	li	a0,2
    8000758c:	02010113          	addi	sp,sp,32
    80007590:	00008067          	ret
    80007594:	00000097          	auipc	ra,0x0
    80007598:	250080e7          	jalr	592(ra) # 800077e4 <plic_claim>
    8000759c:	00a00793          	li	a5,10
    800075a0:	00050493          	mv	s1,a0
    800075a4:	06f50663          	beq	a0,a5,80007610 <devintr+0x100>
    800075a8:	00100513          	li	a0,1
    800075ac:	fa0482e3          	beqz	s1,80007550 <devintr+0x40>
    800075b0:	00048593          	mv	a1,s1
    800075b4:	00003517          	auipc	a0,0x3
    800075b8:	10450513          	addi	a0,a0,260 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    800075bc:	00000097          	auipc	ra,0x0
    800075c0:	66c080e7          	jalr	1644(ra) # 80007c28 <__printf>
    800075c4:	00048513          	mv	a0,s1
    800075c8:	00000097          	auipc	ra,0x0
    800075cc:	254080e7          	jalr	596(ra) # 8000781c <plic_complete>
    800075d0:	00100513          	li	a0,1
    800075d4:	f7dff06f          	j	80007550 <devintr+0x40>
    800075d8:	00006517          	auipc	a0,0x6
    800075dc:	72850513          	addi	a0,a0,1832 # 8000dd00 <tickslock>
    800075e0:	00001097          	auipc	ra,0x1
    800075e4:	31c080e7          	jalr	796(ra) # 800088fc <acquire>
    800075e8:	00005717          	auipc	a4,0x5
    800075ec:	36c70713          	addi	a4,a4,876 # 8000c954 <ticks>
    800075f0:	00072783          	lw	a5,0(a4)
    800075f4:	00006517          	auipc	a0,0x6
    800075f8:	70c50513          	addi	a0,a0,1804 # 8000dd00 <tickslock>
    800075fc:	0017879b          	addiw	a5,a5,1
    80007600:	00f72023          	sw	a5,0(a4)
    80007604:	00001097          	auipc	ra,0x1
    80007608:	3c4080e7          	jalr	964(ra) # 800089c8 <release>
    8000760c:	f65ff06f          	j	80007570 <devintr+0x60>
    80007610:	00001097          	auipc	ra,0x1
    80007614:	f20080e7          	jalr	-224(ra) # 80008530 <uartintr>
    80007618:	fadff06f          	j	800075c4 <devintr+0xb4>
    8000761c:	0000                	unimp
	...

0000000080007620 <kernelvec>:
    80007620:	f0010113          	addi	sp,sp,-256
    80007624:	00113023          	sd	ra,0(sp)
    80007628:	00213423          	sd	sp,8(sp)
    8000762c:	00313823          	sd	gp,16(sp)
    80007630:	00413c23          	sd	tp,24(sp)
    80007634:	02513023          	sd	t0,32(sp)
    80007638:	02613423          	sd	t1,40(sp)
    8000763c:	02713823          	sd	t2,48(sp)
    80007640:	02813c23          	sd	s0,56(sp)
    80007644:	04913023          	sd	s1,64(sp)
    80007648:	04a13423          	sd	a0,72(sp)
    8000764c:	04b13823          	sd	a1,80(sp)
    80007650:	04c13c23          	sd	a2,88(sp)
    80007654:	06d13023          	sd	a3,96(sp)
    80007658:	06e13423          	sd	a4,104(sp)
    8000765c:	06f13823          	sd	a5,112(sp)
    80007660:	07013c23          	sd	a6,120(sp)
    80007664:	09113023          	sd	a7,128(sp)
    80007668:	09213423          	sd	s2,136(sp)
    8000766c:	09313823          	sd	s3,144(sp)
    80007670:	09413c23          	sd	s4,152(sp)
    80007674:	0b513023          	sd	s5,160(sp)
    80007678:	0b613423          	sd	s6,168(sp)
    8000767c:	0b713823          	sd	s7,176(sp)
    80007680:	0b813c23          	sd	s8,184(sp)
    80007684:	0d913023          	sd	s9,192(sp)
    80007688:	0da13423          	sd	s10,200(sp)
    8000768c:	0db13823          	sd	s11,208(sp)
    80007690:	0dc13c23          	sd	t3,216(sp)
    80007694:	0fd13023          	sd	t4,224(sp)
    80007698:	0fe13423          	sd	t5,232(sp)
    8000769c:	0ff13823          	sd	t6,240(sp)
    800076a0:	cd1ff0ef          	jal	ra,80007370 <kerneltrap>
    800076a4:	00013083          	ld	ra,0(sp)
    800076a8:	00813103          	ld	sp,8(sp)
    800076ac:	01013183          	ld	gp,16(sp)
    800076b0:	02013283          	ld	t0,32(sp)
    800076b4:	02813303          	ld	t1,40(sp)
    800076b8:	03013383          	ld	t2,48(sp)
    800076bc:	03813403          	ld	s0,56(sp)
    800076c0:	04013483          	ld	s1,64(sp)
    800076c4:	04813503          	ld	a0,72(sp)
    800076c8:	05013583          	ld	a1,80(sp)
    800076cc:	05813603          	ld	a2,88(sp)
    800076d0:	06013683          	ld	a3,96(sp)
    800076d4:	06813703          	ld	a4,104(sp)
    800076d8:	07013783          	ld	a5,112(sp)
    800076dc:	07813803          	ld	a6,120(sp)
    800076e0:	08013883          	ld	a7,128(sp)
    800076e4:	08813903          	ld	s2,136(sp)
    800076e8:	09013983          	ld	s3,144(sp)
    800076ec:	09813a03          	ld	s4,152(sp)
    800076f0:	0a013a83          	ld	s5,160(sp)
    800076f4:	0a813b03          	ld	s6,168(sp)
    800076f8:	0b013b83          	ld	s7,176(sp)
    800076fc:	0b813c03          	ld	s8,184(sp)
    80007700:	0c013c83          	ld	s9,192(sp)
    80007704:	0c813d03          	ld	s10,200(sp)
    80007708:	0d013d83          	ld	s11,208(sp)
    8000770c:	0d813e03          	ld	t3,216(sp)
    80007710:	0e013e83          	ld	t4,224(sp)
    80007714:	0e813f03          	ld	t5,232(sp)
    80007718:	0f013f83          	ld	t6,240(sp)
    8000771c:	10010113          	addi	sp,sp,256
    80007720:	10200073          	sret
    80007724:	00000013          	nop
    80007728:	00000013          	nop
    8000772c:	00000013          	nop

0000000080007730 <timervec>:
    80007730:	34051573          	csrrw	a0,mscratch,a0
    80007734:	00b53023          	sd	a1,0(a0)
    80007738:	00c53423          	sd	a2,8(a0)
    8000773c:	00d53823          	sd	a3,16(a0)
    80007740:	01853583          	ld	a1,24(a0)
    80007744:	02053603          	ld	a2,32(a0)
    80007748:	0005b683          	ld	a3,0(a1)
    8000774c:	00c686b3          	add	a3,a3,a2
    80007750:	00d5b023          	sd	a3,0(a1)
    80007754:	00200593          	li	a1,2
    80007758:	14459073          	csrw	sip,a1
    8000775c:	01053683          	ld	a3,16(a0)
    80007760:	00853603          	ld	a2,8(a0)
    80007764:	00053583          	ld	a1,0(a0)
    80007768:	34051573          	csrrw	a0,mscratch,a0
    8000776c:	30200073          	mret

0000000080007770 <plicinit>:
    80007770:	ff010113          	addi	sp,sp,-16
    80007774:	00813423          	sd	s0,8(sp)
    80007778:	01010413          	addi	s0,sp,16
    8000777c:	00813403          	ld	s0,8(sp)
    80007780:	0c0007b7          	lui	a5,0xc000
    80007784:	00100713          	li	a4,1
    80007788:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000778c:	00e7a223          	sw	a4,4(a5)
    80007790:	01010113          	addi	sp,sp,16
    80007794:	00008067          	ret

0000000080007798 <plicinithart>:
    80007798:	ff010113          	addi	sp,sp,-16
    8000779c:	00813023          	sd	s0,0(sp)
    800077a0:	00113423          	sd	ra,8(sp)
    800077a4:	01010413          	addi	s0,sp,16
    800077a8:	00000097          	auipc	ra,0x0
    800077ac:	a48080e7          	jalr	-1464(ra) # 800071f0 <cpuid>
    800077b0:	0085171b          	slliw	a4,a0,0x8
    800077b4:	0c0027b7          	lui	a5,0xc002
    800077b8:	00e787b3          	add	a5,a5,a4
    800077bc:	40200713          	li	a4,1026
    800077c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800077c4:	00813083          	ld	ra,8(sp)
    800077c8:	00013403          	ld	s0,0(sp)
    800077cc:	00d5151b          	slliw	a0,a0,0xd
    800077d0:	0c2017b7          	lui	a5,0xc201
    800077d4:	00a78533          	add	a0,a5,a0
    800077d8:	00052023          	sw	zero,0(a0)
    800077dc:	01010113          	addi	sp,sp,16
    800077e0:	00008067          	ret

00000000800077e4 <plic_claim>:
    800077e4:	ff010113          	addi	sp,sp,-16
    800077e8:	00813023          	sd	s0,0(sp)
    800077ec:	00113423          	sd	ra,8(sp)
    800077f0:	01010413          	addi	s0,sp,16
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	9fc080e7          	jalr	-1540(ra) # 800071f0 <cpuid>
    800077fc:	00813083          	ld	ra,8(sp)
    80007800:	00013403          	ld	s0,0(sp)
    80007804:	00d5151b          	slliw	a0,a0,0xd
    80007808:	0c2017b7          	lui	a5,0xc201
    8000780c:	00a78533          	add	a0,a5,a0
    80007810:	00452503          	lw	a0,4(a0)
    80007814:	01010113          	addi	sp,sp,16
    80007818:	00008067          	ret

000000008000781c <plic_complete>:
    8000781c:	fe010113          	addi	sp,sp,-32
    80007820:	00813823          	sd	s0,16(sp)
    80007824:	00913423          	sd	s1,8(sp)
    80007828:	00113c23          	sd	ra,24(sp)
    8000782c:	02010413          	addi	s0,sp,32
    80007830:	00050493          	mv	s1,a0
    80007834:	00000097          	auipc	ra,0x0
    80007838:	9bc080e7          	jalr	-1604(ra) # 800071f0 <cpuid>
    8000783c:	01813083          	ld	ra,24(sp)
    80007840:	01013403          	ld	s0,16(sp)
    80007844:	00d5179b          	slliw	a5,a0,0xd
    80007848:	0c201737          	lui	a4,0xc201
    8000784c:	00f707b3          	add	a5,a4,a5
    80007850:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007854:	00813483          	ld	s1,8(sp)
    80007858:	02010113          	addi	sp,sp,32
    8000785c:	00008067          	ret

0000000080007860 <consolewrite>:
    80007860:	fb010113          	addi	sp,sp,-80
    80007864:	04813023          	sd	s0,64(sp)
    80007868:	04113423          	sd	ra,72(sp)
    8000786c:	02913c23          	sd	s1,56(sp)
    80007870:	03213823          	sd	s2,48(sp)
    80007874:	03313423          	sd	s3,40(sp)
    80007878:	03413023          	sd	s4,32(sp)
    8000787c:	01513c23          	sd	s5,24(sp)
    80007880:	05010413          	addi	s0,sp,80
    80007884:	06c05c63          	blez	a2,800078fc <consolewrite+0x9c>
    80007888:	00060993          	mv	s3,a2
    8000788c:	00050a13          	mv	s4,a0
    80007890:	00058493          	mv	s1,a1
    80007894:	00000913          	li	s2,0
    80007898:	fff00a93          	li	s5,-1
    8000789c:	01c0006f          	j	800078b8 <consolewrite+0x58>
    800078a0:	fbf44503          	lbu	a0,-65(s0)
    800078a4:	0019091b          	addiw	s2,s2,1
    800078a8:	00148493          	addi	s1,s1,1
    800078ac:	00001097          	auipc	ra,0x1
    800078b0:	a9c080e7          	jalr	-1380(ra) # 80008348 <uartputc>
    800078b4:	03298063          	beq	s3,s2,800078d4 <consolewrite+0x74>
    800078b8:	00048613          	mv	a2,s1
    800078bc:	00100693          	li	a3,1
    800078c0:	000a0593          	mv	a1,s4
    800078c4:	fbf40513          	addi	a0,s0,-65
    800078c8:	00000097          	auipc	ra,0x0
    800078cc:	9e0080e7          	jalr	-1568(ra) # 800072a8 <either_copyin>
    800078d0:	fd5518e3          	bne	a0,s5,800078a0 <consolewrite+0x40>
    800078d4:	04813083          	ld	ra,72(sp)
    800078d8:	04013403          	ld	s0,64(sp)
    800078dc:	03813483          	ld	s1,56(sp)
    800078e0:	02813983          	ld	s3,40(sp)
    800078e4:	02013a03          	ld	s4,32(sp)
    800078e8:	01813a83          	ld	s5,24(sp)
    800078ec:	00090513          	mv	a0,s2
    800078f0:	03013903          	ld	s2,48(sp)
    800078f4:	05010113          	addi	sp,sp,80
    800078f8:	00008067          	ret
    800078fc:	00000913          	li	s2,0
    80007900:	fd5ff06f          	j	800078d4 <consolewrite+0x74>

0000000080007904 <consoleread>:
    80007904:	f9010113          	addi	sp,sp,-112
    80007908:	06813023          	sd	s0,96(sp)
    8000790c:	04913c23          	sd	s1,88(sp)
    80007910:	05213823          	sd	s2,80(sp)
    80007914:	05313423          	sd	s3,72(sp)
    80007918:	05413023          	sd	s4,64(sp)
    8000791c:	03513c23          	sd	s5,56(sp)
    80007920:	03613823          	sd	s6,48(sp)
    80007924:	03713423          	sd	s7,40(sp)
    80007928:	03813023          	sd	s8,32(sp)
    8000792c:	06113423          	sd	ra,104(sp)
    80007930:	01913c23          	sd	s9,24(sp)
    80007934:	07010413          	addi	s0,sp,112
    80007938:	00060b93          	mv	s7,a2
    8000793c:	00050913          	mv	s2,a0
    80007940:	00058c13          	mv	s8,a1
    80007944:	00060b1b          	sext.w	s6,a2
    80007948:	00006497          	auipc	s1,0x6
    8000794c:	3e048493          	addi	s1,s1,992 # 8000dd28 <cons>
    80007950:	00400993          	li	s3,4
    80007954:	fff00a13          	li	s4,-1
    80007958:	00a00a93          	li	s5,10
    8000795c:	05705e63          	blez	s7,800079b8 <consoleread+0xb4>
    80007960:	09c4a703          	lw	a4,156(s1)
    80007964:	0984a783          	lw	a5,152(s1)
    80007968:	0007071b          	sext.w	a4,a4
    8000796c:	08e78463          	beq	a5,a4,800079f4 <consoleread+0xf0>
    80007970:	07f7f713          	andi	a4,a5,127
    80007974:	00e48733          	add	a4,s1,a4
    80007978:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000797c:	0017869b          	addiw	a3,a5,1
    80007980:	08d4ac23          	sw	a3,152(s1)
    80007984:	00070c9b          	sext.w	s9,a4
    80007988:	0b370663          	beq	a4,s3,80007a34 <consoleread+0x130>
    8000798c:	00100693          	li	a3,1
    80007990:	f9f40613          	addi	a2,s0,-97
    80007994:	000c0593          	mv	a1,s8
    80007998:	00090513          	mv	a0,s2
    8000799c:	f8e40fa3          	sb	a4,-97(s0)
    800079a0:	00000097          	auipc	ra,0x0
    800079a4:	8bc080e7          	jalr	-1860(ra) # 8000725c <either_copyout>
    800079a8:	01450863          	beq	a0,s4,800079b8 <consoleread+0xb4>
    800079ac:	001c0c13          	addi	s8,s8,1
    800079b0:	fffb8b9b          	addiw	s7,s7,-1
    800079b4:	fb5c94e3          	bne	s9,s5,8000795c <consoleread+0x58>
    800079b8:	000b851b          	sext.w	a0,s7
    800079bc:	06813083          	ld	ra,104(sp)
    800079c0:	06013403          	ld	s0,96(sp)
    800079c4:	05813483          	ld	s1,88(sp)
    800079c8:	05013903          	ld	s2,80(sp)
    800079cc:	04813983          	ld	s3,72(sp)
    800079d0:	04013a03          	ld	s4,64(sp)
    800079d4:	03813a83          	ld	s5,56(sp)
    800079d8:	02813b83          	ld	s7,40(sp)
    800079dc:	02013c03          	ld	s8,32(sp)
    800079e0:	01813c83          	ld	s9,24(sp)
    800079e4:	40ab053b          	subw	a0,s6,a0
    800079e8:	03013b03          	ld	s6,48(sp)
    800079ec:	07010113          	addi	sp,sp,112
    800079f0:	00008067          	ret
    800079f4:	00001097          	auipc	ra,0x1
    800079f8:	1d8080e7          	jalr	472(ra) # 80008bcc <push_on>
    800079fc:	0984a703          	lw	a4,152(s1)
    80007a00:	09c4a783          	lw	a5,156(s1)
    80007a04:	0007879b          	sext.w	a5,a5
    80007a08:	fef70ce3          	beq	a4,a5,80007a00 <consoleread+0xfc>
    80007a0c:	00001097          	auipc	ra,0x1
    80007a10:	234080e7          	jalr	564(ra) # 80008c40 <pop_on>
    80007a14:	0984a783          	lw	a5,152(s1)
    80007a18:	07f7f713          	andi	a4,a5,127
    80007a1c:	00e48733          	add	a4,s1,a4
    80007a20:	01874703          	lbu	a4,24(a4)
    80007a24:	0017869b          	addiw	a3,a5,1
    80007a28:	08d4ac23          	sw	a3,152(s1)
    80007a2c:	00070c9b          	sext.w	s9,a4
    80007a30:	f5371ee3          	bne	a4,s3,8000798c <consoleread+0x88>
    80007a34:	000b851b          	sext.w	a0,s7
    80007a38:	f96bf2e3          	bgeu	s7,s6,800079bc <consoleread+0xb8>
    80007a3c:	08f4ac23          	sw	a5,152(s1)
    80007a40:	f7dff06f          	j	800079bc <consoleread+0xb8>

0000000080007a44 <consputc>:
    80007a44:	10000793          	li	a5,256
    80007a48:	00f50663          	beq	a0,a5,80007a54 <consputc+0x10>
    80007a4c:	00001317          	auipc	t1,0x1
    80007a50:	9f430067          	jr	-1548(t1) # 80008440 <uartputc_sync>
    80007a54:	ff010113          	addi	sp,sp,-16
    80007a58:	00113423          	sd	ra,8(sp)
    80007a5c:	00813023          	sd	s0,0(sp)
    80007a60:	01010413          	addi	s0,sp,16
    80007a64:	00800513          	li	a0,8
    80007a68:	00001097          	auipc	ra,0x1
    80007a6c:	9d8080e7          	jalr	-1576(ra) # 80008440 <uartputc_sync>
    80007a70:	02000513          	li	a0,32
    80007a74:	00001097          	auipc	ra,0x1
    80007a78:	9cc080e7          	jalr	-1588(ra) # 80008440 <uartputc_sync>
    80007a7c:	00013403          	ld	s0,0(sp)
    80007a80:	00813083          	ld	ra,8(sp)
    80007a84:	00800513          	li	a0,8
    80007a88:	01010113          	addi	sp,sp,16
    80007a8c:	00001317          	auipc	t1,0x1
    80007a90:	9b430067          	jr	-1612(t1) # 80008440 <uartputc_sync>

0000000080007a94 <consoleintr>:
    80007a94:	fe010113          	addi	sp,sp,-32
    80007a98:	00813823          	sd	s0,16(sp)
    80007a9c:	00913423          	sd	s1,8(sp)
    80007aa0:	01213023          	sd	s2,0(sp)
    80007aa4:	00113c23          	sd	ra,24(sp)
    80007aa8:	02010413          	addi	s0,sp,32
    80007aac:	00006917          	auipc	s2,0x6
    80007ab0:	27c90913          	addi	s2,s2,636 # 8000dd28 <cons>
    80007ab4:	00050493          	mv	s1,a0
    80007ab8:	00090513          	mv	a0,s2
    80007abc:	00001097          	auipc	ra,0x1
    80007ac0:	e40080e7          	jalr	-448(ra) # 800088fc <acquire>
    80007ac4:	02048c63          	beqz	s1,80007afc <consoleintr+0x68>
    80007ac8:	0a092783          	lw	a5,160(s2)
    80007acc:	09892703          	lw	a4,152(s2)
    80007ad0:	07f00693          	li	a3,127
    80007ad4:	40e7873b          	subw	a4,a5,a4
    80007ad8:	02e6e263          	bltu	a3,a4,80007afc <consoleintr+0x68>
    80007adc:	00d00713          	li	a4,13
    80007ae0:	04e48063          	beq	s1,a4,80007b20 <consoleintr+0x8c>
    80007ae4:	07f7f713          	andi	a4,a5,127
    80007ae8:	00e90733          	add	a4,s2,a4
    80007aec:	0017879b          	addiw	a5,a5,1
    80007af0:	0af92023          	sw	a5,160(s2)
    80007af4:	00970c23          	sb	s1,24(a4)
    80007af8:	08f92e23          	sw	a5,156(s2)
    80007afc:	01013403          	ld	s0,16(sp)
    80007b00:	01813083          	ld	ra,24(sp)
    80007b04:	00813483          	ld	s1,8(sp)
    80007b08:	00013903          	ld	s2,0(sp)
    80007b0c:	00006517          	auipc	a0,0x6
    80007b10:	21c50513          	addi	a0,a0,540 # 8000dd28 <cons>
    80007b14:	02010113          	addi	sp,sp,32
    80007b18:	00001317          	auipc	t1,0x1
    80007b1c:	eb030067          	jr	-336(t1) # 800089c8 <release>
    80007b20:	00a00493          	li	s1,10
    80007b24:	fc1ff06f          	j	80007ae4 <consoleintr+0x50>

0000000080007b28 <consoleinit>:
    80007b28:	fe010113          	addi	sp,sp,-32
    80007b2c:	00113c23          	sd	ra,24(sp)
    80007b30:	00813823          	sd	s0,16(sp)
    80007b34:	00913423          	sd	s1,8(sp)
    80007b38:	02010413          	addi	s0,sp,32
    80007b3c:	00006497          	auipc	s1,0x6
    80007b40:	1ec48493          	addi	s1,s1,492 # 8000dd28 <cons>
    80007b44:	00048513          	mv	a0,s1
    80007b48:	00003597          	auipc	a1,0x3
    80007b4c:	bc858593          	addi	a1,a1,-1080 # 8000a710 <CONSOLE_STATUS+0x700>
    80007b50:	00001097          	auipc	ra,0x1
    80007b54:	d88080e7          	jalr	-632(ra) # 800088d8 <initlock>
    80007b58:	00000097          	auipc	ra,0x0
    80007b5c:	7ac080e7          	jalr	1964(ra) # 80008304 <uartinit>
    80007b60:	01813083          	ld	ra,24(sp)
    80007b64:	01013403          	ld	s0,16(sp)
    80007b68:	00000797          	auipc	a5,0x0
    80007b6c:	d9c78793          	addi	a5,a5,-612 # 80007904 <consoleread>
    80007b70:	0af4bc23          	sd	a5,184(s1)
    80007b74:	00000797          	auipc	a5,0x0
    80007b78:	cec78793          	addi	a5,a5,-788 # 80007860 <consolewrite>
    80007b7c:	0cf4b023          	sd	a5,192(s1)
    80007b80:	00813483          	ld	s1,8(sp)
    80007b84:	02010113          	addi	sp,sp,32
    80007b88:	00008067          	ret

0000000080007b8c <console_read>:
    80007b8c:	ff010113          	addi	sp,sp,-16
    80007b90:	00813423          	sd	s0,8(sp)
    80007b94:	01010413          	addi	s0,sp,16
    80007b98:	00813403          	ld	s0,8(sp)
    80007b9c:	00006317          	auipc	t1,0x6
    80007ba0:	24433303          	ld	t1,580(t1) # 8000dde0 <devsw+0x10>
    80007ba4:	01010113          	addi	sp,sp,16
    80007ba8:	00030067          	jr	t1

0000000080007bac <console_write>:
    80007bac:	ff010113          	addi	sp,sp,-16
    80007bb0:	00813423          	sd	s0,8(sp)
    80007bb4:	01010413          	addi	s0,sp,16
    80007bb8:	00813403          	ld	s0,8(sp)
    80007bbc:	00006317          	auipc	t1,0x6
    80007bc0:	22c33303          	ld	t1,556(t1) # 8000dde8 <devsw+0x18>
    80007bc4:	01010113          	addi	sp,sp,16
    80007bc8:	00030067          	jr	t1

0000000080007bcc <panic>:
    80007bcc:	fe010113          	addi	sp,sp,-32
    80007bd0:	00113c23          	sd	ra,24(sp)
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	02010413          	addi	s0,sp,32
    80007be0:	00050493          	mv	s1,a0
    80007be4:	00003517          	auipc	a0,0x3
    80007be8:	b3450513          	addi	a0,a0,-1228 # 8000a718 <CONSOLE_STATUS+0x708>
    80007bec:	00006797          	auipc	a5,0x6
    80007bf0:	2807ae23          	sw	zero,668(a5) # 8000de88 <pr+0x18>
    80007bf4:	00000097          	auipc	ra,0x0
    80007bf8:	034080e7          	jalr	52(ra) # 80007c28 <__printf>
    80007bfc:	00048513          	mv	a0,s1
    80007c00:	00000097          	auipc	ra,0x0
    80007c04:	028080e7          	jalr	40(ra) # 80007c28 <__printf>
    80007c08:	00003517          	auipc	a0,0x3
    80007c0c:	88050513          	addi	a0,a0,-1920 # 8000a488 <CONSOLE_STATUS+0x478>
    80007c10:	00000097          	auipc	ra,0x0
    80007c14:	018080e7          	jalr	24(ra) # 80007c28 <__printf>
    80007c18:	00100793          	li	a5,1
    80007c1c:	00005717          	auipc	a4,0x5
    80007c20:	d2f72e23          	sw	a5,-708(a4) # 8000c958 <panicked>
    80007c24:	0000006f          	j	80007c24 <panic+0x58>

0000000080007c28 <__printf>:
    80007c28:	f3010113          	addi	sp,sp,-208
    80007c2c:	08813023          	sd	s0,128(sp)
    80007c30:	07313423          	sd	s3,104(sp)
    80007c34:	09010413          	addi	s0,sp,144
    80007c38:	05813023          	sd	s8,64(sp)
    80007c3c:	08113423          	sd	ra,136(sp)
    80007c40:	06913c23          	sd	s1,120(sp)
    80007c44:	07213823          	sd	s2,112(sp)
    80007c48:	07413023          	sd	s4,96(sp)
    80007c4c:	05513c23          	sd	s5,88(sp)
    80007c50:	05613823          	sd	s6,80(sp)
    80007c54:	05713423          	sd	s7,72(sp)
    80007c58:	03913c23          	sd	s9,56(sp)
    80007c5c:	03a13823          	sd	s10,48(sp)
    80007c60:	03b13423          	sd	s11,40(sp)
    80007c64:	00006317          	auipc	t1,0x6
    80007c68:	20c30313          	addi	t1,t1,524 # 8000de70 <pr>
    80007c6c:	01832c03          	lw	s8,24(t1)
    80007c70:	00b43423          	sd	a1,8(s0)
    80007c74:	00c43823          	sd	a2,16(s0)
    80007c78:	00d43c23          	sd	a3,24(s0)
    80007c7c:	02e43023          	sd	a4,32(s0)
    80007c80:	02f43423          	sd	a5,40(s0)
    80007c84:	03043823          	sd	a6,48(s0)
    80007c88:	03143c23          	sd	a7,56(s0)
    80007c8c:	00050993          	mv	s3,a0
    80007c90:	4a0c1663          	bnez	s8,8000813c <__printf+0x514>
    80007c94:	60098c63          	beqz	s3,800082ac <__printf+0x684>
    80007c98:	0009c503          	lbu	a0,0(s3)
    80007c9c:	00840793          	addi	a5,s0,8
    80007ca0:	f6f43c23          	sd	a5,-136(s0)
    80007ca4:	00000493          	li	s1,0
    80007ca8:	22050063          	beqz	a0,80007ec8 <__printf+0x2a0>
    80007cac:	00002a37          	lui	s4,0x2
    80007cb0:	00018ab7          	lui	s5,0x18
    80007cb4:	000f4b37          	lui	s6,0xf4
    80007cb8:	00989bb7          	lui	s7,0x989
    80007cbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007cc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007cc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007cc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007ccc:	00148c9b          	addiw	s9,s1,1
    80007cd0:	02500793          	li	a5,37
    80007cd4:	01998933          	add	s2,s3,s9
    80007cd8:	38f51263          	bne	a0,a5,8000805c <__printf+0x434>
    80007cdc:	00094783          	lbu	a5,0(s2)
    80007ce0:	00078c9b          	sext.w	s9,a5
    80007ce4:	1e078263          	beqz	a5,80007ec8 <__printf+0x2a0>
    80007ce8:	0024849b          	addiw	s1,s1,2
    80007cec:	07000713          	li	a4,112
    80007cf0:	00998933          	add	s2,s3,s1
    80007cf4:	38e78a63          	beq	a5,a4,80008088 <__printf+0x460>
    80007cf8:	20f76863          	bltu	a4,a5,80007f08 <__printf+0x2e0>
    80007cfc:	42a78863          	beq	a5,a0,8000812c <__printf+0x504>
    80007d00:	06400713          	li	a4,100
    80007d04:	40e79663          	bne	a5,a4,80008110 <__printf+0x4e8>
    80007d08:	f7843783          	ld	a5,-136(s0)
    80007d0c:	0007a603          	lw	a2,0(a5)
    80007d10:	00878793          	addi	a5,a5,8
    80007d14:	f6f43c23          	sd	a5,-136(s0)
    80007d18:	42064a63          	bltz	a2,8000814c <__printf+0x524>
    80007d1c:	00a00713          	li	a4,10
    80007d20:	02e677bb          	remuw	a5,a2,a4
    80007d24:	00003d97          	auipc	s11,0x3
    80007d28:	a1cd8d93          	addi	s11,s11,-1508 # 8000a740 <digits>
    80007d2c:	00900593          	li	a1,9
    80007d30:	0006051b          	sext.w	a0,a2
    80007d34:	00000c93          	li	s9,0
    80007d38:	02079793          	slli	a5,a5,0x20
    80007d3c:	0207d793          	srli	a5,a5,0x20
    80007d40:	00fd87b3          	add	a5,s11,a5
    80007d44:	0007c783          	lbu	a5,0(a5)
    80007d48:	02e656bb          	divuw	a3,a2,a4
    80007d4c:	f8f40023          	sb	a5,-128(s0)
    80007d50:	14c5d863          	bge	a1,a2,80007ea0 <__printf+0x278>
    80007d54:	06300593          	li	a1,99
    80007d58:	00100c93          	li	s9,1
    80007d5c:	02e6f7bb          	remuw	a5,a3,a4
    80007d60:	02079793          	slli	a5,a5,0x20
    80007d64:	0207d793          	srli	a5,a5,0x20
    80007d68:	00fd87b3          	add	a5,s11,a5
    80007d6c:	0007c783          	lbu	a5,0(a5)
    80007d70:	02e6d73b          	divuw	a4,a3,a4
    80007d74:	f8f400a3          	sb	a5,-127(s0)
    80007d78:	12a5f463          	bgeu	a1,a0,80007ea0 <__printf+0x278>
    80007d7c:	00a00693          	li	a3,10
    80007d80:	00900593          	li	a1,9
    80007d84:	02d777bb          	remuw	a5,a4,a3
    80007d88:	02079793          	slli	a5,a5,0x20
    80007d8c:	0207d793          	srli	a5,a5,0x20
    80007d90:	00fd87b3          	add	a5,s11,a5
    80007d94:	0007c503          	lbu	a0,0(a5)
    80007d98:	02d757bb          	divuw	a5,a4,a3
    80007d9c:	f8a40123          	sb	a0,-126(s0)
    80007da0:	48e5f263          	bgeu	a1,a4,80008224 <__printf+0x5fc>
    80007da4:	06300513          	li	a0,99
    80007da8:	02d7f5bb          	remuw	a1,a5,a3
    80007dac:	02059593          	slli	a1,a1,0x20
    80007db0:	0205d593          	srli	a1,a1,0x20
    80007db4:	00bd85b3          	add	a1,s11,a1
    80007db8:	0005c583          	lbu	a1,0(a1)
    80007dbc:	02d7d7bb          	divuw	a5,a5,a3
    80007dc0:	f8b401a3          	sb	a1,-125(s0)
    80007dc4:	48e57263          	bgeu	a0,a4,80008248 <__printf+0x620>
    80007dc8:	3e700513          	li	a0,999
    80007dcc:	02d7f5bb          	remuw	a1,a5,a3
    80007dd0:	02059593          	slli	a1,a1,0x20
    80007dd4:	0205d593          	srli	a1,a1,0x20
    80007dd8:	00bd85b3          	add	a1,s11,a1
    80007ddc:	0005c583          	lbu	a1,0(a1)
    80007de0:	02d7d7bb          	divuw	a5,a5,a3
    80007de4:	f8b40223          	sb	a1,-124(s0)
    80007de8:	46e57663          	bgeu	a0,a4,80008254 <__printf+0x62c>
    80007dec:	02d7f5bb          	remuw	a1,a5,a3
    80007df0:	02059593          	slli	a1,a1,0x20
    80007df4:	0205d593          	srli	a1,a1,0x20
    80007df8:	00bd85b3          	add	a1,s11,a1
    80007dfc:	0005c583          	lbu	a1,0(a1)
    80007e00:	02d7d7bb          	divuw	a5,a5,a3
    80007e04:	f8b402a3          	sb	a1,-123(s0)
    80007e08:	46ea7863          	bgeu	s4,a4,80008278 <__printf+0x650>
    80007e0c:	02d7f5bb          	remuw	a1,a5,a3
    80007e10:	02059593          	slli	a1,a1,0x20
    80007e14:	0205d593          	srli	a1,a1,0x20
    80007e18:	00bd85b3          	add	a1,s11,a1
    80007e1c:	0005c583          	lbu	a1,0(a1)
    80007e20:	02d7d7bb          	divuw	a5,a5,a3
    80007e24:	f8b40323          	sb	a1,-122(s0)
    80007e28:	3eeaf863          	bgeu	s5,a4,80008218 <__printf+0x5f0>
    80007e2c:	02d7f5bb          	remuw	a1,a5,a3
    80007e30:	02059593          	slli	a1,a1,0x20
    80007e34:	0205d593          	srli	a1,a1,0x20
    80007e38:	00bd85b3          	add	a1,s11,a1
    80007e3c:	0005c583          	lbu	a1,0(a1)
    80007e40:	02d7d7bb          	divuw	a5,a5,a3
    80007e44:	f8b403a3          	sb	a1,-121(s0)
    80007e48:	42eb7e63          	bgeu	s6,a4,80008284 <__printf+0x65c>
    80007e4c:	02d7f5bb          	remuw	a1,a5,a3
    80007e50:	02059593          	slli	a1,a1,0x20
    80007e54:	0205d593          	srli	a1,a1,0x20
    80007e58:	00bd85b3          	add	a1,s11,a1
    80007e5c:	0005c583          	lbu	a1,0(a1)
    80007e60:	02d7d7bb          	divuw	a5,a5,a3
    80007e64:	f8b40423          	sb	a1,-120(s0)
    80007e68:	42ebfc63          	bgeu	s7,a4,800082a0 <__printf+0x678>
    80007e6c:	02079793          	slli	a5,a5,0x20
    80007e70:	0207d793          	srli	a5,a5,0x20
    80007e74:	00fd8db3          	add	s11,s11,a5
    80007e78:	000dc703          	lbu	a4,0(s11)
    80007e7c:	00a00793          	li	a5,10
    80007e80:	00900c93          	li	s9,9
    80007e84:	f8e404a3          	sb	a4,-119(s0)
    80007e88:	00065c63          	bgez	a2,80007ea0 <__printf+0x278>
    80007e8c:	f9040713          	addi	a4,s0,-112
    80007e90:	00f70733          	add	a4,a4,a5
    80007e94:	02d00693          	li	a3,45
    80007e98:	fed70823          	sb	a3,-16(a4)
    80007e9c:	00078c93          	mv	s9,a5
    80007ea0:	f8040793          	addi	a5,s0,-128
    80007ea4:	01978cb3          	add	s9,a5,s9
    80007ea8:	f7f40d13          	addi	s10,s0,-129
    80007eac:	000cc503          	lbu	a0,0(s9)
    80007eb0:	fffc8c93          	addi	s9,s9,-1
    80007eb4:	00000097          	auipc	ra,0x0
    80007eb8:	b90080e7          	jalr	-1136(ra) # 80007a44 <consputc>
    80007ebc:	ffac98e3          	bne	s9,s10,80007eac <__printf+0x284>
    80007ec0:	00094503          	lbu	a0,0(s2)
    80007ec4:	e00514e3          	bnez	a0,80007ccc <__printf+0xa4>
    80007ec8:	1a0c1663          	bnez	s8,80008074 <__printf+0x44c>
    80007ecc:	08813083          	ld	ra,136(sp)
    80007ed0:	08013403          	ld	s0,128(sp)
    80007ed4:	07813483          	ld	s1,120(sp)
    80007ed8:	07013903          	ld	s2,112(sp)
    80007edc:	06813983          	ld	s3,104(sp)
    80007ee0:	06013a03          	ld	s4,96(sp)
    80007ee4:	05813a83          	ld	s5,88(sp)
    80007ee8:	05013b03          	ld	s6,80(sp)
    80007eec:	04813b83          	ld	s7,72(sp)
    80007ef0:	04013c03          	ld	s8,64(sp)
    80007ef4:	03813c83          	ld	s9,56(sp)
    80007ef8:	03013d03          	ld	s10,48(sp)
    80007efc:	02813d83          	ld	s11,40(sp)
    80007f00:	0d010113          	addi	sp,sp,208
    80007f04:	00008067          	ret
    80007f08:	07300713          	li	a4,115
    80007f0c:	1ce78a63          	beq	a5,a4,800080e0 <__printf+0x4b8>
    80007f10:	07800713          	li	a4,120
    80007f14:	1ee79e63          	bne	a5,a4,80008110 <__printf+0x4e8>
    80007f18:	f7843783          	ld	a5,-136(s0)
    80007f1c:	0007a703          	lw	a4,0(a5)
    80007f20:	00878793          	addi	a5,a5,8
    80007f24:	f6f43c23          	sd	a5,-136(s0)
    80007f28:	28074263          	bltz	a4,800081ac <__printf+0x584>
    80007f2c:	00003d97          	auipc	s11,0x3
    80007f30:	814d8d93          	addi	s11,s11,-2028 # 8000a740 <digits>
    80007f34:	00f77793          	andi	a5,a4,15
    80007f38:	00fd87b3          	add	a5,s11,a5
    80007f3c:	0007c683          	lbu	a3,0(a5)
    80007f40:	00f00613          	li	a2,15
    80007f44:	0007079b          	sext.w	a5,a4
    80007f48:	f8d40023          	sb	a3,-128(s0)
    80007f4c:	0047559b          	srliw	a1,a4,0x4
    80007f50:	0047569b          	srliw	a3,a4,0x4
    80007f54:	00000c93          	li	s9,0
    80007f58:	0ee65063          	bge	a2,a4,80008038 <__printf+0x410>
    80007f5c:	00f6f693          	andi	a3,a3,15
    80007f60:	00dd86b3          	add	a3,s11,a3
    80007f64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007f68:	0087d79b          	srliw	a5,a5,0x8
    80007f6c:	00100c93          	li	s9,1
    80007f70:	f8d400a3          	sb	a3,-127(s0)
    80007f74:	0cb67263          	bgeu	a2,a1,80008038 <__printf+0x410>
    80007f78:	00f7f693          	andi	a3,a5,15
    80007f7c:	00dd86b3          	add	a3,s11,a3
    80007f80:	0006c583          	lbu	a1,0(a3)
    80007f84:	00f00613          	li	a2,15
    80007f88:	0047d69b          	srliw	a3,a5,0x4
    80007f8c:	f8b40123          	sb	a1,-126(s0)
    80007f90:	0047d593          	srli	a1,a5,0x4
    80007f94:	28f67e63          	bgeu	a2,a5,80008230 <__printf+0x608>
    80007f98:	00f6f693          	andi	a3,a3,15
    80007f9c:	00dd86b3          	add	a3,s11,a3
    80007fa0:	0006c503          	lbu	a0,0(a3)
    80007fa4:	0087d813          	srli	a6,a5,0x8
    80007fa8:	0087d69b          	srliw	a3,a5,0x8
    80007fac:	f8a401a3          	sb	a0,-125(s0)
    80007fb0:	28b67663          	bgeu	a2,a1,8000823c <__printf+0x614>
    80007fb4:	00f6f693          	andi	a3,a3,15
    80007fb8:	00dd86b3          	add	a3,s11,a3
    80007fbc:	0006c583          	lbu	a1,0(a3)
    80007fc0:	00c7d513          	srli	a0,a5,0xc
    80007fc4:	00c7d69b          	srliw	a3,a5,0xc
    80007fc8:	f8b40223          	sb	a1,-124(s0)
    80007fcc:	29067a63          	bgeu	a2,a6,80008260 <__printf+0x638>
    80007fd0:	00f6f693          	andi	a3,a3,15
    80007fd4:	00dd86b3          	add	a3,s11,a3
    80007fd8:	0006c583          	lbu	a1,0(a3)
    80007fdc:	0107d813          	srli	a6,a5,0x10
    80007fe0:	0107d69b          	srliw	a3,a5,0x10
    80007fe4:	f8b402a3          	sb	a1,-123(s0)
    80007fe8:	28a67263          	bgeu	a2,a0,8000826c <__printf+0x644>
    80007fec:	00f6f693          	andi	a3,a3,15
    80007ff0:	00dd86b3          	add	a3,s11,a3
    80007ff4:	0006c683          	lbu	a3,0(a3)
    80007ff8:	0147d79b          	srliw	a5,a5,0x14
    80007ffc:	f8d40323          	sb	a3,-122(s0)
    80008000:	21067663          	bgeu	a2,a6,8000820c <__printf+0x5e4>
    80008004:	02079793          	slli	a5,a5,0x20
    80008008:	0207d793          	srli	a5,a5,0x20
    8000800c:	00fd8db3          	add	s11,s11,a5
    80008010:	000dc683          	lbu	a3,0(s11)
    80008014:	00800793          	li	a5,8
    80008018:	00700c93          	li	s9,7
    8000801c:	f8d403a3          	sb	a3,-121(s0)
    80008020:	00075c63          	bgez	a4,80008038 <__printf+0x410>
    80008024:	f9040713          	addi	a4,s0,-112
    80008028:	00f70733          	add	a4,a4,a5
    8000802c:	02d00693          	li	a3,45
    80008030:	fed70823          	sb	a3,-16(a4)
    80008034:	00078c93          	mv	s9,a5
    80008038:	f8040793          	addi	a5,s0,-128
    8000803c:	01978cb3          	add	s9,a5,s9
    80008040:	f7f40d13          	addi	s10,s0,-129
    80008044:	000cc503          	lbu	a0,0(s9)
    80008048:	fffc8c93          	addi	s9,s9,-1
    8000804c:	00000097          	auipc	ra,0x0
    80008050:	9f8080e7          	jalr	-1544(ra) # 80007a44 <consputc>
    80008054:	ff9d18e3          	bne	s10,s9,80008044 <__printf+0x41c>
    80008058:	0100006f          	j	80008068 <__printf+0x440>
    8000805c:	00000097          	auipc	ra,0x0
    80008060:	9e8080e7          	jalr	-1560(ra) # 80007a44 <consputc>
    80008064:	000c8493          	mv	s1,s9
    80008068:	00094503          	lbu	a0,0(s2)
    8000806c:	c60510e3          	bnez	a0,80007ccc <__printf+0xa4>
    80008070:	e40c0ee3          	beqz	s8,80007ecc <__printf+0x2a4>
    80008074:	00006517          	auipc	a0,0x6
    80008078:	dfc50513          	addi	a0,a0,-516 # 8000de70 <pr>
    8000807c:	00001097          	auipc	ra,0x1
    80008080:	94c080e7          	jalr	-1716(ra) # 800089c8 <release>
    80008084:	e49ff06f          	j	80007ecc <__printf+0x2a4>
    80008088:	f7843783          	ld	a5,-136(s0)
    8000808c:	03000513          	li	a0,48
    80008090:	01000d13          	li	s10,16
    80008094:	00878713          	addi	a4,a5,8
    80008098:	0007bc83          	ld	s9,0(a5)
    8000809c:	f6e43c23          	sd	a4,-136(s0)
    800080a0:	00000097          	auipc	ra,0x0
    800080a4:	9a4080e7          	jalr	-1628(ra) # 80007a44 <consputc>
    800080a8:	07800513          	li	a0,120
    800080ac:	00000097          	auipc	ra,0x0
    800080b0:	998080e7          	jalr	-1640(ra) # 80007a44 <consputc>
    800080b4:	00002d97          	auipc	s11,0x2
    800080b8:	68cd8d93          	addi	s11,s11,1676 # 8000a740 <digits>
    800080bc:	03ccd793          	srli	a5,s9,0x3c
    800080c0:	00fd87b3          	add	a5,s11,a5
    800080c4:	0007c503          	lbu	a0,0(a5)
    800080c8:	fffd0d1b          	addiw	s10,s10,-1
    800080cc:	004c9c93          	slli	s9,s9,0x4
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	974080e7          	jalr	-1676(ra) # 80007a44 <consputc>
    800080d8:	fe0d12e3          	bnez	s10,800080bc <__printf+0x494>
    800080dc:	f8dff06f          	j	80008068 <__printf+0x440>
    800080e0:	f7843783          	ld	a5,-136(s0)
    800080e4:	0007bc83          	ld	s9,0(a5)
    800080e8:	00878793          	addi	a5,a5,8
    800080ec:	f6f43c23          	sd	a5,-136(s0)
    800080f0:	000c9a63          	bnez	s9,80008104 <__printf+0x4dc>
    800080f4:	1080006f          	j	800081fc <__printf+0x5d4>
    800080f8:	001c8c93          	addi	s9,s9,1
    800080fc:	00000097          	auipc	ra,0x0
    80008100:	948080e7          	jalr	-1720(ra) # 80007a44 <consputc>
    80008104:	000cc503          	lbu	a0,0(s9)
    80008108:	fe0518e3          	bnez	a0,800080f8 <__printf+0x4d0>
    8000810c:	f5dff06f          	j	80008068 <__printf+0x440>
    80008110:	02500513          	li	a0,37
    80008114:	00000097          	auipc	ra,0x0
    80008118:	930080e7          	jalr	-1744(ra) # 80007a44 <consputc>
    8000811c:	000c8513          	mv	a0,s9
    80008120:	00000097          	auipc	ra,0x0
    80008124:	924080e7          	jalr	-1756(ra) # 80007a44 <consputc>
    80008128:	f41ff06f          	j	80008068 <__printf+0x440>
    8000812c:	02500513          	li	a0,37
    80008130:	00000097          	auipc	ra,0x0
    80008134:	914080e7          	jalr	-1772(ra) # 80007a44 <consputc>
    80008138:	f31ff06f          	j	80008068 <__printf+0x440>
    8000813c:	00030513          	mv	a0,t1
    80008140:	00000097          	auipc	ra,0x0
    80008144:	7bc080e7          	jalr	1980(ra) # 800088fc <acquire>
    80008148:	b4dff06f          	j	80007c94 <__printf+0x6c>
    8000814c:	40c0053b          	negw	a0,a2
    80008150:	00a00713          	li	a4,10
    80008154:	02e576bb          	remuw	a3,a0,a4
    80008158:	00002d97          	auipc	s11,0x2
    8000815c:	5e8d8d93          	addi	s11,s11,1512 # 8000a740 <digits>
    80008160:	ff700593          	li	a1,-9
    80008164:	02069693          	slli	a3,a3,0x20
    80008168:	0206d693          	srli	a3,a3,0x20
    8000816c:	00dd86b3          	add	a3,s11,a3
    80008170:	0006c683          	lbu	a3,0(a3)
    80008174:	02e557bb          	divuw	a5,a0,a4
    80008178:	f8d40023          	sb	a3,-128(s0)
    8000817c:	10b65e63          	bge	a2,a1,80008298 <__printf+0x670>
    80008180:	06300593          	li	a1,99
    80008184:	02e7f6bb          	remuw	a3,a5,a4
    80008188:	02069693          	slli	a3,a3,0x20
    8000818c:	0206d693          	srli	a3,a3,0x20
    80008190:	00dd86b3          	add	a3,s11,a3
    80008194:	0006c683          	lbu	a3,0(a3)
    80008198:	02e7d73b          	divuw	a4,a5,a4
    8000819c:	00200793          	li	a5,2
    800081a0:	f8d400a3          	sb	a3,-127(s0)
    800081a4:	bca5ece3          	bltu	a1,a0,80007d7c <__printf+0x154>
    800081a8:	ce5ff06f          	j	80007e8c <__printf+0x264>
    800081ac:	40e007bb          	negw	a5,a4
    800081b0:	00002d97          	auipc	s11,0x2
    800081b4:	590d8d93          	addi	s11,s11,1424 # 8000a740 <digits>
    800081b8:	00f7f693          	andi	a3,a5,15
    800081bc:	00dd86b3          	add	a3,s11,a3
    800081c0:	0006c583          	lbu	a1,0(a3)
    800081c4:	ff100613          	li	a2,-15
    800081c8:	0047d69b          	srliw	a3,a5,0x4
    800081cc:	f8b40023          	sb	a1,-128(s0)
    800081d0:	0047d59b          	srliw	a1,a5,0x4
    800081d4:	0ac75e63          	bge	a4,a2,80008290 <__printf+0x668>
    800081d8:	00f6f693          	andi	a3,a3,15
    800081dc:	00dd86b3          	add	a3,s11,a3
    800081e0:	0006c603          	lbu	a2,0(a3)
    800081e4:	00f00693          	li	a3,15
    800081e8:	0087d79b          	srliw	a5,a5,0x8
    800081ec:	f8c400a3          	sb	a2,-127(s0)
    800081f0:	d8b6e4e3          	bltu	a3,a1,80007f78 <__printf+0x350>
    800081f4:	00200793          	li	a5,2
    800081f8:	e2dff06f          	j	80008024 <__printf+0x3fc>
    800081fc:	00002c97          	auipc	s9,0x2
    80008200:	524c8c93          	addi	s9,s9,1316 # 8000a720 <CONSOLE_STATUS+0x710>
    80008204:	02800513          	li	a0,40
    80008208:	ef1ff06f          	j	800080f8 <__printf+0x4d0>
    8000820c:	00700793          	li	a5,7
    80008210:	00600c93          	li	s9,6
    80008214:	e0dff06f          	j	80008020 <__printf+0x3f8>
    80008218:	00700793          	li	a5,7
    8000821c:	00600c93          	li	s9,6
    80008220:	c69ff06f          	j	80007e88 <__printf+0x260>
    80008224:	00300793          	li	a5,3
    80008228:	00200c93          	li	s9,2
    8000822c:	c5dff06f          	j	80007e88 <__printf+0x260>
    80008230:	00300793          	li	a5,3
    80008234:	00200c93          	li	s9,2
    80008238:	de9ff06f          	j	80008020 <__printf+0x3f8>
    8000823c:	00400793          	li	a5,4
    80008240:	00300c93          	li	s9,3
    80008244:	dddff06f          	j	80008020 <__printf+0x3f8>
    80008248:	00400793          	li	a5,4
    8000824c:	00300c93          	li	s9,3
    80008250:	c39ff06f          	j	80007e88 <__printf+0x260>
    80008254:	00500793          	li	a5,5
    80008258:	00400c93          	li	s9,4
    8000825c:	c2dff06f          	j	80007e88 <__printf+0x260>
    80008260:	00500793          	li	a5,5
    80008264:	00400c93          	li	s9,4
    80008268:	db9ff06f          	j	80008020 <__printf+0x3f8>
    8000826c:	00600793          	li	a5,6
    80008270:	00500c93          	li	s9,5
    80008274:	dadff06f          	j	80008020 <__printf+0x3f8>
    80008278:	00600793          	li	a5,6
    8000827c:	00500c93          	li	s9,5
    80008280:	c09ff06f          	j	80007e88 <__printf+0x260>
    80008284:	00800793          	li	a5,8
    80008288:	00700c93          	li	s9,7
    8000828c:	bfdff06f          	j	80007e88 <__printf+0x260>
    80008290:	00100793          	li	a5,1
    80008294:	d91ff06f          	j	80008024 <__printf+0x3fc>
    80008298:	00100793          	li	a5,1
    8000829c:	bf1ff06f          	j	80007e8c <__printf+0x264>
    800082a0:	00900793          	li	a5,9
    800082a4:	00800c93          	li	s9,8
    800082a8:	be1ff06f          	j	80007e88 <__printf+0x260>
    800082ac:	00002517          	auipc	a0,0x2
    800082b0:	47c50513          	addi	a0,a0,1148 # 8000a728 <CONSOLE_STATUS+0x718>
    800082b4:	00000097          	auipc	ra,0x0
    800082b8:	918080e7          	jalr	-1768(ra) # 80007bcc <panic>

00000000800082bc <printfinit>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00913423          	sd	s1,8(sp)
    800082c8:	00113c23          	sd	ra,24(sp)
    800082cc:	02010413          	addi	s0,sp,32
    800082d0:	00006497          	auipc	s1,0x6
    800082d4:	ba048493          	addi	s1,s1,-1120 # 8000de70 <pr>
    800082d8:	00048513          	mv	a0,s1
    800082dc:	00002597          	auipc	a1,0x2
    800082e0:	45c58593          	addi	a1,a1,1116 # 8000a738 <CONSOLE_STATUS+0x728>
    800082e4:	00000097          	auipc	ra,0x0
    800082e8:	5f4080e7          	jalr	1524(ra) # 800088d8 <initlock>
    800082ec:	01813083          	ld	ra,24(sp)
    800082f0:	01013403          	ld	s0,16(sp)
    800082f4:	0004ac23          	sw	zero,24(s1)
    800082f8:	00813483          	ld	s1,8(sp)
    800082fc:	02010113          	addi	sp,sp,32
    80008300:	00008067          	ret

0000000080008304 <uartinit>:
    80008304:	ff010113          	addi	sp,sp,-16
    80008308:	00813423          	sd	s0,8(sp)
    8000830c:	01010413          	addi	s0,sp,16
    80008310:	100007b7          	lui	a5,0x10000
    80008314:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008318:	f8000713          	li	a4,-128
    8000831c:	00e781a3          	sb	a4,3(a5)
    80008320:	00300713          	li	a4,3
    80008324:	00e78023          	sb	a4,0(a5)
    80008328:	000780a3          	sb	zero,1(a5)
    8000832c:	00e781a3          	sb	a4,3(a5)
    80008330:	00700693          	li	a3,7
    80008334:	00d78123          	sb	a3,2(a5)
    80008338:	00e780a3          	sb	a4,1(a5)
    8000833c:	00813403          	ld	s0,8(sp)
    80008340:	01010113          	addi	sp,sp,16
    80008344:	00008067          	ret

0000000080008348 <uartputc>:
    80008348:	00004797          	auipc	a5,0x4
    8000834c:	6107a783          	lw	a5,1552(a5) # 8000c958 <panicked>
    80008350:	00078463          	beqz	a5,80008358 <uartputc+0x10>
    80008354:	0000006f          	j	80008354 <uartputc+0xc>
    80008358:	fd010113          	addi	sp,sp,-48
    8000835c:	02813023          	sd	s0,32(sp)
    80008360:	00913c23          	sd	s1,24(sp)
    80008364:	01213823          	sd	s2,16(sp)
    80008368:	01313423          	sd	s3,8(sp)
    8000836c:	02113423          	sd	ra,40(sp)
    80008370:	03010413          	addi	s0,sp,48
    80008374:	00004917          	auipc	s2,0x4
    80008378:	5ec90913          	addi	s2,s2,1516 # 8000c960 <uart_tx_r>
    8000837c:	00093783          	ld	a5,0(s2)
    80008380:	00004497          	auipc	s1,0x4
    80008384:	5e848493          	addi	s1,s1,1512 # 8000c968 <uart_tx_w>
    80008388:	0004b703          	ld	a4,0(s1)
    8000838c:	02078693          	addi	a3,a5,32
    80008390:	00050993          	mv	s3,a0
    80008394:	02e69c63          	bne	a3,a4,800083cc <uartputc+0x84>
    80008398:	00001097          	auipc	ra,0x1
    8000839c:	834080e7          	jalr	-1996(ra) # 80008bcc <push_on>
    800083a0:	00093783          	ld	a5,0(s2)
    800083a4:	0004b703          	ld	a4,0(s1)
    800083a8:	02078793          	addi	a5,a5,32
    800083ac:	00e79463          	bne	a5,a4,800083b4 <uartputc+0x6c>
    800083b0:	0000006f          	j	800083b0 <uartputc+0x68>
    800083b4:	00001097          	auipc	ra,0x1
    800083b8:	88c080e7          	jalr	-1908(ra) # 80008c40 <pop_on>
    800083bc:	00093783          	ld	a5,0(s2)
    800083c0:	0004b703          	ld	a4,0(s1)
    800083c4:	02078693          	addi	a3,a5,32
    800083c8:	fce688e3          	beq	a3,a4,80008398 <uartputc+0x50>
    800083cc:	01f77693          	andi	a3,a4,31
    800083d0:	00006597          	auipc	a1,0x6
    800083d4:	ac058593          	addi	a1,a1,-1344 # 8000de90 <uart_tx_buf>
    800083d8:	00d586b3          	add	a3,a1,a3
    800083dc:	00170713          	addi	a4,a4,1
    800083e0:	01368023          	sb	s3,0(a3)
    800083e4:	00e4b023          	sd	a4,0(s1)
    800083e8:	10000637          	lui	a2,0x10000
    800083ec:	02f71063          	bne	a4,a5,8000840c <uartputc+0xc4>
    800083f0:	0340006f          	j	80008424 <uartputc+0xdc>
    800083f4:	00074703          	lbu	a4,0(a4)
    800083f8:	00f93023          	sd	a5,0(s2)
    800083fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008400:	00093783          	ld	a5,0(s2)
    80008404:	0004b703          	ld	a4,0(s1)
    80008408:	00f70e63          	beq	a4,a5,80008424 <uartputc+0xdc>
    8000840c:	00564683          	lbu	a3,5(a2)
    80008410:	01f7f713          	andi	a4,a5,31
    80008414:	00e58733          	add	a4,a1,a4
    80008418:	0206f693          	andi	a3,a3,32
    8000841c:	00178793          	addi	a5,a5,1
    80008420:	fc069ae3          	bnez	a3,800083f4 <uartputc+0xac>
    80008424:	02813083          	ld	ra,40(sp)
    80008428:	02013403          	ld	s0,32(sp)
    8000842c:	01813483          	ld	s1,24(sp)
    80008430:	01013903          	ld	s2,16(sp)
    80008434:	00813983          	ld	s3,8(sp)
    80008438:	03010113          	addi	sp,sp,48
    8000843c:	00008067          	ret

0000000080008440 <uartputc_sync>:
    80008440:	ff010113          	addi	sp,sp,-16
    80008444:	00813423          	sd	s0,8(sp)
    80008448:	01010413          	addi	s0,sp,16
    8000844c:	00004717          	auipc	a4,0x4
    80008450:	50c72703          	lw	a4,1292(a4) # 8000c958 <panicked>
    80008454:	02071663          	bnez	a4,80008480 <uartputc_sync+0x40>
    80008458:	00050793          	mv	a5,a0
    8000845c:	100006b7          	lui	a3,0x10000
    80008460:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008464:	02077713          	andi	a4,a4,32
    80008468:	fe070ce3          	beqz	a4,80008460 <uartputc_sync+0x20>
    8000846c:	0ff7f793          	andi	a5,a5,255
    80008470:	00f68023          	sb	a5,0(a3)
    80008474:	00813403          	ld	s0,8(sp)
    80008478:	01010113          	addi	sp,sp,16
    8000847c:	00008067          	ret
    80008480:	0000006f          	j	80008480 <uartputc_sync+0x40>

0000000080008484 <uartstart>:
    80008484:	ff010113          	addi	sp,sp,-16
    80008488:	00813423          	sd	s0,8(sp)
    8000848c:	01010413          	addi	s0,sp,16
    80008490:	00004617          	auipc	a2,0x4
    80008494:	4d060613          	addi	a2,a2,1232 # 8000c960 <uart_tx_r>
    80008498:	00004517          	auipc	a0,0x4
    8000849c:	4d050513          	addi	a0,a0,1232 # 8000c968 <uart_tx_w>
    800084a0:	00063783          	ld	a5,0(a2)
    800084a4:	00053703          	ld	a4,0(a0)
    800084a8:	04f70263          	beq	a4,a5,800084ec <uartstart+0x68>
    800084ac:	100005b7          	lui	a1,0x10000
    800084b0:	00006817          	auipc	a6,0x6
    800084b4:	9e080813          	addi	a6,a6,-1568 # 8000de90 <uart_tx_buf>
    800084b8:	01c0006f          	j	800084d4 <uartstart+0x50>
    800084bc:	0006c703          	lbu	a4,0(a3)
    800084c0:	00f63023          	sd	a5,0(a2)
    800084c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084c8:	00063783          	ld	a5,0(a2)
    800084cc:	00053703          	ld	a4,0(a0)
    800084d0:	00f70e63          	beq	a4,a5,800084ec <uartstart+0x68>
    800084d4:	01f7f713          	andi	a4,a5,31
    800084d8:	00e806b3          	add	a3,a6,a4
    800084dc:	0055c703          	lbu	a4,5(a1)
    800084e0:	00178793          	addi	a5,a5,1
    800084e4:	02077713          	andi	a4,a4,32
    800084e8:	fc071ae3          	bnez	a4,800084bc <uartstart+0x38>
    800084ec:	00813403          	ld	s0,8(sp)
    800084f0:	01010113          	addi	sp,sp,16
    800084f4:	00008067          	ret

00000000800084f8 <uartgetc>:
    800084f8:	ff010113          	addi	sp,sp,-16
    800084fc:	00813423          	sd	s0,8(sp)
    80008500:	01010413          	addi	s0,sp,16
    80008504:	10000737          	lui	a4,0x10000
    80008508:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000850c:	0017f793          	andi	a5,a5,1
    80008510:	00078c63          	beqz	a5,80008528 <uartgetc+0x30>
    80008514:	00074503          	lbu	a0,0(a4)
    80008518:	0ff57513          	andi	a0,a0,255
    8000851c:	00813403          	ld	s0,8(sp)
    80008520:	01010113          	addi	sp,sp,16
    80008524:	00008067          	ret
    80008528:	fff00513          	li	a0,-1
    8000852c:	ff1ff06f          	j	8000851c <uartgetc+0x24>

0000000080008530 <uartintr>:
    80008530:	100007b7          	lui	a5,0x10000
    80008534:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008538:	0017f793          	andi	a5,a5,1
    8000853c:	0a078463          	beqz	a5,800085e4 <uartintr+0xb4>
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	00113c23          	sd	ra,24(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	100004b7          	lui	s1,0x10000
    80008558:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000855c:	0ff57513          	andi	a0,a0,255
    80008560:	fffff097          	auipc	ra,0xfffff
    80008564:	534080e7          	jalr	1332(ra) # 80007a94 <consoleintr>
    80008568:	0054c783          	lbu	a5,5(s1)
    8000856c:	0017f793          	andi	a5,a5,1
    80008570:	fe0794e3          	bnez	a5,80008558 <uartintr+0x28>
    80008574:	00004617          	auipc	a2,0x4
    80008578:	3ec60613          	addi	a2,a2,1004 # 8000c960 <uart_tx_r>
    8000857c:	00004517          	auipc	a0,0x4
    80008580:	3ec50513          	addi	a0,a0,1004 # 8000c968 <uart_tx_w>
    80008584:	00063783          	ld	a5,0(a2)
    80008588:	00053703          	ld	a4,0(a0)
    8000858c:	04f70263          	beq	a4,a5,800085d0 <uartintr+0xa0>
    80008590:	100005b7          	lui	a1,0x10000
    80008594:	00006817          	auipc	a6,0x6
    80008598:	8fc80813          	addi	a6,a6,-1796 # 8000de90 <uart_tx_buf>
    8000859c:	01c0006f          	j	800085b8 <uartintr+0x88>
    800085a0:	0006c703          	lbu	a4,0(a3)
    800085a4:	00f63023          	sd	a5,0(a2)
    800085a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085ac:	00063783          	ld	a5,0(a2)
    800085b0:	00053703          	ld	a4,0(a0)
    800085b4:	00f70e63          	beq	a4,a5,800085d0 <uartintr+0xa0>
    800085b8:	01f7f713          	andi	a4,a5,31
    800085bc:	00e806b3          	add	a3,a6,a4
    800085c0:	0055c703          	lbu	a4,5(a1)
    800085c4:	00178793          	addi	a5,a5,1
    800085c8:	02077713          	andi	a4,a4,32
    800085cc:	fc071ae3          	bnez	a4,800085a0 <uartintr+0x70>
    800085d0:	01813083          	ld	ra,24(sp)
    800085d4:	01013403          	ld	s0,16(sp)
    800085d8:	00813483          	ld	s1,8(sp)
    800085dc:	02010113          	addi	sp,sp,32
    800085e0:	00008067          	ret
    800085e4:	00004617          	auipc	a2,0x4
    800085e8:	37c60613          	addi	a2,a2,892 # 8000c960 <uart_tx_r>
    800085ec:	00004517          	auipc	a0,0x4
    800085f0:	37c50513          	addi	a0,a0,892 # 8000c968 <uart_tx_w>
    800085f4:	00063783          	ld	a5,0(a2)
    800085f8:	00053703          	ld	a4,0(a0)
    800085fc:	04f70263          	beq	a4,a5,80008640 <uartintr+0x110>
    80008600:	100005b7          	lui	a1,0x10000
    80008604:	00006817          	auipc	a6,0x6
    80008608:	88c80813          	addi	a6,a6,-1908 # 8000de90 <uart_tx_buf>
    8000860c:	01c0006f          	j	80008628 <uartintr+0xf8>
    80008610:	0006c703          	lbu	a4,0(a3)
    80008614:	00f63023          	sd	a5,0(a2)
    80008618:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000861c:	00063783          	ld	a5,0(a2)
    80008620:	00053703          	ld	a4,0(a0)
    80008624:	02f70063          	beq	a4,a5,80008644 <uartintr+0x114>
    80008628:	01f7f713          	andi	a4,a5,31
    8000862c:	00e806b3          	add	a3,a6,a4
    80008630:	0055c703          	lbu	a4,5(a1)
    80008634:	00178793          	addi	a5,a5,1
    80008638:	02077713          	andi	a4,a4,32
    8000863c:	fc071ae3          	bnez	a4,80008610 <uartintr+0xe0>
    80008640:	00008067          	ret
    80008644:	00008067          	ret

0000000080008648 <kinit>:
    80008648:	fc010113          	addi	sp,sp,-64
    8000864c:	02913423          	sd	s1,40(sp)
    80008650:	fffff7b7          	lui	a5,0xfffff
    80008654:	00007497          	auipc	s1,0x7
    80008658:	85b48493          	addi	s1,s1,-1957 # 8000eeaf <end+0xfff>
    8000865c:	02813823          	sd	s0,48(sp)
    80008660:	01313c23          	sd	s3,24(sp)
    80008664:	00f4f4b3          	and	s1,s1,a5
    80008668:	02113c23          	sd	ra,56(sp)
    8000866c:	03213023          	sd	s2,32(sp)
    80008670:	01413823          	sd	s4,16(sp)
    80008674:	01513423          	sd	s5,8(sp)
    80008678:	04010413          	addi	s0,sp,64
    8000867c:	000017b7          	lui	a5,0x1
    80008680:	01100993          	li	s3,17
    80008684:	00f487b3          	add	a5,s1,a5
    80008688:	01b99993          	slli	s3,s3,0x1b
    8000868c:	06f9e063          	bltu	s3,a5,800086ec <kinit+0xa4>
    80008690:	00006a97          	auipc	s5,0x6
    80008694:	820a8a93          	addi	s5,s5,-2016 # 8000deb0 <end>
    80008698:	0754ec63          	bltu	s1,s5,80008710 <kinit+0xc8>
    8000869c:	0734fa63          	bgeu	s1,s3,80008710 <kinit+0xc8>
    800086a0:	00088a37          	lui	s4,0x88
    800086a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800086a8:	00004917          	auipc	s2,0x4
    800086ac:	2c890913          	addi	s2,s2,712 # 8000c970 <kmem>
    800086b0:	00ca1a13          	slli	s4,s4,0xc
    800086b4:	0140006f          	j	800086c8 <kinit+0x80>
    800086b8:	000017b7          	lui	a5,0x1
    800086bc:	00f484b3          	add	s1,s1,a5
    800086c0:	0554e863          	bltu	s1,s5,80008710 <kinit+0xc8>
    800086c4:	0534f663          	bgeu	s1,s3,80008710 <kinit+0xc8>
    800086c8:	00001637          	lui	a2,0x1
    800086cc:	00100593          	li	a1,1
    800086d0:	00048513          	mv	a0,s1
    800086d4:	00000097          	auipc	ra,0x0
    800086d8:	5e4080e7          	jalr	1508(ra) # 80008cb8 <__memset>
    800086dc:	00093783          	ld	a5,0(s2)
    800086e0:	00f4b023          	sd	a5,0(s1)
    800086e4:	00993023          	sd	s1,0(s2)
    800086e8:	fd4498e3          	bne	s1,s4,800086b8 <kinit+0x70>
    800086ec:	03813083          	ld	ra,56(sp)
    800086f0:	03013403          	ld	s0,48(sp)
    800086f4:	02813483          	ld	s1,40(sp)
    800086f8:	02013903          	ld	s2,32(sp)
    800086fc:	01813983          	ld	s3,24(sp)
    80008700:	01013a03          	ld	s4,16(sp)
    80008704:	00813a83          	ld	s5,8(sp)
    80008708:	04010113          	addi	sp,sp,64
    8000870c:	00008067          	ret
    80008710:	00002517          	auipc	a0,0x2
    80008714:	04850513          	addi	a0,a0,72 # 8000a758 <digits+0x18>
    80008718:	fffff097          	auipc	ra,0xfffff
    8000871c:	4b4080e7          	jalr	1204(ra) # 80007bcc <panic>

0000000080008720 <freerange>:
    80008720:	fc010113          	addi	sp,sp,-64
    80008724:	000017b7          	lui	a5,0x1
    80008728:	02913423          	sd	s1,40(sp)
    8000872c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008730:	009504b3          	add	s1,a0,s1
    80008734:	fffff537          	lui	a0,0xfffff
    80008738:	02813823          	sd	s0,48(sp)
    8000873c:	02113c23          	sd	ra,56(sp)
    80008740:	03213023          	sd	s2,32(sp)
    80008744:	01313c23          	sd	s3,24(sp)
    80008748:	01413823          	sd	s4,16(sp)
    8000874c:	01513423          	sd	s5,8(sp)
    80008750:	01613023          	sd	s6,0(sp)
    80008754:	04010413          	addi	s0,sp,64
    80008758:	00a4f4b3          	and	s1,s1,a0
    8000875c:	00f487b3          	add	a5,s1,a5
    80008760:	06f5e463          	bltu	a1,a5,800087c8 <freerange+0xa8>
    80008764:	00005a97          	auipc	s5,0x5
    80008768:	74ca8a93          	addi	s5,s5,1868 # 8000deb0 <end>
    8000876c:	0954e263          	bltu	s1,s5,800087f0 <freerange+0xd0>
    80008770:	01100993          	li	s3,17
    80008774:	01b99993          	slli	s3,s3,0x1b
    80008778:	0734fc63          	bgeu	s1,s3,800087f0 <freerange+0xd0>
    8000877c:	00058a13          	mv	s4,a1
    80008780:	00004917          	auipc	s2,0x4
    80008784:	1f090913          	addi	s2,s2,496 # 8000c970 <kmem>
    80008788:	00002b37          	lui	s6,0x2
    8000878c:	0140006f          	j	800087a0 <freerange+0x80>
    80008790:	000017b7          	lui	a5,0x1
    80008794:	00f484b3          	add	s1,s1,a5
    80008798:	0554ec63          	bltu	s1,s5,800087f0 <freerange+0xd0>
    8000879c:	0534fa63          	bgeu	s1,s3,800087f0 <freerange+0xd0>
    800087a0:	00001637          	lui	a2,0x1
    800087a4:	00100593          	li	a1,1
    800087a8:	00048513          	mv	a0,s1
    800087ac:	00000097          	auipc	ra,0x0
    800087b0:	50c080e7          	jalr	1292(ra) # 80008cb8 <__memset>
    800087b4:	00093703          	ld	a4,0(s2)
    800087b8:	016487b3          	add	a5,s1,s6
    800087bc:	00e4b023          	sd	a4,0(s1)
    800087c0:	00993023          	sd	s1,0(s2)
    800087c4:	fcfa76e3          	bgeu	s4,a5,80008790 <freerange+0x70>
    800087c8:	03813083          	ld	ra,56(sp)
    800087cc:	03013403          	ld	s0,48(sp)
    800087d0:	02813483          	ld	s1,40(sp)
    800087d4:	02013903          	ld	s2,32(sp)
    800087d8:	01813983          	ld	s3,24(sp)
    800087dc:	01013a03          	ld	s4,16(sp)
    800087e0:	00813a83          	ld	s5,8(sp)
    800087e4:	00013b03          	ld	s6,0(sp)
    800087e8:	04010113          	addi	sp,sp,64
    800087ec:	00008067          	ret
    800087f0:	00002517          	auipc	a0,0x2
    800087f4:	f6850513          	addi	a0,a0,-152 # 8000a758 <digits+0x18>
    800087f8:	fffff097          	auipc	ra,0xfffff
    800087fc:	3d4080e7          	jalr	980(ra) # 80007bcc <panic>

0000000080008800 <kfree>:
    80008800:	fe010113          	addi	sp,sp,-32
    80008804:	00813823          	sd	s0,16(sp)
    80008808:	00113c23          	sd	ra,24(sp)
    8000880c:	00913423          	sd	s1,8(sp)
    80008810:	02010413          	addi	s0,sp,32
    80008814:	03451793          	slli	a5,a0,0x34
    80008818:	04079c63          	bnez	a5,80008870 <kfree+0x70>
    8000881c:	00005797          	auipc	a5,0x5
    80008820:	69478793          	addi	a5,a5,1684 # 8000deb0 <end>
    80008824:	00050493          	mv	s1,a0
    80008828:	04f56463          	bltu	a0,a5,80008870 <kfree+0x70>
    8000882c:	01100793          	li	a5,17
    80008830:	01b79793          	slli	a5,a5,0x1b
    80008834:	02f57e63          	bgeu	a0,a5,80008870 <kfree+0x70>
    80008838:	00001637          	lui	a2,0x1
    8000883c:	00100593          	li	a1,1
    80008840:	00000097          	auipc	ra,0x0
    80008844:	478080e7          	jalr	1144(ra) # 80008cb8 <__memset>
    80008848:	00004797          	auipc	a5,0x4
    8000884c:	12878793          	addi	a5,a5,296 # 8000c970 <kmem>
    80008850:	0007b703          	ld	a4,0(a5)
    80008854:	01813083          	ld	ra,24(sp)
    80008858:	01013403          	ld	s0,16(sp)
    8000885c:	00e4b023          	sd	a4,0(s1)
    80008860:	0097b023          	sd	s1,0(a5)
    80008864:	00813483          	ld	s1,8(sp)
    80008868:	02010113          	addi	sp,sp,32
    8000886c:	00008067          	ret
    80008870:	00002517          	auipc	a0,0x2
    80008874:	ee850513          	addi	a0,a0,-280 # 8000a758 <digits+0x18>
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	354080e7          	jalr	852(ra) # 80007bcc <panic>

0000000080008880 <kalloc>:
    80008880:	fe010113          	addi	sp,sp,-32
    80008884:	00813823          	sd	s0,16(sp)
    80008888:	00913423          	sd	s1,8(sp)
    8000888c:	00113c23          	sd	ra,24(sp)
    80008890:	02010413          	addi	s0,sp,32
    80008894:	00004797          	auipc	a5,0x4
    80008898:	0dc78793          	addi	a5,a5,220 # 8000c970 <kmem>
    8000889c:	0007b483          	ld	s1,0(a5)
    800088a0:	02048063          	beqz	s1,800088c0 <kalloc+0x40>
    800088a4:	0004b703          	ld	a4,0(s1)
    800088a8:	00001637          	lui	a2,0x1
    800088ac:	00500593          	li	a1,5
    800088b0:	00048513          	mv	a0,s1
    800088b4:	00e7b023          	sd	a4,0(a5)
    800088b8:	00000097          	auipc	ra,0x0
    800088bc:	400080e7          	jalr	1024(ra) # 80008cb8 <__memset>
    800088c0:	01813083          	ld	ra,24(sp)
    800088c4:	01013403          	ld	s0,16(sp)
    800088c8:	00048513          	mv	a0,s1
    800088cc:	00813483          	ld	s1,8(sp)
    800088d0:	02010113          	addi	sp,sp,32
    800088d4:	00008067          	ret

00000000800088d8 <initlock>:
    800088d8:	ff010113          	addi	sp,sp,-16
    800088dc:	00813423          	sd	s0,8(sp)
    800088e0:	01010413          	addi	s0,sp,16
    800088e4:	00813403          	ld	s0,8(sp)
    800088e8:	00b53423          	sd	a1,8(a0)
    800088ec:	00052023          	sw	zero,0(a0)
    800088f0:	00053823          	sd	zero,16(a0)
    800088f4:	01010113          	addi	sp,sp,16
    800088f8:	00008067          	ret

00000000800088fc <acquire>:
    800088fc:	fe010113          	addi	sp,sp,-32
    80008900:	00813823          	sd	s0,16(sp)
    80008904:	00913423          	sd	s1,8(sp)
    80008908:	00113c23          	sd	ra,24(sp)
    8000890c:	01213023          	sd	s2,0(sp)
    80008910:	02010413          	addi	s0,sp,32
    80008914:	00050493          	mv	s1,a0
    80008918:	10002973          	csrr	s2,sstatus
    8000891c:	100027f3          	csrr	a5,sstatus
    80008920:	ffd7f793          	andi	a5,a5,-3
    80008924:	10079073          	csrw	sstatus,a5
    80008928:	fffff097          	auipc	ra,0xfffff
    8000892c:	8e8080e7          	jalr	-1816(ra) # 80007210 <mycpu>
    80008930:	07852783          	lw	a5,120(a0)
    80008934:	06078e63          	beqz	a5,800089b0 <acquire+0xb4>
    80008938:	fffff097          	auipc	ra,0xfffff
    8000893c:	8d8080e7          	jalr	-1832(ra) # 80007210 <mycpu>
    80008940:	07852783          	lw	a5,120(a0)
    80008944:	0004a703          	lw	a4,0(s1)
    80008948:	0017879b          	addiw	a5,a5,1
    8000894c:	06f52c23          	sw	a5,120(a0)
    80008950:	04071063          	bnez	a4,80008990 <acquire+0x94>
    80008954:	00100713          	li	a4,1
    80008958:	00070793          	mv	a5,a4
    8000895c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008960:	0007879b          	sext.w	a5,a5
    80008964:	fe079ae3          	bnez	a5,80008958 <acquire+0x5c>
    80008968:	0ff0000f          	fence
    8000896c:	fffff097          	auipc	ra,0xfffff
    80008970:	8a4080e7          	jalr	-1884(ra) # 80007210 <mycpu>
    80008974:	01813083          	ld	ra,24(sp)
    80008978:	01013403          	ld	s0,16(sp)
    8000897c:	00a4b823          	sd	a0,16(s1)
    80008980:	00013903          	ld	s2,0(sp)
    80008984:	00813483          	ld	s1,8(sp)
    80008988:	02010113          	addi	sp,sp,32
    8000898c:	00008067          	ret
    80008990:	0104b903          	ld	s2,16(s1)
    80008994:	fffff097          	auipc	ra,0xfffff
    80008998:	87c080e7          	jalr	-1924(ra) # 80007210 <mycpu>
    8000899c:	faa91ce3          	bne	s2,a0,80008954 <acquire+0x58>
    800089a0:	00002517          	auipc	a0,0x2
    800089a4:	dc050513          	addi	a0,a0,-576 # 8000a760 <digits+0x20>
    800089a8:	fffff097          	auipc	ra,0xfffff
    800089ac:	224080e7          	jalr	548(ra) # 80007bcc <panic>
    800089b0:	00195913          	srli	s2,s2,0x1
    800089b4:	fffff097          	auipc	ra,0xfffff
    800089b8:	85c080e7          	jalr	-1956(ra) # 80007210 <mycpu>
    800089bc:	00197913          	andi	s2,s2,1
    800089c0:	07252e23          	sw	s2,124(a0)
    800089c4:	f75ff06f          	j	80008938 <acquire+0x3c>

00000000800089c8 <release>:
    800089c8:	fe010113          	addi	sp,sp,-32
    800089cc:	00813823          	sd	s0,16(sp)
    800089d0:	00113c23          	sd	ra,24(sp)
    800089d4:	00913423          	sd	s1,8(sp)
    800089d8:	01213023          	sd	s2,0(sp)
    800089dc:	02010413          	addi	s0,sp,32
    800089e0:	00052783          	lw	a5,0(a0)
    800089e4:	00079a63          	bnez	a5,800089f8 <release+0x30>
    800089e8:	00002517          	auipc	a0,0x2
    800089ec:	d8050513          	addi	a0,a0,-640 # 8000a768 <digits+0x28>
    800089f0:	fffff097          	auipc	ra,0xfffff
    800089f4:	1dc080e7          	jalr	476(ra) # 80007bcc <panic>
    800089f8:	01053903          	ld	s2,16(a0)
    800089fc:	00050493          	mv	s1,a0
    80008a00:	fffff097          	auipc	ra,0xfffff
    80008a04:	810080e7          	jalr	-2032(ra) # 80007210 <mycpu>
    80008a08:	fea910e3          	bne	s2,a0,800089e8 <release+0x20>
    80008a0c:	0004b823          	sd	zero,16(s1)
    80008a10:	0ff0000f          	fence
    80008a14:	0f50000f          	fence	iorw,ow
    80008a18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008a1c:	ffffe097          	auipc	ra,0xffffe
    80008a20:	7f4080e7          	jalr	2036(ra) # 80007210 <mycpu>
    80008a24:	100027f3          	csrr	a5,sstatus
    80008a28:	0027f793          	andi	a5,a5,2
    80008a2c:	04079a63          	bnez	a5,80008a80 <release+0xb8>
    80008a30:	07852783          	lw	a5,120(a0)
    80008a34:	02f05e63          	blez	a5,80008a70 <release+0xa8>
    80008a38:	fff7871b          	addiw	a4,a5,-1
    80008a3c:	06e52c23          	sw	a4,120(a0)
    80008a40:	00071c63          	bnez	a4,80008a58 <release+0x90>
    80008a44:	07c52783          	lw	a5,124(a0)
    80008a48:	00078863          	beqz	a5,80008a58 <release+0x90>
    80008a4c:	100027f3          	csrr	a5,sstatus
    80008a50:	0027e793          	ori	a5,a5,2
    80008a54:	10079073          	csrw	sstatus,a5
    80008a58:	01813083          	ld	ra,24(sp)
    80008a5c:	01013403          	ld	s0,16(sp)
    80008a60:	00813483          	ld	s1,8(sp)
    80008a64:	00013903          	ld	s2,0(sp)
    80008a68:	02010113          	addi	sp,sp,32
    80008a6c:	00008067          	ret
    80008a70:	00002517          	auipc	a0,0x2
    80008a74:	d1850513          	addi	a0,a0,-744 # 8000a788 <digits+0x48>
    80008a78:	fffff097          	auipc	ra,0xfffff
    80008a7c:	154080e7          	jalr	340(ra) # 80007bcc <panic>
    80008a80:	00002517          	auipc	a0,0x2
    80008a84:	cf050513          	addi	a0,a0,-784 # 8000a770 <digits+0x30>
    80008a88:	fffff097          	auipc	ra,0xfffff
    80008a8c:	144080e7          	jalr	324(ra) # 80007bcc <panic>

0000000080008a90 <holding>:
    80008a90:	00052783          	lw	a5,0(a0)
    80008a94:	00079663          	bnez	a5,80008aa0 <holding+0x10>
    80008a98:	00000513          	li	a0,0
    80008a9c:	00008067          	ret
    80008aa0:	fe010113          	addi	sp,sp,-32
    80008aa4:	00813823          	sd	s0,16(sp)
    80008aa8:	00913423          	sd	s1,8(sp)
    80008aac:	00113c23          	sd	ra,24(sp)
    80008ab0:	02010413          	addi	s0,sp,32
    80008ab4:	01053483          	ld	s1,16(a0)
    80008ab8:	ffffe097          	auipc	ra,0xffffe
    80008abc:	758080e7          	jalr	1880(ra) # 80007210 <mycpu>
    80008ac0:	01813083          	ld	ra,24(sp)
    80008ac4:	01013403          	ld	s0,16(sp)
    80008ac8:	40a48533          	sub	a0,s1,a0
    80008acc:	00153513          	seqz	a0,a0
    80008ad0:	00813483          	ld	s1,8(sp)
    80008ad4:	02010113          	addi	sp,sp,32
    80008ad8:	00008067          	ret

0000000080008adc <push_off>:
    80008adc:	fe010113          	addi	sp,sp,-32
    80008ae0:	00813823          	sd	s0,16(sp)
    80008ae4:	00113c23          	sd	ra,24(sp)
    80008ae8:	00913423          	sd	s1,8(sp)
    80008aec:	02010413          	addi	s0,sp,32
    80008af0:	100024f3          	csrr	s1,sstatus
    80008af4:	100027f3          	csrr	a5,sstatus
    80008af8:	ffd7f793          	andi	a5,a5,-3
    80008afc:	10079073          	csrw	sstatus,a5
    80008b00:	ffffe097          	auipc	ra,0xffffe
    80008b04:	710080e7          	jalr	1808(ra) # 80007210 <mycpu>
    80008b08:	07852783          	lw	a5,120(a0)
    80008b0c:	02078663          	beqz	a5,80008b38 <push_off+0x5c>
    80008b10:	ffffe097          	auipc	ra,0xffffe
    80008b14:	700080e7          	jalr	1792(ra) # 80007210 <mycpu>
    80008b18:	07852783          	lw	a5,120(a0)
    80008b1c:	01813083          	ld	ra,24(sp)
    80008b20:	01013403          	ld	s0,16(sp)
    80008b24:	0017879b          	addiw	a5,a5,1
    80008b28:	06f52c23          	sw	a5,120(a0)
    80008b2c:	00813483          	ld	s1,8(sp)
    80008b30:	02010113          	addi	sp,sp,32
    80008b34:	00008067          	ret
    80008b38:	0014d493          	srli	s1,s1,0x1
    80008b3c:	ffffe097          	auipc	ra,0xffffe
    80008b40:	6d4080e7          	jalr	1748(ra) # 80007210 <mycpu>
    80008b44:	0014f493          	andi	s1,s1,1
    80008b48:	06952e23          	sw	s1,124(a0)
    80008b4c:	fc5ff06f          	j	80008b10 <push_off+0x34>

0000000080008b50 <pop_off>:
    80008b50:	ff010113          	addi	sp,sp,-16
    80008b54:	00813023          	sd	s0,0(sp)
    80008b58:	00113423          	sd	ra,8(sp)
    80008b5c:	01010413          	addi	s0,sp,16
    80008b60:	ffffe097          	auipc	ra,0xffffe
    80008b64:	6b0080e7          	jalr	1712(ra) # 80007210 <mycpu>
    80008b68:	100027f3          	csrr	a5,sstatus
    80008b6c:	0027f793          	andi	a5,a5,2
    80008b70:	04079663          	bnez	a5,80008bbc <pop_off+0x6c>
    80008b74:	07852783          	lw	a5,120(a0)
    80008b78:	02f05a63          	blez	a5,80008bac <pop_off+0x5c>
    80008b7c:	fff7871b          	addiw	a4,a5,-1
    80008b80:	06e52c23          	sw	a4,120(a0)
    80008b84:	00071c63          	bnez	a4,80008b9c <pop_off+0x4c>
    80008b88:	07c52783          	lw	a5,124(a0)
    80008b8c:	00078863          	beqz	a5,80008b9c <pop_off+0x4c>
    80008b90:	100027f3          	csrr	a5,sstatus
    80008b94:	0027e793          	ori	a5,a5,2
    80008b98:	10079073          	csrw	sstatus,a5
    80008b9c:	00813083          	ld	ra,8(sp)
    80008ba0:	00013403          	ld	s0,0(sp)
    80008ba4:	01010113          	addi	sp,sp,16
    80008ba8:	00008067          	ret
    80008bac:	00002517          	auipc	a0,0x2
    80008bb0:	bdc50513          	addi	a0,a0,-1060 # 8000a788 <digits+0x48>
    80008bb4:	fffff097          	auipc	ra,0xfffff
    80008bb8:	018080e7          	jalr	24(ra) # 80007bcc <panic>
    80008bbc:	00002517          	auipc	a0,0x2
    80008bc0:	bb450513          	addi	a0,a0,-1100 # 8000a770 <digits+0x30>
    80008bc4:	fffff097          	auipc	ra,0xfffff
    80008bc8:	008080e7          	jalr	8(ra) # 80007bcc <panic>

0000000080008bcc <push_on>:
    80008bcc:	fe010113          	addi	sp,sp,-32
    80008bd0:	00813823          	sd	s0,16(sp)
    80008bd4:	00113c23          	sd	ra,24(sp)
    80008bd8:	00913423          	sd	s1,8(sp)
    80008bdc:	02010413          	addi	s0,sp,32
    80008be0:	100024f3          	csrr	s1,sstatus
    80008be4:	100027f3          	csrr	a5,sstatus
    80008be8:	0027e793          	ori	a5,a5,2
    80008bec:	10079073          	csrw	sstatus,a5
    80008bf0:	ffffe097          	auipc	ra,0xffffe
    80008bf4:	620080e7          	jalr	1568(ra) # 80007210 <mycpu>
    80008bf8:	07852783          	lw	a5,120(a0)
    80008bfc:	02078663          	beqz	a5,80008c28 <push_on+0x5c>
    80008c00:	ffffe097          	auipc	ra,0xffffe
    80008c04:	610080e7          	jalr	1552(ra) # 80007210 <mycpu>
    80008c08:	07852783          	lw	a5,120(a0)
    80008c0c:	01813083          	ld	ra,24(sp)
    80008c10:	01013403          	ld	s0,16(sp)
    80008c14:	0017879b          	addiw	a5,a5,1
    80008c18:	06f52c23          	sw	a5,120(a0)
    80008c1c:	00813483          	ld	s1,8(sp)
    80008c20:	02010113          	addi	sp,sp,32
    80008c24:	00008067          	ret
    80008c28:	0014d493          	srli	s1,s1,0x1
    80008c2c:	ffffe097          	auipc	ra,0xffffe
    80008c30:	5e4080e7          	jalr	1508(ra) # 80007210 <mycpu>
    80008c34:	0014f493          	andi	s1,s1,1
    80008c38:	06952e23          	sw	s1,124(a0)
    80008c3c:	fc5ff06f          	j	80008c00 <push_on+0x34>

0000000080008c40 <pop_on>:
    80008c40:	ff010113          	addi	sp,sp,-16
    80008c44:	00813023          	sd	s0,0(sp)
    80008c48:	00113423          	sd	ra,8(sp)
    80008c4c:	01010413          	addi	s0,sp,16
    80008c50:	ffffe097          	auipc	ra,0xffffe
    80008c54:	5c0080e7          	jalr	1472(ra) # 80007210 <mycpu>
    80008c58:	100027f3          	csrr	a5,sstatus
    80008c5c:	0027f793          	andi	a5,a5,2
    80008c60:	04078463          	beqz	a5,80008ca8 <pop_on+0x68>
    80008c64:	07852783          	lw	a5,120(a0)
    80008c68:	02f05863          	blez	a5,80008c98 <pop_on+0x58>
    80008c6c:	fff7879b          	addiw	a5,a5,-1
    80008c70:	06f52c23          	sw	a5,120(a0)
    80008c74:	07853783          	ld	a5,120(a0)
    80008c78:	00079863          	bnez	a5,80008c88 <pop_on+0x48>
    80008c7c:	100027f3          	csrr	a5,sstatus
    80008c80:	ffd7f793          	andi	a5,a5,-3
    80008c84:	10079073          	csrw	sstatus,a5
    80008c88:	00813083          	ld	ra,8(sp)
    80008c8c:	00013403          	ld	s0,0(sp)
    80008c90:	01010113          	addi	sp,sp,16
    80008c94:	00008067          	ret
    80008c98:	00002517          	auipc	a0,0x2
    80008c9c:	b1850513          	addi	a0,a0,-1256 # 8000a7b0 <digits+0x70>
    80008ca0:	fffff097          	auipc	ra,0xfffff
    80008ca4:	f2c080e7          	jalr	-212(ra) # 80007bcc <panic>
    80008ca8:	00002517          	auipc	a0,0x2
    80008cac:	ae850513          	addi	a0,a0,-1304 # 8000a790 <digits+0x50>
    80008cb0:	fffff097          	auipc	ra,0xfffff
    80008cb4:	f1c080e7          	jalr	-228(ra) # 80007bcc <panic>

0000000080008cb8 <__memset>:
    80008cb8:	ff010113          	addi	sp,sp,-16
    80008cbc:	00813423          	sd	s0,8(sp)
    80008cc0:	01010413          	addi	s0,sp,16
    80008cc4:	1a060e63          	beqz	a2,80008e80 <__memset+0x1c8>
    80008cc8:	40a007b3          	neg	a5,a0
    80008ccc:	0077f793          	andi	a5,a5,7
    80008cd0:	00778693          	addi	a3,a5,7
    80008cd4:	00b00813          	li	a6,11
    80008cd8:	0ff5f593          	andi	a1,a1,255
    80008cdc:	fff6071b          	addiw	a4,a2,-1
    80008ce0:	1b06e663          	bltu	a3,a6,80008e8c <__memset+0x1d4>
    80008ce4:	1cd76463          	bltu	a4,a3,80008eac <__memset+0x1f4>
    80008ce8:	1a078e63          	beqz	a5,80008ea4 <__memset+0x1ec>
    80008cec:	00b50023          	sb	a1,0(a0)
    80008cf0:	00100713          	li	a4,1
    80008cf4:	1ae78463          	beq	a5,a4,80008e9c <__memset+0x1e4>
    80008cf8:	00b500a3          	sb	a1,1(a0)
    80008cfc:	00200713          	li	a4,2
    80008d00:	1ae78a63          	beq	a5,a4,80008eb4 <__memset+0x1fc>
    80008d04:	00b50123          	sb	a1,2(a0)
    80008d08:	00300713          	li	a4,3
    80008d0c:	18e78463          	beq	a5,a4,80008e94 <__memset+0x1dc>
    80008d10:	00b501a3          	sb	a1,3(a0)
    80008d14:	00400713          	li	a4,4
    80008d18:	1ae78263          	beq	a5,a4,80008ebc <__memset+0x204>
    80008d1c:	00b50223          	sb	a1,4(a0)
    80008d20:	00500713          	li	a4,5
    80008d24:	1ae78063          	beq	a5,a4,80008ec4 <__memset+0x20c>
    80008d28:	00b502a3          	sb	a1,5(a0)
    80008d2c:	00700713          	li	a4,7
    80008d30:	18e79e63          	bne	a5,a4,80008ecc <__memset+0x214>
    80008d34:	00b50323          	sb	a1,6(a0)
    80008d38:	00700e93          	li	t4,7
    80008d3c:	00859713          	slli	a4,a1,0x8
    80008d40:	00e5e733          	or	a4,a1,a4
    80008d44:	01059e13          	slli	t3,a1,0x10
    80008d48:	01c76e33          	or	t3,a4,t3
    80008d4c:	01859313          	slli	t1,a1,0x18
    80008d50:	006e6333          	or	t1,t3,t1
    80008d54:	02059893          	slli	a7,a1,0x20
    80008d58:	40f60e3b          	subw	t3,a2,a5
    80008d5c:	011368b3          	or	a7,t1,a7
    80008d60:	02859813          	slli	a6,a1,0x28
    80008d64:	0108e833          	or	a6,a7,a6
    80008d68:	03059693          	slli	a3,a1,0x30
    80008d6c:	003e589b          	srliw	a7,t3,0x3
    80008d70:	00d866b3          	or	a3,a6,a3
    80008d74:	03859713          	slli	a4,a1,0x38
    80008d78:	00389813          	slli	a6,a7,0x3
    80008d7c:	00f507b3          	add	a5,a0,a5
    80008d80:	00e6e733          	or	a4,a3,a4
    80008d84:	000e089b          	sext.w	a7,t3
    80008d88:	00f806b3          	add	a3,a6,a5
    80008d8c:	00e7b023          	sd	a4,0(a5)
    80008d90:	00878793          	addi	a5,a5,8
    80008d94:	fed79ce3          	bne	a5,a3,80008d8c <__memset+0xd4>
    80008d98:	ff8e7793          	andi	a5,t3,-8
    80008d9c:	0007871b          	sext.w	a4,a5
    80008da0:	01d787bb          	addw	a5,a5,t4
    80008da4:	0ce88e63          	beq	a7,a4,80008e80 <__memset+0x1c8>
    80008da8:	00f50733          	add	a4,a0,a5
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	0017871b          	addiw	a4,a5,1
    80008db4:	0cc77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	0027871b          	addiw	a4,a5,2
    80008dc4:	0ac77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008dc8:	00e50733          	add	a4,a0,a4
    80008dcc:	00b70023          	sb	a1,0(a4)
    80008dd0:	0037871b          	addiw	a4,a5,3
    80008dd4:	0ac77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008dd8:	00e50733          	add	a4,a0,a4
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	0047871b          	addiw	a4,a5,4
    80008de4:	08c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	0057871b          	addiw	a4,a5,5
    80008df4:	08c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00b70023          	sb	a1,0(a4)
    80008e00:	0067871b          	addiw	a4,a5,6
    80008e04:	06c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e08:	00e50733          	add	a4,a0,a4
    80008e0c:	00b70023          	sb	a1,0(a4)
    80008e10:	0077871b          	addiw	a4,a5,7
    80008e14:	06c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e18:	00e50733          	add	a4,a0,a4
    80008e1c:	00b70023          	sb	a1,0(a4)
    80008e20:	0087871b          	addiw	a4,a5,8
    80008e24:	04c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e28:	00e50733          	add	a4,a0,a4
    80008e2c:	00b70023          	sb	a1,0(a4)
    80008e30:	0097871b          	addiw	a4,a5,9
    80008e34:	04c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e38:	00e50733          	add	a4,a0,a4
    80008e3c:	00b70023          	sb	a1,0(a4)
    80008e40:	00a7871b          	addiw	a4,a5,10
    80008e44:	02c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e48:	00e50733          	add	a4,a0,a4
    80008e4c:	00b70023          	sb	a1,0(a4)
    80008e50:	00b7871b          	addiw	a4,a5,11
    80008e54:	02c77663          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e58:	00e50733          	add	a4,a0,a4
    80008e5c:	00b70023          	sb	a1,0(a4)
    80008e60:	00c7871b          	addiw	a4,a5,12
    80008e64:	00c77e63          	bgeu	a4,a2,80008e80 <__memset+0x1c8>
    80008e68:	00e50733          	add	a4,a0,a4
    80008e6c:	00b70023          	sb	a1,0(a4)
    80008e70:	00d7879b          	addiw	a5,a5,13
    80008e74:	00c7f663          	bgeu	a5,a2,80008e80 <__memset+0x1c8>
    80008e78:	00f507b3          	add	a5,a0,a5
    80008e7c:	00b78023          	sb	a1,0(a5)
    80008e80:	00813403          	ld	s0,8(sp)
    80008e84:	01010113          	addi	sp,sp,16
    80008e88:	00008067          	ret
    80008e8c:	00b00693          	li	a3,11
    80008e90:	e55ff06f          	j	80008ce4 <__memset+0x2c>
    80008e94:	00300e93          	li	t4,3
    80008e98:	ea5ff06f          	j	80008d3c <__memset+0x84>
    80008e9c:	00100e93          	li	t4,1
    80008ea0:	e9dff06f          	j	80008d3c <__memset+0x84>
    80008ea4:	00000e93          	li	t4,0
    80008ea8:	e95ff06f          	j	80008d3c <__memset+0x84>
    80008eac:	00000793          	li	a5,0
    80008eb0:	ef9ff06f          	j	80008da8 <__memset+0xf0>
    80008eb4:	00200e93          	li	t4,2
    80008eb8:	e85ff06f          	j	80008d3c <__memset+0x84>
    80008ebc:	00400e93          	li	t4,4
    80008ec0:	e7dff06f          	j	80008d3c <__memset+0x84>
    80008ec4:	00500e93          	li	t4,5
    80008ec8:	e75ff06f          	j	80008d3c <__memset+0x84>
    80008ecc:	00600e93          	li	t4,6
    80008ed0:	e6dff06f          	j	80008d3c <__memset+0x84>

0000000080008ed4 <__memmove>:
    80008ed4:	ff010113          	addi	sp,sp,-16
    80008ed8:	00813423          	sd	s0,8(sp)
    80008edc:	01010413          	addi	s0,sp,16
    80008ee0:	0e060863          	beqz	a2,80008fd0 <__memmove+0xfc>
    80008ee4:	fff6069b          	addiw	a3,a2,-1
    80008ee8:	0006881b          	sext.w	a6,a3
    80008eec:	0ea5e863          	bltu	a1,a0,80008fdc <__memmove+0x108>
    80008ef0:	00758713          	addi	a4,a1,7
    80008ef4:	00a5e7b3          	or	a5,a1,a0
    80008ef8:	40a70733          	sub	a4,a4,a0
    80008efc:	0077f793          	andi	a5,a5,7
    80008f00:	00f73713          	sltiu	a4,a4,15
    80008f04:	00174713          	xori	a4,a4,1
    80008f08:	0017b793          	seqz	a5,a5
    80008f0c:	00e7f7b3          	and	a5,a5,a4
    80008f10:	10078863          	beqz	a5,80009020 <__memmove+0x14c>
    80008f14:	00900793          	li	a5,9
    80008f18:	1107f463          	bgeu	a5,a6,80009020 <__memmove+0x14c>
    80008f1c:	0036581b          	srliw	a6,a2,0x3
    80008f20:	fff8081b          	addiw	a6,a6,-1
    80008f24:	02081813          	slli	a6,a6,0x20
    80008f28:	01d85893          	srli	a7,a6,0x1d
    80008f2c:	00858813          	addi	a6,a1,8
    80008f30:	00058793          	mv	a5,a1
    80008f34:	00050713          	mv	a4,a0
    80008f38:	01088833          	add	a6,a7,a6
    80008f3c:	0007b883          	ld	a7,0(a5)
    80008f40:	00878793          	addi	a5,a5,8
    80008f44:	00870713          	addi	a4,a4,8
    80008f48:	ff173c23          	sd	a7,-8(a4)
    80008f4c:	ff0798e3          	bne	a5,a6,80008f3c <__memmove+0x68>
    80008f50:	ff867713          	andi	a4,a2,-8
    80008f54:	02071793          	slli	a5,a4,0x20
    80008f58:	0207d793          	srli	a5,a5,0x20
    80008f5c:	00f585b3          	add	a1,a1,a5
    80008f60:	40e686bb          	subw	a3,a3,a4
    80008f64:	00f507b3          	add	a5,a0,a5
    80008f68:	06e60463          	beq	a2,a4,80008fd0 <__memmove+0xfc>
    80008f6c:	0005c703          	lbu	a4,0(a1)
    80008f70:	00e78023          	sb	a4,0(a5)
    80008f74:	04068e63          	beqz	a3,80008fd0 <__memmove+0xfc>
    80008f78:	0015c603          	lbu	a2,1(a1)
    80008f7c:	00100713          	li	a4,1
    80008f80:	00c780a3          	sb	a2,1(a5)
    80008f84:	04e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008f88:	0025c603          	lbu	a2,2(a1)
    80008f8c:	00200713          	li	a4,2
    80008f90:	00c78123          	sb	a2,2(a5)
    80008f94:	02e68e63          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008f98:	0035c603          	lbu	a2,3(a1)
    80008f9c:	00300713          	li	a4,3
    80008fa0:	00c781a3          	sb	a2,3(a5)
    80008fa4:	02e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fa8:	0045c603          	lbu	a2,4(a1)
    80008fac:	00400713          	li	a4,4
    80008fb0:	00c78223          	sb	a2,4(a5)
    80008fb4:	00e68e63          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fb8:	0055c603          	lbu	a2,5(a1)
    80008fbc:	00500713          	li	a4,5
    80008fc0:	00c782a3          	sb	a2,5(a5)
    80008fc4:	00e68663          	beq	a3,a4,80008fd0 <__memmove+0xfc>
    80008fc8:	0065c703          	lbu	a4,6(a1)
    80008fcc:	00e78323          	sb	a4,6(a5)
    80008fd0:	00813403          	ld	s0,8(sp)
    80008fd4:	01010113          	addi	sp,sp,16
    80008fd8:	00008067          	ret
    80008fdc:	02061713          	slli	a4,a2,0x20
    80008fe0:	02075713          	srli	a4,a4,0x20
    80008fe4:	00e587b3          	add	a5,a1,a4
    80008fe8:	f0f574e3          	bgeu	a0,a5,80008ef0 <__memmove+0x1c>
    80008fec:	02069613          	slli	a2,a3,0x20
    80008ff0:	02065613          	srli	a2,a2,0x20
    80008ff4:	fff64613          	not	a2,a2
    80008ff8:	00e50733          	add	a4,a0,a4
    80008ffc:	00c78633          	add	a2,a5,a2
    80009000:	fff7c683          	lbu	a3,-1(a5)
    80009004:	fff78793          	addi	a5,a5,-1
    80009008:	fff70713          	addi	a4,a4,-1
    8000900c:	00d70023          	sb	a3,0(a4)
    80009010:	fec798e3          	bne	a5,a2,80009000 <__memmove+0x12c>
    80009014:	00813403          	ld	s0,8(sp)
    80009018:	01010113          	addi	sp,sp,16
    8000901c:	00008067          	ret
    80009020:	02069713          	slli	a4,a3,0x20
    80009024:	02075713          	srli	a4,a4,0x20
    80009028:	00170713          	addi	a4,a4,1
    8000902c:	00e50733          	add	a4,a0,a4
    80009030:	00050793          	mv	a5,a0
    80009034:	0005c683          	lbu	a3,0(a1)
    80009038:	00178793          	addi	a5,a5,1
    8000903c:	00158593          	addi	a1,a1,1
    80009040:	fed78fa3          	sb	a3,-1(a5)
    80009044:	fee798e3          	bne	a5,a4,80009034 <__memmove+0x160>
    80009048:	f89ff06f          	j	80008fd0 <__memmove+0xfc>
	...
