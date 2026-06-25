
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8b813103          	ld	sp,-1864(sp) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6a5060ef          	jal	ra,80006ec0 <start>

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
    80001248:	12c020ef          	jal	ra,80003374 <HandleInterupt>

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
    80001360:	0000a917          	auipc	s2,0xa
    80001364:	58890913          	addi	s2,s2,1416 # 8000b8e8 <mutex>
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
    800013bc:	0000a517          	auipc	a0,0xa
    800013c0:	52453503          	ld	a0,1316(a0) # 8000b8e0 <done>
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
    80001468:	0000a517          	auipc	a0,0xa
    8000146c:	48050513          	addi	a0,a0,1152 # 8000b8e8 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	228080e7          	jalr	552(ra) # 80001698 <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000a517          	auipc	a0,0xa
    80001480:	46450513          	addi	a0,a0,1124 # 8000b8e0 <done>
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
    800014d4:	0000a497          	auipc	s1,0xa
    800014d8:	40c48493          	addi	s1,s1,1036 # 8000b8e0 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	264080e7          	jalr	612(ra) # 80001748 <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000a517          	auipc	a0,0xa
    800014f0:	3fc53503          	ld	a0,1020(a0) # 8000b8e8 <mutex>
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
    800015e4:	00050713          	mv	a4,a0
    register size_t a0 asm("a0") = 0x11;
    800015e8:	01100513          	li	a0,17
    register size_t a1 asm("a1") = (size_t)handle;
    800015ec:	00098593          	mv	a1,s3
    register size_t a2 asm("a2") = (size_t)start_routine;
    800015f0:	00090613          	mv	a2,s2
    register size_t a3 asm("a3") = (size_t)arg;
    800015f4:	00048693          	mv	a3,s1
    register size_t a4 asm("a4") = (size_t)stack + DEFAULT_STACK_SIZE * sizeof(size_t);
    800015f8:	000087b7          	lui	a5,0x8
    800015fc:	00f70733          	add	a4,a4,a5
    __asm__ volatile("ecall"
    80001600:	00000073          	ecall
        : "+r"(a0)
        : "r"(a1), "r"(a2), "r"(a3), "r"(a4)
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
    80001834:	f50080e7          	jalr	-176(ra) # 80002780 <userMainK>
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
    80001888:	f40080e7          	jalr	-192(ra) # 800037c4 <start_main_thread>
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
    80001a34:	0805b823          	sd	zero,144(a1)
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
    80001ac8:	4f8080e7          	jalr	1272(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
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
    80001b00:	08f5b823          	sd	a5,144(a1)
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
    80001b28:	0805b823          	sd	zero,144(a1)
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
    80001ba0:	420080e7          	jalr	1056(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
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
    80001bf0:	08f53823          	sd	a5,144(a0)
        Scheduler::Put(thread);
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	3c8080e7          	jalr	968(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
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
    sstatus_val |= (1UL << 8); // SPP=1
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
    Scheduler::ThreadExit(t);
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	318080e7          	jalr	792(ra) # 80001f68 <_ZN9Scheduler10ThreadExitEP7KThread>
    80001c58:	01813083          	ld	ra,24(sp)
    80001c5c:	01013403          	ld	s0,16(sp)
    80001c60:	00813483          	ld	s1,8(sp)
    80001c64:	02010113          	addi	sp,sp,32
    80001c68:	00008067          	ret

0000000080001c6c <_ZN7KThreadC1Ev>:
KThread::KThread() {
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
}
    80001c78:	00813403          	ld	s0,8(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_ZN7KThread4initEv>:
void KThread::init() {
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00813423          	sd	s0,8(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001c90:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001c94:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001c98:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001c9c:	00053c23          	sd	zero,24(a0)
    next = nullptr;
    80001ca0:	02053023          	sd	zero,32(a0)
    stackPtr = nullptr;
    80001ca4:	02053423          	sd	zero,40(a0)
    supervisorSp = nullptr;
    80001ca8:	02053823          	sd	zero,48(a0)
    sleepDelta = 0;
    80001cac:	02053c23          	sd	zero,56(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001cb0:	00000713          	li	a4,0
    80001cb4:	01f00793          	li	a5,31
    80001cb8:	00e7ce63          	blt	a5,a4,80001cd4 <_ZN7KThread4initEv+0x50>
    80001cbc:	00870793          	addi	a5,a4,8
    80001cc0:	00379793          	slli	a5,a5,0x3
    80001cc4:	00f507b3          	add	a5,a0,a5
    80001cc8:	0007b023          	sd	zero,0(a5)
    80001ccc:	0017071b          	addiw	a4,a4,1
    80001cd0:	fe5ff06f          	j	80001cb4 <_ZN7KThread4initEv+0x30>
    threadContext.sepc = 0;
    80001cd4:	14053023          	sd	zero,320(a0)
    threadContext.sstatus = 0;
    80001cd8:	14053423          	sd	zero,328(a0)
    threadContext.pc = 0;
    80001cdc:	14053823          	sd	zero,336(a0)
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
    80001d1c:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    80001d20:	0017071b          	addiw	a4,a4,1
    80001d24:	fd9ff06f          	j	80001cfc <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001d28:	02853783          	ld	a5,40(a0)
    80001d2c:	04f53823          	sd	a5,80(a0)
    threadContext.sepc = cont->sepc;
    80001d30:	1005b783          	ld	a5,256(a1)
    80001d34:	14f53023          	sd	a5,320(a0)
    threadContext.sstatus =cont->sstatus;
    80001d38:	1085b783          	ld	a5,264(a1)
    80001d3c:	14f53423          	sd	a5,328(a0)
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
    80001d58:	04050513          	addi	a0,a0,64
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
    80001e3c:	04c53823          	sd	a2,80(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001e40:	00000797          	auipc	a5,0x0
    80001e44:	de478793          	addi	a5,a5,-540 # 80001c24 <_ZN7KThread16threadTrampolineEPS_>
    80001e48:	14f53023          	sd	a5,320(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001e4c:	08a53823          	sd	a0,144(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001e50:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001e54:	04f53c23          	sd	a5,88(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001e58:	100027f3          	csrr	a5,sstatus
    sstatus_val |= (1UL << 5); // SPIE=1
    80001e5c:	1207e793          	ori	a5,a5,288
    threadContext.sstatus = sstatus_val;
    80001e60:	14f53423          	sd	a5,328(a0)
}
    80001e64:	00813403          	ld	s0,8(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZL8idleBodyPv>:
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

static void idleBody(void*) {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    while (true) { __asm__ volatile("wfi"); }
    80001e7c:	10500073          	wfi
    80001e80:	ffdff06f          	j	80001e7c <_ZL8idleBodyPv+0xc>

0000000080001e84 <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00813423          	sd	s0,8(sp)
    80001e8c:	01010413          	addi	s0,sp,16
}
    80001e90:	0000a517          	auipc	a0,0xa
    80001e94:	a9053503          	ld	a0,-1392(a0) # 8000b920 <_ZN9Scheduler7runningE>
    80001e98:	00813403          	ld	s0,8(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    80001eb4:	00058513          	mv	a0,a1
    running = newThread;
    80001eb8:	0000a797          	auipc	a5,0xa
    80001ebc:	a6b7b423          	sd	a1,-1432(a5) # 8000b920 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	e8c080e7          	jalr	-372(ra) # 80001d4c <_ZN7KThread10getContextEv>
    80001ec8:	fffff097          	auipc	ra,0xfffff
    80001ecc:	1cc080e7          	jalr	460(ra) # 80001094 <restoreContext>
}
    80001ed0:	00813083          	ld	ra,8(sp)
    80001ed4:	00013403          	ld	s0,0(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001ee0:	fe010113          	addi	sp,sp,-32
    80001ee4:	00113c23          	sd	ra,24(sp)
    80001ee8:	00813823          	sd	s0,16(sp)
    80001eec:	00913423          	sd	s1,8(sp)
    80001ef0:	02010413          	addi	s0,sp,32
    if (readyQueue == nullptr) return nullptr;
    80001ef4:	0000a497          	auipc	s1,0xa
    80001ef8:	a344b483          	ld	s1,-1484(s1) # 8000b928 <_ZN9Scheduler10readyQueueE>
    80001efc:	04048463          	beqz	s1,80001f44 <_ZN9Scheduler7GetNextEv+0x64>
    readyQueue = readyQueue->getNextInQueue();
    80001f00:	00048513          	mv	a0,s1
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	e64080e7          	jalr	-412(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
    80001f0c:	0000a797          	auipc	a5,0xa
    80001f10:	a0a7be23          	sd	a0,-1508(a5) # 8000b928 <_ZN9Scheduler10readyQueueE>
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    80001f14:	04050463          	beqz	a0,80001f5c <_ZN9Scheduler7GetNextEv+0x7c>
    80001f18:	00000593          	li	a1,0
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	ea0080e7          	jalr	-352(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
    toRet->setNextInQueue(nullptr);
    80001f24:	00000593          	li	a1,0
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	e74080e7          	jalr	-396(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    toRet->setPrevInQueue(nullptr);
    80001f34:	00000593          	li	a1,0
    80001f38:	00048513          	mv	a0,s1
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	e80080e7          	jalr	-384(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
}
    80001f44:	00048513          	mv	a0,s1
    80001f48:	01813083          	ld	ra,24(sp)
    80001f4c:	01013403          	ld	s0,16(sp)
    80001f50:	00813483          	ld	s1,8(sp)
    80001f54:	02010113          	addi	sp,sp,32
    80001f58:	00008067          	ret
    else readyQueueEnd = nullptr;
    80001f5c:	0000a797          	auipc	a5,0xa
    80001f60:	9c07ba23          	sd	zero,-1580(a5) # 8000b930 <_ZN9Scheduler13readyQueueEndE>
    80001f64:	fc1ff06f          	j	80001f24 <_ZN9Scheduler7GetNextEv+0x44>

0000000080001f68 <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    80001f68:	fe010113          	addi	sp,sp,-32
    80001f6c:	00113c23          	sd	ra,24(sp)
    80001f70:	00813823          	sd	s0,16(sp)
    80001f74:	00913423          	sd	s1,8(sp)
    80001f78:	02010413          	addi	s0,sp,32
    80001f7c:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	f60080e7          	jalr	-160(ra) # 80001ee0 <_ZN9Scheduler7GetNextEv>
    80001f88:	00050593          	mv	a1,a0
    if (next == nullptr) {
    80001f8c:	02050263          	beqz	a0,80001fb0 <_ZN9Scheduler10ThreadExitEP7KThread+0x48>
    yield(t, next);
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	f10080e7          	jalr	-240(ra) # 80001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	00813483          	ld	s1,8(sp)
    80001fa8:	02010113          	addi	sp,sp,32
    80001fac:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80001fb0:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    80001fb4:	fc059ee3          	bnez	a1,80001f90 <_ZN9Scheduler10ThreadExitEP7KThread+0x28>
    80001fb8:	0000006f          	j	80001fb8 <_ZN9Scheduler10ThreadExitEP7KThread+0x50>

0000000080001fbc <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    80001fbc:	fe010113          	addi	sp,sp,-32
    80001fc0:	00113c23          	sd	ra,24(sp)
    80001fc4:	00813823          	sd	s0,16(sp)
    80001fc8:	00913423          	sd	s1,8(sp)
    80001fcc:	02010413          	addi	s0,sp,32
    80001fd0:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80001fd4:	00000593          	li	a1,0
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	dc8080e7          	jalr	-568(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (readyQueueEnd != nullptr) {
    80001fe0:	0000a597          	auipc	a1,0xa
    80001fe4:	9505b583          	ld	a1,-1712(a1) # 8000b930 <_ZN9Scheduler13readyQueueEndE>
    80001fe8:	04058063          	beqz	a1,80002028 <_ZN9Scheduler3PutEP7KThread+0x6c>
        thread->setPrevInQueue(readyQueueEnd);
    80001fec:	00048513          	mv	a0,s1
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	dcc080e7          	jalr	-564(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        readyQueueEnd->setNextInQueue(thread);
    80001ff8:	00048593          	mv	a1,s1
    80001ffc:	0000a517          	auipc	a0,0xa
    80002000:	93453503          	ld	a0,-1740(a0) # 8000b930 <_ZN9Scheduler13readyQueueEndE>
    80002004:	00000097          	auipc	ra,0x0
    80002008:	d9c080e7          	jalr	-612(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    8000200c:	0000a797          	auipc	a5,0xa
    80002010:	9297b223          	sd	s1,-1756(a5) # 8000b930 <_ZN9Scheduler13readyQueueEndE>
}
    80002014:	01813083          	ld	ra,24(sp)
    80002018:	01013403          	ld	s0,16(sp)
    8000201c:	00813483          	ld	s1,8(sp)
    80002020:	02010113          	addi	sp,sp,32
    80002024:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80002028:	00000593          	li	a1,0
    8000202c:	00048513          	mv	a0,s1
    80002030:	00000097          	auipc	ra,0x0
    80002034:	d8c080e7          	jalr	-628(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        readyQueue = thread;
    80002038:	0000a797          	auipc	a5,0xa
    8000203c:	8e97b823          	sd	s1,-1808(a5) # 8000b928 <_ZN9Scheduler10readyQueueE>
    80002040:	fcdff06f          	j	8000200c <_ZN9Scheduler3PutEP7KThread+0x50>

0000000080002044 <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80002050:	0000a797          	auipc	a5,0xa
    80002054:	8707b783          	ld	a5,-1936(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002058:	00778793          	addi	a5,a5,7
    8000205c:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80002060:	0000a717          	auipc	a4,0xa
    80002064:	8cf73c23          	sd	a5,-1832(a4) # 8000b938 <_ZN9Scheduler12stack_cursorE>
}
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN9Scheduler16SetupStartThreadEv>:
}

void Scheduler::SetupStartThread() {
    80002074:	fe010113          	addi	sp,sp,-32
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	00813823          	sd	s0,16(sp)
    80002080:	00913423          	sd	s1,8(sp)
    80002084:	02010413          	addi	s0,sp,32
    SetupStartStack();
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	fbc080e7          	jalr	-68(ra) # 80002044 <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    80002090:	00001097          	auipc	ra,0x1
    80002094:	130080e7          	jalr	304(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    80002098:	15800593          	li	a1,344
    8000209c:	00001097          	auipc	ra,0x1
    800020a0:	180080e7          	jalr	384(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
    800020a4:	0000a797          	auipc	a5,0xa
    800020a8:	86a7be23          	sd	a0,-1924(a5) # 8000b920 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	ca0080e7          	jalr	-864(ra) # 80001d4c <_ZN7KThread10getContextEv>
    800020b4:	fffff097          	auipc	ra,0xfffff
    800020b8:	070080e7          	jalr	112(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    800020bc:	00200793          	li	a5,2
    800020c0:	00009717          	auipc	a4,0x9
    800020c4:	54f73023          	sd	a5,1344(a4) # 8000b600 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	0f8080e7          	jalr	248(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    800020d0:	15800593          	li	a1,344
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	148080e7          	jalr	328(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
    800020dc:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	ba4080e7          	jalr	-1116(ra) # 80001c84 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800020e8:	00000797          	auipc	a5,0x0
    800020ec:	d8878793          	addi	a5,a5,-632 # 80001e70 <_ZL8idleBodyPv>
    800020f0:	00f4b023          	sd	a5,0(s1)
    800020f4:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	0c8080e7          	jalr	200(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    80002100:	000085b7          	lui	a1,0x8
    80002104:	00001097          	auipc	ra,0x1
    80002108:	118080e7          	jalr	280(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    8000210c:	00008637          	lui	a2,0x8
    80002110:	00c50633          	add	a2,a0,a2
    80002114:	00000593          	li	a1,0
    80002118:	00048513          	mv	a0,s1
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	d0c080e7          	jalr	-756(ra) # 80001e28 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    80002124:	00048513          	mv	a0,s1
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	e94080e7          	jalr	-364(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
}
    80002130:	01813083          	ld	ra,24(sp)
    80002134:	01013403          	ld	s0,16(sp)
    80002138:	00813483          	ld	s1,8(sp)
    8000213c:	02010113          	addi	sp,sp,32
    80002140:	00008067          	ret

0000000080002144 <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80002150:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80002154:	04f53823          	sd	a5,80(a0)
}
    80002158:	00813403          	ld	s0,8(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    80002164:	fe010113          	addi	sp,sp,-32
    80002168:	00113c23          	sd	ra,24(sp)
    8000216c:	00813823          	sd	s0,16(sp)
    80002170:	00913423          	sd	s1,8(sp)
    80002174:	01213023          	sd	s2,0(sp)
    80002178:	02010413          	addi	s0,sp,32
    8000217c:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80002180:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    80002184:	00009797          	auipc	a5,0x9
    80002188:	7bc7b783          	ld	a5,1980(a5) # 8000b940 <_ZN9Scheduler10sleepQueueE>
    8000218c:	04078e63          	beqz	a5,800021e8 <_ZN9Scheduler9timerTickEP7KThread+0x84>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80002190:	0387b703          	ld	a4,56(a5)
    80002194:	04070063          	beqz	a4,800021d4 <_ZN9Scheduler9timerTickEP7KThread+0x70>
    80002198:	fff70713          	addi	a4,a4,-1
    8000219c:	02e7bc23          	sd	a4,56(a5)
    800021a0:	0340006f          	j	800021d4 <_ZN9Scheduler9timerTickEP7KThread+0x70>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    800021a4:	00048513          	mv	a0,s1
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	bc0080e7          	jalr	-1088(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
    800021b0:	00009797          	auipc	a5,0x9
    800021b4:	78a7b823          	sd	a0,1936(a5) # 8000b940 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    800021b8:	00000593          	li	a1,0
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	be0080e7          	jalr	-1056(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    800021c8:	00048513          	mv	a0,s1
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	df0080e7          	jalr	-528(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    800021d4:	00009497          	auipc	s1,0x9
    800021d8:	76c4b483          	ld	s1,1900(s1) # 8000b940 <_ZN9Scheduler10sleepQueueE>
    800021dc:	00048663          	beqz	s1,800021e8 <_ZN9Scheduler9timerTickEP7KThread+0x84>
    800021e0:	0384b783          	ld	a5,56(s1)
    800021e4:	fc0780e3          	beqz	a5,800021a4 <_ZN9Scheduler9timerTickEP7KThread+0x40>
        }
    }

    if (current == nullptr) return;
    800021e8:	02090463          	beqz	s2,80002210 <_ZN9Scheduler9timerTickEP7KThread+0xac>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    800021ec:	00009797          	auipc	a5,0x9
    800021f0:	4147b783          	ld	a5,1044(a5) # 8000b600 <_ZN9Scheduler21runningThreadTimeLeftE>
    800021f4:	00078863          	beqz	a5,80002204 <_ZN9Scheduler9timerTickEP7KThread+0xa0>
    800021f8:	fff78793          	addi	a5,a5,-1
    800021fc:	00009717          	auipc	a4,0x9
    80002200:	40f73223          	sd	a5,1028(a4) # 8000b600 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80002204:	00009797          	auipc	a5,0x9
    80002208:	3fc7b783          	ld	a5,1020(a5) # 8000b600 <_ZN9Scheduler21runningThreadTimeLeftE>
    8000220c:	00078e63          	beqz	a5,80002228 <_ZN9Scheduler9timerTickEP7KThread+0xc4>
    KThread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	00013903          	ld	s2,0(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret
    KThread* next = GetNext();
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	cb8080e7          	jalr	-840(ra) # 80001ee0 <_ZN9Scheduler7GetNextEv>
    80002230:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002234:	00200793          	li	a5,2
    80002238:	00009717          	auipc	a4,0x9
    8000223c:	3cf73423          	sd	a5,968(a4) # 8000b600 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002240:	fc0508e3          	beqz	a0,80002210 <_ZN9Scheduler9timerTickEP7KThread+0xac>
    Put(current);
    80002244:	00090513          	mv	a0,s2
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	d74080e7          	jalr	-652(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    80002250:	00048593          	mv	a1,s1
    80002254:	00090513          	mv	a0,s2
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	c4c080e7          	jalr	-948(ra) # 80001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>
    80002260:	fb1ff06f          	j	80002210 <_ZN9Scheduler9timerTickEP7KThread+0xac>

0000000080002264 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    80002264:	fd010113          	addi	sp,sp,-48
    80002268:	02113423          	sd	ra,40(sp)
    8000226c:	02813023          	sd	s0,32(sp)
    80002270:	00913c23          	sd	s1,24(sp)
    80002274:	01213823          	sd	s2,16(sp)
    80002278:	01313423          	sd	s3,8(sp)
    8000227c:	01413023          	sd	s4,0(sp)
    80002280:	03010413          	addi	s0,sp,48
    80002284:	00050a13          	mv	s4,a0
    80002288:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    8000228c:	00009497          	auipc	s1,0x9
    80002290:	6b44b483          	ld	s1,1716(s1) # 8000b940 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    80002294:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    80002298:	02048463          	beqz	s1,800022c0 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    8000229c:	0384b783          	ld	a5,56(s1)
    800022a0:	02f96063          	bltu	s2,a5,800022c0 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    800022a4:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    800022a8:	00048513          	mv	a0,s1
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	abc080e7          	jalr	-1348(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    800022b4:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    800022b8:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    800022bc:	fddff06f          	j	80002298 <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    800022c0:	032a3c23          	sd	s2,56(s4)
    thread->setNextInQueue(current);
    800022c4:	00048593          	mv	a1,s1
    800022c8:	000a0513          	mv	a0,s4
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	ad4080e7          	jalr	-1324(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    800022d4:	04098263          	beqz	s3,80002318 <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    800022d8:	000a0593          	mv	a1,s4
    800022dc:	00098513          	mv	a0,s3
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	ac0080e7          	jalr	-1344(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    800022e8:	00048863          	beqz	s1,800022f8 <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    800022ec:	0384b583          	ld	a1,56(s1)
    800022f0:	41258933          	sub	s2,a1,s2
    800022f4:	0324bc23          	sd	s2,56(s1)
    800022f8:	02813083          	ld	ra,40(sp)
    800022fc:	02013403          	ld	s0,32(sp)
    80002300:	01813483          	ld	s1,24(sp)
    80002304:	01013903          	ld	s2,16(sp)
    80002308:	00813983          	ld	s3,8(sp)
    8000230c:	00013a03          	ld	s4,0(sp)
    80002310:	03010113          	addi	sp,sp,48
    80002314:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    80002318:	00009797          	auipc	a5,0x9
    8000231c:	6347b423          	sd	s4,1576(a5) # 8000b940 <_ZN9Scheduler10sleepQueueE>
    80002320:	fc9ff06f          	j	800022e8 <_ZN9Scheduler5sleepEP7KThreadm+0x84>

0000000080002324 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00113423          	sd	ra,8(sp)
    8000232c:	00813023          	sd	s0,0(sp)
    80002330:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    80002334:	00009517          	auipc	a0,0x9
    80002338:	61450513          	addi	a0,a0,1556 # 8000b948 <_ZN7Konsole11outputItemsE>
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	3bc080e7          	jalr	956(ra) # 800016f8 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    80002344:	00009797          	auipc	a5,0x9
    80002348:	5547b783          	ld	a5,1364(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000234c:	0007b783          	ld	a5,0(a5)
    80002350:	0007c783          	lbu	a5,0(a5)
    80002354:	0ff7f793          	andi	a5,a5,255
    80002358:	0207f793          	andi	a5,a5,32
    8000235c:	fe0784e3          	beqz	a5,80002344 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    80002360:	00009717          	auipc	a4,0x9
    80002364:	5e870713          	addi	a4,a4,1512 # 8000b948 <_ZN7Konsole11outputItemsE>
    80002368:	01872783          	lw	a5,24(a4)
    8000236c:	01c72703          	lw	a4,28(a4)
    80002370:	fce782e3          	beq	a5,a4,80002334 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002374:	00009697          	auipc	a3,0x9
    80002378:	5d468693          	addi	a3,a3,1492 # 8000b948 <_ZN7Konsole11outputItemsE>
    8000237c:	00f68733          	add	a4,a3,a5
    80002380:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    80002384:	0017879b          	addiw	a5,a5,1
    80002388:	41f7d71b          	sraiw	a4,a5,0x1f
    8000238c:	0187571b          	srliw	a4,a4,0x18
    80002390:	00e787bb          	addw	a5,a5,a4
    80002394:	0ff7f793          	andi	a5,a5,255
    80002398:	40e787bb          	subw	a5,a5,a4
    8000239c:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    800023a0:	00009797          	auipc	a5,0x9
    800023a4:	5107b783          	ld	a5,1296(a5) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023a8:	0007b783          	ld	a5,0(a5)
    800023ac:	00c78023          	sb	a2,0(a5)
    800023b0:	f85ff06f          	j	80002334 <_ZN7Konsole16outputThreadBodyEPv+0x10>

00000000800023b4 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00113c23          	sd	ra,24(sp)
    800023bc:	00813823          	sd	s0,16(sp)
    800023c0:	00913423          	sd	s1,8(sp)
    800023c4:	02010413          	addi	s0,sp,32
    800023c8:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    800023cc:	00000593          	li	a1,0
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	9d0080e7          	jalr	-1584(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    800023d8:	00009597          	auipc	a1,0x9
    800023dc:	6905b583          	ld	a1,1680(a1) # 8000ba68 <_ZN7Konsole14getcWaiterTailE>
    800023e0:	04058063          	beqz	a1,80002420 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    800023e4:	00048513          	mv	a0,s1
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	9d4080e7          	jalr	-1580(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    800023f0:	00048593          	mv	a1,s1
    800023f4:	00009517          	auipc	a0,0x9
    800023f8:	67453503          	ld	a0,1652(a0) # 8000ba68 <_ZN7Konsole14getcWaiterTailE>
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	9a4080e7          	jalr	-1628(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    80002404:	00009797          	auipc	a5,0x9
    80002408:	6697b223          	sd	s1,1636(a5) # 8000ba68 <_ZN7Konsole14getcWaiterTailE>
}
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00813483          	ld	s1,8(sp)
    80002418:	02010113          	addi	sp,sp,32
    8000241c:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80002420:	00000593          	li	a1,0
    80002424:	00048513          	mv	a0,s1
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	994080e7          	jalr	-1644(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    80002430:	00009797          	auipc	a5,0x9
    80002434:	6497b023          	sd	s1,1600(a5) # 8000ba70 <_ZN7Konsole14getcWaiterHeadE>
    80002438:	fcdff06f          	j	80002404 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

000000008000243c <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    8000243c:	fe010113          	addi	sp,sp,-32
    80002440:	00113c23          	sd	ra,24(sp)
    80002444:	00813823          	sd	s0,16(sp)
    80002448:	00913423          	sd	s1,8(sp)
    8000244c:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    80002450:	00009497          	auipc	s1,0x9
    80002454:	6204b483          	ld	s1,1568(s1) # 8000ba70 <_ZN7Konsole14getcWaiterHeadE>
    80002458:	04048463          	beqz	s1,800024a0 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    8000245c:	00048513          	mv	a0,s1
    80002460:	00000097          	auipc	ra,0x0
    80002464:	908080e7          	jalr	-1784(ra) # 80001d68 <_ZN7KThread14getNextInQueueEv>
    80002468:	00009797          	auipc	a5,0x9
    8000246c:	60a7b423          	sd	a0,1544(a5) # 8000ba70 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002470:	04050463          	beqz	a0,800024b8 <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002474:	00000593          	li	a1,0
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	944080e7          	jalr	-1724(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    80002480:	00000593          	li	a1,0
    80002484:	00048513          	mv	a0,s1
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	918080e7          	jalr	-1768(ra) # 80001da0 <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80002490:	00000593          	li	a1,0
    80002494:	00048513          	mv	a0,s1
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	924080e7          	jalr	-1756(ra) # 80001dbc <_ZN7KThread14setPrevInQueueEPS_>
}
    800024a0:	00048513          	mv	a0,s1
    800024a4:	01813083          	ld	ra,24(sp)
    800024a8:	01013403          	ld	s0,16(sp)
    800024ac:	00813483          	ld	s1,8(sp)
    800024b0:	02010113          	addi	sp,sp,32
    800024b4:	00008067          	ret
    else getcWaiterTail = nullptr;
    800024b8:	00009797          	auipc	a5,0x9
    800024bc:	5a07b823          	sd	zero,1456(a5) # 8000ba68 <_ZN7Konsole14getcWaiterTailE>
    800024c0:	fc1ff06f          	j	80002480 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

00000000800024c4 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    800024c4:	fe010113          	addi	sp,sp,-32
    800024c8:	00113c23          	sd	ra,24(sp)
    800024cc:	00813823          	sd	s0,16(sp)
    800024d0:	00913423          	sd	s1,8(sp)
    800024d4:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    800024d8:	00009517          	auipc	a0,0x9
    800024dc:	47050513          	addi	a0,a0,1136 # 8000b948 <_ZN7Konsole11outputItemsE>
    800024e0:	12052823          	sw	zero,304(a0)
    800024e4:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    800024e8:	00052c23          	sw	zero,24(a0)
    800024ec:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    800024f0:	12053423          	sd	zero,296(a0)
    800024f4:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    800024f8:	00000593          	li	a1,0
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	3c8080e7          	jalr	968(ra) # 800018c4 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002504:	00001097          	auipc	ra,0x1
    80002508:	cbc080e7          	jalr	-836(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    8000250c:	15800593          	li	a1,344
    80002510:	00001097          	auipc	ra,0x1
    80002514:	d0c080e7          	jalr	-756(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002518:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	768080e7          	jalr	1896(ra) # 80001c84 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002524:	00000797          	auipc	a5,0x0
    80002528:	e0078793          	addi	a5,a5,-512 # 80002324 <_ZN7Konsole16outputThreadBodyEPv>
    8000252c:	00f4b023          	sd	a5,0(s1)
    80002530:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002534:	00001097          	auipc	ra,0x1
    80002538:	c8c080e7          	jalr	-884(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    8000253c:	000085b7          	lui	a1,0x8
    80002540:	00001097          	auipc	ra,0x1
    80002544:	cdc080e7          	jalr	-804(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    80002548:	00008637          	lui	a2,0x8
    8000254c:	00c50633          	add	a2,a0,a2
    80002550:	00000593          	li	a1,0
    80002554:	00048513          	mv	a0,s1
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	8d0080e7          	jalr	-1840(ra) # 80001e28 <_ZN7KThread5setupEPS_Pm>
    Scheduler::Put(outputThread);
    80002560:	00048513          	mv	a0,s1
    80002564:	00000097          	auipc	ra,0x0
    80002568:	a58080e7          	jalr	-1448(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
}
    8000256c:	01813083          	ld	ra,24(sp)
    80002570:	01013403          	ld	s0,16(sp)
    80002574:	00813483          	ld	s1,8(sp)
    80002578:	02010113          	addi	sp,sp,32
    8000257c:	00008067          	ret

0000000080002580 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00113c23          	sd	ra,24(sp)
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	01213023          	sd	s2,0(sp)
    80002594:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    80002598:	00005097          	auipc	ra,0x5
    8000259c:	17c080e7          	jalr	380(ra) # 80007714 <plic_claim>
    800025a0:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    800025a4:	00a00793          	li	a5,10
    800025a8:	02f50663          	beq	a0,a5,800025d4 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    800025ac:	0a049463          	bnez	s1,80002654 <_ZN7Konsole15handleInterruptEv+0xd4>
}
    800025b0:	01813083          	ld	ra,24(sp)
    800025b4:	01013403          	ld	s0,16(sp)
    800025b8:	00813483          	ld	s1,8(sp)
    800025bc:	00013903          	ld	s2,0(sp)
    800025c0:	02010113          	addi	sp,sp,32
    800025c4:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    800025c8:	09253823          	sd	s2,144(a0)
                Scheduler::Put(waiter);
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	9f0080e7          	jalr	-1552(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    800025d4:	00009797          	auipc	a5,0x9
    800025d8:	2c47b783          	ld	a5,708(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x10>
    800025dc:	0007b783          	ld	a5,0(a5)
    800025e0:	0007c783          	lbu	a5,0(a5)
    800025e4:	0017f793          	andi	a5,a5,1
    800025e8:	fc0782e3          	beqz	a5,800025ac <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    800025ec:	00009797          	auipc	a5,0x9
    800025f0:	2a47b783          	ld	a5,676(a5) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025f4:	0007b783          	ld	a5,0(a5)
    800025f8:	0007c783          	lbu	a5,0(a5)
    800025fc:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    80002600:	00000097          	auipc	ra,0x0
    80002604:	e3c080e7          	jalr	-452(ra) # 8000243c <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    80002608:	fc0510e3          	bnez	a0,800025c8 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    8000260c:	00009617          	auipc	a2,0x9
    80002610:	33c60613          	addi	a2,a2,828 # 8000b948 <_ZN7Konsole11outputItemsE>
    80002614:	13462683          	lw	a3,308(a2)
    80002618:	0016879b          	addiw	a5,a3,1
    8000261c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002620:	0187571b          	srliw	a4,a4,0x18
    80002624:	00e787bb          	addw	a5,a5,a4
    80002628:	0ff7f793          	andi	a5,a5,255
    8000262c:	40e787bb          	subw	a5,a5,a4
    80002630:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    80002634:	13062603          	lw	a2,304(a2)
    80002638:	f8e60ee3          	beq	a2,a4,800025d4 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    8000263c:	00009717          	auipc	a4,0x9
    80002640:	30c70713          	addi	a4,a4,780 # 8000b948 <_ZN7Konsole11outputItemsE>
    80002644:	00d706b3          	add	a3,a4,a3
    80002648:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    8000264c:	12f72a23          	sw	a5,308(a4)
    80002650:	f85ff06f          	j	800025d4 <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    80002654:	00048513          	mv	a0,s1
    80002658:	00005097          	auipc	ra,0x5
    8000265c:	0f4080e7          	jalr	244(ra) # 8000774c <plic_complete>
}
    80002660:	f51ff06f          	j	800025b0 <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002664 <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    80002678:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    8000267c:	00009617          	auipc	a2,0x9
    80002680:	2cc60613          	addi	a2,a2,716 # 8000b948 <_ZN7Konsole11outputItemsE>
    80002684:	01c62683          	lw	a3,28(a2)
    80002688:	0016879b          	addiw	a5,a3,1
    8000268c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002690:	0187571b          	srliw	a4,a4,0x18
    80002694:	00e787bb          	addw	a5,a5,a4
    80002698:	0ff7f793          	andi	a5,a5,255
    8000269c:	40e787bb          	subw	a5,a5,a4
    800026a0:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    800026a4:	01862603          	lw	a2,24(a2)
    800026a8:	04e60063          	beq	a2,a4,800026e8 <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    800026ac:	00009517          	auipc	a0,0x9
    800026b0:	29c50513          	addi	a0,a0,668 # 8000b948 <_ZN7Konsole11outputItemsE>
    800026b4:	00d506b3          	add	a3,a0,a3
    800026b8:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    800026bc:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	39c080e7          	jalr	924(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    800026c8:	02048a63          	beqz	s1,800026fc <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    800026cc:	0804b823          	sd	zero,144(s1)
    return 0;
    800026d0:	00000513          	li	a0,0
}
    800026d4:	01813083          	ld	ra,24(sp)
    800026d8:	01013403          	ld	s0,16(sp)
    800026dc:	00813483          	ld	s1,8(sp)
    800026e0:	02010113          	addi	sp,sp,32
    800026e4:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    800026e8:	00050663          	beqz	a0,800026f4 <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    800026ec:	fff00793          	li	a5,-1
    800026f0:	08f53823          	sd	a5,144(a0)
        return -1;
    800026f4:	fff00513          	li	a0,-1
    800026f8:	fddff06f          	j	800026d4 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    800026fc:	00000513          	li	a0,0
    80002700:	fd5ff06f          	j	800026d4 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

0000000080002704 <_ZN7Konsole10getcKernelEP7KThread>:

int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    80002704:	00009717          	auipc	a4,0x9
    80002708:	24470713          	addi	a4,a4,580 # 8000b948 <_ZN7Konsole11outputItemsE>
    8000270c:	13072783          	lw	a5,304(a4)
    80002710:	13472703          	lw	a4,308(a4)
    80002714:	04e78063          	beq	a5,a4,80002754 <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    80002718:	00009617          	auipc	a2,0x9
    8000271c:	23060613          	addi	a2,a2,560 # 8000b948 <_ZN7Konsole11outputItemsE>
    80002720:	00f60733          	add	a4,a2,a5
    80002724:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    80002728:	0017879b          	addiw	a5,a5,1
    8000272c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002730:	0187571b          	srliw	a4,a4,0x18
    80002734:	00e787bb          	addw	a5,a5,a4
    80002738:	0ff7f793          	andi	a5,a5,255
    8000273c:	40e787bb          	subw	a5,a5,a4
    80002740:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002744:	00050463          	beqz	a0,8000274c <_ZN7Konsole10getcKernelEP7KThread+0x48>
    80002748:	08d53823          	sd	a3,144(a0)
        return (unsigned char)c;
    8000274c:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002750:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00113423          	sd	ra,8(sp)
    8000275c:	00813023          	sd	s0,0(sp)
    80002760:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002764:	00000097          	auipc	ra,0x0
    80002768:	c50080e7          	jalr	-944(ra) # 800023b4 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    8000276c:	ffe00513          	li	a0,-2
    80002770:	00813083          	ld	ra,8(sp)
    80002774:	00013403          	ld	s0,0(sp)
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00008067          	ret

0000000080002780 <userMainK>:
//#define USE_C_TEST
void userMain();

#ifdef USE_CPP_TEST
extern "C" void userMainCpp(void);
extern "C" void userMainK(void) {
    80002780:	ff010113          	addi	sp,sp,-16
    80002784:	00113423          	sd	ra,8(sp)
    80002788:	00813023          	sd	s0,0(sp)
    8000278c:	01010413          	addi	s0,sp,16
    userMain();
    80002790:	00002097          	auipc	ra,0x2
    80002794:	67c080e7          	jalr	1660(ra) # 80004e0c <_Z8userMainv>
}
    80002798:	00813083          	ld	ra,8(sp)
    8000279c:	00013403          	ld	s0,0(sp)
    800027a0:	01010113          	addi	sp,sp,16
    800027a4:	00008067          	ret

00000000800027a8 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    800027b8:	03e00513          	li	a0,62
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	900080e7          	jalr	-1792(ra) # 800030bc <_ZN7Console4putcEc>
    800027c4:	00c0006f          	j	800027d0 <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    800027c8:	00001097          	auipc	ra,0x1
    800027cc:	8f4080e7          	jalr	-1804(ra) # 800030bc <_ZN7Console4putcEc>
        char c = Console::getc();
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	8c4080e7          	jalr	-1852(ra) # 80003094 <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    800027d8:	00d00793          	li	a5,13
    800027dc:	fef50ae3          	beq	a0,a5,800027d0 <_ZL8echoFuncPv+0x28>
    800027e0:	fe9ff06f          	j	800027c8 <_ZL8echoFuncPv+0x20>

00000000800027e4 <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    800027e4:	fb010113          	addi	sp,sp,-80
    800027e8:	04113423          	sd	ra,72(sp)
    800027ec:	04813023          	sd	s0,64(sp)
    800027f0:	02913c23          	sd	s1,56(sp)
    800027f4:	03213823          	sd	s2,48(sp)
    800027f8:	03313423          	sd	s3,40(sp)
    800027fc:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    80002800:	00400513          	li	a0,4
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	d50080e7          	jalr	-688(ra) # 80001554 <mem_alloc>
    8000280c:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    80002810:	04300793          	li	a5,67
    80002814:	00f50023          	sb	a5,0(a0)
    80002818:	02b00793          	li	a5,43
    8000281c:	00f500a3          	sb	a5,1(a0)
    80002820:	00f50123          	sb	a5,2(a0)
    80002824:	00a00793          	li	a5,10
    80002828:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    8000282c:	04300513          	li	a0,67
    80002830:	00001097          	auipc	ra,0x1
    80002834:	88c080e7          	jalr	-1908(ra) # 800030bc <_ZN7Console4putcEc>
    80002838:	0014c503          	lbu	a0,1(s1)
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	880080e7          	jalr	-1920(ra) # 800030bc <_ZN7Console4putcEc>
    80002844:	0024c503          	lbu	a0,2(s1)
    80002848:	00001097          	auipc	ra,0x1
    8000284c:	874080e7          	jalr	-1932(ra) # 800030bc <_ZN7Console4putcEc>
    80002850:	0034c503          	lbu	a0,3(s1)
    80002854:	00001097          	auipc	ra,0x1
    80002858:	868080e7          	jalr	-1944(ra) # 800030bc <_ZN7Console4putcEc>
    mem_free(buf);
    8000285c:	00048513          	mv	a0,s1
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	d20080e7          	jalr	-736(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002868:	00100593          	li	a1,1
    8000286c:	fc040513          	addi	a0,s0,-64
    80002870:	00000097          	auipc	ra,0x0
    80002874:	728080e7          	jalr	1832(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    80002878:	00000593          	li	a1,0
    8000287c:	fb040513          	addi	a0,s0,-80
    80002880:	00000097          	auipc	ra,0x0
    80002884:	718080e7          	jalr	1816(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002888:	03800513          	li	a0,56
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	550080e7          	jalr	1360(ra) # 80002ddc <_Znwm>
    80002894:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	62c080e7          	jalr	1580(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    800028a0:	00009797          	auipc	a5,0x9
    800028a4:	d7878793          	addi	a5,a5,-648 # 8000b618 <_ZTV6Worker+0x10>
    800028a8:	00f9b023          	sd	a5,0(s3)
    800028ac:	04100793          	li	a5,65
    800028b0:	02f98023          	sb	a5,32(s3)
    800028b4:	fc040793          	addi	a5,s0,-64
    800028b8:	02f9b423          	sd	a5,40(s3)
    800028bc:	fb040793          	addi	a5,s0,-80
    800028c0:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    800028c4:	03800513          	li	a0,56
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	514080e7          	jalr	1300(ra) # 80002ddc <_Znwm>
    800028d0:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	5f0080e7          	jalr	1520(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    800028dc:	00009797          	auipc	a5,0x9
    800028e0:	d3c78793          	addi	a5,a5,-708 # 8000b618 <_ZTV6Worker+0x10>
    800028e4:	00f93023          	sd	a5,0(s2)
    800028e8:	04200793          	li	a5,66
    800028ec:	02f90023          	sb	a5,32(s2)
    800028f0:	fc040793          	addi	a5,s0,-64
    800028f4:	02f93423          	sd	a5,40(s2)
    800028f8:	fb040793          	addi	a5,s0,-80
    800028fc:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    80002900:	03800513          	li	a0,56
    80002904:	00000097          	auipc	ra,0x0
    80002908:	4d8080e7          	jalr	1240(ra) # 80002ddc <_Znwm>
    8000290c:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002910:	00000097          	auipc	ra,0x0
    80002914:	5b4080e7          	jalr	1460(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	d0078793          	addi	a5,a5,-768 # 8000b618 <_ZTV6Worker+0x10>
    80002920:	00f4b023          	sd	a5,0(s1)
    80002924:	04300793          	li	a5,67
    80002928:	02f48023          	sb	a5,32(s1)
    8000292c:	fc040793          	addi	a5,s0,-64
    80002930:	02f4b423          	sd	a5,40(s1)
    80002934:	fb040793          	addi	a5,s0,-80
    80002938:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    8000293c:	00098513          	mv	a0,s3
    80002940:	00000097          	auipc	ra,0x0
    80002944:	5b4080e7          	jalr	1460(ra) # 80002ef4 <_ZN6Thread5startEv>
    80002948:	00090513          	mv	a0,s2
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	5a8080e7          	jalr	1448(ra) # 80002ef4 <_ZN6Thread5startEv>
    80002954:	00048513          	mv	a0,s1
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	59c080e7          	jalr	1436(ra) # 80002ef4 <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002960:	fb040513          	addi	a0,s0,-80
    80002964:	00000097          	auipc	ra,0x0
    80002968:	66c080e7          	jalr	1644(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
    8000296c:	fb040513          	addi	a0,s0,-80
    80002970:	00000097          	auipc	ra,0x0
    80002974:	660080e7          	jalr	1632(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
    80002978:	fb040513          	addi	a0,s0,-80
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	654080e7          	jalr	1620(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002984:	00098a63          	beqz	s3,80002998 <userMainCpp+0x1b4>
    80002988:	0009b783          	ld	a5,0(s3)
    8000298c:	0087b783          	ld	a5,8(a5)
    80002990:	00098513          	mv	a0,s3
    80002994:	000780e7          	jalr	a5
    80002998:	00090a63          	beqz	s2,800029ac <userMainCpp+0x1c8>
    8000299c:	00093783          	ld	a5,0(s2)
    800029a0:	0087b783          	ld	a5,8(a5)
    800029a4:	00090513          	mv	a0,s2
    800029a8:	000780e7          	jalr	a5
    800029ac:	00048a63          	beqz	s1,800029c0 <userMainCpp+0x1dc>
    800029b0:	0004b783          	ld	a5,0(s1)
    800029b4:	0087b783          	ld	a5,8(a5)
    800029b8:	00048513          	mv	a0,s1
    800029bc:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    800029c0:	00a00513          	li	a0,10
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	6f8080e7          	jalr	1784(ra) # 800030bc <_ZN7Console4putcEc>
    800029cc:	04f00513          	li	a0,79
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	6ec080e7          	jalr	1772(ra) # 800030bc <_ZN7Console4putcEc>
    800029d8:	04b00513          	li	a0,75
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	6e0080e7          	jalr	1760(ra) # 800030bc <_ZN7Console4putcEc>
    800029e4:	00a00513          	li	a0,10
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	6d4080e7          	jalr	1748(ra) # 800030bc <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    800029f0:	02800513          	li	a0,40
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	3e8080e7          	jalr	1000(ra) # 80002ddc <_Znwm>
    800029fc:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002a00:	00300593          	li	a1,3
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	624080e7          	jalr	1572(ra) # 80003028 <_ZN14PeriodicThreadC1Em>
    80002a0c:	00009797          	auipc	a5,0x9
    80002a10:	c3478793          	addi	a5,a5,-972 # 8000b640 <_ZTV6Ticker+0x10>
    80002a14:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	4d8080e7          	jalr	1240(ra) # 80002ef4 <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002a24:	00f00513          	li	a0,15
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	548080e7          	jalr	1352(ra) # 80002f70 <_ZN6Thread5sleepEm>
    t->terminate();
    80002a30:	00048513          	mv	a0,s1
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	644080e7          	jalr	1604(ra) # 80003078 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002a3c:	00500513          	li	a0,5
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	530080e7          	jalr	1328(ra) # 80002f70 <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002a48:	00a00513          	li	a0,10
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	670080e7          	jalr	1648(ra) # 800030bc <_ZN7Console4putcEc>
    delete t;
    80002a54:	00048a63          	beqz	s1,80002a68 <userMainCpp+0x284>
    80002a58:	0004b783          	ld	a5,0(s1)
    80002a5c:	0087b783          	ld	a5,8(a5)
    80002a60:	00048513          	mv	a0,s1
    80002a64:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002a68:	02000513          	li	a0,32
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	370080e7          	jalr	880(ra) # 80002ddc <_Znwm>
    80002a74:	00050493          	mv	s1,a0
    80002a78:	00000613          	li	a2,0
    80002a7c:	00000597          	auipc	a1,0x0
    80002a80:	d2c58593          	addi	a1,a1,-724 # 800027a8 <_ZL8echoFuncPv>
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	410080e7          	jalr	1040(ra) # 80002e94 <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	464080e7          	jalr	1124(ra) # 80002ef4 <_ZN6Thread5startEv>
    while (true) {}
    80002a98:	0000006f          	j	80002a98 <userMainCpp+0x2b4>
    80002a9c:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002aa0:	00098513          	mv	a0,s3
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	360080e7          	jalr	864(ra) # 80002e04 <_ZdlPv>
    Semaphore mx(1), done(0);
    80002aac:	fb040513          	addi	a0,s0,-80
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	2f4080e7          	jalr	756(ra) # 80002da4 <_ZN9SemaphoreD1Ev>
    80002ab8:	fc040513          	addi	a0,s0,-64
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	2e8080e7          	jalr	744(ra) # 80002da4 <_ZN9SemaphoreD1Ev>
    80002ac4:	00048513          	mv	a0,s1
    80002ac8:	0000a097          	auipc	ra,0xa
    80002acc:	1e0080e7          	jalr	480(ra) # 8000cca8 <_Unwind_Resume>
    80002ad0:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002ad4:	00090513          	mv	a0,s2
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	32c080e7          	jalr	812(ra) # 80002e04 <_ZdlPv>
    80002ae0:	fcdff06f          	j	80002aac <userMainCpp+0x2c8>
    80002ae4:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002ae8:	00048513          	mv	a0,s1
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	318080e7          	jalr	792(ra) # 80002e04 <_ZdlPv>
    80002af4:	00090493          	mv	s1,s2
    80002af8:	fb5ff06f          	j	80002aac <userMainCpp+0x2c8>
    80002afc:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002b00:	00048513          	mv	a0,s1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	300080e7          	jalr	768(ra) # 80002e04 <_ZdlPv>
    80002b0c:	00090493          	mv	s1,s2
    80002b10:	f9dff06f          	j	80002aac <userMainCpp+0x2c8>
    80002b14:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002b18:	00048513          	mv	a0,s1
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	2e8080e7          	jalr	744(ra) # 80002e04 <_ZdlPv>
    80002b24:	00090493          	mv	s1,s2
    80002b28:	f85ff06f          	j	80002aac <userMainCpp+0x2c8>
    80002b2c:	00050493          	mv	s1,a0
    80002b30:	f7dff06f          	j	80002aac <userMainCpp+0x2c8>
    80002b34:	00050493          	mv	s1,a0
    80002b38:	f81ff06f          	j	80002ab8 <userMainCpp+0x2d4>

0000000080002b3c <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00113423          	sd	ra,8(sp)
    80002b44:	00813023          	sd	s0,0(sp)
    80002b48:	01010413          	addi	s0,sp,16
    80002b4c:	02e00513          	li	a0,46
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	56c080e7          	jalr	1388(ra) # 800030bc <_ZN7Console4putcEc>
    80002b58:	00813083          	ld	ra,8(sp)
    80002b5c:	00013403          	ld	s0,0(sp)
    80002b60:	01010113          	addi	sp,sp,16
    80002b64:	00008067          	ret

0000000080002b68 <_ZN6Worker3runEv>:
    void run() override {
    80002b68:	fe010113          	addi	sp,sp,-32
    80002b6c:	00113c23          	sd	ra,24(sp)
    80002b70:	00813823          	sd	s0,16(sp)
    80002b74:	00913423          	sd	s1,8(sp)
    80002b78:	01213023          	sd	s2,0(sp)
    80002b7c:	02010413          	addi	s0,sp,32
    80002b80:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002b84:	00000913          	li	s2,0
    80002b88:	0500006f          	j	80002bd8 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002b8c:	0284b503          	ld	a0,40(s1)
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	440080e7          	jalr	1088(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002b98:	05b00513          	li	a0,91
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	520080e7          	jalr	1312(ra) # 800030bc <_ZN7Console4putcEc>
    80002ba4:	0204c503          	lbu	a0,32(s1)
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	514080e7          	jalr	1300(ra) # 800030bc <_ZN7Console4putcEc>
    80002bb0:	05d00513          	li	a0,93
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	508080e7          	jalr	1288(ra) # 800030bc <_ZN7Console4putcEc>
            mx->signal();
    80002bbc:	0284b503          	ld	a0,40(s1)
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	43c080e7          	jalr	1084(ra) # 80002ffc <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002bc8:	00200513          	li	a0,2
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	3a4080e7          	jalr	932(ra) # 80002f70 <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002bd4:	0019091b          	addiw	s2,s2,1
    80002bd8:	00200793          	li	a5,2
    80002bdc:	fb27d8e3          	bge	a5,s2,80002b8c <_ZN6Worker3runEv+0x24>
        done->signal();
    80002be0:	0304b503          	ld	a0,48(s1)
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	418080e7          	jalr	1048(ra) # 80002ffc <_ZN9Semaphore6signalEv>
    }
    80002bec:	01813083          	ld	ra,24(sp)
    80002bf0:	01013403          	ld	s0,16(sp)
    80002bf4:	00813483          	ld	s1,8(sp)
    80002bf8:	00013903          	ld	s2,0(sp)
    80002bfc:	02010113          	addi	sp,sp,32
    80002c00:	00008067          	ret

0000000080002c04 <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00113423          	sd	ra,8(sp)
    80002c0c:	00813023          	sd	s0,0(sp)
    80002c10:	01010413          	addi	s0,sp,16
    80002c14:	00009797          	auipc	a5,0x9
    80002c18:	a0478793          	addi	a5,a5,-1532 # 8000b618 <_ZTV6Worker+0x10>
    80002c1c:	00f53023          	sd	a5,0(a0)
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	0ec080e7          	jalr	236(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80002c28:	00813083          	ld	ra,8(sp)
    80002c2c:	00013403          	ld	s0,0(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret

0000000080002c38 <_ZN6WorkerD0Ev>:
    80002c38:	fe010113          	addi	sp,sp,-32
    80002c3c:	00113c23          	sd	ra,24(sp)
    80002c40:	00813823          	sd	s0,16(sp)
    80002c44:	00913423          	sd	s1,8(sp)
    80002c48:	02010413          	addi	s0,sp,32
    80002c4c:	00050493          	mv	s1,a0
    80002c50:	00009797          	auipc	a5,0x9
    80002c54:	9c878793          	addi	a5,a5,-1592 # 8000b618 <_ZTV6Worker+0x10>
    80002c58:	00f53023          	sd	a5,0(a0)
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	0b0080e7          	jalr	176(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80002c64:	00048513          	mv	a0,s1
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	19c080e7          	jalr	412(ra) # 80002e04 <_ZdlPv>
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	02010113          	addi	sp,sp,32
    80002c80:	00008067          	ret

0000000080002c84 <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
    int signal();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    80002c94:	00009797          	auipc	a5,0x9
    80002c98:	c147b783          	ld	a5,-1004(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c9c:	01078793          	addi	a5,a5,16
    80002ca0:	00f53023          	sd	a5,0(a0)
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	068080e7          	jalr	104(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80002cac:	00813083          	ld	ra,8(sp)
    80002cb0:	00013403          	ld	s0,0(sp)
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00008067          	ret

0000000080002cbc <_ZN6TickerD0Ev>:
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00113c23          	sd	ra,24(sp)
    80002cc4:	00813823          	sd	s0,16(sp)
    80002cc8:	00913423          	sd	s1,8(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    80002cd0:	00050493          	mv	s1,a0
    80002cd4:	00009797          	auipc	a5,0x9
    80002cd8:	bd47b783          	ld	a5,-1068(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002cdc:	01078793          	addi	a5,a5,16
    80002ce0:	00f53023          	sd	a5,0(a0)
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	028080e7          	jalr	40(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80002cec:	00048513          	mv	a0,s1
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	114080e7          	jalr	276(ra) # 80002e04 <_ZdlPv>
    80002cf8:	01813083          	ld	ra,24(sp)
    80002cfc:	01013403          	ld	s0,16(sp)
    80002d00:	00813483          	ld	s1,8(sp)
    80002d04:	02010113          	addi	sp,sp,32
    80002d08:	00008067          	ret

0000000080002d0c <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80002d0c:	ff010113          	addi	sp,sp,-16
    80002d10:	00813423          	sd	s0,8(sp)
    80002d14:	01010413          	addi	s0,sp,16
    80002d18:	00813403          	ld	s0,8(sp)
    80002d1c:	01010113          	addi	sp,sp,16
    80002d20:	00008067          	ret

0000000080002d24 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80002d24:	ff010113          	addi	sp,sp,-16
    80002d28:	00113423          	sd	ra,8(sp)
    80002d2c:	00813023          	sd	s0,0(sp)
    80002d30:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80002d34:	00053783          	ld	a5,0(a0)
    80002d38:	0107b783          	ld	a5,16(a5)
    80002d3c:	000780e7          	jalr	a5
}
    80002d40:	00813083          	ld	ra,8(sp)
    80002d44:	00013403          	ld	s0,0(sp)
    80002d48:	01010113          	addi	sp,sp,16
    80002d4c:	00008067          	ret

0000000080002d50 <_ZN14PeriodicThread3runEv>:
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    80002d50:	fe010113          	addi	sp,sp,-32
    80002d54:	00113c23          	sd	ra,24(sp)
    80002d58:	00813823          	sd	s0,16(sp)
    80002d5c:	00913423          	sd	s1,8(sp)
    80002d60:	02010413          	addi	s0,sp,32
    80002d64:	00050493          	mv	s1,a0
    while (period) {
    80002d68:	0204b783          	ld	a5,32(s1)
    80002d6c:	02078263          	beqz	a5,80002d90 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002d70:	0004b783          	ld	a5,0(s1)
    80002d74:	0187b783          	ld	a5,24(a5)
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	000780e7          	jalr	a5
        time_sleep(period);
    80002d80:	0204b503          	ld	a0,32(s1)
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	8ec080e7          	jalr	-1812(ra) # 80001670 <time_sleep>
    while (period) {
    80002d8c:	fddff06f          	j	80002d68 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002d90:	01813083          	ld	ra,24(sp)
    80002d94:	01013403          	ld	s0,16(sp)
    80002d98:	00813483          	ld	s1,8(sp)
    80002d9c:	02010113          	addi	sp,sp,32
    80002da0:	00008067          	ret

0000000080002da4 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00113423          	sd	ra,8(sp)
    80002dac:	00813023          	sd	s0,0(sp)
    80002db0:	01010413          	addi	s0,sp,16
    80002db4:	00009797          	auipc	a5,0x9
    80002db8:	8ec78793          	addi	a5,a5,-1812 # 8000b6a0 <_ZTV9Semaphore+0x10>
    80002dbc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002dc0:	00853503          	ld	a0,8(a0)
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	90c080e7          	jalr	-1780(ra) # 800016d0 <sem_close>
}
    80002dcc:	00813083          	ld	ra,8(sp)
    80002dd0:	00013403          	ld	s0,0(sp)
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00008067          	ret

0000000080002ddc <_Znwm>:
void* operator new(size_t size) {
    80002ddc:	ff010113          	addi	sp,sp,-16
    80002de0:	00113423          	sd	ra,8(sp)
    80002de4:	00813023          	sd	s0,0(sp)
    80002de8:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80002dec:	ffffe097          	auipc	ra,0xffffe
    80002df0:	768080e7          	jalr	1896(ra) # 80001554 <mem_alloc>
    80002df4:	00813083          	ld	ra,8(sp)
    80002df8:	00013403          	ld	s0,0(sp)
    80002dfc:	01010113          	addi	sp,sp,16
    80002e00:	00008067          	ret

0000000080002e04 <_ZdlPv>:
void  operator delete(void* p)  {
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00113423          	sd	ra,8(sp)
    80002e0c:	00813023          	sd	s0,0(sp)
    80002e10:	01010413          	addi	s0,sp,16
    mem_free(p); }
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	76c080e7          	jalr	1900(ra) # 80001580 <mem_free>
    80002e1c:	00813083          	ld	ra,8(sp)
    80002e20:	00013403          	ld	s0,0(sp)
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret

0000000080002e2c <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00113423          	sd	ra,8(sp)
    80002e34:	00813023          	sd	s0,0(sp)
    80002e38:	01010413          	addi	s0,sp,16
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	fc8080e7          	jalr	-56(ra) # 80002e04 <_ZdlPv>
    80002e44:	00813083          	ld	ra,8(sp)
    80002e48:	00013403          	ld	s0,0(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret

0000000080002e54 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002e54:	fe010113          	addi	sp,sp,-32
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00813823          	sd	s0,16(sp)
    80002e60:	00913423          	sd	s1,8(sp)
    80002e64:	02010413          	addi	s0,sp,32
    80002e68:	00050493          	mv	s1,a0
}
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	f38080e7          	jalr	-200(ra) # 80002da4 <_ZN9SemaphoreD1Ev>
    80002e74:	00048513          	mv	a0,s1
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	f8c080e7          	jalr	-116(ra) # 80002e04 <_ZdlPv>
    80002e80:	01813083          	ld	ra,24(sp)
    80002e84:	01013403          	ld	s0,16(sp)
    80002e88:	00813483          	ld	s1,8(sp)
    80002e8c:	02010113          	addi	sp,sp,32
    80002e90:	00008067          	ret

0000000080002e94 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    80002e94:	ff010113          	addi	sp,sp,-16
    80002e98:	00813423          	sd	s0,8(sp)
    80002e9c:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    80002ea0:	00008797          	auipc	a5,0x8
    80002ea4:	7d878793          	addi	a5,a5,2008 # 8000b678 <_ZTV6Thread+0x10>
    80002ea8:	00f53023          	sd	a5,0(a0)
    80002eac:	00053423          	sd	zero,8(a0)
    80002eb0:	00b53823          	sd	a1,16(a0)
    80002eb4:	00c53c23          	sd	a2,24(a0)
    80002eb8:	00813403          	ld	s0,8(sp)
    80002ebc:	01010113          	addi	sp,sp,16
    80002ec0:	00008067          	ret

0000000080002ec4 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    80002ec4:	ff010113          	addi	sp,sp,-16
    80002ec8:	00813423          	sd	s0,8(sp)
    80002ecc:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    80002ed0:	00008797          	auipc	a5,0x8
    80002ed4:	7a878793          	addi	a5,a5,1960 # 8000b678 <_ZTV6Thread+0x10>
    80002ed8:	00f53023          	sd	a5,0(a0)
    80002edc:	00053423          	sd	zero,8(a0)
    80002ee0:	00053823          	sd	zero,16(a0)
    80002ee4:	00053c23          	sd	zero,24(a0)
    80002ee8:	00813403          	ld	s0,8(sp)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret

0000000080002ef4 <_ZN6Thread5startEv>:
int Thread::start() {
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00113423          	sd	ra,8(sp)
    80002efc:	00813023          	sd	s0,0(sp)
    80002f00:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    80002f04:	01053783          	ld	a5,16(a0)
    80002f08:	02078663          	beqz	a5,80002f34 <_ZN6Thread5startEv+0x40>
    80002f0c:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    80002f10:	02078863          	beqz	a5,80002f40 <_ZN6Thread5startEv+0x4c>
    80002f14:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    80002f18:	00850513          	addi	a0,a0,8
    80002f1c:	ffffe097          	auipc	ra,0xffffe
    80002f20:	690080e7          	jalr	1680(ra) # 800015ac <thread_create>
}
    80002f24:	00813083          	ld	ra,8(sp)
    80002f28:	00013403          	ld	s0,0(sp)
    80002f2c:	01010113          	addi	sp,sp,16
    80002f30:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80002f34:	00000597          	auipc	a1,0x0
    80002f38:	df058593          	addi	a1,a1,-528 # 80002d24 <_ZN6Thread7runBodyEPv>
    80002f3c:	fd5ff06f          	j	80002f10 <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    80002f40:	00050613          	mv	a2,a0
    80002f44:	fd5ff06f          	j	80002f18 <_ZN6Thread5startEv+0x24>

0000000080002f48 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002f48:	ff010113          	addi	sp,sp,-16
    80002f4c:	00113423          	sd	ra,8(sp)
    80002f50:	00813023          	sd	s0,0(sp)
    80002f54:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002f58:	ffffe097          	auipc	ra,0xffffe
    80002f5c:	6f8080e7          	jalr	1784(ra) # 80001650 <thread_dispatch>
}
    80002f60:	00813083          	ld	ra,8(sp)
    80002f64:	00013403          	ld	s0,0(sp)
    80002f68:	01010113          	addi	sp,sp,16
    80002f6c:	00008067          	ret

0000000080002f70 <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    80002f70:	ff010113          	addi	sp,sp,-16
    80002f74:	00113423          	sd	ra,8(sp)
    80002f78:	00813023          	sd	s0,0(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002f80:	ffffe097          	auipc	ra,0xffffe
    80002f84:	6f0080e7          	jalr	1776(ra) # 80001670 <time_sleep>
}
    80002f88:	00813083          	ld	ra,8(sp)
    80002f8c:	00013403          	ld	s0,0(sp)
    80002f90:	01010113          	addi	sp,sp,16
    80002f94:	00008067          	ret

0000000080002f98 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002f98:	ff010113          	addi	sp,sp,-16
    80002f9c:	00113423          	sd	ra,8(sp)
    80002fa0:	00813023          	sd	s0,0(sp)
    80002fa4:	01010413          	addi	s0,sp,16
    80002fa8:	00008797          	auipc	a5,0x8
    80002fac:	6f878793          	addi	a5,a5,1784 # 8000b6a0 <_ZTV9Semaphore+0x10>
    80002fb0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002fb4:	00850513          	addi	a0,a0,8
    80002fb8:	ffffe097          	auipc	ra,0xffffe
    80002fbc:	6e0080e7          	jalr	1760(ra) # 80001698 <sem_open>
}
    80002fc0:	00813083          	ld	ra,8(sp)
    80002fc4:	00013403          	ld	s0,0(sp)
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	00008067          	ret

0000000080002fd0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00113423          	sd	ra,8(sp)
    80002fd8:	00813023          	sd	s0,0(sp)
    80002fdc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002fe0:	00853503          	ld	a0,8(a0)
    80002fe4:	ffffe097          	auipc	ra,0xffffe
    80002fe8:	714080e7          	jalr	1812(ra) # 800016f8 <sem_wait>
}
    80002fec:	00813083          	ld	ra,8(sp)
    80002ff0:	00013403          	ld	s0,0(sp)
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00008067          	ret

0000000080002ffc <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	00813023          	sd	s0,0(sp)
    80003008:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000300c:	00853503          	ld	a0,8(a0)
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	710080e7          	jalr	1808(ra) # 80001720 <sem_signal>
}
    80003018:	00813083          	ld	ra,8(sp)
    8000301c:	00013403          	ld	s0,0(sp)
    80003020:	01010113          	addi	sp,sp,16
    80003024:	00008067          	ret

0000000080003028 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    80003028:	fe010113          	addi	sp,sp,-32
    8000302c:	00113c23          	sd	ra,24(sp)
    80003030:	00813823          	sd	s0,16(sp)
    80003034:	00913423          	sd	s1,8(sp)
    80003038:	01213023          	sd	s2,0(sp)
    8000303c:	02010413          	addi	s0,sp,32
    80003040:	00050493          	mv	s1,a0
    80003044:	00058913          	mv	s2,a1
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	e7c080e7          	jalr	-388(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80003050:	00008797          	auipc	a5,0x8
    80003054:	67078793          	addi	a5,a5,1648 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80003058:	00f4b023          	sd	a5,0(s1)
    8000305c:	0324b023          	sd	s2,32(s1)
    80003060:	01813083          	ld	ra,24(sp)
    80003064:	01013403          	ld	s0,16(sp)
    80003068:	00813483          	ld	s1,8(sp)
    8000306c:	00013903          	ld	s2,0(sp)
    80003070:	02010113          	addi	sp,sp,32
    80003074:	00008067          	ret

0000000080003078 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    80003078:	ff010113          	addi	sp,sp,-16
    8000307c:	00813423          	sd	s0,8(sp)
    80003080:	01010413          	addi	s0,sp,16
    80003084:	02053023          	sd	zero,32(a0)
    80003088:	00813403          	ld	s0,8(sp)
    8000308c:	01010113          	addi	sp,sp,16
    80003090:	00008067          	ret

0000000080003094 <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    80003094:	ff010113          	addi	sp,sp,-16
    80003098:	00113423          	sd	ra,8(sp)
    8000309c:	00813023          	sd	s0,0(sp)
    800030a0:	01010413          	addi	s0,sp,16
    800030a4:	ffffe097          	auipc	ra,0xffffe
    800030a8:	6dc080e7          	jalr	1756(ra) # 80001780 <getc>
    800030ac:	00813083          	ld	ra,8(sp)
    800030b0:	00013403          	ld	s0,0(sp)
    800030b4:	01010113          	addi	sp,sp,16
    800030b8:	00008067          	ret

00000000800030bc <_ZN7Console4putcEc>:
    800030bc:	ff010113          	addi	sp,sp,-16
    800030c0:	00113423          	sd	ra,8(sp)
    800030c4:	00813023          	sd	s0,0(sp)
    800030c8:	01010413          	addi	s0,sp,16
    800030cc:	ffffe097          	auipc	ra,0xffffe
    800030d0:	6d8080e7          	jalr	1752(ra) # 800017a4 <putc>
    800030d4:	00813083          	ld	ra,8(sp)
    800030d8:	00013403          	ld	s0,0(sp)
    800030dc:	01010113          	addi	sp,sp,16
    800030e0:	00008067          	ret

00000000800030e4 <_ZN6Thread3runEv>:
    int start();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    800030e4:	ff010113          	addi	sp,sp,-16
    800030e8:	00813423          	sd	s0,8(sp)
    800030ec:	01010413          	addi	s0,sp,16
    800030f0:	00813403          	ld	s0,8(sp)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret

00000000800030fc <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    800030fc:	ff010113          	addi	sp,sp,-16
    80003100:	00813423          	sd	s0,8(sp)
    80003104:	01010413          	addi	s0,sp,16
    80003108:	00813403          	ld	s0,8(sp)
    8000310c:	01010113          	addi	sp,sp,16
    80003110:	00008067          	ret

0000000080003114 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80003114:	ff010113          	addi	sp,sp,-16
    80003118:	00813423          	sd	s0,8(sp)
    8000311c:	01010413          	addi	s0,sp,16
    80003120:	00008797          	auipc	a5,0x8
    80003124:	5a078793          	addi	a5,a5,1440 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80003128:	00f53023          	sd	a5,0(a0)
    8000312c:	00813403          	ld	s0,8(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret

0000000080003138 <_ZN14PeriodicThreadD0Ev>:
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00113423          	sd	ra,8(sp)
    80003140:	00813023          	sd	s0,0(sp)
    80003144:	01010413          	addi	s0,sp,16
    80003148:	00008797          	auipc	a5,0x8
    8000314c:	57878793          	addi	a5,a5,1400 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80003150:	00f53023          	sd	a5,0(a0)
    80003154:	00000097          	auipc	ra,0x0
    80003158:	cb0080e7          	jalr	-848(ra) # 80002e04 <_ZdlPv>
    8000315c:	00813083          	ld	ra,8(sp)
    80003160:	00013403          	ld	s0,0(sp)
    80003164:	01010113          	addi	sp,sp,16
    80003168:	00008067          	ret

000000008000316c <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    8000316c:	ff010113          	addi	sp,sp,-16
    80003170:	00813423          	sd	s0,8(sp)
    80003174:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80003178:	00008797          	auipc	a5,0x8
    8000317c:	7507b783          	ld	a5,1872(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003180:	0007b783          	ld	a5,0(a5)
    80003184:	00008717          	auipc	a4,0x8
    80003188:	71c73703          	ld	a4,1820(a4) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000318c:	00073703          	ld	a4,0(a4)
    80003190:	40e787b3          	sub	a5,a5,a4
    80003194:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    80003198:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    8000319c:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    800031a0:	00100693          	li	a3,1
    800031a4:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    800031a8:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    800031ac:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    800031b0:	00073423          	sd	zero,8(a4)
}
    800031b4:	00813403          	ld	s0,8(sp)
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret

00000000800031c0 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    800031c0:	00009797          	auipc	a5,0x9
    800031c4:	9c07c783          	lbu	a5,-1600(a5) # 8000bb80 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    800031c8:	00078863          	beqz	a5,800031d8 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    800031cc:	00009517          	auipc	a0,0x9
    800031d0:	9bc50513          	addi	a0,a0,-1604 # 8000bb88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800031d4:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00113423          	sd	ra,8(sp)
    800031e0:	00813023          	sd	s0,0(sp)
    800031e4:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    800031e8:	00009517          	auipc	a0,0x9
    800031ec:	9a050513          	addi	a0,a0,-1632 # 8000bb88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	f7c080e7          	jalr	-132(ra) # 8000316c <_ZN15MemoryAllocatorC1Ev>
    800031f8:	00100793          	li	a5,1
    800031fc:	00009717          	auipc	a4,0x9
    80003200:	98f70223          	sb	a5,-1660(a4) # 8000bb80 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80003204:	00009517          	auipc	a0,0x9
    80003208:	98450513          	addi	a0,a0,-1660 # 8000bb88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000320c:	00813083          	ld	ra,8(sp)
    80003210:	00013403          	ld	s0,0(sp)
    80003214:	01010113          	addi	sp,sp,16
    80003218:	00008067          	ret

000000008000321c <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    8000321c:	ff010113          	addi	sp,sp,-16
    80003220:	00813423          	sd	s0,8(sp)
    80003224:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    80003228:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000322c:	03f58593          	addi	a1,a1,63
    80003230:	0065d593          	srli	a1,a1,0x6
    80003234:	0080006f          	j	8000323c <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80003238:	00053503          	ld	a0,0(a0)
    while(curr){
    8000323c:	06050863          	beqz	a0,800032ac <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80003240:	01054703          	lbu	a4,16(a0)
    80003244:	00100793          	li	a5,1
    80003248:	fef718e3          	bne	a4,a5,80003238 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    8000324c:	01853703          	ld	a4,24(a0)
    80003250:	00158793          	addi	a5,a1,1
    80003254:	fef762e3          	bltu	a4,a5,80003238 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80003258:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    8000325c:	04e7f663          	bgeu	a5,a4,800032a8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80003260:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80003264:	00679793          	slli	a5,a5,0x6
    80003268:	00f507b3          	add	a5,a0,a5
    8000326c:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80003270:	00100713          	li	a4,1
    80003274:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80003278:	01853703          	ld	a4,24(a0)
    8000327c:	40b70733          	sub	a4,a4,a1
    80003280:	fff70713          	addi	a4,a4,-1
    80003284:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003288:	00d7b023          	sd	a3,0(a5)
                if(old)
    8000328c:	00068463          	beqz	a3,80003294 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80003290:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80003294:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003298:	01853703          	ld	a4,24(a0)
    8000329c:	0187b783          	ld	a5,24(a5)
    800032a0:	40f707b3          	sub	a5,a4,a5
    800032a4:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    800032a8:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    800032c4:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    800032c8:	08070a63          	beqz	a4,8000335c <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    800032cc:	00100793          	li	a5,1
    800032d0:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    800032d4:	fc05b783          	ld	a5,-64(a1)
    800032d8:	00078863          	beqz	a5,800032e8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    800032dc:	0107c603          	lbu	a2,16(a5)
    800032e0:	00100693          	li	a3,1
    800032e4:	02d60463          	beq	a2,a3,8000330c <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    800032e8:	fc85b783          	ld	a5,-56(a1)
    800032ec:	06078c63          	beqz	a5,80003364 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    800032f0:	0107c683          	lbu	a3,16(a5)
    800032f4:	00100713          	li	a4,1
    800032f8:	02e68e63          	beq	a3,a4,80003334 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    800032fc:	00000513          	li	a0,0
}
    80003300:	00813403          	ld	s0,8(sp)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret
        curr->size +=next->size;
    8000330c:	0187b603          	ld	a2,24(a5)
    80003310:	fd85b683          	ld	a3,-40(a1)
    80003314:	00c686b3          	add	a3,a3,a2
    80003318:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    8000331c:	0007b683          	ld	a3,0(a5)
    80003320:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    80003324:	0007b783          	ld	a5,0(a5)
    80003328:	fc0780e3          	beqz	a5,800032e8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    8000332c:	00e7b423          	sd	a4,8(a5)
    80003330:	fb9ff06f          	j	800032e8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80003334:	fd85b683          	ld	a3,-40(a1)
    80003338:	0187b703          	ld	a4,24(a5)
    8000333c:	00d70733          	add	a4,a4,a3
    80003340:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80003344:	fc05b703          	ld	a4,-64(a1)
    80003348:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    8000334c:	02070063          	beqz	a4,8000336c <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80003350:	00f73423          	sd	a5,8(a4)
    return 0;
    80003354:	00000513          	li	a0,0
    80003358:	fa9ff06f          	j	80003300 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    8000335c:	fff00513          	li	a0,-1
    80003360:	fa1ff06f          	j	80003300 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80003364:	00000513          	li	a0,0
    80003368:	f99ff06f          	j	80003300 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    8000336c:	00000513          	li	a0,0
    80003370:	f91ff06f          	j	80003300 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080003374 <HandleInterupt>:
#include "Konsole.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    80003374:	fc010113          	addi	sp,sp,-64
    80003378:	02113c23          	sd	ra,56(sp)
    8000337c:	02813823          	sd	s0,48(sp)
    80003380:	02913423          	sd	s1,40(sp)
    80003384:	03213023          	sd	s2,32(sp)
    80003388:	01313c23          	sd	s3,24(sp)
    8000338c:	01413823          	sd	s4,16(sp)
    80003390:	01513423          	sd	s5,8(sp)
    80003394:	01613023          	sd	s6,0(sp)
    80003398:	04010413          	addi	s0,sp,64
    8000339c:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800033a0:	142029f3          	csrr	s3,scause

    KThread* current = Scheduler::GetRunning();
    800033a4:	fffff097          	auipc	ra,0xfffff
    800033a8:	ae0080e7          	jalr	-1312(ra) # 80001e84 <_ZN9Scheduler10GetRunningEv>
    800033ac:	00050493          	mv	s1,a0
    if (current != nullptr) {
    800033b0:	04050863          	beqz	a0,80003400 <HandleInterupt+0x8c>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    800033b4:	00000713          	li	a4,0
    800033b8:	01f00793          	li	a5,31
    800033bc:	02e7c063          	blt	a5,a4,800033dc <HandleInterupt+0x68>
    800033c0:	00371793          	slli	a5,a4,0x3
    800033c4:	00f906b3          	add	a3,s2,a5
    800033c8:	0006b683          	ld	a3,0(a3)
    800033cc:	00f487b3          	add	a5,s1,a5
    800033d0:	04d7b023          	sd	a3,64(a5)
    800033d4:	0017071b          	addiw	a4,a4,1
    800033d8:	fe1ff06f          	j	800033b8 <HandleInterupt+0x44>
        ctx.x[2] = (size_t)frame + 256;
    800033dc:	10090793          	addi	a5,s2,256
    800033e0:	04f4b823          	sd	a5,80(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    800033e4:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800033e8:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    800033ec:	ff898793          	addi	a5,s3,-8
    800033f0:	00100613          	li	a2,1
    800033f4:	06f67a63          	bgeu	a2,a5,80003468 <HandleInterupt+0xf4>
        ctx.sepc    = sepc;
    800033f8:	14e4b023          	sd	a4,320(s1)
        ctx.sstatus = sstatus;
    800033fc:	14d4b423          	sd	a3,328(s1)
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
    80003400:	fff00793          	li	a5,-1
    80003404:	03f79793          	slli	a5,a5,0x3f
    80003408:	00178793          	addi	a5,a5,1
    8000340c:	06f98263          	beq	s3,a5,80003470 <HandleInterupt+0xfc>
        Scheduler::timerTick(current);
        return;
    }

    if (scause == 0x8000000000000009UL) {
    80003410:	fff00793          	li	a5,-1
    80003414:	03f79793          	slli	a5,a5,0x3f
    80003418:	00978793          	addi	a5,a5,9
    8000341c:	06f98263          	beq	s3,a5,80003480 <HandleInterupt+0x10c>
        Konsole::handleInterrupt();
        return;
    }

    if (scause != 8 && scause != 9) {
    80003420:	ff898793          	addi	a5,s3,-8
    80003424:	00100713          	li	a4,1
    80003428:	06f76263          	bltu	a4,a5,8000348c <HandleInterupt+0x118>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000342c:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80003430:	00478793          	addi	a5,a5,4
    80003434:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    80003438:	05093783          	ld	a5,80(s2)
    switch (code) {
    8000343c:	04200713          	li	a4,66
    80003440:	08f76263          	bltu	a4,a5,800034c4 <HandleInterupt+0x150>
    80003444:	04078c63          	beqz	a5,8000349c <HandleInterupt+0x128>
    80003448:	04f76a63          	bltu	a4,a5,8000349c <HandleInterupt+0x128>
    8000344c:	00279793          	slli	a5,a5,0x2
    80003450:	00006717          	auipc	a4,0x6
    80003454:	bd070713          	addi	a4,a4,-1072 # 80009020 <CONSOLE_STATUS+0x10>
    80003458:	00e787b3          	add	a5,a5,a4
    8000345c:	0007a783          	lw	a5,0(a5)
    80003460:	00e787b3          	add	a5,a5,a4
    80003464:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    80003468:	00470713          	addi	a4,a4,4
    8000346c:	f8dff06f          	j	800033f8 <HandleInterupt+0x84>
        Scheduler::timerTick(current);
    80003470:	00048513          	mv	a0,s1
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	cf0080e7          	jalr	-784(ra) # 80002164 <_ZN9Scheduler9timerTickEP7KThread>
        return;
    8000347c:	0200006f          	j	8000349c <HandleInterupt+0x128>
        Konsole::handleInterrupt();
    80003480:	fffff097          	auipc	ra,0xfffff
    80003484:	100080e7          	jalr	256(ra) # 80002580 <_ZN7Konsole15handleInterruptEv>
        return;
    80003488:	0140006f          	j	8000349c <HandleInterupt+0x128>
        if ((scause >> 63) == 0) {  // exception, not interrupt
    8000348c:	0009c863          	bltz	s3,8000349c <HandleInterupt+0x128>
            __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003490:	141027f3          	csrr	a5,sepc
            __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80003494:	00478793          	addi	a5,a5,4
    80003498:	14179073          	csrw	sepc,a5
        default: {
            break;
        }
    }
    return;
}
    8000349c:	03813083          	ld	ra,56(sp)
    800034a0:	03013403          	ld	s0,48(sp)
    800034a4:	02813483          	ld	s1,40(sp)
    800034a8:	02013903          	ld	s2,32(sp)
    800034ac:	01813983          	ld	s3,24(sp)
    800034b0:	01013a03          	ld	s4,16(sp)
    800034b4:	00813a83          	ld	s5,8(sp)
    800034b8:	00013b03          	ld	s6,0(sp)
    800034bc:	04010113          	addi	sp,sp,64
    800034c0:	00008067          	ret
    switch (code) {
    800034c4:	0ff00713          	li	a4,255
    800034c8:	fce79ae3          	bne	a5,a4,8000349c <HandleInterupt+0x128>
            *((volatile uint32*)0x100000UL) = 0x5555;
    800034cc:	00100737          	lui	a4,0x100
    800034d0:	000057b7          	lui	a5,0x5
    800034d4:	5557879b          	addiw	a5,a5,1365
    800034d8:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    800034dc:	0000006f          	j	800034dc <HandleInterupt+0x168>
            size_t size = frame[11];
    800034e0:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	cdc080e7          	jalr	-804(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    800034ec:	00048593          	mv	a1,s1
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	d2c080e7          	jalr	-724(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    800034f8:	00050513          	mv	a0,a0
            break;
    800034fc:	fa1ff06f          	j	8000349c <HandleInterupt+0x128>
            void* ptr = (void*)frame[11];
    80003500:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80003504:	00000097          	auipc	ra,0x0
    80003508:	cbc080e7          	jalr	-836(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    8000350c:	00048593          	mv	a1,s1
    80003510:	00000097          	auipc	ra,0x0
    80003514:	da8080e7          	jalr	-600(ra) # 800032b8 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80003518:	f85ff06f          	j	8000349c <HandleInterupt+0x128>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    8000351c:	05893983          	ld	s3,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    80003520:	06093a83          	ld	s5,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    80003524:	06893a03          	ld	s4,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    80003528:	07093b03          	ld	s6,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	c94080e7          	jalr	-876(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    80003534:	15800593          	li	a1,344
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	ce4080e7          	jalr	-796(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003540:	00050913          	mv	s2,a0
            if (!mem) {
    80003544:	04050463          	beqz	a0,8000358c <HandleInterupt+0x218>
            t->init();
    80003548:	ffffe097          	auipc	ra,0xffffe
    8000354c:	73c080e7          	jalr	1852(ra) # 80001c84 <_ZN7KThread4initEv>
    80003550:	01593023          	sd	s5,0(s2)
    80003554:	01493423          	sd	s4,8(s2)
            t->setup(current, stack_space);
    80003558:	000b0613          	mv	a2,s6
    8000355c:	00048593          	mv	a1,s1
    80003560:	00090513          	mv	a0,s2
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	8c4080e7          	jalr	-1852(ra) # 80001e28 <_ZN7KThread5setupEPS_Pm>
            *handle = reinterpret_cast<thread_t>(t);
    8000356c:	0129b023          	sd	s2,0(s3)
            Scheduler::Put(t);
    80003570:	00090513          	mv	a0,s2
    80003574:	fffff097          	auipc	ra,0xfffff
    80003578:	a48080e7          	jalr	-1464(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    8000357c:	00048463          	beqz	s1,80003584 <HandleInterupt+0x210>
    80003580:	0804b823          	sd	zero,144(s1)
            __asm__ volatile("li a0, 0");
    80003584:	00000513          	li	a0,0
            break;
    80003588:	f15ff06f          	j	8000349c <HandleInterupt+0x128>
                if (current) {
    8000358c:	f00488e3          	beqz	s1,8000349c <HandleInterupt+0x128>
                    current->threadContext.x[10] = (size_t)-1;
    80003590:	fff00793          	li	a5,-1
    80003594:	08f4b823          	sd	a5,144(s1)
                    restoreContext(current->getContext());
    80003598:	00048513          	mv	a0,s1
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	7b0080e7          	jalr	1968(ra) # 80001d4c <_ZN7KThread10getContextEv>
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	af0080e7          	jalr	-1296(ra) # 80001094 <restoreContext>
                return;
    800035ac:	ef1ff06f          	j	8000349c <HandleInterupt+0x128>
            Scheduler::ThreadExit(current);
    800035b0:	00048513          	mv	a0,s1
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	9b4080e7          	jalr	-1612(ra) # 80001f68 <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    800035bc:	ee1ff06f          	j	8000349c <HandleInterupt+0x128>
            KThread* next = Scheduler::GetNext();
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	920080e7          	jalr	-1760(ra) # 80001ee0 <_ZN9Scheduler7GetNextEv>
    800035c8:	00050913          	mv	s2,a0
            if (next == nullptr) {
    800035cc:	02050663          	beqz	a0,800035f8 <HandleInterupt+0x284>
            if (current) current->threadContext.x[10] = 0;
    800035d0:	00048463          	beqz	s1,800035d8 <HandleInterupt+0x264>
    800035d4:	0804b823          	sd	zero,144(s1)
            Scheduler::Put(current);
    800035d8:	00048513          	mv	a0,s1
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	9e0080e7          	jalr	-1568(ra) # 80001fbc <_ZN9Scheduler3PutEP7KThread>
            Scheduler::yield(current, next);
    800035e4:	00090593          	mv	a1,s2
    800035e8:	00048513          	mv	a0,s1
    800035ec:	fffff097          	auipc	ra,0xfffff
    800035f0:	8b8080e7          	jalr	-1864(ra) # 80001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800035f4:	ea9ff06f          	j	8000349c <HandleInterupt+0x128>
                __asm__ volatile("li a0, 0");
    800035f8:	00000513          	li	a0,0
                break;
    800035fc:	ea1ff06f          	j	8000349c <HandleInterupt+0x128>
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
    80003600:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)frame[12];
    80003604:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	bb8080e7          	jalr	-1096(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    80003610:	01800593          	li	a1,24
    80003614:	00000097          	auipc	ra,0x0
    80003618:	c08080e7          	jalr	-1016(ra) # 8000321c <_ZN15MemoryAllocator16AllocateFragmentEm>
    8000361c:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003620:	00050e63          	beqz	a0,8000363c <HandleInterupt+0x2c8>
            semaphore->init(initialValue);
    80003624:	00090593          	mv	a1,s2
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	29c080e7          	jalr	668(ra) # 800018c4 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    80003630:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80003634:	00000513          	li	a0,0
            break;
    80003638:	e65ff06f          	j	8000349c <HandleInterupt+0x128>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    8000363c:	fff00513          	li	a0,-1
    80003640:	e5dff06f          	j	8000349c <HandleInterupt+0x128>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(frame[11]);
    80003644:	05893483          	ld	s1,88(s2)
            semaphore->close();
    80003648:	00048513          	mv	a0,s1
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	574080e7          	jalr	1396(ra) # 80001bc0 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80003654:	00000097          	auipc	ra,0x0
    80003658:	b6c080e7          	jalr	-1172(ra) # 800031c0 <_ZN15MemoryAllocator11GetInstanceEv>
    8000365c:	00048593          	mv	a1,s1
    80003660:	00000097          	auipc	ra,0x0
    80003664:	c58080e7          	jalr	-936(ra) # 800032b8 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80003668:	00000513          	li	a0,0
            break;
    8000366c:	e31ff06f          	j	8000349c <HandleInterupt+0x128>
            int result = semaphore->wait(current);
    80003670:	00048593          	mv	a1,s1
    80003674:	05893503          	ld	a0,88(s2)
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	384080e7          	jalr	900(ra) # 800019fc <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003680:	00a04663          	bgtz	a0,8000368c <HandleInterupt+0x318>
    80003684:	00050513          	mv	a0,a0
    80003688:	e15ff06f          	j	8000349c <HandleInterupt+0x128>
            KThread* next = Scheduler::GetNext();
    8000368c:	fffff097          	auipc	ra,0xfffff
    80003690:	854080e7          	jalr	-1964(ra) # 80001ee0 <_ZN9Scheduler7GetNextEv>
    80003694:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80003698:	00050a63          	beqz	a0,800036ac <HandleInterupt+0x338>
            Scheduler::yield(current, next);
    8000369c:	00048513          	mv	a0,s1
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	804080e7          	jalr	-2044(ra) # 80001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800036a8:	df5ff06f          	j	8000349c <HandleInterupt+0x128>
            if (next == nullptr) { while(true){} }
    800036ac:	0000006f          	j	800036ac <HandleInterupt+0x338>
            semaphore->signal();
    800036b0:	05893503          	ld	a0,88(s2)
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	3a8080e7          	jalr	936(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    800036bc:	00000513          	li	a0,0
            break;
    800036c0:	dddff06f          	j	8000349c <HandleInterupt+0x128>
            int result = semaphore->waitN(current, n);
    800036c4:	06092603          	lw	a2,96(s2)
    800036c8:	00048593          	mv	a1,s1
    800036cc:	05893503          	ld	a0,88(s2)
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	408080e7          	jalr	1032(ra) # 80001ad8 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    800036d8:	00a04663          	bgtz	a0,800036e4 <HandleInterupt+0x370>
    800036dc:	00050513          	mv	a0,a0
    800036e0:	dbdff06f          	j	8000349c <HandleInterupt+0x128>
            KThread* next = Scheduler::GetNext();
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	7fc080e7          	jalr	2044(ra) # 80001ee0 <_ZN9Scheduler7GetNextEv>
    800036ec:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    800036f0:	00050a63          	beqz	a0,80003704 <HandleInterupt+0x390>
            Scheduler::yield(current, next);
    800036f4:	00048513          	mv	a0,s1
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	7ac080e7          	jalr	1964(ra) # 80001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003700:	d9dff06f          	j	8000349c <HandleInterupt+0x128>
            if (next == nullptr) { while(true){} }
    80003704:	0000006f          	j	80003704 <HandleInterupt+0x390>
            semaphore->signalN(n);
    80003708:	06092583          	lw	a1,96(s2)
    8000370c:	05893503          	ld	a0,88(s2)
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	438080e7          	jalr	1080(ra) # 80001b48 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80003718:	00000513          	li	a0,0
            break;
    8000371c:	d81ff06f          	j	8000349c <HandleInterupt+0x128>
            time_t dur = (time_t)frame[11];
    80003720:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80003724:	00048463          	beqz	s1,8000372c <HandleInterupt+0x3b8>
    80003728:	0804b823          	sd	zero,144(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    8000372c:	00059663          	bnez	a1,80003738 <HandleInterupt+0x3c4>
    80003730:	00000513          	li	a0,0
    80003734:	d69ff06f          	j	8000349c <HandleInterupt+0x128>
            Scheduler::sleep(current, dur);
    80003738:	00048513          	mv	a0,s1
    8000373c:	fffff097          	auipc	ra,0xfffff
    80003740:	b28080e7          	jalr	-1240(ra) # 80002264 <_ZN9Scheduler5sleepEP7KThreadm>
            KThread* next = Scheduler::GetNext();
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	79c080e7          	jalr	1948(ra) # 80001ee0 <_ZN9Scheduler7GetNextEv>
    8000374c:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80003750:	00050a63          	beqz	a0,80003764 <HandleInterupt+0x3f0>
            Scheduler::yield(current, next);
    80003754:	00048513          	mv	a0,s1
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	74c080e7          	jalr	1868(ra) # 80001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003760:	d3dff06f          	j	8000349c <HandleInterupt+0x128>
            if (next == nullptr) { while(true){} }
    80003764:	0000006f          	j	80003764 <HandleInterupt+0x3f0>
            int result = Konsole::getcKernel(current);
    80003768:	00048513          	mv	a0,s1
    8000376c:	fffff097          	auipc	ra,0xfffff
    80003770:	f98080e7          	jalr	-104(ra) # 80002704 <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2) {
    80003774:	ffe00713          	li	a4,-2
    80003778:	00e50863          	beq	a0,a4,80003788 <HandleInterupt+0x414>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    8000377c:	0ff57793          	andi	a5,a0,255
    80003780:	00078513          	mv	a0,a5
    80003784:	d19ff06f          	j	8000349c <HandleInterupt+0x128>
                KThread* next = Scheduler::GetNext();
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	758080e7          	jalr	1880(ra) # 80001ee0 <_ZN9Scheduler7GetNextEv>
    80003790:	00050593          	mv	a1,a0
                if (next == nullptr) { while(true){} }
    80003794:	00050a63          	beqz	a0,800037a8 <HandleInterupt+0x434>
                Scheduler::yield(current, next);
    80003798:	00048513          	mv	a0,s1
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	708080e7          	jalr	1800(ra) # 80001ea4 <_ZN9Scheduler5yieldEP7KThreadS1_>
    800037a4:	cf9ff06f          	j	8000349c <HandleInterupt+0x128>
                if (next == nullptr) { while(true){} }
    800037a8:	0000006f          	j	800037a8 <HandleInterupt+0x434>
            int result = Konsole::putcKernel(current, c);
    800037ac:	05894583          	lbu	a1,88(s2)
    800037b0:	00048513          	mv	a0,s1
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	eb0080e7          	jalr	-336(ra) # 80002664 <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    800037bc:	00050513          	mv	a0,a0
            break;
    800037c0:	cddff06f          	j	8000349c <HandleInterupt+0x128>

00000000800037c4 <start_main_thread>:

extern "C" {
int start_main_thread() {
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00113423          	sd	ra,8(sp)
    800037cc:	00813023          	sd	s0,0(sp)
    800037d0:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	8a0080e7          	jalr	-1888(ra) # 80002074 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    800037dc:	fffff097          	auipc	ra,0xfffff
    800037e0:	ce8080e7          	jalr	-792(ra) # 800024c4 <_ZN7Konsole4initEv>
    return 0;
}
    800037e4:	00000513          	li	a0,0
    800037e8:	00813083          	ld	ra,8(sp)
    800037ec:	00013403          	ld	s0,0(sp)
    800037f0:	01010113          	addi	sp,sp,16
    800037f4:	00008067          	ret

00000000800037f8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800037f8:	fe010113          	addi	sp,sp,-32
    800037fc:	00113c23          	sd	ra,24(sp)
    80003800:	00813823          	sd	s0,16(sp)
    80003804:	00913423          	sd	s1,8(sp)
    80003808:	01213023          	sd	s2,0(sp)
    8000380c:	02010413          	addi	s0,sp,32
    80003810:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003814:	00000913          	li	s2,0
    80003818:	00c0006f          	j	80003824 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	e34080e7          	jalr	-460(ra) # 80001650 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	f5c080e7          	jalr	-164(ra) # 80001780 <getc>
    8000382c:	0005059b          	sext.w	a1,a0
    80003830:	01b00793          	li	a5,27
    80003834:	02f58a63          	beq	a1,a5,80003868 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003838:	0084b503          	ld	a0,8(s1)
    8000383c:	00003097          	auipc	ra,0x3
    80003840:	400080e7          	jalr	1024(ra) # 80006c3c <_ZN6Buffer3putEi>
        i++;
    80003844:	0019071b          	addiw	a4,s2,1
    80003848:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000384c:	0004a683          	lw	a3,0(s1)
    80003850:	0026979b          	slliw	a5,a3,0x2
    80003854:	00d787bb          	addw	a5,a5,a3
    80003858:	0017979b          	slliw	a5,a5,0x1
    8000385c:	02f767bb          	remw	a5,a4,a5
    80003860:	fc0792e3          	bnez	a5,80003824 <_ZL16producerKeyboardPv+0x2c>
    80003864:	fb9ff06f          	j	8000381c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003868:	00100793          	li	a5,1
    8000386c:	00008717          	auipc	a4,0x8
    80003870:	32f72223          	sw	a5,804(a4) # 8000bb90 <_ZL9threadEnd>
    data->buffer->put('!');
    80003874:	02100593          	li	a1,33
    80003878:	0084b503          	ld	a0,8(s1)
    8000387c:	00003097          	auipc	ra,0x3
    80003880:	3c0080e7          	jalr	960(ra) # 80006c3c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003884:	0104b503          	ld	a0,16(s1)
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	e98080e7          	jalr	-360(ra) # 80001720 <sem_signal>
}
    80003890:	01813083          	ld	ra,24(sp)
    80003894:	01013403          	ld	s0,16(sp)
    80003898:	00813483          	ld	s1,8(sp)
    8000389c:	00013903          	ld	s2,0(sp)
    800038a0:	02010113          	addi	sp,sp,32
    800038a4:	00008067          	ret

00000000800038a8 <_ZL8producerPv>:

static void producer(void *arg) {
    800038a8:	fe010113          	addi	sp,sp,-32
    800038ac:	00113c23          	sd	ra,24(sp)
    800038b0:	00813823          	sd	s0,16(sp)
    800038b4:	00913423          	sd	s1,8(sp)
    800038b8:	01213023          	sd	s2,0(sp)
    800038bc:	02010413          	addi	s0,sp,32
    800038c0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800038c4:	00000913          	li	s2,0
    800038c8:	00c0006f          	j	800038d4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	d84080e7          	jalr	-636(ra) # 80001650 <thread_dispatch>
    while (!threadEnd) {
    800038d4:	00008797          	auipc	a5,0x8
    800038d8:	2bc7a783          	lw	a5,700(a5) # 8000bb90 <_ZL9threadEnd>
    800038dc:	02079e63          	bnez	a5,80003918 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800038e0:	0004a583          	lw	a1,0(s1)
    800038e4:	0305859b          	addiw	a1,a1,48
    800038e8:	0084b503          	ld	a0,8(s1)
    800038ec:	00003097          	auipc	ra,0x3
    800038f0:	350080e7          	jalr	848(ra) # 80006c3c <_ZN6Buffer3putEi>
        i++;
    800038f4:	0019071b          	addiw	a4,s2,1
    800038f8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800038fc:	0004a683          	lw	a3,0(s1)
    80003900:	0026979b          	slliw	a5,a3,0x2
    80003904:	00d787bb          	addw	a5,a5,a3
    80003908:	0017979b          	slliw	a5,a5,0x1
    8000390c:	02f767bb          	remw	a5,a4,a5
    80003910:	fc0792e3          	bnez	a5,800038d4 <_ZL8producerPv+0x2c>
    80003914:	fb9ff06f          	j	800038cc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003918:	0104b503          	ld	a0,16(s1)
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	e04080e7          	jalr	-508(ra) # 80001720 <sem_signal>
}
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00813483          	ld	s1,8(sp)
    80003930:	00013903          	ld	s2,0(sp)
    80003934:	02010113          	addi	sp,sp,32
    80003938:	00008067          	ret

000000008000393c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000393c:	fd010113          	addi	sp,sp,-48
    80003940:	02113423          	sd	ra,40(sp)
    80003944:	02813023          	sd	s0,32(sp)
    80003948:	00913c23          	sd	s1,24(sp)
    8000394c:	01213823          	sd	s2,16(sp)
    80003950:	01313423          	sd	s3,8(sp)
    80003954:	03010413          	addi	s0,sp,48
    80003958:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000395c:	00000993          	li	s3,0
    80003960:	01c0006f          	j	8000397c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	cec080e7          	jalr	-788(ra) # 80001650 <thread_dispatch>
    8000396c:	0500006f          	j	800039bc <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003970:	00a00513          	li	a0,10
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	e30080e7          	jalr	-464(ra) # 800017a4 <putc>
    while (!threadEnd) {
    8000397c:	00008797          	auipc	a5,0x8
    80003980:	2147a783          	lw	a5,532(a5) # 8000bb90 <_ZL9threadEnd>
    80003984:	06079063          	bnez	a5,800039e4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003988:	00893503          	ld	a0,8(s2)
    8000398c:	00003097          	auipc	ra,0x3
    80003990:	340080e7          	jalr	832(ra) # 80006ccc <_ZN6Buffer3getEv>
        i++;
    80003994:	0019849b          	addiw	s1,s3,1
    80003998:	0004899b          	sext.w	s3,s1
        putc(key);
    8000399c:	0ff57513          	andi	a0,a0,255
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	e04080e7          	jalr	-508(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    800039a8:	00092703          	lw	a4,0(s2)
    800039ac:	0027179b          	slliw	a5,a4,0x2
    800039b0:	00e787bb          	addw	a5,a5,a4
    800039b4:	02f4e7bb          	remw	a5,s1,a5
    800039b8:	fa0786e3          	beqz	a5,80003964 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800039bc:	05000793          	li	a5,80
    800039c0:	02f4e4bb          	remw	s1,s1,a5
    800039c4:	fa049ce3          	bnez	s1,8000397c <_ZL8consumerPv+0x40>
    800039c8:	fa9ff06f          	j	80003970 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800039cc:	00893503          	ld	a0,8(s2)
    800039d0:	00003097          	auipc	ra,0x3
    800039d4:	2fc080e7          	jalr	764(ra) # 80006ccc <_ZN6Buffer3getEv>
        putc(key);
    800039d8:	0ff57513          	andi	a0,a0,255
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	dc8080e7          	jalr	-568(ra) # 800017a4 <putc>
    while (data->buffer->getCnt() > 0) {
    800039e4:	00893503          	ld	a0,8(s2)
    800039e8:	00003097          	auipc	ra,0x3
    800039ec:	370080e7          	jalr	880(ra) # 80006d58 <_ZN6Buffer6getCntEv>
    800039f0:	fca04ee3          	bgtz	a0,800039cc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800039f4:	01093503          	ld	a0,16(s2)
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	d28080e7          	jalr	-728(ra) # 80001720 <sem_signal>
}
    80003a00:	02813083          	ld	ra,40(sp)
    80003a04:	02013403          	ld	s0,32(sp)
    80003a08:	01813483          	ld	s1,24(sp)
    80003a0c:	01013903          	ld	s2,16(sp)
    80003a10:	00813983          	ld	s3,8(sp)
    80003a14:	03010113          	addi	sp,sp,48
    80003a18:	00008067          	ret

0000000080003a1c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003a1c:	f9010113          	addi	sp,sp,-112
    80003a20:	06113423          	sd	ra,104(sp)
    80003a24:	06813023          	sd	s0,96(sp)
    80003a28:	04913c23          	sd	s1,88(sp)
    80003a2c:	05213823          	sd	s2,80(sp)
    80003a30:	05313423          	sd	s3,72(sp)
    80003a34:	05413023          	sd	s4,64(sp)
    80003a38:	03513c23          	sd	s5,56(sp)
    80003a3c:	03613823          	sd	s6,48(sp)
    80003a40:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003a44:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003a48:	00005517          	auipc	a0,0x5
    80003a4c:	6e850513          	addi	a0,a0,1768 # 80009130 <CONSOLE_STATUS+0x120>
    80003a50:	00002097          	auipc	ra,0x2
    80003a54:	374080e7          	jalr	884(ra) # 80005dc4 <_Z11printStringPKc>
    getString(input, 30);
    80003a58:	01e00593          	li	a1,30
    80003a5c:	fa040493          	addi	s1,s0,-96
    80003a60:	00048513          	mv	a0,s1
    80003a64:	00002097          	auipc	ra,0x2
    80003a68:	3e8080e7          	jalr	1000(ra) # 80005e4c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003a6c:	00048513          	mv	a0,s1
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	4b4080e7          	jalr	1204(ra) # 80005f24 <_Z11stringToIntPKc>
    80003a78:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003a7c:	00005517          	auipc	a0,0x5
    80003a80:	6d450513          	addi	a0,a0,1748 # 80009150 <CONSOLE_STATUS+0x140>
    80003a84:	00002097          	auipc	ra,0x2
    80003a88:	340080e7          	jalr	832(ra) # 80005dc4 <_Z11printStringPKc>
    getString(input, 30);
    80003a8c:	01e00593          	li	a1,30
    80003a90:	00048513          	mv	a0,s1
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	3b8080e7          	jalr	952(ra) # 80005e4c <_Z9getStringPci>
    n = stringToInt(input);
    80003a9c:	00048513          	mv	a0,s1
    80003aa0:	00002097          	auipc	ra,0x2
    80003aa4:	484080e7          	jalr	1156(ra) # 80005f24 <_Z11stringToIntPKc>
    80003aa8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003aac:	00005517          	auipc	a0,0x5
    80003ab0:	6c450513          	addi	a0,a0,1732 # 80009170 <CONSOLE_STATUS+0x160>
    80003ab4:	00002097          	auipc	ra,0x2
    80003ab8:	310080e7          	jalr	784(ra) # 80005dc4 <_Z11printStringPKc>
    80003abc:	00000613          	li	a2,0
    80003ac0:	00a00593          	li	a1,10
    80003ac4:	00090513          	mv	a0,s2
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	4ac080e7          	jalr	1196(ra) # 80005f74 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003ad0:	00005517          	auipc	a0,0x5
    80003ad4:	6b850513          	addi	a0,a0,1720 # 80009188 <CONSOLE_STATUS+0x178>
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	2ec080e7          	jalr	748(ra) # 80005dc4 <_Z11printStringPKc>
    80003ae0:	00000613          	li	a2,0
    80003ae4:	00a00593          	li	a1,10
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	488080e7          	jalr	1160(ra) # 80005f74 <_Z8printIntiii>
    printString(".\n");
    80003af4:	00005517          	auipc	a0,0x5
    80003af8:	6ac50513          	addi	a0,a0,1708 # 800091a0 <CONSOLE_STATUS+0x190>
    80003afc:	00002097          	auipc	ra,0x2
    80003b00:	2c8080e7          	jalr	712(ra) # 80005dc4 <_Z11printStringPKc>
    if(threadNum > n) {
    80003b04:	0324c463          	blt	s1,s2,80003b2c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003b08:	03205c63          	blez	s2,80003b40 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003b0c:	03800513          	li	a0,56
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	2cc080e7          	jalr	716(ra) # 80002ddc <_Znwm>
    80003b18:	00050a13          	mv	s4,a0
    80003b1c:	00048593          	mv	a1,s1
    80003b20:	00003097          	auipc	ra,0x3
    80003b24:	080080e7          	jalr	128(ra) # 80006ba0 <_ZN6BufferC1Ei>
    80003b28:	0300006f          	j	80003b58 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b2c:	00005517          	auipc	a0,0x5
    80003b30:	67c50513          	addi	a0,a0,1660 # 800091a8 <CONSOLE_STATUS+0x198>
    80003b34:	00002097          	auipc	ra,0x2
    80003b38:	290080e7          	jalr	656(ra) # 80005dc4 <_Z11printStringPKc>
        return;
    80003b3c:	0140006f          	j	80003b50 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003b40:	00005517          	auipc	a0,0x5
    80003b44:	6a850513          	addi	a0,a0,1704 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003b48:	00002097          	auipc	ra,0x2
    80003b4c:	27c080e7          	jalr	636(ra) # 80005dc4 <_Z11printStringPKc>
        return;
    80003b50:	000b0113          	mv	sp,s6
    80003b54:	1500006f          	j	80003ca4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003b58:	00000593          	li	a1,0
    80003b5c:	00008517          	auipc	a0,0x8
    80003b60:	03c50513          	addi	a0,a0,60 # 8000bb98 <_ZL10waitForAll>
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	b34080e7          	jalr	-1228(ra) # 80001698 <sem_open>
    thread_t threads[threadNum];
    80003b6c:	00391793          	slli	a5,s2,0x3
    80003b70:	00f78793          	addi	a5,a5,15
    80003b74:	ff07f793          	andi	a5,a5,-16
    80003b78:	40f10133          	sub	sp,sp,a5
    80003b7c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003b80:	0019071b          	addiw	a4,s2,1
    80003b84:	00171793          	slli	a5,a4,0x1
    80003b88:	00e787b3          	add	a5,a5,a4
    80003b8c:	00379793          	slli	a5,a5,0x3
    80003b90:	00f78793          	addi	a5,a5,15
    80003b94:	ff07f793          	andi	a5,a5,-16
    80003b98:	40f10133          	sub	sp,sp,a5
    80003b9c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003ba0:	00191613          	slli	a2,s2,0x1
    80003ba4:	012607b3          	add	a5,a2,s2
    80003ba8:	00379793          	slli	a5,a5,0x3
    80003bac:	00f987b3          	add	a5,s3,a5
    80003bb0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003bb4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003bb8:	00008717          	auipc	a4,0x8
    80003bbc:	fe073703          	ld	a4,-32(a4) # 8000bb98 <_ZL10waitForAll>
    80003bc0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003bc4:	00078613          	mv	a2,a5
    80003bc8:	00000597          	auipc	a1,0x0
    80003bcc:	d7458593          	addi	a1,a1,-652 # 8000393c <_ZL8consumerPv>
    80003bd0:	f9840513          	addi	a0,s0,-104
    80003bd4:	ffffe097          	auipc	ra,0xffffe
    80003bd8:	9d8080e7          	jalr	-1576(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003bdc:	00000493          	li	s1,0
    80003be0:	0280006f          	j	80003c08 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003be4:	00000597          	auipc	a1,0x0
    80003be8:	c1458593          	addi	a1,a1,-1004 # 800037f8 <_ZL16producerKeyboardPv>
                      data + i);
    80003bec:	00179613          	slli	a2,a5,0x1
    80003bf0:	00f60633          	add	a2,a2,a5
    80003bf4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003bf8:	00c98633          	add	a2,s3,a2
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	9b0080e7          	jalr	-1616(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003c04:	0014849b          	addiw	s1,s1,1
    80003c08:	0524d263          	bge	s1,s2,80003c4c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003c0c:	00149793          	slli	a5,s1,0x1
    80003c10:	009787b3          	add	a5,a5,s1
    80003c14:	00379793          	slli	a5,a5,0x3
    80003c18:	00f987b3          	add	a5,s3,a5
    80003c1c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003c20:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003c24:	00008717          	auipc	a4,0x8
    80003c28:	f7473703          	ld	a4,-140(a4) # 8000bb98 <_ZL10waitForAll>
    80003c2c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003c30:	00048793          	mv	a5,s1
    80003c34:	00349513          	slli	a0,s1,0x3
    80003c38:	00aa8533          	add	a0,s5,a0
    80003c3c:	fa9054e3          	blez	s1,80003be4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003c40:	00000597          	auipc	a1,0x0
    80003c44:	c6858593          	addi	a1,a1,-920 # 800038a8 <_ZL8producerPv>
    80003c48:	fa5ff06f          	j	80003bec <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	a04080e7          	jalr	-1532(ra) # 80001650 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003c54:	00000493          	li	s1,0
    80003c58:	00994e63          	blt	s2,s1,80003c74 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003c5c:	00008517          	auipc	a0,0x8
    80003c60:	f3c53503          	ld	a0,-196(a0) # 8000bb98 <_ZL10waitForAll>
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	a94080e7          	jalr	-1388(ra) # 800016f8 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003c6c:	0014849b          	addiw	s1,s1,1
    80003c70:	fe9ff06f          	j	80003c58 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003c74:	00008517          	auipc	a0,0x8
    80003c78:	f2453503          	ld	a0,-220(a0) # 8000bb98 <_ZL10waitForAll>
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	a54080e7          	jalr	-1452(ra) # 800016d0 <sem_close>
    delete buffer;
    80003c84:	000a0e63          	beqz	s4,80003ca0 <_Z22producerConsumer_C_APIv+0x284>
    80003c88:	000a0513          	mv	a0,s4
    80003c8c:	00003097          	auipc	ra,0x3
    80003c90:	154080e7          	jalr	340(ra) # 80006de0 <_ZN6BufferD1Ev>
    80003c94:	000a0513          	mv	a0,s4
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	16c080e7          	jalr	364(ra) # 80002e04 <_ZdlPv>
    80003ca0:	000b0113          	mv	sp,s6

}
    80003ca4:	f9040113          	addi	sp,s0,-112
    80003ca8:	06813083          	ld	ra,104(sp)
    80003cac:	06013403          	ld	s0,96(sp)
    80003cb0:	05813483          	ld	s1,88(sp)
    80003cb4:	05013903          	ld	s2,80(sp)
    80003cb8:	04813983          	ld	s3,72(sp)
    80003cbc:	04013a03          	ld	s4,64(sp)
    80003cc0:	03813a83          	ld	s5,56(sp)
    80003cc4:	03013b03          	ld	s6,48(sp)
    80003cc8:	07010113          	addi	sp,sp,112
    80003ccc:	00008067          	ret
    80003cd0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003cd4:	000a0513          	mv	a0,s4
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	12c080e7          	jalr	300(ra) # 80002e04 <_ZdlPv>
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	00009097          	auipc	ra,0x9
    80003ce8:	fc4080e7          	jalr	-60(ra) # 8000cca8 <_Unwind_Resume>

0000000080003cec <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00113c23          	sd	ra,24(sp)
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	01213023          	sd	s2,0(sp)
    80003d00:	02010413          	addi	s0,sp,32
    80003d04:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d08:	00100793          	li	a5,1
    80003d0c:	02a7f863          	bgeu	a5,a0,80003d3c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d10:	00a00793          	li	a5,10
    80003d14:	02f577b3          	remu	a5,a0,a5
    80003d18:	02078e63          	beqz	a5,80003d54 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d1c:	fff48513          	addi	a0,s1,-1
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	fcc080e7          	jalr	-52(ra) # 80003cec <_ZL9fibonaccim>
    80003d28:	00050913          	mv	s2,a0
    80003d2c:	ffe48513          	addi	a0,s1,-2
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	fbc080e7          	jalr	-68(ra) # 80003cec <_ZL9fibonaccim>
    80003d38:	00a90533          	add	a0,s2,a0
}
    80003d3c:	01813083          	ld	ra,24(sp)
    80003d40:	01013403          	ld	s0,16(sp)
    80003d44:	00813483          	ld	s1,8(sp)
    80003d48:	00013903          	ld	s2,0(sp)
    80003d4c:	02010113          	addi	sp,sp,32
    80003d50:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	8fc080e7          	jalr	-1796(ra) # 80001650 <thread_dispatch>
    80003d5c:	fc1ff06f          	j	80003d1c <_ZL9fibonaccim+0x30>

0000000080003d60 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003d60:	fe010113          	addi	sp,sp,-32
    80003d64:	00113c23          	sd	ra,24(sp)
    80003d68:	00813823          	sd	s0,16(sp)
    80003d6c:	00913423          	sd	s1,8(sp)
    80003d70:	01213023          	sd	s2,0(sp)
    80003d74:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003d78:	00000913          	li	s2,0
    80003d7c:	0380006f          	j	80003db4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d80:	ffffe097          	auipc	ra,0xffffe
    80003d84:	8d0080e7          	jalr	-1840(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003d88:	00148493          	addi	s1,s1,1
    80003d8c:	000027b7          	lui	a5,0x2
    80003d90:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d94:	0097ee63          	bltu	a5,s1,80003db0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d98:	00000713          	li	a4,0
    80003d9c:	000077b7          	lui	a5,0x7
    80003da0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003da4:	fce7eee3          	bltu	a5,a4,80003d80 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003da8:	00170713          	addi	a4,a4,1
    80003dac:	ff1ff06f          	j	80003d9c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003db0:	00190913          	addi	s2,s2,1
    80003db4:	00900793          	li	a5,9
    80003db8:	0527e063          	bltu	a5,s2,80003df8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003dbc:	00005517          	auipc	a0,0x5
    80003dc0:	45c50513          	addi	a0,a0,1116 # 80009218 <CONSOLE_STATUS+0x208>
    80003dc4:	00002097          	auipc	ra,0x2
    80003dc8:	000080e7          	jalr	ra # 80005dc4 <_Z11printStringPKc>
    80003dcc:	00000613          	li	a2,0
    80003dd0:	00a00593          	li	a1,10
    80003dd4:	0009051b          	sext.w	a0,s2
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	19c080e7          	jalr	412(ra) # 80005f74 <_Z8printIntiii>
    80003de0:	00005517          	auipc	a0,0x5
    80003de4:	67050513          	addi	a0,a0,1648 # 80009450 <CONSOLE_STATUS+0x440>
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	fdc080e7          	jalr	-36(ra) # 80005dc4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003df0:	00000493          	li	s1,0
    80003df4:	f99ff06f          	j	80003d8c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	42850513          	addi	a0,a0,1064 # 80009220 <CONSOLE_STATUS+0x210>
    80003e00:	00002097          	auipc	ra,0x2
    80003e04:	fc4080e7          	jalr	-60(ra) # 80005dc4 <_Z11printStringPKc>
    finishedA = true;
    80003e08:	00100793          	li	a5,1
    80003e0c:	00008717          	auipc	a4,0x8
    80003e10:	d8f70a23          	sb	a5,-620(a4) # 8000bba0 <_ZL9finishedA>
}
    80003e14:	01813083          	ld	ra,24(sp)
    80003e18:	01013403          	ld	s0,16(sp)
    80003e1c:	00813483          	ld	s1,8(sp)
    80003e20:	00013903          	ld	s2,0(sp)
    80003e24:	02010113          	addi	sp,sp,32
    80003e28:	00008067          	ret

0000000080003e2c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00113c23          	sd	ra,24(sp)
    80003e34:	00813823          	sd	s0,16(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	01213023          	sd	s2,0(sp)
    80003e40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e44:	00000913          	li	s2,0
    80003e48:	0380006f          	j	80003e80 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	804080e7          	jalr	-2044(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003e54:	00148493          	addi	s1,s1,1
    80003e58:	000027b7          	lui	a5,0x2
    80003e5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e60:	0097ee63          	bltu	a5,s1,80003e7c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e64:	00000713          	li	a4,0
    80003e68:	000077b7          	lui	a5,0x7
    80003e6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e70:	fce7eee3          	bltu	a5,a4,80003e4c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003e74:	00170713          	addi	a4,a4,1
    80003e78:	ff1ff06f          	j	80003e68 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003e7c:	00190913          	addi	s2,s2,1
    80003e80:	00f00793          	li	a5,15
    80003e84:	0527e063          	bltu	a5,s2,80003ec4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003e88:	00005517          	auipc	a0,0x5
    80003e8c:	3a850513          	addi	a0,a0,936 # 80009230 <CONSOLE_STATUS+0x220>
    80003e90:	00002097          	auipc	ra,0x2
    80003e94:	f34080e7          	jalr	-204(ra) # 80005dc4 <_Z11printStringPKc>
    80003e98:	00000613          	li	a2,0
    80003e9c:	00a00593          	li	a1,10
    80003ea0:	0009051b          	sext.w	a0,s2
    80003ea4:	00002097          	auipc	ra,0x2
    80003ea8:	0d0080e7          	jalr	208(ra) # 80005f74 <_Z8printIntiii>
    80003eac:	00005517          	auipc	a0,0x5
    80003eb0:	5a450513          	addi	a0,a0,1444 # 80009450 <CONSOLE_STATUS+0x440>
    80003eb4:	00002097          	auipc	ra,0x2
    80003eb8:	f10080e7          	jalr	-240(ra) # 80005dc4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ebc:	00000493          	li	s1,0
    80003ec0:	f99ff06f          	j	80003e58 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003ec4:	00005517          	auipc	a0,0x5
    80003ec8:	37450513          	addi	a0,a0,884 # 80009238 <CONSOLE_STATUS+0x228>
    80003ecc:	00002097          	auipc	ra,0x2
    80003ed0:	ef8080e7          	jalr	-264(ra) # 80005dc4 <_Z11printStringPKc>
    finishedB = true;
    80003ed4:	00100793          	li	a5,1
    80003ed8:	00008717          	auipc	a4,0x8
    80003edc:	ccf704a3          	sb	a5,-823(a4) # 8000bba1 <_ZL9finishedB>
    thread_dispatch();
    80003ee0:	ffffd097          	auipc	ra,0xffffd
    80003ee4:	770080e7          	jalr	1904(ra) # 80001650 <thread_dispatch>
}
    80003ee8:	01813083          	ld	ra,24(sp)
    80003eec:	01013403          	ld	s0,16(sp)
    80003ef0:	00813483          	ld	s1,8(sp)
    80003ef4:	00013903          	ld	s2,0(sp)
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00008067          	ret

0000000080003f00 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f00:	fe010113          	addi	sp,sp,-32
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	00813823          	sd	s0,16(sp)
    80003f0c:	00913423          	sd	s1,8(sp)
    80003f10:	01213023          	sd	s2,0(sp)
    80003f14:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f18:	00000493          	li	s1,0
    80003f1c:	0400006f          	j	80003f5c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f20:	00005517          	auipc	a0,0x5
    80003f24:	32850513          	addi	a0,a0,808 # 80009248 <CONSOLE_STATUS+0x238>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	e9c080e7          	jalr	-356(ra) # 80005dc4 <_Z11printStringPKc>
    80003f30:	00000613          	li	a2,0
    80003f34:	00a00593          	li	a1,10
    80003f38:	00048513          	mv	a0,s1
    80003f3c:	00002097          	auipc	ra,0x2
    80003f40:	038080e7          	jalr	56(ra) # 80005f74 <_Z8printIntiii>
    80003f44:	00005517          	auipc	a0,0x5
    80003f48:	50c50513          	addi	a0,a0,1292 # 80009450 <CONSOLE_STATUS+0x440>
    80003f4c:	00002097          	auipc	ra,0x2
    80003f50:	e78080e7          	jalr	-392(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f54:	0014849b          	addiw	s1,s1,1
    80003f58:	0ff4f493          	andi	s1,s1,255
    80003f5c:	00200793          	li	a5,2
    80003f60:	fc97f0e3          	bgeu	a5,s1,80003f20 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003f64:	00005517          	auipc	a0,0x5
    80003f68:	2ec50513          	addi	a0,a0,748 # 80009250 <CONSOLE_STATUS+0x240>
    80003f6c:	00002097          	auipc	ra,0x2
    80003f70:	e58080e7          	jalr	-424(ra) # 80005dc4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f74:	00700313          	li	t1,7
    thread_dispatch();
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	6d8080e7          	jalr	1752(ra) # 80001650 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f80:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003f84:	00005517          	auipc	a0,0x5
    80003f88:	2dc50513          	addi	a0,a0,732 # 80009260 <CONSOLE_STATUS+0x250>
    80003f8c:	00002097          	auipc	ra,0x2
    80003f90:	e38080e7          	jalr	-456(ra) # 80005dc4 <_Z11printStringPKc>
    80003f94:	00000613          	li	a2,0
    80003f98:	00a00593          	li	a1,10
    80003f9c:	0009051b          	sext.w	a0,s2
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	fd4080e7          	jalr	-44(ra) # 80005f74 <_Z8printIntiii>
    80003fa8:	00005517          	auipc	a0,0x5
    80003fac:	4a850513          	addi	a0,a0,1192 # 80009450 <CONSOLE_STATUS+0x440>
    80003fb0:	00002097          	auipc	ra,0x2
    80003fb4:	e14080e7          	jalr	-492(ra) # 80005dc4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003fb8:	00c00513          	li	a0,12
    80003fbc:	00000097          	auipc	ra,0x0
    80003fc0:	d30080e7          	jalr	-720(ra) # 80003cec <_ZL9fibonaccim>
    80003fc4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003fc8:	00005517          	auipc	a0,0x5
    80003fcc:	2a050513          	addi	a0,a0,672 # 80009268 <CONSOLE_STATUS+0x258>
    80003fd0:	00002097          	auipc	ra,0x2
    80003fd4:	df4080e7          	jalr	-524(ra) # 80005dc4 <_Z11printStringPKc>
    80003fd8:	00000613          	li	a2,0
    80003fdc:	00a00593          	li	a1,10
    80003fe0:	0009051b          	sext.w	a0,s2
    80003fe4:	00002097          	auipc	ra,0x2
    80003fe8:	f90080e7          	jalr	-112(ra) # 80005f74 <_Z8printIntiii>
    80003fec:	00005517          	auipc	a0,0x5
    80003ff0:	46450513          	addi	a0,a0,1124 # 80009450 <CONSOLE_STATUS+0x440>
    80003ff4:	00002097          	auipc	ra,0x2
    80003ff8:	dd0080e7          	jalr	-560(ra) # 80005dc4 <_Z11printStringPKc>
    80003ffc:	0400006f          	j	8000403c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004000:	00005517          	auipc	a0,0x5
    80004004:	24850513          	addi	a0,a0,584 # 80009248 <CONSOLE_STATUS+0x238>
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	dbc080e7          	jalr	-580(ra) # 80005dc4 <_Z11printStringPKc>
    80004010:	00000613          	li	a2,0
    80004014:	00a00593          	li	a1,10
    80004018:	00048513          	mv	a0,s1
    8000401c:	00002097          	auipc	ra,0x2
    80004020:	f58080e7          	jalr	-168(ra) # 80005f74 <_Z8printIntiii>
    80004024:	00005517          	auipc	a0,0x5
    80004028:	42c50513          	addi	a0,a0,1068 # 80009450 <CONSOLE_STATUS+0x440>
    8000402c:	00002097          	auipc	ra,0x2
    80004030:	d98080e7          	jalr	-616(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004034:	0014849b          	addiw	s1,s1,1
    80004038:	0ff4f493          	andi	s1,s1,255
    8000403c:	00500793          	li	a5,5
    80004040:	fc97f0e3          	bgeu	a5,s1,80004000 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004044:	00005517          	auipc	a0,0x5
    80004048:	1dc50513          	addi	a0,a0,476 # 80009220 <CONSOLE_STATUS+0x210>
    8000404c:	00002097          	auipc	ra,0x2
    80004050:	d78080e7          	jalr	-648(ra) # 80005dc4 <_Z11printStringPKc>
    finishedC = true;
    80004054:	00100793          	li	a5,1
    80004058:	00008717          	auipc	a4,0x8
    8000405c:	b4f70523          	sb	a5,-1206(a4) # 8000bba2 <_ZL9finishedC>
    thread_dispatch();
    80004060:	ffffd097          	auipc	ra,0xffffd
    80004064:	5f0080e7          	jalr	1520(ra) # 80001650 <thread_dispatch>
}
    80004068:	01813083          	ld	ra,24(sp)
    8000406c:	01013403          	ld	s0,16(sp)
    80004070:	00813483          	ld	s1,8(sp)
    80004074:	00013903          	ld	s2,0(sp)
    80004078:	02010113          	addi	sp,sp,32
    8000407c:	00008067          	ret

0000000080004080 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004080:	fe010113          	addi	sp,sp,-32
    80004084:	00113c23          	sd	ra,24(sp)
    80004088:	00813823          	sd	s0,16(sp)
    8000408c:	00913423          	sd	s1,8(sp)
    80004090:	01213023          	sd	s2,0(sp)
    80004094:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004098:	00a00493          	li	s1,10
    8000409c:	0400006f          	j	800040dc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040a0:	00005517          	auipc	a0,0x5
    800040a4:	1d850513          	addi	a0,a0,472 # 80009278 <CONSOLE_STATUS+0x268>
    800040a8:	00002097          	auipc	ra,0x2
    800040ac:	d1c080e7          	jalr	-740(ra) # 80005dc4 <_Z11printStringPKc>
    800040b0:	00000613          	li	a2,0
    800040b4:	00a00593          	li	a1,10
    800040b8:	00048513          	mv	a0,s1
    800040bc:	00002097          	auipc	ra,0x2
    800040c0:	eb8080e7          	jalr	-328(ra) # 80005f74 <_Z8printIntiii>
    800040c4:	00005517          	auipc	a0,0x5
    800040c8:	38c50513          	addi	a0,a0,908 # 80009450 <CONSOLE_STATUS+0x440>
    800040cc:	00002097          	auipc	ra,0x2
    800040d0:	cf8080e7          	jalr	-776(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800040d4:	0014849b          	addiw	s1,s1,1
    800040d8:	0ff4f493          	andi	s1,s1,255
    800040dc:	00c00793          	li	a5,12
    800040e0:	fc97f0e3          	bgeu	a5,s1,800040a0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800040e4:	00005517          	auipc	a0,0x5
    800040e8:	19c50513          	addi	a0,a0,412 # 80009280 <CONSOLE_STATUS+0x270>
    800040ec:	00002097          	auipc	ra,0x2
    800040f0:	cd8080e7          	jalr	-808(ra) # 80005dc4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800040f4:	00500313          	li	t1,5
    thread_dispatch();
    800040f8:	ffffd097          	auipc	ra,0xffffd
    800040fc:	558080e7          	jalr	1368(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004100:	01000513          	li	a0,16
    80004104:	00000097          	auipc	ra,0x0
    80004108:	be8080e7          	jalr	-1048(ra) # 80003cec <_ZL9fibonaccim>
    8000410c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004110:	00005517          	auipc	a0,0x5
    80004114:	18050513          	addi	a0,a0,384 # 80009290 <CONSOLE_STATUS+0x280>
    80004118:	00002097          	auipc	ra,0x2
    8000411c:	cac080e7          	jalr	-852(ra) # 80005dc4 <_Z11printStringPKc>
    80004120:	00000613          	li	a2,0
    80004124:	00a00593          	li	a1,10
    80004128:	0009051b          	sext.w	a0,s2
    8000412c:	00002097          	auipc	ra,0x2
    80004130:	e48080e7          	jalr	-440(ra) # 80005f74 <_Z8printIntiii>
    80004134:	00005517          	auipc	a0,0x5
    80004138:	31c50513          	addi	a0,a0,796 # 80009450 <CONSOLE_STATUS+0x440>
    8000413c:	00002097          	auipc	ra,0x2
    80004140:	c88080e7          	jalr	-888(ra) # 80005dc4 <_Z11printStringPKc>
    80004144:	0400006f          	j	80004184 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004148:	00005517          	auipc	a0,0x5
    8000414c:	13050513          	addi	a0,a0,304 # 80009278 <CONSOLE_STATUS+0x268>
    80004150:	00002097          	auipc	ra,0x2
    80004154:	c74080e7          	jalr	-908(ra) # 80005dc4 <_Z11printStringPKc>
    80004158:	00000613          	li	a2,0
    8000415c:	00a00593          	li	a1,10
    80004160:	00048513          	mv	a0,s1
    80004164:	00002097          	auipc	ra,0x2
    80004168:	e10080e7          	jalr	-496(ra) # 80005f74 <_Z8printIntiii>
    8000416c:	00005517          	auipc	a0,0x5
    80004170:	2e450513          	addi	a0,a0,740 # 80009450 <CONSOLE_STATUS+0x440>
    80004174:	00002097          	auipc	ra,0x2
    80004178:	c50080e7          	jalr	-944(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000417c:	0014849b          	addiw	s1,s1,1
    80004180:	0ff4f493          	andi	s1,s1,255
    80004184:	00f00793          	li	a5,15
    80004188:	fc97f0e3          	bgeu	a5,s1,80004148 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000418c:	00005517          	auipc	a0,0x5
    80004190:	11450513          	addi	a0,a0,276 # 800092a0 <CONSOLE_STATUS+0x290>
    80004194:	00002097          	auipc	ra,0x2
    80004198:	c30080e7          	jalr	-976(ra) # 80005dc4 <_Z11printStringPKc>
    finishedD = true;
    8000419c:	00100793          	li	a5,1
    800041a0:	00008717          	auipc	a4,0x8
    800041a4:	a0f701a3          	sb	a5,-1533(a4) # 8000bba3 <_ZL9finishedD>
    thread_dispatch();
    800041a8:	ffffd097          	auipc	ra,0xffffd
    800041ac:	4a8080e7          	jalr	1192(ra) # 80001650 <thread_dispatch>
}
    800041b0:	01813083          	ld	ra,24(sp)
    800041b4:	01013403          	ld	s0,16(sp)
    800041b8:	00813483          	ld	s1,8(sp)
    800041bc:	00013903          	ld	s2,0(sp)
    800041c0:	02010113          	addi	sp,sp,32
    800041c4:	00008067          	ret

00000000800041c8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800041c8:	fc010113          	addi	sp,sp,-64
    800041cc:	02113c23          	sd	ra,56(sp)
    800041d0:	02813823          	sd	s0,48(sp)
    800041d4:	02913423          	sd	s1,40(sp)
    800041d8:	03213023          	sd	s2,32(sp)
    800041dc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800041e0:	02000513          	li	a0,32
    800041e4:	fffff097          	auipc	ra,0xfffff
    800041e8:	bf8080e7          	jalr	-1032(ra) # 80002ddc <_Znwm>
    800041ec:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	cd4080e7          	jalr	-812(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    800041f8:	00007797          	auipc	a5,0x7
    800041fc:	4f878793          	addi	a5,a5,1272 # 8000b6f0 <_ZTV7WorkerA+0x10>
    80004200:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004204:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004208:	00005517          	auipc	a0,0x5
    8000420c:	0a850513          	addi	a0,a0,168 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004210:	00002097          	auipc	ra,0x2
    80004214:	bb4080e7          	jalr	-1100(ra) # 80005dc4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004218:	02000513          	li	a0,32
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	bc0080e7          	jalr	-1088(ra) # 80002ddc <_Znwm>
    80004224:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004228:	fffff097          	auipc	ra,0xfffff
    8000422c:	c9c080e7          	jalr	-868(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80004230:	00007797          	auipc	a5,0x7
    80004234:	4e878793          	addi	a5,a5,1256 # 8000b718 <_ZTV7WorkerB+0x10>
    80004238:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000423c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004240:	00005517          	auipc	a0,0x5
    80004244:	08850513          	addi	a0,a0,136 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004248:	00002097          	auipc	ra,0x2
    8000424c:	b7c080e7          	jalr	-1156(ra) # 80005dc4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004250:	02000513          	li	a0,32
    80004254:	fffff097          	auipc	ra,0xfffff
    80004258:	b88080e7          	jalr	-1144(ra) # 80002ddc <_Znwm>
    8000425c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	c64080e7          	jalr	-924(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80004268:	00007797          	auipc	a5,0x7
    8000426c:	4d878793          	addi	a5,a5,1240 # 8000b740 <_ZTV7WorkerC+0x10>
    80004270:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004274:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004278:	00005517          	auipc	a0,0x5
    8000427c:	06850513          	addi	a0,a0,104 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004280:	00002097          	auipc	ra,0x2
    80004284:	b44080e7          	jalr	-1212(ra) # 80005dc4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004288:	02000513          	li	a0,32
    8000428c:	fffff097          	auipc	ra,0xfffff
    80004290:	b50080e7          	jalr	-1200(ra) # 80002ddc <_Znwm>
    80004294:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004298:	fffff097          	auipc	ra,0xfffff
    8000429c:	c2c080e7          	jalr	-980(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    800042a0:	00007797          	auipc	a5,0x7
    800042a4:	4c878793          	addi	a5,a5,1224 # 8000b768 <_ZTV7WorkerD+0x10>
    800042a8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800042ac:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800042b0:	00005517          	auipc	a0,0x5
    800042b4:	04850513          	addi	a0,a0,72 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800042b8:	00002097          	auipc	ra,0x2
    800042bc:	b0c080e7          	jalr	-1268(ra) # 80005dc4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800042c0:	00000493          	li	s1,0
    800042c4:	00300793          	li	a5,3
    800042c8:	0297c663          	blt	a5,s1,800042f4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800042cc:	00349793          	slli	a5,s1,0x3
    800042d0:	fe040713          	addi	a4,s0,-32
    800042d4:	00f707b3          	add	a5,a4,a5
    800042d8:	fe07b503          	ld	a0,-32(a5)
    800042dc:	fffff097          	auipc	ra,0xfffff
    800042e0:	c18080e7          	jalr	-1000(ra) # 80002ef4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800042e4:	0014849b          	addiw	s1,s1,1
    800042e8:	fddff06f          	j	800042c4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800042ec:	fffff097          	auipc	ra,0xfffff
    800042f0:	c5c080e7          	jalr	-932(ra) # 80002f48 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800042f4:	00008797          	auipc	a5,0x8
    800042f8:	8ac7c783          	lbu	a5,-1876(a5) # 8000bba0 <_ZL9finishedA>
    800042fc:	fe0788e3          	beqz	a5,800042ec <_Z20Threads_CPP_API_testv+0x124>
    80004300:	00008797          	auipc	a5,0x8
    80004304:	8a17c783          	lbu	a5,-1887(a5) # 8000bba1 <_ZL9finishedB>
    80004308:	fe0782e3          	beqz	a5,800042ec <_Z20Threads_CPP_API_testv+0x124>
    8000430c:	00008797          	auipc	a5,0x8
    80004310:	8967c783          	lbu	a5,-1898(a5) # 8000bba2 <_ZL9finishedC>
    80004314:	fc078ce3          	beqz	a5,800042ec <_Z20Threads_CPP_API_testv+0x124>
    80004318:	00008797          	auipc	a5,0x8
    8000431c:	88b7c783          	lbu	a5,-1909(a5) # 8000bba3 <_ZL9finishedD>
    80004320:	fc0786e3          	beqz	a5,800042ec <_Z20Threads_CPP_API_testv+0x124>
    80004324:	fc040493          	addi	s1,s0,-64
    80004328:	0080006f          	j	80004330 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000432c:	00848493          	addi	s1,s1,8
    80004330:	fe040793          	addi	a5,s0,-32
    80004334:	08f48663          	beq	s1,a5,800043c0 <_Z20Threads_CPP_API_testv+0x1f8>
    80004338:	0004b503          	ld	a0,0(s1)
    8000433c:	fe0508e3          	beqz	a0,8000432c <_Z20Threads_CPP_API_testv+0x164>
    80004340:	00053783          	ld	a5,0(a0)
    80004344:	0087b783          	ld	a5,8(a5)
    80004348:	000780e7          	jalr	a5
    8000434c:	fe1ff06f          	j	8000432c <_Z20Threads_CPP_API_testv+0x164>
    80004350:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004354:	00048513          	mv	a0,s1
    80004358:	fffff097          	auipc	ra,0xfffff
    8000435c:	aac080e7          	jalr	-1364(ra) # 80002e04 <_ZdlPv>
    80004360:	00090513          	mv	a0,s2
    80004364:	00009097          	auipc	ra,0x9
    80004368:	944080e7          	jalr	-1724(ra) # 8000cca8 <_Unwind_Resume>
    8000436c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004370:	00048513          	mv	a0,s1
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	a90080e7          	jalr	-1392(ra) # 80002e04 <_ZdlPv>
    8000437c:	00090513          	mv	a0,s2
    80004380:	00009097          	auipc	ra,0x9
    80004384:	928080e7          	jalr	-1752(ra) # 8000cca8 <_Unwind_Resume>
    80004388:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000438c:	00048513          	mv	a0,s1
    80004390:	fffff097          	auipc	ra,0xfffff
    80004394:	a74080e7          	jalr	-1420(ra) # 80002e04 <_ZdlPv>
    80004398:	00090513          	mv	a0,s2
    8000439c:	00009097          	auipc	ra,0x9
    800043a0:	90c080e7          	jalr	-1780(ra) # 8000cca8 <_Unwind_Resume>
    800043a4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800043a8:	00048513          	mv	a0,s1
    800043ac:	fffff097          	auipc	ra,0xfffff
    800043b0:	a58080e7          	jalr	-1448(ra) # 80002e04 <_ZdlPv>
    800043b4:	00090513          	mv	a0,s2
    800043b8:	00009097          	auipc	ra,0x9
    800043bc:	8f0080e7          	jalr	-1808(ra) # 8000cca8 <_Unwind_Resume>
}
    800043c0:	03813083          	ld	ra,56(sp)
    800043c4:	03013403          	ld	s0,48(sp)
    800043c8:	02813483          	ld	s1,40(sp)
    800043cc:	02013903          	ld	s2,32(sp)
    800043d0:	04010113          	addi	sp,sp,64
    800043d4:	00008067          	ret

00000000800043d8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800043d8:	ff010113          	addi	sp,sp,-16
    800043dc:	00113423          	sd	ra,8(sp)
    800043e0:	00813023          	sd	s0,0(sp)
    800043e4:	01010413          	addi	s0,sp,16
    800043e8:	00007797          	auipc	a5,0x7
    800043ec:	30878793          	addi	a5,a5,776 # 8000b6f0 <_ZTV7WorkerA+0x10>
    800043f0:	00f53023          	sd	a5,0(a0)
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	918080e7          	jalr	-1768(ra) # 80002d0c <_ZN6ThreadD1Ev>
    800043fc:	00813083          	ld	ra,8(sp)
    80004400:	00013403          	ld	s0,0(sp)
    80004404:	01010113          	addi	sp,sp,16
    80004408:	00008067          	ret

000000008000440c <_ZN7WorkerAD0Ev>:
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00113c23          	sd	ra,24(sp)
    80004414:	00813823          	sd	s0,16(sp)
    80004418:	00913423          	sd	s1,8(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	00050493          	mv	s1,a0
    80004424:	00007797          	auipc	a5,0x7
    80004428:	2cc78793          	addi	a5,a5,716 # 8000b6f0 <_ZTV7WorkerA+0x10>
    8000442c:	00f53023          	sd	a5,0(a0)
    80004430:	fffff097          	auipc	ra,0xfffff
    80004434:	8dc080e7          	jalr	-1828(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004438:	00048513          	mv	a0,s1
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	9c8080e7          	jalr	-1592(ra) # 80002e04 <_ZdlPv>
    80004444:	01813083          	ld	ra,24(sp)
    80004448:	01013403          	ld	s0,16(sp)
    8000444c:	00813483          	ld	s1,8(sp)
    80004450:	02010113          	addi	sp,sp,32
    80004454:	00008067          	ret

0000000080004458 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004458:	ff010113          	addi	sp,sp,-16
    8000445c:	00113423          	sd	ra,8(sp)
    80004460:	00813023          	sd	s0,0(sp)
    80004464:	01010413          	addi	s0,sp,16
    80004468:	00007797          	auipc	a5,0x7
    8000446c:	2b078793          	addi	a5,a5,688 # 8000b718 <_ZTV7WorkerB+0x10>
    80004470:	00f53023          	sd	a5,0(a0)
    80004474:	fffff097          	auipc	ra,0xfffff
    80004478:	898080e7          	jalr	-1896(ra) # 80002d0c <_ZN6ThreadD1Ev>
    8000447c:	00813083          	ld	ra,8(sp)
    80004480:	00013403          	ld	s0,0(sp)
    80004484:	01010113          	addi	sp,sp,16
    80004488:	00008067          	ret

000000008000448c <_ZN7WorkerBD0Ev>:
    8000448c:	fe010113          	addi	sp,sp,-32
    80004490:	00113c23          	sd	ra,24(sp)
    80004494:	00813823          	sd	s0,16(sp)
    80004498:	00913423          	sd	s1,8(sp)
    8000449c:	02010413          	addi	s0,sp,32
    800044a0:	00050493          	mv	s1,a0
    800044a4:	00007797          	auipc	a5,0x7
    800044a8:	27478793          	addi	a5,a5,628 # 8000b718 <_ZTV7WorkerB+0x10>
    800044ac:	00f53023          	sd	a5,0(a0)
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	85c080e7          	jalr	-1956(ra) # 80002d0c <_ZN6ThreadD1Ev>
    800044b8:	00048513          	mv	a0,s1
    800044bc:	fffff097          	auipc	ra,0xfffff
    800044c0:	948080e7          	jalr	-1720(ra) # 80002e04 <_ZdlPv>
    800044c4:	01813083          	ld	ra,24(sp)
    800044c8:	01013403          	ld	s0,16(sp)
    800044cc:	00813483          	ld	s1,8(sp)
    800044d0:	02010113          	addi	sp,sp,32
    800044d4:	00008067          	ret

00000000800044d8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800044d8:	ff010113          	addi	sp,sp,-16
    800044dc:	00113423          	sd	ra,8(sp)
    800044e0:	00813023          	sd	s0,0(sp)
    800044e4:	01010413          	addi	s0,sp,16
    800044e8:	00007797          	auipc	a5,0x7
    800044ec:	25878793          	addi	a5,a5,600 # 8000b740 <_ZTV7WorkerC+0x10>
    800044f0:	00f53023          	sd	a5,0(a0)
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	818080e7          	jalr	-2024(ra) # 80002d0c <_ZN6ThreadD1Ev>
    800044fc:	00813083          	ld	ra,8(sp)
    80004500:	00013403          	ld	s0,0(sp)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <_ZN7WorkerCD0Ev>:
    8000450c:	fe010113          	addi	sp,sp,-32
    80004510:	00113c23          	sd	ra,24(sp)
    80004514:	00813823          	sd	s0,16(sp)
    80004518:	00913423          	sd	s1,8(sp)
    8000451c:	02010413          	addi	s0,sp,32
    80004520:	00050493          	mv	s1,a0
    80004524:	00007797          	auipc	a5,0x7
    80004528:	21c78793          	addi	a5,a5,540 # 8000b740 <_ZTV7WorkerC+0x10>
    8000452c:	00f53023          	sd	a5,0(a0)
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	7dc080e7          	jalr	2012(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004538:	00048513          	mv	a0,s1
    8000453c:	fffff097          	auipc	ra,0xfffff
    80004540:	8c8080e7          	jalr	-1848(ra) # 80002e04 <_ZdlPv>
    80004544:	01813083          	ld	ra,24(sp)
    80004548:	01013403          	ld	s0,16(sp)
    8000454c:	00813483          	ld	s1,8(sp)
    80004550:	02010113          	addi	sp,sp,32
    80004554:	00008067          	ret

0000000080004558 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004558:	ff010113          	addi	sp,sp,-16
    8000455c:	00113423          	sd	ra,8(sp)
    80004560:	00813023          	sd	s0,0(sp)
    80004564:	01010413          	addi	s0,sp,16
    80004568:	00007797          	auipc	a5,0x7
    8000456c:	20078793          	addi	a5,a5,512 # 8000b768 <_ZTV7WorkerD+0x10>
    80004570:	00f53023          	sd	a5,0(a0)
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	798080e7          	jalr	1944(ra) # 80002d0c <_ZN6ThreadD1Ev>
    8000457c:	00813083          	ld	ra,8(sp)
    80004580:	00013403          	ld	s0,0(sp)
    80004584:	01010113          	addi	sp,sp,16
    80004588:	00008067          	ret

000000008000458c <_ZN7WorkerDD0Ev>:
    8000458c:	fe010113          	addi	sp,sp,-32
    80004590:	00113c23          	sd	ra,24(sp)
    80004594:	00813823          	sd	s0,16(sp)
    80004598:	00913423          	sd	s1,8(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	00050493          	mv	s1,a0
    800045a4:	00007797          	auipc	a5,0x7
    800045a8:	1c478793          	addi	a5,a5,452 # 8000b768 <_ZTV7WorkerD+0x10>
    800045ac:	00f53023          	sd	a5,0(a0)
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	75c080e7          	jalr	1884(ra) # 80002d0c <_ZN6ThreadD1Ev>
    800045b8:	00048513          	mv	a0,s1
    800045bc:	fffff097          	auipc	ra,0xfffff
    800045c0:	848080e7          	jalr	-1976(ra) # 80002e04 <_ZdlPv>
    800045c4:	01813083          	ld	ra,24(sp)
    800045c8:	01013403          	ld	s0,16(sp)
    800045cc:	00813483          	ld	s1,8(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret

00000000800045d8 <_ZN7WorkerA3runEv>:
    void run() override {
    800045d8:	ff010113          	addi	sp,sp,-16
    800045dc:	00113423          	sd	ra,8(sp)
    800045e0:	00813023          	sd	s0,0(sp)
    800045e4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800045e8:	00000593          	li	a1,0
    800045ec:	fffff097          	auipc	ra,0xfffff
    800045f0:	774080e7          	jalr	1908(ra) # 80003d60 <_ZN7WorkerA11workerBodyAEPv>
    }
    800045f4:	00813083          	ld	ra,8(sp)
    800045f8:	00013403          	ld	s0,0(sp)
    800045fc:	01010113          	addi	sp,sp,16
    80004600:	00008067          	ret

0000000080004604 <_ZN7WorkerB3runEv>:
    void run() override {
    80004604:	ff010113          	addi	sp,sp,-16
    80004608:	00113423          	sd	ra,8(sp)
    8000460c:	00813023          	sd	s0,0(sp)
    80004610:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004614:	00000593          	li	a1,0
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	814080e7          	jalr	-2028(ra) # 80003e2c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004620:	00813083          	ld	ra,8(sp)
    80004624:	00013403          	ld	s0,0(sp)
    80004628:	01010113          	addi	sp,sp,16
    8000462c:	00008067          	ret

0000000080004630 <_ZN7WorkerC3runEv>:
    void run() override {
    80004630:	ff010113          	addi	sp,sp,-16
    80004634:	00113423          	sd	ra,8(sp)
    80004638:	00813023          	sd	s0,0(sp)
    8000463c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004640:	00000593          	li	a1,0
    80004644:	00000097          	auipc	ra,0x0
    80004648:	8bc080e7          	jalr	-1860(ra) # 80003f00 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000464c:	00813083          	ld	ra,8(sp)
    80004650:	00013403          	ld	s0,0(sp)
    80004654:	01010113          	addi	sp,sp,16
    80004658:	00008067          	ret

000000008000465c <_ZN7WorkerD3runEv>:
    void run() override {
    8000465c:	ff010113          	addi	sp,sp,-16
    80004660:	00113423          	sd	ra,8(sp)
    80004664:	00813023          	sd	s0,0(sp)
    80004668:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000466c:	00000593          	li	a1,0
    80004670:	00000097          	auipc	ra,0x0
    80004674:	a10080e7          	jalr	-1520(ra) # 80004080 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004678:	00813083          	ld	ra,8(sp)
    8000467c:	00013403          	ld	s0,0(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004688:	f8010113          	addi	sp,sp,-128
    8000468c:	06113c23          	sd	ra,120(sp)
    80004690:	06813823          	sd	s0,112(sp)
    80004694:	06913423          	sd	s1,104(sp)
    80004698:	07213023          	sd	s2,96(sp)
    8000469c:	05313c23          	sd	s3,88(sp)
    800046a0:	05413823          	sd	s4,80(sp)
    800046a4:	05513423          	sd	s5,72(sp)
    800046a8:	05613023          	sd	s6,64(sp)
    800046ac:	03713c23          	sd	s7,56(sp)
    800046b0:	03813823          	sd	s8,48(sp)
    800046b4:	03913423          	sd	s9,40(sp)
    800046b8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800046bc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800046c0:	00005517          	auipc	a0,0x5
    800046c4:	a7050513          	addi	a0,a0,-1424 # 80009130 <CONSOLE_STATUS+0x120>
    800046c8:	00001097          	auipc	ra,0x1
    800046cc:	6fc080e7          	jalr	1788(ra) # 80005dc4 <_Z11printStringPKc>
    getString(input, 30);
    800046d0:	01e00593          	li	a1,30
    800046d4:	f8040493          	addi	s1,s0,-128
    800046d8:	00048513          	mv	a0,s1
    800046dc:	00001097          	auipc	ra,0x1
    800046e0:	770080e7          	jalr	1904(ra) # 80005e4c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800046e4:	00048513          	mv	a0,s1
    800046e8:	00002097          	auipc	ra,0x2
    800046ec:	83c080e7          	jalr	-1988(ra) # 80005f24 <_Z11stringToIntPKc>
    800046f0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800046f4:	00005517          	auipc	a0,0x5
    800046f8:	a5c50513          	addi	a0,a0,-1444 # 80009150 <CONSOLE_STATUS+0x140>
    800046fc:	00001097          	auipc	ra,0x1
    80004700:	6c8080e7          	jalr	1736(ra) # 80005dc4 <_Z11printStringPKc>
    getString(input, 30);
    80004704:	01e00593          	li	a1,30
    80004708:	00048513          	mv	a0,s1
    8000470c:	00001097          	auipc	ra,0x1
    80004710:	740080e7          	jalr	1856(ra) # 80005e4c <_Z9getStringPci>
    n = stringToInt(input);
    80004714:	00048513          	mv	a0,s1
    80004718:	00002097          	auipc	ra,0x2
    8000471c:	80c080e7          	jalr	-2036(ra) # 80005f24 <_Z11stringToIntPKc>
    80004720:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004724:	00005517          	auipc	a0,0x5
    80004728:	a4c50513          	addi	a0,a0,-1460 # 80009170 <CONSOLE_STATUS+0x160>
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	698080e7          	jalr	1688(ra) # 80005dc4 <_Z11printStringPKc>
    printInt(threadNum);
    80004734:	00000613          	li	a2,0
    80004738:	00a00593          	li	a1,10
    8000473c:	00098513          	mv	a0,s3
    80004740:	00002097          	auipc	ra,0x2
    80004744:	834080e7          	jalr	-1996(ra) # 80005f74 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004748:	00005517          	auipc	a0,0x5
    8000474c:	a4050513          	addi	a0,a0,-1472 # 80009188 <CONSOLE_STATUS+0x178>
    80004750:	00001097          	auipc	ra,0x1
    80004754:	674080e7          	jalr	1652(ra) # 80005dc4 <_Z11printStringPKc>
    printInt(n);
    80004758:	00000613          	li	a2,0
    8000475c:	00a00593          	li	a1,10
    80004760:	00048513          	mv	a0,s1
    80004764:	00002097          	auipc	ra,0x2
    80004768:	810080e7          	jalr	-2032(ra) # 80005f74 <_Z8printIntiii>
    printString(".\n");
    8000476c:	00005517          	auipc	a0,0x5
    80004770:	a3450513          	addi	a0,a0,-1484 # 800091a0 <CONSOLE_STATUS+0x190>
    80004774:	00001097          	auipc	ra,0x1
    80004778:	650080e7          	jalr	1616(ra) # 80005dc4 <_Z11printStringPKc>
    if (threadNum > n) {
    8000477c:	0334c463          	blt	s1,s3,800047a4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004780:	03305c63          	blez	s3,800047b8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004784:	03800513          	li	a0,56
    80004788:	ffffe097          	auipc	ra,0xffffe
    8000478c:	654080e7          	jalr	1620(ra) # 80002ddc <_Znwm>
    80004790:	00050a93          	mv	s5,a0
    80004794:	00048593          	mv	a1,s1
    80004798:	00002097          	auipc	ra,0x2
    8000479c:	8fc080e7          	jalr	-1796(ra) # 80006094 <_ZN9BufferCPPC1Ei>
    800047a0:	0300006f          	j	800047d0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	a0450513          	addi	a0,a0,-1532 # 800091a8 <CONSOLE_STATUS+0x198>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	618080e7          	jalr	1560(ra) # 80005dc4 <_Z11printStringPKc>
        return;
    800047b4:	0140006f          	j	800047c8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	a3050513          	addi	a0,a0,-1488 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	604080e7          	jalr	1540(ra) # 80005dc4 <_Z11printStringPKc>
        return;
    800047c8:	000c0113          	mv	sp,s8
    800047cc:	2140006f          	j	800049e0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800047d0:	01000513          	li	a0,16
    800047d4:	ffffe097          	auipc	ra,0xffffe
    800047d8:	608080e7          	jalr	1544(ra) # 80002ddc <_Znwm>
    800047dc:	00050913          	mv	s2,a0
    800047e0:	00000593          	li	a1,0
    800047e4:	ffffe097          	auipc	ra,0xffffe
    800047e8:	7b4080e7          	jalr	1972(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    800047ec:	00007797          	auipc	a5,0x7
    800047f0:	3d27b223          	sd	s2,964(a5) # 8000bbb0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800047f4:	00399793          	slli	a5,s3,0x3
    800047f8:	00f78793          	addi	a5,a5,15
    800047fc:	ff07f793          	andi	a5,a5,-16
    80004800:	40f10133          	sub	sp,sp,a5
    80004804:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004808:	0019871b          	addiw	a4,s3,1
    8000480c:	00171793          	slli	a5,a4,0x1
    80004810:	00e787b3          	add	a5,a5,a4
    80004814:	00379793          	slli	a5,a5,0x3
    80004818:	00f78793          	addi	a5,a5,15
    8000481c:	ff07f793          	andi	a5,a5,-16
    80004820:	40f10133          	sub	sp,sp,a5
    80004824:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004828:	00199493          	slli	s1,s3,0x1
    8000482c:	013484b3          	add	s1,s1,s3
    80004830:	00349493          	slli	s1,s1,0x3
    80004834:	009b04b3          	add	s1,s6,s1
    80004838:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000483c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004840:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004844:	02800513          	li	a0,40
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	594080e7          	jalr	1428(ra) # 80002ddc <_Znwm>
    80004850:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004854:	ffffe097          	auipc	ra,0xffffe
    80004858:	670080e7          	jalr	1648(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    8000485c:	00007797          	auipc	a5,0x7
    80004860:	f8478793          	addi	a5,a5,-124 # 8000b7e0 <_ZTV8Consumer+0x10>
    80004864:	00fbb023          	sd	a5,0(s7)
    80004868:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000486c:	000b8513          	mv	a0,s7
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	684080e7          	jalr	1668(ra) # 80002ef4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004878:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000487c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004880:	00007797          	auipc	a5,0x7
    80004884:	3307b783          	ld	a5,816(a5) # 8000bbb0 <_ZL10waitForAll>
    80004888:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000488c:	02800513          	li	a0,40
    80004890:	ffffe097          	auipc	ra,0xffffe
    80004894:	54c080e7          	jalr	1356(ra) # 80002ddc <_Znwm>
    80004898:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000489c:	ffffe097          	auipc	ra,0xffffe
    800048a0:	628080e7          	jalr	1576(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    800048a4:	00007797          	auipc	a5,0x7
    800048a8:	eec78793          	addi	a5,a5,-276 # 8000b790 <_ZTV16ProducerKeyborad+0x10>
    800048ac:	00f4b023          	sd	a5,0(s1)
    800048b0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800048b4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800048b8:	00048513          	mv	a0,s1
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	638080e7          	jalr	1592(ra) # 80002ef4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800048c4:	00100913          	li	s2,1
    800048c8:	0300006f          	j	800048f8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	eec78793          	addi	a5,a5,-276 # 8000b7b8 <_ZTV8Producer+0x10>
    800048d4:	00fcb023          	sd	a5,0(s9)
    800048d8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800048dc:	00391793          	slli	a5,s2,0x3
    800048e0:	00fa07b3          	add	a5,s4,a5
    800048e4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800048e8:	000c8513          	mv	a0,s9
    800048ec:	ffffe097          	auipc	ra,0xffffe
    800048f0:	608080e7          	jalr	1544(ra) # 80002ef4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800048f4:	0019091b          	addiw	s2,s2,1
    800048f8:	05395263          	bge	s2,s3,8000493c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800048fc:	00191493          	slli	s1,s2,0x1
    80004900:	012484b3          	add	s1,s1,s2
    80004904:	00349493          	slli	s1,s1,0x3
    80004908:	009b04b3          	add	s1,s6,s1
    8000490c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004910:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004914:	00007797          	auipc	a5,0x7
    80004918:	29c7b783          	ld	a5,668(a5) # 8000bbb0 <_ZL10waitForAll>
    8000491c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004920:	02800513          	li	a0,40
    80004924:	ffffe097          	auipc	ra,0xffffe
    80004928:	4b8080e7          	jalr	1208(ra) # 80002ddc <_Znwm>
    8000492c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004930:	ffffe097          	auipc	ra,0xffffe
    80004934:	594080e7          	jalr	1428(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80004938:	f95ff06f          	j	800048cc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000493c:	ffffe097          	auipc	ra,0xffffe
    80004940:	60c080e7          	jalr	1548(ra) # 80002f48 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004944:	00000493          	li	s1,0
    80004948:	0099ce63          	blt	s3,s1,80004964 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000494c:	00007517          	auipc	a0,0x7
    80004950:	26453503          	ld	a0,612(a0) # 8000bbb0 <_ZL10waitForAll>
    80004954:	ffffe097          	auipc	ra,0xffffe
    80004958:	67c080e7          	jalr	1660(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000495c:	0014849b          	addiw	s1,s1,1
    80004960:	fe9ff06f          	j	80004948 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004964:	00007517          	auipc	a0,0x7
    80004968:	24c53503          	ld	a0,588(a0) # 8000bbb0 <_ZL10waitForAll>
    8000496c:	00050863          	beqz	a0,8000497c <_Z20testConsumerProducerv+0x2f4>
    80004970:	00053783          	ld	a5,0(a0)
    80004974:	0087b783          	ld	a5,8(a5)
    80004978:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000497c:	00000493          	li	s1,0
    80004980:	0080006f          	j	80004988 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004984:	0014849b          	addiw	s1,s1,1
    80004988:	0334d263          	bge	s1,s3,800049ac <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000498c:	00349793          	slli	a5,s1,0x3
    80004990:	00fa07b3          	add	a5,s4,a5
    80004994:	0007b503          	ld	a0,0(a5)
    80004998:	fe0506e3          	beqz	a0,80004984 <_Z20testConsumerProducerv+0x2fc>
    8000499c:	00053783          	ld	a5,0(a0)
    800049a0:	0087b783          	ld	a5,8(a5)
    800049a4:	000780e7          	jalr	a5
    800049a8:	fddff06f          	j	80004984 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800049ac:	000b8a63          	beqz	s7,800049c0 <_Z20testConsumerProducerv+0x338>
    800049b0:	000bb783          	ld	a5,0(s7)
    800049b4:	0087b783          	ld	a5,8(a5)
    800049b8:	000b8513          	mv	a0,s7
    800049bc:	000780e7          	jalr	a5
    delete buffer;
    800049c0:	000a8e63          	beqz	s5,800049dc <_Z20testConsumerProducerv+0x354>
    800049c4:	000a8513          	mv	a0,s5
    800049c8:	00002097          	auipc	ra,0x2
    800049cc:	9c4080e7          	jalr	-1596(ra) # 8000638c <_ZN9BufferCPPD1Ev>
    800049d0:	000a8513          	mv	a0,s5
    800049d4:	ffffe097          	auipc	ra,0xffffe
    800049d8:	430080e7          	jalr	1072(ra) # 80002e04 <_ZdlPv>
    800049dc:	000c0113          	mv	sp,s8
}
    800049e0:	f8040113          	addi	sp,s0,-128
    800049e4:	07813083          	ld	ra,120(sp)
    800049e8:	07013403          	ld	s0,112(sp)
    800049ec:	06813483          	ld	s1,104(sp)
    800049f0:	06013903          	ld	s2,96(sp)
    800049f4:	05813983          	ld	s3,88(sp)
    800049f8:	05013a03          	ld	s4,80(sp)
    800049fc:	04813a83          	ld	s5,72(sp)
    80004a00:	04013b03          	ld	s6,64(sp)
    80004a04:	03813b83          	ld	s7,56(sp)
    80004a08:	03013c03          	ld	s8,48(sp)
    80004a0c:	02813c83          	ld	s9,40(sp)
    80004a10:	08010113          	addi	sp,sp,128
    80004a14:	00008067          	ret
    80004a18:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a1c:	000a8513          	mv	a0,s5
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	3e4080e7          	jalr	996(ra) # 80002e04 <_ZdlPv>
    80004a28:	00048513          	mv	a0,s1
    80004a2c:	00008097          	auipc	ra,0x8
    80004a30:	27c080e7          	jalr	636(ra) # 8000cca8 <_Unwind_Resume>
    80004a34:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004a38:	00090513          	mv	a0,s2
    80004a3c:	ffffe097          	auipc	ra,0xffffe
    80004a40:	3c8080e7          	jalr	968(ra) # 80002e04 <_ZdlPv>
    80004a44:	00048513          	mv	a0,s1
    80004a48:	00008097          	auipc	ra,0x8
    80004a4c:	260080e7          	jalr	608(ra) # 8000cca8 <_Unwind_Resume>
    80004a50:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004a54:	000b8513          	mv	a0,s7
    80004a58:	ffffe097          	auipc	ra,0xffffe
    80004a5c:	3ac080e7          	jalr	940(ra) # 80002e04 <_ZdlPv>
    80004a60:	00048513          	mv	a0,s1
    80004a64:	00008097          	auipc	ra,0x8
    80004a68:	244080e7          	jalr	580(ra) # 8000cca8 <_Unwind_Resume>
    80004a6c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a70:	00048513          	mv	a0,s1
    80004a74:	ffffe097          	auipc	ra,0xffffe
    80004a78:	390080e7          	jalr	912(ra) # 80002e04 <_ZdlPv>
    80004a7c:	00090513          	mv	a0,s2
    80004a80:	00008097          	auipc	ra,0x8
    80004a84:	228080e7          	jalr	552(ra) # 8000cca8 <_Unwind_Resume>
    80004a88:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004a8c:	000c8513          	mv	a0,s9
    80004a90:	ffffe097          	auipc	ra,0xffffe
    80004a94:	374080e7          	jalr	884(ra) # 80002e04 <_ZdlPv>
    80004a98:	00048513          	mv	a0,s1
    80004a9c:	00008097          	auipc	ra,0x8
    80004aa0:	20c080e7          	jalr	524(ra) # 8000cca8 <_Unwind_Resume>

0000000080004aa4 <_ZN8Consumer3runEv>:
    void run() override {
    80004aa4:	fd010113          	addi	sp,sp,-48
    80004aa8:	02113423          	sd	ra,40(sp)
    80004aac:	02813023          	sd	s0,32(sp)
    80004ab0:	00913c23          	sd	s1,24(sp)
    80004ab4:	01213823          	sd	s2,16(sp)
    80004ab8:	01313423          	sd	s3,8(sp)
    80004abc:	03010413          	addi	s0,sp,48
    80004ac0:	00050913          	mv	s2,a0
        int i = 0;
    80004ac4:	00000993          	li	s3,0
    80004ac8:	0100006f          	j	80004ad8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004acc:	00a00513          	li	a0,10
    80004ad0:	ffffe097          	auipc	ra,0xffffe
    80004ad4:	5ec080e7          	jalr	1516(ra) # 800030bc <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004ad8:	00007797          	auipc	a5,0x7
    80004adc:	0d07a783          	lw	a5,208(a5) # 8000bba8 <_ZL9threadEnd>
    80004ae0:	04079a63          	bnez	a5,80004b34 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004ae4:	02093783          	ld	a5,32(s2)
    80004ae8:	0087b503          	ld	a0,8(a5)
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	78c080e7          	jalr	1932(ra) # 80006278 <_ZN9BufferCPP3getEv>
            i++;
    80004af4:	0019849b          	addiw	s1,s3,1
    80004af8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004afc:	0ff57513          	andi	a0,a0,255
    80004b00:	ffffe097          	auipc	ra,0xffffe
    80004b04:	5bc080e7          	jalr	1468(ra) # 800030bc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004b08:	05000793          	li	a5,80
    80004b0c:	02f4e4bb          	remw	s1,s1,a5
    80004b10:	fc0494e3          	bnez	s1,80004ad8 <_ZN8Consumer3runEv+0x34>
    80004b14:	fb9ff06f          	j	80004acc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004b18:	02093783          	ld	a5,32(s2)
    80004b1c:	0087b503          	ld	a0,8(a5)
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	758080e7          	jalr	1880(ra) # 80006278 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004b28:	0ff57513          	andi	a0,a0,255
    80004b2c:	ffffe097          	auipc	ra,0xffffe
    80004b30:	590080e7          	jalr	1424(ra) # 800030bc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004b34:	02093783          	ld	a5,32(s2)
    80004b38:	0087b503          	ld	a0,8(a5)
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	7c8080e7          	jalr	1992(ra) # 80006304 <_ZN9BufferCPP6getCntEv>
    80004b44:	fca04ae3          	bgtz	a0,80004b18 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004b48:	02093783          	ld	a5,32(s2)
    80004b4c:	0107b503          	ld	a0,16(a5)
    80004b50:	ffffe097          	auipc	ra,0xffffe
    80004b54:	4ac080e7          	jalr	1196(ra) # 80002ffc <_ZN9Semaphore6signalEv>
    }
    80004b58:	02813083          	ld	ra,40(sp)
    80004b5c:	02013403          	ld	s0,32(sp)
    80004b60:	01813483          	ld	s1,24(sp)
    80004b64:	01013903          	ld	s2,16(sp)
    80004b68:	00813983          	ld	s3,8(sp)
    80004b6c:	03010113          	addi	sp,sp,48
    80004b70:	00008067          	ret

0000000080004b74 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004b74:	ff010113          	addi	sp,sp,-16
    80004b78:	00113423          	sd	ra,8(sp)
    80004b7c:	00813023          	sd	s0,0(sp)
    80004b80:	01010413          	addi	s0,sp,16
    80004b84:	00007797          	auipc	a5,0x7
    80004b88:	c5c78793          	addi	a5,a5,-932 # 8000b7e0 <_ZTV8Consumer+0x10>
    80004b8c:	00f53023          	sd	a5,0(a0)
    80004b90:	ffffe097          	auipc	ra,0xffffe
    80004b94:	17c080e7          	jalr	380(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004b98:	00813083          	ld	ra,8(sp)
    80004b9c:	00013403          	ld	s0,0(sp)
    80004ba0:	01010113          	addi	sp,sp,16
    80004ba4:	00008067          	ret

0000000080004ba8 <_ZN8ConsumerD0Ev>:
    80004ba8:	fe010113          	addi	sp,sp,-32
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	00813823          	sd	s0,16(sp)
    80004bb4:	00913423          	sd	s1,8(sp)
    80004bb8:	02010413          	addi	s0,sp,32
    80004bbc:	00050493          	mv	s1,a0
    80004bc0:	00007797          	auipc	a5,0x7
    80004bc4:	c2078793          	addi	a5,a5,-992 # 8000b7e0 <_ZTV8Consumer+0x10>
    80004bc8:	00f53023          	sd	a5,0(a0)
    80004bcc:	ffffe097          	auipc	ra,0xffffe
    80004bd0:	140080e7          	jalr	320(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004bd4:	00048513          	mv	a0,s1
    80004bd8:	ffffe097          	auipc	ra,0xffffe
    80004bdc:	22c080e7          	jalr	556(ra) # 80002e04 <_ZdlPv>
    80004be0:	01813083          	ld	ra,24(sp)
    80004be4:	01013403          	ld	s0,16(sp)
    80004be8:	00813483          	ld	s1,8(sp)
    80004bec:	02010113          	addi	sp,sp,32
    80004bf0:	00008067          	ret

0000000080004bf4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004bf4:	ff010113          	addi	sp,sp,-16
    80004bf8:	00113423          	sd	ra,8(sp)
    80004bfc:	00813023          	sd	s0,0(sp)
    80004c00:	01010413          	addi	s0,sp,16
    80004c04:	00007797          	auipc	a5,0x7
    80004c08:	b8c78793          	addi	a5,a5,-1140 # 8000b790 <_ZTV16ProducerKeyborad+0x10>
    80004c0c:	00f53023          	sd	a5,0(a0)
    80004c10:	ffffe097          	auipc	ra,0xffffe
    80004c14:	0fc080e7          	jalr	252(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004c18:	00813083          	ld	ra,8(sp)
    80004c1c:	00013403          	ld	s0,0(sp)
    80004c20:	01010113          	addi	sp,sp,16
    80004c24:	00008067          	ret

0000000080004c28 <_ZN16ProducerKeyboradD0Ev>:
    80004c28:	fe010113          	addi	sp,sp,-32
    80004c2c:	00113c23          	sd	ra,24(sp)
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00913423          	sd	s1,8(sp)
    80004c38:	02010413          	addi	s0,sp,32
    80004c3c:	00050493          	mv	s1,a0
    80004c40:	00007797          	auipc	a5,0x7
    80004c44:	b5078793          	addi	a5,a5,-1200 # 8000b790 <_ZTV16ProducerKeyborad+0x10>
    80004c48:	00f53023          	sd	a5,0(a0)
    80004c4c:	ffffe097          	auipc	ra,0xffffe
    80004c50:	0c0080e7          	jalr	192(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004c54:	00048513          	mv	a0,s1
    80004c58:	ffffe097          	auipc	ra,0xffffe
    80004c5c:	1ac080e7          	jalr	428(ra) # 80002e04 <_ZdlPv>
    80004c60:	01813083          	ld	ra,24(sp)
    80004c64:	01013403          	ld	s0,16(sp)
    80004c68:	00813483          	ld	s1,8(sp)
    80004c6c:	02010113          	addi	sp,sp,32
    80004c70:	00008067          	ret

0000000080004c74 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004c74:	ff010113          	addi	sp,sp,-16
    80004c78:	00113423          	sd	ra,8(sp)
    80004c7c:	00813023          	sd	s0,0(sp)
    80004c80:	01010413          	addi	s0,sp,16
    80004c84:	00007797          	auipc	a5,0x7
    80004c88:	b3478793          	addi	a5,a5,-1228 # 8000b7b8 <_ZTV8Producer+0x10>
    80004c8c:	00f53023          	sd	a5,0(a0)
    80004c90:	ffffe097          	auipc	ra,0xffffe
    80004c94:	07c080e7          	jalr	124(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004c98:	00813083          	ld	ra,8(sp)
    80004c9c:	00013403          	ld	s0,0(sp)
    80004ca0:	01010113          	addi	sp,sp,16
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN8ProducerD0Ev>:
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	02010413          	addi	s0,sp,32
    80004cbc:	00050493          	mv	s1,a0
    80004cc0:	00007797          	auipc	a5,0x7
    80004cc4:	af878793          	addi	a5,a5,-1288 # 8000b7b8 <_ZTV8Producer+0x10>
    80004cc8:	00f53023          	sd	a5,0(a0)
    80004ccc:	ffffe097          	auipc	ra,0xffffe
    80004cd0:	040080e7          	jalr	64(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80004cd4:	00048513          	mv	a0,s1
    80004cd8:	ffffe097          	auipc	ra,0xffffe
    80004cdc:	12c080e7          	jalr	300(ra) # 80002e04 <_ZdlPv>
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	00813483          	ld	s1,8(sp)
    80004cec:	02010113          	addi	sp,sp,32
    80004cf0:	00008067          	ret

0000000080004cf4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004cf4:	fe010113          	addi	sp,sp,-32
    80004cf8:	00113c23          	sd	ra,24(sp)
    80004cfc:	00813823          	sd	s0,16(sp)
    80004d00:	00913423          	sd	s1,8(sp)
    80004d04:	02010413          	addi	s0,sp,32
    80004d08:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004d0c:	ffffd097          	auipc	ra,0xffffd
    80004d10:	a74080e7          	jalr	-1420(ra) # 80001780 <getc>
    80004d14:	0005059b          	sext.w	a1,a0
    80004d18:	01b00793          	li	a5,27
    80004d1c:	00f58c63          	beq	a1,a5,80004d34 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004d20:	0204b783          	ld	a5,32(s1)
    80004d24:	0087b503          	ld	a0,8(a5)
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	4c0080e7          	jalr	1216(ra) # 800061e8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004d30:	fddff06f          	j	80004d0c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004d34:	00100793          	li	a5,1
    80004d38:	00007717          	auipc	a4,0x7
    80004d3c:	e6f72823          	sw	a5,-400(a4) # 8000bba8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004d40:	0204b783          	ld	a5,32(s1)
    80004d44:	02100593          	li	a1,33
    80004d48:	0087b503          	ld	a0,8(a5)
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	49c080e7          	jalr	1180(ra) # 800061e8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004d54:	0204b783          	ld	a5,32(s1)
    80004d58:	0107b503          	ld	a0,16(a5)
    80004d5c:	ffffe097          	auipc	ra,0xffffe
    80004d60:	2a0080e7          	jalr	672(ra) # 80002ffc <_ZN9Semaphore6signalEv>
    }
    80004d64:	01813083          	ld	ra,24(sp)
    80004d68:	01013403          	ld	s0,16(sp)
    80004d6c:	00813483          	ld	s1,8(sp)
    80004d70:	02010113          	addi	sp,sp,32
    80004d74:	00008067          	ret

0000000080004d78 <_ZN8Producer3runEv>:
    void run() override {
    80004d78:	fe010113          	addi	sp,sp,-32
    80004d7c:	00113c23          	sd	ra,24(sp)
    80004d80:	00813823          	sd	s0,16(sp)
    80004d84:	00913423          	sd	s1,8(sp)
    80004d88:	01213023          	sd	s2,0(sp)
    80004d8c:	02010413          	addi	s0,sp,32
    80004d90:	00050493          	mv	s1,a0
        int i = 0;
    80004d94:	00000913          	li	s2,0
        while (!threadEnd) {
    80004d98:	00007797          	auipc	a5,0x7
    80004d9c:	e107a783          	lw	a5,-496(a5) # 8000bba8 <_ZL9threadEnd>
    80004da0:	04079263          	bnez	a5,80004de4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004da4:	0204b783          	ld	a5,32(s1)
    80004da8:	0007a583          	lw	a1,0(a5)
    80004dac:	0305859b          	addiw	a1,a1,48
    80004db0:	0087b503          	ld	a0,8(a5)
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	434080e7          	jalr	1076(ra) # 800061e8 <_ZN9BufferCPP3putEi>
            i++;
    80004dbc:	0019071b          	addiw	a4,s2,1
    80004dc0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004dc4:	0204b783          	ld	a5,32(s1)
    80004dc8:	0007a783          	lw	a5,0(a5)
    80004dcc:	00e787bb          	addw	a5,a5,a4
    80004dd0:	00500513          	li	a0,5
    80004dd4:	02a7e53b          	remw	a0,a5,a0
    80004dd8:	ffffe097          	auipc	ra,0xffffe
    80004ddc:	198080e7          	jalr	408(ra) # 80002f70 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004de0:	fb9ff06f          	j	80004d98 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004de4:	0204b783          	ld	a5,32(s1)
    80004de8:	0107b503          	ld	a0,16(a5)
    80004dec:	ffffe097          	auipc	ra,0xffffe
    80004df0:	210080e7          	jalr	528(ra) # 80002ffc <_ZN9Semaphore6signalEv>
    }
    80004df4:	01813083          	ld	ra,24(sp)
    80004df8:	01013403          	ld	s0,16(sp)
    80004dfc:	00813483          	ld	s1,8(sp)
    80004e00:	00013903          	ld	s2,0(sp)
    80004e04:	02010113          	addi	sp,sp,32
    80004e08:	00008067          	ret

0000000080004e0c <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    80004e0c:	fe010113          	addi	sp,sp,-32
    80004e10:	00113c23          	sd	ra,24(sp)
    80004e14:	00813823          	sd	s0,16(sp)
    80004e18:	00913423          	sd	s1,8(sp)
    80004e1c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004e20:	00004517          	auipc	a0,0x4
    80004e24:	4f050513          	addi	a0,a0,1264 # 80009310 <CONSOLE_STATUS+0x300>
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	f9c080e7          	jalr	-100(ra) # 80005dc4 <_Z11printStringPKc>
    int test = getc() - '0';
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	950080e7          	jalr	-1712(ra) # 80001780 <getc>
    80004e38:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	944080e7          	jalr	-1724(ra) # 80001780 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004e44:	00700793          	li	a5,7
    80004e48:	1097e263          	bltu	a5,s1,80004f4c <_Z8userMainv+0x140>
    80004e4c:	00249493          	slli	s1,s1,0x2
    80004e50:	00004717          	auipc	a4,0x4
    80004e54:	71870713          	addi	a4,a4,1816 # 80009568 <CONSOLE_STATUS+0x558>
    80004e58:	00e484b3          	add	s1,s1,a4
    80004e5c:	0004a783          	lw	a5,0(s1)
    80004e60:	00e787b3          	add	a5,a5,a4
    80004e64:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004e68:	00000097          	auipc	ra,0x0
    80004e6c:	5d4080e7          	jalr	1492(ra) # 8000543c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	4c050513          	addi	a0,a0,1216 # 80009330 <CONSOLE_STATUS+0x320>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	f4c080e7          	jalr	-180(ra) # 80005dc4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    80004e80:	01813083          	ld	ra,24(sp)
    80004e84:	01013403          	ld	s0,16(sp)
    80004e88:	00813483          	ld	s1,8(sp)
    80004e8c:	02010113          	addi	sp,sp,32
    80004e90:	00008067          	ret
            Threads_CPP_API_test();
    80004e94:	fffff097          	auipc	ra,0xfffff
    80004e98:	334080e7          	jalr	820(ra) # 800041c8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004e9c:	00004517          	auipc	a0,0x4
    80004ea0:	4d450513          	addi	a0,a0,1236 # 80009370 <CONSOLE_STATUS+0x360>
    80004ea4:	00001097          	auipc	ra,0x1
    80004ea8:	f20080e7          	jalr	-224(ra) # 80005dc4 <_Z11printStringPKc>
            break;
    80004eac:	fd5ff06f          	j	80004e80 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004eb0:	fffff097          	auipc	ra,0xfffff
    80004eb4:	b6c080e7          	jalr	-1172(ra) # 80003a1c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	4f850513          	addi	a0,a0,1272 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	f04080e7          	jalr	-252(ra) # 80005dc4 <_Z11printStringPKc>
            break;
    80004ec8:	fb9ff06f          	j	80004e80 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	8b4080e7          	jalr	-1868(ra) # 80005780 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004ed4:	00004517          	auipc	a0,0x4
    80004ed8:	52c50513          	addi	a0,a0,1324 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004edc:	00001097          	auipc	ra,0x1
    80004ee0:	ee8080e7          	jalr	-280(ra) # 80005dc4 <_Z11printStringPKc>
            break;
    80004ee4:	f9dff06f          	j	80004e80 <_Z8userMainv+0x74>
            testSleeping();
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	648080e7          	jalr	1608(ra) # 80006530 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80004ef0:	00004517          	auipc	a0,0x4
    80004ef4:	56850513          	addi	a0,a0,1384 # 80009458 <CONSOLE_STATUS+0x448>
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	ecc080e7          	jalr	-308(ra) # 80005dc4 <_Z11printStringPKc>
            break;
    80004f00:	f81ff06f          	j	80004e80 <_Z8userMainv+0x74>
            testConsumerProducer();
    80004f04:	fffff097          	auipc	ra,0xfffff
    80004f08:	784080e7          	jalr	1924(ra) # 80004688 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80004f0c:	00004517          	auipc	a0,0x4
    80004f10:	57c50513          	addi	a0,a0,1404 # 80009488 <CONSOLE_STATUS+0x478>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	eb0080e7          	jalr	-336(ra) # 80005dc4 <_Z11printStringPKc>
            break;
    80004f1c:	f65ff06f          	j	80004e80 <_Z8userMainv+0x74>
            System_Mode_test();
    80004f20:	00002097          	auipc	ra,0x2
    80004f24:	b84080e7          	jalr	-1148(ra) # 80006aa4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004f28:	00004517          	auipc	a0,0x4
    80004f2c:	5a050513          	addi	a0,a0,1440 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80004f30:	00001097          	auipc	ra,0x1
    80004f34:	e94080e7          	jalr	-364(ra) # 80005dc4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004f38:	00004517          	auipc	a0,0x4
    80004f3c:	5b050513          	addi	a0,a0,1456 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004f40:	00001097          	auipc	ra,0x1
    80004f44:	e84080e7          	jalr	-380(ra) # 80005dc4 <_Z11printStringPKc>
            break;
    80004f48:	f39ff06f          	j	80004e80 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004f4c:	00004517          	auipc	a0,0x4
    80004f50:	5f450513          	addi	a0,a0,1524 # 80009540 <CONSOLE_STATUS+0x530>
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	e70080e7          	jalr	-400(ra) # 80005dc4 <_Z11printStringPKc>
    80004f5c:	f25ff06f          	j	80004e80 <_Z8userMainv+0x74>

0000000080004f60 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004f60:	fe010113          	addi	sp,sp,-32
    80004f64:	00113c23          	sd	ra,24(sp)
    80004f68:	00813823          	sd	s0,16(sp)
    80004f6c:	00913423          	sd	s1,8(sp)
    80004f70:	01213023          	sd	s2,0(sp)
    80004f74:	02010413          	addi	s0,sp,32
    80004f78:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004f7c:	00100793          	li	a5,1
    80004f80:	02a7f863          	bgeu	a5,a0,80004fb0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004f84:	00a00793          	li	a5,10
    80004f88:	02f577b3          	remu	a5,a0,a5
    80004f8c:	02078e63          	beqz	a5,80004fc8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004f90:	fff48513          	addi	a0,s1,-1
    80004f94:	00000097          	auipc	ra,0x0
    80004f98:	fcc080e7          	jalr	-52(ra) # 80004f60 <_ZL9fibonaccim>
    80004f9c:	00050913          	mv	s2,a0
    80004fa0:	ffe48513          	addi	a0,s1,-2
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	fbc080e7          	jalr	-68(ra) # 80004f60 <_ZL9fibonaccim>
    80004fac:	00a90533          	add	a0,s2,a0
}
    80004fb0:	01813083          	ld	ra,24(sp)
    80004fb4:	01013403          	ld	s0,16(sp)
    80004fb8:	00813483          	ld	s1,8(sp)
    80004fbc:	00013903          	ld	s2,0(sp)
    80004fc0:	02010113          	addi	sp,sp,32
    80004fc4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004fc8:	ffffc097          	auipc	ra,0xffffc
    80004fcc:	688080e7          	jalr	1672(ra) # 80001650 <thread_dispatch>
    80004fd0:	fc1ff06f          	j	80004f90 <_ZL9fibonaccim+0x30>

0000000080004fd4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004fd4:	fe010113          	addi	sp,sp,-32
    80004fd8:	00113c23          	sd	ra,24(sp)
    80004fdc:	00813823          	sd	s0,16(sp)
    80004fe0:	00913423          	sd	s1,8(sp)
    80004fe4:	01213023          	sd	s2,0(sp)
    80004fe8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004fec:	00a00493          	li	s1,10
    80004ff0:	0400006f          	j	80005030 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ff4:	00004517          	auipc	a0,0x4
    80004ff8:	28450513          	addi	a0,a0,644 # 80009278 <CONSOLE_STATUS+0x268>
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	dc8080e7          	jalr	-568(ra) # 80005dc4 <_Z11printStringPKc>
    80005004:	00000613          	li	a2,0
    80005008:	00a00593          	li	a1,10
    8000500c:	00048513          	mv	a0,s1
    80005010:	00001097          	auipc	ra,0x1
    80005014:	f64080e7          	jalr	-156(ra) # 80005f74 <_Z8printIntiii>
    80005018:	00004517          	auipc	a0,0x4
    8000501c:	43850513          	addi	a0,a0,1080 # 80009450 <CONSOLE_STATUS+0x440>
    80005020:	00001097          	auipc	ra,0x1
    80005024:	da4080e7          	jalr	-604(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005028:	0014849b          	addiw	s1,s1,1
    8000502c:	0ff4f493          	andi	s1,s1,255
    80005030:	00c00793          	li	a5,12
    80005034:	fc97f0e3          	bgeu	a5,s1,80004ff4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005038:	00004517          	auipc	a0,0x4
    8000503c:	24850513          	addi	a0,a0,584 # 80009280 <CONSOLE_STATUS+0x270>
    80005040:	00001097          	auipc	ra,0x1
    80005044:	d84080e7          	jalr	-636(ra) # 80005dc4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005048:	00500313          	li	t1,5
    thread_dispatch();
    8000504c:	ffffc097          	auipc	ra,0xffffc
    80005050:	604080e7          	jalr	1540(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005054:	01000513          	li	a0,16
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	f08080e7          	jalr	-248(ra) # 80004f60 <_ZL9fibonaccim>
    80005060:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005064:	00004517          	auipc	a0,0x4
    80005068:	22c50513          	addi	a0,a0,556 # 80009290 <CONSOLE_STATUS+0x280>
    8000506c:	00001097          	auipc	ra,0x1
    80005070:	d58080e7          	jalr	-680(ra) # 80005dc4 <_Z11printStringPKc>
    80005074:	00000613          	li	a2,0
    80005078:	00a00593          	li	a1,10
    8000507c:	0009051b          	sext.w	a0,s2
    80005080:	00001097          	auipc	ra,0x1
    80005084:	ef4080e7          	jalr	-268(ra) # 80005f74 <_Z8printIntiii>
    80005088:	00004517          	auipc	a0,0x4
    8000508c:	3c850513          	addi	a0,a0,968 # 80009450 <CONSOLE_STATUS+0x440>
    80005090:	00001097          	auipc	ra,0x1
    80005094:	d34080e7          	jalr	-716(ra) # 80005dc4 <_Z11printStringPKc>
    80005098:	0400006f          	j	800050d8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000509c:	00004517          	auipc	a0,0x4
    800050a0:	1dc50513          	addi	a0,a0,476 # 80009278 <CONSOLE_STATUS+0x268>
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	d20080e7          	jalr	-736(ra) # 80005dc4 <_Z11printStringPKc>
    800050ac:	00000613          	li	a2,0
    800050b0:	00a00593          	li	a1,10
    800050b4:	00048513          	mv	a0,s1
    800050b8:	00001097          	auipc	ra,0x1
    800050bc:	ebc080e7          	jalr	-324(ra) # 80005f74 <_Z8printIntiii>
    800050c0:	00004517          	auipc	a0,0x4
    800050c4:	39050513          	addi	a0,a0,912 # 80009450 <CONSOLE_STATUS+0x440>
    800050c8:	00001097          	auipc	ra,0x1
    800050cc:	cfc080e7          	jalr	-772(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800050d0:	0014849b          	addiw	s1,s1,1
    800050d4:	0ff4f493          	andi	s1,s1,255
    800050d8:	00f00793          	li	a5,15
    800050dc:	fc97f0e3          	bgeu	a5,s1,8000509c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800050e0:	00004517          	auipc	a0,0x4
    800050e4:	1c050513          	addi	a0,a0,448 # 800092a0 <CONSOLE_STATUS+0x290>
    800050e8:	00001097          	auipc	ra,0x1
    800050ec:	cdc080e7          	jalr	-804(ra) # 80005dc4 <_Z11printStringPKc>
    finishedD = true;
    800050f0:	00100793          	li	a5,1
    800050f4:	00007717          	auipc	a4,0x7
    800050f8:	acf70223          	sb	a5,-1340(a4) # 8000bbb8 <_ZL9finishedD>
    thread_dispatch();
    800050fc:	ffffc097          	auipc	ra,0xffffc
    80005100:	554080e7          	jalr	1364(ra) # 80001650 <thread_dispatch>
}
    80005104:	01813083          	ld	ra,24(sp)
    80005108:	01013403          	ld	s0,16(sp)
    8000510c:	00813483          	ld	s1,8(sp)
    80005110:	00013903          	ld	s2,0(sp)
    80005114:	02010113          	addi	sp,sp,32
    80005118:	00008067          	ret

000000008000511c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000511c:	fe010113          	addi	sp,sp,-32
    80005120:	00113c23          	sd	ra,24(sp)
    80005124:	00813823          	sd	s0,16(sp)
    80005128:	00913423          	sd	s1,8(sp)
    8000512c:	01213023          	sd	s2,0(sp)
    80005130:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005134:	00000493          	li	s1,0
    80005138:	0400006f          	j	80005178 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000513c:	00004517          	auipc	a0,0x4
    80005140:	10c50513          	addi	a0,a0,268 # 80009248 <CONSOLE_STATUS+0x238>
    80005144:	00001097          	auipc	ra,0x1
    80005148:	c80080e7          	jalr	-896(ra) # 80005dc4 <_Z11printStringPKc>
    8000514c:	00000613          	li	a2,0
    80005150:	00a00593          	li	a1,10
    80005154:	00048513          	mv	a0,s1
    80005158:	00001097          	auipc	ra,0x1
    8000515c:	e1c080e7          	jalr	-484(ra) # 80005f74 <_Z8printIntiii>
    80005160:	00004517          	auipc	a0,0x4
    80005164:	2f050513          	addi	a0,a0,752 # 80009450 <CONSOLE_STATUS+0x440>
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	c5c080e7          	jalr	-932(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005170:	0014849b          	addiw	s1,s1,1
    80005174:	0ff4f493          	andi	s1,s1,255
    80005178:	00200793          	li	a5,2
    8000517c:	fc97f0e3          	bgeu	a5,s1,8000513c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005180:	00004517          	auipc	a0,0x4
    80005184:	0d050513          	addi	a0,a0,208 # 80009250 <CONSOLE_STATUS+0x240>
    80005188:	00001097          	auipc	ra,0x1
    8000518c:	c3c080e7          	jalr	-964(ra) # 80005dc4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005190:	00700313          	li	t1,7
    thread_dispatch();
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	4bc080e7          	jalr	1212(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000519c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800051a0:	00004517          	auipc	a0,0x4
    800051a4:	0c050513          	addi	a0,a0,192 # 80009260 <CONSOLE_STATUS+0x250>
    800051a8:	00001097          	auipc	ra,0x1
    800051ac:	c1c080e7          	jalr	-996(ra) # 80005dc4 <_Z11printStringPKc>
    800051b0:	00000613          	li	a2,0
    800051b4:	00a00593          	li	a1,10
    800051b8:	0009051b          	sext.w	a0,s2
    800051bc:	00001097          	auipc	ra,0x1
    800051c0:	db8080e7          	jalr	-584(ra) # 80005f74 <_Z8printIntiii>
    800051c4:	00004517          	auipc	a0,0x4
    800051c8:	28c50513          	addi	a0,a0,652 # 80009450 <CONSOLE_STATUS+0x440>
    800051cc:	00001097          	auipc	ra,0x1
    800051d0:	bf8080e7          	jalr	-1032(ra) # 80005dc4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800051d4:	00c00513          	li	a0,12
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	d88080e7          	jalr	-632(ra) # 80004f60 <_ZL9fibonaccim>
    800051e0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800051e4:	00004517          	auipc	a0,0x4
    800051e8:	08450513          	addi	a0,a0,132 # 80009268 <CONSOLE_STATUS+0x258>
    800051ec:	00001097          	auipc	ra,0x1
    800051f0:	bd8080e7          	jalr	-1064(ra) # 80005dc4 <_Z11printStringPKc>
    800051f4:	00000613          	li	a2,0
    800051f8:	00a00593          	li	a1,10
    800051fc:	0009051b          	sext.w	a0,s2
    80005200:	00001097          	auipc	ra,0x1
    80005204:	d74080e7          	jalr	-652(ra) # 80005f74 <_Z8printIntiii>
    80005208:	00004517          	auipc	a0,0x4
    8000520c:	24850513          	addi	a0,a0,584 # 80009450 <CONSOLE_STATUS+0x440>
    80005210:	00001097          	auipc	ra,0x1
    80005214:	bb4080e7          	jalr	-1100(ra) # 80005dc4 <_Z11printStringPKc>
    80005218:	0400006f          	j	80005258 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000521c:	00004517          	auipc	a0,0x4
    80005220:	02c50513          	addi	a0,a0,44 # 80009248 <CONSOLE_STATUS+0x238>
    80005224:	00001097          	auipc	ra,0x1
    80005228:	ba0080e7          	jalr	-1120(ra) # 80005dc4 <_Z11printStringPKc>
    8000522c:	00000613          	li	a2,0
    80005230:	00a00593          	li	a1,10
    80005234:	00048513          	mv	a0,s1
    80005238:	00001097          	auipc	ra,0x1
    8000523c:	d3c080e7          	jalr	-708(ra) # 80005f74 <_Z8printIntiii>
    80005240:	00004517          	auipc	a0,0x4
    80005244:	21050513          	addi	a0,a0,528 # 80009450 <CONSOLE_STATUS+0x440>
    80005248:	00001097          	auipc	ra,0x1
    8000524c:	b7c080e7          	jalr	-1156(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005250:	0014849b          	addiw	s1,s1,1
    80005254:	0ff4f493          	andi	s1,s1,255
    80005258:	00500793          	li	a5,5
    8000525c:	fc97f0e3          	bgeu	a5,s1,8000521c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005260:	00004517          	auipc	a0,0x4
    80005264:	fc050513          	addi	a0,a0,-64 # 80009220 <CONSOLE_STATUS+0x210>
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	b5c080e7          	jalr	-1188(ra) # 80005dc4 <_Z11printStringPKc>
    finishedC = true;
    80005270:	00100793          	li	a5,1
    80005274:	00007717          	auipc	a4,0x7
    80005278:	94f702a3          	sb	a5,-1723(a4) # 8000bbb9 <_ZL9finishedC>
    thread_dispatch();
    8000527c:	ffffc097          	auipc	ra,0xffffc
    80005280:	3d4080e7          	jalr	980(ra) # 80001650 <thread_dispatch>
}
    80005284:	01813083          	ld	ra,24(sp)
    80005288:	01013403          	ld	s0,16(sp)
    8000528c:	00813483          	ld	s1,8(sp)
    80005290:	00013903          	ld	s2,0(sp)
    80005294:	02010113          	addi	sp,sp,32
    80005298:	00008067          	ret

000000008000529c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000529c:	fe010113          	addi	sp,sp,-32
    800052a0:	00113c23          	sd	ra,24(sp)
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00913423          	sd	s1,8(sp)
    800052ac:	01213023          	sd	s2,0(sp)
    800052b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800052b4:	00000913          	li	s2,0
    800052b8:	0380006f          	j	800052f0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	394080e7          	jalr	916(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800052c4:	00148493          	addi	s1,s1,1
    800052c8:	000027b7          	lui	a5,0x2
    800052cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800052d0:	0097ee63          	bltu	a5,s1,800052ec <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800052d4:	00000713          	li	a4,0
    800052d8:	000077b7          	lui	a5,0x7
    800052dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800052e0:	fce7eee3          	bltu	a5,a4,800052bc <_ZL11workerBodyBPv+0x20>
    800052e4:	00170713          	addi	a4,a4,1
    800052e8:	ff1ff06f          	j	800052d8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800052ec:	00190913          	addi	s2,s2,1
    800052f0:	00f00793          	li	a5,15
    800052f4:	0527e063          	bltu	a5,s2,80005334 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800052f8:	00004517          	auipc	a0,0x4
    800052fc:	f3850513          	addi	a0,a0,-200 # 80009230 <CONSOLE_STATUS+0x220>
    80005300:	00001097          	auipc	ra,0x1
    80005304:	ac4080e7          	jalr	-1340(ra) # 80005dc4 <_Z11printStringPKc>
    80005308:	00000613          	li	a2,0
    8000530c:	00a00593          	li	a1,10
    80005310:	0009051b          	sext.w	a0,s2
    80005314:	00001097          	auipc	ra,0x1
    80005318:	c60080e7          	jalr	-928(ra) # 80005f74 <_Z8printIntiii>
    8000531c:	00004517          	auipc	a0,0x4
    80005320:	13450513          	addi	a0,a0,308 # 80009450 <CONSOLE_STATUS+0x440>
    80005324:	00001097          	auipc	ra,0x1
    80005328:	aa0080e7          	jalr	-1376(ra) # 80005dc4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000532c:	00000493          	li	s1,0
    80005330:	f99ff06f          	j	800052c8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005334:	00004517          	auipc	a0,0x4
    80005338:	f0450513          	addi	a0,a0,-252 # 80009238 <CONSOLE_STATUS+0x228>
    8000533c:	00001097          	auipc	ra,0x1
    80005340:	a88080e7          	jalr	-1400(ra) # 80005dc4 <_Z11printStringPKc>
    finishedB = true;
    80005344:	00100793          	li	a5,1
    80005348:	00007717          	auipc	a4,0x7
    8000534c:	86f70923          	sb	a5,-1934(a4) # 8000bbba <_ZL9finishedB>
    thread_dispatch();
    80005350:	ffffc097          	auipc	ra,0xffffc
    80005354:	300080e7          	jalr	768(ra) # 80001650 <thread_dispatch>
}
    80005358:	01813083          	ld	ra,24(sp)
    8000535c:	01013403          	ld	s0,16(sp)
    80005360:	00813483          	ld	s1,8(sp)
    80005364:	00013903          	ld	s2,0(sp)
    80005368:	02010113          	addi	sp,sp,32
    8000536c:	00008067          	ret

0000000080005370 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005370:	fe010113          	addi	sp,sp,-32
    80005374:	00113c23          	sd	ra,24(sp)
    80005378:	00813823          	sd	s0,16(sp)
    8000537c:	00913423          	sd	s1,8(sp)
    80005380:	01213023          	sd	s2,0(sp)
    80005384:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005388:	00000913          	li	s2,0
    8000538c:	0380006f          	j	800053c4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005390:	ffffc097          	auipc	ra,0xffffc
    80005394:	2c0080e7          	jalr	704(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005398:	00148493          	addi	s1,s1,1
    8000539c:	000027b7          	lui	a5,0x2
    800053a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800053a4:	0097ee63          	bltu	a5,s1,800053c0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053a8:	00000713          	li	a4,0
    800053ac:	000077b7          	lui	a5,0x7
    800053b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800053b4:	fce7eee3          	bltu	a5,a4,80005390 <_ZL11workerBodyAPv+0x20>
    800053b8:	00170713          	addi	a4,a4,1
    800053bc:	ff1ff06f          	j	800053ac <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800053c0:	00190913          	addi	s2,s2,1
    800053c4:	00900793          	li	a5,9
    800053c8:	0527e063          	bltu	a5,s2,80005408 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800053cc:	00004517          	auipc	a0,0x4
    800053d0:	e4c50513          	addi	a0,a0,-436 # 80009218 <CONSOLE_STATUS+0x208>
    800053d4:	00001097          	auipc	ra,0x1
    800053d8:	9f0080e7          	jalr	-1552(ra) # 80005dc4 <_Z11printStringPKc>
    800053dc:	00000613          	li	a2,0
    800053e0:	00a00593          	li	a1,10
    800053e4:	0009051b          	sext.w	a0,s2
    800053e8:	00001097          	auipc	ra,0x1
    800053ec:	b8c080e7          	jalr	-1140(ra) # 80005f74 <_Z8printIntiii>
    800053f0:	00004517          	auipc	a0,0x4
    800053f4:	06050513          	addi	a0,a0,96 # 80009450 <CONSOLE_STATUS+0x440>
    800053f8:	00001097          	auipc	ra,0x1
    800053fc:	9cc080e7          	jalr	-1588(ra) # 80005dc4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005400:	00000493          	li	s1,0
    80005404:	f99ff06f          	j	8000539c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005408:	00004517          	auipc	a0,0x4
    8000540c:	e1850513          	addi	a0,a0,-488 # 80009220 <CONSOLE_STATUS+0x210>
    80005410:	00001097          	auipc	ra,0x1
    80005414:	9b4080e7          	jalr	-1612(ra) # 80005dc4 <_Z11printStringPKc>
    finishedA = true;
    80005418:	00100793          	li	a5,1
    8000541c:	00006717          	auipc	a4,0x6
    80005420:	78f70fa3          	sb	a5,1951(a4) # 8000bbbb <_ZL9finishedA>
}
    80005424:	01813083          	ld	ra,24(sp)
    80005428:	01013403          	ld	s0,16(sp)
    8000542c:	00813483          	ld	s1,8(sp)
    80005430:	00013903          	ld	s2,0(sp)
    80005434:	02010113          	addi	sp,sp,32
    80005438:	00008067          	ret

000000008000543c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000543c:	fd010113          	addi	sp,sp,-48
    80005440:	02113423          	sd	ra,40(sp)
    80005444:	02813023          	sd	s0,32(sp)
    80005448:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000544c:	00000613          	li	a2,0
    80005450:	00000597          	auipc	a1,0x0
    80005454:	f2058593          	addi	a1,a1,-224 # 80005370 <_ZL11workerBodyAPv>
    80005458:	fd040513          	addi	a0,s0,-48
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	150080e7          	jalr	336(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80005464:	00004517          	auipc	a0,0x4
    80005468:	e4c50513          	addi	a0,a0,-436 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000546c:	00001097          	auipc	ra,0x1
    80005470:	958080e7          	jalr	-1704(ra) # 80005dc4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005474:	00000613          	li	a2,0
    80005478:	00000597          	auipc	a1,0x0
    8000547c:	e2458593          	addi	a1,a1,-476 # 8000529c <_ZL11workerBodyBPv>
    80005480:	fd840513          	addi	a0,s0,-40
    80005484:	ffffc097          	auipc	ra,0xffffc
    80005488:	128080e7          	jalr	296(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    8000548c:	00004517          	auipc	a0,0x4
    80005490:	e3c50513          	addi	a0,a0,-452 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005494:	00001097          	auipc	ra,0x1
    80005498:	930080e7          	jalr	-1744(ra) # 80005dc4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000549c:	00000613          	li	a2,0
    800054a0:	00000597          	auipc	a1,0x0
    800054a4:	c7c58593          	addi	a1,a1,-900 # 8000511c <_ZL11workerBodyCPv>
    800054a8:	fe040513          	addi	a0,s0,-32
    800054ac:	ffffc097          	auipc	ra,0xffffc
    800054b0:	100080e7          	jalr	256(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    800054b4:	00004517          	auipc	a0,0x4
    800054b8:	e2c50513          	addi	a0,a0,-468 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	908080e7          	jalr	-1784(ra) # 80005dc4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800054c4:	00000613          	li	a2,0
    800054c8:	00000597          	auipc	a1,0x0
    800054cc:	b0c58593          	addi	a1,a1,-1268 # 80004fd4 <_ZL11workerBodyDPv>
    800054d0:	fe840513          	addi	a0,s0,-24
    800054d4:	ffffc097          	auipc	ra,0xffffc
    800054d8:	0d8080e7          	jalr	216(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    800054dc:	00004517          	auipc	a0,0x4
    800054e0:	e1c50513          	addi	a0,a0,-484 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800054e4:	00001097          	auipc	ra,0x1
    800054e8:	8e0080e7          	jalr	-1824(ra) # 80005dc4 <_Z11printStringPKc>
    800054ec:	00c0006f          	j	800054f8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	160080e7          	jalr	352(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800054f8:	00006797          	auipc	a5,0x6
    800054fc:	6c37c783          	lbu	a5,1731(a5) # 8000bbbb <_ZL9finishedA>
    80005500:	fe0788e3          	beqz	a5,800054f0 <_Z18Threads_C_API_testv+0xb4>
    80005504:	00006797          	auipc	a5,0x6
    80005508:	6b67c783          	lbu	a5,1718(a5) # 8000bbba <_ZL9finishedB>
    8000550c:	fe0782e3          	beqz	a5,800054f0 <_Z18Threads_C_API_testv+0xb4>
    80005510:	00006797          	auipc	a5,0x6
    80005514:	6a97c783          	lbu	a5,1705(a5) # 8000bbb9 <_ZL9finishedC>
    80005518:	fc078ce3          	beqz	a5,800054f0 <_Z18Threads_C_API_testv+0xb4>
    8000551c:	00006797          	auipc	a5,0x6
    80005520:	69c7c783          	lbu	a5,1692(a5) # 8000bbb8 <_ZL9finishedD>
    80005524:	fc0786e3          	beqz	a5,800054f0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005528:	02813083          	ld	ra,40(sp)
    8000552c:	02013403          	ld	s0,32(sp)
    80005530:	03010113          	addi	sp,sp,48
    80005534:	00008067          	ret

0000000080005538 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005538:	fd010113          	addi	sp,sp,-48
    8000553c:	02113423          	sd	ra,40(sp)
    80005540:	02813023          	sd	s0,32(sp)
    80005544:	00913c23          	sd	s1,24(sp)
    80005548:	01213823          	sd	s2,16(sp)
    8000554c:	01313423          	sd	s3,8(sp)
    80005550:	03010413          	addi	s0,sp,48
    80005554:	00050993          	mv	s3,a0
    80005558:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000555c:	00000913          	li	s2,0
    80005560:	00c0006f          	j	8000556c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005564:	ffffe097          	auipc	ra,0xffffe
    80005568:	9e4080e7          	jalr	-1564(ra) # 80002f48 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	214080e7          	jalr	532(ra) # 80001780 <getc>
    80005574:	0005059b          	sext.w	a1,a0
    80005578:	01b00793          	li	a5,27
    8000557c:	02f58a63          	beq	a1,a5,800055b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005580:	0084b503          	ld	a0,8(s1)
    80005584:	00001097          	auipc	ra,0x1
    80005588:	c64080e7          	jalr	-924(ra) # 800061e8 <_ZN9BufferCPP3putEi>
        i++;
    8000558c:	0019071b          	addiw	a4,s2,1
    80005590:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005594:	0004a683          	lw	a3,0(s1)
    80005598:	0026979b          	slliw	a5,a3,0x2
    8000559c:	00d787bb          	addw	a5,a5,a3
    800055a0:	0017979b          	slliw	a5,a5,0x1
    800055a4:	02f767bb          	remw	a5,a4,a5
    800055a8:	fc0792e3          	bnez	a5,8000556c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800055ac:	fb9ff06f          	j	80005564 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800055b0:	00100793          	li	a5,1
    800055b4:	00006717          	auipc	a4,0x6
    800055b8:	60f72623          	sw	a5,1548(a4) # 8000bbc0 <_ZL9threadEnd>
    td->buffer->put('!');
    800055bc:	0209b783          	ld	a5,32(s3)
    800055c0:	02100593          	li	a1,33
    800055c4:	0087b503          	ld	a0,8(a5)
    800055c8:	00001097          	auipc	ra,0x1
    800055cc:	c20080e7          	jalr	-992(ra) # 800061e8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800055d0:	0104b503          	ld	a0,16(s1)
    800055d4:	ffffe097          	auipc	ra,0xffffe
    800055d8:	a28080e7          	jalr	-1496(ra) # 80002ffc <_ZN9Semaphore6signalEv>
}
    800055dc:	02813083          	ld	ra,40(sp)
    800055e0:	02013403          	ld	s0,32(sp)
    800055e4:	01813483          	ld	s1,24(sp)
    800055e8:	01013903          	ld	s2,16(sp)
    800055ec:	00813983          	ld	s3,8(sp)
    800055f0:	03010113          	addi	sp,sp,48
    800055f4:	00008067          	ret

00000000800055f8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800055f8:	fe010113          	addi	sp,sp,-32
    800055fc:	00113c23          	sd	ra,24(sp)
    80005600:	00813823          	sd	s0,16(sp)
    80005604:	00913423          	sd	s1,8(sp)
    80005608:	01213023          	sd	s2,0(sp)
    8000560c:	02010413          	addi	s0,sp,32
    80005610:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005614:	00000913          	li	s2,0
    80005618:	00c0006f          	j	80005624 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000561c:	ffffe097          	auipc	ra,0xffffe
    80005620:	92c080e7          	jalr	-1748(ra) # 80002f48 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005624:	00006797          	auipc	a5,0x6
    80005628:	59c7a783          	lw	a5,1436(a5) # 8000bbc0 <_ZL9threadEnd>
    8000562c:	02079e63          	bnez	a5,80005668 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005630:	0004a583          	lw	a1,0(s1)
    80005634:	0305859b          	addiw	a1,a1,48
    80005638:	0084b503          	ld	a0,8(s1)
    8000563c:	00001097          	auipc	ra,0x1
    80005640:	bac080e7          	jalr	-1108(ra) # 800061e8 <_ZN9BufferCPP3putEi>
        i++;
    80005644:	0019071b          	addiw	a4,s2,1
    80005648:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000564c:	0004a683          	lw	a3,0(s1)
    80005650:	0026979b          	slliw	a5,a3,0x2
    80005654:	00d787bb          	addw	a5,a5,a3
    80005658:	0017979b          	slliw	a5,a5,0x1
    8000565c:	02f767bb          	remw	a5,a4,a5
    80005660:	fc0792e3          	bnez	a5,80005624 <_ZN12ProducerSync8producerEPv+0x2c>
    80005664:	fb9ff06f          	j	8000561c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005668:	0104b503          	ld	a0,16(s1)
    8000566c:	ffffe097          	auipc	ra,0xffffe
    80005670:	990080e7          	jalr	-1648(ra) # 80002ffc <_ZN9Semaphore6signalEv>
}
    80005674:	01813083          	ld	ra,24(sp)
    80005678:	01013403          	ld	s0,16(sp)
    8000567c:	00813483          	ld	s1,8(sp)
    80005680:	00013903          	ld	s2,0(sp)
    80005684:	02010113          	addi	sp,sp,32
    80005688:	00008067          	ret

000000008000568c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000568c:	fd010113          	addi	sp,sp,-48
    80005690:	02113423          	sd	ra,40(sp)
    80005694:	02813023          	sd	s0,32(sp)
    80005698:	00913c23          	sd	s1,24(sp)
    8000569c:	01213823          	sd	s2,16(sp)
    800056a0:	01313423          	sd	s3,8(sp)
    800056a4:	01413023          	sd	s4,0(sp)
    800056a8:	03010413          	addi	s0,sp,48
    800056ac:	00050993          	mv	s3,a0
    800056b0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800056b4:	00000a13          	li	s4,0
    800056b8:	01c0006f          	j	800056d4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800056bc:	ffffe097          	auipc	ra,0xffffe
    800056c0:	88c080e7          	jalr	-1908(ra) # 80002f48 <_ZN6Thread8dispatchEv>
    800056c4:	0500006f          	j	80005714 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800056c8:	00a00513          	li	a0,10
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	0d8080e7          	jalr	216(ra) # 800017a4 <putc>
    while (!threadEnd) {
    800056d4:	00006797          	auipc	a5,0x6
    800056d8:	4ec7a783          	lw	a5,1260(a5) # 8000bbc0 <_ZL9threadEnd>
    800056dc:	06079263          	bnez	a5,80005740 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800056e0:	00893503          	ld	a0,8(s2)
    800056e4:	00001097          	auipc	ra,0x1
    800056e8:	b94080e7          	jalr	-1132(ra) # 80006278 <_ZN9BufferCPP3getEv>
        i++;
    800056ec:	001a049b          	addiw	s1,s4,1
    800056f0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800056f4:	0ff57513          	andi	a0,a0,255
    800056f8:	ffffc097          	auipc	ra,0xffffc
    800056fc:	0ac080e7          	jalr	172(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    80005700:	00092703          	lw	a4,0(s2)
    80005704:	0027179b          	slliw	a5,a4,0x2
    80005708:	00e787bb          	addw	a5,a5,a4
    8000570c:	02f4e7bb          	remw	a5,s1,a5
    80005710:	fa0786e3          	beqz	a5,800056bc <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005714:	05000793          	li	a5,80
    80005718:	02f4e4bb          	remw	s1,s1,a5
    8000571c:	fa049ce3          	bnez	s1,800056d4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005720:	fa9ff06f          	j	800056c8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005724:	0209b783          	ld	a5,32(s3)
    80005728:	0087b503          	ld	a0,8(a5)
    8000572c:	00001097          	auipc	ra,0x1
    80005730:	b4c080e7          	jalr	-1204(ra) # 80006278 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005734:	0ff57513          	andi	a0,a0,255
    80005738:	ffffe097          	auipc	ra,0xffffe
    8000573c:	984080e7          	jalr	-1660(ra) # 800030bc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005740:	0209b783          	ld	a5,32(s3)
    80005744:	0087b503          	ld	a0,8(a5)
    80005748:	00001097          	auipc	ra,0x1
    8000574c:	bbc080e7          	jalr	-1092(ra) # 80006304 <_ZN9BufferCPP6getCntEv>
    80005750:	fca04ae3          	bgtz	a0,80005724 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005754:	01093503          	ld	a0,16(s2)
    80005758:	ffffe097          	auipc	ra,0xffffe
    8000575c:	8a4080e7          	jalr	-1884(ra) # 80002ffc <_ZN9Semaphore6signalEv>
}
    80005760:	02813083          	ld	ra,40(sp)
    80005764:	02013403          	ld	s0,32(sp)
    80005768:	01813483          	ld	s1,24(sp)
    8000576c:	01013903          	ld	s2,16(sp)
    80005770:	00813983          	ld	s3,8(sp)
    80005774:	00013a03          	ld	s4,0(sp)
    80005778:	03010113          	addi	sp,sp,48
    8000577c:	00008067          	ret

0000000080005780 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005780:	f8010113          	addi	sp,sp,-128
    80005784:	06113c23          	sd	ra,120(sp)
    80005788:	06813823          	sd	s0,112(sp)
    8000578c:	06913423          	sd	s1,104(sp)
    80005790:	07213023          	sd	s2,96(sp)
    80005794:	05313c23          	sd	s3,88(sp)
    80005798:	05413823          	sd	s4,80(sp)
    8000579c:	05513423          	sd	s5,72(sp)
    800057a0:	05613023          	sd	s6,64(sp)
    800057a4:	03713c23          	sd	s7,56(sp)
    800057a8:	03813823          	sd	s8,48(sp)
    800057ac:	03913423          	sd	s9,40(sp)
    800057b0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800057b4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800057b8:	00004517          	auipc	a0,0x4
    800057bc:	97850513          	addi	a0,a0,-1672 # 80009130 <CONSOLE_STATUS+0x120>
    800057c0:	00000097          	auipc	ra,0x0
    800057c4:	604080e7          	jalr	1540(ra) # 80005dc4 <_Z11printStringPKc>
    getString(input, 30);
    800057c8:	01e00593          	li	a1,30
    800057cc:	f8040493          	addi	s1,s0,-128
    800057d0:	00048513          	mv	a0,s1
    800057d4:	00000097          	auipc	ra,0x0
    800057d8:	678080e7          	jalr	1656(ra) # 80005e4c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800057dc:	00048513          	mv	a0,s1
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	744080e7          	jalr	1860(ra) # 80005f24 <_Z11stringToIntPKc>
    800057e8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800057ec:	00004517          	auipc	a0,0x4
    800057f0:	96450513          	addi	a0,a0,-1692 # 80009150 <CONSOLE_STATUS+0x140>
    800057f4:	00000097          	auipc	ra,0x0
    800057f8:	5d0080e7          	jalr	1488(ra) # 80005dc4 <_Z11printStringPKc>
    getString(input, 30);
    800057fc:	01e00593          	li	a1,30
    80005800:	00048513          	mv	a0,s1
    80005804:	00000097          	auipc	ra,0x0
    80005808:	648080e7          	jalr	1608(ra) # 80005e4c <_Z9getStringPci>
    n = stringToInt(input);
    8000580c:	00048513          	mv	a0,s1
    80005810:	00000097          	auipc	ra,0x0
    80005814:	714080e7          	jalr	1812(ra) # 80005f24 <_Z11stringToIntPKc>
    80005818:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000581c:	00004517          	auipc	a0,0x4
    80005820:	95450513          	addi	a0,a0,-1708 # 80009170 <CONSOLE_STATUS+0x160>
    80005824:	00000097          	auipc	ra,0x0
    80005828:	5a0080e7          	jalr	1440(ra) # 80005dc4 <_Z11printStringPKc>
    8000582c:	00000613          	li	a2,0
    80005830:	00a00593          	li	a1,10
    80005834:	00090513          	mv	a0,s2
    80005838:	00000097          	auipc	ra,0x0
    8000583c:	73c080e7          	jalr	1852(ra) # 80005f74 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005840:	00004517          	auipc	a0,0x4
    80005844:	94850513          	addi	a0,a0,-1720 # 80009188 <CONSOLE_STATUS+0x178>
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	57c080e7          	jalr	1404(ra) # 80005dc4 <_Z11printStringPKc>
    80005850:	00000613          	li	a2,0
    80005854:	00a00593          	li	a1,10
    80005858:	00048513          	mv	a0,s1
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	718080e7          	jalr	1816(ra) # 80005f74 <_Z8printIntiii>
    printString(".\n");
    80005864:	00004517          	auipc	a0,0x4
    80005868:	93c50513          	addi	a0,a0,-1732 # 800091a0 <CONSOLE_STATUS+0x190>
    8000586c:	00000097          	auipc	ra,0x0
    80005870:	558080e7          	jalr	1368(ra) # 80005dc4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005874:	0324c463          	blt	s1,s2,8000589c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005878:	03205c63          	blez	s2,800058b0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000587c:	03800513          	li	a0,56
    80005880:	ffffd097          	auipc	ra,0xffffd
    80005884:	55c080e7          	jalr	1372(ra) # 80002ddc <_Znwm>
    80005888:	00050a93          	mv	s5,a0
    8000588c:	00048593          	mv	a1,s1
    80005890:	00001097          	auipc	ra,0x1
    80005894:	804080e7          	jalr	-2044(ra) # 80006094 <_ZN9BufferCPPC1Ei>
    80005898:	0300006f          	j	800058c8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000589c:	00004517          	auipc	a0,0x4
    800058a0:	90c50513          	addi	a0,a0,-1780 # 800091a8 <CONSOLE_STATUS+0x198>
    800058a4:	00000097          	auipc	ra,0x0
    800058a8:	520080e7          	jalr	1312(ra) # 80005dc4 <_Z11printStringPKc>
        return;
    800058ac:	0140006f          	j	800058c0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800058b0:	00004517          	auipc	a0,0x4
    800058b4:	93850513          	addi	a0,a0,-1736 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800058b8:	00000097          	auipc	ra,0x0
    800058bc:	50c080e7          	jalr	1292(ra) # 80005dc4 <_Z11printStringPKc>
        return;
    800058c0:	000b8113          	mv	sp,s7
    800058c4:	2380006f          	j	80005afc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800058c8:	01000513          	li	a0,16
    800058cc:	ffffd097          	auipc	ra,0xffffd
    800058d0:	510080e7          	jalr	1296(ra) # 80002ddc <_Znwm>
    800058d4:	00050493          	mv	s1,a0
    800058d8:	00000593          	li	a1,0
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	6bc080e7          	jalr	1724(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    800058e4:	00006797          	auipc	a5,0x6
    800058e8:	2e97b223          	sd	s1,740(a5) # 8000bbc8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800058ec:	00391793          	slli	a5,s2,0x3
    800058f0:	00f78793          	addi	a5,a5,15
    800058f4:	ff07f793          	andi	a5,a5,-16
    800058f8:	40f10133          	sub	sp,sp,a5
    800058fc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005900:	0019071b          	addiw	a4,s2,1
    80005904:	00171793          	slli	a5,a4,0x1
    80005908:	00e787b3          	add	a5,a5,a4
    8000590c:	00379793          	slli	a5,a5,0x3
    80005910:	00f78793          	addi	a5,a5,15
    80005914:	ff07f793          	andi	a5,a5,-16
    80005918:	40f10133          	sub	sp,sp,a5
    8000591c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005920:	00191c13          	slli	s8,s2,0x1
    80005924:	012c07b3          	add	a5,s8,s2
    80005928:	00379793          	slli	a5,a5,0x3
    8000592c:	00fa07b3          	add	a5,s4,a5
    80005930:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005934:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005938:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000593c:	02800513          	li	a0,40
    80005940:	ffffd097          	auipc	ra,0xffffd
    80005944:	49c080e7          	jalr	1180(ra) # 80002ddc <_Znwm>
    80005948:	00050b13          	mv	s6,a0
    8000594c:	012c0c33          	add	s8,s8,s2
    80005950:	003c1c13          	slli	s8,s8,0x3
    80005954:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005958:	ffffd097          	auipc	ra,0xffffd
    8000595c:	56c080e7          	jalr	1388(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80005960:	00006797          	auipc	a5,0x6
    80005964:	ef878793          	addi	a5,a5,-264 # 8000b858 <_ZTV12ConsumerSync+0x10>
    80005968:	00fb3023          	sd	a5,0(s6)
    8000596c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005970:	000b0513          	mv	a0,s6
    80005974:	ffffd097          	auipc	ra,0xffffd
    80005978:	580080e7          	jalr	1408(ra) # 80002ef4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000597c:	00000493          	li	s1,0
    80005980:	0380006f          	j	800059b8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005984:	00006797          	auipc	a5,0x6
    80005988:	eac78793          	addi	a5,a5,-340 # 8000b830 <_ZTV12ProducerSync+0x10>
    8000598c:	00fcb023          	sd	a5,0(s9)
    80005990:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005994:	00349793          	slli	a5,s1,0x3
    80005998:	00f987b3          	add	a5,s3,a5
    8000599c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800059a0:	00349793          	slli	a5,s1,0x3
    800059a4:	00f987b3          	add	a5,s3,a5
    800059a8:	0007b503          	ld	a0,0(a5)
    800059ac:	ffffd097          	auipc	ra,0xffffd
    800059b0:	548080e7          	jalr	1352(ra) # 80002ef4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800059b4:	0014849b          	addiw	s1,s1,1
    800059b8:	0b24d063          	bge	s1,s2,80005a58 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800059bc:	00149793          	slli	a5,s1,0x1
    800059c0:	009787b3          	add	a5,a5,s1
    800059c4:	00379793          	slli	a5,a5,0x3
    800059c8:	00fa07b3          	add	a5,s4,a5
    800059cc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800059d0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800059d4:	00006717          	auipc	a4,0x6
    800059d8:	1f473703          	ld	a4,500(a4) # 8000bbc8 <_ZL10waitForAll>
    800059dc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800059e0:	02905863          	blez	s1,80005a10 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800059e4:	02800513          	li	a0,40
    800059e8:	ffffd097          	auipc	ra,0xffffd
    800059ec:	3f4080e7          	jalr	1012(ra) # 80002ddc <_Znwm>
    800059f0:	00050c93          	mv	s9,a0
    800059f4:	00149c13          	slli	s8,s1,0x1
    800059f8:	009c0c33          	add	s8,s8,s1
    800059fc:	003c1c13          	slli	s8,s8,0x3
    80005a00:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a04:	ffffd097          	auipc	ra,0xffffd
    80005a08:	4c0080e7          	jalr	1216(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80005a0c:	f79ff06f          	j	80005984 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005a10:	02800513          	li	a0,40
    80005a14:	ffffd097          	auipc	ra,0xffffd
    80005a18:	3c8080e7          	jalr	968(ra) # 80002ddc <_Znwm>
    80005a1c:	00050c93          	mv	s9,a0
    80005a20:	00149c13          	slli	s8,s1,0x1
    80005a24:	009c0c33          	add	s8,s8,s1
    80005a28:	003c1c13          	slli	s8,s8,0x3
    80005a2c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005a30:	ffffd097          	auipc	ra,0xffffd
    80005a34:	494080e7          	jalr	1172(ra) # 80002ec4 <_ZN6ThreadC1Ev>
    80005a38:	00006797          	auipc	a5,0x6
    80005a3c:	dd078793          	addi	a5,a5,-560 # 8000b808 <_ZTV16ProducerKeyboard+0x10>
    80005a40:	00fcb023          	sd	a5,0(s9)
    80005a44:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005a48:	00349793          	slli	a5,s1,0x3
    80005a4c:	00f987b3          	add	a5,s3,a5
    80005a50:	0197b023          	sd	s9,0(a5)
    80005a54:	f4dff06f          	j	800059a0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005a58:	ffffd097          	auipc	ra,0xffffd
    80005a5c:	4f0080e7          	jalr	1264(ra) # 80002f48 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005a60:	00000493          	li	s1,0
    80005a64:	00994e63          	blt	s2,s1,80005a80 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005a68:	00006517          	auipc	a0,0x6
    80005a6c:	16053503          	ld	a0,352(a0) # 8000bbc8 <_ZL10waitForAll>
    80005a70:	ffffd097          	auipc	ra,0xffffd
    80005a74:	560080e7          	jalr	1376(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005a78:	0014849b          	addiw	s1,s1,1
    80005a7c:	fe9ff06f          	j	80005a64 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005a80:	00000493          	li	s1,0
    80005a84:	0080006f          	j	80005a8c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005a88:	0014849b          	addiw	s1,s1,1
    80005a8c:	0324d263          	bge	s1,s2,80005ab0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005a90:	00349793          	slli	a5,s1,0x3
    80005a94:	00f987b3          	add	a5,s3,a5
    80005a98:	0007b503          	ld	a0,0(a5)
    80005a9c:	fe0506e3          	beqz	a0,80005a88 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005aa0:	00053783          	ld	a5,0(a0)
    80005aa4:	0087b783          	ld	a5,8(a5)
    80005aa8:	000780e7          	jalr	a5
    80005aac:	fddff06f          	j	80005a88 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005ab0:	000b0a63          	beqz	s6,80005ac4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005ab4:	000b3783          	ld	a5,0(s6)
    80005ab8:	0087b783          	ld	a5,8(a5)
    80005abc:	000b0513          	mv	a0,s6
    80005ac0:	000780e7          	jalr	a5
    delete waitForAll;
    80005ac4:	00006517          	auipc	a0,0x6
    80005ac8:	10453503          	ld	a0,260(a0) # 8000bbc8 <_ZL10waitForAll>
    80005acc:	00050863          	beqz	a0,80005adc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005ad0:	00053783          	ld	a5,0(a0)
    80005ad4:	0087b783          	ld	a5,8(a5)
    80005ad8:	000780e7          	jalr	a5
    delete buffer;
    80005adc:	000a8e63          	beqz	s5,80005af8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005ae0:	000a8513          	mv	a0,s5
    80005ae4:	00001097          	auipc	ra,0x1
    80005ae8:	8a8080e7          	jalr	-1880(ra) # 8000638c <_ZN9BufferCPPD1Ev>
    80005aec:	000a8513          	mv	a0,s5
    80005af0:	ffffd097          	auipc	ra,0xffffd
    80005af4:	314080e7          	jalr	788(ra) # 80002e04 <_ZdlPv>
    80005af8:	000b8113          	mv	sp,s7

}
    80005afc:	f8040113          	addi	sp,s0,-128
    80005b00:	07813083          	ld	ra,120(sp)
    80005b04:	07013403          	ld	s0,112(sp)
    80005b08:	06813483          	ld	s1,104(sp)
    80005b0c:	06013903          	ld	s2,96(sp)
    80005b10:	05813983          	ld	s3,88(sp)
    80005b14:	05013a03          	ld	s4,80(sp)
    80005b18:	04813a83          	ld	s5,72(sp)
    80005b1c:	04013b03          	ld	s6,64(sp)
    80005b20:	03813b83          	ld	s7,56(sp)
    80005b24:	03013c03          	ld	s8,48(sp)
    80005b28:	02813c83          	ld	s9,40(sp)
    80005b2c:	08010113          	addi	sp,sp,128
    80005b30:	00008067          	ret
    80005b34:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005b38:	000a8513          	mv	a0,s5
    80005b3c:	ffffd097          	auipc	ra,0xffffd
    80005b40:	2c8080e7          	jalr	712(ra) # 80002e04 <_ZdlPv>
    80005b44:	00048513          	mv	a0,s1
    80005b48:	00007097          	auipc	ra,0x7
    80005b4c:	160080e7          	jalr	352(ra) # 8000cca8 <_Unwind_Resume>
    80005b50:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005b54:	00048513          	mv	a0,s1
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	2ac080e7          	jalr	684(ra) # 80002e04 <_ZdlPv>
    80005b60:	00090513          	mv	a0,s2
    80005b64:	00007097          	auipc	ra,0x7
    80005b68:	144080e7          	jalr	324(ra) # 8000cca8 <_Unwind_Resume>
    80005b6c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005b70:	000b0513          	mv	a0,s6
    80005b74:	ffffd097          	auipc	ra,0xffffd
    80005b78:	290080e7          	jalr	656(ra) # 80002e04 <_ZdlPv>
    80005b7c:	00048513          	mv	a0,s1
    80005b80:	00007097          	auipc	ra,0x7
    80005b84:	128080e7          	jalr	296(ra) # 8000cca8 <_Unwind_Resume>
    80005b88:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005b8c:	000c8513          	mv	a0,s9
    80005b90:	ffffd097          	auipc	ra,0xffffd
    80005b94:	274080e7          	jalr	628(ra) # 80002e04 <_ZdlPv>
    80005b98:	00048513          	mv	a0,s1
    80005b9c:	00007097          	auipc	ra,0x7
    80005ba0:	10c080e7          	jalr	268(ra) # 8000cca8 <_Unwind_Resume>
    80005ba4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005ba8:	000c8513          	mv	a0,s9
    80005bac:	ffffd097          	auipc	ra,0xffffd
    80005bb0:	258080e7          	jalr	600(ra) # 80002e04 <_ZdlPv>
    80005bb4:	00048513          	mv	a0,s1
    80005bb8:	00007097          	auipc	ra,0x7
    80005bbc:	0f0080e7          	jalr	240(ra) # 8000cca8 <_Unwind_Resume>

0000000080005bc0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005bc0:	ff010113          	addi	sp,sp,-16
    80005bc4:	00113423          	sd	ra,8(sp)
    80005bc8:	00813023          	sd	s0,0(sp)
    80005bcc:	01010413          	addi	s0,sp,16
    80005bd0:	00006797          	auipc	a5,0x6
    80005bd4:	c8878793          	addi	a5,a5,-888 # 8000b858 <_ZTV12ConsumerSync+0x10>
    80005bd8:	00f53023          	sd	a5,0(a0)
    80005bdc:	ffffd097          	auipc	ra,0xffffd
    80005be0:	130080e7          	jalr	304(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80005be4:	00813083          	ld	ra,8(sp)
    80005be8:	00013403          	ld	s0,0(sp)
    80005bec:	01010113          	addi	sp,sp,16
    80005bf0:	00008067          	ret

0000000080005bf4 <_ZN12ConsumerSyncD0Ev>:
    80005bf4:	fe010113          	addi	sp,sp,-32
    80005bf8:	00113c23          	sd	ra,24(sp)
    80005bfc:	00813823          	sd	s0,16(sp)
    80005c00:	00913423          	sd	s1,8(sp)
    80005c04:	02010413          	addi	s0,sp,32
    80005c08:	00050493          	mv	s1,a0
    80005c0c:	00006797          	auipc	a5,0x6
    80005c10:	c4c78793          	addi	a5,a5,-948 # 8000b858 <_ZTV12ConsumerSync+0x10>
    80005c14:	00f53023          	sd	a5,0(a0)
    80005c18:	ffffd097          	auipc	ra,0xffffd
    80005c1c:	0f4080e7          	jalr	244(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80005c20:	00048513          	mv	a0,s1
    80005c24:	ffffd097          	auipc	ra,0xffffd
    80005c28:	1e0080e7          	jalr	480(ra) # 80002e04 <_ZdlPv>
    80005c2c:	01813083          	ld	ra,24(sp)
    80005c30:	01013403          	ld	s0,16(sp)
    80005c34:	00813483          	ld	s1,8(sp)
    80005c38:	02010113          	addi	sp,sp,32
    80005c3c:	00008067          	ret

0000000080005c40 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005c40:	ff010113          	addi	sp,sp,-16
    80005c44:	00113423          	sd	ra,8(sp)
    80005c48:	00813023          	sd	s0,0(sp)
    80005c4c:	01010413          	addi	s0,sp,16
    80005c50:	00006797          	auipc	a5,0x6
    80005c54:	be078793          	addi	a5,a5,-1056 # 8000b830 <_ZTV12ProducerSync+0x10>
    80005c58:	00f53023          	sd	a5,0(a0)
    80005c5c:	ffffd097          	auipc	ra,0xffffd
    80005c60:	0b0080e7          	jalr	176(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80005c64:	00813083          	ld	ra,8(sp)
    80005c68:	00013403          	ld	s0,0(sp)
    80005c6c:	01010113          	addi	sp,sp,16
    80005c70:	00008067          	ret

0000000080005c74 <_ZN12ProducerSyncD0Ev>:
    80005c74:	fe010113          	addi	sp,sp,-32
    80005c78:	00113c23          	sd	ra,24(sp)
    80005c7c:	00813823          	sd	s0,16(sp)
    80005c80:	00913423          	sd	s1,8(sp)
    80005c84:	02010413          	addi	s0,sp,32
    80005c88:	00050493          	mv	s1,a0
    80005c8c:	00006797          	auipc	a5,0x6
    80005c90:	ba478793          	addi	a5,a5,-1116 # 8000b830 <_ZTV12ProducerSync+0x10>
    80005c94:	00f53023          	sd	a5,0(a0)
    80005c98:	ffffd097          	auipc	ra,0xffffd
    80005c9c:	074080e7          	jalr	116(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80005ca0:	00048513          	mv	a0,s1
    80005ca4:	ffffd097          	auipc	ra,0xffffd
    80005ca8:	160080e7          	jalr	352(ra) # 80002e04 <_ZdlPv>
    80005cac:	01813083          	ld	ra,24(sp)
    80005cb0:	01013403          	ld	s0,16(sp)
    80005cb4:	00813483          	ld	s1,8(sp)
    80005cb8:	02010113          	addi	sp,sp,32
    80005cbc:	00008067          	ret

0000000080005cc0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005cc0:	ff010113          	addi	sp,sp,-16
    80005cc4:	00113423          	sd	ra,8(sp)
    80005cc8:	00813023          	sd	s0,0(sp)
    80005ccc:	01010413          	addi	s0,sp,16
    80005cd0:	00006797          	auipc	a5,0x6
    80005cd4:	b3878793          	addi	a5,a5,-1224 # 8000b808 <_ZTV16ProducerKeyboard+0x10>
    80005cd8:	00f53023          	sd	a5,0(a0)
    80005cdc:	ffffd097          	auipc	ra,0xffffd
    80005ce0:	030080e7          	jalr	48(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80005ce4:	00813083          	ld	ra,8(sp)
    80005ce8:	00013403          	ld	s0,0(sp)
    80005cec:	01010113          	addi	sp,sp,16
    80005cf0:	00008067          	ret

0000000080005cf4 <_ZN16ProducerKeyboardD0Ev>:
    80005cf4:	fe010113          	addi	sp,sp,-32
    80005cf8:	00113c23          	sd	ra,24(sp)
    80005cfc:	00813823          	sd	s0,16(sp)
    80005d00:	00913423          	sd	s1,8(sp)
    80005d04:	02010413          	addi	s0,sp,32
    80005d08:	00050493          	mv	s1,a0
    80005d0c:	00006797          	auipc	a5,0x6
    80005d10:	afc78793          	addi	a5,a5,-1284 # 8000b808 <_ZTV16ProducerKeyboard+0x10>
    80005d14:	00f53023          	sd	a5,0(a0)
    80005d18:	ffffd097          	auipc	ra,0xffffd
    80005d1c:	ff4080e7          	jalr	-12(ra) # 80002d0c <_ZN6ThreadD1Ev>
    80005d20:	00048513          	mv	a0,s1
    80005d24:	ffffd097          	auipc	ra,0xffffd
    80005d28:	0e0080e7          	jalr	224(ra) # 80002e04 <_ZdlPv>
    80005d2c:	01813083          	ld	ra,24(sp)
    80005d30:	01013403          	ld	s0,16(sp)
    80005d34:	00813483          	ld	s1,8(sp)
    80005d38:	02010113          	addi	sp,sp,32
    80005d3c:	00008067          	ret

0000000080005d40 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005d40:	ff010113          	addi	sp,sp,-16
    80005d44:	00113423          	sd	ra,8(sp)
    80005d48:	00813023          	sd	s0,0(sp)
    80005d4c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005d50:	02053583          	ld	a1,32(a0)
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	7e4080e7          	jalr	2020(ra) # 80005538 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005d5c:	00813083          	ld	ra,8(sp)
    80005d60:	00013403          	ld	s0,0(sp)
    80005d64:	01010113          	addi	sp,sp,16
    80005d68:	00008067          	ret

0000000080005d6c <_ZN12ProducerSync3runEv>:
    void run() override {
    80005d6c:	ff010113          	addi	sp,sp,-16
    80005d70:	00113423          	sd	ra,8(sp)
    80005d74:	00813023          	sd	s0,0(sp)
    80005d78:	01010413          	addi	s0,sp,16
        producer(td);
    80005d7c:	02053583          	ld	a1,32(a0)
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	878080e7          	jalr	-1928(ra) # 800055f8 <_ZN12ProducerSync8producerEPv>
    }
    80005d88:	00813083          	ld	ra,8(sp)
    80005d8c:	00013403          	ld	s0,0(sp)
    80005d90:	01010113          	addi	sp,sp,16
    80005d94:	00008067          	ret

0000000080005d98 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005d98:	ff010113          	addi	sp,sp,-16
    80005d9c:	00113423          	sd	ra,8(sp)
    80005da0:	00813023          	sd	s0,0(sp)
    80005da4:	01010413          	addi	s0,sp,16
        consumer(td);
    80005da8:	02053583          	ld	a1,32(a0)
    80005dac:	00000097          	auipc	ra,0x0
    80005db0:	8e0080e7          	jalr	-1824(ra) # 8000568c <_ZN12ConsumerSync8consumerEPv>
    }
    80005db4:	00813083          	ld	ra,8(sp)
    80005db8:	00013403          	ld	s0,0(sp)
    80005dbc:	01010113          	addi	sp,sp,16
    80005dc0:	00008067          	ret

0000000080005dc4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005dc4:	fe010113          	addi	sp,sp,-32
    80005dc8:	00113c23          	sd	ra,24(sp)
    80005dcc:	00813823          	sd	s0,16(sp)
    80005dd0:	00913423          	sd	s1,8(sp)
    80005dd4:	02010413          	addi	s0,sp,32
    80005dd8:	00050493          	mv	s1,a0
    LOCK();
    80005ddc:	00100613          	li	a2,1
    80005de0:	00000593          	li	a1,0
    80005de4:	00006517          	auipc	a0,0x6
    80005de8:	dec50513          	addi	a0,a0,-532 # 8000bbd0 <lockPrint>
    80005dec:	ffffb097          	auipc	ra,0xffffb
    80005df0:	4e4080e7          	jalr	1252(ra) # 800012d0 <copy_and_swap>
    80005df4:	00050863          	beqz	a0,80005e04 <_Z11printStringPKc+0x40>
    80005df8:	ffffc097          	auipc	ra,0xffffc
    80005dfc:	858080e7          	jalr	-1960(ra) # 80001650 <thread_dispatch>
    80005e00:	fddff06f          	j	80005ddc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005e04:	0004c503          	lbu	a0,0(s1)
    80005e08:	00050a63          	beqz	a0,80005e1c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005e0c:	ffffc097          	auipc	ra,0xffffc
    80005e10:	998080e7          	jalr	-1640(ra) # 800017a4 <putc>
        string++;
    80005e14:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005e18:	fedff06f          	j	80005e04 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005e1c:	00000613          	li	a2,0
    80005e20:	00100593          	li	a1,1
    80005e24:	00006517          	auipc	a0,0x6
    80005e28:	dac50513          	addi	a0,a0,-596 # 8000bbd0 <lockPrint>
    80005e2c:	ffffb097          	auipc	ra,0xffffb
    80005e30:	4a4080e7          	jalr	1188(ra) # 800012d0 <copy_and_swap>
    80005e34:	fe0514e3          	bnez	a0,80005e1c <_Z11printStringPKc+0x58>
}
    80005e38:	01813083          	ld	ra,24(sp)
    80005e3c:	01013403          	ld	s0,16(sp)
    80005e40:	00813483          	ld	s1,8(sp)
    80005e44:	02010113          	addi	sp,sp,32
    80005e48:	00008067          	ret

0000000080005e4c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005e4c:	fd010113          	addi	sp,sp,-48
    80005e50:	02113423          	sd	ra,40(sp)
    80005e54:	02813023          	sd	s0,32(sp)
    80005e58:	00913c23          	sd	s1,24(sp)
    80005e5c:	01213823          	sd	s2,16(sp)
    80005e60:	01313423          	sd	s3,8(sp)
    80005e64:	01413023          	sd	s4,0(sp)
    80005e68:	03010413          	addi	s0,sp,48
    80005e6c:	00050993          	mv	s3,a0
    80005e70:	00058a13          	mv	s4,a1
    LOCK();
    80005e74:	00100613          	li	a2,1
    80005e78:	00000593          	li	a1,0
    80005e7c:	00006517          	auipc	a0,0x6
    80005e80:	d5450513          	addi	a0,a0,-684 # 8000bbd0 <lockPrint>
    80005e84:	ffffb097          	auipc	ra,0xffffb
    80005e88:	44c080e7          	jalr	1100(ra) # 800012d0 <copy_and_swap>
    80005e8c:	00050863          	beqz	a0,80005e9c <_Z9getStringPci+0x50>
    80005e90:	ffffb097          	auipc	ra,0xffffb
    80005e94:	7c0080e7          	jalr	1984(ra) # 80001650 <thread_dispatch>
    80005e98:	fddff06f          	j	80005e74 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005e9c:	00000913          	li	s2,0
    80005ea0:	00090493          	mv	s1,s2
    80005ea4:	0019091b          	addiw	s2,s2,1
    80005ea8:	03495a63          	bge	s2,s4,80005edc <_Z9getStringPci+0x90>
        cc = getc();
    80005eac:	ffffc097          	auipc	ra,0xffffc
    80005eb0:	8d4080e7          	jalr	-1836(ra) # 80001780 <getc>
        if(cc < 1)
    80005eb4:	02050463          	beqz	a0,80005edc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005eb8:	009984b3          	add	s1,s3,s1
    80005ebc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005ec0:	00a00793          	li	a5,10
    80005ec4:	00f50a63          	beq	a0,a5,80005ed8 <_Z9getStringPci+0x8c>
    80005ec8:	00d00793          	li	a5,13
    80005ecc:	fcf51ae3          	bne	a0,a5,80005ea0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005ed0:	00090493          	mv	s1,s2
    80005ed4:	0080006f          	j	80005edc <_Z9getStringPci+0x90>
    80005ed8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005edc:	009984b3          	add	s1,s3,s1
    80005ee0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005ee4:	00000613          	li	a2,0
    80005ee8:	00100593          	li	a1,1
    80005eec:	00006517          	auipc	a0,0x6
    80005ef0:	ce450513          	addi	a0,a0,-796 # 8000bbd0 <lockPrint>
    80005ef4:	ffffb097          	auipc	ra,0xffffb
    80005ef8:	3dc080e7          	jalr	988(ra) # 800012d0 <copy_and_swap>
    80005efc:	fe0514e3          	bnez	a0,80005ee4 <_Z9getStringPci+0x98>
    return buf;
}
    80005f00:	00098513          	mv	a0,s3
    80005f04:	02813083          	ld	ra,40(sp)
    80005f08:	02013403          	ld	s0,32(sp)
    80005f0c:	01813483          	ld	s1,24(sp)
    80005f10:	01013903          	ld	s2,16(sp)
    80005f14:	00813983          	ld	s3,8(sp)
    80005f18:	00013a03          	ld	s4,0(sp)
    80005f1c:	03010113          	addi	sp,sp,48
    80005f20:	00008067          	ret

0000000080005f24 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005f24:	ff010113          	addi	sp,sp,-16
    80005f28:	00813423          	sd	s0,8(sp)
    80005f2c:	01010413          	addi	s0,sp,16
    80005f30:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005f34:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005f38:	0006c603          	lbu	a2,0(a3)
    80005f3c:	fd06071b          	addiw	a4,a2,-48
    80005f40:	0ff77713          	andi	a4,a4,255
    80005f44:	00900793          	li	a5,9
    80005f48:	02e7e063          	bltu	a5,a4,80005f68 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005f4c:	0025179b          	slliw	a5,a0,0x2
    80005f50:	00a787bb          	addw	a5,a5,a0
    80005f54:	0017979b          	slliw	a5,a5,0x1
    80005f58:	00168693          	addi	a3,a3,1
    80005f5c:	00c787bb          	addw	a5,a5,a2
    80005f60:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005f64:	fd5ff06f          	j	80005f38 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005f68:	00813403          	ld	s0,8(sp)
    80005f6c:	01010113          	addi	sp,sp,16
    80005f70:	00008067          	ret

0000000080005f74 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005f74:	fc010113          	addi	sp,sp,-64
    80005f78:	02113c23          	sd	ra,56(sp)
    80005f7c:	02813823          	sd	s0,48(sp)
    80005f80:	02913423          	sd	s1,40(sp)
    80005f84:	03213023          	sd	s2,32(sp)
    80005f88:	01313c23          	sd	s3,24(sp)
    80005f8c:	04010413          	addi	s0,sp,64
    80005f90:	00050493          	mv	s1,a0
    80005f94:	00058913          	mv	s2,a1
    80005f98:	00060993          	mv	s3,a2
    LOCK();
    80005f9c:	00100613          	li	a2,1
    80005fa0:	00000593          	li	a1,0
    80005fa4:	00006517          	auipc	a0,0x6
    80005fa8:	c2c50513          	addi	a0,a0,-980 # 8000bbd0 <lockPrint>
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	324080e7          	jalr	804(ra) # 800012d0 <copy_and_swap>
    80005fb4:	00050863          	beqz	a0,80005fc4 <_Z8printIntiii+0x50>
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	698080e7          	jalr	1688(ra) # 80001650 <thread_dispatch>
    80005fc0:	fddff06f          	j	80005f9c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005fc4:	00098463          	beqz	s3,80005fcc <_Z8printIntiii+0x58>
    80005fc8:	0804c463          	bltz	s1,80006050 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005fcc:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005fd0:	00000593          	li	a1,0
    }

    i = 0;
    80005fd4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005fd8:	0009079b          	sext.w	a5,s2
    80005fdc:	0325773b          	remuw	a4,a0,s2
    80005fe0:	00048613          	mv	a2,s1
    80005fe4:	0014849b          	addiw	s1,s1,1
    80005fe8:	02071693          	slli	a3,a4,0x20
    80005fec:	0206d693          	srli	a3,a3,0x20
    80005ff0:	00006717          	auipc	a4,0x6
    80005ff4:	88070713          	addi	a4,a4,-1920 # 8000b870 <digits>
    80005ff8:	00d70733          	add	a4,a4,a3
    80005ffc:	00074683          	lbu	a3,0(a4)
    80006000:	fd040713          	addi	a4,s0,-48
    80006004:	00c70733          	add	a4,a4,a2
    80006008:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000600c:	0005071b          	sext.w	a4,a0
    80006010:	0325553b          	divuw	a0,a0,s2
    80006014:	fcf772e3          	bgeu	a4,a5,80005fd8 <_Z8printIntiii+0x64>
    if(neg)
    80006018:	00058c63          	beqz	a1,80006030 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000601c:	fd040793          	addi	a5,s0,-48
    80006020:	009784b3          	add	s1,a5,s1
    80006024:	02d00793          	li	a5,45
    80006028:	fef48823          	sb	a5,-16(s1)
    8000602c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006030:	fff4849b          	addiw	s1,s1,-1
    80006034:	0204c463          	bltz	s1,8000605c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006038:	fd040793          	addi	a5,s0,-48
    8000603c:	009787b3          	add	a5,a5,s1
    80006040:	ff07c503          	lbu	a0,-16(a5)
    80006044:	ffffb097          	auipc	ra,0xffffb
    80006048:	760080e7          	jalr	1888(ra) # 800017a4 <putc>
    8000604c:	fe5ff06f          	j	80006030 <_Z8printIntiii+0xbc>
        x = -xx;
    80006050:	4090053b          	negw	a0,s1
        neg = 1;
    80006054:	00100593          	li	a1,1
        x = -xx;
    80006058:	f7dff06f          	j	80005fd4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000605c:	00000613          	li	a2,0
    80006060:	00100593          	li	a1,1
    80006064:	00006517          	auipc	a0,0x6
    80006068:	b6c50513          	addi	a0,a0,-1172 # 8000bbd0 <lockPrint>
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	264080e7          	jalr	612(ra) # 800012d0 <copy_and_swap>
    80006074:	fe0514e3          	bnez	a0,8000605c <_Z8printIntiii+0xe8>
    80006078:	03813083          	ld	ra,56(sp)
    8000607c:	03013403          	ld	s0,48(sp)
    80006080:	02813483          	ld	s1,40(sp)
    80006084:	02013903          	ld	s2,32(sp)
    80006088:	01813983          	ld	s3,24(sp)
    8000608c:	04010113          	addi	sp,sp,64
    80006090:	00008067          	ret

0000000080006094 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006094:	fd010113          	addi	sp,sp,-48
    80006098:	02113423          	sd	ra,40(sp)
    8000609c:	02813023          	sd	s0,32(sp)
    800060a0:	00913c23          	sd	s1,24(sp)
    800060a4:	01213823          	sd	s2,16(sp)
    800060a8:	01313423          	sd	s3,8(sp)
    800060ac:	03010413          	addi	s0,sp,48
    800060b0:	00050493          	mv	s1,a0
    800060b4:	00058913          	mv	s2,a1
    800060b8:	0015879b          	addiw	a5,a1,1
    800060bc:	0007851b          	sext.w	a0,a5
    800060c0:	00f4a023          	sw	a5,0(s1)
    800060c4:	0004a823          	sw	zero,16(s1)
    800060c8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800060cc:	00251513          	slli	a0,a0,0x2
    800060d0:	ffffb097          	auipc	ra,0xffffb
    800060d4:	484080e7          	jalr	1156(ra) # 80001554 <mem_alloc>
    800060d8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800060dc:	01000513          	li	a0,16
    800060e0:	ffffd097          	auipc	ra,0xffffd
    800060e4:	cfc080e7          	jalr	-772(ra) # 80002ddc <_Znwm>
    800060e8:	00050993          	mv	s3,a0
    800060ec:	00000593          	li	a1,0
    800060f0:	ffffd097          	auipc	ra,0xffffd
    800060f4:	ea8080e7          	jalr	-344(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    800060f8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800060fc:	01000513          	li	a0,16
    80006100:	ffffd097          	auipc	ra,0xffffd
    80006104:	cdc080e7          	jalr	-804(ra) # 80002ddc <_Znwm>
    80006108:	00050993          	mv	s3,a0
    8000610c:	00090593          	mv	a1,s2
    80006110:	ffffd097          	auipc	ra,0xffffd
    80006114:	e88080e7          	jalr	-376(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    80006118:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000611c:	01000513          	li	a0,16
    80006120:	ffffd097          	auipc	ra,0xffffd
    80006124:	cbc080e7          	jalr	-836(ra) # 80002ddc <_Znwm>
    80006128:	00050913          	mv	s2,a0
    8000612c:	00100593          	li	a1,1
    80006130:	ffffd097          	auipc	ra,0xffffd
    80006134:	e68080e7          	jalr	-408(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    80006138:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000613c:	01000513          	li	a0,16
    80006140:	ffffd097          	auipc	ra,0xffffd
    80006144:	c9c080e7          	jalr	-868(ra) # 80002ddc <_Znwm>
    80006148:	00050913          	mv	s2,a0
    8000614c:	00100593          	li	a1,1
    80006150:	ffffd097          	auipc	ra,0xffffd
    80006154:	e48080e7          	jalr	-440(ra) # 80002f98 <_ZN9SemaphoreC1Ej>
    80006158:	0324b823          	sd	s2,48(s1)
}
    8000615c:	02813083          	ld	ra,40(sp)
    80006160:	02013403          	ld	s0,32(sp)
    80006164:	01813483          	ld	s1,24(sp)
    80006168:	01013903          	ld	s2,16(sp)
    8000616c:	00813983          	ld	s3,8(sp)
    80006170:	03010113          	addi	sp,sp,48
    80006174:	00008067          	ret
    80006178:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000617c:	00098513          	mv	a0,s3
    80006180:	ffffd097          	auipc	ra,0xffffd
    80006184:	c84080e7          	jalr	-892(ra) # 80002e04 <_ZdlPv>
    80006188:	00048513          	mv	a0,s1
    8000618c:	00007097          	auipc	ra,0x7
    80006190:	b1c080e7          	jalr	-1252(ra) # 8000cca8 <_Unwind_Resume>
    80006194:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006198:	00098513          	mv	a0,s3
    8000619c:	ffffd097          	auipc	ra,0xffffd
    800061a0:	c68080e7          	jalr	-920(ra) # 80002e04 <_ZdlPv>
    800061a4:	00048513          	mv	a0,s1
    800061a8:	00007097          	auipc	ra,0x7
    800061ac:	b00080e7          	jalr	-1280(ra) # 8000cca8 <_Unwind_Resume>
    800061b0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800061b4:	00090513          	mv	a0,s2
    800061b8:	ffffd097          	auipc	ra,0xffffd
    800061bc:	c4c080e7          	jalr	-948(ra) # 80002e04 <_ZdlPv>
    800061c0:	00048513          	mv	a0,s1
    800061c4:	00007097          	auipc	ra,0x7
    800061c8:	ae4080e7          	jalr	-1308(ra) # 8000cca8 <_Unwind_Resume>
    800061cc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800061d0:	00090513          	mv	a0,s2
    800061d4:	ffffd097          	auipc	ra,0xffffd
    800061d8:	c30080e7          	jalr	-976(ra) # 80002e04 <_ZdlPv>
    800061dc:	00048513          	mv	a0,s1
    800061e0:	00007097          	auipc	ra,0x7
    800061e4:	ac8080e7          	jalr	-1336(ra) # 8000cca8 <_Unwind_Resume>

00000000800061e8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800061e8:	fe010113          	addi	sp,sp,-32
    800061ec:	00113c23          	sd	ra,24(sp)
    800061f0:	00813823          	sd	s0,16(sp)
    800061f4:	00913423          	sd	s1,8(sp)
    800061f8:	01213023          	sd	s2,0(sp)
    800061fc:	02010413          	addi	s0,sp,32
    80006200:	00050493          	mv	s1,a0
    80006204:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006208:	01853503          	ld	a0,24(a0)
    8000620c:	ffffd097          	auipc	ra,0xffffd
    80006210:	dc4080e7          	jalr	-572(ra) # 80002fd0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006214:	0304b503          	ld	a0,48(s1)
    80006218:	ffffd097          	auipc	ra,0xffffd
    8000621c:	db8080e7          	jalr	-584(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006220:	0084b783          	ld	a5,8(s1)
    80006224:	0144a703          	lw	a4,20(s1)
    80006228:	00271713          	slli	a4,a4,0x2
    8000622c:	00e787b3          	add	a5,a5,a4
    80006230:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006234:	0144a783          	lw	a5,20(s1)
    80006238:	0017879b          	addiw	a5,a5,1
    8000623c:	0004a703          	lw	a4,0(s1)
    80006240:	02e7e7bb          	remw	a5,a5,a4
    80006244:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006248:	0304b503          	ld	a0,48(s1)
    8000624c:	ffffd097          	auipc	ra,0xffffd
    80006250:	db0080e7          	jalr	-592(ra) # 80002ffc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006254:	0204b503          	ld	a0,32(s1)
    80006258:	ffffd097          	auipc	ra,0xffffd
    8000625c:	da4080e7          	jalr	-604(ra) # 80002ffc <_ZN9Semaphore6signalEv>

}
    80006260:	01813083          	ld	ra,24(sp)
    80006264:	01013403          	ld	s0,16(sp)
    80006268:	00813483          	ld	s1,8(sp)
    8000626c:	00013903          	ld	s2,0(sp)
    80006270:	02010113          	addi	sp,sp,32
    80006274:	00008067          	ret

0000000080006278 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006278:	fe010113          	addi	sp,sp,-32
    8000627c:	00113c23          	sd	ra,24(sp)
    80006280:	00813823          	sd	s0,16(sp)
    80006284:	00913423          	sd	s1,8(sp)
    80006288:	01213023          	sd	s2,0(sp)
    8000628c:	02010413          	addi	s0,sp,32
    80006290:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006294:	02053503          	ld	a0,32(a0)
    80006298:	ffffd097          	auipc	ra,0xffffd
    8000629c:	d38080e7          	jalr	-712(ra) # 80002fd0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800062a0:	0284b503          	ld	a0,40(s1)
    800062a4:	ffffd097          	auipc	ra,0xffffd
    800062a8:	d2c080e7          	jalr	-724(ra) # 80002fd0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800062ac:	0084b703          	ld	a4,8(s1)
    800062b0:	0104a783          	lw	a5,16(s1)
    800062b4:	00279693          	slli	a3,a5,0x2
    800062b8:	00d70733          	add	a4,a4,a3
    800062bc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062c0:	0017879b          	addiw	a5,a5,1
    800062c4:	0004a703          	lw	a4,0(s1)
    800062c8:	02e7e7bb          	remw	a5,a5,a4
    800062cc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800062d0:	0284b503          	ld	a0,40(s1)
    800062d4:	ffffd097          	auipc	ra,0xffffd
    800062d8:	d28080e7          	jalr	-728(ra) # 80002ffc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800062dc:	0184b503          	ld	a0,24(s1)
    800062e0:	ffffd097          	auipc	ra,0xffffd
    800062e4:	d1c080e7          	jalr	-740(ra) # 80002ffc <_ZN9Semaphore6signalEv>

    return ret;
}
    800062e8:	00090513          	mv	a0,s2
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	01013403          	ld	s0,16(sp)
    800062f4:	00813483          	ld	s1,8(sp)
    800062f8:	00013903          	ld	s2,0(sp)
    800062fc:	02010113          	addi	sp,sp,32
    80006300:	00008067          	ret

0000000080006304 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006304:	fe010113          	addi	sp,sp,-32
    80006308:	00113c23          	sd	ra,24(sp)
    8000630c:	00813823          	sd	s0,16(sp)
    80006310:	00913423          	sd	s1,8(sp)
    80006314:	01213023          	sd	s2,0(sp)
    80006318:	02010413          	addi	s0,sp,32
    8000631c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006320:	02853503          	ld	a0,40(a0)
    80006324:	ffffd097          	auipc	ra,0xffffd
    80006328:	cac080e7          	jalr	-852(ra) # 80002fd0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000632c:	0304b503          	ld	a0,48(s1)
    80006330:	ffffd097          	auipc	ra,0xffffd
    80006334:	ca0080e7          	jalr	-864(ra) # 80002fd0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006338:	0144a783          	lw	a5,20(s1)
    8000633c:	0104a903          	lw	s2,16(s1)
    80006340:	0327ce63          	blt	a5,s2,8000637c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006344:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006348:	0304b503          	ld	a0,48(s1)
    8000634c:	ffffd097          	auipc	ra,0xffffd
    80006350:	cb0080e7          	jalr	-848(ra) # 80002ffc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006354:	0284b503          	ld	a0,40(s1)
    80006358:	ffffd097          	auipc	ra,0xffffd
    8000635c:	ca4080e7          	jalr	-860(ra) # 80002ffc <_ZN9Semaphore6signalEv>

    return ret;
}
    80006360:	00090513          	mv	a0,s2
    80006364:	01813083          	ld	ra,24(sp)
    80006368:	01013403          	ld	s0,16(sp)
    8000636c:	00813483          	ld	s1,8(sp)
    80006370:	00013903          	ld	s2,0(sp)
    80006374:	02010113          	addi	sp,sp,32
    80006378:	00008067          	ret
        ret = cap - head + tail;
    8000637c:	0004a703          	lw	a4,0(s1)
    80006380:	4127093b          	subw	s2,a4,s2
    80006384:	00f9093b          	addw	s2,s2,a5
    80006388:	fc1ff06f          	j	80006348 <_ZN9BufferCPP6getCntEv+0x44>

000000008000638c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000638c:	fe010113          	addi	sp,sp,-32
    80006390:	00113c23          	sd	ra,24(sp)
    80006394:	00813823          	sd	s0,16(sp)
    80006398:	00913423          	sd	s1,8(sp)
    8000639c:	02010413          	addi	s0,sp,32
    800063a0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800063a4:	00a00513          	li	a0,10
    800063a8:	ffffd097          	auipc	ra,0xffffd
    800063ac:	d14080e7          	jalr	-748(ra) # 800030bc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800063b0:	00003517          	auipc	a0,0x3
    800063b4:	1d850513          	addi	a0,a0,472 # 80009588 <CONSOLE_STATUS+0x578>
    800063b8:	00000097          	auipc	ra,0x0
    800063bc:	a0c080e7          	jalr	-1524(ra) # 80005dc4 <_Z11printStringPKc>
    while (getCnt()) {
    800063c0:	00048513          	mv	a0,s1
    800063c4:	00000097          	auipc	ra,0x0
    800063c8:	f40080e7          	jalr	-192(ra) # 80006304 <_ZN9BufferCPP6getCntEv>
    800063cc:	02050c63          	beqz	a0,80006404 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800063d0:	0084b783          	ld	a5,8(s1)
    800063d4:	0104a703          	lw	a4,16(s1)
    800063d8:	00271713          	slli	a4,a4,0x2
    800063dc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800063e0:	0007c503          	lbu	a0,0(a5)
    800063e4:	ffffd097          	auipc	ra,0xffffd
    800063e8:	cd8080e7          	jalr	-808(ra) # 800030bc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800063ec:	0104a783          	lw	a5,16(s1)
    800063f0:	0017879b          	addiw	a5,a5,1
    800063f4:	0004a703          	lw	a4,0(s1)
    800063f8:	02e7e7bb          	remw	a5,a5,a4
    800063fc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006400:	fc1ff06f          	j	800063c0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006404:	02100513          	li	a0,33
    80006408:	ffffd097          	auipc	ra,0xffffd
    8000640c:	cb4080e7          	jalr	-844(ra) # 800030bc <_ZN7Console4putcEc>
    Console::putc('\n');
    80006410:	00a00513          	li	a0,10
    80006414:	ffffd097          	auipc	ra,0xffffd
    80006418:	ca8080e7          	jalr	-856(ra) # 800030bc <_ZN7Console4putcEc>
    mem_free(buffer);
    8000641c:	0084b503          	ld	a0,8(s1)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	160080e7          	jalr	352(ra) # 80001580 <mem_free>
    delete itemAvailable;
    80006428:	0204b503          	ld	a0,32(s1)
    8000642c:	00050863          	beqz	a0,8000643c <_ZN9BufferCPPD1Ev+0xb0>
    80006430:	00053783          	ld	a5,0(a0)
    80006434:	0087b783          	ld	a5,8(a5)
    80006438:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000643c:	0184b503          	ld	a0,24(s1)
    80006440:	00050863          	beqz	a0,80006450 <_ZN9BufferCPPD1Ev+0xc4>
    80006444:	00053783          	ld	a5,0(a0)
    80006448:	0087b783          	ld	a5,8(a5)
    8000644c:	000780e7          	jalr	a5
    delete mutexTail;
    80006450:	0304b503          	ld	a0,48(s1)
    80006454:	00050863          	beqz	a0,80006464 <_ZN9BufferCPPD1Ev+0xd8>
    80006458:	00053783          	ld	a5,0(a0)
    8000645c:	0087b783          	ld	a5,8(a5)
    80006460:	000780e7          	jalr	a5
    delete mutexHead;
    80006464:	0284b503          	ld	a0,40(s1)
    80006468:	00050863          	beqz	a0,80006478 <_ZN9BufferCPPD1Ev+0xec>
    8000646c:	00053783          	ld	a5,0(a0)
    80006470:	0087b783          	ld	a5,8(a5)
    80006474:	000780e7          	jalr	a5
}
    80006478:	01813083          	ld	ra,24(sp)
    8000647c:	01013403          	ld	s0,16(sp)
    80006480:	00813483          	ld	s1,8(sp)
    80006484:	02010113          	addi	sp,sp,32
    80006488:	00008067          	ret

000000008000648c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000648c:	fe010113          	addi	sp,sp,-32
    80006490:	00113c23          	sd	ra,24(sp)
    80006494:	00813823          	sd	s0,16(sp)
    80006498:	00913423          	sd	s1,8(sp)
    8000649c:	01213023          	sd	s2,0(sp)
    800064a0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800064a4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800064a8:	00600493          	li	s1,6
    while (--i > 0) {
    800064ac:	fff4849b          	addiw	s1,s1,-1
    800064b0:	04905463          	blez	s1,800064f8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800064b4:	00003517          	auipc	a0,0x3
    800064b8:	0ec50513          	addi	a0,a0,236 # 800095a0 <CONSOLE_STATUS+0x590>
    800064bc:	00000097          	auipc	ra,0x0
    800064c0:	908080e7          	jalr	-1784(ra) # 80005dc4 <_Z11printStringPKc>
        printInt(sleep_time);
    800064c4:	00000613          	li	a2,0
    800064c8:	00a00593          	li	a1,10
    800064cc:	0009051b          	sext.w	a0,s2
    800064d0:	00000097          	auipc	ra,0x0
    800064d4:	aa4080e7          	jalr	-1372(ra) # 80005f74 <_Z8printIntiii>
        printString(" !\n");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	0d050513          	addi	a0,a0,208 # 800095a8 <CONSOLE_STATUS+0x598>
    800064e0:	00000097          	auipc	ra,0x0
    800064e4:	8e4080e7          	jalr	-1820(ra) # 80005dc4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800064e8:	00090513          	mv	a0,s2
    800064ec:	ffffb097          	auipc	ra,0xffffb
    800064f0:	184080e7          	jalr	388(ra) # 80001670 <time_sleep>
    while (--i > 0) {
    800064f4:	fb9ff06f          	j	800064ac <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800064f8:	00a00793          	li	a5,10
    800064fc:	02f95933          	divu	s2,s2,a5
    80006500:	fff90913          	addi	s2,s2,-1
    80006504:	00005797          	auipc	a5,0x5
    80006508:	6d478793          	addi	a5,a5,1748 # 8000bbd8 <_ZL8finished>
    8000650c:	01278933          	add	s2,a5,s2
    80006510:	00100793          	li	a5,1
    80006514:	00f90023          	sb	a5,0(s2)
}
    80006518:	01813083          	ld	ra,24(sp)
    8000651c:	01013403          	ld	s0,16(sp)
    80006520:	00813483          	ld	s1,8(sp)
    80006524:	00013903          	ld	s2,0(sp)
    80006528:	02010113          	addi	sp,sp,32
    8000652c:	00008067          	ret

0000000080006530 <_Z12testSleepingv>:

void testSleeping() {
    80006530:	fc010113          	addi	sp,sp,-64
    80006534:	02113c23          	sd	ra,56(sp)
    80006538:	02813823          	sd	s0,48(sp)
    8000653c:	02913423          	sd	s1,40(sp)
    80006540:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006544:	00a00793          	li	a5,10
    80006548:	fcf43823          	sd	a5,-48(s0)
    8000654c:	01400793          	li	a5,20
    80006550:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006554:	00000493          	li	s1,0
    80006558:	02c0006f          	j	80006584 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000655c:	00349793          	slli	a5,s1,0x3
    80006560:	fd040613          	addi	a2,s0,-48
    80006564:	00f60633          	add	a2,a2,a5
    80006568:	00000597          	auipc	a1,0x0
    8000656c:	f2458593          	addi	a1,a1,-220 # 8000648c <_ZL9sleepyRunPv>
    80006570:	fc040513          	addi	a0,s0,-64
    80006574:	00f50533          	add	a0,a0,a5
    80006578:	ffffb097          	auipc	ra,0xffffb
    8000657c:	034080e7          	jalr	52(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006580:	0014849b          	addiw	s1,s1,1
    80006584:	00100793          	li	a5,1
    80006588:	fc97dae3          	bge	a5,s1,8000655c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000658c:	00005797          	auipc	a5,0x5
    80006590:	64c7c783          	lbu	a5,1612(a5) # 8000bbd8 <_ZL8finished>
    80006594:	fe078ce3          	beqz	a5,8000658c <_Z12testSleepingv+0x5c>
    80006598:	00005797          	auipc	a5,0x5
    8000659c:	6417c783          	lbu	a5,1601(a5) # 8000bbd9 <_ZL8finished+0x1>
    800065a0:	fe0786e3          	beqz	a5,8000658c <_Z12testSleepingv+0x5c>
}
    800065a4:	03813083          	ld	ra,56(sp)
    800065a8:	03013403          	ld	s0,48(sp)
    800065ac:	02813483          	ld	s1,40(sp)
    800065b0:	04010113          	addi	sp,sp,64
    800065b4:	00008067          	ret

00000000800065b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800065b8:	fe010113          	addi	sp,sp,-32
    800065bc:	00113c23          	sd	ra,24(sp)
    800065c0:	00813823          	sd	s0,16(sp)
    800065c4:	00913423          	sd	s1,8(sp)
    800065c8:	01213023          	sd	s2,0(sp)
    800065cc:	02010413          	addi	s0,sp,32
    800065d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800065d4:	00100793          	li	a5,1
    800065d8:	02a7f863          	bgeu	a5,a0,80006608 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800065dc:	00a00793          	li	a5,10
    800065e0:	02f577b3          	remu	a5,a0,a5
    800065e4:	02078e63          	beqz	a5,80006620 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800065e8:	fff48513          	addi	a0,s1,-1
    800065ec:	00000097          	auipc	ra,0x0
    800065f0:	fcc080e7          	jalr	-52(ra) # 800065b8 <_ZL9fibonaccim>
    800065f4:	00050913          	mv	s2,a0
    800065f8:	ffe48513          	addi	a0,s1,-2
    800065fc:	00000097          	auipc	ra,0x0
    80006600:	fbc080e7          	jalr	-68(ra) # 800065b8 <_ZL9fibonaccim>
    80006604:	00a90533          	add	a0,s2,a0
}
    80006608:	01813083          	ld	ra,24(sp)
    8000660c:	01013403          	ld	s0,16(sp)
    80006610:	00813483          	ld	s1,8(sp)
    80006614:	00013903          	ld	s2,0(sp)
    80006618:	02010113          	addi	sp,sp,32
    8000661c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006620:	ffffb097          	auipc	ra,0xffffb
    80006624:	030080e7          	jalr	48(ra) # 80001650 <thread_dispatch>
    80006628:	fc1ff06f          	j	800065e8 <_ZL9fibonaccim+0x30>

000000008000662c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000662c:	fe010113          	addi	sp,sp,-32
    80006630:	00113c23          	sd	ra,24(sp)
    80006634:	00813823          	sd	s0,16(sp)
    80006638:	00913423          	sd	s1,8(sp)
    8000663c:	01213023          	sd	s2,0(sp)
    80006640:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006644:	00a00493          	li	s1,10
    80006648:	0400006f          	j	80006688 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000664c:	00003517          	auipc	a0,0x3
    80006650:	c2c50513          	addi	a0,a0,-980 # 80009278 <CONSOLE_STATUS+0x268>
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	770080e7          	jalr	1904(ra) # 80005dc4 <_Z11printStringPKc>
    8000665c:	00000613          	li	a2,0
    80006660:	00a00593          	li	a1,10
    80006664:	00048513          	mv	a0,s1
    80006668:	00000097          	auipc	ra,0x0
    8000666c:	90c080e7          	jalr	-1780(ra) # 80005f74 <_Z8printIntiii>
    80006670:	00003517          	auipc	a0,0x3
    80006674:	de050513          	addi	a0,a0,-544 # 80009450 <CONSOLE_STATUS+0x440>
    80006678:	fffff097          	auipc	ra,0xfffff
    8000667c:	74c080e7          	jalr	1868(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006680:	0014849b          	addiw	s1,s1,1
    80006684:	0ff4f493          	andi	s1,s1,255
    80006688:	00c00793          	li	a5,12
    8000668c:	fc97f0e3          	bgeu	a5,s1,8000664c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006690:	00003517          	auipc	a0,0x3
    80006694:	bf050513          	addi	a0,a0,-1040 # 80009280 <CONSOLE_STATUS+0x270>
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	72c080e7          	jalr	1836(ra) # 80005dc4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800066a0:	00500313          	li	t1,5
    thread_dispatch();
    800066a4:	ffffb097          	auipc	ra,0xffffb
    800066a8:	fac080e7          	jalr	-84(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    800066ac:	01000513          	li	a0,16
    800066b0:	00000097          	auipc	ra,0x0
    800066b4:	f08080e7          	jalr	-248(ra) # 800065b8 <_ZL9fibonaccim>
    800066b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800066bc:	00003517          	auipc	a0,0x3
    800066c0:	bd450513          	addi	a0,a0,-1068 # 80009290 <CONSOLE_STATUS+0x280>
    800066c4:	fffff097          	auipc	ra,0xfffff
    800066c8:	700080e7          	jalr	1792(ra) # 80005dc4 <_Z11printStringPKc>
    800066cc:	00000613          	li	a2,0
    800066d0:	00a00593          	li	a1,10
    800066d4:	0009051b          	sext.w	a0,s2
    800066d8:	00000097          	auipc	ra,0x0
    800066dc:	89c080e7          	jalr	-1892(ra) # 80005f74 <_Z8printIntiii>
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	d7050513          	addi	a0,a0,-656 # 80009450 <CONSOLE_STATUS+0x440>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	6dc080e7          	jalr	1756(ra) # 80005dc4 <_Z11printStringPKc>
    800066f0:	0400006f          	j	80006730 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800066f4:	00003517          	auipc	a0,0x3
    800066f8:	b8450513          	addi	a0,a0,-1148 # 80009278 <CONSOLE_STATUS+0x268>
    800066fc:	fffff097          	auipc	ra,0xfffff
    80006700:	6c8080e7          	jalr	1736(ra) # 80005dc4 <_Z11printStringPKc>
    80006704:	00000613          	li	a2,0
    80006708:	00a00593          	li	a1,10
    8000670c:	00048513          	mv	a0,s1
    80006710:	00000097          	auipc	ra,0x0
    80006714:	864080e7          	jalr	-1948(ra) # 80005f74 <_Z8printIntiii>
    80006718:	00003517          	auipc	a0,0x3
    8000671c:	d3850513          	addi	a0,a0,-712 # 80009450 <CONSOLE_STATUS+0x440>
    80006720:	fffff097          	auipc	ra,0xfffff
    80006724:	6a4080e7          	jalr	1700(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006728:	0014849b          	addiw	s1,s1,1
    8000672c:	0ff4f493          	andi	s1,s1,255
    80006730:	00f00793          	li	a5,15
    80006734:	fc97f0e3          	bgeu	a5,s1,800066f4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	b6850513          	addi	a0,a0,-1176 # 800092a0 <CONSOLE_STATUS+0x290>
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	684080e7          	jalr	1668(ra) # 80005dc4 <_Z11printStringPKc>
    finishedD = true;
    80006748:	00100793          	li	a5,1
    8000674c:	00005717          	auipc	a4,0x5
    80006750:	48f70723          	sb	a5,1166(a4) # 8000bbda <_ZL9finishedD>
    thread_dispatch();
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	efc080e7          	jalr	-260(ra) # 80001650 <thread_dispatch>
}
    8000675c:	01813083          	ld	ra,24(sp)
    80006760:	01013403          	ld	s0,16(sp)
    80006764:	00813483          	ld	s1,8(sp)
    80006768:	00013903          	ld	s2,0(sp)
    8000676c:	02010113          	addi	sp,sp,32
    80006770:	00008067          	ret

0000000080006774 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006774:	fe010113          	addi	sp,sp,-32
    80006778:	00113c23          	sd	ra,24(sp)
    8000677c:	00813823          	sd	s0,16(sp)
    80006780:	00913423          	sd	s1,8(sp)
    80006784:	01213023          	sd	s2,0(sp)
    80006788:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000678c:	00000493          	li	s1,0
    80006790:	0400006f          	j	800067d0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006794:	00003517          	auipc	a0,0x3
    80006798:	ab450513          	addi	a0,a0,-1356 # 80009248 <CONSOLE_STATUS+0x238>
    8000679c:	fffff097          	auipc	ra,0xfffff
    800067a0:	628080e7          	jalr	1576(ra) # 80005dc4 <_Z11printStringPKc>
    800067a4:	00000613          	li	a2,0
    800067a8:	00a00593          	li	a1,10
    800067ac:	00048513          	mv	a0,s1
    800067b0:	fffff097          	auipc	ra,0xfffff
    800067b4:	7c4080e7          	jalr	1988(ra) # 80005f74 <_Z8printIntiii>
    800067b8:	00003517          	auipc	a0,0x3
    800067bc:	c9850513          	addi	a0,a0,-872 # 80009450 <CONSOLE_STATUS+0x440>
    800067c0:	fffff097          	auipc	ra,0xfffff
    800067c4:	604080e7          	jalr	1540(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800067c8:	0014849b          	addiw	s1,s1,1
    800067cc:	0ff4f493          	andi	s1,s1,255
    800067d0:	00200793          	li	a5,2
    800067d4:	fc97f0e3          	bgeu	a5,s1,80006794 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800067d8:	00003517          	auipc	a0,0x3
    800067dc:	a7850513          	addi	a0,a0,-1416 # 80009250 <CONSOLE_STATUS+0x240>
    800067e0:	fffff097          	auipc	ra,0xfffff
    800067e4:	5e4080e7          	jalr	1508(ra) # 80005dc4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800067e8:	00700313          	li	t1,7
    thread_dispatch();
    800067ec:	ffffb097          	auipc	ra,0xffffb
    800067f0:	e64080e7          	jalr	-412(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800067f4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	a6850513          	addi	a0,a0,-1432 # 80009260 <CONSOLE_STATUS+0x250>
    80006800:	fffff097          	auipc	ra,0xfffff
    80006804:	5c4080e7          	jalr	1476(ra) # 80005dc4 <_Z11printStringPKc>
    80006808:	00000613          	li	a2,0
    8000680c:	00a00593          	li	a1,10
    80006810:	0009051b          	sext.w	a0,s2
    80006814:	fffff097          	auipc	ra,0xfffff
    80006818:	760080e7          	jalr	1888(ra) # 80005f74 <_Z8printIntiii>
    8000681c:	00003517          	auipc	a0,0x3
    80006820:	c3450513          	addi	a0,a0,-972 # 80009450 <CONSOLE_STATUS+0x440>
    80006824:	fffff097          	auipc	ra,0xfffff
    80006828:	5a0080e7          	jalr	1440(ra) # 80005dc4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000682c:	00c00513          	li	a0,12
    80006830:	00000097          	auipc	ra,0x0
    80006834:	d88080e7          	jalr	-632(ra) # 800065b8 <_ZL9fibonaccim>
    80006838:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000683c:	00003517          	auipc	a0,0x3
    80006840:	a2c50513          	addi	a0,a0,-1492 # 80009268 <CONSOLE_STATUS+0x258>
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	580080e7          	jalr	1408(ra) # 80005dc4 <_Z11printStringPKc>
    8000684c:	00000613          	li	a2,0
    80006850:	00a00593          	li	a1,10
    80006854:	0009051b          	sext.w	a0,s2
    80006858:	fffff097          	auipc	ra,0xfffff
    8000685c:	71c080e7          	jalr	1820(ra) # 80005f74 <_Z8printIntiii>
    80006860:	00003517          	auipc	a0,0x3
    80006864:	bf050513          	addi	a0,a0,-1040 # 80009450 <CONSOLE_STATUS+0x440>
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	55c080e7          	jalr	1372(ra) # 80005dc4 <_Z11printStringPKc>
    80006870:	0400006f          	j	800068b0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006874:	00003517          	auipc	a0,0x3
    80006878:	9d450513          	addi	a0,a0,-1580 # 80009248 <CONSOLE_STATUS+0x238>
    8000687c:	fffff097          	auipc	ra,0xfffff
    80006880:	548080e7          	jalr	1352(ra) # 80005dc4 <_Z11printStringPKc>
    80006884:	00000613          	li	a2,0
    80006888:	00a00593          	li	a1,10
    8000688c:	00048513          	mv	a0,s1
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	6e4080e7          	jalr	1764(ra) # 80005f74 <_Z8printIntiii>
    80006898:	00003517          	auipc	a0,0x3
    8000689c:	bb850513          	addi	a0,a0,-1096 # 80009450 <CONSOLE_STATUS+0x440>
    800068a0:	fffff097          	auipc	ra,0xfffff
    800068a4:	524080e7          	jalr	1316(ra) # 80005dc4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800068a8:	0014849b          	addiw	s1,s1,1
    800068ac:	0ff4f493          	andi	s1,s1,255
    800068b0:	00500793          	li	a5,5
    800068b4:	fc97f0e3          	bgeu	a5,s1,80006874 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800068b8:	00003517          	auipc	a0,0x3
    800068bc:	96850513          	addi	a0,a0,-1688 # 80009220 <CONSOLE_STATUS+0x210>
    800068c0:	fffff097          	auipc	ra,0xfffff
    800068c4:	504080e7          	jalr	1284(ra) # 80005dc4 <_Z11printStringPKc>
    finishedC = true;
    800068c8:	00100793          	li	a5,1
    800068cc:	00005717          	auipc	a4,0x5
    800068d0:	30f707a3          	sb	a5,783(a4) # 8000bbdb <_ZL9finishedC>
    thread_dispatch();
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	d7c080e7          	jalr	-644(ra) # 80001650 <thread_dispatch>
}
    800068dc:	01813083          	ld	ra,24(sp)
    800068e0:	01013403          	ld	s0,16(sp)
    800068e4:	00813483          	ld	s1,8(sp)
    800068e8:	00013903          	ld	s2,0(sp)
    800068ec:	02010113          	addi	sp,sp,32
    800068f0:	00008067          	ret

00000000800068f4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800068f4:	fe010113          	addi	sp,sp,-32
    800068f8:	00113c23          	sd	ra,24(sp)
    800068fc:	00813823          	sd	s0,16(sp)
    80006900:	00913423          	sd	s1,8(sp)
    80006904:	01213023          	sd	s2,0(sp)
    80006908:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000690c:	00000913          	li	s2,0
    80006910:	0400006f          	j	80006950 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006914:	ffffb097          	auipc	ra,0xffffb
    80006918:	d3c080e7          	jalr	-708(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000691c:	00148493          	addi	s1,s1,1
    80006920:	000027b7          	lui	a5,0x2
    80006924:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006928:	0097ee63          	bltu	a5,s1,80006944 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000692c:	00000713          	li	a4,0
    80006930:	000077b7          	lui	a5,0x7
    80006934:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006938:	fce7eee3          	bltu	a5,a4,80006914 <_ZL11workerBodyBPv+0x20>
    8000693c:	00170713          	addi	a4,a4,1
    80006940:	ff1ff06f          	j	80006930 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006944:	00a00793          	li	a5,10
    80006948:	04f90663          	beq	s2,a5,80006994 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000694c:	00190913          	addi	s2,s2,1
    80006950:	00f00793          	li	a5,15
    80006954:	0527e463          	bltu	a5,s2,8000699c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006958:	00003517          	auipc	a0,0x3
    8000695c:	8d850513          	addi	a0,a0,-1832 # 80009230 <CONSOLE_STATUS+0x220>
    80006960:	fffff097          	auipc	ra,0xfffff
    80006964:	464080e7          	jalr	1124(ra) # 80005dc4 <_Z11printStringPKc>
    80006968:	00000613          	li	a2,0
    8000696c:	00a00593          	li	a1,10
    80006970:	0009051b          	sext.w	a0,s2
    80006974:	fffff097          	auipc	ra,0xfffff
    80006978:	600080e7          	jalr	1536(ra) # 80005f74 <_Z8printIntiii>
    8000697c:	00003517          	auipc	a0,0x3
    80006980:	ad450513          	addi	a0,a0,-1324 # 80009450 <CONSOLE_STATUS+0x440>
    80006984:	fffff097          	auipc	ra,0xfffff
    80006988:	440080e7          	jalr	1088(ra) # 80005dc4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000698c:	00000493          	li	s1,0
    80006990:	f91ff06f          	j	80006920 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006994:	14102ff3          	csrr	t6,sepc
    80006998:	fb5ff06f          	j	8000694c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000699c:	00003517          	auipc	a0,0x3
    800069a0:	89c50513          	addi	a0,a0,-1892 # 80009238 <CONSOLE_STATUS+0x228>
    800069a4:	fffff097          	auipc	ra,0xfffff
    800069a8:	420080e7          	jalr	1056(ra) # 80005dc4 <_Z11printStringPKc>
    finishedB = true;
    800069ac:	00100793          	li	a5,1
    800069b0:	00005717          	auipc	a4,0x5
    800069b4:	22f70623          	sb	a5,556(a4) # 8000bbdc <_ZL9finishedB>
    thread_dispatch();
    800069b8:	ffffb097          	auipc	ra,0xffffb
    800069bc:	c98080e7          	jalr	-872(ra) # 80001650 <thread_dispatch>
}
    800069c0:	01813083          	ld	ra,24(sp)
    800069c4:	01013403          	ld	s0,16(sp)
    800069c8:	00813483          	ld	s1,8(sp)
    800069cc:	00013903          	ld	s2,0(sp)
    800069d0:	02010113          	addi	sp,sp,32
    800069d4:	00008067          	ret

00000000800069d8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800069d8:	fe010113          	addi	sp,sp,-32
    800069dc:	00113c23          	sd	ra,24(sp)
    800069e0:	00813823          	sd	s0,16(sp)
    800069e4:	00913423          	sd	s1,8(sp)
    800069e8:	01213023          	sd	s2,0(sp)
    800069ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800069f0:	00000913          	li	s2,0
    800069f4:	0380006f          	j	80006a2c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800069f8:	ffffb097          	auipc	ra,0xffffb
    800069fc:	c58080e7          	jalr	-936(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006a00:	00148493          	addi	s1,s1,1
    80006a04:	000027b7          	lui	a5,0x2
    80006a08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a0c:	0097ee63          	bltu	a5,s1,80006a28 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a10:	00000713          	li	a4,0
    80006a14:	000077b7          	lui	a5,0x7
    80006a18:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a1c:	fce7eee3          	bltu	a5,a4,800069f8 <_ZL11workerBodyAPv+0x20>
    80006a20:	00170713          	addi	a4,a4,1
    80006a24:	ff1ff06f          	j	80006a14 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a28:	00190913          	addi	s2,s2,1
    80006a2c:	00900793          	li	a5,9
    80006a30:	0527e063          	bltu	a5,s2,80006a70 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a34:	00002517          	auipc	a0,0x2
    80006a38:	7e450513          	addi	a0,a0,2020 # 80009218 <CONSOLE_STATUS+0x208>
    80006a3c:	fffff097          	auipc	ra,0xfffff
    80006a40:	388080e7          	jalr	904(ra) # 80005dc4 <_Z11printStringPKc>
    80006a44:	00000613          	li	a2,0
    80006a48:	00a00593          	li	a1,10
    80006a4c:	0009051b          	sext.w	a0,s2
    80006a50:	fffff097          	auipc	ra,0xfffff
    80006a54:	524080e7          	jalr	1316(ra) # 80005f74 <_Z8printIntiii>
    80006a58:	00003517          	auipc	a0,0x3
    80006a5c:	9f850513          	addi	a0,a0,-1544 # 80009450 <CONSOLE_STATUS+0x440>
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	364080e7          	jalr	868(ra) # 80005dc4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a68:	00000493          	li	s1,0
    80006a6c:	f99ff06f          	j	80006a04 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006a70:	00002517          	auipc	a0,0x2
    80006a74:	7b050513          	addi	a0,a0,1968 # 80009220 <CONSOLE_STATUS+0x210>
    80006a78:	fffff097          	auipc	ra,0xfffff
    80006a7c:	34c080e7          	jalr	844(ra) # 80005dc4 <_Z11printStringPKc>
    finishedA = true;
    80006a80:	00100793          	li	a5,1
    80006a84:	00005717          	auipc	a4,0x5
    80006a88:	14f70ca3          	sb	a5,345(a4) # 8000bbdd <_ZL9finishedA>
}
    80006a8c:	01813083          	ld	ra,24(sp)
    80006a90:	01013403          	ld	s0,16(sp)
    80006a94:	00813483          	ld	s1,8(sp)
    80006a98:	00013903          	ld	s2,0(sp)
    80006a9c:	02010113          	addi	sp,sp,32
    80006aa0:	00008067          	ret

0000000080006aa4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006aa4:	fd010113          	addi	sp,sp,-48
    80006aa8:	02113423          	sd	ra,40(sp)
    80006aac:	02813023          	sd	s0,32(sp)
    80006ab0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ab4:	00000613          	li	a2,0
    80006ab8:	00000597          	auipc	a1,0x0
    80006abc:	f2058593          	addi	a1,a1,-224 # 800069d8 <_ZL11workerBodyAPv>
    80006ac0:	fd040513          	addi	a0,s0,-48
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	ae8080e7          	jalr	-1304(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80006acc:	00002517          	auipc	a0,0x2
    80006ad0:	7e450513          	addi	a0,a0,2020 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006ad4:	fffff097          	auipc	ra,0xfffff
    80006ad8:	2f0080e7          	jalr	752(ra) # 80005dc4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006adc:	00000613          	li	a2,0
    80006ae0:	00000597          	auipc	a1,0x0
    80006ae4:	e1458593          	addi	a1,a1,-492 # 800068f4 <_ZL11workerBodyBPv>
    80006ae8:	fd840513          	addi	a0,s0,-40
    80006aec:	ffffb097          	auipc	ra,0xffffb
    80006af0:	ac0080e7          	jalr	-1344(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80006af4:	00002517          	auipc	a0,0x2
    80006af8:	7d450513          	addi	a0,a0,2004 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006afc:	fffff097          	auipc	ra,0xfffff
    80006b00:	2c8080e7          	jalr	712(ra) # 80005dc4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b04:	00000613          	li	a2,0
    80006b08:	00000597          	auipc	a1,0x0
    80006b0c:	c6c58593          	addi	a1,a1,-916 # 80006774 <_ZL11workerBodyCPv>
    80006b10:	fe040513          	addi	a0,s0,-32
    80006b14:	ffffb097          	auipc	ra,0xffffb
    80006b18:	a98080e7          	jalr	-1384(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80006b1c:	00002517          	auipc	a0,0x2
    80006b20:	7c450513          	addi	a0,a0,1988 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006b24:	fffff097          	auipc	ra,0xfffff
    80006b28:	2a0080e7          	jalr	672(ra) # 80005dc4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b2c:	00000613          	li	a2,0
    80006b30:	00000597          	auipc	a1,0x0
    80006b34:	afc58593          	addi	a1,a1,-1284 # 8000662c <_ZL11workerBodyDPv>
    80006b38:	fe840513          	addi	a0,s0,-24
    80006b3c:	ffffb097          	auipc	ra,0xffffb
    80006b40:	a70080e7          	jalr	-1424(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80006b44:	00002517          	auipc	a0,0x2
    80006b48:	7b450513          	addi	a0,a0,1972 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006b4c:	fffff097          	auipc	ra,0xfffff
    80006b50:	278080e7          	jalr	632(ra) # 80005dc4 <_Z11printStringPKc>
    80006b54:	00c0006f          	j	80006b60 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b58:	ffffb097          	auipc	ra,0xffffb
    80006b5c:	af8080e7          	jalr	-1288(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b60:	00005797          	auipc	a5,0x5
    80006b64:	07d7c783          	lbu	a5,125(a5) # 8000bbdd <_ZL9finishedA>
    80006b68:	fe0788e3          	beqz	a5,80006b58 <_Z16System_Mode_testv+0xb4>
    80006b6c:	00005797          	auipc	a5,0x5
    80006b70:	0707c783          	lbu	a5,112(a5) # 8000bbdc <_ZL9finishedB>
    80006b74:	fe0782e3          	beqz	a5,80006b58 <_Z16System_Mode_testv+0xb4>
    80006b78:	00005797          	auipc	a5,0x5
    80006b7c:	0637c783          	lbu	a5,99(a5) # 8000bbdb <_ZL9finishedC>
    80006b80:	fc078ce3          	beqz	a5,80006b58 <_Z16System_Mode_testv+0xb4>
    80006b84:	00005797          	auipc	a5,0x5
    80006b88:	0567c783          	lbu	a5,86(a5) # 8000bbda <_ZL9finishedD>
    80006b8c:	fc0786e3          	beqz	a5,80006b58 <_Z16System_Mode_testv+0xb4>
    }

}
    80006b90:	02813083          	ld	ra,40(sp)
    80006b94:	02013403          	ld	s0,32(sp)
    80006b98:	03010113          	addi	sp,sp,48
    80006b9c:	00008067          	ret

0000000080006ba0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006ba0:	fe010113          	addi	sp,sp,-32
    80006ba4:	00113c23          	sd	ra,24(sp)
    80006ba8:	00813823          	sd	s0,16(sp)
    80006bac:	00913423          	sd	s1,8(sp)
    80006bb0:	01213023          	sd	s2,0(sp)
    80006bb4:	02010413          	addi	s0,sp,32
    80006bb8:	00050493          	mv	s1,a0
    80006bbc:	00058913          	mv	s2,a1
    80006bc0:	0015879b          	addiw	a5,a1,1
    80006bc4:	0007851b          	sext.w	a0,a5
    80006bc8:	00f4a023          	sw	a5,0(s1)
    80006bcc:	0004a823          	sw	zero,16(s1)
    80006bd0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006bd4:	00251513          	slli	a0,a0,0x2
    80006bd8:	ffffb097          	auipc	ra,0xffffb
    80006bdc:	97c080e7          	jalr	-1668(ra) # 80001554 <mem_alloc>
    80006be0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006be4:	00000593          	li	a1,0
    80006be8:	02048513          	addi	a0,s1,32
    80006bec:	ffffb097          	auipc	ra,0xffffb
    80006bf0:	aac080e7          	jalr	-1364(ra) # 80001698 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006bf4:	00090593          	mv	a1,s2
    80006bf8:	01848513          	addi	a0,s1,24
    80006bfc:	ffffb097          	auipc	ra,0xffffb
    80006c00:	a9c080e7          	jalr	-1380(ra) # 80001698 <sem_open>
    sem_open(&mutexHead, 1);
    80006c04:	00100593          	li	a1,1
    80006c08:	02848513          	addi	a0,s1,40
    80006c0c:	ffffb097          	auipc	ra,0xffffb
    80006c10:	a8c080e7          	jalr	-1396(ra) # 80001698 <sem_open>
    sem_open(&mutexTail, 1);
    80006c14:	00100593          	li	a1,1
    80006c18:	03048513          	addi	a0,s1,48
    80006c1c:	ffffb097          	auipc	ra,0xffffb
    80006c20:	a7c080e7          	jalr	-1412(ra) # 80001698 <sem_open>
}
    80006c24:	01813083          	ld	ra,24(sp)
    80006c28:	01013403          	ld	s0,16(sp)
    80006c2c:	00813483          	ld	s1,8(sp)
    80006c30:	00013903          	ld	s2,0(sp)
    80006c34:	02010113          	addi	sp,sp,32
    80006c38:	00008067          	ret

0000000080006c3c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006c3c:	fe010113          	addi	sp,sp,-32
    80006c40:	00113c23          	sd	ra,24(sp)
    80006c44:	00813823          	sd	s0,16(sp)
    80006c48:	00913423          	sd	s1,8(sp)
    80006c4c:	01213023          	sd	s2,0(sp)
    80006c50:	02010413          	addi	s0,sp,32
    80006c54:	00050493          	mv	s1,a0
    80006c58:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006c5c:	01853503          	ld	a0,24(a0)
    80006c60:	ffffb097          	auipc	ra,0xffffb
    80006c64:	a98080e7          	jalr	-1384(ra) # 800016f8 <sem_wait>

    sem_wait(mutexTail);
    80006c68:	0304b503          	ld	a0,48(s1)
    80006c6c:	ffffb097          	auipc	ra,0xffffb
    80006c70:	a8c080e7          	jalr	-1396(ra) # 800016f8 <sem_wait>
    buffer[tail] = val;
    80006c74:	0084b783          	ld	a5,8(s1)
    80006c78:	0144a703          	lw	a4,20(s1)
    80006c7c:	00271713          	slli	a4,a4,0x2
    80006c80:	00e787b3          	add	a5,a5,a4
    80006c84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006c88:	0144a783          	lw	a5,20(s1)
    80006c8c:	0017879b          	addiw	a5,a5,1
    80006c90:	0004a703          	lw	a4,0(s1)
    80006c94:	02e7e7bb          	remw	a5,a5,a4
    80006c98:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006c9c:	0304b503          	ld	a0,48(s1)
    80006ca0:	ffffb097          	auipc	ra,0xffffb
    80006ca4:	a80080e7          	jalr	-1408(ra) # 80001720 <sem_signal>

    sem_signal(itemAvailable);
    80006ca8:	0204b503          	ld	a0,32(s1)
    80006cac:	ffffb097          	auipc	ra,0xffffb
    80006cb0:	a74080e7          	jalr	-1420(ra) # 80001720 <sem_signal>

}
    80006cb4:	01813083          	ld	ra,24(sp)
    80006cb8:	01013403          	ld	s0,16(sp)
    80006cbc:	00813483          	ld	s1,8(sp)
    80006cc0:	00013903          	ld	s2,0(sp)
    80006cc4:	02010113          	addi	sp,sp,32
    80006cc8:	00008067          	ret

0000000080006ccc <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00113c23          	sd	ra,24(sp)
    80006cd4:	00813823          	sd	s0,16(sp)
    80006cd8:	00913423          	sd	s1,8(sp)
    80006cdc:	01213023          	sd	s2,0(sp)
    80006ce0:	02010413          	addi	s0,sp,32
    80006ce4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ce8:	02053503          	ld	a0,32(a0)
    80006cec:	ffffb097          	auipc	ra,0xffffb
    80006cf0:	a0c080e7          	jalr	-1524(ra) # 800016f8 <sem_wait>

    sem_wait(mutexHead);
    80006cf4:	0284b503          	ld	a0,40(s1)
    80006cf8:	ffffb097          	auipc	ra,0xffffb
    80006cfc:	a00080e7          	jalr	-1536(ra) # 800016f8 <sem_wait>

    int ret = buffer[head];
    80006d00:	0084b703          	ld	a4,8(s1)
    80006d04:	0104a783          	lw	a5,16(s1)
    80006d08:	00279693          	slli	a3,a5,0x2
    80006d0c:	00d70733          	add	a4,a4,a3
    80006d10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006d14:	0017879b          	addiw	a5,a5,1
    80006d18:	0004a703          	lw	a4,0(s1)
    80006d1c:	02e7e7bb          	remw	a5,a5,a4
    80006d20:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006d24:	0284b503          	ld	a0,40(s1)
    80006d28:	ffffb097          	auipc	ra,0xffffb
    80006d2c:	9f8080e7          	jalr	-1544(ra) # 80001720 <sem_signal>

    sem_signal(spaceAvailable);
    80006d30:	0184b503          	ld	a0,24(s1)
    80006d34:	ffffb097          	auipc	ra,0xffffb
    80006d38:	9ec080e7          	jalr	-1556(ra) # 80001720 <sem_signal>

    return ret;
}
    80006d3c:	00090513          	mv	a0,s2
    80006d40:	01813083          	ld	ra,24(sp)
    80006d44:	01013403          	ld	s0,16(sp)
    80006d48:	00813483          	ld	s1,8(sp)
    80006d4c:	00013903          	ld	s2,0(sp)
    80006d50:	02010113          	addi	sp,sp,32
    80006d54:	00008067          	ret

0000000080006d58 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006d58:	fe010113          	addi	sp,sp,-32
    80006d5c:	00113c23          	sd	ra,24(sp)
    80006d60:	00813823          	sd	s0,16(sp)
    80006d64:	00913423          	sd	s1,8(sp)
    80006d68:	01213023          	sd	s2,0(sp)
    80006d6c:	02010413          	addi	s0,sp,32
    80006d70:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006d74:	02853503          	ld	a0,40(a0)
    80006d78:	ffffb097          	auipc	ra,0xffffb
    80006d7c:	980080e7          	jalr	-1664(ra) # 800016f8 <sem_wait>
    sem_wait(mutexTail);
    80006d80:	0304b503          	ld	a0,48(s1)
    80006d84:	ffffb097          	auipc	ra,0xffffb
    80006d88:	974080e7          	jalr	-1676(ra) # 800016f8 <sem_wait>

    if (tail >= head) {
    80006d8c:	0144a783          	lw	a5,20(s1)
    80006d90:	0104a903          	lw	s2,16(s1)
    80006d94:	0327ce63          	blt	a5,s2,80006dd0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006d98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006d9c:	0304b503          	ld	a0,48(s1)
    80006da0:	ffffb097          	auipc	ra,0xffffb
    80006da4:	980080e7          	jalr	-1664(ra) # 80001720 <sem_signal>
    sem_signal(mutexHead);
    80006da8:	0284b503          	ld	a0,40(s1)
    80006dac:	ffffb097          	auipc	ra,0xffffb
    80006db0:	974080e7          	jalr	-1676(ra) # 80001720 <sem_signal>

    return ret;
}
    80006db4:	00090513          	mv	a0,s2
    80006db8:	01813083          	ld	ra,24(sp)
    80006dbc:	01013403          	ld	s0,16(sp)
    80006dc0:	00813483          	ld	s1,8(sp)
    80006dc4:	00013903          	ld	s2,0(sp)
    80006dc8:	02010113          	addi	sp,sp,32
    80006dcc:	00008067          	ret
        ret = cap - head + tail;
    80006dd0:	0004a703          	lw	a4,0(s1)
    80006dd4:	4127093b          	subw	s2,a4,s2
    80006dd8:	00f9093b          	addw	s2,s2,a5
    80006ddc:	fc1ff06f          	j	80006d9c <_ZN6Buffer6getCntEv+0x44>

0000000080006de0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006de0:	fe010113          	addi	sp,sp,-32
    80006de4:	00113c23          	sd	ra,24(sp)
    80006de8:	00813823          	sd	s0,16(sp)
    80006dec:	00913423          	sd	s1,8(sp)
    80006df0:	02010413          	addi	s0,sp,32
    80006df4:	00050493          	mv	s1,a0
    putc('\n');
    80006df8:	00a00513          	li	a0,10
    80006dfc:	ffffb097          	auipc	ra,0xffffb
    80006e00:	9a8080e7          	jalr	-1624(ra) # 800017a4 <putc>
    printString("Buffer deleted!\n");
    80006e04:	00002517          	auipc	a0,0x2
    80006e08:	78450513          	addi	a0,a0,1924 # 80009588 <CONSOLE_STATUS+0x578>
    80006e0c:	fffff097          	auipc	ra,0xfffff
    80006e10:	fb8080e7          	jalr	-72(ra) # 80005dc4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006e14:	00048513          	mv	a0,s1
    80006e18:	00000097          	auipc	ra,0x0
    80006e1c:	f40080e7          	jalr	-192(ra) # 80006d58 <_ZN6Buffer6getCntEv>
    80006e20:	02a05c63          	blez	a0,80006e58 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006e24:	0084b783          	ld	a5,8(s1)
    80006e28:	0104a703          	lw	a4,16(s1)
    80006e2c:	00271713          	slli	a4,a4,0x2
    80006e30:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006e34:	0007c503          	lbu	a0,0(a5)
    80006e38:	ffffb097          	auipc	ra,0xffffb
    80006e3c:	96c080e7          	jalr	-1684(ra) # 800017a4 <putc>
        head = (head + 1) % cap;
    80006e40:	0104a783          	lw	a5,16(s1)
    80006e44:	0017879b          	addiw	a5,a5,1
    80006e48:	0004a703          	lw	a4,0(s1)
    80006e4c:	02e7e7bb          	remw	a5,a5,a4
    80006e50:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006e54:	fc1ff06f          	j	80006e14 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006e58:	02100513          	li	a0,33
    80006e5c:	ffffb097          	auipc	ra,0xffffb
    80006e60:	948080e7          	jalr	-1720(ra) # 800017a4 <putc>
    putc('\n');
    80006e64:	00a00513          	li	a0,10
    80006e68:	ffffb097          	auipc	ra,0xffffb
    80006e6c:	93c080e7          	jalr	-1732(ra) # 800017a4 <putc>
    mem_free(buffer);
    80006e70:	0084b503          	ld	a0,8(s1)
    80006e74:	ffffa097          	auipc	ra,0xffffa
    80006e78:	70c080e7          	jalr	1804(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    80006e7c:	0204b503          	ld	a0,32(s1)
    80006e80:	ffffb097          	auipc	ra,0xffffb
    80006e84:	850080e7          	jalr	-1968(ra) # 800016d0 <sem_close>
    sem_close(spaceAvailable);
    80006e88:	0184b503          	ld	a0,24(s1)
    80006e8c:	ffffb097          	auipc	ra,0xffffb
    80006e90:	844080e7          	jalr	-1980(ra) # 800016d0 <sem_close>
    sem_close(mutexTail);
    80006e94:	0304b503          	ld	a0,48(s1)
    80006e98:	ffffb097          	auipc	ra,0xffffb
    80006e9c:	838080e7          	jalr	-1992(ra) # 800016d0 <sem_close>
    sem_close(mutexHead);
    80006ea0:	0284b503          	ld	a0,40(s1)
    80006ea4:	ffffb097          	auipc	ra,0xffffb
    80006ea8:	82c080e7          	jalr	-2004(ra) # 800016d0 <sem_close>
}
    80006eac:	01813083          	ld	ra,24(sp)
    80006eb0:	01013403          	ld	s0,16(sp)
    80006eb4:	00813483          	ld	s1,8(sp)
    80006eb8:	02010113          	addi	sp,sp,32
    80006ebc:	00008067          	ret

0000000080006ec0 <start>:
    80006ec0:	ff010113          	addi	sp,sp,-16
    80006ec4:	00813423          	sd	s0,8(sp)
    80006ec8:	01010413          	addi	s0,sp,16
    80006ecc:	300027f3          	csrr	a5,mstatus
    80006ed0:	ffffe737          	lui	a4,0xffffe
    80006ed4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19bf>
    80006ed8:	00e7f7b3          	and	a5,a5,a4
    80006edc:	00001737          	lui	a4,0x1
    80006ee0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006ee4:	00e7e7b3          	or	a5,a5,a4
    80006ee8:	30079073          	csrw	mstatus,a5
    80006eec:	00000797          	auipc	a5,0x0
    80006ef0:	16078793          	addi	a5,a5,352 # 8000704c <system_main>
    80006ef4:	34179073          	csrw	mepc,a5
    80006ef8:	00000793          	li	a5,0
    80006efc:	18079073          	csrw	satp,a5
    80006f00:	000107b7          	lui	a5,0x10
    80006f04:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006f08:	30279073          	csrw	medeleg,a5
    80006f0c:	30379073          	csrw	mideleg,a5
    80006f10:	104027f3          	csrr	a5,sie
    80006f14:	2227e793          	ori	a5,a5,546
    80006f18:	10479073          	csrw	sie,a5
    80006f1c:	fff00793          	li	a5,-1
    80006f20:	00a7d793          	srli	a5,a5,0xa
    80006f24:	3b079073          	csrw	pmpaddr0,a5
    80006f28:	00f00793          	li	a5,15
    80006f2c:	3a079073          	csrw	pmpcfg0,a5
    80006f30:	f14027f3          	csrr	a5,mhartid
    80006f34:	0200c737          	lui	a4,0x200c
    80006f38:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006f3c:	0007869b          	sext.w	a3,a5
    80006f40:	00269713          	slli	a4,a3,0x2
    80006f44:	000f4637          	lui	a2,0xf4
    80006f48:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006f4c:	00d70733          	add	a4,a4,a3
    80006f50:	0037979b          	slliw	a5,a5,0x3
    80006f54:	020046b7          	lui	a3,0x2004
    80006f58:	00d787b3          	add	a5,a5,a3
    80006f5c:	00c585b3          	add	a1,a1,a2
    80006f60:	00371693          	slli	a3,a4,0x3
    80006f64:	00005717          	auipc	a4,0x5
    80006f68:	c7c70713          	addi	a4,a4,-900 # 8000bbe0 <timer_scratch>
    80006f6c:	00b7b023          	sd	a1,0(a5)
    80006f70:	00d70733          	add	a4,a4,a3
    80006f74:	00f73c23          	sd	a5,24(a4)
    80006f78:	02c73023          	sd	a2,32(a4)
    80006f7c:	34071073          	csrw	mscratch,a4
    80006f80:	00000797          	auipc	a5,0x0
    80006f84:	6e078793          	addi	a5,a5,1760 # 80007660 <timervec>
    80006f88:	30579073          	csrw	mtvec,a5
    80006f8c:	300027f3          	csrr	a5,mstatus
    80006f90:	0087e793          	ori	a5,a5,8
    80006f94:	30079073          	csrw	mstatus,a5
    80006f98:	304027f3          	csrr	a5,mie
    80006f9c:	0807e793          	ori	a5,a5,128
    80006fa0:	30479073          	csrw	mie,a5
    80006fa4:	f14027f3          	csrr	a5,mhartid
    80006fa8:	0007879b          	sext.w	a5,a5
    80006fac:	00078213          	mv	tp,a5
    80006fb0:	30200073          	mret
    80006fb4:	00813403          	ld	s0,8(sp)
    80006fb8:	01010113          	addi	sp,sp,16
    80006fbc:	00008067          	ret

0000000080006fc0 <timerinit>:
    80006fc0:	ff010113          	addi	sp,sp,-16
    80006fc4:	00813423          	sd	s0,8(sp)
    80006fc8:	01010413          	addi	s0,sp,16
    80006fcc:	f14027f3          	csrr	a5,mhartid
    80006fd0:	0200c737          	lui	a4,0x200c
    80006fd4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006fd8:	0007869b          	sext.w	a3,a5
    80006fdc:	00269713          	slli	a4,a3,0x2
    80006fe0:	000f4637          	lui	a2,0xf4
    80006fe4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006fe8:	00d70733          	add	a4,a4,a3
    80006fec:	0037979b          	slliw	a5,a5,0x3
    80006ff0:	020046b7          	lui	a3,0x2004
    80006ff4:	00d787b3          	add	a5,a5,a3
    80006ff8:	00c585b3          	add	a1,a1,a2
    80006ffc:	00371693          	slli	a3,a4,0x3
    80007000:	00005717          	auipc	a4,0x5
    80007004:	be070713          	addi	a4,a4,-1056 # 8000bbe0 <timer_scratch>
    80007008:	00b7b023          	sd	a1,0(a5)
    8000700c:	00d70733          	add	a4,a4,a3
    80007010:	00f73c23          	sd	a5,24(a4)
    80007014:	02c73023          	sd	a2,32(a4)
    80007018:	34071073          	csrw	mscratch,a4
    8000701c:	00000797          	auipc	a5,0x0
    80007020:	64478793          	addi	a5,a5,1604 # 80007660 <timervec>
    80007024:	30579073          	csrw	mtvec,a5
    80007028:	300027f3          	csrr	a5,mstatus
    8000702c:	0087e793          	ori	a5,a5,8
    80007030:	30079073          	csrw	mstatus,a5
    80007034:	304027f3          	csrr	a5,mie
    80007038:	0807e793          	ori	a5,a5,128
    8000703c:	30479073          	csrw	mie,a5
    80007040:	00813403          	ld	s0,8(sp)
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00008067          	ret

000000008000704c <system_main>:
    8000704c:	fe010113          	addi	sp,sp,-32
    80007050:	00813823          	sd	s0,16(sp)
    80007054:	00913423          	sd	s1,8(sp)
    80007058:	00113c23          	sd	ra,24(sp)
    8000705c:	02010413          	addi	s0,sp,32
    80007060:	00000097          	auipc	ra,0x0
    80007064:	0c4080e7          	jalr	196(ra) # 80007124 <cpuid>
    80007068:	00005497          	auipc	s1,0x5
    8000706c:	88848493          	addi	s1,s1,-1912 # 8000b8f0 <started>
    80007070:	02050263          	beqz	a0,80007094 <system_main+0x48>
    80007074:	0004a783          	lw	a5,0(s1)
    80007078:	0007879b          	sext.w	a5,a5
    8000707c:	fe078ce3          	beqz	a5,80007074 <system_main+0x28>
    80007080:	0ff0000f          	fence
    80007084:	00002517          	auipc	a0,0x2
    80007088:	55c50513          	addi	a0,a0,1372 # 800095e0 <CONSOLE_STATUS+0x5d0>
    8000708c:	00001097          	auipc	ra,0x1
    80007090:	a70080e7          	jalr	-1424(ra) # 80007afc <panic>
    80007094:	00001097          	auipc	ra,0x1
    80007098:	9c4080e7          	jalr	-1596(ra) # 80007a58 <consoleinit>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	150080e7          	jalr	336(ra) # 800081ec <printfinit>
    800070a4:	00002517          	auipc	a0,0x2
    800070a8:	3ac50513          	addi	a0,a0,940 # 80009450 <CONSOLE_STATUS+0x440>
    800070ac:	00001097          	auipc	ra,0x1
    800070b0:	aac080e7          	jalr	-1364(ra) # 80007b58 <__printf>
    800070b4:	00002517          	auipc	a0,0x2
    800070b8:	4fc50513          	addi	a0,a0,1276 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800070bc:	00001097          	auipc	ra,0x1
    800070c0:	a9c080e7          	jalr	-1380(ra) # 80007b58 <__printf>
    800070c4:	00002517          	auipc	a0,0x2
    800070c8:	38c50513          	addi	a0,a0,908 # 80009450 <CONSOLE_STATUS+0x440>
    800070cc:	00001097          	auipc	ra,0x1
    800070d0:	a8c080e7          	jalr	-1396(ra) # 80007b58 <__printf>
    800070d4:	00001097          	auipc	ra,0x1
    800070d8:	4a4080e7          	jalr	1188(ra) # 80008578 <kinit>
    800070dc:	00000097          	auipc	ra,0x0
    800070e0:	148080e7          	jalr	328(ra) # 80007224 <trapinit>
    800070e4:	00000097          	auipc	ra,0x0
    800070e8:	16c080e7          	jalr	364(ra) # 80007250 <trapinithart>
    800070ec:	00000097          	auipc	ra,0x0
    800070f0:	5b4080e7          	jalr	1460(ra) # 800076a0 <plicinit>
    800070f4:	00000097          	auipc	ra,0x0
    800070f8:	5d4080e7          	jalr	1492(ra) # 800076c8 <plicinithart>
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	078080e7          	jalr	120(ra) # 80007174 <userinit>
    80007104:	0ff0000f          	fence
    80007108:	00100793          	li	a5,1
    8000710c:	00002517          	auipc	a0,0x2
    80007110:	4bc50513          	addi	a0,a0,1212 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80007114:	00f4a023          	sw	a5,0(s1)
    80007118:	00001097          	auipc	ra,0x1
    8000711c:	a40080e7          	jalr	-1472(ra) # 80007b58 <__printf>
    80007120:	0000006f          	j	80007120 <system_main+0xd4>

0000000080007124 <cpuid>:
    80007124:	ff010113          	addi	sp,sp,-16
    80007128:	00813423          	sd	s0,8(sp)
    8000712c:	01010413          	addi	s0,sp,16
    80007130:	00020513          	mv	a0,tp
    80007134:	00813403          	ld	s0,8(sp)
    80007138:	0005051b          	sext.w	a0,a0
    8000713c:	01010113          	addi	sp,sp,16
    80007140:	00008067          	ret

0000000080007144 <mycpu>:
    80007144:	ff010113          	addi	sp,sp,-16
    80007148:	00813423          	sd	s0,8(sp)
    8000714c:	01010413          	addi	s0,sp,16
    80007150:	00020793          	mv	a5,tp
    80007154:	00813403          	ld	s0,8(sp)
    80007158:	0007879b          	sext.w	a5,a5
    8000715c:	00779793          	slli	a5,a5,0x7
    80007160:	00006517          	auipc	a0,0x6
    80007164:	ab050513          	addi	a0,a0,-1360 # 8000cc10 <cpus>
    80007168:	00f50533          	add	a0,a0,a5
    8000716c:	01010113          	addi	sp,sp,16
    80007170:	00008067          	ret

0000000080007174 <userinit>:
    80007174:	ff010113          	addi	sp,sp,-16
    80007178:	00813423          	sd	s0,8(sp)
    8000717c:	01010413          	addi	s0,sp,16
    80007180:	00813403          	ld	s0,8(sp)
    80007184:	01010113          	addi	sp,sp,16
    80007188:	ffffa317          	auipc	t1,0xffffa
    8000718c:	6ec30067          	jr	1772(t1) # 80001874 <main>

0000000080007190 <either_copyout>:
    80007190:	ff010113          	addi	sp,sp,-16
    80007194:	00813023          	sd	s0,0(sp)
    80007198:	00113423          	sd	ra,8(sp)
    8000719c:	01010413          	addi	s0,sp,16
    800071a0:	02051663          	bnez	a0,800071cc <either_copyout+0x3c>
    800071a4:	00058513          	mv	a0,a1
    800071a8:	00060593          	mv	a1,a2
    800071ac:	0006861b          	sext.w	a2,a3
    800071b0:	00002097          	auipc	ra,0x2
    800071b4:	c54080e7          	jalr	-940(ra) # 80008e04 <__memmove>
    800071b8:	00813083          	ld	ra,8(sp)
    800071bc:	00013403          	ld	s0,0(sp)
    800071c0:	00000513          	li	a0,0
    800071c4:	01010113          	addi	sp,sp,16
    800071c8:	00008067          	ret
    800071cc:	00002517          	auipc	a0,0x2
    800071d0:	43c50513          	addi	a0,a0,1084 # 80009608 <CONSOLE_STATUS+0x5f8>
    800071d4:	00001097          	auipc	ra,0x1
    800071d8:	928080e7          	jalr	-1752(ra) # 80007afc <panic>

00000000800071dc <either_copyin>:
    800071dc:	ff010113          	addi	sp,sp,-16
    800071e0:	00813023          	sd	s0,0(sp)
    800071e4:	00113423          	sd	ra,8(sp)
    800071e8:	01010413          	addi	s0,sp,16
    800071ec:	02059463          	bnez	a1,80007214 <either_copyin+0x38>
    800071f0:	00060593          	mv	a1,a2
    800071f4:	0006861b          	sext.w	a2,a3
    800071f8:	00002097          	auipc	ra,0x2
    800071fc:	c0c080e7          	jalr	-1012(ra) # 80008e04 <__memmove>
    80007200:	00813083          	ld	ra,8(sp)
    80007204:	00013403          	ld	s0,0(sp)
    80007208:	00000513          	li	a0,0
    8000720c:	01010113          	addi	sp,sp,16
    80007210:	00008067          	ret
    80007214:	00002517          	auipc	a0,0x2
    80007218:	41c50513          	addi	a0,a0,1052 # 80009630 <CONSOLE_STATUS+0x620>
    8000721c:	00001097          	auipc	ra,0x1
    80007220:	8e0080e7          	jalr	-1824(ra) # 80007afc <panic>

0000000080007224 <trapinit>:
    80007224:	ff010113          	addi	sp,sp,-16
    80007228:	00813423          	sd	s0,8(sp)
    8000722c:	01010413          	addi	s0,sp,16
    80007230:	00813403          	ld	s0,8(sp)
    80007234:	00002597          	auipc	a1,0x2
    80007238:	42458593          	addi	a1,a1,1060 # 80009658 <CONSOLE_STATUS+0x648>
    8000723c:	00006517          	auipc	a0,0x6
    80007240:	a5450513          	addi	a0,a0,-1452 # 8000cc90 <tickslock>
    80007244:	01010113          	addi	sp,sp,16
    80007248:	00001317          	auipc	t1,0x1
    8000724c:	5c030067          	jr	1472(t1) # 80008808 <initlock>

0000000080007250 <trapinithart>:
    80007250:	ff010113          	addi	sp,sp,-16
    80007254:	00813423          	sd	s0,8(sp)
    80007258:	01010413          	addi	s0,sp,16
    8000725c:	00000797          	auipc	a5,0x0
    80007260:	2f478793          	addi	a5,a5,756 # 80007550 <kernelvec>
    80007264:	10579073          	csrw	stvec,a5
    80007268:	00813403          	ld	s0,8(sp)
    8000726c:	01010113          	addi	sp,sp,16
    80007270:	00008067          	ret

0000000080007274 <usertrap>:
    80007274:	ff010113          	addi	sp,sp,-16
    80007278:	00813423          	sd	s0,8(sp)
    8000727c:	01010413          	addi	s0,sp,16
    80007280:	00813403          	ld	s0,8(sp)
    80007284:	01010113          	addi	sp,sp,16
    80007288:	00008067          	ret

000000008000728c <usertrapret>:
    8000728c:	ff010113          	addi	sp,sp,-16
    80007290:	00813423          	sd	s0,8(sp)
    80007294:	01010413          	addi	s0,sp,16
    80007298:	00813403          	ld	s0,8(sp)
    8000729c:	01010113          	addi	sp,sp,16
    800072a0:	00008067          	ret

00000000800072a4 <kerneltrap>:
    800072a4:	fe010113          	addi	sp,sp,-32
    800072a8:	00813823          	sd	s0,16(sp)
    800072ac:	00113c23          	sd	ra,24(sp)
    800072b0:	00913423          	sd	s1,8(sp)
    800072b4:	02010413          	addi	s0,sp,32
    800072b8:	142025f3          	csrr	a1,scause
    800072bc:	100027f3          	csrr	a5,sstatus
    800072c0:	0027f793          	andi	a5,a5,2
    800072c4:	10079c63          	bnez	a5,800073dc <kerneltrap+0x138>
    800072c8:	142027f3          	csrr	a5,scause
    800072cc:	0207ce63          	bltz	a5,80007308 <kerneltrap+0x64>
    800072d0:	00002517          	auipc	a0,0x2
    800072d4:	3d050513          	addi	a0,a0,976 # 800096a0 <CONSOLE_STATUS+0x690>
    800072d8:	00001097          	auipc	ra,0x1
    800072dc:	880080e7          	jalr	-1920(ra) # 80007b58 <__printf>
    800072e0:	141025f3          	csrr	a1,sepc
    800072e4:	14302673          	csrr	a2,stval
    800072e8:	00002517          	auipc	a0,0x2
    800072ec:	3c850513          	addi	a0,a0,968 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800072f0:	00001097          	auipc	ra,0x1
    800072f4:	868080e7          	jalr	-1944(ra) # 80007b58 <__printf>
    800072f8:	00002517          	auipc	a0,0x2
    800072fc:	3d050513          	addi	a0,a0,976 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80007300:	00000097          	auipc	ra,0x0
    80007304:	7fc080e7          	jalr	2044(ra) # 80007afc <panic>
    80007308:	0ff7f713          	andi	a4,a5,255
    8000730c:	00900693          	li	a3,9
    80007310:	04d70063          	beq	a4,a3,80007350 <kerneltrap+0xac>
    80007314:	fff00713          	li	a4,-1
    80007318:	03f71713          	slli	a4,a4,0x3f
    8000731c:	00170713          	addi	a4,a4,1
    80007320:	fae798e3          	bne	a5,a4,800072d0 <kerneltrap+0x2c>
    80007324:	00000097          	auipc	ra,0x0
    80007328:	e00080e7          	jalr	-512(ra) # 80007124 <cpuid>
    8000732c:	06050663          	beqz	a0,80007398 <kerneltrap+0xf4>
    80007330:	144027f3          	csrr	a5,sip
    80007334:	ffd7f793          	andi	a5,a5,-3
    80007338:	14479073          	csrw	sip,a5
    8000733c:	01813083          	ld	ra,24(sp)
    80007340:	01013403          	ld	s0,16(sp)
    80007344:	00813483          	ld	s1,8(sp)
    80007348:	02010113          	addi	sp,sp,32
    8000734c:	00008067          	ret
    80007350:	00000097          	auipc	ra,0x0
    80007354:	3c4080e7          	jalr	964(ra) # 80007714 <plic_claim>
    80007358:	00a00793          	li	a5,10
    8000735c:	00050493          	mv	s1,a0
    80007360:	06f50863          	beq	a0,a5,800073d0 <kerneltrap+0x12c>
    80007364:	fc050ce3          	beqz	a0,8000733c <kerneltrap+0x98>
    80007368:	00050593          	mv	a1,a0
    8000736c:	00002517          	auipc	a0,0x2
    80007370:	31450513          	addi	a0,a0,788 # 80009680 <CONSOLE_STATUS+0x670>
    80007374:	00000097          	auipc	ra,0x0
    80007378:	7e4080e7          	jalr	2020(ra) # 80007b58 <__printf>
    8000737c:	01013403          	ld	s0,16(sp)
    80007380:	01813083          	ld	ra,24(sp)
    80007384:	00048513          	mv	a0,s1
    80007388:	00813483          	ld	s1,8(sp)
    8000738c:	02010113          	addi	sp,sp,32
    80007390:	00000317          	auipc	t1,0x0
    80007394:	3bc30067          	jr	956(t1) # 8000774c <plic_complete>
    80007398:	00006517          	auipc	a0,0x6
    8000739c:	8f850513          	addi	a0,a0,-1800 # 8000cc90 <tickslock>
    800073a0:	00001097          	auipc	ra,0x1
    800073a4:	48c080e7          	jalr	1164(ra) # 8000882c <acquire>
    800073a8:	00004717          	auipc	a4,0x4
    800073ac:	54c70713          	addi	a4,a4,1356 # 8000b8f4 <ticks>
    800073b0:	00072783          	lw	a5,0(a4)
    800073b4:	00006517          	auipc	a0,0x6
    800073b8:	8dc50513          	addi	a0,a0,-1828 # 8000cc90 <tickslock>
    800073bc:	0017879b          	addiw	a5,a5,1
    800073c0:	00f72023          	sw	a5,0(a4)
    800073c4:	00001097          	auipc	ra,0x1
    800073c8:	534080e7          	jalr	1332(ra) # 800088f8 <release>
    800073cc:	f65ff06f          	j	80007330 <kerneltrap+0x8c>
    800073d0:	00001097          	auipc	ra,0x1
    800073d4:	090080e7          	jalr	144(ra) # 80008460 <uartintr>
    800073d8:	fa5ff06f          	j	8000737c <kerneltrap+0xd8>
    800073dc:	00002517          	auipc	a0,0x2
    800073e0:	28450513          	addi	a0,a0,644 # 80009660 <CONSOLE_STATUS+0x650>
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	718080e7          	jalr	1816(ra) # 80007afc <panic>

00000000800073ec <clockintr>:
    800073ec:	fe010113          	addi	sp,sp,-32
    800073f0:	00813823          	sd	s0,16(sp)
    800073f4:	00913423          	sd	s1,8(sp)
    800073f8:	00113c23          	sd	ra,24(sp)
    800073fc:	02010413          	addi	s0,sp,32
    80007400:	00006497          	auipc	s1,0x6
    80007404:	89048493          	addi	s1,s1,-1904 # 8000cc90 <tickslock>
    80007408:	00048513          	mv	a0,s1
    8000740c:	00001097          	auipc	ra,0x1
    80007410:	420080e7          	jalr	1056(ra) # 8000882c <acquire>
    80007414:	00004717          	auipc	a4,0x4
    80007418:	4e070713          	addi	a4,a4,1248 # 8000b8f4 <ticks>
    8000741c:	00072783          	lw	a5,0(a4)
    80007420:	01013403          	ld	s0,16(sp)
    80007424:	01813083          	ld	ra,24(sp)
    80007428:	00048513          	mv	a0,s1
    8000742c:	0017879b          	addiw	a5,a5,1
    80007430:	00813483          	ld	s1,8(sp)
    80007434:	00f72023          	sw	a5,0(a4)
    80007438:	02010113          	addi	sp,sp,32
    8000743c:	00001317          	auipc	t1,0x1
    80007440:	4bc30067          	jr	1212(t1) # 800088f8 <release>

0000000080007444 <devintr>:
    80007444:	142027f3          	csrr	a5,scause
    80007448:	00000513          	li	a0,0
    8000744c:	0007c463          	bltz	a5,80007454 <devintr+0x10>
    80007450:	00008067          	ret
    80007454:	fe010113          	addi	sp,sp,-32
    80007458:	00813823          	sd	s0,16(sp)
    8000745c:	00113c23          	sd	ra,24(sp)
    80007460:	00913423          	sd	s1,8(sp)
    80007464:	02010413          	addi	s0,sp,32
    80007468:	0ff7f713          	andi	a4,a5,255
    8000746c:	00900693          	li	a3,9
    80007470:	04d70c63          	beq	a4,a3,800074c8 <devintr+0x84>
    80007474:	fff00713          	li	a4,-1
    80007478:	03f71713          	slli	a4,a4,0x3f
    8000747c:	00170713          	addi	a4,a4,1
    80007480:	00e78c63          	beq	a5,a4,80007498 <devintr+0x54>
    80007484:	01813083          	ld	ra,24(sp)
    80007488:	01013403          	ld	s0,16(sp)
    8000748c:	00813483          	ld	s1,8(sp)
    80007490:	02010113          	addi	sp,sp,32
    80007494:	00008067          	ret
    80007498:	00000097          	auipc	ra,0x0
    8000749c:	c8c080e7          	jalr	-884(ra) # 80007124 <cpuid>
    800074a0:	06050663          	beqz	a0,8000750c <devintr+0xc8>
    800074a4:	144027f3          	csrr	a5,sip
    800074a8:	ffd7f793          	andi	a5,a5,-3
    800074ac:	14479073          	csrw	sip,a5
    800074b0:	01813083          	ld	ra,24(sp)
    800074b4:	01013403          	ld	s0,16(sp)
    800074b8:	00813483          	ld	s1,8(sp)
    800074bc:	00200513          	li	a0,2
    800074c0:	02010113          	addi	sp,sp,32
    800074c4:	00008067          	ret
    800074c8:	00000097          	auipc	ra,0x0
    800074cc:	24c080e7          	jalr	588(ra) # 80007714 <plic_claim>
    800074d0:	00a00793          	li	a5,10
    800074d4:	00050493          	mv	s1,a0
    800074d8:	06f50663          	beq	a0,a5,80007544 <devintr+0x100>
    800074dc:	00100513          	li	a0,1
    800074e0:	fa0482e3          	beqz	s1,80007484 <devintr+0x40>
    800074e4:	00048593          	mv	a1,s1
    800074e8:	00002517          	auipc	a0,0x2
    800074ec:	19850513          	addi	a0,a0,408 # 80009680 <CONSOLE_STATUS+0x670>
    800074f0:	00000097          	auipc	ra,0x0
    800074f4:	668080e7          	jalr	1640(ra) # 80007b58 <__printf>
    800074f8:	00048513          	mv	a0,s1
    800074fc:	00000097          	auipc	ra,0x0
    80007500:	250080e7          	jalr	592(ra) # 8000774c <plic_complete>
    80007504:	00100513          	li	a0,1
    80007508:	f7dff06f          	j	80007484 <devintr+0x40>
    8000750c:	00005517          	auipc	a0,0x5
    80007510:	78450513          	addi	a0,a0,1924 # 8000cc90 <tickslock>
    80007514:	00001097          	auipc	ra,0x1
    80007518:	318080e7          	jalr	792(ra) # 8000882c <acquire>
    8000751c:	00004717          	auipc	a4,0x4
    80007520:	3d870713          	addi	a4,a4,984 # 8000b8f4 <ticks>
    80007524:	00072783          	lw	a5,0(a4)
    80007528:	00005517          	auipc	a0,0x5
    8000752c:	76850513          	addi	a0,a0,1896 # 8000cc90 <tickslock>
    80007530:	0017879b          	addiw	a5,a5,1
    80007534:	00f72023          	sw	a5,0(a4)
    80007538:	00001097          	auipc	ra,0x1
    8000753c:	3c0080e7          	jalr	960(ra) # 800088f8 <release>
    80007540:	f65ff06f          	j	800074a4 <devintr+0x60>
    80007544:	00001097          	auipc	ra,0x1
    80007548:	f1c080e7          	jalr	-228(ra) # 80008460 <uartintr>
    8000754c:	fadff06f          	j	800074f8 <devintr+0xb4>

0000000080007550 <kernelvec>:
    80007550:	f0010113          	addi	sp,sp,-256
    80007554:	00113023          	sd	ra,0(sp)
    80007558:	00213423          	sd	sp,8(sp)
    8000755c:	00313823          	sd	gp,16(sp)
    80007560:	00413c23          	sd	tp,24(sp)
    80007564:	02513023          	sd	t0,32(sp)
    80007568:	02613423          	sd	t1,40(sp)
    8000756c:	02713823          	sd	t2,48(sp)
    80007570:	02813c23          	sd	s0,56(sp)
    80007574:	04913023          	sd	s1,64(sp)
    80007578:	04a13423          	sd	a0,72(sp)
    8000757c:	04b13823          	sd	a1,80(sp)
    80007580:	04c13c23          	sd	a2,88(sp)
    80007584:	06d13023          	sd	a3,96(sp)
    80007588:	06e13423          	sd	a4,104(sp)
    8000758c:	06f13823          	sd	a5,112(sp)
    80007590:	07013c23          	sd	a6,120(sp)
    80007594:	09113023          	sd	a7,128(sp)
    80007598:	09213423          	sd	s2,136(sp)
    8000759c:	09313823          	sd	s3,144(sp)
    800075a0:	09413c23          	sd	s4,152(sp)
    800075a4:	0b513023          	sd	s5,160(sp)
    800075a8:	0b613423          	sd	s6,168(sp)
    800075ac:	0b713823          	sd	s7,176(sp)
    800075b0:	0b813c23          	sd	s8,184(sp)
    800075b4:	0d913023          	sd	s9,192(sp)
    800075b8:	0da13423          	sd	s10,200(sp)
    800075bc:	0db13823          	sd	s11,208(sp)
    800075c0:	0dc13c23          	sd	t3,216(sp)
    800075c4:	0fd13023          	sd	t4,224(sp)
    800075c8:	0fe13423          	sd	t5,232(sp)
    800075cc:	0ff13823          	sd	t6,240(sp)
    800075d0:	cd5ff0ef          	jal	ra,800072a4 <kerneltrap>
    800075d4:	00013083          	ld	ra,0(sp)
    800075d8:	00813103          	ld	sp,8(sp)
    800075dc:	01013183          	ld	gp,16(sp)
    800075e0:	02013283          	ld	t0,32(sp)
    800075e4:	02813303          	ld	t1,40(sp)
    800075e8:	03013383          	ld	t2,48(sp)
    800075ec:	03813403          	ld	s0,56(sp)
    800075f0:	04013483          	ld	s1,64(sp)
    800075f4:	04813503          	ld	a0,72(sp)
    800075f8:	05013583          	ld	a1,80(sp)
    800075fc:	05813603          	ld	a2,88(sp)
    80007600:	06013683          	ld	a3,96(sp)
    80007604:	06813703          	ld	a4,104(sp)
    80007608:	07013783          	ld	a5,112(sp)
    8000760c:	07813803          	ld	a6,120(sp)
    80007610:	08013883          	ld	a7,128(sp)
    80007614:	08813903          	ld	s2,136(sp)
    80007618:	09013983          	ld	s3,144(sp)
    8000761c:	09813a03          	ld	s4,152(sp)
    80007620:	0a013a83          	ld	s5,160(sp)
    80007624:	0a813b03          	ld	s6,168(sp)
    80007628:	0b013b83          	ld	s7,176(sp)
    8000762c:	0b813c03          	ld	s8,184(sp)
    80007630:	0c013c83          	ld	s9,192(sp)
    80007634:	0c813d03          	ld	s10,200(sp)
    80007638:	0d013d83          	ld	s11,208(sp)
    8000763c:	0d813e03          	ld	t3,216(sp)
    80007640:	0e013e83          	ld	t4,224(sp)
    80007644:	0e813f03          	ld	t5,232(sp)
    80007648:	0f013f83          	ld	t6,240(sp)
    8000764c:	10010113          	addi	sp,sp,256
    80007650:	10200073          	sret
    80007654:	00000013          	nop
    80007658:	00000013          	nop
    8000765c:	00000013          	nop

0000000080007660 <timervec>:
    80007660:	34051573          	csrrw	a0,mscratch,a0
    80007664:	00b53023          	sd	a1,0(a0)
    80007668:	00c53423          	sd	a2,8(a0)
    8000766c:	00d53823          	sd	a3,16(a0)
    80007670:	01853583          	ld	a1,24(a0)
    80007674:	02053603          	ld	a2,32(a0)
    80007678:	0005b683          	ld	a3,0(a1)
    8000767c:	00c686b3          	add	a3,a3,a2
    80007680:	00d5b023          	sd	a3,0(a1)
    80007684:	00200593          	li	a1,2
    80007688:	14459073          	csrw	sip,a1
    8000768c:	01053683          	ld	a3,16(a0)
    80007690:	00853603          	ld	a2,8(a0)
    80007694:	00053583          	ld	a1,0(a0)
    80007698:	34051573          	csrrw	a0,mscratch,a0
    8000769c:	30200073          	mret

00000000800076a0 <plicinit>:
    800076a0:	ff010113          	addi	sp,sp,-16
    800076a4:	00813423          	sd	s0,8(sp)
    800076a8:	01010413          	addi	s0,sp,16
    800076ac:	00813403          	ld	s0,8(sp)
    800076b0:	0c0007b7          	lui	a5,0xc000
    800076b4:	00100713          	li	a4,1
    800076b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800076bc:	00e7a223          	sw	a4,4(a5)
    800076c0:	01010113          	addi	sp,sp,16
    800076c4:	00008067          	ret

00000000800076c8 <plicinithart>:
    800076c8:	ff010113          	addi	sp,sp,-16
    800076cc:	00813023          	sd	s0,0(sp)
    800076d0:	00113423          	sd	ra,8(sp)
    800076d4:	01010413          	addi	s0,sp,16
    800076d8:	00000097          	auipc	ra,0x0
    800076dc:	a4c080e7          	jalr	-1460(ra) # 80007124 <cpuid>
    800076e0:	0085171b          	slliw	a4,a0,0x8
    800076e4:	0c0027b7          	lui	a5,0xc002
    800076e8:	00e787b3          	add	a5,a5,a4
    800076ec:	40200713          	li	a4,1026
    800076f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800076f4:	00813083          	ld	ra,8(sp)
    800076f8:	00013403          	ld	s0,0(sp)
    800076fc:	00d5151b          	slliw	a0,a0,0xd
    80007700:	0c2017b7          	lui	a5,0xc201
    80007704:	00a78533          	add	a0,a5,a0
    80007708:	00052023          	sw	zero,0(a0)
    8000770c:	01010113          	addi	sp,sp,16
    80007710:	00008067          	ret

0000000080007714 <plic_claim>:
    80007714:	ff010113          	addi	sp,sp,-16
    80007718:	00813023          	sd	s0,0(sp)
    8000771c:	00113423          	sd	ra,8(sp)
    80007720:	01010413          	addi	s0,sp,16
    80007724:	00000097          	auipc	ra,0x0
    80007728:	a00080e7          	jalr	-1536(ra) # 80007124 <cpuid>
    8000772c:	00813083          	ld	ra,8(sp)
    80007730:	00013403          	ld	s0,0(sp)
    80007734:	00d5151b          	slliw	a0,a0,0xd
    80007738:	0c2017b7          	lui	a5,0xc201
    8000773c:	00a78533          	add	a0,a5,a0
    80007740:	00452503          	lw	a0,4(a0)
    80007744:	01010113          	addi	sp,sp,16
    80007748:	00008067          	ret

000000008000774c <plic_complete>:
    8000774c:	fe010113          	addi	sp,sp,-32
    80007750:	00813823          	sd	s0,16(sp)
    80007754:	00913423          	sd	s1,8(sp)
    80007758:	00113c23          	sd	ra,24(sp)
    8000775c:	02010413          	addi	s0,sp,32
    80007760:	00050493          	mv	s1,a0
    80007764:	00000097          	auipc	ra,0x0
    80007768:	9c0080e7          	jalr	-1600(ra) # 80007124 <cpuid>
    8000776c:	01813083          	ld	ra,24(sp)
    80007770:	01013403          	ld	s0,16(sp)
    80007774:	00d5179b          	slliw	a5,a0,0xd
    80007778:	0c201737          	lui	a4,0xc201
    8000777c:	00f707b3          	add	a5,a4,a5
    80007780:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007784:	00813483          	ld	s1,8(sp)
    80007788:	02010113          	addi	sp,sp,32
    8000778c:	00008067          	ret

0000000080007790 <consolewrite>:
    80007790:	fb010113          	addi	sp,sp,-80
    80007794:	04813023          	sd	s0,64(sp)
    80007798:	04113423          	sd	ra,72(sp)
    8000779c:	02913c23          	sd	s1,56(sp)
    800077a0:	03213823          	sd	s2,48(sp)
    800077a4:	03313423          	sd	s3,40(sp)
    800077a8:	03413023          	sd	s4,32(sp)
    800077ac:	01513c23          	sd	s5,24(sp)
    800077b0:	05010413          	addi	s0,sp,80
    800077b4:	06c05c63          	blez	a2,8000782c <consolewrite+0x9c>
    800077b8:	00060993          	mv	s3,a2
    800077bc:	00050a13          	mv	s4,a0
    800077c0:	00058493          	mv	s1,a1
    800077c4:	00000913          	li	s2,0
    800077c8:	fff00a93          	li	s5,-1
    800077cc:	01c0006f          	j	800077e8 <consolewrite+0x58>
    800077d0:	fbf44503          	lbu	a0,-65(s0)
    800077d4:	0019091b          	addiw	s2,s2,1
    800077d8:	00148493          	addi	s1,s1,1
    800077dc:	00001097          	auipc	ra,0x1
    800077e0:	a9c080e7          	jalr	-1380(ra) # 80008278 <uartputc>
    800077e4:	03298063          	beq	s3,s2,80007804 <consolewrite+0x74>
    800077e8:	00048613          	mv	a2,s1
    800077ec:	00100693          	li	a3,1
    800077f0:	000a0593          	mv	a1,s4
    800077f4:	fbf40513          	addi	a0,s0,-65
    800077f8:	00000097          	auipc	ra,0x0
    800077fc:	9e4080e7          	jalr	-1564(ra) # 800071dc <either_copyin>
    80007800:	fd5518e3          	bne	a0,s5,800077d0 <consolewrite+0x40>
    80007804:	04813083          	ld	ra,72(sp)
    80007808:	04013403          	ld	s0,64(sp)
    8000780c:	03813483          	ld	s1,56(sp)
    80007810:	02813983          	ld	s3,40(sp)
    80007814:	02013a03          	ld	s4,32(sp)
    80007818:	01813a83          	ld	s5,24(sp)
    8000781c:	00090513          	mv	a0,s2
    80007820:	03013903          	ld	s2,48(sp)
    80007824:	05010113          	addi	sp,sp,80
    80007828:	00008067          	ret
    8000782c:	00000913          	li	s2,0
    80007830:	fd5ff06f          	j	80007804 <consolewrite+0x74>

0000000080007834 <consoleread>:
    80007834:	f9010113          	addi	sp,sp,-112
    80007838:	06813023          	sd	s0,96(sp)
    8000783c:	04913c23          	sd	s1,88(sp)
    80007840:	05213823          	sd	s2,80(sp)
    80007844:	05313423          	sd	s3,72(sp)
    80007848:	05413023          	sd	s4,64(sp)
    8000784c:	03513c23          	sd	s5,56(sp)
    80007850:	03613823          	sd	s6,48(sp)
    80007854:	03713423          	sd	s7,40(sp)
    80007858:	03813023          	sd	s8,32(sp)
    8000785c:	06113423          	sd	ra,104(sp)
    80007860:	01913c23          	sd	s9,24(sp)
    80007864:	07010413          	addi	s0,sp,112
    80007868:	00060b93          	mv	s7,a2
    8000786c:	00050913          	mv	s2,a0
    80007870:	00058c13          	mv	s8,a1
    80007874:	00060b1b          	sext.w	s6,a2
    80007878:	00005497          	auipc	s1,0x5
    8000787c:	44048493          	addi	s1,s1,1088 # 8000ccb8 <cons>
    80007880:	00400993          	li	s3,4
    80007884:	fff00a13          	li	s4,-1
    80007888:	00a00a93          	li	s5,10
    8000788c:	05705e63          	blez	s7,800078e8 <consoleread+0xb4>
    80007890:	09c4a703          	lw	a4,156(s1)
    80007894:	0984a783          	lw	a5,152(s1)
    80007898:	0007071b          	sext.w	a4,a4
    8000789c:	08e78463          	beq	a5,a4,80007924 <consoleread+0xf0>
    800078a0:	07f7f713          	andi	a4,a5,127
    800078a4:	00e48733          	add	a4,s1,a4
    800078a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800078ac:	0017869b          	addiw	a3,a5,1
    800078b0:	08d4ac23          	sw	a3,152(s1)
    800078b4:	00070c9b          	sext.w	s9,a4
    800078b8:	0b370663          	beq	a4,s3,80007964 <consoleread+0x130>
    800078bc:	00100693          	li	a3,1
    800078c0:	f9f40613          	addi	a2,s0,-97
    800078c4:	000c0593          	mv	a1,s8
    800078c8:	00090513          	mv	a0,s2
    800078cc:	f8e40fa3          	sb	a4,-97(s0)
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	8c0080e7          	jalr	-1856(ra) # 80007190 <either_copyout>
    800078d8:	01450863          	beq	a0,s4,800078e8 <consoleread+0xb4>
    800078dc:	001c0c13          	addi	s8,s8,1
    800078e0:	fffb8b9b          	addiw	s7,s7,-1
    800078e4:	fb5c94e3          	bne	s9,s5,8000788c <consoleread+0x58>
    800078e8:	000b851b          	sext.w	a0,s7
    800078ec:	06813083          	ld	ra,104(sp)
    800078f0:	06013403          	ld	s0,96(sp)
    800078f4:	05813483          	ld	s1,88(sp)
    800078f8:	05013903          	ld	s2,80(sp)
    800078fc:	04813983          	ld	s3,72(sp)
    80007900:	04013a03          	ld	s4,64(sp)
    80007904:	03813a83          	ld	s5,56(sp)
    80007908:	02813b83          	ld	s7,40(sp)
    8000790c:	02013c03          	ld	s8,32(sp)
    80007910:	01813c83          	ld	s9,24(sp)
    80007914:	40ab053b          	subw	a0,s6,a0
    80007918:	03013b03          	ld	s6,48(sp)
    8000791c:	07010113          	addi	sp,sp,112
    80007920:	00008067          	ret
    80007924:	00001097          	auipc	ra,0x1
    80007928:	1d8080e7          	jalr	472(ra) # 80008afc <push_on>
    8000792c:	0984a703          	lw	a4,152(s1)
    80007930:	09c4a783          	lw	a5,156(s1)
    80007934:	0007879b          	sext.w	a5,a5
    80007938:	fef70ce3          	beq	a4,a5,80007930 <consoleread+0xfc>
    8000793c:	00001097          	auipc	ra,0x1
    80007940:	234080e7          	jalr	564(ra) # 80008b70 <pop_on>
    80007944:	0984a783          	lw	a5,152(s1)
    80007948:	07f7f713          	andi	a4,a5,127
    8000794c:	00e48733          	add	a4,s1,a4
    80007950:	01874703          	lbu	a4,24(a4)
    80007954:	0017869b          	addiw	a3,a5,1
    80007958:	08d4ac23          	sw	a3,152(s1)
    8000795c:	00070c9b          	sext.w	s9,a4
    80007960:	f5371ee3          	bne	a4,s3,800078bc <consoleread+0x88>
    80007964:	000b851b          	sext.w	a0,s7
    80007968:	f96bf2e3          	bgeu	s7,s6,800078ec <consoleread+0xb8>
    8000796c:	08f4ac23          	sw	a5,152(s1)
    80007970:	f7dff06f          	j	800078ec <consoleread+0xb8>

0000000080007974 <consputc>:
    80007974:	10000793          	li	a5,256
    80007978:	00f50663          	beq	a0,a5,80007984 <consputc+0x10>
    8000797c:	00001317          	auipc	t1,0x1
    80007980:	9f430067          	jr	-1548(t1) # 80008370 <uartputc_sync>
    80007984:	ff010113          	addi	sp,sp,-16
    80007988:	00113423          	sd	ra,8(sp)
    8000798c:	00813023          	sd	s0,0(sp)
    80007990:	01010413          	addi	s0,sp,16
    80007994:	00800513          	li	a0,8
    80007998:	00001097          	auipc	ra,0x1
    8000799c:	9d8080e7          	jalr	-1576(ra) # 80008370 <uartputc_sync>
    800079a0:	02000513          	li	a0,32
    800079a4:	00001097          	auipc	ra,0x1
    800079a8:	9cc080e7          	jalr	-1588(ra) # 80008370 <uartputc_sync>
    800079ac:	00013403          	ld	s0,0(sp)
    800079b0:	00813083          	ld	ra,8(sp)
    800079b4:	00800513          	li	a0,8
    800079b8:	01010113          	addi	sp,sp,16
    800079bc:	00001317          	auipc	t1,0x1
    800079c0:	9b430067          	jr	-1612(t1) # 80008370 <uartputc_sync>

00000000800079c4 <consoleintr>:
    800079c4:	fe010113          	addi	sp,sp,-32
    800079c8:	00813823          	sd	s0,16(sp)
    800079cc:	00913423          	sd	s1,8(sp)
    800079d0:	01213023          	sd	s2,0(sp)
    800079d4:	00113c23          	sd	ra,24(sp)
    800079d8:	02010413          	addi	s0,sp,32
    800079dc:	00005917          	auipc	s2,0x5
    800079e0:	2dc90913          	addi	s2,s2,732 # 8000ccb8 <cons>
    800079e4:	00050493          	mv	s1,a0
    800079e8:	00090513          	mv	a0,s2
    800079ec:	00001097          	auipc	ra,0x1
    800079f0:	e40080e7          	jalr	-448(ra) # 8000882c <acquire>
    800079f4:	02048c63          	beqz	s1,80007a2c <consoleintr+0x68>
    800079f8:	0a092783          	lw	a5,160(s2)
    800079fc:	09892703          	lw	a4,152(s2)
    80007a00:	07f00693          	li	a3,127
    80007a04:	40e7873b          	subw	a4,a5,a4
    80007a08:	02e6e263          	bltu	a3,a4,80007a2c <consoleintr+0x68>
    80007a0c:	00d00713          	li	a4,13
    80007a10:	04e48063          	beq	s1,a4,80007a50 <consoleintr+0x8c>
    80007a14:	07f7f713          	andi	a4,a5,127
    80007a18:	00e90733          	add	a4,s2,a4
    80007a1c:	0017879b          	addiw	a5,a5,1
    80007a20:	0af92023          	sw	a5,160(s2)
    80007a24:	00970c23          	sb	s1,24(a4)
    80007a28:	08f92e23          	sw	a5,156(s2)
    80007a2c:	01013403          	ld	s0,16(sp)
    80007a30:	01813083          	ld	ra,24(sp)
    80007a34:	00813483          	ld	s1,8(sp)
    80007a38:	00013903          	ld	s2,0(sp)
    80007a3c:	00005517          	auipc	a0,0x5
    80007a40:	27c50513          	addi	a0,a0,636 # 8000ccb8 <cons>
    80007a44:	02010113          	addi	sp,sp,32
    80007a48:	00001317          	auipc	t1,0x1
    80007a4c:	eb030067          	jr	-336(t1) # 800088f8 <release>
    80007a50:	00a00493          	li	s1,10
    80007a54:	fc1ff06f          	j	80007a14 <consoleintr+0x50>

0000000080007a58 <consoleinit>:
    80007a58:	fe010113          	addi	sp,sp,-32
    80007a5c:	00113c23          	sd	ra,24(sp)
    80007a60:	00813823          	sd	s0,16(sp)
    80007a64:	00913423          	sd	s1,8(sp)
    80007a68:	02010413          	addi	s0,sp,32
    80007a6c:	00005497          	auipc	s1,0x5
    80007a70:	24c48493          	addi	s1,s1,588 # 8000ccb8 <cons>
    80007a74:	00048513          	mv	a0,s1
    80007a78:	00002597          	auipc	a1,0x2
    80007a7c:	c6058593          	addi	a1,a1,-928 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007a80:	00001097          	auipc	ra,0x1
    80007a84:	d88080e7          	jalr	-632(ra) # 80008808 <initlock>
    80007a88:	00000097          	auipc	ra,0x0
    80007a8c:	7ac080e7          	jalr	1964(ra) # 80008234 <uartinit>
    80007a90:	01813083          	ld	ra,24(sp)
    80007a94:	01013403          	ld	s0,16(sp)
    80007a98:	00000797          	auipc	a5,0x0
    80007a9c:	d9c78793          	addi	a5,a5,-612 # 80007834 <consoleread>
    80007aa0:	0af4bc23          	sd	a5,184(s1)
    80007aa4:	00000797          	auipc	a5,0x0
    80007aa8:	cec78793          	addi	a5,a5,-788 # 80007790 <consolewrite>
    80007aac:	0cf4b023          	sd	a5,192(s1)
    80007ab0:	00813483          	ld	s1,8(sp)
    80007ab4:	02010113          	addi	sp,sp,32
    80007ab8:	00008067          	ret

0000000080007abc <console_read>:
    80007abc:	ff010113          	addi	sp,sp,-16
    80007ac0:	00813423          	sd	s0,8(sp)
    80007ac4:	01010413          	addi	s0,sp,16
    80007ac8:	00813403          	ld	s0,8(sp)
    80007acc:	00005317          	auipc	t1,0x5
    80007ad0:	2a433303          	ld	t1,676(t1) # 8000cd70 <devsw+0x10>
    80007ad4:	01010113          	addi	sp,sp,16
    80007ad8:	00030067          	jr	t1

0000000080007adc <console_write>:
    80007adc:	ff010113          	addi	sp,sp,-16
    80007ae0:	00813423          	sd	s0,8(sp)
    80007ae4:	01010413          	addi	s0,sp,16
    80007ae8:	00813403          	ld	s0,8(sp)
    80007aec:	00005317          	auipc	t1,0x5
    80007af0:	28c33303          	ld	t1,652(t1) # 8000cd78 <devsw+0x18>
    80007af4:	01010113          	addi	sp,sp,16
    80007af8:	00030067          	jr	t1

0000000080007afc <panic>:
    80007afc:	fe010113          	addi	sp,sp,-32
    80007b00:	00113c23          	sd	ra,24(sp)
    80007b04:	00813823          	sd	s0,16(sp)
    80007b08:	00913423          	sd	s1,8(sp)
    80007b0c:	02010413          	addi	s0,sp,32
    80007b10:	00050493          	mv	s1,a0
    80007b14:	00002517          	auipc	a0,0x2
    80007b18:	bcc50513          	addi	a0,a0,-1076 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80007b1c:	00005797          	auipc	a5,0x5
    80007b20:	2e07ae23          	sw	zero,764(a5) # 8000ce18 <pr+0x18>
    80007b24:	00000097          	auipc	ra,0x0
    80007b28:	034080e7          	jalr	52(ra) # 80007b58 <__printf>
    80007b2c:	00048513          	mv	a0,s1
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	028080e7          	jalr	40(ra) # 80007b58 <__printf>
    80007b38:	00002517          	auipc	a0,0x2
    80007b3c:	91850513          	addi	a0,a0,-1768 # 80009450 <CONSOLE_STATUS+0x440>
    80007b40:	00000097          	auipc	ra,0x0
    80007b44:	018080e7          	jalr	24(ra) # 80007b58 <__printf>
    80007b48:	00100793          	li	a5,1
    80007b4c:	00004717          	auipc	a4,0x4
    80007b50:	daf72623          	sw	a5,-596(a4) # 8000b8f8 <panicked>
    80007b54:	0000006f          	j	80007b54 <panic+0x58>

0000000080007b58 <__printf>:
    80007b58:	f3010113          	addi	sp,sp,-208
    80007b5c:	08813023          	sd	s0,128(sp)
    80007b60:	07313423          	sd	s3,104(sp)
    80007b64:	09010413          	addi	s0,sp,144
    80007b68:	05813023          	sd	s8,64(sp)
    80007b6c:	08113423          	sd	ra,136(sp)
    80007b70:	06913c23          	sd	s1,120(sp)
    80007b74:	07213823          	sd	s2,112(sp)
    80007b78:	07413023          	sd	s4,96(sp)
    80007b7c:	05513c23          	sd	s5,88(sp)
    80007b80:	05613823          	sd	s6,80(sp)
    80007b84:	05713423          	sd	s7,72(sp)
    80007b88:	03913c23          	sd	s9,56(sp)
    80007b8c:	03a13823          	sd	s10,48(sp)
    80007b90:	03b13423          	sd	s11,40(sp)
    80007b94:	00005317          	auipc	t1,0x5
    80007b98:	26c30313          	addi	t1,t1,620 # 8000ce00 <pr>
    80007b9c:	01832c03          	lw	s8,24(t1)
    80007ba0:	00b43423          	sd	a1,8(s0)
    80007ba4:	00c43823          	sd	a2,16(s0)
    80007ba8:	00d43c23          	sd	a3,24(s0)
    80007bac:	02e43023          	sd	a4,32(s0)
    80007bb0:	02f43423          	sd	a5,40(s0)
    80007bb4:	03043823          	sd	a6,48(s0)
    80007bb8:	03143c23          	sd	a7,56(s0)
    80007bbc:	00050993          	mv	s3,a0
    80007bc0:	4a0c1663          	bnez	s8,8000806c <__printf+0x514>
    80007bc4:	60098c63          	beqz	s3,800081dc <__printf+0x684>
    80007bc8:	0009c503          	lbu	a0,0(s3)
    80007bcc:	00840793          	addi	a5,s0,8
    80007bd0:	f6f43c23          	sd	a5,-136(s0)
    80007bd4:	00000493          	li	s1,0
    80007bd8:	22050063          	beqz	a0,80007df8 <__printf+0x2a0>
    80007bdc:	00002a37          	lui	s4,0x2
    80007be0:	00018ab7          	lui	s5,0x18
    80007be4:	000f4b37          	lui	s6,0xf4
    80007be8:	00989bb7          	lui	s7,0x989
    80007bec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007bf0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007bf4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007bf8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007bfc:	00148c9b          	addiw	s9,s1,1
    80007c00:	02500793          	li	a5,37
    80007c04:	01998933          	add	s2,s3,s9
    80007c08:	38f51263          	bne	a0,a5,80007f8c <__printf+0x434>
    80007c0c:	00094783          	lbu	a5,0(s2)
    80007c10:	00078c9b          	sext.w	s9,a5
    80007c14:	1e078263          	beqz	a5,80007df8 <__printf+0x2a0>
    80007c18:	0024849b          	addiw	s1,s1,2
    80007c1c:	07000713          	li	a4,112
    80007c20:	00998933          	add	s2,s3,s1
    80007c24:	38e78a63          	beq	a5,a4,80007fb8 <__printf+0x460>
    80007c28:	20f76863          	bltu	a4,a5,80007e38 <__printf+0x2e0>
    80007c2c:	42a78863          	beq	a5,a0,8000805c <__printf+0x504>
    80007c30:	06400713          	li	a4,100
    80007c34:	40e79663          	bne	a5,a4,80008040 <__printf+0x4e8>
    80007c38:	f7843783          	ld	a5,-136(s0)
    80007c3c:	0007a603          	lw	a2,0(a5)
    80007c40:	00878793          	addi	a5,a5,8
    80007c44:	f6f43c23          	sd	a5,-136(s0)
    80007c48:	42064a63          	bltz	a2,8000807c <__printf+0x524>
    80007c4c:	00a00713          	li	a4,10
    80007c50:	02e677bb          	remuw	a5,a2,a4
    80007c54:	00002d97          	auipc	s11,0x2
    80007c58:	ab4d8d93          	addi	s11,s11,-1356 # 80009708 <digits>
    80007c5c:	00900593          	li	a1,9
    80007c60:	0006051b          	sext.w	a0,a2
    80007c64:	00000c93          	li	s9,0
    80007c68:	02079793          	slli	a5,a5,0x20
    80007c6c:	0207d793          	srli	a5,a5,0x20
    80007c70:	00fd87b3          	add	a5,s11,a5
    80007c74:	0007c783          	lbu	a5,0(a5)
    80007c78:	02e656bb          	divuw	a3,a2,a4
    80007c7c:	f8f40023          	sb	a5,-128(s0)
    80007c80:	14c5d863          	bge	a1,a2,80007dd0 <__printf+0x278>
    80007c84:	06300593          	li	a1,99
    80007c88:	00100c93          	li	s9,1
    80007c8c:	02e6f7bb          	remuw	a5,a3,a4
    80007c90:	02079793          	slli	a5,a5,0x20
    80007c94:	0207d793          	srli	a5,a5,0x20
    80007c98:	00fd87b3          	add	a5,s11,a5
    80007c9c:	0007c783          	lbu	a5,0(a5)
    80007ca0:	02e6d73b          	divuw	a4,a3,a4
    80007ca4:	f8f400a3          	sb	a5,-127(s0)
    80007ca8:	12a5f463          	bgeu	a1,a0,80007dd0 <__printf+0x278>
    80007cac:	00a00693          	li	a3,10
    80007cb0:	00900593          	li	a1,9
    80007cb4:	02d777bb          	remuw	a5,a4,a3
    80007cb8:	02079793          	slli	a5,a5,0x20
    80007cbc:	0207d793          	srli	a5,a5,0x20
    80007cc0:	00fd87b3          	add	a5,s11,a5
    80007cc4:	0007c503          	lbu	a0,0(a5)
    80007cc8:	02d757bb          	divuw	a5,a4,a3
    80007ccc:	f8a40123          	sb	a0,-126(s0)
    80007cd0:	48e5f263          	bgeu	a1,a4,80008154 <__printf+0x5fc>
    80007cd4:	06300513          	li	a0,99
    80007cd8:	02d7f5bb          	remuw	a1,a5,a3
    80007cdc:	02059593          	slli	a1,a1,0x20
    80007ce0:	0205d593          	srli	a1,a1,0x20
    80007ce4:	00bd85b3          	add	a1,s11,a1
    80007ce8:	0005c583          	lbu	a1,0(a1)
    80007cec:	02d7d7bb          	divuw	a5,a5,a3
    80007cf0:	f8b401a3          	sb	a1,-125(s0)
    80007cf4:	48e57263          	bgeu	a0,a4,80008178 <__printf+0x620>
    80007cf8:	3e700513          	li	a0,999
    80007cfc:	02d7f5bb          	remuw	a1,a5,a3
    80007d00:	02059593          	slli	a1,a1,0x20
    80007d04:	0205d593          	srli	a1,a1,0x20
    80007d08:	00bd85b3          	add	a1,s11,a1
    80007d0c:	0005c583          	lbu	a1,0(a1)
    80007d10:	02d7d7bb          	divuw	a5,a5,a3
    80007d14:	f8b40223          	sb	a1,-124(s0)
    80007d18:	46e57663          	bgeu	a0,a4,80008184 <__printf+0x62c>
    80007d1c:	02d7f5bb          	remuw	a1,a5,a3
    80007d20:	02059593          	slli	a1,a1,0x20
    80007d24:	0205d593          	srli	a1,a1,0x20
    80007d28:	00bd85b3          	add	a1,s11,a1
    80007d2c:	0005c583          	lbu	a1,0(a1)
    80007d30:	02d7d7bb          	divuw	a5,a5,a3
    80007d34:	f8b402a3          	sb	a1,-123(s0)
    80007d38:	46ea7863          	bgeu	s4,a4,800081a8 <__printf+0x650>
    80007d3c:	02d7f5bb          	remuw	a1,a5,a3
    80007d40:	02059593          	slli	a1,a1,0x20
    80007d44:	0205d593          	srli	a1,a1,0x20
    80007d48:	00bd85b3          	add	a1,s11,a1
    80007d4c:	0005c583          	lbu	a1,0(a1)
    80007d50:	02d7d7bb          	divuw	a5,a5,a3
    80007d54:	f8b40323          	sb	a1,-122(s0)
    80007d58:	3eeaf863          	bgeu	s5,a4,80008148 <__printf+0x5f0>
    80007d5c:	02d7f5bb          	remuw	a1,a5,a3
    80007d60:	02059593          	slli	a1,a1,0x20
    80007d64:	0205d593          	srli	a1,a1,0x20
    80007d68:	00bd85b3          	add	a1,s11,a1
    80007d6c:	0005c583          	lbu	a1,0(a1)
    80007d70:	02d7d7bb          	divuw	a5,a5,a3
    80007d74:	f8b403a3          	sb	a1,-121(s0)
    80007d78:	42eb7e63          	bgeu	s6,a4,800081b4 <__printf+0x65c>
    80007d7c:	02d7f5bb          	remuw	a1,a5,a3
    80007d80:	02059593          	slli	a1,a1,0x20
    80007d84:	0205d593          	srli	a1,a1,0x20
    80007d88:	00bd85b3          	add	a1,s11,a1
    80007d8c:	0005c583          	lbu	a1,0(a1)
    80007d90:	02d7d7bb          	divuw	a5,a5,a3
    80007d94:	f8b40423          	sb	a1,-120(s0)
    80007d98:	42ebfc63          	bgeu	s7,a4,800081d0 <__printf+0x678>
    80007d9c:	02079793          	slli	a5,a5,0x20
    80007da0:	0207d793          	srli	a5,a5,0x20
    80007da4:	00fd8db3          	add	s11,s11,a5
    80007da8:	000dc703          	lbu	a4,0(s11)
    80007dac:	00a00793          	li	a5,10
    80007db0:	00900c93          	li	s9,9
    80007db4:	f8e404a3          	sb	a4,-119(s0)
    80007db8:	00065c63          	bgez	a2,80007dd0 <__printf+0x278>
    80007dbc:	f9040713          	addi	a4,s0,-112
    80007dc0:	00f70733          	add	a4,a4,a5
    80007dc4:	02d00693          	li	a3,45
    80007dc8:	fed70823          	sb	a3,-16(a4)
    80007dcc:	00078c93          	mv	s9,a5
    80007dd0:	f8040793          	addi	a5,s0,-128
    80007dd4:	01978cb3          	add	s9,a5,s9
    80007dd8:	f7f40d13          	addi	s10,s0,-129
    80007ddc:	000cc503          	lbu	a0,0(s9)
    80007de0:	fffc8c93          	addi	s9,s9,-1
    80007de4:	00000097          	auipc	ra,0x0
    80007de8:	b90080e7          	jalr	-1136(ra) # 80007974 <consputc>
    80007dec:	ffac98e3          	bne	s9,s10,80007ddc <__printf+0x284>
    80007df0:	00094503          	lbu	a0,0(s2)
    80007df4:	e00514e3          	bnez	a0,80007bfc <__printf+0xa4>
    80007df8:	1a0c1663          	bnez	s8,80007fa4 <__printf+0x44c>
    80007dfc:	08813083          	ld	ra,136(sp)
    80007e00:	08013403          	ld	s0,128(sp)
    80007e04:	07813483          	ld	s1,120(sp)
    80007e08:	07013903          	ld	s2,112(sp)
    80007e0c:	06813983          	ld	s3,104(sp)
    80007e10:	06013a03          	ld	s4,96(sp)
    80007e14:	05813a83          	ld	s5,88(sp)
    80007e18:	05013b03          	ld	s6,80(sp)
    80007e1c:	04813b83          	ld	s7,72(sp)
    80007e20:	04013c03          	ld	s8,64(sp)
    80007e24:	03813c83          	ld	s9,56(sp)
    80007e28:	03013d03          	ld	s10,48(sp)
    80007e2c:	02813d83          	ld	s11,40(sp)
    80007e30:	0d010113          	addi	sp,sp,208
    80007e34:	00008067          	ret
    80007e38:	07300713          	li	a4,115
    80007e3c:	1ce78a63          	beq	a5,a4,80008010 <__printf+0x4b8>
    80007e40:	07800713          	li	a4,120
    80007e44:	1ee79e63          	bne	a5,a4,80008040 <__printf+0x4e8>
    80007e48:	f7843783          	ld	a5,-136(s0)
    80007e4c:	0007a703          	lw	a4,0(a5)
    80007e50:	00878793          	addi	a5,a5,8
    80007e54:	f6f43c23          	sd	a5,-136(s0)
    80007e58:	28074263          	bltz	a4,800080dc <__printf+0x584>
    80007e5c:	00002d97          	auipc	s11,0x2
    80007e60:	8acd8d93          	addi	s11,s11,-1876 # 80009708 <digits>
    80007e64:	00f77793          	andi	a5,a4,15
    80007e68:	00fd87b3          	add	a5,s11,a5
    80007e6c:	0007c683          	lbu	a3,0(a5)
    80007e70:	00f00613          	li	a2,15
    80007e74:	0007079b          	sext.w	a5,a4
    80007e78:	f8d40023          	sb	a3,-128(s0)
    80007e7c:	0047559b          	srliw	a1,a4,0x4
    80007e80:	0047569b          	srliw	a3,a4,0x4
    80007e84:	00000c93          	li	s9,0
    80007e88:	0ee65063          	bge	a2,a4,80007f68 <__printf+0x410>
    80007e8c:	00f6f693          	andi	a3,a3,15
    80007e90:	00dd86b3          	add	a3,s11,a3
    80007e94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007e98:	0087d79b          	srliw	a5,a5,0x8
    80007e9c:	00100c93          	li	s9,1
    80007ea0:	f8d400a3          	sb	a3,-127(s0)
    80007ea4:	0cb67263          	bgeu	a2,a1,80007f68 <__printf+0x410>
    80007ea8:	00f7f693          	andi	a3,a5,15
    80007eac:	00dd86b3          	add	a3,s11,a3
    80007eb0:	0006c583          	lbu	a1,0(a3)
    80007eb4:	00f00613          	li	a2,15
    80007eb8:	0047d69b          	srliw	a3,a5,0x4
    80007ebc:	f8b40123          	sb	a1,-126(s0)
    80007ec0:	0047d593          	srli	a1,a5,0x4
    80007ec4:	28f67e63          	bgeu	a2,a5,80008160 <__printf+0x608>
    80007ec8:	00f6f693          	andi	a3,a3,15
    80007ecc:	00dd86b3          	add	a3,s11,a3
    80007ed0:	0006c503          	lbu	a0,0(a3)
    80007ed4:	0087d813          	srli	a6,a5,0x8
    80007ed8:	0087d69b          	srliw	a3,a5,0x8
    80007edc:	f8a401a3          	sb	a0,-125(s0)
    80007ee0:	28b67663          	bgeu	a2,a1,8000816c <__printf+0x614>
    80007ee4:	00f6f693          	andi	a3,a3,15
    80007ee8:	00dd86b3          	add	a3,s11,a3
    80007eec:	0006c583          	lbu	a1,0(a3)
    80007ef0:	00c7d513          	srli	a0,a5,0xc
    80007ef4:	00c7d69b          	srliw	a3,a5,0xc
    80007ef8:	f8b40223          	sb	a1,-124(s0)
    80007efc:	29067a63          	bgeu	a2,a6,80008190 <__printf+0x638>
    80007f00:	00f6f693          	andi	a3,a3,15
    80007f04:	00dd86b3          	add	a3,s11,a3
    80007f08:	0006c583          	lbu	a1,0(a3)
    80007f0c:	0107d813          	srli	a6,a5,0x10
    80007f10:	0107d69b          	srliw	a3,a5,0x10
    80007f14:	f8b402a3          	sb	a1,-123(s0)
    80007f18:	28a67263          	bgeu	a2,a0,8000819c <__printf+0x644>
    80007f1c:	00f6f693          	andi	a3,a3,15
    80007f20:	00dd86b3          	add	a3,s11,a3
    80007f24:	0006c683          	lbu	a3,0(a3)
    80007f28:	0147d79b          	srliw	a5,a5,0x14
    80007f2c:	f8d40323          	sb	a3,-122(s0)
    80007f30:	21067663          	bgeu	a2,a6,8000813c <__printf+0x5e4>
    80007f34:	02079793          	slli	a5,a5,0x20
    80007f38:	0207d793          	srli	a5,a5,0x20
    80007f3c:	00fd8db3          	add	s11,s11,a5
    80007f40:	000dc683          	lbu	a3,0(s11)
    80007f44:	00800793          	li	a5,8
    80007f48:	00700c93          	li	s9,7
    80007f4c:	f8d403a3          	sb	a3,-121(s0)
    80007f50:	00075c63          	bgez	a4,80007f68 <__printf+0x410>
    80007f54:	f9040713          	addi	a4,s0,-112
    80007f58:	00f70733          	add	a4,a4,a5
    80007f5c:	02d00693          	li	a3,45
    80007f60:	fed70823          	sb	a3,-16(a4)
    80007f64:	00078c93          	mv	s9,a5
    80007f68:	f8040793          	addi	a5,s0,-128
    80007f6c:	01978cb3          	add	s9,a5,s9
    80007f70:	f7f40d13          	addi	s10,s0,-129
    80007f74:	000cc503          	lbu	a0,0(s9)
    80007f78:	fffc8c93          	addi	s9,s9,-1
    80007f7c:	00000097          	auipc	ra,0x0
    80007f80:	9f8080e7          	jalr	-1544(ra) # 80007974 <consputc>
    80007f84:	ff9d18e3          	bne	s10,s9,80007f74 <__printf+0x41c>
    80007f88:	0100006f          	j	80007f98 <__printf+0x440>
    80007f8c:	00000097          	auipc	ra,0x0
    80007f90:	9e8080e7          	jalr	-1560(ra) # 80007974 <consputc>
    80007f94:	000c8493          	mv	s1,s9
    80007f98:	00094503          	lbu	a0,0(s2)
    80007f9c:	c60510e3          	bnez	a0,80007bfc <__printf+0xa4>
    80007fa0:	e40c0ee3          	beqz	s8,80007dfc <__printf+0x2a4>
    80007fa4:	00005517          	auipc	a0,0x5
    80007fa8:	e5c50513          	addi	a0,a0,-420 # 8000ce00 <pr>
    80007fac:	00001097          	auipc	ra,0x1
    80007fb0:	94c080e7          	jalr	-1716(ra) # 800088f8 <release>
    80007fb4:	e49ff06f          	j	80007dfc <__printf+0x2a4>
    80007fb8:	f7843783          	ld	a5,-136(s0)
    80007fbc:	03000513          	li	a0,48
    80007fc0:	01000d13          	li	s10,16
    80007fc4:	00878713          	addi	a4,a5,8
    80007fc8:	0007bc83          	ld	s9,0(a5)
    80007fcc:	f6e43c23          	sd	a4,-136(s0)
    80007fd0:	00000097          	auipc	ra,0x0
    80007fd4:	9a4080e7          	jalr	-1628(ra) # 80007974 <consputc>
    80007fd8:	07800513          	li	a0,120
    80007fdc:	00000097          	auipc	ra,0x0
    80007fe0:	998080e7          	jalr	-1640(ra) # 80007974 <consputc>
    80007fe4:	00001d97          	auipc	s11,0x1
    80007fe8:	724d8d93          	addi	s11,s11,1828 # 80009708 <digits>
    80007fec:	03ccd793          	srli	a5,s9,0x3c
    80007ff0:	00fd87b3          	add	a5,s11,a5
    80007ff4:	0007c503          	lbu	a0,0(a5)
    80007ff8:	fffd0d1b          	addiw	s10,s10,-1
    80007ffc:	004c9c93          	slli	s9,s9,0x4
    80008000:	00000097          	auipc	ra,0x0
    80008004:	974080e7          	jalr	-1676(ra) # 80007974 <consputc>
    80008008:	fe0d12e3          	bnez	s10,80007fec <__printf+0x494>
    8000800c:	f8dff06f          	j	80007f98 <__printf+0x440>
    80008010:	f7843783          	ld	a5,-136(s0)
    80008014:	0007bc83          	ld	s9,0(a5)
    80008018:	00878793          	addi	a5,a5,8
    8000801c:	f6f43c23          	sd	a5,-136(s0)
    80008020:	000c9a63          	bnez	s9,80008034 <__printf+0x4dc>
    80008024:	1080006f          	j	8000812c <__printf+0x5d4>
    80008028:	001c8c93          	addi	s9,s9,1
    8000802c:	00000097          	auipc	ra,0x0
    80008030:	948080e7          	jalr	-1720(ra) # 80007974 <consputc>
    80008034:	000cc503          	lbu	a0,0(s9)
    80008038:	fe0518e3          	bnez	a0,80008028 <__printf+0x4d0>
    8000803c:	f5dff06f          	j	80007f98 <__printf+0x440>
    80008040:	02500513          	li	a0,37
    80008044:	00000097          	auipc	ra,0x0
    80008048:	930080e7          	jalr	-1744(ra) # 80007974 <consputc>
    8000804c:	000c8513          	mv	a0,s9
    80008050:	00000097          	auipc	ra,0x0
    80008054:	924080e7          	jalr	-1756(ra) # 80007974 <consputc>
    80008058:	f41ff06f          	j	80007f98 <__printf+0x440>
    8000805c:	02500513          	li	a0,37
    80008060:	00000097          	auipc	ra,0x0
    80008064:	914080e7          	jalr	-1772(ra) # 80007974 <consputc>
    80008068:	f31ff06f          	j	80007f98 <__printf+0x440>
    8000806c:	00030513          	mv	a0,t1
    80008070:	00000097          	auipc	ra,0x0
    80008074:	7bc080e7          	jalr	1980(ra) # 8000882c <acquire>
    80008078:	b4dff06f          	j	80007bc4 <__printf+0x6c>
    8000807c:	40c0053b          	negw	a0,a2
    80008080:	00a00713          	li	a4,10
    80008084:	02e576bb          	remuw	a3,a0,a4
    80008088:	00001d97          	auipc	s11,0x1
    8000808c:	680d8d93          	addi	s11,s11,1664 # 80009708 <digits>
    80008090:	ff700593          	li	a1,-9
    80008094:	02069693          	slli	a3,a3,0x20
    80008098:	0206d693          	srli	a3,a3,0x20
    8000809c:	00dd86b3          	add	a3,s11,a3
    800080a0:	0006c683          	lbu	a3,0(a3)
    800080a4:	02e557bb          	divuw	a5,a0,a4
    800080a8:	f8d40023          	sb	a3,-128(s0)
    800080ac:	10b65e63          	bge	a2,a1,800081c8 <__printf+0x670>
    800080b0:	06300593          	li	a1,99
    800080b4:	02e7f6bb          	remuw	a3,a5,a4
    800080b8:	02069693          	slli	a3,a3,0x20
    800080bc:	0206d693          	srli	a3,a3,0x20
    800080c0:	00dd86b3          	add	a3,s11,a3
    800080c4:	0006c683          	lbu	a3,0(a3)
    800080c8:	02e7d73b          	divuw	a4,a5,a4
    800080cc:	00200793          	li	a5,2
    800080d0:	f8d400a3          	sb	a3,-127(s0)
    800080d4:	bca5ece3          	bltu	a1,a0,80007cac <__printf+0x154>
    800080d8:	ce5ff06f          	j	80007dbc <__printf+0x264>
    800080dc:	40e007bb          	negw	a5,a4
    800080e0:	00001d97          	auipc	s11,0x1
    800080e4:	628d8d93          	addi	s11,s11,1576 # 80009708 <digits>
    800080e8:	00f7f693          	andi	a3,a5,15
    800080ec:	00dd86b3          	add	a3,s11,a3
    800080f0:	0006c583          	lbu	a1,0(a3)
    800080f4:	ff100613          	li	a2,-15
    800080f8:	0047d69b          	srliw	a3,a5,0x4
    800080fc:	f8b40023          	sb	a1,-128(s0)
    80008100:	0047d59b          	srliw	a1,a5,0x4
    80008104:	0ac75e63          	bge	a4,a2,800081c0 <__printf+0x668>
    80008108:	00f6f693          	andi	a3,a3,15
    8000810c:	00dd86b3          	add	a3,s11,a3
    80008110:	0006c603          	lbu	a2,0(a3)
    80008114:	00f00693          	li	a3,15
    80008118:	0087d79b          	srliw	a5,a5,0x8
    8000811c:	f8c400a3          	sb	a2,-127(s0)
    80008120:	d8b6e4e3          	bltu	a3,a1,80007ea8 <__printf+0x350>
    80008124:	00200793          	li	a5,2
    80008128:	e2dff06f          	j	80007f54 <__printf+0x3fc>
    8000812c:	00001c97          	auipc	s9,0x1
    80008130:	5bcc8c93          	addi	s9,s9,1468 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80008134:	02800513          	li	a0,40
    80008138:	ef1ff06f          	j	80008028 <__printf+0x4d0>
    8000813c:	00700793          	li	a5,7
    80008140:	00600c93          	li	s9,6
    80008144:	e0dff06f          	j	80007f50 <__printf+0x3f8>
    80008148:	00700793          	li	a5,7
    8000814c:	00600c93          	li	s9,6
    80008150:	c69ff06f          	j	80007db8 <__printf+0x260>
    80008154:	00300793          	li	a5,3
    80008158:	00200c93          	li	s9,2
    8000815c:	c5dff06f          	j	80007db8 <__printf+0x260>
    80008160:	00300793          	li	a5,3
    80008164:	00200c93          	li	s9,2
    80008168:	de9ff06f          	j	80007f50 <__printf+0x3f8>
    8000816c:	00400793          	li	a5,4
    80008170:	00300c93          	li	s9,3
    80008174:	dddff06f          	j	80007f50 <__printf+0x3f8>
    80008178:	00400793          	li	a5,4
    8000817c:	00300c93          	li	s9,3
    80008180:	c39ff06f          	j	80007db8 <__printf+0x260>
    80008184:	00500793          	li	a5,5
    80008188:	00400c93          	li	s9,4
    8000818c:	c2dff06f          	j	80007db8 <__printf+0x260>
    80008190:	00500793          	li	a5,5
    80008194:	00400c93          	li	s9,4
    80008198:	db9ff06f          	j	80007f50 <__printf+0x3f8>
    8000819c:	00600793          	li	a5,6
    800081a0:	00500c93          	li	s9,5
    800081a4:	dadff06f          	j	80007f50 <__printf+0x3f8>
    800081a8:	00600793          	li	a5,6
    800081ac:	00500c93          	li	s9,5
    800081b0:	c09ff06f          	j	80007db8 <__printf+0x260>
    800081b4:	00800793          	li	a5,8
    800081b8:	00700c93          	li	s9,7
    800081bc:	bfdff06f          	j	80007db8 <__printf+0x260>
    800081c0:	00100793          	li	a5,1
    800081c4:	d91ff06f          	j	80007f54 <__printf+0x3fc>
    800081c8:	00100793          	li	a5,1
    800081cc:	bf1ff06f          	j	80007dbc <__printf+0x264>
    800081d0:	00900793          	li	a5,9
    800081d4:	00800c93          	li	s9,8
    800081d8:	be1ff06f          	j	80007db8 <__printf+0x260>
    800081dc:	00001517          	auipc	a0,0x1
    800081e0:	51450513          	addi	a0,a0,1300 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800081e4:	00000097          	auipc	ra,0x0
    800081e8:	918080e7          	jalr	-1768(ra) # 80007afc <panic>

00000000800081ec <printfinit>:
    800081ec:	fe010113          	addi	sp,sp,-32
    800081f0:	00813823          	sd	s0,16(sp)
    800081f4:	00913423          	sd	s1,8(sp)
    800081f8:	00113c23          	sd	ra,24(sp)
    800081fc:	02010413          	addi	s0,sp,32
    80008200:	00005497          	auipc	s1,0x5
    80008204:	c0048493          	addi	s1,s1,-1024 # 8000ce00 <pr>
    80008208:	00048513          	mv	a0,s1
    8000820c:	00001597          	auipc	a1,0x1
    80008210:	4f458593          	addi	a1,a1,1268 # 80009700 <CONSOLE_STATUS+0x6f0>
    80008214:	00000097          	auipc	ra,0x0
    80008218:	5f4080e7          	jalr	1524(ra) # 80008808 <initlock>
    8000821c:	01813083          	ld	ra,24(sp)
    80008220:	01013403          	ld	s0,16(sp)
    80008224:	0004ac23          	sw	zero,24(s1)
    80008228:	00813483          	ld	s1,8(sp)
    8000822c:	02010113          	addi	sp,sp,32
    80008230:	00008067          	ret

0000000080008234 <uartinit>:
    80008234:	ff010113          	addi	sp,sp,-16
    80008238:	00813423          	sd	s0,8(sp)
    8000823c:	01010413          	addi	s0,sp,16
    80008240:	100007b7          	lui	a5,0x10000
    80008244:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008248:	f8000713          	li	a4,-128
    8000824c:	00e781a3          	sb	a4,3(a5)
    80008250:	00300713          	li	a4,3
    80008254:	00e78023          	sb	a4,0(a5)
    80008258:	000780a3          	sb	zero,1(a5)
    8000825c:	00e781a3          	sb	a4,3(a5)
    80008260:	00700693          	li	a3,7
    80008264:	00d78123          	sb	a3,2(a5)
    80008268:	00e780a3          	sb	a4,1(a5)
    8000826c:	00813403          	ld	s0,8(sp)
    80008270:	01010113          	addi	sp,sp,16
    80008274:	00008067          	ret

0000000080008278 <uartputc>:
    80008278:	00003797          	auipc	a5,0x3
    8000827c:	6807a783          	lw	a5,1664(a5) # 8000b8f8 <panicked>
    80008280:	00078463          	beqz	a5,80008288 <uartputc+0x10>
    80008284:	0000006f          	j	80008284 <uartputc+0xc>
    80008288:	fd010113          	addi	sp,sp,-48
    8000828c:	02813023          	sd	s0,32(sp)
    80008290:	00913c23          	sd	s1,24(sp)
    80008294:	01213823          	sd	s2,16(sp)
    80008298:	01313423          	sd	s3,8(sp)
    8000829c:	02113423          	sd	ra,40(sp)
    800082a0:	03010413          	addi	s0,sp,48
    800082a4:	00003917          	auipc	s2,0x3
    800082a8:	65c90913          	addi	s2,s2,1628 # 8000b900 <uart_tx_r>
    800082ac:	00093783          	ld	a5,0(s2)
    800082b0:	00003497          	auipc	s1,0x3
    800082b4:	65848493          	addi	s1,s1,1624 # 8000b908 <uart_tx_w>
    800082b8:	0004b703          	ld	a4,0(s1)
    800082bc:	02078693          	addi	a3,a5,32
    800082c0:	00050993          	mv	s3,a0
    800082c4:	02e69c63          	bne	a3,a4,800082fc <uartputc+0x84>
    800082c8:	00001097          	auipc	ra,0x1
    800082cc:	834080e7          	jalr	-1996(ra) # 80008afc <push_on>
    800082d0:	00093783          	ld	a5,0(s2)
    800082d4:	0004b703          	ld	a4,0(s1)
    800082d8:	02078793          	addi	a5,a5,32
    800082dc:	00e79463          	bne	a5,a4,800082e4 <uartputc+0x6c>
    800082e0:	0000006f          	j	800082e0 <uartputc+0x68>
    800082e4:	00001097          	auipc	ra,0x1
    800082e8:	88c080e7          	jalr	-1908(ra) # 80008b70 <pop_on>
    800082ec:	00093783          	ld	a5,0(s2)
    800082f0:	0004b703          	ld	a4,0(s1)
    800082f4:	02078693          	addi	a3,a5,32
    800082f8:	fce688e3          	beq	a3,a4,800082c8 <uartputc+0x50>
    800082fc:	01f77693          	andi	a3,a4,31
    80008300:	00005597          	auipc	a1,0x5
    80008304:	b2058593          	addi	a1,a1,-1248 # 8000ce20 <uart_tx_buf>
    80008308:	00d586b3          	add	a3,a1,a3
    8000830c:	00170713          	addi	a4,a4,1
    80008310:	01368023          	sb	s3,0(a3)
    80008314:	00e4b023          	sd	a4,0(s1)
    80008318:	10000637          	lui	a2,0x10000
    8000831c:	02f71063          	bne	a4,a5,8000833c <uartputc+0xc4>
    80008320:	0340006f          	j	80008354 <uartputc+0xdc>
    80008324:	00074703          	lbu	a4,0(a4)
    80008328:	00f93023          	sd	a5,0(s2)
    8000832c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008330:	00093783          	ld	a5,0(s2)
    80008334:	0004b703          	ld	a4,0(s1)
    80008338:	00f70e63          	beq	a4,a5,80008354 <uartputc+0xdc>
    8000833c:	00564683          	lbu	a3,5(a2)
    80008340:	01f7f713          	andi	a4,a5,31
    80008344:	00e58733          	add	a4,a1,a4
    80008348:	0206f693          	andi	a3,a3,32
    8000834c:	00178793          	addi	a5,a5,1
    80008350:	fc069ae3          	bnez	a3,80008324 <uartputc+0xac>
    80008354:	02813083          	ld	ra,40(sp)
    80008358:	02013403          	ld	s0,32(sp)
    8000835c:	01813483          	ld	s1,24(sp)
    80008360:	01013903          	ld	s2,16(sp)
    80008364:	00813983          	ld	s3,8(sp)
    80008368:	03010113          	addi	sp,sp,48
    8000836c:	00008067          	ret

0000000080008370 <uartputc_sync>:
    80008370:	ff010113          	addi	sp,sp,-16
    80008374:	00813423          	sd	s0,8(sp)
    80008378:	01010413          	addi	s0,sp,16
    8000837c:	00003717          	auipc	a4,0x3
    80008380:	57c72703          	lw	a4,1404(a4) # 8000b8f8 <panicked>
    80008384:	02071663          	bnez	a4,800083b0 <uartputc_sync+0x40>
    80008388:	00050793          	mv	a5,a0
    8000838c:	100006b7          	lui	a3,0x10000
    80008390:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008394:	02077713          	andi	a4,a4,32
    80008398:	fe070ce3          	beqz	a4,80008390 <uartputc_sync+0x20>
    8000839c:	0ff7f793          	andi	a5,a5,255
    800083a0:	00f68023          	sb	a5,0(a3)
    800083a4:	00813403          	ld	s0,8(sp)
    800083a8:	01010113          	addi	sp,sp,16
    800083ac:	00008067          	ret
    800083b0:	0000006f          	j	800083b0 <uartputc_sync+0x40>

00000000800083b4 <uartstart>:
    800083b4:	ff010113          	addi	sp,sp,-16
    800083b8:	00813423          	sd	s0,8(sp)
    800083bc:	01010413          	addi	s0,sp,16
    800083c0:	00003617          	auipc	a2,0x3
    800083c4:	54060613          	addi	a2,a2,1344 # 8000b900 <uart_tx_r>
    800083c8:	00003517          	auipc	a0,0x3
    800083cc:	54050513          	addi	a0,a0,1344 # 8000b908 <uart_tx_w>
    800083d0:	00063783          	ld	a5,0(a2)
    800083d4:	00053703          	ld	a4,0(a0)
    800083d8:	04f70263          	beq	a4,a5,8000841c <uartstart+0x68>
    800083dc:	100005b7          	lui	a1,0x10000
    800083e0:	00005817          	auipc	a6,0x5
    800083e4:	a4080813          	addi	a6,a6,-1472 # 8000ce20 <uart_tx_buf>
    800083e8:	01c0006f          	j	80008404 <uartstart+0x50>
    800083ec:	0006c703          	lbu	a4,0(a3)
    800083f0:	00f63023          	sd	a5,0(a2)
    800083f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800083f8:	00063783          	ld	a5,0(a2)
    800083fc:	00053703          	ld	a4,0(a0)
    80008400:	00f70e63          	beq	a4,a5,8000841c <uartstart+0x68>
    80008404:	01f7f713          	andi	a4,a5,31
    80008408:	00e806b3          	add	a3,a6,a4
    8000840c:	0055c703          	lbu	a4,5(a1)
    80008410:	00178793          	addi	a5,a5,1
    80008414:	02077713          	andi	a4,a4,32
    80008418:	fc071ae3          	bnez	a4,800083ec <uartstart+0x38>
    8000841c:	00813403          	ld	s0,8(sp)
    80008420:	01010113          	addi	sp,sp,16
    80008424:	00008067          	ret

0000000080008428 <uartgetc>:
    80008428:	ff010113          	addi	sp,sp,-16
    8000842c:	00813423          	sd	s0,8(sp)
    80008430:	01010413          	addi	s0,sp,16
    80008434:	10000737          	lui	a4,0x10000
    80008438:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000843c:	0017f793          	andi	a5,a5,1
    80008440:	00078c63          	beqz	a5,80008458 <uartgetc+0x30>
    80008444:	00074503          	lbu	a0,0(a4)
    80008448:	0ff57513          	andi	a0,a0,255
    8000844c:	00813403          	ld	s0,8(sp)
    80008450:	01010113          	addi	sp,sp,16
    80008454:	00008067          	ret
    80008458:	fff00513          	li	a0,-1
    8000845c:	ff1ff06f          	j	8000844c <uartgetc+0x24>

0000000080008460 <uartintr>:
    80008460:	100007b7          	lui	a5,0x10000
    80008464:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008468:	0017f793          	andi	a5,a5,1
    8000846c:	0a078463          	beqz	a5,80008514 <uartintr+0xb4>
    80008470:	fe010113          	addi	sp,sp,-32
    80008474:	00813823          	sd	s0,16(sp)
    80008478:	00913423          	sd	s1,8(sp)
    8000847c:	00113c23          	sd	ra,24(sp)
    80008480:	02010413          	addi	s0,sp,32
    80008484:	100004b7          	lui	s1,0x10000
    80008488:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000848c:	0ff57513          	andi	a0,a0,255
    80008490:	fffff097          	auipc	ra,0xfffff
    80008494:	534080e7          	jalr	1332(ra) # 800079c4 <consoleintr>
    80008498:	0054c783          	lbu	a5,5(s1)
    8000849c:	0017f793          	andi	a5,a5,1
    800084a0:	fe0794e3          	bnez	a5,80008488 <uartintr+0x28>
    800084a4:	00003617          	auipc	a2,0x3
    800084a8:	45c60613          	addi	a2,a2,1116 # 8000b900 <uart_tx_r>
    800084ac:	00003517          	auipc	a0,0x3
    800084b0:	45c50513          	addi	a0,a0,1116 # 8000b908 <uart_tx_w>
    800084b4:	00063783          	ld	a5,0(a2)
    800084b8:	00053703          	ld	a4,0(a0)
    800084bc:	04f70263          	beq	a4,a5,80008500 <uartintr+0xa0>
    800084c0:	100005b7          	lui	a1,0x10000
    800084c4:	00005817          	auipc	a6,0x5
    800084c8:	95c80813          	addi	a6,a6,-1700 # 8000ce20 <uart_tx_buf>
    800084cc:	01c0006f          	j	800084e8 <uartintr+0x88>
    800084d0:	0006c703          	lbu	a4,0(a3)
    800084d4:	00f63023          	sd	a5,0(a2)
    800084d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084dc:	00063783          	ld	a5,0(a2)
    800084e0:	00053703          	ld	a4,0(a0)
    800084e4:	00f70e63          	beq	a4,a5,80008500 <uartintr+0xa0>
    800084e8:	01f7f713          	andi	a4,a5,31
    800084ec:	00e806b3          	add	a3,a6,a4
    800084f0:	0055c703          	lbu	a4,5(a1)
    800084f4:	00178793          	addi	a5,a5,1
    800084f8:	02077713          	andi	a4,a4,32
    800084fc:	fc071ae3          	bnez	a4,800084d0 <uartintr+0x70>
    80008500:	01813083          	ld	ra,24(sp)
    80008504:	01013403          	ld	s0,16(sp)
    80008508:	00813483          	ld	s1,8(sp)
    8000850c:	02010113          	addi	sp,sp,32
    80008510:	00008067          	ret
    80008514:	00003617          	auipc	a2,0x3
    80008518:	3ec60613          	addi	a2,a2,1004 # 8000b900 <uart_tx_r>
    8000851c:	00003517          	auipc	a0,0x3
    80008520:	3ec50513          	addi	a0,a0,1004 # 8000b908 <uart_tx_w>
    80008524:	00063783          	ld	a5,0(a2)
    80008528:	00053703          	ld	a4,0(a0)
    8000852c:	04f70263          	beq	a4,a5,80008570 <uartintr+0x110>
    80008530:	100005b7          	lui	a1,0x10000
    80008534:	00005817          	auipc	a6,0x5
    80008538:	8ec80813          	addi	a6,a6,-1812 # 8000ce20 <uart_tx_buf>
    8000853c:	01c0006f          	j	80008558 <uartintr+0xf8>
    80008540:	0006c703          	lbu	a4,0(a3)
    80008544:	00f63023          	sd	a5,0(a2)
    80008548:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000854c:	00063783          	ld	a5,0(a2)
    80008550:	00053703          	ld	a4,0(a0)
    80008554:	02f70063          	beq	a4,a5,80008574 <uartintr+0x114>
    80008558:	01f7f713          	andi	a4,a5,31
    8000855c:	00e806b3          	add	a3,a6,a4
    80008560:	0055c703          	lbu	a4,5(a1)
    80008564:	00178793          	addi	a5,a5,1
    80008568:	02077713          	andi	a4,a4,32
    8000856c:	fc071ae3          	bnez	a4,80008540 <uartintr+0xe0>
    80008570:	00008067          	ret
    80008574:	00008067          	ret

0000000080008578 <kinit>:
    80008578:	fc010113          	addi	sp,sp,-64
    8000857c:	02913423          	sd	s1,40(sp)
    80008580:	fffff7b7          	lui	a5,0xfffff
    80008584:	00006497          	auipc	s1,0x6
    80008588:	8bb48493          	addi	s1,s1,-1861 # 8000de3f <end+0xfff>
    8000858c:	02813823          	sd	s0,48(sp)
    80008590:	01313c23          	sd	s3,24(sp)
    80008594:	00f4f4b3          	and	s1,s1,a5
    80008598:	02113c23          	sd	ra,56(sp)
    8000859c:	03213023          	sd	s2,32(sp)
    800085a0:	01413823          	sd	s4,16(sp)
    800085a4:	01513423          	sd	s5,8(sp)
    800085a8:	04010413          	addi	s0,sp,64
    800085ac:	000017b7          	lui	a5,0x1
    800085b0:	01100993          	li	s3,17
    800085b4:	00f487b3          	add	a5,s1,a5
    800085b8:	01b99993          	slli	s3,s3,0x1b
    800085bc:	06f9e063          	bltu	s3,a5,8000861c <kinit+0xa4>
    800085c0:	00005a97          	auipc	s5,0x5
    800085c4:	880a8a93          	addi	s5,s5,-1920 # 8000ce40 <end>
    800085c8:	0754ec63          	bltu	s1,s5,80008640 <kinit+0xc8>
    800085cc:	0734fa63          	bgeu	s1,s3,80008640 <kinit+0xc8>
    800085d0:	00088a37          	lui	s4,0x88
    800085d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800085d8:	00003917          	auipc	s2,0x3
    800085dc:	33890913          	addi	s2,s2,824 # 8000b910 <kmem>
    800085e0:	00ca1a13          	slli	s4,s4,0xc
    800085e4:	0140006f          	j	800085f8 <kinit+0x80>
    800085e8:	000017b7          	lui	a5,0x1
    800085ec:	00f484b3          	add	s1,s1,a5
    800085f0:	0554e863          	bltu	s1,s5,80008640 <kinit+0xc8>
    800085f4:	0534f663          	bgeu	s1,s3,80008640 <kinit+0xc8>
    800085f8:	00001637          	lui	a2,0x1
    800085fc:	00100593          	li	a1,1
    80008600:	00048513          	mv	a0,s1
    80008604:	00000097          	auipc	ra,0x0
    80008608:	5e4080e7          	jalr	1508(ra) # 80008be8 <__memset>
    8000860c:	00093783          	ld	a5,0(s2)
    80008610:	00f4b023          	sd	a5,0(s1)
    80008614:	00993023          	sd	s1,0(s2)
    80008618:	fd4498e3          	bne	s1,s4,800085e8 <kinit+0x70>
    8000861c:	03813083          	ld	ra,56(sp)
    80008620:	03013403          	ld	s0,48(sp)
    80008624:	02813483          	ld	s1,40(sp)
    80008628:	02013903          	ld	s2,32(sp)
    8000862c:	01813983          	ld	s3,24(sp)
    80008630:	01013a03          	ld	s4,16(sp)
    80008634:	00813a83          	ld	s5,8(sp)
    80008638:	04010113          	addi	sp,sp,64
    8000863c:	00008067          	ret
    80008640:	00001517          	auipc	a0,0x1
    80008644:	0e050513          	addi	a0,a0,224 # 80009720 <digits+0x18>
    80008648:	fffff097          	auipc	ra,0xfffff
    8000864c:	4b4080e7          	jalr	1204(ra) # 80007afc <panic>

0000000080008650 <freerange>:
    80008650:	fc010113          	addi	sp,sp,-64
    80008654:	000017b7          	lui	a5,0x1
    80008658:	02913423          	sd	s1,40(sp)
    8000865c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008660:	009504b3          	add	s1,a0,s1
    80008664:	fffff537          	lui	a0,0xfffff
    80008668:	02813823          	sd	s0,48(sp)
    8000866c:	02113c23          	sd	ra,56(sp)
    80008670:	03213023          	sd	s2,32(sp)
    80008674:	01313c23          	sd	s3,24(sp)
    80008678:	01413823          	sd	s4,16(sp)
    8000867c:	01513423          	sd	s5,8(sp)
    80008680:	01613023          	sd	s6,0(sp)
    80008684:	04010413          	addi	s0,sp,64
    80008688:	00a4f4b3          	and	s1,s1,a0
    8000868c:	00f487b3          	add	a5,s1,a5
    80008690:	06f5e463          	bltu	a1,a5,800086f8 <freerange+0xa8>
    80008694:	00004a97          	auipc	s5,0x4
    80008698:	7aca8a93          	addi	s5,s5,1964 # 8000ce40 <end>
    8000869c:	0954e263          	bltu	s1,s5,80008720 <freerange+0xd0>
    800086a0:	01100993          	li	s3,17
    800086a4:	01b99993          	slli	s3,s3,0x1b
    800086a8:	0734fc63          	bgeu	s1,s3,80008720 <freerange+0xd0>
    800086ac:	00058a13          	mv	s4,a1
    800086b0:	00003917          	auipc	s2,0x3
    800086b4:	26090913          	addi	s2,s2,608 # 8000b910 <kmem>
    800086b8:	00002b37          	lui	s6,0x2
    800086bc:	0140006f          	j	800086d0 <freerange+0x80>
    800086c0:	000017b7          	lui	a5,0x1
    800086c4:	00f484b3          	add	s1,s1,a5
    800086c8:	0554ec63          	bltu	s1,s5,80008720 <freerange+0xd0>
    800086cc:	0534fa63          	bgeu	s1,s3,80008720 <freerange+0xd0>
    800086d0:	00001637          	lui	a2,0x1
    800086d4:	00100593          	li	a1,1
    800086d8:	00048513          	mv	a0,s1
    800086dc:	00000097          	auipc	ra,0x0
    800086e0:	50c080e7          	jalr	1292(ra) # 80008be8 <__memset>
    800086e4:	00093703          	ld	a4,0(s2)
    800086e8:	016487b3          	add	a5,s1,s6
    800086ec:	00e4b023          	sd	a4,0(s1)
    800086f0:	00993023          	sd	s1,0(s2)
    800086f4:	fcfa76e3          	bgeu	s4,a5,800086c0 <freerange+0x70>
    800086f8:	03813083          	ld	ra,56(sp)
    800086fc:	03013403          	ld	s0,48(sp)
    80008700:	02813483          	ld	s1,40(sp)
    80008704:	02013903          	ld	s2,32(sp)
    80008708:	01813983          	ld	s3,24(sp)
    8000870c:	01013a03          	ld	s4,16(sp)
    80008710:	00813a83          	ld	s5,8(sp)
    80008714:	00013b03          	ld	s6,0(sp)
    80008718:	04010113          	addi	sp,sp,64
    8000871c:	00008067          	ret
    80008720:	00001517          	auipc	a0,0x1
    80008724:	00050513          	mv	a0,a0
    80008728:	fffff097          	auipc	ra,0xfffff
    8000872c:	3d4080e7          	jalr	980(ra) # 80007afc <panic>

0000000080008730 <kfree>:
    80008730:	fe010113          	addi	sp,sp,-32
    80008734:	00813823          	sd	s0,16(sp)
    80008738:	00113c23          	sd	ra,24(sp)
    8000873c:	00913423          	sd	s1,8(sp)
    80008740:	02010413          	addi	s0,sp,32
    80008744:	03451793          	slli	a5,a0,0x34
    80008748:	04079c63          	bnez	a5,800087a0 <kfree+0x70>
    8000874c:	00004797          	auipc	a5,0x4
    80008750:	6f478793          	addi	a5,a5,1780 # 8000ce40 <end>
    80008754:	00050493          	mv	s1,a0
    80008758:	04f56463          	bltu	a0,a5,800087a0 <kfree+0x70>
    8000875c:	01100793          	li	a5,17
    80008760:	01b79793          	slli	a5,a5,0x1b
    80008764:	02f57e63          	bgeu	a0,a5,800087a0 <kfree+0x70>
    80008768:	00001637          	lui	a2,0x1
    8000876c:	00100593          	li	a1,1
    80008770:	00000097          	auipc	ra,0x0
    80008774:	478080e7          	jalr	1144(ra) # 80008be8 <__memset>
    80008778:	00003797          	auipc	a5,0x3
    8000877c:	19878793          	addi	a5,a5,408 # 8000b910 <kmem>
    80008780:	0007b703          	ld	a4,0(a5)
    80008784:	01813083          	ld	ra,24(sp)
    80008788:	01013403          	ld	s0,16(sp)
    8000878c:	00e4b023          	sd	a4,0(s1)
    80008790:	0097b023          	sd	s1,0(a5)
    80008794:	00813483          	ld	s1,8(sp)
    80008798:	02010113          	addi	sp,sp,32
    8000879c:	00008067          	ret
    800087a0:	00001517          	auipc	a0,0x1
    800087a4:	f8050513          	addi	a0,a0,-128 # 80009720 <digits+0x18>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	354080e7          	jalr	852(ra) # 80007afc <panic>

00000000800087b0 <kalloc>:
    800087b0:	fe010113          	addi	sp,sp,-32
    800087b4:	00813823          	sd	s0,16(sp)
    800087b8:	00913423          	sd	s1,8(sp)
    800087bc:	00113c23          	sd	ra,24(sp)
    800087c0:	02010413          	addi	s0,sp,32
    800087c4:	00003797          	auipc	a5,0x3
    800087c8:	14c78793          	addi	a5,a5,332 # 8000b910 <kmem>
    800087cc:	0007b483          	ld	s1,0(a5)
    800087d0:	02048063          	beqz	s1,800087f0 <kalloc+0x40>
    800087d4:	0004b703          	ld	a4,0(s1)
    800087d8:	00001637          	lui	a2,0x1
    800087dc:	00500593          	li	a1,5
    800087e0:	00048513          	mv	a0,s1
    800087e4:	00e7b023          	sd	a4,0(a5)
    800087e8:	00000097          	auipc	ra,0x0
    800087ec:	400080e7          	jalr	1024(ra) # 80008be8 <__memset>
    800087f0:	01813083          	ld	ra,24(sp)
    800087f4:	01013403          	ld	s0,16(sp)
    800087f8:	00048513          	mv	a0,s1
    800087fc:	00813483          	ld	s1,8(sp)
    80008800:	02010113          	addi	sp,sp,32
    80008804:	00008067          	ret

0000000080008808 <initlock>:
    80008808:	ff010113          	addi	sp,sp,-16
    8000880c:	00813423          	sd	s0,8(sp)
    80008810:	01010413          	addi	s0,sp,16
    80008814:	00813403          	ld	s0,8(sp)
    80008818:	00b53423          	sd	a1,8(a0)
    8000881c:	00052023          	sw	zero,0(a0)
    80008820:	00053823          	sd	zero,16(a0)
    80008824:	01010113          	addi	sp,sp,16
    80008828:	00008067          	ret

000000008000882c <acquire>:
    8000882c:	fe010113          	addi	sp,sp,-32
    80008830:	00813823          	sd	s0,16(sp)
    80008834:	00913423          	sd	s1,8(sp)
    80008838:	00113c23          	sd	ra,24(sp)
    8000883c:	01213023          	sd	s2,0(sp)
    80008840:	02010413          	addi	s0,sp,32
    80008844:	00050493          	mv	s1,a0
    80008848:	10002973          	csrr	s2,sstatus
    8000884c:	100027f3          	csrr	a5,sstatus
    80008850:	ffd7f793          	andi	a5,a5,-3
    80008854:	10079073          	csrw	sstatus,a5
    80008858:	fffff097          	auipc	ra,0xfffff
    8000885c:	8ec080e7          	jalr	-1812(ra) # 80007144 <mycpu>
    80008860:	07852783          	lw	a5,120(a0)
    80008864:	06078e63          	beqz	a5,800088e0 <acquire+0xb4>
    80008868:	fffff097          	auipc	ra,0xfffff
    8000886c:	8dc080e7          	jalr	-1828(ra) # 80007144 <mycpu>
    80008870:	07852783          	lw	a5,120(a0)
    80008874:	0004a703          	lw	a4,0(s1)
    80008878:	0017879b          	addiw	a5,a5,1
    8000887c:	06f52c23          	sw	a5,120(a0)
    80008880:	04071063          	bnez	a4,800088c0 <acquire+0x94>
    80008884:	00100713          	li	a4,1
    80008888:	00070793          	mv	a5,a4
    8000888c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008890:	0007879b          	sext.w	a5,a5
    80008894:	fe079ae3          	bnez	a5,80008888 <acquire+0x5c>
    80008898:	0ff0000f          	fence
    8000889c:	fffff097          	auipc	ra,0xfffff
    800088a0:	8a8080e7          	jalr	-1880(ra) # 80007144 <mycpu>
    800088a4:	01813083          	ld	ra,24(sp)
    800088a8:	01013403          	ld	s0,16(sp)
    800088ac:	00a4b823          	sd	a0,16(s1)
    800088b0:	00013903          	ld	s2,0(sp)
    800088b4:	00813483          	ld	s1,8(sp)
    800088b8:	02010113          	addi	sp,sp,32
    800088bc:	00008067          	ret
    800088c0:	0104b903          	ld	s2,16(s1)
    800088c4:	fffff097          	auipc	ra,0xfffff
    800088c8:	880080e7          	jalr	-1920(ra) # 80007144 <mycpu>
    800088cc:	faa91ce3          	bne	s2,a0,80008884 <acquire+0x58>
    800088d0:	00001517          	auipc	a0,0x1
    800088d4:	e5850513          	addi	a0,a0,-424 # 80009728 <digits+0x20>
    800088d8:	fffff097          	auipc	ra,0xfffff
    800088dc:	224080e7          	jalr	548(ra) # 80007afc <panic>
    800088e0:	00195913          	srli	s2,s2,0x1
    800088e4:	fffff097          	auipc	ra,0xfffff
    800088e8:	860080e7          	jalr	-1952(ra) # 80007144 <mycpu>
    800088ec:	00197913          	andi	s2,s2,1
    800088f0:	07252e23          	sw	s2,124(a0)
    800088f4:	f75ff06f          	j	80008868 <acquire+0x3c>

00000000800088f8 <release>:
    800088f8:	fe010113          	addi	sp,sp,-32
    800088fc:	00813823          	sd	s0,16(sp)
    80008900:	00113c23          	sd	ra,24(sp)
    80008904:	00913423          	sd	s1,8(sp)
    80008908:	01213023          	sd	s2,0(sp)
    8000890c:	02010413          	addi	s0,sp,32
    80008910:	00052783          	lw	a5,0(a0)
    80008914:	00079a63          	bnez	a5,80008928 <release+0x30>
    80008918:	00001517          	auipc	a0,0x1
    8000891c:	e1850513          	addi	a0,a0,-488 # 80009730 <digits+0x28>
    80008920:	fffff097          	auipc	ra,0xfffff
    80008924:	1dc080e7          	jalr	476(ra) # 80007afc <panic>
    80008928:	01053903          	ld	s2,16(a0)
    8000892c:	00050493          	mv	s1,a0
    80008930:	fffff097          	auipc	ra,0xfffff
    80008934:	814080e7          	jalr	-2028(ra) # 80007144 <mycpu>
    80008938:	fea910e3          	bne	s2,a0,80008918 <release+0x20>
    8000893c:	0004b823          	sd	zero,16(s1)
    80008940:	0ff0000f          	fence
    80008944:	0f50000f          	fence	iorw,ow
    80008948:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000894c:	ffffe097          	auipc	ra,0xffffe
    80008950:	7f8080e7          	jalr	2040(ra) # 80007144 <mycpu>
    80008954:	100027f3          	csrr	a5,sstatus
    80008958:	0027f793          	andi	a5,a5,2
    8000895c:	04079a63          	bnez	a5,800089b0 <release+0xb8>
    80008960:	07852783          	lw	a5,120(a0)
    80008964:	02f05e63          	blez	a5,800089a0 <release+0xa8>
    80008968:	fff7871b          	addiw	a4,a5,-1
    8000896c:	06e52c23          	sw	a4,120(a0)
    80008970:	00071c63          	bnez	a4,80008988 <release+0x90>
    80008974:	07c52783          	lw	a5,124(a0)
    80008978:	00078863          	beqz	a5,80008988 <release+0x90>
    8000897c:	100027f3          	csrr	a5,sstatus
    80008980:	0027e793          	ori	a5,a5,2
    80008984:	10079073          	csrw	sstatus,a5
    80008988:	01813083          	ld	ra,24(sp)
    8000898c:	01013403          	ld	s0,16(sp)
    80008990:	00813483          	ld	s1,8(sp)
    80008994:	00013903          	ld	s2,0(sp)
    80008998:	02010113          	addi	sp,sp,32
    8000899c:	00008067          	ret
    800089a0:	00001517          	auipc	a0,0x1
    800089a4:	db050513          	addi	a0,a0,-592 # 80009750 <digits+0x48>
    800089a8:	fffff097          	auipc	ra,0xfffff
    800089ac:	154080e7          	jalr	340(ra) # 80007afc <panic>
    800089b0:	00001517          	auipc	a0,0x1
    800089b4:	d8850513          	addi	a0,a0,-632 # 80009738 <digits+0x30>
    800089b8:	fffff097          	auipc	ra,0xfffff
    800089bc:	144080e7          	jalr	324(ra) # 80007afc <panic>

00000000800089c0 <holding>:
    800089c0:	00052783          	lw	a5,0(a0)
    800089c4:	00079663          	bnez	a5,800089d0 <holding+0x10>
    800089c8:	00000513          	li	a0,0
    800089cc:	00008067          	ret
    800089d0:	fe010113          	addi	sp,sp,-32
    800089d4:	00813823          	sd	s0,16(sp)
    800089d8:	00913423          	sd	s1,8(sp)
    800089dc:	00113c23          	sd	ra,24(sp)
    800089e0:	02010413          	addi	s0,sp,32
    800089e4:	01053483          	ld	s1,16(a0)
    800089e8:	ffffe097          	auipc	ra,0xffffe
    800089ec:	75c080e7          	jalr	1884(ra) # 80007144 <mycpu>
    800089f0:	01813083          	ld	ra,24(sp)
    800089f4:	01013403          	ld	s0,16(sp)
    800089f8:	40a48533          	sub	a0,s1,a0
    800089fc:	00153513          	seqz	a0,a0
    80008a00:	00813483          	ld	s1,8(sp)
    80008a04:	02010113          	addi	sp,sp,32
    80008a08:	00008067          	ret

0000000080008a0c <push_off>:
    80008a0c:	fe010113          	addi	sp,sp,-32
    80008a10:	00813823          	sd	s0,16(sp)
    80008a14:	00113c23          	sd	ra,24(sp)
    80008a18:	00913423          	sd	s1,8(sp)
    80008a1c:	02010413          	addi	s0,sp,32
    80008a20:	100024f3          	csrr	s1,sstatus
    80008a24:	100027f3          	csrr	a5,sstatus
    80008a28:	ffd7f793          	andi	a5,a5,-3
    80008a2c:	10079073          	csrw	sstatus,a5
    80008a30:	ffffe097          	auipc	ra,0xffffe
    80008a34:	714080e7          	jalr	1812(ra) # 80007144 <mycpu>
    80008a38:	07852783          	lw	a5,120(a0)
    80008a3c:	02078663          	beqz	a5,80008a68 <push_off+0x5c>
    80008a40:	ffffe097          	auipc	ra,0xffffe
    80008a44:	704080e7          	jalr	1796(ra) # 80007144 <mycpu>
    80008a48:	07852783          	lw	a5,120(a0)
    80008a4c:	01813083          	ld	ra,24(sp)
    80008a50:	01013403          	ld	s0,16(sp)
    80008a54:	0017879b          	addiw	a5,a5,1
    80008a58:	06f52c23          	sw	a5,120(a0)
    80008a5c:	00813483          	ld	s1,8(sp)
    80008a60:	02010113          	addi	sp,sp,32
    80008a64:	00008067          	ret
    80008a68:	0014d493          	srli	s1,s1,0x1
    80008a6c:	ffffe097          	auipc	ra,0xffffe
    80008a70:	6d8080e7          	jalr	1752(ra) # 80007144 <mycpu>
    80008a74:	0014f493          	andi	s1,s1,1
    80008a78:	06952e23          	sw	s1,124(a0)
    80008a7c:	fc5ff06f          	j	80008a40 <push_off+0x34>

0000000080008a80 <pop_off>:
    80008a80:	ff010113          	addi	sp,sp,-16
    80008a84:	00813023          	sd	s0,0(sp)
    80008a88:	00113423          	sd	ra,8(sp)
    80008a8c:	01010413          	addi	s0,sp,16
    80008a90:	ffffe097          	auipc	ra,0xffffe
    80008a94:	6b4080e7          	jalr	1716(ra) # 80007144 <mycpu>
    80008a98:	100027f3          	csrr	a5,sstatus
    80008a9c:	0027f793          	andi	a5,a5,2
    80008aa0:	04079663          	bnez	a5,80008aec <pop_off+0x6c>
    80008aa4:	07852783          	lw	a5,120(a0)
    80008aa8:	02f05a63          	blez	a5,80008adc <pop_off+0x5c>
    80008aac:	fff7871b          	addiw	a4,a5,-1
    80008ab0:	06e52c23          	sw	a4,120(a0)
    80008ab4:	00071c63          	bnez	a4,80008acc <pop_off+0x4c>
    80008ab8:	07c52783          	lw	a5,124(a0)
    80008abc:	00078863          	beqz	a5,80008acc <pop_off+0x4c>
    80008ac0:	100027f3          	csrr	a5,sstatus
    80008ac4:	0027e793          	ori	a5,a5,2
    80008ac8:	10079073          	csrw	sstatus,a5
    80008acc:	00813083          	ld	ra,8(sp)
    80008ad0:	00013403          	ld	s0,0(sp)
    80008ad4:	01010113          	addi	sp,sp,16
    80008ad8:	00008067          	ret
    80008adc:	00001517          	auipc	a0,0x1
    80008ae0:	c7450513          	addi	a0,a0,-908 # 80009750 <digits+0x48>
    80008ae4:	fffff097          	auipc	ra,0xfffff
    80008ae8:	018080e7          	jalr	24(ra) # 80007afc <panic>
    80008aec:	00001517          	auipc	a0,0x1
    80008af0:	c4c50513          	addi	a0,a0,-948 # 80009738 <digits+0x30>
    80008af4:	fffff097          	auipc	ra,0xfffff
    80008af8:	008080e7          	jalr	8(ra) # 80007afc <panic>

0000000080008afc <push_on>:
    80008afc:	fe010113          	addi	sp,sp,-32
    80008b00:	00813823          	sd	s0,16(sp)
    80008b04:	00113c23          	sd	ra,24(sp)
    80008b08:	00913423          	sd	s1,8(sp)
    80008b0c:	02010413          	addi	s0,sp,32
    80008b10:	100024f3          	csrr	s1,sstatus
    80008b14:	100027f3          	csrr	a5,sstatus
    80008b18:	0027e793          	ori	a5,a5,2
    80008b1c:	10079073          	csrw	sstatus,a5
    80008b20:	ffffe097          	auipc	ra,0xffffe
    80008b24:	624080e7          	jalr	1572(ra) # 80007144 <mycpu>
    80008b28:	07852783          	lw	a5,120(a0)
    80008b2c:	02078663          	beqz	a5,80008b58 <push_on+0x5c>
    80008b30:	ffffe097          	auipc	ra,0xffffe
    80008b34:	614080e7          	jalr	1556(ra) # 80007144 <mycpu>
    80008b38:	07852783          	lw	a5,120(a0)
    80008b3c:	01813083          	ld	ra,24(sp)
    80008b40:	01013403          	ld	s0,16(sp)
    80008b44:	0017879b          	addiw	a5,a5,1
    80008b48:	06f52c23          	sw	a5,120(a0)
    80008b4c:	00813483          	ld	s1,8(sp)
    80008b50:	02010113          	addi	sp,sp,32
    80008b54:	00008067          	ret
    80008b58:	0014d493          	srli	s1,s1,0x1
    80008b5c:	ffffe097          	auipc	ra,0xffffe
    80008b60:	5e8080e7          	jalr	1512(ra) # 80007144 <mycpu>
    80008b64:	0014f493          	andi	s1,s1,1
    80008b68:	06952e23          	sw	s1,124(a0)
    80008b6c:	fc5ff06f          	j	80008b30 <push_on+0x34>

0000000080008b70 <pop_on>:
    80008b70:	ff010113          	addi	sp,sp,-16
    80008b74:	00813023          	sd	s0,0(sp)
    80008b78:	00113423          	sd	ra,8(sp)
    80008b7c:	01010413          	addi	s0,sp,16
    80008b80:	ffffe097          	auipc	ra,0xffffe
    80008b84:	5c4080e7          	jalr	1476(ra) # 80007144 <mycpu>
    80008b88:	100027f3          	csrr	a5,sstatus
    80008b8c:	0027f793          	andi	a5,a5,2
    80008b90:	04078463          	beqz	a5,80008bd8 <pop_on+0x68>
    80008b94:	07852783          	lw	a5,120(a0)
    80008b98:	02f05863          	blez	a5,80008bc8 <pop_on+0x58>
    80008b9c:	fff7879b          	addiw	a5,a5,-1
    80008ba0:	06f52c23          	sw	a5,120(a0)
    80008ba4:	07853783          	ld	a5,120(a0)
    80008ba8:	00079863          	bnez	a5,80008bb8 <pop_on+0x48>
    80008bac:	100027f3          	csrr	a5,sstatus
    80008bb0:	ffd7f793          	andi	a5,a5,-3
    80008bb4:	10079073          	csrw	sstatus,a5
    80008bb8:	00813083          	ld	ra,8(sp)
    80008bbc:	00013403          	ld	s0,0(sp)
    80008bc0:	01010113          	addi	sp,sp,16
    80008bc4:	00008067          	ret
    80008bc8:	00001517          	auipc	a0,0x1
    80008bcc:	bb050513          	addi	a0,a0,-1104 # 80009778 <digits+0x70>
    80008bd0:	fffff097          	auipc	ra,0xfffff
    80008bd4:	f2c080e7          	jalr	-212(ra) # 80007afc <panic>
    80008bd8:	00001517          	auipc	a0,0x1
    80008bdc:	b8050513          	addi	a0,a0,-1152 # 80009758 <digits+0x50>
    80008be0:	fffff097          	auipc	ra,0xfffff
    80008be4:	f1c080e7          	jalr	-228(ra) # 80007afc <panic>

0000000080008be8 <__memset>:
    80008be8:	ff010113          	addi	sp,sp,-16
    80008bec:	00813423          	sd	s0,8(sp)
    80008bf0:	01010413          	addi	s0,sp,16
    80008bf4:	1a060e63          	beqz	a2,80008db0 <__memset+0x1c8>
    80008bf8:	40a007b3          	neg	a5,a0
    80008bfc:	0077f793          	andi	a5,a5,7
    80008c00:	00778693          	addi	a3,a5,7
    80008c04:	00b00813          	li	a6,11
    80008c08:	0ff5f593          	andi	a1,a1,255
    80008c0c:	fff6071b          	addiw	a4,a2,-1
    80008c10:	1b06e663          	bltu	a3,a6,80008dbc <__memset+0x1d4>
    80008c14:	1cd76463          	bltu	a4,a3,80008ddc <__memset+0x1f4>
    80008c18:	1a078e63          	beqz	a5,80008dd4 <__memset+0x1ec>
    80008c1c:	00b50023          	sb	a1,0(a0)
    80008c20:	00100713          	li	a4,1
    80008c24:	1ae78463          	beq	a5,a4,80008dcc <__memset+0x1e4>
    80008c28:	00b500a3          	sb	a1,1(a0)
    80008c2c:	00200713          	li	a4,2
    80008c30:	1ae78a63          	beq	a5,a4,80008de4 <__memset+0x1fc>
    80008c34:	00b50123          	sb	a1,2(a0)
    80008c38:	00300713          	li	a4,3
    80008c3c:	18e78463          	beq	a5,a4,80008dc4 <__memset+0x1dc>
    80008c40:	00b501a3          	sb	a1,3(a0)
    80008c44:	00400713          	li	a4,4
    80008c48:	1ae78263          	beq	a5,a4,80008dec <__memset+0x204>
    80008c4c:	00b50223          	sb	a1,4(a0)
    80008c50:	00500713          	li	a4,5
    80008c54:	1ae78063          	beq	a5,a4,80008df4 <__memset+0x20c>
    80008c58:	00b502a3          	sb	a1,5(a0)
    80008c5c:	00700713          	li	a4,7
    80008c60:	18e79e63          	bne	a5,a4,80008dfc <__memset+0x214>
    80008c64:	00b50323          	sb	a1,6(a0)
    80008c68:	00700e93          	li	t4,7
    80008c6c:	00859713          	slli	a4,a1,0x8
    80008c70:	00e5e733          	or	a4,a1,a4
    80008c74:	01059e13          	slli	t3,a1,0x10
    80008c78:	01c76e33          	or	t3,a4,t3
    80008c7c:	01859313          	slli	t1,a1,0x18
    80008c80:	006e6333          	or	t1,t3,t1
    80008c84:	02059893          	slli	a7,a1,0x20
    80008c88:	40f60e3b          	subw	t3,a2,a5
    80008c8c:	011368b3          	or	a7,t1,a7
    80008c90:	02859813          	slli	a6,a1,0x28
    80008c94:	0108e833          	or	a6,a7,a6
    80008c98:	03059693          	slli	a3,a1,0x30
    80008c9c:	003e589b          	srliw	a7,t3,0x3
    80008ca0:	00d866b3          	or	a3,a6,a3
    80008ca4:	03859713          	slli	a4,a1,0x38
    80008ca8:	00389813          	slli	a6,a7,0x3
    80008cac:	00f507b3          	add	a5,a0,a5
    80008cb0:	00e6e733          	or	a4,a3,a4
    80008cb4:	000e089b          	sext.w	a7,t3
    80008cb8:	00f806b3          	add	a3,a6,a5
    80008cbc:	00e7b023          	sd	a4,0(a5)
    80008cc0:	00878793          	addi	a5,a5,8
    80008cc4:	fed79ce3          	bne	a5,a3,80008cbc <__memset+0xd4>
    80008cc8:	ff8e7793          	andi	a5,t3,-8
    80008ccc:	0007871b          	sext.w	a4,a5
    80008cd0:	01d787bb          	addw	a5,a5,t4
    80008cd4:	0ce88e63          	beq	a7,a4,80008db0 <__memset+0x1c8>
    80008cd8:	00f50733          	add	a4,a0,a5
    80008cdc:	00b70023          	sb	a1,0(a4)
    80008ce0:	0017871b          	addiw	a4,a5,1
    80008ce4:	0cc77663          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008ce8:	00e50733          	add	a4,a0,a4
    80008cec:	00b70023          	sb	a1,0(a4)
    80008cf0:	0027871b          	addiw	a4,a5,2
    80008cf4:	0ac77e63          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008cf8:	00e50733          	add	a4,a0,a4
    80008cfc:	00b70023          	sb	a1,0(a4)
    80008d00:	0037871b          	addiw	a4,a5,3
    80008d04:	0ac77663          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d08:	00e50733          	add	a4,a0,a4
    80008d0c:	00b70023          	sb	a1,0(a4)
    80008d10:	0047871b          	addiw	a4,a5,4
    80008d14:	08c77e63          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d18:	00e50733          	add	a4,a0,a4
    80008d1c:	00b70023          	sb	a1,0(a4)
    80008d20:	0057871b          	addiw	a4,a5,5
    80008d24:	08c77663          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d28:	00e50733          	add	a4,a0,a4
    80008d2c:	00b70023          	sb	a1,0(a4)
    80008d30:	0067871b          	addiw	a4,a5,6
    80008d34:	06c77e63          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d38:	00e50733          	add	a4,a0,a4
    80008d3c:	00b70023          	sb	a1,0(a4)
    80008d40:	0077871b          	addiw	a4,a5,7
    80008d44:	06c77663          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d48:	00e50733          	add	a4,a0,a4
    80008d4c:	00b70023          	sb	a1,0(a4)
    80008d50:	0087871b          	addiw	a4,a5,8
    80008d54:	04c77e63          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d58:	00e50733          	add	a4,a0,a4
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	0097871b          	addiw	a4,a5,9
    80008d64:	04c77663          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	00a7871b          	addiw	a4,a5,10
    80008d74:	02c77e63          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	00b7871b          	addiw	a4,a5,11
    80008d84:	02c77663          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	00c7871b          	addiw	a4,a5,12
    80008d94:	00c77e63          	bgeu	a4,a2,80008db0 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	00d7879b          	addiw	a5,a5,13
    80008da4:	00c7f663          	bgeu	a5,a2,80008db0 <__memset+0x1c8>
    80008da8:	00f507b3          	add	a5,a0,a5
    80008dac:	00b78023          	sb	a1,0(a5)
    80008db0:	00813403          	ld	s0,8(sp)
    80008db4:	01010113          	addi	sp,sp,16
    80008db8:	00008067          	ret
    80008dbc:	00b00693          	li	a3,11
    80008dc0:	e55ff06f          	j	80008c14 <__memset+0x2c>
    80008dc4:	00300e93          	li	t4,3
    80008dc8:	ea5ff06f          	j	80008c6c <__memset+0x84>
    80008dcc:	00100e93          	li	t4,1
    80008dd0:	e9dff06f          	j	80008c6c <__memset+0x84>
    80008dd4:	00000e93          	li	t4,0
    80008dd8:	e95ff06f          	j	80008c6c <__memset+0x84>
    80008ddc:	00000793          	li	a5,0
    80008de0:	ef9ff06f          	j	80008cd8 <__memset+0xf0>
    80008de4:	00200e93          	li	t4,2
    80008de8:	e85ff06f          	j	80008c6c <__memset+0x84>
    80008dec:	00400e93          	li	t4,4
    80008df0:	e7dff06f          	j	80008c6c <__memset+0x84>
    80008df4:	00500e93          	li	t4,5
    80008df8:	e75ff06f          	j	80008c6c <__memset+0x84>
    80008dfc:	00600e93          	li	t4,6
    80008e00:	e6dff06f          	j	80008c6c <__memset+0x84>

0000000080008e04 <__memmove>:
    80008e04:	ff010113          	addi	sp,sp,-16
    80008e08:	00813423          	sd	s0,8(sp)
    80008e0c:	01010413          	addi	s0,sp,16
    80008e10:	0e060863          	beqz	a2,80008f00 <__memmove+0xfc>
    80008e14:	fff6069b          	addiw	a3,a2,-1
    80008e18:	0006881b          	sext.w	a6,a3
    80008e1c:	0ea5e863          	bltu	a1,a0,80008f0c <__memmove+0x108>
    80008e20:	00758713          	addi	a4,a1,7
    80008e24:	00a5e7b3          	or	a5,a1,a0
    80008e28:	40a70733          	sub	a4,a4,a0
    80008e2c:	0077f793          	andi	a5,a5,7
    80008e30:	00f73713          	sltiu	a4,a4,15
    80008e34:	00174713          	xori	a4,a4,1
    80008e38:	0017b793          	seqz	a5,a5
    80008e3c:	00e7f7b3          	and	a5,a5,a4
    80008e40:	10078863          	beqz	a5,80008f50 <__memmove+0x14c>
    80008e44:	00900793          	li	a5,9
    80008e48:	1107f463          	bgeu	a5,a6,80008f50 <__memmove+0x14c>
    80008e4c:	0036581b          	srliw	a6,a2,0x3
    80008e50:	fff8081b          	addiw	a6,a6,-1
    80008e54:	02081813          	slli	a6,a6,0x20
    80008e58:	01d85893          	srli	a7,a6,0x1d
    80008e5c:	00858813          	addi	a6,a1,8
    80008e60:	00058793          	mv	a5,a1
    80008e64:	00050713          	mv	a4,a0
    80008e68:	01088833          	add	a6,a7,a6
    80008e6c:	0007b883          	ld	a7,0(a5)
    80008e70:	00878793          	addi	a5,a5,8
    80008e74:	00870713          	addi	a4,a4,8
    80008e78:	ff173c23          	sd	a7,-8(a4)
    80008e7c:	ff0798e3          	bne	a5,a6,80008e6c <__memmove+0x68>
    80008e80:	ff867713          	andi	a4,a2,-8
    80008e84:	02071793          	slli	a5,a4,0x20
    80008e88:	0207d793          	srli	a5,a5,0x20
    80008e8c:	00f585b3          	add	a1,a1,a5
    80008e90:	40e686bb          	subw	a3,a3,a4
    80008e94:	00f507b3          	add	a5,a0,a5
    80008e98:	06e60463          	beq	a2,a4,80008f00 <__memmove+0xfc>
    80008e9c:	0005c703          	lbu	a4,0(a1)
    80008ea0:	00e78023          	sb	a4,0(a5)
    80008ea4:	04068e63          	beqz	a3,80008f00 <__memmove+0xfc>
    80008ea8:	0015c603          	lbu	a2,1(a1)
    80008eac:	00100713          	li	a4,1
    80008eb0:	00c780a3          	sb	a2,1(a5)
    80008eb4:	04e68663          	beq	a3,a4,80008f00 <__memmove+0xfc>
    80008eb8:	0025c603          	lbu	a2,2(a1)
    80008ebc:	00200713          	li	a4,2
    80008ec0:	00c78123          	sb	a2,2(a5)
    80008ec4:	02e68e63          	beq	a3,a4,80008f00 <__memmove+0xfc>
    80008ec8:	0035c603          	lbu	a2,3(a1)
    80008ecc:	00300713          	li	a4,3
    80008ed0:	00c781a3          	sb	a2,3(a5)
    80008ed4:	02e68663          	beq	a3,a4,80008f00 <__memmove+0xfc>
    80008ed8:	0045c603          	lbu	a2,4(a1)
    80008edc:	00400713          	li	a4,4
    80008ee0:	00c78223          	sb	a2,4(a5)
    80008ee4:	00e68e63          	beq	a3,a4,80008f00 <__memmove+0xfc>
    80008ee8:	0055c603          	lbu	a2,5(a1)
    80008eec:	00500713          	li	a4,5
    80008ef0:	00c782a3          	sb	a2,5(a5)
    80008ef4:	00e68663          	beq	a3,a4,80008f00 <__memmove+0xfc>
    80008ef8:	0065c703          	lbu	a4,6(a1)
    80008efc:	00e78323          	sb	a4,6(a5)
    80008f00:	00813403          	ld	s0,8(sp)
    80008f04:	01010113          	addi	sp,sp,16
    80008f08:	00008067          	ret
    80008f0c:	02061713          	slli	a4,a2,0x20
    80008f10:	02075713          	srli	a4,a4,0x20
    80008f14:	00e587b3          	add	a5,a1,a4
    80008f18:	f0f574e3          	bgeu	a0,a5,80008e20 <__memmove+0x1c>
    80008f1c:	02069613          	slli	a2,a3,0x20
    80008f20:	02065613          	srli	a2,a2,0x20
    80008f24:	fff64613          	not	a2,a2
    80008f28:	00e50733          	add	a4,a0,a4
    80008f2c:	00c78633          	add	a2,a5,a2
    80008f30:	fff7c683          	lbu	a3,-1(a5)
    80008f34:	fff78793          	addi	a5,a5,-1
    80008f38:	fff70713          	addi	a4,a4,-1
    80008f3c:	00d70023          	sb	a3,0(a4)
    80008f40:	fec798e3          	bne	a5,a2,80008f30 <__memmove+0x12c>
    80008f44:	00813403          	ld	s0,8(sp)
    80008f48:	01010113          	addi	sp,sp,16
    80008f4c:	00008067          	ret
    80008f50:	02069713          	slli	a4,a3,0x20
    80008f54:	02075713          	srli	a4,a4,0x20
    80008f58:	00170713          	addi	a4,a4,1
    80008f5c:	00e50733          	add	a4,a0,a4
    80008f60:	00050793          	mv	a5,a0
    80008f64:	0005c683          	lbu	a3,0(a1)
    80008f68:	00178793          	addi	a5,a5,1
    80008f6c:	00158593          	addi	a1,a1,1
    80008f70:	fed78fa3          	sb	a3,-1(a5)
    80008f74:	fee798e3          	bne	a5,a4,80008f64 <__memmove+0x160>
    80008f78:	f89ff06f          	j	80008f00 <__memmove+0xfc>
	...
