
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b3013103          	ld	sp,-1232(sp) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	70d060ef          	jal	ra,80006f28 <start>

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
    80001248:	1c8020ef          	jal	ra,80003410 <HandleInterupt>

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

00000000800012f0 <mem_alloc>:
//

#include "../h/syscall_c.h"
#include "../lib/hw.h"

void* mem_alloc(size_t size){
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    uint64 code=0x01;
    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    800012fc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    80001300:	00100793          	li	a5,1
    80001304:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001308:	00000073          	ecall
    void* value;
    __asm__ volatile ("mv %0, a0" : "=r"(value));
    8000130c:	00050513          	mv	a0,a0
    return (void*)value;
}
    80001310:	00813403          	ld	s0,8(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00008067          	ret

000000008000131c <mem_free>:

int mem_free(void* ptr){
    8000131c:	ff010113          	addi	sp,sp,-16
    80001320:	00813423          	sd	s0,8(sp)
    80001324:	01010413          	addi	s0,sp,16
    uint64 code=0x02;
    __asm__ volatile("mv a1,a0");
    80001328:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    8000132c:	00200793          	li	a5,2
    80001330:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001334:	00000073          	ecall
    return 0;
}
    80001338:	00000513          	li	a0,0
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <thread_create>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001348:	fd010113          	addi	sp,sp,-48
    8000134c:	02113423          	sd	ra,40(sp)
    80001350:	02813023          	sd	s0,32(sp)
    80001354:	00913c23          	sd	s1,24(sp)
    80001358:	01213823          	sd	s2,16(sp)
    8000135c:	01313423          	sd	s3,8(sp)
    80001360:	03010413          	addi	s0,sp,48
    80001364:	00050993          	mv	s3,a0
    80001368:	00058913          	mv	s2,a1
    8000136c:	00060493          	mv	s1,a2
    // allocate stack separately; pass top pointer as a4 (stack_space)
    void* stack = mem_alloc(DEFAULT_STACK_SIZE * sizeof(size_t));
    80001370:	00008537          	lui	a0,0x8
    80001374:	00000097          	auipc	ra,0x0
    80001378:	f7c080e7          	jalr	-132(ra) # 800012f0 <mem_alloc>
    if (!stack) return -1;
    8000137c:	04050263          	beqz	a0,800013c0 <thread_create+0x78>
    80001380:	00050793          	mv	a5,a0
    register size_t a0 asm("a0") = 0x11;
    80001384:	01100513          	li	a0,17
    register size_t a1 asm("a1") = (size_t)handle;
    80001388:	00098593          	mv	a1,s3
    register size_t a2 asm("a2") = (size_t)start_routine;
    8000138c:	00090613          	mv	a2,s2
    register size_t a3 asm("a3") = (size_t)arg;
    80001390:	00048693          	mv	a3,s1
    register size_t a4 asm("a4") = (size_t)stack + DEFAULT_STACK_SIZE * sizeof(size_t);
    80001394:	00008737          	lui	a4,0x8
    80001398:	00e78733          	add	a4,a5,a4
    register size_t a5 asm("a5") = (size_t)stack;
    __asm__ volatile("ecall"
    8000139c:	00000073          	ecall
        : "+r"(a0)
        : "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5)
    );
    return (int)a0;
    800013a0:	0005051b          	sext.w	a0,a0
}
    800013a4:	02813083          	ld	ra,40(sp)
    800013a8:	02013403          	ld	s0,32(sp)
    800013ac:	01813483          	ld	s1,24(sp)
    800013b0:	01013903          	ld	s2,16(sp)
    800013b4:	00813983          	ld	s3,8(sp)
    800013b8:	03010113          	addi	sp,sp,48
    800013bc:	00008067          	ret
    if (!stack) return -1;
    800013c0:	fff00513          	li	a0,-1
    800013c4:	fe1ff06f          	j	800013a4 <thread_create+0x5c>

00000000800013c8 <join>:

void join(thread_t* thread) {
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00813423          	sd	s0,8(sp)
    800013d0:	01010413          	addi	s0,sp,16
    800013d4:	00050793          	mv	a5,a0
    register size_t a0 asm("a0") = 0x14;
    800013d8:	01400513          	li	a0,20
    register size_t a1 asm("a1") = (size_t)*thread;
    800013dc:	0007b583          	ld	a1,0(a5)
    __asm__ volatile("ecall" : "+r"(a0):"r"(a1));
    800013e0:	00000073          	ecall
}
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <thread_exit>:

int thread_exit(void) {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x12;
    800013fc:	01200513          	li	a0,18
    __asm__ volatile("ecall" : "+r"(a0));
    80001400:	00000073          	ecall
    return (int)a0;
}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <thread_dispatch>:

void thread_dispatch(void) {
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x13;
    80001420:	01300513          	li	a0,19
    __asm__ volatile("ecall" : "+r"(a0));
    80001424:	00000073          	ecall
}
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <time_sleep>:

int time_sleep(time_t dur) {
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    80001440:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x31;
    80001444:	03100513          	li	a0,49
    register size_t a1 asm("a1") = (size_t)dur;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001448:	00000073          	ecall
    return (int)a0;
}
    8000144c:	0005051b          	sext.w	a0,a0
    80001450:	00813403          	ld	s0,8(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <sem_open>:

int sem_open(sem_t* handle, unsigned init) {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00813423          	sd	s0,8(sp)
    80001464:	01010413          	addi	s0,sp,16
    80001468:	00050793          	mv	a5,a0
    8000146c:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x21;
    80001470:	02100513          	li	a0,33
    register size_t a1 asm("a1") = (size_t)handle;
    80001474:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)init;
    80001478:	02061613          	slli	a2,a2,0x20
    8000147c:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001480:	00000073          	ecall
    return (int)a0;
}
    80001484:	0005051b          	sext.w	a0,a0
    80001488:	00813403          	ld	s0,8(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <sem_close>:

int sem_close(sem_t handle) {
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    800014a0:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x22;
    800014a4:	02200513          	li	a0,34
    register size_t a1 asm("a1") = (size_t)handle;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800014a8:	00000073          	ecall
    return (int)a0;
}
    800014ac:	0005051b          	sext.w	a0,a0
    800014b0:	00813403          	ld	s0,8(sp)
    800014b4:	01010113          	addi	sp,sp,16
    800014b8:	00008067          	ret

00000000800014bc <sem_wait>:

int sem_wait(sem_t id) {
    800014bc:	ff010113          	addi	sp,sp,-16
    800014c0:	00813423          	sd	s0,8(sp)
    800014c4:	01010413          	addi	s0,sp,16
    800014c8:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x23;
    800014cc:	02300513          	li	a0,35
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800014d0:	00000073          	ecall
    return (int)a0;
}
    800014d4:	0005051b          	sext.w	a0,a0
    800014d8:	00813403          	ld	s0,8(sp)
    800014dc:	01010113          	addi	sp,sp,16
    800014e0:	00008067          	ret

00000000800014e4 <sem_signal>:

int sem_signal(sem_t id) {
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00813423          	sd	s0,8(sp)
    800014ec:	01010413          	addi	s0,sp,16
    800014f0:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x24;
    800014f4:	02400513          	li	a0,36
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800014f8:	00000073          	ecall
    return (int)a0;
}
    800014fc:	0005051b          	sext.w	a0,a0
    80001500:	00813403          	ld	s0,8(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <sem_wait_n>:

int sem_wait_n(sem_t id, unsigned n) {
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00813423          	sd	s0,8(sp)
    80001514:	01010413          	addi	s0,sp,16
    80001518:	00050793          	mv	a5,a0
    8000151c:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x25;
    80001520:	02500513          	li	a0,37
    register size_t a1 asm("a1") = (size_t)id;
    80001524:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    80001528:	02061613          	slli	a2,a2,0x20
    8000152c:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001530:	00000073          	ecall
    return (int)a0;
}
    80001534:	0005051b          	sext.w	a0,a0
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <getc>:

char getc(void) {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00813423          	sd	s0,8(sp)
    8000154c:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x41;
    80001550:	04100513          	li	a0,65
    __asm__ volatile("ecall" : "+r"(a0));
    80001554:	00000073          	ecall
    return (char)a0;
}
    80001558:	0ff57513          	andi	a0,a0,255
    8000155c:	00813403          	ld	s0,8(sp)
    80001560:	01010113          	addi	sp,sp,16
    80001564:	00008067          	ret

0000000080001568 <putc>:

void putc(char c) {
    80001568:	ff010113          	addi	sp,sp,-16
    8000156c:	00813423          	sd	s0,8(sp)
    80001570:	01010413          	addi	s0,sp,16
    80001574:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x42;
    80001578:	04200513          	li	a0,66
    register size_t a1 asm("a1") = (size_t)(unsigned char)c;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    8000157c:	00000073          	ecall
}
    80001580:	00813403          	ld	s0,8(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <sys_halt>:

void sys_halt(void) {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00813423          	sd	s0,8(sp)
    80001594:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0xFF;
    80001598:	0ff00513          	li	a0,255
    __asm__ volatile("ecall" : "+r"(a0));
    8000159c:	00000073          	ecall
}
    800015a0:	00813403          	ld	s0,8(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <sem_signal_n>:

int sem_signal_n(sem_t id, unsigned n) {
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00813423          	sd	s0,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    800015b8:	00050793          	mv	a5,a0
    800015bc:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x26;
    800015c0:	02600513          	li	a0,38
    register size_t a1 asm("a1") = (size_t)id;
    800015c4:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    800015c8:	02061613          	slli	a2,a2,0x20
    800015cc:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    800015d0:	00000073          	ecall
    return (int)a0;
    800015d4:	0005051b          	sext.w	a0,a0
    800015d8:	00813403          	ld	s0,8(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret

00000000800015e4 <userMainWrapper>:
#include "../h/syscall_c.h"
#include "../lib/console.h"

void userMainK();

static void userMainWrapper() {
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00113423          	sd	ra,8(sp)
    800015ec:	00813023          	sd	s0,0(sp)
    800015f0:	01010413          	addi	s0,sp,16
    userMainK();
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	2e0080e7          	jalr	736(ra) # 800028d4 <userMainK>
    sys_halt();
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	f90080e7          	jalr	-112(ra) # 8000158c <sys_halt>
    while (1) {}
    80001604:	0000006f          	j	80001604 <userMainWrapper+0x20>

0000000080001608 <drop_to_user>:
}

void drop_to_user(void (*fn)()) {
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00813423          	sd	s0,8(sp)
    80001610:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001614:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    80001618:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    8000161c:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    80001620:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001624:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    80001628:	10200073          	sret
}
    8000162c:	00813403          	ld	s0,8(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret

0000000080001638 <main>:

void interupt();
int main() {
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00113423          	sd	ra,8(sp)
    80001640:	00813023          	sd	s0,0(sp)
    80001644:	01010413          	addi	s0,sp,16
    start_main_thread();
    80001648:	00002097          	auipc	ra,0x2
    8000164c:	1e4080e7          	jalr	484(ra) # 8000382c <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    80001650:	00000797          	auipc	a5,0x0
    80001654:	b7078793          	addi	a5,a5,-1168 # 800011c0 <interupt>
    80001658:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0" :: "r"((uint64)(0x2 | 0x200)));
    8000165c:	20200793          	li	a5,514
    80001660:	10479073          	csrw	sie,a5
    drop_to_user(userMainWrapper);
    80001664:	00000517          	auipc	a0,0x0
    80001668:	f8050513          	addi	a0,a0,-128 # 800015e4 <userMainWrapper>
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	f9c080e7          	jalr	-100(ra) # 80001608 <drop_to_user>
    return 0;
    80001674:	00000513          	li	a0,0
    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZN10KSemaphore4initEj>:
//

#include "../h/Semaphore.hpp"
#include "../h/Scheduler.hpp"

void KSemaphore::init(unsigned initVal) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00813423          	sd	s0,8(sp)
    80001690:	01010413          	addi	s0,sp,16
    head = tail = nullptr;
    80001694:	00053823          	sd	zero,16(a0)
    80001698:	00053423          	sd	zero,8(a0)
    val = (int)initVal;
    8000169c:	00b52023          	sw	a1,0(a0)
    isClosed = false;
    800016a0:	00050223          	sb	zero,4(a0)
}
    800016a4:	00813403          	ld	s0,8(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZN10KSemaphore7enqueueEP7KThread>:

void KSemaphore::enqueue(KThread* t) {
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	01213023          	sd	s2,0(sp)
    800016c4:	02010413          	addi	s0,sp,32
    800016c8:	00050913          	mv	s2,a0
    800016cc:	00058493          	mv	s1,a1
    t->setNextInQueue(nullptr);
    800016d0:	00000593          	li	a1,0
    800016d4:	00048513          	mv	a0,s1
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	4a4080e7          	jalr	1188(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    if (tail != nullptr) {
    800016e0:	01093583          	ld	a1,16(s2)
    800016e4:	02058e63          	beqz	a1,80001720 <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        t->setPrevInQueue(tail);
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	4ac080e7          	jalr	1196(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
        tail->setNextInQueue(t);
    800016f4:	00048593          	mv	a1,s1
    800016f8:	01093503          	ld	a0,16(s2)
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	480080e7          	jalr	1152(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    } else {
        t->setPrevInQueue(nullptr);
        head = t;
    }
    tail = t;
    80001704:	00993823          	sd	s1,16(s2)
}
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	00013903          	ld	s2,0(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret
        t->setPrevInQueue(nullptr);
    80001720:	00000593          	li	a1,0
    80001724:	00048513          	mv	a0,s1
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	470080e7          	jalr	1136(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
        head = t;
    80001730:	00993423          	sd	s1,8(s2)
    80001734:	fd1ff06f          	j	80001704 <_ZN10KSemaphore7enqueueEP7KThread+0x54>

0000000080001738 <_ZN10KSemaphore7dequeueEv>:

KThread* KSemaphore::dequeue() {
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00113c23          	sd	ra,24(sp)
    80001740:	00813823          	sd	s0,16(sp)
    80001744:	00913423          	sd	s1,8(sp)
    80001748:	01213023          	sd	s2,0(sp)
    8000174c:	02010413          	addi	s0,sp,32
    if (head == nullptr) return nullptr;
    80001750:	00853483          	ld	s1,8(a0)
    80001754:	04048463          	beqz	s1,8000179c <_ZN10KSemaphore7dequeueEv+0x64>
    80001758:	00050913          	mv	s2,a0
    KThread* t = head;
    head = t->getNextInQueue();
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	3e4080e7          	jalr	996(ra) # 80001b44 <_ZN7KThread14getNextInQueueEv>
    80001768:	00a93423          	sd	a0,8(s2)
    if (head != nullptr)
    8000176c:	04050663          	beqz	a0,800017b8 <_ZN10KSemaphore7dequeueEv+0x80>
        head->setPrevInQueue(nullptr);
    80001770:	00000593          	li	a1,0
    80001774:	00000097          	auipc	ra,0x0
    80001778:	424080e7          	jalr	1060(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
    else
        tail = nullptr;
    t->setNextInQueue(nullptr);
    8000177c:	00000593          	li	a1,0
    80001780:	00048513          	mv	a0,s1
    80001784:	00000097          	auipc	ra,0x0
    80001788:	3f8080e7          	jalr	1016(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    t->setPrevInQueue(nullptr);
    8000178c:	00000593          	li	a1,0
    80001790:	00048513          	mv	a0,s1
    80001794:	00000097          	auipc	ra,0x0
    80001798:	404080e7          	jalr	1028(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
    return t;
}
    8000179c:	00048513          	mv	a0,s1
    800017a0:	01813083          	ld	ra,24(sp)
    800017a4:	01013403          	ld	s0,16(sp)
    800017a8:	00813483          	ld	s1,8(sp)
    800017ac:	00013903          	ld	s2,0(sp)
    800017b0:	02010113          	addi	sp,sp,32
    800017b4:	00008067          	ret
        tail = nullptr;
    800017b8:	00093823          	sd	zero,16(s2)
    800017bc:	fc1ff06f          	j	8000177c <_ZN10KSemaphore7dequeueEv+0x44>

00000000800017c0 <_ZN10KSemaphore4waitEP7KThread>:

int KSemaphore::wait(KThread* tcb) {
    if (isClosed) return -1;
    800017c0:	00454783          	lbu	a5,4(a0)
    800017c4:	04079a63          	bnez	a5,80001818 <_ZN10KSemaphore4waitEP7KThread+0x58>
    if (val > 0) { val--; return 0; }
    800017c8:	00052783          	lw	a5,0(a0)
    800017cc:	00f05a63          	blez	a5,800017e0 <_ZN10KSemaphore4waitEP7KThread+0x20>
    800017d0:	fff7879b          	addiw	a5,a5,-1
    800017d4:	00f52023          	sw	a5,0(a0)
    800017d8:	00000513          	li	a0,0
    800017dc:	00008067          	ret
int KSemaphore::wait(KThread* tcb) {
    800017e0:	ff010113          	addi	sp,sp,-16
    800017e4:	00113423          	sd	ra,8(sp)
    800017e8:	00813023          	sd	s0,0(sp)
    800017ec:	01010413          	addi	s0,sp,16
    tcb->sleepDelta = 1;
    800017f0:	00100793          	li	a5,1
    800017f4:	04f5b023          	sd	a5,64(a1)
    tcb->threadContext.x[10] = 0;
    800017f8:	0a05bc23          	sd	zero,184(a1)
    enqueue(tcb);
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	eb4080e7          	jalr	-332(ra) # 800016b0 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001804:	00100513          	li	a0,1
}
    80001808:	00813083          	ld	ra,8(sp)
    8000180c:	00013403          	ld	s0,0(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret
    if (isClosed) return -1;
    80001818:	fff00513          	li	a0,-1
}
    8000181c:	00008067          	ret

0000000080001820 <_ZN10KSemaphore6signalEv>:

int KSemaphore::signal() {
    val++;
    80001820:	00052783          	lw	a5,0(a0)
    80001824:	0017879b          	addiw	a5,a5,1
    80001828:	0007871b          	sext.w	a4,a5
    8000182c:	00f52023          	sw	a5,0(a0)
    if (head != nullptr && val >= (int)head->sleepDelta) {
    80001830:	00853783          	ld	a5,8(a0)
    80001834:	06078063          	beqz	a5,80001894 <_ZN10KSemaphore6signalEv+0x74>
int KSemaphore::signal() {
    80001838:	fe010113          	addi	sp,sp,-32
    8000183c:	00113c23          	sd	ra,24(sp)
    80001840:	00813823          	sd	s0,16(sp)
    80001844:	00913423          	sd	s1,8(sp)
    80001848:	02010413          	addi	s0,sp,32
    8000184c:	00050493          	mv	s1,a0
    if (head != nullptr && val >= (int)head->sleepDelta) {
    80001850:	0407a783          	lw	a5,64(a5)
    80001854:	00f75e63          	bge	a4,a5,80001870 <_ZN10KSemaphore6signalEv+0x50>
        KThread* t = dequeue();
        val -= (int)t->sleepDelta;
        Scheduler::Put(t);
    }
    return 0;
}
    80001858:	00000513          	li	a0,0
    8000185c:	01813083          	ld	ra,24(sp)
    80001860:	01013403          	ld	s0,16(sp)
    80001864:	00813483          	ld	s1,8(sp)
    80001868:	02010113          	addi	sp,sp,32
    8000186c:	00008067          	ret
        KThread* t = dequeue();
    80001870:	00000097          	auipc	ra,0x0
    80001874:	ec8080e7          	jalr	-312(ra) # 80001738 <_ZN10KSemaphore7dequeueEv>
        val -= (int)t->sleepDelta;
    80001878:	04053703          	ld	a4,64(a0)
    8000187c:	0004a783          	lw	a5,0(s1)
    80001880:	40e787bb          	subw	a5,a5,a4
    80001884:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(t);
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	5c8080e7          	jalr	1480(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
    80001890:	fc9ff06f          	j	80001858 <_ZN10KSemaphore6signalEv+0x38>
}
    80001894:	00000513          	li	a0,0
    80001898:	00008067          	ret

000000008000189c <_ZN10KSemaphore5waitNEP7KThreadj>:

int KSemaphore::waitN(KThread* tcb, unsigned n) {
    if (isClosed) { tcb->threadContext.x[10] = (size_t)-1; return -1; }
    8000189c:	00454783          	lbu	a5,4(a0)
    800018a0:	02079063          	bnez	a5,800018c0 <_ZN10KSemaphore5waitNEP7KThreadj+0x24>
    if (val >= (int)n) { val -= (int)n; return 0; }
    800018a4:	00052783          	lw	a5,0(a0)
    800018a8:	0006071b          	sext.w	a4,a2
    800018ac:	02e7c263          	blt	a5,a4,800018d0 <_ZN10KSemaphore5waitNEP7KThreadj+0x34>
    800018b0:	40e787bb          	subw	a5,a5,a4
    800018b4:	00f52023          	sw	a5,0(a0)
    800018b8:	00000513          	li	a0,0
    tcb->sleepDelta = (time_t)n;
    tcb->threadContext.x[10] = 0;
    enqueue(tcb);
    return 1;
}
    800018bc:	00008067          	ret
    if (isClosed) { tcb->threadContext.x[10] = (size_t)-1; return -1; }
    800018c0:	fff00793          	li	a5,-1
    800018c4:	0af5bc23          	sd	a5,184(a1)
    800018c8:	fff00513          	li	a0,-1
    800018cc:	00008067          	ret
int KSemaphore::waitN(KThread* tcb, unsigned n) {
    800018d0:	ff010113          	addi	sp,sp,-16
    800018d4:	00113423          	sd	ra,8(sp)
    800018d8:	00813023          	sd	s0,0(sp)
    800018dc:	01010413          	addi	s0,sp,16
    tcb->sleepDelta = (time_t)n;
    800018e0:	02061613          	slli	a2,a2,0x20
    800018e4:	02065613          	srli	a2,a2,0x20
    800018e8:	04c5b023          	sd	a2,64(a1)
    tcb->threadContext.x[10] = 0;
    800018ec:	0a05bc23          	sd	zero,184(a1)
    enqueue(tcb);
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	dc0080e7          	jalr	-576(ra) # 800016b0 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    800018f8:	00100513          	li	a0,1
}
    800018fc:	00813083          	ld	ra,8(sp)
    80001900:	00013403          	ld	s0,0(sp)
    80001904:	01010113          	addi	sp,sp,16
    80001908:	00008067          	ret

000000008000190c <_ZN10KSemaphore7signalNEj>:

int KSemaphore::signalN(unsigned n) {
    8000190c:	fe010113          	addi	sp,sp,-32
    80001910:	00113c23          	sd	ra,24(sp)
    80001914:	00813823          	sd	s0,16(sp)
    80001918:	00913423          	sd	s1,8(sp)
    8000191c:	02010413          	addi	s0,sp,32
    80001920:	00050493          	mv	s1,a0
    val += (int)n;
    80001924:	00052783          	lw	a5,0(a0)
    80001928:	00b787bb          	addw	a5,a5,a1
    8000192c:	00f52023          	sw	a5,0(a0)
    while (head != nullptr && val >= (int)head->sleepDelta) {
    80001930:	0084b783          	ld	a5,8(s1)
    80001934:	02078c63          	beqz	a5,8000196c <_ZN10KSemaphore7signalNEj+0x60>
    80001938:	0004a703          	lw	a4,0(s1)
    8000193c:	0407a783          	lw	a5,64(a5)
    80001940:	02f74663          	blt	a4,a5,8000196c <_ZN10KSemaphore7signalNEj+0x60>
        KThread* t = dequeue();
    80001944:	00048513          	mv	a0,s1
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	df0080e7          	jalr	-528(ra) # 80001738 <_ZN10KSemaphore7dequeueEv>
        val -= (int)t->sleepDelta;
    80001950:	04053703          	ld	a4,64(a0)
    80001954:	0004a783          	lw	a5,0(s1)
    80001958:	40e787bb          	subw	a5,a5,a4
    8000195c:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(t);
    80001960:	00000097          	auipc	ra,0x0
    80001964:	4f0080e7          	jalr	1264(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
    while (head != nullptr && val >= (int)head->sleepDelta) {
    80001968:	fc9ff06f          	j	80001930 <_ZN10KSemaphore7signalNEj+0x24>
    }
    return 0;
}
    8000196c:	00000513          	li	a0,0
    80001970:	01813083          	ld	ra,24(sp)
    80001974:	01013403          	ld	s0,16(sp)
    80001978:	00813483          	ld	s1,8(sp)
    8000197c:	02010113          	addi	sp,sp,32
    80001980:	00008067          	ret

0000000080001984 <_ZN10KSemaphore5closeEv>:

int KSemaphore::close() {
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	00913423          	sd	s1,8(sp)
    80001994:	02010413          	addi	s0,sp,32
    80001998:	00050493          	mv	s1,a0
    isClosed = true;
    8000199c:	00100793          	li	a5,1
    800019a0:	00f50223          	sb	a5,4(a0)
    KThread* t = dequeue();
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	d94080e7          	jalr	-620(ra) # 80001738 <_ZN10KSemaphore7dequeueEv>
    while (t != nullptr) {
    800019ac:	02050263          	beqz	a0,800019d0 <_ZN10KSemaphore5closeEv+0x4c>
        t->threadContext.x[10] = (size_t)-1;
    800019b0:	fff00793          	li	a5,-1
    800019b4:	0af53c23          	sd	a5,184(a0)
        Scheduler::Put(t);
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	498080e7          	jalr	1176(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
        t = dequeue();
    800019c0:	00048513          	mv	a0,s1
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	d74080e7          	jalr	-652(ra) # 80001738 <_ZN10KSemaphore7dequeueEv>
    while (t != nullptr) {
    800019cc:	fe1ff06f          	j	800019ac <_ZN10KSemaphore5closeEv+0x28>
    }
    return 0;
}
    800019d0:	00000513          	li	a0,0
    800019d4:	01813083          	ld	ra,24(sp)
    800019d8:	01013403          	ld	s0,16(sp)
    800019dc:	00813483          	ld	s1,8(sp)
    800019e0:	02010113          	addi	sp,sp,32
    800019e4:	00008067          	ret

00000000800019e8 <_ZN7KThread16threadTrampolineEPS_>:
    sstatus_val &= ~(1UL << 8); // SPP=0
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void KThread::threadTrampoline(KThread* t) {
    800019e8:	fe010113          	addi	sp,sp,-32
    800019ec:	00113c23          	sd	ra,24(sp)
    800019f0:	00813823          	sd	s0,16(sp)
    800019f4:	00913423          	sd	s1,8(sp)
    800019f8:	02010413          	addi	s0,sp,32
    800019fc:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001a00:	00053783          	ld	a5,0(a0)
    80001a04:	00078663          	beqz	a5,80001a10 <_ZN7KThread16threadTrampolineEPS_+0x28>
    80001a08:	00853503          	ld	a0,8(a0)
    80001a0c:	000780e7          	jalr	a5
    t->finished=true;
    80001a10:	00100793          	li	a5,1
    80001a14:	00f48c23          	sb	a5,24(s1)
    __asm__ volatile("li a0, 0x12; ecall");
    80001a18:	01200513          	li	a0,18
    80001a1c:	00000073          	ecall
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	02010113          	addi	sp,sp,32
    80001a30:	00008067          	ret

0000000080001a34 <_ZN7KThreadC1Ev>:
KThread::KThread() {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00813423          	sd	s0,8(sp)
    80001a3c:	01010413          	addi	s0,sp,16
}
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_ZN7KThread4initEv>:
void KThread::init() {
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00813423          	sd	s0,8(sp)
    80001a54:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001a58:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001a5c:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001a60:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001a64:	02053023          	sd	zero,32(a0)
    next = nullptr;
    80001a68:	02053423          	sd	zero,40(a0)
    stackPtr = nullptr;
    80001a6c:	02053823          	sd	zero,48(a0)
    supervisorSp = nullptr;
    80001a70:	02053c23          	sd	zero,56(a0)
    stackBase = nullptr;
    80001a74:	06053023          	sd	zero,96(a0)
    sleepDelta = 0;
    80001a78:	04053023          	sd	zero,64(a0)
    priority = 0;
    80001a7c:	04050423          	sb	zero,72(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001a80:	00000713          	li	a4,0
    80001a84:	01f00793          	li	a5,31
    80001a88:	00e7ce63          	blt	a5,a4,80001aa4 <_ZN7KThread4initEv+0x58>
    80001a8c:	00c70793          	addi	a5,a4,12 # 800c <_entry-0x7fff7ff4>
    80001a90:	00379793          	slli	a5,a5,0x3
    80001a94:	00f507b3          	add	a5,a0,a5
    80001a98:	0007b423          	sd	zero,8(a5)
    80001a9c:	0017071b          	addiw	a4,a4,1
    80001aa0:	fe5ff06f          	j	80001a84 <_ZN7KThread4initEv+0x38>
    threadContext.sepc = 0;
    80001aa4:	16053423          	sd	zero,360(a0)
    threadContext.sstatus = 0;
    80001aa8:	16053823          	sd	zero,368(a0)
    threadContext.pc = 0;
    80001aac:	16053c23          	sd	zero,376(a0)
    finished=false;
    80001ab0:	00050c23          	sb	zero,24(a0)
    waitingThread=nullptr;
    80001ab4:	04053823          	sd	zero,80(a0)
    stopperThread=nullptr;
    80001ab8:	04053c23          	sd	zero,88(a0)
}
    80001abc:	00813403          	ld	s0,8(sp)
    80001ac0:	01010113          	addi	sp,sp,16
    80001ac4:	00008067          	ret

0000000080001ac8 <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001ac8:	ff010113          	addi	sp,sp,-16
    80001acc:	00813423          	sd	s0,8(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001ad4:	00000713          	li	a4,0
    80001ad8:	01f00793          	li	a5,31
    80001adc:	02e7c463          	blt	a5,a4,80001b04 <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001ae0:	00371793          	slli	a5,a4,0x3
    80001ae4:	00f587b3          	add	a5,a1,a5
    80001ae8:	0007b683          	ld	a3,0(a5)
    80001aec:	00c70793          	addi	a5,a4,12
    80001af0:	00379793          	slli	a5,a5,0x3
    80001af4:	00f507b3          	add	a5,a0,a5
    80001af8:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    80001afc:	0017071b          	addiw	a4,a4,1
    80001b00:	fd9ff06f          	j	80001ad8 <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001b04:	03053783          	ld	a5,48(a0)
    80001b08:	06f53c23          	sd	a5,120(a0)
    threadContext.sepc = cont->sepc;
    80001b0c:	1005b783          	ld	a5,256(a1)
    80001b10:	16f53423          	sd	a5,360(a0)
    threadContext.sstatus =cont->sstatus;
    80001b14:	1085b783          	ld	a5,264(a1)
    80001b18:	16f53823          	sd	a5,368(a0)
}
    80001b1c:	00813403          	ld	s0,8(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00813423          	sd	s0,8(sp)
    80001b30:	01010413          	addi	s0,sp,16
}
    80001b34:	06850513          	addi	a0,a0,104
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00813423          	sd	s0,8(sp)
    80001b4c:	01010413          	addi	s0,sp,16
}
    80001b50:	02853503          	ld	a0,40(a0)
    80001b54:	00813403          	ld	s0,8(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
}
    80001b6c:	02053503          	ld	a0,32(a0)
    80001b70:	00813403          	ld	s0,8(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret

0000000080001b7c <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001b7c:	ff010113          	addi	sp,sp,-16
    80001b80:	00813423          	sd	s0,8(sp)
    80001b84:	01010413          	addi	s0,sp,16
    this->next = next;
    80001b88:	02b53423          	sd	a1,40(a0)
}
    80001b8c:	00813403          	ld	s0,8(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001ba4:	02b53023          	sd	a1,32(a0)
}
    80001ba8:	00813403          	ld	s0,8(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001bb4:	fe010113          	addi	sp,sp,-32
    80001bb8:	00113c23          	sd	ra,24(sp)
    80001bbc:	00813823          	sd	s0,16(sp)
    80001bc0:	00913423          	sd	s1,8(sp)
    80001bc4:	01213023          	sd	s2,0(sp)
    80001bc8:	02010413          	addi	s0,sp,32
    80001bcc:	00050493          	mv	s1,a0
    80001bd0:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	fa8080e7          	jalr	-88(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001bdc:	00090593          	mv	a1,s2
    80001be0:	00048513          	mv	a0,s1
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	fb4080e7          	jalr	-76(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001bec:	01813083          	ld	ra,24(sp)
    80001bf0:	01013403          	ld	s0,16(sp)
    80001bf4:	00813483          	ld	s1,8(sp)
    80001bf8:	00013903          	ld	s2,0(sp)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00008067          	ret

0000000080001c04 <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001c10:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001c14:	02c53823          	sd	a2,48(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001c18:	06c53c23          	sd	a2,120(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001c1c:	00000797          	auipc	a5,0x0
    80001c20:	dcc78793          	addi	a5,a5,-564 # 800019e8 <_ZN7KThread16threadTrampolineEPS_>
    80001c24:	16f53423          	sd	a5,360(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001c28:	0aa53c23          	sd	a0,184(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001c2c:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001c30:	08f53023          	sd	a5,128(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001c34:	100027f3          	csrr	a5,sstatus
    sstatus_val &= ~(1UL << 8); // SPP=0
    80001c38:	eff7f793          	andi	a5,a5,-257
    sstatus_val |= (1UL << 5); // SPIE=1
    80001c3c:	0207e793          	ori	a5,a5,32
    threadContext.sstatus = sstatus_val;
    80001c40:	16f53823          	sd	a5,368(a0)
}
    80001c44:	00813403          	ld	s0,8(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_ZL8idleBodyPv>:
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

extern "C" void thread_dispatch(void);
static void idleBody(void*) {
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00113423          	sd	ra,8(sp)
    80001c58:	00813023          	sd	s0,0(sp)
    80001c5c:	01010413          	addi	s0,sp,16
    while (true) { thread_dispatch(); }
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	7b4080e7          	jalr	1972(ra) # 80001414 <thread_dispatch>
    80001c68:	ff9ff06f          	j	80001c60 <_ZL8idleBodyPv+0x10>

0000000080001c6c <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
}
    80001c78:	0000a517          	auipc	a0,0xa
    80001c7c:	f1853503          	ld	a0,-232(a0) # 8000bb90 <_ZN9Scheduler7runningE>
    80001c80:	00813403          	ld	s0,8(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00113423          	sd	ra,8(sp)
    80001c94:	00813023          	sd	s0,0(sp)
    80001c98:	01010413          	addi	s0,sp,16
    80001c9c:	00058513          	mv	a0,a1
    running = newThread;
    80001ca0:	0000a797          	auipc	a5,0xa
    80001ca4:	eeb7b823          	sd	a1,-272(a5) # 8000bb90 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	e80080e7          	jalr	-384(ra) # 80001b28 <_ZN7KThread10getContextEv>
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	3e4080e7          	jalr	996(ra) # 80001094 <restoreContext>
}
    80001cb8:	00813083          	ld	ra,8(sp)
    80001cbc:	00013403          	ld	s0,0(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN9Scheduler8freeDeadEv>:
void Scheduler::freeDead() {
    80001cc8:	fe010113          	addi	sp,sp,-32
    80001ccc:	00113c23          	sd	ra,24(sp)
    80001cd0:	00813823          	sd	s0,16(sp)
    80001cd4:	00913423          	sd	s1,8(sp)
    80001cd8:	02010413          	addi	s0,sp,32
    if (deadThread == nullptr) return;
    80001cdc:	0000a497          	auipc	s1,0xa
    80001ce0:	ebc4b483          	ld	s1,-324(s1) # 8000bb98 <_ZN9Scheduler10deadThreadE>
    80001ce4:	02048e63          	beqz	s1,80001d20 <_ZN9Scheduler8freeDeadEv+0x58>
    deadThread = nullptr;
    80001ce8:	0000a797          	auipc	a5,0xa
    80001cec:	ea07b823          	sd	zero,-336(a5) # 8000bb98 <_ZN9Scheduler10deadThreadE>
    if (dead->stackBase) MemoryAllocator::GetInstance().FreeFragment(dead->stackBase);
    80001cf0:	0604b783          	ld	a5,96(s1)
    80001cf4:	00078c63          	beqz	a5,80001d0c <_ZN9Scheduler8freeDeadEv+0x44>
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	564080e7          	jalr	1380(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    80001d00:	0604b583          	ld	a1,96(s1)
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	650080e7          	jalr	1616(ra) # 80003354 <_ZN15MemoryAllocator12FreeFragmentEPv>
    MemoryAllocator::GetInstance().FreeFragment(dead);
    80001d0c:	00001097          	auipc	ra,0x1
    80001d10:	550080e7          	jalr	1360(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    80001d14:	00048593          	mv	a1,s1
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	63c080e7          	jalr	1596(ra) # 80003354 <_ZN15MemoryAllocator12FreeFragmentEPv>
}
    80001d20:	01813083          	ld	ra,24(sp)
    80001d24:	01013403          	ld	s0,16(sp)
    80001d28:	00813483          	ld	s1,8(sp)
    80001d2c:	02010113          	addi	sp,sp,32
    80001d30:	00008067          	ret

0000000080001d34 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001d34:	fe010113          	addi	sp,sp,-32
    80001d38:	00113c23          	sd	ra,24(sp)
    80001d3c:	00813823          	sd	s0,16(sp)
    80001d40:	00913423          	sd	s1,8(sp)
    80001d44:	01213023          	sd	s2,0(sp)
    80001d48:	02010413          	addi	s0,sp,32
    for (int i = 0; i < LEVELS; i++) {
    80001d4c:	00000493          	li	s1,0
    80001d50:	00300793          	li	a5,3
    80001d54:	0a97c463          	blt	a5,s1,80001dfc <_ZN9Scheduler7GetNextEv+0xc8>
        if (readyHead[i] == nullptr) continue;
    80001d58:	00349713          	slli	a4,s1,0x3
    80001d5c:	0000a797          	auipc	a5,0xa
    80001d60:	e3478793          	addi	a5,a5,-460 # 8000bb90 <_ZN9Scheduler7runningE>
    80001d64:	00e787b3          	add	a5,a5,a4
    80001d68:	0107b903          	ld	s2,16(a5)
    80001d6c:	06090863          	beqz	s2,80001ddc <_ZN9Scheduler7GetNextEv+0xa8>
        readyHead[i] = toRet->getNextInQueue();
    80001d70:	00090513          	mv	a0,s2
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	dd0080e7          	jalr	-560(ra) # 80001b44 <_ZN7KThread14getNextInQueueEv>
    80001d7c:	00349713          	slli	a4,s1,0x3
    80001d80:	0000a797          	auipc	a5,0xa
    80001d84:	e1078793          	addi	a5,a5,-496 # 8000bb90 <_ZN9Scheduler7runningE>
    80001d88:	00e787b3          	add	a5,a5,a4
    80001d8c:	00a7b823          	sd	a0,16(a5)
        if (readyHead[i] != nullptr) readyHead[i]->setPrevInQueue(nullptr);
    80001d90:	04050a63          	beqz	a0,80001de4 <_ZN9Scheduler7GetNextEv+0xb0>
    80001d94:	00000593          	li	a1,0
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	e00080e7          	jalr	-512(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
        toRet->setNextInQueue(nullptr);
    80001da0:	00000593          	li	a1,0
    80001da4:	00090513          	mv	a0,s2
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	dd4080e7          	jalr	-556(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
        toRet->setPrevInQueue(nullptr);
    80001db0:	00000593          	li	a1,0
    80001db4:	00090513          	mv	a0,s2
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	de0080e7          	jalr	-544(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001dc0:	00090513          	mv	a0,s2
    80001dc4:	01813083          	ld	ra,24(sp)
    80001dc8:	01013403          	ld	s0,16(sp)
    80001dcc:	00813483          	ld	s1,8(sp)
    80001dd0:	00013903          	ld	s2,0(sp)
    80001dd4:	02010113          	addi	sp,sp,32
    80001dd8:	00008067          	ret
    for (int i = 0; i < LEVELS; i++) {
    80001ddc:	0014849b          	addiw	s1,s1,1
    80001de0:	f71ff06f          	j	80001d50 <_ZN9Scheduler7GetNextEv+0x1c>
        else readyTail[i] = nullptr;
    80001de4:	00349493          	slli	s1,s1,0x3
    80001de8:	0000a797          	auipc	a5,0xa
    80001dec:	da878793          	addi	a5,a5,-600 # 8000bb90 <_ZN9Scheduler7runningE>
    80001df0:	009784b3          	add	s1,a5,s1
    80001df4:	0204b823          	sd	zero,48(s1)
    80001df8:	fa9ff06f          	j	80001da0 <_ZN9Scheduler7GetNextEv+0x6c>
    return nullptr;
    80001dfc:	00000913          	li	s2,0
    80001e00:	fc1ff06f          	j	80001dc0 <_ZN9Scheduler7GetNextEv+0x8c>

0000000080001e04 <_ZN9Scheduler12blockCurrentEP7KThread>:
void Scheduler::blockCurrent(KThread* current) {
    80001e04:	fe010113          	addi	sp,sp,-32
    80001e08:	00113c23          	sd	ra,24(sp)
    80001e0c:	00813823          	sd	s0,16(sp)
    80001e10:	00913423          	sd	s1,8(sp)
    80001e14:	02010413          	addi	s0,sp,32
    80001e18:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	f18080e7          	jalr	-232(ra) # 80001d34 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) { while (true) {} }
    80001e24:	02050463          	beqz	a0,80001e4c <_ZN9Scheduler12blockCurrentEP7KThread+0x48>
    80001e28:	00050593          	mv	a1,a0
    yield(current, next);
    80001e2c:	00048513          	mv	a0,s1
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	e5c080e7          	jalr	-420(ra) # 80001c8c <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80001e38:	01813083          	ld	ra,24(sp)
    80001e3c:	01013403          	ld	s0,16(sp)
    80001e40:	00813483          	ld	s1,8(sp)
    80001e44:	02010113          	addi	sp,sp,32
    80001e48:	00008067          	ret
    if (next == nullptr) { while (true) {} }
    80001e4c:	0000006f          	j	80001e4c <_ZN9Scheduler12blockCurrentEP7KThread+0x48>

0000000080001e50 <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    80001e50:	fd010113          	addi	sp,sp,-48
    80001e54:	02113423          	sd	ra,40(sp)
    80001e58:	02813023          	sd	s0,32(sp)
    80001e5c:	00913c23          	sd	s1,24(sp)
    80001e60:	01213823          	sd	s2,16(sp)
    80001e64:	01313423          	sd	s3,8(sp)
    80001e68:	03010413          	addi	s0,sp,48
    80001e6c:	00050493          	mv	s1,a0
    int lvl = thread->priority;
    80001e70:	04854903          	lbu	s2,72(a0)
    thread->setNextInQueue(nullptr);
    80001e74:	00000593          	li	a1,0
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	d04080e7          	jalr	-764(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(readyTail[lvl]);
    80001e80:	00391793          	slli	a5,s2,0x3
    80001e84:	0000a997          	auipc	s3,0xa
    80001e88:	d0c98993          	addi	s3,s3,-756 # 8000bb90 <_ZN9Scheduler7runningE>
    80001e8c:	00f989b3          	add	s3,s3,a5
    80001e90:	0309b583          	ld	a1,48(s3)
    80001e94:	00048513          	mv	a0,s1
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	d00080e7          	jalr	-768(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
    if (readyTail[lvl] != nullptr) readyTail[lvl]->setNextInQueue(thread);
    80001ea0:	0309b503          	ld	a0,48(s3)
    80001ea4:	04050063          	beqz	a0,80001ee4 <_ZN9Scheduler3PutEP7KThread+0x94>
    80001ea8:	00048593          	mv	a1,s1
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	cd0080e7          	jalr	-816(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    readyTail[lvl] = thread;
    80001eb4:	00391913          	slli	s2,s2,0x3
    80001eb8:	0000a797          	auipc	a5,0xa
    80001ebc:	cd878793          	addi	a5,a5,-808 # 8000bb90 <_ZN9Scheduler7runningE>
    80001ec0:	01278933          	add	s2,a5,s2
    80001ec4:	02993823          	sd	s1,48(s2)
}
    80001ec8:	02813083          	ld	ra,40(sp)
    80001ecc:	02013403          	ld	s0,32(sp)
    80001ed0:	01813483          	ld	s1,24(sp)
    80001ed4:	01013903          	ld	s2,16(sp)
    80001ed8:	00813983          	ld	s3,8(sp)
    80001edc:	03010113          	addi	sp,sp,48
    80001ee0:	00008067          	ret
    else readyHead[lvl] = thread;
    80001ee4:	00391713          	slli	a4,s2,0x3
    80001ee8:	0000a797          	auipc	a5,0xa
    80001eec:	ca878793          	addi	a5,a5,-856 # 8000bb90 <_ZN9Scheduler7runningE>
    80001ef0:	00e787b3          	add	a5,a5,a4
    80001ef4:	0097b823          	sd	s1,16(a5)
    80001ef8:	fbdff06f          	j	80001eb4 <_ZN9Scheduler3PutEP7KThread+0x64>

0000000080001efc <_ZN9Scheduler12yieldCurrentEP7KThread>:
bool Scheduler::yieldCurrent(KThread* current) {
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	01213023          	sd	s2,0(sp)
    80001f10:	02010413          	addi	s0,sp,32
    80001f14:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	e1c080e7          	jalr	-484(ra) # 80001d34 <_ZN9Scheduler7GetNextEv>
    if (next == nullptr) return false;
    80001f20:	04050463          	beqz	a0,80001f68 <_ZN9Scheduler12yieldCurrentEP7KThread+0x6c>
    80001f24:	00050913          	mv	s2,a0
    if (current) current->threadContext.x[10] = 0;
    80001f28:	00048463          	beqz	s1,80001f30 <_ZN9Scheduler12yieldCurrentEP7KThread+0x34>
    80001f2c:	0a04bc23          	sd	zero,184(s1)
    Put(current);
    80001f30:	00048513          	mv	a0,s1
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	f1c080e7          	jalr	-228(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    80001f3c:	00090593          	mv	a1,s2
    80001f40:	00048513          	mv	a0,s1
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	d48080e7          	jalr	-696(ra) # 80001c8c <_ZN9Scheduler5yieldEP7KThreadS1_>
    return true;
    80001f4c:	00100513          	li	a0,1
}
    80001f50:	01813083          	ld	ra,24(sp)
    80001f54:	01013403          	ld	s0,16(sp)
    80001f58:	00813483          	ld	s1,8(sp)
    80001f5c:	00013903          	ld	s2,0(sp)
    80001f60:	02010113          	addi	sp,sp,32
    80001f64:	00008067          	ret
    if (next == nullptr) return false;
    80001f68:	00000513          	li	a0,0
    80001f6c:	fe5ff06f          	j	80001f50 <_ZN9Scheduler12yieldCurrentEP7KThread+0x54>

0000000080001f70 <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    80001f70:	fe010113          	addi	sp,sp,-32
    80001f74:	00113c23          	sd	ra,24(sp)
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	01213023          	sd	s2,0(sp)
    80001f84:	02010413          	addi	s0,sp,32
    80001f88:	00050493          	mv	s1,a0
    deadThread = t;
    80001f8c:	0000a797          	auipc	a5,0xa
    80001f90:	c0a7b623          	sd	a0,-1012(a5) # 8000bb98 <_ZN9Scheduler10deadThreadE>
    KThread* next = GetNext();
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	da0080e7          	jalr	-608(ra) # 80001d34 <_ZN9Scheduler7GetNextEv>
    80001f9c:	00050913          	mv	s2,a0
    if (next == nullptr) {
    80001fa0:	02050263          	beqz	a0,80001fc4 <_ZN9Scheduler10ThreadExitEP7KThread+0x54>
    if (t->stopperThread)return;
    80001fa4:	0584b783          	ld	a5,88(s1)
    80001fa8:	02078463          	beqz	a5,80001fd0 <_ZN9Scheduler10ThreadExitEP7KThread+0x60>
}
    80001fac:	01813083          	ld	ra,24(sp)
    80001fb0:	01013403          	ld	s0,16(sp)
    80001fb4:	00813483          	ld	s1,8(sp)
    80001fb8:	00013903          	ld	s2,0(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80001fc4:	0104b903          	ld	s2,16(s1)
        if (next == nullptr) { while (true) {} }
    80001fc8:	fc091ee3          	bnez	s2,80001fa4 <_ZN9Scheduler10ThreadExitEP7KThread+0x34>
    80001fcc:	0000006f          	j	80001fcc <_ZN9Scheduler10ThreadExitEP7KThread+0x5c>
    if (t->waitingThread) {
    80001fd0:	0504b503          	ld	a0,80(s1)
    80001fd4:	00050e63          	beqz	a0,80001ff0 <_ZN9Scheduler10ThreadExitEP7KThread+0x80>
        Put(t->waitingThread);
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	e78080e7          	jalr	-392(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
        t->waitingThread->stopperThread = t->stopperThread;
    80001fe0:	0504b783          	ld	a5,80(s1)
    80001fe4:	0584b703          	ld	a4,88(s1)
    80001fe8:	04e7bc23          	sd	a4,88(a5)
        t->waitingThread=nullptr;
    80001fec:	0404b823          	sd	zero,80(s1)
    t->finished=true;
    80001ff0:	00100793          	li	a5,1
    80001ff4:	00f48c23          	sb	a5,24(s1)
    yield(t, next);
    80001ff8:	00090593          	mv	a1,s2
    80001ffc:	00048513          	mv	a0,s1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	c8c080e7          	jalr	-884(ra) # 80001c8c <_ZN9Scheduler5yieldEP7KThreadS1_>
    80002008:	fa5ff06f          	j	80001fac <_ZN9Scheduler10ThreadExitEP7KThread+0x3c>

000000008000200c <_ZN9Scheduler12PutPreemptedEP7KThread>:
void Scheduler::PutPreempted(KThread* thread) {
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00113423          	sd	ra,8(sp)
    80002014:	00813023          	sd	s0,0(sp)
    80002018:	01010413          	addi	s0,sp,16
    if (thread->priority < LEVELS - 1) thread->priority++;
    8000201c:	04854783          	lbu	a5,72(a0)
    80002020:	00200713          	li	a4,2
    80002024:	00f76663          	bltu	a4,a5,80002030 <_ZN9Scheduler12PutPreemptedEP7KThread+0x24>
    80002028:	0017879b          	addiw	a5,a5,1
    8000202c:	04f50423          	sb	a5,72(a0)
    Put(thread);
    80002030:	00000097          	auipc	ra,0x0
    80002034:	e20080e7          	jalr	-480(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
}
    80002038:	00813083          	ld	ra,8(sp)
    8000203c:	00013403          	ld	s0,0(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00813423          	sd	s0,8(sp)
    80002050:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80002054:	0000a797          	auipc	a5,0xa
    80002058:	ae47b783          	ld	a5,-1308(a5) # 8000bb38 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000205c:	00778793          	addi	a5,a5,7
    80002060:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80002064:	0000a717          	auipc	a4,0xa
    80002068:	b6f73e23          	sd	a5,-1156(a4) # 8000bbe0 <_ZN9Scheduler12stack_cursorE>
}
    8000206c:	00813403          	ld	s0,8(sp)
    80002070:	01010113          	addi	sp,sp,16
    80002074:	00008067          	ret

0000000080002078 <_ZN9Scheduler16SetupStartThreadEv>:
}


void Scheduler::SetupStartThread() {
    80002078:	fe010113          	addi	sp,sp,-32
    8000207c:	00113c23          	sd	ra,24(sp)
    80002080:	00813823          	sd	s0,16(sp)
    80002084:	00913423          	sd	s1,8(sp)
    80002088:	02010413          	addi	s0,sp,32
    SetupStartStack();
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	fbc080e7          	jalr	-68(ra) # 80002048 <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    80002094:	00001097          	auipc	ra,0x1
    80002098:	1c8080e7          	jalr	456(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    8000209c:	18000593          	li	a1,384
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	218080e7          	jalr	536(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800020a8:	0000a497          	auipc	s1,0xa
    800020ac:	ae848493          	addi	s1,s1,-1304 # 8000bb90 <_ZN9Scheduler7runningE>
    800020b0:	00a4b023          	sd	a0,0(s1)
    running->init();
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	998080e7          	jalr	-1640(ra) # 80001a4c <_ZN7KThread4initEv>
    setupStartContext(running->getContext());
    800020bc:	0004b503          	ld	a0,0(s1)
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	a68080e7          	jalr	-1432(ra) # 80001b28 <_ZN7KThread10getContextEv>
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	05c080e7          	jalr	92(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    800020d0:	00200793          	li	a5,2
    800020d4:	00009717          	auipc	a4,0x9
    800020d8:	78f73623          	sd	a5,1932(a4) # 8000b860 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	180080e7          	jalr	384(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    800020e4:	18000593          	li	a1,384
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	1d0080e7          	jalr	464(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800020f0:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	958080e7          	jalr	-1704(ra) # 80001a4c <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800020fc:	00000797          	auipc	a5,0x0
    80002100:	b5478793          	addi	a5,a5,-1196 # 80001c50 <_ZL8idleBodyPv>
    80002104:	00f4b023          	sd	a5,0(s1)
    80002108:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	150080e7          	jalr	336(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    80002114:	000085b7          	lui	a1,0x8
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	1a0080e7          	jalr	416(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    80002120:	00008637          	lui	a2,0x8
    80002124:	00c50633          	add	a2,a0,a2
    80002128:	00000593          	li	a1,0
    8000212c:	00048513          	mv	a0,s1
    80002130:	00000097          	auipc	ra,0x0
    80002134:	ad4080e7          	jalr	-1324(ra) # 80001c04 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    80002138:	00048513          	mv	a0,s1
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	d14080e7          	jalr	-748(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
}
    80002144:	01813083          	ld	ra,24(sp)
    80002148:	01013403          	ld	s0,16(sp)
    8000214c:	00813483          	ld	s1,8(sp)
    80002150:	02010113          	addi	sp,sp,32
    80002154:	00008067          	ret

0000000080002158 <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00813423          	sd	s0,8(sp)
    80002160:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80002164:	03053783          	ld	a5,48(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80002168:	06f53c23          	sd	a5,120(a0)
}
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret

0000000080002178 <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    80002178:	fd010113          	addi	sp,sp,-48
    8000217c:	02113423          	sd	ra,40(sp)
    80002180:	02813023          	sd	s0,32(sp)
    80002184:	00913c23          	sd	s1,24(sp)
    80002188:	01213823          	sd	s2,16(sp)
    8000218c:	01313423          	sd	s3,8(sp)
    80002190:	01413023          	sd	s4,0(sp)
    80002194:	03010413          	addi	s0,sp,48
    80002198:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    8000219c:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    800021a0:	0000a797          	auipc	a5,0xa
    800021a4:	a487b783          	ld	a5,-1464(a5) # 8000bbe8 <_ZN9Scheduler10sleepQueueE>
    800021a8:	04078e63          	beqz	a5,80002204 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    800021ac:	0407b703          	ld	a4,64(a5)
    800021b0:	04070063          	beqz	a4,800021f0 <_ZN9Scheduler9timerTickEP7KThread+0x78>
    800021b4:	fff70713          	addi	a4,a4,-1
    800021b8:	04e7b023          	sd	a4,64(a5)
    800021bc:	0340006f          	j	800021f0 <_ZN9Scheduler9timerTickEP7KThread+0x78>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    800021c0:	00048513          	mv	a0,s1
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	980080e7          	jalr	-1664(ra) # 80001b44 <_ZN7KThread14getNextInQueueEv>
    800021cc:	0000a797          	auipc	a5,0xa
    800021d0:	a0a7be23          	sd	a0,-1508(a5) # 8000bbe8 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    800021d4:	00000593          	li	a1,0
    800021d8:	00048513          	mv	a0,s1
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	9a0080e7          	jalr	-1632(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    800021e4:	00048513          	mv	a0,s1
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	c68080e7          	jalr	-920(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    800021f0:	0000a497          	auipc	s1,0xa
    800021f4:	9f84b483          	ld	s1,-1544(s1) # 8000bbe8 <_ZN9Scheduler10sleepQueueE>
    800021f8:	00048663          	beqz	s1,80002204 <_ZN9Scheduler9timerTickEP7KThread+0x8c>
    800021fc:	0404b783          	ld	a5,64(s1)
    80002200:	fc0780e3          	beqz	a5,800021c0 <_ZN9Scheduler9timerTickEP7KThread+0x48>
        }
    }

    if (current == nullptr) return;
    80002204:	12090e63          	beqz	s2,80002340 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    80002208:	00009797          	auipc	a5,0x9
    8000220c:	6587b783          	ld	a5,1624(a5) # 8000b860 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002210:	00078863          	beqz	a5,80002220 <_ZN9Scheduler9timerTickEP7KThread+0xa8>
    80002214:	fff78793          	addi	a5,a5,-1
    80002218:	00009717          	auipc	a4,0x9
    8000221c:	64f73423          	sd	a5,1608(a4) # 8000b860 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80002220:	00009797          	auipc	a5,0x9
    80002224:	6407b783          	ld	a5,1600(a5) # 8000b860 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002228:	10079c63          	bnez	a5,80002340 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>

    if (++agingTick >= 100) {
    8000222c:	0000a717          	auipc	a4,0xa
    80002230:	96470713          	addi	a4,a4,-1692 # 8000bb90 <_ZN9Scheduler7runningE>
    80002234:	06072783          	lw	a5,96(a4)
    80002238:	0017879b          	addiw	a5,a5,1
    8000223c:	0007869b          	sext.w	a3,a5
    80002240:	06f72023          	sw	a5,96(a4)
    80002244:	06300793          	li	a5,99
    80002248:	0cd7d063          	bge	a5,a3,80002308 <_ZN9Scheduler9timerTickEP7KThread+0x190>
        agingTick = 0;
    8000224c:	0000a797          	auipc	a5,0xa
    80002250:	9a07a223          	sw	zero,-1628(a5) # 8000bbf0 <_ZN9Scheduler9agingTickE>
        for (int i = 1; i < LEVELS; i++) {
    80002254:	00100493          	li	s1,1
    80002258:	0600006f          	j	800022b8 <_ZN9Scheduler9timerTickEP7KThread+0x140>
            if (readyHead[i] == nullptr) continue;
            KThread* curr = readyHead[i];
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
            if (readyTail[0] != nullptr) {
    8000225c:	0000a517          	auipc	a0,0xa
    80002260:	96453503          	ld	a0,-1692(a0) # 8000bbc0 <_ZN9Scheduler9readyTailE>
    80002264:	08050463          	beqz	a0,800022ec <_ZN9Scheduler9timerTickEP7KThread+0x174>
                readyTail[0]->setNextInQueue(readyHead[i]);
    80002268:	0000aa17          	auipc	s4,0xa
    8000226c:	928a0a13          	addi	s4,s4,-1752 # 8000bb90 <_ZN9Scheduler7runningE>
    80002270:	00349993          	slli	s3,s1,0x3
    80002274:	013a09b3          	add	s3,s4,s3
    80002278:	0109b583          	ld	a1,16(s3)
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	900080e7          	jalr	-1792(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
                readyHead[i]->setPrevInQueue(readyTail[0]);
    80002284:	030a3583          	ld	a1,48(s4)
    80002288:	0109b503          	ld	a0,16(s3)
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	90c080e7          	jalr	-1780(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
            } else {
                readyHead[0] = readyHead[i];
            }
            readyTail[0] = readyTail[i];
    80002294:	0000a717          	auipc	a4,0xa
    80002298:	8fc70713          	addi	a4,a4,-1796 # 8000bb90 <_ZN9Scheduler7runningE>
    8000229c:	00349793          	slli	a5,s1,0x3
    800022a0:	00f707b3          	add	a5,a4,a5
    800022a4:	0307b683          	ld	a3,48(a5)
    800022a8:	02d73823          	sd	a3,48(a4)
            readyHead[i] = readyTail[i] = nullptr;
    800022ac:	0207b823          	sd	zero,48(a5)
    800022b0:	0007b823          	sd	zero,16(a5)
        for (int i = 1; i < LEVELS; i++) {
    800022b4:	0014849b          	addiw	s1,s1,1
    800022b8:	00300793          	li	a5,3
    800022bc:	0497c663          	blt	a5,s1,80002308 <_ZN9Scheduler9timerTickEP7KThread+0x190>
            if (readyHead[i] == nullptr) continue;
    800022c0:	00349713          	slli	a4,s1,0x3
    800022c4:	0000a797          	auipc	a5,0xa
    800022c8:	8cc78793          	addi	a5,a5,-1844 # 8000bb90 <_ZN9Scheduler7runningE>
    800022cc:	00e787b3          	add	a5,a5,a4
    800022d0:	0107b503          	ld	a0,16(a5)
    800022d4:	fe0500e3          	beqz	a0,800022b4 <_ZN9Scheduler9timerTickEP7KThread+0x13c>
            while (curr) { curr->priority = 0; curr = curr->getNextInQueue(); }
    800022d8:	f80502e3          	beqz	a0,8000225c <_ZN9Scheduler9timerTickEP7KThread+0xe4>
    800022dc:	04050423          	sb	zero,72(a0)
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	864080e7          	jalr	-1948(ra) # 80001b44 <_ZN7KThread14getNextInQueueEv>
    800022e8:	ff1ff06f          	j	800022d8 <_ZN9Scheduler9timerTickEP7KThread+0x160>
                readyHead[0] = readyHead[i];
    800022ec:	0000a717          	auipc	a4,0xa
    800022f0:	8a470713          	addi	a4,a4,-1884 # 8000bb90 <_ZN9Scheduler7runningE>
    800022f4:	00349793          	slli	a5,s1,0x3
    800022f8:	00f707b3          	add	a5,a4,a5
    800022fc:	0107b783          	ld	a5,16(a5)
    80002300:	00f73823          	sd	a5,16(a4)
    80002304:	f91ff06f          	j	80002294 <_ZN9Scheduler9timerTickEP7KThread+0x11c>
        }
    }

    KThread* next = GetNext();
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	a2c080e7          	jalr	-1492(ra) # 80001d34 <_ZN9Scheduler7GetNextEv>
    80002310:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002314:	00200793          	li	a5,2
    80002318:	00009717          	auipc	a4,0x9
    8000231c:	54f73423          	sd	a5,1352(a4) # 8000b860 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002320:	02050063          	beqz	a0,80002340 <_ZN9Scheduler9timerTickEP7KThread+0x1c8>
    PutPreempted(current);
    80002324:	00090513          	mv	a0,s2
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	ce4080e7          	jalr	-796(ra) # 8000200c <_ZN9Scheduler12PutPreemptedEP7KThread>
    yield(current, next);
    80002330:	00048593          	mv	a1,s1
    80002334:	00090513          	mv	a0,s2
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	954080e7          	jalr	-1708(ra) # 80001c8c <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80002340:	02813083          	ld	ra,40(sp)
    80002344:	02013403          	ld	s0,32(sp)
    80002348:	01813483          	ld	s1,24(sp)
    8000234c:	01013903          	ld	s2,16(sp)
    80002350:	00813983          	ld	s3,8(sp)
    80002354:	00013a03          	ld	s4,0(sp)
    80002358:	03010113          	addi	sp,sp,48
    8000235c:	00008067          	ret

0000000080002360 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    80002360:	fd010113          	addi	sp,sp,-48
    80002364:	02113423          	sd	ra,40(sp)
    80002368:	02813023          	sd	s0,32(sp)
    8000236c:	00913c23          	sd	s1,24(sp)
    80002370:	01213823          	sd	s2,16(sp)
    80002374:	01313423          	sd	s3,8(sp)
    80002378:	01413023          	sd	s4,0(sp)
    8000237c:	03010413          	addi	s0,sp,48
    80002380:	00050a13          	mv	s4,a0
    80002384:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    80002388:	0000a497          	auipc	s1,0xa
    8000238c:	8604b483          	ld	s1,-1952(s1) # 8000bbe8 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    80002390:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    80002394:	02048463          	beqz	s1,800023bc <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    80002398:	0404b783          	ld	a5,64(s1)
    8000239c:	02f96063          	bltu	s2,a5,800023bc <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    800023a0:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    800023a4:	00048513          	mv	a0,s1
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	79c080e7          	jalr	1948(ra) # 80001b44 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    800023b0:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    800023b4:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    800023b8:	fddff06f          	j	80002394 <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    800023bc:	052a3023          	sd	s2,64(s4)
    thread->setNextInQueue(current);
    800023c0:	00048593          	mv	a1,s1
    800023c4:	000a0513          	mv	a0,s4
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	7b4080e7          	jalr	1972(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    800023d0:	04098263          	beqz	s3,80002414 <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    800023d4:	000a0593          	mv	a1,s4
    800023d8:	00098513          	mv	a0,s3
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	7a0080e7          	jalr	1952(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    800023e4:	00048863          	beqz	s1,800023f4 <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    800023e8:	0404b583          	ld	a1,64(s1)
    800023ec:	41258933          	sub	s2,a1,s2
    800023f0:	0524b023          	sd	s2,64(s1)
}
    800023f4:	02813083          	ld	ra,40(sp)
    800023f8:	02013403          	ld	s0,32(sp)
    800023fc:	01813483          	ld	s1,24(sp)
    80002400:	01013903          	ld	s2,16(sp)
    80002404:	00813983          	ld	s3,8(sp)
    80002408:	00013a03          	ld	s4,0(sp)
    8000240c:	03010113          	addi	sp,sp,48
    80002410:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    80002414:	00009797          	auipc	a5,0x9
    80002418:	7d47ba23          	sd	s4,2004(a5) # 8000bbe8 <_ZN9Scheduler10sleepQueueE>
    8000241c:	fc9ff06f          	j	800023e4 <_ZN9Scheduler5sleepEP7KThreadm+0x84>

0000000080002420 <_ZN9Scheduler10joinThreadEP7KThread>:

void Scheduler::joinThread(KThread* joiningThread) {
    if (joiningThread == nullptr||joiningThread->finished) return;
    80002420:	00050863          	beqz	a0,80002430 <_ZN9Scheduler10joinThreadEP7KThread+0x10>
    80002424:	00050793          	mv	a5,a0
    80002428:	01854703          	lbu	a4,24(a0)
    8000242c:	00070463          	beqz	a4,80002434 <_ZN9Scheduler10joinThreadEP7KThread+0x14>
    80002430:	00008067          	ret
void Scheduler::joinThread(KThread* joiningThread) {
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00113423          	sd	ra,8(sp)
    8000243c:	00813023          	sd	s0,0(sp)
    80002440:	01010413          	addi	s0,sp,16
    joiningThread->waitingThread = running;
    80002444:	00009517          	auipc	a0,0x9
    80002448:	74c53503          	ld	a0,1868(a0) # 8000bb90 <_ZN9Scheduler7runningE>
    8000244c:	04a7b823          	sd	a0,80(a5)
    running->stopperThread = joiningThread;
    80002450:	04f53c23          	sd	a5,88(a0)
    blockCurrent(running);
    80002454:	00000097          	auipc	ra,0x0
    80002458:	9b0080e7          	jalr	-1616(ra) # 80001e04 <_ZN9Scheduler12blockCurrentEP7KThread>

    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    8000247c:	00009517          	auipc	a0,0x9
    80002480:	77c50513          	addi	a0,a0,1916 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	038080e7          	jalr	56(ra) # 800014bc <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    8000248c:	00009797          	auipc	a5,0x9
    80002490:	68c7b783          	ld	a5,1676(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002494:	0007b783          	ld	a5,0(a5)
    80002498:	0007c783          	lbu	a5,0(a5)
    8000249c:	0ff7f793          	andi	a5,a5,255
    800024a0:	0207f793          	andi	a5,a5,32
    800024a4:	fe0784e3          	beqz	a5,8000248c <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    800024a8:	00009717          	auipc	a4,0x9
    800024ac:	75070713          	addi	a4,a4,1872 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    800024b0:	01872783          	lw	a5,24(a4)
    800024b4:	01c72703          	lw	a4,28(a4)
    800024b8:	fce782e3          	beq	a5,a4,8000247c <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    800024bc:	00009697          	auipc	a3,0x9
    800024c0:	73c68693          	addi	a3,a3,1852 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    800024c4:	00f68733          	add	a4,a3,a5
    800024c8:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    800024cc:	0017879b          	addiw	a5,a5,1
    800024d0:	41f7d71b          	sraiw	a4,a5,0x1f
    800024d4:	0187571b          	srliw	a4,a4,0x18
    800024d8:	00e787bb          	addw	a5,a5,a4
    800024dc:	0ff7f793          	andi	a5,a5,255
    800024e0:	40e787bb          	subw	a5,a5,a4
    800024e4:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    800024e8:	00009797          	auipc	a5,0x9
    800024ec:	6407b783          	ld	a5,1600(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x20>
    800024f0:	0007b783          	ld	a5,0(a5)
    800024f4:	00c78023          	sb	a2,0(a5)
    800024f8:	f85ff06f          	j	8000247c <_ZN7Konsole16outputThreadBodyEPv+0x10>

00000000800024fc <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    800024fc:	fe010113          	addi	sp,sp,-32
    80002500:	00113c23          	sd	ra,24(sp)
    80002504:	00813823          	sd	s0,16(sp)
    80002508:	00913423          	sd	s1,8(sp)
    8000250c:	02010413          	addi	s0,sp,32
    80002510:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80002514:	00000593          	li	a1,0
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	664080e7          	jalr	1636(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    80002520:	00009597          	auipc	a1,0x9
    80002524:	7f85b583          	ld	a1,2040(a1) # 8000bd18 <_ZN7Konsole14getcWaiterTailE>
    80002528:	04058063          	beqz	a1,80002568 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    8000252c:	00048513          	mv	a0,s1
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	668080e7          	jalr	1640(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    80002538:	00048593          	mv	a1,s1
    8000253c:	00009517          	auipc	a0,0x9
    80002540:	7dc53503          	ld	a0,2012(a0) # 8000bd18 <_ZN7Konsole14getcWaiterTailE>
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	638080e7          	jalr	1592(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    8000254c:	00009797          	auipc	a5,0x9
    80002550:	7c97b623          	sd	s1,1996(a5) # 8000bd18 <_ZN7Konsole14getcWaiterTailE>
}
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	02010113          	addi	sp,sp,32
    80002564:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80002568:	00000593          	li	a1,0
    8000256c:	00048513          	mv	a0,s1
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	628080e7          	jalr	1576(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    80002578:	00009797          	auipc	a5,0x9
    8000257c:	7a97b423          	sd	s1,1960(a5) # 8000bd20 <_ZN7Konsole14getcWaiterHeadE>
    80002580:	fcdff06f          	j	8000254c <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

0000000080002584 <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    80002584:	fe010113          	addi	sp,sp,-32
    80002588:	00113c23          	sd	ra,24(sp)
    8000258c:	00813823          	sd	s0,16(sp)
    80002590:	00913423          	sd	s1,8(sp)
    80002594:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    80002598:	00009497          	auipc	s1,0x9
    8000259c:	7884b483          	ld	s1,1928(s1) # 8000bd20 <_ZN7Konsole14getcWaiterHeadE>
    800025a0:	04048463          	beqz	s1,800025e8 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    800025a4:	00048513          	mv	a0,s1
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	59c080e7          	jalr	1436(ra) # 80001b44 <_ZN7KThread14getNextInQueueEv>
    800025b0:	00009797          	auipc	a5,0x9
    800025b4:	76a7b823          	sd	a0,1904(a5) # 8000bd20 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    800025b8:	04050463          	beqz	a0,80002600 <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    800025bc:	00000593          	li	a1,0
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	5d8080e7          	jalr	1496(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    800025c8:	00000593          	li	a1,0
    800025cc:	00048513          	mv	a0,s1
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	5ac080e7          	jalr	1452(ra) # 80001b7c <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    800025d8:	00000593          	li	a1,0
    800025dc:	00048513          	mv	a0,s1
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	5b8080e7          	jalr	1464(ra) # 80001b98 <_ZN7KThread14setPrevInQueueEPS_>
}
    800025e8:	00048513          	mv	a0,s1
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00008067          	ret
    else getcWaiterTail = nullptr;
    80002600:	00009797          	auipc	a5,0x9
    80002604:	7007bc23          	sd	zero,1816(a5) # 8000bd18 <_ZN7Konsole14getcWaiterTailE>
    80002608:	fc1ff06f          	j	800025c8 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

000000008000260c <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    80002620:	00009517          	auipc	a0,0x9
    80002624:	5d850513          	addi	a0,a0,1496 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    80002628:	12052823          	sw	zero,304(a0)
    8000262c:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    80002630:	00052c23          	sw	zero,24(a0)
    80002634:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    80002638:	12053423          	sd	zero,296(a0)
    8000263c:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    80002640:	00000593          	li	a1,0
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	044080e7          	jalr	68(ra) # 80001688 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    8000264c:	00001097          	auipc	ra,0x1
    80002650:	c10080e7          	jalr	-1008(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    80002654:	18000593          	li	a1,384
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	c60080e7          	jalr	-928(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002660:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	3e8080e7          	jalr	1000(ra) # 80001a4c <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    8000266c:	00000797          	auipc	a5,0x0
    80002670:	e0078793          	addi	a5,a5,-512 # 8000246c <_ZN7Konsole16outputThreadBodyEPv>
    80002674:	00f4b023          	sd	a5,0(s1)
    80002678:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    8000267c:	00001097          	auipc	ra,0x1
    80002680:	be0080e7          	jalr	-1056(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    80002684:	000085b7          	lui	a1,0x8
    80002688:	00001097          	auipc	ra,0x1
    8000268c:	c30080e7          	jalr	-976(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    80002690:	00008637          	lui	a2,0x8
    80002694:	00c50633          	add	a2,a0,a2
    80002698:	00000593          	li	a1,0
    8000269c:	00048513          	mv	a0,s1
    800026a0:	fffff097          	auipc	ra,0xfffff
    800026a4:	564080e7          	jalr	1380(ra) # 80001c04 <_ZN7KThread5setupEPS_Pm>
    outputThread->threadContext.sstatus |= (1UL << 8);
    800026a8:	1704b783          	ld	a5,368(s1)
    800026ac:	1007e793          	ori	a5,a5,256
    800026b0:	16f4b823          	sd	a5,368(s1)
    Scheduler::Put(outputThread);
    800026b4:	00048513          	mv	a0,s1
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	798080e7          	jalr	1944(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
}
    800026c0:	01813083          	ld	ra,24(sp)
    800026c4:	01013403          	ld	s0,16(sp)
    800026c8:	00813483          	ld	s1,8(sp)
    800026cc:	02010113          	addi	sp,sp,32
    800026d0:	00008067          	ret

00000000800026d4 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    800026d4:	fe010113          	addi	sp,sp,-32
    800026d8:	00113c23          	sd	ra,24(sp)
    800026dc:	00813823          	sd	s0,16(sp)
    800026e0:	00913423          	sd	s1,8(sp)
    800026e4:	01213023          	sd	s2,0(sp)
    800026e8:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    800026ec:	00005097          	auipc	ra,0x5
    800026f0:	098080e7          	jalr	152(ra) # 80007784 <plic_claim>
    800026f4:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    800026f8:	00a00793          	li	a5,10
    800026fc:	02f50663          	beq	a0,a5,80002728 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    80002700:	0a049463          	bnez	s1,800027a8 <_ZN7Konsole15handleInterruptEv+0xd4>
}
    80002704:	01813083          	ld	ra,24(sp)
    80002708:	01013403          	ld	s0,16(sp)
    8000270c:	00813483          	ld	s1,8(sp)
    80002710:	00013903          	ld	s2,0(sp)
    80002714:	02010113          	addi	sp,sp,32
    80002718:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    8000271c:	0b253c23          	sd	s2,184(a0)
                Scheduler::Put(waiter);
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	730080e7          	jalr	1840(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80002728:	00009797          	auipc	a5,0x9
    8000272c:	3f07b783          	ld	a5,1008(a5) # 8000bb18 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002730:	0007b783          	ld	a5,0(a5)
    80002734:	0007c783          	lbu	a5,0(a5)
    80002738:	0017f793          	andi	a5,a5,1
    8000273c:	fc0782e3          	beqz	a5,80002700 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    80002740:	00009797          	auipc	a5,0x9
    80002744:	3d07b783          	ld	a5,976(a5) # 8000bb10 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002748:	0007b783          	ld	a5,0(a5)
    8000274c:	0007c783          	lbu	a5,0(a5)
    80002750:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    80002754:	00000097          	auipc	ra,0x0
    80002758:	e30080e7          	jalr	-464(ra) # 80002584 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    8000275c:	fc0510e3          	bnez	a0,8000271c <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    80002760:	00009617          	auipc	a2,0x9
    80002764:	49860613          	addi	a2,a2,1176 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    80002768:	13462683          	lw	a3,308(a2)
    8000276c:	0016879b          	addiw	a5,a3,1
    80002770:	41f7d71b          	sraiw	a4,a5,0x1f
    80002774:	0187571b          	srliw	a4,a4,0x18
    80002778:	00e787bb          	addw	a5,a5,a4
    8000277c:	0ff7f793          	andi	a5,a5,255
    80002780:	40e787bb          	subw	a5,a5,a4
    80002784:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    80002788:	13062603          	lw	a2,304(a2)
    8000278c:	f8e60ee3          	beq	a2,a4,80002728 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    80002790:	00009717          	auipc	a4,0x9
    80002794:	46870713          	addi	a4,a4,1128 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    80002798:	00d706b3          	add	a3,a4,a3
    8000279c:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    800027a0:	12f72a23          	sw	a5,308(a4)
    800027a4:	f85ff06f          	j	80002728 <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    800027a8:	00048513          	mv	a0,s1
    800027ac:	00005097          	auipc	ra,0x5
    800027b0:	010080e7          	jalr	16(ra) # 800077bc <plic_complete>
}
    800027b4:	f51ff06f          	j	80002704 <_ZN7Konsole15handleInterruptEv+0x30>

00000000800027b8 <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    800027b8:	fe010113          	addi	sp,sp,-32
    800027bc:	00113c23          	sd	ra,24(sp)
    800027c0:	00813823          	sd	s0,16(sp)
    800027c4:	00913423          	sd	s1,8(sp)
    800027c8:	02010413          	addi	s0,sp,32
    800027cc:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    800027d0:	00009617          	auipc	a2,0x9
    800027d4:	42860613          	addi	a2,a2,1064 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    800027d8:	01c62683          	lw	a3,28(a2)
    800027dc:	0016879b          	addiw	a5,a3,1
    800027e0:	41f7d71b          	sraiw	a4,a5,0x1f
    800027e4:	0187571b          	srliw	a4,a4,0x18
    800027e8:	00e787bb          	addw	a5,a5,a4
    800027ec:	0ff7f793          	andi	a5,a5,255
    800027f0:	40e787bb          	subw	a5,a5,a4
    800027f4:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    800027f8:	01862603          	lw	a2,24(a2)
    800027fc:	04e60063          	beq	a2,a4,8000283c <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    80002800:	00009517          	auipc	a0,0x9
    80002804:	3f850513          	addi	a0,a0,1016 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    80002808:	00d506b3          	add	a3,a0,a3
    8000280c:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    80002810:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	00c080e7          	jalr	12(ra) # 80001820 <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    8000281c:	02048a63          	beqz	s1,80002850 <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    80002820:	0a04bc23          	sd	zero,184(s1)
    return 0;
    80002824:	00000513          	li	a0,0
}
    80002828:	01813083          	ld	ra,24(sp)
    8000282c:	01013403          	ld	s0,16(sp)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    8000283c:	00050663          	beqz	a0,80002848 <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    80002840:	fff00793          	li	a5,-1
    80002844:	0af53c23          	sd	a5,184(a0)
        return -1;
    80002848:	fff00513          	li	a0,-1
    8000284c:	fddff06f          	j	80002828 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    80002850:	00000513          	li	a0,0
    80002854:	fd5ff06f          	j	80002828 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

0000000080002858 <_ZN7Konsole10getcKernelEP7KThread>:


int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    80002858:	00009717          	auipc	a4,0x9
    8000285c:	3a070713          	addi	a4,a4,928 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    80002860:	13072783          	lw	a5,304(a4)
    80002864:	13472703          	lw	a4,308(a4)
    80002868:	04e78063          	beq	a5,a4,800028a8 <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    8000286c:	00009617          	auipc	a2,0x9
    80002870:	38c60613          	addi	a2,a2,908 # 8000bbf8 <_ZN7Konsole11outputItemsE>
    80002874:	00f60733          	add	a4,a2,a5
    80002878:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    8000287c:	0017879b          	addiw	a5,a5,1
    80002880:	41f7d71b          	sraiw	a4,a5,0x1f
    80002884:	0187571b          	srliw	a4,a4,0x18
    80002888:	00e787bb          	addw	a5,a5,a4
    8000288c:	0ff7f793          	andi	a5,a5,255
    80002890:	40e787bb          	subw	a5,a5,a4
    80002894:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002898:	00050463          	beqz	a0,800028a0 <_ZN7Konsole10getcKernelEP7KThread+0x48>
    8000289c:	0ad53c23          	sd	a3,184(a0)
        return (unsigned char)c;
    800028a0:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    800028a4:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	c44080e7          	jalr	-956(ra) # 800024fc <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    800028c0:	ffe00513          	li	a0,-2
    800028c4:	00813083          	ld	ra,8(sp)
    800028c8:	00013403          	ld	s0,0(sp)
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret

00000000800028d4 <userMainK>:
void userMain();
void myUserMain();

extern "C" void userMainK(void) {
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00113423          	sd	ra,8(sp)
    800028dc:	00813023          	sd	s0,0(sp)
    800028e0:	01010413          	addi	s0,sp,16
    const bool mytests=false;
    if (!mytests) {
        userMain();
    800028e4:	00002097          	auipc	ra,0x2
    800028e8:	590080e7          	jalr	1424(ra) # 80004e74 <_Z8userMainv>
    }else myUserMain();
}
    800028ec:	00813083          	ld	ra,8(sp)
    800028f0:	00013403          	ld	s0,0(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZN6TestTh10testThBodyEPv>:
    void run() override {
        testThBody(nullptr);

    }
};
void TestTh::testThBody(void* arg) {
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00113c23          	sd	ra,24(sp)
    80002904:	00813823          	sd	s0,16(sp)
    80002908:	00913423          	sd	s1,8(sp)
    8000290c:	02010413          	addi	s0,sp,32
    for (long long i=0; i < 5;i++) {
    80002910:	00000493          	li	s1,0
    80002914:	00400793          	li	a5,4
    80002918:	0297c463          	blt	a5,s1,80002940 <_ZN6TestTh10testThBodyEPv+0x44>
        printString("a\n");
    8000291c:	00006517          	auipc	a0,0x6
    80002920:	70450513          	addi	a0,a0,1796 # 80009020 <CONSOLE_STATUS+0x10>
    80002924:	00003097          	auipc	ra,0x3
    80002928:	508080e7          	jalr	1288(ra) # 80005e2c <_Z11printStringPKc>
        sleep(10);
    8000292c:	00a00513          	li	a0,10
    80002930:	00000097          	auipc	ra,0x0
    80002934:	6b4080e7          	jalr	1716(ra) # 80002fe4 <_ZN6Thread5sleepEm>
    for (long long i=0; i < 5;i++) {
    80002938:	00148493          	addi	s1,s1,1
    8000293c:	fd9ff06f          	j	80002914 <_ZN6TestTh10testThBodyEPv+0x18>
    }
    printString("Thread1 Finished\n");
    80002940:	00006517          	auipc	a0,0x6
    80002944:	6e850513          	addi	a0,a0,1768 # 80009028 <CONSOLE_STATUS+0x18>
    80002948:	00003097          	auipc	ra,0x3
    8000294c:	4e4080e7          	jalr	1252(ra) # 80005e2c <_Z11printStringPKc>
    thread_dispatch();
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	ac4080e7          	jalr	-1340(ra) # 80001414 <thread_dispatch>
}
    80002958:	01813083          	ld	ra,24(sp)
    8000295c:	01013403          	ld	s0,16(sp)
    80002960:	00813483          	ld	s1,8(sp)
    80002964:	02010113          	addi	sp,sp,32
    80002968:	00008067          	ret

000000008000296c <_ZN7TestTh211testTh2BodyEPv>:
        testTh2Body(nullptr);

    }
};

void TestTh2::testTh2Body(void* arg) {
    8000296c:	fe010113          	addi	sp,sp,-32
    80002970:	00113c23          	sd	ra,24(sp)
    80002974:	00813823          	sd	s0,16(sp)
    80002978:	00913423          	sd	s1,8(sp)
    8000297c:	02010413          	addi	s0,sp,32
    for (long long i=0; i < 5;i++) {
    80002980:	00000493          	li	s1,0
    80002984:	00400793          	li	a5,4
    80002988:	0297c463          	blt	a5,s1,800029b0 <_ZN7TestTh211testTh2BodyEPv+0x44>
        printString("k\n");
    8000298c:	00006517          	auipc	a0,0x6
    80002990:	6b450513          	addi	a0,a0,1716 # 80009040 <CONSOLE_STATUS+0x30>
    80002994:	00003097          	auipc	ra,0x3
    80002998:	498080e7          	jalr	1176(ra) # 80005e2c <_Z11printStringPKc>
        sleep(20);
    8000299c:	01400513          	li	a0,20
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	644080e7          	jalr	1604(ra) # 80002fe4 <_ZN6Thread5sleepEm>
    for (long long i=0; i < 5;i++) {
    800029a8:	00148493          	addi	s1,s1,1
    800029ac:	fd9ff06f          	j	80002984 <_ZN7TestTh211testTh2BodyEPv+0x18>
    }
    printString("Thread2 Finished\n");
    800029b0:	00006517          	auipc	a0,0x6
    800029b4:	69850513          	addi	a0,a0,1688 # 80009048 <CONSOLE_STATUS+0x38>
    800029b8:	00003097          	auipc	ra,0x3
    800029bc:	474080e7          	jalr	1140(ra) # 80005e2c <_Z11printStringPKc>
    thread_dispatch();
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	a54080e7          	jalr	-1452(ra) # 80001414 <thread_dispatch>
}
    800029c8:	01813083          	ld	ra,24(sp)
    800029cc:	01013403          	ld	s0,16(sp)
    800029d0:	00813483          	ld	s1,8(sp)
    800029d4:	02010113          	addi	sp,sp,32
    800029d8:	00008067          	ret

00000000800029dc <_ZN7TestTh311testTh3BodyEPv>:
    void run() override {
        testTh3Body(nullptr);

    }
};
void TestTh3::testTh3Body(void* arg) {
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00113423          	sd	ra,8(sp)
    800029e4:	00813023          	sd	s0,0(sp)
    800029e8:	01010413          	addi	s0,sp,16
    printString("All Finished\n");
    800029ec:	00006517          	auipc	a0,0x6
    800029f0:	67450513          	addi	a0,a0,1652 # 80009060 <CONSOLE_STATUS+0x50>
    800029f4:	00003097          	auipc	ra,0x3
    800029f8:	438080e7          	jalr	1080(ra) # 80005e2c <_Z11printStringPKc>
    thread_dispatch();
    800029fc:	fffff097          	auipc	ra,0xfffff
    80002a00:	a18080e7          	jalr	-1512(ra) # 80001414 <thread_dispatch>
}
    80002a04:	00813083          	ld	ra,8(sp)
    80002a08:	00013403          	ld	s0,0(sp)
    80002a0c:	01010113          	addi	sp,sp,16
    80002a10:	00008067          	ret

0000000080002a14 <_Z10myUserMainv>:
void myUserMain() {
    80002a14:	fe010113          	addi	sp,sp,-32
    80002a18:	00113c23          	sd	ra,24(sp)
    80002a1c:	00813823          	sd	s0,16(sp)
    80002a20:	00913423          	sd	s1,8(sp)
    80002a24:	01213023          	sd	s2,0(sp)
    80002a28:	02010413          	addi	s0,sp,32
    getc();
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	b18080e7          	jalr	-1256(ra) # 80001544 <getc>
    printString("Hello World!");
    80002a34:	00006517          	auipc	a0,0x6
    80002a38:	63c50513          	addi	a0,a0,1596 # 80009070 <CONSOLE_STATUS+0x60>
    80002a3c:	00003097          	auipc	ra,0x3
    80002a40:	3f0080e7          	jalr	1008(ra) # 80005e2c <_Z11printStringPKc>
    Thread* th1 = new TestTh();
    80002a44:	02000513          	li	a0,32
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	408080e7          	jalr	1032(ra) # 80002e50 <_Znwm>
    80002a50:	00050913          	mv	s2,a0
    TestTh():Thread() {}
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	4e4080e7          	jalr	1252(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80002a5c:	00009797          	auipc	a5,0x9
    80002a60:	e1c78793          	addi	a5,a5,-484 # 8000b878 <_ZTV6TestTh+0x10>
    80002a64:	00f93023          	sd	a5,0(s2)
    Thread* th2 = new TestTh2();
    80002a68:	02000513          	li	a0,32
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	3e4080e7          	jalr	996(ra) # 80002e50 <_Znwm>
    80002a74:	00050493          	mv	s1,a0
    TestTh2():Thread() {}
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	4c0080e7          	jalr	1216(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80002a80:	00009797          	auipc	a5,0x9
    80002a84:	e2078793          	addi	a5,a5,-480 # 8000b8a0 <_ZTV7TestTh2+0x10>
    80002a88:	00f4b023          	sd	a5,0(s1)
    th1->start();
    80002a8c:	00090513          	mv	a0,s2
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	4d8080e7          	jalr	1240(ra) # 80002f68 <_ZN6Thread5startEv>
    th1->dispatch();
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	524080e7          	jalr	1316(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    th2->start();
    80002aa0:	00048513          	mv	a0,s1
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	4c4080e7          	jalr	1220(ra) # 80002f68 <_ZN6Thread5startEv>
    th2->dispatch();
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	510080e7          	jalr	1296(ra) # 80002fbc <_ZN6Thread8dispatchEv>

    Thread::join(th2);
    80002ab4:	00048513          	mv	a0,s1
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	5e4080e7          	jalr	1508(ra) # 8000309c <_ZN6Thread4joinEPS_>
    Thread::join(th1);
    80002ac0:	00090513          	mv	a0,s2
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	5d8080e7          	jalr	1496(ra) # 8000309c <_ZN6Thread4joinEPS_>
    Thread* th3 = new TestTh3();
    80002acc:	02000513          	li	a0,32
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	380080e7          	jalr	896(ra) # 80002e50 <_Znwm>
    80002ad8:	00050493          	mv	s1,a0
    TestTh3():Thread() {}
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	45c080e7          	jalr	1116(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80002ae4:	00009797          	auipc	a5,0x9
    80002ae8:	de478793          	addi	a5,a5,-540 # 8000b8c8 <_ZTV7TestTh3+0x10>
    80002aec:	00f4b023          	sd	a5,0(s1)
    th3->start();
    80002af0:	00048513          	mv	a0,s1
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	474080e7          	jalr	1140(ra) # 80002f68 <_ZN6Thread5startEv>
    th3->dispatch();
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	4c0080e7          	jalr	1216(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    Thread::join(th3);
    80002b04:	00048513          	mv	a0,s1
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	594080e7          	jalr	1428(ra) # 8000309c <_ZN6Thread4joinEPS_>

    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	00013903          	ld	s2,0(sp)
    80002b20:	02010113          	addi	sp,sp,32
    80002b24:	00008067          	ret
    80002b28:	00050493          	mv	s1,a0
    Thread* th1 = new TestTh();
    80002b2c:	00090513          	mv	a0,s2
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	348080e7          	jalr	840(ra) # 80002e78 <_ZdlPv>
    80002b38:	00048513          	mv	a0,s1
    80002b3c:	0000a097          	auipc	ra,0xa
    80002b40:	41c080e7          	jalr	1052(ra) # 8000cf58 <_Unwind_Resume>
    80002b44:	00050913          	mv	s2,a0
    Thread* th2 = new TestTh2();
    80002b48:	00048513          	mv	a0,s1
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	32c080e7          	jalr	812(ra) # 80002e78 <_ZdlPv>
    80002b54:	00090513          	mv	a0,s2
    80002b58:	0000a097          	auipc	ra,0xa
    80002b5c:	400080e7          	jalr	1024(ra) # 8000cf58 <_Unwind_Resume>
    80002b60:	00050913          	mv	s2,a0
    Thread* th3 = new TestTh3();
    80002b64:	00048513          	mv	a0,s1
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	310080e7          	jalr	784(ra) # 80002e78 <_ZdlPv>
    80002b70:	00090513          	mv	a0,s2
    80002b74:	0000a097          	auipc	ra,0xa
    80002b78:	3e4080e7          	jalr	996(ra) # 8000cf58 <_Unwind_Resume>

0000000080002b7c <_ZN6TestThD1Ev>:
class TestTh: public Thread {
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00113423          	sd	ra,8(sp)
    80002b84:	00813023          	sd	s0,0(sp)
    80002b88:	01010413          	addi	s0,sp,16
    80002b8c:	00009797          	auipc	a5,0x9
    80002b90:	cec78793          	addi	a5,a5,-788 # 8000b878 <_ZTV6TestTh+0x10>
    80002b94:	00f53023          	sd	a5,0(a0)
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	1e8080e7          	jalr	488(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80002ba0:	00813083          	ld	ra,8(sp)
    80002ba4:	00013403          	ld	s0,0(sp)
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00008067          	ret

0000000080002bb0 <_ZN6TestThD0Ev>:
    80002bb0:	fe010113          	addi	sp,sp,-32
    80002bb4:	00113c23          	sd	ra,24(sp)
    80002bb8:	00813823          	sd	s0,16(sp)
    80002bbc:	00913423          	sd	s1,8(sp)
    80002bc0:	02010413          	addi	s0,sp,32
    80002bc4:	00050493          	mv	s1,a0
    80002bc8:	00009797          	auipc	a5,0x9
    80002bcc:	cb078793          	addi	a5,a5,-848 # 8000b878 <_ZTV6TestTh+0x10>
    80002bd0:	00f53023          	sd	a5,0(a0)
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	1ac080e7          	jalr	428(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	298080e7          	jalr	664(ra) # 80002e78 <_ZdlPv>
    80002be8:	01813083          	ld	ra,24(sp)
    80002bec:	01013403          	ld	s0,16(sp)
    80002bf0:	00813483          	ld	s1,8(sp)
    80002bf4:	02010113          	addi	sp,sp,32
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN7TestTh2D1Ev>:
class TestTh2: public Thread {
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00113423          	sd	ra,8(sp)
    80002c04:	00813023          	sd	s0,0(sp)
    80002c08:	01010413          	addi	s0,sp,16
    80002c0c:	00009797          	auipc	a5,0x9
    80002c10:	c9478793          	addi	a5,a5,-876 # 8000b8a0 <_ZTV7TestTh2+0x10>
    80002c14:	00f53023          	sd	a5,0(a0)
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	168080e7          	jalr	360(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80002c20:	00813083          	ld	ra,8(sp)
    80002c24:	00013403          	ld	s0,0(sp)
    80002c28:	01010113          	addi	sp,sp,16
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN7TestTh2D0Ev>:
    80002c30:	fe010113          	addi	sp,sp,-32
    80002c34:	00113c23          	sd	ra,24(sp)
    80002c38:	00813823          	sd	s0,16(sp)
    80002c3c:	00913423          	sd	s1,8(sp)
    80002c40:	02010413          	addi	s0,sp,32
    80002c44:	00050493          	mv	s1,a0
    80002c48:	00009797          	auipc	a5,0x9
    80002c4c:	c5878793          	addi	a5,a5,-936 # 8000b8a0 <_ZTV7TestTh2+0x10>
    80002c50:	00f53023          	sd	a5,0(a0)
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	12c080e7          	jalr	300(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80002c5c:	00048513          	mv	a0,s1
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	218080e7          	jalr	536(ra) # 80002e78 <_ZdlPv>
    80002c68:	01813083          	ld	ra,24(sp)
    80002c6c:	01013403          	ld	s0,16(sp)
    80002c70:	00813483          	ld	s1,8(sp)
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret

0000000080002c7c <_ZN7TestTh3D1Ev>:
class TestTh3: public Thread {
    80002c7c:	ff010113          	addi	sp,sp,-16
    80002c80:	00113423          	sd	ra,8(sp)
    80002c84:	00813023          	sd	s0,0(sp)
    80002c88:	01010413          	addi	s0,sp,16
    80002c8c:	00009797          	auipc	a5,0x9
    80002c90:	c3c78793          	addi	a5,a5,-964 # 8000b8c8 <_ZTV7TestTh3+0x10>
    80002c94:	00f53023          	sd	a5,0(a0)
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	0e8080e7          	jalr	232(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80002ca0:	00813083          	ld	ra,8(sp)
    80002ca4:	00013403          	ld	s0,0(sp)
    80002ca8:	01010113          	addi	sp,sp,16
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN7TestTh3D0Ev>:
    80002cb0:	fe010113          	addi	sp,sp,-32
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	00813823          	sd	s0,16(sp)
    80002cbc:	00913423          	sd	s1,8(sp)
    80002cc0:	02010413          	addi	s0,sp,32
    80002cc4:	00050493          	mv	s1,a0
    80002cc8:	00009797          	auipc	a5,0x9
    80002ccc:	c0078793          	addi	a5,a5,-1024 # 8000b8c8 <_ZTV7TestTh3+0x10>
    80002cd0:	00f53023          	sd	a5,0(a0)
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	0ac080e7          	jalr	172(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80002cdc:	00048513          	mv	a0,s1
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	198080e7          	jalr	408(ra) # 80002e78 <_ZdlPv>
    80002ce8:	01813083          	ld	ra,24(sp)
    80002cec:	01013403          	ld	s0,16(sp)
    80002cf0:	00813483          	ld	s1,8(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret

0000000080002cfc <_ZN6TestTh3runEv>:
    void run() override {
    80002cfc:	ff010113          	addi	sp,sp,-16
    80002d00:	00113423          	sd	ra,8(sp)
    80002d04:	00813023          	sd	s0,0(sp)
    80002d08:	01010413          	addi	s0,sp,16
        testThBody(nullptr);
    80002d0c:	00000593          	li	a1,0
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	bec080e7          	jalr	-1044(ra) # 800028fc <_ZN6TestTh10testThBodyEPv>
    }
    80002d18:	00813083          	ld	ra,8(sp)
    80002d1c:	00013403          	ld	s0,0(sp)
    80002d20:	01010113          	addi	sp,sp,16
    80002d24:	00008067          	ret

0000000080002d28 <_ZN7TestTh23runEv>:
    void run() override {
    80002d28:	ff010113          	addi	sp,sp,-16
    80002d2c:	00113423          	sd	ra,8(sp)
    80002d30:	00813023          	sd	s0,0(sp)
    80002d34:	01010413          	addi	s0,sp,16
        testTh2Body(nullptr);
    80002d38:	00000593          	li	a1,0
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	c30080e7          	jalr	-976(ra) # 8000296c <_ZN7TestTh211testTh2BodyEPv>
    }
    80002d44:	00813083          	ld	ra,8(sp)
    80002d48:	00013403          	ld	s0,0(sp)
    80002d4c:	01010113          	addi	sp,sp,16
    80002d50:	00008067          	ret

0000000080002d54 <_ZN7TestTh33runEv>:
    void run() override {
    80002d54:	ff010113          	addi	sp,sp,-16
    80002d58:	00113423          	sd	ra,8(sp)
    80002d5c:	00813023          	sd	s0,0(sp)
    80002d60:	01010413          	addi	s0,sp,16
        testTh3Body(nullptr);
    80002d64:	00000593          	li	a1,0
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	c74080e7          	jalr	-908(ra) # 800029dc <_ZN7TestTh311testTh3BodyEPv>
    }
    80002d70:	00813083          	ld	ra,8(sp)
    80002d74:	00013403          	ld	s0,0(sp)
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80002d80:	ff010113          	addi	sp,sp,-16
    80002d84:	00813423          	sd	s0,8(sp)
    80002d88:	01010413          	addi	s0,sp,16
    80002d8c:	00813403          	ld	s0,8(sp)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret

0000000080002d98 <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00113423          	sd	ra,8(sp)
    80002da0:	00813023          	sd	s0,0(sp)
    80002da4:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80002da8:	00053783          	ld	a5,0(a0)
    80002dac:	0107b783          	ld	a5,16(a5)
    80002db0:	000780e7          	jalr	a5
}
    80002db4:	00813083          	ld	ra,8(sp)
    80002db8:	00013403          	ld	s0,0(sp)
    80002dbc:	01010113          	addi	sp,sp,16
    80002dc0:	00008067          	ret

0000000080002dc4 <_ZN14PeriodicThread3runEv>:
}


PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    80002dc4:	fe010113          	addi	sp,sp,-32
    80002dc8:	00113c23          	sd	ra,24(sp)
    80002dcc:	00813823          	sd	s0,16(sp)
    80002dd0:	00913423          	sd	s1,8(sp)
    80002dd4:	02010413          	addi	s0,sp,32
    80002dd8:	00050493          	mv	s1,a0
    while (period) {
    80002ddc:	0204b783          	ld	a5,32(s1)
    80002de0:	02078263          	beqz	a5,80002e04 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002de4:	0004b783          	ld	a5,0(s1)
    80002de8:	0187b783          	ld	a5,24(a5)
    80002dec:	00048513          	mv	a0,s1
    80002df0:	000780e7          	jalr	a5
        time_sleep(period);
    80002df4:	0204b503          	ld	a0,32(s1)
    80002df8:	ffffe097          	auipc	ra,0xffffe
    80002dfc:	63c080e7          	jalr	1596(ra) # 80001434 <time_sleep>
    while (period) {
    80002e00:	fddff06f          	j	80002ddc <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002e04:	01813083          	ld	ra,24(sp)
    80002e08:	01013403          	ld	s0,16(sp)
    80002e0c:	00813483          	ld	s1,8(sp)
    80002e10:	02010113          	addi	sp,sp,32
    80002e14:	00008067          	ret

0000000080002e18 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00113423          	sd	ra,8(sp)
    80002e20:	00813023          	sd	s0,0(sp)
    80002e24:	01010413          	addi	s0,sp,16
    80002e28:	00009797          	auipc	a5,0x9
    80002e2c:	af878793          	addi	a5,a5,-1288 # 8000b920 <_ZTV9Semaphore+0x10>
    80002e30:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002e34:	00853503          	ld	a0,8(a0)
    80002e38:	ffffe097          	auipc	ra,0xffffe
    80002e3c:	65c080e7          	jalr	1628(ra) # 80001494 <sem_close>
}
    80002e40:	00813083          	ld	ra,8(sp)
    80002e44:	00013403          	ld	s0,0(sp)
    80002e48:	01010113          	addi	sp,sp,16
    80002e4c:	00008067          	ret

0000000080002e50 <_Znwm>:
void* operator new(size_t size) {
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00113423          	sd	ra,8(sp)
    80002e58:	00813023          	sd	s0,0(sp)
    80002e5c:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80002e60:	ffffe097          	auipc	ra,0xffffe
    80002e64:	490080e7          	jalr	1168(ra) # 800012f0 <mem_alloc>
    80002e68:	00813083          	ld	ra,8(sp)
    80002e6c:	00013403          	ld	s0,0(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00008067          	ret

0000000080002e78 <_ZdlPv>:
void  operator delete(void* p)  {
    80002e78:	ff010113          	addi	sp,sp,-16
    80002e7c:	00113423          	sd	ra,8(sp)
    80002e80:	00813023          	sd	s0,0(sp)
    80002e84:	01010413          	addi	s0,sp,16
    mem_free(p); }
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	494080e7          	jalr	1172(ra) # 8000131c <mem_free>
    80002e90:	00813083          	ld	ra,8(sp)
    80002e94:	00013403          	ld	s0,0(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret

0000000080002ea0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00113423          	sd	ra,8(sp)
    80002ea8:	00813023          	sd	s0,0(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	fc8080e7          	jalr	-56(ra) # 80002e78 <_ZdlPv>
    80002eb8:	00813083          	ld	ra,8(sp)
    80002ebc:	00013403          	ld	s0,0(sp)
    80002ec0:	01010113          	addi	sp,sp,16
    80002ec4:	00008067          	ret

0000000080002ec8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002ec8:	fe010113          	addi	sp,sp,-32
    80002ecc:	00113c23          	sd	ra,24(sp)
    80002ed0:	00813823          	sd	s0,16(sp)
    80002ed4:	00913423          	sd	s1,8(sp)
    80002ed8:	02010413          	addi	s0,sp,32
    80002edc:	00050493          	mv	s1,a0
}
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	f38080e7          	jalr	-200(ra) # 80002e18 <_ZN9SemaphoreD1Ev>
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	f8c080e7          	jalr	-116(ra) # 80002e78 <_ZdlPv>
    80002ef4:	01813083          	ld	ra,24(sp)
    80002ef8:	01013403          	ld	s0,16(sp)
    80002efc:	00813483          	ld	s1,8(sp)
    80002f00:	02010113          	addi	sp,sp,32
    80002f04:	00008067          	ret

0000000080002f08 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    80002f08:	ff010113          	addi	sp,sp,-16
    80002f0c:	00813423          	sd	s0,8(sp)
    80002f10:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    80002f14:	00009797          	auipc	a5,0x9
    80002f18:	9e478793          	addi	a5,a5,-1564 # 8000b8f8 <_ZTV6Thread+0x10>
    80002f1c:	00f53023          	sd	a5,0(a0)
    80002f20:	00053423          	sd	zero,8(a0)
    80002f24:	00b53823          	sd	a1,16(a0)
    80002f28:	00c53c23          	sd	a2,24(a0)
    80002f2c:	00813403          	ld	s0,8(sp)
    80002f30:	01010113          	addi	sp,sp,16
    80002f34:	00008067          	ret

0000000080002f38 <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    80002f38:	ff010113          	addi	sp,sp,-16
    80002f3c:	00813423          	sd	s0,8(sp)
    80002f40:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    80002f44:	00009797          	auipc	a5,0x9
    80002f48:	9b478793          	addi	a5,a5,-1612 # 8000b8f8 <_ZTV6Thread+0x10>
    80002f4c:	00f53023          	sd	a5,0(a0)
    80002f50:	00053423          	sd	zero,8(a0)
    80002f54:	00053823          	sd	zero,16(a0)
    80002f58:	00053c23          	sd	zero,24(a0)
    80002f5c:	00813403          	ld	s0,8(sp)
    80002f60:	01010113          	addi	sp,sp,16
    80002f64:	00008067          	ret

0000000080002f68 <_ZN6Thread5startEv>:
int Thread::start() {
    80002f68:	ff010113          	addi	sp,sp,-16
    80002f6c:	00113423          	sd	ra,8(sp)
    80002f70:	00813023          	sd	s0,0(sp)
    80002f74:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    80002f78:	01053783          	ld	a5,16(a0)
    80002f7c:	02078663          	beqz	a5,80002fa8 <_ZN6Thread5startEv+0x40>
    80002f80:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    80002f84:	02078863          	beqz	a5,80002fb4 <_ZN6Thread5startEv+0x4c>
    80002f88:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    80002f8c:	00850513          	addi	a0,a0,8
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	3b8080e7          	jalr	952(ra) # 80001348 <thread_create>
}
    80002f98:	00813083          	ld	ra,8(sp)
    80002f9c:	00013403          	ld	s0,0(sp)
    80002fa0:	01010113          	addi	sp,sp,16
    80002fa4:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    80002fa8:	00000597          	auipc	a1,0x0
    80002fac:	df058593          	addi	a1,a1,-528 # 80002d98 <_ZN6Thread7runBodyEPv>
    80002fb0:	fd5ff06f          	j	80002f84 <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    80002fb4:	00050613          	mv	a2,a0
    80002fb8:	fd5ff06f          	j	80002f8c <_ZN6Thread5startEv+0x24>

0000000080002fbc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00113423          	sd	ra,8(sp)
    80002fc4:	00813023          	sd	s0,0(sp)
    80002fc8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002fcc:	ffffe097          	auipc	ra,0xffffe
    80002fd0:	448080e7          	jalr	1096(ra) # 80001414 <thread_dispatch>
}
    80002fd4:	00813083          	ld	ra,8(sp)
    80002fd8:	00013403          	ld	s0,0(sp)
    80002fdc:	01010113          	addi	sp,sp,16
    80002fe0:	00008067          	ret

0000000080002fe4 <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    80002fe4:	ff010113          	addi	sp,sp,-16
    80002fe8:	00113423          	sd	ra,8(sp)
    80002fec:	00813023          	sd	s0,0(sp)
    80002ff0:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	440080e7          	jalr	1088(ra) # 80001434 <time_sleep>
}
    80002ffc:	00813083          	ld	ra,8(sp)
    80003000:	00013403          	ld	s0,0(sp)
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00008067          	ret

000000008000300c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00113423          	sd	ra,8(sp)
    80003014:	00813023          	sd	s0,0(sp)
    80003018:	01010413          	addi	s0,sp,16
    8000301c:	00009797          	auipc	a5,0x9
    80003020:	90478793          	addi	a5,a5,-1788 # 8000b920 <_ZTV9Semaphore+0x10>
    80003024:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80003028:	00850513          	addi	a0,a0,8
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	430080e7          	jalr	1072(ra) # 8000145c <sem_open>
}
    80003034:	00813083          	ld	ra,8(sp)
    80003038:	00013403          	ld	s0,0(sp)
    8000303c:	01010113          	addi	sp,sp,16
    80003040:	00008067          	ret

0000000080003044 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00113423          	sd	ra,8(sp)
    8000304c:	00813023          	sd	s0,0(sp)
    80003050:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003054:	00853503          	ld	a0,8(a0)
    80003058:	ffffe097          	auipc	ra,0xffffe
    8000305c:	464080e7          	jalr	1124(ra) # 800014bc <sem_wait>
}
    80003060:	00813083          	ld	ra,8(sp)
    80003064:	00013403          	ld	s0,0(sp)
    80003068:	01010113          	addi	sp,sp,16
    8000306c:	00008067          	ret

0000000080003070 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00113423          	sd	ra,8(sp)
    80003078:	00813023          	sd	s0,0(sp)
    8000307c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003080:	00853503          	ld	a0,8(a0)
    80003084:	ffffe097          	auipc	ra,0xffffe
    80003088:	460080e7          	jalr	1120(ra) # 800014e4 <sem_signal>
}
    8000308c:	00813083          	ld	ra,8(sp)
    80003090:	00013403          	ld	s0,0(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret

000000008000309c <_ZN6Thread4joinEPS_>:
void Thread::join(Thread* thread) {
    8000309c:	ff010113          	addi	sp,sp,-16
    800030a0:	00113423          	sd	ra,8(sp)
    800030a4:	00813023          	sd	s0,0(sp)
    800030a8:	01010413          	addi	s0,sp,16
    ::join(&thread->myHandle);
    800030ac:	00850513          	addi	a0,a0,8
    800030b0:	ffffe097          	auipc	ra,0xffffe
    800030b4:	318080e7          	jalr	792(ra) # 800013c8 <join>
}
    800030b8:	00813083          	ld	ra,8(sp)
    800030bc:	00013403          	ld	s0,0(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret

00000000800030c8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    800030c8:	fe010113          	addi	sp,sp,-32
    800030cc:	00113c23          	sd	ra,24(sp)
    800030d0:	00813823          	sd	s0,16(sp)
    800030d4:	00913423          	sd	s1,8(sp)
    800030d8:	01213023          	sd	s2,0(sp)
    800030dc:	02010413          	addi	s0,sp,32
    800030e0:	00050493          	mv	s1,a0
    800030e4:	00058913          	mv	s2,a1
    800030e8:	00000097          	auipc	ra,0x0
    800030ec:	e50080e7          	jalr	-432(ra) # 80002f38 <_ZN6ThreadC1Ev>
    800030f0:	00009797          	auipc	a5,0x9
    800030f4:	85078793          	addi	a5,a5,-1968 # 8000b940 <_ZTV14PeriodicThread+0x10>
    800030f8:	00f4b023          	sd	a5,0(s1)
    800030fc:	0324b023          	sd	s2,32(s1)
    80003100:	01813083          	ld	ra,24(sp)
    80003104:	01013403          	ld	s0,16(sp)
    80003108:	00813483          	ld	s1,8(sp)
    8000310c:	00013903          	ld	s2,0(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret

0000000080003118 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    80003118:	ff010113          	addi	sp,sp,-16
    8000311c:	00813423          	sd	s0,8(sp)
    80003120:	01010413          	addi	s0,sp,16
    80003124:	02053023          	sd	zero,32(a0)
    80003128:	00813403          	ld	s0,8(sp)
    8000312c:	01010113          	addi	sp,sp,16
    80003130:	00008067          	ret

0000000080003134 <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00113423          	sd	ra,8(sp)
    8000313c:	00813023          	sd	s0,0(sp)
    80003140:	01010413          	addi	s0,sp,16
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	400080e7          	jalr	1024(ra) # 80001544 <getc>
    8000314c:	00813083          	ld	ra,8(sp)
    80003150:	00013403          	ld	s0,0(sp)
    80003154:	01010113          	addi	sp,sp,16
    80003158:	00008067          	ret

000000008000315c <_ZN7Console4putcEc>:
    8000315c:	ff010113          	addi	sp,sp,-16
    80003160:	00113423          	sd	ra,8(sp)
    80003164:	00813023          	sd	s0,0(sp)
    80003168:	01010413          	addi	s0,sp,16
    8000316c:	ffffe097          	auipc	ra,0xffffe
    80003170:	3fc080e7          	jalr	1020(ra) # 80001568 <putc>
    80003174:	00813083          	ld	ra,8(sp)
    80003178:	00013403          	ld	s0,0(sp)
    8000317c:	01010113          	addi	sp,sp,16
    80003180:	00008067          	ret

0000000080003184 <_ZN6Thread3runEv>:
    static void dispatch();
    static void join(Thread* thread);
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    80003184:	ff010113          	addi	sp,sp,-16
    80003188:	00813423          	sd	s0,8(sp)
    8000318c:	01010413          	addi	s0,sp,16
    80003190:	00813403          	ld	s0,8(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00813423          	sd	s0,8(sp)
    800031a4:	01010413          	addi	s0,sp,16
    800031a8:	00813403          	ld	s0,8(sp)
    800031ac:	01010113          	addi	sp,sp,16
    800031b0:	00008067          	ret

00000000800031b4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813423          	sd	s0,8(sp)
    800031bc:	01010413          	addi	s0,sp,16
    800031c0:	00008797          	auipc	a5,0x8
    800031c4:	78078793          	addi	a5,a5,1920 # 8000b940 <_ZTV14PeriodicThread+0x10>
    800031c8:	00f53023          	sd	a5,0(a0)
    800031cc:	00813403          	ld	s0,8(sp)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret

00000000800031d8 <_ZN14PeriodicThreadD0Ev>:
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00113423          	sd	ra,8(sp)
    800031e0:	00813023          	sd	s0,0(sp)
    800031e4:	01010413          	addi	s0,sp,16
    800031e8:	00008797          	auipc	a5,0x8
    800031ec:	75878793          	addi	a5,a5,1880 # 8000b940 <_ZTV14PeriodicThread+0x10>
    800031f0:	00f53023          	sd	a5,0(a0)
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	c84080e7          	jalr	-892(ra) # 80002e78 <_ZdlPv>
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <_ZN15MemoryAllocatorC1Ev>:
//

#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00813423          	sd	s0,8(sp)
    80003214:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint8*)HEAP_END_ADDR-(uint8*)HEAP_START_ADDR;
    80003218:	00009797          	auipc	a5,0x9
    8000321c:	9287b783          	ld	a5,-1752(a5) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003220:	0007b703          	ld	a4,0(a5)
    80003224:	00009797          	auipc	a5,0x9
    80003228:	8fc7b783          	ld	a5,-1796(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000322c:	0007b783          	ld	a5,0(a5)
    80003230:	40f70733          	sub	a4,a4,a5
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/MEM_BLOCK_SIZE;
    80003234:	00675713          	srli	a4,a4,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80003238:	00f53023          	sd	a5,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    8000323c:	00100693          	li	a3,1
    80003240:	00d78823          	sb	a3,16(a5)
    startFrag->next=nullptr;
    80003244:	0007b023          	sd	zero,0(a5)
    startFrag->size = HEAP_SIZE_BLCK;
    80003248:	00e7bc23          	sd	a4,24(a5)
    startFrag->prev=nullptr;
    8000324c:	0007b423          	sd	zero,8(a5)
}
    80003250:	00813403          	ld	s0,8(sp)
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00008067          	ret

000000008000325c <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    8000325c:	00009797          	auipc	a5,0x9
    80003260:	bd47c783          	lbu	a5,-1068(a5) # 8000be30 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80003264:	00078863          	beqz	a5,80003274 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80003268:	00009517          	auipc	a0,0x9
    8000326c:	bd050513          	addi	a0,a0,-1072 # 8000be38 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003270:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	00813023          	sd	s0,0(sp)
    80003280:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80003284:	00009517          	auipc	a0,0x9
    80003288:	bb450513          	addi	a0,a0,-1100 # 8000be38 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	f80080e7          	jalr	-128(ra) # 8000320c <_ZN15MemoryAllocatorC1Ev>
    80003294:	00100793          	li	a5,1
    80003298:	00009717          	auipc	a4,0x9
    8000329c:	b8f70c23          	sb	a5,-1128(a4) # 8000be30 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    800032a0:	00009517          	auipc	a0,0x9
    800032a4:	b9850513          	addi	a0,a0,-1128 # 8000be38 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800032a8:	00813083          	ld	ra,8(sp)
    800032ac:	00013403          	ld	s0,0(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800032c4:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800032c8:	03f58593          	addi	a1,a1,63
    800032cc:	0065d593          	srli	a1,a1,0x6
    800032d0:	0080006f          	j	800032d8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    800032d4:	00053503          	ld	a0,0(a0)
    while(curr){
    800032d8:	06050863          	beqz	a0,80003348 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    800032dc:	01054703          	lbu	a4,16(a0)
    800032e0:	00100793          	li	a5,1
    800032e4:	fef718e3          	bne	a4,a5,800032d4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    800032e8:	01853703          	ld	a4,24(a0)
    800032ec:	00158793          	addi	a5,a1,1
    800032f0:	fef762e3          	bltu	a4,a5,800032d4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    800032f4:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    800032f8:	04e7f663          	bgeu	a5,a4,80003344 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    800032fc:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80003300:	00679793          	slli	a5,a5,0x6
    80003304:	00f507b3          	add	a5,a0,a5
    80003308:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    8000330c:	00100713          	li	a4,1
    80003310:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80003314:	01853703          	ld	a4,24(a0)
    80003318:	40b70733          	sub	a4,a4,a1
    8000331c:	fff70713          	addi	a4,a4,-1
    80003320:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003324:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003328:	00068463          	beqz	a3,80003330 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    8000332c:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80003330:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003334:	01853703          	ld	a4,24(a0)
    80003338:	0187b783          	ld	a5,24(a5)
    8000333c:	40f707b3          	sub	a5,a4,a5
    80003340:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80003344:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80003348:	00813403          	ld	s0,8(sp)
    8000334c:	01010113          	addi	sp,sp,16
    80003350:	00008067          	ret

0000000080003354 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80003354:	ff010113          	addi	sp,sp,-16
    80003358:	00813423          	sd	s0,8(sp)
    8000335c:	01010413          	addi	s0,sp,16
    if(!startLoc)return -1;
    80003360:	08058c63          	beqz	a1,800033f8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80003364:	fc058613          	addi	a2,a1,-64
    curr->free=1;
    80003368:	00100793          	li	a5,1
    8000336c:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80003370:	fc05b783          	ld	a5,-64(a1)
    80003374:	00078863          	beqz	a5,80003384 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003378:	0107c683          	lbu	a3,16(a5)
    8000337c:	00100713          	li	a4,1
    80003380:	02e68463          	beq	a3,a4,800033a8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80003384:	fc85b783          	ld	a5,-56(a1)
    80003388:	06078c63          	beqz	a5,80003400 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    8000338c:	0107c683          	lbu	a3,16(a5)
    80003390:	00100713          	li	a4,1
    80003394:	02e68e63          	beq	a3,a4,800033d0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80003398:	00000513          	li	a0,0
}
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret
        curr->size +=next->size;
    800033a8:	0187b683          	ld	a3,24(a5)
    800033ac:	fd85b703          	ld	a4,-40(a1)
    800033b0:	00d70733          	add	a4,a4,a3
    800033b4:	fce5bc23          	sd	a4,-40(a1)
        curr->next = next->next;
    800033b8:	0007b703          	ld	a4,0(a5)
    800033bc:	fce5b023          	sd	a4,-64(a1)
        if(next->next)
    800033c0:	0007b783          	ld	a5,0(a5)
    800033c4:	fc0780e3          	beqz	a5,80003384 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    800033c8:	00c7b423          	sd	a2,8(a5)
    800033cc:	fb9ff06f          	j	80003384 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    800033d0:	fd85b683          	ld	a3,-40(a1)
    800033d4:	0187b703          	ld	a4,24(a5)
    800033d8:	00d70733          	add	a4,a4,a3
    800033dc:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    800033e0:	fc05b703          	ld	a4,-64(a1)
    800033e4:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    800033e8:	02070063          	beqz	a4,80003408 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    800033ec:	00f73423          	sd	a5,8(a4)
    return 0;
    800033f0:	00000513          	li	a0,0
    800033f4:	fa9ff06f          	j	8000339c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!startLoc)return -1;
    800033f8:	fff00513          	li	a0,-1
    800033fc:	fa1ff06f          	j	8000339c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80003400:	00000513          	li	a0,0
    80003404:	f99ff06f          	j	8000339c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003408:	00000513          	li	a0,0
    8000340c:	f91ff06f          	j	8000339c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080003410 <HandleInterupt>:

extern "C" void restoreContext(size_t* ctx);



extern "C" void HandleInterupt(size_t* stackInfo){
    80003410:	fb010113          	addi	sp,sp,-80
    80003414:	04113423          	sd	ra,72(sp)
    80003418:	04813023          	sd	s0,64(sp)
    8000341c:	02913c23          	sd	s1,56(sp)
    80003420:	03213823          	sd	s2,48(sp)
    80003424:	03313423          	sd	s3,40(sp)
    80003428:	03413023          	sd	s4,32(sp)
    8000342c:	01513c23          	sd	s5,24(sp)
    80003430:	01613823          	sd	s6,16(sp)
    80003434:	01713423          	sd	s7,8(sp)
    80003438:	05010413          	addi	s0,sp,80
    8000343c:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80003440:	142029f3          	csrr	s3,scause

    Scheduler::freeDead();
    80003444:	fffff097          	auipc	ra,0xfffff
    80003448:	884080e7          	jalr	-1916(ra) # 80001cc8 <_ZN9Scheduler8freeDeadEv>

    KThread* current = Scheduler::GetRunning();
    8000344c:	fffff097          	auipc	ra,0xfffff
    80003450:	820080e7          	jalr	-2016(ra) # 80001c6c <_ZN9Scheduler10GetRunningEv>
    80003454:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80003458:	04050863          	beqz	a0,800034a8 <HandleInterupt+0x98>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = stackInfo[i];
    8000345c:	00000713          	li	a4,0
    80003460:	01f00793          	li	a5,31
    80003464:	02e7c063          	blt	a5,a4,80003484 <HandleInterupt+0x74>
    80003468:	00371793          	slli	a5,a4,0x3
    8000346c:	00f906b3          	add	a3,s2,a5
    80003470:	0006b683          	ld	a3,0(a3)
    80003474:	00f487b3          	add	a5,s1,a5
    80003478:	06d7b423          	sd	a3,104(a5)
    8000347c:	0017071b          	addiw	a4,a4,1
    80003480:	fe1ff06f          	j	80003460 <HandleInterupt+0x50>
        ctx.x[2] = (size_t)stackInfo + 256;
    80003484:	10090793          	addi	a5,s2,256
    80003488:	06f4bc23          	sd	a5,120(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    8000348c:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003490:	100026f3          	csrr	a3,sstatus
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    80003494:	ff898793          	addi	a5,s3,-8
    80003498:	00100613          	li	a2,1
    8000349c:	06f67a63          	bgeu	a2,a5,80003510 <HandleInterupt+0x100>
        ctx.sepc    = sepc;
    800034a0:	16e4b423          	sd	a4,360(s1)
        ctx.sstatus = sstatus;
    800034a4:	16d4b823          	sd	a3,368(s1)
    }

    if (scause == SCause::TIMER_INTERRUPT) {
    800034a8:	fff00793          	li	a5,-1
    800034ac:	03f79793          	slli	a5,a5,0x3f
    800034b0:	00178793          	addi	a5,a5,1
    800034b4:	06f98263          	beq	s3,a5,80003518 <HandleInterupt+0x108>
        Scheduler::timerTick(current);
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause == SCause::EXTERNAL_INTERRUPT) {
    800034b8:	fff00793          	li	a5,-1
    800034bc:	03f79793          	slli	a5,a5,0x3f
    800034c0:	00978793          	addi	a5,a5,9
    800034c4:	06f98863          	beq	s3,a5,80003534 <HandleInterupt+0x124>
        Konsole::handleInterrupt();
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
        return;
    }

    if (scause != SCause::ECALL_USER && scause != SCause::ECALL_SUPERVISOR) {
    800034c8:	ff898793          	addi	a5,s3,-8
    800034cc:	00100713          	li	a4,1
    800034d0:	06f76e63          	bltu	a4,a5,8000354c <HandleInterupt+0x13c>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800034d4:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800034d8:	00478793          	addi	a5,a5,4
    800034dc:	14179073          	csrw	sepc,a5
    }

    size_t code = stackInfo[10];
    800034e0:	05093783          	ld	a5,80(s2)
    switch (code) {
    800034e4:	04200713          	li	a4,66
    800034e8:	0af76263          	bltu	a4,a5,8000358c <HandleInterupt+0x17c>
    800034ec:	06078a63          	beqz	a5,80003560 <HandleInterupt+0x150>
    800034f0:	06f76863          	bltu	a4,a5,80003560 <HandleInterupt+0x150>
    800034f4:	00279793          	slli	a5,a5,0x2
    800034f8:	00006717          	auipc	a4,0x6
    800034fc:	b8870713          	addi	a4,a4,-1144 # 80009080 <CONSOLE_STATUS+0x70>
    80003500:	00e787b3          	add	a5,a5,a4
    80003504:	0007a783          	lw	a5,0(a5)
    80003508:	00e787b3          	add	a5,a5,a4
    8000350c:	00078067          	jr	a5
        if (scause == SCause::ECALL_USER || scause == SCause::ECALL_SUPERVISOR) sepc += 4;
    80003510:	00470713          	addi	a4,a4,4
    80003514:	f8dff06f          	j	800034a0 <HandleInterupt+0x90>
        Scheduler::timerTick(current);
    80003518:	00048513          	mv	a0,s1
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	c5c080e7          	jalr	-932(ra) # 80002178 <_ZN9Scheduler9timerTickEP7KThread>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    80003524:	02048e63          	beqz	s1,80003560 <HandleInterupt+0x150>
    80003528:	0b84b783          	ld	a5,184(s1)
    8000352c:	00078513          	mv	a0,a5
    80003530:	0300006f          	j	80003560 <HandleInterupt+0x150>
        Konsole::handleInterrupt();
    80003534:	fffff097          	auipc	ra,0xfffff
    80003538:	1a0080e7          	jalr	416(ra) # 800026d4 <_ZN7Konsole15handleInterruptEv>
        if (current) __asm__ volatile("mv a0, %0" :: "r"(current->threadContext.x[10]));
    8000353c:	02048263          	beqz	s1,80003560 <HandleInterupt+0x150>
    80003540:	0b84b783          	ld	a5,184(s1)
    80003544:	00078513          	mv	a0,a5
    80003548:	0180006f          	j	80003560 <HandleInterupt+0x150>
        if ((scause >> 63) == 0 && current != nullptr) {
    8000354c:	0009ca63          	bltz	s3,80003560 <HandleInterupt+0x150>
    80003550:	00048863          	beqz	s1,80003560 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003554:	00048513          	mv	a0,s1
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	a18080e7          	jalr	-1512(ra) # 80001f70 <_ZN9Scheduler10ThreadExitEP7KThread>
        default: {
            break;
        }
    }
    return;
}
    80003560:	04813083          	ld	ra,72(sp)
    80003564:	04013403          	ld	s0,64(sp)
    80003568:	03813483          	ld	s1,56(sp)
    8000356c:	03013903          	ld	s2,48(sp)
    80003570:	02813983          	ld	s3,40(sp)
    80003574:	02013a03          	ld	s4,32(sp)
    80003578:	01813a83          	ld	s5,24(sp)
    8000357c:	01013b03          	ld	s6,16(sp)
    80003580:	00813b83          	ld	s7,8(sp)
    80003584:	05010113          	addi	sp,sp,80
    80003588:	00008067          	ret
    switch (code) {
    8000358c:	0ff00713          	li	a4,255
    80003590:	fce798e3          	bne	a5,a4,80003560 <HandleInterupt+0x150>
            *((volatile uint32*)0x100000UL) = 0x5555;
    80003594:	00100737          	lui	a4,0x100
    80003598:	000057b7          	lui	a5,0x5
    8000359c:	5557879b          	addiw	a5,a5,1365
    800035a0:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
            while (true) {}
    800035a4:	0000006f          	j	800035a4 <HandleInterupt+0x194>
            size_t size = stackInfo[11];
    800035a8:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	cb0080e7          	jalr	-848(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    800035b4:	00048593          	mv	a1,s1
    800035b8:	00000097          	auipc	ra,0x0
    800035bc:	d00080e7          	jalr	-768(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    800035c0:	00050513          	mv	a0,a0
            break;
    800035c4:	f9dff06f          	j	80003560 <HandleInterupt+0x150>
            void* ptr = (void*)stackInfo[11];
    800035c8:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	c90080e7          	jalr	-880(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    800035d4:	00048593          	mv	a1,s1
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	d7c080e7          	jalr	-644(ra) # 80003354 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    800035e0:	f81ff06f          	j	80003560 <HandleInterupt+0x150>
            thread_t* handle             = reinterpret_cast<thread_t*>(stackInfo[11]);
    800035e4:	05893a03          	ld	s4,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(stackInfo[12]);
    800035e8:	06093b03          	ld	s6,96(s2)
            void* threadArg              = reinterpret_cast<void*>(stackInfo[13]);
    800035ec:	06893a83          	ld	s5,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(stackInfo[14]);
    800035f0:	07093b83          	ld	s7,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	c68080e7          	jalr	-920(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    800035fc:	18000593          	li	a1,384
    80003600:	00000097          	auipc	ra,0x0
    80003604:	cb8080e7          	jalr	-840(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003608:	00050993          	mv	s3,a0
            if (!mem) {
    8000360c:	04050863          	beqz	a0,8000365c <HandleInterupt+0x24c>
            t->init();
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	43c080e7          	jalr	1084(ra) # 80001a4c <_ZN7KThread4initEv>
    80003618:	0169b023          	sd	s6,0(s3)
    8000361c:	0159b423          	sd	s5,8(s3)
            t->setup(current, stack_space);
    80003620:	000b8613          	mv	a2,s7
    80003624:	00048593          	mv	a1,s1
    80003628:	00098513          	mv	a0,s3
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	5d8080e7          	jalr	1496(ra) # 80001c04 <_ZN7KThread5setupEPS_Pm>
            t->stackBase = reinterpret_cast<void*>(stackInfo[15]);
    80003634:	07893783          	ld	a5,120(s2)
    80003638:	06f9b023          	sd	a5,96(s3)
            *handle = reinterpret_cast<thread_t>(t);
    8000363c:	013a3023          	sd	s3,0(s4)
            Scheduler::Put(t);
    80003640:	00098513          	mv	a0,s3
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	80c080e7          	jalr	-2036(ra) # 80001e50 <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    8000364c:	00048463          	beqz	s1,80003654 <HandleInterupt+0x244>
    80003650:	0a04bc23          	sd	zero,184(s1)
            __asm__ volatile("li a0, 0");
    80003654:	00000513          	li	a0,0
            break;
    80003658:	f09ff06f          	j	80003560 <HandleInterupt+0x150>
                if (current) {
    8000365c:	f00482e3          	beqz	s1,80003560 <HandleInterupt+0x150>
                    current->threadContext.x[10] = (size_t)-1;
    80003660:	fff00793          	li	a5,-1
    80003664:	0af4bc23          	sd	a5,184(s1)
                    restoreContext(current->getContext());
    80003668:	00048513          	mv	a0,s1
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	4bc080e7          	jalr	1212(ra) # 80001b28 <_ZN7KThread10getContextEv>
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	a20080e7          	jalr	-1504(ra) # 80001094 <restoreContext>
                return;
    8000367c:	ee5ff06f          	j	80003560 <HandleInterupt+0x150>
            Scheduler::ThreadExit(current);
    80003680:	00048513          	mv	a0,s1
    80003684:	fffff097          	auipc	ra,0xfffff
    80003688:	8ec080e7          	jalr	-1812(ra) # 80001f70 <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    8000368c:	ed5ff06f          	j	80003560 <HandleInterupt+0x150>
            if (!Scheduler::yieldCurrent(current))
    80003690:	00048513          	mv	a0,s1
    80003694:	fffff097          	auipc	ra,0xfffff
    80003698:	868080e7          	jalr	-1944(ra) # 80001efc <_ZN9Scheduler12yieldCurrentEP7KThread>
    8000369c:	ec0512e3          	bnez	a0,80003560 <HandleInterupt+0x150>
                __asm__ volatile("li a0, 0");
    800036a0:	00000513          	li	a0,0
    800036a4:	ebdff06f          	j	80003560 <HandleInterupt+0x150>
            Scheduler::joinThread(t);
    800036a8:	05893503          	ld	a0,88(s2)
    800036ac:	fffff097          	auipc	ra,0xfffff
    800036b0:	d74080e7          	jalr	-652(ra) # 80002420 <_ZN9Scheduler10joinThreadEP7KThread>
            break;
    800036b4:	eadff06f          	j	80003560 <HandleInterupt+0x150>
            sem_t* handle = reinterpret_cast<sem_t*>(stackInfo[11]);
    800036b8:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)stackInfo[12];
    800036bc:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	b9c080e7          	jalr	-1124(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    800036c8:	01800593          	li	a1,24
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	bec080e7          	jalr	-1044(ra) # 800032b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800036d4:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800036d8:	00050e63          	beqz	a0,800036f4 <HandleInterupt+0x2e4>
            semaphore->init(initialValue);
    800036dc:	00090593          	mv	a1,s2
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	fa8080e7          	jalr	-88(ra) # 80001688 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    800036e8:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    800036ec:	00000513          	li	a0,0
            break;
    800036f0:	e71ff06f          	j	80003560 <HandleInterupt+0x150>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800036f4:	fff00513          	li	a0,-1
    800036f8:	e69ff06f          	j	80003560 <HandleInterupt+0x150>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(stackInfo[11]);
    800036fc:	05893483          	ld	s1,88(s2)
            semaphore->close();
    80003700:	00048513          	mv	a0,s1
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	280080e7          	jalr	640(ra) # 80001984 <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    8000370c:	00000097          	auipc	ra,0x0
    80003710:	b50080e7          	jalr	-1200(ra) # 8000325c <_ZN15MemoryAllocator11GetInstanceEv>
    80003714:	00048593          	mv	a1,s1
    80003718:	00000097          	auipc	ra,0x0
    8000371c:	c3c080e7          	jalr	-964(ra) # 80003354 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80003720:	00000513          	li	a0,0
            break;
    80003724:	e3dff06f          	j	80003560 <HandleInterupt+0x150>
            int result = semaphore->wait(current);
    80003728:	00048593          	mv	a1,s1
    8000372c:	05893503          	ld	a0,88(s2)
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	090080e7          	jalr	144(ra) # 800017c0 <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003738:	00a04663          	bgtz	a0,80003744 <HandleInterupt+0x334>
    8000373c:	00050513          	mv	a0,a0
    80003740:	e21ff06f          	j	80003560 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003744:	00048513          	mv	a0,s1
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	6bc080e7          	jalr	1724(ra) # 80001e04 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003750:	e11ff06f          	j	80003560 <HandleInterupt+0x150>
            semaphore->signal();
    80003754:	05893503          	ld	a0,88(s2)
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	0c8080e7          	jalr	200(ra) # 80001820 <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003760:	00000513          	li	a0,0
            break;
    80003764:	dfdff06f          	j	80003560 <HandleInterupt+0x150>
            int result = semaphore->waitN(current, n);
    80003768:	06092603          	lw	a2,96(s2)
    8000376c:	00048593          	mv	a1,s1
    80003770:	05893503          	ld	a0,88(s2)
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	128080e7          	jalr	296(ra) # 8000189c <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    8000377c:	00a04663          	bgtz	a0,80003788 <HandleInterupt+0x378>
    80003780:	00050513          	mv	a0,a0
    80003784:	dddff06f          	j	80003560 <HandleInterupt+0x150>
            Scheduler::blockCurrent(current);
    80003788:	00048513          	mv	a0,s1
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	678080e7          	jalr	1656(ra) # 80001e04 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    80003794:	dcdff06f          	j	80003560 <HandleInterupt+0x150>
            semaphore->signalN(n);
    80003798:	06092583          	lw	a1,96(s2)
    8000379c:	05893503          	ld	a0,88(s2)
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	16c080e7          	jalr	364(ra) # 8000190c <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    800037a8:	00000513          	li	a0,0
            break;
    800037ac:	db5ff06f          	j	80003560 <HandleInterupt+0x150>
            time_t dur = (time_t)stackInfo[11];
    800037b0:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    800037b4:	00048463          	beqz	s1,800037bc <HandleInterupt+0x3ac>
    800037b8:	0a04bc23          	sd	zero,184(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    800037bc:	00059663          	bnez	a1,800037c8 <HandleInterupt+0x3b8>
    800037c0:	00000513          	li	a0,0
    800037c4:	d9dff06f          	j	80003560 <HandleInterupt+0x150>
            Scheduler::sleep(current, dur);
    800037c8:	00048513          	mv	a0,s1
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	b94080e7          	jalr	-1132(ra) # 80002360 <_ZN9Scheduler5sleepEP7KThreadm>
            Scheduler::blockCurrent(current);
    800037d4:	00048513          	mv	a0,s1
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	62c080e7          	jalr	1580(ra) # 80001e04 <_ZN9Scheduler12blockCurrentEP7KThread>
            break;
    800037e0:	d81ff06f          	j	80003560 <HandleInterupt+0x150>
            int result = Konsole::getcKernel(current);
    800037e4:	00048513          	mv	a0,s1
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	070080e7          	jalr	112(ra) # 80002858 <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2)
    800037f0:	ffe00713          	li	a4,-2
    800037f4:	00e50863          	beq	a0,a4,80003804 <HandleInterupt+0x3f4>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    800037f8:	0ff57793          	andi	a5,a0,255
    800037fc:	00078513          	mv	a0,a5
    80003800:	d61ff06f          	j	80003560 <HandleInterupt+0x150>
                Scheduler::blockCurrent(current);
    80003804:	00048513          	mv	a0,s1
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	5fc080e7          	jalr	1532(ra) # 80001e04 <_ZN9Scheduler12blockCurrentEP7KThread>
    80003810:	d51ff06f          	j	80003560 <HandleInterupt+0x150>
            int result = Konsole::putcKernel(current, c);
    80003814:	05894583          	lbu	a1,88(s2)
    80003818:	00048513          	mv	a0,s1
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	f9c080e7          	jalr	-100(ra) # 800027b8 <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003824:	00050513          	mv	a0,a0
            break;
    80003828:	d39ff06f          	j	80003560 <HandleInterupt+0x150>

000000008000382c <start_main_thread>:

extern "C" {
int start_main_thread() {
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00113423          	sd	ra,8(sp)
    80003834:	00813023          	sd	s0,0(sp)
    80003838:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    8000383c:	fffff097          	auipc	ra,0xfffff
    80003840:	83c080e7          	jalr	-1988(ra) # 80002078 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    80003844:	fffff097          	auipc	ra,0xfffff
    80003848:	dc8080e7          	jalr	-568(ra) # 8000260c <_ZN7Konsole4initEv>
    return 0;
}
    8000384c:	00000513          	li	a0,0
    80003850:	00813083          	ld	ra,8(sp)
    80003854:	00013403          	ld	s0,0(sp)
    80003858:	01010113          	addi	sp,sp,16
    8000385c:	00008067          	ret

0000000080003860 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00113c23          	sd	ra,24(sp)
    80003868:	00813823          	sd	s0,16(sp)
    8000386c:	00913423          	sd	s1,8(sp)
    80003870:	01213023          	sd	s2,0(sp)
    80003874:	02010413          	addi	s0,sp,32
    80003878:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000387c:	00000913          	li	s2,0
    80003880:	00c0006f          	j	8000388c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	b90080e7          	jalr	-1136(ra) # 80001414 <thread_dispatch>
    while ((key = getc()) != 0x1b) {
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	cb8080e7          	jalr	-840(ra) # 80001544 <getc>
    80003894:	0005059b          	sext.w	a1,a0
    80003898:	01b00793          	li	a5,27
    8000389c:	02f58a63          	beq	a1,a5,800038d0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800038a0:	0084b503          	ld	a0,8(s1)
    800038a4:	00003097          	auipc	ra,0x3
    800038a8:	400080e7          	jalr	1024(ra) # 80006ca4 <_ZN6Buffer3putEi>
        i++;
    800038ac:	0019071b          	addiw	a4,s2,1
    800038b0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800038b4:	0004a683          	lw	a3,0(s1)
    800038b8:	0026979b          	slliw	a5,a3,0x2
    800038bc:	00d787bb          	addw	a5,a5,a3
    800038c0:	0017979b          	slliw	a5,a5,0x1
    800038c4:	02f767bb          	remw	a5,a4,a5
    800038c8:	fc0792e3          	bnez	a5,8000388c <_ZL16producerKeyboardPv+0x2c>
    800038cc:	fb9ff06f          	j	80003884 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800038d0:	00100793          	li	a5,1
    800038d4:	00008717          	auipc	a4,0x8
    800038d8:	56f72623          	sw	a5,1388(a4) # 8000be40 <_ZL9threadEnd>
    data->buffer->put('!');
    800038dc:	02100593          	li	a1,33
    800038e0:	0084b503          	ld	a0,8(s1)
    800038e4:	00003097          	auipc	ra,0x3
    800038e8:	3c0080e7          	jalr	960(ra) # 80006ca4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800038ec:	0104b503          	ld	a0,16(s1)
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	bf4080e7          	jalr	-1036(ra) # 800014e4 <sem_signal>
}
    800038f8:	01813083          	ld	ra,24(sp)
    800038fc:	01013403          	ld	s0,16(sp)
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	00013903          	ld	s2,0(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret

0000000080003910 <_ZL8producerPv>:

static void producer(void *arg) {
    80003910:	fe010113          	addi	sp,sp,-32
    80003914:	00113c23          	sd	ra,24(sp)
    80003918:	00813823          	sd	s0,16(sp)
    8000391c:	00913423          	sd	s1,8(sp)
    80003920:	01213023          	sd	s2,0(sp)
    80003924:	02010413          	addi	s0,sp,32
    80003928:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000392c:	00000913          	li	s2,0
    80003930:	00c0006f          	j	8000393c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	ae0080e7          	jalr	-1312(ra) # 80001414 <thread_dispatch>
    while (!threadEnd) {
    8000393c:	00008797          	auipc	a5,0x8
    80003940:	5047a783          	lw	a5,1284(a5) # 8000be40 <_ZL9threadEnd>
    80003944:	02079e63          	bnez	a5,80003980 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003948:	0004a583          	lw	a1,0(s1)
    8000394c:	0305859b          	addiw	a1,a1,48
    80003950:	0084b503          	ld	a0,8(s1)
    80003954:	00003097          	auipc	ra,0x3
    80003958:	350080e7          	jalr	848(ra) # 80006ca4 <_ZN6Buffer3putEi>
        i++;
    8000395c:	0019071b          	addiw	a4,s2,1
    80003960:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003964:	0004a683          	lw	a3,0(s1)
    80003968:	0026979b          	slliw	a5,a3,0x2
    8000396c:	00d787bb          	addw	a5,a5,a3
    80003970:	0017979b          	slliw	a5,a5,0x1
    80003974:	02f767bb          	remw	a5,a4,a5
    80003978:	fc0792e3          	bnez	a5,8000393c <_ZL8producerPv+0x2c>
    8000397c:	fb9ff06f          	j	80003934 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003980:	0104b503          	ld	a0,16(s1)
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	b60080e7          	jalr	-1184(ra) # 800014e4 <sem_signal>
}
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	00813483          	ld	s1,8(sp)
    80003998:	00013903          	ld	s2,0(sp)
    8000399c:	02010113          	addi	sp,sp,32
    800039a0:	00008067          	ret

00000000800039a4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800039a4:	fd010113          	addi	sp,sp,-48
    800039a8:	02113423          	sd	ra,40(sp)
    800039ac:	02813023          	sd	s0,32(sp)
    800039b0:	00913c23          	sd	s1,24(sp)
    800039b4:	01213823          	sd	s2,16(sp)
    800039b8:	01313423          	sd	s3,8(sp)
    800039bc:	03010413          	addi	s0,sp,48
    800039c0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039c4:	00000993          	li	s3,0
    800039c8:	01c0006f          	j	800039e4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	a48080e7          	jalr	-1464(ra) # 80001414 <thread_dispatch>
    800039d4:	0500006f          	j	80003a24 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800039d8:	00a00513          	li	a0,10
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	b8c080e7          	jalr	-1140(ra) # 80001568 <putc>
    while (!threadEnd) {
    800039e4:	00008797          	auipc	a5,0x8
    800039e8:	45c7a783          	lw	a5,1116(a5) # 8000be40 <_ZL9threadEnd>
    800039ec:	06079063          	bnez	a5,80003a4c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800039f0:	00893503          	ld	a0,8(s2)
    800039f4:	00003097          	auipc	ra,0x3
    800039f8:	340080e7          	jalr	832(ra) # 80006d34 <_ZN6Buffer3getEv>
        i++;
    800039fc:	0019849b          	addiw	s1,s3,1
    80003a00:	0004899b          	sext.w	s3,s1
        putc(key);
    80003a04:	0ff57513          	andi	a0,a0,255
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	b60080e7          	jalr	-1184(ra) # 80001568 <putc>
        if (i % (5 * data->id) == 0) {
    80003a10:	00092703          	lw	a4,0(s2)
    80003a14:	0027179b          	slliw	a5,a4,0x2
    80003a18:	00e787bb          	addw	a5,a5,a4
    80003a1c:	02f4e7bb          	remw	a5,s1,a5
    80003a20:	fa0786e3          	beqz	a5,800039cc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003a24:	05000793          	li	a5,80
    80003a28:	02f4e4bb          	remw	s1,s1,a5
    80003a2c:	fa049ce3          	bnez	s1,800039e4 <_ZL8consumerPv+0x40>
    80003a30:	fa9ff06f          	j	800039d8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003a34:	00893503          	ld	a0,8(s2)
    80003a38:	00003097          	auipc	ra,0x3
    80003a3c:	2fc080e7          	jalr	764(ra) # 80006d34 <_ZN6Buffer3getEv>
        putc(key);
    80003a40:	0ff57513          	andi	a0,a0,255
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	b24080e7          	jalr	-1244(ra) # 80001568 <putc>
    while (data->buffer->getCnt() > 0) {
    80003a4c:	00893503          	ld	a0,8(s2)
    80003a50:	00003097          	auipc	ra,0x3
    80003a54:	370080e7          	jalr	880(ra) # 80006dc0 <_ZN6Buffer6getCntEv>
    80003a58:	fca04ee3          	bgtz	a0,80003a34 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003a5c:	01093503          	ld	a0,16(s2)
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	a84080e7          	jalr	-1404(ra) # 800014e4 <sem_signal>
}
    80003a68:	02813083          	ld	ra,40(sp)
    80003a6c:	02013403          	ld	s0,32(sp)
    80003a70:	01813483          	ld	s1,24(sp)
    80003a74:	01013903          	ld	s2,16(sp)
    80003a78:	00813983          	ld	s3,8(sp)
    80003a7c:	03010113          	addi	sp,sp,48
    80003a80:	00008067          	ret

0000000080003a84 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003a84:	f9010113          	addi	sp,sp,-112
    80003a88:	06113423          	sd	ra,104(sp)
    80003a8c:	06813023          	sd	s0,96(sp)
    80003a90:	04913c23          	sd	s1,88(sp)
    80003a94:	05213823          	sd	s2,80(sp)
    80003a98:	05313423          	sd	s3,72(sp)
    80003a9c:	05413023          	sd	s4,64(sp)
    80003aa0:	03513c23          	sd	s5,56(sp)
    80003aa4:	03613823          	sd	s6,48(sp)
    80003aa8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003aac:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ab0:	00005517          	auipc	a0,0x5
    80003ab4:	6e050513          	addi	a0,a0,1760 # 80009190 <CONSOLE_STATUS+0x180>
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	374080e7          	jalr	884(ra) # 80005e2c <_Z11printStringPKc>
    getString(input, 30);
    80003ac0:	01e00593          	li	a1,30
    80003ac4:	fa040493          	addi	s1,s0,-96
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	3e8080e7          	jalr	1000(ra) # 80005eb4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	4b4080e7          	jalr	1204(ra) # 80005f8c <_Z11stringToIntPKc>
    80003ae0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	6cc50513          	addi	a0,a0,1740 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	340080e7          	jalr	832(ra) # 80005e2c <_Z11printStringPKc>
    getString(input, 30);
    80003af4:	01e00593          	li	a1,30
    80003af8:	00048513          	mv	a0,s1
    80003afc:	00002097          	auipc	ra,0x2
    80003b00:	3b8080e7          	jalr	952(ra) # 80005eb4 <_Z9getStringPci>
    n = stringToInt(input);
    80003b04:	00048513          	mv	a0,s1
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	484080e7          	jalr	1156(ra) # 80005f8c <_Z11stringToIntPKc>
    80003b10:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003b14:	00005517          	auipc	a0,0x5
    80003b18:	6bc50513          	addi	a0,a0,1724 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	310080e7          	jalr	784(ra) # 80005e2c <_Z11printStringPKc>
    80003b24:	00000613          	li	a2,0
    80003b28:	00a00593          	li	a1,10
    80003b2c:	00090513          	mv	a0,s2
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	4ac080e7          	jalr	1196(ra) # 80005fdc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b38:	00005517          	auipc	a0,0x5
    80003b3c:	6b050513          	addi	a0,a0,1712 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003b40:	00002097          	auipc	ra,0x2
    80003b44:	2ec080e7          	jalr	748(ra) # 80005e2c <_Z11printStringPKc>
    80003b48:	00000613          	li	a2,0
    80003b4c:	00a00593          	li	a1,10
    80003b50:	00048513          	mv	a0,s1
    80003b54:	00002097          	auipc	ra,0x2
    80003b58:	488080e7          	jalr	1160(ra) # 80005fdc <_Z8printIntiii>
    printString(".\n");
    80003b5c:	00005517          	auipc	a0,0x5
    80003b60:	6a450513          	addi	a0,a0,1700 # 80009200 <CONSOLE_STATUS+0x1f0>
    80003b64:	00002097          	auipc	ra,0x2
    80003b68:	2c8080e7          	jalr	712(ra) # 80005e2c <_Z11printStringPKc>
    if(threadNum > n) {
    80003b6c:	0324c463          	blt	s1,s2,80003b94 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003b70:	03205c63          	blez	s2,80003ba8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003b74:	03800513          	li	a0,56
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	2d8080e7          	jalr	728(ra) # 80002e50 <_Znwm>
    80003b80:	00050a13          	mv	s4,a0
    80003b84:	00048593          	mv	a1,s1
    80003b88:	00003097          	auipc	ra,0x3
    80003b8c:	080080e7          	jalr	128(ra) # 80006c08 <_ZN6BufferC1Ei>
    80003b90:	0300006f          	j	80003bc0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b94:	00005517          	auipc	a0,0x5
    80003b98:	67450513          	addi	a0,a0,1652 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	290080e7          	jalr	656(ra) # 80005e2c <_Z11printStringPKc>
        return;
    80003ba4:	0140006f          	j	80003bb8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003ba8:	00005517          	auipc	a0,0x5
    80003bac:	6a050513          	addi	a0,a0,1696 # 80009248 <CONSOLE_STATUS+0x238>
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	27c080e7          	jalr	636(ra) # 80005e2c <_Z11printStringPKc>
        return;
    80003bb8:	000b0113          	mv	sp,s6
    80003bbc:	1500006f          	j	80003d0c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003bc0:	00000593          	li	a1,0
    80003bc4:	00008517          	auipc	a0,0x8
    80003bc8:	28450513          	addi	a0,a0,644 # 8000be48 <_ZL10waitForAll>
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	890080e7          	jalr	-1904(ra) # 8000145c <sem_open>
    thread_t threads[threadNum];
    80003bd4:	00391793          	slli	a5,s2,0x3
    80003bd8:	00f78793          	addi	a5,a5,15
    80003bdc:	ff07f793          	andi	a5,a5,-16
    80003be0:	40f10133          	sub	sp,sp,a5
    80003be4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003be8:	0019071b          	addiw	a4,s2,1
    80003bec:	00171793          	slli	a5,a4,0x1
    80003bf0:	00e787b3          	add	a5,a5,a4
    80003bf4:	00379793          	slli	a5,a5,0x3
    80003bf8:	00f78793          	addi	a5,a5,15
    80003bfc:	ff07f793          	andi	a5,a5,-16
    80003c00:	40f10133          	sub	sp,sp,a5
    80003c04:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003c08:	00191613          	slli	a2,s2,0x1
    80003c0c:	012607b3          	add	a5,a2,s2
    80003c10:	00379793          	slli	a5,a5,0x3
    80003c14:	00f987b3          	add	a5,s3,a5
    80003c18:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003c1c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003c20:	00008717          	auipc	a4,0x8
    80003c24:	22873703          	ld	a4,552(a4) # 8000be48 <_ZL10waitForAll>
    80003c28:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003c2c:	00078613          	mv	a2,a5
    80003c30:	00000597          	auipc	a1,0x0
    80003c34:	d7458593          	addi	a1,a1,-652 # 800039a4 <_ZL8consumerPv>
    80003c38:	f9840513          	addi	a0,s0,-104
    80003c3c:	ffffd097          	auipc	ra,0xffffd
    80003c40:	70c080e7          	jalr	1804(ra) # 80001348 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003c44:	00000493          	li	s1,0
    80003c48:	0280006f          	j	80003c70 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003c4c:	00000597          	auipc	a1,0x0
    80003c50:	c1458593          	addi	a1,a1,-1004 # 80003860 <_ZL16producerKeyboardPv>
                      data + i);
    80003c54:	00179613          	slli	a2,a5,0x1
    80003c58:	00f60633          	add	a2,a2,a5
    80003c5c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003c60:	00c98633          	add	a2,s3,a2
    80003c64:	ffffd097          	auipc	ra,0xffffd
    80003c68:	6e4080e7          	jalr	1764(ra) # 80001348 <thread_create>
    for (int i = 0; i < threadNum; i++) {
    80003c6c:	0014849b          	addiw	s1,s1,1
    80003c70:	0524d263          	bge	s1,s2,80003cb4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003c74:	00149793          	slli	a5,s1,0x1
    80003c78:	009787b3          	add	a5,a5,s1
    80003c7c:	00379793          	slli	a5,a5,0x3
    80003c80:	00f987b3          	add	a5,s3,a5
    80003c84:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003c88:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003c8c:	00008717          	auipc	a4,0x8
    80003c90:	1bc73703          	ld	a4,444(a4) # 8000be48 <_ZL10waitForAll>
    80003c94:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003c98:	00048793          	mv	a5,s1
    80003c9c:	00349513          	slli	a0,s1,0x3
    80003ca0:	00aa8533          	add	a0,s5,a0
    80003ca4:	fa9054e3          	blez	s1,80003c4c <_Z22producerConsumer_C_APIv+0x1c8>
    80003ca8:	00000597          	auipc	a1,0x0
    80003cac:	c6858593          	addi	a1,a1,-920 # 80003910 <_ZL8producerPv>
    80003cb0:	fa5ff06f          	j	80003c54 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003cb4:	ffffd097          	auipc	ra,0xffffd
    80003cb8:	760080e7          	jalr	1888(ra) # 80001414 <thread_dispatch>
    for (int i = 0; i <= threadNum; i++) {
    80003cbc:	00000493          	li	s1,0
    80003cc0:	00994e63          	blt	s2,s1,80003cdc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003cc4:	00008517          	auipc	a0,0x8
    80003cc8:	18453503          	ld	a0,388(a0) # 8000be48 <_ZL10waitForAll>
    80003ccc:	ffffd097          	auipc	ra,0xffffd
    80003cd0:	7f0080e7          	jalr	2032(ra) # 800014bc <sem_wait>
    for (int i = 0; i <= threadNum; i++) {
    80003cd4:	0014849b          	addiw	s1,s1,1
    80003cd8:	fe9ff06f          	j	80003cc0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003cdc:	00008517          	auipc	a0,0x8
    80003ce0:	16c53503          	ld	a0,364(a0) # 8000be48 <_ZL10waitForAll>
    80003ce4:	ffffd097          	auipc	ra,0xffffd
    80003ce8:	7b0080e7          	jalr	1968(ra) # 80001494 <sem_close>
    delete buffer;
    80003cec:	000a0e63          	beqz	s4,80003d08 <_Z22producerConsumer_C_APIv+0x284>
    80003cf0:	000a0513          	mv	a0,s4
    80003cf4:	00003097          	auipc	ra,0x3
    80003cf8:	154080e7          	jalr	340(ra) # 80006e48 <_ZN6BufferD1Ev>
    80003cfc:	000a0513          	mv	a0,s4
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	178080e7          	jalr	376(ra) # 80002e78 <_ZdlPv>
    80003d08:	000b0113          	mv	sp,s6

}
    80003d0c:	f9040113          	addi	sp,s0,-112
    80003d10:	06813083          	ld	ra,104(sp)
    80003d14:	06013403          	ld	s0,96(sp)
    80003d18:	05813483          	ld	s1,88(sp)
    80003d1c:	05013903          	ld	s2,80(sp)
    80003d20:	04813983          	ld	s3,72(sp)
    80003d24:	04013a03          	ld	s4,64(sp)
    80003d28:	03813a83          	ld	s5,56(sp)
    80003d2c:	03013b03          	ld	s6,48(sp)
    80003d30:	07010113          	addi	sp,sp,112
    80003d34:	00008067          	ret
    80003d38:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003d3c:	000a0513          	mv	a0,s4
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	138080e7          	jalr	312(ra) # 80002e78 <_ZdlPv>
    80003d48:	00048513          	mv	a0,s1
    80003d4c:	00009097          	auipc	ra,0x9
    80003d50:	20c080e7          	jalr	524(ra) # 8000cf58 <_Unwind_Resume>

0000000080003d54 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003d54:	fe010113          	addi	sp,sp,-32
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	00813823          	sd	s0,16(sp)
    80003d60:	00913423          	sd	s1,8(sp)
    80003d64:	01213023          	sd	s2,0(sp)
    80003d68:	02010413          	addi	s0,sp,32
    80003d6c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d70:	00100793          	li	a5,1
    80003d74:	02a7f863          	bgeu	a5,a0,80003da4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d78:	00a00793          	li	a5,10
    80003d7c:	02f577b3          	remu	a5,a0,a5
    80003d80:	02078e63          	beqz	a5,80003dbc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d84:	fff48513          	addi	a0,s1,-1
    80003d88:	00000097          	auipc	ra,0x0
    80003d8c:	fcc080e7          	jalr	-52(ra) # 80003d54 <_ZL9fibonaccim>
    80003d90:	00050913          	mv	s2,a0
    80003d94:	ffe48513          	addi	a0,s1,-2
    80003d98:	00000097          	auipc	ra,0x0
    80003d9c:	fbc080e7          	jalr	-68(ra) # 80003d54 <_ZL9fibonaccim>
    80003da0:	00a90533          	add	a0,s2,a0
}
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	00813483          	ld	s1,8(sp)
    80003db0:	00013903          	ld	s2,0(sp)
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003dbc:	ffffd097          	auipc	ra,0xffffd
    80003dc0:	658080e7          	jalr	1624(ra) # 80001414 <thread_dispatch>
    80003dc4:	fc1ff06f          	j	80003d84 <_ZL9fibonaccim+0x30>

0000000080003dc8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003dc8:	fe010113          	addi	sp,sp,-32
    80003dcc:	00113c23          	sd	ra,24(sp)
    80003dd0:	00813823          	sd	s0,16(sp)
    80003dd4:	00913423          	sd	s1,8(sp)
    80003dd8:	01213023          	sd	s2,0(sp)
    80003ddc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003de0:	00000913          	li	s2,0
    80003de4:	0380006f          	j	80003e1c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003de8:	ffffd097          	auipc	ra,0xffffd
    80003dec:	62c080e7          	jalr	1580(ra) # 80001414 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003df0:	00148493          	addi	s1,s1,1
    80003df4:	000027b7          	lui	a5,0x2
    80003df8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003dfc:	0097ee63          	bltu	a5,s1,80003e18 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e00:	00000713          	li	a4,0
    80003e04:	000077b7          	lui	a5,0x7
    80003e08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e0c:	fce7eee3          	bltu	a5,a4,80003de8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003e10:	00170713          	addi	a4,a4,1
    80003e14:	ff1ff06f          	j	80003e04 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e18:	00190913          	addi	s2,s2,1
    80003e1c:	00900793          	li	a5,9
    80003e20:	0527e063          	bltu	a5,s2,80003e60 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e24:	00005517          	auipc	a0,0x5
    80003e28:	45450513          	addi	a0,a0,1108 # 80009278 <CONSOLE_STATUS+0x268>
    80003e2c:	00002097          	auipc	ra,0x2
    80003e30:	000080e7          	jalr	ra # 80005e2c <_Z11printStringPKc>
    80003e34:	00000613          	li	a2,0
    80003e38:	00a00593          	li	a1,10
    80003e3c:	0009051b          	sext.w	a0,s2
    80003e40:	00002097          	auipc	ra,0x2
    80003e44:	19c080e7          	jalr	412(ra) # 80005fdc <_Z8printIntiii>
    80003e48:	00005517          	auipc	a0,0x5
    80003e4c:	6a050513          	addi	a0,a0,1696 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003e50:	00002097          	auipc	ra,0x2
    80003e54:	fdc080e7          	jalr	-36(ra) # 80005e2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e58:	00000493          	li	s1,0
    80003e5c:	f99ff06f          	j	80003df4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003e60:	00005517          	auipc	a0,0x5
    80003e64:	42050513          	addi	a0,a0,1056 # 80009280 <CONSOLE_STATUS+0x270>
    80003e68:	00002097          	auipc	ra,0x2
    80003e6c:	fc4080e7          	jalr	-60(ra) # 80005e2c <_Z11printStringPKc>
    finishedA = true;
    80003e70:	00100793          	li	a5,1
    80003e74:	00008717          	auipc	a4,0x8
    80003e78:	fcf70e23          	sb	a5,-36(a4) # 8000be50 <_ZL9finishedA>
}
    80003e7c:	01813083          	ld	ra,24(sp)
    80003e80:	01013403          	ld	s0,16(sp)
    80003e84:	00813483          	ld	s1,8(sp)
    80003e88:	00013903          	ld	s2,0(sp)
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00008067          	ret

0000000080003e94 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003e94:	fe010113          	addi	sp,sp,-32
    80003e98:	00113c23          	sd	ra,24(sp)
    80003e9c:	00813823          	sd	s0,16(sp)
    80003ea0:	00913423          	sd	s1,8(sp)
    80003ea4:	01213023          	sd	s2,0(sp)
    80003ea8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003eac:	00000913          	li	s2,0
    80003eb0:	0380006f          	j	80003ee8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003eb4:	ffffd097          	auipc	ra,0xffffd
    80003eb8:	560080e7          	jalr	1376(ra) # 80001414 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80003ebc:	00148493          	addi	s1,s1,1
    80003ec0:	000027b7          	lui	a5,0x2
    80003ec4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ec8:	0097ee63          	bltu	a5,s1,80003ee4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ecc:	00000713          	li	a4,0
    80003ed0:	000077b7          	lui	a5,0x7
    80003ed4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ed8:	fce7eee3          	bltu	a5,a4,80003eb4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003edc:	00170713          	addi	a4,a4,1
    80003ee0:	ff1ff06f          	j	80003ed0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003ee4:	00190913          	addi	s2,s2,1
    80003ee8:	00f00793          	li	a5,15
    80003eec:	0527e063          	bltu	a5,s2,80003f2c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ef0:	00005517          	auipc	a0,0x5
    80003ef4:	3a050513          	addi	a0,a0,928 # 80009290 <CONSOLE_STATUS+0x280>
    80003ef8:	00002097          	auipc	ra,0x2
    80003efc:	f34080e7          	jalr	-204(ra) # 80005e2c <_Z11printStringPKc>
    80003f00:	00000613          	li	a2,0
    80003f04:	00a00593          	li	a1,10
    80003f08:	0009051b          	sext.w	a0,s2
    80003f0c:	00002097          	auipc	ra,0x2
    80003f10:	0d0080e7          	jalr	208(ra) # 80005fdc <_Z8printIntiii>
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	5d450513          	addi	a0,a0,1492 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003f1c:	00002097          	auipc	ra,0x2
    80003f20:	f10080e7          	jalr	-240(ra) # 80005e2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f24:	00000493          	li	s1,0
    80003f28:	f99ff06f          	j	80003ec0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003f2c:	00005517          	auipc	a0,0x5
    80003f30:	36c50513          	addi	a0,a0,876 # 80009298 <CONSOLE_STATUS+0x288>
    80003f34:	00002097          	auipc	ra,0x2
    80003f38:	ef8080e7          	jalr	-264(ra) # 80005e2c <_Z11printStringPKc>
    finishedB = true;
    80003f3c:	00100793          	li	a5,1
    80003f40:	00008717          	auipc	a4,0x8
    80003f44:	f0f708a3          	sb	a5,-239(a4) # 8000be51 <_ZL9finishedB>
    thread_dispatch();
    80003f48:	ffffd097          	auipc	ra,0xffffd
    80003f4c:	4cc080e7          	jalr	1228(ra) # 80001414 <thread_dispatch>
}
    80003f50:	01813083          	ld	ra,24(sp)
    80003f54:	01013403          	ld	s0,16(sp)
    80003f58:	00813483          	ld	s1,8(sp)
    80003f5c:	00013903          	ld	s2,0(sp)
    80003f60:	02010113          	addi	sp,sp,32
    80003f64:	00008067          	ret

0000000080003f68 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003f68:	fe010113          	addi	sp,sp,-32
    80003f6c:	00113c23          	sd	ra,24(sp)
    80003f70:	00813823          	sd	s0,16(sp)
    80003f74:	00913423          	sd	s1,8(sp)
    80003f78:	01213023          	sd	s2,0(sp)
    80003f7c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f80:	00000493          	li	s1,0
    80003f84:	0400006f          	j	80003fc4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f88:	00005517          	auipc	a0,0x5
    80003f8c:	32050513          	addi	a0,a0,800 # 800092a8 <CONSOLE_STATUS+0x298>
    80003f90:	00002097          	auipc	ra,0x2
    80003f94:	e9c080e7          	jalr	-356(ra) # 80005e2c <_Z11printStringPKc>
    80003f98:	00000613          	li	a2,0
    80003f9c:	00a00593          	li	a1,10
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	00002097          	auipc	ra,0x2
    80003fa8:	038080e7          	jalr	56(ra) # 80005fdc <_Z8printIntiii>
    80003fac:	00005517          	auipc	a0,0x5
    80003fb0:	53c50513          	addi	a0,a0,1340 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003fb4:	00002097          	auipc	ra,0x2
    80003fb8:	e78080e7          	jalr	-392(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003fbc:	0014849b          	addiw	s1,s1,1
    80003fc0:	0ff4f493          	andi	s1,s1,255
    80003fc4:	00200793          	li	a5,2
    80003fc8:	fc97f0e3          	bgeu	a5,s1,80003f88 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003fcc:	00005517          	auipc	a0,0x5
    80003fd0:	2e450513          	addi	a0,a0,740 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003fd4:	00002097          	auipc	ra,0x2
    80003fd8:	e58080e7          	jalr	-424(ra) # 80005e2c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003fdc:	00700313          	li	t1,7
    thread_dispatch();
    80003fe0:	ffffd097          	auipc	ra,0xffffd
    80003fe4:	434080e7          	jalr	1076(ra) # 80001414 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003fe8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003fec:	00005517          	auipc	a0,0x5
    80003ff0:	2d450513          	addi	a0,a0,724 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80003ff4:	00002097          	auipc	ra,0x2
    80003ff8:	e38080e7          	jalr	-456(ra) # 80005e2c <_Z11printStringPKc>
    80003ffc:	00000613          	li	a2,0
    80004000:	00a00593          	li	a1,10
    80004004:	0009051b          	sext.w	a0,s2
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	fd4080e7          	jalr	-44(ra) # 80005fdc <_Z8printIntiii>
    80004010:	00005517          	auipc	a0,0x5
    80004014:	4d850513          	addi	a0,a0,1240 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004018:	00002097          	auipc	ra,0x2
    8000401c:	e14080e7          	jalr	-492(ra) # 80005e2c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004020:	00c00513          	li	a0,12
    80004024:	00000097          	auipc	ra,0x0
    80004028:	d30080e7          	jalr	-720(ra) # 80003d54 <_ZL9fibonaccim>
    8000402c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004030:	00005517          	auipc	a0,0x5
    80004034:	29850513          	addi	a0,a0,664 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	df4080e7          	jalr	-524(ra) # 80005e2c <_Z11printStringPKc>
    80004040:	00000613          	li	a2,0
    80004044:	00a00593          	li	a1,10
    80004048:	0009051b          	sext.w	a0,s2
    8000404c:	00002097          	auipc	ra,0x2
    80004050:	f90080e7          	jalr	-112(ra) # 80005fdc <_Z8printIntiii>
    80004054:	00005517          	auipc	a0,0x5
    80004058:	49450513          	addi	a0,a0,1172 # 800094e8 <CONSOLE_STATUS+0x4d8>
    8000405c:	00002097          	auipc	ra,0x2
    80004060:	dd0080e7          	jalr	-560(ra) # 80005e2c <_Z11printStringPKc>
    80004064:	0400006f          	j	800040a4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004068:	00005517          	auipc	a0,0x5
    8000406c:	24050513          	addi	a0,a0,576 # 800092a8 <CONSOLE_STATUS+0x298>
    80004070:	00002097          	auipc	ra,0x2
    80004074:	dbc080e7          	jalr	-580(ra) # 80005e2c <_Z11printStringPKc>
    80004078:	00000613          	li	a2,0
    8000407c:	00a00593          	li	a1,10
    80004080:	00048513          	mv	a0,s1
    80004084:	00002097          	auipc	ra,0x2
    80004088:	f58080e7          	jalr	-168(ra) # 80005fdc <_Z8printIntiii>
    8000408c:	00005517          	auipc	a0,0x5
    80004090:	45c50513          	addi	a0,a0,1116 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004094:	00002097          	auipc	ra,0x2
    80004098:	d98080e7          	jalr	-616(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000409c:	0014849b          	addiw	s1,s1,1
    800040a0:	0ff4f493          	andi	s1,s1,255
    800040a4:	00500793          	li	a5,5
    800040a8:	fc97f0e3          	bgeu	a5,s1,80004068 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800040ac:	00005517          	auipc	a0,0x5
    800040b0:	1d450513          	addi	a0,a0,468 # 80009280 <CONSOLE_STATUS+0x270>
    800040b4:	00002097          	auipc	ra,0x2
    800040b8:	d78080e7          	jalr	-648(ra) # 80005e2c <_Z11printStringPKc>
    finishedC = true;
    800040bc:	00100793          	li	a5,1
    800040c0:	00008717          	auipc	a4,0x8
    800040c4:	d8f70923          	sb	a5,-622(a4) # 8000be52 <_ZL9finishedC>
    thread_dispatch();
    800040c8:	ffffd097          	auipc	ra,0xffffd
    800040cc:	34c080e7          	jalr	844(ra) # 80001414 <thread_dispatch>
}
    800040d0:	01813083          	ld	ra,24(sp)
    800040d4:	01013403          	ld	s0,16(sp)
    800040d8:	00813483          	ld	s1,8(sp)
    800040dc:	00013903          	ld	s2,0(sp)
    800040e0:	02010113          	addi	sp,sp,32
    800040e4:	00008067          	ret

00000000800040e8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800040e8:	fe010113          	addi	sp,sp,-32
    800040ec:	00113c23          	sd	ra,24(sp)
    800040f0:	00813823          	sd	s0,16(sp)
    800040f4:	00913423          	sd	s1,8(sp)
    800040f8:	01213023          	sd	s2,0(sp)
    800040fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004100:	00a00493          	li	s1,10
    80004104:	0400006f          	j	80004144 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004108:	00005517          	auipc	a0,0x5
    8000410c:	1d050513          	addi	a0,a0,464 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80004110:	00002097          	auipc	ra,0x2
    80004114:	d1c080e7          	jalr	-740(ra) # 80005e2c <_Z11printStringPKc>
    80004118:	00000613          	li	a2,0
    8000411c:	00a00593          	li	a1,10
    80004120:	00048513          	mv	a0,s1
    80004124:	00002097          	auipc	ra,0x2
    80004128:	eb8080e7          	jalr	-328(ra) # 80005fdc <_Z8printIntiii>
    8000412c:	00005517          	auipc	a0,0x5
    80004130:	3bc50513          	addi	a0,a0,956 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004134:	00002097          	auipc	ra,0x2
    80004138:	cf8080e7          	jalr	-776(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000413c:	0014849b          	addiw	s1,s1,1
    80004140:	0ff4f493          	andi	s1,s1,255
    80004144:	00c00793          	li	a5,12
    80004148:	fc97f0e3          	bgeu	a5,s1,80004108 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000414c:	00005517          	auipc	a0,0x5
    80004150:	19450513          	addi	a0,a0,404 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004154:	00002097          	auipc	ra,0x2
    80004158:	cd8080e7          	jalr	-808(ra) # 80005e2c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000415c:	00500313          	li	t1,5
    thread_dispatch();
    80004160:	ffffd097          	auipc	ra,0xffffd
    80004164:	2b4080e7          	jalr	692(ra) # 80001414 <thread_dispatch>

    uint64 result = fibonacci(16);
    80004168:	01000513          	li	a0,16
    8000416c:	00000097          	auipc	ra,0x0
    80004170:	be8080e7          	jalr	-1048(ra) # 80003d54 <_ZL9fibonaccim>
    80004174:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004178:	00005517          	auipc	a0,0x5
    8000417c:	17850513          	addi	a0,a0,376 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004180:	00002097          	auipc	ra,0x2
    80004184:	cac080e7          	jalr	-852(ra) # 80005e2c <_Z11printStringPKc>
    80004188:	00000613          	li	a2,0
    8000418c:	00a00593          	li	a1,10
    80004190:	0009051b          	sext.w	a0,s2
    80004194:	00002097          	auipc	ra,0x2
    80004198:	e48080e7          	jalr	-440(ra) # 80005fdc <_Z8printIntiii>
    8000419c:	00005517          	auipc	a0,0x5
    800041a0:	34c50513          	addi	a0,a0,844 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800041a4:	00002097          	auipc	ra,0x2
    800041a8:	c88080e7          	jalr	-888(ra) # 80005e2c <_Z11printStringPKc>
    800041ac:	0400006f          	j	800041ec <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800041b0:	00005517          	auipc	a0,0x5
    800041b4:	12850513          	addi	a0,a0,296 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800041b8:	00002097          	auipc	ra,0x2
    800041bc:	c74080e7          	jalr	-908(ra) # 80005e2c <_Z11printStringPKc>
    800041c0:	00000613          	li	a2,0
    800041c4:	00a00593          	li	a1,10
    800041c8:	00048513          	mv	a0,s1
    800041cc:	00002097          	auipc	ra,0x2
    800041d0:	e10080e7          	jalr	-496(ra) # 80005fdc <_Z8printIntiii>
    800041d4:	00005517          	auipc	a0,0x5
    800041d8:	31450513          	addi	a0,a0,788 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800041dc:	00002097          	auipc	ra,0x2
    800041e0:	c50080e7          	jalr	-944(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800041e4:	0014849b          	addiw	s1,s1,1
    800041e8:	0ff4f493          	andi	s1,s1,255
    800041ec:	00f00793          	li	a5,15
    800041f0:	fc97f0e3          	bgeu	a5,s1,800041b0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800041f4:	00005517          	auipc	a0,0x5
    800041f8:	10c50513          	addi	a0,a0,268 # 80009300 <CONSOLE_STATUS+0x2f0>
    800041fc:	00002097          	auipc	ra,0x2
    80004200:	c30080e7          	jalr	-976(ra) # 80005e2c <_Z11printStringPKc>
    finishedD = true;
    80004204:	00100793          	li	a5,1
    80004208:	00008717          	auipc	a4,0x8
    8000420c:	c4f705a3          	sb	a5,-949(a4) # 8000be53 <_ZL9finishedD>
    thread_dispatch();
    80004210:	ffffd097          	auipc	ra,0xffffd
    80004214:	204080e7          	jalr	516(ra) # 80001414 <thread_dispatch>
}
    80004218:	01813083          	ld	ra,24(sp)
    8000421c:	01013403          	ld	s0,16(sp)
    80004220:	00813483          	ld	s1,8(sp)
    80004224:	00013903          	ld	s2,0(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret

0000000080004230 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004230:	fc010113          	addi	sp,sp,-64
    80004234:	02113c23          	sd	ra,56(sp)
    80004238:	02813823          	sd	s0,48(sp)
    8000423c:	02913423          	sd	s1,40(sp)
    80004240:	03213023          	sd	s2,32(sp)
    80004244:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004248:	02000513          	li	a0,32
    8000424c:	fffff097          	auipc	ra,0xfffff
    80004250:	c04080e7          	jalr	-1020(ra) # 80002e50 <_Znwm>
    80004254:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	ce0080e7          	jalr	-800(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80004260:	00007797          	auipc	a5,0x7
    80004264:	71078793          	addi	a5,a5,1808 # 8000b970 <_ZTV7WorkerA+0x10>
    80004268:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000426c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004270:	00005517          	auipc	a0,0x5
    80004274:	0a050513          	addi	a0,a0,160 # 80009310 <CONSOLE_STATUS+0x300>
    80004278:	00002097          	auipc	ra,0x2
    8000427c:	bb4080e7          	jalr	-1100(ra) # 80005e2c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004280:	02000513          	li	a0,32
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	bcc080e7          	jalr	-1076(ra) # 80002e50 <_Znwm>
    8000428c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004290:	fffff097          	auipc	ra,0xfffff
    80004294:	ca8080e7          	jalr	-856(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80004298:	00007797          	auipc	a5,0x7
    8000429c:	70078793          	addi	a5,a5,1792 # 8000b998 <_ZTV7WorkerB+0x10>
    800042a0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800042a4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800042a8:	00005517          	auipc	a0,0x5
    800042ac:	08050513          	addi	a0,a0,128 # 80009328 <CONSOLE_STATUS+0x318>
    800042b0:	00002097          	auipc	ra,0x2
    800042b4:	b7c080e7          	jalr	-1156(ra) # 80005e2c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800042b8:	02000513          	li	a0,32
    800042bc:	fffff097          	auipc	ra,0xfffff
    800042c0:	b94080e7          	jalr	-1132(ra) # 80002e50 <_Znwm>
    800042c4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	c70080e7          	jalr	-912(ra) # 80002f38 <_ZN6ThreadC1Ev>
    800042d0:	00007797          	auipc	a5,0x7
    800042d4:	6f078793          	addi	a5,a5,1776 # 8000b9c0 <_ZTV7WorkerC+0x10>
    800042d8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800042dc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800042e0:	00005517          	auipc	a0,0x5
    800042e4:	06050513          	addi	a0,a0,96 # 80009340 <CONSOLE_STATUS+0x330>
    800042e8:	00002097          	auipc	ra,0x2
    800042ec:	b44080e7          	jalr	-1212(ra) # 80005e2c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800042f0:	02000513          	li	a0,32
    800042f4:	fffff097          	auipc	ra,0xfffff
    800042f8:	b5c080e7          	jalr	-1188(ra) # 80002e50 <_Znwm>
    800042fc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	c38080e7          	jalr	-968(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80004308:	00007797          	auipc	a5,0x7
    8000430c:	6e078793          	addi	a5,a5,1760 # 8000b9e8 <_ZTV7WorkerD+0x10>
    80004310:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004314:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004318:	00005517          	auipc	a0,0x5
    8000431c:	04050513          	addi	a0,a0,64 # 80009358 <CONSOLE_STATUS+0x348>
    80004320:	00002097          	auipc	ra,0x2
    80004324:	b0c080e7          	jalr	-1268(ra) # 80005e2c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004328:	00000493          	li	s1,0
    8000432c:	00300793          	li	a5,3
    80004330:	0297c663          	blt	a5,s1,8000435c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004334:	00349793          	slli	a5,s1,0x3
    80004338:	fe040713          	addi	a4,s0,-32
    8000433c:	00f707b3          	add	a5,a4,a5
    80004340:	fe07b503          	ld	a0,-32(a5)
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	c24080e7          	jalr	-988(ra) # 80002f68 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000434c:	0014849b          	addiw	s1,s1,1
    80004350:	fddff06f          	j	8000432c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	c68080e7          	jalr	-920(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000435c:	00008797          	auipc	a5,0x8
    80004360:	af47c783          	lbu	a5,-1292(a5) # 8000be50 <_ZL9finishedA>
    80004364:	fe0788e3          	beqz	a5,80004354 <_Z20Threads_CPP_API_testv+0x124>
    80004368:	00008797          	auipc	a5,0x8
    8000436c:	ae97c783          	lbu	a5,-1303(a5) # 8000be51 <_ZL9finishedB>
    80004370:	fe0782e3          	beqz	a5,80004354 <_Z20Threads_CPP_API_testv+0x124>
    80004374:	00008797          	auipc	a5,0x8
    80004378:	ade7c783          	lbu	a5,-1314(a5) # 8000be52 <_ZL9finishedC>
    8000437c:	fc078ce3          	beqz	a5,80004354 <_Z20Threads_CPP_API_testv+0x124>
    80004380:	00008797          	auipc	a5,0x8
    80004384:	ad37c783          	lbu	a5,-1325(a5) # 8000be53 <_ZL9finishedD>
    80004388:	fc0786e3          	beqz	a5,80004354 <_Z20Threads_CPP_API_testv+0x124>
    8000438c:	fc040493          	addi	s1,s0,-64
    80004390:	0080006f          	j	80004398 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004394:	00848493          	addi	s1,s1,8
    80004398:	fe040793          	addi	a5,s0,-32
    8000439c:	08f48663          	beq	s1,a5,80004428 <_Z20Threads_CPP_API_testv+0x1f8>
    800043a0:	0004b503          	ld	a0,0(s1)
    800043a4:	fe0508e3          	beqz	a0,80004394 <_Z20Threads_CPP_API_testv+0x164>
    800043a8:	00053783          	ld	a5,0(a0)
    800043ac:	0087b783          	ld	a5,8(a5)
    800043b0:	000780e7          	jalr	a5
    800043b4:	fe1ff06f          	j	80004394 <_Z20Threads_CPP_API_testv+0x164>
    800043b8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800043bc:	00048513          	mv	a0,s1
    800043c0:	fffff097          	auipc	ra,0xfffff
    800043c4:	ab8080e7          	jalr	-1352(ra) # 80002e78 <_ZdlPv>
    800043c8:	00090513          	mv	a0,s2
    800043cc:	00009097          	auipc	ra,0x9
    800043d0:	b8c080e7          	jalr	-1140(ra) # 8000cf58 <_Unwind_Resume>
    800043d4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800043d8:	00048513          	mv	a0,s1
    800043dc:	fffff097          	auipc	ra,0xfffff
    800043e0:	a9c080e7          	jalr	-1380(ra) # 80002e78 <_ZdlPv>
    800043e4:	00090513          	mv	a0,s2
    800043e8:	00009097          	auipc	ra,0x9
    800043ec:	b70080e7          	jalr	-1168(ra) # 8000cf58 <_Unwind_Resume>
    800043f0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800043f4:	00048513          	mv	a0,s1
    800043f8:	fffff097          	auipc	ra,0xfffff
    800043fc:	a80080e7          	jalr	-1408(ra) # 80002e78 <_ZdlPv>
    80004400:	00090513          	mv	a0,s2
    80004404:	00009097          	auipc	ra,0x9
    80004408:	b54080e7          	jalr	-1196(ra) # 8000cf58 <_Unwind_Resume>
    8000440c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004410:	00048513          	mv	a0,s1
    80004414:	fffff097          	auipc	ra,0xfffff
    80004418:	a64080e7          	jalr	-1436(ra) # 80002e78 <_ZdlPv>
    8000441c:	00090513          	mv	a0,s2
    80004420:	00009097          	auipc	ra,0x9
    80004424:	b38080e7          	jalr	-1224(ra) # 8000cf58 <_Unwind_Resume>
}
    80004428:	03813083          	ld	ra,56(sp)
    8000442c:	03013403          	ld	s0,48(sp)
    80004430:	02813483          	ld	s1,40(sp)
    80004434:	02013903          	ld	s2,32(sp)
    80004438:	04010113          	addi	sp,sp,64
    8000443c:	00008067          	ret

0000000080004440 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004440:	ff010113          	addi	sp,sp,-16
    80004444:	00113423          	sd	ra,8(sp)
    80004448:	00813023          	sd	s0,0(sp)
    8000444c:	01010413          	addi	s0,sp,16
    80004450:	00007797          	auipc	a5,0x7
    80004454:	52078793          	addi	a5,a5,1312 # 8000b970 <_ZTV7WorkerA+0x10>
    80004458:	00f53023          	sd	a5,0(a0)
    8000445c:	fffff097          	auipc	ra,0xfffff
    80004460:	924080e7          	jalr	-1756(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004464:	00813083          	ld	ra,8(sp)
    80004468:	00013403          	ld	s0,0(sp)
    8000446c:	01010113          	addi	sp,sp,16
    80004470:	00008067          	ret

0000000080004474 <_ZN7WorkerAD0Ev>:
    80004474:	fe010113          	addi	sp,sp,-32
    80004478:	00113c23          	sd	ra,24(sp)
    8000447c:	00813823          	sd	s0,16(sp)
    80004480:	00913423          	sd	s1,8(sp)
    80004484:	02010413          	addi	s0,sp,32
    80004488:	00050493          	mv	s1,a0
    8000448c:	00007797          	auipc	a5,0x7
    80004490:	4e478793          	addi	a5,a5,1252 # 8000b970 <_ZTV7WorkerA+0x10>
    80004494:	00f53023          	sd	a5,0(a0)
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	8e8080e7          	jalr	-1816(ra) # 80002d80 <_ZN6ThreadD1Ev>
    800044a0:	00048513          	mv	a0,s1
    800044a4:	fffff097          	auipc	ra,0xfffff
    800044a8:	9d4080e7          	jalr	-1580(ra) # 80002e78 <_ZdlPv>
    800044ac:	01813083          	ld	ra,24(sp)
    800044b0:	01013403          	ld	s0,16(sp)
    800044b4:	00813483          	ld	s1,8(sp)
    800044b8:	02010113          	addi	sp,sp,32
    800044bc:	00008067          	ret

00000000800044c0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800044c0:	ff010113          	addi	sp,sp,-16
    800044c4:	00113423          	sd	ra,8(sp)
    800044c8:	00813023          	sd	s0,0(sp)
    800044cc:	01010413          	addi	s0,sp,16
    800044d0:	00007797          	auipc	a5,0x7
    800044d4:	4c878793          	addi	a5,a5,1224 # 8000b998 <_ZTV7WorkerB+0x10>
    800044d8:	00f53023          	sd	a5,0(a0)
    800044dc:	fffff097          	auipc	ra,0xfffff
    800044e0:	8a4080e7          	jalr	-1884(ra) # 80002d80 <_ZN6ThreadD1Ev>
    800044e4:	00813083          	ld	ra,8(sp)
    800044e8:	00013403          	ld	s0,0(sp)
    800044ec:	01010113          	addi	sp,sp,16
    800044f0:	00008067          	ret

00000000800044f4 <_ZN7WorkerBD0Ev>:
    800044f4:	fe010113          	addi	sp,sp,-32
    800044f8:	00113c23          	sd	ra,24(sp)
    800044fc:	00813823          	sd	s0,16(sp)
    80004500:	00913423          	sd	s1,8(sp)
    80004504:	02010413          	addi	s0,sp,32
    80004508:	00050493          	mv	s1,a0
    8000450c:	00007797          	auipc	a5,0x7
    80004510:	48c78793          	addi	a5,a5,1164 # 8000b998 <_ZTV7WorkerB+0x10>
    80004514:	00f53023          	sd	a5,0(a0)
    80004518:	fffff097          	auipc	ra,0xfffff
    8000451c:	868080e7          	jalr	-1944(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004520:	00048513          	mv	a0,s1
    80004524:	fffff097          	auipc	ra,0xfffff
    80004528:	954080e7          	jalr	-1708(ra) # 80002e78 <_ZdlPv>
    8000452c:	01813083          	ld	ra,24(sp)
    80004530:	01013403          	ld	s0,16(sp)
    80004534:	00813483          	ld	s1,8(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret

0000000080004540 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004540:	ff010113          	addi	sp,sp,-16
    80004544:	00113423          	sd	ra,8(sp)
    80004548:	00813023          	sd	s0,0(sp)
    8000454c:	01010413          	addi	s0,sp,16
    80004550:	00007797          	auipc	a5,0x7
    80004554:	47078793          	addi	a5,a5,1136 # 8000b9c0 <_ZTV7WorkerC+0x10>
    80004558:	00f53023          	sd	a5,0(a0)
    8000455c:	fffff097          	auipc	ra,0xfffff
    80004560:	824080e7          	jalr	-2012(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004564:	00813083          	ld	ra,8(sp)
    80004568:	00013403          	ld	s0,0(sp)
    8000456c:	01010113          	addi	sp,sp,16
    80004570:	00008067          	ret

0000000080004574 <_ZN7WorkerCD0Ev>:
    80004574:	fe010113          	addi	sp,sp,-32
    80004578:	00113c23          	sd	ra,24(sp)
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00913423          	sd	s1,8(sp)
    80004584:	02010413          	addi	s0,sp,32
    80004588:	00050493          	mv	s1,a0
    8000458c:	00007797          	auipc	a5,0x7
    80004590:	43478793          	addi	a5,a5,1076 # 8000b9c0 <_ZTV7WorkerC+0x10>
    80004594:	00f53023          	sd	a5,0(a0)
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	7e8080e7          	jalr	2024(ra) # 80002d80 <_ZN6ThreadD1Ev>
    800045a0:	00048513          	mv	a0,s1
    800045a4:	fffff097          	auipc	ra,0xfffff
    800045a8:	8d4080e7          	jalr	-1836(ra) # 80002e78 <_ZdlPv>
    800045ac:	01813083          	ld	ra,24(sp)
    800045b0:	01013403          	ld	s0,16(sp)
    800045b4:	00813483          	ld	s1,8(sp)
    800045b8:	02010113          	addi	sp,sp,32
    800045bc:	00008067          	ret

00000000800045c0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800045c0:	ff010113          	addi	sp,sp,-16
    800045c4:	00113423          	sd	ra,8(sp)
    800045c8:	00813023          	sd	s0,0(sp)
    800045cc:	01010413          	addi	s0,sp,16
    800045d0:	00007797          	auipc	a5,0x7
    800045d4:	41878793          	addi	a5,a5,1048 # 8000b9e8 <_ZTV7WorkerD+0x10>
    800045d8:	00f53023          	sd	a5,0(a0)
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	7a4080e7          	jalr	1956(ra) # 80002d80 <_ZN6ThreadD1Ev>
    800045e4:	00813083          	ld	ra,8(sp)
    800045e8:	00013403          	ld	s0,0(sp)
    800045ec:	01010113          	addi	sp,sp,16
    800045f0:	00008067          	ret

00000000800045f4 <_ZN7WorkerDD0Ev>:
    800045f4:	fe010113          	addi	sp,sp,-32
    800045f8:	00113c23          	sd	ra,24(sp)
    800045fc:	00813823          	sd	s0,16(sp)
    80004600:	00913423          	sd	s1,8(sp)
    80004604:	02010413          	addi	s0,sp,32
    80004608:	00050493          	mv	s1,a0
    8000460c:	00007797          	auipc	a5,0x7
    80004610:	3dc78793          	addi	a5,a5,988 # 8000b9e8 <_ZTV7WorkerD+0x10>
    80004614:	00f53023          	sd	a5,0(a0)
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	768080e7          	jalr	1896(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004620:	00048513          	mv	a0,s1
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	854080e7          	jalr	-1964(ra) # 80002e78 <_ZdlPv>
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	02010113          	addi	sp,sp,32
    8000463c:	00008067          	ret

0000000080004640 <_ZN7WorkerA3runEv>:
    void run() override {
    80004640:	ff010113          	addi	sp,sp,-16
    80004644:	00113423          	sd	ra,8(sp)
    80004648:	00813023          	sd	s0,0(sp)
    8000464c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004650:	00000593          	li	a1,0
    80004654:	fffff097          	auipc	ra,0xfffff
    80004658:	774080e7          	jalr	1908(ra) # 80003dc8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000465c:	00813083          	ld	ra,8(sp)
    80004660:	00013403          	ld	s0,0(sp)
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00008067          	ret

000000008000466c <_ZN7WorkerB3runEv>:
    void run() override {
    8000466c:	ff010113          	addi	sp,sp,-16
    80004670:	00113423          	sd	ra,8(sp)
    80004674:	00813023          	sd	s0,0(sp)
    80004678:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000467c:	00000593          	li	a1,0
    80004680:	00000097          	auipc	ra,0x0
    80004684:	814080e7          	jalr	-2028(ra) # 80003e94 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004688:	00813083          	ld	ra,8(sp)
    8000468c:	00013403          	ld	s0,0(sp)
    80004690:	01010113          	addi	sp,sp,16
    80004694:	00008067          	ret

0000000080004698 <_ZN7WorkerC3runEv>:
    void run() override {
    80004698:	ff010113          	addi	sp,sp,-16
    8000469c:	00113423          	sd	ra,8(sp)
    800046a0:	00813023          	sd	s0,0(sp)
    800046a4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800046a8:	00000593          	li	a1,0
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	8bc080e7          	jalr	-1860(ra) # 80003f68 <_ZN7WorkerC11workerBodyCEPv>
    }
    800046b4:	00813083          	ld	ra,8(sp)
    800046b8:	00013403          	ld	s0,0(sp)
    800046bc:	01010113          	addi	sp,sp,16
    800046c0:	00008067          	ret

00000000800046c4 <_ZN7WorkerD3runEv>:
    void run() override {
    800046c4:	ff010113          	addi	sp,sp,-16
    800046c8:	00113423          	sd	ra,8(sp)
    800046cc:	00813023          	sd	s0,0(sp)
    800046d0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800046d4:	00000593          	li	a1,0
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	a10080e7          	jalr	-1520(ra) # 800040e8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800046e0:	00813083          	ld	ra,8(sp)
    800046e4:	00013403          	ld	s0,0(sp)
    800046e8:	01010113          	addi	sp,sp,16
    800046ec:	00008067          	ret

00000000800046f0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800046f0:	f8010113          	addi	sp,sp,-128
    800046f4:	06113c23          	sd	ra,120(sp)
    800046f8:	06813823          	sd	s0,112(sp)
    800046fc:	06913423          	sd	s1,104(sp)
    80004700:	07213023          	sd	s2,96(sp)
    80004704:	05313c23          	sd	s3,88(sp)
    80004708:	05413823          	sd	s4,80(sp)
    8000470c:	05513423          	sd	s5,72(sp)
    80004710:	05613023          	sd	s6,64(sp)
    80004714:	03713c23          	sd	s7,56(sp)
    80004718:	03813823          	sd	s8,48(sp)
    8000471c:	03913423          	sd	s9,40(sp)
    80004720:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004724:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004728:	00005517          	auipc	a0,0x5
    8000472c:	a6850513          	addi	a0,a0,-1432 # 80009190 <CONSOLE_STATUS+0x180>
    80004730:	00001097          	auipc	ra,0x1
    80004734:	6fc080e7          	jalr	1788(ra) # 80005e2c <_Z11printStringPKc>
    getString(input, 30);
    80004738:	01e00593          	li	a1,30
    8000473c:	f8040493          	addi	s1,s0,-128
    80004740:	00048513          	mv	a0,s1
    80004744:	00001097          	auipc	ra,0x1
    80004748:	770080e7          	jalr	1904(ra) # 80005eb4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000474c:	00048513          	mv	a0,s1
    80004750:	00002097          	auipc	ra,0x2
    80004754:	83c080e7          	jalr	-1988(ra) # 80005f8c <_Z11stringToIntPKc>
    80004758:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000475c:	00005517          	auipc	a0,0x5
    80004760:	a5450513          	addi	a0,a0,-1452 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80004764:	00001097          	auipc	ra,0x1
    80004768:	6c8080e7          	jalr	1736(ra) # 80005e2c <_Z11printStringPKc>
    getString(input, 30);
    8000476c:	01e00593          	li	a1,30
    80004770:	00048513          	mv	a0,s1
    80004774:	00001097          	auipc	ra,0x1
    80004778:	740080e7          	jalr	1856(ra) # 80005eb4 <_Z9getStringPci>
    n = stringToInt(input);
    8000477c:	00048513          	mv	a0,s1
    80004780:	00002097          	auipc	ra,0x2
    80004784:	80c080e7          	jalr	-2036(ra) # 80005f8c <_Z11stringToIntPKc>
    80004788:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000478c:	00005517          	auipc	a0,0x5
    80004790:	a4450513          	addi	a0,a0,-1468 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004794:	00001097          	auipc	ra,0x1
    80004798:	698080e7          	jalr	1688(ra) # 80005e2c <_Z11printStringPKc>
    printInt(threadNum);
    8000479c:	00000613          	li	a2,0
    800047a0:	00a00593          	li	a1,10
    800047a4:	00098513          	mv	a0,s3
    800047a8:	00002097          	auipc	ra,0x2
    800047ac:	834080e7          	jalr	-1996(ra) # 80005fdc <_Z8printIntiii>
    printString(" i velicina bafera ");
    800047b0:	00005517          	auipc	a0,0x5
    800047b4:	a3850513          	addi	a0,a0,-1480 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800047b8:	00001097          	auipc	ra,0x1
    800047bc:	674080e7          	jalr	1652(ra) # 80005e2c <_Z11printStringPKc>
    printInt(n);
    800047c0:	00000613          	li	a2,0
    800047c4:	00a00593          	li	a1,10
    800047c8:	00048513          	mv	a0,s1
    800047cc:	00002097          	auipc	ra,0x2
    800047d0:	810080e7          	jalr	-2032(ra) # 80005fdc <_Z8printIntiii>
    printString(".\n");
    800047d4:	00005517          	auipc	a0,0x5
    800047d8:	a2c50513          	addi	a0,a0,-1492 # 80009200 <CONSOLE_STATUS+0x1f0>
    800047dc:	00001097          	auipc	ra,0x1
    800047e0:	650080e7          	jalr	1616(ra) # 80005e2c <_Z11printStringPKc>
    if (threadNum > n) {
    800047e4:	0334c463          	blt	s1,s3,8000480c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800047e8:	03305c63          	blez	s3,80004820 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800047ec:	03800513          	li	a0,56
    800047f0:	ffffe097          	auipc	ra,0xffffe
    800047f4:	660080e7          	jalr	1632(ra) # 80002e50 <_Znwm>
    800047f8:	00050a93          	mv	s5,a0
    800047fc:	00048593          	mv	a1,s1
    80004800:	00002097          	auipc	ra,0x2
    80004804:	8fc080e7          	jalr	-1796(ra) # 800060fc <_ZN9BufferCPPC1Ei>
    80004808:	0300006f          	j	80004838 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti veci od velicine bafera!\n");
    8000480c:	00005517          	auipc	a0,0x5
    80004810:	b6450513          	addi	a0,a0,-1180 # 80009370 <CONSOLE_STATUS+0x360>
    80004814:	00001097          	auipc	ra,0x1
    80004818:	618080e7          	jalr	1560(ra) # 80005e2c <_Z11printStringPKc>
        return;
    8000481c:	0140006f          	j	80004830 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004820:	00005517          	auipc	a0,0x5
    80004824:	a2850513          	addi	a0,a0,-1496 # 80009248 <CONSOLE_STATUS+0x238>
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	604080e7          	jalr	1540(ra) # 80005e2c <_Z11printStringPKc>
        return;
    80004830:	000c0113          	mv	sp,s8
    80004834:	2140006f          	j	80004a48 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004838:	01000513          	li	a0,16
    8000483c:	ffffe097          	auipc	ra,0xffffe
    80004840:	614080e7          	jalr	1556(ra) # 80002e50 <_Znwm>
    80004844:	00050913          	mv	s2,a0
    80004848:	00000593          	li	a1,0
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	7c0080e7          	jalr	1984(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80004854:	00007797          	auipc	a5,0x7
    80004858:	6127b623          	sd	s2,1548(a5) # 8000be60 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000485c:	00399793          	slli	a5,s3,0x3
    80004860:	00f78793          	addi	a5,a5,15
    80004864:	ff07f793          	andi	a5,a5,-16
    80004868:	40f10133          	sub	sp,sp,a5
    8000486c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004870:	0019871b          	addiw	a4,s3,1
    80004874:	00171793          	slli	a5,a4,0x1
    80004878:	00e787b3          	add	a5,a5,a4
    8000487c:	00379793          	slli	a5,a5,0x3
    80004880:	00f78793          	addi	a5,a5,15
    80004884:	ff07f793          	andi	a5,a5,-16
    80004888:	40f10133          	sub	sp,sp,a5
    8000488c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004890:	00199493          	slli	s1,s3,0x1
    80004894:	013484b3          	add	s1,s1,s3
    80004898:	00349493          	slli	s1,s1,0x3
    8000489c:	009b04b3          	add	s1,s6,s1
    800048a0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800048a4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800048a8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800048ac:	02800513          	li	a0,40
    800048b0:	ffffe097          	auipc	ra,0xffffe
    800048b4:	5a0080e7          	jalr	1440(ra) # 80002e50 <_Znwm>
    800048b8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	67c080e7          	jalr	1660(ra) # 80002f38 <_ZN6ThreadC1Ev>
    800048c4:	00007797          	auipc	a5,0x7
    800048c8:	19c78793          	addi	a5,a5,412 # 8000ba60 <_ZTV8Consumer+0x10>
    800048cc:	00fbb023          	sd	a5,0(s7)
    800048d0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800048d4:	000b8513          	mv	a0,s7
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	690080e7          	jalr	1680(ra) # 80002f68 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800048e0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800048e4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800048e8:	00007797          	auipc	a5,0x7
    800048ec:	5787b783          	ld	a5,1400(a5) # 8000be60 <_ZL10waitForAll>
    800048f0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800048f4:	02800513          	li	a0,40
    800048f8:	ffffe097          	auipc	ra,0xffffe
    800048fc:	558080e7          	jalr	1368(ra) # 80002e50 <_Znwm>
    80004900:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004904:	ffffe097          	auipc	ra,0xffffe
    80004908:	634080e7          	jalr	1588(ra) # 80002f38 <_ZN6ThreadC1Ev>
    8000490c:	00007797          	auipc	a5,0x7
    80004910:	10478793          	addi	a5,a5,260 # 8000ba10 <_ZTV16ProducerKeyborad+0x10>
    80004914:	00f4b023          	sd	a5,0(s1)
    80004918:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000491c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004920:	00048513          	mv	a0,s1
    80004924:	ffffe097          	auipc	ra,0xffffe
    80004928:	644080e7          	jalr	1604(ra) # 80002f68 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000492c:	00100913          	li	s2,1
    80004930:	0300006f          	j	80004960 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004934:	00007797          	auipc	a5,0x7
    80004938:	10478793          	addi	a5,a5,260 # 8000ba38 <_ZTV8Producer+0x10>
    8000493c:	00fcb023          	sd	a5,0(s9)
    80004940:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004944:	00391793          	slli	a5,s2,0x3
    80004948:	00fa07b3          	add	a5,s4,a5
    8000494c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004950:	000c8513          	mv	a0,s9
    80004954:	ffffe097          	auipc	ra,0xffffe
    80004958:	614080e7          	jalr	1556(ra) # 80002f68 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000495c:	0019091b          	addiw	s2,s2,1
    80004960:	05395263          	bge	s2,s3,800049a4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004964:	00191493          	slli	s1,s2,0x1
    80004968:	012484b3          	add	s1,s1,s2
    8000496c:	00349493          	slli	s1,s1,0x3
    80004970:	009b04b3          	add	s1,s6,s1
    80004974:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004978:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000497c:	00007797          	auipc	a5,0x7
    80004980:	4e47b783          	ld	a5,1252(a5) # 8000be60 <_ZL10waitForAll>
    80004984:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004988:	02800513          	li	a0,40
    8000498c:	ffffe097          	auipc	ra,0xffffe
    80004990:	4c4080e7          	jalr	1220(ra) # 80002e50 <_Znwm>
    80004994:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004998:	ffffe097          	auipc	ra,0xffffe
    8000499c:	5a0080e7          	jalr	1440(ra) # 80002f38 <_ZN6ThreadC1Ev>
    800049a0:	f95ff06f          	j	80004934 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800049a4:	ffffe097          	auipc	ra,0xffffe
    800049a8:	618080e7          	jalr	1560(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800049ac:	00000493          	li	s1,0
    800049b0:	0099ce63          	blt	s3,s1,800049cc <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800049b4:	00007517          	auipc	a0,0x7
    800049b8:	4ac53503          	ld	a0,1196(a0) # 8000be60 <_ZL10waitForAll>
    800049bc:	ffffe097          	auipc	ra,0xffffe
    800049c0:	688080e7          	jalr	1672(ra) # 80003044 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800049c4:	0014849b          	addiw	s1,s1,1
    800049c8:	fe9ff06f          	j	800049b0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800049cc:	00007517          	auipc	a0,0x7
    800049d0:	49453503          	ld	a0,1172(a0) # 8000be60 <_ZL10waitForAll>
    800049d4:	00050863          	beqz	a0,800049e4 <_Z20testConsumerProducerv+0x2f4>
    800049d8:	00053783          	ld	a5,0(a0)
    800049dc:	0087b783          	ld	a5,8(a5)
    800049e0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800049e4:	00000493          	li	s1,0
    800049e8:	0080006f          	j	800049f0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800049ec:	0014849b          	addiw	s1,s1,1
    800049f0:	0334d263          	bge	s1,s3,80004a14 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800049f4:	00349793          	slli	a5,s1,0x3
    800049f8:	00fa07b3          	add	a5,s4,a5
    800049fc:	0007b503          	ld	a0,0(a5)
    80004a00:	fe0506e3          	beqz	a0,800049ec <_Z20testConsumerProducerv+0x2fc>
    80004a04:	00053783          	ld	a5,0(a0)
    80004a08:	0087b783          	ld	a5,8(a5)
    80004a0c:	000780e7          	jalr	a5
    80004a10:	fddff06f          	j	800049ec <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004a14:	000b8a63          	beqz	s7,80004a28 <_Z20testConsumerProducerv+0x338>
    80004a18:	000bb783          	ld	a5,0(s7)
    80004a1c:	0087b783          	ld	a5,8(a5)
    80004a20:	000b8513          	mv	a0,s7
    80004a24:	000780e7          	jalr	a5
    delete buffer;
    80004a28:	000a8e63          	beqz	s5,80004a44 <_Z20testConsumerProducerv+0x354>
    80004a2c:	000a8513          	mv	a0,s5
    80004a30:	00002097          	auipc	ra,0x2
    80004a34:	9c4080e7          	jalr	-1596(ra) # 800063f4 <_ZN9BufferCPPD1Ev>
    80004a38:	000a8513          	mv	a0,s5
    80004a3c:	ffffe097          	auipc	ra,0xffffe
    80004a40:	43c080e7          	jalr	1084(ra) # 80002e78 <_ZdlPv>
    80004a44:	000c0113          	mv	sp,s8
}
    80004a48:	f8040113          	addi	sp,s0,-128
    80004a4c:	07813083          	ld	ra,120(sp)
    80004a50:	07013403          	ld	s0,112(sp)
    80004a54:	06813483          	ld	s1,104(sp)
    80004a58:	06013903          	ld	s2,96(sp)
    80004a5c:	05813983          	ld	s3,88(sp)
    80004a60:	05013a03          	ld	s4,80(sp)
    80004a64:	04813a83          	ld	s5,72(sp)
    80004a68:	04013b03          	ld	s6,64(sp)
    80004a6c:	03813b83          	ld	s7,56(sp)
    80004a70:	03013c03          	ld	s8,48(sp)
    80004a74:	02813c83          	ld	s9,40(sp)
    80004a78:	08010113          	addi	sp,sp,128
    80004a7c:	00008067          	ret
    80004a80:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a84:	000a8513          	mv	a0,s5
    80004a88:	ffffe097          	auipc	ra,0xffffe
    80004a8c:	3f0080e7          	jalr	1008(ra) # 80002e78 <_ZdlPv>
    80004a90:	00048513          	mv	a0,s1
    80004a94:	00008097          	auipc	ra,0x8
    80004a98:	4c4080e7          	jalr	1220(ra) # 8000cf58 <_Unwind_Resume>
    80004a9c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004aa0:	00090513          	mv	a0,s2
    80004aa4:	ffffe097          	auipc	ra,0xffffe
    80004aa8:	3d4080e7          	jalr	980(ra) # 80002e78 <_ZdlPv>
    80004aac:	00048513          	mv	a0,s1
    80004ab0:	00008097          	auipc	ra,0x8
    80004ab4:	4a8080e7          	jalr	1192(ra) # 8000cf58 <_Unwind_Resume>
    80004ab8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004abc:	000b8513          	mv	a0,s7
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	3b8080e7          	jalr	952(ra) # 80002e78 <_ZdlPv>
    80004ac8:	00048513          	mv	a0,s1
    80004acc:	00008097          	auipc	ra,0x8
    80004ad0:	48c080e7          	jalr	1164(ra) # 8000cf58 <_Unwind_Resume>
    80004ad4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004ad8:	00048513          	mv	a0,s1
    80004adc:	ffffe097          	auipc	ra,0xffffe
    80004ae0:	39c080e7          	jalr	924(ra) # 80002e78 <_ZdlPv>
    80004ae4:	00090513          	mv	a0,s2
    80004ae8:	00008097          	auipc	ra,0x8
    80004aec:	470080e7          	jalr	1136(ra) # 8000cf58 <_Unwind_Resume>
    80004af0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004af4:	000c8513          	mv	a0,s9
    80004af8:	ffffe097          	auipc	ra,0xffffe
    80004afc:	380080e7          	jalr	896(ra) # 80002e78 <_ZdlPv>
    80004b00:	00048513          	mv	a0,s1
    80004b04:	00008097          	auipc	ra,0x8
    80004b08:	454080e7          	jalr	1108(ra) # 8000cf58 <_Unwind_Resume>

0000000080004b0c <_ZN8Consumer3runEv>:
    void run() override {
    80004b0c:	fd010113          	addi	sp,sp,-48
    80004b10:	02113423          	sd	ra,40(sp)
    80004b14:	02813023          	sd	s0,32(sp)
    80004b18:	00913c23          	sd	s1,24(sp)
    80004b1c:	01213823          	sd	s2,16(sp)
    80004b20:	01313423          	sd	s3,8(sp)
    80004b24:	03010413          	addi	s0,sp,48
    80004b28:	00050913          	mv	s2,a0
        int i = 0;
    80004b2c:	00000993          	li	s3,0
    80004b30:	0100006f          	j	80004b40 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004b34:	00a00513          	li	a0,10
    80004b38:	ffffe097          	auipc	ra,0xffffe
    80004b3c:	624080e7          	jalr	1572(ra) # 8000315c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004b40:	00007797          	auipc	a5,0x7
    80004b44:	3187a783          	lw	a5,792(a5) # 8000be58 <_ZL9threadEnd>
    80004b48:	04079a63          	bnez	a5,80004b9c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004b4c:	02093783          	ld	a5,32(s2)
    80004b50:	0087b503          	ld	a0,8(a5)
    80004b54:	00001097          	auipc	ra,0x1
    80004b58:	78c080e7          	jalr	1932(ra) # 800062e0 <_ZN9BufferCPP3getEv>
            i++;
    80004b5c:	0019849b          	addiw	s1,s3,1
    80004b60:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004b64:	0ff57513          	andi	a0,a0,255
    80004b68:	ffffe097          	auipc	ra,0xffffe
    80004b6c:	5f4080e7          	jalr	1524(ra) # 8000315c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004b70:	05000793          	li	a5,80
    80004b74:	02f4e4bb          	remw	s1,s1,a5
    80004b78:	fc0494e3          	bnez	s1,80004b40 <_ZN8Consumer3runEv+0x34>
    80004b7c:	fb9ff06f          	j	80004b34 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004b80:	02093783          	ld	a5,32(s2)
    80004b84:	0087b503          	ld	a0,8(a5)
    80004b88:	00001097          	auipc	ra,0x1
    80004b8c:	758080e7          	jalr	1880(ra) # 800062e0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004b90:	0ff57513          	andi	a0,a0,255
    80004b94:	ffffe097          	auipc	ra,0xffffe
    80004b98:	5c8080e7          	jalr	1480(ra) # 8000315c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004b9c:	02093783          	ld	a5,32(s2)
    80004ba0:	0087b503          	ld	a0,8(a5)
    80004ba4:	00001097          	auipc	ra,0x1
    80004ba8:	7c8080e7          	jalr	1992(ra) # 8000636c <_ZN9BufferCPP6getCntEv>
    80004bac:	fca04ae3          	bgtz	a0,80004b80 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004bb0:	02093783          	ld	a5,32(s2)
    80004bb4:	0107b503          	ld	a0,16(a5)
    80004bb8:	ffffe097          	auipc	ra,0xffffe
    80004bbc:	4b8080e7          	jalr	1208(ra) # 80003070 <_ZN9Semaphore6signalEv>
    }
    80004bc0:	02813083          	ld	ra,40(sp)
    80004bc4:	02013403          	ld	s0,32(sp)
    80004bc8:	01813483          	ld	s1,24(sp)
    80004bcc:	01013903          	ld	s2,16(sp)
    80004bd0:	00813983          	ld	s3,8(sp)
    80004bd4:	03010113          	addi	sp,sp,48
    80004bd8:	00008067          	ret

0000000080004bdc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004bdc:	ff010113          	addi	sp,sp,-16
    80004be0:	00113423          	sd	ra,8(sp)
    80004be4:	00813023          	sd	s0,0(sp)
    80004be8:	01010413          	addi	s0,sp,16
    80004bec:	00007797          	auipc	a5,0x7
    80004bf0:	e7478793          	addi	a5,a5,-396 # 8000ba60 <_ZTV8Consumer+0x10>
    80004bf4:	00f53023          	sd	a5,0(a0)
    80004bf8:	ffffe097          	auipc	ra,0xffffe
    80004bfc:	188080e7          	jalr	392(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004c00:	00813083          	ld	ra,8(sp)
    80004c04:	00013403          	ld	s0,0(sp)
    80004c08:	01010113          	addi	sp,sp,16
    80004c0c:	00008067          	ret

0000000080004c10 <_ZN8ConsumerD0Ev>:
    80004c10:	fe010113          	addi	sp,sp,-32
    80004c14:	00113c23          	sd	ra,24(sp)
    80004c18:	00813823          	sd	s0,16(sp)
    80004c1c:	00913423          	sd	s1,8(sp)
    80004c20:	02010413          	addi	s0,sp,32
    80004c24:	00050493          	mv	s1,a0
    80004c28:	00007797          	auipc	a5,0x7
    80004c2c:	e3878793          	addi	a5,a5,-456 # 8000ba60 <_ZTV8Consumer+0x10>
    80004c30:	00f53023          	sd	a5,0(a0)
    80004c34:	ffffe097          	auipc	ra,0xffffe
    80004c38:	14c080e7          	jalr	332(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004c3c:	00048513          	mv	a0,s1
    80004c40:	ffffe097          	auipc	ra,0xffffe
    80004c44:	238080e7          	jalr	568(ra) # 80002e78 <_ZdlPv>
    80004c48:	01813083          	ld	ra,24(sp)
    80004c4c:	01013403          	ld	s0,16(sp)
    80004c50:	00813483          	ld	s1,8(sp)
    80004c54:	02010113          	addi	sp,sp,32
    80004c58:	00008067          	ret

0000000080004c5c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004c5c:	ff010113          	addi	sp,sp,-16
    80004c60:	00113423          	sd	ra,8(sp)
    80004c64:	00813023          	sd	s0,0(sp)
    80004c68:	01010413          	addi	s0,sp,16
    80004c6c:	00007797          	auipc	a5,0x7
    80004c70:	da478793          	addi	a5,a5,-604 # 8000ba10 <_ZTV16ProducerKeyborad+0x10>
    80004c74:	00f53023          	sd	a5,0(a0)
    80004c78:	ffffe097          	auipc	ra,0xffffe
    80004c7c:	108080e7          	jalr	264(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004c80:	00813083          	ld	ra,8(sp)
    80004c84:	00013403          	ld	s0,0(sp)
    80004c88:	01010113          	addi	sp,sp,16
    80004c8c:	00008067          	ret

0000000080004c90 <_ZN16ProducerKeyboradD0Ev>:
    80004c90:	fe010113          	addi	sp,sp,-32
    80004c94:	00113c23          	sd	ra,24(sp)
    80004c98:	00813823          	sd	s0,16(sp)
    80004c9c:	00913423          	sd	s1,8(sp)
    80004ca0:	02010413          	addi	s0,sp,32
    80004ca4:	00050493          	mv	s1,a0
    80004ca8:	00007797          	auipc	a5,0x7
    80004cac:	d6878793          	addi	a5,a5,-664 # 8000ba10 <_ZTV16ProducerKeyborad+0x10>
    80004cb0:	00f53023          	sd	a5,0(a0)
    80004cb4:	ffffe097          	auipc	ra,0xffffe
    80004cb8:	0cc080e7          	jalr	204(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004cbc:	00048513          	mv	a0,s1
    80004cc0:	ffffe097          	auipc	ra,0xffffe
    80004cc4:	1b8080e7          	jalr	440(ra) # 80002e78 <_ZdlPv>
    80004cc8:	01813083          	ld	ra,24(sp)
    80004ccc:	01013403          	ld	s0,16(sp)
    80004cd0:	00813483          	ld	s1,8(sp)
    80004cd4:	02010113          	addi	sp,sp,32
    80004cd8:	00008067          	ret

0000000080004cdc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004cdc:	ff010113          	addi	sp,sp,-16
    80004ce0:	00113423          	sd	ra,8(sp)
    80004ce4:	00813023          	sd	s0,0(sp)
    80004ce8:	01010413          	addi	s0,sp,16
    80004cec:	00007797          	auipc	a5,0x7
    80004cf0:	d4c78793          	addi	a5,a5,-692 # 8000ba38 <_ZTV8Producer+0x10>
    80004cf4:	00f53023          	sd	a5,0(a0)
    80004cf8:	ffffe097          	auipc	ra,0xffffe
    80004cfc:	088080e7          	jalr	136(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004d00:	00813083          	ld	ra,8(sp)
    80004d04:	00013403          	ld	s0,0(sp)
    80004d08:	01010113          	addi	sp,sp,16
    80004d0c:	00008067          	ret

0000000080004d10 <_ZN8ProducerD0Ev>:
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00113c23          	sd	ra,24(sp)
    80004d18:	00813823          	sd	s0,16(sp)
    80004d1c:	00913423          	sd	s1,8(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	00050493          	mv	s1,a0
    80004d28:	00007797          	auipc	a5,0x7
    80004d2c:	d1078793          	addi	a5,a5,-752 # 8000ba38 <_ZTV8Producer+0x10>
    80004d30:	00f53023          	sd	a5,0(a0)
    80004d34:	ffffe097          	auipc	ra,0xffffe
    80004d38:	04c080e7          	jalr	76(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80004d3c:	00048513          	mv	a0,s1
    80004d40:	ffffe097          	auipc	ra,0xffffe
    80004d44:	138080e7          	jalr	312(ra) # 80002e78 <_ZdlPv>
    80004d48:	01813083          	ld	ra,24(sp)
    80004d4c:	01013403          	ld	s0,16(sp)
    80004d50:	00813483          	ld	s1,8(sp)
    80004d54:	02010113          	addi	sp,sp,32
    80004d58:	00008067          	ret

0000000080004d5c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00113c23          	sd	ra,24(sp)
    80004d64:	00813823          	sd	s0,16(sp)
    80004d68:	00913423          	sd	s1,8(sp)
    80004d6c:	02010413          	addi	s0,sp,32
    80004d70:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004d74:	ffffc097          	auipc	ra,0xffffc
    80004d78:	7d0080e7          	jalr	2000(ra) # 80001544 <getc>
    80004d7c:	0005059b          	sext.w	a1,a0
    80004d80:	01b00793          	li	a5,27
    80004d84:	00f58c63          	beq	a1,a5,80004d9c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004d88:	0204b783          	ld	a5,32(s1)
    80004d8c:	0087b503          	ld	a0,8(a5)
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	4c0080e7          	jalr	1216(ra) # 80006250 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004d98:	fddff06f          	j	80004d74 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004d9c:	00100793          	li	a5,1
    80004da0:	00007717          	auipc	a4,0x7
    80004da4:	0af72c23          	sw	a5,184(a4) # 8000be58 <_ZL9threadEnd>
        td->buffer->put('!');
    80004da8:	0204b783          	ld	a5,32(s1)
    80004dac:	02100593          	li	a1,33
    80004db0:	0087b503          	ld	a0,8(a5)
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	49c080e7          	jalr	1180(ra) # 80006250 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004dbc:	0204b783          	ld	a5,32(s1)
    80004dc0:	0107b503          	ld	a0,16(a5)
    80004dc4:	ffffe097          	auipc	ra,0xffffe
    80004dc8:	2ac080e7          	jalr	684(ra) # 80003070 <_ZN9Semaphore6signalEv>
    }
    80004dcc:	01813083          	ld	ra,24(sp)
    80004dd0:	01013403          	ld	s0,16(sp)
    80004dd4:	00813483          	ld	s1,8(sp)
    80004dd8:	02010113          	addi	sp,sp,32
    80004ddc:	00008067          	ret

0000000080004de0 <_ZN8Producer3runEv>:
    void run() override {
    80004de0:	fe010113          	addi	sp,sp,-32
    80004de4:	00113c23          	sd	ra,24(sp)
    80004de8:	00813823          	sd	s0,16(sp)
    80004dec:	00913423          	sd	s1,8(sp)
    80004df0:	01213023          	sd	s2,0(sp)
    80004df4:	02010413          	addi	s0,sp,32
    80004df8:	00050493          	mv	s1,a0
        int i = 0;
    80004dfc:	00000913          	li	s2,0
        while (!threadEnd) {
    80004e00:	00007797          	auipc	a5,0x7
    80004e04:	0587a783          	lw	a5,88(a5) # 8000be58 <_ZL9threadEnd>
    80004e08:	04079263          	bnez	a5,80004e4c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004e0c:	0204b783          	ld	a5,32(s1)
    80004e10:	0007a583          	lw	a1,0(a5)
    80004e14:	0305859b          	addiw	a1,a1,48
    80004e18:	0087b503          	ld	a0,8(a5)
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	434080e7          	jalr	1076(ra) # 80006250 <_ZN9BufferCPP3putEi>
            i++;
    80004e24:	0019071b          	addiw	a4,s2,1
    80004e28:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004e2c:	0204b783          	ld	a5,32(s1)
    80004e30:	0007a783          	lw	a5,0(a5)
    80004e34:	00e787bb          	addw	a5,a5,a4
    80004e38:	00500513          	li	a0,5
    80004e3c:	02a7e53b          	remw	a0,a5,a0
    80004e40:	ffffe097          	auipc	ra,0xffffe
    80004e44:	1a4080e7          	jalr	420(ra) # 80002fe4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004e48:	fb9ff06f          	j	80004e00 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004e4c:	0204b783          	ld	a5,32(s1)
    80004e50:	0107b503          	ld	a0,16(a5)
    80004e54:	ffffe097          	auipc	ra,0xffffe
    80004e58:	21c080e7          	jalr	540(ra) # 80003070 <_ZN9Semaphore6signalEv>
    }
    80004e5c:	01813083          	ld	ra,24(sp)
    80004e60:	01013403          	ld	s0,16(sp)
    80004e64:	00813483          	ld	s1,8(sp)
    80004e68:	00013903          	ld	s2,0(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <_Z8userMainv>:
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"
#endif

void userMain() {
    80004e74:	fe010113          	addi	sp,sp,-32
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00913423          	sd	s1,8(sp)
    80004e84:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004e88:	00004517          	auipc	a0,0x4
    80004e8c:	52050513          	addi	a0,a0,1312 # 800093a8 <CONSOLE_STATUS+0x398>
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	f9c080e7          	jalr	-100(ra) # 80005e2c <_Z11printStringPKc>
    int test = getc() - '0';
    80004e98:	ffffc097          	auipc	ra,0xffffc
    80004e9c:	6ac080e7          	jalr	1708(ra) # 80001544 <getc>
    80004ea0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004ea4:	ffffc097          	auipc	ra,0xffffc
    80004ea8:	6a0080e7          	jalr	1696(ra) # 80001544 <getc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004eac:	00700793          	li	a5,7
    80004eb0:	1097e263          	bltu	a5,s1,80004fb4 <_Z8userMainv+0x140>
    80004eb4:	00249493          	slli	s1,s1,0x2
    80004eb8:	00004717          	auipc	a4,0x4
    80004ebc:	74870713          	addi	a4,a4,1864 # 80009600 <CONSOLE_STATUS+0x5f0>
    80004ec0:	00e484b3          	add	s1,s1,a4
    80004ec4:	0004a783          	lw	a5,0(s1)
    80004ec8:	00e787b3          	add	a5,a5,a4
    80004ecc:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004ed0:	00000097          	auipc	ra,0x0
    80004ed4:	5d4080e7          	jalr	1492(ra) # 800054a4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	4f050513          	addi	a0,a0,1264 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	f4c080e7          	jalr	-180(ra) # 80005e2c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    80004ee8:	01813083          	ld	ra,24(sp)
    80004eec:	01013403          	ld	s0,16(sp)
    80004ef0:	00813483          	ld	s1,8(sp)
    80004ef4:	02010113          	addi	sp,sp,32
    80004ef8:	00008067          	ret
            Threads_CPP_API_test();
    80004efc:	fffff097          	auipc	ra,0xfffff
    80004f00:	334080e7          	jalr	820(ra) # 80004230 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004f04:	00004517          	auipc	a0,0x4
    80004f08:	50450513          	addi	a0,a0,1284 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	f20080e7          	jalr	-224(ra) # 80005e2c <_Z11printStringPKc>
            break;
    80004f14:	fd5ff06f          	j	80004ee8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80004f18:	fffff097          	auipc	ra,0xfffff
    80004f1c:	b6c080e7          	jalr	-1172(ra) # 80003a84 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	52850513          	addi	a0,a0,1320 # 80009448 <CONSOLE_STATUS+0x438>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	f04080e7          	jalr	-252(ra) # 80005e2c <_Z11printStringPKc>
            break;
    80004f30:	fb9ff06f          	j	80004ee8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	8b4080e7          	jalr	-1868(ra) # 800057e8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004f3c:	00004517          	auipc	a0,0x4
    80004f40:	55c50513          	addi	a0,a0,1372 # 80009498 <CONSOLE_STATUS+0x488>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	ee8080e7          	jalr	-280(ra) # 80005e2c <_Z11printStringPKc>
            break;
    80004f4c:	f9dff06f          	j	80004ee8 <_Z8userMainv+0x74>
            testSleeping();
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	648080e7          	jalr	1608(ra) # 80006598 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	59850513          	addi	a0,a0,1432 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80004f60:	00001097          	auipc	ra,0x1
    80004f64:	ecc080e7          	jalr	-308(ra) # 80005e2c <_Z11printStringPKc>
            break;
    80004f68:	f81ff06f          	j	80004ee8 <_Z8userMainv+0x74>
            testConsumerProducer();
    80004f6c:	fffff097          	auipc	ra,0xfffff
    80004f70:	784080e7          	jalr	1924(ra) # 800046f0 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80004f74:	00004517          	auipc	a0,0x4
    80004f78:	5ac50513          	addi	a0,a0,1452 # 80009520 <CONSOLE_STATUS+0x510>
    80004f7c:	00001097          	auipc	ra,0x1
    80004f80:	eb0080e7          	jalr	-336(ra) # 80005e2c <_Z11printStringPKc>
            break;
    80004f84:	f65ff06f          	j	80004ee8 <_Z8userMainv+0x74>
            System_Mode_test();
    80004f88:	00002097          	auipc	ra,0x2
    80004f8c:	b84080e7          	jalr	-1148(ra) # 80006b0c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004f90:	00004517          	auipc	a0,0x4
    80004f94:	5d050513          	addi	a0,a0,1488 # 80009560 <CONSOLE_STATUS+0x550>
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	e94080e7          	jalr	-364(ra) # 80005e2c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004fa0:	00004517          	auipc	a0,0x4
    80004fa4:	5e050513          	addi	a0,a0,1504 # 80009580 <CONSOLE_STATUS+0x570>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	e84080e7          	jalr	-380(ra) # 80005e2c <_Z11printStringPKc>
            break;
    80004fb0:	f39ff06f          	j	80004ee8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004fb4:	00004517          	auipc	a0,0x4
    80004fb8:	62450513          	addi	a0,a0,1572 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80004fbc:	00001097          	auipc	ra,0x1
    80004fc0:	e70080e7          	jalr	-400(ra) # 80005e2c <_Z11printStringPKc>
    80004fc4:	f25ff06f          	j	80004ee8 <_Z8userMainv+0x74>

0000000080004fc8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004fc8:	fe010113          	addi	sp,sp,-32
    80004fcc:	00113c23          	sd	ra,24(sp)
    80004fd0:	00813823          	sd	s0,16(sp)
    80004fd4:	00913423          	sd	s1,8(sp)
    80004fd8:	01213023          	sd	s2,0(sp)
    80004fdc:	02010413          	addi	s0,sp,32
    80004fe0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004fe4:	00100793          	li	a5,1
    80004fe8:	02a7f863          	bgeu	a5,a0,80005018 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004fec:	00a00793          	li	a5,10
    80004ff0:	02f577b3          	remu	a5,a0,a5
    80004ff4:	02078e63          	beqz	a5,80005030 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004ff8:	fff48513          	addi	a0,s1,-1
    80004ffc:	00000097          	auipc	ra,0x0
    80005000:	fcc080e7          	jalr	-52(ra) # 80004fc8 <_ZL9fibonaccim>
    80005004:	00050913          	mv	s2,a0
    80005008:	ffe48513          	addi	a0,s1,-2
    8000500c:	00000097          	auipc	ra,0x0
    80005010:	fbc080e7          	jalr	-68(ra) # 80004fc8 <_ZL9fibonaccim>
    80005014:	00a90533          	add	a0,s2,a0
}
    80005018:	01813083          	ld	ra,24(sp)
    8000501c:	01013403          	ld	s0,16(sp)
    80005020:	00813483          	ld	s1,8(sp)
    80005024:	00013903          	ld	s2,0(sp)
    80005028:	02010113          	addi	sp,sp,32
    8000502c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005030:	ffffc097          	auipc	ra,0xffffc
    80005034:	3e4080e7          	jalr	996(ra) # 80001414 <thread_dispatch>
    80005038:	fc1ff06f          	j	80004ff8 <_ZL9fibonaccim+0x30>

000000008000503c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000503c:	fe010113          	addi	sp,sp,-32
    80005040:	00113c23          	sd	ra,24(sp)
    80005044:	00813823          	sd	s0,16(sp)
    80005048:	00913423          	sd	s1,8(sp)
    8000504c:	01213023          	sd	s2,0(sp)
    80005050:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005054:	00a00493          	li	s1,10
    80005058:	0400006f          	j	80005098 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000505c:	00004517          	auipc	a0,0x4
    80005060:	27c50513          	addi	a0,a0,636 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80005064:	00001097          	auipc	ra,0x1
    80005068:	dc8080e7          	jalr	-568(ra) # 80005e2c <_Z11printStringPKc>
    8000506c:	00000613          	li	a2,0
    80005070:	00a00593          	li	a1,10
    80005074:	00048513          	mv	a0,s1
    80005078:	00001097          	auipc	ra,0x1
    8000507c:	f64080e7          	jalr	-156(ra) # 80005fdc <_Z8printIntiii>
    80005080:	00004517          	auipc	a0,0x4
    80005084:	46850513          	addi	a0,a0,1128 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	da4080e7          	jalr	-604(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005090:	0014849b          	addiw	s1,s1,1
    80005094:	0ff4f493          	andi	s1,s1,255
    80005098:	00c00793          	li	a5,12
    8000509c:	fc97f0e3          	bgeu	a5,s1,8000505c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800050a0:	00004517          	auipc	a0,0x4
    800050a4:	24050513          	addi	a0,a0,576 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	d84080e7          	jalr	-636(ra) # 80005e2c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800050b0:	00500313          	li	t1,5
    thread_dispatch();
    800050b4:	ffffc097          	auipc	ra,0xffffc
    800050b8:	360080e7          	jalr	864(ra) # 80001414 <thread_dispatch>

    uint64 result = fibonacci(16);
    800050bc:	01000513          	li	a0,16
    800050c0:	00000097          	auipc	ra,0x0
    800050c4:	f08080e7          	jalr	-248(ra) # 80004fc8 <_ZL9fibonaccim>
    800050c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800050cc:	00004517          	auipc	a0,0x4
    800050d0:	22450513          	addi	a0,a0,548 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	d58080e7          	jalr	-680(ra) # 80005e2c <_Z11printStringPKc>
    800050dc:	00000613          	li	a2,0
    800050e0:	00a00593          	li	a1,10
    800050e4:	0009051b          	sext.w	a0,s2
    800050e8:	00001097          	auipc	ra,0x1
    800050ec:	ef4080e7          	jalr	-268(ra) # 80005fdc <_Z8printIntiii>
    800050f0:	00004517          	auipc	a0,0x4
    800050f4:	3f850513          	addi	a0,a0,1016 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800050f8:	00001097          	auipc	ra,0x1
    800050fc:	d34080e7          	jalr	-716(ra) # 80005e2c <_Z11printStringPKc>
    80005100:	0400006f          	j	80005140 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005104:	00004517          	auipc	a0,0x4
    80005108:	1d450513          	addi	a0,a0,468 # 800092d8 <CONSOLE_STATUS+0x2c8>
    8000510c:	00001097          	auipc	ra,0x1
    80005110:	d20080e7          	jalr	-736(ra) # 80005e2c <_Z11printStringPKc>
    80005114:	00000613          	li	a2,0
    80005118:	00a00593          	li	a1,10
    8000511c:	00048513          	mv	a0,s1
    80005120:	00001097          	auipc	ra,0x1
    80005124:	ebc080e7          	jalr	-324(ra) # 80005fdc <_Z8printIntiii>
    80005128:	00004517          	auipc	a0,0x4
    8000512c:	3c050513          	addi	a0,a0,960 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005130:	00001097          	auipc	ra,0x1
    80005134:	cfc080e7          	jalr	-772(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005138:	0014849b          	addiw	s1,s1,1
    8000513c:	0ff4f493          	andi	s1,s1,255
    80005140:	00f00793          	li	a5,15
    80005144:	fc97f0e3          	bgeu	a5,s1,80005104 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005148:	00004517          	auipc	a0,0x4
    8000514c:	1b850513          	addi	a0,a0,440 # 80009300 <CONSOLE_STATUS+0x2f0>
    80005150:	00001097          	auipc	ra,0x1
    80005154:	cdc080e7          	jalr	-804(ra) # 80005e2c <_Z11printStringPKc>
    finishedD = true;
    80005158:	00100793          	li	a5,1
    8000515c:	00007717          	auipc	a4,0x7
    80005160:	d0f70623          	sb	a5,-756(a4) # 8000be68 <_ZL9finishedD>
    thread_dispatch();
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	2b0080e7          	jalr	688(ra) # 80001414 <thread_dispatch>
}
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	00813483          	ld	s1,8(sp)
    80005178:	00013903          	ld	s2,0(sp)
    8000517c:	02010113          	addi	sp,sp,32
    80005180:	00008067          	ret

0000000080005184 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005184:	fe010113          	addi	sp,sp,-32
    80005188:	00113c23          	sd	ra,24(sp)
    8000518c:	00813823          	sd	s0,16(sp)
    80005190:	00913423          	sd	s1,8(sp)
    80005194:	01213023          	sd	s2,0(sp)
    80005198:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000519c:	00000493          	li	s1,0
    800051a0:	0400006f          	j	800051e0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800051a4:	00004517          	auipc	a0,0x4
    800051a8:	10450513          	addi	a0,a0,260 # 800092a8 <CONSOLE_STATUS+0x298>
    800051ac:	00001097          	auipc	ra,0x1
    800051b0:	c80080e7          	jalr	-896(ra) # 80005e2c <_Z11printStringPKc>
    800051b4:	00000613          	li	a2,0
    800051b8:	00a00593          	li	a1,10
    800051bc:	00048513          	mv	a0,s1
    800051c0:	00001097          	auipc	ra,0x1
    800051c4:	e1c080e7          	jalr	-484(ra) # 80005fdc <_Z8printIntiii>
    800051c8:	00004517          	auipc	a0,0x4
    800051cc:	32050513          	addi	a0,a0,800 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800051d0:	00001097          	auipc	ra,0x1
    800051d4:	c5c080e7          	jalr	-932(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800051d8:	0014849b          	addiw	s1,s1,1
    800051dc:	0ff4f493          	andi	s1,s1,255
    800051e0:	00200793          	li	a5,2
    800051e4:	fc97f0e3          	bgeu	a5,s1,800051a4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800051e8:	00004517          	auipc	a0,0x4
    800051ec:	0c850513          	addi	a0,a0,200 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800051f0:	00001097          	auipc	ra,0x1
    800051f4:	c3c080e7          	jalr	-964(ra) # 80005e2c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800051f8:	00700313          	li	t1,7
    thread_dispatch();
    800051fc:	ffffc097          	auipc	ra,0xffffc
    80005200:	218080e7          	jalr	536(ra) # 80001414 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005204:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005208:	00004517          	auipc	a0,0x4
    8000520c:	0b850513          	addi	a0,a0,184 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005210:	00001097          	auipc	ra,0x1
    80005214:	c1c080e7          	jalr	-996(ra) # 80005e2c <_Z11printStringPKc>
    80005218:	00000613          	li	a2,0
    8000521c:	00a00593          	li	a1,10
    80005220:	0009051b          	sext.w	a0,s2
    80005224:	00001097          	auipc	ra,0x1
    80005228:	db8080e7          	jalr	-584(ra) # 80005fdc <_Z8printIntiii>
    8000522c:	00004517          	auipc	a0,0x4
    80005230:	2bc50513          	addi	a0,a0,700 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005234:	00001097          	auipc	ra,0x1
    80005238:	bf8080e7          	jalr	-1032(ra) # 80005e2c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000523c:	00c00513          	li	a0,12
    80005240:	00000097          	auipc	ra,0x0
    80005244:	d88080e7          	jalr	-632(ra) # 80004fc8 <_ZL9fibonaccim>
    80005248:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000524c:	00004517          	auipc	a0,0x4
    80005250:	07c50513          	addi	a0,a0,124 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80005254:	00001097          	auipc	ra,0x1
    80005258:	bd8080e7          	jalr	-1064(ra) # 80005e2c <_Z11printStringPKc>
    8000525c:	00000613          	li	a2,0
    80005260:	00a00593          	li	a1,10
    80005264:	0009051b          	sext.w	a0,s2
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	d74080e7          	jalr	-652(ra) # 80005fdc <_Z8printIntiii>
    80005270:	00004517          	auipc	a0,0x4
    80005274:	27850513          	addi	a0,a0,632 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005278:	00001097          	auipc	ra,0x1
    8000527c:	bb4080e7          	jalr	-1100(ra) # 80005e2c <_Z11printStringPKc>
    80005280:	0400006f          	j	800052c0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005284:	00004517          	auipc	a0,0x4
    80005288:	02450513          	addi	a0,a0,36 # 800092a8 <CONSOLE_STATUS+0x298>
    8000528c:	00001097          	auipc	ra,0x1
    80005290:	ba0080e7          	jalr	-1120(ra) # 80005e2c <_Z11printStringPKc>
    80005294:	00000613          	li	a2,0
    80005298:	00a00593          	li	a1,10
    8000529c:	00048513          	mv	a0,s1
    800052a0:	00001097          	auipc	ra,0x1
    800052a4:	d3c080e7          	jalr	-708(ra) # 80005fdc <_Z8printIntiii>
    800052a8:	00004517          	auipc	a0,0x4
    800052ac:	24050513          	addi	a0,a0,576 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800052b0:	00001097          	auipc	ra,0x1
    800052b4:	b7c080e7          	jalr	-1156(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800052b8:	0014849b          	addiw	s1,s1,1
    800052bc:	0ff4f493          	andi	s1,s1,255
    800052c0:	00500793          	li	a5,5
    800052c4:	fc97f0e3          	bgeu	a5,s1,80005284 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800052c8:	00004517          	auipc	a0,0x4
    800052cc:	fb850513          	addi	a0,a0,-72 # 80009280 <CONSOLE_STATUS+0x270>
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	b5c080e7          	jalr	-1188(ra) # 80005e2c <_Z11printStringPKc>
    finishedC = true;
    800052d8:	00100793          	li	a5,1
    800052dc:	00007717          	auipc	a4,0x7
    800052e0:	b8f706a3          	sb	a5,-1139(a4) # 8000be69 <_ZL9finishedC>
    thread_dispatch();
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	130080e7          	jalr	304(ra) # 80001414 <thread_dispatch>
}
    800052ec:	01813083          	ld	ra,24(sp)
    800052f0:	01013403          	ld	s0,16(sp)
    800052f4:	00813483          	ld	s1,8(sp)
    800052f8:	00013903          	ld	s2,0(sp)
    800052fc:	02010113          	addi	sp,sp,32
    80005300:	00008067          	ret

0000000080005304 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005304:	fe010113          	addi	sp,sp,-32
    80005308:	00113c23          	sd	ra,24(sp)
    8000530c:	00813823          	sd	s0,16(sp)
    80005310:	00913423          	sd	s1,8(sp)
    80005314:	01213023          	sd	s2,0(sp)
    80005318:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000531c:	00000913          	li	s2,0
    80005320:	0380006f          	j	80005358 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005324:	ffffc097          	auipc	ra,0xffffc
    80005328:	0f0080e7          	jalr	240(ra) # 80001414 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    8000532c:	00148493          	addi	s1,s1,1
    80005330:	000027b7          	lui	a5,0x2
    80005334:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005338:	0097ee63          	bltu	a5,s1,80005354 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000533c:	00000713          	li	a4,0
    80005340:	000077b7          	lui	a5,0x7
    80005344:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005348:	fce7eee3          	bltu	a5,a4,80005324 <_ZL11workerBodyBPv+0x20>
    8000534c:	00170713          	addi	a4,a4,1
    80005350:	ff1ff06f          	j	80005340 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005354:	00190913          	addi	s2,s2,1
    80005358:	00f00793          	li	a5,15
    8000535c:	0527e063          	bltu	a5,s2,8000539c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005360:	00004517          	auipc	a0,0x4
    80005364:	f3050513          	addi	a0,a0,-208 # 80009290 <CONSOLE_STATUS+0x280>
    80005368:	00001097          	auipc	ra,0x1
    8000536c:	ac4080e7          	jalr	-1340(ra) # 80005e2c <_Z11printStringPKc>
    80005370:	00000613          	li	a2,0
    80005374:	00a00593          	li	a1,10
    80005378:	0009051b          	sext.w	a0,s2
    8000537c:	00001097          	auipc	ra,0x1
    80005380:	c60080e7          	jalr	-928(ra) # 80005fdc <_Z8printIntiii>
    80005384:	00004517          	auipc	a0,0x4
    80005388:	16450513          	addi	a0,a0,356 # 800094e8 <CONSOLE_STATUS+0x4d8>
    8000538c:	00001097          	auipc	ra,0x1
    80005390:	aa0080e7          	jalr	-1376(ra) # 80005e2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005394:	00000493          	li	s1,0
    80005398:	f99ff06f          	j	80005330 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000539c:	00004517          	auipc	a0,0x4
    800053a0:	efc50513          	addi	a0,a0,-260 # 80009298 <CONSOLE_STATUS+0x288>
    800053a4:	00001097          	auipc	ra,0x1
    800053a8:	a88080e7          	jalr	-1400(ra) # 80005e2c <_Z11printStringPKc>
    finishedB = true;
    800053ac:	00100793          	li	a5,1
    800053b0:	00007717          	auipc	a4,0x7
    800053b4:	aaf70d23          	sb	a5,-1350(a4) # 8000be6a <_ZL9finishedB>
    thread_dispatch();
    800053b8:	ffffc097          	auipc	ra,0xffffc
    800053bc:	05c080e7          	jalr	92(ra) # 80001414 <thread_dispatch>
}
    800053c0:	01813083          	ld	ra,24(sp)
    800053c4:	01013403          	ld	s0,16(sp)
    800053c8:	00813483          	ld	s1,8(sp)
    800053cc:	00013903          	ld	s2,0(sp)
    800053d0:	02010113          	addi	sp,sp,32
    800053d4:	00008067          	ret

00000000800053d8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800053d8:	fe010113          	addi	sp,sp,-32
    800053dc:	00113c23          	sd	ra,24(sp)
    800053e0:	00813823          	sd	s0,16(sp)
    800053e4:	00913423          	sd	s1,8(sp)
    800053e8:	01213023          	sd	s2,0(sp)
    800053ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800053f0:	00000913          	li	s2,0
    800053f4:	0380006f          	j	8000542c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	01c080e7          	jalr	28(ra) # 80001414 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005400:	00148493          	addi	s1,s1,1
    80005404:	000027b7          	lui	a5,0x2
    80005408:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000540c:	0097ee63          	bltu	a5,s1,80005428 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005410:	00000713          	li	a4,0
    80005414:	000077b7          	lui	a5,0x7
    80005418:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000541c:	fce7eee3          	bltu	a5,a4,800053f8 <_ZL11workerBodyAPv+0x20>
    80005420:	00170713          	addi	a4,a4,1
    80005424:	ff1ff06f          	j	80005414 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005428:	00190913          	addi	s2,s2,1
    8000542c:	00900793          	li	a5,9
    80005430:	0527e063          	bltu	a5,s2,80005470 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005434:	00004517          	auipc	a0,0x4
    80005438:	e4450513          	addi	a0,a0,-444 # 80009278 <CONSOLE_STATUS+0x268>
    8000543c:	00001097          	auipc	ra,0x1
    80005440:	9f0080e7          	jalr	-1552(ra) # 80005e2c <_Z11printStringPKc>
    80005444:	00000613          	li	a2,0
    80005448:	00a00593          	li	a1,10
    8000544c:	0009051b          	sext.w	a0,s2
    80005450:	00001097          	auipc	ra,0x1
    80005454:	b8c080e7          	jalr	-1140(ra) # 80005fdc <_Z8printIntiii>
    80005458:	00004517          	auipc	a0,0x4
    8000545c:	09050513          	addi	a0,a0,144 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005460:	00001097          	auipc	ra,0x1
    80005464:	9cc080e7          	jalr	-1588(ra) # 80005e2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005468:	00000493          	li	s1,0
    8000546c:	f99ff06f          	j	80005404 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005470:	00004517          	auipc	a0,0x4
    80005474:	e1050513          	addi	a0,a0,-496 # 80009280 <CONSOLE_STATUS+0x270>
    80005478:	00001097          	auipc	ra,0x1
    8000547c:	9b4080e7          	jalr	-1612(ra) # 80005e2c <_Z11printStringPKc>
    finishedA = true;
    80005480:	00100793          	li	a5,1
    80005484:	00007717          	auipc	a4,0x7
    80005488:	9ef703a3          	sb	a5,-1561(a4) # 8000be6b <_ZL9finishedA>
}
    8000548c:	01813083          	ld	ra,24(sp)
    80005490:	01013403          	ld	s0,16(sp)
    80005494:	00813483          	ld	s1,8(sp)
    80005498:	00013903          	ld	s2,0(sp)
    8000549c:	02010113          	addi	sp,sp,32
    800054a0:	00008067          	ret

00000000800054a4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800054a4:	fd010113          	addi	sp,sp,-48
    800054a8:	02113423          	sd	ra,40(sp)
    800054ac:	02813023          	sd	s0,32(sp)
    800054b0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800054b4:	00000613          	li	a2,0
    800054b8:	00000597          	auipc	a1,0x0
    800054bc:	f2058593          	addi	a1,a1,-224 # 800053d8 <_ZL11workerBodyAPv>
    800054c0:	fd040513          	addi	a0,s0,-48
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	e84080e7          	jalr	-380(ra) # 80001348 <thread_create>
    printString("ThreadA created\n");
    800054cc:	00004517          	auipc	a0,0x4
    800054d0:	e4450513          	addi	a0,a0,-444 # 80009310 <CONSOLE_STATUS+0x300>
    800054d4:	00001097          	auipc	ra,0x1
    800054d8:	958080e7          	jalr	-1704(ra) # 80005e2c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800054dc:	00000613          	li	a2,0
    800054e0:	00000597          	auipc	a1,0x0
    800054e4:	e2458593          	addi	a1,a1,-476 # 80005304 <_ZL11workerBodyBPv>
    800054e8:	fd840513          	addi	a0,s0,-40
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	e5c080e7          	jalr	-420(ra) # 80001348 <thread_create>
    printString("ThreadB created\n");
    800054f4:	00004517          	auipc	a0,0x4
    800054f8:	e3450513          	addi	a0,a0,-460 # 80009328 <CONSOLE_STATUS+0x318>
    800054fc:	00001097          	auipc	ra,0x1
    80005500:	930080e7          	jalr	-1744(ra) # 80005e2c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005504:	00000613          	li	a2,0
    80005508:	00000597          	auipc	a1,0x0
    8000550c:	c7c58593          	addi	a1,a1,-900 # 80005184 <_ZL11workerBodyCPv>
    80005510:	fe040513          	addi	a0,s0,-32
    80005514:	ffffc097          	auipc	ra,0xffffc
    80005518:	e34080e7          	jalr	-460(ra) # 80001348 <thread_create>
    printString("ThreadC created\n");
    8000551c:	00004517          	auipc	a0,0x4
    80005520:	e2450513          	addi	a0,a0,-476 # 80009340 <CONSOLE_STATUS+0x330>
    80005524:	00001097          	auipc	ra,0x1
    80005528:	908080e7          	jalr	-1784(ra) # 80005e2c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000552c:	00000613          	li	a2,0
    80005530:	00000597          	auipc	a1,0x0
    80005534:	b0c58593          	addi	a1,a1,-1268 # 8000503c <_ZL11workerBodyDPv>
    80005538:	fe840513          	addi	a0,s0,-24
    8000553c:	ffffc097          	auipc	ra,0xffffc
    80005540:	e0c080e7          	jalr	-500(ra) # 80001348 <thread_create>
    printString("ThreadD created\n");
    80005544:	00004517          	auipc	a0,0x4
    80005548:	e1450513          	addi	a0,a0,-492 # 80009358 <CONSOLE_STATUS+0x348>
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	8e0080e7          	jalr	-1824(ra) # 80005e2c <_Z11printStringPKc>
    80005554:	00c0006f          	j	80005560 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	ebc080e7          	jalr	-324(ra) # 80001414 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005560:	00007797          	auipc	a5,0x7
    80005564:	90b7c783          	lbu	a5,-1781(a5) # 8000be6b <_ZL9finishedA>
    80005568:	fe0788e3          	beqz	a5,80005558 <_Z18Threads_C_API_testv+0xb4>
    8000556c:	00007797          	auipc	a5,0x7
    80005570:	8fe7c783          	lbu	a5,-1794(a5) # 8000be6a <_ZL9finishedB>
    80005574:	fe0782e3          	beqz	a5,80005558 <_Z18Threads_C_API_testv+0xb4>
    80005578:	00007797          	auipc	a5,0x7
    8000557c:	8f17c783          	lbu	a5,-1807(a5) # 8000be69 <_ZL9finishedC>
    80005580:	fc078ce3          	beqz	a5,80005558 <_Z18Threads_C_API_testv+0xb4>
    80005584:	00007797          	auipc	a5,0x7
    80005588:	8e47c783          	lbu	a5,-1820(a5) # 8000be68 <_ZL9finishedD>
    8000558c:	fc0786e3          	beqz	a5,80005558 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005590:	02813083          	ld	ra,40(sp)
    80005594:	02013403          	ld	s0,32(sp)
    80005598:	03010113          	addi	sp,sp,48
    8000559c:	00008067          	ret

00000000800055a0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800055a0:	fd010113          	addi	sp,sp,-48
    800055a4:	02113423          	sd	ra,40(sp)
    800055a8:	02813023          	sd	s0,32(sp)
    800055ac:	00913c23          	sd	s1,24(sp)
    800055b0:	01213823          	sd	s2,16(sp)
    800055b4:	01313423          	sd	s3,8(sp)
    800055b8:	03010413          	addi	s0,sp,48
    800055bc:	00050993          	mv	s3,a0
    800055c0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800055c4:	00000913          	li	s2,0
    800055c8:	00c0006f          	j	800055d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800055cc:	ffffe097          	auipc	ra,0xffffe
    800055d0:	9f0080e7          	jalr	-1552(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800055d4:	ffffc097          	auipc	ra,0xffffc
    800055d8:	f70080e7          	jalr	-144(ra) # 80001544 <getc>
    800055dc:	0005059b          	sext.w	a1,a0
    800055e0:	01b00793          	li	a5,27
    800055e4:	02f58a63          	beq	a1,a5,80005618 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800055e8:	0084b503          	ld	a0,8(s1)
    800055ec:	00001097          	auipc	ra,0x1
    800055f0:	c64080e7          	jalr	-924(ra) # 80006250 <_ZN9BufferCPP3putEi>
        i++;
    800055f4:	0019071b          	addiw	a4,s2,1
    800055f8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800055fc:	0004a683          	lw	a3,0(s1)
    80005600:	0026979b          	slliw	a5,a3,0x2
    80005604:	00d787bb          	addw	a5,a5,a3
    80005608:	0017979b          	slliw	a5,a5,0x1
    8000560c:	02f767bb          	remw	a5,a4,a5
    80005610:	fc0792e3          	bnez	a5,800055d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005614:	fb9ff06f          	j	800055cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005618:	00100793          	li	a5,1
    8000561c:	00007717          	auipc	a4,0x7
    80005620:	84f72a23          	sw	a5,-1964(a4) # 8000be70 <_ZL9threadEnd>
    td->buffer->put('!');
    80005624:	0209b783          	ld	a5,32(s3)
    80005628:	02100593          	li	a1,33
    8000562c:	0087b503          	ld	a0,8(a5)
    80005630:	00001097          	auipc	ra,0x1
    80005634:	c20080e7          	jalr	-992(ra) # 80006250 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005638:	0104b503          	ld	a0,16(s1)
    8000563c:	ffffe097          	auipc	ra,0xffffe
    80005640:	a34080e7          	jalr	-1484(ra) # 80003070 <_ZN9Semaphore6signalEv>
}
    80005644:	02813083          	ld	ra,40(sp)
    80005648:	02013403          	ld	s0,32(sp)
    8000564c:	01813483          	ld	s1,24(sp)
    80005650:	01013903          	ld	s2,16(sp)
    80005654:	00813983          	ld	s3,8(sp)
    80005658:	03010113          	addi	sp,sp,48
    8000565c:	00008067          	ret

0000000080005660 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005660:	fe010113          	addi	sp,sp,-32
    80005664:	00113c23          	sd	ra,24(sp)
    80005668:	00813823          	sd	s0,16(sp)
    8000566c:	00913423          	sd	s1,8(sp)
    80005670:	01213023          	sd	s2,0(sp)
    80005674:	02010413          	addi	s0,sp,32
    80005678:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000567c:	00000913          	li	s2,0
    80005680:	00c0006f          	j	8000568c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005684:	ffffe097          	auipc	ra,0xffffe
    80005688:	938080e7          	jalr	-1736(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000568c:	00006797          	auipc	a5,0x6
    80005690:	7e47a783          	lw	a5,2020(a5) # 8000be70 <_ZL9threadEnd>
    80005694:	02079e63          	bnez	a5,800056d0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005698:	0004a583          	lw	a1,0(s1)
    8000569c:	0305859b          	addiw	a1,a1,48
    800056a0:	0084b503          	ld	a0,8(s1)
    800056a4:	00001097          	auipc	ra,0x1
    800056a8:	bac080e7          	jalr	-1108(ra) # 80006250 <_ZN9BufferCPP3putEi>
        i++;
    800056ac:	0019071b          	addiw	a4,s2,1
    800056b0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800056b4:	0004a683          	lw	a3,0(s1)
    800056b8:	0026979b          	slliw	a5,a3,0x2
    800056bc:	00d787bb          	addw	a5,a5,a3
    800056c0:	0017979b          	slliw	a5,a5,0x1
    800056c4:	02f767bb          	remw	a5,a4,a5
    800056c8:	fc0792e3          	bnez	a5,8000568c <_ZN12ProducerSync8producerEPv+0x2c>
    800056cc:	fb9ff06f          	j	80005684 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800056d0:	0104b503          	ld	a0,16(s1)
    800056d4:	ffffe097          	auipc	ra,0xffffe
    800056d8:	99c080e7          	jalr	-1636(ra) # 80003070 <_ZN9Semaphore6signalEv>
}
    800056dc:	01813083          	ld	ra,24(sp)
    800056e0:	01013403          	ld	s0,16(sp)
    800056e4:	00813483          	ld	s1,8(sp)
    800056e8:	00013903          	ld	s2,0(sp)
    800056ec:	02010113          	addi	sp,sp,32
    800056f0:	00008067          	ret

00000000800056f4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800056f4:	fd010113          	addi	sp,sp,-48
    800056f8:	02113423          	sd	ra,40(sp)
    800056fc:	02813023          	sd	s0,32(sp)
    80005700:	00913c23          	sd	s1,24(sp)
    80005704:	01213823          	sd	s2,16(sp)
    80005708:	01313423          	sd	s3,8(sp)
    8000570c:	01413023          	sd	s4,0(sp)
    80005710:	03010413          	addi	s0,sp,48
    80005714:	00050993          	mv	s3,a0
    80005718:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000571c:	00000a13          	li	s4,0
    80005720:	01c0006f          	j	8000573c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005724:	ffffe097          	auipc	ra,0xffffe
    80005728:	898080e7          	jalr	-1896(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    8000572c:	0500006f          	j	8000577c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005730:	00a00513          	li	a0,10
    80005734:	ffffc097          	auipc	ra,0xffffc
    80005738:	e34080e7          	jalr	-460(ra) # 80001568 <putc>
    while (!threadEnd) {
    8000573c:	00006797          	auipc	a5,0x6
    80005740:	7347a783          	lw	a5,1844(a5) # 8000be70 <_ZL9threadEnd>
    80005744:	06079263          	bnez	a5,800057a8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005748:	00893503          	ld	a0,8(s2)
    8000574c:	00001097          	auipc	ra,0x1
    80005750:	b94080e7          	jalr	-1132(ra) # 800062e0 <_ZN9BufferCPP3getEv>
        i++;
    80005754:	001a049b          	addiw	s1,s4,1
    80005758:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000575c:	0ff57513          	andi	a0,a0,255
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	e08080e7          	jalr	-504(ra) # 80001568 <putc>
        if (i % (5 * data->id) == 0) {
    80005768:	00092703          	lw	a4,0(s2)
    8000576c:	0027179b          	slliw	a5,a4,0x2
    80005770:	00e787bb          	addw	a5,a5,a4
    80005774:	02f4e7bb          	remw	a5,s1,a5
    80005778:	fa0786e3          	beqz	a5,80005724 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000577c:	05000793          	li	a5,80
    80005780:	02f4e4bb          	remw	s1,s1,a5
    80005784:	fa049ce3          	bnez	s1,8000573c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005788:	fa9ff06f          	j	80005730 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000578c:	0209b783          	ld	a5,32(s3)
    80005790:	0087b503          	ld	a0,8(a5)
    80005794:	00001097          	auipc	ra,0x1
    80005798:	b4c080e7          	jalr	-1204(ra) # 800062e0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000579c:	0ff57513          	andi	a0,a0,255
    800057a0:	ffffe097          	auipc	ra,0xffffe
    800057a4:	9bc080e7          	jalr	-1604(ra) # 8000315c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800057a8:	0209b783          	ld	a5,32(s3)
    800057ac:	0087b503          	ld	a0,8(a5)
    800057b0:	00001097          	auipc	ra,0x1
    800057b4:	bbc080e7          	jalr	-1092(ra) # 8000636c <_ZN9BufferCPP6getCntEv>
    800057b8:	fca04ae3          	bgtz	a0,8000578c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800057bc:	01093503          	ld	a0,16(s2)
    800057c0:	ffffe097          	auipc	ra,0xffffe
    800057c4:	8b0080e7          	jalr	-1872(ra) # 80003070 <_ZN9Semaphore6signalEv>
}
    800057c8:	02813083          	ld	ra,40(sp)
    800057cc:	02013403          	ld	s0,32(sp)
    800057d0:	01813483          	ld	s1,24(sp)
    800057d4:	01013903          	ld	s2,16(sp)
    800057d8:	00813983          	ld	s3,8(sp)
    800057dc:	00013a03          	ld	s4,0(sp)
    800057e0:	03010113          	addi	sp,sp,48
    800057e4:	00008067          	ret

00000000800057e8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800057e8:	f8010113          	addi	sp,sp,-128
    800057ec:	06113c23          	sd	ra,120(sp)
    800057f0:	06813823          	sd	s0,112(sp)
    800057f4:	06913423          	sd	s1,104(sp)
    800057f8:	07213023          	sd	s2,96(sp)
    800057fc:	05313c23          	sd	s3,88(sp)
    80005800:	05413823          	sd	s4,80(sp)
    80005804:	05513423          	sd	s5,72(sp)
    80005808:	05613023          	sd	s6,64(sp)
    8000580c:	03713c23          	sd	s7,56(sp)
    80005810:	03813823          	sd	s8,48(sp)
    80005814:	03913423          	sd	s9,40(sp)
    80005818:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000581c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005820:	00004517          	auipc	a0,0x4
    80005824:	97050513          	addi	a0,a0,-1680 # 80009190 <CONSOLE_STATUS+0x180>
    80005828:	00000097          	auipc	ra,0x0
    8000582c:	604080e7          	jalr	1540(ra) # 80005e2c <_Z11printStringPKc>
    getString(input, 30);
    80005830:	01e00593          	li	a1,30
    80005834:	f8040493          	addi	s1,s0,-128
    80005838:	00048513          	mv	a0,s1
    8000583c:	00000097          	auipc	ra,0x0
    80005840:	678080e7          	jalr	1656(ra) # 80005eb4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005844:	00048513          	mv	a0,s1
    80005848:	00000097          	auipc	ra,0x0
    8000584c:	744080e7          	jalr	1860(ra) # 80005f8c <_Z11stringToIntPKc>
    80005850:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005854:	00004517          	auipc	a0,0x4
    80005858:	95c50513          	addi	a0,a0,-1700 # 800091b0 <CONSOLE_STATUS+0x1a0>
    8000585c:	00000097          	auipc	ra,0x0
    80005860:	5d0080e7          	jalr	1488(ra) # 80005e2c <_Z11printStringPKc>
    getString(input, 30);
    80005864:	01e00593          	li	a1,30
    80005868:	00048513          	mv	a0,s1
    8000586c:	00000097          	auipc	ra,0x0
    80005870:	648080e7          	jalr	1608(ra) # 80005eb4 <_Z9getStringPci>
    n = stringToInt(input);
    80005874:	00048513          	mv	a0,s1
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	714080e7          	jalr	1812(ra) # 80005f8c <_Z11stringToIntPKc>
    80005880:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005884:	00004517          	auipc	a0,0x4
    80005888:	94c50513          	addi	a0,a0,-1716 # 800091d0 <CONSOLE_STATUS+0x1c0>
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	5a0080e7          	jalr	1440(ra) # 80005e2c <_Z11printStringPKc>
    80005894:	00000613          	li	a2,0
    80005898:	00a00593          	li	a1,10
    8000589c:	00090513          	mv	a0,s2
    800058a0:	00000097          	auipc	ra,0x0
    800058a4:	73c080e7          	jalr	1852(ra) # 80005fdc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800058a8:	00004517          	auipc	a0,0x4
    800058ac:	94050513          	addi	a0,a0,-1728 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800058b0:	00000097          	auipc	ra,0x0
    800058b4:	57c080e7          	jalr	1404(ra) # 80005e2c <_Z11printStringPKc>
    800058b8:	00000613          	li	a2,0
    800058bc:	00a00593          	li	a1,10
    800058c0:	00048513          	mv	a0,s1
    800058c4:	00000097          	auipc	ra,0x0
    800058c8:	718080e7          	jalr	1816(ra) # 80005fdc <_Z8printIntiii>
    printString(".\n");
    800058cc:	00004517          	auipc	a0,0x4
    800058d0:	93450513          	addi	a0,a0,-1740 # 80009200 <CONSOLE_STATUS+0x1f0>
    800058d4:	00000097          	auipc	ra,0x0
    800058d8:	558080e7          	jalr	1368(ra) # 80005e2c <_Z11printStringPKc>
    if(threadNum > n) {
    800058dc:	0324c463          	blt	s1,s2,80005904 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800058e0:	03205c63          	blez	s2,80005918 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800058e4:	03800513          	li	a0,56
    800058e8:	ffffd097          	auipc	ra,0xffffd
    800058ec:	568080e7          	jalr	1384(ra) # 80002e50 <_Znwm>
    800058f0:	00050a93          	mv	s5,a0
    800058f4:	00048593          	mv	a1,s1
    800058f8:	00001097          	auipc	ra,0x1
    800058fc:	804080e7          	jalr	-2044(ra) # 800060fc <_ZN9BufferCPPC1Ei>
    80005900:	0300006f          	j	80005930 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005904:	00004517          	auipc	a0,0x4
    80005908:	90450513          	addi	a0,a0,-1788 # 80009208 <CONSOLE_STATUS+0x1f8>
    8000590c:	00000097          	auipc	ra,0x0
    80005910:	520080e7          	jalr	1312(ra) # 80005e2c <_Z11printStringPKc>
        return;
    80005914:	0140006f          	j	80005928 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005918:	00004517          	auipc	a0,0x4
    8000591c:	93050513          	addi	a0,a0,-1744 # 80009248 <CONSOLE_STATUS+0x238>
    80005920:	00000097          	auipc	ra,0x0
    80005924:	50c080e7          	jalr	1292(ra) # 80005e2c <_Z11printStringPKc>
        return;
    80005928:	000b8113          	mv	sp,s7
    8000592c:	2380006f          	j	80005b64 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005930:	01000513          	li	a0,16
    80005934:	ffffd097          	auipc	ra,0xffffd
    80005938:	51c080e7          	jalr	1308(ra) # 80002e50 <_Znwm>
    8000593c:	00050493          	mv	s1,a0
    80005940:	00000593          	li	a1,0
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	6c8080e7          	jalr	1736(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    8000594c:	00006797          	auipc	a5,0x6
    80005950:	5297b623          	sd	s1,1324(a5) # 8000be78 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005954:	00391793          	slli	a5,s2,0x3
    80005958:	00f78793          	addi	a5,a5,15
    8000595c:	ff07f793          	andi	a5,a5,-16
    80005960:	40f10133          	sub	sp,sp,a5
    80005964:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005968:	0019071b          	addiw	a4,s2,1
    8000596c:	00171793          	slli	a5,a4,0x1
    80005970:	00e787b3          	add	a5,a5,a4
    80005974:	00379793          	slli	a5,a5,0x3
    80005978:	00f78793          	addi	a5,a5,15
    8000597c:	ff07f793          	andi	a5,a5,-16
    80005980:	40f10133          	sub	sp,sp,a5
    80005984:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005988:	00191c13          	slli	s8,s2,0x1
    8000598c:	012c07b3          	add	a5,s8,s2
    80005990:	00379793          	slli	a5,a5,0x3
    80005994:	00fa07b3          	add	a5,s4,a5
    80005998:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000599c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800059a0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800059a4:	02800513          	li	a0,40
    800059a8:	ffffd097          	auipc	ra,0xffffd
    800059ac:	4a8080e7          	jalr	1192(ra) # 80002e50 <_Znwm>
    800059b0:	00050b13          	mv	s6,a0
    800059b4:	012c0c33          	add	s8,s8,s2
    800059b8:	003c1c13          	slli	s8,s8,0x3
    800059bc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800059c0:	ffffd097          	auipc	ra,0xffffd
    800059c4:	578080e7          	jalr	1400(ra) # 80002f38 <_ZN6ThreadC1Ev>
    800059c8:	00006797          	auipc	a5,0x6
    800059cc:	11078793          	addi	a5,a5,272 # 8000bad8 <_ZTV12ConsumerSync+0x10>
    800059d0:	00fb3023          	sd	a5,0(s6)
    800059d4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800059d8:	000b0513          	mv	a0,s6
    800059dc:	ffffd097          	auipc	ra,0xffffd
    800059e0:	58c080e7          	jalr	1420(ra) # 80002f68 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800059e4:	00000493          	li	s1,0
    800059e8:	0380006f          	j	80005a20 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800059ec:	00006797          	auipc	a5,0x6
    800059f0:	0c478793          	addi	a5,a5,196 # 8000bab0 <_ZTV12ProducerSync+0x10>
    800059f4:	00fcb023          	sd	a5,0(s9)
    800059f8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800059fc:	00349793          	slli	a5,s1,0x3
    80005a00:	00f987b3          	add	a5,s3,a5
    80005a04:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005a08:	00349793          	slli	a5,s1,0x3
    80005a0c:	00f987b3          	add	a5,s3,a5
    80005a10:	0007b503          	ld	a0,0(a5)
    80005a14:	ffffd097          	auipc	ra,0xffffd
    80005a18:	554080e7          	jalr	1364(ra) # 80002f68 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a1c:	0014849b          	addiw	s1,s1,1
    80005a20:	0b24d063          	bge	s1,s2,80005ac0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005a24:	00149793          	slli	a5,s1,0x1
    80005a28:	009787b3          	add	a5,a5,s1
    80005a2c:	00379793          	slli	a5,a5,0x3
    80005a30:	00fa07b3          	add	a5,s4,a5
    80005a34:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005a38:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005a3c:	00006717          	auipc	a4,0x6
    80005a40:	43c73703          	ld	a4,1084(a4) # 8000be78 <_ZL10waitForAll>
    80005a44:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005a48:	02905863          	blez	s1,80005a78 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005a4c:	02800513          	li	a0,40
    80005a50:	ffffd097          	auipc	ra,0xffffd
    80005a54:	400080e7          	jalr	1024(ra) # 80002e50 <_Znwm>
    80005a58:	00050c93          	mv	s9,a0
    80005a5c:	00149c13          	slli	s8,s1,0x1
    80005a60:	009c0c33          	add	s8,s8,s1
    80005a64:	003c1c13          	slli	s8,s8,0x3
    80005a68:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a6c:	ffffd097          	auipc	ra,0xffffd
    80005a70:	4cc080e7          	jalr	1228(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80005a74:	f79ff06f          	j	800059ec <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005a78:	02800513          	li	a0,40
    80005a7c:	ffffd097          	auipc	ra,0xffffd
    80005a80:	3d4080e7          	jalr	980(ra) # 80002e50 <_Znwm>
    80005a84:	00050c93          	mv	s9,a0
    80005a88:	00149c13          	slli	s8,s1,0x1
    80005a8c:	009c0c33          	add	s8,s8,s1
    80005a90:	003c1c13          	slli	s8,s8,0x3
    80005a94:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005a98:	ffffd097          	auipc	ra,0xffffd
    80005a9c:	4a0080e7          	jalr	1184(ra) # 80002f38 <_ZN6ThreadC1Ev>
    80005aa0:	00006797          	auipc	a5,0x6
    80005aa4:	fe878793          	addi	a5,a5,-24 # 8000ba88 <_ZTV16ProducerKeyboard+0x10>
    80005aa8:	00fcb023          	sd	a5,0(s9)
    80005aac:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005ab0:	00349793          	slli	a5,s1,0x3
    80005ab4:	00f987b3          	add	a5,s3,a5
    80005ab8:	0197b023          	sd	s9,0(a5)
    80005abc:	f4dff06f          	j	80005a08 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005ac0:	ffffd097          	auipc	ra,0xffffd
    80005ac4:	4fc080e7          	jalr	1276(ra) # 80002fbc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005ac8:	00000493          	li	s1,0
    80005acc:	00994e63          	blt	s2,s1,80005ae8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005ad0:	00006517          	auipc	a0,0x6
    80005ad4:	3a853503          	ld	a0,936(a0) # 8000be78 <_ZL10waitForAll>
    80005ad8:	ffffd097          	auipc	ra,0xffffd
    80005adc:	56c080e7          	jalr	1388(ra) # 80003044 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005ae0:	0014849b          	addiw	s1,s1,1
    80005ae4:	fe9ff06f          	j	80005acc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005ae8:	00000493          	li	s1,0
    80005aec:	0080006f          	j	80005af4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005af0:	0014849b          	addiw	s1,s1,1
    80005af4:	0324d263          	bge	s1,s2,80005b18 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005af8:	00349793          	slli	a5,s1,0x3
    80005afc:	00f987b3          	add	a5,s3,a5
    80005b00:	0007b503          	ld	a0,0(a5)
    80005b04:	fe0506e3          	beqz	a0,80005af0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005b08:	00053783          	ld	a5,0(a0)
    80005b0c:	0087b783          	ld	a5,8(a5)
    80005b10:	000780e7          	jalr	a5
    80005b14:	fddff06f          	j	80005af0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005b18:	000b0a63          	beqz	s6,80005b2c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005b1c:	000b3783          	ld	a5,0(s6)
    80005b20:	0087b783          	ld	a5,8(a5)
    80005b24:	000b0513          	mv	a0,s6
    80005b28:	000780e7          	jalr	a5
    delete waitForAll;
    80005b2c:	00006517          	auipc	a0,0x6
    80005b30:	34c53503          	ld	a0,844(a0) # 8000be78 <_ZL10waitForAll>
    80005b34:	00050863          	beqz	a0,80005b44 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005b38:	00053783          	ld	a5,0(a0)
    80005b3c:	0087b783          	ld	a5,8(a5)
    80005b40:	000780e7          	jalr	a5
    delete buffer;
    80005b44:	000a8e63          	beqz	s5,80005b60 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005b48:	000a8513          	mv	a0,s5
    80005b4c:	00001097          	auipc	ra,0x1
    80005b50:	8a8080e7          	jalr	-1880(ra) # 800063f4 <_ZN9BufferCPPD1Ev>
    80005b54:	000a8513          	mv	a0,s5
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	320080e7          	jalr	800(ra) # 80002e78 <_ZdlPv>
    80005b60:	000b8113          	mv	sp,s7

}
    80005b64:	f8040113          	addi	sp,s0,-128
    80005b68:	07813083          	ld	ra,120(sp)
    80005b6c:	07013403          	ld	s0,112(sp)
    80005b70:	06813483          	ld	s1,104(sp)
    80005b74:	06013903          	ld	s2,96(sp)
    80005b78:	05813983          	ld	s3,88(sp)
    80005b7c:	05013a03          	ld	s4,80(sp)
    80005b80:	04813a83          	ld	s5,72(sp)
    80005b84:	04013b03          	ld	s6,64(sp)
    80005b88:	03813b83          	ld	s7,56(sp)
    80005b8c:	03013c03          	ld	s8,48(sp)
    80005b90:	02813c83          	ld	s9,40(sp)
    80005b94:	08010113          	addi	sp,sp,128
    80005b98:	00008067          	ret
    80005b9c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005ba0:	000a8513          	mv	a0,s5
    80005ba4:	ffffd097          	auipc	ra,0xffffd
    80005ba8:	2d4080e7          	jalr	724(ra) # 80002e78 <_ZdlPv>
    80005bac:	00048513          	mv	a0,s1
    80005bb0:	00007097          	auipc	ra,0x7
    80005bb4:	3a8080e7          	jalr	936(ra) # 8000cf58 <_Unwind_Resume>
    80005bb8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	ffffd097          	auipc	ra,0xffffd
    80005bc4:	2b8080e7          	jalr	696(ra) # 80002e78 <_ZdlPv>
    80005bc8:	00090513          	mv	a0,s2
    80005bcc:	00007097          	auipc	ra,0x7
    80005bd0:	38c080e7          	jalr	908(ra) # 8000cf58 <_Unwind_Resume>
    80005bd4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005bd8:	000b0513          	mv	a0,s6
    80005bdc:	ffffd097          	auipc	ra,0xffffd
    80005be0:	29c080e7          	jalr	668(ra) # 80002e78 <_ZdlPv>
    80005be4:	00048513          	mv	a0,s1
    80005be8:	00007097          	auipc	ra,0x7
    80005bec:	370080e7          	jalr	880(ra) # 8000cf58 <_Unwind_Resume>
    80005bf0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005bf4:	000c8513          	mv	a0,s9
    80005bf8:	ffffd097          	auipc	ra,0xffffd
    80005bfc:	280080e7          	jalr	640(ra) # 80002e78 <_ZdlPv>
    80005c00:	00048513          	mv	a0,s1
    80005c04:	00007097          	auipc	ra,0x7
    80005c08:	354080e7          	jalr	852(ra) # 8000cf58 <_Unwind_Resume>
    80005c0c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005c10:	000c8513          	mv	a0,s9
    80005c14:	ffffd097          	auipc	ra,0xffffd
    80005c18:	264080e7          	jalr	612(ra) # 80002e78 <_ZdlPv>
    80005c1c:	00048513          	mv	a0,s1
    80005c20:	00007097          	auipc	ra,0x7
    80005c24:	338080e7          	jalr	824(ra) # 8000cf58 <_Unwind_Resume>

0000000080005c28 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005c28:	ff010113          	addi	sp,sp,-16
    80005c2c:	00113423          	sd	ra,8(sp)
    80005c30:	00813023          	sd	s0,0(sp)
    80005c34:	01010413          	addi	s0,sp,16
    80005c38:	00006797          	auipc	a5,0x6
    80005c3c:	ea078793          	addi	a5,a5,-352 # 8000bad8 <_ZTV12ConsumerSync+0x10>
    80005c40:	00f53023          	sd	a5,0(a0)
    80005c44:	ffffd097          	auipc	ra,0xffffd
    80005c48:	13c080e7          	jalr	316(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80005c4c:	00813083          	ld	ra,8(sp)
    80005c50:	00013403          	ld	s0,0(sp)
    80005c54:	01010113          	addi	sp,sp,16
    80005c58:	00008067          	ret

0000000080005c5c <_ZN12ConsumerSyncD0Ev>:
    80005c5c:	fe010113          	addi	sp,sp,-32
    80005c60:	00113c23          	sd	ra,24(sp)
    80005c64:	00813823          	sd	s0,16(sp)
    80005c68:	00913423          	sd	s1,8(sp)
    80005c6c:	02010413          	addi	s0,sp,32
    80005c70:	00050493          	mv	s1,a0
    80005c74:	00006797          	auipc	a5,0x6
    80005c78:	e6478793          	addi	a5,a5,-412 # 8000bad8 <_ZTV12ConsumerSync+0x10>
    80005c7c:	00f53023          	sd	a5,0(a0)
    80005c80:	ffffd097          	auipc	ra,0xffffd
    80005c84:	100080e7          	jalr	256(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80005c88:	00048513          	mv	a0,s1
    80005c8c:	ffffd097          	auipc	ra,0xffffd
    80005c90:	1ec080e7          	jalr	492(ra) # 80002e78 <_ZdlPv>
    80005c94:	01813083          	ld	ra,24(sp)
    80005c98:	01013403          	ld	s0,16(sp)
    80005c9c:	00813483          	ld	s1,8(sp)
    80005ca0:	02010113          	addi	sp,sp,32
    80005ca4:	00008067          	ret

0000000080005ca8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005ca8:	ff010113          	addi	sp,sp,-16
    80005cac:	00113423          	sd	ra,8(sp)
    80005cb0:	00813023          	sd	s0,0(sp)
    80005cb4:	01010413          	addi	s0,sp,16
    80005cb8:	00006797          	auipc	a5,0x6
    80005cbc:	df878793          	addi	a5,a5,-520 # 8000bab0 <_ZTV12ProducerSync+0x10>
    80005cc0:	00f53023          	sd	a5,0(a0)
    80005cc4:	ffffd097          	auipc	ra,0xffffd
    80005cc8:	0bc080e7          	jalr	188(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80005ccc:	00813083          	ld	ra,8(sp)
    80005cd0:	00013403          	ld	s0,0(sp)
    80005cd4:	01010113          	addi	sp,sp,16
    80005cd8:	00008067          	ret

0000000080005cdc <_ZN12ProducerSyncD0Ev>:
    80005cdc:	fe010113          	addi	sp,sp,-32
    80005ce0:	00113c23          	sd	ra,24(sp)
    80005ce4:	00813823          	sd	s0,16(sp)
    80005ce8:	00913423          	sd	s1,8(sp)
    80005cec:	02010413          	addi	s0,sp,32
    80005cf0:	00050493          	mv	s1,a0
    80005cf4:	00006797          	auipc	a5,0x6
    80005cf8:	dbc78793          	addi	a5,a5,-580 # 8000bab0 <_ZTV12ProducerSync+0x10>
    80005cfc:	00f53023          	sd	a5,0(a0)
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	080080e7          	jalr	128(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80005d08:	00048513          	mv	a0,s1
    80005d0c:	ffffd097          	auipc	ra,0xffffd
    80005d10:	16c080e7          	jalr	364(ra) # 80002e78 <_ZdlPv>
    80005d14:	01813083          	ld	ra,24(sp)
    80005d18:	01013403          	ld	s0,16(sp)
    80005d1c:	00813483          	ld	s1,8(sp)
    80005d20:	02010113          	addi	sp,sp,32
    80005d24:	00008067          	ret

0000000080005d28 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005d28:	ff010113          	addi	sp,sp,-16
    80005d2c:	00113423          	sd	ra,8(sp)
    80005d30:	00813023          	sd	s0,0(sp)
    80005d34:	01010413          	addi	s0,sp,16
    80005d38:	00006797          	auipc	a5,0x6
    80005d3c:	d5078793          	addi	a5,a5,-688 # 8000ba88 <_ZTV16ProducerKeyboard+0x10>
    80005d40:	00f53023          	sd	a5,0(a0)
    80005d44:	ffffd097          	auipc	ra,0xffffd
    80005d48:	03c080e7          	jalr	60(ra) # 80002d80 <_ZN6ThreadD1Ev>
    80005d4c:	00813083          	ld	ra,8(sp)
    80005d50:	00013403          	ld	s0,0(sp)
    80005d54:	01010113          	addi	sp,sp,16
    80005d58:	00008067          	ret

0000000080005d5c <_ZN16ProducerKeyboardD0Ev>:
    80005d5c:	fe010113          	addi	sp,sp,-32
    80005d60:	00113c23          	sd	ra,24(sp)
    80005d64:	00813823          	sd	s0,16(sp)
    80005d68:	00913423          	sd	s1,8(sp)
    80005d6c:	02010413          	addi	s0,sp,32
    80005d70:	00050493          	mv	s1,a0
    80005d74:	00006797          	auipc	a5,0x6
    80005d78:	d1478793          	addi	a5,a5,-748 # 8000ba88 <_ZTV16ProducerKeyboard+0x10>
    80005d7c:	00f53023          	sd	a5,0(a0)
    80005d80:	ffffd097          	auipc	ra,0xffffd
    80005d84:	000080e7          	jalr	ra # 80002d80 <_ZN6ThreadD1Ev>
    80005d88:	00048513          	mv	a0,s1
    80005d8c:	ffffd097          	auipc	ra,0xffffd
    80005d90:	0ec080e7          	jalr	236(ra) # 80002e78 <_ZdlPv>
    80005d94:	01813083          	ld	ra,24(sp)
    80005d98:	01013403          	ld	s0,16(sp)
    80005d9c:	00813483          	ld	s1,8(sp)
    80005da0:	02010113          	addi	sp,sp,32
    80005da4:	00008067          	ret

0000000080005da8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005da8:	ff010113          	addi	sp,sp,-16
    80005dac:	00113423          	sd	ra,8(sp)
    80005db0:	00813023          	sd	s0,0(sp)
    80005db4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005db8:	02053583          	ld	a1,32(a0)
    80005dbc:	fffff097          	auipc	ra,0xfffff
    80005dc0:	7e4080e7          	jalr	2020(ra) # 800055a0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005dc4:	00813083          	ld	ra,8(sp)
    80005dc8:	00013403          	ld	s0,0(sp)
    80005dcc:	01010113          	addi	sp,sp,16
    80005dd0:	00008067          	ret

0000000080005dd4 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005dd4:	ff010113          	addi	sp,sp,-16
    80005dd8:	00113423          	sd	ra,8(sp)
    80005ddc:	00813023          	sd	s0,0(sp)
    80005de0:	01010413          	addi	s0,sp,16
        producer(td);
    80005de4:	02053583          	ld	a1,32(a0)
    80005de8:	00000097          	auipc	ra,0x0
    80005dec:	878080e7          	jalr	-1928(ra) # 80005660 <_ZN12ProducerSync8producerEPv>
    }
    80005df0:	00813083          	ld	ra,8(sp)
    80005df4:	00013403          	ld	s0,0(sp)
    80005df8:	01010113          	addi	sp,sp,16
    80005dfc:	00008067          	ret

0000000080005e00 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005e00:	ff010113          	addi	sp,sp,-16
    80005e04:	00113423          	sd	ra,8(sp)
    80005e08:	00813023          	sd	s0,0(sp)
    80005e0c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005e10:	02053583          	ld	a1,32(a0)
    80005e14:	00000097          	auipc	ra,0x0
    80005e18:	8e0080e7          	jalr	-1824(ra) # 800056f4 <_ZN12ConsumerSync8consumerEPv>
    }
    80005e1c:	00813083          	ld	ra,8(sp)
    80005e20:	00013403          	ld	s0,0(sp)
    80005e24:	01010113          	addi	sp,sp,16
    80005e28:	00008067          	ret

0000000080005e2c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005e2c:	fe010113          	addi	sp,sp,-32
    80005e30:	00113c23          	sd	ra,24(sp)
    80005e34:	00813823          	sd	s0,16(sp)
    80005e38:	00913423          	sd	s1,8(sp)
    80005e3c:	02010413          	addi	s0,sp,32
    80005e40:	00050493          	mv	s1,a0
    LOCK();
    80005e44:	00100613          	li	a2,1
    80005e48:	00000593          	li	a1,0
    80005e4c:	00006517          	auipc	a0,0x6
    80005e50:	03450513          	addi	a0,a0,52 # 8000be80 <lockPrint>
    80005e54:	ffffb097          	auipc	ra,0xffffb
    80005e58:	47c080e7          	jalr	1148(ra) # 800012d0 <copy_and_swap>
    80005e5c:	00050863          	beqz	a0,80005e6c <_Z11printStringPKc+0x40>
    80005e60:	ffffb097          	auipc	ra,0xffffb
    80005e64:	5b4080e7          	jalr	1460(ra) # 80001414 <thread_dispatch>
    80005e68:	fddff06f          	j	80005e44 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005e6c:	0004c503          	lbu	a0,0(s1)
    80005e70:	00050a63          	beqz	a0,80005e84 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005e74:	ffffb097          	auipc	ra,0xffffb
    80005e78:	6f4080e7          	jalr	1780(ra) # 80001568 <putc>
        string++;
    80005e7c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005e80:	fedff06f          	j	80005e6c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005e84:	00000613          	li	a2,0
    80005e88:	00100593          	li	a1,1
    80005e8c:	00006517          	auipc	a0,0x6
    80005e90:	ff450513          	addi	a0,a0,-12 # 8000be80 <lockPrint>
    80005e94:	ffffb097          	auipc	ra,0xffffb
    80005e98:	43c080e7          	jalr	1084(ra) # 800012d0 <copy_and_swap>
    80005e9c:	fe0514e3          	bnez	a0,80005e84 <_Z11printStringPKc+0x58>
}
    80005ea0:	01813083          	ld	ra,24(sp)
    80005ea4:	01013403          	ld	s0,16(sp)
    80005ea8:	00813483          	ld	s1,8(sp)
    80005eac:	02010113          	addi	sp,sp,32
    80005eb0:	00008067          	ret

0000000080005eb4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005eb4:	fd010113          	addi	sp,sp,-48
    80005eb8:	02113423          	sd	ra,40(sp)
    80005ebc:	02813023          	sd	s0,32(sp)
    80005ec0:	00913c23          	sd	s1,24(sp)
    80005ec4:	01213823          	sd	s2,16(sp)
    80005ec8:	01313423          	sd	s3,8(sp)
    80005ecc:	01413023          	sd	s4,0(sp)
    80005ed0:	03010413          	addi	s0,sp,48
    80005ed4:	00050993          	mv	s3,a0
    80005ed8:	00058a13          	mv	s4,a1
    LOCK();
    80005edc:	00100613          	li	a2,1
    80005ee0:	00000593          	li	a1,0
    80005ee4:	00006517          	auipc	a0,0x6
    80005ee8:	f9c50513          	addi	a0,a0,-100 # 8000be80 <lockPrint>
    80005eec:	ffffb097          	auipc	ra,0xffffb
    80005ef0:	3e4080e7          	jalr	996(ra) # 800012d0 <copy_and_swap>
    80005ef4:	00050863          	beqz	a0,80005f04 <_Z9getStringPci+0x50>
    80005ef8:	ffffb097          	auipc	ra,0xffffb
    80005efc:	51c080e7          	jalr	1308(ra) # 80001414 <thread_dispatch>
    80005f00:	fddff06f          	j	80005edc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005f04:	00000913          	li	s2,0
    80005f08:	00090493          	mv	s1,s2
    80005f0c:	0019091b          	addiw	s2,s2,1
    80005f10:	03495a63          	bge	s2,s4,80005f44 <_Z9getStringPci+0x90>
        cc = getc();
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	630080e7          	jalr	1584(ra) # 80001544 <getc>
        if(cc < 1)
    80005f1c:	02050463          	beqz	a0,80005f44 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005f20:	009984b3          	add	s1,s3,s1
    80005f24:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005f28:	00a00793          	li	a5,10
    80005f2c:	00f50a63          	beq	a0,a5,80005f40 <_Z9getStringPci+0x8c>
    80005f30:	00d00793          	li	a5,13
    80005f34:	fcf51ae3          	bne	a0,a5,80005f08 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005f38:	00090493          	mv	s1,s2
    80005f3c:	0080006f          	j	80005f44 <_Z9getStringPci+0x90>
    80005f40:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005f44:	009984b3          	add	s1,s3,s1
    80005f48:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005f4c:	00000613          	li	a2,0
    80005f50:	00100593          	li	a1,1
    80005f54:	00006517          	auipc	a0,0x6
    80005f58:	f2c50513          	addi	a0,a0,-212 # 8000be80 <lockPrint>
    80005f5c:	ffffb097          	auipc	ra,0xffffb
    80005f60:	374080e7          	jalr	884(ra) # 800012d0 <copy_and_swap>
    80005f64:	fe0514e3          	bnez	a0,80005f4c <_Z9getStringPci+0x98>
    return buf;
}
    80005f68:	00098513          	mv	a0,s3
    80005f6c:	02813083          	ld	ra,40(sp)
    80005f70:	02013403          	ld	s0,32(sp)
    80005f74:	01813483          	ld	s1,24(sp)
    80005f78:	01013903          	ld	s2,16(sp)
    80005f7c:	00813983          	ld	s3,8(sp)
    80005f80:	00013a03          	ld	s4,0(sp)
    80005f84:	03010113          	addi	sp,sp,48
    80005f88:	00008067          	ret

0000000080005f8c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005f8c:	ff010113          	addi	sp,sp,-16
    80005f90:	00813423          	sd	s0,8(sp)
    80005f94:	01010413          	addi	s0,sp,16
    80005f98:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005f9c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005fa0:	0006c603          	lbu	a2,0(a3)
    80005fa4:	fd06071b          	addiw	a4,a2,-48
    80005fa8:	0ff77713          	andi	a4,a4,255
    80005fac:	00900793          	li	a5,9
    80005fb0:	02e7e063          	bltu	a5,a4,80005fd0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005fb4:	0025179b          	slliw	a5,a0,0x2
    80005fb8:	00a787bb          	addw	a5,a5,a0
    80005fbc:	0017979b          	slliw	a5,a5,0x1
    80005fc0:	00168693          	addi	a3,a3,1
    80005fc4:	00c787bb          	addw	a5,a5,a2
    80005fc8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005fcc:	fd5ff06f          	j	80005fa0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005fd0:	00813403          	ld	s0,8(sp)
    80005fd4:	01010113          	addi	sp,sp,16
    80005fd8:	00008067          	ret

0000000080005fdc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005fdc:	fc010113          	addi	sp,sp,-64
    80005fe0:	02113c23          	sd	ra,56(sp)
    80005fe4:	02813823          	sd	s0,48(sp)
    80005fe8:	02913423          	sd	s1,40(sp)
    80005fec:	03213023          	sd	s2,32(sp)
    80005ff0:	01313c23          	sd	s3,24(sp)
    80005ff4:	04010413          	addi	s0,sp,64
    80005ff8:	00050493          	mv	s1,a0
    80005ffc:	00058913          	mv	s2,a1
    80006000:	00060993          	mv	s3,a2
    LOCK();
    80006004:	00100613          	li	a2,1
    80006008:	00000593          	li	a1,0
    8000600c:	00006517          	auipc	a0,0x6
    80006010:	e7450513          	addi	a0,a0,-396 # 8000be80 <lockPrint>
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	2bc080e7          	jalr	700(ra) # 800012d0 <copy_and_swap>
    8000601c:	00050863          	beqz	a0,8000602c <_Z8printIntiii+0x50>
    80006020:	ffffb097          	auipc	ra,0xffffb
    80006024:	3f4080e7          	jalr	1012(ra) # 80001414 <thread_dispatch>
    80006028:	fddff06f          	j	80006004 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000602c:	00098463          	beqz	s3,80006034 <_Z8printIntiii+0x58>
    80006030:	0804c463          	bltz	s1,800060b8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006034:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006038:	00000593          	li	a1,0
    }

    i = 0;
    8000603c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006040:	0009079b          	sext.w	a5,s2
    80006044:	0325773b          	remuw	a4,a0,s2
    80006048:	00048613          	mv	a2,s1
    8000604c:	0014849b          	addiw	s1,s1,1
    80006050:	02071693          	slli	a3,a4,0x20
    80006054:	0206d693          	srli	a3,a3,0x20
    80006058:	00006717          	auipc	a4,0x6
    8000605c:	a9870713          	addi	a4,a4,-1384 # 8000baf0 <digits>
    80006060:	00d70733          	add	a4,a4,a3
    80006064:	00074683          	lbu	a3,0(a4)
    80006068:	fd040713          	addi	a4,s0,-48
    8000606c:	00c70733          	add	a4,a4,a2
    80006070:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006074:	0005071b          	sext.w	a4,a0
    80006078:	0325553b          	divuw	a0,a0,s2
    8000607c:	fcf772e3          	bgeu	a4,a5,80006040 <_Z8printIntiii+0x64>
    if(neg)
    80006080:	00058c63          	beqz	a1,80006098 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006084:	fd040793          	addi	a5,s0,-48
    80006088:	009784b3          	add	s1,a5,s1
    8000608c:	02d00793          	li	a5,45
    80006090:	fef48823          	sb	a5,-16(s1)
    80006094:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006098:	fff4849b          	addiw	s1,s1,-1
    8000609c:	0204c463          	bltz	s1,800060c4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800060a0:	fd040793          	addi	a5,s0,-48
    800060a4:	009787b3          	add	a5,a5,s1
    800060a8:	ff07c503          	lbu	a0,-16(a5)
    800060ac:	ffffb097          	auipc	ra,0xffffb
    800060b0:	4bc080e7          	jalr	1212(ra) # 80001568 <putc>
    800060b4:	fe5ff06f          	j	80006098 <_Z8printIntiii+0xbc>
        x = -xx;
    800060b8:	4090053b          	negw	a0,s1
        neg = 1;
    800060bc:	00100593          	li	a1,1
        x = -xx;
    800060c0:	f7dff06f          	j	8000603c <_Z8printIntiii+0x60>

    UNLOCK();
    800060c4:	00000613          	li	a2,0
    800060c8:	00100593          	li	a1,1
    800060cc:	00006517          	auipc	a0,0x6
    800060d0:	db450513          	addi	a0,a0,-588 # 8000be80 <lockPrint>
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	1fc080e7          	jalr	508(ra) # 800012d0 <copy_and_swap>
    800060dc:	fe0514e3          	bnez	a0,800060c4 <_Z8printIntiii+0xe8>
    800060e0:	03813083          	ld	ra,56(sp)
    800060e4:	03013403          	ld	s0,48(sp)
    800060e8:	02813483          	ld	s1,40(sp)
    800060ec:	02013903          	ld	s2,32(sp)
    800060f0:	01813983          	ld	s3,24(sp)
    800060f4:	04010113          	addi	sp,sp,64
    800060f8:	00008067          	ret

00000000800060fc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800060fc:	fd010113          	addi	sp,sp,-48
    80006100:	02113423          	sd	ra,40(sp)
    80006104:	02813023          	sd	s0,32(sp)
    80006108:	00913c23          	sd	s1,24(sp)
    8000610c:	01213823          	sd	s2,16(sp)
    80006110:	01313423          	sd	s3,8(sp)
    80006114:	03010413          	addi	s0,sp,48
    80006118:	00050493          	mv	s1,a0
    8000611c:	00058913          	mv	s2,a1
    80006120:	0015879b          	addiw	a5,a1,1
    80006124:	0007851b          	sext.w	a0,a5
    80006128:	00f4a023          	sw	a5,0(s1)
    8000612c:	0004a823          	sw	zero,16(s1)
    80006130:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006134:	00251513          	slli	a0,a0,0x2
    80006138:	ffffb097          	auipc	ra,0xffffb
    8000613c:	1b8080e7          	jalr	440(ra) # 800012f0 <mem_alloc>
    80006140:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006144:	01000513          	li	a0,16
    80006148:	ffffd097          	auipc	ra,0xffffd
    8000614c:	d08080e7          	jalr	-760(ra) # 80002e50 <_Znwm>
    80006150:	00050993          	mv	s3,a0
    80006154:	00000593          	li	a1,0
    80006158:	ffffd097          	auipc	ra,0xffffd
    8000615c:	eb4080e7          	jalr	-332(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80006160:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006164:	01000513          	li	a0,16
    80006168:	ffffd097          	auipc	ra,0xffffd
    8000616c:	ce8080e7          	jalr	-792(ra) # 80002e50 <_Znwm>
    80006170:	00050993          	mv	s3,a0
    80006174:	00090593          	mv	a1,s2
    80006178:	ffffd097          	auipc	ra,0xffffd
    8000617c:	e94080e7          	jalr	-364(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80006180:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006184:	01000513          	li	a0,16
    80006188:	ffffd097          	auipc	ra,0xffffd
    8000618c:	cc8080e7          	jalr	-824(ra) # 80002e50 <_Znwm>
    80006190:	00050913          	mv	s2,a0
    80006194:	00100593          	li	a1,1
    80006198:	ffffd097          	auipc	ra,0xffffd
    8000619c:	e74080e7          	jalr	-396(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    800061a0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800061a4:	01000513          	li	a0,16
    800061a8:	ffffd097          	auipc	ra,0xffffd
    800061ac:	ca8080e7          	jalr	-856(ra) # 80002e50 <_Znwm>
    800061b0:	00050913          	mv	s2,a0
    800061b4:	00100593          	li	a1,1
    800061b8:	ffffd097          	auipc	ra,0xffffd
    800061bc:	e54080e7          	jalr	-428(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    800061c0:	0324b823          	sd	s2,48(s1)
}
    800061c4:	02813083          	ld	ra,40(sp)
    800061c8:	02013403          	ld	s0,32(sp)
    800061cc:	01813483          	ld	s1,24(sp)
    800061d0:	01013903          	ld	s2,16(sp)
    800061d4:	00813983          	ld	s3,8(sp)
    800061d8:	03010113          	addi	sp,sp,48
    800061dc:	00008067          	ret
    800061e0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800061e4:	00098513          	mv	a0,s3
    800061e8:	ffffd097          	auipc	ra,0xffffd
    800061ec:	c90080e7          	jalr	-880(ra) # 80002e78 <_ZdlPv>
    800061f0:	00048513          	mv	a0,s1
    800061f4:	00007097          	auipc	ra,0x7
    800061f8:	d64080e7          	jalr	-668(ra) # 8000cf58 <_Unwind_Resume>
    800061fc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006200:	00098513          	mv	a0,s3
    80006204:	ffffd097          	auipc	ra,0xffffd
    80006208:	c74080e7          	jalr	-908(ra) # 80002e78 <_ZdlPv>
    8000620c:	00048513          	mv	a0,s1
    80006210:	00007097          	auipc	ra,0x7
    80006214:	d48080e7          	jalr	-696(ra) # 8000cf58 <_Unwind_Resume>
    80006218:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000621c:	00090513          	mv	a0,s2
    80006220:	ffffd097          	auipc	ra,0xffffd
    80006224:	c58080e7          	jalr	-936(ra) # 80002e78 <_ZdlPv>
    80006228:	00048513          	mv	a0,s1
    8000622c:	00007097          	auipc	ra,0x7
    80006230:	d2c080e7          	jalr	-724(ra) # 8000cf58 <_Unwind_Resume>
    80006234:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006238:	00090513          	mv	a0,s2
    8000623c:	ffffd097          	auipc	ra,0xffffd
    80006240:	c3c080e7          	jalr	-964(ra) # 80002e78 <_ZdlPv>
    80006244:	00048513          	mv	a0,s1
    80006248:	00007097          	auipc	ra,0x7
    8000624c:	d10080e7          	jalr	-752(ra) # 8000cf58 <_Unwind_Resume>

0000000080006250 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006250:	fe010113          	addi	sp,sp,-32
    80006254:	00113c23          	sd	ra,24(sp)
    80006258:	00813823          	sd	s0,16(sp)
    8000625c:	00913423          	sd	s1,8(sp)
    80006260:	01213023          	sd	s2,0(sp)
    80006264:	02010413          	addi	s0,sp,32
    80006268:	00050493          	mv	s1,a0
    8000626c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006270:	01853503          	ld	a0,24(a0)
    80006274:	ffffd097          	auipc	ra,0xffffd
    80006278:	dd0080e7          	jalr	-560(ra) # 80003044 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000627c:	0304b503          	ld	a0,48(s1)
    80006280:	ffffd097          	auipc	ra,0xffffd
    80006284:	dc4080e7          	jalr	-572(ra) # 80003044 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006288:	0084b783          	ld	a5,8(s1)
    8000628c:	0144a703          	lw	a4,20(s1)
    80006290:	00271713          	slli	a4,a4,0x2
    80006294:	00e787b3          	add	a5,a5,a4
    80006298:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000629c:	0144a783          	lw	a5,20(s1)
    800062a0:	0017879b          	addiw	a5,a5,1
    800062a4:	0004a703          	lw	a4,0(s1)
    800062a8:	02e7e7bb          	remw	a5,a5,a4
    800062ac:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800062b0:	0304b503          	ld	a0,48(s1)
    800062b4:	ffffd097          	auipc	ra,0xffffd
    800062b8:	dbc080e7          	jalr	-580(ra) # 80003070 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800062bc:	0204b503          	ld	a0,32(s1)
    800062c0:	ffffd097          	auipc	ra,0xffffd
    800062c4:	db0080e7          	jalr	-592(ra) # 80003070 <_ZN9Semaphore6signalEv>

}
    800062c8:	01813083          	ld	ra,24(sp)
    800062cc:	01013403          	ld	s0,16(sp)
    800062d0:	00813483          	ld	s1,8(sp)
    800062d4:	00013903          	ld	s2,0(sp)
    800062d8:	02010113          	addi	sp,sp,32
    800062dc:	00008067          	ret

00000000800062e0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800062e0:	fe010113          	addi	sp,sp,-32
    800062e4:	00113c23          	sd	ra,24(sp)
    800062e8:	00813823          	sd	s0,16(sp)
    800062ec:	00913423          	sd	s1,8(sp)
    800062f0:	01213023          	sd	s2,0(sp)
    800062f4:	02010413          	addi	s0,sp,32
    800062f8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800062fc:	02053503          	ld	a0,32(a0)
    80006300:	ffffd097          	auipc	ra,0xffffd
    80006304:	d44080e7          	jalr	-700(ra) # 80003044 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006308:	0284b503          	ld	a0,40(s1)
    8000630c:	ffffd097          	auipc	ra,0xffffd
    80006310:	d38080e7          	jalr	-712(ra) # 80003044 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006314:	0084b703          	ld	a4,8(s1)
    80006318:	0104a783          	lw	a5,16(s1)
    8000631c:	00279693          	slli	a3,a5,0x2
    80006320:	00d70733          	add	a4,a4,a3
    80006324:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006328:	0017879b          	addiw	a5,a5,1
    8000632c:	0004a703          	lw	a4,0(s1)
    80006330:	02e7e7bb          	remw	a5,a5,a4
    80006334:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006338:	0284b503          	ld	a0,40(s1)
    8000633c:	ffffd097          	auipc	ra,0xffffd
    80006340:	d34080e7          	jalr	-716(ra) # 80003070 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006344:	0184b503          	ld	a0,24(s1)
    80006348:	ffffd097          	auipc	ra,0xffffd
    8000634c:	d28080e7          	jalr	-728(ra) # 80003070 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006350:	00090513          	mv	a0,s2
    80006354:	01813083          	ld	ra,24(sp)
    80006358:	01013403          	ld	s0,16(sp)
    8000635c:	00813483          	ld	s1,8(sp)
    80006360:	00013903          	ld	s2,0(sp)
    80006364:	02010113          	addi	sp,sp,32
    80006368:	00008067          	ret

000000008000636c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000636c:	fe010113          	addi	sp,sp,-32
    80006370:	00113c23          	sd	ra,24(sp)
    80006374:	00813823          	sd	s0,16(sp)
    80006378:	00913423          	sd	s1,8(sp)
    8000637c:	01213023          	sd	s2,0(sp)
    80006380:	02010413          	addi	s0,sp,32
    80006384:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006388:	02853503          	ld	a0,40(a0)
    8000638c:	ffffd097          	auipc	ra,0xffffd
    80006390:	cb8080e7          	jalr	-840(ra) # 80003044 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006394:	0304b503          	ld	a0,48(s1)
    80006398:	ffffd097          	auipc	ra,0xffffd
    8000639c:	cac080e7          	jalr	-852(ra) # 80003044 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800063a0:	0144a783          	lw	a5,20(s1)
    800063a4:	0104a903          	lw	s2,16(s1)
    800063a8:	0327ce63          	blt	a5,s2,800063e4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800063ac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800063b0:	0304b503          	ld	a0,48(s1)
    800063b4:	ffffd097          	auipc	ra,0xffffd
    800063b8:	cbc080e7          	jalr	-836(ra) # 80003070 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800063bc:	0284b503          	ld	a0,40(s1)
    800063c0:	ffffd097          	auipc	ra,0xffffd
    800063c4:	cb0080e7          	jalr	-848(ra) # 80003070 <_ZN9Semaphore6signalEv>

    return ret;
}
    800063c8:	00090513          	mv	a0,s2
    800063cc:	01813083          	ld	ra,24(sp)
    800063d0:	01013403          	ld	s0,16(sp)
    800063d4:	00813483          	ld	s1,8(sp)
    800063d8:	00013903          	ld	s2,0(sp)
    800063dc:	02010113          	addi	sp,sp,32
    800063e0:	00008067          	ret
        ret = cap - head + tail;
    800063e4:	0004a703          	lw	a4,0(s1)
    800063e8:	4127093b          	subw	s2,a4,s2
    800063ec:	00f9093b          	addw	s2,s2,a5
    800063f0:	fc1ff06f          	j	800063b0 <_ZN9BufferCPP6getCntEv+0x44>

00000000800063f4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800063f4:	fe010113          	addi	sp,sp,-32
    800063f8:	00113c23          	sd	ra,24(sp)
    800063fc:	00813823          	sd	s0,16(sp)
    80006400:	00913423          	sd	s1,8(sp)
    80006404:	02010413          	addi	s0,sp,32
    80006408:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000640c:	00a00513          	li	a0,10
    80006410:	ffffd097          	auipc	ra,0xffffd
    80006414:	d4c080e7          	jalr	-692(ra) # 8000315c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	20850513          	addi	a0,a0,520 # 80009620 <CONSOLE_STATUS+0x610>
    80006420:	00000097          	auipc	ra,0x0
    80006424:	a0c080e7          	jalr	-1524(ra) # 80005e2c <_Z11printStringPKc>
    while (getCnt()) {
    80006428:	00048513          	mv	a0,s1
    8000642c:	00000097          	auipc	ra,0x0
    80006430:	f40080e7          	jalr	-192(ra) # 8000636c <_ZN9BufferCPP6getCntEv>
    80006434:	02050c63          	beqz	a0,8000646c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006438:	0084b783          	ld	a5,8(s1)
    8000643c:	0104a703          	lw	a4,16(s1)
    80006440:	00271713          	slli	a4,a4,0x2
    80006444:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006448:	0007c503          	lbu	a0,0(a5)
    8000644c:	ffffd097          	auipc	ra,0xffffd
    80006450:	d10080e7          	jalr	-752(ra) # 8000315c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006454:	0104a783          	lw	a5,16(s1)
    80006458:	0017879b          	addiw	a5,a5,1
    8000645c:	0004a703          	lw	a4,0(s1)
    80006460:	02e7e7bb          	remw	a5,a5,a4
    80006464:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006468:	fc1ff06f          	j	80006428 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000646c:	02100513          	li	a0,33
    80006470:	ffffd097          	auipc	ra,0xffffd
    80006474:	cec080e7          	jalr	-788(ra) # 8000315c <_ZN7Console4putcEc>
    Console::putc('\n');
    80006478:	00a00513          	li	a0,10
    8000647c:	ffffd097          	auipc	ra,0xffffd
    80006480:	ce0080e7          	jalr	-800(ra) # 8000315c <_ZN7Console4putcEc>
    mem_free(buffer);
    80006484:	0084b503          	ld	a0,8(s1)
    80006488:	ffffb097          	auipc	ra,0xffffb
    8000648c:	e94080e7          	jalr	-364(ra) # 8000131c <mem_free>
    delete itemAvailable;
    80006490:	0204b503          	ld	a0,32(s1)
    80006494:	00050863          	beqz	a0,800064a4 <_ZN9BufferCPPD1Ev+0xb0>
    80006498:	00053783          	ld	a5,0(a0)
    8000649c:	0087b783          	ld	a5,8(a5)
    800064a0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800064a4:	0184b503          	ld	a0,24(s1)
    800064a8:	00050863          	beqz	a0,800064b8 <_ZN9BufferCPPD1Ev+0xc4>
    800064ac:	00053783          	ld	a5,0(a0)
    800064b0:	0087b783          	ld	a5,8(a5)
    800064b4:	000780e7          	jalr	a5
    delete mutexTail;
    800064b8:	0304b503          	ld	a0,48(s1)
    800064bc:	00050863          	beqz	a0,800064cc <_ZN9BufferCPPD1Ev+0xd8>
    800064c0:	00053783          	ld	a5,0(a0)
    800064c4:	0087b783          	ld	a5,8(a5)
    800064c8:	000780e7          	jalr	a5
    delete mutexHead;
    800064cc:	0284b503          	ld	a0,40(s1)
    800064d0:	00050863          	beqz	a0,800064e0 <_ZN9BufferCPPD1Ev+0xec>
    800064d4:	00053783          	ld	a5,0(a0)
    800064d8:	0087b783          	ld	a5,8(a5)
    800064dc:	000780e7          	jalr	a5
}
    800064e0:	01813083          	ld	ra,24(sp)
    800064e4:	01013403          	ld	s0,16(sp)
    800064e8:	00813483          	ld	s1,8(sp)
    800064ec:	02010113          	addi	sp,sp,32
    800064f0:	00008067          	ret

00000000800064f4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800064f4:	fe010113          	addi	sp,sp,-32
    800064f8:	00113c23          	sd	ra,24(sp)
    800064fc:	00813823          	sd	s0,16(sp)
    80006500:	00913423          	sd	s1,8(sp)
    80006504:	01213023          	sd	s2,0(sp)
    80006508:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000650c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006510:	00600493          	li	s1,6
    while (--i > 0) {
    80006514:	fff4849b          	addiw	s1,s1,-1
    80006518:	04905463          	blez	s1,80006560 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	11c50513          	addi	a0,a0,284 # 80009638 <CONSOLE_STATUS+0x628>
    80006524:	00000097          	auipc	ra,0x0
    80006528:	908080e7          	jalr	-1784(ra) # 80005e2c <_Z11printStringPKc>
        printInt(sleep_time);
    8000652c:	00000613          	li	a2,0
    80006530:	00a00593          	li	a1,10
    80006534:	0009051b          	sext.w	a0,s2
    80006538:	00000097          	auipc	ra,0x0
    8000653c:	aa4080e7          	jalr	-1372(ra) # 80005fdc <_Z8printIntiii>
        printString(" !\n");
    80006540:	00003517          	auipc	a0,0x3
    80006544:	10050513          	addi	a0,a0,256 # 80009640 <CONSOLE_STATUS+0x630>
    80006548:	00000097          	auipc	ra,0x0
    8000654c:	8e4080e7          	jalr	-1820(ra) # 80005e2c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006550:	00090513          	mv	a0,s2
    80006554:	ffffb097          	auipc	ra,0xffffb
    80006558:	ee0080e7          	jalr	-288(ra) # 80001434 <time_sleep>
    while (--i > 0) {
    8000655c:	fb9ff06f          	j	80006514 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006560:	00a00793          	li	a5,10
    80006564:	02f95933          	divu	s2,s2,a5
    80006568:	fff90913          	addi	s2,s2,-1
    8000656c:	00006797          	auipc	a5,0x6
    80006570:	91c78793          	addi	a5,a5,-1764 # 8000be88 <_ZL8finished>
    80006574:	01278933          	add	s2,a5,s2
    80006578:	00100793          	li	a5,1
    8000657c:	00f90023          	sb	a5,0(s2)
}
    80006580:	01813083          	ld	ra,24(sp)
    80006584:	01013403          	ld	s0,16(sp)
    80006588:	00813483          	ld	s1,8(sp)
    8000658c:	00013903          	ld	s2,0(sp)
    80006590:	02010113          	addi	sp,sp,32
    80006594:	00008067          	ret

0000000080006598 <_Z12testSleepingv>:

void testSleeping() {
    80006598:	fc010113          	addi	sp,sp,-64
    8000659c:	02113c23          	sd	ra,56(sp)
    800065a0:	02813823          	sd	s0,48(sp)
    800065a4:	02913423          	sd	s1,40(sp)
    800065a8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800065ac:	00a00793          	li	a5,10
    800065b0:	fcf43823          	sd	a5,-48(s0)
    800065b4:	01400793          	li	a5,20
    800065b8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800065bc:	00000493          	li	s1,0
    800065c0:	02c0006f          	j	800065ec <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800065c4:	00349793          	slli	a5,s1,0x3
    800065c8:	fd040613          	addi	a2,s0,-48
    800065cc:	00f60633          	add	a2,a2,a5
    800065d0:	00000597          	auipc	a1,0x0
    800065d4:	f2458593          	addi	a1,a1,-220 # 800064f4 <_ZL9sleepyRunPv>
    800065d8:	fc040513          	addi	a0,s0,-64
    800065dc:	00f50533          	add	a0,a0,a5
    800065e0:	ffffb097          	auipc	ra,0xffffb
    800065e4:	d68080e7          	jalr	-664(ra) # 80001348 <thread_create>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800065e8:	0014849b          	addiw	s1,s1,1
    800065ec:	00100793          	li	a5,1
    800065f0:	fc97dae3          	bge	a5,s1,800065c4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800065f4:	00006797          	auipc	a5,0x6
    800065f8:	8947c783          	lbu	a5,-1900(a5) # 8000be88 <_ZL8finished>
    800065fc:	fe078ce3          	beqz	a5,800065f4 <_Z12testSleepingv+0x5c>
    80006600:	00006797          	auipc	a5,0x6
    80006604:	8897c783          	lbu	a5,-1911(a5) # 8000be89 <_ZL8finished+0x1>
    80006608:	fe0786e3          	beqz	a5,800065f4 <_Z12testSleepingv+0x5c>
}
    8000660c:	03813083          	ld	ra,56(sp)
    80006610:	03013403          	ld	s0,48(sp)
    80006614:	02813483          	ld	s1,40(sp)
    80006618:	04010113          	addi	sp,sp,64
    8000661c:	00008067          	ret

0000000080006620 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006620:	fe010113          	addi	sp,sp,-32
    80006624:	00113c23          	sd	ra,24(sp)
    80006628:	00813823          	sd	s0,16(sp)
    8000662c:	00913423          	sd	s1,8(sp)
    80006630:	01213023          	sd	s2,0(sp)
    80006634:	02010413          	addi	s0,sp,32
    80006638:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000663c:	00100793          	li	a5,1
    80006640:	02a7f863          	bgeu	a5,a0,80006670 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006644:	00a00793          	li	a5,10
    80006648:	02f577b3          	remu	a5,a0,a5
    8000664c:	02078e63          	beqz	a5,80006688 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006650:	fff48513          	addi	a0,s1,-1
    80006654:	00000097          	auipc	ra,0x0
    80006658:	fcc080e7          	jalr	-52(ra) # 80006620 <_ZL9fibonaccim>
    8000665c:	00050913          	mv	s2,a0
    80006660:	ffe48513          	addi	a0,s1,-2
    80006664:	00000097          	auipc	ra,0x0
    80006668:	fbc080e7          	jalr	-68(ra) # 80006620 <_ZL9fibonaccim>
    8000666c:	00a90533          	add	a0,s2,a0
}
    80006670:	01813083          	ld	ra,24(sp)
    80006674:	01013403          	ld	s0,16(sp)
    80006678:	00813483          	ld	s1,8(sp)
    8000667c:	00013903          	ld	s2,0(sp)
    80006680:	02010113          	addi	sp,sp,32
    80006684:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	d8c080e7          	jalr	-628(ra) # 80001414 <thread_dispatch>
    80006690:	fc1ff06f          	j	80006650 <_ZL9fibonaccim+0x30>

0000000080006694 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006694:	fe010113          	addi	sp,sp,-32
    80006698:	00113c23          	sd	ra,24(sp)
    8000669c:	00813823          	sd	s0,16(sp)
    800066a0:	00913423          	sd	s1,8(sp)
    800066a4:	01213023          	sd	s2,0(sp)
    800066a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800066ac:	00a00493          	li	s1,10
    800066b0:	0400006f          	j	800066f0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800066b4:	00003517          	auipc	a0,0x3
    800066b8:	c2450513          	addi	a0,a0,-988 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800066bc:	fffff097          	auipc	ra,0xfffff
    800066c0:	770080e7          	jalr	1904(ra) # 80005e2c <_Z11printStringPKc>
    800066c4:	00000613          	li	a2,0
    800066c8:	00a00593          	li	a1,10
    800066cc:	00048513          	mv	a0,s1
    800066d0:	00000097          	auipc	ra,0x0
    800066d4:	90c080e7          	jalr	-1780(ra) # 80005fdc <_Z8printIntiii>
    800066d8:	00003517          	auipc	a0,0x3
    800066dc:	e1050513          	addi	a0,a0,-496 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800066e0:	fffff097          	auipc	ra,0xfffff
    800066e4:	74c080e7          	jalr	1868(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800066e8:	0014849b          	addiw	s1,s1,1
    800066ec:	0ff4f493          	andi	s1,s1,255
    800066f0:	00c00793          	li	a5,12
    800066f4:	fc97f0e3          	bgeu	a5,s1,800066b4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800066f8:	00003517          	auipc	a0,0x3
    800066fc:	be850513          	addi	a0,a0,-1048 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006700:	fffff097          	auipc	ra,0xfffff
    80006704:	72c080e7          	jalr	1836(ra) # 80005e2c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006708:	00500313          	li	t1,5
    thread_dispatch();
    8000670c:	ffffb097          	auipc	ra,0xffffb
    80006710:	d08080e7          	jalr	-760(ra) # 80001414 <thread_dispatch>

    uint64 result = fibonacci(16);
    80006714:	01000513          	li	a0,16
    80006718:	00000097          	auipc	ra,0x0
    8000671c:	f08080e7          	jalr	-248(ra) # 80006620 <_ZL9fibonaccim>
    80006720:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006724:	00003517          	auipc	a0,0x3
    80006728:	bcc50513          	addi	a0,a0,-1076 # 800092f0 <CONSOLE_STATUS+0x2e0>
    8000672c:	fffff097          	auipc	ra,0xfffff
    80006730:	700080e7          	jalr	1792(ra) # 80005e2c <_Z11printStringPKc>
    80006734:	00000613          	li	a2,0
    80006738:	00a00593          	li	a1,10
    8000673c:	0009051b          	sext.w	a0,s2
    80006740:	00000097          	auipc	ra,0x0
    80006744:	89c080e7          	jalr	-1892(ra) # 80005fdc <_Z8printIntiii>
    80006748:	00003517          	auipc	a0,0x3
    8000674c:	da050513          	addi	a0,a0,-608 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006750:	fffff097          	auipc	ra,0xfffff
    80006754:	6dc080e7          	jalr	1756(ra) # 80005e2c <_Z11printStringPKc>
    80006758:	0400006f          	j	80006798 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000675c:	00003517          	auipc	a0,0x3
    80006760:	b7c50513          	addi	a0,a0,-1156 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80006764:	fffff097          	auipc	ra,0xfffff
    80006768:	6c8080e7          	jalr	1736(ra) # 80005e2c <_Z11printStringPKc>
    8000676c:	00000613          	li	a2,0
    80006770:	00a00593          	li	a1,10
    80006774:	00048513          	mv	a0,s1
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	864080e7          	jalr	-1948(ra) # 80005fdc <_Z8printIntiii>
    80006780:	00003517          	auipc	a0,0x3
    80006784:	d6850513          	addi	a0,a0,-664 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006788:	fffff097          	auipc	ra,0xfffff
    8000678c:	6a4080e7          	jalr	1700(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006790:	0014849b          	addiw	s1,s1,1
    80006794:	0ff4f493          	andi	s1,s1,255
    80006798:	00f00793          	li	a5,15
    8000679c:	fc97f0e3          	bgeu	a5,s1,8000675c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800067a0:	00003517          	auipc	a0,0x3
    800067a4:	b6050513          	addi	a0,a0,-1184 # 80009300 <CONSOLE_STATUS+0x2f0>
    800067a8:	fffff097          	auipc	ra,0xfffff
    800067ac:	684080e7          	jalr	1668(ra) # 80005e2c <_Z11printStringPKc>
    finishedD = true;
    800067b0:	00100793          	li	a5,1
    800067b4:	00005717          	auipc	a4,0x5
    800067b8:	6cf70b23          	sb	a5,1750(a4) # 8000be8a <_ZL9finishedD>
    thread_dispatch();
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	c58080e7          	jalr	-936(ra) # 80001414 <thread_dispatch>
}
    800067c4:	01813083          	ld	ra,24(sp)
    800067c8:	01013403          	ld	s0,16(sp)
    800067cc:	00813483          	ld	s1,8(sp)
    800067d0:	00013903          	ld	s2,0(sp)
    800067d4:	02010113          	addi	sp,sp,32
    800067d8:	00008067          	ret

00000000800067dc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800067dc:	fe010113          	addi	sp,sp,-32
    800067e0:	00113c23          	sd	ra,24(sp)
    800067e4:	00813823          	sd	s0,16(sp)
    800067e8:	00913423          	sd	s1,8(sp)
    800067ec:	01213023          	sd	s2,0(sp)
    800067f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800067f4:	00000493          	li	s1,0
    800067f8:	0400006f          	j	80006838 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800067fc:	00003517          	auipc	a0,0x3
    80006800:	aac50513          	addi	a0,a0,-1364 # 800092a8 <CONSOLE_STATUS+0x298>
    80006804:	fffff097          	auipc	ra,0xfffff
    80006808:	628080e7          	jalr	1576(ra) # 80005e2c <_Z11printStringPKc>
    8000680c:	00000613          	li	a2,0
    80006810:	00a00593          	li	a1,10
    80006814:	00048513          	mv	a0,s1
    80006818:	fffff097          	auipc	ra,0xfffff
    8000681c:	7c4080e7          	jalr	1988(ra) # 80005fdc <_Z8printIntiii>
    80006820:	00003517          	auipc	a0,0x3
    80006824:	cc850513          	addi	a0,a0,-824 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006828:	fffff097          	auipc	ra,0xfffff
    8000682c:	604080e7          	jalr	1540(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006830:	0014849b          	addiw	s1,s1,1
    80006834:	0ff4f493          	andi	s1,s1,255
    80006838:	00200793          	li	a5,2
    8000683c:	fc97f0e3          	bgeu	a5,s1,800067fc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006840:	00003517          	auipc	a0,0x3
    80006844:	a7050513          	addi	a0,a0,-1424 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	5e4080e7          	jalr	1508(ra) # 80005e2c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006850:	00700313          	li	t1,7
    thread_dispatch();
    80006854:	ffffb097          	auipc	ra,0xffffb
    80006858:	bc0080e7          	jalr	-1088(ra) # 80001414 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000685c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006860:	00003517          	auipc	a0,0x3
    80006864:	a6050513          	addi	a0,a0,-1440 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80006868:	fffff097          	auipc	ra,0xfffff
    8000686c:	5c4080e7          	jalr	1476(ra) # 80005e2c <_Z11printStringPKc>
    80006870:	00000613          	li	a2,0
    80006874:	00a00593          	li	a1,10
    80006878:	0009051b          	sext.w	a0,s2
    8000687c:	fffff097          	auipc	ra,0xfffff
    80006880:	760080e7          	jalr	1888(ra) # 80005fdc <_Z8printIntiii>
    80006884:	00003517          	auipc	a0,0x3
    80006888:	c6450513          	addi	a0,a0,-924 # 800094e8 <CONSOLE_STATUS+0x4d8>
    8000688c:	fffff097          	auipc	ra,0xfffff
    80006890:	5a0080e7          	jalr	1440(ra) # 80005e2c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006894:	00c00513          	li	a0,12
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	d88080e7          	jalr	-632(ra) # 80006620 <_ZL9fibonaccim>
    800068a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800068a4:	00003517          	auipc	a0,0x3
    800068a8:	a2450513          	addi	a0,a0,-1500 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800068ac:	fffff097          	auipc	ra,0xfffff
    800068b0:	580080e7          	jalr	1408(ra) # 80005e2c <_Z11printStringPKc>
    800068b4:	00000613          	li	a2,0
    800068b8:	00a00593          	li	a1,10
    800068bc:	0009051b          	sext.w	a0,s2
    800068c0:	fffff097          	auipc	ra,0xfffff
    800068c4:	71c080e7          	jalr	1820(ra) # 80005fdc <_Z8printIntiii>
    800068c8:	00003517          	auipc	a0,0x3
    800068cc:	c2050513          	addi	a0,a0,-992 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800068d0:	fffff097          	auipc	ra,0xfffff
    800068d4:	55c080e7          	jalr	1372(ra) # 80005e2c <_Z11printStringPKc>
    800068d8:	0400006f          	j	80006918 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800068dc:	00003517          	auipc	a0,0x3
    800068e0:	9cc50513          	addi	a0,a0,-1588 # 800092a8 <CONSOLE_STATUS+0x298>
    800068e4:	fffff097          	auipc	ra,0xfffff
    800068e8:	548080e7          	jalr	1352(ra) # 80005e2c <_Z11printStringPKc>
    800068ec:	00000613          	li	a2,0
    800068f0:	00a00593          	li	a1,10
    800068f4:	00048513          	mv	a0,s1
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	6e4080e7          	jalr	1764(ra) # 80005fdc <_Z8printIntiii>
    80006900:	00003517          	auipc	a0,0x3
    80006904:	be850513          	addi	a0,a0,-1048 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006908:	fffff097          	auipc	ra,0xfffff
    8000690c:	524080e7          	jalr	1316(ra) # 80005e2c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006910:	0014849b          	addiw	s1,s1,1
    80006914:	0ff4f493          	andi	s1,s1,255
    80006918:	00500793          	li	a5,5
    8000691c:	fc97f0e3          	bgeu	a5,s1,800068dc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006920:	00003517          	auipc	a0,0x3
    80006924:	96050513          	addi	a0,a0,-1696 # 80009280 <CONSOLE_STATUS+0x270>
    80006928:	fffff097          	auipc	ra,0xfffff
    8000692c:	504080e7          	jalr	1284(ra) # 80005e2c <_Z11printStringPKc>
    finishedC = true;
    80006930:	00100793          	li	a5,1
    80006934:	00005717          	auipc	a4,0x5
    80006938:	54f70ba3          	sb	a5,1367(a4) # 8000be8b <_ZL9finishedC>
    thread_dispatch();
    8000693c:	ffffb097          	auipc	ra,0xffffb
    80006940:	ad8080e7          	jalr	-1320(ra) # 80001414 <thread_dispatch>
}
    80006944:	01813083          	ld	ra,24(sp)
    80006948:	01013403          	ld	s0,16(sp)
    8000694c:	00813483          	ld	s1,8(sp)
    80006950:	00013903          	ld	s2,0(sp)
    80006954:	02010113          	addi	sp,sp,32
    80006958:	00008067          	ret

000000008000695c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000695c:	fe010113          	addi	sp,sp,-32
    80006960:	00113c23          	sd	ra,24(sp)
    80006964:	00813823          	sd	s0,16(sp)
    80006968:	00913423          	sd	s1,8(sp)
    8000696c:	01213023          	sd	s2,0(sp)
    80006970:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006974:	00000913          	li	s2,0
    80006978:	0400006f          	j	800069b8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000697c:	ffffb097          	auipc	ra,0xffffb
    80006980:	a98080e7          	jalr	-1384(ra) # 80001414 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006984:	00148493          	addi	s1,s1,1
    80006988:	000027b7          	lui	a5,0x2
    8000698c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006990:	0097ee63          	bltu	a5,s1,800069ac <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006994:	00000713          	li	a4,0
    80006998:	000077b7          	lui	a5,0x7
    8000699c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800069a0:	fce7eee3          	bltu	a5,a4,8000697c <_ZL11workerBodyBPv+0x20>
    800069a4:	00170713          	addi	a4,a4,1
    800069a8:	ff1ff06f          	j	80006998 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800069ac:	00a00793          	li	a5,10
    800069b0:	04f90663          	beq	s2,a5,800069fc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800069b4:	00190913          	addi	s2,s2,1
    800069b8:	00f00793          	li	a5,15
    800069bc:	0527e463          	bltu	a5,s2,80006a04 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800069c0:	00003517          	auipc	a0,0x3
    800069c4:	8d050513          	addi	a0,a0,-1840 # 80009290 <CONSOLE_STATUS+0x280>
    800069c8:	fffff097          	auipc	ra,0xfffff
    800069cc:	464080e7          	jalr	1124(ra) # 80005e2c <_Z11printStringPKc>
    800069d0:	00000613          	li	a2,0
    800069d4:	00a00593          	li	a1,10
    800069d8:	0009051b          	sext.w	a0,s2
    800069dc:	fffff097          	auipc	ra,0xfffff
    800069e0:	600080e7          	jalr	1536(ra) # 80005fdc <_Z8printIntiii>
    800069e4:	00003517          	auipc	a0,0x3
    800069e8:	b0450513          	addi	a0,a0,-1276 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800069ec:	fffff097          	auipc	ra,0xfffff
    800069f0:	440080e7          	jalr	1088(ra) # 80005e2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800069f4:	00000493          	li	s1,0
    800069f8:	f91ff06f          	j	80006988 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800069fc:	14102ff3          	csrr	t6,sepc
    80006a00:	fb5ff06f          	j	800069b4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006a04:	00003517          	auipc	a0,0x3
    80006a08:	89450513          	addi	a0,a0,-1900 # 80009298 <CONSOLE_STATUS+0x288>
    80006a0c:	fffff097          	auipc	ra,0xfffff
    80006a10:	420080e7          	jalr	1056(ra) # 80005e2c <_Z11printStringPKc>
    finishedB = true;
    80006a14:	00100793          	li	a5,1
    80006a18:	00005717          	auipc	a4,0x5
    80006a1c:	46f70a23          	sb	a5,1140(a4) # 8000be8c <_ZL9finishedB>
    thread_dispatch();
    80006a20:	ffffb097          	auipc	ra,0xffffb
    80006a24:	9f4080e7          	jalr	-1548(ra) # 80001414 <thread_dispatch>
}
    80006a28:	01813083          	ld	ra,24(sp)
    80006a2c:	01013403          	ld	s0,16(sp)
    80006a30:	00813483          	ld	s1,8(sp)
    80006a34:	00013903          	ld	s2,0(sp)
    80006a38:	02010113          	addi	sp,sp,32
    80006a3c:	00008067          	ret

0000000080006a40 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006a40:	fe010113          	addi	sp,sp,-32
    80006a44:	00113c23          	sd	ra,24(sp)
    80006a48:	00813823          	sd	s0,16(sp)
    80006a4c:	00913423          	sd	s1,8(sp)
    80006a50:	01213023          	sd	s2,0(sp)
    80006a54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006a58:	00000913          	li	s2,0
    80006a5c:	0380006f          	j	80006a94 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006a60:	ffffb097          	auipc	ra,0xffffb
    80006a64:	9b4080e7          	jalr	-1612(ra) # 80001414 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006a68:	00148493          	addi	s1,s1,1
    80006a6c:	000027b7          	lui	a5,0x2
    80006a70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a74:	0097ee63          	bltu	a5,s1,80006a90 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a78:	00000713          	li	a4,0
    80006a7c:	000077b7          	lui	a5,0x7
    80006a80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a84:	fce7eee3          	bltu	a5,a4,80006a60 <_ZL11workerBodyAPv+0x20>
    80006a88:	00170713          	addi	a4,a4,1
    80006a8c:	ff1ff06f          	j	80006a7c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a90:	00190913          	addi	s2,s2,1
    80006a94:	00900793          	li	a5,9
    80006a98:	0527e063          	bltu	a5,s2,80006ad8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a9c:	00002517          	auipc	a0,0x2
    80006aa0:	7dc50513          	addi	a0,a0,2012 # 80009278 <CONSOLE_STATUS+0x268>
    80006aa4:	fffff097          	auipc	ra,0xfffff
    80006aa8:	388080e7          	jalr	904(ra) # 80005e2c <_Z11printStringPKc>
    80006aac:	00000613          	li	a2,0
    80006ab0:	00a00593          	li	a1,10
    80006ab4:	0009051b          	sext.w	a0,s2
    80006ab8:	fffff097          	auipc	ra,0xfffff
    80006abc:	524080e7          	jalr	1316(ra) # 80005fdc <_Z8printIntiii>
    80006ac0:	00003517          	auipc	a0,0x3
    80006ac4:	a2850513          	addi	a0,a0,-1496 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	364080e7          	jalr	868(ra) # 80005e2c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006ad0:	00000493          	li	s1,0
    80006ad4:	f99ff06f          	j	80006a6c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006ad8:	00002517          	auipc	a0,0x2
    80006adc:	7a850513          	addi	a0,a0,1960 # 80009280 <CONSOLE_STATUS+0x270>
    80006ae0:	fffff097          	auipc	ra,0xfffff
    80006ae4:	34c080e7          	jalr	844(ra) # 80005e2c <_Z11printStringPKc>
    finishedA = true;
    80006ae8:	00100793          	li	a5,1
    80006aec:	00005717          	auipc	a4,0x5
    80006af0:	3af700a3          	sb	a5,929(a4) # 8000be8d <_ZL9finishedA>
}
    80006af4:	01813083          	ld	ra,24(sp)
    80006af8:	01013403          	ld	s0,16(sp)
    80006afc:	00813483          	ld	s1,8(sp)
    80006b00:	00013903          	ld	s2,0(sp)
    80006b04:	02010113          	addi	sp,sp,32
    80006b08:	00008067          	ret

0000000080006b0c <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006b0c:	fd010113          	addi	sp,sp,-48
    80006b10:	02113423          	sd	ra,40(sp)
    80006b14:	02813023          	sd	s0,32(sp)
    80006b18:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006b1c:	00000613          	li	a2,0
    80006b20:	00000597          	auipc	a1,0x0
    80006b24:	f2058593          	addi	a1,a1,-224 # 80006a40 <_ZL11workerBodyAPv>
    80006b28:	fd040513          	addi	a0,s0,-48
    80006b2c:	ffffb097          	auipc	ra,0xffffb
    80006b30:	81c080e7          	jalr	-2020(ra) # 80001348 <thread_create>
    printString("ThreadA created\n");
    80006b34:	00002517          	auipc	a0,0x2
    80006b38:	7dc50513          	addi	a0,a0,2012 # 80009310 <CONSOLE_STATUS+0x300>
    80006b3c:	fffff097          	auipc	ra,0xfffff
    80006b40:	2f0080e7          	jalr	752(ra) # 80005e2c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006b44:	00000613          	li	a2,0
    80006b48:	00000597          	auipc	a1,0x0
    80006b4c:	e1458593          	addi	a1,a1,-492 # 8000695c <_ZL11workerBodyBPv>
    80006b50:	fd840513          	addi	a0,s0,-40
    80006b54:	ffffa097          	auipc	ra,0xffffa
    80006b58:	7f4080e7          	jalr	2036(ra) # 80001348 <thread_create>
    printString("ThreadB created\n");
    80006b5c:	00002517          	auipc	a0,0x2
    80006b60:	7cc50513          	addi	a0,a0,1996 # 80009328 <CONSOLE_STATUS+0x318>
    80006b64:	fffff097          	auipc	ra,0xfffff
    80006b68:	2c8080e7          	jalr	712(ra) # 80005e2c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b6c:	00000613          	li	a2,0
    80006b70:	00000597          	auipc	a1,0x0
    80006b74:	c6c58593          	addi	a1,a1,-916 # 800067dc <_ZL11workerBodyCPv>
    80006b78:	fe040513          	addi	a0,s0,-32
    80006b7c:	ffffa097          	auipc	ra,0xffffa
    80006b80:	7cc080e7          	jalr	1996(ra) # 80001348 <thread_create>
    printString("ThreadC created\n");
    80006b84:	00002517          	auipc	a0,0x2
    80006b88:	7bc50513          	addi	a0,a0,1980 # 80009340 <CONSOLE_STATUS+0x330>
    80006b8c:	fffff097          	auipc	ra,0xfffff
    80006b90:	2a0080e7          	jalr	672(ra) # 80005e2c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b94:	00000613          	li	a2,0
    80006b98:	00000597          	auipc	a1,0x0
    80006b9c:	afc58593          	addi	a1,a1,-1284 # 80006694 <_ZL11workerBodyDPv>
    80006ba0:	fe840513          	addi	a0,s0,-24
    80006ba4:	ffffa097          	auipc	ra,0xffffa
    80006ba8:	7a4080e7          	jalr	1956(ra) # 80001348 <thread_create>
    printString("ThreadD created\n");
    80006bac:	00002517          	auipc	a0,0x2
    80006bb0:	7ac50513          	addi	a0,a0,1964 # 80009358 <CONSOLE_STATUS+0x348>
    80006bb4:	fffff097          	auipc	ra,0xfffff
    80006bb8:	278080e7          	jalr	632(ra) # 80005e2c <_Z11printStringPKc>
    80006bbc:	00c0006f          	j	80006bc8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006bc0:	ffffb097          	auipc	ra,0xffffb
    80006bc4:	854080e7          	jalr	-1964(ra) # 80001414 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006bc8:	00005797          	auipc	a5,0x5
    80006bcc:	2c57c783          	lbu	a5,709(a5) # 8000be8d <_ZL9finishedA>
    80006bd0:	fe0788e3          	beqz	a5,80006bc0 <_Z16System_Mode_testv+0xb4>
    80006bd4:	00005797          	auipc	a5,0x5
    80006bd8:	2b87c783          	lbu	a5,696(a5) # 8000be8c <_ZL9finishedB>
    80006bdc:	fe0782e3          	beqz	a5,80006bc0 <_Z16System_Mode_testv+0xb4>
    80006be0:	00005797          	auipc	a5,0x5
    80006be4:	2ab7c783          	lbu	a5,683(a5) # 8000be8b <_ZL9finishedC>
    80006be8:	fc078ce3          	beqz	a5,80006bc0 <_Z16System_Mode_testv+0xb4>
    80006bec:	00005797          	auipc	a5,0x5
    80006bf0:	29e7c783          	lbu	a5,670(a5) # 8000be8a <_ZL9finishedD>
    80006bf4:	fc0786e3          	beqz	a5,80006bc0 <_Z16System_Mode_testv+0xb4>
    }

}
    80006bf8:	02813083          	ld	ra,40(sp)
    80006bfc:	02013403          	ld	s0,32(sp)
    80006c00:	03010113          	addi	sp,sp,48
    80006c04:	00008067          	ret

0000000080006c08 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006c08:	fe010113          	addi	sp,sp,-32
    80006c0c:	00113c23          	sd	ra,24(sp)
    80006c10:	00813823          	sd	s0,16(sp)
    80006c14:	00913423          	sd	s1,8(sp)
    80006c18:	01213023          	sd	s2,0(sp)
    80006c1c:	02010413          	addi	s0,sp,32
    80006c20:	00050493          	mv	s1,a0
    80006c24:	00058913          	mv	s2,a1
    80006c28:	0015879b          	addiw	a5,a1,1
    80006c2c:	0007851b          	sext.w	a0,a5
    80006c30:	00f4a023          	sw	a5,0(s1)
    80006c34:	0004a823          	sw	zero,16(s1)
    80006c38:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006c3c:	00251513          	slli	a0,a0,0x2
    80006c40:	ffffa097          	auipc	ra,0xffffa
    80006c44:	6b0080e7          	jalr	1712(ra) # 800012f0 <mem_alloc>
    80006c48:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006c4c:	00000593          	li	a1,0
    80006c50:	02048513          	addi	a0,s1,32
    80006c54:	ffffb097          	auipc	ra,0xffffb
    80006c58:	808080e7          	jalr	-2040(ra) # 8000145c <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006c5c:	00090593          	mv	a1,s2
    80006c60:	01848513          	addi	a0,s1,24
    80006c64:	ffffa097          	auipc	ra,0xffffa
    80006c68:	7f8080e7          	jalr	2040(ra) # 8000145c <sem_open>
    sem_open(&mutexHead, 1);
    80006c6c:	00100593          	li	a1,1
    80006c70:	02848513          	addi	a0,s1,40
    80006c74:	ffffa097          	auipc	ra,0xffffa
    80006c78:	7e8080e7          	jalr	2024(ra) # 8000145c <sem_open>
    sem_open(&mutexTail, 1);
    80006c7c:	00100593          	li	a1,1
    80006c80:	03048513          	addi	a0,s1,48
    80006c84:	ffffa097          	auipc	ra,0xffffa
    80006c88:	7d8080e7          	jalr	2008(ra) # 8000145c <sem_open>
}
    80006c8c:	01813083          	ld	ra,24(sp)
    80006c90:	01013403          	ld	s0,16(sp)
    80006c94:	00813483          	ld	s1,8(sp)
    80006c98:	00013903          	ld	s2,0(sp)
    80006c9c:	02010113          	addi	sp,sp,32
    80006ca0:	00008067          	ret

0000000080006ca4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006ca4:	fe010113          	addi	sp,sp,-32
    80006ca8:	00113c23          	sd	ra,24(sp)
    80006cac:	00813823          	sd	s0,16(sp)
    80006cb0:	00913423          	sd	s1,8(sp)
    80006cb4:	01213023          	sd	s2,0(sp)
    80006cb8:	02010413          	addi	s0,sp,32
    80006cbc:	00050493          	mv	s1,a0
    80006cc0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006cc4:	01853503          	ld	a0,24(a0)
    80006cc8:	ffffa097          	auipc	ra,0xffffa
    80006ccc:	7f4080e7          	jalr	2036(ra) # 800014bc <sem_wait>

    sem_wait(mutexTail);
    80006cd0:	0304b503          	ld	a0,48(s1)
    80006cd4:	ffffa097          	auipc	ra,0xffffa
    80006cd8:	7e8080e7          	jalr	2024(ra) # 800014bc <sem_wait>
    buffer[tail] = val;
    80006cdc:	0084b783          	ld	a5,8(s1)
    80006ce0:	0144a703          	lw	a4,20(s1)
    80006ce4:	00271713          	slli	a4,a4,0x2
    80006ce8:	00e787b3          	add	a5,a5,a4
    80006cec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006cf0:	0144a783          	lw	a5,20(s1)
    80006cf4:	0017879b          	addiw	a5,a5,1
    80006cf8:	0004a703          	lw	a4,0(s1)
    80006cfc:	02e7e7bb          	remw	a5,a5,a4
    80006d00:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006d04:	0304b503          	ld	a0,48(s1)
    80006d08:	ffffa097          	auipc	ra,0xffffa
    80006d0c:	7dc080e7          	jalr	2012(ra) # 800014e4 <sem_signal>

    sem_signal(itemAvailable);
    80006d10:	0204b503          	ld	a0,32(s1)
    80006d14:	ffffa097          	auipc	ra,0xffffa
    80006d18:	7d0080e7          	jalr	2000(ra) # 800014e4 <sem_signal>

}
    80006d1c:	01813083          	ld	ra,24(sp)
    80006d20:	01013403          	ld	s0,16(sp)
    80006d24:	00813483          	ld	s1,8(sp)
    80006d28:	00013903          	ld	s2,0(sp)
    80006d2c:	02010113          	addi	sp,sp,32
    80006d30:	00008067          	ret

0000000080006d34 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006d34:	fe010113          	addi	sp,sp,-32
    80006d38:	00113c23          	sd	ra,24(sp)
    80006d3c:	00813823          	sd	s0,16(sp)
    80006d40:	00913423          	sd	s1,8(sp)
    80006d44:	01213023          	sd	s2,0(sp)
    80006d48:	02010413          	addi	s0,sp,32
    80006d4c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006d50:	02053503          	ld	a0,32(a0)
    80006d54:	ffffa097          	auipc	ra,0xffffa
    80006d58:	768080e7          	jalr	1896(ra) # 800014bc <sem_wait>

    sem_wait(mutexHead);
    80006d5c:	0284b503          	ld	a0,40(s1)
    80006d60:	ffffa097          	auipc	ra,0xffffa
    80006d64:	75c080e7          	jalr	1884(ra) # 800014bc <sem_wait>

    int ret = buffer[head];
    80006d68:	0084b703          	ld	a4,8(s1)
    80006d6c:	0104a783          	lw	a5,16(s1)
    80006d70:	00279693          	slli	a3,a5,0x2
    80006d74:	00d70733          	add	a4,a4,a3
    80006d78:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006d7c:	0017879b          	addiw	a5,a5,1
    80006d80:	0004a703          	lw	a4,0(s1)
    80006d84:	02e7e7bb          	remw	a5,a5,a4
    80006d88:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006d8c:	0284b503          	ld	a0,40(s1)
    80006d90:	ffffa097          	auipc	ra,0xffffa
    80006d94:	754080e7          	jalr	1876(ra) # 800014e4 <sem_signal>

    sem_signal(spaceAvailable);
    80006d98:	0184b503          	ld	a0,24(s1)
    80006d9c:	ffffa097          	auipc	ra,0xffffa
    80006da0:	748080e7          	jalr	1864(ra) # 800014e4 <sem_signal>

    return ret;
}
    80006da4:	00090513          	mv	a0,s2
    80006da8:	01813083          	ld	ra,24(sp)
    80006dac:	01013403          	ld	s0,16(sp)
    80006db0:	00813483          	ld	s1,8(sp)
    80006db4:	00013903          	ld	s2,0(sp)
    80006db8:	02010113          	addi	sp,sp,32
    80006dbc:	00008067          	ret

0000000080006dc0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006dc0:	fe010113          	addi	sp,sp,-32
    80006dc4:	00113c23          	sd	ra,24(sp)
    80006dc8:	00813823          	sd	s0,16(sp)
    80006dcc:	00913423          	sd	s1,8(sp)
    80006dd0:	01213023          	sd	s2,0(sp)
    80006dd4:	02010413          	addi	s0,sp,32
    80006dd8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006ddc:	02853503          	ld	a0,40(a0)
    80006de0:	ffffa097          	auipc	ra,0xffffa
    80006de4:	6dc080e7          	jalr	1756(ra) # 800014bc <sem_wait>
    sem_wait(mutexTail);
    80006de8:	0304b503          	ld	a0,48(s1)
    80006dec:	ffffa097          	auipc	ra,0xffffa
    80006df0:	6d0080e7          	jalr	1744(ra) # 800014bc <sem_wait>

    if (tail >= head) {
    80006df4:	0144a783          	lw	a5,20(s1)
    80006df8:	0104a903          	lw	s2,16(s1)
    80006dfc:	0327ce63          	blt	a5,s2,80006e38 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006e00:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006e04:	0304b503          	ld	a0,48(s1)
    80006e08:	ffffa097          	auipc	ra,0xffffa
    80006e0c:	6dc080e7          	jalr	1756(ra) # 800014e4 <sem_signal>
    sem_signal(mutexHead);
    80006e10:	0284b503          	ld	a0,40(s1)
    80006e14:	ffffa097          	auipc	ra,0xffffa
    80006e18:	6d0080e7          	jalr	1744(ra) # 800014e4 <sem_signal>

    return ret;
}
    80006e1c:	00090513          	mv	a0,s2
    80006e20:	01813083          	ld	ra,24(sp)
    80006e24:	01013403          	ld	s0,16(sp)
    80006e28:	00813483          	ld	s1,8(sp)
    80006e2c:	00013903          	ld	s2,0(sp)
    80006e30:	02010113          	addi	sp,sp,32
    80006e34:	00008067          	ret
        ret = cap - head + tail;
    80006e38:	0004a703          	lw	a4,0(s1)
    80006e3c:	4127093b          	subw	s2,a4,s2
    80006e40:	00f9093b          	addw	s2,s2,a5
    80006e44:	fc1ff06f          	j	80006e04 <_ZN6Buffer6getCntEv+0x44>

0000000080006e48 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006e48:	fe010113          	addi	sp,sp,-32
    80006e4c:	00113c23          	sd	ra,24(sp)
    80006e50:	00813823          	sd	s0,16(sp)
    80006e54:	00913423          	sd	s1,8(sp)
    80006e58:	02010413          	addi	s0,sp,32
    80006e5c:	00050493          	mv	s1,a0
    putc('\n');
    80006e60:	00a00513          	li	a0,10
    80006e64:	ffffa097          	auipc	ra,0xffffa
    80006e68:	704080e7          	jalr	1796(ra) # 80001568 <putc>
    printString("Buffer deleted!\n");
    80006e6c:	00002517          	auipc	a0,0x2
    80006e70:	7b450513          	addi	a0,a0,1972 # 80009620 <CONSOLE_STATUS+0x610>
    80006e74:	fffff097          	auipc	ra,0xfffff
    80006e78:	fb8080e7          	jalr	-72(ra) # 80005e2c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006e7c:	00048513          	mv	a0,s1
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	f40080e7          	jalr	-192(ra) # 80006dc0 <_ZN6Buffer6getCntEv>
    80006e88:	02a05c63          	blez	a0,80006ec0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006e8c:	0084b783          	ld	a5,8(s1)
    80006e90:	0104a703          	lw	a4,16(s1)
    80006e94:	00271713          	slli	a4,a4,0x2
    80006e98:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006e9c:	0007c503          	lbu	a0,0(a5)
    80006ea0:	ffffa097          	auipc	ra,0xffffa
    80006ea4:	6c8080e7          	jalr	1736(ra) # 80001568 <putc>
        head = (head + 1) % cap;
    80006ea8:	0104a783          	lw	a5,16(s1)
    80006eac:	0017879b          	addiw	a5,a5,1
    80006eb0:	0004a703          	lw	a4,0(s1)
    80006eb4:	02e7e7bb          	remw	a5,a5,a4
    80006eb8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006ebc:	fc1ff06f          	j	80006e7c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006ec0:	02100513          	li	a0,33
    80006ec4:	ffffa097          	auipc	ra,0xffffa
    80006ec8:	6a4080e7          	jalr	1700(ra) # 80001568 <putc>
    putc('\n');
    80006ecc:	00a00513          	li	a0,10
    80006ed0:	ffffa097          	auipc	ra,0xffffa
    80006ed4:	698080e7          	jalr	1688(ra) # 80001568 <putc>
    mem_free(buffer);
    80006ed8:	0084b503          	ld	a0,8(s1)
    80006edc:	ffffa097          	auipc	ra,0xffffa
    80006ee0:	440080e7          	jalr	1088(ra) # 8000131c <mem_free>
    sem_close(itemAvailable);
    80006ee4:	0204b503          	ld	a0,32(s1)
    80006ee8:	ffffa097          	auipc	ra,0xffffa
    80006eec:	5ac080e7          	jalr	1452(ra) # 80001494 <sem_close>
    sem_close(spaceAvailable);
    80006ef0:	0184b503          	ld	a0,24(s1)
    80006ef4:	ffffa097          	auipc	ra,0xffffa
    80006ef8:	5a0080e7          	jalr	1440(ra) # 80001494 <sem_close>
    sem_close(mutexTail);
    80006efc:	0304b503          	ld	a0,48(s1)
    80006f00:	ffffa097          	auipc	ra,0xffffa
    80006f04:	594080e7          	jalr	1428(ra) # 80001494 <sem_close>
    sem_close(mutexHead);
    80006f08:	0284b503          	ld	a0,40(s1)
    80006f0c:	ffffa097          	auipc	ra,0xffffa
    80006f10:	588080e7          	jalr	1416(ra) # 80001494 <sem_close>
}
    80006f14:	01813083          	ld	ra,24(sp)
    80006f18:	01013403          	ld	s0,16(sp)
    80006f1c:	00813483          	ld	s1,8(sp)
    80006f20:	02010113          	addi	sp,sp,32
    80006f24:	00008067          	ret

0000000080006f28 <start>:
    80006f28:	ff010113          	addi	sp,sp,-16
    80006f2c:	00813423          	sd	s0,8(sp)
    80006f30:	01010413          	addi	s0,sp,16
    80006f34:	300027f3          	csrr	a5,mstatus
    80006f38:	ffffe737          	lui	a4,0xffffe
    80006f3c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff170f>
    80006f40:	00e7f7b3          	and	a5,a5,a4
    80006f44:	00001737          	lui	a4,0x1
    80006f48:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006f4c:	00e7e7b3          	or	a5,a5,a4
    80006f50:	30079073          	csrw	mstatus,a5
    80006f54:	00000797          	auipc	a5,0x0
    80006f58:	16078793          	addi	a5,a5,352 # 800070b4 <system_main>
    80006f5c:	34179073          	csrw	mepc,a5
    80006f60:	00000793          	li	a5,0
    80006f64:	18079073          	csrw	satp,a5
    80006f68:	000107b7          	lui	a5,0x10
    80006f6c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006f70:	30279073          	csrw	medeleg,a5
    80006f74:	30379073          	csrw	mideleg,a5
    80006f78:	104027f3          	csrr	a5,sie
    80006f7c:	2227e793          	ori	a5,a5,546
    80006f80:	10479073          	csrw	sie,a5
    80006f84:	fff00793          	li	a5,-1
    80006f88:	00a7d793          	srli	a5,a5,0xa
    80006f8c:	3b079073          	csrw	pmpaddr0,a5
    80006f90:	00f00793          	li	a5,15
    80006f94:	3a079073          	csrw	pmpcfg0,a5
    80006f98:	f14027f3          	csrr	a5,mhartid
    80006f9c:	0200c737          	lui	a4,0x200c
    80006fa0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006fa4:	0007869b          	sext.w	a3,a5
    80006fa8:	00269713          	slli	a4,a3,0x2
    80006fac:	000f4637          	lui	a2,0xf4
    80006fb0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006fb4:	00d70733          	add	a4,a4,a3
    80006fb8:	0037979b          	slliw	a5,a5,0x3
    80006fbc:	020046b7          	lui	a3,0x2004
    80006fc0:	00d787b3          	add	a5,a5,a3
    80006fc4:	00c585b3          	add	a1,a1,a2
    80006fc8:	00371693          	slli	a3,a4,0x3
    80006fcc:	00005717          	auipc	a4,0x5
    80006fd0:	ec470713          	addi	a4,a4,-316 # 8000be90 <timer_scratch>
    80006fd4:	00b7b023          	sd	a1,0(a5)
    80006fd8:	00d70733          	add	a4,a4,a3
    80006fdc:	00f73c23          	sd	a5,24(a4)
    80006fe0:	02c73023          	sd	a2,32(a4)
    80006fe4:	34071073          	csrw	mscratch,a4
    80006fe8:	00000797          	auipc	a5,0x0
    80006fec:	6e878793          	addi	a5,a5,1768 # 800076d0 <timervec>
    80006ff0:	30579073          	csrw	mtvec,a5
    80006ff4:	300027f3          	csrr	a5,mstatus
    80006ff8:	0087e793          	ori	a5,a5,8
    80006ffc:	30079073          	csrw	mstatus,a5
    80007000:	304027f3          	csrr	a5,mie
    80007004:	0807e793          	ori	a5,a5,128
    80007008:	30479073          	csrw	mie,a5
    8000700c:	f14027f3          	csrr	a5,mhartid
    80007010:	0007879b          	sext.w	a5,a5
    80007014:	00078213          	mv	tp,a5
    80007018:	30200073          	mret
    8000701c:	00813403          	ld	s0,8(sp)
    80007020:	01010113          	addi	sp,sp,16
    80007024:	00008067          	ret

0000000080007028 <timerinit>:
    80007028:	ff010113          	addi	sp,sp,-16
    8000702c:	00813423          	sd	s0,8(sp)
    80007030:	01010413          	addi	s0,sp,16
    80007034:	f14027f3          	csrr	a5,mhartid
    80007038:	0200c737          	lui	a4,0x200c
    8000703c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007040:	0007869b          	sext.w	a3,a5
    80007044:	00269713          	slli	a4,a3,0x2
    80007048:	000f4637          	lui	a2,0xf4
    8000704c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007050:	00d70733          	add	a4,a4,a3
    80007054:	0037979b          	slliw	a5,a5,0x3
    80007058:	020046b7          	lui	a3,0x2004
    8000705c:	00d787b3          	add	a5,a5,a3
    80007060:	00c585b3          	add	a1,a1,a2
    80007064:	00371693          	slli	a3,a4,0x3
    80007068:	00005717          	auipc	a4,0x5
    8000706c:	e2870713          	addi	a4,a4,-472 # 8000be90 <timer_scratch>
    80007070:	00b7b023          	sd	a1,0(a5)
    80007074:	00d70733          	add	a4,a4,a3
    80007078:	00f73c23          	sd	a5,24(a4)
    8000707c:	02c73023          	sd	a2,32(a4)
    80007080:	34071073          	csrw	mscratch,a4
    80007084:	00000797          	auipc	a5,0x0
    80007088:	64c78793          	addi	a5,a5,1612 # 800076d0 <timervec>
    8000708c:	30579073          	csrw	mtvec,a5
    80007090:	300027f3          	csrr	a5,mstatus
    80007094:	0087e793          	ori	a5,a5,8
    80007098:	30079073          	csrw	mstatus,a5
    8000709c:	304027f3          	csrr	a5,mie
    800070a0:	0807e793          	ori	a5,a5,128
    800070a4:	30479073          	csrw	mie,a5
    800070a8:	00813403          	ld	s0,8(sp)
    800070ac:	01010113          	addi	sp,sp,16
    800070b0:	00008067          	ret

00000000800070b4 <system_main>:
    800070b4:	fe010113          	addi	sp,sp,-32
    800070b8:	00813823          	sd	s0,16(sp)
    800070bc:	00913423          	sd	s1,8(sp)
    800070c0:	00113c23          	sd	ra,24(sp)
    800070c4:	02010413          	addi	s0,sp,32
    800070c8:	00000097          	auipc	ra,0x0
    800070cc:	0c4080e7          	jalr	196(ra) # 8000718c <cpuid>
    800070d0:	00005497          	auipc	s1,0x5
    800070d4:	a9048493          	addi	s1,s1,-1392 # 8000bb60 <started>
    800070d8:	02050263          	beqz	a0,800070fc <system_main+0x48>
    800070dc:	0004a783          	lw	a5,0(s1)
    800070e0:	0007879b          	sext.w	a5,a5
    800070e4:	fe078ce3          	beqz	a5,800070dc <system_main+0x28>
    800070e8:	0ff0000f          	fence
    800070ec:	00002517          	auipc	a0,0x2
    800070f0:	58c50513          	addi	a0,a0,1420 # 80009678 <CONSOLE_STATUS+0x668>
    800070f4:	00001097          	auipc	ra,0x1
    800070f8:	a78080e7          	jalr	-1416(ra) # 80007b6c <panic>
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	9cc080e7          	jalr	-1588(ra) # 80007ac8 <consoleinit>
    80007104:	00001097          	auipc	ra,0x1
    80007108:	158080e7          	jalr	344(ra) # 8000825c <printfinit>
    8000710c:	00002517          	auipc	a0,0x2
    80007110:	3dc50513          	addi	a0,a0,988 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80007114:	00001097          	auipc	ra,0x1
    80007118:	ab4080e7          	jalr	-1356(ra) # 80007bc8 <__printf>
    8000711c:	00002517          	auipc	a0,0x2
    80007120:	52c50513          	addi	a0,a0,1324 # 80009648 <CONSOLE_STATUS+0x638>
    80007124:	00001097          	auipc	ra,0x1
    80007128:	aa4080e7          	jalr	-1372(ra) # 80007bc8 <__printf>
    8000712c:	00002517          	auipc	a0,0x2
    80007130:	3bc50513          	addi	a0,a0,956 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80007134:	00001097          	auipc	ra,0x1
    80007138:	a94080e7          	jalr	-1388(ra) # 80007bc8 <__printf>
    8000713c:	00001097          	auipc	ra,0x1
    80007140:	4ac080e7          	jalr	1196(ra) # 800085e8 <kinit>
    80007144:	00000097          	auipc	ra,0x0
    80007148:	148080e7          	jalr	328(ra) # 8000728c <trapinit>
    8000714c:	00000097          	auipc	ra,0x0
    80007150:	16c080e7          	jalr	364(ra) # 800072b8 <trapinithart>
    80007154:	00000097          	auipc	ra,0x0
    80007158:	5bc080e7          	jalr	1468(ra) # 80007710 <plicinit>
    8000715c:	00000097          	auipc	ra,0x0
    80007160:	5dc080e7          	jalr	1500(ra) # 80007738 <plicinithart>
    80007164:	00000097          	auipc	ra,0x0
    80007168:	078080e7          	jalr	120(ra) # 800071dc <userinit>
    8000716c:	0ff0000f          	fence
    80007170:	00100793          	li	a5,1
    80007174:	00002517          	auipc	a0,0x2
    80007178:	4ec50513          	addi	a0,a0,1260 # 80009660 <CONSOLE_STATUS+0x650>
    8000717c:	00f4a023          	sw	a5,0(s1)
    80007180:	00001097          	auipc	ra,0x1
    80007184:	a48080e7          	jalr	-1464(ra) # 80007bc8 <__printf>
    80007188:	0000006f          	j	80007188 <system_main+0xd4>

000000008000718c <cpuid>:
    8000718c:	ff010113          	addi	sp,sp,-16
    80007190:	00813423          	sd	s0,8(sp)
    80007194:	01010413          	addi	s0,sp,16
    80007198:	00020513          	mv	a0,tp
    8000719c:	00813403          	ld	s0,8(sp)
    800071a0:	0005051b          	sext.w	a0,a0
    800071a4:	01010113          	addi	sp,sp,16
    800071a8:	00008067          	ret

00000000800071ac <mycpu>:
    800071ac:	ff010113          	addi	sp,sp,-16
    800071b0:	00813423          	sd	s0,8(sp)
    800071b4:	01010413          	addi	s0,sp,16
    800071b8:	00020793          	mv	a5,tp
    800071bc:	00813403          	ld	s0,8(sp)
    800071c0:	0007879b          	sext.w	a5,a5
    800071c4:	00779793          	slli	a5,a5,0x7
    800071c8:	00006517          	auipc	a0,0x6
    800071cc:	cf850513          	addi	a0,a0,-776 # 8000cec0 <cpus>
    800071d0:	00f50533          	add	a0,a0,a5
    800071d4:	01010113          	addi	sp,sp,16
    800071d8:	00008067          	ret

00000000800071dc <userinit>:
    800071dc:	ff010113          	addi	sp,sp,-16
    800071e0:	00813423          	sd	s0,8(sp)
    800071e4:	01010413          	addi	s0,sp,16
    800071e8:	00813403          	ld	s0,8(sp)
    800071ec:	01010113          	addi	sp,sp,16
    800071f0:	ffffa317          	auipc	t1,0xffffa
    800071f4:	44830067          	jr	1096(t1) # 80001638 <main>

00000000800071f8 <either_copyout>:
    800071f8:	ff010113          	addi	sp,sp,-16
    800071fc:	00813023          	sd	s0,0(sp)
    80007200:	00113423          	sd	ra,8(sp)
    80007204:	01010413          	addi	s0,sp,16
    80007208:	02051663          	bnez	a0,80007234 <either_copyout+0x3c>
    8000720c:	00058513          	mv	a0,a1
    80007210:	00060593          	mv	a1,a2
    80007214:	0006861b          	sext.w	a2,a3
    80007218:	00002097          	auipc	ra,0x2
    8000721c:	c5c080e7          	jalr	-932(ra) # 80008e74 <__memmove>
    80007220:	00813083          	ld	ra,8(sp)
    80007224:	00013403          	ld	s0,0(sp)
    80007228:	00000513          	li	a0,0
    8000722c:	01010113          	addi	sp,sp,16
    80007230:	00008067          	ret
    80007234:	00002517          	auipc	a0,0x2
    80007238:	46c50513          	addi	a0,a0,1132 # 800096a0 <CONSOLE_STATUS+0x690>
    8000723c:	00001097          	auipc	ra,0x1
    80007240:	930080e7          	jalr	-1744(ra) # 80007b6c <panic>

0000000080007244 <either_copyin>:
    80007244:	ff010113          	addi	sp,sp,-16
    80007248:	00813023          	sd	s0,0(sp)
    8000724c:	00113423          	sd	ra,8(sp)
    80007250:	01010413          	addi	s0,sp,16
    80007254:	02059463          	bnez	a1,8000727c <either_copyin+0x38>
    80007258:	00060593          	mv	a1,a2
    8000725c:	0006861b          	sext.w	a2,a3
    80007260:	00002097          	auipc	ra,0x2
    80007264:	c14080e7          	jalr	-1004(ra) # 80008e74 <__memmove>
    80007268:	00813083          	ld	ra,8(sp)
    8000726c:	00013403          	ld	s0,0(sp)
    80007270:	00000513          	li	a0,0
    80007274:	01010113          	addi	sp,sp,16
    80007278:	00008067          	ret
    8000727c:	00002517          	auipc	a0,0x2
    80007280:	44c50513          	addi	a0,a0,1100 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80007284:	00001097          	auipc	ra,0x1
    80007288:	8e8080e7          	jalr	-1816(ra) # 80007b6c <panic>

000000008000728c <trapinit>:
    8000728c:	ff010113          	addi	sp,sp,-16
    80007290:	00813423          	sd	s0,8(sp)
    80007294:	01010413          	addi	s0,sp,16
    80007298:	00813403          	ld	s0,8(sp)
    8000729c:	00002597          	auipc	a1,0x2
    800072a0:	45458593          	addi	a1,a1,1108 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800072a4:	00006517          	auipc	a0,0x6
    800072a8:	c9c50513          	addi	a0,a0,-868 # 8000cf40 <tickslock>
    800072ac:	01010113          	addi	sp,sp,16
    800072b0:	00001317          	auipc	t1,0x1
    800072b4:	5c830067          	jr	1480(t1) # 80008878 <initlock>

00000000800072b8 <trapinithart>:
    800072b8:	ff010113          	addi	sp,sp,-16
    800072bc:	00813423          	sd	s0,8(sp)
    800072c0:	01010413          	addi	s0,sp,16
    800072c4:	00000797          	auipc	a5,0x0
    800072c8:	2fc78793          	addi	a5,a5,764 # 800075c0 <kernelvec>
    800072cc:	10579073          	csrw	stvec,a5
    800072d0:	00813403          	ld	s0,8(sp)
    800072d4:	01010113          	addi	sp,sp,16
    800072d8:	00008067          	ret

00000000800072dc <usertrap>:
    800072dc:	ff010113          	addi	sp,sp,-16
    800072e0:	00813423          	sd	s0,8(sp)
    800072e4:	01010413          	addi	s0,sp,16
    800072e8:	00813403          	ld	s0,8(sp)
    800072ec:	01010113          	addi	sp,sp,16
    800072f0:	00008067          	ret

00000000800072f4 <usertrapret>:
    800072f4:	ff010113          	addi	sp,sp,-16
    800072f8:	00813423          	sd	s0,8(sp)
    800072fc:	01010413          	addi	s0,sp,16
    80007300:	00813403          	ld	s0,8(sp)
    80007304:	01010113          	addi	sp,sp,16
    80007308:	00008067          	ret

000000008000730c <kerneltrap>:
    8000730c:	fe010113          	addi	sp,sp,-32
    80007310:	00813823          	sd	s0,16(sp)
    80007314:	00113c23          	sd	ra,24(sp)
    80007318:	00913423          	sd	s1,8(sp)
    8000731c:	02010413          	addi	s0,sp,32
    80007320:	142025f3          	csrr	a1,scause
    80007324:	100027f3          	csrr	a5,sstatus
    80007328:	0027f793          	andi	a5,a5,2
    8000732c:	10079c63          	bnez	a5,80007444 <kerneltrap+0x138>
    80007330:	142027f3          	csrr	a5,scause
    80007334:	0207ce63          	bltz	a5,80007370 <kerneltrap+0x64>
    80007338:	00002517          	auipc	a0,0x2
    8000733c:	40050513          	addi	a0,a0,1024 # 80009738 <CONSOLE_STATUS+0x728>
    80007340:	00001097          	auipc	ra,0x1
    80007344:	888080e7          	jalr	-1912(ra) # 80007bc8 <__printf>
    80007348:	141025f3          	csrr	a1,sepc
    8000734c:	14302673          	csrr	a2,stval
    80007350:	00002517          	auipc	a0,0x2
    80007354:	3f850513          	addi	a0,a0,1016 # 80009748 <CONSOLE_STATUS+0x738>
    80007358:	00001097          	auipc	ra,0x1
    8000735c:	870080e7          	jalr	-1936(ra) # 80007bc8 <__printf>
    80007360:	00002517          	auipc	a0,0x2
    80007364:	40050513          	addi	a0,a0,1024 # 80009760 <CONSOLE_STATUS+0x750>
    80007368:	00001097          	auipc	ra,0x1
    8000736c:	804080e7          	jalr	-2044(ra) # 80007b6c <panic>
    80007370:	0ff7f713          	andi	a4,a5,255
    80007374:	00900693          	li	a3,9
    80007378:	04d70063          	beq	a4,a3,800073b8 <kerneltrap+0xac>
    8000737c:	fff00713          	li	a4,-1
    80007380:	03f71713          	slli	a4,a4,0x3f
    80007384:	00170713          	addi	a4,a4,1
    80007388:	fae798e3          	bne	a5,a4,80007338 <kerneltrap+0x2c>
    8000738c:	00000097          	auipc	ra,0x0
    80007390:	e00080e7          	jalr	-512(ra) # 8000718c <cpuid>
    80007394:	06050663          	beqz	a0,80007400 <kerneltrap+0xf4>
    80007398:	144027f3          	csrr	a5,sip
    8000739c:	ffd7f793          	andi	a5,a5,-3
    800073a0:	14479073          	csrw	sip,a5
    800073a4:	01813083          	ld	ra,24(sp)
    800073a8:	01013403          	ld	s0,16(sp)
    800073ac:	00813483          	ld	s1,8(sp)
    800073b0:	02010113          	addi	sp,sp,32
    800073b4:	00008067          	ret
    800073b8:	00000097          	auipc	ra,0x0
    800073bc:	3cc080e7          	jalr	972(ra) # 80007784 <plic_claim>
    800073c0:	00a00793          	li	a5,10
    800073c4:	00050493          	mv	s1,a0
    800073c8:	06f50863          	beq	a0,a5,80007438 <kerneltrap+0x12c>
    800073cc:	fc050ce3          	beqz	a0,800073a4 <kerneltrap+0x98>
    800073d0:	00050593          	mv	a1,a0
    800073d4:	00002517          	auipc	a0,0x2
    800073d8:	34450513          	addi	a0,a0,836 # 80009718 <CONSOLE_STATUS+0x708>
    800073dc:	00000097          	auipc	ra,0x0
    800073e0:	7ec080e7          	jalr	2028(ra) # 80007bc8 <__printf>
    800073e4:	01013403          	ld	s0,16(sp)
    800073e8:	01813083          	ld	ra,24(sp)
    800073ec:	00048513          	mv	a0,s1
    800073f0:	00813483          	ld	s1,8(sp)
    800073f4:	02010113          	addi	sp,sp,32
    800073f8:	00000317          	auipc	t1,0x0
    800073fc:	3c430067          	jr	964(t1) # 800077bc <plic_complete>
    80007400:	00006517          	auipc	a0,0x6
    80007404:	b4050513          	addi	a0,a0,-1216 # 8000cf40 <tickslock>
    80007408:	00001097          	auipc	ra,0x1
    8000740c:	494080e7          	jalr	1172(ra) # 8000889c <acquire>
    80007410:	00004717          	auipc	a4,0x4
    80007414:	75470713          	addi	a4,a4,1876 # 8000bb64 <ticks>
    80007418:	00072783          	lw	a5,0(a4)
    8000741c:	00006517          	auipc	a0,0x6
    80007420:	b2450513          	addi	a0,a0,-1244 # 8000cf40 <tickslock>
    80007424:	0017879b          	addiw	a5,a5,1
    80007428:	00f72023          	sw	a5,0(a4)
    8000742c:	00001097          	auipc	ra,0x1
    80007430:	53c080e7          	jalr	1340(ra) # 80008968 <release>
    80007434:	f65ff06f          	j	80007398 <kerneltrap+0x8c>
    80007438:	00001097          	auipc	ra,0x1
    8000743c:	098080e7          	jalr	152(ra) # 800084d0 <uartintr>
    80007440:	fa5ff06f          	j	800073e4 <kerneltrap+0xd8>
    80007444:	00002517          	auipc	a0,0x2
    80007448:	2b450513          	addi	a0,a0,692 # 800096f8 <CONSOLE_STATUS+0x6e8>
    8000744c:	00000097          	auipc	ra,0x0
    80007450:	720080e7          	jalr	1824(ra) # 80007b6c <panic>

0000000080007454 <clockintr>:
    80007454:	fe010113          	addi	sp,sp,-32
    80007458:	00813823          	sd	s0,16(sp)
    8000745c:	00913423          	sd	s1,8(sp)
    80007460:	00113c23          	sd	ra,24(sp)
    80007464:	02010413          	addi	s0,sp,32
    80007468:	00006497          	auipc	s1,0x6
    8000746c:	ad848493          	addi	s1,s1,-1320 # 8000cf40 <tickslock>
    80007470:	00048513          	mv	a0,s1
    80007474:	00001097          	auipc	ra,0x1
    80007478:	428080e7          	jalr	1064(ra) # 8000889c <acquire>
    8000747c:	00004717          	auipc	a4,0x4
    80007480:	6e870713          	addi	a4,a4,1768 # 8000bb64 <ticks>
    80007484:	00072783          	lw	a5,0(a4)
    80007488:	01013403          	ld	s0,16(sp)
    8000748c:	01813083          	ld	ra,24(sp)
    80007490:	00048513          	mv	a0,s1
    80007494:	0017879b          	addiw	a5,a5,1
    80007498:	00813483          	ld	s1,8(sp)
    8000749c:	00f72023          	sw	a5,0(a4)
    800074a0:	02010113          	addi	sp,sp,32
    800074a4:	00001317          	auipc	t1,0x1
    800074a8:	4c430067          	jr	1220(t1) # 80008968 <release>

00000000800074ac <devintr>:
    800074ac:	142027f3          	csrr	a5,scause
    800074b0:	00000513          	li	a0,0
    800074b4:	0007c463          	bltz	a5,800074bc <devintr+0x10>
    800074b8:	00008067          	ret
    800074bc:	fe010113          	addi	sp,sp,-32
    800074c0:	00813823          	sd	s0,16(sp)
    800074c4:	00113c23          	sd	ra,24(sp)
    800074c8:	00913423          	sd	s1,8(sp)
    800074cc:	02010413          	addi	s0,sp,32
    800074d0:	0ff7f713          	andi	a4,a5,255
    800074d4:	00900693          	li	a3,9
    800074d8:	04d70c63          	beq	a4,a3,80007530 <devintr+0x84>
    800074dc:	fff00713          	li	a4,-1
    800074e0:	03f71713          	slli	a4,a4,0x3f
    800074e4:	00170713          	addi	a4,a4,1
    800074e8:	00e78c63          	beq	a5,a4,80007500 <devintr+0x54>
    800074ec:	01813083          	ld	ra,24(sp)
    800074f0:	01013403          	ld	s0,16(sp)
    800074f4:	00813483          	ld	s1,8(sp)
    800074f8:	02010113          	addi	sp,sp,32
    800074fc:	00008067          	ret
    80007500:	00000097          	auipc	ra,0x0
    80007504:	c8c080e7          	jalr	-884(ra) # 8000718c <cpuid>
    80007508:	06050663          	beqz	a0,80007574 <devintr+0xc8>
    8000750c:	144027f3          	csrr	a5,sip
    80007510:	ffd7f793          	andi	a5,a5,-3
    80007514:	14479073          	csrw	sip,a5
    80007518:	01813083          	ld	ra,24(sp)
    8000751c:	01013403          	ld	s0,16(sp)
    80007520:	00813483          	ld	s1,8(sp)
    80007524:	00200513          	li	a0,2
    80007528:	02010113          	addi	sp,sp,32
    8000752c:	00008067          	ret
    80007530:	00000097          	auipc	ra,0x0
    80007534:	254080e7          	jalr	596(ra) # 80007784 <plic_claim>
    80007538:	00a00793          	li	a5,10
    8000753c:	00050493          	mv	s1,a0
    80007540:	06f50663          	beq	a0,a5,800075ac <devintr+0x100>
    80007544:	00100513          	li	a0,1
    80007548:	fa0482e3          	beqz	s1,800074ec <devintr+0x40>
    8000754c:	00048593          	mv	a1,s1
    80007550:	00002517          	auipc	a0,0x2
    80007554:	1c850513          	addi	a0,a0,456 # 80009718 <CONSOLE_STATUS+0x708>
    80007558:	00000097          	auipc	ra,0x0
    8000755c:	670080e7          	jalr	1648(ra) # 80007bc8 <__printf>
    80007560:	00048513          	mv	a0,s1
    80007564:	00000097          	auipc	ra,0x0
    80007568:	258080e7          	jalr	600(ra) # 800077bc <plic_complete>
    8000756c:	00100513          	li	a0,1
    80007570:	f7dff06f          	j	800074ec <devintr+0x40>
    80007574:	00006517          	auipc	a0,0x6
    80007578:	9cc50513          	addi	a0,a0,-1588 # 8000cf40 <tickslock>
    8000757c:	00001097          	auipc	ra,0x1
    80007580:	320080e7          	jalr	800(ra) # 8000889c <acquire>
    80007584:	00004717          	auipc	a4,0x4
    80007588:	5e070713          	addi	a4,a4,1504 # 8000bb64 <ticks>
    8000758c:	00072783          	lw	a5,0(a4)
    80007590:	00006517          	auipc	a0,0x6
    80007594:	9b050513          	addi	a0,a0,-1616 # 8000cf40 <tickslock>
    80007598:	0017879b          	addiw	a5,a5,1
    8000759c:	00f72023          	sw	a5,0(a4)
    800075a0:	00001097          	auipc	ra,0x1
    800075a4:	3c8080e7          	jalr	968(ra) # 80008968 <release>
    800075a8:	f65ff06f          	j	8000750c <devintr+0x60>
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	f24080e7          	jalr	-220(ra) # 800084d0 <uartintr>
    800075b4:	fadff06f          	j	80007560 <devintr+0xb4>
	...

00000000800075c0 <kernelvec>:
    800075c0:	f0010113          	addi	sp,sp,-256
    800075c4:	00113023          	sd	ra,0(sp)
    800075c8:	00213423          	sd	sp,8(sp)
    800075cc:	00313823          	sd	gp,16(sp)
    800075d0:	00413c23          	sd	tp,24(sp)
    800075d4:	02513023          	sd	t0,32(sp)
    800075d8:	02613423          	sd	t1,40(sp)
    800075dc:	02713823          	sd	t2,48(sp)
    800075e0:	02813c23          	sd	s0,56(sp)
    800075e4:	04913023          	sd	s1,64(sp)
    800075e8:	04a13423          	sd	a0,72(sp)
    800075ec:	04b13823          	sd	a1,80(sp)
    800075f0:	04c13c23          	sd	a2,88(sp)
    800075f4:	06d13023          	sd	a3,96(sp)
    800075f8:	06e13423          	sd	a4,104(sp)
    800075fc:	06f13823          	sd	a5,112(sp)
    80007600:	07013c23          	sd	a6,120(sp)
    80007604:	09113023          	sd	a7,128(sp)
    80007608:	09213423          	sd	s2,136(sp)
    8000760c:	09313823          	sd	s3,144(sp)
    80007610:	09413c23          	sd	s4,152(sp)
    80007614:	0b513023          	sd	s5,160(sp)
    80007618:	0b613423          	sd	s6,168(sp)
    8000761c:	0b713823          	sd	s7,176(sp)
    80007620:	0b813c23          	sd	s8,184(sp)
    80007624:	0d913023          	sd	s9,192(sp)
    80007628:	0da13423          	sd	s10,200(sp)
    8000762c:	0db13823          	sd	s11,208(sp)
    80007630:	0dc13c23          	sd	t3,216(sp)
    80007634:	0fd13023          	sd	t4,224(sp)
    80007638:	0fe13423          	sd	t5,232(sp)
    8000763c:	0ff13823          	sd	t6,240(sp)
    80007640:	ccdff0ef          	jal	ra,8000730c <kerneltrap>
    80007644:	00013083          	ld	ra,0(sp)
    80007648:	00813103          	ld	sp,8(sp)
    8000764c:	01013183          	ld	gp,16(sp)
    80007650:	02013283          	ld	t0,32(sp)
    80007654:	02813303          	ld	t1,40(sp)
    80007658:	03013383          	ld	t2,48(sp)
    8000765c:	03813403          	ld	s0,56(sp)
    80007660:	04013483          	ld	s1,64(sp)
    80007664:	04813503          	ld	a0,72(sp)
    80007668:	05013583          	ld	a1,80(sp)
    8000766c:	05813603          	ld	a2,88(sp)
    80007670:	06013683          	ld	a3,96(sp)
    80007674:	06813703          	ld	a4,104(sp)
    80007678:	07013783          	ld	a5,112(sp)
    8000767c:	07813803          	ld	a6,120(sp)
    80007680:	08013883          	ld	a7,128(sp)
    80007684:	08813903          	ld	s2,136(sp)
    80007688:	09013983          	ld	s3,144(sp)
    8000768c:	09813a03          	ld	s4,152(sp)
    80007690:	0a013a83          	ld	s5,160(sp)
    80007694:	0a813b03          	ld	s6,168(sp)
    80007698:	0b013b83          	ld	s7,176(sp)
    8000769c:	0b813c03          	ld	s8,184(sp)
    800076a0:	0c013c83          	ld	s9,192(sp)
    800076a4:	0c813d03          	ld	s10,200(sp)
    800076a8:	0d013d83          	ld	s11,208(sp)
    800076ac:	0d813e03          	ld	t3,216(sp)
    800076b0:	0e013e83          	ld	t4,224(sp)
    800076b4:	0e813f03          	ld	t5,232(sp)
    800076b8:	0f013f83          	ld	t6,240(sp)
    800076bc:	10010113          	addi	sp,sp,256
    800076c0:	10200073          	sret
    800076c4:	00000013          	nop
    800076c8:	00000013          	nop
    800076cc:	00000013          	nop

00000000800076d0 <timervec>:
    800076d0:	34051573          	csrrw	a0,mscratch,a0
    800076d4:	00b53023          	sd	a1,0(a0)
    800076d8:	00c53423          	sd	a2,8(a0)
    800076dc:	00d53823          	sd	a3,16(a0)
    800076e0:	01853583          	ld	a1,24(a0)
    800076e4:	02053603          	ld	a2,32(a0)
    800076e8:	0005b683          	ld	a3,0(a1)
    800076ec:	00c686b3          	add	a3,a3,a2
    800076f0:	00d5b023          	sd	a3,0(a1)
    800076f4:	00200593          	li	a1,2
    800076f8:	14459073          	csrw	sip,a1
    800076fc:	01053683          	ld	a3,16(a0)
    80007700:	00853603          	ld	a2,8(a0)
    80007704:	00053583          	ld	a1,0(a0)
    80007708:	34051573          	csrrw	a0,mscratch,a0
    8000770c:	30200073          	mret

0000000080007710 <plicinit>:
    80007710:	ff010113          	addi	sp,sp,-16
    80007714:	00813423          	sd	s0,8(sp)
    80007718:	01010413          	addi	s0,sp,16
    8000771c:	00813403          	ld	s0,8(sp)
    80007720:	0c0007b7          	lui	a5,0xc000
    80007724:	00100713          	li	a4,1
    80007728:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000772c:	00e7a223          	sw	a4,4(a5)
    80007730:	01010113          	addi	sp,sp,16
    80007734:	00008067          	ret

0000000080007738 <plicinithart>:
    80007738:	ff010113          	addi	sp,sp,-16
    8000773c:	00813023          	sd	s0,0(sp)
    80007740:	00113423          	sd	ra,8(sp)
    80007744:	01010413          	addi	s0,sp,16
    80007748:	00000097          	auipc	ra,0x0
    8000774c:	a44080e7          	jalr	-1468(ra) # 8000718c <cpuid>
    80007750:	0085171b          	slliw	a4,a0,0x8
    80007754:	0c0027b7          	lui	a5,0xc002
    80007758:	00e787b3          	add	a5,a5,a4
    8000775c:	40200713          	li	a4,1026
    80007760:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007764:	00813083          	ld	ra,8(sp)
    80007768:	00013403          	ld	s0,0(sp)
    8000776c:	00d5151b          	slliw	a0,a0,0xd
    80007770:	0c2017b7          	lui	a5,0xc201
    80007774:	00a78533          	add	a0,a5,a0
    80007778:	00052023          	sw	zero,0(a0)
    8000777c:	01010113          	addi	sp,sp,16
    80007780:	00008067          	ret

0000000080007784 <plic_claim>:
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00813023          	sd	s0,0(sp)
    8000778c:	00113423          	sd	ra,8(sp)
    80007790:	01010413          	addi	s0,sp,16
    80007794:	00000097          	auipc	ra,0x0
    80007798:	9f8080e7          	jalr	-1544(ra) # 8000718c <cpuid>
    8000779c:	00813083          	ld	ra,8(sp)
    800077a0:	00013403          	ld	s0,0(sp)
    800077a4:	00d5151b          	slliw	a0,a0,0xd
    800077a8:	0c2017b7          	lui	a5,0xc201
    800077ac:	00a78533          	add	a0,a5,a0
    800077b0:	00452503          	lw	a0,4(a0)
    800077b4:	01010113          	addi	sp,sp,16
    800077b8:	00008067          	ret

00000000800077bc <plic_complete>:
    800077bc:	fe010113          	addi	sp,sp,-32
    800077c0:	00813823          	sd	s0,16(sp)
    800077c4:	00913423          	sd	s1,8(sp)
    800077c8:	00113c23          	sd	ra,24(sp)
    800077cc:	02010413          	addi	s0,sp,32
    800077d0:	00050493          	mv	s1,a0
    800077d4:	00000097          	auipc	ra,0x0
    800077d8:	9b8080e7          	jalr	-1608(ra) # 8000718c <cpuid>
    800077dc:	01813083          	ld	ra,24(sp)
    800077e0:	01013403          	ld	s0,16(sp)
    800077e4:	00d5179b          	slliw	a5,a0,0xd
    800077e8:	0c201737          	lui	a4,0xc201
    800077ec:	00f707b3          	add	a5,a4,a5
    800077f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800077f4:	00813483          	ld	s1,8(sp)
    800077f8:	02010113          	addi	sp,sp,32
    800077fc:	00008067          	ret

0000000080007800 <consolewrite>:
    80007800:	fb010113          	addi	sp,sp,-80
    80007804:	04813023          	sd	s0,64(sp)
    80007808:	04113423          	sd	ra,72(sp)
    8000780c:	02913c23          	sd	s1,56(sp)
    80007810:	03213823          	sd	s2,48(sp)
    80007814:	03313423          	sd	s3,40(sp)
    80007818:	03413023          	sd	s4,32(sp)
    8000781c:	01513c23          	sd	s5,24(sp)
    80007820:	05010413          	addi	s0,sp,80
    80007824:	06c05c63          	blez	a2,8000789c <consolewrite+0x9c>
    80007828:	00060993          	mv	s3,a2
    8000782c:	00050a13          	mv	s4,a0
    80007830:	00058493          	mv	s1,a1
    80007834:	00000913          	li	s2,0
    80007838:	fff00a93          	li	s5,-1
    8000783c:	01c0006f          	j	80007858 <consolewrite+0x58>
    80007840:	fbf44503          	lbu	a0,-65(s0)
    80007844:	0019091b          	addiw	s2,s2,1
    80007848:	00148493          	addi	s1,s1,1
    8000784c:	00001097          	auipc	ra,0x1
    80007850:	a9c080e7          	jalr	-1380(ra) # 800082e8 <uartputc>
    80007854:	03298063          	beq	s3,s2,80007874 <consolewrite+0x74>
    80007858:	00048613          	mv	a2,s1
    8000785c:	00100693          	li	a3,1
    80007860:	000a0593          	mv	a1,s4
    80007864:	fbf40513          	addi	a0,s0,-65
    80007868:	00000097          	auipc	ra,0x0
    8000786c:	9dc080e7          	jalr	-1572(ra) # 80007244 <either_copyin>
    80007870:	fd5518e3          	bne	a0,s5,80007840 <consolewrite+0x40>
    80007874:	04813083          	ld	ra,72(sp)
    80007878:	04013403          	ld	s0,64(sp)
    8000787c:	03813483          	ld	s1,56(sp)
    80007880:	02813983          	ld	s3,40(sp)
    80007884:	02013a03          	ld	s4,32(sp)
    80007888:	01813a83          	ld	s5,24(sp)
    8000788c:	00090513          	mv	a0,s2
    80007890:	03013903          	ld	s2,48(sp)
    80007894:	05010113          	addi	sp,sp,80
    80007898:	00008067          	ret
    8000789c:	00000913          	li	s2,0
    800078a0:	fd5ff06f          	j	80007874 <consolewrite+0x74>

00000000800078a4 <consoleread>:
    800078a4:	f9010113          	addi	sp,sp,-112
    800078a8:	06813023          	sd	s0,96(sp)
    800078ac:	04913c23          	sd	s1,88(sp)
    800078b0:	05213823          	sd	s2,80(sp)
    800078b4:	05313423          	sd	s3,72(sp)
    800078b8:	05413023          	sd	s4,64(sp)
    800078bc:	03513c23          	sd	s5,56(sp)
    800078c0:	03613823          	sd	s6,48(sp)
    800078c4:	03713423          	sd	s7,40(sp)
    800078c8:	03813023          	sd	s8,32(sp)
    800078cc:	06113423          	sd	ra,104(sp)
    800078d0:	01913c23          	sd	s9,24(sp)
    800078d4:	07010413          	addi	s0,sp,112
    800078d8:	00060b93          	mv	s7,a2
    800078dc:	00050913          	mv	s2,a0
    800078e0:	00058c13          	mv	s8,a1
    800078e4:	00060b1b          	sext.w	s6,a2
    800078e8:	00005497          	auipc	s1,0x5
    800078ec:	68048493          	addi	s1,s1,1664 # 8000cf68 <cons>
    800078f0:	00400993          	li	s3,4
    800078f4:	fff00a13          	li	s4,-1
    800078f8:	00a00a93          	li	s5,10
    800078fc:	05705e63          	blez	s7,80007958 <consoleread+0xb4>
    80007900:	09c4a703          	lw	a4,156(s1)
    80007904:	0984a783          	lw	a5,152(s1)
    80007908:	0007071b          	sext.w	a4,a4
    8000790c:	08e78463          	beq	a5,a4,80007994 <consoleread+0xf0>
    80007910:	07f7f713          	andi	a4,a5,127
    80007914:	00e48733          	add	a4,s1,a4
    80007918:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000791c:	0017869b          	addiw	a3,a5,1
    80007920:	08d4ac23          	sw	a3,152(s1)
    80007924:	00070c9b          	sext.w	s9,a4
    80007928:	0b370663          	beq	a4,s3,800079d4 <consoleread+0x130>
    8000792c:	00100693          	li	a3,1
    80007930:	f9f40613          	addi	a2,s0,-97
    80007934:	000c0593          	mv	a1,s8
    80007938:	00090513          	mv	a0,s2
    8000793c:	f8e40fa3          	sb	a4,-97(s0)
    80007940:	00000097          	auipc	ra,0x0
    80007944:	8b8080e7          	jalr	-1864(ra) # 800071f8 <either_copyout>
    80007948:	01450863          	beq	a0,s4,80007958 <consoleread+0xb4>
    8000794c:	001c0c13          	addi	s8,s8,1
    80007950:	fffb8b9b          	addiw	s7,s7,-1
    80007954:	fb5c94e3          	bne	s9,s5,800078fc <consoleread+0x58>
    80007958:	000b851b          	sext.w	a0,s7
    8000795c:	06813083          	ld	ra,104(sp)
    80007960:	06013403          	ld	s0,96(sp)
    80007964:	05813483          	ld	s1,88(sp)
    80007968:	05013903          	ld	s2,80(sp)
    8000796c:	04813983          	ld	s3,72(sp)
    80007970:	04013a03          	ld	s4,64(sp)
    80007974:	03813a83          	ld	s5,56(sp)
    80007978:	02813b83          	ld	s7,40(sp)
    8000797c:	02013c03          	ld	s8,32(sp)
    80007980:	01813c83          	ld	s9,24(sp)
    80007984:	40ab053b          	subw	a0,s6,a0
    80007988:	03013b03          	ld	s6,48(sp)
    8000798c:	07010113          	addi	sp,sp,112
    80007990:	00008067          	ret
    80007994:	00001097          	auipc	ra,0x1
    80007998:	1d8080e7          	jalr	472(ra) # 80008b6c <push_on>
    8000799c:	0984a703          	lw	a4,152(s1)
    800079a0:	09c4a783          	lw	a5,156(s1)
    800079a4:	0007879b          	sext.w	a5,a5
    800079a8:	fef70ce3          	beq	a4,a5,800079a0 <consoleread+0xfc>
    800079ac:	00001097          	auipc	ra,0x1
    800079b0:	234080e7          	jalr	564(ra) # 80008be0 <pop_on>
    800079b4:	0984a783          	lw	a5,152(s1)
    800079b8:	07f7f713          	andi	a4,a5,127
    800079bc:	00e48733          	add	a4,s1,a4
    800079c0:	01874703          	lbu	a4,24(a4)
    800079c4:	0017869b          	addiw	a3,a5,1
    800079c8:	08d4ac23          	sw	a3,152(s1)
    800079cc:	00070c9b          	sext.w	s9,a4
    800079d0:	f5371ee3          	bne	a4,s3,8000792c <consoleread+0x88>
    800079d4:	000b851b          	sext.w	a0,s7
    800079d8:	f96bf2e3          	bgeu	s7,s6,8000795c <consoleread+0xb8>
    800079dc:	08f4ac23          	sw	a5,152(s1)
    800079e0:	f7dff06f          	j	8000795c <consoleread+0xb8>

00000000800079e4 <consputc>:
    800079e4:	10000793          	li	a5,256
    800079e8:	00f50663          	beq	a0,a5,800079f4 <consputc+0x10>
    800079ec:	00001317          	auipc	t1,0x1
    800079f0:	9f430067          	jr	-1548(t1) # 800083e0 <uartputc_sync>
    800079f4:	ff010113          	addi	sp,sp,-16
    800079f8:	00113423          	sd	ra,8(sp)
    800079fc:	00813023          	sd	s0,0(sp)
    80007a00:	01010413          	addi	s0,sp,16
    80007a04:	00800513          	li	a0,8
    80007a08:	00001097          	auipc	ra,0x1
    80007a0c:	9d8080e7          	jalr	-1576(ra) # 800083e0 <uartputc_sync>
    80007a10:	02000513          	li	a0,32
    80007a14:	00001097          	auipc	ra,0x1
    80007a18:	9cc080e7          	jalr	-1588(ra) # 800083e0 <uartputc_sync>
    80007a1c:	00013403          	ld	s0,0(sp)
    80007a20:	00813083          	ld	ra,8(sp)
    80007a24:	00800513          	li	a0,8
    80007a28:	01010113          	addi	sp,sp,16
    80007a2c:	00001317          	auipc	t1,0x1
    80007a30:	9b430067          	jr	-1612(t1) # 800083e0 <uartputc_sync>

0000000080007a34 <consoleintr>:
    80007a34:	fe010113          	addi	sp,sp,-32
    80007a38:	00813823          	sd	s0,16(sp)
    80007a3c:	00913423          	sd	s1,8(sp)
    80007a40:	01213023          	sd	s2,0(sp)
    80007a44:	00113c23          	sd	ra,24(sp)
    80007a48:	02010413          	addi	s0,sp,32
    80007a4c:	00005917          	auipc	s2,0x5
    80007a50:	51c90913          	addi	s2,s2,1308 # 8000cf68 <cons>
    80007a54:	00050493          	mv	s1,a0
    80007a58:	00090513          	mv	a0,s2
    80007a5c:	00001097          	auipc	ra,0x1
    80007a60:	e40080e7          	jalr	-448(ra) # 8000889c <acquire>
    80007a64:	02048c63          	beqz	s1,80007a9c <consoleintr+0x68>
    80007a68:	0a092783          	lw	a5,160(s2)
    80007a6c:	09892703          	lw	a4,152(s2)
    80007a70:	07f00693          	li	a3,127
    80007a74:	40e7873b          	subw	a4,a5,a4
    80007a78:	02e6e263          	bltu	a3,a4,80007a9c <consoleintr+0x68>
    80007a7c:	00d00713          	li	a4,13
    80007a80:	04e48063          	beq	s1,a4,80007ac0 <consoleintr+0x8c>
    80007a84:	07f7f713          	andi	a4,a5,127
    80007a88:	00e90733          	add	a4,s2,a4
    80007a8c:	0017879b          	addiw	a5,a5,1
    80007a90:	0af92023          	sw	a5,160(s2)
    80007a94:	00970c23          	sb	s1,24(a4)
    80007a98:	08f92e23          	sw	a5,156(s2)
    80007a9c:	01013403          	ld	s0,16(sp)
    80007aa0:	01813083          	ld	ra,24(sp)
    80007aa4:	00813483          	ld	s1,8(sp)
    80007aa8:	00013903          	ld	s2,0(sp)
    80007aac:	00005517          	auipc	a0,0x5
    80007ab0:	4bc50513          	addi	a0,a0,1212 # 8000cf68 <cons>
    80007ab4:	02010113          	addi	sp,sp,32
    80007ab8:	00001317          	auipc	t1,0x1
    80007abc:	eb030067          	jr	-336(t1) # 80008968 <release>
    80007ac0:	00a00493          	li	s1,10
    80007ac4:	fc1ff06f          	j	80007a84 <consoleintr+0x50>

0000000080007ac8 <consoleinit>:
    80007ac8:	fe010113          	addi	sp,sp,-32
    80007acc:	00113c23          	sd	ra,24(sp)
    80007ad0:	00813823          	sd	s0,16(sp)
    80007ad4:	00913423          	sd	s1,8(sp)
    80007ad8:	02010413          	addi	s0,sp,32
    80007adc:	00005497          	auipc	s1,0x5
    80007ae0:	48c48493          	addi	s1,s1,1164 # 8000cf68 <cons>
    80007ae4:	00048513          	mv	a0,s1
    80007ae8:	00002597          	auipc	a1,0x2
    80007aec:	c8858593          	addi	a1,a1,-888 # 80009770 <CONSOLE_STATUS+0x760>
    80007af0:	00001097          	auipc	ra,0x1
    80007af4:	d88080e7          	jalr	-632(ra) # 80008878 <initlock>
    80007af8:	00000097          	auipc	ra,0x0
    80007afc:	7ac080e7          	jalr	1964(ra) # 800082a4 <uartinit>
    80007b00:	01813083          	ld	ra,24(sp)
    80007b04:	01013403          	ld	s0,16(sp)
    80007b08:	00000797          	auipc	a5,0x0
    80007b0c:	d9c78793          	addi	a5,a5,-612 # 800078a4 <consoleread>
    80007b10:	0af4bc23          	sd	a5,184(s1)
    80007b14:	00000797          	auipc	a5,0x0
    80007b18:	cec78793          	addi	a5,a5,-788 # 80007800 <consolewrite>
    80007b1c:	0cf4b023          	sd	a5,192(s1)
    80007b20:	00813483          	ld	s1,8(sp)
    80007b24:	02010113          	addi	sp,sp,32
    80007b28:	00008067          	ret

0000000080007b2c <console_read>:
    80007b2c:	ff010113          	addi	sp,sp,-16
    80007b30:	00813423          	sd	s0,8(sp)
    80007b34:	01010413          	addi	s0,sp,16
    80007b38:	00813403          	ld	s0,8(sp)
    80007b3c:	00005317          	auipc	t1,0x5
    80007b40:	4e433303          	ld	t1,1252(t1) # 8000d020 <devsw+0x10>
    80007b44:	01010113          	addi	sp,sp,16
    80007b48:	00030067          	jr	t1

0000000080007b4c <console_write>:
    80007b4c:	ff010113          	addi	sp,sp,-16
    80007b50:	00813423          	sd	s0,8(sp)
    80007b54:	01010413          	addi	s0,sp,16
    80007b58:	00813403          	ld	s0,8(sp)
    80007b5c:	00005317          	auipc	t1,0x5
    80007b60:	4cc33303          	ld	t1,1228(t1) # 8000d028 <devsw+0x18>
    80007b64:	01010113          	addi	sp,sp,16
    80007b68:	00030067          	jr	t1

0000000080007b6c <panic>:
    80007b6c:	fe010113          	addi	sp,sp,-32
    80007b70:	00113c23          	sd	ra,24(sp)
    80007b74:	00813823          	sd	s0,16(sp)
    80007b78:	00913423          	sd	s1,8(sp)
    80007b7c:	02010413          	addi	s0,sp,32
    80007b80:	00050493          	mv	s1,a0
    80007b84:	00002517          	auipc	a0,0x2
    80007b88:	bf450513          	addi	a0,a0,-1036 # 80009778 <CONSOLE_STATUS+0x768>
    80007b8c:	00005797          	auipc	a5,0x5
    80007b90:	5207ae23          	sw	zero,1340(a5) # 8000d0c8 <pr+0x18>
    80007b94:	00000097          	auipc	ra,0x0
    80007b98:	034080e7          	jalr	52(ra) # 80007bc8 <__printf>
    80007b9c:	00048513          	mv	a0,s1
    80007ba0:	00000097          	auipc	ra,0x0
    80007ba4:	028080e7          	jalr	40(ra) # 80007bc8 <__printf>
    80007ba8:	00002517          	auipc	a0,0x2
    80007bac:	94050513          	addi	a0,a0,-1728 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80007bb0:	00000097          	auipc	ra,0x0
    80007bb4:	018080e7          	jalr	24(ra) # 80007bc8 <__printf>
    80007bb8:	00100793          	li	a5,1
    80007bbc:	00004717          	auipc	a4,0x4
    80007bc0:	faf72623          	sw	a5,-84(a4) # 8000bb68 <panicked>
    80007bc4:	0000006f          	j	80007bc4 <panic+0x58>

0000000080007bc8 <__printf>:
    80007bc8:	f3010113          	addi	sp,sp,-208
    80007bcc:	08813023          	sd	s0,128(sp)
    80007bd0:	07313423          	sd	s3,104(sp)
    80007bd4:	09010413          	addi	s0,sp,144
    80007bd8:	05813023          	sd	s8,64(sp)
    80007bdc:	08113423          	sd	ra,136(sp)
    80007be0:	06913c23          	sd	s1,120(sp)
    80007be4:	07213823          	sd	s2,112(sp)
    80007be8:	07413023          	sd	s4,96(sp)
    80007bec:	05513c23          	sd	s5,88(sp)
    80007bf0:	05613823          	sd	s6,80(sp)
    80007bf4:	05713423          	sd	s7,72(sp)
    80007bf8:	03913c23          	sd	s9,56(sp)
    80007bfc:	03a13823          	sd	s10,48(sp)
    80007c00:	03b13423          	sd	s11,40(sp)
    80007c04:	00005317          	auipc	t1,0x5
    80007c08:	4ac30313          	addi	t1,t1,1196 # 8000d0b0 <pr>
    80007c0c:	01832c03          	lw	s8,24(t1)
    80007c10:	00b43423          	sd	a1,8(s0)
    80007c14:	00c43823          	sd	a2,16(s0)
    80007c18:	00d43c23          	sd	a3,24(s0)
    80007c1c:	02e43023          	sd	a4,32(s0)
    80007c20:	02f43423          	sd	a5,40(s0)
    80007c24:	03043823          	sd	a6,48(s0)
    80007c28:	03143c23          	sd	a7,56(s0)
    80007c2c:	00050993          	mv	s3,a0
    80007c30:	4a0c1663          	bnez	s8,800080dc <__printf+0x514>
    80007c34:	60098c63          	beqz	s3,8000824c <__printf+0x684>
    80007c38:	0009c503          	lbu	a0,0(s3)
    80007c3c:	00840793          	addi	a5,s0,8
    80007c40:	f6f43c23          	sd	a5,-136(s0)
    80007c44:	00000493          	li	s1,0
    80007c48:	22050063          	beqz	a0,80007e68 <__printf+0x2a0>
    80007c4c:	00002a37          	lui	s4,0x2
    80007c50:	00018ab7          	lui	s5,0x18
    80007c54:	000f4b37          	lui	s6,0xf4
    80007c58:	00989bb7          	lui	s7,0x989
    80007c5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007c60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007c64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007c68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007c6c:	00148c9b          	addiw	s9,s1,1
    80007c70:	02500793          	li	a5,37
    80007c74:	01998933          	add	s2,s3,s9
    80007c78:	38f51263          	bne	a0,a5,80007ffc <__printf+0x434>
    80007c7c:	00094783          	lbu	a5,0(s2)
    80007c80:	00078c9b          	sext.w	s9,a5
    80007c84:	1e078263          	beqz	a5,80007e68 <__printf+0x2a0>
    80007c88:	0024849b          	addiw	s1,s1,2
    80007c8c:	07000713          	li	a4,112
    80007c90:	00998933          	add	s2,s3,s1
    80007c94:	38e78a63          	beq	a5,a4,80008028 <__printf+0x460>
    80007c98:	20f76863          	bltu	a4,a5,80007ea8 <__printf+0x2e0>
    80007c9c:	42a78863          	beq	a5,a0,800080cc <__printf+0x504>
    80007ca0:	06400713          	li	a4,100
    80007ca4:	40e79663          	bne	a5,a4,800080b0 <__printf+0x4e8>
    80007ca8:	f7843783          	ld	a5,-136(s0)
    80007cac:	0007a603          	lw	a2,0(a5)
    80007cb0:	00878793          	addi	a5,a5,8
    80007cb4:	f6f43c23          	sd	a5,-136(s0)
    80007cb8:	42064a63          	bltz	a2,800080ec <__printf+0x524>
    80007cbc:	00a00713          	li	a4,10
    80007cc0:	02e677bb          	remuw	a5,a2,a4
    80007cc4:	00002d97          	auipc	s11,0x2
    80007cc8:	adcd8d93          	addi	s11,s11,-1316 # 800097a0 <digits>
    80007ccc:	00900593          	li	a1,9
    80007cd0:	0006051b          	sext.w	a0,a2
    80007cd4:	00000c93          	li	s9,0
    80007cd8:	02079793          	slli	a5,a5,0x20
    80007cdc:	0207d793          	srli	a5,a5,0x20
    80007ce0:	00fd87b3          	add	a5,s11,a5
    80007ce4:	0007c783          	lbu	a5,0(a5)
    80007ce8:	02e656bb          	divuw	a3,a2,a4
    80007cec:	f8f40023          	sb	a5,-128(s0)
    80007cf0:	14c5d863          	bge	a1,a2,80007e40 <__printf+0x278>
    80007cf4:	06300593          	li	a1,99
    80007cf8:	00100c93          	li	s9,1
    80007cfc:	02e6f7bb          	remuw	a5,a3,a4
    80007d00:	02079793          	slli	a5,a5,0x20
    80007d04:	0207d793          	srli	a5,a5,0x20
    80007d08:	00fd87b3          	add	a5,s11,a5
    80007d0c:	0007c783          	lbu	a5,0(a5)
    80007d10:	02e6d73b          	divuw	a4,a3,a4
    80007d14:	f8f400a3          	sb	a5,-127(s0)
    80007d18:	12a5f463          	bgeu	a1,a0,80007e40 <__printf+0x278>
    80007d1c:	00a00693          	li	a3,10
    80007d20:	00900593          	li	a1,9
    80007d24:	02d777bb          	remuw	a5,a4,a3
    80007d28:	02079793          	slli	a5,a5,0x20
    80007d2c:	0207d793          	srli	a5,a5,0x20
    80007d30:	00fd87b3          	add	a5,s11,a5
    80007d34:	0007c503          	lbu	a0,0(a5)
    80007d38:	02d757bb          	divuw	a5,a4,a3
    80007d3c:	f8a40123          	sb	a0,-126(s0)
    80007d40:	48e5f263          	bgeu	a1,a4,800081c4 <__printf+0x5fc>
    80007d44:	06300513          	li	a0,99
    80007d48:	02d7f5bb          	remuw	a1,a5,a3
    80007d4c:	02059593          	slli	a1,a1,0x20
    80007d50:	0205d593          	srli	a1,a1,0x20
    80007d54:	00bd85b3          	add	a1,s11,a1
    80007d58:	0005c583          	lbu	a1,0(a1)
    80007d5c:	02d7d7bb          	divuw	a5,a5,a3
    80007d60:	f8b401a3          	sb	a1,-125(s0)
    80007d64:	48e57263          	bgeu	a0,a4,800081e8 <__printf+0x620>
    80007d68:	3e700513          	li	a0,999
    80007d6c:	02d7f5bb          	remuw	a1,a5,a3
    80007d70:	02059593          	slli	a1,a1,0x20
    80007d74:	0205d593          	srli	a1,a1,0x20
    80007d78:	00bd85b3          	add	a1,s11,a1
    80007d7c:	0005c583          	lbu	a1,0(a1)
    80007d80:	02d7d7bb          	divuw	a5,a5,a3
    80007d84:	f8b40223          	sb	a1,-124(s0)
    80007d88:	46e57663          	bgeu	a0,a4,800081f4 <__printf+0x62c>
    80007d8c:	02d7f5bb          	remuw	a1,a5,a3
    80007d90:	02059593          	slli	a1,a1,0x20
    80007d94:	0205d593          	srli	a1,a1,0x20
    80007d98:	00bd85b3          	add	a1,s11,a1
    80007d9c:	0005c583          	lbu	a1,0(a1)
    80007da0:	02d7d7bb          	divuw	a5,a5,a3
    80007da4:	f8b402a3          	sb	a1,-123(s0)
    80007da8:	46ea7863          	bgeu	s4,a4,80008218 <__printf+0x650>
    80007dac:	02d7f5bb          	remuw	a1,a5,a3
    80007db0:	02059593          	slli	a1,a1,0x20
    80007db4:	0205d593          	srli	a1,a1,0x20
    80007db8:	00bd85b3          	add	a1,s11,a1
    80007dbc:	0005c583          	lbu	a1,0(a1)
    80007dc0:	02d7d7bb          	divuw	a5,a5,a3
    80007dc4:	f8b40323          	sb	a1,-122(s0)
    80007dc8:	3eeaf863          	bgeu	s5,a4,800081b8 <__printf+0x5f0>
    80007dcc:	02d7f5bb          	remuw	a1,a5,a3
    80007dd0:	02059593          	slli	a1,a1,0x20
    80007dd4:	0205d593          	srli	a1,a1,0x20
    80007dd8:	00bd85b3          	add	a1,s11,a1
    80007ddc:	0005c583          	lbu	a1,0(a1)
    80007de0:	02d7d7bb          	divuw	a5,a5,a3
    80007de4:	f8b403a3          	sb	a1,-121(s0)
    80007de8:	42eb7e63          	bgeu	s6,a4,80008224 <__printf+0x65c>
    80007dec:	02d7f5bb          	remuw	a1,a5,a3
    80007df0:	02059593          	slli	a1,a1,0x20
    80007df4:	0205d593          	srli	a1,a1,0x20
    80007df8:	00bd85b3          	add	a1,s11,a1
    80007dfc:	0005c583          	lbu	a1,0(a1)
    80007e00:	02d7d7bb          	divuw	a5,a5,a3
    80007e04:	f8b40423          	sb	a1,-120(s0)
    80007e08:	42ebfc63          	bgeu	s7,a4,80008240 <__printf+0x678>
    80007e0c:	02079793          	slli	a5,a5,0x20
    80007e10:	0207d793          	srli	a5,a5,0x20
    80007e14:	00fd8db3          	add	s11,s11,a5
    80007e18:	000dc703          	lbu	a4,0(s11)
    80007e1c:	00a00793          	li	a5,10
    80007e20:	00900c93          	li	s9,9
    80007e24:	f8e404a3          	sb	a4,-119(s0)
    80007e28:	00065c63          	bgez	a2,80007e40 <__printf+0x278>
    80007e2c:	f9040713          	addi	a4,s0,-112
    80007e30:	00f70733          	add	a4,a4,a5
    80007e34:	02d00693          	li	a3,45
    80007e38:	fed70823          	sb	a3,-16(a4)
    80007e3c:	00078c93          	mv	s9,a5
    80007e40:	f8040793          	addi	a5,s0,-128
    80007e44:	01978cb3          	add	s9,a5,s9
    80007e48:	f7f40d13          	addi	s10,s0,-129
    80007e4c:	000cc503          	lbu	a0,0(s9)
    80007e50:	fffc8c93          	addi	s9,s9,-1
    80007e54:	00000097          	auipc	ra,0x0
    80007e58:	b90080e7          	jalr	-1136(ra) # 800079e4 <consputc>
    80007e5c:	ffac98e3          	bne	s9,s10,80007e4c <__printf+0x284>
    80007e60:	00094503          	lbu	a0,0(s2)
    80007e64:	e00514e3          	bnez	a0,80007c6c <__printf+0xa4>
    80007e68:	1a0c1663          	bnez	s8,80008014 <__printf+0x44c>
    80007e6c:	08813083          	ld	ra,136(sp)
    80007e70:	08013403          	ld	s0,128(sp)
    80007e74:	07813483          	ld	s1,120(sp)
    80007e78:	07013903          	ld	s2,112(sp)
    80007e7c:	06813983          	ld	s3,104(sp)
    80007e80:	06013a03          	ld	s4,96(sp)
    80007e84:	05813a83          	ld	s5,88(sp)
    80007e88:	05013b03          	ld	s6,80(sp)
    80007e8c:	04813b83          	ld	s7,72(sp)
    80007e90:	04013c03          	ld	s8,64(sp)
    80007e94:	03813c83          	ld	s9,56(sp)
    80007e98:	03013d03          	ld	s10,48(sp)
    80007e9c:	02813d83          	ld	s11,40(sp)
    80007ea0:	0d010113          	addi	sp,sp,208
    80007ea4:	00008067          	ret
    80007ea8:	07300713          	li	a4,115
    80007eac:	1ce78a63          	beq	a5,a4,80008080 <__printf+0x4b8>
    80007eb0:	07800713          	li	a4,120
    80007eb4:	1ee79e63          	bne	a5,a4,800080b0 <__printf+0x4e8>
    80007eb8:	f7843783          	ld	a5,-136(s0)
    80007ebc:	0007a703          	lw	a4,0(a5)
    80007ec0:	00878793          	addi	a5,a5,8
    80007ec4:	f6f43c23          	sd	a5,-136(s0)
    80007ec8:	28074263          	bltz	a4,8000814c <__printf+0x584>
    80007ecc:	00002d97          	auipc	s11,0x2
    80007ed0:	8d4d8d93          	addi	s11,s11,-1836 # 800097a0 <digits>
    80007ed4:	00f77793          	andi	a5,a4,15
    80007ed8:	00fd87b3          	add	a5,s11,a5
    80007edc:	0007c683          	lbu	a3,0(a5)
    80007ee0:	00f00613          	li	a2,15
    80007ee4:	0007079b          	sext.w	a5,a4
    80007ee8:	f8d40023          	sb	a3,-128(s0)
    80007eec:	0047559b          	srliw	a1,a4,0x4
    80007ef0:	0047569b          	srliw	a3,a4,0x4
    80007ef4:	00000c93          	li	s9,0
    80007ef8:	0ee65063          	bge	a2,a4,80007fd8 <__printf+0x410>
    80007efc:	00f6f693          	andi	a3,a3,15
    80007f00:	00dd86b3          	add	a3,s11,a3
    80007f04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007f08:	0087d79b          	srliw	a5,a5,0x8
    80007f0c:	00100c93          	li	s9,1
    80007f10:	f8d400a3          	sb	a3,-127(s0)
    80007f14:	0cb67263          	bgeu	a2,a1,80007fd8 <__printf+0x410>
    80007f18:	00f7f693          	andi	a3,a5,15
    80007f1c:	00dd86b3          	add	a3,s11,a3
    80007f20:	0006c583          	lbu	a1,0(a3)
    80007f24:	00f00613          	li	a2,15
    80007f28:	0047d69b          	srliw	a3,a5,0x4
    80007f2c:	f8b40123          	sb	a1,-126(s0)
    80007f30:	0047d593          	srli	a1,a5,0x4
    80007f34:	28f67e63          	bgeu	a2,a5,800081d0 <__printf+0x608>
    80007f38:	00f6f693          	andi	a3,a3,15
    80007f3c:	00dd86b3          	add	a3,s11,a3
    80007f40:	0006c503          	lbu	a0,0(a3)
    80007f44:	0087d813          	srli	a6,a5,0x8
    80007f48:	0087d69b          	srliw	a3,a5,0x8
    80007f4c:	f8a401a3          	sb	a0,-125(s0)
    80007f50:	28b67663          	bgeu	a2,a1,800081dc <__printf+0x614>
    80007f54:	00f6f693          	andi	a3,a3,15
    80007f58:	00dd86b3          	add	a3,s11,a3
    80007f5c:	0006c583          	lbu	a1,0(a3)
    80007f60:	00c7d513          	srli	a0,a5,0xc
    80007f64:	00c7d69b          	srliw	a3,a5,0xc
    80007f68:	f8b40223          	sb	a1,-124(s0)
    80007f6c:	29067a63          	bgeu	a2,a6,80008200 <__printf+0x638>
    80007f70:	00f6f693          	andi	a3,a3,15
    80007f74:	00dd86b3          	add	a3,s11,a3
    80007f78:	0006c583          	lbu	a1,0(a3)
    80007f7c:	0107d813          	srli	a6,a5,0x10
    80007f80:	0107d69b          	srliw	a3,a5,0x10
    80007f84:	f8b402a3          	sb	a1,-123(s0)
    80007f88:	28a67263          	bgeu	a2,a0,8000820c <__printf+0x644>
    80007f8c:	00f6f693          	andi	a3,a3,15
    80007f90:	00dd86b3          	add	a3,s11,a3
    80007f94:	0006c683          	lbu	a3,0(a3)
    80007f98:	0147d79b          	srliw	a5,a5,0x14
    80007f9c:	f8d40323          	sb	a3,-122(s0)
    80007fa0:	21067663          	bgeu	a2,a6,800081ac <__printf+0x5e4>
    80007fa4:	02079793          	slli	a5,a5,0x20
    80007fa8:	0207d793          	srli	a5,a5,0x20
    80007fac:	00fd8db3          	add	s11,s11,a5
    80007fb0:	000dc683          	lbu	a3,0(s11)
    80007fb4:	00800793          	li	a5,8
    80007fb8:	00700c93          	li	s9,7
    80007fbc:	f8d403a3          	sb	a3,-121(s0)
    80007fc0:	00075c63          	bgez	a4,80007fd8 <__printf+0x410>
    80007fc4:	f9040713          	addi	a4,s0,-112
    80007fc8:	00f70733          	add	a4,a4,a5
    80007fcc:	02d00693          	li	a3,45
    80007fd0:	fed70823          	sb	a3,-16(a4)
    80007fd4:	00078c93          	mv	s9,a5
    80007fd8:	f8040793          	addi	a5,s0,-128
    80007fdc:	01978cb3          	add	s9,a5,s9
    80007fe0:	f7f40d13          	addi	s10,s0,-129
    80007fe4:	000cc503          	lbu	a0,0(s9)
    80007fe8:	fffc8c93          	addi	s9,s9,-1
    80007fec:	00000097          	auipc	ra,0x0
    80007ff0:	9f8080e7          	jalr	-1544(ra) # 800079e4 <consputc>
    80007ff4:	ff9d18e3          	bne	s10,s9,80007fe4 <__printf+0x41c>
    80007ff8:	0100006f          	j	80008008 <__printf+0x440>
    80007ffc:	00000097          	auipc	ra,0x0
    80008000:	9e8080e7          	jalr	-1560(ra) # 800079e4 <consputc>
    80008004:	000c8493          	mv	s1,s9
    80008008:	00094503          	lbu	a0,0(s2)
    8000800c:	c60510e3          	bnez	a0,80007c6c <__printf+0xa4>
    80008010:	e40c0ee3          	beqz	s8,80007e6c <__printf+0x2a4>
    80008014:	00005517          	auipc	a0,0x5
    80008018:	09c50513          	addi	a0,a0,156 # 8000d0b0 <pr>
    8000801c:	00001097          	auipc	ra,0x1
    80008020:	94c080e7          	jalr	-1716(ra) # 80008968 <release>
    80008024:	e49ff06f          	j	80007e6c <__printf+0x2a4>
    80008028:	f7843783          	ld	a5,-136(s0)
    8000802c:	03000513          	li	a0,48
    80008030:	01000d13          	li	s10,16
    80008034:	00878713          	addi	a4,a5,8
    80008038:	0007bc83          	ld	s9,0(a5)
    8000803c:	f6e43c23          	sd	a4,-136(s0)
    80008040:	00000097          	auipc	ra,0x0
    80008044:	9a4080e7          	jalr	-1628(ra) # 800079e4 <consputc>
    80008048:	07800513          	li	a0,120
    8000804c:	00000097          	auipc	ra,0x0
    80008050:	998080e7          	jalr	-1640(ra) # 800079e4 <consputc>
    80008054:	00001d97          	auipc	s11,0x1
    80008058:	74cd8d93          	addi	s11,s11,1868 # 800097a0 <digits>
    8000805c:	03ccd793          	srli	a5,s9,0x3c
    80008060:	00fd87b3          	add	a5,s11,a5
    80008064:	0007c503          	lbu	a0,0(a5)
    80008068:	fffd0d1b          	addiw	s10,s10,-1
    8000806c:	004c9c93          	slli	s9,s9,0x4
    80008070:	00000097          	auipc	ra,0x0
    80008074:	974080e7          	jalr	-1676(ra) # 800079e4 <consputc>
    80008078:	fe0d12e3          	bnez	s10,8000805c <__printf+0x494>
    8000807c:	f8dff06f          	j	80008008 <__printf+0x440>
    80008080:	f7843783          	ld	a5,-136(s0)
    80008084:	0007bc83          	ld	s9,0(a5)
    80008088:	00878793          	addi	a5,a5,8
    8000808c:	f6f43c23          	sd	a5,-136(s0)
    80008090:	000c9a63          	bnez	s9,800080a4 <__printf+0x4dc>
    80008094:	1080006f          	j	8000819c <__printf+0x5d4>
    80008098:	001c8c93          	addi	s9,s9,1
    8000809c:	00000097          	auipc	ra,0x0
    800080a0:	948080e7          	jalr	-1720(ra) # 800079e4 <consputc>
    800080a4:	000cc503          	lbu	a0,0(s9)
    800080a8:	fe0518e3          	bnez	a0,80008098 <__printf+0x4d0>
    800080ac:	f5dff06f          	j	80008008 <__printf+0x440>
    800080b0:	02500513          	li	a0,37
    800080b4:	00000097          	auipc	ra,0x0
    800080b8:	930080e7          	jalr	-1744(ra) # 800079e4 <consputc>
    800080bc:	000c8513          	mv	a0,s9
    800080c0:	00000097          	auipc	ra,0x0
    800080c4:	924080e7          	jalr	-1756(ra) # 800079e4 <consputc>
    800080c8:	f41ff06f          	j	80008008 <__printf+0x440>
    800080cc:	02500513          	li	a0,37
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	914080e7          	jalr	-1772(ra) # 800079e4 <consputc>
    800080d8:	f31ff06f          	j	80008008 <__printf+0x440>
    800080dc:	00030513          	mv	a0,t1
    800080e0:	00000097          	auipc	ra,0x0
    800080e4:	7bc080e7          	jalr	1980(ra) # 8000889c <acquire>
    800080e8:	b4dff06f          	j	80007c34 <__printf+0x6c>
    800080ec:	40c0053b          	negw	a0,a2
    800080f0:	00a00713          	li	a4,10
    800080f4:	02e576bb          	remuw	a3,a0,a4
    800080f8:	00001d97          	auipc	s11,0x1
    800080fc:	6a8d8d93          	addi	s11,s11,1704 # 800097a0 <digits>
    80008100:	ff700593          	li	a1,-9
    80008104:	02069693          	slli	a3,a3,0x20
    80008108:	0206d693          	srli	a3,a3,0x20
    8000810c:	00dd86b3          	add	a3,s11,a3
    80008110:	0006c683          	lbu	a3,0(a3)
    80008114:	02e557bb          	divuw	a5,a0,a4
    80008118:	f8d40023          	sb	a3,-128(s0)
    8000811c:	10b65e63          	bge	a2,a1,80008238 <__printf+0x670>
    80008120:	06300593          	li	a1,99
    80008124:	02e7f6bb          	remuw	a3,a5,a4
    80008128:	02069693          	slli	a3,a3,0x20
    8000812c:	0206d693          	srli	a3,a3,0x20
    80008130:	00dd86b3          	add	a3,s11,a3
    80008134:	0006c683          	lbu	a3,0(a3)
    80008138:	02e7d73b          	divuw	a4,a5,a4
    8000813c:	00200793          	li	a5,2
    80008140:	f8d400a3          	sb	a3,-127(s0)
    80008144:	bca5ece3          	bltu	a1,a0,80007d1c <__printf+0x154>
    80008148:	ce5ff06f          	j	80007e2c <__printf+0x264>
    8000814c:	40e007bb          	negw	a5,a4
    80008150:	00001d97          	auipc	s11,0x1
    80008154:	650d8d93          	addi	s11,s11,1616 # 800097a0 <digits>
    80008158:	00f7f693          	andi	a3,a5,15
    8000815c:	00dd86b3          	add	a3,s11,a3
    80008160:	0006c583          	lbu	a1,0(a3)
    80008164:	ff100613          	li	a2,-15
    80008168:	0047d69b          	srliw	a3,a5,0x4
    8000816c:	f8b40023          	sb	a1,-128(s0)
    80008170:	0047d59b          	srliw	a1,a5,0x4
    80008174:	0ac75e63          	bge	a4,a2,80008230 <__printf+0x668>
    80008178:	00f6f693          	andi	a3,a3,15
    8000817c:	00dd86b3          	add	a3,s11,a3
    80008180:	0006c603          	lbu	a2,0(a3)
    80008184:	00f00693          	li	a3,15
    80008188:	0087d79b          	srliw	a5,a5,0x8
    8000818c:	f8c400a3          	sb	a2,-127(s0)
    80008190:	d8b6e4e3          	bltu	a3,a1,80007f18 <__printf+0x350>
    80008194:	00200793          	li	a5,2
    80008198:	e2dff06f          	j	80007fc4 <__printf+0x3fc>
    8000819c:	00001c97          	auipc	s9,0x1
    800081a0:	5e4c8c93          	addi	s9,s9,1508 # 80009780 <CONSOLE_STATUS+0x770>
    800081a4:	02800513          	li	a0,40
    800081a8:	ef1ff06f          	j	80008098 <__printf+0x4d0>
    800081ac:	00700793          	li	a5,7
    800081b0:	00600c93          	li	s9,6
    800081b4:	e0dff06f          	j	80007fc0 <__printf+0x3f8>
    800081b8:	00700793          	li	a5,7
    800081bc:	00600c93          	li	s9,6
    800081c0:	c69ff06f          	j	80007e28 <__printf+0x260>
    800081c4:	00300793          	li	a5,3
    800081c8:	00200c93          	li	s9,2
    800081cc:	c5dff06f          	j	80007e28 <__printf+0x260>
    800081d0:	00300793          	li	a5,3
    800081d4:	00200c93          	li	s9,2
    800081d8:	de9ff06f          	j	80007fc0 <__printf+0x3f8>
    800081dc:	00400793          	li	a5,4
    800081e0:	00300c93          	li	s9,3
    800081e4:	dddff06f          	j	80007fc0 <__printf+0x3f8>
    800081e8:	00400793          	li	a5,4
    800081ec:	00300c93          	li	s9,3
    800081f0:	c39ff06f          	j	80007e28 <__printf+0x260>
    800081f4:	00500793          	li	a5,5
    800081f8:	00400c93          	li	s9,4
    800081fc:	c2dff06f          	j	80007e28 <__printf+0x260>
    80008200:	00500793          	li	a5,5
    80008204:	00400c93          	li	s9,4
    80008208:	db9ff06f          	j	80007fc0 <__printf+0x3f8>
    8000820c:	00600793          	li	a5,6
    80008210:	00500c93          	li	s9,5
    80008214:	dadff06f          	j	80007fc0 <__printf+0x3f8>
    80008218:	00600793          	li	a5,6
    8000821c:	00500c93          	li	s9,5
    80008220:	c09ff06f          	j	80007e28 <__printf+0x260>
    80008224:	00800793          	li	a5,8
    80008228:	00700c93          	li	s9,7
    8000822c:	bfdff06f          	j	80007e28 <__printf+0x260>
    80008230:	00100793          	li	a5,1
    80008234:	d91ff06f          	j	80007fc4 <__printf+0x3fc>
    80008238:	00100793          	li	a5,1
    8000823c:	bf1ff06f          	j	80007e2c <__printf+0x264>
    80008240:	00900793          	li	a5,9
    80008244:	00800c93          	li	s9,8
    80008248:	be1ff06f          	j	80007e28 <__printf+0x260>
    8000824c:	00001517          	auipc	a0,0x1
    80008250:	53c50513          	addi	a0,a0,1340 # 80009788 <CONSOLE_STATUS+0x778>
    80008254:	00000097          	auipc	ra,0x0
    80008258:	918080e7          	jalr	-1768(ra) # 80007b6c <panic>

000000008000825c <printfinit>:
    8000825c:	fe010113          	addi	sp,sp,-32
    80008260:	00813823          	sd	s0,16(sp)
    80008264:	00913423          	sd	s1,8(sp)
    80008268:	00113c23          	sd	ra,24(sp)
    8000826c:	02010413          	addi	s0,sp,32
    80008270:	00005497          	auipc	s1,0x5
    80008274:	e4048493          	addi	s1,s1,-448 # 8000d0b0 <pr>
    80008278:	00048513          	mv	a0,s1
    8000827c:	00001597          	auipc	a1,0x1
    80008280:	51c58593          	addi	a1,a1,1308 # 80009798 <CONSOLE_STATUS+0x788>
    80008284:	00000097          	auipc	ra,0x0
    80008288:	5f4080e7          	jalr	1524(ra) # 80008878 <initlock>
    8000828c:	01813083          	ld	ra,24(sp)
    80008290:	01013403          	ld	s0,16(sp)
    80008294:	0004ac23          	sw	zero,24(s1)
    80008298:	00813483          	ld	s1,8(sp)
    8000829c:	02010113          	addi	sp,sp,32
    800082a0:	00008067          	ret

00000000800082a4 <uartinit>:
    800082a4:	ff010113          	addi	sp,sp,-16
    800082a8:	00813423          	sd	s0,8(sp)
    800082ac:	01010413          	addi	s0,sp,16
    800082b0:	100007b7          	lui	a5,0x10000
    800082b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800082b8:	f8000713          	li	a4,-128
    800082bc:	00e781a3          	sb	a4,3(a5)
    800082c0:	00300713          	li	a4,3
    800082c4:	00e78023          	sb	a4,0(a5)
    800082c8:	000780a3          	sb	zero,1(a5)
    800082cc:	00e781a3          	sb	a4,3(a5)
    800082d0:	00700693          	li	a3,7
    800082d4:	00d78123          	sb	a3,2(a5)
    800082d8:	00e780a3          	sb	a4,1(a5)
    800082dc:	00813403          	ld	s0,8(sp)
    800082e0:	01010113          	addi	sp,sp,16
    800082e4:	00008067          	ret

00000000800082e8 <uartputc>:
    800082e8:	00004797          	auipc	a5,0x4
    800082ec:	8807a783          	lw	a5,-1920(a5) # 8000bb68 <panicked>
    800082f0:	00078463          	beqz	a5,800082f8 <uartputc+0x10>
    800082f4:	0000006f          	j	800082f4 <uartputc+0xc>
    800082f8:	fd010113          	addi	sp,sp,-48
    800082fc:	02813023          	sd	s0,32(sp)
    80008300:	00913c23          	sd	s1,24(sp)
    80008304:	01213823          	sd	s2,16(sp)
    80008308:	01313423          	sd	s3,8(sp)
    8000830c:	02113423          	sd	ra,40(sp)
    80008310:	03010413          	addi	s0,sp,48
    80008314:	00004917          	auipc	s2,0x4
    80008318:	85c90913          	addi	s2,s2,-1956 # 8000bb70 <uart_tx_r>
    8000831c:	00093783          	ld	a5,0(s2)
    80008320:	00004497          	auipc	s1,0x4
    80008324:	85848493          	addi	s1,s1,-1960 # 8000bb78 <uart_tx_w>
    80008328:	0004b703          	ld	a4,0(s1)
    8000832c:	02078693          	addi	a3,a5,32
    80008330:	00050993          	mv	s3,a0
    80008334:	02e69c63          	bne	a3,a4,8000836c <uartputc+0x84>
    80008338:	00001097          	auipc	ra,0x1
    8000833c:	834080e7          	jalr	-1996(ra) # 80008b6c <push_on>
    80008340:	00093783          	ld	a5,0(s2)
    80008344:	0004b703          	ld	a4,0(s1)
    80008348:	02078793          	addi	a5,a5,32
    8000834c:	00e79463          	bne	a5,a4,80008354 <uartputc+0x6c>
    80008350:	0000006f          	j	80008350 <uartputc+0x68>
    80008354:	00001097          	auipc	ra,0x1
    80008358:	88c080e7          	jalr	-1908(ra) # 80008be0 <pop_on>
    8000835c:	00093783          	ld	a5,0(s2)
    80008360:	0004b703          	ld	a4,0(s1)
    80008364:	02078693          	addi	a3,a5,32
    80008368:	fce688e3          	beq	a3,a4,80008338 <uartputc+0x50>
    8000836c:	01f77693          	andi	a3,a4,31
    80008370:	00005597          	auipc	a1,0x5
    80008374:	d6058593          	addi	a1,a1,-672 # 8000d0d0 <uart_tx_buf>
    80008378:	00d586b3          	add	a3,a1,a3
    8000837c:	00170713          	addi	a4,a4,1
    80008380:	01368023          	sb	s3,0(a3)
    80008384:	00e4b023          	sd	a4,0(s1)
    80008388:	10000637          	lui	a2,0x10000
    8000838c:	02f71063          	bne	a4,a5,800083ac <uartputc+0xc4>
    80008390:	0340006f          	j	800083c4 <uartputc+0xdc>
    80008394:	00074703          	lbu	a4,0(a4)
    80008398:	00f93023          	sd	a5,0(s2)
    8000839c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800083a0:	00093783          	ld	a5,0(s2)
    800083a4:	0004b703          	ld	a4,0(s1)
    800083a8:	00f70e63          	beq	a4,a5,800083c4 <uartputc+0xdc>
    800083ac:	00564683          	lbu	a3,5(a2)
    800083b0:	01f7f713          	andi	a4,a5,31
    800083b4:	00e58733          	add	a4,a1,a4
    800083b8:	0206f693          	andi	a3,a3,32
    800083bc:	00178793          	addi	a5,a5,1
    800083c0:	fc069ae3          	bnez	a3,80008394 <uartputc+0xac>
    800083c4:	02813083          	ld	ra,40(sp)
    800083c8:	02013403          	ld	s0,32(sp)
    800083cc:	01813483          	ld	s1,24(sp)
    800083d0:	01013903          	ld	s2,16(sp)
    800083d4:	00813983          	ld	s3,8(sp)
    800083d8:	03010113          	addi	sp,sp,48
    800083dc:	00008067          	ret

00000000800083e0 <uartputc_sync>:
    800083e0:	ff010113          	addi	sp,sp,-16
    800083e4:	00813423          	sd	s0,8(sp)
    800083e8:	01010413          	addi	s0,sp,16
    800083ec:	00003717          	auipc	a4,0x3
    800083f0:	77c72703          	lw	a4,1916(a4) # 8000bb68 <panicked>
    800083f4:	02071663          	bnez	a4,80008420 <uartputc_sync+0x40>
    800083f8:	00050793          	mv	a5,a0
    800083fc:	100006b7          	lui	a3,0x10000
    80008400:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008404:	02077713          	andi	a4,a4,32
    80008408:	fe070ce3          	beqz	a4,80008400 <uartputc_sync+0x20>
    8000840c:	0ff7f793          	andi	a5,a5,255
    80008410:	00f68023          	sb	a5,0(a3)
    80008414:	00813403          	ld	s0,8(sp)
    80008418:	01010113          	addi	sp,sp,16
    8000841c:	00008067          	ret
    80008420:	0000006f          	j	80008420 <uartputc_sync+0x40>

0000000080008424 <uartstart>:
    80008424:	ff010113          	addi	sp,sp,-16
    80008428:	00813423          	sd	s0,8(sp)
    8000842c:	01010413          	addi	s0,sp,16
    80008430:	00003617          	auipc	a2,0x3
    80008434:	74060613          	addi	a2,a2,1856 # 8000bb70 <uart_tx_r>
    80008438:	00003517          	auipc	a0,0x3
    8000843c:	74050513          	addi	a0,a0,1856 # 8000bb78 <uart_tx_w>
    80008440:	00063783          	ld	a5,0(a2)
    80008444:	00053703          	ld	a4,0(a0)
    80008448:	04f70263          	beq	a4,a5,8000848c <uartstart+0x68>
    8000844c:	100005b7          	lui	a1,0x10000
    80008450:	00005817          	auipc	a6,0x5
    80008454:	c8080813          	addi	a6,a6,-896 # 8000d0d0 <uart_tx_buf>
    80008458:	01c0006f          	j	80008474 <uartstart+0x50>
    8000845c:	0006c703          	lbu	a4,0(a3)
    80008460:	00f63023          	sd	a5,0(a2)
    80008464:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008468:	00063783          	ld	a5,0(a2)
    8000846c:	00053703          	ld	a4,0(a0)
    80008470:	00f70e63          	beq	a4,a5,8000848c <uartstart+0x68>
    80008474:	01f7f713          	andi	a4,a5,31
    80008478:	00e806b3          	add	a3,a6,a4
    8000847c:	0055c703          	lbu	a4,5(a1)
    80008480:	00178793          	addi	a5,a5,1
    80008484:	02077713          	andi	a4,a4,32
    80008488:	fc071ae3          	bnez	a4,8000845c <uartstart+0x38>
    8000848c:	00813403          	ld	s0,8(sp)
    80008490:	01010113          	addi	sp,sp,16
    80008494:	00008067          	ret

0000000080008498 <uartgetc>:
    80008498:	ff010113          	addi	sp,sp,-16
    8000849c:	00813423          	sd	s0,8(sp)
    800084a0:	01010413          	addi	s0,sp,16
    800084a4:	10000737          	lui	a4,0x10000
    800084a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800084ac:	0017f793          	andi	a5,a5,1
    800084b0:	00078c63          	beqz	a5,800084c8 <uartgetc+0x30>
    800084b4:	00074503          	lbu	a0,0(a4)
    800084b8:	0ff57513          	andi	a0,a0,255
    800084bc:	00813403          	ld	s0,8(sp)
    800084c0:	01010113          	addi	sp,sp,16
    800084c4:	00008067          	ret
    800084c8:	fff00513          	li	a0,-1
    800084cc:	ff1ff06f          	j	800084bc <uartgetc+0x24>

00000000800084d0 <uartintr>:
    800084d0:	100007b7          	lui	a5,0x10000
    800084d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800084d8:	0017f793          	andi	a5,a5,1
    800084dc:	0a078463          	beqz	a5,80008584 <uartintr+0xb4>
    800084e0:	fe010113          	addi	sp,sp,-32
    800084e4:	00813823          	sd	s0,16(sp)
    800084e8:	00913423          	sd	s1,8(sp)
    800084ec:	00113c23          	sd	ra,24(sp)
    800084f0:	02010413          	addi	s0,sp,32
    800084f4:	100004b7          	lui	s1,0x10000
    800084f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800084fc:	0ff57513          	andi	a0,a0,255
    80008500:	fffff097          	auipc	ra,0xfffff
    80008504:	534080e7          	jalr	1332(ra) # 80007a34 <consoleintr>
    80008508:	0054c783          	lbu	a5,5(s1)
    8000850c:	0017f793          	andi	a5,a5,1
    80008510:	fe0794e3          	bnez	a5,800084f8 <uartintr+0x28>
    80008514:	00003617          	auipc	a2,0x3
    80008518:	65c60613          	addi	a2,a2,1628 # 8000bb70 <uart_tx_r>
    8000851c:	00003517          	auipc	a0,0x3
    80008520:	65c50513          	addi	a0,a0,1628 # 8000bb78 <uart_tx_w>
    80008524:	00063783          	ld	a5,0(a2)
    80008528:	00053703          	ld	a4,0(a0)
    8000852c:	04f70263          	beq	a4,a5,80008570 <uartintr+0xa0>
    80008530:	100005b7          	lui	a1,0x10000
    80008534:	00005817          	auipc	a6,0x5
    80008538:	b9c80813          	addi	a6,a6,-1124 # 8000d0d0 <uart_tx_buf>
    8000853c:	01c0006f          	j	80008558 <uartintr+0x88>
    80008540:	0006c703          	lbu	a4,0(a3)
    80008544:	00f63023          	sd	a5,0(a2)
    80008548:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000854c:	00063783          	ld	a5,0(a2)
    80008550:	00053703          	ld	a4,0(a0)
    80008554:	00f70e63          	beq	a4,a5,80008570 <uartintr+0xa0>
    80008558:	01f7f713          	andi	a4,a5,31
    8000855c:	00e806b3          	add	a3,a6,a4
    80008560:	0055c703          	lbu	a4,5(a1)
    80008564:	00178793          	addi	a5,a5,1
    80008568:	02077713          	andi	a4,a4,32
    8000856c:	fc071ae3          	bnez	a4,80008540 <uartintr+0x70>
    80008570:	01813083          	ld	ra,24(sp)
    80008574:	01013403          	ld	s0,16(sp)
    80008578:	00813483          	ld	s1,8(sp)
    8000857c:	02010113          	addi	sp,sp,32
    80008580:	00008067          	ret
    80008584:	00003617          	auipc	a2,0x3
    80008588:	5ec60613          	addi	a2,a2,1516 # 8000bb70 <uart_tx_r>
    8000858c:	00003517          	auipc	a0,0x3
    80008590:	5ec50513          	addi	a0,a0,1516 # 8000bb78 <uart_tx_w>
    80008594:	00063783          	ld	a5,0(a2)
    80008598:	00053703          	ld	a4,0(a0)
    8000859c:	04f70263          	beq	a4,a5,800085e0 <uartintr+0x110>
    800085a0:	100005b7          	lui	a1,0x10000
    800085a4:	00005817          	auipc	a6,0x5
    800085a8:	b2c80813          	addi	a6,a6,-1236 # 8000d0d0 <uart_tx_buf>
    800085ac:	01c0006f          	j	800085c8 <uartintr+0xf8>
    800085b0:	0006c703          	lbu	a4,0(a3)
    800085b4:	00f63023          	sd	a5,0(a2)
    800085b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800085bc:	00063783          	ld	a5,0(a2)
    800085c0:	00053703          	ld	a4,0(a0)
    800085c4:	02f70063          	beq	a4,a5,800085e4 <uartintr+0x114>
    800085c8:	01f7f713          	andi	a4,a5,31
    800085cc:	00e806b3          	add	a3,a6,a4
    800085d0:	0055c703          	lbu	a4,5(a1)
    800085d4:	00178793          	addi	a5,a5,1
    800085d8:	02077713          	andi	a4,a4,32
    800085dc:	fc071ae3          	bnez	a4,800085b0 <uartintr+0xe0>
    800085e0:	00008067          	ret
    800085e4:	00008067          	ret

00000000800085e8 <kinit>:
    800085e8:	fc010113          	addi	sp,sp,-64
    800085ec:	02913423          	sd	s1,40(sp)
    800085f0:	fffff7b7          	lui	a5,0xfffff
    800085f4:	00006497          	auipc	s1,0x6
    800085f8:	afb48493          	addi	s1,s1,-1285 # 8000e0ef <end+0xfff>
    800085fc:	02813823          	sd	s0,48(sp)
    80008600:	01313c23          	sd	s3,24(sp)
    80008604:	00f4f4b3          	and	s1,s1,a5
    80008608:	02113c23          	sd	ra,56(sp)
    8000860c:	03213023          	sd	s2,32(sp)
    80008610:	01413823          	sd	s4,16(sp)
    80008614:	01513423          	sd	s5,8(sp)
    80008618:	04010413          	addi	s0,sp,64
    8000861c:	000017b7          	lui	a5,0x1
    80008620:	01100993          	li	s3,17
    80008624:	00f487b3          	add	a5,s1,a5
    80008628:	01b99993          	slli	s3,s3,0x1b
    8000862c:	06f9e063          	bltu	s3,a5,8000868c <kinit+0xa4>
    80008630:	00005a97          	auipc	s5,0x5
    80008634:	ac0a8a93          	addi	s5,s5,-1344 # 8000d0f0 <end>
    80008638:	0754ec63          	bltu	s1,s5,800086b0 <kinit+0xc8>
    8000863c:	0734fa63          	bgeu	s1,s3,800086b0 <kinit+0xc8>
    80008640:	00088a37          	lui	s4,0x88
    80008644:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008648:	00003917          	auipc	s2,0x3
    8000864c:	53890913          	addi	s2,s2,1336 # 8000bb80 <kmem>
    80008650:	00ca1a13          	slli	s4,s4,0xc
    80008654:	0140006f          	j	80008668 <kinit+0x80>
    80008658:	000017b7          	lui	a5,0x1
    8000865c:	00f484b3          	add	s1,s1,a5
    80008660:	0554e863          	bltu	s1,s5,800086b0 <kinit+0xc8>
    80008664:	0534f663          	bgeu	s1,s3,800086b0 <kinit+0xc8>
    80008668:	00001637          	lui	a2,0x1
    8000866c:	00100593          	li	a1,1
    80008670:	00048513          	mv	a0,s1
    80008674:	00000097          	auipc	ra,0x0
    80008678:	5e4080e7          	jalr	1508(ra) # 80008c58 <__memset>
    8000867c:	00093783          	ld	a5,0(s2)
    80008680:	00f4b023          	sd	a5,0(s1)
    80008684:	00993023          	sd	s1,0(s2)
    80008688:	fd4498e3          	bne	s1,s4,80008658 <kinit+0x70>
    8000868c:	03813083          	ld	ra,56(sp)
    80008690:	03013403          	ld	s0,48(sp)
    80008694:	02813483          	ld	s1,40(sp)
    80008698:	02013903          	ld	s2,32(sp)
    8000869c:	01813983          	ld	s3,24(sp)
    800086a0:	01013a03          	ld	s4,16(sp)
    800086a4:	00813a83          	ld	s5,8(sp)
    800086a8:	04010113          	addi	sp,sp,64
    800086ac:	00008067          	ret
    800086b0:	00001517          	auipc	a0,0x1
    800086b4:	10850513          	addi	a0,a0,264 # 800097b8 <digits+0x18>
    800086b8:	fffff097          	auipc	ra,0xfffff
    800086bc:	4b4080e7          	jalr	1204(ra) # 80007b6c <panic>

00000000800086c0 <freerange>:
    800086c0:	fc010113          	addi	sp,sp,-64
    800086c4:	000017b7          	lui	a5,0x1
    800086c8:	02913423          	sd	s1,40(sp)
    800086cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800086d0:	009504b3          	add	s1,a0,s1
    800086d4:	fffff537          	lui	a0,0xfffff
    800086d8:	02813823          	sd	s0,48(sp)
    800086dc:	02113c23          	sd	ra,56(sp)
    800086e0:	03213023          	sd	s2,32(sp)
    800086e4:	01313c23          	sd	s3,24(sp)
    800086e8:	01413823          	sd	s4,16(sp)
    800086ec:	01513423          	sd	s5,8(sp)
    800086f0:	01613023          	sd	s6,0(sp)
    800086f4:	04010413          	addi	s0,sp,64
    800086f8:	00a4f4b3          	and	s1,s1,a0
    800086fc:	00f487b3          	add	a5,s1,a5
    80008700:	06f5e463          	bltu	a1,a5,80008768 <freerange+0xa8>
    80008704:	00005a97          	auipc	s5,0x5
    80008708:	9eca8a93          	addi	s5,s5,-1556 # 8000d0f0 <end>
    8000870c:	0954e263          	bltu	s1,s5,80008790 <freerange+0xd0>
    80008710:	01100993          	li	s3,17
    80008714:	01b99993          	slli	s3,s3,0x1b
    80008718:	0734fc63          	bgeu	s1,s3,80008790 <freerange+0xd0>
    8000871c:	00058a13          	mv	s4,a1
    80008720:	00003917          	auipc	s2,0x3
    80008724:	46090913          	addi	s2,s2,1120 # 8000bb80 <kmem>
    80008728:	00002b37          	lui	s6,0x2
    8000872c:	0140006f          	j	80008740 <freerange+0x80>
    80008730:	000017b7          	lui	a5,0x1
    80008734:	00f484b3          	add	s1,s1,a5
    80008738:	0554ec63          	bltu	s1,s5,80008790 <freerange+0xd0>
    8000873c:	0534fa63          	bgeu	s1,s3,80008790 <freerange+0xd0>
    80008740:	00001637          	lui	a2,0x1
    80008744:	00100593          	li	a1,1
    80008748:	00048513          	mv	a0,s1
    8000874c:	00000097          	auipc	ra,0x0
    80008750:	50c080e7          	jalr	1292(ra) # 80008c58 <__memset>
    80008754:	00093703          	ld	a4,0(s2)
    80008758:	016487b3          	add	a5,s1,s6
    8000875c:	00e4b023          	sd	a4,0(s1)
    80008760:	00993023          	sd	s1,0(s2)
    80008764:	fcfa76e3          	bgeu	s4,a5,80008730 <freerange+0x70>
    80008768:	03813083          	ld	ra,56(sp)
    8000876c:	03013403          	ld	s0,48(sp)
    80008770:	02813483          	ld	s1,40(sp)
    80008774:	02013903          	ld	s2,32(sp)
    80008778:	01813983          	ld	s3,24(sp)
    8000877c:	01013a03          	ld	s4,16(sp)
    80008780:	00813a83          	ld	s5,8(sp)
    80008784:	00013b03          	ld	s6,0(sp)
    80008788:	04010113          	addi	sp,sp,64
    8000878c:	00008067          	ret
    80008790:	00001517          	auipc	a0,0x1
    80008794:	02850513          	addi	a0,a0,40 # 800097b8 <digits+0x18>
    80008798:	fffff097          	auipc	ra,0xfffff
    8000879c:	3d4080e7          	jalr	980(ra) # 80007b6c <panic>

00000000800087a0 <kfree>:
    800087a0:	fe010113          	addi	sp,sp,-32
    800087a4:	00813823          	sd	s0,16(sp)
    800087a8:	00113c23          	sd	ra,24(sp)
    800087ac:	00913423          	sd	s1,8(sp)
    800087b0:	02010413          	addi	s0,sp,32
    800087b4:	03451793          	slli	a5,a0,0x34
    800087b8:	04079c63          	bnez	a5,80008810 <kfree+0x70>
    800087bc:	00005797          	auipc	a5,0x5
    800087c0:	93478793          	addi	a5,a5,-1740 # 8000d0f0 <end>
    800087c4:	00050493          	mv	s1,a0
    800087c8:	04f56463          	bltu	a0,a5,80008810 <kfree+0x70>
    800087cc:	01100793          	li	a5,17
    800087d0:	01b79793          	slli	a5,a5,0x1b
    800087d4:	02f57e63          	bgeu	a0,a5,80008810 <kfree+0x70>
    800087d8:	00001637          	lui	a2,0x1
    800087dc:	00100593          	li	a1,1
    800087e0:	00000097          	auipc	ra,0x0
    800087e4:	478080e7          	jalr	1144(ra) # 80008c58 <__memset>
    800087e8:	00003797          	auipc	a5,0x3
    800087ec:	39878793          	addi	a5,a5,920 # 8000bb80 <kmem>
    800087f0:	0007b703          	ld	a4,0(a5)
    800087f4:	01813083          	ld	ra,24(sp)
    800087f8:	01013403          	ld	s0,16(sp)
    800087fc:	00e4b023          	sd	a4,0(s1)
    80008800:	0097b023          	sd	s1,0(a5)
    80008804:	00813483          	ld	s1,8(sp)
    80008808:	02010113          	addi	sp,sp,32
    8000880c:	00008067          	ret
    80008810:	00001517          	auipc	a0,0x1
    80008814:	fa850513          	addi	a0,a0,-88 # 800097b8 <digits+0x18>
    80008818:	fffff097          	auipc	ra,0xfffff
    8000881c:	354080e7          	jalr	852(ra) # 80007b6c <panic>

0000000080008820 <kalloc>:
    80008820:	fe010113          	addi	sp,sp,-32
    80008824:	00813823          	sd	s0,16(sp)
    80008828:	00913423          	sd	s1,8(sp)
    8000882c:	00113c23          	sd	ra,24(sp)
    80008830:	02010413          	addi	s0,sp,32
    80008834:	00003797          	auipc	a5,0x3
    80008838:	34c78793          	addi	a5,a5,844 # 8000bb80 <kmem>
    8000883c:	0007b483          	ld	s1,0(a5)
    80008840:	02048063          	beqz	s1,80008860 <kalloc+0x40>
    80008844:	0004b703          	ld	a4,0(s1)
    80008848:	00001637          	lui	a2,0x1
    8000884c:	00500593          	li	a1,5
    80008850:	00048513          	mv	a0,s1
    80008854:	00e7b023          	sd	a4,0(a5)
    80008858:	00000097          	auipc	ra,0x0
    8000885c:	400080e7          	jalr	1024(ra) # 80008c58 <__memset>
    80008860:	01813083          	ld	ra,24(sp)
    80008864:	01013403          	ld	s0,16(sp)
    80008868:	00048513          	mv	a0,s1
    8000886c:	00813483          	ld	s1,8(sp)
    80008870:	02010113          	addi	sp,sp,32
    80008874:	00008067          	ret

0000000080008878 <initlock>:
    80008878:	ff010113          	addi	sp,sp,-16
    8000887c:	00813423          	sd	s0,8(sp)
    80008880:	01010413          	addi	s0,sp,16
    80008884:	00813403          	ld	s0,8(sp)
    80008888:	00b53423          	sd	a1,8(a0)
    8000888c:	00052023          	sw	zero,0(a0)
    80008890:	00053823          	sd	zero,16(a0)
    80008894:	01010113          	addi	sp,sp,16
    80008898:	00008067          	ret

000000008000889c <acquire>:
    8000889c:	fe010113          	addi	sp,sp,-32
    800088a0:	00813823          	sd	s0,16(sp)
    800088a4:	00913423          	sd	s1,8(sp)
    800088a8:	00113c23          	sd	ra,24(sp)
    800088ac:	01213023          	sd	s2,0(sp)
    800088b0:	02010413          	addi	s0,sp,32
    800088b4:	00050493          	mv	s1,a0
    800088b8:	10002973          	csrr	s2,sstatus
    800088bc:	100027f3          	csrr	a5,sstatus
    800088c0:	ffd7f793          	andi	a5,a5,-3
    800088c4:	10079073          	csrw	sstatus,a5
    800088c8:	fffff097          	auipc	ra,0xfffff
    800088cc:	8e4080e7          	jalr	-1820(ra) # 800071ac <mycpu>
    800088d0:	07852783          	lw	a5,120(a0)
    800088d4:	06078e63          	beqz	a5,80008950 <acquire+0xb4>
    800088d8:	fffff097          	auipc	ra,0xfffff
    800088dc:	8d4080e7          	jalr	-1836(ra) # 800071ac <mycpu>
    800088e0:	07852783          	lw	a5,120(a0)
    800088e4:	0004a703          	lw	a4,0(s1)
    800088e8:	0017879b          	addiw	a5,a5,1
    800088ec:	06f52c23          	sw	a5,120(a0)
    800088f0:	04071063          	bnez	a4,80008930 <acquire+0x94>
    800088f4:	00100713          	li	a4,1
    800088f8:	00070793          	mv	a5,a4
    800088fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008900:	0007879b          	sext.w	a5,a5
    80008904:	fe079ae3          	bnez	a5,800088f8 <acquire+0x5c>
    80008908:	0ff0000f          	fence
    8000890c:	fffff097          	auipc	ra,0xfffff
    80008910:	8a0080e7          	jalr	-1888(ra) # 800071ac <mycpu>
    80008914:	01813083          	ld	ra,24(sp)
    80008918:	01013403          	ld	s0,16(sp)
    8000891c:	00a4b823          	sd	a0,16(s1)
    80008920:	00013903          	ld	s2,0(sp)
    80008924:	00813483          	ld	s1,8(sp)
    80008928:	02010113          	addi	sp,sp,32
    8000892c:	00008067          	ret
    80008930:	0104b903          	ld	s2,16(s1)
    80008934:	fffff097          	auipc	ra,0xfffff
    80008938:	878080e7          	jalr	-1928(ra) # 800071ac <mycpu>
    8000893c:	faa91ce3          	bne	s2,a0,800088f4 <acquire+0x58>
    80008940:	00001517          	auipc	a0,0x1
    80008944:	e8050513          	addi	a0,a0,-384 # 800097c0 <digits+0x20>
    80008948:	fffff097          	auipc	ra,0xfffff
    8000894c:	224080e7          	jalr	548(ra) # 80007b6c <panic>
    80008950:	00195913          	srli	s2,s2,0x1
    80008954:	fffff097          	auipc	ra,0xfffff
    80008958:	858080e7          	jalr	-1960(ra) # 800071ac <mycpu>
    8000895c:	00197913          	andi	s2,s2,1
    80008960:	07252e23          	sw	s2,124(a0)
    80008964:	f75ff06f          	j	800088d8 <acquire+0x3c>

0000000080008968 <release>:
    80008968:	fe010113          	addi	sp,sp,-32
    8000896c:	00813823          	sd	s0,16(sp)
    80008970:	00113c23          	sd	ra,24(sp)
    80008974:	00913423          	sd	s1,8(sp)
    80008978:	01213023          	sd	s2,0(sp)
    8000897c:	02010413          	addi	s0,sp,32
    80008980:	00052783          	lw	a5,0(a0)
    80008984:	00079a63          	bnez	a5,80008998 <release+0x30>
    80008988:	00001517          	auipc	a0,0x1
    8000898c:	e4050513          	addi	a0,a0,-448 # 800097c8 <digits+0x28>
    80008990:	fffff097          	auipc	ra,0xfffff
    80008994:	1dc080e7          	jalr	476(ra) # 80007b6c <panic>
    80008998:	01053903          	ld	s2,16(a0)
    8000899c:	00050493          	mv	s1,a0
    800089a0:	fffff097          	auipc	ra,0xfffff
    800089a4:	80c080e7          	jalr	-2036(ra) # 800071ac <mycpu>
    800089a8:	fea910e3          	bne	s2,a0,80008988 <release+0x20>
    800089ac:	0004b823          	sd	zero,16(s1)
    800089b0:	0ff0000f          	fence
    800089b4:	0f50000f          	fence	iorw,ow
    800089b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800089bc:	ffffe097          	auipc	ra,0xffffe
    800089c0:	7f0080e7          	jalr	2032(ra) # 800071ac <mycpu>
    800089c4:	100027f3          	csrr	a5,sstatus
    800089c8:	0027f793          	andi	a5,a5,2
    800089cc:	04079a63          	bnez	a5,80008a20 <release+0xb8>
    800089d0:	07852783          	lw	a5,120(a0)
    800089d4:	02f05e63          	blez	a5,80008a10 <release+0xa8>
    800089d8:	fff7871b          	addiw	a4,a5,-1
    800089dc:	06e52c23          	sw	a4,120(a0)
    800089e0:	00071c63          	bnez	a4,800089f8 <release+0x90>
    800089e4:	07c52783          	lw	a5,124(a0)
    800089e8:	00078863          	beqz	a5,800089f8 <release+0x90>
    800089ec:	100027f3          	csrr	a5,sstatus
    800089f0:	0027e793          	ori	a5,a5,2
    800089f4:	10079073          	csrw	sstatus,a5
    800089f8:	01813083          	ld	ra,24(sp)
    800089fc:	01013403          	ld	s0,16(sp)
    80008a00:	00813483          	ld	s1,8(sp)
    80008a04:	00013903          	ld	s2,0(sp)
    80008a08:	02010113          	addi	sp,sp,32
    80008a0c:	00008067          	ret
    80008a10:	00001517          	auipc	a0,0x1
    80008a14:	dd850513          	addi	a0,a0,-552 # 800097e8 <digits+0x48>
    80008a18:	fffff097          	auipc	ra,0xfffff
    80008a1c:	154080e7          	jalr	340(ra) # 80007b6c <panic>
    80008a20:	00001517          	auipc	a0,0x1
    80008a24:	db050513          	addi	a0,a0,-592 # 800097d0 <digits+0x30>
    80008a28:	fffff097          	auipc	ra,0xfffff
    80008a2c:	144080e7          	jalr	324(ra) # 80007b6c <panic>

0000000080008a30 <holding>:
    80008a30:	00052783          	lw	a5,0(a0)
    80008a34:	00079663          	bnez	a5,80008a40 <holding+0x10>
    80008a38:	00000513          	li	a0,0
    80008a3c:	00008067          	ret
    80008a40:	fe010113          	addi	sp,sp,-32
    80008a44:	00813823          	sd	s0,16(sp)
    80008a48:	00913423          	sd	s1,8(sp)
    80008a4c:	00113c23          	sd	ra,24(sp)
    80008a50:	02010413          	addi	s0,sp,32
    80008a54:	01053483          	ld	s1,16(a0)
    80008a58:	ffffe097          	auipc	ra,0xffffe
    80008a5c:	754080e7          	jalr	1876(ra) # 800071ac <mycpu>
    80008a60:	01813083          	ld	ra,24(sp)
    80008a64:	01013403          	ld	s0,16(sp)
    80008a68:	40a48533          	sub	a0,s1,a0
    80008a6c:	00153513          	seqz	a0,a0
    80008a70:	00813483          	ld	s1,8(sp)
    80008a74:	02010113          	addi	sp,sp,32
    80008a78:	00008067          	ret

0000000080008a7c <push_off>:
    80008a7c:	fe010113          	addi	sp,sp,-32
    80008a80:	00813823          	sd	s0,16(sp)
    80008a84:	00113c23          	sd	ra,24(sp)
    80008a88:	00913423          	sd	s1,8(sp)
    80008a8c:	02010413          	addi	s0,sp,32
    80008a90:	100024f3          	csrr	s1,sstatus
    80008a94:	100027f3          	csrr	a5,sstatus
    80008a98:	ffd7f793          	andi	a5,a5,-3
    80008a9c:	10079073          	csrw	sstatus,a5
    80008aa0:	ffffe097          	auipc	ra,0xffffe
    80008aa4:	70c080e7          	jalr	1804(ra) # 800071ac <mycpu>
    80008aa8:	07852783          	lw	a5,120(a0)
    80008aac:	02078663          	beqz	a5,80008ad8 <push_off+0x5c>
    80008ab0:	ffffe097          	auipc	ra,0xffffe
    80008ab4:	6fc080e7          	jalr	1788(ra) # 800071ac <mycpu>
    80008ab8:	07852783          	lw	a5,120(a0)
    80008abc:	01813083          	ld	ra,24(sp)
    80008ac0:	01013403          	ld	s0,16(sp)
    80008ac4:	0017879b          	addiw	a5,a5,1
    80008ac8:	06f52c23          	sw	a5,120(a0)
    80008acc:	00813483          	ld	s1,8(sp)
    80008ad0:	02010113          	addi	sp,sp,32
    80008ad4:	00008067          	ret
    80008ad8:	0014d493          	srli	s1,s1,0x1
    80008adc:	ffffe097          	auipc	ra,0xffffe
    80008ae0:	6d0080e7          	jalr	1744(ra) # 800071ac <mycpu>
    80008ae4:	0014f493          	andi	s1,s1,1
    80008ae8:	06952e23          	sw	s1,124(a0)
    80008aec:	fc5ff06f          	j	80008ab0 <push_off+0x34>

0000000080008af0 <pop_off>:
    80008af0:	ff010113          	addi	sp,sp,-16
    80008af4:	00813023          	sd	s0,0(sp)
    80008af8:	00113423          	sd	ra,8(sp)
    80008afc:	01010413          	addi	s0,sp,16
    80008b00:	ffffe097          	auipc	ra,0xffffe
    80008b04:	6ac080e7          	jalr	1708(ra) # 800071ac <mycpu>
    80008b08:	100027f3          	csrr	a5,sstatus
    80008b0c:	0027f793          	andi	a5,a5,2
    80008b10:	04079663          	bnez	a5,80008b5c <pop_off+0x6c>
    80008b14:	07852783          	lw	a5,120(a0)
    80008b18:	02f05a63          	blez	a5,80008b4c <pop_off+0x5c>
    80008b1c:	fff7871b          	addiw	a4,a5,-1
    80008b20:	06e52c23          	sw	a4,120(a0)
    80008b24:	00071c63          	bnez	a4,80008b3c <pop_off+0x4c>
    80008b28:	07c52783          	lw	a5,124(a0)
    80008b2c:	00078863          	beqz	a5,80008b3c <pop_off+0x4c>
    80008b30:	100027f3          	csrr	a5,sstatus
    80008b34:	0027e793          	ori	a5,a5,2
    80008b38:	10079073          	csrw	sstatus,a5
    80008b3c:	00813083          	ld	ra,8(sp)
    80008b40:	00013403          	ld	s0,0(sp)
    80008b44:	01010113          	addi	sp,sp,16
    80008b48:	00008067          	ret
    80008b4c:	00001517          	auipc	a0,0x1
    80008b50:	c9c50513          	addi	a0,a0,-868 # 800097e8 <digits+0x48>
    80008b54:	fffff097          	auipc	ra,0xfffff
    80008b58:	018080e7          	jalr	24(ra) # 80007b6c <panic>
    80008b5c:	00001517          	auipc	a0,0x1
    80008b60:	c7450513          	addi	a0,a0,-908 # 800097d0 <digits+0x30>
    80008b64:	fffff097          	auipc	ra,0xfffff
    80008b68:	008080e7          	jalr	8(ra) # 80007b6c <panic>

0000000080008b6c <push_on>:
    80008b6c:	fe010113          	addi	sp,sp,-32
    80008b70:	00813823          	sd	s0,16(sp)
    80008b74:	00113c23          	sd	ra,24(sp)
    80008b78:	00913423          	sd	s1,8(sp)
    80008b7c:	02010413          	addi	s0,sp,32
    80008b80:	100024f3          	csrr	s1,sstatus
    80008b84:	100027f3          	csrr	a5,sstatus
    80008b88:	0027e793          	ori	a5,a5,2
    80008b8c:	10079073          	csrw	sstatus,a5
    80008b90:	ffffe097          	auipc	ra,0xffffe
    80008b94:	61c080e7          	jalr	1564(ra) # 800071ac <mycpu>
    80008b98:	07852783          	lw	a5,120(a0)
    80008b9c:	02078663          	beqz	a5,80008bc8 <push_on+0x5c>
    80008ba0:	ffffe097          	auipc	ra,0xffffe
    80008ba4:	60c080e7          	jalr	1548(ra) # 800071ac <mycpu>
    80008ba8:	07852783          	lw	a5,120(a0)
    80008bac:	01813083          	ld	ra,24(sp)
    80008bb0:	01013403          	ld	s0,16(sp)
    80008bb4:	0017879b          	addiw	a5,a5,1
    80008bb8:	06f52c23          	sw	a5,120(a0)
    80008bbc:	00813483          	ld	s1,8(sp)
    80008bc0:	02010113          	addi	sp,sp,32
    80008bc4:	00008067          	ret
    80008bc8:	0014d493          	srli	s1,s1,0x1
    80008bcc:	ffffe097          	auipc	ra,0xffffe
    80008bd0:	5e0080e7          	jalr	1504(ra) # 800071ac <mycpu>
    80008bd4:	0014f493          	andi	s1,s1,1
    80008bd8:	06952e23          	sw	s1,124(a0)
    80008bdc:	fc5ff06f          	j	80008ba0 <push_on+0x34>

0000000080008be0 <pop_on>:
    80008be0:	ff010113          	addi	sp,sp,-16
    80008be4:	00813023          	sd	s0,0(sp)
    80008be8:	00113423          	sd	ra,8(sp)
    80008bec:	01010413          	addi	s0,sp,16
    80008bf0:	ffffe097          	auipc	ra,0xffffe
    80008bf4:	5bc080e7          	jalr	1468(ra) # 800071ac <mycpu>
    80008bf8:	100027f3          	csrr	a5,sstatus
    80008bfc:	0027f793          	andi	a5,a5,2
    80008c00:	04078463          	beqz	a5,80008c48 <pop_on+0x68>
    80008c04:	07852783          	lw	a5,120(a0)
    80008c08:	02f05863          	blez	a5,80008c38 <pop_on+0x58>
    80008c0c:	fff7879b          	addiw	a5,a5,-1
    80008c10:	06f52c23          	sw	a5,120(a0)
    80008c14:	07853783          	ld	a5,120(a0)
    80008c18:	00079863          	bnez	a5,80008c28 <pop_on+0x48>
    80008c1c:	100027f3          	csrr	a5,sstatus
    80008c20:	ffd7f793          	andi	a5,a5,-3
    80008c24:	10079073          	csrw	sstatus,a5
    80008c28:	00813083          	ld	ra,8(sp)
    80008c2c:	00013403          	ld	s0,0(sp)
    80008c30:	01010113          	addi	sp,sp,16
    80008c34:	00008067          	ret
    80008c38:	00001517          	auipc	a0,0x1
    80008c3c:	bd850513          	addi	a0,a0,-1064 # 80009810 <digits+0x70>
    80008c40:	fffff097          	auipc	ra,0xfffff
    80008c44:	f2c080e7          	jalr	-212(ra) # 80007b6c <panic>
    80008c48:	00001517          	auipc	a0,0x1
    80008c4c:	ba850513          	addi	a0,a0,-1112 # 800097f0 <digits+0x50>
    80008c50:	fffff097          	auipc	ra,0xfffff
    80008c54:	f1c080e7          	jalr	-228(ra) # 80007b6c <panic>

0000000080008c58 <__memset>:
    80008c58:	ff010113          	addi	sp,sp,-16
    80008c5c:	00813423          	sd	s0,8(sp)
    80008c60:	01010413          	addi	s0,sp,16
    80008c64:	1a060e63          	beqz	a2,80008e20 <__memset+0x1c8>
    80008c68:	40a007b3          	neg	a5,a0
    80008c6c:	0077f793          	andi	a5,a5,7
    80008c70:	00778693          	addi	a3,a5,7
    80008c74:	00b00813          	li	a6,11
    80008c78:	0ff5f593          	andi	a1,a1,255
    80008c7c:	fff6071b          	addiw	a4,a2,-1
    80008c80:	1b06e663          	bltu	a3,a6,80008e2c <__memset+0x1d4>
    80008c84:	1cd76463          	bltu	a4,a3,80008e4c <__memset+0x1f4>
    80008c88:	1a078e63          	beqz	a5,80008e44 <__memset+0x1ec>
    80008c8c:	00b50023          	sb	a1,0(a0)
    80008c90:	00100713          	li	a4,1
    80008c94:	1ae78463          	beq	a5,a4,80008e3c <__memset+0x1e4>
    80008c98:	00b500a3          	sb	a1,1(a0)
    80008c9c:	00200713          	li	a4,2
    80008ca0:	1ae78a63          	beq	a5,a4,80008e54 <__memset+0x1fc>
    80008ca4:	00b50123          	sb	a1,2(a0)
    80008ca8:	00300713          	li	a4,3
    80008cac:	18e78463          	beq	a5,a4,80008e34 <__memset+0x1dc>
    80008cb0:	00b501a3          	sb	a1,3(a0)
    80008cb4:	00400713          	li	a4,4
    80008cb8:	1ae78263          	beq	a5,a4,80008e5c <__memset+0x204>
    80008cbc:	00b50223          	sb	a1,4(a0)
    80008cc0:	00500713          	li	a4,5
    80008cc4:	1ae78063          	beq	a5,a4,80008e64 <__memset+0x20c>
    80008cc8:	00b502a3          	sb	a1,5(a0)
    80008ccc:	00700713          	li	a4,7
    80008cd0:	18e79e63          	bne	a5,a4,80008e6c <__memset+0x214>
    80008cd4:	00b50323          	sb	a1,6(a0)
    80008cd8:	00700e93          	li	t4,7
    80008cdc:	00859713          	slli	a4,a1,0x8
    80008ce0:	00e5e733          	or	a4,a1,a4
    80008ce4:	01059e13          	slli	t3,a1,0x10
    80008ce8:	01c76e33          	or	t3,a4,t3
    80008cec:	01859313          	slli	t1,a1,0x18
    80008cf0:	006e6333          	or	t1,t3,t1
    80008cf4:	02059893          	slli	a7,a1,0x20
    80008cf8:	40f60e3b          	subw	t3,a2,a5
    80008cfc:	011368b3          	or	a7,t1,a7
    80008d00:	02859813          	slli	a6,a1,0x28
    80008d04:	0108e833          	or	a6,a7,a6
    80008d08:	03059693          	slli	a3,a1,0x30
    80008d0c:	003e589b          	srliw	a7,t3,0x3
    80008d10:	00d866b3          	or	a3,a6,a3
    80008d14:	03859713          	slli	a4,a1,0x38
    80008d18:	00389813          	slli	a6,a7,0x3
    80008d1c:	00f507b3          	add	a5,a0,a5
    80008d20:	00e6e733          	or	a4,a3,a4
    80008d24:	000e089b          	sext.w	a7,t3
    80008d28:	00f806b3          	add	a3,a6,a5
    80008d2c:	00e7b023          	sd	a4,0(a5)
    80008d30:	00878793          	addi	a5,a5,8
    80008d34:	fed79ce3          	bne	a5,a3,80008d2c <__memset+0xd4>
    80008d38:	ff8e7793          	andi	a5,t3,-8
    80008d3c:	0007871b          	sext.w	a4,a5
    80008d40:	01d787bb          	addw	a5,a5,t4
    80008d44:	0ce88e63          	beq	a7,a4,80008e20 <__memset+0x1c8>
    80008d48:	00f50733          	add	a4,a0,a5
    80008d4c:	00b70023          	sb	a1,0(a4)
    80008d50:	0017871b          	addiw	a4,a5,1
    80008d54:	0cc77663          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008d58:	00e50733          	add	a4,a0,a4
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	0027871b          	addiw	a4,a5,2
    80008d64:	0ac77e63          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	0037871b          	addiw	a4,a5,3
    80008d74:	0ac77663          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	0047871b          	addiw	a4,a5,4
    80008d84:	08c77e63          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	0057871b          	addiw	a4,a5,5
    80008d94:	08c77663          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	0067871b          	addiw	a4,a5,6
    80008da4:	06c77e63          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	0077871b          	addiw	a4,a5,7
    80008db4:	06c77663          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	0087871b          	addiw	a4,a5,8
    80008dc4:	04c77e63          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008dc8:	00e50733          	add	a4,a0,a4
    80008dcc:	00b70023          	sb	a1,0(a4)
    80008dd0:	0097871b          	addiw	a4,a5,9
    80008dd4:	04c77663          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008dd8:	00e50733          	add	a4,a0,a4
    80008ddc:	00b70023          	sb	a1,0(a4)
    80008de0:	00a7871b          	addiw	a4,a5,10
    80008de4:	02c77e63          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008de8:	00e50733          	add	a4,a0,a4
    80008dec:	00b70023          	sb	a1,0(a4)
    80008df0:	00b7871b          	addiw	a4,a5,11
    80008df4:	02c77663          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008df8:	00e50733          	add	a4,a0,a4
    80008dfc:	00b70023          	sb	a1,0(a4)
    80008e00:	00c7871b          	addiw	a4,a5,12
    80008e04:	00c77e63          	bgeu	a4,a2,80008e20 <__memset+0x1c8>
    80008e08:	00e50733          	add	a4,a0,a4
    80008e0c:	00b70023          	sb	a1,0(a4)
    80008e10:	00d7879b          	addiw	a5,a5,13
    80008e14:	00c7f663          	bgeu	a5,a2,80008e20 <__memset+0x1c8>
    80008e18:	00f507b3          	add	a5,a0,a5
    80008e1c:	00b78023          	sb	a1,0(a5)
    80008e20:	00813403          	ld	s0,8(sp)
    80008e24:	01010113          	addi	sp,sp,16
    80008e28:	00008067          	ret
    80008e2c:	00b00693          	li	a3,11
    80008e30:	e55ff06f          	j	80008c84 <__memset+0x2c>
    80008e34:	00300e93          	li	t4,3
    80008e38:	ea5ff06f          	j	80008cdc <__memset+0x84>
    80008e3c:	00100e93          	li	t4,1
    80008e40:	e9dff06f          	j	80008cdc <__memset+0x84>
    80008e44:	00000e93          	li	t4,0
    80008e48:	e95ff06f          	j	80008cdc <__memset+0x84>
    80008e4c:	00000793          	li	a5,0
    80008e50:	ef9ff06f          	j	80008d48 <__memset+0xf0>
    80008e54:	00200e93          	li	t4,2
    80008e58:	e85ff06f          	j	80008cdc <__memset+0x84>
    80008e5c:	00400e93          	li	t4,4
    80008e60:	e7dff06f          	j	80008cdc <__memset+0x84>
    80008e64:	00500e93          	li	t4,5
    80008e68:	e75ff06f          	j	80008cdc <__memset+0x84>
    80008e6c:	00600e93          	li	t4,6
    80008e70:	e6dff06f          	j	80008cdc <__memset+0x84>

0000000080008e74 <__memmove>:
    80008e74:	ff010113          	addi	sp,sp,-16
    80008e78:	00813423          	sd	s0,8(sp)
    80008e7c:	01010413          	addi	s0,sp,16
    80008e80:	0e060863          	beqz	a2,80008f70 <__memmove+0xfc>
    80008e84:	fff6069b          	addiw	a3,a2,-1
    80008e88:	0006881b          	sext.w	a6,a3
    80008e8c:	0ea5e863          	bltu	a1,a0,80008f7c <__memmove+0x108>
    80008e90:	00758713          	addi	a4,a1,7
    80008e94:	00a5e7b3          	or	a5,a1,a0
    80008e98:	40a70733          	sub	a4,a4,a0
    80008e9c:	0077f793          	andi	a5,a5,7
    80008ea0:	00f73713          	sltiu	a4,a4,15
    80008ea4:	00174713          	xori	a4,a4,1
    80008ea8:	0017b793          	seqz	a5,a5
    80008eac:	00e7f7b3          	and	a5,a5,a4
    80008eb0:	10078863          	beqz	a5,80008fc0 <__memmove+0x14c>
    80008eb4:	00900793          	li	a5,9
    80008eb8:	1107f463          	bgeu	a5,a6,80008fc0 <__memmove+0x14c>
    80008ebc:	0036581b          	srliw	a6,a2,0x3
    80008ec0:	fff8081b          	addiw	a6,a6,-1
    80008ec4:	02081813          	slli	a6,a6,0x20
    80008ec8:	01d85893          	srli	a7,a6,0x1d
    80008ecc:	00858813          	addi	a6,a1,8
    80008ed0:	00058793          	mv	a5,a1
    80008ed4:	00050713          	mv	a4,a0
    80008ed8:	01088833          	add	a6,a7,a6
    80008edc:	0007b883          	ld	a7,0(a5)
    80008ee0:	00878793          	addi	a5,a5,8
    80008ee4:	00870713          	addi	a4,a4,8
    80008ee8:	ff173c23          	sd	a7,-8(a4)
    80008eec:	ff0798e3          	bne	a5,a6,80008edc <__memmove+0x68>
    80008ef0:	ff867713          	andi	a4,a2,-8
    80008ef4:	02071793          	slli	a5,a4,0x20
    80008ef8:	0207d793          	srli	a5,a5,0x20
    80008efc:	00f585b3          	add	a1,a1,a5
    80008f00:	40e686bb          	subw	a3,a3,a4
    80008f04:	00f507b3          	add	a5,a0,a5
    80008f08:	06e60463          	beq	a2,a4,80008f70 <__memmove+0xfc>
    80008f0c:	0005c703          	lbu	a4,0(a1)
    80008f10:	00e78023          	sb	a4,0(a5)
    80008f14:	04068e63          	beqz	a3,80008f70 <__memmove+0xfc>
    80008f18:	0015c603          	lbu	a2,1(a1)
    80008f1c:	00100713          	li	a4,1
    80008f20:	00c780a3          	sb	a2,1(a5)
    80008f24:	04e68663          	beq	a3,a4,80008f70 <__memmove+0xfc>
    80008f28:	0025c603          	lbu	a2,2(a1)
    80008f2c:	00200713          	li	a4,2
    80008f30:	00c78123          	sb	a2,2(a5)
    80008f34:	02e68e63          	beq	a3,a4,80008f70 <__memmove+0xfc>
    80008f38:	0035c603          	lbu	a2,3(a1)
    80008f3c:	00300713          	li	a4,3
    80008f40:	00c781a3          	sb	a2,3(a5)
    80008f44:	02e68663          	beq	a3,a4,80008f70 <__memmove+0xfc>
    80008f48:	0045c603          	lbu	a2,4(a1)
    80008f4c:	00400713          	li	a4,4
    80008f50:	00c78223          	sb	a2,4(a5)
    80008f54:	00e68e63          	beq	a3,a4,80008f70 <__memmove+0xfc>
    80008f58:	0055c603          	lbu	a2,5(a1)
    80008f5c:	00500713          	li	a4,5
    80008f60:	00c782a3          	sb	a2,5(a5)
    80008f64:	00e68663          	beq	a3,a4,80008f70 <__memmove+0xfc>
    80008f68:	0065c703          	lbu	a4,6(a1)
    80008f6c:	00e78323          	sb	a4,6(a5)
    80008f70:	00813403          	ld	s0,8(sp)
    80008f74:	01010113          	addi	sp,sp,16
    80008f78:	00008067          	ret
    80008f7c:	02061713          	slli	a4,a2,0x20
    80008f80:	02075713          	srli	a4,a4,0x20
    80008f84:	00e587b3          	add	a5,a1,a4
    80008f88:	f0f574e3          	bgeu	a0,a5,80008e90 <__memmove+0x1c>
    80008f8c:	02069613          	slli	a2,a3,0x20
    80008f90:	02065613          	srli	a2,a2,0x20
    80008f94:	fff64613          	not	a2,a2
    80008f98:	00e50733          	add	a4,a0,a4
    80008f9c:	00c78633          	add	a2,a5,a2
    80008fa0:	fff7c683          	lbu	a3,-1(a5)
    80008fa4:	fff78793          	addi	a5,a5,-1
    80008fa8:	fff70713          	addi	a4,a4,-1
    80008fac:	00d70023          	sb	a3,0(a4)
    80008fb0:	fec798e3          	bne	a5,a2,80008fa0 <__memmove+0x12c>
    80008fb4:	00813403          	ld	s0,8(sp)
    80008fb8:	01010113          	addi	sp,sp,16
    80008fbc:	00008067          	ret
    80008fc0:	02069713          	slli	a4,a3,0x20
    80008fc4:	02075713          	srli	a4,a4,0x20
    80008fc8:	00170713          	addi	a4,a4,1
    80008fcc:	00e50733          	add	a4,a0,a4
    80008fd0:	00050793          	mv	a5,a0
    80008fd4:	0005c683          	lbu	a3,0(a1)
    80008fd8:	00178793          	addi	a5,a5,1
    80008fdc:	00158593          	addi	a1,a1,1
    80008fe0:	fed78fa3          	sb	a3,-1(a5)
    80008fe4:	fee798e3          	bne	a5,a4,80008fd4 <__memmove+0x160>
    80008fe8:	f89ff06f          	j	80008f70 <__memmove+0xfc>
	...
