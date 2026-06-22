
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	72013103          	ld	sp,1824(sp) # 80004720 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	521010ef          	jal	ra,80001d3c <start>

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
    sd t0,0x100(a0)
    80001080:	10553023          	sd	t0,256(a0)
    csrr t0,sstatus
    80001084:	100022f3          	csrr	t0,sstatus
    sd t0,0x108(a0)
    80001088:	10553423          	sd	t0,264(a0)
    ret
    8000108c:	00008067          	ret

0000000080001090 <restoreContext>:
    
restoreContext:
    ld t0,  0x100(a0)
    80001090:	10053283          	ld	t0,256(a0)
    csrw sepc, t0
    80001094:	14129073          	csrw	sepc,t0
    ld t0,  0x108(a0)
    80001098:	10853283          	ld	t0,264(a0)
    csrw sstatus, t0
    8000109c:	10029073          	csrw	sstatus,t0
    ld x1,  0x08(a0)
    800010a0:	00853083          	ld	ra,8(a0)
    ld x2,  0x10(a0)
    800010a4:	01053103          	ld	sp,16(a0)
    ld x3,  0x18(a0)
    800010a8:	01853183          	ld	gp,24(a0)
    ld x4,  0x20(a0)
    800010ac:	02053203          	ld	tp,32(a0)
    ld x5,  0x28(a0)
    800010b0:	02853283          	ld	t0,40(a0)
    ld x6,  0x30(a0)
    800010b4:	03053303          	ld	t1,48(a0)
    ld x7,  0x38(a0)
    800010b8:	03853383          	ld	t2,56(a0)
    ld x8,  0x40(a0)
    800010bc:	04053403          	ld	s0,64(a0)
    ld x9,  0x48(a0)
    800010c0:	04853483          	ld	s1,72(a0)
    ld x11, 0x58(a0)
    800010c4:	05853583          	ld	a1,88(a0)
    ld x12, 0x60(a0)
    800010c8:	06053603          	ld	a2,96(a0)
    ld x13, 0x68(a0)
    800010cc:	06853683          	ld	a3,104(a0)
    ld x14, 0x70(a0)
    800010d0:	07053703          	ld	a4,112(a0)
    ld x15, 0x78(a0)
    800010d4:	07853783          	ld	a5,120(a0)
    ld x16, 0x80(a0)
    800010d8:	08053803          	ld	a6,128(a0)
    ld x17, 0x88(a0)
    800010dc:	08853883          	ld	a7,136(a0)
    ld x18, 0x90(a0)
    800010e0:	09053903          	ld	s2,144(a0)
    ld x19, 0x98(a0)
    800010e4:	09853983          	ld	s3,152(a0)
    ld x20, 0xa0(a0)
    800010e8:	0a053a03          	ld	s4,160(a0)
    ld x21, 0xa8(a0)
    800010ec:	0a853a83          	ld	s5,168(a0)
    ld x22, 0xb0(a0)
    800010f0:	0b053b03          	ld	s6,176(a0)
    ld x23, 0xb8(a0)
    800010f4:	0b853b83          	ld	s7,184(a0)
    ld x24, 0xc0(a0)
    800010f8:	0c053c03          	ld	s8,192(a0)
    ld x25, 0xc8(a0)
    800010fc:	0c853c83          	ld	s9,200(a0)
    ld x26, 0xd0(a0)
    80001100:	0d053d03          	ld	s10,208(a0)
    ld x27, 0xd8(a0)
    80001104:	0d853d83          	ld	s11,216(a0)
    ld x28, 0xe0(a0)
    80001108:	0e053e03          	ld	t3,224(a0)
    ld x29, 0xe8(a0)
    8000110c:	0e853e83          	ld	t4,232(a0)
    ld x30, 0xf0(a0)
    80001110:	0f053f03          	ld	t5,240(a0)
    ld x31, 0xf8(a0)
    80001114:	0f853f83          	ld	t6,248(a0)
    ld x10, 0x50(a0)
    80001118:	05053503          	ld	a0,80(a0)
    sret
    8000111c:	10200073          	sret

0000000080001120 <setupStartContext>:

setupStartContext:
    sd x1,0x08(a0)
    80001120:	00153423          	sd	ra,8(a0)
    sd x2,0x10(a0)
    80001124:	00253823          	sd	sp,16(a0)
    sd x3,0x18(a0)
    80001128:	00353c23          	sd	gp,24(a0)
    sd x4,0x20(a0)
    8000112c:	02453023          	sd	tp,32(a0)
    sd x5,0x28(a0)
    80001130:	02553423          	sd	t0,40(a0)
    sd x6,0x30(a0)
    80001134:	02653823          	sd	t1,48(a0)
    sd x7,0x38(a0)
    80001138:	02753c23          	sd	t2,56(a0)
    sd x8,0x40(a0)
    8000113c:	04853023          	sd	s0,64(a0)
    sd x9,0x48(a0)
    80001140:	04953423          	sd	s1,72(a0)
    sd x10,0x50(a0)
    80001144:	04a53823          	sd	a0,80(a0)
    sd x11,0x58(a0)
    80001148:	04b53c23          	sd	a1,88(a0)
    sd x12,0x60(a0)
    8000114c:	06c53023          	sd	a2,96(a0)
    sd x13,0x68(a0)
    80001150:	06d53423          	sd	a3,104(a0)
    sd x14,0x70(a0)
    80001154:	06e53823          	sd	a4,112(a0)
    sd x15,0x78(a0)
    80001158:	06f53c23          	sd	a5,120(a0)
    sd x16,0x80(a0)
    8000115c:	09053023          	sd	a6,128(a0)
    sd x17,0x88(a0)
    80001160:	09153423          	sd	a7,136(a0)
    sd x18,0x90(a0)
    80001164:	09253823          	sd	s2,144(a0)
    sd x19,0x98(a0)
    80001168:	09353c23          	sd	s3,152(a0)
    sd x20,0xA0(a0)
    8000116c:	0b453023          	sd	s4,160(a0)
    sd x21,0xA8(a0)
    80001170:	0b553423          	sd	s5,168(a0)
    sd x22,0xB0(a0)
    80001174:	0b653823          	sd	s6,176(a0)
    sd x23,0xB8(a0)
    80001178:	0b753c23          	sd	s7,184(a0)
    sd x24,0xC0(a0)
    8000117c:	0d853023          	sd	s8,192(a0)
    sd x25,0xC8(a0)
    80001180:	0d953423          	sd	s9,200(a0)
    sd x26,0xD0(a0)
    80001184:	0da53823          	sd	s10,208(a0)
    sd x27,0xD8(a0)
    80001188:	0db53c23          	sd	s11,216(a0)
    sd x28,0xE0(a0)
    8000118c:	0fc53023          	sd	t3,224(a0)
    sd x29,0xE8(a0)
    80001190:	0fd53423          	sd	t4,232(a0)
    sd x30,0xF0(a0)
    80001194:	0fe53823          	sd	t5,240(a0)
    sd x31,0xF8(a0)
    80001198:	0ff53c23          	sd	t6,248(a0)
    sd x1,0x100(a0)
    8000119c:	10153023          	sd	ra,256(a0)
    csrr t0,sstatus
    800011a0:	100022f3          	csrr	t0,sstatus
    sd t0,0x108(a0)
    800011a4:	10553423          	sd	t0,264(a0)
    800011a8:	00008067          	ret
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

    call HandleInterupt
    80001244:	049000ef          	jal	ra,80001a8c <HandleInterupt>

    ld x0,0x00(sp)
    80001248:	00013003          	ld	zero,0(sp)
    ld x1,0x08(sp)
    8000124c:	00813083          	ld	ra,8(sp)
    ld x2,0x10(sp)
    80001250:	01013103          	ld	sp,16(sp)
    ld x3,0x18(sp)
    80001254:	01813183          	ld	gp,24(sp)
    ld x4,0x20(sp)
    80001258:	02013203          	ld	tp,32(sp)
    ld x5,0x28(sp)
    8000125c:	02813283          	ld	t0,40(sp)
    ld x6,0x30(sp)
    80001260:	03013303          	ld	t1,48(sp)
    ld x7,0x38(sp)
    80001264:	03813383          	ld	t2,56(sp)
    ld x8,0x40(sp)
    80001268:	04013403          	ld	s0,64(sp)
    ld x9,0x48(sp)
    8000126c:	04813483          	ld	s1,72(sp)
    #ld x10,0x50(sp)
    ld x11,0x58(sp)
    80001270:	05813583          	ld	a1,88(sp)
    ld x12,0x60(sp)
    80001274:	06013603          	ld	a2,96(sp)
    ld x13,0x68(sp)
    80001278:	06813683          	ld	a3,104(sp)
    ld x14,0x70(sp)
    8000127c:	07013703          	ld	a4,112(sp)
    ld x15,0x78(sp)
    80001280:	07813783          	ld	a5,120(sp)
    ld x16,0x80(sp)
    80001284:	08013803          	ld	a6,128(sp)
    ld x17,0x88(sp)
    80001288:	08813883          	ld	a7,136(sp)
    ld x18,0x90(sp)
    8000128c:	09013903          	ld	s2,144(sp)
    ld x19,0x98(sp)
    80001290:	09813983          	ld	s3,152(sp)
    ld x20,0xA0(sp)
    80001294:	0a013a03          	ld	s4,160(sp)
    ld x21,0xA8(sp)
    80001298:	0a813a83          	ld	s5,168(sp)
    ld x22,0xB0(sp)
    8000129c:	0b013b03          	ld	s6,176(sp)
    ld x23,0xB8(sp)
    800012a0:	0b813b83          	ld	s7,184(sp)
    ld x24,0xC0(sp)
    800012a4:	0c013c03          	ld	s8,192(sp)
    ld x25,0xC8(sp)
    800012a8:	0c813c83          	ld	s9,200(sp)
    ld x26,0xD0(sp)
    800012ac:	0d013d03          	ld	s10,208(sp)
    ld x27,0xD8(sp)
    800012b0:	0d813d83          	ld	s11,216(sp)
    ld x28,0xE0(sp)
    800012b4:	0e013e03          	ld	t3,224(sp)
    ld x29,0xE8(sp)
    800012b8:	0e813e83          	ld	t4,232(sp)
    ld x30,0xF0(sp)
    800012bc:	0f013f03          	ld	t5,240(sp)
    ld x31,0xF8(sp)
    800012c0:	0f813f83          	ld	t6,248(sp)

    #csrr pc,sepc;
    addi sp, sp, 256
    800012c4:	10010113          	addi	sp,sp,256

    800012c8:	10200073          	sret
    800012cc:	0000                	unimp
	...

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
    80001340:	ac0080e7          	jalr	-1344(ra) # 80003dfc <__putc>
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
    8000136c:	a94080e7          	jalr	-1388(ra) # 80003dfc <__putc>
}
    80001370:	00813083          	ld	ra,8(sp)
    80001374:	00013403          	ld	s0,0(sp)
    80001378:	01010113          	addi	sp,sp,16
    8000137c:	00008067          	ret

0000000080001380 <mainU>:

