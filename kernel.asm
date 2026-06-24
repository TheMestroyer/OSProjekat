
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	74813103          	ld	sp,1864(sp) # 80005748 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1d0020ef          	jal	ra,800021ec <start>

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
    80001248:	3b9000ef          	jal	ra,80001e00 <HandleInterupt>

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

00000000800012d0 <mem_alloc>:
//

#include "./APIC.h"
#include "../lib/hw.h"

void* mem_alloc(size_t size){
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00813423          	sd	s0,8(sp)
    800012d8:	01010413          	addi	s0,sp,16
    uint64 code=0x01;
    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    800012dc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    800012e0:	00100793          	li	a5,1
    800012e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012e8:	00000073          	ecall
    void* value;
    __asm__ volatile ("mv %0, a0" : "=r"(value));
    800012ec:	00050513          	mv	a0,a0
    return (void*)value;
}
    800012f0:	00813403          	ld	s0,8(sp)
    800012f4:	01010113          	addi	sp,sp,16
    800012f8:	00008067          	ret

00000000800012fc <mem_free>:

int mem_free(void* ptr){
    800012fc:	ff010113          	addi	sp,sp,-16
    80001300:	00813423          	sd	s0,8(sp)
    80001304:	01010413          	addi	s0,sp,16
    uint64 code=0x02;
    __asm__ volatile("mv a1,a0");
    80001308:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    8000130c:	00200793          	li	a5,2
    80001310:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001314:	00000073          	ecall
    return 0;
}
    80001318:	00000513          	li	a0,0
    8000131c:	00813403          	ld	s0,8(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <thread_create>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001328:	fd010113          	addi	sp,sp,-48
    8000132c:	02113423          	sd	ra,40(sp)
    80001330:	02813023          	sd	s0,32(sp)
    80001334:	00913c23          	sd	s1,24(sp)
    80001338:	01213823          	sd	s2,16(sp)
    8000133c:	01313423          	sd	s3,8(sp)
    80001340:	03010413          	addi	s0,sp,48
    80001344:	00050993          	mv	s3,a0
    80001348:	00058913          	mv	s2,a1
    8000134c:	00060493          	mv	s1,a2
    // allocate stack separately; pass top pointer as a4 (stack_space)
    void* stack = mem_alloc(DEFAULT_STACK_SIZE * sizeof(size_t));
    80001350:	00008537          	lui	a0,0x8
    80001354:	00000097          	auipc	ra,0x0
    80001358:	f7c080e7          	jalr	-132(ra) # 800012d0 <mem_alloc>
    if (!stack) return -1;
    8000135c:	04050263          	beqz	a0,800013a0 <thread_create+0x78>
    80001360:	00050713          	mv	a4,a0
    register size_t a0 asm("a0") = 0x11;
    80001364:	01100513          	li	a0,17
    register size_t a1 asm("a1") = (size_t)handle;
    80001368:	00098593          	mv	a1,s3
    register size_t a2 asm("a2") = (size_t)start_routine;
    8000136c:	00090613          	mv	a2,s2
    register size_t a3 asm("a3") = (size_t)arg;
    80001370:	00048693          	mv	a3,s1
    register size_t a4 asm("a4") = (size_t)stack + DEFAULT_STACK_SIZE * sizeof(size_t);
    80001374:	000087b7          	lui	a5,0x8
    80001378:	00f70733          	add	a4,a4,a5
    __asm__ volatile("ecall"
    8000137c:	00000073          	ecall
        : "+r"(a0)
        : "r"(a1), "r"(a2), "r"(a3), "r"(a4)
    );
    return (int)a0;
    80001380:	0005051b          	sext.w	a0,a0
}
    80001384:	02813083          	ld	ra,40(sp)
    80001388:	02013403          	ld	s0,32(sp)
    8000138c:	01813483          	ld	s1,24(sp)
    80001390:	01013903          	ld	s2,16(sp)
    80001394:	00813983          	ld	s3,8(sp)
    80001398:	03010113          	addi	sp,sp,48
    8000139c:	00008067          	ret
    if (!stack) return -1;
    800013a0:	fff00513          	li	a0,-1
    800013a4:	fe1ff06f          	j	80001384 <thread_create+0x5c>

00000000800013a8 <thread_exit>:

int thread_exit(void) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x12;
    800013b4:	01200513          	li	a0,18
    __asm__ volatile("ecall" : "+r"(a0));
    800013b8:	00000073          	ecall
    return (int)a0;
}
    800013bc:	0005051b          	sext.w	a0,a0
    800013c0:	00813403          	ld	s0,8(sp)
    800013c4:	01010113          	addi	sp,sp,16
    800013c8:	00008067          	ret

00000000800013cc <thread_dispatch>:

