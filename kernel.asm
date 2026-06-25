
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8e813103          	ld	sp,-1816(sp) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	679060ef          	jal	ra,80006e94 <start>

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
    80001248:	0e4020ef          	jal	ra,8000332c <HandleInterupt>

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
    80001364:	5b890913          	addi	s2,s2,1464 # 8000b918 <mutex>
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
    800013c0:	55453503          	ld	a0,1364(a0) # 8000b910 <done>
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
    8000146c:	4b050513          	addi	a0,a0,1200 # 8000b918 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	228080e7          	jalr	552(ra) # 80001698 <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000a517          	auipc	a0,0xa
    80001480:	49450513          	addi	a0,a0,1172 # 8000b910 <done>
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
    800014d8:	43c48493          	addi	s1,s1,1084 # 8000b910 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	264080e7          	jalr	612(ra) # 80001748 <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000a517          	auipc	a0,0xa
    800014f0:	42c53503          	ld	a0,1068(a0) # 8000b918 <mutex>
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
    80001834:	f08080e7          	jalr	-248(ra) # 80002738 <userMainK>
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
    80001888:	f14080e7          	jalr	-236(ra) # 80003798 <start_main_thread>
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
    80001918:	488080e7          	jalr	1160(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    8000191c:	01093583          	ld	a1,16(s2)
    80001920:	02058e63          	beqz	a1,8000195c <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        thread->setPrevInQueue(blockedTail);
    80001924:	00048513          	mv	a0,s1
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	490080e7          	jalr	1168(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    80001930:	00048593          	mv	a1,s1
    80001934:	01093503          	ld	a0,16(s2)
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	464080e7          	jalr	1124(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
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
    80001968:	454080e7          	jalr	1108(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
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
    800019a0:	3c8080e7          	jalr	968(ra) # 80001d64 <_ZN7KThread14getNextInQueueEv>
    800019a4:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    800019a8:	04050663          	beqz	a0,800019f4 <_ZN10KSemaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    800019ac:	00000593          	li	a1,0
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	408080e7          	jalr	1032(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    800019b8:	00000593          	li	a1,0
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	3dc080e7          	jalr	988(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800019c8:	00000593          	li	a1,0
    800019cc:	00048513          	mv	a0,s1
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	3e8080e7          	jalr	1000(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
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
    80001ac8:	500080e7          	jalr	1280(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
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
    80001ba0:	428080e7          	jalr	1064(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
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
    80001bf8:	3d0080e7          	jalr	976(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
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
    sleepDelta = 0;
    80001ca8:	02053c23          	sd	zero,56(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001cac:	00000713          	li	a4,0
    80001cb0:	01f00793          	li	a5,31
    80001cb4:	00e7ce63          	blt	a5,a4,80001cd0 <_ZN7KThread4initEv+0x50>
    80001cb8:	00870793          	addi	a5,a4,8
    80001cbc:	00379793          	slli	a5,a5,0x3
    80001cc0:	00f507b3          	add	a5,a0,a5
    80001cc4:	0007b023          	sd	zero,0(a5)
    80001cc8:	0017071b          	addiw	a4,a4,1
    80001ccc:	fe5ff06f          	j	80001cb0 <_ZN7KThread4initEv+0x30>
    threadContext.sepc = 0;
    80001cd0:	14053023          	sd	zero,320(a0)
    threadContext.sstatus = 0;
    80001cd4:	14053423          	sd	zero,328(a0)
    threadContext.pc = 0;
    80001cd8:	14053823          	sd	zero,336(a0)
}
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001cf4:	00000713          	li	a4,0
    80001cf8:	01f00793          	li	a5,31
    80001cfc:	02e7c463          	blt	a5,a4,80001d24 <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001d00:	00371793          	slli	a5,a4,0x3
    80001d04:	00f587b3          	add	a5,a1,a5
    80001d08:	0007b683          	ld	a3,0(a5)
    80001d0c:	00870793          	addi	a5,a4,8
    80001d10:	00379793          	slli	a5,a5,0x3
    80001d14:	00f507b3          	add	a5,a0,a5
    80001d18:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    80001d1c:	0017071b          	addiw	a4,a4,1
    80001d20:	fd9ff06f          	j	80001cf8 <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001d24:	02853783          	ld	a5,40(a0)
    80001d28:	04f53823          	sd	a5,80(a0)
    threadContext.sepc = cont->sepc;
    80001d2c:	1005b783          	ld	a5,256(a1)
    80001d30:	14f53023          	sd	a5,320(a0)
    threadContext.sstatus =cont->sstatus;
    80001d34:	1085b783          	ld	a5,264(a1)
    80001d38:	14f53423          	sd	a5,328(a0)
}
    80001d3c:	00813403          	ld	s0,8(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001d48:	ff010113          	addi	sp,sp,-16
    80001d4c:	00813423          	sd	s0,8(sp)
    80001d50:	01010413          	addi	s0,sp,16
}
    80001d54:	04050513          	addi	a0,a0,64
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00813423          	sd	s0,8(sp)
    80001d6c:	01010413          	addi	s0,sp,16
}
    80001d70:	02053503          	ld	a0,32(a0)
    80001d74:	00813403          	ld	s0,8(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00813423          	sd	s0,8(sp)
    80001d88:	01010413          	addi	s0,sp,16
}
    80001d8c:	01853503          	ld	a0,24(a0)
    80001d90:	00813403          	ld	s0,8(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret

0000000080001d9c <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00813423          	sd	s0,8(sp)
    80001da4:	01010413          	addi	s0,sp,16
    this->next = next;
    80001da8:	02b53023          	sd	a1,32(a0)
}
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret

0000000080001db8 <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00813423          	sd	s0,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001dc4:	00b53c23          	sd	a1,24(a0)
}
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001dd4:	fe010113          	addi	sp,sp,-32
    80001dd8:	00113c23          	sd	ra,24(sp)
    80001ddc:	00813823          	sd	s0,16(sp)
    80001de0:	00913423          	sd	s1,8(sp)
    80001de4:	01213023          	sd	s2,0(sp)
    80001de8:	02010413          	addi	s0,sp,32
    80001dec:	00050493          	mv	s1,a0
    80001df0:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	fa8080e7          	jalr	-88(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001dfc:	00090593          	mv	a1,s2
    80001e00:	00048513          	mv	a0,s1
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	fb4080e7          	jalr	-76(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001e0c:	01813083          	ld	ra,24(sp)
    80001e10:	01013403          	ld	s0,16(sp)
    80001e14:	00813483          	ld	s1,8(sp)
    80001e18:	00013903          	ld	s2,0(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret

0000000080001e24 <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00813423          	sd	s0,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001e30:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001e34:	02c53423          	sd	a2,40(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001e38:	04c53823          	sd	a2,80(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001e3c:	00000797          	auipc	a5,0x0
    80001e40:	de878793          	addi	a5,a5,-536 # 80001c24 <_ZN7KThread16threadTrampolineEPS_>
    80001e44:	14f53023          	sd	a5,320(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001e48:	08a53823          	sd	a0,144(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001e4c:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001e50:	04f53c23          	sd	a5,88(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001e54:	100027f3          	csrr	a5,sstatus
    sstatus_val &= ~(1UL << 8); // SPP=0
    80001e58:	eff7f793          	andi	a5,a5,-257
    sstatus_val |= (1UL << 5); // SPIE=1
    80001e5c:	0207e793          	ori	a5,a5,32
    threadContext.sstatus = sstatus_val;
    80001e60:	14f53423          	sd	a5,328(a0)
}
    80001e64:	00813403          	ld	s0,8(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_ZL8idleBodyPv>:
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00113423          	sd	ra,8(sp)
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001e80:	fffff097          	auipc	ra,0xfffff
    80001e84:	7d0080e7          	jalr	2000(ra) # 80001650 <thread_dispatch>
    80001e88:	ff9ff06f          	j	80001e80 <_ZL8idleBodyPv+0x10>

0000000080001e8c <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00813423          	sd	s0,8(sp)
    80001e94:	01010413          	addi	s0,sp,16
}
    80001e98:	0000a517          	auipc	a0,0xa
    80001e9c:	ab853503          	ld	a0,-1352(a0) # 8000b950 <_ZN9Scheduler7runningE>
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00113423          	sd	ra,8(sp)
    80001eb4:	00813023          	sd	s0,0(sp)
    80001eb8:	01010413          	addi	s0,sp,16
    80001ebc:	00058513          	mv	a0,a1
    running = newThread;
    80001ec0:	0000a797          	auipc	a5,0xa
    80001ec4:	a8b7b823          	sd	a1,-1392(a5) # 8000b950 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	e80080e7          	jalr	-384(ra) # 80001d48 <_ZN7KThread10getContextEv>
    80001ed0:	fffff097          	auipc	ra,0xfffff
    80001ed4:	1c4080e7          	jalr	452(ra) # 80001094 <restoreContext>
}
    80001ed8:	00813083          	ld	ra,8(sp)
    80001edc:	00013403          	ld	s0,0(sp)
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret

0000000080001ee8 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001ee8:	fe010113          	addi	sp,sp,-32
    80001eec:	00113c23          	sd	ra,24(sp)
    80001ef0:	00813823          	sd	s0,16(sp)
    80001ef4:	00913423          	sd	s1,8(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    if (readyQueue == nullptr) return nullptr;
    80001efc:	0000a497          	auipc	s1,0xa
    80001f00:	a5c4b483          	ld	s1,-1444(s1) # 8000b958 <_ZN9Scheduler10readyQueueE>
    80001f04:	04048463          	beqz	s1,80001f4c <_ZN9Scheduler7GetNextEv+0x64>
    readyQueue = readyQueue->getNextInQueue();
    80001f08:	00048513          	mv	a0,s1
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	e58080e7          	jalr	-424(ra) # 80001d64 <_ZN7KThread14getNextInQueueEv>
    80001f14:	0000a797          	auipc	a5,0xa
    80001f18:	a4a7b223          	sd	a0,-1468(a5) # 8000b958 <_ZN9Scheduler10readyQueueE>
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    80001f1c:	04050463          	beqz	a0,80001f64 <_ZN9Scheduler7GetNextEv+0x7c>
    80001f20:	00000593          	li	a1,0
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	e94080e7          	jalr	-364(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
    toRet->setNextInQueue(nullptr);
    80001f2c:	00000593          	li	a1,0
    80001f30:	00048513          	mv	a0,s1
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	e68080e7          	jalr	-408(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    toRet->setPrevInQueue(nullptr);
    80001f3c:	00000593          	li	a1,0
    80001f40:	00048513          	mv	a0,s1
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	e74080e7          	jalr	-396(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	01813083          	ld	ra,24(sp)
    80001f54:	01013403          	ld	s0,16(sp)
    80001f58:	00813483          	ld	s1,8(sp)
    80001f5c:	02010113          	addi	sp,sp,32
    80001f60:	00008067          	ret
    else readyQueueEnd = nullptr;
    80001f64:	0000a797          	auipc	a5,0xa
    80001f68:	9e07be23          	sd	zero,-1540(a5) # 8000b960 <_ZN9Scheduler13readyQueueEndE>
    80001f6c:	fc1ff06f          	j	80001f2c <_ZN9Scheduler7GetNextEv+0x44>

0000000080001f70 <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    80001f70:	fe010113          	addi	sp,sp,-32
    80001f74:	00113c23          	sd	ra,24(sp)
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	02010413          	addi	s0,sp,32
    80001f84:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	f60080e7          	jalr	-160(ra) # 80001ee8 <_ZN9Scheduler7GetNextEv>
    80001f90:	00050593          	mv	a1,a0
    if (next == nullptr) {
    80001f94:	02050263          	beqz	a0,80001fb8 <_ZN9Scheduler10ThreadExitEP7KThread+0x48>
    yield(t, next);
    80001f98:	00048513          	mv	a0,s1
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	f10080e7          	jalr	-240(ra) # 80001eac <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	00813483          	ld	s1,8(sp)
    80001fb0:	02010113          	addi	sp,sp,32
    80001fb4:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80001fb8:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    80001fbc:	fc059ee3          	bnez	a1,80001f98 <_ZN9Scheduler10ThreadExitEP7KThread+0x28>
    80001fc0:	0000006f          	j	80001fc0 <_ZN9Scheduler10ThreadExitEP7KThread+0x50>

0000000080001fc4 <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    80001fc4:	fe010113          	addi	sp,sp,-32
    80001fc8:	00113c23          	sd	ra,24(sp)
    80001fcc:	00813823          	sd	s0,16(sp)
    80001fd0:	00913423          	sd	s1,8(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    80001fd8:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80001fdc:	00000593          	li	a1,0
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	dbc080e7          	jalr	-580(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    if (readyQueueEnd != nullptr) {
    80001fe8:	0000a597          	auipc	a1,0xa
    80001fec:	9785b583          	ld	a1,-1672(a1) # 8000b960 <_ZN9Scheduler13readyQueueEndE>
    80001ff0:	04058063          	beqz	a1,80002030 <_ZN9Scheduler3PutEP7KThread+0x6c>
        thread->setPrevInQueue(readyQueueEnd);
    80001ff4:	00048513          	mv	a0,s1
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	dc0080e7          	jalr	-576(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
        readyQueueEnd->setNextInQueue(thread);
    80002000:	00048593          	mv	a1,s1
    80002004:	0000a517          	auipc	a0,0xa
    80002008:	95c53503          	ld	a0,-1700(a0) # 8000b960 <_ZN9Scheduler13readyQueueEndE>
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	d90080e7          	jalr	-624(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    80002014:	0000a797          	auipc	a5,0xa
    80002018:	9497b623          	sd	s1,-1716(a5) # 8000b960 <_ZN9Scheduler13readyQueueEndE>
}
    8000201c:	01813083          	ld	ra,24(sp)
    80002020:	01013403          	ld	s0,16(sp)
    80002024:	00813483          	ld	s1,8(sp)
    80002028:	02010113          	addi	sp,sp,32
    8000202c:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80002030:	00000593          	li	a1,0
    80002034:	00048513          	mv	a0,s1
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	d80080e7          	jalr	-640(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
        readyQueue = thread;
    80002040:	0000a797          	auipc	a5,0xa
    80002044:	9097bc23          	sd	s1,-1768(a5) # 8000b958 <_ZN9Scheduler10readyQueueE>
    80002048:	fcdff06f          	j	80002014 <_ZN9Scheduler3PutEP7KThread+0x50>

000000008000204c <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80002058:	0000a797          	auipc	a5,0xa
    8000205c:	8987b783          	ld	a5,-1896(a5) # 8000b8f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002060:	00778793          	addi	a5,a5,7
    80002064:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80002068:	0000a717          	auipc	a4,0xa
    8000206c:	90f73023          	sd	a5,-1792(a4) # 8000b968 <_ZN9Scheduler12stack_cursorE>
}
    80002070:	00813403          	ld	s0,8(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    8000207c:	fe010113          	addi	sp,sp,-32
    80002080:	00113c23          	sd	ra,24(sp)
    80002084:	00813823          	sd	s0,16(sp)
    80002088:	00913423          	sd	s1,8(sp)
    8000208c:	02010413          	addi	s0,sp,32
    SetupStartStack();
    80002090:	00000097          	auipc	ra,0x0
    80002094:	fbc080e7          	jalr	-68(ra) # 8000204c <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	0e0080e7          	jalr	224(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    800020a0:	15800593          	li	a1,344
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	130080e7          	jalr	304(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800020ac:	0000a797          	auipc	a5,0xa
    800020b0:	8aa7b223          	sd	a0,-1884(a5) # 8000b950 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	c94080e7          	jalr	-876(ra) # 80001d48 <_ZN7KThread10getContextEv>
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	068080e7          	jalr	104(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    800020c4:	00200793          	li	a5,2
    800020c8:	00009717          	auipc	a4,0x9
    800020cc:	56f73423          	sd	a5,1384(a4) # 8000b630 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	0a8080e7          	jalr	168(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    800020d8:	15800593          	li	a1,344
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	0f8080e7          	jalr	248(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800020e4:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	b98080e7          	jalr	-1128(ra) # 80001c80 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800020f0:	00000797          	auipc	a5,0x0
    800020f4:	d8078793          	addi	a5,a5,-640 # 80001e70 <_ZL8idleBodyPv>
    800020f8:	00f4b023          	sd	a5,0(s1)
    800020fc:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002100:	00001097          	auipc	ra,0x1
    80002104:	078080e7          	jalr	120(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    80002108:	000085b7          	lui	a1,0x8
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	0c8080e7          	jalr	200(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    80002114:	00008637          	lui	a2,0x8
    80002118:	00c50633          	add	a2,a0,a2
    8000211c:	00000593          	li	a1,0
    80002120:	00048513          	mv	a0,s1
    80002124:	00000097          	auipc	ra,0x0
    80002128:	d00080e7          	jalr	-768(ra) # 80001e24 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    8000212c:	00048513          	mv	a0,s1
    80002130:	00000097          	auipc	ra,0x0
    80002134:	e94080e7          	jalr	-364(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
}
    80002138:	01813083          	ld	ra,24(sp)
    8000213c:	01013403          	ld	s0,16(sp)
    80002140:	00813483          	ld	s1,8(sp)
    80002144:	02010113          	addi	sp,sp,32
    80002148:	00008067          	ret

000000008000214c <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00813423          	sd	s0,8(sp)
    80002154:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80002158:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    8000215c:	04f53823          	sd	a5,80(a0)
}
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    8000216c:	fe010113          	addi	sp,sp,-32
    80002170:	00113c23          	sd	ra,24(sp)
    80002174:	00813823          	sd	s0,16(sp)
    80002178:	00913423          	sd	s1,8(sp)
    8000217c:	01213023          	sd	s2,0(sp)
    80002180:	02010413          	addi	s0,sp,32
    80002184:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80002188:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    8000218c:	00009797          	auipc	a5,0x9
    80002190:	7e47b783          	ld	a5,2020(a5) # 8000b970 <_ZN9Scheduler10sleepQueueE>
    80002194:	04078e63          	beqz	a5,800021f0 <_ZN9Scheduler9timerTickEP7KThread+0x84>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80002198:	0387b703          	ld	a4,56(a5)
    8000219c:	04070063          	beqz	a4,800021dc <_ZN9Scheduler9timerTickEP7KThread+0x70>
    800021a0:	fff70713          	addi	a4,a4,-1
    800021a4:	02e7bc23          	sd	a4,56(a5)
    800021a8:	0340006f          	j	800021dc <_ZN9Scheduler9timerTickEP7KThread+0x70>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    800021ac:	00048513          	mv	a0,s1
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	bb4080e7          	jalr	-1100(ra) # 80001d64 <_ZN7KThread14getNextInQueueEv>
    800021b8:	00009797          	auipc	a5,0x9
    800021bc:	7aa7bc23          	sd	a0,1976(a5) # 8000b970 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    800021c0:	00000593          	li	a1,0
    800021c4:	00048513          	mv	a0,s1
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	bd4080e7          	jalr	-1068(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    800021d0:	00048513          	mv	a0,s1
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	df0080e7          	jalr	-528(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    800021dc:	00009497          	auipc	s1,0x9
    800021e0:	7944b483          	ld	s1,1940(s1) # 8000b970 <_ZN9Scheduler10sleepQueueE>
    800021e4:	00048663          	beqz	s1,800021f0 <_ZN9Scheduler9timerTickEP7KThread+0x84>
    800021e8:	0384b783          	ld	a5,56(s1)
    800021ec:	fc0780e3          	beqz	a5,800021ac <_ZN9Scheduler9timerTickEP7KThread+0x40>
        }
    }

    if (current == nullptr) return;
    800021f0:	02090463          	beqz	s2,80002218 <_ZN9Scheduler9timerTickEP7KThread+0xac>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    800021f4:	00009797          	auipc	a5,0x9
    800021f8:	43c7b783          	ld	a5,1084(a5) # 8000b630 <_ZN9Scheduler21runningThreadTimeLeftE>
    800021fc:	00078863          	beqz	a5,8000220c <_ZN9Scheduler9timerTickEP7KThread+0xa0>
    80002200:	fff78793          	addi	a5,a5,-1
    80002204:	00009717          	auipc	a4,0x9
    80002208:	42f73623          	sd	a5,1068(a4) # 8000b630 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    8000220c:	00009797          	auipc	a5,0x9
    80002210:	4247b783          	ld	a5,1060(a5) # 8000b630 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002214:	00078e63          	beqz	a5,80002230 <_ZN9Scheduler9timerTickEP7KThread+0xc4>
    KThread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}
    80002218:	01813083          	ld	ra,24(sp)
    8000221c:	01013403          	ld	s0,16(sp)
    80002220:	00813483          	ld	s1,8(sp)
    80002224:	00013903          	ld	s2,0(sp)
    80002228:	02010113          	addi	sp,sp,32
    8000222c:	00008067          	ret
    KThread* next = GetNext();
    80002230:	00000097          	auipc	ra,0x0
    80002234:	cb8080e7          	jalr	-840(ra) # 80001ee8 <_ZN9Scheduler7GetNextEv>
    80002238:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    8000223c:	00200793          	li	a5,2
    80002240:	00009717          	auipc	a4,0x9
    80002244:	3ef73823          	sd	a5,1008(a4) # 8000b630 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002248:	fc0508e3          	beqz	a0,80002218 <_ZN9Scheduler9timerTickEP7KThread+0xac>
    Put(current);
    8000224c:	00090513          	mv	a0,s2
    80002250:	00000097          	auipc	ra,0x0
    80002254:	d74080e7          	jalr	-652(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    80002258:	00048593          	mv	a1,s1
    8000225c:	00090513          	mv	a0,s2
    80002260:	00000097          	auipc	ra,0x0
    80002264:	c4c080e7          	jalr	-948(ra) # 80001eac <_ZN9Scheduler5yieldEP7KThreadS1_>
    80002268:	fb1ff06f          	j	80002218 <_ZN9Scheduler9timerTickEP7KThread+0xac>

000000008000226c <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    8000226c:	fd010113          	addi	sp,sp,-48
    80002270:	02113423          	sd	ra,40(sp)
    80002274:	02813023          	sd	s0,32(sp)
    80002278:	00913c23          	sd	s1,24(sp)
    8000227c:	01213823          	sd	s2,16(sp)
    80002280:	01313423          	sd	s3,8(sp)
    80002284:	01413023          	sd	s4,0(sp)
    80002288:	03010413          	addi	s0,sp,48
    8000228c:	00050a13          	mv	s4,a0
    80002290:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    80002294:	00009497          	auipc	s1,0x9
    80002298:	6dc4b483          	ld	s1,1756(s1) # 8000b970 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    8000229c:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    800022a0:	02048463          	beqz	s1,800022c8 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    800022a4:	0384b783          	ld	a5,56(s1)
    800022a8:	02f96063          	bltu	s2,a5,800022c8 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    800022ac:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    800022b0:	00048513          	mv	a0,s1
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	ab0080e7          	jalr	-1360(ra) # 80001d64 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    800022bc:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    800022c0:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    800022c4:	fddff06f          	j	800022a0 <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    800022c8:	032a3c23          	sd	s2,56(s4)
    thread->setNextInQueue(current);
    800022cc:	00048593          	mv	a1,s1
    800022d0:	000a0513          	mv	a0,s4
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	ac8080e7          	jalr	-1336(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    800022dc:	04098263          	beqz	s3,80002320 <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    800022e0:	000a0593          	mv	a1,s4
    800022e4:	00098513          	mv	a0,s3
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	ab4080e7          	jalr	-1356(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    800022f0:	00048863          	beqz	s1,80002300 <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    800022f4:	0384b583          	ld	a1,56(s1)
    800022f8:	41258933          	sub	s2,a1,s2
    800022fc:	0324bc23          	sd	s2,56(s1)
    80002300:	02813083          	ld	ra,40(sp)
    80002304:	02013403          	ld	s0,32(sp)
    80002308:	01813483          	ld	s1,24(sp)
    8000230c:	01013903          	ld	s2,16(sp)
    80002310:	00813983          	ld	s3,8(sp)
    80002314:	00013a03          	ld	s4,0(sp)
    80002318:	03010113          	addi	sp,sp,48
    8000231c:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    80002320:	00009797          	auipc	a5,0x9
    80002324:	6547b823          	sd	s4,1616(a5) # 8000b970 <_ZN9Scheduler10sleepQueueE>
    80002328:	fc9ff06f          	j	800022f0 <_ZN9Scheduler5sleepEP7KThreadm+0x84>

000000008000232c <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    8000233c:	00009517          	auipc	a0,0x9
    80002340:	63c50513          	addi	a0,a0,1596 # 8000b978 <_ZN7Konsole11outputItemsE>
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	3b4080e7          	jalr	948(ra) # 800016f8 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    8000234c:	00009797          	auipc	a5,0x9
    80002350:	57c7b783          	ld	a5,1404(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002354:	0007b783          	ld	a5,0(a5)
    80002358:	0007c783          	lbu	a5,0(a5)
    8000235c:	0ff7f793          	andi	a5,a5,255
    80002360:	0207f793          	andi	a5,a5,32
    80002364:	fe0784e3          	beqz	a5,8000234c <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    80002368:	00009717          	auipc	a4,0x9
    8000236c:	61070713          	addi	a4,a4,1552 # 8000b978 <_ZN7Konsole11outputItemsE>
    80002370:	01872783          	lw	a5,24(a4)
    80002374:	01c72703          	lw	a4,28(a4)
    80002378:	fce782e3          	beq	a5,a4,8000233c <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    8000237c:	00009697          	auipc	a3,0x9
    80002380:	5fc68693          	addi	a3,a3,1532 # 8000b978 <_ZN7Konsole11outputItemsE>
    80002384:	00f68733          	add	a4,a3,a5
    80002388:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    8000238c:	0017879b          	addiw	a5,a5,1
    80002390:	41f7d71b          	sraiw	a4,a5,0x1f
    80002394:	0187571b          	srliw	a4,a4,0x18
    80002398:	00e787bb          	addw	a5,a5,a4
    8000239c:	0ff7f793          	andi	a5,a5,255
    800023a0:	40e787bb          	subw	a5,a5,a4
    800023a4:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    800023a8:	00009797          	auipc	a5,0x9
    800023ac:	5387b783          	ld	a5,1336(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023b0:	0007b783          	ld	a5,0(a5)
    800023b4:	00c78023          	sb	a2,0(a5)
    800023b8:	f85ff06f          	j	8000233c <_ZN7Konsole16outputThreadBodyEPv+0x10>

00000000800023bc <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    800023bc:	fe010113          	addi	sp,sp,-32
    800023c0:	00113c23          	sd	ra,24(sp)
    800023c4:	00813823          	sd	s0,16(sp)
    800023c8:	00913423          	sd	s1,8(sp)
    800023cc:	02010413          	addi	s0,sp,32
    800023d0:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    800023d4:	00000593          	li	a1,0
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	9c4080e7          	jalr	-1596(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    800023e0:	00009597          	auipc	a1,0x9
    800023e4:	6b85b583          	ld	a1,1720(a1) # 8000ba98 <_ZN7Konsole14getcWaiterTailE>
    800023e8:	04058063          	beqz	a1,80002428 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    800023ec:	00048513          	mv	a0,s1
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	9c8080e7          	jalr	-1592(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    800023f8:	00048593          	mv	a1,s1
    800023fc:	00009517          	auipc	a0,0x9
    80002400:	69c53503          	ld	a0,1692(a0) # 8000ba98 <_ZN7Konsole14getcWaiterTailE>
    80002404:	00000097          	auipc	ra,0x0
    80002408:	998080e7          	jalr	-1640(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    8000240c:	00009797          	auipc	a5,0x9
    80002410:	6897b623          	sd	s1,1676(a5) # 8000ba98 <_ZN7Konsole14getcWaiterTailE>
}
    80002414:	01813083          	ld	ra,24(sp)
    80002418:	01013403          	ld	s0,16(sp)
    8000241c:	00813483          	ld	s1,8(sp)
    80002420:	02010113          	addi	sp,sp,32
    80002424:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80002428:	00000593          	li	a1,0
    8000242c:	00048513          	mv	a0,s1
    80002430:	00000097          	auipc	ra,0x0
    80002434:	988080e7          	jalr	-1656(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    80002438:	00009797          	auipc	a5,0x9
    8000243c:	6697b423          	sd	s1,1640(a5) # 8000baa0 <_ZN7Konsole14getcWaiterHeadE>
    80002440:	fcdff06f          	j	8000240c <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

0000000080002444 <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    80002444:	fe010113          	addi	sp,sp,-32
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	00813823          	sd	s0,16(sp)
    80002450:	00913423          	sd	s1,8(sp)
    80002454:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    80002458:	00009497          	auipc	s1,0x9
    8000245c:	6484b483          	ld	s1,1608(s1) # 8000baa0 <_ZN7Konsole14getcWaiterHeadE>
    80002460:	04048463          	beqz	s1,800024a8 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    80002464:	00048513          	mv	a0,s1
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	8fc080e7          	jalr	-1796(ra) # 80001d64 <_ZN7KThread14getNextInQueueEv>
    80002470:	00009797          	auipc	a5,0x9
    80002474:	62a7b823          	sd	a0,1584(a5) # 8000baa0 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002478:	04050463          	beqz	a0,800024c0 <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    8000247c:	00000593          	li	a1,0
    80002480:	00000097          	auipc	ra,0x0
    80002484:	938080e7          	jalr	-1736(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    80002488:	00000593          	li	a1,0
    8000248c:	00048513          	mv	a0,s1
    80002490:	00000097          	auipc	ra,0x0
    80002494:	90c080e7          	jalr	-1780(ra) # 80001d9c <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80002498:	00000593          	li	a1,0
    8000249c:	00048513          	mv	a0,s1
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	918080e7          	jalr	-1768(ra) # 80001db8 <_ZN7KThread14setPrevInQueueEPS_>
}
    800024a8:	00048513          	mv	a0,s1
    800024ac:	01813083          	ld	ra,24(sp)
    800024b0:	01013403          	ld	s0,16(sp)
    800024b4:	00813483          	ld	s1,8(sp)
    800024b8:	02010113          	addi	sp,sp,32
    800024bc:	00008067          	ret
    else getcWaiterTail = nullptr;
    800024c0:	00009797          	auipc	a5,0x9
    800024c4:	5c07bc23          	sd	zero,1496(a5) # 8000ba98 <_ZN7Konsole14getcWaiterTailE>
    800024c8:	fc1ff06f          	j	80002488 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

00000000800024cc <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00113c23          	sd	ra,24(sp)
    800024d4:	00813823          	sd	s0,16(sp)
    800024d8:	00913423          	sd	s1,8(sp)
    800024dc:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    800024e0:	00009517          	auipc	a0,0x9
    800024e4:	49850513          	addi	a0,a0,1176 # 8000b978 <_ZN7Konsole11outputItemsE>
    800024e8:	12052823          	sw	zero,304(a0)
    800024ec:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    800024f0:	00052c23          	sw	zero,24(a0)
    800024f4:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    800024f8:	12053423          	sd	zero,296(a0)
    800024fc:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    80002500:	00000593          	li	a1,0
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	3c0080e7          	jalr	960(ra) # 800018c4 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    8000250c:	00001097          	auipc	ra,0x1
    80002510:	c6c080e7          	jalr	-916(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    80002514:	15800593          	li	a1,344
    80002518:	00001097          	auipc	ra,0x1
    8000251c:	cbc080e7          	jalr	-836(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002520:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	75c080e7          	jalr	1884(ra) # 80001c80 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    8000252c:	00000797          	auipc	a5,0x0
    80002530:	e0078793          	addi	a5,a5,-512 # 8000232c <_ZN7Konsole16outputThreadBodyEPv>
    80002534:	00f4b023          	sd	a5,0(s1)
    80002538:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	c3c080e7          	jalr	-964(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    80002544:	000085b7          	lui	a1,0x8
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	c8c080e7          	jalr	-884(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    80002550:	00008637          	lui	a2,0x8
    80002554:	00c50633          	add	a2,a0,a2
    80002558:	00000593          	li	a1,0
    8000255c:	00048513          	mv	a0,s1
    80002560:	00000097          	auipc	ra,0x0
    80002564:	8c4080e7          	jalr	-1852(ra) # 80001e24 <_ZN7KThread5setupEPS_Pm>
    Scheduler::Put(outputThread);
    80002568:	00048513          	mv	a0,s1
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	a58080e7          	jalr	-1448(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
}
    80002574:	01813083          	ld	ra,24(sp)
    80002578:	01013403          	ld	s0,16(sp)
    8000257c:	00813483          	ld	s1,8(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret

0000000080002588 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    80002588:	fe010113          	addi	sp,sp,-32
    8000258c:	00113c23          	sd	ra,24(sp)
    80002590:	00813823          	sd	s0,16(sp)
    80002594:	00913423          	sd	s1,8(sp)
    80002598:	01213023          	sd	s2,0(sp)
    8000259c:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    800025a0:	00005097          	auipc	ra,0x5
    800025a4:	154080e7          	jalr	340(ra) # 800076f4 <plic_claim>
    800025a8:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    800025ac:	00a00793          	li	a5,10
    800025b0:	02f50663          	beq	a0,a5,800025dc <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    800025b4:	0a049463          	bnez	s1,8000265c <_ZN7Konsole15handleInterruptEv+0xd4>
}
    800025b8:	01813083          	ld	ra,24(sp)
    800025bc:	01013403          	ld	s0,16(sp)
    800025c0:	00813483          	ld	s1,8(sp)
    800025c4:	00013903          	ld	s2,0(sp)
    800025c8:	02010113          	addi	sp,sp,32
    800025cc:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    800025d0:	09253823          	sd	s2,144(a0)
                Scheduler::Put(waiter);
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	9f0080e7          	jalr	-1552(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    800025dc:	00009797          	auipc	a5,0x9
    800025e0:	2ec7b783          	ld	a5,748(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800025e4:	0007b783          	ld	a5,0(a5)
    800025e8:	0007c783          	lbu	a5,0(a5)
    800025ec:	0017f793          	andi	a5,a5,1
    800025f0:	fc0782e3          	beqz	a5,800025b4 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    800025f4:	00009797          	auipc	a5,0x9
    800025f8:	2cc7b783          	ld	a5,716(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025fc:	0007b783          	ld	a5,0(a5)
    80002600:	0007c783          	lbu	a5,0(a5)
    80002604:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	e3c080e7          	jalr	-452(ra) # 80002444 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    80002610:	fc0510e3          	bnez	a0,800025d0 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    80002614:	00009617          	auipc	a2,0x9
    80002618:	36460613          	addi	a2,a2,868 # 8000b978 <_ZN7Konsole11outputItemsE>
    8000261c:	13462683          	lw	a3,308(a2)
    80002620:	0016879b          	addiw	a5,a3,1
    80002624:	41f7d71b          	sraiw	a4,a5,0x1f
    80002628:	0187571b          	srliw	a4,a4,0x18
    8000262c:	00e787bb          	addw	a5,a5,a4
    80002630:	0ff7f793          	andi	a5,a5,255
    80002634:	40e787bb          	subw	a5,a5,a4
    80002638:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    8000263c:	13062603          	lw	a2,304(a2)
    80002640:	f8e60ee3          	beq	a2,a4,800025dc <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    80002644:	00009717          	auipc	a4,0x9
    80002648:	33470713          	addi	a4,a4,820 # 8000b978 <_ZN7Konsole11outputItemsE>
    8000264c:	00d706b3          	add	a3,a4,a3
    80002650:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    80002654:	12f72a23          	sw	a5,308(a4)
    80002658:	f85ff06f          	j	800025dc <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    8000265c:	00048513          	mv	a0,s1
    80002660:	00005097          	auipc	ra,0x5
    80002664:	0cc080e7          	jalr	204(ra) # 8000772c <plic_complete>
}
    80002668:	f51ff06f          	j	800025b8 <_ZN7Konsole15handleInterruptEv+0x30>

000000008000266c <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    8000266c:	ff010113          	addi	sp,sp,-16
    80002670:	00813423          	sd	s0,8(sp)
    80002674:	01010413          	addi	s0,sp,16
      while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    80002678:	00009797          	auipc	a5,0x9
    8000267c:	2507b783          	ld	a5,592(a5) # 8000b8c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002680:	0007b783          	ld	a5,0(a5)
    80002684:	0007c783          	lbu	a5,0(a5)
    80002688:	0ff7f793          	andi	a5,a5,255
    8000268c:	0207f793          	andi	a5,a5,32
    80002690:	fe0784e3          	beqz	a5,80002678 <_ZN7Konsole10putcKernelEP7KThreadc+0xc>
      *((volatile uint8*)CONSOLE_TX_DATA) = c;
    80002694:	00009797          	auipc	a5,0x9
    80002698:	24c7b783          	ld	a5,588(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000269c:	0007b783          	ld	a5,0(a5)
    800026a0:	00b78023          	sb	a1,0(a5)
      if (caller) caller->threadContext.x[10] = 0;
    800026a4:	00050463          	beqz	a0,800026ac <_ZN7Konsole10putcKernelEP7KThreadc+0x40>
    800026a8:	08053823          	sd	zero,144(a0)
      return 0;
  }
    800026ac:	00000513          	li	a0,0
    800026b0:	00813403          	ld	s0,8(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    800026bc:	00009717          	auipc	a4,0x9
    800026c0:	2bc70713          	addi	a4,a4,700 # 8000b978 <_ZN7Konsole11outputItemsE>
    800026c4:	13072783          	lw	a5,304(a4)
    800026c8:	13472703          	lw	a4,308(a4)
    800026cc:	04e78063          	beq	a5,a4,8000270c <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    800026d0:	00009617          	auipc	a2,0x9
    800026d4:	2a860613          	addi	a2,a2,680 # 8000b978 <_ZN7Konsole11outputItemsE>
    800026d8:	00f60733          	add	a4,a2,a5
    800026dc:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    800026e0:	0017879b          	addiw	a5,a5,1
    800026e4:	41f7d71b          	sraiw	a4,a5,0x1f
    800026e8:	0187571b          	srliw	a4,a4,0x18
    800026ec:	00e787bb          	addw	a5,a5,a4
    800026f0:	0ff7f793          	andi	a5,a5,255
    800026f4:	40e787bb          	subw	a5,a5,a4
    800026f8:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    800026fc:	00050463          	beqz	a0,80002704 <_ZN7Konsole10getcKernelEP7KThread+0x48>
    80002700:	08d53823          	sd	a3,144(a0)
        return (unsigned char)c;
    80002704:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002708:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00113423          	sd	ra,8(sp)
    80002714:	00813023          	sd	s0,0(sp)
    80002718:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	ca0080e7          	jalr	-864(ra) # 800023bc <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    80002724:	ffe00513          	li	a0,-2
    80002728:	00813083          	ld	ra,8(sp)
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <userMainK>:
//#define USE_C_TEST
void userMain();

#ifdef USE_CPP_TEST
extern "C" void userMainCpp(void);
extern "C" void userMainK(void) {
    80002738:	ff010113          	addi	sp,sp,-16
    8000273c:	00113423          	sd	ra,8(sp)
    80002740:	00813023          	sd	s0,0(sp)
    80002744:	01010413          	addi	s0,sp,16
    userMain();
    80002748:	00002097          	auipc	ra,0x2
    8000274c:	698080e7          	jalr	1688(ra) # 80004de0 <_Z8userMainv>
}
    80002750:	00813083          	ld	ra,8(sp)
    80002754:	00013403          	ld	s0,0(sp)
    80002758:	01010113          	addi	sp,sp,16
    8000275c:	00008067          	ret

0000000080002760 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00113423          	sd	ra,8(sp)
    80002768:	00813023          	sd	s0,0(sp)
    8000276c:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    80002770:	03e00513          	li	a0,62
    80002774:	00001097          	auipc	ra,0x1
    80002778:	900080e7          	jalr	-1792(ra) # 80003074 <_ZN7Console4putcEc>
    8000277c:	00c0006f          	j	80002788 <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    80002780:	00001097          	auipc	ra,0x1
    80002784:	8f4080e7          	jalr	-1804(ra) # 80003074 <_ZN7Console4putcEc>
        char c = Console::getc();
    80002788:	00001097          	auipc	ra,0x1
    8000278c:	8c4080e7          	jalr	-1852(ra) # 8000304c <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002790:	00d00793          	li	a5,13
    80002794:	fef50ae3          	beq	a0,a5,80002788 <_ZL8echoFuncPv+0x28>
    80002798:	fe9ff06f          	j	80002780 <_ZL8echoFuncPv+0x20>

000000008000279c <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    8000279c:	fb010113          	addi	sp,sp,-80
    800027a0:	04113423          	sd	ra,72(sp)
    800027a4:	04813023          	sd	s0,64(sp)
    800027a8:	02913c23          	sd	s1,56(sp)
    800027ac:	03213823          	sd	s2,48(sp)
    800027b0:	03313423          	sd	s3,40(sp)
    800027b4:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    800027b8:	00400513          	li	a0,4
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	d98080e7          	jalr	-616(ra) # 80001554 <mem_alloc>
    800027c4:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    800027c8:	04300793          	li	a5,67
    800027cc:	00f50023          	sb	a5,0(a0)
    800027d0:	02b00793          	li	a5,43
    800027d4:	00f500a3          	sb	a5,1(a0)
    800027d8:	00f50123          	sb	a5,2(a0)
    800027dc:	00a00793          	li	a5,10
    800027e0:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    800027e4:	04300513          	li	a0,67
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	88c080e7          	jalr	-1908(ra) # 80003074 <_ZN7Console4putcEc>
    800027f0:	0014c503          	lbu	a0,1(s1)
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	880080e7          	jalr	-1920(ra) # 80003074 <_ZN7Console4putcEc>
    800027fc:	0024c503          	lbu	a0,2(s1)
    80002800:	00001097          	auipc	ra,0x1
    80002804:	874080e7          	jalr	-1932(ra) # 80003074 <_ZN7Console4putcEc>
    80002808:	0034c503          	lbu	a0,3(s1)
    8000280c:	00001097          	auipc	ra,0x1
    80002810:	868080e7          	jalr	-1944(ra) # 80003074 <_ZN7Console4putcEc>
    mem_free(buf);
    80002814:	00048513          	mv	a0,s1
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	d68080e7          	jalr	-664(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002820:	00100593          	li	a1,1
    80002824:	fc040513          	addi	a0,s0,-64
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	728080e7          	jalr	1832(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    80002830:	00000593          	li	a1,0
    80002834:	fb040513          	addi	a0,s0,-80
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	718080e7          	jalr	1816(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002840:	03800513          	li	a0,56
    80002844:	00000097          	auipc	ra,0x0
    80002848:	550080e7          	jalr	1360(ra) # 80002d94 <_Znwm>
    8000284c:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002850:	00000097          	auipc	ra,0x0
    80002854:	62c080e7          	jalr	1580(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80002858:	00009797          	auipc	a5,0x9
    8000285c:	df078793          	addi	a5,a5,-528 # 8000b648 <_ZTV6Worker+0x10>
    80002860:	00f9b023          	sd	a5,0(s3)
    80002864:	04100793          	li	a5,65
    80002868:	02f98023          	sb	a5,32(s3)
    8000286c:	fc040793          	addi	a5,s0,-64
    80002870:	02f9b423          	sd	a5,40(s3)
    80002874:	fb040793          	addi	a5,s0,-80
    80002878:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    8000287c:	03800513          	li	a0,56
    80002880:	00000097          	auipc	ra,0x0
    80002884:	514080e7          	jalr	1300(ra) # 80002d94 <_Znwm>
    80002888:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	5f0080e7          	jalr	1520(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80002894:	00009797          	auipc	a5,0x9
    80002898:	db478793          	addi	a5,a5,-588 # 8000b648 <_ZTV6Worker+0x10>
    8000289c:	00f93023          	sd	a5,0(s2)
    800028a0:	04200793          	li	a5,66
    800028a4:	02f90023          	sb	a5,32(s2)
    800028a8:	fc040793          	addi	a5,s0,-64
    800028ac:	02f93423          	sd	a5,40(s2)
    800028b0:	fb040793          	addi	a5,s0,-80
    800028b4:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    800028b8:	03800513          	li	a0,56
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	4d8080e7          	jalr	1240(ra) # 80002d94 <_Znwm>
    800028c4:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	5b4080e7          	jalr	1460(ra) # 80002e7c <_ZN6ThreadC1Ev>
    800028d0:	00009797          	auipc	a5,0x9
    800028d4:	d7878793          	addi	a5,a5,-648 # 8000b648 <_ZTV6Worker+0x10>
    800028d8:	00f4b023          	sd	a5,0(s1)
    800028dc:	04300793          	li	a5,67
    800028e0:	02f48023          	sb	a5,32(s1)
    800028e4:	fc040793          	addi	a5,s0,-64
    800028e8:	02f4b423          	sd	a5,40(s1)
    800028ec:	fb040793          	addi	a5,s0,-80
    800028f0:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    800028f4:	00098513          	mv	a0,s3
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	5b4080e7          	jalr	1460(ra) # 80002eac <_ZN6Thread5startEv>
    80002900:	00090513          	mv	a0,s2
    80002904:	00000097          	auipc	ra,0x0
    80002908:	5a8080e7          	jalr	1448(ra) # 80002eac <_ZN6Thread5startEv>
    8000290c:	00048513          	mv	a0,s1
    80002910:	00000097          	auipc	ra,0x0
    80002914:	59c080e7          	jalr	1436(ra) # 80002eac <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002918:	fb040513          	addi	a0,s0,-80
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	66c080e7          	jalr	1644(ra) # 80002f88 <_ZN9Semaphore4waitEv>
    80002924:	fb040513          	addi	a0,s0,-80
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	660080e7          	jalr	1632(ra) # 80002f88 <_ZN9Semaphore4waitEv>
    80002930:	fb040513          	addi	a0,s0,-80
    80002934:	00000097          	auipc	ra,0x0
    80002938:	654080e7          	jalr	1620(ra) # 80002f88 <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    8000293c:	00098a63          	beqz	s3,80002950 <userMainCpp+0x1b4>
    80002940:	0009b783          	ld	a5,0(s3)
    80002944:	0087b783          	ld	a5,8(a5)
    80002948:	00098513          	mv	a0,s3
    8000294c:	000780e7          	jalr	a5
    80002950:	00090a63          	beqz	s2,80002964 <userMainCpp+0x1c8>
    80002954:	00093783          	ld	a5,0(s2)
    80002958:	0087b783          	ld	a5,8(a5)
    8000295c:	00090513          	mv	a0,s2
    80002960:	000780e7          	jalr	a5
    80002964:	00048a63          	beqz	s1,80002978 <userMainCpp+0x1dc>
    80002968:	0004b783          	ld	a5,0(s1)
    8000296c:	0087b783          	ld	a5,8(a5)
    80002970:	00048513          	mv	a0,s1
    80002974:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002978:	00a00513          	li	a0,10
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	6f8080e7          	jalr	1784(ra) # 80003074 <_ZN7Console4putcEc>
    80002984:	04f00513          	li	a0,79
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	6ec080e7          	jalr	1772(ra) # 80003074 <_ZN7Console4putcEc>
    80002990:	04b00513          	li	a0,75
    80002994:	00000097          	auipc	ra,0x0
    80002998:	6e0080e7          	jalr	1760(ra) # 80003074 <_ZN7Console4putcEc>
    8000299c:	00a00513          	li	a0,10
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	6d4080e7          	jalr	1748(ra) # 80003074 <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    800029a8:	02800513          	li	a0,40
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	3e8080e7          	jalr	1000(ra) # 80002d94 <_Znwm>
    800029b4:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    800029b8:	00300593          	li	a1,3
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	624080e7          	jalr	1572(ra) # 80002fe0 <_ZN14PeriodicThreadC1Em>
    800029c4:	00009797          	auipc	a5,0x9
    800029c8:	cac78793          	addi	a5,a5,-852 # 8000b670 <_ZTV6Ticker+0x10>
    800029cc:	00f4b023          	sd	a5,0(s1)
    t->start();
    800029d0:	00048513          	mv	a0,s1
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	4d8080e7          	jalr	1240(ra) # 80002eac <_ZN6Thread5startEv>
    Thread::sleep(15);
    800029dc:	00f00513          	li	a0,15
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	548080e7          	jalr	1352(ra) # 80002f28 <_ZN6Thread5sleepEm>
    t->terminate();
    800029e8:	00048513          	mv	a0,s1
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	644080e7          	jalr	1604(ra) # 80003030 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    800029f4:	00500513          	li	a0,5
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	530080e7          	jalr	1328(ra) # 80002f28 <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002a00:	00a00513          	li	a0,10
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	670080e7          	jalr	1648(ra) # 80003074 <_ZN7Console4putcEc>
    delete t;
    80002a0c:	00048a63          	beqz	s1,80002a20 <userMainCpp+0x284>
    80002a10:	0004b783          	ld	a5,0(s1)
    80002a14:	0087b783          	ld	a5,8(a5)
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002a20:	02000513          	li	a0,32
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	370080e7          	jalr	880(ra) # 80002d94 <_Znwm>
    80002a2c:	00050493          	mv	s1,a0
    80002a30:	00000613          	li	a2,0
    80002a34:	00000597          	auipc	a1,0x0
    80002a38:	d2c58593          	addi	a1,a1,-724 # 80002760 <_ZL8echoFuncPv>
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	410080e7          	jalr	1040(ra) # 80002e4c <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002a44:	00048513          	mv	a0,s1
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	464080e7          	jalr	1124(ra) # 80002eac <_ZN6Thread5startEv>
    while (true) {}
    80002a50:	0000006f          	j	80002a50 <userMainCpp+0x2b4>
    80002a54:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002a58:	00098513          	mv	a0,s3
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	360080e7          	jalr	864(ra) # 80002dbc <_ZdlPv>
    Semaphore mx(1), done(0);
    80002a64:	fb040513          	addi	a0,s0,-80
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	2f4080e7          	jalr	756(ra) # 80002d5c <_ZN9SemaphoreD1Ev>
    80002a70:	fc040513          	addi	a0,s0,-64
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	2e8080e7          	jalr	744(ra) # 80002d5c <_ZN9SemaphoreD1Ev>
    80002a7c:	00048513          	mv	a0,s1
    80002a80:	0000a097          	auipc	ra,0xa
    80002a84:	258080e7          	jalr	600(ra) # 8000ccd8 <_Unwind_Resume>
    80002a88:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002a8c:	00090513          	mv	a0,s2
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	32c080e7          	jalr	812(ra) # 80002dbc <_ZdlPv>
    80002a98:	fcdff06f          	j	80002a64 <userMainCpp+0x2c8>
    80002a9c:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002aa0:	00048513          	mv	a0,s1
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	318080e7          	jalr	792(ra) # 80002dbc <_ZdlPv>
    80002aac:	00090493          	mv	s1,s2
    80002ab0:	fb5ff06f          	j	80002a64 <userMainCpp+0x2c8>
    80002ab4:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002ab8:	00048513          	mv	a0,s1
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	300080e7          	jalr	768(ra) # 80002dbc <_ZdlPv>
    80002ac4:	00090493          	mv	s1,s2
    80002ac8:	f9dff06f          	j	80002a64 <userMainCpp+0x2c8>
    80002acc:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	2e8080e7          	jalr	744(ra) # 80002dbc <_ZdlPv>
    80002adc:	00090493          	mv	s1,s2
    80002ae0:	f85ff06f          	j	80002a64 <userMainCpp+0x2c8>
    80002ae4:	00050493          	mv	s1,a0
    80002ae8:	f7dff06f          	j	80002a64 <userMainCpp+0x2c8>
    80002aec:	00050493          	mv	s1,a0
    80002af0:	f81ff06f          	j	80002a70 <userMainCpp+0x2d4>

0000000080002af4 <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	00813023          	sd	s0,0(sp)
    80002b00:	01010413          	addi	s0,sp,16
    80002b04:	02e00513          	li	a0,46
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	56c080e7          	jalr	1388(ra) # 80003074 <_ZN7Console4putcEc>
    80002b10:	00813083          	ld	ra,8(sp)
    80002b14:	00013403          	ld	s0,0(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZN6Worker3runEv>:
    void run() override {
    80002b20:	fe010113          	addi	sp,sp,-32
    80002b24:	00113c23          	sd	ra,24(sp)
    80002b28:	00813823          	sd	s0,16(sp)
    80002b2c:	00913423          	sd	s1,8(sp)
    80002b30:	01213023          	sd	s2,0(sp)
    80002b34:	02010413          	addi	s0,sp,32
    80002b38:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002b3c:	00000913          	li	s2,0
    80002b40:	0500006f          	j	80002b90 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002b44:	0284b503          	ld	a0,40(s1)
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	440080e7          	jalr	1088(ra) # 80002f88 <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002b50:	05b00513          	li	a0,91
    80002b54:	00000097          	auipc	ra,0x0
    80002b58:	520080e7          	jalr	1312(ra) # 80003074 <_ZN7Console4putcEc>
    80002b5c:	0204c503          	lbu	a0,32(s1)
    80002b60:	00000097          	auipc	ra,0x0
    80002b64:	514080e7          	jalr	1300(ra) # 80003074 <_ZN7Console4putcEc>
    80002b68:	05d00513          	li	a0,93
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	508080e7          	jalr	1288(ra) # 80003074 <_ZN7Console4putcEc>
            mx->signal();
    80002b74:	0284b503          	ld	a0,40(s1)
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	43c080e7          	jalr	1084(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002b80:	00200513          	li	a0,2
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	3a4080e7          	jalr	932(ra) # 80002f28 <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002b8c:	0019091b          	addiw	s2,s2,1
    80002b90:	00200793          	li	a5,2
    80002b94:	fb27d8e3          	bge	a5,s2,80002b44 <_ZN6Worker3runEv+0x24>
        done->signal();
    80002b98:	0304b503          	ld	a0,48(s1)
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	418080e7          	jalr	1048(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
    }
    80002ba4:	01813083          	ld	ra,24(sp)
    80002ba8:	01013403          	ld	s0,16(sp)
    80002bac:	00813483          	ld	s1,8(sp)
    80002bb0:	00013903          	ld	s2,0(sp)
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00008067          	ret

0000000080002bbc <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00113423          	sd	ra,8(sp)
    80002bc4:	00813023          	sd	s0,0(sp)
    80002bc8:	01010413          	addi	s0,sp,16
    80002bcc:	00009797          	auipc	a5,0x9
    80002bd0:	a7c78793          	addi	a5,a5,-1412 # 8000b648 <_ZTV6Worker+0x10>
    80002bd4:	00f53023          	sd	a5,0(a0)
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	0ec080e7          	jalr	236(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80002be0:	00813083          	ld	ra,8(sp)
    80002be4:	00013403          	ld	s0,0(sp)
    80002be8:	01010113          	addi	sp,sp,16
    80002bec:	00008067          	ret

0000000080002bf0 <_ZN6WorkerD0Ev>:
    80002bf0:	fe010113          	addi	sp,sp,-32
    80002bf4:	00113c23          	sd	ra,24(sp)
    80002bf8:	00813823          	sd	s0,16(sp)
    80002bfc:	00913423          	sd	s1,8(sp)
    80002c00:	02010413          	addi	s0,sp,32
    80002c04:	00050493          	mv	s1,a0
    80002c08:	00009797          	auipc	a5,0x9
    80002c0c:	a4078793          	addi	a5,a5,-1472 # 8000b648 <_ZTV6Worker+0x10>
    80002c10:	00f53023          	sd	a5,0(a0)
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	0b0080e7          	jalr	176(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80002c1c:	00048513          	mv	a0,s1
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	19c080e7          	jalr	412(ra) # 80002dbc <_ZdlPv>
    80002c28:	01813083          	ld	ra,24(sp)
    80002c2c:	01013403          	ld	s0,16(sp)
    80002c30:	00813483          	ld	s1,8(sp)
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00008067          	ret

0000000080002c3c <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00113423          	sd	ra,8(sp)
    80002c44:	00813023          	sd	s0,0(sp)
    80002c48:	01010413          	addi	s0,sp,16
    int signal();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    80002c4c:	00009797          	auipc	a5,0x9
    80002c50:	c8c7b783          	ld	a5,-884(a5) # 8000b8d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c54:	01078793          	addi	a5,a5,16
    80002c58:	00f53023          	sd	a5,0(a0)
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	068080e7          	jalr	104(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80002c64:	00813083          	ld	ra,8(sp)
    80002c68:	00013403          	ld	s0,0(sp)
    80002c6c:	01010113          	addi	sp,sp,16
    80002c70:	00008067          	ret

0000000080002c74 <_ZN6TickerD0Ev>:
    80002c74:	fe010113          	addi	sp,sp,-32
    80002c78:	00113c23          	sd	ra,24(sp)
    80002c7c:	00813823          	sd	s0,16(sp)
    80002c80:	00913423          	sd	s1,8(sp)
    80002c84:	02010413          	addi	s0,sp,32
    80002c88:	00050493          	mv	s1,a0
    80002c8c:	00009797          	auipc	a5,0x9
    80002c90:	c4c7b783          	ld	a5,-948(a5) # 8000b8d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c94:	01078793          	addi	a5,a5,16
    80002c98:	00f53023          	sd	a5,0(a0)
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	028080e7          	jalr	40(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80002ca4:	00048513          	mv	a0,s1
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	114080e7          	jalr	276(ra) # 80002dbc <_ZdlPv>
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	01013403          	ld	s0,16(sp)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	02010113          	addi	sp,sp,32
    80002cc0:	00008067          	ret

0000000080002cc4 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    80002cd0:	00813403          	ld	s0,8(sp)
    80002cd4:	01010113          	addi	sp,sp,16
    80002cd8:	00008067          	ret

0000000080002cdc <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80002cdc:	ff010113          	addi	sp,sp,-16
    80002ce0:	00113423          	sd	ra,8(sp)
    80002ce4:	00813023          	sd	s0,0(sp)
    80002ce8:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80002cec:	00053783          	ld	a5,0(a0)
    80002cf0:	0107b783          	ld	a5,16(a5)
    80002cf4:	000780e7          	jalr	a5
}
    80002cf8:	00813083          	ld	ra,8(sp)
    80002cfc:	00013403          	ld	s0,0(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <_ZN14PeriodicThread3runEv>:
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    80002d08:	fe010113          	addi	sp,sp,-32
    80002d0c:	00113c23          	sd	ra,24(sp)
    80002d10:	00813823          	sd	s0,16(sp)
    80002d14:	00913423          	sd	s1,8(sp)
    80002d18:	02010413          	addi	s0,sp,32
    80002d1c:	00050493          	mv	s1,a0
    while (period) {
    80002d20:	0204b783          	ld	a5,32(s1)
    80002d24:	02078263          	beqz	a5,80002d48 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002d28:	0004b783          	ld	a5,0(s1)
    80002d2c:	0187b783          	ld	a5,24(a5)
    80002d30:	00048513          	mv	a0,s1
    80002d34:	000780e7          	jalr	a5
        time_sleep(period);
    80002d38:	0204b503          	ld	a0,32(s1)
    80002d3c:	fffff097          	auipc	ra,0xfffff
    80002d40:	934080e7          	jalr	-1740(ra) # 80001670 <time_sleep>
    while (period) {
    80002d44:	fddff06f          	j	80002d20 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002d48:	01813083          	ld	ra,24(sp)
    80002d4c:	01013403          	ld	s0,16(sp)
    80002d50:	00813483          	ld	s1,8(sp)
    80002d54:	02010113          	addi	sp,sp,32
    80002d58:	00008067          	ret

0000000080002d5c <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002d5c:	ff010113          	addi	sp,sp,-16
    80002d60:	00113423          	sd	ra,8(sp)
    80002d64:	00813023          	sd	s0,0(sp)
    80002d68:	01010413          	addi	s0,sp,16
    80002d6c:	00009797          	auipc	a5,0x9
    80002d70:	96478793          	addi	a5,a5,-1692 # 8000b6d0 <_ZTV9Semaphore+0x10>
    80002d74:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002d78:	00853503          	ld	a0,8(a0)
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	954080e7          	jalr	-1708(ra) # 800016d0 <sem_close>
}
    80002d84:	00813083          	ld	ra,8(sp)
    80002d88:	00013403          	ld	s0,0(sp)
    80002d8c:	01010113          	addi	sp,sp,16
    80002d90:	00008067          	ret

0000000080002d94 <_Znwm>:
void* operator new(size_t size) {
    80002d94:	ff010113          	addi	sp,sp,-16
    80002d98:	00113423          	sd	ra,8(sp)
    80002d9c:	00813023          	sd	s0,0(sp)
    80002da0:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	7b0080e7          	jalr	1968(ra) # 80001554 <mem_alloc>
    80002dac:	00813083          	ld	ra,8(sp)
    80002db0:	00013403          	ld	s0,0(sp)
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00008067          	ret

0000000080002dbc <_ZdlPv>:
void  operator delete(void* p)  {
    80002dbc:	ff010113          	addi	sp,sp,-16
    80002dc0:	00113423          	sd	ra,8(sp)
    80002dc4:	00813023          	sd	s0,0(sp)
    80002dc8:	01010413          	addi	s0,sp,16
    mem_free(p); }
    80002dcc:	ffffe097          	auipc	ra,0xffffe
    80002dd0:	7b4080e7          	jalr	1972(ra) # 80001580 <mem_free>
    80002dd4:	00813083          	ld	ra,8(sp)
    80002dd8:	00013403          	ld	s0,0(sp)
    80002ddc:	01010113          	addi	sp,sp,16
    80002de0:	00008067          	ret

0000000080002de4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80002de4:	ff010113          	addi	sp,sp,-16
    80002de8:	00113423          	sd	ra,8(sp)
    80002dec:	00813023          	sd	s0,0(sp)
    80002df0:	01010413          	addi	s0,sp,16
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	fc8080e7          	jalr	-56(ra) # 80002dbc <_ZdlPv>
    80002dfc:	00813083          	ld	ra,8(sp)
    80002e00:	00013403          	ld	s0,0(sp)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00008067          	ret

0000000080002e0c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002e0c:	fe010113          	addi	sp,sp,-32
    80002e10:	00113c23          	sd	ra,24(sp)
    80002e14:	00813823          	sd	s0,16(sp)
    80002e18:	00913423          	sd	s1,8(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    80002e20:	00050493          	mv	s1,a0
}
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	f38080e7          	jalr	-200(ra) # 80002d5c <_ZN9SemaphoreD1Ev>
    80002e2c:	00048513          	mv	a0,s1
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	f8c080e7          	jalr	-116(ra) # 80002dbc <_ZdlPv>
    80002e38:	01813083          	ld	ra,24(sp)
    80002e3c:	01013403          	ld	s0,16(sp)
    80002e40:	00813483          	ld	s1,8(sp)
    80002e44:	02010113          	addi	sp,sp,32
    80002e48:	00008067          	ret

0000000080002e4c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    80002e4c:	ff010113          	addi	sp,sp,-16
    80002e50:	00813423          	sd	s0,8(sp)
    80002e54:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    80002e58:	00009797          	auipc	a5,0x9
    80002e5c:	85078793          	addi	a5,a5,-1968 # 8000b6a8 <_ZTV6Thread+0x10>
    80002e60:	00f53023          	sd	a5,0(a0)
    80002e64:	00053423          	sd	zero,8(a0)
    80002e68:	00b53823          	sd	a1,16(a0)
    80002e6c:	00c53c23          	sd	a2,24(a0)
    80002e70:	00813403          	ld	s0,8(sp)
    80002e74:	01010113          	addi	sp,sp,16
    80002e78:	00008067          	ret

0000000080002e7c <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00813423          	sd	s0,8(sp)
    80002e84:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    80002e88:	00009797          	auipc	a5,0x9
    80002e8c:	82078793          	addi	a5,a5,-2016 # 8000b6a8 <_ZTV6Thread+0x10>
    80002e90:	00f53023          	sd	a5,0(a0)
    80002e94:	00053423          	sd	zero,8(a0)
    80002e98:	00053823          	sd	zero,16(a0)
    80002e9c:	00053c23          	sd	zero,24(a0)
    80002ea0:	00813403          	ld	s0,8(sp)
    80002ea4:	01010113          	addi	sp,sp,16
    80002ea8:	00008067          	ret

0000000080002eac <_ZN6Thread5startEv>:
int Thread::start() {
    80002eac:	ff010113          	addi	sp,sp,-16
    80002eb0:	00113423          	sd	ra,8(sp)
    80002eb4:	00813023          	sd	s0,0(sp)
    80002eb8:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    80002ebc:	01053783          	ld	a5,16(a0)
    80002ec0:	02078663          	beqz	a5,80002eec <_ZN6Thread5startEv+0x40>
    80002ec4:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    80002ec8:	02078863          	beqz	a5,80002ef8 <_ZN6Thread5startEv+0x4c>
    80002ecc:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    80002ed0:	00850513          	addi	a0,a0,8
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	6d8080e7          	jalr	1752(ra) # 800015ac <thread_create>
}
    80002edc:	00813083          	ld	ra,8(sp)
    80002ee0:	00013403          	ld	s0,0(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80002eec:	00000597          	auipc	a1,0x0
    80002ef0:	df058593          	addi	a1,a1,-528 # 80002cdc <_ZN6Thread7runBodyEPv>
    80002ef4:	fd5ff06f          	j	80002ec8 <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    80002ef8:	00050613          	mv	a2,a0
    80002efc:	fd5ff06f          	j	80002ed0 <_ZN6Thread5startEv+0x24>

0000000080002f00 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002f00:	ff010113          	addi	sp,sp,-16
    80002f04:	00113423          	sd	ra,8(sp)
    80002f08:	00813023          	sd	s0,0(sp)
    80002f0c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002f10:	ffffe097          	auipc	ra,0xffffe
    80002f14:	740080e7          	jalr	1856(ra) # 80001650 <thread_dispatch>
}
    80002f18:	00813083          	ld	ra,8(sp)
    80002f1c:	00013403          	ld	s0,0(sp)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret

0000000080002f28 <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    80002f28:	ff010113          	addi	sp,sp,-16
    80002f2c:	00113423          	sd	ra,8(sp)
    80002f30:	00813023          	sd	s0,0(sp)
    80002f34:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002f38:	ffffe097          	auipc	ra,0xffffe
    80002f3c:	738080e7          	jalr	1848(ra) # 80001670 <time_sleep>
}
    80002f40:	00813083          	ld	ra,8(sp)
    80002f44:	00013403          	ld	s0,0(sp)
    80002f48:	01010113          	addi	sp,sp,16
    80002f4c:	00008067          	ret

0000000080002f50 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00113423          	sd	ra,8(sp)
    80002f58:	00813023          	sd	s0,0(sp)
    80002f5c:	01010413          	addi	s0,sp,16
    80002f60:	00008797          	auipc	a5,0x8
    80002f64:	77078793          	addi	a5,a5,1904 # 8000b6d0 <_ZTV9Semaphore+0x10>
    80002f68:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002f6c:	00850513          	addi	a0,a0,8
    80002f70:	ffffe097          	auipc	ra,0xffffe
    80002f74:	728080e7          	jalr	1832(ra) # 80001698 <sem_open>
}
    80002f78:	00813083          	ld	ra,8(sp)
    80002f7c:	00013403          	ld	s0,0(sp)
    80002f80:	01010113          	addi	sp,sp,16
    80002f84:	00008067          	ret

0000000080002f88 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002f88:	ff010113          	addi	sp,sp,-16
    80002f8c:	00113423          	sd	ra,8(sp)
    80002f90:	00813023          	sd	s0,0(sp)
    80002f94:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002f98:	00853503          	ld	a0,8(a0)
    80002f9c:	ffffe097          	auipc	ra,0xffffe
    80002fa0:	75c080e7          	jalr	1884(ra) # 800016f8 <sem_wait>
}
    80002fa4:	00813083          	ld	ra,8(sp)
    80002fa8:	00013403          	ld	s0,0(sp)
    80002fac:	01010113          	addi	sp,sp,16
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00113423          	sd	ra,8(sp)
    80002fbc:	00813023          	sd	s0,0(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002fc4:	00853503          	ld	a0,8(a0)
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	758080e7          	jalr	1880(ra) # 80001720 <sem_signal>
}
    80002fd0:	00813083          	ld	ra,8(sp)
    80002fd4:	00013403          	ld	s0,0(sp)
    80002fd8:	01010113          	addi	sp,sp,16
    80002fdc:	00008067          	ret

0000000080002fe0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    80002fe0:	fe010113          	addi	sp,sp,-32
    80002fe4:	00113c23          	sd	ra,24(sp)
    80002fe8:	00813823          	sd	s0,16(sp)
    80002fec:	00913423          	sd	s1,8(sp)
    80002ff0:	01213023          	sd	s2,0(sp)
    80002ff4:	02010413          	addi	s0,sp,32
    80002ff8:	00050493          	mv	s1,a0
    80002ffc:	00058913          	mv	s2,a1
    80003000:	00000097          	auipc	ra,0x0
    80003004:	e7c080e7          	jalr	-388(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80003008:	00008797          	auipc	a5,0x8
    8000300c:	6e878793          	addi	a5,a5,1768 # 8000b6f0 <_ZTV14PeriodicThread+0x10>
    80003010:	00f4b023          	sd	a5,0(s1)
    80003014:	0324b023          	sd	s2,32(s1)
    80003018:	01813083          	ld	ra,24(sp)
    8000301c:	01013403          	ld	s0,16(sp)
    80003020:	00813483          	ld	s1,8(sp)
    80003024:	00013903          	ld	s2,0(sp)
    80003028:	02010113          	addi	sp,sp,32
    8000302c:	00008067          	ret

0000000080003030 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    80003030:	ff010113          	addi	sp,sp,-16
    80003034:	00813423          	sd	s0,8(sp)
    80003038:	01010413          	addi	s0,sp,16
    8000303c:	02053023          	sd	zero,32(a0)
    80003040:	00813403          	ld	s0,8(sp)
    80003044:	01010113          	addi	sp,sp,16
    80003048:	00008067          	ret

000000008000304c <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    8000304c:	ff010113          	addi	sp,sp,-16
    80003050:	00113423          	sd	ra,8(sp)
    80003054:	00813023          	sd	s0,0(sp)
    80003058:	01010413          	addi	s0,sp,16
    8000305c:	ffffe097          	auipc	ra,0xffffe
    80003060:	724080e7          	jalr	1828(ra) # 80001780 <getc>
    80003064:	00813083          	ld	ra,8(sp)
    80003068:	00013403          	ld	s0,0(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_ZN7Console4putcEc>:
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00113423          	sd	ra,8(sp)
    8000307c:	00813023          	sd	s0,0(sp)
    80003080:	01010413          	addi	s0,sp,16
    80003084:	ffffe097          	auipc	ra,0xffffe
    80003088:	720080e7          	jalr	1824(ra) # 800017a4 <putc>
    8000308c:	00813083          	ld	ra,8(sp)
    80003090:	00013403          	ld	s0,0(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret

000000008000309c <_ZN6Thread3runEv>:
    int start();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    8000309c:	ff010113          	addi	sp,sp,-16
    800030a0:	00813423          	sd	s0,8(sp)
    800030a4:	01010413          	addi	s0,sp,16
    800030a8:	00813403          	ld	s0,8(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813423          	sd	s0,8(sp)
    800030bc:	01010413          	addi	s0,sp,16
    800030c0:	00813403          	ld	s0,8(sp)
    800030c4:	01010113          	addi	sp,sp,16
    800030c8:	00008067          	ret

00000000800030cc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800030cc:	ff010113          	addi	sp,sp,-16
    800030d0:	00813423          	sd	s0,8(sp)
    800030d4:	01010413          	addi	s0,sp,16
    800030d8:	00008797          	auipc	a5,0x8
    800030dc:	61878793          	addi	a5,a5,1560 # 8000b6f0 <_ZTV14PeriodicThread+0x10>
    800030e0:	00f53023          	sd	a5,0(a0)
    800030e4:	00813403          	ld	s0,8(sp)
    800030e8:	01010113          	addi	sp,sp,16
    800030ec:	00008067          	ret

00000000800030f0 <_ZN14PeriodicThreadD0Ev>:
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00113423          	sd	ra,8(sp)
    800030f8:	00813023          	sd	s0,0(sp)
    800030fc:	01010413          	addi	s0,sp,16
    80003100:	00008797          	auipc	a5,0x8
    80003104:	5f078793          	addi	a5,a5,1520 # 8000b6f0 <_ZTV14PeriodicThread+0x10>
    80003108:	00f53023          	sd	a5,0(a0)
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	cb0080e7          	jalr	-848(ra) # 80002dbc <_ZdlPv>
    80003114:	00813083          	ld	ra,8(sp)
    80003118:	00013403          	ld	s0,0(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret

0000000080003124 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80003124:	ff010113          	addi	sp,sp,-16
    80003128:	00813423          	sd	s0,8(sp)
    8000312c:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80003130:	00008797          	auipc	a5,0x8
    80003134:	7c87b783          	ld	a5,1992(a5) # 8000b8f8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003138:	0007b783          	ld	a5,0(a5)
    8000313c:	00008717          	auipc	a4,0x8
    80003140:	79473703          	ld	a4,1940(a4) # 8000b8d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003144:	00073703          	ld	a4,0(a4)
    80003148:	40e787b3          	sub	a5,a5,a4
    8000314c:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    80003150:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80003154:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    80003158:	00100693          	li	a3,1
    8000315c:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    80003160:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    80003164:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    80003168:	00073423          	sd	zero,8(a4)
}
    8000316c:	00813403          	ld	s0,8(sp)
    80003170:	01010113          	addi	sp,sp,16
    80003174:	00008067          	ret

0000000080003178 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    80003178:	00009797          	auipc	a5,0x9
    8000317c:	a387c783          	lbu	a5,-1480(a5) # 8000bbb0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80003180:	00078863          	beqz	a5,80003190 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80003184:	00009517          	auipc	a0,0x9
    80003188:	a3450513          	addi	a0,a0,-1484 # 8000bbb8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000318c:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003190:	ff010113          	addi	sp,sp,-16
    80003194:	00113423          	sd	ra,8(sp)
    80003198:	00813023          	sd	s0,0(sp)
    8000319c:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    800031a0:	00009517          	auipc	a0,0x9
    800031a4:	a1850513          	addi	a0,a0,-1512 # 8000bbb8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	f7c080e7          	jalr	-132(ra) # 80003124 <_ZN15MemoryAllocatorC1Ev>
    800031b0:	00100793          	li	a5,1
    800031b4:	00009717          	auipc	a4,0x9
    800031b8:	9ef70e23          	sb	a5,-1540(a4) # 8000bbb0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    800031bc:	00009517          	auipc	a0,0x9
    800031c0:	9fc50513          	addi	a0,a0,-1540 # 8000bbb8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800031c4:	00813083          	ld	ra,8(sp)
    800031c8:	00013403          	ld	s0,0(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00813423          	sd	s0,8(sp)
    800031dc:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800031e0:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800031e4:	03f58593          	addi	a1,a1,63
    800031e8:	0065d593          	srli	a1,a1,0x6
    800031ec:	0080006f          	j	800031f4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    800031f0:	00053503          	ld	a0,0(a0)
    while(curr){
    800031f4:	06050863          	beqz	a0,80003264 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    800031f8:	01054703          	lbu	a4,16(a0)
    800031fc:	00100793          	li	a5,1
    80003200:	fef718e3          	bne	a4,a5,800031f0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    80003204:	01853703          	ld	a4,24(a0)
    80003208:	00158793          	addi	a5,a1,1
    8000320c:	fef762e3          	bltu	a4,a5,800031f0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80003210:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80003214:	04e7f663          	bgeu	a5,a4,80003260 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80003218:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    8000321c:	00679793          	slli	a5,a5,0x6
    80003220:	00f507b3          	add	a5,a0,a5
    80003224:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80003228:	00100713          	li	a4,1
    8000322c:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80003230:	01853703          	ld	a4,24(a0)
    80003234:	40b70733          	sub	a4,a4,a1
    80003238:	fff70713          	addi	a4,a4,-1
    8000323c:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003240:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003244:	00068463          	beqz	a3,8000324c <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80003248:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    8000324c:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003250:	01853703          	ld	a4,24(a0)
    80003254:	0187b783          	ld	a5,24(a5)
    80003258:	40f707b3          	sub	a5,a4,a5
    8000325c:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80003260:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80003264:	00813403          	ld	s0,8(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret

0000000080003270 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00813423          	sd	s0,8(sp)
    80003278:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    8000327c:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    80003280:	08070a63          	beqz	a4,80003314 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    80003284:	00100793          	li	a5,1
    80003288:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    8000328c:	fc05b783          	ld	a5,-64(a1)
    80003290:	00078863          	beqz	a5,800032a0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003294:	0107c603          	lbu	a2,16(a5)
    80003298:	00100693          	li	a3,1
    8000329c:	02d60463          	beq	a2,a3,800032c4 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    800032a0:	fc85b783          	ld	a5,-56(a1)
    800032a4:	06078c63          	beqz	a5,8000331c <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    800032a8:	0107c683          	lbu	a3,16(a5)
    800032ac:	00100713          	li	a4,1
    800032b0:	02e68e63          	beq	a3,a4,800032ec <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    800032b4:	00000513          	li	a0,0
}
    800032b8:	00813403          	ld	s0,8(sp)
    800032bc:	01010113          	addi	sp,sp,16
    800032c0:	00008067          	ret
        curr->size +=next->size;
    800032c4:	0187b603          	ld	a2,24(a5)
    800032c8:	fd85b683          	ld	a3,-40(a1)
    800032cc:	00c686b3          	add	a3,a3,a2
    800032d0:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    800032d4:	0007b683          	ld	a3,0(a5)
    800032d8:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    800032dc:	0007b783          	ld	a5,0(a5)
    800032e0:	fc0780e3          	beqz	a5,800032a0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    800032e4:	00e7b423          	sd	a4,8(a5)
    800032e8:	fb9ff06f          	j	800032a0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    800032ec:	fd85b683          	ld	a3,-40(a1)
    800032f0:	0187b703          	ld	a4,24(a5)
    800032f4:	00d70733          	add	a4,a4,a3
    800032f8:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    800032fc:	fc05b703          	ld	a4,-64(a1)
    80003300:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80003304:	02070063          	beqz	a4,80003324 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80003308:	00f73423          	sd	a5,8(a4)
    return 0;
    8000330c:	00000513          	li	a0,0
    80003310:	fa9ff06f          	j	800032b8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    80003314:	fff00513          	li	a0,-1
    80003318:	fa1ff06f          	j	800032b8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    8000331c:	00000513          	li	a0,0
    80003320:	f99ff06f          	j	800032b8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003324:	00000513          	li	a0,0
    80003328:	f91ff06f          	j	800032b8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

000000008000332c <HandleInterupt>:
#include "Konsole.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    8000332c:	fc010113          	addi	sp,sp,-64
    80003330:	02113c23          	sd	ra,56(sp)
    80003334:	02813823          	sd	s0,48(sp)
    80003338:	02913423          	sd	s1,40(sp)
    8000333c:	03213023          	sd	s2,32(sp)
    80003340:	01313c23          	sd	s3,24(sp)
    80003344:	01413823          	sd	s4,16(sp)
    80003348:	01513423          	sd	s5,8(sp)
    8000334c:	01613023          	sd	s6,0(sp)
    80003350:	04010413          	addi	s0,sp,64
    80003354:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003358:	142029f3          	csrr	s3,scause

    KThread* current = Scheduler::GetRunning();
    8000335c:	fffff097          	auipc	ra,0xfffff
    80003360:	b30080e7          	jalr	-1232(ra) # 80001e8c <_ZN9Scheduler10GetRunningEv>
    80003364:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80003368:	04050863          	beqz	a0,800033b8 <HandleInterupt+0x8c>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    8000336c:	00000713          	li	a4,0
    80003370:	01f00793          	li	a5,31
    80003374:	02e7c063          	blt	a5,a4,80003394 <HandleInterupt+0x68>
    80003378:	00371793          	slli	a5,a4,0x3
    8000337c:	00f906b3          	add	a3,s2,a5
    80003380:	0006b683          	ld	a3,0(a3)
    80003384:	00f487b3          	add	a5,s1,a5
    80003388:	04d7b023          	sd	a3,64(a5)
    8000338c:	0017071b          	addiw	a4,a4,1
    80003390:	fe1ff06f          	j	80003370 <HandleInterupt+0x44>
        ctx.x[2] = (size_t)frame + 256;
    80003394:	10090793          	addi	a5,s2,256
    80003398:	04f4b823          	sd	a5,80(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    8000339c:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800033a0:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    800033a4:	ff898793          	addi	a5,s3,-8
    800033a8:	00100613          	li	a2,1
    800033ac:	06f67a63          	bgeu	a2,a5,80003420 <HandleInterupt+0xf4>
        ctx.sepc    = sepc;
    800033b0:	14e4b023          	sd	a4,320(s1)
        ctx.sstatus = sstatus;
    800033b4:	14d4b423          	sd	a3,328(s1)
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
    800033b8:	fff00793          	li	a5,-1
    800033bc:	03f79793          	slli	a5,a5,0x3f
    800033c0:	00178793          	addi	a5,a5,1
    800033c4:	06f98263          	beq	s3,a5,80003428 <HandleInterupt+0xfc>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == 0x8000000000000009UL) {
    800033c8:	fff00793          	li	a5,-1
    800033cc:	03f79793          	slli	a5,a5,0x3f
    800033d0:	00978793          	addi	a5,a5,9
    800033d4:	06f98863          	beq	s3,a5,80003444 <HandleInterupt+0x118>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != 8 && scause != 9) {
    800033d8:	ff898793          	addi	a5,s3,-8
    800033dc:	00100713          	li	a4,1
    800033e0:	06f76e63          	bltu	a4,a5,8000345c <HandleInterupt+0x130>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800033e4:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800033e8:	00478793          	addi	a5,a5,4
    800033ec:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    800033f0:	05093783          	ld	a5,80(s2)
    switch (code) {
    800033f4:	04200713          	li	a4,66
    800033f8:	0af76063          	bltu	a4,a5,80003498 <HandleInterupt+0x16c>
    800033fc:	06078a63          	beqz	a5,80003470 <HandleInterupt+0x144>
    80003400:	06f76863          	bltu	a4,a5,80003470 <HandleInterupt+0x144>
    80003404:	00279793          	slli	a5,a5,0x2
    80003408:	00006717          	auipc	a4,0x6
    8000340c:	c1870713          	addi	a4,a4,-1000 # 80009020 <CONSOLE_STATUS+0x10>
    80003410:	00e787b3          	add	a5,a5,a4
    80003414:	0007a783          	lw	a5,0(a5)
    80003418:	00e787b3          	add	a5,a5,a4
    8000341c:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    80003420:	00470713          	addi	a4,a4,4
    80003424:	f8dff06f          	j	800033b0 <HandleInterupt+0x84>
        Scheduler::timerTick(current);
    80003428:	00048513          	mv	a0,s1
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	d40080e7          	jalr	-704(ra) # 8000216c <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003434:	02048e63          	beqz	s1,80003470 <HandleInterupt+0x144>
    80003438:	0904b783          	ld	a5,144(s1)
    8000343c:	00078513          	mv	a0,a5
    80003440:	0300006f          	j	80003470 <HandleInterupt+0x144>
        Konsole::handleInterrupt();
    80003444:	fffff097          	auipc	ra,0xfffff
    80003448:	144080e7          	jalr	324(ra) # 80002588 <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    8000344c:	02048263          	beqz	s1,80003470 <HandleInterupt+0x144>
    80003450:	0904b783          	ld	a5,144(s1)
    80003454:	00078513          	mv	a0,a5
    80003458:	0180006f          	j	80003470 <HandleInterupt+0x144>
        if ((scause >> 63) == 0 && current != nullptr) {
    8000345c:	0009ca63          	bltz	s3,80003470 <HandleInterupt+0x144>
    80003460:	00048863          	beqz	s1,80003470 <HandleInterupt+0x144>
            Scheduler::ThreadExit(current);
    80003464:	00048513          	mv	a0,s1
    80003468:	fffff097          	auipc	ra,0xfffff
    8000346c:	b08080e7          	jalr	-1272(ra) # 80001f70 <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    80003470:	03813083          	ld	ra,56(sp)
    80003474:	03013403          	ld	s0,48(sp)
    80003478:	02813483          	ld	s1,40(sp)
    8000347c:	02013903          	ld	s2,32(sp)
    80003480:	01813983          	ld	s3,24(sp)
    80003484:	01013a03          	ld	s4,16(sp)
    80003488:	00813a83          	ld	s5,8(sp)
    8000348c:	00013b03          	ld	s6,0(sp)
    80003490:	04010113          	addi	sp,sp,64
    80003494:	00008067          	ret
    switch (code) {
    80003498:	0ff00713          	li	a4,255
    8000349c:	fce79ae3          	bne	a5,a4,80003470 <HandleInterupt+0x144>
            *((volatile uint32*)0x100000UL) = 0x5555;
    800034a0:	00100737          	lui	a4,0x100
    800034a4:	000057b7          	lui	a5,0x5
    800034a8:	5557879b          	addiw	a5,a5,1365
    800034ac:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    800034b0:	0000006f          	j	800034b0 <HandleInterupt+0x184>
            size_t size = frame[11];
    800034b4:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    800034b8:	00000097          	auipc	ra,0x0
    800034bc:	cc0080e7          	jalr	-832(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    800034c0:	00048593          	mv	a1,s1
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	d10080e7          	jalr	-752(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    800034cc:	00050513          	mv	a0,a0
            break;
    800034d0:	fa1ff06f          	j	80003470 <HandleInterupt+0x144>
            void* ptr = (void*)frame[11];
    800034d4:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	ca0080e7          	jalr	-864(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    800034e0:	00048593          	mv	a1,s1
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	d8c080e7          	jalr	-628(ra) # 80003270 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    800034ec:	f85ff06f          	j	80003470 <HandleInterupt+0x144>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    800034f0:	05893983          	ld	s3,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    800034f4:	06093a83          	ld	s5,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    800034f8:	06893a03          	ld	s4,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    800034fc:	07093b03          	ld	s6,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80003500:	00000097          	auipc	ra,0x0
    80003504:	c78080e7          	jalr	-904(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    80003508:	15800593          	li	a1,344
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	cc8080e7          	jalr	-824(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003514:	00050913          	mv	s2,a0
            if (!mem) {
    80003518:	04050463          	beqz	a0,80003560 <HandleInterupt+0x234>
            t->init();
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	764080e7          	jalr	1892(ra) # 80001c80 <_ZN7KThread4initEv>
    80003524:	01593023          	sd	s5,0(s2)
    80003528:	01493423          	sd	s4,8(s2)
            t->setup(current, stack_space);
    8000352c:	000b0613          	mv	a2,s6
    80003530:	00048593          	mv	a1,s1
    80003534:	00090513          	mv	a0,s2
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	8ec080e7          	jalr	-1812(ra) # 80001e24 <_ZN7KThread5setupEPS_Pm>
            *handle = reinterpret_cast<thread_t>(t);
    80003540:	0129b023          	sd	s2,0(s3)
            Scheduler::Put(t);
    80003544:	00090513          	mv	a0,s2
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	a7c080e7          	jalr	-1412(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    80003550:	00048463          	beqz	s1,80003558 <HandleInterupt+0x22c>
    80003554:	0804b823          	sd	zero,144(s1)
            __asm__ volatile("li a0, 0");
    80003558:	00000513          	li	a0,0
            break;
    8000355c:	f15ff06f          	j	80003470 <HandleInterupt+0x144>
                if (current) {
    80003560:	f00488e3          	beqz	s1,80003470 <HandleInterupt+0x144>
                    current->threadContext.x[10] = (size_t)-1;
    80003564:	fff00793          	li	a5,-1
    80003568:	08f4b823          	sd	a5,144(s1)
                    restoreContext(current->getContext());
    8000356c:	00048513          	mv	a0,s1
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	7d8080e7          	jalr	2008(ra) # 80001d48 <_ZN7KThread10getContextEv>
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	b1c080e7          	jalr	-1252(ra) # 80001094 <restoreContext>
                return;
    80003580:	ef1ff06f          	j	80003470 <HandleInterupt+0x144>
            Scheduler::ThreadExit(current);
    80003584:	00048513          	mv	a0,s1
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	9e8080e7          	jalr	-1560(ra) # 80001f70 <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    80003590:	ee1ff06f          	j	80003470 <HandleInterupt+0x144>
            KThread* next = Scheduler::GetNext();
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	954080e7          	jalr	-1708(ra) # 80001ee8 <_ZN9Scheduler7GetNextEv>
    8000359c:	00050913          	mv	s2,a0
            if (next == nullptr) {
    800035a0:	02050663          	beqz	a0,800035cc <HandleInterupt+0x2a0>
            if (current) current->threadContext.x[10] = 0;
    800035a4:	00048463          	beqz	s1,800035ac <HandleInterupt+0x280>
    800035a8:	0804b823          	sd	zero,144(s1)
            Scheduler::Put(current);
    800035ac:	00048513          	mv	a0,s1
    800035b0:	fffff097          	auipc	ra,0xfffff
    800035b4:	a14080e7          	jalr	-1516(ra) # 80001fc4 <_ZN9Scheduler3PutEP7KThread>
            Scheduler::yield(current, next);
    800035b8:	00090593          	mv	a1,s2
    800035bc:	00048513          	mv	a0,s1
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	8ec080e7          	jalr	-1812(ra) # 80001eac <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800035c8:	ea9ff06f          	j	80003470 <HandleInterupt+0x144>
                __asm__ volatile("li a0, 0");
    800035cc:	00000513          	li	a0,0
                break;
    800035d0:	ea1ff06f          	j	80003470 <HandleInterupt+0x144>
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
    800035d4:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)frame[12];
    800035d8:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	b9c080e7          	jalr	-1124(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    800035e4:	01800593          	li	a1,24
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	bec080e7          	jalr	-1044(ra) # 800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800035f0:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800035f4:	00050e63          	beqz	a0,80003610 <HandleInterupt+0x2e4>
            semaphore->init(initialValue);
    800035f8:	00090593          	mv	a1,s2
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	2c8080e7          	jalr	712(ra) # 800018c4 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    80003604:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80003608:	00000513          	li	a0,0
            break;
    8000360c:	e65ff06f          	j	80003470 <HandleInterupt+0x144>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003610:	fff00513          	li	a0,-1
    80003614:	e5dff06f          	j	80003470 <HandleInterupt+0x144>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(frame[11]);
    80003618:	05893483          	ld	s1,88(s2)
            semaphore->close();
    8000361c:	00048513          	mv	a0,s1
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	5a0080e7          	jalr	1440(ra) # 80001bc0 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80003628:	00000097          	auipc	ra,0x0
    8000362c:	b50080e7          	jalr	-1200(ra) # 80003178 <_ZN15MemoryAllocator11GetInstanceEv>
    80003630:	00048593          	mv	a1,s1
    80003634:	00000097          	auipc	ra,0x0
    80003638:	c3c080e7          	jalr	-964(ra) # 80003270 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    8000363c:	00000513          	li	a0,0
            break;
    80003640:	e31ff06f          	j	80003470 <HandleInterupt+0x144>
            int result = semaphore->wait(current);
    80003644:	00048593          	mv	a1,s1
    80003648:	05893503          	ld	a0,88(s2)
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	3b0080e7          	jalr	944(ra) # 800019fc <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003654:	00a04663          	bgtz	a0,80003660 <HandleInterupt+0x334>
    80003658:	00050513          	mv	a0,a0
    8000365c:	e15ff06f          	j	80003470 <HandleInterupt+0x144>
            KThread* next = Scheduler::GetNext();
    80003660:	fffff097          	auipc	ra,0xfffff
    80003664:	888080e7          	jalr	-1912(ra) # 80001ee8 <_ZN9Scheduler7GetNextEv>
    80003668:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    8000366c:	00050a63          	beqz	a0,80003680 <HandleInterupt+0x354>
            Scheduler::yield(current, next);
    80003670:	00048513          	mv	a0,s1
    80003674:	fffff097          	auipc	ra,0xfffff
    80003678:	838080e7          	jalr	-1992(ra) # 80001eac <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    8000367c:	df5ff06f          	j	80003470 <HandleInterupt+0x144>
            if (next == nullptr) { while(true){} }
    80003680:	0000006f          	j	80003680 <HandleInterupt+0x354>
            semaphore->signal();
    80003684:	05893503          	ld	a0,88(s2)
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	3d4080e7          	jalr	980(ra) # 80001a5c <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003690:	00000513          	li	a0,0
            break;
    80003694:	dddff06f          	j	80003470 <HandleInterupt+0x144>
            int result = semaphore->waitN(current, n);
    80003698:	06092603          	lw	a2,96(s2)
    8000369c:	00048593          	mv	a1,s1
    800036a0:	05893503          	ld	a0,88(s2)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	434080e7          	jalr	1076(ra) # 80001ad8 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    800036ac:	00a04663          	bgtz	a0,800036b8 <HandleInterupt+0x38c>
    800036b0:	00050513          	mv	a0,a0
    800036b4:	dbdff06f          	j	80003470 <HandleInterupt+0x144>
            KThread* next = Scheduler::GetNext();
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	830080e7          	jalr	-2000(ra) # 80001ee8 <_ZN9Scheduler7GetNextEv>
    800036c0:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    800036c4:	00050a63          	beqz	a0,800036d8 <HandleInterupt+0x3ac>
            Scheduler::yield(current, next);
    800036c8:	00048513          	mv	a0,s1
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	7e0080e7          	jalr	2016(ra) # 80001eac <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800036d4:	d9dff06f          	j	80003470 <HandleInterupt+0x144>
            if (next == nullptr) { while(true){} }
    800036d8:	0000006f          	j	800036d8 <HandleInterupt+0x3ac>
            semaphore->signalN(n);
    800036dc:	06092583          	lw	a1,96(s2)
    800036e0:	05893503          	ld	a0,88(s2)
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	464080e7          	jalr	1124(ra) # 80001b48 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    800036ec:	00000513          	li	a0,0
            break;
    800036f0:	d81ff06f          	j	80003470 <HandleInterupt+0x144>
            time_t dur = (time_t)frame[11];
    800036f4:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    800036f8:	00048463          	beqz	s1,80003700 <HandleInterupt+0x3d4>
    800036fc:	0804b823          	sd	zero,144(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    80003700:	00059663          	bnez	a1,8000370c <HandleInterupt+0x3e0>
    80003704:	00000513          	li	a0,0
    80003708:	d69ff06f          	j	80003470 <HandleInterupt+0x144>
            Scheduler::sleep(current, dur);
    8000370c:	00048513          	mv	a0,s1
    80003710:	fffff097          	auipc	ra,0xfffff
    80003714:	b5c080e7          	jalr	-1188(ra) # 8000226c <_ZN9Scheduler5sleepEP7KThreadm>
            KThread* next = Scheduler::GetNext();
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	7d0080e7          	jalr	2000(ra) # 80001ee8 <_ZN9Scheduler7GetNextEv>
    80003720:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80003724:	00050a63          	beqz	a0,80003738 <HandleInterupt+0x40c>
            Scheduler::yield(current, next);
    80003728:	00048513          	mv	a0,s1
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	780080e7          	jalr	1920(ra) # 80001eac <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003734:	d3dff06f          	j	80003470 <HandleInterupt+0x144>
            if (next == nullptr) { while(true){} }
    80003738:	0000006f          	j	80003738 <HandleInterupt+0x40c>
            int result = Konsole::getcKernel(current);
    8000373c:	00048513          	mv	a0,s1
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	f7c080e7          	jalr	-132(ra) # 800026bc <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2) {
    80003748:	ffe00713          	li	a4,-2
    8000374c:	00e50863          	beq	a0,a4,8000375c <HandleInterupt+0x430>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    80003750:	0ff57793          	andi	a5,a0,255
    80003754:	00078513          	mv	a0,a5
    80003758:	d19ff06f          	j	80003470 <HandleInterupt+0x144>
                KThread* next = Scheduler::GetNext();
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	78c080e7          	jalr	1932(ra) # 80001ee8 <_ZN9Scheduler7GetNextEv>
    80003764:	00050593          	mv	a1,a0
                if (next == nullptr) { while(true){} }
    80003768:	00050a63          	beqz	a0,8000377c <HandleInterupt+0x450>
                Scheduler::yield(current, next);
    8000376c:	00048513          	mv	a0,s1
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	73c080e7          	jalr	1852(ra) # 80001eac <_ZN9Scheduler5yieldEP7KThreadS1_>
    80003778:	cf9ff06f          	j	80003470 <HandleInterupt+0x144>
                if (next == nullptr) { while(true){} }
    8000377c:	0000006f          	j	8000377c <HandleInterupt+0x450>
            int result = Konsole::putcKernel(current, c);
    80003780:	05894583          	lbu	a1,88(s2)
    80003784:	00048513          	mv	a0,s1
    80003788:	fffff097          	auipc	ra,0xfffff
    8000378c:	ee4080e7          	jalr	-284(ra) # 8000266c <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003790:	00050513          	mv	a0,a0
            break;
    80003794:	cddff06f          	j	80003470 <HandleInterupt+0x144>

0000000080003798 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00113423          	sd	ra,8(sp)
    800037a0:	00813023          	sd	s0,0(sp)
    800037a4:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	8d4080e7          	jalr	-1836(ra) # 8000207c <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	d1c080e7          	jalr	-740(ra) # 800024cc <_ZN7Konsole4initEv>
    return 0;
}
    800037b8:	00000513          	li	a0,0
    800037bc:	00813083          	ld	ra,8(sp)
    800037c0:	00013403          	ld	s0,0(sp)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret

00000000800037cc <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00113c23          	sd	ra,24(sp)
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	01213023          	sd	s2,0(sp)
    800037e0:	02010413          	addi	s0,sp,32
    800037e4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800037e8:	00000913          	li	s2,0
    800037ec:	00c0006f          	j	800037f8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	e60080e7          	jalr	-416(ra) # 80001650 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	f88080e7          	jalr	-120(ra) # 80001780 <getc>
    80003800:	0005059b          	sext.w	a1,a0
    80003804:	01b00793          	li	a5,27
    80003808:	02f58a63          	beq	a1,a5,8000383c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000380c:	0084b503          	ld	a0,8(s1)
    80003810:	00003097          	auipc	ra,0x3
    80003814:	400080e7          	jalr	1024(ra) # 80006c10 <_ZN6Buffer3putEi>
        i++;
    80003818:	0019071b          	addiw	a4,s2,1
    8000381c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003820:	0004a683          	lw	a3,0(s1)
    80003824:	0026979b          	slliw	a5,a3,0x2
    80003828:	00d787bb          	addw	a5,a5,a3
    8000382c:	0017979b          	slliw	a5,a5,0x1
    80003830:	02f767bb          	remw	a5,a4,a5
    80003834:	fc0792e3          	bnez	a5,800037f8 <_ZL16producerKeyboardPv+0x2c>
    80003838:	fb9ff06f          	j	800037f0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000383c:	00100793          	li	a5,1
    80003840:	00008717          	auipc	a4,0x8
    80003844:	38f72023          	sw	a5,896(a4) # 8000bbc0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003848:	02100593          	li	a1,33
    8000384c:	0084b503          	ld	a0,8(s1)
    80003850:	00003097          	auipc	ra,0x3
    80003854:	3c0080e7          	jalr	960(ra) # 80006c10 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003858:	0104b503          	ld	a0,16(s1)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	ec4080e7          	jalr	-316(ra) # 80001720 <sem_signal>
}
    80003864:	01813083          	ld	ra,24(sp)
    80003868:	01013403          	ld	s0,16(sp)
    8000386c:	00813483          	ld	s1,8(sp)
    80003870:	00013903          	ld	s2,0(sp)
    80003874:	02010113          	addi	sp,sp,32
    80003878:	00008067          	ret

000000008000387c <_ZL8producerPv>:

static void producer(void *arg) {
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	01213023          	sd	s2,0(sp)
    80003890:	02010413          	addi	s0,sp,32
    80003894:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003898:	00000913          	li	s2,0
    8000389c:	00c0006f          	j	800038a8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	db0080e7          	jalr	-592(ra) # 80001650 <thread_dispatch>
    while (!threadEnd) {
    800038a8:	00008797          	auipc	a5,0x8
    800038ac:	3187a783          	lw	a5,792(a5) # 8000bbc0 <_ZL9threadEnd>
    800038b0:	02079e63          	bnez	a5,800038ec <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800038b4:	0004a583          	lw	a1,0(s1)
    800038b8:	0305859b          	addiw	a1,a1,48
    800038bc:	0084b503          	ld	a0,8(s1)
    800038c0:	00003097          	auipc	ra,0x3
    800038c4:	350080e7          	jalr	848(ra) # 80006c10 <_ZN6Buffer3putEi>
        i++;
    800038c8:	0019071b          	addiw	a4,s2,1
    800038cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800038d0:	0004a683          	lw	a3,0(s1)
    800038d4:	0026979b          	slliw	a5,a3,0x2
    800038d8:	00d787bb          	addw	a5,a5,a3
    800038dc:	0017979b          	slliw	a5,a5,0x1
    800038e0:	02f767bb          	remw	a5,a4,a5
    800038e4:	fc0792e3          	bnez	a5,800038a8 <_ZL8producerPv+0x2c>
    800038e8:	fb9ff06f          	j	800038a0 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800038ec:	0104b503          	ld	a0,16(s1)
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	e30080e7          	jalr	-464(ra) # 80001720 <sem_signal>
}
    800038f8:	01813083          	ld	ra,24(sp)
    800038fc:	01013403          	ld	s0,16(sp)
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	00013903          	ld	s2,0(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret

0000000080003910 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003910:	fd010113          	addi	sp,sp,-48
    80003914:	02113423          	sd	ra,40(sp)
    80003918:	02813023          	sd	s0,32(sp)
    8000391c:	00913c23          	sd	s1,24(sp)
    80003920:	01213823          	sd	s2,16(sp)
    80003924:	01313423          	sd	s3,8(sp)
    80003928:	03010413          	addi	s0,sp,48
    8000392c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003930:	00000993          	li	s3,0
    80003934:	01c0006f          	j	80003950 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	d18080e7          	jalr	-744(ra) # 80001650 <thread_dispatch>
    80003940:	0500006f          	j	80003990 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003944:	00a00513          	li	a0,10
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	e5c080e7          	jalr	-420(ra) # 800017a4 <putc>
    while (!threadEnd) {
    80003950:	00008797          	auipc	a5,0x8
    80003954:	2707a783          	lw	a5,624(a5) # 8000bbc0 <_ZL9threadEnd>
    80003958:	06079063          	bnez	a5,800039b8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000395c:	00893503          	ld	a0,8(s2)
    80003960:	00003097          	auipc	ra,0x3
    80003964:	340080e7          	jalr	832(ra) # 80006ca0 <_ZN6Buffer3getEv>
        i++;
    80003968:	0019849b          	addiw	s1,s3,1
    8000396c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003970:	0ff57513          	andi	a0,a0,255
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	e30080e7          	jalr	-464(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    8000397c:	00092703          	lw	a4,0(s2)
    80003980:	0027179b          	slliw	a5,a4,0x2
    80003984:	00e787bb          	addw	a5,a5,a4
    80003988:	02f4e7bb          	remw	a5,s1,a5
    8000398c:	fa0786e3          	beqz	a5,80003938 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003990:	05000793          	li	a5,80
    80003994:	02f4e4bb          	remw	s1,s1,a5
    80003998:	fa049ce3          	bnez	s1,80003950 <_ZL8consumerPv+0x40>
    8000399c:	fa9ff06f          	j	80003944 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800039a0:	00893503          	ld	a0,8(s2)
    800039a4:	00003097          	auipc	ra,0x3
    800039a8:	2fc080e7          	jalr	764(ra) # 80006ca0 <_ZN6Buffer3getEv>
        putc(key);
    800039ac:	0ff57513          	andi	a0,a0,255
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	df4080e7          	jalr	-524(ra) # 800017a4 <putc>
    while (data->buffer->getCnt() > 0) {
    800039b8:	00893503          	ld	a0,8(s2)
    800039bc:	00003097          	auipc	ra,0x3
    800039c0:	370080e7          	jalr	880(ra) # 80006d2c <_ZN6Buffer6getCntEv>
    800039c4:	fca04ee3          	bgtz	a0,800039a0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800039c8:	01093503          	ld	a0,16(s2)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	d54080e7          	jalr	-684(ra) # 80001720 <sem_signal>
}
    800039d4:	02813083          	ld	ra,40(sp)
    800039d8:	02013403          	ld	s0,32(sp)
    800039dc:	01813483          	ld	s1,24(sp)
    800039e0:	01013903          	ld	s2,16(sp)
    800039e4:	00813983          	ld	s3,8(sp)
    800039e8:	03010113          	addi	sp,sp,48
    800039ec:	00008067          	ret

00000000800039f0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800039f0:	f9010113          	addi	sp,sp,-112
    800039f4:	06113423          	sd	ra,104(sp)
    800039f8:	06813023          	sd	s0,96(sp)
    800039fc:	04913c23          	sd	s1,88(sp)
    80003a00:	05213823          	sd	s2,80(sp)
    80003a04:	05313423          	sd	s3,72(sp)
    80003a08:	05413023          	sd	s4,64(sp)
    80003a0c:	03513c23          	sd	s5,56(sp)
    80003a10:	03613823          	sd	s6,48(sp)
    80003a14:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003a18:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003a1c:	00005517          	auipc	a0,0x5
    80003a20:	71450513          	addi	a0,a0,1812 # 80009130 <CONSOLE_STATUS+0x120>
    80003a24:	00002097          	auipc	ra,0x2
    80003a28:	374080e7          	jalr	884(ra) # 80005d98 <_Z11printStringPKc>
    getString(input, 30);
    80003a2c:	01e00593          	li	a1,30
    80003a30:	fa040493          	addi	s1,s0,-96
    80003a34:	00048513          	mv	a0,s1
    80003a38:	00002097          	auipc	ra,0x2
    80003a3c:	3e8080e7          	jalr	1000(ra) # 80005e20 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003a40:	00048513          	mv	a0,s1
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	4b4080e7          	jalr	1204(ra) # 80005ef8 <_Z11stringToIntPKc>
    80003a4c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003a50:	00005517          	auipc	a0,0x5
    80003a54:	70050513          	addi	a0,a0,1792 # 80009150 <CONSOLE_STATUS+0x140>
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	340080e7          	jalr	832(ra) # 80005d98 <_Z11printStringPKc>
    getString(input, 30);
    80003a60:	01e00593          	li	a1,30
    80003a64:	00048513          	mv	a0,s1
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	3b8080e7          	jalr	952(ra) # 80005e20 <_Z9getStringPci>
    n = stringToInt(input);
    80003a70:	00048513          	mv	a0,s1
    80003a74:	00002097          	auipc	ra,0x2
    80003a78:	484080e7          	jalr	1156(ra) # 80005ef8 <_Z11stringToIntPKc>
    80003a7c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003a80:	00005517          	auipc	a0,0x5
    80003a84:	6f050513          	addi	a0,a0,1776 # 80009170 <CONSOLE_STATUS+0x160>
    80003a88:	00002097          	auipc	ra,0x2
    80003a8c:	310080e7          	jalr	784(ra) # 80005d98 <_Z11printStringPKc>
    80003a90:	00000613          	li	a2,0
    80003a94:	00a00593          	li	a1,10
    80003a98:	00090513          	mv	a0,s2
    80003a9c:	00002097          	auipc	ra,0x2
    80003aa0:	4ac080e7          	jalr	1196(ra) # 80005f48 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003aa4:	00005517          	auipc	a0,0x5
    80003aa8:	6e450513          	addi	a0,a0,1764 # 80009188 <CONSOLE_STATUS+0x178>
    80003aac:	00002097          	auipc	ra,0x2
    80003ab0:	2ec080e7          	jalr	748(ra) # 80005d98 <_Z11printStringPKc>
    80003ab4:	00000613          	li	a2,0
    80003ab8:	00a00593          	li	a1,10
    80003abc:	00048513          	mv	a0,s1
    80003ac0:	00002097          	auipc	ra,0x2
    80003ac4:	488080e7          	jalr	1160(ra) # 80005f48 <_Z8printIntiii>
    printString(".\n");
    80003ac8:	00005517          	auipc	a0,0x5
    80003acc:	6d850513          	addi	a0,a0,1752 # 800091a0 <CONSOLE_STATUS+0x190>
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	2c8080e7          	jalr	712(ra) # 80005d98 <_Z11printStringPKc>
    if(threadNum > n) {
    80003ad8:	0324c463          	blt	s1,s2,80003b00 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003adc:	03205c63          	blez	s2,80003b14 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003ae0:	03800513          	li	a0,56
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	2b0080e7          	jalr	688(ra) # 80002d94 <_Znwm>
    80003aec:	00050a13          	mv	s4,a0
    80003af0:	00048593          	mv	a1,s1
    80003af4:	00003097          	auipc	ra,0x3
    80003af8:	080080e7          	jalr	128(ra) # 80006b74 <_ZN6BufferC1Ei>
    80003afc:	0300006f          	j	80003b2c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b00:	00005517          	auipc	a0,0x5
    80003b04:	6a850513          	addi	a0,a0,1704 # 800091a8 <CONSOLE_STATUS+0x198>
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	290080e7          	jalr	656(ra) # 80005d98 <_Z11printStringPKc>
        return;
    80003b10:	0140006f          	j	80003b24 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003b14:	00005517          	auipc	a0,0x5
    80003b18:	6d450513          	addi	a0,a0,1748 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	27c080e7          	jalr	636(ra) # 80005d98 <_Z11printStringPKc>
        return;
    80003b24:	000b0113          	mv	sp,s6
    80003b28:	1500006f          	j	80003c78 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003b2c:	00000593          	li	a1,0
    80003b30:	00008517          	auipc	a0,0x8
    80003b34:	09850513          	addi	a0,a0,152 # 8000bbc8 <_ZL10waitForAll>
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	b60080e7          	jalr	-1184(ra) # 80001698 <sem_open>
    thread_t threads[threadNum];
    80003b40:	00391793          	slli	a5,s2,0x3
    80003b44:	00f78793          	addi	a5,a5,15
    80003b48:	ff07f793          	andi	a5,a5,-16
    80003b4c:	40f10133          	sub	sp,sp,a5
    80003b50:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003b54:	0019071b          	addiw	a4,s2,1
    80003b58:	00171793          	slli	a5,a4,0x1
    80003b5c:	00e787b3          	add	a5,a5,a4
    80003b60:	00379793          	slli	a5,a5,0x3
    80003b64:	00f78793          	addi	a5,a5,15
    80003b68:	ff07f793          	andi	a5,a5,-16
    80003b6c:	40f10133          	sub	sp,sp,a5
    80003b70:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003b74:	00191613          	slli	a2,s2,0x1
    80003b78:	012607b3          	add	a5,a2,s2
    80003b7c:	00379793          	slli	a5,a5,0x3
    80003b80:	00f987b3          	add	a5,s3,a5
    80003b84:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003b88:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003b8c:	00008717          	auipc	a4,0x8
    80003b90:	03c73703          	ld	a4,60(a4) # 8000bbc8 <_ZL10waitForAll>
    80003b94:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003b98:	00078613          	mv	a2,a5
    80003b9c:	00000597          	auipc	a1,0x0
    80003ba0:	d7458593          	addi	a1,a1,-652 # 80003910 <_ZL8consumerPv>
    80003ba4:	f9840513          	addi	a0,s0,-104
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	a04080e7          	jalr	-1532(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003bb0:	00000493          	li	s1,0
    80003bb4:	0280006f          	j	80003bdc <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003bb8:	00000597          	auipc	a1,0x0
    80003bbc:	c1458593          	addi	a1,a1,-1004 # 800037cc <_ZL16producerKeyboardPv>
                      data + i);
    80003bc0:	00179613          	slli	a2,a5,0x1
    80003bc4:	00f60633          	add	a2,a2,a5
    80003bc8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003bcc:	00c98633          	add	a2,s3,a2
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	9dc080e7          	jalr	-1572(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003bd8:	0014849b          	addiw	s1,s1,1
    80003bdc:	0524d263          	bge	s1,s2,80003c20 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003be0:	00149793          	slli	a5,s1,0x1
    80003be4:	009787b3          	add	a5,a5,s1
    80003be8:	00379793          	slli	a5,a5,0x3
    80003bec:	00f987b3          	add	a5,s3,a5
    80003bf0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003bf4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003bf8:	00008717          	auipc	a4,0x8
    80003bfc:	fd073703          	ld	a4,-48(a4) # 8000bbc8 <_ZL10waitForAll>
    80003c00:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003c04:	00048793          	mv	a5,s1
    80003c08:	00349513          	slli	a0,s1,0x3
    80003c0c:	00aa8533          	add	a0,s5,a0
    80003c10:	fa9054e3          	blez	s1,80003bb8 <_Z22producerConsumer_C_APIv+0x1c8>
    80003c14:	00000597          	auipc	a1,0x0
    80003c18:	c6858593          	addi	a1,a1,-920 # 8000387c <_ZL8producerPv>
    80003c1c:	fa5ff06f          	j	80003bc0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	a30080e7          	jalr	-1488(ra) # 80001650 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003c28:	00000493          	li	s1,0
    80003c2c:	00994e63          	blt	s2,s1,80003c48 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003c30:	00008517          	auipc	a0,0x8
    80003c34:	f9853503          	ld	a0,-104(a0) # 8000bbc8 <_ZL10waitForAll>
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	ac0080e7          	jalr	-1344(ra) # 800016f8 <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003c40:	0014849b          	addiw	s1,s1,1
    80003c44:	fe9ff06f          	j	80003c2c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003c48:	00008517          	auipc	a0,0x8
    80003c4c:	f8053503          	ld	a0,-128(a0) # 8000bbc8 <_ZL10waitForAll>
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	a80080e7          	jalr	-1408(ra) # 800016d0 <sem_close>
    delete buffer;
    80003c58:	000a0e63          	beqz	s4,80003c74 <_Z22producerConsumer_C_APIv+0x284>
    80003c5c:	000a0513          	mv	a0,s4
    80003c60:	00003097          	auipc	ra,0x3
    80003c64:	154080e7          	jalr	340(ra) # 80006db4 <_ZN6BufferD1Ev>
    80003c68:	000a0513          	mv	a0,s4
    80003c6c:	fffff097          	auipc	ra,0xfffff
    80003c70:	150080e7          	jalr	336(ra) # 80002dbc <_ZdlPv>
    80003c74:	000b0113          	mv	sp,s6

}
    80003c78:	f9040113          	addi	sp,s0,-112
    80003c7c:	06813083          	ld	ra,104(sp)
    80003c80:	06013403          	ld	s0,96(sp)
    80003c84:	05813483          	ld	s1,88(sp)
    80003c88:	05013903          	ld	s2,80(sp)
    80003c8c:	04813983          	ld	s3,72(sp)
    80003c90:	04013a03          	ld	s4,64(sp)
    80003c94:	03813a83          	ld	s5,56(sp)
    80003c98:	03013b03          	ld	s6,48(sp)
    80003c9c:	07010113          	addi	sp,sp,112
    80003ca0:	00008067          	ret
    80003ca4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003ca8:	000a0513          	mv	a0,s4
    80003cac:	fffff097          	auipc	ra,0xfffff
    80003cb0:	110080e7          	jalr	272(ra) # 80002dbc <_ZdlPv>
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	00009097          	auipc	ra,0x9
    80003cbc:	020080e7          	jalr	32(ra) # 8000ccd8 <_Unwind_Resume>

0000000080003cc0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	01213023          	sd	s2,0(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    80003cd8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003cdc:	00100793          	li	a5,1
    80003ce0:	02a7f863          	bgeu	a5,a0,80003d10 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003ce4:	00a00793          	li	a5,10
    80003ce8:	02f577b3          	remu	a5,a0,a5
    80003cec:	02078e63          	beqz	a5,80003d28 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003cf0:	fff48513          	addi	a0,s1,-1
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	fcc080e7          	jalr	-52(ra) # 80003cc0 <_ZL9fibonaccim>
    80003cfc:	00050913          	mv	s2,a0
    80003d00:	ffe48513          	addi	a0,s1,-2
    80003d04:	00000097          	auipc	ra,0x0
    80003d08:	fbc080e7          	jalr	-68(ra) # 80003cc0 <_ZL9fibonaccim>
    80003d0c:	00a90533          	add	a0,s2,a0
}
    80003d10:	01813083          	ld	ra,24(sp)
    80003d14:	01013403          	ld	s0,16(sp)
    80003d18:	00813483          	ld	s1,8(sp)
    80003d1c:	00013903          	ld	s2,0(sp)
    80003d20:	02010113          	addi	sp,sp,32
    80003d24:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	928080e7          	jalr	-1752(ra) # 80001650 <thread_dispatch>
    80003d30:	fc1ff06f          	j	80003cf0 <_ZL9fibonaccim+0x30>

0000000080003d34 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003d34:	fe010113          	addi	sp,sp,-32
    80003d38:	00113c23          	sd	ra,24(sp)
    80003d3c:	00813823          	sd	s0,16(sp)
    80003d40:	00913423          	sd	s1,8(sp)
    80003d44:	01213023          	sd	s2,0(sp)
    80003d48:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003d4c:	00000913          	li	s2,0
    80003d50:	0380006f          	j	80003d88 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	8fc080e7          	jalr	-1796(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003d5c:	00148493          	addi	s1,s1,1
    80003d60:	000027b7          	lui	a5,0x2
    80003d64:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d68:	0097ee63          	bltu	a5,s1,80003d84 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d6c:	00000713          	li	a4,0
    80003d70:	000077b7          	lui	a5,0x7
    80003d74:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d78:	fce7eee3          	bltu	a5,a4,80003d54 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003d7c:	00170713          	addi	a4,a4,1
    80003d80:	ff1ff06f          	j	80003d70 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003d84:	00190913          	addi	s2,s2,1
    80003d88:	00900793          	li	a5,9
    80003d8c:	0527e063          	bltu	a5,s2,80003dcc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003d90:	00005517          	auipc	a0,0x5
    80003d94:	48850513          	addi	a0,a0,1160 # 80009218 <CONSOLE_STATUS+0x208>
    80003d98:	00002097          	auipc	ra,0x2
    80003d9c:	000080e7          	jalr	ra # 80005d98 <_Z11printStringPKc>
    80003da0:	00000613          	li	a2,0
    80003da4:	00a00593          	li	a1,10
    80003da8:	0009051b          	sext.w	a0,s2
    80003dac:	00002097          	auipc	ra,0x2
    80003db0:	19c080e7          	jalr	412(ra) # 80005f48 <_Z8printIntiii>
    80003db4:	00005517          	auipc	a0,0x5
    80003db8:	6d450513          	addi	a0,a0,1748 # 80009488 <CONSOLE_STATUS+0x478>
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	fdc080e7          	jalr	-36(ra) # 80005d98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003dc4:	00000493          	li	s1,0
    80003dc8:	f99ff06f          	j	80003d60 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003dcc:	00005517          	auipc	a0,0x5
    80003dd0:	45450513          	addi	a0,a0,1108 # 80009220 <CONSOLE_STATUS+0x210>
    80003dd4:	00002097          	auipc	ra,0x2
    80003dd8:	fc4080e7          	jalr	-60(ra) # 80005d98 <_Z11printStringPKc>
    finishedA = true;
    80003ddc:	00100793          	li	a5,1
    80003de0:	00008717          	auipc	a4,0x8
    80003de4:	def70823          	sb	a5,-528(a4) # 8000bbd0 <_ZL9finishedA>
}
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	00013903          	ld	s2,0(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret

0000000080003e00 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003e00:	fe010113          	addi	sp,sp,-32
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	00813823          	sd	s0,16(sp)
    80003e0c:	00913423          	sd	s1,8(sp)
    80003e10:	01213023          	sd	s2,0(sp)
    80003e14:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e18:	00000913          	li	s2,0
    80003e1c:	0380006f          	j	80003e54 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	830080e7          	jalr	-2000(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003e28:	00148493          	addi	s1,s1,1
    80003e2c:	000027b7          	lui	a5,0x2
    80003e30:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e34:	0097ee63          	bltu	a5,s1,80003e50 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e38:	00000713          	li	a4,0
    80003e3c:	000077b7          	lui	a5,0x7
    80003e40:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e44:	fce7eee3          	bltu	a5,a4,80003e20 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003e48:	00170713          	addi	a4,a4,1
    80003e4c:	ff1ff06f          	j	80003e3c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003e50:	00190913          	addi	s2,s2,1
    80003e54:	00f00793          	li	a5,15
    80003e58:	0527e063          	bltu	a5,s2,80003e98 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003e5c:	00005517          	auipc	a0,0x5
    80003e60:	3d450513          	addi	a0,a0,980 # 80009230 <CONSOLE_STATUS+0x220>
    80003e64:	00002097          	auipc	ra,0x2
    80003e68:	f34080e7          	jalr	-204(ra) # 80005d98 <_Z11printStringPKc>
    80003e6c:	00000613          	li	a2,0
    80003e70:	00a00593          	li	a1,10
    80003e74:	0009051b          	sext.w	a0,s2
    80003e78:	00002097          	auipc	ra,0x2
    80003e7c:	0d0080e7          	jalr	208(ra) # 80005f48 <_Z8printIntiii>
    80003e80:	00005517          	auipc	a0,0x5
    80003e84:	60850513          	addi	a0,a0,1544 # 80009488 <CONSOLE_STATUS+0x478>
    80003e88:	00002097          	auipc	ra,0x2
    80003e8c:	f10080e7          	jalr	-240(ra) # 80005d98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e90:	00000493          	li	s1,0
    80003e94:	f99ff06f          	j	80003e2c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003e98:	00005517          	auipc	a0,0x5
    80003e9c:	3a050513          	addi	a0,a0,928 # 80009238 <CONSOLE_STATUS+0x228>
    80003ea0:	00002097          	auipc	ra,0x2
    80003ea4:	ef8080e7          	jalr	-264(ra) # 80005d98 <_Z11printStringPKc>
    finishedB = true;
    80003ea8:	00100793          	li	a5,1
    80003eac:	00008717          	auipc	a4,0x8
    80003eb0:	d2f702a3          	sb	a5,-731(a4) # 8000bbd1 <_ZL9finishedB>
    thread_dispatch();
    80003eb4:	ffffd097          	auipc	ra,0xffffd
    80003eb8:	79c080e7          	jalr	1948(ra) # 80001650 <thread_dispatch>
}
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00013903          	ld	s2,0(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003ed4:	fe010113          	addi	sp,sp,-32
    80003ed8:	00113c23          	sd	ra,24(sp)
    80003edc:	00813823          	sd	s0,16(sp)
    80003ee0:	00913423          	sd	s1,8(sp)
    80003ee4:	01213023          	sd	s2,0(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003eec:	00000493          	li	s1,0
    80003ef0:	0400006f          	j	80003f30 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ef4:	00005517          	auipc	a0,0x5
    80003ef8:	35450513          	addi	a0,a0,852 # 80009248 <CONSOLE_STATUS+0x238>
    80003efc:	00002097          	auipc	ra,0x2
    80003f00:	e9c080e7          	jalr	-356(ra) # 80005d98 <_Z11printStringPKc>
    80003f04:	00000613          	li	a2,0
    80003f08:	00a00593          	li	a1,10
    80003f0c:	00048513          	mv	a0,s1
    80003f10:	00002097          	auipc	ra,0x2
    80003f14:	038080e7          	jalr	56(ra) # 80005f48 <_Z8printIntiii>
    80003f18:	00005517          	auipc	a0,0x5
    80003f1c:	57050513          	addi	a0,a0,1392 # 80009488 <CONSOLE_STATUS+0x478>
    80003f20:	00002097          	auipc	ra,0x2
    80003f24:	e78080e7          	jalr	-392(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f28:	0014849b          	addiw	s1,s1,1
    80003f2c:	0ff4f493          	andi	s1,s1,255
    80003f30:	00200793          	li	a5,2
    80003f34:	fc97f0e3          	bgeu	a5,s1,80003ef4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003f38:	00005517          	auipc	a0,0x5
    80003f3c:	31850513          	addi	a0,a0,792 # 80009250 <CONSOLE_STATUS+0x240>
    80003f40:	00002097          	auipc	ra,0x2
    80003f44:	e58080e7          	jalr	-424(ra) # 80005d98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f48:	00700313          	li	t1,7
    thread_dispatch();
    80003f4c:	ffffd097          	auipc	ra,0xffffd
    80003f50:	704080e7          	jalr	1796(ra) # 80001650 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f54:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	30850513          	addi	a0,a0,776 # 80009260 <CONSOLE_STATUS+0x250>
    80003f60:	00002097          	auipc	ra,0x2
    80003f64:	e38080e7          	jalr	-456(ra) # 80005d98 <_Z11printStringPKc>
    80003f68:	00000613          	li	a2,0
    80003f6c:	00a00593          	li	a1,10
    80003f70:	0009051b          	sext.w	a0,s2
    80003f74:	00002097          	auipc	ra,0x2
    80003f78:	fd4080e7          	jalr	-44(ra) # 80005f48 <_Z8printIntiii>
    80003f7c:	00005517          	auipc	a0,0x5
    80003f80:	50c50513          	addi	a0,a0,1292 # 80009488 <CONSOLE_STATUS+0x478>
    80003f84:	00002097          	auipc	ra,0x2
    80003f88:	e14080e7          	jalr	-492(ra) # 80005d98 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003f8c:	00c00513          	li	a0,12
    80003f90:	00000097          	auipc	ra,0x0
    80003f94:	d30080e7          	jalr	-720(ra) # 80003cc0 <_ZL9fibonaccim>
    80003f98:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003f9c:	00005517          	auipc	a0,0x5
    80003fa0:	2cc50513          	addi	a0,a0,716 # 80009268 <CONSOLE_STATUS+0x258>
    80003fa4:	00002097          	auipc	ra,0x2
    80003fa8:	df4080e7          	jalr	-524(ra) # 80005d98 <_Z11printStringPKc>
    80003fac:	00000613          	li	a2,0
    80003fb0:	00a00593          	li	a1,10
    80003fb4:	0009051b          	sext.w	a0,s2
    80003fb8:	00002097          	auipc	ra,0x2
    80003fbc:	f90080e7          	jalr	-112(ra) # 80005f48 <_Z8printIntiii>
    80003fc0:	00005517          	auipc	a0,0x5
    80003fc4:	4c850513          	addi	a0,a0,1224 # 80009488 <CONSOLE_STATUS+0x478>
    80003fc8:	00002097          	auipc	ra,0x2
    80003fcc:	dd0080e7          	jalr	-560(ra) # 80005d98 <_Z11printStringPKc>
    80003fd0:	0400006f          	j	80004010 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003fd4:	00005517          	auipc	a0,0x5
    80003fd8:	27450513          	addi	a0,a0,628 # 80009248 <CONSOLE_STATUS+0x238>
    80003fdc:	00002097          	auipc	ra,0x2
    80003fe0:	dbc080e7          	jalr	-580(ra) # 80005d98 <_Z11printStringPKc>
    80003fe4:	00000613          	li	a2,0
    80003fe8:	00a00593          	li	a1,10
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	00002097          	auipc	ra,0x2
    80003ff4:	f58080e7          	jalr	-168(ra) # 80005f48 <_Z8printIntiii>
    80003ff8:	00005517          	auipc	a0,0x5
    80003ffc:	49050513          	addi	a0,a0,1168 # 80009488 <CONSOLE_STATUS+0x478>
    80004000:	00002097          	auipc	ra,0x2
    80004004:	d98080e7          	jalr	-616(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004008:	0014849b          	addiw	s1,s1,1
    8000400c:	0ff4f493          	andi	s1,s1,255
    80004010:	00500793          	li	a5,5
    80004014:	fc97f0e3          	bgeu	a5,s1,80003fd4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004018:	00005517          	auipc	a0,0x5
    8000401c:	20850513          	addi	a0,a0,520 # 80009220 <CONSOLE_STATUS+0x210>
    80004020:	00002097          	auipc	ra,0x2
    80004024:	d78080e7          	jalr	-648(ra) # 80005d98 <_Z11printStringPKc>
    finishedC = true;
    80004028:	00100793          	li	a5,1
    8000402c:	00008717          	auipc	a4,0x8
    80004030:	baf70323          	sb	a5,-1114(a4) # 8000bbd2 <_ZL9finishedC>
    thread_dispatch();
    80004034:	ffffd097          	auipc	ra,0xffffd
    80004038:	61c080e7          	jalr	1564(ra) # 80001650 <thread_dispatch>
}
    8000403c:	01813083          	ld	ra,24(sp)
    80004040:	01013403          	ld	s0,16(sp)
    80004044:	00813483          	ld	s1,8(sp)
    80004048:	00013903          	ld	s2,0(sp)
    8000404c:	02010113          	addi	sp,sp,32
    80004050:	00008067          	ret

0000000080004054 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004054:	fe010113          	addi	sp,sp,-32
    80004058:	00113c23          	sd	ra,24(sp)
    8000405c:	00813823          	sd	s0,16(sp)
    80004060:	00913423          	sd	s1,8(sp)
    80004064:	01213023          	sd	s2,0(sp)
    80004068:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000406c:	00a00493          	li	s1,10
    80004070:	0400006f          	j	800040b0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004074:	00005517          	auipc	a0,0x5
    80004078:	20450513          	addi	a0,a0,516 # 80009278 <CONSOLE_STATUS+0x268>
    8000407c:	00002097          	auipc	ra,0x2
    80004080:	d1c080e7          	jalr	-740(ra) # 80005d98 <_Z11printStringPKc>
    80004084:	00000613          	li	a2,0
    80004088:	00a00593          	li	a1,10
    8000408c:	00048513          	mv	a0,s1
    80004090:	00002097          	auipc	ra,0x2
    80004094:	eb8080e7          	jalr	-328(ra) # 80005f48 <_Z8printIntiii>
    80004098:	00005517          	auipc	a0,0x5
    8000409c:	3f050513          	addi	a0,a0,1008 # 80009488 <CONSOLE_STATUS+0x478>
    800040a0:	00002097          	auipc	ra,0x2
    800040a4:	cf8080e7          	jalr	-776(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800040a8:	0014849b          	addiw	s1,s1,1
    800040ac:	0ff4f493          	andi	s1,s1,255
    800040b0:	00c00793          	li	a5,12
    800040b4:	fc97f0e3          	bgeu	a5,s1,80004074 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	1c850513          	addi	a0,a0,456 # 80009280 <CONSOLE_STATUS+0x270>
    800040c0:	00002097          	auipc	ra,0x2
    800040c4:	cd8080e7          	jalr	-808(ra) # 80005d98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800040c8:	00500313          	li	t1,5
    thread_dispatch();
    800040cc:	ffffd097          	auipc	ra,0xffffd
    800040d0:	584080e7          	jalr	1412(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    800040d4:	01000513          	li	a0,16
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	be8080e7          	jalr	-1048(ra) # 80003cc0 <_ZL9fibonaccim>
    800040e0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800040e4:	00005517          	auipc	a0,0x5
    800040e8:	1ac50513          	addi	a0,a0,428 # 80009290 <CONSOLE_STATUS+0x280>
    800040ec:	00002097          	auipc	ra,0x2
    800040f0:	cac080e7          	jalr	-852(ra) # 80005d98 <_Z11printStringPKc>
    800040f4:	00000613          	li	a2,0
    800040f8:	00a00593          	li	a1,10
    800040fc:	0009051b          	sext.w	a0,s2
    80004100:	00002097          	auipc	ra,0x2
    80004104:	e48080e7          	jalr	-440(ra) # 80005f48 <_Z8printIntiii>
    80004108:	00005517          	auipc	a0,0x5
    8000410c:	38050513          	addi	a0,a0,896 # 80009488 <CONSOLE_STATUS+0x478>
    80004110:	00002097          	auipc	ra,0x2
    80004114:	c88080e7          	jalr	-888(ra) # 80005d98 <_Z11printStringPKc>
    80004118:	0400006f          	j	80004158 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000411c:	00005517          	auipc	a0,0x5
    80004120:	15c50513          	addi	a0,a0,348 # 80009278 <CONSOLE_STATUS+0x268>
    80004124:	00002097          	auipc	ra,0x2
    80004128:	c74080e7          	jalr	-908(ra) # 80005d98 <_Z11printStringPKc>
    8000412c:	00000613          	li	a2,0
    80004130:	00a00593          	li	a1,10
    80004134:	00048513          	mv	a0,s1
    80004138:	00002097          	auipc	ra,0x2
    8000413c:	e10080e7          	jalr	-496(ra) # 80005f48 <_Z8printIntiii>
    80004140:	00005517          	auipc	a0,0x5
    80004144:	34850513          	addi	a0,a0,840 # 80009488 <CONSOLE_STATUS+0x478>
    80004148:	00002097          	auipc	ra,0x2
    8000414c:	c50080e7          	jalr	-944(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004150:	0014849b          	addiw	s1,s1,1
    80004154:	0ff4f493          	andi	s1,s1,255
    80004158:	00f00793          	li	a5,15
    8000415c:	fc97f0e3          	bgeu	a5,s1,8000411c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004160:	00005517          	auipc	a0,0x5
    80004164:	14050513          	addi	a0,a0,320 # 800092a0 <CONSOLE_STATUS+0x290>
    80004168:	00002097          	auipc	ra,0x2
    8000416c:	c30080e7          	jalr	-976(ra) # 80005d98 <_Z11printStringPKc>
    finishedD = true;
    80004170:	00100793          	li	a5,1
    80004174:	00008717          	auipc	a4,0x8
    80004178:	a4f70fa3          	sb	a5,-1441(a4) # 8000bbd3 <_ZL9finishedD>
    thread_dispatch();
    8000417c:	ffffd097          	auipc	ra,0xffffd
    80004180:	4d4080e7          	jalr	1236(ra) # 80001650 <thread_dispatch>
}
    80004184:	01813083          	ld	ra,24(sp)
    80004188:	01013403          	ld	s0,16(sp)
    8000418c:	00813483          	ld	s1,8(sp)
    80004190:	00013903          	ld	s2,0(sp)
    80004194:	02010113          	addi	sp,sp,32
    80004198:	00008067          	ret

000000008000419c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000419c:	fc010113          	addi	sp,sp,-64
    800041a0:	02113c23          	sd	ra,56(sp)
    800041a4:	02813823          	sd	s0,48(sp)
    800041a8:	02913423          	sd	s1,40(sp)
    800041ac:	03213023          	sd	s2,32(sp)
    800041b0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800041b4:	02000513          	li	a0,32
    800041b8:	fffff097          	auipc	ra,0xfffff
    800041bc:	bdc080e7          	jalr	-1060(ra) # 80002d94 <_Znwm>
    800041c0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	cb8080e7          	jalr	-840(ra) # 80002e7c <_ZN6ThreadC1Ev>
    800041cc:	00007797          	auipc	a5,0x7
    800041d0:	55478793          	addi	a5,a5,1364 # 8000b720 <_ZTV7WorkerA+0x10>
    800041d4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800041d8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800041dc:	00005517          	auipc	a0,0x5
    800041e0:	0d450513          	addi	a0,a0,212 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800041e4:	00002097          	auipc	ra,0x2
    800041e8:	bb4080e7          	jalr	-1100(ra) # 80005d98 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800041ec:	02000513          	li	a0,32
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	ba4080e7          	jalr	-1116(ra) # 80002d94 <_Znwm>
    800041f8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800041fc:	fffff097          	auipc	ra,0xfffff
    80004200:	c80080e7          	jalr	-896(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80004204:	00007797          	auipc	a5,0x7
    80004208:	54478793          	addi	a5,a5,1348 # 8000b748 <_ZTV7WorkerB+0x10>
    8000420c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004210:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004214:	00005517          	auipc	a0,0x5
    80004218:	0b450513          	addi	a0,a0,180 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000421c:	00002097          	auipc	ra,0x2
    80004220:	b7c080e7          	jalr	-1156(ra) # 80005d98 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004224:	02000513          	li	a0,32
    80004228:	fffff097          	auipc	ra,0xfffff
    8000422c:	b6c080e7          	jalr	-1172(ra) # 80002d94 <_Znwm>
    80004230:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004234:	fffff097          	auipc	ra,0xfffff
    80004238:	c48080e7          	jalr	-952(ra) # 80002e7c <_ZN6ThreadC1Ev>
    8000423c:	00007797          	auipc	a5,0x7
    80004240:	53478793          	addi	a5,a5,1332 # 8000b770 <_ZTV7WorkerC+0x10>
    80004244:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004248:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000424c:	00005517          	auipc	a0,0x5
    80004250:	09450513          	addi	a0,a0,148 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004254:	00002097          	auipc	ra,0x2
    80004258:	b44080e7          	jalr	-1212(ra) # 80005d98 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000425c:	02000513          	li	a0,32
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	b34080e7          	jalr	-1228(ra) # 80002d94 <_Znwm>
    80004268:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    8000426c:	fffff097          	auipc	ra,0xfffff
    80004270:	c10080e7          	jalr	-1008(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80004274:	00007797          	auipc	a5,0x7
    80004278:	52478793          	addi	a5,a5,1316 # 8000b798 <_ZTV7WorkerD+0x10>
    8000427c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004280:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004284:	00005517          	auipc	a0,0x5
    80004288:	07450513          	addi	a0,a0,116 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000428c:	00002097          	auipc	ra,0x2
    80004290:	b0c080e7          	jalr	-1268(ra) # 80005d98 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004294:	00000493          	li	s1,0
    80004298:	00300793          	li	a5,3
    8000429c:	0297c663          	blt	a5,s1,800042c8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800042a0:	00349793          	slli	a5,s1,0x3
    800042a4:	fe040713          	addi	a4,s0,-32
    800042a8:	00f707b3          	add	a5,a4,a5
    800042ac:	fe07b503          	ld	a0,-32(a5)
    800042b0:	fffff097          	auipc	ra,0xfffff
    800042b4:	bfc080e7          	jalr	-1028(ra) # 80002eac <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800042b8:	0014849b          	addiw	s1,s1,1
    800042bc:	fddff06f          	j	80004298 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800042c0:	fffff097          	auipc	ra,0xfffff
    800042c4:	c40080e7          	jalr	-960(ra) # 80002f00 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800042c8:	00008797          	auipc	a5,0x8
    800042cc:	9087c783          	lbu	a5,-1784(a5) # 8000bbd0 <_ZL9finishedA>
    800042d0:	fe0788e3          	beqz	a5,800042c0 <_Z20Threads_CPP_API_testv+0x124>
    800042d4:	00008797          	auipc	a5,0x8
    800042d8:	8fd7c783          	lbu	a5,-1795(a5) # 8000bbd1 <_ZL9finishedB>
    800042dc:	fe0782e3          	beqz	a5,800042c0 <_Z20Threads_CPP_API_testv+0x124>
    800042e0:	00008797          	auipc	a5,0x8
    800042e4:	8f27c783          	lbu	a5,-1806(a5) # 8000bbd2 <_ZL9finishedC>
    800042e8:	fc078ce3          	beqz	a5,800042c0 <_Z20Threads_CPP_API_testv+0x124>
    800042ec:	00008797          	auipc	a5,0x8
    800042f0:	8e77c783          	lbu	a5,-1817(a5) # 8000bbd3 <_ZL9finishedD>
    800042f4:	fc0786e3          	beqz	a5,800042c0 <_Z20Threads_CPP_API_testv+0x124>
    800042f8:	fc040493          	addi	s1,s0,-64
    800042fc:	0080006f          	j	80004304 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004300:	00848493          	addi	s1,s1,8
    80004304:	fe040793          	addi	a5,s0,-32
    80004308:	08f48663          	beq	s1,a5,80004394 <_Z20Threads_CPP_API_testv+0x1f8>
    8000430c:	0004b503          	ld	a0,0(s1)
    80004310:	fe0508e3          	beqz	a0,80004300 <_Z20Threads_CPP_API_testv+0x164>
    80004314:	00053783          	ld	a5,0(a0)
    80004318:	0087b783          	ld	a5,8(a5)
    8000431c:	000780e7          	jalr	a5
    80004320:	fe1ff06f          	j	80004300 <_Z20Threads_CPP_API_testv+0x164>
    80004324:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004328:	00048513          	mv	a0,s1
    8000432c:	fffff097          	auipc	ra,0xfffff
    80004330:	a90080e7          	jalr	-1392(ra) # 80002dbc <_ZdlPv>
    80004334:	00090513          	mv	a0,s2
    80004338:	00009097          	auipc	ra,0x9
    8000433c:	9a0080e7          	jalr	-1632(ra) # 8000ccd8 <_Unwind_Resume>
    80004340:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004344:	00048513          	mv	a0,s1
    80004348:	fffff097          	auipc	ra,0xfffff
    8000434c:	a74080e7          	jalr	-1420(ra) # 80002dbc <_ZdlPv>
    80004350:	00090513          	mv	a0,s2
    80004354:	00009097          	auipc	ra,0x9
    80004358:	984080e7          	jalr	-1660(ra) # 8000ccd8 <_Unwind_Resume>
    8000435c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004360:	00048513          	mv	a0,s1
    80004364:	fffff097          	auipc	ra,0xfffff
    80004368:	a58080e7          	jalr	-1448(ra) # 80002dbc <_ZdlPv>
    8000436c:	00090513          	mv	a0,s2
    80004370:	00009097          	auipc	ra,0x9
    80004374:	968080e7          	jalr	-1688(ra) # 8000ccd8 <_Unwind_Resume>
    80004378:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000437c:	00048513          	mv	a0,s1
    80004380:	fffff097          	auipc	ra,0xfffff
    80004384:	a3c080e7          	jalr	-1476(ra) # 80002dbc <_ZdlPv>
    80004388:	00090513          	mv	a0,s2
    8000438c:	00009097          	auipc	ra,0x9
    80004390:	94c080e7          	jalr	-1716(ra) # 8000ccd8 <_Unwind_Resume>
}
    80004394:	03813083          	ld	ra,56(sp)
    80004398:	03013403          	ld	s0,48(sp)
    8000439c:	02813483          	ld	s1,40(sp)
    800043a0:	02013903          	ld	s2,32(sp)
    800043a4:	04010113          	addi	sp,sp,64
    800043a8:	00008067          	ret

00000000800043ac <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800043ac:	ff010113          	addi	sp,sp,-16
    800043b0:	00113423          	sd	ra,8(sp)
    800043b4:	00813023          	sd	s0,0(sp)
    800043b8:	01010413          	addi	s0,sp,16
    800043bc:	00007797          	auipc	a5,0x7
    800043c0:	36478793          	addi	a5,a5,868 # 8000b720 <_ZTV7WorkerA+0x10>
    800043c4:	00f53023          	sd	a5,0(a0)
    800043c8:	fffff097          	auipc	ra,0xfffff
    800043cc:	8fc080e7          	jalr	-1796(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    800043d0:	00813083          	ld	ra,8(sp)
    800043d4:	00013403          	ld	s0,0(sp)
    800043d8:	01010113          	addi	sp,sp,16
    800043dc:	00008067          	ret

00000000800043e0 <_ZN7WorkerAD0Ev>:
    800043e0:	fe010113          	addi	sp,sp,-32
    800043e4:	00113c23          	sd	ra,24(sp)
    800043e8:	00813823          	sd	s0,16(sp)
    800043ec:	00913423          	sd	s1,8(sp)
    800043f0:	02010413          	addi	s0,sp,32
    800043f4:	00050493          	mv	s1,a0
    800043f8:	00007797          	auipc	a5,0x7
    800043fc:	32878793          	addi	a5,a5,808 # 8000b720 <_ZTV7WorkerA+0x10>
    80004400:	00f53023          	sd	a5,0(a0)
    80004404:	fffff097          	auipc	ra,0xfffff
    80004408:	8c0080e7          	jalr	-1856(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    8000440c:	00048513          	mv	a0,s1
    80004410:	fffff097          	auipc	ra,0xfffff
    80004414:	9ac080e7          	jalr	-1620(ra) # 80002dbc <_ZdlPv>
    80004418:	01813083          	ld	ra,24(sp)
    8000441c:	01013403          	ld	s0,16(sp)
    80004420:	00813483          	ld	s1,8(sp)
    80004424:	02010113          	addi	sp,sp,32
    80004428:	00008067          	ret

000000008000442c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000442c:	ff010113          	addi	sp,sp,-16
    80004430:	00113423          	sd	ra,8(sp)
    80004434:	00813023          	sd	s0,0(sp)
    80004438:	01010413          	addi	s0,sp,16
    8000443c:	00007797          	auipc	a5,0x7
    80004440:	30c78793          	addi	a5,a5,780 # 8000b748 <_ZTV7WorkerB+0x10>
    80004444:	00f53023          	sd	a5,0(a0)
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	87c080e7          	jalr	-1924(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004450:	00813083          	ld	ra,8(sp)
    80004454:	00013403          	ld	s0,0(sp)
    80004458:	01010113          	addi	sp,sp,16
    8000445c:	00008067          	ret

0000000080004460 <_ZN7WorkerBD0Ev>:
    80004460:	fe010113          	addi	sp,sp,-32
    80004464:	00113c23          	sd	ra,24(sp)
    80004468:	00813823          	sd	s0,16(sp)
    8000446c:	00913423          	sd	s1,8(sp)
    80004470:	02010413          	addi	s0,sp,32
    80004474:	00050493          	mv	s1,a0
    80004478:	00007797          	auipc	a5,0x7
    8000447c:	2d078793          	addi	a5,a5,720 # 8000b748 <_ZTV7WorkerB+0x10>
    80004480:	00f53023          	sd	a5,0(a0)
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	840080e7          	jalr	-1984(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    8000448c:	00048513          	mv	a0,s1
    80004490:	fffff097          	auipc	ra,0xfffff
    80004494:	92c080e7          	jalr	-1748(ra) # 80002dbc <_ZdlPv>
    80004498:	01813083          	ld	ra,24(sp)
    8000449c:	01013403          	ld	s0,16(sp)
    800044a0:	00813483          	ld	s1,8(sp)
    800044a4:	02010113          	addi	sp,sp,32
    800044a8:	00008067          	ret

00000000800044ac <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00113423          	sd	ra,8(sp)
    800044b4:	00813023          	sd	s0,0(sp)
    800044b8:	01010413          	addi	s0,sp,16
    800044bc:	00007797          	auipc	a5,0x7
    800044c0:	2b478793          	addi	a5,a5,692 # 8000b770 <_ZTV7WorkerC+0x10>
    800044c4:	00f53023          	sd	a5,0(a0)
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	7fc080e7          	jalr	2044(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    800044d0:	00813083          	ld	ra,8(sp)
    800044d4:	00013403          	ld	s0,0(sp)
    800044d8:	01010113          	addi	sp,sp,16
    800044dc:	00008067          	ret

00000000800044e0 <_ZN7WorkerCD0Ev>:
    800044e0:	fe010113          	addi	sp,sp,-32
    800044e4:	00113c23          	sd	ra,24(sp)
    800044e8:	00813823          	sd	s0,16(sp)
    800044ec:	00913423          	sd	s1,8(sp)
    800044f0:	02010413          	addi	s0,sp,32
    800044f4:	00050493          	mv	s1,a0
    800044f8:	00007797          	auipc	a5,0x7
    800044fc:	27878793          	addi	a5,a5,632 # 8000b770 <_ZTV7WorkerC+0x10>
    80004500:	00f53023          	sd	a5,0(a0)
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	7c0080e7          	jalr	1984(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    8000450c:	00048513          	mv	a0,s1
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	8ac080e7          	jalr	-1876(ra) # 80002dbc <_ZdlPv>
    80004518:	01813083          	ld	ra,24(sp)
    8000451c:	01013403          	ld	s0,16(sp)
    80004520:	00813483          	ld	s1,8(sp)
    80004524:	02010113          	addi	sp,sp,32
    80004528:	00008067          	ret

000000008000452c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000452c:	ff010113          	addi	sp,sp,-16
    80004530:	00113423          	sd	ra,8(sp)
    80004534:	00813023          	sd	s0,0(sp)
    80004538:	01010413          	addi	s0,sp,16
    8000453c:	00007797          	auipc	a5,0x7
    80004540:	25c78793          	addi	a5,a5,604 # 8000b798 <_ZTV7WorkerD+0x10>
    80004544:	00f53023          	sd	a5,0(a0)
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	77c080e7          	jalr	1916(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004550:	00813083          	ld	ra,8(sp)
    80004554:	00013403          	ld	s0,0(sp)
    80004558:	01010113          	addi	sp,sp,16
    8000455c:	00008067          	ret

0000000080004560 <_ZN7WorkerDD0Ev>:
    80004560:	fe010113          	addi	sp,sp,-32
    80004564:	00113c23          	sd	ra,24(sp)
    80004568:	00813823          	sd	s0,16(sp)
    8000456c:	00913423          	sd	s1,8(sp)
    80004570:	02010413          	addi	s0,sp,32
    80004574:	00050493          	mv	s1,a0
    80004578:	00007797          	auipc	a5,0x7
    8000457c:	22078793          	addi	a5,a5,544 # 8000b798 <_ZTV7WorkerD+0x10>
    80004580:	00f53023          	sd	a5,0(a0)
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	740080e7          	jalr	1856(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    8000458c:	00048513          	mv	a0,s1
    80004590:	fffff097          	auipc	ra,0xfffff
    80004594:	82c080e7          	jalr	-2004(ra) # 80002dbc <_ZdlPv>
    80004598:	01813083          	ld	ra,24(sp)
    8000459c:	01013403          	ld	s0,16(sp)
    800045a0:	00813483          	ld	s1,8(sp)
    800045a4:	02010113          	addi	sp,sp,32
    800045a8:	00008067          	ret

00000000800045ac <_ZN7WorkerA3runEv>:
    void run() override {
    800045ac:	ff010113          	addi	sp,sp,-16
    800045b0:	00113423          	sd	ra,8(sp)
    800045b4:	00813023          	sd	s0,0(sp)
    800045b8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800045bc:	00000593          	li	a1,0
    800045c0:	fffff097          	auipc	ra,0xfffff
    800045c4:	774080e7          	jalr	1908(ra) # 80003d34 <_ZN7WorkerA11workerBodyAEPv>
    }
    800045c8:	00813083          	ld	ra,8(sp)
    800045cc:	00013403          	ld	s0,0(sp)
    800045d0:	01010113          	addi	sp,sp,16
    800045d4:	00008067          	ret

00000000800045d8 <_ZN7WorkerB3runEv>:
    void run() override {
    800045d8:	ff010113          	addi	sp,sp,-16
    800045dc:	00113423          	sd	ra,8(sp)
    800045e0:	00813023          	sd	s0,0(sp)
    800045e4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800045e8:	00000593          	li	a1,0
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	814080e7          	jalr	-2028(ra) # 80003e00 <_ZN7WorkerB11workerBodyBEPv>
    }
    800045f4:	00813083          	ld	ra,8(sp)
    800045f8:	00013403          	ld	s0,0(sp)
    800045fc:	01010113          	addi	sp,sp,16
    80004600:	00008067          	ret

0000000080004604 <_ZN7WorkerC3runEv>:
    void run() override {
    80004604:	ff010113          	addi	sp,sp,-16
    80004608:	00113423          	sd	ra,8(sp)
    8000460c:	00813023          	sd	s0,0(sp)
    80004610:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004614:	00000593          	li	a1,0
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	8bc080e7          	jalr	-1860(ra) # 80003ed4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004620:	00813083          	ld	ra,8(sp)
    80004624:	00013403          	ld	s0,0(sp)
    80004628:	01010113          	addi	sp,sp,16
    8000462c:	00008067          	ret

0000000080004630 <_ZN7WorkerD3runEv>:
    void run() override {
    80004630:	ff010113          	addi	sp,sp,-16
    80004634:	00113423          	sd	ra,8(sp)
    80004638:	00813023          	sd	s0,0(sp)
    8000463c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004640:	00000593          	li	a1,0
    80004644:	00000097          	auipc	ra,0x0
    80004648:	a10080e7          	jalr	-1520(ra) # 80004054 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000464c:	00813083          	ld	ra,8(sp)
    80004650:	00013403          	ld	s0,0(sp)
    80004654:	01010113          	addi	sp,sp,16
    80004658:	00008067          	ret

000000008000465c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000465c:	f8010113          	addi	sp,sp,-128
    80004660:	06113c23          	sd	ra,120(sp)
    80004664:	06813823          	sd	s0,112(sp)
    80004668:	06913423          	sd	s1,104(sp)
    8000466c:	07213023          	sd	s2,96(sp)
    80004670:	05313c23          	sd	s3,88(sp)
    80004674:	05413823          	sd	s4,80(sp)
    80004678:	05513423          	sd	s5,72(sp)
    8000467c:	05613023          	sd	s6,64(sp)
    80004680:	03713c23          	sd	s7,56(sp)
    80004684:	03813823          	sd	s8,48(sp)
    80004688:	03913423          	sd	s9,40(sp)
    8000468c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004690:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004694:	00005517          	auipc	a0,0x5
    80004698:	a9c50513          	addi	a0,a0,-1380 # 80009130 <CONSOLE_STATUS+0x120>
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	6fc080e7          	jalr	1788(ra) # 80005d98 <_Z11printStringPKc>
    getString(input, 30);
    800046a4:	01e00593          	li	a1,30
    800046a8:	f8040493          	addi	s1,s0,-128
    800046ac:	00048513          	mv	a0,s1
    800046b0:	00001097          	auipc	ra,0x1
    800046b4:	770080e7          	jalr	1904(ra) # 80005e20 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800046b8:	00048513          	mv	a0,s1
    800046bc:	00002097          	auipc	ra,0x2
    800046c0:	83c080e7          	jalr	-1988(ra) # 80005ef8 <_Z11stringToIntPKc>
    800046c4:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800046c8:	00005517          	auipc	a0,0x5
    800046cc:	a8850513          	addi	a0,a0,-1400 # 80009150 <CONSOLE_STATUS+0x140>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	6c8080e7          	jalr	1736(ra) # 80005d98 <_Z11printStringPKc>
    getString(input, 30);
    800046d8:	01e00593          	li	a1,30
    800046dc:	00048513          	mv	a0,s1
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	740080e7          	jalr	1856(ra) # 80005e20 <_Z9getStringPci>
    n = stringToInt(input);
    800046e8:	00048513          	mv	a0,s1
    800046ec:	00002097          	auipc	ra,0x2
    800046f0:	80c080e7          	jalr	-2036(ra) # 80005ef8 <_Z11stringToIntPKc>
    800046f4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800046f8:	00005517          	auipc	a0,0x5
    800046fc:	a7850513          	addi	a0,a0,-1416 # 80009170 <CONSOLE_STATUS+0x160>
    80004700:	00001097          	auipc	ra,0x1
    80004704:	698080e7          	jalr	1688(ra) # 80005d98 <_Z11printStringPKc>
    printInt(threadNum);
    80004708:	00000613          	li	a2,0
    8000470c:	00a00593          	li	a1,10
    80004710:	00098513          	mv	a0,s3
    80004714:	00002097          	auipc	ra,0x2
    80004718:	834080e7          	jalr	-1996(ra) # 80005f48 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000471c:	00005517          	auipc	a0,0x5
    80004720:	a6c50513          	addi	a0,a0,-1428 # 80009188 <CONSOLE_STATUS+0x178>
    80004724:	00001097          	auipc	ra,0x1
    80004728:	674080e7          	jalr	1652(ra) # 80005d98 <_Z11printStringPKc>
    printInt(n);
    8000472c:	00000613          	li	a2,0
    80004730:	00a00593          	li	a1,10
    80004734:	00048513          	mv	a0,s1
    80004738:	00002097          	auipc	ra,0x2
    8000473c:	810080e7          	jalr	-2032(ra) # 80005f48 <_Z8printIntiii>
    printString(".\n");
    80004740:	00005517          	auipc	a0,0x5
    80004744:	a6050513          	addi	a0,a0,-1440 # 800091a0 <CONSOLE_STATUS+0x190>
    80004748:	00001097          	auipc	ra,0x1
    8000474c:	650080e7          	jalr	1616(ra) # 80005d98 <_Z11printStringPKc>
    if (threadNum > n) {
    80004750:	0334c463          	blt	s1,s3,80004778 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004754:	03305c63          	blez	s3,8000478c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004758:	03800513          	li	a0,56
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	638080e7          	jalr	1592(ra) # 80002d94 <_Znwm>
    80004764:	00050a93          	mv	s5,a0
    80004768:	00048593          	mv	a1,s1
    8000476c:	00002097          	auipc	ra,0x2
    80004770:	8fc080e7          	jalr	-1796(ra) # 80006068 <_ZN9BufferCPPC1Ei>
    80004774:	0300006f          	j	800047a4 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    80004778:	00005517          	auipc	a0,0x5
    8000477c:	b9850513          	addi	a0,a0,-1128 # 80009310 <CONSOLE_STATUS+0x300>
    80004780:	00001097          	auipc	ra,0x1
    80004784:	618080e7          	jalr	1560(ra) # 80005d98 <_Z11printStringPKc>
        return;
    80004788:	0140006f          	j	8000479c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000478c:	00005517          	auipc	a0,0x5
    80004790:	a5c50513          	addi	a0,a0,-1444 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004794:	00001097          	auipc	ra,0x1
    80004798:	604080e7          	jalr	1540(ra) # 80005d98 <_Z11printStringPKc>
        return;
    8000479c:	000c0113          	mv	sp,s8
    800047a0:	2140006f          	j	800049b4 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800047a4:	01000513          	li	a0,16
    800047a8:	ffffe097          	auipc	ra,0xffffe
    800047ac:	5ec080e7          	jalr	1516(ra) # 80002d94 <_Znwm>
    800047b0:	00050913          	mv	s2,a0
    800047b4:	00000593          	li	a1,0
    800047b8:	ffffe097          	auipc	ra,0xffffe
    800047bc:	798080e7          	jalr	1944(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    800047c0:	00007797          	auipc	a5,0x7
    800047c4:	4327b023          	sd	s2,1056(a5) # 8000bbe0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800047c8:	00399793          	slli	a5,s3,0x3
    800047cc:	00f78793          	addi	a5,a5,15
    800047d0:	ff07f793          	andi	a5,a5,-16
    800047d4:	40f10133          	sub	sp,sp,a5
    800047d8:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800047dc:	0019871b          	addiw	a4,s3,1
    800047e0:	00171793          	slli	a5,a4,0x1
    800047e4:	00e787b3          	add	a5,a5,a4
    800047e8:	00379793          	slli	a5,a5,0x3
    800047ec:	00f78793          	addi	a5,a5,15
    800047f0:	ff07f793          	andi	a5,a5,-16
    800047f4:	40f10133          	sub	sp,sp,a5
    800047f8:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800047fc:	00199493          	slli	s1,s3,0x1
    80004800:	013484b3          	add	s1,s1,s3
    80004804:	00349493          	slli	s1,s1,0x3
    80004808:	009b04b3          	add	s1,s6,s1
    8000480c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004810:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004814:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004818:	02800513          	li	a0,40
    8000481c:	ffffe097          	auipc	ra,0xffffe
    80004820:	578080e7          	jalr	1400(ra) # 80002d94 <_Znwm>
    80004824:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004828:	ffffe097          	auipc	ra,0xffffe
    8000482c:	654080e7          	jalr	1620(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80004830:	00007797          	auipc	a5,0x7
    80004834:	fe078793          	addi	a5,a5,-32 # 8000b810 <_ZTV8Consumer+0x10>
    80004838:	00fbb023          	sd	a5,0(s7)
    8000483c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004840:	000b8513          	mv	a0,s7
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	668080e7          	jalr	1640(ra) # 80002eac <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000484c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004850:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004854:	00007797          	auipc	a5,0x7
    80004858:	38c7b783          	ld	a5,908(a5) # 8000bbe0 <_ZL10waitForAll>
    8000485c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004860:	02800513          	li	a0,40
    80004864:	ffffe097          	auipc	ra,0xffffe
    80004868:	530080e7          	jalr	1328(ra) # 80002d94 <_Znwm>
    8000486c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	60c080e7          	jalr	1548(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80004878:	00007797          	auipc	a5,0x7
    8000487c:	f4878793          	addi	a5,a5,-184 # 8000b7c0 <_ZTV16ProducerKeyborad+0x10>
    80004880:	00f4b023          	sd	a5,0(s1)
    80004884:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004888:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000488c:	00048513          	mv	a0,s1
    80004890:	ffffe097          	auipc	ra,0xffffe
    80004894:	61c080e7          	jalr	1564(ra) # 80002eac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004898:	00100913          	li	s2,1
    8000489c:	0300006f          	j	800048cc <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800048a0:	00007797          	auipc	a5,0x7
    800048a4:	f4878793          	addi	a5,a5,-184 # 8000b7e8 <_ZTV8Producer+0x10>
    800048a8:	00fcb023          	sd	a5,0(s9)
    800048ac:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800048b0:	00391793          	slli	a5,s2,0x3
    800048b4:	00fa07b3          	add	a5,s4,a5
    800048b8:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800048bc:	000c8513          	mv	a0,s9
    800048c0:	ffffe097          	auipc	ra,0xffffe
    800048c4:	5ec080e7          	jalr	1516(ra) # 80002eac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800048c8:	0019091b          	addiw	s2,s2,1
    800048cc:	05395263          	bge	s2,s3,80004910 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800048d0:	00191493          	slli	s1,s2,0x1
    800048d4:	012484b3          	add	s1,s1,s2
    800048d8:	00349493          	slli	s1,s1,0x3
    800048dc:	009b04b3          	add	s1,s6,s1
    800048e0:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800048e4:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800048e8:	00007797          	auipc	a5,0x7
    800048ec:	2f87b783          	ld	a5,760(a5) # 8000bbe0 <_ZL10waitForAll>
    800048f0:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800048f4:	02800513          	li	a0,40
    800048f8:	ffffe097          	auipc	ra,0xffffe
    800048fc:	49c080e7          	jalr	1180(ra) # 80002d94 <_Znwm>
    80004900:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004904:	ffffe097          	auipc	ra,0xffffe
    80004908:	578080e7          	jalr	1400(ra) # 80002e7c <_ZN6ThreadC1Ev>
    8000490c:	f95ff06f          	j	800048a0 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004910:	ffffe097          	auipc	ra,0xffffe
    80004914:	5f0080e7          	jalr	1520(ra) # 80002f00 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004918:	00000493          	li	s1,0
    8000491c:	0099ce63          	blt	s3,s1,80004938 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004920:	00007517          	auipc	a0,0x7
    80004924:	2c053503          	ld	a0,704(a0) # 8000bbe0 <_ZL10waitForAll>
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	660080e7          	jalr	1632(ra) # 80002f88 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004930:	0014849b          	addiw	s1,s1,1
    80004934:	fe9ff06f          	j	8000491c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004938:	00007517          	auipc	a0,0x7
    8000493c:	2a853503          	ld	a0,680(a0) # 8000bbe0 <_ZL10waitForAll>
    80004940:	00050863          	beqz	a0,80004950 <_Z20testConsumerProducerv+0x2f4>
    80004944:	00053783          	ld	a5,0(a0)
    80004948:	0087b783          	ld	a5,8(a5)
    8000494c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004950:	00000493          	li	s1,0
    80004954:	0080006f          	j	8000495c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004958:	0014849b          	addiw	s1,s1,1
    8000495c:	0334d263          	bge	s1,s3,80004980 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004960:	00349793          	slli	a5,s1,0x3
    80004964:	00fa07b3          	add	a5,s4,a5
    80004968:	0007b503          	ld	a0,0(a5)
    8000496c:	fe0506e3          	beqz	a0,80004958 <_Z20testConsumerProducerv+0x2fc>
    80004970:	00053783          	ld	a5,0(a0)
    80004974:	0087b783          	ld	a5,8(a5)
    80004978:	000780e7          	jalr	a5
    8000497c:	fddff06f          	j	80004958 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004980:	000b8a63          	beqz	s7,80004994 <_Z20testConsumerProducerv+0x338>
    80004984:	000bb783          	ld	a5,0(s7)
    80004988:	0087b783          	ld	a5,8(a5)
    8000498c:	000b8513          	mv	a0,s7
    80004990:	000780e7          	jalr	a5
    delete buffer;
    80004994:	000a8e63          	beqz	s5,800049b0 <_Z20testConsumerProducerv+0x354>
    80004998:	000a8513          	mv	a0,s5
    8000499c:	00002097          	auipc	ra,0x2
    800049a0:	9c4080e7          	jalr	-1596(ra) # 80006360 <_ZN9BufferCPPD1Ev>
    800049a4:	000a8513          	mv	a0,s5
    800049a8:	ffffe097          	auipc	ra,0xffffe
    800049ac:	414080e7          	jalr	1044(ra) # 80002dbc <_ZdlPv>
    800049b0:	000c0113          	mv	sp,s8
}
    800049b4:	f8040113          	addi	sp,s0,-128
    800049b8:	07813083          	ld	ra,120(sp)
    800049bc:	07013403          	ld	s0,112(sp)
    800049c0:	06813483          	ld	s1,104(sp)
    800049c4:	06013903          	ld	s2,96(sp)
    800049c8:	05813983          	ld	s3,88(sp)
    800049cc:	05013a03          	ld	s4,80(sp)
    800049d0:	04813a83          	ld	s5,72(sp)
    800049d4:	04013b03          	ld	s6,64(sp)
    800049d8:	03813b83          	ld	s7,56(sp)
    800049dc:	03013c03          	ld	s8,48(sp)
    800049e0:	02813c83          	ld	s9,40(sp)
    800049e4:	08010113          	addi	sp,sp,128
    800049e8:	00008067          	ret
    800049ec:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800049f0:	000a8513          	mv	a0,s5
    800049f4:	ffffe097          	auipc	ra,0xffffe
    800049f8:	3c8080e7          	jalr	968(ra) # 80002dbc <_ZdlPv>
    800049fc:	00048513          	mv	a0,s1
    80004a00:	00008097          	auipc	ra,0x8
    80004a04:	2d8080e7          	jalr	728(ra) # 8000ccd8 <_Unwind_Resume>
    80004a08:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004a0c:	00090513          	mv	a0,s2
    80004a10:	ffffe097          	auipc	ra,0xffffe
    80004a14:	3ac080e7          	jalr	940(ra) # 80002dbc <_ZdlPv>
    80004a18:	00048513          	mv	a0,s1
    80004a1c:	00008097          	auipc	ra,0x8
    80004a20:	2bc080e7          	jalr	700(ra) # 8000ccd8 <_Unwind_Resume>
    80004a24:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004a28:	000b8513          	mv	a0,s7
    80004a2c:	ffffe097          	auipc	ra,0xffffe
    80004a30:	390080e7          	jalr	912(ra) # 80002dbc <_ZdlPv>
    80004a34:	00048513          	mv	a0,s1
    80004a38:	00008097          	auipc	ra,0x8
    80004a3c:	2a0080e7          	jalr	672(ra) # 8000ccd8 <_Unwind_Resume>
    80004a40:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a44:	00048513          	mv	a0,s1
    80004a48:	ffffe097          	auipc	ra,0xffffe
    80004a4c:	374080e7          	jalr	884(ra) # 80002dbc <_ZdlPv>
    80004a50:	00090513          	mv	a0,s2
    80004a54:	00008097          	auipc	ra,0x8
    80004a58:	284080e7          	jalr	644(ra) # 8000ccd8 <_Unwind_Resume>
    80004a5c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004a60:	000c8513          	mv	a0,s9
    80004a64:	ffffe097          	auipc	ra,0xffffe
    80004a68:	358080e7          	jalr	856(ra) # 80002dbc <_ZdlPv>
    80004a6c:	00048513          	mv	a0,s1
    80004a70:	00008097          	auipc	ra,0x8
    80004a74:	268080e7          	jalr	616(ra) # 8000ccd8 <_Unwind_Resume>

0000000080004a78 <_ZN8Consumer3runEv>:
    void run() override {
    80004a78:	fd010113          	addi	sp,sp,-48
    80004a7c:	02113423          	sd	ra,40(sp)
    80004a80:	02813023          	sd	s0,32(sp)
    80004a84:	00913c23          	sd	s1,24(sp)
    80004a88:	01213823          	sd	s2,16(sp)
    80004a8c:	01313423          	sd	s3,8(sp)
    80004a90:	03010413          	addi	s0,sp,48
    80004a94:	00050913          	mv	s2,a0
        int i = 0;
    80004a98:	00000993          	li	s3,0
    80004a9c:	0100006f          	j	80004aac <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004aa0:	00a00513          	li	a0,10
    80004aa4:	ffffe097          	auipc	ra,0xffffe
    80004aa8:	5d0080e7          	jalr	1488(ra) # 80003074 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004aac:	00007797          	auipc	a5,0x7
    80004ab0:	12c7a783          	lw	a5,300(a5) # 8000bbd8 <_ZL9threadEnd>
    80004ab4:	04079a63          	bnez	a5,80004b08 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004ab8:	02093783          	ld	a5,32(s2)
    80004abc:	0087b503          	ld	a0,8(a5)
    80004ac0:	00001097          	auipc	ra,0x1
    80004ac4:	78c080e7          	jalr	1932(ra) # 8000624c <_ZN9BufferCPP3getEv>
            i++;
    80004ac8:	0019849b          	addiw	s1,s3,1
    80004acc:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004ad0:	0ff57513          	andi	a0,a0,255
    80004ad4:	ffffe097          	auipc	ra,0xffffe
    80004ad8:	5a0080e7          	jalr	1440(ra) # 80003074 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004adc:	05000793          	li	a5,80
    80004ae0:	02f4e4bb          	remw	s1,s1,a5
    80004ae4:	fc0494e3          	bnez	s1,80004aac <_ZN8Consumer3runEv+0x34>
    80004ae8:	fb9ff06f          	j	80004aa0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004aec:	02093783          	ld	a5,32(s2)
    80004af0:	0087b503          	ld	a0,8(a5)
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	758080e7          	jalr	1880(ra) # 8000624c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004afc:	0ff57513          	andi	a0,a0,255
    80004b00:	ffffe097          	auipc	ra,0xffffe
    80004b04:	574080e7          	jalr	1396(ra) # 80003074 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004b08:	02093783          	ld	a5,32(s2)
    80004b0c:	0087b503          	ld	a0,8(a5)
    80004b10:	00001097          	auipc	ra,0x1
    80004b14:	7c8080e7          	jalr	1992(ra) # 800062d8 <_ZN9BufferCPP6getCntEv>
    80004b18:	fca04ae3          	bgtz	a0,80004aec <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004b1c:	02093783          	ld	a5,32(s2)
    80004b20:	0107b503          	ld	a0,16(a5)
    80004b24:	ffffe097          	auipc	ra,0xffffe
    80004b28:	490080e7          	jalr	1168(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
    }
    80004b2c:	02813083          	ld	ra,40(sp)
    80004b30:	02013403          	ld	s0,32(sp)
    80004b34:	01813483          	ld	s1,24(sp)
    80004b38:	01013903          	ld	s2,16(sp)
    80004b3c:	00813983          	ld	s3,8(sp)
    80004b40:	03010113          	addi	sp,sp,48
    80004b44:	00008067          	ret

0000000080004b48 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004b48:	ff010113          	addi	sp,sp,-16
    80004b4c:	00113423          	sd	ra,8(sp)
    80004b50:	00813023          	sd	s0,0(sp)
    80004b54:	01010413          	addi	s0,sp,16
    80004b58:	00007797          	auipc	a5,0x7
    80004b5c:	cb878793          	addi	a5,a5,-840 # 8000b810 <_ZTV8Consumer+0x10>
    80004b60:	00f53023          	sd	a5,0(a0)
    80004b64:	ffffe097          	auipc	ra,0xffffe
    80004b68:	160080e7          	jalr	352(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004b6c:	00813083          	ld	ra,8(sp)
    80004b70:	00013403          	ld	s0,0(sp)
    80004b74:	01010113          	addi	sp,sp,16
    80004b78:	00008067          	ret

0000000080004b7c <_ZN8ConsumerD0Ev>:
    80004b7c:	fe010113          	addi	sp,sp,-32
    80004b80:	00113c23          	sd	ra,24(sp)
    80004b84:	00813823          	sd	s0,16(sp)
    80004b88:	00913423          	sd	s1,8(sp)
    80004b8c:	02010413          	addi	s0,sp,32
    80004b90:	00050493          	mv	s1,a0
    80004b94:	00007797          	auipc	a5,0x7
    80004b98:	c7c78793          	addi	a5,a5,-900 # 8000b810 <_ZTV8Consumer+0x10>
    80004b9c:	00f53023          	sd	a5,0(a0)
    80004ba0:	ffffe097          	auipc	ra,0xffffe
    80004ba4:	124080e7          	jalr	292(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004ba8:	00048513          	mv	a0,s1
    80004bac:	ffffe097          	auipc	ra,0xffffe
    80004bb0:	210080e7          	jalr	528(ra) # 80002dbc <_ZdlPv>
    80004bb4:	01813083          	ld	ra,24(sp)
    80004bb8:	01013403          	ld	s0,16(sp)
    80004bbc:	00813483          	ld	s1,8(sp)
    80004bc0:	02010113          	addi	sp,sp,32
    80004bc4:	00008067          	ret

0000000080004bc8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004bc8:	ff010113          	addi	sp,sp,-16
    80004bcc:	00113423          	sd	ra,8(sp)
    80004bd0:	00813023          	sd	s0,0(sp)
    80004bd4:	01010413          	addi	s0,sp,16
    80004bd8:	00007797          	auipc	a5,0x7
    80004bdc:	be878793          	addi	a5,a5,-1048 # 8000b7c0 <_ZTV16ProducerKeyborad+0x10>
    80004be0:	00f53023          	sd	a5,0(a0)
    80004be4:	ffffe097          	auipc	ra,0xffffe
    80004be8:	0e0080e7          	jalr	224(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004bec:	00813083          	ld	ra,8(sp)
    80004bf0:	00013403          	ld	s0,0(sp)
    80004bf4:	01010113          	addi	sp,sp,16
    80004bf8:	00008067          	ret

0000000080004bfc <_ZN16ProducerKeyboradD0Ev>:
    80004bfc:	fe010113          	addi	sp,sp,-32
    80004c00:	00113c23          	sd	ra,24(sp)
    80004c04:	00813823          	sd	s0,16(sp)
    80004c08:	00913423          	sd	s1,8(sp)
    80004c0c:	02010413          	addi	s0,sp,32
    80004c10:	00050493          	mv	s1,a0
    80004c14:	00007797          	auipc	a5,0x7
    80004c18:	bac78793          	addi	a5,a5,-1108 # 8000b7c0 <_ZTV16ProducerKeyborad+0x10>
    80004c1c:	00f53023          	sd	a5,0(a0)
    80004c20:	ffffe097          	auipc	ra,0xffffe
    80004c24:	0a4080e7          	jalr	164(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	ffffe097          	auipc	ra,0xffffe
    80004c30:	190080e7          	jalr	400(ra) # 80002dbc <_ZdlPv>
    80004c34:	01813083          	ld	ra,24(sp)
    80004c38:	01013403          	ld	s0,16(sp)
    80004c3c:	00813483          	ld	s1,8(sp)
    80004c40:	02010113          	addi	sp,sp,32
    80004c44:	00008067          	ret

0000000080004c48 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004c48:	ff010113          	addi	sp,sp,-16
    80004c4c:	00113423          	sd	ra,8(sp)
    80004c50:	00813023          	sd	s0,0(sp)
    80004c54:	01010413          	addi	s0,sp,16
    80004c58:	00007797          	auipc	a5,0x7
    80004c5c:	b9078793          	addi	a5,a5,-1136 # 8000b7e8 <_ZTV8Producer+0x10>
    80004c60:	00f53023          	sd	a5,0(a0)
    80004c64:	ffffe097          	auipc	ra,0xffffe
    80004c68:	060080e7          	jalr	96(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004c6c:	00813083          	ld	ra,8(sp)
    80004c70:	00013403          	ld	s0,0(sp)
    80004c74:	01010113          	addi	sp,sp,16
    80004c78:	00008067          	ret

0000000080004c7c <_ZN8ProducerD0Ev>:
    80004c7c:	fe010113          	addi	sp,sp,-32
    80004c80:	00113c23          	sd	ra,24(sp)
    80004c84:	00813823          	sd	s0,16(sp)
    80004c88:	00913423          	sd	s1,8(sp)
    80004c8c:	02010413          	addi	s0,sp,32
    80004c90:	00050493          	mv	s1,a0
    80004c94:	00007797          	auipc	a5,0x7
    80004c98:	b5478793          	addi	a5,a5,-1196 # 8000b7e8 <_ZTV8Producer+0x10>
    80004c9c:	00f53023          	sd	a5,0(a0)
    80004ca0:	ffffe097          	auipc	ra,0xffffe
    80004ca4:	024080e7          	jalr	36(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80004ca8:	00048513          	mv	a0,s1
    80004cac:	ffffe097          	auipc	ra,0xffffe
    80004cb0:	110080e7          	jalr	272(ra) # 80002dbc <_ZdlPv>
    80004cb4:	01813083          	ld	ra,24(sp)
    80004cb8:	01013403          	ld	s0,16(sp)
    80004cbc:	00813483          	ld	s1,8(sp)
    80004cc0:	02010113          	addi	sp,sp,32
    80004cc4:	00008067          	ret

0000000080004cc8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004cc8:	fe010113          	addi	sp,sp,-32
    80004ccc:	00113c23          	sd	ra,24(sp)
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	02010413          	addi	s0,sp,32
    80004cdc:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	aa0080e7          	jalr	-1376(ra) # 80001780 <getc>
    80004ce8:	0005059b          	sext.w	a1,a0
    80004cec:	01b00793          	li	a5,27
    80004cf0:	00f58c63          	beq	a1,a5,80004d08 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004cf4:	0204b783          	ld	a5,32(s1)
    80004cf8:	0087b503          	ld	a0,8(a5)
    80004cfc:	00001097          	auipc	ra,0x1
    80004d00:	4c0080e7          	jalr	1216(ra) # 800061bc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004d04:	fddff06f          	j	80004ce0 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004d08:	00100793          	li	a5,1
    80004d0c:	00007717          	auipc	a4,0x7
    80004d10:	ecf72623          	sw	a5,-308(a4) # 8000bbd8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004d14:	0204b783          	ld	a5,32(s1)
    80004d18:	02100593          	li	a1,33
    80004d1c:	0087b503          	ld	a0,8(a5)
    80004d20:	00001097          	auipc	ra,0x1
    80004d24:	49c080e7          	jalr	1180(ra) # 800061bc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004d28:	0204b783          	ld	a5,32(s1)
    80004d2c:	0107b503          	ld	a0,16(a5)
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	284080e7          	jalr	644(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
    }
    80004d38:	01813083          	ld	ra,24(sp)
    80004d3c:	01013403          	ld	s0,16(sp)
    80004d40:	00813483          	ld	s1,8(sp)
    80004d44:	02010113          	addi	sp,sp,32
    80004d48:	00008067          	ret

0000000080004d4c <_ZN8Producer3runEv>:
    void run() override {
    80004d4c:	fe010113          	addi	sp,sp,-32
    80004d50:	00113c23          	sd	ra,24(sp)
    80004d54:	00813823          	sd	s0,16(sp)
    80004d58:	00913423          	sd	s1,8(sp)
    80004d5c:	01213023          	sd	s2,0(sp)
    80004d60:	02010413          	addi	s0,sp,32
    80004d64:	00050493          	mv	s1,a0
        int i = 0;
    80004d68:	00000913          	li	s2,0
        while (!threadEnd) {
    80004d6c:	00007797          	auipc	a5,0x7
    80004d70:	e6c7a783          	lw	a5,-404(a5) # 8000bbd8 <_ZL9threadEnd>
    80004d74:	04079263          	bnez	a5,80004db8 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004d78:	0204b783          	ld	a5,32(s1)
    80004d7c:	0007a583          	lw	a1,0(a5)
    80004d80:	0305859b          	addiw	a1,a1,48
    80004d84:	0087b503          	ld	a0,8(a5)
    80004d88:	00001097          	auipc	ra,0x1
    80004d8c:	434080e7          	jalr	1076(ra) # 800061bc <_ZN9BufferCPP3putEi>
            i++;
    80004d90:	0019071b          	addiw	a4,s2,1
    80004d94:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004d98:	0204b783          	ld	a5,32(s1)
    80004d9c:	0007a783          	lw	a5,0(a5)
    80004da0:	00e787bb          	addw	a5,a5,a4
    80004da4:	00500513          	li	a0,5
    80004da8:	02a7e53b          	remw	a0,a5,a0
    80004dac:	ffffe097          	auipc	ra,0xffffe
    80004db0:	17c080e7          	jalr	380(ra) # 80002f28 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004db4:	fb9ff06f          	j	80004d6c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004db8:	0204b783          	ld	a5,32(s1)
    80004dbc:	0107b503          	ld	a0,16(a5)
    80004dc0:	ffffe097          	auipc	ra,0xffffe
    80004dc4:	1f4080e7          	jalr	500(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
    }
    80004dc8:	01813083          	ld	ra,24(sp)
    80004dcc:	01013403          	ld	s0,16(sp)
    80004dd0:	00813483          	ld	s1,8(sp)
    80004dd4:	00013903          	ld	s2,0(sp)
    80004dd8:	02010113          	addi	sp,sp,32
    80004ddc:	00008067          	ret

0000000080004de0 <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    80004de0:	fe010113          	addi	sp,sp,-32
    80004de4:	00113c23          	sd	ra,24(sp)
    80004de8:	00813823          	sd	s0,16(sp)
    80004dec:	00913423          	sd	s1,8(sp)
    80004df0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004df4:	00004517          	auipc	a0,0x4
    80004df8:	55450513          	addi	a0,a0,1364 # 80009348 <CONSOLE_STATUS+0x338>
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	f9c080e7          	jalr	-100(ra) # 80005d98 <_Z11printStringPKc>
    int test = getc() - '0';
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	97c080e7          	jalr	-1668(ra) # 80001780 <getc>
    80004e0c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	970080e7          	jalr	-1680(ra) # 80001780 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004e18:	00700793          	li	a5,7
    80004e1c:	1097e263          	bltu	a5,s1,80004f20 <_Z8userMainv+0x140>
    80004e20:	00249493          	slli	s1,s1,0x2
    80004e24:	00004717          	auipc	a4,0x4
    80004e28:	77c70713          	addi	a4,a4,1916 # 800095a0 <CONSOLE_STATUS+0x590>
    80004e2c:	00e484b3          	add	s1,s1,a4
    80004e30:	0004a783          	lw	a5,0(s1)
    80004e34:	00e787b3          	add	a5,a5,a4
    80004e38:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004e3c:	00000097          	auipc	ra,0x0
    80004e40:	5d4080e7          	jalr	1492(ra) # 80005410 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004e44:	00004517          	auipc	a0,0x4
    80004e48:	52450513          	addi	a0,a0,1316 # 80009368 <CONSOLE_STATUS+0x358>
    80004e4c:	00001097          	auipc	ra,0x1
    80004e50:	f4c080e7          	jalr	-180(ra) # 80005d98 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    80004e54:	01813083          	ld	ra,24(sp)
    80004e58:	01013403          	ld	s0,16(sp)
    80004e5c:	00813483          	ld	s1,8(sp)
    80004e60:	02010113          	addi	sp,sp,32
    80004e64:	00008067          	ret
            Threads_CPP_API_test();
    80004e68:	fffff097          	auipc	ra,0xfffff
    80004e6c:	334080e7          	jalr	820(ra) # 8000419c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004e70:	00004517          	auipc	a0,0x4
    80004e74:	53850513          	addi	a0,a0,1336 # 800093a8 <CONSOLE_STATUS+0x398>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	f20080e7          	jalr	-224(ra) # 80005d98 <_Z11printStringPKc>
            break;
    80004e80:	fd5ff06f          	j	80004e54 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004e84:	fffff097          	auipc	ra,0xfffff
    80004e88:	b6c080e7          	jalr	-1172(ra) # 800039f0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004e8c:	00004517          	auipc	a0,0x4
    80004e90:	55c50513          	addi	a0,a0,1372 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004e94:	00001097          	auipc	ra,0x1
    80004e98:	f04080e7          	jalr	-252(ra) # 80005d98 <_Z11printStringPKc>
            break;
    80004e9c:	fb9ff06f          	j	80004e54 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	8b4080e7          	jalr	-1868(ra) # 80005754 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004ea8:	00004517          	auipc	a0,0x4
    80004eac:	59050513          	addi	a0,a0,1424 # 80009438 <CONSOLE_STATUS+0x428>
    80004eb0:	00001097          	auipc	ra,0x1
    80004eb4:	ee8080e7          	jalr	-280(ra) # 80005d98 <_Z11printStringPKc>
            break;
    80004eb8:	f9dff06f          	j	80004e54 <_Z8userMainv+0x74>
            testSleeping();
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	648080e7          	jalr	1608(ra) # 80006504 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80004ec4:	00004517          	auipc	a0,0x4
    80004ec8:	5cc50513          	addi	a0,a0,1484 # 80009490 <CONSOLE_STATUS+0x480>
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	ecc080e7          	jalr	-308(ra) # 80005d98 <_Z11printStringPKc>
            break;
    80004ed4:	f81ff06f          	j	80004e54 <_Z8userMainv+0x74>
            testConsumerProducer();
    80004ed8:	fffff097          	auipc	ra,0xfffff
    80004edc:	784080e7          	jalr	1924(ra) # 8000465c <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80004ee0:	00004517          	auipc	a0,0x4
    80004ee4:	5e050513          	addi	a0,a0,1504 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	eb0080e7          	jalr	-336(ra) # 80005d98 <_Z11printStringPKc>
            break;
    80004ef0:	f65ff06f          	j	80004e54 <_Z8userMainv+0x74>
            System_Mode_test();
    80004ef4:	00002097          	auipc	ra,0x2
    80004ef8:	b84080e7          	jalr	-1148(ra) # 80006a78 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004efc:	00004517          	auipc	a0,0x4
    80004f00:	60450513          	addi	a0,a0,1540 # 80009500 <CONSOLE_STATUS+0x4f0>
    80004f04:	00001097          	auipc	ra,0x1
    80004f08:	e94080e7          	jalr	-364(ra) # 80005d98 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004f0c:	00004517          	auipc	a0,0x4
    80004f10:	61450513          	addi	a0,a0,1556 # 80009520 <CONSOLE_STATUS+0x510>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	e84080e7          	jalr	-380(ra) # 80005d98 <_Z11printStringPKc>
            break;
    80004f1c:	f39ff06f          	j	80004e54 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	65850513          	addi	a0,a0,1624 # 80009578 <CONSOLE_STATUS+0x568>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	e70080e7          	jalr	-400(ra) # 80005d98 <_Z11printStringPKc>
    80004f30:	f25ff06f          	j	80004e54 <_Z8userMainv+0x74>

0000000080004f34 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004f34:	fe010113          	addi	sp,sp,-32
    80004f38:	00113c23          	sd	ra,24(sp)
    80004f3c:	00813823          	sd	s0,16(sp)
    80004f40:	00913423          	sd	s1,8(sp)
    80004f44:	01213023          	sd	s2,0(sp)
    80004f48:	02010413          	addi	s0,sp,32
    80004f4c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004f50:	00100793          	li	a5,1
    80004f54:	02a7f863          	bgeu	a5,a0,80004f84 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004f58:	00a00793          	li	a5,10
    80004f5c:	02f577b3          	remu	a5,a0,a5
    80004f60:	02078e63          	beqz	a5,80004f9c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004f64:	fff48513          	addi	a0,s1,-1
    80004f68:	00000097          	auipc	ra,0x0
    80004f6c:	fcc080e7          	jalr	-52(ra) # 80004f34 <_ZL9fibonaccim>
    80004f70:	00050913          	mv	s2,a0
    80004f74:	ffe48513          	addi	a0,s1,-2
    80004f78:	00000097          	auipc	ra,0x0
    80004f7c:	fbc080e7          	jalr	-68(ra) # 80004f34 <_ZL9fibonaccim>
    80004f80:	00a90533          	add	a0,s2,a0
}
    80004f84:	01813083          	ld	ra,24(sp)
    80004f88:	01013403          	ld	s0,16(sp)
    80004f8c:	00813483          	ld	s1,8(sp)
    80004f90:	00013903          	ld	s2,0(sp)
    80004f94:	02010113          	addi	sp,sp,32
    80004f98:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004f9c:	ffffc097          	auipc	ra,0xffffc
    80004fa0:	6b4080e7          	jalr	1716(ra) # 80001650 <thread_dispatch>
    80004fa4:	fc1ff06f          	j	80004f64 <_ZL9fibonaccim+0x30>

0000000080004fa8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004fa8:	fe010113          	addi	sp,sp,-32
    80004fac:	00113c23          	sd	ra,24(sp)
    80004fb0:	00813823          	sd	s0,16(sp)
    80004fb4:	00913423          	sd	s1,8(sp)
    80004fb8:	01213023          	sd	s2,0(sp)
    80004fbc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004fc0:	00a00493          	li	s1,10
    80004fc4:	0400006f          	j	80005004 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004fc8:	00004517          	auipc	a0,0x4
    80004fcc:	2b050513          	addi	a0,a0,688 # 80009278 <CONSOLE_STATUS+0x268>
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	dc8080e7          	jalr	-568(ra) # 80005d98 <_Z11printStringPKc>
    80004fd8:	00000613          	li	a2,0
    80004fdc:	00a00593          	li	a1,10
    80004fe0:	00048513          	mv	a0,s1
    80004fe4:	00001097          	auipc	ra,0x1
    80004fe8:	f64080e7          	jalr	-156(ra) # 80005f48 <_Z8printIntiii>
    80004fec:	00004517          	auipc	a0,0x4
    80004ff0:	49c50513          	addi	a0,a0,1180 # 80009488 <CONSOLE_STATUS+0x478>
    80004ff4:	00001097          	auipc	ra,0x1
    80004ff8:	da4080e7          	jalr	-604(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004ffc:	0014849b          	addiw	s1,s1,1
    80005000:	0ff4f493          	andi	s1,s1,255
    80005004:	00c00793          	li	a5,12
    80005008:	fc97f0e3          	bgeu	a5,s1,80004fc8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000500c:	00004517          	auipc	a0,0x4
    80005010:	27450513          	addi	a0,a0,628 # 80009280 <CONSOLE_STATUS+0x270>
    80005014:	00001097          	auipc	ra,0x1
    80005018:	d84080e7          	jalr	-636(ra) # 80005d98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000501c:	00500313          	li	t1,5
    thread_dispatch();
    80005020:	ffffc097          	auipc	ra,0xffffc
    80005024:	630080e7          	jalr	1584(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80005028:	01000513          	li	a0,16
    8000502c:	00000097          	auipc	ra,0x0
    80005030:	f08080e7          	jalr	-248(ra) # 80004f34 <_ZL9fibonaccim>
    80005034:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005038:	00004517          	auipc	a0,0x4
    8000503c:	25850513          	addi	a0,a0,600 # 80009290 <CONSOLE_STATUS+0x280>
    80005040:	00001097          	auipc	ra,0x1
    80005044:	d58080e7          	jalr	-680(ra) # 80005d98 <_Z11printStringPKc>
    80005048:	00000613          	li	a2,0
    8000504c:	00a00593          	li	a1,10
    80005050:	0009051b          	sext.w	a0,s2
    80005054:	00001097          	auipc	ra,0x1
    80005058:	ef4080e7          	jalr	-268(ra) # 80005f48 <_Z8printIntiii>
    8000505c:	00004517          	auipc	a0,0x4
    80005060:	42c50513          	addi	a0,a0,1068 # 80009488 <CONSOLE_STATUS+0x478>
    80005064:	00001097          	auipc	ra,0x1
    80005068:	d34080e7          	jalr	-716(ra) # 80005d98 <_Z11printStringPKc>
    8000506c:	0400006f          	j	800050ac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005070:	00004517          	auipc	a0,0x4
    80005074:	20850513          	addi	a0,a0,520 # 80009278 <CONSOLE_STATUS+0x268>
    80005078:	00001097          	auipc	ra,0x1
    8000507c:	d20080e7          	jalr	-736(ra) # 80005d98 <_Z11printStringPKc>
    80005080:	00000613          	li	a2,0
    80005084:	00a00593          	li	a1,10
    80005088:	00048513          	mv	a0,s1
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	ebc080e7          	jalr	-324(ra) # 80005f48 <_Z8printIntiii>
    80005094:	00004517          	auipc	a0,0x4
    80005098:	3f450513          	addi	a0,a0,1012 # 80009488 <CONSOLE_STATUS+0x478>
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	cfc080e7          	jalr	-772(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800050a4:	0014849b          	addiw	s1,s1,1
    800050a8:	0ff4f493          	andi	s1,s1,255
    800050ac:	00f00793          	li	a5,15
    800050b0:	fc97f0e3          	bgeu	a5,s1,80005070 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800050b4:	00004517          	auipc	a0,0x4
    800050b8:	1ec50513          	addi	a0,a0,492 # 800092a0 <CONSOLE_STATUS+0x290>
    800050bc:	00001097          	auipc	ra,0x1
    800050c0:	cdc080e7          	jalr	-804(ra) # 80005d98 <_Z11printStringPKc>
    finishedD = true;
    800050c4:	00100793          	li	a5,1
    800050c8:	00007717          	auipc	a4,0x7
    800050cc:	b2f70023          	sb	a5,-1248(a4) # 8000bbe8 <_ZL9finishedD>
    thread_dispatch();
    800050d0:	ffffc097          	auipc	ra,0xffffc
    800050d4:	580080e7          	jalr	1408(ra) # 80001650 <thread_dispatch>
}
    800050d8:	01813083          	ld	ra,24(sp)
    800050dc:	01013403          	ld	s0,16(sp)
    800050e0:	00813483          	ld	s1,8(sp)
    800050e4:	00013903          	ld	s2,0(sp)
    800050e8:	02010113          	addi	sp,sp,32
    800050ec:	00008067          	ret

00000000800050f0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800050f0:	fe010113          	addi	sp,sp,-32
    800050f4:	00113c23          	sd	ra,24(sp)
    800050f8:	00813823          	sd	s0,16(sp)
    800050fc:	00913423          	sd	s1,8(sp)
    80005100:	01213023          	sd	s2,0(sp)
    80005104:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005108:	00000493          	li	s1,0
    8000510c:	0400006f          	j	8000514c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005110:	00004517          	auipc	a0,0x4
    80005114:	13850513          	addi	a0,a0,312 # 80009248 <CONSOLE_STATUS+0x238>
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	c80080e7          	jalr	-896(ra) # 80005d98 <_Z11printStringPKc>
    80005120:	00000613          	li	a2,0
    80005124:	00a00593          	li	a1,10
    80005128:	00048513          	mv	a0,s1
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	e1c080e7          	jalr	-484(ra) # 80005f48 <_Z8printIntiii>
    80005134:	00004517          	auipc	a0,0x4
    80005138:	35450513          	addi	a0,a0,852 # 80009488 <CONSOLE_STATUS+0x478>
    8000513c:	00001097          	auipc	ra,0x1
    80005140:	c5c080e7          	jalr	-932(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005144:	0014849b          	addiw	s1,s1,1
    80005148:	0ff4f493          	andi	s1,s1,255
    8000514c:	00200793          	li	a5,2
    80005150:	fc97f0e3          	bgeu	a5,s1,80005110 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005154:	00004517          	auipc	a0,0x4
    80005158:	0fc50513          	addi	a0,a0,252 # 80009250 <CONSOLE_STATUS+0x240>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	c3c080e7          	jalr	-964(ra) # 80005d98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005164:	00700313          	li	t1,7
    thread_dispatch();
    80005168:	ffffc097          	auipc	ra,0xffffc
    8000516c:	4e8080e7          	jalr	1256(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005170:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005174:	00004517          	auipc	a0,0x4
    80005178:	0ec50513          	addi	a0,a0,236 # 80009260 <CONSOLE_STATUS+0x250>
    8000517c:	00001097          	auipc	ra,0x1
    80005180:	c1c080e7          	jalr	-996(ra) # 80005d98 <_Z11printStringPKc>
    80005184:	00000613          	li	a2,0
    80005188:	00a00593          	li	a1,10
    8000518c:	0009051b          	sext.w	a0,s2
    80005190:	00001097          	auipc	ra,0x1
    80005194:	db8080e7          	jalr	-584(ra) # 80005f48 <_Z8printIntiii>
    80005198:	00004517          	auipc	a0,0x4
    8000519c:	2f050513          	addi	a0,a0,752 # 80009488 <CONSOLE_STATUS+0x478>
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	bf8080e7          	jalr	-1032(ra) # 80005d98 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800051a8:	00c00513          	li	a0,12
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	d88080e7          	jalr	-632(ra) # 80004f34 <_ZL9fibonaccim>
    800051b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800051b8:	00004517          	auipc	a0,0x4
    800051bc:	0b050513          	addi	a0,a0,176 # 80009268 <CONSOLE_STATUS+0x258>
    800051c0:	00001097          	auipc	ra,0x1
    800051c4:	bd8080e7          	jalr	-1064(ra) # 80005d98 <_Z11printStringPKc>
    800051c8:	00000613          	li	a2,0
    800051cc:	00a00593          	li	a1,10
    800051d0:	0009051b          	sext.w	a0,s2
    800051d4:	00001097          	auipc	ra,0x1
    800051d8:	d74080e7          	jalr	-652(ra) # 80005f48 <_Z8printIntiii>
    800051dc:	00004517          	auipc	a0,0x4
    800051e0:	2ac50513          	addi	a0,a0,684 # 80009488 <CONSOLE_STATUS+0x478>
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	bb4080e7          	jalr	-1100(ra) # 80005d98 <_Z11printStringPKc>
    800051ec:	0400006f          	j	8000522c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800051f0:	00004517          	auipc	a0,0x4
    800051f4:	05850513          	addi	a0,a0,88 # 80009248 <CONSOLE_STATUS+0x238>
    800051f8:	00001097          	auipc	ra,0x1
    800051fc:	ba0080e7          	jalr	-1120(ra) # 80005d98 <_Z11printStringPKc>
    80005200:	00000613          	li	a2,0
    80005204:	00a00593          	li	a1,10
    80005208:	00048513          	mv	a0,s1
    8000520c:	00001097          	auipc	ra,0x1
    80005210:	d3c080e7          	jalr	-708(ra) # 80005f48 <_Z8printIntiii>
    80005214:	00004517          	auipc	a0,0x4
    80005218:	27450513          	addi	a0,a0,628 # 80009488 <CONSOLE_STATUS+0x478>
    8000521c:	00001097          	auipc	ra,0x1
    80005220:	b7c080e7          	jalr	-1156(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005224:	0014849b          	addiw	s1,s1,1
    80005228:	0ff4f493          	andi	s1,s1,255
    8000522c:	00500793          	li	a5,5
    80005230:	fc97f0e3          	bgeu	a5,s1,800051f0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005234:	00004517          	auipc	a0,0x4
    80005238:	fec50513          	addi	a0,a0,-20 # 80009220 <CONSOLE_STATUS+0x210>
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	b5c080e7          	jalr	-1188(ra) # 80005d98 <_Z11printStringPKc>
    finishedC = true;
    80005244:	00100793          	li	a5,1
    80005248:	00007717          	auipc	a4,0x7
    8000524c:	9af700a3          	sb	a5,-1631(a4) # 8000bbe9 <_ZL9finishedC>
    thread_dispatch();
    80005250:	ffffc097          	auipc	ra,0xffffc
    80005254:	400080e7          	jalr	1024(ra) # 80001650 <thread_dispatch>
}
    80005258:	01813083          	ld	ra,24(sp)
    8000525c:	01013403          	ld	s0,16(sp)
    80005260:	00813483          	ld	s1,8(sp)
    80005264:	00013903          	ld	s2,0(sp)
    80005268:	02010113          	addi	sp,sp,32
    8000526c:	00008067          	ret

0000000080005270 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00113c23          	sd	ra,24(sp)
    80005278:	00813823          	sd	s0,16(sp)
    8000527c:	00913423          	sd	s1,8(sp)
    80005280:	01213023          	sd	s2,0(sp)
    80005284:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005288:	00000913          	li	s2,0
    8000528c:	0380006f          	j	800052c4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	3c0080e7          	jalr	960(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005298:	00148493          	addi	s1,s1,1
    8000529c:	000027b7          	lui	a5,0x2
    800052a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800052a4:	0097ee63          	bltu	a5,s1,800052c0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800052a8:	00000713          	li	a4,0
    800052ac:	000077b7          	lui	a5,0x7
    800052b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800052b4:	fce7eee3          	bltu	a5,a4,80005290 <_ZL11workerBodyBPv+0x20>
    800052b8:	00170713          	addi	a4,a4,1
    800052bc:	ff1ff06f          	j	800052ac <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800052c0:	00190913          	addi	s2,s2,1
    800052c4:	00f00793          	li	a5,15
    800052c8:	0527e063          	bltu	a5,s2,80005308 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800052cc:	00004517          	auipc	a0,0x4
    800052d0:	f6450513          	addi	a0,a0,-156 # 80009230 <CONSOLE_STATUS+0x220>
    800052d4:	00001097          	auipc	ra,0x1
    800052d8:	ac4080e7          	jalr	-1340(ra) # 80005d98 <_Z11printStringPKc>
    800052dc:	00000613          	li	a2,0
    800052e0:	00a00593          	li	a1,10
    800052e4:	0009051b          	sext.w	a0,s2
    800052e8:	00001097          	auipc	ra,0x1
    800052ec:	c60080e7          	jalr	-928(ra) # 80005f48 <_Z8printIntiii>
    800052f0:	00004517          	auipc	a0,0x4
    800052f4:	19850513          	addi	a0,a0,408 # 80009488 <CONSOLE_STATUS+0x478>
    800052f8:	00001097          	auipc	ra,0x1
    800052fc:	aa0080e7          	jalr	-1376(ra) # 80005d98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005300:	00000493          	li	s1,0
    80005304:	f99ff06f          	j	8000529c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005308:	00004517          	auipc	a0,0x4
    8000530c:	f3050513          	addi	a0,a0,-208 # 80009238 <CONSOLE_STATUS+0x228>
    80005310:	00001097          	auipc	ra,0x1
    80005314:	a88080e7          	jalr	-1400(ra) # 80005d98 <_Z11printStringPKc>
    finishedB = true;
    80005318:	00100793          	li	a5,1
    8000531c:	00007717          	auipc	a4,0x7
    80005320:	8cf70723          	sb	a5,-1842(a4) # 8000bbea <_ZL9finishedB>
    thread_dispatch();
    80005324:	ffffc097          	auipc	ra,0xffffc
    80005328:	32c080e7          	jalr	812(ra) # 80001650 <thread_dispatch>
}
    8000532c:	01813083          	ld	ra,24(sp)
    80005330:	01013403          	ld	s0,16(sp)
    80005334:	00813483          	ld	s1,8(sp)
    80005338:	00013903          	ld	s2,0(sp)
    8000533c:	02010113          	addi	sp,sp,32
    80005340:	00008067          	ret

0000000080005344 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005344:	fe010113          	addi	sp,sp,-32
    80005348:	00113c23          	sd	ra,24(sp)
    8000534c:	00813823          	sd	s0,16(sp)
    80005350:	00913423          	sd	s1,8(sp)
    80005354:	01213023          	sd	s2,0(sp)
    80005358:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000535c:	00000913          	li	s2,0
    80005360:	0380006f          	j	80005398 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005364:	ffffc097          	auipc	ra,0xffffc
    80005368:	2ec080e7          	jalr	748(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000536c:	00148493          	addi	s1,s1,1
    80005370:	000027b7          	lui	a5,0x2
    80005374:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005378:	0097ee63          	bltu	a5,s1,80005394 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000537c:	00000713          	li	a4,0
    80005380:	000077b7          	lui	a5,0x7
    80005384:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005388:	fce7eee3          	bltu	a5,a4,80005364 <_ZL11workerBodyAPv+0x20>
    8000538c:	00170713          	addi	a4,a4,1
    80005390:	ff1ff06f          	j	80005380 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005394:	00190913          	addi	s2,s2,1
    80005398:	00900793          	li	a5,9
    8000539c:	0527e063          	bltu	a5,s2,800053dc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800053a0:	00004517          	auipc	a0,0x4
    800053a4:	e7850513          	addi	a0,a0,-392 # 80009218 <CONSOLE_STATUS+0x208>
    800053a8:	00001097          	auipc	ra,0x1
    800053ac:	9f0080e7          	jalr	-1552(ra) # 80005d98 <_Z11printStringPKc>
    800053b0:	00000613          	li	a2,0
    800053b4:	00a00593          	li	a1,10
    800053b8:	0009051b          	sext.w	a0,s2
    800053bc:	00001097          	auipc	ra,0x1
    800053c0:	b8c080e7          	jalr	-1140(ra) # 80005f48 <_Z8printIntiii>
    800053c4:	00004517          	auipc	a0,0x4
    800053c8:	0c450513          	addi	a0,a0,196 # 80009488 <CONSOLE_STATUS+0x478>
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	9cc080e7          	jalr	-1588(ra) # 80005d98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800053d4:	00000493          	li	s1,0
    800053d8:	f99ff06f          	j	80005370 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800053dc:	00004517          	auipc	a0,0x4
    800053e0:	e4450513          	addi	a0,a0,-444 # 80009220 <CONSOLE_STATUS+0x210>
    800053e4:	00001097          	auipc	ra,0x1
    800053e8:	9b4080e7          	jalr	-1612(ra) # 80005d98 <_Z11printStringPKc>
    finishedA = true;
    800053ec:	00100793          	li	a5,1
    800053f0:	00006717          	auipc	a4,0x6
    800053f4:	7ef70da3          	sb	a5,2043(a4) # 8000bbeb <_ZL9finishedA>
}
    800053f8:	01813083          	ld	ra,24(sp)
    800053fc:	01013403          	ld	s0,16(sp)
    80005400:	00813483          	ld	s1,8(sp)
    80005404:	00013903          	ld	s2,0(sp)
    80005408:	02010113          	addi	sp,sp,32
    8000540c:	00008067          	ret

0000000080005410 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005410:	fd010113          	addi	sp,sp,-48
    80005414:	02113423          	sd	ra,40(sp)
    80005418:	02813023          	sd	s0,32(sp)
    8000541c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005420:	00000613          	li	a2,0
    80005424:	00000597          	auipc	a1,0x0
    80005428:	f2058593          	addi	a1,a1,-224 # 80005344 <_ZL11workerBodyAPv>
    8000542c:	fd040513          	addi	a0,s0,-48
    80005430:	ffffc097          	auipc	ra,0xffffc
    80005434:	17c080e7          	jalr	380(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80005438:	00004517          	auipc	a0,0x4
    8000543c:	e7850513          	addi	a0,a0,-392 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005440:	00001097          	auipc	ra,0x1
    80005444:	958080e7          	jalr	-1704(ra) # 80005d98 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005448:	00000613          	li	a2,0
    8000544c:	00000597          	auipc	a1,0x0
    80005450:	e2458593          	addi	a1,a1,-476 # 80005270 <_ZL11workerBodyBPv>
    80005454:	fd840513          	addi	a0,s0,-40
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	154080e7          	jalr	340(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80005460:	00004517          	auipc	a0,0x4
    80005464:	e6850513          	addi	a0,a0,-408 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005468:	00001097          	auipc	ra,0x1
    8000546c:	930080e7          	jalr	-1744(ra) # 80005d98 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005470:	00000613          	li	a2,0
    80005474:	00000597          	auipc	a1,0x0
    80005478:	c7c58593          	addi	a1,a1,-900 # 800050f0 <_ZL11workerBodyCPv>
    8000547c:	fe040513          	addi	a0,s0,-32
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	12c080e7          	jalr	300(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80005488:	00004517          	auipc	a0,0x4
    8000548c:	e5850513          	addi	a0,a0,-424 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80005490:	00001097          	auipc	ra,0x1
    80005494:	908080e7          	jalr	-1784(ra) # 80005d98 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005498:	00000613          	li	a2,0
    8000549c:	00000597          	auipc	a1,0x0
    800054a0:	b0c58593          	addi	a1,a1,-1268 # 80004fa8 <_ZL11workerBodyDPv>
    800054a4:	fe840513          	addi	a0,s0,-24
    800054a8:	ffffc097          	auipc	ra,0xffffc
    800054ac:	104080e7          	jalr	260(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    800054b0:	00004517          	auipc	a0,0x4
    800054b4:	e4850513          	addi	a0,a0,-440 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800054b8:	00001097          	auipc	ra,0x1
    800054bc:	8e0080e7          	jalr	-1824(ra) # 80005d98 <_Z11printStringPKc>
    800054c0:	00c0006f          	j	800054cc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	18c080e7          	jalr	396(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800054cc:	00006797          	auipc	a5,0x6
    800054d0:	71f7c783          	lbu	a5,1823(a5) # 8000bbeb <_ZL9finishedA>
    800054d4:	fe0788e3          	beqz	a5,800054c4 <_Z18Threads_C_API_testv+0xb4>
    800054d8:	00006797          	auipc	a5,0x6
    800054dc:	7127c783          	lbu	a5,1810(a5) # 8000bbea <_ZL9finishedB>
    800054e0:	fe0782e3          	beqz	a5,800054c4 <_Z18Threads_C_API_testv+0xb4>
    800054e4:	00006797          	auipc	a5,0x6
    800054e8:	7057c783          	lbu	a5,1797(a5) # 8000bbe9 <_ZL9finishedC>
    800054ec:	fc078ce3          	beqz	a5,800054c4 <_Z18Threads_C_API_testv+0xb4>
    800054f0:	00006797          	auipc	a5,0x6
    800054f4:	6f87c783          	lbu	a5,1784(a5) # 8000bbe8 <_ZL9finishedD>
    800054f8:	fc0786e3          	beqz	a5,800054c4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800054fc:	02813083          	ld	ra,40(sp)
    80005500:	02013403          	ld	s0,32(sp)
    80005504:	03010113          	addi	sp,sp,48
    80005508:	00008067          	ret

000000008000550c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000550c:	fd010113          	addi	sp,sp,-48
    80005510:	02113423          	sd	ra,40(sp)
    80005514:	02813023          	sd	s0,32(sp)
    80005518:	00913c23          	sd	s1,24(sp)
    8000551c:	01213823          	sd	s2,16(sp)
    80005520:	01313423          	sd	s3,8(sp)
    80005524:	03010413          	addi	s0,sp,48
    80005528:	00050993          	mv	s3,a0
    8000552c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005530:	00000913          	li	s2,0
    80005534:	00c0006f          	j	80005540 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005538:	ffffe097          	auipc	ra,0xffffe
    8000553c:	9c8080e7          	jalr	-1592(ra) # 80002f00 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005540:	ffffc097          	auipc	ra,0xffffc
    80005544:	240080e7          	jalr	576(ra) # 80001780 <getc>
    80005548:	0005059b          	sext.w	a1,a0
    8000554c:	01b00793          	li	a5,27
    80005550:	02f58a63          	beq	a1,a5,80005584 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005554:	0084b503          	ld	a0,8(s1)
    80005558:	00001097          	auipc	ra,0x1
    8000555c:	c64080e7          	jalr	-924(ra) # 800061bc <_ZN9BufferCPP3putEi>
        i++;
    80005560:	0019071b          	addiw	a4,s2,1
    80005564:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005568:	0004a683          	lw	a3,0(s1)
    8000556c:	0026979b          	slliw	a5,a3,0x2
    80005570:	00d787bb          	addw	a5,a5,a3
    80005574:	0017979b          	slliw	a5,a5,0x1
    80005578:	02f767bb          	remw	a5,a4,a5
    8000557c:	fc0792e3          	bnez	a5,80005540 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005580:	fb9ff06f          	j	80005538 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005584:	00100793          	li	a5,1
    80005588:	00006717          	auipc	a4,0x6
    8000558c:	66f72423          	sw	a5,1640(a4) # 8000bbf0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005590:	0209b783          	ld	a5,32(s3)
    80005594:	02100593          	li	a1,33
    80005598:	0087b503          	ld	a0,8(a5)
    8000559c:	00001097          	auipc	ra,0x1
    800055a0:	c20080e7          	jalr	-992(ra) # 800061bc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800055a4:	0104b503          	ld	a0,16(s1)
    800055a8:	ffffe097          	auipc	ra,0xffffe
    800055ac:	a0c080e7          	jalr	-1524(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
}
    800055b0:	02813083          	ld	ra,40(sp)
    800055b4:	02013403          	ld	s0,32(sp)
    800055b8:	01813483          	ld	s1,24(sp)
    800055bc:	01013903          	ld	s2,16(sp)
    800055c0:	00813983          	ld	s3,8(sp)
    800055c4:	03010113          	addi	sp,sp,48
    800055c8:	00008067          	ret

00000000800055cc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800055cc:	fe010113          	addi	sp,sp,-32
    800055d0:	00113c23          	sd	ra,24(sp)
    800055d4:	00813823          	sd	s0,16(sp)
    800055d8:	00913423          	sd	s1,8(sp)
    800055dc:	01213023          	sd	s2,0(sp)
    800055e0:	02010413          	addi	s0,sp,32
    800055e4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800055e8:	00000913          	li	s2,0
    800055ec:	00c0006f          	j	800055f8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800055f0:	ffffe097          	auipc	ra,0xffffe
    800055f4:	910080e7          	jalr	-1776(ra) # 80002f00 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800055f8:	00006797          	auipc	a5,0x6
    800055fc:	5f87a783          	lw	a5,1528(a5) # 8000bbf0 <_ZL9threadEnd>
    80005600:	02079e63          	bnez	a5,8000563c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005604:	0004a583          	lw	a1,0(s1)
    80005608:	0305859b          	addiw	a1,a1,48
    8000560c:	0084b503          	ld	a0,8(s1)
    80005610:	00001097          	auipc	ra,0x1
    80005614:	bac080e7          	jalr	-1108(ra) # 800061bc <_ZN9BufferCPP3putEi>
        i++;
    80005618:	0019071b          	addiw	a4,s2,1
    8000561c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005620:	0004a683          	lw	a3,0(s1)
    80005624:	0026979b          	slliw	a5,a3,0x2
    80005628:	00d787bb          	addw	a5,a5,a3
    8000562c:	0017979b          	slliw	a5,a5,0x1
    80005630:	02f767bb          	remw	a5,a4,a5
    80005634:	fc0792e3          	bnez	a5,800055f8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005638:	fb9ff06f          	j	800055f0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000563c:	0104b503          	ld	a0,16(s1)
    80005640:	ffffe097          	auipc	ra,0xffffe
    80005644:	974080e7          	jalr	-1676(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
}
    80005648:	01813083          	ld	ra,24(sp)
    8000564c:	01013403          	ld	s0,16(sp)
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	00013903          	ld	s2,0(sp)
    80005658:	02010113          	addi	sp,sp,32
    8000565c:	00008067          	ret

0000000080005660 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005660:	fd010113          	addi	sp,sp,-48
    80005664:	02113423          	sd	ra,40(sp)
    80005668:	02813023          	sd	s0,32(sp)
    8000566c:	00913c23          	sd	s1,24(sp)
    80005670:	01213823          	sd	s2,16(sp)
    80005674:	01313423          	sd	s3,8(sp)
    80005678:	01413023          	sd	s4,0(sp)
    8000567c:	03010413          	addi	s0,sp,48
    80005680:	00050993          	mv	s3,a0
    80005684:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005688:	00000a13          	li	s4,0
    8000568c:	01c0006f          	j	800056a8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005690:	ffffe097          	auipc	ra,0xffffe
    80005694:	870080e7          	jalr	-1936(ra) # 80002f00 <_ZN6Thread8dispatchEv>
    80005698:	0500006f          	j	800056e8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000569c:	00a00513          	li	a0,10
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	104080e7          	jalr	260(ra) # 800017a4 <putc>
    while (!threadEnd) {
    800056a8:	00006797          	auipc	a5,0x6
    800056ac:	5487a783          	lw	a5,1352(a5) # 8000bbf0 <_ZL9threadEnd>
    800056b0:	06079263          	bnez	a5,80005714 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800056b4:	00893503          	ld	a0,8(s2)
    800056b8:	00001097          	auipc	ra,0x1
    800056bc:	b94080e7          	jalr	-1132(ra) # 8000624c <_ZN9BufferCPP3getEv>
        i++;
    800056c0:	001a049b          	addiw	s1,s4,1
    800056c4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800056c8:	0ff57513          	andi	a0,a0,255
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	0d8080e7          	jalr	216(ra) # 800017a4 <putc>
        if (i % (5 * data->id) == 0) {
    800056d4:	00092703          	lw	a4,0(s2)
    800056d8:	0027179b          	slliw	a5,a4,0x2
    800056dc:	00e787bb          	addw	a5,a5,a4
    800056e0:	02f4e7bb          	remw	a5,s1,a5
    800056e4:	fa0786e3          	beqz	a5,80005690 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800056e8:	05000793          	li	a5,80
    800056ec:	02f4e4bb          	remw	s1,s1,a5
    800056f0:	fa049ce3          	bnez	s1,800056a8 <_ZN12ConsumerSync8consumerEPv+0x48>
    800056f4:	fa9ff06f          	j	8000569c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800056f8:	0209b783          	ld	a5,32(s3)
    800056fc:	0087b503          	ld	a0,8(a5)
    80005700:	00001097          	auipc	ra,0x1
    80005704:	b4c080e7          	jalr	-1204(ra) # 8000624c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005708:	0ff57513          	andi	a0,a0,255
    8000570c:	ffffe097          	auipc	ra,0xffffe
    80005710:	968080e7          	jalr	-1688(ra) # 80003074 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005714:	0209b783          	ld	a5,32(s3)
    80005718:	0087b503          	ld	a0,8(a5)
    8000571c:	00001097          	auipc	ra,0x1
    80005720:	bbc080e7          	jalr	-1092(ra) # 800062d8 <_ZN9BufferCPP6getCntEv>
    80005724:	fca04ae3          	bgtz	a0,800056f8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005728:	01093503          	ld	a0,16(s2)
    8000572c:	ffffe097          	auipc	ra,0xffffe
    80005730:	888080e7          	jalr	-1912(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
}
    80005734:	02813083          	ld	ra,40(sp)
    80005738:	02013403          	ld	s0,32(sp)
    8000573c:	01813483          	ld	s1,24(sp)
    80005740:	01013903          	ld	s2,16(sp)
    80005744:	00813983          	ld	s3,8(sp)
    80005748:	00013a03          	ld	s4,0(sp)
    8000574c:	03010113          	addi	sp,sp,48
    80005750:	00008067          	ret

0000000080005754 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005754:	f8010113          	addi	sp,sp,-128
    80005758:	06113c23          	sd	ra,120(sp)
    8000575c:	06813823          	sd	s0,112(sp)
    80005760:	06913423          	sd	s1,104(sp)
    80005764:	07213023          	sd	s2,96(sp)
    80005768:	05313c23          	sd	s3,88(sp)
    8000576c:	05413823          	sd	s4,80(sp)
    80005770:	05513423          	sd	s5,72(sp)
    80005774:	05613023          	sd	s6,64(sp)
    80005778:	03713c23          	sd	s7,56(sp)
    8000577c:	03813823          	sd	s8,48(sp)
    80005780:	03913423          	sd	s9,40(sp)
    80005784:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005788:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000578c:	00004517          	auipc	a0,0x4
    80005790:	9a450513          	addi	a0,a0,-1628 # 80009130 <CONSOLE_STATUS+0x120>
    80005794:	00000097          	auipc	ra,0x0
    80005798:	604080e7          	jalr	1540(ra) # 80005d98 <_Z11printStringPKc>
    getString(input, 30);
    8000579c:	01e00593          	li	a1,30
    800057a0:	f8040493          	addi	s1,s0,-128
    800057a4:	00048513          	mv	a0,s1
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	678080e7          	jalr	1656(ra) # 80005e20 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800057b0:	00048513          	mv	a0,s1
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	744080e7          	jalr	1860(ra) # 80005ef8 <_Z11stringToIntPKc>
    800057bc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800057c0:	00004517          	auipc	a0,0x4
    800057c4:	99050513          	addi	a0,a0,-1648 # 80009150 <CONSOLE_STATUS+0x140>
    800057c8:	00000097          	auipc	ra,0x0
    800057cc:	5d0080e7          	jalr	1488(ra) # 80005d98 <_Z11printStringPKc>
    getString(input, 30);
    800057d0:	01e00593          	li	a1,30
    800057d4:	00048513          	mv	a0,s1
    800057d8:	00000097          	auipc	ra,0x0
    800057dc:	648080e7          	jalr	1608(ra) # 80005e20 <_Z9getStringPci>
    n = stringToInt(input);
    800057e0:	00048513          	mv	a0,s1
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	714080e7          	jalr	1812(ra) # 80005ef8 <_Z11stringToIntPKc>
    800057ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800057f0:	00004517          	auipc	a0,0x4
    800057f4:	98050513          	addi	a0,a0,-1664 # 80009170 <CONSOLE_STATUS+0x160>
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	5a0080e7          	jalr	1440(ra) # 80005d98 <_Z11printStringPKc>
    80005800:	00000613          	li	a2,0
    80005804:	00a00593          	li	a1,10
    80005808:	00090513          	mv	a0,s2
    8000580c:	00000097          	auipc	ra,0x0
    80005810:	73c080e7          	jalr	1852(ra) # 80005f48 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005814:	00004517          	auipc	a0,0x4
    80005818:	97450513          	addi	a0,a0,-1676 # 80009188 <CONSOLE_STATUS+0x178>
    8000581c:	00000097          	auipc	ra,0x0
    80005820:	57c080e7          	jalr	1404(ra) # 80005d98 <_Z11printStringPKc>
    80005824:	00000613          	li	a2,0
    80005828:	00a00593          	li	a1,10
    8000582c:	00048513          	mv	a0,s1
    80005830:	00000097          	auipc	ra,0x0
    80005834:	718080e7          	jalr	1816(ra) # 80005f48 <_Z8printIntiii>
    printString(".\n");
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	96850513          	addi	a0,a0,-1688 # 800091a0 <CONSOLE_STATUS+0x190>
    80005840:	00000097          	auipc	ra,0x0
    80005844:	558080e7          	jalr	1368(ra) # 80005d98 <_Z11printStringPKc>
    if(threadNum > n) {
    80005848:	0324c463          	blt	s1,s2,80005870 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000584c:	03205c63          	blez	s2,80005884 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005850:	03800513          	li	a0,56
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	540080e7          	jalr	1344(ra) # 80002d94 <_Znwm>
    8000585c:	00050a93          	mv	s5,a0
    80005860:	00048593          	mv	a1,s1
    80005864:	00001097          	auipc	ra,0x1
    80005868:	804080e7          	jalr	-2044(ra) # 80006068 <_ZN9BufferCPPC1Ei>
    8000586c:	0300006f          	j	8000589c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005870:	00004517          	auipc	a0,0x4
    80005874:	93850513          	addi	a0,a0,-1736 # 800091a8 <CONSOLE_STATUS+0x198>
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	520080e7          	jalr	1312(ra) # 80005d98 <_Z11printStringPKc>
        return;
    80005880:	0140006f          	j	80005894 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005884:	00004517          	auipc	a0,0x4
    80005888:	96450513          	addi	a0,a0,-1692 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	50c080e7          	jalr	1292(ra) # 80005d98 <_Z11printStringPKc>
        return;
    80005894:	000b8113          	mv	sp,s7
    80005898:	2380006f          	j	80005ad0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000589c:	01000513          	li	a0,16
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	4f4080e7          	jalr	1268(ra) # 80002d94 <_Znwm>
    800058a8:	00050493          	mv	s1,a0
    800058ac:	00000593          	li	a1,0
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	6a0080e7          	jalr	1696(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    800058b8:	00006797          	auipc	a5,0x6
    800058bc:	3497b023          	sd	s1,832(a5) # 8000bbf8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800058c0:	00391793          	slli	a5,s2,0x3
    800058c4:	00f78793          	addi	a5,a5,15
    800058c8:	ff07f793          	andi	a5,a5,-16
    800058cc:	40f10133          	sub	sp,sp,a5
    800058d0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800058d4:	0019071b          	addiw	a4,s2,1
    800058d8:	00171793          	slli	a5,a4,0x1
    800058dc:	00e787b3          	add	a5,a5,a4
    800058e0:	00379793          	slli	a5,a5,0x3
    800058e4:	00f78793          	addi	a5,a5,15
    800058e8:	ff07f793          	andi	a5,a5,-16
    800058ec:	40f10133          	sub	sp,sp,a5
    800058f0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800058f4:	00191c13          	slli	s8,s2,0x1
    800058f8:	012c07b3          	add	a5,s8,s2
    800058fc:	00379793          	slli	a5,a5,0x3
    80005900:	00fa07b3          	add	a5,s4,a5
    80005904:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005908:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000590c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005910:	02800513          	li	a0,40
    80005914:	ffffd097          	auipc	ra,0xffffd
    80005918:	480080e7          	jalr	1152(ra) # 80002d94 <_Znwm>
    8000591c:	00050b13          	mv	s6,a0
    80005920:	012c0c33          	add	s8,s8,s2
    80005924:	003c1c13          	slli	s8,s8,0x3
    80005928:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000592c:	ffffd097          	auipc	ra,0xffffd
    80005930:	550080e7          	jalr	1360(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80005934:	00006797          	auipc	a5,0x6
    80005938:	f5478793          	addi	a5,a5,-172 # 8000b888 <_ZTV12ConsumerSync+0x10>
    8000593c:	00fb3023          	sd	a5,0(s6)
    80005940:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005944:	000b0513          	mv	a0,s6
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	564080e7          	jalr	1380(ra) # 80002eac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005950:	00000493          	li	s1,0
    80005954:	0380006f          	j	8000598c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005958:	00006797          	auipc	a5,0x6
    8000595c:	f0878793          	addi	a5,a5,-248 # 8000b860 <_ZTV12ProducerSync+0x10>
    80005960:	00fcb023          	sd	a5,0(s9)
    80005964:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005968:	00349793          	slli	a5,s1,0x3
    8000596c:	00f987b3          	add	a5,s3,a5
    80005970:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005974:	00349793          	slli	a5,s1,0x3
    80005978:	00f987b3          	add	a5,s3,a5
    8000597c:	0007b503          	ld	a0,0(a5)
    80005980:	ffffd097          	auipc	ra,0xffffd
    80005984:	52c080e7          	jalr	1324(ra) # 80002eac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005988:	0014849b          	addiw	s1,s1,1
    8000598c:	0b24d063          	bge	s1,s2,80005a2c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005990:	00149793          	slli	a5,s1,0x1
    80005994:	009787b3          	add	a5,a5,s1
    80005998:	00379793          	slli	a5,a5,0x3
    8000599c:	00fa07b3          	add	a5,s4,a5
    800059a0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800059a4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800059a8:	00006717          	auipc	a4,0x6
    800059ac:	25073703          	ld	a4,592(a4) # 8000bbf8 <_ZL10waitForAll>
    800059b0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800059b4:	02905863          	blez	s1,800059e4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800059b8:	02800513          	li	a0,40
    800059bc:	ffffd097          	auipc	ra,0xffffd
    800059c0:	3d8080e7          	jalr	984(ra) # 80002d94 <_Znwm>
    800059c4:	00050c93          	mv	s9,a0
    800059c8:	00149c13          	slli	s8,s1,0x1
    800059cc:	009c0c33          	add	s8,s8,s1
    800059d0:	003c1c13          	slli	s8,s8,0x3
    800059d4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800059d8:	ffffd097          	auipc	ra,0xffffd
    800059dc:	4a4080e7          	jalr	1188(ra) # 80002e7c <_ZN6ThreadC1Ev>
    800059e0:	f79ff06f          	j	80005958 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800059e4:	02800513          	li	a0,40
    800059e8:	ffffd097          	auipc	ra,0xffffd
    800059ec:	3ac080e7          	jalr	940(ra) # 80002d94 <_Znwm>
    800059f0:	00050c93          	mv	s9,a0
    800059f4:	00149c13          	slli	s8,s1,0x1
    800059f8:	009c0c33          	add	s8,s8,s1
    800059fc:	003c1c13          	slli	s8,s8,0x3
    80005a00:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005a04:	ffffd097          	auipc	ra,0xffffd
    80005a08:	478080e7          	jalr	1144(ra) # 80002e7c <_ZN6ThreadC1Ev>
    80005a0c:	00006797          	auipc	a5,0x6
    80005a10:	e2c78793          	addi	a5,a5,-468 # 8000b838 <_ZTV16ProducerKeyboard+0x10>
    80005a14:	00fcb023          	sd	a5,0(s9)
    80005a18:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005a1c:	00349793          	slli	a5,s1,0x3
    80005a20:	00f987b3          	add	a5,s3,a5
    80005a24:	0197b023          	sd	s9,0(a5)
    80005a28:	f4dff06f          	j	80005974 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005a2c:	ffffd097          	auipc	ra,0xffffd
    80005a30:	4d4080e7          	jalr	1236(ra) # 80002f00 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005a34:	00000493          	li	s1,0
    80005a38:	00994e63          	blt	s2,s1,80005a54 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005a3c:	00006517          	auipc	a0,0x6
    80005a40:	1bc53503          	ld	a0,444(a0) # 8000bbf8 <_ZL10waitForAll>
    80005a44:	ffffd097          	auipc	ra,0xffffd
    80005a48:	544080e7          	jalr	1348(ra) # 80002f88 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005a4c:	0014849b          	addiw	s1,s1,1
    80005a50:	fe9ff06f          	j	80005a38 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005a54:	00000493          	li	s1,0
    80005a58:	0080006f          	j	80005a60 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005a5c:	0014849b          	addiw	s1,s1,1
    80005a60:	0324d263          	bge	s1,s2,80005a84 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005a64:	00349793          	slli	a5,s1,0x3
    80005a68:	00f987b3          	add	a5,s3,a5
    80005a6c:	0007b503          	ld	a0,0(a5)
    80005a70:	fe0506e3          	beqz	a0,80005a5c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005a74:	00053783          	ld	a5,0(a0)
    80005a78:	0087b783          	ld	a5,8(a5)
    80005a7c:	000780e7          	jalr	a5
    80005a80:	fddff06f          	j	80005a5c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005a84:	000b0a63          	beqz	s6,80005a98 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005a88:	000b3783          	ld	a5,0(s6)
    80005a8c:	0087b783          	ld	a5,8(a5)
    80005a90:	000b0513          	mv	a0,s6
    80005a94:	000780e7          	jalr	a5
    delete waitForAll;
    80005a98:	00006517          	auipc	a0,0x6
    80005a9c:	16053503          	ld	a0,352(a0) # 8000bbf8 <_ZL10waitForAll>
    80005aa0:	00050863          	beqz	a0,80005ab0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005aa4:	00053783          	ld	a5,0(a0)
    80005aa8:	0087b783          	ld	a5,8(a5)
    80005aac:	000780e7          	jalr	a5
    delete buffer;
    80005ab0:	000a8e63          	beqz	s5,80005acc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005ab4:	000a8513          	mv	a0,s5
    80005ab8:	00001097          	auipc	ra,0x1
    80005abc:	8a8080e7          	jalr	-1880(ra) # 80006360 <_ZN9BufferCPPD1Ev>
    80005ac0:	000a8513          	mv	a0,s5
    80005ac4:	ffffd097          	auipc	ra,0xffffd
    80005ac8:	2f8080e7          	jalr	760(ra) # 80002dbc <_ZdlPv>
    80005acc:	000b8113          	mv	sp,s7

}
    80005ad0:	f8040113          	addi	sp,s0,-128
    80005ad4:	07813083          	ld	ra,120(sp)
    80005ad8:	07013403          	ld	s0,112(sp)
    80005adc:	06813483          	ld	s1,104(sp)
    80005ae0:	06013903          	ld	s2,96(sp)
    80005ae4:	05813983          	ld	s3,88(sp)
    80005ae8:	05013a03          	ld	s4,80(sp)
    80005aec:	04813a83          	ld	s5,72(sp)
    80005af0:	04013b03          	ld	s6,64(sp)
    80005af4:	03813b83          	ld	s7,56(sp)
    80005af8:	03013c03          	ld	s8,48(sp)
    80005afc:	02813c83          	ld	s9,40(sp)
    80005b00:	08010113          	addi	sp,sp,128
    80005b04:	00008067          	ret
    80005b08:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005b0c:	000a8513          	mv	a0,s5
    80005b10:	ffffd097          	auipc	ra,0xffffd
    80005b14:	2ac080e7          	jalr	684(ra) # 80002dbc <_ZdlPv>
    80005b18:	00048513          	mv	a0,s1
    80005b1c:	00007097          	auipc	ra,0x7
    80005b20:	1bc080e7          	jalr	444(ra) # 8000ccd8 <_Unwind_Resume>
    80005b24:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005b28:	00048513          	mv	a0,s1
    80005b2c:	ffffd097          	auipc	ra,0xffffd
    80005b30:	290080e7          	jalr	656(ra) # 80002dbc <_ZdlPv>
    80005b34:	00090513          	mv	a0,s2
    80005b38:	00007097          	auipc	ra,0x7
    80005b3c:	1a0080e7          	jalr	416(ra) # 8000ccd8 <_Unwind_Resume>
    80005b40:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005b44:	000b0513          	mv	a0,s6
    80005b48:	ffffd097          	auipc	ra,0xffffd
    80005b4c:	274080e7          	jalr	628(ra) # 80002dbc <_ZdlPv>
    80005b50:	00048513          	mv	a0,s1
    80005b54:	00007097          	auipc	ra,0x7
    80005b58:	184080e7          	jalr	388(ra) # 8000ccd8 <_Unwind_Resume>
    80005b5c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005b60:	000c8513          	mv	a0,s9
    80005b64:	ffffd097          	auipc	ra,0xffffd
    80005b68:	258080e7          	jalr	600(ra) # 80002dbc <_ZdlPv>
    80005b6c:	00048513          	mv	a0,s1
    80005b70:	00007097          	auipc	ra,0x7
    80005b74:	168080e7          	jalr	360(ra) # 8000ccd8 <_Unwind_Resume>
    80005b78:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005b7c:	000c8513          	mv	a0,s9
    80005b80:	ffffd097          	auipc	ra,0xffffd
    80005b84:	23c080e7          	jalr	572(ra) # 80002dbc <_ZdlPv>
    80005b88:	00048513          	mv	a0,s1
    80005b8c:	00007097          	auipc	ra,0x7
    80005b90:	14c080e7          	jalr	332(ra) # 8000ccd8 <_Unwind_Resume>

0000000080005b94 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005b94:	ff010113          	addi	sp,sp,-16
    80005b98:	00113423          	sd	ra,8(sp)
    80005b9c:	00813023          	sd	s0,0(sp)
    80005ba0:	01010413          	addi	s0,sp,16
    80005ba4:	00006797          	auipc	a5,0x6
    80005ba8:	ce478793          	addi	a5,a5,-796 # 8000b888 <_ZTV12ConsumerSync+0x10>
    80005bac:	00f53023          	sd	a5,0(a0)
    80005bb0:	ffffd097          	auipc	ra,0xffffd
    80005bb4:	114080e7          	jalr	276(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80005bb8:	00813083          	ld	ra,8(sp)
    80005bbc:	00013403          	ld	s0,0(sp)
    80005bc0:	01010113          	addi	sp,sp,16
    80005bc4:	00008067          	ret

0000000080005bc8 <_ZN12ConsumerSyncD0Ev>:
    80005bc8:	fe010113          	addi	sp,sp,-32
    80005bcc:	00113c23          	sd	ra,24(sp)
    80005bd0:	00813823          	sd	s0,16(sp)
    80005bd4:	00913423          	sd	s1,8(sp)
    80005bd8:	02010413          	addi	s0,sp,32
    80005bdc:	00050493          	mv	s1,a0
    80005be0:	00006797          	auipc	a5,0x6
    80005be4:	ca878793          	addi	a5,a5,-856 # 8000b888 <_ZTV12ConsumerSync+0x10>
    80005be8:	00f53023          	sd	a5,0(a0)
    80005bec:	ffffd097          	auipc	ra,0xffffd
    80005bf0:	0d8080e7          	jalr	216(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80005bf4:	00048513          	mv	a0,s1
    80005bf8:	ffffd097          	auipc	ra,0xffffd
    80005bfc:	1c4080e7          	jalr	452(ra) # 80002dbc <_ZdlPv>
    80005c00:	01813083          	ld	ra,24(sp)
    80005c04:	01013403          	ld	s0,16(sp)
    80005c08:	00813483          	ld	s1,8(sp)
    80005c0c:	02010113          	addi	sp,sp,32
    80005c10:	00008067          	ret

0000000080005c14 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005c14:	ff010113          	addi	sp,sp,-16
    80005c18:	00113423          	sd	ra,8(sp)
    80005c1c:	00813023          	sd	s0,0(sp)
    80005c20:	01010413          	addi	s0,sp,16
    80005c24:	00006797          	auipc	a5,0x6
    80005c28:	c3c78793          	addi	a5,a5,-964 # 8000b860 <_ZTV12ProducerSync+0x10>
    80005c2c:	00f53023          	sd	a5,0(a0)
    80005c30:	ffffd097          	auipc	ra,0xffffd
    80005c34:	094080e7          	jalr	148(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80005c38:	00813083          	ld	ra,8(sp)
    80005c3c:	00013403          	ld	s0,0(sp)
    80005c40:	01010113          	addi	sp,sp,16
    80005c44:	00008067          	ret

0000000080005c48 <_ZN12ProducerSyncD0Ev>:
    80005c48:	fe010113          	addi	sp,sp,-32
    80005c4c:	00113c23          	sd	ra,24(sp)
    80005c50:	00813823          	sd	s0,16(sp)
    80005c54:	00913423          	sd	s1,8(sp)
    80005c58:	02010413          	addi	s0,sp,32
    80005c5c:	00050493          	mv	s1,a0
    80005c60:	00006797          	auipc	a5,0x6
    80005c64:	c0078793          	addi	a5,a5,-1024 # 8000b860 <_ZTV12ProducerSync+0x10>
    80005c68:	00f53023          	sd	a5,0(a0)
    80005c6c:	ffffd097          	auipc	ra,0xffffd
    80005c70:	058080e7          	jalr	88(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80005c74:	00048513          	mv	a0,s1
    80005c78:	ffffd097          	auipc	ra,0xffffd
    80005c7c:	144080e7          	jalr	324(ra) # 80002dbc <_ZdlPv>
    80005c80:	01813083          	ld	ra,24(sp)
    80005c84:	01013403          	ld	s0,16(sp)
    80005c88:	00813483          	ld	s1,8(sp)
    80005c8c:	02010113          	addi	sp,sp,32
    80005c90:	00008067          	ret

0000000080005c94 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005c94:	ff010113          	addi	sp,sp,-16
    80005c98:	00113423          	sd	ra,8(sp)
    80005c9c:	00813023          	sd	s0,0(sp)
    80005ca0:	01010413          	addi	s0,sp,16
    80005ca4:	00006797          	auipc	a5,0x6
    80005ca8:	b9478793          	addi	a5,a5,-1132 # 8000b838 <_ZTV16ProducerKeyboard+0x10>
    80005cac:	00f53023          	sd	a5,0(a0)
    80005cb0:	ffffd097          	auipc	ra,0xffffd
    80005cb4:	014080e7          	jalr	20(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80005cb8:	00813083          	ld	ra,8(sp)
    80005cbc:	00013403          	ld	s0,0(sp)
    80005cc0:	01010113          	addi	sp,sp,16
    80005cc4:	00008067          	ret

0000000080005cc8 <_ZN16ProducerKeyboardD0Ev>:
    80005cc8:	fe010113          	addi	sp,sp,-32
    80005ccc:	00113c23          	sd	ra,24(sp)
    80005cd0:	00813823          	sd	s0,16(sp)
    80005cd4:	00913423          	sd	s1,8(sp)
    80005cd8:	02010413          	addi	s0,sp,32
    80005cdc:	00050493          	mv	s1,a0
    80005ce0:	00006797          	auipc	a5,0x6
    80005ce4:	b5878793          	addi	a5,a5,-1192 # 8000b838 <_ZTV16ProducerKeyboard+0x10>
    80005ce8:	00f53023          	sd	a5,0(a0)
    80005cec:	ffffd097          	auipc	ra,0xffffd
    80005cf0:	fd8080e7          	jalr	-40(ra) # 80002cc4 <_ZN6ThreadD1Ev>
    80005cf4:	00048513          	mv	a0,s1
    80005cf8:	ffffd097          	auipc	ra,0xffffd
    80005cfc:	0c4080e7          	jalr	196(ra) # 80002dbc <_ZdlPv>
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	00813483          	ld	s1,8(sp)
    80005d0c:	02010113          	addi	sp,sp,32
    80005d10:	00008067          	ret

0000000080005d14 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005d14:	ff010113          	addi	sp,sp,-16
    80005d18:	00113423          	sd	ra,8(sp)
    80005d1c:	00813023          	sd	s0,0(sp)
    80005d20:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005d24:	02053583          	ld	a1,32(a0)
    80005d28:	fffff097          	auipc	ra,0xfffff
    80005d2c:	7e4080e7          	jalr	2020(ra) # 8000550c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005d30:	00813083          	ld	ra,8(sp)
    80005d34:	00013403          	ld	s0,0(sp)
    80005d38:	01010113          	addi	sp,sp,16
    80005d3c:	00008067          	ret

0000000080005d40 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005d40:	ff010113          	addi	sp,sp,-16
    80005d44:	00113423          	sd	ra,8(sp)
    80005d48:	00813023          	sd	s0,0(sp)
    80005d4c:	01010413          	addi	s0,sp,16
        producer(td);
    80005d50:	02053583          	ld	a1,32(a0)
    80005d54:	00000097          	auipc	ra,0x0
    80005d58:	878080e7          	jalr	-1928(ra) # 800055cc <_ZN12ProducerSync8producerEPv>
    }
    80005d5c:	00813083          	ld	ra,8(sp)
    80005d60:	00013403          	ld	s0,0(sp)
    80005d64:	01010113          	addi	sp,sp,16
    80005d68:	00008067          	ret

0000000080005d6c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005d6c:	ff010113          	addi	sp,sp,-16
    80005d70:	00113423          	sd	ra,8(sp)
    80005d74:	00813023          	sd	s0,0(sp)
    80005d78:	01010413          	addi	s0,sp,16
        consumer(td);
    80005d7c:	02053583          	ld	a1,32(a0)
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	8e0080e7          	jalr	-1824(ra) # 80005660 <_ZN12ConsumerSync8consumerEPv>
    }
    80005d88:	00813083          	ld	ra,8(sp)
    80005d8c:	00013403          	ld	s0,0(sp)
    80005d90:	01010113          	addi	sp,sp,16
    80005d94:	00008067          	ret

0000000080005d98 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005d98:	fe010113          	addi	sp,sp,-32
    80005d9c:	00113c23          	sd	ra,24(sp)
    80005da0:	00813823          	sd	s0,16(sp)
    80005da4:	00913423          	sd	s1,8(sp)
    80005da8:	02010413          	addi	s0,sp,32
    80005dac:	00050493          	mv	s1,a0
    LOCK();
    80005db0:	00100613          	li	a2,1
    80005db4:	00000593          	li	a1,0
    80005db8:	00006517          	auipc	a0,0x6
    80005dbc:	e4850513          	addi	a0,a0,-440 # 8000bc00 <lockPrint>
    80005dc0:	ffffb097          	auipc	ra,0xffffb
    80005dc4:	510080e7          	jalr	1296(ra) # 800012d0 <copy_and_swap>
    80005dc8:	00050863          	beqz	a0,80005dd8 <_Z11printStringPKc+0x40>
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	884080e7          	jalr	-1916(ra) # 80001650 <thread_dispatch>
    80005dd4:	fddff06f          	j	80005db0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005dd8:	0004c503          	lbu	a0,0(s1)
    80005ddc:	00050a63          	beqz	a0,80005df0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005de0:	ffffc097          	auipc	ra,0xffffc
    80005de4:	9c4080e7          	jalr	-1596(ra) # 800017a4 <putc>
        string++;
    80005de8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005dec:	fedff06f          	j	80005dd8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005df0:	00000613          	li	a2,0
    80005df4:	00100593          	li	a1,1
    80005df8:	00006517          	auipc	a0,0x6
    80005dfc:	e0850513          	addi	a0,a0,-504 # 8000bc00 <lockPrint>
    80005e00:	ffffb097          	auipc	ra,0xffffb
    80005e04:	4d0080e7          	jalr	1232(ra) # 800012d0 <copy_and_swap>
    80005e08:	fe0514e3          	bnez	a0,80005df0 <_Z11printStringPKc+0x58>
}
    80005e0c:	01813083          	ld	ra,24(sp)
    80005e10:	01013403          	ld	s0,16(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	02010113          	addi	sp,sp,32
    80005e1c:	00008067          	ret

0000000080005e20 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005e20:	fd010113          	addi	sp,sp,-48
    80005e24:	02113423          	sd	ra,40(sp)
    80005e28:	02813023          	sd	s0,32(sp)
    80005e2c:	00913c23          	sd	s1,24(sp)
    80005e30:	01213823          	sd	s2,16(sp)
    80005e34:	01313423          	sd	s3,8(sp)
    80005e38:	01413023          	sd	s4,0(sp)
    80005e3c:	03010413          	addi	s0,sp,48
    80005e40:	00050993          	mv	s3,a0
    80005e44:	00058a13          	mv	s4,a1
    LOCK();
    80005e48:	00100613          	li	a2,1
    80005e4c:	00000593          	li	a1,0
    80005e50:	00006517          	auipc	a0,0x6
    80005e54:	db050513          	addi	a0,a0,-592 # 8000bc00 <lockPrint>
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	478080e7          	jalr	1144(ra) # 800012d0 <copy_and_swap>
    80005e60:	00050863          	beqz	a0,80005e70 <_Z9getStringPci+0x50>
    80005e64:	ffffb097          	auipc	ra,0xffffb
    80005e68:	7ec080e7          	jalr	2028(ra) # 80001650 <thread_dispatch>
    80005e6c:	fddff06f          	j	80005e48 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005e70:	00000913          	li	s2,0
    80005e74:	00090493          	mv	s1,s2
    80005e78:	0019091b          	addiw	s2,s2,1
    80005e7c:	03495a63          	bge	s2,s4,80005eb0 <_Z9getStringPci+0x90>
        cc = getc();
    80005e80:	ffffc097          	auipc	ra,0xffffc
    80005e84:	900080e7          	jalr	-1792(ra) # 80001780 <getc>
        if(cc < 1)
    80005e88:	02050463          	beqz	a0,80005eb0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005e8c:	009984b3          	add	s1,s3,s1
    80005e90:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005e94:	00a00793          	li	a5,10
    80005e98:	00f50a63          	beq	a0,a5,80005eac <_Z9getStringPci+0x8c>
    80005e9c:	00d00793          	li	a5,13
    80005ea0:	fcf51ae3          	bne	a0,a5,80005e74 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005ea4:	00090493          	mv	s1,s2
    80005ea8:	0080006f          	j	80005eb0 <_Z9getStringPci+0x90>
    80005eac:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005eb0:	009984b3          	add	s1,s3,s1
    80005eb4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005eb8:	00000613          	li	a2,0
    80005ebc:	00100593          	li	a1,1
    80005ec0:	00006517          	auipc	a0,0x6
    80005ec4:	d4050513          	addi	a0,a0,-704 # 8000bc00 <lockPrint>
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	408080e7          	jalr	1032(ra) # 800012d0 <copy_and_swap>
    80005ed0:	fe0514e3          	bnez	a0,80005eb8 <_Z9getStringPci+0x98>
    return buf;
}
    80005ed4:	00098513          	mv	a0,s3
    80005ed8:	02813083          	ld	ra,40(sp)
    80005edc:	02013403          	ld	s0,32(sp)
    80005ee0:	01813483          	ld	s1,24(sp)
    80005ee4:	01013903          	ld	s2,16(sp)
    80005ee8:	00813983          	ld	s3,8(sp)
    80005eec:	00013a03          	ld	s4,0(sp)
    80005ef0:	03010113          	addi	sp,sp,48
    80005ef4:	00008067          	ret

0000000080005ef8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005ef8:	ff010113          	addi	sp,sp,-16
    80005efc:	00813423          	sd	s0,8(sp)
    80005f00:	01010413          	addi	s0,sp,16
    80005f04:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005f08:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005f0c:	0006c603          	lbu	a2,0(a3)
    80005f10:	fd06071b          	addiw	a4,a2,-48
    80005f14:	0ff77713          	andi	a4,a4,255
    80005f18:	00900793          	li	a5,9
    80005f1c:	02e7e063          	bltu	a5,a4,80005f3c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005f20:	0025179b          	slliw	a5,a0,0x2
    80005f24:	00a787bb          	addw	a5,a5,a0
    80005f28:	0017979b          	slliw	a5,a5,0x1
    80005f2c:	00168693          	addi	a3,a3,1
    80005f30:	00c787bb          	addw	a5,a5,a2
    80005f34:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005f38:	fd5ff06f          	j	80005f0c <_Z11stringToIntPKc+0x14>
    return n;
}
    80005f3c:	00813403          	ld	s0,8(sp)
    80005f40:	01010113          	addi	sp,sp,16
    80005f44:	00008067          	ret

0000000080005f48 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005f48:	fc010113          	addi	sp,sp,-64
    80005f4c:	02113c23          	sd	ra,56(sp)
    80005f50:	02813823          	sd	s0,48(sp)
    80005f54:	02913423          	sd	s1,40(sp)
    80005f58:	03213023          	sd	s2,32(sp)
    80005f5c:	01313c23          	sd	s3,24(sp)
    80005f60:	04010413          	addi	s0,sp,64
    80005f64:	00050493          	mv	s1,a0
    80005f68:	00058913          	mv	s2,a1
    80005f6c:	00060993          	mv	s3,a2
    LOCK();
    80005f70:	00100613          	li	a2,1
    80005f74:	00000593          	li	a1,0
    80005f78:	00006517          	auipc	a0,0x6
    80005f7c:	c8850513          	addi	a0,a0,-888 # 8000bc00 <lockPrint>
    80005f80:	ffffb097          	auipc	ra,0xffffb
    80005f84:	350080e7          	jalr	848(ra) # 800012d0 <copy_and_swap>
    80005f88:	00050863          	beqz	a0,80005f98 <_Z8printIntiii+0x50>
    80005f8c:	ffffb097          	auipc	ra,0xffffb
    80005f90:	6c4080e7          	jalr	1732(ra) # 80001650 <thread_dispatch>
    80005f94:	fddff06f          	j	80005f70 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005f98:	00098463          	beqz	s3,80005fa0 <_Z8printIntiii+0x58>
    80005f9c:	0804c463          	bltz	s1,80006024 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005fa0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005fa4:	00000593          	li	a1,0
    }

    i = 0;
    80005fa8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005fac:	0009079b          	sext.w	a5,s2
    80005fb0:	0325773b          	remuw	a4,a0,s2
    80005fb4:	00048613          	mv	a2,s1
    80005fb8:	0014849b          	addiw	s1,s1,1
    80005fbc:	02071693          	slli	a3,a4,0x20
    80005fc0:	0206d693          	srli	a3,a3,0x20
    80005fc4:	00006717          	auipc	a4,0x6
    80005fc8:	8dc70713          	addi	a4,a4,-1828 # 8000b8a0 <digits>
    80005fcc:	00d70733          	add	a4,a4,a3
    80005fd0:	00074683          	lbu	a3,0(a4)
    80005fd4:	fd040713          	addi	a4,s0,-48
    80005fd8:	00c70733          	add	a4,a4,a2
    80005fdc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005fe0:	0005071b          	sext.w	a4,a0
    80005fe4:	0325553b          	divuw	a0,a0,s2
    80005fe8:	fcf772e3          	bgeu	a4,a5,80005fac <_Z8printIntiii+0x64>
    if(neg)
    80005fec:	00058c63          	beqz	a1,80006004 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005ff0:	fd040793          	addi	a5,s0,-48
    80005ff4:	009784b3          	add	s1,a5,s1
    80005ff8:	02d00793          	li	a5,45
    80005ffc:	fef48823          	sb	a5,-16(s1)
    80006000:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006004:	fff4849b          	addiw	s1,s1,-1
    80006008:	0204c463          	bltz	s1,80006030 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000600c:	fd040793          	addi	a5,s0,-48
    80006010:	009787b3          	add	a5,a5,s1
    80006014:	ff07c503          	lbu	a0,-16(a5)
    80006018:	ffffb097          	auipc	ra,0xffffb
    8000601c:	78c080e7          	jalr	1932(ra) # 800017a4 <putc>
    80006020:	fe5ff06f          	j	80006004 <_Z8printIntiii+0xbc>
        x = -xx;
    80006024:	4090053b          	negw	a0,s1
        neg = 1;
    80006028:	00100593          	li	a1,1
        x = -xx;
    8000602c:	f7dff06f          	j	80005fa8 <_Z8printIntiii+0x60>

    UNLOCK();
    80006030:	00000613          	li	a2,0
    80006034:	00100593          	li	a1,1
    80006038:	00006517          	auipc	a0,0x6
    8000603c:	bc850513          	addi	a0,a0,-1080 # 8000bc00 <lockPrint>
    80006040:	ffffb097          	auipc	ra,0xffffb
    80006044:	290080e7          	jalr	656(ra) # 800012d0 <copy_and_swap>
    80006048:	fe0514e3          	bnez	a0,80006030 <_Z8printIntiii+0xe8>
    8000604c:	03813083          	ld	ra,56(sp)
    80006050:	03013403          	ld	s0,48(sp)
    80006054:	02813483          	ld	s1,40(sp)
    80006058:	02013903          	ld	s2,32(sp)
    8000605c:	01813983          	ld	s3,24(sp)
    80006060:	04010113          	addi	sp,sp,64
    80006064:	00008067          	ret

0000000080006068 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006068:	fd010113          	addi	sp,sp,-48
    8000606c:	02113423          	sd	ra,40(sp)
    80006070:	02813023          	sd	s0,32(sp)
    80006074:	00913c23          	sd	s1,24(sp)
    80006078:	01213823          	sd	s2,16(sp)
    8000607c:	01313423          	sd	s3,8(sp)
    80006080:	03010413          	addi	s0,sp,48
    80006084:	00050493          	mv	s1,a0
    80006088:	00058913          	mv	s2,a1
    8000608c:	0015879b          	addiw	a5,a1,1
    80006090:	0007851b          	sext.w	a0,a5
    80006094:	00f4a023          	sw	a5,0(s1)
    80006098:	0004a823          	sw	zero,16(s1)
    8000609c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800060a0:	00251513          	slli	a0,a0,0x2
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	4b0080e7          	jalr	1200(ra) # 80001554 <mem_alloc>
    800060ac:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800060b0:	01000513          	li	a0,16
    800060b4:	ffffd097          	auipc	ra,0xffffd
    800060b8:	ce0080e7          	jalr	-800(ra) # 80002d94 <_Znwm>
    800060bc:	00050993          	mv	s3,a0
    800060c0:	00000593          	li	a1,0
    800060c4:	ffffd097          	auipc	ra,0xffffd
    800060c8:	e8c080e7          	jalr	-372(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    800060cc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800060d0:	01000513          	li	a0,16
    800060d4:	ffffd097          	auipc	ra,0xffffd
    800060d8:	cc0080e7          	jalr	-832(ra) # 80002d94 <_Znwm>
    800060dc:	00050993          	mv	s3,a0
    800060e0:	00090593          	mv	a1,s2
    800060e4:	ffffd097          	auipc	ra,0xffffd
    800060e8:	e6c080e7          	jalr	-404(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    800060ec:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800060f0:	01000513          	li	a0,16
    800060f4:	ffffd097          	auipc	ra,0xffffd
    800060f8:	ca0080e7          	jalr	-864(ra) # 80002d94 <_Znwm>
    800060fc:	00050913          	mv	s2,a0
    80006100:	00100593          	li	a1,1
    80006104:	ffffd097          	auipc	ra,0xffffd
    80006108:	e4c080e7          	jalr	-436(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    8000610c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006110:	01000513          	li	a0,16
    80006114:	ffffd097          	auipc	ra,0xffffd
    80006118:	c80080e7          	jalr	-896(ra) # 80002d94 <_Znwm>
    8000611c:	00050913          	mv	s2,a0
    80006120:	00100593          	li	a1,1
    80006124:	ffffd097          	auipc	ra,0xffffd
    80006128:	e2c080e7          	jalr	-468(ra) # 80002f50 <_ZN9SemaphoreC1Ej>
    8000612c:	0324b823          	sd	s2,48(s1)
}
    80006130:	02813083          	ld	ra,40(sp)
    80006134:	02013403          	ld	s0,32(sp)
    80006138:	01813483          	ld	s1,24(sp)
    8000613c:	01013903          	ld	s2,16(sp)
    80006140:	00813983          	ld	s3,8(sp)
    80006144:	03010113          	addi	sp,sp,48
    80006148:	00008067          	ret
    8000614c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006150:	00098513          	mv	a0,s3
    80006154:	ffffd097          	auipc	ra,0xffffd
    80006158:	c68080e7          	jalr	-920(ra) # 80002dbc <_ZdlPv>
    8000615c:	00048513          	mv	a0,s1
    80006160:	00007097          	auipc	ra,0x7
    80006164:	b78080e7          	jalr	-1160(ra) # 8000ccd8 <_Unwind_Resume>
    80006168:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000616c:	00098513          	mv	a0,s3
    80006170:	ffffd097          	auipc	ra,0xffffd
    80006174:	c4c080e7          	jalr	-948(ra) # 80002dbc <_ZdlPv>
    80006178:	00048513          	mv	a0,s1
    8000617c:	00007097          	auipc	ra,0x7
    80006180:	b5c080e7          	jalr	-1188(ra) # 8000ccd8 <_Unwind_Resume>
    80006184:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006188:	00090513          	mv	a0,s2
    8000618c:	ffffd097          	auipc	ra,0xffffd
    80006190:	c30080e7          	jalr	-976(ra) # 80002dbc <_ZdlPv>
    80006194:	00048513          	mv	a0,s1
    80006198:	00007097          	auipc	ra,0x7
    8000619c:	b40080e7          	jalr	-1216(ra) # 8000ccd8 <_Unwind_Resume>
    800061a0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800061a4:	00090513          	mv	a0,s2
    800061a8:	ffffd097          	auipc	ra,0xffffd
    800061ac:	c14080e7          	jalr	-1004(ra) # 80002dbc <_ZdlPv>
    800061b0:	00048513          	mv	a0,s1
    800061b4:	00007097          	auipc	ra,0x7
    800061b8:	b24080e7          	jalr	-1244(ra) # 8000ccd8 <_Unwind_Resume>

00000000800061bc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800061bc:	fe010113          	addi	sp,sp,-32
    800061c0:	00113c23          	sd	ra,24(sp)
    800061c4:	00813823          	sd	s0,16(sp)
    800061c8:	00913423          	sd	s1,8(sp)
    800061cc:	01213023          	sd	s2,0(sp)
    800061d0:	02010413          	addi	s0,sp,32
    800061d4:	00050493          	mv	s1,a0
    800061d8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800061dc:	01853503          	ld	a0,24(a0)
    800061e0:	ffffd097          	auipc	ra,0xffffd
    800061e4:	da8080e7          	jalr	-600(ra) # 80002f88 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800061e8:	0304b503          	ld	a0,48(s1)
    800061ec:	ffffd097          	auipc	ra,0xffffd
    800061f0:	d9c080e7          	jalr	-612(ra) # 80002f88 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800061f4:	0084b783          	ld	a5,8(s1)
    800061f8:	0144a703          	lw	a4,20(s1)
    800061fc:	00271713          	slli	a4,a4,0x2
    80006200:	00e787b3          	add	a5,a5,a4
    80006204:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006208:	0144a783          	lw	a5,20(s1)
    8000620c:	0017879b          	addiw	a5,a5,1
    80006210:	0004a703          	lw	a4,0(s1)
    80006214:	02e7e7bb          	remw	a5,a5,a4
    80006218:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000621c:	0304b503          	ld	a0,48(s1)
    80006220:	ffffd097          	auipc	ra,0xffffd
    80006224:	d94080e7          	jalr	-620(ra) # 80002fb4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006228:	0204b503          	ld	a0,32(s1)
    8000622c:	ffffd097          	auipc	ra,0xffffd
    80006230:	d88080e7          	jalr	-632(ra) # 80002fb4 <_ZN9Semaphore6signalEv>

}
    80006234:	01813083          	ld	ra,24(sp)
    80006238:	01013403          	ld	s0,16(sp)
    8000623c:	00813483          	ld	s1,8(sp)
    80006240:	00013903          	ld	s2,0(sp)
    80006244:	02010113          	addi	sp,sp,32
    80006248:	00008067          	ret

000000008000624c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000624c:	fe010113          	addi	sp,sp,-32
    80006250:	00113c23          	sd	ra,24(sp)
    80006254:	00813823          	sd	s0,16(sp)
    80006258:	00913423          	sd	s1,8(sp)
    8000625c:	01213023          	sd	s2,0(sp)
    80006260:	02010413          	addi	s0,sp,32
    80006264:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006268:	02053503          	ld	a0,32(a0)
    8000626c:	ffffd097          	auipc	ra,0xffffd
    80006270:	d1c080e7          	jalr	-740(ra) # 80002f88 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006274:	0284b503          	ld	a0,40(s1)
    80006278:	ffffd097          	auipc	ra,0xffffd
    8000627c:	d10080e7          	jalr	-752(ra) # 80002f88 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006280:	0084b703          	ld	a4,8(s1)
    80006284:	0104a783          	lw	a5,16(s1)
    80006288:	00279693          	slli	a3,a5,0x2
    8000628c:	00d70733          	add	a4,a4,a3
    80006290:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006294:	0017879b          	addiw	a5,a5,1
    80006298:	0004a703          	lw	a4,0(s1)
    8000629c:	02e7e7bb          	remw	a5,a5,a4
    800062a0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800062a4:	0284b503          	ld	a0,40(s1)
    800062a8:	ffffd097          	auipc	ra,0xffffd
    800062ac:	d0c080e7          	jalr	-756(ra) # 80002fb4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800062b0:	0184b503          	ld	a0,24(s1)
    800062b4:	ffffd097          	auipc	ra,0xffffd
    800062b8:	d00080e7          	jalr	-768(ra) # 80002fb4 <_ZN9Semaphore6signalEv>

    return ret;
}
    800062bc:	00090513          	mv	a0,s2
    800062c0:	01813083          	ld	ra,24(sp)
    800062c4:	01013403          	ld	s0,16(sp)
    800062c8:	00813483          	ld	s1,8(sp)
    800062cc:	00013903          	ld	s2,0(sp)
    800062d0:	02010113          	addi	sp,sp,32
    800062d4:	00008067          	ret

00000000800062d8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800062d8:	fe010113          	addi	sp,sp,-32
    800062dc:	00113c23          	sd	ra,24(sp)
    800062e0:	00813823          	sd	s0,16(sp)
    800062e4:	00913423          	sd	s1,8(sp)
    800062e8:	01213023          	sd	s2,0(sp)
    800062ec:	02010413          	addi	s0,sp,32
    800062f0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800062f4:	02853503          	ld	a0,40(a0)
    800062f8:	ffffd097          	auipc	ra,0xffffd
    800062fc:	c90080e7          	jalr	-880(ra) # 80002f88 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006300:	0304b503          	ld	a0,48(s1)
    80006304:	ffffd097          	auipc	ra,0xffffd
    80006308:	c84080e7          	jalr	-892(ra) # 80002f88 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000630c:	0144a783          	lw	a5,20(s1)
    80006310:	0104a903          	lw	s2,16(s1)
    80006314:	0327ce63          	blt	a5,s2,80006350 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006318:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000631c:	0304b503          	ld	a0,48(s1)
    80006320:	ffffd097          	auipc	ra,0xffffd
    80006324:	c94080e7          	jalr	-876(ra) # 80002fb4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006328:	0284b503          	ld	a0,40(s1)
    8000632c:	ffffd097          	auipc	ra,0xffffd
    80006330:	c88080e7          	jalr	-888(ra) # 80002fb4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006334:	00090513          	mv	a0,s2
    80006338:	01813083          	ld	ra,24(sp)
    8000633c:	01013403          	ld	s0,16(sp)
    80006340:	00813483          	ld	s1,8(sp)
    80006344:	00013903          	ld	s2,0(sp)
    80006348:	02010113          	addi	sp,sp,32
    8000634c:	00008067          	ret
        ret = cap - head + tail;
    80006350:	0004a703          	lw	a4,0(s1)
    80006354:	4127093b          	subw	s2,a4,s2
    80006358:	00f9093b          	addw	s2,s2,a5
    8000635c:	fc1ff06f          	j	8000631c <_ZN9BufferCPP6getCntEv+0x44>

0000000080006360 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006360:	fe010113          	addi	sp,sp,-32
    80006364:	00113c23          	sd	ra,24(sp)
    80006368:	00813823          	sd	s0,16(sp)
    8000636c:	00913423          	sd	s1,8(sp)
    80006370:	02010413          	addi	s0,sp,32
    80006374:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006378:	00a00513          	li	a0,10
    8000637c:	ffffd097          	auipc	ra,0xffffd
    80006380:	cf8080e7          	jalr	-776(ra) # 80003074 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006384:	00003517          	auipc	a0,0x3
    80006388:	23c50513          	addi	a0,a0,572 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000638c:	00000097          	auipc	ra,0x0
    80006390:	a0c080e7          	jalr	-1524(ra) # 80005d98 <_Z11printStringPKc>
    while (getCnt()) {
    80006394:	00048513          	mv	a0,s1
    80006398:	00000097          	auipc	ra,0x0
    8000639c:	f40080e7          	jalr	-192(ra) # 800062d8 <_ZN9BufferCPP6getCntEv>
    800063a0:	02050c63          	beqz	a0,800063d8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800063a4:	0084b783          	ld	a5,8(s1)
    800063a8:	0104a703          	lw	a4,16(s1)
    800063ac:	00271713          	slli	a4,a4,0x2
    800063b0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800063b4:	0007c503          	lbu	a0,0(a5)
    800063b8:	ffffd097          	auipc	ra,0xffffd
    800063bc:	cbc080e7          	jalr	-836(ra) # 80003074 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800063c0:	0104a783          	lw	a5,16(s1)
    800063c4:	0017879b          	addiw	a5,a5,1
    800063c8:	0004a703          	lw	a4,0(s1)
    800063cc:	02e7e7bb          	remw	a5,a5,a4
    800063d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800063d4:	fc1ff06f          	j	80006394 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800063d8:	02100513          	li	a0,33
    800063dc:	ffffd097          	auipc	ra,0xffffd
    800063e0:	c98080e7          	jalr	-872(ra) # 80003074 <_ZN7Console4putcEc>
    Console::putc('\n');
    800063e4:	00a00513          	li	a0,10
    800063e8:	ffffd097          	auipc	ra,0xffffd
    800063ec:	c8c080e7          	jalr	-884(ra) # 80003074 <_ZN7Console4putcEc>
    mem_free(buffer);
    800063f0:	0084b503          	ld	a0,8(s1)
    800063f4:	ffffb097          	auipc	ra,0xffffb
    800063f8:	18c080e7          	jalr	396(ra) # 80001580 <mem_free>
    delete itemAvailable;
    800063fc:	0204b503          	ld	a0,32(s1)
    80006400:	00050863          	beqz	a0,80006410 <_ZN9BufferCPPD1Ev+0xb0>
    80006404:	00053783          	ld	a5,0(a0)
    80006408:	0087b783          	ld	a5,8(a5)
    8000640c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006410:	0184b503          	ld	a0,24(s1)
    80006414:	00050863          	beqz	a0,80006424 <_ZN9BufferCPPD1Ev+0xc4>
    80006418:	00053783          	ld	a5,0(a0)
    8000641c:	0087b783          	ld	a5,8(a5)
    80006420:	000780e7          	jalr	a5
    delete mutexTail;
    80006424:	0304b503          	ld	a0,48(s1)
    80006428:	00050863          	beqz	a0,80006438 <_ZN9BufferCPPD1Ev+0xd8>
    8000642c:	00053783          	ld	a5,0(a0)
    80006430:	0087b783          	ld	a5,8(a5)
    80006434:	000780e7          	jalr	a5
    delete mutexHead;
    80006438:	0284b503          	ld	a0,40(s1)
    8000643c:	00050863          	beqz	a0,8000644c <_ZN9BufferCPPD1Ev+0xec>
    80006440:	00053783          	ld	a5,0(a0)
    80006444:	0087b783          	ld	a5,8(a5)
    80006448:	000780e7          	jalr	a5
}
    8000644c:	01813083          	ld	ra,24(sp)
    80006450:	01013403          	ld	s0,16(sp)
    80006454:	00813483          	ld	s1,8(sp)
    80006458:	02010113          	addi	sp,sp,32
    8000645c:	00008067          	ret

0000000080006460 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006460:	fe010113          	addi	sp,sp,-32
    80006464:	00113c23          	sd	ra,24(sp)
    80006468:	00813823          	sd	s0,16(sp)
    8000646c:	00913423          	sd	s1,8(sp)
    80006470:	01213023          	sd	s2,0(sp)
    80006474:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006478:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000647c:	00600493          	li	s1,6
    while (--i > 0) {
    80006480:	fff4849b          	addiw	s1,s1,-1
    80006484:	04905463          	blez	s1,800064cc <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	15050513          	addi	a0,a0,336 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006490:	00000097          	auipc	ra,0x0
    80006494:	908080e7          	jalr	-1784(ra) # 80005d98 <_Z11printStringPKc>
        printInt(sleep_time);
    80006498:	00000613          	li	a2,0
    8000649c:	00a00593          	li	a1,10
    800064a0:	0009051b          	sext.w	a0,s2
    800064a4:	00000097          	auipc	ra,0x0
    800064a8:	aa4080e7          	jalr	-1372(ra) # 80005f48 <_Z8printIntiii>
        printString(" !\n");
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	13450513          	addi	a0,a0,308 # 800095e0 <CONSOLE_STATUS+0x5d0>
    800064b4:	00000097          	auipc	ra,0x0
    800064b8:	8e4080e7          	jalr	-1820(ra) # 80005d98 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800064bc:	00090513          	mv	a0,s2
    800064c0:	ffffb097          	auipc	ra,0xffffb
    800064c4:	1b0080e7          	jalr	432(ra) # 80001670 <time_sleep>
    while (--i > 0) {
    800064c8:	fb9ff06f          	j	80006480 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800064cc:	00a00793          	li	a5,10
    800064d0:	02f95933          	divu	s2,s2,a5
    800064d4:	fff90913          	addi	s2,s2,-1
    800064d8:	00005797          	auipc	a5,0x5
    800064dc:	73078793          	addi	a5,a5,1840 # 8000bc08 <_ZL8finished>
    800064e0:	01278933          	add	s2,a5,s2
    800064e4:	00100793          	li	a5,1
    800064e8:	00f90023          	sb	a5,0(s2)
}
    800064ec:	01813083          	ld	ra,24(sp)
    800064f0:	01013403          	ld	s0,16(sp)
    800064f4:	00813483          	ld	s1,8(sp)
    800064f8:	00013903          	ld	s2,0(sp)
    800064fc:	02010113          	addi	sp,sp,32
    80006500:	00008067          	ret

0000000080006504 <_Z12testSleepingv>:

void testSleeping() {
    80006504:	fc010113          	addi	sp,sp,-64
    80006508:	02113c23          	sd	ra,56(sp)
    8000650c:	02813823          	sd	s0,48(sp)
    80006510:	02913423          	sd	s1,40(sp)
    80006514:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006518:	00a00793          	li	a5,10
    8000651c:	fcf43823          	sd	a5,-48(s0)
    80006520:	01400793          	li	a5,20
    80006524:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006528:	00000493          	li	s1,0
    8000652c:	02c0006f          	j	80006558 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006530:	00349793          	slli	a5,s1,0x3
    80006534:	fd040613          	addi	a2,s0,-48
    80006538:	00f60633          	add	a2,a2,a5
    8000653c:	00000597          	auipc	a1,0x0
    80006540:	f2458593          	addi	a1,a1,-220 # 80006460 <_ZL9sleepyRunPv>
    80006544:	fc040513          	addi	a0,s0,-64
    80006548:	00f50533          	add	a0,a0,a5
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	060080e7          	jalr	96(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006554:	0014849b          	addiw	s1,s1,1
    80006558:	00100793          	li	a5,1
    8000655c:	fc97dae3          	bge	a5,s1,80006530 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006560:	00005797          	auipc	a5,0x5
    80006564:	6a87c783          	lbu	a5,1704(a5) # 8000bc08 <_ZL8finished>
    80006568:	fe078ce3          	beqz	a5,80006560 <_Z12testSleepingv+0x5c>
    8000656c:	00005797          	auipc	a5,0x5
    80006570:	69d7c783          	lbu	a5,1693(a5) # 8000bc09 <_ZL8finished+0x1>
    80006574:	fe0786e3          	beqz	a5,80006560 <_Z12testSleepingv+0x5c>
}
    80006578:	03813083          	ld	ra,56(sp)
    8000657c:	03013403          	ld	s0,48(sp)
    80006580:	02813483          	ld	s1,40(sp)
    80006584:	04010113          	addi	sp,sp,64
    80006588:	00008067          	ret

000000008000658c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000658c:	fe010113          	addi	sp,sp,-32
    80006590:	00113c23          	sd	ra,24(sp)
    80006594:	00813823          	sd	s0,16(sp)
    80006598:	00913423          	sd	s1,8(sp)
    8000659c:	01213023          	sd	s2,0(sp)
    800065a0:	02010413          	addi	s0,sp,32
    800065a4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800065a8:	00100793          	li	a5,1
    800065ac:	02a7f863          	bgeu	a5,a0,800065dc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800065b0:	00a00793          	li	a5,10
    800065b4:	02f577b3          	remu	a5,a0,a5
    800065b8:	02078e63          	beqz	a5,800065f4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800065bc:	fff48513          	addi	a0,s1,-1
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	fcc080e7          	jalr	-52(ra) # 8000658c <_ZL9fibonaccim>
    800065c8:	00050913          	mv	s2,a0
    800065cc:	ffe48513          	addi	a0,s1,-2
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	fbc080e7          	jalr	-68(ra) # 8000658c <_ZL9fibonaccim>
    800065d8:	00a90533          	add	a0,s2,a0
}
    800065dc:	01813083          	ld	ra,24(sp)
    800065e0:	01013403          	ld	s0,16(sp)
    800065e4:	00813483          	ld	s1,8(sp)
    800065e8:	00013903          	ld	s2,0(sp)
    800065ec:	02010113          	addi	sp,sp,32
    800065f0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	05c080e7          	jalr	92(ra) # 80001650 <thread_dispatch>
    800065fc:	fc1ff06f          	j	800065bc <_ZL9fibonaccim+0x30>

0000000080006600 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006600:	fe010113          	addi	sp,sp,-32
    80006604:	00113c23          	sd	ra,24(sp)
    80006608:	00813823          	sd	s0,16(sp)
    8000660c:	00913423          	sd	s1,8(sp)
    80006610:	01213023          	sd	s2,0(sp)
    80006614:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006618:	00a00493          	li	s1,10
    8000661c:	0400006f          	j	8000665c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006620:	00003517          	auipc	a0,0x3
    80006624:	c5850513          	addi	a0,a0,-936 # 80009278 <CONSOLE_STATUS+0x268>
    80006628:	fffff097          	auipc	ra,0xfffff
    8000662c:	770080e7          	jalr	1904(ra) # 80005d98 <_Z11printStringPKc>
    80006630:	00000613          	li	a2,0
    80006634:	00a00593          	li	a1,10
    80006638:	00048513          	mv	a0,s1
    8000663c:	00000097          	auipc	ra,0x0
    80006640:	90c080e7          	jalr	-1780(ra) # 80005f48 <_Z8printIntiii>
    80006644:	00003517          	auipc	a0,0x3
    80006648:	e4450513          	addi	a0,a0,-444 # 80009488 <CONSOLE_STATUS+0x478>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	74c080e7          	jalr	1868(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006654:	0014849b          	addiw	s1,s1,1
    80006658:	0ff4f493          	andi	s1,s1,255
    8000665c:	00c00793          	li	a5,12
    80006660:	fc97f0e3          	bgeu	a5,s1,80006620 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006664:	00003517          	auipc	a0,0x3
    80006668:	c1c50513          	addi	a0,a0,-996 # 80009280 <CONSOLE_STATUS+0x270>
    8000666c:	fffff097          	auipc	ra,0xfffff
    80006670:	72c080e7          	jalr	1836(ra) # 80005d98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006674:	00500313          	li	t1,5
    thread_dispatch();
    80006678:	ffffb097          	auipc	ra,0xffffb
    8000667c:	fd8080e7          	jalr	-40(ra) # 80001650 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006680:	01000513          	li	a0,16
    80006684:	00000097          	auipc	ra,0x0
    80006688:	f08080e7          	jalr	-248(ra) # 8000658c <_ZL9fibonaccim>
    8000668c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006690:	00003517          	auipc	a0,0x3
    80006694:	c0050513          	addi	a0,a0,-1024 # 80009290 <CONSOLE_STATUS+0x280>
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	700080e7          	jalr	1792(ra) # 80005d98 <_Z11printStringPKc>
    800066a0:	00000613          	li	a2,0
    800066a4:	00a00593          	li	a1,10
    800066a8:	0009051b          	sext.w	a0,s2
    800066ac:	00000097          	auipc	ra,0x0
    800066b0:	89c080e7          	jalr	-1892(ra) # 80005f48 <_Z8printIntiii>
    800066b4:	00003517          	auipc	a0,0x3
    800066b8:	dd450513          	addi	a0,a0,-556 # 80009488 <CONSOLE_STATUS+0x478>
    800066bc:	fffff097          	auipc	ra,0xfffff
    800066c0:	6dc080e7          	jalr	1756(ra) # 80005d98 <_Z11printStringPKc>
    800066c4:	0400006f          	j	80006704 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800066c8:	00003517          	auipc	a0,0x3
    800066cc:	bb050513          	addi	a0,a0,-1104 # 80009278 <CONSOLE_STATUS+0x268>
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	6c8080e7          	jalr	1736(ra) # 80005d98 <_Z11printStringPKc>
    800066d8:	00000613          	li	a2,0
    800066dc:	00a00593          	li	a1,10
    800066e0:	00048513          	mv	a0,s1
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	864080e7          	jalr	-1948(ra) # 80005f48 <_Z8printIntiii>
    800066ec:	00003517          	auipc	a0,0x3
    800066f0:	d9c50513          	addi	a0,a0,-612 # 80009488 <CONSOLE_STATUS+0x478>
    800066f4:	fffff097          	auipc	ra,0xfffff
    800066f8:	6a4080e7          	jalr	1700(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800066fc:	0014849b          	addiw	s1,s1,1
    80006700:	0ff4f493          	andi	s1,s1,255
    80006704:	00f00793          	li	a5,15
    80006708:	fc97f0e3          	bgeu	a5,s1,800066c8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000670c:	00003517          	auipc	a0,0x3
    80006710:	b9450513          	addi	a0,a0,-1132 # 800092a0 <CONSOLE_STATUS+0x290>
    80006714:	fffff097          	auipc	ra,0xfffff
    80006718:	684080e7          	jalr	1668(ra) # 80005d98 <_Z11printStringPKc>
    finishedD = true;
    8000671c:	00100793          	li	a5,1
    80006720:	00005717          	auipc	a4,0x5
    80006724:	4ef70523          	sb	a5,1258(a4) # 8000bc0a <_ZL9finishedD>
    thread_dispatch();
    80006728:	ffffb097          	auipc	ra,0xffffb
    8000672c:	f28080e7          	jalr	-216(ra) # 80001650 <thread_dispatch>
}
    80006730:	01813083          	ld	ra,24(sp)
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	00813483          	ld	s1,8(sp)
    8000673c:	00013903          	ld	s2,0(sp)
    80006740:	02010113          	addi	sp,sp,32
    80006744:	00008067          	ret

0000000080006748 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006748:	fe010113          	addi	sp,sp,-32
    8000674c:	00113c23          	sd	ra,24(sp)
    80006750:	00813823          	sd	s0,16(sp)
    80006754:	00913423          	sd	s1,8(sp)
    80006758:	01213023          	sd	s2,0(sp)
    8000675c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006760:	00000493          	li	s1,0
    80006764:	0400006f          	j	800067a4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	ae050513          	addi	a0,a0,-1312 # 80009248 <CONSOLE_STATUS+0x238>
    80006770:	fffff097          	auipc	ra,0xfffff
    80006774:	628080e7          	jalr	1576(ra) # 80005d98 <_Z11printStringPKc>
    80006778:	00000613          	li	a2,0
    8000677c:	00a00593          	li	a1,10
    80006780:	00048513          	mv	a0,s1
    80006784:	fffff097          	auipc	ra,0xfffff
    80006788:	7c4080e7          	jalr	1988(ra) # 80005f48 <_Z8printIntiii>
    8000678c:	00003517          	auipc	a0,0x3
    80006790:	cfc50513          	addi	a0,a0,-772 # 80009488 <CONSOLE_STATUS+0x478>
    80006794:	fffff097          	auipc	ra,0xfffff
    80006798:	604080e7          	jalr	1540(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000679c:	0014849b          	addiw	s1,s1,1
    800067a0:	0ff4f493          	andi	s1,s1,255
    800067a4:	00200793          	li	a5,2
    800067a8:	fc97f0e3          	bgeu	a5,s1,80006768 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800067ac:	00003517          	auipc	a0,0x3
    800067b0:	aa450513          	addi	a0,a0,-1372 # 80009250 <CONSOLE_STATUS+0x240>
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	5e4080e7          	jalr	1508(ra) # 80005d98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800067bc:	00700313          	li	t1,7
    thread_dispatch();
    800067c0:	ffffb097          	auipc	ra,0xffffb
    800067c4:	e90080e7          	jalr	-368(ra) # 80001650 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800067c8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800067cc:	00003517          	auipc	a0,0x3
    800067d0:	a9450513          	addi	a0,a0,-1388 # 80009260 <CONSOLE_STATUS+0x250>
    800067d4:	fffff097          	auipc	ra,0xfffff
    800067d8:	5c4080e7          	jalr	1476(ra) # 80005d98 <_Z11printStringPKc>
    800067dc:	00000613          	li	a2,0
    800067e0:	00a00593          	li	a1,10
    800067e4:	0009051b          	sext.w	a0,s2
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	760080e7          	jalr	1888(ra) # 80005f48 <_Z8printIntiii>
    800067f0:	00003517          	auipc	a0,0x3
    800067f4:	c9850513          	addi	a0,a0,-872 # 80009488 <CONSOLE_STATUS+0x478>
    800067f8:	fffff097          	auipc	ra,0xfffff
    800067fc:	5a0080e7          	jalr	1440(ra) # 80005d98 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006800:	00c00513          	li	a0,12
    80006804:	00000097          	auipc	ra,0x0
    80006808:	d88080e7          	jalr	-632(ra) # 8000658c <_ZL9fibonaccim>
    8000680c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006810:	00003517          	auipc	a0,0x3
    80006814:	a5850513          	addi	a0,a0,-1448 # 80009268 <CONSOLE_STATUS+0x258>
    80006818:	fffff097          	auipc	ra,0xfffff
    8000681c:	580080e7          	jalr	1408(ra) # 80005d98 <_Z11printStringPKc>
    80006820:	00000613          	li	a2,0
    80006824:	00a00593          	li	a1,10
    80006828:	0009051b          	sext.w	a0,s2
    8000682c:	fffff097          	auipc	ra,0xfffff
    80006830:	71c080e7          	jalr	1820(ra) # 80005f48 <_Z8printIntiii>
    80006834:	00003517          	auipc	a0,0x3
    80006838:	c5450513          	addi	a0,a0,-940 # 80009488 <CONSOLE_STATUS+0x478>
    8000683c:	fffff097          	auipc	ra,0xfffff
    80006840:	55c080e7          	jalr	1372(ra) # 80005d98 <_Z11printStringPKc>
    80006844:	0400006f          	j	80006884 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006848:	00003517          	auipc	a0,0x3
    8000684c:	a0050513          	addi	a0,a0,-1536 # 80009248 <CONSOLE_STATUS+0x238>
    80006850:	fffff097          	auipc	ra,0xfffff
    80006854:	548080e7          	jalr	1352(ra) # 80005d98 <_Z11printStringPKc>
    80006858:	00000613          	li	a2,0
    8000685c:	00a00593          	li	a1,10
    80006860:	00048513          	mv	a0,s1
    80006864:	fffff097          	auipc	ra,0xfffff
    80006868:	6e4080e7          	jalr	1764(ra) # 80005f48 <_Z8printIntiii>
    8000686c:	00003517          	auipc	a0,0x3
    80006870:	c1c50513          	addi	a0,a0,-996 # 80009488 <CONSOLE_STATUS+0x478>
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	524080e7          	jalr	1316(ra) # 80005d98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000687c:	0014849b          	addiw	s1,s1,1
    80006880:	0ff4f493          	andi	s1,s1,255
    80006884:	00500793          	li	a5,5
    80006888:	fc97f0e3          	bgeu	a5,s1,80006848 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000688c:	00003517          	auipc	a0,0x3
    80006890:	99450513          	addi	a0,a0,-1644 # 80009220 <CONSOLE_STATUS+0x210>
    80006894:	fffff097          	auipc	ra,0xfffff
    80006898:	504080e7          	jalr	1284(ra) # 80005d98 <_Z11printStringPKc>
    finishedC = true;
    8000689c:	00100793          	li	a5,1
    800068a0:	00005717          	auipc	a4,0x5
    800068a4:	36f705a3          	sb	a5,875(a4) # 8000bc0b <_ZL9finishedC>
    thread_dispatch();
    800068a8:	ffffb097          	auipc	ra,0xffffb
    800068ac:	da8080e7          	jalr	-600(ra) # 80001650 <thread_dispatch>
}
    800068b0:	01813083          	ld	ra,24(sp)
    800068b4:	01013403          	ld	s0,16(sp)
    800068b8:	00813483          	ld	s1,8(sp)
    800068bc:	00013903          	ld	s2,0(sp)
    800068c0:	02010113          	addi	sp,sp,32
    800068c4:	00008067          	ret

00000000800068c8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800068c8:	fe010113          	addi	sp,sp,-32
    800068cc:	00113c23          	sd	ra,24(sp)
    800068d0:	00813823          	sd	s0,16(sp)
    800068d4:	00913423          	sd	s1,8(sp)
    800068d8:	01213023          	sd	s2,0(sp)
    800068dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800068e0:	00000913          	li	s2,0
    800068e4:	0400006f          	j	80006924 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800068e8:	ffffb097          	auipc	ra,0xffffb
    800068ec:	d68080e7          	jalr	-664(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800068f0:	00148493          	addi	s1,s1,1
    800068f4:	000027b7          	lui	a5,0x2
    800068f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800068fc:	0097ee63          	bltu	a5,s1,80006918 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006900:	00000713          	li	a4,0
    80006904:	000077b7          	lui	a5,0x7
    80006908:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000690c:	fce7eee3          	bltu	a5,a4,800068e8 <_ZL11workerBodyBPv+0x20>
    80006910:	00170713          	addi	a4,a4,1
    80006914:	ff1ff06f          	j	80006904 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006918:	00a00793          	li	a5,10
    8000691c:	04f90663          	beq	s2,a5,80006968 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006920:	00190913          	addi	s2,s2,1
    80006924:	00f00793          	li	a5,15
    80006928:	0527e463          	bltu	a5,s2,80006970 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	90450513          	addi	a0,a0,-1788 # 80009230 <CONSOLE_STATUS+0x220>
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	464080e7          	jalr	1124(ra) # 80005d98 <_Z11printStringPKc>
    8000693c:	00000613          	li	a2,0
    80006940:	00a00593          	li	a1,10
    80006944:	0009051b          	sext.w	a0,s2
    80006948:	fffff097          	auipc	ra,0xfffff
    8000694c:	600080e7          	jalr	1536(ra) # 80005f48 <_Z8printIntiii>
    80006950:	00003517          	auipc	a0,0x3
    80006954:	b3850513          	addi	a0,a0,-1224 # 80009488 <CONSOLE_STATUS+0x478>
    80006958:	fffff097          	auipc	ra,0xfffff
    8000695c:	440080e7          	jalr	1088(ra) # 80005d98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006960:	00000493          	li	s1,0
    80006964:	f91ff06f          	j	800068f4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006968:	14102ff3          	csrr	t6,sepc
    8000696c:	fb5ff06f          	j	80006920 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006970:	00003517          	auipc	a0,0x3
    80006974:	8c850513          	addi	a0,a0,-1848 # 80009238 <CONSOLE_STATUS+0x228>
    80006978:	fffff097          	auipc	ra,0xfffff
    8000697c:	420080e7          	jalr	1056(ra) # 80005d98 <_Z11printStringPKc>
    finishedB = true;
    80006980:	00100793          	li	a5,1
    80006984:	00005717          	auipc	a4,0x5
    80006988:	28f70423          	sb	a5,648(a4) # 8000bc0c <_ZL9finishedB>
    thread_dispatch();
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	cc4080e7          	jalr	-828(ra) # 80001650 <thread_dispatch>
}
    80006994:	01813083          	ld	ra,24(sp)
    80006998:	01013403          	ld	s0,16(sp)
    8000699c:	00813483          	ld	s1,8(sp)
    800069a0:	00013903          	ld	s2,0(sp)
    800069a4:	02010113          	addi	sp,sp,32
    800069a8:	00008067          	ret

00000000800069ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800069ac:	fe010113          	addi	sp,sp,-32
    800069b0:	00113c23          	sd	ra,24(sp)
    800069b4:	00813823          	sd	s0,16(sp)
    800069b8:	00913423          	sd	s1,8(sp)
    800069bc:	01213023          	sd	s2,0(sp)
    800069c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800069c4:	00000913          	li	s2,0
    800069c8:	0380006f          	j	80006a00 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800069cc:	ffffb097          	auipc	ra,0xffffb
    800069d0:	c84080e7          	jalr	-892(ra) # 80001650 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800069d4:	00148493          	addi	s1,s1,1
    800069d8:	000027b7          	lui	a5,0x2
    800069dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800069e0:	0097ee63          	bltu	a5,s1,800069fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800069e4:	00000713          	li	a4,0
    800069e8:	000077b7          	lui	a5,0x7
    800069ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800069f0:	fce7eee3          	bltu	a5,a4,800069cc <_ZL11workerBodyAPv+0x20>
    800069f4:	00170713          	addi	a4,a4,1
    800069f8:	ff1ff06f          	j	800069e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800069fc:	00190913          	addi	s2,s2,1
    80006a00:	00900793          	li	a5,9
    80006a04:	0527e063          	bltu	a5,s2,80006a44 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a08:	00003517          	auipc	a0,0x3
    80006a0c:	81050513          	addi	a0,a0,-2032 # 80009218 <CONSOLE_STATUS+0x208>
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	388080e7          	jalr	904(ra) # 80005d98 <_Z11printStringPKc>
    80006a18:	00000613          	li	a2,0
    80006a1c:	00a00593          	li	a1,10
    80006a20:	0009051b          	sext.w	a0,s2
    80006a24:	fffff097          	auipc	ra,0xfffff
    80006a28:	524080e7          	jalr	1316(ra) # 80005f48 <_Z8printIntiii>
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	a5c50513          	addi	a0,a0,-1444 # 80009488 <CONSOLE_STATUS+0x478>
    80006a34:	fffff097          	auipc	ra,0xfffff
    80006a38:	364080e7          	jalr	868(ra) # 80005d98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a3c:	00000493          	li	s1,0
    80006a40:	f99ff06f          	j	800069d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006a44:	00002517          	auipc	a0,0x2
    80006a48:	7dc50513          	addi	a0,a0,2012 # 80009220 <CONSOLE_STATUS+0x210>
    80006a4c:	fffff097          	auipc	ra,0xfffff
    80006a50:	34c080e7          	jalr	844(ra) # 80005d98 <_Z11printStringPKc>
    finishedA = true;
    80006a54:	00100793          	li	a5,1
    80006a58:	00005717          	auipc	a4,0x5
    80006a5c:	1af70aa3          	sb	a5,437(a4) # 8000bc0d <_ZL9finishedA>
}
    80006a60:	01813083          	ld	ra,24(sp)
    80006a64:	01013403          	ld	s0,16(sp)
    80006a68:	00813483          	ld	s1,8(sp)
    80006a6c:	00013903          	ld	s2,0(sp)
    80006a70:	02010113          	addi	sp,sp,32
    80006a74:	00008067          	ret

0000000080006a78 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006a78:	fd010113          	addi	sp,sp,-48
    80006a7c:	02113423          	sd	ra,40(sp)
    80006a80:	02813023          	sd	s0,32(sp)
    80006a84:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006a88:	00000613          	li	a2,0
    80006a8c:	00000597          	auipc	a1,0x0
    80006a90:	f2058593          	addi	a1,a1,-224 # 800069ac <_ZL11workerBodyAPv>
    80006a94:	fd040513          	addi	a0,s0,-48
    80006a98:	ffffb097          	auipc	ra,0xffffb
    80006a9c:	b14080e7          	jalr	-1260(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80006aa0:	00003517          	auipc	a0,0x3
    80006aa4:	81050513          	addi	a0,a0,-2032 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006aa8:	fffff097          	auipc	ra,0xfffff
    80006aac:	2f0080e7          	jalr	752(ra) # 80005d98 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006ab0:	00000613          	li	a2,0
    80006ab4:	00000597          	auipc	a1,0x0
    80006ab8:	e1458593          	addi	a1,a1,-492 # 800068c8 <_ZL11workerBodyBPv>
    80006abc:	fd840513          	addi	a0,s0,-40
    80006ac0:	ffffb097          	auipc	ra,0xffffb
    80006ac4:	aec080e7          	jalr	-1300(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    80006ac8:	00003517          	auipc	a0,0x3
    80006acc:	80050513          	addi	a0,a0,-2048 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006ad0:	fffff097          	auipc	ra,0xfffff
    80006ad4:	2c8080e7          	jalr	712(ra) # 80005d98 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006ad8:	00000613          	li	a2,0
    80006adc:	00000597          	auipc	a1,0x0
    80006ae0:	c6c58593          	addi	a1,a1,-916 # 80006748 <_ZL11workerBodyCPv>
    80006ae4:	fe040513          	addi	a0,s0,-32
    80006ae8:	ffffb097          	auipc	ra,0xffffb
    80006aec:	ac4080e7          	jalr	-1340(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80006af0:	00002517          	auipc	a0,0x2
    80006af4:	7f050513          	addi	a0,a0,2032 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006af8:	fffff097          	auipc	ra,0xfffff
    80006afc:	2a0080e7          	jalr	672(ra) # 80005d98 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b00:	00000613          	li	a2,0
    80006b04:	00000597          	auipc	a1,0x0
    80006b08:	afc58593          	addi	a1,a1,-1284 # 80006600 <_ZL11workerBodyDPv>
    80006b0c:	fe840513          	addi	a0,s0,-24
    80006b10:	ffffb097          	auipc	ra,0xffffb
    80006b14:	a9c080e7          	jalr	-1380(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80006b18:	00002517          	auipc	a0,0x2
    80006b1c:	7e050513          	addi	a0,a0,2016 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006b20:	fffff097          	auipc	ra,0xfffff
    80006b24:	278080e7          	jalr	632(ra) # 80005d98 <_Z11printStringPKc>
    80006b28:	00c0006f          	j	80006b34 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b2c:	ffffb097          	auipc	ra,0xffffb
    80006b30:	b24080e7          	jalr	-1244(ra) # 80001650 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b34:	00005797          	auipc	a5,0x5
    80006b38:	0d97c783          	lbu	a5,217(a5) # 8000bc0d <_ZL9finishedA>
    80006b3c:	fe0788e3          	beqz	a5,80006b2c <_Z16System_Mode_testv+0xb4>
    80006b40:	00005797          	auipc	a5,0x5
    80006b44:	0cc7c783          	lbu	a5,204(a5) # 8000bc0c <_ZL9finishedB>
    80006b48:	fe0782e3          	beqz	a5,80006b2c <_Z16System_Mode_testv+0xb4>
    80006b4c:	00005797          	auipc	a5,0x5
    80006b50:	0bf7c783          	lbu	a5,191(a5) # 8000bc0b <_ZL9finishedC>
    80006b54:	fc078ce3          	beqz	a5,80006b2c <_Z16System_Mode_testv+0xb4>
    80006b58:	00005797          	auipc	a5,0x5
    80006b5c:	0b27c783          	lbu	a5,178(a5) # 8000bc0a <_ZL9finishedD>
    80006b60:	fc0786e3          	beqz	a5,80006b2c <_Z16System_Mode_testv+0xb4>
    }

}
    80006b64:	02813083          	ld	ra,40(sp)
    80006b68:	02013403          	ld	s0,32(sp)
    80006b6c:	03010113          	addi	sp,sp,48
    80006b70:	00008067          	ret

0000000080006b74 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006b74:	fe010113          	addi	sp,sp,-32
    80006b78:	00113c23          	sd	ra,24(sp)
    80006b7c:	00813823          	sd	s0,16(sp)
    80006b80:	00913423          	sd	s1,8(sp)
    80006b84:	01213023          	sd	s2,0(sp)
    80006b88:	02010413          	addi	s0,sp,32
    80006b8c:	00050493          	mv	s1,a0
    80006b90:	00058913          	mv	s2,a1
    80006b94:	0015879b          	addiw	a5,a1,1
    80006b98:	0007851b          	sext.w	a0,a5
    80006b9c:	00f4a023          	sw	a5,0(s1)
    80006ba0:	0004a823          	sw	zero,16(s1)
    80006ba4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006ba8:	00251513          	slli	a0,a0,0x2
    80006bac:	ffffb097          	auipc	ra,0xffffb
    80006bb0:	9a8080e7          	jalr	-1624(ra) # 80001554 <mem_alloc>
    80006bb4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006bb8:	00000593          	li	a1,0
    80006bbc:	02048513          	addi	a0,s1,32
    80006bc0:	ffffb097          	auipc	ra,0xffffb
    80006bc4:	ad8080e7          	jalr	-1320(ra) # 80001698 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006bc8:	00090593          	mv	a1,s2
    80006bcc:	01848513          	addi	a0,s1,24
    80006bd0:	ffffb097          	auipc	ra,0xffffb
    80006bd4:	ac8080e7          	jalr	-1336(ra) # 80001698 <sem_open>
    sem_open(&mutexHead, 1);
    80006bd8:	00100593          	li	a1,1
    80006bdc:	02848513          	addi	a0,s1,40
    80006be0:	ffffb097          	auipc	ra,0xffffb
    80006be4:	ab8080e7          	jalr	-1352(ra) # 80001698 <sem_open>
    sem_open(&mutexTail, 1);
    80006be8:	00100593          	li	a1,1
    80006bec:	03048513          	addi	a0,s1,48
    80006bf0:	ffffb097          	auipc	ra,0xffffb
    80006bf4:	aa8080e7          	jalr	-1368(ra) # 80001698 <sem_open>
}
    80006bf8:	01813083          	ld	ra,24(sp)
    80006bfc:	01013403          	ld	s0,16(sp)
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	00013903          	ld	s2,0(sp)
    80006c08:	02010113          	addi	sp,sp,32
    80006c0c:	00008067          	ret

0000000080006c10 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006c10:	fe010113          	addi	sp,sp,-32
    80006c14:	00113c23          	sd	ra,24(sp)
    80006c18:	00813823          	sd	s0,16(sp)
    80006c1c:	00913423          	sd	s1,8(sp)
    80006c20:	01213023          	sd	s2,0(sp)
    80006c24:	02010413          	addi	s0,sp,32
    80006c28:	00050493          	mv	s1,a0
    80006c2c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006c30:	01853503          	ld	a0,24(a0)
    80006c34:	ffffb097          	auipc	ra,0xffffb
    80006c38:	ac4080e7          	jalr	-1340(ra) # 800016f8 <sem_wait>

    sem_wait(mutexTail);
    80006c3c:	0304b503          	ld	a0,48(s1)
    80006c40:	ffffb097          	auipc	ra,0xffffb
    80006c44:	ab8080e7          	jalr	-1352(ra) # 800016f8 <sem_wait>
    buffer[tail] = val;
    80006c48:	0084b783          	ld	a5,8(s1)
    80006c4c:	0144a703          	lw	a4,20(s1)
    80006c50:	00271713          	slli	a4,a4,0x2
    80006c54:	00e787b3          	add	a5,a5,a4
    80006c58:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006c5c:	0144a783          	lw	a5,20(s1)
    80006c60:	0017879b          	addiw	a5,a5,1
    80006c64:	0004a703          	lw	a4,0(s1)
    80006c68:	02e7e7bb          	remw	a5,a5,a4
    80006c6c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006c70:	0304b503          	ld	a0,48(s1)
    80006c74:	ffffb097          	auipc	ra,0xffffb
    80006c78:	aac080e7          	jalr	-1364(ra) # 80001720 <sem_signal>

    sem_signal(itemAvailable);
    80006c7c:	0204b503          	ld	a0,32(s1)
    80006c80:	ffffb097          	auipc	ra,0xffffb
    80006c84:	aa0080e7          	jalr	-1376(ra) # 80001720 <sem_signal>

}
    80006c88:	01813083          	ld	ra,24(sp)
    80006c8c:	01013403          	ld	s0,16(sp)
    80006c90:	00813483          	ld	s1,8(sp)
    80006c94:	00013903          	ld	s2,0(sp)
    80006c98:	02010113          	addi	sp,sp,32
    80006c9c:	00008067          	ret

0000000080006ca0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006ca0:	fe010113          	addi	sp,sp,-32
    80006ca4:	00113c23          	sd	ra,24(sp)
    80006ca8:	00813823          	sd	s0,16(sp)
    80006cac:	00913423          	sd	s1,8(sp)
    80006cb0:	01213023          	sd	s2,0(sp)
    80006cb4:	02010413          	addi	s0,sp,32
    80006cb8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006cbc:	02053503          	ld	a0,32(a0)
    80006cc0:	ffffb097          	auipc	ra,0xffffb
    80006cc4:	a38080e7          	jalr	-1480(ra) # 800016f8 <sem_wait>

    sem_wait(mutexHead);
    80006cc8:	0284b503          	ld	a0,40(s1)
    80006ccc:	ffffb097          	auipc	ra,0xffffb
    80006cd0:	a2c080e7          	jalr	-1492(ra) # 800016f8 <sem_wait>

    int ret = buffer[head];
    80006cd4:	0084b703          	ld	a4,8(s1)
    80006cd8:	0104a783          	lw	a5,16(s1)
    80006cdc:	00279693          	slli	a3,a5,0x2
    80006ce0:	00d70733          	add	a4,a4,a3
    80006ce4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006ce8:	0017879b          	addiw	a5,a5,1
    80006cec:	0004a703          	lw	a4,0(s1)
    80006cf0:	02e7e7bb          	remw	a5,a5,a4
    80006cf4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006cf8:	0284b503          	ld	a0,40(s1)
    80006cfc:	ffffb097          	auipc	ra,0xffffb
    80006d00:	a24080e7          	jalr	-1500(ra) # 80001720 <sem_signal>

    sem_signal(spaceAvailable);
    80006d04:	0184b503          	ld	a0,24(s1)
    80006d08:	ffffb097          	auipc	ra,0xffffb
    80006d0c:	a18080e7          	jalr	-1512(ra) # 80001720 <sem_signal>

    return ret;
}
    80006d10:	00090513          	mv	a0,s2
    80006d14:	01813083          	ld	ra,24(sp)
    80006d18:	01013403          	ld	s0,16(sp)
    80006d1c:	00813483          	ld	s1,8(sp)
    80006d20:	00013903          	ld	s2,0(sp)
    80006d24:	02010113          	addi	sp,sp,32
    80006d28:	00008067          	ret

0000000080006d2c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006d2c:	fe010113          	addi	sp,sp,-32
    80006d30:	00113c23          	sd	ra,24(sp)
    80006d34:	00813823          	sd	s0,16(sp)
    80006d38:	00913423          	sd	s1,8(sp)
    80006d3c:	01213023          	sd	s2,0(sp)
    80006d40:	02010413          	addi	s0,sp,32
    80006d44:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006d48:	02853503          	ld	a0,40(a0)
    80006d4c:	ffffb097          	auipc	ra,0xffffb
    80006d50:	9ac080e7          	jalr	-1620(ra) # 800016f8 <sem_wait>
    sem_wait(mutexTail);
    80006d54:	0304b503          	ld	a0,48(s1)
    80006d58:	ffffb097          	auipc	ra,0xffffb
    80006d5c:	9a0080e7          	jalr	-1632(ra) # 800016f8 <sem_wait>

    if (tail >= head) {
    80006d60:	0144a783          	lw	a5,20(s1)
    80006d64:	0104a903          	lw	s2,16(s1)
    80006d68:	0327ce63          	blt	a5,s2,80006da4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006d6c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006d70:	0304b503          	ld	a0,48(s1)
    80006d74:	ffffb097          	auipc	ra,0xffffb
    80006d78:	9ac080e7          	jalr	-1620(ra) # 80001720 <sem_signal>
    sem_signal(mutexHead);
    80006d7c:	0284b503          	ld	a0,40(s1)
    80006d80:	ffffb097          	auipc	ra,0xffffb
    80006d84:	9a0080e7          	jalr	-1632(ra) # 80001720 <sem_signal>

    return ret;
}
    80006d88:	00090513          	mv	a0,s2
    80006d8c:	01813083          	ld	ra,24(sp)
    80006d90:	01013403          	ld	s0,16(sp)
    80006d94:	00813483          	ld	s1,8(sp)
    80006d98:	00013903          	ld	s2,0(sp)
    80006d9c:	02010113          	addi	sp,sp,32
    80006da0:	00008067          	ret
        ret = cap - head + tail;
    80006da4:	0004a703          	lw	a4,0(s1)
    80006da8:	4127093b          	subw	s2,a4,s2
    80006dac:	00f9093b          	addw	s2,s2,a5
    80006db0:	fc1ff06f          	j	80006d70 <_ZN6Buffer6getCntEv+0x44>

0000000080006db4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006db4:	fe010113          	addi	sp,sp,-32
    80006db8:	00113c23          	sd	ra,24(sp)
    80006dbc:	00813823          	sd	s0,16(sp)
    80006dc0:	00913423          	sd	s1,8(sp)
    80006dc4:	02010413          	addi	s0,sp,32
    80006dc8:	00050493          	mv	s1,a0
    putc('\n');
    80006dcc:	00a00513          	li	a0,10
    80006dd0:	ffffb097          	auipc	ra,0xffffb
    80006dd4:	9d4080e7          	jalr	-1580(ra) # 800017a4 <putc>
    printString("Buffer deleted!\n");
    80006dd8:	00002517          	auipc	a0,0x2
    80006ddc:	7e850513          	addi	a0,a0,2024 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006de0:	fffff097          	auipc	ra,0xfffff
    80006de4:	fb8080e7          	jalr	-72(ra) # 80005d98 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006de8:	00048513          	mv	a0,s1
    80006dec:	00000097          	auipc	ra,0x0
    80006df0:	f40080e7          	jalr	-192(ra) # 80006d2c <_ZN6Buffer6getCntEv>
    80006df4:	02a05c63          	blez	a0,80006e2c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006df8:	0084b783          	ld	a5,8(s1)
    80006dfc:	0104a703          	lw	a4,16(s1)
    80006e00:	00271713          	slli	a4,a4,0x2
    80006e04:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006e08:	0007c503          	lbu	a0,0(a5)
    80006e0c:	ffffb097          	auipc	ra,0xffffb
    80006e10:	998080e7          	jalr	-1640(ra) # 800017a4 <putc>
        head = (head + 1) % cap;
    80006e14:	0104a783          	lw	a5,16(s1)
    80006e18:	0017879b          	addiw	a5,a5,1
    80006e1c:	0004a703          	lw	a4,0(s1)
    80006e20:	02e7e7bb          	remw	a5,a5,a4
    80006e24:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006e28:	fc1ff06f          	j	80006de8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006e2c:	02100513          	li	a0,33
    80006e30:	ffffb097          	auipc	ra,0xffffb
    80006e34:	974080e7          	jalr	-1676(ra) # 800017a4 <putc>
    putc('\n');
    80006e38:	00a00513          	li	a0,10
    80006e3c:	ffffb097          	auipc	ra,0xffffb
    80006e40:	968080e7          	jalr	-1688(ra) # 800017a4 <putc>
    mem_free(buffer);
    80006e44:	0084b503          	ld	a0,8(s1)
    80006e48:	ffffa097          	auipc	ra,0xffffa
    80006e4c:	738080e7          	jalr	1848(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    80006e50:	0204b503          	ld	a0,32(s1)
    80006e54:	ffffb097          	auipc	ra,0xffffb
    80006e58:	87c080e7          	jalr	-1924(ra) # 800016d0 <sem_close>
    sem_close(spaceAvailable);
    80006e5c:	0184b503          	ld	a0,24(s1)
    80006e60:	ffffb097          	auipc	ra,0xffffb
    80006e64:	870080e7          	jalr	-1936(ra) # 800016d0 <sem_close>
    sem_close(mutexTail);
    80006e68:	0304b503          	ld	a0,48(s1)
    80006e6c:	ffffb097          	auipc	ra,0xffffb
    80006e70:	864080e7          	jalr	-1948(ra) # 800016d0 <sem_close>
    sem_close(mutexHead);
    80006e74:	0284b503          	ld	a0,40(s1)
    80006e78:	ffffb097          	auipc	ra,0xffffb
    80006e7c:	858080e7          	jalr	-1960(ra) # 800016d0 <sem_close>
}
    80006e80:	01813083          	ld	ra,24(sp)
    80006e84:	01013403          	ld	s0,16(sp)
    80006e88:	00813483          	ld	s1,8(sp)
    80006e8c:	02010113          	addi	sp,sp,32
    80006e90:	00008067          	ret

0000000080006e94 <start>:
    80006e94:	ff010113          	addi	sp,sp,-16
    80006e98:	00813423          	sd	s0,8(sp)
    80006e9c:	01010413          	addi	s0,sp,16
    80006ea0:	300027f3          	csrr	a5,mstatus
    80006ea4:	ffffe737          	lui	a4,0xffffe
    80006ea8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff198f>
    80006eac:	00e7f7b3          	and	a5,a5,a4
    80006eb0:	00001737          	lui	a4,0x1
    80006eb4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006eb8:	00e7e7b3          	or	a5,a5,a4
    80006ebc:	30079073          	csrw	mstatus,a5
    80006ec0:	00000797          	auipc	a5,0x0
    80006ec4:	16078793          	addi	a5,a5,352 # 80007020 <system_main>
    80006ec8:	34179073          	csrw	mepc,a5
    80006ecc:	00000793          	li	a5,0
    80006ed0:	18079073          	csrw	satp,a5
    80006ed4:	000107b7          	lui	a5,0x10
    80006ed8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006edc:	30279073          	csrw	medeleg,a5
    80006ee0:	30379073          	csrw	mideleg,a5
    80006ee4:	104027f3          	csrr	a5,sie
    80006ee8:	2227e793          	ori	a5,a5,546
    80006eec:	10479073          	csrw	sie,a5
    80006ef0:	fff00793          	li	a5,-1
    80006ef4:	00a7d793          	srli	a5,a5,0xa
    80006ef8:	3b079073          	csrw	pmpaddr0,a5
    80006efc:	00f00793          	li	a5,15
    80006f00:	3a079073          	csrw	pmpcfg0,a5
    80006f04:	f14027f3          	csrr	a5,mhartid
    80006f08:	0200c737          	lui	a4,0x200c
    80006f0c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006f10:	0007869b          	sext.w	a3,a5
    80006f14:	00269713          	slli	a4,a3,0x2
    80006f18:	000f4637          	lui	a2,0xf4
    80006f1c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006f20:	00d70733          	add	a4,a4,a3
    80006f24:	0037979b          	slliw	a5,a5,0x3
    80006f28:	020046b7          	lui	a3,0x2004
    80006f2c:	00d787b3          	add	a5,a5,a3
    80006f30:	00c585b3          	add	a1,a1,a2
    80006f34:	00371693          	slli	a3,a4,0x3
    80006f38:	00005717          	auipc	a4,0x5
    80006f3c:	cd870713          	addi	a4,a4,-808 # 8000bc10 <timer_scratch>
    80006f40:	00b7b023          	sd	a1,0(a5)
    80006f44:	00d70733          	add	a4,a4,a3
    80006f48:	00f73c23          	sd	a5,24(a4)
    80006f4c:	02c73023          	sd	a2,32(a4)
    80006f50:	34071073          	csrw	mscratch,a4
    80006f54:	00000797          	auipc	a5,0x0
    80006f58:	6ec78793          	addi	a5,a5,1772 # 80007640 <timervec>
    80006f5c:	30579073          	csrw	mtvec,a5
    80006f60:	300027f3          	csrr	a5,mstatus
    80006f64:	0087e793          	ori	a5,a5,8
    80006f68:	30079073          	csrw	mstatus,a5
    80006f6c:	304027f3          	csrr	a5,mie
    80006f70:	0807e793          	ori	a5,a5,128
    80006f74:	30479073          	csrw	mie,a5
    80006f78:	f14027f3          	csrr	a5,mhartid
    80006f7c:	0007879b          	sext.w	a5,a5
    80006f80:	00078213          	mv	tp,a5
    80006f84:	30200073          	mret
    80006f88:	00813403          	ld	s0,8(sp)
    80006f8c:	01010113          	addi	sp,sp,16
    80006f90:	00008067          	ret

0000000080006f94 <timerinit>:
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00813423          	sd	s0,8(sp)
    80006f9c:	01010413          	addi	s0,sp,16
    80006fa0:	f14027f3          	csrr	a5,mhartid
    80006fa4:	0200c737          	lui	a4,0x200c
    80006fa8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006fac:	0007869b          	sext.w	a3,a5
    80006fb0:	00269713          	slli	a4,a3,0x2
    80006fb4:	000f4637          	lui	a2,0xf4
    80006fb8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006fbc:	00d70733          	add	a4,a4,a3
    80006fc0:	0037979b          	slliw	a5,a5,0x3
    80006fc4:	020046b7          	lui	a3,0x2004
    80006fc8:	00d787b3          	add	a5,a5,a3
    80006fcc:	00c585b3          	add	a1,a1,a2
    80006fd0:	00371693          	slli	a3,a4,0x3
    80006fd4:	00005717          	auipc	a4,0x5
    80006fd8:	c3c70713          	addi	a4,a4,-964 # 8000bc10 <timer_scratch>
    80006fdc:	00b7b023          	sd	a1,0(a5)
    80006fe0:	00d70733          	add	a4,a4,a3
    80006fe4:	00f73c23          	sd	a5,24(a4)
    80006fe8:	02c73023          	sd	a2,32(a4)
    80006fec:	34071073          	csrw	mscratch,a4
    80006ff0:	00000797          	auipc	a5,0x0
    80006ff4:	65078793          	addi	a5,a5,1616 # 80007640 <timervec>
    80006ff8:	30579073          	csrw	mtvec,a5
    80006ffc:	300027f3          	csrr	a5,mstatus
    80007000:	0087e793          	ori	a5,a5,8
    80007004:	30079073          	csrw	mstatus,a5
    80007008:	304027f3          	csrr	a5,mie
    8000700c:	0807e793          	ori	a5,a5,128
    80007010:	30479073          	csrw	mie,a5
    80007014:	00813403          	ld	s0,8(sp)
    80007018:	01010113          	addi	sp,sp,16
    8000701c:	00008067          	ret

0000000080007020 <system_main>:
    80007020:	fe010113          	addi	sp,sp,-32
    80007024:	00813823          	sd	s0,16(sp)
    80007028:	00913423          	sd	s1,8(sp)
    8000702c:	00113c23          	sd	ra,24(sp)
    80007030:	02010413          	addi	s0,sp,32
    80007034:	00000097          	auipc	ra,0x0
    80007038:	0c4080e7          	jalr	196(ra) # 800070f8 <cpuid>
    8000703c:	00005497          	auipc	s1,0x5
    80007040:	8e448493          	addi	s1,s1,-1820 # 8000b920 <started>
    80007044:	02050263          	beqz	a0,80007068 <system_main+0x48>
    80007048:	0004a783          	lw	a5,0(s1)
    8000704c:	0007879b          	sext.w	a5,a5
    80007050:	fe078ce3          	beqz	a5,80007048 <system_main+0x28>
    80007054:	0ff0000f          	fence
    80007058:	00002517          	auipc	a0,0x2
    8000705c:	5c050513          	addi	a0,a0,1472 # 80009618 <CONSOLE_STATUS+0x608>
    80007060:	00001097          	auipc	ra,0x1
    80007064:	a7c080e7          	jalr	-1412(ra) # 80007adc <panic>
    80007068:	00001097          	auipc	ra,0x1
    8000706c:	9d0080e7          	jalr	-1584(ra) # 80007a38 <consoleinit>
    80007070:	00001097          	auipc	ra,0x1
    80007074:	15c080e7          	jalr	348(ra) # 800081cc <printfinit>
    80007078:	00002517          	auipc	a0,0x2
    8000707c:	41050513          	addi	a0,a0,1040 # 80009488 <CONSOLE_STATUS+0x478>
    80007080:	00001097          	auipc	ra,0x1
    80007084:	ab8080e7          	jalr	-1352(ra) # 80007b38 <__printf>
    80007088:	00002517          	auipc	a0,0x2
    8000708c:	56050513          	addi	a0,a0,1376 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80007090:	00001097          	auipc	ra,0x1
    80007094:	aa8080e7          	jalr	-1368(ra) # 80007b38 <__printf>
    80007098:	00002517          	auipc	a0,0x2
    8000709c:	3f050513          	addi	a0,a0,1008 # 80009488 <CONSOLE_STATUS+0x478>
    800070a0:	00001097          	auipc	ra,0x1
    800070a4:	a98080e7          	jalr	-1384(ra) # 80007b38 <__printf>
    800070a8:	00001097          	auipc	ra,0x1
    800070ac:	4b0080e7          	jalr	1200(ra) # 80008558 <kinit>
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	148080e7          	jalr	328(ra) # 800071f8 <trapinit>
    800070b8:	00000097          	auipc	ra,0x0
    800070bc:	16c080e7          	jalr	364(ra) # 80007224 <trapinithart>
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	5c0080e7          	jalr	1472(ra) # 80007680 <plicinit>
    800070c8:	00000097          	auipc	ra,0x0
    800070cc:	5e0080e7          	jalr	1504(ra) # 800076a8 <plicinithart>
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	078080e7          	jalr	120(ra) # 80007148 <userinit>
    800070d8:	0ff0000f          	fence
    800070dc:	00100793          	li	a5,1
    800070e0:	00002517          	auipc	a0,0x2
    800070e4:	52050513          	addi	a0,a0,1312 # 80009600 <CONSOLE_STATUS+0x5f0>
    800070e8:	00f4a023          	sw	a5,0(s1)
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	a4c080e7          	jalr	-1460(ra) # 80007b38 <__printf>
    800070f4:	0000006f          	j	800070f4 <system_main+0xd4>

00000000800070f8 <cpuid>:
    800070f8:	ff010113          	addi	sp,sp,-16
    800070fc:	00813423          	sd	s0,8(sp)
    80007100:	01010413          	addi	s0,sp,16
    80007104:	00020513          	mv	a0,tp
    80007108:	00813403          	ld	s0,8(sp)
    8000710c:	0005051b          	sext.w	a0,a0
    80007110:	01010113          	addi	sp,sp,16
    80007114:	00008067          	ret

0000000080007118 <mycpu>:
    80007118:	ff010113          	addi	sp,sp,-16
    8000711c:	00813423          	sd	s0,8(sp)
    80007120:	01010413          	addi	s0,sp,16
    80007124:	00020793          	mv	a5,tp
    80007128:	00813403          	ld	s0,8(sp)
    8000712c:	0007879b          	sext.w	a5,a5
    80007130:	00779793          	slli	a5,a5,0x7
    80007134:	00006517          	auipc	a0,0x6
    80007138:	b0c50513          	addi	a0,a0,-1268 # 8000cc40 <cpus>
    8000713c:	00f50533          	add	a0,a0,a5
    80007140:	01010113          	addi	sp,sp,16
    80007144:	00008067          	ret

0000000080007148 <userinit>:
    80007148:	ff010113          	addi	sp,sp,-16
    8000714c:	00813423          	sd	s0,8(sp)
    80007150:	01010413          	addi	s0,sp,16
    80007154:	00813403          	ld	s0,8(sp)
    80007158:	01010113          	addi	sp,sp,16
    8000715c:	ffffa317          	auipc	t1,0xffffa
    80007160:	71830067          	jr	1816(t1) # 80001874 <main>

0000000080007164 <either_copyout>:
    80007164:	ff010113          	addi	sp,sp,-16
    80007168:	00813023          	sd	s0,0(sp)
    8000716c:	00113423          	sd	ra,8(sp)
    80007170:	01010413          	addi	s0,sp,16
    80007174:	02051663          	bnez	a0,800071a0 <either_copyout+0x3c>
    80007178:	00058513          	mv	a0,a1
    8000717c:	00060593          	mv	a1,a2
    80007180:	0006861b          	sext.w	a2,a3
    80007184:	00002097          	auipc	ra,0x2
    80007188:	c60080e7          	jalr	-928(ra) # 80008de4 <__memmove>
    8000718c:	00813083          	ld	ra,8(sp)
    80007190:	00013403          	ld	s0,0(sp)
    80007194:	00000513          	li	a0,0
    80007198:	01010113          	addi	sp,sp,16
    8000719c:	00008067          	ret
    800071a0:	00002517          	auipc	a0,0x2
    800071a4:	4a050513          	addi	a0,a0,1184 # 80009640 <CONSOLE_STATUS+0x630>
    800071a8:	00001097          	auipc	ra,0x1
    800071ac:	934080e7          	jalr	-1740(ra) # 80007adc <panic>

00000000800071b0 <either_copyin>:
    800071b0:	ff010113          	addi	sp,sp,-16
    800071b4:	00813023          	sd	s0,0(sp)
    800071b8:	00113423          	sd	ra,8(sp)
    800071bc:	01010413          	addi	s0,sp,16
    800071c0:	02059463          	bnez	a1,800071e8 <either_copyin+0x38>
    800071c4:	00060593          	mv	a1,a2
    800071c8:	0006861b          	sext.w	a2,a3
    800071cc:	00002097          	auipc	ra,0x2
    800071d0:	c18080e7          	jalr	-1000(ra) # 80008de4 <__memmove>
    800071d4:	00813083          	ld	ra,8(sp)
    800071d8:	00013403          	ld	s0,0(sp)
    800071dc:	00000513          	li	a0,0
    800071e0:	01010113          	addi	sp,sp,16
    800071e4:	00008067          	ret
    800071e8:	00002517          	auipc	a0,0x2
    800071ec:	48050513          	addi	a0,a0,1152 # 80009668 <CONSOLE_STATUS+0x658>
    800071f0:	00001097          	auipc	ra,0x1
    800071f4:	8ec080e7          	jalr	-1812(ra) # 80007adc <panic>

00000000800071f8 <trapinit>:
    800071f8:	ff010113          	addi	sp,sp,-16
    800071fc:	00813423          	sd	s0,8(sp)
    80007200:	01010413          	addi	s0,sp,16
    80007204:	00813403          	ld	s0,8(sp)
    80007208:	00002597          	auipc	a1,0x2
    8000720c:	48858593          	addi	a1,a1,1160 # 80009690 <CONSOLE_STATUS+0x680>
    80007210:	00006517          	auipc	a0,0x6
    80007214:	ab050513          	addi	a0,a0,-1360 # 8000ccc0 <tickslock>
    80007218:	01010113          	addi	sp,sp,16
    8000721c:	00001317          	auipc	t1,0x1
    80007220:	5cc30067          	jr	1484(t1) # 800087e8 <initlock>

0000000080007224 <trapinithart>:
    80007224:	ff010113          	addi	sp,sp,-16
    80007228:	00813423          	sd	s0,8(sp)
    8000722c:	01010413          	addi	s0,sp,16
    80007230:	00000797          	auipc	a5,0x0
    80007234:	30078793          	addi	a5,a5,768 # 80007530 <kernelvec>
    80007238:	10579073          	csrw	stvec,a5
    8000723c:	00813403          	ld	s0,8(sp)
    80007240:	01010113          	addi	sp,sp,16
    80007244:	00008067          	ret

0000000080007248 <usertrap>:
    80007248:	ff010113          	addi	sp,sp,-16
    8000724c:	00813423          	sd	s0,8(sp)
    80007250:	01010413          	addi	s0,sp,16
    80007254:	00813403          	ld	s0,8(sp)
    80007258:	01010113          	addi	sp,sp,16
    8000725c:	00008067          	ret

0000000080007260 <usertrapret>:
    80007260:	ff010113          	addi	sp,sp,-16
    80007264:	00813423          	sd	s0,8(sp)
    80007268:	01010413          	addi	s0,sp,16
    8000726c:	00813403          	ld	s0,8(sp)
    80007270:	01010113          	addi	sp,sp,16
    80007274:	00008067          	ret

0000000080007278 <kerneltrap>:
    80007278:	fe010113          	addi	sp,sp,-32
    8000727c:	00813823          	sd	s0,16(sp)
    80007280:	00113c23          	sd	ra,24(sp)
    80007284:	00913423          	sd	s1,8(sp)
    80007288:	02010413          	addi	s0,sp,32
    8000728c:	142025f3          	csrr	a1,scause
    80007290:	100027f3          	csrr	a5,sstatus
    80007294:	0027f793          	andi	a5,a5,2
    80007298:	10079c63          	bnez	a5,800073b0 <kerneltrap+0x138>
    8000729c:	142027f3          	csrr	a5,scause
    800072a0:	0207ce63          	bltz	a5,800072dc <kerneltrap+0x64>
    800072a4:	00002517          	auipc	a0,0x2
    800072a8:	43450513          	addi	a0,a0,1076 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800072ac:	00001097          	auipc	ra,0x1
    800072b0:	88c080e7          	jalr	-1908(ra) # 80007b38 <__printf>
    800072b4:	141025f3          	csrr	a1,sepc
    800072b8:	14302673          	csrr	a2,stval
    800072bc:	00002517          	auipc	a0,0x2
    800072c0:	42c50513          	addi	a0,a0,1068 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800072c4:	00001097          	auipc	ra,0x1
    800072c8:	874080e7          	jalr	-1932(ra) # 80007b38 <__printf>
    800072cc:	00002517          	auipc	a0,0x2
    800072d0:	43450513          	addi	a0,a0,1076 # 80009700 <CONSOLE_STATUS+0x6f0>
    800072d4:	00001097          	auipc	ra,0x1
    800072d8:	808080e7          	jalr	-2040(ra) # 80007adc <panic>
    800072dc:	0ff7f713          	andi	a4,a5,255
    800072e0:	00900693          	li	a3,9
    800072e4:	04d70063          	beq	a4,a3,80007324 <kerneltrap+0xac>
    800072e8:	fff00713          	li	a4,-1
    800072ec:	03f71713          	slli	a4,a4,0x3f
    800072f0:	00170713          	addi	a4,a4,1
    800072f4:	fae798e3          	bne	a5,a4,800072a4 <kerneltrap+0x2c>
    800072f8:	00000097          	auipc	ra,0x0
    800072fc:	e00080e7          	jalr	-512(ra) # 800070f8 <cpuid>
    80007300:	06050663          	beqz	a0,8000736c <kerneltrap+0xf4>
    80007304:	144027f3          	csrr	a5,sip
    80007308:	ffd7f793          	andi	a5,a5,-3
    8000730c:	14479073          	csrw	sip,a5
    80007310:	01813083          	ld	ra,24(sp)
    80007314:	01013403          	ld	s0,16(sp)
    80007318:	00813483          	ld	s1,8(sp)
    8000731c:	02010113          	addi	sp,sp,32
    80007320:	00008067          	ret
    80007324:	00000097          	auipc	ra,0x0
    80007328:	3d0080e7          	jalr	976(ra) # 800076f4 <plic_claim>
    8000732c:	00a00793          	li	a5,10
    80007330:	00050493          	mv	s1,a0
    80007334:	06f50863          	beq	a0,a5,800073a4 <kerneltrap+0x12c>
    80007338:	fc050ce3          	beqz	a0,80007310 <kerneltrap+0x98>
    8000733c:	00050593          	mv	a1,a0
    80007340:	00002517          	auipc	a0,0x2
    80007344:	37850513          	addi	a0,a0,888 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80007348:	00000097          	auipc	ra,0x0
    8000734c:	7f0080e7          	jalr	2032(ra) # 80007b38 <__printf>
    80007350:	01013403          	ld	s0,16(sp)
    80007354:	01813083          	ld	ra,24(sp)
    80007358:	00048513          	mv	a0,s1
    8000735c:	00813483          	ld	s1,8(sp)
    80007360:	02010113          	addi	sp,sp,32
    80007364:	00000317          	auipc	t1,0x0
    80007368:	3c830067          	jr	968(t1) # 8000772c <plic_complete>
    8000736c:	00006517          	auipc	a0,0x6
    80007370:	95450513          	addi	a0,a0,-1708 # 8000ccc0 <tickslock>
    80007374:	00001097          	auipc	ra,0x1
    80007378:	498080e7          	jalr	1176(ra) # 8000880c <acquire>
    8000737c:	00004717          	auipc	a4,0x4
    80007380:	5a870713          	addi	a4,a4,1448 # 8000b924 <ticks>
    80007384:	00072783          	lw	a5,0(a4)
    80007388:	00006517          	auipc	a0,0x6
    8000738c:	93850513          	addi	a0,a0,-1736 # 8000ccc0 <tickslock>
    80007390:	0017879b          	addiw	a5,a5,1
    80007394:	00f72023          	sw	a5,0(a4)
    80007398:	00001097          	auipc	ra,0x1
    8000739c:	540080e7          	jalr	1344(ra) # 800088d8 <release>
    800073a0:	f65ff06f          	j	80007304 <kerneltrap+0x8c>
    800073a4:	00001097          	auipc	ra,0x1
    800073a8:	09c080e7          	jalr	156(ra) # 80008440 <uartintr>
    800073ac:	fa5ff06f          	j	80007350 <kerneltrap+0xd8>
    800073b0:	00002517          	auipc	a0,0x2
    800073b4:	2e850513          	addi	a0,a0,744 # 80009698 <CONSOLE_STATUS+0x688>
    800073b8:	00000097          	auipc	ra,0x0
    800073bc:	724080e7          	jalr	1828(ra) # 80007adc <panic>

00000000800073c0 <clockintr>:
    800073c0:	fe010113          	addi	sp,sp,-32
    800073c4:	00813823          	sd	s0,16(sp)
    800073c8:	00913423          	sd	s1,8(sp)
    800073cc:	00113c23          	sd	ra,24(sp)
    800073d0:	02010413          	addi	s0,sp,32
    800073d4:	00006497          	auipc	s1,0x6
    800073d8:	8ec48493          	addi	s1,s1,-1812 # 8000ccc0 <tickslock>
    800073dc:	00048513          	mv	a0,s1
    800073e0:	00001097          	auipc	ra,0x1
    800073e4:	42c080e7          	jalr	1068(ra) # 8000880c <acquire>
    800073e8:	00004717          	auipc	a4,0x4
    800073ec:	53c70713          	addi	a4,a4,1340 # 8000b924 <ticks>
    800073f0:	00072783          	lw	a5,0(a4)
    800073f4:	01013403          	ld	s0,16(sp)
    800073f8:	01813083          	ld	ra,24(sp)
    800073fc:	00048513          	mv	a0,s1
    80007400:	0017879b          	addiw	a5,a5,1
    80007404:	00813483          	ld	s1,8(sp)
    80007408:	00f72023          	sw	a5,0(a4)
    8000740c:	02010113          	addi	sp,sp,32
    80007410:	00001317          	auipc	t1,0x1
    80007414:	4c830067          	jr	1224(t1) # 800088d8 <release>

0000000080007418 <devintr>:
    80007418:	142027f3          	csrr	a5,scause
    8000741c:	00000513          	li	a0,0
    80007420:	0007c463          	bltz	a5,80007428 <devintr+0x10>
    80007424:	00008067          	ret
    80007428:	fe010113          	addi	sp,sp,-32
    8000742c:	00813823          	sd	s0,16(sp)
    80007430:	00113c23          	sd	ra,24(sp)
    80007434:	00913423          	sd	s1,8(sp)
    80007438:	02010413          	addi	s0,sp,32
    8000743c:	0ff7f713          	andi	a4,a5,255
    80007440:	00900693          	li	a3,9
    80007444:	04d70c63          	beq	a4,a3,8000749c <devintr+0x84>
    80007448:	fff00713          	li	a4,-1
    8000744c:	03f71713          	slli	a4,a4,0x3f
    80007450:	00170713          	addi	a4,a4,1
    80007454:	00e78c63          	beq	a5,a4,8000746c <devintr+0x54>
    80007458:	01813083          	ld	ra,24(sp)
    8000745c:	01013403          	ld	s0,16(sp)
    80007460:	00813483          	ld	s1,8(sp)
    80007464:	02010113          	addi	sp,sp,32
    80007468:	00008067          	ret
    8000746c:	00000097          	auipc	ra,0x0
    80007470:	c8c080e7          	jalr	-884(ra) # 800070f8 <cpuid>
    80007474:	06050663          	beqz	a0,800074e0 <devintr+0xc8>
    80007478:	144027f3          	csrr	a5,sip
    8000747c:	ffd7f793          	andi	a5,a5,-3
    80007480:	14479073          	csrw	sip,a5
    80007484:	01813083          	ld	ra,24(sp)
    80007488:	01013403          	ld	s0,16(sp)
    8000748c:	00813483          	ld	s1,8(sp)
    80007490:	00200513          	li	a0,2
    80007494:	02010113          	addi	sp,sp,32
    80007498:	00008067          	ret
    8000749c:	00000097          	auipc	ra,0x0
    800074a0:	258080e7          	jalr	600(ra) # 800076f4 <plic_claim>
    800074a4:	00a00793          	li	a5,10
    800074a8:	00050493          	mv	s1,a0
    800074ac:	06f50663          	beq	a0,a5,80007518 <devintr+0x100>
    800074b0:	00100513          	li	a0,1
    800074b4:	fa0482e3          	beqz	s1,80007458 <devintr+0x40>
    800074b8:	00048593          	mv	a1,s1
    800074bc:	00002517          	auipc	a0,0x2
    800074c0:	1fc50513          	addi	a0,a0,508 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800074c4:	00000097          	auipc	ra,0x0
    800074c8:	674080e7          	jalr	1652(ra) # 80007b38 <__printf>
    800074cc:	00048513          	mv	a0,s1
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	25c080e7          	jalr	604(ra) # 8000772c <plic_complete>
    800074d8:	00100513          	li	a0,1
    800074dc:	f7dff06f          	j	80007458 <devintr+0x40>
    800074e0:	00005517          	auipc	a0,0x5
    800074e4:	7e050513          	addi	a0,a0,2016 # 8000ccc0 <tickslock>
    800074e8:	00001097          	auipc	ra,0x1
    800074ec:	324080e7          	jalr	804(ra) # 8000880c <acquire>
    800074f0:	00004717          	auipc	a4,0x4
    800074f4:	43470713          	addi	a4,a4,1076 # 8000b924 <ticks>
    800074f8:	00072783          	lw	a5,0(a4)
    800074fc:	00005517          	auipc	a0,0x5
    80007500:	7c450513          	addi	a0,a0,1988 # 8000ccc0 <tickslock>
    80007504:	0017879b          	addiw	a5,a5,1
    80007508:	00f72023          	sw	a5,0(a4)
    8000750c:	00001097          	auipc	ra,0x1
    80007510:	3cc080e7          	jalr	972(ra) # 800088d8 <release>
    80007514:	f65ff06f          	j	80007478 <devintr+0x60>
    80007518:	00001097          	auipc	ra,0x1
    8000751c:	f28080e7          	jalr	-216(ra) # 80008440 <uartintr>
    80007520:	fadff06f          	j	800074cc <devintr+0xb4>
	...

0000000080007530 <kernelvec>:
    80007530:	f0010113          	addi	sp,sp,-256
    80007534:	00113023          	sd	ra,0(sp)
    80007538:	00213423          	sd	sp,8(sp)
    8000753c:	00313823          	sd	gp,16(sp)
    80007540:	00413c23          	sd	tp,24(sp)
    80007544:	02513023          	sd	t0,32(sp)
    80007548:	02613423          	sd	t1,40(sp)
    8000754c:	02713823          	sd	t2,48(sp)
    80007550:	02813c23          	sd	s0,56(sp)
    80007554:	04913023          	sd	s1,64(sp)
    80007558:	04a13423          	sd	a0,72(sp)
    8000755c:	04b13823          	sd	a1,80(sp)
    80007560:	04c13c23          	sd	a2,88(sp)
    80007564:	06d13023          	sd	a3,96(sp)
    80007568:	06e13423          	sd	a4,104(sp)
    8000756c:	06f13823          	sd	a5,112(sp)
    80007570:	07013c23          	sd	a6,120(sp)
    80007574:	09113023          	sd	a7,128(sp)
    80007578:	09213423          	sd	s2,136(sp)
    8000757c:	09313823          	sd	s3,144(sp)
    80007580:	09413c23          	sd	s4,152(sp)
    80007584:	0b513023          	sd	s5,160(sp)
    80007588:	0b613423          	sd	s6,168(sp)
    8000758c:	0b713823          	sd	s7,176(sp)
    80007590:	0b813c23          	sd	s8,184(sp)
    80007594:	0d913023          	sd	s9,192(sp)
    80007598:	0da13423          	sd	s10,200(sp)
    8000759c:	0db13823          	sd	s11,208(sp)
    800075a0:	0dc13c23          	sd	t3,216(sp)
    800075a4:	0fd13023          	sd	t4,224(sp)
    800075a8:	0fe13423          	sd	t5,232(sp)
    800075ac:	0ff13823          	sd	t6,240(sp)
    800075b0:	cc9ff0ef          	jal	ra,80007278 <kerneltrap>
    800075b4:	00013083          	ld	ra,0(sp)
    800075b8:	00813103          	ld	sp,8(sp)
    800075bc:	01013183          	ld	gp,16(sp)
    800075c0:	02013283          	ld	t0,32(sp)
    800075c4:	02813303          	ld	t1,40(sp)
    800075c8:	03013383          	ld	t2,48(sp)
    800075cc:	03813403          	ld	s0,56(sp)
    800075d0:	04013483          	ld	s1,64(sp)
    800075d4:	04813503          	ld	a0,72(sp)
    800075d8:	05013583          	ld	a1,80(sp)
    800075dc:	05813603          	ld	a2,88(sp)
    800075e0:	06013683          	ld	a3,96(sp)
    800075e4:	06813703          	ld	a4,104(sp)
    800075e8:	07013783          	ld	a5,112(sp)
    800075ec:	07813803          	ld	a6,120(sp)
    800075f0:	08013883          	ld	a7,128(sp)
    800075f4:	08813903          	ld	s2,136(sp)
    800075f8:	09013983          	ld	s3,144(sp)
    800075fc:	09813a03          	ld	s4,152(sp)
    80007600:	0a013a83          	ld	s5,160(sp)
    80007604:	0a813b03          	ld	s6,168(sp)
    80007608:	0b013b83          	ld	s7,176(sp)
    8000760c:	0b813c03          	ld	s8,184(sp)
    80007610:	0c013c83          	ld	s9,192(sp)
    80007614:	0c813d03          	ld	s10,200(sp)
    80007618:	0d013d83          	ld	s11,208(sp)
    8000761c:	0d813e03          	ld	t3,216(sp)
    80007620:	0e013e83          	ld	t4,224(sp)
    80007624:	0e813f03          	ld	t5,232(sp)
    80007628:	0f013f83          	ld	t6,240(sp)
    8000762c:	10010113          	addi	sp,sp,256
    80007630:	10200073          	sret
    80007634:	00000013          	nop
    80007638:	00000013          	nop
    8000763c:	00000013          	nop

0000000080007640 <timervec>:
    80007640:	34051573          	csrrw	a0,mscratch,a0
    80007644:	00b53023          	sd	a1,0(a0)
    80007648:	00c53423          	sd	a2,8(a0)
    8000764c:	00d53823          	sd	a3,16(a0)
    80007650:	01853583          	ld	a1,24(a0)
    80007654:	02053603          	ld	a2,32(a0)
    80007658:	0005b683          	ld	a3,0(a1)
    8000765c:	00c686b3          	add	a3,a3,a2
    80007660:	00d5b023          	sd	a3,0(a1)
    80007664:	00200593          	li	a1,2
    80007668:	14459073          	csrw	sip,a1
    8000766c:	01053683          	ld	a3,16(a0)
    80007670:	00853603          	ld	a2,8(a0)
    80007674:	00053583          	ld	a1,0(a0)
    80007678:	34051573          	csrrw	a0,mscratch,a0
    8000767c:	30200073          	mret

0000000080007680 <plicinit>:
    80007680:	ff010113          	addi	sp,sp,-16
    80007684:	00813423          	sd	s0,8(sp)
    80007688:	01010413          	addi	s0,sp,16
    8000768c:	00813403          	ld	s0,8(sp)
    80007690:	0c0007b7          	lui	a5,0xc000
    80007694:	00100713          	li	a4,1
    80007698:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000769c:	00e7a223          	sw	a4,4(a5)
    800076a0:	01010113          	addi	sp,sp,16
    800076a4:	00008067          	ret

00000000800076a8 <plicinithart>:
    800076a8:	ff010113          	addi	sp,sp,-16
    800076ac:	00813023          	sd	s0,0(sp)
    800076b0:	00113423          	sd	ra,8(sp)
    800076b4:	01010413          	addi	s0,sp,16
    800076b8:	00000097          	auipc	ra,0x0
    800076bc:	a40080e7          	jalr	-1472(ra) # 800070f8 <cpuid>
    800076c0:	0085171b          	slliw	a4,a0,0x8
    800076c4:	0c0027b7          	lui	a5,0xc002
    800076c8:	00e787b3          	add	a5,a5,a4
    800076cc:	40200713          	li	a4,1026
    800076d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800076d4:	00813083          	ld	ra,8(sp)
    800076d8:	00013403          	ld	s0,0(sp)
    800076dc:	00d5151b          	slliw	a0,a0,0xd
    800076e0:	0c2017b7          	lui	a5,0xc201
    800076e4:	00a78533          	add	a0,a5,a0
    800076e8:	00052023          	sw	zero,0(a0)
    800076ec:	01010113          	addi	sp,sp,16
    800076f0:	00008067          	ret

00000000800076f4 <plic_claim>:
    800076f4:	ff010113          	addi	sp,sp,-16
    800076f8:	00813023          	sd	s0,0(sp)
    800076fc:	00113423          	sd	ra,8(sp)
    80007700:	01010413          	addi	s0,sp,16
    80007704:	00000097          	auipc	ra,0x0
    80007708:	9f4080e7          	jalr	-1548(ra) # 800070f8 <cpuid>
    8000770c:	00813083          	ld	ra,8(sp)
    80007710:	00013403          	ld	s0,0(sp)
    80007714:	00d5151b          	slliw	a0,a0,0xd
    80007718:	0c2017b7          	lui	a5,0xc201
    8000771c:	00a78533          	add	a0,a5,a0
    80007720:	00452503          	lw	a0,4(a0)
    80007724:	01010113          	addi	sp,sp,16
    80007728:	00008067          	ret

000000008000772c <plic_complete>:
    8000772c:	fe010113          	addi	sp,sp,-32
    80007730:	00813823          	sd	s0,16(sp)
    80007734:	00913423          	sd	s1,8(sp)
    80007738:	00113c23          	sd	ra,24(sp)
    8000773c:	02010413          	addi	s0,sp,32
    80007740:	00050493          	mv	s1,a0
    80007744:	00000097          	auipc	ra,0x0
    80007748:	9b4080e7          	jalr	-1612(ra) # 800070f8 <cpuid>
    8000774c:	01813083          	ld	ra,24(sp)
    80007750:	01013403          	ld	s0,16(sp)
    80007754:	00d5179b          	slliw	a5,a0,0xd
    80007758:	0c201737          	lui	a4,0xc201
    8000775c:	00f707b3          	add	a5,a4,a5
    80007760:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007764:	00813483          	ld	s1,8(sp)
    80007768:	02010113          	addi	sp,sp,32
    8000776c:	00008067          	ret

0000000080007770 <consolewrite>:
    80007770:	fb010113          	addi	sp,sp,-80
    80007774:	04813023          	sd	s0,64(sp)
    80007778:	04113423          	sd	ra,72(sp)
    8000777c:	02913c23          	sd	s1,56(sp)
    80007780:	03213823          	sd	s2,48(sp)
    80007784:	03313423          	sd	s3,40(sp)
    80007788:	03413023          	sd	s4,32(sp)
    8000778c:	01513c23          	sd	s5,24(sp)
    80007790:	05010413          	addi	s0,sp,80
    80007794:	06c05c63          	blez	a2,8000780c <consolewrite+0x9c>
    80007798:	00060993          	mv	s3,a2
    8000779c:	00050a13          	mv	s4,a0
    800077a0:	00058493          	mv	s1,a1
    800077a4:	00000913          	li	s2,0
    800077a8:	fff00a93          	li	s5,-1
    800077ac:	01c0006f          	j	800077c8 <consolewrite+0x58>
    800077b0:	fbf44503          	lbu	a0,-65(s0)
    800077b4:	0019091b          	addiw	s2,s2,1
    800077b8:	00148493          	addi	s1,s1,1
    800077bc:	00001097          	auipc	ra,0x1
    800077c0:	a9c080e7          	jalr	-1380(ra) # 80008258 <uartputc>
    800077c4:	03298063          	beq	s3,s2,800077e4 <consolewrite+0x74>
    800077c8:	00048613          	mv	a2,s1
    800077cc:	00100693          	li	a3,1
    800077d0:	000a0593          	mv	a1,s4
    800077d4:	fbf40513          	addi	a0,s0,-65
    800077d8:	00000097          	auipc	ra,0x0
    800077dc:	9d8080e7          	jalr	-1576(ra) # 800071b0 <either_copyin>
    800077e0:	fd5518e3          	bne	a0,s5,800077b0 <consolewrite+0x40>
    800077e4:	04813083          	ld	ra,72(sp)
    800077e8:	04013403          	ld	s0,64(sp)
    800077ec:	03813483          	ld	s1,56(sp)
    800077f0:	02813983          	ld	s3,40(sp)
    800077f4:	02013a03          	ld	s4,32(sp)
    800077f8:	01813a83          	ld	s5,24(sp)
    800077fc:	00090513          	mv	a0,s2
    80007800:	03013903          	ld	s2,48(sp)
    80007804:	05010113          	addi	sp,sp,80
    80007808:	00008067          	ret
    8000780c:	00000913          	li	s2,0
    80007810:	fd5ff06f          	j	800077e4 <consolewrite+0x74>

0000000080007814 <consoleread>:
    80007814:	f9010113          	addi	sp,sp,-112
    80007818:	06813023          	sd	s0,96(sp)
    8000781c:	04913c23          	sd	s1,88(sp)
    80007820:	05213823          	sd	s2,80(sp)
    80007824:	05313423          	sd	s3,72(sp)
    80007828:	05413023          	sd	s4,64(sp)
    8000782c:	03513c23          	sd	s5,56(sp)
    80007830:	03613823          	sd	s6,48(sp)
    80007834:	03713423          	sd	s7,40(sp)
    80007838:	03813023          	sd	s8,32(sp)
    8000783c:	06113423          	sd	ra,104(sp)
    80007840:	01913c23          	sd	s9,24(sp)
    80007844:	07010413          	addi	s0,sp,112
    80007848:	00060b93          	mv	s7,a2
    8000784c:	00050913          	mv	s2,a0
    80007850:	00058c13          	mv	s8,a1
    80007854:	00060b1b          	sext.w	s6,a2
    80007858:	00005497          	auipc	s1,0x5
    8000785c:	49048493          	addi	s1,s1,1168 # 8000cce8 <cons>
    80007860:	00400993          	li	s3,4
    80007864:	fff00a13          	li	s4,-1
    80007868:	00a00a93          	li	s5,10
    8000786c:	05705e63          	blez	s7,800078c8 <consoleread+0xb4>
    80007870:	09c4a703          	lw	a4,156(s1)
    80007874:	0984a783          	lw	a5,152(s1)
    80007878:	0007071b          	sext.w	a4,a4
    8000787c:	08e78463          	beq	a5,a4,80007904 <consoleread+0xf0>
    80007880:	07f7f713          	andi	a4,a5,127
    80007884:	00e48733          	add	a4,s1,a4
    80007888:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000788c:	0017869b          	addiw	a3,a5,1
    80007890:	08d4ac23          	sw	a3,152(s1)
    80007894:	00070c9b          	sext.w	s9,a4
    80007898:	0b370663          	beq	a4,s3,80007944 <consoleread+0x130>
    8000789c:	00100693          	li	a3,1
    800078a0:	f9f40613          	addi	a2,s0,-97
    800078a4:	000c0593          	mv	a1,s8
    800078a8:	00090513          	mv	a0,s2
    800078ac:	f8e40fa3          	sb	a4,-97(s0)
    800078b0:	00000097          	auipc	ra,0x0
    800078b4:	8b4080e7          	jalr	-1868(ra) # 80007164 <either_copyout>
    800078b8:	01450863          	beq	a0,s4,800078c8 <consoleread+0xb4>
    800078bc:	001c0c13          	addi	s8,s8,1
    800078c0:	fffb8b9b          	addiw	s7,s7,-1
    800078c4:	fb5c94e3          	bne	s9,s5,8000786c <consoleread+0x58>
    800078c8:	000b851b          	sext.w	a0,s7
    800078cc:	06813083          	ld	ra,104(sp)
    800078d0:	06013403          	ld	s0,96(sp)
    800078d4:	05813483          	ld	s1,88(sp)
    800078d8:	05013903          	ld	s2,80(sp)
    800078dc:	04813983          	ld	s3,72(sp)
    800078e0:	04013a03          	ld	s4,64(sp)
    800078e4:	03813a83          	ld	s5,56(sp)
    800078e8:	02813b83          	ld	s7,40(sp)
    800078ec:	02013c03          	ld	s8,32(sp)
    800078f0:	01813c83          	ld	s9,24(sp)
    800078f4:	40ab053b          	subw	a0,s6,a0
    800078f8:	03013b03          	ld	s6,48(sp)
    800078fc:	07010113          	addi	sp,sp,112
    80007900:	00008067          	ret
    80007904:	00001097          	auipc	ra,0x1
    80007908:	1d8080e7          	jalr	472(ra) # 80008adc <push_on>
    8000790c:	0984a703          	lw	a4,152(s1)
    80007910:	09c4a783          	lw	a5,156(s1)
    80007914:	0007879b          	sext.w	a5,a5
    80007918:	fef70ce3          	beq	a4,a5,80007910 <consoleread+0xfc>
    8000791c:	00001097          	auipc	ra,0x1
    80007920:	234080e7          	jalr	564(ra) # 80008b50 <pop_on>
    80007924:	0984a783          	lw	a5,152(s1)
    80007928:	07f7f713          	andi	a4,a5,127
    8000792c:	00e48733          	add	a4,s1,a4
    80007930:	01874703          	lbu	a4,24(a4)
    80007934:	0017869b          	addiw	a3,a5,1
    80007938:	08d4ac23          	sw	a3,152(s1)
    8000793c:	00070c9b          	sext.w	s9,a4
    80007940:	f5371ee3          	bne	a4,s3,8000789c <consoleread+0x88>
    80007944:	000b851b          	sext.w	a0,s7
    80007948:	f96bf2e3          	bgeu	s7,s6,800078cc <consoleread+0xb8>
    8000794c:	08f4ac23          	sw	a5,152(s1)
    80007950:	f7dff06f          	j	800078cc <consoleread+0xb8>

0000000080007954 <consputc>:
    80007954:	10000793          	li	a5,256
    80007958:	00f50663          	beq	a0,a5,80007964 <consputc+0x10>
    8000795c:	00001317          	auipc	t1,0x1
    80007960:	9f430067          	jr	-1548(t1) # 80008350 <uartputc_sync>
    80007964:	ff010113          	addi	sp,sp,-16
    80007968:	00113423          	sd	ra,8(sp)
    8000796c:	00813023          	sd	s0,0(sp)
    80007970:	01010413          	addi	s0,sp,16
    80007974:	00800513          	li	a0,8
    80007978:	00001097          	auipc	ra,0x1
    8000797c:	9d8080e7          	jalr	-1576(ra) # 80008350 <uartputc_sync>
    80007980:	02000513          	li	a0,32
    80007984:	00001097          	auipc	ra,0x1
    80007988:	9cc080e7          	jalr	-1588(ra) # 80008350 <uartputc_sync>
    8000798c:	00013403          	ld	s0,0(sp)
    80007990:	00813083          	ld	ra,8(sp)
    80007994:	00800513          	li	a0,8
    80007998:	01010113          	addi	sp,sp,16
    8000799c:	00001317          	auipc	t1,0x1
    800079a0:	9b430067          	jr	-1612(t1) # 80008350 <uartputc_sync>

00000000800079a4 <consoleintr>:
    800079a4:	fe010113          	addi	sp,sp,-32
    800079a8:	00813823          	sd	s0,16(sp)
    800079ac:	00913423          	sd	s1,8(sp)
    800079b0:	01213023          	sd	s2,0(sp)
    800079b4:	00113c23          	sd	ra,24(sp)
    800079b8:	02010413          	addi	s0,sp,32
    800079bc:	00005917          	auipc	s2,0x5
    800079c0:	32c90913          	addi	s2,s2,812 # 8000cce8 <cons>
    800079c4:	00050493          	mv	s1,a0
    800079c8:	00090513          	mv	a0,s2
    800079cc:	00001097          	auipc	ra,0x1
    800079d0:	e40080e7          	jalr	-448(ra) # 8000880c <acquire>
    800079d4:	02048c63          	beqz	s1,80007a0c <consoleintr+0x68>
    800079d8:	0a092783          	lw	a5,160(s2)
    800079dc:	09892703          	lw	a4,152(s2)
    800079e0:	07f00693          	li	a3,127
    800079e4:	40e7873b          	subw	a4,a5,a4
    800079e8:	02e6e263          	bltu	a3,a4,80007a0c <consoleintr+0x68>
    800079ec:	00d00713          	li	a4,13
    800079f0:	04e48063          	beq	s1,a4,80007a30 <consoleintr+0x8c>
    800079f4:	07f7f713          	andi	a4,a5,127
    800079f8:	00e90733          	add	a4,s2,a4
    800079fc:	0017879b          	addiw	a5,a5,1
    80007a00:	0af92023          	sw	a5,160(s2)
    80007a04:	00970c23          	sb	s1,24(a4)
    80007a08:	08f92e23          	sw	a5,156(s2)
    80007a0c:	01013403          	ld	s0,16(sp)
    80007a10:	01813083          	ld	ra,24(sp)
    80007a14:	00813483          	ld	s1,8(sp)
    80007a18:	00013903          	ld	s2,0(sp)
    80007a1c:	00005517          	auipc	a0,0x5
    80007a20:	2cc50513          	addi	a0,a0,716 # 8000cce8 <cons>
    80007a24:	02010113          	addi	sp,sp,32
    80007a28:	00001317          	auipc	t1,0x1
    80007a2c:	eb030067          	jr	-336(t1) # 800088d8 <release>
    80007a30:	00a00493          	li	s1,10
    80007a34:	fc1ff06f          	j	800079f4 <consoleintr+0x50>

0000000080007a38 <consoleinit>:
    80007a38:	fe010113          	addi	sp,sp,-32
    80007a3c:	00113c23          	sd	ra,24(sp)
    80007a40:	00813823          	sd	s0,16(sp)
    80007a44:	00913423          	sd	s1,8(sp)
    80007a48:	02010413          	addi	s0,sp,32
    80007a4c:	00005497          	auipc	s1,0x5
    80007a50:	29c48493          	addi	s1,s1,668 # 8000cce8 <cons>
    80007a54:	00048513          	mv	a0,s1
    80007a58:	00002597          	auipc	a1,0x2
    80007a5c:	cb858593          	addi	a1,a1,-840 # 80009710 <CONSOLE_STATUS+0x700>
    80007a60:	00001097          	auipc	ra,0x1
    80007a64:	d88080e7          	jalr	-632(ra) # 800087e8 <initlock>
    80007a68:	00000097          	auipc	ra,0x0
    80007a6c:	7ac080e7          	jalr	1964(ra) # 80008214 <uartinit>
    80007a70:	01813083          	ld	ra,24(sp)
    80007a74:	01013403          	ld	s0,16(sp)
    80007a78:	00000797          	auipc	a5,0x0
    80007a7c:	d9c78793          	addi	a5,a5,-612 # 80007814 <consoleread>
    80007a80:	0af4bc23          	sd	a5,184(s1)
    80007a84:	00000797          	auipc	a5,0x0
    80007a88:	cec78793          	addi	a5,a5,-788 # 80007770 <consolewrite>
    80007a8c:	0cf4b023          	sd	a5,192(s1)
    80007a90:	00813483          	ld	s1,8(sp)
    80007a94:	02010113          	addi	sp,sp,32
    80007a98:	00008067          	ret

0000000080007a9c <console_read>:
    80007a9c:	ff010113          	addi	sp,sp,-16
    80007aa0:	00813423          	sd	s0,8(sp)
    80007aa4:	01010413          	addi	s0,sp,16
    80007aa8:	00813403          	ld	s0,8(sp)
    80007aac:	00005317          	auipc	t1,0x5
    80007ab0:	2f433303          	ld	t1,756(t1) # 8000cda0 <devsw+0x10>
    80007ab4:	01010113          	addi	sp,sp,16
    80007ab8:	00030067          	jr	t1

0000000080007abc <console_write>:
    80007abc:	ff010113          	addi	sp,sp,-16
    80007ac0:	00813423          	sd	s0,8(sp)
    80007ac4:	01010413          	addi	s0,sp,16
    80007ac8:	00813403          	ld	s0,8(sp)
    80007acc:	00005317          	auipc	t1,0x5
    80007ad0:	2dc33303          	ld	t1,732(t1) # 8000cda8 <devsw+0x18>
    80007ad4:	01010113          	addi	sp,sp,16
    80007ad8:	00030067          	jr	t1

0000000080007adc <panic>:
    80007adc:	fe010113          	addi	sp,sp,-32
    80007ae0:	00113c23          	sd	ra,24(sp)
    80007ae4:	00813823          	sd	s0,16(sp)
    80007ae8:	00913423          	sd	s1,8(sp)
    80007aec:	02010413          	addi	s0,sp,32
    80007af0:	00050493          	mv	s1,a0
    80007af4:	00002517          	auipc	a0,0x2
    80007af8:	c2450513          	addi	a0,a0,-988 # 80009718 <CONSOLE_STATUS+0x708>
    80007afc:	00005797          	auipc	a5,0x5
    80007b00:	3407a623          	sw	zero,844(a5) # 8000ce48 <pr+0x18>
    80007b04:	00000097          	auipc	ra,0x0
    80007b08:	034080e7          	jalr	52(ra) # 80007b38 <__printf>
    80007b0c:	00048513          	mv	a0,s1
    80007b10:	00000097          	auipc	ra,0x0
    80007b14:	028080e7          	jalr	40(ra) # 80007b38 <__printf>
    80007b18:	00002517          	auipc	a0,0x2
    80007b1c:	97050513          	addi	a0,a0,-1680 # 80009488 <CONSOLE_STATUS+0x478>
    80007b20:	00000097          	auipc	ra,0x0
    80007b24:	018080e7          	jalr	24(ra) # 80007b38 <__printf>
    80007b28:	00100793          	li	a5,1
    80007b2c:	00004717          	auipc	a4,0x4
    80007b30:	def72e23          	sw	a5,-516(a4) # 8000b928 <panicked>
    80007b34:	0000006f          	j	80007b34 <panic+0x58>

0000000080007b38 <__printf>:
    80007b38:	f3010113          	addi	sp,sp,-208
    80007b3c:	08813023          	sd	s0,128(sp)
    80007b40:	07313423          	sd	s3,104(sp)
    80007b44:	09010413          	addi	s0,sp,144
    80007b48:	05813023          	sd	s8,64(sp)
    80007b4c:	08113423          	sd	ra,136(sp)
    80007b50:	06913c23          	sd	s1,120(sp)
    80007b54:	07213823          	sd	s2,112(sp)
    80007b58:	07413023          	sd	s4,96(sp)
    80007b5c:	05513c23          	sd	s5,88(sp)
    80007b60:	05613823          	sd	s6,80(sp)
    80007b64:	05713423          	sd	s7,72(sp)
    80007b68:	03913c23          	sd	s9,56(sp)
    80007b6c:	03a13823          	sd	s10,48(sp)
    80007b70:	03b13423          	sd	s11,40(sp)
    80007b74:	00005317          	auipc	t1,0x5
    80007b78:	2bc30313          	addi	t1,t1,700 # 8000ce30 <pr>
    80007b7c:	01832c03          	lw	s8,24(t1)
    80007b80:	00b43423          	sd	a1,8(s0)
    80007b84:	00c43823          	sd	a2,16(s0)
    80007b88:	00d43c23          	sd	a3,24(s0)
    80007b8c:	02e43023          	sd	a4,32(s0)
    80007b90:	02f43423          	sd	a5,40(s0)
    80007b94:	03043823          	sd	a6,48(s0)
    80007b98:	03143c23          	sd	a7,56(s0)
    80007b9c:	00050993          	mv	s3,a0
    80007ba0:	4a0c1663          	bnez	s8,8000804c <__printf+0x514>
    80007ba4:	60098c63          	beqz	s3,800081bc <__printf+0x684>
    80007ba8:	0009c503          	lbu	a0,0(s3)
    80007bac:	00840793          	addi	a5,s0,8
    80007bb0:	f6f43c23          	sd	a5,-136(s0)
    80007bb4:	00000493          	li	s1,0
    80007bb8:	22050063          	beqz	a0,80007dd8 <__printf+0x2a0>
    80007bbc:	00002a37          	lui	s4,0x2
    80007bc0:	00018ab7          	lui	s5,0x18
    80007bc4:	000f4b37          	lui	s6,0xf4
    80007bc8:	00989bb7          	lui	s7,0x989
    80007bcc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007bd0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007bd4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007bd8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007bdc:	00148c9b          	addiw	s9,s1,1
    80007be0:	02500793          	li	a5,37
    80007be4:	01998933          	add	s2,s3,s9
    80007be8:	38f51263          	bne	a0,a5,80007f6c <__printf+0x434>
    80007bec:	00094783          	lbu	a5,0(s2)
    80007bf0:	00078c9b          	sext.w	s9,a5
    80007bf4:	1e078263          	beqz	a5,80007dd8 <__printf+0x2a0>
    80007bf8:	0024849b          	addiw	s1,s1,2
    80007bfc:	07000713          	li	a4,112
    80007c00:	00998933          	add	s2,s3,s1
    80007c04:	38e78a63          	beq	a5,a4,80007f98 <__printf+0x460>
    80007c08:	20f76863          	bltu	a4,a5,80007e18 <__printf+0x2e0>
    80007c0c:	42a78863          	beq	a5,a0,8000803c <__printf+0x504>
    80007c10:	06400713          	li	a4,100
    80007c14:	40e79663          	bne	a5,a4,80008020 <__printf+0x4e8>
    80007c18:	f7843783          	ld	a5,-136(s0)
    80007c1c:	0007a603          	lw	a2,0(a5)
    80007c20:	00878793          	addi	a5,a5,8
    80007c24:	f6f43c23          	sd	a5,-136(s0)
    80007c28:	42064a63          	bltz	a2,8000805c <__printf+0x524>
    80007c2c:	00a00713          	li	a4,10
    80007c30:	02e677bb          	remuw	a5,a2,a4
    80007c34:	00002d97          	auipc	s11,0x2
    80007c38:	b0cd8d93          	addi	s11,s11,-1268 # 80009740 <digits>
    80007c3c:	00900593          	li	a1,9
    80007c40:	0006051b          	sext.w	a0,a2
    80007c44:	00000c93          	li	s9,0
    80007c48:	02079793          	slli	a5,a5,0x20
    80007c4c:	0207d793          	srli	a5,a5,0x20
    80007c50:	00fd87b3          	add	a5,s11,a5
    80007c54:	0007c783          	lbu	a5,0(a5)
    80007c58:	02e656bb          	divuw	a3,a2,a4
    80007c5c:	f8f40023          	sb	a5,-128(s0)
    80007c60:	14c5d863          	bge	a1,a2,80007db0 <__printf+0x278>
    80007c64:	06300593          	li	a1,99
    80007c68:	00100c93          	li	s9,1
    80007c6c:	02e6f7bb          	remuw	a5,a3,a4
    80007c70:	02079793          	slli	a5,a5,0x20
    80007c74:	0207d793          	srli	a5,a5,0x20
    80007c78:	00fd87b3          	add	a5,s11,a5
    80007c7c:	0007c783          	lbu	a5,0(a5)
    80007c80:	02e6d73b          	divuw	a4,a3,a4
    80007c84:	f8f400a3          	sb	a5,-127(s0)
    80007c88:	12a5f463          	bgeu	a1,a0,80007db0 <__printf+0x278>
    80007c8c:	00a00693          	li	a3,10
    80007c90:	00900593          	li	a1,9
    80007c94:	02d777bb          	remuw	a5,a4,a3
    80007c98:	02079793          	slli	a5,a5,0x20
    80007c9c:	0207d793          	srli	a5,a5,0x20
    80007ca0:	00fd87b3          	add	a5,s11,a5
    80007ca4:	0007c503          	lbu	a0,0(a5)
    80007ca8:	02d757bb          	divuw	a5,a4,a3
    80007cac:	f8a40123          	sb	a0,-126(s0)
    80007cb0:	48e5f263          	bgeu	a1,a4,80008134 <__printf+0x5fc>
    80007cb4:	06300513          	li	a0,99
    80007cb8:	02d7f5bb          	remuw	a1,a5,a3
    80007cbc:	02059593          	slli	a1,a1,0x20
    80007cc0:	0205d593          	srli	a1,a1,0x20
    80007cc4:	00bd85b3          	add	a1,s11,a1
    80007cc8:	0005c583          	lbu	a1,0(a1)
    80007ccc:	02d7d7bb          	divuw	a5,a5,a3
    80007cd0:	f8b401a3          	sb	a1,-125(s0)
    80007cd4:	48e57263          	bgeu	a0,a4,80008158 <__printf+0x620>
    80007cd8:	3e700513          	li	a0,999
    80007cdc:	02d7f5bb          	remuw	a1,a5,a3
    80007ce0:	02059593          	slli	a1,a1,0x20
    80007ce4:	0205d593          	srli	a1,a1,0x20
    80007ce8:	00bd85b3          	add	a1,s11,a1
    80007cec:	0005c583          	lbu	a1,0(a1)
    80007cf0:	02d7d7bb          	divuw	a5,a5,a3
    80007cf4:	f8b40223          	sb	a1,-124(s0)
    80007cf8:	46e57663          	bgeu	a0,a4,80008164 <__printf+0x62c>
    80007cfc:	02d7f5bb          	remuw	a1,a5,a3
    80007d00:	02059593          	slli	a1,a1,0x20
    80007d04:	0205d593          	srli	a1,a1,0x20
    80007d08:	00bd85b3          	add	a1,s11,a1
    80007d0c:	0005c583          	lbu	a1,0(a1)
    80007d10:	02d7d7bb          	divuw	a5,a5,a3
    80007d14:	f8b402a3          	sb	a1,-123(s0)
    80007d18:	46ea7863          	bgeu	s4,a4,80008188 <__printf+0x650>
    80007d1c:	02d7f5bb          	remuw	a1,a5,a3
    80007d20:	02059593          	slli	a1,a1,0x20
    80007d24:	0205d593          	srli	a1,a1,0x20
    80007d28:	00bd85b3          	add	a1,s11,a1
    80007d2c:	0005c583          	lbu	a1,0(a1)
    80007d30:	02d7d7bb          	divuw	a5,a5,a3
    80007d34:	f8b40323          	sb	a1,-122(s0)
    80007d38:	3eeaf863          	bgeu	s5,a4,80008128 <__printf+0x5f0>
    80007d3c:	02d7f5bb          	remuw	a1,a5,a3
    80007d40:	02059593          	slli	a1,a1,0x20
    80007d44:	0205d593          	srli	a1,a1,0x20
    80007d48:	00bd85b3          	add	a1,s11,a1
    80007d4c:	0005c583          	lbu	a1,0(a1)
    80007d50:	02d7d7bb          	divuw	a5,a5,a3
    80007d54:	f8b403a3          	sb	a1,-121(s0)
    80007d58:	42eb7e63          	bgeu	s6,a4,80008194 <__printf+0x65c>
    80007d5c:	02d7f5bb          	remuw	a1,a5,a3
    80007d60:	02059593          	slli	a1,a1,0x20
    80007d64:	0205d593          	srli	a1,a1,0x20
    80007d68:	00bd85b3          	add	a1,s11,a1
    80007d6c:	0005c583          	lbu	a1,0(a1)
    80007d70:	02d7d7bb          	divuw	a5,a5,a3
    80007d74:	f8b40423          	sb	a1,-120(s0)
    80007d78:	42ebfc63          	bgeu	s7,a4,800081b0 <__printf+0x678>
    80007d7c:	02079793          	slli	a5,a5,0x20
    80007d80:	0207d793          	srli	a5,a5,0x20
    80007d84:	00fd8db3          	add	s11,s11,a5
    80007d88:	000dc703          	lbu	a4,0(s11)
    80007d8c:	00a00793          	li	a5,10
    80007d90:	00900c93          	li	s9,9
    80007d94:	f8e404a3          	sb	a4,-119(s0)
    80007d98:	00065c63          	bgez	a2,80007db0 <__printf+0x278>
    80007d9c:	f9040713          	addi	a4,s0,-112
    80007da0:	00f70733          	add	a4,a4,a5
    80007da4:	02d00693          	li	a3,45
    80007da8:	fed70823          	sb	a3,-16(a4)
    80007dac:	00078c93          	mv	s9,a5
    80007db0:	f8040793          	addi	a5,s0,-128
    80007db4:	01978cb3          	add	s9,a5,s9
    80007db8:	f7f40d13          	addi	s10,s0,-129
    80007dbc:	000cc503          	lbu	a0,0(s9)
    80007dc0:	fffc8c93          	addi	s9,s9,-1
    80007dc4:	00000097          	auipc	ra,0x0
    80007dc8:	b90080e7          	jalr	-1136(ra) # 80007954 <consputc>
    80007dcc:	ffac98e3          	bne	s9,s10,80007dbc <__printf+0x284>
    80007dd0:	00094503          	lbu	a0,0(s2)
    80007dd4:	e00514e3          	bnez	a0,80007bdc <__printf+0xa4>
    80007dd8:	1a0c1663          	bnez	s8,80007f84 <__printf+0x44c>
    80007ddc:	08813083          	ld	ra,136(sp)
    80007de0:	08013403          	ld	s0,128(sp)
    80007de4:	07813483          	ld	s1,120(sp)
    80007de8:	07013903          	ld	s2,112(sp)
    80007dec:	06813983          	ld	s3,104(sp)
    80007df0:	06013a03          	ld	s4,96(sp)
    80007df4:	05813a83          	ld	s5,88(sp)
    80007df8:	05013b03          	ld	s6,80(sp)
    80007dfc:	04813b83          	ld	s7,72(sp)
    80007e00:	04013c03          	ld	s8,64(sp)
    80007e04:	03813c83          	ld	s9,56(sp)
    80007e08:	03013d03          	ld	s10,48(sp)
    80007e0c:	02813d83          	ld	s11,40(sp)
    80007e10:	0d010113          	addi	sp,sp,208
    80007e14:	00008067          	ret
    80007e18:	07300713          	li	a4,115
    80007e1c:	1ce78a63          	beq	a5,a4,80007ff0 <__printf+0x4b8>
    80007e20:	07800713          	li	a4,120
    80007e24:	1ee79e63          	bne	a5,a4,80008020 <__printf+0x4e8>
    80007e28:	f7843783          	ld	a5,-136(s0)
    80007e2c:	0007a703          	lw	a4,0(a5)
    80007e30:	00878793          	addi	a5,a5,8
    80007e34:	f6f43c23          	sd	a5,-136(s0)
    80007e38:	28074263          	bltz	a4,800080bc <__printf+0x584>
    80007e3c:	00002d97          	auipc	s11,0x2
    80007e40:	904d8d93          	addi	s11,s11,-1788 # 80009740 <digits>
    80007e44:	00f77793          	andi	a5,a4,15
    80007e48:	00fd87b3          	add	a5,s11,a5
    80007e4c:	0007c683          	lbu	a3,0(a5)
    80007e50:	00f00613          	li	a2,15
    80007e54:	0007079b          	sext.w	a5,a4
    80007e58:	f8d40023          	sb	a3,-128(s0)
    80007e5c:	0047559b          	srliw	a1,a4,0x4
    80007e60:	0047569b          	srliw	a3,a4,0x4
    80007e64:	00000c93          	li	s9,0
    80007e68:	0ee65063          	bge	a2,a4,80007f48 <__printf+0x410>
    80007e6c:	00f6f693          	andi	a3,a3,15
    80007e70:	00dd86b3          	add	a3,s11,a3
    80007e74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007e78:	0087d79b          	srliw	a5,a5,0x8
    80007e7c:	00100c93          	li	s9,1
    80007e80:	f8d400a3          	sb	a3,-127(s0)
    80007e84:	0cb67263          	bgeu	a2,a1,80007f48 <__printf+0x410>
    80007e88:	00f7f693          	andi	a3,a5,15
    80007e8c:	00dd86b3          	add	a3,s11,a3
    80007e90:	0006c583          	lbu	a1,0(a3)
    80007e94:	00f00613          	li	a2,15
    80007e98:	0047d69b          	srliw	a3,a5,0x4
    80007e9c:	f8b40123          	sb	a1,-126(s0)
    80007ea0:	0047d593          	srli	a1,a5,0x4
    80007ea4:	28f67e63          	bgeu	a2,a5,80008140 <__printf+0x608>
    80007ea8:	00f6f693          	andi	a3,a3,15
    80007eac:	00dd86b3          	add	a3,s11,a3
    80007eb0:	0006c503          	lbu	a0,0(a3)
    80007eb4:	0087d813          	srli	a6,a5,0x8
    80007eb8:	0087d69b          	srliw	a3,a5,0x8
    80007ebc:	f8a401a3          	sb	a0,-125(s0)
    80007ec0:	28b67663          	bgeu	a2,a1,8000814c <__printf+0x614>
    80007ec4:	00f6f693          	andi	a3,a3,15
    80007ec8:	00dd86b3          	add	a3,s11,a3
    80007ecc:	0006c583          	lbu	a1,0(a3)
    80007ed0:	00c7d513          	srli	a0,a5,0xc
    80007ed4:	00c7d69b          	srliw	a3,a5,0xc
    80007ed8:	f8b40223          	sb	a1,-124(s0)
    80007edc:	29067a63          	bgeu	a2,a6,80008170 <__printf+0x638>
    80007ee0:	00f6f693          	andi	a3,a3,15
    80007ee4:	00dd86b3          	add	a3,s11,a3
    80007ee8:	0006c583          	lbu	a1,0(a3)
    80007eec:	0107d813          	srli	a6,a5,0x10
    80007ef0:	0107d69b          	srliw	a3,a5,0x10
    80007ef4:	f8b402a3          	sb	a1,-123(s0)
    80007ef8:	28a67263          	bgeu	a2,a0,8000817c <__printf+0x644>
    80007efc:	00f6f693          	andi	a3,a3,15
    80007f00:	00dd86b3          	add	a3,s11,a3
    80007f04:	0006c683          	lbu	a3,0(a3)
    80007f08:	0147d79b          	srliw	a5,a5,0x14
    80007f0c:	f8d40323          	sb	a3,-122(s0)
    80007f10:	21067663          	bgeu	a2,a6,8000811c <__printf+0x5e4>
    80007f14:	02079793          	slli	a5,a5,0x20
    80007f18:	0207d793          	srli	a5,a5,0x20
    80007f1c:	00fd8db3          	add	s11,s11,a5
    80007f20:	000dc683          	lbu	a3,0(s11)
    80007f24:	00800793          	li	a5,8
    80007f28:	00700c93          	li	s9,7
    80007f2c:	f8d403a3          	sb	a3,-121(s0)
    80007f30:	00075c63          	bgez	a4,80007f48 <__printf+0x410>
    80007f34:	f9040713          	addi	a4,s0,-112
    80007f38:	00f70733          	add	a4,a4,a5
    80007f3c:	02d00693          	li	a3,45
    80007f40:	fed70823          	sb	a3,-16(a4)
    80007f44:	00078c93          	mv	s9,a5
    80007f48:	f8040793          	addi	a5,s0,-128
    80007f4c:	01978cb3          	add	s9,a5,s9
    80007f50:	f7f40d13          	addi	s10,s0,-129
    80007f54:	000cc503          	lbu	a0,0(s9)
    80007f58:	fffc8c93          	addi	s9,s9,-1
    80007f5c:	00000097          	auipc	ra,0x0
    80007f60:	9f8080e7          	jalr	-1544(ra) # 80007954 <consputc>
    80007f64:	ff9d18e3          	bne	s10,s9,80007f54 <__printf+0x41c>
    80007f68:	0100006f          	j	80007f78 <__printf+0x440>
    80007f6c:	00000097          	auipc	ra,0x0
    80007f70:	9e8080e7          	jalr	-1560(ra) # 80007954 <consputc>
    80007f74:	000c8493          	mv	s1,s9
    80007f78:	00094503          	lbu	a0,0(s2)
    80007f7c:	c60510e3          	bnez	a0,80007bdc <__printf+0xa4>
    80007f80:	e40c0ee3          	beqz	s8,80007ddc <__printf+0x2a4>
    80007f84:	00005517          	auipc	a0,0x5
    80007f88:	eac50513          	addi	a0,a0,-340 # 8000ce30 <pr>
    80007f8c:	00001097          	auipc	ra,0x1
    80007f90:	94c080e7          	jalr	-1716(ra) # 800088d8 <release>
    80007f94:	e49ff06f          	j	80007ddc <__printf+0x2a4>
    80007f98:	f7843783          	ld	a5,-136(s0)
    80007f9c:	03000513          	li	a0,48
    80007fa0:	01000d13          	li	s10,16
    80007fa4:	00878713          	addi	a4,a5,8
    80007fa8:	0007bc83          	ld	s9,0(a5)
    80007fac:	f6e43c23          	sd	a4,-136(s0)
    80007fb0:	00000097          	auipc	ra,0x0
    80007fb4:	9a4080e7          	jalr	-1628(ra) # 80007954 <consputc>
    80007fb8:	07800513          	li	a0,120
    80007fbc:	00000097          	auipc	ra,0x0
    80007fc0:	998080e7          	jalr	-1640(ra) # 80007954 <consputc>
    80007fc4:	00001d97          	auipc	s11,0x1
    80007fc8:	77cd8d93          	addi	s11,s11,1916 # 80009740 <digits>
    80007fcc:	03ccd793          	srli	a5,s9,0x3c
    80007fd0:	00fd87b3          	add	a5,s11,a5
    80007fd4:	0007c503          	lbu	a0,0(a5)
    80007fd8:	fffd0d1b          	addiw	s10,s10,-1
    80007fdc:	004c9c93          	slli	s9,s9,0x4
    80007fe0:	00000097          	auipc	ra,0x0
    80007fe4:	974080e7          	jalr	-1676(ra) # 80007954 <consputc>
    80007fe8:	fe0d12e3          	bnez	s10,80007fcc <__printf+0x494>
    80007fec:	f8dff06f          	j	80007f78 <__printf+0x440>
    80007ff0:	f7843783          	ld	a5,-136(s0)
    80007ff4:	0007bc83          	ld	s9,0(a5)
    80007ff8:	00878793          	addi	a5,a5,8
    80007ffc:	f6f43c23          	sd	a5,-136(s0)
    80008000:	000c9a63          	bnez	s9,80008014 <__printf+0x4dc>
    80008004:	1080006f          	j	8000810c <__printf+0x5d4>
    80008008:	001c8c93          	addi	s9,s9,1
    8000800c:	00000097          	auipc	ra,0x0
    80008010:	948080e7          	jalr	-1720(ra) # 80007954 <consputc>
    80008014:	000cc503          	lbu	a0,0(s9)
    80008018:	fe0518e3          	bnez	a0,80008008 <__printf+0x4d0>
    8000801c:	f5dff06f          	j	80007f78 <__printf+0x440>
    80008020:	02500513          	li	a0,37
    80008024:	00000097          	auipc	ra,0x0
    80008028:	930080e7          	jalr	-1744(ra) # 80007954 <consputc>
    8000802c:	000c8513          	mv	a0,s9
    80008030:	00000097          	auipc	ra,0x0
    80008034:	924080e7          	jalr	-1756(ra) # 80007954 <consputc>
    80008038:	f41ff06f          	j	80007f78 <__printf+0x440>
    8000803c:	02500513          	li	a0,37
    80008040:	00000097          	auipc	ra,0x0
    80008044:	914080e7          	jalr	-1772(ra) # 80007954 <consputc>
    80008048:	f31ff06f          	j	80007f78 <__printf+0x440>
    8000804c:	00030513          	mv	a0,t1
    80008050:	00000097          	auipc	ra,0x0
    80008054:	7bc080e7          	jalr	1980(ra) # 8000880c <acquire>
    80008058:	b4dff06f          	j	80007ba4 <__printf+0x6c>
    8000805c:	40c0053b          	negw	a0,a2
    80008060:	00a00713          	li	a4,10
    80008064:	02e576bb          	remuw	a3,a0,a4
    80008068:	00001d97          	auipc	s11,0x1
    8000806c:	6d8d8d93          	addi	s11,s11,1752 # 80009740 <digits>
    80008070:	ff700593          	li	a1,-9
    80008074:	02069693          	slli	a3,a3,0x20
    80008078:	0206d693          	srli	a3,a3,0x20
    8000807c:	00dd86b3          	add	a3,s11,a3
    80008080:	0006c683          	lbu	a3,0(a3)
    80008084:	02e557bb          	divuw	a5,a0,a4
    80008088:	f8d40023          	sb	a3,-128(s0)
    8000808c:	10b65e63          	bge	a2,a1,800081a8 <__printf+0x670>
    80008090:	06300593          	li	a1,99
    80008094:	02e7f6bb          	remuw	a3,a5,a4
    80008098:	02069693          	slli	a3,a3,0x20
    8000809c:	0206d693          	srli	a3,a3,0x20
    800080a0:	00dd86b3          	add	a3,s11,a3
    800080a4:	0006c683          	lbu	a3,0(a3)
    800080a8:	02e7d73b          	divuw	a4,a5,a4
    800080ac:	00200793          	li	a5,2
    800080b0:	f8d400a3          	sb	a3,-127(s0)
    800080b4:	bca5ece3          	bltu	a1,a0,80007c8c <__printf+0x154>
    800080b8:	ce5ff06f          	j	80007d9c <__printf+0x264>
    800080bc:	40e007bb          	negw	a5,a4
    800080c0:	00001d97          	auipc	s11,0x1
    800080c4:	680d8d93          	addi	s11,s11,1664 # 80009740 <digits>
    800080c8:	00f7f693          	andi	a3,a5,15
    800080cc:	00dd86b3          	add	a3,s11,a3
    800080d0:	0006c583          	lbu	a1,0(a3)
    800080d4:	ff100613          	li	a2,-15
    800080d8:	0047d69b          	srliw	a3,a5,0x4
    800080dc:	f8b40023          	sb	a1,-128(s0)
    800080e0:	0047d59b          	srliw	a1,a5,0x4
    800080e4:	0ac75e63          	bge	a4,a2,800081a0 <__printf+0x668>
    800080e8:	00f6f693          	andi	a3,a3,15
    800080ec:	00dd86b3          	add	a3,s11,a3
    800080f0:	0006c603          	lbu	a2,0(a3)
    800080f4:	00f00693          	li	a3,15
    800080f8:	0087d79b          	srliw	a5,a5,0x8
    800080fc:	f8c400a3          	sb	a2,-127(s0)
    80008100:	d8b6e4e3          	bltu	a3,a1,80007e88 <__printf+0x350>
    80008104:	00200793          	li	a5,2
    80008108:	e2dff06f          	j	80007f34 <__printf+0x3fc>
    8000810c:	00001c97          	auipc	s9,0x1
    80008110:	614c8c93          	addi	s9,s9,1556 # 80009720 <CONSOLE_STATUS+0x710>
    80008114:	02800513          	li	a0,40
    80008118:	ef1ff06f          	j	80008008 <__printf+0x4d0>
    8000811c:	00700793          	li	a5,7
    80008120:	00600c93          	li	s9,6
    80008124:	e0dff06f          	j	80007f30 <__printf+0x3f8>
    80008128:	00700793          	li	a5,7
    8000812c:	00600c93          	li	s9,6
    80008130:	c69ff06f          	j	80007d98 <__printf+0x260>
    80008134:	00300793          	li	a5,3
    80008138:	00200c93          	li	s9,2
    8000813c:	c5dff06f          	j	80007d98 <__printf+0x260>
    80008140:	00300793          	li	a5,3
    80008144:	00200c93          	li	s9,2
    80008148:	de9ff06f          	j	80007f30 <__printf+0x3f8>
    8000814c:	00400793          	li	a5,4
    80008150:	00300c93          	li	s9,3
    80008154:	dddff06f          	j	80007f30 <__printf+0x3f8>
    80008158:	00400793          	li	a5,4
    8000815c:	00300c93          	li	s9,3
    80008160:	c39ff06f          	j	80007d98 <__printf+0x260>
    80008164:	00500793          	li	a5,5
    80008168:	00400c93          	li	s9,4
    8000816c:	c2dff06f          	j	80007d98 <__printf+0x260>
    80008170:	00500793          	li	a5,5
    80008174:	00400c93          	li	s9,4
    80008178:	db9ff06f          	j	80007f30 <__printf+0x3f8>
    8000817c:	00600793          	li	a5,6
    80008180:	00500c93          	li	s9,5
    80008184:	dadff06f          	j	80007f30 <__printf+0x3f8>
    80008188:	00600793          	li	a5,6
    8000818c:	00500c93          	li	s9,5
    80008190:	c09ff06f          	j	80007d98 <__printf+0x260>
    80008194:	00800793          	li	a5,8
    80008198:	00700c93          	li	s9,7
    8000819c:	bfdff06f          	j	80007d98 <__printf+0x260>
    800081a0:	00100793          	li	a5,1
    800081a4:	d91ff06f          	j	80007f34 <__printf+0x3fc>
    800081a8:	00100793          	li	a5,1
    800081ac:	bf1ff06f          	j	80007d9c <__printf+0x264>
    800081b0:	00900793          	li	a5,9
    800081b4:	00800c93          	li	s9,8
    800081b8:	be1ff06f          	j	80007d98 <__printf+0x260>
    800081bc:	00001517          	auipc	a0,0x1
    800081c0:	56c50513          	addi	a0,a0,1388 # 80009728 <CONSOLE_STATUS+0x718>
    800081c4:	00000097          	auipc	ra,0x0
    800081c8:	918080e7          	jalr	-1768(ra) # 80007adc <panic>

00000000800081cc <printfinit>:
    800081cc:	fe010113          	addi	sp,sp,-32
    800081d0:	00813823          	sd	s0,16(sp)
    800081d4:	00913423          	sd	s1,8(sp)
    800081d8:	00113c23          	sd	ra,24(sp)
    800081dc:	02010413          	addi	s0,sp,32
    800081e0:	00005497          	auipc	s1,0x5
    800081e4:	c5048493          	addi	s1,s1,-944 # 8000ce30 <pr>
    800081e8:	00048513          	mv	a0,s1
    800081ec:	00001597          	auipc	a1,0x1
    800081f0:	54c58593          	addi	a1,a1,1356 # 80009738 <CONSOLE_STATUS+0x728>
    800081f4:	00000097          	auipc	ra,0x0
    800081f8:	5f4080e7          	jalr	1524(ra) # 800087e8 <initlock>
    800081fc:	01813083          	ld	ra,24(sp)
    80008200:	01013403          	ld	s0,16(sp)
    80008204:	0004ac23          	sw	zero,24(s1)
    80008208:	00813483          	ld	s1,8(sp)
    8000820c:	02010113          	addi	sp,sp,32
    80008210:	00008067          	ret

0000000080008214 <uartinit>:
    80008214:	ff010113          	addi	sp,sp,-16
    80008218:	00813423          	sd	s0,8(sp)
    8000821c:	01010413          	addi	s0,sp,16
    80008220:	100007b7          	lui	a5,0x10000
    80008224:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008228:	f8000713          	li	a4,-128
    8000822c:	00e781a3          	sb	a4,3(a5)
    80008230:	00300713          	li	a4,3
    80008234:	00e78023          	sb	a4,0(a5)
    80008238:	000780a3          	sb	zero,1(a5)
    8000823c:	00e781a3          	sb	a4,3(a5)
    80008240:	00700693          	li	a3,7
    80008244:	00d78123          	sb	a3,2(a5)
    80008248:	00e780a3          	sb	a4,1(a5)
    8000824c:	00813403          	ld	s0,8(sp)
    80008250:	01010113          	addi	sp,sp,16
    80008254:	00008067          	ret

0000000080008258 <uartputc>:
    80008258:	00003797          	auipc	a5,0x3
    8000825c:	6d07a783          	lw	a5,1744(a5) # 8000b928 <panicked>
    80008260:	00078463          	beqz	a5,80008268 <uartputc+0x10>
    80008264:	0000006f          	j	80008264 <uartputc+0xc>
    80008268:	fd010113          	addi	sp,sp,-48
    8000826c:	02813023          	sd	s0,32(sp)
    80008270:	00913c23          	sd	s1,24(sp)
    80008274:	01213823          	sd	s2,16(sp)
    80008278:	01313423          	sd	s3,8(sp)
    8000827c:	02113423          	sd	ra,40(sp)
    80008280:	03010413          	addi	s0,sp,48
    80008284:	00003917          	auipc	s2,0x3
    80008288:	6ac90913          	addi	s2,s2,1708 # 8000b930 <uart_tx_r>
    8000828c:	00093783          	ld	a5,0(s2)
    80008290:	00003497          	auipc	s1,0x3
    80008294:	6a848493          	addi	s1,s1,1704 # 8000b938 <uart_tx_w>
    80008298:	0004b703          	ld	a4,0(s1)
    8000829c:	02078693          	addi	a3,a5,32
    800082a0:	00050993          	mv	s3,a0
    800082a4:	02e69c63          	bne	a3,a4,800082dc <uartputc+0x84>
    800082a8:	00001097          	auipc	ra,0x1
    800082ac:	834080e7          	jalr	-1996(ra) # 80008adc <push_on>
    800082b0:	00093783          	ld	a5,0(s2)
    800082b4:	0004b703          	ld	a4,0(s1)
    800082b8:	02078793          	addi	a5,a5,32
    800082bc:	00e79463          	bne	a5,a4,800082c4 <uartputc+0x6c>
    800082c0:	0000006f          	j	800082c0 <uartputc+0x68>
    800082c4:	00001097          	auipc	ra,0x1
    800082c8:	88c080e7          	jalr	-1908(ra) # 80008b50 <pop_on>
    800082cc:	00093783          	ld	a5,0(s2)
    800082d0:	0004b703          	ld	a4,0(s1)
    800082d4:	02078693          	addi	a3,a5,32
    800082d8:	fce688e3          	beq	a3,a4,800082a8 <uartputc+0x50>
    800082dc:	01f77693          	andi	a3,a4,31
    800082e0:	00005597          	auipc	a1,0x5
    800082e4:	b7058593          	addi	a1,a1,-1168 # 8000ce50 <uart_tx_buf>
    800082e8:	00d586b3          	add	a3,a1,a3
    800082ec:	00170713          	addi	a4,a4,1
    800082f0:	01368023          	sb	s3,0(a3)
    800082f4:	00e4b023          	sd	a4,0(s1)
    800082f8:	10000637          	lui	a2,0x10000
    800082fc:	02f71063          	bne	a4,a5,8000831c <uartputc+0xc4>
    80008300:	0340006f          	j	80008334 <uartputc+0xdc>
    80008304:	00074703          	lbu	a4,0(a4)
    80008308:	00f93023          	sd	a5,0(s2)
    8000830c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008310:	00093783          	ld	a5,0(s2)
    80008314:	0004b703          	ld	a4,0(s1)
    80008318:	00f70e63          	beq	a4,a5,80008334 <uartputc+0xdc>
    8000831c:	00564683          	lbu	a3,5(a2)
    80008320:	01f7f713          	andi	a4,a5,31
    80008324:	00e58733          	add	a4,a1,a4
    80008328:	0206f693          	andi	a3,a3,32
    8000832c:	00178793          	addi	a5,a5,1
    80008330:	fc069ae3          	bnez	a3,80008304 <uartputc+0xac>
    80008334:	02813083          	ld	ra,40(sp)
    80008338:	02013403          	ld	s0,32(sp)
    8000833c:	01813483          	ld	s1,24(sp)
    80008340:	01013903          	ld	s2,16(sp)
    80008344:	00813983          	ld	s3,8(sp)
    80008348:	03010113          	addi	sp,sp,48
    8000834c:	00008067          	ret

0000000080008350 <uartputc_sync>:
    80008350:	ff010113          	addi	sp,sp,-16
    80008354:	00813423          	sd	s0,8(sp)
    80008358:	01010413          	addi	s0,sp,16
    8000835c:	00003717          	auipc	a4,0x3
    80008360:	5cc72703          	lw	a4,1484(a4) # 8000b928 <panicked>
    80008364:	02071663          	bnez	a4,80008390 <uartputc_sync+0x40>
    80008368:	00050793          	mv	a5,a0
    8000836c:	100006b7          	lui	a3,0x10000
    80008370:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008374:	02077713          	andi	a4,a4,32
    80008378:	fe070ce3          	beqz	a4,80008370 <uartputc_sync+0x20>
    8000837c:	0ff7f793          	andi	a5,a5,255
    80008380:	00f68023          	sb	a5,0(a3)
    80008384:	00813403          	ld	s0,8(sp)
    80008388:	01010113          	addi	sp,sp,16
    8000838c:	00008067          	ret
    80008390:	0000006f          	j	80008390 <uartputc_sync+0x40>

0000000080008394 <uartstart>:
    80008394:	ff010113          	addi	sp,sp,-16
    80008398:	00813423          	sd	s0,8(sp)
    8000839c:	01010413          	addi	s0,sp,16
    800083a0:	00003617          	auipc	a2,0x3
    800083a4:	59060613          	addi	a2,a2,1424 # 8000b930 <uart_tx_r>
    800083a8:	00003517          	auipc	a0,0x3
    800083ac:	59050513          	addi	a0,a0,1424 # 8000b938 <uart_tx_w>
    800083b0:	00063783          	ld	a5,0(a2)
    800083b4:	00053703          	ld	a4,0(a0)
    800083b8:	04f70263          	beq	a4,a5,800083fc <uartstart+0x68>
    800083bc:	100005b7          	lui	a1,0x10000
    800083c0:	00005817          	auipc	a6,0x5
    800083c4:	a9080813          	addi	a6,a6,-1392 # 8000ce50 <uart_tx_buf>
    800083c8:	01c0006f          	j	800083e4 <uartstart+0x50>
    800083cc:	0006c703          	lbu	a4,0(a3)
    800083d0:	00f63023          	sd	a5,0(a2)
    800083d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800083d8:	00063783          	ld	a5,0(a2)
    800083dc:	00053703          	ld	a4,0(a0)
    800083e0:	00f70e63          	beq	a4,a5,800083fc <uartstart+0x68>
    800083e4:	01f7f713          	andi	a4,a5,31
    800083e8:	00e806b3          	add	a3,a6,a4
    800083ec:	0055c703          	lbu	a4,5(a1)
    800083f0:	00178793          	addi	a5,a5,1
    800083f4:	02077713          	andi	a4,a4,32
    800083f8:	fc071ae3          	bnez	a4,800083cc <uartstart+0x38>
    800083fc:	00813403          	ld	s0,8(sp)
    80008400:	01010113          	addi	sp,sp,16
    80008404:	00008067          	ret

0000000080008408 <uartgetc>:
    80008408:	ff010113          	addi	sp,sp,-16
    8000840c:	00813423          	sd	s0,8(sp)
    80008410:	01010413          	addi	s0,sp,16
    80008414:	10000737          	lui	a4,0x10000
    80008418:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000841c:	0017f793          	andi	a5,a5,1
    80008420:	00078c63          	beqz	a5,80008438 <uartgetc+0x30>
    80008424:	00074503          	lbu	a0,0(a4)
    80008428:	0ff57513          	andi	a0,a0,255
    8000842c:	00813403          	ld	s0,8(sp)
    80008430:	01010113          	addi	sp,sp,16
    80008434:	00008067          	ret
    80008438:	fff00513          	li	a0,-1
    8000843c:	ff1ff06f          	j	8000842c <uartgetc+0x24>

0000000080008440 <uartintr>:
    80008440:	100007b7          	lui	a5,0x10000
    80008444:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008448:	0017f793          	andi	a5,a5,1
    8000844c:	0a078463          	beqz	a5,800084f4 <uartintr+0xb4>
    80008450:	fe010113          	addi	sp,sp,-32
    80008454:	00813823          	sd	s0,16(sp)
    80008458:	00913423          	sd	s1,8(sp)
    8000845c:	00113c23          	sd	ra,24(sp)
    80008460:	02010413          	addi	s0,sp,32
    80008464:	100004b7          	lui	s1,0x10000
    80008468:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000846c:	0ff57513          	andi	a0,a0,255
    80008470:	fffff097          	auipc	ra,0xfffff
    80008474:	534080e7          	jalr	1332(ra) # 800079a4 <consoleintr>
    80008478:	0054c783          	lbu	a5,5(s1)
    8000847c:	0017f793          	andi	a5,a5,1
    80008480:	fe0794e3          	bnez	a5,80008468 <uartintr+0x28>
    80008484:	00003617          	auipc	a2,0x3
    80008488:	4ac60613          	addi	a2,a2,1196 # 8000b930 <uart_tx_r>
    8000848c:	00003517          	auipc	a0,0x3
    80008490:	4ac50513          	addi	a0,a0,1196 # 8000b938 <uart_tx_w>
    80008494:	00063783          	ld	a5,0(a2)
    80008498:	00053703          	ld	a4,0(a0)
    8000849c:	04f70263          	beq	a4,a5,800084e0 <uartintr+0xa0>
    800084a0:	100005b7          	lui	a1,0x10000
    800084a4:	00005817          	auipc	a6,0x5
    800084a8:	9ac80813          	addi	a6,a6,-1620 # 8000ce50 <uart_tx_buf>
    800084ac:	01c0006f          	j	800084c8 <uartintr+0x88>
    800084b0:	0006c703          	lbu	a4,0(a3)
    800084b4:	00f63023          	sd	a5,0(a2)
    800084b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084bc:	00063783          	ld	a5,0(a2)
    800084c0:	00053703          	ld	a4,0(a0)
    800084c4:	00f70e63          	beq	a4,a5,800084e0 <uartintr+0xa0>
    800084c8:	01f7f713          	andi	a4,a5,31
    800084cc:	00e806b3          	add	a3,a6,a4
    800084d0:	0055c703          	lbu	a4,5(a1)
    800084d4:	00178793          	addi	a5,a5,1
    800084d8:	02077713          	andi	a4,a4,32
    800084dc:	fc071ae3          	bnez	a4,800084b0 <uartintr+0x70>
    800084e0:	01813083          	ld	ra,24(sp)
    800084e4:	01013403          	ld	s0,16(sp)
    800084e8:	00813483          	ld	s1,8(sp)
    800084ec:	02010113          	addi	sp,sp,32
    800084f0:	00008067          	ret
    800084f4:	00003617          	auipc	a2,0x3
    800084f8:	43c60613          	addi	a2,a2,1084 # 8000b930 <uart_tx_r>
    800084fc:	00003517          	auipc	a0,0x3
    80008500:	43c50513          	addi	a0,a0,1084 # 8000b938 <uart_tx_w>
    80008504:	00063783          	ld	a5,0(a2)
    80008508:	00053703          	ld	a4,0(a0)
    8000850c:	04f70263          	beq	a4,a5,80008550 <uartintr+0x110>
    80008510:	100005b7          	lui	a1,0x10000
    80008514:	00005817          	auipc	a6,0x5
    80008518:	93c80813          	addi	a6,a6,-1732 # 8000ce50 <uart_tx_buf>
    8000851c:	01c0006f          	j	80008538 <uartintr+0xf8>
    80008520:	0006c703          	lbu	a4,0(a3)
    80008524:	00f63023          	sd	a5,0(a2)
    80008528:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000852c:	00063783          	ld	a5,0(a2)
    80008530:	00053703          	ld	a4,0(a0)
    80008534:	02f70063          	beq	a4,a5,80008554 <uartintr+0x114>
    80008538:	01f7f713          	andi	a4,a5,31
    8000853c:	00e806b3          	add	a3,a6,a4
    80008540:	0055c703          	lbu	a4,5(a1)
    80008544:	00178793          	addi	a5,a5,1
    80008548:	02077713          	andi	a4,a4,32
    8000854c:	fc071ae3          	bnez	a4,80008520 <uartintr+0xe0>
    80008550:	00008067          	ret
    80008554:	00008067          	ret

0000000080008558 <kinit>:
    80008558:	fc010113          	addi	sp,sp,-64
    8000855c:	02913423          	sd	s1,40(sp)
    80008560:	fffff7b7          	lui	a5,0xfffff
    80008564:	00006497          	auipc	s1,0x6
    80008568:	90b48493          	addi	s1,s1,-1781 # 8000de6f <end+0xfff>
    8000856c:	02813823          	sd	s0,48(sp)
    80008570:	01313c23          	sd	s3,24(sp)
    80008574:	00f4f4b3          	and	s1,s1,a5
    80008578:	02113c23          	sd	ra,56(sp)
    8000857c:	03213023          	sd	s2,32(sp)
    80008580:	01413823          	sd	s4,16(sp)
    80008584:	01513423          	sd	s5,8(sp)
    80008588:	04010413          	addi	s0,sp,64
    8000858c:	000017b7          	lui	a5,0x1
    80008590:	01100993          	li	s3,17
    80008594:	00f487b3          	add	a5,s1,a5
    80008598:	01b99993          	slli	s3,s3,0x1b
    8000859c:	06f9e063          	bltu	s3,a5,800085fc <kinit+0xa4>
    800085a0:	00005a97          	auipc	s5,0x5
    800085a4:	8d0a8a93          	addi	s5,s5,-1840 # 8000ce70 <end>
    800085a8:	0754ec63          	bltu	s1,s5,80008620 <kinit+0xc8>
    800085ac:	0734fa63          	bgeu	s1,s3,80008620 <kinit+0xc8>
    800085b0:	00088a37          	lui	s4,0x88
    800085b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800085b8:	00003917          	auipc	s2,0x3
    800085bc:	38890913          	addi	s2,s2,904 # 8000b940 <kmem>
    800085c0:	00ca1a13          	slli	s4,s4,0xc
    800085c4:	0140006f          	j	800085d8 <kinit+0x80>
    800085c8:	000017b7          	lui	a5,0x1
    800085cc:	00f484b3          	add	s1,s1,a5
    800085d0:	0554e863          	bltu	s1,s5,80008620 <kinit+0xc8>
    800085d4:	0534f663          	bgeu	s1,s3,80008620 <kinit+0xc8>
    800085d8:	00001637          	lui	a2,0x1
    800085dc:	00100593          	li	a1,1
    800085e0:	00048513          	mv	a0,s1
    800085e4:	00000097          	auipc	ra,0x0
    800085e8:	5e4080e7          	jalr	1508(ra) # 80008bc8 <__memset>
    800085ec:	00093783          	ld	a5,0(s2)
    800085f0:	00f4b023          	sd	a5,0(s1)
    800085f4:	00993023          	sd	s1,0(s2)
    800085f8:	fd4498e3          	bne	s1,s4,800085c8 <kinit+0x70>
    800085fc:	03813083          	ld	ra,56(sp)
    80008600:	03013403          	ld	s0,48(sp)
    80008604:	02813483          	ld	s1,40(sp)
    80008608:	02013903          	ld	s2,32(sp)
    8000860c:	01813983          	ld	s3,24(sp)
    80008610:	01013a03          	ld	s4,16(sp)
    80008614:	00813a83          	ld	s5,8(sp)
    80008618:	04010113          	addi	sp,sp,64
    8000861c:	00008067          	ret
    80008620:	00001517          	auipc	a0,0x1
    80008624:	13850513          	addi	a0,a0,312 # 80009758 <digits+0x18>
    80008628:	fffff097          	auipc	ra,0xfffff
    8000862c:	4b4080e7          	jalr	1204(ra) # 80007adc <panic>

0000000080008630 <freerange>:
    80008630:	fc010113          	addi	sp,sp,-64
    80008634:	000017b7          	lui	a5,0x1
    80008638:	02913423          	sd	s1,40(sp)
    8000863c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008640:	009504b3          	add	s1,a0,s1
    80008644:	fffff537          	lui	a0,0xfffff
    80008648:	02813823          	sd	s0,48(sp)
    8000864c:	02113c23          	sd	ra,56(sp)
    80008650:	03213023          	sd	s2,32(sp)
    80008654:	01313c23          	sd	s3,24(sp)
    80008658:	01413823          	sd	s4,16(sp)
    8000865c:	01513423          	sd	s5,8(sp)
    80008660:	01613023          	sd	s6,0(sp)
    80008664:	04010413          	addi	s0,sp,64
    80008668:	00a4f4b3          	and	s1,s1,a0
    8000866c:	00f487b3          	add	a5,s1,a5
    80008670:	06f5e463          	bltu	a1,a5,800086d8 <freerange+0xa8>
    80008674:	00004a97          	auipc	s5,0x4
    80008678:	7fca8a93          	addi	s5,s5,2044 # 8000ce70 <end>
    8000867c:	0954e263          	bltu	s1,s5,80008700 <freerange+0xd0>
    80008680:	01100993          	li	s3,17
    80008684:	01b99993          	slli	s3,s3,0x1b
    80008688:	0734fc63          	bgeu	s1,s3,80008700 <freerange+0xd0>
    8000868c:	00058a13          	mv	s4,a1
    80008690:	00003917          	auipc	s2,0x3
    80008694:	2b090913          	addi	s2,s2,688 # 8000b940 <kmem>
    80008698:	00002b37          	lui	s6,0x2
    8000869c:	0140006f          	j	800086b0 <freerange+0x80>
    800086a0:	000017b7          	lui	a5,0x1
    800086a4:	00f484b3          	add	s1,s1,a5
    800086a8:	0554ec63          	bltu	s1,s5,80008700 <freerange+0xd0>
    800086ac:	0534fa63          	bgeu	s1,s3,80008700 <freerange+0xd0>
    800086b0:	00001637          	lui	a2,0x1
    800086b4:	00100593          	li	a1,1
    800086b8:	00048513          	mv	a0,s1
    800086bc:	00000097          	auipc	ra,0x0
    800086c0:	50c080e7          	jalr	1292(ra) # 80008bc8 <__memset>
    800086c4:	00093703          	ld	a4,0(s2)
    800086c8:	016487b3          	add	a5,s1,s6
    800086cc:	00e4b023          	sd	a4,0(s1)
    800086d0:	00993023          	sd	s1,0(s2)
    800086d4:	fcfa76e3          	bgeu	s4,a5,800086a0 <freerange+0x70>
    800086d8:	03813083          	ld	ra,56(sp)
    800086dc:	03013403          	ld	s0,48(sp)
    800086e0:	02813483          	ld	s1,40(sp)
    800086e4:	02013903          	ld	s2,32(sp)
    800086e8:	01813983          	ld	s3,24(sp)
    800086ec:	01013a03          	ld	s4,16(sp)
    800086f0:	00813a83          	ld	s5,8(sp)
    800086f4:	00013b03          	ld	s6,0(sp)
    800086f8:	04010113          	addi	sp,sp,64
    800086fc:	00008067          	ret
    80008700:	00001517          	auipc	a0,0x1
    80008704:	05850513          	addi	a0,a0,88 # 80009758 <digits+0x18>
    80008708:	fffff097          	auipc	ra,0xfffff
    8000870c:	3d4080e7          	jalr	980(ra) # 80007adc <panic>

0000000080008710 <kfree>:
    80008710:	fe010113          	addi	sp,sp,-32
    80008714:	00813823          	sd	s0,16(sp)
    80008718:	00113c23          	sd	ra,24(sp)
    8000871c:	00913423          	sd	s1,8(sp)
    80008720:	02010413          	addi	s0,sp,32
    80008724:	03451793          	slli	a5,a0,0x34
    80008728:	04079c63          	bnez	a5,80008780 <kfree+0x70>
    8000872c:	00004797          	auipc	a5,0x4
    80008730:	74478793          	addi	a5,a5,1860 # 8000ce70 <end>
    80008734:	00050493          	mv	s1,a0
    80008738:	04f56463          	bltu	a0,a5,80008780 <kfree+0x70>
    8000873c:	01100793          	li	a5,17
    80008740:	01b79793          	slli	a5,a5,0x1b
    80008744:	02f57e63          	bgeu	a0,a5,80008780 <kfree+0x70>
    80008748:	00001637          	lui	a2,0x1
    8000874c:	00100593          	li	a1,1
    80008750:	00000097          	auipc	ra,0x0
    80008754:	478080e7          	jalr	1144(ra) # 80008bc8 <__memset>
    80008758:	00003797          	auipc	a5,0x3
    8000875c:	1e878793          	addi	a5,a5,488 # 8000b940 <kmem>
    80008760:	0007b703          	ld	a4,0(a5)
    80008764:	01813083          	ld	ra,24(sp)
    80008768:	01013403          	ld	s0,16(sp)
    8000876c:	00e4b023          	sd	a4,0(s1)
    80008770:	0097b023          	sd	s1,0(a5)
    80008774:	00813483          	ld	s1,8(sp)
    80008778:	02010113          	addi	sp,sp,32
    8000877c:	00008067          	ret
    80008780:	00001517          	auipc	a0,0x1
    80008784:	fd850513          	addi	a0,a0,-40 # 80009758 <digits+0x18>
    80008788:	fffff097          	auipc	ra,0xfffff
    8000878c:	354080e7          	jalr	852(ra) # 80007adc <panic>

0000000080008790 <kalloc>:
    80008790:	fe010113          	addi	sp,sp,-32
    80008794:	00813823          	sd	s0,16(sp)
    80008798:	00913423          	sd	s1,8(sp)
    8000879c:	00113c23          	sd	ra,24(sp)
    800087a0:	02010413          	addi	s0,sp,32
    800087a4:	00003797          	auipc	a5,0x3
    800087a8:	19c78793          	addi	a5,a5,412 # 8000b940 <kmem>
    800087ac:	0007b483          	ld	s1,0(a5)
    800087b0:	02048063          	beqz	s1,800087d0 <kalloc+0x40>
    800087b4:	0004b703          	ld	a4,0(s1)
    800087b8:	00001637          	lui	a2,0x1
    800087bc:	00500593          	li	a1,5
    800087c0:	00048513          	mv	a0,s1
    800087c4:	00e7b023          	sd	a4,0(a5)
    800087c8:	00000097          	auipc	ra,0x0
    800087cc:	400080e7          	jalr	1024(ra) # 80008bc8 <__memset>
    800087d0:	01813083          	ld	ra,24(sp)
    800087d4:	01013403          	ld	s0,16(sp)
    800087d8:	00048513          	mv	a0,s1
    800087dc:	00813483          	ld	s1,8(sp)
    800087e0:	02010113          	addi	sp,sp,32
    800087e4:	00008067          	ret

00000000800087e8 <initlock>:
    800087e8:	ff010113          	addi	sp,sp,-16
    800087ec:	00813423          	sd	s0,8(sp)
    800087f0:	01010413          	addi	s0,sp,16
    800087f4:	00813403          	ld	s0,8(sp)
    800087f8:	00b53423          	sd	a1,8(a0)
    800087fc:	00052023          	sw	zero,0(a0)
    80008800:	00053823          	sd	zero,16(a0)
    80008804:	01010113          	addi	sp,sp,16
    80008808:	00008067          	ret

000000008000880c <acquire>:
    8000880c:	fe010113          	addi	sp,sp,-32
    80008810:	00813823          	sd	s0,16(sp)
    80008814:	00913423          	sd	s1,8(sp)
    80008818:	00113c23          	sd	ra,24(sp)
    8000881c:	01213023          	sd	s2,0(sp)
    80008820:	02010413          	addi	s0,sp,32
    80008824:	00050493          	mv	s1,a0
    80008828:	10002973          	csrr	s2,sstatus
    8000882c:	100027f3          	csrr	a5,sstatus
    80008830:	ffd7f793          	andi	a5,a5,-3
    80008834:	10079073          	csrw	sstatus,a5
    80008838:	fffff097          	auipc	ra,0xfffff
    8000883c:	8e0080e7          	jalr	-1824(ra) # 80007118 <mycpu>
    80008840:	07852783          	lw	a5,120(a0)
    80008844:	06078e63          	beqz	a5,800088c0 <acquire+0xb4>
    80008848:	fffff097          	auipc	ra,0xfffff
    8000884c:	8d0080e7          	jalr	-1840(ra) # 80007118 <mycpu>
    80008850:	07852783          	lw	a5,120(a0)
    80008854:	0004a703          	lw	a4,0(s1)
    80008858:	0017879b          	addiw	a5,a5,1
    8000885c:	06f52c23          	sw	a5,120(a0)
    80008860:	04071063          	bnez	a4,800088a0 <acquire+0x94>
    80008864:	00100713          	li	a4,1
    80008868:	00070793          	mv	a5,a4
    8000886c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008870:	0007879b          	sext.w	a5,a5
    80008874:	fe079ae3          	bnez	a5,80008868 <acquire+0x5c>
    80008878:	0ff0000f          	fence
    8000887c:	fffff097          	auipc	ra,0xfffff
    80008880:	89c080e7          	jalr	-1892(ra) # 80007118 <mycpu>
    80008884:	01813083          	ld	ra,24(sp)
    80008888:	01013403          	ld	s0,16(sp)
    8000888c:	00a4b823          	sd	a0,16(s1)
    80008890:	00013903          	ld	s2,0(sp)
    80008894:	00813483          	ld	s1,8(sp)
    80008898:	02010113          	addi	sp,sp,32
    8000889c:	00008067          	ret
    800088a0:	0104b903          	ld	s2,16(s1)
    800088a4:	fffff097          	auipc	ra,0xfffff
    800088a8:	874080e7          	jalr	-1932(ra) # 80007118 <mycpu>
    800088ac:	faa91ce3          	bne	s2,a0,80008864 <acquire+0x58>
    800088b0:	00001517          	auipc	a0,0x1
    800088b4:	eb050513          	addi	a0,a0,-336 # 80009760 <digits+0x20>
    800088b8:	fffff097          	auipc	ra,0xfffff
    800088bc:	224080e7          	jalr	548(ra) # 80007adc <panic>
    800088c0:	00195913          	srli	s2,s2,0x1
    800088c4:	fffff097          	auipc	ra,0xfffff
    800088c8:	854080e7          	jalr	-1964(ra) # 80007118 <mycpu>
    800088cc:	00197913          	andi	s2,s2,1
    800088d0:	07252e23          	sw	s2,124(a0)
    800088d4:	f75ff06f          	j	80008848 <acquire+0x3c>

00000000800088d8 <release>:
    800088d8:	fe010113          	addi	sp,sp,-32
    800088dc:	00813823          	sd	s0,16(sp)
    800088e0:	00113c23          	sd	ra,24(sp)
    800088e4:	00913423          	sd	s1,8(sp)
    800088e8:	01213023          	sd	s2,0(sp)
    800088ec:	02010413          	addi	s0,sp,32
    800088f0:	00052783          	lw	a5,0(a0)
    800088f4:	00079a63          	bnez	a5,80008908 <release+0x30>
    800088f8:	00001517          	auipc	a0,0x1
    800088fc:	e7050513          	addi	a0,a0,-400 # 80009768 <digits+0x28>
    80008900:	fffff097          	auipc	ra,0xfffff
    80008904:	1dc080e7          	jalr	476(ra) # 80007adc <panic>
    80008908:	01053903          	ld	s2,16(a0)
    8000890c:	00050493          	mv	s1,a0
    80008910:	fffff097          	auipc	ra,0xfffff
    80008914:	808080e7          	jalr	-2040(ra) # 80007118 <mycpu>
    80008918:	fea910e3          	bne	s2,a0,800088f8 <release+0x20>
    8000891c:	0004b823          	sd	zero,16(s1)
    80008920:	0ff0000f          	fence
    80008924:	0f50000f          	fence	iorw,ow
    80008928:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000892c:	ffffe097          	auipc	ra,0xffffe
    80008930:	7ec080e7          	jalr	2028(ra) # 80007118 <mycpu>
    80008934:	100027f3          	csrr	a5,sstatus
    80008938:	0027f793          	andi	a5,a5,2
    8000893c:	04079a63          	bnez	a5,80008990 <release+0xb8>
    80008940:	07852783          	lw	a5,120(a0)
    80008944:	02f05e63          	blez	a5,80008980 <release+0xa8>
    80008948:	fff7871b          	addiw	a4,a5,-1
    8000894c:	06e52c23          	sw	a4,120(a0)
    80008950:	00071c63          	bnez	a4,80008968 <release+0x90>
    80008954:	07c52783          	lw	a5,124(a0)
    80008958:	00078863          	beqz	a5,80008968 <release+0x90>
    8000895c:	100027f3          	csrr	a5,sstatus
    80008960:	0027e793          	ori	a5,a5,2
    80008964:	10079073          	csrw	sstatus,a5
    80008968:	01813083          	ld	ra,24(sp)
    8000896c:	01013403          	ld	s0,16(sp)
    80008970:	00813483          	ld	s1,8(sp)
    80008974:	00013903          	ld	s2,0(sp)
    80008978:	02010113          	addi	sp,sp,32
    8000897c:	00008067          	ret
    80008980:	00001517          	auipc	a0,0x1
    80008984:	e0850513          	addi	a0,a0,-504 # 80009788 <digits+0x48>
    80008988:	fffff097          	auipc	ra,0xfffff
    8000898c:	154080e7          	jalr	340(ra) # 80007adc <panic>
    80008990:	00001517          	auipc	a0,0x1
    80008994:	de050513          	addi	a0,a0,-544 # 80009770 <digits+0x30>
    80008998:	fffff097          	auipc	ra,0xfffff
    8000899c:	144080e7          	jalr	324(ra) # 80007adc <panic>

00000000800089a0 <holding>:
    800089a0:	00052783          	lw	a5,0(a0)
    800089a4:	00079663          	bnez	a5,800089b0 <holding+0x10>
    800089a8:	00000513          	li	a0,0
    800089ac:	00008067          	ret
    800089b0:	fe010113          	addi	sp,sp,-32
    800089b4:	00813823          	sd	s0,16(sp)
    800089b8:	00913423          	sd	s1,8(sp)
    800089bc:	00113c23          	sd	ra,24(sp)
    800089c0:	02010413          	addi	s0,sp,32
    800089c4:	01053483          	ld	s1,16(a0)
    800089c8:	ffffe097          	auipc	ra,0xffffe
    800089cc:	750080e7          	jalr	1872(ra) # 80007118 <mycpu>
    800089d0:	01813083          	ld	ra,24(sp)
    800089d4:	01013403          	ld	s0,16(sp)
    800089d8:	40a48533          	sub	a0,s1,a0
    800089dc:	00153513          	seqz	a0,a0
    800089e0:	00813483          	ld	s1,8(sp)
    800089e4:	02010113          	addi	sp,sp,32
    800089e8:	00008067          	ret

00000000800089ec <push_off>:
    800089ec:	fe010113          	addi	sp,sp,-32
    800089f0:	00813823          	sd	s0,16(sp)
    800089f4:	00113c23          	sd	ra,24(sp)
    800089f8:	00913423          	sd	s1,8(sp)
    800089fc:	02010413          	addi	s0,sp,32
    80008a00:	100024f3          	csrr	s1,sstatus
    80008a04:	100027f3          	csrr	a5,sstatus
    80008a08:	ffd7f793          	andi	a5,a5,-3
    80008a0c:	10079073          	csrw	sstatus,a5
    80008a10:	ffffe097          	auipc	ra,0xffffe
    80008a14:	708080e7          	jalr	1800(ra) # 80007118 <mycpu>
    80008a18:	07852783          	lw	a5,120(a0)
    80008a1c:	02078663          	beqz	a5,80008a48 <push_off+0x5c>
    80008a20:	ffffe097          	auipc	ra,0xffffe
    80008a24:	6f8080e7          	jalr	1784(ra) # 80007118 <mycpu>
    80008a28:	07852783          	lw	a5,120(a0)
    80008a2c:	01813083          	ld	ra,24(sp)
    80008a30:	01013403          	ld	s0,16(sp)
    80008a34:	0017879b          	addiw	a5,a5,1
    80008a38:	06f52c23          	sw	a5,120(a0)
    80008a3c:	00813483          	ld	s1,8(sp)
    80008a40:	02010113          	addi	sp,sp,32
    80008a44:	00008067          	ret
    80008a48:	0014d493          	srli	s1,s1,0x1
    80008a4c:	ffffe097          	auipc	ra,0xffffe
    80008a50:	6cc080e7          	jalr	1740(ra) # 80007118 <mycpu>
    80008a54:	0014f493          	andi	s1,s1,1
    80008a58:	06952e23          	sw	s1,124(a0)
    80008a5c:	fc5ff06f          	j	80008a20 <push_off+0x34>

0000000080008a60 <pop_off>:
    80008a60:	ff010113          	addi	sp,sp,-16
    80008a64:	00813023          	sd	s0,0(sp)
    80008a68:	00113423          	sd	ra,8(sp)
    80008a6c:	01010413          	addi	s0,sp,16
    80008a70:	ffffe097          	auipc	ra,0xffffe
    80008a74:	6a8080e7          	jalr	1704(ra) # 80007118 <mycpu>
    80008a78:	100027f3          	csrr	a5,sstatus
    80008a7c:	0027f793          	andi	a5,a5,2
    80008a80:	04079663          	bnez	a5,80008acc <pop_off+0x6c>
    80008a84:	07852783          	lw	a5,120(a0)
    80008a88:	02f05a63          	blez	a5,80008abc <pop_off+0x5c>
    80008a8c:	fff7871b          	addiw	a4,a5,-1
    80008a90:	06e52c23          	sw	a4,120(a0)
    80008a94:	00071c63          	bnez	a4,80008aac <pop_off+0x4c>
    80008a98:	07c52783          	lw	a5,124(a0)
    80008a9c:	00078863          	beqz	a5,80008aac <pop_off+0x4c>
    80008aa0:	100027f3          	csrr	a5,sstatus
    80008aa4:	0027e793          	ori	a5,a5,2
    80008aa8:	10079073          	csrw	sstatus,a5
    80008aac:	00813083          	ld	ra,8(sp)
    80008ab0:	00013403          	ld	s0,0(sp)
    80008ab4:	01010113          	addi	sp,sp,16
    80008ab8:	00008067          	ret
    80008abc:	00001517          	auipc	a0,0x1
    80008ac0:	ccc50513          	addi	a0,a0,-820 # 80009788 <digits+0x48>
    80008ac4:	fffff097          	auipc	ra,0xfffff
    80008ac8:	018080e7          	jalr	24(ra) # 80007adc <panic>
    80008acc:	00001517          	auipc	a0,0x1
    80008ad0:	ca450513          	addi	a0,a0,-860 # 80009770 <digits+0x30>
    80008ad4:	fffff097          	auipc	ra,0xfffff
    80008ad8:	008080e7          	jalr	8(ra) # 80007adc <panic>

0000000080008adc <push_on>:
    80008adc:	fe010113          	addi	sp,sp,-32
    80008ae0:	00813823          	sd	s0,16(sp)
    80008ae4:	00113c23          	sd	ra,24(sp)
    80008ae8:	00913423          	sd	s1,8(sp)
    80008aec:	02010413          	addi	s0,sp,32
    80008af0:	100024f3          	csrr	s1,sstatus
    80008af4:	100027f3          	csrr	a5,sstatus
    80008af8:	0027e793          	ori	a5,a5,2
    80008afc:	10079073          	csrw	sstatus,a5
    80008b00:	ffffe097          	auipc	ra,0xffffe
    80008b04:	618080e7          	jalr	1560(ra) # 80007118 <mycpu>
    80008b08:	07852783          	lw	a5,120(a0)
    80008b0c:	02078663          	beqz	a5,80008b38 <push_on+0x5c>
    80008b10:	ffffe097          	auipc	ra,0xffffe
    80008b14:	608080e7          	jalr	1544(ra) # 80007118 <mycpu>
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
    80008b40:	5dc080e7          	jalr	1500(ra) # 80007118 <mycpu>
    80008b44:	0014f493          	andi	s1,s1,1
    80008b48:	06952e23          	sw	s1,124(a0)
    80008b4c:	fc5ff06f          	j	80008b10 <push_on+0x34>

0000000080008b50 <pop_on>:
    80008b50:	ff010113          	addi	sp,sp,-16
    80008b54:	00813023          	sd	s0,0(sp)
    80008b58:	00113423          	sd	ra,8(sp)
    80008b5c:	01010413          	addi	s0,sp,16
    80008b60:	ffffe097          	auipc	ra,0xffffe
    80008b64:	5b8080e7          	jalr	1464(ra) # 80007118 <mycpu>
    80008b68:	100027f3          	csrr	a5,sstatus
    80008b6c:	0027f793          	andi	a5,a5,2
    80008b70:	04078463          	beqz	a5,80008bb8 <pop_on+0x68>
    80008b74:	07852783          	lw	a5,120(a0)
    80008b78:	02f05863          	blez	a5,80008ba8 <pop_on+0x58>
    80008b7c:	fff7879b          	addiw	a5,a5,-1
    80008b80:	06f52c23          	sw	a5,120(a0)
    80008b84:	07853783          	ld	a5,120(a0)
    80008b88:	00079863          	bnez	a5,80008b98 <pop_on+0x48>
    80008b8c:	100027f3          	csrr	a5,sstatus
    80008b90:	ffd7f793          	andi	a5,a5,-3
    80008b94:	10079073          	csrw	sstatus,a5
    80008b98:	00813083          	ld	ra,8(sp)
    80008b9c:	00013403          	ld	s0,0(sp)
    80008ba0:	01010113          	addi	sp,sp,16
    80008ba4:	00008067          	ret
    80008ba8:	00001517          	auipc	a0,0x1
    80008bac:	c0850513          	addi	a0,a0,-1016 # 800097b0 <digits+0x70>
    80008bb0:	fffff097          	auipc	ra,0xfffff
    80008bb4:	f2c080e7          	jalr	-212(ra) # 80007adc <panic>
    80008bb8:	00001517          	auipc	a0,0x1
    80008bbc:	bd850513          	addi	a0,a0,-1064 # 80009790 <digits+0x50>
    80008bc0:	fffff097          	auipc	ra,0xfffff
    80008bc4:	f1c080e7          	jalr	-228(ra) # 80007adc <panic>

0000000080008bc8 <__memset>:
    80008bc8:	ff010113          	addi	sp,sp,-16
    80008bcc:	00813423          	sd	s0,8(sp)
    80008bd0:	01010413          	addi	s0,sp,16
    80008bd4:	1a060e63          	beqz	a2,80008d90 <__memset+0x1c8>
    80008bd8:	40a007b3          	neg	a5,a0
    80008bdc:	0077f793          	andi	a5,a5,7
    80008be0:	00778693          	addi	a3,a5,7
    80008be4:	00b00813          	li	a6,11
    80008be8:	0ff5f593          	andi	a1,a1,255
    80008bec:	fff6071b          	addiw	a4,a2,-1
    80008bf0:	1b06e663          	bltu	a3,a6,80008d9c <__memset+0x1d4>
    80008bf4:	1cd76463          	bltu	a4,a3,80008dbc <__memset+0x1f4>
    80008bf8:	1a078e63          	beqz	a5,80008db4 <__memset+0x1ec>
    80008bfc:	00b50023          	sb	a1,0(a0)
    80008c00:	00100713          	li	a4,1
    80008c04:	1ae78463          	beq	a5,a4,80008dac <__memset+0x1e4>
    80008c08:	00b500a3          	sb	a1,1(a0)
    80008c0c:	00200713          	li	a4,2
    80008c10:	1ae78a63          	beq	a5,a4,80008dc4 <__memset+0x1fc>
    80008c14:	00b50123          	sb	a1,2(a0)
    80008c18:	00300713          	li	a4,3
    80008c1c:	18e78463          	beq	a5,a4,80008da4 <__memset+0x1dc>
    80008c20:	00b501a3          	sb	a1,3(a0)
    80008c24:	00400713          	li	a4,4
    80008c28:	1ae78263          	beq	a5,a4,80008dcc <__memset+0x204>
    80008c2c:	00b50223          	sb	a1,4(a0)
    80008c30:	00500713          	li	a4,5
    80008c34:	1ae78063          	beq	a5,a4,80008dd4 <__memset+0x20c>
    80008c38:	00b502a3          	sb	a1,5(a0)
    80008c3c:	00700713          	li	a4,7
    80008c40:	18e79e63          	bne	a5,a4,80008ddc <__memset+0x214>
    80008c44:	00b50323          	sb	a1,6(a0)
    80008c48:	00700e93          	li	t4,7
    80008c4c:	00859713          	slli	a4,a1,0x8
    80008c50:	00e5e733          	or	a4,a1,a4
    80008c54:	01059e13          	slli	t3,a1,0x10
    80008c58:	01c76e33          	or	t3,a4,t3
    80008c5c:	01859313          	slli	t1,a1,0x18
    80008c60:	006e6333          	or	t1,t3,t1
    80008c64:	02059893          	slli	a7,a1,0x20
    80008c68:	40f60e3b          	subw	t3,a2,a5
    80008c6c:	011368b3          	or	a7,t1,a7
    80008c70:	02859813          	slli	a6,a1,0x28
    80008c74:	0108e833          	or	a6,a7,a6
    80008c78:	03059693          	slli	a3,a1,0x30
    80008c7c:	003e589b          	srliw	a7,t3,0x3
    80008c80:	00d866b3          	or	a3,a6,a3
    80008c84:	03859713          	slli	a4,a1,0x38
    80008c88:	00389813          	slli	a6,a7,0x3
    80008c8c:	00f507b3          	add	a5,a0,a5
    80008c90:	00e6e733          	or	a4,a3,a4
    80008c94:	000e089b          	sext.w	a7,t3
    80008c98:	00f806b3          	add	a3,a6,a5
    80008c9c:	00e7b023          	sd	a4,0(a5)
    80008ca0:	00878793          	addi	a5,a5,8
    80008ca4:	fed79ce3          	bne	a5,a3,80008c9c <__memset+0xd4>
    80008ca8:	ff8e7793          	andi	a5,t3,-8
    80008cac:	0007871b          	sext.w	a4,a5
    80008cb0:	01d787bb          	addw	a5,a5,t4
    80008cb4:	0ce88e63          	beq	a7,a4,80008d90 <__memset+0x1c8>
    80008cb8:	00f50733          	add	a4,a0,a5
    80008cbc:	00b70023          	sb	a1,0(a4)
    80008cc0:	0017871b          	addiw	a4,a5,1
    80008cc4:	0cc77663          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008cc8:	00e50733          	add	a4,a0,a4
    80008ccc:	00b70023          	sb	a1,0(a4)
    80008cd0:	0027871b          	addiw	a4,a5,2
    80008cd4:	0ac77e63          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008cd8:	00e50733          	add	a4,a0,a4
    80008cdc:	00b70023          	sb	a1,0(a4)
    80008ce0:	0037871b          	addiw	a4,a5,3
    80008ce4:	0ac77663          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008ce8:	00e50733          	add	a4,a0,a4
    80008cec:	00b70023          	sb	a1,0(a4)
    80008cf0:	0047871b          	addiw	a4,a5,4
    80008cf4:	08c77e63          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008cf8:	00e50733          	add	a4,a0,a4
    80008cfc:	00b70023          	sb	a1,0(a4)
    80008d00:	0057871b          	addiw	a4,a5,5
    80008d04:	08c77663          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d08:	00e50733          	add	a4,a0,a4
    80008d0c:	00b70023          	sb	a1,0(a4)
    80008d10:	0067871b          	addiw	a4,a5,6
    80008d14:	06c77e63          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d18:	00e50733          	add	a4,a0,a4
    80008d1c:	00b70023          	sb	a1,0(a4)
    80008d20:	0077871b          	addiw	a4,a5,7
    80008d24:	06c77663          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d28:	00e50733          	add	a4,a0,a4
    80008d2c:	00b70023          	sb	a1,0(a4)
    80008d30:	0087871b          	addiw	a4,a5,8
    80008d34:	04c77e63          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d38:	00e50733          	add	a4,a0,a4
    80008d3c:	00b70023          	sb	a1,0(a4)
    80008d40:	0097871b          	addiw	a4,a5,9
    80008d44:	04c77663          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d48:	00e50733          	add	a4,a0,a4
    80008d4c:	00b70023          	sb	a1,0(a4)
    80008d50:	00a7871b          	addiw	a4,a5,10
    80008d54:	02c77e63          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d58:	00e50733          	add	a4,a0,a4
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	00b7871b          	addiw	a4,a5,11
    80008d64:	02c77663          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	00c7871b          	addiw	a4,a5,12
    80008d74:	00c77e63          	bgeu	a4,a2,80008d90 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	00d7879b          	addiw	a5,a5,13
    80008d84:	00c7f663          	bgeu	a5,a2,80008d90 <__memset+0x1c8>
    80008d88:	00f507b3          	add	a5,a0,a5
    80008d8c:	00b78023          	sb	a1,0(a5)
    80008d90:	00813403          	ld	s0,8(sp)
    80008d94:	01010113          	addi	sp,sp,16
    80008d98:	00008067          	ret
    80008d9c:	00b00693          	li	a3,11
    80008da0:	e55ff06f          	j	80008bf4 <__memset+0x2c>
    80008da4:	00300e93          	li	t4,3
    80008da8:	ea5ff06f          	j	80008c4c <__memset+0x84>
    80008dac:	00100e93          	li	t4,1
    80008db0:	e9dff06f          	j	80008c4c <__memset+0x84>
    80008db4:	00000e93          	li	t4,0
    80008db8:	e95ff06f          	j	80008c4c <__memset+0x84>
    80008dbc:	00000793          	li	a5,0
    80008dc0:	ef9ff06f          	j	80008cb8 <__memset+0xf0>
    80008dc4:	00200e93          	li	t4,2
    80008dc8:	e85ff06f          	j	80008c4c <__memset+0x84>
    80008dcc:	00400e93          	li	t4,4
    80008dd0:	e7dff06f          	j	80008c4c <__memset+0x84>
    80008dd4:	00500e93          	li	t4,5
    80008dd8:	e75ff06f          	j	80008c4c <__memset+0x84>
    80008ddc:	00600e93          	li	t4,6
    80008de0:	e6dff06f          	j	80008c4c <__memset+0x84>

0000000080008de4 <__memmove>:
    80008de4:	ff010113          	addi	sp,sp,-16
    80008de8:	00813423          	sd	s0,8(sp)
    80008dec:	01010413          	addi	s0,sp,16
    80008df0:	0e060863          	beqz	a2,80008ee0 <__memmove+0xfc>
    80008df4:	fff6069b          	addiw	a3,a2,-1
    80008df8:	0006881b          	sext.w	a6,a3
    80008dfc:	0ea5e863          	bltu	a1,a0,80008eec <__memmove+0x108>
    80008e00:	00758713          	addi	a4,a1,7
    80008e04:	00a5e7b3          	or	a5,a1,a0
    80008e08:	40a70733          	sub	a4,a4,a0
    80008e0c:	0077f793          	andi	a5,a5,7
    80008e10:	00f73713          	sltiu	a4,a4,15
    80008e14:	00174713          	xori	a4,a4,1
    80008e18:	0017b793          	seqz	a5,a5
    80008e1c:	00e7f7b3          	and	a5,a5,a4
    80008e20:	10078863          	beqz	a5,80008f30 <__memmove+0x14c>
    80008e24:	00900793          	li	a5,9
    80008e28:	1107f463          	bgeu	a5,a6,80008f30 <__memmove+0x14c>
    80008e2c:	0036581b          	srliw	a6,a2,0x3
    80008e30:	fff8081b          	addiw	a6,a6,-1
    80008e34:	02081813          	slli	a6,a6,0x20
    80008e38:	01d85893          	srli	a7,a6,0x1d
    80008e3c:	00858813          	addi	a6,a1,8
    80008e40:	00058793          	mv	a5,a1
    80008e44:	00050713          	mv	a4,a0
    80008e48:	01088833          	add	a6,a7,a6
    80008e4c:	0007b883          	ld	a7,0(a5)
    80008e50:	00878793          	addi	a5,a5,8
    80008e54:	00870713          	addi	a4,a4,8
    80008e58:	ff173c23          	sd	a7,-8(a4)
    80008e5c:	ff0798e3          	bne	a5,a6,80008e4c <__memmove+0x68>
    80008e60:	ff867713          	andi	a4,a2,-8
    80008e64:	02071793          	slli	a5,a4,0x20
    80008e68:	0207d793          	srli	a5,a5,0x20
    80008e6c:	00f585b3          	add	a1,a1,a5
    80008e70:	40e686bb          	subw	a3,a3,a4
    80008e74:	00f507b3          	add	a5,a0,a5
    80008e78:	06e60463          	beq	a2,a4,80008ee0 <__memmove+0xfc>
    80008e7c:	0005c703          	lbu	a4,0(a1)
    80008e80:	00e78023          	sb	a4,0(a5)
    80008e84:	04068e63          	beqz	a3,80008ee0 <__memmove+0xfc>
    80008e88:	0015c603          	lbu	a2,1(a1)
    80008e8c:	00100713          	li	a4,1
    80008e90:	00c780a3          	sb	a2,1(a5)
    80008e94:	04e68663          	beq	a3,a4,80008ee0 <__memmove+0xfc>
    80008e98:	0025c603          	lbu	a2,2(a1)
    80008e9c:	00200713          	li	a4,2
    80008ea0:	00c78123          	sb	a2,2(a5)
    80008ea4:	02e68e63          	beq	a3,a4,80008ee0 <__memmove+0xfc>
    80008ea8:	0035c603          	lbu	a2,3(a1)
    80008eac:	00300713          	li	a4,3
    80008eb0:	00c781a3          	sb	a2,3(a5)
    80008eb4:	02e68663          	beq	a3,a4,80008ee0 <__memmove+0xfc>
    80008eb8:	0045c603          	lbu	a2,4(a1)
    80008ebc:	00400713          	li	a4,4
    80008ec0:	00c78223          	sb	a2,4(a5)
    80008ec4:	00e68e63          	beq	a3,a4,80008ee0 <__memmove+0xfc>
    80008ec8:	0055c603          	lbu	a2,5(a1)
    80008ecc:	00500713          	li	a4,5
    80008ed0:	00c782a3          	sb	a2,5(a5)
    80008ed4:	00e68663          	beq	a3,a4,80008ee0 <__memmove+0xfc>
    80008ed8:	0065c703          	lbu	a4,6(a1)
    80008edc:	00e78323          	sb	a4,6(a5)
    80008ee0:	00813403          	ld	s0,8(sp)
    80008ee4:	01010113          	addi	sp,sp,16
    80008ee8:	00008067          	ret
    80008eec:	02061713          	slli	a4,a2,0x20
    80008ef0:	02075713          	srli	a4,a4,0x20
    80008ef4:	00e587b3          	add	a5,a1,a4
    80008ef8:	f0f574e3          	bgeu	a0,a5,80008e00 <__memmove+0x1c>
    80008efc:	02069613          	slli	a2,a3,0x20
    80008f00:	02065613          	srli	a2,a2,0x20
    80008f04:	fff64613          	not	a2,a2
    80008f08:	00e50733          	add	a4,a0,a4
    80008f0c:	00c78633          	add	a2,a5,a2
    80008f10:	fff7c683          	lbu	a3,-1(a5)
    80008f14:	fff78793          	addi	a5,a5,-1
    80008f18:	fff70713          	addi	a4,a4,-1
    80008f1c:	00d70023          	sb	a3,0(a4)
    80008f20:	fec798e3          	bne	a5,a2,80008f10 <__memmove+0x12c>
    80008f24:	00813403          	ld	s0,8(sp)
    80008f28:	01010113          	addi	sp,sp,16
    80008f2c:	00008067          	ret
    80008f30:	02069713          	slli	a4,a3,0x20
    80008f34:	02075713          	srli	a4,a4,0x20
    80008f38:	00170713          	addi	a4,a4,1
    80008f3c:	00e50733          	add	a4,a0,a4
    80008f40:	00050793          	mv	a5,a0
    80008f44:	0005c683          	lbu	a3,0(a1)
    80008f48:	00178793          	addi	a5,a5,1
    80008f4c:	00158593          	addi	a1,a1,1
    80008f50:	fed78fa3          	sb	a3,-1(a5)
    80008f54:	fee798e3          	bne	a5,a4,80008f44 <__memmove+0x160>
    80008f58:	f89ff06f          	j	80008ee0 <__memmove+0xfc>
	...
