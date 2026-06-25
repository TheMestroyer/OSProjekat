
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	17013103          	ld	sp,368(sp) # 80007170 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	754030ef          	jal	ra,80003770 <start>

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
    80001248:	0c8020ef          	jal	ra,80003310 <HandleInterupt>

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
}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <sem_open>:

int sem_open(sem_t* handle, unsigned init) {
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    80001420:	00050793          	mv	a5,a0
    80001424:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x21;
    80001428:	02100513          	li	a0,33
    register size_t a1 asm("a1") = (size_t)handle;
    8000142c:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)init;
    80001430:	02061613          	slli	a2,a2,0x20
    80001434:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001438:	00000073          	ecall
    return (int)a0;
}
    8000143c:	0005051b          	sext.w	a0,a0
    80001440:	00813403          	ld	s0,8(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <sem_close>:

int sem_close(sem_t handle) {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16
    80001458:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x22;
    8000145c:	02200513          	li	a0,34
    register size_t a1 asm("a1") = (size_t)handle;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001460:	00000073          	ecall
    return (int)a0;
}
    80001464:	0005051b          	sext.w	a0,a0
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <sem_wait>:

int sem_wait(sem_t id) {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    80001480:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x23;
    80001484:	02300513          	li	a0,35
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001488:	00000073          	ecall
    return (int)a0;
}
    8000148c:	0005051b          	sext.w	a0,a0
    80001490:	00813403          	ld	s0,8(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <sem_signal>:

int sem_signal(sem_t id) {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00813423          	sd	s0,8(sp)
    800014a4:	01010413          	addi	s0,sp,16
    800014a8:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x24;
    800014ac:	02400513          	li	a0,36
    register size_t a1 asm("a1") = (size_t)id;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    800014b0:	00000073          	ecall
    return (int)a0;
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <sem_wait_n>:

int sem_wait_n(sem_t id, unsigned n) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00813423          	sd	s0,8(sp)
    800014cc:	01010413          	addi	s0,sp,16
    800014d0:	00050793          	mv	a5,a0
    800014d4:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x25;
    800014d8:	02500513          	li	a0,37
    register size_t a1 asm("a1") = (size_t)id;
    800014dc:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    800014e0:	02061613          	slli	a2,a2,0x20
    800014e4:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    800014e8:	00000073          	ecall
    return (int)a0;
}
    800014ec:	0005051b          	sext.w	a0,a0
    800014f0:	00813403          	ld	s0,8(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret

00000000800014fc <getc>:

char getc(void) {
    800014fc:	ff010113          	addi	sp,sp,-16
    80001500:	00813423          	sd	s0,8(sp)
    80001504:	01010413          	addi	s0,sp,16
    register size_t a0 asm("a0") = 0x41;
    80001508:	04100513          	li	a0,65
    __asm__ volatile("ecall" : "+r"(a0));
    8000150c:	00000073          	ecall
    return (char)a0;
}
    80001510:	0ff57513          	andi	a0,a0,255
    80001514:	00813403          	ld	s0,8(sp)
    80001518:	01010113          	addi	sp,sp,16
    8000151c:	00008067          	ret

0000000080001520 <putc>:

void putc(char c) {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00813423          	sd	s0,8(sp)
    80001528:	01010413          	addi	s0,sp,16
    8000152c:	00050593          	mv	a1,a0
    register size_t a0 asm("a0") = 0x42;
    80001530:	04200513          	li	a0,66
    register size_t a1 asm("a1") = (size_t)(unsigned char)c;
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1));
    80001534:	00000073          	ecall
}
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <sem_signal_n>:

int sem_signal_n(sem_t id, unsigned n) {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00813423          	sd	s0,8(sp)
    8000154c:	01010413          	addi	s0,sp,16
    80001550:	00050793          	mv	a5,a0
    80001554:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x26;
    80001558:	02600513          	li	a0,38
    register size_t a1 asm("a1") = (size_t)id;
    8000155c:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    80001560:	02061613          	slli	a2,a2,0x20
    80001564:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001568:	00000073          	ecall
    return (int)a0;
    8000156c:	0005051b          	sext.w	a0,a0
    80001570:	00813403          	ld	s0,8(sp)
    80001574:	01010113          	addi	sp,sp,16
    80001578:	00008067          	ret

000000008000157c <echoBody>:
        time_sleep(2);
    }
    sem_signal(done);
}