void mainU(){
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00113423          	sd	ra,8(sp)
    80001388:	00813023          	sd	s0,0(sp)
    8000138c:	01010413          	addi	s0,sp,16
    // *(a3+sizeof(char)) ='f';
    // __putc(*a3);
    // __putc(*(a3+1));
    // __putc(*a1);
    // __putc(*(a1+1));
    thread_t t = thread_create(my_thread_body);
    80001390:	00000517          	auipc	a0,0x0
    80001394:	f9850513          	addi	a0,a0,-104 # 80001328 <my_thread_body>
    80001398:	00000097          	auipc	ra,0x0
    8000139c:	7bc080e7          	jalr	1980(ra) # 80001b54 <thread_create>
    thread_start(t);
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	80c080e7          	jalr	-2036(ra) # 80001bac <thread_start>
    thread_t t2 = thread_create(my_thread_body2);
    800013a8:	00000517          	auipc	a0,0x0
    800013ac:	fac50513          	addi	a0,a0,-84 # 80001354 <my_thread_body2>
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	7a4080e7          	jalr	1956(ra) # 80001b54 <thread_create>
    thread_start(t2);
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	7f4080e7          	jalr	2036(ra) # 80001bac <thread_start>
}
    800013c0:	00813083          	ld	ra,8(sp)
    800013c4:	00013403          	ld	s0,0(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <drop_to_user>:




void drop_to_user(void (*fn)()) {
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    800013dc:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800013e0:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    800013e4:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    800013e8:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800013ec:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    800013f0:	10200073          	sret
}
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <main>:
void interupt();
int main() {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00113423          	sd	ra,8(sp)
    80001408:	00813023          	sd	s0,0(sp)
    8000140c:	01010413          	addi	s0,sp,16
    start_main_thread();
    80001410:	00000097          	auipc	ra,0x0
    80001414:	7f4080e7          	jalr	2036(ra) # 80001c04 <start_main_thread>
    __asm__ volatile("csrw sie, zero");
    80001418:	10401073          	csrw	sie,zero
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    8000141c:	00000797          	auipc	a5,0x0
    80001420:	da478793          	addi	a5,a5,-604 # 800011c0 <interupt>
    80001424:	10579073          	csrw	stvec,a5
    drop_to_user(mainU);
    80001428:	00000517          	auipc	a0,0x0
    8000142c:	f5850513          	addi	a0,a0,-168 # 80001380 <mainU>
    80001430:	00000097          	auipc	ra,0x0
    80001434:	fa0080e7          	jalr	-96(ra) # 800013d0 <drop_to_user>
    return 0;
}
    80001438:	00000513          	li	a0,0
    8000143c:	00813083          	ld	ra,8(sp)
    80001440:	00013403          	ld	s0,0(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_ZN6Thread16threadTrampolineEPS_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    setNextInQueue(next);
    setPrevInQueue(prev);
}
void Thread::threadTrampoline(Thread* t) {
    if (t->body)t->body();
    8000144c:	00053783          	ld	a5,0(a0)
    80001450:	00078e63          	beqz	a5,8000146c <_ZN6Thread16threadTrampolineEPS_+0x20>
void Thread::threadTrampoline(Thread* t) {
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00113423          	sd	ra,8(sp)
    8000145c:	00813023          	sd	s0,0(sp)
    80001460:	01010413          	addi	s0,sp,16
    if (t->body)t->body();
    80001464:	000780e7          	jalr	a5
    //Scheduler::yield(t,Scheduler::GetRunning());
    while (true) {}//TODO: Namesti dobar return iz threada
    80001468:	0000006f          	j	80001468 <_ZN6Thread16threadTrampolineEPS_+0x1c>
    8000146c:	0000006f          	j	8000146c <_ZN6Thread16threadTrampolineEPS_+0x20>

0000000080001470 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
}
    8000147c:	00813403          	ld	s0,8(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_ZN6Thread4initEv>:
void Thread::init() {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00813423          	sd	s0,8(sp)
    80001490:	01010413          	addi	s0,sp,16
}
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_ZN6Thread11copyContextEPm>:
void Thread::copyContext(size_t* ctx) {
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    for (int i = 0;i<32;i++) {
    800014ac:	00000713          	li	a4,0
    800014b0:	01f00793          	li	a5,31
    800014b4:	02e7c863          	blt	a5,a4,800014e4 <_ZN6Thread11copyContextEPm+0x44>
        threadContext.x[i] = cont->x[i];
    800014b8:	00371793          	slli	a5,a4,0x3
    800014bc:	00f587b3          	add	a5,a1,a5
    800014c0:	0007b683          	ld	a3,0(a5)
    800014c4:	000017b7          	lui	a5,0x1
    800014c8:	00478793          	addi	a5,a5,4 # 1004 <_entry-0x7fffeffc>
    800014cc:	00f707b3          	add	a5,a4,a5
    800014d0:	00379793          	slli	a5,a5,0x3
    800014d4:	00f507b3          	add	a5,a0,a5
    800014d8:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    800014dc:	0017071b          	addiw	a4,a4,1
    800014e0:	fd1ff06f          	j	800014b0 <_ZN6Thread11copyContextEPm+0x10>
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    800014e4:	01853783          	ld	a5,24(a0)
    800014e8:	00008737          	lui	a4,0x8
    800014ec:	00e50533          	add	a0,a0,a4
    800014f0:	02f53c23          	sd	a5,56(a0)
    threadContext.sepc = cont->sepc;
    800014f4:	1005b783          	ld	a5,256(a1)
    800014f8:	12f53423          	sd	a5,296(a0)
    threadContext.sstatus =cont->sstatus;
    800014fc:	1085b783          	ld	a5,264(a1)
    80001500:	12f53823          	sd	a5,304(a0)
}
    80001504:	00813403          	ld	s0,8(sp)
    80001508:	01010113          	addi	sp,sp,16
    8000150c:	00008067          	ret

0000000080001510 <_ZN6Thread10getContextEv>:
size_t* Thread::getContext() {
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
}
    8000151c:	000087b7          	lui	a5,0x8
    80001520:	02878793          	addi	a5,a5,40 # 8028 <_entry-0x7fff7fd8>
    80001524:	00f50533          	add	a0,a0,a5
    80001528:	00813403          	ld	s0,8(sp)
    8000152c:	01010113          	addi	sp,sp,16
    80001530:	00008067          	ret

0000000080001534 <_ZN6Thread14getNextInQueueEv>:
Thread* Thread::getNextInQueue(){
    80001534:	ff010113          	addi	sp,sp,-16
    80001538:	00813423          	sd	s0,8(sp)
    8000153c:	01010413          	addi	s0,sp,16
}
    80001540:	01053503          	ld	a0,16(a0)
    80001544:	00813403          	ld	s0,8(sp)
    80001548:	01010113          	addi	sp,sp,16
    8000154c:	00008067          	ret

0000000080001550 <_ZN6Thread14getPrevInQueueEv>:
Thread* Thread::getPrevInQueue(){
    80001550:	ff010113          	addi	sp,sp,-16
    80001554:	00813423          	sd	s0,8(sp)
    80001558:	01010413          	addi	s0,sp,16
}
    8000155c:	00853503          	ld	a0,8(a0)
    80001560:	00813403          	ld	s0,8(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_ZN6Thread14setNextInQueueEPS_>:
void Thread::setNextInQueue(Thread* next){
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00813423          	sd	s0,8(sp)
    80001574:	01010413          	addi	s0,sp,16
    this->next = next;
    80001578:	00b53823          	sd	a1,16(a0)
}
    8000157c:	00813403          	ld	s0,8(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_ZN6Thread14setPrevInQueueEPS_>:
void Thread::setPrevInQueue(Thread* prev){
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    this->prev = prev;
    80001594:	00b53423          	sd	a1,8(a0)
}
    80001598:	00813403          	ld	s0,8(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret

00000000800015a4 <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    800015a4:	fe010113          	addi	sp,sp,-32
    800015a8:	00113c23          	sd	ra,24(sp)
    800015ac:	00813823          	sd	s0,16(sp)
    800015b0:	00913423          	sd	s1,8(sp)
    800015b4:	01213023          	sd	s2,0(sp)
    800015b8:	02010413          	addi	s0,sp,32
    800015bc:	00050493          	mv	s1,a0
    800015c0:	00060913          	mv	s2,a2
    setNextInQueue(next);
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	fa8080e7          	jalr	-88(ra) # 8000156c <_ZN6Thread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    800015cc:	00090593          	mv	a1,s2
    800015d0:	00048513          	mv	a0,s1
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	fb4080e7          	jalr	-76(ra) # 80001588 <_ZN6Thread14setPrevInQueueEPS_>
}
    800015dc:	01813083          	ld	ra,24(sp)
    800015e0:	01013403          	ld	s0,16(sp)
    800015e4:	00813483          	ld	s1,8(sp)
    800015e8:	00013903          	ld	s2,0(sp)
    800015ec:	02010113          	addi	sp,sp,32
    800015f0:	00008067          	ret

00000000800015f4 <_ZN6Thread5startEv>:
}
void Thread::start(){
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	02010413          	addi	s0,sp,32
    80001608:	00050493          	mv	s1,a0
    Scheduler::AddNewThread(this);
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	24c080e7          	jalr	588(ra) # 80001858 <_ZN9Scheduler12AddNewThreadEP6Thread>
    this->threadContext.sepc = reinterpret_cast<size_t>(&Thread::threadTrampoline);
    80001614:	000087b7          	lui	a5,0x8
    80001618:	00f487b3          	add	a5,s1,a5
    8000161c:	00000717          	auipc	a4,0x0
    80001620:	e3070713          	addi	a4,a4,-464 # 8000144c <_ZN6Thread16threadTrampolineEPS_>
    80001624:	12e7b423          	sd	a4,296(a5) # 8128 <_entry-0x7fff7ed8>
    this->threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001628:	0697bc23          	sd	s1,120(a5)
    // size_t sstatus_val;
    // __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus_val));
    // sstatus_val |= (1UL << 8);
    // sstatus_val |= (1UL << 5);
    // this->threadContext.sstatus = sstatus_val;
    Scheduler::yield(Scheduler::GetRunning(), this);
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	080080e7          	jalr	128(ra) # 800016ac <_ZN9Scheduler10GetRunningEv>
    80001634:	00048593          	mv	a1,s1
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	094080e7          	jalr	148(ra) # 800016cc <_ZN9Scheduler5yieldEP6ThreadS1_>
}
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	01013403          	ld	s0,16(sp)
    80001648:	00813483          	ld	s1,8(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret

0000000080001654 <_ZN6Thread4joinEv>:
void Thread::join(){
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16

}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN6Thread11setStackPtrEPm>:
void Thread::setStackPtr(size_t* stackPtr) {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00813423          	sd	s0,8(sp)
    80001674:	01010413          	addi	s0,sp,16
    this->stackPtr = stackPtr;
    80001678:	00b53c23          	sd	a1,24(a0)
}
    8000167c:	00813403          	ld	s0,8(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZN6Thread15setSupervisorSpEPm>:

void Thread::setSupervisorSp(size_t* supervisorSp) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00813423          	sd	s0,8(sp)
    80001690:	01010413          	addi	s0,sp,16
    this->supervisorSp = supervisorSp;
    80001694:	000087b7          	lui	a5,0x8
    80001698:	00f50533          	add	a0,a0,a5
    8000169c:	02b53023          	sd	a1,32(a0)
}
    800016a0:	00813403          	ld	s0,8(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN9Scheduler10GetRunningEv>:
Thread* Scheduler::readyQueue = nullptr;
Thread* Scheduler::readyQueueEnd = nullptr;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00813423          	sd	s0,8(sp)
    800016b4:	01010413          	addi	s0,sp,16
    return running;
}
    800016b8:	00003517          	auipc	a0,0x3
    800016bc:	0c853503          	ld	a0,200(a0) # 80004780 <_ZN9Scheduler7runningE>
    800016c0:	00813403          	ld	s0,8(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret

00000000800016cc <_ZN9Scheduler5yieldEP6ThreadS1_>:
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    800016cc:	fe010113          	addi	sp,sp,-32
    800016d0:	00113c23          	sd	ra,24(sp)
    800016d4:	00813823          	sd	s0,16(sp)
    800016d8:	00913423          	sd	s1,8(sp)
    800016dc:	02010413          	addi	s0,sp,32
    800016e0:	00058493          	mv	s1,a1
    if (oldThread != nullptr)//TODO: Add error and remove this temp logic
    800016e4:	00050a63          	beqz	a0,800016f8 <_ZN9Scheduler5yieldEP6ThreadS1_+0x2c>
        saveContext(oldThread->getContext());
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	e28080e7          	jalr	-472(ra) # 80001510 <_ZN6Thread10getContextEv>
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	910080e7          	jalr	-1776(ra) # 80001000 <saveContext>
    restoreContext(newThread->getContext());
    800016f8:	00048513          	mv	a0,s1
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	e14080e7          	jalr	-492(ra) # 80001510 <_ZN6Thread10getContextEv>
    80001704:	00000097          	auipc	ra,0x0
    80001708:	98c080e7          	jalr	-1652(ra) # 80001090 <restoreContext>
}
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	00813483          	ld	s1,8(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret

0000000080001720 <_ZN9Scheduler7GetNextEv>:
Thread* Scheduler::GetNext(){
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	00913423          	sd	s1,8(sp)
    80001730:	01213023          	sd	s2,0(sp)
    80001734:	02010413          	addi	s0,sp,32
    //TODO: Add checks if empty and stuff
    Thread* toRet = readyQueue;
    80001738:	00003917          	auipc	s2,0x3
    8000173c:	04890913          	addi	s2,s2,72 # 80004780 <_ZN9Scheduler7runningE>
    80001740:	00893483          	ld	s1,8(s2)
    readyQueue = readyQueue->getNextInQueue();
    80001744:	00048513          	mv	a0,s1
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	dec080e7          	jalr	-532(ra) # 80001534 <_ZN6Thread14getNextInQueueEv>
    80001750:	00a93423          	sd	a0,8(s2)
    return toRet;
}
    80001754:	00048513          	mv	a0,s1
    80001758:	01813083          	ld	ra,24(sp)
    8000175c:	01013403          	ld	s0,16(sp)
    80001760:	00813483          	ld	s1,8(sp)
    80001764:	00013903          	ld	s2,0(sp)
    80001768:	02010113          	addi	sp,sp,32
    8000176c:	00008067          	ret

0000000080001770 <_ZN9Scheduler3PutEP6Thread>:
void Scheduler::Put(Thread* thread){
    80001770:	fe010113          	addi	sp,sp,-32
    80001774:	00113c23          	sd	ra,24(sp)
    80001778:	00813823          	sd	s0,16(sp)
    8000177c:	00913423          	sd	s1,8(sp)
    80001780:	01213023          	sd	s2,0(sp)
    80001784:	02010413          	addi	s0,sp,32
    80001788:	00050493          	mv	s1,a0
    //TODO: Add checks if it already exists
    thread->setNextAndPrevInQueue(nullptr, readyQueueEnd);
    8000178c:	00003917          	auipc	s2,0x3
    80001790:	ff490913          	addi	s2,s2,-12 # 80004780 <_ZN9Scheduler7runningE>
    80001794:	01093603          	ld	a2,16(s2)
    80001798:	00000593          	li	a1,0
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	e08080e7          	jalr	-504(ra) # 800015a4 <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>
    readyQueueEnd->setNextInQueue(thread);
    800017a4:	00048593          	mv	a1,s1
    800017a8:	01093503          	ld	a0,16(s2)
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	dc0080e7          	jalr	-576(ra) # 8000156c <_ZN6Thread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    800017b4:	00993823          	sd	s1,16(s2)
}
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	00013903          	ld	s2,0(sp)
    800017c8:	02010113          	addi	sp,sp,32
    800017cc:	00008067          	ret

00000000800017d0 <_ZN9Scheduler15SetupStartStackEv>:

extern "C" char end[];

void Scheduler::SetupStartStack() {
    800017d0:	ff010113          	addi	sp,sp,-16
    800017d4:	00813423          	sd	s0,8(sp)
    800017d8:	01010413          	addi	s0,sp,16

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    800017dc:	00003797          	auipc	a5,0x3
    800017e0:	f4c7b783          	ld	a5,-180(a5) # 80004728 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017e4:	00778793          	addi	a5,a5,7
    800017e8:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    800017ec:	00003717          	auipc	a4,0x3
    800017f0:	faf73623          	sd	a5,-84(a4) # 80004798 <_ZN9Scheduler12stack_cursorE>
    );
}
    800017f4:	00813403          	ld	s0,8(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_ZN9Scheduler16SetupStartThreadEv>:

void Scheduler::SetupStartThread() {
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00113423          	sd	ra,8(sp)
    80001808:	00813023          	sd	s0,0(sp)
    8000180c:	01010413          	addi	s0,sp,16
    SetupStartStack();
    80001810:	00000097          	auipc	ra,0x0
    80001814:	fc0080e7          	jalr	-64(ra) # 800017d0 <_ZN9Scheduler15SetupStartStackEv>
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	0c0080e7          	jalr	192(ra) # 800018d8 <_ZN15MemoryAllocator11GetInstanceEv>
    80001820:	000085b7          	lui	a1,0x8
    80001824:	13858593          	addi	a1,a1,312 # 8138 <_entry-0x7fff7ec8>
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	10c080e7          	jalr	268(ra) # 80001934 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001830:	00003797          	auipc	a5,0x3
    80001834:	f4a7b823          	sd	a0,-176(a5) # 80004780 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	cd8080e7          	jalr	-808(ra) # 80001510 <_ZN6Thread10getContextEv>
    80001840:	00000097          	auipc	ra,0x0
    80001844:	8e0080e7          	jalr	-1824(ra) # 80001120 <setupStartContext>
}
    80001848:	00813083          	ld	ra,8(sp)
    8000184c:	00013403          	ld	s0,0(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_ZN9Scheduler12AddNewThreadEP6Thread>:

void Scheduler::AddNewThread(Thread* thread) {
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00813423          	sd	s0,8(sp)
    80001860:	01010413          	addi	s0,sp,16
    void init();
    void setStackPtr(size_t* stackPtr);
    size_t* getStackTop() { return stack + DEFAULT_STACK_SIZE; }
    void setSupervisorSp(size_t* supervisorSp);
    size_t* getContext();
    Thread* getNextInQueue();
    80001864:	00008737          	lui	a4,0x8
    80001868:	02070793          	addi	a5,a4,32 # 8020 <_entry-0x7fff7fe0>
    8000186c:	00f507b3          	add	a5,a0,a5
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80001870:	00e50533          	add	a0,a0,a4
    80001874:	02f53c23          	sd	a5,56(a0)
}
    80001878:	00813403          	ld	s0,8(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00813423          	sd	s0,8(sp)
    8000188c:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80001890:	00003797          	auipc	a5,0x3
    80001894:	ea07b783          	ld	a5,-352(a5) # 80004730 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001898:	0007b783          	ld	a5,0(a5)
    8000189c:	00003717          	auipc	a4,0x3
    800018a0:	e7c73703          	ld	a4,-388(a4) # 80004718 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018a4:	00073703          	ld	a4,0(a4)
    800018a8:	40e787b3          	sub	a5,a5,a4
    800018ac:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    800018b0:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    800018b4:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    800018b8:	00100693          	li	a3,1
    800018bc:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    800018c0:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    800018c4:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    800018c8:	00073423          	sd	zero,8(a4)
}
    800018cc:	00813403          	ld	s0,8(sp)
    800018d0:	01010113          	addi	sp,sp,16
    800018d4:	00008067          	ret

00000000800018d8 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    800018d8:	00003797          	auipc	a5,0x3
    800018dc:	ec87c783          	lbu	a5,-312(a5) # 800047a0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    800018e0:	00078863          	beqz	a5,800018f0 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	ec450513          	addi	a0,a0,-316 # 800047a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800018ec:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    800018f0:	ff010113          	addi	sp,sp,-16
    800018f4:	00113423          	sd	ra,8(sp)
    800018f8:	00813023          	sd	s0,0(sp)
    800018fc:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80001900:	00003517          	auipc	a0,0x3
    80001904:	ea850513          	addi	a0,a0,-344 # 800047a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	f7c080e7          	jalr	-132(ra) # 80001884 <_ZN15MemoryAllocatorC1Ev>
    80001910:	00100793          	li	a5,1
    80001914:	00003717          	auipc	a4,0x3
    80001918:	e8f70623          	sb	a5,-372(a4) # 800047a0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    8000191c:	00003517          	auipc	a0,0x3
    80001920:	e8c50513          	addi	a0,a0,-372 # 800047a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001924:	00813083          	ld	ra,8(sp)
    80001928:	00013403          	ld	s0,0(sp)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00813423          	sd	s0,8(sp)
    8000193c:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    80001940:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001944:	03f58593          	addi	a1,a1,63
    80001948:	0065d593          	srli	a1,a1,0x6
    8000194c:	0080006f          	j	80001954 <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80001950:	00053503          	ld	a0,0(a0)
    while(curr){
    80001954:	06050863          	beqz	a0,800019c4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80001958:	01054703          	lbu	a4,16(a0)
    8000195c:	00100793          	li	a5,1
    80001960:	fef718e3          	bne	a4,a5,80001950 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    80001964:	01853703          	ld	a4,24(a0)
    80001968:	00158793          	addi	a5,a1,1
    8000196c:	fef762e3          	bltu	a4,a5,80001950 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80001970:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    80001974:	04e7f663          	bgeu	a5,a4,800019c0 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80001978:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    8000197c:	00679793          	slli	a5,a5,0x6
    80001980:	00f507b3          	add	a5,a0,a5
    80001984:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80001988:	00100713          	li	a4,1
    8000198c:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80001990:	01853703          	ld	a4,24(a0)
    80001994:	40b70733          	sub	a4,a4,a1
    80001998:	fff70713          	addi	a4,a4,-1
    8000199c:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    800019a0:	00d7b023          	sd	a3,0(a5)
                if(old)
    800019a4:	00068463          	beqz	a3,800019ac <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    800019a8:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    800019ac:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    800019b0:	01853703          	ld	a4,24(a0)
    800019b4:	0187b783          	ld	a5,24(a5)
    800019b8:	40f707b3          	sub	a5,a4,a5
    800019bc:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    800019c0:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    800019c4:	00813403          	ld	s0,8(sp)
    800019c8:	01010113          	addi	sp,sp,16
    800019cc:	00008067          	ret

00000000800019d0 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00813423          	sd	s0,8(sp)
    800019d8:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    800019dc:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    800019e0:	08070a63          	beqz	a4,80001a74 <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    800019e4:	00100793          	li	a5,1
    800019e8:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    800019ec:	fc05b783          	ld	a5,-64(a1)
    800019f0:	00078863          	beqz	a5,80001a00 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    800019f4:	0107c603          	lbu	a2,16(a5)
    800019f8:	00100693          	li	a3,1
    800019fc:	02d60463          	beq	a2,a3,80001a24 <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80001a00:	fc85b783          	ld	a5,-56(a1)
    80001a04:	06078c63          	beqz	a5,80001a7c <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80001a08:	0107c683          	lbu	a3,16(a5)
    80001a0c:	00100713          	li	a4,1
    80001a10:	02e68e63          	beq	a3,a4,80001a4c <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    80001a14:	00000513          	li	a0,0
}
    80001a18:	00813403          	ld	s0,8(sp)
    80001a1c:	01010113          	addi	sp,sp,16
    80001a20:	00008067          	ret
        curr->size +=next->size;
    80001a24:	0187b603          	ld	a2,24(a5)
    80001a28:	fd85b683          	ld	a3,-40(a1)
    80001a2c:	00c686b3          	add	a3,a3,a2
    80001a30:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    80001a34:	0007b683          	ld	a3,0(a5)
    80001a38:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    80001a3c:	0007b783          	ld	a5,0(a5)
    80001a40:	fc0780e3          	beqz	a5,80001a00 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80001a44:	00e7b423          	sd	a4,8(a5)
    80001a48:	fb9ff06f          	j	80001a00 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80001a4c:	fd85b683          	ld	a3,-40(a1)
    80001a50:	0187b703          	ld	a4,24(a5)
    80001a54:	00d70733          	add	a4,a4,a3
    80001a58:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80001a5c:	fc05b703          	ld	a4,-64(a1)
    80001a60:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80001a64:	02070063          	beqz	a4,80001a84 <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80001a68:	00f73423          	sd	a5,8(a4)
    return 0;
    80001a6c:	00000513          	li	a0,0
    80001a70:	fa9ff06f          	j	80001a18 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    80001a74:	fff00513          	li	a0,-1
    80001a78:	fa1ff06f          	j	80001a18 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80001a7c:	00000513          	li	a0,0
    80001a80:	f99ff06f          	j	80001a18 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80001a84:	00000513          	li	a0,0
    80001a88:	f91ff06f          	j	80001a18 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080001a8c <HandleInterupt>:
#include "Thread.hpp"
#include "APIC.h"
#include "Scheduler.hpp"
#include "../lib/console.h"

extern "C" void HandleInterupt(uint64 code){
    80001a8c:	fe010113          	addi	sp,sp,-32
    80001a90:	00113c23          	sd	ra,24(sp)
    80001a94:	00813823          	sd	s0,16(sp)
    80001a98:	00913423          	sd	s1,8(sp)
    80001a9c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv %[code],a0":[code]"=r"(code));
    80001aa0:	00050713          	mv	a4,a0
    uint64 scause=0;
    __asm__ volatile("csrr %[scause],scause":[scause]"=r"(scause));
    80001aa4:	142027f3          	csrr	a5,scause
    if (scause !=8&&scause !=9) {
    80001aa8:	ff878793          	addi	a5,a5,-8
    80001aac:	00100693          	li	a3,1
    80001ab0:	02f6ee63          	bltu	a3,a5,80001aec <HandleInterupt+0x60>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
        return;

    }
    uint64 sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001ab4:	141027f3          	csrr	a5,sepc
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001ab8:	00478793          	addi	a5,a5,4
    80001abc:	14179073          	csrw	sepc,a5
    switch (code) {
    80001ac0:	00200793          	li	a5,2
    80001ac4:	06f70263          	beq	a4,a5,80001b28 <HandleInterupt+0x9c>
    80001ac8:	00300793          	li	a5,3
    80001acc:	06f70c63          	beq	a4,a5,80001b44 <HandleInterupt+0xb8>
    80001ad0:	00100793          	li	a5,1
    80001ad4:	02f70a63          	beq	a4,a5,80001b08 <HandleInterupt+0x7c>
        default: {
            break;
        }
    }
    return;
}
    80001ad8:	01813083          	ld	ra,24(sp)
    80001adc:	01013403          	ld	s0,16(sp)
    80001ae0:	00813483          	ld	s1,8(sp)
    80001ae4:	02010113          	addi	sp,sp,32
    80001ae8:	00008067          	ret
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001aec:	141024f3          	csrr	s1,sepc
        __putc('!');
    80001af0:	02100513          	li	a0,33
    80001af4:	00002097          	auipc	ra,0x2
    80001af8:	308080e7          	jalr	776(ra) # 80003dfc <__putc>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001afc:	00448493          	addi	s1,s1,4
    80001b00:	14149073          	csrw	sepc,s1
        return;
    80001b04:	fd5ff06f          	j	80001ad8 <HandleInterupt+0x4c>
            __asm__ volatile("mv %[size],a1":[size]"=r"(size));
    80001b08:	00058493          	mv	s1,a1
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	dcc080e7          	jalr	-564(ra) # 800018d8 <_ZN15MemoryAllocator11GetInstanceEv>
    80001b14:	00048593          	mv	a1,s1
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	e1c080e7          	jalr	-484(ra) # 80001934 <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80001b20:	00050513          	mv	a0,a0
            break;
    80001b24:	fb5ff06f          	j	80001ad8 <HandleInterupt+0x4c>
            __asm__ volatile("mv %[ptr],a1":[ptr]"=r"(ptr));
    80001b28:	00058493          	mv	s1,a1
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	dac080e7          	jalr	-596(ra) # 800018d8 <_ZN15MemoryAllocator11GetInstanceEv>
    80001b34:	00048593          	mv	a1,s1
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	e98080e7          	jalr	-360(ra) # 800019d0 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80001b40:	f99ff06f          	j	80001ad8 <HandleInterupt+0x4c>
            __asm__ volatile("mv %0, a1" : "=r"(t));
    80001b44:	00058513          	mv	a0,a1
            ((Thread*)t)->start();
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	aac080e7          	jalr	-1364(ra) # 800015f4 <_ZN6Thread5startEv>
            break;
    80001b50:	f89ff06f          	j	80001ad8 <HandleInterupt+0x4c>

0000000080001b54 <thread_create>:

inline void* operator new(size_t, void* p) { return p; }


extern "C" {
thread_t thread_create(void (*body)(void)) {
    80001b54:	fe010113          	addi	sp,sp,-32
    80001b58:	00113c23          	sd	ra,24(sp)
    80001b5c:	00813823          	sd	s0,16(sp)
    80001b60:	00913423          	sd	s1,8(sp)
    80001b64:	01213023          	sd	s2,0(sp)
    80001b68:	02010413          	addi	s0,sp,32
    80001b6c:	00050913          	mv	s2,a0
    void* mem = mem_alloc(sizeof(Thread));
    80001b70:	00008537          	lui	a0,0x8
    80001b74:	13850513          	addi	a0,a0,312 # 8138 <_entry-0x7fff7ec8>
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	758080e7          	jalr	1880(ra) # 800012d0 <mem_alloc>
    80001b80:	00050493          	mv	s1,a0
    Thread* t = reinterpret_cast<Thread*>(mem);
    t->init();
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	904080e7          	jalr	-1788(ra) # 80001488 <_ZN6Thread4initEv>
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void start();
    void setBody(void (*b)(void)) { body = b; }
    void join();
};

    80001b8c:	0124b023          	sd	s2,0(s1)
    t->setBody(body);
    return reinterpret_cast<thread_t>(t);
}
    80001b90:	00048513          	mv	a0,s1
    80001b94:	01813083          	ld	ra,24(sp)
    80001b98:	01013403          	ld	s0,16(sp)
    80001b9c:	00813483          	ld	s1,8(sp)
    80001ba0:	00013903          	ld	s2,0(sp)
    80001ba4:	02010113          	addi	sp,sp,32
    80001ba8:	00008067          	ret

0000000080001bac <thread_start>:

int thread_start(thread_t handle) {//TODO:Change name
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00813423          	sd	s0,8(sp)
    80001bb4:	01010413          	addi	s0,sp,16
    uint64 code = 0x03;
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    80001bb8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r"(code));
    80001bbc:	00300793          	li	a5,3
    80001bc0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001bc4:	00000073          	ecall
    return 0;
}
    80001bc8:	00000513          	li	a0,0
    80001bcc:	00813403          	ld	s0,8(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <thread_join>:

int thread_join(thread_t t) {
    80001bd8:	ff010113          	addi	sp,sp,-16
    80001bdc:	00113423          	sd	ra,8(sp)
    80001be0:	00813023          	sd	s0,0(sp)
    80001be4:	01010413          	addi	s0,sp,16
    ((Thread*)t)->join();
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	a6c080e7          	jalr	-1428(ra) # 80001654 <_ZN6Thread4joinEv>
    return 0;
}
    80001bf0:	00000513          	li	a0,0
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <start_main_thread>:
int start_main_thread() {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	bec080e7          	jalr	-1044(ra) # 80001800 <_ZN9Scheduler16SetupStartThreadEv>
    return 0;
}
    80001c1c:	00000513          	li	a0,0
    80001c20:	00813083          	ld	ra,8(sp)
    80001c24:	00013403          	ld	s0,0(sp)
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret

0000000080001c30 <_Z5mainAv>:
#include "../lib/console.h"
#include "MemoryAllocator.hpp"
void mainA(){
    80001c30:	fd010113          	addi	sp,sp,-48
    80001c34:	02113423          	sd	ra,40(sp)
    80001c38:	02813023          	sd	s0,32(sp)
    80001c3c:	00913c23          	sd	s1,24(sp)
    80001c40:	01213823          	sd	s2,16(sp)
    80001c44:	03010413          	addi	s0,sp,48
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	c90080e7          	jalr	-880(ra) # 800018d8 <_ZN15MemoryAllocator11GetInstanceEv>
    80001c50:	00053783          	ld	a5,0(a0)
    80001c54:	fcf43c23          	sd	a5,-40(s0)

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    80001c58:	01400593          	li	a1,20
    80001c5c:	fd840913          	addi	s2,s0,-40
    80001c60:	00090513          	mv	a0,s2
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	cd0080e7          	jalr	-816(ra) # 80001934 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001c6c:	00050493          	mv	s1,a0
    *a1 = 'a';
    80001c70:	06100793          	li	a5,97
    80001c74:	00f50023          	sb	a5,0(a0)
    *(a1+sizeof(char)) ='b';
    80001c78:	06200793          	li	a5,98
    80001c7c:	00f500a3          	sb	a5,1(a0)
    __putc(*a1);
    80001c80:	06100513          	li	a0,97
    80001c84:	00002097          	auipc	ra,0x2
    80001c88:	178080e7          	jalr	376(ra) # 80003dfc <__putc>
    __putc(*(a1+1));
    80001c8c:	0014c503          	lbu	a0,1(s1)
    80001c90:	00002097          	auipc	ra,0x2
    80001c94:	16c080e7          	jalr	364(ra) # 80003dfc <__putc>
    *(a1+11) = 'h';
    80001c98:	06800793          	li	a5,104
    80001c9c:	00f485a3          	sb	a5,11(s1)
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001ca0:	00a00593          	li	a1,10
    80001ca4:	00090513          	mv	a0,s2
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	c8c080e7          	jalr	-884(ra) # 80001934 <_ZN15MemoryAllocator16AllocateFragmentEm>
    *a2 = 'c';
    80001cb0:	06300793          	li	a5,99
    80001cb4:	00f50023          	sb	a5,0(a0)
    *(a2+sizeof(char)) ='d';
    80001cb8:	06400793          	li	a5,100
    80001cbc:	00f500a3          	sb	a5,1(a0)
    memAlloc.FreeFragment(a1);
    80001cc0:	00048593          	mv	a1,s1
    80001cc4:	00090513          	mv	a0,s2
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	d08080e7          	jalr	-760(ra) # 800019d0 <_ZN15MemoryAllocator12FreeFragmentEPv>
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001cd0:	00a00593          	li	a1,10
    80001cd4:	00090513          	mv	a0,s2
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	c5c080e7          	jalr	-932(ra) # 80001934 <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001ce0:	00050913          	mv	s2,a0
    *a3 = 'e';
    80001ce4:	06500793          	li	a5,101
    80001ce8:	00f50023          	sb	a5,0(a0)
    *(a3+sizeof(char)) ='f';
    80001cec:	06600793          	li	a5,102
    80001cf0:	00f500a3          	sb	a5,1(a0)
    __putc(*a3);
    80001cf4:	06500513          	li	a0,101
    80001cf8:	00002097          	auipc	ra,0x2
    80001cfc:	104080e7          	jalr	260(ra) # 80003dfc <__putc>
    __putc(*(a3+11));
    80001d00:	00b94503          	lbu	a0,11(s2)
    80001d04:	00002097          	auipc	ra,0x2
    80001d08:	0f8080e7          	jalr	248(ra) # 80003dfc <__putc>
    __putc(*a1);
    80001d0c:	0004c503          	lbu	a0,0(s1)
    80001d10:	00002097          	auipc	ra,0x2
    80001d14:	0ec080e7          	jalr	236(ra) # 80003dfc <__putc>
    __putc(*(a1+1));
    80001d18:	0014c503          	lbu	a0,1(s1)
    80001d1c:	00002097          	auipc	ra,0x2
    80001d20:	0e0080e7          	jalr	224(ra) # 80003dfc <__putc>


    80001d24:	02813083          	ld	ra,40(sp)
    80001d28:	02013403          	ld	s0,32(sp)
    80001d2c:	01813483          	ld	s1,24(sp)
    80001d30:	01013903          	ld	s2,16(sp)
    80001d34:	03010113          	addi	sp,sp,48
    80001d38:	00008067          	ret

0000000080001d3c <start>:
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    80001d48:	300027f3          	csrr	a5,mstatus
    80001d4c:	ffffe737          	lui	a4,0xffffe
    80001d50:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8dff>
    80001d54:	00e7f7b3          	and	a5,a5,a4
    80001d58:	00001737          	lui	a4,0x1
    80001d5c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d60:	00e7e7b3          	or	a5,a5,a4
    80001d64:	30079073          	csrw	mstatus,a5
    80001d68:	00000797          	auipc	a5,0x0
    80001d6c:	16078793          	addi	a5,a5,352 # 80001ec8 <system_main>
    80001d70:	34179073          	csrw	mepc,a5
    80001d74:	00000793          	li	a5,0
    80001d78:	18079073          	csrw	satp,a5
    80001d7c:	000107b7          	lui	a5,0x10
    80001d80:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d84:	30279073          	csrw	medeleg,a5
    80001d88:	30379073          	csrw	mideleg,a5
    80001d8c:	104027f3          	csrr	a5,sie
    80001d90:	2227e793          	ori	a5,a5,546
    80001d94:	10479073          	csrw	sie,a5
    80001d98:	fff00793          	li	a5,-1
    80001d9c:	00a7d793          	srli	a5,a5,0xa
    80001da0:	3b079073          	csrw	pmpaddr0,a5
    80001da4:	00f00793          	li	a5,15
    80001da8:	3a079073          	csrw	pmpcfg0,a5
    80001dac:	f14027f3          	csrr	a5,mhartid
    80001db0:	0200c737          	lui	a4,0x200c
    80001db4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001db8:	0007869b          	sext.w	a3,a5
    80001dbc:	00269713          	slli	a4,a3,0x2
    80001dc0:	000f4637          	lui	a2,0xf4
    80001dc4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001dc8:	00d70733          	add	a4,a4,a3
    80001dcc:	0037979b          	slliw	a5,a5,0x3
    80001dd0:	020046b7          	lui	a3,0x2004
    80001dd4:	00d787b3          	add	a5,a5,a3
    80001dd8:	00c585b3          	add	a1,a1,a2
    80001ddc:	00371693          	slli	a3,a4,0x3
    80001de0:	00003717          	auipc	a4,0x3
    80001de4:	9d070713          	addi	a4,a4,-1584 # 800047b0 <timer_scratch>
    80001de8:	00b7b023          	sd	a1,0(a5)
    80001dec:	00d70733          	add	a4,a4,a3
    80001df0:	00f73c23          	sd	a5,24(a4)
    80001df4:	02c73023          	sd	a2,32(a4)
    80001df8:	34071073          	csrw	mscratch,a4
    80001dfc:	00000797          	auipc	a5,0x0
    80001e00:	6e478793          	addi	a5,a5,1764 # 800024e0 <timervec>
    80001e04:	30579073          	csrw	mtvec,a5
    80001e08:	300027f3          	csrr	a5,mstatus
    80001e0c:	0087e793          	ori	a5,a5,8
    80001e10:	30079073          	csrw	mstatus,a5
    80001e14:	304027f3          	csrr	a5,mie
    80001e18:	0807e793          	ori	a5,a5,128
    80001e1c:	30479073          	csrw	mie,a5
    80001e20:	f14027f3          	csrr	a5,mhartid
    80001e24:	0007879b          	sext.w	a5,a5
    80001e28:	00078213          	mv	tp,a5
    80001e2c:	30200073          	mret
    80001e30:	00813403          	ld	s0,8(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <timerinit>:
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00813423          	sd	s0,8(sp)
    80001e44:	01010413          	addi	s0,sp,16
    80001e48:	f14027f3          	csrr	a5,mhartid
    80001e4c:	0200c737          	lui	a4,0x200c
    80001e50:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e54:	0007869b          	sext.w	a3,a5
    80001e58:	00269713          	slli	a4,a3,0x2
    80001e5c:	000f4637          	lui	a2,0xf4
    80001e60:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e64:	00d70733          	add	a4,a4,a3
    80001e68:	0037979b          	slliw	a5,a5,0x3
    80001e6c:	020046b7          	lui	a3,0x2004
    80001e70:	00d787b3          	add	a5,a5,a3
    80001e74:	00c585b3          	add	a1,a1,a2
    80001e78:	00371693          	slli	a3,a4,0x3
    80001e7c:	00003717          	auipc	a4,0x3
    80001e80:	93470713          	addi	a4,a4,-1740 # 800047b0 <timer_scratch>
    80001e84:	00b7b023          	sd	a1,0(a5)
    80001e88:	00d70733          	add	a4,a4,a3
    80001e8c:	00f73c23          	sd	a5,24(a4)
    80001e90:	02c73023          	sd	a2,32(a4)
    80001e94:	34071073          	csrw	mscratch,a4
    80001e98:	00000797          	auipc	a5,0x0
    80001e9c:	64878793          	addi	a5,a5,1608 # 800024e0 <timervec>
    80001ea0:	30579073          	csrw	mtvec,a5
    80001ea4:	300027f3          	csrr	a5,mstatus
    80001ea8:	0087e793          	ori	a5,a5,8
    80001eac:	30079073          	csrw	mstatus,a5
    80001eb0:	304027f3          	csrr	a5,mie
    80001eb4:	0807e793          	ori	a5,a5,128
    80001eb8:	30479073          	csrw	mie,a5
    80001ebc:	00813403          	ld	s0,8(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret

0000000080001ec8 <system_main>:
    80001ec8:	fe010113          	addi	sp,sp,-32
    80001ecc:	00813823          	sd	s0,16(sp)
    80001ed0:	00913423          	sd	s1,8(sp)
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	02010413          	addi	s0,sp,32
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	0c4080e7          	jalr	196(ra) # 80001fa0 <cpuid>
    80001ee4:	00003497          	auipc	s1,0x3
    80001ee8:	86c48493          	addi	s1,s1,-1940 # 80004750 <started>
    80001eec:	02050263          	beqz	a0,80001f10 <system_main+0x48>
    80001ef0:	0004a783          	lw	a5,0(s1)
    80001ef4:	0007879b          	sext.w	a5,a5
    80001ef8:	fe078ce3          	beqz	a5,80001ef0 <system_main+0x28>
    80001efc:	0ff0000f          	fence
    80001f00:	00002517          	auipc	a0,0x2
    80001f04:	15050513          	addi	a0,a0,336 # 80004050 <CONSOLE_STATUS+0x40>
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	a74080e7          	jalr	-1420(ra) # 8000297c <panic>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	9c8080e7          	jalr	-1592(ra) # 800028d8 <consoleinit>
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	154080e7          	jalr	340(ra) # 8000306c <printfinit>
    80001f20:	00002517          	auipc	a0,0x2
    80001f24:	21050513          	addi	a0,a0,528 # 80004130 <CONSOLE_STATUS+0x120>
    80001f28:	00001097          	auipc	ra,0x1
    80001f2c:	ab0080e7          	jalr	-1360(ra) # 800029d8 <__printf>
    80001f30:	00002517          	auipc	a0,0x2
    80001f34:	0f050513          	addi	a0,a0,240 # 80004020 <CONSOLE_STATUS+0x10>
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	aa0080e7          	jalr	-1376(ra) # 800029d8 <__printf>
    80001f40:	00002517          	auipc	a0,0x2
    80001f44:	1f050513          	addi	a0,a0,496 # 80004130 <CONSOLE_STATUS+0x120>
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	a90080e7          	jalr	-1392(ra) # 800029d8 <__printf>
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	4a8080e7          	jalr	1192(ra) # 800033f8 <kinit>
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	148080e7          	jalr	328(ra) # 800020a0 <trapinit>
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	16c080e7          	jalr	364(ra) # 800020cc <trapinithart>
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	5b8080e7          	jalr	1464(ra) # 80002520 <plicinit>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	5d8080e7          	jalr	1496(ra) # 80002548 <plicinithart>
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	078080e7          	jalr	120(ra) # 80001ff0 <userinit>
    80001f80:	0ff0000f          	fence
    80001f84:	00100793          	li	a5,1
    80001f88:	00002517          	auipc	a0,0x2
    80001f8c:	0b050513          	addi	a0,a0,176 # 80004038 <CONSOLE_STATUS+0x28>
    80001f90:	00f4a023          	sw	a5,0(s1)
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	a44080e7          	jalr	-1468(ra) # 800029d8 <__printf>
    80001f9c:	0000006f          	j	80001f9c <system_main+0xd4>

0000000080001fa0 <cpuid>:
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00813423          	sd	s0,8(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    80001fac:	00020513          	mv	a0,tp
    80001fb0:	00813403          	ld	s0,8(sp)
    80001fb4:	0005051b          	sext.w	a0,a0
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <mycpu>:
    80001fc0:	ff010113          	addi	sp,sp,-16
    80001fc4:	00813423          	sd	s0,8(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    80001fcc:	00020793          	mv	a5,tp
    80001fd0:	00813403          	ld	s0,8(sp)
    80001fd4:	0007879b          	sext.w	a5,a5
    80001fd8:	00779793          	slli	a5,a5,0x7
    80001fdc:	00004517          	auipc	a0,0x4
    80001fe0:	80450513          	addi	a0,a0,-2044 # 800057e0 <cpus>
    80001fe4:	00f50533          	add	a0,a0,a5
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <userinit>:
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00813423          	sd	s0,8(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    80001ffc:	00813403          	ld	s0,8(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	fffff317          	auipc	t1,0xfffff
    80002008:	3fc30067          	jr	1020(t1) # 80001400 <main>

000000008000200c <either_copyout>:
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	00113423          	sd	ra,8(sp)
    80002018:	01010413          	addi	s0,sp,16
    8000201c:	02051663          	bnez	a0,80002048 <either_copyout+0x3c>
    80002020:	00058513          	mv	a0,a1
    80002024:	00060593          	mv	a1,a2
    80002028:	0006861b          	sext.w	a2,a3
    8000202c:	00002097          	auipc	ra,0x2
    80002030:	c58080e7          	jalr	-936(ra) # 80003c84 <__memmove>
    80002034:	00813083          	ld	ra,8(sp)
    80002038:	00013403          	ld	s0,0(sp)
    8000203c:	00000513          	li	a0,0
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret
    80002048:	00002517          	auipc	a0,0x2
    8000204c:	03050513          	addi	a0,a0,48 # 80004078 <CONSOLE_STATUS+0x68>
    80002050:	00001097          	auipc	ra,0x1
    80002054:	92c080e7          	jalr	-1748(ra) # 8000297c <panic>

0000000080002058 <either_copyin>:
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	00113423          	sd	ra,8(sp)
    80002064:	01010413          	addi	s0,sp,16
    80002068:	02059463          	bnez	a1,80002090 <either_copyin+0x38>
    8000206c:	00060593          	mv	a1,a2
    80002070:	0006861b          	sext.w	a2,a3
    80002074:	00002097          	auipc	ra,0x2
    80002078:	c10080e7          	jalr	-1008(ra) # 80003c84 <__memmove>
    8000207c:	00813083          	ld	ra,8(sp)
    80002080:	00013403          	ld	s0,0(sp)
    80002084:	00000513          	li	a0,0
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret
    80002090:	00002517          	auipc	a0,0x2
    80002094:	01050513          	addi	a0,a0,16 # 800040a0 <CONSOLE_STATUS+0x90>
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	8e4080e7          	jalr	-1820(ra) # 8000297c <panic>

00000000800020a0 <trapinit>:
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00813423          	sd	s0,8(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	00813403          	ld	s0,8(sp)
    800020b0:	00002597          	auipc	a1,0x2
    800020b4:	01858593          	addi	a1,a1,24 # 800040c8 <CONSOLE_STATUS+0xb8>
    800020b8:	00003517          	auipc	a0,0x3
    800020bc:	7a850513          	addi	a0,a0,1960 # 80005860 <tickslock>
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00001317          	auipc	t1,0x1
    800020c8:	5c430067          	jr	1476(t1) # 80003688 <initlock>

00000000800020cc <trapinithart>:
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00813423          	sd	s0,8(sp)
    800020d4:	01010413          	addi	s0,sp,16
    800020d8:	00000797          	auipc	a5,0x0
    800020dc:	2f878793          	addi	a5,a5,760 # 800023d0 <kernelvec>
    800020e0:	10579073          	csrw	stvec,a5
    800020e4:	00813403          	ld	s0,8(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <usertrap>:
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    800020fc:	00813403          	ld	s0,8(sp)
    80002100:	01010113          	addi	sp,sp,16
    80002104:	00008067          	ret

0000000080002108 <usertrapret>:
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00813423          	sd	s0,8(sp)
    80002110:	01010413          	addi	s0,sp,16
    80002114:	00813403          	ld	s0,8(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret

0000000080002120 <kerneltrap>:
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00813823          	sd	s0,16(sp)
    80002128:	00113c23          	sd	ra,24(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	02010413          	addi	s0,sp,32
    80002134:	142025f3          	csrr	a1,scause
    80002138:	100027f3          	csrr	a5,sstatus
    8000213c:	0027f793          	andi	a5,a5,2
    80002140:	10079c63          	bnez	a5,80002258 <kerneltrap+0x138>
    80002144:	142027f3          	csrr	a5,scause
    80002148:	0207ce63          	bltz	a5,80002184 <kerneltrap+0x64>
    8000214c:	00002517          	auipc	a0,0x2
    80002150:	fc450513          	addi	a0,a0,-60 # 80004110 <CONSOLE_STATUS+0x100>
    80002154:	00001097          	auipc	ra,0x1
    80002158:	884080e7          	jalr	-1916(ra) # 800029d8 <__printf>
    8000215c:	141025f3          	csrr	a1,sepc
    80002160:	14302673          	csrr	a2,stval
    80002164:	00002517          	auipc	a0,0x2
    80002168:	fbc50513          	addi	a0,a0,-68 # 80004120 <CONSOLE_STATUS+0x110>
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	86c080e7          	jalr	-1940(ra) # 800029d8 <__printf>
    80002174:	00002517          	auipc	a0,0x2
    80002178:	fc450513          	addi	a0,a0,-60 # 80004138 <CONSOLE_STATUS+0x128>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	800080e7          	jalr	-2048(ra) # 8000297c <panic>
    80002184:	0ff7f713          	andi	a4,a5,255
    80002188:	00900693          	li	a3,9
    8000218c:	04d70063          	beq	a4,a3,800021cc <kerneltrap+0xac>
    80002190:	fff00713          	li	a4,-1
    80002194:	03f71713          	slli	a4,a4,0x3f
    80002198:	00170713          	addi	a4,a4,1
    8000219c:	fae798e3          	bne	a5,a4,8000214c <kerneltrap+0x2c>
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	e00080e7          	jalr	-512(ra) # 80001fa0 <cpuid>
    800021a8:	06050663          	beqz	a0,80002214 <kerneltrap+0xf4>
    800021ac:	144027f3          	csrr	a5,sip
    800021b0:	ffd7f793          	andi	a5,a5,-3
    800021b4:	14479073          	csrw	sip,a5
    800021b8:	01813083          	ld	ra,24(sp)
    800021bc:	01013403          	ld	s0,16(sp)
    800021c0:	00813483          	ld	s1,8(sp)
    800021c4:	02010113          	addi	sp,sp,32
    800021c8:	00008067          	ret
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	3c8080e7          	jalr	968(ra) # 80002594 <plic_claim>
    800021d4:	00a00793          	li	a5,10
    800021d8:	00050493          	mv	s1,a0
    800021dc:	06f50863          	beq	a0,a5,8000224c <kerneltrap+0x12c>
    800021e0:	fc050ce3          	beqz	a0,800021b8 <kerneltrap+0x98>
    800021e4:	00050593          	mv	a1,a0
    800021e8:	00002517          	auipc	a0,0x2
    800021ec:	f0850513          	addi	a0,a0,-248 # 800040f0 <CONSOLE_STATUS+0xe0>
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	7e8080e7          	jalr	2024(ra) # 800029d8 <__printf>
    800021f8:	01013403          	ld	s0,16(sp)
    800021fc:	01813083          	ld	ra,24(sp)
    80002200:	00048513          	mv	a0,s1
    80002204:	00813483          	ld	s1,8(sp)
    80002208:	02010113          	addi	sp,sp,32
    8000220c:	00000317          	auipc	t1,0x0
    80002210:	3c030067          	jr	960(t1) # 800025cc <plic_complete>
    80002214:	00003517          	auipc	a0,0x3
    80002218:	64c50513          	addi	a0,a0,1612 # 80005860 <tickslock>
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	490080e7          	jalr	1168(ra) # 800036ac <acquire>
    80002224:	00002717          	auipc	a4,0x2
    80002228:	53070713          	addi	a4,a4,1328 # 80004754 <ticks>
    8000222c:	00072783          	lw	a5,0(a4)
    80002230:	00003517          	auipc	a0,0x3
    80002234:	63050513          	addi	a0,a0,1584 # 80005860 <tickslock>
    80002238:	0017879b          	addiw	a5,a5,1
    8000223c:	00f72023          	sw	a5,0(a4)
    80002240:	00001097          	auipc	ra,0x1
    80002244:	538080e7          	jalr	1336(ra) # 80003778 <release>
    80002248:	f65ff06f          	j	800021ac <kerneltrap+0x8c>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	094080e7          	jalr	148(ra) # 800032e0 <uartintr>
    80002254:	fa5ff06f          	j	800021f8 <kerneltrap+0xd8>
    80002258:	00002517          	auipc	a0,0x2
    8000225c:	e7850513          	addi	a0,a0,-392 # 800040d0 <CONSOLE_STATUS+0xc0>
    80002260:	00000097          	auipc	ra,0x0
    80002264:	71c080e7          	jalr	1820(ra) # 8000297c <panic>

0000000080002268 <clockintr>:
    80002268:	fe010113          	addi	sp,sp,-32
    8000226c:	00813823          	sd	s0,16(sp)
    80002270:	00913423          	sd	s1,8(sp)
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00003497          	auipc	s1,0x3
    80002280:	5e448493          	addi	s1,s1,1508 # 80005860 <tickslock>
    80002284:	00048513          	mv	a0,s1
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	424080e7          	jalr	1060(ra) # 800036ac <acquire>
    80002290:	00002717          	auipc	a4,0x2
    80002294:	4c470713          	addi	a4,a4,1220 # 80004754 <ticks>
    80002298:	00072783          	lw	a5,0(a4)
    8000229c:	01013403          	ld	s0,16(sp)
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	00048513          	mv	a0,s1
    800022a8:	0017879b          	addiw	a5,a5,1
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	00f72023          	sw	a5,0(a4)
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00001317          	auipc	t1,0x1
    800022bc:	4c030067          	jr	1216(t1) # 80003778 <release>

00000000800022c0 <devintr>:
    800022c0:	142027f3          	csrr	a5,scause
    800022c4:	00000513          	li	a0,0
    800022c8:	0007c463          	bltz	a5,800022d0 <devintr+0x10>
    800022cc:	00008067          	ret
    800022d0:	fe010113          	addi	sp,sp,-32
    800022d4:	00813823          	sd	s0,16(sp)
    800022d8:	00113c23          	sd	ra,24(sp)
    800022dc:	00913423          	sd	s1,8(sp)
    800022e0:	02010413          	addi	s0,sp,32
    800022e4:	0ff7f713          	andi	a4,a5,255
    800022e8:	00900693          	li	a3,9
    800022ec:	04d70c63          	beq	a4,a3,80002344 <devintr+0x84>
    800022f0:	fff00713          	li	a4,-1
    800022f4:	03f71713          	slli	a4,a4,0x3f
    800022f8:	00170713          	addi	a4,a4,1
    800022fc:	00e78c63          	beq	a5,a4,80002314 <devintr+0x54>
    80002300:	01813083          	ld	ra,24(sp)
    80002304:	01013403          	ld	s0,16(sp)
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	02010113          	addi	sp,sp,32
    80002310:	00008067          	ret
    80002314:	00000097          	auipc	ra,0x0
    80002318:	c8c080e7          	jalr	-884(ra) # 80001fa0 <cpuid>
    8000231c:	06050663          	beqz	a0,80002388 <devintr+0xc8>
    80002320:	144027f3          	csrr	a5,sip
    80002324:	ffd7f793          	andi	a5,a5,-3
    80002328:	14479073          	csrw	sip,a5
    8000232c:	01813083          	ld	ra,24(sp)
    80002330:	01013403          	ld	s0,16(sp)
    80002334:	00813483          	ld	s1,8(sp)
    80002338:	00200513          	li	a0,2
    8000233c:	02010113          	addi	sp,sp,32
    80002340:	00008067          	ret
    80002344:	00000097          	auipc	ra,0x0
    80002348:	250080e7          	jalr	592(ra) # 80002594 <plic_claim>
    8000234c:	00a00793          	li	a5,10
    80002350:	00050493          	mv	s1,a0
    80002354:	06f50663          	beq	a0,a5,800023c0 <devintr+0x100>
    80002358:	00100513          	li	a0,1
    8000235c:	fa0482e3          	beqz	s1,80002300 <devintr+0x40>
    80002360:	00048593          	mv	a1,s1
    80002364:	00002517          	auipc	a0,0x2
    80002368:	d8c50513          	addi	a0,a0,-628 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	66c080e7          	jalr	1644(ra) # 800029d8 <__printf>
    80002374:	00048513          	mv	a0,s1
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	254080e7          	jalr	596(ra) # 800025cc <plic_complete>
    80002380:	00100513          	li	a0,1
    80002384:	f7dff06f          	j	80002300 <devintr+0x40>
    80002388:	00003517          	auipc	a0,0x3
    8000238c:	4d850513          	addi	a0,a0,1240 # 80005860 <tickslock>
    80002390:	00001097          	auipc	ra,0x1
    80002394:	31c080e7          	jalr	796(ra) # 800036ac <acquire>
    80002398:	00002717          	auipc	a4,0x2
    8000239c:	3bc70713          	addi	a4,a4,956 # 80004754 <ticks>
    800023a0:	00072783          	lw	a5,0(a4)
    800023a4:	00003517          	auipc	a0,0x3
    800023a8:	4bc50513          	addi	a0,a0,1212 # 80005860 <tickslock>
    800023ac:	0017879b          	addiw	a5,a5,1
    800023b0:	00f72023          	sw	a5,0(a4)
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	3c4080e7          	jalr	964(ra) # 80003778 <release>
    800023bc:	f65ff06f          	j	80002320 <devintr+0x60>
    800023c0:	00001097          	auipc	ra,0x1
    800023c4:	f20080e7          	jalr	-224(ra) # 800032e0 <uartintr>
    800023c8:	fadff06f          	j	80002374 <devintr+0xb4>
    800023cc:	0000                	unimp
	...

00000000800023d0 <kernelvec>:
    800023d0:	f0010113          	addi	sp,sp,-256
    800023d4:	00113023          	sd	ra,0(sp)
    800023d8:	00213423          	sd	sp,8(sp)
    800023dc:	00313823          	sd	gp,16(sp)
    800023e0:	00413c23          	sd	tp,24(sp)
    800023e4:	02513023          	sd	t0,32(sp)
    800023e8:	02613423          	sd	t1,40(sp)
    800023ec:	02713823          	sd	t2,48(sp)
    800023f0:	02813c23          	sd	s0,56(sp)
    800023f4:	04913023          	sd	s1,64(sp)
    800023f8:	04a13423          	sd	a0,72(sp)
    800023fc:	04b13823          	sd	a1,80(sp)
    80002400:	04c13c23          	sd	a2,88(sp)
    80002404:	06d13023          	sd	a3,96(sp)
    80002408:	06e13423          	sd	a4,104(sp)
    8000240c:	06f13823          	sd	a5,112(sp)
    80002410:	07013c23          	sd	a6,120(sp)
    80002414:	09113023          	sd	a7,128(sp)
    80002418:	09213423          	sd	s2,136(sp)
    8000241c:	09313823          	sd	s3,144(sp)
    80002420:	09413c23          	sd	s4,152(sp)
    80002424:	0b513023          	sd	s5,160(sp)
    80002428:	0b613423          	sd	s6,168(sp)
    8000242c:	0b713823          	sd	s7,176(sp)
    80002430:	0b813c23          	sd	s8,184(sp)
    80002434:	0d913023          	sd	s9,192(sp)
    80002438:	0da13423          	sd	s10,200(sp)
    8000243c:	0db13823          	sd	s11,208(sp)
    80002440:	0dc13c23          	sd	t3,216(sp)
    80002444:	0fd13023          	sd	t4,224(sp)
    80002448:	0fe13423          	sd	t5,232(sp)
    8000244c:	0ff13823          	sd	t6,240(sp)
    80002450:	cd1ff0ef          	jal	ra,80002120 <kerneltrap>
    80002454:	00013083          	ld	ra,0(sp)
    80002458:	00813103          	ld	sp,8(sp)
    8000245c:	01013183          	ld	gp,16(sp)
    80002460:	02013283          	ld	t0,32(sp)
    80002464:	02813303          	ld	t1,40(sp)
    80002468:	03013383          	ld	t2,48(sp)
    8000246c:	03813403          	ld	s0,56(sp)
    80002470:	04013483          	ld	s1,64(sp)
    80002474:	04813503          	ld	a0,72(sp)
    80002478:	05013583          	ld	a1,80(sp)
    8000247c:	05813603          	ld	a2,88(sp)
    80002480:	06013683          	ld	a3,96(sp)
    80002484:	06813703          	ld	a4,104(sp)
    80002488:	07013783          	ld	a5,112(sp)
    8000248c:	07813803          	ld	a6,120(sp)
    80002490:	08013883          	ld	a7,128(sp)
    80002494:	08813903          	ld	s2,136(sp)
    80002498:	09013983          	ld	s3,144(sp)
    8000249c:	09813a03          	ld	s4,152(sp)
    800024a0:	0a013a83          	ld	s5,160(sp)
    800024a4:	0a813b03          	ld	s6,168(sp)
    800024a8:	0b013b83          	ld	s7,176(sp)
    800024ac:	0b813c03          	ld	s8,184(sp)
    800024b0:	0c013c83          	ld	s9,192(sp)
    800024b4:	0c813d03          	ld	s10,200(sp)
    800024b8:	0d013d83          	ld	s11,208(sp)
    800024bc:	0d813e03          	ld	t3,216(sp)
    800024c0:	0e013e83          	ld	t4,224(sp)
    800024c4:	0e813f03          	ld	t5,232(sp)
    800024c8:	0f013f83          	ld	t6,240(sp)
    800024cc:	10010113          	addi	sp,sp,256
    800024d0:	10200073          	sret
    800024d4:	00000013          	nop
    800024d8:	00000013          	nop
    800024dc:	00000013          	nop

00000000800024e0 <timervec>:
    800024e0:	34051573          	csrrw	a0,mscratch,a0
    800024e4:	00b53023          	sd	a1,0(a0)
    800024e8:	00c53423          	sd	a2,8(a0)
    800024ec:	00d53823          	sd	a3,16(a0)
    800024f0:	01853583          	ld	a1,24(a0)
    800024f4:	02053603          	ld	a2,32(a0)
    800024f8:	0005b683          	ld	a3,0(a1)
    800024fc:	00c686b3          	add	a3,a3,a2
    80002500:	00d5b023          	sd	a3,0(a1)
    80002504:	00200593          	li	a1,2
    80002508:	14459073          	csrw	sip,a1
    8000250c:	01053683          	ld	a3,16(a0)
    80002510:	00853603          	ld	a2,8(a0)
    80002514:	00053583          	ld	a1,0(a0)
    80002518:	34051573          	csrrw	a0,mscratch,a0
    8000251c:	30200073          	mret

0000000080002520 <plicinit>:
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    8000252c:	00813403          	ld	s0,8(sp)
    80002530:	0c0007b7          	lui	a5,0xc000
    80002534:	00100713          	li	a4,1
    80002538:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000253c:	00e7a223          	sw	a4,4(a5)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <plicinithart>:
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00813023          	sd	s0,0(sp)
    80002550:	00113423          	sd	ra,8(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	a48080e7          	jalr	-1464(ra) # 80001fa0 <cpuid>
    80002560:	0085171b          	slliw	a4,a0,0x8
    80002564:	0c0027b7          	lui	a5,0xc002
    80002568:	00e787b3          	add	a5,a5,a4
    8000256c:	40200713          	li	a4,1026
    80002570:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002574:	00813083          	ld	ra,8(sp)
    80002578:	00013403          	ld	s0,0(sp)
    8000257c:	00d5151b          	slliw	a0,a0,0xd
    80002580:	0c2017b7          	lui	a5,0xc201
    80002584:	00a78533          	add	a0,a5,a0
    80002588:	00052023          	sw	zero,0(a0)
    8000258c:	01010113          	addi	sp,sp,16
    80002590:	00008067          	ret

0000000080002594 <plic_claim>:
    80002594:	ff010113          	addi	sp,sp,-16
    80002598:	00813023          	sd	s0,0(sp)
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	01010413          	addi	s0,sp,16
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	9fc080e7          	jalr	-1540(ra) # 80001fa0 <cpuid>
    800025ac:	00813083          	ld	ra,8(sp)
    800025b0:	00013403          	ld	s0,0(sp)
    800025b4:	00d5151b          	slliw	a0,a0,0xd
    800025b8:	0c2017b7          	lui	a5,0xc201
    800025bc:	00a78533          	add	a0,a5,a0
    800025c0:	00452503          	lw	a0,4(a0)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <plic_complete>:
    800025cc:	fe010113          	addi	sp,sp,-32
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	02010413          	addi	s0,sp,32
    800025e0:	00050493          	mv	s1,a0
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	9bc080e7          	jalr	-1604(ra) # 80001fa0 <cpuid>
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00d5179b          	slliw	a5,a0,0xd
    800025f8:	0c201737          	lui	a4,0xc201
    800025fc:	00f707b3          	add	a5,a4,a5
    80002600:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002604:	00813483          	ld	s1,8(sp)
    80002608:	02010113          	addi	sp,sp,32
    8000260c:	00008067          	ret

0000000080002610 <consolewrite>:
    80002610:	fb010113          	addi	sp,sp,-80
    80002614:	04813023          	sd	s0,64(sp)
    80002618:	04113423          	sd	ra,72(sp)
    8000261c:	02913c23          	sd	s1,56(sp)
    80002620:	03213823          	sd	s2,48(sp)
    80002624:	03313423          	sd	s3,40(sp)
    80002628:	03413023          	sd	s4,32(sp)
    8000262c:	01513c23          	sd	s5,24(sp)
    80002630:	05010413          	addi	s0,sp,80
    80002634:	06c05c63          	blez	a2,800026ac <consolewrite+0x9c>
    80002638:	00060993          	mv	s3,a2
    8000263c:	00050a13          	mv	s4,a0
    80002640:	00058493          	mv	s1,a1
    80002644:	00000913          	li	s2,0
    80002648:	fff00a93          	li	s5,-1
    8000264c:	01c0006f          	j	80002668 <consolewrite+0x58>
    80002650:	fbf44503          	lbu	a0,-65(s0)
    80002654:	0019091b          	addiw	s2,s2,1
    80002658:	00148493          	addi	s1,s1,1
    8000265c:	00001097          	auipc	ra,0x1
    80002660:	a9c080e7          	jalr	-1380(ra) # 800030f8 <uartputc>
    80002664:	03298063          	beq	s3,s2,80002684 <consolewrite+0x74>
    80002668:	00048613          	mv	a2,s1
    8000266c:	00100693          	li	a3,1
    80002670:	000a0593          	mv	a1,s4
    80002674:	fbf40513          	addi	a0,s0,-65
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	9e0080e7          	jalr	-1568(ra) # 80002058 <either_copyin>
    80002680:	fd5518e3          	bne	a0,s5,80002650 <consolewrite+0x40>
    80002684:	04813083          	ld	ra,72(sp)
    80002688:	04013403          	ld	s0,64(sp)
    8000268c:	03813483          	ld	s1,56(sp)
    80002690:	02813983          	ld	s3,40(sp)
    80002694:	02013a03          	ld	s4,32(sp)
    80002698:	01813a83          	ld	s5,24(sp)
    8000269c:	00090513          	mv	a0,s2
    800026a0:	03013903          	ld	s2,48(sp)
    800026a4:	05010113          	addi	sp,sp,80
    800026a8:	00008067          	ret
    800026ac:	00000913          	li	s2,0
    800026b0:	fd5ff06f          	j	80002684 <consolewrite+0x74>

00000000800026b4 <consoleread>:
    800026b4:	f9010113          	addi	sp,sp,-112
    800026b8:	06813023          	sd	s0,96(sp)
    800026bc:	04913c23          	sd	s1,88(sp)
    800026c0:	05213823          	sd	s2,80(sp)
    800026c4:	05313423          	sd	s3,72(sp)
    800026c8:	05413023          	sd	s4,64(sp)
    800026cc:	03513c23          	sd	s5,56(sp)
    800026d0:	03613823          	sd	s6,48(sp)
    800026d4:	03713423          	sd	s7,40(sp)
    800026d8:	03813023          	sd	s8,32(sp)
    800026dc:	06113423          	sd	ra,104(sp)
    800026e0:	01913c23          	sd	s9,24(sp)
    800026e4:	07010413          	addi	s0,sp,112
    800026e8:	00060b93          	mv	s7,a2
    800026ec:	00050913          	mv	s2,a0
    800026f0:	00058c13          	mv	s8,a1
    800026f4:	00060b1b          	sext.w	s6,a2
    800026f8:	00003497          	auipc	s1,0x3
    800026fc:	18048493          	addi	s1,s1,384 # 80005878 <cons>
    80002700:	00400993          	li	s3,4
    80002704:	fff00a13          	li	s4,-1
    80002708:	00a00a93          	li	s5,10
    8000270c:	05705e63          	blez	s7,80002768 <consoleread+0xb4>
    80002710:	09c4a703          	lw	a4,156(s1)
    80002714:	0984a783          	lw	a5,152(s1)
    80002718:	0007071b          	sext.w	a4,a4
    8000271c:	08e78463          	beq	a5,a4,800027a4 <consoleread+0xf0>
    80002720:	07f7f713          	andi	a4,a5,127
    80002724:	00e48733          	add	a4,s1,a4
    80002728:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000272c:	0017869b          	addiw	a3,a5,1
    80002730:	08d4ac23          	sw	a3,152(s1)
    80002734:	00070c9b          	sext.w	s9,a4
    80002738:	0b370663          	beq	a4,s3,800027e4 <consoleread+0x130>
    8000273c:	00100693          	li	a3,1
    80002740:	f9f40613          	addi	a2,s0,-97
    80002744:	000c0593          	mv	a1,s8
    80002748:	00090513          	mv	a0,s2
    8000274c:	f8e40fa3          	sb	a4,-97(s0)
    80002750:	00000097          	auipc	ra,0x0
    80002754:	8bc080e7          	jalr	-1860(ra) # 8000200c <either_copyout>
    80002758:	01450863          	beq	a0,s4,80002768 <consoleread+0xb4>
    8000275c:	001c0c13          	addi	s8,s8,1
    80002760:	fffb8b9b          	addiw	s7,s7,-1
    80002764:	fb5c94e3          	bne	s9,s5,8000270c <consoleread+0x58>
    80002768:	000b851b          	sext.w	a0,s7
    8000276c:	06813083          	ld	ra,104(sp)
    80002770:	06013403          	ld	s0,96(sp)
    80002774:	05813483          	ld	s1,88(sp)
    80002778:	05013903          	ld	s2,80(sp)
    8000277c:	04813983          	ld	s3,72(sp)
    80002780:	04013a03          	ld	s4,64(sp)
    80002784:	03813a83          	ld	s5,56(sp)
    80002788:	02813b83          	ld	s7,40(sp)
    8000278c:	02013c03          	ld	s8,32(sp)
    80002790:	01813c83          	ld	s9,24(sp)
    80002794:	40ab053b          	subw	a0,s6,a0
    80002798:	03013b03          	ld	s6,48(sp)
    8000279c:	07010113          	addi	sp,sp,112
    800027a0:	00008067          	ret
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	1d8080e7          	jalr	472(ra) # 8000397c <push_on>
    800027ac:	0984a703          	lw	a4,152(s1)
    800027b0:	09c4a783          	lw	a5,156(s1)
    800027b4:	0007879b          	sext.w	a5,a5
    800027b8:	fef70ce3          	beq	a4,a5,800027b0 <consoleread+0xfc>
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	234080e7          	jalr	564(ra) # 800039f0 <pop_on>
    800027c4:	0984a783          	lw	a5,152(s1)
    800027c8:	07f7f713          	andi	a4,a5,127
    800027cc:	00e48733          	add	a4,s1,a4
    800027d0:	01874703          	lbu	a4,24(a4)
    800027d4:	0017869b          	addiw	a3,a5,1
    800027d8:	08d4ac23          	sw	a3,152(s1)
    800027dc:	00070c9b          	sext.w	s9,a4
    800027e0:	f5371ee3          	bne	a4,s3,8000273c <consoleread+0x88>
    800027e4:	000b851b          	sext.w	a0,s7
    800027e8:	f96bf2e3          	bgeu	s7,s6,8000276c <consoleread+0xb8>
    800027ec:	08f4ac23          	sw	a5,152(s1)
    800027f0:	f7dff06f          	j	8000276c <consoleread+0xb8>

00000000800027f4 <consputc>:
    800027f4:	10000793          	li	a5,256
    800027f8:	00f50663          	beq	a0,a5,80002804 <consputc+0x10>
    800027fc:	00001317          	auipc	t1,0x1
    80002800:	9f430067          	jr	-1548(t1) # 800031f0 <uartputc_sync>
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
    80002814:	00800513          	li	a0,8
    80002818:	00001097          	auipc	ra,0x1
    8000281c:	9d8080e7          	jalr	-1576(ra) # 800031f0 <uartputc_sync>
    80002820:	02000513          	li	a0,32
    80002824:	00001097          	auipc	ra,0x1
    80002828:	9cc080e7          	jalr	-1588(ra) # 800031f0 <uartputc_sync>
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	00813083          	ld	ra,8(sp)
    80002834:	00800513          	li	a0,8
    80002838:	01010113          	addi	sp,sp,16
    8000283c:	00001317          	auipc	t1,0x1
    80002840:	9b430067          	jr	-1612(t1) # 800031f0 <uartputc_sync>

0000000080002844 <consoleintr>:
    80002844:	fe010113          	addi	sp,sp,-32
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	01213023          	sd	s2,0(sp)
    80002854:	00113c23          	sd	ra,24(sp)
    80002858:	02010413          	addi	s0,sp,32
    8000285c:	00003917          	auipc	s2,0x3
    80002860:	01c90913          	addi	s2,s2,28 # 80005878 <cons>
    80002864:	00050493          	mv	s1,a0
    80002868:	00090513          	mv	a0,s2
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	e40080e7          	jalr	-448(ra) # 800036ac <acquire>
    80002874:	02048c63          	beqz	s1,800028ac <consoleintr+0x68>
    80002878:	0a092783          	lw	a5,160(s2)
    8000287c:	09892703          	lw	a4,152(s2)
    80002880:	07f00693          	li	a3,127
    80002884:	40e7873b          	subw	a4,a5,a4
    80002888:	02e6e263          	bltu	a3,a4,800028ac <consoleintr+0x68>
    8000288c:	00d00713          	li	a4,13
    80002890:	04e48063          	beq	s1,a4,800028d0 <consoleintr+0x8c>
    80002894:	07f7f713          	andi	a4,a5,127
    80002898:	00e90733          	add	a4,s2,a4
    8000289c:	0017879b          	addiw	a5,a5,1
    800028a0:	0af92023          	sw	a5,160(s2)
    800028a4:	00970c23          	sb	s1,24(a4)
    800028a8:	08f92e23          	sw	a5,156(s2)
    800028ac:	01013403          	ld	s0,16(sp)
    800028b0:	01813083          	ld	ra,24(sp)
    800028b4:	00813483          	ld	s1,8(sp)
    800028b8:	00013903          	ld	s2,0(sp)
    800028bc:	00003517          	auipc	a0,0x3
    800028c0:	fbc50513          	addi	a0,a0,-68 # 80005878 <cons>
    800028c4:	02010113          	addi	sp,sp,32
    800028c8:	00001317          	auipc	t1,0x1
    800028cc:	eb030067          	jr	-336(t1) # 80003778 <release>
    800028d0:	00a00493          	li	s1,10
    800028d4:	fc1ff06f          	j	80002894 <consoleintr+0x50>

00000000800028d8 <consoleinit>:
    800028d8:	fe010113          	addi	sp,sp,-32
    800028dc:	00113c23          	sd	ra,24(sp)
    800028e0:	00813823          	sd	s0,16(sp)
    800028e4:	00913423          	sd	s1,8(sp)
    800028e8:	02010413          	addi	s0,sp,32
    800028ec:	00003497          	auipc	s1,0x3
    800028f0:	f8c48493          	addi	s1,s1,-116 # 80005878 <cons>
    800028f4:	00048513          	mv	a0,s1
    800028f8:	00002597          	auipc	a1,0x2
    800028fc:	85058593          	addi	a1,a1,-1968 # 80004148 <CONSOLE_STATUS+0x138>
    80002900:	00001097          	auipc	ra,0x1
    80002904:	d88080e7          	jalr	-632(ra) # 80003688 <initlock>
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	7ac080e7          	jalr	1964(ra) # 800030b4 <uartinit>
    80002910:	01813083          	ld	ra,24(sp)
    80002914:	01013403          	ld	s0,16(sp)
    80002918:	00000797          	auipc	a5,0x0
    8000291c:	d9c78793          	addi	a5,a5,-612 # 800026b4 <consoleread>
    80002920:	0af4bc23          	sd	a5,184(s1)
    80002924:	00000797          	auipc	a5,0x0
    80002928:	cec78793          	addi	a5,a5,-788 # 80002610 <consolewrite>
    8000292c:	0cf4b023          	sd	a5,192(s1)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret

000000008000293c <console_read>:
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00813423          	sd	s0,8(sp)
    80002944:	01010413          	addi	s0,sp,16
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	00003317          	auipc	t1,0x3
    80002950:	fe433303          	ld	t1,-28(t1) # 80005930 <devsw+0x10>
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00030067          	jr	t1

000000008000295c <console_write>:
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    80002968:	00813403          	ld	s0,8(sp)
    8000296c:	00003317          	auipc	t1,0x3
    80002970:	fcc33303          	ld	t1,-52(t1) # 80005938 <devsw+0x18>
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00030067          	jr	t1

000000008000297c <panic>:
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00113c23          	sd	ra,24(sp)
    80002984:	00813823          	sd	s0,16(sp)
    80002988:	00913423          	sd	s1,8(sp)
    8000298c:	02010413          	addi	s0,sp,32
    80002990:	00050493          	mv	s1,a0
    80002994:	00001517          	auipc	a0,0x1
    80002998:	7bc50513          	addi	a0,a0,1980 # 80004150 <CONSOLE_STATUS+0x140>
    8000299c:	00003797          	auipc	a5,0x3
    800029a0:	0207ae23          	sw	zero,60(a5) # 800059d8 <pr+0x18>
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	034080e7          	jalr	52(ra) # 800029d8 <__printf>
    800029ac:	00048513          	mv	a0,s1
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	028080e7          	jalr	40(ra) # 800029d8 <__printf>
    800029b8:	00001517          	auipc	a0,0x1
    800029bc:	77850513          	addi	a0,a0,1912 # 80004130 <CONSOLE_STATUS+0x120>
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	018080e7          	jalr	24(ra) # 800029d8 <__printf>
    800029c8:	00100793          	li	a5,1
    800029cc:	00002717          	auipc	a4,0x2
    800029d0:	d8f72623          	sw	a5,-628(a4) # 80004758 <panicked>
    800029d4:	0000006f          	j	800029d4 <panic+0x58>

00000000800029d8 <__printf>:
    800029d8:	f3010113          	addi	sp,sp,-208
    800029dc:	08813023          	sd	s0,128(sp)
    800029e0:	07313423          	sd	s3,104(sp)
    800029e4:	09010413          	addi	s0,sp,144
    800029e8:	05813023          	sd	s8,64(sp)
    800029ec:	08113423          	sd	ra,136(sp)
    800029f0:	06913c23          	sd	s1,120(sp)
    800029f4:	07213823          	sd	s2,112(sp)
    800029f8:	07413023          	sd	s4,96(sp)
    800029fc:	05513c23          	sd	s5,88(sp)
    80002a00:	05613823          	sd	s6,80(sp)
    80002a04:	05713423          	sd	s7,72(sp)
    80002a08:	03913c23          	sd	s9,56(sp)
    80002a0c:	03a13823          	sd	s10,48(sp)
    80002a10:	03b13423          	sd	s11,40(sp)
    80002a14:	00003317          	auipc	t1,0x3
    80002a18:	fac30313          	addi	t1,t1,-84 # 800059c0 <pr>
    80002a1c:	01832c03          	lw	s8,24(t1)
    80002a20:	00b43423          	sd	a1,8(s0)
    80002a24:	00c43823          	sd	a2,16(s0)
    80002a28:	00d43c23          	sd	a3,24(s0)
    80002a2c:	02e43023          	sd	a4,32(s0)
    80002a30:	02f43423          	sd	a5,40(s0)
    80002a34:	03043823          	sd	a6,48(s0)
    80002a38:	03143c23          	sd	a7,56(s0)
    80002a3c:	00050993          	mv	s3,a0
    80002a40:	4a0c1663          	bnez	s8,80002eec <__printf+0x514>
    80002a44:	60098c63          	beqz	s3,8000305c <__printf+0x684>
    80002a48:	0009c503          	lbu	a0,0(s3)
    80002a4c:	00840793          	addi	a5,s0,8
    80002a50:	f6f43c23          	sd	a5,-136(s0)
    80002a54:	00000493          	li	s1,0
    80002a58:	22050063          	beqz	a0,80002c78 <__printf+0x2a0>
    80002a5c:	00002a37          	lui	s4,0x2
    80002a60:	00018ab7          	lui	s5,0x18
    80002a64:	000f4b37          	lui	s6,0xf4
    80002a68:	00989bb7          	lui	s7,0x989
    80002a6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002a70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002a74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002a78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002a7c:	00148c9b          	addiw	s9,s1,1
    80002a80:	02500793          	li	a5,37
    80002a84:	01998933          	add	s2,s3,s9
    80002a88:	38f51263          	bne	a0,a5,80002e0c <__printf+0x434>
    80002a8c:	00094783          	lbu	a5,0(s2)
    80002a90:	00078c9b          	sext.w	s9,a5
    80002a94:	1e078263          	beqz	a5,80002c78 <__printf+0x2a0>
    80002a98:	0024849b          	addiw	s1,s1,2
    80002a9c:	07000713          	li	a4,112
    80002aa0:	00998933          	add	s2,s3,s1
    80002aa4:	38e78a63          	beq	a5,a4,80002e38 <__printf+0x460>
    80002aa8:	20f76863          	bltu	a4,a5,80002cb8 <__printf+0x2e0>
    80002aac:	42a78863          	beq	a5,a0,80002edc <__printf+0x504>
    80002ab0:	06400713          	li	a4,100
    80002ab4:	40e79663          	bne	a5,a4,80002ec0 <__printf+0x4e8>
    80002ab8:	f7843783          	ld	a5,-136(s0)
    80002abc:	0007a603          	lw	a2,0(a5)
    80002ac0:	00878793          	addi	a5,a5,8
    80002ac4:	f6f43c23          	sd	a5,-136(s0)
    80002ac8:	42064a63          	bltz	a2,80002efc <__printf+0x524>
    80002acc:	00a00713          	li	a4,10
    80002ad0:	02e677bb          	remuw	a5,a2,a4
    80002ad4:	00001d97          	auipc	s11,0x1
    80002ad8:	6a4d8d93          	addi	s11,s11,1700 # 80004178 <digits>
    80002adc:	00900593          	li	a1,9
    80002ae0:	0006051b          	sext.w	a0,a2
    80002ae4:	00000c93          	li	s9,0
    80002ae8:	02079793          	slli	a5,a5,0x20
    80002aec:	0207d793          	srli	a5,a5,0x20
    80002af0:	00fd87b3          	add	a5,s11,a5
    80002af4:	0007c783          	lbu	a5,0(a5)
    80002af8:	02e656bb          	divuw	a3,a2,a4
    80002afc:	f8f40023          	sb	a5,-128(s0)
    80002b00:	14c5d863          	bge	a1,a2,80002c50 <__printf+0x278>
    80002b04:	06300593          	li	a1,99
    80002b08:	00100c93          	li	s9,1
    80002b0c:	02e6f7bb          	remuw	a5,a3,a4
    80002b10:	02079793          	slli	a5,a5,0x20
    80002b14:	0207d793          	srli	a5,a5,0x20
    80002b18:	00fd87b3          	add	a5,s11,a5
    80002b1c:	0007c783          	lbu	a5,0(a5)
    80002b20:	02e6d73b          	divuw	a4,a3,a4
    80002b24:	f8f400a3          	sb	a5,-127(s0)
    80002b28:	12a5f463          	bgeu	a1,a0,80002c50 <__printf+0x278>
    80002b2c:	00a00693          	li	a3,10
    80002b30:	00900593          	li	a1,9
    80002b34:	02d777bb          	remuw	a5,a4,a3
    80002b38:	02079793          	slli	a5,a5,0x20
    80002b3c:	0207d793          	srli	a5,a5,0x20
    80002b40:	00fd87b3          	add	a5,s11,a5
    80002b44:	0007c503          	lbu	a0,0(a5)
    80002b48:	02d757bb          	divuw	a5,a4,a3
    80002b4c:	f8a40123          	sb	a0,-126(s0)
    80002b50:	48e5f263          	bgeu	a1,a4,80002fd4 <__printf+0x5fc>
    80002b54:	06300513          	li	a0,99
    80002b58:	02d7f5bb          	remuw	a1,a5,a3
    80002b5c:	02059593          	slli	a1,a1,0x20
    80002b60:	0205d593          	srli	a1,a1,0x20
    80002b64:	00bd85b3          	add	a1,s11,a1
    80002b68:	0005c583          	lbu	a1,0(a1)
    80002b6c:	02d7d7bb          	divuw	a5,a5,a3
    80002b70:	f8b401a3          	sb	a1,-125(s0)
    80002b74:	48e57263          	bgeu	a0,a4,80002ff8 <__printf+0x620>
    80002b78:	3e700513          	li	a0,999
    80002b7c:	02d7f5bb          	remuw	a1,a5,a3
    80002b80:	02059593          	slli	a1,a1,0x20
    80002b84:	0205d593          	srli	a1,a1,0x20
    80002b88:	00bd85b3          	add	a1,s11,a1
    80002b8c:	0005c583          	lbu	a1,0(a1)
    80002b90:	02d7d7bb          	divuw	a5,a5,a3
    80002b94:	f8b40223          	sb	a1,-124(s0)
    80002b98:	46e57663          	bgeu	a0,a4,80003004 <__printf+0x62c>
    80002b9c:	02d7f5bb          	remuw	a1,a5,a3
    80002ba0:	02059593          	slli	a1,a1,0x20
    80002ba4:	0205d593          	srli	a1,a1,0x20
    80002ba8:	00bd85b3          	add	a1,s11,a1
    80002bac:	0005c583          	lbu	a1,0(a1)
    80002bb0:	02d7d7bb          	divuw	a5,a5,a3
    80002bb4:	f8b402a3          	sb	a1,-123(s0)
    80002bb8:	46ea7863          	bgeu	s4,a4,80003028 <__printf+0x650>
    80002bbc:	02d7f5bb          	remuw	a1,a5,a3
    80002bc0:	02059593          	slli	a1,a1,0x20
    80002bc4:	0205d593          	srli	a1,a1,0x20
    80002bc8:	00bd85b3          	add	a1,s11,a1
    80002bcc:	0005c583          	lbu	a1,0(a1)
    80002bd0:	02d7d7bb          	divuw	a5,a5,a3
    80002bd4:	f8b40323          	sb	a1,-122(s0)
    80002bd8:	3eeaf863          	bgeu	s5,a4,80002fc8 <__printf+0x5f0>
    80002bdc:	02d7f5bb          	remuw	a1,a5,a3
    80002be0:	02059593          	slli	a1,a1,0x20
    80002be4:	0205d593          	srli	a1,a1,0x20
    80002be8:	00bd85b3          	add	a1,s11,a1
    80002bec:	0005c583          	lbu	a1,0(a1)
    80002bf0:	02d7d7bb          	divuw	a5,a5,a3
    80002bf4:	f8b403a3          	sb	a1,-121(s0)
    80002bf8:	42eb7e63          	bgeu	s6,a4,80003034 <__printf+0x65c>
    80002bfc:	02d7f5bb          	remuw	a1,a5,a3
    80002c00:	02059593          	slli	a1,a1,0x20
    80002c04:	0205d593          	srli	a1,a1,0x20
    80002c08:	00bd85b3          	add	a1,s11,a1
    80002c0c:	0005c583          	lbu	a1,0(a1)
    80002c10:	02d7d7bb          	divuw	a5,a5,a3
    80002c14:	f8b40423          	sb	a1,-120(s0)
    80002c18:	42ebfc63          	bgeu	s7,a4,80003050 <__printf+0x678>
    80002c1c:	02079793          	slli	a5,a5,0x20
    80002c20:	0207d793          	srli	a5,a5,0x20
    80002c24:	00fd8db3          	add	s11,s11,a5
    80002c28:	000dc703          	lbu	a4,0(s11)
    80002c2c:	00a00793          	li	a5,10
    80002c30:	00900c93          	li	s9,9
    80002c34:	f8e404a3          	sb	a4,-119(s0)
    80002c38:	00065c63          	bgez	a2,80002c50 <__printf+0x278>
    80002c3c:	f9040713          	addi	a4,s0,-112
    80002c40:	00f70733          	add	a4,a4,a5
    80002c44:	02d00693          	li	a3,45
    80002c48:	fed70823          	sb	a3,-16(a4)
    80002c4c:	00078c93          	mv	s9,a5
    80002c50:	f8040793          	addi	a5,s0,-128
    80002c54:	01978cb3          	add	s9,a5,s9
    80002c58:	f7f40d13          	addi	s10,s0,-129
    80002c5c:	000cc503          	lbu	a0,0(s9)
    80002c60:	fffc8c93          	addi	s9,s9,-1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	b90080e7          	jalr	-1136(ra) # 800027f4 <consputc>
    80002c6c:	ffac98e3          	bne	s9,s10,80002c5c <__printf+0x284>
    80002c70:	00094503          	lbu	a0,0(s2)
    80002c74:	e00514e3          	bnez	a0,80002a7c <__printf+0xa4>
    80002c78:	1a0c1663          	bnez	s8,80002e24 <__printf+0x44c>
    80002c7c:	08813083          	ld	ra,136(sp)
    80002c80:	08013403          	ld	s0,128(sp)
    80002c84:	07813483          	ld	s1,120(sp)
    80002c88:	07013903          	ld	s2,112(sp)
    80002c8c:	06813983          	ld	s3,104(sp)
    80002c90:	06013a03          	ld	s4,96(sp)
    80002c94:	05813a83          	ld	s5,88(sp)
    80002c98:	05013b03          	ld	s6,80(sp)
    80002c9c:	04813b83          	ld	s7,72(sp)
    80002ca0:	04013c03          	ld	s8,64(sp)
    80002ca4:	03813c83          	ld	s9,56(sp)
    80002ca8:	03013d03          	ld	s10,48(sp)
    80002cac:	02813d83          	ld	s11,40(sp)
    80002cb0:	0d010113          	addi	sp,sp,208
    80002cb4:	00008067          	ret
    80002cb8:	07300713          	li	a4,115
    80002cbc:	1ce78a63          	beq	a5,a4,80002e90 <__printf+0x4b8>
    80002cc0:	07800713          	li	a4,120
    80002cc4:	1ee79e63          	bne	a5,a4,80002ec0 <__printf+0x4e8>
    80002cc8:	f7843783          	ld	a5,-136(s0)
    80002ccc:	0007a703          	lw	a4,0(a5)
    80002cd0:	00878793          	addi	a5,a5,8
    80002cd4:	f6f43c23          	sd	a5,-136(s0)
    80002cd8:	28074263          	bltz	a4,80002f5c <__printf+0x584>
    80002cdc:	00001d97          	auipc	s11,0x1
    80002ce0:	49cd8d93          	addi	s11,s11,1180 # 80004178 <digits>
    80002ce4:	00f77793          	andi	a5,a4,15
    80002ce8:	00fd87b3          	add	a5,s11,a5
    80002cec:	0007c683          	lbu	a3,0(a5)
    80002cf0:	00f00613          	li	a2,15
    80002cf4:	0007079b          	sext.w	a5,a4
    80002cf8:	f8d40023          	sb	a3,-128(s0)
    80002cfc:	0047559b          	srliw	a1,a4,0x4
    80002d00:	0047569b          	srliw	a3,a4,0x4
    80002d04:	00000c93          	li	s9,0
    80002d08:	0ee65063          	bge	a2,a4,80002de8 <__printf+0x410>
    80002d0c:	00f6f693          	andi	a3,a3,15
    80002d10:	00dd86b3          	add	a3,s11,a3
    80002d14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d18:	0087d79b          	srliw	a5,a5,0x8
    80002d1c:	00100c93          	li	s9,1
    80002d20:	f8d400a3          	sb	a3,-127(s0)
    80002d24:	0cb67263          	bgeu	a2,a1,80002de8 <__printf+0x410>
    80002d28:	00f7f693          	andi	a3,a5,15
    80002d2c:	00dd86b3          	add	a3,s11,a3
    80002d30:	0006c583          	lbu	a1,0(a3)
    80002d34:	00f00613          	li	a2,15
    80002d38:	0047d69b          	srliw	a3,a5,0x4
    80002d3c:	f8b40123          	sb	a1,-126(s0)
    80002d40:	0047d593          	srli	a1,a5,0x4
    80002d44:	28f67e63          	bgeu	a2,a5,80002fe0 <__printf+0x608>
    80002d48:	00f6f693          	andi	a3,a3,15
    80002d4c:	00dd86b3          	add	a3,s11,a3
    80002d50:	0006c503          	lbu	a0,0(a3)
    80002d54:	0087d813          	srli	a6,a5,0x8
    80002d58:	0087d69b          	srliw	a3,a5,0x8
    80002d5c:	f8a401a3          	sb	a0,-125(s0)
    80002d60:	28b67663          	bgeu	a2,a1,80002fec <__printf+0x614>
    80002d64:	00f6f693          	andi	a3,a3,15
    80002d68:	00dd86b3          	add	a3,s11,a3
    80002d6c:	0006c583          	lbu	a1,0(a3)
    80002d70:	00c7d513          	srli	a0,a5,0xc
    80002d74:	00c7d69b          	srliw	a3,a5,0xc
    80002d78:	f8b40223          	sb	a1,-124(s0)
    80002d7c:	29067a63          	bgeu	a2,a6,80003010 <__printf+0x638>
    80002d80:	00f6f693          	andi	a3,a3,15
    80002d84:	00dd86b3          	add	a3,s11,a3
    80002d88:	0006c583          	lbu	a1,0(a3)
    80002d8c:	0107d813          	srli	a6,a5,0x10
    80002d90:	0107d69b          	srliw	a3,a5,0x10
    80002d94:	f8b402a3          	sb	a1,-123(s0)
    80002d98:	28a67263          	bgeu	a2,a0,8000301c <__printf+0x644>
    80002d9c:	00f6f693          	andi	a3,a3,15
    80002da0:	00dd86b3          	add	a3,s11,a3
    80002da4:	0006c683          	lbu	a3,0(a3)
    80002da8:	0147d79b          	srliw	a5,a5,0x14
    80002dac:	f8d40323          	sb	a3,-122(s0)
    80002db0:	21067663          	bgeu	a2,a6,80002fbc <__printf+0x5e4>
    80002db4:	02079793          	slli	a5,a5,0x20
    80002db8:	0207d793          	srli	a5,a5,0x20
    80002dbc:	00fd8db3          	add	s11,s11,a5
    80002dc0:	000dc683          	lbu	a3,0(s11)
    80002dc4:	00800793          	li	a5,8
    80002dc8:	00700c93          	li	s9,7
    80002dcc:	f8d403a3          	sb	a3,-121(s0)
    80002dd0:	00075c63          	bgez	a4,80002de8 <__printf+0x410>
    80002dd4:	f9040713          	addi	a4,s0,-112
    80002dd8:	00f70733          	add	a4,a4,a5
    80002ddc:	02d00693          	li	a3,45
    80002de0:	fed70823          	sb	a3,-16(a4)
    80002de4:	00078c93          	mv	s9,a5
    80002de8:	f8040793          	addi	a5,s0,-128
    80002dec:	01978cb3          	add	s9,a5,s9
    80002df0:	f7f40d13          	addi	s10,s0,-129
    80002df4:	000cc503          	lbu	a0,0(s9)
    80002df8:	fffc8c93          	addi	s9,s9,-1
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	9f8080e7          	jalr	-1544(ra) # 800027f4 <consputc>
    80002e04:	ff9d18e3          	bne	s10,s9,80002df4 <__printf+0x41c>
    80002e08:	0100006f          	j	80002e18 <__printf+0x440>
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	9e8080e7          	jalr	-1560(ra) # 800027f4 <consputc>
    80002e14:	000c8493          	mv	s1,s9
    80002e18:	00094503          	lbu	a0,0(s2)
    80002e1c:	c60510e3          	bnez	a0,80002a7c <__printf+0xa4>
    80002e20:	e40c0ee3          	beqz	s8,80002c7c <__printf+0x2a4>
    80002e24:	00003517          	auipc	a0,0x3
    80002e28:	b9c50513          	addi	a0,a0,-1124 # 800059c0 <pr>
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	94c080e7          	jalr	-1716(ra) # 80003778 <release>
    80002e34:	e49ff06f          	j	80002c7c <__printf+0x2a4>
    80002e38:	f7843783          	ld	a5,-136(s0)
    80002e3c:	03000513          	li	a0,48
    80002e40:	01000d13          	li	s10,16
    80002e44:	00878713          	addi	a4,a5,8
    80002e48:	0007bc83          	ld	s9,0(a5)
    80002e4c:	f6e43c23          	sd	a4,-136(s0)
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	9a4080e7          	jalr	-1628(ra) # 800027f4 <consputc>
    80002e58:	07800513          	li	a0,120
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	998080e7          	jalr	-1640(ra) # 800027f4 <consputc>
    80002e64:	00001d97          	auipc	s11,0x1
    80002e68:	314d8d93          	addi	s11,s11,788 # 80004178 <digits>
    80002e6c:	03ccd793          	srli	a5,s9,0x3c
    80002e70:	00fd87b3          	add	a5,s11,a5
    80002e74:	0007c503          	lbu	a0,0(a5)
    80002e78:	fffd0d1b          	addiw	s10,s10,-1
    80002e7c:	004c9c93          	slli	s9,s9,0x4
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	974080e7          	jalr	-1676(ra) # 800027f4 <consputc>
    80002e88:	fe0d12e3          	bnez	s10,80002e6c <__printf+0x494>
    80002e8c:	f8dff06f          	j	80002e18 <__printf+0x440>
    80002e90:	f7843783          	ld	a5,-136(s0)
    80002e94:	0007bc83          	ld	s9,0(a5)
    80002e98:	00878793          	addi	a5,a5,8
    80002e9c:	f6f43c23          	sd	a5,-136(s0)
    80002ea0:	000c9a63          	bnez	s9,80002eb4 <__printf+0x4dc>
    80002ea4:	1080006f          	j	80002fac <__printf+0x5d4>
    80002ea8:	001c8c93          	addi	s9,s9,1
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	948080e7          	jalr	-1720(ra) # 800027f4 <consputc>
    80002eb4:	000cc503          	lbu	a0,0(s9)
    80002eb8:	fe0518e3          	bnez	a0,80002ea8 <__printf+0x4d0>
    80002ebc:	f5dff06f          	j	80002e18 <__printf+0x440>
    80002ec0:	02500513          	li	a0,37
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	930080e7          	jalr	-1744(ra) # 800027f4 <consputc>
    80002ecc:	000c8513          	mv	a0,s9
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	924080e7          	jalr	-1756(ra) # 800027f4 <consputc>
    80002ed8:	f41ff06f          	j	80002e18 <__printf+0x440>
    80002edc:	02500513          	li	a0,37
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	914080e7          	jalr	-1772(ra) # 800027f4 <consputc>
    80002ee8:	f31ff06f          	j	80002e18 <__printf+0x440>
    80002eec:	00030513          	mv	a0,t1
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	7bc080e7          	jalr	1980(ra) # 800036ac <acquire>
    80002ef8:	b4dff06f          	j	80002a44 <__printf+0x6c>
    80002efc:	40c0053b          	negw	a0,a2
    80002f00:	00a00713          	li	a4,10
    80002f04:	02e576bb          	remuw	a3,a0,a4
    80002f08:	00001d97          	auipc	s11,0x1
    80002f0c:	270d8d93          	addi	s11,s11,624 # 80004178 <digits>
    80002f10:	ff700593          	li	a1,-9
    80002f14:	02069693          	slli	a3,a3,0x20
    80002f18:	0206d693          	srli	a3,a3,0x20
    80002f1c:	00dd86b3          	add	a3,s11,a3
    80002f20:	0006c683          	lbu	a3,0(a3)
    80002f24:	02e557bb          	divuw	a5,a0,a4
    80002f28:	f8d40023          	sb	a3,-128(s0)
    80002f2c:	10b65e63          	bge	a2,a1,80003048 <__printf+0x670>
    80002f30:	06300593          	li	a1,99
    80002f34:	02e7f6bb          	remuw	a3,a5,a4
    80002f38:	02069693          	slli	a3,a3,0x20
    80002f3c:	0206d693          	srli	a3,a3,0x20
    80002f40:	00dd86b3          	add	a3,s11,a3
    80002f44:	0006c683          	lbu	a3,0(a3)
    80002f48:	02e7d73b          	divuw	a4,a5,a4
    80002f4c:	00200793          	li	a5,2
    80002f50:	f8d400a3          	sb	a3,-127(s0)
    80002f54:	bca5ece3          	bltu	a1,a0,80002b2c <__printf+0x154>
    80002f58:	ce5ff06f          	j	80002c3c <__printf+0x264>
    80002f5c:	40e007bb          	negw	a5,a4
    80002f60:	00001d97          	auipc	s11,0x1
    80002f64:	218d8d93          	addi	s11,s11,536 # 80004178 <digits>
    80002f68:	00f7f693          	andi	a3,a5,15
    80002f6c:	00dd86b3          	add	a3,s11,a3
    80002f70:	0006c583          	lbu	a1,0(a3)
    80002f74:	ff100613          	li	a2,-15
    80002f78:	0047d69b          	srliw	a3,a5,0x4
    80002f7c:	f8b40023          	sb	a1,-128(s0)
    80002f80:	0047d59b          	srliw	a1,a5,0x4
    80002f84:	0ac75e63          	bge	a4,a2,80003040 <__printf+0x668>
    80002f88:	00f6f693          	andi	a3,a3,15
    80002f8c:	00dd86b3          	add	a3,s11,a3
    80002f90:	0006c603          	lbu	a2,0(a3)
    80002f94:	00f00693          	li	a3,15
    80002f98:	0087d79b          	srliw	a5,a5,0x8
    80002f9c:	f8c400a3          	sb	a2,-127(s0)
    80002fa0:	d8b6e4e3          	bltu	a3,a1,80002d28 <__printf+0x350>
    80002fa4:	00200793          	li	a5,2
    80002fa8:	e2dff06f          	j	80002dd4 <__printf+0x3fc>
    80002fac:	00001c97          	auipc	s9,0x1
    80002fb0:	1acc8c93          	addi	s9,s9,428 # 80004158 <CONSOLE_STATUS+0x148>
    80002fb4:	02800513          	li	a0,40
    80002fb8:	ef1ff06f          	j	80002ea8 <__printf+0x4d0>
    80002fbc:	00700793          	li	a5,7
    80002fc0:	00600c93          	li	s9,6
    80002fc4:	e0dff06f          	j	80002dd0 <__printf+0x3f8>
    80002fc8:	00700793          	li	a5,7
    80002fcc:	00600c93          	li	s9,6
    80002fd0:	c69ff06f          	j	80002c38 <__printf+0x260>
    80002fd4:	00300793          	li	a5,3
    80002fd8:	00200c93          	li	s9,2
    80002fdc:	c5dff06f          	j	80002c38 <__printf+0x260>
    80002fe0:	00300793          	li	a5,3
    80002fe4:	00200c93          	li	s9,2
    80002fe8:	de9ff06f          	j	80002dd0 <__printf+0x3f8>
    80002fec:	00400793          	li	a5,4
    80002ff0:	00300c93          	li	s9,3
    80002ff4:	dddff06f          	j	80002dd0 <__printf+0x3f8>
    80002ff8:	00400793          	li	a5,4
    80002ffc:	00300c93          	li	s9,3
    80003000:	c39ff06f          	j	80002c38 <__printf+0x260>
    80003004:	00500793          	li	a5,5
    80003008:	00400c93          	li	s9,4
    8000300c:	c2dff06f          	j	80002c38 <__printf+0x260>
    80003010:	00500793          	li	a5,5
    80003014:	00400c93          	li	s9,4
    80003018:	db9ff06f          	j	80002dd0 <__printf+0x3f8>
    8000301c:	00600793          	li	a5,6
    80003020:	00500c93          	li	s9,5
    80003024:	dadff06f          	j	80002dd0 <__printf+0x3f8>
    80003028:	00600793          	li	a5,6
    8000302c:	00500c93          	li	s9,5
    80003030:	c09ff06f          	j	80002c38 <__printf+0x260>
    80003034:	00800793          	li	a5,8
    80003038:	00700c93          	li	s9,7
    8000303c:	bfdff06f          	j	80002c38 <__printf+0x260>
    80003040:	00100793          	li	a5,1
    80003044:	d91ff06f          	j	80002dd4 <__printf+0x3fc>
    80003048:	00100793          	li	a5,1
    8000304c:	bf1ff06f          	j	80002c3c <__printf+0x264>
    80003050:	00900793          	li	a5,9
    80003054:	00800c93          	li	s9,8
    80003058:	be1ff06f          	j	80002c38 <__printf+0x260>
    8000305c:	00001517          	auipc	a0,0x1
    80003060:	10450513          	addi	a0,a0,260 # 80004160 <CONSOLE_STATUS+0x150>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	918080e7          	jalr	-1768(ra) # 8000297c <panic>

000000008000306c <printfinit>:
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00003497          	auipc	s1,0x3
    80003084:	94048493          	addi	s1,s1,-1728 # 800059c0 <pr>
    80003088:	00048513          	mv	a0,s1
    8000308c:	00001597          	auipc	a1,0x1
    80003090:	0e458593          	addi	a1,a1,228 # 80004170 <CONSOLE_STATUS+0x160>
    80003094:	00000097          	auipc	ra,0x0
    80003098:	5f4080e7          	jalr	1524(ra) # 80003688 <initlock>
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	0004ac23          	sw	zero,24(s1)
    800030a8:	00813483          	ld	s1,8(sp)
    800030ac:	02010113          	addi	sp,sp,32
    800030b0:	00008067          	ret

00000000800030b4 <uartinit>:
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813423          	sd	s0,8(sp)
    800030bc:	01010413          	addi	s0,sp,16
    800030c0:	100007b7          	lui	a5,0x10000
    800030c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800030c8:	f8000713          	li	a4,-128
    800030cc:	00e781a3          	sb	a4,3(a5)
    800030d0:	00300713          	li	a4,3
    800030d4:	00e78023          	sb	a4,0(a5)
    800030d8:	000780a3          	sb	zero,1(a5)
    800030dc:	00e781a3          	sb	a4,3(a5)
    800030e0:	00700693          	li	a3,7
    800030e4:	00d78123          	sb	a3,2(a5)
    800030e8:	00e780a3          	sb	a4,1(a5)
    800030ec:	00813403          	ld	s0,8(sp)
    800030f0:	01010113          	addi	sp,sp,16
    800030f4:	00008067          	ret

00000000800030f8 <uartputc>:
    800030f8:	00001797          	auipc	a5,0x1
    800030fc:	6607a783          	lw	a5,1632(a5) # 80004758 <panicked>
    80003100:	00078463          	beqz	a5,80003108 <uartputc+0x10>
    80003104:	0000006f          	j	80003104 <uartputc+0xc>
    80003108:	fd010113          	addi	sp,sp,-48
    8000310c:	02813023          	sd	s0,32(sp)
    80003110:	00913c23          	sd	s1,24(sp)
    80003114:	01213823          	sd	s2,16(sp)
    80003118:	01313423          	sd	s3,8(sp)
    8000311c:	02113423          	sd	ra,40(sp)
    80003120:	03010413          	addi	s0,sp,48
    80003124:	00001917          	auipc	s2,0x1
    80003128:	63c90913          	addi	s2,s2,1596 # 80004760 <uart_tx_r>
    8000312c:	00093783          	ld	a5,0(s2)
    80003130:	00001497          	auipc	s1,0x1
    80003134:	63848493          	addi	s1,s1,1592 # 80004768 <uart_tx_w>
    80003138:	0004b703          	ld	a4,0(s1)
    8000313c:	02078693          	addi	a3,a5,32
    80003140:	00050993          	mv	s3,a0
    80003144:	02e69c63          	bne	a3,a4,8000317c <uartputc+0x84>
    80003148:	00001097          	auipc	ra,0x1
    8000314c:	834080e7          	jalr	-1996(ra) # 8000397c <push_on>
    80003150:	00093783          	ld	a5,0(s2)
    80003154:	0004b703          	ld	a4,0(s1)
    80003158:	02078793          	addi	a5,a5,32
    8000315c:	00e79463          	bne	a5,a4,80003164 <uartputc+0x6c>
    80003160:	0000006f          	j	80003160 <uartputc+0x68>
    80003164:	00001097          	auipc	ra,0x1
    80003168:	88c080e7          	jalr	-1908(ra) # 800039f0 <pop_on>
    8000316c:	00093783          	ld	a5,0(s2)
    80003170:	0004b703          	ld	a4,0(s1)
    80003174:	02078693          	addi	a3,a5,32
    80003178:	fce688e3          	beq	a3,a4,80003148 <uartputc+0x50>
    8000317c:	01f77693          	andi	a3,a4,31
    80003180:	00003597          	auipc	a1,0x3
    80003184:	86058593          	addi	a1,a1,-1952 # 800059e0 <uart_tx_buf>
    80003188:	00d586b3          	add	a3,a1,a3
    8000318c:	00170713          	addi	a4,a4,1
    80003190:	01368023          	sb	s3,0(a3)
    80003194:	00e4b023          	sd	a4,0(s1)
    80003198:	10000637          	lui	a2,0x10000
    8000319c:	02f71063          	bne	a4,a5,800031bc <uartputc+0xc4>
    800031a0:	0340006f          	j	800031d4 <uartputc+0xdc>
    800031a4:	00074703          	lbu	a4,0(a4)
    800031a8:	00f93023          	sd	a5,0(s2)
    800031ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800031b0:	00093783          	ld	a5,0(s2)
    800031b4:	0004b703          	ld	a4,0(s1)
    800031b8:	00f70e63          	beq	a4,a5,800031d4 <uartputc+0xdc>
    800031bc:	00564683          	lbu	a3,5(a2)
    800031c0:	01f7f713          	andi	a4,a5,31
    800031c4:	00e58733          	add	a4,a1,a4
    800031c8:	0206f693          	andi	a3,a3,32
    800031cc:	00178793          	addi	a5,a5,1
    800031d0:	fc069ae3          	bnez	a3,800031a4 <uartputc+0xac>
    800031d4:	02813083          	ld	ra,40(sp)
    800031d8:	02013403          	ld	s0,32(sp)
    800031dc:	01813483          	ld	s1,24(sp)
    800031e0:	01013903          	ld	s2,16(sp)
    800031e4:	00813983          	ld	s3,8(sp)
    800031e8:	03010113          	addi	sp,sp,48
    800031ec:	00008067          	ret

00000000800031f0 <uartputc_sync>:
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00813423          	sd	s0,8(sp)
    800031f8:	01010413          	addi	s0,sp,16
    800031fc:	00001717          	auipc	a4,0x1
    80003200:	55c72703          	lw	a4,1372(a4) # 80004758 <panicked>
    80003204:	02071663          	bnez	a4,80003230 <uartputc_sync+0x40>
    80003208:	00050793          	mv	a5,a0
    8000320c:	100006b7          	lui	a3,0x10000
    80003210:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003214:	02077713          	andi	a4,a4,32
    80003218:	fe070ce3          	beqz	a4,80003210 <uartputc_sync+0x20>
    8000321c:	0ff7f793          	andi	a5,a5,255
    80003220:	00f68023          	sb	a5,0(a3)
    80003224:	00813403          	ld	s0,8(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret
    80003230:	0000006f          	j	80003230 <uartputc_sync+0x40>

0000000080003234 <uartstart>:
    80003234:	ff010113          	addi	sp,sp,-16
    80003238:	00813423          	sd	s0,8(sp)
    8000323c:	01010413          	addi	s0,sp,16
    80003240:	00001617          	auipc	a2,0x1
    80003244:	52060613          	addi	a2,a2,1312 # 80004760 <uart_tx_r>
    80003248:	00001517          	auipc	a0,0x1
    8000324c:	52050513          	addi	a0,a0,1312 # 80004768 <uart_tx_w>
    80003250:	00063783          	ld	a5,0(a2)
    80003254:	00053703          	ld	a4,0(a0)
    80003258:	04f70263          	beq	a4,a5,8000329c <uartstart+0x68>
    8000325c:	100005b7          	lui	a1,0x10000
    80003260:	00002817          	auipc	a6,0x2
    80003264:	78080813          	addi	a6,a6,1920 # 800059e0 <uart_tx_buf>
    80003268:	01c0006f          	j	80003284 <uartstart+0x50>
    8000326c:	0006c703          	lbu	a4,0(a3)
    80003270:	00f63023          	sd	a5,0(a2)
    80003274:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003278:	00063783          	ld	a5,0(a2)
    8000327c:	00053703          	ld	a4,0(a0)
    80003280:	00f70e63          	beq	a4,a5,8000329c <uartstart+0x68>
    80003284:	01f7f713          	andi	a4,a5,31
    80003288:	00e806b3          	add	a3,a6,a4
    8000328c:	0055c703          	lbu	a4,5(a1)
    80003290:	00178793          	addi	a5,a5,1
    80003294:	02077713          	andi	a4,a4,32
    80003298:	fc071ae3          	bnez	a4,8000326c <uartstart+0x38>
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret

00000000800032a8 <uartgetc>:
    800032a8:	ff010113          	addi	sp,sp,-16
    800032ac:	00813423          	sd	s0,8(sp)
    800032b0:	01010413          	addi	s0,sp,16
    800032b4:	10000737          	lui	a4,0x10000
    800032b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800032bc:	0017f793          	andi	a5,a5,1
    800032c0:	00078c63          	beqz	a5,800032d8 <uartgetc+0x30>
    800032c4:	00074503          	lbu	a0,0(a4)
    800032c8:	0ff57513          	andi	a0,a0,255
    800032cc:	00813403          	ld	s0,8(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret
    800032d8:	fff00513          	li	a0,-1
    800032dc:	ff1ff06f          	j	800032cc <uartgetc+0x24>

00000000800032e0 <uartintr>:
    800032e0:	100007b7          	lui	a5,0x10000
    800032e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800032e8:	0017f793          	andi	a5,a5,1
    800032ec:	0a078463          	beqz	a5,80003394 <uartintr+0xb4>
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	00113c23          	sd	ra,24(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	100004b7          	lui	s1,0x10000
    80003308:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000330c:	0ff57513          	andi	a0,a0,255
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	534080e7          	jalr	1332(ra) # 80002844 <consoleintr>
    80003318:	0054c783          	lbu	a5,5(s1)
    8000331c:	0017f793          	andi	a5,a5,1
    80003320:	fe0794e3          	bnez	a5,80003308 <uartintr+0x28>
    80003324:	00001617          	auipc	a2,0x1
    80003328:	43c60613          	addi	a2,a2,1084 # 80004760 <uart_tx_r>
    8000332c:	00001517          	auipc	a0,0x1
    80003330:	43c50513          	addi	a0,a0,1084 # 80004768 <uart_tx_w>
    80003334:	00063783          	ld	a5,0(a2)
    80003338:	00053703          	ld	a4,0(a0)
    8000333c:	04f70263          	beq	a4,a5,80003380 <uartintr+0xa0>
    80003340:	100005b7          	lui	a1,0x10000
    80003344:	00002817          	auipc	a6,0x2
    80003348:	69c80813          	addi	a6,a6,1692 # 800059e0 <uart_tx_buf>
    8000334c:	01c0006f          	j	80003368 <uartintr+0x88>
    80003350:	0006c703          	lbu	a4,0(a3)
    80003354:	00f63023          	sd	a5,0(a2)
    80003358:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000335c:	00063783          	ld	a5,0(a2)
    80003360:	00053703          	ld	a4,0(a0)
    80003364:	00f70e63          	beq	a4,a5,80003380 <uartintr+0xa0>
    80003368:	01f7f713          	andi	a4,a5,31
    8000336c:	00e806b3          	add	a3,a6,a4
    80003370:	0055c703          	lbu	a4,5(a1)
    80003374:	00178793          	addi	a5,a5,1
    80003378:	02077713          	andi	a4,a4,32
    8000337c:	fc071ae3          	bnez	a4,80003350 <uartintr+0x70>
    80003380:	01813083          	ld	ra,24(sp)
    80003384:	01013403          	ld	s0,16(sp)
    80003388:	00813483          	ld	s1,8(sp)
    8000338c:	02010113          	addi	sp,sp,32
    80003390:	00008067          	ret
    80003394:	00001617          	auipc	a2,0x1
    80003398:	3cc60613          	addi	a2,a2,972 # 80004760 <uart_tx_r>
    8000339c:	00001517          	auipc	a0,0x1
    800033a0:	3cc50513          	addi	a0,a0,972 # 80004768 <uart_tx_w>
    800033a4:	00063783          	ld	a5,0(a2)
    800033a8:	00053703          	ld	a4,0(a0)
    800033ac:	04f70263          	beq	a4,a5,800033f0 <uartintr+0x110>
    800033b0:	100005b7          	lui	a1,0x10000
    800033b4:	00002817          	auipc	a6,0x2
    800033b8:	62c80813          	addi	a6,a6,1580 # 800059e0 <uart_tx_buf>
    800033bc:	01c0006f          	j	800033d8 <uartintr+0xf8>
    800033c0:	0006c703          	lbu	a4,0(a3)
    800033c4:	00f63023          	sd	a5,0(a2)
    800033c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033cc:	00063783          	ld	a5,0(a2)
    800033d0:	00053703          	ld	a4,0(a0)
    800033d4:	02f70063          	beq	a4,a5,800033f4 <uartintr+0x114>
    800033d8:	01f7f713          	andi	a4,a5,31
    800033dc:	00e806b3          	add	a3,a6,a4
    800033e0:	0055c703          	lbu	a4,5(a1)
    800033e4:	00178793          	addi	a5,a5,1
    800033e8:	02077713          	andi	a4,a4,32
    800033ec:	fc071ae3          	bnez	a4,800033c0 <uartintr+0xe0>
    800033f0:	00008067          	ret
    800033f4:	00008067          	ret

00000000800033f8 <kinit>:
    800033f8:	fc010113          	addi	sp,sp,-64
    800033fc:	02913423          	sd	s1,40(sp)
    80003400:	fffff7b7          	lui	a5,0xfffff
    80003404:	00003497          	auipc	s1,0x3
    80003408:	5fb48493          	addi	s1,s1,1531 # 800069ff <end+0xfff>
    8000340c:	02813823          	sd	s0,48(sp)
    80003410:	01313c23          	sd	s3,24(sp)
    80003414:	00f4f4b3          	and	s1,s1,a5
    80003418:	02113c23          	sd	ra,56(sp)
    8000341c:	03213023          	sd	s2,32(sp)
    80003420:	01413823          	sd	s4,16(sp)
    80003424:	01513423          	sd	s5,8(sp)
    80003428:	04010413          	addi	s0,sp,64
    8000342c:	000017b7          	lui	a5,0x1
    80003430:	01100993          	li	s3,17
    80003434:	00f487b3          	add	a5,s1,a5
    80003438:	01b99993          	slli	s3,s3,0x1b
    8000343c:	06f9e063          	bltu	s3,a5,8000349c <kinit+0xa4>
    80003440:	00002a97          	auipc	s5,0x2
    80003444:	5c0a8a93          	addi	s5,s5,1472 # 80005a00 <end>
    80003448:	0754ec63          	bltu	s1,s5,800034c0 <kinit+0xc8>
    8000344c:	0734fa63          	bgeu	s1,s3,800034c0 <kinit+0xc8>
    80003450:	00088a37          	lui	s4,0x88
    80003454:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003458:	00001917          	auipc	s2,0x1
    8000345c:	31890913          	addi	s2,s2,792 # 80004770 <kmem>
    80003460:	00ca1a13          	slli	s4,s4,0xc
    80003464:	0140006f          	j	80003478 <kinit+0x80>
    80003468:	000017b7          	lui	a5,0x1
    8000346c:	00f484b3          	add	s1,s1,a5
    80003470:	0554e863          	bltu	s1,s5,800034c0 <kinit+0xc8>
    80003474:	0534f663          	bgeu	s1,s3,800034c0 <kinit+0xc8>
    80003478:	00001637          	lui	a2,0x1
    8000347c:	00100593          	li	a1,1
    80003480:	00048513          	mv	a0,s1
    80003484:	00000097          	auipc	ra,0x0
    80003488:	5e4080e7          	jalr	1508(ra) # 80003a68 <__memset>
    8000348c:	00093783          	ld	a5,0(s2)
    80003490:	00f4b023          	sd	a5,0(s1)
    80003494:	00993023          	sd	s1,0(s2)
    80003498:	fd4498e3          	bne	s1,s4,80003468 <kinit+0x70>
    8000349c:	03813083          	ld	ra,56(sp)
    800034a0:	03013403          	ld	s0,48(sp)
    800034a4:	02813483          	ld	s1,40(sp)
    800034a8:	02013903          	ld	s2,32(sp)
    800034ac:	01813983          	ld	s3,24(sp)
    800034b0:	01013a03          	ld	s4,16(sp)
    800034b4:	00813a83          	ld	s5,8(sp)
    800034b8:	04010113          	addi	sp,sp,64
    800034bc:	00008067          	ret
    800034c0:	00001517          	auipc	a0,0x1
    800034c4:	cd050513          	addi	a0,a0,-816 # 80004190 <digits+0x18>
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	4b4080e7          	jalr	1204(ra) # 8000297c <panic>

00000000800034d0 <freerange>:
    800034d0:	fc010113          	addi	sp,sp,-64
    800034d4:	000017b7          	lui	a5,0x1
    800034d8:	02913423          	sd	s1,40(sp)
    800034dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800034e0:	009504b3          	add	s1,a0,s1
    800034e4:	fffff537          	lui	a0,0xfffff
    800034e8:	02813823          	sd	s0,48(sp)
    800034ec:	02113c23          	sd	ra,56(sp)
    800034f0:	03213023          	sd	s2,32(sp)
    800034f4:	01313c23          	sd	s3,24(sp)
    800034f8:	01413823          	sd	s4,16(sp)
    800034fc:	01513423          	sd	s5,8(sp)
    80003500:	01613023          	sd	s6,0(sp)
    80003504:	04010413          	addi	s0,sp,64
    80003508:	00a4f4b3          	and	s1,s1,a0
    8000350c:	00f487b3          	add	a5,s1,a5
    80003510:	06f5e463          	bltu	a1,a5,80003578 <freerange+0xa8>
    80003514:	00002a97          	auipc	s5,0x2
    80003518:	4eca8a93          	addi	s5,s5,1260 # 80005a00 <end>
    8000351c:	0954e263          	bltu	s1,s5,800035a0 <freerange+0xd0>
    80003520:	01100993          	li	s3,17
    80003524:	01b99993          	slli	s3,s3,0x1b
    80003528:	0734fc63          	bgeu	s1,s3,800035a0 <freerange+0xd0>
    8000352c:	00058a13          	mv	s4,a1
    80003530:	00001917          	auipc	s2,0x1
    80003534:	24090913          	addi	s2,s2,576 # 80004770 <kmem>
    80003538:	00002b37          	lui	s6,0x2
    8000353c:	0140006f          	j	80003550 <freerange+0x80>
    80003540:	000017b7          	lui	a5,0x1
    80003544:	00f484b3          	add	s1,s1,a5
    80003548:	0554ec63          	bltu	s1,s5,800035a0 <freerange+0xd0>
    8000354c:	0534fa63          	bgeu	s1,s3,800035a0 <freerange+0xd0>
    80003550:	00001637          	lui	a2,0x1
    80003554:	00100593          	li	a1,1
    80003558:	00048513          	mv	a0,s1
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	50c080e7          	jalr	1292(ra) # 80003a68 <__memset>
    80003564:	00093703          	ld	a4,0(s2)
    80003568:	016487b3          	add	a5,s1,s6
    8000356c:	00e4b023          	sd	a4,0(s1)
    80003570:	00993023          	sd	s1,0(s2)
    80003574:	fcfa76e3          	bgeu	s4,a5,80003540 <freerange+0x70>
    80003578:	03813083          	ld	ra,56(sp)
    8000357c:	03013403          	ld	s0,48(sp)
    80003580:	02813483          	ld	s1,40(sp)
    80003584:	02013903          	ld	s2,32(sp)
    80003588:	01813983          	ld	s3,24(sp)
    8000358c:	01013a03          	ld	s4,16(sp)
    80003590:	00813a83          	ld	s5,8(sp)
    80003594:	00013b03          	ld	s6,0(sp)
    80003598:	04010113          	addi	sp,sp,64
    8000359c:	00008067          	ret
    800035a0:	00001517          	auipc	a0,0x1
    800035a4:	bf050513          	addi	a0,a0,-1040 # 80004190 <digits+0x18>
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	3d4080e7          	jalr	980(ra) # 8000297c <panic>

00000000800035b0 <kfree>:
    800035b0:	fe010113          	addi	sp,sp,-32
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00913423          	sd	s1,8(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	03451793          	slli	a5,a0,0x34
    800035c8:	04079c63          	bnez	a5,80003620 <kfree+0x70>
    800035cc:	00002797          	auipc	a5,0x2
    800035d0:	43478793          	addi	a5,a5,1076 # 80005a00 <end>
    800035d4:	00050493          	mv	s1,a0
    800035d8:	04f56463          	bltu	a0,a5,80003620 <kfree+0x70>
    800035dc:	01100793          	li	a5,17
    800035e0:	01b79793          	slli	a5,a5,0x1b
    800035e4:	02f57e63          	bgeu	a0,a5,80003620 <kfree+0x70>
    800035e8:	00001637          	lui	a2,0x1
    800035ec:	00100593          	li	a1,1
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	478080e7          	jalr	1144(ra) # 80003a68 <__memset>
    800035f8:	00001797          	auipc	a5,0x1
    800035fc:	17878793          	addi	a5,a5,376 # 80004770 <kmem>
    80003600:	0007b703          	ld	a4,0(a5)
    80003604:	01813083          	ld	ra,24(sp)
    80003608:	01013403          	ld	s0,16(sp)
    8000360c:	00e4b023          	sd	a4,0(s1)
    80003610:	0097b023          	sd	s1,0(a5)
    80003614:	00813483          	ld	s1,8(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret
    80003620:	00001517          	auipc	a0,0x1
    80003624:	b7050513          	addi	a0,a0,-1168 # 80004190 <digits+0x18>
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	354080e7          	jalr	852(ra) # 8000297c <panic>

0000000080003630 <kalloc>:
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	02010413          	addi	s0,sp,32
    80003644:	00001797          	auipc	a5,0x1
    80003648:	12c78793          	addi	a5,a5,300 # 80004770 <kmem>
    8000364c:	0007b483          	ld	s1,0(a5)
    80003650:	02048063          	beqz	s1,80003670 <kalloc+0x40>
    80003654:	0004b703          	ld	a4,0(s1)
    80003658:	00001637          	lui	a2,0x1
    8000365c:	00500593          	li	a1,5
    80003660:	00048513          	mv	a0,s1
    80003664:	00e7b023          	sd	a4,0(a5)
    80003668:	00000097          	auipc	ra,0x0
    8000366c:	400080e7          	jalr	1024(ra) # 80003a68 <__memset>
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00048513          	mv	a0,s1
    8000367c:	00813483          	ld	s1,8(sp)
    80003680:	02010113          	addi	sp,sp,32
    80003684:	00008067          	ret

0000000080003688 <initlock>:
    80003688:	ff010113          	addi	sp,sp,-16
    8000368c:	00813423          	sd	s0,8(sp)
    80003690:	01010413          	addi	s0,sp,16
    80003694:	00813403          	ld	s0,8(sp)
    80003698:	00b53423          	sd	a1,8(a0)
    8000369c:	00052023          	sw	zero,0(a0)
    800036a0:	00053823          	sd	zero,16(a0)
    800036a4:	01010113          	addi	sp,sp,16
    800036a8:	00008067          	ret

00000000800036ac <acquire>:
    800036ac:	fe010113          	addi	sp,sp,-32
    800036b0:	00813823          	sd	s0,16(sp)
    800036b4:	00913423          	sd	s1,8(sp)
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	01213023          	sd	s2,0(sp)
    800036c0:	02010413          	addi	s0,sp,32
    800036c4:	00050493          	mv	s1,a0
    800036c8:	10002973          	csrr	s2,sstatus
    800036cc:	100027f3          	csrr	a5,sstatus
    800036d0:	ffd7f793          	andi	a5,a5,-3
    800036d4:	10079073          	csrw	sstatus,a5
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	8e8080e7          	jalr	-1816(ra) # 80001fc0 <mycpu>
    800036e0:	07852783          	lw	a5,120(a0)
    800036e4:	06078e63          	beqz	a5,80003760 <acquire+0xb4>
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	8d8080e7          	jalr	-1832(ra) # 80001fc0 <mycpu>
    800036f0:	07852783          	lw	a5,120(a0)
    800036f4:	0004a703          	lw	a4,0(s1)
    800036f8:	0017879b          	addiw	a5,a5,1
    800036fc:	06f52c23          	sw	a5,120(a0)
    80003700:	04071063          	bnez	a4,80003740 <acquire+0x94>
    80003704:	00100713          	li	a4,1
    80003708:	00070793          	mv	a5,a4
    8000370c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003710:	0007879b          	sext.w	a5,a5
    80003714:	fe079ae3          	bnez	a5,80003708 <acquire+0x5c>
    80003718:	0ff0000f          	fence
    8000371c:	fffff097          	auipc	ra,0xfffff
    80003720:	8a4080e7          	jalr	-1884(ra) # 80001fc0 <mycpu>
    80003724:	01813083          	ld	ra,24(sp)
    80003728:	01013403          	ld	s0,16(sp)
    8000372c:	00a4b823          	sd	a0,16(s1)
    80003730:	00013903          	ld	s2,0(sp)
    80003734:	00813483          	ld	s1,8(sp)
    80003738:	02010113          	addi	sp,sp,32
    8000373c:	00008067          	ret
    80003740:	0104b903          	ld	s2,16(s1)
    80003744:	fffff097          	auipc	ra,0xfffff
    80003748:	87c080e7          	jalr	-1924(ra) # 80001fc0 <mycpu>
    8000374c:	faa91ce3          	bne	s2,a0,80003704 <acquire+0x58>
    80003750:	00001517          	auipc	a0,0x1
    80003754:	a4850513          	addi	a0,a0,-1464 # 80004198 <digits+0x20>
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	224080e7          	jalr	548(ra) # 8000297c <panic>
    80003760:	00195913          	srli	s2,s2,0x1
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	85c080e7          	jalr	-1956(ra) # 80001fc0 <mycpu>
    8000376c:	00197913          	andi	s2,s2,1
    80003770:	07252e23          	sw	s2,124(a0)
    80003774:	f75ff06f          	j	800036e8 <acquire+0x3c>

0000000080003778 <release>:
    80003778:	fe010113          	addi	sp,sp,-32
    8000377c:	00813823          	sd	s0,16(sp)
    80003780:	00113c23          	sd	ra,24(sp)
    80003784:	00913423          	sd	s1,8(sp)
    80003788:	01213023          	sd	s2,0(sp)
    8000378c:	02010413          	addi	s0,sp,32
    80003790:	00052783          	lw	a5,0(a0)
    80003794:	00079a63          	bnez	a5,800037a8 <release+0x30>
    80003798:	00001517          	auipc	a0,0x1
    8000379c:	a0850513          	addi	a0,a0,-1528 # 800041a0 <digits+0x28>
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	1dc080e7          	jalr	476(ra) # 8000297c <panic>
    800037a8:	01053903          	ld	s2,16(a0)
    800037ac:	00050493          	mv	s1,a0
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	810080e7          	jalr	-2032(ra) # 80001fc0 <mycpu>
    800037b8:	fea910e3          	bne	s2,a0,80003798 <release+0x20>
    800037bc:	0004b823          	sd	zero,16(s1)
    800037c0:	0ff0000f          	fence
    800037c4:	0f50000f          	fence	iorw,ow
    800037c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	7f4080e7          	jalr	2036(ra) # 80001fc0 <mycpu>
    800037d4:	100027f3          	csrr	a5,sstatus
    800037d8:	0027f793          	andi	a5,a5,2
    800037dc:	04079a63          	bnez	a5,80003830 <release+0xb8>
    800037e0:	07852783          	lw	a5,120(a0)
    800037e4:	02f05e63          	blez	a5,80003820 <release+0xa8>
    800037e8:	fff7871b          	addiw	a4,a5,-1
    800037ec:	06e52c23          	sw	a4,120(a0)
    800037f0:	00071c63          	bnez	a4,80003808 <release+0x90>
    800037f4:	07c52783          	lw	a5,124(a0)
    800037f8:	00078863          	beqz	a5,80003808 <release+0x90>
    800037fc:	100027f3          	csrr	a5,sstatus
    80003800:	0027e793          	ori	a5,a5,2
    80003804:	10079073          	csrw	sstatus,a5
    80003808:	01813083          	ld	ra,24(sp)
    8000380c:	01013403          	ld	s0,16(sp)
    80003810:	00813483          	ld	s1,8(sp)
    80003814:	00013903          	ld	s2,0(sp)
    80003818:	02010113          	addi	sp,sp,32
    8000381c:	00008067          	ret
    80003820:	00001517          	auipc	a0,0x1
    80003824:	9a050513          	addi	a0,a0,-1632 # 800041c0 <digits+0x48>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	154080e7          	jalr	340(ra) # 8000297c <panic>
    80003830:	00001517          	auipc	a0,0x1
    80003834:	97850513          	addi	a0,a0,-1672 # 800041a8 <digits+0x30>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	144080e7          	jalr	324(ra) # 8000297c <panic>

0000000080003840 <holding>:
    80003840:	00052783          	lw	a5,0(a0)
    80003844:	00079663          	bnez	a5,80003850 <holding+0x10>
    80003848:	00000513          	li	a0,0
    8000384c:	00008067          	ret
    80003850:	fe010113          	addi	sp,sp,-32
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	00113c23          	sd	ra,24(sp)
    80003860:	02010413          	addi	s0,sp,32
    80003864:	01053483          	ld	s1,16(a0)
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	758080e7          	jalr	1880(ra) # 80001fc0 <mycpu>
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	40a48533          	sub	a0,s1,a0
    8000387c:	00153513          	seqz	a0,a0
    80003880:	00813483          	ld	s1,8(sp)
    80003884:	02010113          	addi	sp,sp,32
    80003888:	00008067          	ret

000000008000388c <push_off>:
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00813823          	sd	s0,16(sp)
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	02010413          	addi	s0,sp,32
    800038a0:	100024f3          	csrr	s1,sstatus
    800038a4:	100027f3          	csrr	a5,sstatus
    800038a8:	ffd7f793          	andi	a5,a5,-3
    800038ac:	10079073          	csrw	sstatus,a5
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	710080e7          	jalr	1808(ra) # 80001fc0 <mycpu>
    800038b8:	07852783          	lw	a5,120(a0)
    800038bc:	02078663          	beqz	a5,800038e8 <push_off+0x5c>
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	700080e7          	jalr	1792(ra) # 80001fc0 <mycpu>
    800038c8:	07852783          	lw	a5,120(a0)
    800038cc:	01813083          	ld	ra,24(sp)
    800038d0:	01013403          	ld	s0,16(sp)
    800038d4:	0017879b          	addiw	a5,a5,1
    800038d8:	06f52c23          	sw	a5,120(a0)
    800038dc:	00813483          	ld	s1,8(sp)
    800038e0:	02010113          	addi	sp,sp,32
    800038e4:	00008067          	ret
    800038e8:	0014d493          	srli	s1,s1,0x1
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	6d4080e7          	jalr	1748(ra) # 80001fc0 <mycpu>
    800038f4:	0014f493          	andi	s1,s1,1
    800038f8:	06952e23          	sw	s1,124(a0)
    800038fc:	fc5ff06f          	j	800038c0 <push_off+0x34>

0000000080003900 <pop_off>:
    80003900:	ff010113          	addi	sp,sp,-16
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	00113423          	sd	ra,8(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	6b0080e7          	jalr	1712(ra) # 80001fc0 <mycpu>
    80003918:	100027f3          	csrr	a5,sstatus
    8000391c:	0027f793          	andi	a5,a5,2
    80003920:	04079663          	bnez	a5,8000396c <pop_off+0x6c>
    80003924:	07852783          	lw	a5,120(a0)
    80003928:	02f05a63          	blez	a5,8000395c <pop_off+0x5c>
    8000392c:	fff7871b          	addiw	a4,a5,-1
    80003930:	06e52c23          	sw	a4,120(a0)
    80003934:	00071c63          	bnez	a4,8000394c <pop_off+0x4c>
    80003938:	07c52783          	lw	a5,124(a0)
    8000393c:	00078863          	beqz	a5,8000394c <pop_off+0x4c>
    80003940:	100027f3          	csrr	a5,sstatus
    80003944:	0027e793          	ori	a5,a5,2
    80003948:	10079073          	csrw	sstatus,a5
    8000394c:	00813083          	ld	ra,8(sp)
    80003950:	00013403          	ld	s0,0(sp)
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret
    8000395c:	00001517          	auipc	a0,0x1
    80003960:	86450513          	addi	a0,a0,-1948 # 800041c0 <digits+0x48>
    80003964:	fffff097          	auipc	ra,0xfffff
    80003968:	018080e7          	jalr	24(ra) # 8000297c <panic>
    8000396c:	00001517          	auipc	a0,0x1
    80003970:	83c50513          	addi	a0,a0,-1988 # 800041a8 <digits+0x30>
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	008080e7          	jalr	8(ra) # 8000297c <panic>

000000008000397c <push_on>:
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	100024f3          	csrr	s1,sstatus
    80003994:	100027f3          	csrr	a5,sstatus
    80003998:	0027e793          	ori	a5,a5,2
    8000399c:	10079073          	csrw	sstatus,a5
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	620080e7          	jalr	1568(ra) # 80001fc0 <mycpu>
    800039a8:	07852783          	lw	a5,120(a0)
    800039ac:	02078663          	beqz	a5,800039d8 <push_on+0x5c>
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	610080e7          	jalr	1552(ra) # 80001fc0 <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	0017879b          	addiw	a5,a5,1
    800039c8:	06f52c23          	sw	a5,120(a0)
    800039cc:	00813483          	ld	s1,8(sp)
    800039d0:	02010113          	addi	sp,sp,32
    800039d4:	00008067          	ret
    800039d8:	0014d493          	srli	s1,s1,0x1
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	5e4080e7          	jalr	1508(ra) # 80001fc0 <mycpu>
    800039e4:	0014f493          	andi	s1,s1,1
    800039e8:	06952e23          	sw	s1,124(a0)
    800039ec:	fc5ff06f          	j	800039b0 <push_on+0x34>

00000000800039f0 <pop_on>:
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00813023          	sd	s0,0(sp)
    800039f8:	00113423          	sd	ra,8(sp)
    800039fc:	01010413          	addi	s0,sp,16
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	5c0080e7          	jalr	1472(ra) # 80001fc0 <mycpu>
    80003a08:	100027f3          	csrr	a5,sstatus
    80003a0c:	0027f793          	andi	a5,a5,2
    80003a10:	04078463          	beqz	a5,80003a58 <pop_on+0x68>
    80003a14:	07852783          	lw	a5,120(a0)
    80003a18:	02f05863          	blez	a5,80003a48 <pop_on+0x58>
    80003a1c:	fff7879b          	addiw	a5,a5,-1
    80003a20:	06f52c23          	sw	a5,120(a0)
    80003a24:	07853783          	ld	a5,120(a0)
    80003a28:	00079863          	bnez	a5,80003a38 <pop_on+0x48>
    80003a2c:	100027f3          	csrr	a5,sstatus
    80003a30:	ffd7f793          	andi	a5,a5,-3
    80003a34:	10079073          	csrw	sstatus,a5
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret
    80003a48:	00000517          	auipc	a0,0x0
    80003a4c:	7a050513          	addi	a0,a0,1952 # 800041e8 <digits+0x70>
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	f2c080e7          	jalr	-212(ra) # 8000297c <panic>
    80003a58:	00000517          	auipc	a0,0x0
    80003a5c:	77050513          	addi	a0,a0,1904 # 800041c8 <digits+0x50>
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	f1c080e7          	jalr	-228(ra) # 8000297c <panic>

0000000080003a68 <__memset>:
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00813423          	sd	s0,8(sp)
    80003a70:	01010413          	addi	s0,sp,16
    80003a74:	1a060e63          	beqz	a2,80003c30 <__memset+0x1c8>
    80003a78:	40a007b3          	neg	a5,a0
    80003a7c:	0077f793          	andi	a5,a5,7
    80003a80:	00778693          	addi	a3,a5,7
    80003a84:	00b00813          	li	a6,11
    80003a88:	0ff5f593          	andi	a1,a1,255
    80003a8c:	fff6071b          	addiw	a4,a2,-1
    80003a90:	1b06e663          	bltu	a3,a6,80003c3c <__memset+0x1d4>
    80003a94:	1cd76463          	bltu	a4,a3,80003c5c <__memset+0x1f4>
    80003a98:	1a078e63          	beqz	a5,80003c54 <__memset+0x1ec>
    80003a9c:	00b50023          	sb	a1,0(a0)
    80003aa0:	00100713          	li	a4,1
    80003aa4:	1ae78463          	beq	a5,a4,80003c4c <__memset+0x1e4>
    80003aa8:	00b500a3          	sb	a1,1(a0)
    80003aac:	00200713          	li	a4,2
    80003ab0:	1ae78a63          	beq	a5,a4,80003c64 <__memset+0x1fc>
    80003ab4:	00b50123          	sb	a1,2(a0)
    80003ab8:	00300713          	li	a4,3
    80003abc:	18e78463          	beq	a5,a4,80003c44 <__memset+0x1dc>
    80003ac0:	00b501a3          	sb	a1,3(a0)
    80003ac4:	00400713          	li	a4,4
    80003ac8:	1ae78263          	beq	a5,a4,80003c6c <__memset+0x204>
    80003acc:	00b50223          	sb	a1,4(a0)
    80003ad0:	00500713          	li	a4,5
    80003ad4:	1ae78063          	beq	a5,a4,80003c74 <__memset+0x20c>
    80003ad8:	00b502a3          	sb	a1,5(a0)
    80003adc:	00700713          	li	a4,7
    80003ae0:	18e79e63          	bne	a5,a4,80003c7c <__memset+0x214>
    80003ae4:	00b50323          	sb	a1,6(a0)
    80003ae8:	00700e93          	li	t4,7
    80003aec:	00859713          	slli	a4,a1,0x8
    80003af0:	00e5e733          	or	a4,a1,a4
    80003af4:	01059e13          	slli	t3,a1,0x10
    80003af8:	01c76e33          	or	t3,a4,t3
    80003afc:	01859313          	slli	t1,a1,0x18
    80003b00:	006e6333          	or	t1,t3,t1
    80003b04:	02059893          	slli	a7,a1,0x20
    80003b08:	40f60e3b          	subw	t3,a2,a5
    80003b0c:	011368b3          	or	a7,t1,a7
    80003b10:	02859813          	slli	a6,a1,0x28
    80003b14:	0108e833          	or	a6,a7,a6
    80003b18:	03059693          	slli	a3,a1,0x30
    80003b1c:	003e589b          	srliw	a7,t3,0x3
    80003b20:	00d866b3          	or	a3,a6,a3
    80003b24:	03859713          	slli	a4,a1,0x38
    80003b28:	00389813          	slli	a6,a7,0x3
    80003b2c:	00f507b3          	add	a5,a0,a5
    80003b30:	00e6e733          	or	a4,a3,a4
    80003b34:	000e089b          	sext.w	a7,t3
    80003b38:	00f806b3          	add	a3,a6,a5
    80003b3c:	00e7b023          	sd	a4,0(a5)
    80003b40:	00878793          	addi	a5,a5,8
    80003b44:	fed79ce3          	bne	a5,a3,80003b3c <__memset+0xd4>
    80003b48:	ff8e7793          	andi	a5,t3,-8
    80003b4c:	0007871b          	sext.w	a4,a5
    80003b50:	01d787bb          	addw	a5,a5,t4
    80003b54:	0ce88e63          	beq	a7,a4,80003c30 <__memset+0x1c8>
    80003b58:	00f50733          	add	a4,a0,a5
    80003b5c:	00b70023          	sb	a1,0(a4)
    80003b60:	0017871b          	addiw	a4,a5,1
    80003b64:	0cc77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b68:	00e50733          	add	a4,a0,a4
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	0027871b          	addiw	a4,a5,2
    80003b74:	0ac77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	0037871b          	addiw	a4,a5,3
    80003b84:	0ac77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	0047871b          	addiw	a4,a5,4
    80003b94:	08c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0057871b          	addiw	a4,a5,5
    80003ba4:	08c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0067871b          	addiw	a4,a5,6
    80003bb4:	06c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0077871b          	addiw	a4,a5,7
    80003bc4:	06c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0087871b          	addiw	a4,a5,8
    80003bd4:	04c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0097871b          	addiw	a4,a5,9
    80003be4:	04c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	00a7871b          	addiw	a4,a5,10
    80003bf4:	02c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	00b7871b          	addiw	a4,a5,11
    80003c04:	02c77663          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	00c7871b          	addiw	a4,a5,12
    80003c14:	00c77e63          	bgeu	a4,a2,80003c30 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	00d7879b          	addiw	a5,a5,13
    80003c24:	00c7f663          	bgeu	a5,a2,80003c30 <__memset+0x1c8>
    80003c28:	00f507b3          	add	a5,a0,a5
    80003c2c:	00b78023          	sb	a1,0(a5)
    80003c30:	00813403          	ld	s0,8(sp)
    80003c34:	01010113          	addi	sp,sp,16
    80003c38:	00008067          	ret
    80003c3c:	00b00693          	li	a3,11
    80003c40:	e55ff06f          	j	80003a94 <__memset+0x2c>
    80003c44:	00300e93          	li	t4,3
    80003c48:	ea5ff06f          	j	80003aec <__memset+0x84>
    80003c4c:	00100e93          	li	t4,1
    80003c50:	e9dff06f          	j	80003aec <__memset+0x84>
    80003c54:	00000e93          	li	t4,0
    80003c58:	e95ff06f          	j	80003aec <__memset+0x84>
    80003c5c:	00000793          	li	a5,0
    80003c60:	ef9ff06f          	j	80003b58 <__memset+0xf0>
    80003c64:	00200e93          	li	t4,2
    80003c68:	e85ff06f          	j	80003aec <__memset+0x84>
    80003c6c:	00400e93          	li	t4,4
    80003c70:	e7dff06f          	j	80003aec <__memset+0x84>
    80003c74:	00500e93          	li	t4,5
    80003c78:	e75ff06f          	j	80003aec <__memset+0x84>
    80003c7c:	00600e93          	li	t4,6
    80003c80:	e6dff06f          	j	80003aec <__memset+0x84>

0000000080003c84 <__memmove>:
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00813423          	sd	s0,8(sp)
    80003c8c:	01010413          	addi	s0,sp,16
    80003c90:	0e060863          	beqz	a2,80003d80 <__memmove+0xfc>
    80003c94:	fff6069b          	addiw	a3,a2,-1
    80003c98:	0006881b          	sext.w	a6,a3
    80003c9c:	0ea5e863          	bltu	a1,a0,80003d8c <__memmove+0x108>
    80003ca0:	00758713          	addi	a4,a1,7
    80003ca4:	00a5e7b3          	or	a5,a1,a0
    80003ca8:	40a70733          	sub	a4,a4,a0
    80003cac:	0077f793          	andi	a5,a5,7
    80003cb0:	00f73713          	sltiu	a4,a4,15
    80003cb4:	00174713          	xori	a4,a4,1
    80003cb8:	0017b793          	seqz	a5,a5
    80003cbc:	00e7f7b3          	and	a5,a5,a4
    80003cc0:	10078863          	beqz	a5,80003dd0 <__memmove+0x14c>
    80003cc4:	00900793          	li	a5,9
    80003cc8:	1107f463          	bgeu	a5,a6,80003dd0 <__memmove+0x14c>
    80003ccc:	0036581b          	srliw	a6,a2,0x3
    80003cd0:	fff8081b          	addiw	a6,a6,-1
    80003cd4:	02081813          	slli	a6,a6,0x20
    80003cd8:	01d85893          	srli	a7,a6,0x1d
    80003cdc:	00858813          	addi	a6,a1,8
    80003ce0:	00058793          	mv	a5,a1
    80003ce4:	00050713          	mv	a4,a0
    80003ce8:	01088833          	add	a6,a7,a6
    80003cec:	0007b883          	ld	a7,0(a5)
    80003cf0:	00878793          	addi	a5,a5,8
    80003cf4:	00870713          	addi	a4,a4,8
    80003cf8:	ff173c23          	sd	a7,-8(a4)
    80003cfc:	ff0798e3          	bne	a5,a6,80003cec <__memmove+0x68>
    80003d00:	ff867713          	andi	a4,a2,-8
    80003d04:	02071793          	slli	a5,a4,0x20
    80003d08:	0207d793          	srli	a5,a5,0x20
    80003d0c:	00f585b3          	add	a1,a1,a5
    80003d10:	40e686bb          	subw	a3,a3,a4
    80003d14:	00f507b3          	add	a5,a0,a5
    80003d18:	06e60463          	beq	a2,a4,80003d80 <__memmove+0xfc>
    80003d1c:	0005c703          	lbu	a4,0(a1)
    80003d20:	00e78023          	sb	a4,0(a5)
    80003d24:	04068e63          	beqz	a3,80003d80 <__memmove+0xfc>
    80003d28:	0015c603          	lbu	a2,1(a1)
    80003d2c:	00100713          	li	a4,1
    80003d30:	00c780a3          	sb	a2,1(a5)
    80003d34:	04e68663          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d38:	0025c603          	lbu	a2,2(a1)
    80003d3c:	00200713          	li	a4,2
    80003d40:	00c78123          	sb	a2,2(a5)
    80003d44:	02e68e63          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d48:	0035c603          	lbu	a2,3(a1)
    80003d4c:	00300713          	li	a4,3
    80003d50:	00c781a3          	sb	a2,3(a5)
    80003d54:	02e68663          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d58:	0045c603          	lbu	a2,4(a1)
    80003d5c:	00400713          	li	a4,4
    80003d60:	00c78223          	sb	a2,4(a5)
    80003d64:	00e68e63          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d68:	0055c603          	lbu	a2,5(a1)
    80003d6c:	00500713          	li	a4,5
    80003d70:	00c782a3          	sb	a2,5(a5)
    80003d74:	00e68663          	beq	a3,a4,80003d80 <__memmove+0xfc>
    80003d78:	0065c703          	lbu	a4,6(a1)
    80003d7c:	00e78323          	sb	a4,6(a5)
    80003d80:	00813403          	ld	s0,8(sp)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret
    80003d8c:	02061713          	slli	a4,a2,0x20
    80003d90:	02075713          	srli	a4,a4,0x20
    80003d94:	00e587b3          	add	a5,a1,a4
    80003d98:	f0f574e3          	bgeu	a0,a5,80003ca0 <__memmove+0x1c>
    80003d9c:	02069613          	slli	a2,a3,0x20
    80003da0:	02065613          	srli	a2,a2,0x20
    80003da4:	fff64613          	not	a2,a2
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00c78633          	add	a2,a5,a2
    80003db0:	fff7c683          	lbu	a3,-1(a5)
    80003db4:	fff78793          	addi	a5,a5,-1
    80003db8:	fff70713          	addi	a4,a4,-1
    80003dbc:	00d70023          	sb	a3,0(a4)
    80003dc0:	fec798e3          	bne	a5,a2,80003db0 <__memmove+0x12c>
    80003dc4:	00813403          	ld	s0,8(sp)
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret
    80003dd0:	02069713          	slli	a4,a3,0x20
    80003dd4:	02075713          	srli	a4,a4,0x20
    80003dd8:	00170713          	addi	a4,a4,1
    80003ddc:	00e50733          	add	a4,a0,a4
    80003de0:	00050793          	mv	a5,a0
    80003de4:	0005c683          	lbu	a3,0(a1)
    80003de8:	00178793          	addi	a5,a5,1
    80003dec:	00158593          	addi	a1,a1,1
    80003df0:	fed78fa3          	sb	a3,-1(a5)
    80003df4:	fee798e3          	bne	a5,a4,80003de4 <__memmove+0x160>
    80003df8:	f89ff06f          	j	80003d80 <__memmove+0xfc>

0000000080003dfc <__putc>:
    80003dfc:	fe010113          	addi	sp,sp,-32
    80003e00:	00813823          	sd	s0,16(sp)
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	02010413          	addi	s0,sp,32
    80003e0c:	00050793          	mv	a5,a0
    80003e10:	fef40593          	addi	a1,s0,-17
    80003e14:	00100613          	li	a2,1
    80003e18:	00000513          	li	a0,0
    80003e1c:	fef407a3          	sb	a5,-17(s0)
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	b3c080e7          	jalr	-1220(ra) # 8000295c <console_write>
    80003e28:	01813083          	ld	ra,24(sp)
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	02010113          	addi	sp,sp,32
    80003e34:	00008067          	ret

0000000080003e38 <__getc>:
    80003e38:	fe010113          	addi	sp,sp,-32
    80003e3c:	00813823          	sd	s0,16(sp)
    80003e40:	00113c23          	sd	ra,24(sp)
    80003e44:	02010413          	addi	s0,sp,32
    80003e48:	fe840593          	addi	a1,s0,-24
    80003e4c:	00100613          	li	a2,1
    80003e50:	00000513          	li	a0,0
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	ae8080e7          	jalr	-1304(ra) # 8000293c <console_read>
    80003e5c:	fe844503          	lbu	a0,-24(s0)
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	02010113          	addi	sp,sp,32
    80003e6c:	00008067          	ret

0000000080003e70 <console_handler>:
    80003e70:	fe010113          	addi	sp,sp,-32
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00113c23          	sd	ra,24(sp)
    80003e7c:	00913423          	sd	s1,8(sp)
    80003e80:	02010413          	addi	s0,sp,32
    80003e84:	14202773          	csrr	a4,scause
    80003e88:	100027f3          	csrr	a5,sstatus
    80003e8c:	0027f793          	andi	a5,a5,2
    80003e90:	06079e63          	bnez	a5,80003f0c <console_handler+0x9c>
    80003e94:	00074c63          	bltz	a4,80003eac <console_handler+0x3c>
    80003e98:	01813083          	ld	ra,24(sp)
    80003e9c:	01013403          	ld	s0,16(sp)
    80003ea0:	00813483          	ld	s1,8(sp)
    80003ea4:	02010113          	addi	sp,sp,32
    80003ea8:	00008067          	ret
    80003eac:	0ff77713          	andi	a4,a4,255
    80003eb0:	00900793          	li	a5,9
    80003eb4:	fef712e3          	bne	a4,a5,80003e98 <console_handler+0x28>
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	6dc080e7          	jalr	1756(ra) # 80002594 <plic_claim>
    80003ec0:	00a00793          	li	a5,10
    80003ec4:	00050493          	mv	s1,a0
    80003ec8:	02f50c63          	beq	a0,a5,80003f00 <console_handler+0x90>
    80003ecc:	fc0506e3          	beqz	a0,80003e98 <console_handler+0x28>
    80003ed0:	00050593          	mv	a1,a0
    80003ed4:	00000517          	auipc	a0,0x0
    80003ed8:	21c50513          	addi	a0,a0,540 # 800040f0 <CONSOLE_STATUS+0xe0>
    80003edc:	fffff097          	auipc	ra,0xfffff
    80003ee0:	afc080e7          	jalr	-1284(ra) # 800029d8 <__printf>
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	01813083          	ld	ra,24(sp)
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	00813483          	ld	s1,8(sp)
    80003ef4:	02010113          	addi	sp,sp,32
    80003ef8:	ffffe317          	auipc	t1,0xffffe
    80003efc:	6d430067          	jr	1748(t1) # 800025cc <plic_complete>
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	3e0080e7          	jalr	992(ra) # 800032e0 <uartintr>
    80003f08:	fddff06f          	j	80003ee4 <console_handler+0x74>
    80003f0c:	00000517          	auipc	a0,0x0
    80003f10:	2e450513          	addi	a0,a0,740 # 800041f0 <digits+0x78>
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	a68080e7          	jalr	-1432(ra) # 8000297c <panic>
	...
