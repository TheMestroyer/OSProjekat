
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	ac013103          	ld	sp,-1344(sp) # 80005ac0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4e9020ef          	jal	ra,80002d04 <start>

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
    80001248:	550010ef          	jal	ra,80002798 <HandleInterupt>

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
        for (volatile long j = 0; j < 5000000L; j++);
    }
    sem_signal(done);
}

void echoBody(void* arg) {
    8000157c:	ff010113          	addi	sp,sp,-16
    80001580:	00113423          	sd	ra,8(sp)
    80001584:	00813023          	sd	s0,0(sp)
    80001588:	01010413          	addi	s0,sp,16
    (void)arg;
    putc('>');
    8000158c:	03e00513          	li	a0,62
    80001590:	00000097          	auipc	ra,0x0
    80001594:	f90080e7          	jalr	-112(ra) # 80001520 <putc>
    while (1) {
        char c = getc();
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	f64080e7          	jalr	-156(ra) # 800014fc <getc>
        putc(c);
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	f80080e7          	jalr	-128(ra) # 80001520 <putc>
    while (1) {
    800015a8:	ff1ff06f          	j	80001598 <echoBody+0x1c>

00000000800015ac <userMain>:
    }
}

void userMain() {
    800015ac:	fe010113          	addi	sp,sp,-32
    800015b0:	00113c23          	sd	ra,24(sp)
    800015b4:	00813823          	sd	s0,16(sp)
    800015b8:	02010413          	addi	s0,sp,32
    //sem_close(done);
    //putc('\n');
    //putc('O'); putc('K'); putc('\n');

    thread_t echo;
    thread_create(&echo, echoBody, 0);
    800015bc:	00000613          	li	a2,0
    800015c0:	00000597          	auipc	a1,0x0
    800015c4:	fbc58593          	addi	a1,a1,-68 # 8000157c <echoBody>
    800015c8:	fe840513          	addi	a0,s0,-24
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	d5c080e7          	jalr	-676(ra) # 80001328 <thread_create>
    while (1) {}
    800015d4:	0000006f          	j	800015d4 <userMain+0x28>

00000000800015d8 <worker>:
void worker(void* arg) {
    800015d8:	fd010113          	addi	sp,sp,-48
    800015dc:	02113423          	sd	ra,40(sp)
    800015e0:	02813023          	sd	s0,32(sp)
    800015e4:	00913c23          	sd	s1,24(sp)
    800015e8:	01213823          	sd	s2,16(sp)
    800015ec:	03010413          	addi	s0,sp,48
    char c = (char)(size_t)arg;
    800015f0:	0ff57913          	andi	s2,a0,255
    for (int i = 0; i < 4; i++) {
    800015f4:	00000493          	li	s1,0
    800015f8:	0240006f          	j	8000161c <worker+0x44>
        for (volatile long j = 0; j < 5000000L; j++);
    800015fc:	fd843783          	ld	a5,-40(s0)
    80001600:	00178793          	addi	a5,a5,1 # 8001 <_entry-0x7fff7fff>
    80001604:	fcf43c23          	sd	a5,-40(s0)
    80001608:	fd843703          	ld	a4,-40(s0)
    8000160c:	004c57b7          	lui	a5,0x4c5
    80001610:	b3f78793          	addi	a5,a5,-1217 # 4c4b3f <_entry-0x7fb3b4c1>
    80001614:	fee7d4e3          	bge	a5,a4,800015fc <worker+0x24>
    for (int i = 0; i < 4; i++) {
    80001618:	0014849b          	addiw	s1,s1,1
    8000161c:	00300793          	li	a5,3
    80001620:	0497c463          	blt	a5,s1,80001668 <worker+0x90>
        sem_wait(mutex);
    80001624:	00000513          	li	a0,0
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	e4c080e7          	jalr	-436(ra) # 80001474 <sem_wait>
        putc('[');
    80001630:	05b00513          	li	a0,91
    80001634:	00000097          	auipc	ra,0x0
    80001638:	eec080e7          	jalr	-276(ra) # 80001520 <putc>
        putc(c);
    8000163c:	00090513          	mv	a0,s2
    80001640:	00000097          	auipc	ra,0x0
    80001644:	ee0080e7          	jalr	-288(ra) # 80001520 <putc>
        putc(']');
    80001648:	05d00513          	li	a0,93
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	ed4080e7          	jalr	-300(ra) # 80001520 <putc>
        sem_signal(mutex);
    80001654:	00000513          	li	a0,0
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	e44080e7          	jalr	-444(ra) # 8000149c <sem_signal>
        for (volatile long j = 0; j < 5000000L; j++);
    80001660:	fc043c23          	sd	zero,-40(s0)
    80001664:	fa5ff06f          	j	80001608 <worker+0x30>
    sem_signal(done);
    80001668:	00000513          	li	a0,0
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	e30080e7          	jalr	-464(ra) # 8000149c <sem_signal>
}
    80001674:	02813083          	ld	ra,40(sp)
    80001678:	02013403          	ld	s0,32(sp)
    8000167c:	01813483          	ld	s1,24(sp)
    80001680:	01013903          	ld	s2,16(sp)
    80001684:	03010113          	addi	sp,sp,48
    80001688:	00008067          	ret

000000008000168c <drop_to_user>:
}

void drop_to_user(void (*fn)()) {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001698:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000169c:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    800016a0:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    800016a4:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800016a8:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    800016ac:	10200073          	sret
}
    800016b0:	00813403          	ld	s0,8(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <main>:
void interupt();
int main() {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00113423          	sd	ra,8(sp)
    800016c4:	00813023          	sd	s0,0(sp)
    800016c8:	01010413          	addi	s0,sp,16
    start_main_thread();
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	4f8080e7          	jalr	1272(ra) # 80002bc4 <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    800016d4:	00000797          	auipc	a5,0x0
    800016d8:	aec78793          	addi	a5,a5,-1300 # 800011c0 <interupt>
    800016dc:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0" :: "r"((uint64)(0x2 | 0x200)));
    800016e0:	20200793          	li	a5,514
    800016e4:	10479073          	csrw	sie,a5
    drop_to_user(userMain);
    800016e8:	00000517          	auipc	a0,0x0
    800016ec:	ec450513          	addi	a0,a0,-316 # 800015ac <userMain>
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	f9c080e7          	jalr	-100(ra) # 8000168c <drop_to_user>
    return 0;
    800016f8:	00000513          	li	a0,0
    800016fc:	00813083          	ld	ra,8(sp)
    80001700:	00013403          	ld	s0,0(sp)
    80001704:	01010113          	addi	sp,sp,16
    80001708:	00008067          	ret

000000008000170c <_ZN9Semaphore4initEj>:
//

#include "Semaphore.hpp"
#include "Scheduler.hpp"

void Semaphore::init(unsigned initialValue) {
    8000170c:	ff010113          	addi	sp,sp,-16
    80001710:	00813423          	sd	s0,8(sp)
    80001714:	01010413          	addi	s0,sp,16
    blockedHead = nullptr;
    80001718:	00053423          	sd	zero,8(a0)
    blockedTail = nullptr;
    8000171c:	00053823          	sd	zero,16(a0)
    value = (int)initialValue;
    80001720:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001724:	00050223          	sb	zero,4(a0)
}
    80001728:	00813403          	ld	s0,8(sp)
    8000172c:	01010113          	addi	sp,sp,16
    80001730:	00008067          	ret

0000000080001734 <_ZN9Semaphore7enqueueEP6Thread>:

void Semaphore::enqueue(Thread* thread) {
    80001734:	fe010113          	addi	sp,sp,-32
    80001738:	00113c23          	sd	ra,24(sp)
    8000173c:	00813823          	sd	s0,16(sp)
    80001740:	00913423          	sd	s1,8(sp)
    80001744:	01213023          	sd	s2,0(sp)
    80001748:	02010413          	addi	s0,sp,32
    8000174c:	00050913          	mv	s2,a0
    80001750:	00058493          	mv	s1,a1
    thread->setNextInQueue(nullptr);
    80001754:	00000593          	li	a1,0
    80001758:	00048513          	mv	a0,s1
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	48c080e7          	jalr	1164(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    80001764:	01093583          	ld	a1,16(s2)
    80001768:	02058e63          	beqz	a1,800017a4 <_ZN9Semaphore7enqueueEP6Thread+0x70>
        thread->setPrevInQueue(blockedTail);
    8000176c:	00048513          	mv	a0,s1
    80001770:	00000097          	auipc	ra,0x0
    80001774:	494080e7          	jalr	1172(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    80001778:	00048593          	mv	a1,s1
    8000177c:	01093503          	ld	a0,16(s2)
    80001780:	00000097          	auipc	ra,0x0
    80001784:	468080e7          	jalr	1128(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        blockedHead = thread;
    }
    blockedTail = thread;
    80001788:	00993823          	sd	s1,16(s2)
}
    8000178c:	01813083          	ld	ra,24(sp)
    80001790:	01013403          	ld	s0,16(sp)
    80001794:	00813483          	ld	s1,8(sp)
    80001798:	00013903          	ld	s2,0(sp)
    8000179c:	02010113          	addi	sp,sp,32
    800017a0:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800017a4:	00000593          	li	a1,0
    800017a8:	00048513          	mv	a0,s1
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	458080e7          	jalr	1112(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
        blockedHead = thread;
    800017b4:	00993423          	sd	s1,8(s2)
    800017b8:	fd1ff06f          	j	80001788 <_ZN9Semaphore7enqueueEP6Thread+0x54>

00000000800017bc <_ZN9Semaphore7dequeueEv>:

Thread* Semaphore::dequeue() {
    800017bc:	fe010113          	addi	sp,sp,-32
    800017c0:	00113c23          	sd	ra,24(sp)
    800017c4:	00813823          	sd	s0,16(sp)
    800017c8:	00913423          	sd	s1,8(sp)
    800017cc:	01213023          	sd	s2,0(sp)
    800017d0:	02010413          	addi	s0,sp,32
    if (blockedHead == nullptr) return nullptr;
    800017d4:	00853483          	ld	s1,8(a0)
    800017d8:	04048463          	beqz	s1,80001820 <_ZN9Semaphore7dequeueEv+0x64>
    800017dc:	00050913          	mv	s2,a0
    Thread* thread = blockedHead;
    blockedHead = thread->getNextInQueue();
    800017e0:	00048513          	mv	a0,s1
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	3cc080e7          	jalr	972(ra) # 80001bb0 <_ZN6Thread14getNextInQueueEv>
    800017ec:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    800017f0:	04050663          	beqz	a0,8000183c <_ZN9Semaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    800017f4:	00000593          	li	a1,0
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	40c080e7          	jalr	1036(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    80001800:	00000593          	li	a1,0
    80001804:	00048513          	mv	a0,s1
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	3e0080e7          	jalr	992(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80001810:	00000593          	li	a1,0
    80001814:	00048513          	mv	a0,s1
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	3ec080e7          	jalr	1004(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
    return thread;
}
    80001820:	00048513          	mv	a0,s1
    80001824:	01813083          	ld	ra,24(sp)
    80001828:	01013403          	ld	s0,16(sp)
    8000182c:	00813483          	ld	s1,8(sp)
    80001830:	00013903          	ld	s2,0(sp)
    80001834:	02010113          	addi	sp,sp,32
    80001838:	00008067          	ret
    else blockedTail = nullptr;
    8000183c:	00093823          	sd	zero,16(s2)
    80001840:	fc1ff06f          	j	80001800 <_ZN9Semaphore7dequeueEv+0x44>

0000000080001844 <_ZN9Semaphore4waitEP6Thread>:

int Semaphore::wait(Thread* caller) {
    if (closed) { return -1; }
    80001844:	00454783          	lbu	a5,4(a0)
    80001848:	04079a63          	bnez	a5,8000189c <_ZN9Semaphore4waitEP6Thread+0x58>
    if (value > 0) { value--; return 0; }
    8000184c:	00052783          	lw	a5,0(a0)
    80001850:	00f05a63          	blez	a5,80001864 <_ZN9Semaphore4waitEP6Thread+0x20>
    80001854:	fff7879b          	addiw	a5,a5,-1
    80001858:	00f52023          	sw	a5,0(a0)
    8000185c:	00000513          	li	a0,0
    80001860:	00008067          	ret
int Semaphore::wait(Thread* caller) {
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00113423          	sd	ra,8(sp)
    8000186c:	00813023          	sd	s0,0(sp)
    80001870:	01010413          	addi	s0,sp,16
    caller->sleepDelta = 1;
    80001874:	00100793          	li	a5,1
    80001878:	02f5bc23          	sd	a5,56(a1)
    caller->threadContext.x[10] = 0;
    8000187c:	0805b823          	sd	zero,144(a1)
    enqueue(caller);
    80001880:	00000097          	auipc	ra,0x0
    80001884:	eb4080e7          	jalr	-332(ra) # 80001734 <_ZN9Semaphore7enqueueEP6Thread>
    return 1;
    80001888:	00100513          	li	a0,1
}
    8000188c:	00813083          	ld	ra,8(sp)
    80001890:	00013403          	ld	s0,0(sp)
    80001894:	01010113          	addi	sp,sp,16
    80001898:	00008067          	ret
    if (closed) { return -1; }
    8000189c:	fff00513          	li	a0,-1
}
    800018a0:	00008067          	ret

00000000800018a4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    value+=1;
    800018a4:	00052783          	lw	a5,0(a0)
    800018a8:	0017879b          	addiw	a5,a5,1
    800018ac:	0007871b          	sext.w	a4,a5
    800018b0:	00f52023          	sw	a5,0(a0)
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    800018b4:	00853783          	ld	a5,8(a0)
    800018b8:	06078063          	beqz	a5,80001918 <_ZN9Semaphore6signalEv+0x74>
int Semaphore::signal() {
    800018bc:	fe010113          	addi	sp,sp,-32
    800018c0:	00113c23          	sd	ra,24(sp)
    800018c4:	00813823          	sd	s0,16(sp)
    800018c8:	00913423          	sd	s1,8(sp)
    800018cc:	02010413          	addi	s0,sp,32
    800018d0:	00050493          	mv	s1,a0
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    800018d4:	0387a783          	lw	a5,56(a5)
    800018d8:	00f75e63          	bge	a4,a5,800018f4 <_ZN9Semaphore6signalEv+0x50>
        Thread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}
    800018dc:	00000513          	li	a0,0
    800018e0:	01813083          	ld	ra,24(sp)
    800018e4:	01013403          	ld	s0,16(sp)
    800018e8:	00813483          	ld	s1,8(sp)
    800018ec:	02010113          	addi	sp,sp,32
    800018f0:	00008067          	ret
        Thread* thread = dequeue();
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	ec8080e7          	jalr	-312(ra) # 800017bc <_ZN9Semaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    800018fc:	03853703          	ld	a4,56(a0)
    80001900:	0004a783          	lw	a5,0(s1)
    80001904:	40e787bb          	subw	a5,a5,a4
    80001908:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	4e4080e7          	jalr	1252(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
    80001914:	fc9ff06f          	j	800018dc <_ZN9Semaphore6signalEv+0x38>
}
    80001918:	00000513          	li	a0,0
    8000191c:	00008067          	ret

0000000080001920 <_ZN9Semaphore5waitNEP6Threadj>:

int Semaphore::waitN(Thread* caller, unsigned n) {
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001920:	00454783          	lbu	a5,4(a0)
    80001924:	02079063          	bnez	a5,80001944 <_ZN9Semaphore5waitNEP6Threadj+0x24>
    if (value >= (int)n) { value -= (int)n; return 0; }
    80001928:	00052783          	lw	a5,0(a0)
    8000192c:	0006071b          	sext.w	a4,a2
    80001930:	02e7c263          	blt	a5,a4,80001954 <_ZN9Semaphore5waitNEP6Threadj+0x34>
    80001934:	40e787bb          	subw	a5,a5,a4
    80001938:	00f52023          	sw	a5,0(a0)
    8000193c:	00000513          	li	a0,0
    caller->sleepDelta = (time_t)n;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}
    80001940:	00008067          	ret
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001944:	fff00793          	li	a5,-1
    80001948:	08f5b823          	sd	a5,144(a1)
    8000194c:	fff00513          	li	a0,-1
    80001950:	00008067          	ret
int Semaphore::waitN(Thread* caller, unsigned n) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
    caller->sleepDelta = (time_t)n;
    80001964:	02061613          	slli	a2,a2,0x20
    80001968:	02065613          	srli	a2,a2,0x20
    8000196c:	02c5bc23          	sd	a2,56(a1)
    caller->threadContext.x[10] = 0;
    80001970:	0805b823          	sd	zero,144(a1)
    enqueue(caller);
    80001974:	00000097          	auipc	ra,0x0
    80001978:	dc0080e7          	jalr	-576(ra) # 80001734 <_ZN9Semaphore7enqueueEP6Thread>
    return 1;
    8000197c:	00100513          	li	a0,1
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret

0000000080001990 <_ZN9Semaphore7signalNEj>:

int Semaphore::signalN(unsigned n) {
    80001990:	fe010113          	addi	sp,sp,-32
    80001994:	00113c23          	sd	ra,24(sp)
    80001998:	00813823          	sd	s0,16(sp)
    8000199c:	00913423          	sd	s1,8(sp)
    800019a0:	02010413          	addi	s0,sp,32
    800019a4:	00050493          	mv	s1,a0
    value += (int)n;
    800019a8:	00052783          	lw	a5,0(a0)
    800019ac:	00b787bb          	addw	a5,a5,a1
    800019b0:	00f52023          	sw	a5,0(a0)
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    800019b4:	0084b783          	ld	a5,8(s1)
    800019b8:	02078c63          	beqz	a5,800019f0 <_ZN9Semaphore7signalNEj+0x60>
    800019bc:	0004a703          	lw	a4,0(s1)
    800019c0:	0387a783          	lw	a5,56(a5)
    800019c4:	02f74663          	blt	a4,a5,800019f0 <_ZN9Semaphore7signalNEj+0x60>
        Thread* thread = dequeue();
    800019c8:	00048513          	mv	a0,s1
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	df0080e7          	jalr	-528(ra) # 800017bc <_ZN9Semaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    800019d4:	03853703          	ld	a4,56(a0)
    800019d8:	0004a783          	lw	a5,0(s1)
    800019dc:	40e787bb          	subw	a5,a5,a4
    800019e0:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	40c080e7          	jalr	1036(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    800019ec:	fc9ff06f          	j	800019b4 <_ZN9Semaphore7signalNEj+0x24>
    }
    return 0;
}
    800019f0:	00000513          	li	a0,0
    800019f4:	01813083          	ld	ra,24(sp)
    800019f8:	01013403          	ld	s0,16(sp)
    800019fc:	00813483          	ld	s1,8(sp)
    80001a00:	02010113          	addi	sp,sp,32
    80001a04:	00008067          	ret

0000000080001a08 <_ZN9Semaphore5closeEv>:

int Semaphore::close() {
    80001a08:	fe010113          	addi	sp,sp,-32
    80001a0c:	00113c23          	sd	ra,24(sp)
    80001a10:	00813823          	sd	s0,16(sp)
    80001a14:	00913423          	sd	s1,8(sp)
    80001a18:	02010413          	addi	s0,sp,32
    80001a1c:	00050493          	mv	s1,a0
    closed = true;
    80001a20:	00100793          	li	a5,1
    80001a24:	00f50223          	sb	a5,4(a0)
    Thread* thread = dequeue();
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	d94080e7          	jalr	-620(ra) # 800017bc <_ZN9Semaphore7dequeueEv>
    while (thread != nullptr) {
    80001a30:	02050263          	beqz	a0,80001a54 <_ZN9Semaphore5closeEv+0x4c>
        thread->threadContext.x[10] = (size_t)-1;
    80001a34:	fff00793          	li	a5,-1
    80001a38:	08f53823          	sd	a5,144(a0)
        Scheduler::Put(thread);
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	3b4080e7          	jalr	948(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
        thread = dequeue();
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	d74080e7          	jalr	-652(ra) # 800017bc <_ZN9Semaphore7dequeueEv>
    while (thread != nullptr) {
    80001a50:	fe1ff06f          	j	80001a30 <_ZN9Semaphore5closeEv+0x28>
    }
    return 0;
    80001a54:	00000513          	li	a0,0
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	02010113          	addi	sp,sp,32
    80001a68:	00008067          	ret

0000000080001a6c <_ZN6Thread16threadTrampolineEPS_>:
    sstatus_val |= (1UL << 8); // SPP=1
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void Thread::threadTrampoline(Thread* t) {
    80001a6c:	fe010113          	addi	sp,sp,-32
    80001a70:	00113c23          	sd	ra,24(sp)
    80001a74:	00813823          	sd	s0,16(sp)
    80001a78:	00913423          	sd	s1,8(sp)
    80001a7c:	02010413          	addi	s0,sp,32
    80001a80:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001a84:	00053783          	ld	a5,0(a0)
    80001a88:	00078663          	beqz	a5,80001a94 <_ZN6Thread16threadTrampolineEPS_+0x28>
    80001a8c:	00853503          	ld	a0,8(a0)
    80001a90:	000780e7          	jalr	a5
    Scheduler::ThreadExit(t);
    80001a94:	00048513          	mv	a0,s1
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	304080e7          	jalr	772(ra) # 80001d9c <_ZN9Scheduler10ThreadExitEP6Thread>
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00813423          	sd	s0,8(sp)
    80001abc:	01010413          	addi	s0,sp,16
}
    80001ac0:	00813403          	ld	s0,8(sp)
    80001ac4:	01010113          	addi	sp,sp,16
    80001ac8:	00008067          	ret

0000000080001acc <_ZN6Thread4initEv>:
void Thread::init() {
    80001acc:	ff010113          	addi	sp,sp,-16
    80001ad0:	00813423          	sd	s0,8(sp)
    80001ad4:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001ad8:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001adc:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001ae0:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001ae4:	00053c23          	sd	zero,24(a0)
    next = nullptr;
    80001ae8:	02053023          	sd	zero,32(a0)
    stackPtr = nullptr;
    80001aec:	02053423          	sd	zero,40(a0)
    supervisorSp = nullptr;
    80001af0:	02053823          	sd	zero,48(a0)
    sleepDelta = 0;
    80001af4:	02053c23          	sd	zero,56(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001af8:	00000713          	li	a4,0
    80001afc:	01f00793          	li	a5,31
    80001b00:	00e7ce63          	blt	a5,a4,80001b1c <_ZN6Thread4initEv+0x50>
    80001b04:	00870793          	addi	a5,a4,8
    80001b08:	00379793          	slli	a5,a5,0x3
    80001b0c:	00f507b3          	add	a5,a0,a5
    80001b10:	0007b023          	sd	zero,0(a5)
    80001b14:	0017071b          	addiw	a4,a4,1
    80001b18:	fe5ff06f          	j	80001afc <_ZN6Thread4initEv+0x30>
    threadContext.sepc = 0;
    80001b1c:	14053023          	sd	zero,320(a0)
    threadContext.sstatus = 0;
    80001b20:	14053423          	sd	zero,328(a0)
    threadContext.pc = 0;
    80001b24:	14053823          	sd	zero,336(a0)
}
    80001b28:	00813403          	ld	s0,8(sp)
    80001b2c:	01010113          	addi	sp,sp,16
    80001b30:	00008067          	ret

0000000080001b34 <_ZN6Thread11copyContextEPm>:
void Thread::copyContext(size_t* ctx) {
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00813423          	sd	s0,8(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001b40:	00000713          	li	a4,0
    80001b44:	01f00793          	li	a5,31
    80001b48:	02e7c463          	blt	a5,a4,80001b70 <_ZN6Thread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001b4c:	00371793          	slli	a5,a4,0x3
    80001b50:	00f587b3          	add	a5,a1,a5
    80001b54:	0007b683          	ld	a3,0(a5)
    80001b58:	00870793          	addi	a5,a4,8
    80001b5c:	00379793          	slli	a5,a5,0x3
    80001b60:	00f507b3          	add	a5,a0,a5
    80001b64:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    80001b68:	0017071b          	addiw	a4,a4,1
    80001b6c:	fd9ff06f          	j	80001b44 <_ZN6Thread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001b70:	02853783          	ld	a5,40(a0)
    80001b74:	04f53823          	sd	a5,80(a0)
    threadContext.sepc = cont->sepc;
    80001b78:	1005b783          	ld	a5,256(a1)
    80001b7c:	14f53023          	sd	a5,320(a0)
    threadContext.sstatus =cont->sstatus;
    80001b80:	1085b783          	ld	a5,264(a1)
    80001b84:	14f53423          	sd	a5,328(a0)
}
    80001b88:	00813403          	ld	s0,8(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZN6Thread10getContextEv>:
size_t* Thread::getContext() {
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00813423          	sd	s0,8(sp)
    80001b9c:	01010413          	addi	s0,sp,16
}
    80001ba0:	04050513          	addi	a0,a0,64
    80001ba4:	00813403          	ld	s0,8(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN6Thread14getNextInQueueEv>:
Thread* Thread::getNextInQueue(){
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
}
    80001bbc:	02053503          	ld	a0,32(a0)
    80001bc0:	00813403          	ld	s0,8(sp)
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00008067          	ret

0000000080001bcc <_ZN6Thread14getPrevInQueueEv>:
Thread* Thread::getPrevInQueue(){
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00813423          	sd	s0,8(sp)
    80001bd4:	01010413          	addi	s0,sp,16
}
    80001bd8:	01853503          	ld	a0,24(a0)
    80001bdc:	00813403          	ld	s0,8(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN6Thread14setNextInQueueEPS_>:
void Thread::setNextInQueue(Thread* next){
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00813423          	sd	s0,8(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    this->next = next;
    80001bf4:	02b53023          	sd	a1,32(a0)
}
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN6Thread14setPrevInQueueEPS_>:
void Thread::setPrevInQueue(Thread* prev){
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001c10:	00b53c23          	sd	a1,24(a0)
}
    80001c14:	00813403          	ld	s0,8(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    80001c20:	fe010113          	addi	sp,sp,-32
    80001c24:	00113c23          	sd	ra,24(sp)
    80001c28:	00813823          	sd	s0,16(sp)
    80001c2c:	00913423          	sd	s1,8(sp)
    80001c30:	01213023          	sd	s2,0(sp)
    80001c34:	02010413          	addi	s0,sp,32
    80001c38:	00050493          	mv	s1,a0
    80001c3c:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	fa8080e7          	jalr	-88(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001c48:	00090593          	mv	a1,s2
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	fb4080e7          	jalr	-76(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
}
    80001c58:	01813083          	ld	ra,24(sp)
    80001c5c:	01013403          	ld	s0,16(sp)
    80001c60:	00813483          	ld	s1,8(sp)
    80001c64:	00013903          	ld	s2,0(sp)
    80001c68:	02010113          	addi	sp,sp,32
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN6Thread5setupEPS_Pm>:
void Thread::setup(Thread* parentThread, size_t* stack_top) {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00813423          	sd	s0,8(sp)
    80001c78:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001c7c:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001c80:	02c53423          	sd	a2,40(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001c84:	04c53823          	sd	a2,80(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001c88:	00000797          	auipc	a5,0x0
    80001c8c:	de478793          	addi	a5,a5,-540 # 80001a6c <_ZN6Thread16threadTrampolineEPS_>
    80001c90:	14f53023          	sd	a5,320(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001c94:	08a53823          	sd	a0,144(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001c98:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001c9c:	04f53c23          	sd	a5,88(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001ca0:	100027f3          	csrr	a5,sstatus
    sstatus_val |= (1UL << 5); // SPIE=1
    80001ca4:	1207e793          	ori	a5,a5,288
    threadContext.sstatus = sstatus_val;
    80001ca8:	14f53423          	sd	a5,328(a0)
}
    80001cac:	00813403          	ld	s0,8(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <_ZN9Scheduler10GetRunningEv>:
Thread* Scheduler::sleepQueue = nullptr;
time_t  Scheduler::runningThreadTimeLeft = DEFAULT_TIME_SLICE;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00813423          	sd	s0,8(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    return running;
}
    80001cc4:	00004517          	auipc	a0,0x4
    80001cc8:	e5c53503          	ld	a0,-420(a0) # 80005b20 <_ZN9Scheduler7runningE>
    80001ccc:	00813403          	ld	s0,8(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>:
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00113423          	sd	ra,8(sp)
    80001ce0:	00813023          	sd	s0,0(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    80001ce8:	00058513          	mv	a0,a1
    running = newThread;
    80001cec:	00004797          	auipc	a5,0x4
    80001cf0:	e2b7ba23          	sd	a1,-460(a5) # 80005b20 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	ea0080e7          	jalr	-352(ra) # 80001b94 <_ZN6Thread10getContextEv>
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	398080e7          	jalr	920(ra) # 80001094 <restoreContext>
}
    80001d04:	00813083          	ld	ra,8(sp)
    80001d08:	00013403          	ld	s0,0(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN9Scheduler7GetNextEv>:
        next = t->getParent();
        if (next == nullptr) { while (true) {} }
    }
    yield(t, next);
}
Thread* Scheduler::GetNext() {
    80001d14:	fe010113          	addi	sp,sp,-32
    80001d18:	00113c23          	sd	ra,24(sp)
    80001d1c:	00813823          	sd	s0,16(sp)
    80001d20:	00913423          	sd	s1,8(sp)
    80001d24:	02010413          	addi	s0,sp,32
    if (readyQueue == nullptr) return nullptr;
    80001d28:	00004497          	auipc	s1,0x4
    80001d2c:	e004b483          	ld	s1,-512(s1) # 80005b28 <_ZN9Scheduler10readyQueueE>
    80001d30:	04048463          	beqz	s1,80001d78 <_ZN9Scheduler7GetNextEv+0x64>
    Thread* toRet = readyQueue;
    readyQueue = readyQueue->getNextInQueue();
    80001d34:	00048513          	mv	a0,s1
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	e78080e7          	jalr	-392(ra) # 80001bb0 <_ZN6Thread14getNextInQueueEv>
    80001d40:	00004797          	auipc	a5,0x4
    80001d44:	dea7b423          	sd	a0,-536(a5) # 80005b28 <_ZN9Scheduler10readyQueueE>
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    80001d48:	04050463          	beqz	a0,80001d90 <_ZN9Scheduler7GetNextEv+0x7c>
    80001d4c:	00000593          	li	a1,0
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	eb4080e7          	jalr	-332(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
    else readyQueueEnd = nullptr;
    toRet->setNextInQueue(nullptr);
    80001d58:	00000593          	li	a1,0
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	e88080e7          	jalr	-376(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    toRet->setPrevInQueue(nullptr);
    80001d68:	00000593          	li	a1,0
    80001d6c:	00048513          	mv	a0,s1
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	e94080e7          	jalr	-364(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
    return toRet;
}
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	01813083          	ld	ra,24(sp)
    80001d80:	01013403          	ld	s0,16(sp)
    80001d84:	00813483          	ld	s1,8(sp)
    80001d88:	02010113          	addi	sp,sp,32
    80001d8c:	00008067          	ret
    else readyQueueEnd = nullptr;
    80001d90:	00004797          	auipc	a5,0x4
    80001d94:	da07b023          	sd	zero,-608(a5) # 80005b30 <_ZN9Scheduler13readyQueueEndE>
    80001d98:	fc1ff06f          	j	80001d58 <_ZN9Scheduler7GetNextEv+0x44>

0000000080001d9c <_ZN9Scheduler10ThreadExitEP6Thread>:
void Scheduler::ThreadExit(Thread* t) {
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	02010413          	addi	s0,sp,32
    80001db0:	00050493          	mv	s1,a0
    Thread* next = GetNext();
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	f60080e7          	jalr	-160(ra) # 80001d14 <_ZN9Scheduler7GetNextEv>
    80001dbc:	00050593          	mv	a1,a0
    if (next == nullptr) {
    80001dc0:	02050263          	beqz	a0,80001de4 <_ZN9Scheduler10ThreadExitEP6Thread+0x48>
    yield(t, next);
    80001dc4:	00048513          	mv	a0,s1
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	f10080e7          	jalr	-240(ra) # 80001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>
}
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	01013403          	ld	s0,16(sp)
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret
    Thread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    Thread* getParent() { return parent; }
    80001de4:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    80001de8:	fc059ee3          	bnez	a1,80001dc4 <_ZN9Scheduler10ThreadExitEP6Thread+0x28>
    80001dec:	0000006f          	j	80001dec <_ZN9Scheduler10ThreadExitEP6Thread+0x50>

0000000080001df0 <_ZN9Scheduler3PutEP6Thread>:
void Scheduler::Put(Thread* thread) {
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	02010413          	addi	s0,sp,32
    80001e04:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80001e08:	00000593          	li	a1,0
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	ddc080e7          	jalr	-548(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    if (readyQueueEnd != nullptr) {
    80001e14:	00004597          	auipc	a1,0x4
    80001e18:	d1c5b583          	ld	a1,-740(a1) # 80005b30 <_ZN9Scheduler13readyQueueEndE>
    80001e1c:	04058063          	beqz	a1,80001e5c <_ZN9Scheduler3PutEP6Thread+0x6c>
        thread->setPrevInQueue(readyQueueEnd);
    80001e20:	00048513          	mv	a0,s1
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	de0080e7          	jalr	-544(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
        readyQueueEnd->setNextInQueue(thread);
    80001e2c:	00048593          	mv	a1,s1
    80001e30:	00004517          	auipc	a0,0x4
    80001e34:	d0053503          	ld	a0,-768(a0) # 80005b30 <_ZN9Scheduler13readyQueueEndE>
    80001e38:	00000097          	auipc	ra,0x0
    80001e3c:	db0080e7          	jalr	-592(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        readyQueue = thread;
    }
    readyQueueEnd = thread;
    80001e40:	00004797          	auipc	a5,0x4
    80001e44:	ce97b823          	sd	s1,-784(a5) # 80005b30 <_ZN9Scheduler13readyQueueEndE>
}
    80001e48:	01813083          	ld	ra,24(sp)
    80001e4c:	01013403          	ld	s0,16(sp)
    80001e50:	00813483          	ld	s1,8(sp)
    80001e54:	02010113          	addi	sp,sp,32
    80001e58:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80001e5c:	00000593          	li	a1,0
    80001e60:	00048513          	mv	a0,s1
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	da0080e7          	jalr	-608(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
        readyQueue = thread;
    80001e6c:	00004797          	auipc	a5,0x4
    80001e70:	ca97be23          	sd	s1,-836(a5) # 80005b28 <_ZN9Scheduler10readyQueueE>
    80001e74:	fcdff06f          	j	80001e40 <_ZN9Scheduler3PutEP6Thread+0x50>

0000000080001e78 <_ZN9Scheduler15SetupStartStackEv>:

extern "C" char end[];

void Scheduler::SetupStartStack() {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00813423          	sd	s0,8(sp)
    80001e80:	01010413          	addi	s0,sp,16

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80001e84:	00004797          	auipc	a5,0x4
    80001e88:	c447b783          	ld	a5,-956(a5) # 80005ac8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e8c:	00778793          	addi	a5,a5,7
    80001e90:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80001e94:	00004717          	auipc	a4,0x4
    80001e98:	caf73223          	sd	a5,-860(a4) # 80005b38 <_ZN9Scheduler12stack_cursorE>
    );
}
    80001e9c:	00813403          	ld	s0,8(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN9Scheduler16SetupStartThreadEv>:

void Scheduler::SetupStartThread() {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    SetupStartStack();
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	fc0080e7          	jalr	-64(ra) # 80001e78 <_ZN9Scheduler15SetupStartStackEv>
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	724080e7          	jalr	1828(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    80001ec8:	15800593          	li	a1,344
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	774080e7          	jalr	1908(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001ed4:	00004797          	auipc	a5,0x4
    80001ed8:	c4a7b623          	sd	a0,-948(a5) # 80005b20 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	cb8080e7          	jalr	-840(ra) # 80001b94 <_ZN6Thread10getContextEv>
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	240080e7          	jalr	576(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80001eec:	00200793          	li	a5,2
    80001ef0:	00004717          	auipc	a4,0x4
    80001ef4:	baf73023          	sd	a5,-1120(a4) # 80005a90 <_ZN9Scheduler21runningThreadTimeLeftE>
}
    80001ef8:	00813083          	ld	ra,8(sp)
    80001efc:	00013403          	ld	s0,0(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret

0000000080001f08 <_ZN9Scheduler12AddNewThreadEP6Thread>:

void Scheduler::AddNewThread(Thread* thread) {
    80001f08:	ff010113          	addi	sp,sp,-16
    80001f0c:	00813423          	sd	s0,8(sp)
    80001f10:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80001f14:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80001f18:	04f53823          	sd	a5,80(a0)
}
    80001f1c:	00813403          	ld	s0,8(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN9Scheduler9timerTickEP6Thread>:

void Scheduler::timerTick(Thread* current) {
    80001f28:	fe010113          	addi	sp,sp,-32
    80001f2c:	00113c23          	sd	ra,24(sp)
    80001f30:	00813823          	sd	s0,16(sp)
    80001f34:	00913423          	sd	s1,8(sp)
    80001f38:	01213023          	sd	s2,0(sp)
    80001f3c:	02010413          	addi	s0,sp,32
    80001f40:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80001f44:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    80001f48:	00004797          	auipc	a5,0x4
    80001f4c:	bf87b783          	ld	a5,-1032(a5) # 80005b40 <_ZN9Scheduler10sleepQueueE>
    80001f50:	04078e63          	beqz	a5,80001fac <_ZN9Scheduler9timerTickEP6Thread+0x84>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80001f54:	0387b703          	ld	a4,56(a5)
    80001f58:	04070063          	beqz	a4,80001f98 <_ZN9Scheduler9timerTickEP6Thread+0x70>
    80001f5c:	fff70713          	addi	a4,a4,-1
    80001f60:	02e7bc23          	sd	a4,56(a5)
    80001f64:	0340006f          	j	80001f98 <_ZN9Scheduler9timerTickEP6Thread+0x70>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            Thread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    80001f68:	00048513          	mv	a0,s1
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	c44080e7          	jalr	-956(ra) # 80001bb0 <_ZN6Thread14getNextInQueueEv>
    80001f74:	00004797          	auipc	a5,0x4
    80001f78:	bca7b623          	sd	a0,-1076(a5) # 80005b40 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    80001f7c:	00000593          	li	a1,0
    80001f80:	00048513          	mv	a0,s1
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	c64080e7          	jalr	-924(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
            Put(waking);
    80001f8c:	00048513          	mv	a0,s1
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	e60080e7          	jalr	-416(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80001f98:	00004497          	auipc	s1,0x4
    80001f9c:	ba84b483          	ld	s1,-1112(s1) # 80005b40 <_ZN9Scheduler10sleepQueueE>
    80001fa0:	00048663          	beqz	s1,80001fac <_ZN9Scheduler9timerTickEP6Thread+0x84>
    80001fa4:	0384b783          	ld	a5,56(s1)
    80001fa8:	fc0780e3          	beqz	a5,80001f68 <_ZN9Scheduler9timerTickEP6Thread+0x40>
        }
    }

    if (current == nullptr) return;
    80001fac:	02090463          	beqz	s2,80001fd4 <_ZN9Scheduler9timerTickEP6Thread+0xac>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    80001fb0:	00004797          	auipc	a5,0x4
    80001fb4:	ae07b783          	ld	a5,-1312(a5) # 80005a90 <_ZN9Scheduler21runningThreadTimeLeftE>
    80001fb8:	00078863          	beqz	a5,80001fc8 <_ZN9Scheduler9timerTickEP6Thread+0xa0>
    80001fbc:	fff78793          	addi	a5,a5,-1
    80001fc0:	00004717          	auipc	a4,0x4
    80001fc4:	acf73823          	sd	a5,-1328(a4) # 80005a90 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    80001fc8:	00004797          	auipc	a5,0x4
    80001fcc:	ac87b783          	ld	a5,-1336(a5) # 80005a90 <_ZN9Scheduler21runningThreadTimeLeftE>
    80001fd0:	00078e63          	beqz	a5,80001fec <_ZN9Scheduler9timerTickEP6Thread+0xc4>
    Thread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}
    80001fd4:	01813083          	ld	ra,24(sp)
    80001fd8:	01013403          	ld	s0,16(sp)
    80001fdc:	00813483          	ld	s1,8(sp)
    80001fe0:	00013903          	ld	s2,0(sp)
    80001fe4:	02010113          	addi	sp,sp,32
    80001fe8:	00008067          	ret
    Thread* next = GetNext();
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	d28080e7          	jalr	-728(ra) # 80001d14 <_ZN9Scheduler7GetNextEv>
    80001ff4:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80001ff8:	00200793          	li	a5,2
    80001ffc:	00004717          	auipc	a4,0x4
    80002000:	a8f73a23          	sd	a5,-1388(a4) # 80005a90 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002004:	fc0508e3          	beqz	a0,80001fd4 <_ZN9Scheduler9timerTickEP6Thread+0xac>
    Put(current);
    80002008:	00090513          	mv	a0,s2
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	de4080e7          	jalr	-540(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
    yield(current, next);
    80002014:	00048593          	mv	a1,s1
    80002018:	00090513          	mv	a0,s2
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	cbc080e7          	jalr	-836(ra) # 80001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>
    80002024:	fb1ff06f          	j	80001fd4 <_ZN9Scheduler9timerTickEP6Thread+0xac>

0000000080002028 <_ZN9Scheduler5sleepEP6Threadm>:

void Scheduler::sleep(Thread* thread, time_t duration) {
    80002028:	fd010113          	addi	sp,sp,-48
    8000202c:	02113423          	sd	ra,40(sp)
    80002030:	02813023          	sd	s0,32(sp)
    80002034:	00913c23          	sd	s1,24(sp)
    80002038:	01213823          	sd	s2,16(sp)
    8000203c:	01313423          	sd	s3,8(sp)
    80002040:	01413023          	sd	s4,0(sp)
    80002044:	03010413          	addi	s0,sp,48
    80002048:	00050a13          	mv	s4,a0
    8000204c:	00058913          	mv	s2,a1
    Thread* previous = nullptr;
    Thread* current  = sleepQueue;
    80002050:	00004497          	auipc	s1,0x4
    80002054:	af04b483          	ld	s1,-1296(s1) # 80005b40 <_ZN9Scheduler10sleepQueueE>
    Thread* previous = nullptr;
    80002058:	00000993          	li	s3,0
    time_t  remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    8000205c:	02048463          	beqz	s1,80002084 <_ZN9Scheduler5sleepEP6Threadm+0x5c>
    80002060:	0384b783          	ld	a5,56(s1)
    80002064:	02f96063          	bltu	s2,a5,80002084 <_ZN9Scheduler5sleepEP6Threadm+0x5c>
        remaining -= current->sleepDelta;
    80002068:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    8000206c:	00048513          	mv	a0,s1
    80002070:	00000097          	auipc	ra,0x0
    80002074:	b40080e7          	jalr	-1216(ra) # 80001bb0 <_ZN6Thread14getNextInQueueEv>
        previous = current;
    80002078:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    8000207c:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    80002080:	fddff06f          	j	8000205c <_ZN9Scheduler5sleepEP6Threadm+0x34>
    }

    thread->sleepDelta = remaining;
    80002084:	032a3c23          	sd	s2,56(s4)
    thread->setNextInQueue(current);
    80002088:	00048593          	mv	a1,s1
    8000208c:	000a0513          	mv	a0,s4
    80002090:	00000097          	auipc	ra,0x0
    80002094:	b58080e7          	jalr	-1192(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    80002098:	04098263          	beqz	s3,800020dc <_ZN9Scheduler5sleepEP6Threadm+0xb4>
    else previous->setNextInQueue(thread);
    8000209c:	000a0593          	mv	a1,s4
    800020a0:	00098513          	mv	a0,s3
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	b44080e7          	jalr	-1212(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    800020ac:	00048863          	beqz	s1,800020bc <_ZN9Scheduler5sleepEP6Threadm+0x94>
    800020b0:	0384b583          	ld	a1,56(s1)
    800020b4:	41258933          	sub	s2,a1,s2
    800020b8:	0324bc23          	sd	s2,56(s1)
}
    800020bc:	02813083          	ld	ra,40(sp)
    800020c0:	02013403          	ld	s0,32(sp)
    800020c4:	01813483          	ld	s1,24(sp)
    800020c8:	01013903          	ld	s2,16(sp)
    800020cc:	00813983          	ld	s3,8(sp)
    800020d0:	00013a03          	ld	s4,0(sp)
    800020d4:	03010113          	addi	sp,sp,48
    800020d8:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    800020dc:	00004797          	auipc	a5,0x4
    800020e0:	a747b223          	sd	s4,-1436(a5) # 80005b40 <_ZN9Scheduler10sleepQueueE>
    800020e4:	fc9ff06f          	j	800020ac <_ZN9Scheduler5sleepEP6Threadm+0x84>

00000000800020e8 <_ZN7Konsole16outputThreadBodyEPv>:
    thread->setNextInQueue(nullptr);
    thread->setPrevInQueue(nullptr);
    return thread;
}

void Konsole::outputThreadBody(void*) {
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00113423          	sd	ra,8(sp)
    800020f0:	00813023          	sd	s0,0(sp)
    800020f4:	01010413          	addi	s0,sp,16
    while (true) {
        sem_wait((sem_t)&outputItems);
    800020f8:	00004517          	auipc	a0,0x4
    800020fc:	a5050513          	addi	a0,a0,-1456 # 80005b48 <_ZN7Konsole11outputItemsE>
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	374080e7          	jalr	884(ra) # 80001474 <sem_wait>
        while (!(*((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT));
    80002108:	00004797          	auipc	a5,0x4
    8000210c:	9a07b783          	ld	a5,-1632(a5) # 80005aa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002110:	0007b783          	ld	a5,0(a5)
    80002114:	0007c783          	lbu	a5,0(a5)
    80002118:	0ff7f793          	andi	a5,a5,255
    8000211c:	0207f793          	andi	a5,a5,32
    80002120:	fe0784e3          	beqz	a5,80002108 <_ZN7Konsole16outputThreadBodyEPv+0x20>
        if (outputHead!=outputTail) {//TODO:Maybe gonna cause problems
    80002124:	00004717          	auipc	a4,0x4
    80002128:	a2470713          	addi	a4,a4,-1500 # 80005b48 <_ZN7Konsole11outputItemsE>
    8000212c:	01872783          	lw	a5,24(a4)
    80002130:	01c72703          	lw	a4,28(a4)
    80002134:	fce782e3          	beq	a5,a4,800020f8 <_ZN7Konsole16outputThreadBodyEPv+0x10>
            char c = outputBuffer[outputHead];
    80002138:	00004697          	auipc	a3,0x4
    8000213c:	a1068693          	addi	a3,a3,-1520 # 80005b48 <_ZN7Konsole11outputItemsE>
    80002140:	00f68733          	add	a4,a3,a5
    80002144:	02074603          	lbu	a2,32(a4)
            outputHead = (outputHead + 1) % BUFFER_SIZE;
    80002148:	0017879b          	addiw	a5,a5,1
    8000214c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002150:	0187571b          	srliw	a4,a4,0x18
    80002154:	00e787bb          	addw	a5,a5,a4
    80002158:	0ff7f793          	andi	a5,a5,255
    8000215c:	40e787bb          	subw	a5,a5,a4
    80002160:	00f6ac23          	sw	a5,24(a3)
            *((volatile uint8*)CONSOLE_TX_DATA) = c;
    80002164:	00004797          	auipc	a5,0x4
    80002168:	9547b783          	ld	a5,-1708(a5) # 80005ab8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000216c:	0007b783          	ld	a5,0(a5)
    80002170:	00c78023          	sb	a2,0(a5)
    80002174:	f85ff06f          	j	800020f8 <_ZN7Konsole16outputThreadBodyEPv+0x10>

0000000080002178 <_ZN7Konsole17enqueueGetcWaiterEP6Thread>:
void Konsole::enqueueGetcWaiter(Thread* thread) {
    80002178:	fe010113          	addi	sp,sp,-32
    8000217c:	00113c23          	sd	ra,24(sp)
    80002180:	00813823          	sd	s0,16(sp)
    80002184:	00913423          	sd	s1,8(sp)
    80002188:	02010413          	addi	s0,sp,32
    8000218c:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80002190:	00000593          	li	a1,0
    80002194:	00000097          	auipc	ra,0x0
    80002198:	a54080e7          	jalr	-1452(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    if (getcWaiterTail != nullptr) {
    8000219c:	00004597          	auipc	a1,0x4
    800021a0:	acc5b583          	ld	a1,-1332(a1) # 80005c68 <_ZN7Konsole14getcWaiterTailE>
    800021a4:	04058063          	beqz	a1,800021e4 <_ZN7Konsole17enqueueGetcWaiterEP6Thread+0x6c>
        thread->setPrevInQueue(getcWaiterTail);
    800021a8:	00048513          	mv	a0,s1
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	a58080e7          	jalr	-1448(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
        getcWaiterTail->setNextInQueue(thread);
    800021b4:	00048593          	mv	a1,s1
    800021b8:	00004517          	auipc	a0,0x4
    800021bc:	ab053503          	ld	a0,-1360(a0) # 80005c68 <_ZN7Konsole14getcWaiterTailE>
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	a28080e7          	jalr	-1496(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    getcWaiterTail = thread;
    800021c8:	00004797          	auipc	a5,0x4
    800021cc:	aa97b023          	sd	s1,-1376(a5) # 80005c68 <_ZN7Konsole14getcWaiterTailE>
}
    800021d0:	01813083          	ld	ra,24(sp)
    800021d4:	01013403          	ld	s0,16(sp)
    800021d8:	00813483          	ld	s1,8(sp)
    800021dc:	02010113          	addi	sp,sp,32
    800021e0:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800021e4:	00000593          	li	a1,0
    800021e8:	00048513          	mv	a0,s1
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	a18080e7          	jalr	-1512(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
        getcWaiterHead = thread;
    800021f4:	00004797          	auipc	a5,0x4
    800021f8:	a697be23          	sd	s1,-1412(a5) # 80005c70 <_ZN7Konsole14getcWaiterHeadE>
    800021fc:	fcdff06f          	j	800021c8 <_ZN7Konsole17enqueueGetcWaiterEP6Thread+0x50>

0000000080002200 <_ZN7Konsole17dequeueGetcWaiterEv>:
Thread* Konsole::dequeueGetcWaiter() {
    80002200:	fe010113          	addi	sp,sp,-32
    80002204:	00113c23          	sd	ra,24(sp)
    80002208:	00813823          	sd	s0,16(sp)
    8000220c:	00913423          	sd	s1,8(sp)
    80002210:	02010413          	addi	s0,sp,32
    if (getcWaiterHead == nullptr) return nullptr;
    80002214:	00004497          	auipc	s1,0x4
    80002218:	a5c4b483          	ld	s1,-1444(s1) # 80005c70 <_ZN7Konsole14getcWaiterHeadE>
    8000221c:	04048463          	beqz	s1,80002264 <_ZN7Konsole17dequeueGetcWaiterEv+0x64>
    getcWaiterHead = thread->getNextInQueue();
    80002220:	00048513          	mv	a0,s1
    80002224:	00000097          	auipc	ra,0x0
    80002228:	98c080e7          	jalr	-1652(ra) # 80001bb0 <_ZN6Thread14getNextInQueueEv>
    8000222c:	00004797          	auipc	a5,0x4
    80002230:	a4a7b223          	sd	a0,-1468(a5) # 80005c70 <_ZN7Konsole14getcWaiterHeadE>
    if (getcWaiterHead != nullptr) getcWaiterHead->setPrevInQueue(nullptr);
    80002234:	04050463          	beqz	a0,8000227c <_ZN7Konsole17dequeueGetcWaiterEv+0x7c>
    80002238:	00000593          	li	a1,0
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	9c8080e7          	jalr	-1592(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
    thread->setNextInQueue(nullptr);
    80002244:	00000593          	li	a1,0
    80002248:	00048513          	mv	a0,s1
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	99c080e7          	jalr	-1636(ra) # 80001be8 <_ZN6Thread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80002254:	00000593          	li	a1,0
    80002258:	00048513          	mv	a0,s1
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	9a8080e7          	jalr	-1624(ra) # 80001c04 <_ZN6Thread14setPrevInQueueEPS_>
}
    80002264:	00048513          	mv	a0,s1
    80002268:	01813083          	ld	ra,24(sp)
    8000226c:	01013403          	ld	s0,16(sp)
    80002270:	00813483          	ld	s1,8(sp)
    80002274:	02010113          	addi	sp,sp,32
    80002278:	00008067          	ret
    else getcWaiterTail = nullptr;
    8000227c:	00004797          	auipc	a5,0x4
    80002280:	9e07b623          	sd	zero,-1556(a5) # 80005c68 <_ZN7Konsole14getcWaiterTailE>
    80002284:	fc1ff06f          	j	80002244 <_ZN7Konsole17dequeueGetcWaiterEv+0x44>

0000000080002288 <_ZN7Konsole4initEv>:
        }
    }
}

void Konsole::init() {
    80002288:	fe010113          	addi	sp,sp,-32
    8000228c:	00113c23          	sd	ra,24(sp)
    80002290:	00813823          	sd	s0,16(sp)
    80002294:	00913423          	sd	s1,8(sp)
    80002298:	02010413          	addi	s0,sp,32
    inputHead = 0; inputTail = 0;
    8000229c:	00004517          	auipc	a0,0x4
    800022a0:	8ac50513          	addi	a0,a0,-1876 # 80005b48 <_ZN7Konsole11outputItemsE>
    800022a4:	12052823          	sw	zero,304(a0)
    800022a8:	12052a23          	sw	zero,308(a0)
    outputHead = 0; outputTail = 0;
    800022ac:	00052c23          	sw	zero,24(a0)
    800022b0:	00052e23          	sw	zero,28(a0)
    getcWaiterHead = nullptr; getcWaiterTail = nullptr;
    800022b4:	12053423          	sd	zero,296(a0)
    800022b8:	12053023          	sd	zero,288(a0)
    outputItems.init(0);
    800022bc:	00000593          	li	a1,0
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	44c080e7          	jalr	1100(ra) # 8000170c <_ZN9Semaphore4initEj>

    void* threadMem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread));
    800022c8:	00000097          	auipc	ra,0x0
    800022cc:	31c080e7          	jalr	796(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    800022d0:	15800593          	li	a1,344
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	36c080e7          	jalr	876(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800022dc:	00050493          	mv	s1,a0
    Thread* outputThread = reinterpret_cast<Thread*>(threadMem);
    outputThread->init();
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	7ec080e7          	jalr	2028(ra) # 80001acc <_ZN6Thread4initEv>
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void setup(Thread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800022e8:	00000797          	auipc	a5,0x0
    800022ec:	e0078793          	addi	a5,a5,-512 # 800020e8 <_ZN7Konsole16outputThreadBodyEPv>
    800022f0:	00f4b023          	sd	a5,0(s1)
    800022f4:	0004b423          	sd	zero,8(s1)
    outputThread->setBody(outputThreadBody, nullptr);

    void* stackMem = MemoryAllocator::GetInstance().AllocateFragment(DEFAULT_STACK_SIZE * sizeof(size_t));
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	2ec080e7          	jalr	748(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    80002300:	000085b7          	lui	a1,0x8
    80002304:	00000097          	auipc	ra,0x0
    80002308:	33c080e7          	jalr	828(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    size_t* stackTop = reinterpret_cast<size_t*>((char*)stackMem + DEFAULT_STACK_SIZE * sizeof(size_t));
    outputThread->setup(nullptr, stackTop);
    8000230c:	00008637          	lui	a2,0x8
    80002310:	00c50633          	add	a2,a0,a2
    80002314:	00000593          	li	a1,0
    80002318:	00048513          	mv	a0,s1
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	954080e7          	jalr	-1708(ra) # 80001c70 <_ZN6Thread5setupEPS_Pm>
    Scheduler::Put(outputThread);
    80002324:	00048513          	mv	a0,s1
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	ac8080e7          	jalr	-1336(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
}
    80002330:	01813083          	ld	ra,24(sp)
    80002334:	01013403          	ld	s0,16(sp)
    80002338:	00813483          	ld	s1,8(sp)
    8000233c:	02010113          	addi	sp,sp,32
    80002340:	00008067          	ret

0000000080002344 <_ZN7Konsole15handleInterruptEv>:

void Konsole::handleInterrupt() {
    80002344:	fd010113          	addi	sp,sp,-48
    80002348:	02113423          	sd	ra,40(sp)
    8000234c:	02813023          	sd	s0,32(sp)
    80002350:	00913c23          	sd	s1,24(sp)
    80002354:	01213823          	sd	s2,16(sp)
    80002358:	03010413          	addi	s0,sp,48
    int irq = plic_claim();
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	208080e7          	jalr	520(ra) # 80003564 <plic_claim>
    80002364:	00050493          	mv	s1,a0
    if (irq == (int)CONSOLE_IRQ) {
    80002368:	00a00793          	li	a5,10
    8000236c:	02f50063          	beq	a0,a5,8000238c <_ZN7Konsole15handleInterruptEv+0x48>
                    inputTail = nextTail;
                }
            }
        }
    }
    if (irq) plic_complete(irq);
    80002370:	0e049a63          	bnez	s1,80002464 <_ZN7Konsole15handleInterruptEv+0x120>
}
    80002374:	02813083          	ld	ra,40(sp)
    80002378:	02013403          	ld	s0,32(sp)
    8000237c:	01813483          	ld	s1,24(sp)
    80002380:	01013903          	ld	s2,16(sp)
    80002384:	03010113          	addi	sp,sp,48
    80002388:	00008067          	ret
        while (!(*((volatile uint8*)CONSOLE_STATUS) & (CONSOLE_RX_STATUS_BIT | CONSOLE_TX_STATUS_BIT))){};
    8000238c:	00003797          	auipc	a5,0x3
    80002390:	71c7b783          	ld	a5,1820(a5) # 80005aa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002394:	0007b703          	ld	a4,0(a5)
    80002398:	00074783          	lbu	a5,0(a4)
    8000239c:	0217f793          	andi	a5,a5,33
    800023a0:	fe0786e3          	beqz	a5,8000238c <_ZN7Konsole15handleInterruptEv+0x48>
        volatile int a = *((volatile uint8*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT;
    800023a4:	00074783          	lbu	a5,0(a4)
    800023a8:	0017f793          	andi	a5,a5,1
    800023ac:	fcf42c23          	sw	a5,-40(s0)
        volatile int b = *((volatile uint8*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT;
    800023b0:	00074783          	lbu	a5,0(a4)
    800023b4:	0ff7f793          	andi	a5,a5,255
    800023b8:	0207f793          	andi	a5,a5,32
    800023bc:	0ff7f793          	andi	a5,a5,255
    800023c0:	fcf42e23          	sw	a5,-36(s0)
        if (a+b){}
    800023c4:	fd842783          	lw	a5,-40(s0)
    800023c8:	fdc42783          	lw	a5,-36(s0)
        if (a) {
    800023cc:	fd842783          	lw	a5,-40(s0)
    800023d0:	0007879b          	sext.w	a5,a5
    800023d4:	00078e63          	beqz	a5,800023f0 <_ZN7Konsole15handleInterruptEv+0xac>
            b = 100;
    800023d8:	06400793          	li	a5,100
    800023dc:	fcf42e23          	sw	a5,-36(s0)
    800023e0:	0100006f          	j	800023f0 <_ZN7Konsole15handleInterruptEv+0xac>
                waiter->threadContext.x[10] = (size_t)(unsigned char)c;
    800023e4:	09253823          	sd	s2,144(a0)
                Scheduler::Put(waiter);
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	a08080e7          	jalr	-1528(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
        while (a) {
    800023f0:	fd842783          	lw	a5,-40(s0)
    800023f4:	0007879b          	sext.w	a5,a5
    800023f8:	f6078ce3          	beqz	a5,80002370 <_ZN7Konsole15handleInterruptEv+0x2c>
            char c = (char)*((volatile uint8*)CONSOLE_RX_DATA);
    800023fc:	00003797          	auipc	a5,0x3
    80002400:	6a47b783          	ld	a5,1700(a5) # 80005aa0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002404:	0007b783          	ld	a5,0(a5)
    80002408:	0007c783          	lbu	a5,0(a5)
    8000240c:	0ff7f913          	andi	s2,a5,255
            Thread* waiter = dequeueGetcWaiter();
    80002410:	00000097          	auipc	ra,0x0
    80002414:	df0080e7          	jalr	-528(ra) # 80002200 <_ZN7Konsole17dequeueGetcWaiterEv>
            if (waiter != nullptr) {
    80002418:	fc0516e3          	bnez	a0,800023e4 <_ZN7Konsole15handleInterruptEv+0xa0>
                int nextTail = (inputTail + 1) % BUFFER_SIZE;
    8000241c:	00003617          	auipc	a2,0x3
    80002420:	72c60613          	addi	a2,a2,1836 # 80005b48 <_ZN7Konsole11outputItemsE>
    80002424:	13462683          	lw	a3,308(a2)
    80002428:	0016879b          	addiw	a5,a3,1
    8000242c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002430:	0187571b          	srliw	a4,a4,0x18
    80002434:	00e787bb          	addw	a5,a5,a4
    80002438:	0ff7f793          	andi	a5,a5,255
    8000243c:	40e787bb          	subw	a5,a5,a4
    80002440:	0007871b          	sext.w	a4,a5
                if (nextTail != inputHead) {
    80002444:	13062603          	lw	a2,304(a2)
    80002448:	fae604e3          	beq	a2,a4,800023f0 <_ZN7Konsole15handleInterruptEv+0xac>
                    inputBuffer[inputTail] = c;
    8000244c:	00003717          	auipc	a4,0x3
    80002450:	6fc70713          	addi	a4,a4,1788 # 80005b48 <_ZN7Konsole11outputItemsE>
    80002454:	00d706b3          	add	a3,a4,a3
    80002458:	13268c23          	sb	s2,312(a3)
                    inputTail = nextTail;
    8000245c:	12f72a23          	sw	a5,308(a4)
    80002460:	f91ff06f          	j	800023f0 <_ZN7Konsole15handleInterruptEv+0xac>
    if (irq) plic_complete(irq);
    80002464:	00048513          	mv	a0,s1
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	134080e7          	jalr	308(ra) # 8000359c <plic_complete>
}
    80002470:	f05ff06f          	j	80002374 <_ZN7Konsole15handleInterruptEv+0x30>

0000000080002474 <_ZN7Konsole10putcKernelEP6Threadc>:

int Konsole::putcKernel(Thread* caller, char c) {
    80002474:	fe010113          	addi	sp,sp,-32
    80002478:	00113c23          	sd	ra,24(sp)
    8000247c:	00813823          	sd	s0,16(sp)
    80002480:	00913423          	sd	s1,8(sp)
    80002484:	02010413          	addi	s0,sp,32
    80002488:	00050493          	mv	s1,a0
    int nextTail = (outputTail + 1) % BUFFER_SIZE;
    8000248c:	00003617          	auipc	a2,0x3
    80002490:	6bc60613          	addi	a2,a2,1724 # 80005b48 <_ZN7Konsole11outputItemsE>
    80002494:	01c62683          	lw	a3,28(a2)
    80002498:	0016879b          	addiw	a5,a3,1
    8000249c:	41f7d71b          	sraiw	a4,a5,0x1f
    800024a0:	0187571b          	srliw	a4,a4,0x18
    800024a4:	00e787bb          	addw	a5,a5,a4
    800024a8:	0ff7f793          	andi	a5,a5,255
    800024ac:	40e787bb          	subw	a5,a5,a4
    800024b0:	0007871b          	sext.w	a4,a5
    if (nextTail == outputHead) {
    800024b4:	01862603          	lw	a2,24(a2)
    800024b8:	04e60063          	beq	a2,a4,800024f8 <_ZN7Konsole10putcKernelEP6Threadc+0x84>
        if (caller) caller->threadContext.x[10] = (size_t)-1;
        return -1;
    }
    outputBuffer[outputTail] = c;
    800024bc:	00003517          	auipc	a0,0x3
    800024c0:	68c50513          	addi	a0,a0,1676 # 80005b48 <_ZN7Konsole11outputItemsE>
    800024c4:	00d506b3          	add	a3,a0,a3
    800024c8:	02b68023          	sb	a1,32(a3)
    outputTail = nextTail;
    800024cc:	00f52e23          	sw	a5,28(a0)
    outputItems.signal();
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	3d4080e7          	jalr	980(ra) # 800018a4 <_ZN9Semaphore6signalEv>
    if (caller) caller->threadContext.x[10] = 0;
    800024d8:	02048a63          	beqz	s1,8000250c <_ZN7Konsole10putcKernelEP6Threadc+0x98>
    800024dc:	0804b823          	sd	zero,144(s1)
    return 0;
    800024e0:	00000513          	li	a0,0
}
    800024e4:	01813083          	ld	ra,24(sp)
    800024e8:	01013403          	ld	s0,16(sp)
    800024ec:	00813483          	ld	s1,8(sp)
    800024f0:	02010113          	addi	sp,sp,32
    800024f4:	00008067          	ret
        if (caller) caller->threadContext.x[10] = (size_t)-1;
    800024f8:	00050663          	beqz	a0,80002504 <_ZN7Konsole10putcKernelEP6Threadc+0x90>
    800024fc:	fff00793          	li	a5,-1
    80002500:	08f53823          	sd	a5,144(a0)
        return -1;
    80002504:	fff00513          	li	a0,-1
    80002508:	fddff06f          	j	800024e4 <_ZN7Konsole10putcKernelEP6Threadc+0x70>
    return 0;
    8000250c:	00000513          	li	a0,0
    80002510:	fd5ff06f          	j	800024e4 <_ZN7Konsole10putcKernelEP6Threadc+0x70>

0000000080002514 <_ZN7Konsole10getcKernelEP6Thread>:

int Konsole::getcKernel(Thread* caller) {
    if (inputHead != inputTail) {
    80002514:	00003717          	auipc	a4,0x3
    80002518:	63470713          	addi	a4,a4,1588 # 80005b48 <_ZN7Konsole11outputItemsE>
    8000251c:	13072783          	lw	a5,304(a4)
    80002520:	13472703          	lw	a4,308(a4)
    80002524:	04e78063          	beq	a5,a4,80002564 <_ZN7Konsole10getcKernelEP6Thread+0x50>
        char c = inputBuffer[inputHead];
    80002528:	00003617          	auipc	a2,0x3
    8000252c:	62060613          	addi	a2,a2,1568 # 80005b48 <_ZN7Konsole11outputItemsE>
    80002530:	00f60733          	add	a4,a2,a5
    80002534:	13874683          	lbu	a3,312(a4)
        inputHead = (inputHead + 1) % BUFFER_SIZE;
    80002538:	0017879b          	addiw	a5,a5,1
    8000253c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002540:	0187571b          	srliw	a4,a4,0x18
    80002544:	00e787bb          	addw	a5,a5,a4
    80002548:	0ff7f793          	andi	a5,a5,255
    8000254c:	40e787bb          	subw	a5,a5,a4
    80002550:	12f62823          	sw	a5,304(a2)
        if (caller) caller->threadContext.x[10] = (size_t)(unsigned char)c;
    80002554:	00050463          	beqz	a0,8000255c <_ZN7Konsole10getcKernelEP6Thread+0x48>
    80002558:	08d53823          	sd	a3,144(a0)
        return (unsigned char)c;
    8000255c:	0006851b          	sext.w	a0,a3
    }
    enqueueGetcWaiter(caller);
    return -2;
}
    80002560:	00008067          	ret
int Konsole::getcKernel(Thread* caller) {
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00113423          	sd	ra,8(sp)
    8000256c:	00813023          	sd	s0,0(sp)
    80002570:	01010413          	addi	s0,sp,16
    enqueueGetcWaiter(caller);
    80002574:	00000097          	auipc	ra,0x0
    80002578:	c04080e7          	jalr	-1020(ra) # 80002178 <_ZN7Konsole17enqueueGetcWaiterEP6Thread>
    return -2;
    8000257c:	ffe00513          	li	a0,-2
}
    80002580:	00813083          	ld	ra,8(sp)
    80002584:	00013403          	ld	s0,0(sp)
    80002588:	01010113          	addi	sp,sp,16
    8000258c:	00008067          	ret

0000000080002590 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00813423          	sd	s0,8(sp)
    80002598:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    8000259c:	00003797          	auipc	a5,0x3
    800025a0:	5347b783          	ld	a5,1332(a5) # 80005ad0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800025a4:	0007b783          	ld	a5,0(a5)
    800025a8:	00003717          	auipc	a4,0x3
    800025ac:	50873703          	ld	a4,1288(a4) # 80005ab0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025b0:	00073703          	ld	a4,0(a4)
    800025b4:	40e787b3          	sub	a5,a5,a4
    800025b8:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    800025bc:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    800025c0:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    800025c4:	00100693          	li	a3,1
    800025c8:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    800025cc:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    800025d0:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    800025d4:	00073423          	sd	zero,8(a4)
}
    800025d8:	00813403          	ld	s0,8(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    800025e4:	00003797          	auipc	a5,0x3
    800025e8:	79c7c783          	lbu	a5,1948(a5) # 80005d80 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    800025ec:	00078863          	beqz	a5,800025fc <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    800025f0:	00003517          	auipc	a0,0x3
    800025f4:	79850513          	addi	a0,a0,1944 # 80005d88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800025f8:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00113423          	sd	ra,8(sp)
    80002604:	00813023          	sd	s0,0(sp)
    80002608:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    8000260c:	00003517          	auipc	a0,0x3
    80002610:	77c50513          	addi	a0,a0,1916 # 80005d88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80002614:	00000097          	auipc	ra,0x0
    80002618:	f7c080e7          	jalr	-132(ra) # 80002590 <_ZN15MemoryAllocatorC1Ev>
    8000261c:	00100793          	li	a5,1
    80002620:	00003717          	auipc	a4,0x3
    80002624:	76f70023          	sb	a5,1888(a4) # 80005d80 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80002628:	00003517          	auipc	a0,0x3
    8000262c:	76050513          	addi	a0,a0,1888 # 80005d88 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80002630:	00813083          	ld	ra,8(sp)
    80002634:	00013403          	ld	s0,0(sp)
    80002638:	01010113          	addi	sp,sp,16
    8000263c:	00008067          	ret

0000000080002640 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00813423          	sd	s0,8(sp)
    80002648:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    8000264c:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002650:	03f58593          	addi	a1,a1,63 # 803f <_entry-0x7fff7fc1>
    80002654:	0065d593          	srli	a1,a1,0x6
    80002658:	0080006f          	j	80002660 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    8000265c:	00053503          	ld	a0,0(a0)
    while(curr){
    80002660:	06050863          	beqz	a0,800026d0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80002664:	01054703          	lbu	a4,16(a0)
    80002668:	00100793          	li	a5,1
    8000266c:	fef718e3          	bne	a4,a5,8000265c <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    80002670:	01853703          	ld	a4,24(a0)
    80002674:	00158793          	addi	a5,a1,1
    80002678:	fef762e3          	bltu	a4,a5,8000265c <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    8000267c:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80002680:	04e7f663          	bgeu	a5,a4,800026cc <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80002684:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80002688:	00679793          	slli	a5,a5,0x6
    8000268c:	00f507b3          	add	a5,a0,a5
    80002690:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80002694:	00100713          	li	a4,1
    80002698:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    8000269c:	01853703          	ld	a4,24(a0)
    800026a0:	40b70733          	sub	a4,a4,a1
    800026a4:	fff70713          	addi	a4,a4,-1
    800026a8:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    800026ac:	00d7b023          	sd	a3,0(a5)
                if(old)
    800026b0:	00068463          	beqz	a3,800026b8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    800026b4:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    800026b8:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    800026bc:	01853703          	ld	a4,24(a0)
    800026c0:	0187b783          	ld	a5,24(a5)
    800026c4:	40f707b3          	sub	a5,a4,a5
    800026c8:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    800026cc:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    800026d0:	00813403          	ld	s0,8(sp)
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret

00000000800026dc <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00813423          	sd	s0,8(sp)
    800026e4:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    800026e8:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    800026ec:	08070a63          	beqz	a4,80002780 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    800026f0:	00100793          	li	a5,1
    800026f4:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    800026f8:	fc05b783          	ld	a5,-64(a1)
    800026fc:	00078863          	beqz	a5,8000270c <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80002700:	0107c603          	lbu	a2,16(a5)
    80002704:	00100693          	li	a3,1
    80002708:	02d60463          	beq	a2,a3,80002730 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    8000270c:	fc85b783          	ld	a5,-56(a1)
    80002710:	06078c63          	beqz	a5,80002788 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80002714:	0107c683          	lbu	a3,16(a5)
    80002718:	00100713          	li	a4,1
    8000271c:	02e68e63          	beq	a3,a4,80002758 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80002720:	00000513          	li	a0,0
}
    80002724:	00813403          	ld	s0,8(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret
        curr->size +=next->size;
    80002730:	0187b603          	ld	a2,24(a5)
    80002734:	fd85b683          	ld	a3,-40(a1)
    80002738:	00c686b3          	add	a3,a3,a2
    8000273c:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    80002740:	0007b683          	ld	a3,0(a5)
    80002744:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    80002748:	0007b783          	ld	a5,0(a5)
    8000274c:	fc0780e3          	beqz	a5,8000270c <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80002750:	00e7b423          	sd	a4,8(a5)
    80002754:	fb9ff06f          	j	8000270c <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80002758:	fd85b683          	ld	a3,-40(a1)
    8000275c:	0187b703          	ld	a4,24(a5)
    80002760:	00d70733          	add	a4,a4,a3
    80002764:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80002768:	fc05b703          	ld	a4,-64(a1)
    8000276c:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80002770:	02070063          	beqz	a4,80002790 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80002774:	00f73423          	sd	a5,8(a4)
    return 0;
    80002778:	00000513          	li	a0,0
    8000277c:	fa9ff06f          	j	80002724 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    80002780:	fff00513          	li	a0,-1
    80002784:	fa1ff06f          	j	80002724 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80002788:	00000513          	li	a0,0
    8000278c:	f99ff06f          	j	80002724 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80002790:	00000513          	li	a0,0
    80002794:	f91ff06f          	j	80002724 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080002798 <HandleInterupt>:
#include "Konsole.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    80002798:	fc010113          	addi	sp,sp,-64
    8000279c:	02113c23          	sd	ra,56(sp)
    800027a0:	02813823          	sd	s0,48(sp)
    800027a4:	02913423          	sd	s1,40(sp)
    800027a8:	03213023          	sd	s2,32(sp)
    800027ac:	01313c23          	sd	s3,24(sp)
    800027b0:	01413823          	sd	s4,16(sp)
    800027b4:	01513423          	sd	s5,8(sp)
    800027b8:	01613023          	sd	s6,0(sp)
    800027bc:	04010413          	addi	s0,sp,64
    800027c0:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800027c4:	142029f3          	csrr	s3,scause

    Thread* current = Scheduler::GetRunning();
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	4f0080e7          	jalr	1264(ra) # 80001cb8 <_ZN9Scheduler10GetRunningEv>
    800027d0:	00050493          	mv	s1,a0
    if (current != nullptr) {
    800027d4:	04050863          	beqz	a0,80002824 <HandleInterupt+0x8c>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    800027d8:	00000713          	li	a4,0
    800027dc:	01f00793          	li	a5,31
    800027e0:	02e7c063          	blt	a5,a4,80002800 <HandleInterupt+0x68>
    800027e4:	00371793          	slli	a5,a4,0x3
    800027e8:	00f906b3          	add	a3,s2,a5
    800027ec:	0006b683          	ld	a3,0(a3)
    800027f0:	00f487b3          	add	a5,s1,a5
    800027f4:	04d7b023          	sd	a3,64(a5)
    800027f8:	0017071b          	addiw	a4,a4,1
    800027fc:	fe1ff06f          	j	800027dc <HandleInterupt+0x44>
        ctx.x[2] = (size_t)frame + 256;
    80002800:	10090793          	addi	a5,s2,256
    80002804:	04f4b823          	sd	a5,80(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80002808:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000280c:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    80002810:	ff898793          	addi	a5,s3,-8
    80002814:	00100613          	li	a2,1
    80002818:	06f67663          	bgeu	a2,a5,80002884 <HandleInterupt+0xec>
        ctx.sepc    = sepc;
    8000281c:	14e4b023          	sd	a4,320(s1)
        ctx.sstatus = sstatus;
    80002820:	14d4b423          	sd	a3,328(s1)
    }

    // timer (supervisor software interrupt: MSB+LSB both 1)
    if (scause == 0x8000000000000001UL) {
    80002824:	fff00793          	li	a5,-1
    80002828:	03f79793          	slli	a5,a5,0x3f
    8000282c:	00178793          	addi	a5,a5,1
    80002830:	04f98e63          	beq	s3,a5,8000288c <HandleInterupt+0xf4>
        Scheduler::timerTick(current);
        return;
    }

    if (scause == 0x8000000000000009UL) {
    80002834:	fff00793          	li	a5,-1
    80002838:	03f79793          	slli	a5,a5,0x3f
    8000283c:	00978793          	addi	a5,a5,9
    80002840:	04f98e63          	beq	s3,a5,8000289c <HandleInterupt+0x104>
        Konsole::handleInterrupt();
        return;
    }

    if (scause != 8 && scause != 9) {
    80002844:	ff898793          	addi	a5,s3,-8
    80002848:	00100713          	li	a4,1
    8000284c:	04f76e63          	bltu	a4,a5,800028a8 <HandleInterupt+0x110>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002850:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80002854:	00478793          	addi	a5,a5,4
    80002858:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    8000285c:	05093783          	ld	a5,80(s2)
    switch (code) {
    80002860:	04200713          	li	a4,66
    80002864:	04f76a63          	bltu	a4,a5,800028b8 <HandleInterupt+0x120>
    80002868:	00279793          	slli	a5,a5,0x2
    8000286c:	00002717          	auipc	a4,0x2
    80002870:	7b470713          	addi	a4,a4,1972 # 80005020 <CONSOLE_STATUS+0x10>
    80002874:	00e787b3          	add	a5,a5,a4
    80002878:	0007a783          	lw	a5,0(a5)
    8000287c:	00e787b3          	add	a5,a5,a4
    80002880:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    80002884:	00470713          	addi	a4,a4,4
    80002888:	f95ff06f          	j	8000281c <HandleInterupt+0x84>
        Scheduler::timerTick(current);
    8000288c:	00048513          	mv	a0,s1
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	698080e7          	jalr	1688(ra) # 80001f28 <_ZN9Scheduler9timerTickEP6Thread>
        return;
    80002898:	0200006f          	j	800028b8 <HandleInterupt+0x120>
        Konsole::handleInterrupt();
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	aa8080e7          	jalr	-1368(ra) # 80002344 <_ZN7Konsole15handleInterruptEv>
        return;
    800028a4:	0140006f          	j	800028b8 <HandleInterupt+0x120>
        if ((scause >> 63) == 0) {  // exception, not interrupt
    800028a8:	0009c863          	bltz	s3,800028b8 <HandleInterupt+0x120>
            __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800028ac:	141027f3          	csrr	a5,sepc
            __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800028b0:	00478793          	addi	a5,a5,4
    800028b4:	14179073          	csrw	sepc,a5
        default: {
            break;
        }
    }
    return;
}
    800028b8:	03813083          	ld	ra,56(sp)
    800028bc:	03013403          	ld	s0,48(sp)
    800028c0:	02813483          	ld	s1,40(sp)
    800028c4:	02013903          	ld	s2,32(sp)
    800028c8:	01813983          	ld	s3,24(sp)
    800028cc:	01013a03          	ld	s4,16(sp)
    800028d0:	00813a83          	ld	s5,8(sp)
    800028d4:	00013b03          	ld	s6,0(sp)
    800028d8:	04010113          	addi	sp,sp,64
    800028dc:	00008067          	ret
            size_t size = frame[11];
    800028e0:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	d00080e7          	jalr	-768(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    800028ec:	00048593          	mv	a1,s1
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	d50080e7          	jalr	-688(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    800028f8:	00050513          	mv	a0,a0
            break;
    800028fc:	fbdff06f          	j	800028b8 <HandleInterupt+0x120>
            void* ptr = (void*)frame[11];
    80002900:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80002904:	00000097          	auipc	ra,0x0
    80002908:	ce0080e7          	jalr	-800(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    8000290c:	00048593          	mv	a1,s1
    80002910:	00000097          	auipc	ra,0x0
    80002914:	dcc080e7          	jalr	-564(ra) # 800026dc <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80002918:	fa1ff06f          	j	800028b8 <HandleInterupt+0x120>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    8000291c:	05893983          	ld	s3,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    80002920:	06093a83          	ld	s5,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    80002924:	06893a03          	ld	s4,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    80002928:	07093b03          	ld	s6,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread));
    8000292c:	00000097          	auipc	ra,0x0
    80002930:	cb8080e7          	jalr	-840(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    80002934:	15800593          	li	a1,344
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	d08080e7          	jalr	-760(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002940:	00050913          	mv	s2,a0
            if (!mem) {
    80002944:	04050463          	beqz	a0,8000298c <HandleInterupt+0x1f4>
            t->init();
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	184080e7          	jalr	388(ra) # 80001acc <_ZN6Thread4initEv>
    80002950:	01593023          	sd	s5,0(s2)
    80002954:	01493423          	sd	s4,8(s2)
            t->setup(current, stack_space);
    80002958:	000b0613          	mv	a2,s6
    8000295c:	00048593          	mv	a1,s1
    80002960:	00090513          	mv	a0,s2
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	30c080e7          	jalr	780(ra) # 80001c70 <_ZN6Thread5setupEPS_Pm>
            *handle = reinterpret_cast<thread_t>(t);
    8000296c:	0129b023          	sd	s2,0(s3)
            Scheduler::Put(t);   // enqueue; caller continues running
    80002970:	00090513          	mv	a0,s2
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	47c080e7          	jalr	1148(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
            if (current) current->threadContext.x[10] = 0;
    8000297c:	00048463          	beqz	s1,80002984 <HandleInterupt+0x1ec>
    80002980:	0804b823          	sd	zero,144(s1)
            __asm__ volatile("li a0, 0");  // return 0 via Trap.S path (x10 not restored from frame)
    80002984:	00000513          	li	a0,0
            break;
    80002988:	f31ff06f          	j	800028b8 <HandleInterupt+0x120>
                if (current) {
    8000298c:	f20486e3          	beqz	s1,800028b8 <HandleInterupt+0x120>
                    current->threadContext.x[10] = (size_t)-1;
    80002990:	fff00793          	li	a5,-1
    80002994:	08f4b823          	sd	a5,144(s1)
                    restoreContext(current->getContext());
    80002998:	00048513          	mv	a0,s1
    8000299c:	fffff097          	auipc	ra,0xfffff
    800029a0:	1f8080e7          	jalr	504(ra) # 80001b94 <_ZN6Thread10getContextEv>
    800029a4:	ffffe097          	auipc	ra,0xffffe
    800029a8:	6f0080e7          	jalr	1776(ra) # 80001094 <restoreContext>
                return;
    800029ac:	f0dff06f          	j	800028b8 <HandleInterupt+0x120>
            Scheduler::ThreadExit(current);
    800029b0:	00048513          	mv	a0,s1
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	3e8080e7          	jalr	1000(ra) # 80001d9c <_ZN9Scheduler10ThreadExitEP6Thread>
            break;
    800029bc:	efdff06f          	j	800028b8 <HandleInterupt+0x120>
            Thread* next = Scheduler::GetNext();
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	354080e7          	jalr	852(ra) # 80001d14 <_ZN9Scheduler7GetNextEv>
    800029c8:	00050913          	mv	s2,a0
            if (next == nullptr) {
    800029cc:	02050663          	beqz	a0,800029f8 <HandleInterupt+0x260>
            if (current) current->threadContext.x[10] = 0; // dispatch returns 0 when resumed
    800029d0:	00048463          	beqz	s1,800029d8 <HandleInterupt+0x240>
    800029d4:	0804b823          	sd	zero,144(s1)
            Scheduler::Put(current);
    800029d8:	00048513          	mv	a0,s1
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	414080e7          	jalr	1044(ra) # 80001df0 <_ZN9Scheduler3PutEP6Thread>
            Scheduler::yield(current, next); // never returns here
    800029e4:	00090593          	mv	a1,s2
    800029e8:	00048513          	mv	a0,s1
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	2ec080e7          	jalr	748(ra) # 80001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    800029f4:	ec5ff06f          	j	800028b8 <HandleInterupt+0x120>
                __asm__ volatile("li a0, 0");
    800029f8:	00000513          	li	a0,0
                break;
    800029fc:	ebdff06f          	j	800028b8 <HandleInterupt+0x120>
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
    80002a00:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)frame[12];
    80002a04:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Semaphore));
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	bdc080e7          	jalr	-1060(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    80002a10:	01800593          	li	a1,24
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	c2c080e7          	jalr	-980(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002a1c:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80002a20:	00050e63          	beqz	a0,80002a3c <HandleInterupt+0x2a4>
            semaphore->init(initialValue);
    80002a24:	00090593          	mv	a1,s2
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	ce4080e7          	jalr	-796(ra) # 8000170c <_ZN9Semaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    80002a30:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    80002a34:	00000513          	li	a0,0
            break;
    80002a38:	e81ff06f          	j	800028b8 <HandleInterupt+0x120>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    80002a3c:	fff00513          	li	a0,-1
    80002a40:	e79ff06f          	j	800028b8 <HandleInterupt+0x120>
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(frame[11]);
    80002a44:	05893483          	ld	s1,88(s2)
            semaphore->close();
    80002a48:	00048513          	mv	a0,s1
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	fbc080e7          	jalr	-68(ra) # 80001a08 <_ZN9Semaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	b90080e7          	jalr	-1136(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    80002a5c:	00048593          	mv	a1,s1
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	c7c080e7          	jalr	-900(ra) # 800026dc <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80002a68:	00000513          	li	a0,0
            break;
    80002a6c:	e4dff06f          	j	800028b8 <HandleInterupt+0x120>
            int result = semaphore->wait(current);
    80002a70:	00048593          	mv	a1,s1
    80002a74:	05893503          	ld	a0,88(s2)
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	dcc080e7          	jalr	-564(ra) # 80001844 <_ZN9Semaphore4waitEP6Thread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80002a80:	00a04663          	bgtz	a0,80002a8c <HandleInterupt+0x2f4>
    80002a84:	00050513          	mv	a0,a0
    80002a88:	e31ff06f          	j	800028b8 <HandleInterupt+0x120>
            Thread* next = Scheduler::GetNext();
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	288080e7          	jalr	648(ra) # 80001d14 <_ZN9Scheduler7GetNextEv>
    80002a94:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80002a98:	00050a63          	beqz	a0,80002aac <HandleInterupt+0x314>
            Scheduler::yield(current, next);
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	238080e7          	jalr	568(ra) # 80001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    80002aa8:	e11ff06f          	j	800028b8 <HandleInterupt+0x120>
            if (next == nullptr) { while(true){} }
    80002aac:	0000006f          	j	80002aac <HandleInterupt+0x314>
            semaphore->signal();
    80002ab0:	05893503          	ld	a0,88(s2)
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	df0080e7          	jalr	-528(ra) # 800018a4 <_ZN9Semaphore6signalEv>
            __asm__ volatile("li a0, 0");
    80002abc:	00000513          	li	a0,0
            break;
    80002ac0:	df9ff06f          	j	800028b8 <HandleInterupt+0x120>
            int result = semaphore->waitN(current, n);
    80002ac4:	06092603          	lw	a2,96(s2)
    80002ac8:	00048593          	mv	a1,s1
    80002acc:	05893503          	ld	a0,88(s2)
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	e50080e7          	jalr	-432(ra) # 80001920 <_ZN9Semaphore5waitNEP6Threadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80002ad8:	00a04663          	bgtz	a0,80002ae4 <HandleInterupt+0x34c>
    80002adc:	00050513          	mv	a0,a0
    80002ae0:	dd9ff06f          	j	800028b8 <HandleInterupt+0x120>
            Thread* next = Scheduler::GetNext();
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	230080e7          	jalr	560(ra) # 80001d14 <_ZN9Scheduler7GetNextEv>
    80002aec:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80002af0:	00050a63          	beqz	a0,80002b04 <HandleInterupt+0x36c>
            Scheduler::yield(current, next);
    80002af4:	00048513          	mv	a0,s1
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	1e0080e7          	jalr	480(ra) # 80001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    80002b00:	db9ff06f          	j	800028b8 <HandleInterupt+0x120>
            if (next == nullptr) { while(true){} }
    80002b04:	0000006f          	j	80002b04 <HandleInterupt+0x36c>
            semaphore->signalN(n);
    80002b08:	06092583          	lw	a1,96(s2)
    80002b0c:	05893503          	ld	a0,88(s2)
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	e80080e7          	jalr	-384(ra) # 80001990 <_ZN9Semaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    80002b18:	00000513          	li	a0,0
            break;
    80002b1c:	d9dff06f          	j	800028b8 <HandleInterupt+0x120>
            time_t dur = (time_t)frame[11];
    80002b20:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    80002b24:	00048463          	beqz	s1,80002b2c <HandleInterupt+0x394>
    80002b28:	0804b823          	sd	zero,144(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    80002b2c:	00059663          	bnez	a1,80002b38 <HandleInterupt+0x3a0>
    80002b30:	00000513          	li	a0,0
    80002b34:	d85ff06f          	j	800028b8 <HandleInterupt+0x120>
            Scheduler::sleep(current, dur);
    80002b38:	00048513          	mv	a0,s1
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	4ec080e7          	jalr	1260(ra) # 80002028 <_ZN9Scheduler5sleepEP6Threadm>
            Thread* next = Scheduler::GetNext();
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	1d0080e7          	jalr	464(ra) # 80001d14 <_ZN9Scheduler7GetNextEv>
    80002b4c:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80002b50:	00050a63          	beqz	a0,80002b64 <HandleInterupt+0x3cc>
            Scheduler::yield(current, next);
    80002b54:	00048513          	mv	a0,s1
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	180080e7          	jalr	384(ra) # 80001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    80002b60:	d59ff06f          	j	800028b8 <HandleInterupt+0x120>
            if (next == nullptr) { while(true){} }
    80002b64:	0000006f          	j	80002b64 <HandleInterupt+0x3cc>
            int result = Konsole::getcKernel(current);
    80002b68:	00048513          	mv	a0,s1
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	9a8080e7          	jalr	-1624(ra) # 80002514 <_ZN7Konsole10getcKernelEP6Thread>
            if (result == -2) {
    80002b74:	ffe00713          	li	a4,-2
    80002b78:	00e50863          	beq	a0,a4,80002b88 <HandleInterupt+0x3f0>
                __asm__ volatile("mv a0, %0" :: "r"((size_t)(unsigned char)result));
    80002b7c:	0ff57793          	andi	a5,a0,255
    80002b80:	00078513          	mv	a0,a5
    80002b84:	d35ff06f          	j	800028b8 <HandleInterupt+0x120>
                Thread* next = Scheduler::GetNext();
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	18c080e7          	jalr	396(ra) # 80001d14 <_ZN9Scheduler7GetNextEv>
    80002b90:	00050593          	mv	a1,a0
                if (next == nullptr) { while(true){} }
    80002b94:	00050a63          	beqz	a0,80002ba8 <HandleInterupt+0x410>
                Scheduler::yield(current, next);
    80002b98:	00048513          	mv	a0,s1
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	13c080e7          	jalr	316(ra) # 80001cd8 <_ZN9Scheduler5yieldEP6ThreadS1_>
    80002ba4:	d15ff06f          	j	800028b8 <HandleInterupt+0x120>
                if (next == nullptr) { while(true){} }
    80002ba8:	0000006f          	j	80002ba8 <HandleInterupt+0x410>
            int result = Konsole::putcKernel(current, c);
    80002bac:	05894583          	lbu	a1,88(s2)
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	8c0080e7          	jalr	-1856(ra) # 80002474 <_ZN7Konsole10putcKernelEP6Threadc>
            __asm__ volatile("mv a0, %0" :: "r"((size_t)result));
    80002bbc:	00050513          	mv	a0,a0
            break;
    80002bc0:	cf9ff06f          	j	800028b8 <HandleInterupt+0x120>

0000000080002bc4 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00113423          	sd	ra,8(sp)
    80002bcc:	00813023          	sd	s0,0(sp)
    80002bd0:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	2d4080e7          	jalr	724(ra) # 80001ea8 <_ZN9Scheduler16SetupStartThreadEv>
    Konsole::init();
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	6ac080e7          	jalr	1708(ra) # 80002288 <_ZN7Konsole4initEv>
    return 0;
}
    80002be4:	00000513          	li	a0,0
    80002be8:	00813083          	ld	ra,8(sp)
    80002bec:	00013403          	ld	s0,0(sp)
    80002bf0:	01010113          	addi	sp,sp,16
    80002bf4:	00008067          	ret

0000000080002bf8 <_Z5mainAv>:
#include "../lib/console.h"
#include "MemoryAllocator.hpp"
void mainA(){
    80002bf8:	fd010113          	addi	sp,sp,-48
    80002bfc:	02113423          	sd	ra,40(sp)
    80002c00:	02813023          	sd	s0,32(sp)
    80002c04:	00913c23          	sd	s1,24(sp)
    80002c08:	01213823          	sd	s2,16(sp)
    80002c0c:	03010413          	addi	s0,sp,48
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	9d4080e7          	jalr	-1580(ra) # 800025e4 <_ZN15MemoryAllocator11GetInstanceEv>
    80002c18:	00053783          	ld	a5,0(a0)
    80002c1c:	fcf43c23          	sd	a5,-40(s0)

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    80002c20:	01400593          	li	a1,20
    80002c24:	fd840913          	addi	s2,s0,-40
    80002c28:	00090513          	mv	a0,s2
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	a14080e7          	jalr	-1516(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002c34:	00050493          	mv	s1,a0
    *a1 = 'a';
    80002c38:	06100793          	li	a5,97
    80002c3c:	00f50023          	sb	a5,0(a0)
    *(a1+sizeof(char)) ='b';
    80002c40:	06200793          	li	a5,98
    80002c44:	00f500a3          	sb	a5,1(a0)
    __putc(*a1);
    80002c48:	06100513          	li	a0,97
    80002c4c:	00002097          	auipc	ra,0x2
    80002c50:	180080e7          	jalr	384(ra) # 80004dcc <__putc>
    __putc(*(a1+1));
    80002c54:	0014c503          	lbu	a0,1(s1)
    80002c58:	00002097          	auipc	ra,0x2
    80002c5c:	174080e7          	jalr	372(ra) # 80004dcc <__putc>
    *(a1+11) = 'h';
    80002c60:	06800793          	li	a5,104
    80002c64:	00f485a3          	sb	a5,11(s1)
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80002c68:	00a00593          	li	a1,10
    80002c6c:	00090513          	mv	a0,s2
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	9d0080e7          	jalr	-1584(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    *a2 = 'c';
    80002c78:	06300793          	li	a5,99
    80002c7c:	00f50023          	sb	a5,0(a0)
    *(a2+sizeof(char)) ='d';
    80002c80:	06400793          	li	a5,100
    80002c84:	00f500a3          	sb	a5,1(a0)
    memAlloc.FreeFragment(a1);
    80002c88:	00048593          	mv	a1,s1
    80002c8c:	00090513          	mv	a0,s2
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	a4c080e7          	jalr	-1460(ra) # 800026dc <_ZN15MemoryAllocator12FreeFragmentEPv>
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80002c98:	00a00593          	li	a1,10
    80002c9c:	00090513          	mv	a0,s2
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	9a0080e7          	jalr	-1632(ra) # 80002640 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002ca8:	00050913          	mv	s2,a0
    *a3 = 'e';
    80002cac:	06500793          	li	a5,101
    80002cb0:	00f50023          	sb	a5,0(a0)
    *(a3+sizeof(char)) ='f';
    80002cb4:	06600793          	li	a5,102
    80002cb8:	00f500a3          	sb	a5,1(a0)
    __putc(*a3);
    80002cbc:	06500513          	li	a0,101
    80002cc0:	00002097          	auipc	ra,0x2
    80002cc4:	10c080e7          	jalr	268(ra) # 80004dcc <__putc>
    __putc(*(a3+11));
    80002cc8:	00b94503          	lbu	a0,11(s2)
    80002ccc:	00002097          	auipc	ra,0x2
    80002cd0:	100080e7          	jalr	256(ra) # 80004dcc <__putc>
    __putc(*a1);
    80002cd4:	0004c503          	lbu	a0,0(s1)
    80002cd8:	00002097          	auipc	ra,0x2
    80002cdc:	0f4080e7          	jalr	244(ra) # 80004dcc <__putc>
    __putc(*(a1+1));
    80002ce0:	0014c503          	lbu	a0,1(s1)
    80002ce4:	00002097          	auipc	ra,0x2
    80002ce8:	0e8080e7          	jalr	232(ra) # 80004dcc <__putc>


    80002cec:	02813083          	ld	ra,40(sp)
    80002cf0:	02013403          	ld	s0,32(sp)
    80002cf4:	01813483          	ld	s1,24(sp)
    80002cf8:	01013903          	ld	s2,16(sp)
    80002cfc:	03010113          	addi	sp,sp,48
    80002d00:	00008067          	ret

0000000080002d04 <start>:
    80002d04:	ff010113          	addi	sp,sp,-16
    80002d08:	00813423          	sd	s0,8(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    80002d10:	300027f3          	csrr	a5,mstatus
    80002d14:	ffffe737          	lui	a4,0xffffe
    80002d18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff781f>
    80002d1c:	00e7f7b3          	and	a5,a5,a4
    80002d20:	00001737          	lui	a4,0x1
    80002d24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002d28:	00e7e7b3          	or	a5,a5,a4
    80002d2c:	30079073          	csrw	mstatus,a5
    80002d30:	00000797          	auipc	a5,0x0
    80002d34:	16078793          	addi	a5,a5,352 # 80002e90 <system_main>
    80002d38:	34179073          	csrw	mepc,a5
    80002d3c:	00000793          	li	a5,0
    80002d40:	18079073          	csrw	satp,a5
    80002d44:	000107b7          	lui	a5,0x10
    80002d48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002d4c:	30279073          	csrw	medeleg,a5
    80002d50:	30379073          	csrw	mideleg,a5
    80002d54:	104027f3          	csrr	a5,sie
    80002d58:	2227e793          	ori	a5,a5,546
    80002d5c:	10479073          	csrw	sie,a5
    80002d60:	fff00793          	li	a5,-1
    80002d64:	00a7d793          	srli	a5,a5,0xa
    80002d68:	3b079073          	csrw	pmpaddr0,a5
    80002d6c:	00f00793          	li	a5,15
    80002d70:	3a079073          	csrw	pmpcfg0,a5
    80002d74:	f14027f3          	csrr	a5,mhartid
    80002d78:	0200c737          	lui	a4,0x200c
    80002d7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002d80:	0007869b          	sext.w	a3,a5
    80002d84:	00269713          	slli	a4,a3,0x2
    80002d88:	000f4637          	lui	a2,0xf4
    80002d8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002d90:	00d70733          	add	a4,a4,a3
    80002d94:	0037979b          	slliw	a5,a5,0x3
    80002d98:	020046b7          	lui	a3,0x2004
    80002d9c:	00d787b3          	add	a5,a5,a3
    80002da0:	00c585b3          	add	a1,a1,a2
    80002da4:	00371693          	slli	a3,a4,0x3
    80002da8:	00003717          	auipc	a4,0x3
    80002dac:	fe870713          	addi	a4,a4,-24 # 80005d90 <timer_scratch>
    80002db0:	00b7b023          	sd	a1,0(a5)
    80002db4:	00d70733          	add	a4,a4,a3
    80002db8:	00f73c23          	sd	a5,24(a4)
    80002dbc:	02c73023          	sd	a2,32(a4)
    80002dc0:	34071073          	csrw	mscratch,a4
    80002dc4:	00000797          	auipc	a5,0x0
    80002dc8:	6ec78793          	addi	a5,a5,1772 # 800034b0 <timervec>
    80002dcc:	30579073          	csrw	mtvec,a5
    80002dd0:	300027f3          	csrr	a5,mstatus
    80002dd4:	0087e793          	ori	a5,a5,8
    80002dd8:	30079073          	csrw	mstatus,a5
    80002ddc:	304027f3          	csrr	a5,mie
    80002de0:	0807e793          	ori	a5,a5,128
    80002de4:	30479073          	csrw	mie,a5
    80002de8:	f14027f3          	csrr	a5,mhartid
    80002dec:	0007879b          	sext.w	a5,a5
    80002df0:	00078213          	mv	tp,a5
    80002df4:	30200073          	mret
    80002df8:	00813403          	ld	s0,8(sp)
    80002dfc:	01010113          	addi	sp,sp,16
    80002e00:	00008067          	ret

0000000080002e04 <timerinit>:
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00813423          	sd	s0,8(sp)
    80002e0c:	01010413          	addi	s0,sp,16
    80002e10:	f14027f3          	csrr	a5,mhartid
    80002e14:	0200c737          	lui	a4,0x200c
    80002e18:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002e1c:	0007869b          	sext.w	a3,a5
    80002e20:	00269713          	slli	a4,a3,0x2
    80002e24:	000f4637          	lui	a2,0xf4
    80002e28:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002e2c:	00d70733          	add	a4,a4,a3
    80002e30:	0037979b          	slliw	a5,a5,0x3
    80002e34:	020046b7          	lui	a3,0x2004
    80002e38:	00d787b3          	add	a5,a5,a3
    80002e3c:	00c585b3          	add	a1,a1,a2
    80002e40:	00371693          	slli	a3,a4,0x3
    80002e44:	00003717          	auipc	a4,0x3
    80002e48:	f4c70713          	addi	a4,a4,-180 # 80005d90 <timer_scratch>
    80002e4c:	00b7b023          	sd	a1,0(a5)
    80002e50:	00d70733          	add	a4,a4,a3
    80002e54:	00f73c23          	sd	a5,24(a4)
    80002e58:	02c73023          	sd	a2,32(a4)
    80002e5c:	34071073          	csrw	mscratch,a4
    80002e60:	00000797          	auipc	a5,0x0
    80002e64:	65078793          	addi	a5,a5,1616 # 800034b0 <timervec>
    80002e68:	30579073          	csrw	mtvec,a5
    80002e6c:	300027f3          	csrr	a5,mstatus
    80002e70:	0087e793          	ori	a5,a5,8
    80002e74:	30079073          	csrw	mstatus,a5
    80002e78:	304027f3          	csrr	a5,mie
    80002e7c:	0807e793          	ori	a5,a5,128
    80002e80:	30479073          	csrw	mie,a5
    80002e84:	00813403          	ld	s0,8(sp)
    80002e88:	01010113          	addi	sp,sp,16
    80002e8c:	00008067          	ret

0000000080002e90 <system_main>:
    80002e90:	fe010113          	addi	sp,sp,-32
    80002e94:	00813823          	sd	s0,16(sp)
    80002e98:	00913423          	sd	s1,8(sp)
    80002e9c:	00113c23          	sd	ra,24(sp)
    80002ea0:	02010413          	addi	s0,sp,32
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	0c4080e7          	jalr	196(ra) # 80002f68 <cpuid>
    80002eac:	00003497          	auipc	s1,0x3
    80002eb0:	c4448493          	addi	s1,s1,-956 # 80005af0 <started>
    80002eb4:	02050263          	beqz	a0,80002ed8 <system_main+0x48>
    80002eb8:	0004a783          	lw	a5,0(s1)
    80002ebc:	0007879b          	sext.w	a5,a5
    80002ec0:	fe078ce3          	beqz	a5,80002eb8 <system_main+0x28>
    80002ec4:	0ff0000f          	fence
    80002ec8:	00002517          	auipc	a0,0x2
    80002ecc:	29850513          	addi	a0,a0,664 # 80005160 <CONSOLE_STATUS+0x150>
    80002ed0:	00001097          	auipc	ra,0x1
    80002ed4:	a7c080e7          	jalr	-1412(ra) # 8000394c <panic>
    80002ed8:	00001097          	auipc	ra,0x1
    80002edc:	9d0080e7          	jalr	-1584(ra) # 800038a8 <consoleinit>
    80002ee0:	00001097          	auipc	ra,0x1
    80002ee4:	15c080e7          	jalr	348(ra) # 8000403c <printfinit>
    80002ee8:	00002517          	auipc	a0,0x2
    80002eec:	35850513          	addi	a0,a0,856 # 80005240 <CONSOLE_STATUS+0x230>
    80002ef0:	00001097          	auipc	ra,0x1
    80002ef4:	ab8080e7          	jalr	-1352(ra) # 800039a8 <__printf>
    80002ef8:	00002517          	auipc	a0,0x2
    80002efc:	23850513          	addi	a0,a0,568 # 80005130 <CONSOLE_STATUS+0x120>
    80002f00:	00001097          	auipc	ra,0x1
    80002f04:	aa8080e7          	jalr	-1368(ra) # 800039a8 <__printf>
    80002f08:	00002517          	auipc	a0,0x2
    80002f0c:	33850513          	addi	a0,a0,824 # 80005240 <CONSOLE_STATUS+0x230>
    80002f10:	00001097          	auipc	ra,0x1
    80002f14:	a98080e7          	jalr	-1384(ra) # 800039a8 <__printf>
    80002f18:	00001097          	auipc	ra,0x1
    80002f1c:	4b0080e7          	jalr	1200(ra) # 800043c8 <kinit>
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	148080e7          	jalr	328(ra) # 80003068 <trapinit>
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	16c080e7          	jalr	364(ra) # 80003094 <trapinithart>
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	5c0080e7          	jalr	1472(ra) # 800034f0 <plicinit>
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	5e0080e7          	jalr	1504(ra) # 80003518 <plicinithart>
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	078080e7          	jalr	120(ra) # 80002fb8 <userinit>
    80002f48:	0ff0000f          	fence
    80002f4c:	00100793          	li	a5,1
    80002f50:	00002517          	auipc	a0,0x2
    80002f54:	1f850513          	addi	a0,a0,504 # 80005148 <CONSOLE_STATUS+0x138>
    80002f58:	00f4a023          	sw	a5,0(s1)
    80002f5c:	00001097          	auipc	ra,0x1
    80002f60:	a4c080e7          	jalr	-1460(ra) # 800039a8 <__printf>
    80002f64:	0000006f          	j	80002f64 <system_main+0xd4>

0000000080002f68 <cpuid>:
    80002f68:	ff010113          	addi	sp,sp,-16
    80002f6c:	00813423          	sd	s0,8(sp)
    80002f70:	01010413          	addi	s0,sp,16
    80002f74:	00020513          	mv	a0,tp
    80002f78:	00813403          	ld	s0,8(sp)
    80002f7c:	0005051b          	sext.w	a0,a0
    80002f80:	01010113          	addi	sp,sp,16
    80002f84:	00008067          	ret

0000000080002f88 <mycpu>:
    80002f88:	ff010113          	addi	sp,sp,-16
    80002f8c:	00813423          	sd	s0,8(sp)
    80002f90:	01010413          	addi	s0,sp,16
    80002f94:	00020793          	mv	a5,tp
    80002f98:	00813403          	ld	s0,8(sp)
    80002f9c:	0007879b          	sext.w	a5,a5
    80002fa0:	00779793          	slli	a5,a5,0x7
    80002fa4:	00004517          	auipc	a0,0x4
    80002fa8:	e1c50513          	addi	a0,a0,-484 # 80006dc0 <cpus>
    80002fac:	00f50533          	add	a0,a0,a5
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret

0000000080002fb8 <userinit>:
    80002fb8:	ff010113          	addi	sp,sp,-16
    80002fbc:	00813423          	sd	s0,8(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    80002fc4:	00813403          	ld	s0,8(sp)
    80002fc8:	01010113          	addi	sp,sp,16
    80002fcc:	ffffe317          	auipc	t1,0xffffe
    80002fd0:	6f030067          	jr	1776(t1) # 800016bc <main>

0000000080002fd4 <either_copyout>:
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00813023          	sd	s0,0(sp)
    80002fdc:	00113423          	sd	ra,8(sp)
    80002fe0:	01010413          	addi	s0,sp,16
    80002fe4:	02051663          	bnez	a0,80003010 <either_copyout+0x3c>
    80002fe8:	00058513          	mv	a0,a1
    80002fec:	00060593          	mv	a1,a2
    80002ff0:	0006861b          	sext.w	a2,a3
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	c60080e7          	jalr	-928(ra) # 80004c54 <__memmove>
    80002ffc:	00813083          	ld	ra,8(sp)
    80003000:	00013403          	ld	s0,0(sp)
    80003004:	00000513          	li	a0,0
    80003008:	01010113          	addi	sp,sp,16
    8000300c:	00008067          	ret
    80003010:	00002517          	auipc	a0,0x2
    80003014:	17850513          	addi	a0,a0,376 # 80005188 <CONSOLE_STATUS+0x178>
    80003018:	00001097          	auipc	ra,0x1
    8000301c:	934080e7          	jalr	-1740(ra) # 8000394c <panic>

0000000080003020 <either_copyin>:
    80003020:	ff010113          	addi	sp,sp,-16
    80003024:	00813023          	sd	s0,0(sp)
    80003028:	00113423          	sd	ra,8(sp)
    8000302c:	01010413          	addi	s0,sp,16
    80003030:	02059463          	bnez	a1,80003058 <either_copyin+0x38>
    80003034:	00060593          	mv	a1,a2
    80003038:	0006861b          	sext.w	a2,a3
    8000303c:	00002097          	auipc	ra,0x2
    80003040:	c18080e7          	jalr	-1000(ra) # 80004c54 <__memmove>
    80003044:	00813083          	ld	ra,8(sp)
    80003048:	00013403          	ld	s0,0(sp)
    8000304c:	00000513          	li	a0,0
    80003050:	01010113          	addi	sp,sp,16
    80003054:	00008067          	ret
    80003058:	00002517          	auipc	a0,0x2
    8000305c:	15850513          	addi	a0,a0,344 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80003060:	00001097          	auipc	ra,0x1
    80003064:	8ec080e7          	jalr	-1812(ra) # 8000394c <panic>

0000000080003068 <trapinit>:
    80003068:	ff010113          	addi	sp,sp,-16
    8000306c:	00813423          	sd	s0,8(sp)
    80003070:	01010413          	addi	s0,sp,16
    80003074:	00813403          	ld	s0,8(sp)
    80003078:	00002597          	auipc	a1,0x2
    8000307c:	16058593          	addi	a1,a1,352 # 800051d8 <CONSOLE_STATUS+0x1c8>
    80003080:	00004517          	auipc	a0,0x4
    80003084:	dc050513          	addi	a0,a0,-576 # 80006e40 <tickslock>
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00001317          	auipc	t1,0x1
    80003090:	5cc30067          	jr	1484(t1) # 80004658 <initlock>

0000000080003094 <trapinithart>:
    80003094:	ff010113          	addi	sp,sp,-16
    80003098:	00813423          	sd	s0,8(sp)
    8000309c:	01010413          	addi	s0,sp,16
    800030a0:	00000797          	auipc	a5,0x0
    800030a4:	30078793          	addi	a5,a5,768 # 800033a0 <kernelvec>
    800030a8:	10579073          	csrw	stvec,a5
    800030ac:	00813403          	ld	s0,8(sp)
    800030b0:	01010113          	addi	sp,sp,16
    800030b4:	00008067          	ret

00000000800030b8 <usertrap>:
    800030b8:	ff010113          	addi	sp,sp,-16
    800030bc:	00813423          	sd	s0,8(sp)
    800030c0:	01010413          	addi	s0,sp,16
    800030c4:	00813403          	ld	s0,8(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret

00000000800030d0 <usertrapret>:
    800030d0:	ff010113          	addi	sp,sp,-16
    800030d4:	00813423          	sd	s0,8(sp)
    800030d8:	01010413          	addi	s0,sp,16
    800030dc:	00813403          	ld	s0,8(sp)
    800030e0:	01010113          	addi	sp,sp,16
    800030e4:	00008067          	ret

00000000800030e8 <kerneltrap>:
    800030e8:	fe010113          	addi	sp,sp,-32
    800030ec:	00813823          	sd	s0,16(sp)
    800030f0:	00113c23          	sd	ra,24(sp)
    800030f4:	00913423          	sd	s1,8(sp)
    800030f8:	02010413          	addi	s0,sp,32
    800030fc:	142025f3          	csrr	a1,scause
    80003100:	100027f3          	csrr	a5,sstatus
    80003104:	0027f793          	andi	a5,a5,2
    80003108:	10079c63          	bnez	a5,80003220 <kerneltrap+0x138>
    8000310c:	142027f3          	csrr	a5,scause
    80003110:	0207ce63          	bltz	a5,8000314c <kerneltrap+0x64>
    80003114:	00002517          	auipc	a0,0x2
    80003118:	10c50513          	addi	a0,a0,268 # 80005220 <CONSOLE_STATUS+0x210>
    8000311c:	00001097          	auipc	ra,0x1
    80003120:	88c080e7          	jalr	-1908(ra) # 800039a8 <__printf>
    80003124:	141025f3          	csrr	a1,sepc
    80003128:	14302673          	csrr	a2,stval
    8000312c:	00002517          	auipc	a0,0x2
    80003130:	10450513          	addi	a0,a0,260 # 80005230 <CONSOLE_STATUS+0x220>
    80003134:	00001097          	auipc	ra,0x1
    80003138:	874080e7          	jalr	-1932(ra) # 800039a8 <__printf>
    8000313c:	00002517          	auipc	a0,0x2
    80003140:	10c50513          	addi	a0,a0,268 # 80005248 <CONSOLE_STATUS+0x238>
    80003144:	00001097          	auipc	ra,0x1
    80003148:	808080e7          	jalr	-2040(ra) # 8000394c <panic>
    8000314c:	0ff7f713          	andi	a4,a5,255
    80003150:	00900693          	li	a3,9
    80003154:	04d70063          	beq	a4,a3,80003194 <kerneltrap+0xac>
    80003158:	fff00713          	li	a4,-1
    8000315c:	03f71713          	slli	a4,a4,0x3f
    80003160:	00170713          	addi	a4,a4,1
    80003164:	fae798e3          	bne	a5,a4,80003114 <kerneltrap+0x2c>
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	e00080e7          	jalr	-512(ra) # 80002f68 <cpuid>
    80003170:	06050663          	beqz	a0,800031dc <kerneltrap+0xf4>
    80003174:	144027f3          	csrr	a5,sip
    80003178:	ffd7f793          	andi	a5,a5,-3
    8000317c:	14479073          	csrw	sip,a5
    80003180:	01813083          	ld	ra,24(sp)
    80003184:	01013403          	ld	s0,16(sp)
    80003188:	00813483          	ld	s1,8(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret
    80003194:	00000097          	auipc	ra,0x0
    80003198:	3d0080e7          	jalr	976(ra) # 80003564 <plic_claim>
    8000319c:	00a00793          	li	a5,10
    800031a0:	00050493          	mv	s1,a0
    800031a4:	06f50863          	beq	a0,a5,80003214 <kerneltrap+0x12c>
    800031a8:	fc050ce3          	beqz	a0,80003180 <kerneltrap+0x98>
    800031ac:	00050593          	mv	a1,a0
    800031b0:	00002517          	auipc	a0,0x2
    800031b4:	05050513          	addi	a0,a0,80 # 80005200 <CONSOLE_STATUS+0x1f0>
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	7f0080e7          	jalr	2032(ra) # 800039a8 <__printf>
    800031c0:	01013403          	ld	s0,16(sp)
    800031c4:	01813083          	ld	ra,24(sp)
    800031c8:	00048513          	mv	a0,s1
    800031cc:	00813483          	ld	s1,8(sp)
    800031d0:	02010113          	addi	sp,sp,32
    800031d4:	00000317          	auipc	t1,0x0
    800031d8:	3c830067          	jr	968(t1) # 8000359c <plic_complete>
    800031dc:	00004517          	auipc	a0,0x4
    800031e0:	c6450513          	addi	a0,a0,-924 # 80006e40 <tickslock>
    800031e4:	00001097          	auipc	ra,0x1
    800031e8:	498080e7          	jalr	1176(ra) # 8000467c <acquire>
    800031ec:	00003717          	auipc	a4,0x3
    800031f0:	90870713          	addi	a4,a4,-1784 # 80005af4 <ticks>
    800031f4:	00072783          	lw	a5,0(a4)
    800031f8:	00004517          	auipc	a0,0x4
    800031fc:	c4850513          	addi	a0,a0,-952 # 80006e40 <tickslock>
    80003200:	0017879b          	addiw	a5,a5,1
    80003204:	00f72023          	sw	a5,0(a4)
    80003208:	00001097          	auipc	ra,0x1
    8000320c:	540080e7          	jalr	1344(ra) # 80004748 <release>
    80003210:	f65ff06f          	j	80003174 <kerneltrap+0x8c>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	09c080e7          	jalr	156(ra) # 800042b0 <uartintr>
    8000321c:	fa5ff06f          	j	800031c0 <kerneltrap+0xd8>
    80003220:	00002517          	auipc	a0,0x2
    80003224:	fc050513          	addi	a0,a0,-64 # 800051e0 <CONSOLE_STATUS+0x1d0>
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	724080e7          	jalr	1828(ra) # 8000394c <panic>

0000000080003230 <clockintr>:
    80003230:	fe010113          	addi	sp,sp,-32
    80003234:	00813823          	sd	s0,16(sp)
    80003238:	00913423          	sd	s1,8(sp)
    8000323c:	00113c23          	sd	ra,24(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	00004497          	auipc	s1,0x4
    80003248:	bfc48493          	addi	s1,s1,-1028 # 80006e40 <tickslock>
    8000324c:	00048513          	mv	a0,s1
    80003250:	00001097          	auipc	ra,0x1
    80003254:	42c080e7          	jalr	1068(ra) # 8000467c <acquire>
    80003258:	00003717          	auipc	a4,0x3
    8000325c:	89c70713          	addi	a4,a4,-1892 # 80005af4 <ticks>
    80003260:	00072783          	lw	a5,0(a4)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	01813083          	ld	ra,24(sp)
    8000326c:	00048513          	mv	a0,s1
    80003270:	0017879b          	addiw	a5,a5,1
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	00f72023          	sw	a5,0(a4)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00001317          	auipc	t1,0x1
    80003284:	4c830067          	jr	1224(t1) # 80004748 <release>

0000000080003288 <devintr>:
    80003288:	142027f3          	csrr	a5,scause
    8000328c:	00000513          	li	a0,0
    80003290:	0007c463          	bltz	a5,80003298 <devintr+0x10>
    80003294:	00008067          	ret
    80003298:	fe010113          	addi	sp,sp,-32
    8000329c:	00813823          	sd	s0,16(sp)
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00913423          	sd	s1,8(sp)
    800032a8:	02010413          	addi	s0,sp,32
    800032ac:	0ff7f713          	andi	a4,a5,255
    800032b0:	00900693          	li	a3,9
    800032b4:	04d70c63          	beq	a4,a3,8000330c <devintr+0x84>
    800032b8:	fff00713          	li	a4,-1
    800032bc:	03f71713          	slli	a4,a4,0x3f
    800032c0:	00170713          	addi	a4,a4,1
    800032c4:	00e78c63          	beq	a5,a4,800032dc <devintr+0x54>
    800032c8:	01813083          	ld	ra,24(sp)
    800032cc:	01013403          	ld	s0,16(sp)
    800032d0:	00813483          	ld	s1,8(sp)
    800032d4:	02010113          	addi	sp,sp,32
    800032d8:	00008067          	ret
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	c8c080e7          	jalr	-884(ra) # 80002f68 <cpuid>
    800032e4:	06050663          	beqz	a0,80003350 <devintr+0xc8>
    800032e8:	144027f3          	csrr	a5,sip
    800032ec:	ffd7f793          	andi	a5,a5,-3
    800032f0:	14479073          	csrw	sip,a5
    800032f4:	01813083          	ld	ra,24(sp)
    800032f8:	01013403          	ld	s0,16(sp)
    800032fc:	00813483          	ld	s1,8(sp)
    80003300:	00200513          	li	a0,2
    80003304:	02010113          	addi	sp,sp,32
    80003308:	00008067          	ret
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	258080e7          	jalr	600(ra) # 80003564 <plic_claim>
    80003314:	00a00793          	li	a5,10
    80003318:	00050493          	mv	s1,a0
    8000331c:	06f50663          	beq	a0,a5,80003388 <devintr+0x100>
    80003320:	00100513          	li	a0,1
    80003324:	fa0482e3          	beqz	s1,800032c8 <devintr+0x40>
    80003328:	00048593          	mv	a1,s1
    8000332c:	00002517          	auipc	a0,0x2
    80003330:	ed450513          	addi	a0,a0,-300 # 80005200 <CONSOLE_STATUS+0x1f0>
    80003334:	00000097          	auipc	ra,0x0
    80003338:	674080e7          	jalr	1652(ra) # 800039a8 <__printf>
    8000333c:	00048513          	mv	a0,s1
    80003340:	00000097          	auipc	ra,0x0
    80003344:	25c080e7          	jalr	604(ra) # 8000359c <plic_complete>
    80003348:	00100513          	li	a0,1
    8000334c:	f7dff06f          	j	800032c8 <devintr+0x40>
    80003350:	00004517          	auipc	a0,0x4
    80003354:	af050513          	addi	a0,a0,-1296 # 80006e40 <tickslock>
    80003358:	00001097          	auipc	ra,0x1
    8000335c:	324080e7          	jalr	804(ra) # 8000467c <acquire>
    80003360:	00002717          	auipc	a4,0x2
    80003364:	79470713          	addi	a4,a4,1940 # 80005af4 <ticks>
    80003368:	00072783          	lw	a5,0(a4)
    8000336c:	00004517          	auipc	a0,0x4
    80003370:	ad450513          	addi	a0,a0,-1324 # 80006e40 <tickslock>
    80003374:	0017879b          	addiw	a5,a5,1
    80003378:	00f72023          	sw	a5,0(a4)
    8000337c:	00001097          	auipc	ra,0x1
    80003380:	3cc080e7          	jalr	972(ra) # 80004748 <release>
    80003384:	f65ff06f          	j	800032e8 <devintr+0x60>
    80003388:	00001097          	auipc	ra,0x1
    8000338c:	f28080e7          	jalr	-216(ra) # 800042b0 <uartintr>
    80003390:	fadff06f          	j	8000333c <devintr+0xb4>
	...

00000000800033a0 <kernelvec>:
    800033a0:	f0010113          	addi	sp,sp,-256
    800033a4:	00113023          	sd	ra,0(sp)
    800033a8:	00213423          	sd	sp,8(sp)
    800033ac:	00313823          	sd	gp,16(sp)
    800033b0:	00413c23          	sd	tp,24(sp)
    800033b4:	02513023          	sd	t0,32(sp)
    800033b8:	02613423          	sd	t1,40(sp)
    800033bc:	02713823          	sd	t2,48(sp)
    800033c0:	02813c23          	sd	s0,56(sp)
    800033c4:	04913023          	sd	s1,64(sp)
    800033c8:	04a13423          	sd	a0,72(sp)
    800033cc:	04b13823          	sd	a1,80(sp)
    800033d0:	04c13c23          	sd	a2,88(sp)
    800033d4:	06d13023          	sd	a3,96(sp)
    800033d8:	06e13423          	sd	a4,104(sp)
    800033dc:	06f13823          	sd	a5,112(sp)
    800033e0:	07013c23          	sd	a6,120(sp)
    800033e4:	09113023          	sd	a7,128(sp)
    800033e8:	09213423          	sd	s2,136(sp)
    800033ec:	09313823          	sd	s3,144(sp)
    800033f0:	09413c23          	sd	s4,152(sp)
    800033f4:	0b513023          	sd	s5,160(sp)
    800033f8:	0b613423          	sd	s6,168(sp)
    800033fc:	0b713823          	sd	s7,176(sp)
    80003400:	0b813c23          	sd	s8,184(sp)
    80003404:	0d913023          	sd	s9,192(sp)
    80003408:	0da13423          	sd	s10,200(sp)
    8000340c:	0db13823          	sd	s11,208(sp)
    80003410:	0dc13c23          	sd	t3,216(sp)
    80003414:	0fd13023          	sd	t4,224(sp)
    80003418:	0fe13423          	sd	t5,232(sp)
    8000341c:	0ff13823          	sd	t6,240(sp)
    80003420:	cc9ff0ef          	jal	ra,800030e8 <kerneltrap>
    80003424:	00013083          	ld	ra,0(sp)
    80003428:	00813103          	ld	sp,8(sp)
    8000342c:	01013183          	ld	gp,16(sp)
    80003430:	02013283          	ld	t0,32(sp)
    80003434:	02813303          	ld	t1,40(sp)
    80003438:	03013383          	ld	t2,48(sp)
    8000343c:	03813403          	ld	s0,56(sp)
    80003440:	04013483          	ld	s1,64(sp)
    80003444:	04813503          	ld	a0,72(sp)
    80003448:	05013583          	ld	a1,80(sp)
    8000344c:	05813603          	ld	a2,88(sp)
    80003450:	06013683          	ld	a3,96(sp)
    80003454:	06813703          	ld	a4,104(sp)
    80003458:	07013783          	ld	a5,112(sp)
    8000345c:	07813803          	ld	a6,120(sp)
    80003460:	08013883          	ld	a7,128(sp)
    80003464:	08813903          	ld	s2,136(sp)
    80003468:	09013983          	ld	s3,144(sp)
    8000346c:	09813a03          	ld	s4,152(sp)
    80003470:	0a013a83          	ld	s5,160(sp)
    80003474:	0a813b03          	ld	s6,168(sp)
    80003478:	0b013b83          	ld	s7,176(sp)
    8000347c:	0b813c03          	ld	s8,184(sp)
    80003480:	0c013c83          	ld	s9,192(sp)
    80003484:	0c813d03          	ld	s10,200(sp)
    80003488:	0d013d83          	ld	s11,208(sp)
    8000348c:	0d813e03          	ld	t3,216(sp)
    80003490:	0e013e83          	ld	t4,224(sp)
    80003494:	0e813f03          	ld	t5,232(sp)
    80003498:	0f013f83          	ld	t6,240(sp)
    8000349c:	10010113          	addi	sp,sp,256
    800034a0:	10200073          	sret
    800034a4:	00000013          	nop
    800034a8:	00000013          	nop
    800034ac:	00000013          	nop

00000000800034b0 <timervec>:
    800034b0:	34051573          	csrrw	a0,mscratch,a0
    800034b4:	00b53023          	sd	a1,0(a0)
    800034b8:	00c53423          	sd	a2,8(a0)
    800034bc:	00d53823          	sd	a3,16(a0)
    800034c0:	01853583          	ld	a1,24(a0)
    800034c4:	02053603          	ld	a2,32(a0)
    800034c8:	0005b683          	ld	a3,0(a1)
    800034cc:	00c686b3          	add	a3,a3,a2
    800034d0:	00d5b023          	sd	a3,0(a1)
    800034d4:	00200593          	li	a1,2
    800034d8:	14459073          	csrw	sip,a1
    800034dc:	01053683          	ld	a3,16(a0)
    800034e0:	00853603          	ld	a2,8(a0)
    800034e4:	00053583          	ld	a1,0(a0)
    800034e8:	34051573          	csrrw	a0,mscratch,a0
    800034ec:	30200073          	mret

00000000800034f0 <plicinit>:
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813423          	sd	s0,8(sp)
    800034f8:	01010413          	addi	s0,sp,16
    800034fc:	00813403          	ld	s0,8(sp)
    80003500:	0c0007b7          	lui	a5,0xc000
    80003504:	00100713          	li	a4,1
    80003508:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000350c:	00e7a223          	sw	a4,4(a5)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	00008067          	ret

0000000080003518 <plicinithart>:
    80003518:	ff010113          	addi	sp,sp,-16
    8000351c:	00813023          	sd	s0,0(sp)
    80003520:	00113423          	sd	ra,8(sp)
    80003524:	01010413          	addi	s0,sp,16
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	a40080e7          	jalr	-1472(ra) # 80002f68 <cpuid>
    80003530:	0085171b          	slliw	a4,a0,0x8
    80003534:	0c0027b7          	lui	a5,0xc002
    80003538:	00e787b3          	add	a5,a5,a4
    8000353c:	40200713          	li	a4,1026
    80003540:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003544:	00813083          	ld	ra,8(sp)
    80003548:	00013403          	ld	s0,0(sp)
    8000354c:	00d5151b          	slliw	a0,a0,0xd
    80003550:	0c2017b7          	lui	a5,0xc201
    80003554:	00a78533          	add	a0,a5,a0
    80003558:	00052023          	sw	zero,0(a0)
    8000355c:	01010113          	addi	sp,sp,16
    80003560:	00008067          	ret

0000000080003564 <plic_claim>:
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813023          	sd	s0,0(sp)
    8000356c:	00113423          	sd	ra,8(sp)
    80003570:	01010413          	addi	s0,sp,16
    80003574:	00000097          	auipc	ra,0x0
    80003578:	9f4080e7          	jalr	-1548(ra) # 80002f68 <cpuid>
    8000357c:	00813083          	ld	ra,8(sp)
    80003580:	00013403          	ld	s0,0(sp)
    80003584:	00d5151b          	slliw	a0,a0,0xd
    80003588:	0c2017b7          	lui	a5,0xc201
    8000358c:	00a78533          	add	a0,a5,a0
    80003590:	00452503          	lw	a0,4(a0)
    80003594:	01010113          	addi	sp,sp,16
    80003598:	00008067          	ret

000000008000359c <plic_complete>:
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00813823          	sd	s0,16(sp)
    800035a4:	00913423          	sd	s1,8(sp)
    800035a8:	00113c23          	sd	ra,24(sp)
    800035ac:	02010413          	addi	s0,sp,32
    800035b0:	00050493          	mv	s1,a0
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	9b4080e7          	jalr	-1612(ra) # 80002f68 <cpuid>
    800035bc:	01813083          	ld	ra,24(sp)
    800035c0:	01013403          	ld	s0,16(sp)
    800035c4:	00d5179b          	slliw	a5,a0,0xd
    800035c8:	0c201737          	lui	a4,0xc201
    800035cc:	00f707b3          	add	a5,a4,a5
    800035d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret

00000000800035e0 <consolewrite>:
    800035e0:	fb010113          	addi	sp,sp,-80
    800035e4:	04813023          	sd	s0,64(sp)
    800035e8:	04113423          	sd	ra,72(sp)
    800035ec:	02913c23          	sd	s1,56(sp)
    800035f0:	03213823          	sd	s2,48(sp)
    800035f4:	03313423          	sd	s3,40(sp)
    800035f8:	03413023          	sd	s4,32(sp)
    800035fc:	01513c23          	sd	s5,24(sp)
    80003600:	05010413          	addi	s0,sp,80
    80003604:	06c05c63          	blez	a2,8000367c <consolewrite+0x9c>
    80003608:	00060993          	mv	s3,a2
    8000360c:	00050a13          	mv	s4,a0
    80003610:	00058493          	mv	s1,a1
    80003614:	00000913          	li	s2,0
    80003618:	fff00a93          	li	s5,-1
    8000361c:	01c0006f          	j	80003638 <consolewrite+0x58>
    80003620:	fbf44503          	lbu	a0,-65(s0)
    80003624:	0019091b          	addiw	s2,s2,1
    80003628:	00148493          	addi	s1,s1,1
    8000362c:	00001097          	auipc	ra,0x1
    80003630:	a9c080e7          	jalr	-1380(ra) # 800040c8 <uartputc>
    80003634:	03298063          	beq	s3,s2,80003654 <consolewrite+0x74>
    80003638:	00048613          	mv	a2,s1
    8000363c:	00100693          	li	a3,1
    80003640:	000a0593          	mv	a1,s4
    80003644:	fbf40513          	addi	a0,s0,-65
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	9d8080e7          	jalr	-1576(ra) # 80003020 <either_copyin>
    80003650:	fd5518e3          	bne	a0,s5,80003620 <consolewrite+0x40>
    80003654:	04813083          	ld	ra,72(sp)
    80003658:	04013403          	ld	s0,64(sp)
    8000365c:	03813483          	ld	s1,56(sp)
    80003660:	02813983          	ld	s3,40(sp)
    80003664:	02013a03          	ld	s4,32(sp)
    80003668:	01813a83          	ld	s5,24(sp)
    8000366c:	00090513          	mv	a0,s2
    80003670:	03013903          	ld	s2,48(sp)
    80003674:	05010113          	addi	sp,sp,80
    80003678:	00008067          	ret
    8000367c:	00000913          	li	s2,0
    80003680:	fd5ff06f          	j	80003654 <consolewrite+0x74>

0000000080003684 <consoleread>:
    80003684:	f9010113          	addi	sp,sp,-112
    80003688:	06813023          	sd	s0,96(sp)
    8000368c:	04913c23          	sd	s1,88(sp)
    80003690:	05213823          	sd	s2,80(sp)
    80003694:	05313423          	sd	s3,72(sp)
    80003698:	05413023          	sd	s4,64(sp)
    8000369c:	03513c23          	sd	s5,56(sp)
    800036a0:	03613823          	sd	s6,48(sp)
    800036a4:	03713423          	sd	s7,40(sp)
    800036a8:	03813023          	sd	s8,32(sp)
    800036ac:	06113423          	sd	ra,104(sp)
    800036b0:	01913c23          	sd	s9,24(sp)
    800036b4:	07010413          	addi	s0,sp,112
    800036b8:	00060b93          	mv	s7,a2
    800036bc:	00050913          	mv	s2,a0
    800036c0:	00058c13          	mv	s8,a1
    800036c4:	00060b1b          	sext.w	s6,a2
    800036c8:	00003497          	auipc	s1,0x3
    800036cc:	79048493          	addi	s1,s1,1936 # 80006e58 <cons>
    800036d0:	00400993          	li	s3,4
    800036d4:	fff00a13          	li	s4,-1
    800036d8:	00a00a93          	li	s5,10
    800036dc:	05705e63          	blez	s7,80003738 <consoleread+0xb4>
    800036e0:	09c4a703          	lw	a4,156(s1)
    800036e4:	0984a783          	lw	a5,152(s1)
    800036e8:	0007071b          	sext.w	a4,a4
    800036ec:	08e78463          	beq	a5,a4,80003774 <consoleread+0xf0>
    800036f0:	07f7f713          	andi	a4,a5,127
    800036f4:	00e48733          	add	a4,s1,a4
    800036f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800036fc:	0017869b          	addiw	a3,a5,1
    80003700:	08d4ac23          	sw	a3,152(s1)
    80003704:	00070c9b          	sext.w	s9,a4
    80003708:	0b370663          	beq	a4,s3,800037b4 <consoleread+0x130>
    8000370c:	00100693          	li	a3,1
    80003710:	f9f40613          	addi	a2,s0,-97
    80003714:	000c0593          	mv	a1,s8
    80003718:	00090513          	mv	a0,s2
    8000371c:	f8e40fa3          	sb	a4,-97(s0)
    80003720:	00000097          	auipc	ra,0x0
    80003724:	8b4080e7          	jalr	-1868(ra) # 80002fd4 <either_copyout>
    80003728:	01450863          	beq	a0,s4,80003738 <consoleread+0xb4>
    8000372c:	001c0c13          	addi	s8,s8,1
    80003730:	fffb8b9b          	addiw	s7,s7,-1
    80003734:	fb5c94e3          	bne	s9,s5,800036dc <consoleread+0x58>
    80003738:	000b851b          	sext.w	a0,s7
    8000373c:	06813083          	ld	ra,104(sp)
    80003740:	06013403          	ld	s0,96(sp)
    80003744:	05813483          	ld	s1,88(sp)
    80003748:	05013903          	ld	s2,80(sp)
    8000374c:	04813983          	ld	s3,72(sp)
    80003750:	04013a03          	ld	s4,64(sp)
    80003754:	03813a83          	ld	s5,56(sp)
    80003758:	02813b83          	ld	s7,40(sp)
    8000375c:	02013c03          	ld	s8,32(sp)
    80003760:	01813c83          	ld	s9,24(sp)
    80003764:	40ab053b          	subw	a0,s6,a0
    80003768:	03013b03          	ld	s6,48(sp)
    8000376c:	07010113          	addi	sp,sp,112
    80003770:	00008067          	ret
    80003774:	00001097          	auipc	ra,0x1
    80003778:	1d8080e7          	jalr	472(ra) # 8000494c <push_on>
    8000377c:	0984a703          	lw	a4,152(s1)
    80003780:	09c4a783          	lw	a5,156(s1)
    80003784:	0007879b          	sext.w	a5,a5
    80003788:	fef70ce3          	beq	a4,a5,80003780 <consoleread+0xfc>
    8000378c:	00001097          	auipc	ra,0x1
    80003790:	234080e7          	jalr	564(ra) # 800049c0 <pop_on>
    80003794:	0984a783          	lw	a5,152(s1)
    80003798:	07f7f713          	andi	a4,a5,127
    8000379c:	00e48733          	add	a4,s1,a4
    800037a0:	01874703          	lbu	a4,24(a4)
    800037a4:	0017869b          	addiw	a3,a5,1
    800037a8:	08d4ac23          	sw	a3,152(s1)
    800037ac:	00070c9b          	sext.w	s9,a4
    800037b0:	f5371ee3          	bne	a4,s3,8000370c <consoleread+0x88>
    800037b4:	000b851b          	sext.w	a0,s7
    800037b8:	f96bf2e3          	bgeu	s7,s6,8000373c <consoleread+0xb8>
    800037bc:	08f4ac23          	sw	a5,152(s1)
    800037c0:	f7dff06f          	j	8000373c <consoleread+0xb8>

00000000800037c4 <consputc>:
    800037c4:	10000793          	li	a5,256
    800037c8:	00f50663          	beq	a0,a5,800037d4 <consputc+0x10>
    800037cc:	00001317          	auipc	t1,0x1
    800037d0:	9f430067          	jr	-1548(t1) # 800041c0 <uartputc_sync>
    800037d4:	ff010113          	addi	sp,sp,-16
    800037d8:	00113423          	sd	ra,8(sp)
    800037dc:	00813023          	sd	s0,0(sp)
    800037e0:	01010413          	addi	s0,sp,16
    800037e4:	00800513          	li	a0,8
    800037e8:	00001097          	auipc	ra,0x1
    800037ec:	9d8080e7          	jalr	-1576(ra) # 800041c0 <uartputc_sync>
    800037f0:	02000513          	li	a0,32
    800037f4:	00001097          	auipc	ra,0x1
    800037f8:	9cc080e7          	jalr	-1588(ra) # 800041c0 <uartputc_sync>
    800037fc:	00013403          	ld	s0,0(sp)
    80003800:	00813083          	ld	ra,8(sp)
    80003804:	00800513          	li	a0,8
    80003808:	01010113          	addi	sp,sp,16
    8000380c:	00001317          	auipc	t1,0x1
    80003810:	9b430067          	jr	-1612(t1) # 800041c0 <uartputc_sync>

0000000080003814 <consoleintr>:
    80003814:	fe010113          	addi	sp,sp,-32
    80003818:	00813823          	sd	s0,16(sp)
    8000381c:	00913423          	sd	s1,8(sp)
    80003820:	01213023          	sd	s2,0(sp)
    80003824:	00113c23          	sd	ra,24(sp)
    80003828:	02010413          	addi	s0,sp,32
    8000382c:	00003917          	auipc	s2,0x3
    80003830:	62c90913          	addi	s2,s2,1580 # 80006e58 <cons>
    80003834:	00050493          	mv	s1,a0
    80003838:	00090513          	mv	a0,s2
    8000383c:	00001097          	auipc	ra,0x1
    80003840:	e40080e7          	jalr	-448(ra) # 8000467c <acquire>
    80003844:	02048c63          	beqz	s1,8000387c <consoleintr+0x68>
    80003848:	0a092783          	lw	a5,160(s2)
    8000384c:	09892703          	lw	a4,152(s2)
    80003850:	07f00693          	li	a3,127
    80003854:	40e7873b          	subw	a4,a5,a4
    80003858:	02e6e263          	bltu	a3,a4,8000387c <consoleintr+0x68>
    8000385c:	00d00713          	li	a4,13
    80003860:	04e48063          	beq	s1,a4,800038a0 <consoleintr+0x8c>
    80003864:	07f7f713          	andi	a4,a5,127
    80003868:	00e90733          	add	a4,s2,a4
    8000386c:	0017879b          	addiw	a5,a5,1
    80003870:	0af92023          	sw	a5,160(s2)
    80003874:	00970c23          	sb	s1,24(a4)
    80003878:	08f92e23          	sw	a5,156(s2)
    8000387c:	01013403          	ld	s0,16(sp)
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	00813483          	ld	s1,8(sp)
    80003888:	00013903          	ld	s2,0(sp)
    8000388c:	00003517          	auipc	a0,0x3
    80003890:	5cc50513          	addi	a0,a0,1484 # 80006e58 <cons>
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00001317          	auipc	t1,0x1
    8000389c:	eb030067          	jr	-336(t1) # 80004748 <release>
    800038a0:	00a00493          	li	s1,10
    800038a4:	fc1ff06f          	j	80003864 <consoleintr+0x50>

00000000800038a8 <consoleinit>:
    800038a8:	fe010113          	addi	sp,sp,-32
    800038ac:	00113c23          	sd	ra,24(sp)
    800038b0:	00813823          	sd	s0,16(sp)
    800038b4:	00913423          	sd	s1,8(sp)
    800038b8:	02010413          	addi	s0,sp,32
    800038bc:	00003497          	auipc	s1,0x3
    800038c0:	59c48493          	addi	s1,s1,1436 # 80006e58 <cons>
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00002597          	auipc	a1,0x2
    800038cc:	99058593          	addi	a1,a1,-1648 # 80005258 <CONSOLE_STATUS+0x248>
    800038d0:	00001097          	auipc	ra,0x1
    800038d4:	d88080e7          	jalr	-632(ra) # 80004658 <initlock>
    800038d8:	00000097          	auipc	ra,0x0
    800038dc:	7ac080e7          	jalr	1964(ra) # 80004084 <uartinit>
    800038e0:	01813083          	ld	ra,24(sp)
    800038e4:	01013403          	ld	s0,16(sp)
    800038e8:	00000797          	auipc	a5,0x0
    800038ec:	d9c78793          	addi	a5,a5,-612 # 80003684 <consoleread>
    800038f0:	0af4bc23          	sd	a5,184(s1)
    800038f4:	00000797          	auipc	a5,0x0
    800038f8:	cec78793          	addi	a5,a5,-788 # 800035e0 <consolewrite>
    800038fc:	0cf4b023          	sd	a5,192(s1)
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	02010113          	addi	sp,sp,32
    80003908:	00008067          	ret

000000008000390c <console_read>:
    8000390c:	ff010113          	addi	sp,sp,-16
    80003910:	00813423          	sd	s0,8(sp)
    80003914:	01010413          	addi	s0,sp,16
    80003918:	00813403          	ld	s0,8(sp)
    8000391c:	00003317          	auipc	t1,0x3
    80003920:	5f433303          	ld	t1,1524(t1) # 80006f10 <devsw+0x10>
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00030067          	jr	t1

000000008000392c <console_write>:
    8000392c:	ff010113          	addi	sp,sp,-16
    80003930:	00813423          	sd	s0,8(sp)
    80003934:	01010413          	addi	s0,sp,16
    80003938:	00813403          	ld	s0,8(sp)
    8000393c:	00003317          	auipc	t1,0x3
    80003940:	5dc33303          	ld	t1,1500(t1) # 80006f18 <devsw+0x18>
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00030067          	jr	t1

000000008000394c <panic>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00113c23          	sd	ra,24(sp)
    80003954:	00813823          	sd	s0,16(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	00050493          	mv	s1,a0
    80003964:	00002517          	auipc	a0,0x2
    80003968:	8fc50513          	addi	a0,a0,-1796 # 80005260 <CONSOLE_STATUS+0x250>
    8000396c:	00003797          	auipc	a5,0x3
    80003970:	6407a623          	sw	zero,1612(a5) # 80006fb8 <pr+0x18>
    80003974:	00000097          	auipc	ra,0x0
    80003978:	034080e7          	jalr	52(ra) # 800039a8 <__printf>
    8000397c:	00048513          	mv	a0,s1
    80003980:	00000097          	auipc	ra,0x0
    80003984:	028080e7          	jalr	40(ra) # 800039a8 <__printf>
    80003988:	00002517          	auipc	a0,0x2
    8000398c:	8b850513          	addi	a0,a0,-1864 # 80005240 <CONSOLE_STATUS+0x230>
    80003990:	00000097          	auipc	ra,0x0
    80003994:	018080e7          	jalr	24(ra) # 800039a8 <__printf>
    80003998:	00100793          	li	a5,1
    8000399c:	00002717          	auipc	a4,0x2
    800039a0:	14f72e23          	sw	a5,348(a4) # 80005af8 <panicked>
    800039a4:	0000006f          	j	800039a4 <panic+0x58>

00000000800039a8 <__printf>:
    800039a8:	f3010113          	addi	sp,sp,-208
    800039ac:	08813023          	sd	s0,128(sp)
    800039b0:	07313423          	sd	s3,104(sp)
    800039b4:	09010413          	addi	s0,sp,144
    800039b8:	05813023          	sd	s8,64(sp)
    800039bc:	08113423          	sd	ra,136(sp)
    800039c0:	06913c23          	sd	s1,120(sp)
    800039c4:	07213823          	sd	s2,112(sp)
    800039c8:	07413023          	sd	s4,96(sp)
    800039cc:	05513c23          	sd	s5,88(sp)
    800039d0:	05613823          	sd	s6,80(sp)
    800039d4:	05713423          	sd	s7,72(sp)
    800039d8:	03913c23          	sd	s9,56(sp)
    800039dc:	03a13823          	sd	s10,48(sp)
    800039e0:	03b13423          	sd	s11,40(sp)
    800039e4:	00003317          	auipc	t1,0x3
    800039e8:	5bc30313          	addi	t1,t1,1468 # 80006fa0 <pr>
    800039ec:	01832c03          	lw	s8,24(t1)
    800039f0:	00b43423          	sd	a1,8(s0)
    800039f4:	00c43823          	sd	a2,16(s0)
    800039f8:	00d43c23          	sd	a3,24(s0)
    800039fc:	02e43023          	sd	a4,32(s0)
    80003a00:	02f43423          	sd	a5,40(s0)
    80003a04:	03043823          	sd	a6,48(s0)
    80003a08:	03143c23          	sd	a7,56(s0)
    80003a0c:	00050993          	mv	s3,a0
    80003a10:	4a0c1663          	bnez	s8,80003ebc <__printf+0x514>
    80003a14:	60098c63          	beqz	s3,8000402c <__printf+0x684>
    80003a18:	0009c503          	lbu	a0,0(s3)
    80003a1c:	00840793          	addi	a5,s0,8
    80003a20:	f6f43c23          	sd	a5,-136(s0)
    80003a24:	00000493          	li	s1,0
    80003a28:	22050063          	beqz	a0,80003c48 <__printf+0x2a0>
    80003a2c:	00002a37          	lui	s4,0x2
    80003a30:	00018ab7          	lui	s5,0x18
    80003a34:	000f4b37          	lui	s6,0xf4
    80003a38:	00989bb7          	lui	s7,0x989
    80003a3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003a40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003a44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003a48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003a4c:	00148c9b          	addiw	s9,s1,1
    80003a50:	02500793          	li	a5,37
    80003a54:	01998933          	add	s2,s3,s9
    80003a58:	38f51263          	bne	a0,a5,80003ddc <__printf+0x434>
    80003a5c:	00094783          	lbu	a5,0(s2)
    80003a60:	00078c9b          	sext.w	s9,a5
    80003a64:	1e078263          	beqz	a5,80003c48 <__printf+0x2a0>
    80003a68:	0024849b          	addiw	s1,s1,2
    80003a6c:	07000713          	li	a4,112
    80003a70:	00998933          	add	s2,s3,s1
    80003a74:	38e78a63          	beq	a5,a4,80003e08 <__printf+0x460>
    80003a78:	20f76863          	bltu	a4,a5,80003c88 <__printf+0x2e0>
    80003a7c:	42a78863          	beq	a5,a0,80003eac <__printf+0x504>
    80003a80:	06400713          	li	a4,100
    80003a84:	40e79663          	bne	a5,a4,80003e90 <__printf+0x4e8>
    80003a88:	f7843783          	ld	a5,-136(s0)
    80003a8c:	0007a603          	lw	a2,0(a5)
    80003a90:	00878793          	addi	a5,a5,8
    80003a94:	f6f43c23          	sd	a5,-136(s0)
    80003a98:	42064a63          	bltz	a2,80003ecc <__printf+0x524>
    80003a9c:	00a00713          	li	a4,10
    80003aa0:	02e677bb          	remuw	a5,a2,a4
    80003aa4:	00001d97          	auipc	s11,0x1
    80003aa8:	7e4d8d93          	addi	s11,s11,2020 # 80005288 <digits>
    80003aac:	00900593          	li	a1,9
    80003ab0:	0006051b          	sext.w	a0,a2
    80003ab4:	00000c93          	li	s9,0
    80003ab8:	02079793          	slli	a5,a5,0x20
    80003abc:	0207d793          	srli	a5,a5,0x20
    80003ac0:	00fd87b3          	add	a5,s11,a5
    80003ac4:	0007c783          	lbu	a5,0(a5)
    80003ac8:	02e656bb          	divuw	a3,a2,a4
    80003acc:	f8f40023          	sb	a5,-128(s0)
    80003ad0:	14c5d863          	bge	a1,a2,80003c20 <__printf+0x278>
    80003ad4:	06300593          	li	a1,99
    80003ad8:	00100c93          	li	s9,1
    80003adc:	02e6f7bb          	remuw	a5,a3,a4
    80003ae0:	02079793          	slli	a5,a5,0x20
    80003ae4:	0207d793          	srli	a5,a5,0x20
    80003ae8:	00fd87b3          	add	a5,s11,a5
    80003aec:	0007c783          	lbu	a5,0(a5)
    80003af0:	02e6d73b          	divuw	a4,a3,a4
    80003af4:	f8f400a3          	sb	a5,-127(s0)
    80003af8:	12a5f463          	bgeu	a1,a0,80003c20 <__printf+0x278>
    80003afc:	00a00693          	li	a3,10
    80003b00:	00900593          	li	a1,9
    80003b04:	02d777bb          	remuw	a5,a4,a3
    80003b08:	02079793          	slli	a5,a5,0x20
    80003b0c:	0207d793          	srli	a5,a5,0x20
    80003b10:	00fd87b3          	add	a5,s11,a5
    80003b14:	0007c503          	lbu	a0,0(a5)
    80003b18:	02d757bb          	divuw	a5,a4,a3
    80003b1c:	f8a40123          	sb	a0,-126(s0)
    80003b20:	48e5f263          	bgeu	a1,a4,80003fa4 <__printf+0x5fc>
    80003b24:	06300513          	li	a0,99
    80003b28:	02d7f5bb          	remuw	a1,a5,a3
    80003b2c:	02059593          	slli	a1,a1,0x20
    80003b30:	0205d593          	srli	a1,a1,0x20
    80003b34:	00bd85b3          	add	a1,s11,a1
    80003b38:	0005c583          	lbu	a1,0(a1)
    80003b3c:	02d7d7bb          	divuw	a5,a5,a3
    80003b40:	f8b401a3          	sb	a1,-125(s0)
    80003b44:	48e57263          	bgeu	a0,a4,80003fc8 <__printf+0x620>
    80003b48:	3e700513          	li	a0,999
    80003b4c:	02d7f5bb          	remuw	a1,a5,a3
    80003b50:	02059593          	slli	a1,a1,0x20
    80003b54:	0205d593          	srli	a1,a1,0x20
    80003b58:	00bd85b3          	add	a1,s11,a1
    80003b5c:	0005c583          	lbu	a1,0(a1)
    80003b60:	02d7d7bb          	divuw	a5,a5,a3
    80003b64:	f8b40223          	sb	a1,-124(s0)
    80003b68:	46e57663          	bgeu	a0,a4,80003fd4 <__printf+0x62c>
    80003b6c:	02d7f5bb          	remuw	a1,a5,a3
    80003b70:	02059593          	slli	a1,a1,0x20
    80003b74:	0205d593          	srli	a1,a1,0x20
    80003b78:	00bd85b3          	add	a1,s11,a1
    80003b7c:	0005c583          	lbu	a1,0(a1)
    80003b80:	02d7d7bb          	divuw	a5,a5,a3
    80003b84:	f8b402a3          	sb	a1,-123(s0)
    80003b88:	46ea7863          	bgeu	s4,a4,80003ff8 <__printf+0x650>
    80003b8c:	02d7f5bb          	remuw	a1,a5,a3
    80003b90:	02059593          	slli	a1,a1,0x20
    80003b94:	0205d593          	srli	a1,a1,0x20
    80003b98:	00bd85b3          	add	a1,s11,a1
    80003b9c:	0005c583          	lbu	a1,0(a1)
    80003ba0:	02d7d7bb          	divuw	a5,a5,a3
    80003ba4:	f8b40323          	sb	a1,-122(s0)
    80003ba8:	3eeaf863          	bgeu	s5,a4,80003f98 <__printf+0x5f0>
    80003bac:	02d7f5bb          	remuw	a1,a5,a3
    80003bb0:	02059593          	slli	a1,a1,0x20
    80003bb4:	0205d593          	srli	a1,a1,0x20
    80003bb8:	00bd85b3          	add	a1,s11,a1
    80003bbc:	0005c583          	lbu	a1,0(a1)
    80003bc0:	02d7d7bb          	divuw	a5,a5,a3
    80003bc4:	f8b403a3          	sb	a1,-121(s0)
    80003bc8:	42eb7e63          	bgeu	s6,a4,80004004 <__printf+0x65c>
    80003bcc:	02d7f5bb          	remuw	a1,a5,a3
    80003bd0:	02059593          	slli	a1,a1,0x20
    80003bd4:	0205d593          	srli	a1,a1,0x20
    80003bd8:	00bd85b3          	add	a1,s11,a1
    80003bdc:	0005c583          	lbu	a1,0(a1)
    80003be0:	02d7d7bb          	divuw	a5,a5,a3
    80003be4:	f8b40423          	sb	a1,-120(s0)
    80003be8:	42ebfc63          	bgeu	s7,a4,80004020 <__printf+0x678>
    80003bec:	02079793          	slli	a5,a5,0x20
    80003bf0:	0207d793          	srli	a5,a5,0x20
    80003bf4:	00fd8db3          	add	s11,s11,a5
    80003bf8:	000dc703          	lbu	a4,0(s11)
    80003bfc:	00a00793          	li	a5,10
    80003c00:	00900c93          	li	s9,9
    80003c04:	f8e404a3          	sb	a4,-119(s0)
    80003c08:	00065c63          	bgez	a2,80003c20 <__printf+0x278>
    80003c0c:	f9040713          	addi	a4,s0,-112
    80003c10:	00f70733          	add	a4,a4,a5
    80003c14:	02d00693          	li	a3,45
    80003c18:	fed70823          	sb	a3,-16(a4)
    80003c1c:	00078c93          	mv	s9,a5
    80003c20:	f8040793          	addi	a5,s0,-128
    80003c24:	01978cb3          	add	s9,a5,s9
    80003c28:	f7f40d13          	addi	s10,s0,-129
    80003c2c:	000cc503          	lbu	a0,0(s9)
    80003c30:	fffc8c93          	addi	s9,s9,-1
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	b90080e7          	jalr	-1136(ra) # 800037c4 <consputc>
    80003c3c:	ffac98e3          	bne	s9,s10,80003c2c <__printf+0x284>
    80003c40:	00094503          	lbu	a0,0(s2)
    80003c44:	e00514e3          	bnez	a0,80003a4c <__printf+0xa4>
    80003c48:	1a0c1663          	bnez	s8,80003df4 <__printf+0x44c>
    80003c4c:	08813083          	ld	ra,136(sp)
    80003c50:	08013403          	ld	s0,128(sp)
    80003c54:	07813483          	ld	s1,120(sp)
    80003c58:	07013903          	ld	s2,112(sp)
    80003c5c:	06813983          	ld	s3,104(sp)
    80003c60:	06013a03          	ld	s4,96(sp)
    80003c64:	05813a83          	ld	s5,88(sp)
    80003c68:	05013b03          	ld	s6,80(sp)
    80003c6c:	04813b83          	ld	s7,72(sp)
    80003c70:	04013c03          	ld	s8,64(sp)
    80003c74:	03813c83          	ld	s9,56(sp)
    80003c78:	03013d03          	ld	s10,48(sp)
    80003c7c:	02813d83          	ld	s11,40(sp)
    80003c80:	0d010113          	addi	sp,sp,208
    80003c84:	00008067          	ret
    80003c88:	07300713          	li	a4,115
    80003c8c:	1ce78a63          	beq	a5,a4,80003e60 <__printf+0x4b8>
    80003c90:	07800713          	li	a4,120
    80003c94:	1ee79e63          	bne	a5,a4,80003e90 <__printf+0x4e8>
    80003c98:	f7843783          	ld	a5,-136(s0)
    80003c9c:	0007a703          	lw	a4,0(a5)
    80003ca0:	00878793          	addi	a5,a5,8
    80003ca4:	f6f43c23          	sd	a5,-136(s0)
    80003ca8:	28074263          	bltz	a4,80003f2c <__printf+0x584>
    80003cac:	00001d97          	auipc	s11,0x1
    80003cb0:	5dcd8d93          	addi	s11,s11,1500 # 80005288 <digits>
    80003cb4:	00f77793          	andi	a5,a4,15
    80003cb8:	00fd87b3          	add	a5,s11,a5
    80003cbc:	0007c683          	lbu	a3,0(a5)
    80003cc0:	00f00613          	li	a2,15
    80003cc4:	0007079b          	sext.w	a5,a4
    80003cc8:	f8d40023          	sb	a3,-128(s0)
    80003ccc:	0047559b          	srliw	a1,a4,0x4
    80003cd0:	0047569b          	srliw	a3,a4,0x4
    80003cd4:	00000c93          	li	s9,0
    80003cd8:	0ee65063          	bge	a2,a4,80003db8 <__printf+0x410>
    80003cdc:	00f6f693          	andi	a3,a3,15
    80003ce0:	00dd86b3          	add	a3,s11,a3
    80003ce4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003ce8:	0087d79b          	srliw	a5,a5,0x8
    80003cec:	00100c93          	li	s9,1
    80003cf0:	f8d400a3          	sb	a3,-127(s0)
    80003cf4:	0cb67263          	bgeu	a2,a1,80003db8 <__printf+0x410>
    80003cf8:	00f7f693          	andi	a3,a5,15
    80003cfc:	00dd86b3          	add	a3,s11,a3
    80003d00:	0006c583          	lbu	a1,0(a3)
    80003d04:	00f00613          	li	a2,15
    80003d08:	0047d69b          	srliw	a3,a5,0x4
    80003d0c:	f8b40123          	sb	a1,-126(s0)
    80003d10:	0047d593          	srli	a1,a5,0x4
    80003d14:	28f67e63          	bgeu	a2,a5,80003fb0 <__printf+0x608>
    80003d18:	00f6f693          	andi	a3,a3,15
    80003d1c:	00dd86b3          	add	a3,s11,a3
    80003d20:	0006c503          	lbu	a0,0(a3)
    80003d24:	0087d813          	srli	a6,a5,0x8
    80003d28:	0087d69b          	srliw	a3,a5,0x8
    80003d2c:	f8a401a3          	sb	a0,-125(s0)
    80003d30:	28b67663          	bgeu	a2,a1,80003fbc <__printf+0x614>
    80003d34:	00f6f693          	andi	a3,a3,15
    80003d38:	00dd86b3          	add	a3,s11,a3
    80003d3c:	0006c583          	lbu	a1,0(a3)
    80003d40:	00c7d513          	srli	a0,a5,0xc
    80003d44:	00c7d69b          	srliw	a3,a5,0xc
    80003d48:	f8b40223          	sb	a1,-124(s0)
    80003d4c:	29067a63          	bgeu	a2,a6,80003fe0 <__printf+0x638>
    80003d50:	00f6f693          	andi	a3,a3,15
    80003d54:	00dd86b3          	add	a3,s11,a3
    80003d58:	0006c583          	lbu	a1,0(a3)
    80003d5c:	0107d813          	srli	a6,a5,0x10
    80003d60:	0107d69b          	srliw	a3,a5,0x10
    80003d64:	f8b402a3          	sb	a1,-123(s0)
    80003d68:	28a67263          	bgeu	a2,a0,80003fec <__printf+0x644>
    80003d6c:	00f6f693          	andi	a3,a3,15
    80003d70:	00dd86b3          	add	a3,s11,a3
    80003d74:	0006c683          	lbu	a3,0(a3)
    80003d78:	0147d79b          	srliw	a5,a5,0x14
    80003d7c:	f8d40323          	sb	a3,-122(s0)
    80003d80:	21067663          	bgeu	a2,a6,80003f8c <__printf+0x5e4>
    80003d84:	02079793          	slli	a5,a5,0x20
    80003d88:	0207d793          	srli	a5,a5,0x20
    80003d8c:	00fd8db3          	add	s11,s11,a5
    80003d90:	000dc683          	lbu	a3,0(s11)
    80003d94:	00800793          	li	a5,8
    80003d98:	00700c93          	li	s9,7
    80003d9c:	f8d403a3          	sb	a3,-121(s0)
    80003da0:	00075c63          	bgez	a4,80003db8 <__printf+0x410>
    80003da4:	f9040713          	addi	a4,s0,-112
    80003da8:	00f70733          	add	a4,a4,a5
    80003dac:	02d00693          	li	a3,45
    80003db0:	fed70823          	sb	a3,-16(a4)
    80003db4:	00078c93          	mv	s9,a5
    80003db8:	f8040793          	addi	a5,s0,-128
    80003dbc:	01978cb3          	add	s9,a5,s9
    80003dc0:	f7f40d13          	addi	s10,s0,-129
    80003dc4:	000cc503          	lbu	a0,0(s9)
    80003dc8:	fffc8c93          	addi	s9,s9,-1
    80003dcc:	00000097          	auipc	ra,0x0
    80003dd0:	9f8080e7          	jalr	-1544(ra) # 800037c4 <consputc>
    80003dd4:	ff9d18e3          	bne	s10,s9,80003dc4 <__printf+0x41c>
    80003dd8:	0100006f          	j	80003de8 <__printf+0x440>
    80003ddc:	00000097          	auipc	ra,0x0
    80003de0:	9e8080e7          	jalr	-1560(ra) # 800037c4 <consputc>
    80003de4:	000c8493          	mv	s1,s9
    80003de8:	00094503          	lbu	a0,0(s2)
    80003dec:	c60510e3          	bnez	a0,80003a4c <__printf+0xa4>
    80003df0:	e40c0ee3          	beqz	s8,80003c4c <__printf+0x2a4>
    80003df4:	00003517          	auipc	a0,0x3
    80003df8:	1ac50513          	addi	a0,a0,428 # 80006fa0 <pr>
    80003dfc:	00001097          	auipc	ra,0x1
    80003e00:	94c080e7          	jalr	-1716(ra) # 80004748 <release>
    80003e04:	e49ff06f          	j	80003c4c <__printf+0x2a4>
    80003e08:	f7843783          	ld	a5,-136(s0)
    80003e0c:	03000513          	li	a0,48
    80003e10:	01000d13          	li	s10,16
    80003e14:	00878713          	addi	a4,a5,8
    80003e18:	0007bc83          	ld	s9,0(a5)
    80003e1c:	f6e43c23          	sd	a4,-136(s0)
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	9a4080e7          	jalr	-1628(ra) # 800037c4 <consputc>
    80003e28:	07800513          	li	a0,120
    80003e2c:	00000097          	auipc	ra,0x0
    80003e30:	998080e7          	jalr	-1640(ra) # 800037c4 <consputc>
    80003e34:	00001d97          	auipc	s11,0x1
    80003e38:	454d8d93          	addi	s11,s11,1108 # 80005288 <digits>
    80003e3c:	03ccd793          	srli	a5,s9,0x3c
    80003e40:	00fd87b3          	add	a5,s11,a5
    80003e44:	0007c503          	lbu	a0,0(a5)
    80003e48:	fffd0d1b          	addiw	s10,s10,-1
    80003e4c:	004c9c93          	slli	s9,s9,0x4
    80003e50:	00000097          	auipc	ra,0x0
    80003e54:	974080e7          	jalr	-1676(ra) # 800037c4 <consputc>
    80003e58:	fe0d12e3          	bnez	s10,80003e3c <__printf+0x494>
    80003e5c:	f8dff06f          	j	80003de8 <__printf+0x440>
    80003e60:	f7843783          	ld	a5,-136(s0)
    80003e64:	0007bc83          	ld	s9,0(a5)
    80003e68:	00878793          	addi	a5,a5,8
    80003e6c:	f6f43c23          	sd	a5,-136(s0)
    80003e70:	000c9a63          	bnez	s9,80003e84 <__printf+0x4dc>
    80003e74:	1080006f          	j	80003f7c <__printf+0x5d4>
    80003e78:	001c8c93          	addi	s9,s9,1
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	948080e7          	jalr	-1720(ra) # 800037c4 <consputc>
    80003e84:	000cc503          	lbu	a0,0(s9)
    80003e88:	fe0518e3          	bnez	a0,80003e78 <__printf+0x4d0>
    80003e8c:	f5dff06f          	j	80003de8 <__printf+0x440>
    80003e90:	02500513          	li	a0,37
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	930080e7          	jalr	-1744(ra) # 800037c4 <consputc>
    80003e9c:	000c8513          	mv	a0,s9
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	924080e7          	jalr	-1756(ra) # 800037c4 <consputc>
    80003ea8:	f41ff06f          	j	80003de8 <__printf+0x440>
    80003eac:	02500513          	li	a0,37
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	914080e7          	jalr	-1772(ra) # 800037c4 <consputc>
    80003eb8:	f31ff06f          	j	80003de8 <__printf+0x440>
    80003ebc:	00030513          	mv	a0,t1
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	7bc080e7          	jalr	1980(ra) # 8000467c <acquire>
    80003ec8:	b4dff06f          	j	80003a14 <__printf+0x6c>
    80003ecc:	40c0053b          	negw	a0,a2
    80003ed0:	00a00713          	li	a4,10
    80003ed4:	02e576bb          	remuw	a3,a0,a4
    80003ed8:	00001d97          	auipc	s11,0x1
    80003edc:	3b0d8d93          	addi	s11,s11,944 # 80005288 <digits>
    80003ee0:	ff700593          	li	a1,-9
    80003ee4:	02069693          	slli	a3,a3,0x20
    80003ee8:	0206d693          	srli	a3,a3,0x20
    80003eec:	00dd86b3          	add	a3,s11,a3
    80003ef0:	0006c683          	lbu	a3,0(a3)
    80003ef4:	02e557bb          	divuw	a5,a0,a4
    80003ef8:	f8d40023          	sb	a3,-128(s0)
    80003efc:	10b65e63          	bge	a2,a1,80004018 <__printf+0x670>
    80003f00:	06300593          	li	a1,99
    80003f04:	02e7f6bb          	remuw	a3,a5,a4
    80003f08:	02069693          	slli	a3,a3,0x20
    80003f0c:	0206d693          	srli	a3,a3,0x20
    80003f10:	00dd86b3          	add	a3,s11,a3
    80003f14:	0006c683          	lbu	a3,0(a3)
    80003f18:	02e7d73b          	divuw	a4,a5,a4
    80003f1c:	00200793          	li	a5,2
    80003f20:	f8d400a3          	sb	a3,-127(s0)
    80003f24:	bca5ece3          	bltu	a1,a0,80003afc <__printf+0x154>
    80003f28:	ce5ff06f          	j	80003c0c <__printf+0x264>
    80003f2c:	40e007bb          	negw	a5,a4
    80003f30:	00001d97          	auipc	s11,0x1
    80003f34:	358d8d93          	addi	s11,s11,856 # 80005288 <digits>
    80003f38:	00f7f693          	andi	a3,a5,15
    80003f3c:	00dd86b3          	add	a3,s11,a3
    80003f40:	0006c583          	lbu	a1,0(a3)
    80003f44:	ff100613          	li	a2,-15
    80003f48:	0047d69b          	srliw	a3,a5,0x4
    80003f4c:	f8b40023          	sb	a1,-128(s0)
    80003f50:	0047d59b          	srliw	a1,a5,0x4
    80003f54:	0ac75e63          	bge	a4,a2,80004010 <__printf+0x668>
    80003f58:	00f6f693          	andi	a3,a3,15
    80003f5c:	00dd86b3          	add	a3,s11,a3
    80003f60:	0006c603          	lbu	a2,0(a3)
    80003f64:	00f00693          	li	a3,15
    80003f68:	0087d79b          	srliw	a5,a5,0x8
    80003f6c:	f8c400a3          	sb	a2,-127(s0)
    80003f70:	d8b6e4e3          	bltu	a3,a1,80003cf8 <__printf+0x350>
    80003f74:	00200793          	li	a5,2
    80003f78:	e2dff06f          	j	80003da4 <__printf+0x3fc>
    80003f7c:	00001c97          	auipc	s9,0x1
    80003f80:	2ecc8c93          	addi	s9,s9,748 # 80005268 <CONSOLE_STATUS+0x258>
    80003f84:	02800513          	li	a0,40
    80003f88:	ef1ff06f          	j	80003e78 <__printf+0x4d0>
    80003f8c:	00700793          	li	a5,7
    80003f90:	00600c93          	li	s9,6
    80003f94:	e0dff06f          	j	80003da0 <__printf+0x3f8>
    80003f98:	00700793          	li	a5,7
    80003f9c:	00600c93          	li	s9,6
    80003fa0:	c69ff06f          	j	80003c08 <__printf+0x260>
    80003fa4:	00300793          	li	a5,3
    80003fa8:	00200c93          	li	s9,2
    80003fac:	c5dff06f          	j	80003c08 <__printf+0x260>
    80003fb0:	00300793          	li	a5,3
    80003fb4:	00200c93          	li	s9,2
    80003fb8:	de9ff06f          	j	80003da0 <__printf+0x3f8>
    80003fbc:	00400793          	li	a5,4
    80003fc0:	00300c93          	li	s9,3
    80003fc4:	dddff06f          	j	80003da0 <__printf+0x3f8>
    80003fc8:	00400793          	li	a5,4
    80003fcc:	00300c93          	li	s9,3
    80003fd0:	c39ff06f          	j	80003c08 <__printf+0x260>
    80003fd4:	00500793          	li	a5,5
    80003fd8:	00400c93          	li	s9,4
    80003fdc:	c2dff06f          	j	80003c08 <__printf+0x260>
    80003fe0:	00500793          	li	a5,5
    80003fe4:	00400c93          	li	s9,4
    80003fe8:	db9ff06f          	j	80003da0 <__printf+0x3f8>
    80003fec:	00600793          	li	a5,6
    80003ff0:	00500c93          	li	s9,5
    80003ff4:	dadff06f          	j	80003da0 <__printf+0x3f8>
    80003ff8:	00600793          	li	a5,6
    80003ffc:	00500c93          	li	s9,5
    80004000:	c09ff06f          	j	80003c08 <__printf+0x260>
    80004004:	00800793          	li	a5,8
    80004008:	00700c93          	li	s9,7
    8000400c:	bfdff06f          	j	80003c08 <__printf+0x260>
    80004010:	00100793          	li	a5,1
    80004014:	d91ff06f          	j	80003da4 <__printf+0x3fc>
    80004018:	00100793          	li	a5,1
    8000401c:	bf1ff06f          	j	80003c0c <__printf+0x264>
    80004020:	00900793          	li	a5,9
    80004024:	00800c93          	li	s9,8
    80004028:	be1ff06f          	j	80003c08 <__printf+0x260>
    8000402c:	00001517          	auipc	a0,0x1
    80004030:	24450513          	addi	a0,a0,580 # 80005270 <CONSOLE_STATUS+0x260>
    80004034:	00000097          	auipc	ra,0x0
    80004038:	918080e7          	jalr	-1768(ra) # 8000394c <panic>

000000008000403c <printfinit>:
    8000403c:	fe010113          	addi	sp,sp,-32
    80004040:	00813823          	sd	s0,16(sp)
    80004044:	00913423          	sd	s1,8(sp)
    80004048:	00113c23          	sd	ra,24(sp)
    8000404c:	02010413          	addi	s0,sp,32
    80004050:	00003497          	auipc	s1,0x3
    80004054:	f5048493          	addi	s1,s1,-176 # 80006fa0 <pr>
    80004058:	00048513          	mv	a0,s1
    8000405c:	00001597          	auipc	a1,0x1
    80004060:	22458593          	addi	a1,a1,548 # 80005280 <CONSOLE_STATUS+0x270>
    80004064:	00000097          	auipc	ra,0x0
    80004068:	5f4080e7          	jalr	1524(ra) # 80004658 <initlock>
    8000406c:	01813083          	ld	ra,24(sp)
    80004070:	01013403          	ld	s0,16(sp)
    80004074:	0004ac23          	sw	zero,24(s1)
    80004078:	00813483          	ld	s1,8(sp)
    8000407c:	02010113          	addi	sp,sp,32
    80004080:	00008067          	ret

0000000080004084 <uartinit>:
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00813423          	sd	s0,8(sp)
    8000408c:	01010413          	addi	s0,sp,16
    80004090:	100007b7          	lui	a5,0x10000
    80004094:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004098:	f8000713          	li	a4,-128
    8000409c:	00e781a3          	sb	a4,3(a5)
    800040a0:	00300713          	li	a4,3
    800040a4:	00e78023          	sb	a4,0(a5)
    800040a8:	000780a3          	sb	zero,1(a5)
    800040ac:	00e781a3          	sb	a4,3(a5)
    800040b0:	00700693          	li	a3,7
    800040b4:	00d78123          	sb	a3,2(a5)
    800040b8:	00e780a3          	sb	a4,1(a5)
    800040bc:	00813403          	ld	s0,8(sp)
    800040c0:	01010113          	addi	sp,sp,16
    800040c4:	00008067          	ret

00000000800040c8 <uartputc>:
    800040c8:	00002797          	auipc	a5,0x2
    800040cc:	a307a783          	lw	a5,-1488(a5) # 80005af8 <panicked>
    800040d0:	00078463          	beqz	a5,800040d8 <uartputc+0x10>
    800040d4:	0000006f          	j	800040d4 <uartputc+0xc>
    800040d8:	fd010113          	addi	sp,sp,-48
    800040dc:	02813023          	sd	s0,32(sp)
    800040e0:	00913c23          	sd	s1,24(sp)
    800040e4:	01213823          	sd	s2,16(sp)
    800040e8:	01313423          	sd	s3,8(sp)
    800040ec:	02113423          	sd	ra,40(sp)
    800040f0:	03010413          	addi	s0,sp,48
    800040f4:	00002917          	auipc	s2,0x2
    800040f8:	a0c90913          	addi	s2,s2,-1524 # 80005b00 <uart_tx_r>
    800040fc:	00093783          	ld	a5,0(s2)
    80004100:	00002497          	auipc	s1,0x2
    80004104:	a0848493          	addi	s1,s1,-1528 # 80005b08 <uart_tx_w>
    80004108:	0004b703          	ld	a4,0(s1)
    8000410c:	02078693          	addi	a3,a5,32
    80004110:	00050993          	mv	s3,a0
    80004114:	02e69c63          	bne	a3,a4,8000414c <uartputc+0x84>
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	834080e7          	jalr	-1996(ra) # 8000494c <push_on>
    80004120:	00093783          	ld	a5,0(s2)
    80004124:	0004b703          	ld	a4,0(s1)
    80004128:	02078793          	addi	a5,a5,32
    8000412c:	00e79463          	bne	a5,a4,80004134 <uartputc+0x6c>
    80004130:	0000006f          	j	80004130 <uartputc+0x68>
    80004134:	00001097          	auipc	ra,0x1
    80004138:	88c080e7          	jalr	-1908(ra) # 800049c0 <pop_on>
    8000413c:	00093783          	ld	a5,0(s2)
    80004140:	0004b703          	ld	a4,0(s1)
    80004144:	02078693          	addi	a3,a5,32
    80004148:	fce688e3          	beq	a3,a4,80004118 <uartputc+0x50>
    8000414c:	01f77693          	andi	a3,a4,31
    80004150:	00003597          	auipc	a1,0x3
    80004154:	e7058593          	addi	a1,a1,-400 # 80006fc0 <uart_tx_buf>
    80004158:	00d586b3          	add	a3,a1,a3
    8000415c:	00170713          	addi	a4,a4,1
    80004160:	01368023          	sb	s3,0(a3)
    80004164:	00e4b023          	sd	a4,0(s1)
    80004168:	10000637          	lui	a2,0x10000
    8000416c:	02f71063          	bne	a4,a5,8000418c <uartputc+0xc4>
    80004170:	0340006f          	j	800041a4 <uartputc+0xdc>
    80004174:	00074703          	lbu	a4,0(a4)
    80004178:	00f93023          	sd	a5,0(s2)
    8000417c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004180:	00093783          	ld	a5,0(s2)
    80004184:	0004b703          	ld	a4,0(s1)
    80004188:	00f70e63          	beq	a4,a5,800041a4 <uartputc+0xdc>
    8000418c:	00564683          	lbu	a3,5(a2)
    80004190:	01f7f713          	andi	a4,a5,31
    80004194:	00e58733          	add	a4,a1,a4
    80004198:	0206f693          	andi	a3,a3,32
    8000419c:	00178793          	addi	a5,a5,1
    800041a0:	fc069ae3          	bnez	a3,80004174 <uartputc+0xac>
    800041a4:	02813083          	ld	ra,40(sp)
    800041a8:	02013403          	ld	s0,32(sp)
    800041ac:	01813483          	ld	s1,24(sp)
    800041b0:	01013903          	ld	s2,16(sp)
    800041b4:	00813983          	ld	s3,8(sp)
    800041b8:	03010113          	addi	sp,sp,48
    800041bc:	00008067          	ret

00000000800041c0 <uartputc_sync>:
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00813423          	sd	s0,8(sp)
    800041c8:	01010413          	addi	s0,sp,16
    800041cc:	00002717          	auipc	a4,0x2
    800041d0:	92c72703          	lw	a4,-1748(a4) # 80005af8 <panicked>
    800041d4:	02071663          	bnez	a4,80004200 <uartputc_sync+0x40>
    800041d8:	00050793          	mv	a5,a0
    800041dc:	100006b7          	lui	a3,0x10000
    800041e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800041e4:	02077713          	andi	a4,a4,32
    800041e8:	fe070ce3          	beqz	a4,800041e0 <uartputc_sync+0x20>
    800041ec:	0ff7f793          	andi	a5,a5,255
    800041f0:	00f68023          	sb	a5,0(a3)
    800041f4:	00813403          	ld	s0,8(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret
    80004200:	0000006f          	j	80004200 <uartputc_sync+0x40>

0000000080004204 <uartstart>:
    80004204:	ff010113          	addi	sp,sp,-16
    80004208:	00813423          	sd	s0,8(sp)
    8000420c:	01010413          	addi	s0,sp,16
    80004210:	00002617          	auipc	a2,0x2
    80004214:	8f060613          	addi	a2,a2,-1808 # 80005b00 <uart_tx_r>
    80004218:	00002517          	auipc	a0,0x2
    8000421c:	8f050513          	addi	a0,a0,-1808 # 80005b08 <uart_tx_w>
    80004220:	00063783          	ld	a5,0(a2)
    80004224:	00053703          	ld	a4,0(a0)
    80004228:	04f70263          	beq	a4,a5,8000426c <uartstart+0x68>
    8000422c:	100005b7          	lui	a1,0x10000
    80004230:	00003817          	auipc	a6,0x3
    80004234:	d9080813          	addi	a6,a6,-624 # 80006fc0 <uart_tx_buf>
    80004238:	01c0006f          	j	80004254 <uartstart+0x50>
    8000423c:	0006c703          	lbu	a4,0(a3)
    80004240:	00f63023          	sd	a5,0(a2)
    80004244:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004248:	00063783          	ld	a5,0(a2)
    8000424c:	00053703          	ld	a4,0(a0)
    80004250:	00f70e63          	beq	a4,a5,8000426c <uartstart+0x68>
    80004254:	01f7f713          	andi	a4,a5,31
    80004258:	00e806b3          	add	a3,a6,a4
    8000425c:	0055c703          	lbu	a4,5(a1)
    80004260:	00178793          	addi	a5,a5,1
    80004264:	02077713          	andi	a4,a4,32
    80004268:	fc071ae3          	bnez	a4,8000423c <uartstart+0x38>
    8000426c:	00813403          	ld	s0,8(sp)
    80004270:	01010113          	addi	sp,sp,16
    80004274:	00008067          	ret

0000000080004278 <uartgetc>:
    80004278:	ff010113          	addi	sp,sp,-16
    8000427c:	00813423          	sd	s0,8(sp)
    80004280:	01010413          	addi	s0,sp,16
    80004284:	10000737          	lui	a4,0x10000
    80004288:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000428c:	0017f793          	andi	a5,a5,1
    80004290:	00078c63          	beqz	a5,800042a8 <uartgetc+0x30>
    80004294:	00074503          	lbu	a0,0(a4)
    80004298:	0ff57513          	andi	a0,a0,255
    8000429c:	00813403          	ld	s0,8(sp)
    800042a0:	01010113          	addi	sp,sp,16
    800042a4:	00008067          	ret
    800042a8:	fff00513          	li	a0,-1
    800042ac:	ff1ff06f          	j	8000429c <uartgetc+0x24>

00000000800042b0 <uartintr>:
    800042b0:	100007b7          	lui	a5,0x10000
    800042b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800042b8:	0017f793          	andi	a5,a5,1
    800042bc:	0a078463          	beqz	a5,80004364 <uartintr+0xb4>
    800042c0:	fe010113          	addi	sp,sp,-32
    800042c4:	00813823          	sd	s0,16(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	00113c23          	sd	ra,24(sp)
    800042d0:	02010413          	addi	s0,sp,32
    800042d4:	100004b7          	lui	s1,0x10000
    800042d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800042dc:	0ff57513          	andi	a0,a0,255
    800042e0:	fffff097          	auipc	ra,0xfffff
    800042e4:	534080e7          	jalr	1332(ra) # 80003814 <consoleintr>
    800042e8:	0054c783          	lbu	a5,5(s1)
    800042ec:	0017f793          	andi	a5,a5,1
    800042f0:	fe0794e3          	bnez	a5,800042d8 <uartintr+0x28>
    800042f4:	00002617          	auipc	a2,0x2
    800042f8:	80c60613          	addi	a2,a2,-2036 # 80005b00 <uart_tx_r>
    800042fc:	00002517          	auipc	a0,0x2
    80004300:	80c50513          	addi	a0,a0,-2036 # 80005b08 <uart_tx_w>
    80004304:	00063783          	ld	a5,0(a2)
    80004308:	00053703          	ld	a4,0(a0)
    8000430c:	04f70263          	beq	a4,a5,80004350 <uartintr+0xa0>
    80004310:	100005b7          	lui	a1,0x10000
    80004314:	00003817          	auipc	a6,0x3
    80004318:	cac80813          	addi	a6,a6,-852 # 80006fc0 <uart_tx_buf>
    8000431c:	01c0006f          	j	80004338 <uartintr+0x88>
    80004320:	0006c703          	lbu	a4,0(a3)
    80004324:	00f63023          	sd	a5,0(a2)
    80004328:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000432c:	00063783          	ld	a5,0(a2)
    80004330:	00053703          	ld	a4,0(a0)
    80004334:	00f70e63          	beq	a4,a5,80004350 <uartintr+0xa0>
    80004338:	01f7f713          	andi	a4,a5,31
    8000433c:	00e806b3          	add	a3,a6,a4
    80004340:	0055c703          	lbu	a4,5(a1)
    80004344:	00178793          	addi	a5,a5,1
    80004348:	02077713          	andi	a4,a4,32
    8000434c:	fc071ae3          	bnez	a4,80004320 <uartintr+0x70>
    80004350:	01813083          	ld	ra,24(sp)
    80004354:	01013403          	ld	s0,16(sp)
    80004358:	00813483          	ld	s1,8(sp)
    8000435c:	02010113          	addi	sp,sp,32
    80004360:	00008067          	ret
    80004364:	00001617          	auipc	a2,0x1
    80004368:	79c60613          	addi	a2,a2,1948 # 80005b00 <uart_tx_r>
    8000436c:	00001517          	auipc	a0,0x1
    80004370:	79c50513          	addi	a0,a0,1948 # 80005b08 <uart_tx_w>
    80004374:	00063783          	ld	a5,0(a2)
    80004378:	00053703          	ld	a4,0(a0)
    8000437c:	04f70263          	beq	a4,a5,800043c0 <uartintr+0x110>
    80004380:	100005b7          	lui	a1,0x10000
    80004384:	00003817          	auipc	a6,0x3
    80004388:	c3c80813          	addi	a6,a6,-964 # 80006fc0 <uart_tx_buf>
    8000438c:	01c0006f          	j	800043a8 <uartintr+0xf8>
    80004390:	0006c703          	lbu	a4,0(a3)
    80004394:	00f63023          	sd	a5,0(a2)
    80004398:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000439c:	00063783          	ld	a5,0(a2)
    800043a0:	00053703          	ld	a4,0(a0)
    800043a4:	02f70063          	beq	a4,a5,800043c4 <uartintr+0x114>
    800043a8:	01f7f713          	andi	a4,a5,31
    800043ac:	00e806b3          	add	a3,a6,a4
    800043b0:	0055c703          	lbu	a4,5(a1)
    800043b4:	00178793          	addi	a5,a5,1
    800043b8:	02077713          	andi	a4,a4,32
    800043bc:	fc071ae3          	bnez	a4,80004390 <uartintr+0xe0>
    800043c0:	00008067          	ret
    800043c4:	00008067          	ret

00000000800043c8 <kinit>:
    800043c8:	fc010113          	addi	sp,sp,-64
    800043cc:	02913423          	sd	s1,40(sp)
    800043d0:	fffff7b7          	lui	a5,0xfffff
    800043d4:	00004497          	auipc	s1,0x4
    800043d8:	c0b48493          	addi	s1,s1,-1013 # 80007fdf <end+0xfff>
    800043dc:	02813823          	sd	s0,48(sp)
    800043e0:	01313c23          	sd	s3,24(sp)
    800043e4:	00f4f4b3          	and	s1,s1,a5
    800043e8:	02113c23          	sd	ra,56(sp)
    800043ec:	03213023          	sd	s2,32(sp)
    800043f0:	01413823          	sd	s4,16(sp)
    800043f4:	01513423          	sd	s5,8(sp)
    800043f8:	04010413          	addi	s0,sp,64
    800043fc:	000017b7          	lui	a5,0x1
    80004400:	01100993          	li	s3,17
    80004404:	00f487b3          	add	a5,s1,a5
    80004408:	01b99993          	slli	s3,s3,0x1b
    8000440c:	06f9e063          	bltu	s3,a5,8000446c <kinit+0xa4>
    80004410:	00003a97          	auipc	s5,0x3
    80004414:	bd0a8a93          	addi	s5,s5,-1072 # 80006fe0 <end>
    80004418:	0754ec63          	bltu	s1,s5,80004490 <kinit+0xc8>
    8000441c:	0734fa63          	bgeu	s1,s3,80004490 <kinit+0xc8>
    80004420:	00088a37          	lui	s4,0x88
    80004424:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004428:	00001917          	auipc	s2,0x1
    8000442c:	6e890913          	addi	s2,s2,1768 # 80005b10 <kmem>
    80004430:	00ca1a13          	slli	s4,s4,0xc
    80004434:	0140006f          	j	80004448 <kinit+0x80>
    80004438:	000017b7          	lui	a5,0x1
    8000443c:	00f484b3          	add	s1,s1,a5
    80004440:	0554e863          	bltu	s1,s5,80004490 <kinit+0xc8>
    80004444:	0534f663          	bgeu	s1,s3,80004490 <kinit+0xc8>
    80004448:	00001637          	lui	a2,0x1
    8000444c:	00100593          	li	a1,1
    80004450:	00048513          	mv	a0,s1
    80004454:	00000097          	auipc	ra,0x0
    80004458:	5e4080e7          	jalr	1508(ra) # 80004a38 <__memset>
    8000445c:	00093783          	ld	a5,0(s2)
    80004460:	00f4b023          	sd	a5,0(s1)
    80004464:	00993023          	sd	s1,0(s2)
    80004468:	fd4498e3          	bne	s1,s4,80004438 <kinit+0x70>
    8000446c:	03813083          	ld	ra,56(sp)
    80004470:	03013403          	ld	s0,48(sp)
    80004474:	02813483          	ld	s1,40(sp)
    80004478:	02013903          	ld	s2,32(sp)
    8000447c:	01813983          	ld	s3,24(sp)
    80004480:	01013a03          	ld	s4,16(sp)
    80004484:	00813a83          	ld	s5,8(sp)
    80004488:	04010113          	addi	sp,sp,64
    8000448c:	00008067          	ret
    80004490:	00001517          	auipc	a0,0x1
    80004494:	e1050513          	addi	a0,a0,-496 # 800052a0 <digits+0x18>
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	4b4080e7          	jalr	1204(ra) # 8000394c <panic>

00000000800044a0 <freerange>:
    800044a0:	fc010113          	addi	sp,sp,-64
    800044a4:	000017b7          	lui	a5,0x1
    800044a8:	02913423          	sd	s1,40(sp)
    800044ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800044b0:	009504b3          	add	s1,a0,s1
    800044b4:	fffff537          	lui	a0,0xfffff
    800044b8:	02813823          	sd	s0,48(sp)
    800044bc:	02113c23          	sd	ra,56(sp)
    800044c0:	03213023          	sd	s2,32(sp)
    800044c4:	01313c23          	sd	s3,24(sp)
    800044c8:	01413823          	sd	s4,16(sp)
    800044cc:	01513423          	sd	s5,8(sp)
    800044d0:	01613023          	sd	s6,0(sp)
    800044d4:	04010413          	addi	s0,sp,64
    800044d8:	00a4f4b3          	and	s1,s1,a0
    800044dc:	00f487b3          	add	a5,s1,a5
    800044e0:	06f5e463          	bltu	a1,a5,80004548 <freerange+0xa8>
    800044e4:	00003a97          	auipc	s5,0x3
    800044e8:	afca8a93          	addi	s5,s5,-1284 # 80006fe0 <end>
    800044ec:	0954e263          	bltu	s1,s5,80004570 <freerange+0xd0>
    800044f0:	01100993          	li	s3,17
    800044f4:	01b99993          	slli	s3,s3,0x1b
    800044f8:	0734fc63          	bgeu	s1,s3,80004570 <freerange+0xd0>
    800044fc:	00058a13          	mv	s4,a1
    80004500:	00001917          	auipc	s2,0x1
    80004504:	61090913          	addi	s2,s2,1552 # 80005b10 <kmem>
    80004508:	00002b37          	lui	s6,0x2
    8000450c:	0140006f          	j	80004520 <freerange+0x80>
    80004510:	000017b7          	lui	a5,0x1
    80004514:	00f484b3          	add	s1,s1,a5
    80004518:	0554ec63          	bltu	s1,s5,80004570 <freerange+0xd0>
    8000451c:	0534fa63          	bgeu	s1,s3,80004570 <freerange+0xd0>
    80004520:	00001637          	lui	a2,0x1
    80004524:	00100593          	li	a1,1
    80004528:	00048513          	mv	a0,s1
    8000452c:	00000097          	auipc	ra,0x0
    80004530:	50c080e7          	jalr	1292(ra) # 80004a38 <__memset>
    80004534:	00093703          	ld	a4,0(s2)
    80004538:	016487b3          	add	a5,s1,s6
    8000453c:	00e4b023          	sd	a4,0(s1)
    80004540:	00993023          	sd	s1,0(s2)
    80004544:	fcfa76e3          	bgeu	s4,a5,80004510 <freerange+0x70>
    80004548:	03813083          	ld	ra,56(sp)
    8000454c:	03013403          	ld	s0,48(sp)
    80004550:	02813483          	ld	s1,40(sp)
    80004554:	02013903          	ld	s2,32(sp)
    80004558:	01813983          	ld	s3,24(sp)
    8000455c:	01013a03          	ld	s4,16(sp)
    80004560:	00813a83          	ld	s5,8(sp)
    80004564:	00013b03          	ld	s6,0(sp)
    80004568:	04010113          	addi	sp,sp,64
    8000456c:	00008067          	ret
    80004570:	00001517          	auipc	a0,0x1
    80004574:	d3050513          	addi	a0,a0,-720 # 800052a0 <digits+0x18>
    80004578:	fffff097          	auipc	ra,0xfffff
    8000457c:	3d4080e7          	jalr	980(ra) # 8000394c <panic>

0000000080004580 <kfree>:
    80004580:	fe010113          	addi	sp,sp,-32
    80004584:	00813823          	sd	s0,16(sp)
    80004588:	00113c23          	sd	ra,24(sp)
    8000458c:	00913423          	sd	s1,8(sp)
    80004590:	02010413          	addi	s0,sp,32
    80004594:	03451793          	slli	a5,a0,0x34
    80004598:	04079c63          	bnez	a5,800045f0 <kfree+0x70>
    8000459c:	00003797          	auipc	a5,0x3
    800045a0:	a4478793          	addi	a5,a5,-1468 # 80006fe0 <end>
    800045a4:	00050493          	mv	s1,a0
    800045a8:	04f56463          	bltu	a0,a5,800045f0 <kfree+0x70>
    800045ac:	01100793          	li	a5,17
    800045b0:	01b79793          	slli	a5,a5,0x1b
    800045b4:	02f57e63          	bgeu	a0,a5,800045f0 <kfree+0x70>
    800045b8:	00001637          	lui	a2,0x1
    800045bc:	00100593          	li	a1,1
    800045c0:	00000097          	auipc	ra,0x0
    800045c4:	478080e7          	jalr	1144(ra) # 80004a38 <__memset>
    800045c8:	00001797          	auipc	a5,0x1
    800045cc:	54878793          	addi	a5,a5,1352 # 80005b10 <kmem>
    800045d0:	0007b703          	ld	a4,0(a5)
    800045d4:	01813083          	ld	ra,24(sp)
    800045d8:	01013403          	ld	s0,16(sp)
    800045dc:	00e4b023          	sd	a4,0(s1)
    800045e0:	0097b023          	sd	s1,0(a5)
    800045e4:	00813483          	ld	s1,8(sp)
    800045e8:	02010113          	addi	sp,sp,32
    800045ec:	00008067          	ret
    800045f0:	00001517          	auipc	a0,0x1
    800045f4:	cb050513          	addi	a0,a0,-848 # 800052a0 <digits+0x18>
    800045f8:	fffff097          	auipc	ra,0xfffff
    800045fc:	354080e7          	jalr	852(ra) # 8000394c <panic>

0000000080004600 <kalloc>:
    80004600:	fe010113          	addi	sp,sp,-32
    80004604:	00813823          	sd	s0,16(sp)
    80004608:	00913423          	sd	s1,8(sp)
    8000460c:	00113c23          	sd	ra,24(sp)
    80004610:	02010413          	addi	s0,sp,32
    80004614:	00001797          	auipc	a5,0x1
    80004618:	4fc78793          	addi	a5,a5,1276 # 80005b10 <kmem>
    8000461c:	0007b483          	ld	s1,0(a5)
    80004620:	02048063          	beqz	s1,80004640 <kalloc+0x40>
    80004624:	0004b703          	ld	a4,0(s1)
    80004628:	00001637          	lui	a2,0x1
    8000462c:	00500593          	li	a1,5
    80004630:	00048513          	mv	a0,s1
    80004634:	00e7b023          	sd	a4,0(a5)
    80004638:	00000097          	auipc	ra,0x0
    8000463c:	400080e7          	jalr	1024(ra) # 80004a38 <__memset>
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00048513          	mv	a0,s1
    8000464c:	00813483          	ld	s1,8(sp)
    80004650:	02010113          	addi	sp,sp,32
    80004654:	00008067          	ret

0000000080004658 <initlock>:
    80004658:	ff010113          	addi	sp,sp,-16
    8000465c:	00813423          	sd	s0,8(sp)
    80004660:	01010413          	addi	s0,sp,16
    80004664:	00813403          	ld	s0,8(sp)
    80004668:	00b53423          	sd	a1,8(a0)
    8000466c:	00052023          	sw	zero,0(a0)
    80004670:	00053823          	sd	zero,16(a0)
    80004674:	01010113          	addi	sp,sp,16
    80004678:	00008067          	ret

000000008000467c <acquire>:
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00813823          	sd	s0,16(sp)
    80004684:	00913423          	sd	s1,8(sp)
    80004688:	00113c23          	sd	ra,24(sp)
    8000468c:	01213023          	sd	s2,0(sp)
    80004690:	02010413          	addi	s0,sp,32
    80004694:	00050493          	mv	s1,a0
    80004698:	10002973          	csrr	s2,sstatus
    8000469c:	100027f3          	csrr	a5,sstatus
    800046a0:	ffd7f793          	andi	a5,a5,-3
    800046a4:	10079073          	csrw	sstatus,a5
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	8e0080e7          	jalr	-1824(ra) # 80002f88 <mycpu>
    800046b0:	07852783          	lw	a5,120(a0)
    800046b4:	06078e63          	beqz	a5,80004730 <acquire+0xb4>
    800046b8:	fffff097          	auipc	ra,0xfffff
    800046bc:	8d0080e7          	jalr	-1840(ra) # 80002f88 <mycpu>
    800046c0:	07852783          	lw	a5,120(a0)
    800046c4:	0004a703          	lw	a4,0(s1)
    800046c8:	0017879b          	addiw	a5,a5,1
    800046cc:	06f52c23          	sw	a5,120(a0)
    800046d0:	04071063          	bnez	a4,80004710 <acquire+0x94>
    800046d4:	00100713          	li	a4,1
    800046d8:	00070793          	mv	a5,a4
    800046dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800046e0:	0007879b          	sext.w	a5,a5
    800046e4:	fe079ae3          	bnez	a5,800046d8 <acquire+0x5c>
    800046e8:	0ff0000f          	fence
    800046ec:	fffff097          	auipc	ra,0xfffff
    800046f0:	89c080e7          	jalr	-1892(ra) # 80002f88 <mycpu>
    800046f4:	01813083          	ld	ra,24(sp)
    800046f8:	01013403          	ld	s0,16(sp)
    800046fc:	00a4b823          	sd	a0,16(s1)
    80004700:	00013903          	ld	s2,0(sp)
    80004704:	00813483          	ld	s1,8(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret
    80004710:	0104b903          	ld	s2,16(s1)
    80004714:	fffff097          	auipc	ra,0xfffff
    80004718:	874080e7          	jalr	-1932(ra) # 80002f88 <mycpu>
    8000471c:	faa91ce3          	bne	s2,a0,800046d4 <acquire+0x58>
    80004720:	00001517          	auipc	a0,0x1
    80004724:	b8850513          	addi	a0,a0,-1144 # 800052a8 <digits+0x20>
    80004728:	fffff097          	auipc	ra,0xfffff
    8000472c:	224080e7          	jalr	548(ra) # 8000394c <panic>
    80004730:	00195913          	srli	s2,s2,0x1
    80004734:	fffff097          	auipc	ra,0xfffff
    80004738:	854080e7          	jalr	-1964(ra) # 80002f88 <mycpu>
    8000473c:	00197913          	andi	s2,s2,1
    80004740:	07252e23          	sw	s2,124(a0)
    80004744:	f75ff06f          	j	800046b8 <acquire+0x3c>

0000000080004748 <release>:
    80004748:	fe010113          	addi	sp,sp,-32
    8000474c:	00813823          	sd	s0,16(sp)
    80004750:	00113c23          	sd	ra,24(sp)
    80004754:	00913423          	sd	s1,8(sp)
    80004758:	01213023          	sd	s2,0(sp)
    8000475c:	02010413          	addi	s0,sp,32
    80004760:	00052783          	lw	a5,0(a0)
    80004764:	00079a63          	bnez	a5,80004778 <release+0x30>
    80004768:	00001517          	auipc	a0,0x1
    8000476c:	b4850513          	addi	a0,a0,-1208 # 800052b0 <digits+0x28>
    80004770:	fffff097          	auipc	ra,0xfffff
    80004774:	1dc080e7          	jalr	476(ra) # 8000394c <panic>
    80004778:	01053903          	ld	s2,16(a0)
    8000477c:	00050493          	mv	s1,a0
    80004780:	fffff097          	auipc	ra,0xfffff
    80004784:	808080e7          	jalr	-2040(ra) # 80002f88 <mycpu>
    80004788:	fea910e3          	bne	s2,a0,80004768 <release+0x20>
    8000478c:	0004b823          	sd	zero,16(s1)
    80004790:	0ff0000f          	fence
    80004794:	0f50000f          	fence	iorw,ow
    80004798:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	7ec080e7          	jalr	2028(ra) # 80002f88 <mycpu>
    800047a4:	100027f3          	csrr	a5,sstatus
    800047a8:	0027f793          	andi	a5,a5,2
    800047ac:	04079a63          	bnez	a5,80004800 <release+0xb8>
    800047b0:	07852783          	lw	a5,120(a0)
    800047b4:	02f05e63          	blez	a5,800047f0 <release+0xa8>
    800047b8:	fff7871b          	addiw	a4,a5,-1
    800047bc:	06e52c23          	sw	a4,120(a0)
    800047c0:	00071c63          	bnez	a4,800047d8 <release+0x90>
    800047c4:	07c52783          	lw	a5,124(a0)
    800047c8:	00078863          	beqz	a5,800047d8 <release+0x90>
    800047cc:	100027f3          	csrr	a5,sstatus
    800047d0:	0027e793          	ori	a5,a5,2
    800047d4:	10079073          	csrw	sstatus,a5
    800047d8:	01813083          	ld	ra,24(sp)
    800047dc:	01013403          	ld	s0,16(sp)
    800047e0:	00813483          	ld	s1,8(sp)
    800047e4:	00013903          	ld	s2,0(sp)
    800047e8:	02010113          	addi	sp,sp,32
    800047ec:	00008067          	ret
    800047f0:	00001517          	auipc	a0,0x1
    800047f4:	ae050513          	addi	a0,a0,-1312 # 800052d0 <digits+0x48>
    800047f8:	fffff097          	auipc	ra,0xfffff
    800047fc:	154080e7          	jalr	340(ra) # 8000394c <panic>
    80004800:	00001517          	auipc	a0,0x1
    80004804:	ab850513          	addi	a0,a0,-1352 # 800052b8 <digits+0x30>
    80004808:	fffff097          	auipc	ra,0xfffff
    8000480c:	144080e7          	jalr	324(ra) # 8000394c <panic>

0000000080004810 <holding>:
    80004810:	00052783          	lw	a5,0(a0)
    80004814:	00079663          	bnez	a5,80004820 <holding+0x10>
    80004818:	00000513          	li	a0,0
    8000481c:	00008067          	ret
    80004820:	fe010113          	addi	sp,sp,-32
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	00113c23          	sd	ra,24(sp)
    80004830:	02010413          	addi	s0,sp,32
    80004834:	01053483          	ld	s1,16(a0)
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	750080e7          	jalr	1872(ra) # 80002f88 <mycpu>
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	40a48533          	sub	a0,s1,a0
    8000484c:	00153513          	seqz	a0,a0
    80004850:	00813483          	ld	s1,8(sp)
    80004854:	02010113          	addi	sp,sp,32
    80004858:	00008067          	ret

000000008000485c <push_off>:
    8000485c:	fe010113          	addi	sp,sp,-32
    80004860:	00813823          	sd	s0,16(sp)
    80004864:	00113c23          	sd	ra,24(sp)
    80004868:	00913423          	sd	s1,8(sp)
    8000486c:	02010413          	addi	s0,sp,32
    80004870:	100024f3          	csrr	s1,sstatus
    80004874:	100027f3          	csrr	a5,sstatus
    80004878:	ffd7f793          	andi	a5,a5,-3
    8000487c:	10079073          	csrw	sstatus,a5
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	708080e7          	jalr	1800(ra) # 80002f88 <mycpu>
    80004888:	07852783          	lw	a5,120(a0)
    8000488c:	02078663          	beqz	a5,800048b8 <push_off+0x5c>
    80004890:	ffffe097          	auipc	ra,0xffffe
    80004894:	6f8080e7          	jalr	1784(ra) # 80002f88 <mycpu>
    80004898:	07852783          	lw	a5,120(a0)
    8000489c:	01813083          	ld	ra,24(sp)
    800048a0:	01013403          	ld	s0,16(sp)
    800048a4:	0017879b          	addiw	a5,a5,1
    800048a8:	06f52c23          	sw	a5,120(a0)
    800048ac:	00813483          	ld	s1,8(sp)
    800048b0:	02010113          	addi	sp,sp,32
    800048b4:	00008067          	ret
    800048b8:	0014d493          	srli	s1,s1,0x1
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	6cc080e7          	jalr	1740(ra) # 80002f88 <mycpu>
    800048c4:	0014f493          	andi	s1,s1,1
    800048c8:	06952e23          	sw	s1,124(a0)
    800048cc:	fc5ff06f          	j	80004890 <push_off+0x34>

00000000800048d0 <pop_off>:
    800048d0:	ff010113          	addi	sp,sp,-16
    800048d4:	00813023          	sd	s0,0(sp)
    800048d8:	00113423          	sd	ra,8(sp)
    800048dc:	01010413          	addi	s0,sp,16
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	6a8080e7          	jalr	1704(ra) # 80002f88 <mycpu>
    800048e8:	100027f3          	csrr	a5,sstatus
    800048ec:	0027f793          	andi	a5,a5,2
    800048f0:	04079663          	bnez	a5,8000493c <pop_off+0x6c>
    800048f4:	07852783          	lw	a5,120(a0)
    800048f8:	02f05a63          	blez	a5,8000492c <pop_off+0x5c>
    800048fc:	fff7871b          	addiw	a4,a5,-1
    80004900:	06e52c23          	sw	a4,120(a0)
    80004904:	00071c63          	bnez	a4,8000491c <pop_off+0x4c>
    80004908:	07c52783          	lw	a5,124(a0)
    8000490c:	00078863          	beqz	a5,8000491c <pop_off+0x4c>
    80004910:	100027f3          	csrr	a5,sstatus
    80004914:	0027e793          	ori	a5,a5,2
    80004918:	10079073          	csrw	sstatus,a5
    8000491c:	00813083          	ld	ra,8(sp)
    80004920:	00013403          	ld	s0,0(sp)
    80004924:	01010113          	addi	sp,sp,16
    80004928:	00008067          	ret
    8000492c:	00001517          	auipc	a0,0x1
    80004930:	9a450513          	addi	a0,a0,-1628 # 800052d0 <digits+0x48>
    80004934:	fffff097          	auipc	ra,0xfffff
    80004938:	018080e7          	jalr	24(ra) # 8000394c <panic>
    8000493c:	00001517          	auipc	a0,0x1
    80004940:	97c50513          	addi	a0,a0,-1668 # 800052b8 <digits+0x30>
    80004944:	fffff097          	auipc	ra,0xfffff
    80004948:	008080e7          	jalr	8(ra) # 8000394c <panic>

000000008000494c <push_on>:
    8000494c:	fe010113          	addi	sp,sp,-32
    80004950:	00813823          	sd	s0,16(sp)
    80004954:	00113c23          	sd	ra,24(sp)
    80004958:	00913423          	sd	s1,8(sp)
    8000495c:	02010413          	addi	s0,sp,32
    80004960:	100024f3          	csrr	s1,sstatus
    80004964:	100027f3          	csrr	a5,sstatus
    80004968:	0027e793          	ori	a5,a5,2
    8000496c:	10079073          	csrw	sstatus,a5
    80004970:	ffffe097          	auipc	ra,0xffffe
    80004974:	618080e7          	jalr	1560(ra) # 80002f88 <mycpu>
    80004978:	07852783          	lw	a5,120(a0)
    8000497c:	02078663          	beqz	a5,800049a8 <push_on+0x5c>
    80004980:	ffffe097          	auipc	ra,0xffffe
    80004984:	608080e7          	jalr	1544(ra) # 80002f88 <mycpu>
    80004988:	07852783          	lw	a5,120(a0)
    8000498c:	01813083          	ld	ra,24(sp)
    80004990:	01013403          	ld	s0,16(sp)
    80004994:	0017879b          	addiw	a5,a5,1
    80004998:	06f52c23          	sw	a5,120(a0)
    8000499c:	00813483          	ld	s1,8(sp)
    800049a0:	02010113          	addi	sp,sp,32
    800049a4:	00008067          	ret
    800049a8:	0014d493          	srli	s1,s1,0x1
    800049ac:	ffffe097          	auipc	ra,0xffffe
    800049b0:	5dc080e7          	jalr	1500(ra) # 80002f88 <mycpu>
    800049b4:	0014f493          	andi	s1,s1,1
    800049b8:	06952e23          	sw	s1,124(a0)
    800049bc:	fc5ff06f          	j	80004980 <push_on+0x34>

00000000800049c0 <pop_on>:
    800049c0:	ff010113          	addi	sp,sp,-16
    800049c4:	00813023          	sd	s0,0(sp)
    800049c8:	00113423          	sd	ra,8(sp)
    800049cc:	01010413          	addi	s0,sp,16
    800049d0:	ffffe097          	auipc	ra,0xffffe
    800049d4:	5b8080e7          	jalr	1464(ra) # 80002f88 <mycpu>
    800049d8:	100027f3          	csrr	a5,sstatus
    800049dc:	0027f793          	andi	a5,a5,2
    800049e0:	04078463          	beqz	a5,80004a28 <pop_on+0x68>
    800049e4:	07852783          	lw	a5,120(a0)
    800049e8:	02f05863          	blez	a5,80004a18 <pop_on+0x58>
    800049ec:	fff7879b          	addiw	a5,a5,-1
    800049f0:	06f52c23          	sw	a5,120(a0)
    800049f4:	07853783          	ld	a5,120(a0)
    800049f8:	00079863          	bnez	a5,80004a08 <pop_on+0x48>
    800049fc:	100027f3          	csrr	a5,sstatus
    80004a00:	ffd7f793          	andi	a5,a5,-3
    80004a04:	10079073          	csrw	sstatus,a5
    80004a08:	00813083          	ld	ra,8(sp)
    80004a0c:	00013403          	ld	s0,0(sp)
    80004a10:	01010113          	addi	sp,sp,16
    80004a14:	00008067          	ret
    80004a18:	00001517          	auipc	a0,0x1
    80004a1c:	8e050513          	addi	a0,a0,-1824 # 800052f8 <digits+0x70>
    80004a20:	fffff097          	auipc	ra,0xfffff
    80004a24:	f2c080e7          	jalr	-212(ra) # 8000394c <panic>
    80004a28:	00001517          	auipc	a0,0x1
    80004a2c:	8b050513          	addi	a0,a0,-1872 # 800052d8 <digits+0x50>
    80004a30:	fffff097          	auipc	ra,0xfffff
    80004a34:	f1c080e7          	jalr	-228(ra) # 8000394c <panic>

0000000080004a38 <__memset>:
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00813423          	sd	s0,8(sp)
    80004a40:	01010413          	addi	s0,sp,16
    80004a44:	1a060e63          	beqz	a2,80004c00 <__memset+0x1c8>
    80004a48:	40a007b3          	neg	a5,a0
    80004a4c:	0077f793          	andi	a5,a5,7
    80004a50:	00778693          	addi	a3,a5,7
    80004a54:	00b00813          	li	a6,11
    80004a58:	0ff5f593          	andi	a1,a1,255
    80004a5c:	fff6071b          	addiw	a4,a2,-1
    80004a60:	1b06e663          	bltu	a3,a6,80004c0c <__memset+0x1d4>
    80004a64:	1cd76463          	bltu	a4,a3,80004c2c <__memset+0x1f4>
    80004a68:	1a078e63          	beqz	a5,80004c24 <__memset+0x1ec>
    80004a6c:	00b50023          	sb	a1,0(a0)
    80004a70:	00100713          	li	a4,1
    80004a74:	1ae78463          	beq	a5,a4,80004c1c <__memset+0x1e4>
    80004a78:	00b500a3          	sb	a1,1(a0)
    80004a7c:	00200713          	li	a4,2
    80004a80:	1ae78a63          	beq	a5,a4,80004c34 <__memset+0x1fc>
    80004a84:	00b50123          	sb	a1,2(a0)
    80004a88:	00300713          	li	a4,3
    80004a8c:	18e78463          	beq	a5,a4,80004c14 <__memset+0x1dc>
    80004a90:	00b501a3          	sb	a1,3(a0)
    80004a94:	00400713          	li	a4,4
    80004a98:	1ae78263          	beq	a5,a4,80004c3c <__memset+0x204>
    80004a9c:	00b50223          	sb	a1,4(a0)
    80004aa0:	00500713          	li	a4,5
    80004aa4:	1ae78063          	beq	a5,a4,80004c44 <__memset+0x20c>
    80004aa8:	00b502a3          	sb	a1,5(a0)
    80004aac:	00700713          	li	a4,7
    80004ab0:	18e79e63          	bne	a5,a4,80004c4c <__memset+0x214>
    80004ab4:	00b50323          	sb	a1,6(a0)
    80004ab8:	00700e93          	li	t4,7
    80004abc:	00859713          	slli	a4,a1,0x8
    80004ac0:	00e5e733          	or	a4,a1,a4
    80004ac4:	01059e13          	slli	t3,a1,0x10
    80004ac8:	01c76e33          	or	t3,a4,t3
    80004acc:	01859313          	slli	t1,a1,0x18
    80004ad0:	006e6333          	or	t1,t3,t1
    80004ad4:	02059893          	slli	a7,a1,0x20
    80004ad8:	40f60e3b          	subw	t3,a2,a5
    80004adc:	011368b3          	or	a7,t1,a7
    80004ae0:	02859813          	slli	a6,a1,0x28
    80004ae4:	0108e833          	or	a6,a7,a6
    80004ae8:	03059693          	slli	a3,a1,0x30
    80004aec:	003e589b          	srliw	a7,t3,0x3
    80004af0:	00d866b3          	or	a3,a6,a3
    80004af4:	03859713          	slli	a4,a1,0x38
    80004af8:	00389813          	slli	a6,a7,0x3
    80004afc:	00f507b3          	add	a5,a0,a5
    80004b00:	00e6e733          	or	a4,a3,a4
    80004b04:	000e089b          	sext.w	a7,t3
    80004b08:	00f806b3          	add	a3,a6,a5
    80004b0c:	00e7b023          	sd	a4,0(a5)
    80004b10:	00878793          	addi	a5,a5,8
    80004b14:	fed79ce3          	bne	a5,a3,80004b0c <__memset+0xd4>
    80004b18:	ff8e7793          	andi	a5,t3,-8
    80004b1c:	0007871b          	sext.w	a4,a5
    80004b20:	01d787bb          	addw	a5,a5,t4
    80004b24:	0ce88e63          	beq	a7,a4,80004c00 <__memset+0x1c8>
    80004b28:	00f50733          	add	a4,a0,a5
    80004b2c:	00b70023          	sb	a1,0(a4)
    80004b30:	0017871b          	addiw	a4,a5,1
    80004b34:	0cc77663          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004b38:	00e50733          	add	a4,a0,a4
    80004b3c:	00b70023          	sb	a1,0(a4)
    80004b40:	0027871b          	addiw	a4,a5,2
    80004b44:	0ac77e63          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004b48:	00e50733          	add	a4,a0,a4
    80004b4c:	00b70023          	sb	a1,0(a4)
    80004b50:	0037871b          	addiw	a4,a5,3
    80004b54:	0ac77663          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004b58:	00e50733          	add	a4,a0,a4
    80004b5c:	00b70023          	sb	a1,0(a4)
    80004b60:	0047871b          	addiw	a4,a5,4
    80004b64:	08c77e63          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004b68:	00e50733          	add	a4,a0,a4
    80004b6c:	00b70023          	sb	a1,0(a4)
    80004b70:	0057871b          	addiw	a4,a5,5
    80004b74:	08c77663          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004b78:	00e50733          	add	a4,a0,a4
    80004b7c:	00b70023          	sb	a1,0(a4)
    80004b80:	0067871b          	addiw	a4,a5,6
    80004b84:	06c77e63          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004b88:	00e50733          	add	a4,a0,a4
    80004b8c:	00b70023          	sb	a1,0(a4)
    80004b90:	0077871b          	addiw	a4,a5,7
    80004b94:	06c77663          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004b98:	00e50733          	add	a4,a0,a4
    80004b9c:	00b70023          	sb	a1,0(a4)
    80004ba0:	0087871b          	addiw	a4,a5,8
    80004ba4:	04c77e63          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004ba8:	00e50733          	add	a4,a0,a4
    80004bac:	00b70023          	sb	a1,0(a4)
    80004bb0:	0097871b          	addiw	a4,a5,9
    80004bb4:	04c77663          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004bb8:	00e50733          	add	a4,a0,a4
    80004bbc:	00b70023          	sb	a1,0(a4)
    80004bc0:	00a7871b          	addiw	a4,a5,10
    80004bc4:	02c77e63          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004bc8:	00e50733          	add	a4,a0,a4
    80004bcc:	00b70023          	sb	a1,0(a4)
    80004bd0:	00b7871b          	addiw	a4,a5,11
    80004bd4:	02c77663          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004bd8:	00e50733          	add	a4,a0,a4
    80004bdc:	00b70023          	sb	a1,0(a4)
    80004be0:	00c7871b          	addiw	a4,a5,12
    80004be4:	00c77e63          	bgeu	a4,a2,80004c00 <__memset+0x1c8>
    80004be8:	00e50733          	add	a4,a0,a4
    80004bec:	00b70023          	sb	a1,0(a4)
    80004bf0:	00d7879b          	addiw	a5,a5,13
    80004bf4:	00c7f663          	bgeu	a5,a2,80004c00 <__memset+0x1c8>
    80004bf8:	00f507b3          	add	a5,a0,a5
    80004bfc:	00b78023          	sb	a1,0(a5)
    80004c00:	00813403          	ld	s0,8(sp)
    80004c04:	01010113          	addi	sp,sp,16
    80004c08:	00008067          	ret
    80004c0c:	00b00693          	li	a3,11
    80004c10:	e55ff06f          	j	80004a64 <__memset+0x2c>
    80004c14:	00300e93          	li	t4,3
    80004c18:	ea5ff06f          	j	80004abc <__memset+0x84>
    80004c1c:	00100e93          	li	t4,1
    80004c20:	e9dff06f          	j	80004abc <__memset+0x84>
    80004c24:	00000e93          	li	t4,0
    80004c28:	e95ff06f          	j	80004abc <__memset+0x84>
    80004c2c:	00000793          	li	a5,0
    80004c30:	ef9ff06f          	j	80004b28 <__memset+0xf0>
    80004c34:	00200e93          	li	t4,2
    80004c38:	e85ff06f          	j	80004abc <__memset+0x84>
    80004c3c:	00400e93          	li	t4,4
    80004c40:	e7dff06f          	j	80004abc <__memset+0x84>
    80004c44:	00500e93          	li	t4,5
    80004c48:	e75ff06f          	j	80004abc <__memset+0x84>
    80004c4c:	00600e93          	li	t4,6
    80004c50:	e6dff06f          	j	80004abc <__memset+0x84>

0000000080004c54 <__memmove>:
    80004c54:	ff010113          	addi	sp,sp,-16
    80004c58:	00813423          	sd	s0,8(sp)
    80004c5c:	01010413          	addi	s0,sp,16
    80004c60:	0e060863          	beqz	a2,80004d50 <__memmove+0xfc>
    80004c64:	fff6069b          	addiw	a3,a2,-1
    80004c68:	0006881b          	sext.w	a6,a3
    80004c6c:	0ea5e863          	bltu	a1,a0,80004d5c <__memmove+0x108>
    80004c70:	00758713          	addi	a4,a1,7
    80004c74:	00a5e7b3          	or	a5,a1,a0
    80004c78:	40a70733          	sub	a4,a4,a0
    80004c7c:	0077f793          	andi	a5,a5,7
    80004c80:	00f73713          	sltiu	a4,a4,15
    80004c84:	00174713          	xori	a4,a4,1
    80004c88:	0017b793          	seqz	a5,a5
    80004c8c:	00e7f7b3          	and	a5,a5,a4
    80004c90:	10078863          	beqz	a5,80004da0 <__memmove+0x14c>
    80004c94:	00900793          	li	a5,9
    80004c98:	1107f463          	bgeu	a5,a6,80004da0 <__memmove+0x14c>
    80004c9c:	0036581b          	srliw	a6,a2,0x3
    80004ca0:	fff8081b          	addiw	a6,a6,-1
    80004ca4:	02081813          	slli	a6,a6,0x20
    80004ca8:	01d85893          	srli	a7,a6,0x1d
    80004cac:	00858813          	addi	a6,a1,8
    80004cb0:	00058793          	mv	a5,a1
    80004cb4:	00050713          	mv	a4,a0
    80004cb8:	01088833          	add	a6,a7,a6
    80004cbc:	0007b883          	ld	a7,0(a5)
    80004cc0:	00878793          	addi	a5,a5,8
    80004cc4:	00870713          	addi	a4,a4,8
    80004cc8:	ff173c23          	sd	a7,-8(a4)
    80004ccc:	ff0798e3          	bne	a5,a6,80004cbc <__memmove+0x68>
    80004cd0:	ff867713          	andi	a4,a2,-8
    80004cd4:	02071793          	slli	a5,a4,0x20
    80004cd8:	0207d793          	srli	a5,a5,0x20
    80004cdc:	00f585b3          	add	a1,a1,a5
    80004ce0:	40e686bb          	subw	a3,a3,a4
    80004ce4:	00f507b3          	add	a5,a0,a5
    80004ce8:	06e60463          	beq	a2,a4,80004d50 <__memmove+0xfc>
    80004cec:	0005c703          	lbu	a4,0(a1)
    80004cf0:	00e78023          	sb	a4,0(a5)
    80004cf4:	04068e63          	beqz	a3,80004d50 <__memmove+0xfc>
    80004cf8:	0015c603          	lbu	a2,1(a1)
    80004cfc:	00100713          	li	a4,1
    80004d00:	00c780a3          	sb	a2,1(a5)
    80004d04:	04e68663          	beq	a3,a4,80004d50 <__memmove+0xfc>
    80004d08:	0025c603          	lbu	a2,2(a1)
    80004d0c:	00200713          	li	a4,2
    80004d10:	00c78123          	sb	a2,2(a5)
    80004d14:	02e68e63          	beq	a3,a4,80004d50 <__memmove+0xfc>
    80004d18:	0035c603          	lbu	a2,3(a1)
    80004d1c:	00300713          	li	a4,3
    80004d20:	00c781a3          	sb	a2,3(a5)
    80004d24:	02e68663          	beq	a3,a4,80004d50 <__memmove+0xfc>
    80004d28:	0045c603          	lbu	a2,4(a1)
    80004d2c:	00400713          	li	a4,4
    80004d30:	00c78223          	sb	a2,4(a5)
    80004d34:	00e68e63          	beq	a3,a4,80004d50 <__memmove+0xfc>
    80004d38:	0055c603          	lbu	a2,5(a1)
    80004d3c:	00500713          	li	a4,5
    80004d40:	00c782a3          	sb	a2,5(a5)
    80004d44:	00e68663          	beq	a3,a4,80004d50 <__memmove+0xfc>
    80004d48:	0065c703          	lbu	a4,6(a1)
    80004d4c:	00e78323          	sb	a4,6(a5)
    80004d50:	00813403          	ld	s0,8(sp)
    80004d54:	01010113          	addi	sp,sp,16
    80004d58:	00008067          	ret
    80004d5c:	02061713          	slli	a4,a2,0x20
    80004d60:	02075713          	srli	a4,a4,0x20
    80004d64:	00e587b3          	add	a5,a1,a4
    80004d68:	f0f574e3          	bgeu	a0,a5,80004c70 <__memmove+0x1c>
    80004d6c:	02069613          	slli	a2,a3,0x20
    80004d70:	02065613          	srli	a2,a2,0x20
    80004d74:	fff64613          	not	a2,a2
    80004d78:	00e50733          	add	a4,a0,a4
    80004d7c:	00c78633          	add	a2,a5,a2
    80004d80:	fff7c683          	lbu	a3,-1(a5)
    80004d84:	fff78793          	addi	a5,a5,-1
    80004d88:	fff70713          	addi	a4,a4,-1
    80004d8c:	00d70023          	sb	a3,0(a4)
    80004d90:	fec798e3          	bne	a5,a2,80004d80 <__memmove+0x12c>
    80004d94:	00813403          	ld	s0,8(sp)
    80004d98:	01010113          	addi	sp,sp,16
    80004d9c:	00008067          	ret
    80004da0:	02069713          	slli	a4,a3,0x20
    80004da4:	02075713          	srli	a4,a4,0x20
    80004da8:	00170713          	addi	a4,a4,1
    80004dac:	00e50733          	add	a4,a0,a4
    80004db0:	00050793          	mv	a5,a0
    80004db4:	0005c683          	lbu	a3,0(a1)
    80004db8:	00178793          	addi	a5,a5,1
    80004dbc:	00158593          	addi	a1,a1,1
    80004dc0:	fed78fa3          	sb	a3,-1(a5)
    80004dc4:	fee798e3          	bne	a5,a4,80004db4 <__memmove+0x160>
    80004dc8:	f89ff06f          	j	80004d50 <__memmove+0xfc>

0000000080004dcc <__putc>:
    80004dcc:	fe010113          	addi	sp,sp,-32
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00113c23          	sd	ra,24(sp)
    80004dd8:	02010413          	addi	s0,sp,32
    80004ddc:	00050793          	mv	a5,a0
    80004de0:	fef40593          	addi	a1,s0,-17
    80004de4:	00100613          	li	a2,1
    80004de8:	00000513          	li	a0,0
    80004dec:	fef407a3          	sb	a5,-17(s0)
    80004df0:	fffff097          	auipc	ra,0xfffff
    80004df4:	b3c080e7          	jalr	-1220(ra) # 8000392c <console_write>
    80004df8:	01813083          	ld	ra,24(sp)
    80004dfc:	01013403          	ld	s0,16(sp)
    80004e00:	02010113          	addi	sp,sp,32
    80004e04:	00008067          	ret

0000000080004e08 <__getc>:
    80004e08:	fe010113          	addi	sp,sp,-32
    80004e0c:	00813823          	sd	s0,16(sp)
    80004e10:	00113c23          	sd	ra,24(sp)
    80004e14:	02010413          	addi	s0,sp,32
    80004e18:	fe840593          	addi	a1,s0,-24
    80004e1c:	00100613          	li	a2,1
    80004e20:	00000513          	li	a0,0
    80004e24:	fffff097          	auipc	ra,0xfffff
    80004e28:	ae8080e7          	jalr	-1304(ra) # 8000390c <console_read>
    80004e2c:	fe844503          	lbu	a0,-24(s0)
    80004e30:	01813083          	ld	ra,24(sp)
    80004e34:	01013403          	ld	s0,16(sp)
    80004e38:	02010113          	addi	sp,sp,32
    80004e3c:	00008067          	ret

0000000080004e40 <console_handler>:
    80004e40:	fe010113          	addi	sp,sp,-32
    80004e44:	00813823          	sd	s0,16(sp)
    80004e48:	00113c23          	sd	ra,24(sp)
    80004e4c:	00913423          	sd	s1,8(sp)
    80004e50:	02010413          	addi	s0,sp,32
    80004e54:	14202773          	csrr	a4,scause
    80004e58:	100027f3          	csrr	a5,sstatus
    80004e5c:	0027f793          	andi	a5,a5,2
    80004e60:	06079e63          	bnez	a5,80004edc <console_handler+0x9c>
    80004e64:	00074c63          	bltz	a4,80004e7c <console_handler+0x3c>
    80004e68:	01813083          	ld	ra,24(sp)
    80004e6c:	01013403          	ld	s0,16(sp)
    80004e70:	00813483          	ld	s1,8(sp)
    80004e74:	02010113          	addi	sp,sp,32
    80004e78:	00008067          	ret
    80004e7c:	0ff77713          	andi	a4,a4,255
    80004e80:	00900793          	li	a5,9
    80004e84:	fef712e3          	bne	a4,a5,80004e68 <console_handler+0x28>
    80004e88:	ffffe097          	auipc	ra,0xffffe
    80004e8c:	6dc080e7          	jalr	1756(ra) # 80003564 <plic_claim>
    80004e90:	00a00793          	li	a5,10
    80004e94:	00050493          	mv	s1,a0
    80004e98:	02f50c63          	beq	a0,a5,80004ed0 <console_handler+0x90>
    80004e9c:	fc0506e3          	beqz	a0,80004e68 <console_handler+0x28>
    80004ea0:	00050593          	mv	a1,a0
    80004ea4:	00000517          	auipc	a0,0x0
    80004ea8:	35c50513          	addi	a0,a0,860 # 80005200 <CONSOLE_STATUS+0x1f0>
    80004eac:	fffff097          	auipc	ra,0xfffff
    80004eb0:	afc080e7          	jalr	-1284(ra) # 800039a8 <__printf>
    80004eb4:	01013403          	ld	s0,16(sp)
    80004eb8:	01813083          	ld	ra,24(sp)
    80004ebc:	00048513          	mv	a0,s1
    80004ec0:	00813483          	ld	s1,8(sp)
    80004ec4:	02010113          	addi	sp,sp,32
    80004ec8:	ffffe317          	auipc	t1,0xffffe
    80004ecc:	6d430067          	jr	1748(t1) # 8000359c <plic_complete>
    80004ed0:	fffff097          	auipc	ra,0xfffff
    80004ed4:	3e0080e7          	jalr	992(ra) # 800042b0 <uartintr>
    80004ed8:	fddff06f          	j	80004eb4 <console_handler+0x74>
    80004edc:	00000517          	auipc	a0,0x0
    80004ee0:	42450513          	addi	a0,a0,1060 # 80005300 <digits+0x78>
    80004ee4:	fffff097          	auipc	ra,0xfffff
    80004ee8:	a68080e7          	jalr	-1432(ra) # 8000394c <panic>
	...
