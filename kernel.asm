
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	92813103          	ld	sp,-1752(sp) # 80005928 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	025020ef          	jal	ra,80002840 <start>

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
    80001248:	0fc010ef          	jal	ra,80002344 <HandleInterupt>

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
    // allocate stack separately; pass top pointer as a4
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

00000000800014fc <sem_signal_n>:

int sem_signal_n(sem_t id, unsigned n) {
    800014fc:	ff010113          	addi	sp,sp,-16
    80001500:	00813423          	sd	s0,8(sp)
    80001504:	01010413          	addi	s0,sp,16
    80001508:	00050793          	mv	a5,a0
    8000150c:	00058613          	mv	a2,a1
    register size_t a0 asm("a0") = 0x26;
    80001510:	02600513          	li	a0,38
    register size_t a1 asm("a1") = (size_t)id;
    80001514:	00078593          	mv	a1,a5
    register size_t a2 asm("a2") = (size_t)n;
    80001518:	02061613          	slli	a2,a2,0x20
    8000151c:	02065613          	srli	a2,a2,0x20
    __asm__ volatile("ecall" : "+r"(a0) : "r"(a1), "r"(a2));
    80001520:	00000073          	ecall
    return (int)a0;
    80001524:	0005051b          	sext.w	a0,a0
    80001528:	00813403          	ld	s0,8(sp)
    8000152c:	01010113          	addi	sp,sp,16
    80001530:	00008067          	ret

0000000080001534 <worker>:
#include "../lib/console.h"

static sem_t mutex;
static sem_t done;

void worker(void* arg) {
    80001534:	fd010113          	addi	sp,sp,-48
    80001538:	02113423          	sd	ra,40(sp)
    8000153c:	02813023          	sd	s0,32(sp)
    80001540:	00913c23          	sd	s1,24(sp)
    80001544:	01213823          	sd	s2,16(sp)
    80001548:	03010413          	addi	s0,sp,48
    char c = (char)(size_t)arg;
    8000154c:	0ff57913          	andi	s2,a0,255
    for (int i = 0; i < 4; i++) {
    80001550:	00000493          	li	s1,0
    80001554:	04c0006f          	j	800015a0 <worker+0x6c>
        sem_wait(mutex);
        __putc('[');
        for (volatile long j = 0; j < 5000000L; j++);
    80001558:	fd843783          	ld	a5,-40(s0)
    8000155c:	00178793          	addi	a5,a5,1 # 8001 <_entry-0x7fff7fff>
    80001560:	fcf43c23          	sd	a5,-40(s0)
    80001564:	fd843703          	ld	a4,-40(s0)
    80001568:	004c57b7          	lui	a5,0x4c5
    8000156c:	b3f78793          	addi	a5,a5,-1217 # 4c4b3f <_entry-0x7fb3b4c1>
    80001570:	fee7d4e3          	bge	a5,a4,80001558 <worker+0x24>
        __putc(c);
    80001574:	00090513          	mv	a0,s2
    80001578:	00003097          	auipc	ra,0x3
    8000157c:	384080e7          	jalr	900(ra) # 800048fc <__putc>
        __putc(']');
    80001580:	05d00513          	li	a0,93
    80001584:	00003097          	auipc	ra,0x3
    80001588:	378080e7          	jalr	888(ra) # 800048fc <__putc>
        sem_signal(mutex);
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	3cc53503          	ld	a0,972(a0) # 80005958 <mutex>
    80001594:	00000097          	auipc	ra,0x0
    80001598:	f08080e7          	jalr	-248(ra) # 8000149c <sem_signal>
    for (int i = 0; i < 4; i++) {
    8000159c:	0014849b          	addiw	s1,s1,1
    800015a0:	00300793          	li	a5,3
    800015a4:	0297c463          	blt	a5,s1,800015cc <worker+0x98>
        sem_wait(mutex);
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	3b053503          	ld	a0,944(a0) # 80005958 <mutex>
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	ec4080e7          	jalr	-316(ra) # 80001474 <sem_wait>
        __putc('[');
    800015b8:	05b00513          	li	a0,91
    800015bc:	00003097          	auipc	ra,0x3
    800015c0:	340080e7          	jalr	832(ra) # 800048fc <__putc>
        for (volatile long j = 0; j < 5000000L; j++);
    800015c4:	fc043c23          	sd	zero,-40(s0)
    800015c8:	f9dff06f          	j	80001564 <worker+0x30>
    }
    sem_signal(done);
    800015cc:	00004517          	auipc	a0,0x4
    800015d0:	38453503          	ld	a0,900(a0) # 80005950 <done>
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	ec8080e7          	jalr	-312(ra) # 8000149c <sem_signal>
}
    800015dc:	02813083          	ld	ra,40(sp)
    800015e0:	02013403          	ld	s0,32(sp)
    800015e4:	01813483          	ld	s1,24(sp)
    800015e8:	01013903          	ld	s2,16(sp)
    800015ec:	03010113          	addi	sp,sp,48
    800015f0:	00008067          	ret

00000000800015f4 <userMain>:

void userMain() {
    800015f4:	fc010113          	addi	sp,sp,-64
    800015f8:	02113c23          	sd	ra,56(sp)
    800015fc:	02813823          	sd	s0,48(sp)
    80001600:	02913423          	sd	s1,40(sp)
    80001604:	04010413          	addi	s0,sp,64
    sem_open(&mutex, 1);
    80001608:	00100593          	li	a1,1
    8000160c:	00004517          	auipc	a0,0x4
    80001610:	34c50513          	addi	a0,a0,844 # 80005958 <mutex>
    80001614:	00000097          	auipc	ra,0x0
    80001618:	e00080e7          	jalr	-512(ra) # 80001414 <sem_open>
    sem_open(&done, 0);
    8000161c:	00000593          	li	a1,0
    80001620:	00004517          	auipc	a0,0x4
    80001624:	33050513          	addi	a0,a0,816 # 80005950 <done>
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	dec080e7          	jalr	-532(ra) # 80001414 <sem_open>

    thread_t t1, t2, t3;
    thread_create(&t1, worker, (void*)'A');
    80001630:	04100613          	li	a2,65
    80001634:	00000597          	auipc	a1,0x0
    80001638:	f0058593          	addi	a1,a1,-256 # 80001534 <worker>
    8000163c:	fd840513          	addi	a0,s0,-40
    80001640:	00000097          	auipc	ra,0x0
    80001644:	ce8080e7          	jalr	-792(ra) # 80001328 <thread_create>
    thread_create(&t2, worker, (void*)'B');
    80001648:	04200613          	li	a2,66
    8000164c:	00000597          	auipc	a1,0x0
    80001650:	ee858593          	addi	a1,a1,-280 # 80001534 <worker>
    80001654:	fd040513          	addi	a0,s0,-48
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	cd0080e7          	jalr	-816(ra) # 80001328 <thread_create>
    thread_create(&t3, worker, (void*)'C');
    80001660:	04300613          	li	a2,67
    80001664:	00000597          	auipc	a1,0x0
    80001668:	ed058593          	addi	a1,a1,-304 # 80001534 <worker>
    8000166c:	fc840513          	addi	a0,s0,-56
    80001670:	00000097          	auipc	ra,0x0
    80001674:	cb8080e7          	jalr	-840(ra) # 80001328 <thread_create>

    sem_wait_n(done, 3);
    80001678:	00004497          	auipc	s1,0x4
    8000167c:	2d848493          	addi	s1,s1,728 # 80005950 <done>
    80001680:	00300593          	li	a1,3
    80001684:	0004b503          	ld	a0,0(s1)
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	e3c080e7          	jalr	-452(ra) # 800014c4 <sem_wait_n>

    sem_close(mutex);
    80001690:	00004517          	auipc	a0,0x4
    80001694:	2c853503          	ld	a0,712(a0) # 80005958 <mutex>
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	db4080e7          	jalr	-588(ra) # 8000144c <sem_close>
    sem_close(done);
    800016a0:	0004b503          	ld	a0,0(s1)
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	da8080e7          	jalr	-600(ra) # 8000144c <sem_close>
    __putc('\n');
    800016ac:	00a00513          	li	a0,10
    800016b0:	00003097          	auipc	ra,0x3
    800016b4:	24c080e7          	jalr	588(ra) # 800048fc <__putc>
    __putc('O'); __putc('K'); __putc('\n');
    800016b8:	04f00513          	li	a0,79
    800016bc:	00003097          	auipc	ra,0x3
    800016c0:	240080e7          	jalr	576(ra) # 800048fc <__putc>
    800016c4:	04b00513          	li	a0,75
    800016c8:	00003097          	auipc	ra,0x3
    800016cc:	234080e7          	jalr	564(ra) # 800048fc <__putc>
    800016d0:	00a00513          	li	a0,10
    800016d4:	00003097          	auipc	ra,0x3
    800016d8:	228080e7          	jalr	552(ra) # 800048fc <__putc>
    while (1) {}
    800016dc:	0000006f          	j	800016dc <userMain+0xe8>

00000000800016e0 <drop_to_user>:
}




void drop_to_user(void (*fn)()) {
    800016e0:	ff010113          	addi	sp,sp,-16
    800016e4:	00813423          	sd	s0,8(sp)
    800016e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    800016ec:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800016f0:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    800016f4:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    800016f8:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800016fc:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    80001700:	10200073          	sret
}
    80001704:	00813403          	ld	s0,8(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <main>:
void interupt();
int main() {
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00113423          	sd	ra,8(sp)
    80001718:	00813023          	sd	s0,0(sp)
    8000171c:	01010413          	addi	s0,sp,16
    start_main_thread();
    80001720:	00001097          	auipc	ra,0x1
    80001724:	fe8080e7          	jalr	-24(ra) # 80002708 <start_main_thread>
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    80001728:	00000797          	auipc	a5,0x0
    8000172c:	a9878793          	addi	a5,a5,-1384 # 800011c0 <interupt>
    80001730:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrw sie, %0"    :: "r"((uint64)0x2));  // enable SSIE (timer)
    80001734:	00200793          	li	a5,2
    80001738:	10479073          	csrw	sie,a5
    drop_to_user(userMain);
    8000173c:	00000517          	auipc	a0,0x0
    80001740:	eb850513          	addi	a0,a0,-328 # 800015f4 <userMain>
    80001744:	00000097          	auipc	ra,0x0
    80001748:	f9c080e7          	jalr	-100(ra) # 800016e0 <drop_to_user>
    return 0;
    8000174c:	00000513          	li	a0,0
    80001750:	00813083          	ld	ra,8(sp)
    80001754:	00013403          	ld	s0,0(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <_ZN9Semaphore4initEj>:
//

#include "Semaphore.hpp"
#include "Scheduler.hpp"

void Semaphore::init(unsigned initialValue) {
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    blockedHead = nullptr;
    8000176c:	00053423          	sd	zero,8(a0)
    blockedTail = nullptr;
    80001770:	00053823          	sd	zero,16(a0)
    value = (int)initialValue;
    80001774:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001778:	00050223          	sb	zero,4(a0)
}
    8000177c:	00813403          	ld	s0,8(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN9Semaphore7enqueueEP6Thread>:

void Semaphore::enqueue(Thread* thread) {
    80001788:	fe010113          	addi	sp,sp,-32
    8000178c:	00113c23          	sd	ra,24(sp)
    80001790:	00813823          	sd	s0,16(sp)
    80001794:	00913423          	sd	s1,8(sp)
    80001798:	01213023          	sd	s2,0(sp)
    8000179c:	02010413          	addi	s0,sp,32
    800017a0:	00050913          	mv	s2,a0
    800017a4:	00058493          	mv	s1,a1
    thread->setNextInQueue(nullptr);
    800017a8:	00000593          	li	a1,0
    800017ac:	00048513          	mv	a0,s1
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	48c080e7          	jalr	1164(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    if (blockedTail != nullptr) {
    800017b8:	01093583          	ld	a1,16(s2)
    800017bc:	02058e63          	beqz	a1,800017f8 <_ZN9Semaphore7enqueueEP6Thread+0x70>
        thread->setPrevInQueue(blockedTail);
    800017c0:	00048513          	mv	a0,s1
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	494080e7          	jalr	1172(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
        blockedTail->setNextInQueue(thread);
    800017cc:	00048593          	mv	a1,s1
    800017d0:	01093503          	ld	a0,16(s2)
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	468080e7          	jalr	1128(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        blockedHead = thread;
    }
    blockedTail = thread;
    800017dc:	00993823          	sd	s1,16(s2)
}
    800017e0:	01813083          	ld	ra,24(sp)
    800017e4:	01013403          	ld	s0,16(sp)
    800017e8:	00813483          	ld	s1,8(sp)
    800017ec:	00013903          	ld	s2,0(sp)
    800017f0:	02010113          	addi	sp,sp,32
    800017f4:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    800017f8:	00000593          	li	a1,0
    800017fc:	00048513          	mv	a0,s1
    80001800:	00000097          	auipc	ra,0x0
    80001804:	458080e7          	jalr	1112(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
        blockedHead = thread;
    80001808:	00993423          	sd	s1,8(s2)
    8000180c:	fd1ff06f          	j	800017dc <_ZN9Semaphore7enqueueEP6Thread+0x54>

0000000080001810 <_ZN9Semaphore7dequeueEv>:

Thread* Semaphore::dequeue() {
    80001810:	fe010113          	addi	sp,sp,-32
    80001814:	00113c23          	sd	ra,24(sp)
    80001818:	00813823          	sd	s0,16(sp)
    8000181c:	00913423          	sd	s1,8(sp)
    80001820:	01213023          	sd	s2,0(sp)
    80001824:	02010413          	addi	s0,sp,32
    if (blockedHead == nullptr) return nullptr;
    80001828:	00853483          	ld	s1,8(a0)
    8000182c:	04048463          	beqz	s1,80001874 <_ZN9Semaphore7dequeueEv+0x64>
    80001830:	00050913          	mv	s2,a0
    Thread* thread = blockedHead;
    blockedHead = thread->getNextInQueue();
    80001834:	00048513          	mv	a0,s1
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	3cc080e7          	jalr	972(ra) # 80001c04 <_ZN6Thread14getNextInQueueEv>
    80001840:	00a93423          	sd	a0,8(s2)
    if (blockedHead != nullptr) {
    80001844:	04050663          	beqz	a0,80001890 <_ZN9Semaphore7dequeueEv+0x80>
        blockedHead->setPrevInQueue(nullptr);
    80001848:	00000593          	li	a1,0
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	40c080e7          	jalr	1036(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
    }
    else blockedTail = nullptr;
    thread->setNextInQueue(nullptr);
    80001854:	00000593          	li	a1,0
    80001858:	00048513          	mv	a0,s1
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	3e0080e7          	jalr	992(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    thread->setPrevInQueue(nullptr);
    80001864:	00000593          	li	a1,0
    80001868:	00048513          	mv	a0,s1
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	3ec080e7          	jalr	1004(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
    return thread;
}
    80001874:	00048513          	mv	a0,s1
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	00013903          	ld	s2,0(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret
    else blockedTail = nullptr;
    80001890:	00093823          	sd	zero,16(s2)
    80001894:	fc1ff06f          	j	80001854 <_ZN9Semaphore7dequeueEv+0x44>

0000000080001898 <_ZN9Semaphore4waitEP6Thread>:

int Semaphore::wait(Thread* caller) {
    if (closed) { return -1; }
    80001898:	00454783          	lbu	a5,4(a0)
    8000189c:	04079a63          	bnez	a5,800018f0 <_ZN9Semaphore4waitEP6Thread+0x58>
    if (value > 0) { value--; return 0; }
    800018a0:	00052783          	lw	a5,0(a0)
    800018a4:	00f05a63          	blez	a5,800018b8 <_ZN9Semaphore4waitEP6Thread+0x20>
    800018a8:	fff7879b          	addiw	a5,a5,-1
    800018ac:	00f52023          	sw	a5,0(a0)
    800018b0:	00000513          	li	a0,0
    800018b4:	00008067          	ret
int Semaphore::wait(Thread* caller) {
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    caller->sleepDelta = 1;
    800018c8:	00100793          	li	a5,1
    800018cc:	02f5bc23          	sd	a5,56(a1)
    caller->threadContext.x[10] = 0;
    800018d0:	0805b823          	sd	zero,144(a1)
    enqueue(caller);
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	eb4080e7          	jalr	-332(ra) # 80001788 <_ZN9Semaphore7enqueueEP6Thread>
    return 1;
    800018dc:	00100513          	li	a0,1
}
    800018e0:	00813083          	ld	ra,8(sp)
    800018e4:	00013403          	ld	s0,0(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret
    if (closed) { return -1; }
    800018f0:	fff00513          	li	a0,-1
}
    800018f4:	00008067          	ret

00000000800018f8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    value+=1;
    800018f8:	00052783          	lw	a5,0(a0)
    800018fc:	0017879b          	addiw	a5,a5,1
    80001900:	0007871b          	sext.w	a4,a5
    80001904:	00f52023          	sw	a5,0(a0)
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001908:	00853783          	ld	a5,8(a0)
    8000190c:	06078063          	beqz	a5,8000196c <_ZN9Semaphore6signalEv+0x74>
int Semaphore::signal() {
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	02010413          	addi	s0,sp,32
    80001924:	00050493          	mv	s1,a0
    if (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001928:	0387a783          	lw	a5,56(a5)
    8000192c:	00f75e63          	bge	a4,a5,80001948 <_ZN9Semaphore6signalEv+0x50>
        Thread* thread = dequeue();
        value -= (int)thread->sleepDelta;
        Scheduler::Put(thread);
    }
    return 0;
}
    80001930:	00000513          	li	a0,0
    80001934:	01813083          	ld	ra,24(sp)
    80001938:	01013403          	ld	s0,16(sp)
    8000193c:	00813483          	ld	s1,8(sp)
    80001940:	02010113          	addi	sp,sp,32
    80001944:	00008067          	ret
        Thread* thread = dequeue();
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	ec8080e7          	jalr	-312(ra) # 80001810 <_ZN9Semaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001950:	03853703          	ld	a4,56(a0)
    80001954:	0004a783          	lw	a5,0(s1)
    80001958:	40e787bb          	subw	a5,a5,a4
    8000195c:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001960:	00000097          	auipc	ra,0x0
    80001964:	4e4080e7          	jalr	1252(ra) # 80001e44 <_ZN9Scheduler3PutEP6Thread>
    80001968:	fc9ff06f          	j	80001930 <_ZN9Semaphore6signalEv+0x38>
}
    8000196c:	00000513          	li	a0,0
    80001970:	00008067          	ret

0000000080001974 <_ZN9Semaphore5waitNEP6Threadj>:

int Semaphore::waitN(Thread* caller, unsigned n) {
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001974:	00454783          	lbu	a5,4(a0)
    80001978:	02079063          	bnez	a5,80001998 <_ZN9Semaphore5waitNEP6Threadj+0x24>
    if (value >= (int)n) { value -= (int)n; return 0; }
    8000197c:	00052783          	lw	a5,0(a0)
    80001980:	0006071b          	sext.w	a4,a2
    80001984:	02e7c263          	blt	a5,a4,800019a8 <_ZN9Semaphore5waitNEP6Threadj+0x34>
    80001988:	40e787bb          	subw	a5,a5,a4
    8000198c:	00f52023          	sw	a5,0(a0)
    80001990:	00000513          	li	a0,0
    caller->sleepDelta = (time_t)n;
    caller->threadContext.x[10] = 0;
    enqueue(caller);
    return 1;
}
    80001994:	00008067          	ret
    if (closed) { caller->threadContext.x[10] = (size_t)-1; return -1; }
    80001998:	fff00793          	li	a5,-1
    8000199c:	08f5b823          	sd	a5,144(a1)
    800019a0:	fff00513          	li	a0,-1
    800019a4:	00008067          	ret
int Semaphore::waitN(Thread* caller, unsigned n) {
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00113423          	sd	ra,8(sp)
    800019b0:	00813023          	sd	s0,0(sp)
    800019b4:	01010413          	addi	s0,sp,16
    caller->sleepDelta = (time_t)n;
    800019b8:	02061613          	slli	a2,a2,0x20
    800019bc:	02065613          	srli	a2,a2,0x20
    800019c0:	02c5bc23          	sd	a2,56(a1)
    caller->threadContext.x[10] = 0;
    800019c4:	0805b823          	sd	zero,144(a1)
    enqueue(caller);
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	dc0080e7          	jalr	-576(ra) # 80001788 <_ZN9Semaphore7enqueueEP6Thread>
    return 1;
    800019d0:	00100513          	li	a0,1
}
    800019d4:	00813083          	ld	ra,8(sp)
    800019d8:	00013403          	ld	s0,0(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN9Semaphore7signalNEj>:

int Semaphore::signalN(unsigned n) {
    800019e4:	fe010113          	addi	sp,sp,-32
    800019e8:	00113c23          	sd	ra,24(sp)
    800019ec:	00813823          	sd	s0,16(sp)
    800019f0:	00913423          	sd	s1,8(sp)
    800019f4:	02010413          	addi	s0,sp,32
    800019f8:	00050493          	mv	s1,a0
    value += (int)n;
    800019fc:	00052783          	lw	a5,0(a0)
    80001a00:	00b787bb          	addw	a5,a5,a1
    80001a04:	00f52023          	sw	a5,0(a0)
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a08:	0084b783          	ld	a5,8(s1)
    80001a0c:	02078c63          	beqz	a5,80001a44 <_ZN9Semaphore7signalNEj+0x60>
    80001a10:	0004a703          	lw	a4,0(s1)
    80001a14:	0387a783          	lw	a5,56(a5)
    80001a18:	02f74663          	blt	a4,a5,80001a44 <_ZN9Semaphore7signalNEj+0x60>
        Thread* thread = dequeue();
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	df0080e7          	jalr	-528(ra) # 80001810 <_ZN9Semaphore7dequeueEv>
        value -= (int)thread->sleepDelta;
    80001a28:	03853703          	ld	a4,56(a0)
    80001a2c:	0004a783          	lw	a5,0(s1)
    80001a30:	40e787bb          	subw	a5,a5,a4
    80001a34:	00f4a023          	sw	a5,0(s1)
        Scheduler::Put(thread);
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	40c080e7          	jalr	1036(ra) # 80001e44 <_ZN9Scheduler3PutEP6Thread>
    while (blockedHead != nullptr && value >= (int)blockedHead->sleepDelta) {
    80001a40:	fc9ff06f          	j	80001a08 <_ZN9Semaphore7signalNEj+0x24>
    }
    return 0;
}
    80001a44:	00000513          	li	a0,0
    80001a48:	01813083          	ld	ra,24(sp)
    80001a4c:	01013403          	ld	s0,16(sp)
    80001a50:	00813483          	ld	s1,8(sp)
    80001a54:	02010113          	addi	sp,sp,32
    80001a58:	00008067          	ret

0000000080001a5c <_ZN9Semaphore5closeEv>:

int Semaphore::close() {
    80001a5c:	fe010113          	addi	sp,sp,-32
    80001a60:	00113c23          	sd	ra,24(sp)
    80001a64:	00813823          	sd	s0,16(sp)
    80001a68:	00913423          	sd	s1,8(sp)
    80001a6c:	02010413          	addi	s0,sp,32
    80001a70:	00050493          	mv	s1,a0
    closed = true;
    80001a74:	00100793          	li	a5,1
    80001a78:	00f50223          	sb	a5,4(a0)
    Thread* thread = dequeue();
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	d94080e7          	jalr	-620(ra) # 80001810 <_ZN9Semaphore7dequeueEv>
    while (thread != nullptr) {
    80001a84:	02050263          	beqz	a0,80001aa8 <_ZN9Semaphore5closeEv+0x4c>
        thread->threadContext.x[10] = (size_t)-1;
    80001a88:	fff00793          	li	a5,-1
    80001a8c:	08f53823          	sd	a5,144(a0)
        Scheduler::Put(thread);
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	3b4080e7          	jalr	948(ra) # 80001e44 <_ZN9Scheduler3PutEP6Thread>
        thread = dequeue();
    80001a98:	00048513          	mv	a0,s1
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	d74080e7          	jalr	-652(ra) # 80001810 <_ZN9Semaphore7dequeueEv>
    while (thread != nullptr) {
    80001aa4:	fe1ff06f          	j	80001a84 <_ZN9Semaphore5closeEv+0x28>
    }
    return 0;
    80001aa8:	00000513          	li	a0,0
    80001aac:	01813083          	ld	ra,24(sp)
    80001ab0:	01013403          	ld	s0,16(sp)
    80001ab4:	00813483          	ld	s1,8(sp)
    80001ab8:	02010113          	addi	sp,sp,32
    80001abc:	00008067          	ret

0000000080001ac0 <_ZN6Thread16threadTrampolineEPS_>:
    sstatus_val |= (1UL << 8); // SPP=1
    sstatus_val |= (1UL << 5); // SPIE=1
    threadContext.sstatus = sstatus_val;
}

void Thread::threadTrampoline(Thread* t) {
    80001ac0:	fe010113          	addi	sp,sp,-32
    80001ac4:	00113c23          	sd	ra,24(sp)
    80001ac8:	00813823          	sd	s0,16(sp)
    80001acc:	00913423          	sd	s1,8(sp)
    80001ad0:	02010413          	addi	s0,sp,32
    80001ad4:	00050493          	mv	s1,a0
    if (t->body) t->body(t->arg);
    80001ad8:	00053783          	ld	a5,0(a0)
    80001adc:	00078663          	beqz	a5,80001ae8 <_ZN6Thread16threadTrampolineEPS_+0x28>
    80001ae0:	00853503          	ld	a0,8(a0)
    80001ae4:	000780e7          	jalr	a5
    Scheduler::ThreadExit(t);
    80001ae8:	00048513          	mv	a0,s1
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	304080e7          	jalr	772(ra) # 80001df0 <_ZN9Scheduler10ThreadExitEP6Thread>
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	02010113          	addi	sp,sp,32
    80001b04:	00008067          	ret

0000000080001b08 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00813423          	sd	s0,8(sp)
    80001b10:	01010413          	addi	s0,sp,16
}
    80001b14:	00813403          	ld	s0,8(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN6Thread4initEv>:
void Thread::init() {
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00813423          	sd	s0,8(sp)
    80001b28:	01010413          	addi	s0,sp,16
    body = nullptr;
    80001b2c:	00053023          	sd	zero,0(a0)
    arg = nullptr;
    80001b30:	00053423          	sd	zero,8(a0)
    parent = nullptr;
    80001b34:	00053823          	sd	zero,16(a0)
    prev = nullptr;
    80001b38:	00053c23          	sd	zero,24(a0)
    next = nullptr;
    80001b3c:	02053023          	sd	zero,32(a0)
    stackPtr = nullptr;
    80001b40:	02053423          	sd	zero,40(a0)
    supervisorSp = nullptr;
    80001b44:	02053823          	sd	zero,48(a0)
    sleepDelta = 0;
    80001b48:	02053c23          	sd	zero,56(a0)
    for (int i = 0; i < 32; i++) threadContext.x[i] = 0;
    80001b4c:	00000713          	li	a4,0
    80001b50:	01f00793          	li	a5,31
    80001b54:	00e7ce63          	blt	a5,a4,80001b70 <_ZN6Thread4initEv+0x50>
    80001b58:	00870793          	addi	a5,a4,8
    80001b5c:	00379793          	slli	a5,a5,0x3
    80001b60:	00f507b3          	add	a5,a0,a5
    80001b64:	0007b023          	sd	zero,0(a5)
    80001b68:	0017071b          	addiw	a4,a4,1
    80001b6c:	fe5ff06f          	j	80001b50 <_ZN6Thread4initEv+0x30>
    threadContext.sepc = 0;
    80001b70:	14053023          	sd	zero,320(a0)
    threadContext.sstatus = 0;
    80001b74:	14053423          	sd	zero,328(a0)
    threadContext.pc = 0;
    80001b78:	14053823          	sd	zero,336(a0)
}
    80001b7c:	00813403          	ld	s0,8(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_ZN6Thread11copyContextEPm>:
void Thread::copyContext(size_t* ctx) {
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00813423          	sd	s0,8(sp)
    80001b90:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001b94:	00000713          	li	a4,0
    80001b98:	01f00793          	li	a5,31
    80001b9c:	02e7c463          	blt	a5,a4,80001bc4 <_ZN6Thread11copyContextEPm+0x3c>
        threadContext.x[i] = cont->x[i];
    80001ba0:	00371793          	slli	a5,a4,0x3
    80001ba4:	00f587b3          	add	a5,a1,a5
    80001ba8:	0007b683          	ld	a3,0(a5)
    80001bac:	00870793          	addi	a5,a4,8
    80001bb0:	00379793          	slli	a5,a5,0x3
    80001bb4:	00f507b3          	add	a5,a0,a5
    80001bb8:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    80001bbc:	0017071b          	addiw	a4,a4,1
    80001bc0:	fd9ff06f          	j	80001b98 <_ZN6Thread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    80001bc4:	02853783          	ld	a5,40(a0)
    80001bc8:	04f53823          	sd	a5,80(a0)
    threadContext.sepc = cont->sepc;
    80001bcc:	1005b783          	ld	a5,256(a1)
    80001bd0:	14f53023          	sd	a5,320(a0)
    threadContext.sstatus =cont->sstatus;
    80001bd4:	1085b783          	ld	a5,264(a1)
    80001bd8:	14f53423          	sd	a5,328(a0)
}
    80001bdc:	00813403          	ld	s0,8(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN6Thread10getContextEv>:
size_t* Thread::getContext() {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00813423          	sd	s0,8(sp)
    80001bf0:	01010413          	addi	s0,sp,16
}
    80001bf4:	04050513          	addi	a0,a0,64
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN6Thread14getNextInQueueEv>:
Thread* Thread::getNextInQueue(){
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
}
    80001c10:	02053503          	ld	a0,32(a0)
    80001c14:	00813403          	ld	s0,8(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN6Thread14getPrevInQueueEv>:
Thread* Thread::getPrevInQueue(){
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16
}
    80001c2c:	01853503          	ld	a0,24(a0)
    80001c30:	00813403          	ld	s0,8(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <_ZN6Thread14setNextInQueueEPS_>:
void Thread::setNextInQueue(Thread* next){
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00813423          	sd	s0,8(sp)
    80001c44:	01010413          	addi	s0,sp,16
    this->next = next;
    80001c48:	02b53023          	sd	a1,32(a0)
}
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_ZN6Thread14setPrevInQueueEPS_>:
void Thread::setPrevInQueue(Thread* prev){
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00813423          	sd	s0,8(sp)
    80001c60:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001c64:	00b53c23          	sd	a1,24(a0)
}
    80001c68:	00813403          	ld	s0,8(sp)
    80001c6c:	01010113          	addi	sp,sp,16
    80001c70:	00008067          	ret

0000000080001c74 <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    80001c74:	fe010113          	addi	sp,sp,-32
    80001c78:	00113c23          	sd	ra,24(sp)
    80001c7c:	00813823          	sd	s0,16(sp)
    80001c80:	00913423          	sd	s1,8(sp)
    80001c84:	01213023          	sd	s2,0(sp)
    80001c88:	02010413          	addi	s0,sp,32
    80001c8c:	00050493          	mv	s1,a0
    80001c90:	00060913          	mv	s2,a2
    setNextInQueue(next);
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	fa8080e7          	jalr	-88(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001c9c:	00090593          	mv	a1,s2
    80001ca0:	00048513          	mv	a0,s1
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	fb4080e7          	jalr	-76(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
}
    80001cac:	01813083          	ld	ra,24(sp)
    80001cb0:	01013403          	ld	s0,16(sp)
    80001cb4:	00813483          	ld	s1,8(sp)
    80001cb8:	00013903          	ld	s2,0(sp)
    80001cbc:	02010113          	addi	sp,sp,32
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN6Thread5setupEPS_Pm>:
void Thread::setup(Thread* parentThread, size_t* stack_top) {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    parent = parentThread;
    80001cd0:	00b53823          	sd	a1,16(a0)
    stackPtr = stack_top;
    80001cd4:	02c53423          	sd	a2,40(a0)
    threadContext.x[2] = reinterpret_cast<size_t>(stack_top);
    80001cd8:	04c53823          	sd	a2,80(a0)
    threadContext.sepc  = reinterpret_cast<size_t>(&threadTrampoline);
    80001cdc:	00000797          	auipc	a5,0x0
    80001ce0:	de478793          	addi	a5,a5,-540 # 80001ac0 <_ZN6Thread16threadTrampolineEPS_>
    80001ce4:	14f53023          	sd	a5,320(a0)
    threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001ce8:	08a53823          	sd	a0,144(a0)
    __asm__ volatile("mv %0, gp" : "=r"(gp_val));
    80001cec:	00018793          	mv	a5,gp
    threadContext.x[3] = gp_val;
    80001cf0:	04f53c23          	sd	a5,88(a0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    80001cf4:	100027f3          	csrr	a5,sstatus
    sstatus_val |= (1UL << 5); // SPIE=1
    80001cf8:	1207e793          	ori	a5,a5,288
    threadContext.sstatus = sstatus_val;
    80001cfc:	14f53423          	sd	a5,328(a0)
}
    80001d00:	00813403          	ld	s0,8(sp)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret

0000000080001d0c <_ZN9Scheduler10GetRunningEv>:
Thread* Scheduler::sleepQueue = nullptr;
time_t  Scheduler::runningThreadTimeLeft = DEFAULT_TIME_SLICE;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    return running;
}
    80001d18:	00004517          	auipc	a0,0x4
    80001d1c:	c7853503          	ld	a0,-904(a0) # 80005990 <_ZN9Scheduler7runningE>
    80001d20:	00813403          	ld	s0,8(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_ZN9Scheduler5yieldEP6ThreadS1_>:
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00113423          	sd	ra,8(sp)
    80001d34:	00813023          	sd	s0,0(sp)
    80001d38:	01010413          	addi	s0,sp,16
    80001d3c:	00058513          	mv	a0,a1
    running = newThread;
    80001d40:	00004797          	auipc	a5,0x4
    80001d44:	c4b7b823          	sd	a1,-944(a5) # 80005990 <_ZN9Scheduler7runningE>
    restoreContext(newThread->getContext());
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	ea0080e7          	jalr	-352(ra) # 80001be8 <_ZN6Thread10getContextEv>
    80001d50:	fffff097          	auipc	ra,0xfffff
    80001d54:	344080e7          	jalr	836(ra) # 80001094 <restoreContext>
}
    80001d58:	00813083          	ld	ra,8(sp)
    80001d5c:	00013403          	ld	s0,0(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZN9Scheduler7GetNextEv>:
        next = t->getParent();
        if (next == nullptr) { while (true) {} }
    }
    yield(t, next);
}
Thread* Scheduler::GetNext() {
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00113c23          	sd	ra,24(sp)
    80001d70:	00813823          	sd	s0,16(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	02010413          	addi	s0,sp,32
    if (readyQueue == nullptr) return nullptr;
    80001d7c:	00004497          	auipc	s1,0x4
    80001d80:	c1c4b483          	ld	s1,-996(s1) # 80005998 <_ZN9Scheduler10readyQueueE>
    80001d84:	04048463          	beqz	s1,80001dcc <_ZN9Scheduler7GetNextEv+0x64>
    Thread* toRet = readyQueue;
    readyQueue = readyQueue->getNextInQueue();
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	e78080e7          	jalr	-392(ra) # 80001c04 <_ZN6Thread14getNextInQueueEv>
    80001d94:	00004797          	auipc	a5,0x4
    80001d98:	c0a7b223          	sd	a0,-1020(a5) # 80005998 <_ZN9Scheduler10readyQueueE>
    if (readyQueue != nullptr) readyQueue->setPrevInQueue(nullptr);
    80001d9c:	04050463          	beqz	a0,80001de4 <_ZN9Scheduler7GetNextEv+0x7c>
    80001da0:	00000593          	li	a1,0
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	eb4080e7          	jalr	-332(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
    else readyQueueEnd = nullptr;
    toRet->setNextInQueue(nullptr);
    80001dac:	00000593          	li	a1,0
    80001db0:	00048513          	mv	a0,s1
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	e88080e7          	jalr	-376(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    toRet->setPrevInQueue(nullptr);
    80001dbc:	00000593          	li	a1,0
    80001dc0:	00048513          	mv	a0,s1
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	e94080e7          	jalr	-364(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
    return toRet;
}
    80001dcc:	00048513          	mv	a0,s1
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	01013403          	ld	s0,16(sp)
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret
    else readyQueueEnd = nullptr;
    80001de4:	00004797          	auipc	a5,0x4
    80001de8:	ba07be23          	sd	zero,-1092(a5) # 800059a0 <_ZN9Scheduler13readyQueueEndE>
    80001dec:	fc1ff06f          	j	80001dac <_ZN9Scheduler7GetNextEv+0x44>

0000000080001df0 <_ZN9Scheduler10ThreadExitEP6Thread>:
void Scheduler::ThreadExit(Thread* t) {
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	02010413          	addi	s0,sp,32
    80001e04:	00050493          	mv	s1,a0
    Thread* next = GetNext();
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	f60080e7          	jalr	-160(ra) # 80001d68 <_ZN9Scheduler7GetNextEv>
    80001e10:	00050593          	mv	a1,a0
    if (next == nullptr) {
    80001e14:	02050263          	beqz	a0,80001e38 <_ZN9Scheduler10ThreadExitEP6Thread+0x48>
    yield(t, next);
    80001e18:	00048513          	mv	a0,s1
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	f10080e7          	jalr	-240(ra) # 80001d2c <_ZN9Scheduler5yieldEP6ThreadS1_>
}
    80001e24:	01813083          	ld	ra,24(sp)
    80001e28:	01013403          	ld	s0,16(sp)
    80001e2c:	00813483          	ld	s1,8(sp)
    80001e30:	02010113          	addi	sp,sp,32
    80001e34:	00008067          	ret
    Thread();
    void copyContext(size_t* ctx);
    void init();
    size_t* getStackTop() { return stackPtr; }
    size_t* getContext();
    Thread* getParent() { return parent; }
    80001e38:	0104b583          	ld	a1,16(s1)
        if (next == nullptr) { while (true) {} }
    80001e3c:	fc059ee3          	bnez	a1,80001e18 <_ZN9Scheduler10ThreadExitEP6Thread+0x28>
    80001e40:	0000006f          	j	80001e40 <_ZN9Scheduler10ThreadExitEP6Thread+0x50>

0000000080001e44 <_ZN9Scheduler3PutEP6Thread>:
void Scheduler::Put(Thread* thread) {
    80001e44:	fe010113          	addi	sp,sp,-32
    80001e48:	00113c23          	sd	ra,24(sp)
    80001e4c:	00813823          	sd	s0,16(sp)
    80001e50:	00913423          	sd	s1,8(sp)
    80001e54:	02010413          	addi	s0,sp,32
    80001e58:	00050493          	mv	s1,a0
    thread->setNextInQueue(nullptr);
    80001e5c:	00000593          	li	a1,0
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	ddc080e7          	jalr	-548(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    if (readyQueueEnd != nullptr) {
    80001e68:	00004597          	auipc	a1,0x4
    80001e6c:	b385b583          	ld	a1,-1224(a1) # 800059a0 <_ZN9Scheduler13readyQueueEndE>
    80001e70:	04058063          	beqz	a1,80001eb0 <_ZN9Scheduler3PutEP6Thread+0x6c>
        thread->setPrevInQueue(readyQueueEnd);
    80001e74:	00048513          	mv	a0,s1
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	de0080e7          	jalr	-544(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
        readyQueueEnd->setNextInQueue(thread);
    80001e80:	00048593          	mv	a1,s1
    80001e84:	00004517          	auipc	a0,0x4
    80001e88:	b1c53503          	ld	a0,-1252(a0) # 800059a0 <_ZN9Scheduler13readyQueueEndE>
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	db0080e7          	jalr	-592(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    } else {
        thread->setPrevInQueue(nullptr);
        readyQueue = thread;
    }
    readyQueueEnd = thread;
    80001e94:	00004797          	auipc	a5,0x4
    80001e98:	b097b623          	sd	s1,-1268(a5) # 800059a0 <_ZN9Scheduler13readyQueueEndE>
}
    80001e9c:	01813083          	ld	ra,24(sp)
    80001ea0:	01013403          	ld	s0,16(sp)
    80001ea4:	00813483          	ld	s1,8(sp)
    80001ea8:	02010113          	addi	sp,sp,32
    80001eac:	00008067          	ret
        thread->setPrevInQueue(nullptr);
    80001eb0:	00000593          	li	a1,0
    80001eb4:	00048513          	mv	a0,s1
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	da0080e7          	jalr	-608(ra) # 80001c58 <_ZN6Thread14setPrevInQueueEPS_>
        readyQueue = thread;
    80001ec0:	00004797          	auipc	a5,0x4
    80001ec4:	ac97bc23          	sd	s1,-1320(a5) # 80005998 <_ZN9Scheduler10readyQueueE>
    80001ec8:	fcdff06f          	j	80001e94 <_ZN9Scheduler3PutEP6Thread+0x50>

0000000080001ecc <_ZN9Scheduler15SetupStartStackEv>:

extern "C" char end[];

void Scheduler::SetupStartStack() {
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00813423          	sd	s0,8(sp)
    80001ed4:	01010413          	addi	s0,sp,16

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80001ed8:	00004797          	auipc	a5,0x4
    80001edc:	a587b783          	ld	a5,-1448(a5) # 80005930 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ee0:	00778793          	addi	a5,a5,7
    80001ee4:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80001ee8:	00004717          	auipc	a4,0x4
    80001eec:	acf73023          	sd	a5,-1344(a4) # 800059a8 <_ZN9Scheduler12stack_cursorE>
    );
}
    80001ef0:	00813403          	ld	s0,8(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN9Scheduler16SetupStartThreadEv>:

void Scheduler::SetupStartThread() {
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00113423          	sd	ra,8(sp)
    80001f04:	00813023          	sd	s0,0(sp)
    80001f08:	01010413          	addi	s0,sp,16
    SetupStartStack();
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	fc0080e7          	jalr	-64(ra) # 80001ecc <_ZN9Scheduler15SetupStartStackEv>
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	27c080e7          	jalr	636(ra) # 80002190 <_ZN15MemoryAllocator11GetInstanceEv>
    80001f1c:	15800593          	li	a1,344
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	2cc080e7          	jalr	716(ra) # 800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001f28:	00004797          	auipc	a5,0x4
    80001f2c:	a6a7b423          	sd	a0,-1432(a5) # 80005990 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	cb8080e7          	jalr	-840(ra) # 80001be8 <_ZN6Thread10getContextEv>
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	1ec080e7          	jalr	492(ra) # 80001124 <setupStartContext>
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    80001f40:	00200793          	li	a5,2
    80001f44:	00004717          	auipc	a4,0x4
    80001f48:	9cf73623          	sd	a5,-1588(a4) # 80005910 <_ZN9Scheduler21runningThreadTimeLeftE>
}
    80001f4c:	00813083          	ld	ra,8(sp)
    80001f50:	00013403          	ld	s0,0(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <_ZN9Scheduler12AddNewThreadEP6Thread>:

void Scheduler::AddNewThread(Thread* thread) {
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00813423          	sd	s0,8(sp)
    80001f64:	01010413          	addi	s0,sp,16
    size_t* getStackTop() { return stackPtr; }
    80001f68:	02853783          	ld	a5,40(a0)
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80001f6c:	04f53823          	sd	a5,80(a0)
}
    80001f70:	00813403          	ld	s0,8(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN9Scheduler9timerTickEP6Thread>:

void Scheduler::timerTick(Thread* current) {
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	01213023          	sd	s2,0(sp)
    80001f90:	02010413          	addi	s0,sp,32
    80001f94:	00050913          	mv	s2,a0
    __asm__ volatile("csrw sip, zero");
    80001f98:	14401073          	csrw	sip,zero

    if (sleepQueue != nullptr) {
    80001f9c:	00004797          	auipc	a5,0x4
    80001fa0:	a147b783          	ld	a5,-1516(a5) # 800059b0 <_ZN9Scheduler10sleepQueueE>
    80001fa4:	04078e63          	beqz	a5,80002000 <_ZN9Scheduler9timerTickEP6Thread+0x84>
        if (sleepQueue->sleepDelta > 0) sleepQueue->sleepDelta--;
    80001fa8:	0387b703          	ld	a4,56(a5)
    80001fac:	04070063          	beqz	a4,80001fec <_ZN9Scheduler9timerTickEP6Thread+0x70>
    80001fb0:	fff70713          	addi	a4,a4,-1
    80001fb4:	02e7bc23          	sd	a4,56(a5)
    80001fb8:	0340006f          	j	80001fec <_ZN9Scheduler9timerTickEP6Thread+0x70>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
            Thread* waking = sleepQueue;
            sleepQueue = waking->getNextInQueue();
    80001fbc:	00048513          	mv	a0,s1
    80001fc0:	00000097          	auipc	ra,0x0
    80001fc4:	c44080e7          	jalr	-956(ra) # 80001c04 <_ZN6Thread14getNextInQueueEv>
    80001fc8:	00004797          	auipc	a5,0x4
    80001fcc:	9ea7b423          	sd	a0,-1560(a5) # 800059b0 <_ZN9Scheduler10sleepQueueE>
            waking->setNextInQueue(nullptr);
    80001fd0:	00000593          	li	a1,0
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	c64080e7          	jalr	-924(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
            Put(waking);
    80001fe0:	00048513          	mv	a0,s1
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	e60080e7          	jalr	-416(ra) # 80001e44 <_ZN9Scheduler3PutEP6Thread>
        while (sleepQueue != nullptr && sleepQueue->sleepDelta == 0) {
    80001fec:	00004497          	auipc	s1,0x4
    80001ff0:	9c44b483          	ld	s1,-1596(s1) # 800059b0 <_ZN9Scheduler10sleepQueueE>
    80001ff4:	00048663          	beqz	s1,80002000 <_ZN9Scheduler9timerTickEP6Thread+0x84>
    80001ff8:	0384b783          	ld	a5,56(s1)
    80001ffc:	fc0780e3          	beqz	a5,80001fbc <_ZN9Scheduler9timerTickEP6Thread+0x40>
        }
    }

    if (current == nullptr) return;
    80002000:	02090463          	beqz	s2,80002028 <_ZN9Scheduler9timerTickEP6Thread+0xac>

    if (runningThreadTimeLeft > 0) runningThreadTimeLeft--;
    80002004:	00004797          	auipc	a5,0x4
    80002008:	90c7b783          	ld	a5,-1780(a5) # 80005910 <_ZN9Scheduler21runningThreadTimeLeftE>
    8000200c:	00078863          	beqz	a5,8000201c <_ZN9Scheduler9timerTickEP6Thread+0xa0>
    80002010:	fff78793          	addi	a5,a5,-1
    80002014:	00004717          	auipc	a4,0x4
    80002018:	8ef73e23          	sd	a5,-1796(a4) # 80005910 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (runningThreadTimeLeft > 0) return;
    8000201c:	00004797          	auipc	a5,0x4
    80002020:	8f47b783          	ld	a5,-1804(a5) # 80005910 <_ZN9Scheduler21runningThreadTimeLeftE>
    80002024:	00078e63          	beqz	a5,80002040 <_ZN9Scheduler9timerTickEP6Thread+0xc4>
    Thread* next = GetNext();
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    if (next == nullptr) return;
    Put(current);
    yield(current, next);
}
    80002028:	01813083          	ld	ra,24(sp)
    8000202c:	01013403          	ld	s0,16(sp)
    80002030:	00813483          	ld	s1,8(sp)
    80002034:	00013903          	ld	s2,0(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret
    Thread* next = GetNext();
    80002040:	00000097          	auipc	ra,0x0
    80002044:	d28080e7          	jalr	-728(ra) # 80001d68 <_ZN9Scheduler7GetNextEv>
    80002048:	00050493          	mv	s1,a0
    runningThreadTimeLeft = DEFAULT_TIME_SLICE;
    8000204c:	00200793          	li	a5,2
    80002050:	00004717          	auipc	a4,0x4
    80002054:	8cf73023          	sd	a5,-1856(a4) # 80005910 <_ZN9Scheduler21runningThreadTimeLeftE>
    if (next == nullptr) return;
    80002058:	fc0508e3          	beqz	a0,80002028 <_ZN9Scheduler9timerTickEP6Thread+0xac>
    Put(current);
    8000205c:	00090513          	mv	a0,s2
    80002060:	00000097          	auipc	ra,0x0
    80002064:	de4080e7          	jalr	-540(ra) # 80001e44 <_ZN9Scheduler3PutEP6Thread>
    yield(current, next);
    80002068:	00048593          	mv	a1,s1
    8000206c:	00090513          	mv	a0,s2
    80002070:	00000097          	auipc	ra,0x0
    80002074:	cbc080e7          	jalr	-836(ra) # 80001d2c <_ZN9Scheduler5yieldEP6ThreadS1_>
    80002078:	fb1ff06f          	j	80002028 <_ZN9Scheduler9timerTickEP6Thread+0xac>

000000008000207c <_ZN9Scheduler5sleepEP6Threadm>:

void Scheduler::sleep(Thread* thread, time_t duration) {
    8000207c:	fd010113          	addi	sp,sp,-48
    80002080:	02113423          	sd	ra,40(sp)
    80002084:	02813023          	sd	s0,32(sp)
    80002088:	00913c23          	sd	s1,24(sp)
    8000208c:	01213823          	sd	s2,16(sp)
    80002090:	01313423          	sd	s3,8(sp)
    80002094:	01413023          	sd	s4,0(sp)
    80002098:	03010413          	addi	s0,sp,48
    8000209c:	00050a13          	mv	s4,a0
    800020a0:	00058913          	mv	s2,a1
    Thread* previous = nullptr;
    Thread* current  = sleepQueue;
    800020a4:	00004497          	auipc	s1,0x4
    800020a8:	90c4b483          	ld	s1,-1780(s1) # 800059b0 <_ZN9Scheduler10sleepQueueE>
    Thread* previous = nullptr;
    800020ac:	00000993          	li	s3,0
    time_t  remaining = duration;

    while (current != nullptr && current->sleepDelta <= remaining) {
    800020b0:	02048463          	beqz	s1,800020d8 <_ZN9Scheduler5sleepEP6Threadm+0x5c>
    800020b4:	0384b783          	ld	a5,56(s1)
    800020b8:	02f96063          	bltu	s2,a5,800020d8 <_ZN9Scheduler5sleepEP6Threadm+0x5c>
        remaining -= current->sleepDelta;
    800020bc:	40f90933          	sub	s2,s2,a5
        previous = current;
        current  = current->getNextInQueue();
    800020c0:	00048513          	mv	a0,s1
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	b40080e7          	jalr	-1216(ra) # 80001c04 <_ZN6Thread14getNextInQueueEv>
        previous = current;
    800020cc:	00048993          	mv	s3,s1
        current  = current->getNextInQueue();
    800020d0:	00050493          	mv	s1,a0
    while (current != nullptr && current->sleepDelta <= remaining) {
    800020d4:	fddff06f          	j	800020b0 <_ZN9Scheduler5sleepEP6Threadm+0x34>
    }

    thread->sleepDelta = remaining;
    800020d8:	032a3c23          	sd	s2,56(s4)
    thread->setNextInQueue(current);
    800020dc:	00048593          	mv	a1,s1
    800020e0:	000a0513          	mv	a0,s4
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	b58080e7          	jalr	-1192(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    if (previous == nullptr) sleepQueue = thread;
    800020ec:	04098263          	beqz	s3,80002130 <_ZN9Scheduler5sleepEP6Threadm+0xb4>
    else previous->setNextInQueue(thread);
    800020f0:	000a0593          	mv	a1,s4
    800020f4:	00098513          	mv	a0,s3
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	b44080e7          	jalr	-1212(ra) # 80001c3c <_ZN6Thread14setNextInQueueEPS_>
    if (current != nullptr) current->sleepDelta -= remaining;
    80002100:	00048863          	beqz	s1,80002110 <_ZN9Scheduler5sleepEP6Threadm+0x94>
    80002104:	0384b583          	ld	a1,56(s1)
    80002108:	41258933          	sub	s2,a1,s2
    8000210c:	0324bc23          	sd	s2,56(s1)
}
    80002110:	02813083          	ld	ra,40(sp)
    80002114:	02013403          	ld	s0,32(sp)
    80002118:	01813483          	ld	s1,24(sp)
    8000211c:	01013903          	ld	s2,16(sp)
    80002120:	00813983          	ld	s3,8(sp)
    80002124:	00013a03          	ld	s4,0(sp)
    80002128:	03010113          	addi	sp,sp,48
    8000212c:	00008067          	ret
    if (previous == nullptr) sleepQueue = thread;
    80002130:	00004797          	auipc	a5,0x4
    80002134:	8947b023          	sd	s4,-1920(a5) # 800059b0 <_ZN9Scheduler10sleepQueueE>
    80002138:	fc9ff06f          	j	80002100 <_ZN9Scheduler5sleepEP6Threadm+0x84>

000000008000213c <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80002148:	00003797          	auipc	a5,0x3
    8000214c:	7f07b783          	ld	a5,2032(a5) # 80005938 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002150:	0007b783          	ld	a5,0(a5)
    80002154:	00003717          	auipc	a4,0x3
    80002158:	7cc73703          	ld	a4,1996(a4) # 80005920 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000215c:	00073703          	ld	a4,0(a4)
    80002160:	40e787b3          	sub	a5,a5,a4
    80002164:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    80002168:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    8000216c:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    80002170:	00100693          	li	a3,1
    80002174:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    80002178:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    8000217c:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    80002180:	00073423          	sd	zero,8(a4)
}
    80002184:	00813403          	ld	s0,8(sp)
    80002188:	01010113          	addi	sp,sp,16
    8000218c:	00008067          	ret

0000000080002190 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    80002190:	00004797          	auipc	a5,0x4
    80002194:	8287c783          	lbu	a5,-2008(a5) # 800059b8 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80002198:	00078863          	beqz	a5,800021a8 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    8000219c:	00004517          	auipc	a0,0x4
    800021a0:	82450513          	addi	a0,a0,-2012 # 800059c0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800021a4:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    800021a8:	ff010113          	addi	sp,sp,-16
    800021ac:	00113423          	sd	ra,8(sp)
    800021b0:	00813023          	sd	s0,0(sp)
    800021b4:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    800021b8:	00004517          	auipc	a0,0x4
    800021bc:	80850513          	addi	a0,a0,-2040 # 800059c0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	f7c080e7          	jalr	-132(ra) # 8000213c <_ZN15MemoryAllocatorC1Ev>
    800021c8:	00100793          	li	a5,1
    800021cc:	00003717          	auipc	a4,0x3
    800021d0:	7ef70623          	sb	a5,2028(a4) # 800059b8 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    800021d4:	00003517          	auipc	a0,0x3
    800021d8:	7ec50513          	addi	a0,a0,2028 # 800059c0 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813423          	sd	s0,8(sp)
    800021f4:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800021f8:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800021fc:	03f58593          	addi	a1,a1,63
    80002200:	0065d593          	srli	a1,a1,0x6
    80002204:	0080006f          	j	8000220c <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80002208:	00053503          	ld	a0,0(a0)
    while(curr){
    8000220c:	06050863          	beqz	a0,8000227c <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80002210:	01054703          	lbu	a4,16(a0)
    80002214:	00100793          	li	a5,1
    80002218:	fef718e3          	bne	a4,a5,80002208 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    8000221c:	01853703          	ld	a4,24(a0)
    80002220:	00158793          	addi	a5,a1,1
    80002224:	fef762e3          	bltu	a4,a5,80002208 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80002228:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    8000222c:	04e7f663          	bgeu	a5,a4,80002278 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80002230:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80002234:	00679793          	slli	a5,a5,0x6
    80002238:	00f507b3          	add	a5,a0,a5
    8000223c:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80002240:	00100713          	li	a4,1
    80002244:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80002248:	01853703          	ld	a4,24(a0)
    8000224c:	40b70733          	sub	a4,a4,a1
    80002250:	fff70713          	addi	a4,a4,-1
    80002254:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80002258:	00d7b023          	sd	a3,0(a5)
                if(old)
    8000225c:	00068463          	beqz	a3,80002264 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80002260:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80002264:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80002268:	01853703          	ld	a4,24(a0)
    8000226c:	0187b783          	ld	a5,24(a5)
    80002270:	40f707b3          	sub	a5,a4,a5
    80002274:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80002278:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    8000227c:	00813403          	ld	s0,8(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret

0000000080002288 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00813423          	sd	s0,8(sp)
    80002290:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80002294:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    80002298:	08070a63          	beqz	a4,8000232c <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    8000229c:	00100793          	li	a5,1
    800022a0:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    800022a4:	fc05b783          	ld	a5,-64(a1)
    800022a8:	00078863          	beqz	a5,800022b8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    800022ac:	0107c603          	lbu	a2,16(a5)
    800022b0:	00100693          	li	a3,1
    800022b4:	02d60463          	beq	a2,a3,800022dc <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    800022b8:	fc85b783          	ld	a5,-56(a1)
    800022bc:	06078c63          	beqz	a5,80002334 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    800022c0:	0107c683          	lbu	a3,16(a5)
    800022c4:	00100713          	li	a4,1
    800022c8:	02e68e63          	beq	a3,a4,80002304 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    800022cc:	00000513          	li	a0,0
}
    800022d0:	00813403          	ld	s0,8(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret
        curr->size +=next->size;
    800022dc:	0187b603          	ld	a2,24(a5)
    800022e0:	fd85b683          	ld	a3,-40(a1)
    800022e4:	00c686b3          	add	a3,a3,a2
    800022e8:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    800022ec:	0007b683          	ld	a3,0(a5)
    800022f0:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    800022f4:	0007b783          	ld	a5,0(a5)
    800022f8:	fc0780e3          	beqz	a5,800022b8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    800022fc:	00e7b423          	sd	a4,8(a5)
    80002300:	fb9ff06f          	j	800022b8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80002304:	fd85b683          	ld	a3,-40(a1)
    80002308:	0187b703          	ld	a4,24(a5)
    8000230c:	00d70733          	add	a4,a4,a3
    80002310:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80002314:	fc05b703          	ld	a4,-64(a1)
    80002318:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    8000231c:	02070063          	beqz	a4,8000233c <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80002320:	00f73423          	sd	a5,8(a4)
    return 0;
    80002324:	00000513          	li	a0,0
    80002328:	fa9ff06f          	j	800022d0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    8000232c:	fff00513          	li	a0,-1
    80002330:	fa1ff06f          	j	800022d0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80002334:	00000513          	li	a0,0
    80002338:	f99ff06f          	j	800022d0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    8000233c:	00000513          	li	a0,0
    80002340:	f91ff06f          	j	800022d0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080002344 <HandleInterupt>:
#include "Semaphore.hpp"
#include "../lib/console.h"

extern "C" void restoreContext(size_t* ctx);

extern "C" void HandleInterupt(size_t* frame){
    80002344:	fc010113          	addi	sp,sp,-64
    80002348:	02113c23          	sd	ra,56(sp)
    8000234c:	02813823          	sd	s0,48(sp)
    80002350:	02913423          	sd	s1,40(sp)
    80002354:	03213023          	sd	s2,32(sp)
    80002358:	01313c23          	sd	s3,24(sp)
    8000235c:	01413823          	sd	s4,16(sp)
    80002360:	01513423          	sd	s5,8(sp)
    80002364:	01613023          	sd	s6,0(sp)
    80002368:	04010413          	addi	s0,sp,64
    8000236c:	00050913          	mv	s2,a0
    uint64 scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002370:	142029f3          	csrr	s3,scause

    Thread* current = Scheduler::GetRunning();
    80002374:	00000097          	auipc	ra,0x0
    80002378:	998080e7          	jalr	-1640(ra) # 80001d0c <_ZN9Scheduler10GetRunningEv>
    8000237c:	00050493          	mv	s1,a0
    if (current != nullptr) {
    80002380:	04050863          	beqz	a0,800023d0 <HandleInterupt+0x8c>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    80002384:	00000713          	li	a4,0
    80002388:	01f00793          	li	a5,31
    8000238c:	02e7c063          	blt	a5,a4,800023ac <HandleInterupt+0x68>
    80002390:	00371793          	slli	a5,a4,0x3
    80002394:	00f906b3          	add	a3,s2,a5
    80002398:	0006b683          	ld	a3,0(a3)
    8000239c:	00f487b3          	add	a5,s1,a5
    800023a0:	04d7b023          	sd	a3,64(a5)
    800023a4:	0017071b          	addiw	a4,a4,1
    800023a8:	fe1ff06f          	j	80002388 <HandleInterupt+0x44>
        ctx.x[2] = (size_t)frame + 256;
    800023ac:	10090793          	addi	a5,s2,256
    800023b0:	04f4b823          	sd	a5,80(s1)

        size_t sepc, sstatus;
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    800023b4:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800023b8:	100026f3          	csrr	a3,sstatus
        if (scause == 8 || scause == 9) sepc += 4;
    800023bc:	ff898793          	addi	a5,s3,-8
    800023c0:	00100613          	li	a2,1
    800023c4:	04f67e63          	bgeu	a2,a5,80002420 <HandleInterupt+0xdc>
        ctx.sepc    = sepc;
    800023c8:	14e4b023          	sd	a4,320(s1)
        ctx.sstatus = sstatus;
    800023cc:	14d4b423          	sd	a3,328(s1)
    }

    //Timerrrr
    if (scause == 0x8000000000000001UL) {
    800023d0:	fff00793          	li	a5,-1
    800023d4:	03f79793          	slli	a5,a5,0x3f
    800023d8:	00178793          	addi	a5,a5,1
    800023dc:	04f98663          	beq	s3,a5,80002428 <HandleInterupt+0xe4>
        Scheduler::timerTick(current);
        return;
    }

    if (scause != 8 && scause != 9) {
    800023e0:	ff898793          	addi	a5,s3,-8
    800023e4:	00100713          	li	a4,1
    800023e8:	04f76863          	bltu	a4,a5,80002438 <HandleInterupt+0xf4>
    }

    // ecall: advance CSR sepc past the ecall instruction
    {
        uint64 sepc;
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800023ec:	141027f3          	csrr	a5,sepc
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800023f0:	00478793          	addi	a5,a5,4
    800023f4:	14179073          	csrw	sepc,a5
    }

    size_t code = frame[10];
    800023f8:	05093783          	ld	a5,80(s2)
    switch (code) {
    800023fc:	03100713          	li	a4,49
    80002400:	02f76e63          	bltu	a4,a5,8000243c <HandleInterupt+0xf8>
    80002404:	00279793          	slli	a5,a5,0x2
    80002408:	00003717          	auipc	a4,0x3
    8000240c:	c1870713          	addi	a4,a4,-1000 # 80005020 <CONSOLE_STATUS+0x10>
    80002410:	00e787b3          	add	a5,a5,a4
    80002414:	0007a783          	lw	a5,0(a5)
    80002418:	00e787b3          	add	a5,a5,a4
    8000241c:	00078067          	jr	a5
        if (scause == 8 || scause == 9) sepc += 4;
    80002420:	00470713          	addi	a4,a4,4
    80002424:	fa5ff06f          	j	800023c8 <HandleInterupt+0x84>
        Scheduler::timerTick(current);
    80002428:	00048513          	mv	a0,s1
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	b50080e7          	jalr	-1200(ra) # 80001f7c <_ZN9Scheduler9timerTickEP6Thread>
        return;
    80002434:	0080006f          	j	8000243c <HandleInterupt+0xf8>
        if ((scause >> 63) == 0) {  // exception, not interrupt
    80002438:	0209d663          	bgez	s3,80002464 <HandleInterupt+0x120>
        default: {
            break;
        }
    }
    return;
}
    8000243c:	03813083          	ld	ra,56(sp)
    80002440:	03013403          	ld	s0,48(sp)
    80002444:	02813483          	ld	s1,40(sp)
    80002448:	02013903          	ld	s2,32(sp)
    8000244c:	01813983          	ld	s3,24(sp)
    80002450:	01013a03          	ld	s4,16(sp)
    80002454:	00813a83          	ld	s5,8(sp)
    80002458:	00013b03          	ld	s6,0(sp)
    8000245c:	04010113          	addi	sp,sp,64
    80002460:	00008067          	ret
            __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002464:	141024f3          	csrr	s1,sepc
            __putc('!');
    80002468:	02100513          	li	a0,33
    8000246c:	00002097          	auipc	ra,0x2
    80002470:	490080e7          	jalr	1168(ra) # 800048fc <__putc>
            __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80002474:	00448493          	addi	s1,s1,4
    80002478:	14149073          	csrw	sepc,s1
        return;
    8000247c:	fc1ff06f          	j	8000243c <HandleInterupt+0xf8>
            size_t size = frame[11];
    80002480:	05893483          	ld	s1,88(s2)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80002484:	00000097          	auipc	ra,0x0
    80002488:	d0c080e7          	jalr	-756(ra) # 80002190 <_ZN15MemoryAllocator11GetInstanceEv>
    8000248c:	00048593          	mv	a1,s1
    80002490:	00000097          	auipc	ra,0x0
    80002494:	d5c080e7          	jalr	-676(ra) # 800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80002498:	00050513          	mv	a0,a0
            break;
    8000249c:	fa1ff06f          	j	8000243c <HandleInterupt+0xf8>
            void* ptr = (void*)frame[11];
    800024a0:	05893483          	ld	s1,88(s2)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	cec080e7          	jalr	-788(ra) # 80002190 <_ZN15MemoryAllocator11GetInstanceEv>
    800024ac:	00048593          	mv	a1,s1
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	dd8080e7          	jalr	-552(ra) # 80002288 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    800024b8:	f85ff06f          	j	8000243c <HandleInterupt+0xf8>
            thread_t* handle             = reinterpret_cast<thread_t*>(frame[11]);
    800024bc:	05893983          	ld	s3,88(s2)
            void (*start_routine)(void*) = reinterpret_cast<void(*)(void*)>(frame[12]);
    800024c0:	06093a83          	ld	s5,96(s2)
            void* threadArg              = reinterpret_cast<void*>(frame[13]);
    800024c4:	06893a03          	ld	s4,104(s2)
            size_t* stack_space          = reinterpret_cast<size_t*>(frame[14]);
    800024c8:	07093b03          	ld	s6,112(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread));
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	cc4080e7          	jalr	-828(ra) # 80002190 <_ZN15MemoryAllocator11GetInstanceEv>
    800024d4:	15800593          	li	a1,344
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	d14080e7          	jalr	-748(ra) # 800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>
    800024e0:	00050913          	mv	s2,a0
            if (!mem) {
    800024e4:	04050463          	beqz	a0,8000252c <HandleInterupt+0x1e8>
            t->init();
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	638080e7          	jalr	1592(ra) # 80001b20 <_ZN6Thread4initEv>
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void setup(Thread* parentThread, size_t* stack_top);
    void setBody(void (*b)(void*), void* a) { body = b; arg = a; }
    800024f0:	01593023          	sd	s5,0(s2)
    800024f4:	01493423          	sd	s4,8(s2)
            t->setup(current, stack_space);
    800024f8:	000b0613          	mv	a2,s6
    800024fc:	00048593          	mv	a1,s1
    80002500:	00090513          	mv	a0,s2
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	7c0080e7          	jalr	1984(ra) # 80001cc4 <_ZN6Thread5setupEPS_Pm>
            *handle = reinterpret_cast<thread_t>(t);
    8000250c:	0129b023          	sd	s2,0(s3)
            Scheduler::Put(t);
    80002510:	00090513          	mv	a0,s2
    80002514:	00000097          	auipc	ra,0x0
    80002518:	930080e7          	jalr	-1744(ra) # 80001e44 <_ZN9Scheduler3PutEP6Thread>
            if (current) current->threadContext.x[10] = 0;
    8000251c:	00048463          	beqz	s1,80002524 <HandleInterupt+0x1e0>
    80002520:	0804b823          	sd	zero,144(s1)
            __asm__ volatile("li a0, 0");
    80002524:	00000513          	li	a0,0
            break;
    80002528:	f15ff06f          	j	8000243c <HandleInterupt+0xf8>
                if (current) {
    8000252c:	f00488e3          	beqz	s1,8000243c <HandleInterupt+0xf8>
                    current->threadContext.x[10] = (size_t)-1;
    80002530:	fff00793          	li	a5,-1
    80002534:	08f4b823          	sd	a5,144(s1)
                    restoreContext(current->getContext());
    80002538:	00048513          	mv	a0,s1
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	6ac080e7          	jalr	1708(ra) # 80001be8 <_ZN6Thread10getContextEv>
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	b50080e7          	jalr	-1200(ra) # 80001094 <restoreContext>
                return;
    8000254c:	ef1ff06f          	j	8000243c <HandleInterupt+0xf8>
            Scheduler::ThreadExit(current);
    80002550:	00048513          	mv	a0,s1
    80002554:	00000097          	auipc	ra,0x0
    80002558:	89c080e7          	jalr	-1892(ra) # 80001df0 <_ZN9Scheduler10ThreadExitEP6Thread>
            break;
    8000255c:	ee1ff06f          	j	8000243c <HandleInterupt+0xf8>
            Thread* next = Scheduler::GetNext();
    80002560:	00000097          	auipc	ra,0x0
    80002564:	808080e7          	jalr	-2040(ra) # 80001d68 <_ZN9Scheduler7GetNextEv>
    80002568:	00050913          	mv	s2,a0
            if (next == nullptr) {
    8000256c:	02050663          	beqz	a0,80002598 <HandleInterupt+0x254>
            if (current) current->threadContext.x[10] = 0;
    80002570:	00048463          	beqz	s1,80002578 <HandleInterupt+0x234>
    80002574:	0804b823          	sd	zero,144(s1)
            Scheduler::Put(current);
    80002578:	00048513          	mv	a0,s1
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	8c8080e7          	jalr	-1848(ra) # 80001e44 <_ZN9Scheduler3PutEP6Thread>
            Scheduler::yield(current, next);
    80002584:	00090593          	mv	a1,s2
    80002588:	00048513          	mv	a0,s1
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	7a0080e7          	jalr	1952(ra) # 80001d2c <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    80002594:	ea9ff06f          	j	8000243c <HandleInterupt+0xf8>
                __asm__ volatile("li a0, 0");
    80002598:	00000513          	li	a0,0
                break;
    8000259c:	ea1ff06f          	j	8000243c <HandleInterupt+0xf8>
            sem_t* handle = reinterpret_cast<sem_t*>(frame[11]);
    800025a0:	05893983          	ld	s3,88(s2)
            unsigned initialValue = (unsigned)frame[12];
    800025a4:	06092903          	lw	s2,96(s2)
            void* mem = MemoryAllocator::GetInstance().AllocateFragment(sizeof(Semaphore));
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	be8080e7          	jalr	-1048(ra) # 80002190 <_ZN15MemoryAllocator11GetInstanceEv>
    800025b0:	01800593          	li	a1,24
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	c38080e7          	jalr	-968(ra) # 800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>
    800025bc:	00050493          	mv	s1,a0
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800025c0:	00050e63          	beqz	a0,800025dc <HandleInterupt+0x298>
            semaphore->init(initialValue);
    800025c4:	00090593          	mv	a1,s2
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	198080e7          	jalr	408(ra) # 80001760 <_ZN9Semaphore4initEj>
            *handle = reinterpret_cast<sem_t>(semaphore);
    800025d0:	0099b023          	sd	s1,0(s3)
            __asm__ volatile("li a0, 0");
    800025d4:	00000513          	li	a0,0
            break;
    800025d8:	e65ff06f          	j	8000243c <HandleInterupt+0xf8>
            if (!mem) { __asm__ volatile("li a0, -1"); break; }
    800025dc:	fff00513          	li	a0,-1
    800025e0:	e5dff06f          	j	8000243c <HandleInterupt+0xf8>
            Semaphore* semaphore = reinterpret_cast<Semaphore*>(frame[11]);
    800025e4:	05893483          	ld	s1,88(s2)
            semaphore->close();
    800025e8:	00048513          	mv	a0,s1
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	470080e7          	jalr	1136(ra) # 80001a5c <_ZN9Semaphore5closeEv>
            MemoryAllocator::GetInstance().FreeFragment(semaphore);
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	b9c080e7          	jalr	-1124(ra) # 80002190 <_ZN15MemoryAllocator11GetInstanceEv>
    800025fc:	00048593          	mv	a1,s1
    80002600:	00000097          	auipc	ra,0x0
    80002604:	c88080e7          	jalr	-888(ra) # 80002288 <_ZN15MemoryAllocator12FreeFragmentEPv>
            __asm__ volatile("li a0, 0");
    80002608:	00000513          	li	a0,0
            break;
    8000260c:	e31ff06f          	j	8000243c <HandleInterupt+0xf8>
            int result = semaphore->wait(current);
    80002610:	00048593          	mv	a1,s1
    80002614:	05893503          	ld	a0,88(s2)
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	280080e7          	jalr	640(ra) # 80001898 <_ZN9Semaphore4waitEP6Thread>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80002620:	00a04663          	bgtz	a0,8000262c <HandleInterupt+0x2e8>
    80002624:	00050513          	mv	a0,a0
    80002628:	e15ff06f          	j	8000243c <HandleInterupt+0xf8>
            Thread* next = Scheduler::GetNext();
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	73c080e7          	jalr	1852(ra) # 80001d68 <_ZN9Scheduler7GetNextEv>
    80002634:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80002638:	00050a63          	beqz	a0,8000264c <HandleInterupt+0x308>
            Scheduler::yield(current, next);
    8000263c:	00048513          	mv	a0,s1
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	6ec080e7          	jalr	1772(ra) # 80001d2c <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    80002648:	df5ff06f          	j	8000243c <HandleInterupt+0xf8>
            if (next == nullptr) { while(true){} }
    8000264c:	0000006f          	j	8000264c <HandleInterupt+0x308>
            semaphore->signal();
    80002650:	05893503          	ld	a0,88(s2)
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	2a4080e7          	jalr	676(ra) # 800018f8 <_ZN9Semaphore6signalEv>
            __asm__ volatile("li a0, 0");
    8000265c:	00000513          	li	a0,0
            break;
    80002660:	dddff06f          	j	8000243c <HandleInterupt+0xf8>
            int result = semaphore->waitN(current, n);
    80002664:	06092603          	lw	a2,96(s2)
    80002668:	00048593          	mv	a1,s1
    8000266c:	05893503          	ld	a0,88(s2)
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	304080e7          	jalr	772(ra) # 80001974 <_ZN9Semaphore5waitNEP6Threadj>
            if (result <= 0) { __asm__ volatile("mv a0, %0" :: "r"((size_t)result)); break; }
    80002678:	00a04663          	bgtz	a0,80002684 <HandleInterupt+0x340>
    8000267c:	00050513          	mv	a0,a0
    80002680:	dbdff06f          	j	8000243c <HandleInterupt+0xf8>
            Thread* next = Scheduler::GetNext();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	6e4080e7          	jalr	1764(ra) # 80001d68 <_ZN9Scheduler7GetNextEv>
    8000268c:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    80002690:	00050a63          	beqz	a0,800026a4 <HandleInterupt+0x360>
            Scheduler::yield(current, next);
    80002694:	00048513          	mv	a0,s1
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	694080e7          	jalr	1684(ra) # 80001d2c <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    800026a0:	d9dff06f          	j	8000243c <HandleInterupt+0xf8>
            if (next == nullptr) { while(true){} }
    800026a4:	0000006f          	j	800026a4 <HandleInterupt+0x360>
            semaphore->signalN(n);
    800026a8:	06092583          	lw	a1,96(s2)
    800026ac:	05893503          	ld	a0,88(s2)
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	334080e7          	jalr	820(ra) # 800019e4 <_ZN9Semaphore7signalNEj>
            __asm__ volatile("li a0, 0");
    800026b8:	00000513          	li	a0,0
            break;
    800026bc:	d81ff06f          	j	8000243c <HandleInterupt+0xf8>
            time_t dur = (time_t)frame[11];
    800026c0:	05893583          	ld	a1,88(s2)
            if (current) current->threadContext.x[10] = 0;
    800026c4:	00048463          	beqz	s1,800026cc <HandleInterupt+0x388>
    800026c8:	0804b823          	sd	zero,144(s1)
            if (dur == 0) { __asm__ volatile("li a0, 0"); break; }
    800026cc:	00059663          	bnez	a1,800026d8 <HandleInterupt+0x394>
    800026d0:	00000513          	li	a0,0
    800026d4:	d69ff06f          	j	8000243c <HandleInterupt+0xf8>
            Scheduler::sleep(current, dur);
    800026d8:	00048513          	mv	a0,s1
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	9a0080e7          	jalr	-1632(ra) # 8000207c <_ZN9Scheduler5sleepEP6Threadm>
            Thread* next = Scheduler::GetNext();
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	684080e7          	jalr	1668(ra) # 80001d68 <_ZN9Scheduler7GetNextEv>
    800026ec:	00050593          	mv	a1,a0
            if (next == nullptr) { while(true){} }
    800026f0:	00050a63          	beqz	a0,80002704 <HandleInterupt+0x3c0>
            Scheduler::yield(current, next);
    800026f4:	00048513          	mv	a0,s1
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	634080e7          	jalr	1588(ra) # 80001d2c <_ZN9Scheduler5yieldEP6ThreadS1_>
            break;
    80002700:	d3dff06f          	j	8000243c <HandleInterupt+0xf8>
            if (next == nullptr) { while(true){} }
    80002704:	0000006f          	j	80002704 <HandleInterupt+0x3c0>

0000000080002708 <start_main_thread>:

extern "C" {
int start_main_thread() {
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00113423          	sd	ra,8(sp)
    80002710:	00813023          	sd	s0,0(sp)
    80002714:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	7e4080e7          	jalr	2020(ra) # 80001efc <_ZN9Scheduler16SetupStartThreadEv>
    return 0;
}
    80002720:	00000513          	li	a0,0
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_Z5mainAv>:
#include "../lib/console.h"
#include "MemoryAllocator.hpp"
void mainA(){
    80002734:	fd010113          	addi	sp,sp,-48
    80002738:	02113423          	sd	ra,40(sp)
    8000273c:	02813023          	sd	s0,32(sp)
    80002740:	00913c23          	sd	s1,24(sp)
    80002744:	01213823          	sd	s2,16(sp)
    80002748:	03010413          	addi	s0,sp,48
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	a44080e7          	jalr	-1468(ra) # 80002190 <_ZN15MemoryAllocator11GetInstanceEv>
    80002754:	00053783          	ld	a5,0(a0)
    80002758:	fcf43c23          	sd	a5,-40(s0)

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    8000275c:	01400593          	li	a1,20
    80002760:	fd840913          	addi	s2,s0,-40
    80002764:	00090513          	mv	a0,s2
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	a84080e7          	jalr	-1404(ra) # 800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>
    80002770:	00050493          	mv	s1,a0
    *a1 = 'a';
    80002774:	06100793          	li	a5,97
    80002778:	00f50023          	sb	a5,0(a0)
    *(a1+sizeof(char)) ='b';
    8000277c:	06200793          	li	a5,98
    80002780:	00f500a3          	sb	a5,1(a0)
    __putc(*a1);
    80002784:	06100513          	li	a0,97
    80002788:	00002097          	auipc	ra,0x2
    8000278c:	174080e7          	jalr	372(ra) # 800048fc <__putc>
    __putc(*(a1+1));
    80002790:	0014c503          	lbu	a0,1(s1)
    80002794:	00002097          	auipc	ra,0x2
    80002798:	168080e7          	jalr	360(ra) # 800048fc <__putc>
    *(a1+11) = 'h';
    8000279c:	06800793          	li	a5,104
    800027a0:	00f485a3          	sb	a5,11(s1)
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    800027a4:	00a00593          	li	a1,10
    800027a8:	00090513          	mv	a0,s2
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	a40080e7          	jalr	-1472(ra) # 800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>
    *a2 = 'c';
    800027b4:	06300793          	li	a5,99
    800027b8:	00f50023          	sb	a5,0(a0)
    *(a2+sizeof(char)) ='d';
    800027bc:	06400793          	li	a5,100
    800027c0:	00f500a3          	sb	a5,1(a0)
    memAlloc.FreeFragment(a1);
    800027c4:	00048593          	mv	a1,s1
    800027c8:	00090513          	mv	a0,s2
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	abc080e7          	jalr	-1348(ra) # 80002288 <_ZN15MemoryAllocator12FreeFragmentEPv>
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    800027d4:	00a00593          	li	a1,10
    800027d8:	00090513          	mv	a0,s2
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	a10080e7          	jalr	-1520(ra) # 800021ec <_ZN15MemoryAllocator16AllocateFragmentEm>
    800027e4:	00050913          	mv	s2,a0
    *a3 = 'e';
    800027e8:	06500793          	li	a5,101
    800027ec:	00f50023          	sb	a5,0(a0)
    *(a3+sizeof(char)) ='f';
    800027f0:	06600793          	li	a5,102
    800027f4:	00f500a3          	sb	a5,1(a0)
    __putc(*a3);
    800027f8:	06500513          	li	a0,101
    800027fc:	00002097          	auipc	ra,0x2
    80002800:	100080e7          	jalr	256(ra) # 800048fc <__putc>
    __putc(*(a3+11));
    80002804:	00b94503          	lbu	a0,11(s2)
    80002808:	00002097          	auipc	ra,0x2
    8000280c:	0f4080e7          	jalr	244(ra) # 800048fc <__putc>
    __putc(*a1);
    80002810:	0004c503          	lbu	a0,0(s1)
    80002814:	00002097          	auipc	ra,0x2
    80002818:	0e8080e7          	jalr	232(ra) # 800048fc <__putc>
    __putc(*(a1+1));
    8000281c:	0014c503          	lbu	a0,1(s1)
    80002820:	00002097          	auipc	ra,0x2
    80002824:	0dc080e7          	jalr	220(ra) # 800048fc <__putc>


    80002828:	02813083          	ld	ra,40(sp)
    8000282c:	02013403          	ld	s0,32(sp)
    80002830:	01813483          	ld	s1,24(sp)
    80002834:	01013903          	ld	s2,16(sp)
    80002838:	03010113          	addi	sp,sp,48
    8000283c:	00008067          	ret

0000000080002840 <start>:
    80002840:	ff010113          	addi	sp,sp,-16
    80002844:	00813423          	sd	s0,8(sp)
    80002848:	01010413          	addi	s0,sp,16
    8000284c:	300027f3          	csrr	a5,mstatus
    80002850:	ffffe737          	lui	a4,0xffffe
    80002854:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7bdf>
    80002858:	00e7f7b3          	and	a5,a5,a4
    8000285c:	00001737          	lui	a4,0x1
    80002860:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002864:	00e7e7b3          	or	a5,a5,a4
    80002868:	30079073          	csrw	mstatus,a5
    8000286c:	00000797          	auipc	a5,0x0
    80002870:	16078793          	addi	a5,a5,352 # 800029cc <system_main>
    80002874:	34179073          	csrw	mepc,a5
    80002878:	00000793          	li	a5,0
    8000287c:	18079073          	csrw	satp,a5
    80002880:	000107b7          	lui	a5,0x10
    80002884:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002888:	30279073          	csrw	medeleg,a5
    8000288c:	30379073          	csrw	mideleg,a5
    80002890:	104027f3          	csrr	a5,sie
    80002894:	2227e793          	ori	a5,a5,546
    80002898:	10479073          	csrw	sie,a5
    8000289c:	fff00793          	li	a5,-1
    800028a0:	00a7d793          	srli	a5,a5,0xa
    800028a4:	3b079073          	csrw	pmpaddr0,a5
    800028a8:	00f00793          	li	a5,15
    800028ac:	3a079073          	csrw	pmpcfg0,a5
    800028b0:	f14027f3          	csrr	a5,mhartid
    800028b4:	0200c737          	lui	a4,0x200c
    800028b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800028bc:	0007869b          	sext.w	a3,a5
    800028c0:	00269713          	slli	a4,a3,0x2
    800028c4:	000f4637          	lui	a2,0xf4
    800028c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800028cc:	00d70733          	add	a4,a4,a3
    800028d0:	0037979b          	slliw	a5,a5,0x3
    800028d4:	020046b7          	lui	a3,0x2004
    800028d8:	00d787b3          	add	a5,a5,a3
    800028dc:	00c585b3          	add	a1,a1,a2
    800028e0:	00371693          	slli	a3,a4,0x3
    800028e4:	00003717          	auipc	a4,0x3
    800028e8:	0ec70713          	addi	a4,a4,236 # 800059d0 <timer_scratch>
    800028ec:	00b7b023          	sd	a1,0(a5)
    800028f0:	00d70733          	add	a4,a4,a3
    800028f4:	00f73c23          	sd	a5,24(a4)
    800028f8:	02c73023          	sd	a2,32(a4)
    800028fc:	34071073          	csrw	mscratch,a4
    80002900:	00000797          	auipc	a5,0x0
    80002904:	6e078793          	addi	a5,a5,1760 # 80002fe0 <timervec>
    80002908:	30579073          	csrw	mtvec,a5
    8000290c:	300027f3          	csrr	a5,mstatus
    80002910:	0087e793          	ori	a5,a5,8
    80002914:	30079073          	csrw	mstatus,a5
    80002918:	304027f3          	csrr	a5,mie
    8000291c:	0807e793          	ori	a5,a5,128
    80002920:	30479073          	csrw	mie,a5
    80002924:	f14027f3          	csrr	a5,mhartid
    80002928:	0007879b          	sext.w	a5,a5
    8000292c:	00078213          	mv	tp,a5
    80002930:	30200073          	mret
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret

0000000080002940 <timerinit>:
    80002940:	ff010113          	addi	sp,sp,-16
    80002944:	00813423          	sd	s0,8(sp)
    80002948:	01010413          	addi	s0,sp,16
    8000294c:	f14027f3          	csrr	a5,mhartid
    80002950:	0200c737          	lui	a4,0x200c
    80002954:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002958:	0007869b          	sext.w	a3,a5
    8000295c:	00269713          	slli	a4,a3,0x2
    80002960:	000f4637          	lui	a2,0xf4
    80002964:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002968:	00d70733          	add	a4,a4,a3
    8000296c:	0037979b          	slliw	a5,a5,0x3
    80002970:	020046b7          	lui	a3,0x2004
    80002974:	00d787b3          	add	a5,a5,a3
    80002978:	00c585b3          	add	a1,a1,a2
    8000297c:	00371693          	slli	a3,a4,0x3
    80002980:	00003717          	auipc	a4,0x3
    80002984:	05070713          	addi	a4,a4,80 # 800059d0 <timer_scratch>
    80002988:	00b7b023          	sd	a1,0(a5)
    8000298c:	00d70733          	add	a4,a4,a3
    80002990:	00f73c23          	sd	a5,24(a4)
    80002994:	02c73023          	sd	a2,32(a4)
    80002998:	34071073          	csrw	mscratch,a4
    8000299c:	00000797          	auipc	a5,0x0
    800029a0:	64478793          	addi	a5,a5,1604 # 80002fe0 <timervec>
    800029a4:	30579073          	csrw	mtvec,a5
    800029a8:	300027f3          	csrr	a5,mstatus
    800029ac:	0087e793          	ori	a5,a5,8
    800029b0:	30079073          	csrw	mstatus,a5
    800029b4:	304027f3          	csrr	a5,mie
    800029b8:	0807e793          	ori	a5,a5,128
    800029bc:	30479073          	csrw	mie,a5
    800029c0:	00813403          	ld	s0,8(sp)
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00008067          	ret

00000000800029cc <system_main>:
    800029cc:	fe010113          	addi	sp,sp,-32
    800029d0:	00813823          	sd	s0,16(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	00113c23          	sd	ra,24(sp)
    800029dc:	02010413          	addi	s0,sp,32
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	0c4080e7          	jalr	196(ra) # 80002aa4 <cpuid>
    800029e8:	00003497          	auipc	s1,0x3
    800029ec:	f7848493          	addi	s1,s1,-136 # 80005960 <started>
    800029f0:	02050263          	beqz	a0,80002a14 <system_main+0x48>
    800029f4:	0004a783          	lw	a5,0(s1)
    800029f8:	0007879b          	sext.w	a5,a5
    800029fc:	fe078ce3          	beqz	a5,800029f4 <system_main+0x28>
    80002a00:	0ff0000f          	fence
    80002a04:	00002517          	auipc	a0,0x2
    80002a08:	71450513          	addi	a0,a0,1812 # 80005118 <CONSOLE_STATUS+0x108>
    80002a0c:	00001097          	auipc	ra,0x1
    80002a10:	a70080e7          	jalr	-1424(ra) # 8000347c <panic>
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	9c4080e7          	jalr	-1596(ra) # 800033d8 <consoleinit>
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	150080e7          	jalr	336(ra) # 80003b6c <printfinit>
    80002a24:	00002517          	auipc	a0,0x2
    80002a28:	7d450513          	addi	a0,a0,2004 # 800051f8 <CONSOLE_STATUS+0x1e8>
    80002a2c:	00001097          	auipc	ra,0x1
    80002a30:	aac080e7          	jalr	-1364(ra) # 800034d8 <__printf>
    80002a34:	00002517          	auipc	a0,0x2
    80002a38:	6b450513          	addi	a0,a0,1716 # 800050e8 <CONSOLE_STATUS+0xd8>
    80002a3c:	00001097          	auipc	ra,0x1
    80002a40:	a9c080e7          	jalr	-1380(ra) # 800034d8 <__printf>
    80002a44:	00002517          	auipc	a0,0x2
    80002a48:	7b450513          	addi	a0,a0,1972 # 800051f8 <CONSOLE_STATUS+0x1e8>
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	a8c080e7          	jalr	-1396(ra) # 800034d8 <__printf>
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	4a4080e7          	jalr	1188(ra) # 80003ef8 <kinit>
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	148080e7          	jalr	328(ra) # 80002ba4 <trapinit>
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	16c080e7          	jalr	364(ra) # 80002bd0 <trapinithart>
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	5b4080e7          	jalr	1460(ra) # 80003020 <plicinit>
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	5d4080e7          	jalr	1492(ra) # 80003048 <plicinithart>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	078080e7          	jalr	120(ra) # 80002af4 <userinit>
    80002a84:	0ff0000f          	fence
    80002a88:	00100793          	li	a5,1
    80002a8c:	00002517          	auipc	a0,0x2
    80002a90:	67450513          	addi	a0,a0,1652 # 80005100 <CONSOLE_STATUS+0xf0>
    80002a94:	00f4a023          	sw	a5,0(s1)
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	a40080e7          	jalr	-1472(ra) # 800034d8 <__printf>
    80002aa0:	0000006f          	j	80002aa0 <system_main+0xd4>

0000000080002aa4 <cpuid>:
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	00020513          	mv	a0,tp
    80002ab4:	00813403          	ld	s0,8(sp)
    80002ab8:	0005051b          	sext.w	a0,a0
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret

0000000080002ac4 <mycpu>:
    80002ac4:	ff010113          	addi	sp,sp,-16
    80002ac8:	00813423          	sd	s0,8(sp)
    80002acc:	01010413          	addi	s0,sp,16
    80002ad0:	00020793          	mv	a5,tp
    80002ad4:	00813403          	ld	s0,8(sp)
    80002ad8:	0007879b          	sext.w	a5,a5
    80002adc:	00779793          	slli	a5,a5,0x7
    80002ae0:	00004517          	auipc	a0,0x4
    80002ae4:	f2050513          	addi	a0,a0,-224 # 80006a00 <cpus>
    80002ae8:	00f50533          	add	a0,a0,a5
    80002aec:	01010113          	addi	sp,sp,16
    80002af0:	00008067          	ret

0000000080002af4 <userinit>:
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00813423          	sd	s0,8(sp)
    80002afc:	01010413          	addi	s0,sp,16
    80002b00:	00813403          	ld	s0,8(sp)
    80002b04:	01010113          	addi	sp,sp,16
    80002b08:	fffff317          	auipc	t1,0xfffff
    80002b0c:	c0830067          	jr	-1016(t1) # 80001710 <main>

0000000080002b10 <either_copyout>:
    80002b10:	ff010113          	addi	sp,sp,-16
    80002b14:	00813023          	sd	s0,0(sp)
    80002b18:	00113423          	sd	ra,8(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    80002b20:	02051663          	bnez	a0,80002b4c <either_copyout+0x3c>
    80002b24:	00058513          	mv	a0,a1
    80002b28:	00060593          	mv	a1,a2
    80002b2c:	0006861b          	sext.w	a2,a3
    80002b30:	00002097          	auipc	ra,0x2
    80002b34:	c54080e7          	jalr	-940(ra) # 80004784 <__memmove>
    80002b38:	00813083          	ld	ra,8(sp)
    80002b3c:	00013403          	ld	s0,0(sp)
    80002b40:	00000513          	li	a0,0
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret
    80002b4c:	00002517          	auipc	a0,0x2
    80002b50:	5f450513          	addi	a0,a0,1524 # 80005140 <CONSOLE_STATUS+0x130>
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	928080e7          	jalr	-1752(ra) # 8000347c <panic>

0000000080002b5c <either_copyin>:
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00813023          	sd	s0,0(sp)
    80002b64:	00113423          	sd	ra,8(sp)
    80002b68:	01010413          	addi	s0,sp,16
    80002b6c:	02059463          	bnez	a1,80002b94 <either_copyin+0x38>
    80002b70:	00060593          	mv	a1,a2
    80002b74:	0006861b          	sext.w	a2,a3
    80002b78:	00002097          	auipc	ra,0x2
    80002b7c:	c0c080e7          	jalr	-1012(ra) # 80004784 <__memmove>
    80002b80:	00813083          	ld	ra,8(sp)
    80002b84:	00013403          	ld	s0,0(sp)
    80002b88:	00000513          	li	a0,0
    80002b8c:	01010113          	addi	sp,sp,16
    80002b90:	00008067          	ret
    80002b94:	00002517          	auipc	a0,0x2
    80002b98:	5d450513          	addi	a0,a0,1492 # 80005168 <CONSOLE_STATUS+0x158>
    80002b9c:	00001097          	auipc	ra,0x1
    80002ba0:	8e0080e7          	jalr	-1824(ra) # 8000347c <panic>

0000000080002ba4 <trapinit>:
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00813423          	sd	s0,8(sp)
    80002bac:	01010413          	addi	s0,sp,16
    80002bb0:	00813403          	ld	s0,8(sp)
    80002bb4:	00002597          	auipc	a1,0x2
    80002bb8:	5dc58593          	addi	a1,a1,1500 # 80005190 <CONSOLE_STATUS+0x180>
    80002bbc:	00004517          	auipc	a0,0x4
    80002bc0:	ec450513          	addi	a0,a0,-316 # 80006a80 <tickslock>
    80002bc4:	01010113          	addi	sp,sp,16
    80002bc8:	00001317          	auipc	t1,0x1
    80002bcc:	5c030067          	jr	1472(t1) # 80004188 <initlock>

0000000080002bd0 <trapinithart>:
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00813423          	sd	s0,8(sp)
    80002bd8:	01010413          	addi	s0,sp,16
    80002bdc:	00000797          	auipc	a5,0x0
    80002be0:	2f478793          	addi	a5,a5,756 # 80002ed0 <kernelvec>
    80002be4:	10579073          	csrw	stvec,a5
    80002be8:	00813403          	ld	s0,8(sp)
    80002bec:	01010113          	addi	sp,sp,16
    80002bf0:	00008067          	ret

0000000080002bf4 <usertrap>:
    80002bf4:	ff010113          	addi	sp,sp,-16
    80002bf8:	00813423          	sd	s0,8(sp)
    80002bfc:	01010413          	addi	s0,sp,16
    80002c00:	00813403          	ld	s0,8(sp)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <usertrapret>:
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
    80002c18:	00813403          	ld	s0,8(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <kerneltrap>:
    80002c24:	fe010113          	addi	sp,sp,-32
    80002c28:	00813823          	sd	s0,16(sp)
    80002c2c:	00113c23          	sd	ra,24(sp)
    80002c30:	00913423          	sd	s1,8(sp)
    80002c34:	02010413          	addi	s0,sp,32
    80002c38:	142025f3          	csrr	a1,scause
    80002c3c:	100027f3          	csrr	a5,sstatus
    80002c40:	0027f793          	andi	a5,a5,2
    80002c44:	10079c63          	bnez	a5,80002d5c <kerneltrap+0x138>
    80002c48:	142027f3          	csrr	a5,scause
    80002c4c:	0207ce63          	bltz	a5,80002c88 <kerneltrap+0x64>
    80002c50:	00002517          	auipc	a0,0x2
    80002c54:	58850513          	addi	a0,a0,1416 # 800051d8 <CONSOLE_STATUS+0x1c8>
    80002c58:	00001097          	auipc	ra,0x1
    80002c5c:	880080e7          	jalr	-1920(ra) # 800034d8 <__printf>
    80002c60:	141025f3          	csrr	a1,sepc
    80002c64:	14302673          	csrr	a2,stval
    80002c68:	00002517          	auipc	a0,0x2
    80002c6c:	58050513          	addi	a0,a0,1408 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80002c70:	00001097          	auipc	ra,0x1
    80002c74:	868080e7          	jalr	-1944(ra) # 800034d8 <__printf>
    80002c78:	00002517          	auipc	a0,0x2
    80002c7c:	58850513          	addi	a0,a0,1416 # 80005200 <CONSOLE_STATUS+0x1f0>
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	7fc080e7          	jalr	2044(ra) # 8000347c <panic>
    80002c88:	0ff7f713          	andi	a4,a5,255
    80002c8c:	00900693          	li	a3,9
    80002c90:	04d70063          	beq	a4,a3,80002cd0 <kerneltrap+0xac>
    80002c94:	fff00713          	li	a4,-1
    80002c98:	03f71713          	slli	a4,a4,0x3f
    80002c9c:	00170713          	addi	a4,a4,1
    80002ca0:	fae798e3          	bne	a5,a4,80002c50 <kerneltrap+0x2c>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	e00080e7          	jalr	-512(ra) # 80002aa4 <cpuid>
    80002cac:	06050663          	beqz	a0,80002d18 <kerneltrap+0xf4>
    80002cb0:	144027f3          	csrr	a5,sip
    80002cb4:	ffd7f793          	andi	a5,a5,-3
    80002cb8:	14479073          	csrw	sip,a5
    80002cbc:	01813083          	ld	ra,24(sp)
    80002cc0:	01013403          	ld	s0,16(sp)
    80002cc4:	00813483          	ld	s1,8(sp)
    80002cc8:	02010113          	addi	sp,sp,32
    80002ccc:	00008067          	ret
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	3c4080e7          	jalr	964(ra) # 80003094 <plic_claim>
    80002cd8:	00a00793          	li	a5,10
    80002cdc:	00050493          	mv	s1,a0
    80002ce0:	06f50863          	beq	a0,a5,80002d50 <kerneltrap+0x12c>
    80002ce4:	fc050ce3          	beqz	a0,80002cbc <kerneltrap+0x98>
    80002ce8:	00050593          	mv	a1,a0
    80002cec:	00002517          	auipc	a0,0x2
    80002cf0:	4cc50513          	addi	a0,a0,1228 # 800051b8 <CONSOLE_STATUS+0x1a8>
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	7e4080e7          	jalr	2020(ra) # 800034d8 <__printf>
    80002cfc:	01013403          	ld	s0,16(sp)
    80002d00:	01813083          	ld	ra,24(sp)
    80002d04:	00048513          	mv	a0,s1
    80002d08:	00813483          	ld	s1,8(sp)
    80002d0c:	02010113          	addi	sp,sp,32
    80002d10:	00000317          	auipc	t1,0x0
    80002d14:	3bc30067          	jr	956(t1) # 800030cc <plic_complete>
    80002d18:	00004517          	auipc	a0,0x4
    80002d1c:	d6850513          	addi	a0,a0,-664 # 80006a80 <tickslock>
    80002d20:	00001097          	auipc	ra,0x1
    80002d24:	48c080e7          	jalr	1164(ra) # 800041ac <acquire>
    80002d28:	00003717          	auipc	a4,0x3
    80002d2c:	c3c70713          	addi	a4,a4,-964 # 80005964 <ticks>
    80002d30:	00072783          	lw	a5,0(a4)
    80002d34:	00004517          	auipc	a0,0x4
    80002d38:	d4c50513          	addi	a0,a0,-692 # 80006a80 <tickslock>
    80002d3c:	0017879b          	addiw	a5,a5,1
    80002d40:	00f72023          	sw	a5,0(a4)
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	534080e7          	jalr	1332(ra) # 80004278 <release>
    80002d4c:	f65ff06f          	j	80002cb0 <kerneltrap+0x8c>
    80002d50:	00001097          	auipc	ra,0x1
    80002d54:	090080e7          	jalr	144(ra) # 80003de0 <uartintr>
    80002d58:	fa5ff06f          	j	80002cfc <kerneltrap+0xd8>
    80002d5c:	00002517          	auipc	a0,0x2
    80002d60:	43c50513          	addi	a0,a0,1084 # 80005198 <CONSOLE_STATUS+0x188>
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	718080e7          	jalr	1816(ra) # 8000347c <panic>

0000000080002d6c <clockintr>:
    80002d6c:	fe010113          	addi	sp,sp,-32
    80002d70:	00813823          	sd	s0,16(sp)
    80002d74:	00913423          	sd	s1,8(sp)
    80002d78:	00113c23          	sd	ra,24(sp)
    80002d7c:	02010413          	addi	s0,sp,32
    80002d80:	00004497          	auipc	s1,0x4
    80002d84:	d0048493          	addi	s1,s1,-768 # 80006a80 <tickslock>
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	420080e7          	jalr	1056(ra) # 800041ac <acquire>
    80002d94:	00003717          	auipc	a4,0x3
    80002d98:	bd070713          	addi	a4,a4,-1072 # 80005964 <ticks>
    80002d9c:	00072783          	lw	a5,0(a4)
    80002da0:	01013403          	ld	s0,16(sp)
    80002da4:	01813083          	ld	ra,24(sp)
    80002da8:	00048513          	mv	a0,s1
    80002dac:	0017879b          	addiw	a5,a5,1
    80002db0:	00813483          	ld	s1,8(sp)
    80002db4:	00f72023          	sw	a5,0(a4)
    80002db8:	02010113          	addi	sp,sp,32
    80002dbc:	00001317          	auipc	t1,0x1
    80002dc0:	4bc30067          	jr	1212(t1) # 80004278 <release>

0000000080002dc4 <devintr>:
    80002dc4:	142027f3          	csrr	a5,scause
    80002dc8:	00000513          	li	a0,0
    80002dcc:	0007c463          	bltz	a5,80002dd4 <devintr+0x10>
    80002dd0:	00008067          	ret
    80002dd4:	fe010113          	addi	sp,sp,-32
    80002dd8:	00813823          	sd	s0,16(sp)
    80002ddc:	00113c23          	sd	ra,24(sp)
    80002de0:	00913423          	sd	s1,8(sp)
    80002de4:	02010413          	addi	s0,sp,32
    80002de8:	0ff7f713          	andi	a4,a5,255
    80002dec:	00900693          	li	a3,9
    80002df0:	04d70c63          	beq	a4,a3,80002e48 <devintr+0x84>
    80002df4:	fff00713          	li	a4,-1
    80002df8:	03f71713          	slli	a4,a4,0x3f
    80002dfc:	00170713          	addi	a4,a4,1
    80002e00:	00e78c63          	beq	a5,a4,80002e18 <devintr+0x54>
    80002e04:	01813083          	ld	ra,24(sp)
    80002e08:	01013403          	ld	s0,16(sp)
    80002e0c:	00813483          	ld	s1,8(sp)
    80002e10:	02010113          	addi	sp,sp,32
    80002e14:	00008067          	ret
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	c8c080e7          	jalr	-884(ra) # 80002aa4 <cpuid>
    80002e20:	06050663          	beqz	a0,80002e8c <devintr+0xc8>
    80002e24:	144027f3          	csrr	a5,sip
    80002e28:	ffd7f793          	andi	a5,a5,-3
    80002e2c:	14479073          	csrw	sip,a5
    80002e30:	01813083          	ld	ra,24(sp)
    80002e34:	01013403          	ld	s0,16(sp)
    80002e38:	00813483          	ld	s1,8(sp)
    80002e3c:	00200513          	li	a0,2
    80002e40:	02010113          	addi	sp,sp,32
    80002e44:	00008067          	ret
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	24c080e7          	jalr	588(ra) # 80003094 <plic_claim>
    80002e50:	00a00793          	li	a5,10
    80002e54:	00050493          	mv	s1,a0
    80002e58:	06f50663          	beq	a0,a5,80002ec4 <devintr+0x100>
    80002e5c:	00100513          	li	a0,1
    80002e60:	fa0482e3          	beqz	s1,80002e04 <devintr+0x40>
    80002e64:	00048593          	mv	a1,s1
    80002e68:	00002517          	auipc	a0,0x2
    80002e6c:	35050513          	addi	a0,a0,848 # 800051b8 <CONSOLE_STATUS+0x1a8>
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	668080e7          	jalr	1640(ra) # 800034d8 <__printf>
    80002e78:	00048513          	mv	a0,s1
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	250080e7          	jalr	592(ra) # 800030cc <plic_complete>
    80002e84:	00100513          	li	a0,1
    80002e88:	f7dff06f          	j	80002e04 <devintr+0x40>
    80002e8c:	00004517          	auipc	a0,0x4
    80002e90:	bf450513          	addi	a0,a0,-1036 # 80006a80 <tickslock>
    80002e94:	00001097          	auipc	ra,0x1
    80002e98:	318080e7          	jalr	792(ra) # 800041ac <acquire>
    80002e9c:	00003717          	auipc	a4,0x3
    80002ea0:	ac870713          	addi	a4,a4,-1336 # 80005964 <ticks>
    80002ea4:	00072783          	lw	a5,0(a4)
    80002ea8:	00004517          	auipc	a0,0x4
    80002eac:	bd850513          	addi	a0,a0,-1064 # 80006a80 <tickslock>
    80002eb0:	0017879b          	addiw	a5,a5,1
    80002eb4:	00f72023          	sw	a5,0(a4)
    80002eb8:	00001097          	auipc	ra,0x1
    80002ebc:	3c0080e7          	jalr	960(ra) # 80004278 <release>
    80002ec0:	f65ff06f          	j	80002e24 <devintr+0x60>
    80002ec4:	00001097          	auipc	ra,0x1
    80002ec8:	f1c080e7          	jalr	-228(ra) # 80003de0 <uartintr>
    80002ecc:	fadff06f          	j	80002e78 <devintr+0xb4>

0000000080002ed0 <kernelvec>:
    80002ed0:	f0010113          	addi	sp,sp,-256
    80002ed4:	00113023          	sd	ra,0(sp)
    80002ed8:	00213423          	sd	sp,8(sp)
    80002edc:	00313823          	sd	gp,16(sp)
    80002ee0:	00413c23          	sd	tp,24(sp)
    80002ee4:	02513023          	sd	t0,32(sp)
    80002ee8:	02613423          	sd	t1,40(sp)
    80002eec:	02713823          	sd	t2,48(sp)
    80002ef0:	02813c23          	sd	s0,56(sp)
    80002ef4:	04913023          	sd	s1,64(sp)
    80002ef8:	04a13423          	sd	a0,72(sp)
    80002efc:	04b13823          	sd	a1,80(sp)
    80002f00:	04c13c23          	sd	a2,88(sp)
    80002f04:	06d13023          	sd	a3,96(sp)
    80002f08:	06e13423          	sd	a4,104(sp)
    80002f0c:	06f13823          	sd	a5,112(sp)
    80002f10:	07013c23          	sd	a6,120(sp)
    80002f14:	09113023          	sd	a7,128(sp)
    80002f18:	09213423          	sd	s2,136(sp)
    80002f1c:	09313823          	sd	s3,144(sp)
    80002f20:	09413c23          	sd	s4,152(sp)
    80002f24:	0b513023          	sd	s5,160(sp)
    80002f28:	0b613423          	sd	s6,168(sp)
    80002f2c:	0b713823          	sd	s7,176(sp)
    80002f30:	0b813c23          	sd	s8,184(sp)
    80002f34:	0d913023          	sd	s9,192(sp)
    80002f38:	0da13423          	sd	s10,200(sp)
    80002f3c:	0db13823          	sd	s11,208(sp)
    80002f40:	0dc13c23          	sd	t3,216(sp)
    80002f44:	0fd13023          	sd	t4,224(sp)
    80002f48:	0fe13423          	sd	t5,232(sp)
    80002f4c:	0ff13823          	sd	t6,240(sp)
    80002f50:	cd5ff0ef          	jal	ra,80002c24 <kerneltrap>
    80002f54:	00013083          	ld	ra,0(sp)
    80002f58:	00813103          	ld	sp,8(sp)
    80002f5c:	01013183          	ld	gp,16(sp)
    80002f60:	02013283          	ld	t0,32(sp)
    80002f64:	02813303          	ld	t1,40(sp)
    80002f68:	03013383          	ld	t2,48(sp)
    80002f6c:	03813403          	ld	s0,56(sp)
    80002f70:	04013483          	ld	s1,64(sp)
    80002f74:	04813503          	ld	a0,72(sp)
    80002f78:	05013583          	ld	a1,80(sp)
    80002f7c:	05813603          	ld	a2,88(sp)
    80002f80:	06013683          	ld	a3,96(sp)
    80002f84:	06813703          	ld	a4,104(sp)
    80002f88:	07013783          	ld	a5,112(sp)
    80002f8c:	07813803          	ld	a6,120(sp)
    80002f90:	08013883          	ld	a7,128(sp)
    80002f94:	08813903          	ld	s2,136(sp)
    80002f98:	09013983          	ld	s3,144(sp)
    80002f9c:	09813a03          	ld	s4,152(sp)
    80002fa0:	0a013a83          	ld	s5,160(sp)
    80002fa4:	0a813b03          	ld	s6,168(sp)
    80002fa8:	0b013b83          	ld	s7,176(sp)
    80002fac:	0b813c03          	ld	s8,184(sp)
    80002fb0:	0c013c83          	ld	s9,192(sp)
    80002fb4:	0c813d03          	ld	s10,200(sp)
    80002fb8:	0d013d83          	ld	s11,208(sp)
    80002fbc:	0d813e03          	ld	t3,216(sp)
    80002fc0:	0e013e83          	ld	t4,224(sp)
    80002fc4:	0e813f03          	ld	t5,232(sp)
    80002fc8:	0f013f83          	ld	t6,240(sp)
    80002fcc:	10010113          	addi	sp,sp,256
    80002fd0:	10200073          	sret
    80002fd4:	00000013          	nop
    80002fd8:	00000013          	nop
    80002fdc:	00000013          	nop

0000000080002fe0 <timervec>:
    80002fe0:	34051573          	csrrw	a0,mscratch,a0
    80002fe4:	00b53023          	sd	a1,0(a0)
    80002fe8:	00c53423          	sd	a2,8(a0)
    80002fec:	00d53823          	sd	a3,16(a0)
    80002ff0:	01853583          	ld	a1,24(a0)
    80002ff4:	02053603          	ld	a2,32(a0)
    80002ff8:	0005b683          	ld	a3,0(a1)
    80002ffc:	00c686b3          	add	a3,a3,a2
    80003000:	00d5b023          	sd	a3,0(a1)
    80003004:	00200593          	li	a1,2
    80003008:	14459073          	csrw	sip,a1
    8000300c:	01053683          	ld	a3,16(a0)
    80003010:	00853603          	ld	a2,8(a0)
    80003014:	00053583          	ld	a1,0(a0)
    80003018:	34051573          	csrrw	a0,mscratch,a0
    8000301c:	30200073          	mret

0000000080003020 <plicinit>:
    80003020:	ff010113          	addi	sp,sp,-16
    80003024:	00813423          	sd	s0,8(sp)
    80003028:	01010413          	addi	s0,sp,16
    8000302c:	00813403          	ld	s0,8(sp)
    80003030:	0c0007b7          	lui	a5,0xc000
    80003034:	00100713          	li	a4,1
    80003038:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000303c:	00e7a223          	sw	a4,4(a5)
    80003040:	01010113          	addi	sp,sp,16
    80003044:	00008067          	ret

0000000080003048 <plicinithart>:
    80003048:	ff010113          	addi	sp,sp,-16
    8000304c:	00813023          	sd	s0,0(sp)
    80003050:	00113423          	sd	ra,8(sp)
    80003054:	01010413          	addi	s0,sp,16
    80003058:	00000097          	auipc	ra,0x0
    8000305c:	a4c080e7          	jalr	-1460(ra) # 80002aa4 <cpuid>
    80003060:	0085171b          	slliw	a4,a0,0x8
    80003064:	0c0027b7          	lui	a5,0xc002
    80003068:	00e787b3          	add	a5,a5,a4
    8000306c:	40200713          	li	a4,1026
    80003070:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003074:	00813083          	ld	ra,8(sp)
    80003078:	00013403          	ld	s0,0(sp)
    8000307c:	00d5151b          	slliw	a0,a0,0xd
    80003080:	0c2017b7          	lui	a5,0xc201
    80003084:	00a78533          	add	a0,a5,a0
    80003088:	00052023          	sw	zero,0(a0)
    8000308c:	01010113          	addi	sp,sp,16
    80003090:	00008067          	ret

0000000080003094 <plic_claim>:
    80003094:	ff010113          	addi	sp,sp,-16
    80003098:	00813023          	sd	s0,0(sp)
    8000309c:	00113423          	sd	ra,8(sp)
    800030a0:	01010413          	addi	s0,sp,16
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	a00080e7          	jalr	-1536(ra) # 80002aa4 <cpuid>
    800030ac:	00813083          	ld	ra,8(sp)
    800030b0:	00013403          	ld	s0,0(sp)
    800030b4:	00d5151b          	slliw	a0,a0,0xd
    800030b8:	0c2017b7          	lui	a5,0xc201
    800030bc:	00a78533          	add	a0,a5,a0
    800030c0:	00452503          	lw	a0,4(a0)
    800030c4:	01010113          	addi	sp,sp,16
    800030c8:	00008067          	ret

00000000800030cc <plic_complete>:
    800030cc:	fe010113          	addi	sp,sp,-32
    800030d0:	00813823          	sd	s0,16(sp)
    800030d4:	00913423          	sd	s1,8(sp)
    800030d8:	00113c23          	sd	ra,24(sp)
    800030dc:	02010413          	addi	s0,sp,32
    800030e0:	00050493          	mv	s1,a0
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	9c0080e7          	jalr	-1600(ra) # 80002aa4 <cpuid>
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00d5179b          	slliw	a5,a0,0xd
    800030f8:	0c201737          	lui	a4,0xc201
    800030fc:	00f707b3          	add	a5,a4,a5
    80003100:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003104:	00813483          	ld	s1,8(sp)
    80003108:	02010113          	addi	sp,sp,32
    8000310c:	00008067          	ret

0000000080003110 <consolewrite>:
    80003110:	fb010113          	addi	sp,sp,-80
    80003114:	04813023          	sd	s0,64(sp)
    80003118:	04113423          	sd	ra,72(sp)
    8000311c:	02913c23          	sd	s1,56(sp)
    80003120:	03213823          	sd	s2,48(sp)
    80003124:	03313423          	sd	s3,40(sp)
    80003128:	03413023          	sd	s4,32(sp)
    8000312c:	01513c23          	sd	s5,24(sp)
    80003130:	05010413          	addi	s0,sp,80
    80003134:	06c05c63          	blez	a2,800031ac <consolewrite+0x9c>
    80003138:	00060993          	mv	s3,a2
    8000313c:	00050a13          	mv	s4,a0
    80003140:	00058493          	mv	s1,a1
    80003144:	00000913          	li	s2,0
    80003148:	fff00a93          	li	s5,-1
    8000314c:	01c0006f          	j	80003168 <consolewrite+0x58>
    80003150:	fbf44503          	lbu	a0,-65(s0)
    80003154:	0019091b          	addiw	s2,s2,1
    80003158:	00148493          	addi	s1,s1,1
    8000315c:	00001097          	auipc	ra,0x1
    80003160:	a9c080e7          	jalr	-1380(ra) # 80003bf8 <uartputc>
    80003164:	03298063          	beq	s3,s2,80003184 <consolewrite+0x74>
    80003168:	00048613          	mv	a2,s1
    8000316c:	00100693          	li	a3,1
    80003170:	000a0593          	mv	a1,s4
    80003174:	fbf40513          	addi	a0,s0,-65
    80003178:	00000097          	auipc	ra,0x0
    8000317c:	9e4080e7          	jalr	-1564(ra) # 80002b5c <either_copyin>
    80003180:	fd5518e3          	bne	a0,s5,80003150 <consolewrite+0x40>
    80003184:	04813083          	ld	ra,72(sp)
    80003188:	04013403          	ld	s0,64(sp)
    8000318c:	03813483          	ld	s1,56(sp)
    80003190:	02813983          	ld	s3,40(sp)
    80003194:	02013a03          	ld	s4,32(sp)
    80003198:	01813a83          	ld	s5,24(sp)
    8000319c:	00090513          	mv	a0,s2
    800031a0:	03013903          	ld	s2,48(sp)
    800031a4:	05010113          	addi	sp,sp,80
    800031a8:	00008067          	ret
    800031ac:	00000913          	li	s2,0
    800031b0:	fd5ff06f          	j	80003184 <consolewrite+0x74>

00000000800031b4 <consoleread>:
    800031b4:	f9010113          	addi	sp,sp,-112
    800031b8:	06813023          	sd	s0,96(sp)
    800031bc:	04913c23          	sd	s1,88(sp)
    800031c0:	05213823          	sd	s2,80(sp)
    800031c4:	05313423          	sd	s3,72(sp)
    800031c8:	05413023          	sd	s4,64(sp)
    800031cc:	03513c23          	sd	s5,56(sp)
    800031d0:	03613823          	sd	s6,48(sp)
    800031d4:	03713423          	sd	s7,40(sp)
    800031d8:	03813023          	sd	s8,32(sp)
    800031dc:	06113423          	sd	ra,104(sp)
    800031e0:	01913c23          	sd	s9,24(sp)
    800031e4:	07010413          	addi	s0,sp,112
    800031e8:	00060b93          	mv	s7,a2
    800031ec:	00050913          	mv	s2,a0
    800031f0:	00058c13          	mv	s8,a1
    800031f4:	00060b1b          	sext.w	s6,a2
    800031f8:	00004497          	auipc	s1,0x4
    800031fc:	8a048493          	addi	s1,s1,-1888 # 80006a98 <cons>
    80003200:	00400993          	li	s3,4
    80003204:	fff00a13          	li	s4,-1
    80003208:	00a00a93          	li	s5,10
    8000320c:	05705e63          	blez	s7,80003268 <consoleread+0xb4>
    80003210:	09c4a703          	lw	a4,156(s1)
    80003214:	0984a783          	lw	a5,152(s1)
    80003218:	0007071b          	sext.w	a4,a4
    8000321c:	08e78463          	beq	a5,a4,800032a4 <consoleread+0xf0>
    80003220:	07f7f713          	andi	a4,a5,127
    80003224:	00e48733          	add	a4,s1,a4
    80003228:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000322c:	0017869b          	addiw	a3,a5,1
    80003230:	08d4ac23          	sw	a3,152(s1)
    80003234:	00070c9b          	sext.w	s9,a4
    80003238:	0b370663          	beq	a4,s3,800032e4 <consoleread+0x130>
    8000323c:	00100693          	li	a3,1
    80003240:	f9f40613          	addi	a2,s0,-97
    80003244:	000c0593          	mv	a1,s8
    80003248:	00090513          	mv	a0,s2
    8000324c:	f8e40fa3          	sb	a4,-97(s0)
    80003250:	00000097          	auipc	ra,0x0
    80003254:	8c0080e7          	jalr	-1856(ra) # 80002b10 <either_copyout>
    80003258:	01450863          	beq	a0,s4,80003268 <consoleread+0xb4>
    8000325c:	001c0c13          	addi	s8,s8,1
    80003260:	fffb8b9b          	addiw	s7,s7,-1
    80003264:	fb5c94e3          	bne	s9,s5,8000320c <consoleread+0x58>
    80003268:	000b851b          	sext.w	a0,s7
    8000326c:	06813083          	ld	ra,104(sp)
    80003270:	06013403          	ld	s0,96(sp)
    80003274:	05813483          	ld	s1,88(sp)
    80003278:	05013903          	ld	s2,80(sp)
    8000327c:	04813983          	ld	s3,72(sp)
    80003280:	04013a03          	ld	s4,64(sp)
    80003284:	03813a83          	ld	s5,56(sp)
    80003288:	02813b83          	ld	s7,40(sp)
    8000328c:	02013c03          	ld	s8,32(sp)
    80003290:	01813c83          	ld	s9,24(sp)
    80003294:	40ab053b          	subw	a0,s6,a0
    80003298:	03013b03          	ld	s6,48(sp)
    8000329c:	07010113          	addi	sp,sp,112
    800032a0:	00008067          	ret
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	1d8080e7          	jalr	472(ra) # 8000447c <push_on>
    800032ac:	0984a703          	lw	a4,152(s1)
    800032b0:	09c4a783          	lw	a5,156(s1)
    800032b4:	0007879b          	sext.w	a5,a5
    800032b8:	fef70ce3          	beq	a4,a5,800032b0 <consoleread+0xfc>
    800032bc:	00001097          	auipc	ra,0x1
    800032c0:	234080e7          	jalr	564(ra) # 800044f0 <pop_on>
    800032c4:	0984a783          	lw	a5,152(s1)
    800032c8:	07f7f713          	andi	a4,a5,127
    800032cc:	00e48733          	add	a4,s1,a4
    800032d0:	01874703          	lbu	a4,24(a4)
    800032d4:	0017869b          	addiw	a3,a5,1
    800032d8:	08d4ac23          	sw	a3,152(s1)
    800032dc:	00070c9b          	sext.w	s9,a4
    800032e0:	f5371ee3          	bne	a4,s3,8000323c <consoleread+0x88>
    800032e4:	000b851b          	sext.w	a0,s7
    800032e8:	f96bf2e3          	bgeu	s7,s6,8000326c <consoleread+0xb8>
    800032ec:	08f4ac23          	sw	a5,152(s1)
    800032f0:	f7dff06f          	j	8000326c <consoleread+0xb8>

00000000800032f4 <consputc>:
    800032f4:	10000793          	li	a5,256
    800032f8:	00f50663          	beq	a0,a5,80003304 <consputc+0x10>
    800032fc:	00001317          	auipc	t1,0x1
    80003300:	9f430067          	jr	-1548(t1) # 80003cf0 <uartputc_sync>
    80003304:	ff010113          	addi	sp,sp,-16
    80003308:	00113423          	sd	ra,8(sp)
    8000330c:	00813023          	sd	s0,0(sp)
    80003310:	01010413          	addi	s0,sp,16
    80003314:	00800513          	li	a0,8
    80003318:	00001097          	auipc	ra,0x1
    8000331c:	9d8080e7          	jalr	-1576(ra) # 80003cf0 <uartputc_sync>
    80003320:	02000513          	li	a0,32
    80003324:	00001097          	auipc	ra,0x1
    80003328:	9cc080e7          	jalr	-1588(ra) # 80003cf0 <uartputc_sync>
    8000332c:	00013403          	ld	s0,0(sp)
    80003330:	00813083          	ld	ra,8(sp)
    80003334:	00800513          	li	a0,8
    80003338:	01010113          	addi	sp,sp,16
    8000333c:	00001317          	auipc	t1,0x1
    80003340:	9b430067          	jr	-1612(t1) # 80003cf0 <uartputc_sync>

0000000080003344 <consoleintr>:
    80003344:	fe010113          	addi	sp,sp,-32
    80003348:	00813823          	sd	s0,16(sp)
    8000334c:	00913423          	sd	s1,8(sp)
    80003350:	01213023          	sd	s2,0(sp)
    80003354:	00113c23          	sd	ra,24(sp)
    80003358:	02010413          	addi	s0,sp,32
    8000335c:	00003917          	auipc	s2,0x3
    80003360:	73c90913          	addi	s2,s2,1852 # 80006a98 <cons>
    80003364:	00050493          	mv	s1,a0
    80003368:	00090513          	mv	a0,s2
    8000336c:	00001097          	auipc	ra,0x1
    80003370:	e40080e7          	jalr	-448(ra) # 800041ac <acquire>
    80003374:	02048c63          	beqz	s1,800033ac <consoleintr+0x68>
    80003378:	0a092783          	lw	a5,160(s2)
    8000337c:	09892703          	lw	a4,152(s2)
    80003380:	07f00693          	li	a3,127
    80003384:	40e7873b          	subw	a4,a5,a4
    80003388:	02e6e263          	bltu	a3,a4,800033ac <consoleintr+0x68>
    8000338c:	00d00713          	li	a4,13
    80003390:	04e48063          	beq	s1,a4,800033d0 <consoleintr+0x8c>
    80003394:	07f7f713          	andi	a4,a5,127
    80003398:	00e90733          	add	a4,s2,a4
    8000339c:	0017879b          	addiw	a5,a5,1
    800033a0:	0af92023          	sw	a5,160(s2)
    800033a4:	00970c23          	sb	s1,24(a4)
    800033a8:	08f92e23          	sw	a5,156(s2)
    800033ac:	01013403          	ld	s0,16(sp)
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	00013903          	ld	s2,0(sp)
    800033bc:	00003517          	auipc	a0,0x3
    800033c0:	6dc50513          	addi	a0,a0,1756 # 80006a98 <cons>
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00001317          	auipc	t1,0x1
    800033cc:	eb030067          	jr	-336(t1) # 80004278 <release>
    800033d0:	00a00493          	li	s1,10
    800033d4:	fc1ff06f          	j	80003394 <consoleintr+0x50>

00000000800033d8 <consoleinit>:
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	00003497          	auipc	s1,0x3
    800033f0:	6ac48493          	addi	s1,s1,1708 # 80006a98 <cons>
    800033f4:	00048513          	mv	a0,s1
    800033f8:	00002597          	auipc	a1,0x2
    800033fc:	e1858593          	addi	a1,a1,-488 # 80005210 <CONSOLE_STATUS+0x200>
    80003400:	00001097          	auipc	ra,0x1
    80003404:	d88080e7          	jalr	-632(ra) # 80004188 <initlock>
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	7ac080e7          	jalr	1964(ra) # 80003bb4 <uartinit>
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00000797          	auipc	a5,0x0
    8000341c:	d9c78793          	addi	a5,a5,-612 # 800031b4 <consoleread>
    80003420:	0af4bc23          	sd	a5,184(s1)
    80003424:	00000797          	auipc	a5,0x0
    80003428:	cec78793          	addi	a5,a5,-788 # 80003110 <consolewrite>
    8000342c:	0cf4b023          	sd	a5,192(s1)
    80003430:	00813483          	ld	s1,8(sp)
    80003434:	02010113          	addi	sp,sp,32
    80003438:	00008067          	ret

000000008000343c <console_read>:
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00813423          	sd	s0,8(sp)
    80003444:	01010413          	addi	s0,sp,16
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	00003317          	auipc	t1,0x3
    80003450:	70433303          	ld	t1,1796(t1) # 80006b50 <devsw+0x10>
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00030067          	jr	t1

000000008000345c <console_write>:
    8000345c:	ff010113          	addi	sp,sp,-16
    80003460:	00813423          	sd	s0,8(sp)
    80003464:	01010413          	addi	s0,sp,16
    80003468:	00813403          	ld	s0,8(sp)
    8000346c:	00003317          	auipc	t1,0x3
    80003470:	6ec33303          	ld	t1,1772(t1) # 80006b58 <devsw+0x18>
    80003474:	01010113          	addi	sp,sp,16
    80003478:	00030067          	jr	t1

000000008000347c <panic>:
    8000347c:	fe010113          	addi	sp,sp,-32
    80003480:	00113c23          	sd	ra,24(sp)
    80003484:	00813823          	sd	s0,16(sp)
    80003488:	00913423          	sd	s1,8(sp)
    8000348c:	02010413          	addi	s0,sp,32
    80003490:	00050493          	mv	s1,a0
    80003494:	00002517          	auipc	a0,0x2
    80003498:	d8450513          	addi	a0,a0,-636 # 80005218 <CONSOLE_STATUS+0x208>
    8000349c:	00003797          	auipc	a5,0x3
    800034a0:	7407ae23          	sw	zero,1884(a5) # 80006bf8 <pr+0x18>
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	034080e7          	jalr	52(ra) # 800034d8 <__printf>
    800034ac:	00048513          	mv	a0,s1
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	028080e7          	jalr	40(ra) # 800034d8 <__printf>
    800034b8:	00002517          	auipc	a0,0x2
    800034bc:	d4050513          	addi	a0,a0,-704 # 800051f8 <CONSOLE_STATUS+0x1e8>
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	018080e7          	jalr	24(ra) # 800034d8 <__printf>
    800034c8:	00100793          	li	a5,1
    800034cc:	00002717          	auipc	a4,0x2
    800034d0:	48f72e23          	sw	a5,1180(a4) # 80005968 <panicked>
    800034d4:	0000006f          	j	800034d4 <panic+0x58>

00000000800034d8 <__printf>:
    800034d8:	f3010113          	addi	sp,sp,-208
    800034dc:	08813023          	sd	s0,128(sp)
    800034e0:	07313423          	sd	s3,104(sp)
    800034e4:	09010413          	addi	s0,sp,144
    800034e8:	05813023          	sd	s8,64(sp)
    800034ec:	08113423          	sd	ra,136(sp)
    800034f0:	06913c23          	sd	s1,120(sp)
    800034f4:	07213823          	sd	s2,112(sp)
    800034f8:	07413023          	sd	s4,96(sp)
    800034fc:	05513c23          	sd	s5,88(sp)
    80003500:	05613823          	sd	s6,80(sp)
    80003504:	05713423          	sd	s7,72(sp)
    80003508:	03913c23          	sd	s9,56(sp)
    8000350c:	03a13823          	sd	s10,48(sp)
    80003510:	03b13423          	sd	s11,40(sp)
    80003514:	00003317          	auipc	t1,0x3
    80003518:	6cc30313          	addi	t1,t1,1740 # 80006be0 <pr>
    8000351c:	01832c03          	lw	s8,24(t1)
    80003520:	00b43423          	sd	a1,8(s0)
    80003524:	00c43823          	sd	a2,16(s0)
    80003528:	00d43c23          	sd	a3,24(s0)
    8000352c:	02e43023          	sd	a4,32(s0)
    80003530:	02f43423          	sd	a5,40(s0)
    80003534:	03043823          	sd	a6,48(s0)
    80003538:	03143c23          	sd	a7,56(s0)
    8000353c:	00050993          	mv	s3,a0
    80003540:	4a0c1663          	bnez	s8,800039ec <__printf+0x514>
    80003544:	60098c63          	beqz	s3,80003b5c <__printf+0x684>
    80003548:	0009c503          	lbu	a0,0(s3)
    8000354c:	00840793          	addi	a5,s0,8
    80003550:	f6f43c23          	sd	a5,-136(s0)
    80003554:	00000493          	li	s1,0
    80003558:	22050063          	beqz	a0,80003778 <__printf+0x2a0>
    8000355c:	00002a37          	lui	s4,0x2
    80003560:	00018ab7          	lui	s5,0x18
    80003564:	000f4b37          	lui	s6,0xf4
    80003568:	00989bb7          	lui	s7,0x989
    8000356c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003570:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003574:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003578:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000357c:	00148c9b          	addiw	s9,s1,1
    80003580:	02500793          	li	a5,37
    80003584:	01998933          	add	s2,s3,s9
    80003588:	38f51263          	bne	a0,a5,8000390c <__printf+0x434>
    8000358c:	00094783          	lbu	a5,0(s2)
    80003590:	00078c9b          	sext.w	s9,a5
    80003594:	1e078263          	beqz	a5,80003778 <__printf+0x2a0>
    80003598:	0024849b          	addiw	s1,s1,2
    8000359c:	07000713          	li	a4,112
    800035a0:	00998933          	add	s2,s3,s1
    800035a4:	38e78a63          	beq	a5,a4,80003938 <__printf+0x460>
    800035a8:	20f76863          	bltu	a4,a5,800037b8 <__printf+0x2e0>
    800035ac:	42a78863          	beq	a5,a0,800039dc <__printf+0x504>
    800035b0:	06400713          	li	a4,100
    800035b4:	40e79663          	bne	a5,a4,800039c0 <__printf+0x4e8>
    800035b8:	f7843783          	ld	a5,-136(s0)
    800035bc:	0007a603          	lw	a2,0(a5)
    800035c0:	00878793          	addi	a5,a5,8
    800035c4:	f6f43c23          	sd	a5,-136(s0)
    800035c8:	42064a63          	bltz	a2,800039fc <__printf+0x524>
    800035cc:	00a00713          	li	a4,10
    800035d0:	02e677bb          	remuw	a5,a2,a4
    800035d4:	00002d97          	auipc	s11,0x2
    800035d8:	c6cd8d93          	addi	s11,s11,-916 # 80005240 <digits>
    800035dc:	00900593          	li	a1,9
    800035e0:	0006051b          	sext.w	a0,a2
    800035e4:	00000c93          	li	s9,0
    800035e8:	02079793          	slli	a5,a5,0x20
    800035ec:	0207d793          	srli	a5,a5,0x20
    800035f0:	00fd87b3          	add	a5,s11,a5
    800035f4:	0007c783          	lbu	a5,0(a5)
    800035f8:	02e656bb          	divuw	a3,a2,a4
    800035fc:	f8f40023          	sb	a5,-128(s0)
    80003600:	14c5d863          	bge	a1,a2,80003750 <__printf+0x278>
    80003604:	06300593          	li	a1,99
    80003608:	00100c93          	li	s9,1
    8000360c:	02e6f7bb          	remuw	a5,a3,a4
    80003610:	02079793          	slli	a5,a5,0x20
    80003614:	0207d793          	srli	a5,a5,0x20
    80003618:	00fd87b3          	add	a5,s11,a5
    8000361c:	0007c783          	lbu	a5,0(a5)
    80003620:	02e6d73b          	divuw	a4,a3,a4
    80003624:	f8f400a3          	sb	a5,-127(s0)
    80003628:	12a5f463          	bgeu	a1,a0,80003750 <__printf+0x278>
    8000362c:	00a00693          	li	a3,10
    80003630:	00900593          	li	a1,9
    80003634:	02d777bb          	remuw	a5,a4,a3
    80003638:	02079793          	slli	a5,a5,0x20
    8000363c:	0207d793          	srli	a5,a5,0x20
    80003640:	00fd87b3          	add	a5,s11,a5
    80003644:	0007c503          	lbu	a0,0(a5)
    80003648:	02d757bb          	divuw	a5,a4,a3
    8000364c:	f8a40123          	sb	a0,-126(s0)
    80003650:	48e5f263          	bgeu	a1,a4,80003ad4 <__printf+0x5fc>
    80003654:	06300513          	li	a0,99
    80003658:	02d7f5bb          	remuw	a1,a5,a3
    8000365c:	02059593          	slli	a1,a1,0x20
    80003660:	0205d593          	srli	a1,a1,0x20
    80003664:	00bd85b3          	add	a1,s11,a1
    80003668:	0005c583          	lbu	a1,0(a1)
    8000366c:	02d7d7bb          	divuw	a5,a5,a3
    80003670:	f8b401a3          	sb	a1,-125(s0)
    80003674:	48e57263          	bgeu	a0,a4,80003af8 <__printf+0x620>
    80003678:	3e700513          	li	a0,999
    8000367c:	02d7f5bb          	remuw	a1,a5,a3
    80003680:	02059593          	slli	a1,a1,0x20
    80003684:	0205d593          	srli	a1,a1,0x20
    80003688:	00bd85b3          	add	a1,s11,a1
    8000368c:	0005c583          	lbu	a1,0(a1)
    80003690:	02d7d7bb          	divuw	a5,a5,a3
    80003694:	f8b40223          	sb	a1,-124(s0)
    80003698:	46e57663          	bgeu	a0,a4,80003b04 <__printf+0x62c>
    8000369c:	02d7f5bb          	remuw	a1,a5,a3
    800036a0:	02059593          	slli	a1,a1,0x20
    800036a4:	0205d593          	srli	a1,a1,0x20
    800036a8:	00bd85b3          	add	a1,s11,a1
    800036ac:	0005c583          	lbu	a1,0(a1)
    800036b0:	02d7d7bb          	divuw	a5,a5,a3
    800036b4:	f8b402a3          	sb	a1,-123(s0)
    800036b8:	46ea7863          	bgeu	s4,a4,80003b28 <__printf+0x650>
    800036bc:	02d7f5bb          	remuw	a1,a5,a3
    800036c0:	02059593          	slli	a1,a1,0x20
    800036c4:	0205d593          	srli	a1,a1,0x20
    800036c8:	00bd85b3          	add	a1,s11,a1
    800036cc:	0005c583          	lbu	a1,0(a1)
    800036d0:	02d7d7bb          	divuw	a5,a5,a3
    800036d4:	f8b40323          	sb	a1,-122(s0)
    800036d8:	3eeaf863          	bgeu	s5,a4,80003ac8 <__printf+0x5f0>
    800036dc:	02d7f5bb          	remuw	a1,a5,a3
    800036e0:	02059593          	slli	a1,a1,0x20
    800036e4:	0205d593          	srli	a1,a1,0x20
    800036e8:	00bd85b3          	add	a1,s11,a1
    800036ec:	0005c583          	lbu	a1,0(a1)
    800036f0:	02d7d7bb          	divuw	a5,a5,a3
    800036f4:	f8b403a3          	sb	a1,-121(s0)
    800036f8:	42eb7e63          	bgeu	s6,a4,80003b34 <__printf+0x65c>
    800036fc:	02d7f5bb          	remuw	a1,a5,a3
    80003700:	02059593          	slli	a1,a1,0x20
    80003704:	0205d593          	srli	a1,a1,0x20
    80003708:	00bd85b3          	add	a1,s11,a1
    8000370c:	0005c583          	lbu	a1,0(a1)
    80003710:	02d7d7bb          	divuw	a5,a5,a3
    80003714:	f8b40423          	sb	a1,-120(s0)
    80003718:	42ebfc63          	bgeu	s7,a4,80003b50 <__printf+0x678>
    8000371c:	02079793          	slli	a5,a5,0x20
    80003720:	0207d793          	srli	a5,a5,0x20
    80003724:	00fd8db3          	add	s11,s11,a5
    80003728:	000dc703          	lbu	a4,0(s11)
    8000372c:	00a00793          	li	a5,10
    80003730:	00900c93          	li	s9,9
    80003734:	f8e404a3          	sb	a4,-119(s0)
    80003738:	00065c63          	bgez	a2,80003750 <__printf+0x278>
    8000373c:	f9040713          	addi	a4,s0,-112
    80003740:	00f70733          	add	a4,a4,a5
    80003744:	02d00693          	li	a3,45
    80003748:	fed70823          	sb	a3,-16(a4)
    8000374c:	00078c93          	mv	s9,a5
    80003750:	f8040793          	addi	a5,s0,-128
    80003754:	01978cb3          	add	s9,a5,s9
    80003758:	f7f40d13          	addi	s10,s0,-129
    8000375c:	000cc503          	lbu	a0,0(s9)
    80003760:	fffc8c93          	addi	s9,s9,-1
    80003764:	00000097          	auipc	ra,0x0
    80003768:	b90080e7          	jalr	-1136(ra) # 800032f4 <consputc>
    8000376c:	ffac98e3          	bne	s9,s10,8000375c <__printf+0x284>
    80003770:	00094503          	lbu	a0,0(s2)
    80003774:	e00514e3          	bnez	a0,8000357c <__printf+0xa4>
    80003778:	1a0c1663          	bnez	s8,80003924 <__printf+0x44c>
    8000377c:	08813083          	ld	ra,136(sp)
    80003780:	08013403          	ld	s0,128(sp)
    80003784:	07813483          	ld	s1,120(sp)
    80003788:	07013903          	ld	s2,112(sp)
    8000378c:	06813983          	ld	s3,104(sp)
    80003790:	06013a03          	ld	s4,96(sp)
    80003794:	05813a83          	ld	s5,88(sp)
    80003798:	05013b03          	ld	s6,80(sp)
    8000379c:	04813b83          	ld	s7,72(sp)
    800037a0:	04013c03          	ld	s8,64(sp)
    800037a4:	03813c83          	ld	s9,56(sp)
    800037a8:	03013d03          	ld	s10,48(sp)
    800037ac:	02813d83          	ld	s11,40(sp)
    800037b0:	0d010113          	addi	sp,sp,208
    800037b4:	00008067          	ret
    800037b8:	07300713          	li	a4,115
    800037bc:	1ce78a63          	beq	a5,a4,80003990 <__printf+0x4b8>
    800037c0:	07800713          	li	a4,120
    800037c4:	1ee79e63          	bne	a5,a4,800039c0 <__printf+0x4e8>
    800037c8:	f7843783          	ld	a5,-136(s0)
    800037cc:	0007a703          	lw	a4,0(a5)
    800037d0:	00878793          	addi	a5,a5,8
    800037d4:	f6f43c23          	sd	a5,-136(s0)
    800037d8:	28074263          	bltz	a4,80003a5c <__printf+0x584>
    800037dc:	00002d97          	auipc	s11,0x2
    800037e0:	a64d8d93          	addi	s11,s11,-1436 # 80005240 <digits>
    800037e4:	00f77793          	andi	a5,a4,15
    800037e8:	00fd87b3          	add	a5,s11,a5
    800037ec:	0007c683          	lbu	a3,0(a5)
    800037f0:	00f00613          	li	a2,15
    800037f4:	0007079b          	sext.w	a5,a4
    800037f8:	f8d40023          	sb	a3,-128(s0)
    800037fc:	0047559b          	srliw	a1,a4,0x4
    80003800:	0047569b          	srliw	a3,a4,0x4
    80003804:	00000c93          	li	s9,0
    80003808:	0ee65063          	bge	a2,a4,800038e8 <__printf+0x410>
    8000380c:	00f6f693          	andi	a3,a3,15
    80003810:	00dd86b3          	add	a3,s11,a3
    80003814:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003818:	0087d79b          	srliw	a5,a5,0x8
    8000381c:	00100c93          	li	s9,1
    80003820:	f8d400a3          	sb	a3,-127(s0)
    80003824:	0cb67263          	bgeu	a2,a1,800038e8 <__printf+0x410>
    80003828:	00f7f693          	andi	a3,a5,15
    8000382c:	00dd86b3          	add	a3,s11,a3
    80003830:	0006c583          	lbu	a1,0(a3)
    80003834:	00f00613          	li	a2,15
    80003838:	0047d69b          	srliw	a3,a5,0x4
    8000383c:	f8b40123          	sb	a1,-126(s0)
    80003840:	0047d593          	srli	a1,a5,0x4
    80003844:	28f67e63          	bgeu	a2,a5,80003ae0 <__printf+0x608>
    80003848:	00f6f693          	andi	a3,a3,15
    8000384c:	00dd86b3          	add	a3,s11,a3
    80003850:	0006c503          	lbu	a0,0(a3)
    80003854:	0087d813          	srli	a6,a5,0x8
    80003858:	0087d69b          	srliw	a3,a5,0x8
    8000385c:	f8a401a3          	sb	a0,-125(s0)
    80003860:	28b67663          	bgeu	a2,a1,80003aec <__printf+0x614>
    80003864:	00f6f693          	andi	a3,a3,15
    80003868:	00dd86b3          	add	a3,s11,a3
    8000386c:	0006c583          	lbu	a1,0(a3)
    80003870:	00c7d513          	srli	a0,a5,0xc
    80003874:	00c7d69b          	srliw	a3,a5,0xc
    80003878:	f8b40223          	sb	a1,-124(s0)
    8000387c:	29067a63          	bgeu	a2,a6,80003b10 <__printf+0x638>
    80003880:	00f6f693          	andi	a3,a3,15
    80003884:	00dd86b3          	add	a3,s11,a3
    80003888:	0006c583          	lbu	a1,0(a3)
    8000388c:	0107d813          	srli	a6,a5,0x10
    80003890:	0107d69b          	srliw	a3,a5,0x10
    80003894:	f8b402a3          	sb	a1,-123(s0)
    80003898:	28a67263          	bgeu	a2,a0,80003b1c <__printf+0x644>
    8000389c:	00f6f693          	andi	a3,a3,15
    800038a0:	00dd86b3          	add	a3,s11,a3
    800038a4:	0006c683          	lbu	a3,0(a3)
    800038a8:	0147d79b          	srliw	a5,a5,0x14
    800038ac:	f8d40323          	sb	a3,-122(s0)
    800038b0:	21067663          	bgeu	a2,a6,80003abc <__printf+0x5e4>
    800038b4:	02079793          	slli	a5,a5,0x20
    800038b8:	0207d793          	srli	a5,a5,0x20
    800038bc:	00fd8db3          	add	s11,s11,a5
    800038c0:	000dc683          	lbu	a3,0(s11)
    800038c4:	00800793          	li	a5,8
    800038c8:	00700c93          	li	s9,7
    800038cc:	f8d403a3          	sb	a3,-121(s0)
    800038d0:	00075c63          	bgez	a4,800038e8 <__printf+0x410>
    800038d4:	f9040713          	addi	a4,s0,-112
    800038d8:	00f70733          	add	a4,a4,a5
    800038dc:	02d00693          	li	a3,45
    800038e0:	fed70823          	sb	a3,-16(a4)
    800038e4:	00078c93          	mv	s9,a5
    800038e8:	f8040793          	addi	a5,s0,-128
    800038ec:	01978cb3          	add	s9,a5,s9
    800038f0:	f7f40d13          	addi	s10,s0,-129
    800038f4:	000cc503          	lbu	a0,0(s9)
    800038f8:	fffc8c93          	addi	s9,s9,-1
    800038fc:	00000097          	auipc	ra,0x0
    80003900:	9f8080e7          	jalr	-1544(ra) # 800032f4 <consputc>
    80003904:	ff9d18e3          	bne	s10,s9,800038f4 <__printf+0x41c>
    80003908:	0100006f          	j	80003918 <__printf+0x440>
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	9e8080e7          	jalr	-1560(ra) # 800032f4 <consputc>
    80003914:	000c8493          	mv	s1,s9
    80003918:	00094503          	lbu	a0,0(s2)
    8000391c:	c60510e3          	bnez	a0,8000357c <__printf+0xa4>
    80003920:	e40c0ee3          	beqz	s8,8000377c <__printf+0x2a4>
    80003924:	00003517          	auipc	a0,0x3
    80003928:	2bc50513          	addi	a0,a0,700 # 80006be0 <pr>
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	94c080e7          	jalr	-1716(ra) # 80004278 <release>
    80003934:	e49ff06f          	j	8000377c <__printf+0x2a4>
    80003938:	f7843783          	ld	a5,-136(s0)
    8000393c:	03000513          	li	a0,48
    80003940:	01000d13          	li	s10,16
    80003944:	00878713          	addi	a4,a5,8
    80003948:	0007bc83          	ld	s9,0(a5)
    8000394c:	f6e43c23          	sd	a4,-136(s0)
    80003950:	00000097          	auipc	ra,0x0
    80003954:	9a4080e7          	jalr	-1628(ra) # 800032f4 <consputc>
    80003958:	07800513          	li	a0,120
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	998080e7          	jalr	-1640(ra) # 800032f4 <consputc>
    80003964:	00002d97          	auipc	s11,0x2
    80003968:	8dcd8d93          	addi	s11,s11,-1828 # 80005240 <digits>
    8000396c:	03ccd793          	srli	a5,s9,0x3c
    80003970:	00fd87b3          	add	a5,s11,a5
    80003974:	0007c503          	lbu	a0,0(a5)
    80003978:	fffd0d1b          	addiw	s10,s10,-1
    8000397c:	004c9c93          	slli	s9,s9,0x4
    80003980:	00000097          	auipc	ra,0x0
    80003984:	974080e7          	jalr	-1676(ra) # 800032f4 <consputc>
    80003988:	fe0d12e3          	bnez	s10,8000396c <__printf+0x494>
    8000398c:	f8dff06f          	j	80003918 <__printf+0x440>
    80003990:	f7843783          	ld	a5,-136(s0)
    80003994:	0007bc83          	ld	s9,0(a5)
    80003998:	00878793          	addi	a5,a5,8
    8000399c:	f6f43c23          	sd	a5,-136(s0)
    800039a0:	000c9a63          	bnez	s9,800039b4 <__printf+0x4dc>
    800039a4:	1080006f          	j	80003aac <__printf+0x5d4>
    800039a8:	001c8c93          	addi	s9,s9,1
    800039ac:	00000097          	auipc	ra,0x0
    800039b0:	948080e7          	jalr	-1720(ra) # 800032f4 <consputc>
    800039b4:	000cc503          	lbu	a0,0(s9)
    800039b8:	fe0518e3          	bnez	a0,800039a8 <__printf+0x4d0>
    800039bc:	f5dff06f          	j	80003918 <__printf+0x440>
    800039c0:	02500513          	li	a0,37
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	930080e7          	jalr	-1744(ra) # 800032f4 <consputc>
    800039cc:	000c8513          	mv	a0,s9
    800039d0:	00000097          	auipc	ra,0x0
    800039d4:	924080e7          	jalr	-1756(ra) # 800032f4 <consputc>
    800039d8:	f41ff06f          	j	80003918 <__printf+0x440>
    800039dc:	02500513          	li	a0,37
    800039e0:	00000097          	auipc	ra,0x0
    800039e4:	914080e7          	jalr	-1772(ra) # 800032f4 <consputc>
    800039e8:	f31ff06f          	j	80003918 <__printf+0x440>
    800039ec:	00030513          	mv	a0,t1
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	7bc080e7          	jalr	1980(ra) # 800041ac <acquire>
    800039f8:	b4dff06f          	j	80003544 <__printf+0x6c>
    800039fc:	40c0053b          	negw	a0,a2
    80003a00:	00a00713          	li	a4,10
    80003a04:	02e576bb          	remuw	a3,a0,a4
    80003a08:	00002d97          	auipc	s11,0x2
    80003a0c:	838d8d93          	addi	s11,s11,-1992 # 80005240 <digits>
    80003a10:	ff700593          	li	a1,-9
    80003a14:	02069693          	slli	a3,a3,0x20
    80003a18:	0206d693          	srli	a3,a3,0x20
    80003a1c:	00dd86b3          	add	a3,s11,a3
    80003a20:	0006c683          	lbu	a3,0(a3)
    80003a24:	02e557bb          	divuw	a5,a0,a4
    80003a28:	f8d40023          	sb	a3,-128(s0)
    80003a2c:	10b65e63          	bge	a2,a1,80003b48 <__printf+0x670>
    80003a30:	06300593          	li	a1,99
    80003a34:	02e7f6bb          	remuw	a3,a5,a4
    80003a38:	02069693          	slli	a3,a3,0x20
    80003a3c:	0206d693          	srli	a3,a3,0x20
    80003a40:	00dd86b3          	add	a3,s11,a3
    80003a44:	0006c683          	lbu	a3,0(a3)
    80003a48:	02e7d73b          	divuw	a4,a5,a4
    80003a4c:	00200793          	li	a5,2
    80003a50:	f8d400a3          	sb	a3,-127(s0)
    80003a54:	bca5ece3          	bltu	a1,a0,8000362c <__printf+0x154>
    80003a58:	ce5ff06f          	j	8000373c <__printf+0x264>
    80003a5c:	40e007bb          	negw	a5,a4
    80003a60:	00001d97          	auipc	s11,0x1
    80003a64:	7e0d8d93          	addi	s11,s11,2016 # 80005240 <digits>
    80003a68:	00f7f693          	andi	a3,a5,15
    80003a6c:	00dd86b3          	add	a3,s11,a3
    80003a70:	0006c583          	lbu	a1,0(a3)
    80003a74:	ff100613          	li	a2,-15
    80003a78:	0047d69b          	srliw	a3,a5,0x4
    80003a7c:	f8b40023          	sb	a1,-128(s0)
    80003a80:	0047d59b          	srliw	a1,a5,0x4
    80003a84:	0ac75e63          	bge	a4,a2,80003b40 <__printf+0x668>
    80003a88:	00f6f693          	andi	a3,a3,15
    80003a8c:	00dd86b3          	add	a3,s11,a3
    80003a90:	0006c603          	lbu	a2,0(a3)
    80003a94:	00f00693          	li	a3,15
    80003a98:	0087d79b          	srliw	a5,a5,0x8
    80003a9c:	f8c400a3          	sb	a2,-127(s0)
    80003aa0:	d8b6e4e3          	bltu	a3,a1,80003828 <__printf+0x350>
    80003aa4:	00200793          	li	a5,2
    80003aa8:	e2dff06f          	j	800038d4 <__printf+0x3fc>
    80003aac:	00001c97          	auipc	s9,0x1
    80003ab0:	774c8c93          	addi	s9,s9,1908 # 80005220 <CONSOLE_STATUS+0x210>
    80003ab4:	02800513          	li	a0,40
    80003ab8:	ef1ff06f          	j	800039a8 <__printf+0x4d0>
    80003abc:	00700793          	li	a5,7
    80003ac0:	00600c93          	li	s9,6
    80003ac4:	e0dff06f          	j	800038d0 <__printf+0x3f8>
    80003ac8:	00700793          	li	a5,7
    80003acc:	00600c93          	li	s9,6
    80003ad0:	c69ff06f          	j	80003738 <__printf+0x260>
    80003ad4:	00300793          	li	a5,3
    80003ad8:	00200c93          	li	s9,2
    80003adc:	c5dff06f          	j	80003738 <__printf+0x260>
    80003ae0:	00300793          	li	a5,3
    80003ae4:	00200c93          	li	s9,2
    80003ae8:	de9ff06f          	j	800038d0 <__printf+0x3f8>
    80003aec:	00400793          	li	a5,4
    80003af0:	00300c93          	li	s9,3
    80003af4:	dddff06f          	j	800038d0 <__printf+0x3f8>
    80003af8:	00400793          	li	a5,4
    80003afc:	00300c93          	li	s9,3
    80003b00:	c39ff06f          	j	80003738 <__printf+0x260>
    80003b04:	00500793          	li	a5,5
    80003b08:	00400c93          	li	s9,4
    80003b0c:	c2dff06f          	j	80003738 <__printf+0x260>
    80003b10:	00500793          	li	a5,5
    80003b14:	00400c93          	li	s9,4
    80003b18:	db9ff06f          	j	800038d0 <__printf+0x3f8>
    80003b1c:	00600793          	li	a5,6
    80003b20:	00500c93          	li	s9,5
    80003b24:	dadff06f          	j	800038d0 <__printf+0x3f8>
    80003b28:	00600793          	li	a5,6
    80003b2c:	00500c93          	li	s9,5
    80003b30:	c09ff06f          	j	80003738 <__printf+0x260>
    80003b34:	00800793          	li	a5,8
    80003b38:	00700c93          	li	s9,7
    80003b3c:	bfdff06f          	j	80003738 <__printf+0x260>
    80003b40:	00100793          	li	a5,1
    80003b44:	d91ff06f          	j	800038d4 <__printf+0x3fc>
    80003b48:	00100793          	li	a5,1
    80003b4c:	bf1ff06f          	j	8000373c <__printf+0x264>
    80003b50:	00900793          	li	a5,9
    80003b54:	00800c93          	li	s9,8
    80003b58:	be1ff06f          	j	80003738 <__printf+0x260>
    80003b5c:	00001517          	auipc	a0,0x1
    80003b60:	6cc50513          	addi	a0,a0,1740 # 80005228 <CONSOLE_STATUS+0x218>
    80003b64:	00000097          	auipc	ra,0x0
    80003b68:	918080e7          	jalr	-1768(ra) # 8000347c <panic>

0000000080003b6c <printfinit>:
    80003b6c:	fe010113          	addi	sp,sp,-32
    80003b70:	00813823          	sd	s0,16(sp)
    80003b74:	00913423          	sd	s1,8(sp)
    80003b78:	00113c23          	sd	ra,24(sp)
    80003b7c:	02010413          	addi	s0,sp,32
    80003b80:	00003497          	auipc	s1,0x3
    80003b84:	06048493          	addi	s1,s1,96 # 80006be0 <pr>
    80003b88:	00048513          	mv	a0,s1
    80003b8c:	00001597          	auipc	a1,0x1
    80003b90:	6ac58593          	addi	a1,a1,1708 # 80005238 <CONSOLE_STATUS+0x228>
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	5f4080e7          	jalr	1524(ra) # 80004188 <initlock>
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	0004ac23          	sw	zero,24(s1)
    80003ba8:	00813483          	ld	s1,8(sp)
    80003bac:	02010113          	addi	sp,sp,32
    80003bb0:	00008067          	ret

0000000080003bb4 <uartinit>:
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00813423          	sd	s0,8(sp)
    80003bbc:	01010413          	addi	s0,sp,16
    80003bc0:	100007b7          	lui	a5,0x10000
    80003bc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003bc8:	f8000713          	li	a4,-128
    80003bcc:	00e781a3          	sb	a4,3(a5)
    80003bd0:	00300713          	li	a4,3
    80003bd4:	00e78023          	sb	a4,0(a5)
    80003bd8:	000780a3          	sb	zero,1(a5)
    80003bdc:	00e781a3          	sb	a4,3(a5)
    80003be0:	00700693          	li	a3,7
    80003be4:	00d78123          	sb	a3,2(a5)
    80003be8:	00e780a3          	sb	a4,1(a5)
    80003bec:	00813403          	ld	s0,8(sp)
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret

0000000080003bf8 <uartputc>:
    80003bf8:	00002797          	auipc	a5,0x2
    80003bfc:	d707a783          	lw	a5,-656(a5) # 80005968 <panicked>
    80003c00:	00078463          	beqz	a5,80003c08 <uartputc+0x10>
    80003c04:	0000006f          	j	80003c04 <uartputc+0xc>
    80003c08:	fd010113          	addi	sp,sp,-48
    80003c0c:	02813023          	sd	s0,32(sp)
    80003c10:	00913c23          	sd	s1,24(sp)
    80003c14:	01213823          	sd	s2,16(sp)
    80003c18:	01313423          	sd	s3,8(sp)
    80003c1c:	02113423          	sd	ra,40(sp)
    80003c20:	03010413          	addi	s0,sp,48
    80003c24:	00002917          	auipc	s2,0x2
    80003c28:	d4c90913          	addi	s2,s2,-692 # 80005970 <uart_tx_r>
    80003c2c:	00093783          	ld	a5,0(s2)
    80003c30:	00002497          	auipc	s1,0x2
    80003c34:	d4848493          	addi	s1,s1,-696 # 80005978 <uart_tx_w>
    80003c38:	0004b703          	ld	a4,0(s1)
    80003c3c:	02078693          	addi	a3,a5,32
    80003c40:	00050993          	mv	s3,a0
    80003c44:	02e69c63          	bne	a3,a4,80003c7c <uartputc+0x84>
    80003c48:	00001097          	auipc	ra,0x1
    80003c4c:	834080e7          	jalr	-1996(ra) # 8000447c <push_on>
    80003c50:	00093783          	ld	a5,0(s2)
    80003c54:	0004b703          	ld	a4,0(s1)
    80003c58:	02078793          	addi	a5,a5,32
    80003c5c:	00e79463          	bne	a5,a4,80003c64 <uartputc+0x6c>
    80003c60:	0000006f          	j	80003c60 <uartputc+0x68>
    80003c64:	00001097          	auipc	ra,0x1
    80003c68:	88c080e7          	jalr	-1908(ra) # 800044f0 <pop_on>
    80003c6c:	00093783          	ld	a5,0(s2)
    80003c70:	0004b703          	ld	a4,0(s1)
    80003c74:	02078693          	addi	a3,a5,32
    80003c78:	fce688e3          	beq	a3,a4,80003c48 <uartputc+0x50>
    80003c7c:	01f77693          	andi	a3,a4,31
    80003c80:	00003597          	auipc	a1,0x3
    80003c84:	f8058593          	addi	a1,a1,-128 # 80006c00 <uart_tx_buf>
    80003c88:	00d586b3          	add	a3,a1,a3
    80003c8c:	00170713          	addi	a4,a4,1
    80003c90:	01368023          	sb	s3,0(a3)
    80003c94:	00e4b023          	sd	a4,0(s1)
    80003c98:	10000637          	lui	a2,0x10000
    80003c9c:	02f71063          	bne	a4,a5,80003cbc <uartputc+0xc4>
    80003ca0:	0340006f          	j	80003cd4 <uartputc+0xdc>
    80003ca4:	00074703          	lbu	a4,0(a4)
    80003ca8:	00f93023          	sd	a5,0(s2)
    80003cac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003cb0:	00093783          	ld	a5,0(s2)
    80003cb4:	0004b703          	ld	a4,0(s1)
    80003cb8:	00f70e63          	beq	a4,a5,80003cd4 <uartputc+0xdc>
    80003cbc:	00564683          	lbu	a3,5(a2)
    80003cc0:	01f7f713          	andi	a4,a5,31
    80003cc4:	00e58733          	add	a4,a1,a4
    80003cc8:	0206f693          	andi	a3,a3,32
    80003ccc:	00178793          	addi	a5,a5,1
    80003cd0:	fc069ae3          	bnez	a3,80003ca4 <uartputc+0xac>
    80003cd4:	02813083          	ld	ra,40(sp)
    80003cd8:	02013403          	ld	s0,32(sp)
    80003cdc:	01813483          	ld	s1,24(sp)
    80003ce0:	01013903          	ld	s2,16(sp)
    80003ce4:	00813983          	ld	s3,8(sp)
    80003ce8:	03010113          	addi	sp,sp,48
    80003cec:	00008067          	ret

0000000080003cf0 <uartputc_sync>:
    80003cf0:	ff010113          	addi	sp,sp,-16
    80003cf4:	00813423          	sd	s0,8(sp)
    80003cf8:	01010413          	addi	s0,sp,16
    80003cfc:	00002717          	auipc	a4,0x2
    80003d00:	c6c72703          	lw	a4,-916(a4) # 80005968 <panicked>
    80003d04:	02071663          	bnez	a4,80003d30 <uartputc_sync+0x40>
    80003d08:	00050793          	mv	a5,a0
    80003d0c:	100006b7          	lui	a3,0x10000
    80003d10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003d14:	02077713          	andi	a4,a4,32
    80003d18:	fe070ce3          	beqz	a4,80003d10 <uartputc_sync+0x20>
    80003d1c:	0ff7f793          	andi	a5,a5,255
    80003d20:	00f68023          	sb	a5,0(a3)
    80003d24:	00813403          	ld	s0,8(sp)
    80003d28:	01010113          	addi	sp,sp,16
    80003d2c:	00008067          	ret
    80003d30:	0000006f          	j	80003d30 <uartputc_sync+0x40>

0000000080003d34 <uartstart>:
    80003d34:	ff010113          	addi	sp,sp,-16
    80003d38:	00813423          	sd	s0,8(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	00002617          	auipc	a2,0x2
    80003d44:	c3060613          	addi	a2,a2,-976 # 80005970 <uart_tx_r>
    80003d48:	00002517          	auipc	a0,0x2
    80003d4c:	c3050513          	addi	a0,a0,-976 # 80005978 <uart_tx_w>
    80003d50:	00063783          	ld	a5,0(a2)
    80003d54:	00053703          	ld	a4,0(a0)
    80003d58:	04f70263          	beq	a4,a5,80003d9c <uartstart+0x68>
    80003d5c:	100005b7          	lui	a1,0x10000
    80003d60:	00003817          	auipc	a6,0x3
    80003d64:	ea080813          	addi	a6,a6,-352 # 80006c00 <uart_tx_buf>
    80003d68:	01c0006f          	j	80003d84 <uartstart+0x50>
    80003d6c:	0006c703          	lbu	a4,0(a3)
    80003d70:	00f63023          	sd	a5,0(a2)
    80003d74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d78:	00063783          	ld	a5,0(a2)
    80003d7c:	00053703          	ld	a4,0(a0)
    80003d80:	00f70e63          	beq	a4,a5,80003d9c <uartstart+0x68>
    80003d84:	01f7f713          	andi	a4,a5,31
    80003d88:	00e806b3          	add	a3,a6,a4
    80003d8c:	0055c703          	lbu	a4,5(a1)
    80003d90:	00178793          	addi	a5,a5,1
    80003d94:	02077713          	andi	a4,a4,32
    80003d98:	fc071ae3          	bnez	a4,80003d6c <uartstart+0x38>
    80003d9c:	00813403          	ld	s0,8(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <uartgetc>:
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00813423          	sd	s0,8(sp)
    80003db0:	01010413          	addi	s0,sp,16
    80003db4:	10000737          	lui	a4,0x10000
    80003db8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003dbc:	0017f793          	andi	a5,a5,1
    80003dc0:	00078c63          	beqz	a5,80003dd8 <uartgetc+0x30>
    80003dc4:	00074503          	lbu	a0,0(a4)
    80003dc8:	0ff57513          	andi	a0,a0,255
    80003dcc:	00813403          	ld	s0,8(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret
    80003dd8:	fff00513          	li	a0,-1
    80003ddc:	ff1ff06f          	j	80003dcc <uartgetc+0x24>

0000000080003de0 <uartintr>:
    80003de0:	100007b7          	lui	a5,0x10000
    80003de4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003de8:	0017f793          	andi	a5,a5,1
    80003dec:	0a078463          	beqz	a5,80003e94 <uartintr+0xb4>
    80003df0:	fe010113          	addi	sp,sp,-32
    80003df4:	00813823          	sd	s0,16(sp)
    80003df8:	00913423          	sd	s1,8(sp)
    80003dfc:	00113c23          	sd	ra,24(sp)
    80003e00:	02010413          	addi	s0,sp,32
    80003e04:	100004b7          	lui	s1,0x10000
    80003e08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003e0c:	0ff57513          	andi	a0,a0,255
    80003e10:	fffff097          	auipc	ra,0xfffff
    80003e14:	534080e7          	jalr	1332(ra) # 80003344 <consoleintr>
    80003e18:	0054c783          	lbu	a5,5(s1)
    80003e1c:	0017f793          	andi	a5,a5,1
    80003e20:	fe0794e3          	bnez	a5,80003e08 <uartintr+0x28>
    80003e24:	00002617          	auipc	a2,0x2
    80003e28:	b4c60613          	addi	a2,a2,-1204 # 80005970 <uart_tx_r>
    80003e2c:	00002517          	auipc	a0,0x2
    80003e30:	b4c50513          	addi	a0,a0,-1204 # 80005978 <uart_tx_w>
    80003e34:	00063783          	ld	a5,0(a2)
    80003e38:	00053703          	ld	a4,0(a0)
    80003e3c:	04f70263          	beq	a4,a5,80003e80 <uartintr+0xa0>
    80003e40:	100005b7          	lui	a1,0x10000
    80003e44:	00003817          	auipc	a6,0x3
    80003e48:	dbc80813          	addi	a6,a6,-580 # 80006c00 <uart_tx_buf>
    80003e4c:	01c0006f          	j	80003e68 <uartintr+0x88>
    80003e50:	0006c703          	lbu	a4,0(a3)
    80003e54:	00f63023          	sd	a5,0(a2)
    80003e58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e5c:	00063783          	ld	a5,0(a2)
    80003e60:	00053703          	ld	a4,0(a0)
    80003e64:	00f70e63          	beq	a4,a5,80003e80 <uartintr+0xa0>
    80003e68:	01f7f713          	andi	a4,a5,31
    80003e6c:	00e806b3          	add	a3,a6,a4
    80003e70:	0055c703          	lbu	a4,5(a1)
    80003e74:	00178793          	addi	a5,a5,1
    80003e78:	02077713          	andi	a4,a4,32
    80003e7c:	fc071ae3          	bnez	a4,80003e50 <uartintr+0x70>
    80003e80:	01813083          	ld	ra,24(sp)
    80003e84:	01013403          	ld	s0,16(sp)
    80003e88:	00813483          	ld	s1,8(sp)
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00008067          	ret
    80003e94:	00002617          	auipc	a2,0x2
    80003e98:	adc60613          	addi	a2,a2,-1316 # 80005970 <uart_tx_r>
    80003e9c:	00002517          	auipc	a0,0x2
    80003ea0:	adc50513          	addi	a0,a0,-1316 # 80005978 <uart_tx_w>
    80003ea4:	00063783          	ld	a5,0(a2)
    80003ea8:	00053703          	ld	a4,0(a0)
    80003eac:	04f70263          	beq	a4,a5,80003ef0 <uartintr+0x110>
    80003eb0:	100005b7          	lui	a1,0x10000
    80003eb4:	00003817          	auipc	a6,0x3
    80003eb8:	d4c80813          	addi	a6,a6,-692 # 80006c00 <uart_tx_buf>
    80003ebc:	01c0006f          	j	80003ed8 <uartintr+0xf8>
    80003ec0:	0006c703          	lbu	a4,0(a3)
    80003ec4:	00f63023          	sd	a5,0(a2)
    80003ec8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003ecc:	00063783          	ld	a5,0(a2)
    80003ed0:	00053703          	ld	a4,0(a0)
    80003ed4:	02f70063          	beq	a4,a5,80003ef4 <uartintr+0x114>
    80003ed8:	01f7f713          	andi	a4,a5,31
    80003edc:	00e806b3          	add	a3,a6,a4
    80003ee0:	0055c703          	lbu	a4,5(a1)
    80003ee4:	00178793          	addi	a5,a5,1
    80003ee8:	02077713          	andi	a4,a4,32
    80003eec:	fc071ae3          	bnez	a4,80003ec0 <uartintr+0xe0>
    80003ef0:	00008067          	ret
    80003ef4:	00008067          	ret

0000000080003ef8 <kinit>:
    80003ef8:	fc010113          	addi	sp,sp,-64
    80003efc:	02913423          	sd	s1,40(sp)
    80003f00:	fffff7b7          	lui	a5,0xfffff
    80003f04:	00004497          	auipc	s1,0x4
    80003f08:	d1b48493          	addi	s1,s1,-741 # 80007c1f <end+0xfff>
    80003f0c:	02813823          	sd	s0,48(sp)
    80003f10:	01313c23          	sd	s3,24(sp)
    80003f14:	00f4f4b3          	and	s1,s1,a5
    80003f18:	02113c23          	sd	ra,56(sp)
    80003f1c:	03213023          	sd	s2,32(sp)
    80003f20:	01413823          	sd	s4,16(sp)
    80003f24:	01513423          	sd	s5,8(sp)
    80003f28:	04010413          	addi	s0,sp,64
    80003f2c:	000017b7          	lui	a5,0x1
    80003f30:	01100993          	li	s3,17
    80003f34:	00f487b3          	add	a5,s1,a5
    80003f38:	01b99993          	slli	s3,s3,0x1b
    80003f3c:	06f9e063          	bltu	s3,a5,80003f9c <kinit+0xa4>
    80003f40:	00003a97          	auipc	s5,0x3
    80003f44:	ce0a8a93          	addi	s5,s5,-800 # 80006c20 <end>
    80003f48:	0754ec63          	bltu	s1,s5,80003fc0 <kinit+0xc8>
    80003f4c:	0734fa63          	bgeu	s1,s3,80003fc0 <kinit+0xc8>
    80003f50:	00088a37          	lui	s4,0x88
    80003f54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003f58:	00002917          	auipc	s2,0x2
    80003f5c:	a2890913          	addi	s2,s2,-1496 # 80005980 <kmem>
    80003f60:	00ca1a13          	slli	s4,s4,0xc
    80003f64:	0140006f          	j	80003f78 <kinit+0x80>
    80003f68:	000017b7          	lui	a5,0x1
    80003f6c:	00f484b3          	add	s1,s1,a5
    80003f70:	0554e863          	bltu	s1,s5,80003fc0 <kinit+0xc8>
    80003f74:	0534f663          	bgeu	s1,s3,80003fc0 <kinit+0xc8>
    80003f78:	00001637          	lui	a2,0x1
    80003f7c:	00100593          	li	a1,1
    80003f80:	00048513          	mv	a0,s1
    80003f84:	00000097          	auipc	ra,0x0
    80003f88:	5e4080e7          	jalr	1508(ra) # 80004568 <__memset>
    80003f8c:	00093783          	ld	a5,0(s2)
    80003f90:	00f4b023          	sd	a5,0(s1)
    80003f94:	00993023          	sd	s1,0(s2)
    80003f98:	fd4498e3          	bne	s1,s4,80003f68 <kinit+0x70>
    80003f9c:	03813083          	ld	ra,56(sp)
    80003fa0:	03013403          	ld	s0,48(sp)
    80003fa4:	02813483          	ld	s1,40(sp)
    80003fa8:	02013903          	ld	s2,32(sp)
    80003fac:	01813983          	ld	s3,24(sp)
    80003fb0:	01013a03          	ld	s4,16(sp)
    80003fb4:	00813a83          	ld	s5,8(sp)
    80003fb8:	04010113          	addi	sp,sp,64
    80003fbc:	00008067          	ret
    80003fc0:	00001517          	auipc	a0,0x1
    80003fc4:	29850513          	addi	a0,a0,664 # 80005258 <digits+0x18>
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	4b4080e7          	jalr	1204(ra) # 8000347c <panic>

0000000080003fd0 <freerange>:
    80003fd0:	fc010113          	addi	sp,sp,-64
    80003fd4:	000017b7          	lui	a5,0x1
    80003fd8:	02913423          	sd	s1,40(sp)
    80003fdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003fe0:	009504b3          	add	s1,a0,s1
    80003fe4:	fffff537          	lui	a0,0xfffff
    80003fe8:	02813823          	sd	s0,48(sp)
    80003fec:	02113c23          	sd	ra,56(sp)
    80003ff0:	03213023          	sd	s2,32(sp)
    80003ff4:	01313c23          	sd	s3,24(sp)
    80003ff8:	01413823          	sd	s4,16(sp)
    80003ffc:	01513423          	sd	s5,8(sp)
    80004000:	01613023          	sd	s6,0(sp)
    80004004:	04010413          	addi	s0,sp,64
    80004008:	00a4f4b3          	and	s1,s1,a0
    8000400c:	00f487b3          	add	a5,s1,a5
    80004010:	06f5e463          	bltu	a1,a5,80004078 <freerange+0xa8>
    80004014:	00003a97          	auipc	s5,0x3
    80004018:	c0ca8a93          	addi	s5,s5,-1012 # 80006c20 <end>
    8000401c:	0954e263          	bltu	s1,s5,800040a0 <freerange+0xd0>
    80004020:	01100993          	li	s3,17
    80004024:	01b99993          	slli	s3,s3,0x1b
    80004028:	0734fc63          	bgeu	s1,s3,800040a0 <freerange+0xd0>
    8000402c:	00058a13          	mv	s4,a1
    80004030:	00002917          	auipc	s2,0x2
    80004034:	95090913          	addi	s2,s2,-1712 # 80005980 <kmem>
    80004038:	00002b37          	lui	s6,0x2
    8000403c:	0140006f          	j	80004050 <freerange+0x80>
    80004040:	000017b7          	lui	a5,0x1
    80004044:	00f484b3          	add	s1,s1,a5
    80004048:	0554ec63          	bltu	s1,s5,800040a0 <freerange+0xd0>
    8000404c:	0534fa63          	bgeu	s1,s3,800040a0 <freerange+0xd0>
    80004050:	00001637          	lui	a2,0x1
    80004054:	00100593          	li	a1,1
    80004058:	00048513          	mv	a0,s1
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	50c080e7          	jalr	1292(ra) # 80004568 <__memset>
    80004064:	00093703          	ld	a4,0(s2)
    80004068:	016487b3          	add	a5,s1,s6
    8000406c:	00e4b023          	sd	a4,0(s1)
    80004070:	00993023          	sd	s1,0(s2)
    80004074:	fcfa76e3          	bgeu	s4,a5,80004040 <freerange+0x70>
    80004078:	03813083          	ld	ra,56(sp)
    8000407c:	03013403          	ld	s0,48(sp)
    80004080:	02813483          	ld	s1,40(sp)
    80004084:	02013903          	ld	s2,32(sp)
    80004088:	01813983          	ld	s3,24(sp)
    8000408c:	01013a03          	ld	s4,16(sp)
    80004090:	00813a83          	ld	s5,8(sp)
    80004094:	00013b03          	ld	s6,0(sp)
    80004098:	04010113          	addi	sp,sp,64
    8000409c:	00008067          	ret
    800040a0:	00001517          	auipc	a0,0x1
    800040a4:	1b850513          	addi	a0,a0,440 # 80005258 <digits+0x18>
    800040a8:	fffff097          	auipc	ra,0xfffff
    800040ac:	3d4080e7          	jalr	980(ra) # 8000347c <panic>

00000000800040b0 <kfree>:
    800040b0:	fe010113          	addi	sp,sp,-32
    800040b4:	00813823          	sd	s0,16(sp)
    800040b8:	00113c23          	sd	ra,24(sp)
    800040bc:	00913423          	sd	s1,8(sp)
    800040c0:	02010413          	addi	s0,sp,32
    800040c4:	03451793          	slli	a5,a0,0x34
    800040c8:	04079c63          	bnez	a5,80004120 <kfree+0x70>
    800040cc:	00003797          	auipc	a5,0x3
    800040d0:	b5478793          	addi	a5,a5,-1196 # 80006c20 <end>
    800040d4:	00050493          	mv	s1,a0
    800040d8:	04f56463          	bltu	a0,a5,80004120 <kfree+0x70>
    800040dc:	01100793          	li	a5,17
    800040e0:	01b79793          	slli	a5,a5,0x1b
    800040e4:	02f57e63          	bgeu	a0,a5,80004120 <kfree+0x70>
    800040e8:	00001637          	lui	a2,0x1
    800040ec:	00100593          	li	a1,1
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	478080e7          	jalr	1144(ra) # 80004568 <__memset>
    800040f8:	00002797          	auipc	a5,0x2
    800040fc:	88878793          	addi	a5,a5,-1912 # 80005980 <kmem>
    80004100:	0007b703          	ld	a4,0(a5)
    80004104:	01813083          	ld	ra,24(sp)
    80004108:	01013403          	ld	s0,16(sp)
    8000410c:	00e4b023          	sd	a4,0(s1)
    80004110:	0097b023          	sd	s1,0(a5)
    80004114:	00813483          	ld	s1,8(sp)
    80004118:	02010113          	addi	sp,sp,32
    8000411c:	00008067          	ret
    80004120:	00001517          	auipc	a0,0x1
    80004124:	13850513          	addi	a0,a0,312 # 80005258 <digits+0x18>
    80004128:	fffff097          	auipc	ra,0xfffff
    8000412c:	354080e7          	jalr	852(ra) # 8000347c <panic>

0000000080004130 <kalloc>:
    80004130:	fe010113          	addi	sp,sp,-32
    80004134:	00813823          	sd	s0,16(sp)
    80004138:	00913423          	sd	s1,8(sp)
    8000413c:	00113c23          	sd	ra,24(sp)
    80004140:	02010413          	addi	s0,sp,32
    80004144:	00002797          	auipc	a5,0x2
    80004148:	83c78793          	addi	a5,a5,-1988 # 80005980 <kmem>
    8000414c:	0007b483          	ld	s1,0(a5)
    80004150:	02048063          	beqz	s1,80004170 <kalloc+0x40>
    80004154:	0004b703          	ld	a4,0(s1)
    80004158:	00001637          	lui	a2,0x1
    8000415c:	00500593          	li	a1,5
    80004160:	00048513          	mv	a0,s1
    80004164:	00e7b023          	sd	a4,0(a5)
    80004168:	00000097          	auipc	ra,0x0
    8000416c:	400080e7          	jalr	1024(ra) # 80004568 <__memset>
    80004170:	01813083          	ld	ra,24(sp)
    80004174:	01013403          	ld	s0,16(sp)
    80004178:	00048513          	mv	a0,s1
    8000417c:	00813483          	ld	s1,8(sp)
    80004180:	02010113          	addi	sp,sp,32
    80004184:	00008067          	ret

0000000080004188 <initlock>:
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00813423          	sd	s0,8(sp)
    80004190:	01010413          	addi	s0,sp,16
    80004194:	00813403          	ld	s0,8(sp)
    80004198:	00b53423          	sd	a1,8(a0)
    8000419c:	00052023          	sw	zero,0(a0)
    800041a0:	00053823          	sd	zero,16(a0)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret

00000000800041ac <acquire>:
    800041ac:	fe010113          	addi	sp,sp,-32
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	01213023          	sd	s2,0(sp)
    800041c0:	02010413          	addi	s0,sp,32
    800041c4:	00050493          	mv	s1,a0
    800041c8:	10002973          	csrr	s2,sstatus
    800041cc:	100027f3          	csrr	a5,sstatus
    800041d0:	ffd7f793          	andi	a5,a5,-3
    800041d4:	10079073          	csrw	sstatus,a5
    800041d8:	fffff097          	auipc	ra,0xfffff
    800041dc:	8ec080e7          	jalr	-1812(ra) # 80002ac4 <mycpu>
    800041e0:	07852783          	lw	a5,120(a0)
    800041e4:	06078e63          	beqz	a5,80004260 <acquire+0xb4>
    800041e8:	fffff097          	auipc	ra,0xfffff
    800041ec:	8dc080e7          	jalr	-1828(ra) # 80002ac4 <mycpu>
    800041f0:	07852783          	lw	a5,120(a0)
    800041f4:	0004a703          	lw	a4,0(s1)
    800041f8:	0017879b          	addiw	a5,a5,1
    800041fc:	06f52c23          	sw	a5,120(a0)
    80004200:	04071063          	bnez	a4,80004240 <acquire+0x94>
    80004204:	00100713          	li	a4,1
    80004208:	00070793          	mv	a5,a4
    8000420c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004210:	0007879b          	sext.w	a5,a5
    80004214:	fe079ae3          	bnez	a5,80004208 <acquire+0x5c>
    80004218:	0ff0000f          	fence
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	8a8080e7          	jalr	-1880(ra) # 80002ac4 <mycpu>
    80004224:	01813083          	ld	ra,24(sp)
    80004228:	01013403          	ld	s0,16(sp)
    8000422c:	00a4b823          	sd	a0,16(s1)
    80004230:	00013903          	ld	s2,0(sp)
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret
    80004240:	0104b903          	ld	s2,16(s1)
    80004244:	fffff097          	auipc	ra,0xfffff
    80004248:	880080e7          	jalr	-1920(ra) # 80002ac4 <mycpu>
    8000424c:	faa91ce3          	bne	s2,a0,80004204 <acquire+0x58>
    80004250:	00001517          	auipc	a0,0x1
    80004254:	01050513          	addi	a0,a0,16 # 80005260 <digits+0x20>
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	224080e7          	jalr	548(ra) # 8000347c <panic>
    80004260:	00195913          	srli	s2,s2,0x1
    80004264:	fffff097          	auipc	ra,0xfffff
    80004268:	860080e7          	jalr	-1952(ra) # 80002ac4 <mycpu>
    8000426c:	00197913          	andi	s2,s2,1
    80004270:	07252e23          	sw	s2,124(a0)
    80004274:	f75ff06f          	j	800041e8 <acquire+0x3c>

0000000080004278 <release>:
    80004278:	fe010113          	addi	sp,sp,-32
    8000427c:	00813823          	sd	s0,16(sp)
    80004280:	00113c23          	sd	ra,24(sp)
    80004284:	00913423          	sd	s1,8(sp)
    80004288:	01213023          	sd	s2,0(sp)
    8000428c:	02010413          	addi	s0,sp,32
    80004290:	00052783          	lw	a5,0(a0)
    80004294:	00079a63          	bnez	a5,800042a8 <release+0x30>
    80004298:	00001517          	auipc	a0,0x1
    8000429c:	fd050513          	addi	a0,a0,-48 # 80005268 <digits+0x28>
    800042a0:	fffff097          	auipc	ra,0xfffff
    800042a4:	1dc080e7          	jalr	476(ra) # 8000347c <panic>
    800042a8:	01053903          	ld	s2,16(a0)
    800042ac:	00050493          	mv	s1,a0
    800042b0:	fffff097          	auipc	ra,0xfffff
    800042b4:	814080e7          	jalr	-2028(ra) # 80002ac4 <mycpu>
    800042b8:	fea910e3          	bne	s2,a0,80004298 <release+0x20>
    800042bc:	0004b823          	sd	zero,16(s1)
    800042c0:	0ff0000f          	fence
    800042c4:	0f50000f          	fence	iorw,ow
    800042c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	7f8080e7          	jalr	2040(ra) # 80002ac4 <mycpu>
    800042d4:	100027f3          	csrr	a5,sstatus
    800042d8:	0027f793          	andi	a5,a5,2
    800042dc:	04079a63          	bnez	a5,80004330 <release+0xb8>
    800042e0:	07852783          	lw	a5,120(a0)
    800042e4:	02f05e63          	blez	a5,80004320 <release+0xa8>
    800042e8:	fff7871b          	addiw	a4,a5,-1
    800042ec:	06e52c23          	sw	a4,120(a0)
    800042f0:	00071c63          	bnez	a4,80004308 <release+0x90>
    800042f4:	07c52783          	lw	a5,124(a0)
    800042f8:	00078863          	beqz	a5,80004308 <release+0x90>
    800042fc:	100027f3          	csrr	a5,sstatus
    80004300:	0027e793          	ori	a5,a5,2
    80004304:	10079073          	csrw	sstatus,a5
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	00013903          	ld	s2,0(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret
    80004320:	00001517          	auipc	a0,0x1
    80004324:	f6850513          	addi	a0,a0,-152 # 80005288 <digits+0x48>
    80004328:	fffff097          	auipc	ra,0xfffff
    8000432c:	154080e7          	jalr	340(ra) # 8000347c <panic>
    80004330:	00001517          	auipc	a0,0x1
    80004334:	f4050513          	addi	a0,a0,-192 # 80005270 <digits+0x30>
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	144080e7          	jalr	324(ra) # 8000347c <panic>

0000000080004340 <holding>:
    80004340:	00052783          	lw	a5,0(a0)
    80004344:	00079663          	bnez	a5,80004350 <holding+0x10>
    80004348:	00000513          	li	a0,0
    8000434c:	00008067          	ret
    80004350:	fe010113          	addi	sp,sp,-32
    80004354:	00813823          	sd	s0,16(sp)
    80004358:	00913423          	sd	s1,8(sp)
    8000435c:	00113c23          	sd	ra,24(sp)
    80004360:	02010413          	addi	s0,sp,32
    80004364:	01053483          	ld	s1,16(a0)
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	75c080e7          	jalr	1884(ra) # 80002ac4 <mycpu>
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	01013403          	ld	s0,16(sp)
    80004378:	40a48533          	sub	a0,s1,a0
    8000437c:	00153513          	seqz	a0,a0
    80004380:	00813483          	ld	s1,8(sp)
    80004384:	02010113          	addi	sp,sp,32
    80004388:	00008067          	ret

000000008000438c <push_off>:
    8000438c:	fe010113          	addi	sp,sp,-32
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00113c23          	sd	ra,24(sp)
    80004398:	00913423          	sd	s1,8(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	100024f3          	csrr	s1,sstatus
    800043a4:	100027f3          	csrr	a5,sstatus
    800043a8:	ffd7f793          	andi	a5,a5,-3
    800043ac:	10079073          	csrw	sstatus,a5
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	714080e7          	jalr	1812(ra) # 80002ac4 <mycpu>
    800043b8:	07852783          	lw	a5,120(a0)
    800043bc:	02078663          	beqz	a5,800043e8 <push_off+0x5c>
    800043c0:	ffffe097          	auipc	ra,0xffffe
    800043c4:	704080e7          	jalr	1796(ra) # 80002ac4 <mycpu>
    800043c8:	07852783          	lw	a5,120(a0)
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	0017879b          	addiw	a5,a5,1
    800043d8:	06f52c23          	sw	a5,120(a0)
    800043dc:	00813483          	ld	s1,8(sp)
    800043e0:	02010113          	addi	sp,sp,32
    800043e4:	00008067          	ret
    800043e8:	0014d493          	srli	s1,s1,0x1
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	6d8080e7          	jalr	1752(ra) # 80002ac4 <mycpu>
    800043f4:	0014f493          	andi	s1,s1,1
    800043f8:	06952e23          	sw	s1,124(a0)
    800043fc:	fc5ff06f          	j	800043c0 <push_off+0x34>

0000000080004400 <pop_off>:
    80004400:	ff010113          	addi	sp,sp,-16
    80004404:	00813023          	sd	s0,0(sp)
    80004408:	00113423          	sd	ra,8(sp)
    8000440c:	01010413          	addi	s0,sp,16
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	6b4080e7          	jalr	1716(ra) # 80002ac4 <mycpu>
    80004418:	100027f3          	csrr	a5,sstatus
    8000441c:	0027f793          	andi	a5,a5,2
    80004420:	04079663          	bnez	a5,8000446c <pop_off+0x6c>
    80004424:	07852783          	lw	a5,120(a0)
    80004428:	02f05a63          	blez	a5,8000445c <pop_off+0x5c>
    8000442c:	fff7871b          	addiw	a4,a5,-1
    80004430:	06e52c23          	sw	a4,120(a0)
    80004434:	00071c63          	bnez	a4,8000444c <pop_off+0x4c>
    80004438:	07c52783          	lw	a5,124(a0)
    8000443c:	00078863          	beqz	a5,8000444c <pop_off+0x4c>
    80004440:	100027f3          	csrr	a5,sstatus
    80004444:	0027e793          	ori	a5,a5,2
    80004448:	10079073          	csrw	sstatus,a5
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00008067          	ret
    8000445c:	00001517          	auipc	a0,0x1
    80004460:	e2c50513          	addi	a0,a0,-468 # 80005288 <digits+0x48>
    80004464:	fffff097          	auipc	ra,0xfffff
    80004468:	018080e7          	jalr	24(ra) # 8000347c <panic>
    8000446c:	00001517          	auipc	a0,0x1
    80004470:	e0450513          	addi	a0,a0,-508 # 80005270 <digits+0x30>
    80004474:	fffff097          	auipc	ra,0xfffff
    80004478:	008080e7          	jalr	8(ra) # 8000347c <panic>

000000008000447c <push_on>:
    8000447c:	fe010113          	addi	sp,sp,-32
    80004480:	00813823          	sd	s0,16(sp)
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	00913423          	sd	s1,8(sp)
    8000448c:	02010413          	addi	s0,sp,32
    80004490:	100024f3          	csrr	s1,sstatus
    80004494:	100027f3          	csrr	a5,sstatus
    80004498:	0027e793          	ori	a5,a5,2
    8000449c:	10079073          	csrw	sstatus,a5
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	624080e7          	jalr	1572(ra) # 80002ac4 <mycpu>
    800044a8:	07852783          	lw	a5,120(a0)
    800044ac:	02078663          	beqz	a5,800044d8 <push_on+0x5c>
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	614080e7          	jalr	1556(ra) # 80002ac4 <mycpu>
    800044b8:	07852783          	lw	a5,120(a0)
    800044bc:	01813083          	ld	ra,24(sp)
    800044c0:	01013403          	ld	s0,16(sp)
    800044c4:	0017879b          	addiw	a5,a5,1
    800044c8:	06f52c23          	sw	a5,120(a0)
    800044cc:	00813483          	ld	s1,8(sp)
    800044d0:	02010113          	addi	sp,sp,32
    800044d4:	00008067          	ret
    800044d8:	0014d493          	srli	s1,s1,0x1
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	5e8080e7          	jalr	1512(ra) # 80002ac4 <mycpu>
    800044e4:	0014f493          	andi	s1,s1,1
    800044e8:	06952e23          	sw	s1,124(a0)
    800044ec:	fc5ff06f          	j	800044b0 <push_on+0x34>

00000000800044f0 <pop_on>:
    800044f0:	ff010113          	addi	sp,sp,-16
    800044f4:	00813023          	sd	s0,0(sp)
    800044f8:	00113423          	sd	ra,8(sp)
    800044fc:	01010413          	addi	s0,sp,16
    80004500:	ffffe097          	auipc	ra,0xffffe
    80004504:	5c4080e7          	jalr	1476(ra) # 80002ac4 <mycpu>
    80004508:	100027f3          	csrr	a5,sstatus
    8000450c:	0027f793          	andi	a5,a5,2
    80004510:	04078463          	beqz	a5,80004558 <pop_on+0x68>
    80004514:	07852783          	lw	a5,120(a0)
    80004518:	02f05863          	blez	a5,80004548 <pop_on+0x58>
    8000451c:	fff7879b          	addiw	a5,a5,-1
    80004520:	06f52c23          	sw	a5,120(a0)
    80004524:	07853783          	ld	a5,120(a0)
    80004528:	00079863          	bnez	a5,80004538 <pop_on+0x48>
    8000452c:	100027f3          	csrr	a5,sstatus
    80004530:	ffd7f793          	andi	a5,a5,-3
    80004534:	10079073          	csrw	sstatus,a5
    80004538:	00813083          	ld	ra,8(sp)
    8000453c:	00013403          	ld	s0,0(sp)
    80004540:	01010113          	addi	sp,sp,16
    80004544:	00008067          	ret
    80004548:	00001517          	auipc	a0,0x1
    8000454c:	d6850513          	addi	a0,a0,-664 # 800052b0 <digits+0x70>
    80004550:	fffff097          	auipc	ra,0xfffff
    80004554:	f2c080e7          	jalr	-212(ra) # 8000347c <panic>
    80004558:	00001517          	auipc	a0,0x1
    8000455c:	d3850513          	addi	a0,a0,-712 # 80005290 <digits+0x50>
    80004560:	fffff097          	auipc	ra,0xfffff
    80004564:	f1c080e7          	jalr	-228(ra) # 8000347c <panic>

0000000080004568 <__memset>:
    80004568:	ff010113          	addi	sp,sp,-16
    8000456c:	00813423          	sd	s0,8(sp)
    80004570:	01010413          	addi	s0,sp,16
    80004574:	1a060e63          	beqz	a2,80004730 <__memset+0x1c8>
    80004578:	40a007b3          	neg	a5,a0
    8000457c:	0077f793          	andi	a5,a5,7
    80004580:	00778693          	addi	a3,a5,7
    80004584:	00b00813          	li	a6,11
    80004588:	0ff5f593          	andi	a1,a1,255
    8000458c:	fff6071b          	addiw	a4,a2,-1
    80004590:	1b06e663          	bltu	a3,a6,8000473c <__memset+0x1d4>
    80004594:	1cd76463          	bltu	a4,a3,8000475c <__memset+0x1f4>
    80004598:	1a078e63          	beqz	a5,80004754 <__memset+0x1ec>
    8000459c:	00b50023          	sb	a1,0(a0)
    800045a0:	00100713          	li	a4,1
    800045a4:	1ae78463          	beq	a5,a4,8000474c <__memset+0x1e4>
    800045a8:	00b500a3          	sb	a1,1(a0)
    800045ac:	00200713          	li	a4,2
    800045b0:	1ae78a63          	beq	a5,a4,80004764 <__memset+0x1fc>
    800045b4:	00b50123          	sb	a1,2(a0)
    800045b8:	00300713          	li	a4,3
    800045bc:	18e78463          	beq	a5,a4,80004744 <__memset+0x1dc>
    800045c0:	00b501a3          	sb	a1,3(a0)
    800045c4:	00400713          	li	a4,4
    800045c8:	1ae78263          	beq	a5,a4,8000476c <__memset+0x204>
    800045cc:	00b50223          	sb	a1,4(a0)
    800045d0:	00500713          	li	a4,5
    800045d4:	1ae78063          	beq	a5,a4,80004774 <__memset+0x20c>
    800045d8:	00b502a3          	sb	a1,5(a0)
    800045dc:	00700713          	li	a4,7
    800045e0:	18e79e63          	bne	a5,a4,8000477c <__memset+0x214>
    800045e4:	00b50323          	sb	a1,6(a0)
    800045e8:	00700e93          	li	t4,7
    800045ec:	00859713          	slli	a4,a1,0x8
    800045f0:	00e5e733          	or	a4,a1,a4
    800045f4:	01059e13          	slli	t3,a1,0x10
    800045f8:	01c76e33          	or	t3,a4,t3
    800045fc:	01859313          	slli	t1,a1,0x18
    80004600:	006e6333          	or	t1,t3,t1
    80004604:	02059893          	slli	a7,a1,0x20
    80004608:	40f60e3b          	subw	t3,a2,a5
    8000460c:	011368b3          	or	a7,t1,a7
    80004610:	02859813          	slli	a6,a1,0x28
    80004614:	0108e833          	or	a6,a7,a6
    80004618:	03059693          	slli	a3,a1,0x30
    8000461c:	003e589b          	srliw	a7,t3,0x3
    80004620:	00d866b3          	or	a3,a6,a3
    80004624:	03859713          	slli	a4,a1,0x38
    80004628:	00389813          	slli	a6,a7,0x3
    8000462c:	00f507b3          	add	a5,a0,a5
    80004630:	00e6e733          	or	a4,a3,a4
    80004634:	000e089b          	sext.w	a7,t3
    80004638:	00f806b3          	add	a3,a6,a5
    8000463c:	00e7b023          	sd	a4,0(a5)
    80004640:	00878793          	addi	a5,a5,8
    80004644:	fed79ce3          	bne	a5,a3,8000463c <__memset+0xd4>
    80004648:	ff8e7793          	andi	a5,t3,-8
    8000464c:	0007871b          	sext.w	a4,a5
    80004650:	01d787bb          	addw	a5,a5,t4
    80004654:	0ce88e63          	beq	a7,a4,80004730 <__memset+0x1c8>
    80004658:	00f50733          	add	a4,a0,a5
    8000465c:	00b70023          	sb	a1,0(a4)
    80004660:	0017871b          	addiw	a4,a5,1
    80004664:	0cc77663          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    80004668:	00e50733          	add	a4,a0,a4
    8000466c:	00b70023          	sb	a1,0(a4)
    80004670:	0027871b          	addiw	a4,a5,2
    80004674:	0ac77e63          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    80004678:	00e50733          	add	a4,a0,a4
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	0037871b          	addiw	a4,a5,3
    80004684:	0ac77663          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	0047871b          	addiw	a4,a5,4
    80004694:	08c77e63          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	0057871b          	addiw	a4,a5,5
    800046a4:	08c77663          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	0067871b          	addiw	a4,a5,6
    800046b4:	06c77e63          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    800046b8:	00e50733          	add	a4,a0,a4
    800046bc:	00b70023          	sb	a1,0(a4)
    800046c0:	0077871b          	addiw	a4,a5,7
    800046c4:	06c77663          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    800046c8:	00e50733          	add	a4,a0,a4
    800046cc:	00b70023          	sb	a1,0(a4)
    800046d0:	0087871b          	addiw	a4,a5,8
    800046d4:	04c77e63          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    800046d8:	00e50733          	add	a4,a0,a4
    800046dc:	00b70023          	sb	a1,0(a4)
    800046e0:	0097871b          	addiw	a4,a5,9
    800046e4:	04c77663          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    800046e8:	00e50733          	add	a4,a0,a4
    800046ec:	00b70023          	sb	a1,0(a4)
    800046f0:	00a7871b          	addiw	a4,a5,10
    800046f4:	02c77e63          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    800046f8:	00e50733          	add	a4,a0,a4
    800046fc:	00b70023          	sb	a1,0(a4)
    80004700:	00b7871b          	addiw	a4,a5,11
    80004704:	02c77663          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    80004708:	00e50733          	add	a4,a0,a4
    8000470c:	00b70023          	sb	a1,0(a4)
    80004710:	00c7871b          	addiw	a4,a5,12
    80004714:	00c77e63          	bgeu	a4,a2,80004730 <__memset+0x1c8>
    80004718:	00e50733          	add	a4,a0,a4
    8000471c:	00b70023          	sb	a1,0(a4)
    80004720:	00d7879b          	addiw	a5,a5,13
    80004724:	00c7f663          	bgeu	a5,a2,80004730 <__memset+0x1c8>
    80004728:	00f507b3          	add	a5,a0,a5
    8000472c:	00b78023          	sb	a1,0(a5)
    80004730:	00813403          	ld	s0,8(sp)
    80004734:	01010113          	addi	sp,sp,16
    80004738:	00008067          	ret
    8000473c:	00b00693          	li	a3,11
    80004740:	e55ff06f          	j	80004594 <__memset+0x2c>
    80004744:	00300e93          	li	t4,3
    80004748:	ea5ff06f          	j	800045ec <__memset+0x84>
    8000474c:	00100e93          	li	t4,1
    80004750:	e9dff06f          	j	800045ec <__memset+0x84>
    80004754:	00000e93          	li	t4,0
    80004758:	e95ff06f          	j	800045ec <__memset+0x84>
    8000475c:	00000793          	li	a5,0
    80004760:	ef9ff06f          	j	80004658 <__memset+0xf0>
    80004764:	00200e93          	li	t4,2
    80004768:	e85ff06f          	j	800045ec <__memset+0x84>
    8000476c:	00400e93          	li	t4,4
    80004770:	e7dff06f          	j	800045ec <__memset+0x84>
    80004774:	00500e93          	li	t4,5
    80004778:	e75ff06f          	j	800045ec <__memset+0x84>
    8000477c:	00600e93          	li	t4,6
    80004780:	e6dff06f          	j	800045ec <__memset+0x84>

0000000080004784 <__memmove>:
    80004784:	ff010113          	addi	sp,sp,-16
    80004788:	00813423          	sd	s0,8(sp)
    8000478c:	01010413          	addi	s0,sp,16
    80004790:	0e060863          	beqz	a2,80004880 <__memmove+0xfc>
    80004794:	fff6069b          	addiw	a3,a2,-1
    80004798:	0006881b          	sext.w	a6,a3
    8000479c:	0ea5e863          	bltu	a1,a0,8000488c <__memmove+0x108>
    800047a0:	00758713          	addi	a4,a1,7
    800047a4:	00a5e7b3          	or	a5,a1,a0
    800047a8:	40a70733          	sub	a4,a4,a0
    800047ac:	0077f793          	andi	a5,a5,7
    800047b0:	00f73713          	sltiu	a4,a4,15
    800047b4:	00174713          	xori	a4,a4,1
    800047b8:	0017b793          	seqz	a5,a5
    800047bc:	00e7f7b3          	and	a5,a5,a4
    800047c0:	10078863          	beqz	a5,800048d0 <__memmove+0x14c>
    800047c4:	00900793          	li	a5,9
    800047c8:	1107f463          	bgeu	a5,a6,800048d0 <__memmove+0x14c>
    800047cc:	0036581b          	srliw	a6,a2,0x3
    800047d0:	fff8081b          	addiw	a6,a6,-1
    800047d4:	02081813          	slli	a6,a6,0x20
    800047d8:	01d85893          	srli	a7,a6,0x1d
    800047dc:	00858813          	addi	a6,a1,8
    800047e0:	00058793          	mv	a5,a1
    800047e4:	00050713          	mv	a4,a0
    800047e8:	01088833          	add	a6,a7,a6
    800047ec:	0007b883          	ld	a7,0(a5)
    800047f0:	00878793          	addi	a5,a5,8
    800047f4:	00870713          	addi	a4,a4,8
    800047f8:	ff173c23          	sd	a7,-8(a4)
    800047fc:	ff0798e3          	bne	a5,a6,800047ec <__memmove+0x68>
    80004800:	ff867713          	andi	a4,a2,-8
    80004804:	02071793          	slli	a5,a4,0x20
    80004808:	0207d793          	srli	a5,a5,0x20
    8000480c:	00f585b3          	add	a1,a1,a5
    80004810:	40e686bb          	subw	a3,a3,a4
    80004814:	00f507b3          	add	a5,a0,a5
    80004818:	06e60463          	beq	a2,a4,80004880 <__memmove+0xfc>
    8000481c:	0005c703          	lbu	a4,0(a1)
    80004820:	00e78023          	sb	a4,0(a5)
    80004824:	04068e63          	beqz	a3,80004880 <__memmove+0xfc>
    80004828:	0015c603          	lbu	a2,1(a1)
    8000482c:	00100713          	li	a4,1
    80004830:	00c780a3          	sb	a2,1(a5)
    80004834:	04e68663          	beq	a3,a4,80004880 <__memmove+0xfc>
    80004838:	0025c603          	lbu	a2,2(a1)
    8000483c:	00200713          	li	a4,2
    80004840:	00c78123          	sb	a2,2(a5)
    80004844:	02e68e63          	beq	a3,a4,80004880 <__memmove+0xfc>
    80004848:	0035c603          	lbu	a2,3(a1)
    8000484c:	00300713          	li	a4,3
    80004850:	00c781a3          	sb	a2,3(a5)
    80004854:	02e68663          	beq	a3,a4,80004880 <__memmove+0xfc>
    80004858:	0045c603          	lbu	a2,4(a1)
    8000485c:	00400713          	li	a4,4
    80004860:	00c78223          	sb	a2,4(a5)
    80004864:	00e68e63          	beq	a3,a4,80004880 <__memmove+0xfc>
    80004868:	0055c603          	lbu	a2,5(a1)
    8000486c:	00500713          	li	a4,5
    80004870:	00c782a3          	sb	a2,5(a5)
    80004874:	00e68663          	beq	a3,a4,80004880 <__memmove+0xfc>
    80004878:	0065c703          	lbu	a4,6(a1)
    8000487c:	00e78323          	sb	a4,6(a5)
    80004880:	00813403          	ld	s0,8(sp)
    80004884:	01010113          	addi	sp,sp,16
    80004888:	00008067          	ret
    8000488c:	02061713          	slli	a4,a2,0x20
    80004890:	02075713          	srli	a4,a4,0x20
    80004894:	00e587b3          	add	a5,a1,a4
    80004898:	f0f574e3          	bgeu	a0,a5,800047a0 <__memmove+0x1c>
    8000489c:	02069613          	slli	a2,a3,0x20
    800048a0:	02065613          	srli	a2,a2,0x20
    800048a4:	fff64613          	not	a2,a2
    800048a8:	00e50733          	add	a4,a0,a4
    800048ac:	00c78633          	add	a2,a5,a2
    800048b0:	fff7c683          	lbu	a3,-1(a5)
    800048b4:	fff78793          	addi	a5,a5,-1
    800048b8:	fff70713          	addi	a4,a4,-1
    800048bc:	00d70023          	sb	a3,0(a4)
    800048c0:	fec798e3          	bne	a5,a2,800048b0 <__memmove+0x12c>
    800048c4:	00813403          	ld	s0,8(sp)
    800048c8:	01010113          	addi	sp,sp,16
    800048cc:	00008067          	ret
    800048d0:	02069713          	slli	a4,a3,0x20
    800048d4:	02075713          	srli	a4,a4,0x20
    800048d8:	00170713          	addi	a4,a4,1
    800048dc:	00e50733          	add	a4,a0,a4
    800048e0:	00050793          	mv	a5,a0
    800048e4:	0005c683          	lbu	a3,0(a1)
    800048e8:	00178793          	addi	a5,a5,1
    800048ec:	00158593          	addi	a1,a1,1
    800048f0:	fed78fa3          	sb	a3,-1(a5)
    800048f4:	fee798e3          	bne	a5,a4,800048e4 <__memmove+0x160>
    800048f8:	f89ff06f          	j	80004880 <__memmove+0xfc>

00000000800048fc <__putc>:
    800048fc:	fe010113          	addi	sp,sp,-32
    80004900:	00813823          	sd	s0,16(sp)
    80004904:	00113c23          	sd	ra,24(sp)
    80004908:	02010413          	addi	s0,sp,32
    8000490c:	00050793          	mv	a5,a0
    80004910:	fef40593          	addi	a1,s0,-17
    80004914:	00100613          	li	a2,1
    80004918:	00000513          	li	a0,0
    8000491c:	fef407a3          	sb	a5,-17(s0)
    80004920:	fffff097          	auipc	ra,0xfffff
    80004924:	b3c080e7          	jalr	-1220(ra) # 8000345c <console_write>
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	02010113          	addi	sp,sp,32
    80004934:	00008067          	ret

0000000080004938 <__getc>:
    80004938:	fe010113          	addi	sp,sp,-32
    8000493c:	00813823          	sd	s0,16(sp)
    80004940:	00113c23          	sd	ra,24(sp)
    80004944:	02010413          	addi	s0,sp,32
    80004948:	fe840593          	addi	a1,s0,-24
    8000494c:	00100613          	li	a2,1
    80004950:	00000513          	li	a0,0
    80004954:	fffff097          	auipc	ra,0xfffff
    80004958:	ae8080e7          	jalr	-1304(ra) # 8000343c <console_read>
    8000495c:	fe844503          	lbu	a0,-24(s0)
    80004960:	01813083          	ld	ra,24(sp)
    80004964:	01013403          	ld	s0,16(sp)
    80004968:	02010113          	addi	sp,sp,32
    8000496c:	00008067          	ret

0000000080004970 <console_handler>:
    80004970:	fe010113          	addi	sp,sp,-32
    80004974:	00813823          	sd	s0,16(sp)
    80004978:	00113c23          	sd	ra,24(sp)
    8000497c:	00913423          	sd	s1,8(sp)
    80004980:	02010413          	addi	s0,sp,32
    80004984:	14202773          	csrr	a4,scause
    80004988:	100027f3          	csrr	a5,sstatus
    8000498c:	0027f793          	andi	a5,a5,2
    80004990:	06079e63          	bnez	a5,80004a0c <console_handler+0x9c>
    80004994:	00074c63          	bltz	a4,800049ac <console_handler+0x3c>
    80004998:	01813083          	ld	ra,24(sp)
    8000499c:	01013403          	ld	s0,16(sp)
    800049a0:	00813483          	ld	s1,8(sp)
    800049a4:	02010113          	addi	sp,sp,32
    800049a8:	00008067          	ret
    800049ac:	0ff77713          	andi	a4,a4,255
    800049b0:	00900793          	li	a5,9
    800049b4:	fef712e3          	bne	a4,a5,80004998 <console_handler+0x28>
    800049b8:	ffffe097          	auipc	ra,0xffffe
    800049bc:	6dc080e7          	jalr	1756(ra) # 80003094 <plic_claim>
    800049c0:	00a00793          	li	a5,10
    800049c4:	00050493          	mv	s1,a0
    800049c8:	02f50c63          	beq	a0,a5,80004a00 <console_handler+0x90>
    800049cc:	fc0506e3          	beqz	a0,80004998 <console_handler+0x28>
    800049d0:	00050593          	mv	a1,a0
    800049d4:	00000517          	auipc	a0,0x0
    800049d8:	7e450513          	addi	a0,a0,2020 # 800051b8 <CONSOLE_STATUS+0x1a8>
    800049dc:	fffff097          	auipc	ra,0xfffff
    800049e0:	afc080e7          	jalr	-1284(ra) # 800034d8 <__printf>
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	01813083          	ld	ra,24(sp)
    800049ec:	00048513          	mv	a0,s1
    800049f0:	00813483          	ld	s1,8(sp)
    800049f4:	02010113          	addi	sp,sp,32
    800049f8:	ffffe317          	auipc	t1,0xffffe
    800049fc:	6d430067          	jr	1748(t1) # 800030cc <plic_complete>
    80004a00:	fffff097          	auipc	ra,0xfffff
    80004a04:	3e0080e7          	jalr	992(ra) # 80003de0 <uartintr>
    80004a08:	fddff06f          	j	800049e4 <console_handler+0x74>
    80004a0c:	00001517          	auipc	a0,0x1
    80004a10:	8ac50513          	addi	a0,a0,-1876 # 800052b8 <digits+0x78>
    80004a14:	fffff097          	auipc	ra,0xfffff
    80004a18:	a68080e7          	jalr	-1432(ra) # 8000347c <panic>
	...