static void echoBody(void* arg) {
    8000157c:	ff010113          	addi	sp,sp,-16
    80001580:	00113423          	sd	ra,8(sp)
    80001584:	00813023          	sd	s0,0(sp)
    80001588:	01010413          	addi	s0,sp,16
    (void)arg;
    putc('\n'); putc('>');
    8000158c:	00a00513          	li	a0,10
    80001590:	00000097          	auipc	ra,0x0
    80001594:	f90080e7          	jalr	-112(ra) # 80001520 <putc>
    80001598:	03e00513          	li	a0,62
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	f84080e7          	jalr	-124(ra) # 80001520 <putc>
    800015a4:	00c0006f          	j	800015b0 <echoBody+0x34>
    while (1) {
        char c = getc();
        if (c != '\r') putc(c);
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	f78080e7          	jalr	-136(ra) # 80001520 <putc>
        char c = getc();
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	f4c080e7          	jalr	-180(ra) # 800014fc <getc>
        if (c != '\r') putc(c);
    800015b8:	00d00793          	li	a5,13
    800015bc:	fef50ae3          	beq	a0,a5,800015b0 <echoBody+0x34>
    800015c0:	fe9ff06f          	j	800015a8 <echoBody+0x2c>

00000000800015c4 <worker>:
static void worker(void* arg) {
    800015c4:	fd010113          	addi	sp,sp,-48
    800015c8:	02113423          	sd	ra,40(sp)
    800015cc:	02813023          	sd	s0,32(sp)
    800015d0:	00913c23          	sd	s1,24(sp)
    800015d4:	01213823          	sd	s2,16(sp)
    800015d8:	01313423          	sd	s3,8(sp)
    800015dc:	03010413          	addi	s0,sp,48
    char id = (char)(size_t)arg;
    800015e0:	0ff57993          	andi	s3,a0,255
    for (int i = 0; i < 3; i++) {
    800015e4:	00000493          	li	s1,0
    800015e8:	0580006f          	j	80001640 <worker+0x7c>
        sem_wait(mutex);
    800015ec:	00006917          	auipc	s2,0x6
    800015f0:	bbc90913          	addi	s2,s2,-1092 # 800071a8 <mutex>
    800015f4:	00093503          	ld	a0,0(s2)
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	e7c080e7          	jalr	-388(ra) # 80001474 <sem_wait>
        putc('['); putc(id); putc(']');
    80001600:	05b00513          	li	a0,91
    80001604:	00000097          	auipc	ra,0x0
    80001608:	f1c080e7          	jalr	-228(ra) # 80001520 <putc>
    8000160c:	00098513          	mv	a0,s3
    80001610:	00000097          	auipc	ra,0x0
    80001614:	f10080e7          	jalr	-240(ra) # 80001520 <putc>
    80001618:	05d00513          	li	a0,93
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	f04080e7          	jalr	-252(ra) # 80001520 <putc>
        sem_signal(mutex);
    80001624:	00093503          	ld	a0,0(s2)
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	e74080e7          	jalr	-396(ra) # 8000149c <sem_signal>
        time_sleep(2);
    80001630:	00200513          	li	a0,2
    80001634:	00000097          	auipc	ra,0x0
    80001638:	db8080e7          	jalr	-584(ra) # 800013ec <time_sleep>
    for (int i = 0; i < 3; i++) {
    8000163c:	0014849b          	addiw	s1,s1,1
    80001640:	00200793          	li	a5,2
    80001644:	fa97d4e3          	bge	a5,s1,800015ec <worker+0x28>
    sem_signal(done);
    80001648:	00006517          	auipc	a0,0x6
    8000164c:	b5853503          	ld	a0,-1192(a0) # 800071a0 <done>
    80001650:	00000097          	auipc	ra,0x0
    80001654:	e4c080e7          	jalr	-436(ra) # 8000149c <sem_signal>
}
    80001658:	02813083          	ld	ra,40(sp)
    8000165c:	02013403          	ld	s0,32(sp)
    80001660:	01813483          	ld	s1,24(sp)
    80001664:	01013903          	ld	s2,16(sp)
    80001668:	00813983          	ld	s3,8(sp)
    8000166c:	03010113          	addi	sp,sp,48
    80001670:	00008067          	ret

0000000080001674 <userMainC>:
    }
}

void userMainC(void) {
    80001674:	fc010113          	addi	sp,sp,-64
    80001678:	02113c23          	sd	ra,56(sp)
    8000167c:	02813823          	sd	s0,48(sp)
    80001680:	02913423          	sd	s1,40(sp)
    80001684:	04010413          	addi	s0,sp,64
    char* buf = (char*)mem_alloc(4);
    80001688:	00400513          	li	a0,4
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	c44080e7          	jalr	-956(ra) # 800012d0 <mem_alloc>
    80001694:	00050493          	mv	s1,a0
    buf[0] = 'M'; buf[1] = 'E'; buf[2] = 'M'; buf[3] = '\n';
    80001698:	04d00793          	li	a5,77
    8000169c:	00f50023          	sb	a5,0(a0)
    800016a0:	04500713          	li	a4,69
    800016a4:	00e500a3          	sb	a4,1(a0)
    800016a8:	00f50123          	sb	a5,2(a0)
    800016ac:	00a00793          	li	a5,10
    800016b0:	00f501a3          	sb	a5,3(a0)
    putc(buf[0]); putc(buf[1]); putc(buf[2]); putc(buf[3]);
    800016b4:	04d00513          	li	a0,77
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	e68080e7          	jalr	-408(ra) # 80001520 <putc>
    800016c0:	0014c503          	lbu	a0,1(s1)
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	e5c080e7          	jalr	-420(ra) # 80001520 <putc>
    800016cc:	0024c503          	lbu	a0,2(s1)
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	e50080e7          	jalr	-432(ra) # 80001520 <putc>
    800016d8:	0034c503          	lbu	a0,3(s1)
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	e44080e7          	jalr	-444(ra) # 80001520 <putc>
    mem_free(buf);
    800016e4:	00048513          	mv	a0,s1
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	c14080e7          	jalr	-1004(ra) # 800012fc <mem_free>

    sem_open(&mutex, 1);
    800016f0:	00100593          	li	a1,1
    800016f4:	00006517          	auipc	a0,0x6
    800016f8:	ab450513          	addi	a0,a0,-1356 # 800071a8 <mutex>
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	d18080e7          	jalr	-744(ra) # 80001414 <sem_open>
    sem_open(&done, 0);
    80001704:	00000593          	li	a1,0
    80001708:	00006517          	auipc	a0,0x6
    8000170c:	a9850513          	addi	a0,a0,-1384 # 800071a0 <done>
    80001710:	00000097          	auipc	ra,0x0
    80001714:	d04080e7          	jalr	-764(ra) # 80001414 <sem_open>
    thread_t t1, t2, t3;
    thread_create(&t1, worker, (void*)'A');
    80001718:	04100613          	li	a2,65
    8000171c:	00000597          	auipc	a1,0x0
    80001720:	ea858593          	addi	a1,a1,-344 # 800015c4 <worker>
    80001724:	fd840513          	addi	a0,s0,-40
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	c00080e7          	jalr	-1024(ra) # 80001328 <thread_create>
    thread_create(&t2, worker, (void*)'B');
    80001730:	04200613          	li	a2,66
    80001734:	00000597          	auipc	a1,0x0
    80001738:	e9058593          	addi	a1,a1,-368 # 800015c4 <worker>
    8000173c:	fd040513          	addi	a0,s0,-48
    80001740:	00000097          	auipc	ra,0x0
    80001744:	be8080e7          	jalr	-1048(ra) # 80001328 <thread_create>
    thread_create(&t3, worker, (void*)'C');
    80001748:	04300613          	li	a2,67
    8000174c:	00000597          	auipc	a1,0x0
    80001750:	e7858593          	addi	a1,a1,-392 # 800015c4 <worker>
    80001754:	fc840513          	addi	a0,s0,-56
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	bd0080e7          	jalr	-1072(ra) # 80001328 <thread_create>
    sem_wait_n(done, 3);
    80001760:	00006497          	auipc	s1,0x6
    80001764:	a4048493          	addi	s1,s1,-1472 # 800071a0 <done>
    80001768:	00300593          	li	a1,3
    8000176c:	0004b503          	ld	a0,0(s1)
    80001770:	00000097          	auipc	ra,0x0
    80001774:	d54080e7          	jalr	-684(ra) # 800014c4 <sem_wait_n>
    sem_close(mutex);
    80001778:	00006517          	auipc	a0,0x6
    8000177c:	a3053503          	ld	a0,-1488(a0) # 800071a8 <mutex>
    80001780:	00000097          	auipc	ra,0x0
    80001784:	ccc080e7          	jalr	-820(ra) # 8000144c <sem_close>
    sem_close(done);
    80001788:	0004b503          	ld	a0,0(s1)
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	cc0080e7          	jalr	-832(ra) # 8000144c <sem_close>
    putc('\n'); putc('O'); putc('K'); putc('\n');
    80001794:	00a00513          	li	a0,10
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	d88080e7          	jalr	-632(ra) # 80001520 <putc>
    800017a0:	04f00513          	li	a0,79
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	d7c080e7          	jalr	-644(ra) # 80001520 <putc>
    800017ac:	04b00513          	li	a0,75
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	d70080e7          	jalr	-656(ra) # 80001520 <putc>
    800017b8:	00a00513          	li	a0,10
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	d64080e7          	jalr	-668(ra) # 80001520 <putc>

    thread_t echo;
    thread_create(&echo, echoBody, 0);
    800017c4:	00000613          	li	a2,0
    800017c8:	00000597          	auipc	a1,0x0
    800017cc:	db458593          	addi	a1,a1,-588 # 8000157c <echoBody>
    800017d0:	fc040513          	addi	a0,s0,-64
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	b54080e7          	jalr	-1196(ra) # 80001328 <thread_create>
    while (1) {}
    800017dc:	0000006f          	j	800017dc <userMainC+0x168>

00000000800017e0 <drop_to_user>:
#include "APIC.h"
#include "../lib/console.h"

void userMain();

void drop_to_user(void (*fn)()) {
    800017e0:	ff010113          	addi	sp,sp,-16
    800017e4:	00813423          	sd	s0,8(sp)
    800017e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    800017ec:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800017f0:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    800017f4:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    800017f8:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800017fc:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    80001800:	10200073          	sret
}
    80001804:	00813403          	ld	s0,8(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret

0000000080001810 <main>:

void interupt();
int main() {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00113423          	sd	ra,8(sp)
    80001818:	00813023          	sd	s0,0(sp)
    8000181c:	01010413          	addi	s0,sp,16
    start_main_thread();
    80001820:	00002097          	auipc	ra,0x2
    80001824:	f1c080e7          	jalr	-228(ra) # 8000373c <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    80001828:	00000797          	auipc	a5,0x0
    8000182c:	99878793          	addi	a5,a5,-1640 # 800011c0 <interupt>
    80001830:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0" :: "r"((uint64)(0x2 | 0x200)));
    80001834:	20200793          	li	a5,514
    80001838:	10479073          	csrw	sie,a5
    drop_to_user(userMain);
    8000183c:	00000517          	auipc	a0,0x0
    80001840:	5d050513          	addi	a0,a0,1488 # 80001e0c <userMain>
    80001844:	00000097          	auipc	ra,0x0
    80001848:	f9c080e7          	jalr	-100(ra) # 800017e0 <drop_to_user>
    return 0;
    8000184c:	00000513          	li	a0,0
    80001850:	00813083          	ld	ra,8(sp)
    80001854:	00013403          	ld	s0,0(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <_ZN10KSemaphore4initEj>:
//

#include "Semaphore.hpp"
#include "Scheduler.hpp"

void KSemaphore::init(unsigned initialValue) {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    blockedHead = nullptr;
    8000186c:	00053423          	sd	zero,8(a0)
    blockedTail = nullptr;
    80001870:	00053823          	sd	zero,16(a0)
    value = (int)initialValue;
    80001874:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001878:	00050223          	sb	zero,4(a0)
}
    8000187c:	00813403          	ld	s0,8(sp)
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret

0000000080001888 <_ZN10KSemaphore7enqueueEP7KThread>:

void KSemaphore::enqueue(KThread* thread) {
    80001888:	fe010113          	addi	sp,sp,-32
    8000188c:	00113c23          	sd	ra,24(sp)
    80001890:	00813823          	sd	s0,16(sp)
    80001894:	00913423          	sd	s1,8(sp)
    80001898:	01213023          	sd	s2,0(sp)
    8000189c:	02010413          	addi	s0,sp,32
    800018a0:	00050913          	mv	s2,a0
    800018a4:	00058493          	mv	s1,a1
    thread->setNextInQueue(nullptr);
    800018a8:	00000593          	li	a1,0
    800018ac:	00048513          	mv	a0,s1
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	48c080e7          	jalr	1164(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    800018b8:	01093583          	ld	a1,16(s2)
    800018bc:	02058e63          	beqz	a1,800018f8 <_ZN10KSemaphore7enqueueEP7KThread+0x70>
        thread->setPrevInQueue(blockedTail);
    800018c0:	00048513          	mv	a0,s1
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	494080e7          	jalr	1172(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    800018cc:	00048593          	mv	a1,s1
    800018d0:	01093503          	ld	a0,16(s2)
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	468080e7          	jalr	1128(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        blockedHead = thread;
    }
    blockedTail = thread;
    800018dc:	00993823          	sd	s1,16(s2)
}
    800018e0:	01813083          	ld	ra,24(sp)
    800018e4:	01013403          	ld	s0,16(sp)
    800018e8:	00813483          	ld	s1,8(sp)
    800018ec:	00013903          	ld	s2,0(sp)
    800018f0:	02010113          	addi	sp,sp,32
    800018f4:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800018f8:	00000593          	li	a1,0
    800018fc:	00048513          	mv	a0,s1
    80001900:	00000097          	auipc	ra,0x0
    80001904:	458080e7          	jalr	1112(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
        blockedHead = thread;
    80001908:	00993423          	sd	s1,8(s2)
    8000190c:	fd1ff06f          	j	800018dc <_ZN10KSemaphore7enqueueEP7KThread+0x54>

0000000080001910 <_ZN10KSemaphore7dequeueEv>:

KThread* KSemaphore::dequeue() {
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	01213023          	sd	s2,0(sp)
    80001924:	02010413          	addi	s0,sp,32
    if (blockedHead == nullptr) return nullptr;
    80001928:	00853483          	ld	s1,8(a0)
    8000192c:	04048463          	beqz	s1,80001974 <_ZN10KSemaphore7dequeueEv+0x64>
    80001930:	00050913          	mv	s2,a0
    KThread* thread = blockedHead;
    blockedHead = thread->getNextInQueue();
    80001934:	00048513          	mv	a0,s1
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	3cc080e7          	jalr	972(ra) # 80001d04 <_ZN7KThread14getNextInQueueEv>
    80001940:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    80001944:	04050663          	beqz	a0,80001990 <_ZN10KSemaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    80001948:	00000593          	li	a1,0
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	40c080e7          	jalr	1036(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    80001954:	00000593          	li	a1,0
    80001958:	00048513          	mv	a0,s1
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	3e0080e7          	jalr	992(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80001964:	00000593          	li	a1,0
    80001968:	00048513          	mv	a0,s1
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	3ec080e7          	jalr	1004(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
    return thread;
}
    80001974:	00048513          	mv	a0,s1
    80001978:	01813083          	ld	ra,24(sp)
    8000197c:	01013403          	ld	s0,16(sp)
    80001980:	00813483          	ld	s1,8(sp)
    80001984:	00013903          	ld	s2,0(sp)
    80001988:	02010113          	addi	sp,sp,32
    8000198c:	00008067          	ret
    else blockedTail = nullptr;
    80001990:	00093823          	sd	zero,16(s2)
    80001994:	fc1ff06f          	j	80001954 <_ZN10KSemaphore7dequeueEv+0x44>

0000000080001998 <_ZN10KSemaphore4waitEP7KThread>:

int KSemaphore::wait(KThread* caller) {
    if (closed) { return -1; }
    80001998:	00454783          	lbu	a5,4(a0)
    8000199c:	04079a63          	bnez	a5,800019f0 <_ZN10KSemaphore4waitEP7KThread+0x58>
    if (value > 0) { value--; return 0; }
    800019a0:	00052783          	lw	a5,0(a0)
    800019a4:	00f05a63          	blez	a5,800019b8 <_ZN10KSemaphore4waitEP7KThread+0x20>
    800019a8:	fff7879b          	addiw	a5,a5,-1
    800019ac:	00f52023          	sw	a5,0(a0)
    800019b0:	00000513          	li	a0,0
    800019b4:	00008067          	ret
int KSemaphore::wait(KThread* caller) {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
    caller->sleepDelta = 1;
    800019c8:	00100793          	li	a5,1
    800019cc:	02f5bc23          	sd	a5,56(a1)
    caller->threadContext.x[10] = 0;
    800019d0:	0805b823          	sd	zero,144(a1)
    enqueue(caller);
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	eb4080e7          	jalr	-332(ra) # 80001888 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    800019dc:	00100513          	li	a0,1
}
    800019e0:	00813083          	ld	ra,8(sp)
    800019e4:	00013403          	ld	s0,0(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret
    if (closed) { return -1; }
    800019f0:	fff00513          	li	a0,-1
}
    800019f4:	00008067          	ret

00000000800019f8 <_ZN10KSemaphore6signalEv>:

int KSemaphore::signal() {
    value+=1;
    800019f8:	00052783          	lw	a5,0(a0)
    800019fc:	0017879b          	addiw	a5,a5,1
    80001a00:	0007871b          	sext.w	a4,a5
    80001a04:	00f52023          	sw	a5,0(a0)
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a08:	00853783          	ld	a5,8(a0)
    80001a0c:	06078063          	beqz	a5,80001a6c <_ZN10KSemaphore6signalEv+0x74>
int KSemaphore::signal() {
    80001a10:	fe010113          	addi	sp,sp,-32
    80001a14:	00113c23          	sd	ra,24(sp)
    80001a18:	00813823          	sd	s0,16(sp)
    80001a1c:	00913423          	sd	s1,8(sp)
    80001a20:	02010413          	addi	s0,sp,32
    80001a24:	00050493          	mv	s1,a0
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a28:	0387a783          	lw	a5,56(a5)
    80001a2c:	00f75e63          	bge	a4,a5,80001a48 <_ZN10KSemaphore6signalEv+0x50>
        KThread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}
    80001a30:	00000513          	li	a0,0
    80001a34:	01813083          	ld	ra,24(sp)
    80001a38:	01013403          	ld	s0,16(sp)
    80001a3c:	00813483          	ld	s1,8(sp)
    80001a40:	02010113          	addi	sp,sp,32
    80001a44:	00008067          	ret
        KThread* thread = dequeue();
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	ec8080e7          	jalr	-312(ra) # 80001910 <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001a50:	03853703          	ld	a4,56(a0)
    80001a54:	0004a783          	lw	a5,0(s1)
    80001a58:	40e787bb          	subw	a5,a5,a4
    80001a5c:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	520080e7          	jalr	1312(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
    80001a68:	fc9ff06f          	j	80001a30 <_ZN10KSemaphore6signalEv+0x38>
}
    80001a6c:	00000513          	li	a0,0
    80001a70:	00008067          	ret

0000000080001a74 <_ZN10KSemaphore5waitNEP7KThreadj>:

int KSemaphore::waitN(KThread* caller, unsigned n) {
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001a74:	00454783          	lbu	a5,4(a0)
    80001a78:	02079063          	bnez	a5,80001a98 <_ZN10KSemaphore5waitNEP7KThreadj+0x24>
    if (value >= (int)n) { value -= (int)n; return 0; }
    80001a7c:	00052783          	lw	a5,0(a0)
    80001a80:	0006071b          	sext.w	a4,a2
    80001a84:	02e7c263          	blt	a5,a4,80001aa8 <_ZN10KSemaphore5waitNEP7KThreadj+0x34>
    80001a88:	40e787bb          	subw	a5,a5,a4
    80001a8c:	00f52023          	sw	a5,0(a0)
    80001a90:	00000513          	li	a0,0
    caller->sleepDelta = (time_t)n;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}
    80001a94:	00008067          	ret
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001a98:	fff00793          	li	a5,-1
    80001a9c:	08f5b823          	sd	a5,144(a1)
    80001aa0:	fff00513          	li	a0,-1
    80001aa4:	00008067          	ret
int KSemaphore::waitN(KThread* caller, unsigned n) {
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    caller->sleepDelta = (time_t)n;
    80001ab8:	02061613          	slli	a2,a2,0x20
    80001abc:	02065613          	srli	a2,a2,0x20
    80001ac0:	02c5bc23          	sd	a2,56(a1)
    caller->threadContext.x[10] = 0;
    80001ac4:	0805b823          	sd	zero,144(a1)
    enqueue(caller);
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	dc0080e7          	jalr	-576(ra) # 80001888 <_ZN10KSemaphore7enqueueEP7KThread>
    return 1;
    80001ad0:	00100513          	li	a0,1
}
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN10KSemaphore7signalNEj>:

int KSemaphore::signalN(unsigned n) {
    80001ae4:	fe010113          	addi	sp,sp,-32
    80001ae8:	00113c23          	sd	ra,24(sp)
    80001aec:	00813823          	sd	s0,16(sp)
    80001af0:	00913423          	sd	s1,8(sp)
    80001af4:	02010413          	addi	s0,sp,32
    80001af8:	00050493          	mv	s1,a0
    value += (int)n;
    80001afc:	00052783          	lw	a5,0(a0)
    80001b00:	00b787bb          	addw	a5,a5,a1
    80001b04:	00f52023          	sw	a5,0(a0)
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001b08:	0084b783          	ld	a5,8(s1)
    80001b0c:	02078c63          	beqz	a5,80001b44 <_ZN10KSemaphore7signalNEj+0x60>
    80001b10:	0004a703          	lw	a4,0(s1)
    80001b14:	0387a783          	lw	a5,56(a5)
    80001b18:	02f74663          	blt	a4,a5,80001b44 <_ZN10KSemaphore7signalNEj+0x60>
        KThread* thread = dequeue();
    80001b1c:	00048513          	mv	a0,s1
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	df0080e7          	jalr	-528(ra) # 80001910 <_ZN10KSemaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001b28:	03853703          	ld	a4,56(a0)
    80001b2c:	0004a783          	lw	a5,0(s1)
    80001b30:	40e787bb          	subw	a5,a5,a4
    80001b34:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	448080e7          	jalr	1096(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001b40:	fc9ff06f          	j	80001b08 <_ZN10KSemaphore7signalNEj+0x24>
    }
    return 0;
}
    80001b44:	00000513          	li	a0,0
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret

0000000080001b5c <_ZN10KSemaphore5closeEv>:

int KSemaphore::close() {
    80001b5c:	fe010113          	addi	sp,sp,-32
    80001b60:	00113c23          	sd	ra,24(sp)
    80001b64:	00813823          	sd	s0,16(sp)
    80001b68:	00913423          	sd	s1,8(sp)
    80001b6c:	02010413          	addi	s0,sp,32
    80001b70:	00050493          	mv	s1,a0
    closed = true;
    80001b74:	00100793          	li	a5,1
    80001b78:	00f50223          	sb	a5,4(a0)
    KThread* thread = dequeue();
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	d94080e7          	jalr	-620(ra) # 80001910 <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001b84:	02050263          	beqz	a0,80001ba8 <_ZN10KSemaphore5closeEv+0x4c>
        thread->threadContext.x[10] = (size_t)-1;
    80001b88:	fff00793          	li	a5,-1
    80001b8c:	08f53823          	sd	a5,144(a0)
        Scheduler::Put(thread);
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	3f0080e7          	jalr	1008(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
        thread = dequeue();
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	d74080e7          	jalr	-652(ra) # 80001910 <_ZN10KSemaphore7dequeueEv>
    while (thread != nullptr) {
    80001ba4:	fe1ff06f          	j	80001b84 <_ZN10KSemaphore5closeEv+0x28>
    }
    return 0;
    80001ba8:	00000513          	li	a0,0
    80001bac:	01813083          	ld	ra,24(sp)
    80001bb0:	01013403          	ld	s0,16(sp)
    80001bb4:	00813483          	ld	s1,8(sp)
    80001bb8:	02010113          	addi	sp,sp,32
    80001bbc:	00008067          	ret

0000000080001bc0 <_ZN7KThread16threadTrampolineEPS_>:
    sstatus_val |= (1UL << 8); // SPP=1
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void KThread::threadTrampoline(KThread* t) {
    80001bc0:	fe010113          	addi	sp,sp,-32
    80001bc4:	00113c23          	sd	ra,24(sp)
    80001bc8:	00813823          	sd	s0,16(sp)
    80001bcc:	00913423          	sd	s1,8(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    80001bd4:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001bd8:	00053783          	ld	a5,0(a0)
    80001bdc:	00078663          	beqz	a5,80001be8 <_ZN7KThread16threadTrampolineEPS_+0x28>
    80001be0:	00853503          	ld	a0,8(a0)
    80001be4:	000780e7          	jalr	a5
    Scheduler::ThreadExit(t);
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	340080e7          	jalr	832(ra) # 80001f2c <_ZN9Scheduler10ThreadExitEP7KThread>
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	00813483          	ld	s1,8(sp)
    80001c00:	02010113          	addi	sp,sp,32
    80001c04:	00008067          	ret

0000000080001c08 <_ZN7KThreadC1Ev>:
KThread::KThread() {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00813423          	sd	s0,8(sp)
    80001c10:	01010413          	addi	s0,sp,16
}
    80001c14:	00813403          	ld	s0,8(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN7KThread4initEv>:
void KThread::init() {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001c2c:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001c30:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001c34:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001c38:	00053c23          	sd	zero,24(a0)
    next = nullptr;
    80001c3c:	02053023          	sd	zero,32(a0)
    stackPtr = nullptr;
    80001c40:	02053423          	sd	zero,40(a0)
    supervisorSp = nullptr;
    80001c44:	02053823          	sd	zero,48(a0)
    sleepDelta = 0;
    80001c48:	02053c23          	sd	zero,56(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001c4c:	00000713          	li	a4,0
    80001c50:	01f00793          	li	a5,31
    80001c54:	00e7ce63          	blt	a5,a4,80001c70 <_ZN7KThread4initEv+0x50>
    80001c58:	00870793          	addi	a5,a4,8
    80001c5c:	00379793          	slli	a5,a5,0x3
    80001c60:	00f507b3          	add	a5,a0,a5
    80001c64:	0007b023          	sd	zero,0(a5)
    80001c68:	0017071b          	addiw	a4,a4,1
    80001c6c:	fe5ff06f          	j	80001c50 <_ZN7KThread4initEv+0x30>
    threadContext.sepc = 0;
    80001c70:	14053023          	sd	zero,320(a0)
    threadContext.sstatus = 0;
    80001c74:	14053423          	sd	zero,328(a0)
    threadContext.pc = 0;
    80001c78:	14053823          	sd	zero,336(a0)
}
    80001c7c:	00813403          	ld	s0,8(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_ZN7KThread11copyContextEPm>:
void KThread::copyContext(size_t* ctx) {
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00813423          	sd	s0,8(sp)
    80001c90:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001c94:	00000713          	li	a4,0
    80001c98:	01f00793          	li	a5,31
    80001c9c:	02e7c463          	blt	a5,a4,80001cc4 <_ZN7KThread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001ca0:	00371793          	slli	a5,a4,0x3
    80001ca4:	00f587b3          	add	a5,a1,a5
    80001ca8:	0007b683          	ld	a3,0(a5)
    80001cac:	00870793          	addi	a5,a4,8
    80001cb0:	00379793          	slli	a5,a5,0x3
    80001cb4:	00f507b3          	add	a5,a0,a5
    80001cb8:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    80001cbc:	0017071b          	addiw	a4,a4,1
    80001cc0:	fd9ff06f          	j	80001c98 <_ZN7KThread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001cc4:	02853783          	ld	a5,40(a0)
    80001cc8:	04f53823          	sd	a5,80(a0)
    threadContext.sepc = cont->sepc;
    80001ccc:	1005b783          	ld	a5,256(a1)
    80001cd0:	14f53023          	sd	a5,320(a0)
    threadContext.sstatus =cont->sstatus;
    80001cd4:	1085b783          	ld	a5,264(a1)
    80001cd8:	14f53423          	sd	a5,328(a0)
}
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN7KThread10getContextEv>:
size_t* KThread::getContext() {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
}
    80001cf4:	04050513          	addi	a0,a0,64
    80001cf8:	00813403          	ld	s0,8(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZN7KThread14getNextInQueueEv>:
KThread* KThread::getNextInQueue(){
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
}
    80001d10:	02053503          	ld	a0,32(a0)
    80001d14:	00813403          	ld	s0,8(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZN7KThread14getPrevInQueueEv>:
KThread* KThread::getPrevInQueue(){
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00813423          	sd	s0,8(sp)
    80001d28:	01010413          	addi	s0,sp,16
}
    80001d2c:	01853503          	ld	a0,24(a0)
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <_ZN7KThread14setNextInQueueEPS_>:
void KThread::setNextInQueue(KThread* next){
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    this->next = next;
    80001d48:	02b53023          	sd	a1,32(a0)
}
    80001d4c:	00813403          	ld	s0,8(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret

0000000080001d58 <_ZN7KThread14setPrevInQueueEPS_>:
void KThread::setPrevInQueue(KThread* prev){
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00813423          	sd	s0,8(sp)
    80001d60:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001d64:	00b53c23          	sd	a1,24(a0)
}
    80001d68:	00813403          	ld	s0,8(sp)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <_ZN7KThread21setNextAndPrevInQueueEPS_S0_>:
void KThread::setNextAndPrevInQueue(KThread* next, KThread* prev){
    80001d74:	fe010113          	addi	sp,sp,-32
    80001d78:	00113c23          	sd	ra,24(sp)
    80001d7c:	00813823          	sd	s0,16(sp)
    80001d80:	00913423          	sd	s1,8(sp)
    80001d84:	01213023          	sd	s2,0(sp)
    80001d88:	02010413          	addi	s0,sp,32
    80001d8c:	00050493          	mv	s1,a0
    80001d90:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	fa8080e7          	jalr	-88(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001d9c:	00090593          	mv	a1,s2
    80001da0:	00048513          	mv	a0,s1
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	fb4080e7          	jalr	-76(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001dac:	01813083          	ld	ra,24(sp)
    80001db0:	01013403          	ld	s0,16(sp)
    80001db4:	00813483          	ld	s1,8(sp)
    80001db8:	00013903          	ld	s2,0(sp)
    80001dbc:	02010113          	addi	sp,sp,32
    80001dc0:	00008067          	ret

0000000080001dc4 <_ZN7KThread5setupEPS_Pm>:
void KThread::setup(KThread* parentThread, size_t* stack_top) {
    80001dc4:	ff010113          	addi	sp,sp,-16
    80001dc8:	00813423          	sd	s0,8(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001dd0:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001dd4:	02c53423          	sd	a2,40(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001dd8:	04c53823          	sd	a2,80(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001ddc:	00000797          	auipc	a5,0x0
    80001de0:	de478793          	addi	a5,a5,-540 # 80001bc0 <_ZN7KThread16threadTrampolineEPS_>
    80001de4:	14f53023          	sd	a5,320(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001de8:	08a53823          	sd	a0,144(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001dec:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001df0:	04f53c23          	sd	a5,88(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001df4:	100027f3          	csrr	a5,sstatus
    sstatus_val |= (1UL << 5); // SPIE=1
    80001df8:	1207e793          	ori	a5,a5,288
    threadContext.sstatus = sstatus_val;
    80001dfc:	14f53423          	sd	a5,328(a0)
}
    80001e00:	00813403          	ld	s0,8(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <userMain>:
extern "C" void userMain(void) {
    userMainCpp();
}
#else
extern "C" void userMainC(void);
extern "C" void userMain(void) {
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    userMainC();
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	858080e7          	jalr	-1960(ra) # 80001674 <userMainC>
}
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZL8idleBodyPv>:
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    );
}

static void idleBody(void*) {
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813423          	sd	s0,8(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    while (true) { __asm__ volatile("wfi"); }
    80001e40:	10500073          	wfi
    80001e44:	ffdff06f          	j	80001e40 <_ZL8idleBodyPv+0xc>

0000000080001e48 <_ZN9Scheduler10GetRunningEv>:
KThread* Scheduler::GetRunning(){
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00813423          	sd	s0,8(sp)
    80001e50:	01010413          	addi	s0,sp,16
}
    80001e54:	00005517          	auipc	a0,0x5
    80001e58:	38c53503          	ld	a0,908(a0) # 800071e0 <_ZN9Scheduler7runningE>
    80001e5c:	00813403          	ld	s0,8(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>:
void Scheduler::yield(KThread* oldThread, KThread* newThread){
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    80001e78:	00058513          	mv	a0,a1
    running = newThread;
    80001e7c:	00005797          	auipc	a5,0x5
    80001e80:	36b7b223          	sd	a1,868(a5) # 800071e0 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	e64080e7          	jalr	-412(ra) # 80001ce8 <_ZN7KThread10getContextEv>
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	208080e7          	jalr	520(ra) # 80001094 <restoreContext>
}
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN9Scheduler7GetNextEv>:
KThread* Scheduler::GetNext() {
    80001ea4:	fe010113          	addi	sp,sp,-32
    80001ea8:	00113c23          	sd	ra,24(sp)
    80001eac:	00813823          	sd	s0,16(sp)
    80001eb0:	00913423          	sd	s1,8(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    if (readyQueue == nullptr) return nullptr;
    80001eb8:	00005497          	auipc	s1,0x5
    80001ebc:	3304b483          	ld	s1,816(s1) # 800071e8 <_ZN9Scheduler10readyQueueE>
    80001ec0:	04048463          	beqz	s1,80001f08 <_ZN9Scheduler7GetNextEv+0x64>
    readyQueue = readyQueue->getNextInQueue();
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	e3c080e7          	jalr	-452(ra) # 80001d04 <_ZN7KThread14getNextInQueueEv>
    80001ed0:	00005797          	auipc	a5,0x5
    80001ed4:	30a7bc23          	sd	a0,792(a5) # 800071e8 <_ZN9Scheduler10readyQueueE>
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    80001ed8:	04050463          	beqz	a0,80001f20 <_ZN9Scheduler7GetNextEv+0x7c>
    80001edc:	00000593          	li	a1,0
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	e78080e7          	jalr	-392(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
    toRet->setNextInQueue(nullptr);
    80001ee8:	00000593          	li	a1,0
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	e4c080e7          	jalr	-436(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    toRet->setPrevInQueue(nullptr);
    80001ef8:	00000593          	li	a1,0
    80001efc:	00048513          	mv	a0,s1
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	e58080e7          	jalr	-424(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
}
    80001f08:	00048513          	mv	a0,s1
    80001f0c:	01813083          	ld	ra,24(sp)
    80001f10:	01013403          	ld	s0,16(sp)
    80001f14:	00813483          	ld	s1,8(sp)
    80001f18:	02010113          	addi	sp,sp,32
    80001f1c:	00008067          	ret
    else readyQueueEnd = nullptr;
    80001f20:	00005797          	auipc	a5,0x5
    80001f24:	2c07b823          	sd	zero,720(a5) # 800071f0 <_ZN9Scheduler13readyQueueEndE>
    80001f28:	fc1ff06f          	j	80001ee8 <_ZN9Scheduler7GetNextEv+0x44>

0000000080001f2c <_ZN9Scheduler10ThreadExitEP7KThread>:
void Scheduler::ThreadExit(KThread* t) {
    80001f2c:	fe010113          	addi	sp,sp,-32
    80001f30:	00113c23          	sd	ra,24(sp)
    80001f34:	00813823          	sd	s0,16(sp)
    80001f38:	00913423          	sd	s1,8(sp)
    80001f3c:	02010413          	addi	s0,sp,32
    80001f40:	00050493          	mv	s1,a0
    KThread* next = GetNext();
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	f60080e7          	jalr	-160(ra) # 80001ea4 <_ZN9Scheduler7GetNextEv>
    80001f4c:	00050593          	mv	a1,a0
    if (next == nullptr) {
    80001f50:	02050263          	beqz	a0,80001f74 <_ZN9Scheduler10ThreadExitEP7KThread+0x48>
    yield(t, next);
    80001f54:	00048513          	mv	a0,s1
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	f10080e7          	jalr	-240(ra) # 80001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>
}
    80001f60:	01813083          	ld	ra,24(sp)
    80001f64:	01013403          	ld	s0,16(sp)
    80001f68:	00813483          	ld	s1,8(sp)
    80001f6c:	02010113          	addi	sp,sp,32
    80001f70:	00008067          	ret
    KThread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    KThread* getParent() { return parent; }
    80001f74:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    80001f78:	fc059ee3          	bnez	a1,80001f54 <_ZN9Scheduler10ThreadExitEP7KThread+0x28>
    80001f7c:	0000006f          	j	80001f7c <_ZN9Scheduler10ThreadExitEP7KThread+0x50>

0000000080001f80 <_ZN9Scheduler3PutEP7KThread>:
void Scheduler::Put(KThread* thread) {
    80001f80:	fe010113          	addi	sp,sp,-32
    80001f84:	00113c23          	sd	ra,24(sp)
    80001f88:	00813823          	sd	s0,16(sp)
    80001f8c:	00913423          	sd	s1,8(sp)
    80001f90:	02010413          	addi	s0,sp,32
    80001f94:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80001f98:	00000593          	li	a1,0
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	da0080e7          	jalr	-608(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    if (readyQueueEnd != nullptr) {
    80001fa4:	00005597          	auipc	a1,0x5
    80001fa8:	24c5b583          	ld	a1,588(a1) # 800071f0 <_ZN9Scheduler13readyQueueEndE>
    80001fac:	04058063          	beqz	a1,80001fec <_ZN9Scheduler3PutEP7KThread+0x6c>
        thread->setPrevInQueue(readyQueueEnd);
    80001fb0:	00048513          	mv	a0,s1
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	da4080e7          	jalr	-604(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
        readyQueueEnd->setNextInQueue(thread);
    80001fbc:	00048593          	mv	a1,s1
    80001fc0:	00005517          	auipc	a0,0x5
    80001fc4:	23053503          	ld	a0,560(a0) # 800071f0 <_ZN9Scheduler13readyQueueEndE>
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	d74080e7          	jalr	-652(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    80001fd0:	00005797          	auipc	a5,0x5
    80001fd4:	2297b023          	sd	s1,544(a5) # 800071f0 <_ZN9Scheduler13readyQueueEndE>
}
    80001fd8:	01813083          	ld	ra,24(sp)
    80001fdc:	01013403          	ld	s0,16(sp)
    80001fe0:	00813483          	ld	s1,8(sp)
    80001fe4:	02010113          	addi	sp,sp,32
    80001fe8:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80001fec:	00000593          	li	a1,0
    80001ff0:	00048513          	mv	a0,s1
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	d64080e7          	jalr	-668(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
        readyQueue = thread;
    80001ffc:	00005797          	auipc	a5,0x5
    80002000:	1e97b623          	sd	s1,492(a5) # 800071e8 <_ZN9Scheduler10readyQueueE>
    80002004:	fcdff06f          	j	80001fd0 <_ZN9Scheduler3PutEP7KThread+0x50>

0000000080002008 <_ZN9Scheduler15SetupStartStackEv>:
void Scheduler::SetupStartStack() {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00813423          	sd	s0,8(sp)
    80002010:	01010413          	addi	s0,sp,16
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80002014:	00005797          	auipc	a5,0x5
    80002018:	1647b783          	ld	a5,356(a5) # 80007178 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000201c:	00778793          	addi	a5,a5,7
    80002020:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80002024:	00005717          	auipc	a4,0x5
    80002028:	1cf73a23          	sd	a5,468(a4) # 800071f8 <_ZN9Scheduler12stack_cursorE>
}
    8000202c:	00813403          	ld	s0,8(sp)
    80002030:	01010113          	addi	sp,sp,16
    80002034:	00008067          	ret

0000000080002038 <_ZN9Scheduler16SetupStartThreadEv>:
}

void Scheduler::SetupStartThread() {
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	00813823          	sd	s0,16(sp)
    80002044:	00913423          	sd	s1,8(sp)
    80002048:	02010413          	addi	s0,sp,32
    SetupStartStack();
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	fbc080e7          	jalr	-68(ra) # 80002008 <_ZN9Scheduler15SetupStartStackEv>

    running = static_cast<KThread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread)));
    80002054:	00001097          	auipc	ra,0x1
    80002058:	108080e7          	jalr	264(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    8000205c:	15800593          	li	a1,344
    80002060:	00001097          	auipc	ra,0x1
    80002064:	158080e7          	jalr	344(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002068:	00005797          	auipc	a5,0x5
    8000206c:	16a7bc23          	sd	a0,376(a5) # 800071e0 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    80002070:	00000097          	auipc	ra,0x0
    80002074:	c78080e7          	jalr	-904(ra) # 80001ce8 <_ZN7KThread10getContextEv>
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	0ac080e7          	jalr	172(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80002080:	00200793          	li	a5,2
    80002084:	00005717          	auipc	a4,0x5
    80002088:	fcf73e23          	sd	a5,-36(a4) # 80007060 <_ZN9Scheduler21runningThreadTimeLeftE>

    void* idleMem   = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	0d0080e7          	jalr	208(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    80002094:	15800593          	li	a1,344
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	120080e7          	jalr	288(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800020a0:	00050493          	mv	s1,a0
    KThread* idle   = reinterpret_cast<KThread*>(idleMem);
    idle->init();
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	b7c080e7          	jalr	-1156(ra) # 80001c20 <_ZN7KThread4initEv>
    KThread* getPrevInQueue();
    void setNextInQueue(KThread* next);
    void setPrevInQueue(KThread* prev);
    void setNextAndPrevInQueue(KThread* next, KThread* prev);
    void setup(KThread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800020ac:	00000797          	auipc	a5,0x0
    800020b0:	d8878793          	addi	a5,a5,-632 # 80001e34 <_ZL8idleBodyPv>
    800020b4:	00f4b023          	sd	a5,0(s1)
    800020b8:	0004b423          	sd	zero,8(s1)
    idle->setBody(idleBody, nullptr);
    void* idleStack = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	0a0080e7          	jalr	160(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    800020c4:	000085b7          	lui	a1,0x8
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	0f0080e7          	jalr	240(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* idleTop = reinterpret_cast<size_t*>((char*)idleStack + DEFAULT_STACK_SIZE * sizeof(size_t));
    idle->setup(nullptr, idleTop);
    800020d0:	00008637          	lui	a2,0x8
    800020d4:	00c50633          	add	a2,a0,a2
    800020d8:	00000593          	li	a1,0
    800020dc:	00048513          	mv	a0,s1
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	ce4080e7          	jalr	-796(ra) # 80001dc4 <_ZN7KThread5setupEPS_Pm>
    Put(idle);
    800020e8:	00048513          	mv	a0,s1
    800020ec:	00000097          	auipc	ra,0x0
    800020f0:	e94080e7          	jalr	-364(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
}
    800020f4:	01813083          	ld	ra,24(sp)
    800020f8:	01013403          	ld	s0,16(sp)
    800020fc:	00813483          	ld	s1,8(sp)
    80002100:	02010113          	addi	sp,sp,32
    80002104:	00008067          	ret

0000000080002108 <_ZN9Scheduler12AddNewThreadEP7KThread>:

void Scheduler::AddNewThread(KThread* thread) {
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00813423          	sd	s0,8(sp)
    80002110:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80002114:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80002118:	04f53823          	sd	a5,80(a0)
}
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <_ZN9Scheduler9timerTickEP7KThread>:

void Scheduler::timerTick(KThread* current) {
    80002128:	fe010113          	addi	sp,sp,-32
    8000212c:	00113c23          	sd	ra,24(sp)
    80002130:	00813823          	sd	s0,16(sp)
    80002134:	00913423          	sd	s1,8(sp)
    80002138:	01213023          	sd	s2,0(sp)
    8000213c:	02010413          	addi	s0,sp,32
    80002140:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80002144:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    80002148:	00005797          	auipc	a5,0x5
    8000214c:	0b87b783          	ld	a5,184(a5) # 80007200 <_ZN9Scheduler10sleepQueueE>
    80002150:	04078e63          	beqz	a5,800021ac <_ZN9Scheduler9timerTickEP7KThread+0x84>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80002154:	0387b703          	ld	a4,56(a5)
    80002158:	04070063          	beqz	a4,80002198 <_ZN9Scheduler9timerTickEP7KThread+0x70>
    8000215c:	fff70713          	addi	a4,a4,-1
    80002160:	02e7bc23          	sd	a4,56(a5)
    80002164:	0340006f          	j	80002198 <_ZN9Scheduler9timerTickEP7KThread+0x70>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            KThread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    80002168:	00048513          	mv	a0,s1
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	b98080e7          	jalr	-1128(ra) # 80001d04 <_ZN7KThread14getNextInQueueEv>
    80002174:	00005797          	auipc	a5,0x5
    80002178:	08a7b623          	sd	a0,140(a5) # 80007200 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    8000217c:	00000593          	li	a1,0
    80002180:	00048513          	mv	a0,s1
    80002184:	00000097          	auipc	ra,0x0
    80002188:	bb8080e7          	jalr	-1096(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
            Put(waking);
    8000218c:	00048513          	mv	a0,s1
    80002190:	00000097          	auipc	ra,0x0
    80002194:	df0080e7          	jalr	-528(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80002198:	00005497          	auipc	s1,0x5
    8000219c:	0684b483          	ld	s1,104(s1) # 80007200 <_ZN9Scheduler10sleepQueueE>
    800021a0:	00048663          	beqz	s1,800021ac <_ZN9Scheduler9timerTickEP7KThread+0x84>
    800021a4:	0384b783          	ld	a5,56(s1)
    800021a8:	fc0780e3          	beqz	a5,80002168 <_ZN9Scheduler9timerTickEP7KThread+0x40>
        }
    }

    if (current == nullptr) return;
    800021ac:	02090463          	beqz	s2,800021d4 <_ZN9Scheduler9timerTickEP7KThread+0xac>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    800021b0:	00005797          	auipc	a5,0x5
    800021b4:	eb07b783          	ld	a5,-336(a5) # 80007060 <_ZN9Scheduler21runningThreadTimeLeftE>
    800021b8:	00078863          	beqz	a5,800021c8 <_ZN9Scheduler9timerTickEP7KThread+0xa0>
    800021bc:	fff78793          	addi	a5,a5,-1
    800021c0:	00005717          	auipc	a4,0x5
    800021c4:	eaf73023          	sd	a5,-352(a4) # 80007060 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    800021c8:	00005797          	auipc	a5,0x5
    800021cc:	e987b783          	ld	a5,-360(a5) # 80007060 <_ZN9Scheduler21runningThreadTimeLeftE>
    800021d0:	00078e63          	beqz	a5,800021ec <_ZN9Scheduler9timerTickEP7KThread+0xc4>
    KThread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}
    800021d4:	01813083          	ld	ra,24(sp)
    800021d8:	01013403          	ld	s0,16(sp)
    800021dc:	00813483          	ld	s1,8(sp)
    800021e0:	00013903          	ld	s2,0(sp)
    800021e4:	02010113          	addi	sp,sp,32
    800021e8:	00008067          	ret
    KThread* next = GetNext();
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	cb8080e7          	jalr	-840(ra) # 80001ea4 <_ZN9Scheduler7GetNextEv>
    800021f4:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    800021f8:	00200793          	li	a5,2
    800021fc:	00005717          	auipc	a4,0x5
    80002200:	e6f73223          	sd	a5,-412(a4) # 80007060 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002204:	fc0508e3          	beqz	a0,800021d4 <_ZN9Scheduler9timerTickEP7KThread+0xac>
    Put(current);
    80002208:	00090513          	mv	a0,s2
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	d74080e7          	jalr	-652(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
    yield(current, next);
    80002214:	00048593          	mv	a1,s1
    80002218:	00090513          	mv	a0,s2
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	c4c080e7          	jalr	-948(ra) # 80001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>
    80002224:	fb1ff06f          	j	800021d4 <_ZN9Scheduler9timerTickEP7KThread+0xac>

0000000080002228 <_ZN9Scheduler5sleepEP7KThreadm>:

void Scheduler::sleep(KThread* thread, time_t duration) {
    80002228:	fd010113          	addi	sp,sp,-48
    8000222c:	02113423          	sd	ra,40(sp)
    80002230:	02813023          	sd	s0,32(sp)
    80002234:	00913c23          	sd	s1,24(sp)
    80002238:	01213823          	sd	s2,16(sp)
    8000223c:	01313423          	sd	s3,8(sp)
    80002240:	01413023          	sd	s4,0(sp)
    80002244:	03010413          	addi	s0,sp,48
    80002248:	00050a13          	mv	s4,a0
    8000224c:	00058913          	mv	s2,a1
    KThread* previous = nullptr;
    KThread* current  = sleepQueue;
    80002250:	00005497          	auipc	s1,0x5
    80002254:	fb04b483          	ld	s1,-80(s1) # 80007200 <_ZN9Scheduler10sleepQueueE>
    KThread* previous = nullptr;
    80002258:	00000993          	li	s3,0
    time_t   remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    8000225c:	02048463          	beqz	s1,80002284 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
    80002260:	0384b783          	ld	a5,56(s1)
    80002264:	02f96063          	bltu	s2,a5,80002284 <_ZN9Scheduler5sleepEP7KThreadm+0x5c>
        remaining -= current->sleepDelta;
    80002268:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    8000226c:	00048513          	mv	a0,s1
    80002270:	00000097          	auipc	ra,0x0
    80002274:	a94080e7          	jalr	-1388(ra) # 80001d04 <_ZN7KThread14getNextInQueueEv>
        previous = current;
    80002278:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    8000227c:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    80002280:	fddff06f          	j	8000225c <_ZN9Scheduler5sleepEP7KThreadm+0x34>
    }

    thread->sleepDelta = remaining;
    80002284:	032a3c23          	sd	s2,56(s4)
    thread->setNextInQueue(current);
    80002288:	00048593          	mv	a1,s1
    8000228c:	000a0513          	mv	a0,s4
    80002290:	00000097          	auipc	ra,0x0
    80002294:	aac080e7          	jalr	-1364(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    80002298:	04098263          	beqz	s3,800022dc <_ZN9Scheduler5sleepEP7KThreadm+0xb4>
    else previous->setNextInQueue(thread);
    8000229c:	000a0593          	mv	a1,s4
    800022a0:	00098513          	mv	a0,s3
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	a98080e7          	jalr	-1384(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    800022ac:	00048863          	beqz	s1,800022bc <_ZN9Scheduler5sleepEP7KThreadm+0x94>
    800022b0:	0384b583          	ld	a1,56(s1)
    800022b4:	41258933          	sub	s2,a1,s2
    800022b8:	0324bc23          	sd	s2,56(s1)
    800022bc:	02813083          	ld	ra,40(sp)
    800022c0:	02013403          	ld	s0,32(sp)
    800022c4:	01813483          	ld	s1,24(sp)
    800022c8:	01013903          	ld	s2,16(sp)
    800022cc:	00813983          	ld	s3,8(sp)
    800022d0:	00013a03          	ld	s4,0(sp)
    800022d4:	03010113          	addi	sp,sp,48
    800022d8:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    800022dc:	00005797          	auipc	a5,0x5
    800022e0:	f347b223          	sd	s4,-220(a5) # 80007200 <_ZN9Scheduler10sleepQueueE>
    800022e4:	fc9ff06f          	j	800022ac <_ZN9Scheduler5sleepEP7KThreadm+0x84>

00000000800022e8 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    800022f8:	00005517          	auipc	a0,0x5
    800022fc:	f1050513          	addi	a0,a0,-240 # 80007208 <_ZN7Konsole11outputItemsE>
    80002300:	fffff097          	auipc	ra,0xfffff
    80002304:	174080e7          	jalr	372(ra) # 80001474 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    80002308:	00005797          	auipc	a5,0x5
    8000230c:	e487b783          	ld	a5,-440(a5) # 80007150 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002310:	0007b783          	ld	a5,0(a5)
    80002314:	0007c783          	lbu	a5,0(a5)
    80002318:	0ff7f793          	andi	a5,a5,255
    8000231c:	0207f793          	andi	a5,a5,32
    80002320:	fe0784e3          	beqz	a5,80002308 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {
    80002324:	00005717          	auipc	a4,0x5
    80002328:	ee470713          	addi	a4,a4,-284 # 80007208 <_ZN7Konsole11outputItemsE>
    8000232c:	01872783          	lw	a5,24(a4)
    80002330:	01c72703          	lw	a4,28(a4)
    80002334:	fce782e3          	beq	a5,a4,800022f8 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002338:	00005697          	auipc	a3,0x5
    8000233c:	ed068693          	addi	a3,a3,-304 # 80007208 <_ZN7Konsole11outputItemsE>
    80002340:	00f68733          	add	a4,a3,a5
    80002344:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    80002348:	0017879b          	addiw	a5,a5,1
    8000234c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002350:	0187571b          	srliw	a4,a4,0x18
    80002354:	00e787bb          	addw	a5,a5,a4
    80002358:	0ff7f793          	andi	a5,a5,255
    8000235c:	40e787bb          	subw	a5,a5,a4
    80002360:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    80002364:	00005797          	auipc	a5,0x5
    80002368:	e047b783          	ld	a5,-508(a5) # 80007168 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000236c:	0007b783          	ld	a5,0(a5)
    80002370:	00c78023          	sb	a2,0(a5)
    80002374:	f85ff06f          	j	800022f8 <_ZN7Konsole16outputThreadBodyEPv+0x10>

0000000080002378 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>:
void Konsole::enqueueGetcWaiter(KThread* thread) {
    80002378:	fe010113          	addi	sp,sp,-32
    8000237c:	00113c23          	sd	ra,24(sp)
    80002380:	00813823          	sd	s0,16(sp)
    80002384:	00913423          	sd	s1,8(sp)
    80002388:	02010413          	addi	s0,sp,32
    8000238c:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80002390:	00000593          	li	a1,0
    80002394:	00000097          	auipc	ra,0x0
    80002398:	9a8080e7          	jalr	-1624(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    8000239c:	00005597          	auipc	a1,0x5
    800023a0:	f8c5b583          	ld	a1,-116(a1) # 80007328 <_ZN7Konsole14getcWaiterTailE>
    800023a4:	04058063          	beqz	a1,800023e4 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    800023a8:	00048513          	mv	a0,s1
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	9ac080e7          	jalr	-1620(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    800023b4:	00048593          	mv	a1,s1
    800023b8:	00005517          	auipc	a0,0x5
    800023bc:	f7053503          	ld	a0,-144(a0) # 80007328 <_ZN7Konsole14getcWaiterTailE>
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	97c080e7          	jalr	-1668(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    800023c8:	00005797          	auipc	a5,0x5
    800023cc:	f697b023          	sd	s1,-160(a5) # 80007328 <_ZN7Konsole14getcWaiterTailE>
}
    800023d0:	01813083          	ld	ra,24(sp)
    800023d4:	01013403          	ld	s0,16(sp)
    800023d8:	00813483          	ld	s1,8(sp)
    800023dc:	02010113          	addi	sp,sp,32
    800023e0:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800023e4:	00000593          	li	a1,0
    800023e8:	00048513          	mv	a0,s1
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	96c080e7          	jalr	-1684(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    800023f4:	00005797          	auipc	a5,0x5
    800023f8:	f297be23          	sd	s1,-196(a5) # 80007330 <_ZN7Konsole14getcWaiterHeadE>
    800023fc:	fcdff06f          	j	800023c8 <_ZN7Konsole17enqueueGetcWaiterEP7KThread+0x50>

0000000080002400 <_ZN7Konsole17dequeueGetcWaiterEv>:
KThread* Konsole::dequeueGetcWaiter() {
    80002400:	fe010113          	addi	sp,sp,-32
    80002404:	00113c23          	sd	ra,24(sp)
    80002408:	00813823          	sd	s0,16(sp)
    8000240c:	00913423          	sd	s1,8(sp)
    80002410:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    80002414:	00005497          	auipc	s1,0x5
    80002418:	f1c4b483          	ld	s1,-228(s1) # 80007330 <_ZN7Konsole14getcWaiterHeadE>
    8000241c:	04048463          	beqz	s1,80002464 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    80002420:	00048513          	mv	a0,s1
    80002424:	00000097          	auipc	ra,0x0
    80002428:	8e0080e7          	jalr	-1824(ra) # 80001d04 <_ZN7KThread14getNextInQueueEv>
    8000242c:	00005797          	auipc	a5,0x5
    80002430:	f0a7b223          	sd	a0,-252(a5) # 80007330 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002434:	04050463          	beqz	a0,8000247c <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002438:	00000593          	li	a1,0
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	91c080e7          	jalr	-1764(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    80002444:	00000593          	li	a1,0
    80002448:	00048513          	mv	a0,s1
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	8f0080e7          	jalr	-1808(ra) # 80001d3c <_ZN7KThread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80002454:	00000593          	li	a1,0
    80002458:	00048513          	mv	a0,s1
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	8fc080e7          	jalr	-1796(ra) # 80001d58 <_ZN7KThread14setPrevInQueueEPS_>
}
    80002464:	00048513          	mv	a0,s1
    80002468:	01813083          	ld	ra,24(sp)
    8000246c:	01013403          	ld	s0,16(sp)
    80002470:	00813483          	ld	s1,8(sp)
    80002474:	02010113          	addi	sp,sp,32
    80002478:	00008067          	ret
    else getcWaiterTail = nullptr;
    8000247c:	00005797          	auipc	a5,0x5
    80002480:	ea07b623          	sd	zero,-340(a5) # 80007328 <_ZN7Konsole14getcWaiterTailE>
    80002484:	fc1ff06f          	j	80002444 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

0000000080002488 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    80002488:	fe010113          	addi	sp,sp,-32
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00913423          	sd	s1,8(sp)
    80002498:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    8000249c:	00005517          	auipc	a0,0x5
    800024a0:	d6c50513          	addi	a0,a0,-660 # 80007208 <_ZN7Konsole11outputItemsE>
    800024a4:	12052823          	sw	zero,304(a0)
    800024a8:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    800024ac:	00052c23          	sw	zero,24(a0)
    800024b0:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    800024b4:	12053423          	sd	zero,296(a0)
    800024b8:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    800024bc:	00000593          	li	a1,0
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	3a0080e7          	jalr	928(ra) # 80001860 <_ZN10KSemaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800024c8:	00001097          	auipc	ra,0x1
    800024cc:	c94080e7          	jalr	-876(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    800024d0:	15800593          	li	a1,344
    800024d4:	00001097          	auipc	ra,0x1
    800024d8:	ce4080e7          	jalr	-796(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800024dc:	00050493          	mv	s1,a0
    KThread* outputThread = reinterpret_cast<KThread*>(threadMem);
    outputThread->init();
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	740080e7          	jalr	1856(ra) # 80001c20 <_ZN7KThread4initEv>
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800024e8:	00000797          	auipc	a5,0x0
    800024ec:	e0078793          	addi	a5,a5,-512 # 800022e8 <_ZN7Konsole16outputThreadBodyEPv>
    800024f0:	00f4b023          	sd	a5,0(s1)
    800024f4:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	c64080e7          	jalr	-924(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    80002500:	000085b7          	lui	a1,0x8
    80002504:	00001097          	auipc	ra,0x1
    80002508:	cb4080e7          	jalr	-844(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    8000250c:	00008637          	lui	a2,0x8
    80002510:	00c50633          	add	a2,a0,a2
    80002514:	00000593          	li	a1,0
    80002518:	00048513          	mv	a0,s1
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	8a8080e7          	jalr	-1880(ra) # 80001dc4 <_ZN7KThread5setupEPS_Pm>
    Scheduler::Put(outputThread);
    80002524:	00048513          	mv	a0,s1
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	a58080e7          	jalr	-1448(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
}
    80002530:	01813083          	ld	ra,24(sp)
    80002534:	01013403          	ld	s0,16(sp)
    80002538:	00813483          	ld	s1,8(sp)
    8000253c:	02010113          	addi	sp,sp,32
    80002540:	00008067          	ret

0000000080002544 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    80002544:	fe010113          	addi	sp,sp,-32
    80002548:	00113c23          	sd	ra,24(sp)
    8000254c:	00813823          	sd	s0,16(sp)
    80002550:	00913423          	sd	s1,8(sp)
    80002554:	01213023          	sd	s2,0(sp)
    80002558:	02010413          	addi	s0,sp,32
    int irq = plic_claim();
    8000255c:	00002097          	auipc	ra,0x2
    80002560:	a68080e7          	jalr	-1432(ra) # 80003fc4 <plic_claim>
    80002564:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    80002568:	00a00793          	li	a5,10
    8000256c:	02f50663          	beq	a0,a5,80002598 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    80002570:	0a049463          	bnez	s1,80002618 <_ZN7Konsole15handleInterruptEv+0xd4>
}
    80002574:	01813083          	ld	ra,24(sp)
    80002578:	01013403          	ld	s0,16(sp)
    8000257c:	00813483          	ld	s1,8(sp)
    80002580:	00013903          	ld	s2,0(sp)
    80002584:	02010113          	addi	sp,sp,32
    80002588:	00008067          	ret
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    8000258c:	09253823          	sd	s2,144(a0)
                Scheduler::Put(waiter);
    80002590:	00000097          	auipc	ra,0x0
    80002594:	9f0080e7          	jalr	-1552(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
        while (*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
    80002598:	00005797          	auipc	a5,0x5
    8000259c:	bb87b783          	ld	a5,-1096(a5) # 80007150 <_GLOBAL_OFFSET_TABLE_+0x10>
    800025a0:	0007b783          	ld	a5,0(a5)
    800025a4:	0007c783          	lbu	a5,0(a5)
    800025a8:	0017f793          	andi	a5,a5,1
    800025ac:	fc0782e3          	beqz	a5,80002570 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    800025b0:	00005797          	auipc	a5,0x5
    800025b4:	b987b783          	ld	a5,-1128(a5) # 80007148 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025b8:	0007b783          	ld	a5,0(a5)
    800025bc:	0007c783          	lbu	a5,0(a5)
    800025c0:	0ff7f913          	andi	s2,a5,255
            KThread* waiter = dequeueGetcWaiter();
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	e3c080e7          	jalr	-452(ra) # 80002400 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    800025cc:	fc0510e3          	bnez	a0,8000258c <_ZN7Konsole15handleInterruptEv+0x48>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    800025d0:	00005617          	auipc	a2,0x5
    800025d4:	c3860613          	addi	a2,a2,-968 # 80007208 <_ZN7Konsole11outputItemsE>
    800025d8:	13462683          	lw	a3,308(a2)
    800025dc:	0016879b          	addiw	a5,a3,1
    800025e0:	41f7d71b          	sraiw	a4,a5,0x1f
    800025e4:	0187571b          	srliw	a4,a4,0x18
    800025e8:	00e787bb          	addw	a5,a5,a4
    800025ec:	0ff7f793          	andi	a5,a5,255
    800025f0:	40e787bb          	subw	a5,a5,a4
    800025f4:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    800025f8:	13062603          	lw	a2,304(a2)
    800025fc:	f8e60ee3          	beq	a2,a4,80002598 <_ZN7Konsole15handleInterruptEv+0x54>
                    inputBuffer[inputTail] = c;
    80002600:	00005717          	auipc	a4,0x5
    80002604:	c0870713          	addi	a4,a4,-1016 # 80007208 <_ZN7Konsole11outputItemsE>
    80002608:	00d706b3          	add	a3,a4,a3
    8000260c:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    80002610:	12f72a23          	sw	a5,308(a4)
    80002614:	f85ff06f          	j	80002598 <_ZN7Konsole15handleInterruptEv+0x54>
    if (irq) plic_complete(irq);
    80002618:	00048513          	mv	a0,s1
    8000261c:	00002097          	auipc	ra,0x2
    80002620:	9e0080e7          	jalr	-1568(ra) # 80003ffc <plic_complete>
}
    80002624:	f51ff06f          	j	80002574 <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002628 <_ZN7Konsole10putcKernelEP7KThreadc>:

int Konsole::putcKernel(KThread* caller, char c) {
    80002628:	fe010113          	addi	sp,sp,-32
    8000262c:	00113c23          	sd	ra,24(sp)
    80002630:	00813823          	sd	s0,16(sp)
    80002634:	00913423          	sd	s1,8(sp)
    80002638:	02010413          	addi	s0,sp,32
    8000263c:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    80002640:	00005617          	auipc	a2,0x5
    80002644:	bc860613          	addi	a2,a2,-1080 # 80007208 <_ZN7Konsole11outputItemsE>
    80002648:	01c62683          	lw	a3,28(a2)
    8000264c:	0016879b          	addiw	a5,a3,1
    80002650:	41f7d71b          	sraiw	a4,a5,0x1f
    80002654:	0187571b          	srliw	a4,a4,0x18
    80002658:	00e787bb          	addw	a5,a5,a4
    8000265c:	0ff7f793          	andi	a5,a5,255
    80002660:	40e787bb          	subw	a5,a5,a4
    80002664:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    80002668:	01862603          	lw	a2,24(a2)
    8000266c:	04e60063          	beq	a2,a4,800026ac <_ZN7Konsole10putcKernelEP7KThreadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    80002670:	00005517          	auipc	a0,0x5
    80002674:	b9850513          	addi	a0,a0,-1128 # 80007208 <_ZN7Konsole11outputItemsE>
    80002678:	00d506b3          	add	a3,a0,a3
    8000267c:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    80002680:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	374080e7          	jalr	884(ra) # 800019f8 <_ZN10KSemaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    8000268c:	02048a63          	beqz	s1,800026c0 <_ZN7Konsole10putcKernelEP7KThreadc+0x98>
    80002690:	0804b823          	sd	zero,144(s1)
    return 0;
    80002694:	00000513          	li	a0,0
}
    80002698:	01813083          	ld	ra,24(sp)
    8000269c:	01013403          	ld	s0,16(sp)
    800026a0:	00813483          	ld	s1,8(sp)
    800026a4:	02010113          	addi	sp,sp,32
    800026a8:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    800026ac:	00050663          	beqz	a0,800026b8 <_ZN7Konsole10putcKernelEP7KThreadc+0x90>
    800026b0:	fff00793          	li	a5,-1
    800026b4:	08f53823          	sd	a5,144(a0)
        return -1;
    800026b8:	fff00513          	li	a0,-1
    800026bc:	fddff06f          	j	80002698 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>
    return 0;
    800026c0:	00000513          	li	a0,0
    800026c4:	fd5ff06f          	j	80002698 <_ZN7Konsole10putcKernelEP7KThreadc+0x70>

00000000800026c8 <_ZN7Konsole10getcKernelEP7KThread>:

int Konsole::getcKernel(KThread* caller) {
    if (inputHead != inputTail) {
    800026c8:	00005717          	auipc	a4,0x5
    800026cc:	b4070713          	addi	a4,a4,-1216 # 80007208 <_ZN7Konsole11outputItemsE>
    800026d0:	13072783          	lw	a5,304(a4)
    800026d4:	13472703          	lw	a4,308(a4)
    800026d8:	04e78063          	beq	a5,a4,80002718 <_ZN7Konsole10getcKernelEP7KThread+0x50>
        char c = inputBuffer[inputHead];
    800026dc:	00005617          	auipc	a2,0x5
    800026e0:	b2c60613          	addi	a2,a2,-1236 # 80007208 <_ZN7Konsole11outputItemsE>
    800026e4:	00f60733          	add	a4,a2,a5
    800026e8:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    800026ec:	0017879b          	addiw	a5,a5,1
    800026f0:	41f7d71b          	sraiw	a4,a5,0x1f
    800026f4:	0187571b          	srliw	a4,a4,0x18
    800026f8:	00e787bb          	addw	a5,a5,a4
    800026fc:	0ff7f793          	andi	a5,a5,255
    80002700:	40e787bb          	subw	a5,a5,a4
    80002704:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002708:	00050463          	beqz	a0,80002710 <_ZN7Konsole10getcKernelEP7KThread+0x48>
    8000270c:	08d53823          	sd	a3,144(a0)
        return (unsigned char)c;
    80002710:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
    80002714:	00008067          	ret
int Konsole::getcKernel(KThread* caller) {
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00113423          	sd	ra,8(sp)
    80002720:	00813023          	sd	s0,0(sp)
    80002724:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	c50080e7          	jalr	-944(ra) # 80002378 <_ZN7Konsole17enqueueGetcWaiterEP7KThread>
    return -2;
    80002730:	ffe00513          	li	a0,-2
    80002734:	00813083          	ld	ra,8(sp)
    80002738:	00013403          	ld	s0,0(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret

0000000080002744 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    body(body), arg(arg) {}
Thread::Thread(): myHandle(nullptr),
    body(nullptr), arg(nullptr) {}
Thread::~Thread() {}
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00813423          	sd	s0,8(sp)
    8000274c:	01010413          	addi	s0,sp,16
    80002750:	00813403          	ld	s0,8(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <_ZN6Thread7runBodyEPv>:

void Thread::runBody(void* arg) {
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    8000276c:	00053783          	ld	a5,0(a0)
    80002770:	0107b783          	ld	a5,16(a5)
    80002774:	000780e7          	jalr	a5
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN14PeriodicThread3runEv>:
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}

void PeriodicThread::run() {
    80002788:	fe010113          	addi	sp,sp,-32
    8000278c:	00113c23          	sd	ra,24(sp)
    80002790:	00813823          	sd	s0,16(sp)
    80002794:	00913423          	sd	s1,8(sp)
    80002798:	02010413          	addi	s0,sp,32
    8000279c:	00050493          	mv	s1,a0
    while (period) {
    800027a0:	0204b783          	ld	a5,32(s1)
    800027a4:	02078263          	beqz	a5,800027c8 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    800027a8:	0004b783          	ld	a5,0(s1)
    800027ac:	0187b783          	ld	a5,24(a5)
    800027b0:	00048513          	mv	a0,s1
    800027b4:	000780e7          	jalr	a5
        time_sleep(period);
    800027b8:	0204b503          	ld	a0,32(s1)
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	c30080e7          	jalr	-976(ra) # 800013ec <time_sleep>
    while (period) {
    800027c4:	fddff06f          	j	800027a0 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    800027c8:	01813083          	ld	ra,24(sp)
    800027cc:	01013403          	ld	s0,16(sp)
    800027d0:	00813483          	ld	s1,8(sp)
    800027d4:	02010113          	addi	sp,sp,32
    800027d8:	00008067          	ret

00000000800027dc <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00113423          	sd	ra,8(sp)
    800027e4:	00813023          	sd	s0,0(sp)
    800027e8:	01010413          	addi	s0,sp,16
    800027ec:	00005797          	auipc	a5,0x5
    800027f0:	8b478793          	addi	a5,a5,-1868 # 800070a0 <_ZTV9Semaphore+0x10>
    800027f4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800027f8:	00853503          	ld	a0,8(a0)
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	c50080e7          	jalr	-944(ra) # 8000144c <sem_close>
}
    80002804:	00813083          	ld	ra,8(sp)
    80002808:	00013403          	ld	s0,0(sp)
    8000280c:	01010113          	addi	sp,sp,16
    80002810:	00008067          	ret

0000000080002814 <_Znwm>:
void* operator new(size_t size) {
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    return mem_alloc(size); }
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	aac080e7          	jalr	-1364(ra) # 800012d0 <mem_alloc>
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZdlPv>:
void  operator delete(void* p)  {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    mem_free(p); }
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	ab0080e7          	jalr	-1360(ra) # 800012fc <mem_free>
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    80002874:	00000097          	auipc	ra,0x0
    80002878:	fc8080e7          	jalr	-56(ra) # 8000283c <_ZdlPv>
    8000287c:	00813083          	ld	ra,8(sp)
    80002880:	00013403          	ld	s0,0(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000288c:	fe010113          	addi	sp,sp,-32
    80002890:	00113c23          	sd	ra,24(sp)
    80002894:	00813823          	sd	s0,16(sp)
    80002898:	00913423          	sd	s1,8(sp)
    8000289c:	02010413          	addi	s0,sp,32
    800028a0:	00050493          	mv	s1,a0
}
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	f38080e7          	jalr	-200(ra) # 800027dc <_ZN9SemaphoreD1Ev>
    800028ac:	00048513          	mv	a0,s1
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	f8c080e7          	jalr	-116(ra) # 8000283c <_ZdlPv>
    800028b8:	01813083          	ld	ra,24(sp)
    800028bc:	01013403          	ld	s0,16(sp)
    800028c0:	00813483          	ld	s1,8(sp)
    800028c4:	02010113          	addi	sp,sp,32
    800028c8:	00008067          	ret

00000000800028cc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg): myHandle(nullptr),
    800028cc:	ff010113          	addi	sp,sp,-16
    800028d0:	00813423          	sd	s0,8(sp)
    800028d4:	01010413          	addi	s0,sp,16
    body(body), arg(arg) {}
    800028d8:	00004797          	auipc	a5,0x4
    800028dc:	7a078793          	addi	a5,a5,1952 # 80007078 <_ZTV6Thread+0x10>
    800028e0:	00f53023          	sd	a5,0(a0)
    800028e4:	00053423          	sd	zero,8(a0)
    800028e8:	00b53823          	sd	a1,16(a0)
    800028ec:	00c53c23          	sd	a2,24(a0)
    800028f0:	00813403          	ld	s0,8(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZN6ThreadC1Ev>:
Thread::Thread(): myHandle(nullptr),
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00813423          	sd	s0,8(sp)
    80002904:	01010413          	addi	s0,sp,16
    body(nullptr), arg(nullptr) {}
    80002908:	00004797          	auipc	a5,0x4
    8000290c:	77078793          	addi	a5,a5,1904 # 80007078 <_ZTV6Thread+0x10>
    80002910:	00f53023          	sd	a5,0(a0)
    80002914:	00053423          	sd	zero,8(a0)
    80002918:	00053823          	sd	zero,16(a0)
    8000291c:	00053c23          	sd	zero,24(a0)
    80002920:	00813403          	ld	s0,8(sp)
    80002924:	01010113          	addi	sp,sp,16
    80002928:	00008067          	ret

000000008000292c <_ZN6Thread5startEv>:
int Thread::start() {
    8000292c:	ff010113          	addi	sp,sp,-16
    80002930:	00113423          	sd	ra,8(sp)
    80002934:	00813023          	sd	s0,0(sp)
    80002938:	01010413          	addi	s0,sp,16
    void (*fn)(void*) = body ? body : runBody;
    8000293c:	01053783          	ld	a5,16(a0)
    80002940:	02078663          	beqz	a5,8000296c <_ZN6Thread5startEv+0x40>
    80002944:	00078593          	mv	a1,a5
    void* fnArg       = body ? arg  : this;
    80002948:	02078863          	beqz	a5,80002978 <_ZN6Thread5startEv+0x4c>
    8000294c:	01853603          	ld	a2,24(a0)
    return thread_create(&myHandle, fn, fnArg);
    80002950:	00850513          	addi	a0,a0,8
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	9d4080e7          	jalr	-1580(ra) # 80001328 <thread_create>
}
    8000295c:	00813083          	ld	ra,8(sp)
    80002960:	00013403          	ld	s0,0(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret
    void (*fn)(void*) = body ? body : runBody;
    8000296c:	00000597          	auipc	a1,0x0
    80002970:	df058593          	addi	a1,a1,-528 # 8000275c <_ZN6Thread7runBodyEPv>
    80002974:	fd5ff06f          	j	80002948 <_ZN6Thread5startEv+0x1c>
    void* fnArg       = body ? arg  : this;
    80002978:	00050613          	mv	a2,a0
    8000297c:	fd5ff06f          	j	80002950 <_ZN6Thread5startEv+0x24>

0000000080002980 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00113423          	sd	ra,8(sp)
    80002988:	00813023          	sd	s0,0(sp)
    8000298c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	a3c080e7          	jalr	-1476(ra) # 800013cc <thread_dispatch>
}
    80002998:	00813083          	ld	ra,8(sp)
    8000299c:	00013403          	ld	s0,0(sp)
    800029a0:	01010113          	addi	sp,sp,16
    800029a4:	00008067          	ret

00000000800029a8 <_ZN6Thread5sleepEm>:
int  Thread::sleep(time_t t) {
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00113423          	sd	ra,8(sp)
    800029b0:	00813023          	sd	s0,0(sp)
    800029b4:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    800029b8:	fffff097          	auipc	ra,0xfffff
    800029bc:	a34080e7          	jalr	-1484(ra) # 800013ec <time_sleep>
}
    800029c0:	00813083          	ld	ra,8(sp)
    800029c4:	00013403          	ld	s0,0(sp)
    800029c8:	01010113          	addi	sp,sp,16
    800029cc:	00008067          	ret

00000000800029d0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00113423          	sd	ra,8(sp)
    800029d8:	00813023          	sd	s0,0(sp)
    800029dc:	01010413          	addi	s0,sp,16
    800029e0:	00004797          	auipc	a5,0x4
    800029e4:	6c078793          	addi	a5,a5,1728 # 800070a0 <_ZTV9Semaphore+0x10>
    800029e8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800029ec:	00850513          	addi	a0,a0,8
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	a24080e7          	jalr	-1500(ra) # 80001414 <sem_open>
}
    800029f8:	00813083          	ld	ra,8(sp)
    800029fc:	00013403          	ld	s0,0(sp)
    80002a00:	01010113          	addi	sp,sp,16
    80002a04:	00008067          	ret

0000000080002a08 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00113423          	sd	ra,8(sp)
    80002a10:	00813023          	sd	s0,0(sp)
    80002a14:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002a18:	00853503          	ld	a0,8(a0)
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	a58080e7          	jalr	-1448(ra) # 80001474 <sem_wait>
}
    80002a24:	00813083          	ld	ra,8(sp)
    80002a28:	00013403          	ld	s0,0(sp)
    80002a2c:	01010113          	addi	sp,sp,16
    80002a30:	00008067          	ret

0000000080002a34 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00113423          	sd	ra,8(sp)
    80002a3c:	00813023          	sd	s0,0(sp)
    80002a40:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002a44:	00853503          	ld	a0,8(a0)
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	a54080e7          	jalr	-1452(ra) # 8000149c <sem_signal>
}
    80002a50:	00813083          	ld	ra,8(sp)
    80002a54:	00013403          	ld	s0,0(sp)
    80002a58:	01010113          	addi	sp,sp,16
    80002a5c:	00008067          	ret

0000000080002a60 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period) {}
    80002a60:	fe010113          	addi	sp,sp,-32
    80002a64:	00113c23          	sd	ra,24(sp)
    80002a68:	00813823          	sd	s0,16(sp)
    80002a6c:	00913423          	sd	s1,8(sp)
    80002a70:	01213023          	sd	s2,0(sp)
    80002a74:	02010413          	addi	s0,sp,32
    80002a78:	00050493          	mv	s1,a0
    80002a7c:	00058913          	mv	s2,a1
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	e7c080e7          	jalr	-388(ra) # 800028fc <_ZN6ThreadC1Ev>
    80002a88:	00004797          	auipc	a5,0x4
    80002a8c:	63878793          	addi	a5,a5,1592 # 800070c0 <_ZTV14PeriodicThread+0x10>
    80002a90:	00f4b023          	sd	a5,0(s1)
    80002a94:	0324b023          	sd	s2,32(s1)
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	00013903          	ld	s2,0(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() { period = 0; }
    80002ab0:	ff010113          	addi	sp,sp,-16
    80002ab4:	00813423          	sd	s0,8(sp)
    80002ab8:	01010413          	addi	s0,sp,16
    80002abc:	02053023          	sd	zero,32(a0)
    80002ac0:	00813403          	ld	s0,8(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <_ZN7Console4getcEv>:

char Console::getc()       { return ::getc(); }
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00113423          	sd	ra,8(sp)
    80002ad4:	00813023          	sd	s0,0(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	a20080e7          	jalr	-1504(ra) # 800014fc <getc>
    80002ae4:	00813083          	ld	ra,8(sp)
    80002ae8:	00013403          	ld	s0,0(sp)
    80002aec:	01010113          	addi	sp,sp,16
    80002af0:	00008067          	ret

0000000080002af4 <_ZN7Console4putcEc>:
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	00813023          	sd	s0,0(sp)
    80002b00:	01010413          	addi	s0,sp,16
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	a1c080e7          	jalr	-1508(ra) # 80001520 <putc>
    80002b0c:	00813083          	ld	ra,8(sp)
    80002b10:	00013403          	ld	s0,0(sp)
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret

0000000080002b1c <_ZN6Thread3runEv>:
    int start();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00813423          	sd	s0,8(sp)
    80002b24:	01010413          	addi	s0,sp,16
    80002b28:	00813403          	ld	s0,8(sp)
    80002b2c:	01010113          	addi	sp,sp,16
    80002b30:	00008067          	ret

0000000080002b34 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00813423          	sd	s0,8(sp)
    80002b3c:	01010413          	addi	s0,sp,16
    80002b40:	00813403          	ld	s0,8(sp)
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret

0000000080002b4c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002b4c:	ff010113          	addi	sp,sp,-16
    80002b50:	00813423          	sd	s0,8(sp)
    80002b54:	01010413          	addi	s0,sp,16
    80002b58:	00004797          	auipc	a5,0x4
    80002b5c:	56878793          	addi	a5,a5,1384 # 800070c0 <_ZTV14PeriodicThread+0x10>
    80002b60:	00f53023          	sd	a5,0(a0)
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN14PeriodicThreadD0Ev>:
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00113423          	sd	ra,8(sp)
    80002b78:	00813023          	sd	s0,0(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    80002b80:	00004797          	auipc	a5,0x4
    80002b84:	54078793          	addi	a5,a5,1344 # 800070c0 <_ZTV14PeriodicThread+0x10>
    80002b88:	00f53023          	sd	a5,0(a0)
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	cb0080e7          	jalr	-848(ra) # 8000283c <_ZdlPv>
    80002b94:	00813083          	ld	ra,8(sp)
    80002b98:	00013403          	ld	s0,0(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret

0000000080002ba4 <_ZL8echoFuncPv>:
    Ticker() : PeriodicThread(3) {}
protected:
    void periodicActivation() override { Console::putc('.'); }
};

static void echoFunc(void* arg) {
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00113423          	sd	ra,8(sp)
    80002bac:	00813023          	sd	s0,0(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    (void)arg;
    Console::putc('>');
    80002bb4:	03e00513          	li	a0,62
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	f3c080e7          	jalr	-196(ra) # 80002af4 <_ZN7Console4putcEc>
    80002bc0:	00c0006f          	j	80002bcc <_ZL8echoFuncPv+0x28>
    while (true) {
        char c = Console::getc();
        if (c != '\r') Console::putc(c);
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	f30080e7          	jalr	-208(ra) # 80002af4 <_ZN7Console4putcEc>
        char c = Console::getc();
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	f00080e7          	jalr	-256(ra) # 80002acc <_ZN7Console4getcEv>
        if (c != '\r') Console::putc(c);
    80002bd4:	00d00793          	li	a5,13
    80002bd8:	fef50ae3          	beq	a0,a5,80002bcc <_ZL8echoFuncPv+0x28>
    80002bdc:	fe9ff06f          	j	80002bc4 <_ZL8echoFuncPv+0x20>

0000000080002be0 <userMainCpp>:
    }
}

extern "C" void userMainCpp(void) {
    80002be0:	fb010113          	addi	sp,sp,-80
    80002be4:	04113423          	sd	ra,72(sp)
    80002be8:	04813023          	sd	s0,64(sp)
    80002bec:	02913c23          	sd	s1,56(sp)
    80002bf0:	03213823          	sd	s2,48(sp)
    80002bf4:	03313423          	sd	s3,40(sp)
    80002bf8:	05010413          	addi	s0,sp,80
    char* buf = (char*)mem_alloc(4);
    80002bfc:	00400513          	li	a0,4
    80002c00:	ffffe097          	auipc	ra,0xffffe
    80002c04:	6d0080e7          	jalr	1744(ra) # 800012d0 <mem_alloc>
    80002c08:	00050493          	mv	s1,a0
    buf[0] = 'C'; buf[1] = '+'; buf[2] = '+'; buf[3] = '\n';
    80002c0c:	04300793          	li	a5,67
    80002c10:	00f50023          	sb	a5,0(a0)
    80002c14:	02b00793          	li	a5,43
    80002c18:	00f500a3          	sb	a5,1(a0)
    80002c1c:	00f50123          	sb	a5,2(a0)
    80002c20:	00a00793          	li	a5,10
    80002c24:	00f501a3          	sb	a5,3(a0)
    Console::putc(buf[0]); Console::putc(buf[1]); Console::putc(buf[2]); Console::putc(buf[3]);
    80002c28:	04300513          	li	a0,67
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	ec8080e7          	jalr	-312(ra) # 80002af4 <_ZN7Console4putcEc>
    80002c34:	0014c503          	lbu	a0,1(s1)
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	ebc080e7          	jalr	-324(ra) # 80002af4 <_ZN7Console4putcEc>
    80002c40:	0024c503          	lbu	a0,2(s1)
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	eb0080e7          	jalr	-336(ra) # 80002af4 <_ZN7Console4putcEc>
    80002c4c:	0034c503          	lbu	a0,3(s1)
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	ea4080e7          	jalr	-348(ra) # 80002af4 <_ZN7Console4putcEc>
    mem_free(buf);
    80002c58:	00048513          	mv	a0,s1
    80002c5c:	ffffe097          	auipc	ra,0xffffe
    80002c60:	6a0080e7          	jalr	1696(ra) # 800012fc <mem_free>

    Semaphore mx(1), done(0);
    80002c64:	00100593          	li	a1,1
    80002c68:	fc040513          	addi	a0,s0,-64
    80002c6c:	00000097          	auipc	ra,0x0
    80002c70:	d64080e7          	jalr	-668(ra) # 800029d0 <_ZN9SemaphoreC1Ej>
    80002c74:	00000593          	li	a1,0
    80002c78:	fb040513          	addi	a0,s0,-80
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	d54080e7          	jalr	-684(ra) # 800029d0 <_ZN9SemaphoreC1Ej>
    Worker* a = new Worker('A', &mx, &done);
    80002c84:	03800513          	li	a0,56
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	b8c080e7          	jalr	-1140(ra) # 80002814 <_Znwm>
    80002c90:	00050993          	mv	s3,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	c68080e7          	jalr	-920(ra) # 800028fc <_ZN6ThreadC1Ev>
    80002c9c:	00004797          	auipc	a5,0x4
    80002ca0:	45c78793          	addi	a5,a5,1116 # 800070f8 <_ZTV6Worker+0x10>
    80002ca4:	00f9b023          	sd	a5,0(s3)
    80002ca8:	04100793          	li	a5,65
    80002cac:	02f98023          	sb	a5,32(s3)
    80002cb0:	fc040793          	addi	a5,s0,-64
    80002cb4:	02f9b423          	sd	a5,40(s3)
    80002cb8:	fb040793          	addi	a5,s0,-80
    80002cbc:	02f9b823          	sd	a5,48(s3)
    Worker* b = new Worker('B', &mx, &done);
    80002cc0:	03800513          	li	a0,56
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	b50080e7          	jalr	-1200(ra) # 80002814 <_Znwm>
    80002ccc:	00050913          	mv	s2,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	c2c080e7          	jalr	-980(ra) # 800028fc <_ZN6ThreadC1Ev>
    80002cd8:	00004797          	auipc	a5,0x4
    80002cdc:	42078793          	addi	a5,a5,1056 # 800070f8 <_ZTV6Worker+0x10>
    80002ce0:	00f93023          	sd	a5,0(s2)
    80002ce4:	04200793          	li	a5,66
    80002ce8:	02f90023          	sb	a5,32(s2)
    80002cec:	fc040793          	addi	a5,s0,-64
    80002cf0:	02f93423          	sd	a5,40(s2)
    80002cf4:	fb040793          	addi	a5,s0,-80
    80002cf8:	02f93823          	sd	a5,48(s2)
    Worker* c = new Worker('C', &mx, &done);
    80002cfc:	03800513          	li	a0,56
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	b14080e7          	jalr	-1260(ra) # 80002814 <_Znwm>
    80002d08:	00050493          	mv	s1,a0
    Worker(char id, Semaphore* mx, Semaphore* done) : Thread(), id(id), mx(mx), done(done) {}
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	bf0080e7          	jalr	-1040(ra) # 800028fc <_ZN6ThreadC1Ev>
    80002d14:	00004797          	auipc	a5,0x4
    80002d18:	3e478793          	addi	a5,a5,996 # 800070f8 <_ZTV6Worker+0x10>
    80002d1c:	00f4b023          	sd	a5,0(s1)
    80002d20:	04300793          	li	a5,67
    80002d24:	02f48023          	sb	a5,32(s1)
    80002d28:	fc040793          	addi	a5,s0,-64
    80002d2c:	02f4b423          	sd	a5,40(s1)
    80002d30:	fb040793          	addi	a5,s0,-80
    80002d34:	02f4b823          	sd	a5,48(s1)
    a->start(); b->start(); c->start();
    80002d38:	00098513          	mv	a0,s3
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	bf0080e7          	jalr	-1040(ra) # 8000292c <_ZN6Thread5startEv>
    80002d44:	00090513          	mv	a0,s2
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	be4080e7          	jalr	-1052(ra) # 8000292c <_ZN6Thread5startEv>
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	bd8080e7          	jalr	-1064(ra) # 8000292c <_ZN6Thread5startEv>
    done.wait(); done.wait(); done.wait();
    80002d5c:	fb040513          	addi	a0,s0,-80
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	ca8080e7          	jalr	-856(ra) # 80002a08 <_ZN9Semaphore4waitEv>
    80002d68:	fb040513          	addi	a0,s0,-80
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	c9c080e7          	jalr	-868(ra) # 80002a08 <_ZN9Semaphore4waitEv>
    80002d74:	fb040513          	addi	a0,s0,-80
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	c90080e7          	jalr	-880(ra) # 80002a08 <_ZN9Semaphore4waitEv>
    delete a; delete b; delete c;
    80002d80:	00098a63          	beqz	s3,80002d94 <userMainCpp+0x1b4>
    80002d84:	0009b783          	ld	a5,0(s3)
    80002d88:	0087b783          	ld	a5,8(a5)
    80002d8c:	00098513          	mv	a0,s3
    80002d90:	000780e7          	jalr	a5
    80002d94:	00090a63          	beqz	s2,80002da8 <userMainCpp+0x1c8>
    80002d98:	00093783          	ld	a5,0(s2)
    80002d9c:	0087b783          	ld	a5,8(a5)
    80002da0:	00090513          	mv	a0,s2
    80002da4:	000780e7          	jalr	a5
    80002da8:	00048a63          	beqz	s1,80002dbc <userMainCpp+0x1dc>
    80002dac:	0004b783          	ld	a5,0(s1)
    80002db0:	0087b783          	ld	a5,8(a5)
    80002db4:	00048513          	mv	a0,s1
    80002db8:	000780e7          	jalr	a5
    Console::putc('\n'); Console::putc('O'); Console::putc('K'); Console::putc('\n');
    80002dbc:	00a00513          	li	a0,10
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	d34080e7          	jalr	-716(ra) # 80002af4 <_ZN7Console4putcEc>
    80002dc8:	04f00513          	li	a0,79
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	d28080e7          	jalr	-728(ra) # 80002af4 <_ZN7Console4putcEc>
    80002dd4:	04b00513          	li	a0,75
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	d1c080e7          	jalr	-740(ra) # 80002af4 <_ZN7Console4putcEc>
    80002de0:	00a00513          	li	a0,10
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	d10080e7          	jalr	-752(ra) # 80002af4 <_ZN7Console4putcEc>

    Ticker* t = new Ticker();
    80002dec:	02800513          	li	a0,40
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	a24080e7          	jalr	-1500(ra) # 80002814 <_Znwm>
    80002df8:	00050493          	mv	s1,a0
    Ticker() : PeriodicThread(3) {}
    80002dfc:	00300593          	li	a1,3
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	c60080e7          	jalr	-928(ra) # 80002a60 <_ZN14PeriodicThreadC1Em>
    80002e08:	00004797          	auipc	a5,0x4
    80002e0c:	31878793          	addi	a5,a5,792 # 80007120 <_ZTV6Ticker+0x10>
    80002e10:	00f4b023          	sd	a5,0(s1)
    t->start();
    80002e14:	00048513          	mv	a0,s1
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	b14080e7          	jalr	-1260(ra) # 8000292c <_ZN6Thread5startEv>
    Thread::sleep(15);
    80002e20:	00f00513          	li	a0,15
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	b84080e7          	jalr	-1148(ra) # 800029a8 <_ZN6Thread5sleepEm>
    t->terminate();
    80002e2c:	00048513          	mv	a0,s1
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	c80080e7          	jalr	-896(ra) # 80002ab0 <_ZN14PeriodicThread9terminateEv>
    Thread::sleep(5);
    80002e38:	00500513          	li	a0,5
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	b6c080e7          	jalr	-1172(ra) # 800029a8 <_ZN6Thread5sleepEm>
    Console::putc('\n');
    80002e44:	00a00513          	li	a0,10
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	cac080e7          	jalr	-852(ra) # 80002af4 <_ZN7Console4putcEc>
    delete t;
    80002e50:	00048a63          	beqz	s1,80002e64 <userMainCpp+0x284>
    80002e54:	0004b783          	ld	a5,0(s1)
    80002e58:	0087b783          	ld	a5,8(a5)
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	000780e7          	jalr	a5

    Thread* echo = new Thread(echoFunc, nullptr);
    80002e64:	02000513          	li	a0,32
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	9ac080e7          	jalr	-1620(ra) # 80002814 <_Znwm>
    80002e70:	00050493          	mv	s1,a0
    80002e74:	00000613          	li	a2,0
    80002e78:	00000597          	auipc	a1,0x0
    80002e7c:	d2c58593          	addi	a1,a1,-724 # 80002ba4 <_ZL8echoFuncPv>
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	a4c080e7          	jalr	-1460(ra) # 800028cc <_ZN6ThreadC1EPFvPvES0_>
    echo->start();
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	aa0080e7          	jalr	-1376(ra) # 8000292c <_ZN6Thread5startEv>
    while (true) {}
    80002e94:	0000006f          	j	80002e94 <userMainCpp+0x2b4>
    80002e98:	00050493          	mv	s1,a0
    Worker* a = new Worker('A', &mx, &done);
    80002e9c:	00098513          	mv	a0,s3
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	99c080e7          	jalr	-1636(ra) # 8000283c <_ZdlPv>
    Semaphore mx(1), done(0);
    80002ea8:	fb040513          	addi	a0,s0,-80
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	930080e7          	jalr	-1744(ra) # 800027dc <_ZN9SemaphoreD1Ev>
    80002eb4:	fc040513          	addi	a0,s0,-64
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	924080e7          	jalr	-1756(ra) # 800027dc <_ZN9SemaphoreD1Ev>
    80002ec0:	00048513          	mv	a0,s1
    80002ec4:	00005097          	auipc	ra,0x5
    80002ec8:	654080e7          	jalr	1620(ra) # 80008518 <_Unwind_Resume>
    80002ecc:	00050493          	mv	s1,a0
    Worker* b = new Worker('B', &mx, &done);
    80002ed0:	00090513          	mv	a0,s2
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	968080e7          	jalr	-1688(ra) # 8000283c <_ZdlPv>
    80002edc:	fcdff06f          	j	80002ea8 <userMainCpp+0x2c8>
    80002ee0:	00050913          	mv	s2,a0
    Worker* c = new Worker('C', &mx, &done);
    80002ee4:	00048513          	mv	a0,s1
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	954080e7          	jalr	-1708(ra) # 8000283c <_ZdlPv>
    80002ef0:	00090493          	mv	s1,s2
    80002ef4:	fb5ff06f          	j	80002ea8 <userMainCpp+0x2c8>
    80002ef8:	00050913          	mv	s2,a0
    Ticker* t = new Ticker();
    80002efc:	00048513          	mv	a0,s1
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	93c080e7          	jalr	-1732(ra) # 8000283c <_ZdlPv>
    80002f08:	00090493          	mv	s1,s2
    80002f0c:	f9dff06f          	j	80002ea8 <userMainCpp+0x2c8>
    80002f10:	00050913          	mv	s2,a0
    Thread* echo = new Thread(echoFunc, nullptr);
    80002f14:	00048513          	mv	a0,s1
    80002f18:	00000097          	auipc	ra,0x0
    80002f1c:	924080e7          	jalr	-1756(ra) # 8000283c <_ZdlPv>
    80002f20:	00090493          	mv	s1,s2
    80002f24:	f85ff06f          	j	80002ea8 <userMainCpp+0x2c8>
    80002f28:	00050493          	mv	s1,a0
    80002f2c:	f7dff06f          	j	80002ea8 <userMainCpp+0x2c8>
    80002f30:	00050493          	mv	s1,a0
    80002f34:	f81ff06f          	j	80002eb4 <userMainCpp+0x2d4>

0000000080002f38 <_ZN6Ticker18periodicActivationEv>:
    void periodicActivation() override { Console::putc('.'); }
    80002f38:	ff010113          	addi	sp,sp,-16
    80002f3c:	00113423          	sd	ra,8(sp)
    80002f40:	00813023          	sd	s0,0(sp)
    80002f44:	01010413          	addi	s0,sp,16
    80002f48:	02e00513          	li	a0,46
    80002f4c:	00000097          	auipc	ra,0x0
    80002f50:	ba8080e7          	jalr	-1112(ra) # 80002af4 <_ZN7Console4putcEc>
    80002f54:	00813083          	ld	ra,8(sp)
    80002f58:	00013403          	ld	s0,0(sp)
    80002f5c:	01010113          	addi	sp,sp,16
    80002f60:	00008067          	ret

0000000080002f64 <_ZN6Worker3runEv>:
    void run() override {
    80002f64:	fe010113          	addi	sp,sp,-32
    80002f68:	00113c23          	sd	ra,24(sp)
    80002f6c:	00813823          	sd	s0,16(sp)
    80002f70:	00913423          	sd	s1,8(sp)
    80002f74:	01213023          	sd	s2,0(sp)
    80002f78:	02010413          	addi	s0,sp,32
    80002f7c:	00050493          	mv	s1,a0
        for (int i = 0; i < 3; i++) {
    80002f80:	00000913          	li	s2,0
    80002f84:	0500006f          	j	80002fd4 <_ZN6Worker3runEv+0x70>
            mx->wait();
    80002f88:	0284b503          	ld	a0,40(s1)
    80002f8c:	00000097          	auipc	ra,0x0
    80002f90:	a7c080e7          	jalr	-1412(ra) # 80002a08 <_ZN9Semaphore4waitEv>
            Console::putc('['); Console::putc(id); Console::putc(']');
    80002f94:	05b00513          	li	a0,91
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	b5c080e7          	jalr	-1188(ra) # 80002af4 <_ZN7Console4putcEc>
    80002fa0:	0204c503          	lbu	a0,32(s1)
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	b50080e7          	jalr	-1200(ra) # 80002af4 <_ZN7Console4putcEc>
    80002fac:	05d00513          	li	a0,93
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	b44080e7          	jalr	-1212(ra) # 80002af4 <_ZN7Console4putcEc>
            mx->signal();
    80002fb8:	0284b503          	ld	a0,40(s1)
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	a78080e7          	jalr	-1416(ra) # 80002a34 <_ZN9Semaphore6signalEv>
            Thread::sleep((int)id);
    80002fc4:	0204c503          	lbu	a0,32(s1)
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	9e0080e7          	jalr	-1568(ra) # 800029a8 <_ZN6Thread5sleepEm>
        for (int i = 0; i < 3; i++) {
    80002fd0:	0019091b          	addiw	s2,s2,1
    80002fd4:	00200793          	li	a5,2
    80002fd8:	fb27d8e3          	bge	a5,s2,80002f88 <_ZN6Worker3runEv+0x24>
        done->signal();
    80002fdc:	0304b503          	ld	a0,48(s1)
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	a54080e7          	jalr	-1452(ra) # 80002a34 <_ZN9Semaphore6signalEv>
    }
    80002fe8:	01813083          	ld	ra,24(sp)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	00013903          	ld	s2,0(sp)
    80002ff8:	02010113          	addi	sp,sp,32
    80002ffc:	00008067          	ret

0000000080003000 <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    80003000:	ff010113          	addi	sp,sp,-16
    80003004:	00113423          	sd	ra,8(sp)
    80003008:	00813023          	sd	s0,0(sp)
    8000300c:	01010413          	addi	s0,sp,16
    80003010:	00004797          	auipc	a5,0x4
    80003014:	0e878793          	addi	a5,a5,232 # 800070f8 <_ZTV6Worker+0x10>
    80003018:	00f53023          	sd	a5,0(a0)
    8000301c:	fffff097          	auipc	ra,0xfffff
    80003020:	728080e7          	jalr	1832(ra) # 80002744 <_ZN6ThreadD1Ev>
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <_ZN6WorkerD0Ev>:
    80003034:	fe010113          	addi	sp,sp,-32
    80003038:	00113c23          	sd	ra,24(sp)
    8000303c:	00813823          	sd	s0,16(sp)
    80003040:	00913423          	sd	s1,8(sp)
    80003044:	02010413          	addi	s0,sp,32
    80003048:	00050493          	mv	s1,a0
    8000304c:	00004797          	auipc	a5,0x4
    80003050:	0ac78793          	addi	a5,a5,172 # 800070f8 <_ZTV6Worker+0x10>
    80003054:	00f53023          	sd	a5,0(a0)
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	6ec080e7          	jalr	1772(ra) # 80002744 <_ZN6ThreadD1Ev>
    80003060:	00048513          	mv	a0,s1
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	7d8080e7          	jalr	2008(ra) # 8000283c <_ZdlPv>
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00008067          	ret

0000000080003080 <_ZN6TickerD1Ev>:
class Ticker : public PeriodicThread {
    80003080:	ff010113          	addi	sp,sp,-16
    80003084:	00113423          	sd	ra,8(sp)
    80003088:	00813023          	sd	s0,0(sp)
    8000308c:	01010413          	addi	s0,sp,16
    80003090:	00004797          	auipc	a5,0x4
    80003094:	0d07b783          	ld	a5,208(a5) # 80007160 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003098:	01078793          	addi	a5,a5,16
    8000309c:	00f53023          	sd	a5,0(a0)
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	6a4080e7          	jalr	1700(ra) # 80002744 <_ZN6ThreadD1Ev>
    800030a8:	00813083          	ld	ra,8(sp)
    800030ac:	00013403          	ld	s0,0(sp)
    800030b0:	01010113          	addi	sp,sp,16
    800030b4:	00008067          	ret

00000000800030b8 <_ZN6TickerD0Ev>:
    800030b8:	fe010113          	addi	sp,sp,-32
    800030bc:	00113c23          	sd	ra,24(sp)
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	02010413          	addi	s0,sp,32
    800030cc:	00050493          	mv	s1,a0
    800030d0:	00004797          	auipc	a5,0x4
    800030d4:	0907b783          	ld	a5,144(a5) # 80007160 <_GLOBAL_OFFSET_TABLE_+0x20>
    800030d8:	01078793          	addi	a5,a5,16
    800030dc:	00f53023          	sd	a5,0(a0)
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	664080e7          	jalr	1636(ra) # 80002744 <_ZN6ThreadD1Ev>
    800030e8:	00048513          	mv	a0,s1
    800030ec:	fffff097          	auipc	ra,0xfffff
    800030f0:	750080e7          	jalr	1872(ra) # 8000283c <_ZdlPv>
    800030f4:	01813083          	ld	ra,24(sp)
    800030f8:	01013403          	ld	s0,16(sp)
    800030fc:	00813483          	ld	s1,8(sp)
    80003100:	02010113          	addi	sp,sp,32
    80003104:	00008067          	ret

0000000080003108 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80003108:	ff010113          	addi	sp,sp,-16
    8000310c:	00813423          	sd	s0,8(sp)
    80003110:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80003114:	00004797          	auipc	a5,0x4
    80003118:	06c7b783          	ld	a5,108(a5) # 80007180 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000311c:	0007b783          	ld	a5,0(a5)
    80003120:	00004717          	auipc	a4,0x4
    80003124:	03873703          	ld	a4,56(a4) # 80007158 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003128:	00073703          	ld	a4,0(a4)
    8000312c:	40e787b3          	sub	a5,a5,a4
    80003130:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    80003134:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80003138:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    8000313c:	00100693          	li	a3,1
    80003140:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    80003144:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    80003148:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    8000314c:	00073423          	sd	zero,8(a4)
}
    80003150:	00813403          	ld	s0,8(sp)
    80003154:	01010113          	addi	sp,sp,16
    80003158:	00008067          	ret

000000008000315c <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    8000315c:	00004797          	auipc	a5,0x4
    80003160:	2e47c783          	lbu	a5,740(a5) # 80007440 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80003164:	00078863          	beqz	a5,80003174 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80003168:	00004517          	auipc	a0,0x4
    8000316c:	2e050513          	addi	a0,a0,736 # 80007448 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80003170:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80003184:	00004517          	auipc	a0,0x4
    80003188:	2c450513          	addi	a0,a0,708 # 80007448 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000318c:	00000097          	auipc	ra,0x0
    80003190:	f7c080e7          	jalr	-132(ra) # 80003108 <_ZN15MemoryAllocatorC1Ev>
    80003194:	00100793          	li	a5,1
    80003198:	00004717          	auipc	a4,0x4
    8000319c:	2af70423          	sb	a5,680(a4) # 80007440 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    800031a0:	00004517          	auipc	a0,0x4
    800031a4:	2a850513          	addi	a0,a0,680 # 80007448 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800031a8:	00813083          	ld	ra,8(sp)
    800031ac:	00013403          	ld	s0,0(sp)
    800031b0:	01010113          	addi	sp,sp,16
    800031b4:	00008067          	ret

00000000800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800031b8:	ff010113          	addi	sp,sp,-16
    800031bc:	00813423          	sd	s0,8(sp)
    800031c0:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800031c4:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800031c8:	03f58593          	addi	a1,a1,63
    800031cc:	0065d593          	srli	a1,a1,0x6
    800031d0:	0080006f          	j	800031d8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    800031d4:	00053503          	ld	a0,0(a0)
    while(curr){
    800031d8:	06050863          	beqz	a0,80003248 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    800031dc:	01054703          	lbu	a4,16(a0)
    800031e0:	00100793          	li	a5,1
    800031e4:	fef718e3          	bne	a4,a5,800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    800031e8:	01853703          	ld	a4,24(a0)
    800031ec:	00158793          	addi	a5,a1,1
    800031f0:	fef762e3          	bltu	a4,a5,800031d4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    800031f4:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    800031f8:	04e7f663          	bgeu	a5,a4,80003244 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    800031fc:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80003200:	00679793          	slli	a5,a5,0x6
    80003204:	00f507b3          	add	a5,a0,a5
    80003208:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    8000320c:	00100713          	li	a4,1
    80003210:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80003214:	01853703          	ld	a4,24(a0)
    80003218:	40b70733          	sub	a4,a4,a1
    8000321c:	fff70713          	addi	a4,a4,-1
    80003220:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80003224:	00d7b023          	sd	a3,0(a5)
                if(old)
    80003228:	00068463          	beqz	a3,80003230 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    8000322c:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80003230:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80003234:	01853703          	ld	a4,24(a0)
    80003238:	0187b783          	ld	a5,24(a5)
    8000323c:	40f707b3          	sub	a5,a4,a5
    80003240:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80003244:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80003248:	00813403          	ld	s0,8(sp)
    8000324c:	01010113          	addi	sp,sp,16
    80003250:	00008067          	ret

0000000080003254 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80003254:	ff010113          	addi	sp,sp,-16
    80003258:	00813423          	sd	s0,8(sp)
    8000325c:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80003260:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    80003264:	08070a63          	beqz	a4,800032f8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    80003268:	00100793          	li	a5,1
    8000326c:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80003270:	fc05b783          	ld	a5,-64(a1)
    80003274:	00078863          	beqz	a5,80003284 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80003278:	0107c603          	lbu	a2,16(a5)
    8000327c:	00100693          	li	a3,1
    80003280:	02d60463          	beq	a2,a3,800032a8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80003284:	fc85b783          	ld	a5,-56(a1)
    80003288:	06078c63          	beqz	a5,80003300 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    8000328c:	0107c683          	lbu	a3,16(a5)
    80003290:	00100713          	li	a4,1
    80003294:	02e68e63          	beq	a3,a4,800032d0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80003298:	00000513          	li	a0,0
}
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret
        curr->size +=next->size;
    800032a8:	0187b603          	ld	a2,24(a5)
    800032ac:	fd85b683          	ld	a3,-40(a1)
    800032b0:	00c686b3          	add	a3,a3,a2
    800032b4:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    800032b8:	0007b683          	ld	a3,0(a5)
    800032bc:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    800032c0:	0007b783          	ld	a5,0(a5)
    800032c4:	fc0780e3          	beqz	a5,80003284 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    800032c8:	00e7b423          	sd	a4,8(a5)
    800032cc:	fb9ff06f          	j	80003284 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    800032d0:	fd85b683          	ld	a3,-40(a1)
    800032d4:	0187b703          	ld	a4,24(a5)
    800032d8:	00d70733          	add	a4,a4,a3
    800032dc:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    800032e0:	fc05b703          	ld	a4,-64(a1)
    800032e4:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    800032e8:	02070063          	beqz	a4,80003308 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    800032ec:	00f73423          	sd	a5,8(a4)
    return 0;
    800032f0:	00000513          	li	a0,0
    800032f4:	fa9ff06f          	j	8000329c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    800032f8:	fff00513          	li	a0,-1
    800032fc:	fa1ff06f          	j	8000329c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80003300:	00000513          	li	a0,0
    80003304:	f99ff06f          	j	8000329c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80003308:	00000513          	li	a0,0
    8000330c:	f91ff06f          	j	8000329c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080003310 <HandleInterupt>:
#include "Konsole.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    80003310:	fc010113          	addi	sp,sp,-64
    80003314:	02113c23          	sd	ra,56(sp)
    80003318:	02813823          	sd	s0,48(sp)
    8000331c:	02913423          	sd	s1,40(sp)
    80003320:	03213023          	sd	s2,32(sp)
    80003324:	01313c23          	sd	s3,24(sp)
    80003328:	01413823          	sd	s4,16(sp)
    8000332c:	01513423          	sd	s5,8(sp)
    80003330:	01613023          	sd	s6,0(sp)
    80003334:	04010413          	addi	s0,sp,64
    80003338:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000333c:	142029f3          	csrr	s3,scause

    KThread* current = Scheduler::GetRunning();
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	b08080e7          	jalr	-1272(ra) # 80001e48 <_ZN9Scheduler10GetRunningEv>
    80003348:	00050493          	mv	s1,a0
    if (current != nullptr) {
    8000334c:	04050863          	beqz	a0,8000339c <HandleInterupt+0x8c>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    80003350:	00000713          	li	a4,0
    80003354:	01f00793          	li	a5,31
    80003358:	02e7c063          	blt	a5,a4,80003378 <HandleInterupt+0x68>
    8000335c:	00371793          	slli	a5,a4,0x3
    80003360:	00f906b3          	add	a3,s2,a5
    80003364:	0006b683          	ld	a3,0(a3)
    80003368:	00f487b3          	add	a5,s1,a5
    8000336c:	04d7b023          	sd	a3,64(a5)
    80003370:	0017071b          	addiw	a4,a4,1
    80003374:	fe1ff06f          	j	80003354 <HandleInterupt+0x44>
        ctx.x[2] = (size_t)frame + 256;
    80003378:	10090793          	addi	a5,s2,256
    8000337c:	04f4b823          	sd	a5,80(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80003380:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80003384:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    80003388:	ff898793          	addi	a5,s3,-8
    8000338c:	00100613          	li	a2,1
    80003390:	06f67663          	bgeu	a2,a5,800033fc <HandleInterupt+0xec>
        ctx.sepc    = sepc;
    80003394:	14e4b023          	sd	a4,320(s1)
        ctx.sstatus = sstatus;
    80003398:	14d4b423          	sd	a3,328(s1)
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
    8000339c:	fff00793          	li	a5,-1
    800033a0:	03f79793          	slli	a5,a5,0x3f
    800033a4:	00178793          	addi	a5,a5,1
    800033a8:	04f98e63          	beq	s3,a5,80003404 <HandleInterupt+0xf4>
        Scheduler::timerTick(current);
        return;
    }

    if (scause == 0x8000000000000009UL) {
    800033ac:	fff00793          	li	a5,-1
    800033b0:	03f79793          	slli	a5,a5,0x3f
    800033b4:	00978793          	addi	a5,a5,9
    800033b8:	04f98e63          	beq	s3,a5,80003414 <HandleInterupt+0x104>
        Konsole::handleInterrupt();
        return;
    }

    if (scause != 8 && scause != 9) {
    800033bc:	ff898793          	addi	a5,s3,-8
    800033c0:	00100713          	li	a4,1
    800033c4:	04f76e63          	bltu	a4,a5,80003420 <HandleInterupt+0x110>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800033c8:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800033cc:	00478793          	addi	a5,a5,4
    800033d0:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    800033d4:	05093783          	ld	a5,80(s2)
    switch (code) {
    800033d8:	04200713          	li	a4,66
    800033dc:	04f76a63          	bltu	a4,a5,80003430 <HandleInterupt+0x120>
    800033e0:	00279793          	slli	a5,a5,0x2
    800033e4:	00003717          	auipc	a4,0x3
    800033e8:	c3c70713          	addi	a4,a4,-964 # 80006020 <CONSOLE_STATUS+0x10>
    800033ec:	00e787b3          	add	a5,a5,a4
    800033f0:	0007a783          	lw	a5,0(a5)
    800033f4:	00e787b3          	add	a5,a5,a4
    800033f8:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    800033fc:	00470713          	addi	a4,a4,4
    80003400:	f95ff06f          	j	80003394 <HandleInterupt+0x84>
        Scheduler::timerTick(current);
    80003404:	00048513          	mv	a0,s1
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	d20080e7          	jalr	-736(ra) # 80002128 <_ZN9Scheduler9timerTickEP7KThread>
        return;
    80003410:	0200006f          	j	80003430 <HandleInterupt+0x120>
        Konsole::handleInterrupt();
    80003414:	fffff097          	auipc	ra,0xfffff
    80003418:	130080e7          	jalr	304(ra) # 80002544 <_ZN7Konsole15handleInterruptEv>
        return;
    8000341c:	0140006f          	j	80003430 <HandleInterupt+0x120>
        if ((scause >> 63) == 0) {  // exception, not interrupt
    80003420:	0009c863          	bltz	s3,80003430 <HandleInterupt+0x120>
            __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80003424:	141027f3          	csrr	a5,sepc
            __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80003428:	00478793          	addi	a5,a5,4
    8000342c:	14179073          	csrw	sepc,a5
        default: {
            break;
        }
    }
    return;
}
    80003430:	03813083          	ld	ra,56(sp)
    80003434:	03013403          	ld	s0,48(sp)
    80003438:	02813483          	ld	s1,40(sp)
    8000343c:	02013903          	ld	s2,32(sp)
    80003440:	01813983          	ld	s3,24(sp)
    80003444:	01013a03          	ld	s4,16(sp)
    80003448:	00813a83          	ld	s5,8(sp)
    8000344c:	00013b03          	ld	s6,0(sp)
    80003450:	04010113          	addi	sp,sp,64
    80003454:	00008067          	ret
            size_t size = frame[11];
    80003458:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	d00080e7          	jalr	-768(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    80003464:	00048593          	mv	a1,s1
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	d50080e7          	jalr	-688(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80003470:	00050513          	mv	a0,a0
            break;
    80003474:	fbdff06f          	j	80003430 <HandleInterupt+0x120>
            void* ptr = (void*)frame[11];
    80003478:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	ce0080e7          	jalr	-800(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    80003484:	00048593          	mv	a1,s1
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	dcc080e7          	jalr	-564(ra) # 80003254 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80003490:	fa1ff06f          	j	80003430 <HandleInterupt+0x120>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    80003494:	05893983          	ld	s3,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    80003498:	06093a83          	ld	s5,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    8000349c:	06893a03          	ld	s4,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    800034a0:	07093b03          	ld	s6,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KThread));
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	cb8080e7          	jalr	-840(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    800034ac:	15800593          	li	a1,344
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	d08080e7          	jalr	-760(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800034b8:	00050913          	mv	s2,a0
            if (!mem) {
    800034bc:	04050463          	beqz	a0,80003504 <HandleInterupt+0x1f4>
            t->init();
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	760080e7          	jalr	1888(ra) # 80001c20 <_ZN7KThread4initEv>
    800034c8:	01593023          	sd	s5,0(s2)
    800034cc:	01493423          	sd	s4,8(s2)
            t->setup(current, stack_space);
    800034d0:	000b0613          	mv	a2,s6
    800034d4:	00048593          	mv	a1,s1
    800034d8:	00090513          	mv	a0,s2
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	8e8080e7          	jalr	-1816(ra) # 80001dc4 <_ZN7KThread5setupEPS_Pm>
            *handle = reinterpret_cast<thread_t>(t);
    800034e4:	0129b023          	sd	s2,0(s3)
            Scheduler::Put(t);
    800034e8:	00090513          	mv	a0,s2
    800034ec:	fffff097          	auipc	ra,0xfffff
    800034f0:	a94080e7          	jalr	-1388(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
            if (current) current->threadContext.x[10] = 0;
    800034f4:	00048463          	beqz	s1,800034fc <HandleInterupt+0x1ec>
    800034f8:	0804b823          	sd	zero,144(s1)
            __asm__ volatile("li a0, 0");
    800034fc:	00000513          	li	a0,0
            break;
    80003500:	f31ff06f          	j	80003430 <HandleInterupt+0x120>
                if (current) {
    80003504:	f20486e3          	beqz	s1,80003430 <HandleInterupt+0x120>
                    current->threadContext.x[10] = (size_t)-1;
    80003508:	fff00793          	li	a5,-1
    8000350c:	08f4b823          	sd	a5,144(s1)
                    restoreContext(current->getContext());
    80003510:	00048513          	mv	a0,s1
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	7d4080e7          	jalr	2004(ra) # 80001ce8 <_ZN7KThread10getContextEv>
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	b78080e7          	jalr	-1160(ra) # 80001094 <restoreContext>
                return;
    80003524:	f0dff06f          	j	80003430 <HandleInterupt+0x120>
            Scheduler::ThreadExit(current);
    80003528:	00048513          	mv	a0,s1
    8000352c:	fffff097          	auipc	ra,0xfffff
    80003530:	a00080e7          	jalr	-1536(ra) # 80001f2c <_ZN9Scheduler10ThreadExitEP7KThread>
            break;
    80003534:	efdff06f          	j	80003430 <HandleInterupt+0x120>
            KThread* next = Scheduler::GetNext();
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	96c080e7          	jalr	-1684(ra) # 80001ea4 <_ZN9Scheduler7GetNextEv>
    80003540:	00050913          	mv	s2,a0
            if (next == nullptr) {
    80003544:	02050663          	beqz	a0,80003570 <HandleInterupt+0x260>
            if (current) current->threadContext.x[10] = 0;
    80003548:	00048463          	beqz	s1,80003550 <HandleInterupt+0x240>
    8000354c:	0804b823          	sd	zero,144(s1)
            Scheduler::Put(current);
    80003550:	00048513          	mv	a0,s1
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	a2c080e7          	jalr	-1492(ra) # 80001f80 <_ZN9Scheduler3PutEP7KThread>
            Scheduler::yield(current, next);
    8000355c:	00090593          	mv	a1,s2
    80003560:	00048513          	mv	a0,s1
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	904080e7          	jalr	-1788(ra) # 80001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    8000356c:	ec5ff06f          	j	80003430 <HandleInterupt+0x120>
                __asm__ volatile("li a0, 0");
    80003570:	00000513          	li	a0,0
                break;
    80003574:	ebdff06f          	j	80003430 <HandleInterupt+0x120>
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
    80003578:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)frame[12];
    8000357c:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(KSemaphore));
    80003580:	00000097          	auipc	ra,0x0
    80003584:	bdc080e7          	jalr	-1060(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    80003588:	01800593          	li	a1,24
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	c2c080e7          	jalr	-980(ra) # 800031b8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80003594:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80003598:	00050e63          	beqz	a0,800035b4 <HandleInterupt+0x2a4>
            semaphore->init(initialValue);
    8000359c:	00090593          	mv	a1,s2
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	2c0080e7          	jalr	704(ra) # 80001860 <_ZN10KSemaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    800035a8:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    800035ac:	00000513          	li	a0,0
            break;
    800035b0:	e81ff06f          	j	80003430 <HandleInterupt+0x120>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800035b4:	fff00513          	li	a0,-1
    800035b8:	e79ff06f          	j	80003430 <HandleInterupt+0x120>
            KSemaphore* semaphore = reinterpret_cast<KSemaphore*>(frame[11]);
    800035bc:	05893483          	ld	s1,88(s2)
            semaphore->close();
    800035c0:	00048513          	mv	a0,s1
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	598080e7          	jalr	1432(ra) # 80001b5c <_ZN10KSemaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	b90080e7          	jalr	-1136(ra) # 8000315c <_ZN15MemoryAllocator11GetInstanceEv>
    800035d4:	00048593          	mv	a1,s1
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	c7c080e7          	jalr	-900(ra) # 80003254 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    800035e0:	00000513          	li	a0,0
            break;
    800035e4:	e4dff06f          	j	80003430 <HandleInterupt+0x120>
            int result = semaphore->wait(current);
    800035e8:	00048593          	mv	a1,s1
    800035ec:	05893503          	ld	a0,88(s2)
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	3a8080e7          	jalr	936(ra) # 80001998 <_ZN10KSemaphore4waitEP7KThread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    800035f8:	00a04663          	bgtz	a0,80003604 <HandleInterupt+0x2f4>
    800035fc:	00050513          	mv	a0,a0
    80003600:	e31ff06f          	j	80003430 <HandleInterupt+0x120>
            KThread* next = Scheduler::GetNext();
    80003604:	fffff097          	auipc	ra,0xfffff
    80003608:	8a0080e7          	jalr	-1888(ra) # 80001ea4 <_ZN9Scheduler7GetNextEv>
    8000360c:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80003610:	00050a63          	beqz	a0,80003624 <HandleInterupt+0x314>
            Scheduler::yield(current, next);
    80003614:	00048513          	mv	a0,s1
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	850080e7          	jalr	-1968(ra) # 80001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003620:	e11ff06f          	j	80003430 <HandleInterupt+0x120>
            if (next == nullptr) { while(true){} }
    80003624:	0000006f          	j	80003624 <HandleInterupt+0x314>
            semaphore->signal();
    80003628:	05893503          	ld	a0,88(s2)
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	3cc080e7          	jalr	972(ra) # 800019f8 <_ZN10KSemaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80003634:	00000513          	li	a0,0
            break;
    80003638:	df9ff06f          	j	80003430 <HandleInterupt+0x120>
            int result = semaphore->waitN(current, n);
    8000363c:	06092603          	lw	a2,96(s2)
    80003640:	00048593          	mv	a1,s1
    80003644:	05893503          	ld	a0,88(s2)
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	42c080e7          	jalr	1068(ra) # 80001a74 <_ZN10KSemaphore5waitNEP7KThreadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80003650:	00a04663          	bgtz	a0,8000365c <HandleInterupt+0x34c>
    80003654:	00050513          	mv	a0,a0
    80003658:	dd9ff06f          	j	80003430 <HandleInterupt+0x120>
            KThread* next = Scheduler::GetNext();
    8000365c:	fffff097          	auipc	ra,0xfffff
    80003660:	848080e7          	jalr	-1976(ra) # 80001ea4 <_ZN9Scheduler7GetNextEv>
    80003664:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80003668:	00050a63          	beqz	a0,8000367c <HandleInterupt+0x36c>
            Scheduler::yield(current, next);
    8000366c:	00048513          	mv	a0,s1
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	7f8080e7          	jalr	2040(ra) # 80001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    80003678:	db9ff06f          	j	80003430 <HandleInterupt+0x120>
            if (next == nullptr) { while(true){} }
    8000367c:	0000006f          	j	8000367c <HandleInterupt+0x36c>
            semaphore->signalN(n);
    80003680:	06092583          	lw	a1,96(s2)
    80003684:	05893503          	ld	a0,88(s2)
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	45c080e7          	jalr	1116(ra) # 80001ae4 <_ZN10KSemaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80003690:	00000513          	li	a0,0
            break;
    80003694:	d9dff06f          	j	80003430 <HandleInterupt+0x120>
            time_t dur = (time_t)frame[11];
    80003698:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    8000369c:	00048463          	beqz	s1,800036a4 <HandleInterupt+0x394>
    800036a0:	0804b823          	sd	zero,144(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    800036a4:	00059663          	bnez	a1,800036b0 <HandleInterupt+0x3a0>
    800036a8:	00000513          	li	a0,0
    800036ac:	d85ff06f          	j	80003430 <HandleInterupt+0x120>
            Scheduler::sleep(current, dur);
    800036b0:	00048513          	mv	a0,s1
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	b74080e7          	jalr	-1164(ra) # 80002228 <_ZN9Scheduler5sleepEP7KThreadm>
            KThread* next = Scheduler::GetNext();
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	7e8080e7          	jalr	2024(ra) # 80001ea4 <_ZN9Scheduler7GetNextEv>
    800036c4:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    800036c8:	00050a63          	beqz	a0,800036dc <HandleInterupt+0x3cc>
            Scheduler::yield(current, next);
    800036cc:	00048513          	mv	a0,s1
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	798080e7          	jalr	1944(ra) # 80001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>
            break;
    800036d8:	d59ff06f          	j	80003430 <HandleInterupt+0x120>
            if (next == nullptr) { while(true){} }
    800036dc:	0000006f          	j	800036dc <HandleInterupt+0x3cc>
            int result = Konsole::getcKernel(current);
    800036e0:	00048513          	mv	a0,s1
    800036e4:	fffff097          	auipc	ra,0xfffff
    800036e8:	fe4080e7          	jalr	-28(ra) # 800026c8 <_ZN7Konsole10getcKernelEP7KThread>
            if (result == -2) {
    800036ec:	ffe00713          	li	a4,-2
    800036f0:	00e50863          	beq	a0,a4,80003700 <HandleInterupt+0x3f0>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    800036f4:	0ff57793          	andi	a5,a0,255
    800036f8:	00078513          	mv	a0,a5
    800036fc:	d35ff06f          	j	80003430 <HandleInterupt+0x120>
                KThread* next = Scheduler::GetNext();
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	7a4080e7          	jalr	1956(ra) # 80001ea4 <_ZN9Scheduler7GetNextEv>
    80003708:	00050593          	mv	a1,a0
                if (next == nullptr) { while(true){} }
    8000370c:	00050a63          	beqz	a0,80003720 <HandleInterupt+0x410>
                Scheduler::yield(current, next);
    80003710:	00048513          	mv	a0,s1
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	754080e7          	jalr	1876(ra) # 80001e68 <_ZN9Scheduler5yieldEP7KThreadS1_>
    8000371c:	d15ff06f          	j	80003430 <HandleInterupt+0x120>
                if (next == nullptr) { while(true){} }
    80003720:	0000006f          	j	80003720 <HandleInterupt+0x410>
            int result = Konsole::putcKernel(current, c);
    80003724:	05894583          	lbu	a1,88(s2)
    80003728:	00048513          	mv	a0,s1
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	efc080e7          	jalr	-260(ra) # 80002628 <_ZN7Konsole10putcKernelEP7KThreadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80003734:	00050513          	mv	a0,a0
            break;
    80003738:	cf9ff06f          	j	80003430 <HandleInterupt+0x120>

000000008000373c <start_main_thread>:

extern "C" {
int start_main_thread() {
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00113423          	sd	ra,8(sp)
    80003744:	00813023          	sd	s0,0(sp)
    80003748:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    8000374c:	fffff097          	auipc	ra,0xfffff
    80003750:	8ec080e7          	jalr	-1812(ra) # 80002038 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	d34080e7          	jalr	-716(ra) # 80002488 <_ZN7Konsole4initEv>
    return 0;
}
    8000375c:	00000513          	li	a0,0
    80003760:	00813083          	ld	ra,8(sp)
    80003764:	00013403          	ld	s0,0(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret

0000000080003770 <start>:
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00813423          	sd	s0,8(sp)
    80003778:	01010413          	addi	s0,sp,16
    8000377c:	300027f3          	csrr	a5,mstatus
    80003780:	ffffe737          	lui	a4,0xffffe
    80003784:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff614f>
    80003788:	00e7f7b3          	and	a5,a5,a4
    8000378c:	00001737          	lui	a4,0x1
    80003790:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003794:	00e7e7b3          	or	a5,a5,a4
    80003798:	30079073          	csrw	mstatus,a5
    8000379c:	00000797          	auipc	a5,0x0
    800037a0:	16078793          	addi	a5,a5,352 # 800038fc <system_main>
    800037a4:	34179073          	csrw	mepc,a5
    800037a8:	00000793          	li	a5,0
    800037ac:	18079073          	csrw	satp,a5
    800037b0:	000107b7          	lui	a5,0x10
    800037b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800037b8:	30279073          	csrw	medeleg,a5
    800037bc:	30379073          	csrw	mideleg,a5
    800037c0:	104027f3          	csrr	a5,sie
    800037c4:	2227e793          	ori	a5,a5,546
    800037c8:	10479073          	csrw	sie,a5
    800037cc:	fff00793          	li	a5,-1
    800037d0:	00a7d793          	srli	a5,a5,0xa
    800037d4:	3b079073          	csrw	pmpaddr0,a5
    800037d8:	00f00793          	li	a5,15
    800037dc:	3a079073          	csrw	pmpcfg0,a5
    800037e0:	f14027f3          	csrr	a5,mhartid
    800037e4:	0200c737          	lui	a4,0x200c
    800037e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800037ec:	0007869b          	sext.w	a3,a5
    800037f0:	00269713          	slli	a4,a3,0x2
    800037f4:	000f4637          	lui	a2,0xf4
    800037f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800037fc:	00d70733          	add	a4,a4,a3
    80003800:	0037979b          	slliw	a5,a5,0x3
    80003804:	020046b7          	lui	a3,0x2004
    80003808:	00d787b3          	add	a5,a5,a3
    8000380c:	00c585b3          	add	a1,a1,a2
    80003810:	00371693          	slli	a3,a4,0x3
    80003814:	00004717          	auipc	a4,0x4
    80003818:	c3c70713          	addi	a4,a4,-964 # 80007450 <timer_scratch>
    8000381c:	00b7b023          	sd	a1,0(a5)
    80003820:	00d70733          	add	a4,a4,a3
    80003824:	00f73c23          	sd	a5,24(a4)
    80003828:	02c73023          	sd	a2,32(a4)
    8000382c:	34071073          	csrw	mscratch,a4
    80003830:	00000797          	auipc	a5,0x0
    80003834:	6e078793          	addi	a5,a5,1760 # 80003f10 <timervec>
    80003838:	30579073          	csrw	mtvec,a5
    8000383c:	300027f3          	csrr	a5,mstatus
    80003840:	0087e793          	ori	a5,a5,8
    80003844:	30079073          	csrw	mstatus,a5
    80003848:	304027f3          	csrr	a5,mie
    8000384c:	0807e793          	ori	a5,a5,128
    80003850:	30479073          	csrw	mie,a5
    80003854:	f14027f3          	csrr	a5,mhartid
    80003858:	0007879b          	sext.w	a5,a5
    8000385c:	00078213          	mv	tp,a5
    80003860:	30200073          	mret
    80003864:	00813403          	ld	s0,8(sp)
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00008067          	ret

0000000080003870 <timerinit>:
    80003870:	ff010113          	addi	sp,sp,-16
    80003874:	00813423          	sd	s0,8(sp)
    80003878:	01010413          	addi	s0,sp,16
    8000387c:	f14027f3          	csrr	a5,mhartid
    80003880:	0200c737          	lui	a4,0x200c
    80003884:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003888:	0007869b          	sext.w	a3,a5
    8000388c:	00269713          	slli	a4,a3,0x2
    80003890:	000f4637          	lui	a2,0xf4
    80003894:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003898:	00d70733          	add	a4,a4,a3
    8000389c:	0037979b          	slliw	a5,a5,0x3
    800038a0:	020046b7          	lui	a3,0x2004
    800038a4:	00d787b3          	add	a5,a5,a3
    800038a8:	00c585b3          	add	a1,a1,a2
    800038ac:	00371693          	slli	a3,a4,0x3
    800038b0:	00004717          	auipc	a4,0x4
    800038b4:	ba070713          	addi	a4,a4,-1120 # 80007450 <timer_scratch>
    800038b8:	00b7b023          	sd	a1,0(a5)
    800038bc:	00d70733          	add	a4,a4,a3
    800038c0:	00f73c23          	sd	a5,24(a4)
    800038c4:	02c73023          	sd	a2,32(a4)
    800038c8:	34071073          	csrw	mscratch,a4
    800038cc:	00000797          	auipc	a5,0x0
    800038d0:	64478793          	addi	a5,a5,1604 # 80003f10 <timervec>
    800038d4:	30579073          	csrw	mtvec,a5
    800038d8:	300027f3          	csrr	a5,mstatus
    800038dc:	0087e793          	ori	a5,a5,8
    800038e0:	30079073          	csrw	mstatus,a5
    800038e4:	304027f3          	csrr	a5,mie
    800038e8:	0807e793          	ori	a5,a5,128
    800038ec:	30479073          	csrw	mie,a5
    800038f0:	00813403          	ld	s0,8(sp)
    800038f4:	01010113          	addi	sp,sp,16
    800038f8:	00008067          	ret

00000000800038fc <system_main>:
    800038fc:	fe010113          	addi	sp,sp,-32
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	00113c23          	sd	ra,24(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	00000097          	auipc	ra,0x0
    80003914:	0c4080e7          	jalr	196(ra) # 800039d4 <cpuid>
    80003918:	00004497          	auipc	s1,0x4
    8000391c:	89848493          	addi	s1,s1,-1896 # 800071b0 <started>
    80003920:	02050263          	beqz	a0,80003944 <system_main+0x48>
    80003924:	0004a783          	lw	a5,0(s1)
    80003928:	0007879b          	sext.w	a5,a5
    8000392c:	fe078ce3          	beqz	a5,80003924 <system_main+0x28>
    80003930:	0ff0000f          	fence
    80003934:	00003517          	auipc	a0,0x3
    80003938:	82c50513          	addi	a0,a0,-2004 # 80006160 <CONSOLE_STATUS+0x150>
    8000393c:	00001097          	auipc	ra,0x1
    80003940:	a70080e7          	jalr	-1424(ra) # 800043ac <panic>
    80003944:	00001097          	auipc	ra,0x1
    80003948:	9c4080e7          	jalr	-1596(ra) # 80004308 <consoleinit>
    8000394c:	00001097          	auipc	ra,0x1
    80003950:	150080e7          	jalr	336(ra) # 80004a9c <printfinit>
    80003954:	00003517          	auipc	a0,0x3
    80003958:	8ec50513          	addi	a0,a0,-1812 # 80006240 <CONSOLE_STATUS+0x230>
    8000395c:	00001097          	auipc	ra,0x1
    80003960:	aac080e7          	jalr	-1364(ra) # 80004408 <__printf>
    80003964:	00002517          	auipc	a0,0x2
    80003968:	7cc50513          	addi	a0,a0,1996 # 80006130 <CONSOLE_STATUS+0x120>
    8000396c:	00001097          	auipc	ra,0x1
    80003970:	a9c080e7          	jalr	-1380(ra) # 80004408 <__printf>
    80003974:	00003517          	auipc	a0,0x3
    80003978:	8cc50513          	addi	a0,a0,-1844 # 80006240 <CONSOLE_STATUS+0x230>
    8000397c:	00001097          	auipc	ra,0x1
    80003980:	a8c080e7          	jalr	-1396(ra) # 80004408 <__printf>
    80003984:	00001097          	auipc	ra,0x1
    80003988:	4a4080e7          	jalr	1188(ra) # 80004e28 <kinit>
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	148080e7          	jalr	328(ra) # 80003ad4 <trapinit>
    80003994:	00000097          	auipc	ra,0x0
    80003998:	16c080e7          	jalr	364(ra) # 80003b00 <trapinithart>
    8000399c:	00000097          	auipc	ra,0x0
    800039a0:	5b4080e7          	jalr	1460(ra) # 80003f50 <plicinit>
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	5d4080e7          	jalr	1492(ra) # 80003f78 <plicinithart>
    800039ac:	00000097          	auipc	ra,0x0
    800039b0:	078080e7          	jalr	120(ra) # 80003a24 <userinit>
    800039b4:	0ff0000f          	fence
    800039b8:	00100793          	li	a5,1
    800039bc:	00002517          	auipc	a0,0x2
    800039c0:	78c50513          	addi	a0,a0,1932 # 80006148 <CONSOLE_STATUS+0x138>
    800039c4:	00f4a023          	sw	a5,0(s1)
    800039c8:	00001097          	auipc	ra,0x1
    800039cc:	a40080e7          	jalr	-1472(ra) # 80004408 <__printf>
    800039d0:	0000006f          	j	800039d0 <system_main+0xd4>

00000000800039d4 <cpuid>:
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00813423          	sd	s0,8(sp)
    800039dc:	01010413          	addi	s0,sp,16
    800039e0:	00020513          	mv	a0,tp
    800039e4:	00813403          	ld	s0,8(sp)
    800039e8:	0005051b          	sext.w	a0,a0
    800039ec:	01010113          	addi	sp,sp,16
    800039f0:	00008067          	ret

00000000800039f4 <mycpu>:
    800039f4:	ff010113          	addi	sp,sp,-16
    800039f8:	00813423          	sd	s0,8(sp)
    800039fc:	01010413          	addi	s0,sp,16
    80003a00:	00020793          	mv	a5,tp
    80003a04:	00813403          	ld	s0,8(sp)
    80003a08:	0007879b          	sext.w	a5,a5
    80003a0c:	00779793          	slli	a5,a5,0x7
    80003a10:	00005517          	auipc	a0,0x5
    80003a14:	a7050513          	addi	a0,a0,-1424 # 80008480 <cpus>
    80003a18:	00f50533          	add	a0,a0,a5
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret

0000000080003a24 <userinit>:
    80003a24:	ff010113          	addi	sp,sp,-16
    80003a28:	00813423          	sd	s0,8(sp)
    80003a2c:	01010413          	addi	s0,sp,16
    80003a30:	00813403          	ld	s0,8(sp)
    80003a34:	01010113          	addi	sp,sp,16
    80003a38:	ffffe317          	auipc	t1,0xffffe
    80003a3c:	dd830067          	jr	-552(t1) # 80001810 <main>

0000000080003a40 <either_copyout>:
    80003a40:	ff010113          	addi	sp,sp,-16
    80003a44:	00813023          	sd	s0,0(sp)
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	01010413          	addi	s0,sp,16
    80003a50:	02051663          	bnez	a0,80003a7c <either_copyout+0x3c>
    80003a54:	00058513          	mv	a0,a1
    80003a58:	00060593          	mv	a1,a2
    80003a5c:	0006861b          	sext.w	a2,a3
    80003a60:	00002097          	auipc	ra,0x2
    80003a64:	c54080e7          	jalr	-940(ra) # 800056b4 <__memmove>
    80003a68:	00813083          	ld	ra,8(sp)
    80003a6c:	00013403          	ld	s0,0(sp)
    80003a70:	00000513          	li	a0,0
    80003a74:	01010113          	addi	sp,sp,16
    80003a78:	00008067          	ret
    80003a7c:	00002517          	auipc	a0,0x2
    80003a80:	70c50513          	addi	a0,a0,1804 # 80006188 <CONSOLE_STATUS+0x178>
    80003a84:	00001097          	auipc	ra,0x1
    80003a88:	928080e7          	jalr	-1752(ra) # 800043ac <panic>

0000000080003a8c <either_copyin>:
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00813023          	sd	s0,0(sp)
    80003a94:	00113423          	sd	ra,8(sp)
    80003a98:	01010413          	addi	s0,sp,16
    80003a9c:	02059463          	bnez	a1,80003ac4 <either_copyin+0x38>
    80003aa0:	00060593          	mv	a1,a2
    80003aa4:	0006861b          	sext.w	a2,a3
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	c0c080e7          	jalr	-1012(ra) # 800056b4 <__memmove>
    80003ab0:	00813083          	ld	ra,8(sp)
    80003ab4:	00013403          	ld	s0,0(sp)
    80003ab8:	00000513          	li	a0,0
    80003abc:	01010113          	addi	sp,sp,16
    80003ac0:	00008067          	ret
    80003ac4:	00002517          	auipc	a0,0x2
    80003ac8:	6ec50513          	addi	a0,a0,1772 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80003acc:	00001097          	auipc	ra,0x1
    80003ad0:	8e0080e7          	jalr	-1824(ra) # 800043ac <panic>

0000000080003ad4 <trapinit>:
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00813423          	sd	s0,8(sp)
    80003adc:	01010413          	addi	s0,sp,16
    80003ae0:	00813403          	ld	s0,8(sp)
    80003ae4:	00002597          	auipc	a1,0x2
    80003ae8:	6f458593          	addi	a1,a1,1780 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003aec:	00005517          	auipc	a0,0x5
    80003af0:	a1450513          	addi	a0,a0,-1516 # 80008500 <tickslock>
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00001317          	auipc	t1,0x1
    80003afc:	5c030067          	jr	1472(t1) # 800050b8 <initlock>

0000000080003b00 <trapinithart>:
    80003b00:	ff010113          	addi	sp,sp,-16
    80003b04:	00813423          	sd	s0,8(sp)
    80003b08:	01010413          	addi	s0,sp,16
    80003b0c:	00000797          	auipc	a5,0x0
    80003b10:	2f478793          	addi	a5,a5,756 # 80003e00 <kernelvec>
    80003b14:	10579073          	csrw	stvec,a5
    80003b18:	00813403          	ld	s0,8(sp)
    80003b1c:	01010113          	addi	sp,sp,16
    80003b20:	00008067          	ret

0000000080003b24 <usertrap>:
    80003b24:	ff010113          	addi	sp,sp,-16
    80003b28:	00813423          	sd	s0,8(sp)
    80003b2c:	01010413          	addi	s0,sp,16
    80003b30:	00813403          	ld	s0,8(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret

0000000080003b3c <usertrapret>:
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00813423          	sd	s0,8(sp)
    80003b44:	01010413          	addi	s0,sp,16
    80003b48:	00813403          	ld	s0,8(sp)
    80003b4c:	01010113          	addi	sp,sp,16
    80003b50:	00008067          	ret

0000000080003b54 <kerneltrap>:
    80003b54:	fe010113          	addi	sp,sp,-32
    80003b58:	00813823          	sd	s0,16(sp)
    80003b5c:	00113c23          	sd	ra,24(sp)
    80003b60:	00913423          	sd	s1,8(sp)
    80003b64:	02010413          	addi	s0,sp,32
    80003b68:	142025f3          	csrr	a1,scause
    80003b6c:	100027f3          	csrr	a5,sstatus
    80003b70:	0027f793          	andi	a5,a5,2
    80003b74:	10079c63          	bnez	a5,80003c8c <kerneltrap+0x138>
    80003b78:	142027f3          	csrr	a5,scause
    80003b7c:	0207ce63          	bltz	a5,80003bb8 <kerneltrap+0x64>
    80003b80:	00002517          	auipc	a0,0x2
    80003b84:	6a050513          	addi	a0,a0,1696 # 80006220 <CONSOLE_STATUS+0x210>
    80003b88:	00001097          	auipc	ra,0x1
    80003b8c:	880080e7          	jalr	-1920(ra) # 80004408 <__printf>
    80003b90:	141025f3          	csrr	a1,sepc
    80003b94:	14302673          	csrr	a2,stval
    80003b98:	00002517          	auipc	a0,0x2
    80003b9c:	69850513          	addi	a0,a0,1688 # 80006230 <CONSOLE_STATUS+0x220>
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	868080e7          	jalr	-1944(ra) # 80004408 <__printf>
    80003ba8:	00002517          	auipc	a0,0x2
    80003bac:	6a050513          	addi	a0,a0,1696 # 80006248 <CONSOLE_STATUS+0x238>
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	7fc080e7          	jalr	2044(ra) # 800043ac <panic>
    80003bb8:	0ff7f713          	andi	a4,a5,255
    80003bbc:	00900693          	li	a3,9
    80003bc0:	04d70063          	beq	a4,a3,80003c00 <kerneltrap+0xac>
    80003bc4:	fff00713          	li	a4,-1
    80003bc8:	03f71713          	slli	a4,a4,0x3f
    80003bcc:	00170713          	addi	a4,a4,1
    80003bd0:	fae798e3          	bne	a5,a4,80003b80 <kerneltrap+0x2c>
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	e00080e7          	jalr	-512(ra) # 800039d4 <cpuid>
    80003bdc:	06050663          	beqz	a0,80003c48 <kerneltrap+0xf4>
    80003be0:	144027f3          	csrr	a5,sip
    80003be4:	ffd7f793          	andi	a5,a5,-3
    80003be8:	14479073          	csrw	sip,a5
    80003bec:	01813083          	ld	ra,24(sp)
    80003bf0:	01013403          	ld	s0,16(sp)
    80003bf4:	00813483          	ld	s1,8(sp)
    80003bf8:	02010113          	addi	sp,sp,32
    80003bfc:	00008067          	ret
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	3c4080e7          	jalr	964(ra) # 80003fc4 <plic_claim>
    80003c08:	00a00793          	li	a5,10
    80003c0c:	00050493          	mv	s1,a0
    80003c10:	06f50863          	beq	a0,a5,80003c80 <kerneltrap+0x12c>
    80003c14:	fc050ce3          	beqz	a0,80003bec <kerneltrap+0x98>
    80003c18:	00050593          	mv	a1,a0
    80003c1c:	00002517          	auipc	a0,0x2
    80003c20:	5e450513          	addi	a0,a0,1508 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	7e4080e7          	jalr	2020(ra) # 80004408 <__printf>
    80003c2c:	01013403          	ld	s0,16(sp)
    80003c30:	01813083          	ld	ra,24(sp)
    80003c34:	00048513          	mv	a0,s1
    80003c38:	00813483          	ld	s1,8(sp)
    80003c3c:	02010113          	addi	sp,sp,32
    80003c40:	00000317          	auipc	t1,0x0
    80003c44:	3bc30067          	jr	956(t1) # 80003ffc <plic_complete>
    80003c48:	00005517          	auipc	a0,0x5
    80003c4c:	8b850513          	addi	a0,a0,-1864 # 80008500 <tickslock>
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	48c080e7          	jalr	1164(ra) # 800050dc <acquire>
    80003c58:	00003717          	auipc	a4,0x3
    80003c5c:	55c70713          	addi	a4,a4,1372 # 800071b4 <ticks>
    80003c60:	00072783          	lw	a5,0(a4)
    80003c64:	00005517          	auipc	a0,0x5
    80003c68:	89c50513          	addi	a0,a0,-1892 # 80008500 <tickslock>
    80003c6c:	0017879b          	addiw	a5,a5,1
    80003c70:	00f72023          	sw	a5,0(a4)
    80003c74:	00001097          	auipc	ra,0x1
    80003c78:	534080e7          	jalr	1332(ra) # 800051a8 <release>
    80003c7c:	f65ff06f          	j	80003be0 <kerneltrap+0x8c>
    80003c80:	00001097          	auipc	ra,0x1
    80003c84:	090080e7          	jalr	144(ra) # 80004d10 <uartintr>
    80003c88:	fa5ff06f          	j	80003c2c <kerneltrap+0xd8>
    80003c8c:	00002517          	auipc	a0,0x2
    80003c90:	55450513          	addi	a0,a0,1364 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	718080e7          	jalr	1816(ra) # 800043ac <panic>

0000000080003c9c <clockintr>:
    80003c9c:	fe010113          	addi	sp,sp,-32
    80003ca0:	00813823          	sd	s0,16(sp)
    80003ca4:	00913423          	sd	s1,8(sp)
    80003ca8:	00113c23          	sd	ra,24(sp)
    80003cac:	02010413          	addi	s0,sp,32
    80003cb0:	00005497          	auipc	s1,0x5
    80003cb4:	85048493          	addi	s1,s1,-1968 # 80008500 <tickslock>
    80003cb8:	00048513          	mv	a0,s1
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	420080e7          	jalr	1056(ra) # 800050dc <acquire>
    80003cc4:	00003717          	auipc	a4,0x3
    80003cc8:	4f070713          	addi	a4,a4,1264 # 800071b4 <ticks>
    80003ccc:	00072783          	lw	a5,0(a4)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	01813083          	ld	ra,24(sp)
    80003cd8:	00048513          	mv	a0,s1
    80003cdc:	0017879b          	addiw	a5,a5,1
    80003ce0:	00813483          	ld	s1,8(sp)
    80003ce4:	00f72023          	sw	a5,0(a4)
    80003ce8:	02010113          	addi	sp,sp,32
    80003cec:	00001317          	auipc	t1,0x1
    80003cf0:	4bc30067          	jr	1212(t1) # 800051a8 <release>

0000000080003cf4 <devintr>:
    80003cf4:	142027f3          	csrr	a5,scause
    80003cf8:	00000513          	li	a0,0
    80003cfc:	0007c463          	bltz	a5,80003d04 <devintr+0x10>
    80003d00:	00008067          	ret
    80003d04:	fe010113          	addi	sp,sp,-32
    80003d08:	00813823          	sd	s0,16(sp)
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	00913423          	sd	s1,8(sp)
    80003d14:	02010413          	addi	s0,sp,32
    80003d18:	0ff7f713          	andi	a4,a5,255
    80003d1c:	00900693          	li	a3,9
    80003d20:	04d70c63          	beq	a4,a3,80003d78 <devintr+0x84>
    80003d24:	fff00713          	li	a4,-1
    80003d28:	03f71713          	slli	a4,a4,0x3f
    80003d2c:	00170713          	addi	a4,a4,1
    80003d30:	00e78c63          	beq	a5,a4,80003d48 <devintr+0x54>
    80003d34:	01813083          	ld	ra,24(sp)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	02010113          	addi	sp,sp,32
    80003d44:	00008067          	ret
    80003d48:	00000097          	auipc	ra,0x0
    80003d4c:	c8c080e7          	jalr	-884(ra) # 800039d4 <cpuid>
    80003d50:	06050663          	beqz	a0,80003dbc <devintr+0xc8>
    80003d54:	144027f3          	csrr	a5,sip
    80003d58:	ffd7f793          	andi	a5,a5,-3
    80003d5c:	14479073          	csrw	sip,a5
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	00813483          	ld	s1,8(sp)
    80003d6c:	00200513          	li	a0,2
    80003d70:	02010113          	addi	sp,sp,32
    80003d74:	00008067          	ret
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	24c080e7          	jalr	588(ra) # 80003fc4 <plic_claim>
    80003d80:	00a00793          	li	a5,10
    80003d84:	00050493          	mv	s1,a0
    80003d88:	06f50663          	beq	a0,a5,80003df4 <devintr+0x100>
    80003d8c:	00100513          	li	a0,1
    80003d90:	fa0482e3          	beqz	s1,80003d34 <devintr+0x40>
    80003d94:	00048593          	mv	a1,s1
    80003d98:	00002517          	auipc	a0,0x2
    80003d9c:	46850513          	addi	a0,a0,1128 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	668080e7          	jalr	1640(ra) # 80004408 <__printf>
    80003da8:	00048513          	mv	a0,s1
    80003dac:	00000097          	auipc	ra,0x0
    80003db0:	250080e7          	jalr	592(ra) # 80003ffc <plic_complete>
    80003db4:	00100513          	li	a0,1
    80003db8:	f7dff06f          	j	80003d34 <devintr+0x40>
    80003dbc:	00004517          	auipc	a0,0x4
    80003dc0:	74450513          	addi	a0,a0,1860 # 80008500 <tickslock>
    80003dc4:	00001097          	auipc	ra,0x1
    80003dc8:	318080e7          	jalr	792(ra) # 800050dc <acquire>
    80003dcc:	00003717          	auipc	a4,0x3
    80003dd0:	3e870713          	addi	a4,a4,1000 # 800071b4 <ticks>
    80003dd4:	00072783          	lw	a5,0(a4)
    80003dd8:	00004517          	auipc	a0,0x4
    80003ddc:	72850513          	addi	a0,a0,1832 # 80008500 <tickslock>
    80003de0:	0017879b          	addiw	a5,a5,1
    80003de4:	00f72023          	sw	a5,0(a4)
    80003de8:	00001097          	auipc	ra,0x1
    80003dec:	3c0080e7          	jalr	960(ra) # 800051a8 <release>
    80003df0:	f65ff06f          	j	80003d54 <devintr+0x60>
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	f1c080e7          	jalr	-228(ra) # 80004d10 <uartintr>
    80003dfc:	fadff06f          	j	80003da8 <devintr+0xb4>

0000000080003e00 <kernelvec>:
    80003e00:	f0010113          	addi	sp,sp,-256
    80003e04:	00113023          	sd	ra,0(sp)
    80003e08:	00213423          	sd	sp,8(sp)
    80003e0c:	00313823          	sd	gp,16(sp)
    80003e10:	00413c23          	sd	tp,24(sp)
    80003e14:	02513023          	sd	t0,32(sp)
    80003e18:	02613423          	sd	t1,40(sp)
    80003e1c:	02713823          	sd	t2,48(sp)
    80003e20:	02813c23          	sd	s0,56(sp)
    80003e24:	04913023          	sd	s1,64(sp)
    80003e28:	04a13423          	sd	a0,72(sp)
    80003e2c:	04b13823          	sd	a1,80(sp)
    80003e30:	04c13c23          	sd	a2,88(sp)
    80003e34:	06d13023          	sd	a3,96(sp)
    80003e38:	06e13423          	sd	a4,104(sp)
    80003e3c:	06f13823          	sd	a5,112(sp)
    80003e40:	07013c23          	sd	a6,120(sp)
    80003e44:	09113023          	sd	a7,128(sp)
    80003e48:	09213423          	sd	s2,136(sp)
    80003e4c:	09313823          	sd	s3,144(sp)
    80003e50:	09413c23          	sd	s4,152(sp)
    80003e54:	0b513023          	sd	s5,160(sp)
    80003e58:	0b613423          	sd	s6,168(sp)
    80003e5c:	0b713823          	sd	s7,176(sp)
    80003e60:	0b813c23          	sd	s8,184(sp)
    80003e64:	0d913023          	sd	s9,192(sp)
    80003e68:	0da13423          	sd	s10,200(sp)
    80003e6c:	0db13823          	sd	s11,208(sp)
    80003e70:	0dc13c23          	sd	t3,216(sp)
    80003e74:	0fd13023          	sd	t4,224(sp)
    80003e78:	0fe13423          	sd	t5,232(sp)
    80003e7c:	0ff13823          	sd	t6,240(sp)
    80003e80:	cd5ff0ef          	jal	ra,80003b54 <kerneltrap>
    80003e84:	00013083          	ld	ra,0(sp)
    80003e88:	00813103          	ld	sp,8(sp)
    80003e8c:	01013183          	ld	gp,16(sp)
    80003e90:	02013283          	ld	t0,32(sp)
    80003e94:	02813303          	ld	t1,40(sp)
    80003e98:	03013383          	ld	t2,48(sp)
    80003e9c:	03813403          	ld	s0,56(sp)
    80003ea0:	04013483          	ld	s1,64(sp)
    80003ea4:	04813503          	ld	a0,72(sp)
    80003ea8:	05013583          	ld	a1,80(sp)
    80003eac:	05813603          	ld	a2,88(sp)
    80003eb0:	06013683          	ld	a3,96(sp)
    80003eb4:	06813703          	ld	a4,104(sp)
    80003eb8:	07013783          	ld	a5,112(sp)
    80003ebc:	07813803          	ld	a6,120(sp)
    80003ec0:	08013883          	ld	a7,128(sp)
    80003ec4:	08813903          	ld	s2,136(sp)
    80003ec8:	09013983          	ld	s3,144(sp)
    80003ecc:	09813a03          	ld	s4,152(sp)
    80003ed0:	0a013a83          	ld	s5,160(sp)
    80003ed4:	0a813b03          	ld	s6,168(sp)
    80003ed8:	0b013b83          	ld	s7,176(sp)
    80003edc:	0b813c03          	ld	s8,184(sp)
    80003ee0:	0c013c83          	ld	s9,192(sp)
    80003ee4:	0c813d03          	ld	s10,200(sp)
    80003ee8:	0d013d83          	ld	s11,208(sp)
    80003eec:	0d813e03          	ld	t3,216(sp)
    80003ef0:	0e013e83          	ld	t4,224(sp)
    80003ef4:	0e813f03          	ld	t5,232(sp)
    80003ef8:	0f013f83          	ld	t6,240(sp)
    80003efc:	10010113          	addi	sp,sp,256
    80003f00:	10200073          	sret
    80003f04:	00000013          	nop
    80003f08:	00000013          	nop
    80003f0c:	00000013          	nop

0000000080003f10 <timervec>:
    80003f10:	34051573          	csrrw	a0,mscratch,a0
    80003f14:	00b53023          	sd	a1,0(a0)
    80003f18:	00c53423          	sd	a2,8(a0)
    80003f1c:	00d53823          	sd	a3,16(a0)
    80003f20:	01853583          	ld	a1,24(a0)
    80003f24:	02053603          	ld	a2,32(a0)
    80003f28:	0005b683          	ld	a3,0(a1)
    80003f2c:	00c686b3          	add	a3,a3,a2
    80003f30:	00d5b023          	sd	a3,0(a1)
    80003f34:	00200593          	li	a1,2
    80003f38:	14459073          	csrw	sip,a1
    80003f3c:	01053683          	ld	a3,16(a0)
    80003f40:	00853603          	ld	a2,8(a0)
    80003f44:	00053583          	ld	a1,0(a0)
    80003f48:	34051573          	csrrw	a0,mscratch,a0
    80003f4c:	30200073          	mret

0000000080003f50 <plicinit>:
    80003f50:	ff010113          	addi	sp,sp,-16
    80003f54:	00813423          	sd	s0,8(sp)
    80003f58:	01010413          	addi	s0,sp,16
    80003f5c:	00813403          	ld	s0,8(sp)
    80003f60:	0c0007b7          	lui	a5,0xc000
    80003f64:	00100713          	li	a4,1
    80003f68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003f6c:	00e7a223          	sw	a4,4(a5)
    80003f70:	01010113          	addi	sp,sp,16
    80003f74:	00008067          	ret

0000000080003f78 <plicinithart>:
    80003f78:	ff010113          	addi	sp,sp,-16
    80003f7c:	00813023          	sd	s0,0(sp)
    80003f80:	00113423          	sd	ra,8(sp)
    80003f84:	01010413          	addi	s0,sp,16
    80003f88:	00000097          	auipc	ra,0x0
    80003f8c:	a4c080e7          	jalr	-1460(ra) # 800039d4 <cpuid>
    80003f90:	0085171b          	slliw	a4,a0,0x8
    80003f94:	0c0027b7          	lui	a5,0xc002
    80003f98:	00e787b3          	add	a5,a5,a4
    80003f9c:	40200713          	li	a4,1026
    80003fa0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003fa4:	00813083          	ld	ra,8(sp)
    80003fa8:	00013403          	ld	s0,0(sp)
    80003fac:	00d5151b          	slliw	a0,a0,0xd
    80003fb0:	0c2017b7          	lui	a5,0xc201
    80003fb4:	00a78533          	add	a0,a5,a0
    80003fb8:	00052023          	sw	zero,0(a0)
    80003fbc:	01010113          	addi	sp,sp,16
    80003fc0:	00008067          	ret

0000000080003fc4 <plic_claim>:
    80003fc4:	ff010113          	addi	sp,sp,-16
    80003fc8:	00813023          	sd	s0,0(sp)
    80003fcc:	00113423          	sd	ra,8(sp)
    80003fd0:	01010413          	addi	s0,sp,16
    80003fd4:	00000097          	auipc	ra,0x0
    80003fd8:	a00080e7          	jalr	-1536(ra) # 800039d4 <cpuid>
    80003fdc:	00813083          	ld	ra,8(sp)
    80003fe0:	00013403          	ld	s0,0(sp)
    80003fe4:	00d5151b          	slliw	a0,a0,0xd
    80003fe8:	0c2017b7          	lui	a5,0xc201
    80003fec:	00a78533          	add	a0,a5,a0
    80003ff0:	00452503          	lw	a0,4(a0)
    80003ff4:	01010113          	addi	sp,sp,16
    80003ff8:	00008067          	ret

0000000080003ffc <plic_complete>:
    80003ffc:	fe010113          	addi	sp,sp,-32
    80004000:	00813823          	sd	s0,16(sp)
    80004004:	00913423          	sd	s1,8(sp)
    80004008:	00113c23          	sd	ra,24(sp)
    8000400c:	02010413          	addi	s0,sp,32
    80004010:	00050493          	mv	s1,a0
    80004014:	00000097          	auipc	ra,0x0
    80004018:	9c0080e7          	jalr	-1600(ra) # 800039d4 <cpuid>
    8000401c:	01813083          	ld	ra,24(sp)
    80004020:	01013403          	ld	s0,16(sp)
    80004024:	00d5179b          	slliw	a5,a0,0xd
    80004028:	0c201737          	lui	a4,0xc201
    8000402c:	00f707b3          	add	a5,a4,a5
    80004030:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004034:	00813483          	ld	s1,8(sp)
    80004038:	02010113          	addi	sp,sp,32
    8000403c:	00008067          	ret

0000000080004040 <consolewrite>:
    80004040:	fb010113          	addi	sp,sp,-80
    80004044:	04813023          	sd	s0,64(sp)
    80004048:	04113423          	sd	ra,72(sp)
    8000404c:	02913c23          	sd	s1,56(sp)
    80004050:	03213823          	sd	s2,48(sp)
    80004054:	03313423          	sd	s3,40(sp)
    80004058:	03413023          	sd	s4,32(sp)
    8000405c:	01513c23          	sd	s5,24(sp)
    80004060:	05010413          	addi	s0,sp,80
    80004064:	06c05c63          	blez	a2,800040dc <consolewrite+0x9c>
    80004068:	00060993          	mv	s3,a2
    8000406c:	00050a13          	mv	s4,a0
    80004070:	00058493          	mv	s1,a1
    80004074:	00000913          	li	s2,0
    80004078:	fff00a93          	li	s5,-1
    8000407c:	01c0006f          	j	80004098 <consolewrite+0x58>
    80004080:	fbf44503          	lbu	a0,-65(s0)
    80004084:	0019091b          	addiw	s2,s2,1
    80004088:	00148493          	addi	s1,s1,1
    8000408c:	00001097          	auipc	ra,0x1
    80004090:	a9c080e7          	jalr	-1380(ra) # 80004b28 <uartputc>
    80004094:	03298063          	beq	s3,s2,800040b4 <consolewrite+0x74>
    80004098:	00048613          	mv	a2,s1
    8000409c:	00100693          	li	a3,1
    800040a0:	000a0593          	mv	a1,s4
    800040a4:	fbf40513          	addi	a0,s0,-65
    800040a8:	00000097          	auipc	ra,0x0
    800040ac:	9e4080e7          	jalr	-1564(ra) # 80003a8c <either_copyin>
    800040b0:	fd5518e3          	bne	a0,s5,80004080 <consolewrite+0x40>
    800040b4:	04813083          	ld	ra,72(sp)
    800040b8:	04013403          	ld	s0,64(sp)
    800040bc:	03813483          	ld	s1,56(sp)
    800040c0:	02813983          	ld	s3,40(sp)
    800040c4:	02013a03          	ld	s4,32(sp)
    800040c8:	01813a83          	ld	s5,24(sp)
    800040cc:	00090513          	mv	a0,s2
    800040d0:	03013903          	ld	s2,48(sp)
    800040d4:	05010113          	addi	sp,sp,80
    800040d8:	00008067          	ret
    800040dc:	00000913          	li	s2,0
    800040e0:	fd5ff06f          	j	800040b4 <consolewrite+0x74>

00000000800040e4 <consoleread>:
    800040e4:	f9010113          	addi	sp,sp,-112
    800040e8:	06813023          	sd	s0,96(sp)
    800040ec:	04913c23          	sd	s1,88(sp)
    800040f0:	05213823          	sd	s2,80(sp)
    800040f4:	05313423          	sd	s3,72(sp)
    800040f8:	05413023          	sd	s4,64(sp)
    800040fc:	03513c23          	sd	s5,56(sp)
    80004100:	03613823          	sd	s6,48(sp)
    80004104:	03713423          	sd	s7,40(sp)
    80004108:	03813023          	sd	s8,32(sp)
    8000410c:	06113423          	sd	ra,104(sp)
    80004110:	01913c23          	sd	s9,24(sp)
    80004114:	07010413          	addi	s0,sp,112
    80004118:	00060b93          	mv	s7,a2
    8000411c:	00050913          	mv	s2,a0
    80004120:	00058c13          	mv	s8,a1
    80004124:	00060b1b          	sext.w	s6,a2
    80004128:	00004497          	auipc	s1,0x4
    8000412c:	40048493          	addi	s1,s1,1024 # 80008528 <cons>
    80004130:	00400993          	li	s3,4
    80004134:	fff00a13          	li	s4,-1
    80004138:	00a00a93          	li	s5,10
    8000413c:	05705e63          	blez	s7,80004198 <consoleread+0xb4>
    80004140:	09c4a703          	lw	a4,156(s1)
    80004144:	0984a783          	lw	a5,152(s1)
    80004148:	0007071b          	sext.w	a4,a4
    8000414c:	08e78463          	beq	a5,a4,800041d4 <consoleread+0xf0>
    80004150:	07f7f713          	andi	a4,a5,127
    80004154:	00e48733          	add	a4,s1,a4
    80004158:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000415c:	0017869b          	addiw	a3,a5,1
    80004160:	08d4ac23          	sw	a3,152(s1)
    80004164:	00070c9b          	sext.w	s9,a4
    80004168:	0b370663          	beq	a4,s3,80004214 <consoleread+0x130>
    8000416c:	00100693          	li	a3,1
    80004170:	f9f40613          	addi	a2,s0,-97
    80004174:	000c0593          	mv	a1,s8
    80004178:	00090513          	mv	a0,s2
    8000417c:	f8e40fa3          	sb	a4,-97(s0)
    80004180:	00000097          	auipc	ra,0x0
    80004184:	8c0080e7          	jalr	-1856(ra) # 80003a40 <either_copyout>
    80004188:	01450863          	beq	a0,s4,80004198 <consoleread+0xb4>
    8000418c:	001c0c13          	addi	s8,s8,1
    80004190:	fffb8b9b          	addiw	s7,s7,-1
    80004194:	fb5c94e3          	bne	s9,s5,8000413c <consoleread+0x58>
    80004198:	000b851b          	sext.w	a0,s7
    8000419c:	06813083          	ld	ra,104(sp)
    800041a0:	06013403          	ld	s0,96(sp)
    800041a4:	05813483          	ld	s1,88(sp)
    800041a8:	05013903          	ld	s2,80(sp)
    800041ac:	04813983          	ld	s3,72(sp)
    800041b0:	04013a03          	ld	s4,64(sp)
    800041b4:	03813a83          	ld	s5,56(sp)
    800041b8:	02813b83          	ld	s7,40(sp)
    800041bc:	02013c03          	ld	s8,32(sp)
    800041c0:	01813c83          	ld	s9,24(sp)
    800041c4:	40ab053b          	subw	a0,s6,a0
    800041c8:	03013b03          	ld	s6,48(sp)
    800041cc:	07010113          	addi	sp,sp,112
    800041d0:	00008067          	ret
    800041d4:	00001097          	auipc	ra,0x1
    800041d8:	1d8080e7          	jalr	472(ra) # 800053ac <push_on>
    800041dc:	0984a703          	lw	a4,152(s1)
    800041e0:	09c4a783          	lw	a5,156(s1)
    800041e4:	0007879b          	sext.w	a5,a5
    800041e8:	fef70ce3          	beq	a4,a5,800041e0 <consoleread+0xfc>
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	234080e7          	jalr	564(ra) # 80005420 <pop_on>
    800041f4:	0984a783          	lw	a5,152(s1)
    800041f8:	07f7f713          	andi	a4,a5,127
    800041fc:	00e48733          	add	a4,s1,a4
    80004200:	01874703          	lbu	a4,24(a4)
    80004204:	0017869b          	addiw	a3,a5,1
    80004208:	08d4ac23          	sw	a3,152(s1)
    8000420c:	00070c9b          	sext.w	s9,a4
    80004210:	f5371ee3          	bne	a4,s3,8000416c <consoleread+0x88>
    80004214:	000b851b          	sext.w	a0,s7
    80004218:	f96bf2e3          	bgeu	s7,s6,8000419c <consoleread+0xb8>
    8000421c:	08f4ac23          	sw	a5,152(s1)
    80004220:	f7dff06f          	j	8000419c <consoleread+0xb8>

0000000080004224 <consputc>:
    80004224:	10000793          	li	a5,256
    80004228:	00f50663          	beq	a0,a5,80004234 <consputc+0x10>
    8000422c:	00001317          	auipc	t1,0x1
    80004230:	9f430067          	jr	-1548(t1) # 80004c20 <uartputc_sync>
    80004234:	ff010113          	addi	sp,sp,-16
    80004238:	00113423          	sd	ra,8(sp)
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	01010413          	addi	s0,sp,16
    80004244:	00800513          	li	a0,8
    80004248:	00001097          	auipc	ra,0x1
    8000424c:	9d8080e7          	jalr	-1576(ra) # 80004c20 <uartputc_sync>
    80004250:	02000513          	li	a0,32
    80004254:	00001097          	auipc	ra,0x1
    80004258:	9cc080e7          	jalr	-1588(ra) # 80004c20 <uartputc_sync>
    8000425c:	00013403          	ld	s0,0(sp)
    80004260:	00813083          	ld	ra,8(sp)
    80004264:	00800513          	li	a0,8
    80004268:	01010113          	addi	sp,sp,16
    8000426c:	00001317          	auipc	t1,0x1
    80004270:	9b430067          	jr	-1612(t1) # 80004c20 <uartputc_sync>

0000000080004274 <consoleintr>:
    80004274:	fe010113          	addi	sp,sp,-32
    80004278:	00813823          	sd	s0,16(sp)
    8000427c:	00913423          	sd	s1,8(sp)
    80004280:	01213023          	sd	s2,0(sp)
    80004284:	00113c23          	sd	ra,24(sp)
    80004288:	02010413          	addi	s0,sp,32
    8000428c:	00004917          	auipc	s2,0x4
    80004290:	29c90913          	addi	s2,s2,668 # 80008528 <cons>
    80004294:	00050493          	mv	s1,a0
    80004298:	00090513          	mv	a0,s2
    8000429c:	00001097          	auipc	ra,0x1
    800042a0:	e40080e7          	jalr	-448(ra) # 800050dc <acquire>
    800042a4:	02048c63          	beqz	s1,800042dc <consoleintr+0x68>
    800042a8:	0a092783          	lw	a5,160(s2)
    800042ac:	09892703          	lw	a4,152(s2)
    800042b0:	07f00693          	li	a3,127
    800042b4:	40e7873b          	subw	a4,a5,a4
    800042b8:	02e6e263          	bltu	a3,a4,800042dc <consoleintr+0x68>
    800042bc:	00d00713          	li	a4,13
    800042c0:	04e48063          	beq	s1,a4,80004300 <consoleintr+0x8c>
    800042c4:	07f7f713          	andi	a4,a5,127
    800042c8:	00e90733          	add	a4,s2,a4
    800042cc:	0017879b          	addiw	a5,a5,1
    800042d0:	0af92023          	sw	a5,160(s2)
    800042d4:	00970c23          	sb	s1,24(a4)
    800042d8:	08f92e23          	sw	a5,156(s2)
    800042dc:	01013403          	ld	s0,16(sp)
    800042e0:	01813083          	ld	ra,24(sp)
    800042e4:	00813483          	ld	s1,8(sp)
    800042e8:	00013903          	ld	s2,0(sp)
    800042ec:	00004517          	auipc	a0,0x4
    800042f0:	23c50513          	addi	a0,a0,572 # 80008528 <cons>
    800042f4:	02010113          	addi	sp,sp,32
    800042f8:	00001317          	auipc	t1,0x1
    800042fc:	eb030067          	jr	-336(t1) # 800051a8 <release>
    80004300:	00a00493          	li	s1,10
    80004304:	fc1ff06f          	j	800042c4 <consoleintr+0x50>

0000000080004308 <consoleinit>:
    80004308:	fe010113          	addi	sp,sp,-32
    8000430c:	00113c23          	sd	ra,24(sp)
    80004310:	00813823          	sd	s0,16(sp)
    80004314:	00913423          	sd	s1,8(sp)
    80004318:	02010413          	addi	s0,sp,32
    8000431c:	00004497          	auipc	s1,0x4
    80004320:	20c48493          	addi	s1,s1,524 # 80008528 <cons>
    80004324:	00048513          	mv	a0,s1
    80004328:	00002597          	auipc	a1,0x2
    8000432c:	f3058593          	addi	a1,a1,-208 # 80006258 <CONSOLE_STATUS+0x248>
    80004330:	00001097          	auipc	ra,0x1
    80004334:	d88080e7          	jalr	-632(ra) # 800050b8 <initlock>
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	7ac080e7          	jalr	1964(ra) # 80004ae4 <uartinit>
    80004340:	01813083          	ld	ra,24(sp)
    80004344:	01013403          	ld	s0,16(sp)
    80004348:	00000797          	auipc	a5,0x0
    8000434c:	d9c78793          	addi	a5,a5,-612 # 800040e4 <consoleread>
    80004350:	0af4bc23          	sd	a5,184(s1)
    80004354:	00000797          	auipc	a5,0x0
    80004358:	cec78793          	addi	a5,a5,-788 # 80004040 <consolewrite>
    8000435c:	0cf4b023          	sd	a5,192(s1)
    80004360:	00813483          	ld	s1,8(sp)
    80004364:	02010113          	addi	sp,sp,32
    80004368:	00008067          	ret

000000008000436c <console_read>:
    8000436c:	ff010113          	addi	sp,sp,-16
    80004370:	00813423          	sd	s0,8(sp)
    80004374:	01010413          	addi	s0,sp,16
    80004378:	00813403          	ld	s0,8(sp)
    8000437c:	00004317          	auipc	t1,0x4
    80004380:	26433303          	ld	t1,612(t1) # 800085e0 <devsw+0x10>
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00030067          	jr	t1

000000008000438c <console_write>:
    8000438c:	ff010113          	addi	sp,sp,-16
    80004390:	00813423          	sd	s0,8(sp)
    80004394:	01010413          	addi	s0,sp,16
    80004398:	00813403          	ld	s0,8(sp)
    8000439c:	00004317          	auipc	t1,0x4
    800043a0:	24c33303          	ld	t1,588(t1) # 800085e8 <devsw+0x18>
    800043a4:	01010113          	addi	sp,sp,16
    800043a8:	00030067          	jr	t1

00000000800043ac <panic>:
    800043ac:	fe010113          	addi	sp,sp,-32
    800043b0:	00113c23          	sd	ra,24(sp)
    800043b4:	00813823          	sd	s0,16(sp)
    800043b8:	00913423          	sd	s1,8(sp)
    800043bc:	02010413          	addi	s0,sp,32
    800043c0:	00050493          	mv	s1,a0
    800043c4:	00002517          	auipc	a0,0x2
    800043c8:	e9c50513          	addi	a0,a0,-356 # 80006260 <CONSOLE_STATUS+0x250>
    800043cc:	00004797          	auipc	a5,0x4
    800043d0:	2a07ae23          	sw	zero,700(a5) # 80008688 <pr+0x18>
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	034080e7          	jalr	52(ra) # 80004408 <__printf>
    800043dc:	00048513          	mv	a0,s1
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	028080e7          	jalr	40(ra) # 80004408 <__printf>
    800043e8:	00002517          	auipc	a0,0x2
    800043ec:	e5850513          	addi	a0,a0,-424 # 80006240 <CONSOLE_STATUS+0x230>
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	018080e7          	jalr	24(ra) # 80004408 <__printf>
    800043f8:	00100793          	li	a5,1
    800043fc:	00003717          	auipc	a4,0x3
    80004400:	daf72e23          	sw	a5,-580(a4) # 800071b8 <panicked>
    80004404:	0000006f          	j	80004404 <panic+0x58>

0000000080004408 <__printf>:
    80004408:	f3010113          	addi	sp,sp,-208
    8000440c:	08813023          	sd	s0,128(sp)
    80004410:	07313423          	sd	s3,104(sp)
    80004414:	09010413          	addi	s0,sp,144
    80004418:	05813023          	sd	s8,64(sp)
    8000441c:	08113423          	sd	ra,136(sp)
    80004420:	06913c23          	sd	s1,120(sp)
    80004424:	07213823          	sd	s2,112(sp)
    80004428:	07413023          	sd	s4,96(sp)
    8000442c:	05513c23          	sd	s5,88(sp)
    80004430:	05613823          	sd	s6,80(sp)
    80004434:	05713423          	sd	s7,72(sp)
    80004438:	03913c23          	sd	s9,56(sp)
    8000443c:	03a13823          	sd	s10,48(sp)
    80004440:	03b13423          	sd	s11,40(sp)
    80004444:	00004317          	auipc	t1,0x4
    80004448:	22c30313          	addi	t1,t1,556 # 80008670 <pr>
    8000444c:	01832c03          	lw	s8,24(t1)
    80004450:	00b43423          	sd	a1,8(s0)
    80004454:	00c43823          	sd	a2,16(s0)
    80004458:	00d43c23          	sd	a3,24(s0)
    8000445c:	02e43023          	sd	a4,32(s0)
    80004460:	02f43423          	sd	a5,40(s0)
    80004464:	03043823          	sd	a6,48(s0)
    80004468:	03143c23          	sd	a7,56(s0)
    8000446c:	00050993          	mv	s3,a0
    80004470:	4a0c1663          	bnez	s8,8000491c <__printf+0x514>
    80004474:	60098c63          	beqz	s3,80004a8c <__printf+0x684>
    80004478:	0009c503          	lbu	a0,0(s3)
    8000447c:	00840793          	addi	a5,s0,8
    80004480:	f6f43c23          	sd	a5,-136(s0)
    80004484:	00000493          	li	s1,0
    80004488:	22050063          	beqz	a0,800046a8 <__printf+0x2a0>
    8000448c:	00002a37          	lui	s4,0x2
    80004490:	00018ab7          	lui	s5,0x18
    80004494:	000f4b37          	lui	s6,0xf4
    80004498:	00989bb7          	lui	s7,0x989
    8000449c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800044a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800044a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800044a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800044ac:	00148c9b          	addiw	s9,s1,1
    800044b0:	02500793          	li	a5,37
    800044b4:	01998933          	add	s2,s3,s9
    800044b8:	38f51263          	bne	a0,a5,8000483c <__printf+0x434>
    800044bc:	00094783          	lbu	a5,0(s2)
    800044c0:	00078c9b          	sext.w	s9,a5
    800044c4:	1e078263          	beqz	a5,800046a8 <__printf+0x2a0>
    800044c8:	0024849b          	addiw	s1,s1,2
    800044cc:	07000713          	li	a4,112
    800044d0:	00998933          	add	s2,s3,s1
    800044d4:	38e78a63          	beq	a5,a4,80004868 <__printf+0x460>
    800044d8:	20f76863          	bltu	a4,a5,800046e8 <__printf+0x2e0>
    800044dc:	42a78863          	beq	a5,a0,8000490c <__printf+0x504>
    800044e0:	06400713          	li	a4,100
    800044e4:	40e79663          	bne	a5,a4,800048f0 <__printf+0x4e8>
    800044e8:	f7843783          	ld	a5,-136(s0)
    800044ec:	0007a603          	lw	a2,0(a5)
    800044f0:	00878793          	addi	a5,a5,8
    800044f4:	f6f43c23          	sd	a5,-136(s0)
    800044f8:	42064a63          	bltz	a2,8000492c <__printf+0x524>
    800044fc:	00a00713          	li	a4,10
    80004500:	02e677bb          	remuw	a5,a2,a4
    80004504:	00002d97          	auipc	s11,0x2
    80004508:	d84d8d93          	addi	s11,s11,-636 # 80006288 <digits>
    8000450c:	00900593          	li	a1,9
    80004510:	0006051b          	sext.w	a0,a2
    80004514:	00000c93          	li	s9,0
    80004518:	02079793          	slli	a5,a5,0x20
    8000451c:	0207d793          	srli	a5,a5,0x20
    80004520:	00fd87b3          	add	a5,s11,a5
    80004524:	0007c783          	lbu	a5,0(a5)
    80004528:	02e656bb          	divuw	a3,a2,a4
    8000452c:	f8f40023          	sb	a5,-128(s0)
    80004530:	14c5d863          	bge	a1,a2,80004680 <__printf+0x278>
    80004534:	06300593          	li	a1,99
    80004538:	00100c93          	li	s9,1
    8000453c:	02e6f7bb          	remuw	a5,a3,a4
    80004540:	02079793          	slli	a5,a5,0x20
    80004544:	0207d793          	srli	a5,a5,0x20
    80004548:	00fd87b3          	add	a5,s11,a5
    8000454c:	0007c783          	lbu	a5,0(a5)
    80004550:	02e6d73b          	divuw	a4,a3,a4
    80004554:	f8f400a3          	sb	a5,-127(s0)
    80004558:	12a5f463          	bgeu	a1,a0,80004680 <__printf+0x278>
    8000455c:	00a00693          	li	a3,10
    80004560:	00900593          	li	a1,9
    80004564:	02d777bb          	remuw	a5,a4,a3
    80004568:	02079793          	slli	a5,a5,0x20
    8000456c:	0207d793          	srli	a5,a5,0x20
    80004570:	00fd87b3          	add	a5,s11,a5
    80004574:	0007c503          	lbu	a0,0(a5)
    80004578:	02d757bb          	divuw	a5,a4,a3
    8000457c:	f8a40123          	sb	a0,-126(s0)
    80004580:	48e5f263          	bgeu	a1,a4,80004a04 <__printf+0x5fc>
    80004584:	06300513          	li	a0,99
    80004588:	02d7f5bb          	remuw	a1,a5,a3
    8000458c:	02059593          	slli	a1,a1,0x20
    80004590:	0205d593          	srli	a1,a1,0x20
    80004594:	00bd85b3          	add	a1,s11,a1
    80004598:	0005c583          	lbu	a1,0(a1)
    8000459c:	02d7d7bb          	divuw	a5,a5,a3
    800045a0:	f8b401a3          	sb	a1,-125(s0)
    800045a4:	48e57263          	bgeu	a0,a4,80004a28 <__printf+0x620>
    800045a8:	3e700513          	li	a0,999
    800045ac:	02d7f5bb          	remuw	a1,a5,a3
    800045b0:	02059593          	slli	a1,a1,0x20
    800045b4:	0205d593          	srli	a1,a1,0x20
    800045b8:	00bd85b3          	add	a1,s11,a1
    800045bc:	0005c583          	lbu	a1,0(a1)
    800045c0:	02d7d7bb          	divuw	a5,a5,a3
    800045c4:	f8b40223          	sb	a1,-124(s0)
    800045c8:	46e57663          	bgeu	a0,a4,80004a34 <__printf+0x62c>
    800045cc:	02d7f5bb          	remuw	a1,a5,a3
    800045d0:	02059593          	slli	a1,a1,0x20
    800045d4:	0205d593          	srli	a1,a1,0x20
    800045d8:	00bd85b3          	add	a1,s11,a1
    800045dc:	0005c583          	lbu	a1,0(a1)
    800045e0:	02d7d7bb          	divuw	a5,a5,a3
    800045e4:	f8b402a3          	sb	a1,-123(s0)
    800045e8:	46ea7863          	bgeu	s4,a4,80004a58 <__printf+0x650>
    800045ec:	02d7f5bb          	remuw	a1,a5,a3
    800045f0:	02059593          	slli	a1,a1,0x20
    800045f4:	0205d593          	srli	a1,a1,0x20
    800045f8:	00bd85b3          	add	a1,s11,a1
    800045fc:	0005c583          	lbu	a1,0(a1)
    80004600:	02d7d7bb          	divuw	a5,a5,a3
    80004604:	f8b40323          	sb	a1,-122(s0)
    80004608:	3eeaf863          	bgeu	s5,a4,800049f8 <__printf+0x5f0>
    8000460c:	02d7f5bb          	remuw	a1,a5,a3
    80004610:	02059593          	slli	a1,a1,0x20
    80004614:	0205d593          	srli	a1,a1,0x20
    80004618:	00bd85b3          	add	a1,s11,a1
    8000461c:	0005c583          	lbu	a1,0(a1)
    80004620:	02d7d7bb          	divuw	a5,a5,a3
    80004624:	f8b403a3          	sb	a1,-121(s0)
    80004628:	42eb7e63          	bgeu	s6,a4,80004a64 <__printf+0x65c>
    8000462c:	02d7f5bb          	remuw	a1,a5,a3
    80004630:	02059593          	slli	a1,a1,0x20
    80004634:	0205d593          	srli	a1,a1,0x20
    80004638:	00bd85b3          	add	a1,s11,a1
    8000463c:	0005c583          	lbu	a1,0(a1)
    80004640:	02d7d7bb          	divuw	a5,a5,a3
    80004644:	f8b40423          	sb	a1,-120(s0)
    80004648:	42ebfc63          	bgeu	s7,a4,80004a80 <__printf+0x678>
    8000464c:	02079793          	slli	a5,a5,0x20
    80004650:	0207d793          	srli	a5,a5,0x20
    80004654:	00fd8db3          	add	s11,s11,a5
    80004658:	000dc703          	lbu	a4,0(s11)
    8000465c:	00a00793          	li	a5,10
    80004660:	00900c93          	li	s9,9
    80004664:	f8e404a3          	sb	a4,-119(s0)
    80004668:	00065c63          	bgez	a2,80004680 <__printf+0x278>
    8000466c:	f9040713          	addi	a4,s0,-112
    80004670:	00f70733          	add	a4,a4,a5
    80004674:	02d00693          	li	a3,45
    80004678:	fed70823          	sb	a3,-16(a4)
    8000467c:	00078c93          	mv	s9,a5
    80004680:	f8040793          	addi	a5,s0,-128
    80004684:	01978cb3          	add	s9,a5,s9
    80004688:	f7f40d13          	addi	s10,s0,-129
    8000468c:	000cc503          	lbu	a0,0(s9)
    80004690:	fffc8c93          	addi	s9,s9,-1
    80004694:	00000097          	auipc	ra,0x0
    80004698:	b90080e7          	jalr	-1136(ra) # 80004224 <consputc>
    8000469c:	ffac98e3          	bne	s9,s10,8000468c <__printf+0x284>
    800046a0:	00094503          	lbu	a0,0(s2)
    800046a4:	e00514e3          	bnez	a0,800044ac <__printf+0xa4>
    800046a8:	1a0c1663          	bnez	s8,80004854 <__printf+0x44c>
    800046ac:	08813083          	ld	ra,136(sp)
    800046b0:	08013403          	ld	s0,128(sp)
    800046b4:	07813483          	ld	s1,120(sp)
    800046b8:	07013903          	ld	s2,112(sp)
    800046bc:	06813983          	ld	s3,104(sp)
    800046c0:	06013a03          	ld	s4,96(sp)
    800046c4:	05813a83          	ld	s5,88(sp)
    800046c8:	05013b03          	ld	s6,80(sp)
    800046cc:	04813b83          	ld	s7,72(sp)
    800046d0:	04013c03          	ld	s8,64(sp)
    800046d4:	03813c83          	ld	s9,56(sp)
    800046d8:	03013d03          	ld	s10,48(sp)
    800046dc:	02813d83          	ld	s11,40(sp)
    800046e0:	0d010113          	addi	sp,sp,208
    800046e4:	00008067          	ret
    800046e8:	07300713          	li	a4,115
    800046ec:	1ce78a63          	beq	a5,a4,800048c0 <__printf+0x4b8>
    800046f0:	07800713          	li	a4,120
    800046f4:	1ee79e63          	bne	a5,a4,800048f0 <__printf+0x4e8>
    800046f8:	f7843783          	ld	a5,-136(s0)
    800046fc:	0007a703          	lw	a4,0(a5)
    80004700:	00878793          	addi	a5,a5,8
    80004704:	f6f43c23          	sd	a5,-136(s0)
    80004708:	28074263          	bltz	a4,8000498c <__printf+0x584>
    8000470c:	00002d97          	auipc	s11,0x2
    80004710:	b7cd8d93          	addi	s11,s11,-1156 # 80006288 <digits>
    80004714:	00f77793          	andi	a5,a4,15
    80004718:	00fd87b3          	add	a5,s11,a5
    8000471c:	0007c683          	lbu	a3,0(a5)
    80004720:	00f00613          	li	a2,15
    80004724:	0007079b          	sext.w	a5,a4
    80004728:	f8d40023          	sb	a3,-128(s0)
    8000472c:	0047559b          	srliw	a1,a4,0x4
    80004730:	0047569b          	srliw	a3,a4,0x4
    80004734:	00000c93          	li	s9,0
    80004738:	0ee65063          	bge	a2,a4,80004818 <__printf+0x410>
    8000473c:	00f6f693          	andi	a3,a3,15
    80004740:	00dd86b3          	add	a3,s11,a3
    80004744:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004748:	0087d79b          	srliw	a5,a5,0x8
    8000474c:	00100c93          	li	s9,1
    80004750:	f8d400a3          	sb	a3,-127(s0)
    80004754:	0cb67263          	bgeu	a2,a1,80004818 <__printf+0x410>
    80004758:	00f7f693          	andi	a3,a5,15
    8000475c:	00dd86b3          	add	a3,s11,a3
    80004760:	0006c583          	lbu	a1,0(a3)
    80004764:	00f00613          	li	a2,15
    80004768:	0047d69b          	srliw	a3,a5,0x4
    8000476c:	f8b40123          	sb	a1,-126(s0)
    80004770:	0047d593          	srli	a1,a5,0x4
    80004774:	28f67e63          	bgeu	a2,a5,80004a10 <__printf+0x608>
    80004778:	00f6f693          	andi	a3,a3,15
    8000477c:	00dd86b3          	add	a3,s11,a3
    80004780:	0006c503          	lbu	a0,0(a3)
    80004784:	0087d813          	srli	a6,a5,0x8
    80004788:	0087d69b          	srliw	a3,a5,0x8
    8000478c:	f8a401a3          	sb	a0,-125(s0)
    80004790:	28b67663          	bgeu	a2,a1,80004a1c <__printf+0x614>
    80004794:	00f6f693          	andi	a3,a3,15
    80004798:	00dd86b3          	add	a3,s11,a3
    8000479c:	0006c583          	lbu	a1,0(a3)
    800047a0:	00c7d513          	srli	a0,a5,0xc
    800047a4:	00c7d69b          	srliw	a3,a5,0xc
    800047a8:	f8b40223          	sb	a1,-124(s0)
    800047ac:	29067a63          	bgeu	a2,a6,80004a40 <__printf+0x638>
    800047b0:	00f6f693          	andi	a3,a3,15
    800047b4:	00dd86b3          	add	a3,s11,a3
    800047b8:	0006c583          	lbu	a1,0(a3)
    800047bc:	0107d813          	srli	a6,a5,0x10
    800047c0:	0107d69b          	srliw	a3,a5,0x10
    800047c4:	f8b402a3          	sb	a1,-123(s0)
    800047c8:	28a67263          	bgeu	a2,a0,80004a4c <__printf+0x644>
    800047cc:	00f6f693          	andi	a3,a3,15
    800047d0:	00dd86b3          	add	a3,s11,a3
    800047d4:	0006c683          	lbu	a3,0(a3)
    800047d8:	0147d79b          	srliw	a5,a5,0x14
    800047dc:	f8d40323          	sb	a3,-122(s0)
    800047e0:	21067663          	bgeu	a2,a6,800049ec <__printf+0x5e4>
    800047e4:	02079793          	slli	a5,a5,0x20
    800047e8:	0207d793          	srli	a5,a5,0x20
    800047ec:	00fd8db3          	add	s11,s11,a5
    800047f0:	000dc683          	lbu	a3,0(s11)
    800047f4:	00800793          	li	a5,8
    800047f8:	00700c93          	li	s9,7
    800047fc:	f8d403a3          	sb	a3,-121(s0)
    80004800:	00075c63          	bgez	a4,80004818 <__printf+0x410>
    80004804:	f9040713          	addi	a4,s0,-112
    80004808:	00f70733          	add	a4,a4,a5
    8000480c:	02d00693          	li	a3,45
    80004810:	fed70823          	sb	a3,-16(a4)
    80004814:	00078c93          	mv	s9,a5
    80004818:	f8040793          	addi	a5,s0,-128
    8000481c:	01978cb3          	add	s9,a5,s9
    80004820:	f7f40d13          	addi	s10,s0,-129
    80004824:	000cc503          	lbu	a0,0(s9)
    80004828:	fffc8c93          	addi	s9,s9,-1
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	9f8080e7          	jalr	-1544(ra) # 80004224 <consputc>
    80004834:	ff9d18e3          	bne	s10,s9,80004824 <__printf+0x41c>
    80004838:	0100006f          	j	80004848 <__printf+0x440>
    8000483c:	00000097          	auipc	ra,0x0
    80004840:	9e8080e7          	jalr	-1560(ra) # 80004224 <consputc>
    80004844:	000c8493          	mv	s1,s9
    80004848:	00094503          	lbu	a0,0(s2)
    8000484c:	c60510e3          	bnez	a0,800044ac <__printf+0xa4>
    80004850:	e40c0ee3          	beqz	s8,800046ac <__printf+0x2a4>
    80004854:	00004517          	auipc	a0,0x4
    80004858:	e1c50513          	addi	a0,a0,-484 # 80008670 <pr>
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	94c080e7          	jalr	-1716(ra) # 800051a8 <release>
    80004864:	e49ff06f          	j	800046ac <__printf+0x2a4>
    80004868:	f7843783          	ld	a5,-136(s0)
    8000486c:	03000513          	li	a0,48
    80004870:	01000d13          	li	s10,16
    80004874:	00878713          	addi	a4,a5,8
    80004878:	0007bc83          	ld	s9,0(a5)
    8000487c:	f6e43c23          	sd	a4,-136(s0)
    80004880:	00000097          	auipc	ra,0x0
    80004884:	9a4080e7          	jalr	-1628(ra) # 80004224 <consputc>
    80004888:	07800513          	li	a0,120
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	998080e7          	jalr	-1640(ra) # 80004224 <consputc>
    80004894:	00002d97          	auipc	s11,0x2
    80004898:	9f4d8d93          	addi	s11,s11,-1548 # 80006288 <digits>
    8000489c:	03ccd793          	srli	a5,s9,0x3c
    800048a0:	00fd87b3          	add	a5,s11,a5
    800048a4:	0007c503          	lbu	a0,0(a5)
    800048a8:	fffd0d1b          	addiw	s10,s10,-1
    800048ac:	004c9c93          	slli	s9,s9,0x4
    800048b0:	00000097          	auipc	ra,0x0
    800048b4:	974080e7          	jalr	-1676(ra) # 80004224 <consputc>
    800048b8:	fe0d12e3          	bnez	s10,8000489c <__printf+0x494>
    800048bc:	f8dff06f          	j	80004848 <__printf+0x440>
    800048c0:	f7843783          	ld	a5,-136(s0)
    800048c4:	0007bc83          	ld	s9,0(a5)
    800048c8:	00878793          	addi	a5,a5,8
    800048cc:	f6f43c23          	sd	a5,-136(s0)
    800048d0:	000c9a63          	bnez	s9,800048e4 <__printf+0x4dc>
    800048d4:	1080006f          	j	800049dc <__printf+0x5d4>
    800048d8:	001c8c93          	addi	s9,s9,1
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	948080e7          	jalr	-1720(ra) # 80004224 <consputc>
    800048e4:	000cc503          	lbu	a0,0(s9)
    800048e8:	fe0518e3          	bnez	a0,800048d8 <__printf+0x4d0>
    800048ec:	f5dff06f          	j	80004848 <__printf+0x440>
    800048f0:	02500513          	li	a0,37
    800048f4:	00000097          	auipc	ra,0x0
    800048f8:	930080e7          	jalr	-1744(ra) # 80004224 <consputc>
    800048fc:	000c8513          	mv	a0,s9
    80004900:	00000097          	auipc	ra,0x0
    80004904:	924080e7          	jalr	-1756(ra) # 80004224 <consputc>
    80004908:	f41ff06f          	j	80004848 <__printf+0x440>
    8000490c:	02500513          	li	a0,37
    80004910:	00000097          	auipc	ra,0x0
    80004914:	914080e7          	jalr	-1772(ra) # 80004224 <consputc>
    80004918:	f31ff06f          	j	80004848 <__printf+0x440>
    8000491c:	00030513          	mv	a0,t1
    80004920:	00000097          	auipc	ra,0x0
    80004924:	7bc080e7          	jalr	1980(ra) # 800050dc <acquire>
    80004928:	b4dff06f          	j	80004474 <__printf+0x6c>
    8000492c:	40c0053b          	negw	a0,a2
    80004930:	00a00713          	li	a4,10
    80004934:	02e576bb          	remuw	a3,a0,a4
    80004938:	00002d97          	auipc	s11,0x2
    8000493c:	950d8d93          	addi	s11,s11,-1712 # 80006288 <digits>
    80004940:	ff700593          	li	a1,-9
    80004944:	02069693          	slli	a3,a3,0x20
    80004948:	0206d693          	srli	a3,a3,0x20
    8000494c:	00dd86b3          	add	a3,s11,a3
    80004950:	0006c683          	lbu	a3,0(a3)
    80004954:	02e557bb          	divuw	a5,a0,a4
    80004958:	f8d40023          	sb	a3,-128(s0)
    8000495c:	10b65e63          	bge	a2,a1,80004a78 <__printf+0x670>
    80004960:	06300593          	li	a1,99
    80004964:	02e7f6bb          	remuw	a3,a5,a4
    80004968:	02069693          	slli	a3,a3,0x20
    8000496c:	0206d693          	srli	a3,a3,0x20
    80004970:	00dd86b3          	add	a3,s11,a3
    80004974:	0006c683          	lbu	a3,0(a3)
    80004978:	02e7d73b          	divuw	a4,a5,a4
    8000497c:	00200793          	li	a5,2
    80004980:	f8d400a3          	sb	a3,-127(s0)
    80004984:	bca5ece3          	bltu	a1,a0,8000455c <__printf+0x154>
    80004988:	ce5ff06f          	j	8000466c <__printf+0x264>
    8000498c:	40e007bb          	negw	a5,a4
    80004990:	00002d97          	auipc	s11,0x2
    80004994:	8f8d8d93          	addi	s11,s11,-1800 # 80006288 <digits>
    80004998:	00f7f693          	andi	a3,a5,15
    8000499c:	00dd86b3          	add	a3,s11,a3
    800049a0:	0006c583          	lbu	a1,0(a3)
    800049a4:	ff100613          	li	a2,-15
    800049a8:	0047d69b          	srliw	a3,a5,0x4
    800049ac:	f8b40023          	sb	a1,-128(s0)
    800049b0:	0047d59b          	srliw	a1,a5,0x4
    800049b4:	0ac75e63          	bge	a4,a2,80004a70 <__printf+0x668>
    800049b8:	00f6f693          	andi	a3,a3,15
    800049bc:	00dd86b3          	add	a3,s11,a3
    800049c0:	0006c603          	lbu	a2,0(a3)
    800049c4:	00f00693          	li	a3,15
    800049c8:	0087d79b          	srliw	a5,a5,0x8
    800049cc:	f8c400a3          	sb	a2,-127(s0)
    800049d0:	d8b6e4e3          	bltu	a3,a1,80004758 <__printf+0x350>
    800049d4:	00200793          	li	a5,2
    800049d8:	e2dff06f          	j	80004804 <__printf+0x3fc>
    800049dc:	00002c97          	auipc	s9,0x2
    800049e0:	88cc8c93          	addi	s9,s9,-1908 # 80006268 <CONSOLE_STATUS+0x258>
    800049e4:	02800513          	li	a0,40
    800049e8:	ef1ff06f          	j	800048d8 <__printf+0x4d0>
    800049ec:	00700793          	li	a5,7
    800049f0:	00600c93          	li	s9,6
    800049f4:	e0dff06f          	j	80004800 <__printf+0x3f8>
    800049f8:	00700793          	li	a5,7
    800049fc:	00600c93          	li	s9,6
    80004a00:	c69ff06f          	j	80004668 <__printf+0x260>
    80004a04:	00300793          	li	a5,3
    80004a08:	00200c93          	li	s9,2
    80004a0c:	c5dff06f          	j	80004668 <__printf+0x260>
    80004a10:	00300793          	li	a5,3
    80004a14:	00200c93          	li	s9,2
    80004a18:	de9ff06f          	j	80004800 <__printf+0x3f8>
    80004a1c:	00400793          	li	a5,4
    80004a20:	00300c93          	li	s9,3
    80004a24:	dddff06f          	j	80004800 <__printf+0x3f8>
    80004a28:	00400793          	li	a5,4
    80004a2c:	00300c93          	li	s9,3
    80004a30:	c39ff06f          	j	80004668 <__printf+0x260>
    80004a34:	00500793          	li	a5,5
    80004a38:	00400c93          	li	s9,4
    80004a3c:	c2dff06f          	j	80004668 <__printf+0x260>
    80004a40:	00500793          	li	a5,5
    80004a44:	00400c93          	li	s9,4
    80004a48:	db9ff06f          	j	80004800 <__printf+0x3f8>
    80004a4c:	00600793          	li	a5,6
    80004a50:	00500c93          	li	s9,5
    80004a54:	dadff06f          	j	80004800 <__printf+0x3f8>
    80004a58:	00600793          	li	a5,6
    80004a5c:	00500c93          	li	s9,5
    80004a60:	c09ff06f          	j	80004668 <__printf+0x260>
    80004a64:	00800793          	li	a5,8
    80004a68:	00700c93          	li	s9,7
    80004a6c:	bfdff06f          	j	80004668 <__printf+0x260>
    80004a70:	00100793          	li	a5,1
    80004a74:	d91ff06f          	j	80004804 <__printf+0x3fc>
    80004a78:	00100793          	li	a5,1
    80004a7c:	bf1ff06f          	j	8000466c <__printf+0x264>
    80004a80:	00900793          	li	a5,9
    80004a84:	00800c93          	li	s9,8
    80004a88:	be1ff06f          	j	80004668 <__printf+0x260>
    80004a8c:	00001517          	auipc	a0,0x1
    80004a90:	7e450513          	addi	a0,a0,2020 # 80006270 <CONSOLE_STATUS+0x260>
    80004a94:	00000097          	auipc	ra,0x0
    80004a98:	918080e7          	jalr	-1768(ra) # 800043ac <panic>

0000000080004a9c <printfinit>:
    80004a9c:	fe010113          	addi	sp,sp,-32
    80004aa0:	00813823          	sd	s0,16(sp)
    80004aa4:	00913423          	sd	s1,8(sp)
    80004aa8:	00113c23          	sd	ra,24(sp)
    80004aac:	02010413          	addi	s0,sp,32
    80004ab0:	00004497          	auipc	s1,0x4
    80004ab4:	bc048493          	addi	s1,s1,-1088 # 80008670 <pr>
    80004ab8:	00048513          	mv	a0,s1
    80004abc:	00001597          	auipc	a1,0x1
    80004ac0:	7c458593          	addi	a1,a1,1988 # 80006280 <CONSOLE_STATUS+0x270>
    80004ac4:	00000097          	auipc	ra,0x0
    80004ac8:	5f4080e7          	jalr	1524(ra) # 800050b8 <initlock>
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	0004ac23          	sw	zero,24(s1)
    80004ad8:	00813483          	ld	s1,8(sp)
    80004adc:	02010113          	addi	sp,sp,32
    80004ae0:	00008067          	ret

0000000080004ae4 <uartinit>:
    80004ae4:	ff010113          	addi	sp,sp,-16
    80004ae8:	00813423          	sd	s0,8(sp)
    80004aec:	01010413          	addi	s0,sp,16
    80004af0:	100007b7          	lui	a5,0x10000
    80004af4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004af8:	f8000713          	li	a4,-128
    80004afc:	00e781a3          	sb	a4,3(a5)
    80004b00:	00300713          	li	a4,3
    80004b04:	00e78023          	sb	a4,0(a5)
    80004b08:	000780a3          	sb	zero,1(a5)
    80004b0c:	00e781a3          	sb	a4,3(a5)
    80004b10:	00700693          	li	a3,7
    80004b14:	00d78123          	sb	a3,2(a5)
    80004b18:	00e780a3          	sb	a4,1(a5)
    80004b1c:	00813403          	ld	s0,8(sp)
    80004b20:	01010113          	addi	sp,sp,16
    80004b24:	00008067          	ret

0000000080004b28 <uartputc>:
    80004b28:	00002797          	auipc	a5,0x2
    80004b2c:	6907a783          	lw	a5,1680(a5) # 800071b8 <panicked>
    80004b30:	00078463          	beqz	a5,80004b38 <uartputc+0x10>
    80004b34:	0000006f          	j	80004b34 <uartputc+0xc>
    80004b38:	fd010113          	addi	sp,sp,-48
    80004b3c:	02813023          	sd	s0,32(sp)
    80004b40:	00913c23          	sd	s1,24(sp)
    80004b44:	01213823          	sd	s2,16(sp)
    80004b48:	01313423          	sd	s3,8(sp)
    80004b4c:	02113423          	sd	ra,40(sp)
    80004b50:	03010413          	addi	s0,sp,48
    80004b54:	00002917          	auipc	s2,0x2
    80004b58:	66c90913          	addi	s2,s2,1644 # 800071c0 <uart_tx_r>
    80004b5c:	00093783          	ld	a5,0(s2)
    80004b60:	00002497          	auipc	s1,0x2
    80004b64:	66848493          	addi	s1,s1,1640 # 800071c8 <uart_tx_w>
    80004b68:	0004b703          	ld	a4,0(s1)
    80004b6c:	02078693          	addi	a3,a5,32
    80004b70:	00050993          	mv	s3,a0
    80004b74:	02e69c63          	bne	a3,a4,80004bac <uartputc+0x84>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	834080e7          	jalr	-1996(ra) # 800053ac <push_on>
    80004b80:	00093783          	ld	a5,0(s2)
    80004b84:	0004b703          	ld	a4,0(s1)
    80004b88:	02078793          	addi	a5,a5,32
    80004b8c:	00e79463          	bne	a5,a4,80004b94 <uartputc+0x6c>
    80004b90:	0000006f          	j	80004b90 <uartputc+0x68>
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	88c080e7          	jalr	-1908(ra) # 80005420 <pop_on>
    80004b9c:	00093783          	ld	a5,0(s2)
    80004ba0:	0004b703          	ld	a4,0(s1)
    80004ba4:	02078693          	addi	a3,a5,32
    80004ba8:	fce688e3          	beq	a3,a4,80004b78 <uartputc+0x50>
    80004bac:	01f77693          	andi	a3,a4,31
    80004bb0:	00004597          	auipc	a1,0x4
    80004bb4:	ae058593          	addi	a1,a1,-1312 # 80008690 <uart_tx_buf>
    80004bb8:	00d586b3          	add	a3,a1,a3
    80004bbc:	00170713          	addi	a4,a4,1
    80004bc0:	01368023          	sb	s3,0(a3)
    80004bc4:	00e4b023          	sd	a4,0(s1)
    80004bc8:	10000637          	lui	a2,0x10000
    80004bcc:	02f71063          	bne	a4,a5,80004bec <uartputc+0xc4>
    80004bd0:	0340006f          	j	80004c04 <uartputc+0xdc>
    80004bd4:	00074703          	lbu	a4,0(a4)
    80004bd8:	00f93023          	sd	a5,0(s2)
    80004bdc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004be0:	00093783          	ld	a5,0(s2)
    80004be4:	0004b703          	ld	a4,0(s1)
    80004be8:	00f70e63          	beq	a4,a5,80004c04 <uartputc+0xdc>
    80004bec:	00564683          	lbu	a3,5(a2)
    80004bf0:	01f7f713          	andi	a4,a5,31
    80004bf4:	00e58733          	add	a4,a1,a4
    80004bf8:	0206f693          	andi	a3,a3,32
    80004bfc:	00178793          	addi	a5,a5,1
    80004c00:	fc069ae3          	bnez	a3,80004bd4 <uartputc+0xac>
    80004c04:	02813083          	ld	ra,40(sp)
    80004c08:	02013403          	ld	s0,32(sp)
    80004c0c:	01813483          	ld	s1,24(sp)
    80004c10:	01013903          	ld	s2,16(sp)
    80004c14:	00813983          	ld	s3,8(sp)
    80004c18:	03010113          	addi	sp,sp,48
    80004c1c:	00008067          	ret

0000000080004c20 <uartputc_sync>:
    80004c20:	ff010113          	addi	sp,sp,-16
    80004c24:	00813423          	sd	s0,8(sp)
    80004c28:	01010413          	addi	s0,sp,16
    80004c2c:	00002717          	auipc	a4,0x2
    80004c30:	58c72703          	lw	a4,1420(a4) # 800071b8 <panicked>
    80004c34:	02071663          	bnez	a4,80004c60 <uartputc_sync+0x40>
    80004c38:	00050793          	mv	a5,a0
    80004c3c:	100006b7          	lui	a3,0x10000
    80004c40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004c44:	02077713          	andi	a4,a4,32
    80004c48:	fe070ce3          	beqz	a4,80004c40 <uartputc_sync+0x20>
    80004c4c:	0ff7f793          	andi	a5,a5,255
    80004c50:	00f68023          	sb	a5,0(a3)
    80004c54:	00813403          	ld	s0,8(sp)
    80004c58:	01010113          	addi	sp,sp,16
    80004c5c:	00008067          	ret
    80004c60:	0000006f          	j	80004c60 <uartputc_sync+0x40>

0000000080004c64 <uartstart>:
    80004c64:	ff010113          	addi	sp,sp,-16
    80004c68:	00813423          	sd	s0,8(sp)
    80004c6c:	01010413          	addi	s0,sp,16
    80004c70:	00002617          	auipc	a2,0x2
    80004c74:	55060613          	addi	a2,a2,1360 # 800071c0 <uart_tx_r>
    80004c78:	00002517          	auipc	a0,0x2
    80004c7c:	55050513          	addi	a0,a0,1360 # 800071c8 <uart_tx_w>
    80004c80:	00063783          	ld	a5,0(a2)
    80004c84:	00053703          	ld	a4,0(a0)
    80004c88:	04f70263          	beq	a4,a5,80004ccc <uartstart+0x68>
    80004c8c:	100005b7          	lui	a1,0x10000
    80004c90:	00004817          	auipc	a6,0x4
    80004c94:	a0080813          	addi	a6,a6,-1536 # 80008690 <uart_tx_buf>
    80004c98:	01c0006f          	j	80004cb4 <uartstart+0x50>
    80004c9c:	0006c703          	lbu	a4,0(a3)
    80004ca0:	00f63023          	sd	a5,0(a2)
    80004ca4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ca8:	00063783          	ld	a5,0(a2)
    80004cac:	00053703          	ld	a4,0(a0)
    80004cb0:	00f70e63          	beq	a4,a5,80004ccc <uartstart+0x68>
    80004cb4:	01f7f713          	andi	a4,a5,31
    80004cb8:	00e806b3          	add	a3,a6,a4
    80004cbc:	0055c703          	lbu	a4,5(a1)
    80004cc0:	00178793          	addi	a5,a5,1
    80004cc4:	02077713          	andi	a4,a4,32
    80004cc8:	fc071ae3          	bnez	a4,80004c9c <uartstart+0x38>
    80004ccc:	00813403          	ld	s0,8(sp)
    80004cd0:	01010113          	addi	sp,sp,16
    80004cd4:	00008067          	ret

0000000080004cd8 <uartgetc>:
    80004cd8:	ff010113          	addi	sp,sp,-16
    80004cdc:	00813423          	sd	s0,8(sp)
    80004ce0:	01010413          	addi	s0,sp,16
    80004ce4:	10000737          	lui	a4,0x10000
    80004ce8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004cec:	0017f793          	andi	a5,a5,1
    80004cf0:	00078c63          	beqz	a5,80004d08 <uartgetc+0x30>
    80004cf4:	00074503          	lbu	a0,0(a4)
    80004cf8:	0ff57513          	andi	a0,a0,255
    80004cfc:	00813403          	ld	s0,8(sp)
    80004d00:	01010113          	addi	sp,sp,16
    80004d04:	00008067          	ret
    80004d08:	fff00513          	li	a0,-1
    80004d0c:	ff1ff06f          	j	80004cfc <uartgetc+0x24>

0000000080004d10 <uartintr>:
    80004d10:	100007b7          	lui	a5,0x10000
    80004d14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004d18:	0017f793          	andi	a5,a5,1
    80004d1c:	0a078463          	beqz	a5,80004dc4 <uartintr+0xb4>
    80004d20:	fe010113          	addi	sp,sp,-32
    80004d24:	00813823          	sd	s0,16(sp)
    80004d28:	00913423          	sd	s1,8(sp)
    80004d2c:	00113c23          	sd	ra,24(sp)
    80004d30:	02010413          	addi	s0,sp,32
    80004d34:	100004b7          	lui	s1,0x10000
    80004d38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004d3c:	0ff57513          	andi	a0,a0,255
    80004d40:	fffff097          	auipc	ra,0xfffff
    80004d44:	534080e7          	jalr	1332(ra) # 80004274 <consoleintr>
    80004d48:	0054c783          	lbu	a5,5(s1)
    80004d4c:	0017f793          	andi	a5,a5,1
    80004d50:	fe0794e3          	bnez	a5,80004d38 <uartintr+0x28>
    80004d54:	00002617          	auipc	a2,0x2
    80004d58:	46c60613          	addi	a2,a2,1132 # 800071c0 <uart_tx_r>
    80004d5c:	00002517          	auipc	a0,0x2
    80004d60:	46c50513          	addi	a0,a0,1132 # 800071c8 <uart_tx_w>
    80004d64:	00063783          	ld	a5,0(a2)
    80004d68:	00053703          	ld	a4,0(a0)
    80004d6c:	04f70263          	beq	a4,a5,80004db0 <uartintr+0xa0>
    80004d70:	100005b7          	lui	a1,0x10000
    80004d74:	00004817          	auipc	a6,0x4
    80004d78:	91c80813          	addi	a6,a6,-1764 # 80008690 <uart_tx_buf>
    80004d7c:	01c0006f          	j	80004d98 <uartintr+0x88>
    80004d80:	0006c703          	lbu	a4,0(a3)
    80004d84:	00f63023          	sd	a5,0(a2)
    80004d88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d8c:	00063783          	ld	a5,0(a2)
    80004d90:	00053703          	ld	a4,0(a0)
    80004d94:	00f70e63          	beq	a4,a5,80004db0 <uartintr+0xa0>
    80004d98:	01f7f713          	andi	a4,a5,31
    80004d9c:	00e806b3          	add	a3,a6,a4
    80004da0:	0055c703          	lbu	a4,5(a1)
    80004da4:	00178793          	addi	a5,a5,1
    80004da8:	02077713          	andi	a4,a4,32
    80004dac:	fc071ae3          	bnez	a4,80004d80 <uartintr+0x70>
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	02010113          	addi	sp,sp,32
    80004dc0:	00008067          	ret
    80004dc4:	00002617          	auipc	a2,0x2
    80004dc8:	3fc60613          	addi	a2,a2,1020 # 800071c0 <uart_tx_r>
    80004dcc:	00002517          	auipc	a0,0x2
    80004dd0:	3fc50513          	addi	a0,a0,1020 # 800071c8 <uart_tx_w>
    80004dd4:	00063783          	ld	a5,0(a2)
    80004dd8:	00053703          	ld	a4,0(a0)
    80004ddc:	04f70263          	beq	a4,a5,80004e20 <uartintr+0x110>
    80004de0:	100005b7          	lui	a1,0x10000
    80004de4:	00004817          	auipc	a6,0x4
    80004de8:	8ac80813          	addi	a6,a6,-1876 # 80008690 <uart_tx_buf>
    80004dec:	01c0006f          	j	80004e08 <uartintr+0xf8>
    80004df0:	0006c703          	lbu	a4,0(a3)
    80004df4:	00f63023          	sd	a5,0(a2)
    80004df8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dfc:	00063783          	ld	a5,0(a2)
    80004e00:	00053703          	ld	a4,0(a0)
    80004e04:	02f70063          	beq	a4,a5,80004e24 <uartintr+0x114>
    80004e08:	01f7f713          	andi	a4,a5,31
    80004e0c:	00e806b3          	add	a3,a6,a4
    80004e10:	0055c703          	lbu	a4,5(a1)
    80004e14:	00178793          	addi	a5,a5,1
    80004e18:	02077713          	andi	a4,a4,32
    80004e1c:	fc071ae3          	bnez	a4,80004df0 <uartintr+0xe0>
    80004e20:	00008067          	ret
    80004e24:	00008067          	ret

0000000080004e28 <kinit>:
    80004e28:	fc010113          	addi	sp,sp,-64
    80004e2c:	02913423          	sd	s1,40(sp)
    80004e30:	fffff7b7          	lui	a5,0xfffff
    80004e34:	00005497          	auipc	s1,0x5
    80004e38:	87b48493          	addi	s1,s1,-1925 # 800096af <end+0xfff>
    80004e3c:	02813823          	sd	s0,48(sp)
    80004e40:	01313c23          	sd	s3,24(sp)
    80004e44:	00f4f4b3          	and	s1,s1,a5
    80004e48:	02113c23          	sd	ra,56(sp)
    80004e4c:	03213023          	sd	s2,32(sp)
    80004e50:	01413823          	sd	s4,16(sp)
    80004e54:	01513423          	sd	s5,8(sp)
    80004e58:	04010413          	addi	s0,sp,64
    80004e5c:	000017b7          	lui	a5,0x1
    80004e60:	01100993          	li	s3,17
    80004e64:	00f487b3          	add	a5,s1,a5
    80004e68:	01b99993          	slli	s3,s3,0x1b
    80004e6c:	06f9e063          	bltu	s3,a5,80004ecc <kinit+0xa4>
    80004e70:	00004a97          	auipc	s5,0x4
    80004e74:	840a8a93          	addi	s5,s5,-1984 # 800086b0 <end>
    80004e78:	0754ec63          	bltu	s1,s5,80004ef0 <kinit+0xc8>
    80004e7c:	0734fa63          	bgeu	s1,s3,80004ef0 <kinit+0xc8>
    80004e80:	00088a37          	lui	s4,0x88
    80004e84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004e88:	00002917          	auipc	s2,0x2
    80004e8c:	34890913          	addi	s2,s2,840 # 800071d0 <kmem>
    80004e90:	00ca1a13          	slli	s4,s4,0xc
    80004e94:	0140006f          	j	80004ea8 <kinit+0x80>
    80004e98:	000017b7          	lui	a5,0x1
    80004e9c:	00f484b3          	add	s1,s1,a5
    80004ea0:	0554e863          	bltu	s1,s5,80004ef0 <kinit+0xc8>
    80004ea4:	0534f663          	bgeu	s1,s3,80004ef0 <kinit+0xc8>
    80004ea8:	00001637          	lui	a2,0x1
    80004eac:	00100593          	li	a1,1
    80004eb0:	00048513          	mv	a0,s1
    80004eb4:	00000097          	auipc	ra,0x0
    80004eb8:	5e4080e7          	jalr	1508(ra) # 80005498 <__memset>
    80004ebc:	00093783          	ld	a5,0(s2)
    80004ec0:	00f4b023          	sd	a5,0(s1)
    80004ec4:	00993023          	sd	s1,0(s2)
    80004ec8:	fd4498e3          	bne	s1,s4,80004e98 <kinit+0x70>
    80004ecc:	03813083          	ld	ra,56(sp)
    80004ed0:	03013403          	ld	s0,48(sp)
    80004ed4:	02813483          	ld	s1,40(sp)
    80004ed8:	02013903          	ld	s2,32(sp)
    80004edc:	01813983          	ld	s3,24(sp)
    80004ee0:	01013a03          	ld	s4,16(sp)
    80004ee4:	00813a83          	ld	s5,8(sp)
    80004ee8:	04010113          	addi	sp,sp,64
    80004eec:	00008067          	ret
    80004ef0:	00001517          	auipc	a0,0x1
    80004ef4:	3b050513          	addi	a0,a0,944 # 800062a0 <digits+0x18>
    80004ef8:	fffff097          	auipc	ra,0xfffff
    80004efc:	4b4080e7          	jalr	1204(ra) # 800043ac <panic>

0000000080004f00 <freerange>:
    80004f00:	fc010113          	addi	sp,sp,-64
    80004f04:	000017b7          	lui	a5,0x1
    80004f08:	02913423          	sd	s1,40(sp)
    80004f0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004f10:	009504b3          	add	s1,a0,s1
    80004f14:	fffff537          	lui	a0,0xfffff
    80004f18:	02813823          	sd	s0,48(sp)
    80004f1c:	02113c23          	sd	ra,56(sp)
    80004f20:	03213023          	sd	s2,32(sp)
    80004f24:	01313c23          	sd	s3,24(sp)
    80004f28:	01413823          	sd	s4,16(sp)
    80004f2c:	01513423          	sd	s5,8(sp)
    80004f30:	01613023          	sd	s6,0(sp)
    80004f34:	04010413          	addi	s0,sp,64
    80004f38:	00a4f4b3          	and	s1,s1,a0
    80004f3c:	00f487b3          	add	a5,s1,a5
    80004f40:	06f5e463          	bltu	a1,a5,80004fa8 <freerange+0xa8>
    80004f44:	00003a97          	auipc	s5,0x3
    80004f48:	76ca8a93          	addi	s5,s5,1900 # 800086b0 <end>
    80004f4c:	0954e263          	bltu	s1,s5,80004fd0 <freerange+0xd0>
    80004f50:	01100993          	li	s3,17
    80004f54:	01b99993          	slli	s3,s3,0x1b
    80004f58:	0734fc63          	bgeu	s1,s3,80004fd0 <freerange+0xd0>
    80004f5c:	00058a13          	mv	s4,a1
    80004f60:	00002917          	auipc	s2,0x2
    80004f64:	27090913          	addi	s2,s2,624 # 800071d0 <kmem>
    80004f68:	00002b37          	lui	s6,0x2
    80004f6c:	0140006f          	j	80004f80 <freerange+0x80>
    80004f70:	000017b7          	lui	a5,0x1
    80004f74:	00f484b3          	add	s1,s1,a5
    80004f78:	0554ec63          	bltu	s1,s5,80004fd0 <freerange+0xd0>
    80004f7c:	0534fa63          	bgeu	s1,s3,80004fd0 <freerange+0xd0>
    80004f80:	00001637          	lui	a2,0x1
    80004f84:	00100593          	li	a1,1
    80004f88:	00048513          	mv	a0,s1
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	50c080e7          	jalr	1292(ra) # 80005498 <__memset>
    80004f94:	00093703          	ld	a4,0(s2)
    80004f98:	016487b3          	add	a5,s1,s6
    80004f9c:	00e4b023          	sd	a4,0(s1)
    80004fa0:	00993023          	sd	s1,0(s2)
    80004fa4:	fcfa76e3          	bgeu	s4,a5,80004f70 <freerange+0x70>
    80004fa8:	03813083          	ld	ra,56(sp)
    80004fac:	03013403          	ld	s0,48(sp)
    80004fb0:	02813483          	ld	s1,40(sp)
    80004fb4:	02013903          	ld	s2,32(sp)
    80004fb8:	01813983          	ld	s3,24(sp)
    80004fbc:	01013a03          	ld	s4,16(sp)
    80004fc0:	00813a83          	ld	s5,8(sp)
    80004fc4:	00013b03          	ld	s6,0(sp)
    80004fc8:	04010113          	addi	sp,sp,64
    80004fcc:	00008067          	ret
    80004fd0:	00001517          	auipc	a0,0x1
    80004fd4:	2d050513          	addi	a0,a0,720 # 800062a0 <digits+0x18>
    80004fd8:	fffff097          	auipc	ra,0xfffff
    80004fdc:	3d4080e7          	jalr	980(ra) # 800043ac <panic>

0000000080004fe0 <kfree>:
    80004fe0:	fe010113          	addi	sp,sp,-32
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00113c23          	sd	ra,24(sp)
    80004fec:	00913423          	sd	s1,8(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    80004ff4:	03451793          	slli	a5,a0,0x34
    80004ff8:	04079c63          	bnez	a5,80005050 <kfree+0x70>
    80004ffc:	00003797          	auipc	a5,0x3
    80005000:	6b478793          	addi	a5,a5,1716 # 800086b0 <end>
    80005004:	00050493          	mv	s1,a0
    80005008:	04f56463          	bltu	a0,a5,80005050 <kfree+0x70>
    8000500c:	01100793          	li	a5,17
    80005010:	01b79793          	slli	a5,a5,0x1b
    80005014:	02f57e63          	bgeu	a0,a5,80005050 <kfree+0x70>
    80005018:	00001637          	lui	a2,0x1
    8000501c:	00100593          	li	a1,1
    80005020:	00000097          	auipc	ra,0x0
    80005024:	478080e7          	jalr	1144(ra) # 80005498 <__memset>
    80005028:	00002797          	auipc	a5,0x2
    8000502c:	1a878793          	addi	a5,a5,424 # 800071d0 <kmem>
    80005030:	0007b703          	ld	a4,0(a5)
    80005034:	01813083          	ld	ra,24(sp)
    80005038:	01013403          	ld	s0,16(sp)
    8000503c:	00e4b023          	sd	a4,0(s1)
    80005040:	0097b023          	sd	s1,0(a5)
    80005044:	00813483          	ld	s1,8(sp)
    80005048:	02010113          	addi	sp,sp,32
    8000504c:	00008067          	ret
    80005050:	00001517          	auipc	a0,0x1
    80005054:	25050513          	addi	a0,a0,592 # 800062a0 <digits+0x18>
    80005058:	fffff097          	auipc	ra,0xfffff
    8000505c:	354080e7          	jalr	852(ra) # 800043ac <panic>

0000000080005060 <kalloc>:
    80005060:	fe010113          	addi	sp,sp,-32
    80005064:	00813823          	sd	s0,16(sp)
    80005068:	00913423          	sd	s1,8(sp)
    8000506c:	00113c23          	sd	ra,24(sp)
    80005070:	02010413          	addi	s0,sp,32
    80005074:	00002797          	auipc	a5,0x2
    80005078:	15c78793          	addi	a5,a5,348 # 800071d0 <kmem>
    8000507c:	0007b483          	ld	s1,0(a5)
    80005080:	02048063          	beqz	s1,800050a0 <kalloc+0x40>
    80005084:	0004b703          	ld	a4,0(s1)
    80005088:	00001637          	lui	a2,0x1
    8000508c:	00500593          	li	a1,5
    80005090:	00048513          	mv	a0,s1
    80005094:	00e7b023          	sd	a4,0(a5)
    80005098:	00000097          	auipc	ra,0x0
    8000509c:	400080e7          	jalr	1024(ra) # 80005498 <__memset>
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	01013403          	ld	s0,16(sp)
    800050a8:	00048513          	mv	a0,s1
    800050ac:	00813483          	ld	s1,8(sp)
    800050b0:	02010113          	addi	sp,sp,32
    800050b4:	00008067          	ret

00000000800050b8 <initlock>:
    800050b8:	ff010113          	addi	sp,sp,-16
    800050bc:	00813423          	sd	s0,8(sp)
    800050c0:	01010413          	addi	s0,sp,16
    800050c4:	00813403          	ld	s0,8(sp)
    800050c8:	00b53423          	sd	a1,8(a0)
    800050cc:	00052023          	sw	zero,0(a0)
    800050d0:	00053823          	sd	zero,16(a0)
    800050d4:	01010113          	addi	sp,sp,16
    800050d8:	00008067          	ret

00000000800050dc <acquire>:
    800050dc:	fe010113          	addi	sp,sp,-32
    800050e0:	00813823          	sd	s0,16(sp)
    800050e4:	00913423          	sd	s1,8(sp)
    800050e8:	00113c23          	sd	ra,24(sp)
    800050ec:	01213023          	sd	s2,0(sp)
    800050f0:	02010413          	addi	s0,sp,32
    800050f4:	00050493          	mv	s1,a0
    800050f8:	10002973          	csrr	s2,sstatus
    800050fc:	100027f3          	csrr	a5,sstatus
    80005100:	ffd7f793          	andi	a5,a5,-3
    80005104:	10079073          	csrw	sstatus,a5
    80005108:	fffff097          	auipc	ra,0xfffff
    8000510c:	8ec080e7          	jalr	-1812(ra) # 800039f4 <mycpu>
    80005110:	07852783          	lw	a5,120(a0)
    80005114:	06078e63          	beqz	a5,80005190 <acquire+0xb4>
    80005118:	fffff097          	auipc	ra,0xfffff
    8000511c:	8dc080e7          	jalr	-1828(ra) # 800039f4 <mycpu>
    80005120:	07852783          	lw	a5,120(a0)
    80005124:	0004a703          	lw	a4,0(s1)
    80005128:	0017879b          	addiw	a5,a5,1
    8000512c:	06f52c23          	sw	a5,120(a0)
    80005130:	04071063          	bnez	a4,80005170 <acquire+0x94>
    80005134:	00100713          	li	a4,1
    80005138:	00070793          	mv	a5,a4
    8000513c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005140:	0007879b          	sext.w	a5,a5
    80005144:	fe079ae3          	bnez	a5,80005138 <acquire+0x5c>
    80005148:	0ff0000f          	fence
    8000514c:	fffff097          	auipc	ra,0xfffff
    80005150:	8a8080e7          	jalr	-1880(ra) # 800039f4 <mycpu>
    80005154:	01813083          	ld	ra,24(sp)
    80005158:	01013403          	ld	s0,16(sp)
    8000515c:	00a4b823          	sd	a0,16(s1)
    80005160:	00013903          	ld	s2,0(sp)
    80005164:	00813483          	ld	s1,8(sp)
    80005168:	02010113          	addi	sp,sp,32
    8000516c:	00008067          	ret
    80005170:	0104b903          	ld	s2,16(s1)
    80005174:	fffff097          	auipc	ra,0xfffff
    80005178:	880080e7          	jalr	-1920(ra) # 800039f4 <mycpu>
    8000517c:	faa91ce3          	bne	s2,a0,80005134 <acquire+0x58>
    80005180:	00001517          	auipc	a0,0x1
    80005184:	12850513          	addi	a0,a0,296 # 800062a8 <digits+0x20>
    80005188:	fffff097          	auipc	ra,0xfffff
    8000518c:	224080e7          	jalr	548(ra) # 800043ac <panic>
    80005190:	00195913          	srli	s2,s2,0x1
    80005194:	fffff097          	auipc	ra,0xfffff
    80005198:	860080e7          	jalr	-1952(ra) # 800039f4 <mycpu>
    8000519c:	00197913          	andi	s2,s2,1
    800051a0:	07252e23          	sw	s2,124(a0)
    800051a4:	f75ff06f          	j	80005118 <acquire+0x3c>

00000000800051a8 <release>:
    800051a8:	fe010113          	addi	sp,sp,-32
    800051ac:	00813823          	sd	s0,16(sp)
    800051b0:	00113c23          	sd	ra,24(sp)
    800051b4:	00913423          	sd	s1,8(sp)
    800051b8:	01213023          	sd	s2,0(sp)
    800051bc:	02010413          	addi	s0,sp,32
    800051c0:	00052783          	lw	a5,0(a0)
    800051c4:	00079a63          	bnez	a5,800051d8 <release+0x30>
    800051c8:	00001517          	auipc	a0,0x1
    800051cc:	0e850513          	addi	a0,a0,232 # 800062b0 <digits+0x28>
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	1dc080e7          	jalr	476(ra) # 800043ac <panic>
    800051d8:	01053903          	ld	s2,16(a0)
    800051dc:	00050493          	mv	s1,a0
    800051e0:	fffff097          	auipc	ra,0xfffff
    800051e4:	814080e7          	jalr	-2028(ra) # 800039f4 <mycpu>
    800051e8:	fea910e3          	bne	s2,a0,800051c8 <release+0x20>
    800051ec:	0004b823          	sd	zero,16(s1)
    800051f0:	0ff0000f          	fence
    800051f4:	0f50000f          	fence	iorw,ow
    800051f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800051fc:	ffffe097          	auipc	ra,0xffffe
    80005200:	7f8080e7          	jalr	2040(ra) # 800039f4 <mycpu>
    80005204:	100027f3          	csrr	a5,sstatus
    80005208:	0027f793          	andi	a5,a5,2
    8000520c:	04079a63          	bnez	a5,80005260 <release+0xb8>
    80005210:	07852783          	lw	a5,120(a0)
    80005214:	02f05e63          	blez	a5,80005250 <release+0xa8>
    80005218:	fff7871b          	addiw	a4,a5,-1
    8000521c:	06e52c23          	sw	a4,120(a0)
    80005220:	00071c63          	bnez	a4,80005238 <release+0x90>
    80005224:	07c52783          	lw	a5,124(a0)
    80005228:	00078863          	beqz	a5,80005238 <release+0x90>
    8000522c:	100027f3          	csrr	a5,sstatus
    80005230:	0027e793          	ori	a5,a5,2
    80005234:	10079073          	csrw	sstatus,a5
    80005238:	01813083          	ld	ra,24(sp)
    8000523c:	01013403          	ld	s0,16(sp)
    80005240:	00813483          	ld	s1,8(sp)
    80005244:	00013903          	ld	s2,0(sp)
    80005248:	02010113          	addi	sp,sp,32
    8000524c:	00008067          	ret
    80005250:	00001517          	auipc	a0,0x1
    80005254:	08050513          	addi	a0,a0,128 # 800062d0 <digits+0x48>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	154080e7          	jalr	340(ra) # 800043ac <panic>
    80005260:	00001517          	auipc	a0,0x1
    80005264:	05850513          	addi	a0,a0,88 # 800062b8 <digits+0x30>
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	144080e7          	jalr	324(ra) # 800043ac <panic>

0000000080005270 <holding>:
    80005270:	00052783          	lw	a5,0(a0)
    80005274:	00079663          	bnez	a5,80005280 <holding+0x10>
    80005278:	00000513          	li	a0,0
    8000527c:	00008067          	ret
    80005280:	fe010113          	addi	sp,sp,-32
    80005284:	00813823          	sd	s0,16(sp)
    80005288:	00913423          	sd	s1,8(sp)
    8000528c:	00113c23          	sd	ra,24(sp)
    80005290:	02010413          	addi	s0,sp,32
    80005294:	01053483          	ld	s1,16(a0)
    80005298:	ffffe097          	auipc	ra,0xffffe
    8000529c:	75c080e7          	jalr	1884(ra) # 800039f4 <mycpu>
    800052a0:	01813083          	ld	ra,24(sp)
    800052a4:	01013403          	ld	s0,16(sp)
    800052a8:	40a48533          	sub	a0,s1,a0
    800052ac:	00153513          	seqz	a0,a0
    800052b0:	00813483          	ld	s1,8(sp)
    800052b4:	02010113          	addi	sp,sp,32
    800052b8:	00008067          	ret

00000000800052bc <push_off>:
    800052bc:	fe010113          	addi	sp,sp,-32
    800052c0:	00813823          	sd	s0,16(sp)
    800052c4:	00113c23          	sd	ra,24(sp)
    800052c8:	00913423          	sd	s1,8(sp)
    800052cc:	02010413          	addi	s0,sp,32
    800052d0:	100024f3          	csrr	s1,sstatus
    800052d4:	100027f3          	csrr	a5,sstatus
    800052d8:	ffd7f793          	andi	a5,a5,-3
    800052dc:	10079073          	csrw	sstatus,a5
    800052e0:	ffffe097          	auipc	ra,0xffffe
    800052e4:	714080e7          	jalr	1812(ra) # 800039f4 <mycpu>
    800052e8:	07852783          	lw	a5,120(a0)
    800052ec:	02078663          	beqz	a5,80005318 <push_off+0x5c>
    800052f0:	ffffe097          	auipc	ra,0xffffe
    800052f4:	704080e7          	jalr	1796(ra) # 800039f4 <mycpu>
    800052f8:	07852783          	lw	a5,120(a0)
    800052fc:	01813083          	ld	ra,24(sp)
    80005300:	01013403          	ld	s0,16(sp)
    80005304:	0017879b          	addiw	a5,a5,1
    80005308:	06f52c23          	sw	a5,120(a0)
    8000530c:	00813483          	ld	s1,8(sp)
    80005310:	02010113          	addi	sp,sp,32
    80005314:	00008067          	ret
    80005318:	0014d493          	srli	s1,s1,0x1
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	6d8080e7          	jalr	1752(ra) # 800039f4 <mycpu>
    80005324:	0014f493          	andi	s1,s1,1
    80005328:	06952e23          	sw	s1,124(a0)
    8000532c:	fc5ff06f          	j	800052f0 <push_off+0x34>

0000000080005330 <pop_off>:
    80005330:	ff010113          	addi	sp,sp,-16
    80005334:	00813023          	sd	s0,0(sp)
    80005338:	00113423          	sd	ra,8(sp)
    8000533c:	01010413          	addi	s0,sp,16
    80005340:	ffffe097          	auipc	ra,0xffffe
    80005344:	6b4080e7          	jalr	1716(ra) # 800039f4 <mycpu>
    80005348:	100027f3          	csrr	a5,sstatus
    8000534c:	0027f793          	andi	a5,a5,2
    80005350:	04079663          	bnez	a5,8000539c <pop_off+0x6c>
    80005354:	07852783          	lw	a5,120(a0)
    80005358:	02f05a63          	blez	a5,8000538c <pop_off+0x5c>
    8000535c:	fff7871b          	addiw	a4,a5,-1
    80005360:	06e52c23          	sw	a4,120(a0)
    80005364:	00071c63          	bnez	a4,8000537c <pop_off+0x4c>
    80005368:	07c52783          	lw	a5,124(a0)
    8000536c:	00078863          	beqz	a5,8000537c <pop_off+0x4c>
    80005370:	100027f3          	csrr	a5,sstatus
    80005374:	0027e793          	ori	a5,a5,2
    80005378:	10079073          	csrw	sstatus,a5
    8000537c:	00813083          	ld	ra,8(sp)
    80005380:	00013403          	ld	s0,0(sp)
    80005384:	01010113          	addi	sp,sp,16
    80005388:	00008067          	ret
    8000538c:	00001517          	auipc	a0,0x1
    80005390:	f4450513          	addi	a0,a0,-188 # 800062d0 <digits+0x48>
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	018080e7          	jalr	24(ra) # 800043ac <panic>
    8000539c:	00001517          	auipc	a0,0x1
    800053a0:	f1c50513          	addi	a0,a0,-228 # 800062b8 <digits+0x30>
    800053a4:	fffff097          	auipc	ra,0xfffff
    800053a8:	008080e7          	jalr	8(ra) # 800043ac <panic>

00000000800053ac <push_on>:
    800053ac:	fe010113          	addi	sp,sp,-32
    800053b0:	00813823          	sd	s0,16(sp)
    800053b4:	00113c23          	sd	ra,24(sp)
    800053b8:	00913423          	sd	s1,8(sp)
    800053bc:	02010413          	addi	s0,sp,32
    800053c0:	100024f3          	csrr	s1,sstatus
    800053c4:	100027f3          	csrr	a5,sstatus
    800053c8:	0027e793          	ori	a5,a5,2
    800053cc:	10079073          	csrw	sstatus,a5
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	624080e7          	jalr	1572(ra) # 800039f4 <mycpu>
    800053d8:	07852783          	lw	a5,120(a0)
    800053dc:	02078663          	beqz	a5,80005408 <push_on+0x5c>
    800053e0:	ffffe097          	auipc	ra,0xffffe
    800053e4:	614080e7          	jalr	1556(ra) # 800039f4 <mycpu>
    800053e8:	07852783          	lw	a5,120(a0)
    800053ec:	01813083          	ld	ra,24(sp)
    800053f0:	01013403          	ld	s0,16(sp)
    800053f4:	0017879b          	addiw	a5,a5,1
    800053f8:	06f52c23          	sw	a5,120(a0)
    800053fc:	00813483          	ld	s1,8(sp)
    80005400:	02010113          	addi	sp,sp,32
    80005404:	00008067          	ret
    80005408:	0014d493          	srli	s1,s1,0x1
    8000540c:	ffffe097          	auipc	ra,0xffffe
    80005410:	5e8080e7          	jalr	1512(ra) # 800039f4 <mycpu>
    80005414:	0014f493          	andi	s1,s1,1
    80005418:	06952e23          	sw	s1,124(a0)
    8000541c:	fc5ff06f          	j	800053e0 <push_on+0x34>

0000000080005420 <pop_on>:
    80005420:	ff010113          	addi	sp,sp,-16
    80005424:	00813023          	sd	s0,0(sp)
    80005428:	00113423          	sd	ra,8(sp)
    8000542c:	01010413          	addi	s0,sp,16
    80005430:	ffffe097          	auipc	ra,0xffffe
    80005434:	5c4080e7          	jalr	1476(ra) # 800039f4 <mycpu>
    80005438:	100027f3          	csrr	a5,sstatus
    8000543c:	0027f793          	andi	a5,a5,2
    80005440:	04078463          	beqz	a5,80005488 <pop_on+0x68>
    80005444:	07852783          	lw	a5,120(a0)
    80005448:	02f05863          	blez	a5,80005478 <pop_on+0x58>
    8000544c:	fff7879b          	addiw	a5,a5,-1
    80005450:	06f52c23          	sw	a5,120(a0)
    80005454:	07853783          	ld	a5,120(a0)
    80005458:	00079863          	bnez	a5,80005468 <pop_on+0x48>
    8000545c:	100027f3          	csrr	a5,sstatus
    80005460:	ffd7f793          	andi	a5,a5,-3
    80005464:	10079073          	csrw	sstatus,a5
    80005468:	00813083          	ld	ra,8(sp)
    8000546c:	00013403          	ld	s0,0(sp)
    80005470:	01010113          	addi	sp,sp,16
    80005474:	00008067          	ret
    80005478:	00001517          	auipc	a0,0x1
    8000547c:	e8050513          	addi	a0,a0,-384 # 800062f8 <digits+0x70>
    80005480:	fffff097          	auipc	ra,0xfffff
    80005484:	f2c080e7          	jalr	-212(ra) # 800043ac <panic>
    80005488:	00001517          	auipc	a0,0x1
    8000548c:	e5050513          	addi	a0,a0,-432 # 800062d8 <digits+0x50>
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	f1c080e7          	jalr	-228(ra) # 800043ac <panic>

0000000080005498 <__memset>:
    80005498:	ff010113          	addi	sp,sp,-16
    8000549c:	00813423          	sd	s0,8(sp)
    800054a0:	01010413          	addi	s0,sp,16
    800054a4:	1a060e63          	beqz	a2,80005660 <__memset+0x1c8>
    800054a8:	40a007b3          	neg	a5,a0
    800054ac:	0077f793          	andi	a5,a5,7
    800054b0:	00778693          	addi	a3,a5,7
    800054b4:	00b00813          	li	a6,11
    800054b8:	0ff5f593          	andi	a1,a1,255
    800054bc:	fff6071b          	addiw	a4,a2,-1
    800054c0:	1b06e663          	bltu	a3,a6,8000566c <__memset+0x1d4>
    800054c4:	1cd76463          	bltu	a4,a3,8000568c <__memset+0x1f4>
    800054c8:	1a078e63          	beqz	a5,80005684 <__memset+0x1ec>
    800054cc:	00b50023          	sb	a1,0(a0)
    800054d0:	00100713          	li	a4,1
    800054d4:	1ae78463          	beq	a5,a4,8000567c <__memset+0x1e4>
    800054d8:	00b500a3          	sb	a1,1(a0)
    800054dc:	00200713          	li	a4,2
    800054e0:	1ae78a63          	beq	a5,a4,80005694 <__memset+0x1fc>
    800054e4:	00b50123          	sb	a1,2(a0)
    800054e8:	00300713          	li	a4,3
    800054ec:	18e78463          	beq	a5,a4,80005674 <__memset+0x1dc>
    800054f0:	00b501a3          	sb	a1,3(a0)
    800054f4:	00400713          	li	a4,4
    800054f8:	1ae78263          	beq	a5,a4,8000569c <__memset+0x204>
    800054fc:	00b50223          	sb	a1,4(a0)
    80005500:	00500713          	li	a4,5
    80005504:	1ae78063          	beq	a5,a4,800056a4 <__memset+0x20c>
    80005508:	00b502a3          	sb	a1,5(a0)
    8000550c:	00700713          	li	a4,7
    80005510:	18e79e63          	bne	a5,a4,800056ac <__memset+0x214>
    80005514:	00b50323          	sb	a1,6(a0)
    80005518:	00700e93          	li	t4,7
    8000551c:	00859713          	slli	a4,a1,0x8
    80005520:	00e5e733          	or	a4,a1,a4
    80005524:	01059e13          	slli	t3,a1,0x10
    80005528:	01c76e33          	or	t3,a4,t3
    8000552c:	01859313          	slli	t1,a1,0x18
    80005530:	006e6333          	or	t1,t3,t1
    80005534:	02059893          	slli	a7,a1,0x20
    80005538:	40f60e3b          	subw	t3,a2,a5
    8000553c:	011368b3          	or	a7,t1,a7
    80005540:	02859813          	slli	a6,a1,0x28
    80005544:	0108e833          	or	a6,a7,a6
    80005548:	03059693          	slli	a3,a1,0x30
    8000554c:	003e589b          	srliw	a7,t3,0x3
    80005550:	00d866b3          	or	a3,a6,a3
    80005554:	03859713          	slli	a4,a1,0x38
    80005558:	00389813          	slli	a6,a7,0x3
    8000555c:	00f507b3          	add	a5,a0,a5
    80005560:	00e6e733          	or	a4,a3,a4
    80005564:	000e089b          	sext.w	a7,t3
    80005568:	00f806b3          	add	a3,a6,a5
    8000556c:	00e7b023          	sd	a4,0(a5)
    80005570:	00878793          	addi	a5,a5,8
    80005574:	fed79ce3          	bne	a5,a3,8000556c <__memset+0xd4>
    80005578:	ff8e7793          	andi	a5,t3,-8
    8000557c:	0007871b          	sext.w	a4,a5
    80005580:	01d787bb          	addw	a5,a5,t4
    80005584:	0ce88e63          	beq	a7,a4,80005660 <__memset+0x1c8>
    80005588:	00f50733          	add	a4,a0,a5
    8000558c:	00b70023          	sb	a1,0(a4)
    80005590:	0017871b          	addiw	a4,a5,1
    80005594:	0cc77663          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    80005598:	00e50733          	add	a4,a0,a4
    8000559c:	00b70023          	sb	a1,0(a4)
    800055a0:	0027871b          	addiw	a4,a5,2
    800055a4:	0ac77e63          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    800055a8:	00e50733          	add	a4,a0,a4
    800055ac:	00b70023          	sb	a1,0(a4)
    800055b0:	0037871b          	addiw	a4,a5,3
    800055b4:	0ac77663          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    800055b8:	00e50733          	add	a4,a0,a4
    800055bc:	00b70023          	sb	a1,0(a4)
    800055c0:	0047871b          	addiw	a4,a5,4
    800055c4:	08c77e63          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    800055c8:	00e50733          	add	a4,a0,a4
    800055cc:	00b70023          	sb	a1,0(a4)
    800055d0:	0057871b          	addiw	a4,a5,5
    800055d4:	08c77663          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    800055d8:	00e50733          	add	a4,a0,a4
    800055dc:	00b70023          	sb	a1,0(a4)
    800055e0:	0067871b          	addiw	a4,a5,6
    800055e4:	06c77e63          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    800055e8:	00e50733          	add	a4,a0,a4
    800055ec:	00b70023          	sb	a1,0(a4)
    800055f0:	0077871b          	addiw	a4,a5,7
    800055f4:	06c77663          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    800055f8:	00e50733          	add	a4,a0,a4
    800055fc:	00b70023          	sb	a1,0(a4)
    80005600:	0087871b          	addiw	a4,a5,8
    80005604:	04c77e63          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    80005608:	00e50733          	add	a4,a0,a4
    8000560c:	00b70023          	sb	a1,0(a4)
    80005610:	0097871b          	addiw	a4,a5,9
    80005614:	04c77663          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    80005618:	00e50733          	add	a4,a0,a4
    8000561c:	00b70023          	sb	a1,0(a4)
    80005620:	00a7871b          	addiw	a4,a5,10
    80005624:	02c77e63          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    80005628:	00e50733          	add	a4,a0,a4
    8000562c:	00b70023          	sb	a1,0(a4)
    80005630:	00b7871b          	addiw	a4,a5,11
    80005634:	02c77663          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00b70023          	sb	a1,0(a4)
    80005640:	00c7871b          	addiw	a4,a5,12
    80005644:	00c77e63          	bgeu	a4,a2,80005660 <__memset+0x1c8>
    80005648:	00e50733          	add	a4,a0,a4
    8000564c:	00b70023          	sb	a1,0(a4)
    80005650:	00d7879b          	addiw	a5,a5,13
    80005654:	00c7f663          	bgeu	a5,a2,80005660 <__memset+0x1c8>
    80005658:	00f507b3          	add	a5,a0,a5
    8000565c:	00b78023          	sb	a1,0(a5)
    80005660:	00813403          	ld	s0,8(sp)
    80005664:	01010113          	addi	sp,sp,16
    80005668:	00008067          	ret
    8000566c:	00b00693          	li	a3,11
    80005670:	e55ff06f          	j	800054c4 <__memset+0x2c>
    80005674:	00300e93          	li	t4,3
    80005678:	ea5ff06f          	j	8000551c <__memset+0x84>
    8000567c:	00100e93          	li	t4,1
    80005680:	e9dff06f          	j	8000551c <__memset+0x84>
    80005684:	00000e93          	li	t4,0
    80005688:	e95ff06f          	j	8000551c <__memset+0x84>
    8000568c:	00000793          	li	a5,0
    80005690:	ef9ff06f          	j	80005588 <__memset+0xf0>
    80005694:	00200e93          	li	t4,2
    80005698:	e85ff06f          	j	8000551c <__memset+0x84>
    8000569c:	00400e93          	li	t4,4
    800056a0:	e7dff06f          	j	8000551c <__memset+0x84>
    800056a4:	00500e93          	li	t4,5
    800056a8:	e75ff06f          	j	8000551c <__memset+0x84>
    800056ac:	00600e93          	li	t4,6
    800056b0:	e6dff06f          	j	8000551c <__memset+0x84>

00000000800056b4 <__memmove>:
    800056b4:	ff010113          	addi	sp,sp,-16
    800056b8:	00813423          	sd	s0,8(sp)
    800056bc:	01010413          	addi	s0,sp,16
    800056c0:	0e060863          	beqz	a2,800057b0 <__memmove+0xfc>
    800056c4:	fff6069b          	addiw	a3,a2,-1
    800056c8:	0006881b          	sext.w	a6,a3
    800056cc:	0ea5e863          	bltu	a1,a0,800057bc <__memmove+0x108>
    800056d0:	00758713          	addi	a4,a1,7
    800056d4:	00a5e7b3          	or	a5,a1,a0
    800056d8:	40a70733          	sub	a4,a4,a0
    800056dc:	0077f793          	andi	a5,a5,7
    800056e0:	00f73713          	sltiu	a4,a4,15
    800056e4:	00174713          	xori	a4,a4,1
    800056e8:	0017b793          	seqz	a5,a5
    800056ec:	00e7f7b3          	and	a5,a5,a4
    800056f0:	10078863          	beqz	a5,80005800 <__memmove+0x14c>
    800056f4:	00900793          	li	a5,9
    800056f8:	1107f463          	bgeu	a5,a6,80005800 <__memmove+0x14c>
    800056fc:	0036581b          	srliw	a6,a2,0x3
    80005700:	fff8081b          	addiw	a6,a6,-1
    80005704:	02081813          	slli	a6,a6,0x20
    80005708:	01d85893          	srli	a7,a6,0x1d
    8000570c:	00858813          	addi	a6,a1,8
    80005710:	00058793          	mv	a5,a1
    80005714:	00050713          	mv	a4,a0
    80005718:	01088833          	add	a6,a7,a6
    8000571c:	0007b883          	ld	a7,0(a5)
    80005720:	00878793          	addi	a5,a5,8
    80005724:	00870713          	addi	a4,a4,8
    80005728:	ff173c23          	sd	a7,-8(a4)
    8000572c:	ff0798e3          	bne	a5,a6,8000571c <__memmove+0x68>
    80005730:	ff867713          	andi	a4,a2,-8
    80005734:	02071793          	slli	a5,a4,0x20
    80005738:	0207d793          	srli	a5,a5,0x20
    8000573c:	00f585b3          	add	a1,a1,a5
    80005740:	40e686bb          	subw	a3,a3,a4
    80005744:	00f507b3          	add	a5,a0,a5
    80005748:	06e60463          	beq	a2,a4,800057b0 <__memmove+0xfc>
    8000574c:	0005c703          	lbu	a4,0(a1)
    80005750:	00e78023          	sb	a4,0(a5)
    80005754:	04068e63          	beqz	a3,800057b0 <__memmove+0xfc>
    80005758:	0015c603          	lbu	a2,1(a1)
    8000575c:	00100713          	li	a4,1
    80005760:	00c780a3          	sb	a2,1(a5)
    80005764:	04e68663          	beq	a3,a4,800057b0 <__memmove+0xfc>
    80005768:	0025c603          	lbu	a2,2(a1)
    8000576c:	00200713          	li	a4,2
    80005770:	00c78123          	sb	a2,2(a5)
    80005774:	02e68e63          	beq	a3,a4,800057b0 <__memmove+0xfc>
    80005778:	0035c603          	lbu	a2,3(a1)
    8000577c:	00300713          	li	a4,3
    80005780:	00c781a3          	sb	a2,3(a5)
    80005784:	02e68663          	beq	a3,a4,800057b0 <__memmove+0xfc>
    80005788:	0045c603          	lbu	a2,4(a1)
    8000578c:	00400713          	li	a4,4
    80005790:	00c78223          	sb	a2,4(a5)
    80005794:	00e68e63          	beq	a3,a4,800057b0 <__memmove+0xfc>
    80005798:	0055c603          	lbu	a2,5(a1)
    8000579c:	00500713          	li	a4,5
    800057a0:	00c782a3          	sb	a2,5(a5)
    800057a4:	00e68663          	beq	a3,a4,800057b0 <__memmove+0xfc>
    800057a8:	0065c703          	lbu	a4,6(a1)
    800057ac:	00e78323          	sb	a4,6(a5)
    800057b0:	00813403          	ld	s0,8(sp)
    800057b4:	01010113          	addi	sp,sp,16
    800057b8:	00008067          	ret
    800057bc:	02061713          	slli	a4,a2,0x20
    800057c0:	02075713          	srli	a4,a4,0x20
    800057c4:	00e587b3          	add	a5,a1,a4
    800057c8:	f0f574e3          	bgeu	a0,a5,800056d0 <__memmove+0x1c>
    800057cc:	02069613          	slli	a2,a3,0x20
    800057d0:	02065613          	srli	a2,a2,0x20
    800057d4:	fff64613          	not	a2,a2
    800057d8:	00e50733          	add	a4,a0,a4
    800057dc:	00c78633          	add	a2,a5,a2
    800057e0:	fff7c683          	lbu	a3,-1(a5)
    800057e4:	fff78793          	addi	a5,a5,-1
    800057e8:	fff70713          	addi	a4,a4,-1
    800057ec:	00d70023          	sb	a3,0(a4)
    800057f0:	fec798e3          	bne	a5,a2,800057e0 <__memmove+0x12c>
    800057f4:	00813403          	ld	s0,8(sp)
    800057f8:	01010113          	addi	sp,sp,16
    800057fc:	00008067          	ret
    80005800:	02069713          	slli	a4,a3,0x20
    80005804:	02075713          	srli	a4,a4,0x20
    80005808:	00170713          	addi	a4,a4,1
    8000580c:	00e50733          	add	a4,a0,a4
    80005810:	00050793          	mv	a5,a0
    80005814:	0005c683          	lbu	a3,0(a1)
    80005818:	00178793          	addi	a5,a5,1
    8000581c:	00158593          	addi	a1,a1,1
    80005820:	fed78fa3          	sb	a3,-1(a5)
    80005824:	fee798e3          	bne	a5,a4,80005814 <__memmove+0x160>
    80005828:	f89ff06f          	j	800057b0 <__memmove+0xfc>
	...
