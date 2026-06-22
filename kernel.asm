
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
    8000001c:	4e9010ef          	jal	ra,80001d04 <start>

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
    80001244:	011000ef          	jal	ra,80001a54 <HandleInterupt>

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
    __putc('}');
    80001338:	07d00513          	li	a0,125
    8000133c:	00003097          	auipc	ra,0x3
    80001340:	a90080e7          	jalr	-1392(ra) # 80003dcc <__putc>
}
    80001344:	00813083          	ld	ra,8(sp)
    80001348:	00013403          	ld	s0,0(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <mainU>:

void mainU(){
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00113423          	sd	ra,8(sp)
    8000135c:	00813023          	sd	s0,0(sp)
    80001360:	01010413          	addi	s0,sp,16
    // *(a3+sizeof(char)) ='f';
    // __putc(*a3);
    // __putc(*(a3+1));
    // __putc(*a1);
    // __putc(*(a1+1));
    thread_t t = thread_create(my_thread_body);
    80001364:	00000517          	auipc	a0,0x0
    80001368:	fc450513          	addi	a0,a0,-60 # 80001328 <my_thread_body>
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	7b0080e7          	jalr	1968(ra) # 80001b1c <thread_create>
    thread_start(t);
    80001374:	00001097          	auipc	ra,0x1
    80001378:	800080e7          	jalr	-2048(ra) # 80001b74 <thread_start>
}
    8000137c:	00813083          	ld	ra,8(sp)
    80001380:	00013403          	ld	s0,0(sp)
    80001384:	01010113          	addi	sp,sp,16
    80001388:	00008067          	ret

000000008000138c <drop_to_user>:




void drop_to_user(void (*fn)()) {
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    80001398:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    8000139c:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    800013a0:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    800013a4:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800013a8:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    800013ac:	10200073          	sret
}
    800013b0:	00813403          	ld	s0,8(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <main>:
void interupt();
int main() {
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00113423          	sd	ra,8(sp)
    800013c4:	00813023          	sd	s0,0(sp)
    800013c8:	01010413          	addi	s0,sp,16
    start_main_thread();
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	800080e7          	jalr	-2048(ra) # 80001bcc <start_main_thread>
    __asm__ volatile("csrw sie, zero");
    800013d4:	10401073          	csrw	sie,zero
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    800013d8:	00000797          	auipc	a5,0x0
    800013dc:	de878793          	addi	a5,a5,-536 # 800011c0 <interupt>
    800013e0:	10579073          	csrw	stvec,a5
    drop_to_user(mainU);
    800013e4:	00000517          	auipc	a0,0x0
    800013e8:	f7050513          	addi	a0,a0,-144 # 80001354 <mainU>
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	fa0080e7          	jalr	-96(ra) # 8000138c <drop_to_user>
    return 0;
}
    800013f4:	00000513          	li	a0,0
    800013f8:	00813083          	ld	ra,8(sp)
    800013fc:	00013403          	ld	s0,0(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_ZN6ThreadC1Ev>:
#include "Thread.hpp"
#include "Scheduler.hpp"

#include "../lib/console.h"

Thread::Thread() {
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
}
    80001414:	00813403          	ld	s0,8(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_ZN6Thread4initEv>:

void Thread::init() {
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
}
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_ZN6Thread11copyContextEPm>:
void Thread::copyContext(size_t* ctx) {
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00813423          	sd	s0,8(sp)
    80001440:	01010413          	addi	s0,sp,16
    Context* cont = reinterpret_cast<Context*>(ctx);
    for (int i = 0;i<32;i++) {
    80001444:	00000713          	li	a4,0
    80001448:	01f00793          	li	a5,31
    8000144c:	02e7c863          	blt	a5,a4,8000147c <_ZN6Thread11copyContextEPm+0x44>
        threadContext.x[i] = cont->x[i];
    80001450:	00371793          	slli	a5,a4,0x3
    80001454:	00f587b3          	add	a5,a1,a5
    80001458:	0007b683          	ld	a3,0(a5)
    8000145c:	000017b7          	lui	a5,0x1
    80001460:	00478793          	addi	a5,a5,4 # 1004 <_entry-0x7fffeffc>
    80001464:	00f707b3          	add	a5,a4,a5
    80001468:	00379793          	slli	a5,a5,0x3
    8000146c:	00f507b3          	add	a5,a0,a5
    80001470:	00d7b423          	sd	a3,8(a5)
    for (int i = 0;i<32;i++) {
    80001474:	0017071b          	addiw	a4,a4,1
    80001478:	fd1ff06f          	j	80001448 <_ZN6Thread11copyContextEPm+0x10>
    }
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    8000147c:	01853783          	ld	a5,24(a0)
    80001480:	00008737          	lui	a4,0x8
    80001484:	00e50533          	add	a0,a0,a4
    80001488:	02f53c23          	sd	a5,56(a0)
    threadContext.sepc = cont->sepc;
    8000148c:	1005b783          	ld	a5,256(a1)
    80001490:	12f53423          	sd	a5,296(a0)
    threadContext.sstatus =cont->sstatus;
    80001494:	1085b783          	ld	a5,264(a1)
    80001498:	12f53823          	sd	a5,304(a0)
}
    8000149c:	00813403          	ld	s0,8(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_ZN6Thread10getContextEv>:

size_t* Thread::getContext() {
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    return reinterpret_cast<size_t*>(&threadContext);
}
    800014b4:	000087b7          	lui	a5,0x8
    800014b8:	02878793          	addi	a5,a5,40 # 8028 <_entry-0x7fff7fd8>
    800014bc:	00f50533          	add	a0,a0,a5
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <_ZN6Thread14getNextInQueueEv>:
Thread* Thread::getNextInQueue(){
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00813423          	sd	s0,8(sp)
    800014d4:	01010413          	addi	s0,sp,16
    return next;
}
    800014d8:	01053503          	ld	a0,16(a0)
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_ZN6Thread14getPrevInQueueEv>:
Thread* Thread::getPrevInQueue(){
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00813423          	sd	s0,8(sp)
    800014f0:	01010413          	addi	s0,sp,16
    return prev;
}
    800014f4:	00853503          	ld	a0,8(a0)
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_ZN6Thread14setNextInQueueEPS_>:
void Thread::setNextInQueue(Thread* next){
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00813423          	sd	s0,8(sp)
    8000150c:	01010413          	addi	s0,sp,16
    this->next = next;
    80001510:	00b53823          	sd	a1,16(a0)
}
    80001514:	00813403          	ld	s0,8(sp)
    80001518:	01010113          	addi	sp,sp,16
    8000151c:	00008067          	ret

0000000080001520 <_ZN6Thread14setPrevInQueueEPS_>:
void Thread::setPrevInQueue(Thread* prev){
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00813423          	sd	s0,8(sp)
    80001528:	01010413          	addi	s0,sp,16
    this->prev = prev;
    8000152c:	00b53423          	sd	a1,8(a0)
}
    80001530:	00813403          	ld	s0,8(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    8000153c:	fe010113          	addi	sp,sp,-32
    80001540:	00113c23          	sd	ra,24(sp)
    80001544:	00813823          	sd	s0,16(sp)
    80001548:	00913423          	sd	s1,8(sp)
    8000154c:	01213023          	sd	s2,0(sp)
    80001550:	02010413          	addi	s0,sp,32
    80001554:	00050493          	mv	s1,a0
    80001558:	00060913          	mv	s2,a2
    setNextInQueue(next);
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	fa8080e7          	jalr	-88(ra) # 80001504 <_ZN6Thread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    80001564:	00090593          	mv	a1,s2
    80001568:	00048513          	mv	a0,s1
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	fb4080e7          	jalr	-76(ra) # 80001520 <_ZN6Thread14setPrevInQueueEPS_>
}
    80001574:	01813083          	ld	ra,24(sp)
    80001578:	01013403          	ld	s0,16(sp)
    8000157c:	00813483          	ld	s1,8(sp)
    80001580:	00013903          	ld	s2,0(sp)
    80001584:	02010113          	addi	sp,sp,32
    80001588:	00008067          	ret

000000008000158c <_ZN6Thread5startEv>:
void Thread::start(){
    8000158c:	fe010113          	addi	sp,sp,-32
    80001590:	00113c23          	sd	ra,24(sp)
    80001594:	00813823          	sd	s0,16(sp)
    80001598:	00913423          	sd	s1,8(sp)
    8000159c:	02010413          	addi	s0,sp,32
    800015a0:	00050493          	mv	s1,a0
    Scheduler::AddNewThread(this);
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	27c080e7          	jalr	636(ra) # 80001820 <_ZN9Scheduler12AddNewThreadEP6Thread>
    this->threadContext.sepc = reinterpret_cast<size_t>(&Thread::threadTrampoline);
    800015ac:	000087b7          	lui	a5,0x8
    800015b0:	00f487b3          	add	a5,s1,a5
    800015b4:	00000717          	auipc	a4,0x0
    800015b8:	09070713          	addi	a4,a4,144 # 80001644 <_ZN6Thread16threadTrampolineEPS_>
    800015bc:	12e7b423          	sd	a4,296(a5) # 8128 <_entry-0x7fff7ed8>
    this->threadContext.x[10] = reinterpret_cast<size_t>(this);
    800015c0:	0697bc23          	sd	s1,120(a5)
    Scheduler::yield(Scheduler::GetRunning(),this);
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	0b0080e7          	jalr	176(ra) # 80001674 <_ZN9Scheduler10GetRunningEv>
    800015cc:	00048593          	mv	a1,s1
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	0c4080e7          	jalr	196(ra) # 80001694 <_ZN9Scheduler5yieldEP6ThreadS1_>
}
    800015d8:	01813083          	ld	ra,24(sp)
    800015dc:	01013403          	ld	s0,16(sp)
    800015e0:	00813483          	ld	s1,8(sp)
    800015e4:	02010113          	addi	sp,sp,32
    800015e8:	00008067          	ret

00000000800015ec <_ZN6Thread4joinEv>:
void Thread::join(){
    800015ec:	ff010113          	addi	sp,sp,-16
    800015f0:	00813423          	sd	s0,8(sp)
    800015f4:	01010413          	addi	s0,sp,16

}
    800015f8:	00813403          	ld	s0,8(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_ZN6Thread11setStackPtrEPm>:
void Thread::setStackPtr(size_t* stackPtr) {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00813423          	sd	s0,8(sp)
    8000160c:	01010413          	addi	s0,sp,16
    this->stackPtr = stackPtr;
    80001610:	00b53c23          	sd	a1,24(a0)
}
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_ZN6Thread15setSupervisorSpEPm>:

void Thread::setSupervisorSp(size_t* supervisorSp) {
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00813423          	sd	s0,8(sp)
    80001628:	01010413          	addi	s0,sp,16
    this->supervisorSp = supervisorSp;
    8000162c:	000087b7          	lui	a5,0x8
    80001630:	00f50533          	add	a0,a0,a5
    80001634:	02b53023          	sd	a1,32(a0)
}
    80001638:	00813403          	ld	s0,8(sp)
    8000163c:	01010113          	addi	sp,sp,16
    80001640:	00008067          	ret

0000000080001644 <_ZN6Thread16threadTrampolineEPS_>:
};

class Thread{
protected:
    static void threadTrampoline(Thread* t) {
        if (t->body)t->body();
    80001644:	00053783          	ld	a5,0(a0)
    80001648:	02078463          	beqz	a5,80001670 <_ZN6Thread16threadTrampolineEPS_+0x2c>
    static void threadTrampoline(Thread* t) {
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00113423          	sd	ra,8(sp)
    80001654:	00813023          	sd	s0,0(sp)
    80001658:	01010413          	addi	s0,sp,16
        if (t->body)t->body();
    8000165c:	000780e7          	jalr	a5 # 8000 <_entry-0x7fff8000>
    }
    80001660:	00813083          	ld	ra,8(sp)
    80001664:	00013403          	ld	s0,0(sp)
    80001668:	01010113          	addi	sp,sp,16
    8000166c:	00008067          	ret
    80001670:	00008067          	ret

0000000080001674 <_ZN9Scheduler10GetRunningEv>:
Thread* Scheduler::readyQueue = nullptr;
Thread* Scheduler::readyQueueEnd = nullptr;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    return running;
}
    80001680:	00003517          	auipc	a0,0x3
    80001684:	10053503          	ld	a0,256(a0) # 80004780 <_ZN9Scheduler7runningE>
    80001688:	00813403          	ld	s0,8(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_ZN9Scheduler5yieldEP6ThreadS1_>:
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    80001694:	fe010113          	addi	sp,sp,-32
    80001698:	00113c23          	sd	ra,24(sp)
    8000169c:	00813823          	sd	s0,16(sp)
    800016a0:	00913423          	sd	s1,8(sp)
    800016a4:	02010413          	addi	s0,sp,32
    800016a8:	00058493          	mv	s1,a1
    if (oldThread != nullptr)//TODO: Add error and remove this temp logic
    800016ac:	00050a63          	beqz	a0,800016c0 <_ZN9Scheduler5yieldEP6ThreadS1_+0x2c>
        saveContext(oldThread->getContext());
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	df8080e7          	jalr	-520(ra) # 800014a8 <_ZN6Thread10getContextEv>
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	948080e7          	jalr	-1720(ra) # 80001000 <saveContext>
    restoreContext(newThread->getContext());
    800016c0:	00048513          	mv	a0,s1
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	de4080e7          	jalr	-540(ra) # 800014a8 <_ZN6Thread10getContextEv>
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	9c4080e7          	jalr	-1596(ra) # 80001090 <restoreContext>
}
    800016d4:	01813083          	ld	ra,24(sp)
    800016d8:	01013403          	ld	s0,16(sp)
    800016dc:	00813483          	ld	s1,8(sp)
    800016e0:	02010113          	addi	sp,sp,32
    800016e4:	00008067          	ret

00000000800016e8 <_ZN9Scheduler7GetNextEv>:
Thread* Scheduler::GetNext(){
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	01213023          	sd	s2,0(sp)
    800016fc:	02010413          	addi	s0,sp,32
    //TODO: Add checks if empty and stuff
    Thread* toRet = readyQueue;
    80001700:	00003917          	auipc	s2,0x3
    80001704:	08090913          	addi	s2,s2,128 # 80004780 <_ZN9Scheduler7runningE>
    80001708:	00893483          	ld	s1,8(s2)
    readyQueue = readyQueue->getNextInQueue();
    8000170c:	00048513          	mv	a0,s1
    80001710:	00000097          	auipc	ra,0x0
    80001714:	dbc080e7          	jalr	-580(ra) # 800014cc <_ZN6Thread14getNextInQueueEv>
    80001718:	00a93423          	sd	a0,8(s2)
    return toRet;
}
    8000171c:	00048513          	mv	a0,s1
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	00013903          	ld	s2,0(sp)
    80001730:	02010113          	addi	sp,sp,32
    80001734:	00008067          	ret

0000000080001738 <_ZN9Scheduler3PutEP6Thread>:
void Scheduler::Put(Thread* thread){
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00113c23          	sd	ra,24(sp)
    80001740:	00813823          	sd	s0,16(sp)
    80001744:	00913423          	sd	s1,8(sp)
    80001748:	01213023          	sd	s2,0(sp)
    8000174c:	02010413          	addi	s0,sp,32
    80001750:	00050493          	mv	s1,a0
    //TODO: Add checks if it already exists
    thread->setNextAndPrevInQueue(nullptr, readyQueueEnd);
    80001754:	00003917          	auipc	s2,0x3
    80001758:	02c90913          	addi	s2,s2,44 # 80004780 <_ZN9Scheduler7runningE>
    8000175c:	01093603          	ld	a2,16(s2)
    80001760:	00000593          	li	a1,0
    80001764:	00000097          	auipc	ra,0x0
    80001768:	dd8080e7          	jalr	-552(ra) # 8000153c <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>
    readyQueueEnd->setNextInQueue(thread);
    8000176c:	00048593          	mv	a1,s1
    80001770:	01093503          	ld	a0,16(s2)
    80001774:	00000097          	auipc	ra,0x0
    80001778:	d90080e7          	jalr	-624(ra) # 80001504 <_ZN6Thread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    8000177c:	00993823          	sd	s1,16(s2)
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	00013903          	ld	s2,0(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_ZN9Scheduler15SetupStartStackEv>:

extern "C" char end[];

void Scheduler::SetupStartStack() {
    80001798:	ff010113          	addi	sp,sp,-16
    8000179c:	00813423          	sd	s0,8(sp)
    800017a0:	01010413          	addi	s0,sp,16

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    800017a4:	00003797          	auipc	a5,0x3
    800017a8:	f847b783          	ld	a5,-124(a5) # 80004728 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017ac:	00778793          	addi	a5,a5,7
    800017b0:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    800017b4:	00003717          	auipc	a4,0x3
    800017b8:	fef73223          	sd	a5,-28(a4) # 80004798 <_ZN9Scheduler12stack_cursorE>
    );
}
    800017bc:	00813403          	ld	s0,8(sp)
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret

00000000800017c8 <_ZN9Scheduler16SetupStartThreadEv>:

void Scheduler::SetupStartThread() {
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00113423          	sd	ra,8(sp)
    800017d0:	00813023          	sd	s0,0(sp)
    800017d4:	01010413          	addi	s0,sp,16
    SetupStartStack();
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	fc0080e7          	jalr	-64(ra) # 80001798 <_ZN9Scheduler15SetupStartStackEv>
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	0c0080e7          	jalr	192(ra) # 800018a0 <_ZN15MemoryAllocator11GetInstanceEv>
    800017e8:	000085b7          	lui	a1,0x8
    800017ec:	13858593          	addi	a1,a1,312 # 8138 <_entry-0x7fff7ec8>
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	10c080e7          	jalr	268(ra) # 800018fc <_ZN15MemoryAllocator16AllocateFragmentEm>
    800017f8:	00003797          	auipc	a5,0x3
    800017fc:	f8a7b423          	sd	a0,-120(a5) # 80004780 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    80001800:	00000097          	auipc	ra,0x0
    80001804:	ca8080e7          	jalr	-856(ra) # 800014a8 <_ZN6Thread10getContextEv>
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	918080e7          	jalr	-1768(ra) # 80001120 <setupStartContext>
}
    80001810:	00813083          	ld	ra,8(sp)
    80001814:	00013403          	ld	s0,0(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_ZN9Scheduler12AddNewThreadEP6Thread>:

void Scheduler::AddNewThread(Thread* thread) {
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
    Context threadContext;
    Thread();
    void copyContext(size_t* ctx);
    void init();
    void setStackPtr(size_t* stackPtr);
    size_t* getStackTop() { return stack + DEFAULT_STACK_SIZE; }
    8000182c:	00008737          	lui	a4,0x8
    80001830:	02070793          	addi	a5,a4,32 # 8020 <_entry-0x7fff7fe0>
    80001834:	00f507b3          	add	a5,a0,a5
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80001838:	00e50533          	add	a0,a0,a4
    8000183c:	02f53c23          	sd	a5,56(a0)
}
    80001840:	00813403          	ld	s0,8(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    80001858:	00003797          	auipc	a5,0x3
    8000185c:	ed87b783          	ld	a5,-296(a5) # 80004730 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001860:	0007b783          	ld	a5,0(a5)
    80001864:	00003717          	auipc	a4,0x3
    80001868:	eb473703          	ld	a4,-332(a4) # 80004718 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000186c:	00073703          	ld	a4,0(a4)
    80001870:	40e787b3          	sub	a5,a5,a4
    80001874:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    80001878:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    8000187c:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    80001880:	00100693          	li	a3,1
    80001884:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    80001888:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    8000188c:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    80001890:	00073423          	sd	zero,8(a4)
}
    80001894:	00813403          	ld	s0,8(sp)
    80001898:	01010113          	addi	sp,sp,16
    8000189c:	00008067          	ret

00000000800018a0 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    800018a0:	00003797          	auipc	a5,0x3
    800018a4:	f007c783          	lbu	a5,-256(a5) # 800047a0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    800018a8:	00078863          	beqz	a5,800018b8 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    800018ac:	00003517          	auipc	a0,0x3
    800018b0:	efc50513          	addi	a0,a0,-260 # 800047a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800018b4:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    800018c8:	00003517          	auipc	a0,0x3
    800018cc:	ee050513          	addi	a0,a0,-288 # 800047a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	f7c080e7          	jalr	-132(ra) # 8000184c <_ZN15MemoryAllocatorC1Ev>
    800018d8:	00100793          	li	a5,1
    800018dc:	00003717          	auipc	a4,0x3
    800018e0:	ecf70223          	sb	a5,-316(a4) # 800047a0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	ec450513          	addi	a0,a0,-316 # 800047a8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    800018ec:	00813083          	ld	ra,8(sp)
    800018f0:	00013403          	ld	s0,0(sp)
    800018f4:	01010113          	addi	sp,sp,16
    800018f8:	00008067          	ret

00000000800018fc <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00813423          	sd	s0,8(sp)
    80001904:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    80001908:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000190c:	03f58593          	addi	a1,a1,63
    80001910:	0065d593          	srli	a1,a1,0x6
    80001914:	0080006f          	j	8000191c <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80001918:	00053503          	ld	a0,0(a0)
    while(curr){
    8000191c:	06050863          	beqz	a0,8000198c <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80001920:	01054703          	lbu	a4,16(a0)
    80001924:	00100793          	li	a5,1
    80001928:	fef718e3          	bne	a4,a5,80001918 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    8000192c:	01853703          	ld	a4,24(a0)
    80001930:	00158793          	addi	a5,a1,1
    80001934:	fef762e3          	bltu	a4,a5,80001918 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80001938:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    8000193c:	04e7f663          	bgeu	a5,a4,80001988 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    80001940:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    80001944:	00679793          	slli	a5,a5,0x6
    80001948:	00f507b3          	add	a5,a0,a5
    8000194c:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    80001950:	00100713          	li	a4,1
    80001954:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    80001958:	01853703          	ld	a4,24(a0)
    8000195c:	40b70733          	sub	a4,a4,a1
    80001960:	fff70713          	addi	a4,a4,-1
    80001964:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    80001968:	00d7b023          	sd	a3,0(a5)
                if(old)
    8000196c:	00068463          	beqz	a3,80001974 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    80001970:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    80001974:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    80001978:	01853703          	ld	a4,24(a0)
    8000197c:	0187b783          	ld	a5,24(a5)
    80001980:	40f707b3          	sub	a5,a4,a5
    80001984:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    80001988:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    8000198c:	00813403          	ld	s0,8(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret

0000000080001998 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00813423          	sd	s0,8(sp)
    800019a0:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    800019a4:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    800019a8:	08070a63          	beqz	a4,80001a3c <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    800019ac:	00100793          	li	a5,1
    800019b0:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    800019b4:	fc05b783          	ld	a5,-64(a1)
    800019b8:	00078863          	beqz	a5,800019c8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    800019bc:	0107c603          	lbu	a2,16(a5)
    800019c0:	00100693          	li	a3,1
    800019c4:	02d60463          	beq	a2,a3,800019ec <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    800019c8:	fc85b783          	ld	a5,-56(a1)
    800019cc:	06078c63          	beqz	a5,80001a44 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    800019d0:	0107c683          	lbu	a3,16(a5)
    800019d4:	00100713          	li	a4,1
    800019d8:	02e68e63          	beq	a3,a4,80001a14 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    800019dc:	00000513          	li	a0,0
}
    800019e0:	00813403          	ld	s0,8(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret
        curr->size +=next->size;
    800019ec:	0187b603          	ld	a2,24(a5)
    800019f0:	fd85b683          	ld	a3,-40(a1)
    800019f4:	00c686b3          	add	a3,a3,a2
    800019f8:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    800019fc:	0007b683          	ld	a3,0(a5)
    80001a00:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    80001a04:	0007b783          	ld	a5,0(a5)
    80001a08:	fc0780e3          	beqz	a5,800019c8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    80001a0c:	00e7b423          	sd	a4,8(a5)
    80001a10:	fb9ff06f          	j	800019c8 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80001a14:	fd85b683          	ld	a3,-40(a1)
    80001a18:	0187b703          	ld	a4,24(a5)
    80001a1c:	00d70733          	add	a4,a4,a3
    80001a20:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80001a24:	fc05b703          	ld	a4,-64(a1)
    80001a28:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    80001a2c:	02070063          	beqz	a4,80001a4c <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80001a30:	00f73423          	sd	a5,8(a4)
    return 0;
    80001a34:	00000513          	li	a0,0
    80001a38:	fa9ff06f          	j	800019e0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    80001a3c:	fff00513          	li	a0,-1
    80001a40:	fa1ff06f          	j	800019e0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    80001a44:	00000513          	li	a0,0
    80001a48:	f99ff06f          	j	800019e0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    80001a4c:	00000513          	li	a0,0
    80001a50:	f91ff06f          	j	800019e0 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

0000000080001a54 <HandleInterupt>:
#include "Thread.hpp"
#include "APIC.h"
#include "Scheduler.hpp"
#include "../lib/console.h"

extern "C" void HandleInterupt(uint64 code){
    80001a54:	fe010113          	addi	sp,sp,-32
    80001a58:	00113c23          	sd	ra,24(sp)
    80001a5c:	00813823          	sd	s0,16(sp)
    80001a60:	00913423          	sd	s1,8(sp)
    80001a64:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv %[code],a0":[code]"=r"(code));
    80001a68:	00050713          	mv	a4,a0
    uint64 scause=0;
    __asm__ volatile("csrr %[scause],scause":[scause]"=r"(scause));
    80001a6c:	142027f3          	csrr	a5,scause
    if (scause !=8&&scause !=9) {
    80001a70:	ff878793          	addi	a5,a5,-8
    80001a74:	00100693          	li	a3,1
    80001a78:	02f6ee63          	bltu	a3,a5,80001ab4 <HandleInterupt+0x60>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
        return;

    }
    uint64 sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001a7c:	141027f3          	csrr	a5,sepc
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001a80:	00478793          	addi	a5,a5,4
    80001a84:	14179073          	csrw	sepc,a5
    switch (code) {
    80001a88:	00200793          	li	a5,2
    80001a8c:	06f70263          	beq	a4,a5,80001af0 <HandleInterupt+0x9c>
    80001a90:	00300793          	li	a5,3
    80001a94:	06f70c63          	beq	a4,a5,80001b0c <HandleInterupt+0xb8>
    80001a98:	00100793          	li	a5,1
    80001a9c:	02f70a63          	beq	a4,a5,80001ad0 <HandleInterupt+0x7c>
        default: {
            break;
        }
    }
    return;
}
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001ab4:	141024f3          	csrr	s1,sepc
        __putc('!');
    80001ab8:	02100513          	li	a0,33
    80001abc:	00002097          	auipc	ra,0x2
    80001ac0:	310080e7          	jalr	784(ra) # 80003dcc <__putc>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001ac4:	00448493          	addi	s1,s1,4
    80001ac8:	14149073          	csrw	sepc,s1
        return;
    80001acc:	fd5ff06f          	j	80001aa0 <HandleInterupt+0x4c>
            __asm__ volatile("mv %[size],a1":[size]"=r"(size));
    80001ad0:	00058493          	mv	s1,a1
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	dcc080e7          	jalr	-564(ra) # 800018a0 <_ZN15MemoryAllocator11GetInstanceEv>
    80001adc:	00048593          	mv	a1,s1
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	e1c080e7          	jalr	-484(ra) # 800018fc <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80001ae8:	00050513          	mv	a0,a0
            break;
    80001aec:	fb5ff06f          	j	80001aa0 <HandleInterupt+0x4c>
            __asm__ volatile("mv %[ptr],a1":[ptr]"=r"(ptr));
    80001af0:	00058493          	mv	s1,a1
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	dac080e7          	jalr	-596(ra) # 800018a0 <_ZN15MemoryAllocator11GetInstanceEv>
    80001afc:	00048593          	mv	a1,s1
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	e98080e7          	jalr	-360(ra) # 80001998 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80001b08:	f99ff06f          	j	80001aa0 <HandleInterupt+0x4c>
            __asm__ volatile("mv %0, a1" : "=r"(t));
    80001b0c:	00058513          	mv	a0,a1
            ((Thread*)t)->start();
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	a7c080e7          	jalr	-1412(ra) # 8000158c <_ZN6Thread5startEv>
            break;
    80001b18:	f89ff06f          	j	80001aa0 <HandleInterupt+0x4c>

0000000080001b1c <thread_create>:

inline void* operator new(size_t, void* p) { return p; }


extern "C" {
thread_t thread_create(void (*body)(void)) {
    80001b1c:	fe010113          	addi	sp,sp,-32
    80001b20:	00113c23          	sd	ra,24(sp)
    80001b24:	00813823          	sd	s0,16(sp)
    80001b28:	00913423          	sd	s1,8(sp)
    80001b2c:	01213023          	sd	s2,0(sp)
    80001b30:	02010413          	addi	s0,sp,32
    80001b34:	00050913          	mv	s2,a0
    void* mem = mem_alloc(sizeof(Thread));
    80001b38:	00008537          	lui	a0,0x8
    80001b3c:	13850513          	addi	a0,a0,312 # 8138 <_entry-0x7fff7ec8>
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	790080e7          	jalr	1936(ra) # 800012d0 <mem_alloc>
    80001b48:	00050493          	mv	s1,a0
    Thread* t = reinterpret_cast<Thread*>(mem);
    t->init();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	8d4080e7          	jalr	-1836(ra) # 80001420 <_ZN6Thread4initEv>
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void start();
    void setBody(void (*b)(void)) { body = b; }
    80001b54:	0124b023          	sd	s2,0(s1)
    t->setBody(body);
    return reinterpret_cast<thread_t>(t);
}
    80001b58:	00048513          	mv	a0,s1
    80001b5c:	01813083          	ld	ra,24(sp)
    80001b60:	01013403          	ld	s0,16(sp)
    80001b64:	00813483          	ld	s1,8(sp)
    80001b68:	00013903          	ld	s2,0(sp)
    80001b6c:	02010113          	addi	sp,sp,32
    80001b70:	00008067          	ret

0000000080001b74 <thread_start>:

int thread_start(thread_t handle) {//TODO:Change name
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00813423          	sd	s0,8(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    uint64 code = 0x03;
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    80001b80:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r"(code));
    80001b84:	00300793          	li	a5,3
    80001b88:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001b8c:	00000073          	ecall
    return 0;
}
    80001b90:	00000513          	li	a0,0
    80001b94:	00813403          	ld	s0,8(sp)
    80001b98:	01010113          	addi	sp,sp,16
    80001b9c:	00008067          	ret

0000000080001ba0 <thread_join>:

int thread_join(thread_t t) {
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00113423          	sd	ra,8(sp)
    80001ba8:	00813023          	sd	s0,0(sp)
    80001bac:	01010413          	addi	s0,sp,16
    ((Thread*)t)->join();
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	a3c080e7          	jalr	-1476(ra) # 800015ec <_ZN6Thread4joinEv>
    return 0;
}
    80001bb8:	00000513          	li	a0,0
    80001bbc:	00813083          	ld	ra,8(sp)
    80001bc0:	00013403          	ld	s0,0(sp)
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00008067          	ret

0000000080001bcc <start_main_thread>:
int start_main_thread() {
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00113423          	sd	ra,8(sp)
    80001bd4:	00813023          	sd	s0,0(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	bec080e7          	jalr	-1044(ra) # 800017c8 <_ZN9Scheduler16SetupStartThreadEv>
    return 0;
}
    80001be4:	00000513          	li	a0,0
    80001be8:	00813083          	ld	ra,8(sp)
    80001bec:	00013403          	ld	s0,0(sp)
    80001bf0:	01010113          	addi	sp,sp,16
    80001bf4:	00008067          	ret

0000000080001bf8 <_Z5mainAv>:
#include "../lib/console.h"
#include "MemoryAllocator.hpp"
void mainA(){
    80001bf8:	fd010113          	addi	sp,sp,-48
    80001bfc:	02113423          	sd	ra,40(sp)
    80001c00:	02813023          	sd	s0,32(sp)
    80001c04:	00913c23          	sd	s1,24(sp)
    80001c08:	01213823          	sd	s2,16(sp)
    80001c0c:	03010413          	addi	s0,sp,48
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	c90080e7          	jalr	-880(ra) # 800018a0 <_ZN15MemoryAllocator11GetInstanceEv>
    80001c18:	00053783          	ld	a5,0(a0)
    80001c1c:	fcf43c23          	sd	a5,-40(s0)

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    80001c20:	01400593          	li	a1,20
    80001c24:	fd840913          	addi	s2,s0,-40
    80001c28:	00090513          	mv	a0,s2
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	cd0080e7          	jalr	-816(ra) # 800018fc <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001c34:	00050493          	mv	s1,a0
    *a1 = 'a';
    80001c38:	06100793          	li	a5,97
    80001c3c:	00f50023          	sb	a5,0(a0)
    *(a1+sizeof(char)) ='b';
    80001c40:	06200793          	li	a5,98
    80001c44:	00f500a3          	sb	a5,1(a0)
    __putc(*a1);
    80001c48:	06100513          	li	a0,97
    80001c4c:	00002097          	auipc	ra,0x2
    80001c50:	180080e7          	jalr	384(ra) # 80003dcc <__putc>
    __putc(*(a1+1));
    80001c54:	0014c503          	lbu	a0,1(s1)
    80001c58:	00002097          	auipc	ra,0x2
    80001c5c:	174080e7          	jalr	372(ra) # 80003dcc <__putc>
    *(a1+11) = 'h';
    80001c60:	06800793          	li	a5,104
    80001c64:	00f485a3          	sb	a5,11(s1)
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001c68:	00a00593          	li	a1,10
    80001c6c:	00090513          	mv	a0,s2
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	c8c080e7          	jalr	-884(ra) # 800018fc <_ZN15MemoryAllocator16AllocateFragmentEm>
    *a2 = 'c';
    80001c78:	06300793          	li	a5,99
    80001c7c:	00f50023          	sb	a5,0(a0)
    *(a2+sizeof(char)) ='d';
    80001c80:	06400793          	li	a5,100
    80001c84:	00f500a3          	sb	a5,1(a0)
    memAlloc.FreeFragment(a1);
    80001c88:	00048593          	mv	a1,s1
    80001c8c:	00090513          	mv	a0,s2
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	d08080e7          	jalr	-760(ra) # 80001998 <_ZN15MemoryAllocator12FreeFragmentEPv>
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001c98:	00a00593          	li	a1,10
    80001c9c:	00090513          	mv	a0,s2
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	c5c080e7          	jalr	-932(ra) # 800018fc <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001ca8:	00050913          	mv	s2,a0
    *a3 = 'e';
    80001cac:	06500793          	li	a5,101
    80001cb0:	00f50023          	sb	a5,0(a0)
    *(a3+sizeof(char)) ='f';
    80001cb4:	06600793          	li	a5,102
    80001cb8:	00f500a3          	sb	a5,1(a0)
    __putc(*a3);
    80001cbc:	06500513          	li	a0,101
    80001cc0:	00002097          	auipc	ra,0x2
    80001cc4:	10c080e7          	jalr	268(ra) # 80003dcc <__putc>
    __putc(*(a3+11));
    80001cc8:	00b94503          	lbu	a0,11(s2)
    80001ccc:	00002097          	auipc	ra,0x2
    80001cd0:	100080e7          	jalr	256(ra) # 80003dcc <__putc>
    __putc(*a1);
    80001cd4:	0004c503          	lbu	a0,0(s1)
    80001cd8:	00002097          	auipc	ra,0x2
    80001cdc:	0f4080e7          	jalr	244(ra) # 80003dcc <__putc>
    __putc(*(a1+1));
    80001ce0:	0014c503          	lbu	a0,1(s1)
    80001ce4:	00002097          	auipc	ra,0x2
    80001ce8:	0e8080e7          	jalr	232(ra) # 80003dcc <__putc>


    80001cec:	02813083          	ld	ra,40(sp)
    80001cf0:	02013403          	ld	s0,32(sp)
    80001cf4:	01813483          	ld	s1,24(sp)
    80001cf8:	01013903          	ld	s2,16(sp)
    80001cfc:	03010113          	addi	sp,sp,48
    80001d00:	00008067          	ret

0000000080001d04 <start>:
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    80001d10:	300027f3          	csrr	a5,mstatus
    80001d14:	ffffe737          	lui	a4,0xffffe
    80001d18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8dff>
    80001d1c:	00e7f7b3          	and	a5,a5,a4
    80001d20:	00001737          	lui	a4,0x1
    80001d24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d28:	00e7e7b3          	or	a5,a5,a4
    80001d2c:	30079073          	csrw	mstatus,a5
    80001d30:	00000797          	auipc	a5,0x0
    80001d34:	16078793          	addi	a5,a5,352 # 80001e90 <system_main>
    80001d38:	34179073          	csrw	mepc,a5
    80001d3c:	00000793          	li	a5,0
    80001d40:	18079073          	csrw	satp,a5
    80001d44:	000107b7          	lui	a5,0x10
    80001d48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d4c:	30279073          	csrw	medeleg,a5
    80001d50:	30379073          	csrw	mideleg,a5
    80001d54:	104027f3          	csrr	a5,sie
    80001d58:	2227e793          	ori	a5,a5,546
    80001d5c:	10479073          	csrw	sie,a5
    80001d60:	fff00793          	li	a5,-1
    80001d64:	00a7d793          	srli	a5,a5,0xa
    80001d68:	3b079073          	csrw	pmpaddr0,a5
    80001d6c:	00f00793          	li	a5,15
    80001d70:	3a079073          	csrw	pmpcfg0,a5
    80001d74:	f14027f3          	csrr	a5,mhartid
    80001d78:	0200c737          	lui	a4,0x200c
    80001d7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d80:	0007869b          	sext.w	a3,a5
    80001d84:	00269713          	slli	a4,a3,0x2
    80001d88:	000f4637          	lui	a2,0xf4
    80001d8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d90:	00d70733          	add	a4,a4,a3
    80001d94:	0037979b          	slliw	a5,a5,0x3
    80001d98:	020046b7          	lui	a3,0x2004
    80001d9c:	00d787b3          	add	a5,a5,a3
    80001da0:	00c585b3          	add	a1,a1,a2
    80001da4:	00371693          	slli	a3,a4,0x3
    80001da8:	00003717          	auipc	a4,0x3
    80001dac:	a0870713          	addi	a4,a4,-1528 # 800047b0 <timer_scratch>
    80001db0:	00b7b023          	sd	a1,0(a5)
    80001db4:	00d70733          	add	a4,a4,a3
    80001db8:	00f73c23          	sd	a5,24(a4)
    80001dbc:	02c73023          	sd	a2,32(a4)
    80001dc0:	34071073          	csrw	mscratch,a4
    80001dc4:	00000797          	auipc	a5,0x0
    80001dc8:	6ec78793          	addi	a5,a5,1772 # 800024b0 <timervec>
    80001dcc:	30579073          	csrw	mtvec,a5
    80001dd0:	300027f3          	csrr	a5,mstatus
    80001dd4:	0087e793          	ori	a5,a5,8
    80001dd8:	30079073          	csrw	mstatus,a5
    80001ddc:	304027f3          	csrr	a5,mie
    80001de0:	0807e793          	ori	a5,a5,128
    80001de4:	30479073          	csrw	mie,a5
    80001de8:	f14027f3          	csrr	a5,mhartid
    80001dec:	0007879b          	sext.w	a5,a5
    80001df0:	00078213          	mv	tp,a5
    80001df4:	30200073          	mret
    80001df8:	00813403          	ld	s0,8(sp)
    80001dfc:	01010113          	addi	sp,sp,16
    80001e00:	00008067          	ret

0000000080001e04 <timerinit>:
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00813423          	sd	s0,8(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    80001e10:	f14027f3          	csrr	a5,mhartid
    80001e14:	0200c737          	lui	a4,0x200c
    80001e18:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e1c:	0007869b          	sext.w	a3,a5
    80001e20:	00269713          	slli	a4,a3,0x2
    80001e24:	000f4637          	lui	a2,0xf4
    80001e28:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e2c:	00d70733          	add	a4,a4,a3
    80001e30:	0037979b          	slliw	a5,a5,0x3
    80001e34:	020046b7          	lui	a3,0x2004
    80001e38:	00d787b3          	add	a5,a5,a3
    80001e3c:	00c585b3          	add	a1,a1,a2
    80001e40:	00371693          	slli	a3,a4,0x3
    80001e44:	00003717          	auipc	a4,0x3
    80001e48:	96c70713          	addi	a4,a4,-1684 # 800047b0 <timer_scratch>
    80001e4c:	00b7b023          	sd	a1,0(a5)
    80001e50:	00d70733          	add	a4,a4,a3
    80001e54:	00f73c23          	sd	a5,24(a4)
    80001e58:	02c73023          	sd	a2,32(a4)
    80001e5c:	34071073          	csrw	mscratch,a4
    80001e60:	00000797          	auipc	a5,0x0
    80001e64:	65078793          	addi	a5,a5,1616 # 800024b0 <timervec>
    80001e68:	30579073          	csrw	mtvec,a5
    80001e6c:	300027f3          	csrr	a5,mstatus
    80001e70:	0087e793          	ori	a5,a5,8
    80001e74:	30079073          	csrw	mstatus,a5
    80001e78:	304027f3          	csrr	a5,mie
    80001e7c:	0807e793          	ori	a5,a5,128
    80001e80:	30479073          	csrw	mie,a5
    80001e84:	00813403          	ld	s0,8(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <system_main>:
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00813823          	sd	s0,16(sp)
    80001e98:	00913423          	sd	s1,8(sp)
    80001e9c:	00113c23          	sd	ra,24(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	0c4080e7          	jalr	196(ra) # 80001f68 <cpuid>
    80001eac:	00003497          	auipc	s1,0x3
    80001eb0:	8a448493          	addi	s1,s1,-1884 # 80004750 <started>
    80001eb4:	02050263          	beqz	a0,80001ed8 <system_main+0x48>
    80001eb8:	0004a783          	lw	a5,0(s1)
    80001ebc:	0007879b          	sext.w	a5,a5
    80001ec0:	fe078ce3          	beqz	a5,80001eb8 <system_main+0x28>
    80001ec4:	0ff0000f          	fence
    80001ec8:	00002517          	auipc	a0,0x2
    80001ecc:	18850513          	addi	a0,a0,392 # 80004050 <CONSOLE_STATUS+0x40>
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	a7c080e7          	jalr	-1412(ra) # 8000294c <panic>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	9d0080e7          	jalr	-1584(ra) # 800028a8 <consoleinit>
    80001ee0:	00001097          	auipc	ra,0x1
    80001ee4:	15c080e7          	jalr	348(ra) # 8000303c <printfinit>
    80001ee8:	00002517          	auipc	a0,0x2
    80001eec:	24850513          	addi	a0,a0,584 # 80004130 <CONSOLE_STATUS+0x120>
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	ab8080e7          	jalr	-1352(ra) # 800029a8 <__printf>
    80001ef8:	00002517          	auipc	a0,0x2
    80001efc:	12850513          	addi	a0,a0,296 # 80004020 <CONSOLE_STATUS+0x10>
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	aa8080e7          	jalr	-1368(ra) # 800029a8 <__printf>
    80001f08:	00002517          	auipc	a0,0x2
    80001f0c:	22850513          	addi	a0,a0,552 # 80004130 <CONSOLE_STATUS+0x120>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	a98080e7          	jalr	-1384(ra) # 800029a8 <__printf>
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	4b0080e7          	jalr	1200(ra) # 800033c8 <kinit>
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	148080e7          	jalr	328(ra) # 80002068 <trapinit>
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	16c080e7          	jalr	364(ra) # 80002094 <trapinithart>
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	5c0080e7          	jalr	1472(ra) # 800024f0 <plicinit>
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	5e0080e7          	jalr	1504(ra) # 80002518 <plicinithart>
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	078080e7          	jalr	120(ra) # 80001fb8 <userinit>
    80001f48:	0ff0000f          	fence
    80001f4c:	00100793          	li	a5,1
    80001f50:	00002517          	auipc	a0,0x2
    80001f54:	0e850513          	addi	a0,a0,232 # 80004038 <CONSOLE_STATUS+0x28>
    80001f58:	00f4a023          	sw	a5,0(s1)
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	a4c080e7          	jalr	-1460(ra) # 800029a8 <__printf>
    80001f64:	0000006f          	j	80001f64 <system_main+0xd4>

0000000080001f68 <cpuid>:
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00813423          	sd	s0,8(sp)
    80001f70:	01010413          	addi	s0,sp,16
    80001f74:	00020513          	mv	a0,tp
    80001f78:	00813403          	ld	s0,8(sp)
    80001f7c:	0005051b          	sext.w	a0,a0
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret

0000000080001f88 <mycpu>:
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    80001f94:	00020793          	mv	a5,tp
    80001f98:	00813403          	ld	s0,8(sp)
    80001f9c:	0007879b          	sext.w	a5,a5
    80001fa0:	00779793          	slli	a5,a5,0x7
    80001fa4:	00004517          	auipc	a0,0x4
    80001fa8:	83c50513          	addi	a0,a0,-1988 # 800057e0 <cpus>
    80001fac:	00f50533          	add	a0,a0,a5
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <userinit>:
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00813423          	sd	s0,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	fffff317          	auipc	t1,0xfffff
    80001fd0:	3f030067          	jr	1008(t1) # 800013bc <main>

0000000080001fd4 <either_copyout>:
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	00113423          	sd	ra,8(sp)
    80001fe0:	01010413          	addi	s0,sp,16
    80001fe4:	02051663          	bnez	a0,80002010 <either_copyout+0x3c>
    80001fe8:	00058513          	mv	a0,a1
    80001fec:	00060593          	mv	a1,a2
    80001ff0:	0006861b          	sext.w	a2,a3
    80001ff4:	00002097          	auipc	ra,0x2
    80001ff8:	c60080e7          	jalr	-928(ra) # 80003c54 <__memmove>
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	00000513          	li	a0,0
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	00008067          	ret
    80002010:	00002517          	auipc	a0,0x2
    80002014:	06850513          	addi	a0,a0,104 # 80004078 <CONSOLE_STATUS+0x68>
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	934080e7          	jalr	-1740(ra) # 8000294c <panic>

0000000080002020 <either_copyin>:
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00813023          	sd	s0,0(sp)
    80002028:	00113423          	sd	ra,8(sp)
    8000202c:	01010413          	addi	s0,sp,16
    80002030:	02059463          	bnez	a1,80002058 <either_copyin+0x38>
    80002034:	00060593          	mv	a1,a2
    80002038:	0006861b          	sext.w	a2,a3
    8000203c:	00002097          	auipc	ra,0x2
    80002040:	c18080e7          	jalr	-1000(ra) # 80003c54 <__memmove>
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	00000513          	li	a0,0
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret
    80002058:	00002517          	auipc	a0,0x2
    8000205c:	04850513          	addi	a0,a0,72 # 800040a0 <CONSOLE_STATUS+0x90>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	8ec080e7          	jalr	-1812(ra) # 8000294c <panic>

0000000080002068 <trapinit>:
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813423          	sd	s0,8(sp)
    80002070:	01010413          	addi	s0,sp,16
    80002074:	00813403          	ld	s0,8(sp)
    80002078:	00002597          	auipc	a1,0x2
    8000207c:	05058593          	addi	a1,a1,80 # 800040c8 <CONSOLE_STATUS+0xb8>
    80002080:	00003517          	auipc	a0,0x3
    80002084:	7e050513          	addi	a0,a0,2016 # 80005860 <tickslock>
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00001317          	auipc	t1,0x1
    80002090:	5cc30067          	jr	1484(t1) # 80003658 <initlock>

0000000080002094 <trapinithart>:
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00813423          	sd	s0,8(sp)
    8000209c:	01010413          	addi	s0,sp,16
    800020a0:	00000797          	auipc	a5,0x0
    800020a4:	30078793          	addi	a5,a5,768 # 800023a0 <kernelvec>
    800020a8:	10579073          	csrw	stvec,a5
    800020ac:	00813403          	ld	s0,8(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <usertrap>:
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00813423          	sd	s0,8(sp)
    800020c0:	01010413          	addi	s0,sp,16
    800020c4:	00813403          	ld	s0,8(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret

00000000800020d0 <usertrapret>:
    800020d0:	ff010113          	addi	sp,sp,-16
    800020d4:	00813423          	sd	s0,8(sp)
    800020d8:	01010413          	addi	s0,sp,16
    800020dc:	00813403          	ld	s0,8(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <kerneltrap>:
    800020e8:	fe010113          	addi	sp,sp,-32
    800020ec:	00813823          	sd	s0,16(sp)
    800020f0:	00113c23          	sd	ra,24(sp)
    800020f4:	00913423          	sd	s1,8(sp)
    800020f8:	02010413          	addi	s0,sp,32
    800020fc:	142025f3          	csrr	a1,scause
    80002100:	100027f3          	csrr	a5,sstatus
    80002104:	0027f793          	andi	a5,a5,2
    80002108:	10079c63          	bnez	a5,80002220 <kerneltrap+0x138>
    8000210c:	142027f3          	csrr	a5,scause
    80002110:	0207ce63          	bltz	a5,8000214c <kerneltrap+0x64>
    80002114:	00002517          	auipc	a0,0x2
    80002118:	ffc50513          	addi	a0,a0,-4 # 80004110 <CONSOLE_STATUS+0x100>
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	88c080e7          	jalr	-1908(ra) # 800029a8 <__printf>
    80002124:	141025f3          	csrr	a1,sepc
    80002128:	14302673          	csrr	a2,stval
    8000212c:	00002517          	auipc	a0,0x2
    80002130:	ff450513          	addi	a0,a0,-12 # 80004120 <CONSOLE_STATUS+0x110>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	874080e7          	jalr	-1932(ra) # 800029a8 <__printf>
    8000213c:	00002517          	auipc	a0,0x2
    80002140:	ffc50513          	addi	a0,a0,-4 # 80004138 <CONSOLE_STATUS+0x128>
    80002144:	00001097          	auipc	ra,0x1
    80002148:	808080e7          	jalr	-2040(ra) # 8000294c <panic>
    8000214c:	0ff7f713          	andi	a4,a5,255
    80002150:	00900693          	li	a3,9
    80002154:	04d70063          	beq	a4,a3,80002194 <kerneltrap+0xac>
    80002158:	fff00713          	li	a4,-1
    8000215c:	03f71713          	slli	a4,a4,0x3f
    80002160:	00170713          	addi	a4,a4,1
    80002164:	fae798e3          	bne	a5,a4,80002114 <kerneltrap+0x2c>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	e00080e7          	jalr	-512(ra) # 80001f68 <cpuid>
    80002170:	06050663          	beqz	a0,800021dc <kerneltrap+0xf4>
    80002174:	144027f3          	csrr	a5,sip
    80002178:	ffd7f793          	andi	a5,a5,-3
    8000217c:	14479073          	csrw	sip,a5
    80002180:	01813083          	ld	ra,24(sp)
    80002184:	01013403          	ld	s0,16(sp)
    80002188:	00813483          	ld	s1,8(sp)
    8000218c:	02010113          	addi	sp,sp,32
    80002190:	00008067          	ret
    80002194:	00000097          	auipc	ra,0x0
    80002198:	3d0080e7          	jalr	976(ra) # 80002564 <plic_claim>
    8000219c:	00a00793          	li	a5,10
    800021a0:	00050493          	mv	s1,a0
    800021a4:	06f50863          	beq	a0,a5,80002214 <kerneltrap+0x12c>
    800021a8:	fc050ce3          	beqz	a0,80002180 <kerneltrap+0x98>
    800021ac:	00050593          	mv	a1,a0
    800021b0:	00002517          	auipc	a0,0x2
    800021b4:	f4050513          	addi	a0,a0,-192 # 800040f0 <CONSOLE_STATUS+0xe0>
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	7f0080e7          	jalr	2032(ra) # 800029a8 <__printf>
    800021c0:	01013403          	ld	s0,16(sp)
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	00048513          	mv	a0,s1
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	02010113          	addi	sp,sp,32
    800021d4:	00000317          	auipc	t1,0x0
    800021d8:	3c830067          	jr	968(t1) # 8000259c <plic_complete>
    800021dc:	00003517          	auipc	a0,0x3
    800021e0:	68450513          	addi	a0,a0,1668 # 80005860 <tickslock>
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	498080e7          	jalr	1176(ra) # 8000367c <acquire>
    800021ec:	00002717          	auipc	a4,0x2
    800021f0:	56870713          	addi	a4,a4,1384 # 80004754 <ticks>
    800021f4:	00072783          	lw	a5,0(a4)
    800021f8:	00003517          	auipc	a0,0x3
    800021fc:	66850513          	addi	a0,a0,1640 # 80005860 <tickslock>
    80002200:	0017879b          	addiw	a5,a5,1
    80002204:	00f72023          	sw	a5,0(a4)
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	540080e7          	jalr	1344(ra) # 80003748 <release>
    80002210:	f65ff06f          	j	80002174 <kerneltrap+0x8c>
    80002214:	00001097          	auipc	ra,0x1
    80002218:	09c080e7          	jalr	156(ra) # 800032b0 <uartintr>
    8000221c:	fa5ff06f          	j	800021c0 <kerneltrap+0xd8>
    80002220:	00002517          	auipc	a0,0x2
    80002224:	eb050513          	addi	a0,a0,-336 # 800040d0 <CONSOLE_STATUS+0xc0>
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	724080e7          	jalr	1828(ra) # 8000294c <panic>

0000000080002230 <clockintr>:
    80002230:	fe010113          	addi	sp,sp,-32
    80002234:	00813823          	sd	s0,16(sp)
    80002238:	00913423          	sd	s1,8(sp)
    8000223c:	00113c23          	sd	ra,24(sp)
    80002240:	02010413          	addi	s0,sp,32
    80002244:	00003497          	auipc	s1,0x3
    80002248:	61c48493          	addi	s1,s1,1564 # 80005860 <tickslock>
    8000224c:	00048513          	mv	a0,s1
    80002250:	00001097          	auipc	ra,0x1
    80002254:	42c080e7          	jalr	1068(ra) # 8000367c <acquire>
    80002258:	00002717          	auipc	a4,0x2
    8000225c:	4fc70713          	addi	a4,a4,1276 # 80004754 <ticks>
    80002260:	00072783          	lw	a5,0(a4)
    80002264:	01013403          	ld	s0,16(sp)
    80002268:	01813083          	ld	ra,24(sp)
    8000226c:	00048513          	mv	a0,s1
    80002270:	0017879b          	addiw	a5,a5,1
    80002274:	00813483          	ld	s1,8(sp)
    80002278:	00f72023          	sw	a5,0(a4)
    8000227c:	02010113          	addi	sp,sp,32
    80002280:	00001317          	auipc	t1,0x1
    80002284:	4c830067          	jr	1224(t1) # 80003748 <release>

0000000080002288 <devintr>:
    80002288:	142027f3          	csrr	a5,scause
    8000228c:	00000513          	li	a0,0
    80002290:	0007c463          	bltz	a5,80002298 <devintr+0x10>
    80002294:	00008067          	ret
    80002298:	fe010113          	addi	sp,sp,-32
    8000229c:	00813823          	sd	s0,16(sp)
    800022a0:	00113c23          	sd	ra,24(sp)
    800022a4:	00913423          	sd	s1,8(sp)
    800022a8:	02010413          	addi	s0,sp,32
    800022ac:	0ff7f713          	andi	a4,a5,255
    800022b0:	00900693          	li	a3,9
    800022b4:	04d70c63          	beq	a4,a3,8000230c <devintr+0x84>
    800022b8:	fff00713          	li	a4,-1
    800022bc:	03f71713          	slli	a4,a4,0x3f
    800022c0:	00170713          	addi	a4,a4,1
    800022c4:	00e78c63          	beq	a5,a4,800022dc <devintr+0x54>
    800022c8:	01813083          	ld	ra,24(sp)
    800022cc:	01013403          	ld	s0,16(sp)
    800022d0:	00813483          	ld	s1,8(sp)
    800022d4:	02010113          	addi	sp,sp,32
    800022d8:	00008067          	ret
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	c8c080e7          	jalr	-884(ra) # 80001f68 <cpuid>
    800022e4:	06050663          	beqz	a0,80002350 <devintr+0xc8>
    800022e8:	144027f3          	csrr	a5,sip
    800022ec:	ffd7f793          	andi	a5,a5,-3
    800022f0:	14479073          	csrw	sip,a5
    800022f4:	01813083          	ld	ra,24(sp)
    800022f8:	01013403          	ld	s0,16(sp)
    800022fc:	00813483          	ld	s1,8(sp)
    80002300:	00200513          	li	a0,2
    80002304:	02010113          	addi	sp,sp,32
    80002308:	00008067          	ret
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	258080e7          	jalr	600(ra) # 80002564 <plic_claim>
    80002314:	00a00793          	li	a5,10
    80002318:	00050493          	mv	s1,a0
    8000231c:	06f50663          	beq	a0,a5,80002388 <devintr+0x100>
    80002320:	00100513          	li	a0,1
    80002324:	fa0482e3          	beqz	s1,800022c8 <devintr+0x40>
    80002328:	00048593          	mv	a1,s1
    8000232c:	00002517          	auipc	a0,0x2
    80002330:	dc450513          	addi	a0,a0,-572 # 800040f0 <CONSOLE_STATUS+0xe0>
    80002334:	00000097          	auipc	ra,0x0
    80002338:	674080e7          	jalr	1652(ra) # 800029a8 <__printf>
    8000233c:	00048513          	mv	a0,s1
    80002340:	00000097          	auipc	ra,0x0
    80002344:	25c080e7          	jalr	604(ra) # 8000259c <plic_complete>
    80002348:	00100513          	li	a0,1
    8000234c:	f7dff06f          	j	800022c8 <devintr+0x40>
    80002350:	00003517          	auipc	a0,0x3
    80002354:	51050513          	addi	a0,a0,1296 # 80005860 <tickslock>
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	324080e7          	jalr	804(ra) # 8000367c <acquire>
    80002360:	00002717          	auipc	a4,0x2
    80002364:	3f470713          	addi	a4,a4,1012 # 80004754 <ticks>
    80002368:	00072783          	lw	a5,0(a4)
    8000236c:	00003517          	auipc	a0,0x3
    80002370:	4f450513          	addi	a0,a0,1268 # 80005860 <tickslock>
    80002374:	0017879b          	addiw	a5,a5,1
    80002378:	00f72023          	sw	a5,0(a4)
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	3cc080e7          	jalr	972(ra) # 80003748 <release>
    80002384:	f65ff06f          	j	800022e8 <devintr+0x60>
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	f28080e7          	jalr	-216(ra) # 800032b0 <uartintr>
    80002390:	fadff06f          	j	8000233c <devintr+0xb4>
	...

00000000800023a0 <kernelvec>:
    800023a0:	f0010113          	addi	sp,sp,-256
    800023a4:	00113023          	sd	ra,0(sp)
    800023a8:	00213423          	sd	sp,8(sp)
    800023ac:	00313823          	sd	gp,16(sp)
    800023b0:	00413c23          	sd	tp,24(sp)
    800023b4:	02513023          	sd	t0,32(sp)
    800023b8:	02613423          	sd	t1,40(sp)
    800023bc:	02713823          	sd	t2,48(sp)
    800023c0:	02813c23          	sd	s0,56(sp)
    800023c4:	04913023          	sd	s1,64(sp)
    800023c8:	04a13423          	sd	a0,72(sp)
    800023cc:	04b13823          	sd	a1,80(sp)
    800023d0:	04c13c23          	sd	a2,88(sp)
    800023d4:	06d13023          	sd	a3,96(sp)
    800023d8:	06e13423          	sd	a4,104(sp)
    800023dc:	06f13823          	sd	a5,112(sp)
    800023e0:	07013c23          	sd	a6,120(sp)
    800023e4:	09113023          	sd	a7,128(sp)
    800023e8:	09213423          	sd	s2,136(sp)
    800023ec:	09313823          	sd	s3,144(sp)
    800023f0:	09413c23          	sd	s4,152(sp)
    800023f4:	0b513023          	sd	s5,160(sp)
    800023f8:	0b613423          	sd	s6,168(sp)
    800023fc:	0b713823          	sd	s7,176(sp)
    80002400:	0b813c23          	sd	s8,184(sp)
    80002404:	0d913023          	sd	s9,192(sp)
    80002408:	0da13423          	sd	s10,200(sp)
    8000240c:	0db13823          	sd	s11,208(sp)
    80002410:	0dc13c23          	sd	t3,216(sp)
    80002414:	0fd13023          	sd	t4,224(sp)
    80002418:	0fe13423          	sd	t5,232(sp)
    8000241c:	0ff13823          	sd	t6,240(sp)
    80002420:	cc9ff0ef          	jal	ra,800020e8 <kerneltrap>
    80002424:	00013083          	ld	ra,0(sp)
    80002428:	00813103          	ld	sp,8(sp)
    8000242c:	01013183          	ld	gp,16(sp)
    80002430:	02013283          	ld	t0,32(sp)
    80002434:	02813303          	ld	t1,40(sp)
    80002438:	03013383          	ld	t2,48(sp)
    8000243c:	03813403          	ld	s0,56(sp)
    80002440:	04013483          	ld	s1,64(sp)
    80002444:	04813503          	ld	a0,72(sp)
    80002448:	05013583          	ld	a1,80(sp)
    8000244c:	05813603          	ld	a2,88(sp)
    80002450:	06013683          	ld	a3,96(sp)
    80002454:	06813703          	ld	a4,104(sp)
    80002458:	07013783          	ld	a5,112(sp)
    8000245c:	07813803          	ld	a6,120(sp)
    80002460:	08013883          	ld	a7,128(sp)
    80002464:	08813903          	ld	s2,136(sp)
    80002468:	09013983          	ld	s3,144(sp)
    8000246c:	09813a03          	ld	s4,152(sp)
    80002470:	0a013a83          	ld	s5,160(sp)
    80002474:	0a813b03          	ld	s6,168(sp)
    80002478:	0b013b83          	ld	s7,176(sp)
    8000247c:	0b813c03          	ld	s8,184(sp)
    80002480:	0c013c83          	ld	s9,192(sp)
    80002484:	0c813d03          	ld	s10,200(sp)
    80002488:	0d013d83          	ld	s11,208(sp)
    8000248c:	0d813e03          	ld	t3,216(sp)
    80002490:	0e013e83          	ld	t4,224(sp)
    80002494:	0e813f03          	ld	t5,232(sp)
    80002498:	0f013f83          	ld	t6,240(sp)
    8000249c:	10010113          	addi	sp,sp,256
    800024a0:	10200073          	sret
    800024a4:	00000013          	nop
    800024a8:	00000013          	nop
    800024ac:	00000013          	nop

00000000800024b0 <timervec>:
    800024b0:	34051573          	csrrw	a0,mscratch,a0
    800024b4:	00b53023          	sd	a1,0(a0)
    800024b8:	00c53423          	sd	a2,8(a0)
    800024bc:	00d53823          	sd	a3,16(a0)
    800024c0:	01853583          	ld	a1,24(a0)
    800024c4:	02053603          	ld	a2,32(a0)
    800024c8:	0005b683          	ld	a3,0(a1)
    800024cc:	00c686b3          	add	a3,a3,a2
    800024d0:	00d5b023          	sd	a3,0(a1)
    800024d4:	00200593          	li	a1,2
    800024d8:	14459073          	csrw	sip,a1
    800024dc:	01053683          	ld	a3,16(a0)
    800024e0:	00853603          	ld	a2,8(a0)
    800024e4:	00053583          	ld	a1,0(a0)
    800024e8:	34051573          	csrrw	a0,mscratch,a0
    800024ec:	30200073          	mret

00000000800024f0 <plicinit>:
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00813423          	sd	s0,8(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	00813403          	ld	s0,8(sp)
    80002500:	0c0007b7          	lui	a5,0xc000
    80002504:	00100713          	li	a4,1
    80002508:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000250c:	00e7a223          	sw	a4,4(a5)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <plicinithart>:
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	00113423          	sd	ra,8(sp)
    80002524:	01010413          	addi	s0,sp,16
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	a40080e7          	jalr	-1472(ra) # 80001f68 <cpuid>
    80002530:	0085171b          	slliw	a4,a0,0x8
    80002534:	0c0027b7          	lui	a5,0xc002
    80002538:	00e787b3          	add	a5,a5,a4
    8000253c:	40200713          	li	a4,1026
    80002540:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002544:	00813083          	ld	ra,8(sp)
    80002548:	00013403          	ld	s0,0(sp)
    8000254c:	00d5151b          	slliw	a0,a0,0xd
    80002550:	0c2017b7          	lui	a5,0xc201
    80002554:	00a78533          	add	a0,a5,a0
    80002558:	00052023          	sw	zero,0(a0)
    8000255c:	01010113          	addi	sp,sp,16
    80002560:	00008067          	ret

0000000080002564 <plic_claim>:
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00813023          	sd	s0,0(sp)
    8000256c:	00113423          	sd	ra,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00000097          	auipc	ra,0x0
    80002578:	9f4080e7          	jalr	-1548(ra) # 80001f68 <cpuid>
    8000257c:	00813083          	ld	ra,8(sp)
    80002580:	00013403          	ld	s0,0(sp)
    80002584:	00d5151b          	slliw	a0,a0,0xd
    80002588:	0c2017b7          	lui	a5,0xc201
    8000258c:	00a78533          	add	a0,a5,a0
    80002590:	00452503          	lw	a0,4(a0)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret

000000008000259c <plic_complete>:
    8000259c:	fe010113          	addi	sp,sp,-32
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	00913423          	sd	s1,8(sp)
    800025a8:	00113c23          	sd	ra,24(sp)
    800025ac:	02010413          	addi	s0,sp,32
    800025b0:	00050493          	mv	s1,a0
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	9b4080e7          	jalr	-1612(ra) # 80001f68 <cpuid>
    800025bc:	01813083          	ld	ra,24(sp)
    800025c0:	01013403          	ld	s0,16(sp)
    800025c4:	00d5179b          	slliw	a5,a0,0xd
    800025c8:	0c201737          	lui	a4,0xc201
    800025cc:	00f707b3          	add	a5,a4,a5
    800025d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800025d4:	00813483          	ld	s1,8(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <consolewrite>:
    800025e0:	fb010113          	addi	sp,sp,-80
    800025e4:	04813023          	sd	s0,64(sp)
    800025e8:	04113423          	sd	ra,72(sp)
    800025ec:	02913c23          	sd	s1,56(sp)
    800025f0:	03213823          	sd	s2,48(sp)
    800025f4:	03313423          	sd	s3,40(sp)
    800025f8:	03413023          	sd	s4,32(sp)
    800025fc:	01513c23          	sd	s5,24(sp)
    80002600:	05010413          	addi	s0,sp,80
    80002604:	06c05c63          	blez	a2,8000267c <consolewrite+0x9c>
    80002608:	00060993          	mv	s3,a2
    8000260c:	00050a13          	mv	s4,a0
    80002610:	00058493          	mv	s1,a1
    80002614:	00000913          	li	s2,0
    80002618:	fff00a93          	li	s5,-1
    8000261c:	01c0006f          	j	80002638 <consolewrite+0x58>
    80002620:	fbf44503          	lbu	a0,-65(s0)
    80002624:	0019091b          	addiw	s2,s2,1
    80002628:	00148493          	addi	s1,s1,1
    8000262c:	00001097          	auipc	ra,0x1
    80002630:	a9c080e7          	jalr	-1380(ra) # 800030c8 <uartputc>
    80002634:	03298063          	beq	s3,s2,80002654 <consolewrite+0x74>
    80002638:	00048613          	mv	a2,s1
    8000263c:	00100693          	li	a3,1
    80002640:	000a0593          	mv	a1,s4
    80002644:	fbf40513          	addi	a0,s0,-65
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	9d8080e7          	jalr	-1576(ra) # 80002020 <either_copyin>
    80002650:	fd5518e3          	bne	a0,s5,80002620 <consolewrite+0x40>
    80002654:	04813083          	ld	ra,72(sp)
    80002658:	04013403          	ld	s0,64(sp)
    8000265c:	03813483          	ld	s1,56(sp)
    80002660:	02813983          	ld	s3,40(sp)
    80002664:	02013a03          	ld	s4,32(sp)
    80002668:	01813a83          	ld	s5,24(sp)
    8000266c:	00090513          	mv	a0,s2
    80002670:	03013903          	ld	s2,48(sp)
    80002674:	05010113          	addi	sp,sp,80
    80002678:	00008067          	ret
    8000267c:	00000913          	li	s2,0
    80002680:	fd5ff06f          	j	80002654 <consolewrite+0x74>

0000000080002684 <consoleread>:
    80002684:	f9010113          	addi	sp,sp,-112
    80002688:	06813023          	sd	s0,96(sp)
    8000268c:	04913c23          	sd	s1,88(sp)
    80002690:	05213823          	sd	s2,80(sp)
    80002694:	05313423          	sd	s3,72(sp)
    80002698:	05413023          	sd	s4,64(sp)
    8000269c:	03513c23          	sd	s5,56(sp)
    800026a0:	03613823          	sd	s6,48(sp)
    800026a4:	03713423          	sd	s7,40(sp)
    800026a8:	03813023          	sd	s8,32(sp)
    800026ac:	06113423          	sd	ra,104(sp)
    800026b0:	01913c23          	sd	s9,24(sp)
    800026b4:	07010413          	addi	s0,sp,112
    800026b8:	00060b93          	mv	s7,a2
    800026bc:	00050913          	mv	s2,a0
    800026c0:	00058c13          	mv	s8,a1
    800026c4:	00060b1b          	sext.w	s6,a2
    800026c8:	00003497          	auipc	s1,0x3
    800026cc:	1b048493          	addi	s1,s1,432 # 80005878 <cons>
    800026d0:	00400993          	li	s3,4
    800026d4:	fff00a13          	li	s4,-1
    800026d8:	00a00a93          	li	s5,10
    800026dc:	05705e63          	blez	s7,80002738 <consoleread+0xb4>
    800026e0:	09c4a703          	lw	a4,156(s1)
    800026e4:	0984a783          	lw	a5,152(s1)
    800026e8:	0007071b          	sext.w	a4,a4
    800026ec:	08e78463          	beq	a5,a4,80002774 <consoleread+0xf0>
    800026f0:	07f7f713          	andi	a4,a5,127
    800026f4:	00e48733          	add	a4,s1,a4
    800026f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800026fc:	0017869b          	addiw	a3,a5,1
    80002700:	08d4ac23          	sw	a3,152(s1)
    80002704:	00070c9b          	sext.w	s9,a4
    80002708:	0b370663          	beq	a4,s3,800027b4 <consoleread+0x130>
    8000270c:	00100693          	li	a3,1
    80002710:	f9f40613          	addi	a2,s0,-97
    80002714:	000c0593          	mv	a1,s8
    80002718:	00090513          	mv	a0,s2
    8000271c:	f8e40fa3          	sb	a4,-97(s0)
    80002720:	00000097          	auipc	ra,0x0
    80002724:	8b4080e7          	jalr	-1868(ra) # 80001fd4 <either_copyout>
    80002728:	01450863          	beq	a0,s4,80002738 <consoleread+0xb4>
    8000272c:	001c0c13          	addi	s8,s8,1
    80002730:	fffb8b9b          	addiw	s7,s7,-1
    80002734:	fb5c94e3          	bne	s9,s5,800026dc <consoleread+0x58>
    80002738:	000b851b          	sext.w	a0,s7
    8000273c:	06813083          	ld	ra,104(sp)
    80002740:	06013403          	ld	s0,96(sp)
    80002744:	05813483          	ld	s1,88(sp)
    80002748:	05013903          	ld	s2,80(sp)
    8000274c:	04813983          	ld	s3,72(sp)
    80002750:	04013a03          	ld	s4,64(sp)
    80002754:	03813a83          	ld	s5,56(sp)
    80002758:	02813b83          	ld	s7,40(sp)
    8000275c:	02013c03          	ld	s8,32(sp)
    80002760:	01813c83          	ld	s9,24(sp)
    80002764:	40ab053b          	subw	a0,s6,a0
    80002768:	03013b03          	ld	s6,48(sp)
    8000276c:	07010113          	addi	sp,sp,112
    80002770:	00008067          	ret
    80002774:	00001097          	auipc	ra,0x1
    80002778:	1d8080e7          	jalr	472(ra) # 8000394c <push_on>
    8000277c:	0984a703          	lw	a4,152(s1)
    80002780:	09c4a783          	lw	a5,156(s1)
    80002784:	0007879b          	sext.w	a5,a5
    80002788:	fef70ce3          	beq	a4,a5,80002780 <consoleread+0xfc>
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	234080e7          	jalr	564(ra) # 800039c0 <pop_on>
    80002794:	0984a783          	lw	a5,152(s1)
    80002798:	07f7f713          	andi	a4,a5,127
    8000279c:	00e48733          	add	a4,s1,a4
    800027a0:	01874703          	lbu	a4,24(a4)
    800027a4:	0017869b          	addiw	a3,a5,1
    800027a8:	08d4ac23          	sw	a3,152(s1)
    800027ac:	00070c9b          	sext.w	s9,a4
    800027b0:	f5371ee3          	bne	a4,s3,8000270c <consoleread+0x88>
    800027b4:	000b851b          	sext.w	a0,s7
    800027b8:	f96bf2e3          	bgeu	s7,s6,8000273c <consoleread+0xb8>
    800027bc:	08f4ac23          	sw	a5,152(s1)
    800027c0:	f7dff06f          	j	8000273c <consoleread+0xb8>

00000000800027c4 <consputc>:
    800027c4:	10000793          	li	a5,256
    800027c8:	00f50663          	beq	a0,a5,800027d4 <consputc+0x10>
    800027cc:	00001317          	auipc	t1,0x1
    800027d0:	9f430067          	jr	-1548(t1) # 800031c0 <uartputc_sync>
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00113423          	sd	ra,8(sp)
    800027dc:	00813023          	sd	s0,0(sp)
    800027e0:	01010413          	addi	s0,sp,16
    800027e4:	00800513          	li	a0,8
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	9d8080e7          	jalr	-1576(ra) # 800031c0 <uartputc_sync>
    800027f0:	02000513          	li	a0,32
    800027f4:	00001097          	auipc	ra,0x1
    800027f8:	9cc080e7          	jalr	-1588(ra) # 800031c0 <uartputc_sync>
    800027fc:	00013403          	ld	s0,0(sp)
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00800513          	li	a0,8
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00001317          	auipc	t1,0x1
    80002810:	9b430067          	jr	-1612(t1) # 800031c0 <uartputc_sync>

0000000080002814 <consoleintr>:
    80002814:	fe010113          	addi	sp,sp,-32
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00913423          	sd	s1,8(sp)
    80002820:	01213023          	sd	s2,0(sp)
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	02010413          	addi	s0,sp,32
    8000282c:	00003917          	auipc	s2,0x3
    80002830:	04c90913          	addi	s2,s2,76 # 80005878 <cons>
    80002834:	00050493          	mv	s1,a0
    80002838:	00090513          	mv	a0,s2
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	e40080e7          	jalr	-448(ra) # 8000367c <acquire>
    80002844:	02048c63          	beqz	s1,8000287c <consoleintr+0x68>
    80002848:	0a092783          	lw	a5,160(s2)
    8000284c:	09892703          	lw	a4,152(s2)
    80002850:	07f00693          	li	a3,127
    80002854:	40e7873b          	subw	a4,a5,a4
    80002858:	02e6e263          	bltu	a3,a4,8000287c <consoleintr+0x68>
    8000285c:	00d00713          	li	a4,13
    80002860:	04e48063          	beq	s1,a4,800028a0 <consoleintr+0x8c>
    80002864:	07f7f713          	andi	a4,a5,127
    80002868:	00e90733          	add	a4,s2,a4
    8000286c:	0017879b          	addiw	a5,a5,1
    80002870:	0af92023          	sw	a5,160(s2)
    80002874:	00970c23          	sb	s1,24(a4)
    80002878:	08f92e23          	sw	a5,156(s2)
    8000287c:	01013403          	ld	s0,16(sp)
    80002880:	01813083          	ld	ra,24(sp)
    80002884:	00813483          	ld	s1,8(sp)
    80002888:	00013903          	ld	s2,0(sp)
    8000288c:	00003517          	auipc	a0,0x3
    80002890:	fec50513          	addi	a0,a0,-20 # 80005878 <cons>
    80002894:	02010113          	addi	sp,sp,32
    80002898:	00001317          	auipc	t1,0x1
    8000289c:	eb030067          	jr	-336(t1) # 80003748 <release>
    800028a0:	00a00493          	li	s1,10
    800028a4:	fc1ff06f          	j	80002864 <consoleintr+0x50>

00000000800028a8 <consoleinit>:
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	02010413          	addi	s0,sp,32
    800028bc:	00003497          	auipc	s1,0x3
    800028c0:	fbc48493          	addi	s1,s1,-68 # 80005878 <cons>
    800028c4:	00048513          	mv	a0,s1
    800028c8:	00002597          	auipc	a1,0x2
    800028cc:	88058593          	addi	a1,a1,-1920 # 80004148 <CONSOLE_STATUS+0x138>
    800028d0:	00001097          	auipc	ra,0x1
    800028d4:	d88080e7          	jalr	-632(ra) # 80003658 <initlock>
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	7ac080e7          	jalr	1964(ra) # 80003084 <uartinit>
    800028e0:	01813083          	ld	ra,24(sp)
    800028e4:	01013403          	ld	s0,16(sp)
    800028e8:	00000797          	auipc	a5,0x0
    800028ec:	d9c78793          	addi	a5,a5,-612 # 80002684 <consoleread>
    800028f0:	0af4bc23          	sd	a5,184(s1)
    800028f4:	00000797          	auipc	a5,0x0
    800028f8:	cec78793          	addi	a5,a5,-788 # 800025e0 <consolewrite>
    800028fc:	0cf4b023          	sd	a5,192(s1)
    80002900:	00813483          	ld	s1,8(sp)
    80002904:	02010113          	addi	sp,sp,32
    80002908:	00008067          	ret

000000008000290c <console_read>:
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00813423          	sd	s0,8(sp)
    80002914:	01010413          	addi	s0,sp,16
    80002918:	00813403          	ld	s0,8(sp)
    8000291c:	00003317          	auipc	t1,0x3
    80002920:	01433303          	ld	t1,20(t1) # 80005930 <devsw+0x10>
    80002924:	01010113          	addi	sp,sp,16
    80002928:	00030067          	jr	t1

000000008000292c <console_write>:
    8000292c:	ff010113          	addi	sp,sp,-16
    80002930:	00813423          	sd	s0,8(sp)
    80002934:	01010413          	addi	s0,sp,16
    80002938:	00813403          	ld	s0,8(sp)
    8000293c:	00003317          	auipc	t1,0x3
    80002940:	ffc33303          	ld	t1,-4(t1) # 80005938 <devsw+0x18>
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00030067          	jr	t1

000000008000294c <panic>:
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00113c23          	sd	ra,24(sp)
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00050493          	mv	s1,a0
    80002964:	00001517          	auipc	a0,0x1
    80002968:	7ec50513          	addi	a0,a0,2028 # 80004150 <CONSOLE_STATUS+0x140>
    8000296c:	00003797          	auipc	a5,0x3
    80002970:	0607a623          	sw	zero,108(a5) # 800059d8 <pr+0x18>
    80002974:	00000097          	auipc	ra,0x0
    80002978:	034080e7          	jalr	52(ra) # 800029a8 <__printf>
    8000297c:	00048513          	mv	a0,s1
    80002980:	00000097          	auipc	ra,0x0
    80002984:	028080e7          	jalr	40(ra) # 800029a8 <__printf>
    80002988:	00001517          	auipc	a0,0x1
    8000298c:	7a850513          	addi	a0,a0,1960 # 80004130 <CONSOLE_STATUS+0x120>
    80002990:	00000097          	auipc	ra,0x0
    80002994:	018080e7          	jalr	24(ra) # 800029a8 <__printf>
    80002998:	00100793          	li	a5,1
    8000299c:	00002717          	auipc	a4,0x2
    800029a0:	daf72e23          	sw	a5,-580(a4) # 80004758 <panicked>
    800029a4:	0000006f          	j	800029a4 <panic+0x58>

00000000800029a8 <__printf>:
    800029a8:	f3010113          	addi	sp,sp,-208
    800029ac:	08813023          	sd	s0,128(sp)
    800029b0:	07313423          	sd	s3,104(sp)
    800029b4:	09010413          	addi	s0,sp,144
    800029b8:	05813023          	sd	s8,64(sp)
    800029bc:	08113423          	sd	ra,136(sp)
    800029c0:	06913c23          	sd	s1,120(sp)
    800029c4:	07213823          	sd	s2,112(sp)
    800029c8:	07413023          	sd	s4,96(sp)
    800029cc:	05513c23          	sd	s5,88(sp)
    800029d0:	05613823          	sd	s6,80(sp)
    800029d4:	05713423          	sd	s7,72(sp)
    800029d8:	03913c23          	sd	s9,56(sp)
    800029dc:	03a13823          	sd	s10,48(sp)
    800029e0:	03b13423          	sd	s11,40(sp)
    800029e4:	00003317          	auipc	t1,0x3
    800029e8:	fdc30313          	addi	t1,t1,-36 # 800059c0 <pr>
    800029ec:	01832c03          	lw	s8,24(t1)
    800029f0:	00b43423          	sd	a1,8(s0)
    800029f4:	00c43823          	sd	a2,16(s0)
    800029f8:	00d43c23          	sd	a3,24(s0)
    800029fc:	02e43023          	sd	a4,32(s0)
    80002a00:	02f43423          	sd	a5,40(s0)
    80002a04:	03043823          	sd	a6,48(s0)
    80002a08:	03143c23          	sd	a7,56(s0)
    80002a0c:	00050993          	mv	s3,a0
    80002a10:	4a0c1663          	bnez	s8,80002ebc <__printf+0x514>
    80002a14:	60098c63          	beqz	s3,8000302c <__printf+0x684>
    80002a18:	0009c503          	lbu	a0,0(s3)
    80002a1c:	00840793          	addi	a5,s0,8
    80002a20:	f6f43c23          	sd	a5,-136(s0)
    80002a24:	00000493          	li	s1,0
    80002a28:	22050063          	beqz	a0,80002c48 <__printf+0x2a0>
    80002a2c:	00002a37          	lui	s4,0x2
    80002a30:	00018ab7          	lui	s5,0x18
    80002a34:	000f4b37          	lui	s6,0xf4
    80002a38:	00989bb7          	lui	s7,0x989
    80002a3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002a40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002a44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002a48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002a4c:	00148c9b          	addiw	s9,s1,1
    80002a50:	02500793          	li	a5,37
    80002a54:	01998933          	add	s2,s3,s9
    80002a58:	38f51263          	bne	a0,a5,80002ddc <__printf+0x434>
    80002a5c:	00094783          	lbu	a5,0(s2)
    80002a60:	00078c9b          	sext.w	s9,a5
    80002a64:	1e078263          	beqz	a5,80002c48 <__printf+0x2a0>
    80002a68:	0024849b          	addiw	s1,s1,2
    80002a6c:	07000713          	li	a4,112
    80002a70:	00998933          	add	s2,s3,s1
    80002a74:	38e78a63          	beq	a5,a4,80002e08 <__printf+0x460>
    80002a78:	20f76863          	bltu	a4,a5,80002c88 <__printf+0x2e0>
    80002a7c:	42a78863          	beq	a5,a0,80002eac <__printf+0x504>
    80002a80:	06400713          	li	a4,100
    80002a84:	40e79663          	bne	a5,a4,80002e90 <__printf+0x4e8>
    80002a88:	f7843783          	ld	a5,-136(s0)
    80002a8c:	0007a603          	lw	a2,0(a5)
    80002a90:	00878793          	addi	a5,a5,8
    80002a94:	f6f43c23          	sd	a5,-136(s0)
    80002a98:	42064a63          	bltz	a2,80002ecc <__printf+0x524>
    80002a9c:	00a00713          	li	a4,10
    80002aa0:	02e677bb          	remuw	a5,a2,a4
    80002aa4:	00001d97          	auipc	s11,0x1
    80002aa8:	6d4d8d93          	addi	s11,s11,1748 # 80004178 <digits>
    80002aac:	00900593          	li	a1,9
    80002ab0:	0006051b          	sext.w	a0,a2
    80002ab4:	00000c93          	li	s9,0
    80002ab8:	02079793          	slli	a5,a5,0x20
    80002abc:	0207d793          	srli	a5,a5,0x20
    80002ac0:	00fd87b3          	add	a5,s11,a5
    80002ac4:	0007c783          	lbu	a5,0(a5)
    80002ac8:	02e656bb          	divuw	a3,a2,a4
    80002acc:	f8f40023          	sb	a5,-128(s0)
    80002ad0:	14c5d863          	bge	a1,a2,80002c20 <__printf+0x278>
    80002ad4:	06300593          	li	a1,99
    80002ad8:	00100c93          	li	s9,1
    80002adc:	02e6f7bb          	remuw	a5,a3,a4
    80002ae0:	02079793          	slli	a5,a5,0x20
    80002ae4:	0207d793          	srli	a5,a5,0x20
    80002ae8:	00fd87b3          	add	a5,s11,a5
    80002aec:	0007c783          	lbu	a5,0(a5)
    80002af0:	02e6d73b          	divuw	a4,a3,a4
    80002af4:	f8f400a3          	sb	a5,-127(s0)
    80002af8:	12a5f463          	bgeu	a1,a0,80002c20 <__printf+0x278>
    80002afc:	00a00693          	li	a3,10
    80002b00:	00900593          	li	a1,9
    80002b04:	02d777bb          	remuw	a5,a4,a3
    80002b08:	02079793          	slli	a5,a5,0x20
    80002b0c:	0207d793          	srli	a5,a5,0x20
    80002b10:	00fd87b3          	add	a5,s11,a5
    80002b14:	0007c503          	lbu	a0,0(a5)
    80002b18:	02d757bb          	divuw	a5,a4,a3
    80002b1c:	f8a40123          	sb	a0,-126(s0)
    80002b20:	48e5f263          	bgeu	a1,a4,80002fa4 <__printf+0x5fc>
    80002b24:	06300513          	li	a0,99
    80002b28:	02d7f5bb          	remuw	a1,a5,a3
    80002b2c:	02059593          	slli	a1,a1,0x20
    80002b30:	0205d593          	srli	a1,a1,0x20
    80002b34:	00bd85b3          	add	a1,s11,a1
    80002b38:	0005c583          	lbu	a1,0(a1)
    80002b3c:	02d7d7bb          	divuw	a5,a5,a3
    80002b40:	f8b401a3          	sb	a1,-125(s0)
    80002b44:	48e57263          	bgeu	a0,a4,80002fc8 <__printf+0x620>
    80002b48:	3e700513          	li	a0,999
    80002b4c:	02d7f5bb          	remuw	a1,a5,a3
    80002b50:	02059593          	slli	a1,a1,0x20
    80002b54:	0205d593          	srli	a1,a1,0x20
    80002b58:	00bd85b3          	add	a1,s11,a1
    80002b5c:	0005c583          	lbu	a1,0(a1)
    80002b60:	02d7d7bb          	divuw	a5,a5,a3
    80002b64:	f8b40223          	sb	a1,-124(s0)
    80002b68:	46e57663          	bgeu	a0,a4,80002fd4 <__printf+0x62c>
    80002b6c:	02d7f5bb          	remuw	a1,a5,a3
    80002b70:	02059593          	slli	a1,a1,0x20
    80002b74:	0205d593          	srli	a1,a1,0x20
    80002b78:	00bd85b3          	add	a1,s11,a1
    80002b7c:	0005c583          	lbu	a1,0(a1)
    80002b80:	02d7d7bb          	divuw	a5,a5,a3
    80002b84:	f8b402a3          	sb	a1,-123(s0)
    80002b88:	46ea7863          	bgeu	s4,a4,80002ff8 <__printf+0x650>
    80002b8c:	02d7f5bb          	remuw	a1,a5,a3
    80002b90:	02059593          	slli	a1,a1,0x20
    80002b94:	0205d593          	srli	a1,a1,0x20
    80002b98:	00bd85b3          	add	a1,s11,a1
    80002b9c:	0005c583          	lbu	a1,0(a1)
    80002ba0:	02d7d7bb          	divuw	a5,a5,a3
    80002ba4:	f8b40323          	sb	a1,-122(s0)
    80002ba8:	3eeaf863          	bgeu	s5,a4,80002f98 <__printf+0x5f0>
    80002bac:	02d7f5bb          	remuw	a1,a5,a3
    80002bb0:	02059593          	slli	a1,a1,0x20
    80002bb4:	0205d593          	srli	a1,a1,0x20
    80002bb8:	00bd85b3          	add	a1,s11,a1
    80002bbc:	0005c583          	lbu	a1,0(a1)
    80002bc0:	02d7d7bb          	divuw	a5,a5,a3
    80002bc4:	f8b403a3          	sb	a1,-121(s0)
    80002bc8:	42eb7e63          	bgeu	s6,a4,80003004 <__printf+0x65c>
    80002bcc:	02d7f5bb          	remuw	a1,a5,a3
    80002bd0:	02059593          	slli	a1,a1,0x20
    80002bd4:	0205d593          	srli	a1,a1,0x20
    80002bd8:	00bd85b3          	add	a1,s11,a1
    80002bdc:	0005c583          	lbu	a1,0(a1)
    80002be0:	02d7d7bb          	divuw	a5,a5,a3
    80002be4:	f8b40423          	sb	a1,-120(s0)
    80002be8:	42ebfc63          	bgeu	s7,a4,80003020 <__printf+0x678>
    80002bec:	02079793          	slli	a5,a5,0x20
    80002bf0:	0207d793          	srli	a5,a5,0x20
    80002bf4:	00fd8db3          	add	s11,s11,a5
    80002bf8:	000dc703          	lbu	a4,0(s11)
    80002bfc:	00a00793          	li	a5,10
    80002c00:	00900c93          	li	s9,9
    80002c04:	f8e404a3          	sb	a4,-119(s0)
    80002c08:	00065c63          	bgez	a2,80002c20 <__printf+0x278>
    80002c0c:	f9040713          	addi	a4,s0,-112
    80002c10:	00f70733          	add	a4,a4,a5
    80002c14:	02d00693          	li	a3,45
    80002c18:	fed70823          	sb	a3,-16(a4)
    80002c1c:	00078c93          	mv	s9,a5
    80002c20:	f8040793          	addi	a5,s0,-128
    80002c24:	01978cb3          	add	s9,a5,s9
    80002c28:	f7f40d13          	addi	s10,s0,-129
    80002c2c:	000cc503          	lbu	a0,0(s9)
    80002c30:	fffc8c93          	addi	s9,s9,-1
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	b90080e7          	jalr	-1136(ra) # 800027c4 <consputc>
    80002c3c:	ffac98e3          	bne	s9,s10,80002c2c <__printf+0x284>
    80002c40:	00094503          	lbu	a0,0(s2)
    80002c44:	e00514e3          	bnez	a0,80002a4c <__printf+0xa4>
    80002c48:	1a0c1663          	bnez	s8,80002df4 <__printf+0x44c>
    80002c4c:	08813083          	ld	ra,136(sp)
    80002c50:	08013403          	ld	s0,128(sp)
    80002c54:	07813483          	ld	s1,120(sp)
    80002c58:	07013903          	ld	s2,112(sp)
    80002c5c:	06813983          	ld	s3,104(sp)
    80002c60:	06013a03          	ld	s4,96(sp)
    80002c64:	05813a83          	ld	s5,88(sp)
    80002c68:	05013b03          	ld	s6,80(sp)
    80002c6c:	04813b83          	ld	s7,72(sp)
    80002c70:	04013c03          	ld	s8,64(sp)
    80002c74:	03813c83          	ld	s9,56(sp)
    80002c78:	03013d03          	ld	s10,48(sp)
    80002c7c:	02813d83          	ld	s11,40(sp)
    80002c80:	0d010113          	addi	sp,sp,208
    80002c84:	00008067          	ret
    80002c88:	07300713          	li	a4,115
    80002c8c:	1ce78a63          	beq	a5,a4,80002e60 <__printf+0x4b8>
    80002c90:	07800713          	li	a4,120
    80002c94:	1ee79e63          	bne	a5,a4,80002e90 <__printf+0x4e8>
    80002c98:	f7843783          	ld	a5,-136(s0)
    80002c9c:	0007a703          	lw	a4,0(a5)
    80002ca0:	00878793          	addi	a5,a5,8
    80002ca4:	f6f43c23          	sd	a5,-136(s0)
    80002ca8:	28074263          	bltz	a4,80002f2c <__printf+0x584>
    80002cac:	00001d97          	auipc	s11,0x1
    80002cb0:	4ccd8d93          	addi	s11,s11,1228 # 80004178 <digits>
    80002cb4:	00f77793          	andi	a5,a4,15
    80002cb8:	00fd87b3          	add	a5,s11,a5
    80002cbc:	0007c683          	lbu	a3,0(a5)
    80002cc0:	00f00613          	li	a2,15
    80002cc4:	0007079b          	sext.w	a5,a4
    80002cc8:	f8d40023          	sb	a3,-128(s0)
    80002ccc:	0047559b          	srliw	a1,a4,0x4
    80002cd0:	0047569b          	srliw	a3,a4,0x4
    80002cd4:	00000c93          	li	s9,0
    80002cd8:	0ee65063          	bge	a2,a4,80002db8 <__printf+0x410>
    80002cdc:	00f6f693          	andi	a3,a3,15
    80002ce0:	00dd86b3          	add	a3,s11,a3
    80002ce4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002ce8:	0087d79b          	srliw	a5,a5,0x8
    80002cec:	00100c93          	li	s9,1
    80002cf0:	f8d400a3          	sb	a3,-127(s0)
    80002cf4:	0cb67263          	bgeu	a2,a1,80002db8 <__printf+0x410>
    80002cf8:	00f7f693          	andi	a3,a5,15
    80002cfc:	00dd86b3          	add	a3,s11,a3
    80002d00:	0006c583          	lbu	a1,0(a3)
    80002d04:	00f00613          	li	a2,15
    80002d08:	0047d69b          	srliw	a3,a5,0x4
    80002d0c:	f8b40123          	sb	a1,-126(s0)
    80002d10:	0047d593          	srli	a1,a5,0x4
    80002d14:	28f67e63          	bgeu	a2,a5,80002fb0 <__printf+0x608>
    80002d18:	00f6f693          	andi	a3,a3,15
    80002d1c:	00dd86b3          	add	a3,s11,a3
    80002d20:	0006c503          	lbu	a0,0(a3)
    80002d24:	0087d813          	srli	a6,a5,0x8
    80002d28:	0087d69b          	srliw	a3,a5,0x8
    80002d2c:	f8a401a3          	sb	a0,-125(s0)
    80002d30:	28b67663          	bgeu	a2,a1,80002fbc <__printf+0x614>
    80002d34:	00f6f693          	andi	a3,a3,15
    80002d38:	00dd86b3          	add	a3,s11,a3
    80002d3c:	0006c583          	lbu	a1,0(a3)
    80002d40:	00c7d513          	srli	a0,a5,0xc
    80002d44:	00c7d69b          	srliw	a3,a5,0xc
    80002d48:	f8b40223          	sb	a1,-124(s0)
    80002d4c:	29067a63          	bgeu	a2,a6,80002fe0 <__printf+0x638>
    80002d50:	00f6f693          	andi	a3,a3,15
    80002d54:	00dd86b3          	add	a3,s11,a3
    80002d58:	0006c583          	lbu	a1,0(a3)
    80002d5c:	0107d813          	srli	a6,a5,0x10
    80002d60:	0107d69b          	srliw	a3,a5,0x10
    80002d64:	f8b402a3          	sb	a1,-123(s0)
    80002d68:	28a67263          	bgeu	a2,a0,80002fec <__printf+0x644>
    80002d6c:	00f6f693          	andi	a3,a3,15
    80002d70:	00dd86b3          	add	a3,s11,a3
    80002d74:	0006c683          	lbu	a3,0(a3)
    80002d78:	0147d79b          	srliw	a5,a5,0x14
    80002d7c:	f8d40323          	sb	a3,-122(s0)
    80002d80:	21067663          	bgeu	a2,a6,80002f8c <__printf+0x5e4>
    80002d84:	02079793          	slli	a5,a5,0x20
    80002d88:	0207d793          	srli	a5,a5,0x20
    80002d8c:	00fd8db3          	add	s11,s11,a5
    80002d90:	000dc683          	lbu	a3,0(s11)
    80002d94:	00800793          	li	a5,8
    80002d98:	00700c93          	li	s9,7
    80002d9c:	f8d403a3          	sb	a3,-121(s0)
    80002da0:	00075c63          	bgez	a4,80002db8 <__printf+0x410>
    80002da4:	f9040713          	addi	a4,s0,-112
    80002da8:	00f70733          	add	a4,a4,a5
    80002dac:	02d00693          	li	a3,45
    80002db0:	fed70823          	sb	a3,-16(a4)
    80002db4:	00078c93          	mv	s9,a5
    80002db8:	f8040793          	addi	a5,s0,-128
    80002dbc:	01978cb3          	add	s9,a5,s9
    80002dc0:	f7f40d13          	addi	s10,s0,-129
    80002dc4:	000cc503          	lbu	a0,0(s9)
    80002dc8:	fffc8c93          	addi	s9,s9,-1
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	9f8080e7          	jalr	-1544(ra) # 800027c4 <consputc>
    80002dd4:	ff9d18e3          	bne	s10,s9,80002dc4 <__printf+0x41c>
    80002dd8:	0100006f          	j	80002de8 <__printf+0x440>
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	9e8080e7          	jalr	-1560(ra) # 800027c4 <consputc>
    80002de4:	000c8493          	mv	s1,s9
    80002de8:	00094503          	lbu	a0,0(s2)
    80002dec:	c60510e3          	bnez	a0,80002a4c <__printf+0xa4>
    80002df0:	e40c0ee3          	beqz	s8,80002c4c <__printf+0x2a4>
    80002df4:	00003517          	auipc	a0,0x3
    80002df8:	bcc50513          	addi	a0,a0,-1076 # 800059c0 <pr>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	94c080e7          	jalr	-1716(ra) # 80003748 <release>
    80002e04:	e49ff06f          	j	80002c4c <__printf+0x2a4>
    80002e08:	f7843783          	ld	a5,-136(s0)
    80002e0c:	03000513          	li	a0,48
    80002e10:	01000d13          	li	s10,16
    80002e14:	00878713          	addi	a4,a5,8
    80002e18:	0007bc83          	ld	s9,0(a5)
    80002e1c:	f6e43c23          	sd	a4,-136(s0)
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	9a4080e7          	jalr	-1628(ra) # 800027c4 <consputc>
    80002e28:	07800513          	li	a0,120
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	998080e7          	jalr	-1640(ra) # 800027c4 <consputc>
    80002e34:	00001d97          	auipc	s11,0x1
    80002e38:	344d8d93          	addi	s11,s11,836 # 80004178 <digits>
    80002e3c:	03ccd793          	srli	a5,s9,0x3c
    80002e40:	00fd87b3          	add	a5,s11,a5
    80002e44:	0007c503          	lbu	a0,0(a5)
    80002e48:	fffd0d1b          	addiw	s10,s10,-1
    80002e4c:	004c9c93          	slli	s9,s9,0x4
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	974080e7          	jalr	-1676(ra) # 800027c4 <consputc>
    80002e58:	fe0d12e3          	bnez	s10,80002e3c <__printf+0x494>
    80002e5c:	f8dff06f          	j	80002de8 <__printf+0x440>
    80002e60:	f7843783          	ld	a5,-136(s0)
    80002e64:	0007bc83          	ld	s9,0(a5)
    80002e68:	00878793          	addi	a5,a5,8
    80002e6c:	f6f43c23          	sd	a5,-136(s0)
    80002e70:	000c9a63          	bnez	s9,80002e84 <__printf+0x4dc>
    80002e74:	1080006f          	j	80002f7c <__printf+0x5d4>
    80002e78:	001c8c93          	addi	s9,s9,1
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	948080e7          	jalr	-1720(ra) # 800027c4 <consputc>
    80002e84:	000cc503          	lbu	a0,0(s9)
    80002e88:	fe0518e3          	bnez	a0,80002e78 <__printf+0x4d0>
    80002e8c:	f5dff06f          	j	80002de8 <__printf+0x440>
    80002e90:	02500513          	li	a0,37
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	930080e7          	jalr	-1744(ra) # 800027c4 <consputc>
    80002e9c:	000c8513          	mv	a0,s9
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	924080e7          	jalr	-1756(ra) # 800027c4 <consputc>
    80002ea8:	f41ff06f          	j	80002de8 <__printf+0x440>
    80002eac:	02500513          	li	a0,37
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	914080e7          	jalr	-1772(ra) # 800027c4 <consputc>
    80002eb8:	f31ff06f          	j	80002de8 <__printf+0x440>
    80002ebc:	00030513          	mv	a0,t1
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	7bc080e7          	jalr	1980(ra) # 8000367c <acquire>
    80002ec8:	b4dff06f          	j	80002a14 <__printf+0x6c>
    80002ecc:	40c0053b          	negw	a0,a2
    80002ed0:	00a00713          	li	a4,10
    80002ed4:	02e576bb          	remuw	a3,a0,a4
    80002ed8:	00001d97          	auipc	s11,0x1
    80002edc:	2a0d8d93          	addi	s11,s11,672 # 80004178 <digits>
    80002ee0:	ff700593          	li	a1,-9
    80002ee4:	02069693          	slli	a3,a3,0x20
    80002ee8:	0206d693          	srli	a3,a3,0x20
    80002eec:	00dd86b3          	add	a3,s11,a3
    80002ef0:	0006c683          	lbu	a3,0(a3)
    80002ef4:	02e557bb          	divuw	a5,a0,a4
    80002ef8:	f8d40023          	sb	a3,-128(s0)
    80002efc:	10b65e63          	bge	a2,a1,80003018 <__printf+0x670>
    80002f00:	06300593          	li	a1,99
    80002f04:	02e7f6bb          	remuw	a3,a5,a4
    80002f08:	02069693          	slli	a3,a3,0x20
    80002f0c:	0206d693          	srli	a3,a3,0x20
    80002f10:	00dd86b3          	add	a3,s11,a3
    80002f14:	0006c683          	lbu	a3,0(a3)
    80002f18:	02e7d73b          	divuw	a4,a5,a4
    80002f1c:	00200793          	li	a5,2
    80002f20:	f8d400a3          	sb	a3,-127(s0)
    80002f24:	bca5ece3          	bltu	a1,a0,80002afc <__printf+0x154>
    80002f28:	ce5ff06f          	j	80002c0c <__printf+0x264>
    80002f2c:	40e007bb          	negw	a5,a4
    80002f30:	00001d97          	auipc	s11,0x1
    80002f34:	248d8d93          	addi	s11,s11,584 # 80004178 <digits>
    80002f38:	00f7f693          	andi	a3,a5,15
    80002f3c:	00dd86b3          	add	a3,s11,a3
    80002f40:	0006c583          	lbu	a1,0(a3)
    80002f44:	ff100613          	li	a2,-15
    80002f48:	0047d69b          	srliw	a3,a5,0x4
    80002f4c:	f8b40023          	sb	a1,-128(s0)
    80002f50:	0047d59b          	srliw	a1,a5,0x4
    80002f54:	0ac75e63          	bge	a4,a2,80003010 <__printf+0x668>
    80002f58:	00f6f693          	andi	a3,a3,15
    80002f5c:	00dd86b3          	add	a3,s11,a3
    80002f60:	0006c603          	lbu	a2,0(a3)
    80002f64:	00f00693          	li	a3,15
    80002f68:	0087d79b          	srliw	a5,a5,0x8
    80002f6c:	f8c400a3          	sb	a2,-127(s0)
    80002f70:	d8b6e4e3          	bltu	a3,a1,80002cf8 <__printf+0x350>
    80002f74:	00200793          	li	a5,2
    80002f78:	e2dff06f          	j	80002da4 <__printf+0x3fc>
    80002f7c:	00001c97          	auipc	s9,0x1
    80002f80:	1dcc8c93          	addi	s9,s9,476 # 80004158 <CONSOLE_STATUS+0x148>
    80002f84:	02800513          	li	a0,40
    80002f88:	ef1ff06f          	j	80002e78 <__printf+0x4d0>
    80002f8c:	00700793          	li	a5,7
    80002f90:	00600c93          	li	s9,6
    80002f94:	e0dff06f          	j	80002da0 <__printf+0x3f8>
    80002f98:	00700793          	li	a5,7
    80002f9c:	00600c93          	li	s9,6
    80002fa0:	c69ff06f          	j	80002c08 <__printf+0x260>
    80002fa4:	00300793          	li	a5,3
    80002fa8:	00200c93          	li	s9,2
    80002fac:	c5dff06f          	j	80002c08 <__printf+0x260>
    80002fb0:	00300793          	li	a5,3
    80002fb4:	00200c93          	li	s9,2
    80002fb8:	de9ff06f          	j	80002da0 <__printf+0x3f8>
    80002fbc:	00400793          	li	a5,4
    80002fc0:	00300c93          	li	s9,3
    80002fc4:	dddff06f          	j	80002da0 <__printf+0x3f8>
    80002fc8:	00400793          	li	a5,4
    80002fcc:	00300c93          	li	s9,3
    80002fd0:	c39ff06f          	j	80002c08 <__printf+0x260>
    80002fd4:	00500793          	li	a5,5
    80002fd8:	00400c93          	li	s9,4
    80002fdc:	c2dff06f          	j	80002c08 <__printf+0x260>
    80002fe0:	00500793          	li	a5,5
    80002fe4:	00400c93          	li	s9,4
    80002fe8:	db9ff06f          	j	80002da0 <__printf+0x3f8>
    80002fec:	00600793          	li	a5,6
    80002ff0:	00500c93          	li	s9,5
    80002ff4:	dadff06f          	j	80002da0 <__printf+0x3f8>
    80002ff8:	00600793          	li	a5,6
    80002ffc:	00500c93          	li	s9,5
    80003000:	c09ff06f          	j	80002c08 <__printf+0x260>
    80003004:	00800793          	li	a5,8
    80003008:	00700c93          	li	s9,7
    8000300c:	bfdff06f          	j	80002c08 <__printf+0x260>
    80003010:	00100793          	li	a5,1
    80003014:	d91ff06f          	j	80002da4 <__printf+0x3fc>
    80003018:	00100793          	li	a5,1
    8000301c:	bf1ff06f          	j	80002c0c <__printf+0x264>
    80003020:	00900793          	li	a5,9
    80003024:	00800c93          	li	s9,8
    80003028:	be1ff06f          	j	80002c08 <__printf+0x260>
    8000302c:	00001517          	auipc	a0,0x1
    80003030:	13450513          	addi	a0,a0,308 # 80004160 <CONSOLE_STATUS+0x150>
    80003034:	00000097          	auipc	ra,0x0
    80003038:	918080e7          	jalr	-1768(ra) # 8000294c <panic>

000000008000303c <printfinit>:
    8000303c:	fe010113          	addi	sp,sp,-32
    80003040:	00813823          	sd	s0,16(sp)
    80003044:	00913423          	sd	s1,8(sp)
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	02010413          	addi	s0,sp,32
    80003050:	00003497          	auipc	s1,0x3
    80003054:	97048493          	addi	s1,s1,-1680 # 800059c0 <pr>
    80003058:	00048513          	mv	a0,s1
    8000305c:	00001597          	auipc	a1,0x1
    80003060:	11458593          	addi	a1,a1,276 # 80004170 <CONSOLE_STATUS+0x160>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	5f4080e7          	jalr	1524(ra) # 80003658 <initlock>
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	0004ac23          	sw	zero,24(s1)
    80003078:	00813483          	ld	s1,8(sp)
    8000307c:	02010113          	addi	sp,sp,32
    80003080:	00008067          	ret

0000000080003084 <uartinit>:
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00813423          	sd	s0,8(sp)
    8000308c:	01010413          	addi	s0,sp,16
    80003090:	100007b7          	lui	a5,0x10000
    80003094:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003098:	f8000713          	li	a4,-128
    8000309c:	00e781a3          	sb	a4,3(a5)
    800030a0:	00300713          	li	a4,3
    800030a4:	00e78023          	sb	a4,0(a5)
    800030a8:	000780a3          	sb	zero,1(a5)
    800030ac:	00e781a3          	sb	a4,3(a5)
    800030b0:	00700693          	li	a3,7
    800030b4:	00d78123          	sb	a3,2(a5)
    800030b8:	00e780a3          	sb	a4,1(a5)
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret

00000000800030c8 <uartputc>:
    800030c8:	00001797          	auipc	a5,0x1
    800030cc:	6907a783          	lw	a5,1680(a5) # 80004758 <panicked>
    800030d0:	00078463          	beqz	a5,800030d8 <uartputc+0x10>
    800030d4:	0000006f          	j	800030d4 <uartputc+0xc>
    800030d8:	fd010113          	addi	sp,sp,-48
    800030dc:	02813023          	sd	s0,32(sp)
    800030e0:	00913c23          	sd	s1,24(sp)
    800030e4:	01213823          	sd	s2,16(sp)
    800030e8:	01313423          	sd	s3,8(sp)
    800030ec:	02113423          	sd	ra,40(sp)
    800030f0:	03010413          	addi	s0,sp,48
    800030f4:	00001917          	auipc	s2,0x1
    800030f8:	66c90913          	addi	s2,s2,1644 # 80004760 <uart_tx_r>
    800030fc:	00093783          	ld	a5,0(s2)
    80003100:	00001497          	auipc	s1,0x1
    80003104:	66848493          	addi	s1,s1,1640 # 80004768 <uart_tx_w>
    80003108:	0004b703          	ld	a4,0(s1)
    8000310c:	02078693          	addi	a3,a5,32
    80003110:	00050993          	mv	s3,a0
    80003114:	02e69c63          	bne	a3,a4,8000314c <uartputc+0x84>
    80003118:	00001097          	auipc	ra,0x1
    8000311c:	834080e7          	jalr	-1996(ra) # 8000394c <push_on>
    80003120:	00093783          	ld	a5,0(s2)
    80003124:	0004b703          	ld	a4,0(s1)
    80003128:	02078793          	addi	a5,a5,32
    8000312c:	00e79463          	bne	a5,a4,80003134 <uartputc+0x6c>
    80003130:	0000006f          	j	80003130 <uartputc+0x68>
    80003134:	00001097          	auipc	ra,0x1
    80003138:	88c080e7          	jalr	-1908(ra) # 800039c0 <pop_on>
    8000313c:	00093783          	ld	a5,0(s2)
    80003140:	0004b703          	ld	a4,0(s1)
    80003144:	02078693          	addi	a3,a5,32
    80003148:	fce688e3          	beq	a3,a4,80003118 <uartputc+0x50>
    8000314c:	01f77693          	andi	a3,a4,31
    80003150:	00003597          	auipc	a1,0x3
    80003154:	89058593          	addi	a1,a1,-1904 # 800059e0 <uart_tx_buf>
    80003158:	00d586b3          	add	a3,a1,a3
    8000315c:	00170713          	addi	a4,a4,1
    80003160:	01368023          	sb	s3,0(a3)
    80003164:	00e4b023          	sd	a4,0(s1)
    80003168:	10000637          	lui	a2,0x10000
    8000316c:	02f71063          	bne	a4,a5,8000318c <uartputc+0xc4>
    80003170:	0340006f          	j	800031a4 <uartputc+0xdc>
    80003174:	00074703          	lbu	a4,0(a4)
    80003178:	00f93023          	sd	a5,0(s2)
    8000317c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003180:	00093783          	ld	a5,0(s2)
    80003184:	0004b703          	ld	a4,0(s1)
    80003188:	00f70e63          	beq	a4,a5,800031a4 <uartputc+0xdc>
    8000318c:	00564683          	lbu	a3,5(a2)
    80003190:	01f7f713          	andi	a4,a5,31
    80003194:	00e58733          	add	a4,a1,a4
    80003198:	0206f693          	andi	a3,a3,32
    8000319c:	00178793          	addi	a5,a5,1
    800031a0:	fc069ae3          	bnez	a3,80003174 <uartputc+0xac>
    800031a4:	02813083          	ld	ra,40(sp)
    800031a8:	02013403          	ld	s0,32(sp)
    800031ac:	01813483          	ld	s1,24(sp)
    800031b0:	01013903          	ld	s2,16(sp)
    800031b4:	00813983          	ld	s3,8(sp)
    800031b8:	03010113          	addi	sp,sp,48
    800031bc:	00008067          	ret

00000000800031c0 <uartputc_sync>:
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00813423          	sd	s0,8(sp)
    800031c8:	01010413          	addi	s0,sp,16
    800031cc:	00001717          	auipc	a4,0x1
    800031d0:	58c72703          	lw	a4,1420(a4) # 80004758 <panicked>
    800031d4:	02071663          	bnez	a4,80003200 <uartputc_sync+0x40>
    800031d8:	00050793          	mv	a5,a0
    800031dc:	100006b7          	lui	a3,0x10000
    800031e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800031e4:	02077713          	andi	a4,a4,32
    800031e8:	fe070ce3          	beqz	a4,800031e0 <uartputc_sync+0x20>
    800031ec:	0ff7f793          	andi	a5,a5,255
    800031f0:	00f68023          	sb	a5,0(a3)
    800031f4:	00813403          	ld	s0,8(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret
    80003200:	0000006f          	j	80003200 <uartputc_sync+0x40>

0000000080003204 <uartstart>:
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00813423          	sd	s0,8(sp)
    8000320c:	01010413          	addi	s0,sp,16
    80003210:	00001617          	auipc	a2,0x1
    80003214:	55060613          	addi	a2,a2,1360 # 80004760 <uart_tx_r>
    80003218:	00001517          	auipc	a0,0x1
    8000321c:	55050513          	addi	a0,a0,1360 # 80004768 <uart_tx_w>
    80003220:	00063783          	ld	a5,0(a2)
    80003224:	00053703          	ld	a4,0(a0)
    80003228:	04f70263          	beq	a4,a5,8000326c <uartstart+0x68>
    8000322c:	100005b7          	lui	a1,0x10000
    80003230:	00002817          	auipc	a6,0x2
    80003234:	7b080813          	addi	a6,a6,1968 # 800059e0 <uart_tx_buf>
    80003238:	01c0006f          	j	80003254 <uartstart+0x50>
    8000323c:	0006c703          	lbu	a4,0(a3)
    80003240:	00f63023          	sd	a5,0(a2)
    80003244:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003248:	00063783          	ld	a5,0(a2)
    8000324c:	00053703          	ld	a4,0(a0)
    80003250:	00f70e63          	beq	a4,a5,8000326c <uartstart+0x68>
    80003254:	01f7f713          	andi	a4,a5,31
    80003258:	00e806b3          	add	a3,a6,a4
    8000325c:	0055c703          	lbu	a4,5(a1)
    80003260:	00178793          	addi	a5,a5,1
    80003264:	02077713          	andi	a4,a4,32
    80003268:	fc071ae3          	bnez	a4,8000323c <uartstart+0x38>
    8000326c:	00813403          	ld	s0,8(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret

0000000080003278 <uartgetc>:
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00813423          	sd	s0,8(sp)
    80003280:	01010413          	addi	s0,sp,16
    80003284:	10000737          	lui	a4,0x10000
    80003288:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000328c:	0017f793          	andi	a5,a5,1
    80003290:	00078c63          	beqz	a5,800032a8 <uartgetc+0x30>
    80003294:	00074503          	lbu	a0,0(a4)
    80003298:	0ff57513          	andi	a0,a0,255
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret
    800032a8:	fff00513          	li	a0,-1
    800032ac:	ff1ff06f          	j	8000329c <uartgetc+0x24>

00000000800032b0 <uartintr>:
    800032b0:	100007b7          	lui	a5,0x10000
    800032b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800032b8:	0017f793          	andi	a5,a5,1
    800032bc:	0a078463          	beqz	a5,80003364 <uartintr+0xb4>
    800032c0:	fe010113          	addi	sp,sp,-32
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	00113c23          	sd	ra,24(sp)
    800032d0:	02010413          	addi	s0,sp,32
    800032d4:	100004b7          	lui	s1,0x10000
    800032d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800032dc:	0ff57513          	andi	a0,a0,255
    800032e0:	fffff097          	auipc	ra,0xfffff
    800032e4:	534080e7          	jalr	1332(ra) # 80002814 <consoleintr>
    800032e8:	0054c783          	lbu	a5,5(s1)
    800032ec:	0017f793          	andi	a5,a5,1
    800032f0:	fe0794e3          	bnez	a5,800032d8 <uartintr+0x28>
    800032f4:	00001617          	auipc	a2,0x1
    800032f8:	46c60613          	addi	a2,a2,1132 # 80004760 <uart_tx_r>
    800032fc:	00001517          	auipc	a0,0x1
    80003300:	46c50513          	addi	a0,a0,1132 # 80004768 <uart_tx_w>
    80003304:	00063783          	ld	a5,0(a2)
    80003308:	00053703          	ld	a4,0(a0)
    8000330c:	04f70263          	beq	a4,a5,80003350 <uartintr+0xa0>
    80003310:	100005b7          	lui	a1,0x10000
    80003314:	00002817          	auipc	a6,0x2
    80003318:	6cc80813          	addi	a6,a6,1740 # 800059e0 <uart_tx_buf>
    8000331c:	01c0006f          	j	80003338 <uartintr+0x88>
    80003320:	0006c703          	lbu	a4,0(a3)
    80003324:	00f63023          	sd	a5,0(a2)
    80003328:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000332c:	00063783          	ld	a5,0(a2)
    80003330:	00053703          	ld	a4,0(a0)
    80003334:	00f70e63          	beq	a4,a5,80003350 <uartintr+0xa0>
    80003338:	01f7f713          	andi	a4,a5,31
    8000333c:	00e806b3          	add	a3,a6,a4
    80003340:	0055c703          	lbu	a4,5(a1)
    80003344:	00178793          	addi	a5,a5,1
    80003348:	02077713          	andi	a4,a4,32
    8000334c:	fc071ae3          	bnez	a4,80003320 <uartintr+0x70>
    80003350:	01813083          	ld	ra,24(sp)
    80003354:	01013403          	ld	s0,16(sp)
    80003358:	00813483          	ld	s1,8(sp)
    8000335c:	02010113          	addi	sp,sp,32
    80003360:	00008067          	ret
    80003364:	00001617          	auipc	a2,0x1
    80003368:	3fc60613          	addi	a2,a2,1020 # 80004760 <uart_tx_r>
    8000336c:	00001517          	auipc	a0,0x1
    80003370:	3fc50513          	addi	a0,a0,1020 # 80004768 <uart_tx_w>
    80003374:	00063783          	ld	a5,0(a2)
    80003378:	00053703          	ld	a4,0(a0)
    8000337c:	04f70263          	beq	a4,a5,800033c0 <uartintr+0x110>
    80003380:	100005b7          	lui	a1,0x10000
    80003384:	00002817          	auipc	a6,0x2
    80003388:	65c80813          	addi	a6,a6,1628 # 800059e0 <uart_tx_buf>
    8000338c:	01c0006f          	j	800033a8 <uartintr+0xf8>
    80003390:	0006c703          	lbu	a4,0(a3)
    80003394:	00f63023          	sd	a5,0(a2)
    80003398:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000339c:	00063783          	ld	a5,0(a2)
    800033a0:	00053703          	ld	a4,0(a0)
    800033a4:	02f70063          	beq	a4,a5,800033c4 <uartintr+0x114>
    800033a8:	01f7f713          	andi	a4,a5,31
    800033ac:	00e806b3          	add	a3,a6,a4
    800033b0:	0055c703          	lbu	a4,5(a1)
    800033b4:	00178793          	addi	a5,a5,1
    800033b8:	02077713          	andi	a4,a4,32
    800033bc:	fc071ae3          	bnez	a4,80003390 <uartintr+0xe0>
    800033c0:	00008067          	ret
    800033c4:	00008067          	ret

00000000800033c8 <kinit>:
    800033c8:	fc010113          	addi	sp,sp,-64
    800033cc:	02913423          	sd	s1,40(sp)
    800033d0:	fffff7b7          	lui	a5,0xfffff
    800033d4:	00003497          	auipc	s1,0x3
    800033d8:	62b48493          	addi	s1,s1,1579 # 800069ff <end+0xfff>
    800033dc:	02813823          	sd	s0,48(sp)
    800033e0:	01313c23          	sd	s3,24(sp)
    800033e4:	00f4f4b3          	and	s1,s1,a5
    800033e8:	02113c23          	sd	ra,56(sp)
    800033ec:	03213023          	sd	s2,32(sp)
    800033f0:	01413823          	sd	s4,16(sp)
    800033f4:	01513423          	sd	s5,8(sp)
    800033f8:	04010413          	addi	s0,sp,64
    800033fc:	000017b7          	lui	a5,0x1
    80003400:	01100993          	li	s3,17
    80003404:	00f487b3          	add	a5,s1,a5
    80003408:	01b99993          	slli	s3,s3,0x1b
    8000340c:	06f9e063          	bltu	s3,a5,8000346c <kinit+0xa4>
    80003410:	00002a97          	auipc	s5,0x2
    80003414:	5f0a8a93          	addi	s5,s5,1520 # 80005a00 <end>
    80003418:	0754ec63          	bltu	s1,s5,80003490 <kinit+0xc8>
    8000341c:	0734fa63          	bgeu	s1,s3,80003490 <kinit+0xc8>
    80003420:	00088a37          	lui	s4,0x88
    80003424:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003428:	00001917          	auipc	s2,0x1
    8000342c:	34890913          	addi	s2,s2,840 # 80004770 <kmem>
    80003430:	00ca1a13          	slli	s4,s4,0xc
    80003434:	0140006f          	j	80003448 <kinit+0x80>
    80003438:	000017b7          	lui	a5,0x1
    8000343c:	00f484b3          	add	s1,s1,a5
    80003440:	0554e863          	bltu	s1,s5,80003490 <kinit+0xc8>
    80003444:	0534f663          	bgeu	s1,s3,80003490 <kinit+0xc8>
    80003448:	00001637          	lui	a2,0x1
    8000344c:	00100593          	li	a1,1
    80003450:	00048513          	mv	a0,s1
    80003454:	00000097          	auipc	ra,0x0
    80003458:	5e4080e7          	jalr	1508(ra) # 80003a38 <__memset>
    8000345c:	00093783          	ld	a5,0(s2)
    80003460:	00f4b023          	sd	a5,0(s1)
    80003464:	00993023          	sd	s1,0(s2)
    80003468:	fd4498e3          	bne	s1,s4,80003438 <kinit+0x70>
    8000346c:	03813083          	ld	ra,56(sp)
    80003470:	03013403          	ld	s0,48(sp)
    80003474:	02813483          	ld	s1,40(sp)
    80003478:	02013903          	ld	s2,32(sp)
    8000347c:	01813983          	ld	s3,24(sp)
    80003480:	01013a03          	ld	s4,16(sp)
    80003484:	00813a83          	ld	s5,8(sp)
    80003488:	04010113          	addi	sp,sp,64
    8000348c:	00008067          	ret
    80003490:	00001517          	auipc	a0,0x1
    80003494:	d0050513          	addi	a0,a0,-768 # 80004190 <digits+0x18>
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	4b4080e7          	jalr	1204(ra) # 8000294c <panic>

00000000800034a0 <freerange>:
    800034a0:	fc010113          	addi	sp,sp,-64
    800034a4:	000017b7          	lui	a5,0x1
    800034a8:	02913423          	sd	s1,40(sp)
    800034ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800034b0:	009504b3          	add	s1,a0,s1
    800034b4:	fffff537          	lui	a0,0xfffff
    800034b8:	02813823          	sd	s0,48(sp)
    800034bc:	02113c23          	sd	ra,56(sp)
    800034c0:	03213023          	sd	s2,32(sp)
    800034c4:	01313c23          	sd	s3,24(sp)
    800034c8:	01413823          	sd	s4,16(sp)
    800034cc:	01513423          	sd	s5,8(sp)
    800034d0:	01613023          	sd	s6,0(sp)
    800034d4:	04010413          	addi	s0,sp,64
    800034d8:	00a4f4b3          	and	s1,s1,a0
    800034dc:	00f487b3          	add	a5,s1,a5
    800034e0:	06f5e463          	bltu	a1,a5,80003548 <freerange+0xa8>
    800034e4:	00002a97          	auipc	s5,0x2
    800034e8:	51ca8a93          	addi	s5,s5,1308 # 80005a00 <end>
    800034ec:	0954e263          	bltu	s1,s5,80003570 <freerange+0xd0>
    800034f0:	01100993          	li	s3,17
    800034f4:	01b99993          	slli	s3,s3,0x1b
    800034f8:	0734fc63          	bgeu	s1,s3,80003570 <freerange+0xd0>
    800034fc:	00058a13          	mv	s4,a1
    80003500:	00001917          	auipc	s2,0x1
    80003504:	27090913          	addi	s2,s2,624 # 80004770 <kmem>
    80003508:	00002b37          	lui	s6,0x2
    8000350c:	0140006f          	j	80003520 <freerange+0x80>
    80003510:	000017b7          	lui	a5,0x1
    80003514:	00f484b3          	add	s1,s1,a5
    80003518:	0554ec63          	bltu	s1,s5,80003570 <freerange+0xd0>
    8000351c:	0534fa63          	bgeu	s1,s3,80003570 <freerange+0xd0>
    80003520:	00001637          	lui	a2,0x1
    80003524:	00100593          	li	a1,1
    80003528:	00048513          	mv	a0,s1
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	50c080e7          	jalr	1292(ra) # 80003a38 <__memset>
    80003534:	00093703          	ld	a4,0(s2)
    80003538:	016487b3          	add	a5,s1,s6
    8000353c:	00e4b023          	sd	a4,0(s1)
    80003540:	00993023          	sd	s1,0(s2)
    80003544:	fcfa76e3          	bgeu	s4,a5,80003510 <freerange+0x70>
    80003548:	03813083          	ld	ra,56(sp)
    8000354c:	03013403          	ld	s0,48(sp)
    80003550:	02813483          	ld	s1,40(sp)
    80003554:	02013903          	ld	s2,32(sp)
    80003558:	01813983          	ld	s3,24(sp)
    8000355c:	01013a03          	ld	s4,16(sp)
    80003560:	00813a83          	ld	s5,8(sp)
    80003564:	00013b03          	ld	s6,0(sp)
    80003568:	04010113          	addi	sp,sp,64
    8000356c:	00008067          	ret
    80003570:	00001517          	auipc	a0,0x1
    80003574:	c2050513          	addi	a0,a0,-992 # 80004190 <digits+0x18>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	3d4080e7          	jalr	980(ra) # 8000294c <panic>

0000000080003580 <kfree>:
    80003580:	fe010113          	addi	sp,sp,-32
    80003584:	00813823          	sd	s0,16(sp)
    80003588:	00113c23          	sd	ra,24(sp)
    8000358c:	00913423          	sd	s1,8(sp)
    80003590:	02010413          	addi	s0,sp,32
    80003594:	03451793          	slli	a5,a0,0x34
    80003598:	04079c63          	bnez	a5,800035f0 <kfree+0x70>
    8000359c:	00002797          	auipc	a5,0x2
    800035a0:	46478793          	addi	a5,a5,1124 # 80005a00 <end>
    800035a4:	00050493          	mv	s1,a0
    800035a8:	04f56463          	bltu	a0,a5,800035f0 <kfree+0x70>
    800035ac:	01100793          	li	a5,17
    800035b0:	01b79793          	slli	a5,a5,0x1b
    800035b4:	02f57e63          	bgeu	a0,a5,800035f0 <kfree+0x70>
    800035b8:	00001637          	lui	a2,0x1
    800035bc:	00100593          	li	a1,1
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	478080e7          	jalr	1144(ra) # 80003a38 <__memset>
    800035c8:	00001797          	auipc	a5,0x1
    800035cc:	1a878793          	addi	a5,a5,424 # 80004770 <kmem>
    800035d0:	0007b703          	ld	a4,0(a5)
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00e4b023          	sd	a4,0(s1)
    800035e0:	0097b023          	sd	s1,0(a5)
    800035e4:	00813483          	ld	s1,8(sp)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00008067          	ret
    800035f0:	00001517          	auipc	a0,0x1
    800035f4:	ba050513          	addi	a0,a0,-1120 # 80004190 <digits+0x18>
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	354080e7          	jalr	852(ra) # 8000294c <panic>

0000000080003600 <kalloc>:
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00913423          	sd	s1,8(sp)
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	02010413          	addi	s0,sp,32
    80003614:	00001797          	auipc	a5,0x1
    80003618:	15c78793          	addi	a5,a5,348 # 80004770 <kmem>
    8000361c:	0007b483          	ld	s1,0(a5)
    80003620:	02048063          	beqz	s1,80003640 <kalloc+0x40>
    80003624:	0004b703          	ld	a4,0(s1)
    80003628:	00001637          	lui	a2,0x1
    8000362c:	00500593          	li	a1,5
    80003630:	00048513          	mv	a0,s1
    80003634:	00e7b023          	sd	a4,0(a5)
    80003638:	00000097          	auipc	ra,0x0
    8000363c:	400080e7          	jalr	1024(ra) # 80003a38 <__memset>
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00048513          	mv	a0,s1
    8000364c:	00813483          	ld	s1,8(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <initlock>:
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00813423          	sd	s0,8(sp)
    80003660:	01010413          	addi	s0,sp,16
    80003664:	00813403          	ld	s0,8(sp)
    80003668:	00b53423          	sd	a1,8(a0)
    8000366c:	00052023          	sw	zero,0(a0)
    80003670:	00053823          	sd	zero,16(a0)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <acquire>:
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	01213023          	sd	s2,0(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	00050493          	mv	s1,a0
    80003698:	10002973          	csrr	s2,sstatus
    8000369c:	100027f3          	csrr	a5,sstatus
    800036a0:	ffd7f793          	andi	a5,a5,-3
    800036a4:	10079073          	csrw	sstatus,a5
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	8e0080e7          	jalr	-1824(ra) # 80001f88 <mycpu>
    800036b0:	07852783          	lw	a5,120(a0)
    800036b4:	06078e63          	beqz	a5,80003730 <acquire+0xb4>
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	8d0080e7          	jalr	-1840(ra) # 80001f88 <mycpu>
    800036c0:	07852783          	lw	a5,120(a0)
    800036c4:	0004a703          	lw	a4,0(s1)
    800036c8:	0017879b          	addiw	a5,a5,1
    800036cc:	06f52c23          	sw	a5,120(a0)
    800036d0:	04071063          	bnez	a4,80003710 <acquire+0x94>
    800036d4:	00100713          	li	a4,1
    800036d8:	00070793          	mv	a5,a4
    800036dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800036e0:	0007879b          	sext.w	a5,a5
    800036e4:	fe079ae3          	bnez	a5,800036d8 <acquire+0x5c>
    800036e8:	0ff0000f          	fence
    800036ec:	fffff097          	auipc	ra,0xfffff
    800036f0:	89c080e7          	jalr	-1892(ra) # 80001f88 <mycpu>
    800036f4:	01813083          	ld	ra,24(sp)
    800036f8:	01013403          	ld	s0,16(sp)
    800036fc:	00a4b823          	sd	a0,16(s1)
    80003700:	00013903          	ld	s2,0(sp)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	02010113          	addi	sp,sp,32
    8000370c:	00008067          	ret
    80003710:	0104b903          	ld	s2,16(s1)
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	874080e7          	jalr	-1932(ra) # 80001f88 <mycpu>
    8000371c:	faa91ce3          	bne	s2,a0,800036d4 <acquire+0x58>
    80003720:	00001517          	auipc	a0,0x1
    80003724:	a7850513          	addi	a0,a0,-1416 # 80004198 <digits+0x20>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	224080e7          	jalr	548(ra) # 8000294c <panic>
    80003730:	00195913          	srli	s2,s2,0x1
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	854080e7          	jalr	-1964(ra) # 80001f88 <mycpu>
    8000373c:	00197913          	andi	s2,s2,1
    80003740:	07252e23          	sw	s2,124(a0)
    80003744:	f75ff06f          	j	800036b8 <acquire+0x3c>

0000000080003748 <release>:
    80003748:	fe010113          	addi	sp,sp,-32
    8000374c:	00813823          	sd	s0,16(sp)
    80003750:	00113c23          	sd	ra,24(sp)
    80003754:	00913423          	sd	s1,8(sp)
    80003758:	01213023          	sd	s2,0(sp)
    8000375c:	02010413          	addi	s0,sp,32
    80003760:	00052783          	lw	a5,0(a0)
    80003764:	00079a63          	bnez	a5,80003778 <release+0x30>
    80003768:	00001517          	auipc	a0,0x1
    8000376c:	a3850513          	addi	a0,a0,-1480 # 800041a0 <digits+0x28>
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	1dc080e7          	jalr	476(ra) # 8000294c <panic>
    80003778:	01053903          	ld	s2,16(a0)
    8000377c:	00050493          	mv	s1,a0
    80003780:	fffff097          	auipc	ra,0xfffff
    80003784:	808080e7          	jalr	-2040(ra) # 80001f88 <mycpu>
    80003788:	fea910e3          	bne	s2,a0,80003768 <release+0x20>
    8000378c:	0004b823          	sd	zero,16(s1)
    80003790:	0ff0000f          	fence
    80003794:	0f50000f          	fence	iorw,ow
    80003798:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	7ec080e7          	jalr	2028(ra) # 80001f88 <mycpu>
    800037a4:	100027f3          	csrr	a5,sstatus
    800037a8:	0027f793          	andi	a5,a5,2
    800037ac:	04079a63          	bnez	a5,80003800 <release+0xb8>
    800037b0:	07852783          	lw	a5,120(a0)
    800037b4:	02f05e63          	blez	a5,800037f0 <release+0xa8>
    800037b8:	fff7871b          	addiw	a4,a5,-1
    800037bc:	06e52c23          	sw	a4,120(a0)
    800037c0:	00071c63          	bnez	a4,800037d8 <release+0x90>
    800037c4:	07c52783          	lw	a5,124(a0)
    800037c8:	00078863          	beqz	a5,800037d8 <release+0x90>
    800037cc:	100027f3          	csrr	a5,sstatus
    800037d0:	0027e793          	ori	a5,a5,2
    800037d4:	10079073          	csrw	sstatus,a5
    800037d8:	01813083          	ld	ra,24(sp)
    800037dc:	01013403          	ld	s0,16(sp)
    800037e0:	00813483          	ld	s1,8(sp)
    800037e4:	00013903          	ld	s2,0(sp)
    800037e8:	02010113          	addi	sp,sp,32
    800037ec:	00008067          	ret
    800037f0:	00001517          	auipc	a0,0x1
    800037f4:	9d050513          	addi	a0,a0,-1584 # 800041c0 <digits+0x48>
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	154080e7          	jalr	340(ra) # 8000294c <panic>
    80003800:	00001517          	auipc	a0,0x1
    80003804:	9a850513          	addi	a0,a0,-1624 # 800041a8 <digits+0x30>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	144080e7          	jalr	324(ra) # 8000294c <panic>

0000000080003810 <holding>:
    80003810:	00052783          	lw	a5,0(a0)
    80003814:	00079663          	bnez	a5,80003820 <holding+0x10>
    80003818:	00000513          	li	a0,0
    8000381c:	00008067          	ret
    80003820:	fe010113          	addi	sp,sp,-32
    80003824:	00813823          	sd	s0,16(sp)
    80003828:	00913423          	sd	s1,8(sp)
    8000382c:	00113c23          	sd	ra,24(sp)
    80003830:	02010413          	addi	s0,sp,32
    80003834:	01053483          	ld	s1,16(a0)
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	750080e7          	jalr	1872(ra) # 80001f88 <mycpu>
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	40a48533          	sub	a0,s1,a0
    8000384c:	00153513          	seqz	a0,a0
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret

000000008000385c <push_off>:
    8000385c:	fe010113          	addi	sp,sp,-32
    80003860:	00813823          	sd	s0,16(sp)
    80003864:	00113c23          	sd	ra,24(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	02010413          	addi	s0,sp,32
    80003870:	100024f3          	csrr	s1,sstatus
    80003874:	100027f3          	csrr	a5,sstatus
    80003878:	ffd7f793          	andi	a5,a5,-3
    8000387c:	10079073          	csrw	sstatus,a5
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	708080e7          	jalr	1800(ra) # 80001f88 <mycpu>
    80003888:	07852783          	lw	a5,120(a0)
    8000388c:	02078663          	beqz	a5,800038b8 <push_off+0x5c>
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	6f8080e7          	jalr	1784(ra) # 80001f88 <mycpu>
    80003898:	07852783          	lw	a5,120(a0)
    8000389c:	01813083          	ld	ra,24(sp)
    800038a0:	01013403          	ld	s0,16(sp)
    800038a4:	0017879b          	addiw	a5,a5,1
    800038a8:	06f52c23          	sw	a5,120(a0)
    800038ac:	00813483          	ld	s1,8(sp)
    800038b0:	02010113          	addi	sp,sp,32
    800038b4:	00008067          	ret
    800038b8:	0014d493          	srli	s1,s1,0x1
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	6cc080e7          	jalr	1740(ra) # 80001f88 <mycpu>
    800038c4:	0014f493          	andi	s1,s1,1
    800038c8:	06952e23          	sw	s1,124(a0)
    800038cc:	fc5ff06f          	j	80003890 <push_off+0x34>

00000000800038d0 <pop_off>:
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00813023          	sd	s0,0(sp)
    800038d8:	00113423          	sd	ra,8(sp)
    800038dc:	01010413          	addi	s0,sp,16
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	6a8080e7          	jalr	1704(ra) # 80001f88 <mycpu>
    800038e8:	100027f3          	csrr	a5,sstatus
    800038ec:	0027f793          	andi	a5,a5,2
    800038f0:	04079663          	bnez	a5,8000393c <pop_off+0x6c>
    800038f4:	07852783          	lw	a5,120(a0)
    800038f8:	02f05a63          	blez	a5,8000392c <pop_off+0x5c>
    800038fc:	fff7871b          	addiw	a4,a5,-1
    80003900:	06e52c23          	sw	a4,120(a0)
    80003904:	00071c63          	bnez	a4,8000391c <pop_off+0x4c>
    80003908:	07c52783          	lw	a5,124(a0)
    8000390c:	00078863          	beqz	a5,8000391c <pop_off+0x4c>
    80003910:	100027f3          	csrr	a5,sstatus
    80003914:	0027e793          	ori	a5,a5,2
    80003918:	10079073          	csrw	sstatus,a5
    8000391c:	00813083          	ld	ra,8(sp)
    80003920:	00013403          	ld	s0,0(sp)
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret
    8000392c:	00001517          	auipc	a0,0x1
    80003930:	89450513          	addi	a0,a0,-1900 # 800041c0 <digits+0x48>
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	018080e7          	jalr	24(ra) # 8000294c <panic>
    8000393c:	00001517          	auipc	a0,0x1
    80003940:	86c50513          	addi	a0,a0,-1940 # 800041a8 <digits+0x30>
    80003944:	fffff097          	auipc	ra,0xfffff
    80003948:	008080e7          	jalr	8(ra) # 8000294c <panic>

000000008000394c <push_on>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00113c23          	sd	ra,24(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	100024f3          	csrr	s1,sstatus
    80003964:	100027f3          	csrr	a5,sstatus
    80003968:	0027e793          	ori	a5,a5,2
    8000396c:	10079073          	csrw	sstatus,a5
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	618080e7          	jalr	1560(ra) # 80001f88 <mycpu>
    80003978:	07852783          	lw	a5,120(a0)
    8000397c:	02078663          	beqz	a5,800039a8 <push_on+0x5c>
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	608080e7          	jalr	1544(ra) # 80001f88 <mycpu>
    80003988:	07852783          	lw	a5,120(a0)
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	0017879b          	addiw	a5,a5,1
    80003998:	06f52c23          	sw	a5,120(a0)
    8000399c:	00813483          	ld	s1,8(sp)
    800039a0:	02010113          	addi	sp,sp,32
    800039a4:	00008067          	ret
    800039a8:	0014d493          	srli	s1,s1,0x1
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	5dc080e7          	jalr	1500(ra) # 80001f88 <mycpu>
    800039b4:	0014f493          	andi	s1,s1,1
    800039b8:	06952e23          	sw	s1,124(a0)
    800039bc:	fc5ff06f          	j	80003980 <push_on+0x34>

00000000800039c0 <pop_on>:
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00813023          	sd	s0,0(sp)
    800039c8:	00113423          	sd	ra,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	5b8080e7          	jalr	1464(ra) # 80001f88 <mycpu>
    800039d8:	100027f3          	csrr	a5,sstatus
    800039dc:	0027f793          	andi	a5,a5,2
    800039e0:	04078463          	beqz	a5,80003a28 <pop_on+0x68>
    800039e4:	07852783          	lw	a5,120(a0)
    800039e8:	02f05863          	blez	a5,80003a18 <pop_on+0x58>
    800039ec:	fff7879b          	addiw	a5,a5,-1
    800039f0:	06f52c23          	sw	a5,120(a0)
    800039f4:	07853783          	ld	a5,120(a0)
    800039f8:	00079863          	bnez	a5,80003a08 <pop_on+0x48>
    800039fc:	100027f3          	csrr	a5,sstatus
    80003a00:	ffd7f793          	andi	a5,a5,-3
    80003a04:	10079073          	csrw	sstatus,a5
    80003a08:	00813083          	ld	ra,8(sp)
    80003a0c:	00013403          	ld	s0,0(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret
    80003a18:	00000517          	auipc	a0,0x0
    80003a1c:	7d050513          	addi	a0,a0,2000 # 800041e8 <digits+0x70>
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	f2c080e7          	jalr	-212(ra) # 8000294c <panic>
    80003a28:	00000517          	auipc	a0,0x0
    80003a2c:	7a050513          	addi	a0,a0,1952 # 800041c8 <digits+0x50>
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	f1c080e7          	jalr	-228(ra) # 8000294c <panic>

0000000080003a38 <__memset>:
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
    80003a44:	1a060e63          	beqz	a2,80003c00 <__memset+0x1c8>
    80003a48:	40a007b3          	neg	a5,a0
    80003a4c:	0077f793          	andi	a5,a5,7
    80003a50:	00778693          	addi	a3,a5,7
    80003a54:	00b00813          	li	a6,11
    80003a58:	0ff5f593          	andi	a1,a1,255
    80003a5c:	fff6071b          	addiw	a4,a2,-1
    80003a60:	1b06e663          	bltu	a3,a6,80003c0c <__memset+0x1d4>
    80003a64:	1cd76463          	bltu	a4,a3,80003c2c <__memset+0x1f4>
    80003a68:	1a078e63          	beqz	a5,80003c24 <__memset+0x1ec>
    80003a6c:	00b50023          	sb	a1,0(a0)
    80003a70:	00100713          	li	a4,1
    80003a74:	1ae78463          	beq	a5,a4,80003c1c <__memset+0x1e4>
    80003a78:	00b500a3          	sb	a1,1(a0)
    80003a7c:	00200713          	li	a4,2
    80003a80:	1ae78a63          	beq	a5,a4,80003c34 <__memset+0x1fc>
    80003a84:	00b50123          	sb	a1,2(a0)
    80003a88:	00300713          	li	a4,3
    80003a8c:	18e78463          	beq	a5,a4,80003c14 <__memset+0x1dc>
    80003a90:	00b501a3          	sb	a1,3(a0)
    80003a94:	00400713          	li	a4,4
    80003a98:	1ae78263          	beq	a5,a4,80003c3c <__memset+0x204>
    80003a9c:	00b50223          	sb	a1,4(a0)
    80003aa0:	00500713          	li	a4,5
    80003aa4:	1ae78063          	beq	a5,a4,80003c44 <__memset+0x20c>
    80003aa8:	00b502a3          	sb	a1,5(a0)
    80003aac:	00700713          	li	a4,7
    80003ab0:	18e79e63          	bne	a5,a4,80003c4c <__memset+0x214>
    80003ab4:	00b50323          	sb	a1,6(a0)
    80003ab8:	00700e93          	li	t4,7
    80003abc:	00859713          	slli	a4,a1,0x8
    80003ac0:	00e5e733          	or	a4,a1,a4
    80003ac4:	01059e13          	slli	t3,a1,0x10
    80003ac8:	01c76e33          	or	t3,a4,t3
    80003acc:	01859313          	slli	t1,a1,0x18
    80003ad0:	006e6333          	or	t1,t3,t1
    80003ad4:	02059893          	slli	a7,a1,0x20
    80003ad8:	40f60e3b          	subw	t3,a2,a5
    80003adc:	011368b3          	or	a7,t1,a7
    80003ae0:	02859813          	slli	a6,a1,0x28
    80003ae4:	0108e833          	or	a6,a7,a6
    80003ae8:	03059693          	slli	a3,a1,0x30
    80003aec:	003e589b          	srliw	a7,t3,0x3
    80003af0:	00d866b3          	or	a3,a6,a3
    80003af4:	03859713          	slli	a4,a1,0x38
    80003af8:	00389813          	slli	a6,a7,0x3
    80003afc:	00f507b3          	add	a5,a0,a5
    80003b00:	00e6e733          	or	a4,a3,a4
    80003b04:	000e089b          	sext.w	a7,t3
    80003b08:	00f806b3          	add	a3,a6,a5
    80003b0c:	00e7b023          	sd	a4,0(a5)
    80003b10:	00878793          	addi	a5,a5,8
    80003b14:	fed79ce3          	bne	a5,a3,80003b0c <__memset+0xd4>
    80003b18:	ff8e7793          	andi	a5,t3,-8
    80003b1c:	0007871b          	sext.w	a4,a5
    80003b20:	01d787bb          	addw	a5,a5,t4
    80003b24:	0ce88e63          	beq	a7,a4,80003c00 <__memset+0x1c8>
    80003b28:	00f50733          	add	a4,a0,a5
    80003b2c:	00b70023          	sb	a1,0(a4)
    80003b30:	0017871b          	addiw	a4,a5,1
    80003b34:	0cc77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b38:	00e50733          	add	a4,a0,a4
    80003b3c:	00b70023          	sb	a1,0(a4)
    80003b40:	0027871b          	addiw	a4,a5,2
    80003b44:	0ac77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b48:	00e50733          	add	a4,a0,a4
    80003b4c:	00b70023          	sb	a1,0(a4)
    80003b50:	0037871b          	addiw	a4,a5,3
    80003b54:	0ac77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b58:	00e50733          	add	a4,a0,a4
    80003b5c:	00b70023          	sb	a1,0(a4)
    80003b60:	0047871b          	addiw	a4,a5,4
    80003b64:	08c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b68:	00e50733          	add	a4,a0,a4
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	0057871b          	addiw	a4,a5,5
    80003b74:	08c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	0067871b          	addiw	a4,a5,6
    80003b84:	06c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	0077871b          	addiw	a4,a5,7
    80003b94:	06c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0087871b          	addiw	a4,a5,8
    80003ba4:	04c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0097871b          	addiw	a4,a5,9
    80003bb4:	04c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	00a7871b          	addiw	a4,a5,10
    80003bc4:	02c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	00b7871b          	addiw	a4,a5,11
    80003bd4:	02c77663          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	00c7871b          	addiw	a4,a5,12
    80003be4:	00c77e63          	bgeu	a4,a2,80003c00 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	00d7879b          	addiw	a5,a5,13
    80003bf4:	00c7f663          	bgeu	a5,a2,80003c00 <__memset+0x1c8>
    80003bf8:	00f507b3          	add	a5,a0,a5
    80003bfc:	00b78023          	sb	a1,0(a5)
    80003c00:	00813403          	ld	s0,8(sp)
    80003c04:	01010113          	addi	sp,sp,16
    80003c08:	00008067          	ret
    80003c0c:	00b00693          	li	a3,11
    80003c10:	e55ff06f          	j	80003a64 <__memset+0x2c>
    80003c14:	00300e93          	li	t4,3
    80003c18:	ea5ff06f          	j	80003abc <__memset+0x84>
    80003c1c:	00100e93          	li	t4,1
    80003c20:	e9dff06f          	j	80003abc <__memset+0x84>
    80003c24:	00000e93          	li	t4,0
    80003c28:	e95ff06f          	j	80003abc <__memset+0x84>
    80003c2c:	00000793          	li	a5,0
    80003c30:	ef9ff06f          	j	80003b28 <__memset+0xf0>
    80003c34:	00200e93          	li	t4,2
    80003c38:	e85ff06f          	j	80003abc <__memset+0x84>
    80003c3c:	00400e93          	li	t4,4
    80003c40:	e7dff06f          	j	80003abc <__memset+0x84>
    80003c44:	00500e93          	li	t4,5
    80003c48:	e75ff06f          	j	80003abc <__memset+0x84>
    80003c4c:	00600e93          	li	t4,6
    80003c50:	e6dff06f          	j	80003abc <__memset+0x84>

0000000080003c54 <__memmove>:
    80003c54:	ff010113          	addi	sp,sp,-16
    80003c58:	00813423          	sd	s0,8(sp)
    80003c5c:	01010413          	addi	s0,sp,16
    80003c60:	0e060863          	beqz	a2,80003d50 <__memmove+0xfc>
    80003c64:	fff6069b          	addiw	a3,a2,-1
    80003c68:	0006881b          	sext.w	a6,a3
    80003c6c:	0ea5e863          	bltu	a1,a0,80003d5c <__memmove+0x108>
    80003c70:	00758713          	addi	a4,a1,7
    80003c74:	00a5e7b3          	or	a5,a1,a0
    80003c78:	40a70733          	sub	a4,a4,a0
    80003c7c:	0077f793          	andi	a5,a5,7
    80003c80:	00f73713          	sltiu	a4,a4,15
    80003c84:	00174713          	xori	a4,a4,1
    80003c88:	0017b793          	seqz	a5,a5
    80003c8c:	00e7f7b3          	and	a5,a5,a4
    80003c90:	10078863          	beqz	a5,80003da0 <__memmove+0x14c>
    80003c94:	00900793          	li	a5,9
    80003c98:	1107f463          	bgeu	a5,a6,80003da0 <__memmove+0x14c>
    80003c9c:	0036581b          	srliw	a6,a2,0x3
    80003ca0:	fff8081b          	addiw	a6,a6,-1
    80003ca4:	02081813          	slli	a6,a6,0x20
    80003ca8:	01d85893          	srli	a7,a6,0x1d
    80003cac:	00858813          	addi	a6,a1,8
    80003cb0:	00058793          	mv	a5,a1
    80003cb4:	00050713          	mv	a4,a0
    80003cb8:	01088833          	add	a6,a7,a6
    80003cbc:	0007b883          	ld	a7,0(a5)
    80003cc0:	00878793          	addi	a5,a5,8
    80003cc4:	00870713          	addi	a4,a4,8
    80003cc8:	ff173c23          	sd	a7,-8(a4)
    80003ccc:	ff0798e3          	bne	a5,a6,80003cbc <__memmove+0x68>
    80003cd0:	ff867713          	andi	a4,a2,-8
    80003cd4:	02071793          	slli	a5,a4,0x20
    80003cd8:	0207d793          	srli	a5,a5,0x20
    80003cdc:	00f585b3          	add	a1,a1,a5
    80003ce0:	40e686bb          	subw	a3,a3,a4
    80003ce4:	00f507b3          	add	a5,a0,a5
    80003ce8:	06e60463          	beq	a2,a4,80003d50 <__memmove+0xfc>
    80003cec:	0005c703          	lbu	a4,0(a1)
    80003cf0:	00e78023          	sb	a4,0(a5)
    80003cf4:	04068e63          	beqz	a3,80003d50 <__memmove+0xfc>
    80003cf8:	0015c603          	lbu	a2,1(a1)
    80003cfc:	00100713          	li	a4,1
    80003d00:	00c780a3          	sb	a2,1(a5)
    80003d04:	04e68663          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d08:	0025c603          	lbu	a2,2(a1)
    80003d0c:	00200713          	li	a4,2
    80003d10:	00c78123          	sb	a2,2(a5)
    80003d14:	02e68e63          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d18:	0035c603          	lbu	a2,3(a1)
    80003d1c:	00300713          	li	a4,3
    80003d20:	00c781a3          	sb	a2,3(a5)
    80003d24:	02e68663          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d28:	0045c603          	lbu	a2,4(a1)
    80003d2c:	00400713          	li	a4,4
    80003d30:	00c78223          	sb	a2,4(a5)
    80003d34:	00e68e63          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d38:	0055c603          	lbu	a2,5(a1)
    80003d3c:	00500713          	li	a4,5
    80003d40:	00c782a3          	sb	a2,5(a5)
    80003d44:	00e68663          	beq	a3,a4,80003d50 <__memmove+0xfc>
    80003d48:	0065c703          	lbu	a4,6(a1)
    80003d4c:	00e78323          	sb	a4,6(a5)
    80003d50:	00813403          	ld	s0,8(sp)
    80003d54:	01010113          	addi	sp,sp,16
    80003d58:	00008067          	ret
    80003d5c:	02061713          	slli	a4,a2,0x20
    80003d60:	02075713          	srli	a4,a4,0x20
    80003d64:	00e587b3          	add	a5,a1,a4
    80003d68:	f0f574e3          	bgeu	a0,a5,80003c70 <__memmove+0x1c>
    80003d6c:	02069613          	slli	a2,a3,0x20
    80003d70:	02065613          	srli	a2,a2,0x20
    80003d74:	fff64613          	not	a2,a2
    80003d78:	00e50733          	add	a4,a0,a4
    80003d7c:	00c78633          	add	a2,a5,a2
    80003d80:	fff7c683          	lbu	a3,-1(a5)
    80003d84:	fff78793          	addi	a5,a5,-1
    80003d88:	fff70713          	addi	a4,a4,-1
    80003d8c:	00d70023          	sb	a3,0(a4)
    80003d90:	fec798e3          	bne	a5,a2,80003d80 <__memmove+0x12c>
    80003d94:	00813403          	ld	s0,8(sp)
    80003d98:	01010113          	addi	sp,sp,16
    80003d9c:	00008067          	ret
    80003da0:	02069713          	slli	a4,a3,0x20
    80003da4:	02075713          	srli	a4,a4,0x20
    80003da8:	00170713          	addi	a4,a4,1
    80003dac:	00e50733          	add	a4,a0,a4
    80003db0:	00050793          	mv	a5,a0
    80003db4:	0005c683          	lbu	a3,0(a1)
    80003db8:	00178793          	addi	a5,a5,1
    80003dbc:	00158593          	addi	a1,a1,1
    80003dc0:	fed78fa3          	sb	a3,-1(a5)
    80003dc4:	fee798e3          	bne	a5,a4,80003db4 <__memmove+0x160>
    80003dc8:	f89ff06f          	j	80003d50 <__memmove+0xfc>

0000000080003dcc <__putc>:
    80003dcc:	fe010113          	addi	sp,sp,-32
    80003dd0:	00813823          	sd	s0,16(sp)
    80003dd4:	00113c23          	sd	ra,24(sp)
    80003dd8:	02010413          	addi	s0,sp,32
    80003ddc:	00050793          	mv	a5,a0
    80003de0:	fef40593          	addi	a1,s0,-17
    80003de4:	00100613          	li	a2,1
    80003de8:	00000513          	li	a0,0
    80003dec:	fef407a3          	sb	a5,-17(s0)
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	b3c080e7          	jalr	-1220(ra) # 8000292c <console_write>
    80003df8:	01813083          	ld	ra,24(sp)
    80003dfc:	01013403          	ld	s0,16(sp)
    80003e00:	02010113          	addi	sp,sp,32
    80003e04:	00008067          	ret

0000000080003e08 <__getc>:
    80003e08:	fe010113          	addi	sp,sp,-32
    80003e0c:	00813823          	sd	s0,16(sp)
    80003e10:	00113c23          	sd	ra,24(sp)
    80003e14:	02010413          	addi	s0,sp,32
    80003e18:	fe840593          	addi	a1,s0,-24
    80003e1c:	00100613          	li	a2,1
    80003e20:	00000513          	li	a0,0
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	ae8080e7          	jalr	-1304(ra) # 8000290c <console_read>
    80003e2c:	fe844503          	lbu	a0,-24(s0)
    80003e30:	01813083          	ld	ra,24(sp)
    80003e34:	01013403          	ld	s0,16(sp)
    80003e38:	02010113          	addi	sp,sp,32
    80003e3c:	00008067          	ret

0000000080003e40 <console_handler>:
    80003e40:	fe010113          	addi	sp,sp,-32
    80003e44:	00813823          	sd	s0,16(sp)
    80003e48:	00113c23          	sd	ra,24(sp)
    80003e4c:	00913423          	sd	s1,8(sp)
    80003e50:	02010413          	addi	s0,sp,32
    80003e54:	14202773          	csrr	a4,scause
    80003e58:	100027f3          	csrr	a5,sstatus
    80003e5c:	0027f793          	andi	a5,a5,2
    80003e60:	06079e63          	bnez	a5,80003edc <console_handler+0x9c>
    80003e64:	00074c63          	bltz	a4,80003e7c <console_handler+0x3c>
    80003e68:	01813083          	ld	ra,24(sp)
    80003e6c:	01013403          	ld	s0,16(sp)
    80003e70:	00813483          	ld	s1,8(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret
    80003e7c:	0ff77713          	andi	a4,a4,255
    80003e80:	00900793          	li	a5,9
    80003e84:	fef712e3          	bne	a4,a5,80003e68 <console_handler+0x28>
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	6dc080e7          	jalr	1756(ra) # 80002564 <plic_claim>
    80003e90:	00a00793          	li	a5,10
    80003e94:	00050493          	mv	s1,a0
    80003e98:	02f50c63          	beq	a0,a5,80003ed0 <console_handler+0x90>
    80003e9c:	fc0506e3          	beqz	a0,80003e68 <console_handler+0x28>
    80003ea0:	00050593          	mv	a1,a0
    80003ea4:	00000517          	auipc	a0,0x0
    80003ea8:	24c50513          	addi	a0,a0,588 # 800040f0 <CONSOLE_STATUS+0xe0>
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	afc080e7          	jalr	-1284(ra) # 800029a8 <__printf>
    80003eb4:	01013403          	ld	s0,16(sp)
    80003eb8:	01813083          	ld	ra,24(sp)
    80003ebc:	00048513          	mv	a0,s1
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	02010113          	addi	sp,sp,32
    80003ec8:	ffffe317          	auipc	t1,0xffffe
    80003ecc:	6d430067          	jr	1748(t1) # 8000259c <plic_complete>
    80003ed0:	fffff097          	auipc	ra,0xfffff
    80003ed4:	3e0080e7          	jalr	992(ra) # 800032b0 <uartintr>
    80003ed8:	fddff06f          	j	80003eb4 <console_handler+0x74>
    80003edc:	00000517          	auipc	a0,0x0
    80003ee0:	31450513          	addi	a0,a0,788 # 800041f0 <digits+0x78>
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	a68080e7          	jalr	-1432(ra) # 8000294c <panic>
	...
