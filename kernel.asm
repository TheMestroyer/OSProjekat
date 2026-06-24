
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	72013103          	ld	sp,1824(sp) # 80005720 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	61d010ef          	jal	ra,80001e38 <start>

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
    80001248:	0b9000ef          	jal	ra,80001b00 <HandleInterupt>

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
// Created by os on 5/6/26.
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

0000000080001328 <my_thread_body>:
//
// Created by os on 5/6/26.
//
#include "APIC.h"
#include "../lib/console.h"
void my_thread_body(void) {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00113423          	sd	ra,8(sp)
    80001330:	00813023          	sd	s0,0(sp)
    80001334:	01010413          	addi	s0,sp,16
    __putc('{');
    80001338:	07b00513          	li	a0,123
    8000133c:	00003097          	auipc	ra,0x3
    80001340:	bc0080e7          	jalr	-1088(ra) # 80003efc <__putc>
}
    80001344:	00813083          	ld	ra,8(sp)
    80001348:	00013403          	ld	s0,0(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <my_thread_body2>:
void my_thread_body2(void) {
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00113423          	sd	ra,8(sp)
    8000135c:	00813023          	sd	s0,0(sp)
    80001360:	01010413          	addi	s0,sp,16
    __putc('}');
    80001364:	07d00513          	li	a0,125
    80001368:	00003097          	auipc	ra,0x3
    8000136c:	b94080e7          	jalr	-1132(ra) # 80003efc <__putc>
}
    80001370:	00813083          	ld	ra,8(sp)
    80001374:	00013403          	ld	s0,0(sp)
    80001378:	01010113          	addi	sp,sp,16
    8000137c:	00008067          	ret

0000000080001380 <my_thread_body3>:
void my_thread_body3(void) {
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00113423          	sd	ra,8(sp)
    80001388:	00813023          	sd	s0,0(sp)
    8000138c:	01010413          	addi	s0,sp,16
    __putc('3');
    80001390:	03300513          	li	a0,51
    80001394:	00003097          	auipc	ra,0x3
    80001398:	b68080e7          	jalr	-1176(ra) # 80003efc <__putc>
}
    8000139c:	00813083          	ld	ra,8(sp)
    800013a0:	00013403          	ld	s0,0(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret

00000000800013ac <mainU>:

void mainU(){
    800013ac:	fe010113          	addi	sp,sp,-32
    800013b0:	00113c23          	sd	ra,24(sp)
    800013b4:	00813823          	sd	s0,16(sp)
    800013b8:	00913423          	sd	s1,8(sp)
    800013bc:	02010413          	addi	s0,sp,32
    // *(a3+sizeof(char)) ='f';
    // __putc(*a3);
    // __putc(*(a3+1));
    // __putc(*a1);
    // __putc(*(a1+1));
    thread_t t = thread_create(my_thread_body);
    800013c0:	00000517          	auipc	a0,0x0
    800013c4:	f6850513          	addi	a0,a0,-152 # 80001328 <my_thread_body>
    800013c8:	00001097          	auipc	ra,0x1
    800013cc:	888080e7          	jalr	-1912(ra) # 80001c50 <thread_create>
    thread_start(t);
    800013d0:	00001097          	auipc	ra,0x1
    800013d4:	8d8080e7          	jalr	-1832(ra) # 80001ca8 <thread_start>
    thread_t t2 = thread_create(my_thread_body2);
    800013d8:	00000517          	auipc	a0,0x0
    800013dc:	f7c50513          	addi	a0,a0,-132 # 80001354 <my_thread_body2>
    800013e0:	00001097          	auipc	ra,0x1
    800013e4:	870080e7          	jalr	-1936(ra) # 80001c50 <thread_create>
    800013e8:	00050493          	mv	s1,a0
    thread_start(t2);
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	8bc080e7          	jalr	-1860(ra) # 80001ca8 <thread_start>
    thread_t t3 = thread_create(my_thread_body3);
    800013f4:	00000517          	auipc	a0,0x0
    800013f8:	f8c50513          	addi	a0,a0,-116 # 80001380 <my_thread_body3>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	854080e7          	jalr	-1964(ra) # 80001c50 <thread_create>
    thread_start(t3);
    80001404:	00001097          	auipc	ra,0x1
    80001408:	8a4080e7          	jalr	-1884(ra) # 80001ca8 <thread_start>
    thread_start(t2);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00001097          	auipc	ra,0x1
    80001414:	898080e7          	jalr	-1896(ra) # 80001ca8 <thread_start>
}
    80001418:	01813083          	ld	ra,24(sp)
    8000141c:	01013403          	ld	s0,16(sp)
    80001420:	00813483          	ld	s1,8(sp)
    80001424:	02010113          	addi	sp,sp,32
    80001428:	00008067          	ret

000000008000142c <drop_to_user>:




void drop_to_user(void (*fn)()) {
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001438:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000143c:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    80001440:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    80001444:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    80001448:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    8000144c:	10200073          	sret
}
    80001450:	00813403          	ld	s0,8(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <main>:
void interupt();
int main() {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00113423          	sd	ra,8(sp)
    80001464:	00813023          	sd	s0,0(sp)
    80001468:	01010413          	addi	s0,sp,16
    start_main_thread();
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	894080e7          	jalr	-1900(ra) # 80001d00 <start_main_thread>
    __asm__ volatile("csrw sie, zero");
    80001474:	10401073          	csrw	sie,zero
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    80001478:	00000797          	auipc	a5,0x0
    8000147c:	d4878793          	addi	a5,a5,-696 # 800011c0 <interupt>
    80001480:	10579073          	csrw	stvec,a5
    drop_to_user(mainU);
    80001484:	00000517          	auipc	a0,0x0
    80001488:	f2850513          	addi	a0,a0,-216 # 800013ac <mainU>
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	fa0080e7          	jalr	-96(ra) # 8000142c <drop_to_user>
    return 0;
}
    80001494:	00000513          	li	a0,0
    80001498:	00813083          	ld	ra,8(sp)
    8000149c:	00013403          	ld	s0,0(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_ZN6Thread16threadTrampolineEPS_>:
}
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    setNextInQueue(next);
    setPrevInQueue(prev);
}
void Thread::threadTrampoline(Thread* t) {
    800014a8:	fe010113          	addi	sp,sp,-32
    800014ac:	00113c23          	sd	ra,24(sp)
    800014b0:	00813823          	sd	s0,16(sp)
    800014b4:	00913423          	sd	s1,8(sp)
    800014b8:	02010413          	addi	s0,sp,32
    800014bc:	00050493          	mv	s1,a0
    if (t->body)t->body();
    800014c0:	00053783          	ld	a5,0(a0)
    800014c4:	00078463          	beqz	a5,800014cc <_ZN6Thread16threadTrampolineEPS_+0x24>
    800014c8:	000780e7          	jalr	a5
    Scheduler::yield(t,Scheduler::GetRunning());
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	274080e7          	jalr	628(ra) # 80001740 <_ZN9Scheduler10GetRunningEv>
    800014d4:	00050593          	mv	a1,a0
    800014d8:	00048513          	mv	a0,s1
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	284080e7          	jalr	644(ra) # 80001760 <_ZN9Scheduler5yieldEP6ThreadS1_>
    //while (true) {}//TODO: Namesti dobar return iz threada
}
    800014e4:	01813083          	ld	ra,24(sp)
    800014e8:	01013403          	ld	s0,16(sp)
    800014ec:	00813483          	ld	s1,8(sp)
    800014f0:	02010113          	addi	sp,sp,32
    800014f4:	00008067          	ret

00000000800014f8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800014f8:	ff010113          	addi	sp,sp,-16
    800014fc:	00813423          	sd	s0,8(sp)
    80001500:	01010413          	addi	s0,sp,16
}
    80001504:	00813403          	ld	s0,8(sp)
    80001508:	01010113          	addi	sp,sp,16
    8000150c:	00008067          	ret

0000000080001510 <_ZN6Thread4initEv>:
void Thread::init() {
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
}
    8000151c:	00813403          	ld	s0,8(sp)
    80001520:	01010113          	addi	sp,sp,16
    80001524:	00008067          	ret

0000000080001528 <_ZN6Thread11copyContextEPm>:
void Thread::copyContext(size_t* ctx) {
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00813423          	sd	s0,8(sp)
    80001530:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    80001534:	00000713          	li	a4,0
    80001538:	01f00793          	li	a5,31
    8000153c:	02e7c863          	blt	a5,a4,8000156c <_ZN6Thread11copyContextEPm+0x44>
        threadContext.x[i] = cont->x[i];
    80001540:	00371793          	slli	a5,a4,0x3
    80001544:	00f587b3          	add	a5,a1,a5
    80001548:	0007b683          	ld	a3,0(a5)
    8000154c:	000017b7          	lui	a5,0x1
    80001550:	00478793          	addi	a5,a5,4 # 1004 <_entry-0x7fffeffc>
    80001554:	00f707b3          	add	a5,a4,a5
    80001558:	00379793          	slli	a5,a5,0x3
    8000155c:	00f507b3          	add	a5,a0,a5
    80001560:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    80001564:	0017071b          	addiw	a4,a4,1
    80001568:	fd1ff06f          	j	80001538 <_ZN6Thread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    8000156c:	01853783          	ld	a5,24(a0)
    80001570:	00008737          	lui	a4,0x8
    80001574:	00e50533          	add	a0,a0,a4
    80001578:	02f53c23          	sd	a5,56(a0)
    threadContext.sepc = cont->sepc;
    8000157c:	1005b783          	ld	a5,256(a1)
    80001580:	12f53423          	sd	a5,296(a0)
    threadContext.sstatus =cont->sstatus;
    80001584:	1085b783          	ld	a5,264(a1)
    80001588:	12f53823          	sd	a5,304(a0)
}
    8000158c:	00813403          	ld	s0,8(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret

0000000080001598 <_ZN6Thread10getContextEv>:
size_t* Thread::getContext() {
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00813423          	sd	s0,8(sp)
    800015a0:	01010413          	addi	s0,sp,16
}
    800015a4:	000087b7          	lui	a5,0x8
    800015a8:	02878793          	addi	a5,a5,40 # 8028 <_entry-0x7fff7fd8>
    800015ac:	00f50533          	add	a0,a0,a5
    800015b0:	00813403          	ld	s0,8(sp)
    800015b4:	01010113          	addi	sp,sp,16
    800015b8:	00008067          	ret

00000000800015bc <_ZN6Thread14getNextInQueueEv>:
Thread* Thread::getNextInQueue(){
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00813423          	sd	s0,8(sp)
    800015c4:	01010413          	addi	s0,sp,16
}
    800015c8:	01053503          	ld	a0,16(a0)
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_ZN6Thread14getPrevInQueueEv>:
Thread* Thread::getPrevInQueue(){
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00813423          	sd	s0,8(sp)
    800015e0:	01010413          	addi	s0,sp,16
}
    800015e4:	00853503          	ld	a0,8(a0)
    800015e8:	00813403          	ld	s0,8(sp)
    800015ec:	01010113          	addi	sp,sp,16
    800015f0:	00008067          	ret

00000000800015f4 <_ZN6Thread14setNextInQueueEPS_>:
void Thread::setNextInQueue(Thread* next){
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    this->next = next;
    80001600:	00b53823          	sd	a1,16(a0)
}
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_ZN6Thread14setPrevInQueueEPS_>:
void Thread::setPrevInQueue(Thread* prev){
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00813423          	sd	s0,8(sp)
    80001618:	01010413          	addi	s0,sp,16
    this->prev = prev;
    8000161c:	00b53423          	sd	a1,8(a0)
}
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	01213023          	sd	s2,0(sp)
    80001640:	02010413          	addi	s0,sp,32
    80001644:	00050493          	mv	s1,a0
    80001648:	00060913          	mv	s2,a2
    setNextInQueue(next);
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	fa8080e7          	jalr	-88(ra) # 800015f4 <_ZN6Thread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001654:	00090593          	mv	a1,s2
    80001658:	00048513          	mv	a0,s1
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	fb4080e7          	jalr	-76(ra) # 80001610 <_ZN6Thread14setPrevInQueueEPS_>
}
    80001664:	01813083          	ld	ra,24(sp)
    80001668:	01013403          	ld	s0,16(sp)
    8000166c:	00813483          	ld	s1,8(sp)
    80001670:	00013903          	ld	s2,0(sp)
    80001674:	02010113          	addi	sp,sp,32
    80001678:	00008067          	ret

000000008000167c <_ZN6Thread5startEv>:
void Thread::start(){
    8000167c:	fe010113          	addi	sp,sp,-32
    80001680:	00113c23          	sd	ra,24(sp)
    80001684:	00813823          	sd	s0,16(sp)
    80001688:	00913423          	sd	s1,8(sp)
    8000168c:	02010413          	addi	s0,sp,32
    80001690:	00050493          	mv	s1,a0
    Scheduler::AddNewThread(this);
    80001694:	00000097          	auipc	ra,0x0
    80001698:	238080e7          	jalr	568(ra) # 800018cc <_ZN9Scheduler12AddNewThreadEP6Thread>
    this->threadContext.sepc = reinterpret_cast<size_t>(&Thread::threadTrampoline);
    8000169c:	000087b7          	lui	a5,0x8
    800016a0:	00f487b3          	add	a5,s1,a5
    800016a4:	00000717          	auipc	a4,0x0
    800016a8:	e0470713          	addi	a4,a4,-508 # 800014a8 <_ZN6Thread16threadTrampolineEPS_>
    800016ac:	12e7b423          	sd	a4,296(a5) # 8128 <_entry-0x7fff7ed8>
    this->threadContext.x[10] = reinterpret_cast<size_t>(this);
    800016b0:	0697bc23          	sd	s1,120(a5)
    size_t sstatus_val;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    800016b4:	10002773          	csrr	a4,sstatus
    sstatus_val |= (1UL << 8);
    sstatus_val |= (1UL << 5);
    800016b8:	12076713          	ori	a4,a4,288
    this->threadContext.sstatus = sstatus_val;
    800016bc:	12e7b823          	sd	a4,304(a5)
    Scheduler::yield(Scheduler::GetRunning(), this);
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	080080e7          	jalr	128(ra) # 80001740 <_ZN9Scheduler10GetRunningEv>
    800016c8:	00048593          	mv	a1,s1
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	094080e7          	jalr	148(ra) # 80001760 <_ZN9Scheduler5yieldEP6ThreadS1_>
}
    800016d4:	01813083          	ld	ra,24(sp)
    800016d8:	01013403          	ld	s0,16(sp)
    800016dc:	00813483          	ld	s1,8(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_ZN6Thread4joinEv>:
void Thread::join(){
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00813423          	sd	s0,8(sp)
    800016f0:	01010413          	addi	s0,sp,16

}
    800016f4:	00813403          	ld	s0,8(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN6Thread11setStackPtrEPm>:
void Thread::setStackPtr(size_t* stackPtr) {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00813423          	sd	s0,8(sp)
    80001708:	01010413          	addi	s0,sp,16
    this->stackPtr = stackPtr;
    8000170c:	00b53c23          	sd	a1,24(a0)
}
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <_ZN6Thread15setSupervisorSpEPm>:

void Thread::setSupervisorSp(size_t* supervisorSp) {
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00813423          	sd	s0,8(sp)
    80001724:	01010413          	addi	s0,sp,16
    this->supervisorSp = supervisorSp;
    80001728:	000087b7          	lui	a5,0x8
    8000172c:	00f50533          	add	a0,a0,a5
    80001730:	02b53023          	sd	a1,32(a0)
}
    80001734:	00813403          	ld	s0,8(sp)
    80001738:	01010113          	addi	sp,sp,16
    8000173c:	00008067          	ret

0000000080001740 <_ZN9Scheduler10GetRunningEv>:
Thread* Scheduler::readyQueue = nullptr;
Thread* Scheduler::readyQueueEnd = nullptr;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    80001740:	ff010113          	addi	sp,sp,-16
    80001744:	00813423          	sd	s0,8(sp)
    80001748:	01010413          	addi	s0,sp,16
    return running;
}
    8000174c:	00004517          	auipc	a0,0x4
    80001750:	03453503          	ld	a0,52(a0) # 80005780 <_ZN9Scheduler7runningE>
    80001754:	00813403          	ld	s0,8(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <_ZN9Scheduler5yieldEP6ThreadS1_>:
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00113423          	sd	ra,8(sp)
    80001768:	00813023          	sd	s0,0(sp)
    8000176c:	01010413          	addi	s0,sp,16
    //if (oldThread != nullptr)//TODO: Add error and remove this temp logic
        //saveContext(oldThread->getContext());
    restoreContext(newThread->getContext());
    80001770:	00058513          	mv	a0,a1
    80001774:	00000097          	auipc	ra,0x0
    80001778:	e24080e7          	jalr	-476(ra) # 80001598 <_ZN6Thread10getContextEv>
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	918080e7          	jalr	-1768(ra) # 80001094 <restoreContext>
}
    80001784:	00813083          	ld	ra,8(sp)
    80001788:	00013403          	ld	s0,0(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret

0000000080001794 <_ZN9Scheduler7GetNextEv>:
Thread* Scheduler::GetNext(){
    80001794:	fe010113          	addi	sp,sp,-32
    80001798:	00113c23          	sd	ra,24(sp)
    8000179c:	00813823          	sd	s0,16(sp)
    800017a0:	00913423          	sd	s1,8(sp)
    800017a4:	01213023          	sd	s2,0(sp)
    800017a8:	02010413          	addi	s0,sp,32
    //TODO: Add checks if empty and stuff
    Thread* toRet = readyQueue;
    800017ac:	00004917          	auipc	s2,0x4
    800017b0:	fd490913          	addi	s2,s2,-44 # 80005780 <_ZN9Scheduler7runningE>
    800017b4:	00893483          	ld	s1,8(s2)
    readyQueue = readyQueue->getNextInQueue();
    800017b8:	00048513          	mv	a0,s1
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	e00080e7          	jalr	-512(ra) # 800015bc <_ZN6Thread14getNextInQueueEv>
    800017c4:	00a93423          	sd	a0,8(s2)
    return toRet;
}
    800017c8:	00048513          	mv	a0,s1
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	00013903          	ld	s2,0(sp)
    800017dc:	02010113          	addi	sp,sp,32
    800017e0:	00008067          	ret

00000000800017e4 <_ZN9Scheduler3PutEP6Thread>:
void Scheduler::Put(Thread* thread){
    800017e4:	fe010113          	addi	sp,sp,-32
    800017e8:	00113c23          	sd	ra,24(sp)
    800017ec:	00813823          	sd	s0,16(sp)
    800017f0:	00913423          	sd	s1,8(sp)
    800017f4:	01213023          	sd	s2,0(sp)
    800017f8:	02010413          	addi	s0,sp,32
    800017fc:	00050493          	mv	s1,a0
    //TODO: Add checks if it already exists
    thread->setNextAndPrevInQueue(nullptr, readyQueueEnd);
    80001800:	00004917          	auipc	s2,0x4
    80001804:	f8090913          	addi	s2,s2,-128 # 80005780 <_ZN9Scheduler7runningE>
    80001808:	01093603          	ld	a2,16(s2)
    8000180c:	00000593          	li	a1,0
    80001810:	00000097          	auipc	ra,0x0
    80001814:	e1c080e7          	jalr	-484(ra) # 8000162c <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>
    readyQueueEnd->setNextInQueue(thread);
    80001818:	00048593          	mv	a1,s1
    8000181c:	01093503          	ld	a0,16(s2)
    80001820:	00000097          	auipc	ra,0x0
    80001824:	dd4080e7          	jalr	-556(ra) # 800015f4 <_ZN6Thread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    80001828:	00993823          	sd	s1,16(s2)
}
    8000182c:	01813083          	ld	ra,24(sp)
    80001830:	01013403          	ld	s0,16(sp)
    80001834:	00813483          	ld	s1,8(sp)
    80001838:	00013903          	ld	s2,0(sp)
    8000183c:	02010113          	addi	sp,sp,32
    80001840:	00008067          	ret

0000000080001844 <_ZN9Scheduler15SetupStartStackEv>:

extern "C" char end[];

void Scheduler::SetupStartStack() {
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00813423          	sd	s0,8(sp)
    8000184c:	01010413          	addi	s0,sp,16

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80001850:	00004797          	auipc	a5,0x4
    80001854:	ed87b783          	ld	a5,-296(a5) # 80005728 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001858:	00778793          	addi	a5,a5,7
    8000185c:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80001860:	00004717          	auipc	a4,0x4
    80001864:	f2f73c23          	sd	a5,-200(a4) # 80005798 <_ZN9Scheduler12stack_cursorE>
    );
}
    80001868:	00813403          	ld	s0,8(sp)
    8000186c:	01010113          	addi	sp,sp,16
    80001870:	00008067          	ret

0000000080001874 <_ZN9Scheduler16SetupStartThreadEv>:

void Scheduler::SetupStartThread() {
    80001874:	ff010113          	addi	sp,sp,-16
    80001878:	00113423          	sd	ra,8(sp)
    8000187c:	00813023          	sd	s0,0(sp)
    80001880:	01010413          	addi	s0,sp,16
    SetupStartStack();
    80001884:	00000097          	auipc	ra,0x0
    80001888:	fc0080e7          	jalr	-64(ra) # 80001844 <_ZN9Scheduler15SetupStartStackEv>
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	0c0080e7          	jalr	192(ra) # 8000194c <_ZN15MemoryAllocator11GetInstanceEv>
    80001894:	000085b7          	lui	a1,0x8
    80001898:	14058593          	addi	a1,a1,320 # 8140 <_entry-0x7fff7ec0>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	10c080e7          	jalr	268(ra) # 800019a8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    800018a4:	00004797          	auipc	a5,0x4
    800018a8:	eca7be23          	sd	a0,-292(a5) # 80005780 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	cec080e7          	jalr	-788(ra) # 80001598 <_ZN6Thread10getContextEv>
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	870080e7          	jalr	-1936(ra) # 80001124 <setupStartContext>
}
    800018bc:	00813083          	ld	ra,8(sp)
    800018c0:	00013403          	ld	s0,0(sp)
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret

00000000800018cc <_ZN9Scheduler12AddNewThreadEP6Thread>:

void Scheduler::AddNewThread(Thread* thread) {
    800018cc:	ff010113          	addi	sp,sp,-16
    800018d0:	00813423          	sd	s0,8(sp)
    800018d4:	01010413          	addi	s0,sp,16
    Context threadContext;
    Thread();
    void copyContext(size_t* ctx);
    void init();
    void setStackPtr(size_t* stackPtr);
    size_t* getStackTop() { return stack + DEFAULT_STACK_SIZE; }
    800018d8:	00008737          	lui	a4,0x8
    800018dc:	02070793          	addi	a5,a4,32 # 8020 <_entry-0x7fff7fe0>
    800018e0:	00f507b3          	add	a5,a0,a5
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    800018e4:	00e50533          	add	a0,a0,a4
    800018e8:	02f53c23          	sd	a5,56(a0)
}
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00813423          	sd	s0,8(sp)
    80001900:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80001904:	00004797          	auipc	a5,0x4
    80001908:	e2c7b783          	ld	a5,-468(a5) # 80005730 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000190c:	0007b783          	ld	a5,0(a5)
    80001910:	00004717          	auipc	a4,0x4
    80001914:	e0873703          	ld	a4,-504(a4) # 80005718 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001918:	00073703          	ld	a4,0(a4)
    8000191c:	40e787b3          	sub	a5,a5,a4
    80001920:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    80001924:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    80001928:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    8000192c:	00100693          	li	a3,1
    80001930:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    80001934:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    80001938:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    8000193c:	00073423          	sd	zero,8(a4)
}
    80001940:	00813403          	ld	s0,8(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    8000194c:	00004797          	auipc	a5,0x4
    80001950:	e547c783          	lbu	a5,-428(a5) # 800057a0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80001954:	00078863          	beqz	a5,80001964 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    80001958:	00004517          	auipc	a0,0x4
    8000195c:	e5050513          	addi	a0,a0,-432 # 800057a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001960:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00113423          	sd	ra,8(sp)
    8000196c:	00813023          	sd	s0,0(sp)
    80001970:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80001974:	00004517          	auipc	a0,0x4
    80001978:	e3450513          	addi	a0,a0,-460 # 800057a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	f7c080e7          	jalr	-132(ra) # 800018f8 <_ZN15MemoryAllocatorC1Ev>
    80001984:	00100793          	li	a5,1
    80001988:	00004717          	auipc	a4,0x4
    8000198c:	e0f70c23          	sb	a5,-488(a4) # 800057a0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80001990:	00004517          	auipc	a0,0x4
    80001994:	e1850513          	addi	a0,a0,-488 # 800057a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001998:	00813083          	ld	ra,8(sp)
    8000199c:	00013403          	ld	s0,0(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret

00000000800019a8 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00813423          	sd	s0,8(sp)
    800019b0:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    800019b4:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800019b8:	03f58593          	addi	a1,a1,63
    800019bc:	0065d593          	srli	a1,a1,0x6
    800019c0:	0080006f          	j	800019c8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    800019c4:	00053503          	ld	a0,0(a0)
    while(curr){
    800019c8:	06050863          	beqz	a0,80001a38 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    800019cc:	01054703          	lbu	a4,16(a0)
    800019d0:	00100793          	li	a5,1
    800019d4:	fef718e3          	bne	a4,a5,800019c4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    800019d8:	01853703          	ld	a4,24(a0)
    800019dc:	00158793          	addi	a5,a1,1
    800019e0:	fef762e3          	bltu	a4,a5,800019c4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    800019e4:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    800019e8:	04e7f663          	bgeu	a5,a4,80001a34 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    800019ec:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    800019f0:	00679793          	slli	a5,a5,0x6
    800019f4:	00f507b3          	add	a5,a0,a5
    800019f8:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    800019fc:	00100713          	li	a4,1
    80001a00:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80001a04:	01853703          	ld	a4,24(a0)
    80001a08:	40b70733          	sub	a4,a4,a1
    80001a0c:	fff70713          	addi	a4,a4,-1
    80001a10:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80001a14:	00d7b023          	sd	a3,0(a5)
                if(old)
    80001a18:	00068463          	beqz	a3,80001a20 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80001a1c:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80001a20:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80001a24:	01853703          	ld	a4,24(a0)
    80001a28:	0187b783          	ld	a5,24(a5)
    80001a2c:	40f707b3          	sub	a5,a4,a5
    80001a30:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80001a34:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    80001a38:	00813403          	ld	s0,8(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00813423          	sd	s0,8(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80001a50:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    80001a54:	08070a63          	beqz	a4,80001ae8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    80001a58:	00100793          	li	a5,1
    80001a5c:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80001a60:	fc05b783          	ld	a5,-64(a1)
    80001a64:	00078863          	beqz	a5,80001a74 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    80001a68:	0107c603          	lbu	a2,16(a5)
    80001a6c:	00100693          	li	a3,1
    80001a70:	02d60463          	beq	a2,a3,80001a98 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80001a74:	fc85b783          	ld	a5,-56(a1)
    80001a78:	06078c63          	beqz	a5,80001af0 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80001a7c:	0107c683          	lbu	a3,16(a5)
    80001a80:	00100713          	li	a4,1
    80001a84:	02e68e63          	beq	a3,a4,80001ac0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80001a88:	00000513          	li	a0,0
}
    80001a8c:	00813403          	ld	s0,8(sp)
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret
        curr->size +=next->size;
    80001a98:	0187b603          	ld	a2,24(a5)
    80001a9c:	fd85b683          	ld	a3,-40(a1)
    80001aa0:	00c686b3          	add	a3,a3,a2
    80001aa4:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    80001aa8:	0007b683          	ld	a3,0(a5)
    80001aac:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    80001ab0:	0007b783          	ld	a5,0(a5)
    80001ab4:	fc0780e3          	beqz	a5,80001a74 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80001ab8:	00e7b423          	sd	a4,8(a5)
    80001abc:	fb9ff06f          	j	80001a74 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80001ac0:	fd85b683          	ld	a3,-40(a1)
    80001ac4:	0187b703          	ld	a4,24(a5)
    80001ac8:	00d70733          	add	a4,a4,a3
    80001acc:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80001ad0:	fc05b703          	ld	a4,-64(a1)
    80001ad4:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80001ad8:	02070063          	beqz	a4,80001af8 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80001adc:	00f73423          	sd	a5,8(a4)
    return 0;
    80001ae0:	00000513          	li	a0,0
    80001ae4:	fa9ff06f          	j	80001a8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    80001ae8:	fff00513          	li	a0,-1
    80001aec:	fa1ff06f          	j	80001a8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80001af0:	00000513          	li	a0,0
    80001af4:	f99ff06f          	j	80001a8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80001af8:	00000513          	li	a0,0
    80001afc:	f91ff06f          	j	80001a8c <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080001b00 <HandleInterupt>:
#include "Thread.hpp"
#include "APIC.h"
#include "Scheduler.hpp"
#include "../lib/console.h"

extern "C" void HandleInterupt(size_t* frame){
    80001b00:	fe010113          	addi	sp,sp,-32
    80001b04:	00113c23          	sd	ra,24(sp)
    80001b08:	00813823          	sd	s0,16(sp)
    80001b0c:	00913423          	sd	s1,8(sp)
    80001b10:	01213023          	sd	s2,0(sp)
    80001b14:	02010413          	addi	s0,sp,32
    80001b18:	00050493          	mv	s1,a0
    size_t code = frame[10];
    80001b1c:	05053903          	ld	s2,80(a0)
    Thread* current = Scheduler::GetRunning();
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	c20080e7          	jalr	-992(ra) # 80001740 <_ZN9Scheduler10GetRunningEv>
    if (current != nullptr) {
    80001b28:	06050663          	beqz	a0,80001b94 <HandleInterupt+0x94>
        auto& ctx = current->threadContext;
        for (int i = 0; i < 32; i++) ctx.x[i] = frame[i];
    80001b2c:	00000713          	li	a4,0
    80001b30:	01f00793          	li	a5,31
    80001b34:	02e7c463          	blt	a5,a4,80001b5c <HandleInterupt+0x5c>
    80001b38:	00371693          	slli	a3,a4,0x3
    80001b3c:	00d487b3          	add	a5,s1,a3
    80001b40:	0007b603          	ld	a2,0(a5)
    80001b44:	000087b7          	lui	a5,0x8
    80001b48:	00f507b3          	add	a5,a0,a5
    80001b4c:	00d787b3          	add	a5,a5,a3
    80001b50:	02c7b423          	sd	a2,40(a5) # 8028 <_entry-0x7fff7fd8>
    80001b54:	0017071b          	addiw	a4,a4,1
    80001b58:	fd9ff06f          	j	80001b30 <HandleInterupt+0x30>
        ctx.x[2] = (size_t)frame + 256;
    80001b5c:	10048713          	addi	a4,s1,256
    80001b60:	000087b7          	lui	a5,0x8
    80001b64:	00f507b3          	add	a5,a0,a5
    80001b68:	02e7bc23          	sd	a4,56(a5) # 8038 <_entry-0x7fff7fc8>

        size_t scause, sepc, sstatus;
        __asm__ volatile("csrr %0, scause"  : "=r"(scause));
    80001b6c:	142027f3          	csrr	a5,scause
        __asm__ volatile("csrr %0, sepc"    : "=r"(sepc));
    80001b70:	14102773          	csrr	a4,sepc
        __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001b74:	100026f3          	csrr	a3,sstatus
        // advance past ecall instruction
        if ((scause & 0xF) == 8 || (scause & 0xF) == 9) sepc += 4;
    80001b78:	00e7f793          	andi	a5,a5,14
    80001b7c:	00800613          	li	a2,8
    80001b80:	06c78063          	beq	a5,a2,80001be0 <HandleInterupt+0xe0>
        ctx.sepc    = sepc;
    80001b84:	000087b7          	lui	a5,0x8
    80001b88:	00f50533          	add	a0,a0,a5
    80001b8c:	12e53423          	sd	a4,296(a0)
        ctx.sstatus = sstatus;
    80001b90:	12d53823          	sd	a3,304(a0)
    }

    uint64 scause=0;
    __asm__ volatile("csrr %[scause],scause":[scause]"=r"(scause));
    80001b94:	142027f3          	csrr	a5,scause
    if (scause !=8&&scause !=9) {
    80001b98:	ff878793          	addi	a5,a5,-8 # 7ff8 <_entry-0x7fff8008>
    80001b9c:	00100713          	li	a4,1
    80001ba0:	04f76463          	bltu	a4,a5,80001be8 <HandleInterupt+0xe8>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
        return;

    }
    uint64 sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001ba4:	141027f3          	csrr	a5,sepc
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001ba8:	00478793          	addi	a5,a5,4
    80001bac:	14179073          	csrw	sepc,a5
    switch (code) {
    80001bb0:	00200793          	li	a5,2
    80001bb4:	06f90863          	beq	s2,a5,80001c24 <HandleInterupt+0x124>
    80001bb8:	00300793          	li	a5,3
    80001bbc:	08f90263          	beq	s2,a5,80001c40 <HandleInterupt+0x140>
    80001bc0:	00100793          	li	a5,1
    80001bc4:	04f90063          	beq	s2,a5,80001c04 <HandleInterupt+0x104>
        default: {
            break;
        }
    }
    return;
}
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	00013903          	ld	s2,0(sp)
    80001bd8:	02010113          	addi	sp,sp,32
    80001bdc:	00008067          	ret
        if ((scause & 0xF) == 8 || (scause & 0xF) == 9) sepc += 4;
    80001be0:	00470713          	addi	a4,a4,4
    80001be4:	fa1ff06f          	j	80001b84 <HandleInterupt+0x84>
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001be8:	141024f3          	csrr	s1,sepc
        __putc('!');
    80001bec:	02100513          	li	a0,33
    80001bf0:	00002097          	auipc	ra,0x2
    80001bf4:	30c080e7          	jalr	780(ra) # 80003efc <__putc>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001bf8:	00448493          	addi	s1,s1,4
    80001bfc:	14149073          	csrw	sepc,s1
        return;
    80001c00:	fc9ff06f          	j	80001bc8 <HandleInterupt+0xc8>
            size_t size = frame[11];
    80001c04:	0584b483          	ld	s1,88(s1)
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	d44080e7          	jalr	-700(ra) # 8000194c <_ZN15MemoryAllocator11GetInstanceEv>
    80001c10:	00048593          	mv	a1,s1
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	d94080e7          	jalr	-620(ra) # 800019a8 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80001c1c:	00050513          	mv	a0,a0
            break;
    80001c20:	fa9ff06f          	j	80001bc8 <HandleInterupt+0xc8>
            void* ptr = (void*)frame[11];
    80001c24:	0584b483          	ld	s1,88(s1)
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	d24080e7          	jalr	-732(ra) # 8000194c <_ZN15MemoryAllocator11GetInstanceEv>
    80001c30:	00048593          	mv	a1,s1
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	e10080e7          	jalr	-496(ra) # 80001a44 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80001c3c:	f8dff06f          	j	80001bc8 <HandleInterupt+0xc8>
            ((Thread*)t)->start();
    80001c40:	0584b503          	ld	a0,88(s1)
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	a38080e7          	jalr	-1480(ra) # 8000167c <_ZN6Thread5startEv>
            break;
    80001c4c:	f7dff06f          	j	80001bc8 <HandleInterupt+0xc8>

0000000080001c50 <thread_create>:

inline void* operator new(size_t, void* p) { return p; }


extern "C" {
thread_t thread_create(void (*body)(void)) {
    80001c50:	fe010113          	addi	sp,sp,-32
    80001c54:	00113c23          	sd	ra,24(sp)
    80001c58:	00813823          	sd	s0,16(sp)
    80001c5c:	00913423          	sd	s1,8(sp)
    80001c60:	01213023          	sd	s2,0(sp)
    80001c64:	02010413          	addi	s0,sp,32
    80001c68:	00050913          	mv	s2,a0
    void* mem = mem_alloc(sizeof(Thread));
    80001c6c:	00008537          	lui	a0,0x8
    80001c70:	14050513          	addi	a0,a0,320 # 8140 <_entry-0x7fff7ec0>
    80001c74:	fffff097          	auipc	ra,0xfffff
    80001c78:	65c080e7          	jalr	1628(ra) # 800012d0 <mem_alloc>
    80001c7c:	00050493          	mv	s1,a0
    Thread* t = reinterpret_cast<Thread*>(mem);
    t->init();
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	890080e7          	jalr	-1904(ra) # 80001510 <_ZN6Thread4initEv>
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void start();
    void setBody(void (*b)(void)) { body = b; }
    80001c88:	0124b023          	sd	s2,0(s1)
    t->setBody(body);
    return reinterpret_cast<thread_t>(t);
}
    80001c8c:	00048513          	mv	a0,s1
    80001c90:	01813083          	ld	ra,24(sp)
    80001c94:	01013403          	ld	s0,16(sp)
    80001c98:	00813483          	ld	s1,8(sp)
    80001c9c:	00013903          	ld	s2,0(sp)
    80001ca0:	02010113          	addi	sp,sp,32
    80001ca4:	00008067          	ret

0000000080001ca8 <thread_start>:

int thread_start(thread_t handle) {//TODO:Change name
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    size_t code = 0x03;
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    80001cb4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r"(code));
    80001cb8:	00300793          	li	a5,3
    80001cbc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001cc0:	00000073          	ecall
    return 0;
}
    80001cc4:	00000513          	li	a0,0
    80001cc8:	00813403          	ld	s0,8(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <thread_join>:

int thread_join(thread_t t) {
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00113423          	sd	ra,8(sp)
    80001cdc:	00813023          	sd	s0,0(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    ((Thread*)t)->join();
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	a04080e7          	jalr	-1532(ra) # 800016e8 <_ZN6Thread4joinEv>
    return 0;
}
    80001cec:	00000513          	li	a0,0
    80001cf0:	00813083          	ld	ra,8(sp)
    80001cf4:	00013403          	ld	s0,0(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <start_main_thread>:
int start_main_thread() {
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	b64080e7          	jalr	-1180(ra) # 80001874 <_ZN9Scheduler16SetupStartThreadEv>
    return 0;
}
    80001d18:	00000513          	li	a0,0
    80001d1c:	00813083          	ld	ra,8(sp)
    80001d20:	00013403          	ld	s0,0(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_Z5mainAv>:
#include "../lib/console.h"
#include "MemoryAllocator.hpp"
void mainA(){
    80001d2c:	fd010113          	addi	sp,sp,-48
    80001d30:	02113423          	sd	ra,40(sp)
    80001d34:	02813023          	sd	s0,32(sp)
    80001d38:	00913c23          	sd	s1,24(sp)
    80001d3c:	01213823          	sd	s2,16(sp)
    80001d40:	03010413          	addi	s0,sp,48
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	c08080e7          	jalr	-1016(ra) # 8000194c <_ZN15MemoryAllocator11GetInstanceEv>
    80001d4c:	00053783          	ld	a5,0(a0)
    80001d50:	fcf43c23          	sd	a5,-40(s0)

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    80001d54:	01400593          	li	a1,20
    80001d58:	fd840913          	addi	s2,s0,-40
    80001d5c:	00090513          	mv	a0,s2
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	c48080e7          	jalr	-952(ra) # 800019a8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001d68:	00050493          	mv	s1,a0
    *a1 = 'a';
    80001d6c:	06100793          	li	a5,97
    80001d70:	00f50023          	sb	a5,0(a0)
    *(a1+sizeof(char)) ='b';
    80001d74:	06200793          	li	a5,98
    80001d78:	00f500a3          	sb	a5,1(a0)
    __putc(*a1);
    80001d7c:	06100513          	li	a0,97
    80001d80:	00002097          	auipc	ra,0x2
    80001d84:	17c080e7          	jalr	380(ra) # 80003efc <__putc>
    __putc(*(a1+1));
    80001d88:	0014c503          	lbu	a0,1(s1)
    80001d8c:	00002097          	auipc	ra,0x2
    80001d90:	170080e7          	jalr	368(ra) # 80003efc <__putc>
    *(a1+11) = 'h';
    80001d94:	06800793          	li	a5,104
    80001d98:	00f485a3          	sb	a5,11(s1)
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001d9c:	00a00593          	li	a1,10
    80001da0:	00090513          	mv	a0,s2
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	c04080e7          	jalr	-1020(ra) # 800019a8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    *a2 = 'c';
    80001dac:	06300793          	li	a5,99
    80001db0:	00f50023          	sb	a5,0(a0)
    *(a2+sizeof(char)) ='d';
    80001db4:	06400793          	li	a5,100
    80001db8:	00f500a3          	sb	a5,1(a0)
    memAlloc.FreeFragment(a1);
    80001dbc:	00048593          	mv	a1,s1
    80001dc0:	00090513          	mv	a0,s2
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	c80080e7          	jalr	-896(ra) # 80001a44 <_ZN15MemoryAllocator12FreeFragmentEPv>
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001dcc:	00a00593          	li	a1,10
    80001dd0:	00090513          	mv	a0,s2
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	bd4080e7          	jalr	-1068(ra) # 800019a8 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001ddc:	00050913          	mv	s2,a0
    *a3 = 'e';
    80001de0:	06500793          	li	a5,101
    80001de4:	00f50023          	sb	a5,0(a0)
    *(a3+sizeof(char)) ='f';
    80001de8:	06600793          	li	a5,102
    80001dec:	00f500a3          	sb	a5,1(a0)
    __putc(*a3);
    80001df0:	06500513          	li	a0,101
    80001df4:	00002097          	auipc	ra,0x2
    80001df8:	108080e7          	jalr	264(ra) # 80003efc <__putc>
    __putc(*(a3+11));
    80001dfc:	00b94503          	lbu	a0,11(s2)
    80001e00:	00002097          	auipc	ra,0x2
    80001e04:	0fc080e7          	jalr	252(ra) # 80003efc <__putc>
    __putc(*a1);
    80001e08:	0004c503          	lbu	a0,0(s1)
    80001e0c:	00002097          	auipc	ra,0x2
    80001e10:	0f0080e7          	jalr	240(ra) # 80003efc <__putc>
    __putc(*(a1+1));
    80001e14:	0014c503          	lbu	a0,1(s1)
    80001e18:	00002097          	auipc	ra,0x2
    80001e1c:	0e4080e7          	jalr	228(ra) # 80003efc <__putc>


    80001e20:	02813083          	ld	ra,40(sp)
    80001e24:	02013403          	ld	s0,32(sp)
    80001e28:	01813483          	ld	s1,24(sp)
    80001e2c:	01013903          	ld	s2,16(sp)
    80001e30:	03010113          	addi	sp,sp,48
    80001e34:	00008067          	ret

0000000080001e38 <start>:
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00813423          	sd	s0,8(sp)
    80001e40:	01010413          	addi	s0,sp,16
    80001e44:	300027f3          	csrr	a5,mstatus
    80001e48:	ffffe737          	lui	a4,0xffffe
    80001e4c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7dff>
    80001e50:	00e7f7b3          	and	a5,a5,a4
    80001e54:	00001737          	lui	a4,0x1
    80001e58:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001e5c:	00e7e7b3          	or	a5,a5,a4
    80001e60:	30079073          	csrw	mstatus,a5
    80001e64:	00000797          	auipc	a5,0x0
    80001e68:	16078793          	addi	a5,a5,352 # 80001fc4 <system_main>
    80001e6c:	34179073          	csrw	mepc,a5
    80001e70:	00000793          	li	a5,0
    80001e74:	18079073          	csrw	satp,a5
    80001e78:	000107b7          	lui	a5,0x10
    80001e7c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e80:	30279073          	csrw	medeleg,a5
    80001e84:	30379073          	csrw	mideleg,a5
    80001e88:	104027f3          	csrr	a5,sie
    80001e8c:	2227e793          	ori	a5,a5,546
    80001e90:	10479073          	csrw	sie,a5
    80001e94:	fff00793          	li	a5,-1
    80001e98:	00a7d793          	srli	a5,a5,0xa
    80001e9c:	3b079073          	csrw	pmpaddr0,a5
    80001ea0:	00f00793          	li	a5,15
    80001ea4:	3a079073          	csrw	pmpcfg0,a5
    80001ea8:	f14027f3          	csrr	a5,mhartid
    80001eac:	0200c737          	lui	a4,0x200c
    80001eb0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001eb4:	0007869b          	sext.w	a3,a5
    80001eb8:	00269713          	slli	a4,a3,0x2
    80001ebc:	000f4637          	lui	a2,0xf4
    80001ec0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ec4:	00d70733          	add	a4,a4,a3
    80001ec8:	0037979b          	slliw	a5,a5,0x3
    80001ecc:	020046b7          	lui	a3,0x2004
    80001ed0:	00d787b3          	add	a5,a5,a3
    80001ed4:	00c585b3          	add	a1,a1,a2
    80001ed8:	00371693          	slli	a3,a4,0x3
    80001edc:	00004717          	auipc	a4,0x4
    80001ee0:	8d470713          	addi	a4,a4,-1836 # 800057b0 <timer_scratch>
    80001ee4:	00b7b023          	sd	a1,0(a5)
    80001ee8:	00d70733          	add	a4,a4,a3
    80001eec:	00f73c23          	sd	a5,24(a4)
    80001ef0:	02c73023          	sd	a2,32(a4)
    80001ef4:	34071073          	csrw	mscratch,a4
    80001ef8:	00000797          	auipc	a5,0x0
    80001efc:	6e878793          	addi	a5,a5,1768 # 800025e0 <timervec>
    80001f00:	30579073          	csrw	mtvec,a5
    80001f04:	300027f3          	csrr	a5,mstatus
    80001f08:	0087e793          	ori	a5,a5,8
    80001f0c:	30079073          	csrw	mstatus,a5
    80001f10:	304027f3          	csrr	a5,mie
    80001f14:	0807e793          	ori	a5,a5,128
    80001f18:	30479073          	csrw	mie,a5
    80001f1c:	f14027f3          	csrr	a5,mhartid
    80001f20:	0007879b          	sext.w	a5,a5
    80001f24:	00078213          	mv	tp,a5
    80001f28:	30200073          	mret
    80001f2c:	00813403          	ld	s0,8(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <timerinit>:
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00813423          	sd	s0,8(sp)
    80001f40:	01010413          	addi	s0,sp,16
    80001f44:	f14027f3          	csrr	a5,mhartid
    80001f48:	0200c737          	lui	a4,0x200c
    80001f4c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f50:	0007869b          	sext.w	a3,a5
    80001f54:	00269713          	slli	a4,a3,0x2
    80001f58:	000f4637          	lui	a2,0xf4
    80001f5c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f60:	00d70733          	add	a4,a4,a3
    80001f64:	0037979b          	slliw	a5,a5,0x3
    80001f68:	020046b7          	lui	a3,0x2004
    80001f6c:	00d787b3          	add	a5,a5,a3
    80001f70:	00c585b3          	add	a1,a1,a2
    80001f74:	00371693          	slli	a3,a4,0x3
    80001f78:	00004717          	auipc	a4,0x4
    80001f7c:	83870713          	addi	a4,a4,-1992 # 800057b0 <timer_scratch>
    80001f80:	00b7b023          	sd	a1,0(a5)
    80001f84:	00d70733          	add	a4,a4,a3
    80001f88:	00f73c23          	sd	a5,24(a4)
    80001f8c:	02c73023          	sd	a2,32(a4)
    80001f90:	34071073          	csrw	mscratch,a4
    80001f94:	00000797          	auipc	a5,0x0
    80001f98:	64c78793          	addi	a5,a5,1612 # 800025e0 <timervec>
    80001f9c:	30579073          	csrw	mtvec,a5
    80001fa0:	300027f3          	csrr	a5,mstatus
    80001fa4:	0087e793          	ori	a5,a5,8
    80001fa8:	30079073          	csrw	mstatus,a5
    80001fac:	304027f3          	csrr	a5,mie
    80001fb0:	0807e793          	ori	a5,a5,128
    80001fb4:	30479073          	csrw	mie,a5
    80001fb8:	00813403          	ld	s0,8(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <system_main>:
    80001fc4:	fe010113          	addi	sp,sp,-32
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	00113c23          	sd	ra,24(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	0c4080e7          	jalr	196(ra) # 8000209c <cpuid>
    80001fe0:	00003497          	auipc	s1,0x3
    80001fe4:	77048493          	addi	s1,s1,1904 # 80005750 <started>
    80001fe8:	02050263          	beqz	a0,8000200c <system_main+0x48>
    80001fec:	0004a783          	lw	a5,0(s1)
    80001ff0:	0007879b          	sext.w	a5,a5
    80001ff4:	fe078ce3          	beqz	a5,80001fec <system_main+0x28>
    80001ff8:	0ff0000f          	fence
    80001ffc:	00003517          	auipc	a0,0x3
    80002000:	05450513          	addi	a0,a0,84 # 80005050 <CONSOLE_STATUS+0x40>
    80002004:	00001097          	auipc	ra,0x1
    80002008:	a78080e7          	jalr	-1416(ra) # 80002a7c <panic>
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	9cc080e7          	jalr	-1588(ra) # 800029d8 <consoleinit>
    80002014:	00001097          	auipc	ra,0x1
    80002018:	158080e7          	jalr	344(ra) # 8000316c <printfinit>
    8000201c:	00003517          	auipc	a0,0x3
    80002020:	11450513          	addi	a0,a0,276 # 80005130 <CONSOLE_STATUS+0x120>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	ab4080e7          	jalr	-1356(ra) # 80002ad8 <__printf>
    8000202c:	00003517          	auipc	a0,0x3
    80002030:	ff450513          	addi	a0,a0,-12 # 80005020 <CONSOLE_STATUS+0x10>
    80002034:	00001097          	auipc	ra,0x1
    80002038:	aa4080e7          	jalr	-1372(ra) # 80002ad8 <__printf>
    8000203c:	00003517          	auipc	a0,0x3
    80002040:	0f450513          	addi	a0,a0,244 # 80005130 <CONSOLE_STATUS+0x120>
    80002044:	00001097          	auipc	ra,0x1
    80002048:	a94080e7          	jalr	-1388(ra) # 80002ad8 <__printf>
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	4ac080e7          	jalr	1196(ra) # 800034f8 <kinit>
    80002054:	00000097          	auipc	ra,0x0
    80002058:	148080e7          	jalr	328(ra) # 8000219c <trapinit>
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	16c080e7          	jalr	364(ra) # 800021c8 <trapinithart>
    80002064:	00000097          	auipc	ra,0x0
    80002068:	5bc080e7          	jalr	1468(ra) # 80002620 <plicinit>
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	5dc080e7          	jalr	1500(ra) # 80002648 <plicinithart>
    80002074:	00000097          	auipc	ra,0x0
    80002078:	078080e7          	jalr	120(ra) # 800020ec <userinit>
    8000207c:	0ff0000f          	fence
    80002080:	00100793          	li	a5,1
    80002084:	00003517          	auipc	a0,0x3
    80002088:	fb450513          	addi	a0,a0,-76 # 80005038 <CONSOLE_STATUS+0x28>
    8000208c:	00f4a023          	sw	a5,0(s1)
    80002090:	00001097          	auipc	ra,0x1
    80002094:	a48080e7          	jalr	-1464(ra) # 80002ad8 <__printf>
    80002098:	0000006f          	j	80002098 <system_main+0xd4>

000000008000209c <cpuid>:
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    800020a8:	00020513          	mv	a0,tp
    800020ac:	00813403          	ld	s0,8(sp)
    800020b0:	0005051b          	sext.w	a0,a0
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret

00000000800020bc <mycpu>:
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00813423          	sd	s0,8(sp)
    800020c4:	01010413          	addi	s0,sp,16
    800020c8:	00020793          	mv	a5,tp
    800020cc:	00813403          	ld	s0,8(sp)
    800020d0:	0007879b          	sext.w	a5,a5
    800020d4:	00779793          	slli	a5,a5,0x7
    800020d8:	00004517          	auipc	a0,0x4
    800020dc:	70850513          	addi	a0,a0,1800 # 800067e0 <cpus>
    800020e0:	00f50533          	add	a0,a0,a5
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <userinit>:
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00813423          	sd	s0,8(sp)
    800020f4:	01010413          	addi	s0,sp,16
    800020f8:	00813403          	ld	s0,8(sp)
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	fffff317          	auipc	t1,0xfffff
    80002104:	35c30067          	jr	860(t1) # 8000145c <main>

0000000080002108 <either_copyout>:
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00813023          	sd	s0,0(sp)
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	01010413          	addi	s0,sp,16
    80002118:	02051663          	bnez	a0,80002144 <either_copyout+0x3c>
    8000211c:	00058513          	mv	a0,a1
    80002120:	00060593          	mv	a1,a2
    80002124:	0006861b          	sext.w	a2,a3
    80002128:	00002097          	auipc	ra,0x2
    8000212c:	c5c080e7          	jalr	-932(ra) # 80003d84 <__memmove>
    80002130:	00813083          	ld	ra,8(sp)
    80002134:	00013403          	ld	s0,0(sp)
    80002138:	00000513          	li	a0,0
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret
    80002144:	00003517          	auipc	a0,0x3
    80002148:	f3450513          	addi	a0,a0,-204 # 80005078 <CONSOLE_STATUS+0x68>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	930080e7          	jalr	-1744(ra) # 80002a7c <panic>

0000000080002154 <either_copyin>:
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00813023          	sd	s0,0(sp)
    8000215c:	00113423          	sd	ra,8(sp)
    80002160:	01010413          	addi	s0,sp,16
    80002164:	02059463          	bnez	a1,8000218c <either_copyin+0x38>
    80002168:	00060593          	mv	a1,a2
    8000216c:	0006861b          	sext.w	a2,a3
    80002170:	00002097          	auipc	ra,0x2
    80002174:	c14080e7          	jalr	-1004(ra) # 80003d84 <__memmove>
    80002178:	00813083          	ld	ra,8(sp)
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	00000513          	li	a0,0
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret
    8000218c:	00003517          	auipc	a0,0x3
    80002190:	f1450513          	addi	a0,a0,-236 # 800050a0 <CONSOLE_STATUS+0x90>
    80002194:	00001097          	auipc	ra,0x1
    80002198:	8e8080e7          	jalr	-1816(ra) # 80002a7c <panic>

000000008000219c <trapinit>:
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	00003597          	auipc	a1,0x3
    800021b0:	f1c58593          	addi	a1,a1,-228 # 800050c8 <CONSOLE_STATUS+0xb8>
    800021b4:	00004517          	auipc	a0,0x4
    800021b8:	6ac50513          	addi	a0,a0,1708 # 80006860 <tickslock>
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00001317          	auipc	t1,0x1
    800021c4:	5c830067          	jr	1480(t1) # 80003788 <initlock>

00000000800021c8 <trapinithart>:
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00813423          	sd	s0,8(sp)
    800021d0:	01010413          	addi	s0,sp,16
    800021d4:	00000797          	auipc	a5,0x0
    800021d8:	2fc78793          	addi	a5,a5,764 # 800024d0 <kernelvec>
    800021dc:	10579073          	csrw	stvec,a5
    800021e0:	00813403          	ld	s0,8(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <usertrap>:
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813423          	sd	s0,8(sp)
    800021f4:	01010413          	addi	s0,sp,16
    800021f8:	00813403          	ld	s0,8(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <usertrapret>:
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813423          	sd	s0,8(sp)
    8000220c:	01010413          	addi	s0,sp,16
    80002210:	00813403          	ld	s0,8(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <kerneltrap>:
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00113c23          	sd	ra,24(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	142025f3          	csrr	a1,scause
    80002234:	100027f3          	csrr	a5,sstatus
    80002238:	0027f793          	andi	a5,a5,2
    8000223c:	10079c63          	bnez	a5,80002354 <kerneltrap+0x138>
    80002240:	142027f3          	csrr	a5,scause
    80002244:	0207ce63          	bltz	a5,80002280 <kerneltrap+0x64>
    80002248:	00003517          	auipc	a0,0x3
    8000224c:	ec850513          	addi	a0,a0,-312 # 80005110 <CONSOLE_STATUS+0x100>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	888080e7          	jalr	-1912(ra) # 80002ad8 <__printf>
    80002258:	141025f3          	csrr	a1,sepc
    8000225c:	14302673          	csrr	a2,stval
    80002260:	00003517          	auipc	a0,0x3
    80002264:	ec050513          	addi	a0,a0,-320 # 80005120 <CONSOLE_STATUS+0x110>
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	870080e7          	jalr	-1936(ra) # 80002ad8 <__printf>
    80002270:	00003517          	auipc	a0,0x3
    80002274:	ec850513          	addi	a0,a0,-312 # 80005138 <CONSOLE_STATUS+0x128>
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	804080e7          	jalr	-2044(ra) # 80002a7c <panic>
    80002280:	0ff7f713          	andi	a4,a5,255
    80002284:	00900693          	li	a3,9
    80002288:	04d70063          	beq	a4,a3,800022c8 <kerneltrap+0xac>
    8000228c:	fff00713          	li	a4,-1
    80002290:	03f71713          	slli	a4,a4,0x3f
    80002294:	00170713          	addi	a4,a4,1
    80002298:	fae798e3          	bne	a5,a4,80002248 <kerneltrap+0x2c>
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	e00080e7          	jalr	-512(ra) # 8000209c <cpuid>
    800022a4:	06050663          	beqz	a0,80002310 <kerneltrap+0xf4>
    800022a8:	144027f3          	csrr	a5,sip
    800022ac:	ffd7f793          	andi	a5,a5,-3
    800022b0:	14479073          	csrw	sip,a5
    800022b4:	01813083          	ld	ra,24(sp)
    800022b8:	01013403          	ld	s0,16(sp)
    800022bc:	00813483          	ld	s1,8(sp)
    800022c0:	02010113          	addi	sp,sp,32
    800022c4:	00008067          	ret
    800022c8:	00000097          	auipc	ra,0x0
    800022cc:	3cc080e7          	jalr	972(ra) # 80002694 <plic_claim>
    800022d0:	00a00793          	li	a5,10
    800022d4:	00050493          	mv	s1,a0
    800022d8:	06f50863          	beq	a0,a5,80002348 <kerneltrap+0x12c>
    800022dc:	fc050ce3          	beqz	a0,800022b4 <kerneltrap+0x98>
    800022e0:	00050593          	mv	a1,a0
    800022e4:	00003517          	auipc	a0,0x3
    800022e8:	e0c50513          	addi	a0,a0,-500 # 800050f0 <CONSOLE_STATUS+0xe0>
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	7ec080e7          	jalr	2028(ra) # 80002ad8 <__printf>
    800022f4:	01013403          	ld	s0,16(sp)
    800022f8:	01813083          	ld	ra,24(sp)
    800022fc:	00048513          	mv	a0,s1
    80002300:	00813483          	ld	s1,8(sp)
    80002304:	02010113          	addi	sp,sp,32
    80002308:	00000317          	auipc	t1,0x0
    8000230c:	3c430067          	jr	964(t1) # 800026cc <plic_complete>
    80002310:	00004517          	auipc	a0,0x4
    80002314:	55050513          	addi	a0,a0,1360 # 80006860 <tickslock>
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	494080e7          	jalr	1172(ra) # 800037ac <acquire>
    80002320:	00003717          	auipc	a4,0x3
    80002324:	43470713          	addi	a4,a4,1076 # 80005754 <ticks>
    80002328:	00072783          	lw	a5,0(a4)
    8000232c:	00004517          	auipc	a0,0x4
    80002330:	53450513          	addi	a0,a0,1332 # 80006860 <tickslock>
    80002334:	0017879b          	addiw	a5,a5,1
    80002338:	00f72023          	sw	a5,0(a4)
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	53c080e7          	jalr	1340(ra) # 80003878 <release>
    80002344:	f65ff06f          	j	800022a8 <kerneltrap+0x8c>
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	098080e7          	jalr	152(ra) # 800033e0 <uartintr>
    80002350:	fa5ff06f          	j	800022f4 <kerneltrap+0xd8>
    80002354:	00003517          	auipc	a0,0x3
    80002358:	d7c50513          	addi	a0,a0,-644 # 800050d0 <CONSOLE_STATUS+0xc0>
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	720080e7          	jalr	1824(ra) # 80002a7c <panic>

0000000080002364 <clockintr>:
    80002364:	fe010113          	addi	sp,sp,-32
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00913423          	sd	s1,8(sp)
    80002370:	00113c23          	sd	ra,24(sp)
    80002374:	02010413          	addi	s0,sp,32
    80002378:	00004497          	auipc	s1,0x4
    8000237c:	4e848493          	addi	s1,s1,1256 # 80006860 <tickslock>
    80002380:	00048513          	mv	a0,s1
    80002384:	00001097          	auipc	ra,0x1
    80002388:	428080e7          	jalr	1064(ra) # 800037ac <acquire>
    8000238c:	00003717          	auipc	a4,0x3
    80002390:	3c870713          	addi	a4,a4,968 # 80005754 <ticks>
    80002394:	00072783          	lw	a5,0(a4)
    80002398:	01013403          	ld	s0,16(sp)
    8000239c:	01813083          	ld	ra,24(sp)
    800023a0:	00048513          	mv	a0,s1
    800023a4:	0017879b          	addiw	a5,a5,1
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	00f72023          	sw	a5,0(a4)
    800023b0:	02010113          	addi	sp,sp,32
    800023b4:	00001317          	auipc	t1,0x1
    800023b8:	4c430067          	jr	1220(t1) # 80003878 <release>

00000000800023bc <devintr>:
    800023bc:	142027f3          	csrr	a5,scause
    800023c0:	00000513          	li	a0,0
    800023c4:	0007c463          	bltz	a5,800023cc <devintr+0x10>
    800023c8:	00008067          	ret
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00813823          	sd	s0,16(sp)
    800023d4:	00113c23          	sd	ra,24(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	02010413          	addi	s0,sp,32
    800023e0:	0ff7f713          	andi	a4,a5,255
    800023e4:	00900693          	li	a3,9
    800023e8:	04d70c63          	beq	a4,a3,80002440 <devintr+0x84>
    800023ec:	fff00713          	li	a4,-1
    800023f0:	03f71713          	slli	a4,a4,0x3f
    800023f4:	00170713          	addi	a4,a4,1
    800023f8:	00e78c63          	beq	a5,a4,80002410 <devintr+0x54>
    800023fc:	01813083          	ld	ra,24(sp)
    80002400:	01013403          	ld	s0,16(sp)
    80002404:	00813483          	ld	s1,8(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret
    80002410:	00000097          	auipc	ra,0x0
    80002414:	c8c080e7          	jalr	-884(ra) # 8000209c <cpuid>
    80002418:	06050663          	beqz	a0,80002484 <devintr+0xc8>
    8000241c:	144027f3          	csrr	a5,sip
    80002420:	ffd7f793          	andi	a5,a5,-3
    80002424:	14479073          	csrw	sip,a5
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	00200513          	li	a0,2
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret
    80002440:	00000097          	auipc	ra,0x0
    80002444:	254080e7          	jalr	596(ra) # 80002694 <plic_claim>
    80002448:	00a00793          	li	a5,10
    8000244c:	00050493          	mv	s1,a0
    80002450:	06f50663          	beq	a0,a5,800024bc <devintr+0x100>
    80002454:	00100513          	li	a0,1
    80002458:	fa0482e3          	beqz	s1,800023fc <devintr+0x40>
    8000245c:	00048593          	mv	a1,s1
    80002460:	00003517          	auipc	a0,0x3
    80002464:	c9050513          	addi	a0,a0,-880 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	670080e7          	jalr	1648(ra) # 80002ad8 <__printf>
    80002470:	00048513          	mv	a0,s1
    80002474:	00000097          	auipc	ra,0x0
    80002478:	258080e7          	jalr	600(ra) # 800026cc <plic_complete>
    8000247c:	00100513          	li	a0,1
    80002480:	f7dff06f          	j	800023fc <devintr+0x40>
    80002484:	00004517          	auipc	a0,0x4
    80002488:	3dc50513          	addi	a0,a0,988 # 80006860 <tickslock>
    8000248c:	00001097          	auipc	ra,0x1
    80002490:	320080e7          	jalr	800(ra) # 800037ac <acquire>
    80002494:	00003717          	auipc	a4,0x3
    80002498:	2c070713          	addi	a4,a4,704 # 80005754 <ticks>
    8000249c:	00072783          	lw	a5,0(a4)
    800024a0:	00004517          	auipc	a0,0x4
    800024a4:	3c050513          	addi	a0,a0,960 # 80006860 <tickslock>
    800024a8:	0017879b          	addiw	a5,a5,1
    800024ac:	00f72023          	sw	a5,0(a4)
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	3c8080e7          	jalr	968(ra) # 80003878 <release>
    800024b8:	f65ff06f          	j	8000241c <devintr+0x60>
    800024bc:	00001097          	auipc	ra,0x1
    800024c0:	f24080e7          	jalr	-220(ra) # 800033e0 <uartintr>
    800024c4:	fadff06f          	j	80002470 <devintr+0xb4>
	...

00000000800024d0 <kernelvec>:
    800024d0:	f0010113          	addi	sp,sp,-256
    800024d4:	00113023          	sd	ra,0(sp)
    800024d8:	00213423          	sd	sp,8(sp)
    800024dc:	00313823          	sd	gp,16(sp)
    800024e0:	00413c23          	sd	tp,24(sp)
    800024e4:	02513023          	sd	t0,32(sp)
    800024e8:	02613423          	sd	t1,40(sp)
    800024ec:	02713823          	sd	t2,48(sp)
    800024f0:	02813c23          	sd	s0,56(sp)
    800024f4:	04913023          	sd	s1,64(sp)
    800024f8:	04a13423          	sd	a0,72(sp)
    800024fc:	04b13823          	sd	a1,80(sp)
    80002500:	04c13c23          	sd	a2,88(sp)
    80002504:	06d13023          	sd	a3,96(sp)
    80002508:	06e13423          	sd	a4,104(sp)
    8000250c:	06f13823          	sd	a5,112(sp)
    80002510:	07013c23          	sd	a6,120(sp)
    80002514:	09113023          	sd	a7,128(sp)
    80002518:	09213423          	sd	s2,136(sp)
    8000251c:	09313823          	sd	s3,144(sp)
    80002520:	09413c23          	sd	s4,152(sp)
    80002524:	0b513023          	sd	s5,160(sp)
    80002528:	0b613423          	sd	s6,168(sp)
    8000252c:	0b713823          	sd	s7,176(sp)
    80002530:	0b813c23          	sd	s8,184(sp)
    80002534:	0d913023          	sd	s9,192(sp)
    80002538:	0da13423          	sd	s10,200(sp)
    8000253c:	0db13823          	sd	s11,208(sp)
    80002540:	0dc13c23          	sd	t3,216(sp)
    80002544:	0fd13023          	sd	t4,224(sp)
    80002548:	0fe13423          	sd	t5,232(sp)
    8000254c:	0ff13823          	sd	t6,240(sp)
    80002550:	ccdff0ef          	jal	ra,8000221c <kerneltrap>
    80002554:	00013083          	ld	ra,0(sp)
    80002558:	00813103          	ld	sp,8(sp)
    8000255c:	01013183          	ld	gp,16(sp)
    80002560:	02013283          	ld	t0,32(sp)
    80002564:	02813303          	ld	t1,40(sp)
    80002568:	03013383          	ld	t2,48(sp)
    8000256c:	03813403          	ld	s0,56(sp)
    80002570:	04013483          	ld	s1,64(sp)
    80002574:	04813503          	ld	a0,72(sp)
    80002578:	05013583          	ld	a1,80(sp)
    8000257c:	05813603          	ld	a2,88(sp)
    80002580:	06013683          	ld	a3,96(sp)
    80002584:	06813703          	ld	a4,104(sp)
    80002588:	07013783          	ld	a5,112(sp)
    8000258c:	07813803          	ld	a6,120(sp)
    80002590:	08013883          	ld	a7,128(sp)
    80002594:	08813903          	ld	s2,136(sp)
    80002598:	09013983          	ld	s3,144(sp)
    8000259c:	09813a03          	ld	s4,152(sp)
    800025a0:	0a013a83          	ld	s5,160(sp)
    800025a4:	0a813b03          	ld	s6,168(sp)
    800025a8:	0b013b83          	ld	s7,176(sp)
    800025ac:	0b813c03          	ld	s8,184(sp)
    800025b0:	0c013c83          	ld	s9,192(sp)
    800025b4:	0c813d03          	ld	s10,200(sp)
    800025b8:	0d013d83          	ld	s11,208(sp)
    800025bc:	0d813e03          	ld	t3,216(sp)
    800025c0:	0e013e83          	ld	t4,224(sp)
    800025c4:	0e813f03          	ld	t5,232(sp)
    800025c8:	0f013f83          	ld	t6,240(sp)
    800025cc:	10010113          	addi	sp,sp,256
    800025d0:	10200073          	sret
    800025d4:	00000013          	nop
    800025d8:	00000013          	nop
    800025dc:	00000013          	nop

00000000800025e0 <timervec>:
    800025e0:	34051573          	csrrw	a0,mscratch,a0
    800025e4:	00b53023          	sd	a1,0(a0)
    800025e8:	00c53423          	sd	a2,8(a0)
    800025ec:	00d53823          	sd	a3,16(a0)
    800025f0:	01853583          	ld	a1,24(a0)
    800025f4:	02053603          	ld	a2,32(a0)
    800025f8:	0005b683          	ld	a3,0(a1)
    800025fc:	00c686b3          	add	a3,a3,a2
    80002600:	00d5b023          	sd	a3,0(a1)
    80002604:	00200593          	li	a1,2
    80002608:	14459073          	csrw	sip,a1
    8000260c:	01053683          	ld	a3,16(a0)
    80002610:	00853603          	ld	a2,8(a0)
    80002614:	00053583          	ld	a1,0(a0)
    80002618:	34051573          	csrrw	a0,mscratch,a0
    8000261c:	30200073          	mret

0000000080002620 <plicinit>:
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    8000262c:	00813403          	ld	s0,8(sp)
    80002630:	0c0007b7          	lui	a5,0xc000
    80002634:	00100713          	li	a4,1
    80002638:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000263c:	00e7a223          	sw	a4,4(a5)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <plicinithart>:
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813023          	sd	s0,0(sp)
    80002650:	00113423          	sd	ra,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	a44080e7          	jalr	-1468(ra) # 8000209c <cpuid>
    80002660:	0085171b          	slliw	a4,a0,0x8
    80002664:	0c0027b7          	lui	a5,0xc002
    80002668:	00e787b3          	add	a5,a5,a4
    8000266c:	40200713          	li	a4,1026
    80002670:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	00d5151b          	slliw	a0,a0,0xd
    80002680:	0c2017b7          	lui	a5,0xc201
    80002684:	00a78533          	add	a0,a5,a0
    80002688:	00052023          	sw	zero,0(a0)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <plic_claim>:
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	01010413          	addi	s0,sp,16
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	9f8080e7          	jalr	-1544(ra) # 8000209c <cpuid>
    800026ac:	00813083          	ld	ra,8(sp)
    800026b0:	00013403          	ld	s0,0(sp)
    800026b4:	00d5151b          	slliw	a0,a0,0xd
    800026b8:	0c2017b7          	lui	a5,0xc201
    800026bc:	00a78533          	add	a0,a5,a0
    800026c0:	00452503          	lw	a0,4(a0)
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret

00000000800026cc <plic_complete>:
    800026cc:	fe010113          	addi	sp,sp,-32
    800026d0:	00813823          	sd	s0,16(sp)
    800026d4:	00913423          	sd	s1,8(sp)
    800026d8:	00113c23          	sd	ra,24(sp)
    800026dc:	02010413          	addi	s0,sp,32
    800026e0:	00050493          	mv	s1,a0
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	9b8080e7          	jalr	-1608(ra) # 8000209c <cpuid>
    800026ec:	01813083          	ld	ra,24(sp)
    800026f0:	01013403          	ld	s0,16(sp)
    800026f4:	00d5179b          	slliw	a5,a0,0xd
    800026f8:	0c201737          	lui	a4,0xc201
    800026fc:	00f707b3          	add	a5,a4,a5
    80002700:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002704:	00813483          	ld	s1,8(sp)
    80002708:	02010113          	addi	sp,sp,32
    8000270c:	00008067          	ret

0000000080002710 <consolewrite>:
    80002710:	fb010113          	addi	sp,sp,-80
    80002714:	04813023          	sd	s0,64(sp)
    80002718:	04113423          	sd	ra,72(sp)
    8000271c:	02913c23          	sd	s1,56(sp)
    80002720:	03213823          	sd	s2,48(sp)
    80002724:	03313423          	sd	s3,40(sp)
    80002728:	03413023          	sd	s4,32(sp)
    8000272c:	01513c23          	sd	s5,24(sp)
    80002730:	05010413          	addi	s0,sp,80
    80002734:	06c05c63          	blez	a2,800027ac <consolewrite+0x9c>
    80002738:	00060993          	mv	s3,a2
    8000273c:	00050a13          	mv	s4,a0
    80002740:	00058493          	mv	s1,a1
    80002744:	00000913          	li	s2,0
    80002748:	fff00a93          	li	s5,-1
    8000274c:	01c0006f          	j	80002768 <consolewrite+0x58>
    80002750:	fbf44503          	lbu	a0,-65(s0)
    80002754:	0019091b          	addiw	s2,s2,1
    80002758:	00148493          	addi	s1,s1,1
    8000275c:	00001097          	auipc	ra,0x1
    80002760:	a9c080e7          	jalr	-1380(ra) # 800031f8 <uartputc>
    80002764:	03298063          	beq	s3,s2,80002784 <consolewrite+0x74>
    80002768:	00048613          	mv	a2,s1
    8000276c:	00100693          	li	a3,1
    80002770:	000a0593          	mv	a1,s4
    80002774:	fbf40513          	addi	a0,s0,-65
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	9dc080e7          	jalr	-1572(ra) # 80002154 <either_copyin>
    80002780:	fd5518e3          	bne	a0,s5,80002750 <consolewrite+0x40>
    80002784:	04813083          	ld	ra,72(sp)
    80002788:	04013403          	ld	s0,64(sp)
    8000278c:	03813483          	ld	s1,56(sp)
    80002790:	02813983          	ld	s3,40(sp)
    80002794:	02013a03          	ld	s4,32(sp)
    80002798:	01813a83          	ld	s5,24(sp)
    8000279c:	00090513          	mv	a0,s2
    800027a0:	03013903          	ld	s2,48(sp)
    800027a4:	05010113          	addi	sp,sp,80
    800027a8:	00008067          	ret
    800027ac:	00000913          	li	s2,0
    800027b0:	fd5ff06f          	j	80002784 <consolewrite+0x74>

00000000800027b4 <consoleread>:
    800027b4:	f9010113          	addi	sp,sp,-112
    800027b8:	06813023          	sd	s0,96(sp)
    800027bc:	04913c23          	sd	s1,88(sp)
    800027c0:	05213823          	sd	s2,80(sp)
    800027c4:	05313423          	sd	s3,72(sp)
    800027c8:	05413023          	sd	s4,64(sp)
    800027cc:	03513c23          	sd	s5,56(sp)
    800027d0:	03613823          	sd	s6,48(sp)
    800027d4:	03713423          	sd	s7,40(sp)
    800027d8:	03813023          	sd	s8,32(sp)
    800027dc:	06113423          	sd	ra,104(sp)
    800027e0:	01913c23          	sd	s9,24(sp)
    800027e4:	07010413          	addi	s0,sp,112
    800027e8:	00060b93          	mv	s7,a2
    800027ec:	00050913          	mv	s2,a0
    800027f0:	00058c13          	mv	s8,a1
    800027f4:	00060b1b          	sext.w	s6,a2
    800027f8:	00004497          	auipc	s1,0x4
    800027fc:	08048493          	addi	s1,s1,128 # 80006878 <cons>
    80002800:	00400993          	li	s3,4
    80002804:	fff00a13          	li	s4,-1
    80002808:	00a00a93          	li	s5,10
    8000280c:	05705e63          	blez	s7,80002868 <consoleread+0xb4>
    80002810:	09c4a703          	lw	a4,156(s1)
    80002814:	0984a783          	lw	a5,152(s1)
    80002818:	0007071b          	sext.w	a4,a4
    8000281c:	08e78463          	beq	a5,a4,800028a4 <consoleread+0xf0>
    80002820:	07f7f713          	andi	a4,a5,127
    80002824:	00e48733          	add	a4,s1,a4
    80002828:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000282c:	0017869b          	addiw	a3,a5,1
    80002830:	08d4ac23          	sw	a3,152(s1)
    80002834:	00070c9b          	sext.w	s9,a4
    80002838:	0b370663          	beq	a4,s3,800028e4 <consoleread+0x130>
    8000283c:	00100693          	li	a3,1
    80002840:	f9f40613          	addi	a2,s0,-97
    80002844:	000c0593          	mv	a1,s8
    80002848:	00090513          	mv	a0,s2
    8000284c:	f8e40fa3          	sb	a4,-97(s0)
    80002850:	00000097          	auipc	ra,0x0
    80002854:	8b8080e7          	jalr	-1864(ra) # 80002108 <either_copyout>
    80002858:	01450863          	beq	a0,s4,80002868 <consoleread+0xb4>
    8000285c:	001c0c13          	addi	s8,s8,1
    80002860:	fffb8b9b          	addiw	s7,s7,-1
    80002864:	fb5c94e3          	bne	s9,s5,8000280c <consoleread+0x58>
    80002868:	000b851b          	sext.w	a0,s7
    8000286c:	06813083          	ld	ra,104(sp)
    80002870:	06013403          	ld	s0,96(sp)
    80002874:	05813483          	ld	s1,88(sp)
    80002878:	05013903          	ld	s2,80(sp)
    8000287c:	04813983          	ld	s3,72(sp)
    80002880:	04013a03          	ld	s4,64(sp)
    80002884:	03813a83          	ld	s5,56(sp)
    80002888:	02813b83          	ld	s7,40(sp)
    8000288c:	02013c03          	ld	s8,32(sp)
    80002890:	01813c83          	ld	s9,24(sp)
    80002894:	40ab053b          	subw	a0,s6,a0
    80002898:	03013b03          	ld	s6,48(sp)
    8000289c:	07010113          	addi	sp,sp,112
    800028a0:	00008067          	ret
    800028a4:	00001097          	auipc	ra,0x1
    800028a8:	1d8080e7          	jalr	472(ra) # 80003a7c <push_on>
    800028ac:	0984a703          	lw	a4,152(s1)
    800028b0:	09c4a783          	lw	a5,156(s1)
    800028b4:	0007879b          	sext.w	a5,a5
    800028b8:	fef70ce3          	beq	a4,a5,800028b0 <consoleread+0xfc>
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	234080e7          	jalr	564(ra) # 80003af0 <pop_on>
    800028c4:	0984a783          	lw	a5,152(s1)
    800028c8:	07f7f713          	andi	a4,a5,127
    800028cc:	00e48733          	add	a4,s1,a4
    800028d0:	01874703          	lbu	a4,24(a4)
    800028d4:	0017869b          	addiw	a3,a5,1
    800028d8:	08d4ac23          	sw	a3,152(s1)
    800028dc:	00070c9b          	sext.w	s9,a4
    800028e0:	f5371ee3          	bne	a4,s3,8000283c <consoleread+0x88>
    800028e4:	000b851b          	sext.w	a0,s7
    800028e8:	f96bf2e3          	bgeu	s7,s6,8000286c <consoleread+0xb8>
    800028ec:	08f4ac23          	sw	a5,152(s1)
    800028f0:	f7dff06f          	j	8000286c <consoleread+0xb8>

00000000800028f4 <consputc>:
    800028f4:	10000793          	li	a5,256
    800028f8:	00f50663          	beq	a0,a5,80002904 <consputc+0x10>
    800028fc:	00001317          	auipc	t1,0x1
    80002900:	9f430067          	jr	-1548(t1) # 800032f0 <uartputc_sync>
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00113423          	sd	ra,8(sp)
    8000290c:	00813023          	sd	s0,0(sp)
    80002910:	01010413          	addi	s0,sp,16
    80002914:	00800513          	li	a0,8
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	9d8080e7          	jalr	-1576(ra) # 800032f0 <uartputc_sync>
    80002920:	02000513          	li	a0,32
    80002924:	00001097          	auipc	ra,0x1
    80002928:	9cc080e7          	jalr	-1588(ra) # 800032f0 <uartputc_sync>
    8000292c:	00013403          	ld	s0,0(sp)
    80002930:	00813083          	ld	ra,8(sp)
    80002934:	00800513          	li	a0,8
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00001317          	auipc	t1,0x1
    80002940:	9b430067          	jr	-1612(t1) # 800032f0 <uartputc_sync>

0000000080002944 <consoleintr>:
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00813823          	sd	s0,16(sp)
    8000294c:	00913423          	sd	s1,8(sp)
    80002950:	01213023          	sd	s2,0(sp)
    80002954:	00113c23          	sd	ra,24(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00004917          	auipc	s2,0x4
    80002960:	f1c90913          	addi	s2,s2,-228 # 80006878 <cons>
    80002964:	00050493          	mv	s1,a0
    80002968:	00090513          	mv	a0,s2
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	e40080e7          	jalr	-448(ra) # 800037ac <acquire>
    80002974:	02048c63          	beqz	s1,800029ac <consoleintr+0x68>
    80002978:	0a092783          	lw	a5,160(s2)
    8000297c:	09892703          	lw	a4,152(s2)
    80002980:	07f00693          	li	a3,127
    80002984:	40e7873b          	subw	a4,a5,a4
    80002988:	02e6e263          	bltu	a3,a4,800029ac <consoleintr+0x68>
    8000298c:	00d00713          	li	a4,13
    80002990:	04e48063          	beq	s1,a4,800029d0 <consoleintr+0x8c>
    80002994:	07f7f713          	andi	a4,a5,127
    80002998:	00e90733          	add	a4,s2,a4
    8000299c:	0017879b          	addiw	a5,a5,1
    800029a0:	0af92023          	sw	a5,160(s2)
    800029a4:	00970c23          	sb	s1,24(a4)
    800029a8:	08f92e23          	sw	a5,156(s2)
    800029ac:	01013403          	ld	s0,16(sp)
    800029b0:	01813083          	ld	ra,24(sp)
    800029b4:	00813483          	ld	s1,8(sp)
    800029b8:	00013903          	ld	s2,0(sp)
    800029bc:	00004517          	auipc	a0,0x4
    800029c0:	ebc50513          	addi	a0,a0,-324 # 80006878 <cons>
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00001317          	auipc	t1,0x1
    800029cc:	eb030067          	jr	-336(t1) # 80003878 <release>
    800029d0:	00a00493          	li	s1,10
    800029d4:	fc1ff06f          	j	80002994 <consoleintr+0x50>

00000000800029d8 <consoleinit>:
    800029d8:	fe010113          	addi	sp,sp,-32
    800029dc:	00113c23          	sd	ra,24(sp)
    800029e0:	00813823          	sd	s0,16(sp)
    800029e4:	00913423          	sd	s1,8(sp)
    800029e8:	02010413          	addi	s0,sp,32
    800029ec:	00004497          	auipc	s1,0x4
    800029f0:	e8c48493          	addi	s1,s1,-372 # 80006878 <cons>
    800029f4:	00048513          	mv	a0,s1
    800029f8:	00002597          	auipc	a1,0x2
    800029fc:	75058593          	addi	a1,a1,1872 # 80005148 <CONSOLE_STATUS+0x138>
    80002a00:	00001097          	auipc	ra,0x1
    80002a04:	d88080e7          	jalr	-632(ra) # 80003788 <initlock>
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	7ac080e7          	jalr	1964(ra) # 800031b4 <uartinit>
    80002a10:	01813083          	ld	ra,24(sp)
    80002a14:	01013403          	ld	s0,16(sp)
    80002a18:	00000797          	auipc	a5,0x0
    80002a1c:	d9c78793          	addi	a5,a5,-612 # 800027b4 <consoleread>
    80002a20:	0af4bc23          	sd	a5,184(s1)
    80002a24:	00000797          	auipc	a5,0x0
    80002a28:	cec78793          	addi	a5,a5,-788 # 80002710 <consolewrite>
    80002a2c:	0cf4b023          	sd	a5,192(s1)
    80002a30:	00813483          	ld	s1,8(sp)
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00008067          	ret

0000000080002a3c <console_read>:
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00813423          	sd	s0,8(sp)
    80002a44:	01010413          	addi	s0,sp,16
    80002a48:	00813403          	ld	s0,8(sp)
    80002a4c:	00004317          	auipc	t1,0x4
    80002a50:	ee433303          	ld	t1,-284(t1) # 80006930 <devsw+0x10>
    80002a54:	01010113          	addi	sp,sp,16
    80002a58:	00030067          	jr	t1

0000000080002a5c <console_write>:
    80002a5c:	ff010113          	addi	sp,sp,-16
    80002a60:	00813423          	sd	s0,8(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	00813403          	ld	s0,8(sp)
    80002a6c:	00004317          	auipc	t1,0x4
    80002a70:	ecc33303          	ld	t1,-308(t1) # 80006938 <devsw+0x18>
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00030067          	jr	t1

0000000080002a7c <panic>:
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00813823          	sd	s0,16(sp)
    80002a88:	00913423          	sd	s1,8(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00050493          	mv	s1,a0
    80002a94:	00002517          	auipc	a0,0x2
    80002a98:	6bc50513          	addi	a0,a0,1724 # 80005150 <CONSOLE_STATUS+0x140>
    80002a9c:	00004797          	auipc	a5,0x4
    80002aa0:	f207ae23          	sw	zero,-196(a5) # 800069d8 <pr+0x18>
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	034080e7          	jalr	52(ra) # 80002ad8 <__printf>
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	028080e7          	jalr	40(ra) # 80002ad8 <__printf>
    80002ab8:	00002517          	auipc	a0,0x2
    80002abc:	67850513          	addi	a0,a0,1656 # 80005130 <CONSOLE_STATUS+0x120>
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	018080e7          	jalr	24(ra) # 80002ad8 <__printf>
    80002ac8:	00100793          	li	a5,1
    80002acc:	00003717          	auipc	a4,0x3
    80002ad0:	c8f72623          	sw	a5,-884(a4) # 80005758 <panicked>
    80002ad4:	0000006f          	j	80002ad4 <panic+0x58>

0000000080002ad8 <__printf>:
    80002ad8:	f3010113          	addi	sp,sp,-208
    80002adc:	08813023          	sd	s0,128(sp)
    80002ae0:	07313423          	sd	s3,104(sp)
    80002ae4:	09010413          	addi	s0,sp,144
    80002ae8:	05813023          	sd	s8,64(sp)
    80002aec:	08113423          	sd	ra,136(sp)
    80002af0:	06913c23          	sd	s1,120(sp)
    80002af4:	07213823          	sd	s2,112(sp)
    80002af8:	07413023          	sd	s4,96(sp)
    80002afc:	05513c23          	sd	s5,88(sp)
    80002b00:	05613823          	sd	s6,80(sp)
    80002b04:	05713423          	sd	s7,72(sp)
    80002b08:	03913c23          	sd	s9,56(sp)
    80002b0c:	03a13823          	sd	s10,48(sp)
    80002b10:	03b13423          	sd	s11,40(sp)
    80002b14:	00004317          	auipc	t1,0x4
    80002b18:	eac30313          	addi	t1,t1,-340 # 800069c0 <pr>
    80002b1c:	01832c03          	lw	s8,24(t1)
    80002b20:	00b43423          	sd	a1,8(s0)
    80002b24:	00c43823          	sd	a2,16(s0)
    80002b28:	00d43c23          	sd	a3,24(s0)
    80002b2c:	02e43023          	sd	a4,32(s0)
    80002b30:	02f43423          	sd	a5,40(s0)
    80002b34:	03043823          	sd	a6,48(s0)
    80002b38:	03143c23          	sd	a7,56(s0)
    80002b3c:	00050993          	mv	s3,a0
    80002b40:	4a0c1663          	bnez	s8,80002fec <__printf+0x514>
    80002b44:	60098c63          	beqz	s3,8000315c <__printf+0x684>
    80002b48:	0009c503          	lbu	a0,0(s3)
    80002b4c:	00840793          	addi	a5,s0,8
    80002b50:	f6f43c23          	sd	a5,-136(s0)
    80002b54:	00000493          	li	s1,0
    80002b58:	22050063          	beqz	a0,80002d78 <__printf+0x2a0>
    80002b5c:	00002a37          	lui	s4,0x2
    80002b60:	00018ab7          	lui	s5,0x18
    80002b64:	000f4b37          	lui	s6,0xf4
    80002b68:	00989bb7          	lui	s7,0x989
    80002b6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002b70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002b74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002b78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002b7c:	00148c9b          	addiw	s9,s1,1
    80002b80:	02500793          	li	a5,37
    80002b84:	01998933          	add	s2,s3,s9
    80002b88:	38f51263          	bne	a0,a5,80002f0c <__printf+0x434>
    80002b8c:	00094783          	lbu	a5,0(s2)
    80002b90:	00078c9b          	sext.w	s9,a5
    80002b94:	1e078263          	beqz	a5,80002d78 <__printf+0x2a0>
    80002b98:	0024849b          	addiw	s1,s1,2
    80002b9c:	07000713          	li	a4,112
    80002ba0:	00998933          	add	s2,s3,s1
    80002ba4:	38e78a63          	beq	a5,a4,80002f38 <__printf+0x460>
    80002ba8:	20f76863          	bltu	a4,a5,80002db8 <__printf+0x2e0>
    80002bac:	42a78863          	beq	a5,a0,80002fdc <__printf+0x504>
    80002bb0:	06400713          	li	a4,100
    80002bb4:	40e79663          	bne	a5,a4,80002fc0 <__printf+0x4e8>
    80002bb8:	f7843783          	ld	a5,-136(s0)
    80002bbc:	0007a603          	lw	a2,0(a5)
    80002bc0:	00878793          	addi	a5,a5,8
    80002bc4:	f6f43c23          	sd	a5,-136(s0)
    80002bc8:	42064a63          	bltz	a2,80002ffc <__printf+0x524>
    80002bcc:	00a00713          	li	a4,10
    80002bd0:	02e677bb          	remuw	a5,a2,a4
    80002bd4:	00002d97          	auipc	s11,0x2
    80002bd8:	5a4d8d93          	addi	s11,s11,1444 # 80005178 <digits>
    80002bdc:	00900593          	li	a1,9
    80002be0:	0006051b          	sext.w	a0,a2
    80002be4:	00000c93          	li	s9,0
    80002be8:	02079793          	slli	a5,a5,0x20
    80002bec:	0207d793          	srli	a5,a5,0x20
    80002bf0:	00fd87b3          	add	a5,s11,a5
    80002bf4:	0007c783          	lbu	a5,0(a5)
    80002bf8:	02e656bb          	divuw	a3,a2,a4
    80002bfc:	f8f40023          	sb	a5,-128(s0)
    80002c00:	14c5d863          	bge	a1,a2,80002d50 <__printf+0x278>
    80002c04:	06300593          	li	a1,99
    80002c08:	00100c93          	li	s9,1
    80002c0c:	02e6f7bb          	remuw	a5,a3,a4
    80002c10:	02079793          	slli	a5,a5,0x20
    80002c14:	0207d793          	srli	a5,a5,0x20
    80002c18:	00fd87b3          	add	a5,s11,a5
    80002c1c:	0007c783          	lbu	a5,0(a5)
    80002c20:	02e6d73b          	divuw	a4,a3,a4
    80002c24:	f8f400a3          	sb	a5,-127(s0)
    80002c28:	12a5f463          	bgeu	a1,a0,80002d50 <__printf+0x278>
    80002c2c:	00a00693          	li	a3,10
    80002c30:	00900593          	li	a1,9
    80002c34:	02d777bb          	remuw	a5,a4,a3
    80002c38:	02079793          	slli	a5,a5,0x20
    80002c3c:	0207d793          	srli	a5,a5,0x20
    80002c40:	00fd87b3          	add	a5,s11,a5
    80002c44:	0007c503          	lbu	a0,0(a5)
    80002c48:	02d757bb          	divuw	a5,a4,a3
    80002c4c:	f8a40123          	sb	a0,-126(s0)
    80002c50:	48e5f263          	bgeu	a1,a4,800030d4 <__printf+0x5fc>
    80002c54:	06300513          	li	a0,99
    80002c58:	02d7f5bb          	remuw	a1,a5,a3
    80002c5c:	02059593          	slli	a1,a1,0x20
    80002c60:	0205d593          	srli	a1,a1,0x20
    80002c64:	00bd85b3          	add	a1,s11,a1
    80002c68:	0005c583          	lbu	a1,0(a1)
    80002c6c:	02d7d7bb          	divuw	a5,a5,a3
    80002c70:	f8b401a3          	sb	a1,-125(s0)
    80002c74:	48e57263          	bgeu	a0,a4,800030f8 <__printf+0x620>
    80002c78:	3e700513          	li	a0,999
    80002c7c:	02d7f5bb          	remuw	a1,a5,a3
    80002c80:	02059593          	slli	a1,a1,0x20
    80002c84:	0205d593          	srli	a1,a1,0x20
    80002c88:	00bd85b3          	add	a1,s11,a1
    80002c8c:	0005c583          	lbu	a1,0(a1)
    80002c90:	02d7d7bb          	divuw	a5,a5,a3
    80002c94:	f8b40223          	sb	a1,-124(s0)
    80002c98:	46e57663          	bgeu	a0,a4,80003104 <__printf+0x62c>
    80002c9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ca0:	02059593          	slli	a1,a1,0x20
    80002ca4:	0205d593          	srli	a1,a1,0x20
    80002ca8:	00bd85b3          	add	a1,s11,a1
    80002cac:	0005c583          	lbu	a1,0(a1)
    80002cb0:	02d7d7bb          	divuw	a5,a5,a3
    80002cb4:	f8b402a3          	sb	a1,-123(s0)
    80002cb8:	46ea7863          	bgeu	s4,a4,80003128 <__printf+0x650>
    80002cbc:	02d7f5bb          	remuw	a1,a5,a3
    80002cc0:	02059593          	slli	a1,a1,0x20
    80002cc4:	0205d593          	srli	a1,a1,0x20
    80002cc8:	00bd85b3          	add	a1,s11,a1
    80002ccc:	0005c583          	lbu	a1,0(a1)
    80002cd0:	02d7d7bb          	divuw	a5,a5,a3
    80002cd4:	f8b40323          	sb	a1,-122(s0)
    80002cd8:	3eeaf863          	bgeu	s5,a4,800030c8 <__printf+0x5f0>
    80002cdc:	02d7f5bb          	remuw	a1,a5,a3
    80002ce0:	02059593          	slli	a1,a1,0x20
    80002ce4:	0205d593          	srli	a1,a1,0x20
    80002ce8:	00bd85b3          	add	a1,s11,a1
    80002cec:	0005c583          	lbu	a1,0(a1)
    80002cf0:	02d7d7bb          	divuw	a5,a5,a3
    80002cf4:	f8b403a3          	sb	a1,-121(s0)
    80002cf8:	42eb7e63          	bgeu	s6,a4,80003134 <__printf+0x65c>
    80002cfc:	02d7f5bb          	remuw	a1,a5,a3
    80002d00:	02059593          	slli	a1,a1,0x20
    80002d04:	0205d593          	srli	a1,a1,0x20
    80002d08:	00bd85b3          	add	a1,s11,a1
    80002d0c:	0005c583          	lbu	a1,0(a1)
    80002d10:	02d7d7bb          	divuw	a5,a5,a3
    80002d14:	f8b40423          	sb	a1,-120(s0)
    80002d18:	42ebfc63          	bgeu	s7,a4,80003150 <__printf+0x678>
    80002d1c:	02079793          	slli	a5,a5,0x20
    80002d20:	0207d793          	srli	a5,a5,0x20
    80002d24:	00fd8db3          	add	s11,s11,a5
    80002d28:	000dc703          	lbu	a4,0(s11)
    80002d2c:	00a00793          	li	a5,10
    80002d30:	00900c93          	li	s9,9
    80002d34:	f8e404a3          	sb	a4,-119(s0)
    80002d38:	00065c63          	bgez	a2,80002d50 <__printf+0x278>
    80002d3c:	f9040713          	addi	a4,s0,-112
    80002d40:	00f70733          	add	a4,a4,a5
    80002d44:	02d00693          	li	a3,45
    80002d48:	fed70823          	sb	a3,-16(a4)
    80002d4c:	00078c93          	mv	s9,a5
    80002d50:	f8040793          	addi	a5,s0,-128
    80002d54:	01978cb3          	add	s9,a5,s9
    80002d58:	f7f40d13          	addi	s10,s0,-129
    80002d5c:	000cc503          	lbu	a0,0(s9)
    80002d60:	fffc8c93          	addi	s9,s9,-1
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	b90080e7          	jalr	-1136(ra) # 800028f4 <consputc>
    80002d6c:	ffac98e3          	bne	s9,s10,80002d5c <__printf+0x284>
    80002d70:	00094503          	lbu	a0,0(s2)
    80002d74:	e00514e3          	bnez	a0,80002b7c <__printf+0xa4>
    80002d78:	1a0c1663          	bnez	s8,80002f24 <__printf+0x44c>
    80002d7c:	08813083          	ld	ra,136(sp)
    80002d80:	08013403          	ld	s0,128(sp)
    80002d84:	07813483          	ld	s1,120(sp)
    80002d88:	07013903          	ld	s2,112(sp)
    80002d8c:	06813983          	ld	s3,104(sp)
    80002d90:	06013a03          	ld	s4,96(sp)
    80002d94:	05813a83          	ld	s5,88(sp)
    80002d98:	05013b03          	ld	s6,80(sp)
    80002d9c:	04813b83          	ld	s7,72(sp)
    80002da0:	04013c03          	ld	s8,64(sp)
    80002da4:	03813c83          	ld	s9,56(sp)
    80002da8:	03013d03          	ld	s10,48(sp)
    80002dac:	02813d83          	ld	s11,40(sp)
    80002db0:	0d010113          	addi	sp,sp,208
    80002db4:	00008067          	ret
    80002db8:	07300713          	li	a4,115
    80002dbc:	1ce78a63          	beq	a5,a4,80002f90 <__printf+0x4b8>
    80002dc0:	07800713          	li	a4,120
    80002dc4:	1ee79e63          	bne	a5,a4,80002fc0 <__printf+0x4e8>
    80002dc8:	f7843783          	ld	a5,-136(s0)
    80002dcc:	0007a703          	lw	a4,0(a5)
    80002dd0:	00878793          	addi	a5,a5,8
    80002dd4:	f6f43c23          	sd	a5,-136(s0)
    80002dd8:	28074263          	bltz	a4,8000305c <__printf+0x584>
    80002ddc:	00002d97          	auipc	s11,0x2
    80002de0:	39cd8d93          	addi	s11,s11,924 # 80005178 <digits>
    80002de4:	00f77793          	andi	a5,a4,15
    80002de8:	00fd87b3          	add	a5,s11,a5
    80002dec:	0007c683          	lbu	a3,0(a5)
    80002df0:	00f00613          	li	a2,15
    80002df4:	0007079b          	sext.w	a5,a4
    80002df8:	f8d40023          	sb	a3,-128(s0)
    80002dfc:	0047559b          	srliw	a1,a4,0x4
    80002e00:	0047569b          	srliw	a3,a4,0x4
    80002e04:	00000c93          	li	s9,0
    80002e08:	0ee65063          	bge	a2,a4,80002ee8 <__printf+0x410>
    80002e0c:	00f6f693          	andi	a3,a3,15
    80002e10:	00dd86b3          	add	a3,s11,a3
    80002e14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002e18:	0087d79b          	srliw	a5,a5,0x8
    80002e1c:	00100c93          	li	s9,1
    80002e20:	f8d400a3          	sb	a3,-127(s0)
    80002e24:	0cb67263          	bgeu	a2,a1,80002ee8 <__printf+0x410>
    80002e28:	00f7f693          	andi	a3,a5,15
    80002e2c:	00dd86b3          	add	a3,s11,a3
    80002e30:	0006c583          	lbu	a1,0(a3)
    80002e34:	00f00613          	li	a2,15
    80002e38:	0047d69b          	srliw	a3,a5,0x4
    80002e3c:	f8b40123          	sb	a1,-126(s0)
    80002e40:	0047d593          	srli	a1,a5,0x4
    80002e44:	28f67e63          	bgeu	a2,a5,800030e0 <__printf+0x608>
    80002e48:	00f6f693          	andi	a3,a3,15
    80002e4c:	00dd86b3          	add	a3,s11,a3
    80002e50:	0006c503          	lbu	a0,0(a3)
    80002e54:	0087d813          	srli	a6,a5,0x8
    80002e58:	0087d69b          	srliw	a3,a5,0x8
    80002e5c:	f8a401a3          	sb	a0,-125(s0)
    80002e60:	28b67663          	bgeu	a2,a1,800030ec <__printf+0x614>
    80002e64:	00f6f693          	andi	a3,a3,15
    80002e68:	00dd86b3          	add	a3,s11,a3
    80002e6c:	0006c583          	lbu	a1,0(a3)
    80002e70:	00c7d513          	srli	a0,a5,0xc
    80002e74:	00c7d69b          	srliw	a3,a5,0xc
    80002e78:	f8b40223          	sb	a1,-124(s0)
    80002e7c:	29067a63          	bgeu	a2,a6,80003110 <__printf+0x638>
    80002e80:	00f6f693          	andi	a3,a3,15
    80002e84:	00dd86b3          	add	a3,s11,a3
    80002e88:	0006c583          	lbu	a1,0(a3)
    80002e8c:	0107d813          	srli	a6,a5,0x10
    80002e90:	0107d69b          	srliw	a3,a5,0x10
    80002e94:	f8b402a3          	sb	a1,-123(s0)
    80002e98:	28a67263          	bgeu	a2,a0,8000311c <__printf+0x644>
    80002e9c:	00f6f693          	andi	a3,a3,15
    80002ea0:	00dd86b3          	add	a3,s11,a3
    80002ea4:	0006c683          	lbu	a3,0(a3)
    80002ea8:	0147d79b          	srliw	a5,a5,0x14
    80002eac:	f8d40323          	sb	a3,-122(s0)
    80002eb0:	21067663          	bgeu	a2,a6,800030bc <__printf+0x5e4>
    80002eb4:	02079793          	slli	a5,a5,0x20
    80002eb8:	0207d793          	srli	a5,a5,0x20
    80002ebc:	00fd8db3          	add	s11,s11,a5
    80002ec0:	000dc683          	lbu	a3,0(s11)
    80002ec4:	00800793          	li	a5,8
    80002ec8:	00700c93          	li	s9,7
    80002ecc:	f8d403a3          	sb	a3,-121(s0)
    80002ed0:	00075c63          	bgez	a4,80002ee8 <__printf+0x410>
    80002ed4:	f9040713          	addi	a4,s0,-112
    80002ed8:	00f70733          	add	a4,a4,a5
    80002edc:	02d00693          	li	a3,45
    80002ee0:	fed70823          	sb	a3,-16(a4)
    80002ee4:	00078c93          	mv	s9,a5
    80002ee8:	f8040793          	addi	a5,s0,-128
    80002eec:	01978cb3          	add	s9,a5,s9
    80002ef0:	f7f40d13          	addi	s10,s0,-129
    80002ef4:	000cc503          	lbu	a0,0(s9)
    80002ef8:	fffc8c93          	addi	s9,s9,-1
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	9f8080e7          	jalr	-1544(ra) # 800028f4 <consputc>
    80002f04:	ff9d18e3          	bne	s10,s9,80002ef4 <__printf+0x41c>
    80002f08:	0100006f          	j	80002f18 <__printf+0x440>
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	9e8080e7          	jalr	-1560(ra) # 800028f4 <consputc>
    80002f14:	000c8493          	mv	s1,s9
    80002f18:	00094503          	lbu	a0,0(s2)
    80002f1c:	c60510e3          	bnez	a0,80002b7c <__printf+0xa4>
    80002f20:	e40c0ee3          	beqz	s8,80002d7c <__printf+0x2a4>
    80002f24:	00004517          	auipc	a0,0x4
    80002f28:	a9c50513          	addi	a0,a0,-1380 # 800069c0 <pr>
    80002f2c:	00001097          	auipc	ra,0x1
    80002f30:	94c080e7          	jalr	-1716(ra) # 80003878 <release>
    80002f34:	e49ff06f          	j	80002d7c <__printf+0x2a4>
    80002f38:	f7843783          	ld	a5,-136(s0)
    80002f3c:	03000513          	li	a0,48
    80002f40:	01000d13          	li	s10,16
    80002f44:	00878713          	addi	a4,a5,8
    80002f48:	0007bc83          	ld	s9,0(a5)
    80002f4c:	f6e43c23          	sd	a4,-136(s0)
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	9a4080e7          	jalr	-1628(ra) # 800028f4 <consputc>
    80002f58:	07800513          	li	a0,120
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	998080e7          	jalr	-1640(ra) # 800028f4 <consputc>
    80002f64:	00002d97          	auipc	s11,0x2
    80002f68:	214d8d93          	addi	s11,s11,532 # 80005178 <digits>
    80002f6c:	03ccd793          	srli	a5,s9,0x3c
    80002f70:	00fd87b3          	add	a5,s11,a5
    80002f74:	0007c503          	lbu	a0,0(a5)
    80002f78:	fffd0d1b          	addiw	s10,s10,-1
    80002f7c:	004c9c93          	slli	s9,s9,0x4
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	974080e7          	jalr	-1676(ra) # 800028f4 <consputc>
    80002f88:	fe0d12e3          	bnez	s10,80002f6c <__printf+0x494>
    80002f8c:	f8dff06f          	j	80002f18 <__printf+0x440>
    80002f90:	f7843783          	ld	a5,-136(s0)
    80002f94:	0007bc83          	ld	s9,0(a5)
    80002f98:	00878793          	addi	a5,a5,8
    80002f9c:	f6f43c23          	sd	a5,-136(s0)
    80002fa0:	000c9a63          	bnez	s9,80002fb4 <__printf+0x4dc>
    80002fa4:	1080006f          	j	800030ac <__printf+0x5d4>
    80002fa8:	001c8c93          	addi	s9,s9,1
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	948080e7          	jalr	-1720(ra) # 800028f4 <consputc>
    80002fb4:	000cc503          	lbu	a0,0(s9)
    80002fb8:	fe0518e3          	bnez	a0,80002fa8 <__printf+0x4d0>
    80002fbc:	f5dff06f          	j	80002f18 <__printf+0x440>
    80002fc0:	02500513          	li	a0,37
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	930080e7          	jalr	-1744(ra) # 800028f4 <consputc>
    80002fcc:	000c8513          	mv	a0,s9
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	924080e7          	jalr	-1756(ra) # 800028f4 <consputc>
    80002fd8:	f41ff06f          	j	80002f18 <__printf+0x440>
    80002fdc:	02500513          	li	a0,37
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	914080e7          	jalr	-1772(ra) # 800028f4 <consputc>
    80002fe8:	f31ff06f          	j	80002f18 <__printf+0x440>
    80002fec:	00030513          	mv	a0,t1
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	7bc080e7          	jalr	1980(ra) # 800037ac <acquire>
    80002ff8:	b4dff06f          	j	80002b44 <__printf+0x6c>
    80002ffc:	40c0053b          	negw	a0,a2
    80003000:	00a00713          	li	a4,10
    80003004:	02e576bb          	remuw	a3,a0,a4
    80003008:	00002d97          	auipc	s11,0x2
    8000300c:	170d8d93          	addi	s11,s11,368 # 80005178 <digits>
    80003010:	ff700593          	li	a1,-9
    80003014:	02069693          	slli	a3,a3,0x20
    80003018:	0206d693          	srli	a3,a3,0x20
    8000301c:	00dd86b3          	add	a3,s11,a3
    80003020:	0006c683          	lbu	a3,0(a3)
    80003024:	02e557bb          	divuw	a5,a0,a4
    80003028:	f8d40023          	sb	a3,-128(s0)
    8000302c:	10b65e63          	bge	a2,a1,80003148 <__printf+0x670>
    80003030:	06300593          	li	a1,99
    80003034:	02e7f6bb          	remuw	a3,a5,a4
    80003038:	02069693          	slli	a3,a3,0x20
    8000303c:	0206d693          	srli	a3,a3,0x20
    80003040:	00dd86b3          	add	a3,s11,a3
    80003044:	0006c683          	lbu	a3,0(a3)
    80003048:	02e7d73b          	divuw	a4,a5,a4
    8000304c:	00200793          	li	a5,2
    80003050:	f8d400a3          	sb	a3,-127(s0)
    80003054:	bca5ece3          	bltu	a1,a0,80002c2c <__printf+0x154>
    80003058:	ce5ff06f          	j	80002d3c <__printf+0x264>
    8000305c:	40e007bb          	negw	a5,a4
    80003060:	00002d97          	auipc	s11,0x2
    80003064:	118d8d93          	addi	s11,s11,280 # 80005178 <digits>
    80003068:	00f7f693          	andi	a3,a5,15
    8000306c:	00dd86b3          	add	a3,s11,a3
    80003070:	0006c583          	lbu	a1,0(a3)
    80003074:	ff100613          	li	a2,-15
    80003078:	0047d69b          	srliw	a3,a5,0x4
    8000307c:	f8b40023          	sb	a1,-128(s0)
    80003080:	0047d59b          	srliw	a1,a5,0x4
    80003084:	0ac75e63          	bge	a4,a2,80003140 <__printf+0x668>
    80003088:	00f6f693          	andi	a3,a3,15
    8000308c:	00dd86b3          	add	a3,s11,a3
    80003090:	0006c603          	lbu	a2,0(a3)
    80003094:	00f00693          	li	a3,15
    80003098:	0087d79b          	srliw	a5,a5,0x8
    8000309c:	f8c400a3          	sb	a2,-127(s0)
    800030a0:	d8b6e4e3          	bltu	a3,a1,80002e28 <__printf+0x350>
    800030a4:	00200793          	li	a5,2
    800030a8:	e2dff06f          	j	80002ed4 <__printf+0x3fc>
    800030ac:	00002c97          	auipc	s9,0x2
    800030b0:	0acc8c93          	addi	s9,s9,172 # 80005158 <CONSOLE_STATUS+0x148>
    800030b4:	02800513          	li	a0,40
    800030b8:	ef1ff06f          	j	80002fa8 <__printf+0x4d0>
    800030bc:	00700793          	li	a5,7
    800030c0:	00600c93          	li	s9,6
    800030c4:	e0dff06f          	j	80002ed0 <__printf+0x3f8>
    800030c8:	00700793          	li	a5,7
    800030cc:	00600c93          	li	s9,6
    800030d0:	c69ff06f          	j	80002d38 <__printf+0x260>
    800030d4:	00300793          	li	a5,3
    800030d8:	00200c93          	li	s9,2
    800030dc:	c5dff06f          	j	80002d38 <__printf+0x260>
    800030e0:	00300793          	li	a5,3
    800030e4:	00200c93          	li	s9,2
    800030e8:	de9ff06f          	j	80002ed0 <__printf+0x3f8>
    800030ec:	00400793          	li	a5,4
    800030f0:	00300c93          	li	s9,3
    800030f4:	dddff06f          	j	80002ed0 <__printf+0x3f8>
    800030f8:	00400793          	li	a5,4
    800030fc:	00300c93          	li	s9,3
    80003100:	c39ff06f          	j	80002d38 <__printf+0x260>
    80003104:	00500793          	li	a5,5
    80003108:	00400c93          	li	s9,4
    8000310c:	c2dff06f          	j	80002d38 <__printf+0x260>
    80003110:	00500793          	li	a5,5
    80003114:	00400c93          	li	s9,4
    80003118:	db9ff06f          	j	80002ed0 <__printf+0x3f8>
    8000311c:	00600793          	li	a5,6
    80003120:	00500c93          	li	s9,5
    80003124:	dadff06f          	j	80002ed0 <__printf+0x3f8>
    80003128:	00600793          	li	a5,6
    8000312c:	00500c93          	li	s9,5
    80003130:	c09ff06f          	j	80002d38 <__printf+0x260>
    80003134:	00800793          	li	a5,8
    80003138:	00700c93          	li	s9,7
    8000313c:	bfdff06f          	j	80002d38 <__printf+0x260>
    80003140:	00100793          	li	a5,1
    80003144:	d91ff06f          	j	80002ed4 <__printf+0x3fc>
    80003148:	00100793          	li	a5,1
    8000314c:	bf1ff06f          	j	80002d3c <__printf+0x264>
    80003150:	00900793          	li	a5,9
    80003154:	00800c93          	li	s9,8
    80003158:	be1ff06f          	j	80002d38 <__printf+0x260>
    8000315c:	00002517          	auipc	a0,0x2
    80003160:	00450513          	addi	a0,a0,4 # 80005160 <CONSOLE_STATUS+0x150>
    80003164:	00000097          	auipc	ra,0x0
    80003168:	918080e7          	jalr	-1768(ra) # 80002a7c <panic>

000000008000316c <printfinit>:
    8000316c:	fe010113          	addi	sp,sp,-32
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	00913423          	sd	s1,8(sp)
    80003178:	00113c23          	sd	ra,24(sp)
    8000317c:	02010413          	addi	s0,sp,32
    80003180:	00004497          	auipc	s1,0x4
    80003184:	84048493          	addi	s1,s1,-1984 # 800069c0 <pr>
    80003188:	00048513          	mv	a0,s1
    8000318c:	00002597          	auipc	a1,0x2
    80003190:	fe458593          	addi	a1,a1,-28 # 80005170 <CONSOLE_STATUS+0x160>
    80003194:	00000097          	auipc	ra,0x0
    80003198:	5f4080e7          	jalr	1524(ra) # 80003788 <initlock>
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	0004ac23          	sw	zero,24(s1)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret

00000000800031b4 <uartinit>:
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813423          	sd	s0,8(sp)
    800031bc:	01010413          	addi	s0,sp,16
    800031c0:	100007b7          	lui	a5,0x10000
    800031c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800031c8:	f8000713          	li	a4,-128
    800031cc:	00e781a3          	sb	a4,3(a5)
    800031d0:	00300713          	li	a4,3
    800031d4:	00e78023          	sb	a4,0(a5)
    800031d8:	000780a3          	sb	zero,1(a5)
    800031dc:	00e781a3          	sb	a4,3(a5)
    800031e0:	00700693          	li	a3,7
    800031e4:	00d78123          	sb	a3,2(a5)
    800031e8:	00e780a3          	sb	a4,1(a5)
    800031ec:	00813403          	ld	s0,8(sp)
    800031f0:	01010113          	addi	sp,sp,16
    800031f4:	00008067          	ret

00000000800031f8 <uartputc>:
    800031f8:	00002797          	auipc	a5,0x2
    800031fc:	5607a783          	lw	a5,1376(a5) # 80005758 <panicked>
    80003200:	00078463          	beqz	a5,80003208 <uartputc+0x10>
    80003204:	0000006f          	j	80003204 <uartputc+0xc>
    80003208:	fd010113          	addi	sp,sp,-48
    8000320c:	02813023          	sd	s0,32(sp)
    80003210:	00913c23          	sd	s1,24(sp)
    80003214:	01213823          	sd	s2,16(sp)
    80003218:	01313423          	sd	s3,8(sp)
    8000321c:	02113423          	sd	ra,40(sp)
    80003220:	03010413          	addi	s0,sp,48
    80003224:	00002917          	auipc	s2,0x2
    80003228:	53c90913          	addi	s2,s2,1340 # 80005760 <uart_tx_r>
    8000322c:	00093783          	ld	a5,0(s2)
    80003230:	00002497          	auipc	s1,0x2
    80003234:	53848493          	addi	s1,s1,1336 # 80005768 <uart_tx_w>
    80003238:	0004b703          	ld	a4,0(s1)
    8000323c:	02078693          	addi	a3,a5,32
    80003240:	00050993          	mv	s3,a0
    80003244:	02e69c63          	bne	a3,a4,8000327c <uartputc+0x84>
    80003248:	00001097          	auipc	ra,0x1
    8000324c:	834080e7          	jalr	-1996(ra) # 80003a7c <push_on>
    80003250:	00093783          	ld	a5,0(s2)
    80003254:	0004b703          	ld	a4,0(s1)
    80003258:	02078793          	addi	a5,a5,32
    8000325c:	00e79463          	bne	a5,a4,80003264 <uartputc+0x6c>
    80003260:	0000006f          	j	80003260 <uartputc+0x68>
    80003264:	00001097          	auipc	ra,0x1
    80003268:	88c080e7          	jalr	-1908(ra) # 80003af0 <pop_on>
    8000326c:	00093783          	ld	a5,0(s2)
    80003270:	0004b703          	ld	a4,0(s1)
    80003274:	02078693          	addi	a3,a5,32
    80003278:	fce688e3          	beq	a3,a4,80003248 <uartputc+0x50>
    8000327c:	01f77693          	andi	a3,a4,31
    80003280:	00003597          	auipc	a1,0x3
    80003284:	76058593          	addi	a1,a1,1888 # 800069e0 <uart_tx_buf>
    80003288:	00d586b3          	add	a3,a1,a3
    8000328c:	00170713          	addi	a4,a4,1
    80003290:	01368023          	sb	s3,0(a3)
    80003294:	00e4b023          	sd	a4,0(s1)
    80003298:	10000637          	lui	a2,0x10000
    8000329c:	02f71063          	bne	a4,a5,800032bc <uartputc+0xc4>
    800032a0:	0340006f          	j	800032d4 <uartputc+0xdc>
    800032a4:	00074703          	lbu	a4,0(a4)
    800032a8:	00f93023          	sd	a5,0(s2)
    800032ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800032b0:	00093783          	ld	a5,0(s2)
    800032b4:	0004b703          	ld	a4,0(s1)
    800032b8:	00f70e63          	beq	a4,a5,800032d4 <uartputc+0xdc>
    800032bc:	00564683          	lbu	a3,5(a2)
    800032c0:	01f7f713          	andi	a4,a5,31
    800032c4:	00e58733          	add	a4,a1,a4
    800032c8:	0206f693          	andi	a3,a3,32
    800032cc:	00178793          	addi	a5,a5,1
    800032d0:	fc069ae3          	bnez	a3,800032a4 <uartputc+0xac>
    800032d4:	02813083          	ld	ra,40(sp)
    800032d8:	02013403          	ld	s0,32(sp)
    800032dc:	01813483          	ld	s1,24(sp)
    800032e0:	01013903          	ld	s2,16(sp)
    800032e4:	00813983          	ld	s3,8(sp)
    800032e8:	03010113          	addi	sp,sp,48
    800032ec:	00008067          	ret

00000000800032f0 <uartputc_sync>:
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00813423          	sd	s0,8(sp)
    800032f8:	01010413          	addi	s0,sp,16
    800032fc:	00002717          	auipc	a4,0x2
    80003300:	45c72703          	lw	a4,1116(a4) # 80005758 <panicked>
    80003304:	02071663          	bnez	a4,80003330 <uartputc_sync+0x40>
    80003308:	00050793          	mv	a5,a0
    8000330c:	100006b7          	lui	a3,0x10000
    80003310:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003314:	02077713          	andi	a4,a4,32
    80003318:	fe070ce3          	beqz	a4,80003310 <uartputc_sync+0x20>
    8000331c:	0ff7f793          	andi	a5,a5,255
    80003320:	00f68023          	sb	a5,0(a3)
    80003324:	00813403          	ld	s0,8(sp)
    80003328:	01010113          	addi	sp,sp,16
    8000332c:	00008067          	ret
    80003330:	0000006f          	j	80003330 <uartputc_sync+0x40>

0000000080003334 <uartstart>:
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00813423          	sd	s0,8(sp)
    8000333c:	01010413          	addi	s0,sp,16
    80003340:	00002617          	auipc	a2,0x2
    80003344:	42060613          	addi	a2,a2,1056 # 80005760 <uart_tx_r>
    80003348:	00002517          	auipc	a0,0x2
    8000334c:	42050513          	addi	a0,a0,1056 # 80005768 <uart_tx_w>
    80003350:	00063783          	ld	a5,0(a2)
    80003354:	00053703          	ld	a4,0(a0)
    80003358:	04f70263          	beq	a4,a5,8000339c <uartstart+0x68>
    8000335c:	100005b7          	lui	a1,0x10000
    80003360:	00003817          	auipc	a6,0x3
    80003364:	68080813          	addi	a6,a6,1664 # 800069e0 <uart_tx_buf>
    80003368:	01c0006f          	j	80003384 <uartstart+0x50>
    8000336c:	0006c703          	lbu	a4,0(a3)
    80003370:	00f63023          	sd	a5,0(a2)
    80003374:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003378:	00063783          	ld	a5,0(a2)
    8000337c:	00053703          	ld	a4,0(a0)
    80003380:	00f70e63          	beq	a4,a5,8000339c <uartstart+0x68>
    80003384:	01f7f713          	andi	a4,a5,31
    80003388:	00e806b3          	add	a3,a6,a4
    8000338c:	0055c703          	lbu	a4,5(a1)
    80003390:	00178793          	addi	a5,a5,1
    80003394:	02077713          	andi	a4,a4,32
    80003398:	fc071ae3          	bnez	a4,8000336c <uartstart+0x38>
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret

00000000800033a8 <uartgetc>:
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00813423          	sd	s0,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	10000737          	lui	a4,0x10000
    800033b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800033bc:	0017f793          	andi	a5,a5,1
    800033c0:	00078c63          	beqz	a5,800033d8 <uartgetc+0x30>
    800033c4:	00074503          	lbu	a0,0(a4)
    800033c8:	0ff57513          	andi	a0,a0,255
    800033cc:	00813403          	ld	s0,8(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret
    800033d8:	fff00513          	li	a0,-1
    800033dc:	ff1ff06f          	j	800033cc <uartgetc+0x24>

00000000800033e0 <uartintr>:
    800033e0:	100007b7          	lui	a5,0x10000
    800033e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800033e8:	0017f793          	andi	a5,a5,1
    800033ec:	0a078463          	beqz	a5,80003494 <uartintr+0xb4>
    800033f0:	fe010113          	addi	sp,sp,-32
    800033f4:	00813823          	sd	s0,16(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	02010413          	addi	s0,sp,32
    80003404:	100004b7          	lui	s1,0x10000
    80003408:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000340c:	0ff57513          	andi	a0,a0,255
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	534080e7          	jalr	1332(ra) # 80002944 <consoleintr>
    80003418:	0054c783          	lbu	a5,5(s1)
    8000341c:	0017f793          	andi	a5,a5,1
    80003420:	fe0794e3          	bnez	a5,80003408 <uartintr+0x28>
    80003424:	00002617          	auipc	a2,0x2
    80003428:	33c60613          	addi	a2,a2,828 # 80005760 <uart_tx_r>
    8000342c:	00002517          	auipc	a0,0x2
    80003430:	33c50513          	addi	a0,a0,828 # 80005768 <uart_tx_w>
    80003434:	00063783          	ld	a5,0(a2)
    80003438:	00053703          	ld	a4,0(a0)
    8000343c:	04f70263          	beq	a4,a5,80003480 <uartintr+0xa0>
    80003440:	100005b7          	lui	a1,0x10000
    80003444:	00003817          	auipc	a6,0x3
    80003448:	59c80813          	addi	a6,a6,1436 # 800069e0 <uart_tx_buf>
    8000344c:	01c0006f          	j	80003468 <uartintr+0x88>
    80003450:	0006c703          	lbu	a4,0(a3)
    80003454:	00f63023          	sd	a5,0(a2)
    80003458:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000345c:	00063783          	ld	a5,0(a2)
    80003460:	00053703          	ld	a4,0(a0)
    80003464:	00f70e63          	beq	a4,a5,80003480 <uartintr+0xa0>
    80003468:	01f7f713          	andi	a4,a5,31
    8000346c:	00e806b3          	add	a3,a6,a4
    80003470:	0055c703          	lbu	a4,5(a1)
    80003474:	00178793          	addi	a5,a5,1
    80003478:	02077713          	andi	a4,a4,32
    8000347c:	fc071ae3          	bnez	a4,80003450 <uartintr+0x70>
    80003480:	01813083          	ld	ra,24(sp)
    80003484:	01013403          	ld	s0,16(sp)
    80003488:	00813483          	ld	s1,8(sp)
    8000348c:	02010113          	addi	sp,sp,32
    80003490:	00008067          	ret
    80003494:	00002617          	auipc	a2,0x2
    80003498:	2cc60613          	addi	a2,a2,716 # 80005760 <uart_tx_r>
    8000349c:	00002517          	auipc	a0,0x2
    800034a0:	2cc50513          	addi	a0,a0,716 # 80005768 <uart_tx_w>
    800034a4:	00063783          	ld	a5,0(a2)
    800034a8:	00053703          	ld	a4,0(a0)
    800034ac:	04f70263          	beq	a4,a5,800034f0 <uartintr+0x110>
    800034b0:	100005b7          	lui	a1,0x10000
    800034b4:	00003817          	auipc	a6,0x3
    800034b8:	52c80813          	addi	a6,a6,1324 # 800069e0 <uart_tx_buf>
    800034bc:	01c0006f          	j	800034d8 <uartintr+0xf8>
    800034c0:	0006c703          	lbu	a4,0(a3)
    800034c4:	00f63023          	sd	a5,0(a2)
    800034c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034cc:	00063783          	ld	a5,0(a2)
    800034d0:	00053703          	ld	a4,0(a0)
    800034d4:	02f70063          	beq	a4,a5,800034f4 <uartintr+0x114>
    800034d8:	01f7f713          	andi	a4,a5,31
    800034dc:	00e806b3          	add	a3,a6,a4
    800034e0:	0055c703          	lbu	a4,5(a1)
    800034e4:	00178793          	addi	a5,a5,1
    800034e8:	02077713          	andi	a4,a4,32
    800034ec:	fc071ae3          	bnez	a4,800034c0 <uartintr+0xe0>
    800034f0:	00008067          	ret
    800034f4:	00008067          	ret

00000000800034f8 <kinit>:
    800034f8:	fc010113          	addi	sp,sp,-64
    800034fc:	02913423          	sd	s1,40(sp)
    80003500:	fffff7b7          	lui	a5,0xfffff
    80003504:	00004497          	auipc	s1,0x4
    80003508:	4fb48493          	addi	s1,s1,1275 # 800079ff <end+0xfff>
    8000350c:	02813823          	sd	s0,48(sp)
    80003510:	01313c23          	sd	s3,24(sp)
    80003514:	00f4f4b3          	and	s1,s1,a5
    80003518:	02113c23          	sd	ra,56(sp)
    8000351c:	03213023          	sd	s2,32(sp)
    80003520:	01413823          	sd	s4,16(sp)
    80003524:	01513423          	sd	s5,8(sp)
    80003528:	04010413          	addi	s0,sp,64
    8000352c:	000017b7          	lui	a5,0x1
    80003530:	01100993          	li	s3,17
    80003534:	00f487b3          	add	a5,s1,a5
    80003538:	01b99993          	slli	s3,s3,0x1b
    8000353c:	06f9e063          	bltu	s3,a5,8000359c <kinit+0xa4>
    80003540:	00003a97          	auipc	s5,0x3
    80003544:	4c0a8a93          	addi	s5,s5,1216 # 80006a00 <end>
    80003548:	0754ec63          	bltu	s1,s5,800035c0 <kinit+0xc8>
    8000354c:	0734fa63          	bgeu	s1,s3,800035c0 <kinit+0xc8>
    80003550:	00088a37          	lui	s4,0x88
    80003554:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003558:	00002917          	auipc	s2,0x2
    8000355c:	21890913          	addi	s2,s2,536 # 80005770 <kmem>
    80003560:	00ca1a13          	slli	s4,s4,0xc
    80003564:	0140006f          	j	80003578 <kinit+0x80>
    80003568:	000017b7          	lui	a5,0x1
    8000356c:	00f484b3          	add	s1,s1,a5
    80003570:	0554e863          	bltu	s1,s5,800035c0 <kinit+0xc8>
    80003574:	0534f663          	bgeu	s1,s3,800035c0 <kinit+0xc8>
    80003578:	00001637          	lui	a2,0x1
    8000357c:	00100593          	li	a1,1
    80003580:	00048513          	mv	a0,s1
    80003584:	00000097          	auipc	ra,0x0
    80003588:	5e4080e7          	jalr	1508(ra) # 80003b68 <__memset>
    8000358c:	00093783          	ld	a5,0(s2)
    80003590:	00f4b023          	sd	a5,0(s1)
    80003594:	00993023          	sd	s1,0(s2)
    80003598:	fd4498e3          	bne	s1,s4,80003568 <kinit+0x70>
    8000359c:	03813083          	ld	ra,56(sp)
    800035a0:	03013403          	ld	s0,48(sp)
    800035a4:	02813483          	ld	s1,40(sp)
    800035a8:	02013903          	ld	s2,32(sp)
    800035ac:	01813983          	ld	s3,24(sp)
    800035b0:	01013a03          	ld	s4,16(sp)
    800035b4:	00813a83          	ld	s5,8(sp)
    800035b8:	04010113          	addi	sp,sp,64
    800035bc:	00008067          	ret
    800035c0:	00002517          	auipc	a0,0x2
    800035c4:	bd050513          	addi	a0,a0,-1072 # 80005190 <digits+0x18>
    800035c8:	fffff097          	auipc	ra,0xfffff
    800035cc:	4b4080e7          	jalr	1204(ra) # 80002a7c <panic>

00000000800035d0 <freerange>:
    800035d0:	fc010113          	addi	sp,sp,-64
    800035d4:	000017b7          	lui	a5,0x1
    800035d8:	02913423          	sd	s1,40(sp)
    800035dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800035e0:	009504b3          	add	s1,a0,s1
    800035e4:	fffff537          	lui	a0,0xfffff
    800035e8:	02813823          	sd	s0,48(sp)
    800035ec:	02113c23          	sd	ra,56(sp)
    800035f0:	03213023          	sd	s2,32(sp)
    800035f4:	01313c23          	sd	s3,24(sp)
    800035f8:	01413823          	sd	s4,16(sp)
    800035fc:	01513423          	sd	s5,8(sp)
    80003600:	01613023          	sd	s6,0(sp)
    80003604:	04010413          	addi	s0,sp,64
    80003608:	00a4f4b3          	and	s1,s1,a0
    8000360c:	00f487b3          	add	a5,s1,a5
    80003610:	06f5e463          	bltu	a1,a5,80003678 <freerange+0xa8>
    80003614:	00003a97          	auipc	s5,0x3
    80003618:	3eca8a93          	addi	s5,s5,1004 # 80006a00 <end>
    8000361c:	0954e263          	bltu	s1,s5,800036a0 <freerange+0xd0>
    80003620:	01100993          	li	s3,17
    80003624:	01b99993          	slli	s3,s3,0x1b
    80003628:	0734fc63          	bgeu	s1,s3,800036a0 <freerange+0xd0>
    8000362c:	00058a13          	mv	s4,a1
    80003630:	00002917          	auipc	s2,0x2
    80003634:	14090913          	addi	s2,s2,320 # 80005770 <kmem>
    80003638:	00002b37          	lui	s6,0x2
    8000363c:	0140006f          	j	80003650 <freerange+0x80>
    80003640:	000017b7          	lui	a5,0x1
    80003644:	00f484b3          	add	s1,s1,a5
    80003648:	0554ec63          	bltu	s1,s5,800036a0 <freerange+0xd0>
    8000364c:	0534fa63          	bgeu	s1,s3,800036a0 <freerange+0xd0>
    80003650:	00001637          	lui	a2,0x1
    80003654:	00100593          	li	a1,1
    80003658:	00048513          	mv	a0,s1
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	50c080e7          	jalr	1292(ra) # 80003b68 <__memset>
    80003664:	00093703          	ld	a4,0(s2)
    80003668:	016487b3          	add	a5,s1,s6
    8000366c:	00e4b023          	sd	a4,0(s1)
    80003670:	00993023          	sd	s1,0(s2)
    80003674:	fcfa76e3          	bgeu	s4,a5,80003640 <freerange+0x70>
    80003678:	03813083          	ld	ra,56(sp)
    8000367c:	03013403          	ld	s0,48(sp)
    80003680:	02813483          	ld	s1,40(sp)
    80003684:	02013903          	ld	s2,32(sp)
    80003688:	01813983          	ld	s3,24(sp)
    8000368c:	01013a03          	ld	s4,16(sp)
    80003690:	00813a83          	ld	s5,8(sp)
    80003694:	00013b03          	ld	s6,0(sp)
    80003698:	04010113          	addi	sp,sp,64
    8000369c:	00008067          	ret
    800036a0:	00002517          	auipc	a0,0x2
    800036a4:	af050513          	addi	a0,a0,-1296 # 80005190 <digits+0x18>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	3d4080e7          	jalr	980(ra) # 80002a7c <panic>

00000000800036b0 <kfree>:
    800036b0:	fe010113          	addi	sp,sp,-32
    800036b4:	00813823          	sd	s0,16(sp)
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	00913423          	sd	s1,8(sp)
    800036c0:	02010413          	addi	s0,sp,32
    800036c4:	03451793          	slli	a5,a0,0x34
    800036c8:	04079c63          	bnez	a5,80003720 <kfree+0x70>
    800036cc:	00003797          	auipc	a5,0x3
    800036d0:	33478793          	addi	a5,a5,820 # 80006a00 <end>
    800036d4:	00050493          	mv	s1,a0
    800036d8:	04f56463          	bltu	a0,a5,80003720 <kfree+0x70>
    800036dc:	01100793          	li	a5,17
    800036e0:	01b79793          	slli	a5,a5,0x1b
    800036e4:	02f57e63          	bgeu	a0,a5,80003720 <kfree+0x70>
    800036e8:	00001637          	lui	a2,0x1
    800036ec:	00100593          	li	a1,1
    800036f0:	00000097          	auipc	ra,0x0
    800036f4:	478080e7          	jalr	1144(ra) # 80003b68 <__memset>
    800036f8:	00002797          	auipc	a5,0x2
    800036fc:	07878793          	addi	a5,a5,120 # 80005770 <kmem>
    80003700:	0007b703          	ld	a4,0(a5)
    80003704:	01813083          	ld	ra,24(sp)
    80003708:	01013403          	ld	s0,16(sp)
    8000370c:	00e4b023          	sd	a4,0(s1)
    80003710:	0097b023          	sd	s1,0(a5)
    80003714:	00813483          	ld	s1,8(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret
    80003720:	00002517          	auipc	a0,0x2
    80003724:	a7050513          	addi	a0,a0,-1424 # 80005190 <digits+0x18>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	354080e7          	jalr	852(ra) # 80002a7c <panic>

0000000080003730 <kalloc>:
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00813823          	sd	s0,16(sp)
    80003738:	00913423          	sd	s1,8(sp)
    8000373c:	00113c23          	sd	ra,24(sp)
    80003740:	02010413          	addi	s0,sp,32
    80003744:	00002797          	auipc	a5,0x2
    80003748:	02c78793          	addi	a5,a5,44 # 80005770 <kmem>
    8000374c:	0007b483          	ld	s1,0(a5)
    80003750:	02048063          	beqz	s1,80003770 <kalloc+0x40>
    80003754:	0004b703          	ld	a4,0(s1)
    80003758:	00001637          	lui	a2,0x1
    8000375c:	00500593          	li	a1,5
    80003760:	00048513          	mv	a0,s1
    80003764:	00e7b023          	sd	a4,0(a5)
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	400080e7          	jalr	1024(ra) # 80003b68 <__memset>
    80003770:	01813083          	ld	ra,24(sp)
    80003774:	01013403          	ld	s0,16(sp)
    80003778:	00048513          	mv	a0,s1
    8000377c:	00813483          	ld	s1,8(sp)
    80003780:	02010113          	addi	sp,sp,32
    80003784:	00008067          	ret

0000000080003788 <initlock>:
    80003788:	ff010113          	addi	sp,sp,-16
    8000378c:	00813423          	sd	s0,8(sp)
    80003790:	01010413          	addi	s0,sp,16
    80003794:	00813403          	ld	s0,8(sp)
    80003798:	00b53423          	sd	a1,8(a0)
    8000379c:	00052023          	sw	zero,0(a0)
    800037a0:	00053823          	sd	zero,16(a0)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <acquire>:
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	01213023          	sd	s2,0(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	00050493          	mv	s1,a0
    800037c8:	10002973          	csrr	s2,sstatus
    800037cc:	100027f3          	csrr	a5,sstatus
    800037d0:	ffd7f793          	andi	a5,a5,-3
    800037d4:	10079073          	csrw	sstatus,a5
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	8e4080e7          	jalr	-1820(ra) # 800020bc <mycpu>
    800037e0:	07852783          	lw	a5,120(a0)
    800037e4:	06078e63          	beqz	a5,80003860 <acquire+0xb4>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	8d4080e7          	jalr	-1836(ra) # 800020bc <mycpu>
    800037f0:	07852783          	lw	a5,120(a0)
    800037f4:	0004a703          	lw	a4,0(s1)
    800037f8:	0017879b          	addiw	a5,a5,1
    800037fc:	06f52c23          	sw	a5,120(a0)
    80003800:	04071063          	bnez	a4,80003840 <acquire+0x94>
    80003804:	00100713          	li	a4,1
    80003808:	00070793          	mv	a5,a4
    8000380c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003810:	0007879b          	sext.w	a5,a5
    80003814:	fe079ae3          	bnez	a5,80003808 <acquire+0x5c>
    80003818:	0ff0000f          	fence
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	8a0080e7          	jalr	-1888(ra) # 800020bc <mycpu>
    80003824:	01813083          	ld	ra,24(sp)
    80003828:	01013403          	ld	s0,16(sp)
    8000382c:	00a4b823          	sd	a0,16(s1)
    80003830:	00013903          	ld	s2,0(sp)
    80003834:	00813483          	ld	s1,8(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret
    80003840:	0104b903          	ld	s2,16(s1)
    80003844:	fffff097          	auipc	ra,0xfffff
    80003848:	878080e7          	jalr	-1928(ra) # 800020bc <mycpu>
    8000384c:	faa91ce3          	bne	s2,a0,80003804 <acquire+0x58>
    80003850:	00002517          	auipc	a0,0x2
    80003854:	94850513          	addi	a0,a0,-1720 # 80005198 <digits+0x20>
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	224080e7          	jalr	548(ra) # 80002a7c <panic>
    80003860:	00195913          	srli	s2,s2,0x1
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	858080e7          	jalr	-1960(ra) # 800020bc <mycpu>
    8000386c:	00197913          	andi	s2,s2,1
    80003870:	07252e23          	sw	s2,124(a0)
    80003874:	f75ff06f          	j	800037e8 <acquire+0x3c>

0000000080003878 <release>:
    80003878:	fe010113          	addi	sp,sp,-32
    8000387c:	00813823          	sd	s0,16(sp)
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00913423          	sd	s1,8(sp)
    80003888:	01213023          	sd	s2,0(sp)
    8000388c:	02010413          	addi	s0,sp,32
    80003890:	00052783          	lw	a5,0(a0)
    80003894:	00079a63          	bnez	a5,800038a8 <release+0x30>
    80003898:	00002517          	auipc	a0,0x2
    8000389c:	90850513          	addi	a0,a0,-1784 # 800051a0 <digits+0x28>
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	1dc080e7          	jalr	476(ra) # 80002a7c <panic>
    800038a8:	01053903          	ld	s2,16(a0)
    800038ac:	00050493          	mv	s1,a0
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	80c080e7          	jalr	-2036(ra) # 800020bc <mycpu>
    800038b8:	fea910e3          	bne	s2,a0,80003898 <release+0x20>
    800038bc:	0004b823          	sd	zero,16(s1)
    800038c0:	0ff0000f          	fence
    800038c4:	0f50000f          	fence	iorw,ow
    800038c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	7f0080e7          	jalr	2032(ra) # 800020bc <mycpu>
    800038d4:	100027f3          	csrr	a5,sstatus
    800038d8:	0027f793          	andi	a5,a5,2
    800038dc:	04079a63          	bnez	a5,80003930 <release+0xb8>
    800038e0:	07852783          	lw	a5,120(a0)
    800038e4:	02f05e63          	blez	a5,80003920 <release+0xa8>
    800038e8:	fff7871b          	addiw	a4,a5,-1
    800038ec:	06e52c23          	sw	a4,120(a0)
    800038f0:	00071c63          	bnez	a4,80003908 <release+0x90>
    800038f4:	07c52783          	lw	a5,124(a0)
    800038f8:	00078863          	beqz	a5,80003908 <release+0x90>
    800038fc:	100027f3          	csrr	a5,sstatus
    80003900:	0027e793          	ori	a5,a5,2
    80003904:	10079073          	csrw	sstatus,a5
    80003908:	01813083          	ld	ra,24(sp)
    8000390c:	01013403          	ld	s0,16(sp)
    80003910:	00813483          	ld	s1,8(sp)
    80003914:	00013903          	ld	s2,0(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret
    80003920:	00002517          	auipc	a0,0x2
    80003924:	8a050513          	addi	a0,a0,-1888 # 800051c0 <digits+0x48>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	154080e7          	jalr	340(ra) # 80002a7c <panic>
    80003930:	00002517          	auipc	a0,0x2
    80003934:	87850513          	addi	a0,a0,-1928 # 800051a8 <digits+0x30>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	144080e7          	jalr	324(ra) # 80002a7c <panic>

0000000080003940 <holding>:
    80003940:	00052783          	lw	a5,0(a0)
    80003944:	00079663          	bnez	a5,80003950 <holding+0x10>
    80003948:	00000513          	li	a0,0
    8000394c:	00008067          	ret
    80003950:	fe010113          	addi	sp,sp,-32
    80003954:	00813823          	sd	s0,16(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	00113c23          	sd	ra,24(sp)
    80003960:	02010413          	addi	s0,sp,32
    80003964:	01053483          	ld	s1,16(a0)
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	754080e7          	jalr	1876(ra) # 800020bc <mycpu>
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	40a48533          	sub	a0,s1,a0
    8000397c:	00153513          	seqz	a0,a0
    80003980:	00813483          	ld	s1,8(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret

000000008000398c <push_off>:
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00113c23          	sd	ra,24(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	02010413          	addi	s0,sp,32
    800039a0:	100024f3          	csrr	s1,sstatus
    800039a4:	100027f3          	csrr	a5,sstatus
    800039a8:	ffd7f793          	andi	a5,a5,-3
    800039ac:	10079073          	csrw	sstatus,a5
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	70c080e7          	jalr	1804(ra) # 800020bc <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	02078663          	beqz	a5,800039e8 <push_off+0x5c>
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	6fc080e7          	jalr	1788(ra) # 800020bc <mycpu>
    800039c8:	07852783          	lw	a5,120(a0)
    800039cc:	01813083          	ld	ra,24(sp)
    800039d0:	01013403          	ld	s0,16(sp)
    800039d4:	0017879b          	addiw	a5,a5,1
    800039d8:	06f52c23          	sw	a5,120(a0)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret
    800039e8:	0014d493          	srli	s1,s1,0x1
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	6d0080e7          	jalr	1744(ra) # 800020bc <mycpu>
    800039f4:	0014f493          	andi	s1,s1,1
    800039f8:	06952e23          	sw	s1,124(a0)
    800039fc:	fc5ff06f          	j	800039c0 <push_off+0x34>

0000000080003a00 <pop_off>:
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	00113423          	sd	ra,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	6ac080e7          	jalr	1708(ra) # 800020bc <mycpu>
    80003a18:	100027f3          	csrr	a5,sstatus
    80003a1c:	0027f793          	andi	a5,a5,2
    80003a20:	04079663          	bnez	a5,80003a6c <pop_off+0x6c>
    80003a24:	07852783          	lw	a5,120(a0)
    80003a28:	02f05a63          	blez	a5,80003a5c <pop_off+0x5c>
    80003a2c:	fff7871b          	addiw	a4,a5,-1
    80003a30:	06e52c23          	sw	a4,120(a0)
    80003a34:	00071c63          	bnez	a4,80003a4c <pop_off+0x4c>
    80003a38:	07c52783          	lw	a5,124(a0)
    80003a3c:	00078863          	beqz	a5,80003a4c <pop_off+0x4c>
    80003a40:	100027f3          	csrr	a5,sstatus
    80003a44:	0027e793          	ori	a5,a5,2
    80003a48:	10079073          	csrw	sstatus,a5
    80003a4c:	00813083          	ld	ra,8(sp)
    80003a50:	00013403          	ld	s0,0(sp)
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret
    80003a5c:	00001517          	auipc	a0,0x1
    80003a60:	76450513          	addi	a0,a0,1892 # 800051c0 <digits+0x48>
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	018080e7          	jalr	24(ra) # 80002a7c <panic>
    80003a6c:	00001517          	auipc	a0,0x1
    80003a70:	73c50513          	addi	a0,a0,1852 # 800051a8 <digits+0x30>
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	008080e7          	jalr	8(ra) # 80002a7c <panic>

0000000080003a7c <push_on>:
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00813823          	sd	s0,16(sp)
    80003a84:	00113c23          	sd	ra,24(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	100024f3          	csrr	s1,sstatus
    80003a94:	100027f3          	csrr	a5,sstatus
    80003a98:	0027e793          	ori	a5,a5,2
    80003a9c:	10079073          	csrw	sstatus,a5
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	61c080e7          	jalr	1564(ra) # 800020bc <mycpu>
    80003aa8:	07852783          	lw	a5,120(a0)
    80003aac:	02078663          	beqz	a5,80003ad8 <push_on+0x5c>
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	60c080e7          	jalr	1548(ra) # 800020bc <mycpu>
    80003ab8:	07852783          	lw	a5,120(a0)
    80003abc:	01813083          	ld	ra,24(sp)
    80003ac0:	01013403          	ld	s0,16(sp)
    80003ac4:	0017879b          	addiw	a5,a5,1
    80003ac8:	06f52c23          	sw	a5,120(a0)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret
    80003ad8:	0014d493          	srli	s1,s1,0x1
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	5e0080e7          	jalr	1504(ra) # 800020bc <mycpu>
    80003ae4:	0014f493          	andi	s1,s1,1
    80003ae8:	06952e23          	sw	s1,124(a0)
    80003aec:	fc5ff06f          	j	80003ab0 <push_on+0x34>

0000000080003af0 <pop_on>:
    80003af0:	ff010113          	addi	sp,sp,-16
    80003af4:	00813023          	sd	s0,0(sp)
    80003af8:	00113423          	sd	ra,8(sp)
    80003afc:	01010413          	addi	s0,sp,16
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	5bc080e7          	jalr	1468(ra) # 800020bc <mycpu>
    80003b08:	100027f3          	csrr	a5,sstatus
    80003b0c:	0027f793          	andi	a5,a5,2
    80003b10:	04078463          	beqz	a5,80003b58 <pop_on+0x68>
    80003b14:	07852783          	lw	a5,120(a0)
    80003b18:	02f05863          	blez	a5,80003b48 <pop_on+0x58>
    80003b1c:	fff7879b          	addiw	a5,a5,-1
    80003b20:	06f52c23          	sw	a5,120(a0)
    80003b24:	07853783          	ld	a5,120(a0)
    80003b28:	00079863          	bnez	a5,80003b38 <pop_on+0x48>
    80003b2c:	100027f3          	csrr	a5,sstatus
    80003b30:	ffd7f793          	andi	a5,a5,-3
    80003b34:	10079073          	csrw	sstatus,a5
    80003b38:	00813083          	ld	ra,8(sp)
    80003b3c:	00013403          	ld	s0,0(sp)
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	00008067          	ret
    80003b48:	00001517          	auipc	a0,0x1
    80003b4c:	6a050513          	addi	a0,a0,1696 # 800051e8 <digits+0x70>
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	f2c080e7          	jalr	-212(ra) # 80002a7c <panic>
    80003b58:	00001517          	auipc	a0,0x1
    80003b5c:	67050513          	addi	a0,a0,1648 # 800051c8 <digits+0x50>
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	f1c080e7          	jalr	-228(ra) # 80002a7c <panic>

0000000080003b68 <__memset>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    80003b74:	1a060e63          	beqz	a2,80003d30 <__memset+0x1c8>
    80003b78:	40a007b3          	neg	a5,a0
    80003b7c:	0077f793          	andi	a5,a5,7
    80003b80:	00778693          	addi	a3,a5,7
    80003b84:	00b00813          	li	a6,11
    80003b88:	0ff5f593          	andi	a1,a1,255
    80003b8c:	fff6071b          	addiw	a4,a2,-1
    80003b90:	1b06e663          	bltu	a3,a6,80003d3c <__memset+0x1d4>
    80003b94:	1cd76463          	bltu	a4,a3,80003d5c <__memset+0x1f4>
    80003b98:	1a078e63          	beqz	a5,80003d54 <__memset+0x1ec>
    80003b9c:	00b50023          	sb	a1,0(a0)
    80003ba0:	00100713          	li	a4,1
    80003ba4:	1ae78463          	beq	a5,a4,80003d4c <__memset+0x1e4>
    80003ba8:	00b500a3          	sb	a1,1(a0)
    80003bac:	00200713          	li	a4,2
    80003bb0:	1ae78a63          	beq	a5,a4,80003d64 <__memset+0x1fc>
    80003bb4:	00b50123          	sb	a1,2(a0)
    80003bb8:	00300713          	li	a4,3
    80003bbc:	18e78463          	beq	a5,a4,80003d44 <__memset+0x1dc>
    80003bc0:	00b501a3          	sb	a1,3(a0)
    80003bc4:	00400713          	li	a4,4
    80003bc8:	1ae78263          	beq	a5,a4,80003d6c <__memset+0x204>
    80003bcc:	00b50223          	sb	a1,4(a0)
    80003bd0:	00500713          	li	a4,5
    80003bd4:	1ae78063          	beq	a5,a4,80003d74 <__memset+0x20c>
    80003bd8:	00b502a3          	sb	a1,5(a0)
    80003bdc:	00700713          	li	a4,7
    80003be0:	18e79e63          	bne	a5,a4,80003d7c <__memset+0x214>
    80003be4:	00b50323          	sb	a1,6(a0)
    80003be8:	00700e93          	li	t4,7
    80003bec:	00859713          	slli	a4,a1,0x8
    80003bf0:	00e5e733          	or	a4,a1,a4
    80003bf4:	01059e13          	slli	t3,a1,0x10
    80003bf8:	01c76e33          	or	t3,a4,t3
    80003bfc:	01859313          	slli	t1,a1,0x18
    80003c00:	006e6333          	or	t1,t3,t1
    80003c04:	02059893          	slli	a7,a1,0x20
    80003c08:	40f60e3b          	subw	t3,a2,a5
    80003c0c:	011368b3          	or	a7,t1,a7
    80003c10:	02859813          	slli	a6,a1,0x28
    80003c14:	0108e833          	or	a6,a7,a6
    80003c18:	03059693          	slli	a3,a1,0x30
    80003c1c:	003e589b          	srliw	a7,t3,0x3
    80003c20:	00d866b3          	or	a3,a6,a3
    80003c24:	03859713          	slli	a4,a1,0x38
    80003c28:	00389813          	slli	a6,a7,0x3
    80003c2c:	00f507b3          	add	a5,a0,a5
    80003c30:	00e6e733          	or	a4,a3,a4
    80003c34:	000e089b          	sext.w	a7,t3
    80003c38:	00f806b3          	add	a3,a6,a5
    80003c3c:	00e7b023          	sd	a4,0(a5)
    80003c40:	00878793          	addi	a5,a5,8
    80003c44:	fed79ce3          	bne	a5,a3,80003c3c <__memset+0xd4>
    80003c48:	ff8e7793          	andi	a5,t3,-8
    80003c4c:	0007871b          	sext.w	a4,a5
    80003c50:	01d787bb          	addw	a5,a5,t4
    80003c54:	0ce88e63          	beq	a7,a4,80003d30 <__memset+0x1c8>
    80003c58:	00f50733          	add	a4,a0,a5
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0017871b          	addiw	a4,a5,1
    80003c64:	0cc77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	0027871b          	addiw	a4,a5,2
    80003c74:	0ac77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	0037871b          	addiw	a4,a5,3
    80003c84:	0ac77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	0047871b          	addiw	a4,a5,4
    80003c94:	08c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	0057871b          	addiw	a4,a5,5
    80003ca4:	08c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	0067871b          	addiw	a4,a5,6
    80003cb4:	06c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cb8:	00e50733          	add	a4,a0,a4
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	0077871b          	addiw	a4,a5,7
    80003cc4:	06c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	0087871b          	addiw	a4,a5,8
    80003cd4:	04c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	0097871b          	addiw	a4,a5,9
    80003ce4:	04c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	00a7871b          	addiw	a4,a5,10
    80003cf4:	02c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00b70023          	sb	a1,0(a4)
    80003d00:	00b7871b          	addiw	a4,a5,11
    80003d04:	02c77663          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003d08:	00e50733          	add	a4,a0,a4
    80003d0c:	00b70023          	sb	a1,0(a4)
    80003d10:	00c7871b          	addiw	a4,a5,12
    80003d14:	00c77e63          	bgeu	a4,a2,80003d30 <__memset+0x1c8>
    80003d18:	00e50733          	add	a4,a0,a4
    80003d1c:	00b70023          	sb	a1,0(a4)
    80003d20:	00d7879b          	addiw	a5,a5,13
    80003d24:	00c7f663          	bgeu	a5,a2,80003d30 <__memset+0x1c8>
    80003d28:	00f507b3          	add	a5,a0,a5
    80003d2c:	00b78023          	sb	a1,0(a5)
    80003d30:	00813403          	ld	s0,8(sp)
    80003d34:	01010113          	addi	sp,sp,16
    80003d38:	00008067          	ret
    80003d3c:	00b00693          	li	a3,11
    80003d40:	e55ff06f          	j	80003b94 <__memset+0x2c>
    80003d44:	00300e93          	li	t4,3
    80003d48:	ea5ff06f          	j	80003bec <__memset+0x84>
    80003d4c:	00100e93          	li	t4,1
    80003d50:	e9dff06f          	j	80003bec <__memset+0x84>
    80003d54:	00000e93          	li	t4,0
    80003d58:	e95ff06f          	j	80003bec <__memset+0x84>
    80003d5c:	00000793          	li	a5,0
    80003d60:	ef9ff06f          	j	80003c58 <__memset+0xf0>
    80003d64:	00200e93          	li	t4,2
    80003d68:	e85ff06f          	j	80003bec <__memset+0x84>
    80003d6c:	00400e93          	li	t4,4
    80003d70:	e7dff06f          	j	80003bec <__memset+0x84>
    80003d74:	00500e93          	li	t4,5
    80003d78:	e75ff06f          	j	80003bec <__memset+0x84>
    80003d7c:	00600e93          	li	t4,6
    80003d80:	e6dff06f          	j	80003bec <__memset+0x84>

0000000080003d84 <__memmove>:
    80003d84:	ff010113          	addi	sp,sp,-16
    80003d88:	00813423          	sd	s0,8(sp)
    80003d8c:	01010413          	addi	s0,sp,16
    80003d90:	0e060863          	beqz	a2,80003e80 <__memmove+0xfc>
    80003d94:	fff6069b          	addiw	a3,a2,-1
    80003d98:	0006881b          	sext.w	a6,a3
    80003d9c:	0ea5e863          	bltu	a1,a0,80003e8c <__memmove+0x108>
    80003da0:	00758713          	addi	a4,a1,7
    80003da4:	00a5e7b3          	or	a5,a1,a0
    80003da8:	40a70733          	sub	a4,a4,a0
    80003dac:	0077f793          	andi	a5,a5,7
    80003db0:	00f73713          	sltiu	a4,a4,15
    80003db4:	00174713          	xori	a4,a4,1
    80003db8:	0017b793          	seqz	a5,a5
    80003dbc:	00e7f7b3          	and	a5,a5,a4
    80003dc0:	10078863          	beqz	a5,80003ed0 <__memmove+0x14c>
    80003dc4:	00900793          	li	a5,9
    80003dc8:	1107f463          	bgeu	a5,a6,80003ed0 <__memmove+0x14c>
    80003dcc:	0036581b          	srliw	a6,a2,0x3
    80003dd0:	fff8081b          	addiw	a6,a6,-1
    80003dd4:	02081813          	slli	a6,a6,0x20
    80003dd8:	01d85893          	srli	a7,a6,0x1d
    80003ddc:	00858813          	addi	a6,a1,8
    80003de0:	00058793          	mv	a5,a1
    80003de4:	00050713          	mv	a4,a0
    80003de8:	01088833          	add	a6,a7,a6
    80003dec:	0007b883          	ld	a7,0(a5)
    80003df0:	00878793          	addi	a5,a5,8
    80003df4:	00870713          	addi	a4,a4,8
    80003df8:	ff173c23          	sd	a7,-8(a4)
    80003dfc:	ff0798e3          	bne	a5,a6,80003dec <__memmove+0x68>
    80003e00:	ff867713          	andi	a4,a2,-8
    80003e04:	02071793          	slli	a5,a4,0x20
    80003e08:	0207d793          	srli	a5,a5,0x20
    80003e0c:	00f585b3          	add	a1,a1,a5
    80003e10:	40e686bb          	subw	a3,a3,a4
    80003e14:	00f507b3          	add	a5,a0,a5
    80003e18:	06e60463          	beq	a2,a4,80003e80 <__memmove+0xfc>
    80003e1c:	0005c703          	lbu	a4,0(a1)
    80003e20:	00e78023          	sb	a4,0(a5)
    80003e24:	04068e63          	beqz	a3,80003e80 <__memmove+0xfc>
    80003e28:	0015c603          	lbu	a2,1(a1)
    80003e2c:	00100713          	li	a4,1
    80003e30:	00c780a3          	sb	a2,1(a5)
    80003e34:	04e68663          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e38:	0025c603          	lbu	a2,2(a1)
    80003e3c:	00200713          	li	a4,2
    80003e40:	00c78123          	sb	a2,2(a5)
    80003e44:	02e68e63          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e48:	0035c603          	lbu	a2,3(a1)
    80003e4c:	00300713          	li	a4,3
    80003e50:	00c781a3          	sb	a2,3(a5)
    80003e54:	02e68663          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e58:	0045c603          	lbu	a2,4(a1)
    80003e5c:	00400713          	li	a4,4
    80003e60:	00c78223          	sb	a2,4(a5)
    80003e64:	00e68e63          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e68:	0055c603          	lbu	a2,5(a1)
    80003e6c:	00500713          	li	a4,5
    80003e70:	00c782a3          	sb	a2,5(a5)
    80003e74:	00e68663          	beq	a3,a4,80003e80 <__memmove+0xfc>
    80003e78:	0065c703          	lbu	a4,6(a1)
    80003e7c:	00e78323          	sb	a4,6(a5)
    80003e80:	00813403          	ld	s0,8(sp)
    80003e84:	01010113          	addi	sp,sp,16
    80003e88:	00008067          	ret
    80003e8c:	02061713          	slli	a4,a2,0x20
    80003e90:	02075713          	srli	a4,a4,0x20
    80003e94:	00e587b3          	add	a5,a1,a4
    80003e98:	f0f574e3          	bgeu	a0,a5,80003da0 <__memmove+0x1c>
    80003e9c:	02069613          	slli	a2,a3,0x20
    80003ea0:	02065613          	srli	a2,a2,0x20
    80003ea4:	fff64613          	not	a2,a2
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00c78633          	add	a2,a5,a2
    80003eb0:	fff7c683          	lbu	a3,-1(a5)
    80003eb4:	fff78793          	addi	a5,a5,-1
    80003eb8:	fff70713          	addi	a4,a4,-1
    80003ebc:	00d70023          	sb	a3,0(a4)
    80003ec0:	fec798e3          	bne	a5,a2,80003eb0 <__memmove+0x12c>
    80003ec4:	00813403          	ld	s0,8(sp)
    80003ec8:	01010113          	addi	sp,sp,16
    80003ecc:	00008067          	ret
    80003ed0:	02069713          	slli	a4,a3,0x20
    80003ed4:	02075713          	srli	a4,a4,0x20
    80003ed8:	00170713          	addi	a4,a4,1
    80003edc:	00e50733          	add	a4,a0,a4
    80003ee0:	00050793          	mv	a5,a0
    80003ee4:	0005c683          	lbu	a3,0(a1)
    80003ee8:	00178793          	addi	a5,a5,1
    80003eec:	00158593          	addi	a1,a1,1
    80003ef0:	fed78fa3          	sb	a3,-1(a5)
    80003ef4:	fee798e3          	bne	a5,a4,80003ee4 <__memmove+0x160>
    80003ef8:	f89ff06f          	j	80003e80 <__memmove+0xfc>

0000000080003efc <__putc>:
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	02010413          	addi	s0,sp,32
    80003f0c:	00050793          	mv	a5,a0
    80003f10:	fef40593          	addi	a1,s0,-17
    80003f14:	00100613          	li	a2,1
    80003f18:	00000513          	li	a0,0
    80003f1c:	fef407a3          	sb	a5,-17(s0)
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	b3c080e7          	jalr	-1220(ra) # 80002a5c <console_write>
    80003f28:	01813083          	ld	ra,24(sp)
    80003f2c:	01013403          	ld	s0,16(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret

0000000080003f38 <__getc>:
    80003f38:	fe010113          	addi	sp,sp,-32
    80003f3c:	00813823          	sd	s0,16(sp)
    80003f40:	00113c23          	sd	ra,24(sp)
    80003f44:	02010413          	addi	s0,sp,32
    80003f48:	fe840593          	addi	a1,s0,-24
    80003f4c:	00100613          	li	a2,1
    80003f50:	00000513          	li	a0,0
    80003f54:	fffff097          	auipc	ra,0xfffff
    80003f58:	ae8080e7          	jalr	-1304(ra) # 80002a3c <console_read>
    80003f5c:	fe844503          	lbu	a0,-24(s0)
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret

0000000080003f70 <console_handler>:
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00813823          	sd	s0,16(sp)
    80003f78:	00113c23          	sd	ra,24(sp)
    80003f7c:	00913423          	sd	s1,8(sp)
    80003f80:	02010413          	addi	s0,sp,32
    80003f84:	14202773          	csrr	a4,scause
    80003f88:	100027f3          	csrr	a5,sstatus
    80003f8c:	0027f793          	andi	a5,a5,2
    80003f90:	06079e63          	bnez	a5,8000400c <console_handler+0x9c>
    80003f94:	00074c63          	bltz	a4,80003fac <console_handler+0x3c>
    80003f98:	01813083          	ld	ra,24(sp)
    80003f9c:	01013403          	ld	s0,16(sp)
    80003fa0:	00813483          	ld	s1,8(sp)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00008067          	ret
    80003fac:	0ff77713          	andi	a4,a4,255
    80003fb0:	00900793          	li	a5,9
    80003fb4:	fef712e3          	bne	a4,a5,80003f98 <console_handler+0x28>
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	6dc080e7          	jalr	1756(ra) # 80002694 <plic_claim>
    80003fc0:	00a00793          	li	a5,10
    80003fc4:	00050493          	mv	s1,a0
    80003fc8:	02f50c63          	beq	a0,a5,80004000 <console_handler+0x90>
    80003fcc:	fc0506e3          	beqz	a0,80003f98 <console_handler+0x28>
    80003fd0:	00050593          	mv	a1,a0
    80003fd4:	00001517          	auipc	a0,0x1
    80003fd8:	11c50513          	addi	a0,a0,284 # 800050f0 <CONSOLE_STATUS+0xe0>
    80003fdc:	fffff097          	auipc	ra,0xfffff
    80003fe0:	afc080e7          	jalr	-1284(ra) # 80002ad8 <__printf>
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	01813083          	ld	ra,24(sp)
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	00813483          	ld	s1,8(sp)
    80003ff4:	02010113          	addi	sp,sp,32
    80003ff8:	ffffe317          	auipc	t1,0xffffe
    80003ffc:	6d430067          	jr	1748(t1) # 800026cc <plic_complete>
    80004000:	fffff097          	auipc	ra,0xfffff
    80004004:	3e0080e7          	jalr	992(ra) # 800033e0 <uartintr>
    80004008:	fddff06f          	j	80003fe4 <console_handler+0x74>
    8000400c:	00001517          	auipc	a0,0x1
    80004010:	1e450513          	addi	a0,a0,484 # 800051f0 <digits+0x78>
    80004014:	fffff097          	auipc	ra,0xfffff
    80004018:	a68080e7          	jalr	-1432(ra) # 80002a7c <panic>
	...