void thread_dispatch(void) {
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00813423          	sd	s0,8(sp)
    800013d4:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x13;
    800013d8:	01300513          	li	a0,19
    __asm__ volatile("ecall" : "+r"(a0));
    800013dc:	00000073          	ecall
}
    800013e0:	00813403          	ld	s0,8(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <time_sleep>:

int time_sleep(time_t dur) {
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00813423          	sd	s0,8(sp)
    800013f4:	01010413          	addi	s0,sp,16
    800013f8:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x31;
    800013fc:	03100513          	li	a0,49
    register size_t a1 asm("a1") = (size_t)dur;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001400:	00000073          	ecall
    return (int)a0;
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <body>:
#include "APIC.h"
#include "../lib/console.h"

// prints arg char 5 times, with a busy-wait between each print
// busy-wait forces async preemption (no voluntary yield)
void body(void* arg) {
    80001414:	fd010113          	addi	sp,sp,-48
    80001418:	02113423          	sd	ra,40(sp)
    8000141c:	02813023          	sd	s0,32(sp)
    80001420:	00913c23          	sd	s1,24(sp)
    80001424:	01213823          	sd	s2,16(sp)
    80001428:	03010413          	addi	s0,sp,48
    char c = (char)(size_t)arg;
    8000142c:	0ff57913          	andi	s2,a0,255
    for (int i = 0; i < 50; i++) {
    80001430:	00000493          	li	s1,0
    80001434:	0300006f          	j	80001464 <body+0x50>
        for (volatile long j = 0; j < 5000000L; j++);
    80001438:	fd843783          	ld	a5,-40(s0)
    8000143c:	00178793          	addi	a5,a5,1 # 8001 <_entry-0x7fff7fff>
    80001440:	fcf43c23          	sd	a5,-40(s0)
    80001444:	fd843703          	ld	a4,-40(s0)
    80001448:	004c57b7          	lui	a5,0x4c5
    8000144c:	b3f78793          	addi	a5,a5,-1217 # 4c4b3f <_entry-0x7fb3b4c1>
    80001450:	fee7d4e3          	bge	a5,a4,80001438 <body+0x24>
        __putc(c);
    80001454:	00090513          	mv	a0,s2
    80001458:	00003097          	auipc	ra,0x3
    8000145c:	e54080e7          	jalr	-428(ra) # 800042ac <__putc>
    for (int i = 0; i < 50; i++) {
    80001460:	0014849b          	addiw	s1,s1,1
    80001464:	03100793          	li	a5,49
    80001468:	0097c663          	blt	a5,s1,80001474 <body+0x60>
        for (volatile long j = 0; j < 5000000L; j++);
    8000146c:	fc043c23          	sd	zero,-40(s0)
    80001470:	fd5ff06f          	j	80001444 <body+0x30>
    }
}
    80001474:	02813083          	ld	ra,40(sp)
    80001478:	02013403          	ld	s0,32(sp)
    8000147c:	01813483          	ld	s1,24(sp)
    80001480:	01013903          	ld	s2,16(sp)
    80001484:	03010113          	addi	sp,sp,48
    80001488:	00008067          	ret

000000008000148c <userMain>:

void userMain() {
    8000148c:	fd010113          	addi	sp,sp,-48
    80001490:	02113423          	sd	ra,40(sp)
    80001494:	02813023          	sd	s0,32(sp)
    80001498:	03010413          	addi	s0,sp,48
    thread_t t1, t2, t3;
    thread_create(&t1, body, (void*)'A');
    8000149c:	04100613          	li	a2,65
    800014a0:	00000597          	auipc	a1,0x0
    800014a4:	f7458593          	addi	a1,a1,-140 # 80001414 <body>
    800014a8:	fe840513          	addi	a0,s0,-24
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	e7c080e7          	jalr	-388(ra) # 80001328 <thread_create>
    thread_create(&t2, body, (void*)'B');
    800014b4:	04200613          	li	a2,66
    800014b8:	00000597          	auipc	a1,0x0
    800014bc:	f5c58593          	addi	a1,a1,-164 # 80001414 <body>
    800014c0:	fe040513          	addi	a0,s0,-32
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	e64080e7          	jalr	-412(ra) # 80001328 <thread_create>
    thread_create(&t3, body, (void*)'C');
    800014cc:	04300613          	li	a2,67
    800014d0:	00000597          	auipc	a1,0x0
    800014d4:	f4458593          	addi	a1,a1,-188 # 80001414 <body>
    800014d8:	fd840513          	addi	a0,s0,-40
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	e4c080e7          	jalr	-436(ra) # 80001328 <thread_create>
    thread_dispatch();
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	ee8080e7          	jalr	-280(ra) # 800013cc <thread_dispatch>
    __putc('\n');
    800014ec:	00a00513          	li	a0,10
    800014f0:	00003097          	auipc	ra,0x3
    800014f4:	dbc080e7          	jalr	-580(ra) # 800042ac <__putc>
    while (1) {}
    800014f8:	0000006f          	j	800014f8 <userMain+0x6c>

00000000800014fc <drop_to_user>:
}




void drop_to_user(void (*fn)()) {
    800014fc:	ff010113          	addi	sp,sp,-16
    80001500:	00813423          	sd	s0,8(sp)
    80001504:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001508:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000150c:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    80001510:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    80001514:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001518:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    8000151c:	10200073          	sret
}
    80001520:	00813403          	ld	s0,8(sp)
    80001524:	01010113          	addi	sp,sp,16
    80001528:	00008067          	ret

000000008000152c <main>:
void interupt();
int main() {
    8000152c:	ff010113          	addi	sp,sp,-16
    80001530:	00113423          	sd	ra,8(sp)
    80001534:	00813023          	sd	s0,0(sp)
    80001538:	01010413          	addi	s0,sp,16
    start_main_thread();
    8000153c:	00001097          	auipc	ra,0x1
    80001540:	b78080e7          	jalr	-1160(ra) # 800020b4 <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    80001544:	00000797          	auipc	a5,0x0
    80001548:	c7c78793          	addi	a5,a5,-900 # 800011c0 <interupt>
    8000154c:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0"    :: "r"((uint64)0x2));  // enable SSIE (timer)
    80001550:	00200793          	li	a5,2
    80001554:	10479073          	csrw	sie,a5
    drop_to_user(userMain);
    80001558:	00000517          	auipc	a0,0x0
    8000155c:	f3450513          	addi	a0,a0,-204 # 8000148c <userMain>
    80001560:	00000097          	auipc	ra,0x0
    80001564:	f9c080e7          	jalr	-100(ra) # 800014fc <drop_to_user>
    return 0;
    80001568:	00000513          	li	a0,0
    8000156c:	00813083          	ld	ra,8(sp)
    80001570:	00013403          	ld	s0,0(sp)
    80001574:	01010113          	addi	sp,sp,16
    80001578:	00008067          	ret

000000008000157c <_ZN6Thread16threadTrampolineEPS_>:
    sstatus_val |= (1UL << 8); // SPP=1 → S-mode after sret
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void Thread::threadTrampoline(Thread* t) {
    8000157c:	fe010113          	addi	sp,sp,-32
    80001580:	00113c23          	sd	ra,24(sp)
    80001584:	00813823          	sd	s0,16(sp)
    80001588:	00913423          	sd	s1,8(sp)
    8000158c:	02010413          	addi	s0,sp,32
    80001590:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001594:	00053783          	ld	a5,0(a0)
    80001598:	00078663          	beqz	a5,800015a4 <_ZN6Thread16threadTrampolineEPS_+0x28>
    8000159c:	00853503          	ld	a0,8(a0)
    800015a0:	000780e7          	jalr	a5
    Scheduler::ThreadExit(t);
    800015a4:	00048513          	mv	a0,s1
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	304080e7          	jalr	772(ra) # 800018ac <_ZN9Scheduler10ThreadExitEP6Thread>
    800015b0:	01813083          	ld	ra,24(sp)
    800015b4:	01013403          	ld	s0,16(sp)
    800015b8:	00813483          	ld	s1,8(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret

00000000800015c4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16
}
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_ZN6Thread4initEv>:
void Thread::init() {
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00813423          	sd	s0,8(sp)
    800015e4:	01010413          	addi	s0,sp,16
    body = nullptr;
    800015e8:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    800015ec:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    800015f0:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    800015f4:	00053c23          	sd	zero,24(a0)
    next = nullptr;
    800015f8:	02053023          	sd	zero,32(a0)
    stackPtr = nullptr;
    800015fc:	02053423          	sd	zero,40(a0)
    supervisorSp = nullptr;
    80001600:	02053823          	sd	zero,48(a0)
    sleepDelta = 0;
    80001604:	02053c23          	sd	zero,56(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001608:	00000713          	li	a4,0
    8000160c:	01f00793          	li	a5,31
    80001610:	00e7ce63          	blt	a5,a4,8000162c <_ZN6Thread4initEv+0x50>
    80001614:	00870793          	addi	a5,a4,8
    80001618:	00379793          	slli	a5,a5,0x3
    8000161c:	00f507b3          	add	a5,a0,a5
    80001620:	0007b023          	sd	zero,0(a5)
    80001624:	0017071b          	addiw	a4,a4,1
    80001628:	fe5ff06f          	j	8000160c <_ZN6Thread4initEv+0x30>
    threadContext.sepc = 0;
    8000162c:	14053023          	sd	zero,320(a0)
    threadContext.sstatus = 0;
    80001630:	14053423          	sd	zero,328(a0)
    threadContext.pc = 0;
    80001634:	14053823          	sd	zero,336(a0)
}
    80001638:	00813403          	ld	s0,8(sp)
    8000163c:	01010113          	addi	sp,sp,16
    80001640:	00008067          	ret

0000000080001644 <_ZN6Thread11copyContextEPm>:
void Thread::copyContext(size_t* ctx) {
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00813423          	sd	s0,8(sp)
    8000164c:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001650:	00000713          	li	a4,0
    80001654:	01f00793          	li	a5,31
    80001658:	02e7c463          	blt	a5,a4,80001680 <_ZN6Thread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    8000165c:	00371793          	slli	a5,a4,0x3
    80001660:	00f587b3          	add	a5,a1,a5
    80001664:	0007b683          	ld	a3,0(a5)
    80001668:	00870793          	addi	a5,a4,8
    8000166c:	00379793          	slli	a5,a5,0x3
    80001670:	00f507b3          	add	a5,a0,a5
    80001674:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    80001678:	0017071b          	addiw	a4,a4,1
    8000167c:	fd9ff06f          	j	80001654 <_ZN6Thread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001680:	02853783          	ld	a5,40(a0)
    80001684:	04f53823          	sd	a5,80(a0)
    threadContext.sepc = cont->sepc;
    80001688:	1005b783          	ld	a5,256(a1)
    8000168c:	14f53023          	sd	a5,320(a0)
    threadContext.sstatus =cont->sstatus;
    80001690:	1085b783          	ld	a5,264(a1)
    80001694:	14f53423          	sd	a5,328(a0)
}
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_ZN6Thread10getContextEv>:
size_t* Thread::getContext() {
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00813423          	sd	s0,8(sp)
    800016ac:	01010413          	addi	s0,sp,16
}
    800016b0:	04050513          	addi	a0,a0,64
    800016b4:	00813403          	ld	s0,8(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret

00000000800016c0 <_ZN6Thread14getNextInQueueEv>:
Thread* Thread::getNextInQueue(){
    800016c0:	ff010113          	addi	sp,sp,-16
    800016c4:	00813423          	sd	s0,8(sp)
    800016c8:	01010413          	addi	s0,sp,16
}
    800016cc:	02053503          	ld	a0,32(a0)
    800016d0:	00813403          	ld	s0,8(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <_ZN6Thread14getPrevInQueueEv>:
Thread* Thread::getPrevInQueue(){
    800016dc:	ff010113          	addi	sp,sp,-16
    800016e0:	00813423          	sd	s0,8(sp)
    800016e4:	01010413          	addi	s0,sp,16
}
    800016e8:	01853503          	ld	a0,24(a0)
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_ZN6Thread14setNextInQueueEPS_>:
void Thread::setNextInQueue(Thread* next){
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    this->next = next;
    80001704:	02b53023          	sd	a1,32(a0)
}
    80001708:	00813403          	ld	s0,8(sp)
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret

0000000080001714 <_ZN6Thread14setPrevInQueueEPS_>:
void Thread::setPrevInQueue(Thread* prev){
    80001714:	ff010113          	addi	sp,sp,-16
    80001718:	00813423          	sd	s0,8(sp)
    8000171c:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001720:	00b53c23          	sd	a1,24(a0)
}
    80001724:	00813403          	ld	s0,8(sp)
    80001728:	01010113          	addi	sp,sp,16
    8000172c:	00008067          	ret

0000000080001730 <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    80001730:	fe010113          	addi	sp,sp,-32
    80001734:	00113c23          	sd	ra,24(sp)
    80001738:	00813823          	sd	s0,16(sp)
    8000173c:	00913423          	sd	s1,8(sp)
    80001740:	01213023          	sd	s2,0(sp)
    80001744:	02010413          	addi	s0,sp,32
    80001748:	00050493          	mv	s1,a0
    8000174c:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001750:	00000097          	auipc	ra,0x0
    80001754:	fa8080e7          	jalr	-88(ra) # 800016f8 <_ZN6Thread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001758:	00090593          	mv	a1,s2
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	fb4080e7          	jalr	-76(ra) # 80001714 <_ZN6Thread14setPrevInQueueEPS_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_ZN6Thread5setupEPS_Pm>:
void Thread::setup(Thread* parentThread, size_t* stack_top) {
    80001780:	ff010113          	addi	sp,sp,-16
    80001784:	00813423          	sd	s0,8(sp)
    80001788:	01010413          	addi	s0,sp,16
    parent = parentThread;
    8000178c:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001790:	02c53423          	sd	a2,40(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001794:	04c53823          	sd	a2,80(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001798:	00000797          	auipc	a5,0x0
    8000179c:	de478793          	addi	a5,a5,-540 # 8000157c <_ZN6Thread16threadTrampolineEPS_>
    800017a0:	14f53023          	sd	a5,320(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    800017a4:	08a53823          	sd	a0,144(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    800017a8:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    800017ac:	04f53c23          	sd	a5,88(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    800017b0:	100027f3          	csrr	a5,sstatus
    sstatus_val |= (1UL << 5); // SPIE=1
    800017b4:	1207e793          	ori	a5,a5,288
    threadContext.sstatus = sstatus_val;
    800017b8:	14f53423          	sd	a5,328(a0)
}
    800017bc:	00813403          	ld	s0,8(sp)
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret

00000000800017c8 <_ZN9Scheduler10GetRunningEv>:
Thread* Scheduler::sleepQueue = nullptr;
time_t  Scheduler::runningThreadTimeLeft = DEFAULT_TIME_SLICE;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00813423          	sd	s0,8(sp)
    800017d0:	01010413          	addi	s0,sp,16
    return running;
}
    800017d4:	00004517          	auipc	a0,0x4
    800017d8:	fcc53503          	ld	a0,-52(a0) # 800057a0 <_ZN9Scheduler7runningE>
    800017dc:	00813403          	ld	s0,8(sp)
    800017e0:	01010113          	addi	sp,sp,16
    800017e4:	00008067          	ret

00000000800017e8 <_ZN9Scheduler5yieldEP6ThreadS1_>:
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00113423          	sd	ra,8(sp)
    800017f0:	00813023          	sd	s0,0(sp)
    800017f4:	01010413          	addi	s0,sp,16
    800017f8:	00058513          	mv	a0,a1
    running = newThread;
    800017fc:	00004797          	auipc	a5,0x4
    80001800:	fab7b223          	sd	a1,-92(a5) # 800057a0 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001804:	00000097          	auipc	ra,0x0
    80001808:	ea0080e7          	jalr	-352(ra) # 800016a4 <_ZN6Thread10getContextEv>
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	888080e7          	jalr	-1912(ra) # 80001094 <restoreContext>
}
    80001814:	00813083          	ld	ra,8(sp)
    80001818:	00013403          	ld	s0,0(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret

0000000080001824 <_ZN9Scheduler7GetNextEv>:
        next = t->getParent();
        if (next == nullptr) { while (true) {} }
    }
    yield(t, next);
}
Thread* Scheduler::GetNext() {
    80001824:	fe010113          	addi	sp,sp,-32
    80001828:	00113c23          	sd	ra,24(sp)
    8000182c:	00813823          	sd	s0,16(sp)
    80001830:	00913423          	sd	s1,8(sp)
    80001834:	02010413          	addi	s0,sp,32
    if (readyQueue == nullptr) return nullptr;
    80001838:	00004497          	auipc	s1,0x4
    8000183c:	f704b483          	ld	s1,-144(s1) # 800057a8 <_ZN9Scheduler10readyQueueE>
    80001840:	04048463          	beqz	s1,80001888 <_ZN9Scheduler7GetNextEv+0x64>
    Thread* toRet = readyQueue;
    readyQueue = readyQueue->getNextInQueue();
    80001844:	00048513          	mv	a0,s1
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	e78080e7          	jalr	-392(ra) # 800016c0 <_ZN6Thread14getNextInQueueEv>
    80001850:	00004797          	auipc	a5,0x4
    80001854:	f4a7bc23          	sd	a0,-168(a5) # 800057a8 <_ZN9Scheduler10readyQueueE>
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    80001858:	04050463          	beqz	a0,800018a0 <_ZN9Scheduler7GetNextEv+0x7c>
    8000185c:	00000593          	li	a1,0
    80001860:	00000097          	auipc	ra,0x0
    80001864:	eb4080e7          	jalr	-332(ra) # 80001714 <_ZN6Thread14setPrevInQueueEPS_>
    else readyQueueEnd = nullptr;
    toRet->setNextInQueue(nullptr);
    80001868:	00000593          	li	a1,0
    8000186c:	00048513          	mv	a0,s1
    80001870:	00000097          	auipc	ra,0x0
    80001874:	e88080e7          	jalr	-376(ra) # 800016f8 <_ZN6Thread14setNextInQueueEPS_>
    toRet->setPrevInQueue(nullptr);
    80001878:	00000593          	li	a1,0
    8000187c:	00048513          	mv	a0,s1
    80001880:	00000097          	auipc	ra,0x0
    80001884:	e94080e7          	jalr	-364(ra) # 80001714 <_ZN6Thread14setPrevInQueueEPS_>
    return toRet;
}
    80001888:	00048513          	mv	a0,s1
    8000188c:	01813083          	ld	ra,24(sp)
    80001890:	01013403          	ld	s0,16(sp)
    80001894:	00813483          	ld	s1,8(sp)
    80001898:	02010113          	addi	sp,sp,32
    8000189c:	00008067          	ret
    else readyQueueEnd = nullptr;
    800018a0:	00004797          	auipc	a5,0x4
    800018a4:	f007b823          	sd	zero,-240(a5) # 800057b0 <_ZN9Scheduler13readyQueueEndE>
    800018a8:	fc1ff06f          	j	80001868 <_ZN9Scheduler7GetNextEv+0x44>

00000000800018ac <_ZN9Scheduler10ThreadExitEP6Thread>:
void Scheduler::ThreadExit(Thread* t) {
    800018ac:	fe010113          	addi	sp,sp,-32
    800018b0:	00113c23          	sd	ra,24(sp)
    800018b4:	00813823          	sd	s0,16(sp)
    800018b8:	00913423          	sd	s1,8(sp)
    800018bc:	02010413          	addi	s0,sp,32
    800018c0:	00050493          	mv	s1,a0
    Thread* next = GetNext();
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	f60080e7          	jalr	-160(ra) # 80001824 <_ZN9Scheduler7GetNextEv>
    800018cc:	00050593          	mv	a1,a0
    if (next == nullptr) {
    800018d0:	02050263          	beqz	a0,800018f4 <_ZN9Scheduler10ThreadExitEP6Thread+0x48>
    yield(t, next);
    800018d4:	00048513          	mv	a0,s1
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	f10080e7          	jalr	-240(ra) # 800017e8 <_ZN9Scheduler5yieldEP6ThreadS1_>
}
    800018e0:	01813083          	ld	ra,24(sp)
    800018e4:	01013403          	ld	s0,16(sp)
    800018e8:	00813483          	ld	s1,8(sp)
    800018ec:	02010113          	addi	sp,sp,32
    800018f0:	00008067          	ret
    Thread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    Thread* getParent() { return parent; }
    800018f4:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    800018f8:	fc059ee3          	bnez	a1,800018d4 <_ZN9Scheduler10ThreadExitEP6Thread+0x28>
    800018fc:	0000006f          	j	800018fc <_ZN9Scheduler10ThreadExitEP6Thread+0x50>

0000000080001900 <_ZN9Scheduler3PutEP6Thread>:
void Scheduler::Put(Thread* thread) {
    80001900:	fe010113          	addi	sp,sp,-32
    80001904:	00113c23          	sd	ra,24(sp)
    80001908:	00813823          	sd	s0,16(sp)
    8000190c:	00913423          	sd	s1,8(sp)
    80001910:	02010413          	addi	s0,sp,32
    80001914:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80001918:	00000593          	li	a1,0
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	ddc080e7          	jalr	-548(ra) # 800016f8 <_ZN6Thread14setNextInQueueEPS_>
    if (readyQueueEnd != nullptr) {
    80001924:	00004597          	auipc	a1,0x4
    80001928:	e8c5b583          	ld	a1,-372(a1) # 800057b0 <_ZN9Scheduler13readyQueueEndE>
    8000192c:	04058063          	beqz	a1,8000196c <_ZN9Scheduler3PutEP6Thread+0x6c>
        thread->setPrevInQueue(readyQueueEnd);
    80001930:	00048513          	mv	a0,s1
    80001934:	00000097          	auipc	ra,0x0
    80001938:	de0080e7          	jalr	-544(ra) # 80001714 <_ZN6Thread14setPrevInQueueEPS_>
        readyQueueEnd->setNextInQueue(thread);
    8000193c:	00048593          	mv	a1,s1
    80001940:	00004517          	auipc	a0,0x4
    80001944:	e7053503          	ld	a0,-400(a0) # 800057b0 <_ZN9Scheduler13readyQueueEndE>
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	db0080e7          	jalr	-592(ra) # 800016f8 <_ZN6Thread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        readyQueue = thread;
    }
    readyQueueEnd = thread;
    80001950:	00004797          	auipc	a5,0x4
    80001954:	e697b023          	sd	s1,-416(a5) # 800057b0 <_ZN9Scheduler13readyQueueEndE>
}
    80001958:	01813083          	ld	ra,24(sp)
    8000195c:	01013403          	ld	s0,16(sp)
    80001960:	00813483          	ld	s1,8(sp)
    80001964:	02010113          	addi	sp,sp,32
    80001968:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    8000196c:	00000593          	li	a1,0
    80001970:	00048513          	mv	a0,s1
    80001974:	00000097          	auipc	ra,0x0
    80001978:	da0080e7          	jalr	-608(ra) # 80001714 <_ZN6Thread14setPrevInQueueEPS_>
        readyQueue = thread;
    8000197c:	00004797          	auipc	a5,0x4
    80001980:	e297b623          	sd	s1,-468(a5) # 800057a8 <_ZN9Scheduler10readyQueueE>
    80001984:	fcdff06f          	j	80001950 <_ZN9Scheduler3PutEP6Thread+0x50>

0000000080001988 <_ZN9Scheduler15SetupStartStackEv>:

extern "C" char end[];

void Scheduler::SetupStartStack() {
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00813423          	sd	s0,8(sp)
    80001990:	01010413          	addi	s0,sp,16

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80001994:	00004797          	auipc	a5,0x4
    80001998:	dbc7b783          	ld	a5,-580(a5) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000199c:	00778793          	addi	a5,a5,7
    800019a0:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    800019a4:	00004717          	auipc	a4,0x4
    800019a8:	e0f73a23          	sd	a5,-492(a4) # 800057b8 <_ZN9Scheduler12stack_cursorE>
    );
}
    800019ac:	00813403          	ld	s0,8(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <_ZN9Scheduler16SetupStartThreadEv>:

void Scheduler::SetupStartThread() {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
    SetupStartStack();
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	fc0080e7          	jalr	-64(ra) # 80001988 <_ZN9Scheduler15SetupStartStackEv>
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	27c080e7          	jalr	636(ra) # 80001c4c <_ZN15MemoryAllocator11GetInstanceEv>
    800019d8:	15800593          	li	a1,344
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	2cc080e7          	jalr	716(ra) # 80001ca8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800019e4:	00004797          	auipc	a5,0x4
    800019e8:	daa7be23          	sd	a0,-580(a5) # 800057a0 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	cb8080e7          	jalr	-840(ra) # 800016a4 <_ZN6Thread10getContextEv>
    800019f4:	fffff097          	auipc	ra,0xfffff
    800019f8:	730080e7          	jalr	1840(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    800019fc:	00200793          	li	a5,2
    80001a00:	00004717          	auipc	a4,0x4
    80001a04:	d2f73823          	sd	a5,-720(a4) # 80005730 <_ZN9Scheduler21runningThreadTimeLeftE>
}
    80001a08:	00813083          	ld	ra,8(sp)
    80001a0c:	00013403          	ld	s0,0(sp)
    80001a10:	01010113          	addi	sp,sp,16
    80001a14:	00008067          	ret

0000000080001a18 <_ZN9Scheduler12AddNewThreadEP6Thread>:

void Scheduler::AddNewThread(Thread* thread) {
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00813423          	sd	s0,8(sp)
    80001a20:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80001a24:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80001a28:	04f53823          	sd	a5,80(a0)
}
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN9Scheduler9timerTickEP6Thread>:

void Scheduler::timerTick(Thread* cur) {
    80001a38:	fe010113          	addi	sp,sp,-32
    80001a3c:	00113c23          	sd	ra,24(sp)
    80001a40:	00813823          	sd	s0,16(sp)
    80001a44:	00913423          	sd	s1,8(sp)
    80001a48:	01213023          	sd	s2,0(sp)
    80001a4c:	02010413          	addi	s0,sp,32
    80001a50:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80001a54:	14401073          	csrw	sip,zero

    // wake sleeping threads
    if (sleepQueue != nullptr) {
    80001a58:	00004797          	auipc	a5,0x4
    80001a5c:	d687b783          	ld	a5,-664(a5) # 800057c0 <_ZN9Scheduler10sleepQueueE>
    80001a60:	04078e63          	beqz	a5,80001abc <_ZN9Scheduler9timerTickEP6Thread+0x84>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80001a64:	0387b703          	ld	a4,56(a5)
    80001a68:	04070063          	beqz	a4,80001aa8 <_ZN9Scheduler9timerTickEP6Thread+0x70>
    80001a6c:	fff70713          	addi	a4,a4,-1
    80001a70:	02e7bc23          	sd	a4,56(a5)
    80001a74:	0340006f          	j	80001aa8 <_ZN9Scheduler9timerTickEP6Thread+0x70>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            Thread* t = sleepQueue;
            sleepQueue = t->getNextInQueue();
    80001a78:	00048513          	mv	a0,s1
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	c44080e7          	jalr	-956(ra) # 800016c0 <_ZN6Thread14getNextInQueueEv>
    80001a84:	00004797          	auipc	a5,0x4
    80001a88:	d2a7be23          	sd	a0,-708(a5) # 800057c0 <_ZN9Scheduler10sleepQueueE>
            t->setNextInQueue(nullptr);
    80001a8c:	00000593          	li	a1,0
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	c64080e7          	jalr	-924(ra) # 800016f8 <_ZN6Thread14setNextInQueueEPS_>
            Put(t);
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	e60080e7          	jalr	-416(ra) # 80001900 <_ZN9Scheduler3PutEP6Thread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80001aa8:	00004497          	auipc	s1,0x4
    80001aac:	d184b483          	ld	s1,-744(s1) # 800057c0 <_ZN9Scheduler10sleepQueueE>
    80001ab0:	00048663          	beqz	s1,80001abc <_ZN9Scheduler9timerTickEP6Thread+0x84>
    80001ab4:	0384b783          	ld	a5,56(s1)
    80001ab8:	fc0780e3          	beqz	a5,80001a78 <_ZN9Scheduler9timerTickEP6Thread+0x40>
        }
    }

    if (cur == nullptr) return;
    80001abc:	02090463          	beqz	s2,80001ae4 <_ZN9Scheduler9timerTickEP6Thread+0xac>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    80001ac0:	00004797          	auipc	a5,0x4
    80001ac4:	c707b783          	ld	a5,-912(a5) # 80005730 <_ZN9Scheduler21runningThreadTimeLeftE>
    80001ac8:	00078863          	beqz	a5,80001ad8 <_ZN9Scheduler9timerTickEP6Thread+0xa0>
    80001acc:	fff78793          	addi	a5,a5,-1
    80001ad0:	00004717          	auipc	a4,0x4
    80001ad4:	c6f73023          	sd	a5,-928(a4) # 80005730 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80001ad8:	00004797          	auipc	a5,0x4
    80001adc:	c587b783          	ld	a5,-936(a5) # 80005730 <_ZN9Scheduler21runningThreadTimeLeftE>
    80001ae0:	00078e63          	beqz	a5,80001afc <_ZN9Scheduler9timerTickEP6Thread+0xc4>
    Thread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;  // no other thread, keep running
    Put(cur);
    yield(cur, next);
}
    80001ae4:	01813083          	ld	ra,24(sp)
    80001ae8:	01013403          	ld	s0,16(sp)
    80001aec:	00813483          	ld	s1,8(sp)
    80001af0:	00013903          	ld	s2,0(sp)
    80001af4:	02010113          	addi	sp,sp,32
    80001af8:	00008067          	ret
    Thread* next = GetNext();
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	d28080e7          	jalr	-728(ra) # 80001824 <_ZN9Scheduler7GetNextEv>
    80001b04:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80001b08:	00200793          	li	a5,2
    80001b0c:	00004717          	auipc	a4,0x4
    80001b10:	c2f73223          	sd	a5,-988(a4) # 80005730 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;  // no other thread, keep running
    80001b14:	fc0508e3          	beqz	a0,80001ae4 <_ZN9Scheduler9timerTickEP6Thread+0xac>
    Put(cur);
    80001b18:	00090513          	mv	a0,s2
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	de4080e7          	jalr	-540(ra) # 80001900 <_ZN9Scheduler3PutEP6Thread>
    yield(cur, next);
    80001b24:	00048593          	mv	a1,s1
    80001b28:	00090513          	mv	a0,s2
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	cbc080e7          	jalr	-836(ra) # 800017e8 <_ZN9Scheduler5yieldEP6ThreadS1_>
    80001b34:	fb1ff06f          	j	80001ae4 <_ZN9Scheduler9timerTickEP6Thread+0xac>

0000000080001b38 <_ZN9Scheduler5sleepEP6Threadm>:

void Scheduler::sleep(Thread* t, time_t dur) {
    80001b38:	fd010113          	addi	sp,sp,-48
    80001b3c:	02113423          	sd	ra,40(sp)
    80001b40:	02813023          	sd	s0,32(sp)
    80001b44:	00913c23          	sd	s1,24(sp)
    80001b48:	01213823          	sd	s2,16(sp)
    80001b4c:	01313423          	sd	s3,8(sp)
    80001b50:	01413023          	sd	s4,0(sp)
    80001b54:	03010413          	addi	s0,sp,48
    80001b58:	00050a13          	mv	s4,a0
    80001b5c:	00058913          	mv	s2,a1
    Thread* prev = nullptr;
    Thread* cur  = sleepQueue;
    80001b60:	00004497          	auipc	s1,0x4
    80001b64:	c604b483          	ld	s1,-928(s1) # 800057c0 <_ZN9Scheduler10sleepQueueE>
    Thread* prev = nullptr;
    80001b68:	00000993          	li	s3,0
    time_t  rem  = dur;

    while (cur != nullptr && cur->sleepDelta <= rem) {
    80001b6c:	02048463          	beqz	s1,80001b94 <_ZN9Scheduler5sleepEP6Threadm+0x5c>
    80001b70:	0384b783          	ld	a5,56(s1)
    80001b74:	02f96063          	bltu	s2,a5,80001b94 <_ZN9Scheduler5sleepEP6Threadm+0x5c>
        rem -= cur->sleepDelta;
    80001b78:	40f90933          	sub	s2,s2,a5
        prev = cur;
        cur  = cur->getNextInQueue();
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	b40080e7          	jalr	-1216(ra) # 800016c0 <_ZN6Thread14getNextInQueueEv>
        prev = cur;
    80001b88:	00048993          	mv	s3,s1
        cur  = cur->getNextInQueue();
    80001b8c:	00050493          	mv	s1,a0
    while (cur != nullptr && cur->sleepDelta <= rem) {
    80001b90:	fddff06f          	j	80001b6c <_ZN9Scheduler5sleepEP6Threadm+0x34>
    }

    t->sleepDelta = rem;
    80001b94:	032a3c23          	sd	s2,56(s4)
    t->setNextInQueue(cur);
    80001b98:	00048593          	mv	a1,s1
    80001b9c:	000a0513          	mv	a0,s4
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	b58080e7          	jalr	-1192(ra) # 800016f8 <_ZN6Thread14setNextInQueueEPS_>
    if (prev == nullptr) sleepQueue = t;
    80001ba8:	04098263          	beqz	s3,80001bec <_ZN9Scheduler5sleepEP6Threadm+0xb4>
    else prev->setNextInQueue(t);
    80001bac:	000a0593          	mv	a1,s4
    80001bb0:	00098513          	mv	a0,s3
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	b44080e7          	jalr	-1212(ra) # 800016f8 <_ZN6Thread14setNextInQueueEPS_>
    if (cur != nullptr) cur->sleepDelta -= rem;
    80001bbc:	00048863          	beqz	s1,80001bcc <_ZN9Scheduler5sleepEP6Threadm+0x94>
    80001bc0:	0384b583          	ld	a1,56(s1)
    80001bc4:	41258933          	sub	s2,a1,s2
    80001bc8:	0324bc23          	sd	s2,56(s1)
}
    80001bcc:	02813083          	ld	ra,40(sp)
    80001bd0:	02013403          	ld	s0,32(sp)
    80001bd4:	01813483          	ld	s1,24(sp)
    80001bd8:	01013903          	ld	s2,16(sp)
    80001bdc:	00813983          	ld	s3,8(sp)
    80001be0:	00013a03          	ld	s4,0(sp)
    80001be4:	03010113          	addi	sp,sp,48
    80001be8:	00008067          	ret
    if (prev == nullptr) sleepQueue = t;
    80001bec:	00004797          	auipc	a5,0x4
    80001bf0:	bd47ba23          	sd	s4,-1068(a5) # 800057c0 <_ZN9Scheduler10sleepQueueE>
    80001bf4:	fc9ff06f          	j	80001bbc <_ZN9Scheduler5sleepEP6Threadm+0x84>

0000000080001bf8 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813423          	sd	s0,8(sp)
    80001c00:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80001c04:	00004797          	auipc	a5,0x4
    80001c08:	b547b783          	ld	a5,-1196(a5) # 80005758 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c0c:	0007b783          	ld	a5,0(a5)
    80001c10:	00004717          	auipc	a4,0x4
    80001c14:	b3073703          	ld	a4,-1232(a4) # 80005740 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c18:	00073703          	ld	a4,0(a4)
    80001c1c:	40e787b3          	sub	a5,a5,a4
    80001c20:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    80001c24:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80001c28:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    80001c2c:	00100693          	li	a3,1
    80001c30:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    80001c34:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    80001c38:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    80001c3c:	00073423          	sd	zero,8(a4)
}
    80001c40:	00813403          	ld	s0,8(sp)
    80001c44:	01010113          	addi	sp,sp,16
    80001c48:	00008067          	ret

0000000080001c4c <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    80001c4c:	00004797          	auipc	a5,0x4
    80001c50:	b7c7c783          	lbu	a5,-1156(a5) # 800057c8 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80001c54:	00078863          	beqz	a5,80001c64 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80001c58:	00004517          	auipc	a0,0x4
    80001c5c:	b7850513          	addi	a0,a0,-1160 # 800057d0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001c60:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00113423          	sd	ra,8(sp)
    80001c6c:	00813023          	sd	s0,0(sp)
    80001c70:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80001c74:	00004517          	auipc	a0,0x4
    80001c78:	b5c50513          	addi	a0,a0,-1188 # 800057d0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	f7c080e7          	jalr	-132(ra) # 80001bf8 <_ZN15MemoryAllocatorC1Ev>
    80001c84:	00100793          	li	a5,1
    80001c88:	00004717          	auipc	a4,0x4
    80001c8c:	b4f70023          	sb	a5,-1216(a4) # 800057c8 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80001c90:	00004517          	auipc	a0,0x4
    80001c94:	b4050513          	addi	a0,a0,-1216 # 800057d0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    80001cb4:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001cb8:	03f58593          	addi	a1,a1,63
    80001cbc:	0065d593          	srli	a1,a1,0x6
    80001cc0:	0080006f          	j	80001cc8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80001cc4:	00053503          	ld	a0,0(a0)
    while(curr){
    80001cc8:	06050863          	beqz	a0,80001d38 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80001ccc:	01054703          	lbu	a4,16(a0)
    80001cd0:	00100793          	li	a5,1
    80001cd4:	fef718e3          	bne	a4,a5,80001cc4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    80001cd8:	01853703          	ld	a4,24(a0)
    80001cdc:	00158793          	addi	a5,a1,1
    80001ce0:	fef762e3          	bltu	a4,a5,80001cc4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80001ce4:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80001ce8:	04e7f663          	bgeu	a5,a4,80001d34 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80001cec:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80001cf0:	00679793          	slli	a5,a5,0x6
    80001cf4:	00f507b3          	add	a5,a0,a5
    80001cf8:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80001cfc:	00100713          	li	a4,1
    80001d00:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80001d04:	01853703          	ld	a4,24(a0)
    80001d08:	40b70733          	sub	a4,a4,a1
    80001d0c:	fff70713          	addi	a4,a4,-1
    80001d10:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80001d14:	00d7b023          	sd	a3,0(a5)
                if(old)
    80001d18:	00068463          	beqz	a3,80001d20 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80001d1c:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80001d20:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80001d24:	01853703          	ld	a4,24(a0)
    80001d28:	0187b783          	ld	a5,24(a5)
    80001d2c:	40f707b3          	sub	a5,a4,a5
    80001d30:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80001d34:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80001d38:	00813403          	ld	s0,8(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80001d50:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    80001d54:	08070a63          	beqz	a4,80001de8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    80001d58:	00100793          	li	a5,1
    80001d5c:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80001d60:	fc05b783          	ld	a5,-64(a1)
    80001d64:	00078863          	beqz	a5,80001d74 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80001d68:	0107c603          	lbu	a2,16(a5)
    80001d6c:	00100693          	li	a3,1
    80001d70:	02d60463          	beq	a2,a3,80001d98 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80001d74:	fc85b783          	ld	a5,-56(a1)
    80001d78:	06078c63          	beqz	a5,80001df0 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80001d7c:	0107c683          	lbu	a3,16(a5)
    80001d80:	00100713          	li	a4,1
    80001d84:	02e68e63          	beq	a3,a4,80001dc0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80001d88:	00000513          	li	a0,0
}
    80001d8c:	00813403          	ld	s0,8(sp)
    80001d90:	01010113          	addi	sp,sp,16
    80001d94:	00008067          	ret
        curr->size +=next->size;
    80001d98:	0187b603          	ld	a2,24(a5)
    80001d9c:	fd85b683          	ld	a3,-40(a1)
    80001da0:	00c686b3          	add	a3,a3,a2
    80001da4:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    80001da8:	0007b683          	ld	a3,0(a5)
    80001dac:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    80001db0:	0007b783          	ld	a5,0(a5)
    80001db4:	fc0780e3          	beqz	a5,80001d74 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80001db8:	00e7b423          	sd	a4,8(a5)
    80001dbc:	fb9ff06f          	j	80001d74 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80001dc0:	fd85b683          	ld	a3,-40(a1)
    80001dc4:	0187b703          	ld	a4,24(a5)
    80001dc8:	00d70733          	add	a4,a4,a3
    80001dcc:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80001dd0:	fc05b703          	ld	a4,-64(a1)
    80001dd4:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80001dd8:	02070063          	beqz	a4,80001df8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80001ddc:	00f73423          	sd	a5,8(a4)
    return 0;
    80001de0:	00000513          	li	a0,0
    80001de4:	fa9ff06f          	j	80001d8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    80001de8:	fff00513          	li	a0,-1
    80001dec:	fa1ff06f          	j	80001d8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80001df0:	00000513          	li	a0,0
    80001df4:	f99ff06f          	j	80001d8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80001df8:	00000513          	li	a0,0
    80001dfc:	f91ff06f          	j	80001d8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080001e00 <HandleInterupt>:
#include "Scheduler.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    80001e00:	fc010113          	addi	sp,sp,-64
    80001e04:	02113c23          	sd	ra,56(sp)
    80001e08:	02813823          	sd	s0,48(sp)
    80001e0c:	02913423          	sd	s1,40(sp)
    80001e10:	03213023          	sd	s2,32(sp)
    80001e14:	01313c23          	sd	s3,24(sp)
    80001e18:	01413823          	sd	s4,16(sp)
    80001e1c:	01513423          	sd	s5,8(sp)
    80001e20:	01613023          	sd	s6,0(sp)
    80001e24:	04010413          	addi	s0,sp,64
    80001e28:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001e2c:	142029f3          	csrr	s3,scause

    Thread* current = Scheduler::GetRunning();
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	998080e7          	jalr	-1640(ra) # 800017c8 <_ZN9Scheduler10GetRunningEv>
    80001e38:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80001e3c:	04050863          	beqz	a0,80001e8c <HandleInterupt+0x8c>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    80001e40:	00000713          	li	a4,0
    80001e44:	01f00793          	li	a5,31
    80001e48:	02e7c063          	blt	a5,a4,80001e68 <HandleInterupt+0x68>
    80001e4c:	00371793          	slli	a5,a4,0x3
    80001e50:	00f906b3          	add	a3,s2,a5
    80001e54:	0006b683          	ld	a3,0(a3)
    80001e58:	00f487b3          	add	a5,s1,a5
    80001e5c:	04d7b023          	sd	a3,64(a5)
    80001e60:	0017071b          	addiw	a4,a4,1
    80001e64:	fe1ff06f          	j	80001e44 <HandleInterupt+0x44>
        ctx.x[2] = (size_t)frame + 256;
    80001e68:	10090793          	addi	a5,s2,256
    80001e6c:	04f4b823          	sd	a5,80(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80001e70:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001e74:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    80001e78:	ff898793          	addi	a5,s3,-8
    80001e7c:	00100613          	li	a2,1
    80001e80:	06f67263          	bgeu	a2,a5,80001ee4 <HandleInterupt+0xe4>
        ctx.sepc    = sepc;
    80001e84:	14e4b023          	sd	a4,320(s1)
        ctx.sstatus = sstatus;
    80001e88:	14d4b423          	sd	a3,328(s1)
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
    80001e8c:	fff00793          	li	a5,-1
    80001e90:	03f79793          	slli	a5,a5,0x3f
    80001e94:	00178793          	addi	a5,a5,1
    80001e98:	04f98a63          	beq	s3,a5,80001eec <HandleInterupt+0xec>
        Scheduler::timerTick(current);
        return;
    }

    // non-ecall trap: exception → skip instruction; unhandled interrupt → ignore
    if (scause != 8 && scause != 9) {
    80001e9c:	ff898793          	addi	a5,s3,-8
    80001ea0:	00100713          	li	a4,1
    80001ea4:	04f76c63          	bltu	a4,a5,80001efc <HandleInterupt+0xfc>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001ea8:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001eac:	00478793          	addi	a5,a5,4
    80001eb0:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    80001eb4:	05093783          	ld	a5,80(s2)
    switch (code) {
    80001eb8:	01300713          	li	a4,19
    80001ebc:	08f76463          	bltu	a4,a5,80001f44 <HandleInterupt+0x144>
    80001ec0:	04078063          	beqz	a5,80001f00 <HandleInterupt+0x100>
    80001ec4:	02f76e63          	bltu	a4,a5,80001f00 <HandleInterupt+0x100>
    80001ec8:	00279793          	slli	a5,a5,0x2
    80001ecc:	00003717          	auipc	a4,0x3
    80001ed0:	15470713          	addi	a4,a4,340 # 80005020 <CONSOLE_STATUS+0x10>
    80001ed4:	00e787b3          	add	a5,a5,a4
    80001ed8:	0007a783          	lw	a5,0(a5)
    80001edc:	00e787b3          	add	a5,a5,a4
    80001ee0:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    80001ee4:	00470713          	addi	a4,a4,4
    80001ee8:	f9dff06f          	j	80001e84 <HandleInterupt+0x84>
        Scheduler::timerTick(current);
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	b48080e7          	jalr	-1208(ra) # 80001a38 <_ZN9Scheduler9timerTickEP6Thread>
        return;
    80001ef8:	0080006f          	j	80001f00 <HandleInterupt+0x100>
        if ((scause >> 63) == 0) {  // exception, not interrupt
    80001efc:	0209d663          	bgez	s3,80001f28 <HandleInterupt+0x128>
        default: {
            break;
        }
    }
    return;
}
    80001f00:	03813083          	ld	ra,56(sp)
    80001f04:	03013403          	ld	s0,48(sp)
    80001f08:	02813483          	ld	s1,40(sp)
    80001f0c:	02013903          	ld	s2,32(sp)
    80001f10:	01813983          	ld	s3,24(sp)
    80001f14:	01013a03          	ld	s4,16(sp)
    80001f18:	00813a83          	ld	s5,8(sp)
    80001f1c:	00013b03          	ld	s6,0(sp)
    80001f20:	04010113          	addi	sp,sp,64
    80001f24:	00008067          	ret
            __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001f28:	141024f3          	csrr	s1,sepc
            __putc('!');
    80001f2c:	02100513          	li	a0,33
    80001f30:	00002097          	auipc	ra,0x2
    80001f34:	37c080e7          	jalr	892(ra) # 800042ac <__putc>
            __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001f38:	00448493          	addi	s1,s1,4
    80001f3c:	14149073          	csrw	sepc,s1
        return;
    80001f40:	fc1ff06f          	j	80001f00 <HandleInterupt+0x100>
    switch (code) {
    80001f44:	03100713          	li	a4,49
    80001f48:	fae79ce3          	bne	a5,a4,80001f00 <HandleInterupt+0x100>
            time_t dur = (time_t)frame[11];
    80001f4c:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80001f50:	00048463          	beqz	s1,80001f58 <HandleInterupt+0x158>
    80001f54:	0804b823          	sd	zero,144(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    80001f58:	12059663          	bnez	a1,80002084 <HandleInterupt+0x284>
    80001f5c:	00000513          	li	a0,0
    80001f60:	fa1ff06f          	j	80001f00 <HandleInterupt+0x100>
            size_t size = frame[11];
    80001f64:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	ce4080e7          	jalr	-796(ra) # 80001c4c <_ZN15MemoryAllocator11GetInstanceEv>
    80001f70:	00048593          	mv	a1,s1
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	d34080e7          	jalr	-716(ra) # 80001ca8 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80001f7c:	00050513          	mv	a0,a0
            break;
    80001f80:	f81ff06f          	j	80001f00 <HandleInterupt+0x100>
            void* ptr = (void*)frame[11];
    80001f84:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	cc4080e7          	jalr	-828(ra) # 80001c4c <_ZN15MemoryAllocator11GetInstanceEv>
    80001f90:	00048593          	mv	a1,s1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	db0080e7          	jalr	-592(ra) # 80001d44 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80001f9c:	f65ff06f          	j	80001f00 <HandleInterupt+0x100>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    80001fa0:	05893983          	ld	s3,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    80001fa4:	06093a83          	ld	s5,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    80001fa8:	06893a03          	ld	s4,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    80001fac:	07093b03          	ld	s6,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread));
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	c9c080e7          	jalr	-868(ra) # 80001c4c <_ZN15MemoryAllocator11GetInstanceEv>
    80001fb8:	15800593          	li	a1,344
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	cec080e7          	jalr	-788(ra) # 80001ca8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001fc4:	00050913          	mv	s2,a0
            if (!mem) {
    80001fc8:	04050463          	beqz	a0,80002010 <HandleInterupt+0x210>
            t->init();
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	610080e7          	jalr	1552(ra) # 800015dc <_ZN6Thread4initEv>
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void setup(Thread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    80001fd4:	01593023          	sd	s5,0(s2)
    80001fd8:	01493423          	sd	s4,8(s2)
            t->setup(current, stack_space);
    80001fdc:	000b0613          	mv	a2,s6
    80001fe0:	00048593          	mv	a1,s1
    80001fe4:	00090513          	mv	a0,s2
    80001fe8:	fffff097          	auipc	ra,0xfffff
    80001fec:	798080e7          	jalr	1944(ra) # 80001780 <_ZN6Thread5setupEPS_Pm>
            *handle = reinterpret_cast<thread_t>(t);
    80001ff0:	0129b023          	sd	s2,0(s3)
            Scheduler::Put(t);   // enqueue; caller continues running
    80001ff4:	00090513          	mv	a0,s2
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	908080e7          	jalr	-1784(ra) # 80001900 <_ZN9Scheduler3PutEP6Thread>
            if (current) current->threadContext.x[10] = 0;
    80002000:	00048463          	beqz	s1,80002008 <HandleInterupt+0x208>
    80002004:	0804b823          	sd	zero,144(s1)
            __asm__ volatile("li a0, 0");  // return 0 via Trap.S path (x10 not restored from frame)
    80002008:	00000513          	li	a0,0
            break;
    8000200c:	ef5ff06f          	j	80001f00 <HandleInterupt+0x100>
                if (current) {
    80002010:	ee0488e3          	beqz	s1,80001f00 <HandleInterupt+0x100>
                    current->threadContext.x[10] = (size_t)-1;
    80002014:	fff00793          	li	a5,-1
    80002018:	08f4b823          	sd	a5,144(s1)
                    restoreContext(current->getContext());
    8000201c:	00048513          	mv	a0,s1
    80002020:	fffff097          	auipc	ra,0xfffff
    80002024:	684080e7          	jalr	1668(ra) # 800016a4 <_ZN6Thread10getContextEv>
    80002028:	fffff097          	auipc	ra,0xfffff
    8000202c:	06c080e7          	jalr	108(ra) # 80001094 <restoreContext>
                return;
    80002030:	ed1ff06f          	j	80001f00 <HandleInterupt+0x100>
            Scheduler::ThreadExit(current);
    80002034:	00048513          	mv	a0,s1
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	874080e7          	jalr	-1932(ra) # 800018ac <_ZN9Scheduler10ThreadExitEP6Thread>
            break;
    80002040:	ec1ff06f          	j	80001f00 <HandleInterupt+0x100>
            Thread* next = Scheduler::GetNext();
    80002044:	fffff097          	auipc	ra,0xfffff
    80002048:	7e0080e7          	jalr	2016(ra) # 80001824 <_ZN9Scheduler7GetNextEv>
    8000204c:	00050913          	mv	s2,a0
            if (next == nullptr) {
    80002050:	02050663          	beqz	a0,8000207c <HandleInterupt+0x27c>
            if (current) current->threadContext.x[10] = 0; // dispatch returns 0 when resumed
    80002054:	00048463          	beqz	s1,8000205c <HandleInterupt+0x25c>
    80002058:	0804b823          	sd	zero,144(s1)
            Scheduler::Put(current);
    8000205c:	00048513          	mv	a0,s1
    80002060:	00000097          	auipc	ra,0x0
    80002064:	8a0080e7          	jalr	-1888(ra) # 80001900 <_ZN9Scheduler3PutEP6Thread>
            Scheduler::yield(current, next); // never returns here
    80002068:	00090593          	mv	a1,s2
    8000206c:	00048513          	mv	a0,s1
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	778080e7          	jalr	1912(ra) # 800017e8 <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    80002078:	e89ff06f          	j	80001f00 <HandleInterupt+0x100>
                __asm__ volatile("li a0, 0");
    8000207c:	00000513          	li	a0,0
                break;
    80002080:	e81ff06f          	j	80001f00 <HandleInterupt+0x100>
            Scheduler::sleep(current, dur);
    80002084:	00048513          	mv	a0,s1
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	ab0080e7          	jalr	-1360(ra) # 80001b38 <_ZN9Scheduler5sleepEP6Threadm>
            Thread* next = Scheduler::GetNext();
    80002090:	fffff097          	auipc	ra,0xfffff
    80002094:	794080e7          	jalr	1940(ra) # 80001824 <_ZN9Scheduler7GetNextEv>
    80002098:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    8000209c:	00050a63          	beqz	a0,800020b0 <HandleInterupt+0x2b0>
            Scheduler::yield(current, next);
    800020a0:	00048513          	mv	a0,s1
    800020a4:	fffff097          	auipc	ra,0xfffff
    800020a8:	744080e7          	jalr	1860(ra) # 800017e8 <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    800020ac:	e55ff06f          	j	80001f00 <HandleInterupt+0x100>
            if (next == nullptr) { while(true){} }
    800020b0:	0000006f          	j	800020b0 <HandleInterupt+0x2b0>

00000000800020b4 <start_main_thread>:

extern "C" {
int start_main_thread() {
    800020b4:	ff010113          	addi	sp,sp,-16
    800020b8:	00113423          	sd	ra,8(sp)
    800020bc:	00813023          	sd	s0,0(sp)
    800020c0:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	8f4080e7          	jalr	-1804(ra) # 800019b8 <_ZN9Scheduler16SetupStartThreadEv>
    return 0;
}
    800020cc:	00000513          	li	a0,0
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00013403          	ld	s0,0(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_Z5mainAv>:
#include "../lib/console.h"
#include "MemoryAllocator.hpp"
void mainA(){
    800020e0:	fd010113          	addi	sp,sp,-48
    800020e4:	02113423          	sd	ra,40(sp)
    800020e8:	02813023          	sd	s0,32(sp)
    800020ec:	00913c23          	sd	s1,24(sp)
    800020f0:	01213823          	sd	s2,16(sp)
    800020f4:	03010413          	addi	s0,sp,48
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	b54080e7          	jalr	-1196(ra) # 80001c4c <_ZN15MemoryAllocator11GetInstanceEv>
    80002100:	00053783          	ld	a5,0(a0)
    80002104:	fcf43c23          	sd	a5,-40(s0)

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    80002108:	01400593          	li	a1,20
    8000210c:	fd840913          	addi	s2,s0,-40
    80002110:	00090513          	mv	a0,s2
    80002114:	00000097          	auipc	ra,0x0
    80002118:	b94080e7          	jalr	-1132(ra) # 80001ca8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    8000211c:	00050493          	mv	s1,a0
    *a1 = 'a';
    80002120:	06100793          	li	a5,97
    80002124:	00f50023          	sb	a5,0(a0)
    *(a1+sizeof(char)) ='b';
    80002128:	06200793          	li	a5,98
    8000212c:	00f500a3          	sb	a5,1(a0)
    __putc(*a1);
    80002130:	06100513          	li	a0,97
    80002134:	00002097          	auipc	ra,0x2
    80002138:	178080e7          	jalr	376(ra) # 800042ac <__putc>
    __putc(*(a1+1));
    8000213c:	0014c503          	lbu	a0,1(s1)
    80002140:	00002097          	auipc	ra,0x2
    80002144:	16c080e7          	jalr	364(ra) # 800042ac <__putc>
    *(a1+11) = 'h';
    80002148:	06800793          	li	a5,104
    8000214c:	00f485a3          	sb	a5,11(s1)
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80002150:	00a00593          	li	a1,10
    80002154:	00090513          	mv	a0,s2
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	b50080e7          	jalr	-1200(ra) # 80001ca8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    *a2 = 'c';
    80002160:	06300793          	li	a5,99
    80002164:	00f50023          	sb	a5,0(a0)
    *(a2+sizeof(char)) ='d';
    80002168:	06400793          	li	a5,100
    8000216c:	00f500a3          	sb	a5,1(a0)
    memAlloc.FreeFragment(a1);
    80002170:	00048593          	mv	a1,s1
    80002174:	00090513          	mv	a0,s2
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	bcc080e7          	jalr	-1076(ra) # 80001d44 <_ZN15MemoryAllocator12FreeFragmentEPv>
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80002180:	00a00593          	li	a1,10
    80002184:	00090513          	mv	a0,s2
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	b20080e7          	jalr	-1248(ra) # 80001ca8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002190:	00050913          	mv	s2,a0
    *a3 = 'e';
    80002194:	06500793          	li	a5,101
    80002198:	00f50023          	sb	a5,0(a0)
    *(a3+sizeof(char)) ='f';
    8000219c:	06600793          	li	a5,102
    800021a0:	00f500a3          	sb	a5,1(a0)
    __putc(*a3);
    800021a4:	06500513          	li	a0,101
    800021a8:	00002097          	auipc	ra,0x2
    800021ac:	104080e7          	jalr	260(ra) # 800042ac <__putc>
    __putc(*(a3+11));
    800021b0:	00b94503          	lbu	a0,11(s2)
    800021b4:	00002097          	auipc	ra,0x2
    800021b8:	0f8080e7          	jalr	248(ra) # 800042ac <__putc>
    __putc(*a1);
    800021bc:	0004c503          	lbu	a0,0(s1)
    800021c0:	00002097          	auipc	ra,0x2
    800021c4:	0ec080e7          	jalr	236(ra) # 800042ac <__putc>
    __putc(*(a1+1));
    800021c8:	0014c503          	lbu	a0,1(s1)
    800021cc:	00002097          	auipc	ra,0x2
    800021d0:	0e0080e7          	jalr	224(ra) # 800042ac <__putc>


    800021d4:	02813083          	ld	ra,40(sp)
    800021d8:	02013403          	ld	s0,32(sp)
    800021dc:	01813483          	ld	s1,24(sp)
    800021e0:	01013903          	ld	s2,16(sp)
    800021e4:	03010113          	addi	sp,sp,48
    800021e8:	00008067          	ret

00000000800021ec <start>:
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813423          	sd	s0,8(sp)
    800021f4:	01010413          	addi	s0,sp,16
    800021f8:	300027f3          	csrr	a5,mstatus
    800021fc:	ffffe737          	lui	a4,0xffffe
    80002200:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7dcf>
    80002204:	00e7f7b3          	and	a5,a5,a4
    80002208:	00001737          	lui	a4,0x1
    8000220c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002210:	00e7e7b3          	or	a5,a5,a4
    80002214:	30079073          	csrw	mstatus,a5
    80002218:	00000797          	auipc	a5,0x0
    8000221c:	16078793          	addi	a5,a5,352 # 80002378 <system_main>
    80002220:	34179073          	csrw	mepc,a5
    80002224:	00000793          	li	a5,0
    80002228:	18079073          	csrw	satp,a5
    8000222c:	000107b7          	lui	a5,0x10
    80002230:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002234:	30279073          	csrw	medeleg,a5
    80002238:	30379073          	csrw	mideleg,a5
    8000223c:	104027f3          	csrr	a5,sie
    80002240:	2227e793          	ori	a5,a5,546
    80002244:	10479073          	csrw	sie,a5
    80002248:	fff00793          	li	a5,-1
    8000224c:	00a7d793          	srli	a5,a5,0xa
    80002250:	3b079073          	csrw	pmpaddr0,a5
    80002254:	00f00793          	li	a5,15
    80002258:	3a079073          	csrw	pmpcfg0,a5
    8000225c:	f14027f3          	csrr	a5,mhartid
    80002260:	0200c737          	lui	a4,0x200c
    80002264:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002268:	0007869b          	sext.w	a3,a5
    8000226c:	00269713          	slli	a4,a3,0x2
    80002270:	000f4637          	lui	a2,0xf4
    80002274:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002278:	00d70733          	add	a4,a4,a3
    8000227c:	0037979b          	slliw	a5,a5,0x3
    80002280:	020046b7          	lui	a3,0x2004
    80002284:	00d787b3          	add	a5,a5,a3
    80002288:	00c585b3          	add	a1,a1,a2
    8000228c:	00371693          	slli	a3,a4,0x3
    80002290:	00003717          	auipc	a4,0x3
    80002294:	55070713          	addi	a4,a4,1360 # 800057e0 <timer_scratch>
    80002298:	00b7b023          	sd	a1,0(a5)
    8000229c:	00d70733          	add	a4,a4,a3
    800022a0:	00f73c23          	sd	a5,24(a4)
    800022a4:	02c73023          	sd	a2,32(a4)
    800022a8:	34071073          	csrw	mscratch,a4
    800022ac:	00000797          	auipc	a5,0x0
    800022b0:	6e478793          	addi	a5,a5,1764 # 80002990 <timervec>
    800022b4:	30579073          	csrw	mtvec,a5
    800022b8:	300027f3          	csrr	a5,mstatus
    800022bc:	0087e793          	ori	a5,a5,8
    800022c0:	30079073          	csrw	mstatus,a5
    800022c4:	304027f3          	csrr	a5,mie
    800022c8:	0807e793          	ori	a5,a5,128
    800022cc:	30479073          	csrw	mie,a5
    800022d0:	f14027f3          	csrr	a5,mhartid
    800022d4:	0007879b          	sext.w	a5,a5
    800022d8:	00078213          	mv	tp,a5
    800022dc:	30200073          	mret
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <timerinit>:
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
    800022f8:	f14027f3          	csrr	a5,mhartid
    800022fc:	0200c737          	lui	a4,0x200c
    80002300:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002304:	0007869b          	sext.w	a3,a5
    80002308:	00269713          	slli	a4,a3,0x2
    8000230c:	000f4637          	lui	a2,0xf4
    80002310:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002314:	00d70733          	add	a4,a4,a3
    80002318:	0037979b          	slliw	a5,a5,0x3
    8000231c:	020046b7          	lui	a3,0x2004
    80002320:	00d787b3          	add	a5,a5,a3
    80002324:	00c585b3          	add	a1,a1,a2
    80002328:	00371693          	slli	a3,a4,0x3
    8000232c:	00003717          	auipc	a4,0x3
    80002330:	4b470713          	addi	a4,a4,1204 # 800057e0 <timer_scratch>
    80002334:	00b7b023          	sd	a1,0(a5)
    80002338:	00d70733          	add	a4,a4,a3
    8000233c:	00f73c23          	sd	a5,24(a4)
    80002340:	02c73023          	sd	a2,32(a4)
    80002344:	34071073          	csrw	mscratch,a4
    80002348:	00000797          	auipc	a5,0x0
    8000234c:	64878793          	addi	a5,a5,1608 # 80002990 <timervec>
    80002350:	30579073          	csrw	mtvec,a5
    80002354:	300027f3          	csrr	a5,mstatus
    80002358:	0087e793          	ori	a5,a5,8
    8000235c:	30079073          	csrw	mstatus,a5
    80002360:	304027f3          	csrr	a5,mie
    80002364:	0807e793          	ori	a5,a5,128
    80002368:	30479073          	csrw	mie,a5
    8000236c:	00813403          	ld	s0,8(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <system_main>:
    80002378:	fe010113          	addi	sp,sp,-32
    8000237c:	00813823          	sd	s0,16(sp)
    80002380:	00913423          	sd	s1,8(sp)
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	02010413          	addi	s0,sp,32
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	0c4080e7          	jalr	196(ra) # 80002450 <cpuid>
    80002394:	00003497          	auipc	s1,0x3
    80002398:	3dc48493          	addi	s1,s1,988 # 80005770 <started>
    8000239c:	02050263          	beqz	a0,800023c0 <system_main+0x48>
    800023a0:	0004a783          	lw	a5,0(s1)
    800023a4:	0007879b          	sext.w	a5,a5
    800023a8:	fe078ce3          	beqz	a5,800023a0 <system_main+0x28>
    800023ac:	0ff0000f          	fence
    800023b0:	00003517          	auipc	a0,0x3
    800023b4:	cf050513          	addi	a0,a0,-784 # 800050a0 <CONSOLE_STATUS+0x90>
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	a74080e7          	jalr	-1420(ra) # 80002e2c <panic>
    800023c0:	00001097          	auipc	ra,0x1
    800023c4:	9c8080e7          	jalr	-1592(ra) # 80002d88 <consoleinit>
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	154080e7          	jalr	340(ra) # 8000351c <printfinit>
    800023d0:	00003517          	auipc	a0,0x3
    800023d4:	db050513          	addi	a0,a0,-592 # 80005180 <CONSOLE_STATUS+0x170>
    800023d8:	00001097          	auipc	ra,0x1
    800023dc:	ab0080e7          	jalr	-1360(ra) # 80002e88 <__printf>
    800023e0:	00003517          	auipc	a0,0x3
    800023e4:	c9050513          	addi	a0,a0,-880 # 80005070 <CONSOLE_STATUS+0x60>
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	aa0080e7          	jalr	-1376(ra) # 80002e88 <__printf>
    800023f0:	00003517          	auipc	a0,0x3
    800023f4:	d9050513          	addi	a0,a0,-624 # 80005180 <CONSOLE_STATUS+0x170>
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	a90080e7          	jalr	-1392(ra) # 80002e88 <__printf>
    80002400:	00001097          	auipc	ra,0x1
    80002404:	4a8080e7          	jalr	1192(ra) # 800038a8 <kinit>
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	148080e7          	jalr	328(ra) # 80002550 <trapinit>
    80002410:	00000097          	auipc	ra,0x0
    80002414:	16c080e7          	jalr	364(ra) # 8000257c <trapinithart>
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	5b8080e7          	jalr	1464(ra) # 800029d0 <plicinit>
    80002420:	00000097          	auipc	ra,0x0
    80002424:	5d8080e7          	jalr	1496(ra) # 800029f8 <plicinithart>
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	078080e7          	jalr	120(ra) # 800024a0 <userinit>
    80002430:	0ff0000f          	fence
    80002434:	00100793          	li	a5,1
    80002438:	00003517          	auipc	a0,0x3
    8000243c:	c5050513          	addi	a0,a0,-944 # 80005088 <CONSOLE_STATUS+0x78>
    80002440:	00f4a023          	sw	a5,0(s1)
    80002444:	00001097          	auipc	ra,0x1
    80002448:	a44080e7          	jalr	-1468(ra) # 80002e88 <__printf>
    8000244c:	0000006f          	j	8000244c <system_main+0xd4>

0000000080002450 <cpuid>:
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    8000245c:	00020513          	mv	a0,tp
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	0005051b          	sext.w	a0,a0
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <mycpu>:
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    8000247c:	00020793          	mv	a5,tp
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	0007879b          	sext.w	a5,a5
    80002488:	00779793          	slli	a5,a5,0x7
    8000248c:	00004517          	auipc	a0,0x4
    80002490:	38450513          	addi	a0,a0,900 # 80006810 <cpus>
    80002494:	00f50533          	add	a0,a0,a5
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <userinit>:
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00813423          	sd	s0,8(sp)
    800024a8:	01010413          	addi	s0,sp,16
    800024ac:	00813403          	ld	s0,8(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	fffff317          	auipc	t1,0xfffff
    800024b8:	07830067          	jr	120(t1) # 8000152c <main>

00000000800024bc <either_copyout>:
    800024bc:	ff010113          	addi	sp,sp,-16
    800024c0:	00813023          	sd	s0,0(sp)
    800024c4:	00113423          	sd	ra,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    800024cc:	02051663          	bnez	a0,800024f8 <either_copyout+0x3c>
    800024d0:	00058513          	mv	a0,a1
    800024d4:	00060593          	mv	a1,a2
    800024d8:	0006861b          	sext.w	a2,a3
    800024dc:	00002097          	auipc	ra,0x2
    800024e0:	c58080e7          	jalr	-936(ra) # 80004134 <__memmove>
    800024e4:	00813083          	ld	ra,8(sp)
    800024e8:	00013403          	ld	s0,0(sp)
    800024ec:	00000513          	li	a0,0
    800024f0:	01010113          	addi	sp,sp,16
    800024f4:	00008067          	ret
    800024f8:	00003517          	auipc	a0,0x3
    800024fc:	bd050513          	addi	a0,a0,-1072 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002500:	00001097          	auipc	ra,0x1
    80002504:	92c080e7          	jalr	-1748(ra) # 80002e2c <panic>

0000000080002508 <either_copyin>:
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00813023          	sd	s0,0(sp)
    80002510:	00113423          	sd	ra,8(sp)
    80002514:	01010413          	addi	s0,sp,16
    80002518:	02059463          	bnez	a1,80002540 <either_copyin+0x38>
    8000251c:	00060593          	mv	a1,a2
    80002520:	0006861b          	sext.w	a2,a3
    80002524:	00002097          	auipc	ra,0x2
    80002528:	c10080e7          	jalr	-1008(ra) # 80004134 <__memmove>
    8000252c:	00813083          	ld	ra,8(sp)
    80002530:	00013403          	ld	s0,0(sp)
    80002534:	00000513          	li	a0,0
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret
    80002540:	00003517          	auipc	a0,0x3
    80002544:	bb050513          	addi	a0,a0,-1104 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	8e4080e7          	jalr	-1820(ra) # 80002e2c <panic>

0000000080002550 <trapinit>:
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    8000255c:	00813403          	ld	s0,8(sp)
    80002560:	00003597          	auipc	a1,0x3
    80002564:	bb858593          	addi	a1,a1,-1096 # 80005118 <CONSOLE_STATUS+0x108>
    80002568:	00004517          	auipc	a0,0x4
    8000256c:	32850513          	addi	a0,a0,808 # 80006890 <tickslock>
    80002570:	01010113          	addi	sp,sp,16
    80002574:	00001317          	auipc	t1,0x1
    80002578:	5c430067          	jr	1476(t1) # 80003b38 <initlock>

000000008000257c <trapinithart>:
    8000257c:	ff010113          	addi	sp,sp,-16
    80002580:	00813423          	sd	s0,8(sp)
    80002584:	01010413          	addi	s0,sp,16
    80002588:	00000797          	auipc	a5,0x0
    8000258c:	2f878793          	addi	a5,a5,760 # 80002880 <kernelvec>
    80002590:	10579073          	csrw	stvec,a5
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <usertrap>:
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <usertrapret>:
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813423          	sd	s0,8(sp)
    800025c0:	01010413          	addi	s0,sp,16
    800025c4:	00813403          	ld	s0,8(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <kerneltrap>:
    800025d0:	fe010113          	addi	sp,sp,-32
    800025d4:	00813823          	sd	s0,16(sp)
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	00913423          	sd	s1,8(sp)
    800025e0:	02010413          	addi	s0,sp,32
    800025e4:	142025f3          	csrr	a1,scause
    800025e8:	100027f3          	csrr	a5,sstatus
    800025ec:	0027f793          	andi	a5,a5,2
    800025f0:	10079c63          	bnez	a5,80002708 <kerneltrap+0x138>
    800025f4:	142027f3          	csrr	a5,scause
    800025f8:	0207ce63          	bltz	a5,80002634 <kerneltrap+0x64>
    800025fc:	00003517          	auipc	a0,0x3
    80002600:	b6450513          	addi	a0,a0,-1180 # 80005160 <CONSOLE_STATUS+0x150>
    80002604:	00001097          	auipc	ra,0x1
    80002608:	884080e7          	jalr	-1916(ra) # 80002e88 <__printf>
    8000260c:	141025f3          	csrr	a1,sepc
    80002610:	14302673          	csrr	a2,stval
    80002614:	00003517          	auipc	a0,0x3
    80002618:	b5c50513          	addi	a0,a0,-1188 # 80005170 <CONSOLE_STATUS+0x160>
    8000261c:	00001097          	auipc	ra,0x1
    80002620:	86c080e7          	jalr	-1940(ra) # 80002e88 <__printf>
    80002624:	00003517          	auipc	a0,0x3
    80002628:	b6450513          	addi	a0,a0,-1180 # 80005188 <CONSOLE_STATUS+0x178>
    8000262c:	00001097          	auipc	ra,0x1
    80002630:	800080e7          	jalr	-2048(ra) # 80002e2c <panic>
    80002634:	0ff7f713          	andi	a4,a5,255
    80002638:	00900693          	li	a3,9
    8000263c:	04d70063          	beq	a4,a3,8000267c <kerneltrap+0xac>
    80002640:	fff00713          	li	a4,-1
    80002644:	03f71713          	slli	a4,a4,0x3f
    80002648:	00170713          	addi	a4,a4,1
    8000264c:	fae798e3          	bne	a5,a4,800025fc <kerneltrap+0x2c>
    80002650:	00000097          	auipc	ra,0x0
    80002654:	e00080e7          	jalr	-512(ra) # 80002450 <cpuid>
    80002658:	06050663          	beqz	a0,800026c4 <kerneltrap+0xf4>
    8000265c:	144027f3          	csrr	a5,sip
    80002660:	ffd7f793          	andi	a5,a5,-3
    80002664:	14479073          	csrw	sip,a5
    80002668:	01813083          	ld	ra,24(sp)
    8000266c:	01013403          	ld	s0,16(sp)
    80002670:	00813483          	ld	s1,8(sp)
    80002674:	02010113          	addi	sp,sp,32
    80002678:	00008067          	ret
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	3c8080e7          	jalr	968(ra) # 80002a44 <plic_claim>
    80002684:	00a00793          	li	a5,10
    80002688:	00050493          	mv	s1,a0
    8000268c:	06f50863          	beq	a0,a5,800026fc <kerneltrap+0x12c>
    80002690:	fc050ce3          	beqz	a0,80002668 <kerneltrap+0x98>
    80002694:	00050593          	mv	a1,a0
    80002698:	00003517          	auipc	a0,0x3
    8000269c:	aa850513          	addi	a0,a0,-1368 # 80005140 <CONSOLE_STATUS+0x130>
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	7e8080e7          	jalr	2024(ra) # 80002e88 <__printf>
    800026a8:	01013403          	ld	s0,16(sp)
    800026ac:	01813083          	ld	ra,24(sp)
    800026b0:	00048513          	mv	a0,s1
    800026b4:	00813483          	ld	s1,8(sp)
    800026b8:	02010113          	addi	sp,sp,32
    800026bc:	00000317          	auipc	t1,0x0
    800026c0:	3c030067          	jr	960(t1) # 80002a7c <plic_complete>
    800026c4:	00004517          	auipc	a0,0x4
    800026c8:	1cc50513          	addi	a0,a0,460 # 80006890 <tickslock>
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	490080e7          	jalr	1168(ra) # 80003b5c <acquire>
    800026d4:	00003717          	auipc	a4,0x3
    800026d8:	0a070713          	addi	a4,a4,160 # 80005774 <ticks>
    800026dc:	00072783          	lw	a5,0(a4)
    800026e0:	00004517          	auipc	a0,0x4
    800026e4:	1b050513          	addi	a0,a0,432 # 80006890 <tickslock>
    800026e8:	0017879b          	addiw	a5,a5,1
    800026ec:	00f72023          	sw	a5,0(a4)
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	538080e7          	jalr	1336(ra) # 80003c28 <release>
    800026f8:	f65ff06f          	j	8000265c <kerneltrap+0x8c>
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	094080e7          	jalr	148(ra) # 80003790 <uartintr>
    80002704:	fa5ff06f          	j	800026a8 <kerneltrap+0xd8>
    80002708:	00003517          	auipc	a0,0x3
    8000270c:	a1850513          	addi	a0,a0,-1512 # 80005120 <CONSOLE_STATUS+0x110>
    80002710:	00000097          	auipc	ra,0x0
    80002714:	71c080e7          	jalr	1820(ra) # 80002e2c <panic>

0000000080002718 <clockintr>:
    80002718:	fe010113          	addi	sp,sp,-32
    8000271c:	00813823          	sd	s0,16(sp)
    80002720:	00913423          	sd	s1,8(sp)
    80002724:	00113c23          	sd	ra,24(sp)
    80002728:	02010413          	addi	s0,sp,32
    8000272c:	00004497          	auipc	s1,0x4
    80002730:	16448493          	addi	s1,s1,356 # 80006890 <tickslock>
    80002734:	00048513          	mv	a0,s1
    80002738:	00001097          	auipc	ra,0x1
    8000273c:	424080e7          	jalr	1060(ra) # 80003b5c <acquire>
    80002740:	00003717          	auipc	a4,0x3
    80002744:	03470713          	addi	a4,a4,52 # 80005774 <ticks>
    80002748:	00072783          	lw	a5,0(a4)
    8000274c:	01013403          	ld	s0,16(sp)
    80002750:	01813083          	ld	ra,24(sp)
    80002754:	00048513          	mv	a0,s1
    80002758:	0017879b          	addiw	a5,a5,1
    8000275c:	00813483          	ld	s1,8(sp)
    80002760:	00f72023          	sw	a5,0(a4)
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00001317          	auipc	t1,0x1
    8000276c:	4c030067          	jr	1216(t1) # 80003c28 <release>

0000000080002770 <devintr>:
    80002770:	142027f3          	csrr	a5,scause
    80002774:	00000513          	li	a0,0
    80002778:	0007c463          	bltz	a5,80002780 <devintr+0x10>
    8000277c:	00008067          	ret
    80002780:	fe010113          	addi	sp,sp,-32
    80002784:	00813823          	sd	s0,16(sp)
    80002788:	00113c23          	sd	ra,24(sp)
    8000278c:	00913423          	sd	s1,8(sp)
    80002790:	02010413          	addi	s0,sp,32
    80002794:	0ff7f713          	andi	a4,a5,255
    80002798:	00900693          	li	a3,9
    8000279c:	04d70c63          	beq	a4,a3,800027f4 <devintr+0x84>
    800027a0:	fff00713          	li	a4,-1
    800027a4:	03f71713          	slli	a4,a4,0x3f
    800027a8:	00170713          	addi	a4,a4,1
    800027ac:	00e78c63          	beq	a5,a4,800027c4 <devintr+0x54>
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	01013403          	ld	s0,16(sp)
    800027b8:	00813483          	ld	s1,8(sp)
    800027bc:	02010113          	addi	sp,sp,32
    800027c0:	00008067          	ret
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	c8c080e7          	jalr	-884(ra) # 80002450 <cpuid>
    800027cc:	06050663          	beqz	a0,80002838 <devintr+0xc8>
    800027d0:	144027f3          	csrr	a5,sip
    800027d4:	ffd7f793          	andi	a5,a5,-3
    800027d8:	14479073          	csrw	sip,a5
    800027dc:	01813083          	ld	ra,24(sp)
    800027e0:	01013403          	ld	s0,16(sp)
    800027e4:	00813483          	ld	s1,8(sp)
    800027e8:	00200513          	li	a0,2
    800027ec:	02010113          	addi	sp,sp,32
    800027f0:	00008067          	ret
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	250080e7          	jalr	592(ra) # 80002a44 <plic_claim>
    800027fc:	00a00793          	li	a5,10
    80002800:	00050493          	mv	s1,a0
    80002804:	06f50663          	beq	a0,a5,80002870 <devintr+0x100>
    80002808:	00100513          	li	a0,1
    8000280c:	fa0482e3          	beqz	s1,800027b0 <devintr+0x40>
    80002810:	00048593          	mv	a1,s1
    80002814:	00003517          	auipc	a0,0x3
    80002818:	92c50513          	addi	a0,a0,-1748 # 80005140 <CONSOLE_STATUS+0x130>
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	66c080e7          	jalr	1644(ra) # 80002e88 <__printf>
    80002824:	00048513          	mv	a0,s1
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	254080e7          	jalr	596(ra) # 80002a7c <plic_complete>
    80002830:	00100513          	li	a0,1
    80002834:	f7dff06f          	j	800027b0 <devintr+0x40>
    80002838:	00004517          	auipc	a0,0x4
    8000283c:	05850513          	addi	a0,a0,88 # 80006890 <tickslock>
    80002840:	00001097          	auipc	ra,0x1
    80002844:	31c080e7          	jalr	796(ra) # 80003b5c <acquire>
    80002848:	00003717          	auipc	a4,0x3
    8000284c:	f2c70713          	addi	a4,a4,-212 # 80005774 <ticks>
    80002850:	00072783          	lw	a5,0(a4)
    80002854:	00004517          	auipc	a0,0x4
    80002858:	03c50513          	addi	a0,a0,60 # 80006890 <tickslock>
    8000285c:	0017879b          	addiw	a5,a5,1
    80002860:	00f72023          	sw	a5,0(a4)
    80002864:	00001097          	auipc	ra,0x1
    80002868:	3c4080e7          	jalr	964(ra) # 80003c28 <release>
    8000286c:	f65ff06f          	j	800027d0 <devintr+0x60>
    80002870:	00001097          	auipc	ra,0x1
    80002874:	f20080e7          	jalr	-224(ra) # 80003790 <uartintr>
    80002878:	fadff06f          	j	80002824 <devintr+0xb4>
    8000287c:	0000                	unimp
	...

0000000080002880 <kernelvec>:
    80002880:	f0010113          	addi	sp,sp,-256
    80002884:	00113023          	sd	ra,0(sp)
    80002888:	00213423          	sd	sp,8(sp)
    8000288c:	00313823          	sd	gp,16(sp)
    80002890:	00413c23          	sd	tp,24(sp)
    80002894:	02513023          	sd	t0,32(sp)
    80002898:	02613423          	sd	t1,40(sp)
    8000289c:	02713823          	sd	t2,48(sp)
    800028a0:	02813c23          	sd	s0,56(sp)
    800028a4:	04913023          	sd	s1,64(sp)
    800028a8:	04a13423          	sd	a0,72(sp)
    800028ac:	04b13823          	sd	a1,80(sp)
    800028b0:	04c13c23          	sd	a2,88(sp)
    800028b4:	06d13023          	sd	a3,96(sp)
    800028b8:	06e13423          	sd	a4,104(sp)
    800028bc:	06f13823          	sd	a5,112(sp)
    800028c0:	07013c23          	sd	a6,120(sp)
    800028c4:	09113023          	sd	a7,128(sp)
    800028c8:	09213423          	sd	s2,136(sp)
    800028cc:	09313823          	sd	s3,144(sp)
    800028d0:	09413c23          	sd	s4,152(sp)
    800028d4:	0b513023          	sd	s5,160(sp)
    800028d8:	0b613423          	sd	s6,168(sp)
    800028dc:	0b713823          	sd	s7,176(sp)
    800028e0:	0b813c23          	sd	s8,184(sp)
    800028e4:	0d913023          	sd	s9,192(sp)
    800028e8:	0da13423          	sd	s10,200(sp)
    800028ec:	0db13823          	sd	s11,208(sp)
    800028f0:	0dc13c23          	sd	t3,216(sp)
    800028f4:	0fd13023          	sd	t4,224(sp)
    800028f8:	0fe13423          	sd	t5,232(sp)
    800028fc:	0ff13823          	sd	t6,240(sp)
    80002900:	cd1ff0ef          	jal	ra,800025d0 <kerneltrap>
    80002904:	00013083          	ld	ra,0(sp)
    80002908:	00813103          	ld	sp,8(sp)
    8000290c:	01013183          	ld	gp,16(sp)
    80002910:	02013283          	ld	t0,32(sp)
    80002914:	02813303          	ld	t1,40(sp)
    80002918:	03013383          	ld	t2,48(sp)
    8000291c:	03813403          	ld	s0,56(sp)
    80002920:	04013483          	ld	s1,64(sp)
    80002924:	04813503          	ld	a0,72(sp)
    80002928:	05013583          	ld	a1,80(sp)
    8000292c:	05813603          	ld	a2,88(sp)
    80002930:	06013683          	ld	a3,96(sp)
    80002934:	06813703          	ld	a4,104(sp)
    80002938:	07013783          	ld	a5,112(sp)
    8000293c:	07813803          	ld	a6,120(sp)
    80002940:	08013883          	ld	a7,128(sp)
    80002944:	08813903          	ld	s2,136(sp)
    80002948:	09013983          	ld	s3,144(sp)
    8000294c:	09813a03          	ld	s4,152(sp)
    80002950:	0a013a83          	ld	s5,160(sp)
    80002954:	0a813b03          	ld	s6,168(sp)
    80002958:	0b013b83          	ld	s7,176(sp)
    8000295c:	0b813c03          	ld	s8,184(sp)
    80002960:	0c013c83          	ld	s9,192(sp)
    80002964:	0c813d03          	ld	s10,200(sp)
    80002968:	0d013d83          	ld	s11,208(sp)
    8000296c:	0d813e03          	ld	t3,216(sp)
    80002970:	0e013e83          	ld	t4,224(sp)
    80002974:	0e813f03          	ld	t5,232(sp)
    80002978:	0f013f83          	ld	t6,240(sp)
    8000297c:	10010113          	addi	sp,sp,256
    80002980:	10200073          	sret
    80002984:	00000013          	nop
    80002988:	00000013          	nop
    8000298c:	00000013          	nop

0000000080002990 <timervec>:
    80002990:	34051573          	csrrw	a0,mscratch,a0
    80002994:	00b53023          	sd	a1,0(a0)
    80002998:	00c53423          	sd	a2,8(a0)
    8000299c:	00d53823          	sd	a3,16(a0)
    800029a0:	01853583          	ld	a1,24(a0)
    800029a4:	02053603          	ld	a2,32(a0)
    800029a8:	0005b683          	ld	a3,0(a1)
    800029ac:	00c686b3          	add	a3,a3,a2
    800029b0:	00d5b023          	sd	a3,0(a1)
    800029b4:	00200593          	li	a1,2
    800029b8:	14459073          	csrw	sip,a1
    800029bc:	01053683          	ld	a3,16(a0)
    800029c0:	00853603          	ld	a2,8(a0)
    800029c4:	00053583          	ld	a1,0(a0)
    800029c8:	34051573          	csrrw	a0,mscratch,a0
    800029cc:	30200073          	mret

00000000800029d0 <plicinit>:
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00813423          	sd	s0,8(sp)
    800029d8:	01010413          	addi	s0,sp,16
    800029dc:	00813403          	ld	s0,8(sp)
    800029e0:	0c0007b7          	lui	a5,0xc000
    800029e4:	00100713          	li	a4,1
    800029e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800029ec:	00e7a223          	sw	a4,4(a5)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <plicinithart>:
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00813023          	sd	s0,0(sp)
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	01010413          	addi	s0,sp,16
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	a48080e7          	jalr	-1464(ra) # 80002450 <cpuid>
    80002a10:	0085171b          	slliw	a4,a0,0x8
    80002a14:	0c0027b7          	lui	a5,0xc002
    80002a18:	00e787b3          	add	a5,a5,a4
    80002a1c:	40200713          	li	a4,1026
    80002a20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002a24:	00813083          	ld	ra,8(sp)
    80002a28:	00013403          	ld	s0,0(sp)
    80002a2c:	00d5151b          	slliw	a0,a0,0xd
    80002a30:	0c2017b7          	lui	a5,0xc201
    80002a34:	00a78533          	add	a0,a5,a0
    80002a38:	00052023          	sw	zero,0(a0)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <plic_claim>:
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00813023          	sd	s0,0(sp)
    80002a4c:	00113423          	sd	ra,8(sp)
    80002a50:	01010413          	addi	s0,sp,16
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	9fc080e7          	jalr	-1540(ra) # 80002450 <cpuid>
    80002a5c:	00813083          	ld	ra,8(sp)
    80002a60:	00013403          	ld	s0,0(sp)
    80002a64:	00d5151b          	slliw	a0,a0,0xd
    80002a68:	0c2017b7          	lui	a5,0xc201
    80002a6c:	00a78533          	add	a0,a5,a0
    80002a70:	00452503          	lw	a0,4(a0)
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret

0000000080002a7c <plic_complete>:
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	00113c23          	sd	ra,24(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00050493          	mv	s1,a0
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	9bc080e7          	jalr	-1604(ra) # 80002450 <cpuid>
    80002a9c:	01813083          	ld	ra,24(sp)
    80002aa0:	01013403          	ld	s0,16(sp)
    80002aa4:	00d5179b          	slliw	a5,a0,0xd
    80002aa8:	0c201737          	lui	a4,0xc201
    80002aac:	00f707b3          	add	a5,a4,a5
    80002ab0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	02010113          	addi	sp,sp,32
    80002abc:	00008067          	ret

0000000080002ac0 <consolewrite>:
    80002ac0:	fb010113          	addi	sp,sp,-80
    80002ac4:	04813023          	sd	s0,64(sp)
    80002ac8:	04113423          	sd	ra,72(sp)
    80002acc:	02913c23          	sd	s1,56(sp)
    80002ad0:	03213823          	sd	s2,48(sp)
    80002ad4:	03313423          	sd	s3,40(sp)
    80002ad8:	03413023          	sd	s4,32(sp)
    80002adc:	01513c23          	sd	s5,24(sp)
    80002ae0:	05010413          	addi	s0,sp,80
    80002ae4:	06c05c63          	blez	a2,80002b5c <consolewrite+0x9c>
    80002ae8:	00060993          	mv	s3,a2
    80002aec:	00050a13          	mv	s4,a0
    80002af0:	00058493          	mv	s1,a1
    80002af4:	00000913          	li	s2,0
    80002af8:	fff00a93          	li	s5,-1
    80002afc:	01c0006f          	j	80002b18 <consolewrite+0x58>
    80002b00:	fbf44503          	lbu	a0,-65(s0)
    80002b04:	0019091b          	addiw	s2,s2,1
    80002b08:	00148493          	addi	s1,s1,1
    80002b0c:	00001097          	auipc	ra,0x1
    80002b10:	a9c080e7          	jalr	-1380(ra) # 800035a8 <uartputc>
    80002b14:	03298063          	beq	s3,s2,80002b34 <consolewrite+0x74>
    80002b18:	00048613          	mv	a2,s1
    80002b1c:	00100693          	li	a3,1
    80002b20:	000a0593          	mv	a1,s4
    80002b24:	fbf40513          	addi	a0,s0,-65
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	9e0080e7          	jalr	-1568(ra) # 80002508 <either_copyin>
    80002b30:	fd5518e3          	bne	a0,s5,80002b00 <consolewrite+0x40>
    80002b34:	04813083          	ld	ra,72(sp)
    80002b38:	04013403          	ld	s0,64(sp)
    80002b3c:	03813483          	ld	s1,56(sp)
    80002b40:	02813983          	ld	s3,40(sp)
    80002b44:	02013a03          	ld	s4,32(sp)
    80002b48:	01813a83          	ld	s5,24(sp)
    80002b4c:	00090513          	mv	a0,s2
    80002b50:	03013903          	ld	s2,48(sp)
    80002b54:	05010113          	addi	sp,sp,80
    80002b58:	00008067          	ret
    80002b5c:	00000913          	li	s2,0
    80002b60:	fd5ff06f          	j	80002b34 <consolewrite+0x74>

0000000080002b64 <consoleread>:
    80002b64:	f9010113          	addi	sp,sp,-112
    80002b68:	06813023          	sd	s0,96(sp)
    80002b6c:	04913c23          	sd	s1,88(sp)
    80002b70:	05213823          	sd	s2,80(sp)
    80002b74:	05313423          	sd	s3,72(sp)
    80002b78:	05413023          	sd	s4,64(sp)
    80002b7c:	03513c23          	sd	s5,56(sp)
    80002b80:	03613823          	sd	s6,48(sp)
    80002b84:	03713423          	sd	s7,40(sp)
    80002b88:	03813023          	sd	s8,32(sp)
    80002b8c:	06113423          	sd	ra,104(sp)
    80002b90:	01913c23          	sd	s9,24(sp)
    80002b94:	07010413          	addi	s0,sp,112
    80002b98:	00060b93          	mv	s7,a2
    80002b9c:	00050913          	mv	s2,a0
    80002ba0:	00058c13          	mv	s8,a1
    80002ba4:	00060b1b          	sext.w	s6,a2
    80002ba8:	00004497          	auipc	s1,0x4
    80002bac:	d0048493          	addi	s1,s1,-768 # 800068a8 <cons>
    80002bb0:	00400993          	li	s3,4
    80002bb4:	fff00a13          	li	s4,-1
    80002bb8:	00a00a93          	li	s5,10
    80002bbc:	05705e63          	blez	s7,80002c18 <consoleread+0xb4>
    80002bc0:	09c4a703          	lw	a4,156(s1)
    80002bc4:	0984a783          	lw	a5,152(s1)
    80002bc8:	0007071b          	sext.w	a4,a4
    80002bcc:	08e78463          	beq	a5,a4,80002c54 <consoleread+0xf0>
    80002bd0:	07f7f713          	andi	a4,a5,127
    80002bd4:	00e48733          	add	a4,s1,a4
    80002bd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002bdc:	0017869b          	addiw	a3,a5,1
    80002be0:	08d4ac23          	sw	a3,152(s1)
    80002be4:	00070c9b          	sext.w	s9,a4
    80002be8:	0b370663          	beq	a4,s3,80002c94 <consoleread+0x130>
    80002bec:	00100693          	li	a3,1
    80002bf0:	f9f40613          	addi	a2,s0,-97
    80002bf4:	000c0593          	mv	a1,s8
    80002bf8:	00090513          	mv	a0,s2
    80002bfc:	f8e40fa3          	sb	a4,-97(s0)
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	8bc080e7          	jalr	-1860(ra) # 800024bc <either_copyout>
    80002c08:	01450863          	beq	a0,s4,80002c18 <consoleread+0xb4>
    80002c0c:	001c0c13          	addi	s8,s8,1
    80002c10:	fffb8b9b          	addiw	s7,s7,-1
    80002c14:	fb5c94e3          	bne	s9,s5,80002bbc <consoleread+0x58>
    80002c18:	000b851b          	sext.w	a0,s7
    80002c1c:	06813083          	ld	ra,104(sp)
    80002c20:	06013403          	ld	s0,96(sp)
    80002c24:	05813483          	ld	s1,88(sp)
    80002c28:	05013903          	ld	s2,80(sp)
    80002c2c:	04813983          	ld	s3,72(sp)
    80002c30:	04013a03          	ld	s4,64(sp)
    80002c34:	03813a83          	ld	s5,56(sp)
    80002c38:	02813b83          	ld	s7,40(sp)
    80002c3c:	02013c03          	ld	s8,32(sp)
    80002c40:	01813c83          	ld	s9,24(sp)
    80002c44:	40ab053b          	subw	a0,s6,a0
    80002c48:	03013b03          	ld	s6,48(sp)
    80002c4c:	07010113          	addi	sp,sp,112
    80002c50:	00008067          	ret
    80002c54:	00001097          	auipc	ra,0x1
    80002c58:	1d8080e7          	jalr	472(ra) # 80003e2c <push_on>
    80002c5c:	0984a703          	lw	a4,152(s1)
    80002c60:	09c4a783          	lw	a5,156(s1)
    80002c64:	0007879b          	sext.w	a5,a5
    80002c68:	fef70ce3          	beq	a4,a5,80002c60 <consoleread+0xfc>
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	234080e7          	jalr	564(ra) # 80003ea0 <pop_on>
    80002c74:	0984a783          	lw	a5,152(s1)
    80002c78:	07f7f713          	andi	a4,a5,127
    80002c7c:	00e48733          	add	a4,s1,a4
    80002c80:	01874703          	lbu	a4,24(a4)
    80002c84:	0017869b          	addiw	a3,a5,1
    80002c88:	08d4ac23          	sw	a3,152(s1)
    80002c8c:	00070c9b          	sext.w	s9,a4
    80002c90:	f5371ee3          	bne	a4,s3,80002bec <consoleread+0x88>
    80002c94:	000b851b          	sext.w	a0,s7
    80002c98:	f96bf2e3          	bgeu	s7,s6,80002c1c <consoleread+0xb8>
    80002c9c:	08f4ac23          	sw	a5,152(s1)
    80002ca0:	f7dff06f          	j	80002c1c <consoleread+0xb8>

0000000080002ca4 <consputc>:
    80002ca4:	10000793          	li	a5,256
    80002ca8:	00f50663          	beq	a0,a5,80002cb4 <consputc+0x10>
    80002cac:	00001317          	auipc	t1,0x1
    80002cb0:	9f430067          	jr	-1548(t1) # 800036a0 <uartputc_sync>
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    80002cc4:	00800513          	li	a0,8
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	9d8080e7          	jalr	-1576(ra) # 800036a0 <uartputc_sync>
    80002cd0:	02000513          	li	a0,32
    80002cd4:	00001097          	auipc	ra,0x1
    80002cd8:	9cc080e7          	jalr	-1588(ra) # 800036a0 <uartputc_sync>
    80002cdc:	00013403          	ld	s0,0(sp)
    80002ce0:	00813083          	ld	ra,8(sp)
    80002ce4:	00800513          	li	a0,8
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00001317          	auipc	t1,0x1
    80002cf0:	9b430067          	jr	-1612(t1) # 800036a0 <uartputc_sync>

0000000080002cf4 <consoleintr>:
    80002cf4:	fe010113          	addi	sp,sp,-32
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	02010413          	addi	s0,sp,32
    80002d0c:	00004917          	auipc	s2,0x4
    80002d10:	b9c90913          	addi	s2,s2,-1124 # 800068a8 <cons>
    80002d14:	00050493          	mv	s1,a0
    80002d18:	00090513          	mv	a0,s2
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	e40080e7          	jalr	-448(ra) # 80003b5c <acquire>
    80002d24:	02048c63          	beqz	s1,80002d5c <consoleintr+0x68>
    80002d28:	0a092783          	lw	a5,160(s2)
    80002d2c:	09892703          	lw	a4,152(s2)
    80002d30:	07f00693          	li	a3,127
    80002d34:	40e7873b          	subw	a4,a5,a4
    80002d38:	02e6e263          	bltu	a3,a4,80002d5c <consoleintr+0x68>
    80002d3c:	00d00713          	li	a4,13
    80002d40:	04e48063          	beq	s1,a4,80002d80 <consoleintr+0x8c>
    80002d44:	07f7f713          	andi	a4,a5,127
    80002d48:	00e90733          	add	a4,s2,a4
    80002d4c:	0017879b          	addiw	a5,a5,1
    80002d50:	0af92023          	sw	a5,160(s2)
    80002d54:	00970c23          	sb	s1,24(a4)
    80002d58:	08f92e23          	sw	a5,156(s2)
    80002d5c:	01013403          	ld	s0,16(sp)
    80002d60:	01813083          	ld	ra,24(sp)
    80002d64:	00813483          	ld	s1,8(sp)
    80002d68:	00013903          	ld	s2,0(sp)
    80002d6c:	00004517          	auipc	a0,0x4
    80002d70:	b3c50513          	addi	a0,a0,-1220 # 800068a8 <cons>
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00001317          	auipc	t1,0x1
    80002d7c:	eb030067          	jr	-336(t1) # 80003c28 <release>
    80002d80:	00a00493          	li	s1,10
    80002d84:	fc1ff06f          	j	80002d44 <consoleintr+0x50>

0000000080002d88 <consoleinit>:
    80002d88:	fe010113          	addi	sp,sp,-32
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	00813823          	sd	s0,16(sp)
    80002d94:	00913423          	sd	s1,8(sp)
    80002d98:	02010413          	addi	s0,sp,32
    80002d9c:	00004497          	auipc	s1,0x4
    80002da0:	b0c48493          	addi	s1,s1,-1268 # 800068a8 <cons>
    80002da4:	00048513          	mv	a0,s1
    80002da8:	00002597          	auipc	a1,0x2
    80002dac:	3f058593          	addi	a1,a1,1008 # 80005198 <CONSOLE_STATUS+0x188>
    80002db0:	00001097          	auipc	ra,0x1
    80002db4:	d88080e7          	jalr	-632(ra) # 80003b38 <initlock>
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	7ac080e7          	jalr	1964(ra) # 80003564 <uartinit>
    80002dc0:	01813083          	ld	ra,24(sp)
    80002dc4:	01013403          	ld	s0,16(sp)
    80002dc8:	00000797          	auipc	a5,0x0
    80002dcc:	d9c78793          	addi	a5,a5,-612 # 80002b64 <consoleread>
    80002dd0:	0af4bc23          	sd	a5,184(s1)
    80002dd4:	00000797          	auipc	a5,0x0
    80002dd8:	cec78793          	addi	a5,a5,-788 # 80002ac0 <consolewrite>
    80002ddc:	0cf4b023          	sd	a5,192(s1)
    80002de0:	00813483          	ld	s1,8(sp)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00008067          	ret

0000000080002dec <console_read>:
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00813423          	sd	s0,8(sp)
    80002df4:	01010413          	addi	s0,sp,16
    80002df8:	00813403          	ld	s0,8(sp)
    80002dfc:	00004317          	auipc	t1,0x4
    80002e00:	b6433303          	ld	t1,-1180(t1) # 80006960 <devsw+0x10>
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00030067          	jr	t1

0000000080002e0c <console_write>:
    80002e0c:	ff010113          	addi	sp,sp,-16
    80002e10:	00813423          	sd	s0,8(sp)
    80002e14:	01010413          	addi	s0,sp,16
    80002e18:	00813403          	ld	s0,8(sp)
    80002e1c:	00004317          	auipc	t1,0x4
    80002e20:	b4c33303          	ld	t1,-1204(t1) # 80006968 <devsw+0x18>
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00030067          	jr	t1

0000000080002e2c <panic>:
    80002e2c:	fe010113          	addi	sp,sp,-32
    80002e30:	00113c23          	sd	ra,24(sp)
    80002e34:	00813823          	sd	s0,16(sp)
    80002e38:	00913423          	sd	s1,8(sp)
    80002e3c:	02010413          	addi	s0,sp,32
    80002e40:	00050493          	mv	s1,a0
    80002e44:	00002517          	auipc	a0,0x2
    80002e48:	35c50513          	addi	a0,a0,860 # 800051a0 <CONSOLE_STATUS+0x190>
    80002e4c:	00004797          	auipc	a5,0x4
    80002e50:	ba07ae23          	sw	zero,-1092(a5) # 80006a08 <pr+0x18>
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	034080e7          	jalr	52(ra) # 80002e88 <__printf>
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	028080e7          	jalr	40(ra) # 80002e88 <__printf>
    80002e68:	00002517          	auipc	a0,0x2
    80002e6c:	31850513          	addi	a0,a0,792 # 80005180 <CONSOLE_STATUS+0x170>
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	018080e7          	jalr	24(ra) # 80002e88 <__printf>
    80002e78:	00100793          	li	a5,1
    80002e7c:	00003717          	auipc	a4,0x3
    80002e80:	8ef72e23          	sw	a5,-1796(a4) # 80005778 <panicked>
    80002e84:	0000006f          	j	80002e84 <panic+0x58>

0000000080002e88 <__printf>:
    80002e88:	f3010113          	addi	sp,sp,-208
    80002e8c:	08813023          	sd	s0,128(sp)
    80002e90:	07313423          	sd	s3,104(sp)
    80002e94:	09010413          	addi	s0,sp,144
    80002e98:	05813023          	sd	s8,64(sp)
    80002e9c:	08113423          	sd	ra,136(sp)
    80002ea0:	06913c23          	sd	s1,120(sp)
    80002ea4:	07213823          	sd	s2,112(sp)
    80002ea8:	07413023          	sd	s4,96(sp)
    80002eac:	05513c23          	sd	s5,88(sp)
    80002eb0:	05613823          	sd	s6,80(sp)
    80002eb4:	05713423          	sd	s7,72(sp)
    80002eb8:	03913c23          	sd	s9,56(sp)
    80002ebc:	03a13823          	sd	s10,48(sp)
    80002ec0:	03b13423          	sd	s11,40(sp)
    80002ec4:	00004317          	auipc	t1,0x4
    80002ec8:	b2c30313          	addi	t1,t1,-1236 # 800069f0 <pr>
    80002ecc:	01832c03          	lw	s8,24(t1)
    80002ed0:	00b43423          	sd	a1,8(s0)
    80002ed4:	00c43823          	sd	a2,16(s0)
    80002ed8:	00d43c23          	sd	a3,24(s0)
    80002edc:	02e43023          	sd	a4,32(s0)
    80002ee0:	02f43423          	sd	a5,40(s0)
    80002ee4:	03043823          	sd	a6,48(s0)
    80002ee8:	03143c23          	sd	a7,56(s0)
    80002eec:	00050993          	mv	s3,a0
    80002ef0:	4a0c1663          	bnez	s8,8000339c <__printf+0x514>
    80002ef4:	60098c63          	beqz	s3,8000350c <__printf+0x684>
    80002ef8:	0009c503          	lbu	a0,0(s3)
    80002efc:	00840793          	addi	a5,s0,8
    80002f00:	f6f43c23          	sd	a5,-136(s0)
    80002f04:	00000493          	li	s1,0
    80002f08:	22050063          	beqz	a0,80003128 <__printf+0x2a0>
    80002f0c:	00002a37          	lui	s4,0x2
    80002f10:	00018ab7          	lui	s5,0x18
    80002f14:	000f4b37          	lui	s6,0xf4
    80002f18:	00989bb7          	lui	s7,0x989
    80002f1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002f20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002f24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002f28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002f2c:	00148c9b          	addiw	s9,s1,1
    80002f30:	02500793          	li	a5,37
    80002f34:	01998933          	add	s2,s3,s9
    80002f38:	38f51263          	bne	a0,a5,800032bc <__printf+0x434>
    80002f3c:	00094783          	lbu	a5,0(s2)
    80002f40:	00078c9b          	sext.w	s9,a5
    80002f44:	1e078263          	beqz	a5,80003128 <__printf+0x2a0>
    80002f48:	0024849b          	addiw	s1,s1,2
    80002f4c:	07000713          	li	a4,112
    80002f50:	00998933          	add	s2,s3,s1
    80002f54:	38e78a63          	beq	a5,a4,800032e8 <__printf+0x460>
    80002f58:	20f76863          	bltu	a4,a5,80003168 <__printf+0x2e0>
    80002f5c:	42a78863          	beq	a5,a0,8000338c <__printf+0x504>
    80002f60:	06400713          	li	a4,100
    80002f64:	40e79663          	bne	a5,a4,80003370 <__printf+0x4e8>
    80002f68:	f7843783          	ld	a5,-136(s0)
    80002f6c:	0007a603          	lw	a2,0(a5)
    80002f70:	00878793          	addi	a5,a5,8
    80002f74:	f6f43c23          	sd	a5,-136(s0)
    80002f78:	42064a63          	bltz	a2,800033ac <__printf+0x524>
    80002f7c:	00a00713          	li	a4,10
    80002f80:	02e677bb          	remuw	a5,a2,a4
    80002f84:	00002d97          	auipc	s11,0x2
    80002f88:	244d8d93          	addi	s11,s11,580 # 800051c8 <digits>
    80002f8c:	00900593          	li	a1,9
    80002f90:	0006051b          	sext.w	a0,a2
    80002f94:	00000c93          	li	s9,0
    80002f98:	02079793          	slli	a5,a5,0x20
    80002f9c:	0207d793          	srli	a5,a5,0x20
    80002fa0:	00fd87b3          	add	a5,s11,a5
    80002fa4:	0007c783          	lbu	a5,0(a5)
    80002fa8:	02e656bb          	divuw	a3,a2,a4
    80002fac:	f8f40023          	sb	a5,-128(s0)
    80002fb0:	14c5d863          	bge	a1,a2,80003100 <__printf+0x278>
    80002fb4:	06300593          	li	a1,99
    80002fb8:	00100c93          	li	s9,1
    80002fbc:	02e6f7bb          	remuw	a5,a3,a4
    80002fc0:	02079793          	slli	a5,a5,0x20
    80002fc4:	0207d793          	srli	a5,a5,0x20
    80002fc8:	00fd87b3          	add	a5,s11,a5
    80002fcc:	0007c783          	lbu	a5,0(a5)
    80002fd0:	02e6d73b          	divuw	a4,a3,a4
    80002fd4:	f8f400a3          	sb	a5,-127(s0)
    80002fd8:	12a5f463          	bgeu	a1,a0,80003100 <__printf+0x278>
    80002fdc:	00a00693          	li	a3,10
    80002fe0:	00900593          	li	a1,9
    80002fe4:	02d777bb          	remuw	a5,a4,a3
    80002fe8:	02079793          	slli	a5,a5,0x20
    80002fec:	0207d793          	srli	a5,a5,0x20
    80002ff0:	00fd87b3          	add	a5,s11,a5
    80002ff4:	0007c503          	lbu	a0,0(a5)
    80002ff8:	02d757bb          	divuw	a5,a4,a3
    80002ffc:	f8a40123          	sb	a0,-126(s0)
    80003000:	48e5f263          	bgeu	a1,a4,80003484 <__printf+0x5fc>
    80003004:	06300513          	li	a0,99
    80003008:	02d7f5bb          	remuw	a1,a5,a3
    8000300c:	02059593          	slli	a1,a1,0x20
    80003010:	0205d593          	srli	a1,a1,0x20
    80003014:	00bd85b3          	add	a1,s11,a1
    80003018:	0005c583          	lbu	a1,0(a1)
    8000301c:	02d7d7bb          	divuw	a5,a5,a3
    80003020:	f8b401a3          	sb	a1,-125(s0)
    80003024:	48e57263          	bgeu	a0,a4,800034a8 <__printf+0x620>
    80003028:	3e700513          	li	a0,999
    8000302c:	02d7f5bb          	remuw	a1,a5,a3
    80003030:	02059593          	slli	a1,a1,0x20
    80003034:	0205d593          	srli	a1,a1,0x20
    80003038:	00bd85b3          	add	a1,s11,a1
    8000303c:	0005c583          	lbu	a1,0(a1)
    80003040:	02d7d7bb          	divuw	a5,a5,a3
    80003044:	f8b40223          	sb	a1,-124(s0)
    80003048:	46e57663          	bgeu	a0,a4,800034b4 <__printf+0x62c>
    8000304c:	02d7f5bb          	remuw	a1,a5,a3
    80003050:	02059593          	slli	a1,a1,0x20
    80003054:	0205d593          	srli	a1,a1,0x20
    80003058:	00bd85b3          	add	a1,s11,a1
    8000305c:	0005c583          	lbu	a1,0(a1)
    80003060:	02d7d7bb          	divuw	a5,a5,a3
    80003064:	f8b402a3          	sb	a1,-123(s0)
    80003068:	46ea7863          	bgeu	s4,a4,800034d8 <__printf+0x650>
    8000306c:	02d7f5bb          	remuw	a1,a5,a3
    80003070:	02059593          	slli	a1,a1,0x20
    80003074:	0205d593          	srli	a1,a1,0x20
    80003078:	00bd85b3          	add	a1,s11,a1
    8000307c:	0005c583          	lbu	a1,0(a1)
    80003080:	02d7d7bb          	divuw	a5,a5,a3
    80003084:	f8b40323          	sb	a1,-122(s0)
    80003088:	3eeaf863          	bgeu	s5,a4,80003478 <__printf+0x5f0>
    8000308c:	02d7f5bb          	remuw	a1,a5,a3
    80003090:	02059593          	slli	a1,a1,0x20
    80003094:	0205d593          	srli	a1,a1,0x20
    80003098:	00bd85b3          	add	a1,s11,a1
    8000309c:	0005c583          	lbu	a1,0(a1)
    800030a0:	02d7d7bb          	divuw	a5,a5,a3
    800030a4:	f8b403a3          	sb	a1,-121(s0)
    800030a8:	42eb7e63          	bgeu	s6,a4,800034e4 <__printf+0x65c>
    800030ac:	02d7f5bb          	remuw	a1,a5,a3
    800030b0:	02059593          	slli	a1,a1,0x20
    800030b4:	0205d593          	srli	a1,a1,0x20
    800030b8:	00bd85b3          	add	a1,s11,a1
    800030bc:	0005c583          	lbu	a1,0(a1)
    800030c0:	02d7d7bb          	divuw	a5,a5,a3
    800030c4:	f8b40423          	sb	a1,-120(s0)
    800030c8:	42ebfc63          	bgeu	s7,a4,80003500 <__printf+0x678>
    800030cc:	02079793          	slli	a5,a5,0x20
    800030d0:	0207d793          	srli	a5,a5,0x20
    800030d4:	00fd8db3          	add	s11,s11,a5
    800030d8:	000dc703          	lbu	a4,0(s11)
    800030dc:	00a00793          	li	a5,10
    800030e0:	00900c93          	li	s9,9
    800030e4:	f8e404a3          	sb	a4,-119(s0)
    800030e8:	00065c63          	bgez	a2,80003100 <__printf+0x278>
    800030ec:	f9040713          	addi	a4,s0,-112
    800030f0:	00f70733          	add	a4,a4,a5
    800030f4:	02d00693          	li	a3,45
    800030f8:	fed70823          	sb	a3,-16(a4)
    800030fc:	00078c93          	mv	s9,a5
    80003100:	f8040793          	addi	a5,s0,-128
    80003104:	01978cb3          	add	s9,a5,s9
    80003108:	f7f40d13          	addi	s10,s0,-129
    8000310c:	000cc503          	lbu	a0,0(s9)
    80003110:	fffc8c93          	addi	s9,s9,-1
    80003114:	00000097          	auipc	ra,0x0
    80003118:	b90080e7          	jalr	-1136(ra) # 80002ca4 <consputc>
    8000311c:	ffac98e3          	bne	s9,s10,8000310c <__printf+0x284>
    80003120:	00094503          	lbu	a0,0(s2)
    80003124:	e00514e3          	bnez	a0,80002f2c <__printf+0xa4>
    80003128:	1a0c1663          	bnez	s8,800032d4 <__printf+0x44c>
    8000312c:	08813083          	ld	ra,136(sp)
    80003130:	08013403          	ld	s0,128(sp)
    80003134:	07813483          	ld	s1,120(sp)
    80003138:	07013903          	ld	s2,112(sp)
    8000313c:	06813983          	ld	s3,104(sp)
    80003140:	06013a03          	ld	s4,96(sp)
    80003144:	05813a83          	ld	s5,88(sp)
    80003148:	05013b03          	ld	s6,80(sp)
    8000314c:	04813b83          	ld	s7,72(sp)
    80003150:	04013c03          	ld	s8,64(sp)
    80003154:	03813c83          	ld	s9,56(sp)
    80003158:	03013d03          	ld	s10,48(sp)
    8000315c:	02813d83          	ld	s11,40(sp)
    80003160:	0d010113          	addi	sp,sp,208
    80003164:	00008067          	ret
    80003168:	07300713          	li	a4,115
    8000316c:	1ce78a63          	beq	a5,a4,80003340 <__printf+0x4b8>
    80003170:	07800713          	li	a4,120
    80003174:	1ee79e63          	bne	a5,a4,80003370 <__printf+0x4e8>
    80003178:	f7843783          	ld	a5,-136(s0)
    8000317c:	0007a703          	lw	a4,0(a5)
    80003180:	00878793          	addi	a5,a5,8
    80003184:	f6f43c23          	sd	a5,-136(s0)
    80003188:	28074263          	bltz	a4,8000340c <__printf+0x584>
    8000318c:	00002d97          	auipc	s11,0x2
    80003190:	03cd8d93          	addi	s11,s11,60 # 800051c8 <digits>
    80003194:	00f77793          	andi	a5,a4,15
    80003198:	00fd87b3          	add	a5,s11,a5
    8000319c:	0007c683          	lbu	a3,0(a5)
    800031a0:	00f00613          	li	a2,15
    800031a4:	0007079b          	sext.w	a5,a4
    800031a8:	f8d40023          	sb	a3,-128(s0)
    800031ac:	0047559b          	srliw	a1,a4,0x4
    800031b0:	0047569b          	srliw	a3,a4,0x4
    800031b4:	00000c93          	li	s9,0
    800031b8:	0ee65063          	bge	a2,a4,80003298 <__printf+0x410>
    800031bc:	00f6f693          	andi	a3,a3,15
    800031c0:	00dd86b3          	add	a3,s11,a3
    800031c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800031c8:	0087d79b          	srliw	a5,a5,0x8
    800031cc:	00100c93          	li	s9,1
    800031d0:	f8d400a3          	sb	a3,-127(s0)
    800031d4:	0cb67263          	bgeu	a2,a1,80003298 <__printf+0x410>
    800031d8:	00f7f693          	andi	a3,a5,15
    800031dc:	00dd86b3          	add	a3,s11,a3
    800031e0:	0006c583          	lbu	a1,0(a3)
    800031e4:	00f00613          	li	a2,15
    800031e8:	0047d69b          	srliw	a3,a5,0x4
    800031ec:	f8b40123          	sb	a1,-126(s0)
    800031f0:	0047d593          	srli	a1,a5,0x4
    800031f4:	28f67e63          	bgeu	a2,a5,80003490 <__printf+0x608>
    800031f8:	00f6f693          	andi	a3,a3,15
    800031fc:	00dd86b3          	add	a3,s11,a3
    80003200:	0006c503          	lbu	a0,0(a3)
    80003204:	0087d813          	srli	a6,a5,0x8
    80003208:	0087d69b          	srliw	a3,a5,0x8
    8000320c:	f8a401a3          	sb	a0,-125(s0)
    80003210:	28b67663          	bgeu	a2,a1,8000349c <__printf+0x614>
    80003214:	00f6f693          	andi	a3,a3,15
    80003218:	00dd86b3          	add	a3,s11,a3
    8000321c:	0006c583          	lbu	a1,0(a3)
    80003220:	00c7d513          	srli	a0,a5,0xc
    80003224:	00c7d69b          	srliw	a3,a5,0xc
    80003228:	f8b40223          	sb	a1,-124(s0)
    8000322c:	29067a63          	bgeu	a2,a6,800034c0 <__printf+0x638>
    80003230:	00f6f693          	andi	a3,a3,15
    80003234:	00dd86b3          	add	a3,s11,a3
    80003238:	0006c583          	lbu	a1,0(a3)
    8000323c:	0107d813          	srli	a6,a5,0x10
    80003240:	0107d69b          	srliw	a3,a5,0x10
    80003244:	f8b402a3          	sb	a1,-123(s0)
    80003248:	28a67263          	bgeu	a2,a0,800034cc <__printf+0x644>
    8000324c:	00f6f693          	andi	a3,a3,15
    80003250:	00dd86b3          	add	a3,s11,a3
    80003254:	0006c683          	lbu	a3,0(a3)
    80003258:	0147d79b          	srliw	a5,a5,0x14
    8000325c:	f8d40323          	sb	a3,-122(s0)
    80003260:	21067663          	bgeu	a2,a6,8000346c <__printf+0x5e4>
    80003264:	02079793          	slli	a5,a5,0x20
    80003268:	0207d793          	srli	a5,a5,0x20
    8000326c:	00fd8db3          	add	s11,s11,a5
    80003270:	000dc683          	lbu	a3,0(s11)
    80003274:	00800793          	li	a5,8
    80003278:	00700c93          	li	s9,7
    8000327c:	f8d403a3          	sb	a3,-121(s0)
    80003280:	00075c63          	bgez	a4,80003298 <__printf+0x410>
    80003284:	f9040713          	addi	a4,s0,-112
    80003288:	00f70733          	add	a4,a4,a5
    8000328c:	02d00693          	li	a3,45
    80003290:	fed70823          	sb	a3,-16(a4)
    80003294:	00078c93          	mv	s9,a5
    80003298:	f8040793          	addi	a5,s0,-128
    8000329c:	01978cb3          	add	s9,a5,s9
    800032a0:	f7f40d13          	addi	s10,s0,-129
    800032a4:	000cc503          	lbu	a0,0(s9)
    800032a8:	fffc8c93          	addi	s9,s9,-1
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	9f8080e7          	jalr	-1544(ra) # 80002ca4 <consputc>
    800032b4:	ff9d18e3          	bne	s10,s9,800032a4 <__printf+0x41c>
    800032b8:	0100006f          	j	800032c8 <__printf+0x440>
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	9e8080e7          	jalr	-1560(ra) # 80002ca4 <consputc>
    800032c4:	000c8493          	mv	s1,s9
    800032c8:	00094503          	lbu	a0,0(s2)
    800032cc:	c60510e3          	bnez	a0,80002f2c <__printf+0xa4>
    800032d0:	e40c0ee3          	beqz	s8,8000312c <__printf+0x2a4>
    800032d4:	00003517          	auipc	a0,0x3
    800032d8:	71c50513          	addi	a0,a0,1820 # 800069f0 <pr>
    800032dc:	00001097          	auipc	ra,0x1
    800032e0:	94c080e7          	jalr	-1716(ra) # 80003c28 <release>
    800032e4:	e49ff06f          	j	8000312c <__printf+0x2a4>
    800032e8:	f7843783          	ld	a5,-136(s0)
    800032ec:	03000513          	li	a0,48
    800032f0:	01000d13          	li	s10,16
    800032f4:	00878713          	addi	a4,a5,8
    800032f8:	0007bc83          	ld	s9,0(a5)
    800032fc:	f6e43c23          	sd	a4,-136(s0)
    80003300:	00000097          	auipc	ra,0x0
    80003304:	9a4080e7          	jalr	-1628(ra) # 80002ca4 <consputc>
    80003308:	07800513          	li	a0,120
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	998080e7          	jalr	-1640(ra) # 80002ca4 <consputc>
    80003314:	00002d97          	auipc	s11,0x2
    80003318:	eb4d8d93          	addi	s11,s11,-332 # 800051c8 <digits>
    8000331c:	03ccd793          	srli	a5,s9,0x3c
    80003320:	00fd87b3          	add	a5,s11,a5
    80003324:	0007c503          	lbu	a0,0(a5)
    80003328:	fffd0d1b          	addiw	s10,s10,-1
    8000332c:	004c9c93          	slli	s9,s9,0x4
    80003330:	00000097          	auipc	ra,0x0
    80003334:	974080e7          	jalr	-1676(ra) # 80002ca4 <consputc>
    80003338:	fe0d12e3          	bnez	s10,8000331c <__printf+0x494>
    8000333c:	f8dff06f          	j	800032c8 <__printf+0x440>
    80003340:	f7843783          	ld	a5,-136(s0)
    80003344:	0007bc83          	ld	s9,0(a5)
    80003348:	00878793          	addi	a5,a5,8
    8000334c:	f6f43c23          	sd	a5,-136(s0)
    80003350:	000c9a63          	bnez	s9,80003364 <__printf+0x4dc>
    80003354:	1080006f          	j	8000345c <__printf+0x5d4>
    80003358:	001c8c93          	addi	s9,s9,1
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	948080e7          	jalr	-1720(ra) # 80002ca4 <consputc>
    80003364:	000cc503          	lbu	a0,0(s9)
    80003368:	fe0518e3          	bnez	a0,80003358 <__printf+0x4d0>
    8000336c:	f5dff06f          	j	800032c8 <__printf+0x440>
    80003370:	02500513          	li	a0,37
    80003374:	00000097          	auipc	ra,0x0
    80003378:	930080e7          	jalr	-1744(ra) # 80002ca4 <consputc>
    8000337c:	000c8513          	mv	a0,s9
    80003380:	00000097          	auipc	ra,0x0
    80003384:	924080e7          	jalr	-1756(ra) # 80002ca4 <consputc>
    80003388:	f41ff06f          	j	800032c8 <__printf+0x440>
    8000338c:	02500513          	li	a0,37
    80003390:	00000097          	auipc	ra,0x0
    80003394:	914080e7          	jalr	-1772(ra) # 80002ca4 <consputc>
    80003398:	f31ff06f          	j	800032c8 <__printf+0x440>
    8000339c:	00030513          	mv	a0,t1
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	7bc080e7          	jalr	1980(ra) # 80003b5c <acquire>
    800033a8:	b4dff06f          	j	80002ef4 <__printf+0x6c>
    800033ac:	40c0053b          	negw	a0,a2
    800033b0:	00a00713          	li	a4,10
    800033b4:	02e576bb          	remuw	a3,a0,a4
    800033b8:	00002d97          	auipc	s11,0x2
    800033bc:	e10d8d93          	addi	s11,s11,-496 # 800051c8 <digits>
    800033c0:	ff700593          	li	a1,-9
    800033c4:	02069693          	slli	a3,a3,0x20
    800033c8:	0206d693          	srli	a3,a3,0x20
    800033cc:	00dd86b3          	add	a3,s11,a3
    800033d0:	0006c683          	lbu	a3,0(a3)
    800033d4:	02e557bb          	divuw	a5,a0,a4
    800033d8:	f8d40023          	sb	a3,-128(s0)
    800033dc:	10b65e63          	bge	a2,a1,800034f8 <__printf+0x670>
    800033e0:	06300593          	li	a1,99
    800033e4:	02e7f6bb          	remuw	a3,a5,a4
    800033e8:	02069693          	slli	a3,a3,0x20
    800033ec:	0206d693          	srli	a3,a3,0x20
    800033f0:	00dd86b3          	add	a3,s11,a3
    800033f4:	0006c683          	lbu	a3,0(a3)
    800033f8:	02e7d73b          	divuw	a4,a5,a4
    800033fc:	00200793          	li	a5,2
    80003400:	f8d400a3          	sb	a3,-127(s0)
    80003404:	bca5ece3          	bltu	a1,a0,80002fdc <__printf+0x154>
    80003408:	ce5ff06f          	j	800030ec <__printf+0x264>
    8000340c:	40e007bb          	negw	a5,a4
    80003410:	00002d97          	auipc	s11,0x2
    80003414:	db8d8d93          	addi	s11,s11,-584 # 800051c8 <digits>
    80003418:	00f7f693          	andi	a3,a5,15
    8000341c:	00dd86b3          	add	a3,s11,a3
    80003420:	0006c583          	lbu	a1,0(a3)
    80003424:	ff100613          	li	a2,-15
    80003428:	0047d69b          	srliw	a3,a5,0x4
    8000342c:	f8b40023          	sb	a1,-128(s0)
    80003430:	0047d59b          	srliw	a1,a5,0x4
    80003434:	0ac75e63          	bge	a4,a2,800034f0 <__printf+0x668>
    80003438:	00f6f693          	andi	a3,a3,15
    8000343c:	00dd86b3          	add	a3,s11,a3
    80003440:	0006c603          	lbu	a2,0(a3)
    80003444:	00f00693          	li	a3,15
    80003448:	0087d79b          	srliw	a5,a5,0x8
    8000344c:	f8c400a3          	sb	a2,-127(s0)
    80003450:	d8b6e4e3          	bltu	a3,a1,800031d8 <__printf+0x350>
    80003454:	00200793          	li	a5,2
    80003458:	e2dff06f          	j	80003284 <__printf+0x3fc>
    8000345c:	00002c97          	auipc	s9,0x2
    80003460:	d4cc8c93          	addi	s9,s9,-692 # 800051a8 <CONSOLE_STATUS+0x198>
    80003464:	02800513          	li	a0,40
    80003468:	ef1ff06f          	j	80003358 <__printf+0x4d0>
    8000346c:	00700793          	li	a5,7
    80003470:	00600c93          	li	s9,6
    80003474:	e0dff06f          	j	80003280 <__printf+0x3f8>
    80003478:	00700793          	li	a5,7
    8000347c:	00600c93          	li	s9,6
    80003480:	c69ff06f          	j	800030e8 <__printf+0x260>
    80003484:	00300793          	li	a5,3
    80003488:	00200c93          	li	s9,2
    8000348c:	c5dff06f          	j	800030e8 <__printf+0x260>
    80003490:	00300793          	li	a5,3
    80003494:	00200c93          	li	s9,2
    80003498:	de9ff06f          	j	80003280 <__printf+0x3f8>
    8000349c:	00400793          	li	a5,4
    800034a0:	00300c93          	li	s9,3
    800034a4:	dddff06f          	j	80003280 <__printf+0x3f8>
    800034a8:	00400793          	li	a5,4
    800034ac:	00300c93          	li	s9,3
    800034b0:	c39ff06f          	j	800030e8 <__printf+0x260>
    800034b4:	00500793          	li	a5,5
    800034b8:	00400c93          	li	s9,4
    800034bc:	c2dff06f          	j	800030e8 <__printf+0x260>
    800034c0:	00500793          	li	a5,5
    800034c4:	00400c93          	li	s9,4
    800034c8:	db9ff06f          	j	80003280 <__printf+0x3f8>
    800034cc:	00600793          	li	a5,6
    800034d0:	00500c93          	li	s9,5
    800034d4:	dadff06f          	j	80003280 <__printf+0x3f8>
    800034d8:	00600793          	li	a5,6
    800034dc:	00500c93          	li	s9,5
    800034e0:	c09ff06f          	j	800030e8 <__printf+0x260>
    800034e4:	00800793          	li	a5,8
    800034e8:	00700c93          	li	s9,7
    800034ec:	bfdff06f          	j	800030e8 <__printf+0x260>
    800034f0:	00100793          	li	a5,1
    800034f4:	d91ff06f          	j	80003284 <__printf+0x3fc>
    800034f8:	00100793          	li	a5,1
    800034fc:	bf1ff06f          	j	800030ec <__printf+0x264>
    80003500:	00900793          	li	a5,9
    80003504:	00800c93          	li	s9,8
    80003508:	be1ff06f          	j	800030e8 <__printf+0x260>
    8000350c:	00002517          	auipc	a0,0x2
    80003510:	ca450513          	addi	a0,a0,-860 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80003514:	00000097          	auipc	ra,0x0
    80003518:	918080e7          	jalr	-1768(ra) # 80002e2c <panic>

000000008000351c <printfinit>:
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00813823          	sd	s0,16(sp)
    80003524:	00913423          	sd	s1,8(sp)
    80003528:	00113c23          	sd	ra,24(sp)
    8000352c:	02010413          	addi	s0,sp,32
    80003530:	00003497          	auipc	s1,0x3
    80003534:	4c048493          	addi	s1,s1,1216 # 800069f0 <pr>
    80003538:	00048513          	mv	a0,s1
    8000353c:	00002597          	auipc	a1,0x2
    80003540:	c8458593          	addi	a1,a1,-892 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80003544:	00000097          	auipc	ra,0x0
    80003548:	5f4080e7          	jalr	1524(ra) # 80003b38 <initlock>
    8000354c:	01813083          	ld	ra,24(sp)
    80003550:	01013403          	ld	s0,16(sp)
    80003554:	0004ac23          	sw	zero,24(s1)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret

0000000080003564 <uartinit>:
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813423          	sd	s0,8(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	100007b7          	lui	a5,0x10000
    80003574:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003578:	f8000713          	li	a4,-128
    8000357c:	00e781a3          	sb	a4,3(a5)
    80003580:	00300713          	li	a4,3
    80003584:	00e78023          	sb	a4,0(a5)
    80003588:	000780a3          	sb	zero,1(a5)
    8000358c:	00e781a3          	sb	a4,3(a5)
    80003590:	00700693          	li	a3,7
    80003594:	00d78123          	sb	a3,2(a5)
    80003598:	00e780a3          	sb	a4,1(a5)
    8000359c:	00813403          	ld	s0,8(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <uartputc>:
    800035a8:	00002797          	auipc	a5,0x2
    800035ac:	1d07a783          	lw	a5,464(a5) # 80005778 <panicked>
    800035b0:	00078463          	beqz	a5,800035b8 <uartputc+0x10>
    800035b4:	0000006f          	j	800035b4 <uartputc+0xc>
    800035b8:	fd010113          	addi	sp,sp,-48
    800035bc:	02813023          	sd	s0,32(sp)
    800035c0:	00913c23          	sd	s1,24(sp)
    800035c4:	01213823          	sd	s2,16(sp)
    800035c8:	01313423          	sd	s3,8(sp)
    800035cc:	02113423          	sd	ra,40(sp)
    800035d0:	03010413          	addi	s0,sp,48
    800035d4:	00002917          	auipc	s2,0x2
    800035d8:	1ac90913          	addi	s2,s2,428 # 80005780 <uart_tx_r>
    800035dc:	00093783          	ld	a5,0(s2)
    800035e0:	00002497          	auipc	s1,0x2
    800035e4:	1a848493          	addi	s1,s1,424 # 80005788 <uart_tx_w>
    800035e8:	0004b703          	ld	a4,0(s1)
    800035ec:	02078693          	addi	a3,a5,32
    800035f0:	00050993          	mv	s3,a0
    800035f4:	02e69c63          	bne	a3,a4,8000362c <uartputc+0x84>
    800035f8:	00001097          	auipc	ra,0x1
    800035fc:	834080e7          	jalr	-1996(ra) # 80003e2c <push_on>
    80003600:	00093783          	ld	a5,0(s2)
    80003604:	0004b703          	ld	a4,0(s1)
    80003608:	02078793          	addi	a5,a5,32
    8000360c:	00e79463          	bne	a5,a4,80003614 <uartputc+0x6c>
    80003610:	0000006f          	j	80003610 <uartputc+0x68>
    80003614:	00001097          	auipc	ra,0x1
    80003618:	88c080e7          	jalr	-1908(ra) # 80003ea0 <pop_on>
    8000361c:	00093783          	ld	a5,0(s2)
    80003620:	0004b703          	ld	a4,0(s1)
    80003624:	02078693          	addi	a3,a5,32
    80003628:	fce688e3          	beq	a3,a4,800035f8 <uartputc+0x50>
    8000362c:	01f77693          	andi	a3,a4,31
    80003630:	00003597          	auipc	a1,0x3
    80003634:	3e058593          	addi	a1,a1,992 # 80006a10 <uart_tx_buf>
    80003638:	00d586b3          	add	a3,a1,a3
    8000363c:	00170713          	addi	a4,a4,1
    80003640:	01368023          	sb	s3,0(a3)
    80003644:	00e4b023          	sd	a4,0(s1)
    80003648:	10000637          	lui	a2,0x10000
    8000364c:	02f71063          	bne	a4,a5,8000366c <uartputc+0xc4>
    80003650:	0340006f          	j	80003684 <uartputc+0xdc>
    80003654:	00074703          	lbu	a4,0(a4)
    80003658:	00f93023          	sd	a5,0(s2)
    8000365c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003660:	00093783          	ld	a5,0(s2)
    80003664:	0004b703          	ld	a4,0(s1)
    80003668:	00f70e63          	beq	a4,a5,80003684 <uartputc+0xdc>
    8000366c:	00564683          	lbu	a3,5(a2)
    80003670:	01f7f713          	andi	a4,a5,31
    80003674:	00e58733          	add	a4,a1,a4
    80003678:	0206f693          	andi	a3,a3,32
    8000367c:	00178793          	addi	a5,a5,1
    80003680:	fc069ae3          	bnez	a3,80003654 <uartputc+0xac>
    80003684:	02813083          	ld	ra,40(sp)
    80003688:	02013403          	ld	s0,32(sp)
    8000368c:	01813483          	ld	s1,24(sp)
    80003690:	01013903          	ld	s2,16(sp)
    80003694:	00813983          	ld	s3,8(sp)
    80003698:	03010113          	addi	sp,sp,48
    8000369c:	00008067          	ret

00000000800036a0 <uartputc_sync>:
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00813423          	sd	s0,8(sp)
    800036a8:	01010413          	addi	s0,sp,16
    800036ac:	00002717          	auipc	a4,0x2
    800036b0:	0cc72703          	lw	a4,204(a4) # 80005778 <panicked>
    800036b4:	02071663          	bnez	a4,800036e0 <uartputc_sync+0x40>
    800036b8:	00050793          	mv	a5,a0
    800036bc:	100006b7          	lui	a3,0x10000
    800036c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800036c4:	02077713          	andi	a4,a4,32
    800036c8:	fe070ce3          	beqz	a4,800036c0 <uartputc_sync+0x20>
    800036cc:	0ff7f793          	andi	a5,a5,255
    800036d0:	00f68023          	sb	a5,0(a3)
    800036d4:	00813403          	ld	s0,8(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret
    800036e0:	0000006f          	j	800036e0 <uartputc_sync+0x40>

00000000800036e4 <uartstart>:
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00813423          	sd	s0,8(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	00002617          	auipc	a2,0x2
    800036f4:	09060613          	addi	a2,a2,144 # 80005780 <uart_tx_r>
    800036f8:	00002517          	auipc	a0,0x2
    800036fc:	09050513          	addi	a0,a0,144 # 80005788 <uart_tx_w>
    80003700:	00063783          	ld	a5,0(a2)
    80003704:	00053703          	ld	a4,0(a0)
    80003708:	04f70263          	beq	a4,a5,8000374c <uartstart+0x68>
    8000370c:	100005b7          	lui	a1,0x10000
    80003710:	00003817          	auipc	a6,0x3
    80003714:	30080813          	addi	a6,a6,768 # 80006a10 <uart_tx_buf>
    80003718:	01c0006f          	j	80003734 <uartstart+0x50>
    8000371c:	0006c703          	lbu	a4,0(a3)
    80003720:	00f63023          	sd	a5,0(a2)
    80003724:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003728:	00063783          	ld	a5,0(a2)
    8000372c:	00053703          	ld	a4,0(a0)
    80003730:	00f70e63          	beq	a4,a5,8000374c <uartstart+0x68>
    80003734:	01f7f713          	andi	a4,a5,31
    80003738:	00e806b3          	add	a3,a6,a4
    8000373c:	0055c703          	lbu	a4,5(a1)
    80003740:	00178793          	addi	a5,a5,1
    80003744:	02077713          	andi	a4,a4,32
    80003748:	fc071ae3          	bnez	a4,8000371c <uartstart+0x38>
    8000374c:	00813403          	ld	s0,8(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret

0000000080003758 <uartgetc>:
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00813423          	sd	s0,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	10000737          	lui	a4,0x10000
    80003768:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000376c:	0017f793          	andi	a5,a5,1
    80003770:	00078c63          	beqz	a5,80003788 <uartgetc+0x30>
    80003774:	00074503          	lbu	a0,0(a4)
    80003778:	0ff57513          	andi	a0,a0,255
    8000377c:	00813403          	ld	s0,8(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret
    80003788:	fff00513          	li	a0,-1
    8000378c:	ff1ff06f          	j	8000377c <uartgetc+0x24>

0000000080003790 <uartintr>:
    80003790:	100007b7          	lui	a5,0x10000
    80003794:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003798:	0017f793          	andi	a5,a5,1
    8000379c:	0a078463          	beqz	a5,80003844 <uartintr+0xb4>
    800037a0:	fe010113          	addi	sp,sp,-32
    800037a4:	00813823          	sd	s0,16(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	02010413          	addi	s0,sp,32
    800037b4:	100004b7          	lui	s1,0x10000
    800037b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800037bc:	0ff57513          	andi	a0,a0,255
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	534080e7          	jalr	1332(ra) # 80002cf4 <consoleintr>
    800037c8:	0054c783          	lbu	a5,5(s1)
    800037cc:	0017f793          	andi	a5,a5,1
    800037d0:	fe0794e3          	bnez	a5,800037b8 <uartintr+0x28>
    800037d4:	00002617          	auipc	a2,0x2
    800037d8:	fac60613          	addi	a2,a2,-84 # 80005780 <uart_tx_r>
    800037dc:	00002517          	auipc	a0,0x2
    800037e0:	fac50513          	addi	a0,a0,-84 # 80005788 <uart_tx_w>
    800037e4:	00063783          	ld	a5,0(a2)
    800037e8:	00053703          	ld	a4,0(a0)
    800037ec:	04f70263          	beq	a4,a5,80003830 <uartintr+0xa0>
    800037f0:	100005b7          	lui	a1,0x10000
    800037f4:	00003817          	auipc	a6,0x3
    800037f8:	21c80813          	addi	a6,a6,540 # 80006a10 <uart_tx_buf>
    800037fc:	01c0006f          	j	80003818 <uartintr+0x88>
    80003800:	0006c703          	lbu	a4,0(a3)
    80003804:	00f63023          	sd	a5,0(a2)
    80003808:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000380c:	00063783          	ld	a5,0(a2)
    80003810:	00053703          	ld	a4,0(a0)
    80003814:	00f70e63          	beq	a4,a5,80003830 <uartintr+0xa0>
    80003818:	01f7f713          	andi	a4,a5,31
    8000381c:	00e806b3          	add	a3,a6,a4
    80003820:	0055c703          	lbu	a4,5(a1)
    80003824:	00178793          	addi	a5,a5,1
    80003828:	02077713          	andi	a4,a4,32
    8000382c:	fc071ae3          	bnez	a4,80003800 <uartintr+0x70>
    80003830:	01813083          	ld	ra,24(sp)
    80003834:	01013403          	ld	s0,16(sp)
    80003838:	00813483          	ld	s1,8(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret
    80003844:	00002617          	auipc	a2,0x2
    80003848:	f3c60613          	addi	a2,a2,-196 # 80005780 <uart_tx_r>
    8000384c:	00002517          	auipc	a0,0x2
    80003850:	f3c50513          	addi	a0,a0,-196 # 80005788 <uart_tx_w>
    80003854:	00063783          	ld	a5,0(a2)
    80003858:	00053703          	ld	a4,0(a0)
    8000385c:	04f70263          	beq	a4,a5,800038a0 <uartintr+0x110>
    80003860:	100005b7          	lui	a1,0x10000
    80003864:	00003817          	auipc	a6,0x3
    80003868:	1ac80813          	addi	a6,a6,428 # 80006a10 <uart_tx_buf>
    8000386c:	01c0006f          	j	80003888 <uartintr+0xf8>
    80003870:	0006c703          	lbu	a4,0(a3)
    80003874:	00f63023          	sd	a5,0(a2)
    80003878:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000387c:	00063783          	ld	a5,0(a2)
    80003880:	00053703          	ld	a4,0(a0)
    80003884:	02f70063          	beq	a4,a5,800038a4 <uartintr+0x114>
    80003888:	01f7f713          	andi	a4,a5,31
    8000388c:	00e806b3          	add	a3,a6,a4
    80003890:	0055c703          	lbu	a4,5(a1)
    80003894:	00178793          	addi	a5,a5,1
    80003898:	02077713          	andi	a4,a4,32
    8000389c:	fc071ae3          	bnez	a4,80003870 <uartintr+0xe0>
    800038a0:	00008067          	ret
    800038a4:	00008067          	ret

00000000800038a8 <kinit>:
    800038a8:	fc010113          	addi	sp,sp,-64
    800038ac:	02913423          	sd	s1,40(sp)
    800038b0:	fffff7b7          	lui	a5,0xfffff
    800038b4:	00004497          	auipc	s1,0x4
    800038b8:	17b48493          	addi	s1,s1,379 # 80007a2f <end+0xfff>
    800038bc:	02813823          	sd	s0,48(sp)
    800038c0:	01313c23          	sd	s3,24(sp)
    800038c4:	00f4f4b3          	and	s1,s1,a5
    800038c8:	02113c23          	sd	ra,56(sp)
    800038cc:	03213023          	sd	s2,32(sp)
    800038d0:	01413823          	sd	s4,16(sp)
    800038d4:	01513423          	sd	s5,8(sp)
    800038d8:	04010413          	addi	s0,sp,64
    800038dc:	000017b7          	lui	a5,0x1
    800038e0:	01100993          	li	s3,17
    800038e4:	00f487b3          	add	a5,s1,a5
    800038e8:	01b99993          	slli	s3,s3,0x1b
    800038ec:	06f9e063          	bltu	s3,a5,8000394c <kinit+0xa4>
    800038f0:	00003a97          	auipc	s5,0x3
    800038f4:	140a8a93          	addi	s5,s5,320 # 80006a30 <end>
    800038f8:	0754ec63          	bltu	s1,s5,80003970 <kinit+0xc8>
    800038fc:	0734fa63          	bgeu	s1,s3,80003970 <kinit+0xc8>
    80003900:	00088a37          	lui	s4,0x88
    80003904:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003908:	00002917          	auipc	s2,0x2
    8000390c:	e8890913          	addi	s2,s2,-376 # 80005790 <kmem>
    80003910:	00ca1a13          	slli	s4,s4,0xc
    80003914:	0140006f          	j	80003928 <kinit+0x80>
    80003918:	000017b7          	lui	a5,0x1
    8000391c:	00f484b3          	add	s1,s1,a5
    80003920:	0554e863          	bltu	s1,s5,80003970 <kinit+0xc8>
    80003924:	0534f663          	bgeu	s1,s3,80003970 <kinit+0xc8>
    80003928:	00001637          	lui	a2,0x1
    8000392c:	00100593          	li	a1,1
    80003930:	00048513          	mv	a0,s1
    80003934:	00000097          	auipc	ra,0x0
    80003938:	5e4080e7          	jalr	1508(ra) # 80003f18 <__memset>
    8000393c:	00093783          	ld	a5,0(s2)
    80003940:	00f4b023          	sd	a5,0(s1)
    80003944:	00993023          	sd	s1,0(s2)
    80003948:	fd4498e3          	bne	s1,s4,80003918 <kinit+0x70>
    8000394c:	03813083          	ld	ra,56(sp)
    80003950:	03013403          	ld	s0,48(sp)
    80003954:	02813483          	ld	s1,40(sp)
    80003958:	02013903          	ld	s2,32(sp)
    8000395c:	01813983          	ld	s3,24(sp)
    80003960:	01013a03          	ld	s4,16(sp)
    80003964:	00813a83          	ld	s5,8(sp)
    80003968:	04010113          	addi	sp,sp,64
    8000396c:	00008067          	ret
    80003970:	00002517          	auipc	a0,0x2
    80003974:	87050513          	addi	a0,a0,-1936 # 800051e0 <digits+0x18>
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	4b4080e7          	jalr	1204(ra) # 80002e2c <panic>

0000000080003980 <freerange>:
    80003980:	fc010113          	addi	sp,sp,-64
    80003984:	000017b7          	lui	a5,0x1
    80003988:	02913423          	sd	s1,40(sp)
    8000398c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003990:	009504b3          	add	s1,a0,s1
    80003994:	fffff537          	lui	a0,0xfffff
    80003998:	02813823          	sd	s0,48(sp)
    8000399c:	02113c23          	sd	ra,56(sp)
    800039a0:	03213023          	sd	s2,32(sp)
    800039a4:	01313c23          	sd	s3,24(sp)
    800039a8:	01413823          	sd	s4,16(sp)
    800039ac:	01513423          	sd	s5,8(sp)
    800039b0:	01613023          	sd	s6,0(sp)
    800039b4:	04010413          	addi	s0,sp,64
    800039b8:	00a4f4b3          	and	s1,s1,a0
    800039bc:	00f487b3          	add	a5,s1,a5
    800039c0:	06f5e463          	bltu	a1,a5,80003a28 <freerange+0xa8>
    800039c4:	00003a97          	auipc	s5,0x3
    800039c8:	06ca8a93          	addi	s5,s5,108 # 80006a30 <end>
    800039cc:	0954e263          	bltu	s1,s5,80003a50 <freerange+0xd0>
    800039d0:	01100993          	li	s3,17
    800039d4:	01b99993          	slli	s3,s3,0x1b
    800039d8:	0734fc63          	bgeu	s1,s3,80003a50 <freerange+0xd0>
    800039dc:	00058a13          	mv	s4,a1
    800039e0:	00002917          	auipc	s2,0x2
    800039e4:	db090913          	addi	s2,s2,-592 # 80005790 <kmem>
    800039e8:	00002b37          	lui	s6,0x2
    800039ec:	0140006f          	j	80003a00 <freerange+0x80>
    800039f0:	000017b7          	lui	a5,0x1
    800039f4:	00f484b3          	add	s1,s1,a5
    800039f8:	0554ec63          	bltu	s1,s5,80003a50 <freerange+0xd0>
    800039fc:	0534fa63          	bgeu	s1,s3,80003a50 <freerange+0xd0>
    80003a00:	00001637          	lui	a2,0x1
    80003a04:	00100593          	li	a1,1
    80003a08:	00048513          	mv	a0,s1
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	50c080e7          	jalr	1292(ra) # 80003f18 <__memset>
    80003a14:	00093703          	ld	a4,0(s2)
    80003a18:	016487b3          	add	a5,s1,s6
    80003a1c:	00e4b023          	sd	a4,0(s1)
    80003a20:	00993023          	sd	s1,0(s2)
    80003a24:	fcfa76e3          	bgeu	s4,a5,800039f0 <freerange+0x70>
    80003a28:	03813083          	ld	ra,56(sp)
    80003a2c:	03013403          	ld	s0,48(sp)
    80003a30:	02813483          	ld	s1,40(sp)
    80003a34:	02013903          	ld	s2,32(sp)
    80003a38:	01813983          	ld	s3,24(sp)
    80003a3c:	01013a03          	ld	s4,16(sp)
    80003a40:	00813a83          	ld	s5,8(sp)
    80003a44:	00013b03          	ld	s6,0(sp)
    80003a48:	04010113          	addi	sp,sp,64
    80003a4c:	00008067          	ret
    80003a50:	00001517          	auipc	a0,0x1
    80003a54:	79050513          	addi	a0,a0,1936 # 800051e0 <digits+0x18>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	3d4080e7          	jalr	980(ra) # 80002e2c <panic>

0000000080003a60 <kfree>:
    80003a60:	fe010113          	addi	sp,sp,-32
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00113c23          	sd	ra,24(sp)
    80003a6c:	00913423          	sd	s1,8(sp)
    80003a70:	02010413          	addi	s0,sp,32
    80003a74:	03451793          	slli	a5,a0,0x34
    80003a78:	04079c63          	bnez	a5,80003ad0 <kfree+0x70>
    80003a7c:	00003797          	auipc	a5,0x3
    80003a80:	fb478793          	addi	a5,a5,-76 # 80006a30 <end>
    80003a84:	00050493          	mv	s1,a0
    80003a88:	04f56463          	bltu	a0,a5,80003ad0 <kfree+0x70>
    80003a8c:	01100793          	li	a5,17
    80003a90:	01b79793          	slli	a5,a5,0x1b
    80003a94:	02f57e63          	bgeu	a0,a5,80003ad0 <kfree+0x70>
    80003a98:	00001637          	lui	a2,0x1
    80003a9c:	00100593          	li	a1,1
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	478080e7          	jalr	1144(ra) # 80003f18 <__memset>
    80003aa8:	00002797          	auipc	a5,0x2
    80003aac:	ce878793          	addi	a5,a5,-792 # 80005790 <kmem>
    80003ab0:	0007b703          	ld	a4,0(a5)
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00e4b023          	sd	a4,0(s1)
    80003ac0:	0097b023          	sd	s1,0(a5)
    80003ac4:	00813483          	ld	s1,8(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret
    80003ad0:	00001517          	auipc	a0,0x1
    80003ad4:	71050513          	addi	a0,a0,1808 # 800051e0 <digits+0x18>
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	354080e7          	jalr	852(ra) # 80002e2c <panic>

0000000080003ae0 <kalloc>:
    80003ae0:	fe010113          	addi	sp,sp,-32
    80003ae4:	00813823          	sd	s0,16(sp)
    80003ae8:	00913423          	sd	s1,8(sp)
    80003aec:	00113c23          	sd	ra,24(sp)
    80003af0:	02010413          	addi	s0,sp,32
    80003af4:	00002797          	auipc	a5,0x2
    80003af8:	c9c78793          	addi	a5,a5,-868 # 80005790 <kmem>
    80003afc:	0007b483          	ld	s1,0(a5)
    80003b00:	02048063          	beqz	s1,80003b20 <kalloc+0x40>
    80003b04:	0004b703          	ld	a4,0(s1)
    80003b08:	00001637          	lui	a2,0x1
    80003b0c:	00500593          	li	a1,5
    80003b10:	00048513          	mv	a0,s1
    80003b14:	00e7b023          	sd	a4,0(a5)
    80003b18:	00000097          	auipc	ra,0x0
    80003b1c:	400080e7          	jalr	1024(ra) # 80003f18 <__memset>
    80003b20:	01813083          	ld	ra,24(sp)
    80003b24:	01013403          	ld	s0,16(sp)
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	00813483          	ld	s1,8(sp)
    80003b30:	02010113          	addi	sp,sp,32
    80003b34:	00008067          	ret

0000000080003b38 <initlock>:
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00813423          	sd	s0,8(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00813403          	ld	s0,8(sp)
    80003b48:	00b53423          	sd	a1,8(a0)
    80003b4c:	00052023          	sw	zero,0(a0)
    80003b50:	00053823          	sd	zero,16(a0)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <acquire>:
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00913423          	sd	s1,8(sp)
    80003b68:	00113c23          	sd	ra,24(sp)
    80003b6c:	01213023          	sd	s2,0(sp)
    80003b70:	02010413          	addi	s0,sp,32
    80003b74:	00050493          	mv	s1,a0
    80003b78:	10002973          	csrr	s2,sstatus
    80003b7c:	100027f3          	csrr	a5,sstatus
    80003b80:	ffd7f793          	andi	a5,a5,-3
    80003b84:	10079073          	csrw	sstatus,a5
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	8e8080e7          	jalr	-1816(ra) # 80002470 <mycpu>
    80003b90:	07852783          	lw	a5,120(a0)
    80003b94:	06078e63          	beqz	a5,80003c10 <acquire+0xb4>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	8d8080e7          	jalr	-1832(ra) # 80002470 <mycpu>
    80003ba0:	07852783          	lw	a5,120(a0)
    80003ba4:	0004a703          	lw	a4,0(s1)
    80003ba8:	0017879b          	addiw	a5,a5,1
    80003bac:	06f52c23          	sw	a5,120(a0)
    80003bb0:	04071063          	bnez	a4,80003bf0 <acquire+0x94>
    80003bb4:	00100713          	li	a4,1
    80003bb8:	00070793          	mv	a5,a4
    80003bbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003bc0:	0007879b          	sext.w	a5,a5
    80003bc4:	fe079ae3          	bnez	a5,80003bb8 <acquire+0x5c>
    80003bc8:	0ff0000f          	fence
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	8a4080e7          	jalr	-1884(ra) # 80002470 <mycpu>
    80003bd4:	01813083          	ld	ra,24(sp)
    80003bd8:	01013403          	ld	s0,16(sp)
    80003bdc:	00a4b823          	sd	a0,16(s1)
    80003be0:	00013903          	ld	s2,0(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	02010113          	addi	sp,sp,32
    80003bec:	00008067          	ret
    80003bf0:	0104b903          	ld	s2,16(s1)
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	87c080e7          	jalr	-1924(ra) # 80002470 <mycpu>
    80003bfc:	faa91ce3          	bne	s2,a0,80003bb4 <acquire+0x58>
    80003c00:	00001517          	auipc	a0,0x1
    80003c04:	5e850513          	addi	a0,a0,1512 # 800051e8 <digits+0x20>
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	224080e7          	jalr	548(ra) # 80002e2c <panic>
    80003c10:	00195913          	srli	s2,s2,0x1
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	85c080e7          	jalr	-1956(ra) # 80002470 <mycpu>
    80003c1c:	00197913          	andi	s2,s2,1
    80003c20:	07252e23          	sw	s2,124(a0)
    80003c24:	f75ff06f          	j	80003b98 <acquire+0x3c>

0000000080003c28 <release>:
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00813823          	sd	s0,16(sp)
    80003c30:	00113c23          	sd	ra,24(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	01213023          	sd	s2,0(sp)
    80003c3c:	02010413          	addi	s0,sp,32
    80003c40:	00052783          	lw	a5,0(a0)
    80003c44:	00079a63          	bnez	a5,80003c58 <release+0x30>
    80003c48:	00001517          	auipc	a0,0x1
    80003c4c:	5a850513          	addi	a0,a0,1448 # 800051f0 <digits+0x28>
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	1dc080e7          	jalr	476(ra) # 80002e2c <panic>
    80003c58:	01053903          	ld	s2,16(a0)
    80003c5c:	00050493          	mv	s1,a0
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	810080e7          	jalr	-2032(ra) # 80002470 <mycpu>
    80003c68:	fea910e3          	bne	s2,a0,80003c48 <release+0x20>
    80003c6c:	0004b823          	sd	zero,16(s1)
    80003c70:	0ff0000f          	fence
    80003c74:	0f50000f          	fence	iorw,ow
    80003c78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	7f4080e7          	jalr	2036(ra) # 80002470 <mycpu>
    80003c84:	100027f3          	csrr	a5,sstatus
    80003c88:	0027f793          	andi	a5,a5,2
    80003c8c:	04079a63          	bnez	a5,80003ce0 <release+0xb8>
    80003c90:	07852783          	lw	a5,120(a0)
    80003c94:	02f05e63          	blez	a5,80003cd0 <release+0xa8>
    80003c98:	fff7871b          	addiw	a4,a5,-1
    80003c9c:	06e52c23          	sw	a4,120(a0)
    80003ca0:	00071c63          	bnez	a4,80003cb8 <release+0x90>
    80003ca4:	07c52783          	lw	a5,124(a0)
    80003ca8:	00078863          	beqz	a5,80003cb8 <release+0x90>
    80003cac:	100027f3          	csrr	a5,sstatus
    80003cb0:	0027e793          	ori	a5,a5,2
    80003cb4:	10079073          	csrw	sstatus,a5
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	00013903          	ld	s2,0(sp)
    80003cc8:	02010113          	addi	sp,sp,32
    80003ccc:	00008067          	ret
    80003cd0:	00001517          	auipc	a0,0x1
    80003cd4:	54050513          	addi	a0,a0,1344 # 80005210 <digits+0x48>
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	154080e7          	jalr	340(ra) # 80002e2c <panic>
    80003ce0:	00001517          	auipc	a0,0x1
    80003ce4:	51850513          	addi	a0,a0,1304 # 800051f8 <digits+0x30>
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	144080e7          	jalr	324(ra) # 80002e2c <panic>

0000000080003cf0 <holding>:
    80003cf0:	00052783          	lw	a5,0(a0)
    80003cf4:	00079663          	bnez	a5,80003d00 <holding+0x10>
    80003cf8:	00000513          	li	a0,0
    80003cfc:	00008067          	ret
    80003d00:	fe010113          	addi	sp,sp,-32
    80003d04:	00813823          	sd	s0,16(sp)
    80003d08:	00913423          	sd	s1,8(sp)
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	02010413          	addi	s0,sp,32
    80003d14:	01053483          	ld	s1,16(a0)
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	758080e7          	jalr	1880(ra) # 80002470 <mycpu>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	40a48533          	sub	a0,s1,a0
    80003d2c:	00153513          	seqz	a0,a0
    80003d30:	00813483          	ld	s1,8(sp)
    80003d34:	02010113          	addi	sp,sp,32
    80003d38:	00008067          	ret

0000000080003d3c <push_off>:
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00813823          	sd	s0,16(sp)
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	02010413          	addi	s0,sp,32
    80003d50:	100024f3          	csrr	s1,sstatus
    80003d54:	100027f3          	csrr	a5,sstatus
    80003d58:	ffd7f793          	andi	a5,a5,-3
    80003d5c:	10079073          	csrw	sstatus,a5
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	710080e7          	jalr	1808(ra) # 80002470 <mycpu>
    80003d68:	07852783          	lw	a5,120(a0)
    80003d6c:	02078663          	beqz	a5,80003d98 <push_off+0x5c>
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	700080e7          	jalr	1792(ra) # 80002470 <mycpu>
    80003d78:	07852783          	lw	a5,120(a0)
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	0017879b          	addiw	a5,a5,1
    80003d88:	06f52c23          	sw	a5,120(a0)
    80003d8c:	00813483          	ld	s1,8(sp)
    80003d90:	02010113          	addi	sp,sp,32
    80003d94:	00008067          	ret
    80003d98:	0014d493          	srli	s1,s1,0x1
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	6d4080e7          	jalr	1748(ra) # 80002470 <mycpu>
    80003da4:	0014f493          	andi	s1,s1,1
    80003da8:	06952e23          	sw	s1,124(a0)
    80003dac:	fc5ff06f          	j	80003d70 <push_off+0x34>

0000000080003db0 <pop_off>:
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00813023          	sd	s0,0(sp)
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	6b0080e7          	jalr	1712(ra) # 80002470 <mycpu>
    80003dc8:	100027f3          	csrr	a5,sstatus
    80003dcc:	0027f793          	andi	a5,a5,2
    80003dd0:	04079663          	bnez	a5,80003e1c <pop_off+0x6c>
    80003dd4:	07852783          	lw	a5,120(a0)
    80003dd8:	02f05a63          	blez	a5,80003e0c <pop_off+0x5c>
    80003ddc:	fff7871b          	addiw	a4,a5,-1
    80003de0:	06e52c23          	sw	a4,120(a0)
    80003de4:	00071c63          	bnez	a4,80003dfc <pop_off+0x4c>
    80003de8:	07c52783          	lw	a5,124(a0)
    80003dec:	00078863          	beqz	a5,80003dfc <pop_off+0x4c>
    80003df0:	100027f3          	csrr	a5,sstatus
    80003df4:	0027e793          	ori	a5,a5,2
    80003df8:	10079073          	csrw	sstatus,a5
    80003dfc:	00813083          	ld	ra,8(sp)
    80003e00:	00013403          	ld	s0,0(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret
    80003e0c:	00001517          	auipc	a0,0x1
    80003e10:	40450513          	addi	a0,a0,1028 # 80005210 <digits+0x48>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	018080e7          	jalr	24(ra) # 80002e2c <panic>
    80003e1c:	00001517          	auipc	a0,0x1
    80003e20:	3dc50513          	addi	a0,a0,988 # 800051f8 <digits+0x30>
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	008080e7          	jalr	8(ra) # 80002e2c <panic>

0000000080003e2c <push_on>:
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00113c23          	sd	ra,24(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	02010413          	addi	s0,sp,32
    80003e40:	100024f3          	csrr	s1,sstatus
    80003e44:	100027f3          	csrr	a5,sstatus
    80003e48:	0027e793          	ori	a5,a5,2
    80003e4c:	10079073          	csrw	sstatus,a5
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	620080e7          	jalr	1568(ra) # 80002470 <mycpu>
    80003e58:	07852783          	lw	a5,120(a0)
    80003e5c:	02078663          	beqz	a5,80003e88 <push_on+0x5c>
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	610080e7          	jalr	1552(ra) # 80002470 <mycpu>
    80003e68:	07852783          	lw	a5,120(a0)
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	0017879b          	addiw	a5,a5,1
    80003e78:	06f52c23          	sw	a5,120(a0)
    80003e7c:	00813483          	ld	s1,8(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00008067          	ret
    80003e88:	0014d493          	srli	s1,s1,0x1
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	5e4080e7          	jalr	1508(ra) # 80002470 <mycpu>
    80003e94:	0014f493          	andi	s1,s1,1
    80003e98:	06952e23          	sw	s1,124(a0)
    80003e9c:	fc5ff06f          	j	80003e60 <push_on+0x34>

0000000080003ea0 <pop_on>:
    80003ea0:	ff010113          	addi	sp,sp,-16
    80003ea4:	00813023          	sd	s0,0(sp)
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	01010413          	addi	s0,sp,16
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	5c0080e7          	jalr	1472(ra) # 80002470 <mycpu>
    80003eb8:	100027f3          	csrr	a5,sstatus
    80003ebc:	0027f793          	andi	a5,a5,2
    80003ec0:	04078463          	beqz	a5,80003f08 <pop_on+0x68>
    80003ec4:	07852783          	lw	a5,120(a0)
    80003ec8:	02f05863          	blez	a5,80003ef8 <pop_on+0x58>
    80003ecc:	fff7879b          	addiw	a5,a5,-1
    80003ed0:	06f52c23          	sw	a5,120(a0)
    80003ed4:	07853783          	ld	a5,120(a0)
    80003ed8:	00079863          	bnez	a5,80003ee8 <pop_on+0x48>
    80003edc:	100027f3          	csrr	a5,sstatus
    80003ee0:	ffd7f793          	andi	a5,a5,-3
    80003ee4:	10079073          	csrw	sstatus,a5
    80003ee8:	00813083          	ld	ra,8(sp)
    80003eec:	00013403          	ld	s0,0(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret
    80003ef8:	00001517          	auipc	a0,0x1
    80003efc:	34050513          	addi	a0,a0,832 # 80005238 <digits+0x70>
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	f2c080e7          	jalr	-212(ra) # 80002e2c <panic>
    80003f08:	00001517          	auipc	a0,0x1
    80003f0c:	31050513          	addi	a0,a0,784 # 80005218 <digits+0x50>
    80003f10:	fffff097          	auipc	ra,0xfffff
    80003f14:	f1c080e7          	jalr	-228(ra) # 80002e2c <panic>

0000000080003f18 <__memset>:
    80003f18:	ff010113          	addi	sp,sp,-16
    80003f1c:	00813423          	sd	s0,8(sp)
    80003f20:	01010413          	addi	s0,sp,16
    80003f24:	1a060e63          	beqz	a2,800040e0 <__memset+0x1c8>
    80003f28:	40a007b3          	neg	a5,a0
    80003f2c:	0077f793          	andi	a5,a5,7
    80003f30:	00778693          	addi	a3,a5,7
    80003f34:	00b00813          	li	a6,11
    80003f38:	0ff5f593          	andi	a1,a1,255
    80003f3c:	fff6071b          	addiw	a4,a2,-1
    80003f40:	1b06e663          	bltu	a3,a6,800040ec <__memset+0x1d4>
    80003f44:	1cd76463          	bltu	a4,a3,8000410c <__memset+0x1f4>
    80003f48:	1a078e63          	beqz	a5,80004104 <__memset+0x1ec>
    80003f4c:	00b50023          	sb	a1,0(a0)
    80003f50:	00100713          	li	a4,1
    80003f54:	1ae78463          	beq	a5,a4,800040fc <__memset+0x1e4>
    80003f58:	00b500a3          	sb	a1,1(a0)
    80003f5c:	00200713          	li	a4,2
    80003f60:	1ae78a63          	beq	a5,a4,80004114 <__memset+0x1fc>
    80003f64:	00b50123          	sb	a1,2(a0)
    80003f68:	00300713          	li	a4,3
    80003f6c:	18e78463          	beq	a5,a4,800040f4 <__memset+0x1dc>
    80003f70:	00b501a3          	sb	a1,3(a0)
    80003f74:	00400713          	li	a4,4
    80003f78:	1ae78263          	beq	a5,a4,8000411c <__memset+0x204>
    80003f7c:	00b50223          	sb	a1,4(a0)
    80003f80:	00500713          	li	a4,5
    80003f84:	1ae78063          	beq	a5,a4,80004124 <__memset+0x20c>
    80003f88:	00b502a3          	sb	a1,5(a0)
    80003f8c:	00700713          	li	a4,7
    80003f90:	18e79e63          	bne	a5,a4,8000412c <__memset+0x214>
    80003f94:	00b50323          	sb	a1,6(a0)
    80003f98:	00700e93          	li	t4,7
    80003f9c:	00859713          	slli	a4,a1,0x8
    80003fa0:	00e5e733          	or	a4,a1,a4
    80003fa4:	01059e13          	slli	t3,a1,0x10
    80003fa8:	01c76e33          	or	t3,a4,t3
    80003fac:	01859313          	slli	t1,a1,0x18
    80003fb0:	006e6333          	or	t1,t3,t1
    80003fb4:	02059893          	slli	a7,a1,0x20
    80003fb8:	40f60e3b          	subw	t3,a2,a5
    80003fbc:	011368b3          	or	a7,t1,a7
    80003fc0:	02859813          	slli	a6,a1,0x28
    80003fc4:	0108e833          	or	a6,a7,a6
    80003fc8:	03059693          	slli	a3,a1,0x30
    80003fcc:	003e589b          	srliw	a7,t3,0x3
    80003fd0:	00d866b3          	or	a3,a6,a3
    80003fd4:	03859713          	slli	a4,a1,0x38
    80003fd8:	00389813          	slli	a6,a7,0x3
    80003fdc:	00f507b3          	add	a5,a0,a5
    80003fe0:	00e6e733          	or	a4,a3,a4
    80003fe4:	000e089b          	sext.w	a7,t3
    80003fe8:	00f806b3          	add	a3,a6,a5
    80003fec:	00e7b023          	sd	a4,0(a5)
    80003ff0:	00878793          	addi	a5,a5,8
    80003ff4:	fed79ce3          	bne	a5,a3,80003fec <__memset+0xd4>
    80003ff8:	ff8e7793          	andi	a5,t3,-8
    80003ffc:	0007871b          	sext.w	a4,a5
    80004000:	01d787bb          	addw	a5,a5,t4
    80004004:	0ce88e63          	beq	a7,a4,800040e0 <__memset+0x1c8>
    80004008:	00f50733          	add	a4,a0,a5
    8000400c:	00b70023          	sb	a1,0(a4)
    80004010:	0017871b          	addiw	a4,a5,1
    80004014:	0cc77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004018:	00e50733          	add	a4,a0,a4
    8000401c:	00b70023          	sb	a1,0(a4)
    80004020:	0027871b          	addiw	a4,a5,2
    80004024:	0ac77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00b70023          	sb	a1,0(a4)
    80004030:	0037871b          	addiw	a4,a5,3
    80004034:	0ac77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004038:	00e50733          	add	a4,a0,a4
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	0047871b          	addiw	a4,a5,4
    80004044:	08c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	0057871b          	addiw	a4,a5,5
    80004054:	08c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	0067871b          	addiw	a4,a5,6
    80004064:	06c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004068:	00e50733          	add	a4,a0,a4
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	0077871b          	addiw	a4,a5,7
    80004074:	06c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	0087871b          	addiw	a4,a5,8
    80004084:	04c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004088:	00e50733          	add	a4,a0,a4
    8000408c:	00b70023          	sb	a1,0(a4)
    80004090:	0097871b          	addiw	a4,a5,9
    80004094:	04c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	00a7871b          	addiw	a4,a5,10
    800040a4:	02c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	00b7871b          	addiw	a4,a5,11
    800040b4:	02c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	00c7871b          	addiw	a4,a5,12
    800040c4:	00c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	00d7879b          	addiw	a5,a5,13
    800040d4:	00c7f663          	bgeu	a5,a2,800040e0 <__memset+0x1c8>
    800040d8:	00f507b3          	add	a5,a0,a5
    800040dc:	00b78023          	sb	a1,0(a5)
    800040e0:	00813403          	ld	s0,8(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret
    800040ec:	00b00693          	li	a3,11
    800040f0:	e55ff06f          	j	80003f44 <__memset+0x2c>
    800040f4:	00300e93          	li	t4,3
    800040f8:	ea5ff06f          	j	80003f9c <__memset+0x84>
    800040fc:	00100e93          	li	t4,1
    80004100:	e9dff06f          	j	80003f9c <__memset+0x84>
    80004104:	00000e93          	li	t4,0
    80004108:	e95ff06f          	j	80003f9c <__memset+0x84>
    8000410c:	00000793          	li	a5,0
    80004110:	ef9ff06f          	j	80004008 <__memset+0xf0>
    80004114:	00200e93          	li	t4,2
    80004118:	e85ff06f          	j	80003f9c <__memset+0x84>
    8000411c:	00400e93          	li	t4,4
    80004120:	e7dff06f          	j	80003f9c <__memset+0x84>
    80004124:	00500e93          	li	t4,5
    80004128:	e75ff06f          	j	80003f9c <__memset+0x84>
    8000412c:	00600e93          	li	t4,6
    80004130:	e6dff06f          	j	80003f9c <__memset+0x84>

0000000080004134 <__memmove>:
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00813423          	sd	s0,8(sp)
    8000413c:	01010413          	addi	s0,sp,16
    80004140:	0e060863          	beqz	a2,80004230 <__memmove+0xfc>
    80004144:	fff6069b          	addiw	a3,a2,-1
    80004148:	0006881b          	sext.w	a6,a3
    8000414c:	0ea5e863          	bltu	a1,a0,8000423c <__memmove+0x108>
    80004150:	00758713          	addi	a4,a1,7
    80004154:	00a5e7b3          	or	a5,a1,a0
    80004158:	40a70733          	sub	a4,a4,a0
    8000415c:	0077f793          	andi	a5,a5,7
    80004160:	00f73713          	sltiu	a4,a4,15
    80004164:	00174713          	xori	a4,a4,1
    80004168:	0017b793          	seqz	a5,a5
    8000416c:	00e7f7b3          	and	a5,a5,a4
    80004170:	10078863          	beqz	a5,80004280 <__memmove+0x14c>
    80004174:	00900793          	li	a5,9
    80004178:	1107f463          	bgeu	a5,a6,80004280 <__memmove+0x14c>
    8000417c:	0036581b          	srliw	a6,a2,0x3
    80004180:	fff8081b          	addiw	a6,a6,-1
    80004184:	02081813          	slli	a6,a6,0x20
    80004188:	01d85893          	srli	a7,a6,0x1d
    8000418c:	00858813          	addi	a6,a1,8
    80004190:	00058793          	mv	a5,a1
    80004194:	00050713          	mv	a4,a0
    80004198:	01088833          	add	a6,a7,a6
    8000419c:	0007b883          	ld	a7,0(a5)
    800041a0:	00878793          	addi	a5,a5,8
    800041a4:	00870713          	addi	a4,a4,8
    800041a8:	ff173c23          	sd	a7,-8(a4)
    800041ac:	ff0798e3          	bne	a5,a6,8000419c <__memmove+0x68>
    800041b0:	ff867713          	andi	a4,a2,-8
    800041b4:	02071793          	slli	a5,a4,0x20
    800041b8:	0207d793          	srli	a5,a5,0x20
    800041bc:	00f585b3          	add	a1,a1,a5
    800041c0:	40e686bb          	subw	a3,a3,a4
    800041c4:	00f507b3          	add	a5,a0,a5
    800041c8:	06e60463          	beq	a2,a4,80004230 <__memmove+0xfc>
    800041cc:	0005c703          	lbu	a4,0(a1)
    800041d0:	00e78023          	sb	a4,0(a5)
    800041d4:	04068e63          	beqz	a3,80004230 <__memmove+0xfc>
    800041d8:	0015c603          	lbu	a2,1(a1)
    800041dc:	00100713          	li	a4,1
    800041e0:	00c780a3          	sb	a2,1(a5)
    800041e4:	04e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    800041e8:	0025c603          	lbu	a2,2(a1)
    800041ec:	00200713          	li	a4,2
    800041f0:	00c78123          	sb	a2,2(a5)
    800041f4:	02e68e63          	beq	a3,a4,80004230 <__memmove+0xfc>
    800041f8:	0035c603          	lbu	a2,3(a1)
    800041fc:	00300713          	li	a4,3
    80004200:	00c781a3          	sb	a2,3(a5)
    80004204:	02e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004208:	0045c603          	lbu	a2,4(a1)
    8000420c:	00400713          	li	a4,4
    80004210:	00c78223          	sb	a2,4(a5)
    80004214:	00e68e63          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004218:	0055c603          	lbu	a2,5(a1)
    8000421c:	00500713          	li	a4,5
    80004220:	00c782a3          	sb	a2,5(a5)
    80004224:	00e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004228:	0065c703          	lbu	a4,6(a1)
    8000422c:	00e78323          	sb	a4,6(a5)
    80004230:	00813403          	ld	s0,8(sp)
    80004234:	01010113          	addi	sp,sp,16
    80004238:	00008067          	ret
    8000423c:	02061713          	slli	a4,a2,0x20
    80004240:	02075713          	srli	a4,a4,0x20
    80004244:	00e587b3          	add	a5,a1,a4
    80004248:	f0f574e3          	bgeu	a0,a5,80004150 <__memmove+0x1c>
    8000424c:	02069613          	slli	a2,a3,0x20
    80004250:	02065613          	srli	a2,a2,0x20
    80004254:	fff64613          	not	a2,a2
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00c78633          	add	a2,a5,a2
    80004260:	fff7c683          	lbu	a3,-1(a5)
    80004264:	fff78793          	addi	a5,a5,-1
    80004268:	fff70713          	addi	a4,a4,-1
    8000426c:	00d70023          	sb	a3,0(a4)
    80004270:	fec798e3          	bne	a5,a2,80004260 <__memmove+0x12c>
    80004274:	00813403          	ld	s0,8(sp)
    80004278:	01010113          	addi	sp,sp,16
    8000427c:	00008067          	ret
    80004280:	02069713          	slli	a4,a3,0x20
    80004284:	02075713          	srli	a4,a4,0x20
    80004288:	00170713          	addi	a4,a4,1
    8000428c:	00e50733          	add	a4,a0,a4
    80004290:	00050793          	mv	a5,a0
    80004294:	0005c683          	lbu	a3,0(a1)
    80004298:	00178793          	addi	a5,a5,1
    8000429c:	00158593          	addi	a1,a1,1
    800042a0:	fed78fa3          	sb	a3,-1(a5)
    800042a4:	fee798e3          	bne	a5,a4,80004294 <__memmove+0x160>
    800042a8:	f89ff06f          	j	80004230 <__memmove+0xfc>

00000000800042ac <__putc>:
    800042ac:	fe010113          	addi	sp,sp,-32
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00113c23          	sd	ra,24(sp)
    800042b8:	02010413          	addi	s0,sp,32
    800042bc:	00050793          	mv	a5,a0
    800042c0:	fef40593          	addi	a1,s0,-17
    800042c4:	00100613          	li	a2,1
    800042c8:	00000513          	li	a0,0
    800042cc:	fef407a3          	sb	a5,-17(s0)
    800042d0:	fffff097          	auipc	ra,0xfffff
    800042d4:	b3c080e7          	jalr	-1220(ra) # 80002e0c <console_write>
    800042d8:	01813083          	ld	ra,24(sp)
    800042dc:	01013403          	ld	s0,16(sp)
    800042e0:	02010113          	addi	sp,sp,32
    800042e4:	00008067          	ret

00000000800042e8 <__getc>:
    800042e8:	fe010113          	addi	sp,sp,-32
    800042ec:	00813823          	sd	s0,16(sp)
    800042f0:	00113c23          	sd	ra,24(sp)
    800042f4:	02010413          	addi	s0,sp,32
    800042f8:	fe840593          	addi	a1,s0,-24
    800042fc:	00100613          	li	a2,1
    80004300:	00000513          	li	a0,0
    80004304:	fffff097          	auipc	ra,0xfffff
    80004308:	ae8080e7          	jalr	-1304(ra) # 80002dec <console_read>
    8000430c:	fe844503          	lbu	a0,-24(s0)
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret

0000000080004320 <console_handler>:
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00113c23          	sd	ra,24(sp)
    8000432c:	00913423          	sd	s1,8(sp)
    80004330:	02010413          	addi	s0,sp,32
    80004334:	14202773          	csrr	a4,scause
    80004338:	100027f3          	csrr	a5,sstatus
    8000433c:	0027f793          	andi	a5,a5,2
    80004340:	06079e63          	bnez	a5,800043bc <console_handler+0x9c>
    80004344:	00074c63          	bltz	a4,8000435c <console_handler+0x3c>
    80004348:	01813083          	ld	ra,24(sp)
    8000434c:	01013403          	ld	s0,16(sp)
    80004350:	00813483          	ld	s1,8(sp)
    80004354:	02010113          	addi	sp,sp,32
    80004358:	00008067          	ret
    8000435c:	0ff77713          	andi	a4,a4,255
    80004360:	00900793          	li	a5,9
    80004364:	fef712e3          	bne	a4,a5,80004348 <console_handler+0x28>
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	6dc080e7          	jalr	1756(ra) # 80002a44 <plic_claim>
    80004370:	00a00793          	li	a5,10
    80004374:	00050493          	mv	s1,a0
    80004378:	02f50c63          	beq	a0,a5,800043b0 <console_handler+0x90>
    8000437c:	fc0506e3          	beqz	a0,80004348 <console_handler+0x28>
    80004380:	00050593          	mv	a1,a0
    80004384:	00001517          	auipc	a0,0x1
    80004388:	dbc50513          	addi	a0,a0,-580 # 80005140 <CONSOLE_STATUS+0x130>
    8000438c:	fffff097          	auipc	ra,0xfffff
    80004390:	afc080e7          	jalr	-1284(ra) # 80002e88 <__printf>
    80004394:	01013403          	ld	s0,16(sp)
    80004398:	01813083          	ld	ra,24(sp)
    8000439c:	00048513          	mv	a0,s1
    800043a0:	00813483          	ld	s1,8(sp)
    800043a4:	02010113          	addi	sp,sp,32
    800043a8:	ffffe317          	auipc	t1,0xffffe
    800043ac:	6d430067          	jr	1748(t1) # 80002a7c <plic_complete>
    800043b0:	fffff097          	auipc	ra,0xfffff
    800043b4:	3e0080e7          	jalr	992(ra) # 80003790 <uartintr>
    800043b8:	fddff06f          	j	80004394 <console_handler+0x74>
    800043bc:	00001517          	auipc	a0,0x1
    800043c0:	e8450513          	addi	a0,a0,-380 # 80005240 <digits+0x78>
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	a68080e7          	jalr	-1432(ra) # 80002e2c <panic>
	...
