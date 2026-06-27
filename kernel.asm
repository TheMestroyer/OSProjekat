
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	b7013103          	ld	sp,-1168(sp) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3ec070ef          	jal	ra,80007408 <start>

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
    80001248:	6a8020ef          	jal	ra,800038f0 <HandleInterupt>

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
    80001308:	4c4080e7          	jalr	1220(ra) # 800017c8 <putc>
    8000130c:	03e00513          	li	a0,62
    80001310:	00000097          	auipc	ra,0x0
    80001314:	4b8080e7          	jalr	1208(ra) # 800017c8 <putc>
    80001318:	00c0006f          	j	80001324 <echoBody+0x34>
    while (1) {
        char c = getc();
        if (c != '\r') putc(c);
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	4ac080e7          	jalr	1196(ra) # 800017c8 <putc>
        char c = getc();
    80001324:	00000097          	auipc	ra,0x0
    80001328:	480080e7          	jalr	1152(ra) # 800017a4 <getc>
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
    80001364:	84890913          	addi	s2,s2,-1976 # 8000cba8 <mutex>
    80001368:	00093503          	ld	a0,0(s2)
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	3b0080e7          	jalr	944(ra) # 8000171c <sem_wait>
        putc('['); putc(id); putc(']');
    80001374:	05b00513          	li	a0,91
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	450080e7          	jalr	1104(ra) # 800017c8 <putc>
    80001380:	00098513          	mv	a0,s3
    80001384:	00000097          	auipc	ra,0x0
    80001388:	444080e7          	jalr	1092(ra) # 800017c8 <putc>
    8000138c:	05d00513          	li	a0,93
    80001390:	00000097          	auipc	ra,0x0
    80001394:	438080e7          	jalr	1080(ra) # 800017c8 <putc>
        sem_signal(mutex);
    80001398:	00093503          	ld	a0,0(s2)
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	3a8080e7          	jalr	936(ra) # 80001744 <sem_signal>
        time_sleep(2);
    800013a4:	00200513          	li	a0,2
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	2ec080e7          	jalr	748(ra) # 80001694 <time_sleep>
    for (int i = 0; i < 3; i++) {
    800013b0:	0014849b          	addiw	s1,s1,1
    800013b4:	00200793          	li	a5,2
    800013b8:	fa97d4e3          	bge	a5,s1,80001360 <worker+0x28>
    sem_signal(done);
    800013bc:	0000b517          	auipc	a0,0xb
    800013c0:	7e453503          	ld	a0,2020(a0) # 8000cba0 <done>
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	380080e7          	jalr	896(ra) # 80001744 <sem_signal>
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
    80001430:	39c080e7          	jalr	924(ra) # 800017c8 <putc>
    80001434:	0014c503          	lbu	a0,1(s1)
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	390080e7          	jalr	912(ra) # 800017c8 <putc>
    80001440:	0024c503          	lbu	a0,2(s1)
    80001444:	00000097          	auipc	ra,0x0
    80001448:	384080e7          	jalr	900(ra) # 800017c8 <putc>
    8000144c:	0034c503          	lbu	a0,3(s1)
    80001450:	00000097          	auipc	ra,0x0
    80001454:	378080e7          	jalr	888(ra) # 800017c8 <putc>
    mem_free(buf);
    80001458:	00048513          	mv	a0,s1
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	124080e7          	jalr	292(ra) # 80001580 <mem_free>

    sem_open(&mutex, 1);
    80001464:	00100593          	li	a1,1
    80001468:	0000b517          	auipc	a0,0xb
    8000146c:	74050513          	addi	a0,a0,1856 # 8000cba8 <mutex>
    80001470:	00000097          	auipc	ra,0x0
    80001474:	24c080e7          	jalr	588(ra) # 800016bc <sem_open>
    sem_open(&done, 0);
    80001478:	00000593          	li	a1,0
    8000147c:	0000b517          	auipc	a0,0xb
    80001480:	72450513          	addi	a0,a0,1828 # 8000cba0 <done>
    80001484:	00000097          	auipc	ra,0x0
    80001488:	238080e7          	jalr	568(ra) # 800016bc <sem_open>
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
    800014d8:	6cc48493          	addi	s1,s1,1740 # 8000cba0 <done>
    800014dc:	00300593          	li	a1,3
    800014e0:	0004b503          	ld	a0,0(s1)
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	288080e7          	jalr	648(ra) # 8000176c <sem_wait_n>
    sem_close(mutex);
    800014ec:	0000b517          	auipc	a0,0xb
    800014f0:	6bc53503          	ld	a0,1724(a0) # 8000cba8 <mutex>
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	200080e7          	jalr	512(ra) # 800016f4 <sem_close>
    sem_close(done);
    800014fc:	0004b503          	ld	a0,0(s1)
    80001500:	00000097          	auipc	ra,0x0
    80001504:	1f4080e7          	jalr	500(ra) # 800016f4 <sem_close>
    putc('\n'); putc('O'); putc('K'); putc('\n');
    80001508:	00a00513          	li	a0,10
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	2bc080e7          	jalr	700(ra) # 800017c8 <putc>
    80001514:	04f00513          	li	a0,79
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	2b0080e7          	jalr	688(ra) # 800017c8 <putc>
    80001520:	04b00513          	li	a0,75
    80001524:	00000097          	auipc	ra,0x0
    80001528:	2a4080e7          	jalr	676(ra) # 800017c8 <putc>
    8000152c:	00a00513          	li	a0,10
    80001530:	00000097          	auipc	ra,0x0
    80001534:	298080e7          	jalr	664(ra) # 800017c8 <putc>

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
    80001638:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x14;
    8000163c:	01400513          	li	a0,20
    register size_t a1 asm("a1") = (size_t)thread;
    __asm__ volatile("ecall" : "+r"(a0):"r"(a1));
    80001640:	00000073          	ecall
}
    80001644:	00813403          	ld	s0,8(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <thread_exit>:

int thread_exit(void) {
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00813423          	sd	s0,8(sp)
    80001658:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x12;
    8000165c:	01200513          	li	a0,18
    __asm__ volatile("ecall" : "+r"(a0));
    80001660:	00000073          	ecall
    return (int)a0;
}
    80001664:	0005051b          	sext.w	a0,a0
    80001668:	00813403          	ld	s0,8(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <thread_dispatch>:

void thread_dispatch(void) {
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x13;
    80001680:	01300513          	li	a0,19
    __asm__ volatile("ecall" : "+r"(a0));
    80001684:	00000073          	ecall
}
    80001688:	00813403          	ld	s0,8(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <time_sleep>:

int time_sleep(time_t dur) {
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00813423          	sd	s0,8(sp)
    8000169c:	01010413          	addi	s0,sp,16
    800016a0:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x31;
    800016a4:	03100513          	li	a0,49
    register size_t a1 asm("a1") = (size_t)dur;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800016a8:	00000073          	ecall
    return (int)a0;
}
    800016ac:	0005051b          	sext.w	a0,a0
    800016b0:	00813403          	ld	s0,8(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <sem_open>:

int sem_open(sem_t* handle, unsigned init) {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00813423          	sd	s0,8(sp)
    800016c4:	01010413          	addi	s0,sp,16
    800016c8:	00050793          	mv	a5,a0
    800016cc:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x21;
    800016d0:	02100513          	li	a0,33
    register size_t a1 asm("a1") = (size_t)handle;
    800016d4:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)init;
    800016d8:	02061613          	slli	a2,a2,0x20
    800016dc:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    800016e0:	00000073          	ecall
    return (int)a0;
}
    800016e4:	0005051b          	sext.w	a0,a0
    800016e8:	00813403          	ld	s0,8(sp)
    800016ec:	01010113          	addi	sp,sp,16
    800016f0:	00008067          	ret

00000000800016f4 <sem_close>:

int sem_close(sem_t handle) {
    800016f4:	ff010113          	addi	sp,sp,-16
    800016f8:	00813423          	sd	s0,8(sp)
    800016fc:	01010413          	addi	s0,sp,16
    80001700:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x22;
    80001704:	02200513          	li	a0,34
    register size_t a1 asm("a1") = (size_t)handle;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001708:	00000073          	ecall
    return (int)a0;
}
    8000170c:	0005051b          	sext.w	a0,a0
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <sem_wait>:

int sem_wait(sem_t id) {
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00813423          	sd	s0,8(sp)
    80001724:	01010413          	addi	s0,sp,16
    80001728:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x23;
    8000172c:	02300513          	li	a0,35
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001730:	00000073          	ecall
    return (int)a0;
}
    80001734:	0005051b          	sext.w	a0,a0
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <sem_signal>:

int sem_signal(sem_t id) {
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00813423          	sd	s0,8(sp)
    8000174c:	01010413          	addi	s0,sp,16
    80001750:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x24;
    80001754:	02400513          	li	a0,36
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001758:	00000073          	ecall
    return (int)a0;
}
    8000175c:	0005051b          	sext.w	a0,a0
    80001760:	00813403          	ld	s0,8(sp)
    80001764:	01010113          	addi	sp,sp,16
    80001768:	00008067          	ret

000000008000176c <sem_wait_n>:

int sem_wait_n(sem_t id, unsigned n) {
    8000176c:	ff010113          	addi	sp,sp,-16
    80001770:	00813423          	sd	s0,8(sp)
    80001774:	01010413          	addi	s0,sp,16
    80001778:	00050793          	mv	a5,a0
    8000177c:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x25;
    80001780:	02500513          	li	a0,37
    register size_t a1 asm("a1") = (size_t)id;
    80001784:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    80001788:	02061613          	slli	a2,a2,0x20
    8000178c:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001790:	00000073          	ecall
    return (int)a0;
}
    80001794:	0005051b          	sext.w	a0,a0
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <getc>:

char getc(void) {
    800017a4:	ff010113          	addi	sp,sp,-16
    800017a8:	00813423          	sd	s0,8(sp)
    800017ac:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x41;
    800017b0:	04100513          	li	a0,65
    __asm__ volatile("ecall" : "+r"(a0));
    800017b4:	00000073          	ecall
    return (char)a0;
}
    800017b8:	0ff57513          	andi	a0,a0,255
    800017bc:	00813403          	ld	s0,8(sp)
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret

00000000800017c8 <putc>:

void putc(char c) {
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00813423          	sd	s0,8(sp)
    800017d0:	01010413          	addi	s0,sp,16
    800017d4:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x42;
    800017d8:	04200513          	li	a0,66
    register size_t a1 asm("a1") = (size_t)(unsigned char)c;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800017dc:	00000073          	ecall
}
    800017e0:	00813403          	ld	s0,8(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <sys_halt>:

void sys_halt(void) {
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00813423          	sd	s0,8(sp)
    800017f4:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0xFF;
    800017f8:	0ff00513          	li	a0,255
    __asm__ volatile("ecall" : "+r"(a0));
    800017fc:	00000073          	ecall
}
    80001800:	00813403          	ld	s0,8(sp)
    80001804:	01010113          	addi	sp,sp,16
    80001808:	00008067          	ret

000000008000180c <sem_signal_n>:

int sem_signal_n(sem_t id, unsigned n) {
    8000180c:	ff010113          	addi	sp,sp,-16
    80001810:	00813423          	sd	s0,8(sp)
    80001814:	01010413          	addi	s0,sp,16
    80001818:	00050793          	mv	a5,a0
    8000181c:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x26;
    80001820:	02600513          	li	a0,38
    register size_t a1 asm("a1") = (size_t)id;
    80001824:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    80001828:	02061613          	slli	a2,a2,0x20
    8000182c:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001830:	00000073          	ecall
    return (int)a0;
    80001834:	0005051b          	sext.w	a0,a0
    80001838:	00813403          	ld	s0,8(sp)
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret

0000000080001844 <userMainWrapper>:
#include "syscall_c.h"
#include "../lib/console.h"

void userMainK();

static void userMainWrapper() {
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00113423          	sd	ra,8(sp)
    8000184c:	00813023          	sd	s0,0(sp)
    80001850:	01010413          	addi	s0,sp,16
    userMainK();
    80001854:	00001097          	auipc	ra,0x1
    80001858:	2c8080e7          	jalr	712(ra) # 80002b1c <userMainK>
    sys_halt();
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	f90080e7          	jalr	-112(ra) # 800017ec <sys_halt>
    while (1) {}
    80001864:	0000006f          	j	80001864 <userMainWrapper+0x20>

0000000080001868 <drop_to_user>:
}

void drop_to_user(void (*fn)()) {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00813423          	sd	s0,8(sp)
    80001870:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001874:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001878:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    8000187c:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    80001880:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001884:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    80001888:	10200073          	sret
}
    8000188c:	00813403          	ld	s0,8(sp)
    80001890:	01010113          	addi	sp,sp,16
    80001894:	00008067          	ret

0000000080001898 <main>:

void interupt();
int main() {
    80001898:	ff010113          	addi	sp,sp,-16
    8000189c:	00113423          	sd	ra,8(sp)
    800018a0:	00813023          	sd	s0,0(sp)
    800018a4:	01010413          	addi	s0,sp,16
    start_main_thread();
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	464080e7          	jalr	1124(ra) # 80003d0c <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    800018b0:	00000797          	auipc	a5,0x0
    800018b4:	91078793          	addi	a5,a5,-1776 # 800011c0 <interupt>
    800018b8:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0" :: "r"((uint64)(0x2 | 0x200)));
    800018bc:	20200793          	li	a5,514
    800018c0:	10479073          	csrw	sie,a5
    drop_to_user(userMainWrapper);
    800018c4:	00000517          	auipc	a0,0x0
    800018c8:	f8050513          	addi	a0,a0,-128 # 80001844 <userMainWrapper>
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	f9c080e7          	jalr	-100(ra) # 80001868 <drop_to_user>
    return 0;
    800018d4:	00000513          	li	a0,0
    800018d8:	00813083          	ld	ra,8(sp)
    800018dc:	00013403          	ld	s0,0(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <_ZN10KSemaphore4initEj>:
//

#include "Semaphore.hpp"
#include "Scheduler.hpp"

void KSemaphore::init(unsigned initialValue) {
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00813423          	sd	s0,8(sp)
    800018f0:	01010413          	addi	s0,sp,16
    blockedHead = nullptr;
    800018f4:	00053423          	sd	zero,8(a0)
    blockedTail = nullptr;
    800018f8:	00053823          	sd	zero,16(a0)
    value = (int)initialValue;
    800018fc:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001900:	00050223          	sb	zero,4(a0)
}
    80001904:	00813403          	ld	s0,8(sp)
    80001908:	01010113          	addi	sp,sp,16
    8000190c:	00008067          	ret

0000000080001910 <_ZN10KSemaphore7enqueueEP7KThread>:

void KSemaphore::enqueue(KThread* thread) {
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	01213023          	sd	s2,0(sp)
    80001924:	02010413          	addi	s0,sp,32
    80001928:	00050913          	mv	s2,a0
    8000192c:	00058493          	mv	s1,a1
    thread->setNextInQueue(nullptr);
    80001930:	00000593          	li	a1,0
    80001934:	00048513          	mv	a0,s1
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	4a4080e7          	jalr	1188(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    80001940:	01093583          	ld	a1,16(s2)
    80001944:	02058e63          	beqz	a1,80001980 <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        thread->setPrevInQueue(blockedTail);
    80001948:	00048513          	mv	a0,s1
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	4ac080e7          	jalr	1196(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    80001954:	00048593          	mv	a1,s1
    80001958:	01093503          	ld	a0,16(s2)
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	480080e7          	jalr	1152(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        blockedHead = thread;
    }
    blockedTail = thread;
    80001964:	00993823          	sd	s1,16(s2)
}
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	00013903          	ld	s2,0(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80001980:	00000593          	li	a1,0
    80001984:	00048513          	mv	a0,s1
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	470080e7          	jalr	1136(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
        blockedHead = thread;
    80001990:	00993423          	sd	s1,8(s2)
    80001994:	fd1ff06f          	j	80001964 <_ZN10KSemaphore7enqueueEP7KThread+0x54>

0000000080001998 <_ZN10KSemaphore7dequeueEv>:

KThread* KSemaphore::dequeue() {
    80001998:	fe010113          	addi	sp,sp,-32
    8000199c:	00113c23          	sd	ra,24(sp)
    800019a0:	00813823          	sd	s0,16(sp)
    800019a4:	00913423          	sd	s1,8(sp)
    800019a8:	01213023          	sd	s2,0(sp)
    800019ac:	02010413          	addi	s0,sp,32
    if (blockedHead == nullptr) return nullptr;
    800019b0:	00853483          	ld	s1,8(a0)
    800019b4:	04048463          	beqz	s1,800019fc <_ZN10KSemaphore7dequeueEv+0x64>
    800019b8:	00050913          	mv	s2,a0
    KThread* thread = blockedHead;
    blockedHead = thread->getNextInQueue();
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	3e4080e7          	jalr	996(ra) # 80001da4 <_ZN7KThread14getNextInQueueEv>
    800019c8:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    800019cc:	04050663          	beqz	a0,80001a18 <_ZN10KSemaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    800019d0:	00000593          	li	a1,0
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	424080e7          	jalr	1060(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    800019dc:	00000593          	li	a1,0
    800019e0:	00048513          	mv	a0,s1
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	3f8080e7          	jalr	1016(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800019ec:	00000593          	li	a1,0
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	404080e7          	jalr	1028(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
    return thread;
}
    800019fc:	00048513          	mv	a0,s1
    80001a00:	01813083          	ld	ra,24(sp)
    80001a04:	01013403          	ld	s0,16(sp)
    80001a08:	00813483          	ld	s1,8(sp)
    80001a0c:	00013903          	ld	s2,0(sp)
    80001a10:	02010113          	addi	sp,sp,32
    80001a14:	00008067          	ret
    else blockedTail = nullptr;
    80001a18:	00093823          	sd	zero,16(s2)
    80001a1c:	fc1ff06f          	j	800019dc <_ZN10KSemaphore7dequeueEv+0x44>

0000000080001a20 <_ZN10KSemaphore4waitEP7KThread>:

int KSemaphore::wait(KThread* caller) {
    if (closed) { return -1; }
    80001a20:	00454783          	lbu	a5,4(a0)
    80001a24:	04079a63          	bnez	a5,80001a78 <_ZN10KSemaphore4waitEP7KThread+0x58>
    if (value > 0) { value--; return 0; }
    80001a28:	00052783          	lw	a5,0(a0)
    80001a2c:	00f05a63          	blez	a5,80001a40 <_ZN10KSemaphore4waitEP7KThread+0x20>
    80001a30:	fff7879b          	addiw	a5,a5,-1
    80001a34:	00f52023          	sw	a5,0(a0)
    80001a38:	00000513          	li	a0,0
    80001a3c:	00008067          	ret
int KSemaphore::wait(KThread* caller) {
    80001a40:	ff010113          	addi	sp,sp,-16
    80001a44:	00113423          	sd	ra,8(sp)
    80001a48:	00813023          	sd	s0,0(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    caller->sleepDelta = 1;
    80001a50:	00100793          	li	a5,1
    80001a54:	04f5b023          	sd	a5,64(a1)
    caller->threadContext.x[10] = 0;
    80001a58:	0a05bc23          	sd	zero,184(a1)
    enqueue(caller);
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	eb4080e7          	jalr	-332(ra) # 80001910 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001a64:	00100513          	li	a0,1
}
    80001a68:	00813083          	ld	ra,8(sp)
    80001a6c:	00013403          	ld	s0,0(sp)
    80001a70:	01010113          	addi	sp,sp,16
    80001a74:	00008067          	ret
    if (closed) { return -1; }
    80001a78:	fff00513          	li	a0,-1
}
    80001a7c:	00008067          	ret

0000000080001a80 <_ZN10KSemaphore6signalEv>:

int KSemaphore::signal() {
    value+=1;
    80001a80:	00052783          	lw	a5,0(a0)
    80001a84:	0017879b          	addiw	a5,a5,1
    80001a88:	0007871b          	sext.w	a4,a5
    80001a8c:	00f52023          	sw	a5,0(a0)
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a90:	00853783          	ld	a5,8(a0)
    80001a94:	06078063          	beqz	a5,80001af4 <_ZN10KSemaphore6signalEv+0x74>
int KSemaphore::signal() {
    80001a98:	fe010113          	addi	sp,sp,-32
    80001a9c:	00113c23          	sd	ra,24(sp)
    80001aa0:	00813823          	sd	s0,16(sp)
    80001aa4:	00913423          	sd	s1,8(sp)
    80001aa8:	02010413          	addi	s0,sp,32
    80001aac:	00050493          	mv	s1,a0
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001ab0:	0407a783          	lw	a5,64(a5)
    80001ab4:	00f75e63          	bge	a4,a5,80001ad0 <_ZN10KSemaphore6signalEv+0x50>
        KThread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}
    80001ab8:	00000513          	li	a0,0
    80001abc:	01813083          	ld	ra,24(sp)
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	00813483          	ld	s1,8(sp)
    80001ac8:	02010113          	addi	sp,sp,32
    80001acc:	00008067          	ret
        KThread* thread = dequeue();
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	ec8080e7          	jalr	-312(ra) # 80001998 <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001ad8:	04053703          	ld	a4,64(a0)
    80001adc:	0004a783          	lw	a5,0(s1)
    80001ae0:	40e787bb          	subw	a5,a5,a4
    80001ae4:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	5c8080e7          	jalr	1480(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
    80001af0:	fc9ff06f          	j	80001ab8 <_ZN10KSemaphore6signalEv+0x38>
}
    80001af4:	00000513          	li	a0,0
    80001af8:	00008067          	ret

0000000080001afc <_ZN10KSemaphore5waitNEP7KThreadj>:

int KSemaphore::waitN(KThread* caller, unsigned n) {
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001afc:	00454783          	lbu	a5,4(a0)
    80001b00:	02079063          	bnez	a5,80001b20 <_ZN10KSemaphore5waitNEP7KThreadj+0x24>
    if (value >= (int)n) { value -= (int)n; return 0; }
    80001b04:	00052783          	lw	a5,0(a0)
    80001b08:	0006071b          	sext.w	a4,a2
    80001b0c:	02e7c263          	blt	a5,a4,80001b30 <_ZN10KSemaphore5waitNEP7KThreadj+0x34>
    80001b10:	40e787bb          	subw	a5,a5,a4
    80001b14:	00f52023          	sw	a5,0(a0)
    80001b18:	00000513          	li	a0,0
    caller->sleepDelta = (time_t)n;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}
    80001b1c:	00008067          	ret
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001b20:	fff00793          	li	a5,-1
    80001b24:	0af5bc23          	sd	a5,184(a1)
    80001b28:	fff00513          	li	a0,-1
    80001b2c:	00008067          	ret
int KSemaphore::waitN(KThread* caller, unsigned n) {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    caller->sleepDelta = (time_t)n;
    80001b40:	02061613          	slli	a2,a2,0x20
    80001b44:	02065613          	srli	a2,a2,0x20
    80001b48:	04c5b023          	sd	a2,64(a1)
    caller->threadContext.x[10] = 0;
    80001b4c:	0a05bc23          	sd	zero,184(a1)
    enqueue(caller);
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	dc0080e7          	jalr	-576(ra) # 80001910 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001b58:	00100513          	li	a0,1
}
    80001b5c:	00813083          	ld	ra,8(sp)
    80001b60:	00013403          	ld	s0,0(sp)
    80001b64:	01010113          	addi	sp,sp,16
    80001b68:	00008067          	ret

0000000080001b6c <_ZN10KSemaphore7signalNEj>:

int KSemaphore::signalN(unsigned n) {
    80001b6c:	fe010113          	addi	sp,sp,-32
    80001b70:	00113c23          	sd	ra,24(sp)
    80001b74:	00813823          	sd	s0,16(sp)
    80001b78:	00913423          	sd	s1,8(sp)
    80001b7c:	02010413          	addi	s0,sp,32
    80001b80:	00050493          	mv	s1,a0
    value += (int)n;
    80001b84:	00052783          	lw	a5,0(a0)
    80001b88:	00b787bb          	addw	a5,a5,a1
    80001b8c:	00f52023          	sw	a5,0(a0)
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001b90:	0084b783          	ld	a5,8(s1)
    80001b94:	02078c63          	beqz	a5,80001bcc <_ZN10KSemaphore7signalNEj+0x60>
    80001b98:	0004a703          	lw	a4,0(s1)
    80001b9c:	0407a783          	lw	a5,64(a5)
    80001ba0:	02f74663          	blt	a4,a5,80001bcc <_ZN10KSemaphore7signalNEj+0x60>
        KThread* thread = dequeue();
    80001ba4:	00048513          	mv	a0,s1
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	df0080e7          	jalr	-528(ra) # 80001998 <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001bb0:	04053703          	ld	a4,64(a0)
    80001bb4:	0004a783          	lw	a5,0(s1)
    80001bb8:	40e787bb          	subw	a5,a5,a4
    80001bbc:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	4f0080e7          	jalr	1264(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001bc8:	fc9ff06f          	j	80001b90 <_ZN10KSemaphore7signalNEj+0x24>
    }
    return 0;
}
    80001bcc:	00000513          	li	a0,0
    80001bd0:	01813083          	ld	ra,24(sp)
    80001bd4:	01013403          	ld	s0,16(sp)
    80001bd8:	00813483          	ld	s1,8(sp)
    80001bdc:	02010113          	addi	sp,sp,32
    80001be0:	00008067          	ret

0000000080001be4 <_ZN10KSemaphore5closeEv>:

int KSemaphore::close() {
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00113c23          	sd	ra,24(sp)
    80001bec:	00813823          	sd	s0,16(sp)
    80001bf0:	00913423          	sd	s1,8(sp)
    80001bf4:	02010413          	addi	s0,sp,32
    80001bf8:	00050493          	mv	s1,a0
    closed = true;
    80001bfc:	00100793          	li	a5,1
    80001c00:	00f50223          	sb	a5,4(a0)
    KThread* thread = dequeue();
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	d94080e7          	jalr	-620(ra) # 80001998 <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001c0c:	02050263          	beqz	a0,80001c30 <_ZN10KSemaphore5closeEv+0x4c>
        thread->threadContext.x[10] = (size_t)-1;
    80001c10:	fff00793          	li	a5,-1
    80001c14:	0af53c23          	sd	a5,184(a0)
        Scheduler::Put(thread);
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	498080e7          	jalr	1176(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
        thread = dequeue();
    80001c20:	00048513          	mv	a0,s1
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	d74080e7          	jalr	-652(ra) # 80001998 <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001c2c:	fe1ff06f          	j	80001c0c <_ZN10KSemaphore5closeEv+0x28>
    }
    return 0;
    80001c30:	00000513          	li	a0,0
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	01013403          	ld	s0,16(sp)
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	02010113          	addi	sp,sp,32
    80001c44:	00008067          	ret

0000000080001c48 <_ZN7KThread16threadTrampolineEPS_>:
    sstatus_val &= ~(1UL << 8); // SPP=0
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void KThread::threadTrampoline(KThread* t) {
    80001c48:	fe010113          	addi	sp,sp,-32
    80001c4c:	00113c23          	sd	ra,24(sp)
    80001c50:	00813823          	sd	s0,16(sp)
    80001c54:	00913423          	sd	s1,8(sp)
    80001c58:	02010413          	addi	s0,sp,32
    80001c5c:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001c60:	00053783          	ld	a5,0(a0)
    80001c64:	00078663          	beqz	a5,80001c70 <_ZN7KThread16threadTrampolineEPS_+0x28>
    80001c68:	00853503          	ld	a0,8(a0)
    80001c6c:	000780e7          	jalr	a5
    t->finished=true;
    80001c70:	00100793          	li	a5,1
    80001c74:	00f48c23          	sb	a5,24(s1)
    __asm__ volatile("li a0, 0x12; ecall");
    80001c78:	01200513          	li	a0,18
    80001c7c:	00000073          	ecall
    80001c80:	01813083          	ld	ra,24(sp)
    80001c84:	01013403          	ld	s0,16(sp)
    80001c88:	00813483          	ld	s1,8(sp)
    80001c8c:	02010113          	addi	sp,sp,32
    80001c90:	00008067          	ret

0000000080001c94 <_ZN7KThreadC1Ev>:
KThread::KThread() {
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00813423          	sd	s0,8(sp)
    80001c9c:	01010413          	addi	s0,sp,16
}
    80001ca0:	00813403          	ld	s0,8(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_ZN7KThread4initEv>:
void KThread::init() {
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00813423          	sd	s0,8(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001cb8:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001cbc:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001cc0:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001cc4:	02053023          	sd	zero,32(a0)
    next = nullptr;
    80001cc8:	02053423          	sd	zero,40(a0)
    stackPtr = nullptr;
    80001ccc:	02053823          	sd	zero,48(a0)
    supervisorSp = nullptr;
    80001cd0:	02053c23          	sd	zero,56(a0)
    stackBase = nullptr;
    80001cd4:	06053023          	sd	zero,96(a0)
    sleepDelta = 0;
    80001cd8:	04053023          	sd	zero,64(a0)
    priority = 0;
    80001cdc:	04050423          	sb	zero,72(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001ce0:	00000713          	li	a4,0
    80001ce4:	01f00793          	li	a5,31
    80001ce8:	00e7ce63          	blt	a5,a4,80001d04 <_ZN7KThread4initEv+0x58>
    80001cec:	00c70793          	addi	a5,a4,12 # 800c <_entry-0x7fff7ff4>
    80001cf0:	00379793          	slli	a5,a5,0x3
    80001cf4:	00f507b3          	add	a5,a0,a5
    80001cf8:	0007b423          	sd	zero,8(a5)
    80001cfc:	0017071b          	addiw	a4,a4,1
    80001d00:	fe5ff06f          	j	80001ce4 <_ZN7KThread4initEv+0x38>
    threadContext.sepc = 0;
    80001d04:	16053423          	sd	zero,360(a0)
    threadContext.sstatus = 0;
    80001d08:	16053823          	sd	zero,368(a0)
    threadContext.pc = 0;
    80001d0c:	16053c23          	sd	zero,376(a0)
    finished=false;
    80001d10:	00050c23          	sb	zero,24(a0)
    waitingThread=nullptr;
    80001d14:	04053823          	sd	zero,80(a0)
    stopperThread=nullptr;
    80001d18:	04053c23          	sd	zero,88(a0)
}
    80001d1c:	00813403          	ld	s0,8(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813423          	sd	s0,8(sp)
    80001d30:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001d34:	00000713          	li	a4,0
    80001d38:	01f00793          	li	a5,31
    80001d3c:	02e7c463          	blt	a5,a4,80001d64 <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001d40:	00371793          	slli	a5,a4,0x3
    80001d44:	00f587b3          	add	a5,a1,a5
    80001d48:	0007b683          	ld	a3,0(a5)
    80001d4c:	00c70793          	addi	a5,a4,12
    80001d50:	00379793          	slli	a5,a5,0x3
    80001d54:	00f507b3          	add	a5,a0,a5
    80001d58:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    80001d5c:	0017071b          	addiw	a4,a4,1
    80001d60:	fd9ff06f          	j	80001d38 <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001d64:	03053783          	ld	a5,48(a0)
    80001d68:	06f53c23          	sd	a5,120(a0)
    threadContext.sepc = cont->sepc;
    80001d6c:	1005b783          	ld	a5,256(a1)
    80001d70:	16f53423          	sd	a5,360(a0)
    threadContext.sstatus =cont->sstatus;
    80001d74:	1085b783          	ld	a5,264(a1)
    80001d78:	16f53823          	sd	a5,368(a0)
}
    80001d7c:	00813403          	ld	s0,8(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
}
    80001d94:	06850513          	addi	a0,a0,104
    80001d98:	00813403          	ld	s0,8(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00813423          	sd	s0,8(sp)
    80001dac:	01010413          	addi	s0,sp,16
}
    80001db0:	02853503          	ld	a0,40(a0)
    80001db4:	00813403          	ld	s0,8(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00813423          	sd	s0,8(sp)
    80001dc8:	01010413          	addi	s0,sp,16
}
    80001dcc:	02053503          	ld	a0,32(a0)
    80001dd0:	00813403          	ld	s0,8(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    this->next = next;
    80001de8:	02b53423          	sd	a1,40(a0)
}
    80001dec:	00813403          	ld	s0,8(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret

0000000080001df8 <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00813423          	sd	s0,8(sp)
    80001e00:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001e04:	02b53023          	sd	a1,32(a0)
}
    80001e08:	00813403          	ld	s0,8(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001e14:	fe010113          	addi	sp,sp,-32
    80001e18:	00113c23          	sd	ra,24(sp)
    80001e1c:	00813823          	sd	s0,16(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	01213023          	sd	s2,0(sp)
    80001e28:	02010413          	addi	s0,sp,32
    80001e2c:	00050493          	mv	s1,a0
    80001e30:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	fa8080e7          	jalr	-88(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001e3c:	00090593          	mv	a1,s2
    80001e40:	00048513          	mv	a0,s1
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	fb4080e7          	jalr	-76(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001e4c:	01813083          	ld	ra,24(sp)
    80001e50:	01013403          	ld	s0,16(sp)
    80001e54:	00813483          	ld	s1,8(sp)
    80001e58:	00013903          	ld	s2,0(sp)
    80001e5c:	02010113          	addi	sp,sp,32
    80001e60:	00008067          	ret

0000000080001e64 <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00813423          	sd	s0,8(sp)
    80001e6c:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001e70:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001e74:	02c53823          	sd	a2,48(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001e78:	06c53c23          	sd	a2,120(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001e7c:	00000797          	auipc	a5,0x0
    80001e80:	dcc78793          	addi	a5,a5,-564 # 80001c48 <_ZN7KThread16threadTrampolineEPS_>
    80001e84:	16f53423          	sd	a5,360(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001e88:	0aa53c23          	sd	a0,184(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001e8c:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001e90:	08f53023          	sd	a5,128(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001e94:	100027f3          	csrr	a5,sstatus
    sstatus_val &= ~(1UL << 8); // SPP=0
    80001e98:	eff7f793          	andi	a5,a5,-257
    sstatus_val |= (1UL << 5); // SPIE=1
    80001e9c:	0207e793          	ori	a5,a5,32
    threadContext.sstatus = sstatus_val;
    80001ea0:	16f53823          	sd	a5,368(a0)
}
    80001ea4:	00813403          	ld	s0,8(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZL8idleBodyPv>:
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	00813023          	sd	s0,0(sp)
    80001ebc:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001ec0:	fffff097          	auipc	ra,0xfffff
    80001ec4:	7b4080e7          	jalr	1972(ra) # 80001674 <thread_dispatch>
    80001ec8:	ff9ff06f          	j	80001ec0 <_ZL8idleBodyPv+0x10>

0000000080001ecc <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00813423          	sd	s0,8(sp)
    80001ed4:	01010413          	addi	s0,sp,16
}
    80001ed8:	0000b517          	auipc	a0,0xb
    80001edc:	d0853503          	ld	a0,-760(a0) # 8000cbe0 <_ZN9Scheduler7runningE>
    80001ee0:	00813403          	ld	s0,8(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00113423          	sd	ra,8(sp)
    80001ef4:	00813023          	sd	s0,0(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    80001efc:	00058513          	mv	a0,a1
    running = newThread;
    80001f00:	0000b797          	auipc	a5,0xb
    80001f04:	ceb7b023          	sd	a1,-800(a5) # 8000cbe0 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	e80080e7          	jalr	-384(ra) # 80001d88 <_ZN7KThread10getContextEv>
    80001f10:	fffff097          	auipc	ra,0xfffff
    80001f14:	184080e7          	jalr	388(ra) # 80001094 <restoreContext>
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN9Scheduler8freeDeadEv>:
void Scheduler::freeDead() {
    80001f28:	fe010113          	addi	sp,sp,-32
    80001f2c:	00113c23          	sd	ra,24(sp)
    80001f30:	00813823          	sd	s0,16(sp)
    80001f34:	00913423          	sd	s1,8(sp)
    80001f38:	02010413          	addi	s0,sp,32
    if (deadThread == nullptr) return;
    80001f3c:	0000b497          	auipc	s1,0xb
    80001f40:	cac4b483          	ld	s1,-852(s1) # 8000cbe8 <_ZN9Scheduler10deadThreadE>
    80001f44:	02048e63          	beqz	s1,80001f80 <_ZN9Scheduler8freeDeadEv+0x58>
    deadThread = nullptr;
    80001f48:	0000b797          	auipc	a5,0xb
    80001f4c:	ca07b023          	sd	zero,-864(a5) # 8000cbe8 <_ZN9Scheduler10deadThreadE>
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    80001f50:	0604b783          	ld	a5,96(s1)
    80001f54:	00078c63          	beqz	a5,80001f6c <_ZN9Scheduler8freeDeadEv+0x44>
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	7e4080e7          	jalr	2020(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    80001f60:	0604b583          	ld	a1,96(s1)
    80001f64:	00002097          	auipc	ra,0x2
    80001f68:	8d0080e7          	jalr	-1840(ra) # 80003834 <_ZN15MemoryAllocator12FreeFragmentEPv>
    MemoryAllocator::GetInstance().FreeFragment(dead);
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	7d0080e7          	jalr	2000(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    80001f74:	00048593          	mv	a1,s1
    80001f78:	00002097          	auipc	ra,0x2
    80001f7c:	8bc080e7          	jalr	-1860(ra) # 80003834 <_ZN15MemoryAllocator12FreeFragmentEPv>
}
    80001f80:	01813083          	ld	ra,24(sp)
    80001f84:	01013403          	ld	s0,16(sp)
    80001f88:	00813483          	ld	s1,8(sp)
    80001f8c:	02010113          	addi	sp,sp,32
    80001f90:	00008067          	ret

0000000080001f94 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001f94:	fe010113          	addi	sp,sp,-32
    80001f98:	00113c23          	sd	ra,24(sp)
    80001f9c:	00813823          	sd	s0,16(sp)
    80001fa0:	00913423          	sd	s1,8(sp)
    80001fa4:	01213023          	sd	s2,0(sp)
    80001fa8:	02010413          	addi	s0,sp,32
    for (int i = 0; i < LEVELS; i++) {
    80001fac:	00000493          	li	s1,0
    80001fb0:	00300793          	li	a5,3
    80001fb4:	0a97c463          	blt	a5,s1,8000205c <_ZN9Scheduler7GetNextEv+0xc8>
        if (readyHead[i] == nullptr) continue;
    80001fb8:	00349713          	slli	a4,s1,0x3
    80001fbc:	0000b797          	auipc	a5,0xb
    80001fc0:	c2478793          	addi	a5,a5,-988 # 8000cbe0 <_ZN9Scheduler7runningE>
    80001fc4:	00e787b3          	add	a5,a5,a4
    80001fc8:	0107b903          	ld	s2,16(a5)
    80001fcc:	06090863          	beqz	s2,8000203c <_ZN9Scheduler7GetNextEv+0xa8>
        readyHead[i] = toRet->getNextInQueue();
    80001fd0:	00090513          	mv	a0,s2
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	dd0080e7          	jalr	-560(ra) # 80001da4 <_ZN7KThread14getNextInQueueEv>
    80001fdc:	00349713          	slli	a4,s1,0x3
    80001fe0:	0000b797          	auipc	a5,0xb
    80001fe4:	c0078793          	addi	a5,a5,-1024 # 8000cbe0 <_ZN9Scheduler7runningE>
    80001fe8:	00e787b3          	add	a5,a5,a4
    80001fec:	00a7b823          	sd	a0,16(a5)
        if (readyHead[i] != nullptr) readyHead[i]->setPrevInQueue(nullptr);
    80001ff0:	04050a63          	beqz	a0,80002044 <_ZN9Scheduler7GetNextEv+0xb0>
    80001ff4:	00000593          	li	a1,0
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	e00080e7          	jalr	-512(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
        toRet->setNextInQueue(nullptr);
    80002000:	00000593          	li	a1,0
    80002004:	00090513          	mv	a0,s2
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	dd4080e7          	jalr	-556(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
        toRet->setPrevInQueue(nullptr);
    80002010:	00000593          	li	a1,0
    80002014:	00090513          	mv	a0,s2
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	de0080e7          	jalr	-544(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
}
    80002020:	00090513          	mv	a0,s2
    80002024:	01813083          	ld	ra,24(sp)
    80002028:	01013403          	ld	s0,16(sp)
    8000202c:	00813483          	ld	s1,8(sp)
    80002030:	00013903          	ld	s2,0(sp)
    80002034:	02010113          	addi	sp,sp,32
    80002038:	00008067          	ret
    for (int i = 0; i < LEVELS; i++) {
    8000203c:	0014849b          	addiw	s1,s1,1
    80002040:	f71ff06f          	j	80001fb0 <_ZN9Scheduler7GetNextEv+0x1c>
        else readyTail[i] = nullptr;
    80002044:	00349493          	slli	s1,s1,0x3
    80002048:	0000b797          	auipc	a5,0xb
    8000204c:	b9878793          	addi	a5,a5,-1128 # 8000cbe0 <_ZN9Scheduler7runningE>
    80002050:	009784b3          	add	s1,a5,s1
    80002054:	0204b823          	sd	zero,48(s1)
    80002058:	fa9ff06f          	j	80002000 <_ZN9Scheduler7GetNextEv+0x6c>
    return nullptr;
    8000205c:	00000913          	li	s2,0
    80002060:	fc1ff06f          	j	80002020 <_ZN9Scheduler7GetNextEv+0x8c>

0000000080002064 <_ZN9Scheduler12blockCurrentEP7KThread>:
void Scheduler::blockCurrent(KThread* current) {
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00113c23          	sd	ra,24(sp)
    8000206c:	00813823          	sd	s0,16(sp)
    80002070:	00913423          	sd	s1,8(sp)
    80002074:	02010413          	addi	s0,sp,32
    80002078:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	f18080e7          	jalr	-232(ra) # 80001f94 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) { while (true) {} }
    80002084:	02050463          	beqz	a0,800020ac <_ZN9Scheduler12blockCurrentEP7KThread+0x48>
    80002088:	00050593          	mv	a1,a0
    yield(current, next);
    8000208c:	00048513          	mv	a0,s1
    80002090:	00000097          	auipc	ra,0x0
    80002094:	e5c080e7          	jalr	-420(ra) # 80001eec <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80002098:	01813083          	ld	ra,24(sp)
    8000209c:	01013403          	ld	s0,16(sp)
    800020a0:	00813483          	ld	s1,8(sp)
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00008067          	ret
    if (next == nullptr) { while (true) {} }
    800020ac:	0000006f          	j	800020ac <_ZN9Scheduler12blockCurrentEP7KThread+0x48>

00000000800020b0 <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    800020b0:	fd010113          	addi	sp,sp,-48
    800020b4:	02113423          	sd	ra,40(sp)
    800020b8:	02813023          	sd	s0,32(sp)
    800020bc:	00913c23          	sd	s1,24(sp)
    800020c0:	01213823          	sd	s2,16(sp)
    800020c4:	01313423          	sd	s3,8(sp)
    800020c8:	03010413          	addi	s0,sp,48
    800020cc:	00050493          	mv	s1,a0
    int lvl = thread->priority;
    800020d0:	04854903          	lbu	s2,72(a0)
    thread->setNextInQueue(nullptr);
    800020d4:	00000593          	li	a1,0
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	d04080e7          	jalr	-764(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(readyTail[lvl]);
    800020e0:	00391793          	slli	a5,s2,0x3
    800020e4:	0000b997          	auipc	s3,0xb
    800020e8:	afc98993          	addi	s3,s3,-1284 # 8000cbe0 <_ZN9Scheduler7runningE>
    800020ec:	00f989b3          	add	s3,s3,a5
    800020f0:	0309b583          	ld	a1,48(s3)
    800020f4:	00048513          	mv	a0,s1
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	d00080e7          	jalr	-768(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
    if (readyTail[lvl] != nullptr) readyTail[lvl]->setNextInQueue(thread);
    80002100:	0309b503          	ld	a0,48(s3)
    80002104:	04050063          	beqz	a0,80002144 <_ZN9Scheduler3PutEP7KThread+0x94>
    80002108:	00048593          	mv	a1,s1
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	cd0080e7          	jalr	-816(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    readyTail[lvl] = thread;
    80002114:	00391913          	slli	s2,s2,0x3
    80002118:	0000b797          	auipc	a5,0xb
    8000211c:	ac878793          	addi	a5,a5,-1336 # 8000cbe0 <_ZN9Scheduler7runningE>
    80002120:	01278933          	add	s2,a5,s2
    80002124:	02993823          	sd	s1,48(s2)
}
    80002128:	02813083          	ld	ra,40(sp)
    8000212c:	02013403          	ld	s0,32(sp)
    80002130:	01813483          	ld	s1,24(sp)
    80002134:	01013903          	ld	s2,16(sp)
    80002138:	00813983          	ld	s3,8(sp)
    8000213c:	03010113          	addi	sp,sp,48
    80002140:	00008067          	ret
    else readyHead[lvl] = thread;
    80002144:	00391713          	slli	a4,s2,0x3
    80002148:	0000b797          	auipc	a5,0xb
    8000214c:	a9878793          	addi	a5,a5,-1384 # 8000cbe0 <_ZN9Scheduler7runningE>
    80002150:	00e787b3          	add	a5,a5,a4
    80002154:	0097b823          	sd	s1,16(a5)
    80002158:	fbdff06f          	j	80002114 <_ZN9Scheduler3PutEP7KThread+0x64>

000000008000215c <_ZN9Scheduler12yieldCurrentEP7KThread>:
bool Scheduler::yieldCurrent(KThread* current) {
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	01213023          	sd	s2,0(sp)
    80002170:	02010413          	addi	s0,sp,32
    80002174:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	e1c080e7          	jalr	-484(ra) # 80001f94 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) return false;
    80002180:	04050463          	beqz	a0,800021c8 <_ZN9Scheduler12yieldCurrentEP7KThread+0x6c>
    80002184:	00050913          	mv	s2,a0
    if (current) current->threadContext.x[10] = 0;
    80002188:	00048463          	beqz	s1,80002190 <_ZN9Scheduler12yieldCurrentEP7KThread+0x34>
    8000218c:	0a04bc23          	sd	zero,184(s1)
    Put(current);
    80002190:	00048513          	mv	a0,s1
    80002194:	00000097          	auipc	ra,0x0
    80002198:	f1c080e7          	jalr	-228(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    8000219c:	00090593          	mv	a1,s2
    800021a0:	00048513          	mv	a0,s1
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	d48080e7          	jalr	-696(ra) # 80001eec <_ZN9Scheduler5yieldEP7KThreadS1_>
    return true;
    800021ac:	00100513          	li	a0,1
}
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	00013903          	ld	s2,0(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret
    if (next == nullptr) return false;
    800021c8:	00000513          	li	a0,0
    800021cc:	fe5ff06f          	j	800021b0 <_ZN9Scheduler12yieldCurrentEP7KThread+0x54>

00000000800021d0 <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    800021d0:	fe010113          	addi	sp,sp,-32
    800021d4:	00113c23          	sd	ra,24(sp)
    800021d8:	00813823          	sd	s0,16(sp)
    800021dc:	00913423          	sd	s1,8(sp)
    800021e0:	01213023          	sd	s2,0(sp)
    800021e4:	02010413          	addi	s0,sp,32
    800021e8:	00050493          	mv	s1,a0
    deadThread = t;
    800021ec:	0000b797          	auipc	a5,0xb
    800021f0:	9ea7be23          	sd	a0,-1540(a5) # 8000cbe8 <_ZN9Scheduler10deadThreadE>
    KThread* next = GetNext();
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	da0080e7          	jalr	-608(ra) # 80001f94 <_ZN9Scheduler7GetNextEv>
    800021fc:	00050913          	mv	s2,a0
    if (next == nullptr) {
    80002200:	02050263          	beqz	a0,80002224 <_ZN9Scheduler10ThreadExitEP7KThread+0x54>
    if (t->stopperThread)return;
    80002204:	0584b783          	ld	a5,88(s1)
    80002208:	02078463          	beqz	a5,80002230 <_ZN9Scheduler10ThreadExitEP7KThread+0x60>
}
    8000220c:	01813083          	ld	ra,24(sp)
    80002210:	01013403          	ld	s0,16(sp)
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	00013903          	ld	s2,0(sp)
    8000221c:	02010113          	addi	sp,sp,32
    80002220:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80002224:	0104b903          	ld	s2,16(s1)
        if (next == nullptr) { while (true) {} }
    80002228:	fc091ee3          	bnez	s2,80002204 <_ZN9Scheduler10ThreadExitEP7KThread+0x34>
    8000222c:	0000006f          	j	8000222c <_ZN9Scheduler10ThreadExitEP7KThread+0x5c>
    if (t->waitingThread) {
    80002230:	0504b503          	ld	a0,80(s1)
    80002234:	00050e63          	beqz	a0,80002250 <_ZN9Scheduler10ThreadExitEP7KThread+0x80>
        Put(t->waitingThread);
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	e78080e7          	jalr	-392(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
        t->waitingThread->stopperThread = t->stopperThread;
    80002240:	0504b783          	ld	a5,80(s1)
    80002244:	0584b703          	ld	a4,88(s1)
    80002248:	04e7bc23          	sd	a4,88(a5)
        t->waitingThread=nullptr;
    8000224c:	0404b823          	sd	zero,80(s1)
    yield(t, next);
    80002250:	00090593          	mv	a1,s2
    80002254:	00048513          	mv	a0,s1
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	c94080e7          	jalr	-876(ra) # 80001eec <_ZN9Scheduler5yieldEP7KThreadS1_>
    80002260:	fadff06f          	j	8000220c <_ZN9Scheduler10ThreadExitEP7KThread+0x3c>

0000000080002264 <_ZN9Scheduler12PutPreemptedEP7KThread>:
void Scheduler::PutPreempted(KThread* thread) {
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00113423          	sd	ra,8(sp)
    8000226c:	00813023          	sd	s0,0(sp)
    80002270:	01010413          	addi	s0,sp,16
    if (thread->priority < LEVELS - 1) thread->priority++;
    80002274:	04854783          	lbu	a5,72(a0)
    80002278:	00200713          	li	a4,2
    8000227c:	00f76663          	bltu	a4,a5,80002288 <_ZN9Scheduler12PutPreemptedEP7KThread+0x24>
    80002280:	0017879b          	addiw	a5,a5,1
    80002284:	04f50423          	sb	a5,72(a0)
    Put(thread);
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	e28080e7          	jalr	-472(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
}
    80002290:	00813083          	ld	ra,8(sp)
    80002294:	00013403          	ld	s0,0(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret

00000000800022a0 <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    800022ac:	0000b797          	auipc	a5,0xb
    800022b0:	8cc7b783          	ld	a5,-1844(a5) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x38>
    800022b4:	00778793          	addi	a5,a5,7
    800022b8:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    800022bc:	0000b717          	auipc	a4,0xb
    800022c0:	96f73a23          	sd	a5,-1676(a4) # 8000cc30 <_ZN9Scheduler12stack_cursorE>
}
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    800022d0:	fe010113          	addi	sp,sp,-32
    800022d4:	00113c23          	sd	ra,24(sp)
    800022d8:	00813823          	sd	s0,16(sp)
    800022dc:	00913423          	sd	s1,8(sp)
    800022e0:	02010413          	addi	s0,sp,32
    SetupStartStack();
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	fbc080e7          	jalr	-68(ra) # 800022a0 <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	450080e7          	jalr	1104(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    800022f4:	18000593          	li	a1,384
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	4a0080e7          	jalr	1184(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002300:	0000b497          	auipc	s1,0xb
    80002304:	8e048493          	addi	s1,s1,-1824 # 8000cbe0 <_ZN9Scheduler7runningE>
    80002308:	00a4b023          	sd	a0,0(s1)
    running->init();
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	9a0080e7          	jalr	-1632(ra) # 80001cac <_ZN7KThread4initEv>
    setupStartContext(running->getContext());
    80002314:	0004b503          	ld	a0,0(s1)
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	a70080e7          	jalr	-1424(ra) # 80001d88 <_ZN7KThread10getContextEv>
    80002320:	fffff097          	auipc	ra,0xfffff
    80002324:	e04080e7          	jalr	-508(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002328:	00200793          	li	a5,2
    8000232c:	0000a717          	auipc	a4,0xa
    80002330:	56f73223          	sd	a5,1380(a4) # 8000c890 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002334:	00001097          	auipc	ra,0x1
    80002338:	408080e7          	jalr	1032(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    8000233c:	18000593          	li	a1,384
    80002340:	00001097          	auipc	ra,0x1
    80002344:	458080e7          	jalr	1112(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002348:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	960080e7          	jalr	-1696(ra) # 80001cac <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80002354:	00000797          	auipc	a5,0x0
    80002358:	b5c78793          	addi	a5,a5,-1188 # 80001eb0 <_ZL8idleBodyPv>
    8000235c:	00f4b023          	sd	a5,0(s1)
    80002360:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    80002364:	00001097          	auipc	ra,0x1
    80002368:	3d8080e7          	jalr	984(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    8000236c:	000085b7          	lui	a1,0x8
    80002370:	00001097          	auipc	ra,0x1
    80002374:	428080e7          	jalr	1064(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    80002378:	00008637          	lui	a2,0x8
    8000237c:	00c50633          	add	a2,a0,a2
    80002380:	00000593          	li	a1,0
    80002384:	00048513          	mv	a0,s1
    80002388:	00000097          	auipc	ra,0x0
    8000238c:	adc080e7          	jalr	-1316(ra) # 80001e64 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    80002390:	00048513          	mv	a0,s1
    80002394:	00000097          	auipc	ra,0x0
    80002398:	d1c080e7          	jalr	-740(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
}
    8000239c:	01813083          	ld	ra,24(sp)
    800023a0:	01013403          	ld	s0,16(sp)
    800023a4:	00813483          	ld	s1,8(sp)
    800023a8:	02010113          	addi	sp,sp,32
    800023ac:	00008067          	ret

00000000800023b0 <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00813423          	sd	s0,8(sp)
    800023b8:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    800023bc:	03053783          	ld	a5,48(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    800023c0:	06f53c23          	sd	a5,120(a0)
}
    800023c4:	00813403          	ld	s0,8(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    800023d0:	fd010113          	addi	sp,sp,-48
    800023d4:	02113423          	sd	ra,40(sp)
    800023d8:	02813023          	sd	s0,32(sp)
    800023dc:	00913c23          	sd	s1,24(sp)
    800023e0:	01213823          	sd	s2,16(sp)
    800023e4:	01313423          	sd	s3,8(sp)
    800023e8:	01413023          	sd	s4,0(sp)
    800023ec:	03010413          	addi	s0,sp,48
    800023f0:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    800023f4:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    800023f8:	0000b797          	auipc	a5,0xb
    800023fc:	8407b783          	ld	a5,-1984(a5) # 8000cc38 <_ZN9Scheduler10sleepQueueE>
    80002400:	04078e63          	beqz	a5,8000245c <_ZN9Scheduler9timerTickEP7KThread+0x8c>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80002404:	0407b703          	ld	a4,64(a5)
    80002408:	04070063          	beqz	a4,80002448 <_ZN9Scheduler9timerTickEP7KThread+0x78>
    8000240c:	fff70713          	addi	a4,a4,-1
    80002410:	04e7b023          	sd	a4,64(a5)
    80002414:	0340006f          	j	80002448 <_ZN9Scheduler9timerTickEP7KThread+0x78>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    80002418:	00048513          	mv	a0,s1
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	988080e7          	jalr	-1656(ra) # 80001da4 <_ZN7KThread14getNextInQueueEv>
    80002424:	0000b797          	auipc	a5,0xb
    80002428:	80a7ba23          	sd	a0,-2028(a5) # 8000cc38 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    8000242c:	00000593          	li	a1,0
    80002430:	00048513          	mv	a0,s1
    80002434:	00000097          	auipc	ra,0x0
    80002438:	9a8080e7          	jalr	-1624(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    8000243c:	00048513          	mv	a0,s1
    80002440:	00000097          	auipc	ra,0x0
    80002444:	c70080e7          	jalr	-912(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80002448:	0000a497          	auipc	s1,0xa
    8000244c:	7f04b483          	ld	s1,2032(s1) # 8000cc38 <_ZN9Scheduler10sleepQueueE>
    80002450:	00048663          	beqz	s1,8000245c <_ZN9Scheduler9timerTickEP7KThread+0x8c>
    80002454:	0404b783          	ld	a5,64(s1)
    80002458:	fc0780e3          	beqz	a5,80002418 <_ZN9Scheduler9timerTickEP7KThread+0x48>
        }
    }

    if (current == nullptr) return;
    8000245c:	12090e63          	beqz	s2,80002598 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    80002460:	0000a797          	auipc	a5,0xa
    80002464:	4307b783          	ld	a5,1072(a5) # 8000c890 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002468:	00078863          	beqz	a5,80002478 <_ZN9Scheduler9timerTickEP7KThread+0xa8>
    8000246c:	fff78793          	addi	a5,a5,-1
    80002470:	0000a717          	auipc	a4,0xa
    80002474:	42f73023          	sd	a5,1056(a4) # 8000c890 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80002478:	0000a797          	auipc	a5,0xa
    8000247c:	4187b783          	ld	a5,1048(a5) # 8000c890 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002480:	10079c63          	bnez	a5,80002598 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (++agingTick >= 100) {
    80002484:	0000a717          	auipc	a4,0xa
    80002488:	75c70713          	addi	a4,a4,1884 # 8000cbe0 <_ZN9Scheduler7runningE>
    8000248c:	06072783          	lw	a5,96(a4)
    80002490:	0017879b          	addiw	a5,a5,1
    80002494:	0007869b          	sext.w	a3,a5
    80002498:	06f72023          	sw	a5,96(a4)
    8000249c:	06300793          	li	a5,99
    800024a0:	0cd7d063          	bge	a5,a3,80002560 <_ZN9Scheduler9timerTickEP7KThread+0x190>
        agingTick = 0;
    800024a4:	0000a797          	auipc	a5,0xa
    800024a8:	7807ae23          	sw	zero,1948(a5) # 8000cc40 <_ZN9Scheduler9agingTickE>
        for (int i = 1; i < LEVELS; i++) {
    800024ac:	00100493          	li	s1,1
    800024b0:	0600006f          	j	80002510 <_ZN9Scheduler9timerTickEP7KThread+0x140>
            if (readyHead[i] == nullptr) continue;
            KThread* curr = readyHead[i];
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
            if (readyTail[0] != nullptr) {
    800024b4:	0000a517          	auipc	a0,0xa
    800024b8:	75c53503          	ld	a0,1884(a0) # 8000cc10 <_ZN9Scheduler9readyTailE>
    800024bc:	08050463          	beqz	a0,80002544 <_ZN9Scheduler9timerTickEP7KThread+0x174>
                readyTail[0]->setNextInQueue(readyHead[i]);
    800024c0:	0000aa17          	auipc	s4,0xa
    800024c4:	720a0a13          	addi	s4,s4,1824 # 8000cbe0 <_ZN9Scheduler7runningE>
    800024c8:	00349993          	slli	s3,s1,0x3
    800024cc:	013a09b3          	add	s3,s4,s3
    800024d0:	0109b583          	ld	a1,16(s3)
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	908080e7          	jalr	-1784(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
                readyHead[i]->setPrevInQueue(readyTail[0]);
    800024dc:	030a3583          	ld	a1,48(s4)
    800024e0:	0109b503          	ld	a0,16(s3)
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	914080e7          	jalr	-1772(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
            } else {
                readyHead[0] = readyHead[i];
            }
            readyTail[0] = readyTail[i];
    800024ec:	0000a717          	auipc	a4,0xa
    800024f0:	6f470713          	addi	a4,a4,1780 # 8000cbe0 <_ZN9Scheduler7runningE>
    800024f4:	00349793          	slli	a5,s1,0x3
    800024f8:	00f707b3          	add	a5,a4,a5
    800024fc:	0307b683          	ld	a3,48(a5)
    80002500:	02d73823          	sd	a3,48(a4)
            readyHead[i] = readyTail[i] = nullptr;
    80002504:	0207b823          	sd	zero,48(a5)
    80002508:	0007b823          	sd	zero,16(a5)
        for (int i = 1; i < LEVELS; i++) {
    8000250c:	0014849b          	addiw	s1,s1,1
    80002510:	00300793          	li	a5,3
    80002514:	0497c663          	blt	a5,s1,80002560 <_ZN9Scheduler9timerTickEP7KThread+0x190>
            if (readyHead[i] == nullptr) continue;
    80002518:	00349713          	slli	a4,s1,0x3
    8000251c:	0000a797          	auipc	a5,0xa
    80002520:	6c478793          	addi	a5,a5,1732 # 8000cbe0 <_ZN9Scheduler7runningE>
    80002524:	00e787b3          	add	a5,a5,a4
    80002528:	0107b503          	ld	a0,16(a5)
    8000252c:	fe0500e3          	beqz	a0,8000250c <_ZN9Scheduler9timerTickEP7KThread+0x13c>
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
    80002530:	f80502e3          	beqz	a0,800024b4 <_ZN9Scheduler9timerTickEP7KThread+0xe4>
    80002534:	04050423          	sb	zero,72(a0)
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	86c080e7          	jalr	-1940(ra) # 80001da4 <_ZN7KThread14getNextInQueueEv>
    80002540:	ff1ff06f          	j	80002530 <_ZN9Scheduler9timerTickEP7KThread+0x160>
                readyHead[0] = readyHead[i];
    80002544:	0000a717          	auipc	a4,0xa
    80002548:	69c70713          	addi	a4,a4,1692 # 8000cbe0 <_ZN9Scheduler7runningE>
    8000254c:	00349793          	slli	a5,s1,0x3
    80002550:	00f707b3          	add	a5,a4,a5
    80002554:	0107b783          	ld	a5,16(a5)
    80002558:	00f73823          	sd	a5,16(a4)
    8000255c:	f91ff06f          	j	800024ec <_ZN9Scheduler9timerTickEP7KThread+0x11c>
        }
    }

    KThread* next = GetNext();
    80002560:	00000097          	auipc	ra,0x0
    80002564:	a34080e7          	jalr	-1484(ra) # 80001f94 <_ZN9Scheduler7GetNextEv>
    80002568:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    8000256c:	00200793          	li	a5,2
    80002570:	0000a717          	auipc	a4,0xa
    80002574:	32f73023          	sd	a5,800(a4) # 8000c890 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002578:	02050063          	beqz	a0,80002598 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>
    PutPreempted(current);
    8000257c:	00090513          	mv	a0,s2
    80002580:	00000097          	auipc	ra,0x0
    80002584:	ce4080e7          	jalr	-796(ra) # 80002264 <_ZN9Scheduler12PutPreemptedEP7KThread>
    yield(current, next);
    80002588:	00048593          	mv	a1,s1
    8000258c:	00090513          	mv	a0,s2
    80002590:	00000097          	auipc	ra,0x0
    80002594:	95c080e7          	jalr	-1700(ra) # 80001eec <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80002598:	02813083          	ld	ra,40(sp)
    8000259c:	02013403          	ld	s0,32(sp)
    800025a0:	01813483          	ld	s1,24(sp)
    800025a4:	01013903          	ld	s2,16(sp)
    800025a8:	00813983          	ld	s3,8(sp)
    800025ac:	00013a03          	ld	s4,0(sp)
    800025b0:	03010113          	addi	sp,sp,48
    800025b4:	00008067          	ret

00000000800025b8 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    800025b8:	fd010113          	addi	sp,sp,-48
    800025bc:	02113423          	sd	ra,40(sp)
    800025c0:	02813023          	sd	s0,32(sp)
    800025c4:	00913c23          	sd	s1,24(sp)
    800025c8:	01213823          	sd	s2,16(sp)
    800025cc:	01313423          	sd	s3,8(sp)
    800025d0:	01413023          	sd	s4,0(sp)
    800025d4:	03010413          	addi	s0,sp,48
    800025d8:	00050a13          	mv	s4,a0
    800025dc:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    800025e0:	0000a497          	auipc	s1,0xa
    800025e4:	6584b483          	ld	s1,1624(s1) # 8000cc38 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    800025e8:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    800025ec:	02048463          	beqz	s1,80002614 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    800025f0:	0404b783          	ld	a5,64(s1)
    800025f4:	02f96063          	bltu	s2,a5,80002614 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    800025f8:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    800025fc:	00048513          	mv	a0,s1
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	7a4080e7          	jalr	1956(ra) # 80001da4 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    80002608:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    8000260c:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    80002610:	fddff06f          	j	800025ec <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    80002614:	052a3023          	sd	s2,64(s4)
    thread->setNextInQueue(current);
    80002618:	00048593          	mv	a1,s1
    8000261c:	000a0513          	mv	a0,s4
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	7bc080e7          	jalr	1980(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    80002628:	04098263          	beqz	s3,8000266c <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    8000262c:	000a0593          	mv	a1,s4
    80002630:	00098513          	mv	a0,s3
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	7a8080e7          	jalr	1960(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    8000263c:	00048863          	beqz	s1,8000264c <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    80002640:	0404b583          	ld	a1,64(s1)
    80002644:	41258933          	sub	s2,a1,s2
    80002648:	0524b023          	sd	s2,64(s1)
}
    8000264c:	02813083          	ld	ra,40(sp)
    80002650:	02013403          	ld	s0,32(sp)
    80002654:	01813483          	ld	s1,24(sp)
    80002658:	01013903          	ld	s2,16(sp)
    8000265c:	00813983          	ld	s3,8(sp)
    80002660:	00013a03          	ld	s4,0(sp)
    80002664:	03010113          	addi	sp,sp,48
    80002668:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    8000266c:	0000a797          	auipc	a5,0xa
    80002670:	5d47b623          	sd	s4,1484(a5) # 8000cc38 <_ZN9Scheduler10sleepQueueE>
    80002674:	fc9ff06f          	j	8000263c <_ZN9Scheduler5sleepEP7KThreadm+0x84>

0000000080002678 <_ZN9Scheduler10joinThreadEP7KThread>:

void Scheduler::joinThread(KThread* joiningThread) {
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00113423          	sd	ra,8(sp)
    80002680:	00813023          	sd	s0,0(sp)
    80002684:	01010413          	addi	s0,sp,16
    80002688:	00050793          	mv	a5,a0
    joiningThread->waitingThread = joiningThread;
    8000268c:	04a53823          	sd	a0,80(a0)
    running->stopperThread = joiningThread;
    80002690:	0000a517          	auipc	a0,0xa
    80002694:	55053503          	ld	a0,1360(a0) # 8000cbe0 <_ZN9Scheduler7runningE>
    80002698:	04f53c23          	sd	a5,88(a0)
    blockCurrent(running);
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	9c8080e7          	jalr	-1592(ra) # 80002064 <_ZN9Scheduler12blockCurrentEP7KThread>

    800026a4:	00813083          	ld	ra,8(sp)
    800026a8:	00013403          	ld	s0,0(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    800026b4:	ff010113          	addi	sp,sp,-16
    800026b8:	00113423          	sd	ra,8(sp)
    800026bc:	00813023          	sd	s0,0(sp)
    800026c0:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    800026c4:	0000a517          	auipc	a0,0xa
    800026c8:	58450513          	addi	a0,a0,1412 # 8000cc48 <_ZN7Konsole11outputItemsE>
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	050080e7          	jalr	80(ra) # 8000171c <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    800026d4:	0000a797          	auipc	a5,0xa
    800026d8:	47c7b783          	ld	a5,1148(a5) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026dc:	0007b783          	ld	a5,0(a5)
    800026e0:	0007c783          	lbu	a5,0(a5)
    800026e4:	0ff7f793          	andi	a5,a5,255
    800026e8:	0207f793          	andi	a5,a5,32
    800026ec:	fe0784e3          	beqz	a5,800026d4 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    800026f0:	0000a717          	auipc	a4,0xa
    800026f4:	55870713          	addi	a4,a4,1368 # 8000cc48 <_ZN7Konsole11outputItemsE>
    800026f8:	01872783          	lw	a5,24(a4)
    800026fc:	01c72703          	lw	a4,28(a4)
    80002700:	fce782e3          	beq	a5,a4,800026c4 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002704:	0000a697          	auipc	a3,0xa
    80002708:	54468693          	addi	a3,a3,1348 # 8000cc48 <_ZN7Konsole11outputItemsE>
    8000270c:	00f68733          	add	a4,a3,a5
    80002710:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    80002714:	0017879b          	addiw	a5,a5,1
    80002718:	41f7d71b          	sraiw	a4,a5,0x1f
    8000271c:	0187571b          	srliw	a4,a4,0x18
    80002720:	00e787bb          	addw	a5,a5,a4
    80002724:	0ff7f793          	andi	a5,a5,255
    80002728:	40e787bb          	subw	a5,a5,a4
    8000272c:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    80002730:	0000a797          	auipc	a5,0xa
    80002734:	4387b783          	ld	a5,1080(a5) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002738:	0007b783          	ld	a5,0(a5)
    8000273c:	00c78023          	sb	a2,0(a5)
    80002740:	f85ff06f          	j	800026c4 <_ZN7Konsole16outputThreadBodyEPv+0x10>

0000000080002744 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    80002744:	fe010113          	addi	sp,sp,-32
    80002748:	00113c23          	sd	ra,24(sp)
    8000274c:	00813823          	sd	s0,16(sp)
    80002750:	00913423          	sd	s1,8(sp)
    80002754:	02010413          	addi	s0,sp,32
    80002758:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    8000275c:	00000593          	li	a1,0
    80002760:	fffff097          	auipc	ra,0xfffff
    80002764:	67c080e7          	jalr	1660(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    80002768:	0000a597          	auipc	a1,0xa
    8000276c:	6005b583          	ld	a1,1536(a1) # 8000cd68 <_ZN7Konsole14getcWaiterTailE>
    80002770:	04058063          	beqz	a1,800027b0 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    80002774:	00048513          	mv	a0,s1
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	680080e7          	jalr	1664(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    80002780:	00048593          	mv	a1,s1
    80002784:	0000a517          	auipc	a0,0xa
    80002788:	5e453503          	ld	a0,1508(a0) # 8000cd68 <_ZN7Konsole14getcWaiterTailE>
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	650080e7          	jalr	1616(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    80002794:	0000a797          	auipc	a5,0xa
    80002798:	5c97ba23          	sd	s1,1492(a5) # 8000cd68 <_ZN7Konsole14getcWaiterTailE>
}
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800027b0:	00000593          	li	a1,0
    800027b4:	00048513          	mv	a0,s1
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	640080e7          	jalr	1600(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    800027c0:	0000a797          	auipc	a5,0xa
    800027c4:	5a97b823          	sd	s1,1456(a5) # 8000cd70 <_ZN7Konsole14getcWaiterHeadE>
    800027c8:	fcdff06f          	j	80002794 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

00000000800027cc <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    800027cc:	fe010113          	addi	sp,sp,-32
    800027d0:	00113c23          	sd	ra,24(sp)
    800027d4:	00813823          	sd	s0,16(sp)
    800027d8:	00913423          	sd	s1,8(sp)
    800027dc:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    800027e0:	0000a497          	auipc	s1,0xa
    800027e4:	5904b483          	ld	s1,1424(s1) # 8000cd70 <_ZN7Konsole14getcWaiterHeadE>
    800027e8:	04048463          	beqz	s1,80002830 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    800027ec:	00048513          	mv	a0,s1
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	5b4080e7          	jalr	1460(ra) # 80001da4 <_ZN7KThread14getNextInQueueEv>
    800027f8:	0000a797          	auipc	a5,0xa
    800027fc:	56a7bc23          	sd	a0,1400(a5) # 8000cd70 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002800:	04050463          	beqz	a0,80002848 <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002804:	00000593          	li	a1,0
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	5f0080e7          	jalr	1520(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    80002810:	00000593          	li	a1,0
    80002814:	00048513          	mv	a0,s1
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	5c4080e7          	jalr	1476(ra) # 80001ddc <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80002820:	00000593          	li	a1,0
    80002824:	00048513          	mv	a0,s1
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	5d0080e7          	jalr	1488(ra) # 80001df8 <_ZN7KThread14setPrevInQueueEPS_>
}
    80002830:	00048513          	mv	a0,s1
    80002834:	01813083          	ld	ra,24(sp)
    80002838:	01013403          	ld	s0,16(sp)
    8000283c:	00813483          	ld	s1,8(sp)
    80002840:	02010113          	addi	sp,sp,32
    80002844:	00008067          	ret
    else getcWaiterTail = nullptr;
    80002848:	0000a797          	auipc	a5,0xa
    8000284c:	5207b023          	sd	zero,1312(a5) # 8000cd68 <_ZN7Konsole14getcWaiterTailE>
    80002850:	fc1ff06f          	j	80002810 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

0000000080002854 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    80002854:	fe010113          	addi	sp,sp,-32
    80002858:	00113c23          	sd	ra,24(sp)
    8000285c:	00813823          	sd	s0,16(sp)
    80002860:	00913423          	sd	s1,8(sp)
    80002864:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    80002868:	0000a517          	auipc	a0,0xa
    8000286c:	3e050513          	addi	a0,a0,992 # 8000cc48 <_ZN7Konsole11outputItemsE>
    80002870:	12052823          	sw	zero,304(a0)
    80002874:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    80002878:	00052c23          	sw	zero,24(a0)
    8000287c:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    80002880:	12053423          	sd	zero,296(a0)
    80002884:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    80002888:	00000593          	li	a1,0
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	05c080e7          	jalr	92(ra) # 800018e8 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80002894:	00001097          	auipc	ra,0x1
    80002898:	ea8080e7          	jalr	-344(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    8000289c:	18000593          	li	a1,384
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	ef8080e7          	jalr	-264(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800028a8:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	400080e7          	jalr	1024(ra) # 80001cac <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800028b4:	00000797          	auipc	a5,0x0
    800028b8:	e0078793          	addi	a5,a5,-512 # 800026b4 <_ZN7Konsole16outputThreadBodyEPv>
    800028bc:	00f4b023          	sd	a5,0(s1)
    800028c0:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800028c4:	00001097          	auipc	ra,0x1
    800028c8:	e78080e7          	jalr	-392(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    800028cc:	000085b7          	lui	a1,0x8
    800028d0:	00001097          	auipc	ra,0x1
    800028d4:	ec8080e7          	jalr	-312(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    800028d8:	00008637          	lui	a2,0x8
    800028dc:	00c50633          	add	a2,a0,a2
    800028e0:	00000593          	li	a1,0
    800028e4:	00048513          	mv	a0,s1
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	57c080e7          	jalr	1404(ra) # 80001e64 <_ZN7KThread5setupEPS_Pm>
    outputThread->threadContext.sstatus |= (1UL << 8);
    800028f0:	1704b783          	ld	a5,368(s1)
    800028f4:	1007e793          	ori	a5,a5,256
    800028f8:	16f4b823          	sd	a5,368(s1)
    Scheduler::Put(outputThread);
    800028fc:	00048513          	mv	a0,s1
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	7b0080e7          	jalr	1968(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
}
    80002908:	01813083          	ld	ra,24(sp)
    8000290c:	01013403          	ld	s0,16(sp)
    80002910:	00813483          	ld	s1,8(sp)
    80002914:	02010113          	addi	sp,sp,32
    80002918:	00008067          	ret

000000008000291c <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    8000291c:	fe010113          	addi	sp,sp,-32
    80002920:	00113c23          	sd	ra,24(sp)
    80002924:	00813823          	sd	s0,16(sp)
    80002928:	00913423          	sd	s1,8(sp)
    8000292c:	01213023          	sd	s2,0(sp)
    80002930:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    80002934:	00005097          	auipc	ra,0x5
    80002938:	330080e7          	jalr	816(ra) # 80007c64 <plic_claim>
    8000293c:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    80002940:	00a00793          	li	a5,10
    80002944:	02f50663          	beq	a0,a5,80002970 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    80002948:	0a049463          	bnez	s1,800029f0 <_ZN7Konsole15handleInterruptEv+0xd4>
}
    8000294c:	01813083          	ld	ra,24(sp)
    80002950:	01013403          	ld	s0,16(sp)
    80002954:	00813483          	ld	s1,8(sp)
    80002958:	00013903          	ld	s2,0(sp)
    8000295c:	02010113          	addi	sp,sp,32
    80002960:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    80002964:	0b253c23          	sd	s2,184(a0)
                Scheduler::Put(waiter);
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	748080e7          	jalr	1864(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80002970:	0000a797          	auipc	a5,0xa
    80002974:	1e07b783          	ld	a5,480(a5) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002978:	0007b783          	ld	a5,0(a5)
    8000297c:	0007c783          	lbu	a5,0(a5)
    80002980:	0017f793          	andi	a5,a5,1
    80002984:	fc0782e3          	beqz	a5,80002948 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    80002988:	0000a797          	auipc	a5,0xa
    8000298c:	1c07b783          	ld	a5,448(a5) # 8000cb48 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002990:	0007b783          	ld	a5,0(a5)
    80002994:	0007c783          	lbu	a5,0(a5)
    80002998:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	e30080e7          	jalr	-464(ra) # 800027cc <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    800029a4:	fc0510e3          	bnez	a0,80002964 <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    800029a8:	0000a617          	auipc	a2,0xa
    800029ac:	2a060613          	addi	a2,a2,672 # 8000cc48 <_ZN7Konsole11outputItemsE>
    800029b0:	13462683          	lw	a3,308(a2)
    800029b4:	0016879b          	addiw	a5,a3,1
    800029b8:	41f7d71b          	sraiw	a4,a5,0x1f
    800029bc:	0187571b          	srliw	a4,a4,0x18
    800029c0:	00e787bb          	addw	a5,a5,a4
    800029c4:	0ff7f793          	andi	a5,a5,255
    800029c8:	40e787bb          	subw	a5,a5,a4
    800029cc:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    800029d0:	13062603          	lw	a2,304(a2)
    800029d4:	f8e60ee3          	beq	a2,a4,80002970 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    800029d8:	0000a717          	auipc	a4,0xa
    800029dc:	27070713          	addi	a4,a4,624 # 8000cc48 <_ZN7Konsole11outputItemsE>
    800029e0:	00d706b3          	add	a3,a4,a3
    800029e4:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    800029e8:	12f72a23          	sw	a5,308(a4)
    800029ec:	f85ff06f          	j	80002970 <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    800029f0:	00048513          	mv	a0,s1
    800029f4:	00005097          	auipc	ra,0x5
    800029f8:	2a8080e7          	jalr	680(ra) # 80007c9c <plic_complete>
}
    800029fc:	f51ff06f          	j	8000294c <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002a00 <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    80002a00:	fe010113          	addi	sp,sp,-32
    80002a04:	00113c23          	sd	ra,24(sp)
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	02010413          	addi	s0,sp,32
    80002a14:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    80002a18:	0000a617          	auipc	a2,0xa
    80002a1c:	23060613          	addi	a2,a2,560 # 8000cc48 <_ZN7Konsole11outputItemsE>
    80002a20:	01c62683          	lw	a3,28(a2)
    80002a24:	0016879b          	addiw	a5,a3,1
    80002a28:	41f7d71b          	sraiw	a4,a5,0x1f
    80002a2c:	0187571b          	srliw	a4,a4,0x18
    80002a30:	00e787bb          	addw	a5,a5,a4
    80002a34:	0ff7f793          	andi	a5,a5,255
    80002a38:	40e787bb          	subw	a5,a5,a4
    80002a3c:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    80002a40:	01862603          	lw	a2,24(a2)
    80002a44:	04e60063          	beq	a2,a4,80002a84 <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    80002a48:	0000a517          	auipc	a0,0xa
    80002a4c:	20050513          	addi	a0,a0,512 # 8000cc48 <_ZN7Konsole11outputItemsE>
    80002a50:	00d506b3          	add	a3,a0,a3
    80002a54:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    80002a58:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	024080e7          	jalr	36(ra) # 80001a80 <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    80002a64:	02048a63          	beqz	s1,80002a98 <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    80002a68:	0a04bc23          	sd	zero,184(s1)
    return 0;
    80002a6c:	00000513          	li	a0,0
}
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	01013403          	ld	s0,16(sp)
    80002a78:	00813483          	ld	s1,8(sp)
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    80002a84:	00050663          	beqz	a0,80002a90 <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    80002a88:	fff00793          	li	a5,-1
    80002a8c:	0af53c23          	sd	a5,184(a0)
        return -1;
    80002a90:	fff00513          	li	a0,-1
    80002a94:	fddff06f          	j	80002a70 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    80002a98:	00000513          	li	a0,0
    80002a9c:	fd5ff06f          	j	80002a70 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

0000000080002aa0 <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    80002aa0:	0000a717          	auipc	a4,0xa
    80002aa4:	1a870713          	addi	a4,a4,424 # 8000cc48 <_ZN7Konsole11outputItemsE>
    80002aa8:	13072783          	lw	a5,304(a4)
    80002aac:	13472703          	lw	a4,308(a4)
    80002ab0:	04e78063          	beq	a5,a4,80002af0 <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    80002ab4:	0000a617          	auipc	a2,0xa
    80002ab8:	19460613          	addi	a2,a2,404 # 8000cc48 <_ZN7Konsole11outputItemsE>
    80002abc:	00f60733          	add	a4,a2,a5
    80002ac0:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    80002ac4:	0017879b          	addiw	a5,a5,1
    80002ac8:	41f7d71b          	sraiw	a4,a5,0x1f
    80002acc:	0187571b          	srliw	a4,a4,0x18
    80002ad0:	00e787bb          	addw	a5,a5,a4
    80002ad4:	0ff7f793          	andi	a5,a5,255
    80002ad8:	40e787bb          	subw	a5,a5,a4
    80002adc:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002ae0:	00050463          	beqz	a0,80002ae8 <_ZN7Konsole10getcKernelEP7KThread+0x48>
    80002ae4:	0ad53c23          	sd	a3,184(a0)
        return (unsigned char)c;
    80002ae8:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002aec:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	c44080e7          	jalr	-956(ra) # 80002744 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    80002b08:	ffe00513          	li	a0,-2
    80002b0c:	00813083          	ld	ra,8(sp)
    80002b10:	00013403          	ld	s0,0(sp)
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret

0000000080002b1c <userMainK>:
void userMain();
void myUserMain();

extern "C" void userMainK(void) {
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00113423          	sd	ra,8(sp)
    80002b24:	00813023          	sd	s0,0(sp)
    80002b28:	01010413          	addi	s0,sp,16
    const bool mytests=true;
    if (!mytests) {
        userMain();
    }
    myUserMain();
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	5e4080e7          	jalr	1508(ra) # 80003110 <_Z10myUserMainv>
}
    80002b34:	00813083          	ld	ra,8(sp)
    80002b38:	00013403          	ld	s0,0(sp)
    80002b3c:	01010113          	addi	sp,sp,16
    80002b40:	00008067          	ret

0000000080002b44 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00113423          	sd	ra,8(sp)
    80002b4c:	00813023          	sd	s0,0(sp)
    80002b50:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    80002b54:	03e00513          	li	a0,62
    80002b58:	00001097          	auipc	ra,0x1
    80002b5c:	ae4080e7          	jalr	-1308(ra) # 8000363c <_ZN7Console4putcEc>
    80002b60:	00c0006f          	j	80002b6c <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	ad8080e7          	jalr	-1320(ra) # 8000363c <_ZN7Console4putcEc>
        char c = Console::getc();
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	aa8080e7          	jalr	-1368(ra) # 80003614 <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002b74:	00d00793          	li	a5,13
    80002b78:	fef50ae3          	beq	a0,a5,80002b6c <_ZL8echoFuncPv+0x28>
    80002b7c:	fe9ff06f          	j	80002b64 <_ZL8echoFuncPv+0x20>

0000000080002b80 <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    80002b80:	fb010113          	addi	sp,sp,-80
    80002b84:	04113423          	sd	ra,72(sp)
    80002b88:	04813023          	sd	s0,64(sp)
    80002b8c:	02913c23          	sd	s1,56(sp)
    80002b90:	03213823          	sd	s2,48(sp)
    80002b94:	03313423          	sd	s3,40(sp)
    80002b98:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    80002b9c:	00400513          	li	a0,4
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	9b4080e7          	jalr	-1612(ra) # 80001554 <mem_alloc>
    80002ba8:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    80002bac:	04300793          	li	a5,67
    80002bb0:	00f50023          	sb	a5,0(a0)
    80002bb4:	02b00793          	li	a5,43
    80002bb8:	00f500a3          	sb	a5,1(a0)
    80002bbc:	00f50123          	sb	a5,2(a0)
    80002bc0:	00a00793          	li	a5,10
    80002bc4:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    80002bc8:	04300513          	li	a0,67
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	a70080e7          	jalr	-1424(ra) # 8000363c <_ZN7Console4putcEc>
    80002bd4:	0014c503          	lbu	a0,1(s1)
    80002bd8:	00001097          	auipc	ra,0x1
    80002bdc:	a64080e7          	jalr	-1436(ra) # 8000363c <_ZN7Console4putcEc>
    80002be0:	0024c503          	lbu	a0,2(s1)
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	a58080e7          	jalr	-1448(ra) # 8000363c <_ZN7Console4putcEc>
    80002bec:	0034c503          	lbu	a0,3(s1)
    80002bf0:	00001097          	auipc	ra,0x1
    80002bf4:	a4c080e7          	jalr	-1460(ra) # 8000363c <_ZN7Console4putcEc>
    mem_free(buf);
    80002bf8:	00048513          	mv	a0,s1
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	984080e7          	jalr	-1660(ra) # 80001580 <mem_free>

    Semaphore mx(1), done(0);
    80002c04:	00100593          	li	a1,1
    80002c08:	fc040513          	addi	a0,s0,-64
    80002c0c:	00001097          	auipc	ra,0x1
    80002c10:	8e0080e7          	jalr	-1824(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    80002c14:	00000593          	li	a1,0
    80002c18:	fb040513          	addi	a0,s0,-80
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	8d0080e7          	jalr	-1840(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002c24:	03800513          	li	a0,56
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	708080e7          	jalr	1800(ra) # 80003330 <_Znwm>
    80002c30:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	7e4080e7          	jalr	2020(ra) # 80003418 <_ZN6ThreadC1Ev>
    80002c3c:	0000a797          	auipc	a5,0xa
    80002c40:	c6c78793          	addi	a5,a5,-916 # 8000c8a8 <_ZTV6Worker+0x10>
    80002c44:	00f9b023          	sd	a5,0(s3)
    80002c48:	04100793          	li	a5,65
    80002c4c:	02f98023          	sb	a5,32(s3)
    80002c50:	fc040793          	addi	a5,s0,-64
    80002c54:	02f9b423          	sd	a5,40(s3)
    80002c58:	fb040793          	addi	a5,s0,-80
    80002c5c:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    80002c60:	03800513          	li	a0,56
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	6cc080e7          	jalr	1740(ra) # 80003330 <_Znwm>
    80002c6c:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	7a8080e7          	jalr	1960(ra) # 80003418 <_ZN6ThreadC1Ev>
    80002c78:	0000a797          	auipc	a5,0xa
    80002c7c:	c3078793          	addi	a5,a5,-976 # 8000c8a8 <_ZTV6Worker+0x10>
    80002c80:	00f93023          	sd	a5,0(s2)
    80002c84:	04200793          	li	a5,66
    80002c88:	02f90023          	sb	a5,32(s2)
    80002c8c:	fc040793          	addi	a5,s0,-64
    80002c90:	02f93423          	sd	a5,40(s2)
    80002c94:	fb040793          	addi	a5,s0,-80
    80002c98:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    80002c9c:	03800513          	li	a0,56
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	690080e7          	jalr	1680(ra) # 80003330 <_Znwm>
    80002ca8:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	76c080e7          	jalr	1900(ra) # 80003418 <_ZN6ThreadC1Ev>
    80002cb4:	0000a797          	auipc	a5,0xa
    80002cb8:	bf478793          	addi	a5,a5,-1036 # 8000c8a8 <_ZTV6Worker+0x10>
    80002cbc:	00f4b023          	sd	a5,0(s1)
    80002cc0:	04300793          	li	a5,67
    80002cc4:	02f48023          	sb	a5,32(s1)
    80002cc8:	fc040793          	addi	a5,s0,-64
    80002ccc:	02f4b423          	sd	a5,40(s1)
    80002cd0:	fb040793          	addi	a5,s0,-80
    80002cd4:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    80002cd8:	00098513          	mv	a0,s3
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	76c080e7          	jalr	1900(ra) # 80003448 <_ZN6Thread5startEv>
    80002ce4:	00090513          	mv	a0,s2
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	760080e7          	jalr	1888(ra) # 80003448 <_ZN6Thread5startEv>
    80002cf0:	00048513          	mv	a0,s1
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	754080e7          	jalr	1876(ra) # 80003448 <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002cfc:	fb040513          	addi	a0,s0,-80
    80002d00:	00001097          	auipc	ra,0x1
    80002d04:	824080e7          	jalr	-2012(ra) # 80003524 <_ZN9Semaphore4waitEv>
    80002d08:	fb040513          	addi	a0,s0,-80
    80002d0c:	00001097          	auipc	ra,0x1
    80002d10:	818080e7          	jalr	-2024(ra) # 80003524 <_ZN9Semaphore4waitEv>
    80002d14:	fb040513          	addi	a0,s0,-80
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	80c080e7          	jalr	-2036(ra) # 80003524 <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002d20:	00098a63          	beqz	s3,80002d34 <userMainCpp+0x1b4>
    80002d24:	0009b783          	ld	a5,0(s3)
    80002d28:	0087b783          	ld	a5,8(a5)
    80002d2c:	00098513          	mv	a0,s3
    80002d30:	000780e7          	jalr	a5
    80002d34:	00090a63          	beqz	s2,80002d48 <userMainCpp+0x1c8>
    80002d38:	00093783          	ld	a5,0(s2)
    80002d3c:	0087b783          	ld	a5,8(a5)
    80002d40:	00090513          	mv	a0,s2
    80002d44:	000780e7          	jalr	a5
    80002d48:	00048a63          	beqz	s1,80002d5c <userMainCpp+0x1dc>
    80002d4c:	0004b783          	ld	a5,0(s1)
    80002d50:	0087b783          	ld	a5,8(a5)
    80002d54:	00048513          	mv	a0,s1
    80002d58:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002d5c:	00a00513          	li	a0,10
    80002d60:	00001097          	auipc	ra,0x1
    80002d64:	8dc080e7          	jalr	-1828(ra) # 8000363c <_ZN7Console4putcEc>
    80002d68:	04f00513          	li	a0,79
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	8d0080e7          	jalr	-1840(ra) # 8000363c <_ZN7Console4putcEc>
    80002d74:	04b00513          	li	a0,75
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	8c4080e7          	jalr	-1852(ra) # 8000363c <_ZN7Console4putcEc>
    80002d80:	00a00513          	li	a0,10
    80002d84:	00001097          	auipc	ra,0x1
    80002d88:	8b8080e7          	jalr	-1864(ra) # 8000363c <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    80002d8c:	02800513          	li	a0,40
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	5a0080e7          	jalr	1440(ra) # 80003330 <_Znwm>
    80002d98:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002d9c:	00300593          	li	a1,3
    80002da0:	00001097          	auipc	ra,0x1
    80002da4:	808080e7          	jalr	-2040(ra) # 800035a8 <_ZN14PeriodicThreadC1Em>
    80002da8:	0000a797          	auipc	a5,0xa
    80002dac:	b2878793          	addi	a5,a5,-1240 # 8000c8d0 <_ZTV6Ticker+0x10>
    80002db0:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002db4:	00048513          	mv	a0,s1
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	690080e7          	jalr	1680(ra) # 80003448 <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002dc0:	00f00513          	li	a0,15
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	700080e7          	jalr	1792(ra) # 800034c4 <_ZN6Thread5sleepEm>
    t->terminate();
    80002dcc:	00048513          	mv	a0,s1
    80002dd0:	00001097          	auipc	ra,0x1
    80002dd4:	828080e7          	jalr	-2008(ra) # 800035f8 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002dd8:	00500513          	li	a0,5
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	6e8080e7          	jalr	1768(ra) # 800034c4 <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002de4:	00a00513          	li	a0,10
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	854080e7          	jalr	-1964(ra) # 8000363c <_ZN7Console4putcEc>
    delete t;
    80002df0:	00048a63          	beqz	s1,80002e04 <userMainCpp+0x284>
    80002df4:	0004b783          	ld	a5,0(s1)
    80002df8:	0087b783          	ld	a5,8(a5)
    80002dfc:	00048513          	mv	a0,s1
    80002e00:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002e04:	02000513          	li	a0,32
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	528080e7          	jalr	1320(ra) # 80003330 <_Znwm>
    80002e10:	00050493          	mv	s1,a0
    80002e14:	00000613          	li	a2,0
    80002e18:	00000597          	auipc	a1,0x0
    80002e1c:	d2c58593          	addi	a1,a1,-724 # 80002b44 <_ZL8echoFuncPv>
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	5c8080e7          	jalr	1480(ra) # 800033e8 <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	61c080e7          	jalr	1564(ra) # 80003448 <_ZN6Thread5startEv>
    while (true) {}
    80002e34:	0000006f          	j	80002e34 <userMainCpp+0x2b4>
    80002e38:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002e3c:	00098513          	mv	a0,s3
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	518080e7          	jalr	1304(ra) # 80003358 <_ZdlPv>
    Semaphore mx(1), done(0);
    80002e48:	fb040513          	addi	a0,s0,-80
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	4ac080e7          	jalr	1196(ra) # 800032f8 <_ZN9SemaphoreD1Ev>
    80002e54:	fc040513          	addi	a0,s0,-64
    80002e58:	00000097          	auipc	ra,0x0
    80002e5c:	4a0080e7          	jalr	1184(ra) # 800032f8 <_ZN9SemaphoreD1Ev>
    80002e60:	00048513          	mv	a0,s1
    80002e64:	0000b097          	auipc	ra,0xb
    80002e68:	144080e7          	jalr	324(ra) # 8000dfa8 <_Unwind_Resume>
    80002e6c:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002e70:	00090513          	mv	a0,s2
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	4e4080e7          	jalr	1252(ra) # 80003358 <_ZdlPv>
    80002e7c:	fcdff06f          	j	80002e48 <userMainCpp+0x2c8>
    80002e80:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002e84:	00048513          	mv	a0,s1
    80002e88:	00000097          	auipc	ra,0x0
    80002e8c:	4d0080e7          	jalr	1232(ra) # 80003358 <_ZdlPv>
    80002e90:	00090493          	mv	s1,s2
    80002e94:	fb5ff06f          	j	80002e48 <userMainCpp+0x2c8>
    80002e98:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002e9c:	00048513          	mv	a0,s1
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	4b8080e7          	jalr	1208(ra) # 80003358 <_ZdlPv>
    80002ea8:	00090493          	mv	s1,s2
    80002eac:	f9dff06f          	j	80002e48 <userMainCpp+0x2c8>
    80002eb0:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002eb4:	00048513          	mv	a0,s1
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	4a0080e7          	jalr	1184(ra) # 80003358 <_ZdlPv>
    80002ec0:	00090493          	mv	s1,s2
    80002ec4:	f85ff06f          	j	80002e48 <userMainCpp+0x2c8>
    80002ec8:	00050493          	mv	s1,a0
    80002ecc:	f7dff06f          	j	80002e48 <userMainCpp+0x2c8>
    80002ed0:	00050493          	mv	s1,a0
    80002ed4:	f81ff06f          	j	80002e54 <userMainCpp+0x2d4>

0000000080002ed8 <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002ed8:	ff010113          	addi	sp,sp,-16
    80002edc:	00113423          	sd	ra,8(sp)
    80002ee0:	00813023          	sd	s0,0(sp)
    80002ee4:	01010413          	addi	s0,sp,16
    80002ee8:	02e00513          	li	a0,46
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	750080e7          	jalr	1872(ra) # 8000363c <_ZN7Console4putcEc>
    80002ef4:	00813083          	ld	ra,8(sp)
    80002ef8:	00013403          	ld	s0,0(sp)
    80002efc:	01010113          	addi	sp,sp,16
    80002f00:	00008067          	ret

0000000080002f04 <_ZN6Worker3runEv>:
    void run() override {
    80002f04:	fe010113          	addi	sp,sp,-32
    80002f08:	00113c23          	sd	ra,24(sp)
    80002f0c:	00813823          	sd	s0,16(sp)
    80002f10:	00913423          	sd	s1,8(sp)
    80002f14:	01213023          	sd	s2,0(sp)
    80002f18:	02010413          	addi	s0,sp,32
    80002f1c:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002f20:	00000913          	li	s2,0
    80002f24:	0500006f          	j	80002f74 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002f28:	0284b503          	ld	a0,40(s1)
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	5f8080e7          	jalr	1528(ra) # 80003524 <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002f34:	05b00513          	li	a0,91
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	704080e7          	jalr	1796(ra) # 8000363c <_ZN7Console4putcEc>
    80002f40:	0204c503          	lbu	a0,32(s1)
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	6f8080e7          	jalr	1784(ra) # 8000363c <_ZN7Console4putcEc>
    80002f4c:	05d00513          	li	a0,93
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	6ec080e7          	jalr	1772(ra) # 8000363c <_ZN7Console4putcEc>
            mx->signal();
    80002f58:	0284b503          	ld	a0,40(s1)
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	5f4080e7          	jalr	1524(ra) # 80003550 <_ZN9Semaphore6signalEv>
            Thread::sleep(2);
    80002f64:	00200513          	li	a0,2
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	55c080e7          	jalr	1372(ra) # 800034c4 <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002f70:	0019091b          	addiw	s2,s2,1
    80002f74:	00200793          	li	a5,2
    80002f78:	fb27d8e3          	bge	a5,s2,80002f28 <_ZN6Worker3runEv+0x24>
        done->signal();
    80002f7c:	0304b503          	ld	a0,48(s1)
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	5d0080e7          	jalr	1488(ra) # 80003550 <_ZN9Semaphore6signalEv>
    }
    80002f88:	01813083          	ld	ra,24(sp)
    80002f8c:	01013403          	ld	s0,16(sp)
    80002f90:	00813483          	ld	s1,8(sp)
    80002f94:	00013903          	ld	s2,0(sp)
    80002f98:	02010113          	addi	sp,sp,32
    80002f9c:	00008067          	ret

0000000080002fa0 <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00113423          	sd	ra,8(sp)
    80002fa8:	00813023          	sd	s0,0(sp)
    80002fac:	01010413          	addi	s0,sp,16
    80002fb0:	0000a797          	auipc	a5,0xa
    80002fb4:	8f878793          	addi	a5,a5,-1800 # 8000c8a8 <_ZTV6Worker+0x10>
    80002fb8:	00f53023          	sd	a5,0(a0)
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	2a4080e7          	jalr	676(ra) # 80003260 <_ZN6ThreadD1Ev>
    80002fc4:	00813083          	ld	ra,8(sp)
    80002fc8:	00013403          	ld	s0,0(sp)
    80002fcc:	01010113          	addi	sp,sp,16
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZN6WorkerD0Ev>:
    80002fd4:	fe010113          	addi	sp,sp,-32
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	00813823          	sd	s0,16(sp)
    80002fe0:	00913423          	sd	s1,8(sp)
    80002fe4:	02010413          	addi	s0,sp,32
    80002fe8:	00050493          	mv	s1,a0
    80002fec:	0000a797          	auipc	a5,0xa
    80002ff0:	8bc78793          	addi	a5,a5,-1860 # 8000c8a8 <_ZTV6Worker+0x10>
    80002ff4:	00f53023          	sd	a5,0(a0)
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	268080e7          	jalr	616(ra) # 80003260 <_ZN6ThreadD1Ev>
    80003000:	00048513          	mv	a0,s1
    80003004:	00000097          	auipc	ra,0x0
    80003008:	354080e7          	jalr	852(ra) # 80003358 <_ZdlPv>
    8000300c:	01813083          	ld	ra,24(sp)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	00813483          	ld	s1,8(sp)
    80003018:	02010113          	addi	sp,sp,32
    8000301c:	00008067          	ret

0000000080003020 <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80003020:	ff010113          	addi	sp,sp,-16
    80003024:	00113423          	sd	ra,8(sp)
    80003028:	00813023          	sd	s0,0(sp)
    8000302c:	01010413          	addi	s0,sp,16
    int wait();
    int signal();
private:
    sem_t myHandle;
};

    80003030:	0000a797          	auipc	a5,0xa
    80003034:	b307b783          	ld	a5,-1232(a5) # 8000cb60 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003038:	01078793          	addi	a5,a5,16
    8000303c:	00f53023          	sd	a5,0(a0)
    80003040:	00000097          	auipc	ra,0x0
    80003044:	220080e7          	jalr	544(ra) # 80003260 <_ZN6ThreadD1Ev>
    80003048:	00813083          	ld	ra,8(sp)
    8000304c:	00013403          	ld	s0,0(sp)
    80003050:	01010113          	addi	sp,sp,16
    80003054:	00008067          	ret

0000000080003058 <_ZN6TickerD0Ev>:
    80003058:	fe010113          	addi	sp,sp,-32
    8000305c:	00113c23          	sd	ra,24(sp)
    80003060:	00813823          	sd	s0,16(sp)
    80003064:	00913423          	sd	s1,8(sp)
    80003068:	02010413          	addi	s0,sp,32
    8000306c:	00050493          	mv	s1,a0
    80003070:	0000a797          	auipc	a5,0xa
    80003074:	af07b783          	ld	a5,-1296(a5) # 8000cb60 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003078:	01078793          	addi	a5,a5,16
    8000307c:	00f53023          	sd	a5,0(a0)
    80003080:	00000097          	auipc	ra,0x0
    80003084:	1e0080e7          	jalr	480(ra) # 80003260 <_ZN6ThreadD1Ev>
    80003088:	00048513          	mv	a0,s1
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	2cc080e7          	jalr	716(ra) # 80003358 <_ZdlPv>
    80003094:	01813083          	ld	ra,24(sp)
    80003098:	01013403          	ld	s0,16(sp)
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	02010113          	addi	sp,sp,32
    800030a4:	00008067          	ret

00000000800030a8 <_ZN6TestTh10testThBodyEPv>:
    void run() override {
        testThBody(nullptr);

    }
};
void TestTh::testThBody(void* arg) {
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    for (long long i=0; i < 1000000;i++) {
    800030bc:	00000493          	li	s1,0
    800030c0:	000f47b7          	lui	a5,0xf4
    800030c4:	23f78793          	addi	a5,a5,575 # f423f <_entry-0x7ff0bdc1>
    800030c8:	0097ce63          	blt	a5,s1,800030e4 <_ZN6TestTh10testThBodyEPv+0x3c>
        printString("TestTh\n");
    800030cc:	00007517          	auipc	a0,0x7
    800030d0:	f5450513          	addi	a0,a0,-172 # 8000a020 <CONSOLE_STATUS+0x10>
    800030d4:	00003097          	auipc	ra,0x3
    800030d8:	238080e7          	jalr	568(ra) # 8000630c <_Z11printStringPKc>
    for (long long i=0; i < 1000000;i++) {
    800030dc:	00148493          	addi	s1,s1,1
    800030e0:	fe1ff06f          	j	800030c0 <_ZN6TestTh10testThBodyEPv+0x18>
    }
    printString("Finished Thread\n");
    800030e4:	00007517          	auipc	a0,0x7
    800030e8:	f4450513          	addi	a0,a0,-188 # 8000a028 <CONSOLE_STATUS+0x18>
    800030ec:	00003097          	auipc	ra,0x3
    800030f0:	220080e7          	jalr	544(ra) # 8000630c <_Z11printStringPKc>
    thread_dispatch();
    800030f4:	ffffe097          	auipc	ra,0xffffe
    800030f8:	580080e7          	jalr	1408(ra) # 80001674 <thread_dispatch>
}
    800030fc:	01813083          	ld	ra,24(sp)
    80003100:	01013403          	ld	s0,16(sp)
    80003104:	00813483          	ld	s1,8(sp)
    80003108:	02010113          	addi	sp,sp,32
    8000310c:	00008067          	ret

0000000080003110 <_Z10myUserMainv>:
void myUserMain() {
    80003110:	fe010113          	addi	sp,sp,-32
    80003114:	00113c23          	sd	ra,24(sp)
    80003118:	00813823          	sd	s0,16(sp)
    8000311c:	00913423          	sd	s1,8(sp)
    80003120:	01213023          	sd	s2,0(sp)
    80003124:	02010413          	addi	s0,sp,32
    getc();
    80003128:	ffffe097          	auipc	ra,0xffffe
    8000312c:	67c080e7          	jalr	1660(ra) # 800017a4 <getc>
    printString("Hello World!");
    80003130:	00007517          	auipc	a0,0x7
    80003134:	f1050513          	addi	a0,a0,-240 # 8000a040 <CONSOLE_STATUS+0x30>
    80003138:	00003097          	auipc	ra,0x3
    8000313c:	1d4080e7          	jalr	468(ra) # 8000630c <_Z11printStringPKc>
    Thread* th1 = new TestTh();
    80003140:	02000513          	li	a0,32
    80003144:	00000097          	auipc	ra,0x0
    80003148:	1ec080e7          	jalr	492(ra) # 80003330 <_Znwm>
    8000314c:	00050493          	mv	s1,a0
    TestTh():Thread() {}
    80003150:	00000097          	auipc	ra,0x0
    80003154:	2c8080e7          	jalr	712(ra) # 80003418 <_ZN6ThreadC1Ev>
    80003158:	00009797          	auipc	a5,0x9
    8000315c:	7b078793          	addi	a5,a5,1968 # 8000c908 <_ZTV6TestTh+0x10>
    80003160:	00f4b023          	sd	a5,0(s1)
    th1->start();
    80003164:	00048513          	mv	a0,s1
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	2e0080e7          	jalr	736(ra) # 80003448 <_ZN6Thread5startEv>
    th1->dispatch();
    80003170:	00000097          	auipc	ra,0x0
    80003174:	32c080e7          	jalr	812(ra) # 8000349c <_ZN6Thread8dispatchEv>

    th1->join(th1);
    80003178:	00048513          	mv	a0,s1
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	400080e7          	jalr	1024(ra) # 8000357c <_ZN6Thread4joinEPS_>

    printString("Finished");
    80003184:	00007517          	auipc	a0,0x7
    80003188:	ecc50513          	addi	a0,a0,-308 # 8000a050 <CONSOLE_STATUS+0x40>
    8000318c:	00003097          	auipc	ra,0x3
    80003190:	180080e7          	jalr	384(ra) # 8000630c <_Z11printStringPKc>

    while (true) {}
    80003194:	0000006f          	j	80003194 <_Z10myUserMainv+0x84>
    80003198:	00050913          	mv	s2,a0
    Thread* th1 = new TestTh();
    8000319c:	00048513          	mv	a0,s1
    800031a0:	00000097          	auipc	ra,0x0
    800031a4:	1b8080e7          	jalr	440(ra) # 80003358 <_ZdlPv>
    800031a8:	00090513          	mv	a0,s2
    800031ac:	0000b097          	auipc	ra,0xb
    800031b0:	dfc080e7          	jalr	-516(ra) # 8000dfa8 <_Unwind_Resume>

00000000800031b4 <_ZN6TestThD1Ev>:
class TestTh: public Thread {
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00113423          	sd	ra,8(sp)
    800031bc:	00813023          	sd	s0,0(sp)
    800031c0:	01010413          	addi	s0,sp,16
    800031c4:	00009797          	auipc	a5,0x9
    800031c8:	74478793          	addi	a5,a5,1860 # 8000c908 <_ZTV6TestTh+0x10>
    800031cc:	00f53023          	sd	a5,0(a0)
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	090080e7          	jalr	144(ra) # 80003260 <_ZN6ThreadD1Ev>
    800031d8:	00813083          	ld	ra,8(sp)
    800031dc:	00013403          	ld	s0,0(sp)
    800031e0:	01010113          	addi	sp,sp,16
    800031e4:	00008067          	ret

00000000800031e8 <_ZN6TestThD0Ev>:
    800031e8:	fe010113          	addi	sp,sp,-32
    800031ec:	00113c23          	sd	ra,24(sp)
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00913423          	sd	s1,8(sp)
    800031f8:	02010413          	addi	s0,sp,32
    800031fc:	00050493          	mv	s1,a0
    80003200:	00009797          	auipc	a5,0x9
    80003204:	70878793          	addi	a5,a5,1800 # 8000c908 <_ZTV6TestTh+0x10>
    80003208:	00f53023          	sd	a5,0(a0)
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	054080e7          	jalr	84(ra) # 80003260 <_ZN6ThreadD1Ev>
    80003214:	00048513          	mv	a0,s1
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	140080e7          	jalr	320(ra) # 80003358 <_ZdlPv>
    80003220:	01813083          	ld	ra,24(sp)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	00813483          	ld	s1,8(sp)
    8000322c:	02010113          	addi	sp,sp,32
    80003230:	00008067          	ret

0000000080003234 <_ZN6TestTh3runEv>:
    void run() override {
    80003234:	ff010113          	addi	sp,sp,-16
    80003238:	00113423          	sd	ra,8(sp)
    8000323c:	00813023          	sd	s0,0(sp)
    80003240:	01010413          	addi	s0,sp,16
        testThBody(nullptr);
    80003244:	00000593          	li	a1,0
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	e60080e7          	jalr	-416(ra) # 800030a8 <_ZN6TestTh10testThBodyEPv>
    }
    80003250:	00813083          	ld	ra,8(sp)
    80003254:	00013403          	ld	s0,0(sp)
    80003258:	01010113          	addi	sp,sp,16
    8000325c:	00008067          	ret

0000000080003260 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00813423          	sd	s0,8(sp)
    80003268:	01010413          	addi	s0,sp,16
    8000326c:	00813403          	ld	s0,8(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret

0000000080003278 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00113423          	sd	ra,8(sp)
    80003280:	00813023          	sd	s0,0(sp)
    80003284:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80003288:	00053783          	ld	a5,0(a0)
    8000328c:	0107b783          	ld	a5,16(a5)
    80003290:	000780e7          	jalr	a5
}
    80003294:	00813083          	ld	ra,8(sp)
    80003298:	00013403          	ld	s0,0(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret

00000000800032a4 <_ZN14PeriodicThread3runEv>:
}


PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	02010413          	addi	s0,sp,32
    800032b8:	00050493          	mv	s1,a0
    while (period) {
    800032bc:	0204b783          	ld	a5,32(s1)
    800032c0:	02078263          	beqz	a5,800032e4 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    800032c4:	0004b783          	ld	a5,0(s1)
    800032c8:	0187b783          	ld	a5,24(a5)
    800032cc:	00048513          	mv	a0,s1
    800032d0:	000780e7          	jalr	a5
        time_sleep(period);
    800032d4:	0204b503          	ld	a0,32(s1)
    800032d8:	ffffe097          	auipc	ra,0xffffe
    800032dc:	3bc080e7          	jalr	956(ra) # 80001694 <time_sleep>
    while (period) {
    800032e0:	fddff06f          	j	800032bc <_ZN14PeriodicThread3runEv+0x18>
    }
}
    800032e4:	01813083          	ld	ra,24(sp)
    800032e8:	01013403          	ld	s0,16(sp)
    800032ec:	00813483          	ld	s1,8(sp)
    800032f0:	02010113          	addi	sp,sp,32
    800032f4:	00008067          	ret

00000000800032f8 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00113423          	sd	ra,8(sp)
    80003300:	00813023          	sd	s0,0(sp)
    80003304:	01010413          	addi	s0,sp,16
    80003308:	00009797          	auipc	a5,0x9
    8000330c:	65078793          	addi	a5,a5,1616 # 8000c958 <_ZTV9Semaphore+0x10>
    80003310:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80003314:	00853503          	ld	a0,8(a0)
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	3dc080e7          	jalr	988(ra) # 800016f4 <sem_close>
}
    80003320:	00813083          	ld	ra,8(sp)
    80003324:	00013403          	ld	s0,0(sp)
    80003328:	01010113          	addi	sp,sp,16
    8000332c:	00008067          	ret

0000000080003330 <_Znwm>:
void* operator new(size_t size) {
    80003330:	ff010113          	addi	sp,sp,-16
    80003334:	00113423          	sd	ra,8(sp)
    80003338:	00813023          	sd	s0,0(sp)
    8000333c:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	214080e7          	jalr	532(ra) # 80001554 <mem_alloc>
    80003348:	00813083          	ld	ra,8(sp)
    8000334c:	00013403          	ld	s0,0(sp)
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret

0000000080003358 <_ZdlPv>:
void  operator delete(void* p)  {
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00113423          	sd	ra,8(sp)
    80003360:	00813023          	sd	s0,0(sp)
    80003364:	01010413          	addi	s0,sp,16
    mem_free(p); }
    80003368:	ffffe097          	auipc	ra,0xffffe
    8000336c:	218080e7          	jalr	536(ra) # 80001580 <mem_free>
    80003370:	00813083          	ld	ra,8(sp)
    80003374:	00013403          	ld	s0,0(sp)
    80003378:	01010113          	addi	sp,sp,16
    8000337c:	00008067          	ret

0000000080003380 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80003380:	ff010113          	addi	sp,sp,-16
    80003384:	00113423          	sd	ra,8(sp)
    80003388:	00813023          	sd	s0,0(sp)
    8000338c:	01010413          	addi	s0,sp,16
    80003390:	00000097          	auipc	ra,0x0
    80003394:	fc8080e7          	jalr	-56(ra) # 80003358 <_ZdlPv>
    80003398:	00813083          	ld	ra,8(sp)
    8000339c:	00013403          	ld	s0,0(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret

00000000800033a8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800033a8:	fe010113          	addi	sp,sp,-32
    800033ac:	00113c23          	sd	ra,24(sp)
    800033b0:	00813823          	sd	s0,16(sp)
    800033b4:	00913423          	sd	s1,8(sp)
    800033b8:	02010413          	addi	s0,sp,32
    800033bc:	00050493          	mv	s1,a0
}
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	f38080e7          	jalr	-200(ra) # 800032f8 <_ZN9SemaphoreD1Ev>
    800033c8:	00048513          	mv	a0,s1
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	f8c080e7          	jalr	-116(ra) # 80003358 <_ZdlPv>
    800033d4:	01813083          	ld	ra,24(sp)
    800033d8:	01013403          	ld	s0,16(sp)
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret

00000000800033e8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00813423          	sd	s0,8(sp)
    800033f0:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    800033f4:	00009797          	auipc	a5,0x9
    800033f8:	53c78793          	addi	a5,a5,1340 # 8000c930 <_ZTV6Thread+0x10>
    800033fc:	00f53023          	sd	a5,0(a0)
    80003400:	00053423          	sd	zero,8(a0)
    80003404:	00b53823          	sd	a1,16(a0)
    80003408:	00c53c23          	sd	a2,24(a0)
    8000340c:	00813403          	ld	s0,8(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret

0000000080003418 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813423          	sd	s0,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    80003424:	00009797          	auipc	a5,0x9
    80003428:	50c78793          	addi	a5,a5,1292 # 8000c930 <_ZTV6Thread+0x10>
    8000342c:	00f53023          	sd	a5,0(a0)
    80003430:	00053423          	sd	zero,8(a0)
    80003434:	00053823          	sd	zero,16(a0)
    80003438:	00053c23          	sd	zero,24(a0)
    8000343c:	00813403          	ld	s0,8(sp)
    80003440:	01010113          	addi	sp,sp,16
    80003444:	00008067          	ret

0000000080003448 <_ZN6Thread5startEv>:
int Thread::start() {
    80003448:	ff010113          	addi	sp,sp,-16
    8000344c:	00113423          	sd	ra,8(sp)
    80003450:	00813023          	sd	s0,0(sp)
    80003454:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    80003458:	01053783          	ld	a5,16(a0)
    8000345c:	02078663          	beqz	a5,80003488 <_ZN6Thread5startEv+0x40>
    80003460:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    80003464:	02078863          	beqz	a5,80003494 <_ZN6Thread5startEv+0x4c>
    80003468:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    8000346c:	00850513          	addi	a0,a0,8
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	13c080e7          	jalr	316(ra) # 800015ac <thread_create>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80003488:	00000597          	auipc	a1,0x0
    8000348c:	df058593          	addi	a1,a1,-528 # 80003278 <_ZN6Thread7runBodyEPv>
    80003490:	fd5ff06f          	j	80003464 <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    80003494:	00050613          	mv	a2,a0
    80003498:	fd5ff06f          	j	8000346c <_ZN6Thread5startEv+0x24>

000000008000349c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000349c:	ff010113          	addi	sp,sp,-16
    800034a0:	00113423          	sd	ra,8(sp)
    800034a4:	00813023          	sd	s0,0(sp)
    800034a8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	1c8080e7          	jalr	456(ra) # 80001674 <thread_dispatch>
}
    800034b4:	00813083          	ld	ra,8(sp)
    800034b8:	00013403          	ld	s0,0(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    800034c4:	ff010113          	addi	sp,sp,-16
    800034c8:	00113423          	sd	ra,8(sp)
    800034cc:	00813023          	sd	s0,0(sp)
    800034d0:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	1c0080e7          	jalr	448(ra) # 80001694 <time_sleep>
}
    800034dc:	00813083          	ld	ra,8(sp)
    800034e0:	00013403          	ld	s0,0(sp)
    800034e4:	01010113          	addi	sp,sp,16
    800034e8:	00008067          	ret

00000000800034ec <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800034ec:	ff010113          	addi	sp,sp,-16
    800034f0:	00113423          	sd	ra,8(sp)
    800034f4:	00813023          	sd	s0,0(sp)
    800034f8:	01010413          	addi	s0,sp,16
    800034fc:	00009797          	auipc	a5,0x9
    80003500:	45c78793          	addi	a5,a5,1116 # 8000c958 <_ZTV9Semaphore+0x10>
    80003504:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80003508:	00850513          	addi	a0,a0,8
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	1b0080e7          	jalr	432(ra) # 800016bc <sem_open>
}
    80003514:	00813083          	ld	ra,8(sp)
    80003518:	00013403          	ld	s0,0(sp)
    8000351c:	01010113          	addi	sp,sp,16
    80003520:	00008067          	ret

0000000080003524 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00113423          	sd	ra,8(sp)
    8000352c:	00813023          	sd	s0,0(sp)
    80003530:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003534:	00853503          	ld	a0,8(a0)
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	1e4080e7          	jalr	484(ra) # 8000171c <sem_wait>
}
    80003540:	00813083          	ld	ra,8(sp)
    80003544:	00013403          	ld	s0,0(sp)
    80003548:	01010113          	addi	sp,sp,16
    8000354c:	00008067          	ret

0000000080003550 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003550:	ff010113          	addi	sp,sp,-16
    80003554:	00113423          	sd	ra,8(sp)
    80003558:	00813023          	sd	s0,0(sp)
    8000355c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003560:	00853503          	ld	a0,8(a0)
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	1e0080e7          	jalr	480(ra) # 80001744 <sem_signal>
}
    8000356c:	00813083          	ld	ra,8(sp)
    80003570:	00013403          	ld	s0,0(sp)
    80003574:	01010113          	addi	sp,sp,16
    80003578:	00008067          	ret

000000008000357c <_ZN6Thread4joinEPS_>:
void Thread::join(Thread* thread) {
    8000357c:	ff010113          	addi	sp,sp,-16
    80003580:	00113423          	sd	ra,8(sp)
    80003584:	00813023          	sd	s0,0(sp)
    80003588:	01010413          	addi	s0,sp,16
    join(thread->myHandle);
    8000358c:	00853503          	ld	a0,8(a0)
    80003590:	00000097          	auipc	ra,0x0
    80003594:	fec080e7          	jalr	-20(ra) # 8000357c <_ZN6Thread4joinEPS_>
}
    80003598:	00813083          	ld	ra,8(sp)
    8000359c:	00013403          	ld	s0,0(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    800035a8:	fe010113          	addi	sp,sp,-32
    800035ac:	00113c23          	sd	ra,24(sp)
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	01213023          	sd	s2,0(sp)
    800035bc:	02010413          	addi	s0,sp,32
    800035c0:	00050493          	mv	s1,a0
    800035c4:	00058913          	mv	s2,a1
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	e50080e7          	jalr	-432(ra) # 80003418 <_ZN6ThreadC1Ev>
    800035d0:	00009797          	auipc	a5,0x9
    800035d4:	3a878793          	addi	a5,a5,936 # 8000c978 <_ZTV14PeriodicThread+0x10>
    800035d8:	00f4b023          	sd	a5,0(s1)
    800035dc:	0324b023          	sd	s2,32(s1)
    800035e0:	01813083          	ld	ra,24(sp)
    800035e4:	01013403          	ld	s0,16(sp)
    800035e8:	00813483          	ld	s1,8(sp)
    800035ec:	00013903          	ld	s2,0(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret

00000000800035f8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    800035f8:	ff010113          	addi	sp,sp,-16
    800035fc:	00813423          	sd	s0,8(sp)
    80003600:	01010413          	addi	s0,sp,16
    80003604:	02053023          	sd	zero,32(a0)
    80003608:	00813403          	ld	s0,8(sp)
    8000360c:	01010113          	addi	sp,sp,16
    80003610:	00008067          	ret

0000000080003614 <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    80003614:	ff010113          	addi	sp,sp,-16
    80003618:	00113423          	sd	ra,8(sp)
    8000361c:	00813023          	sd	s0,0(sp)
    80003620:	01010413          	addi	s0,sp,16
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	180080e7          	jalr	384(ra) # 800017a4 <getc>
    8000362c:	00813083          	ld	ra,8(sp)
    80003630:	00013403          	ld	s0,0(sp)
    80003634:	01010113          	addi	sp,sp,16
    80003638:	00008067          	ret

000000008000363c <_ZN7Console4putcEc>:
    8000363c:	ff010113          	addi	sp,sp,-16
    80003640:	00113423          	sd	ra,8(sp)
    80003644:	00813023          	sd	s0,0(sp)
    80003648:	01010413          	addi	s0,sp,16
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	17c080e7          	jalr	380(ra) # 800017c8 <putc>
    80003654:	00813083          	ld	ra,8(sp)
    80003658:	00013403          	ld	s0,0(sp)
    8000365c:	01010113          	addi	sp,sp,16
    80003660:	00008067          	ret

0000000080003664 <_ZN6Thread3runEv>:
    static void dispatch();
    static void join(Thread* thread);
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00813423          	sd	s0,8(sp)
    8000366c:	01010413          	addi	s0,sp,16
    80003670:	00813403          	ld	s0,8(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    8000367c:	ff010113          	addi	sp,sp,-16
    80003680:	00813423          	sd	s0,8(sp)
    80003684:	01010413          	addi	s0,sp,16
    80003688:	00813403          	ld	s0,8(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00813423          	sd	s0,8(sp)
    8000369c:	01010413          	addi	s0,sp,16
    800036a0:	00009797          	auipc	a5,0x9
    800036a4:	2d878793          	addi	a5,a5,728 # 8000c978 <_ZTV14PeriodicThread+0x10>
    800036a8:	00f53023          	sd	a5,0(a0)
    800036ac:	00813403          	ld	s0,8(sp)
    800036b0:	01010113          	addi	sp,sp,16
    800036b4:	00008067          	ret

00000000800036b8 <_ZN14PeriodicThreadD0Ev>:
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00113423          	sd	ra,8(sp)
    800036c0:	00813023          	sd	s0,0(sp)
    800036c4:	01010413          	addi	s0,sp,16
    800036c8:	00009797          	auipc	a5,0x9
    800036cc:	2b078793          	addi	a5,a5,688 # 8000c978 <_ZTV14PeriodicThread+0x10>
    800036d0:	00f53023          	sd	a5,0(a0)
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	c84080e7          	jalr	-892(ra) # 80003358 <_ZdlPv>
    800036dc:	00813083          	ld	ra,8(sp)
    800036e0:	00013403          	ld	s0,0(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret

00000000800036ec <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00813423          	sd	s0,8(sp)
    800036f4:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    800036f8:	00009797          	auipc	a5,0x9
    800036fc:	4887b783          	ld	a5,1160(a5) # 8000cb80 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003700:	0007b703          	ld	a4,0(a5)
    80003704:	00009797          	auipc	a5,0x9
    80003708:	4547b783          	ld	a5,1108(a5) # 8000cb58 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000370c:	0007b783          	ld	a5,0(a5)
    80003710:	40f70733          	sub	a4,a4,a5
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    80003714:	00675713          	srli	a4,a4,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80003718:	00f53023          	sd	a5,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    8000371c:	00100693          	li	a3,1
    80003720:	00d78823          	sb	a3,16(a5)
    startFrag->next=nullptr;
    80003724:	0007b023          	sd	zero,0(a5)
    startFrag->size = HEAP_SIZE_BLCK;
    80003728:	00e7bc23          	sd	a4,24(a5)
    startFrag->prev=nullptr;
    8000372c:	0007b423          	sd	zero,8(a5)
}
    80003730:	00813403          	ld	s0,8(sp)
    80003734:	01010113          	addi	sp,sp,16
    80003738:	00008067          	ret

000000008000373c <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    8000373c:	00009797          	auipc	a5,0x9
    80003740:	7447c783          	lbu	a5,1860(a5) # 8000ce80 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80003744:	00078863          	beqz	a5,80003754 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80003748:	00009517          	auipc	a0,0x9
    8000374c:	74050513          	addi	a0,a0,1856 # 8000ce88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003750:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003754:	ff010113          	addi	sp,sp,-16
    80003758:	00113423          	sd	ra,8(sp)
    8000375c:	00813023          	sd	s0,0(sp)
    80003760:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80003764:	00009517          	auipc	a0,0x9
    80003768:	72450513          	addi	a0,a0,1828 # 8000ce88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	f80080e7          	jalr	-128(ra) # 800036ec <_ZN15MemoryAllocatorC1Ev>
    80003774:	00100793          	li	a5,1
    80003778:	00009717          	auipc	a4,0x9
    8000377c:	70f70423          	sb	a5,1800(a4) # 8000ce80 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80003780:	00009517          	auipc	a0,0x9
    80003784:	70850513          	addi	a0,a0,1800 # 8000ce88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003788:	00813083          	ld	ra,8(sp)
    8000378c:	00013403          	ld	s0,0(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00813423          	sd	s0,8(sp)
    800037a0:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800037a4:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800037a8:	03f58593          	addi	a1,a1,63
    800037ac:	0065d593          	srli	a1,a1,0x6
    800037b0:	0080006f          	j	800037b8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    800037b4:	00053503          	ld	a0,0(a0)
    while(curr){
    800037b8:	06050863          	beqz	a0,80003828 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    800037bc:	01054703          	lbu	a4,16(a0)
    800037c0:	00100793          	li	a5,1
    800037c4:	fef718e3          	bne	a4,a5,800037b4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    800037c8:	01853703          	ld	a4,24(a0)
    800037cc:	00158793          	addi	a5,a1,1
    800037d0:	fef762e3          	bltu	a4,a5,800037b4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    800037d4:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    800037d8:	04e7f663          	bgeu	a5,a4,80003824 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    800037dc:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    800037e0:	00679793          	slli	a5,a5,0x6
    800037e4:	00f507b3          	add	a5,a0,a5
    800037e8:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    800037ec:	00100713          	li	a4,1
    800037f0:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    800037f4:	01853703          	ld	a4,24(a0)
    800037f8:	40b70733          	sub	a4,a4,a1
    800037fc:	fff70713          	addi	a4,a4,-1
    80003800:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003804:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003808:	00068463          	beqz	a3,80003810 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    8000380c:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80003810:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003814:	01853703          	ld	a4,24(a0)
    80003818:	0187b783          	ld	a5,24(a5)
    8000381c:	40f707b3          	sub	a5,a4,a5
    80003820:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80003824:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80003828:	00813403          	ld	s0,8(sp)
    8000382c:	01010113          	addi	sp,sp,16
    80003830:	00008067          	ret

0000000080003834 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80003834:	ff010113          	addi	sp,sp,-16
    80003838:	00813423          	sd	s0,8(sp)
    8000383c:	01010413          	addi	s0,sp,16
    if(!startLoc)return -1;
    80003840:	08058c63          	beqz	a1,800038d8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80003844:	fc058613          	addi	a2,a1,-64
    curr->free=1;
    80003848:	00100793          	li	a5,1
    8000384c:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80003850:	fc05b783          	ld	a5,-64(a1)
    80003854:	00078863          	beqz	a5,80003864 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003858:	0107c683          	lbu	a3,16(a5)
    8000385c:	00100713          	li	a4,1
    80003860:	02e68463          	beq	a3,a4,80003888 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80003864:	fc85b783          	ld	a5,-56(a1)
    80003868:	06078c63          	beqz	a5,800038e0 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    8000386c:	0107c683          	lbu	a3,16(a5)
    80003870:	00100713          	li	a4,1
    80003874:	02e68e63          	beq	a3,a4,800038b0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80003878:	00000513          	li	a0,0
}
    8000387c:	00813403          	ld	s0,8(sp)
    80003880:	01010113          	addi	sp,sp,16
    80003884:	00008067          	ret
        curr->size +=next->size;
    80003888:	0187b683          	ld	a3,24(a5)
    8000388c:	fd85b703          	ld	a4,-40(a1)
    80003890:	00d70733          	add	a4,a4,a3
    80003894:	fce5bc23          	sd	a4,-40(a1)
        curr->next = next->next;
    80003898:	0007b703          	ld	a4,0(a5)
    8000389c:	fce5b023          	sd	a4,-64(a1)
        if(next->next)
    800038a0:	0007b783          	ld	a5,0(a5)
    800038a4:	fc0780e3          	beqz	a5,80003864 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    800038a8:	00c7b423          	sd	a2,8(a5)
    800038ac:	fb9ff06f          	j	80003864 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    800038b0:	fd85b683          	ld	a3,-40(a1)
    800038b4:	0187b703          	ld	a4,24(a5)
    800038b8:	00d70733          	add	a4,a4,a3
    800038bc:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    800038c0:	fc05b703          	ld	a4,-64(a1)
    800038c4:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    800038c8:	02070063          	beqz	a4,800038e8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    800038cc:	00f73423          	sd	a5,8(a4)
    return 0;
    800038d0:	00000513          	li	a0,0
    800038d4:	fa9ff06f          	j	8000387c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!startLoc)return -1;
    800038d8:	fff00513          	li	a0,-1
    800038dc:	fa1ff06f          	j	8000387c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    800038e0:	00000513          	li	a0,0
    800038e4:	f99ff06f          	j	8000387c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    800038e8:	00000513          	li	a0,0
    800038ec:	f91ff06f          	j	8000387c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

00000000800038f0 <HandleInterupt>:

extern "C" void restoreContext(size_t* ctx);



extern "C" void HandleInterupt(size_t* stackInfo){
    800038f0:	fb010113          	addi	sp,sp,-80
    800038f4:	04113423          	sd	ra,72(sp)
    800038f8:	04813023          	sd	s0,64(sp)
    800038fc:	02913c23          	sd	s1,56(sp)
    80003900:	03213823          	sd	s2,48(sp)
    80003904:	03313423          	sd	s3,40(sp)
    80003908:	03413023          	sd	s4,32(sp)
    8000390c:	01513c23          	sd	s5,24(sp)
    80003910:	01613823          	sd	s6,16(sp)
    80003914:	01713423          	sd	s7,8(sp)
    80003918:	05010413          	addi	s0,sp,80
    8000391c:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003920:	142029f3          	csrr	s3,scause

    Scheduler::freeDead();
    80003924:	ffffe097          	auipc	ra,0xffffe
    80003928:	604080e7          	jalr	1540(ra) # 80001f28 <_ZN9Scheduler8freeDeadEv>

    KThread* current = Scheduler::GetRunning();
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	5a0080e7          	jalr	1440(ra) # 80001ecc <_ZN9Scheduler10GetRunningEv>
    80003934:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80003938:	04050863          	beqz	a0,80003988 <HandleInterupt+0x98>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = stackInfo[i];
    8000393c:	00000713          	li	a4,0
    80003940:	01f00793          	li	a5,31
    80003944:	02e7c063          	blt	a5,a4,80003964 <HandleInterupt+0x74>
    80003948:	00371793          	slli	a5,a4,0x3
    8000394c:	00f906b3          	add	a3,s2,a5
    80003950:	0006b683          	ld	a3,0(a3)
    80003954:	00f487b3          	add	a5,s1,a5
    80003958:	06d7b423          	sd	a3,104(a5)
    8000395c:	0017071b          	addiw	a4,a4,1
    80003960:	fe1ff06f          	j	80003940 <HandleInterupt+0x50>
        ctx.x[2] = (size_t)stackInfo + 256;
    80003964:	10090793          	addi	a5,s2,256
    80003968:	06f4bc23          	sd	a5,120(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    8000396c:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003970:	100026f3          	csrr	a3,sstatus
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    80003974:	ff898793          	addi	a5,s3,-8
    80003978:	00100613          	li	a2,1
    8000397c:	06f67a63          	bgeu	a2,a5,800039f0 <HandleInterupt+0x100>
        ctx.sepc    = sepc;
    80003980:	16e4b423          	sd	a4,360(s1)
        ctx.sstatus = sstatus;
    80003984:	16d4b823          	sd	a3,368(s1)
    }

    if (scause == SCause::TIMER_INTERRUPT) {
    80003988:	fff00793          	li	a5,-1
    8000398c:	03f79793          	slli	a5,a5,0x3f
    80003990:	00178793          	addi	a5,a5,1
    80003994:	06f98263          	beq	s3,a5,800039f8 <HandleInterupt+0x108>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == SCause::EXTERNAL_INTERRUPT) {
    80003998:	fff00793          	li	a5,-1
    8000399c:	03f79793          	slli	a5,a5,0x3f
    800039a0:	00978793          	addi	a5,a5,9
    800039a4:	06f98863          	beq	s3,a5,80003a14 <HandleInterupt+0x124>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != SCause::ECALL_USER && scause != SCause::ECALL_SUPERVISOR) {
    800039a8:	ff898793          	addi	a5,s3,-8
    800039ac:	00100713          	li	a4,1
    800039b0:	06f76e63          	bltu	a4,a5,80003a2c <HandleInterupt+0x13c>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800039b4:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800039b8:	00478793          	addi	a5,a5,4
    800039bc:	14179073          	csrw	sepc,a5
    }

    size_t code = stackInfo[10];
    800039c0:	05093783          	ld	a5,80(s2)
    switch (code) {
    800039c4:	04200713          	li	a4,66
    800039c8:	0af76263          	bltu	a4,a5,80003a6c <HandleInterupt+0x17c>
    800039cc:	06078a63          	beqz	a5,80003a40 <HandleInterupt+0x150>
    800039d0:	06f76863          	bltu	a4,a5,80003a40 <HandleInterupt+0x150>
    800039d4:	00279793          	slli	a5,a5,0x2
    800039d8:	00006717          	auipc	a4,0x6
    800039dc:	68470713          	addi	a4,a4,1668 # 8000a05c <CONSOLE_STATUS+0x4c>
    800039e0:	00e787b3          	add	a5,a5,a4
    800039e4:	0007a783          	lw	a5,0(a5)
    800039e8:	00e787b3          	add	a5,a5,a4
    800039ec:	00078067          	jr	a5
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    800039f0:	00470713          	addi	a4,a4,4
    800039f4:	f8dff06f          	j	80003980 <HandleInterupt+0x90>
        Scheduler::timerTick(current);
    800039f8:	00048513          	mv	a0,s1
    800039fc:	fffff097          	auipc	ra,0xfffff
    80003a00:	9d4080e7          	jalr	-1580(ra) # 800023d0 <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003a04:	02048e63          	beqz	s1,80003a40 <HandleInterupt+0x150>
    80003a08:	0b84b783          	ld	a5,184(s1)
    80003a0c:	00078513          	mv	a0,a5
    80003a10:	0300006f          	j	80003a40 <HandleInterupt+0x150>
        Konsole::handleInterrupt();
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	f08080e7          	jalr	-248(ra) # 8000291c <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003a1c:	02048263          	beqz	s1,80003a40 <HandleInterupt+0x150>
    80003a20:	0b84b783          	ld	a5,184(s1)
    80003a24:	00078513          	mv	a0,a5
    80003a28:	0180006f          	j	80003a40 <HandleInterupt+0x150>
        if ((scause >> 63) == 0 && current != nullptr) {
    80003a2c:	0009ca63          	bltz	s3,80003a40 <HandleInterupt+0x150>
    80003a30:	00048863          	beqz	s1,80003a40 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003a34:	00048513          	mv	a0,s1
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	798080e7          	jalr	1944(ra) # 800021d0 <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    80003a40:	04813083          	ld	ra,72(sp)
    80003a44:	04013403          	ld	s0,64(sp)
    80003a48:	03813483          	ld	s1,56(sp)
    80003a4c:	03013903          	ld	s2,48(sp)
    80003a50:	02813983          	ld	s3,40(sp)
    80003a54:	02013a03          	ld	s4,32(sp)
    80003a58:	01813a83          	ld	s5,24(sp)
    80003a5c:	01013b03          	ld	s6,16(sp)
    80003a60:	00813b83          	ld	s7,8(sp)
    80003a64:	05010113          	addi	sp,sp,80
    80003a68:	00008067          	ret
    switch (code) {
    80003a6c:	0ff00713          	li	a4,255
    80003a70:	fce798e3          	bne	a5,a4,80003a40 <HandleInterupt+0x150>
            *((volatile uint32*)0x100000UL) = 0x5555;
    80003a74:	00100737          	lui	a4,0x100
    80003a78:	000057b7          	lui	a5,0x5
    80003a7c:	5557879b          	addiw	a5,a5,1365
    80003a80:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    80003a84:	0000006f          	j	80003a84 <HandleInterupt+0x194>
            size_t size = stackInfo[11];
    80003a88:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80003a8c:	00000097          	auipc	ra,0x0
    80003a90:	cb0080e7          	jalr	-848(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    80003a94:	00048593          	mv	a1,s1
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	d00080e7          	jalr	-768(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80003aa0:	00050513          	mv	a0,a0
            break;
    80003aa4:	f9dff06f          	j	80003a40 <HandleInterupt+0x150>
            void* ptr = (void*)stackInfo[11];
    80003aa8:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80003aac:	00000097          	auipc	ra,0x0
    80003ab0:	c90080e7          	jalr	-880(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    80003ab4:	00048593          	mv	a1,s1
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	d7c080e7          	jalr	-644(ra) # 80003834 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80003ac0:	f81ff06f          	j	80003a40 <HandleInterupt+0x150>
            thread_t* handle             = reinterpret_cast<thread_t*>(stackInfo[11]);
    80003ac4:	05893a03          	ld	s4,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(stackInfo[12]);
    80003ac8:	06093b03          	ld	s6,96(s2)
            void* threadArg              = reinterpret_cast<void*>(stackInfo[13]);
    80003acc:	06893a83          	ld	s5,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(stackInfo[14]);
    80003ad0:	07093b83          	ld	s7,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	c68080e7          	jalr	-920(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    80003adc:	18000593          	li	a1,384
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	cb8080e7          	jalr	-840(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003ae8:	00050993          	mv	s3,a0
            if (!mem) {
    80003aec:	04050863          	beqz	a0,80003b3c <HandleInterupt+0x24c>
            t->init();
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	1bc080e7          	jalr	444(ra) # 80001cac <_ZN7KThread4initEv>
    80003af8:	0169b023          	sd	s6,0(s3)
    80003afc:	0159b423          	sd	s5,8(s3)
            t->setup(current, stack_space);
    80003b00:	000b8613          	mv	a2,s7
    80003b04:	00048593          	mv	a1,s1
    80003b08:	00098513          	mv	a0,s3
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	358080e7          	jalr	856(ra) # 80001e64 <_ZN7KThread5setupEPS_Pm>
            t->stackBase = reinterpret_cast<void*>(stackInfo[15]);
    80003b14:	07893783          	ld	a5,120(s2)
    80003b18:	06f9b023          	sd	a5,96(s3)
            *handle = reinterpret_cast<thread_t>(t);
    80003b1c:	013a3023          	sd	s3,0(s4)
            Scheduler::Put(t);
    80003b20:	00098513          	mv	a0,s3
    80003b24:	ffffe097          	auipc	ra,0xffffe
    80003b28:	58c080e7          	jalr	1420(ra) # 800020b0 <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    80003b2c:	00048463          	beqz	s1,80003b34 <HandleInterupt+0x244>
    80003b30:	0a04bc23          	sd	zero,184(s1)
            __asm__ volatile("li a0, 0");
    80003b34:	00000513          	li	a0,0
            break;
    80003b38:	f09ff06f          	j	80003a40 <HandleInterupt+0x150>
                if (current) {
    80003b3c:	f00482e3          	beqz	s1,80003a40 <HandleInterupt+0x150>
                    current->threadContext.x[10] = (size_t)-1;
    80003b40:	fff00793          	li	a5,-1
    80003b44:	0af4bc23          	sd	a5,184(s1)
                    restoreContext(current->getContext());
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	23c080e7          	jalr	572(ra) # 80001d88 <_ZN7KThread10getContextEv>
    80003b54:	ffffd097          	auipc	ra,0xffffd
    80003b58:	540080e7          	jalr	1344(ra) # 80001094 <restoreContext>
                return;
    80003b5c:	ee5ff06f          	j	80003a40 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003b60:	00048513          	mv	a0,s1
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	66c080e7          	jalr	1644(ra) # 800021d0 <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    80003b6c:	ed5ff06f          	j	80003a40 <HandleInterupt+0x150>
            if (!Scheduler::yieldCurrent(current))
    80003b70:	00048513          	mv	a0,s1
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	5e8080e7          	jalr	1512(ra) # 8000215c <_ZN9Scheduler12yieldCurrentEP7KThread>
    80003b7c:	ec0512e3          	bnez	a0,80003a40 <HandleInterupt+0x150>
                __asm__ volatile("li a0, 0");
    80003b80:	00000513          	li	a0,0
    80003b84:	ebdff06f          	j	80003a40 <HandleInterupt+0x150>
            Scheduler::joinThread(t);
    80003b88:	05893503          	ld	a0,88(s2)
    80003b8c:	fffff097          	auipc	ra,0xfffff
    80003b90:	aec080e7          	jalr	-1300(ra) # 80002678 <_ZN9Scheduler10joinThreadEP7KThread>
            break;
    80003b94:	eadff06f          	j	80003a40 <HandleInterupt+0x150>
            sem_t* handle = reinterpret_cast<sem_t*>(stackInfo[11]);
    80003b98:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)stackInfo[12];
    80003b9c:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    80003ba0:	00000097          	auipc	ra,0x0
    80003ba4:	b9c080e7          	jalr	-1124(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    80003ba8:	01800593          	li	a1,24
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	bec080e7          	jalr	-1044(ra) # 80003798 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003bb4:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003bb8:	00050e63          	beqz	a0,80003bd4 <HandleInterupt+0x2e4>
            semaphore->init(initialValue);
    80003bbc:	00090593          	mv	a1,s2
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	d28080e7          	jalr	-728(ra) # 800018e8 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    80003bc8:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80003bcc:	00000513          	li	a0,0
            break;
    80003bd0:	e71ff06f          	j	80003a40 <HandleInterupt+0x150>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003bd4:	fff00513          	li	a0,-1
    80003bd8:	e69ff06f          	j	80003a40 <HandleInterupt+0x150>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
    80003bdc:	05893483          	ld	s1,88(s2)
            semaphore->close();
    80003be0:	00048513          	mv	a0,s1
    80003be4:	ffffe097          	auipc	ra,0xffffe
    80003be8:	000080e7          	jalr	ra # 80001be4 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	b50080e7          	jalr	-1200(ra) # 8000373c <_ZN15MemoryAllocator11GetInstanceEv>
    80003bf4:	00048593          	mv	a1,s1
    80003bf8:	00000097          	auipc	ra,0x0
    80003bfc:	c3c080e7          	jalr	-964(ra) # 80003834 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80003c00:	00000513          	li	a0,0
            break;
    80003c04:	e3dff06f          	j	80003a40 <HandleInterupt+0x150>
            int result = semaphore->wait(current);
    80003c08:	00048593          	mv	a1,s1
    80003c0c:	05893503          	ld	a0,88(s2)
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	e10080e7          	jalr	-496(ra) # 80001a20 <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003c18:	00a04663          	bgtz	a0,80003c24 <HandleInterupt+0x334>
    80003c1c:	00050513          	mv	a0,a0
    80003c20:	e21ff06f          	j	80003a40 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003c24:	00048513          	mv	a0,s1
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	43c080e7          	jalr	1084(ra) # 80002064 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003c30:	e11ff06f          	j	80003a40 <HandleInterupt+0x150>
            semaphore->signal();
    80003c34:	05893503          	ld	a0,88(s2)
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	e48080e7          	jalr	-440(ra) # 80001a80 <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003c40:	00000513          	li	a0,0
            break;
    80003c44:	dfdff06f          	j	80003a40 <HandleInterupt+0x150>
            int result = semaphore->waitN(current, n);
    80003c48:	06092603          	lw	a2,96(s2)
    80003c4c:	00048593          	mv	a1,s1
    80003c50:	05893503          	ld	a0,88(s2)
    80003c54:	ffffe097          	auipc	ra,0xffffe
    80003c58:	ea8080e7          	jalr	-344(ra) # 80001afc <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003c5c:	00a04663          	bgtz	a0,80003c68 <HandleInterupt+0x378>
    80003c60:	00050513          	mv	a0,a0
    80003c64:	dddff06f          	j	80003a40 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003c68:	00048513          	mv	a0,s1
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	3f8080e7          	jalr	1016(ra) # 80002064 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003c74:	dcdff06f          	j	80003a40 <HandleInterupt+0x150>
            semaphore->signalN(n);
    80003c78:	06092583          	lw	a1,96(s2)
    80003c7c:	05893503          	ld	a0,88(s2)
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	eec080e7          	jalr	-276(ra) # 80001b6c <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80003c88:	00000513          	li	a0,0
            break;
    80003c8c:	db5ff06f          	j	80003a40 <HandleInterupt+0x150>
            time_t dur = (time_t)stackInfo[11];
    80003c90:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80003c94:	00048463          	beqz	s1,80003c9c <HandleInterupt+0x3ac>
    80003c98:	0a04bc23          	sd	zero,184(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    80003c9c:	00059663          	bnez	a1,80003ca8 <HandleInterupt+0x3b8>
    80003ca0:	00000513          	li	a0,0
    80003ca4:	d9dff06f          	j	80003a40 <HandleInterupt+0x150>
            Scheduler::sleep(current, dur);
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	fffff097          	auipc	ra,0xfffff
    80003cb0:	90c080e7          	jalr	-1780(ra) # 800025b8 <_ZN9Scheduler5sleepEP7KThreadm>
            Scheduler::blockCurrent(current);
    80003cb4:	00048513          	mv	a0,s1
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	3ac080e7          	jalr	940(ra) # 80002064 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003cc0:	d81ff06f          	j	80003a40 <HandleInterupt+0x150>
            int result = Konsole::getcKernel(current);
    80003cc4:	00048513          	mv	a0,s1
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	dd8080e7          	jalr	-552(ra) # 80002aa0 <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2)
    80003cd0:	ffe00713          	li	a4,-2
    80003cd4:	00e50863          	beq	a0,a4,80003ce4 <HandleInterupt+0x3f4>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    80003cd8:	0ff57793          	andi	a5,a0,255
    80003cdc:	00078513          	mv	a0,a5
    80003ce0:	d61ff06f          	j	80003a40 <HandleInterupt+0x150>
                Scheduler::blockCurrent(current);
    80003ce4:	00048513          	mv	a0,s1
    80003ce8:	ffffe097          	auipc	ra,0xffffe
    80003cec:	37c080e7          	jalr	892(ra) # 80002064 <_ZN9Scheduler12blockCurrentEP7KThread>
    80003cf0:	d51ff06f          	j	80003a40 <HandleInterupt+0x150>
            int result = Konsole::putcKernel(current, c);
    80003cf4:	05894583          	lbu	a1,88(s2)
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	fffff097          	auipc	ra,0xfffff
    80003d00:	d04080e7          	jalr	-764(ra) # 80002a00 <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003d04:	00050513          	mv	a0,a0
            break;
    80003d08:	d39ff06f          	j	80003a40 <HandleInterupt+0x150>

0000000080003d0c <start_main_thread>:

extern "C" {
int start_main_thread() {
    80003d0c:	ff010113          	addi	sp,sp,-16
    80003d10:	00113423          	sd	ra,8(sp)
    80003d14:	00813023          	sd	s0,0(sp)
    80003d18:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	5b4080e7          	jalr	1460(ra) # 800022d0 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    80003d24:	fffff097          	auipc	ra,0xfffff
    80003d28:	b30080e7          	jalr	-1232(ra) # 80002854 <_ZN7Konsole4initEv>
    return 0;
}
    80003d2c:	00000513          	li	a0,0
    80003d30:	00813083          	ld	ra,8(sp)
    80003d34:	00013403          	ld	s0,0(sp)
    80003d38:	01010113          	addi	sp,sp,16
    80003d3c:	00008067          	ret

0000000080003d40 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003d40:	fe010113          	addi	sp,sp,-32
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00813823          	sd	s0,16(sp)
    80003d4c:	00913423          	sd	s1,8(sp)
    80003d50:	01213023          	sd	s2,0(sp)
    80003d54:	02010413          	addi	s0,sp,32
    80003d58:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003d5c:	00000913          	li	s2,0
    80003d60:	00c0006f          	j	80003d6c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	910080e7          	jalr	-1776(ra) # 80001674 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	a38080e7          	jalr	-1480(ra) # 800017a4 <getc>
    80003d74:	0005059b          	sext.w	a1,a0
    80003d78:	01b00793          	li	a5,27
    80003d7c:	02f58a63          	beq	a1,a5,80003db0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003d80:	0084b503          	ld	a0,8(s1)
    80003d84:	00003097          	auipc	ra,0x3
    80003d88:	400080e7          	jalr	1024(ra) # 80007184 <_ZN6Buffer3putEi>
        i++;
    80003d8c:	0019071b          	addiw	a4,s2,1
    80003d90:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003d94:	0004a683          	lw	a3,0(s1)
    80003d98:	0026979b          	slliw	a5,a3,0x2
    80003d9c:	00d787bb          	addw	a5,a5,a3
    80003da0:	0017979b          	slliw	a5,a5,0x1
    80003da4:	02f767bb          	remw	a5,a4,a5
    80003da8:	fc0792e3          	bnez	a5,80003d6c <_ZL16producerKeyboardPv+0x2c>
    80003dac:	fb9ff06f          	j	80003d64 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003db0:	00100793          	li	a5,1
    80003db4:	00009717          	auipc	a4,0x9
    80003db8:	0cf72e23          	sw	a5,220(a4) # 8000ce90 <_ZL9threadEnd>
    data->buffer->put('!');
    80003dbc:	02100593          	li	a1,33
    80003dc0:	0084b503          	ld	a0,8(s1)
    80003dc4:	00003097          	auipc	ra,0x3
    80003dc8:	3c0080e7          	jalr	960(ra) # 80007184 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003dcc:	0104b503          	ld	a0,16(s1)
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	974080e7          	jalr	-1676(ra) # 80001744 <sem_signal>
}
    80003dd8:	01813083          	ld	ra,24(sp)
    80003ddc:	01013403          	ld	s0,16(sp)
    80003de0:	00813483          	ld	s1,8(sp)
    80003de4:	00013903          	ld	s2,0(sp)
    80003de8:	02010113          	addi	sp,sp,32
    80003dec:	00008067          	ret

0000000080003df0 <_ZL8producerPv>:

static void producer(void *arg) {
    80003df0:	fe010113          	addi	sp,sp,-32
    80003df4:	00113c23          	sd	ra,24(sp)
    80003df8:	00813823          	sd	s0,16(sp)
    80003dfc:	00913423          	sd	s1,8(sp)
    80003e00:	01213023          	sd	s2,0(sp)
    80003e04:	02010413          	addi	s0,sp,32
    80003e08:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003e0c:	00000913          	li	s2,0
    80003e10:	00c0006f          	j	80003e1c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	860080e7          	jalr	-1952(ra) # 80001674 <thread_dispatch>
    while (!threadEnd) {
    80003e1c:	00009797          	auipc	a5,0x9
    80003e20:	0747a783          	lw	a5,116(a5) # 8000ce90 <_ZL9threadEnd>
    80003e24:	02079e63          	bnez	a5,80003e60 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003e28:	0004a583          	lw	a1,0(s1)
    80003e2c:	0305859b          	addiw	a1,a1,48
    80003e30:	0084b503          	ld	a0,8(s1)
    80003e34:	00003097          	auipc	ra,0x3
    80003e38:	350080e7          	jalr	848(ra) # 80007184 <_ZN6Buffer3putEi>
        i++;
    80003e3c:	0019071b          	addiw	a4,s2,1
    80003e40:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003e44:	0004a683          	lw	a3,0(s1)
    80003e48:	0026979b          	slliw	a5,a3,0x2
    80003e4c:	00d787bb          	addw	a5,a5,a3
    80003e50:	0017979b          	slliw	a5,a5,0x1
    80003e54:	02f767bb          	remw	a5,a4,a5
    80003e58:	fc0792e3          	bnez	a5,80003e1c <_ZL8producerPv+0x2c>
    80003e5c:	fb9ff06f          	j	80003e14 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003e60:	0104b503          	ld	a0,16(s1)
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	8e0080e7          	jalr	-1824(ra) # 80001744 <sem_signal>
}
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	00013903          	ld	s2,0(sp)
    80003e7c:	02010113          	addi	sp,sp,32
    80003e80:	00008067          	ret

0000000080003e84 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003e84:	fd010113          	addi	sp,sp,-48
    80003e88:	02113423          	sd	ra,40(sp)
    80003e8c:	02813023          	sd	s0,32(sp)
    80003e90:	00913c23          	sd	s1,24(sp)
    80003e94:	01213823          	sd	s2,16(sp)
    80003e98:	01313423          	sd	s3,8(sp)
    80003e9c:	03010413          	addi	s0,sp,48
    80003ea0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003ea4:	00000993          	li	s3,0
    80003ea8:	01c0006f          	j	80003ec4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003eac:	ffffd097          	auipc	ra,0xffffd
    80003eb0:	7c8080e7          	jalr	1992(ra) # 80001674 <thread_dispatch>
    80003eb4:	0500006f          	j	80003f04 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003eb8:	00a00513          	li	a0,10
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	90c080e7          	jalr	-1780(ra) # 800017c8 <putc>
    while (!threadEnd) {
    80003ec4:	00009797          	auipc	a5,0x9
    80003ec8:	fcc7a783          	lw	a5,-52(a5) # 8000ce90 <_ZL9threadEnd>
    80003ecc:	06079063          	bnez	a5,80003f2c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003ed0:	00893503          	ld	a0,8(s2)
    80003ed4:	00003097          	auipc	ra,0x3
    80003ed8:	340080e7          	jalr	832(ra) # 80007214 <_ZN6Buffer3getEv>
        i++;
    80003edc:	0019849b          	addiw	s1,s3,1
    80003ee0:	0004899b          	sext.w	s3,s1
        putc(key);
    80003ee4:	0ff57513          	andi	a0,a0,255
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	8e0080e7          	jalr	-1824(ra) # 800017c8 <putc>
        if (i % (5 * data->id) == 0) {
    80003ef0:	00092703          	lw	a4,0(s2)
    80003ef4:	0027179b          	slliw	a5,a4,0x2
    80003ef8:	00e787bb          	addw	a5,a5,a4
    80003efc:	02f4e7bb          	remw	a5,s1,a5
    80003f00:	fa0786e3          	beqz	a5,80003eac <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003f04:	05000793          	li	a5,80
    80003f08:	02f4e4bb          	remw	s1,s1,a5
    80003f0c:	fa049ce3          	bnez	s1,80003ec4 <_ZL8consumerPv+0x40>
    80003f10:	fa9ff06f          	j	80003eb8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003f14:	00893503          	ld	a0,8(s2)
    80003f18:	00003097          	auipc	ra,0x3
    80003f1c:	2fc080e7          	jalr	764(ra) # 80007214 <_ZN6Buffer3getEv>
        putc(key);
    80003f20:	0ff57513          	andi	a0,a0,255
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	8a4080e7          	jalr	-1884(ra) # 800017c8 <putc>
    while (data->buffer->getCnt() > 0) {
    80003f2c:	00893503          	ld	a0,8(s2)
    80003f30:	00003097          	auipc	ra,0x3
    80003f34:	370080e7          	jalr	880(ra) # 800072a0 <_ZN6Buffer6getCntEv>
    80003f38:	fca04ee3          	bgtz	a0,80003f14 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003f3c:	01093503          	ld	a0,16(s2)
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	804080e7          	jalr	-2044(ra) # 80001744 <sem_signal>
}
    80003f48:	02813083          	ld	ra,40(sp)
    80003f4c:	02013403          	ld	s0,32(sp)
    80003f50:	01813483          	ld	s1,24(sp)
    80003f54:	01013903          	ld	s2,16(sp)
    80003f58:	00813983          	ld	s3,8(sp)
    80003f5c:	03010113          	addi	sp,sp,48
    80003f60:	00008067          	ret

0000000080003f64 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003f64:	f9010113          	addi	sp,sp,-112
    80003f68:	06113423          	sd	ra,104(sp)
    80003f6c:	06813023          	sd	s0,96(sp)
    80003f70:	04913c23          	sd	s1,88(sp)
    80003f74:	05213823          	sd	s2,80(sp)
    80003f78:	05313423          	sd	s3,72(sp)
    80003f7c:	05413023          	sd	s4,64(sp)
    80003f80:	03513c23          	sd	s5,56(sp)
    80003f84:	03613823          	sd	s6,48(sp)
    80003f88:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003f8c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f90:	00006517          	auipc	a0,0x6
    80003f94:	1d850513          	addi	a0,a0,472 # 8000a168 <CONSOLE_STATUS+0x158>
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	374080e7          	jalr	884(ra) # 8000630c <_Z11printStringPKc>
    getString(input, 30);
    80003fa0:	01e00593          	li	a1,30
    80003fa4:	fa040493          	addi	s1,s0,-96
    80003fa8:	00048513          	mv	a0,s1
    80003fac:	00002097          	auipc	ra,0x2
    80003fb0:	3e8080e7          	jalr	1000(ra) # 80006394 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00002097          	auipc	ra,0x2
    80003fbc:	4b4080e7          	jalr	1204(ra) # 8000646c <_Z11stringToIntPKc>
    80003fc0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003fc4:	00006517          	auipc	a0,0x6
    80003fc8:	1c450513          	addi	a0,a0,452 # 8000a188 <CONSOLE_STATUS+0x178>
    80003fcc:	00002097          	auipc	ra,0x2
    80003fd0:	340080e7          	jalr	832(ra) # 8000630c <_Z11printStringPKc>
    getString(input, 30);
    80003fd4:	01e00593          	li	a1,30
    80003fd8:	00048513          	mv	a0,s1
    80003fdc:	00002097          	auipc	ra,0x2
    80003fe0:	3b8080e7          	jalr	952(ra) # 80006394 <_Z9getStringPci>
    n = stringToInt(input);
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	00002097          	auipc	ra,0x2
    80003fec:	484080e7          	jalr	1156(ra) # 8000646c <_Z11stringToIntPKc>
    80003ff0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003ff4:	00006517          	auipc	a0,0x6
    80003ff8:	1b450513          	addi	a0,a0,436 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003ffc:	00002097          	auipc	ra,0x2
    80004000:	310080e7          	jalr	784(ra) # 8000630c <_Z11printStringPKc>
    80004004:	00000613          	li	a2,0
    80004008:	00a00593          	li	a1,10
    8000400c:	00090513          	mv	a0,s2
    80004010:	00002097          	auipc	ra,0x2
    80004014:	4ac080e7          	jalr	1196(ra) # 800064bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004018:	00006517          	auipc	a0,0x6
    8000401c:	1a850513          	addi	a0,a0,424 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004020:	00002097          	auipc	ra,0x2
    80004024:	2ec080e7          	jalr	748(ra) # 8000630c <_Z11printStringPKc>
    80004028:	00000613          	li	a2,0
    8000402c:	00a00593          	li	a1,10
    80004030:	00048513          	mv	a0,s1
    80004034:	00002097          	auipc	ra,0x2
    80004038:	488080e7          	jalr	1160(ra) # 800064bc <_Z8printIntiii>
    printString(".\n");
    8000403c:	00006517          	auipc	a0,0x6
    80004040:	19c50513          	addi	a0,a0,412 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    80004044:	00002097          	auipc	ra,0x2
    80004048:	2c8080e7          	jalr	712(ra) # 8000630c <_Z11printStringPKc>
    if(threadNum > n) {
    8000404c:	0324c463          	blt	s1,s2,80004074 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80004050:	03205c63          	blez	s2,80004088 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80004054:	03800513          	li	a0,56
    80004058:	fffff097          	auipc	ra,0xfffff
    8000405c:	2d8080e7          	jalr	728(ra) # 80003330 <_Znwm>
    80004060:	00050a13          	mv	s4,a0
    80004064:	00048593          	mv	a1,s1
    80004068:	00003097          	auipc	ra,0x3
    8000406c:	080080e7          	jalr	128(ra) # 800070e8 <_ZN6BufferC1Ei>
    80004070:	0300006f          	j	800040a0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004074:	00006517          	auipc	a0,0x6
    80004078:	16c50513          	addi	a0,a0,364 # 8000a1e0 <CONSOLE_STATUS+0x1d0>
    8000407c:	00002097          	auipc	ra,0x2
    80004080:	290080e7          	jalr	656(ra) # 8000630c <_Z11printStringPKc>
        return;
    80004084:	0140006f          	j	80004098 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004088:	00006517          	auipc	a0,0x6
    8000408c:	19850513          	addi	a0,a0,408 # 8000a220 <CONSOLE_STATUS+0x210>
    80004090:	00002097          	auipc	ra,0x2
    80004094:	27c080e7          	jalr	636(ra) # 8000630c <_Z11printStringPKc>
        return;
    80004098:	000b0113          	mv	sp,s6
    8000409c:	1500006f          	j	800041ec <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800040a0:	00000593          	li	a1,0
    800040a4:	00009517          	auipc	a0,0x9
    800040a8:	df450513          	addi	a0,a0,-524 # 8000ce98 <_ZL10waitForAll>
    800040ac:	ffffd097          	auipc	ra,0xffffd
    800040b0:	610080e7          	jalr	1552(ra) # 800016bc <sem_open>
    thread_t threads[threadNum];
    800040b4:	00391793          	slli	a5,s2,0x3
    800040b8:	00f78793          	addi	a5,a5,15
    800040bc:	ff07f793          	andi	a5,a5,-16
    800040c0:	40f10133          	sub	sp,sp,a5
    800040c4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800040c8:	0019071b          	addiw	a4,s2,1
    800040cc:	00171793          	slli	a5,a4,0x1
    800040d0:	00e787b3          	add	a5,a5,a4
    800040d4:	00379793          	slli	a5,a5,0x3
    800040d8:	00f78793          	addi	a5,a5,15
    800040dc:	ff07f793          	andi	a5,a5,-16
    800040e0:	40f10133          	sub	sp,sp,a5
    800040e4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800040e8:	00191613          	slli	a2,s2,0x1
    800040ec:	012607b3          	add	a5,a2,s2
    800040f0:	00379793          	slli	a5,a5,0x3
    800040f4:	00f987b3          	add	a5,s3,a5
    800040f8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800040fc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004100:	00009717          	auipc	a4,0x9
    80004104:	d9873703          	ld	a4,-616(a4) # 8000ce98 <_ZL10waitForAll>
    80004108:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000410c:	00078613          	mv	a2,a5
    80004110:	00000597          	auipc	a1,0x0
    80004114:	d7458593          	addi	a1,a1,-652 # 80003e84 <_ZL8consumerPv>
    80004118:	f9840513          	addi	a0,s0,-104
    8000411c:	ffffd097          	auipc	ra,0xffffd
    80004120:	490080e7          	jalr	1168(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80004124:	00000493          	li	s1,0
    80004128:	0280006f          	j	80004150 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000412c:	00000597          	auipc	a1,0x0
    80004130:	c1458593          	addi	a1,a1,-1004 # 80003d40 <_ZL16producerKeyboardPv>
                      data + i);
    80004134:	00179613          	slli	a2,a5,0x1
    80004138:	00f60633          	add	a2,a2,a5
    8000413c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004140:	00c98633          	add	a2,s3,a2
    80004144:	ffffd097          	auipc	ra,0xffffd
    80004148:	468080e7          	jalr	1128(ra) # 800015ac <thread_create>
    for (int i = 0; i < threadNum; i++) {
    8000414c:	0014849b          	addiw	s1,s1,1
    80004150:	0524d263          	bge	s1,s2,80004194 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80004154:	00149793          	slli	a5,s1,0x1
    80004158:	009787b3          	add	a5,a5,s1
    8000415c:	00379793          	slli	a5,a5,0x3
    80004160:	00f987b3          	add	a5,s3,a5
    80004164:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004168:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000416c:	00009717          	auipc	a4,0x9
    80004170:	d2c73703          	ld	a4,-724(a4) # 8000ce98 <_ZL10waitForAll>
    80004174:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004178:	00048793          	mv	a5,s1
    8000417c:	00349513          	slli	a0,s1,0x3
    80004180:	00aa8533          	add	a0,s5,a0
    80004184:	fa9054e3          	blez	s1,8000412c <_Z22producerConsumer_C_APIv+0x1c8>
    80004188:	00000597          	auipc	a1,0x0
    8000418c:	c6858593          	addi	a1,a1,-920 # 80003df0 <_ZL8producerPv>
    80004190:	fa5ff06f          	j	80004134 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	4e0080e7          	jalr	1248(ra) # 80001674 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    8000419c:	00000493          	li	s1,0
    800041a0:	00994e63          	blt	s2,s1,800041bc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800041a4:	00009517          	auipc	a0,0x9
    800041a8:	cf453503          	ld	a0,-780(a0) # 8000ce98 <_ZL10waitForAll>
    800041ac:	ffffd097          	auipc	ra,0xffffd
    800041b0:	570080e7          	jalr	1392(ra) # 8000171c <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    800041b4:	0014849b          	addiw	s1,s1,1
    800041b8:	fe9ff06f          	j	800041a0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800041bc:	00009517          	auipc	a0,0x9
    800041c0:	cdc53503          	ld	a0,-804(a0) # 8000ce98 <_ZL10waitForAll>
    800041c4:	ffffd097          	auipc	ra,0xffffd
    800041c8:	530080e7          	jalr	1328(ra) # 800016f4 <sem_close>
    delete buffer;
    800041cc:	000a0e63          	beqz	s4,800041e8 <_Z22producerConsumer_C_APIv+0x284>
    800041d0:	000a0513          	mv	a0,s4
    800041d4:	00003097          	auipc	ra,0x3
    800041d8:	154080e7          	jalr	340(ra) # 80007328 <_ZN6BufferD1Ev>
    800041dc:	000a0513          	mv	a0,s4
    800041e0:	fffff097          	auipc	ra,0xfffff
    800041e4:	178080e7          	jalr	376(ra) # 80003358 <_ZdlPv>
    800041e8:	000b0113          	mv	sp,s6

}
    800041ec:	f9040113          	addi	sp,s0,-112
    800041f0:	06813083          	ld	ra,104(sp)
    800041f4:	06013403          	ld	s0,96(sp)
    800041f8:	05813483          	ld	s1,88(sp)
    800041fc:	05013903          	ld	s2,80(sp)
    80004200:	04813983          	ld	s3,72(sp)
    80004204:	04013a03          	ld	s4,64(sp)
    80004208:	03813a83          	ld	s5,56(sp)
    8000420c:	03013b03          	ld	s6,48(sp)
    80004210:	07010113          	addi	sp,sp,112
    80004214:	00008067          	ret
    80004218:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000421c:	000a0513          	mv	a0,s4
    80004220:	fffff097          	auipc	ra,0xfffff
    80004224:	138080e7          	jalr	312(ra) # 80003358 <_ZdlPv>
    80004228:	00048513          	mv	a0,s1
    8000422c:	0000a097          	auipc	ra,0xa
    80004230:	d7c080e7          	jalr	-644(ra) # 8000dfa8 <_Unwind_Resume>

0000000080004234 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004234:	fe010113          	addi	sp,sp,-32
    80004238:	00113c23          	sd	ra,24(sp)
    8000423c:	00813823          	sd	s0,16(sp)
    80004240:	00913423          	sd	s1,8(sp)
    80004244:	01213023          	sd	s2,0(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004250:	00100793          	li	a5,1
    80004254:	02a7f863          	bgeu	a5,a0,80004284 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004258:	00a00793          	li	a5,10
    8000425c:	02f577b3          	remu	a5,a0,a5
    80004260:	02078e63          	beqz	a5,8000429c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004264:	fff48513          	addi	a0,s1,-1
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	fcc080e7          	jalr	-52(ra) # 80004234 <_ZL9fibonaccim>
    80004270:	00050913          	mv	s2,a0
    80004274:	ffe48513          	addi	a0,s1,-2
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	fbc080e7          	jalr	-68(ra) # 80004234 <_ZL9fibonaccim>
    80004280:	00a90533          	add	a0,s2,a0
}
    80004284:	01813083          	ld	ra,24(sp)
    80004288:	01013403          	ld	s0,16(sp)
    8000428c:	00813483          	ld	s1,8(sp)
    80004290:	00013903          	ld	s2,0(sp)
    80004294:	02010113          	addi	sp,sp,32
    80004298:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000429c:	ffffd097          	auipc	ra,0xffffd
    800042a0:	3d8080e7          	jalr	984(ra) # 80001674 <thread_dispatch>
    800042a4:	fc1ff06f          	j	80004264 <_ZL9fibonaccim+0x30>

00000000800042a8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800042a8:	fe010113          	addi	sp,sp,-32
    800042ac:	00113c23          	sd	ra,24(sp)
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00913423          	sd	s1,8(sp)
    800042b8:	01213023          	sd	s2,0(sp)
    800042bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800042c0:	00000913          	li	s2,0
    800042c4:	0380006f          	j	800042fc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800042c8:	ffffd097          	auipc	ra,0xffffd
    800042cc:	3ac080e7          	jalr	940(ra) # 80001674 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800042d0:	00148493          	addi	s1,s1,1
    800042d4:	000027b7          	lui	a5,0x2
    800042d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800042dc:	0097ee63          	bltu	a5,s1,800042f8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042e0:	00000713          	li	a4,0
    800042e4:	000077b7          	lui	a5,0x7
    800042e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800042ec:	fce7eee3          	bltu	a5,a4,800042c8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800042f0:	00170713          	addi	a4,a4,1
    800042f4:	ff1ff06f          	j	800042e4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800042f8:	00190913          	addi	s2,s2,1
    800042fc:	00900793          	li	a5,9
    80004300:	0527e063          	bltu	a5,s2,80004340 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004304:	00006517          	auipc	a0,0x6
    80004308:	f4c50513          	addi	a0,a0,-180 # 8000a250 <CONSOLE_STATUS+0x240>
    8000430c:	00002097          	auipc	ra,0x2
    80004310:	000080e7          	jalr	ra # 8000630c <_Z11printStringPKc>
    80004314:	00000613          	li	a2,0
    80004318:	00a00593          	li	a1,10
    8000431c:	0009051b          	sext.w	a0,s2
    80004320:	00002097          	auipc	ra,0x2
    80004324:	19c080e7          	jalr	412(ra) # 800064bc <_Z8printIntiii>
    80004328:	00006517          	auipc	a0,0x6
    8000432c:	19850513          	addi	a0,a0,408 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80004330:	00002097          	auipc	ra,0x2
    80004334:	fdc080e7          	jalr	-36(ra) # 8000630c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004338:	00000493          	li	s1,0
    8000433c:	f99ff06f          	j	800042d4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004340:	00006517          	auipc	a0,0x6
    80004344:	f1850513          	addi	a0,a0,-232 # 8000a258 <CONSOLE_STATUS+0x248>
    80004348:	00002097          	auipc	ra,0x2
    8000434c:	fc4080e7          	jalr	-60(ra) # 8000630c <_Z11printStringPKc>
    finishedA = true;
    80004350:	00100793          	li	a5,1
    80004354:	00009717          	auipc	a4,0x9
    80004358:	b4f70623          	sb	a5,-1204(a4) # 8000cea0 <_ZL9finishedA>
}
    8000435c:	01813083          	ld	ra,24(sp)
    80004360:	01013403          	ld	s0,16(sp)
    80004364:	00813483          	ld	s1,8(sp)
    80004368:	00013903          	ld	s2,0(sp)
    8000436c:	02010113          	addi	sp,sp,32
    80004370:	00008067          	ret

0000000080004374 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004374:	fe010113          	addi	sp,sp,-32
    80004378:	00113c23          	sd	ra,24(sp)
    8000437c:	00813823          	sd	s0,16(sp)
    80004380:	00913423          	sd	s1,8(sp)
    80004384:	01213023          	sd	s2,0(sp)
    80004388:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000438c:	00000913          	li	s2,0
    80004390:	0380006f          	j	800043c8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004394:	ffffd097          	auipc	ra,0xffffd
    80004398:	2e0080e7          	jalr	736(ra) # 80001674 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000439c:	00148493          	addi	s1,s1,1
    800043a0:	000027b7          	lui	a5,0x2
    800043a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800043a8:	0097ee63          	bltu	a5,s1,800043c4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800043ac:	00000713          	li	a4,0
    800043b0:	000077b7          	lui	a5,0x7
    800043b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800043b8:	fce7eee3          	bltu	a5,a4,80004394 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800043bc:	00170713          	addi	a4,a4,1
    800043c0:	ff1ff06f          	j	800043b0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800043c4:	00190913          	addi	s2,s2,1
    800043c8:	00f00793          	li	a5,15
    800043cc:	0527e063          	bltu	a5,s2,8000440c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800043d0:	00006517          	auipc	a0,0x6
    800043d4:	e9850513          	addi	a0,a0,-360 # 8000a268 <CONSOLE_STATUS+0x258>
    800043d8:	00002097          	auipc	ra,0x2
    800043dc:	f34080e7          	jalr	-204(ra) # 8000630c <_Z11printStringPKc>
    800043e0:	00000613          	li	a2,0
    800043e4:	00a00593          	li	a1,10
    800043e8:	0009051b          	sext.w	a0,s2
    800043ec:	00002097          	auipc	ra,0x2
    800043f0:	0d0080e7          	jalr	208(ra) # 800064bc <_Z8printIntiii>
    800043f4:	00006517          	auipc	a0,0x6
    800043f8:	0cc50513          	addi	a0,a0,204 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800043fc:	00002097          	auipc	ra,0x2
    80004400:	f10080e7          	jalr	-240(ra) # 8000630c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004404:	00000493          	li	s1,0
    80004408:	f99ff06f          	j	800043a0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000440c:	00006517          	auipc	a0,0x6
    80004410:	e6450513          	addi	a0,a0,-412 # 8000a270 <CONSOLE_STATUS+0x260>
    80004414:	00002097          	auipc	ra,0x2
    80004418:	ef8080e7          	jalr	-264(ra) # 8000630c <_Z11printStringPKc>
    finishedB = true;
    8000441c:	00100793          	li	a5,1
    80004420:	00009717          	auipc	a4,0x9
    80004424:	a8f700a3          	sb	a5,-1407(a4) # 8000cea1 <_ZL9finishedB>
    thread_dispatch();
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	24c080e7          	jalr	588(ra) # 80001674 <thread_dispatch>
}
    80004430:	01813083          	ld	ra,24(sp)
    80004434:	01013403          	ld	s0,16(sp)
    80004438:	00813483          	ld	s1,8(sp)
    8000443c:	00013903          	ld	s2,0(sp)
    80004440:	02010113          	addi	sp,sp,32
    80004444:	00008067          	ret

0000000080004448 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004448:	fe010113          	addi	sp,sp,-32
    8000444c:	00113c23          	sd	ra,24(sp)
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	00913423          	sd	s1,8(sp)
    80004458:	01213023          	sd	s2,0(sp)
    8000445c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004460:	00000493          	li	s1,0
    80004464:	0400006f          	j	800044a4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004468:	00006517          	auipc	a0,0x6
    8000446c:	e1850513          	addi	a0,a0,-488 # 8000a280 <CONSOLE_STATUS+0x270>
    80004470:	00002097          	auipc	ra,0x2
    80004474:	e9c080e7          	jalr	-356(ra) # 8000630c <_Z11printStringPKc>
    80004478:	00000613          	li	a2,0
    8000447c:	00a00593          	li	a1,10
    80004480:	00048513          	mv	a0,s1
    80004484:	00002097          	auipc	ra,0x2
    80004488:	038080e7          	jalr	56(ra) # 800064bc <_Z8printIntiii>
    8000448c:	00006517          	auipc	a0,0x6
    80004490:	03450513          	addi	a0,a0,52 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80004494:	00002097          	auipc	ra,0x2
    80004498:	e78080e7          	jalr	-392(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000449c:	0014849b          	addiw	s1,s1,1
    800044a0:	0ff4f493          	andi	s1,s1,255
    800044a4:	00200793          	li	a5,2
    800044a8:	fc97f0e3          	bgeu	a5,s1,80004468 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800044ac:	00006517          	auipc	a0,0x6
    800044b0:	ddc50513          	addi	a0,a0,-548 # 8000a288 <CONSOLE_STATUS+0x278>
    800044b4:	00002097          	auipc	ra,0x2
    800044b8:	e58080e7          	jalr	-424(ra) # 8000630c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800044bc:	00700313          	li	t1,7
    thread_dispatch();
    800044c0:	ffffd097          	auipc	ra,0xffffd
    800044c4:	1b4080e7          	jalr	436(ra) # 80001674 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800044c8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800044cc:	00006517          	auipc	a0,0x6
    800044d0:	dcc50513          	addi	a0,a0,-564 # 8000a298 <CONSOLE_STATUS+0x288>
    800044d4:	00002097          	auipc	ra,0x2
    800044d8:	e38080e7          	jalr	-456(ra) # 8000630c <_Z11printStringPKc>
    800044dc:	00000613          	li	a2,0
    800044e0:	00a00593          	li	a1,10
    800044e4:	0009051b          	sext.w	a0,s2
    800044e8:	00002097          	auipc	ra,0x2
    800044ec:	fd4080e7          	jalr	-44(ra) # 800064bc <_Z8printIntiii>
    800044f0:	00006517          	auipc	a0,0x6
    800044f4:	fd050513          	addi	a0,a0,-48 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800044f8:	00002097          	auipc	ra,0x2
    800044fc:	e14080e7          	jalr	-492(ra) # 8000630c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004500:	00c00513          	li	a0,12
    80004504:	00000097          	auipc	ra,0x0
    80004508:	d30080e7          	jalr	-720(ra) # 80004234 <_ZL9fibonaccim>
    8000450c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004510:	00006517          	auipc	a0,0x6
    80004514:	d9050513          	addi	a0,a0,-624 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004518:	00002097          	auipc	ra,0x2
    8000451c:	df4080e7          	jalr	-524(ra) # 8000630c <_Z11printStringPKc>
    80004520:	00000613          	li	a2,0
    80004524:	00a00593          	li	a1,10
    80004528:	0009051b          	sext.w	a0,s2
    8000452c:	00002097          	auipc	ra,0x2
    80004530:	f90080e7          	jalr	-112(ra) # 800064bc <_Z8printIntiii>
    80004534:	00006517          	auipc	a0,0x6
    80004538:	f8c50513          	addi	a0,a0,-116 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    8000453c:	00002097          	auipc	ra,0x2
    80004540:	dd0080e7          	jalr	-560(ra) # 8000630c <_Z11printStringPKc>
    80004544:	0400006f          	j	80004584 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004548:	00006517          	auipc	a0,0x6
    8000454c:	d3850513          	addi	a0,a0,-712 # 8000a280 <CONSOLE_STATUS+0x270>
    80004550:	00002097          	auipc	ra,0x2
    80004554:	dbc080e7          	jalr	-580(ra) # 8000630c <_Z11printStringPKc>
    80004558:	00000613          	li	a2,0
    8000455c:	00a00593          	li	a1,10
    80004560:	00048513          	mv	a0,s1
    80004564:	00002097          	auipc	ra,0x2
    80004568:	f58080e7          	jalr	-168(ra) # 800064bc <_Z8printIntiii>
    8000456c:	00006517          	auipc	a0,0x6
    80004570:	f5450513          	addi	a0,a0,-172 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80004574:	00002097          	auipc	ra,0x2
    80004578:	d98080e7          	jalr	-616(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000457c:	0014849b          	addiw	s1,s1,1
    80004580:	0ff4f493          	andi	s1,s1,255
    80004584:	00500793          	li	a5,5
    80004588:	fc97f0e3          	bgeu	a5,s1,80004548 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000458c:	00006517          	auipc	a0,0x6
    80004590:	ccc50513          	addi	a0,a0,-820 # 8000a258 <CONSOLE_STATUS+0x248>
    80004594:	00002097          	auipc	ra,0x2
    80004598:	d78080e7          	jalr	-648(ra) # 8000630c <_Z11printStringPKc>
    finishedC = true;
    8000459c:	00100793          	li	a5,1
    800045a0:	00009717          	auipc	a4,0x9
    800045a4:	90f70123          	sb	a5,-1790(a4) # 8000cea2 <_ZL9finishedC>
    thread_dispatch();
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	0cc080e7          	jalr	204(ra) # 80001674 <thread_dispatch>
}
    800045b0:	01813083          	ld	ra,24(sp)
    800045b4:	01013403          	ld	s0,16(sp)
    800045b8:	00813483          	ld	s1,8(sp)
    800045bc:	00013903          	ld	s2,0(sp)
    800045c0:	02010113          	addi	sp,sp,32
    800045c4:	00008067          	ret

00000000800045c8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	01213023          	sd	s2,0(sp)
    800045dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800045e0:	00a00493          	li	s1,10
    800045e4:	0400006f          	j	80004624 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045e8:	00006517          	auipc	a0,0x6
    800045ec:	cc850513          	addi	a0,a0,-824 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800045f0:	00002097          	auipc	ra,0x2
    800045f4:	d1c080e7          	jalr	-740(ra) # 8000630c <_Z11printStringPKc>
    800045f8:	00000613          	li	a2,0
    800045fc:	00a00593          	li	a1,10
    80004600:	00048513          	mv	a0,s1
    80004604:	00002097          	auipc	ra,0x2
    80004608:	eb8080e7          	jalr	-328(ra) # 800064bc <_Z8printIntiii>
    8000460c:	00006517          	auipc	a0,0x6
    80004610:	eb450513          	addi	a0,a0,-332 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80004614:	00002097          	auipc	ra,0x2
    80004618:	cf8080e7          	jalr	-776(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000461c:	0014849b          	addiw	s1,s1,1
    80004620:	0ff4f493          	andi	s1,s1,255
    80004624:	00c00793          	li	a5,12
    80004628:	fc97f0e3          	bgeu	a5,s1,800045e8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000462c:	00006517          	auipc	a0,0x6
    80004630:	c8c50513          	addi	a0,a0,-884 # 8000a2b8 <CONSOLE_STATUS+0x2a8>
    80004634:	00002097          	auipc	ra,0x2
    80004638:	cd8080e7          	jalr	-808(ra) # 8000630c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000463c:	00500313          	li	t1,5
    thread_dispatch();
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	034080e7          	jalr	52(ra) # 80001674 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004648:	01000513          	li	a0,16
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	be8080e7          	jalr	-1048(ra) # 80004234 <_ZL9fibonaccim>
    80004654:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004658:	00006517          	auipc	a0,0x6
    8000465c:	c7050513          	addi	a0,a0,-912 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004660:	00002097          	auipc	ra,0x2
    80004664:	cac080e7          	jalr	-852(ra) # 8000630c <_Z11printStringPKc>
    80004668:	00000613          	li	a2,0
    8000466c:	00a00593          	li	a1,10
    80004670:	0009051b          	sext.w	a0,s2
    80004674:	00002097          	auipc	ra,0x2
    80004678:	e48080e7          	jalr	-440(ra) # 800064bc <_Z8printIntiii>
    8000467c:	00006517          	auipc	a0,0x6
    80004680:	e4450513          	addi	a0,a0,-444 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80004684:	00002097          	auipc	ra,0x2
    80004688:	c88080e7          	jalr	-888(ra) # 8000630c <_Z11printStringPKc>
    8000468c:	0400006f          	j	800046cc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004690:	00006517          	auipc	a0,0x6
    80004694:	c2050513          	addi	a0,a0,-992 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80004698:	00002097          	auipc	ra,0x2
    8000469c:	c74080e7          	jalr	-908(ra) # 8000630c <_Z11printStringPKc>
    800046a0:	00000613          	li	a2,0
    800046a4:	00a00593          	li	a1,10
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00002097          	auipc	ra,0x2
    800046b0:	e10080e7          	jalr	-496(ra) # 800064bc <_Z8printIntiii>
    800046b4:	00006517          	auipc	a0,0x6
    800046b8:	e0c50513          	addi	a0,a0,-500 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800046bc:	00002097          	auipc	ra,0x2
    800046c0:	c50080e7          	jalr	-944(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800046c4:	0014849b          	addiw	s1,s1,1
    800046c8:	0ff4f493          	andi	s1,s1,255
    800046cc:	00f00793          	li	a5,15
    800046d0:	fc97f0e3          	bgeu	a5,s1,80004690 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800046d4:	00006517          	auipc	a0,0x6
    800046d8:	c0450513          	addi	a0,a0,-1020 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    800046dc:	00002097          	auipc	ra,0x2
    800046e0:	c30080e7          	jalr	-976(ra) # 8000630c <_Z11printStringPKc>
    finishedD = true;
    800046e4:	00100793          	li	a5,1
    800046e8:	00008717          	auipc	a4,0x8
    800046ec:	7af70da3          	sb	a5,1979(a4) # 8000cea3 <_ZL9finishedD>
    thread_dispatch();
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	f84080e7          	jalr	-124(ra) # 80001674 <thread_dispatch>
}
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	00013903          	ld	s2,0(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004710:	fc010113          	addi	sp,sp,-64
    80004714:	02113c23          	sd	ra,56(sp)
    80004718:	02813823          	sd	s0,48(sp)
    8000471c:	02913423          	sd	s1,40(sp)
    80004720:	03213023          	sd	s2,32(sp)
    80004724:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004728:	02000513          	li	a0,32
    8000472c:	fffff097          	auipc	ra,0xfffff
    80004730:	c04080e7          	jalr	-1020(ra) # 80003330 <_Znwm>
    80004734:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004738:	fffff097          	auipc	ra,0xfffff
    8000473c:	ce0080e7          	jalr	-800(ra) # 80003418 <_ZN6ThreadC1Ev>
    80004740:	00008797          	auipc	a5,0x8
    80004744:	26878793          	addi	a5,a5,616 # 8000c9a8 <_ZTV7WorkerA+0x10>
    80004748:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000474c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004750:	00006517          	auipc	a0,0x6
    80004754:	b9850513          	addi	a0,a0,-1128 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    80004758:	00002097          	auipc	ra,0x2
    8000475c:	bb4080e7          	jalr	-1100(ra) # 8000630c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004760:	02000513          	li	a0,32
    80004764:	fffff097          	auipc	ra,0xfffff
    80004768:	bcc080e7          	jalr	-1076(ra) # 80003330 <_Znwm>
    8000476c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004770:	fffff097          	auipc	ra,0xfffff
    80004774:	ca8080e7          	jalr	-856(ra) # 80003418 <_ZN6ThreadC1Ev>
    80004778:	00008797          	auipc	a5,0x8
    8000477c:	25878793          	addi	a5,a5,600 # 8000c9d0 <_ZTV7WorkerB+0x10>
    80004780:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004784:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004788:	00006517          	auipc	a0,0x6
    8000478c:	b7850513          	addi	a0,a0,-1160 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80004790:	00002097          	auipc	ra,0x2
    80004794:	b7c080e7          	jalr	-1156(ra) # 8000630c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004798:	02000513          	li	a0,32
    8000479c:	fffff097          	auipc	ra,0xfffff
    800047a0:	b94080e7          	jalr	-1132(ra) # 80003330 <_Znwm>
    800047a4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800047a8:	fffff097          	auipc	ra,0xfffff
    800047ac:	c70080e7          	jalr	-912(ra) # 80003418 <_ZN6ThreadC1Ev>
    800047b0:	00008797          	auipc	a5,0x8
    800047b4:	24878793          	addi	a5,a5,584 # 8000c9f8 <_ZTV7WorkerC+0x10>
    800047b8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800047bc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800047c0:	00006517          	auipc	a0,0x6
    800047c4:	b5850513          	addi	a0,a0,-1192 # 8000a318 <CONSOLE_STATUS+0x308>
    800047c8:	00002097          	auipc	ra,0x2
    800047cc:	b44080e7          	jalr	-1212(ra) # 8000630c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800047d0:	02000513          	li	a0,32
    800047d4:	fffff097          	auipc	ra,0xfffff
    800047d8:	b5c080e7          	jalr	-1188(ra) # 80003330 <_Znwm>
    800047dc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800047e0:	fffff097          	auipc	ra,0xfffff
    800047e4:	c38080e7          	jalr	-968(ra) # 80003418 <_ZN6ThreadC1Ev>
    800047e8:	00008797          	auipc	a5,0x8
    800047ec:	23878793          	addi	a5,a5,568 # 8000ca20 <_ZTV7WorkerD+0x10>
    800047f0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800047f4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800047f8:	00006517          	auipc	a0,0x6
    800047fc:	b3850513          	addi	a0,a0,-1224 # 8000a330 <CONSOLE_STATUS+0x320>
    80004800:	00002097          	auipc	ra,0x2
    80004804:	b0c080e7          	jalr	-1268(ra) # 8000630c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004808:	00000493          	li	s1,0
    8000480c:	00300793          	li	a5,3
    80004810:	0297c663          	blt	a5,s1,8000483c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004814:	00349793          	slli	a5,s1,0x3
    80004818:	fe040713          	addi	a4,s0,-32
    8000481c:	00f707b3          	add	a5,a4,a5
    80004820:	fe07b503          	ld	a0,-32(a5)
    80004824:	fffff097          	auipc	ra,0xfffff
    80004828:	c24080e7          	jalr	-988(ra) # 80003448 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000482c:	0014849b          	addiw	s1,s1,1
    80004830:	fddff06f          	j	8000480c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004834:	fffff097          	auipc	ra,0xfffff
    80004838:	c68080e7          	jalr	-920(ra) # 8000349c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000483c:	00008797          	auipc	a5,0x8
    80004840:	6647c783          	lbu	a5,1636(a5) # 8000cea0 <_ZL9finishedA>
    80004844:	fe0788e3          	beqz	a5,80004834 <_Z20Threads_CPP_API_testv+0x124>
    80004848:	00008797          	auipc	a5,0x8
    8000484c:	6597c783          	lbu	a5,1625(a5) # 8000cea1 <_ZL9finishedB>
    80004850:	fe0782e3          	beqz	a5,80004834 <_Z20Threads_CPP_API_testv+0x124>
    80004854:	00008797          	auipc	a5,0x8
    80004858:	64e7c783          	lbu	a5,1614(a5) # 8000cea2 <_ZL9finishedC>
    8000485c:	fc078ce3          	beqz	a5,80004834 <_Z20Threads_CPP_API_testv+0x124>
    80004860:	00008797          	auipc	a5,0x8
    80004864:	6437c783          	lbu	a5,1603(a5) # 8000cea3 <_ZL9finishedD>
    80004868:	fc0786e3          	beqz	a5,80004834 <_Z20Threads_CPP_API_testv+0x124>
    8000486c:	fc040493          	addi	s1,s0,-64
    80004870:	0080006f          	j	80004878 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004874:	00848493          	addi	s1,s1,8
    80004878:	fe040793          	addi	a5,s0,-32
    8000487c:	08f48663          	beq	s1,a5,80004908 <_Z20Threads_CPP_API_testv+0x1f8>
    80004880:	0004b503          	ld	a0,0(s1)
    80004884:	fe0508e3          	beqz	a0,80004874 <_Z20Threads_CPP_API_testv+0x164>
    80004888:	00053783          	ld	a5,0(a0)
    8000488c:	0087b783          	ld	a5,8(a5)
    80004890:	000780e7          	jalr	a5
    80004894:	fe1ff06f          	j	80004874 <_Z20Threads_CPP_API_testv+0x164>
    80004898:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000489c:	00048513          	mv	a0,s1
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	ab8080e7          	jalr	-1352(ra) # 80003358 <_ZdlPv>
    800048a8:	00090513          	mv	a0,s2
    800048ac:	00009097          	auipc	ra,0x9
    800048b0:	6fc080e7          	jalr	1788(ra) # 8000dfa8 <_Unwind_Resume>
    800048b4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800048b8:	00048513          	mv	a0,s1
    800048bc:	fffff097          	auipc	ra,0xfffff
    800048c0:	a9c080e7          	jalr	-1380(ra) # 80003358 <_ZdlPv>
    800048c4:	00090513          	mv	a0,s2
    800048c8:	00009097          	auipc	ra,0x9
    800048cc:	6e0080e7          	jalr	1760(ra) # 8000dfa8 <_Unwind_Resume>
    800048d0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800048d4:	00048513          	mv	a0,s1
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	a80080e7          	jalr	-1408(ra) # 80003358 <_ZdlPv>
    800048e0:	00090513          	mv	a0,s2
    800048e4:	00009097          	auipc	ra,0x9
    800048e8:	6c4080e7          	jalr	1732(ra) # 8000dfa8 <_Unwind_Resume>
    800048ec:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800048f0:	00048513          	mv	a0,s1
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	a64080e7          	jalr	-1436(ra) # 80003358 <_ZdlPv>
    800048fc:	00090513          	mv	a0,s2
    80004900:	00009097          	auipc	ra,0x9
    80004904:	6a8080e7          	jalr	1704(ra) # 8000dfa8 <_Unwind_Resume>
}
    80004908:	03813083          	ld	ra,56(sp)
    8000490c:	03013403          	ld	s0,48(sp)
    80004910:	02813483          	ld	s1,40(sp)
    80004914:	02013903          	ld	s2,32(sp)
    80004918:	04010113          	addi	sp,sp,64
    8000491c:	00008067          	ret

0000000080004920 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004920:	ff010113          	addi	sp,sp,-16
    80004924:	00113423          	sd	ra,8(sp)
    80004928:	00813023          	sd	s0,0(sp)
    8000492c:	01010413          	addi	s0,sp,16
    80004930:	00008797          	auipc	a5,0x8
    80004934:	07878793          	addi	a5,a5,120 # 8000c9a8 <_ZTV7WorkerA+0x10>
    80004938:	00f53023          	sd	a5,0(a0)
    8000493c:	fffff097          	auipc	ra,0xfffff
    80004940:	924080e7          	jalr	-1756(ra) # 80003260 <_ZN6ThreadD1Ev>
    80004944:	00813083          	ld	ra,8(sp)
    80004948:	00013403          	ld	s0,0(sp)
    8000494c:	01010113          	addi	sp,sp,16
    80004950:	00008067          	ret

0000000080004954 <_ZN7WorkerAD0Ev>:
    80004954:	fe010113          	addi	sp,sp,-32
    80004958:	00113c23          	sd	ra,24(sp)
    8000495c:	00813823          	sd	s0,16(sp)
    80004960:	00913423          	sd	s1,8(sp)
    80004964:	02010413          	addi	s0,sp,32
    80004968:	00050493          	mv	s1,a0
    8000496c:	00008797          	auipc	a5,0x8
    80004970:	03c78793          	addi	a5,a5,60 # 8000c9a8 <_ZTV7WorkerA+0x10>
    80004974:	00f53023          	sd	a5,0(a0)
    80004978:	fffff097          	auipc	ra,0xfffff
    8000497c:	8e8080e7          	jalr	-1816(ra) # 80003260 <_ZN6ThreadD1Ev>
    80004980:	00048513          	mv	a0,s1
    80004984:	fffff097          	auipc	ra,0xfffff
    80004988:	9d4080e7          	jalr	-1580(ra) # 80003358 <_ZdlPv>
    8000498c:	01813083          	ld	ra,24(sp)
    80004990:	01013403          	ld	s0,16(sp)
    80004994:	00813483          	ld	s1,8(sp)
    80004998:	02010113          	addi	sp,sp,32
    8000499c:	00008067          	ret

00000000800049a0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800049a0:	ff010113          	addi	sp,sp,-16
    800049a4:	00113423          	sd	ra,8(sp)
    800049a8:	00813023          	sd	s0,0(sp)
    800049ac:	01010413          	addi	s0,sp,16
    800049b0:	00008797          	auipc	a5,0x8
    800049b4:	02078793          	addi	a5,a5,32 # 8000c9d0 <_ZTV7WorkerB+0x10>
    800049b8:	00f53023          	sd	a5,0(a0)
    800049bc:	fffff097          	auipc	ra,0xfffff
    800049c0:	8a4080e7          	jalr	-1884(ra) # 80003260 <_ZN6ThreadD1Ev>
    800049c4:	00813083          	ld	ra,8(sp)
    800049c8:	00013403          	ld	s0,0(sp)
    800049cc:	01010113          	addi	sp,sp,16
    800049d0:	00008067          	ret

00000000800049d4 <_ZN7WorkerBD0Ev>:
    800049d4:	fe010113          	addi	sp,sp,-32
    800049d8:	00113c23          	sd	ra,24(sp)
    800049dc:	00813823          	sd	s0,16(sp)
    800049e0:	00913423          	sd	s1,8(sp)
    800049e4:	02010413          	addi	s0,sp,32
    800049e8:	00050493          	mv	s1,a0
    800049ec:	00008797          	auipc	a5,0x8
    800049f0:	fe478793          	addi	a5,a5,-28 # 8000c9d0 <_ZTV7WorkerB+0x10>
    800049f4:	00f53023          	sd	a5,0(a0)
    800049f8:	fffff097          	auipc	ra,0xfffff
    800049fc:	868080e7          	jalr	-1944(ra) # 80003260 <_ZN6ThreadD1Ev>
    80004a00:	00048513          	mv	a0,s1
    80004a04:	fffff097          	auipc	ra,0xfffff
    80004a08:	954080e7          	jalr	-1708(ra) # 80003358 <_ZdlPv>
    80004a0c:	01813083          	ld	ra,24(sp)
    80004a10:	01013403          	ld	s0,16(sp)
    80004a14:	00813483          	ld	s1,8(sp)
    80004a18:	02010113          	addi	sp,sp,32
    80004a1c:	00008067          	ret

0000000080004a20 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004a20:	ff010113          	addi	sp,sp,-16
    80004a24:	00113423          	sd	ra,8(sp)
    80004a28:	00813023          	sd	s0,0(sp)
    80004a2c:	01010413          	addi	s0,sp,16
    80004a30:	00008797          	auipc	a5,0x8
    80004a34:	fc878793          	addi	a5,a5,-56 # 8000c9f8 <_ZTV7WorkerC+0x10>
    80004a38:	00f53023          	sd	a5,0(a0)
    80004a3c:	fffff097          	auipc	ra,0xfffff
    80004a40:	824080e7          	jalr	-2012(ra) # 80003260 <_ZN6ThreadD1Ev>
    80004a44:	00813083          	ld	ra,8(sp)
    80004a48:	00013403          	ld	s0,0(sp)
    80004a4c:	01010113          	addi	sp,sp,16
    80004a50:	00008067          	ret

0000000080004a54 <_ZN7WorkerCD0Ev>:
    80004a54:	fe010113          	addi	sp,sp,-32
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00913423          	sd	s1,8(sp)
    80004a64:	02010413          	addi	s0,sp,32
    80004a68:	00050493          	mv	s1,a0
    80004a6c:	00008797          	auipc	a5,0x8
    80004a70:	f8c78793          	addi	a5,a5,-116 # 8000c9f8 <_ZTV7WorkerC+0x10>
    80004a74:	00f53023          	sd	a5,0(a0)
    80004a78:	ffffe097          	auipc	ra,0xffffe
    80004a7c:	7e8080e7          	jalr	2024(ra) # 80003260 <_ZN6ThreadD1Ev>
    80004a80:	00048513          	mv	a0,s1
    80004a84:	fffff097          	auipc	ra,0xfffff
    80004a88:	8d4080e7          	jalr	-1836(ra) # 80003358 <_ZdlPv>
    80004a8c:	01813083          	ld	ra,24(sp)
    80004a90:	01013403          	ld	s0,16(sp)
    80004a94:	00813483          	ld	s1,8(sp)
    80004a98:	02010113          	addi	sp,sp,32
    80004a9c:	00008067          	ret

0000000080004aa0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004aa0:	ff010113          	addi	sp,sp,-16
    80004aa4:	00113423          	sd	ra,8(sp)
    80004aa8:	00813023          	sd	s0,0(sp)
    80004aac:	01010413          	addi	s0,sp,16
    80004ab0:	00008797          	auipc	a5,0x8
    80004ab4:	f7078793          	addi	a5,a5,-144 # 8000ca20 <_ZTV7WorkerD+0x10>
    80004ab8:	00f53023          	sd	a5,0(a0)
    80004abc:	ffffe097          	auipc	ra,0xffffe
    80004ac0:	7a4080e7          	jalr	1956(ra) # 80003260 <_ZN6ThreadD1Ev>
    80004ac4:	00813083          	ld	ra,8(sp)
    80004ac8:	00013403          	ld	s0,0(sp)
    80004acc:	01010113          	addi	sp,sp,16
    80004ad0:	00008067          	ret

0000000080004ad4 <_ZN7WorkerDD0Ev>:
    80004ad4:	fe010113          	addi	sp,sp,-32
    80004ad8:	00113c23          	sd	ra,24(sp)
    80004adc:	00813823          	sd	s0,16(sp)
    80004ae0:	00913423          	sd	s1,8(sp)
    80004ae4:	02010413          	addi	s0,sp,32
    80004ae8:	00050493          	mv	s1,a0
    80004aec:	00008797          	auipc	a5,0x8
    80004af0:	f3478793          	addi	a5,a5,-204 # 8000ca20 <_ZTV7WorkerD+0x10>
    80004af4:	00f53023          	sd	a5,0(a0)
    80004af8:	ffffe097          	auipc	ra,0xffffe
    80004afc:	768080e7          	jalr	1896(ra) # 80003260 <_ZN6ThreadD1Ev>
    80004b00:	00048513          	mv	a0,s1
    80004b04:	fffff097          	auipc	ra,0xfffff
    80004b08:	854080e7          	jalr	-1964(ra) # 80003358 <_ZdlPv>
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	02010113          	addi	sp,sp,32
    80004b1c:	00008067          	ret

0000000080004b20 <_ZN7WorkerA3runEv>:
    void run() override {
    80004b20:	ff010113          	addi	sp,sp,-16
    80004b24:	00113423          	sd	ra,8(sp)
    80004b28:	00813023          	sd	s0,0(sp)
    80004b2c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004b30:	00000593          	li	a1,0
    80004b34:	fffff097          	auipc	ra,0xfffff
    80004b38:	774080e7          	jalr	1908(ra) # 800042a8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004b3c:	00813083          	ld	ra,8(sp)
    80004b40:	00013403          	ld	s0,0(sp)
    80004b44:	01010113          	addi	sp,sp,16
    80004b48:	00008067          	ret

0000000080004b4c <_ZN7WorkerB3runEv>:
    void run() override {
    80004b4c:	ff010113          	addi	sp,sp,-16
    80004b50:	00113423          	sd	ra,8(sp)
    80004b54:	00813023          	sd	s0,0(sp)
    80004b58:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004b5c:	00000593          	li	a1,0
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	814080e7          	jalr	-2028(ra) # 80004374 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004b68:	00813083          	ld	ra,8(sp)
    80004b6c:	00013403          	ld	s0,0(sp)
    80004b70:	01010113          	addi	sp,sp,16
    80004b74:	00008067          	ret

0000000080004b78 <_ZN7WorkerC3runEv>:
    void run() override {
    80004b78:	ff010113          	addi	sp,sp,-16
    80004b7c:	00113423          	sd	ra,8(sp)
    80004b80:	00813023          	sd	s0,0(sp)
    80004b84:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004b88:	00000593          	li	a1,0
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	8bc080e7          	jalr	-1860(ra) # 80004448 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004b94:	00813083          	ld	ra,8(sp)
    80004b98:	00013403          	ld	s0,0(sp)
    80004b9c:	01010113          	addi	sp,sp,16
    80004ba0:	00008067          	ret

0000000080004ba4 <_ZN7WorkerD3runEv>:
    void run() override {
    80004ba4:	ff010113          	addi	sp,sp,-16
    80004ba8:	00113423          	sd	ra,8(sp)
    80004bac:	00813023          	sd	s0,0(sp)
    80004bb0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004bb4:	00000593          	li	a1,0
    80004bb8:	00000097          	auipc	ra,0x0
    80004bbc:	a10080e7          	jalr	-1520(ra) # 800045c8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004bc0:	00813083          	ld	ra,8(sp)
    80004bc4:	00013403          	ld	s0,0(sp)
    80004bc8:	01010113          	addi	sp,sp,16
    80004bcc:	00008067          	ret

0000000080004bd0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004bd0:	f8010113          	addi	sp,sp,-128
    80004bd4:	06113c23          	sd	ra,120(sp)
    80004bd8:	06813823          	sd	s0,112(sp)
    80004bdc:	06913423          	sd	s1,104(sp)
    80004be0:	07213023          	sd	s2,96(sp)
    80004be4:	05313c23          	sd	s3,88(sp)
    80004be8:	05413823          	sd	s4,80(sp)
    80004bec:	05513423          	sd	s5,72(sp)
    80004bf0:	05613023          	sd	s6,64(sp)
    80004bf4:	03713c23          	sd	s7,56(sp)
    80004bf8:	03813823          	sd	s8,48(sp)
    80004bfc:	03913423          	sd	s9,40(sp)
    80004c00:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004c04:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c08:	00005517          	auipc	a0,0x5
    80004c0c:	56050513          	addi	a0,a0,1376 # 8000a168 <CONSOLE_STATUS+0x158>
    80004c10:	00001097          	auipc	ra,0x1
    80004c14:	6fc080e7          	jalr	1788(ra) # 8000630c <_Z11printStringPKc>
    getString(input, 30);
    80004c18:	01e00593          	li	a1,30
    80004c1c:	f8040493          	addi	s1,s0,-128
    80004c20:	00048513          	mv	a0,s1
    80004c24:	00001097          	auipc	ra,0x1
    80004c28:	770080e7          	jalr	1904(ra) # 80006394 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c2c:	00048513          	mv	a0,s1
    80004c30:	00002097          	auipc	ra,0x2
    80004c34:	83c080e7          	jalr	-1988(ra) # 8000646c <_Z11stringToIntPKc>
    80004c38:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004c3c:	00005517          	auipc	a0,0x5
    80004c40:	54c50513          	addi	a0,a0,1356 # 8000a188 <CONSOLE_STATUS+0x178>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	6c8080e7          	jalr	1736(ra) # 8000630c <_Z11printStringPKc>
    getString(input, 30);
    80004c4c:	01e00593          	li	a1,30
    80004c50:	00048513          	mv	a0,s1
    80004c54:	00001097          	auipc	ra,0x1
    80004c58:	740080e7          	jalr	1856(ra) # 80006394 <_Z9getStringPci>
    n = stringToInt(input);
    80004c5c:	00048513          	mv	a0,s1
    80004c60:	00002097          	auipc	ra,0x2
    80004c64:	80c080e7          	jalr	-2036(ra) # 8000646c <_Z11stringToIntPKc>
    80004c68:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004c6c:	00005517          	auipc	a0,0x5
    80004c70:	53c50513          	addi	a0,a0,1340 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	698080e7          	jalr	1688(ra) # 8000630c <_Z11printStringPKc>
    printInt(threadNum);
    80004c7c:	00000613          	li	a2,0
    80004c80:	00a00593          	li	a1,10
    80004c84:	00098513          	mv	a0,s3
    80004c88:	00002097          	auipc	ra,0x2
    80004c8c:	834080e7          	jalr	-1996(ra) # 800064bc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004c90:	00005517          	auipc	a0,0x5
    80004c94:	53050513          	addi	a0,a0,1328 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	674080e7          	jalr	1652(ra) # 8000630c <_Z11printStringPKc>
    printInt(n);
    80004ca0:	00000613          	li	a2,0
    80004ca4:	00a00593          	li	a1,10
    80004ca8:	00048513          	mv	a0,s1
    80004cac:	00002097          	auipc	ra,0x2
    80004cb0:	810080e7          	jalr	-2032(ra) # 800064bc <_Z8printIntiii>
    printString(".\n");
    80004cb4:	00005517          	auipc	a0,0x5
    80004cb8:	52450513          	addi	a0,a0,1316 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	650080e7          	jalr	1616(ra) # 8000630c <_Z11printStringPKc>
    if (threadNum > n) {
    80004cc4:	0334c463          	blt	s1,s3,80004cec <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004cc8:	03305c63          	blez	s3,80004d00 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004ccc:	03800513          	li	a0,56
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	660080e7          	jalr	1632(ra) # 80003330 <_Znwm>
    80004cd8:	00050a93          	mv	s5,a0
    80004cdc:	00048593          	mv	a1,s1
    80004ce0:	00002097          	auipc	ra,0x2
    80004ce4:	8fc080e7          	jalr	-1796(ra) # 800065dc <_ZN9BufferCPPC1Ei>
    80004ce8:	0300006f          	j	80004d18 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    80004cec:	00005517          	auipc	a0,0x5
    80004cf0:	65c50513          	addi	a0,a0,1628 # 8000a348 <CONSOLE_STATUS+0x338>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	618080e7          	jalr	1560(ra) # 8000630c <_Z11printStringPKc>
        return;
    80004cfc:	0140006f          	j	80004d10 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d00:	00005517          	auipc	a0,0x5
    80004d04:	52050513          	addi	a0,a0,1312 # 8000a220 <CONSOLE_STATUS+0x210>
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	604080e7          	jalr	1540(ra) # 8000630c <_Z11printStringPKc>
        return;
    80004d10:	000c0113          	mv	sp,s8
    80004d14:	2140006f          	j	80004f28 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004d18:	01000513          	li	a0,16
    80004d1c:	ffffe097          	auipc	ra,0xffffe
    80004d20:	614080e7          	jalr	1556(ra) # 80003330 <_Znwm>
    80004d24:	00050913          	mv	s2,a0
    80004d28:	00000593          	li	a1,0
    80004d2c:	ffffe097          	auipc	ra,0xffffe
    80004d30:	7c0080e7          	jalr	1984(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    80004d34:	00008797          	auipc	a5,0x8
    80004d38:	1727be23          	sd	s2,380(a5) # 8000ceb0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004d3c:	00399793          	slli	a5,s3,0x3
    80004d40:	00f78793          	addi	a5,a5,15
    80004d44:	ff07f793          	andi	a5,a5,-16
    80004d48:	40f10133          	sub	sp,sp,a5
    80004d4c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004d50:	0019871b          	addiw	a4,s3,1
    80004d54:	00171793          	slli	a5,a4,0x1
    80004d58:	00e787b3          	add	a5,a5,a4
    80004d5c:	00379793          	slli	a5,a5,0x3
    80004d60:	00f78793          	addi	a5,a5,15
    80004d64:	ff07f793          	andi	a5,a5,-16
    80004d68:	40f10133          	sub	sp,sp,a5
    80004d6c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004d70:	00199493          	slli	s1,s3,0x1
    80004d74:	013484b3          	add	s1,s1,s3
    80004d78:	00349493          	slli	s1,s1,0x3
    80004d7c:	009b04b3          	add	s1,s6,s1
    80004d80:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004d84:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004d88:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004d8c:	02800513          	li	a0,40
    80004d90:	ffffe097          	auipc	ra,0xffffe
    80004d94:	5a0080e7          	jalr	1440(ra) # 80003330 <_Znwm>
    80004d98:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004d9c:	ffffe097          	auipc	ra,0xffffe
    80004da0:	67c080e7          	jalr	1660(ra) # 80003418 <_ZN6ThreadC1Ev>
    80004da4:	00008797          	auipc	a5,0x8
    80004da8:	cf478793          	addi	a5,a5,-780 # 8000ca98 <_ZTV8Consumer+0x10>
    80004dac:	00fbb023          	sd	a5,0(s7)
    80004db0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004db4:	000b8513          	mv	a0,s7
    80004db8:	ffffe097          	auipc	ra,0xffffe
    80004dbc:	690080e7          	jalr	1680(ra) # 80003448 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004dc0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004dc4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004dc8:	00008797          	auipc	a5,0x8
    80004dcc:	0e87b783          	ld	a5,232(a5) # 8000ceb0 <_ZL10waitForAll>
    80004dd0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004dd4:	02800513          	li	a0,40
    80004dd8:	ffffe097          	auipc	ra,0xffffe
    80004ddc:	558080e7          	jalr	1368(ra) # 80003330 <_Znwm>
    80004de0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004de4:	ffffe097          	auipc	ra,0xffffe
    80004de8:	634080e7          	jalr	1588(ra) # 80003418 <_ZN6ThreadC1Ev>
    80004dec:	00008797          	auipc	a5,0x8
    80004df0:	c5c78793          	addi	a5,a5,-932 # 8000ca48 <_ZTV16ProducerKeyborad+0x10>
    80004df4:	00f4b023          	sd	a5,0(s1)
    80004df8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004dfc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004e00:	00048513          	mv	a0,s1
    80004e04:	ffffe097          	auipc	ra,0xffffe
    80004e08:	644080e7          	jalr	1604(ra) # 80003448 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004e0c:	00100913          	li	s2,1
    80004e10:	0300006f          	j	80004e40 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004e14:	00008797          	auipc	a5,0x8
    80004e18:	c5c78793          	addi	a5,a5,-932 # 8000ca70 <_ZTV8Producer+0x10>
    80004e1c:	00fcb023          	sd	a5,0(s9)
    80004e20:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004e24:	00391793          	slli	a5,s2,0x3
    80004e28:	00fa07b3          	add	a5,s4,a5
    80004e2c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004e30:	000c8513          	mv	a0,s9
    80004e34:	ffffe097          	auipc	ra,0xffffe
    80004e38:	614080e7          	jalr	1556(ra) # 80003448 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004e3c:	0019091b          	addiw	s2,s2,1
    80004e40:	05395263          	bge	s2,s3,80004e84 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004e44:	00191493          	slli	s1,s2,0x1
    80004e48:	012484b3          	add	s1,s1,s2
    80004e4c:	00349493          	slli	s1,s1,0x3
    80004e50:	009b04b3          	add	s1,s6,s1
    80004e54:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004e58:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004e5c:	00008797          	auipc	a5,0x8
    80004e60:	0547b783          	ld	a5,84(a5) # 8000ceb0 <_ZL10waitForAll>
    80004e64:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004e68:	02800513          	li	a0,40
    80004e6c:	ffffe097          	auipc	ra,0xffffe
    80004e70:	4c4080e7          	jalr	1220(ra) # 80003330 <_Znwm>
    80004e74:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004e78:	ffffe097          	auipc	ra,0xffffe
    80004e7c:	5a0080e7          	jalr	1440(ra) # 80003418 <_ZN6ThreadC1Ev>
    80004e80:	f95ff06f          	j	80004e14 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004e84:	ffffe097          	auipc	ra,0xffffe
    80004e88:	618080e7          	jalr	1560(ra) # 8000349c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e8c:	00000493          	li	s1,0
    80004e90:	0099ce63          	blt	s3,s1,80004eac <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004e94:	00008517          	auipc	a0,0x8
    80004e98:	01c53503          	ld	a0,28(a0) # 8000ceb0 <_ZL10waitForAll>
    80004e9c:	ffffe097          	auipc	ra,0xffffe
    80004ea0:	688080e7          	jalr	1672(ra) # 80003524 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004ea4:	0014849b          	addiw	s1,s1,1
    80004ea8:	fe9ff06f          	j	80004e90 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004eac:	00008517          	auipc	a0,0x8
    80004eb0:	00453503          	ld	a0,4(a0) # 8000ceb0 <_ZL10waitForAll>
    80004eb4:	00050863          	beqz	a0,80004ec4 <_Z20testConsumerProducerv+0x2f4>
    80004eb8:	00053783          	ld	a5,0(a0)
    80004ebc:	0087b783          	ld	a5,8(a5)
    80004ec0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004ec4:	00000493          	li	s1,0
    80004ec8:	0080006f          	j	80004ed0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004ecc:	0014849b          	addiw	s1,s1,1
    80004ed0:	0334d263          	bge	s1,s3,80004ef4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004ed4:	00349793          	slli	a5,s1,0x3
    80004ed8:	00fa07b3          	add	a5,s4,a5
    80004edc:	0007b503          	ld	a0,0(a5)
    80004ee0:	fe0506e3          	beqz	a0,80004ecc <_Z20testConsumerProducerv+0x2fc>
    80004ee4:	00053783          	ld	a5,0(a0)
    80004ee8:	0087b783          	ld	a5,8(a5)
    80004eec:	000780e7          	jalr	a5
    80004ef0:	fddff06f          	j	80004ecc <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004ef4:	000b8a63          	beqz	s7,80004f08 <_Z20testConsumerProducerv+0x338>
    80004ef8:	000bb783          	ld	a5,0(s7)
    80004efc:	0087b783          	ld	a5,8(a5)
    80004f00:	000b8513          	mv	a0,s7
    80004f04:	000780e7          	jalr	a5
    delete buffer;
    80004f08:	000a8e63          	beqz	s5,80004f24 <_Z20testConsumerProducerv+0x354>
    80004f0c:	000a8513          	mv	a0,s5
    80004f10:	00002097          	auipc	ra,0x2
    80004f14:	9c4080e7          	jalr	-1596(ra) # 800068d4 <_ZN9BufferCPPD1Ev>
    80004f18:	000a8513          	mv	a0,s5
    80004f1c:	ffffe097          	auipc	ra,0xffffe
    80004f20:	43c080e7          	jalr	1084(ra) # 80003358 <_ZdlPv>
    80004f24:	000c0113          	mv	sp,s8
}
    80004f28:	f8040113          	addi	sp,s0,-128
    80004f2c:	07813083          	ld	ra,120(sp)
    80004f30:	07013403          	ld	s0,112(sp)
    80004f34:	06813483          	ld	s1,104(sp)
    80004f38:	06013903          	ld	s2,96(sp)
    80004f3c:	05813983          	ld	s3,88(sp)
    80004f40:	05013a03          	ld	s4,80(sp)
    80004f44:	04813a83          	ld	s5,72(sp)
    80004f48:	04013b03          	ld	s6,64(sp)
    80004f4c:	03813b83          	ld	s7,56(sp)
    80004f50:	03013c03          	ld	s8,48(sp)
    80004f54:	02813c83          	ld	s9,40(sp)
    80004f58:	08010113          	addi	sp,sp,128
    80004f5c:	00008067          	ret
    80004f60:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f64:	000a8513          	mv	a0,s5
    80004f68:	ffffe097          	auipc	ra,0xffffe
    80004f6c:	3f0080e7          	jalr	1008(ra) # 80003358 <_ZdlPv>
    80004f70:	00048513          	mv	a0,s1
    80004f74:	00009097          	auipc	ra,0x9
    80004f78:	034080e7          	jalr	52(ra) # 8000dfa8 <_Unwind_Resume>
    80004f7c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004f80:	00090513          	mv	a0,s2
    80004f84:	ffffe097          	auipc	ra,0xffffe
    80004f88:	3d4080e7          	jalr	980(ra) # 80003358 <_ZdlPv>
    80004f8c:	00048513          	mv	a0,s1
    80004f90:	00009097          	auipc	ra,0x9
    80004f94:	018080e7          	jalr	24(ra) # 8000dfa8 <_Unwind_Resume>
    80004f98:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004f9c:	000b8513          	mv	a0,s7
    80004fa0:	ffffe097          	auipc	ra,0xffffe
    80004fa4:	3b8080e7          	jalr	952(ra) # 80003358 <_ZdlPv>
    80004fa8:	00048513          	mv	a0,s1
    80004fac:	00009097          	auipc	ra,0x9
    80004fb0:	ffc080e7          	jalr	-4(ra) # 8000dfa8 <_Unwind_Resume>
    80004fb4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004fb8:	00048513          	mv	a0,s1
    80004fbc:	ffffe097          	auipc	ra,0xffffe
    80004fc0:	39c080e7          	jalr	924(ra) # 80003358 <_ZdlPv>
    80004fc4:	00090513          	mv	a0,s2
    80004fc8:	00009097          	auipc	ra,0x9
    80004fcc:	fe0080e7          	jalr	-32(ra) # 8000dfa8 <_Unwind_Resume>
    80004fd0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004fd4:	000c8513          	mv	a0,s9
    80004fd8:	ffffe097          	auipc	ra,0xffffe
    80004fdc:	380080e7          	jalr	896(ra) # 80003358 <_ZdlPv>
    80004fe0:	00048513          	mv	a0,s1
    80004fe4:	00009097          	auipc	ra,0x9
    80004fe8:	fc4080e7          	jalr	-60(ra) # 8000dfa8 <_Unwind_Resume>

0000000080004fec <_ZN8Consumer3runEv>:
    void run() override {
    80004fec:	fd010113          	addi	sp,sp,-48
    80004ff0:	02113423          	sd	ra,40(sp)
    80004ff4:	02813023          	sd	s0,32(sp)
    80004ff8:	00913c23          	sd	s1,24(sp)
    80004ffc:	01213823          	sd	s2,16(sp)
    80005000:	01313423          	sd	s3,8(sp)
    80005004:	03010413          	addi	s0,sp,48
    80005008:	00050913          	mv	s2,a0
        int i = 0;
    8000500c:	00000993          	li	s3,0
    80005010:	0100006f          	j	80005020 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80005014:	00a00513          	li	a0,10
    80005018:	ffffe097          	auipc	ra,0xffffe
    8000501c:	624080e7          	jalr	1572(ra) # 8000363c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80005020:	00008797          	auipc	a5,0x8
    80005024:	e887a783          	lw	a5,-376(a5) # 8000cea8 <_ZL9threadEnd>
    80005028:	04079a63          	bnez	a5,8000507c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000502c:	02093783          	ld	a5,32(s2)
    80005030:	0087b503          	ld	a0,8(a5)
    80005034:	00001097          	auipc	ra,0x1
    80005038:	78c080e7          	jalr	1932(ra) # 800067c0 <_ZN9BufferCPP3getEv>
            i++;
    8000503c:	0019849b          	addiw	s1,s3,1
    80005040:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80005044:	0ff57513          	andi	a0,a0,255
    80005048:	ffffe097          	auipc	ra,0xffffe
    8000504c:	5f4080e7          	jalr	1524(ra) # 8000363c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80005050:	05000793          	li	a5,80
    80005054:	02f4e4bb          	remw	s1,s1,a5
    80005058:	fc0494e3          	bnez	s1,80005020 <_ZN8Consumer3runEv+0x34>
    8000505c:	fb9ff06f          	j	80005014 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80005060:	02093783          	ld	a5,32(s2)
    80005064:	0087b503          	ld	a0,8(a5)
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	758080e7          	jalr	1880(ra) # 800067c0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80005070:	0ff57513          	andi	a0,a0,255
    80005074:	ffffe097          	auipc	ra,0xffffe
    80005078:	5c8080e7          	jalr	1480(ra) # 8000363c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000507c:	02093783          	ld	a5,32(s2)
    80005080:	0087b503          	ld	a0,8(a5)
    80005084:	00001097          	auipc	ra,0x1
    80005088:	7c8080e7          	jalr	1992(ra) # 8000684c <_ZN9BufferCPP6getCntEv>
    8000508c:	fca04ae3          	bgtz	a0,80005060 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80005090:	02093783          	ld	a5,32(s2)
    80005094:	0107b503          	ld	a0,16(a5)
    80005098:	ffffe097          	auipc	ra,0xffffe
    8000509c:	4b8080e7          	jalr	1208(ra) # 80003550 <_ZN9Semaphore6signalEv>
    }
    800050a0:	02813083          	ld	ra,40(sp)
    800050a4:	02013403          	ld	s0,32(sp)
    800050a8:	01813483          	ld	s1,24(sp)
    800050ac:	01013903          	ld	s2,16(sp)
    800050b0:	00813983          	ld	s3,8(sp)
    800050b4:	03010113          	addi	sp,sp,48
    800050b8:	00008067          	ret

00000000800050bc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800050bc:	ff010113          	addi	sp,sp,-16
    800050c0:	00113423          	sd	ra,8(sp)
    800050c4:	00813023          	sd	s0,0(sp)
    800050c8:	01010413          	addi	s0,sp,16
    800050cc:	00008797          	auipc	a5,0x8
    800050d0:	9cc78793          	addi	a5,a5,-1588 # 8000ca98 <_ZTV8Consumer+0x10>
    800050d4:	00f53023          	sd	a5,0(a0)
    800050d8:	ffffe097          	auipc	ra,0xffffe
    800050dc:	188080e7          	jalr	392(ra) # 80003260 <_ZN6ThreadD1Ev>
    800050e0:	00813083          	ld	ra,8(sp)
    800050e4:	00013403          	ld	s0,0(sp)
    800050e8:	01010113          	addi	sp,sp,16
    800050ec:	00008067          	ret

00000000800050f0 <_ZN8ConsumerD0Ev>:
    800050f0:	fe010113          	addi	sp,sp,-32
    800050f4:	00113c23          	sd	ra,24(sp)
    800050f8:	00813823          	sd	s0,16(sp)
    800050fc:	00913423          	sd	s1,8(sp)
    80005100:	02010413          	addi	s0,sp,32
    80005104:	00050493          	mv	s1,a0
    80005108:	00008797          	auipc	a5,0x8
    8000510c:	99078793          	addi	a5,a5,-1648 # 8000ca98 <_ZTV8Consumer+0x10>
    80005110:	00f53023          	sd	a5,0(a0)
    80005114:	ffffe097          	auipc	ra,0xffffe
    80005118:	14c080e7          	jalr	332(ra) # 80003260 <_ZN6ThreadD1Ev>
    8000511c:	00048513          	mv	a0,s1
    80005120:	ffffe097          	auipc	ra,0xffffe
    80005124:	238080e7          	jalr	568(ra) # 80003358 <_ZdlPv>
    80005128:	01813083          	ld	ra,24(sp)
    8000512c:	01013403          	ld	s0,16(sp)
    80005130:	00813483          	ld	s1,8(sp)
    80005134:	02010113          	addi	sp,sp,32
    80005138:	00008067          	ret

000000008000513c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000513c:	ff010113          	addi	sp,sp,-16
    80005140:	00113423          	sd	ra,8(sp)
    80005144:	00813023          	sd	s0,0(sp)
    80005148:	01010413          	addi	s0,sp,16
    8000514c:	00008797          	auipc	a5,0x8
    80005150:	8fc78793          	addi	a5,a5,-1796 # 8000ca48 <_ZTV16ProducerKeyborad+0x10>
    80005154:	00f53023          	sd	a5,0(a0)
    80005158:	ffffe097          	auipc	ra,0xffffe
    8000515c:	108080e7          	jalr	264(ra) # 80003260 <_ZN6ThreadD1Ev>
    80005160:	00813083          	ld	ra,8(sp)
    80005164:	00013403          	ld	s0,0(sp)
    80005168:	01010113          	addi	sp,sp,16
    8000516c:	00008067          	ret

0000000080005170 <_ZN16ProducerKeyboradD0Ev>:
    80005170:	fe010113          	addi	sp,sp,-32
    80005174:	00113c23          	sd	ra,24(sp)
    80005178:	00813823          	sd	s0,16(sp)
    8000517c:	00913423          	sd	s1,8(sp)
    80005180:	02010413          	addi	s0,sp,32
    80005184:	00050493          	mv	s1,a0
    80005188:	00008797          	auipc	a5,0x8
    8000518c:	8c078793          	addi	a5,a5,-1856 # 8000ca48 <_ZTV16ProducerKeyborad+0x10>
    80005190:	00f53023          	sd	a5,0(a0)
    80005194:	ffffe097          	auipc	ra,0xffffe
    80005198:	0cc080e7          	jalr	204(ra) # 80003260 <_ZN6ThreadD1Ev>
    8000519c:	00048513          	mv	a0,s1
    800051a0:	ffffe097          	auipc	ra,0xffffe
    800051a4:	1b8080e7          	jalr	440(ra) # 80003358 <_ZdlPv>
    800051a8:	01813083          	ld	ra,24(sp)
    800051ac:	01013403          	ld	s0,16(sp)
    800051b0:	00813483          	ld	s1,8(sp)
    800051b4:	02010113          	addi	sp,sp,32
    800051b8:	00008067          	ret

00000000800051bc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800051bc:	ff010113          	addi	sp,sp,-16
    800051c0:	00113423          	sd	ra,8(sp)
    800051c4:	00813023          	sd	s0,0(sp)
    800051c8:	01010413          	addi	s0,sp,16
    800051cc:	00008797          	auipc	a5,0x8
    800051d0:	8a478793          	addi	a5,a5,-1884 # 8000ca70 <_ZTV8Producer+0x10>
    800051d4:	00f53023          	sd	a5,0(a0)
    800051d8:	ffffe097          	auipc	ra,0xffffe
    800051dc:	088080e7          	jalr	136(ra) # 80003260 <_ZN6ThreadD1Ev>
    800051e0:	00813083          	ld	ra,8(sp)
    800051e4:	00013403          	ld	s0,0(sp)
    800051e8:	01010113          	addi	sp,sp,16
    800051ec:	00008067          	ret

00000000800051f0 <_ZN8ProducerD0Ev>:
    800051f0:	fe010113          	addi	sp,sp,-32
    800051f4:	00113c23          	sd	ra,24(sp)
    800051f8:	00813823          	sd	s0,16(sp)
    800051fc:	00913423          	sd	s1,8(sp)
    80005200:	02010413          	addi	s0,sp,32
    80005204:	00050493          	mv	s1,a0
    80005208:	00008797          	auipc	a5,0x8
    8000520c:	86878793          	addi	a5,a5,-1944 # 8000ca70 <_ZTV8Producer+0x10>
    80005210:	00f53023          	sd	a5,0(a0)
    80005214:	ffffe097          	auipc	ra,0xffffe
    80005218:	04c080e7          	jalr	76(ra) # 80003260 <_ZN6ThreadD1Ev>
    8000521c:	00048513          	mv	a0,s1
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	138080e7          	jalr	312(ra) # 80003358 <_ZdlPv>
    80005228:	01813083          	ld	ra,24(sp)
    8000522c:	01013403          	ld	s0,16(sp)
    80005230:	00813483          	ld	s1,8(sp)
    80005234:	02010113          	addi	sp,sp,32
    80005238:	00008067          	ret

000000008000523c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000523c:	fe010113          	addi	sp,sp,-32
    80005240:	00113c23          	sd	ra,24(sp)
    80005244:	00813823          	sd	s0,16(sp)
    80005248:	00913423          	sd	s1,8(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	550080e7          	jalr	1360(ra) # 800017a4 <getc>
    8000525c:	0005059b          	sext.w	a1,a0
    80005260:	01b00793          	li	a5,27
    80005264:	00f58c63          	beq	a1,a5,8000527c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80005268:	0204b783          	ld	a5,32(s1)
    8000526c:	0087b503          	ld	a0,8(a5)
    80005270:	00001097          	auipc	ra,0x1
    80005274:	4c0080e7          	jalr	1216(ra) # 80006730 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80005278:	fddff06f          	j	80005254 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000527c:	00100793          	li	a5,1
    80005280:	00008717          	auipc	a4,0x8
    80005284:	c2f72423          	sw	a5,-984(a4) # 8000cea8 <_ZL9threadEnd>
        td->buffer->put('!');
    80005288:	0204b783          	ld	a5,32(s1)
    8000528c:	02100593          	li	a1,33
    80005290:	0087b503          	ld	a0,8(a5)
    80005294:	00001097          	auipc	ra,0x1
    80005298:	49c080e7          	jalr	1180(ra) # 80006730 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000529c:	0204b783          	ld	a5,32(s1)
    800052a0:	0107b503          	ld	a0,16(a5)
    800052a4:	ffffe097          	auipc	ra,0xffffe
    800052a8:	2ac080e7          	jalr	684(ra) # 80003550 <_ZN9Semaphore6signalEv>
    }
    800052ac:	01813083          	ld	ra,24(sp)
    800052b0:	01013403          	ld	s0,16(sp)
    800052b4:	00813483          	ld	s1,8(sp)
    800052b8:	02010113          	addi	sp,sp,32
    800052bc:	00008067          	ret

00000000800052c0 <_ZN8Producer3runEv>:
    void run() override {
    800052c0:	fe010113          	addi	sp,sp,-32
    800052c4:	00113c23          	sd	ra,24(sp)
    800052c8:	00813823          	sd	s0,16(sp)
    800052cc:	00913423          	sd	s1,8(sp)
    800052d0:	01213023          	sd	s2,0(sp)
    800052d4:	02010413          	addi	s0,sp,32
    800052d8:	00050493          	mv	s1,a0
        int i = 0;
    800052dc:	00000913          	li	s2,0
        while (!threadEnd) {
    800052e0:	00008797          	auipc	a5,0x8
    800052e4:	bc87a783          	lw	a5,-1080(a5) # 8000cea8 <_ZL9threadEnd>
    800052e8:	04079263          	bnez	a5,8000532c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800052ec:	0204b783          	ld	a5,32(s1)
    800052f0:	0007a583          	lw	a1,0(a5)
    800052f4:	0305859b          	addiw	a1,a1,48
    800052f8:	0087b503          	ld	a0,8(a5)
    800052fc:	00001097          	auipc	ra,0x1
    80005300:	434080e7          	jalr	1076(ra) # 80006730 <_ZN9BufferCPP3putEi>
            i++;
    80005304:	0019071b          	addiw	a4,s2,1
    80005308:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000530c:	0204b783          	ld	a5,32(s1)
    80005310:	0007a783          	lw	a5,0(a5)
    80005314:	00e787bb          	addw	a5,a5,a4
    80005318:	00500513          	li	a0,5
    8000531c:	02a7e53b          	remw	a0,a5,a0
    80005320:	ffffe097          	auipc	ra,0xffffe
    80005324:	1a4080e7          	jalr	420(ra) # 800034c4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80005328:	fb9ff06f          	j	800052e0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000532c:	0204b783          	ld	a5,32(s1)
    80005330:	0107b503          	ld	a0,16(a5)
    80005334:	ffffe097          	auipc	ra,0xffffe
    80005338:	21c080e7          	jalr	540(ra) # 80003550 <_ZN9Semaphore6signalEv>
    }
    8000533c:	01813083          	ld	ra,24(sp)
    80005340:	01013403          	ld	s0,16(sp)
    80005344:	00813483          	ld	s1,8(sp)
    80005348:	00013903          	ld	s2,0(sp)
    8000534c:	02010113          	addi	sp,sp,32
    80005350:	00008067          	ret

0000000080005354 <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    80005354:	fe010113          	addi	sp,sp,-32
    80005358:	00113c23          	sd	ra,24(sp)
    8000535c:	00813823          	sd	s0,16(sp)
    80005360:	00913423          	sd	s1,8(sp)
    80005364:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005368:	00005517          	auipc	a0,0x5
    8000536c:	01850513          	addi	a0,a0,24 # 8000a380 <CONSOLE_STATUS+0x370>
    80005370:	00001097          	auipc	ra,0x1
    80005374:	f9c080e7          	jalr	-100(ra) # 8000630c <_Z11printStringPKc>
    int test = getc() - '0';
    80005378:	ffffc097          	auipc	ra,0xffffc
    8000537c:	42c080e7          	jalr	1068(ra) # 800017a4 <getc>
    80005380:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005384:	ffffc097          	auipc	ra,0xffffc
    80005388:	420080e7          	jalr	1056(ra) # 800017a4 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000538c:	00700793          	li	a5,7
    80005390:	1097e263          	bltu	a5,s1,80005494 <_Z8userMainv+0x140>
    80005394:	00249493          	slli	s1,s1,0x2
    80005398:	00005717          	auipc	a4,0x5
    8000539c:	24070713          	addi	a4,a4,576 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    800053a0:	00e484b3          	add	s1,s1,a4
    800053a4:	0004a783          	lw	a5,0(s1)
    800053a8:	00e787b3          	add	a5,a5,a4
    800053ac:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	5d4080e7          	jalr	1492(ra) # 80005984 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800053b8:	00005517          	auipc	a0,0x5
    800053bc:	fe850513          	addi	a0,a0,-24 # 8000a3a0 <CONSOLE_STATUS+0x390>
    800053c0:	00001097          	auipc	ra,0x1
    800053c4:	f4c080e7          	jalr	-180(ra) # 8000630c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    800053c8:	01813083          	ld	ra,24(sp)
    800053cc:	01013403          	ld	s0,16(sp)
    800053d0:	00813483          	ld	s1,8(sp)
    800053d4:	02010113          	addi	sp,sp,32
    800053d8:	00008067          	ret
            Threads_CPP_API_test();
    800053dc:	fffff097          	auipc	ra,0xfffff
    800053e0:	334080e7          	jalr	820(ra) # 80004710 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800053e4:	00005517          	auipc	a0,0x5
    800053e8:	ffc50513          	addi	a0,a0,-4 # 8000a3e0 <CONSOLE_STATUS+0x3d0>
    800053ec:	00001097          	auipc	ra,0x1
    800053f0:	f20080e7          	jalr	-224(ra) # 8000630c <_Z11printStringPKc>
            break;
    800053f4:	fd5ff06f          	j	800053c8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800053f8:	fffff097          	auipc	ra,0xfffff
    800053fc:	b6c080e7          	jalr	-1172(ra) # 80003f64 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005400:	00005517          	auipc	a0,0x5
    80005404:	02050513          	addi	a0,a0,32 # 8000a420 <CONSOLE_STATUS+0x410>
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	f04080e7          	jalr	-252(ra) # 8000630c <_Z11printStringPKc>
            break;
    80005410:	fb9ff06f          	j	800053c8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005414:	00001097          	auipc	ra,0x1
    80005418:	8b4080e7          	jalr	-1868(ra) # 80005cc8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000541c:	00005517          	auipc	a0,0x5
    80005420:	05450513          	addi	a0,a0,84 # 8000a470 <CONSOLE_STATUS+0x460>
    80005424:	00001097          	auipc	ra,0x1
    80005428:	ee8080e7          	jalr	-280(ra) # 8000630c <_Z11printStringPKc>
            break;
    8000542c:	f9dff06f          	j	800053c8 <_Z8userMainv+0x74>
            testSleeping();
    80005430:	00001097          	auipc	ra,0x1
    80005434:	648080e7          	jalr	1608(ra) # 80006a78 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005438:	00005517          	auipc	a0,0x5
    8000543c:	09050513          	addi	a0,a0,144 # 8000a4c8 <CONSOLE_STATUS+0x4b8>
    80005440:	00001097          	auipc	ra,0x1
    80005444:	ecc080e7          	jalr	-308(ra) # 8000630c <_Z11printStringPKc>
            break;
    80005448:	f81ff06f          	j	800053c8 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000544c:	fffff097          	auipc	ra,0xfffff
    80005450:	784080e7          	jalr	1924(ra) # 80004bd0 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005454:	00005517          	auipc	a0,0x5
    80005458:	0a450513          	addi	a0,a0,164 # 8000a4f8 <CONSOLE_STATUS+0x4e8>
    8000545c:	00001097          	auipc	ra,0x1
    80005460:	eb0080e7          	jalr	-336(ra) # 8000630c <_Z11printStringPKc>
            break;
    80005464:	f65ff06f          	j	800053c8 <_Z8userMainv+0x74>
            System_Mode_test();
    80005468:	00002097          	auipc	ra,0x2
    8000546c:	b84080e7          	jalr	-1148(ra) # 80006fec <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005470:	00005517          	auipc	a0,0x5
    80005474:	0c850513          	addi	a0,a0,200 # 8000a538 <CONSOLE_STATUS+0x528>
    80005478:	00001097          	auipc	ra,0x1
    8000547c:	e94080e7          	jalr	-364(ra) # 8000630c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005480:	00005517          	auipc	a0,0x5
    80005484:	0d850513          	addi	a0,a0,216 # 8000a558 <CONSOLE_STATUS+0x548>
    80005488:	00001097          	auipc	ra,0x1
    8000548c:	e84080e7          	jalr	-380(ra) # 8000630c <_Z11printStringPKc>
            break;
    80005490:	f39ff06f          	j	800053c8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005494:	00005517          	auipc	a0,0x5
    80005498:	11c50513          	addi	a0,a0,284 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    8000549c:	00001097          	auipc	ra,0x1
    800054a0:	e70080e7          	jalr	-400(ra) # 8000630c <_Z11printStringPKc>
    800054a4:	f25ff06f          	j	800053c8 <_Z8userMainv+0x74>

00000000800054a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800054a8:	fe010113          	addi	sp,sp,-32
    800054ac:	00113c23          	sd	ra,24(sp)
    800054b0:	00813823          	sd	s0,16(sp)
    800054b4:	00913423          	sd	s1,8(sp)
    800054b8:	01213023          	sd	s2,0(sp)
    800054bc:	02010413          	addi	s0,sp,32
    800054c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800054c4:	00100793          	li	a5,1
    800054c8:	02a7f863          	bgeu	a5,a0,800054f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800054cc:	00a00793          	li	a5,10
    800054d0:	02f577b3          	remu	a5,a0,a5
    800054d4:	02078e63          	beqz	a5,80005510 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800054d8:	fff48513          	addi	a0,s1,-1
    800054dc:	00000097          	auipc	ra,0x0
    800054e0:	fcc080e7          	jalr	-52(ra) # 800054a8 <_ZL9fibonaccim>
    800054e4:	00050913          	mv	s2,a0
    800054e8:	ffe48513          	addi	a0,s1,-2
    800054ec:	00000097          	auipc	ra,0x0
    800054f0:	fbc080e7          	jalr	-68(ra) # 800054a8 <_ZL9fibonaccim>
    800054f4:	00a90533          	add	a0,s2,a0
}
    800054f8:	01813083          	ld	ra,24(sp)
    800054fc:	01013403          	ld	s0,16(sp)
    80005500:	00813483          	ld	s1,8(sp)
    80005504:	00013903          	ld	s2,0(sp)
    80005508:	02010113          	addi	sp,sp,32
    8000550c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005510:	ffffc097          	auipc	ra,0xffffc
    80005514:	164080e7          	jalr	356(ra) # 80001674 <thread_dispatch>
    80005518:	fc1ff06f          	j	800054d8 <_ZL9fibonaccim+0x30>

000000008000551c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000551c:	fe010113          	addi	sp,sp,-32
    80005520:	00113c23          	sd	ra,24(sp)
    80005524:	00813823          	sd	s0,16(sp)
    80005528:	00913423          	sd	s1,8(sp)
    8000552c:	01213023          	sd	s2,0(sp)
    80005530:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005534:	00a00493          	li	s1,10
    80005538:	0400006f          	j	80005578 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000553c:	00005517          	auipc	a0,0x5
    80005540:	d7450513          	addi	a0,a0,-652 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005544:	00001097          	auipc	ra,0x1
    80005548:	dc8080e7          	jalr	-568(ra) # 8000630c <_Z11printStringPKc>
    8000554c:	00000613          	li	a2,0
    80005550:	00a00593          	li	a1,10
    80005554:	00048513          	mv	a0,s1
    80005558:	00001097          	auipc	ra,0x1
    8000555c:	f64080e7          	jalr	-156(ra) # 800064bc <_Z8printIntiii>
    80005560:	00005517          	auipc	a0,0x5
    80005564:	f6050513          	addi	a0,a0,-160 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005568:	00001097          	auipc	ra,0x1
    8000556c:	da4080e7          	jalr	-604(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005570:	0014849b          	addiw	s1,s1,1
    80005574:	0ff4f493          	andi	s1,s1,255
    80005578:	00c00793          	li	a5,12
    8000557c:	fc97f0e3          	bgeu	a5,s1,8000553c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005580:	00005517          	auipc	a0,0x5
    80005584:	d3850513          	addi	a0,a0,-712 # 8000a2b8 <CONSOLE_STATUS+0x2a8>
    80005588:	00001097          	auipc	ra,0x1
    8000558c:	d84080e7          	jalr	-636(ra) # 8000630c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005590:	00500313          	li	t1,5
    thread_dispatch();
    80005594:	ffffc097          	auipc	ra,0xffffc
    80005598:	0e0080e7          	jalr	224(ra) # 80001674 <thread_dispatch>

    uint64 result = fibonacci(16);
    8000559c:	01000513          	li	a0,16
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	f08080e7          	jalr	-248(ra) # 800054a8 <_ZL9fibonaccim>
    800055a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800055ac:	00005517          	auipc	a0,0x5
    800055b0:	d1c50513          	addi	a0,a0,-740 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    800055b4:	00001097          	auipc	ra,0x1
    800055b8:	d58080e7          	jalr	-680(ra) # 8000630c <_Z11printStringPKc>
    800055bc:	00000613          	li	a2,0
    800055c0:	00a00593          	li	a1,10
    800055c4:	0009051b          	sext.w	a0,s2
    800055c8:	00001097          	auipc	ra,0x1
    800055cc:	ef4080e7          	jalr	-268(ra) # 800064bc <_Z8printIntiii>
    800055d0:	00005517          	auipc	a0,0x5
    800055d4:	ef050513          	addi	a0,a0,-272 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800055d8:	00001097          	auipc	ra,0x1
    800055dc:	d34080e7          	jalr	-716(ra) # 8000630c <_Z11printStringPKc>
    800055e0:	0400006f          	j	80005620 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800055e4:	00005517          	auipc	a0,0x5
    800055e8:	ccc50513          	addi	a0,a0,-820 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    800055ec:	00001097          	auipc	ra,0x1
    800055f0:	d20080e7          	jalr	-736(ra) # 8000630c <_Z11printStringPKc>
    800055f4:	00000613          	li	a2,0
    800055f8:	00a00593          	li	a1,10
    800055fc:	00048513          	mv	a0,s1
    80005600:	00001097          	auipc	ra,0x1
    80005604:	ebc080e7          	jalr	-324(ra) # 800064bc <_Z8printIntiii>
    80005608:	00005517          	auipc	a0,0x5
    8000560c:	eb850513          	addi	a0,a0,-328 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005610:	00001097          	auipc	ra,0x1
    80005614:	cfc080e7          	jalr	-772(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005618:	0014849b          	addiw	s1,s1,1
    8000561c:	0ff4f493          	andi	s1,s1,255
    80005620:	00f00793          	li	a5,15
    80005624:	fc97f0e3          	bgeu	a5,s1,800055e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005628:	00005517          	auipc	a0,0x5
    8000562c:	cb050513          	addi	a0,a0,-848 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80005630:	00001097          	auipc	ra,0x1
    80005634:	cdc080e7          	jalr	-804(ra) # 8000630c <_Z11printStringPKc>
    finishedD = true;
    80005638:	00100793          	li	a5,1
    8000563c:	00008717          	auipc	a4,0x8
    80005640:	86f70e23          	sb	a5,-1924(a4) # 8000ceb8 <_ZL9finishedD>
    thread_dispatch();
    80005644:	ffffc097          	auipc	ra,0xffffc
    80005648:	030080e7          	jalr	48(ra) # 80001674 <thread_dispatch>
}
    8000564c:	01813083          	ld	ra,24(sp)
    80005650:	01013403          	ld	s0,16(sp)
    80005654:	00813483          	ld	s1,8(sp)
    80005658:	00013903          	ld	s2,0(sp)
    8000565c:	02010113          	addi	sp,sp,32
    80005660:	00008067          	ret

0000000080005664 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005664:	fe010113          	addi	sp,sp,-32
    80005668:	00113c23          	sd	ra,24(sp)
    8000566c:	00813823          	sd	s0,16(sp)
    80005670:	00913423          	sd	s1,8(sp)
    80005674:	01213023          	sd	s2,0(sp)
    80005678:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000567c:	00000493          	li	s1,0
    80005680:	0400006f          	j	800056c0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005684:	00005517          	auipc	a0,0x5
    80005688:	bfc50513          	addi	a0,a0,-1028 # 8000a280 <CONSOLE_STATUS+0x270>
    8000568c:	00001097          	auipc	ra,0x1
    80005690:	c80080e7          	jalr	-896(ra) # 8000630c <_Z11printStringPKc>
    80005694:	00000613          	li	a2,0
    80005698:	00a00593          	li	a1,10
    8000569c:	00048513          	mv	a0,s1
    800056a0:	00001097          	auipc	ra,0x1
    800056a4:	e1c080e7          	jalr	-484(ra) # 800064bc <_Z8printIntiii>
    800056a8:	00005517          	auipc	a0,0x5
    800056ac:	e1850513          	addi	a0,a0,-488 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800056b0:	00001097          	auipc	ra,0x1
    800056b4:	c5c080e7          	jalr	-932(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800056b8:	0014849b          	addiw	s1,s1,1
    800056bc:	0ff4f493          	andi	s1,s1,255
    800056c0:	00200793          	li	a5,2
    800056c4:	fc97f0e3          	bgeu	a5,s1,80005684 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800056c8:	00005517          	auipc	a0,0x5
    800056cc:	bc050513          	addi	a0,a0,-1088 # 8000a288 <CONSOLE_STATUS+0x278>
    800056d0:	00001097          	auipc	ra,0x1
    800056d4:	c3c080e7          	jalr	-964(ra) # 8000630c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800056d8:	00700313          	li	t1,7
    thread_dispatch();
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	f98080e7          	jalr	-104(ra) # 80001674 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800056e4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800056e8:	00005517          	auipc	a0,0x5
    800056ec:	bb050513          	addi	a0,a0,-1104 # 8000a298 <CONSOLE_STATUS+0x288>
    800056f0:	00001097          	auipc	ra,0x1
    800056f4:	c1c080e7          	jalr	-996(ra) # 8000630c <_Z11printStringPKc>
    800056f8:	00000613          	li	a2,0
    800056fc:	00a00593          	li	a1,10
    80005700:	0009051b          	sext.w	a0,s2
    80005704:	00001097          	auipc	ra,0x1
    80005708:	db8080e7          	jalr	-584(ra) # 800064bc <_Z8printIntiii>
    8000570c:	00005517          	auipc	a0,0x5
    80005710:	db450513          	addi	a0,a0,-588 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005714:	00001097          	auipc	ra,0x1
    80005718:	bf8080e7          	jalr	-1032(ra) # 8000630c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000571c:	00c00513          	li	a0,12
    80005720:	00000097          	auipc	ra,0x0
    80005724:	d88080e7          	jalr	-632(ra) # 800054a8 <_ZL9fibonaccim>
    80005728:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000572c:	00005517          	auipc	a0,0x5
    80005730:	b7450513          	addi	a0,a0,-1164 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80005734:	00001097          	auipc	ra,0x1
    80005738:	bd8080e7          	jalr	-1064(ra) # 8000630c <_Z11printStringPKc>
    8000573c:	00000613          	li	a2,0
    80005740:	00a00593          	li	a1,10
    80005744:	0009051b          	sext.w	a0,s2
    80005748:	00001097          	auipc	ra,0x1
    8000574c:	d74080e7          	jalr	-652(ra) # 800064bc <_Z8printIntiii>
    80005750:	00005517          	auipc	a0,0x5
    80005754:	d7050513          	addi	a0,a0,-656 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005758:	00001097          	auipc	ra,0x1
    8000575c:	bb4080e7          	jalr	-1100(ra) # 8000630c <_Z11printStringPKc>
    80005760:	0400006f          	j	800057a0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005764:	00005517          	auipc	a0,0x5
    80005768:	b1c50513          	addi	a0,a0,-1252 # 8000a280 <CONSOLE_STATUS+0x270>
    8000576c:	00001097          	auipc	ra,0x1
    80005770:	ba0080e7          	jalr	-1120(ra) # 8000630c <_Z11printStringPKc>
    80005774:	00000613          	li	a2,0
    80005778:	00a00593          	li	a1,10
    8000577c:	00048513          	mv	a0,s1
    80005780:	00001097          	auipc	ra,0x1
    80005784:	d3c080e7          	jalr	-708(ra) # 800064bc <_Z8printIntiii>
    80005788:	00005517          	auipc	a0,0x5
    8000578c:	d3850513          	addi	a0,a0,-712 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005790:	00001097          	auipc	ra,0x1
    80005794:	b7c080e7          	jalr	-1156(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005798:	0014849b          	addiw	s1,s1,1
    8000579c:	0ff4f493          	andi	s1,s1,255
    800057a0:	00500793          	li	a5,5
    800057a4:	fc97f0e3          	bgeu	a5,s1,80005764 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800057a8:	00005517          	auipc	a0,0x5
    800057ac:	ab050513          	addi	a0,a0,-1360 # 8000a258 <CONSOLE_STATUS+0x248>
    800057b0:	00001097          	auipc	ra,0x1
    800057b4:	b5c080e7          	jalr	-1188(ra) # 8000630c <_Z11printStringPKc>
    finishedC = true;
    800057b8:	00100793          	li	a5,1
    800057bc:	00007717          	auipc	a4,0x7
    800057c0:	6ef70ea3          	sb	a5,1789(a4) # 8000ceb9 <_ZL9finishedC>
    thread_dispatch();
    800057c4:	ffffc097          	auipc	ra,0xffffc
    800057c8:	eb0080e7          	jalr	-336(ra) # 80001674 <thread_dispatch>
}
    800057cc:	01813083          	ld	ra,24(sp)
    800057d0:	01013403          	ld	s0,16(sp)
    800057d4:	00813483          	ld	s1,8(sp)
    800057d8:	00013903          	ld	s2,0(sp)
    800057dc:	02010113          	addi	sp,sp,32
    800057e0:	00008067          	ret

00000000800057e4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800057e4:	fe010113          	addi	sp,sp,-32
    800057e8:	00113c23          	sd	ra,24(sp)
    800057ec:	00813823          	sd	s0,16(sp)
    800057f0:	00913423          	sd	s1,8(sp)
    800057f4:	01213023          	sd	s2,0(sp)
    800057f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800057fc:	00000913          	li	s2,0
    80005800:	0380006f          	j	80005838 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005804:	ffffc097          	auipc	ra,0xffffc
    80005808:	e70080e7          	jalr	-400(ra) # 80001674 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000580c:	00148493          	addi	s1,s1,1
    80005810:	000027b7          	lui	a5,0x2
    80005814:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005818:	0097ee63          	bltu	a5,s1,80005834 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000581c:	00000713          	li	a4,0
    80005820:	000077b7          	lui	a5,0x7
    80005824:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005828:	fce7eee3          	bltu	a5,a4,80005804 <_ZL11workerBodyBPv+0x20>
    8000582c:	00170713          	addi	a4,a4,1
    80005830:	ff1ff06f          	j	80005820 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005834:	00190913          	addi	s2,s2,1
    80005838:	00f00793          	li	a5,15
    8000583c:	0527e063          	bltu	a5,s2,8000587c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005840:	00005517          	auipc	a0,0x5
    80005844:	a2850513          	addi	a0,a0,-1496 # 8000a268 <CONSOLE_STATUS+0x258>
    80005848:	00001097          	auipc	ra,0x1
    8000584c:	ac4080e7          	jalr	-1340(ra) # 8000630c <_Z11printStringPKc>
    80005850:	00000613          	li	a2,0
    80005854:	00a00593          	li	a1,10
    80005858:	0009051b          	sext.w	a0,s2
    8000585c:	00001097          	auipc	ra,0x1
    80005860:	c60080e7          	jalr	-928(ra) # 800064bc <_Z8printIntiii>
    80005864:	00005517          	auipc	a0,0x5
    80005868:	c5c50513          	addi	a0,a0,-932 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    8000586c:	00001097          	auipc	ra,0x1
    80005870:	aa0080e7          	jalr	-1376(ra) # 8000630c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005874:	00000493          	li	s1,0
    80005878:	f99ff06f          	j	80005810 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000587c:	00005517          	auipc	a0,0x5
    80005880:	9f450513          	addi	a0,a0,-1548 # 8000a270 <CONSOLE_STATUS+0x260>
    80005884:	00001097          	auipc	ra,0x1
    80005888:	a88080e7          	jalr	-1400(ra) # 8000630c <_Z11printStringPKc>
    finishedB = true;
    8000588c:	00100793          	li	a5,1
    80005890:	00007717          	auipc	a4,0x7
    80005894:	62f70523          	sb	a5,1578(a4) # 8000ceba <_ZL9finishedB>
    thread_dispatch();
    80005898:	ffffc097          	auipc	ra,0xffffc
    8000589c:	ddc080e7          	jalr	-548(ra) # 80001674 <thread_dispatch>
}
    800058a0:	01813083          	ld	ra,24(sp)
    800058a4:	01013403          	ld	s0,16(sp)
    800058a8:	00813483          	ld	s1,8(sp)
    800058ac:	00013903          	ld	s2,0(sp)
    800058b0:	02010113          	addi	sp,sp,32
    800058b4:	00008067          	ret

00000000800058b8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800058b8:	fe010113          	addi	sp,sp,-32
    800058bc:	00113c23          	sd	ra,24(sp)
    800058c0:	00813823          	sd	s0,16(sp)
    800058c4:	00913423          	sd	s1,8(sp)
    800058c8:	01213023          	sd	s2,0(sp)
    800058cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800058d0:	00000913          	li	s2,0
    800058d4:	0380006f          	j	8000590c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	d9c080e7          	jalr	-612(ra) # 80001674 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    800058e0:	00148493          	addi	s1,s1,1
    800058e4:	000027b7          	lui	a5,0x2
    800058e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800058ec:	0097ee63          	bltu	a5,s1,80005908 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800058f0:	00000713          	li	a4,0
    800058f4:	000077b7          	lui	a5,0x7
    800058f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800058fc:	fce7eee3          	bltu	a5,a4,800058d8 <_ZL11workerBodyAPv+0x20>
    80005900:	00170713          	addi	a4,a4,1
    80005904:	ff1ff06f          	j	800058f4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005908:	00190913          	addi	s2,s2,1
    8000590c:	00900793          	li	a5,9
    80005910:	0527e063          	bltu	a5,s2,80005950 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005914:	00005517          	auipc	a0,0x5
    80005918:	93c50513          	addi	a0,a0,-1732 # 8000a250 <CONSOLE_STATUS+0x240>
    8000591c:	00001097          	auipc	ra,0x1
    80005920:	9f0080e7          	jalr	-1552(ra) # 8000630c <_Z11printStringPKc>
    80005924:	00000613          	li	a2,0
    80005928:	00a00593          	li	a1,10
    8000592c:	0009051b          	sext.w	a0,s2
    80005930:	00001097          	auipc	ra,0x1
    80005934:	b8c080e7          	jalr	-1140(ra) # 800064bc <_Z8printIntiii>
    80005938:	00005517          	auipc	a0,0x5
    8000593c:	b8850513          	addi	a0,a0,-1144 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80005940:	00001097          	auipc	ra,0x1
    80005944:	9cc080e7          	jalr	-1588(ra) # 8000630c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005948:	00000493          	li	s1,0
    8000594c:	f99ff06f          	j	800058e4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005950:	00005517          	auipc	a0,0x5
    80005954:	90850513          	addi	a0,a0,-1784 # 8000a258 <CONSOLE_STATUS+0x248>
    80005958:	00001097          	auipc	ra,0x1
    8000595c:	9b4080e7          	jalr	-1612(ra) # 8000630c <_Z11printStringPKc>
    finishedA = true;
    80005960:	00100793          	li	a5,1
    80005964:	00007717          	auipc	a4,0x7
    80005968:	54f70ba3          	sb	a5,1367(a4) # 8000cebb <_ZL9finishedA>
}
    8000596c:	01813083          	ld	ra,24(sp)
    80005970:	01013403          	ld	s0,16(sp)
    80005974:	00813483          	ld	s1,8(sp)
    80005978:	00013903          	ld	s2,0(sp)
    8000597c:	02010113          	addi	sp,sp,32
    80005980:	00008067          	ret

0000000080005984 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005984:	fd010113          	addi	sp,sp,-48
    80005988:	02113423          	sd	ra,40(sp)
    8000598c:	02813023          	sd	s0,32(sp)
    80005990:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005994:	00000613          	li	a2,0
    80005998:	00000597          	auipc	a1,0x0
    8000599c:	f2058593          	addi	a1,a1,-224 # 800058b8 <_ZL11workerBodyAPv>
    800059a0:	fd040513          	addi	a0,s0,-48
    800059a4:	ffffc097          	auipc	ra,0xffffc
    800059a8:	c08080e7          	jalr	-1016(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    800059ac:	00005517          	auipc	a0,0x5
    800059b0:	93c50513          	addi	a0,a0,-1732 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    800059b4:	00001097          	auipc	ra,0x1
    800059b8:	958080e7          	jalr	-1704(ra) # 8000630c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800059bc:	00000613          	li	a2,0
    800059c0:	00000597          	auipc	a1,0x0
    800059c4:	e2458593          	addi	a1,a1,-476 # 800057e4 <_ZL11workerBodyBPv>
    800059c8:	fd840513          	addi	a0,s0,-40
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	be0080e7          	jalr	-1056(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    800059d4:	00005517          	auipc	a0,0x5
    800059d8:	92c50513          	addi	a0,a0,-1748 # 8000a300 <CONSOLE_STATUS+0x2f0>
    800059dc:	00001097          	auipc	ra,0x1
    800059e0:	930080e7          	jalr	-1744(ra) # 8000630c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800059e4:	00000613          	li	a2,0
    800059e8:	00000597          	auipc	a1,0x0
    800059ec:	c7c58593          	addi	a1,a1,-900 # 80005664 <_ZL11workerBodyCPv>
    800059f0:	fe040513          	addi	a0,s0,-32
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	bb8080e7          	jalr	-1096(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    800059fc:	00005517          	auipc	a0,0x5
    80005a00:	91c50513          	addi	a0,a0,-1764 # 8000a318 <CONSOLE_STATUS+0x308>
    80005a04:	00001097          	auipc	ra,0x1
    80005a08:	908080e7          	jalr	-1784(ra) # 8000630c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a0c:	00000613          	li	a2,0
    80005a10:	00000597          	auipc	a1,0x0
    80005a14:	b0c58593          	addi	a1,a1,-1268 # 8000551c <_ZL11workerBodyDPv>
    80005a18:	fe840513          	addi	a0,s0,-24
    80005a1c:	ffffc097          	auipc	ra,0xffffc
    80005a20:	b90080e7          	jalr	-1136(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    80005a24:	00005517          	auipc	a0,0x5
    80005a28:	90c50513          	addi	a0,a0,-1780 # 8000a330 <CONSOLE_STATUS+0x320>
    80005a2c:	00001097          	auipc	ra,0x1
    80005a30:	8e0080e7          	jalr	-1824(ra) # 8000630c <_Z11printStringPKc>
    80005a34:	00c0006f          	j	80005a40 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	c3c080e7          	jalr	-964(ra) # 80001674 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005a40:	00007797          	auipc	a5,0x7
    80005a44:	47b7c783          	lbu	a5,1147(a5) # 8000cebb <_ZL9finishedA>
    80005a48:	fe0788e3          	beqz	a5,80005a38 <_Z18Threads_C_API_testv+0xb4>
    80005a4c:	00007797          	auipc	a5,0x7
    80005a50:	46e7c783          	lbu	a5,1134(a5) # 8000ceba <_ZL9finishedB>
    80005a54:	fe0782e3          	beqz	a5,80005a38 <_Z18Threads_C_API_testv+0xb4>
    80005a58:	00007797          	auipc	a5,0x7
    80005a5c:	4617c783          	lbu	a5,1121(a5) # 8000ceb9 <_ZL9finishedC>
    80005a60:	fc078ce3          	beqz	a5,80005a38 <_Z18Threads_C_API_testv+0xb4>
    80005a64:	00007797          	auipc	a5,0x7
    80005a68:	4547c783          	lbu	a5,1108(a5) # 8000ceb8 <_ZL9finishedD>
    80005a6c:	fc0786e3          	beqz	a5,80005a38 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005a70:	02813083          	ld	ra,40(sp)
    80005a74:	02013403          	ld	s0,32(sp)
    80005a78:	03010113          	addi	sp,sp,48
    80005a7c:	00008067          	ret

0000000080005a80 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005a80:	fd010113          	addi	sp,sp,-48
    80005a84:	02113423          	sd	ra,40(sp)
    80005a88:	02813023          	sd	s0,32(sp)
    80005a8c:	00913c23          	sd	s1,24(sp)
    80005a90:	01213823          	sd	s2,16(sp)
    80005a94:	01313423          	sd	s3,8(sp)
    80005a98:	03010413          	addi	s0,sp,48
    80005a9c:	00050993          	mv	s3,a0
    80005aa0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005aa4:	00000913          	li	s2,0
    80005aa8:	00c0006f          	j	80005ab4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005aac:	ffffe097          	auipc	ra,0xffffe
    80005ab0:	9f0080e7          	jalr	-1552(ra) # 8000349c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005ab4:	ffffc097          	auipc	ra,0xffffc
    80005ab8:	cf0080e7          	jalr	-784(ra) # 800017a4 <getc>
    80005abc:	0005059b          	sext.w	a1,a0
    80005ac0:	01b00793          	li	a5,27
    80005ac4:	02f58a63          	beq	a1,a5,80005af8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005ac8:	0084b503          	ld	a0,8(s1)
    80005acc:	00001097          	auipc	ra,0x1
    80005ad0:	c64080e7          	jalr	-924(ra) # 80006730 <_ZN9BufferCPP3putEi>
        i++;
    80005ad4:	0019071b          	addiw	a4,s2,1
    80005ad8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005adc:	0004a683          	lw	a3,0(s1)
    80005ae0:	0026979b          	slliw	a5,a3,0x2
    80005ae4:	00d787bb          	addw	a5,a5,a3
    80005ae8:	0017979b          	slliw	a5,a5,0x1
    80005aec:	02f767bb          	remw	a5,a4,a5
    80005af0:	fc0792e3          	bnez	a5,80005ab4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005af4:	fb9ff06f          	j	80005aac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005af8:	00100793          	li	a5,1
    80005afc:	00007717          	auipc	a4,0x7
    80005b00:	3cf72223          	sw	a5,964(a4) # 8000cec0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005b04:	0209b783          	ld	a5,32(s3)
    80005b08:	02100593          	li	a1,33
    80005b0c:	0087b503          	ld	a0,8(a5)
    80005b10:	00001097          	auipc	ra,0x1
    80005b14:	c20080e7          	jalr	-992(ra) # 80006730 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005b18:	0104b503          	ld	a0,16(s1)
    80005b1c:	ffffe097          	auipc	ra,0xffffe
    80005b20:	a34080e7          	jalr	-1484(ra) # 80003550 <_ZN9Semaphore6signalEv>
}
    80005b24:	02813083          	ld	ra,40(sp)
    80005b28:	02013403          	ld	s0,32(sp)
    80005b2c:	01813483          	ld	s1,24(sp)
    80005b30:	01013903          	ld	s2,16(sp)
    80005b34:	00813983          	ld	s3,8(sp)
    80005b38:	03010113          	addi	sp,sp,48
    80005b3c:	00008067          	ret

0000000080005b40 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005b40:	fe010113          	addi	sp,sp,-32
    80005b44:	00113c23          	sd	ra,24(sp)
    80005b48:	00813823          	sd	s0,16(sp)
    80005b4c:	00913423          	sd	s1,8(sp)
    80005b50:	01213023          	sd	s2,0(sp)
    80005b54:	02010413          	addi	s0,sp,32
    80005b58:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005b5c:	00000913          	li	s2,0
    80005b60:	00c0006f          	j	80005b6c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005b64:	ffffe097          	auipc	ra,0xffffe
    80005b68:	938080e7          	jalr	-1736(ra) # 8000349c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005b6c:	00007797          	auipc	a5,0x7
    80005b70:	3547a783          	lw	a5,852(a5) # 8000cec0 <_ZL9threadEnd>
    80005b74:	02079e63          	bnez	a5,80005bb0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005b78:	0004a583          	lw	a1,0(s1)
    80005b7c:	0305859b          	addiw	a1,a1,48
    80005b80:	0084b503          	ld	a0,8(s1)
    80005b84:	00001097          	auipc	ra,0x1
    80005b88:	bac080e7          	jalr	-1108(ra) # 80006730 <_ZN9BufferCPP3putEi>
        i++;
    80005b8c:	0019071b          	addiw	a4,s2,1
    80005b90:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005b94:	0004a683          	lw	a3,0(s1)
    80005b98:	0026979b          	slliw	a5,a3,0x2
    80005b9c:	00d787bb          	addw	a5,a5,a3
    80005ba0:	0017979b          	slliw	a5,a5,0x1
    80005ba4:	02f767bb          	remw	a5,a4,a5
    80005ba8:	fc0792e3          	bnez	a5,80005b6c <_ZN12ProducerSync8producerEPv+0x2c>
    80005bac:	fb9ff06f          	j	80005b64 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005bb0:	0104b503          	ld	a0,16(s1)
    80005bb4:	ffffe097          	auipc	ra,0xffffe
    80005bb8:	99c080e7          	jalr	-1636(ra) # 80003550 <_ZN9Semaphore6signalEv>
}
    80005bbc:	01813083          	ld	ra,24(sp)
    80005bc0:	01013403          	ld	s0,16(sp)
    80005bc4:	00813483          	ld	s1,8(sp)
    80005bc8:	00013903          	ld	s2,0(sp)
    80005bcc:	02010113          	addi	sp,sp,32
    80005bd0:	00008067          	ret

0000000080005bd4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005bd4:	fd010113          	addi	sp,sp,-48
    80005bd8:	02113423          	sd	ra,40(sp)
    80005bdc:	02813023          	sd	s0,32(sp)
    80005be0:	00913c23          	sd	s1,24(sp)
    80005be4:	01213823          	sd	s2,16(sp)
    80005be8:	01313423          	sd	s3,8(sp)
    80005bec:	01413023          	sd	s4,0(sp)
    80005bf0:	03010413          	addi	s0,sp,48
    80005bf4:	00050993          	mv	s3,a0
    80005bf8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005bfc:	00000a13          	li	s4,0
    80005c00:	01c0006f          	j	80005c1c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005c04:	ffffe097          	auipc	ra,0xffffe
    80005c08:	898080e7          	jalr	-1896(ra) # 8000349c <_ZN6Thread8dispatchEv>
    80005c0c:	0500006f          	j	80005c5c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005c10:	00a00513          	li	a0,10
    80005c14:	ffffc097          	auipc	ra,0xffffc
    80005c18:	bb4080e7          	jalr	-1100(ra) # 800017c8 <putc>
    while (!threadEnd) {
    80005c1c:	00007797          	auipc	a5,0x7
    80005c20:	2a47a783          	lw	a5,676(a5) # 8000cec0 <_ZL9threadEnd>
    80005c24:	06079263          	bnez	a5,80005c88 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005c28:	00893503          	ld	a0,8(s2)
    80005c2c:	00001097          	auipc	ra,0x1
    80005c30:	b94080e7          	jalr	-1132(ra) # 800067c0 <_ZN9BufferCPP3getEv>
        i++;
    80005c34:	001a049b          	addiw	s1,s4,1
    80005c38:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005c3c:	0ff57513          	andi	a0,a0,255
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	b88080e7          	jalr	-1144(ra) # 800017c8 <putc>
        if (i % (5 * data->id) == 0) {
    80005c48:	00092703          	lw	a4,0(s2)
    80005c4c:	0027179b          	slliw	a5,a4,0x2
    80005c50:	00e787bb          	addw	a5,a5,a4
    80005c54:	02f4e7bb          	remw	a5,s1,a5
    80005c58:	fa0786e3          	beqz	a5,80005c04 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005c5c:	05000793          	li	a5,80
    80005c60:	02f4e4bb          	remw	s1,s1,a5
    80005c64:	fa049ce3          	bnez	s1,80005c1c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005c68:	fa9ff06f          	j	80005c10 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005c6c:	0209b783          	ld	a5,32(s3)
    80005c70:	0087b503          	ld	a0,8(a5)
    80005c74:	00001097          	auipc	ra,0x1
    80005c78:	b4c080e7          	jalr	-1204(ra) # 800067c0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005c7c:	0ff57513          	andi	a0,a0,255
    80005c80:	ffffe097          	auipc	ra,0xffffe
    80005c84:	9bc080e7          	jalr	-1604(ra) # 8000363c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005c88:	0209b783          	ld	a5,32(s3)
    80005c8c:	0087b503          	ld	a0,8(a5)
    80005c90:	00001097          	auipc	ra,0x1
    80005c94:	bbc080e7          	jalr	-1092(ra) # 8000684c <_ZN9BufferCPP6getCntEv>
    80005c98:	fca04ae3          	bgtz	a0,80005c6c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005c9c:	01093503          	ld	a0,16(s2)
    80005ca0:	ffffe097          	auipc	ra,0xffffe
    80005ca4:	8b0080e7          	jalr	-1872(ra) # 80003550 <_ZN9Semaphore6signalEv>
}
    80005ca8:	02813083          	ld	ra,40(sp)
    80005cac:	02013403          	ld	s0,32(sp)
    80005cb0:	01813483          	ld	s1,24(sp)
    80005cb4:	01013903          	ld	s2,16(sp)
    80005cb8:	00813983          	ld	s3,8(sp)
    80005cbc:	00013a03          	ld	s4,0(sp)
    80005cc0:	03010113          	addi	sp,sp,48
    80005cc4:	00008067          	ret

0000000080005cc8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005cc8:	f8010113          	addi	sp,sp,-128
    80005ccc:	06113c23          	sd	ra,120(sp)
    80005cd0:	06813823          	sd	s0,112(sp)
    80005cd4:	06913423          	sd	s1,104(sp)
    80005cd8:	07213023          	sd	s2,96(sp)
    80005cdc:	05313c23          	sd	s3,88(sp)
    80005ce0:	05413823          	sd	s4,80(sp)
    80005ce4:	05513423          	sd	s5,72(sp)
    80005ce8:	05613023          	sd	s6,64(sp)
    80005cec:	03713c23          	sd	s7,56(sp)
    80005cf0:	03813823          	sd	s8,48(sp)
    80005cf4:	03913423          	sd	s9,40(sp)
    80005cf8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005cfc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005d00:	00004517          	auipc	a0,0x4
    80005d04:	46850513          	addi	a0,a0,1128 # 8000a168 <CONSOLE_STATUS+0x158>
    80005d08:	00000097          	auipc	ra,0x0
    80005d0c:	604080e7          	jalr	1540(ra) # 8000630c <_Z11printStringPKc>
    getString(input, 30);
    80005d10:	01e00593          	li	a1,30
    80005d14:	f8040493          	addi	s1,s0,-128
    80005d18:	00048513          	mv	a0,s1
    80005d1c:	00000097          	auipc	ra,0x0
    80005d20:	678080e7          	jalr	1656(ra) # 80006394 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005d24:	00048513          	mv	a0,s1
    80005d28:	00000097          	auipc	ra,0x0
    80005d2c:	744080e7          	jalr	1860(ra) # 8000646c <_Z11stringToIntPKc>
    80005d30:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005d34:	00004517          	auipc	a0,0x4
    80005d38:	45450513          	addi	a0,a0,1108 # 8000a188 <CONSOLE_STATUS+0x178>
    80005d3c:	00000097          	auipc	ra,0x0
    80005d40:	5d0080e7          	jalr	1488(ra) # 8000630c <_Z11printStringPKc>
    getString(input, 30);
    80005d44:	01e00593          	li	a1,30
    80005d48:	00048513          	mv	a0,s1
    80005d4c:	00000097          	auipc	ra,0x0
    80005d50:	648080e7          	jalr	1608(ra) # 80006394 <_Z9getStringPci>
    n = stringToInt(input);
    80005d54:	00048513          	mv	a0,s1
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	714080e7          	jalr	1812(ra) # 8000646c <_Z11stringToIntPKc>
    80005d60:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005d64:	00004517          	auipc	a0,0x4
    80005d68:	44450513          	addi	a0,a0,1092 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80005d6c:	00000097          	auipc	ra,0x0
    80005d70:	5a0080e7          	jalr	1440(ra) # 8000630c <_Z11printStringPKc>
    80005d74:	00000613          	li	a2,0
    80005d78:	00a00593          	li	a1,10
    80005d7c:	00090513          	mv	a0,s2
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	73c080e7          	jalr	1852(ra) # 800064bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005d88:	00004517          	auipc	a0,0x4
    80005d8c:	43850513          	addi	a0,a0,1080 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80005d90:	00000097          	auipc	ra,0x0
    80005d94:	57c080e7          	jalr	1404(ra) # 8000630c <_Z11printStringPKc>
    80005d98:	00000613          	li	a2,0
    80005d9c:	00a00593          	li	a1,10
    80005da0:	00048513          	mv	a0,s1
    80005da4:	00000097          	auipc	ra,0x0
    80005da8:	718080e7          	jalr	1816(ra) # 800064bc <_Z8printIntiii>
    printString(".\n");
    80005dac:	00004517          	auipc	a0,0x4
    80005db0:	42c50513          	addi	a0,a0,1068 # 8000a1d8 <CONSOLE_STATUS+0x1c8>
    80005db4:	00000097          	auipc	ra,0x0
    80005db8:	558080e7          	jalr	1368(ra) # 8000630c <_Z11printStringPKc>
    if(threadNum > n) {
    80005dbc:	0324c463          	blt	s1,s2,80005de4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005dc0:	03205c63          	blez	s2,80005df8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005dc4:	03800513          	li	a0,56
    80005dc8:	ffffd097          	auipc	ra,0xffffd
    80005dcc:	568080e7          	jalr	1384(ra) # 80003330 <_Znwm>
    80005dd0:	00050a93          	mv	s5,a0
    80005dd4:	00048593          	mv	a1,s1
    80005dd8:	00001097          	auipc	ra,0x1
    80005ddc:	804080e7          	jalr	-2044(ra) # 800065dc <_ZN9BufferCPPC1Ei>
    80005de0:	0300006f          	j	80005e10 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005de4:	00004517          	auipc	a0,0x4
    80005de8:	3fc50513          	addi	a0,a0,1020 # 8000a1e0 <CONSOLE_STATUS+0x1d0>
    80005dec:	00000097          	auipc	ra,0x0
    80005df0:	520080e7          	jalr	1312(ra) # 8000630c <_Z11printStringPKc>
        return;
    80005df4:	0140006f          	j	80005e08 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005df8:	00004517          	auipc	a0,0x4
    80005dfc:	42850513          	addi	a0,a0,1064 # 8000a220 <CONSOLE_STATUS+0x210>
    80005e00:	00000097          	auipc	ra,0x0
    80005e04:	50c080e7          	jalr	1292(ra) # 8000630c <_Z11printStringPKc>
        return;
    80005e08:	000b8113          	mv	sp,s7
    80005e0c:	2380006f          	j	80006044 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005e10:	01000513          	li	a0,16
    80005e14:	ffffd097          	auipc	ra,0xffffd
    80005e18:	51c080e7          	jalr	1308(ra) # 80003330 <_Znwm>
    80005e1c:	00050493          	mv	s1,a0
    80005e20:	00000593          	li	a1,0
    80005e24:	ffffd097          	auipc	ra,0xffffd
    80005e28:	6c8080e7          	jalr	1736(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    80005e2c:	00007797          	auipc	a5,0x7
    80005e30:	0897be23          	sd	s1,156(a5) # 8000cec8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005e34:	00391793          	slli	a5,s2,0x3
    80005e38:	00f78793          	addi	a5,a5,15
    80005e3c:	ff07f793          	andi	a5,a5,-16
    80005e40:	40f10133          	sub	sp,sp,a5
    80005e44:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005e48:	0019071b          	addiw	a4,s2,1
    80005e4c:	00171793          	slli	a5,a4,0x1
    80005e50:	00e787b3          	add	a5,a5,a4
    80005e54:	00379793          	slli	a5,a5,0x3
    80005e58:	00f78793          	addi	a5,a5,15
    80005e5c:	ff07f793          	andi	a5,a5,-16
    80005e60:	40f10133          	sub	sp,sp,a5
    80005e64:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005e68:	00191c13          	slli	s8,s2,0x1
    80005e6c:	012c07b3          	add	a5,s8,s2
    80005e70:	00379793          	slli	a5,a5,0x3
    80005e74:	00fa07b3          	add	a5,s4,a5
    80005e78:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005e7c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005e80:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005e84:	02800513          	li	a0,40
    80005e88:	ffffd097          	auipc	ra,0xffffd
    80005e8c:	4a8080e7          	jalr	1192(ra) # 80003330 <_Znwm>
    80005e90:	00050b13          	mv	s6,a0
    80005e94:	012c0c33          	add	s8,s8,s2
    80005e98:	003c1c13          	slli	s8,s8,0x3
    80005e9c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005ea0:	ffffd097          	auipc	ra,0xffffd
    80005ea4:	578080e7          	jalr	1400(ra) # 80003418 <_ZN6ThreadC1Ev>
    80005ea8:	00007797          	auipc	a5,0x7
    80005eac:	c6878793          	addi	a5,a5,-920 # 8000cb10 <_ZTV12ConsumerSync+0x10>
    80005eb0:	00fb3023          	sd	a5,0(s6)
    80005eb4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005eb8:	000b0513          	mv	a0,s6
    80005ebc:	ffffd097          	auipc	ra,0xffffd
    80005ec0:	58c080e7          	jalr	1420(ra) # 80003448 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005ec4:	00000493          	li	s1,0
    80005ec8:	0380006f          	j	80005f00 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005ecc:	00007797          	auipc	a5,0x7
    80005ed0:	c1c78793          	addi	a5,a5,-996 # 8000cae8 <_ZTV12ProducerSync+0x10>
    80005ed4:	00fcb023          	sd	a5,0(s9)
    80005ed8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005edc:	00349793          	slli	a5,s1,0x3
    80005ee0:	00f987b3          	add	a5,s3,a5
    80005ee4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005ee8:	00349793          	slli	a5,s1,0x3
    80005eec:	00f987b3          	add	a5,s3,a5
    80005ef0:	0007b503          	ld	a0,0(a5)
    80005ef4:	ffffd097          	auipc	ra,0xffffd
    80005ef8:	554080e7          	jalr	1364(ra) # 80003448 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005efc:	0014849b          	addiw	s1,s1,1
    80005f00:	0b24d063          	bge	s1,s2,80005fa0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005f04:	00149793          	slli	a5,s1,0x1
    80005f08:	009787b3          	add	a5,a5,s1
    80005f0c:	00379793          	slli	a5,a5,0x3
    80005f10:	00fa07b3          	add	a5,s4,a5
    80005f14:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005f18:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005f1c:	00007717          	auipc	a4,0x7
    80005f20:	fac73703          	ld	a4,-84(a4) # 8000cec8 <_ZL10waitForAll>
    80005f24:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005f28:	02905863          	blez	s1,80005f58 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005f2c:	02800513          	li	a0,40
    80005f30:	ffffd097          	auipc	ra,0xffffd
    80005f34:	400080e7          	jalr	1024(ra) # 80003330 <_Znwm>
    80005f38:	00050c93          	mv	s9,a0
    80005f3c:	00149c13          	slli	s8,s1,0x1
    80005f40:	009c0c33          	add	s8,s8,s1
    80005f44:	003c1c13          	slli	s8,s8,0x3
    80005f48:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005f4c:	ffffd097          	auipc	ra,0xffffd
    80005f50:	4cc080e7          	jalr	1228(ra) # 80003418 <_ZN6ThreadC1Ev>
    80005f54:	f79ff06f          	j	80005ecc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005f58:	02800513          	li	a0,40
    80005f5c:	ffffd097          	auipc	ra,0xffffd
    80005f60:	3d4080e7          	jalr	980(ra) # 80003330 <_Znwm>
    80005f64:	00050c93          	mv	s9,a0
    80005f68:	00149c13          	slli	s8,s1,0x1
    80005f6c:	009c0c33          	add	s8,s8,s1
    80005f70:	003c1c13          	slli	s8,s8,0x3
    80005f74:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005f78:	ffffd097          	auipc	ra,0xffffd
    80005f7c:	4a0080e7          	jalr	1184(ra) # 80003418 <_ZN6ThreadC1Ev>
    80005f80:	00007797          	auipc	a5,0x7
    80005f84:	b4078793          	addi	a5,a5,-1216 # 8000cac0 <_ZTV16ProducerKeyboard+0x10>
    80005f88:	00fcb023          	sd	a5,0(s9)
    80005f8c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005f90:	00349793          	slli	a5,s1,0x3
    80005f94:	00f987b3          	add	a5,s3,a5
    80005f98:	0197b023          	sd	s9,0(a5)
    80005f9c:	f4dff06f          	j	80005ee8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005fa0:	ffffd097          	auipc	ra,0xffffd
    80005fa4:	4fc080e7          	jalr	1276(ra) # 8000349c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005fa8:	00000493          	li	s1,0
    80005fac:	00994e63          	blt	s2,s1,80005fc8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005fb0:	00007517          	auipc	a0,0x7
    80005fb4:	f1853503          	ld	a0,-232(a0) # 8000cec8 <_ZL10waitForAll>
    80005fb8:	ffffd097          	auipc	ra,0xffffd
    80005fbc:	56c080e7          	jalr	1388(ra) # 80003524 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005fc0:	0014849b          	addiw	s1,s1,1
    80005fc4:	fe9ff06f          	j	80005fac <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005fc8:	00000493          	li	s1,0
    80005fcc:	0080006f          	j	80005fd4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005fd0:	0014849b          	addiw	s1,s1,1
    80005fd4:	0324d263          	bge	s1,s2,80005ff8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005fd8:	00349793          	slli	a5,s1,0x3
    80005fdc:	00f987b3          	add	a5,s3,a5
    80005fe0:	0007b503          	ld	a0,0(a5)
    80005fe4:	fe0506e3          	beqz	a0,80005fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005fe8:	00053783          	ld	a5,0(a0)
    80005fec:	0087b783          	ld	a5,8(a5)
    80005ff0:	000780e7          	jalr	a5
    80005ff4:	fddff06f          	j	80005fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005ff8:	000b0a63          	beqz	s6,8000600c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005ffc:	000b3783          	ld	a5,0(s6)
    80006000:	0087b783          	ld	a5,8(a5)
    80006004:	000b0513          	mv	a0,s6
    80006008:	000780e7          	jalr	a5
    delete waitForAll;
    8000600c:	00007517          	auipc	a0,0x7
    80006010:	ebc53503          	ld	a0,-324(a0) # 8000cec8 <_ZL10waitForAll>
    80006014:	00050863          	beqz	a0,80006024 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80006018:	00053783          	ld	a5,0(a0)
    8000601c:	0087b783          	ld	a5,8(a5)
    80006020:	000780e7          	jalr	a5
    delete buffer;
    80006024:	000a8e63          	beqz	s5,80006040 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80006028:	000a8513          	mv	a0,s5
    8000602c:	00001097          	auipc	ra,0x1
    80006030:	8a8080e7          	jalr	-1880(ra) # 800068d4 <_ZN9BufferCPPD1Ev>
    80006034:	000a8513          	mv	a0,s5
    80006038:	ffffd097          	auipc	ra,0xffffd
    8000603c:	320080e7          	jalr	800(ra) # 80003358 <_ZdlPv>
    80006040:	000b8113          	mv	sp,s7

}
    80006044:	f8040113          	addi	sp,s0,-128
    80006048:	07813083          	ld	ra,120(sp)
    8000604c:	07013403          	ld	s0,112(sp)
    80006050:	06813483          	ld	s1,104(sp)
    80006054:	06013903          	ld	s2,96(sp)
    80006058:	05813983          	ld	s3,88(sp)
    8000605c:	05013a03          	ld	s4,80(sp)
    80006060:	04813a83          	ld	s5,72(sp)
    80006064:	04013b03          	ld	s6,64(sp)
    80006068:	03813b83          	ld	s7,56(sp)
    8000606c:	03013c03          	ld	s8,48(sp)
    80006070:	02813c83          	ld	s9,40(sp)
    80006074:	08010113          	addi	sp,sp,128
    80006078:	00008067          	ret
    8000607c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006080:	000a8513          	mv	a0,s5
    80006084:	ffffd097          	auipc	ra,0xffffd
    80006088:	2d4080e7          	jalr	724(ra) # 80003358 <_ZdlPv>
    8000608c:	00048513          	mv	a0,s1
    80006090:	00008097          	auipc	ra,0x8
    80006094:	f18080e7          	jalr	-232(ra) # 8000dfa8 <_Unwind_Resume>
    80006098:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000609c:	00048513          	mv	a0,s1
    800060a0:	ffffd097          	auipc	ra,0xffffd
    800060a4:	2b8080e7          	jalr	696(ra) # 80003358 <_ZdlPv>
    800060a8:	00090513          	mv	a0,s2
    800060ac:	00008097          	auipc	ra,0x8
    800060b0:	efc080e7          	jalr	-260(ra) # 8000dfa8 <_Unwind_Resume>
    800060b4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800060b8:	000b0513          	mv	a0,s6
    800060bc:	ffffd097          	auipc	ra,0xffffd
    800060c0:	29c080e7          	jalr	668(ra) # 80003358 <_ZdlPv>
    800060c4:	00048513          	mv	a0,s1
    800060c8:	00008097          	auipc	ra,0x8
    800060cc:	ee0080e7          	jalr	-288(ra) # 8000dfa8 <_Unwind_Resume>
    800060d0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800060d4:	000c8513          	mv	a0,s9
    800060d8:	ffffd097          	auipc	ra,0xffffd
    800060dc:	280080e7          	jalr	640(ra) # 80003358 <_ZdlPv>
    800060e0:	00048513          	mv	a0,s1
    800060e4:	00008097          	auipc	ra,0x8
    800060e8:	ec4080e7          	jalr	-316(ra) # 8000dfa8 <_Unwind_Resume>
    800060ec:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800060f0:	000c8513          	mv	a0,s9
    800060f4:	ffffd097          	auipc	ra,0xffffd
    800060f8:	264080e7          	jalr	612(ra) # 80003358 <_ZdlPv>
    800060fc:	00048513          	mv	a0,s1
    80006100:	00008097          	auipc	ra,0x8
    80006104:	ea8080e7          	jalr	-344(ra) # 8000dfa8 <_Unwind_Resume>

0000000080006108 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80006108:	ff010113          	addi	sp,sp,-16
    8000610c:	00113423          	sd	ra,8(sp)
    80006110:	00813023          	sd	s0,0(sp)
    80006114:	01010413          	addi	s0,sp,16
    80006118:	00007797          	auipc	a5,0x7
    8000611c:	9f878793          	addi	a5,a5,-1544 # 8000cb10 <_ZTV12ConsumerSync+0x10>
    80006120:	00f53023          	sd	a5,0(a0)
    80006124:	ffffd097          	auipc	ra,0xffffd
    80006128:	13c080e7          	jalr	316(ra) # 80003260 <_ZN6ThreadD1Ev>
    8000612c:	00813083          	ld	ra,8(sp)
    80006130:	00013403          	ld	s0,0(sp)
    80006134:	01010113          	addi	sp,sp,16
    80006138:	00008067          	ret

000000008000613c <_ZN12ConsumerSyncD0Ev>:
    8000613c:	fe010113          	addi	sp,sp,-32
    80006140:	00113c23          	sd	ra,24(sp)
    80006144:	00813823          	sd	s0,16(sp)
    80006148:	00913423          	sd	s1,8(sp)
    8000614c:	02010413          	addi	s0,sp,32
    80006150:	00050493          	mv	s1,a0
    80006154:	00007797          	auipc	a5,0x7
    80006158:	9bc78793          	addi	a5,a5,-1604 # 8000cb10 <_ZTV12ConsumerSync+0x10>
    8000615c:	00f53023          	sd	a5,0(a0)
    80006160:	ffffd097          	auipc	ra,0xffffd
    80006164:	100080e7          	jalr	256(ra) # 80003260 <_ZN6ThreadD1Ev>
    80006168:	00048513          	mv	a0,s1
    8000616c:	ffffd097          	auipc	ra,0xffffd
    80006170:	1ec080e7          	jalr	492(ra) # 80003358 <_ZdlPv>
    80006174:	01813083          	ld	ra,24(sp)
    80006178:	01013403          	ld	s0,16(sp)
    8000617c:	00813483          	ld	s1,8(sp)
    80006180:	02010113          	addi	sp,sp,32
    80006184:	00008067          	ret

0000000080006188 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80006188:	ff010113          	addi	sp,sp,-16
    8000618c:	00113423          	sd	ra,8(sp)
    80006190:	00813023          	sd	s0,0(sp)
    80006194:	01010413          	addi	s0,sp,16
    80006198:	00007797          	auipc	a5,0x7
    8000619c:	95078793          	addi	a5,a5,-1712 # 8000cae8 <_ZTV12ProducerSync+0x10>
    800061a0:	00f53023          	sd	a5,0(a0)
    800061a4:	ffffd097          	auipc	ra,0xffffd
    800061a8:	0bc080e7          	jalr	188(ra) # 80003260 <_ZN6ThreadD1Ev>
    800061ac:	00813083          	ld	ra,8(sp)
    800061b0:	00013403          	ld	s0,0(sp)
    800061b4:	01010113          	addi	sp,sp,16
    800061b8:	00008067          	ret

00000000800061bc <_ZN12ProducerSyncD0Ev>:
    800061bc:	fe010113          	addi	sp,sp,-32
    800061c0:	00113c23          	sd	ra,24(sp)
    800061c4:	00813823          	sd	s0,16(sp)
    800061c8:	00913423          	sd	s1,8(sp)
    800061cc:	02010413          	addi	s0,sp,32
    800061d0:	00050493          	mv	s1,a0
    800061d4:	00007797          	auipc	a5,0x7
    800061d8:	91478793          	addi	a5,a5,-1772 # 8000cae8 <_ZTV12ProducerSync+0x10>
    800061dc:	00f53023          	sd	a5,0(a0)
    800061e0:	ffffd097          	auipc	ra,0xffffd
    800061e4:	080080e7          	jalr	128(ra) # 80003260 <_ZN6ThreadD1Ev>
    800061e8:	00048513          	mv	a0,s1
    800061ec:	ffffd097          	auipc	ra,0xffffd
    800061f0:	16c080e7          	jalr	364(ra) # 80003358 <_ZdlPv>
    800061f4:	01813083          	ld	ra,24(sp)
    800061f8:	01013403          	ld	s0,16(sp)
    800061fc:	00813483          	ld	s1,8(sp)
    80006200:	02010113          	addi	sp,sp,32
    80006204:	00008067          	ret

0000000080006208 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80006208:	ff010113          	addi	sp,sp,-16
    8000620c:	00113423          	sd	ra,8(sp)
    80006210:	00813023          	sd	s0,0(sp)
    80006214:	01010413          	addi	s0,sp,16
    80006218:	00007797          	auipc	a5,0x7
    8000621c:	8a878793          	addi	a5,a5,-1880 # 8000cac0 <_ZTV16ProducerKeyboard+0x10>
    80006220:	00f53023          	sd	a5,0(a0)
    80006224:	ffffd097          	auipc	ra,0xffffd
    80006228:	03c080e7          	jalr	60(ra) # 80003260 <_ZN6ThreadD1Ev>
    8000622c:	00813083          	ld	ra,8(sp)
    80006230:	00013403          	ld	s0,0(sp)
    80006234:	01010113          	addi	sp,sp,16
    80006238:	00008067          	ret

000000008000623c <_ZN16ProducerKeyboardD0Ev>:
    8000623c:	fe010113          	addi	sp,sp,-32
    80006240:	00113c23          	sd	ra,24(sp)
    80006244:	00813823          	sd	s0,16(sp)
    80006248:	00913423          	sd	s1,8(sp)
    8000624c:	02010413          	addi	s0,sp,32
    80006250:	00050493          	mv	s1,a0
    80006254:	00007797          	auipc	a5,0x7
    80006258:	86c78793          	addi	a5,a5,-1940 # 8000cac0 <_ZTV16ProducerKeyboard+0x10>
    8000625c:	00f53023          	sd	a5,0(a0)
    80006260:	ffffd097          	auipc	ra,0xffffd
    80006264:	000080e7          	jalr	ra # 80003260 <_ZN6ThreadD1Ev>
    80006268:	00048513          	mv	a0,s1
    8000626c:	ffffd097          	auipc	ra,0xffffd
    80006270:	0ec080e7          	jalr	236(ra) # 80003358 <_ZdlPv>
    80006274:	01813083          	ld	ra,24(sp)
    80006278:	01013403          	ld	s0,16(sp)
    8000627c:	00813483          	ld	s1,8(sp)
    80006280:	02010113          	addi	sp,sp,32
    80006284:	00008067          	ret

0000000080006288 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006288:	ff010113          	addi	sp,sp,-16
    8000628c:	00113423          	sd	ra,8(sp)
    80006290:	00813023          	sd	s0,0(sp)
    80006294:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006298:	02053583          	ld	a1,32(a0)
    8000629c:	fffff097          	auipc	ra,0xfffff
    800062a0:	7e4080e7          	jalr	2020(ra) # 80005a80 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800062a4:	00813083          	ld	ra,8(sp)
    800062a8:	00013403          	ld	s0,0(sp)
    800062ac:	01010113          	addi	sp,sp,16
    800062b0:	00008067          	ret

00000000800062b4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800062b4:	ff010113          	addi	sp,sp,-16
    800062b8:	00113423          	sd	ra,8(sp)
    800062bc:	00813023          	sd	s0,0(sp)
    800062c0:	01010413          	addi	s0,sp,16
        producer(td);
    800062c4:	02053583          	ld	a1,32(a0)
    800062c8:	00000097          	auipc	ra,0x0
    800062cc:	878080e7          	jalr	-1928(ra) # 80005b40 <_ZN12ProducerSync8producerEPv>
    }
    800062d0:	00813083          	ld	ra,8(sp)
    800062d4:	00013403          	ld	s0,0(sp)
    800062d8:	01010113          	addi	sp,sp,16
    800062dc:	00008067          	ret

00000000800062e0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800062e0:	ff010113          	addi	sp,sp,-16
    800062e4:	00113423          	sd	ra,8(sp)
    800062e8:	00813023          	sd	s0,0(sp)
    800062ec:	01010413          	addi	s0,sp,16
        consumer(td);
    800062f0:	02053583          	ld	a1,32(a0)
    800062f4:	00000097          	auipc	ra,0x0
    800062f8:	8e0080e7          	jalr	-1824(ra) # 80005bd4 <_ZN12ConsumerSync8consumerEPv>
    }
    800062fc:	00813083          	ld	ra,8(sp)
    80006300:	00013403          	ld	s0,0(sp)
    80006304:	01010113          	addi	sp,sp,16
    80006308:	00008067          	ret

000000008000630c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000630c:	fe010113          	addi	sp,sp,-32
    80006310:	00113c23          	sd	ra,24(sp)
    80006314:	00813823          	sd	s0,16(sp)
    80006318:	00913423          	sd	s1,8(sp)
    8000631c:	02010413          	addi	s0,sp,32
    80006320:	00050493          	mv	s1,a0
    LOCK();
    80006324:	00100613          	li	a2,1
    80006328:	00000593          	li	a1,0
    8000632c:	00007517          	auipc	a0,0x7
    80006330:	ba450513          	addi	a0,a0,-1116 # 8000ced0 <lockPrint>
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	f9c080e7          	jalr	-100(ra) # 800012d0 <copy_and_swap>
    8000633c:	00050863          	beqz	a0,8000634c <_Z11printStringPKc+0x40>
    80006340:	ffffb097          	auipc	ra,0xffffb
    80006344:	334080e7          	jalr	820(ra) # 80001674 <thread_dispatch>
    80006348:	fddff06f          	j	80006324 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000634c:	0004c503          	lbu	a0,0(s1)
    80006350:	00050a63          	beqz	a0,80006364 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006354:	ffffb097          	auipc	ra,0xffffb
    80006358:	474080e7          	jalr	1140(ra) # 800017c8 <putc>
        string++;
    8000635c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006360:	fedff06f          	j	8000634c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006364:	00000613          	li	a2,0
    80006368:	00100593          	li	a1,1
    8000636c:	00007517          	auipc	a0,0x7
    80006370:	b6450513          	addi	a0,a0,-1180 # 8000ced0 <lockPrint>
    80006374:	ffffb097          	auipc	ra,0xffffb
    80006378:	f5c080e7          	jalr	-164(ra) # 800012d0 <copy_and_swap>
    8000637c:	fe0514e3          	bnez	a0,80006364 <_Z11printStringPKc+0x58>
}
    80006380:	01813083          	ld	ra,24(sp)
    80006384:	01013403          	ld	s0,16(sp)
    80006388:	00813483          	ld	s1,8(sp)
    8000638c:	02010113          	addi	sp,sp,32
    80006390:	00008067          	ret

0000000080006394 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006394:	fd010113          	addi	sp,sp,-48
    80006398:	02113423          	sd	ra,40(sp)
    8000639c:	02813023          	sd	s0,32(sp)
    800063a0:	00913c23          	sd	s1,24(sp)
    800063a4:	01213823          	sd	s2,16(sp)
    800063a8:	01313423          	sd	s3,8(sp)
    800063ac:	01413023          	sd	s4,0(sp)
    800063b0:	03010413          	addi	s0,sp,48
    800063b4:	00050993          	mv	s3,a0
    800063b8:	00058a13          	mv	s4,a1
    LOCK();
    800063bc:	00100613          	li	a2,1
    800063c0:	00000593          	li	a1,0
    800063c4:	00007517          	auipc	a0,0x7
    800063c8:	b0c50513          	addi	a0,a0,-1268 # 8000ced0 <lockPrint>
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	f04080e7          	jalr	-252(ra) # 800012d0 <copy_and_swap>
    800063d4:	00050863          	beqz	a0,800063e4 <_Z9getStringPci+0x50>
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	29c080e7          	jalr	668(ra) # 80001674 <thread_dispatch>
    800063e0:	fddff06f          	j	800063bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800063e4:	00000913          	li	s2,0
    800063e8:	00090493          	mv	s1,s2
    800063ec:	0019091b          	addiw	s2,s2,1
    800063f0:	03495a63          	bge	s2,s4,80006424 <_Z9getStringPci+0x90>
        cc = getc();
    800063f4:	ffffb097          	auipc	ra,0xffffb
    800063f8:	3b0080e7          	jalr	944(ra) # 800017a4 <getc>
        if(cc < 1)
    800063fc:	02050463          	beqz	a0,80006424 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006400:	009984b3          	add	s1,s3,s1
    80006404:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006408:	00a00793          	li	a5,10
    8000640c:	00f50a63          	beq	a0,a5,80006420 <_Z9getStringPci+0x8c>
    80006410:	00d00793          	li	a5,13
    80006414:	fcf51ae3          	bne	a0,a5,800063e8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006418:	00090493          	mv	s1,s2
    8000641c:	0080006f          	j	80006424 <_Z9getStringPci+0x90>
    80006420:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006424:	009984b3          	add	s1,s3,s1
    80006428:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000642c:	00000613          	li	a2,0
    80006430:	00100593          	li	a1,1
    80006434:	00007517          	auipc	a0,0x7
    80006438:	a9c50513          	addi	a0,a0,-1380 # 8000ced0 <lockPrint>
    8000643c:	ffffb097          	auipc	ra,0xffffb
    80006440:	e94080e7          	jalr	-364(ra) # 800012d0 <copy_and_swap>
    80006444:	fe0514e3          	bnez	a0,8000642c <_Z9getStringPci+0x98>
    return buf;
}
    80006448:	00098513          	mv	a0,s3
    8000644c:	02813083          	ld	ra,40(sp)
    80006450:	02013403          	ld	s0,32(sp)
    80006454:	01813483          	ld	s1,24(sp)
    80006458:	01013903          	ld	s2,16(sp)
    8000645c:	00813983          	ld	s3,8(sp)
    80006460:	00013a03          	ld	s4,0(sp)
    80006464:	03010113          	addi	sp,sp,48
    80006468:	00008067          	ret

000000008000646c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000646c:	ff010113          	addi	sp,sp,-16
    80006470:	00813423          	sd	s0,8(sp)
    80006474:	01010413          	addi	s0,sp,16
    80006478:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000647c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006480:	0006c603          	lbu	a2,0(a3)
    80006484:	fd06071b          	addiw	a4,a2,-48
    80006488:	0ff77713          	andi	a4,a4,255
    8000648c:	00900793          	li	a5,9
    80006490:	02e7e063          	bltu	a5,a4,800064b0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006494:	0025179b          	slliw	a5,a0,0x2
    80006498:	00a787bb          	addw	a5,a5,a0
    8000649c:	0017979b          	slliw	a5,a5,0x1
    800064a0:	00168693          	addi	a3,a3,1
    800064a4:	00c787bb          	addw	a5,a5,a2
    800064a8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800064ac:	fd5ff06f          	j	80006480 <_Z11stringToIntPKc+0x14>
    return n;
}
    800064b0:	00813403          	ld	s0,8(sp)
    800064b4:	01010113          	addi	sp,sp,16
    800064b8:	00008067          	ret

00000000800064bc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800064bc:	fc010113          	addi	sp,sp,-64
    800064c0:	02113c23          	sd	ra,56(sp)
    800064c4:	02813823          	sd	s0,48(sp)
    800064c8:	02913423          	sd	s1,40(sp)
    800064cc:	03213023          	sd	s2,32(sp)
    800064d0:	01313c23          	sd	s3,24(sp)
    800064d4:	04010413          	addi	s0,sp,64
    800064d8:	00050493          	mv	s1,a0
    800064dc:	00058913          	mv	s2,a1
    800064e0:	00060993          	mv	s3,a2
    LOCK();
    800064e4:	00100613          	li	a2,1
    800064e8:	00000593          	li	a1,0
    800064ec:	00007517          	auipc	a0,0x7
    800064f0:	9e450513          	addi	a0,a0,-1564 # 8000ced0 <lockPrint>
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	ddc080e7          	jalr	-548(ra) # 800012d0 <copy_and_swap>
    800064fc:	00050863          	beqz	a0,8000650c <_Z8printIntiii+0x50>
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	174080e7          	jalr	372(ra) # 80001674 <thread_dispatch>
    80006508:	fddff06f          	j	800064e4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000650c:	00098463          	beqz	s3,80006514 <_Z8printIntiii+0x58>
    80006510:	0804c463          	bltz	s1,80006598 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006514:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006518:	00000593          	li	a1,0
    }

    i = 0;
    8000651c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006520:	0009079b          	sext.w	a5,s2
    80006524:	0325773b          	remuw	a4,a0,s2
    80006528:	00048613          	mv	a2,s1
    8000652c:	0014849b          	addiw	s1,s1,1
    80006530:	02071693          	slli	a3,a4,0x20
    80006534:	0206d693          	srli	a3,a3,0x20
    80006538:	00006717          	auipc	a4,0x6
    8000653c:	5f070713          	addi	a4,a4,1520 # 8000cb28 <digits>
    80006540:	00d70733          	add	a4,a4,a3
    80006544:	00074683          	lbu	a3,0(a4)
    80006548:	fd040713          	addi	a4,s0,-48
    8000654c:	00c70733          	add	a4,a4,a2
    80006550:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006554:	0005071b          	sext.w	a4,a0
    80006558:	0325553b          	divuw	a0,a0,s2
    8000655c:	fcf772e3          	bgeu	a4,a5,80006520 <_Z8printIntiii+0x64>
    if(neg)
    80006560:	00058c63          	beqz	a1,80006578 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006564:	fd040793          	addi	a5,s0,-48
    80006568:	009784b3          	add	s1,a5,s1
    8000656c:	02d00793          	li	a5,45
    80006570:	fef48823          	sb	a5,-16(s1)
    80006574:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006578:	fff4849b          	addiw	s1,s1,-1
    8000657c:	0204c463          	bltz	s1,800065a4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006580:	fd040793          	addi	a5,s0,-48
    80006584:	009787b3          	add	a5,a5,s1
    80006588:	ff07c503          	lbu	a0,-16(a5)
    8000658c:	ffffb097          	auipc	ra,0xffffb
    80006590:	23c080e7          	jalr	572(ra) # 800017c8 <putc>
    80006594:	fe5ff06f          	j	80006578 <_Z8printIntiii+0xbc>
        x = -xx;
    80006598:	4090053b          	negw	a0,s1
        neg = 1;
    8000659c:	00100593          	li	a1,1
        x = -xx;
    800065a0:	f7dff06f          	j	8000651c <_Z8printIntiii+0x60>

    UNLOCK();
    800065a4:	00000613          	li	a2,0
    800065a8:	00100593          	li	a1,1
    800065ac:	00007517          	auipc	a0,0x7
    800065b0:	92450513          	addi	a0,a0,-1756 # 8000ced0 <lockPrint>
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	d1c080e7          	jalr	-740(ra) # 800012d0 <copy_and_swap>
    800065bc:	fe0514e3          	bnez	a0,800065a4 <_Z8printIntiii+0xe8>
    800065c0:	03813083          	ld	ra,56(sp)
    800065c4:	03013403          	ld	s0,48(sp)
    800065c8:	02813483          	ld	s1,40(sp)
    800065cc:	02013903          	ld	s2,32(sp)
    800065d0:	01813983          	ld	s3,24(sp)
    800065d4:	04010113          	addi	sp,sp,64
    800065d8:	00008067          	ret

00000000800065dc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800065dc:	fd010113          	addi	sp,sp,-48
    800065e0:	02113423          	sd	ra,40(sp)
    800065e4:	02813023          	sd	s0,32(sp)
    800065e8:	00913c23          	sd	s1,24(sp)
    800065ec:	01213823          	sd	s2,16(sp)
    800065f0:	01313423          	sd	s3,8(sp)
    800065f4:	03010413          	addi	s0,sp,48
    800065f8:	00050493          	mv	s1,a0
    800065fc:	00058913          	mv	s2,a1
    80006600:	0015879b          	addiw	a5,a1,1
    80006604:	0007851b          	sext.w	a0,a5
    80006608:	00f4a023          	sw	a5,0(s1)
    8000660c:	0004a823          	sw	zero,16(s1)
    80006610:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006614:	00251513          	slli	a0,a0,0x2
    80006618:	ffffb097          	auipc	ra,0xffffb
    8000661c:	f3c080e7          	jalr	-196(ra) # 80001554 <mem_alloc>
    80006620:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006624:	01000513          	li	a0,16
    80006628:	ffffd097          	auipc	ra,0xffffd
    8000662c:	d08080e7          	jalr	-760(ra) # 80003330 <_Znwm>
    80006630:	00050993          	mv	s3,a0
    80006634:	00000593          	li	a1,0
    80006638:	ffffd097          	auipc	ra,0xffffd
    8000663c:	eb4080e7          	jalr	-332(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    80006640:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006644:	01000513          	li	a0,16
    80006648:	ffffd097          	auipc	ra,0xffffd
    8000664c:	ce8080e7          	jalr	-792(ra) # 80003330 <_Znwm>
    80006650:	00050993          	mv	s3,a0
    80006654:	00090593          	mv	a1,s2
    80006658:	ffffd097          	auipc	ra,0xffffd
    8000665c:	e94080e7          	jalr	-364(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    80006660:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006664:	01000513          	li	a0,16
    80006668:	ffffd097          	auipc	ra,0xffffd
    8000666c:	cc8080e7          	jalr	-824(ra) # 80003330 <_Znwm>
    80006670:	00050913          	mv	s2,a0
    80006674:	00100593          	li	a1,1
    80006678:	ffffd097          	auipc	ra,0xffffd
    8000667c:	e74080e7          	jalr	-396(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    80006680:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006684:	01000513          	li	a0,16
    80006688:	ffffd097          	auipc	ra,0xffffd
    8000668c:	ca8080e7          	jalr	-856(ra) # 80003330 <_Znwm>
    80006690:	00050913          	mv	s2,a0
    80006694:	00100593          	li	a1,1
    80006698:	ffffd097          	auipc	ra,0xffffd
    8000669c:	e54080e7          	jalr	-428(ra) # 800034ec <_ZN9SemaphoreC1Ej>
    800066a0:	0324b823          	sd	s2,48(s1)
}
    800066a4:	02813083          	ld	ra,40(sp)
    800066a8:	02013403          	ld	s0,32(sp)
    800066ac:	01813483          	ld	s1,24(sp)
    800066b0:	01013903          	ld	s2,16(sp)
    800066b4:	00813983          	ld	s3,8(sp)
    800066b8:	03010113          	addi	sp,sp,48
    800066bc:	00008067          	ret
    800066c0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800066c4:	00098513          	mv	a0,s3
    800066c8:	ffffd097          	auipc	ra,0xffffd
    800066cc:	c90080e7          	jalr	-880(ra) # 80003358 <_ZdlPv>
    800066d0:	00048513          	mv	a0,s1
    800066d4:	00008097          	auipc	ra,0x8
    800066d8:	8d4080e7          	jalr	-1836(ra) # 8000dfa8 <_Unwind_Resume>
    800066dc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800066e0:	00098513          	mv	a0,s3
    800066e4:	ffffd097          	auipc	ra,0xffffd
    800066e8:	c74080e7          	jalr	-908(ra) # 80003358 <_ZdlPv>
    800066ec:	00048513          	mv	a0,s1
    800066f0:	00008097          	auipc	ra,0x8
    800066f4:	8b8080e7          	jalr	-1864(ra) # 8000dfa8 <_Unwind_Resume>
    800066f8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800066fc:	00090513          	mv	a0,s2
    80006700:	ffffd097          	auipc	ra,0xffffd
    80006704:	c58080e7          	jalr	-936(ra) # 80003358 <_ZdlPv>
    80006708:	00048513          	mv	a0,s1
    8000670c:	00008097          	auipc	ra,0x8
    80006710:	89c080e7          	jalr	-1892(ra) # 8000dfa8 <_Unwind_Resume>
    80006714:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006718:	00090513          	mv	a0,s2
    8000671c:	ffffd097          	auipc	ra,0xffffd
    80006720:	c3c080e7          	jalr	-964(ra) # 80003358 <_ZdlPv>
    80006724:	00048513          	mv	a0,s1
    80006728:	00008097          	auipc	ra,0x8
    8000672c:	880080e7          	jalr	-1920(ra) # 8000dfa8 <_Unwind_Resume>

0000000080006730 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006730:	fe010113          	addi	sp,sp,-32
    80006734:	00113c23          	sd	ra,24(sp)
    80006738:	00813823          	sd	s0,16(sp)
    8000673c:	00913423          	sd	s1,8(sp)
    80006740:	01213023          	sd	s2,0(sp)
    80006744:	02010413          	addi	s0,sp,32
    80006748:	00050493          	mv	s1,a0
    8000674c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006750:	01853503          	ld	a0,24(a0)
    80006754:	ffffd097          	auipc	ra,0xffffd
    80006758:	dd0080e7          	jalr	-560(ra) # 80003524 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000675c:	0304b503          	ld	a0,48(s1)
    80006760:	ffffd097          	auipc	ra,0xffffd
    80006764:	dc4080e7          	jalr	-572(ra) # 80003524 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006768:	0084b783          	ld	a5,8(s1)
    8000676c:	0144a703          	lw	a4,20(s1)
    80006770:	00271713          	slli	a4,a4,0x2
    80006774:	00e787b3          	add	a5,a5,a4
    80006778:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000677c:	0144a783          	lw	a5,20(s1)
    80006780:	0017879b          	addiw	a5,a5,1
    80006784:	0004a703          	lw	a4,0(s1)
    80006788:	02e7e7bb          	remw	a5,a5,a4
    8000678c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006790:	0304b503          	ld	a0,48(s1)
    80006794:	ffffd097          	auipc	ra,0xffffd
    80006798:	dbc080e7          	jalr	-580(ra) # 80003550 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000679c:	0204b503          	ld	a0,32(s1)
    800067a0:	ffffd097          	auipc	ra,0xffffd
    800067a4:	db0080e7          	jalr	-592(ra) # 80003550 <_ZN9Semaphore6signalEv>

}
    800067a8:	01813083          	ld	ra,24(sp)
    800067ac:	01013403          	ld	s0,16(sp)
    800067b0:	00813483          	ld	s1,8(sp)
    800067b4:	00013903          	ld	s2,0(sp)
    800067b8:	02010113          	addi	sp,sp,32
    800067bc:	00008067          	ret

00000000800067c0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800067c0:	fe010113          	addi	sp,sp,-32
    800067c4:	00113c23          	sd	ra,24(sp)
    800067c8:	00813823          	sd	s0,16(sp)
    800067cc:	00913423          	sd	s1,8(sp)
    800067d0:	01213023          	sd	s2,0(sp)
    800067d4:	02010413          	addi	s0,sp,32
    800067d8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800067dc:	02053503          	ld	a0,32(a0)
    800067e0:	ffffd097          	auipc	ra,0xffffd
    800067e4:	d44080e7          	jalr	-700(ra) # 80003524 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800067e8:	0284b503          	ld	a0,40(s1)
    800067ec:	ffffd097          	auipc	ra,0xffffd
    800067f0:	d38080e7          	jalr	-712(ra) # 80003524 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800067f4:	0084b703          	ld	a4,8(s1)
    800067f8:	0104a783          	lw	a5,16(s1)
    800067fc:	00279693          	slli	a3,a5,0x2
    80006800:	00d70733          	add	a4,a4,a3
    80006804:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006808:	0017879b          	addiw	a5,a5,1
    8000680c:	0004a703          	lw	a4,0(s1)
    80006810:	02e7e7bb          	remw	a5,a5,a4
    80006814:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006818:	0284b503          	ld	a0,40(s1)
    8000681c:	ffffd097          	auipc	ra,0xffffd
    80006820:	d34080e7          	jalr	-716(ra) # 80003550 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006824:	0184b503          	ld	a0,24(s1)
    80006828:	ffffd097          	auipc	ra,0xffffd
    8000682c:	d28080e7          	jalr	-728(ra) # 80003550 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006830:	00090513          	mv	a0,s2
    80006834:	01813083          	ld	ra,24(sp)
    80006838:	01013403          	ld	s0,16(sp)
    8000683c:	00813483          	ld	s1,8(sp)
    80006840:	00013903          	ld	s2,0(sp)
    80006844:	02010113          	addi	sp,sp,32
    80006848:	00008067          	ret

000000008000684c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000684c:	fe010113          	addi	sp,sp,-32
    80006850:	00113c23          	sd	ra,24(sp)
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00913423          	sd	s1,8(sp)
    8000685c:	01213023          	sd	s2,0(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006868:	02853503          	ld	a0,40(a0)
    8000686c:	ffffd097          	auipc	ra,0xffffd
    80006870:	cb8080e7          	jalr	-840(ra) # 80003524 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006874:	0304b503          	ld	a0,48(s1)
    80006878:	ffffd097          	auipc	ra,0xffffd
    8000687c:	cac080e7          	jalr	-852(ra) # 80003524 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006880:	0144a783          	lw	a5,20(s1)
    80006884:	0104a903          	lw	s2,16(s1)
    80006888:	0327ce63          	blt	a5,s2,800068c4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000688c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006890:	0304b503          	ld	a0,48(s1)
    80006894:	ffffd097          	auipc	ra,0xffffd
    80006898:	cbc080e7          	jalr	-836(ra) # 80003550 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000689c:	0284b503          	ld	a0,40(s1)
    800068a0:	ffffd097          	auipc	ra,0xffffd
    800068a4:	cb0080e7          	jalr	-848(ra) # 80003550 <_ZN9Semaphore6signalEv>

    return ret;
}
    800068a8:	00090513          	mv	a0,s2
    800068ac:	01813083          	ld	ra,24(sp)
    800068b0:	01013403          	ld	s0,16(sp)
    800068b4:	00813483          	ld	s1,8(sp)
    800068b8:	00013903          	ld	s2,0(sp)
    800068bc:	02010113          	addi	sp,sp,32
    800068c0:	00008067          	ret
        ret = cap - head + tail;
    800068c4:	0004a703          	lw	a4,0(s1)
    800068c8:	4127093b          	subw	s2,a4,s2
    800068cc:	00f9093b          	addw	s2,s2,a5
    800068d0:	fc1ff06f          	j	80006890 <_ZN9BufferCPP6getCntEv+0x44>

00000000800068d4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800068d4:	fe010113          	addi	sp,sp,-32
    800068d8:	00113c23          	sd	ra,24(sp)
    800068dc:	00813823          	sd	s0,16(sp)
    800068e0:	00913423          	sd	s1,8(sp)
    800068e4:	02010413          	addi	s0,sp,32
    800068e8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800068ec:	00a00513          	li	a0,10
    800068f0:	ffffd097          	auipc	ra,0xffffd
    800068f4:	d4c080e7          	jalr	-692(ra) # 8000363c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800068f8:	00004517          	auipc	a0,0x4
    800068fc:	d0050513          	addi	a0,a0,-768 # 8000a5f8 <CONSOLE_STATUS+0x5e8>
    80006900:	00000097          	auipc	ra,0x0
    80006904:	a0c080e7          	jalr	-1524(ra) # 8000630c <_Z11printStringPKc>
    while (getCnt()) {
    80006908:	00048513          	mv	a0,s1
    8000690c:	00000097          	auipc	ra,0x0
    80006910:	f40080e7          	jalr	-192(ra) # 8000684c <_ZN9BufferCPP6getCntEv>
    80006914:	02050c63          	beqz	a0,8000694c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006918:	0084b783          	ld	a5,8(s1)
    8000691c:	0104a703          	lw	a4,16(s1)
    80006920:	00271713          	slli	a4,a4,0x2
    80006924:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006928:	0007c503          	lbu	a0,0(a5)
    8000692c:	ffffd097          	auipc	ra,0xffffd
    80006930:	d10080e7          	jalr	-752(ra) # 8000363c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006934:	0104a783          	lw	a5,16(s1)
    80006938:	0017879b          	addiw	a5,a5,1
    8000693c:	0004a703          	lw	a4,0(s1)
    80006940:	02e7e7bb          	remw	a5,a5,a4
    80006944:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006948:	fc1ff06f          	j	80006908 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000694c:	02100513          	li	a0,33
    80006950:	ffffd097          	auipc	ra,0xffffd
    80006954:	cec080e7          	jalr	-788(ra) # 8000363c <_ZN7Console4putcEc>
    Console::putc('\n');
    80006958:	00a00513          	li	a0,10
    8000695c:	ffffd097          	auipc	ra,0xffffd
    80006960:	ce0080e7          	jalr	-800(ra) # 8000363c <_ZN7Console4putcEc>
    mem_free(buffer);
    80006964:	0084b503          	ld	a0,8(s1)
    80006968:	ffffb097          	auipc	ra,0xffffb
    8000696c:	c18080e7          	jalr	-1000(ra) # 80001580 <mem_free>
    delete itemAvailable;
    80006970:	0204b503          	ld	a0,32(s1)
    80006974:	00050863          	beqz	a0,80006984 <_ZN9BufferCPPD1Ev+0xb0>
    80006978:	00053783          	ld	a5,0(a0)
    8000697c:	0087b783          	ld	a5,8(a5)
    80006980:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006984:	0184b503          	ld	a0,24(s1)
    80006988:	00050863          	beqz	a0,80006998 <_ZN9BufferCPPD1Ev+0xc4>
    8000698c:	00053783          	ld	a5,0(a0)
    80006990:	0087b783          	ld	a5,8(a5)
    80006994:	000780e7          	jalr	a5
    delete mutexTail;
    80006998:	0304b503          	ld	a0,48(s1)
    8000699c:	00050863          	beqz	a0,800069ac <_ZN9BufferCPPD1Ev+0xd8>
    800069a0:	00053783          	ld	a5,0(a0)
    800069a4:	0087b783          	ld	a5,8(a5)
    800069a8:	000780e7          	jalr	a5
    delete mutexHead;
    800069ac:	0284b503          	ld	a0,40(s1)
    800069b0:	00050863          	beqz	a0,800069c0 <_ZN9BufferCPPD1Ev+0xec>
    800069b4:	00053783          	ld	a5,0(a0)
    800069b8:	0087b783          	ld	a5,8(a5)
    800069bc:	000780e7          	jalr	a5
}
    800069c0:	01813083          	ld	ra,24(sp)
    800069c4:	01013403          	ld	s0,16(sp)
    800069c8:	00813483          	ld	s1,8(sp)
    800069cc:	02010113          	addi	sp,sp,32
    800069d0:	00008067          	ret

00000000800069d4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00913423          	sd	s1,8(sp)
    800069e4:	01213023          	sd	s2,0(sp)
    800069e8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800069ec:	00053903          	ld	s2,0(a0)
    int i = 6;
    800069f0:	00600493          	li	s1,6
    while (--i > 0) {
    800069f4:	fff4849b          	addiw	s1,s1,-1
    800069f8:	04905463          	blez	s1,80006a40 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800069fc:	00004517          	auipc	a0,0x4
    80006a00:	c1450513          	addi	a0,a0,-1004 # 8000a610 <CONSOLE_STATUS+0x600>
    80006a04:	00000097          	auipc	ra,0x0
    80006a08:	908080e7          	jalr	-1784(ra) # 8000630c <_Z11printStringPKc>
        printInt(sleep_time);
    80006a0c:	00000613          	li	a2,0
    80006a10:	00a00593          	li	a1,10
    80006a14:	0009051b          	sext.w	a0,s2
    80006a18:	00000097          	auipc	ra,0x0
    80006a1c:	aa4080e7          	jalr	-1372(ra) # 800064bc <_Z8printIntiii>
        printString(" !\n");
    80006a20:	00004517          	auipc	a0,0x4
    80006a24:	bf850513          	addi	a0,a0,-1032 # 8000a618 <CONSOLE_STATUS+0x608>
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	8e4080e7          	jalr	-1820(ra) # 8000630c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006a30:	00090513          	mv	a0,s2
    80006a34:	ffffb097          	auipc	ra,0xffffb
    80006a38:	c60080e7          	jalr	-928(ra) # 80001694 <time_sleep>
    while (--i > 0) {
    80006a3c:	fb9ff06f          	j	800069f4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006a40:	00a00793          	li	a5,10
    80006a44:	02f95933          	divu	s2,s2,a5
    80006a48:	fff90913          	addi	s2,s2,-1
    80006a4c:	00006797          	auipc	a5,0x6
    80006a50:	48c78793          	addi	a5,a5,1164 # 8000ced8 <_ZL8finished>
    80006a54:	01278933          	add	s2,a5,s2
    80006a58:	00100793          	li	a5,1
    80006a5c:	00f90023          	sb	a5,0(s2)
}
    80006a60:	01813083          	ld	ra,24(sp)
    80006a64:	01013403          	ld	s0,16(sp)
    80006a68:	00813483          	ld	s1,8(sp)
    80006a6c:	00013903          	ld	s2,0(sp)
    80006a70:	02010113          	addi	sp,sp,32
    80006a74:	00008067          	ret

0000000080006a78 <_Z12testSleepingv>:

void testSleeping() {
    80006a78:	fc010113          	addi	sp,sp,-64
    80006a7c:	02113c23          	sd	ra,56(sp)
    80006a80:	02813823          	sd	s0,48(sp)
    80006a84:	02913423          	sd	s1,40(sp)
    80006a88:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006a8c:	00a00793          	li	a5,10
    80006a90:	fcf43823          	sd	a5,-48(s0)
    80006a94:	01400793          	li	a5,20
    80006a98:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006a9c:	00000493          	li	s1,0
    80006aa0:	02c0006f          	j	80006acc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006aa4:	00349793          	slli	a5,s1,0x3
    80006aa8:	fd040613          	addi	a2,s0,-48
    80006aac:	00f60633          	add	a2,a2,a5
    80006ab0:	00000597          	auipc	a1,0x0
    80006ab4:	f2458593          	addi	a1,a1,-220 # 800069d4 <_ZL9sleepyRunPv>
    80006ab8:	fc040513          	addi	a0,s0,-64
    80006abc:	00f50533          	add	a0,a0,a5
    80006ac0:	ffffb097          	auipc	ra,0xffffb
    80006ac4:	aec080e7          	jalr	-1300(ra) # 800015ac <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006ac8:	0014849b          	addiw	s1,s1,1
    80006acc:	00100793          	li	a5,1
    80006ad0:	fc97dae3          	bge	a5,s1,80006aa4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006ad4:	00006797          	auipc	a5,0x6
    80006ad8:	4047c783          	lbu	a5,1028(a5) # 8000ced8 <_ZL8finished>
    80006adc:	fe078ce3          	beqz	a5,80006ad4 <_Z12testSleepingv+0x5c>
    80006ae0:	00006797          	auipc	a5,0x6
    80006ae4:	3f97c783          	lbu	a5,1017(a5) # 8000ced9 <_ZL8finished+0x1>
    80006ae8:	fe0786e3          	beqz	a5,80006ad4 <_Z12testSleepingv+0x5c>
}
    80006aec:	03813083          	ld	ra,56(sp)
    80006af0:	03013403          	ld	s0,48(sp)
    80006af4:	02813483          	ld	s1,40(sp)
    80006af8:	04010113          	addi	sp,sp,64
    80006afc:	00008067          	ret

0000000080006b00 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006b00:	fe010113          	addi	sp,sp,-32
    80006b04:	00113c23          	sd	ra,24(sp)
    80006b08:	00813823          	sd	s0,16(sp)
    80006b0c:	00913423          	sd	s1,8(sp)
    80006b10:	01213023          	sd	s2,0(sp)
    80006b14:	02010413          	addi	s0,sp,32
    80006b18:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006b1c:	00100793          	li	a5,1
    80006b20:	02a7f863          	bgeu	a5,a0,80006b50 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006b24:	00a00793          	li	a5,10
    80006b28:	02f577b3          	remu	a5,a0,a5
    80006b2c:	02078e63          	beqz	a5,80006b68 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006b30:	fff48513          	addi	a0,s1,-1
    80006b34:	00000097          	auipc	ra,0x0
    80006b38:	fcc080e7          	jalr	-52(ra) # 80006b00 <_ZL9fibonaccim>
    80006b3c:	00050913          	mv	s2,a0
    80006b40:	ffe48513          	addi	a0,s1,-2
    80006b44:	00000097          	auipc	ra,0x0
    80006b48:	fbc080e7          	jalr	-68(ra) # 80006b00 <_ZL9fibonaccim>
    80006b4c:	00a90533          	add	a0,s2,a0
}
    80006b50:	01813083          	ld	ra,24(sp)
    80006b54:	01013403          	ld	s0,16(sp)
    80006b58:	00813483          	ld	s1,8(sp)
    80006b5c:	00013903          	ld	s2,0(sp)
    80006b60:	02010113          	addi	sp,sp,32
    80006b64:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006b68:	ffffb097          	auipc	ra,0xffffb
    80006b6c:	b0c080e7          	jalr	-1268(ra) # 80001674 <thread_dispatch>
    80006b70:	fc1ff06f          	j	80006b30 <_ZL9fibonaccim+0x30>

0000000080006b74 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006b74:	fe010113          	addi	sp,sp,-32
    80006b78:	00113c23          	sd	ra,24(sp)
    80006b7c:	00813823          	sd	s0,16(sp)
    80006b80:	00913423          	sd	s1,8(sp)
    80006b84:	01213023          	sd	s2,0(sp)
    80006b88:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006b8c:	00a00493          	li	s1,10
    80006b90:	0400006f          	j	80006bd0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006b94:	00003517          	auipc	a0,0x3
    80006b98:	71c50513          	addi	a0,a0,1820 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006b9c:	fffff097          	auipc	ra,0xfffff
    80006ba0:	770080e7          	jalr	1904(ra) # 8000630c <_Z11printStringPKc>
    80006ba4:	00000613          	li	a2,0
    80006ba8:	00a00593          	li	a1,10
    80006bac:	00048513          	mv	a0,s1
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	90c080e7          	jalr	-1780(ra) # 800064bc <_Z8printIntiii>
    80006bb8:	00004517          	auipc	a0,0x4
    80006bbc:	90850513          	addi	a0,a0,-1784 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006bc0:	fffff097          	auipc	ra,0xfffff
    80006bc4:	74c080e7          	jalr	1868(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006bc8:	0014849b          	addiw	s1,s1,1
    80006bcc:	0ff4f493          	andi	s1,s1,255
    80006bd0:	00c00793          	li	a5,12
    80006bd4:	fc97f0e3          	bgeu	a5,s1,80006b94 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006bd8:	00003517          	auipc	a0,0x3
    80006bdc:	6e050513          	addi	a0,a0,1760 # 8000a2b8 <CONSOLE_STATUS+0x2a8>
    80006be0:	fffff097          	auipc	ra,0xfffff
    80006be4:	72c080e7          	jalr	1836(ra) # 8000630c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006be8:	00500313          	li	t1,5
    thread_dispatch();
    80006bec:	ffffb097          	auipc	ra,0xffffb
    80006bf0:	a88080e7          	jalr	-1400(ra) # 80001674 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006bf4:	01000513          	li	a0,16
    80006bf8:	00000097          	auipc	ra,0x0
    80006bfc:	f08080e7          	jalr	-248(ra) # 80006b00 <_ZL9fibonaccim>
    80006c00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	6c450513          	addi	a0,a0,1732 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80006c0c:	fffff097          	auipc	ra,0xfffff
    80006c10:	700080e7          	jalr	1792(ra) # 8000630c <_Z11printStringPKc>
    80006c14:	00000613          	li	a2,0
    80006c18:	00a00593          	li	a1,10
    80006c1c:	0009051b          	sext.w	a0,s2
    80006c20:	00000097          	auipc	ra,0x0
    80006c24:	89c080e7          	jalr	-1892(ra) # 800064bc <_Z8printIntiii>
    80006c28:	00004517          	auipc	a0,0x4
    80006c2c:	89850513          	addi	a0,a0,-1896 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006c30:	fffff097          	auipc	ra,0xfffff
    80006c34:	6dc080e7          	jalr	1756(ra) # 8000630c <_Z11printStringPKc>
    80006c38:	0400006f          	j	80006c78 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006c3c:	00003517          	auipc	a0,0x3
    80006c40:	67450513          	addi	a0,a0,1652 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80006c44:	fffff097          	auipc	ra,0xfffff
    80006c48:	6c8080e7          	jalr	1736(ra) # 8000630c <_Z11printStringPKc>
    80006c4c:	00000613          	li	a2,0
    80006c50:	00a00593          	li	a1,10
    80006c54:	00048513          	mv	a0,s1
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	864080e7          	jalr	-1948(ra) # 800064bc <_Z8printIntiii>
    80006c60:	00004517          	auipc	a0,0x4
    80006c64:	86050513          	addi	a0,a0,-1952 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006c68:	fffff097          	auipc	ra,0xfffff
    80006c6c:	6a4080e7          	jalr	1700(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006c70:	0014849b          	addiw	s1,s1,1
    80006c74:	0ff4f493          	andi	s1,s1,255
    80006c78:	00f00793          	li	a5,15
    80006c7c:	fc97f0e3          	bgeu	a5,s1,80006c3c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006c80:	00003517          	auipc	a0,0x3
    80006c84:	65850513          	addi	a0,a0,1624 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80006c88:	fffff097          	auipc	ra,0xfffff
    80006c8c:	684080e7          	jalr	1668(ra) # 8000630c <_Z11printStringPKc>
    finishedD = true;
    80006c90:	00100793          	li	a5,1
    80006c94:	00006717          	auipc	a4,0x6
    80006c98:	24f70323          	sb	a5,582(a4) # 8000ceda <_ZL9finishedD>
    thread_dispatch();
    80006c9c:	ffffb097          	auipc	ra,0xffffb
    80006ca0:	9d8080e7          	jalr	-1576(ra) # 80001674 <thread_dispatch>
}
    80006ca4:	01813083          	ld	ra,24(sp)
    80006ca8:	01013403          	ld	s0,16(sp)
    80006cac:	00813483          	ld	s1,8(sp)
    80006cb0:	00013903          	ld	s2,0(sp)
    80006cb4:	02010113          	addi	sp,sp,32
    80006cb8:	00008067          	ret

0000000080006cbc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006cbc:	fe010113          	addi	sp,sp,-32
    80006cc0:	00113c23          	sd	ra,24(sp)
    80006cc4:	00813823          	sd	s0,16(sp)
    80006cc8:	00913423          	sd	s1,8(sp)
    80006ccc:	01213023          	sd	s2,0(sp)
    80006cd0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006cd4:	00000493          	li	s1,0
    80006cd8:	0400006f          	j	80006d18 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006cdc:	00003517          	auipc	a0,0x3
    80006ce0:	5a450513          	addi	a0,a0,1444 # 8000a280 <CONSOLE_STATUS+0x270>
    80006ce4:	fffff097          	auipc	ra,0xfffff
    80006ce8:	628080e7          	jalr	1576(ra) # 8000630c <_Z11printStringPKc>
    80006cec:	00000613          	li	a2,0
    80006cf0:	00a00593          	li	a1,10
    80006cf4:	00048513          	mv	a0,s1
    80006cf8:	fffff097          	auipc	ra,0xfffff
    80006cfc:	7c4080e7          	jalr	1988(ra) # 800064bc <_Z8printIntiii>
    80006d00:	00003517          	auipc	a0,0x3
    80006d04:	7c050513          	addi	a0,a0,1984 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006d08:	fffff097          	auipc	ra,0xfffff
    80006d0c:	604080e7          	jalr	1540(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006d10:	0014849b          	addiw	s1,s1,1
    80006d14:	0ff4f493          	andi	s1,s1,255
    80006d18:	00200793          	li	a5,2
    80006d1c:	fc97f0e3          	bgeu	a5,s1,80006cdc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006d20:	00003517          	auipc	a0,0x3
    80006d24:	56850513          	addi	a0,a0,1384 # 8000a288 <CONSOLE_STATUS+0x278>
    80006d28:	fffff097          	auipc	ra,0xfffff
    80006d2c:	5e4080e7          	jalr	1508(ra) # 8000630c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006d30:	00700313          	li	t1,7
    thread_dispatch();
    80006d34:	ffffb097          	auipc	ra,0xffffb
    80006d38:	940080e7          	jalr	-1728(ra) # 80001674 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006d3c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006d40:	00003517          	auipc	a0,0x3
    80006d44:	55850513          	addi	a0,a0,1368 # 8000a298 <CONSOLE_STATUS+0x288>
    80006d48:	fffff097          	auipc	ra,0xfffff
    80006d4c:	5c4080e7          	jalr	1476(ra) # 8000630c <_Z11printStringPKc>
    80006d50:	00000613          	li	a2,0
    80006d54:	00a00593          	li	a1,10
    80006d58:	0009051b          	sext.w	a0,s2
    80006d5c:	fffff097          	auipc	ra,0xfffff
    80006d60:	760080e7          	jalr	1888(ra) # 800064bc <_Z8printIntiii>
    80006d64:	00003517          	auipc	a0,0x3
    80006d68:	75c50513          	addi	a0,a0,1884 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006d6c:	fffff097          	auipc	ra,0xfffff
    80006d70:	5a0080e7          	jalr	1440(ra) # 8000630c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006d74:	00c00513          	li	a0,12
    80006d78:	00000097          	auipc	ra,0x0
    80006d7c:	d88080e7          	jalr	-632(ra) # 80006b00 <_ZL9fibonaccim>
    80006d80:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006d84:	00003517          	auipc	a0,0x3
    80006d88:	51c50513          	addi	a0,a0,1308 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006d8c:	fffff097          	auipc	ra,0xfffff
    80006d90:	580080e7          	jalr	1408(ra) # 8000630c <_Z11printStringPKc>
    80006d94:	00000613          	li	a2,0
    80006d98:	00a00593          	li	a1,10
    80006d9c:	0009051b          	sext.w	a0,s2
    80006da0:	fffff097          	auipc	ra,0xfffff
    80006da4:	71c080e7          	jalr	1820(ra) # 800064bc <_Z8printIntiii>
    80006da8:	00003517          	auipc	a0,0x3
    80006dac:	71850513          	addi	a0,a0,1816 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006db0:	fffff097          	auipc	ra,0xfffff
    80006db4:	55c080e7          	jalr	1372(ra) # 8000630c <_Z11printStringPKc>
    80006db8:	0400006f          	j	80006df8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006dbc:	00003517          	auipc	a0,0x3
    80006dc0:	4c450513          	addi	a0,a0,1220 # 8000a280 <CONSOLE_STATUS+0x270>
    80006dc4:	fffff097          	auipc	ra,0xfffff
    80006dc8:	548080e7          	jalr	1352(ra) # 8000630c <_Z11printStringPKc>
    80006dcc:	00000613          	li	a2,0
    80006dd0:	00a00593          	li	a1,10
    80006dd4:	00048513          	mv	a0,s1
    80006dd8:	fffff097          	auipc	ra,0xfffff
    80006ddc:	6e4080e7          	jalr	1764(ra) # 800064bc <_Z8printIntiii>
    80006de0:	00003517          	auipc	a0,0x3
    80006de4:	6e050513          	addi	a0,a0,1760 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006de8:	fffff097          	auipc	ra,0xfffff
    80006dec:	524080e7          	jalr	1316(ra) # 8000630c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006df0:	0014849b          	addiw	s1,s1,1
    80006df4:	0ff4f493          	andi	s1,s1,255
    80006df8:	00500793          	li	a5,5
    80006dfc:	fc97f0e3          	bgeu	a5,s1,80006dbc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006e00:	00003517          	auipc	a0,0x3
    80006e04:	45850513          	addi	a0,a0,1112 # 8000a258 <CONSOLE_STATUS+0x248>
    80006e08:	fffff097          	auipc	ra,0xfffff
    80006e0c:	504080e7          	jalr	1284(ra) # 8000630c <_Z11printStringPKc>
    finishedC = true;
    80006e10:	00100793          	li	a5,1
    80006e14:	00006717          	auipc	a4,0x6
    80006e18:	0cf703a3          	sb	a5,199(a4) # 8000cedb <_ZL9finishedC>
    thread_dispatch();
    80006e1c:	ffffb097          	auipc	ra,0xffffb
    80006e20:	858080e7          	jalr	-1960(ra) # 80001674 <thread_dispatch>
}
    80006e24:	01813083          	ld	ra,24(sp)
    80006e28:	01013403          	ld	s0,16(sp)
    80006e2c:	00813483          	ld	s1,8(sp)
    80006e30:	00013903          	ld	s2,0(sp)
    80006e34:	02010113          	addi	sp,sp,32
    80006e38:	00008067          	ret

0000000080006e3c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006e3c:	fe010113          	addi	sp,sp,-32
    80006e40:	00113c23          	sd	ra,24(sp)
    80006e44:	00813823          	sd	s0,16(sp)
    80006e48:	00913423          	sd	s1,8(sp)
    80006e4c:	01213023          	sd	s2,0(sp)
    80006e50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006e54:	00000913          	li	s2,0
    80006e58:	0400006f          	j	80006e98 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006e5c:	ffffb097          	auipc	ra,0xffffb
    80006e60:	818080e7          	jalr	-2024(ra) # 80001674 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006e64:	00148493          	addi	s1,s1,1
    80006e68:	000027b7          	lui	a5,0x2
    80006e6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006e70:	0097ee63          	bltu	a5,s1,80006e8c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006e74:	00000713          	li	a4,0
    80006e78:	000077b7          	lui	a5,0x7
    80006e7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006e80:	fce7eee3          	bltu	a5,a4,80006e5c <_ZL11workerBodyBPv+0x20>
    80006e84:	00170713          	addi	a4,a4,1
    80006e88:	ff1ff06f          	j	80006e78 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006e8c:	00a00793          	li	a5,10
    80006e90:	04f90663          	beq	s2,a5,80006edc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006e94:	00190913          	addi	s2,s2,1
    80006e98:	00f00793          	li	a5,15
    80006e9c:	0527e463          	bltu	a5,s2,80006ee4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006ea0:	00003517          	auipc	a0,0x3
    80006ea4:	3c850513          	addi	a0,a0,968 # 8000a268 <CONSOLE_STATUS+0x258>
    80006ea8:	fffff097          	auipc	ra,0xfffff
    80006eac:	464080e7          	jalr	1124(ra) # 8000630c <_Z11printStringPKc>
    80006eb0:	00000613          	li	a2,0
    80006eb4:	00a00593          	li	a1,10
    80006eb8:	0009051b          	sext.w	a0,s2
    80006ebc:	fffff097          	auipc	ra,0xfffff
    80006ec0:	600080e7          	jalr	1536(ra) # 800064bc <_Z8printIntiii>
    80006ec4:	00003517          	auipc	a0,0x3
    80006ec8:	5fc50513          	addi	a0,a0,1532 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006ecc:	fffff097          	auipc	ra,0xfffff
    80006ed0:	440080e7          	jalr	1088(ra) # 8000630c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006ed4:	00000493          	li	s1,0
    80006ed8:	f91ff06f          	j	80006e68 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006edc:	14102ff3          	csrr	t6,sepc
    80006ee0:	fb5ff06f          	j	80006e94 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006ee4:	00003517          	auipc	a0,0x3
    80006ee8:	38c50513          	addi	a0,a0,908 # 8000a270 <CONSOLE_STATUS+0x260>
    80006eec:	fffff097          	auipc	ra,0xfffff
    80006ef0:	420080e7          	jalr	1056(ra) # 8000630c <_Z11printStringPKc>
    finishedB = true;
    80006ef4:	00100793          	li	a5,1
    80006ef8:	00006717          	auipc	a4,0x6
    80006efc:	fef70223          	sb	a5,-28(a4) # 8000cedc <_ZL9finishedB>
    thread_dispatch();
    80006f00:	ffffa097          	auipc	ra,0xffffa
    80006f04:	774080e7          	jalr	1908(ra) # 80001674 <thread_dispatch>
}
    80006f08:	01813083          	ld	ra,24(sp)
    80006f0c:	01013403          	ld	s0,16(sp)
    80006f10:	00813483          	ld	s1,8(sp)
    80006f14:	00013903          	ld	s2,0(sp)
    80006f18:	02010113          	addi	sp,sp,32
    80006f1c:	00008067          	ret

0000000080006f20 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006f20:	fe010113          	addi	sp,sp,-32
    80006f24:	00113c23          	sd	ra,24(sp)
    80006f28:	00813823          	sd	s0,16(sp)
    80006f2c:	00913423          	sd	s1,8(sp)
    80006f30:	01213023          	sd	s2,0(sp)
    80006f34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006f38:	00000913          	li	s2,0
    80006f3c:	0380006f          	j	80006f74 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006f40:	ffffa097          	auipc	ra,0xffffa
    80006f44:	734080e7          	jalr	1844(ra) # 80001674 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006f48:	00148493          	addi	s1,s1,1
    80006f4c:	000027b7          	lui	a5,0x2
    80006f50:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006f54:	0097ee63          	bltu	a5,s1,80006f70 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006f58:	00000713          	li	a4,0
    80006f5c:	000077b7          	lui	a5,0x7
    80006f60:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006f64:	fce7eee3          	bltu	a5,a4,80006f40 <_ZL11workerBodyAPv+0x20>
    80006f68:	00170713          	addi	a4,a4,1
    80006f6c:	ff1ff06f          	j	80006f5c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006f70:	00190913          	addi	s2,s2,1
    80006f74:	00900793          	li	a5,9
    80006f78:	0527e063          	bltu	a5,s2,80006fb8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006f7c:	00003517          	auipc	a0,0x3
    80006f80:	2d450513          	addi	a0,a0,724 # 8000a250 <CONSOLE_STATUS+0x240>
    80006f84:	fffff097          	auipc	ra,0xfffff
    80006f88:	388080e7          	jalr	904(ra) # 8000630c <_Z11printStringPKc>
    80006f8c:	00000613          	li	a2,0
    80006f90:	00a00593          	li	a1,10
    80006f94:	0009051b          	sext.w	a0,s2
    80006f98:	fffff097          	auipc	ra,0xfffff
    80006f9c:	524080e7          	jalr	1316(ra) # 800064bc <_Z8printIntiii>
    80006fa0:	00003517          	auipc	a0,0x3
    80006fa4:	52050513          	addi	a0,a0,1312 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006fa8:	fffff097          	auipc	ra,0xfffff
    80006fac:	364080e7          	jalr	868(ra) # 8000630c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006fb0:	00000493          	li	s1,0
    80006fb4:	f99ff06f          	j	80006f4c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006fb8:	00003517          	auipc	a0,0x3
    80006fbc:	2a050513          	addi	a0,a0,672 # 8000a258 <CONSOLE_STATUS+0x248>
    80006fc0:	fffff097          	auipc	ra,0xfffff
    80006fc4:	34c080e7          	jalr	844(ra) # 8000630c <_Z11printStringPKc>
    finishedA = true;
    80006fc8:	00100793          	li	a5,1
    80006fcc:	00006717          	auipc	a4,0x6
    80006fd0:	f0f708a3          	sb	a5,-239(a4) # 8000cedd <_ZL9finishedA>
}
    80006fd4:	01813083          	ld	ra,24(sp)
    80006fd8:	01013403          	ld	s0,16(sp)
    80006fdc:	00813483          	ld	s1,8(sp)
    80006fe0:	00013903          	ld	s2,0(sp)
    80006fe4:	02010113          	addi	sp,sp,32
    80006fe8:	00008067          	ret

0000000080006fec <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006fec:	fd010113          	addi	sp,sp,-48
    80006ff0:	02113423          	sd	ra,40(sp)
    80006ff4:	02813023          	sd	s0,32(sp)
    80006ff8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ffc:	00000613          	li	a2,0
    80007000:	00000597          	auipc	a1,0x0
    80007004:	f2058593          	addi	a1,a1,-224 # 80006f20 <_ZL11workerBodyAPv>
    80007008:	fd040513          	addi	a0,s0,-48
    8000700c:	ffffa097          	auipc	ra,0xffffa
    80007010:	5a0080e7          	jalr	1440(ra) # 800015ac <thread_create>
    printString("ThreadA created\n");
    80007014:	00003517          	auipc	a0,0x3
    80007018:	2d450513          	addi	a0,a0,724 # 8000a2e8 <CONSOLE_STATUS+0x2d8>
    8000701c:	fffff097          	auipc	ra,0xfffff
    80007020:	2f0080e7          	jalr	752(ra) # 8000630c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80007024:	00000613          	li	a2,0
    80007028:	00000597          	auipc	a1,0x0
    8000702c:	e1458593          	addi	a1,a1,-492 # 80006e3c <_ZL11workerBodyBPv>
    80007030:	fd840513          	addi	a0,s0,-40
    80007034:	ffffa097          	auipc	ra,0xffffa
    80007038:	578080e7          	jalr	1400(ra) # 800015ac <thread_create>
    printString("ThreadB created\n");
    8000703c:	00003517          	auipc	a0,0x3
    80007040:	2c450513          	addi	a0,a0,708 # 8000a300 <CONSOLE_STATUS+0x2f0>
    80007044:	fffff097          	auipc	ra,0xfffff
    80007048:	2c8080e7          	jalr	712(ra) # 8000630c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000704c:	00000613          	li	a2,0
    80007050:	00000597          	auipc	a1,0x0
    80007054:	c6c58593          	addi	a1,a1,-916 # 80006cbc <_ZL11workerBodyCPv>
    80007058:	fe040513          	addi	a0,s0,-32
    8000705c:	ffffa097          	auipc	ra,0xffffa
    80007060:	550080e7          	jalr	1360(ra) # 800015ac <thread_create>
    printString("ThreadC created\n");
    80007064:	00003517          	auipc	a0,0x3
    80007068:	2b450513          	addi	a0,a0,692 # 8000a318 <CONSOLE_STATUS+0x308>
    8000706c:	fffff097          	auipc	ra,0xfffff
    80007070:	2a0080e7          	jalr	672(ra) # 8000630c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80007074:	00000613          	li	a2,0
    80007078:	00000597          	auipc	a1,0x0
    8000707c:	afc58593          	addi	a1,a1,-1284 # 80006b74 <_ZL11workerBodyDPv>
    80007080:	fe840513          	addi	a0,s0,-24
    80007084:	ffffa097          	auipc	ra,0xffffa
    80007088:	528080e7          	jalr	1320(ra) # 800015ac <thread_create>
    printString("ThreadD created\n");
    8000708c:	00003517          	auipc	a0,0x3
    80007090:	2a450513          	addi	a0,a0,676 # 8000a330 <CONSOLE_STATUS+0x320>
    80007094:	fffff097          	auipc	ra,0xfffff
    80007098:	278080e7          	jalr	632(ra) # 8000630c <_Z11printStringPKc>
    8000709c:	00c0006f          	j	800070a8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800070a0:	ffffa097          	auipc	ra,0xffffa
    800070a4:	5d4080e7          	jalr	1492(ra) # 80001674 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800070a8:	00006797          	auipc	a5,0x6
    800070ac:	e357c783          	lbu	a5,-459(a5) # 8000cedd <_ZL9finishedA>
    800070b0:	fe0788e3          	beqz	a5,800070a0 <_Z16System_Mode_testv+0xb4>
    800070b4:	00006797          	auipc	a5,0x6
    800070b8:	e287c783          	lbu	a5,-472(a5) # 8000cedc <_ZL9finishedB>
    800070bc:	fe0782e3          	beqz	a5,800070a0 <_Z16System_Mode_testv+0xb4>
    800070c0:	00006797          	auipc	a5,0x6
    800070c4:	e1b7c783          	lbu	a5,-485(a5) # 8000cedb <_ZL9finishedC>
    800070c8:	fc078ce3          	beqz	a5,800070a0 <_Z16System_Mode_testv+0xb4>
    800070cc:	00006797          	auipc	a5,0x6
    800070d0:	e0e7c783          	lbu	a5,-498(a5) # 8000ceda <_ZL9finishedD>
    800070d4:	fc0786e3          	beqz	a5,800070a0 <_Z16System_Mode_testv+0xb4>
    }

}
    800070d8:	02813083          	ld	ra,40(sp)
    800070dc:	02013403          	ld	s0,32(sp)
    800070e0:	03010113          	addi	sp,sp,48
    800070e4:	00008067          	ret

00000000800070e8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800070e8:	fe010113          	addi	sp,sp,-32
    800070ec:	00113c23          	sd	ra,24(sp)
    800070f0:	00813823          	sd	s0,16(sp)
    800070f4:	00913423          	sd	s1,8(sp)
    800070f8:	01213023          	sd	s2,0(sp)
    800070fc:	02010413          	addi	s0,sp,32
    80007100:	00050493          	mv	s1,a0
    80007104:	00058913          	mv	s2,a1
    80007108:	0015879b          	addiw	a5,a1,1
    8000710c:	0007851b          	sext.w	a0,a5
    80007110:	00f4a023          	sw	a5,0(s1)
    80007114:	0004a823          	sw	zero,16(s1)
    80007118:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000711c:	00251513          	slli	a0,a0,0x2
    80007120:	ffffa097          	auipc	ra,0xffffa
    80007124:	434080e7          	jalr	1076(ra) # 80001554 <mem_alloc>
    80007128:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000712c:	00000593          	li	a1,0
    80007130:	02048513          	addi	a0,s1,32
    80007134:	ffffa097          	auipc	ra,0xffffa
    80007138:	588080e7          	jalr	1416(ra) # 800016bc <sem_open>
    sem_open(&spaceAvailable, _cap);
    8000713c:	00090593          	mv	a1,s2
    80007140:	01848513          	addi	a0,s1,24
    80007144:	ffffa097          	auipc	ra,0xffffa
    80007148:	578080e7          	jalr	1400(ra) # 800016bc <sem_open>
    sem_open(&mutexHead, 1);
    8000714c:	00100593          	li	a1,1
    80007150:	02848513          	addi	a0,s1,40
    80007154:	ffffa097          	auipc	ra,0xffffa
    80007158:	568080e7          	jalr	1384(ra) # 800016bc <sem_open>
    sem_open(&mutexTail, 1);
    8000715c:	00100593          	li	a1,1
    80007160:	03048513          	addi	a0,s1,48
    80007164:	ffffa097          	auipc	ra,0xffffa
    80007168:	558080e7          	jalr	1368(ra) # 800016bc <sem_open>
}
    8000716c:	01813083          	ld	ra,24(sp)
    80007170:	01013403          	ld	s0,16(sp)
    80007174:	00813483          	ld	s1,8(sp)
    80007178:	00013903          	ld	s2,0(sp)
    8000717c:	02010113          	addi	sp,sp,32
    80007180:	00008067          	ret

0000000080007184 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80007184:	fe010113          	addi	sp,sp,-32
    80007188:	00113c23          	sd	ra,24(sp)
    8000718c:	00813823          	sd	s0,16(sp)
    80007190:	00913423          	sd	s1,8(sp)
    80007194:	01213023          	sd	s2,0(sp)
    80007198:	02010413          	addi	s0,sp,32
    8000719c:	00050493          	mv	s1,a0
    800071a0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800071a4:	01853503          	ld	a0,24(a0)
    800071a8:	ffffa097          	auipc	ra,0xffffa
    800071ac:	574080e7          	jalr	1396(ra) # 8000171c <sem_wait>

    sem_wait(mutexTail);
    800071b0:	0304b503          	ld	a0,48(s1)
    800071b4:	ffffa097          	auipc	ra,0xffffa
    800071b8:	568080e7          	jalr	1384(ra) # 8000171c <sem_wait>
    buffer[tail] = val;
    800071bc:	0084b783          	ld	a5,8(s1)
    800071c0:	0144a703          	lw	a4,20(s1)
    800071c4:	00271713          	slli	a4,a4,0x2
    800071c8:	00e787b3          	add	a5,a5,a4
    800071cc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800071d0:	0144a783          	lw	a5,20(s1)
    800071d4:	0017879b          	addiw	a5,a5,1
    800071d8:	0004a703          	lw	a4,0(s1)
    800071dc:	02e7e7bb          	remw	a5,a5,a4
    800071e0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800071e4:	0304b503          	ld	a0,48(s1)
    800071e8:	ffffa097          	auipc	ra,0xffffa
    800071ec:	55c080e7          	jalr	1372(ra) # 80001744 <sem_signal>

    sem_signal(itemAvailable);
    800071f0:	0204b503          	ld	a0,32(s1)
    800071f4:	ffffa097          	auipc	ra,0xffffa
    800071f8:	550080e7          	jalr	1360(ra) # 80001744 <sem_signal>

}
    800071fc:	01813083          	ld	ra,24(sp)
    80007200:	01013403          	ld	s0,16(sp)
    80007204:	00813483          	ld	s1,8(sp)
    80007208:	00013903          	ld	s2,0(sp)
    8000720c:	02010113          	addi	sp,sp,32
    80007210:	00008067          	ret

0000000080007214 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007214:	fe010113          	addi	sp,sp,-32
    80007218:	00113c23          	sd	ra,24(sp)
    8000721c:	00813823          	sd	s0,16(sp)
    80007220:	00913423          	sd	s1,8(sp)
    80007224:	01213023          	sd	s2,0(sp)
    80007228:	02010413          	addi	s0,sp,32
    8000722c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80007230:	02053503          	ld	a0,32(a0)
    80007234:	ffffa097          	auipc	ra,0xffffa
    80007238:	4e8080e7          	jalr	1256(ra) # 8000171c <sem_wait>

    sem_wait(mutexHead);
    8000723c:	0284b503          	ld	a0,40(s1)
    80007240:	ffffa097          	auipc	ra,0xffffa
    80007244:	4dc080e7          	jalr	1244(ra) # 8000171c <sem_wait>

    int ret = buffer[head];
    80007248:	0084b703          	ld	a4,8(s1)
    8000724c:	0104a783          	lw	a5,16(s1)
    80007250:	00279693          	slli	a3,a5,0x2
    80007254:	00d70733          	add	a4,a4,a3
    80007258:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000725c:	0017879b          	addiw	a5,a5,1
    80007260:	0004a703          	lw	a4,0(s1)
    80007264:	02e7e7bb          	remw	a5,a5,a4
    80007268:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000726c:	0284b503          	ld	a0,40(s1)
    80007270:	ffffa097          	auipc	ra,0xffffa
    80007274:	4d4080e7          	jalr	1236(ra) # 80001744 <sem_signal>

    sem_signal(spaceAvailable);
    80007278:	0184b503          	ld	a0,24(s1)
    8000727c:	ffffa097          	auipc	ra,0xffffa
    80007280:	4c8080e7          	jalr	1224(ra) # 80001744 <sem_signal>

    return ret;
}
    80007284:	00090513          	mv	a0,s2
    80007288:	01813083          	ld	ra,24(sp)
    8000728c:	01013403          	ld	s0,16(sp)
    80007290:	00813483          	ld	s1,8(sp)
    80007294:	00013903          	ld	s2,0(sp)
    80007298:	02010113          	addi	sp,sp,32
    8000729c:	00008067          	ret

00000000800072a0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800072a0:	fe010113          	addi	sp,sp,-32
    800072a4:	00113c23          	sd	ra,24(sp)
    800072a8:	00813823          	sd	s0,16(sp)
    800072ac:	00913423          	sd	s1,8(sp)
    800072b0:	01213023          	sd	s2,0(sp)
    800072b4:	02010413          	addi	s0,sp,32
    800072b8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800072bc:	02853503          	ld	a0,40(a0)
    800072c0:	ffffa097          	auipc	ra,0xffffa
    800072c4:	45c080e7          	jalr	1116(ra) # 8000171c <sem_wait>
    sem_wait(mutexTail);
    800072c8:	0304b503          	ld	a0,48(s1)
    800072cc:	ffffa097          	auipc	ra,0xffffa
    800072d0:	450080e7          	jalr	1104(ra) # 8000171c <sem_wait>

    if (tail >= head) {
    800072d4:	0144a783          	lw	a5,20(s1)
    800072d8:	0104a903          	lw	s2,16(s1)
    800072dc:	0327ce63          	blt	a5,s2,80007318 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800072e0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800072e4:	0304b503          	ld	a0,48(s1)
    800072e8:	ffffa097          	auipc	ra,0xffffa
    800072ec:	45c080e7          	jalr	1116(ra) # 80001744 <sem_signal>
    sem_signal(mutexHead);
    800072f0:	0284b503          	ld	a0,40(s1)
    800072f4:	ffffa097          	auipc	ra,0xffffa
    800072f8:	450080e7          	jalr	1104(ra) # 80001744 <sem_signal>

    return ret;
}
    800072fc:	00090513          	mv	a0,s2
    80007300:	01813083          	ld	ra,24(sp)
    80007304:	01013403          	ld	s0,16(sp)
    80007308:	00813483          	ld	s1,8(sp)
    8000730c:	00013903          	ld	s2,0(sp)
    80007310:	02010113          	addi	sp,sp,32
    80007314:	00008067          	ret
        ret = cap - head + tail;
    80007318:	0004a703          	lw	a4,0(s1)
    8000731c:	4127093b          	subw	s2,a4,s2
    80007320:	00f9093b          	addw	s2,s2,a5
    80007324:	fc1ff06f          	j	800072e4 <_ZN6Buffer6getCntEv+0x44>

0000000080007328 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007328:	fe010113          	addi	sp,sp,-32
    8000732c:	00113c23          	sd	ra,24(sp)
    80007330:	00813823          	sd	s0,16(sp)
    80007334:	00913423          	sd	s1,8(sp)
    80007338:	02010413          	addi	s0,sp,32
    8000733c:	00050493          	mv	s1,a0
    putc('\n');
    80007340:	00a00513          	li	a0,10
    80007344:	ffffa097          	auipc	ra,0xffffa
    80007348:	484080e7          	jalr	1156(ra) # 800017c8 <putc>
    printString("Buffer deleted!\n");
    8000734c:	00003517          	auipc	a0,0x3
    80007350:	2ac50513          	addi	a0,a0,684 # 8000a5f8 <CONSOLE_STATUS+0x5e8>
    80007354:	fffff097          	auipc	ra,0xfffff
    80007358:	fb8080e7          	jalr	-72(ra) # 8000630c <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000735c:	00048513          	mv	a0,s1
    80007360:	00000097          	auipc	ra,0x0
    80007364:	f40080e7          	jalr	-192(ra) # 800072a0 <_ZN6Buffer6getCntEv>
    80007368:	02a05c63          	blez	a0,800073a0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000736c:	0084b783          	ld	a5,8(s1)
    80007370:	0104a703          	lw	a4,16(s1)
    80007374:	00271713          	slli	a4,a4,0x2
    80007378:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000737c:	0007c503          	lbu	a0,0(a5)
    80007380:	ffffa097          	auipc	ra,0xffffa
    80007384:	448080e7          	jalr	1096(ra) # 800017c8 <putc>
        head = (head + 1) % cap;
    80007388:	0104a783          	lw	a5,16(s1)
    8000738c:	0017879b          	addiw	a5,a5,1
    80007390:	0004a703          	lw	a4,0(s1)
    80007394:	02e7e7bb          	remw	a5,a5,a4
    80007398:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000739c:	fc1ff06f          	j	8000735c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800073a0:	02100513          	li	a0,33
    800073a4:	ffffa097          	auipc	ra,0xffffa
    800073a8:	424080e7          	jalr	1060(ra) # 800017c8 <putc>
    putc('\n');
    800073ac:	00a00513          	li	a0,10
    800073b0:	ffffa097          	auipc	ra,0xffffa
    800073b4:	418080e7          	jalr	1048(ra) # 800017c8 <putc>
    mem_free(buffer);
    800073b8:	0084b503          	ld	a0,8(s1)
    800073bc:	ffffa097          	auipc	ra,0xffffa
    800073c0:	1c4080e7          	jalr	452(ra) # 80001580 <mem_free>
    sem_close(itemAvailable);
    800073c4:	0204b503          	ld	a0,32(s1)
    800073c8:	ffffa097          	auipc	ra,0xffffa
    800073cc:	32c080e7          	jalr	812(ra) # 800016f4 <sem_close>
    sem_close(spaceAvailable);
    800073d0:	0184b503          	ld	a0,24(s1)
    800073d4:	ffffa097          	auipc	ra,0xffffa
    800073d8:	320080e7          	jalr	800(ra) # 800016f4 <sem_close>
    sem_close(mutexTail);
    800073dc:	0304b503          	ld	a0,48(s1)
    800073e0:	ffffa097          	auipc	ra,0xffffa
    800073e4:	314080e7          	jalr	788(ra) # 800016f4 <sem_close>
    sem_close(mutexHead);
    800073e8:	0284b503          	ld	a0,40(s1)
    800073ec:	ffffa097          	auipc	ra,0xffffa
    800073f0:	308080e7          	jalr	776(ra) # 800016f4 <sem_close>
}
    800073f4:	01813083          	ld	ra,24(sp)
    800073f8:	01013403          	ld	s0,16(sp)
    800073fc:	00813483          	ld	s1,8(sp)
    80007400:	02010113          	addi	sp,sp,32
    80007404:	00008067          	ret

0000000080007408 <start>:
    80007408:	ff010113          	addi	sp,sp,-16
    8000740c:	00813423          	sd	s0,8(sp)
    80007410:	01010413          	addi	s0,sp,16
    80007414:	300027f3          	csrr	a5,mstatus
    80007418:	ffffe737          	lui	a4,0xffffe
    8000741c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff06bf>
    80007420:	00e7f7b3          	and	a5,a5,a4
    80007424:	00001737          	lui	a4,0x1
    80007428:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000742c:	00e7e7b3          	or	a5,a5,a4
    80007430:	30079073          	csrw	mstatus,a5
    80007434:	00000797          	auipc	a5,0x0
    80007438:	16078793          	addi	a5,a5,352 # 80007594 <system_main>
    8000743c:	34179073          	csrw	mepc,a5
    80007440:	00000793          	li	a5,0
    80007444:	18079073          	csrw	satp,a5
    80007448:	000107b7          	lui	a5,0x10
    8000744c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007450:	30279073          	csrw	medeleg,a5
    80007454:	30379073          	csrw	mideleg,a5
    80007458:	104027f3          	csrr	a5,sie
    8000745c:	2227e793          	ori	a5,a5,546
    80007460:	10479073          	csrw	sie,a5
    80007464:	fff00793          	li	a5,-1
    80007468:	00a7d793          	srli	a5,a5,0xa
    8000746c:	3b079073          	csrw	pmpaddr0,a5
    80007470:	00f00793          	li	a5,15
    80007474:	3a079073          	csrw	pmpcfg0,a5
    80007478:	f14027f3          	csrr	a5,mhartid
    8000747c:	0200c737          	lui	a4,0x200c
    80007480:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007484:	0007869b          	sext.w	a3,a5
    80007488:	00269713          	slli	a4,a3,0x2
    8000748c:	000f4637          	lui	a2,0xf4
    80007490:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007494:	00d70733          	add	a4,a4,a3
    80007498:	0037979b          	slliw	a5,a5,0x3
    8000749c:	020046b7          	lui	a3,0x2004
    800074a0:	00d787b3          	add	a5,a5,a3
    800074a4:	00c585b3          	add	a1,a1,a2
    800074a8:	00371693          	slli	a3,a4,0x3
    800074ac:	00006717          	auipc	a4,0x6
    800074b0:	a3470713          	addi	a4,a4,-1484 # 8000cee0 <timer_scratch>
    800074b4:	00b7b023          	sd	a1,0(a5)
    800074b8:	00d70733          	add	a4,a4,a3
    800074bc:	00f73c23          	sd	a5,24(a4)
    800074c0:	02c73023          	sd	a2,32(a4)
    800074c4:	34071073          	csrw	mscratch,a4
    800074c8:	00000797          	auipc	a5,0x0
    800074cc:	6e878793          	addi	a5,a5,1768 # 80007bb0 <timervec>
    800074d0:	30579073          	csrw	mtvec,a5
    800074d4:	300027f3          	csrr	a5,mstatus
    800074d8:	0087e793          	ori	a5,a5,8
    800074dc:	30079073          	csrw	mstatus,a5
    800074e0:	304027f3          	csrr	a5,mie
    800074e4:	0807e793          	ori	a5,a5,128
    800074e8:	30479073          	csrw	mie,a5
    800074ec:	f14027f3          	csrr	a5,mhartid
    800074f0:	0007879b          	sext.w	a5,a5
    800074f4:	00078213          	mv	tp,a5
    800074f8:	30200073          	mret
    800074fc:	00813403          	ld	s0,8(sp)
    80007500:	01010113          	addi	sp,sp,16
    80007504:	00008067          	ret

0000000080007508 <timerinit>:
    80007508:	ff010113          	addi	sp,sp,-16
    8000750c:	00813423          	sd	s0,8(sp)
    80007510:	01010413          	addi	s0,sp,16
    80007514:	f14027f3          	csrr	a5,mhartid
    80007518:	0200c737          	lui	a4,0x200c
    8000751c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007520:	0007869b          	sext.w	a3,a5
    80007524:	00269713          	slli	a4,a3,0x2
    80007528:	000f4637          	lui	a2,0xf4
    8000752c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007530:	00d70733          	add	a4,a4,a3
    80007534:	0037979b          	slliw	a5,a5,0x3
    80007538:	020046b7          	lui	a3,0x2004
    8000753c:	00d787b3          	add	a5,a5,a3
    80007540:	00c585b3          	add	a1,a1,a2
    80007544:	00371693          	slli	a3,a4,0x3
    80007548:	00006717          	auipc	a4,0x6
    8000754c:	99870713          	addi	a4,a4,-1640 # 8000cee0 <timer_scratch>
    80007550:	00b7b023          	sd	a1,0(a5)
    80007554:	00d70733          	add	a4,a4,a3
    80007558:	00f73c23          	sd	a5,24(a4)
    8000755c:	02c73023          	sd	a2,32(a4)
    80007560:	34071073          	csrw	mscratch,a4
    80007564:	00000797          	auipc	a5,0x0
    80007568:	64c78793          	addi	a5,a5,1612 # 80007bb0 <timervec>
    8000756c:	30579073          	csrw	mtvec,a5
    80007570:	300027f3          	csrr	a5,mstatus
    80007574:	0087e793          	ori	a5,a5,8
    80007578:	30079073          	csrw	mstatus,a5
    8000757c:	304027f3          	csrr	a5,mie
    80007580:	0807e793          	ori	a5,a5,128
    80007584:	30479073          	csrw	mie,a5
    80007588:	00813403          	ld	s0,8(sp)
    8000758c:	01010113          	addi	sp,sp,16
    80007590:	00008067          	ret

0000000080007594 <system_main>:
    80007594:	fe010113          	addi	sp,sp,-32
    80007598:	00813823          	sd	s0,16(sp)
    8000759c:	00913423          	sd	s1,8(sp)
    800075a0:	00113c23          	sd	ra,24(sp)
    800075a4:	02010413          	addi	s0,sp,32
    800075a8:	00000097          	auipc	ra,0x0
    800075ac:	0c4080e7          	jalr	196(ra) # 8000766c <cpuid>
    800075b0:	00005497          	auipc	s1,0x5
    800075b4:	60048493          	addi	s1,s1,1536 # 8000cbb0 <started>
    800075b8:	02050263          	beqz	a0,800075dc <system_main+0x48>
    800075bc:	0004a783          	lw	a5,0(s1)
    800075c0:	0007879b          	sext.w	a5,a5
    800075c4:	fe078ce3          	beqz	a5,800075bc <system_main+0x28>
    800075c8:	0ff0000f          	fence
    800075cc:	00003517          	auipc	a0,0x3
    800075d0:	08450513          	addi	a0,a0,132 # 8000a650 <CONSOLE_STATUS+0x640>
    800075d4:	00001097          	auipc	ra,0x1
    800075d8:	a78080e7          	jalr	-1416(ra) # 8000804c <panic>
    800075dc:	00001097          	auipc	ra,0x1
    800075e0:	9cc080e7          	jalr	-1588(ra) # 80007fa8 <consoleinit>
    800075e4:	00001097          	auipc	ra,0x1
    800075e8:	158080e7          	jalr	344(ra) # 8000873c <printfinit>
    800075ec:	00003517          	auipc	a0,0x3
    800075f0:	ed450513          	addi	a0,a0,-300 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800075f4:	00001097          	auipc	ra,0x1
    800075f8:	ab4080e7          	jalr	-1356(ra) # 800080a8 <__printf>
    800075fc:	00003517          	auipc	a0,0x3
    80007600:	02450513          	addi	a0,a0,36 # 8000a620 <CONSOLE_STATUS+0x610>
    80007604:	00001097          	auipc	ra,0x1
    80007608:	aa4080e7          	jalr	-1372(ra) # 800080a8 <__printf>
    8000760c:	00003517          	auipc	a0,0x3
    80007610:	eb450513          	addi	a0,a0,-332 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80007614:	00001097          	auipc	ra,0x1
    80007618:	a94080e7          	jalr	-1388(ra) # 800080a8 <__printf>
    8000761c:	00001097          	auipc	ra,0x1
    80007620:	4ac080e7          	jalr	1196(ra) # 80008ac8 <kinit>
    80007624:	00000097          	auipc	ra,0x0
    80007628:	148080e7          	jalr	328(ra) # 8000776c <trapinit>
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	16c080e7          	jalr	364(ra) # 80007798 <trapinithart>
    80007634:	00000097          	auipc	ra,0x0
    80007638:	5bc080e7          	jalr	1468(ra) # 80007bf0 <plicinit>
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	5dc080e7          	jalr	1500(ra) # 80007c18 <plicinithart>
    80007644:	00000097          	auipc	ra,0x0
    80007648:	078080e7          	jalr	120(ra) # 800076bc <userinit>
    8000764c:	0ff0000f          	fence
    80007650:	00100793          	li	a5,1
    80007654:	00003517          	auipc	a0,0x3
    80007658:	fe450513          	addi	a0,a0,-28 # 8000a638 <CONSOLE_STATUS+0x628>
    8000765c:	00f4a023          	sw	a5,0(s1)
    80007660:	00001097          	auipc	ra,0x1
    80007664:	a48080e7          	jalr	-1464(ra) # 800080a8 <__printf>
    80007668:	0000006f          	j	80007668 <system_main+0xd4>

000000008000766c <cpuid>:
    8000766c:	ff010113          	addi	sp,sp,-16
    80007670:	00813423          	sd	s0,8(sp)
    80007674:	01010413          	addi	s0,sp,16
    80007678:	00020513          	mv	a0,tp
    8000767c:	00813403          	ld	s0,8(sp)
    80007680:	0005051b          	sext.w	a0,a0
    80007684:	01010113          	addi	sp,sp,16
    80007688:	00008067          	ret

000000008000768c <mycpu>:
    8000768c:	ff010113          	addi	sp,sp,-16
    80007690:	00813423          	sd	s0,8(sp)
    80007694:	01010413          	addi	s0,sp,16
    80007698:	00020793          	mv	a5,tp
    8000769c:	00813403          	ld	s0,8(sp)
    800076a0:	0007879b          	sext.w	a5,a5
    800076a4:	00779793          	slli	a5,a5,0x7
    800076a8:	00007517          	auipc	a0,0x7
    800076ac:	86850513          	addi	a0,a0,-1944 # 8000df10 <cpus>
    800076b0:	00f50533          	add	a0,a0,a5
    800076b4:	01010113          	addi	sp,sp,16
    800076b8:	00008067          	ret

00000000800076bc <userinit>:
    800076bc:	ff010113          	addi	sp,sp,-16
    800076c0:	00813423          	sd	s0,8(sp)
    800076c4:	01010413          	addi	s0,sp,16
    800076c8:	00813403          	ld	s0,8(sp)
    800076cc:	01010113          	addi	sp,sp,16
    800076d0:	ffffa317          	auipc	t1,0xffffa
    800076d4:	1c830067          	jr	456(t1) # 80001898 <main>

00000000800076d8 <either_copyout>:
    800076d8:	ff010113          	addi	sp,sp,-16
    800076dc:	00813023          	sd	s0,0(sp)
    800076e0:	00113423          	sd	ra,8(sp)
    800076e4:	01010413          	addi	s0,sp,16
    800076e8:	02051663          	bnez	a0,80007714 <either_copyout+0x3c>
    800076ec:	00058513          	mv	a0,a1
    800076f0:	00060593          	mv	a1,a2
    800076f4:	0006861b          	sext.w	a2,a3
    800076f8:	00002097          	auipc	ra,0x2
    800076fc:	c5c080e7          	jalr	-932(ra) # 80009354 <__memmove>
    80007700:	00813083          	ld	ra,8(sp)
    80007704:	00013403          	ld	s0,0(sp)
    80007708:	00000513          	li	a0,0
    8000770c:	01010113          	addi	sp,sp,16
    80007710:	00008067          	ret
    80007714:	00003517          	auipc	a0,0x3
    80007718:	f6450513          	addi	a0,a0,-156 # 8000a678 <CONSOLE_STATUS+0x668>
    8000771c:	00001097          	auipc	ra,0x1
    80007720:	930080e7          	jalr	-1744(ra) # 8000804c <panic>

0000000080007724 <either_copyin>:
    80007724:	ff010113          	addi	sp,sp,-16
    80007728:	00813023          	sd	s0,0(sp)
    8000772c:	00113423          	sd	ra,8(sp)
    80007730:	01010413          	addi	s0,sp,16
    80007734:	02059463          	bnez	a1,8000775c <either_copyin+0x38>
    80007738:	00060593          	mv	a1,a2
    8000773c:	0006861b          	sext.w	a2,a3
    80007740:	00002097          	auipc	ra,0x2
    80007744:	c14080e7          	jalr	-1004(ra) # 80009354 <__memmove>
    80007748:	00813083          	ld	ra,8(sp)
    8000774c:	00013403          	ld	s0,0(sp)
    80007750:	00000513          	li	a0,0
    80007754:	01010113          	addi	sp,sp,16
    80007758:	00008067          	ret
    8000775c:	00003517          	auipc	a0,0x3
    80007760:	f4450513          	addi	a0,a0,-188 # 8000a6a0 <CONSOLE_STATUS+0x690>
    80007764:	00001097          	auipc	ra,0x1
    80007768:	8e8080e7          	jalr	-1816(ra) # 8000804c <panic>

000000008000776c <trapinit>:
    8000776c:	ff010113          	addi	sp,sp,-16
    80007770:	00813423          	sd	s0,8(sp)
    80007774:	01010413          	addi	s0,sp,16
    80007778:	00813403          	ld	s0,8(sp)
    8000777c:	00003597          	auipc	a1,0x3
    80007780:	f4c58593          	addi	a1,a1,-180 # 8000a6c8 <CONSOLE_STATUS+0x6b8>
    80007784:	00007517          	auipc	a0,0x7
    80007788:	80c50513          	addi	a0,a0,-2036 # 8000df90 <tickslock>
    8000778c:	01010113          	addi	sp,sp,16
    80007790:	00001317          	auipc	t1,0x1
    80007794:	5c830067          	jr	1480(t1) # 80008d58 <initlock>

0000000080007798 <trapinithart>:
    80007798:	ff010113          	addi	sp,sp,-16
    8000779c:	00813423          	sd	s0,8(sp)
    800077a0:	01010413          	addi	s0,sp,16
    800077a4:	00000797          	auipc	a5,0x0
    800077a8:	2fc78793          	addi	a5,a5,764 # 80007aa0 <kernelvec>
    800077ac:	10579073          	csrw	stvec,a5
    800077b0:	00813403          	ld	s0,8(sp)
    800077b4:	01010113          	addi	sp,sp,16
    800077b8:	00008067          	ret

00000000800077bc <usertrap>:
    800077bc:	ff010113          	addi	sp,sp,-16
    800077c0:	00813423          	sd	s0,8(sp)
    800077c4:	01010413          	addi	s0,sp,16
    800077c8:	00813403          	ld	s0,8(sp)
    800077cc:	01010113          	addi	sp,sp,16
    800077d0:	00008067          	ret

00000000800077d4 <usertrapret>:
    800077d4:	ff010113          	addi	sp,sp,-16
    800077d8:	00813423          	sd	s0,8(sp)
    800077dc:	01010413          	addi	s0,sp,16
    800077e0:	00813403          	ld	s0,8(sp)
    800077e4:	01010113          	addi	sp,sp,16
    800077e8:	00008067          	ret

00000000800077ec <kerneltrap>:
    800077ec:	fe010113          	addi	sp,sp,-32
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00113c23          	sd	ra,24(sp)
    800077f8:	00913423          	sd	s1,8(sp)
    800077fc:	02010413          	addi	s0,sp,32
    80007800:	142025f3          	csrr	a1,scause
    80007804:	100027f3          	csrr	a5,sstatus
    80007808:	0027f793          	andi	a5,a5,2
    8000780c:	10079c63          	bnez	a5,80007924 <kerneltrap+0x138>
    80007810:	142027f3          	csrr	a5,scause
    80007814:	0207ce63          	bltz	a5,80007850 <kerneltrap+0x64>
    80007818:	00003517          	auipc	a0,0x3
    8000781c:	ef850513          	addi	a0,a0,-264 # 8000a710 <CONSOLE_STATUS+0x700>
    80007820:	00001097          	auipc	ra,0x1
    80007824:	888080e7          	jalr	-1912(ra) # 800080a8 <__printf>
    80007828:	141025f3          	csrr	a1,sepc
    8000782c:	14302673          	csrr	a2,stval
    80007830:	00003517          	auipc	a0,0x3
    80007834:	ef050513          	addi	a0,a0,-272 # 8000a720 <CONSOLE_STATUS+0x710>
    80007838:	00001097          	auipc	ra,0x1
    8000783c:	870080e7          	jalr	-1936(ra) # 800080a8 <__printf>
    80007840:	00003517          	auipc	a0,0x3
    80007844:	ef850513          	addi	a0,a0,-264 # 8000a738 <CONSOLE_STATUS+0x728>
    80007848:	00001097          	auipc	ra,0x1
    8000784c:	804080e7          	jalr	-2044(ra) # 8000804c <panic>
    80007850:	0ff7f713          	andi	a4,a5,255
    80007854:	00900693          	li	a3,9
    80007858:	04d70063          	beq	a4,a3,80007898 <kerneltrap+0xac>
    8000785c:	fff00713          	li	a4,-1
    80007860:	03f71713          	slli	a4,a4,0x3f
    80007864:	00170713          	addi	a4,a4,1
    80007868:	fae798e3          	bne	a5,a4,80007818 <kerneltrap+0x2c>
    8000786c:	00000097          	auipc	ra,0x0
    80007870:	e00080e7          	jalr	-512(ra) # 8000766c <cpuid>
    80007874:	06050663          	beqz	a0,800078e0 <kerneltrap+0xf4>
    80007878:	144027f3          	csrr	a5,sip
    8000787c:	ffd7f793          	andi	a5,a5,-3
    80007880:	14479073          	csrw	sip,a5
    80007884:	01813083          	ld	ra,24(sp)
    80007888:	01013403          	ld	s0,16(sp)
    8000788c:	00813483          	ld	s1,8(sp)
    80007890:	02010113          	addi	sp,sp,32
    80007894:	00008067          	ret
    80007898:	00000097          	auipc	ra,0x0
    8000789c:	3cc080e7          	jalr	972(ra) # 80007c64 <plic_claim>
    800078a0:	00a00793          	li	a5,10
    800078a4:	00050493          	mv	s1,a0
    800078a8:	06f50863          	beq	a0,a5,80007918 <kerneltrap+0x12c>
    800078ac:	fc050ce3          	beqz	a0,80007884 <kerneltrap+0x98>
    800078b0:	00050593          	mv	a1,a0
    800078b4:	00003517          	auipc	a0,0x3
    800078b8:	e3c50513          	addi	a0,a0,-452 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    800078bc:	00000097          	auipc	ra,0x0
    800078c0:	7ec080e7          	jalr	2028(ra) # 800080a8 <__printf>
    800078c4:	01013403          	ld	s0,16(sp)
    800078c8:	01813083          	ld	ra,24(sp)
    800078cc:	00048513          	mv	a0,s1
    800078d0:	00813483          	ld	s1,8(sp)
    800078d4:	02010113          	addi	sp,sp,32
    800078d8:	00000317          	auipc	t1,0x0
    800078dc:	3c430067          	jr	964(t1) # 80007c9c <plic_complete>
    800078e0:	00006517          	auipc	a0,0x6
    800078e4:	6b050513          	addi	a0,a0,1712 # 8000df90 <tickslock>
    800078e8:	00001097          	auipc	ra,0x1
    800078ec:	494080e7          	jalr	1172(ra) # 80008d7c <acquire>
    800078f0:	00005717          	auipc	a4,0x5
    800078f4:	2c470713          	addi	a4,a4,708 # 8000cbb4 <ticks>
    800078f8:	00072783          	lw	a5,0(a4)
    800078fc:	00006517          	auipc	a0,0x6
    80007900:	69450513          	addi	a0,a0,1684 # 8000df90 <tickslock>
    80007904:	0017879b          	addiw	a5,a5,1
    80007908:	00f72023          	sw	a5,0(a4)
    8000790c:	00001097          	auipc	ra,0x1
    80007910:	53c080e7          	jalr	1340(ra) # 80008e48 <release>
    80007914:	f65ff06f          	j	80007878 <kerneltrap+0x8c>
    80007918:	00001097          	auipc	ra,0x1
    8000791c:	098080e7          	jalr	152(ra) # 800089b0 <uartintr>
    80007920:	fa5ff06f          	j	800078c4 <kerneltrap+0xd8>
    80007924:	00003517          	auipc	a0,0x3
    80007928:	dac50513          	addi	a0,a0,-596 # 8000a6d0 <CONSOLE_STATUS+0x6c0>
    8000792c:	00000097          	auipc	ra,0x0
    80007930:	720080e7          	jalr	1824(ra) # 8000804c <panic>

0000000080007934 <clockintr>:
    80007934:	fe010113          	addi	sp,sp,-32
    80007938:	00813823          	sd	s0,16(sp)
    8000793c:	00913423          	sd	s1,8(sp)
    80007940:	00113c23          	sd	ra,24(sp)
    80007944:	02010413          	addi	s0,sp,32
    80007948:	00006497          	auipc	s1,0x6
    8000794c:	64848493          	addi	s1,s1,1608 # 8000df90 <tickslock>
    80007950:	00048513          	mv	a0,s1
    80007954:	00001097          	auipc	ra,0x1
    80007958:	428080e7          	jalr	1064(ra) # 80008d7c <acquire>
    8000795c:	00005717          	auipc	a4,0x5
    80007960:	25870713          	addi	a4,a4,600 # 8000cbb4 <ticks>
    80007964:	00072783          	lw	a5,0(a4)
    80007968:	01013403          	ld	s0,16(sp)
    8000796c:	01813083          	ld	ra,24(sp)
    80007970:	00048513          	mv	a0,s1
    80007974:	0017879b          	addiw	a5,a5,1
    80007978:	00813483          	ld	s1,8(sp)
    8000797c:	00f72023          	sw	a5,0(a4)
    80007980:	02010113          	addi	sp,sp,32
    80007984:	00001317          	auipc	t1,0x1
    80007988:	4c430067          	jr	1220(t1) # 80008e48 <release>

000000008000798c <devintr>:
    8000798c:	142027f3          	csrr	a5,scause
    80007990:	00000513          	li	a0,0
    80007994:	0007c463          	bltz	a5,8000799c <devintr+0x10>
    80007998:	00008067          	ret
    8000799c:	fe010113          	addi	sp,sp,-32
    800079a0:	00813823          	sd	s0,16(sp)
    800079a4:	00113c23          	sd	ra,24(sp)
    800079a8:	00913423          	sd	s1,8(sp)
    800079ac:	02010413          	addi	s0,sp,32
    800079b0:	0ff7f713          	andi	a4,a5,255
    800079b4:	00900693          	li	a3,9
    800079b8:	04d70c63          	beq	a4,a3,80007a10 <devintr+0x84>
    800079bc:	fff00713          	li	a4,-1
    800079c0:	03f71713          	slli	a4,a4,0x3f
    800079c4:	00170713          	addi	a4,a4,1
    800079c8:	00e78c63          	beq	a5,a4,800079e0 <devintr+0x54>
    800079cc:	01813083          	ld	ra,24(sp)
    800079d0:	01013403          	ld	s0,16(sp)
    800079d4:	00813483          	ld	s1,8(sp)
    800079d8:	02010113          	addi	sp,sp,32
    800079dc:	00008067          	ret
    800079e0:	00000097          	auipc	ra,0x0
    800079e4:	c8c080e7          	jalr	-884(ra) # 8000766c <cpuid>
    800079e8:	06050663          	beqz	a0,80007a54 <devintr+0xc8>
    800079ec:	144027f3          	csrr	a5,sip
    800079f0:	ffd7f793          	andi	a5,a5,-3
    800079f4:	14479073          	csrw	sip,a5
    800079f8:	01813083          	ld	ra,24(sp)
    800079fc:	01013403          	ld	s0,16(sp)
    80007a00:	00813483          	ld	s1,8(sp)
    80007a04:	00200513          	li	a0,2
    80007a08:	02010113          	addi	sp,sp,32
    80007a0c:	00008067          	ret
    80007a10:	00000097          	auipc	ra,0x0
    80007a14:	254080e7          	jalr	596(ra) # 80007c64 <plic_claim>
    80007a18:	00a00793          	li	a5,10
    80007a1c:	00050493          	mv	s1,a0
    80007a20:	06f50663          	beq	a0,a5,80007a8c <devintr+0x100>
    80007a24:	00100513          	li	a0,1
    80007a28:	fa0482e3          	beqz	s1,800079cc <devintr+0x40>
    80007a2c:	00048593          	mv	a1,s1
    80007a30:	00003517          	auipc	a0,0x3
    80007a34:	cc050513          	addi	a0,a0,-832 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007a38:	00000097          	auipc	ra,0x0
    80007a3c:	670080e7          	jalr	1648(ra) # 800080a8 <__printf>
    80007a40:	00048513          	mv	a0,s1
    80007a44:	00000097          	auipc	ra,0x0
    80007a48:	258080e7          	jalr	600(ra) # 80007c9c <plic_complete>
    80007a4c:	00100513          	li	a0,1
    80007a50:	f7dff06f          	j	800079cc <devintr+0x40>
    80007a54:	00006517          	auipc	a0,0x6
    80007a58:	53c50513          	addi	a0,a0,1340 # 8000df90 <tickslock>
    80007a5c:	00001097          	auipc	ra,0x1
    80007a60:	320080e7          	jalr	800(ra) # 80008d7c <acquire>
    80007a64:	00005717          	auipc	a4,0x5
    80007a68:	15070713          	addi	a4,a4,336 # 8000cbb4 <ticks>
    80007a6c:	00072783          	lw	a5,0(a4)
    80007a70:	00006517          	auipc	a0,0x6
    80007a74:	52050513          	addi	a0,a0,1312 # 8000df90 <tickslock>
    80007a78:	0017879b          	addiw	a5,a5,1
    80007a7c:	00f72023          	sw	a5,0(a4)
    80007a80:	00001097          	auipc	ra,0x1
    80007a84:	3c8080e7          	jalr	968(ra) # 80008e48 <release>
    80007a88:	f65ff06f          	j	800079ec <devintr+0x60>
    80007a8c:	00001097          	auipc	ra,0x1
    80007a90:	f24080e7          	jalr	-220(ra) # 800089b0 <uartintr>
    80007a94:	fadff06f          	j	80007a40 <devintr+0xb4>
	...

0000000080007aa0 <kernelvec>:
    80007aa0:	f0010113          	addi	sp,sp,-256
    80007aa4:	00113023          	sd	ra,0(sp)
    80007aa8:	00213423          	sd	sp,8(sp)
    80007aac:	00313823          	sd	gp,16(sp)
    80007ab0:	00413c23          	sd	tp,24(sp)
    80007ab4:	02513023          	sd	t0,32(sp)
    80007ab8:	02613423          	sd	t1,40(sp)
    80007abc:	02713823          	sd	t2,48(sp)
    80007ac0:	02813c23          	sd	s0,56(sp)
    80007ac4:	04913023          	sd	s1,64(sp)
    80007ac8:	04a13423          	sd	a0,72(sp)
    80007acc:	04b13823          	sd	a1,80(sp)
    80007ad0:	04c13c23          	sd	a2,88(sp)
    80007ad4:	06d13023          	sd	a3,96(sp)
    80007ad8:	06e13423          	sd	a4,104(sp)
    80007adc:	06f13823          	sd	a5,112(sp)
    80007ae0:	07013c23          	sd	a6,120(sp)
    80007ae4:	09113023          	sd	a7,128(sp)
    80007ae8:	09213423          	sd	s2,136(sp)
    80007aec:	09313823          	sd	s3,144(sp)
    80007af0:	09413c23          	sd	s4,152(sp)
    80007af4:	0b513023          	sd	s5,160(sp)
    80007af8:	0b613423          	sd	s6,168(sp)
    80007afc:	0b713823          	sd	s7,176(sp)
    80007b00:	0b813c23          	sd	s8,184(sp)
    80007b04:	0d913023          	sd	s9,192(sp)
    80007b08:	0da13423          	sd	s10,200(sp)
    80007b0c:	0db13823          	sd	s11,208(sp)
    80007b10:	0dc13c23          	sd	t3,216(sp)
    80007b14:	0fd13023          	sd	t4,224(sp)
    80007b18:	0fe13423          	sd	t5,232(sp)
    80007b1c:	0ff13823          	sd	t6,240(sp)
    80007b20:	ccdff0ef          	jal	ra,800077ec <kerneltrap>
    80007b24:	00013083          	ld	ra,0(sp)
    80007b28:	00813103          	ld	sp,8(sp)
    80007b2c:	01013183          	ld	gp,16(sp)
    80007b30:	02013283          	ld	t0,32(sp)
    80007b34:	02813303          	ld	t1,40(sp)
    80007b38:	03013383          	ld	t2,48(sp)
    80007b3c:	03813403          	ld	s0,56(sp)
    80007b40:	04013483          	ld	s1,64(sp)
    80007b44:	04813503          	ld	a0,72(sp)
    80007b48:	05013583          	ld	a1,80(sp)
    80007b4c:	05813603          	ld	a2,88(sp)
    80007b50:	06013683          	ld	a3,96(sp)
    80007b54:	06813703          	ld	a4,104(sp)
    80007b58:	07013783          	ld	a5,112(sp)
    80007b5c:	07813803          	ld	a6,120(sp)
    80007b60:	08013883          	ld	a7,128(sp)
    80007b64:	08813903          	ld	s2,136(sp)
    80007b68:	09013983          	ld	s3,144(sp)
    80007b6c:	09813a03          	ld	s4,152(sp)
    80007b70:	0a013a83          	ld	s5,160(sp)
    80007b74:	0a813b03          	ld	s6,168(sp)
    80007b78:	0b013b83          	ld	s7,176(sp)
    80007b7c:	0b813c03          	ld	s8,184(sp)
    80007b80:	0c013c83          	ld	s9,192(sp)
    80007b84:	0c813d03          	ld	s10,200(sp)
    80007b88:	0d013d83          	ld	s11,208(sp)
    80007b8c:	0d813e03          	ld	t3,216(sp)
    80007b90:	0e013e83          	ld	t4,224(sp)
    80007b94:	0e813f03          	ld	t5,232(sp)
    80007b98:	0f013f83          	ld	t6,240(sp)
    80007b9c:	10010113          	addi	sp,sp,256
    80007ba0:	10200073          	sret
    80007ba4:	00000013          	nop
    80007ba8:	00000013          	nop
    80007bac:	00000013          	nop

0000000080007bb0 <timervec>:
    80007bb0:	34051573          	csrrw	a0,mscratch,a0
    80007bb4:	00b53023          	sd	a1,0(a0)
    80007bb8:	00c53423          	sd	a2,8(a0)
    80007bbc:	00d53823          	sd	a3,16(a0)
    80007bc0:	01853583          	ld	a1,24(a0)
    80007bc4:	02053603          	ld	a2,32(a0)
    80007bc8:	0005b683          	ld	a3,0(a1)
    80007bcc:	00c686b3          	add	a3,a3,a2
    80007bd0:	00d5b023          	sd	a3,0(a1)
    80007bd4:	00200593          	li	a1,2
    80007bd8:	14459073          	csrw	sip,a1
    80007bdc:	01053683          	ld	a3,16(a0)
    80007be0:	00853603          	ld	a2,8(a0)
    80007be4:	00053583          	ld	a1,0(a0)
    80007be8:	34051573          	csrrw	a0,mscratch,a0
    80007bec:	30200073          	mret

0000000080007bf0 <plicinit>:
    80007bf0:	ff010113          	addi	sp,sp,-16
    80007bf4:	00813423          	sd	s0,8(sp)
    80007bf8:	01010413          	addi	s0,sp,16
    80007bfc:	00813403          	ld	s0,8(sp)
    80007c00:	0c0007b7          	lui	a5,0xc000
    80007c04:	00100713          	li	a4,1
    80007c08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007c0c:	00e7a223          	sw	a4,4(a5)
    80007c10:	01010113          	addi	sp,sp,16
    80007c14:	00008067          	ret

0000000080007c18 <plicinithart>:
    80007c18:	ff010113          	addi	sp,sp,-16
    80007c1c:	00813023          	sd	s0,0(sp)
    80007c20:	00113423          	sd	ra,8(sp)
    80007c24:	01010413          	addi	s0,sp,16
    80007c28:	00000097          	auipc	ra,0x0
    80007c2c:	a44080e7          	jalr	-1468(ra) # 8000766c <cpuid>
    80007c30:	0085171b          	slliw	a4,a0,0x8
    80007c34:	0c0027b7          	lui	a5,0xc002
    80007c38:	00e787b3          	add	a5,a5,a4
    80007c3c:	40200713          	li	a4,1026
    80007c40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007c44:	00813083          	ld	ra,8(sp)
    80007c48:	00013403          	ld	s0,0(sp)
    80007c4c:	00d5151b          	slliw	a0,a0,0xd
    80007c50:	0c2017b7          	lui	a5,0xc201
    80007c54:	00a78533          	add	a0,a5,a0
    80007c58:	00052023          	sw	zero,0(a0)
    80007c5c:	01010113          	addi	sp,sp,16
    80007c60:	00008067          	ret

0000000080007c64 <plic_claim>:
    80007c64:	ff010113          	addi	sp,sp,-16
    80007c68:	00813023          	sd	s0,0(sp)
    80007c6c:	00113423          	sd	ra,8(sp)
    80007c70:	01010413          	addi	s0,sp,16
    80007c74:	00000097          	auipc	ra,0x0
    80007c78:	9f8080e7          	jalr	-1544(ra) # 8000766c <cpuid>
    80007c7c:	00813083          	ld	ra,8(sp)
    80007c80:	00013403          	ld	s0,0(sp)
    80007c84:	00d5151b          	slliw	a0,a0,0xd
    80007c88:	0c2017b7          	lui	a5,0xc201
    80007c8c:	00a78533          	add	a0,a5,a0
    80007c90:	00452503          	lw	a0,4(a0)
    80007c94:	01010113          	addi	sp,sp,16
    80007c98:	00008067          	ret

0000000080007c9c <plic_complete>:
    80007c9c:	fe010113          	addi	sp,sp,-32
    80007ca0:	00813823          	sd	s0,16(sp)
    80007ca4:	00913423          	sd	s1,8(sp)
    80007ca8:	00113c23          	sd	ra,24(sp)
    80007cac:	02010413          	addi	s0,sp,32
    80007cb0:	00050493          	mv	s1,a0
    80007cb4:	00000097          	auipc	ra,0x0
    80007cb8:	9b8080e7          	jalr	-1608(ra) # 8000766c <cpuid>
    80007cbc:	01813083          	ld	ra,24(sp)
    80007cc0:	01013403          	ld	s0,16(sp)
    80007cc4:	00d5179b          	slliw	a5,a0,0xd
    80007cc8:	0c201737          	lui	a4,0xc201
    80007ccc:	00f707b3          	add	a5,a4,a5
    80007cd0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007cd4:	00813483          	ld	s1,8(sp)
    80007cd8:	02010113          	addi	sp,sp,32
    80007cdc:	00008067          	ret

0000000080007ce0 <consolewrite>:
    80007ce0:	fb010113          	addi	sp,sp,-80
    80007ce4:	04813023          	sd	s0,64(sp)
    80007ce8:	04113423          	sd	ra,72(sp)
    80007cec:	02913c23          	sd	s1,56(sp)
    80007cf0:	03213823          	sd	s2,48(sp)
    80007cf4:	03313423          	sd	s3,40(sp)
    80007cf8:	03413023          	sd	s4,32(sp)
    80007cfc:	01513c23          	sd	s5,24(sp)
    80007d00:	05010413          	addi	s0,sp,80
    80007d04:	06c05c63          	blez	a2,80007d7c <consolewrite+0x9c>
    80007d08:	00060993          	mv	s3,a2
    80007d0c:	00050a13          	mv	s4,a0
    80007d10:	00058493          	mv	s1,a1
    80007d14:	00000913          	li	s2,0
    80007d18:	fff00a93          	li	s5,-1
    80007d1c:	01c0006f          	j	80007d38 <consolewrite+0x58>
    80007d20:	fbf44503          	lbu	a0,-65(s0)
    80007d24:	0019091b          	addiw	s2,s2,1
    80007d28:	00148493          	addi	s1,s1,1
    80007d2c:	00001097          	auipc	ra,0x1
    80007d30:	a9c080e7          	jalr	-1380(ra) # 800087c8 <uartputc>
    80007d34:	03298063          	beq	s3,s2,80007d54 <consolewrite+0x74>
    80007d38:	00048613          	mv	a2,s1
    80007d3c:	00100693          	li	a3,1
    80007d40:	000a0593          	mv	a1,s4
    80007d44:	fbf40513          	addi	a0,s0,-65
    80007d48:	00000097          	auipc	ra,0x0
    80007d4c:	9dc080e7          	jalr	-1572(ra) # 80007724 <either_copyin>
    80007d50:	fd5518e3          	bne	a0,s5,80007d20 <consolewrite+0x40>
    80007d54:	04813083          	ld	ra,72(sp)
    80007d58:	04013403          	ld	s0,64(sp)
    80007d5c:	03813483          	ld	s1,56(sp)
    80007d60:	02813983          	ld	s3,40(sp)
    80007d64:	02013a03          	ld	s4,32(sp)
    80007d68:	01813a83          	ld	s5,24(sp)
    80007d6c:	00090513          	mv	a0,s2
    80007d70:	03013903          	ld	s2,48(sp)
    80007d74:	05010113          	addi	sp,sp,80
    80007d78:	00008067          	ret
    80007d7c:	00000913          	li	s2,0
    80007d80:	fd5ff06f          	j	80007d54 <consolewrite+0x74>

0000000080007d84 <consoleread>:
    80007d84:	f9010113          	addi	sp,sp,-112
    80007d88:	06813023          	sd	s0,96(sp)
    80007d8c:	04913c23          	sd	s1,88(sp)
    80007d90:	05213823          	sd	s2,80(sp)
    80007d94:	05313423          	sd	s3,72(sp)
    80007d98:	05413023          	sd	s4,64(sp)
    80007d9c:	03513c23          	sd	s5,56(sp)
    80007da0:	03613823          	sd	s6,48(sp)
    80007da4:	03713423          	sd	s7,40(sp)
    80007da8:	03813023          	sd	s8,32(sp)
    80007dac:	06113423          	sd	ra,104(sp)
    80007db0:	01913c23          	sd	s9,24(sp)
    80007db4:	07010413          	addi	s0,sp,112
    80007db8:	00060b93          	mv	s7,a2
    80007dbc:	00050913          	mv	s2,a0
    80007dc0:	00058c13          	mv	s8,a1
    80007dc4:	00060b1b          	sext.w	s6,a2
    80007dc8:	00006497          	auipc	s1,0x6
    80007dcc:	1f048493          	addi	s1,s1,496 # 8000dfb8 <cons>
    80007dd0:	00400993          	li	s3,4
    80007dd4:	fff00a13          	li	s4,-1
    80007dd8:	00a00a93          	li	s5,10
    80007ddc:	05705e63          	blez	s7,80007e38 <consoleread+0xb4>
    80007de0:	09c4a703          	lw	a4,156(s1)
    80007de4:	0984a783          	lw	a5,152(s1)
    80007de8:	0007071b          	sext.w	a4,a4
    80007dec:	08e78463          	beq	a5,a4,80007e74 <consoleread+0xf0>
    80007df0:	07f7f713          	andi	a4,a5,127
    80007df4:	00e48733          	add	a4,s1,a4
    80007df8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007dfc:	0017869b          	addiw	a3,a5,1
    80007e00:	08d4ac23          	sw	a3,152(s1)
    80007e04:	00070c9b          	sext.w	s9,a4
    80007e08:	0b370663          	beq	a4,s3,80007eb4 <consoleread+0x130>
    80007e0c:	00100693          	li	a3,1
    80007e10:	f9f40613          	addi	a2,s0,-97
    80007e14:	000c0593          	mv	a1,s8
    80007e18:	00090513          	mv	a0,s2
    80007e1c:	f8e40fa3          	sb	a4,-97(s0)
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	8b8080e7          	jalr	-1864(ra) # 800076d8 <either_copyout>
    80007e28:	01450863          	beq	a0,s4,80007e38 <consoleread+0xb4>
    80007e2c:	001c0c13          	addi	s8,s8,1
    80007e30:	fffb8b9b          	addiw	s7,s7,-1
    80007e34:	fb5c94e3          	bne	s9,s5,80007ddc <consoleread+0x58>
    80007e38:	000b851b          	sext.w	a0,s7
    80007e3c:	06813083          	ld	ra,104(sp)
    80007e40:	06013403          	ld	s0,96(sp)
    80007e44:	05813483          	ld	s1,88(sp)
    80007e48:	05013903          	ld	s2,80(sp)
    80007e4c:	04813983          	ld	s3,72(sp)
    80007e50:	04013a03          	ld	s4,64(sp)
    80007e54:	03813a83          	ld	s5,56(sp)
    80007e58:	02813b83          	ld	s7,40(sp)
    80007e5c:	02013c03          	ld	s8,32(sp)
    80007e60:	01813c83          	ld	s9,24(sp)
    80007e64:	40ab053b          	subw	a0,s6,a0
    80007e68:	03013b03          	ld	s6,48(sp)
    80007e6c:	07010113          	addi	sp,sp,112
    80007e70:	00008067          	ret
    80007e74:	00001097          	auipc	ra,0x1
    80007e78:	1d8080e7          	jalr	472(ra) # 8000904c <push_on>
    80007e7c:	0984a703          	lw	a4,152(s1)
    80007e80:	09c4a783          	lw	a5,156(s1)
    80007e84:	0007879b          	sext.w	a5,a5
    80007e88:	fef70ce3          	beq	a4,a5,80007e80 <consoleread+0xfc>
    80007e8c:	00001097          	auipc	ra,0x1
    80007e90:	234080e7          	jalr	564(ra) # 800090c0 <pop_on>
    80007e94:	0984a783          	lw	a5,152(s1)
    80007e98:	07f7f713          	andi	a4,a5,127
    80007e9c:	00e48733          	add	a4,s1,a4
    80007ea0:	01874703          	lbu	a4,24(a4)
    80007ea4:	0017869b          	addiw	a3,a5,1
    80007ea8:	08d4ac23          	sw	a3,152(s1)
    80007eac:	00070c9b          	sext.w	s9,a4
    80007eb0:	f5371ee3          	bne	a4,s3,80007e0c <consoleread+0x88>
    80007eb4:	000b851b          	sext.w	a0,s7
    80007eb8:	f96bf2e3          	bgeu	s7,s6,80007e3c <consoleread+0xb8>
    80007ebc:	08f4ac23          	sw	a5,152(s1)
    80007ec0:	f7dff06f          	j	80007e3c <consoleread+0xb8>

0000000080007ec4 <consputc>:
    80007ec4:	10000793          	li	a5,256
    80007ec8:	00f50663          	beq	a0,a5,80007ed4 <consputc+0x10>
    80007ecc:	00001317          	auipc	t1,0x1
    80007ed0:	9f430067          	jr	-1548(t1) # 800088c0 <uartputc_sync>
    80007ed4:	ff010113          	addi	sp,sp,-16
    80007ed8:	00113423          	sd	ra,8(sp)
    80007edc:	00813023          	sd	s0,0(sp)
    80007ee0:	01010413          	addi	s0,sp,16
    80007ee4:	00800513          	li	a0,8
    80007ee8:	00001097          	auipc	ra,0x1
    80007eec:	9d8080e7          	jalr	-1576(ra) # 800088c0 <uartputc_sync>
    80007ef0:	02000513          	li	a0,32
    80007ef4:	00001097          	auipc	ra,0x1
    80007ef8:	9cc080e7          	jalr	-1588(ra) # 800088c0 <uartputc_sync>
    80007efc:	00013403          	ld	s0,0(sp)
    80007f00:	00813083          	ld	ra,8(sp)
    80007f04:	00800513          	li	a0,8
    80007f08:	01010113          	addi	sp,sp,16
    80007f0c:	00001317          	auipc	t1,0x1
    80007f10:	9b430067          	jr	-1612(t1) # 800088c0 <uartputc_sync>

0000000080007f14 <consoleintr>:
    80007f14:	fe010113          	addi	sp,sp,-32
    80007f18:	00813823          	sd	s0,16(sp)
    80007f1c:	00913423          	sd	s1,8(sp)
    80007f20:	01213023          	sd	s2,0(sp)
    80007f24:	00113c23          	sd	ra,24(sp)
    80007f28:	02010413          	addi	s0,sp,32
    80007f2c:	00006917          	auipc	s2,0x6
    80007f30:	08c90913          	addi	s2,s2,140 # 8000dfb8 <cons>
    80007f34:	00050493          	mv	s1,a0
    80007f38:	00090513          	mv	a0,s2
    80007f3c:	00001097          	auipc	ra,0x1
    80007f40:	e40080e7          	jalr	-448(ra) # 80008d7c <acquire>
    80007f44:	02048c63          	beqz	s1,80007f7c <consoleintr+0x68>
    80007f48:	0a092783          	lw	a5,160(s2)
    80007f4c:	09892703          	lw	a4,152(s2)
    80007f50:	07f00693          	li	a3,127
    80007f54:	40e7873b          	subw	a4,a5,a4
    80007f58:	02e6e263          	bltu	a3,a4,80007f7c <consoleintr+0x68>
    80007f5c:	00d00713          	li	a4,13
    80007f60:	04e48063          	beq	s1,a4,80007fa0 <consoleintr+0x8c>
    80007f64:	07f7f713          	andi	a4,a5,127
    80007f68:	00e90733          	add	a4,s2,a4
    80007f6c:	0017879b          	addiw	a5,a5,1
    80007f70:	0af92023          	sw	a5,160(s2)
    80007f74:	00970c23          	sb	s1,24(a4)
    80007f78:	08f92e23          	sw	a5,156(s2)
    80007f7c:	01013403          	ld	s0,16(sp)
    80007f80:	01813083          	ld	ra,24(sp)
    80007f84:	00813483          	ld	s1,8(sp)
    80007f88:	00013903          	ld	s2,0(sp)
    80007f8c:	00006517          	auipc	a0,0x6
    80007f90:	02c50513          	addi	a0,a0,44 # 8000dfb8 <cons>
    80007f94:	02010113          	addi	sp,sp,32
    80007f98:	00001317          	auipc	t1,0x1
    80007f9c:	eb030067          	jr	-336(t1) # 80008e48 <release>
    80007fa0:	00a00493          	li	s1,10
    80007fa4:	fc1ff06f          	j	80007f64 <consoleintr+0x50>

0000000080007fa8 <consoleinit>:
    80007fa8:	fe010113          	addi	sp,sp,-32
    80007fac:	00113c23          	sd	ra,24(sp)
    80007fb0:	00813823          	sd	s0,16(sp)
    80007fb4:	00913423          	sd	s1,8(sp)
    80007fb8:	02010413          	addi	s0,sp,32
    80007fbc:	00006497          	auipc	s1,0x6
    80007fc0:	ffc48493          	addi	s1,s1,-4 # 8000dfb8 <cons>
    80007fc4:	00048513          	mv	a0,s1
    80007fc8:	00002597          	auipc	a1,0x2
    80007fcc:	78058593          	addi	a1,a1,1920 # 8000a748 <CONSOLE_STATUS+0x738>
    80007fd0:	00001097          	auipc	ra,0x1
    80007fd4:	d88080e7          	jalr	-632(ra) # 80008d58 <initlock>
    80007fd8:	00000097          	auipc	ra,0x0
    80007fdc:	7ac080e7          	jalr	1964(ra) # 80008784 <uartinit>
    80007fe0:	01813083          	ld	ra,24(sp)
    80007fe4:	01013403          	ld	s0,16(sp)
    80007fe8:	00000797          	auipc	a5,0x0
    80007fec:	d9c78793          	addi	a5,a5,-612 # 80007d84 <consoleread>
    80007ff0:	0af4bc23          	sd	a5,184(s1)
    80007ff4:	00000797          	auipc	a5,0x0
    80007ff8:	cec78793          	addi	a5,a5,-788 # 80007ce0 <consolewrite>
    80007ffc:	0cf4b023          	sd	a5,192(s1)
    80008000:	00813483          	ld	s1,8(sp)
    80008004:	02010113          	addi	sp,sp,32
    80008008:	00008067          	ret

000000008000800c <console_read>:
    8000800c:	ff010113          	addi	sp,sp,-16
    80008010:	00813423          	sd	s0,8(sp)
    80008014:	01010413          	addi	s0,sp,16
    80008018:	00813403          	ld	s0,8(sp)
    8000801c:	00006317          	auipc	t1,0x6
    80008020:	05433303          	ld	t1,84(t1) # 8000e070 <devsw+0x10>
    80008024:	01010113          	addi	sp,sp,16
    80008028:	00030067          	jr	t1

000000008000802c <console_write>:
    8000802c:	ff010113          	addi	sp,sp,-16
    80008030:	00813423          	sd	s0,8(sp)
    80008034:	01010413          	addi	s0,sp,16
    80008038:	00813403          	ld	s0,8(sp)
    8000803c:	00006317          	auipc	t1,0x6
    80008040:	03c33303          	ld	t1,60(t1) # 8000e078 <devsw+0x18>
    80008044:	01010113          	addi	sp,sp,16
    80008048:	00030067          	jr	t1

000000008000804c <panic>:
    8000804c:	fe010113          	addi	sp,sp,-32
    80008050:	00113c23          	sd	ra,24(sp)
    80008054:	00813823          	sd	s0,16(sp)
    80008058:	00913423          	sd	s1,8(sp)
    8000805c:	02010413          	addi	s0,sp,32
    80008060:	00050493          	mv	s1,a0
    80008064:	00002517          	auipc	a0,0x2
    80008068:	6ec50513          	addi	a0,a0,1772 # 8000a750 <CONSOLE_STATUS+0x740>
    8000806c:	00006797          	auipc	a5,0x6
    80008070:	0a07a623          	sw	zero,172(a5) # 8000e118 <pr+0x18>
    80008074:	00000097          	auipc	ra,0x0
    80008078:	034080e7          	jalr	52(ra) # 800080a8 <__printf>
    8000807c:	00048513          	mv	a0,s1
    80008080:	00000097          	auipc	ra,0x0
    80008084:	028080e7          	jalr	40(ra) # 800080a8 <__printf>
    80008088:	00002517          	auipc	a0,0x2
    8000808c:	43850513          	addi	a0,a0,1080 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80008090:	00000097          	auipc	ra,0x0
    80008094:	018080e7          	jalr	24(ra) # 800080a8 <__printf>
    80008098:	00100793          	li	a5,1
    8000809c:	00005717          	auipc	a4,0x5
    800080a0:	b0f72e23          	sw	a5,-1252(a4) # 8000cbb8 <panicked>
    800080a4:	0000006f          	j	800080a4 <panic+0x58>

00000000800080a8 <__printf>:
    800080a8:	f3010113          	addi	sp,sp,-208
    800080ac:	08813023          	sd	s0,128(sp)
    800080b0:	07313423          	sd	s3,104(sp)
    800080b4:	09010413          	addi	s0,sp,144
    800080b8:	05813023          	sd	s8,64(sp)
    800080bc:	08113423          	sd	ra,136(sp)
    800080c0:	06913c23          	sd	s1,120(sp)
    800080c4:	07213823          	sd	s2,112(sp)
    800080c8:	07413023          	sd	s4,96(sp)
    800080cc:	05513c23          	sd	s5,88(sp)
    800080d0:	05613823          	sd	s6,80(sp)
    800080d4:	05713423          	sd	s7,72(sp)
    800080d8:	03913c23          	sd	s9,56(sp)
    800080dc:	03a13823          	sd	s10,48(sp)
    800080e0:	03b13423          	sd	s11,40(sp)
    800080e4:	00006317          	auipc	t1,0x6
    800080e8:	01c30313          	addi	t1,t1,28 # 8000e100 <pr>
    800080ec:	01832c03          	lw	s8,24(t1)
    800080f0:	00b43423          	sd	a1,8(s0)
    800080f4:	00c43823          	sd	a2,16(s0)
    800080f8:	00d43c23          	sd	a3,24(s0)
    800080fc:	02e43023          	sd	a4,32(s0)
    80008100:	02f43423          	sd	a5,40(s0)
    80008104:	03043823          	sd	a6,48(s0)
    80008108:	03143c23          	sd	a7,56(s0)
    8000810c:	00050993          	mv	s3,a0
    80008110:	4a0c1663          	bnez	s8,800085bc <__printf+0x514>
    80008114:	60098c63          	beqz	s3,8000872c <__printf+0x684>
    80008118:	0009c503          	lbu	a0,0(s3)
    8000811c:	00840793          	addi	a5,s0,8
    80008120:	f6f43c23          	sd	a5,-136(s0)
    80008124:	00000493          	li	s1,0
    80008128:	22050063          	beqz	a0,80008348 <__printf+0x2a0>
    8000812c:	00002a37          	lui	s4,0x2
    80008130:	00018ab7          	lui	s5,0x18
    80008134:	000f4b37          	lui	s6,0xf4
    80008138:	00989bb7          	lui	s7,0x989
    8000813c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008140:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008144:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008148:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000814c:	00148c9b          	addiw	s9,s1,1
    80008150:	02500793          	li	a5,37
    80008154:	01998933          	add	s2,s3,s9
    80008158:	38f51263          	bne	a0,a5,800084dc <__printf+0x434>
    8000815c:	00094783          	lbu	a5,0(s2)
    80008160:	00078c9b          	sext.w	s9,a5
    80008164:	1e078263          	beqz	a5,80008348 <__printf+0x2a0>
    80008168:	0024849b          	addiw	s1,s1,2
    8000816c:	07000713          	li	a4,112
    80008170:	00998933          	add	s2,s3,s1
    80008174:	38e78a63          	beq	a5,a4,80008508 <__printf+0x460>
    80008178:	20f76863          	bltu	a4,a5,80008388 <__printf+0x2e0>
    8000817c:	42a78863          	beq	a5,a0,800085ac <__printf+0x504>
    80008180:	06400713          	li	a4,100
    80008184:	40e79663          	bne	a5,a4,80008590 <__printf+0x4e8>
    80008188:	f7843783          	ld	a5,-136(s0)
    8000818c:	0007a603          	lw	a2,0(a5)
    80008190:	00878793          	addi	a5,a5,8
    80008194:	f6f43c23          	sd	a5,-136(s0)
    80008198:	42064a63          	bltz	a2,800085cc <__printf+0x524>
    8000819c:	00a00713          	li	a4,10
    800081a0:	02e677bb          	remuw	a5,a2,a4
    800081a4:	00002d97          	auipc	s11,0x2
    800081a8:	5d4d8d93          	addi	s11,s11,1492 # 8000a778 <digits>
    800081ac:	00900593          	li	a1,9
    800081b0:	0006051b          	sext.w	a0,a2
    800081b4:	00000c93          	li	s9,0
    800081b8:	02079793          	slli	a5,a5,0x20
    800081bc:	0207d793          	srli	a5,a5,0x20
    800081c0:	00fd87b3          	add	a5,s11,a5
    800081c4:	0007c783          	lbu	a5,0(a5)
    800081c8:	02e656bb          	divuw	a3,a2,a4
    800081cc:	f8f40023          	sb	a5,-128(s0)
    800081d0:	14c5d863          	bge	a1,a2,80008320 <__printf+0x278>
    800081d4:	06300593          	li	a1,99
    800081d8:	00100c93          	li	s9,1
    800081dc:	02e6f7bb          	remuw	a5,a3,a4
    800081e0:	02079793          	slli	a5,a5,0x20
    800081e4:	0207d793          	srli	a5,a5,0x20
    800081e8:	00fd87b3          	add	a5,s11,a5
    800081ec:	0007c783          	lbu	a5,0(a5)
    800081f0:	02e6d73b          	divuw	a4,a3,a4
    800081f4:	f8f400a3          	sb	a5,-127(s0)
    800081f8:	12a5f463          	bgeu	a1,a0,80008320 <__printf+0x278>
    800081fc:	00a00693          	li	a3,10
    80008200:	00900593          	li	a1,9
    80008204:	02d777bb          	remuw	a5,a4,a3
    80008208:	02079793          	slli	a5,a5,0x20
    8000820c:	0207d793          	srli	a5,a5,0x20
    80008210:	00fd87b3          	add	a5,s11,a5
    80008214:	0007c503          	lbu	a0,0(a5)
    80008218:	02d757bb          	divuw	a5,a4,a3
    8000821c:	f8a40123          	sb	a0,-126(s0)
    80008220:	48e5f263          	bgeu	a1,a4,800086a4 <__printf+0x5fc>
    80008224:	06300513          	li	a0,99
    80008228:	02d7f5bb          	remuw	a1,a5,a3
    8000822c:	02059593          	slli	a1,a1,0x20
    80008230:	0205d593          	srli	a1,a1,0x20
    80008234:	00bd85b3          	add	a1,s11,a1
    80008238:	0005c583          	lbu	a1,0(a1)
    8000823c:	02d7d7bb          	divuw	a5,a5,a3
    80008240:	f8b401a3          	sb	a1,-125(s0)
    80008244:	48e57263          	bgeu	a0,a4,800086c8 <__printf+0x620>
    80008248:	3e700513          	li	a0,999
    8000824c:	02d7f5bb          	remuw	a1,a5,a3
    80008250:	02059593          	slli	a1,a1,0x20
    80008254:	0205d593          	srli	a1,a1,0x20
    80008258:	00bd85b3          	add	a1,s11,a1
    8000825c:	0005c583          	lbu	a1,0(a1)
    80008260:	02d7d7bb          	divuw	a5,a5,a3
    80008264:	f8b40223          	sb	a1,-124(s0)
    80008268:	46e57663          	bgeu	a0,a4,800086d4 <__printf+0x62c>
    8000826c:	02d7f5bb          	remuw	a1,a5,a3
    80008270:	02059593          	slli	a1,a1,0x20
    80008274:	0205d593          	srli	a1,a1,0x20
    80008278:	00bd85b3          	add	a1,s11,a1
    8000827c:	0005c583          	lbu	a1,0(a1)
    80008280:	02d7d7bb          	divuw	a5,a5,a3
    80008284:	f8b402a3          	sb	a1,-123(s0)
    80008288:	46ea7863          	bgeu	s4,a4,800086f8 <__printf+0x650>
    8000828c:	02d7f5bb          	remuw	a1,a5,a3
    80008290:	02059593          	slli	a1,a1,0x20
    80008294:	0205d593          	srli	a1,a1,0x20
    80008298:	00bd85b3          	add	a1,s11,a1
    8000829c:	0005c583          	lbu	a1,0(a1)
    800082a0:	02d7d7bb          	divuw	a5,a5,a3
    800082a4:	f8b40323          	sb	a1,-122(s0)
    800082a8:	3eeaf863          	bgeu	s5,a4,80008698 <__printf+0x5f0>
    800082ac:	02d7f5bb          	remuw	a1,a5,a3
    800082b0:	02059593          	slli	a1,a1,0x20
    800082b4:	0205d593          	srli	a1,a1,0x20
    800082b8:	00bd85b3          	add	a1,s11,a1
    800082bc:	0005c583          	lbu	a1,0(a1)
    800082c0:	02d7d7bb          	divuw	a5,a5,a3
    800082c4:	f8b403a3          	sb	a1,-121(s0)
    800082c8:	42eb7e63          	bgeu	s6,a4,80008704 <__printf+0x65c>
    800082cc:	02d7f5bb          	remuw	a1,a5,a3
    800082d0:	02059593          	slli	a1,a1,0x20
    800082d4:	0205d593          	srli	a1,a1,0x20
    800082d8:	00bd85b3          	add	a1,s11,a1
    800082dc:	0005c583          	lbu	a1,0(a1)
    800082e0:	02d7d7bb          	divuw	a5,a5,a3
    800082e4:	f8b40423          	sb	a1,-120(s0)
    800082e8:	42ebfc63          	bgeu	s7,a4,80008720 <__printf+0x678>
    800082ec:	02079793          	slli	a5,a5,0x20
    800082f0:	0207d793          	srli	a5,a5,0x20
    800082f4:	00fd8db3          	add	s11,s11,a5
    800082f8:	000dc703          	lbu	a4,0(s11)
    800082fc:	00a00793          	li	a5,10
    80008300:	00900c93          	li	s9,9
    80008304:	f8e404a3          	sb	a4,-119(s0)
    80008308:	00065c63          	bgez	a2,80008320 <__printf+0x278>
    8000830c:	f9040713          	addi	a4,s0,-112
    80008310:	00f70733          	add	a4,a4,a5
    80008314:	02d00693          	li	a3,45
    80008318:	fed70823          	sb	a3,-16(a4)
    8000831c:	00078c93          	mv	s9,a5
    80008320:	f8040793          	addi	a5,s0,-128
    80008324:	01978cb3          	add	s9,a5,s9
    80008328:	f7f40d13          	addi	s10,s0,-129
    8000832c:	000cc503          	lbu	a0,0(s9)
    80008330:	fffc8c93          	addi	s9,s9,-1
    80008334:	00000097          	auipc	ra,0x0
    80008338:	b90080e7          	jalr	-1136(ra) # 80007ec4 <consputc>
    8000833c:	ffac98e3          	bne	s9,s10,8000832c <__printf+0x284>
    80008340:	00094503          	lbu	a0,0(s2)
    80008344:	e00514e3          	bnez	a0,8000814c <__printf+0xa4>
    80008348:	1a0c1663          	bnez	s8,800084f4 <__printf+0x44c>
    8000834c:	08813083          	ld	ra,136(sp)
    80008350:	08013403          	ld	s0,128(sp)
    80008354:	07813483          	ld	s1,120(sp)
    80008358:	07013903          	ld	s2,112(sp)
    8000835c:	06813983          	ld	s3,104(sp)
    80008360:	06013a03          	ld	s4,96(sp)
    80008364:	05813a83          	ld	s5,88(sp)
    80008368:	05013b03          	ld	s6,80(sp)
    8000836c:	04813b83          	ld	s7,72(sp)
    80008370:	04013c03          	ld	s8,64(sp)
    80008374:	03813c83          	ld	s9,56(sp)
    80008378:	03013d03          	ld	s10,48(sp)
    8000837c:	02813d83          	ld	s11,40(sp)
    80008380:	0d010113          	addi	sp,sp,208
    80008384:	00008067          	ret
    80008388:	07300713          	li	a4,115
    8000838c:	1ce78a63          	beq	a5,a4,80008560 <__printf+0x4b8>
    80008390:	07800713          	li	a4,120
    80008394:	1ee79e63          	bne	a5,a4,80008590 <__printf+0x4e8>
    80008398:	f7843783          	ld	a5,-136(s0)
    8000839c:	0007a703          	lw	a4,0(a5)
    800083a0:	00878793          	addi	a5,a5,8
    800083a4:	f6f43c23          	sd	a5,-136(s0)
    800083a8:	28074263          	bltz	a4,8000862c <__printf+0x584>
    800083ac:	00002d97          	auipc	s11,0x2
    800083b0:	3ccd8d93          	addi	s11,s11,972 # 8000a778 <digits>
    800083b4:	00f77793          	andi	a5,a4,15
    800083b8:	00fd87b3          	add	a5,s11,a5
    800083bc:	0007c683          	lbu	a3,0(a5)
    800083c0:	00f00613          	li	a2,15
    800083c4:	0007079b          	sext.w	a5,a4
    800083c8:	f8d40023          	sb	a3,-128(s0)
    800083cc:	0047559b          	srliw	a1,a4,0x4
    800083d0:	0047569b          	srliw	a3,a4,0x4
    800083d4:	00000c93          	li	s9,0
    800083d8:	0ee65063          	bge	a2,a4,800084b8 <__printf+0x410>
    800083dc:	00f6f693          	andi	a3,a3,15
    800083e0:	00dd86b3          	add	a3,s11,a3
    800083e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800083e8:	0087d79b          	srliw	a5,a5,0x8
    800083ec:	00100c93          	li	s9,1
    800083f0:	f8d400a3          	sb	a3,-127(s0)
    800083f4:	0cb67263          	bgeu	a2,a1,800084b8 <__printf+0x410>
    800083f8:	00f7f693          	andi	a3,a5,15
    800083fc:	00dd86b3          	add	a3,s11,a3
    80008400:	0006c583          	lbu	a1,0(a3)
    80008404:	00f00613          	li	a2,15
    80008408:	0047d69b          	srliw	a3,a5,0x4
    8000840c:	f8b40123          	sb	a1,-126(s0)
    80008410:	0047d593          	srli	a1,a5,0x4
    80008414:	28f67e63          	bgeu	a2,a5,800086b0 <__printf+0x608>
    80008418:	00f6f693          	andi	a3,a3,15
    8000841c:	00dd86b3          	add	a3,s11,a3
    80008420:	0006c503          	lbu	a0,0(a3)
    80008424:	0087d813          	srli	a6,a5,0x8
    80008428:	0087d69b          	srliw	a3,a5,0x8
    8000842c:	f8a401a3          	sb	a0,-125(s0)
    80008430:	28b67663          	bgeu	a2,a1,800086bc <__printf+0x614>
    80008434:	00f6f693          	andi	a3,a3,15
    80008438:	00dd86b3          	add	a3,s11,a3
    8000843c:	0006c583          	lbu	a1,0(a3)
    80008440:	00c7d513          	srli	a0,a5,0xc
    80008444:	00c7d69b          	srliw	a3,a5,0xc
    80008448:	f8b40223          	sb	a1,-124(s0)
    8000844c:	29067a63          	bgeu	a2,a6,800086e0 <__printf+0x638>
    80008450:	00f6f693          	andi	a3,a3,15
    80008454:	00dd86b3          	add	a3,s11,a3
    80008458:	0006c583          	lbu	a1,0(a3)
    8000845c:	0107d813          	srli	a6,a5,0x10
    80008460:	0107d69b          	srliw	a3,a5,0x10
    80008464:	f8b402a3          	sb	a1,-123(s0)
    80008468:	28a67263          	bgeu	a2,a0,800086ec <__printf+0x644>
    8000846c:	00f6f693          	andi	a3,a3,15
    80008470:	00dd86b3          	add	a3,s11,a3
    80008474:	0006c683          	lbu	a3,0(a3)
    80008478:	0147d79b          	srliw	a5,a5,0x14
    8000847c:	f8d40323          	sb	a3,-122(s0)
    80008480:	21067663          	bgeu	a2,a6,8000868c <__printf+0x5e4>
    80008484:	02079793          	slli	a5,a5,0x20
    80008488:	0207d793          	srli	a5,a5,0x20
    8000848c:	00fd8db3          	add	s11,s11,a5
    80008490:	000dc683          	lbu	a3,0(s11)
    80008494:	00800793          	li	a5,8
    80008498:	00700c93          	li	s9,7
    8000849c:	f8d403a3          	sb	a3,-121(s0)
    800084a0:	00075c63          	bgez	a4,800084b8 <__printf+0x410>
    800084a4:	f9040713          	addi	a4,s0,-112
    800084a8:	00f70733          	add	a4,a4,a5
    800084ac:	02d00693          	li	a3,45
    800084b0:	fed70823          	sb	a3,-16(a4)
    800084b4:	00078c93          	mv	s9,a5
    800084b8:	f8040793          	addi	a5,s0,-128
    800084bc:	01978cb3          	add	s9,a5,s9
    800084c0:	f7f40d13          	addi	s10,s0,-129
    800084c4:	000cc503          	lbu	a0,0(s9)
    800084c8:	fffc8c93          	addi	s9,s9,-1
    800084cc:	00000097          	auipc	ra,0x0
    800084d0:	9f8080e7          	jalr	-1544(ra) # 80007ec4 <consputc>
    800084d4:	ff9d18e3          	bne	s10,s9,800084c4 <__printf+0x41c>
    800084d8:	0100006f          	j	800084e8 <__printf+0x440>
    800084dc:	00000097          	auipc	ra,0x0
    800084e0:	9e8080e7          	jalr	-1560(ra) # 80007ec4 <consputc>
    800084e4:	000c8493          	mv	s1,s9
    800084e8:	00094503          	lbu	a0,0(s2)
    800084ec:	c60510e3          	bnez	a0,8000814c <__printf+0xa4>
    800084f0:	e40c0ee3          	beqz	s8,8000834c <__printf+0x2a4>
    800084f4:	00006517          	auipc	a0,0x6
    800084f8:	c0c50513          	addi	a0,a0,-1012 # 8000e100 <pr>
    800084fc:	00001097          	auipc	ra,0x1
    80008500:	94c080e7          	jalr	-1716(ra) # 80008e48 <release>
    80008504:	e49ff06f          	j	8000834c <__printf+0x2a4>
    80008508:	f7843783          	ld	a5,-136(s0)
    8000850c:	03000513          	li	a0,48
    80008510:	01000d13          	li	s10,16
    80008514:	00878713          	addi	a4,a5,8
    80008518:	0007bc83          	ld	s9,0(a5)
    8000851c:	f6e43c23          	sd	a4,-136(s0)
    80008520:	00000097          	auipc	ra,0x0
    80008524:	9a4080e7          	jalr	-1628(ra) # 80007ec4 <consputc>
    80008528:	07800513          	li	a0,120
    8000852c:	00000097          	auipc	ra,0x0
    80008530:	998080e7          	jalr	-1640(ra) # 80007ec4 <consputc>
    80008534:	00002d97          	auipc	s11,0x2
    80008538:	244d8d93          	addi	s11,s11,580 # 8000a778 <digits>
    8000853c:	03ccd793          	srli	a5,s9,0x3c
    80008540:	00fd87b3          	add	a5,s11,a5
    80008544:	0007c503          	lbu	a0,0(a5)
    80008548:	fffd0d1b          	addiw	s10,s10,-1
    8000854c:	004c9c93          	slli	s9,s9,0x4
    80008550:	00000097          	auipc	ra,0x0
    80008554:	974080e7          	jalr	-1676(ra) # 80007ec4 <consputc>
    80008558:	fe0d12e3          	bnez	s10,8000853c <__printf+0x494>
    8000855c:	f8dff06f          	j	800084e8 <__printf+0x440>
    80008560:	f7843783          	ld	a5,-136(s0)
    80008564:	0007bc83          	ld	s9,0(a5)
    80008568:	00878793          	addi	a5,a5,8
    8000856c:	f6f43c23          	sd	a5,-136(s0)
    80008570:	000c9a63          	bnez	s9,80008584 <__printf+0x4dc>
    80008574:	1080006f          	j	8000867c <__printf+0x5d4>
    80008578:	001c8c93          	addi	s9,s9,1
    8000857c:	00000097          	auipc	ra,0x0
    80008580:	948080e7          	jalr	-1720(ra) # 80007ec4 <consputc>
    80008584:	000cc503          	lbu	a0,0(s9)
    80008588:	fe0518e3          	bnez	a0,80008578 <__printf+0x4d0>
    8000858c:	f5dff06f          	j	800084e8 <__printf+0x440>
    80008590:	02500513          	li	a0,37
    80008594:	00000097          	auipc	ra,0x0
    80008598:	930080e7          	jalr	-1744(ra) # 80007ec4 <consputc>
    8000859c:	000c8513          	mv	a0,s9
    800085a0:	00000097          	auipc	ra,0x0
    800085a4:	924080e7          	jalr	-1756(ra) # 80007ec4 <consputc>
    800085a8:	f41ff06f          	j	800084e8 <__printf+0x440>
    800085ac:	02500513          	li	a0,37
    800085b0:	00000097          	auipc	ra,0x0
    800085b4:	914080e7          	jalr	-1772(ra) # 80007ec4 <consputc>
    800085b8:	f31ff06f          	j	800084e8 <__printf+0x440>
    800085bc:	00030513          	mv	a0,t1
    800085c0:	00000097          	auipc	ra,0x0
    800085c4:	7bc080e7          	jalr	1980(ra) # 80008d7c <acquire>
    800085c8:	b4dff06f          	j	80008114 <__printf+0x6c>
    800085cc:	40c0053b          	negw	a0,a2
    800085d0:	00a00713          	li	a4,10
    800085d4:	02e576bb          	remuw	a3,a0,a4
    800085d8:	00002d97          	auipc	s11,0x2
    800085dc:	1a0d8d93          	addi	s11,s11,416 # 8000a778 <digits>
    800085e0:	ff700593          	li	a1,-9
    800085e4:	02069693          	slli	a3,a3,0x20
    800085e8:	0206d693          	srli	a3,a3,0x20
    800085ec:	00dd86b3          	add	a3,s11,a3
    800085f0:	0006c683          	lbu	a3,0(a3)
    800085f4:	02e557bb          	divuw	a5,a0,a4
    800085f8:	f8d40023          	sb	a3,-128(s0)
    800085fc:	10b65e63          	bge	a2,a1,80008718 <__printf+0x670>
    80008600:	06300593          	li	a1,99
    80008604:	02e7f6bb          	remuw	a3,a5,a4
    80008608:	02069693          	slli	a3,a3,0x20
    8000860c:	0206d693          	srli	a3,a3,0x20
    80008610:	00dd86b3          	add	a3,s11,a3
    80008614:	0006c683          	lbu	a3,0(a3)
    80008618:	02e7d73b          	divuw	a4,a5,a4
    8000861c:	00200793          	li	a5,2
    80008620:	f8d400a3          	sb	a3,-127(s0)
    80008624:	bca5ece3          	bltu	a1,a0,800081fc <__printf+0x154>
    80008628:	ce5ff06f          	j	8000830c <__printf+0x264>
    8000862c:	40e007bb          	negw	a5,a4
    80008630:	00002d97          	auipc	s11,0x2
    80008634:	148d8d93          	addi	s11,s11,328 # 8000a778 <digits>
    80008638:	00f7f693          	andi	a3,a5,15
    8000863c:	00dd86b3          	add	a3,s11,a3
    80008640:	0006c583          	lbu	a1,0(a3)
    80008644:	ff100613          	li	a2,-15
    80008648:	0047d69b          	srliw	a3,a5,0x4
    8000864c:	f8b40023          	sb	a1,-128(s0)
    80008650:	0047d59b          	srliw	a1,a5,0x4
    80008654:	0ac75e63          	bge	a4,a2,80008710 <__printf+0x668>
    80008658:	00f6f693          	andi	a3,a3,15
    8000865c:	00dd86b3          	add	a3,s11,a3
    80008660:	0006c603          	lbu	a2,0(a3)
    80008664:	00f00693          	li	a3,15
    80008668:	0087d79b          	srliw	a5,a5,0x8
    8000866c:	f8c400a3          	sb	a2,-127(s0)
    80008670:	d8b6e4e3          	bltu	a3,a1,800083f8 <__printf+0x350>
    80008674:	00200793          	li	a5,2
    80008678:	e2dff06f          	j	800084a4 <__printf+0x3fc>
    8000867c:	00002c97          	auipc	s9,0x2
    80008680:	0dcc8c93          	addi	s9,s9,220 # 8000a758 <CONSOLE_STATUS+0x748>
    80008684:	02800513          	li	a0,40
    80008688:	ef1ff06f          	j	80008578 <__printf+0x4d0>
    8000868c:	00700793          	li	a5,7
    80008690:	00600c93          	li	s9,6
    80008694:	e0dff06f          	j	800084a0 <__printf+0x3f8>
    80008698:	00700793          	li	a5,7
    8000869c:	00600c93          	li	s9,6
    800086a0:	c69ff06f          	j	80008308 <__printf+0x260>
    800086a4:	00300793          	li	a5,3
    800086a8:	00200c93          	li	s9,2
    800086ac:	c5dff06f          	j	80008308 <__printf+0x260>
    800086b0:	00300793          	li	a5,3
    800086b4:	00200c93          	li	s9,2
    800086b8:	de9ff06f          	j	800084a0 <__printf+0x3f8>
    800086bc:	00400793          	li	a5,4
    800086c0:	00300c93          	li	s9,3
    800086c4:	dddff06f          	j	800084a0 <__printf+0x3f8>
    800086c8:	00400793          	li	a5,4
    800086cc:	00300c93          	li	s9,3
    800086d0:	c39ff06f          	j	80008308 <__printf+0x260>
    800086d4:	00500793          	li	a5,5
    800086d8:	00400c93          	li	s9,4
    800086dc:	c2dff06f          	j	80008308 <__printf+0x260>
    800086e0:	00500793          	li	a5,5
    800086e4:	00400c93          	li	s9,4
    800086e8:	db9ff06f          	j	800084a0 <__printf+0x3f8>
    800086ec:	00600793          	li	a5,6
    800086f0:	00500c93          	li	s9,5
    800086f4:	dadff06f          	j	800084a0 <__printf+0x3f8>
    800086f8:	00600793          	li	a5,6
    800086fc:	00500c93          	li	s9,5
    80008700:	c09ff06f          	j	80008308 <__printf+0x260>
    80008704:	00800793          	li	a5,8
    80008708:	00700c93          	li	s9,7
    8000870c:	bfdff06f          	j	80008308 <__printf+0x260>
    80008710:	00100793          	li	a5,1
    80008714:	d91ff06f          	j	800084a4 <__printf+0x3fc>
    80008718:	00100793          	li	a5,1
    8000871c:	bf1ff06f          	j	8000830c <__printf+0x264>
    80008720:	00900793          	li	a5,9
    80008724:	00800c93          	li	s9,8
    80008728:	be1ff06f          	j	80008308 <__printf+0x260>
    8000872c:	00002517          	auipc	a0,0x2
    80008730:	03450513          	addi	a0,a0,52 # 8000a760 <CONSOLE_STATUS+0x750>
    80008734:	00000097          	auipc	ra,0x0
    80008738:	918080e7          	jalr	-1768(ra) # 8000804c <panic>

000000008000873c <printfinit>:
    8000873c:	fe010113          	addi	sp,sp,-32
    80008740:	00813823          	sd	s0,16(sp)
    80008744:	00913423          	sd	s1,8(sp)
    80008748:	00113c23          	sd	ra,24(sp)
    8000874c:	02010413          	addi	s0,sp,32
    80008750:	00006497          	auipc	s1,0x6
    80008754:	9b048493          	addi	s1,s1,-1616 # 8000e100 <pr>
    80008758:	00048513          	mv	a0,s1
    8000875c:	00002597          	auipc	a1,0x2
    80008760:	01458593          	addi	a1,a1,20 # 8000a770 <CONSOLE_STATUS+0x760>
    80008764:	00000097          	auipc	ra,0x0
    80008768:	5f4080e7          	jalr	1524(ra) # 80008d58 <initlock>
    8000876c:	01813083          	ld	ra,24(sp)
    80008770:	01013403          	ld	s0,16(sp)
    80008774:	0004ac23          	sw	zero,24(s1)
    80008778:	00813483          	ld	s1,8(sp)
    8000877c:	02010113          	addi	sp,sp,32
    80008780:	00008067          	ret

0000000080008784 <uartinit>:
    80008784:	ff010113          	addi	sp,sp,-16
    80008788:	00813423          	sd	s0,8(sp)
    8000878c:	01010413          	addi	s0,sp,16
    80008790:	100007b7          	lui	a5,0x10000
    80008794:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008798:	f8000713          	li	a4,-128
    8000879c:	00e781a3          	sb	a4,3(a5)
    800087a0:	00300713          	li	a4,3
    800087a4:	00e78023          	sb	a4,0(a5)
    800087a8:	000780a3          	sb	zero,1(a5)
    800087ac:	00e781a3          	sb	a4,3(a5)
    800087b0:	00700693          	li	a3,7
    800087b4:	00d78123          	sb	a3,2(a5)
    800087b8:	00e780a3          	sb	a4,1(a5)
    800087bc:	00813403          	ld	s0,8(sp)
    800087c0:	01010113          	addi	sp,sp,16
    800087c4:	00008067          	ret

00000000800087c8 <uartputc>:
    800087c8:	00004797          	auipc	a5,0x4
    800087cc:	3f07a783          	lw	a5,1008(a5) # 8000cbb8 <panicked>
    800087d0:	00078463          	beqz	a5,800087d8 <uartputc+0x10>
    800087d4:	0000006f          	j	800087d4 <uartputc+0xc>
    800087d8:	fd010113          	addi	sp,sp,-48
    800087dc:	02813023          	sd	s0,32(sp)
    800087e0:	00913c23          	sd	s1,24(sp)
    800087e4:	01213823          	sd	s2,16(sp)
    800087e8:	01313423          	sd	s3,8(sp)
    800087ec:	02113423          	sd	ra,40(sp)
    800087f0:	03010413          	addi	s0,sp,48
    800087f4:	00004917          	auipc	s2,0x4
    800087f8:	3cc90913          	addi	s2,s2,972 # 8000cbc0 <uart_tx_r>
    800087fc:	00093783          	ld	a5,0(s2)
    80008800:	00004497          	auipc	s1,0x4
    80008804:	3c848493          	addi	s1,s1,968 # 8000cbc8 <uart_tx_w>
    80008808:	0004b703          	ld	a4,0(s1)
    8000880c:	02078693          	addi	a3,a5,32
    80008810:	00050993          	mv	s3,a0
    80008814:	02e69c63          	bne	a3,a4,8000884c <uartputc+0x84>
    80008818:	00001097          	auipc	ra,0x1
    8000881c:	834080e7          	jalr	-1996(ra) # 8000904c <push_on>
    80008820:	00093783          	ld	a5,0(s2)
    80008824:	0004b703          	ld	a4,0(s1)
    80008828:	02078793          	addi	a5,a5,32
    8000882c:	00e79463          	bne	a5,a4,80008834 <uartputc+0x6c>
    80008830:	0000006f          	j	80008830 <uartputc+0x68>
    80008834:	00001097          	auipc	ra,0x1
    80008838:	88c080e7          	jalr	-1908(ra) # 800090c0 <pop_on>
    8000883c:	00093783          	ld	a5,0(s2)
    80008840:	0004b703          	ld	a4,0(s1)
    80008844:	02078693          	addi	a3,a5,32
    80008848:	fce688e3          	beq	a3,a4,80008818 <uartputc+0x50>
    8000884c:	01f77693          	andi	a3,a4,31
    80008850:	00006597          	auipc	a1,0x6
    80008854:	8d058593          	addi	a1,a1,-1840 # 8000e120 <uart_tx_buf>
    80008858:	00d586b3          	add	a3,a1,a3
    8000885c:	00170713          	addi	a4,a4,1
    80008860:	01368023          	sb	s3,0(a3)
    80008864:	00e4b023          	sd	a4,0(s1)
    80008868:	10000637          	lui	a2,0x10000
    8000886c:	02f71063          	bne	a4,a5,8000888c <uartputc+0xc4>
    80008870:	0340006f          	j	800088a4 <uartputc+0xdc>
    80008874:	00074703          	lbu	a4,0(a4)
    80008878:	00f93023          	sd	a5,0(s2)
    8000887c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008880:	00093783          	ld	a5,0(s2)
    80008884:	0004b703          	ld	a4,0(s1)
    80008888:	00f70e63          	beq	a4,a5,800088a4 <uartputc+0xdc>
    8000888c:	00564683          	lbu	a3,5(a2)
    80008890:	01f7f713          	andi	a4,a5,31
    80008894:	00e58733          	add	a4,a1,a4
    80008898:	0206f693          	andi	a3,a3,32
    8000889c:	00178793          	addi	a5,a5,1
    800088a0:	fc069ae3          	bnez	a3,80008874 <uartputc+0xac>
    800088a4:	02813083          	ld	ra,40(sp)
    800088a8:	02013403          	ld	s0,32(sp)
    800088ac:	01813483          	ld	s1,24(sp)
    800088b0:	01013903          	ld	s2,16(sp)
    800088b4:	00813983          	ld	s3,8(sp)
    800088b8:	03010113          	addi	sp,sp,48
    800088bc:	00008067          	ret

00000000800088c0 <uartputc_sync>:
    800088c0:	ff010113          	addi	sp,sp,-16
    800088c4:	00813423          	sd	s0,8(sp)
    800088c8:	01010413          	addi	s0,sp,16
    800088cc:	00004717          	auipc	a4,0x4
    800088d0:	2ec72703          	lw	a4,748(a4) # 8000cbb8 <panicked>
    800088d4:	02071663          	bnez	a4,80008900 <uartputc_sync+0x40>
    800088d8:	00050793          	mv	a5,a0
    800088dc:	100006b7          	lui	a3,0x10000
    800088e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800088e4:	02077713          	andi	a4,a4,32
    800088e8:	fe070ce3          	beqz	a4,800088e0 <uartputc_sync+0x20>
    800088ec:	0ff7f793          	andi	a5,a5,255
    800088f0:	00f68023          	sb	a5,0(a3)
    800088f4:	00813403          	ld	s0,8(sp)
    800088f8:	01010113          	addi	sp,sp,16
    800088fc:	00008067          	ret
    80008900:	0000006f          	j	80008900 <uartputc_sync+0x40>

0000000080008904 <uartstart>:
    80008904:	ff010113          	addi	sp,sp,-16
    80008908:	00813423          	sd	s0,8(sp)
    8000890c:	01010413          	addi	s0,sp,16
    80008910:	00004617          	auipc	a2,0x4
    80008914:	2b060613          	addi	a2,a2,688 # 8000cbc0 <uart_tx_r>
    80008918:	00004517          	auipc	a0,0x4
    8000891c:	2b050513          	addi	a0,a0,688 # 8000cbc8 <uart_tx_w>
    80008920:	00063783          	ld	a5,0(a2)
    80008924:	00053703          	ld	a4,0(a0)
    80008928:	04f70263          	beq	a4,a5,8000896c <uartstart+0x68>
    8000892c:	100005b7          	lui	a1,0x10000
    80008930:	00005817          	auipc	a6,0x5
    80008934:	7f080813          	addi	a6,a6,2032 # 8000e120 <uart_tx_buf>
    80008938:	01c0006f          	j	80008954 <uartstart+0x50>
    8000893c:	0006c703          	lbu	a4,0(a3)
    80008940:	00f63023          	sd	a5,0(a2)
    80008944:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008948:	00063783          	ld	a5,0(a2)
    8000894c:	00053703          	ld	a4,0(a0)
    80008950:	00f70e63          	beq	a4,a5,8000896c <uartstart+0x68>
    80008954:	01f7f713          	andi	a4,a5,31
    80008958:	00e806b3          	add	a3,a6,a4
    8000895c:	0055c703          	lbu	a4,5(a1)
    80008960:	00178793          	addi	a5,a5,1
    80008964:	02077713          	andi	a4,a4,32
    80008968:	fc071ae3          	bnez	a4,8000893c <uartstart+0x38>
    8000896c:	00813403          	ld	s0,8(sp)
    80008970:	01010113          	addi	sp,sp,16
    80008974:	00008067          	ret

0000000080008978 <uartgetc>:
    80008978:	ff010113          	addi	sp,sp,-16
    8000897c:	00813423          	sd	s0,8(sp)
    80008980:	01010413          	addi	s0,sp,16
    80008984:	10000737          	lui	a4,0x10000
    80008988:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000898c:	0017f793          	andi	a5,a5,1
    80008990:	00078c63          	beqz	a5,800089a8 <uartgetc+0x30>
    80008994:	00074503          	lbu	a0,0(a4)
    80008998:	0ff57513          	andi	a0,a0,255
    8000899c:	00813403          	ld	s0,8(sp)
    800089a0:	01010113          	addi	sp,sp,16
    800089a4:	00008067          	ret
    800089a8:	fff00513          	li	a0,-1
    800089ac:	ff1ff06f          	j	8000899c <uartgetc+0x24>

00000000800089b0 <uartintr>:
    800089b0:	100007b7          	lui	a5,0x10000
    800089b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800089b8:	0017f793          	andi	a5,a5,1
    800089bc:	0a078463          	beqz	a5,80008a64 <uartintr+0xb4>
    800089c0:	fe010113          	addi	sp,sp,-32
    800089c4:	00813823          	sd	s0,16(sp)
    800089c8:	00913423          	sd	s1,8(sp)
    800089cc:	00113c23          	sd	ra,24(sp)
    800089d0:	02010413          	addi	s0,sp,32
    800089d4:	100004b7          	lui	s1,0x10000
    800089d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800089dc:	0ff57513          	andi	a0,a0,255
    800089e0:	fffff097          	auipc	ra,0xfffff
    800089e4:	534080e7          	jalr	1332(ra) # 80007f14 <consoleintr>
    800089e8:	0054c783          	lbu	a5,5(s1)
    800089ec:	0017f793          	andi	a5,a5,1
    800089f0:	fe0794e3          	bnez	a5,800089d8 <uartintr+0x28>
    800089f4:	00004617          	auipc	a2,0x4
    800089f8:	1cc60613          	addi	a2,a2,460 # 8000cbc0 <uart_tx_r>
    800089fc:	00004517          	auipc	a0,0x4
    80008a00:	1cc50513          	addi	a0,a0,460 # 8000cbc8 <uart_tx_w>
    80008a04:	00063783          	ld	a5,0(a2)
    80008a08:	00053703          	ld	a4,0(a0)
    80008a0c:	04f70263          	beq	a4,a5,80008a50 <uartintr+0xa0>
    80008a10:	100005b7          	lui	a1,0x10000
    80008a14:	00005817          	auipc	a6,0x5
    80008a18:	70c80813          	addi	a6,a6,1804 # 8000e120 <uart_tx_buf>
    80008a1c:	01c0006f          	j	80008a38 <uartintr+0x88>
    80008a20:	0006c703          	lbu	a4,0(a3)
    80008a24:	00f63023          	sd	a5,0(a2)
    80008a28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008a2c:	00063783          	ld	a5,0(a2)
    80008a30:	00053703          	ld	a4,0(a0)
    80008a34:	00f70e63          	beq	a4,a5,80008a50 <uartintr+0xa0>
    80008a38:	01f7f713          	andi	a4,a5,31
    80008a3c:	00e806b3          	add	a3,a6,a4
    80008a40:	0055c703          	lbu	a4,5(a1)
    80008a44:	00178793          	addi	a5,a5,1
    80008a48:	02077713          	andi	a4,a4,32
    80008a4c:	fc071ae3          	bnez	a4,80008a20 <uartintr+0x70>
    80008a50:	01813083          	ld	ra,24(sp)
    80008a54:	01013403          	ld	s0,16(sp)
    80008a58:	00813483          	ld	s1,8(sp)
    80008a5c:	02010113          	addi	sp,sp,32
    80008a60:	00008067          	ret
    80008a64:	00004617          	auipc	a2,0x4
    80008a68:	15c60613          	addi	a2,a2,348 # 8000cbc0 <uart_tx_r>
    80008a6c:	00004517          	auipc	a0,0x4
    80008a70:	15c50513          	addi	a0,a0,348 # 8000cbc8 <uart_tx_w>
    80008a74:	00063783          	ld	a5,0(a2)
    80008a78:	00053703          	ld	a4,0(a0)
    80008a7c:	04f70263          	beq	a4,a5,80008ac0 <uartintr+0x110>
    80008a80:	100005b7          	lui	a1,0x10000
    80008a84:	00005817          	auipc	a6,0x5
    80008a88:	69c80813          	addi	a6,a6,1692 # 8000e120 <uart_tx_buf>
    80008a8c:	01c0006f          	j	80008aa8 <uartintr+0xf8>
    80008a90:	0006c703          	lbu	a4,0(a3)
    80008a94:	00f63023          	sd	a5,0(a2)
    80008a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008a9c:	00063783          	ld	a5,0(a2)
    80008aa0:	00053703          	ld	a4,0(a0)
    80008aa4:	02f70063          	beq	a4,a5,80008ac4 <uartintr+0x114>
    80008aa8:	01f7f713          	andi	a4,a5,31
    80008aac:	00e806b3          	add	a3,a6,a4
    80008ab0:	0055c703          	lbu	a4,5(a1)
    80008ab4:	00178793          	addi	a5,a5,1
    80008ab8:	02077713          	andi	a4,a4,32
    80008abc:	fc071ae3          	bnez	a4,80008a90 <uartintr+0xe0>
    80008ac0:	00008067          	ret
    80008ac4:	00008067          	ret

0000000080008ac8 <kinit>:
    80008ac8:	fc010113          	addi	sp,sp,-64
    80008acc:	02913423          	sd	s1,40(sp)
    80008ad0:	fffff7b7          	lui	a5,0xfffff
    80008ad4:	00006497          	auipc	s1,0x6
    80008ad8:	66b48493          	addi	s1,s1,1643 # 8000f13f <end+0xfff>
    80008adc:	02813823          	sd	s0,48(sp)
    80008ae0:	01313c23          	sd	s3,24(sp)
    80008ae4:	00f4f4b3          	and	s1,s1,a5
    80008ae8:	02113c23          	sd	ra,56(sp)
    80008aec:	03213023          	sd	s2,32(sp)
    80008af0:	01413823          	sd	s4,16(sp)
    80008af4:	01513423          	sd	s5,8(sp)
    80008af8:	04010413          	addi	s0,sp,64
    80008afc:	000017b7          	lui	a5,0x1
    80008b00:	01100993          	li	s3,17
    80008b04:	00f487b3          	add	a5,s1,a5
    80008b08:	01b99993          	slli	s3,s3,0x1b
    80008b0c:	06f9e063          	bltu	s3,a5,80008b6c <kinit+0xa4>
    80008b10:	00005a97          	auipc	s5,0x5
    80008b14:	630a8a93          	addi	s5,s5,1584 # 8000e140 <end>
    80008b18:	0754ec63          	bltu	s1,s5,80008b90 <kinit+0xc8>
    80008b1c:	0734fa63          	bgeu	s1,s3,80008b90 <kinit+0xc8>
    80008b20:	00088a37          	lui	s4,0x88
    80008b24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008b28:	00004917          	auipc	s2,0x4
    80008b2c:	0a890913          	addi	s2,s2,168 # 8000cbd0 <kmem>
    80008b30:	00ca1a13          	slli	s4,s4,0xc
    80008b34:	0140006f          	j	80008b48 <kinit+0x80>
    80008b38:	000017b7          	lui	a5,0x1
    80008b3c:	00f484b3          	add	s1,s1,a5
    80008b40:	0554e863          	bltu	s1,s5,80008b90 <kinit+0xc8>
    80008b44:	0534f663          	bgeu	s1,s3,80008b90 <kinit+0xc8>
    80008b48:	00001637          	lui	a2,0x1
    80008b4c:	00100593          	li	a1,1
    80008b50:	00048513          	mv	a0,s1
    80008b54:	00000097          	auipc	ra,0x0
    80008b58:	5e4080e7          	jalr	1508(ra) # 80009138 <__memset>
    80008b5c:	00093783          	ld	a5,0(s2)
    80008b60:	00f4b023          	sd	a5,0(s1)
    80008b64:	00993023          	sd	s1,0(s2)
    80008b68:	fd4498e3          	bne	s1,s4,80008b38 <kinit+0x70>
    80008b6c:	03813083          	ld	ra,56(sp)
    80008b70:	03013403          	ld	s0,48(sp)
    80008b74:	02813483          	ld	s1,40(sp)
    80008b78:	02013903          	ld	s2,32(sp)
    80008b7c:	01813983          	ld	s3,24(sp)
    80008b80:	01013a03          	ld	s4,16(sp)
    80008b84:	00813a83          	ld	s5,8(sp)
    80008b88:	04010113          	addi	sp,sp,64
    80008b8c:	00008067          	ret
    80008b90:	00002517          	auipc	a0,0x2
    80008b94:	c0050513          	addi	a0,a0,-1024 # 8000a790 <digits+0x18>
    80008b98:	fffff097          	auipc	ra,0xfffff
    80008b9c:	4b4080e7          	jalr	1204(ra) # 8000804c <panic>

0000000080008ba0 <freerange>:
    80008ba0:	fc010113          	addi	sp,sp,-64
    80008ba4:	000017b7          	lui	a5,0x1
    80008ba8:	02913423          	sd	s1,40(sp)
    80008bac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008bb0:	009504b3          	add	s1,a0,s1
    80008bb4:	fffff537          	lui	a0,0xfffff
    80008bb8:	02813823          	sd	s0,48(sp)
    80008bbc:	02113c23          	sd	ra,56(sp)
    80008bc0:	03213023          	sd	s2,32(sp)
    80008bc4:	01313c23          	sd	s3,24(sp)
    80008bc8:	01413823          	sd	s4,16(sp)
    80008bcc:	01513423          	sd	s5,8(sp)
    80008bd0:	01613023          	sd	s6,0(sp)
    80008bd4:	04010413          	addi	s0,sp,64
    80008bd8:	00a4f4b3          	and	s1,s1,a0
    80008bdc:	00f487b3          	add	a5,s1,a5
    80008be0:	06f5e463          	bltu	a1,a5,80008c48 <freerange+0xa8>
    80008be4:	00005a97          	auipc	s5,0x5
    80008be8:	55ca8a93          	addi	s5,s5,1372 # 8000e140 <end>
    80008bec:	0954e263          	bltu	s1,s5,80008c70 <freerange+0xd0>
    80008bf0:	01100993          	li	s3,17
    80008bf4:	01b99993          	slli	s3,s3,0x1b
    80008bf8:	0734fc63          	bgeu	s1,s3,80008c70 <freerange+0xd0>
    80008bfc:	00058a13          	mv	s4,a1
    80008c00:	00004917          	auipc	s2,0x4
    80008c04:	fd090913          	addi	s2,s2,-48 # 8000cbd0 <kmem>
    80008c08:	00002b37          	lui	s6,0x2
    80008c0c:	0140006f          	j	80008c20 <freerange+0x80>
    80008c10:	000017b7          	lui	a5,0x1
    80008c14:	00f484b3          	add	s1,s1,a5
    80008c18:	0554ec63          	bltu	s1,s5,80008c70 <freerange+0xd0>
    80008c1c:	0534fa63          	bgeu	s1,s3,80008c70 <freerange+0xd0>
    80008c20:	00001637          	lui	a2,0x1
    80008c24:	00100593          	li	a1,1
    80008c28:	00048513          	mv	a0,s1
    80008c2c:	00000097          	auipc	ra,0x0
    80008c30:	50c080e7          	jalr	1292(ra) # 80009138 <__memset>
    80008c34:	00093703          	ld	a4,0(s2)
    80008c38:	016487b3          	add	a5,s1,s6
    80008c3c:	00e4b023          	sd	a4,0(s1)
    80008c40:	00993023          	sd	s1,0(s2)
    80008c44:	fcfa76e3          	bgeu	s4,a5,80008c10 <freerange+0x70>
    80008c48:	03813083          	ld	ra,56(sp)
    80008c4c:	03013403          	ld	s0,48(sp)
    80008c50:	02813483          	ld	s1,40(sp)
    80008c54:	02013903          	ld	s2,32(sp)
    80008c58:	01813983          	ld	s3,24(sp)
    80008c5c:	01013a03          	ld	s4,16(sp)
    80008c60:	00813a83          	ld	s5,8(sp)
    80008c64:	00013b03          	ld	s6,0(sp)
    80008c68:	04010113          	addi	sp,sp,64
    80008c6c:	00008067          	ret
    80008c70:	00002517          	auipc	a0,0x2
    80008c74:	b2050513          	addi	a0,a0,-1248 # 8000a790 <digits+0x18>
    80008c78:	fffff097          	auipc	ra,0xfffff
    80008c7c:	3d4080e7          	jalr	980(ra) # 8000804c <panic>

0000000080008c80 <kfree>:
    80008c80:	fe010113          	addi	sp,sp,-32
    80008c84:	00813823          	sd	s0,16(sp)
    80008c88:	00113c23          	sd	ra,24(sp)
    80008c8c:	00913423          	sd	s1,8(sp)
    80008c90:	02010413          	addi	s0,sp,32
    80008c94:	03451793          	slli	a5,a0,0x34
    80008c98:	04079c63          	bnez	a5,80008cf0 <kfree+0x70>
    80008c9c:	00005797          	auipc	a5,0x5
    80008ca0:	4a478793          	addi	a5,a5,1188 # 8000e140 <end>
    80008ca4:	00050493          	mv	s1,a0
    80008ca8:	04f56463          	bltu	a0,a5,80008cf0 <kfree+0x70>
    80008cac:	01100793          	li	a5,17
    80008cb0:	01b79793          	slli	a5,a5,0x1b
    80008cb4:	02f57e63          	bgeu	a0,a5,80008cf0 <kfree+0x70>
    80008cb8:	00001637          	lui	a2,0x1
    80008cbc:	00100593          	li	a1,1
    80008cc0:	00000097          	auipc	ra,0x0
    80008cc4:	478080e7          	jalr	1144(ra) # 80009138 <__memset>
    80008cc8:	00004797          	auipc	a5,0x4
    80008ccc:	f0878793          	addi	a5,a5,-248 # 8000cbd0 <kmem>
    80008cd0:	0007b703          	ld	a4,0(a5)
    80008cd4:	01813083          	ld	ra,24(sp)
    80008cd8:	01013403          	ld	s0,16(sp)
    80008cdc:	00e4b023          	sd	a4,0(s1)
    80008ce0:	0097b023          	sd	s1,0(a5)
    80008ce4:	00813483          	ld	s1,8(sp)
    80008ce8:	02010113          	addi	sp,sp,32
    80008cec:	00008067          	ret
    80008cf0:	00002517          	auipc	a0,0x2
    80008cf4:	aa050513          	addi	a0,a0,-1376 # 8000a790 <digits+0x18>
    80008cf8:	fffff097          	auipc	ra,0xfffff
    80008cfc:	354080e7          	jalr	852(ra) # 8000804c <panic>

0000000080008d00 <kalloc>:
    80008d00:	fe010113          	addi	sp,sp,-32
    80008d04:	00813823          	sd	s0,16(sp)
    80008d08:	00913423          	sd	s1,8(sp)
    80008d0c:	00113c23          	sd	ra,24(sp)
    80008d10:	02010413          	addi	s0,sp,32
    80008d14:	00004797          	auipc	a5,0x4
    80008d18:	ebc78793          	addi	a5,a5,-324 # 8000cbd0 <kmem>
    80008d1c:	0007b483          	ld	s1,0(a5)
    80008d20:	02048063          	beqz	s1,80008d40 <kalloc+0x40>
    80008d24:	0004b703          	ld	a4,0(s1)
    80008d28:	00001637          	lui	a2,0x1
    80008d2c:	00500593          	li	a1,5
    80008d30:	00048513          	mv	a0,s1
    80008d34:	00e7b023          	sd	a4,0(a5)
    80008d38:	00000097          	auipc	ra,0x0
    80008d3c:	400080e7          	jalr	1024(ra) # 80009138 <__memset>
    80008d40:	01813083          	ld	ra,24(sp)
    80008d44:	01013403          	ld	s0,16(sp)
    80008d48:	00048513          	mv	a0,s1
    80008d4c:	00813483          	ld	s1,8(sp)
    80008d50:	02010113          	addi	sp,sp,32
    80008d54:	00008067          	ret

0000000080008d58 <initlock>:
    80008d58:	ff010113          	addi	sp,sp,-16
    80008d5c:	00813423          	sd	s0,8(sp)
    80008d60:	01010413          	addi	s0,sp,16
    80008d64:	00813403          	ld	s0,8(sp)
    80008d68:	00b53423          	sd	a1,8(a0)
    80008d6c:	00052023          	sw	zero,0(a0)
    80008d70:	00053823          	sd	zero,16(a0)
    80008d74:	01010113          	addi	sp,sp,16
    80008d78:	00008067          	ret

0000000080008d7c <acquire>:
    80008d7c:	fe010113          	addi	sp,sp,-32
    80008d80:	00813823          	sd	s0,16(sp)
    80008d84:	00913423          	sd	s1,8(sp)
    80008d88:	00113c23          	sd	ra,24(sp)
    80008d8c:	01213023          	sd	s2,0(sp)
    80008d90:	02010413          	addi	s0,sp,32
    80008d94:	00050493          	mv	s1,a0
    80008d98:	10002973          	csrr	s2,sstatus
    80008d9c:	100027f3          	csrr	a5,sstatus
    80008da0:	ffd7f793          	andi	a5,a5,-3
    80008da4:	10079073          	csrw	sstatus,a5
    80008da8:	fffff097          	auipc	ra,0xfffff
    80008dac:	8e4080e7          	jalr	-1820(ra) # 8000768c <mycpu>
    80008db0:	07852783          	lw	a5,120(a0)
    80008db4:	06078e63          	beqz	a5,80008e30 <acquire+0xb4>
    80008db8:	fffff097          	auipc	ra,0xfffff
    80008dbc:	8d4080e7          	jalr	-1836(ra) # 8000768c <mycpu>
    80008dc0:	07852783          	lw	a5,120(a0)
    80008dc4:	0004a703          	lw	a4,0(s1)
    80008dc8:	0017879b          	addiw	a5,a5,1
    80008dcc:	06f52c23          	sw	a5,120(a0)
    80008dd0:	04071063          	bnez	a4,80008e10 <acquire+0x94>
    80008dd4:	00100713          	li	a4,1
    80008dd8:	00070793          	mv	a5,a4
    80008ddc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008de0:	0007879b          	sext.w	a5,a5
    80008de4:	fe079ae3          	bnez	a5,80008dd8 <acquire+0x5c>
    80008de8:	0ff0000f          	fence
    80008dec:	fffff097          	auipc	ra,0xfffff
    80008df0:	8a0080e7          	jalr	-1888(ra) # 8000768c <mycpu>
    80008df4:	01813083          	ld	ra,24(sp)
    80008df8:	01013403          	ld	s0,16(sp)
    80008dfc:	00a4b823          	sd	a0,16(s1)
    80008e00:	00013903          	ld	s2,0(sp)
    80008e04:	00813483          	ld	s1,8(sp)
    80008e08:	02010113          	addi	sp,sp,32
    80008e0c:	00008067          	ret
    80008e10:	0104b903          	ld	s2,16(s1)
    80008e14:	fffff097          	auipc	ra,0xfffff
    80008e18:	878080e7          	jalr	-1928(ra) # 8000768c <mycpu>
    80008e1c:	faa91ce3          	bne	s2,a0,80008dd4 <acquire+0x58>
    80008e20:	00002517          	auipc	a0,0x2
    80008e24:	97850513          	addi	a0,a0,-1672 # 8000a798 <digits+0x20>
    80008e28:	fffff097          	auipc	ra,0xfffff
    80008e2c:	224080e7          	jalr	548(ra) # 8000804c <panic>
    80008e30:	00195913          	srli	s2,s2,0x1
    80008e34:	fffff097          	auipc	ra,0xfffff
    80008e38:	858080e7          	jalr	-1960(ra) # 8000768c <mycpu>
    80008e3c:	00197913          	andi	s2,s2,1
    80008e40:	07252e23          	sw	s2,124(a0)
    80008e44:	f75ff06f          	j	80008db8 <acquire+0x3c>

0000000080008e48 <release>:
    80008e48:	fe010113          	addi	sp,sp,-32
    80008e4c:	00813823          	sd	s0,16(sp)
    80008e50:	00113c23          	sd	ra,24(sp)
    80008e54:	00913423          	sd	s1,8(sp)
    80008e58:	01213023          	sd	s2,0(sp)
    80008e5c:	02010413          	addi	s0,sp,32
    80008e60:	00052783          	lw	a5,0(a0)
    80008e64:	00079a63          	bnez	a5,80008e78 <release+0x30>
    80008e68:	00002517          	auipc	a0,0x2
    80008e6c:	93850513          	addi	a0,a0,-1736 # 8000a7a0 <digits+0x28>
    80008e70:	fffff097          	auipc	ra,0xfffff
    80008e74:	1dc080e7          	jalr	476(ra) # 8000804c <panic>
    80008e78:	01053903          	ld	s2,16(a0)
    80008e7c:	00050493          	mv	s1,a0
    80008e80:	fffff097          	auipc	ra,0xfffff
    80008e84:	80c080e7          	jalr	-2036(ra) # 8000768c <mycpu>
    80008e88:	fea910e3          	bne	s2,a0,80008e68 <release+0x20>
    80008e8c:	0004b823          	sd	zero,16(s1)
    80008e90:	0ff0000f          	fence
    80008e94:	0f50000f          	fence	iorw,ow
    80008e98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008e9c:	ffffe097          	auipc	ra,0xffffe
    80008ea0:	7f0080e7          	jalr	2032(ra) # 8000768c <mycpu>
    80008ea4:	100027f3          	csrr	a5,sstatus
    80008ea8:	0027f793          	andi	a5,a5,2
    80008eac:	04079a63          	bnez	a5,80008f00 <release+0xb8>
    80008eb0:	07852783          	lw	a5,120(a0)
    80008eb4:	02f05e63          	blez	a5,80008ef0 <release+0xa8>
    80008eb8:	fff7871b          	addiw	a4,a5,-1
    80008ebc:	06e52c23          	sw	a4,120(a0)
    80008ec0:	00071c63          	bnez	a4,80008ed8 <release+0x90>
    80008ec4:	07c52783          	lw	a5,124(a0)
    80008ec8:	00078863          	beqz	a5,80008ed8 <release+0x90>
    80008ecc:	100027f3          	csrr	a5,sstatus
    80008ed0:	0027e793          	ori	a5,a5,2
    80008ed4:	10079073          	csrw	sstatus,a5
    80008ed8:	01813083          	ld	ra,24(sp)
    80008edc:	01013403          	ld	s0,16(sp)
    80008ee0:	00813483          	ld	s1,8(sp)
    80008ee4:	00013903          	ld	s2,0(sp)
    80008ee8:	02010113          	addi	sp,sp,32
    80008eec:	00008067          	ret
    80008ef0:	00002517          	auipc	a0,0x2
    80008ef4:	8d050513          	addi	a0,a0,-1840 # 8000a7c0 <digits+0x48>
    80008ef8:	fffff097          	auipc	ra,0xfffff
    80008efc:	154080e7          	jalr	340(ra) # 8000804c <panic>
    80008f00:	00002517          	auipc	a0,0x2
    80008f04:	8a850513          	addi	a0,a0,-1880 # 8000a7a8 <digits+0x30>
    80008f08:	fffff097          	auipc	ra,0xfffff
    80008f0c:	144080e7          	jalr	324(ra) # 8000804c <panic>

0000000080008f10 <holding>:
    80008f10:	00052783          	lw	a5,0(a0)
    80008f14:	00079663          	bnez	a5,80008f20 <holding+0x10>
    80008f18:	00000513          	li	a0,0
    80008f1c:	00008067          	ret
    80008f20:	fe010113          	addi	sp,sp,-32
    80008f24:	00813823          	sd	s0,16(sp)
    80008f28:	00913423          	sd	s1,8(sp)
    80008f2c:	00113c23          	sd	ra,24(sp)
    80008f30:	02010413          	addi	s0,sp,32
    80008f34:	01053483          	ld	s1,16(a0)
    80008f38:	ffffe097          	auipc	ra,0xffffe
    80008f3c:	754080e7          	jalr	1876(ra) # 8000768c <mycpu>
    80008f40:	01813083          	ld	ra,24(sp)
    80008f44:	01013403          	ld	s0,16(sp)
    80008f48:	40a48533          	sub	a0,s1,a0
    80008f4c:	00153513          	seqz	a0,a0
    80008f50:	00813483          	ld	s1,8(sp)
    80008f54:	02010113          	addi	sp,sp,32
    80008f58:	00008067          	ret

0000000080008f5c <push_off>:
    80008f5c:	fe010113          	addi	sp,sp,-32
    80008f60:	00813823          	sd	s0,16(sp)
    80008f64:	00113c23          	sd	ra,24(sp)
    80008f68:	00913423          	sd	s1,8(sp)
    80008f6c:	02010413          	addi	s0,sp,32
    80008f70:	100024f3          	csrr	s1,sstatus
    80008f74:	100027f3          	csrr	a5,sstatus
    80008f78:	ffd7f793          	andi	a5,a5,-3
    80008f7c:	10079073          	csrw	sstatus,a5
    80008f80:	ffffe097          	auipc	ra,0xffffe
    80008f84:	70c080e7          	jalr	1804(ra) # 8000768c <mycpu>
    80008f88:	07852783          	lw	a5,120(a0)
    80008f8c:	02078663          	beqz	a5,80008fb8 <push_off+0x5c>
    80008f90:	ffffe097          	auipc	ra,0xffffe
    80008f94:	6fc080e7          	jalr	1788(ra) # 8000768c <mycpu>
    80008f98:	07852783          	lw	a5,120(a0)
    80008f9c:	01813083          	ld	ra,24(sp)
    80008fa0:	01013403          	ld	s0,16(sp)
    80008fa4:	0017879b          	addiw	a5,a5,1
    80008fa8:	06f52c23          	sw	a5,120(a0)
    80008fac:	00813483          	ld	s1,8(sp)
    80008fb0:	02010113          	addi	sp,sp,32
    80008fb4:	00008067          	ret
    80008fb8:	0014d493          	srli	s1,s1,0x1
    80008fbc:	ffffe097          	auipc	ra,0xffffe
    80008fc0:	6d0080e7          	jalr	1744(ra) # 8000768c <mycpu>
    80008fc4:	0014f493          	andi	s1,s1,1
    80008fc8:	06952e23          	sw	s1,124(a0)
    80008fcc:	fc5ff06f          	j	80008f90 <push_off+0x34>

0000000080008fd0 <pop_off>:
    80008fd0:	ff010113          	addi	sp,sp,-16
    80008fd4:	00813023          	sd	s0,0(sp)
    80008fd8:	00113423          	sd	ra,8(sp)
    80008fdc:	01010413          	addi	s0,sp,16
    80008fe0:	ffffe097          	auipc	ra,0xffffe
    80008fe4:	6ac080e7          	jalr	1708(ra) # 8000768c <mycpu>
    80008fe8:	100027f3          	csrr	a5,sstatus
    80008fec:	0027f793          	andi	a5,a5,2
    80008ff0:	04079663          	bnez	a5,8000903c <pop_off+0x6c>
    80008ff4:	07852783          	lw	a5,120(a0)
    80008ff8:	02f05a63          	blez	a5,8000902c <pop_off+0x5c>
    80008ffc:	fff7871b          	addiw	a4,a5,-1
    80009000:	06e52c23          	sw	a4,120(a0)
    80009004:	00071c63          	bnez	a4,8000901c <pop_off+0x4c>
    80009008:	07c52783          	lw	a5,124(a0)
    8000900c:	00078863          	beqz	a5,8000901c <pop_off+0x4c>
    80009010:	100027f3          	csrr	a5,sstatus
    80009014:	0027e793          	ori	a5,a5,2
    80009018:	10079073          	csrw	sstatus,a5
    8000901c:	00813083          	ld	ra,8(sp)
    80009020:	00013403          	ld	s0,0(sp)
    80009024:	01010113          	addi	sp,sp,16
    80009028:	00008067          	ret
    8000902c:	00001517          	auipc	a0,0x1
    80009030:	79450513          	addi	a0,a0,1940 # 8000a7c0 <digits+0x48>
    80009034:	fffff097          	auipc	ra,0xfffff
    80009038:	018080e7          	jalr	24(ra) # 8000804c <panic>
    8000903c:	00001517          	auipc	a0,0x1
    80009040:	76c50513          	addi	a0,a0,1900 # 8000a7a8 <digits+0x30>
    80009044:	fffff097          	auipc	ra,0xfffff
    80009048:	008080e7          	jalr	8(ra) # 8000804c <panic>

000000008000904c <push_on>:
    8000904c:	fe010113          	addi	sp,sp,-32
    80009050:	00813823          	sd	s0,16(sp)
    80009054:	00113c23          	sd	ra,24(sp)
    80009058:	00913423          	sd	s1,8(sp)
    8000905c:	02010413          	addi	s0,sp,32
    80009060:	100024f3          	csrr	s1,sstatus
    80009064:	100027f3          	csrr	a5,sstatus
    80009068:	0027e793          	ori	a5,a5,2
    8000906c:	10079073          	csrw	sstatus,a5
    80009070:	ffffe097          	auipc	ra,0xffffe
    80009074:	61c080e7          	jalr	1564(ra) # 8000768c <mycpu>
    80009078:	07852783          	lw	a5,120(a0)
    8000907c:	02078663          	beqz	a5,800090a8 <push_on+0x5c>
    80009080:	ffffe097          	auipc	ra,0xffffe
    80009084:	60c080e7          	jalr	1548(ra) # 8000768c <mycpu>
    80009088:	07852783          	lw	a5,120(a0)
    8000908c:	01813083          	ld	ra,24(sp)
    80009090:	01013403          	ld	s0,16(sp)
    80009094:	0017879b          	addiw	a5,a5,1
    80009098:	06f52c23          	sw	a5,120(a0)
    8000909c:	00813483          	ld	s1,8(sp)
    800090a0:	02010113          	addi	sp,sp,32
    800090a4:	00008067          	ret
    800090a8:	0014d493          	srli	s1,s1,0x1
    800090ac:	ffffe097          	auipc	ra,0xffffe
    800090b0:	5e0080e7          	jalr	1504(ra) # 8000768c <mycpu>
    800090b4:	0014f493          	andi	s1,s1,1
    800090b8:	06952e23          	sw	s1,124(a0)
    800090bc:	fc5ff06f          	j	80009080 <push_on+0x34>

00000000800090c0 <pop_on>:
    800090c0:	ff010113          	addi	sp,sp,-16
    800090c4:	00813023          	sd	s0,0(sp)
    800090c8:	00113423          	sd	ra,8(sp)
    800090cc:	01010413          	addi	s0,sp,16
    800090d0:	ffffe097          	auipc	ra,0xffffe
    800090d4:	5bc080e7          	jalr	1468(ra) # 8000768c <mycpu>
    800090d8:	100027f3          	csrr	a5,sstatus
    800090dc:	0027f793          	andi	a5,a5,2
    800090e0:	04078463          	beqz	a5,80009128 <pop_on+0x68>
    800090e4:	07852783          	lw	a5,120(a0)
    800090e8:	02f05863          	blez	a5,80009118 <pop_on+0x58>
    800090ec:	fff7879b          	addiw	a5,a5,-1
    800090f0:	06f52c23          	sw	a5,120(a0)
    800090f4:	07853783          	ld	a5,120(a0)
    800090f8:	00079863          	bnez	a5,80009108 <pop_on+0x48>
    800090fc:	100027f3          	csrr	a5,sstatus
    80009100:	ffd7f793          	andi	a5,a5,-3
    80009104:	10079073          	csrw	sstatus,a5
    80009108:	00813083          	ld	ra,8(sp)
    8000910c:	00013403          	ld	s0,0(sp)
    80009110:	01010113          	addi	sp,sp,16
    80009114:	00008067          	ret
    80009118:	00001517          	auipc	a0,0x1
    8000911c:	6d050513          	addi	a0,a0,1744 # 8000a7e8 <digits+0x70>
    80009120:	fffff097          	auipc	ra,0xfffff
    80009124:	f2c080e7          	jalr	-212(ra) # 8000804c <panic>
    80009128:	00001517          	auipc	a0,0x1
    8000912c:	6a050513          	addi	a0,a0,1696 # 8000a7c8 <digits+0x50>
    80009130:	fffff097          	auipc	ra,0xfffff
    80009134:	f1c080e7          	jalr	-228(ra) # 8000804c <panic>

0000000080009138 <__memset>:
    80009138:	ff010113          	addi	sp,sp,-16
    8000913c:	00813423          	sd	s0,8(sp)
    80009140:	01010413          	addi	s0,sp,16
    80009144:	1a060e63          	beqz	a2,80009300 <__memset+0x1c8>
    80009148:	40a007b3          	neg	a5,a0
    8000914c:	0077f793          	andi	a5,a5,7
    80009150:	00778693          	addi	a3,a5,7
    80009154:	00b00813          	li	a6,11
    80009158:	0ff5f593          	andi	a1,a1,255
    8000915c:	fff6071b          	addiw	a4,a2,-1
    80009160:	1b06e663          	bltu	a3,a6,8000930c <__memset+0x1d4>
    80009164:	1cd76463          	bltu	a4,a3,8000932c <__memset+0x1f4>
    80009168:	1a078e63          	beqz	a5,80009324 <__memset+0x1ec>
    8000916c:	00b50023          	sb	a1,0(a0)
    80009170:	00100713          	li	a4,1
    80009174:	1ae78463          	beq	a5,a4,8000931c <__memset+0x1e4>
    80009178:	00b500a3          	sb	a1,1(a0)
    8000917c:	00200713          	li	a4,2
    80009180:	1ae78a63          	beq	a5,a4,80009334 <__memset+0x1fc>
    80009184:	00b50123          	sb	a1,2(a0)
    80009188:	00300713          	li	a4,3
    8000918c:	18e78463          	beq	a5,a4,80009314 <__memset+0x1dc>
    80009190:	00b501a3          	sb	a1,3(a0)
    80009194:	00400713          	li	a4,4
    80009198:	1ae78263          	beq	a5,a4,8000933c <__memset+0x204>
    8000919c:	00b50223          	sb	a1,4(a0)
    800091a0:	00500713          	li	a4,5
    800091a4:	1ae78063          	beq	a5,a4,80009344 <__memset+0x20c>
    800091a8:	00b502a3          	sb	a1,5(a0)
    800091ac:	00700713          	li	a4,7
    800091b0:	18e79e63          	bne	a5,a4,8000934c <__memset+0x214>
    800091b4:	00b50323          	sb	a1,6(a0)
    800091b8:	00700e93          	li	t4,7
    800091bc:	00859713          	slli	a4,a1,0x8
    800091c0:	00e5e733          	or	a4,a1,a4
    800091c4:	01059e13          	slli	t3,a1,0x10
    800091c8:	01c76e33          	or	t3,a4,t3
    800091cc:	01859313          	slli	t1,a1,0x18
    800091d0:	006e6333          	or	t1,t3,t1
    800091d4:	02059893          	slli	a7,a1,0x20
    800091d8:	40f60e3b          	subw	t3,a2,a5
    800091dc:	011368b3          	or	a7,t1,a7
    800091e0:	02859813          	slli	a6,a1,0x28
    800091e4:	0108e833          	or	a6,a7,a6
    800091e8:	03059693          	slli	a3,a1,0x30
    800091ec:	003e589b          	srliw	a7,t3,0x3
    800091f0:	00d866b3          	or	a3,a6,a3
    800091f4:	03859713          	slli	a4,a1,0x38
    800091f8:	00389813          	slli	a6,a7,0x3
    800091fc:	00f507b3          	add	a5,a0,a5
    80009200:	00e6e733          	or	a4,a3,a4
    80009204:	000e089b          	sext.w	a7,t3
    80009208:	00f806b3          	add	a3,a6,a5
    8000920c:	00e7b023          	sd	a4,0(a5)
    80009210:	00878793          	addi	a5,a5,8
    80009214:	fed79ce3          	bne	a5,a3,8000920c <__memset+0xd4>
    80009218:	ff8e7793          	andi	a5,t3,-8
    8000921c:	0007871b          	sext.w	a4,a5
    80009220:	01d787bb          	addw	a5,a5,t4
    80009224:	0ce88e63          	beq	a7,a4,80009300 <__memset+0x1c8>
    80009228:	00f50733          	add	a4,a0,a5
    8000922c:	00b70023          	sb	a1,0(a4)
    80009230:	0017871b          	addiw	a4,a5,1
    80009234:	0cc77663          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    80009238:	00e50733          	add	a4,a0,a4
    8000923c:	00b70023          	sb	a1,0(a4)
    80009240:	0027871b          	addiw	a4,a5,2
    80009244:	0ac77e63          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    80009248:	00e50733          	add	a4,a0,a4
    8000924c:	00b70023          	sb	a1,0(a4)
    80009250:	0037871b          	addiw	a4,a5,3
    80009254:	0ac77663          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    80009258:	00e50733          	add	a4,a0,a4
    8000925c:	00b70023          	sb	a1,0(a4)
    80009260:	0047871b          	addiw	a4,a5,4
    80009264:	08c77e63          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    80009268:	00e50733          	add	a4,a0,a4
    8000926c:	00b70023          	sb	a1,0(a4)
    80009270:	0057871b          	addiw	a4,a5,5
    80009274:	08c77663          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    80009278:	00e50733          	add	a4,a0,a4
    8000927c:	00b70023          	sb	a1,0(a4)
    80009280:	0067871b          	addiw	a4,a5,6
    80009284:	06c77e63          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    80009288:	00e50733          	add	a4,a0,a4
    8000928c:	00b70023          	sb	a1,0(a4)
    80009290:	0077871b          	addiw	a4,a5,7
    80009294:	06c77663          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    80009298:	00e50733          	add	a4,a0,a4
    8000929c:	00b70023          	sb	a1,0(a4)
    800092a0:	0087871b          	addiw	a4,a5,8
    800092a4:	04c77e63          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    800092a8:	00e50733          	add	a4,a0,a4
    800092ac:	00b70023          	sb	a1,0(a4)
    800092b0:	0097871b          	addiw	a4,a5,9
    800092b4:	04c77663          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    800092b8:	00e50733          	add	a4,a0,a4
    800092bc:	00b70023          	sb	a1,0(a4)
    800092c0:	00a7871b          	addiw	a4,a5,10
    800092c4:	02c77e63          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    800092c8:	00e50733          	add	a4,a0,a4
    800092cc:	00b70023          	sb	a1,0(a4)
    800092d0:	00b7871b          	addiw	a4,a5,11
    800092d4:	02c77663          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    800092d8:	00e50733          	add	a4,a0,a4
    800092dc:	00b70023          	sb	a1,0(a4)
    800092e0:	00c7871b          	addiw	a4,a5,12
    800092e4:	00c77e63          	bgeu	a4,a2,80009300 <__memset+0x1c8>
    800092e8:	00e50733          	add	a4,a0,a4
    800092ec:	00b70023          	sb	a1,0(a4)
    800092f0:	00d7879b          	addiw	a5,a5,13
    800092f4:	00c7f663          	bgeu	a5,a2,80009300 <__memset+0x1c8>
    800092f8:	00f507b3          	add	a5,a0,a5
    800092fc:	00b78023          	sb	a1,0(a5)
    80009300:	00813403          	ld	s0,8(sp)
    80009304:	01010113          	addi	sp,sp,16
    80009308:	00008067          	ret
    8000930c:	00b00693          	li	a3,11
    80009310:	e55ff06f          	j	80009164 <__memset+0x2c>
    80009314:	00300e93          	li	t4,3
    80009318:	ea5ff06f          	j	800091bc <__memset+0x84>
    8000931c:	00100e93          	li	t4,1
    80009320:	e9dff06f          	j	800091bc <__memset+0x84>
    80009324:	00000e93          	li	t4,0
    80009328:	e95ff06f          	j	800091bc <__memset+0x84>
    8000932c:	00000793          	li	a5,0
    80009330:	ef9ff06f          	j	80009228 <__memset+0xf0>
    80009334:	00200e93          	li	t4,2
    80009338:	e85ff06f          	j	800091bc <__memset+0x84>
    8000933c:	00400e93          	li	t4,4
    80009340:	e7dff06f          	j	800091bc <__memset+0x84>
    80009344:	00500e93          	li	t4,5
    80009348:	e75ff06f          	j	800091bc <__memset+0x84>
    8000934c:	00600e93          	li	t4,6
    80009350:	e6dff06f          	j	800091bc <__memset+0x84>

0000000080009354 <__memmove>:
    80009354:	ff010113          	addi	sp,sp,-16
    80009358:	00813423          	sd	s0,8(sp)
    8000935c:	01010413          	addi	s0,sp,16
    80009360:	0e060863          	beqz	a2,80009450 <__memmove+0xfc>
    80009364:	fff6069b          	addiw	a3,a2,-1
    80009368:	0006881b          	sext.w	a6,a3
    8000936c:	0ea5e863          	bltu	a1,a0,8000945c <__memmove+0x108>
    80009370:	00758713          	addi	a4,a1,7
    80009374:	00a5e7b3          	or	a5,a1,a0
    80009378:	40a70733          	sub	a4,a4,a0
    8000937c:	0077f793          	andi	a5,a5,7
    80009380:	00f73713          	sltiu	a4,a4,15
    80009384:	00174713          	xori	a4,a4,1
    80009388:	0017b793          	seqz	a5,a5
    8000938c:	00e7f7b3          	and	a5,a5,a4
    80009390:	10078863          	beqz	a5,800094a0 <__memmove+0x14c>
    80009394:	00900793          	li	a5,9
    80009398:	1107f463          	bgeu	a5,a6,800094a0 <__memmove+0x14c>
    8000939c:	0036581b          	srliw	a6,a2,0x3
    800093a0:	fff8081b          	addiw	a6,a6,-1
    800093a4:	02081813          	slli	a6,a6,0x20
    800093a8:	01d85893          	srli	a7,a6,0x1d
    800093ac:	00858813          	addi	a6,a1,8
    800093b0:	00058793          	mv	a5,a1
    800093b4:	00050713          	mv	a4,a0
    800093b8:	01088833          	add	a6,a7,a6
    800093bc:	0007b883          	ld	a7,0(a5)
    800093c0:	00878793          	addi	a5,a5,8
    800093c4:	00870713          	addi	a4,a4,8
    800093c8:	ff173c23          	sd	a7,-8(a4)
    800093cc:	ff0798e3          	bne	a5,a6,800093bc <__memmove+0x68>
    800093d0:	ff867713          	andi	a4,a2,-8
    800093d4:	02071793          	slli	a5,a4,0x20
    800093d8:	0207d793          	srli	a5,a5,0x20
    800093dc:	00f585b3          	add	a1,a1,a5
    800093e0:	40e686bb          	subw	a3,a3,a4
    800093e4:	00f507b3          	add	a5,a0,a5
    800093e8:	06e60463          	beq	a2,a4,80009450 <__memmove+0xfc>
    800093ec:	0005c703          	lbu	a4,0(a1)
    800093f0:	00e78023          	sb	a4,0(a5)
    800093f4:	04068e63          	beqz	a3,80009450 <__memmove+0xfc>
    800093f8:	0015c603          	lbu	a2,1(a1)
    800093fc:	00100713          	li	a4,1
    80009400:	00c780a3          	sb	a2,1(a5)
    80009404:	04e68663          	beq	a3,a4,80009450 <__memmove+0xfc>
    80009408:	0025c603          	lbu	a2,2(a1)
    8000940c:	00200713          	li	a4,2
    80009410:	00c78123          	sb	a2,2(a5)
    80009414:	02e68e63          	beq	a3,a4,80009450 <__memmove+0xfc>
    80009418:	0035c603          	lbu	a2,3(a1)
    8000941c:	00300713          	li	a4,3
    80009420:	00c781a3          	sb	a2,3(a5)
    80009424:	02e68663          	beq	a3,a4,80009450 <__memmove+0xfc>
    80009428:	0045c603          	lbu	a2,4(a1)
    8000942c:	00400713          	li	a4,4
    80009430:	00c78223          	sb	a2,4(a5)
    80009434:	00e68e63          	beq	a3,a4,80009450 <__memmove+0xfc>
    80009438:	0055c603          	lbu	a2,5(a1)
    8000943c:	00500713          	li	a4,5
    80009440:	00c782a3          	sb	a2,5(a5)
    80009444:	00e68663          	beq	a3,a4,80009450 <__memmove+0xfc>
    80009448:	0065c703          	lbu	a4,6(a1)
    8000944c:	00e78323          	sb	a4,6(a5)
    80009450:	00813403          	ld	s0,8(sp)
    80009454:	01010113          	addi	sp,sp,16
    80009458:	00008067          	ret
    8000945c:	02061713          	slli	a4,a2,0x20
    80009460:	02075713          	srli	a4,a4,0x20
    80009464:	00e587b3          	add	a5,a1,a4
    80009468:	f0f574e3          	bgeu	a0,a5,80009370 <__memmove+0x1c>
    8000946c:	02069613          	slli	a2,a3,0x20
    80009470:	02065613          	srli	a2,a2,0x20
    80009474:	fff64613          	not	a2,a2
    80009478:	00e50733          	add	a4,a0,a4
    8000947c:	00c78633          	add	a2,a5,a2
    80009480:	fff7c683          	lbu	a3,-1(a5)
    80009484:	fff78793          	addi	a5,a5,-1
    80009488:	fff70713          	addi	a4,a4,-1
    8000948c:	00d70023          	sb	a3,0(a4)
    80009490:	fec798e3          	bne	a5,a2,80009480 <__memmove+0x12c>
    80009494:	00813403          	ld	s0,8(sp)
    80009498:	01010113          	addi	sp,sp,16
    8000949c:	00008067          	ret
    800094a0:	02069713          	slli	a4,a3,0x20
    800094a4:	02075713          	srli	a4,a4,0x20
    800094a8:	00170713          	addi	a4,a4,1
    800094ac:	00e50733          	add	a4,a0,a4
    800094b0:	00050793          	mv	a5,a0
    800094b4:	0005c683          	lbu	a3,0(a1)
    800094b8:	00178793          	addi	a5,a5,1
    800094bc:	00158593          	addi	a1,a1,1
    800094c0:	fed78fa3          	sb	a3,-1(a5)
    800094c4:	fee798e3          	bne	a5,a4,800094b4 <__memmove+0x160>
    800094c8:	f89ff06f          	j	80009450 <__memmove+0xfc>
	...
