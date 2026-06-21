
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	73813103          	ld	sp,1848(sp) # 80004738 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	44d010ef          	jal	ra,80001c68 <start>

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
    
    ld x1,0x08(a0)
    80001090:	00853083          	ld	ra,8(a0)
    ld x3,0x18(a0)
    80001094:	01853183          	ld	gp,24(a0)
    ld x4,0x20(a0)
    80001098:	02053203          	ld	tp,32(a0)
    ld x5,0x28(a0)
    8000109c:	02853283          	ld	t0,40(a0)
    ld x6,0x30(a0)
    800010a0:	03053303          	ld	t1,48(a0)
    ld x7,0x38(a0)
    800010a4:	03853383          	ld	t2,56(a0)
    ld x8,0x40(a0)
    800010a8:	04053403          	ld	s0,64(a0)
    ld x9,0x48(a0)
    800010ac:	04853483          	ld	s1,72(a0)
    ld x10,0x50(a0)
    800010b0:	05053503          	ld	a0,80(a0)
    ld x11,0x58(a0)
    800010b4:	05853583          	ld	a1,88(a0)
    ld x12,0x60(a0)
    800010b8:	06053603          	ld	a2,96(a0)
    ld x13,0x68(a0)
    800010bc:	06853683          	ld	a3,104(a0)
    ld x14,0x70(a0)
    800010c0:	07053703          	ld	a4,112(a0)
    ld x15,0x78(a0)
    800010c4:	07853783          	ld	a5,120(a0)
    ld x16,0x80(a0)
    800010c8:	08053803          	ld	a6,128(a0)
    ld x17,0x88(a0)
    800010cc:	08853883          	ld	a7,136(a0)
    ld x18,0x90(a0)
    800010d0:	09053903          	ld	s2,144(a0)
    ld x19,0x98(a0)
    800010d4:	09853983          	ld	s3,152(a0)
    ld x20,0xA0(a0)
    800010d8:	0a053a03          	ld	s4,160(a0)
    ld x21,0xA8(a0)
    800010dc:	0a853a83          	ld	s5,168(a0)
    ld x22,0xB0(a0)
    800010e0:	0b053b03          	ld	s6,176(a0)
    ld x23,0xB8(a0)
    800010e4:	0b853b83          	ld	s7,184(a0)
    ld x24,0xC0(a0)
    800010e8:	0c053c03          	ld	s8,192(a0)
    ld x25,0xC8(a0)
    800010ec:	0c853c83          	ld	s9,200(a0)
    ld x26,0xD0(a0)
    800010f0:	0d053d03          	ld	s10,208(a0)
    ld x27,0xD8(a0)
    800010f4:	0d853d83          	ld	s11,216(a0)
    ld x28,0xE0(a0)
    800010f8:	0e053e03          	ld	t3,224(a0)
    ld x29,0xE8(a0)
    800010fc:	0e853e83          	ld	t4,232(a0)
    ld x30,0xF0(a0)
    80001100:	0f053f03          	ld	t5,240(a0)
    ld x31,0xF8(a0)
    80001104:	0f853f83          	ld	t6,248(a0)
    ld t0,0x100(a0)
    80001108:	10053283          	ld	t0,256(a0)
    csrw sepc, t0
    8000110c:	14129073          	csrw	sepc,t0
    ld t0, 0x108(a0)
    80001110:	10853283          	ld	t0,264(a0)
    ld x2,0x10(a0)
    80001114:	01053103          	ld	sp,16(a0)
    csrw sstatus, t0
    80001118:	10029073          	csrw	sstatus,t0

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

    #csrw sepc,pc;

    call HandleInterupt
    800011ec:	7c8000ef          	jal	ra,800019b4 <HandleInterupt>

    ld x0,0x00(sp)
    800011f0:	00013003          	ld	zero,0(sp)
    ld x1,0x08(sp)
    800011f4:	00813083          	ld	ra,8(sp)
    ld x2,0x10(sp)
    800011f8:	01013103          	ld	sp,16(sp)
    ld x3,0x18(sp)
    800011fc:	01813183          	ld	gp,24(sp)
    ld x4,0x20(sp)
    80001200:	02013203          	ld	tp,32(sp)
    ld x5,0x28(sp)
    80001204:	02813283          	ld	t0,40(sp)
    ld x6,0x30(sp)
    80001208:	03013303          	ld	t1,48(sp)
    ld x7,0x38(sp)
    8000120c:	03813383          	ld	t2,56(sp)
    ld x8,0x40(sp)
    80001210:	04013403          	ld	s0,64(sp)
    ld x9,0x48(sp)
    80001214:	04813483          	ld	s1,72(sp)

    #csrr pc,sepc;
    addi sp, sp, 256
    80001218:	10010113          	addi	sp,sp,256

    8000121c:	10200073          	sret

0000000080001220 <mem_alloc>:
// Created by os on 5/6/26.
//

#include "./APIC.h"
#include "../lib/hw.h"
void* mem_alloc(size_t size){
    80001220:	ff010113          	addi	sp,sp,-16
    80001224:	00813423          	sd	s0,8(sp)
    80001228:	01010413          	addi	s0,sp,16
    uint64 code=0x01;
    __asm__ volatile("mv a1,%[size]"::[size]"r"(size));
    8000122c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    80001230:	00100793          	li	a5,1
    80001234:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001238:	00000073          	ecall
    void* value;
    __asm__ volatile ("mv %0, a0" : "=r"(value));
    8000123c:	00050513          	mv	a0,a0

    return (void*)value;
}
    80001240:	00813403          	ld	s0,8(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <mem_free>:



int mem_free(void* ptr){
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00813423          	sd	s0,8(sp)
    80001254:	01010413          	addi	s0,sp,16
    uint64 code=0x02;
    __asm__ volatile("mv a1,a0");
    80001258:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%[code]"::[code]"r"(code));
    8000125c:	00200793          	li	a5,2
    80001260:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001264:	00000073          	ecall
    return 0;
}
    80001268:	00000513          	li	a0,0
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <my_thread_body>:
//
// Created by os on 5/6/26.
//
#include "APIC.h"
#include "../lib/console.h"
void my_thread_body(void) {
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00113423          	sd	ra,8(sp)
    80001280:	00813023          	sd	s0,0(sp)
    80001284:	01010413          	addi	s0,sp,16
    __putc('}');
    80001288:	07d00513          	li	a0,125
    8000128c:	00003097          	auipc	ra,0x3
    80001290:	aa0080e7          	jalr	-1376(ra) # 80003d2c <__putc>
}
    80001294:	00813083          	ld	ra,8(sp)
    80001298:	00013403          	ld	s0,0(sp)
    8000129c:	01010113          	addi	sp,sp,16
    800012a0:	00008067          	ret

00000000800012a4 <mainU>:

void mainU(){
    800012a4:	ff010113          	addi	sp,sp,-16
    800012a8:	00113423          	sd	ra,8(sp)
    800012ac:	00813023          	sd	s0,0(sp)
    800012b0:	01010413          	addi	s0,sp,16
    // *(a3+sizeof(char)) ='f';
    // __putc(*a3);
    // __putc(*(a3+1));
    // __putc(*a1);
    // __putc(*(a1+1));
    thread_t t = thread_create(my_thread_body);
    800012b4:	00000517          	auipc	a0,0x0
    800012b8:	fc450513          	addi	a0,a0,-60 # 80001278 <my_thread_body>
    800012bc:	00000097          	auipc	ra,0x0
    800012c0:	7c0080e7          	jalr	1984(ra) # 80001a7c <thread_create>
    thread_start(t);
    800012c4:	00001097          	auipc	ra,0x1
    800012c8:	814080e7          	jalr	-2028(ra) # 80001ad8 <thread_start>
}
    800012cc:	00813083          	ld	ra,8(sp)
    800012d0:	00013403          	ld	s0,0(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <drop_to_user>:




void drop_to_user(void (*fn)()) {
    800012dc:	ff010113          	addi	sp,sp,-16
    800012e0:	00813423          	sd	s0,8(sp)
    800012e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %0" :: "r"(fn));
    800012e8:	14151073          	csrw	sepc,a0

    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    800012ec:	100027f3          	csrr	a5,sstatus
    sstatus &= ~(1UL << 8);
    800012f0:	eff7f793          	andi	a5,a5,-257
    sstatus |=  (1UL << 5);
    800012f4:	0207e793          	ori	a5,a5,32
    __asm__ volatile ("csrw sstatus, %0" :: "r"(sstatus));
    800012f8:	10079073          	csrw	sstatus,a5

    __asm__ volatile ("sret");
    800012fc:	10200073          	sret
}
    80001300:	00813403          	ld	s0,8(sp)
    80001304:	01010113          	addi	sp,sp,16
    80001308:	00008067          	ret

000000008000130c <main>:
void interupt();
int main() {
    8000130c:	ff010113          	addi	sp,sp,-16
    80001310:	00113423          	sd	ra,8(sp)
    80001314:	00813023          	sd	s0,0(sp)
    80001318:	01010413          	addi	s0,sp,16
    start_main_thread();
    8000131c:	00001097          	auipc	ra,0x1
    80001320:	814080e7          	jalr	-2028(ra) # 80001b30 <start_main_thread>
    __asm__ volatile("csrw sie, zero");
    80001324:	10401073          	csrw	sie,zero
    __asm__ volatile("csrw stvec, %[v]" :: [v]"r"(&interupt));
    80001328:	00000797          	auipc	a5,0x0
    8000132c:	e9878793          	addi	a5,a5,-360 # 800011c0 <interupt>
    80001330:	10579073          	csrw	stvec,a5
    drop_to_user(mainU);
    80001334:	00000517          	auipc	a0,0x0
    80001338:	f7050513          	addi	a0,a0,-144 # 800012a4 <mainU>
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	fa0080e7          	jalr	-96(ra) # 800012dc <drop_to_user>
    return 0;
}
    80001344:	00000513          	li	a0,0
    80001348:	00813083          	ld	ra,8(sp)
    8000134c:	00013403          	ld	s0,0(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <_ZN6Thread4initEv>:

Thread::Thread() {
    body = nullptr;
}

void Thread::init() {
    80001358:	ff010113          	addi	sp,sp,-16
    8000135c:	00813423          	sd	s0,8(sp)
    80001360:	01010413          	addi	s0,sp,16

}
    80001364:	00813403          	ld	s0,8(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret

0000000080001370 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001370:	ff010113          	addi	sp,sp,-16
    80001374:	00813423          	sd	s0,8(sp)
    80001378:	01010413          	addi	s0,sp,16
    8000137c:	00003797          	auipc	a5,0x3
    80001380:	3a478793          	addi	a5,a5,932 # 80004720 <_ZTV6Thread+0x10>
    80001384:	00f53023          	sd	a5,0(a0)
    body = nullptr;
    80001388:	00053423          	sd	zero,8(a0)
}
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_ZN6Thread11copyContextEPm>:
void Thread::copyContext(size_t* ctx) {
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    Context* cont = reinterpret_cast<Context*>(ctx);
    for (int i = 0;i<32;i++) {
    800013a4:	00000713          	li	a4,0
    800013a8:	01f00793          	li	a5,31
    800013ac:	02e7c863          	blt	a5,a4,800013dc <_ZN6Thread11copyContextEPm+0x44>
        threadContext.x[i] = cont->x[i];
    800013b0:	00371793          	slli	a5,a4,0x3
    800013b4:	00f587b3          	add	a5,a1,a5
    800013b8:	0007b683          	ld	a3,0(a5)
    800013bc:	000017b7          	lui	a5,0x1
    800013c0:	00678793          	addi	a5,a5,6 # 1006 <_entry-0x7fffeffa>
    800013c4:	00f707b3          	add	a5,a4,a5
    800013c8:	00379793          	slli	a5,a5,0x3
    800013cc:	00f507b3          	add	a5,a0,a5
    800013d0:	00d7b023          	sd	a3,0(a5)
    for (int i = 0;i<32;i++) {
    800013d4:	0017071b          	addiw	a4,a4,1
    800013d8:	fd1ff06f          	j	800013a8 <_ZN6Thread11copyContextEPm+0x10>
    }
    threadContext.x[2] = reinterpret_cast<size_t>(this->stackPtr);
    800013dc:	02053783          	ld	a5,32(a0)
    800013e0:	00008737          	lui	a4,0x8
    800013e4:	00e50533          	add	a0,a0,a4
    800013e8:	04f53023          	sd	a5,64(a0)
    threadContext.sepc = cont->sepc;
    800013ec:	1005b783          	ld	a5,256(a1)
    800013f0:	12f53823          	sd	a5,304(a0)
    threadContext.sstatus =cont->sstatus;
    800013f4:	1085b783          	ld	a5,264(a1)
    800013f8:	12f53c23          	sd	a5,312(a0)
}
    800013fc:	00813403          	ld	s0,8(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_ZN6Thread10getContextEv>:

size_t* Thread::getContext() {
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    return reinterpret_cast<size_t*>(&threadContext);
}
    80001414:	000087b7          	lui	a5,0x8
    80001418:	03078793          	addi	a5,a5,48 # 8030 <_entry-0x7fff7fd0>
    8000141c:	00f50533          	add	a0,a0,a5
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_ZN6Thread14getNextInQueueEv>:
Thread* Thread::getNextInQueue(){
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    return next;
}
    80001438:	01853503          	ld	a0,24(a0)
    8000143c:	00813403          	ld	s0,8(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_ZN6Thread14getPrevInQueueEv>:
Thread* Thread::getPrevInQueue(){
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00813423          	sd	s0,8(sp)
    80001450:	01010413          	addi	s0,sp,16
    return prev;
}
    80001454:	01053503          	ld	a0,16(a0)
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_ZN6Thread14setNextInQueueEPS_>:
void Thread::setNextInQueue(Thread* next){
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    this->next = next;
    80001470:	00b53c23          	sd	a1,24(a0)
}
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <_ZN6Thread14setPrevInQueueEPS_>:
void Thread::setPrevInQueue(Thread* prev){
    80001480:	ff010113          	addi	sp,sp,-16
    80001484:	00813423          	sd	s0,8(sp)
    80001488:	01010413          	addi	s0,sp,16
    this->prev = prev;
    8000148c:	00b53823          	sd	a1,16(a0)
}
    80001490:	00813403          	ld	s0,8(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>:
void Thread::setNextAndPrevInQueue(Thread* next, Thread* prev){
    8000149c:	fe010113          	addi	sp,sp,-32
    800014a0:	00113c23          	sd	ra,24(sp)
    800014a4:	00813823          	sd	s0,16(sp)
    800014a8:	00913423          	sd	s1,8(sp)
    800014ac:	01213023          	sd	s2,0(sp)
    800014b0:	02010413          	addi	s0,sp,32
    800014b4:	00050493          	mv	s1,a0
    800014b8:	00060913          	mv	s2,a2
    setNextInQueue(next);
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	fa8080e7          	jalr	-88(ra) # 80001464 <_ZN6Thread14setNextInQueueEPS_>
    setPrevInQueue(prev);
    800014c4:	00090593          	mv	a1,s2
    800014c8:	00048513          	mv	a0,s1
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	fb4080e7          	jalr	-76(ra) # 80001480 <_ZN6Thread14setPrevInQueueEPS_>
}
    800014d4:	01813083          	ld	ra,24(sp)
    800014d8:	01013403          	ld	s0,16(sp)
    800014dc:	00813483          	ld	s1,8(sp)
    800014e0:	00013903          	ld	s2,0(sp)
    800014e4:	02010113          	addi	sp,sp,32
    800014e8:	00008067          	ret

00000000800014ec <_ZN6Thread5startEv>:
void Thread::start(){
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00113c23          	sd	ra,24(sp)
    800014f4:	00813823          	sd	s0,16(sp)
    800014f8:	00913423          	sd	s1,8(sp)
    800014fc:	02010413          	addi	s0,sp,32
    80001500:	00050493          	mv	s1,a0
    Scheduler::AddNewThread(this);
    80001504:	00000097          	auipc	ra,0x0
    80001508:	27c080e7          	jalr	636(ra) # 80001780 <_ZN9Scheduler12AddNewThreadEP6Thread>
    this->threadContext.sepc = reinterpret_cast<size_t>(&Thread::threadTrampoline);
    8000150c:	000087b7          	lui	a5,0x8
    80001510:	00f487b3          	add	a5,s1,a5
    80001514:	00000717          	auipc	a4,0x0
    80001518:	09070713          	addi	a4,a4,144 # 800015a4 <_ZN6Thread16threadTrampolineEPS_>
    8000151c:	12e7b823          	sd	a4,304(a5) # 8130 <_entry-0x7fff7ed0>
    this->threadContext.x[10] = reinterpret_cast<size_t>(this);
    80001520:	0897b023          	sd	s1,128(a5)
    Scheduler::yield(Scheduler::GetRunning(),this);
    80001524:	00000097          	auipc	ra,0x0
    80001528:	0b0080e7          	jalr	176(ra) # 800015d4 <_ZN9Scheduler10GetRunningEv>
    8000152c:	00048593          	mv	a1,s1
    80001530:	00000097          	auipc	ra,0x0
    80001534:	0c4080e7          	jalr	196(ra) # 800015f4 <_ZN9Scheduler5yieldEP6ThreadS1_>
}
    80001538:	01813083          	ld	ra,24(sp)
    8000153c:	01013403          	ld	s0,16(sp)
    80001540:	00813483          	ld	s1,8(sp)
    80001544:	02010113          	addi	sp,sp,32
    80001548:	00008067          	ret

000000008000154c <_ZN6Thread4joinEv>:
void Thread::join(){
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00813423          	sd	s0,8(sp)
    80001554:	01010413          	addi	s0,sp,16

}
    80001558:	00813403          	ld	s0,8(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_ZN6Thread11setStackPtrEPm>:
void Thread::setStackPtr(size_t* stackPtr) {
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00813423          	sd	s0,8(sp)
    8000156c:	01010413          	addi	s0,sp,16
    this->stackPtr = stackPtr;
    80001570:	02b53023          	sd	a1,32(a0)
}
    80001574:	00813403          	ld	s0,8(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_ZN6Thread15setSupervisorSpEPm>:

void Thread::setSupervisorSp(size_t* supervisorSp) {
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00813423          	sd	s0,8(sp)
    80001588:	01010413          	addi	s0,sp,16
    this->supervisorSp = supervisorSp;
    8000158c:	000087b7          	lui	a5,0x8
    80001590:	00f50533          	add	a0,a0,a5
    80001594:	02b53423          	sd	a1,40(a0)
}
    80001598:	00813403          	ld	s0,8(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret

00000000800015a4 <_ZN6Thread16threadTrampolineEPS_>:
};

class Thread{
protected:
    static void threadTrampoline(Thread* t) {
        if (t->body)t->body();
    800015a4:	00853783          	ld	a5,8(a0)
    800015a8:	02078463          	beqz	a5,800015d0 <_ZN6Thread16threadTrampolineEPS_+0x2c>
    static void threadTrampoline(Thread* t) {
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00113423          	sd	ra,8(sp)
    800015b4:	00813023          	sd	s0,0(sp)
    800015b8:	01010413          	addi	s0,sp,16
        if (t->body)t->body();
    800015bc:	000780e7          	jalr	a5 # 8000 <_entry-0x7fff8000>
    }
    800015c0:	00813083          	ld	ra,8(sp)
    800015c4:	00013403          	ld	s0,0(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret
    800015d0:	00008067          	ret

00000000800015d4 <_ZN9Scheduler10GetRunningEv>:
Thread* Scheduler::readyQueue = nullptr;
Thread* Scheduler::readyQueueEnd = nullptr;
size_t* Scheduler::stack_cursor = nullptr;


Thread* Scheduler::GetRunning(){
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00813423          	sd	s0,8(sp)
    800015dc:	01010413          	addi	s0,sp,16
    return running;
}
    800015e0:	00003517          	auipc	a0,0x3
    800015e4:	1b053503          	ld	a0,432(a0) # 80004790 <_ZN9Scheduler7runningE>
    800015e8:	00813403          	ld	s0,8(sp)
    800015ec:	01010113          	addi	sp,sp,16
    800015f0:	00008067          	ret

00000000800015f4 <_ZN9Scheduler5yieldEP6ThreadS1_>:
void Scheduler::yield(Thread* oldThread, Thread* newThread){
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	02010413          	addi	s0,sp,32
    80001608:	00058493          	mv	s1,a1
    if (oldThread != nullptr)//TODO: Add error and remove this temp logic
    8000160c:	00050a63          	beqz	a0,80001620 <_ZN9Scheduler5yieldEP6ThreadS1_+0x2c>
        saveContext(oldThread->getContext());
    80001610:	00000097          	auipc	ra,0x0
    80001614:	df8080e7          	jalr	-520(ra) # 80001408 <_ZN6Thread10getContextEv>
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	9e8080e7          	jalr	-1560(ra) # 80001000 <saveContext>
    restoreContext(newThread->getContext());
    80001620:	00048513          	mv	a0,s1
    80001624:	00000097          	auipc	ra,0x0
    80001628:	de4080e7          	jalr	-540(ra) # 80001408 <_ZN6Thread10getContextEv>
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	a64080e7          	jalr	-1436(ra) # 80001090 <restoreContext>
}
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	00813483          	ld	s1,8(sp)
    80001640:	02010113          	addi	sp,sp,32
    80001644:	00008067          	ret

0000000080001648 <_ZN9Scheduler7GetNextEv>:
Thread* Scheduler::GetNext(){
    80001648:	fe010113          	addi	sp,sp,-32
    8000164c:	00113c23          	sd	ra,24(sp)
    80001650:	00813823          	sd	s0,16(sp)
    80001654:	00913423          	sd	s1,8(sp)
    80001658:	01213023          	sd	s2,0(sp)
    8000165c:	02010413          	addi	s0,sp,32
    //TODO: Add checks if empty and stuff
    Thread* toRet = readyQueue;
    80001660:	00003917          	auipc	s2,0x3
    80001664:	13090913          	addi	s2,s2,304 # 80004790 <_ZN9Scheduler7runningE>
    80001668:	00893483          	ld	s1,8(s2)
    readyQueue = readyQueue->getNextInQueue();
    8000166c:	00048513          	mv	a0,s1
    80001670:	00000097          	auipc	ra,0x0
    80001674:	dbc080e7          	jalr	-580(ra) # 8000142c <_ZN6Thread14getNextInQueueEv>
    80001678:	00a93423          	sd	a0,8(s2)
    return toRet;
}
    8000167c:	00048513          	mv	a0,s1
    80001680:	01813083          	ld	ra,24(sp)
    80001684:	01013403          	ld	s0,16(sp)
    80001688:	00813483          	ld	s1,8(sp)
    8000168c:	00013903          	ld	s2,0(sp)
    80001690:	02010113          	addi	sp,sp,32
    80001694:	00008067          	ret

0000000080001698 <_ZN9Scheduler3PutEP6Thread>:
void Scheduler::Put(Thread* thread){
    80001698:	fe010113          	addi	sp,sp,-32
    8000169c:	00113c23          	sd	ra,24(sp)
    800016a0:	00813823          	sd	s0,16(sp)
    800016a4:	00913423          	sd	s1,8(sp)
    800016a8:	01213023          	sd	s2,0(sp)
    800016ac:	02010413          	addi	s0,sp,32
    800016b0:	00050493          	mv	s1,a0
    //TODO: Add checks if it already exists
    thread->setNextAndPrevInQueue(nullptr, readyQueueEnd);
    800016b4:	00003917          	auipc	s2,0x3
    800016b8:	0dc90913          	addi	s2,s2,220 # 80004790 <_ZN9Scheduler7runningE>
    800016bc:	01093603          	ld	a2,16(s2)
    800016c0:	00000593          	li	a1,0
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	dd8080e7          	jalr	-552(ra) # 8000149c <_ZN6Thread21setNextAndPrevInQueueEPS_S0_>
    readyQueueEnd->setNextInQueue(thread);
    800016cc:	00048593          	mv	a1,s1
    800016d0:	01093503          	ld	a0,16(s2)
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	d90080e7          	jalr	-624(ra) # 80001464 <_ZN6Thread14setNextInQueueEPS_>
    readyQueueEnd = thread;
    800016dc:	00993823          	sd	s1,16(s2)
}
    800016e0:	01813083          	ld	ra,24(sp)
    800016e4:	01013403          	ld	s0,16(sp)
    800016e8:	00813483          	ld	s1,8(sp)
    800016ec:	00013903          	ld	s2,0(sp)
    800016f0:	02010113          	addi	sp,sp,32
    800016f4:	00008067          	ret

00000000800016f8 <_ZN9Scheduler15SetupStartStackEv>:

extern "C" char end[];

void Scheduler::SetupStartStack() {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16

    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
        ((reinterpret_cast<size_t>(end) + 7) & ~7)
    80001704:	00003797          	auipc	a5,0x3
    80001708:	03c7b783          	ld	a5,60(a5) # 80004740 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000170c:	00778793          	addi	a5,a5,7
    80001710:	ff87f793          	andi	a5,a5,-8
    Scheduler::stack_cursor = reinterpret_cast<size_t*>(
    80001714:	00003717          	auipc	a4,0x3
    80001718:	08f73a23          	sd	a5,148(a4) # 800047a8 <_ZN9Scheduler12stack_cursorE>
    );
}
    8000171c:	00813403          	ld	s0,8(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <_ZN9Scheduler16SetupStartThreadEv>:

void Scheduler::SetupStartThread() {
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00113423          	sd	ra,8(sp)
    80001730:	00813023          	sd	s0,0(sp)
    80001734:	01010413          	addi	s0,sp,16
    SetupStartStack();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	fc0080e7          	jalr	-64(ra) # 800016f8 <_ZN9Scheduler15SetupStartStackEv>
    running = static_cast<Thread*>(MemoryAllocator::GetInstance().AllocateFragment(sizeof(Thread)));
    80001740:	00000097          	auipc	ra,0x0
    80001744:	0c0080e7          	jalr	192(ra) # 80001800 <_ZN15MemoryAllocator11GetInstanceEv>
    80001748:	000085b7          	lui	a1,0x8
    8000174c:	14058593          	addi	a1,a1,320 # 8140 <_entry-0x7fff7ec0>
    80001750:	00000097          	auipc	ra,0x0
    80001754:	10c080e7          	jalr	268(ra) # 8000185c <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001758:	00003797          	auipc	a5,0x3
    8000175c:	02a7bc23          	sd	a0,56(a5) # 80004790 <_ZN9Scheduler7runningE>
    setupStartContext(running->getContext());
    80001760:	00000097          	auipc	ra,0x0
    80001764:	ca8080e7          	jalr	-856(ra) # 80001408 <_ZN6Thread10getContextEv>
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	9b8080e7          	jalr	-1608(ra) # 80001120 <setupStartContext>
}
    80001770:	00813083          	ld	ra,8(sp)
    80001774:	00013403          	ld	s0,0(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <_ZN9Scheduler12AddNewThreadEP6Thread>:

void Scheduler::AddNewThread(Thread* thread) {
    80001780:	ff010113          	addi	sp,sp,-16
    80001784:	00813423          	sd	s0,8(sp)
    80001788:	01010413          	addi	s0,sp,16
    Context threadContext;
    Thread();
    void copyContext(size_t* ctx);
    virtual void init();
    void setStackPtr(size_t* stackPtr);
    size_t* getStackTop() { return stack + DEFAULT_STACK_SIZE; }
    8000178c:	00008737          	lui	a4,0x8
    80001790:	02870793          	addi	a5,a4,40 # 8028 <_entry-0x7fff7fd8>
    80001794:	00f507b3          	add	a5,a0,a5
    thread->threadContext.x[2] = reinterpret_cast<size_t>(thread->getStackTop());
    80001798:	00e50533          	add	a0,a0,a4
    8000179c:	04f53023          	sd	a5,64(a0)
}
    800017a0:	00813403          	ld	s0,8(sp)
    800017a4:	01010113          	addi	sp,sp,16
    800017a8:	00008067          	ret

00000000800017ac <_ZN15MemoryAllocatorC1Ev>:
//

#include "MemoryAllocator.hpp"
#include "../lib/console.h"

MemoryAllocator::MemoryAllocator() {
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00813423          	sd	s0,8(sp)
    800017b4:	01010413          	addi	s0,sp,16
    size_t HEAP_SIZE = (uint*)HEAP_END_ADDR-(uint*)HEAP_START_ADDR;
    800017b8:	00003797          	auipc	a5,0x3
    800017bc:	f907b783          	ld	a5,-112(a5) # 80004748 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017c0:	0007b783          	ld	a5,0(a5)
    800017c4:	00003717          	auipc	a4,0x3
    800017c8:	f6c73703          	ld	a4,-148(a4) # 80004730 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017cc:	00073703          	ld	a4,0(a4)
    800017d0:	40e787b3          	sub	a5,a5,a4
    800017d4:	4027d793          	srai	a5,a5,0x2
    size_t HEAP_SIZE_BLCK = HEAP_SIZE/64;
    800017d8:	0067d793          	srli	a5,a5,0x6
    head = (Fragment*)HEAP_START_ADDR;
    800017dc:	00e53023          	sd	a4,0(a0)
    Fragment* startFrag = (Fragment*)head;
    startFrag->free=1;
    800017e0:	00100693          	li	a3,1
    800017e4:	00d70823          	sb	a3,16(a4)
    startFrag->next=nullptr;
    800017e8:	00073023          	sd	zero,0(a4)
    startFrag->size = HEAP_SIZE_BLCK;
    800017ec:	00f73c23          	sd	a5,24(a4)
    startFrag->prev=nullptr;
    800017f0:	00073423          	sd	zero,8(a4)
}
    800017f4:	00813403          	ld	s0,8(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_ZN15MemoryAllocator11GetInstanceEv>:

MemoryAllocator& MemoryAllocator::GetInstance() {
    static MemoryAllocator inst;
    80001800:	00003797          	auipc	a5,0x3
    80001804:	fb07c783          	lbu	a5,-80(a5) # 800047b0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
    80001808:	00078863          	beqz	a5,80001818 <_ZN15MemoryAllocator11GetInstanceEv+0x18>
    return inst;
}
    8000180c:	00003517          	auipc	a0,0x3
    80001810:	fac50513          	addi	a0,a0,-84 # 800047b8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001814:	00008067          	ret
MemoryAllocator& MemoryAllocator::GetInstance() {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    80001828:	00003517          	auipc	a0,0x3
    8000182c:	f9050513          	addi	a0,a0,-112 # 800047b8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	f7c080e7          	jalr	-132(ra) # 800017ac <_ZN15MemoryAllocatorC1Ev>
    80001838:	00100793          	li	a5,1
    8000183c:	00003717          	auipc	a4,0x3
    80001840:	f6f70a23          	sb	a5,-140(a4) # 800047b0 <_ZGVZN15MemoryAllocator11GetInstanceEvE4inst>
}
    80001844:	00003517          	auipc	a0,0x3
    80001848:	f7450513          	addi	a0,a0,-140 # 800047b8 <_ZZN15MemoryAllocator11GetInstanceEvE4inst>
    8000184c:	00813083          	ld	ra,8(sp)
    80001850:	00013403          	ld	s0,0(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <_ZN15MemoryAllocator16AllocateFragmentEm>:

void *MemoryAllocator::AllocateFragment(size_t size) {
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00813423          	sd	s0,8(sp)
    80001864:	01010413          	addi	s0,sp,16
    Fragment* curr = head;
    80001868:	00053503          	ld	a0,0(a0)


    size_t sizeInBlocks = (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000186c:	03f58593          	addi	a1,a1,63
    80001870:	0065d593          	srli	a1,a1,0x6
    80001874:	0080006f          	j	8000187c <_ZN15MemoryAllocator16AllocateFragmentEm+0x20>
                curr->size = curr->size-newFrag->size;
            }

            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
        }
        curr = curr->next;
    80001878:	00053503          	ld	a0,0(a0)
    while(curr){
    8000187c:	06050863          	beqz	a0,800018ec <_ZN15MemoryAllocator16AllocateFragmentEm+0x90>
        if(curr->free==1&&curr->size>=sizeInBlocks+HEADER_BLOCKS){
    80001880:	01054703          	lbu	a4,16(a0)
    80001884:	00100793          	li	a5,1
    80001888:	fef718e3          	bne	a4,a5,80001878 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
    8000188c:	01853703          	ld	a4,24(a0)
    80001890:	00158793          	addi	a5,a1,1
    80001894:	fef762e3          	bltu	a4,a5,80001878 <_ZN15MemoryAllocator16AllocateFragmentEm+0x1c>
            curr->free=0;
    80001898:	00050823          	sb	zero,16(a0)
            if(curr->size>sizeInBlocks+HEADER_BLOCKS){
    8000189c:	04e7f663          	bgeu	a5,a4,800018e8 <_ZN15MemoryAllocator16AllocateFragmentEm+0x8c>
                Fragment* old = curr->next;
    800018a0:	00053683          	ld	a3,0(a0)
                curr->next = (Fragment*)((uint8*)curr+(sizeInBlocks+HEADER_BLOCKS)*MEM_BLOCK_SIZE);
    800018a4:	00679793          	slli	a5,a5,0x6
    800018a8:	00f507b3          	add	a5,a0,a5
    800018ac:	00f53023          	sd	a5,0(a0)
                newFrag->free=1;
    800018b0:	00100713          	li	a4,1
    800018b4:	00e78823          	sb	a4,16(a5)
                newFrag->size = curr->size-sizeInBlocks-HEADER_BLOCKS;
    800018b8:	01853703          	ld	a4,24(a0)
    800018bc:	40b70733          	sub	a4,a4,a1
    800018c0:	fff70713          	addi	a4,a4,-1
    800018c4:	00e7bc23          	sd	a4,24(a5)
                newFrag->next = old;
    800018c8:	00d7b023          	sd	a3,0(a5)
                if(old)
    800018cc:	00068463          	beqz	a3,800018d4 <_ZN15MemoryAllocator16AllocateFragmentEm+0x78>
                    old->prev = newFrag;
    800018d0:	00f6b423          	sd	a5,8(a3)
                newFrag->prev = curr;
    800018d4:	00a7b423          	sd	a0,8(a5)
                curr->size = curr->size-newFrag->size;
    800018d8:	01853703          	ld	a4,24(a0)
    800018dc:	0187b783          	ld	a5,24(a5)
    800018e0:	40f707b3          	sub	a5,a4,a5
    800018e4:	00f53c23          	sd	a5,24(a0)
            return (uint8*)curr+HEADER_BLOCKS*MEM_BLOCK_SIZE;
    800018e8:	04050513          	addi	a0,a0,64
    }

    return nullptr;
}
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00008067          	ret

00000000800018f8 <_ZN15MemoryAllocator12FreeFragmentEPv>:

int MemoryAllocator::FreeFragment(void *startLoc) {
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00813423          	sd	s0,8(sp)
    80001900:	01010413          	addi	s0,sp,16
    Fragment* curr=(Fragment*)((uint8*)startLoc-HEADER_BLOCKS*MEM_BLOCK_SIZE);
    80001904:	fc058713          	addi	a4,a1,-64
    if(!curr)return -1;
    80001908:	08070a63          	beqz	a4,8000199c <_ZN15MemoryAllocator12FreeFragmentEPv+0xa4>
    curr->free=1;
    8000190c:	00100793          	li	a5,1
    80001910:	fcf58823          	sb	a5,-48(a1)
    if(curr->next&&((Fragment*)curr->next)->free==1)
    80001914:	fc05b783          	ld	a5,-64(a1)
    80001918:	00078863          	beqz	a5,80001928 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
    8000191c:	0107c603          	lbu	a2,16(a5)
    80001920:	00100693          	li	a3,1
    80001924:	02d60463          	beq	a2,a3,8000194c <_ZN15MemoryAllocator12FreeFragmentEPv+0x54>
        curr->size +=next->size;
        curr->next = next->next;
        if(next->next)
            next->next->prev = curr;
    }
    if(curr->prev&&((Fragment*)curr->prev)->free==1)
    80001928:	fc85b783          	ld	a5,-56(a1)
    8000192c:	06078c63          	beqz	a5,800019a4 <_ZN15MemoryAllocator12FreeFragmentEPv+0xac>
    80001930:	0107c683          	lbu	a3,16(a5)
    80001934:	00100713          	li	a4,1
    80001938:	02e68e63          	beq	a3,a4,80001974 <_ZN15MemoryAllocator12FreeFragmentEPv+0x7c>
        prev->size +=curr->size;
        prev->next = curr->next;
        if(curr->next)
            curr->next->prev = prev;
    }
    return 0;
    8000193c:	00000513          	li	a0,0
}
    80001940:	00813403          	ld	s0,8(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret
        curr->size +=next->size;
    8000194c:	0187b603          	ld	a2,24(a5)
    80001950:	fd85b683          	ld	a3,-40(a1)
    80001954:	00c686b3          	add	a3,a3,a2
    80001958:	fcd5bc23          	sd	a3,-40(a1)
        curr->next = next->next;
    8000195c:	0007b683          	ld	a3,0(a5)
    80001960:	fcd5b023          	sd	a3,-64(a1)
        if(next->next)
    80001964:	0007b783          	ld	a5,0(a5)
    80001968:	fc0780e3          	beqz	a5,80001928 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
            next->next->prev = curr;
    8000196c:	00e7b423          	sd	a4,8(a5)
    80001970:	fb9ff06f          	j	80001928 <_ZN15MemoryAllocator12FreeFragmentEPv+0x30>
        prev->size +=curr->size;
    80001974:	fd85b683          	ld	a3,-40(a1)
    80001978:	0187b703          	ld	a4,24(a5)
    8000197c:	00d70733          	add	a4,a4,a3
    80001980:	00e7bc23          	sd	a4,24(a5)
        prev->next = curr->next;
    80001984:	fc05b703          	ld	a4,-64(a1)
    80001988:	00e7b023          	sd	a4,0(a5)
        if(curr->next)
    8000198c:	02070063          	beqz	a4,800019ac <_ZN15MemoryAllocator12FreeFragmentEPv+0xb4>
            curr->next->prev = prev;
    80001990:	00f73423          	sd	a5,8(a4)
    return 0;
    80001994:	00000513          	li	a0,0
    80001998:	fa9ff06f          	j	80001940 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    if(!curr)return -1;
    8000199c:	fff00513          	li	a0,-1
    800019a0:	fa1ff06f          	j	80001940 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    return 0;
    800019a4:	00000513          	li	a0,0
    800019a8:	f99ff06f          	j	80001940 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>
    800019ac:	00000513          	li	a0,0
    800019b0:	f91ff06f          	j	80001940 <_ZN15MemoryAllocator12FreeFragmentEPv+0x48>

00000000800019b4 <HandleInterupt>:
#include "Thread.hpp"
#include "APIC.h"
#include "Scheduler.hpp"
#include "../lib/console.h"

extern "C" void HandleInterupt(uint64 code){
    800019b4:	fe010113          	addi	sp,sp,-32
    800019b8:	00113c23          	sd	ra,24(sp)
    800019bc:	00813823          	sd	s0,16(sp)
    800019c0:	00913423          	sd	s1,8(sp)
    800019c4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv %[code],a0":[code]"=r"(code));
    800019c8:	00050713          	mv	a4,a0
    uint64 scause=0;
    __asm__ volatile("csrr %[scause],scause":[scause]"=r"(scause));
    800019cc:	142027f3          	csrr	a5,scause
    if (scause !=8&&scause !=9) {
    800019d0:	ff878793          	addi	a5,a5,-8
    800019d4:	00100693          	li	a3,1
    800019d8:	02f6ee63          	bltu	a3,a5,80001a14 <HandleInterupt+0x60>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
        return;

    }
    uint64 sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800019dc:	141027f3          	csrr	a5,sepc
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    800019e0:	00478793          	addi	a5,a5,4
    800019e4:	14179073          	csrw	sepc,a5
    switch (code) {
    800019e8:	00200793          	li	a5,2
    800019ec:	06f70263          	beq	a4,a5,80001a50 <HandleInterupt+0x9c>
    800019f0:	00300793          	li	a5,3
    800019f4:	06f70c63          	beq	a4,a5,80001a6c <HandleInterupt+0xb8>
    800019f8:	00100793          	li	a5,1
    800019fc:	02f70a63          	beq	a4,a5,80001a30 <HandleInterupt+0x7c>
        default: {
            break;
        }
    }
    return;
}
    80001a00:	01813083          	ld	ra,24(sp)
    80001a04:	01013403          	ld	s0,16(sp)
    80001a08:	00813483          	ld	s1,8(sp)
    80001a0c:	02010113          	addi	sp,sp,32
    80001a10:	00008067          	ret
        __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001a14:	141024f3          	csrr	s1,sepc
        __putc('!');
    80001a18:	02100513          	li	a0,33
    80001a1c:	00002097          	auipc	ra,0x2
    80001a20:	310080e7          	jalr	784(ra) # 80003d2c <__putc>
        __asm__ volatile("csrw sepc, %0" :: "r"(sepc + 4));
    80001a24:	00448493          	addi	s1,s1,4
    80001a28:	14149073          	csrw	sepc,s1
        return;
    80001a2c:	fd5ff06f          	j	80001a00 <HandleInterupt+0x4c>
            __asm__ volatile("mv %[size],a1":[size]"=r"(size));
    80001a30:	00058493          	mv	s1,a1
            void* ptr = MemoryAllocator::GetInstance().AllocateFragment(size);
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	dcc080e7          	jalr	-564(ra) # 80001800 <_ZN15MemoryAllocator11GetInstanceEv>
    80001a3c:	00048593          	mv	a1,s1
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	e1c080e7          	jalr	-484(ra) # 8000185c <_ZN15MemoryAllocator16AllocateFragmentEm>
            __asm__ volatile("mv a0,%[res]"::[res]"r"(ptr));
    80001a48:	00050513          	mv	a0,a0
            break;
    80001a4c:	fb5ff06f          	j	80001a00 <HandleInterupt+0x4c>
            __asm__ volatile("mv %[ptr],a1":[ptr]"=r"(ptr));
    80001a50:	00058493          	mv	s1,a1
            MemoryAllocator::GetInstance().FreeFragment(ptr);
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	dac080e7          	jalr	-596(ra) # 80001800 <_ZN15MemoryAllocator11GetInstanceEv>
    80001a5c:	00048593          	mv	a1,s1
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	e98080e7          	jalr	-360(ra) # 800018f8 <_ZN15MemoryAllocator12FreeFragmentEPv>
            break;
    80001a68:	f99ff06f          	j	80001a00 <HandleInterupt+0x4c>
            __asm__ volatile("mv %0, a1" : "=r"(t));
    80001a6c:	00058513          	mv	a0,a1
            ((Thread*)t)->start();
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	a7c080e7          	jalr	-1412(ra) # 800014ec <_ZN6Thread5startEv>
            break;
    80001a78:	f89ff06f          	j	80001a00 <HandleInterupt+0x4c>

0000000080001a7c <thread_create>:

inline void* operator new(size_t, void* p) { return p; }


extern "C" {
thread_t thread_create(void (*body)(void)) {
    80001a7c:	fe010113          	addi	sp,sp,-32
    80001a80:	00113c23          	sd	ra,24(sp)
    80001a84:	00813823          	sd	s0,16(sp)
    80001a88:	00913423          	sd	s1,8(sp)
    80001a8c:	01213023          	sd	s2,0(sp)
    80001a90:	02010413          	addi	s0,sp,32
    80001a94:	00050913          	mv	s2,a0
    void* mem = mem_alloc(sizeof(Thread));
    80001a98:	00008537          	lui	a0,0x8
    80001a9c:	14050513          	addi	a0,a0,320 # 8140 <_entry-0x7fff7ec0>
    80001aa0:	fffff097          	auipc	ra,0xfffff
    80001aa4:	780080e7          	jalr	1920(ra) # 80001220 <mem_alloc>
    80001aa8:	00050493          	mv	s1,a0
    Thread* t = reinterpret_cast<Thread*>(mem);
    t->init();
    80001aac:	00053783          	ld	a5,0(a0)
    80001ab0:	0007b783          	ld	a5,0(a5)
    80001ab4:	000780e7          	jalr	a5
    Thread* getNextInQueue();
    Thread* getPrevInQueue();
    void setNextInQueue(Thread* next);
    void setPrevInQueue(Thread* prev);
    void setNextAndPrevInQueue(Thread* next, Thread* prev);
    void start();
    80001ab8:	0124b423          	sd	s2,8(s1)
    t->setBody(body);
    return reinterpret_cast<thread_t>(t);
}
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret

0000000080001ad8 <thread_start>:

int thread_start(thread_t handle) {//TODO:Change name
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00813423          	sd	s0,8(sp)
    80001ae0:	01010413          	addi	s0,sp,16
    uint64 code = 0x03;
    __asm__ volatile("mv a1, %0" :: "r"(handle));
    80001ae4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r"(code));
    80001ae8:	00300793          	li	a5,3
    80001aec:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001af0:	00000073          	ecall
    return 0;
}
    80001af4:	00000513          	li	a0,0
    80001af8:	00813403          	ld	s0,8(sp)
    80001afc:	01010113          	addi	sp,sp,16
    80001b00:	00008067          	ret

0000000080001b04 <thread_join>:

int thread_join(thread_t t) {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    ((Thread*)t)->join();
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	a38080e7          	jalr	-1480(ra) # 8000154c <_ZN6Thread4joinEv>
    return 0;
}
    80001b1c:	00000513          	li	a0,0
    80001b20:	00813083          	ld	ra,8(sp)
    80001b24:	00013403          	ld	s0,0(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <start_main_thread>:
int start_main_thread() {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    Scheduler::SetupStartThread();
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	be8080e7          	jalr	-1048(ra) # 80001728 <_ZN9Scheduler16SetupStartThreadEv>
    return 0;
}
    80001b48:	00000513          	li	a0,0
    80001b4c:	00813083          	ld	ra,8(sp)
    80001b50:	00013403          	ld	s0,0(sp)
    80001b54:	01010113          	addi	sp,sp,16
    80001b58:	00008067          	ret

0000000080001b5c <_Z5mainAv>:
#include "../lib/console.h"
#include "MemoryAllocator.hpp"
void mainA(){
    80001b5c:	fd010113          	addi	sp,sp,-48
    80001b60:	02113423          	sd	ra,40(sp)
    80001b64:	02813023          	sd	s0,32(sp)
    80001b68:	00913c23          	sd	s1,24(sp)
    80001b6c:	01213823          	sd	s2,16(sp)
    80001b70:	03010413          	addi	s0,sp,48
    MemoryAllocator memAlloc = MemoryAllocator::GetInstance();
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	c8c080e7          	jalr	-884(ra) # 80001800 <_ZN15MemoryAllocator11GetInstanceEv>
    80001b7c:	00053783          	ld	a5,0(a0)
    80001b80:	fcf43c23          	sd	a5,-40(s0)

    char* a1 = (char*)memAlloc.AllocateFragment(sizeof(char)*20);
    80001b84:	01400593          	li	a1,20
    80001b88:	fd840913          	addi	s2,s0,-40
    80001b8c:	00090513          	mv	a0,s2
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	ccc080e7          	jalr	-820(ra) # 8000185c <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001b98:	00050493          	mv	s1,a0
    *a1 = 'a';
    80001b9c:	06100793          	li	a5,97
    80001ba0:	00f50023          	sb	a5,0(a0)
    *(a1+sizeof(char)) ='b';
    80001ba4:	06200793          	li	a5,98
    80001ba8:	00f500a3          	sb	a5,1(a0)
    __putc(*a1);
    80001bac:	06100513          	li	a0,97
    80001bb0:	00002097          	auipc	ra,0x2
    80001bb4:	17c080e7          	jalr	380(ra) # 80003d2c <__putc>
    __putc(*(a1+1));
    80001bb8:	0014c503          	lbu	a0,1(s1)
    80001bbc:	00002097          	auipc	ra,0x2
    80001bc0:	170080e7          	jalr	368(ra) # 80003d2c <__putc>
    *(a1+11) = 'h';
    80001bc4:	06800793          	li	a5,104
    80001bc8:	00f485a3          	sb	a5,11(s1)
    char* a2 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001bcc:	00a00593          	li	a1,10
    80001bd0:	00090513          	mv	a0,s2
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	c88080e7          	jalr	-888(ra) # 8000185c <_ZN15MemoryAllocator16AllocateFragmentEm>
    *a2 = 'c';
    80001bdc:	06300793          	li	a5,99
    80001be0:	00f50023          	sb	a5,0(a0)
    *(a2+sizeof(char)) ='d';
    80001be4:	06400793          	li	a5,100
    80001be8:	00f500a3          	sb	a5,1(a0)
    memAlloc.FreeFragment(a1);
    80001bec:	00048593          	mv	a1,s1
    80001bf0:	00090513          	mv	a0,s2
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	d04080e7          	jalr	-764(ra) # 800018f8 <_ZN15MemoryAllocator12FreeFragmentEPv>
    char* a3 = (char*)memAlloc.AllocateFragment(sizeof(char)*10);
    80001bfc:	00a00593          	li	a1,10
    80001c00:	00090513          	mv	a0,s2
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	c58080e7          	jalr	-936(ra) # 8000185c <_ZN15MemoryAllocator16AllocateFragmentEm>
    80001c0c:	00050913          	mv	s2,a0
    *a3 = 'e';
    80001c10:	06500793          	li	a5,101
    80001c14:	00f50023          	sb	a5,0(a0)
    *(a3+sizeof(char)) ='f';
    80001c18:	06600793          	li	a5,102
    80001c1c:	00f500a3          	sb	a5,1(a0)
    __putc(*a3);
    80001c20:	06500513          	li	a0,101
    80001c24:	00002097          	auipc	ra,0x2
    80001c28:	108080e7          	jalr	264(ra) # 80003d2c <__putc>
    __putc(*(a3+11));
    80001c2c:	00b94503          	lbu	a0,11(s2)
    80001c30:	00002097          	auipc	ra,0x2
    80001c34:	0fc080e7          	jalr	252(ra) # 80003d2c <__putc>
    __putc(*a1);
    80001c38:	0004c503          	lbu	a0,0(s1)
    80001c3c:	00002097          	auipc	ra,0x2
    80001c40:	0f0080e7          	jalr	240(ra) # 80003d2c <__putc>
    __putc(*(a1+1));
    80001c44:	0014c503          	lbu	a0,1(s1)
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	0e4080e7          	jalr	228(ra) # 80003d2c <__putc>


    80001c50:	02813083          	ld	ra,40(sp)
    80001c54:	02013403          	ld	s0,32(sp)
    80001c58:	01813483          	ld	s1,24(sp)
    80001c5c:	01013903          	ld	s2,16(sp)
    80001c60:	03010113          	addi	sp,sp,48
    80001c64:	00008067          	ret

0000000080001c68 <start>:
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00813423          	sd	s0,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
    80001c74:	300027f3          	csrr	a5,mstatus
    80001c78:	ffffe737          	lui	a4,0xffffe
    80001c7c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8def>
    80001c80:	00e7f7b3          	and	a5,a5,a4
    80001c84:	00001737          	lui	a4,0x1
    80001c88:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001c8c:	00e7e7b3          	or	a5,a5,a4
    80001c90:	30079073          	csrw	mstatus,a5
    80001c94:	00000797          	auipc	a5,0x0
    80001c98:	16078793          	addi	a5,a5,352 # 80001df4 <system_main>
    80001c9c:	34179073          	csrw	mepc,a5
    80001ca0:	00000793          	li	a5,0
    80001ca4:	18079073          	csrw	satp,a5
    80001ca8:	000107b7          	lui	a5,0x10
    80001cac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001cb0:	30279073          	csrw	medeleg,a5
    80001cb4:	30379073          	csrw	mideleg,a5
    80001cb8:	104027f3          	csrr	a5,sie
    80001cbc:	2227e793          	ori	a5,a5,546
    80001cc0:	10479073          	csrw	sie,a5
    80001cc4:	fff00793          	li	a5,-1
    80001cc8:	00a7d793          	srli	a5,a5,0xa
    80001ccc:	3b079073          	csrw	pmpaddr0,a5
    80001cd0:	00f00793          	li	a5,15
    80001cd4:	3a079073          	csrw	pmpcfg0,a5
    80001cd8:	f14027f3          	csrr	a5,mhartid
    80001cdc:	0200c737          	lui	a4,0x200c
    80001ce0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ce4:	0007869b          	sext.w	a3,a5
    80001ce8:	00269713          	slli	a4,a3,0x2
    80001cec:	000f4637          	lui	a2,0xf4
    80001cf0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001cf4:	00d70733          	add	a4,a4,a3
    80001cf8:	0037979b          	slliw	a5,a5,0x3
    80001cfc:	020046b7          	lui	a3,0x2004
    80001d00:	00d787b3          	add	a5,a5,a3
    80001d04:	00c585b3          	add	a1,a1,a2
    80001d08:	00371693          	slli	a3,a4,0x3
    80001d0c:	00003717          	auipc	a4,0x3
    80001d10:	ab470713          	addi	a4,a4,-1356 # 800047c0 <timer_scratch>
    80001d14:	00b7b023          	sd	a1,0(a5)
    80001d18:	00d70733          	add	a4,a4,a3
    80001d1c:	00f73c23          	sd	a5,24(a4)
    80001d20:	02c73023          	sd	a2,32(a4)
    80001d24:	34071073          	csrw	mscratch,a4
    80001d28:	00000797          	auipc	a5,0x0
    80001d2c:	6e878793          	addi	a5,a5,1768 # 80002410 <timervec>
    80001d30:	30579073          	csrw	mtvec,a5
    80001d34:	300027f3          	csrr	a5,mstatus
    80001d38:	0087e793          	ori	a5,a5,8
    80001d3c:	30079073          	csrw	mstatus,a5
    80001d40:	304027f3          	csrr	a5,mie
    80001d44:	0807e793          	ori	a5,a5,128
    80001d48:	30479073          	csrw	mie,a5
    80001d4c:	f14027f3          	csrr	a5,mhartid
    80001d50:	0007879b          	sext.w	a5,a5
    80001d54:	00078213          	mv	tp,a5
    80001d58:	30200073          	mret
    80001d5c:	00813403          	ld	s0,8(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <timerinit>:
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00813423          	sd	s0,8(sp)
    80001d70:	01010413          	addi	s0,sp,16
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
    80001dac:	a1870713          	addi	a4,a4,-1512 # 800047c0 <timer_scratch>
    80001db0:	00b7b023          	sd	a1,0(a5)
    80001db4:	00d70733          	add	a4,a4,a3
    80001db8:	00f73c23          	sd	a5,24(a4)
    80001dbc:	02c73023          	sd	a2,32(a4)
    80001dc0:	34071073          	csrw	mscratch,a4
    80001dc4:	00000797          	auipc	a5,0x0
    80001dc8:	64c78793          	addi	a5,a5,1612 # 80002410 <timervec>
    80001dcc:	30579073          	csrw	mtvec,a5
    80001dd0:	300027f3          	csrr	a5,mstatus
    80001dd4:	0087e793          	ori	a5,a5,8
    80001dd8:	30079073          	csrw	mstatus,a5
    80001ddc:	304027f3          	csrr	a5,mie
    80001de0:	0807e793          	ori	a5,a5,128
    80001de4:	30479073          	csrw	mie,a5
    80001de8:	00813403          	ld	s0,8(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret

0000000080001df4 <system_main>:
    80001df4:	fe010113          	addi	sp,sp,-32
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	00113c23          	sd	ra,24(sp)
    80001e04:	02010413          	addi	s0,sp,32
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	0c4080e7          	jalr	196(ra) # 80001ecc <cpuid>
    80001e10:	00003497          	auipc	s1,0x3
    80001e14:	95048493          	addi	s1,s1,-1712 # 80004760 <started>
    80001e18:	02050263          	beqz	a0,80001e3c <system_main+0x48>
    80001e1c:	0004a783          	lw	a5,0(s1)
    80001e20:	0007879b          	sext.w	a5,a5
    80001e24:	fe078ce3          	beqz	a5,80001e1c <system_main+0x28>
    80001e28:	0ff0000f          	fence
    80001e2c:	00002517          	auipc	a0,0x2
    80001e30:	22450513          	addi	a0,a0,548 # 80004050 <CONSOLE_STATUS+0x40>
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	a78080e7          	jalr	-1416(ra) # 800028ac <panic>
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	9cc080e7          	jalr	-1588(ra) # 80002808 <consoleinit>
    80001e44:	00001097          	auipc	ra,0x1
    80001e48:	158080e7          	jalr	344(ra) # 80002f9c <printfinit>
    80001e4c:	00002517          	auipc	a0,0x2
    80001e50:	2e450513          	addi	a0,a0,740 # 80004130 <CONSOLE_STATUS+0x120>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	ab4080e7          	jalr	-1356(ra) # 80002908 <__printf>
    80001e5c:	00002517          	auipc	a0,0x2
    80001e60:	1c450513          	addi	a0,a0,452 # 80004020 <CONSOLE_STATUS+0x10>
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	aa4080e7          	jalr	-1372(ra) # 80002908 <__printf>
    80001e6c:	00002517          	auipc	a0,0x2
    80001e70:	2c450513          	addi	a0,a0,708 # 80004130 <CONSOLE_STATUS+0x120>
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	a94080e7          	jalr	-1388(ra) # 80002908 <__printf>
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	4ac080e7          	jalr	1196(ra) # 80003328 <kinit>
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	148080e7          	jalr	328(ra) # 80001fcc <trapinit>
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	16c080e7          	jalr	364(ra) # 80001ff8 <trapinithart>
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	5bc080e7          	jalr	1468(ra) # 80002450 <plicinit>
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	5dc080e7          	jalr	1500(ra) # 80002478 <plicinithart>
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	078080e7          	jalr	120(ra) # 80001f1c <userinit>
    80001eac:	0ff0000f          	fence
    80001eb0:	00100793          	li	a5,1
    80001eb4:	00002517          	auipc	a0,0x2
    80001eb8:	18450513          	addi	a0,a0,388 # 80004038 <CONSOLE_STATUS+0x28>
    80001ebc:	00f4a023          	sw	a5,0(s1)
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	a48080e7          	jalr	-1464(ra) # 80002908 <__printf>
    80001ec8:	0000006f          	j	80001ec8 <system_main+0xd4>

0000000080001ecc <cpuid>:
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00813423          	sd	s0,8(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    80001ed8:	00020513          	mv	a0,tp
    80001edc:	00813403          	ld	s0,8(sp)
    80001ee0:	0005051b          	sext.w	a0,a0
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <mycpu>:
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00813423          	sd	s0,8(sp)
    80001ef4:	01010413          	addi	s0,sp,16
    80001ef8:	00020793          	mv	a5,tp
    80001efc:	00813403          	ld	s0,8(sp)
    80001f00:	0007879b          	sext.w	a5,a5
    80001f04:	00779793          	slli	a5,a5,0x7
    80001f08:	00004517          	auipc	a0,0x4
    80001f0c:	8e850513          	addi	a0,a0,-1816 # 800057f0 <cpus>
    80001f10:	00f50533          	add	a0,a0,a5
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret

0000000080001f1c <userinit>:
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    80001f28:	00813403          	ld	s0,8(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	fffff317          	auipc	t1,0xfffff
    80001f34:	3dc30067          	jr	988(t1) # 8000130c <main>

0000000080001f38 <either_copyout>:
    80001f38:	ff010113          	addi	sp,sp,-16
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	00113423          	sd	ra,8(sp)
    80001f44:	01010413          	addi	s0,sp,16
    80001f48:	02051663          	bnez	a0,80001f74 <either_copyout+0x3c>
    80001f4c:	00058513          	mv	a0,a1
    80001f50:	00060593          	mv	a1,a2
    80001f54:	0006861b          	sext.w	a2,a3
    80001f58:	00002097          	auipc	ra,0x2
    80001f5c:	c5c080e7          	jalr	-932(ra) # 80003bb4 <__memmove>
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	00000513          	li	a0,0
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret
    80001f74:	00002517          	auipc	a0,0x2
    80001f78:	10450513          	addi	a0,a0,260 # 80004078 <CONSOLE_STATUS+0x68>
    80001f7c:	00001097          	auipc	ra,0x1
    80001f80:	930080e7          	jalr	-1744(ra) # 800028ac <panic>

0000000080001f84 <either_copyin>:
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	00113423          	sd	ra,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    80001f94:	02059463          	bnez	a1,80001fbc <either_copyin+0x38>
    80001f98:	00060593          	mv	a1,a2
    80001f9c:	0006861b          	sext.w	a2,a3
    80001fa0:	00002097          	auipc	ra,0x2
    80001fa4:	c14080e7          	jalr	-1004(ra) # 80003bb4 <__memmove>
    80001fa8:	00813083          	ld	ra,8(sp)
    80001fac:	00013403          	ld	s0,0(sp)
    80001fb0:	00000513          	li	a0,0
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret
    80001fbc:	00002517          	auipc	a0,0x2
    80001fc0:	0e450513          	addi	a0,a0,228 # 800040a0 <CONSOLE_STATUS+0x90>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	8e8080e7          	jalr	-1816(ra) # 800028ac <panic>

0000000080001fcc <trapinit>:
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00813423          	sd	s0,8(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    80001fd8:	00813403          	ld	s0,8(sp)
    80001fdc:	00002597          	auipc	a1,0x2
    80001fe0:	0ec58593          	addi	a1,a1,236 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001fe4:	00004517          	auipc	a0,0x4
    80001fe8:	88c50513          	addi	a0,a0,-1908 # 80005870 <tickslock>
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00001317          	auipc	t1,0x1
    80001ff4:	5c830067          	jr	1480(t1) # 800035b8 <initlock>

0000000080001ff8 <trapinithart>:
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    80002004:	00000797          	auipc	a5,0x0
    80002008:	2fc78793          	addi	a5,a5,764 # 80002300 <kernelvec>
    8000200c:	10579073          	csrw	stvec,a5
    80002010:	00813403          	ld	s0,8(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <usertrap>:
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00813403          	ld	s0,8(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <usertrapret>:
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00813423          	sd	s0,8(sp)
    8000203c:	01010413          	addi	s0,sp,16
    80002040:	00813403          	ld	s0,8(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <kerneltrap>:
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00813823          	sd	s0,16(sp)
    80002054:	00113c23          	sd	ra,24(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	02010413          	addi	s0,sp,32
    80002060:	142025f3          	csrr	a1,scause
    80002064:	100027f3          	csrr	a5,sstatus
    80002068:	0027f793          	andi	a5,a5,2
    8000206c:	10079c63          	bnez	a5,80002184 <kerneltrap+0x138>
    80002070:	142027f3          	csrr	a5,scause
    80002074:	0207ce63          	bltz	a5,800020b0 <kerneltrap+0x64>
    80002078:	00002517          	auipc	a0,0x2
    8000207c:	09850513          	addi	a0,a0,152 # 80004110 <CONSOLE_STATUS+0x100>
    80002080:	00001097          	auipc	ra,0x1
    80002084:	888080e7          	jalr	-1912(ra) # 80002908 <__printf>
    80002088:	141025f3          	csrr	a1,sepc
    8000208c:	14302673          	csrr	a2,stval
    80002090:	00002517          	auipc	a0,0x2
    80002094:	09050513          	addi	a0,a0,144 # 80004120 <CONSOLE_STATUS+0x110>
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	870080e7          	jalr	-1936(ra) # 80002908 <__printf>
    800020a0:	00002517          	auipc	a0,0x2
    800020a4:	09850513          	addi	a0,a0,152 # 80004138 <CONSOLE_STATUS+0x128>
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	804080e7          	jalr	-2044(ra) # 800028ac <panic>
    800020b0:	0ff7f713          	andi	a4,a5,255
    800020b4:	00900693          	li	a3,9
    800020b8:	04d70063          	beq	a4,a3,800020f8 <kerneltrap+0xac>
    800020bc:	fff00713          	li	a4,-1
    800020c0:	03f71713          	slli	a4,a4,0x3f
    800020c4:	00170713          	addi	a4,a4,1
    800020c8:	fae798e3          	bne	a5,a4,80002078 <kerneltrap+0x2c>
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	e00080e7          	jalr	-512(ra) # 80001ecc <cpuid>
    800020d4:	06050663          	beqz	a0,80002140 <kerneltrap+0xf4>
    800020d8:	144027f3          	csrr	a5,sip
    800020dc:	ffd7f793          	andi	a5,a5,-3
    800020e0:	14479073          	csrw	sip,a5
    800020e4:	01813083          	ld	ra,24(sp)
    800020e8:	01013403          	ld	s0,16(sp)
    800020ec:	00813483          	ld	s1,8(sp)
    800020f0:	02010113          	addi	sp,sp,32
    800020f4:	00008067          	ret
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	3cc080e7          	jalr	972(ra) # 800024c4 <plic_claim>
    80002100:	00a00793          	li	a5,10
    80002104:	00050493          	mv	s1,a0
    80002108:	06f50863          	beq	a0,a5,80002178 <kerneltrap+0x12c>
    8000210c:	fc050ce3          	beqz	a0,800020e4 <kerneltrap+0x98>
    80002110:	00050593          	mv	a1,a0
    80002114:	00002517          	auipc	a0,0x2
    80002118:	fdc50513          	addi	a0,a0,-36 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	7ec080e7          	jalr	2028(ra) # 80002908 <__printf>
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	00048513          	mv	a0,s1
    80002130:	00813483          	ld	s1,8(sp)
    80002134:	02010113          	addi	sp,sp,32
    80002138:	00000317          	auipc	t1,0x0
    8000213c:	3c430067          	jr	964(t1) # 800024fc <plic_complete>
    80002140:	00003517          	auipc	a0,0x3
    80002144:	73050513          	addi	a0,a0,1840 # 80005870 <tickslock>
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	494080e7          	jalr	1172(ra) # 800035dc <acquire>
    80002150:	00002717          	auipc	a4,0x2
    80002154:	61470713          	addi	a4,a4,1556 # 80004764 <ticks>
    80002158:	00072783          	lw	a5,0(a4)
    8000215c:	00003517          	auipc	a0,0x3
    80002160:	71450513          	addi	a0,a0,1812 # 80005870 <tickslock>
    80002164:	0017879b          	addiw	a5,a5,1
    80002168:	00f72023          	sw	a5,0(a4)
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	53c080e7          	jalr	1340(ra) # 800036a8 <release>
    80002174:	f65ff06f          	j	800020d8 <kerneltrap+0x8c>
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	098080e7          	jalr	152(ra) # 80003210 <uartintr>
    80002180:	fa5ff06f          	j	80002124 <kerneltrap+0xd8>
    80002184:	00002517          	auipc	a0,0x2
    80002188:	f4c50513          	addi	a0,a0,-180 # 800040d0 <CONSOLE_STATUS+0xc0>
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	720080e7          	jalr	1824(ra) # 800028ac <panic>

0000000080002194 <clockintr>:
    80002194:	fe010113          	addi	sp,sp,-32
    80002198:	00813823          	sd	s0,16(sp)
    8000219c:	00913423          	sd	s1,8(sp)
    800021a0:	00113c23          	sd	ra,24(sp)
    800021a4:	02010413          	addi	s0,sp,32
    800021a8:	00003497          	auipc	s1,0x3
    800021ac:	6c848493          	addi	s1,s1,1736 # 80005870 <tickslock>
    800021b0:	00048513          	mv	a0,s1
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	428080e7          	jalr	1064(ra) # 800035dc <acquire>
    800021bc:	00002717          	auipc	a4,0x2
    800021c0:	5a870713          	addi	a4,a4,1448 # 80004764 <ticks>
    800021c4:	00072783          	lw	a5,0(a4)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	01813083          	ld	ra,24(sp)
    800021d0:	00048513          	mv	a0,s1
    800021d4:	0017879b          	addiw	a5,a5,1
    800021d8:	00813483          	ld	s1,8(sp)
    800021dc:	00f72023          	sw	a5,0(a4)
    800021e0:	02010113          	addi	sp,sp,32
    800021e4:	00001317          	auipc	t1,0x1
    800021e8:	4c430067          	jr	1220(t1) # 800036a8 <release>

00000000800021ec <devintr>:
    800021ec:	142027f3          	csrr	a5,scause
    800021f0:	00000513          	li	a0,0
    800021f4:	0007c463          	bltz	a5,800021fc <devintr+0x10>
    800021f8:	00008067          	ret
    800021fc:	fe010113          	addi	sp,sp,-32
    80002200:	00813823          	sd	s0,16(sp)
    80002204:	00113c23          	sd	ra,24(sp)
    80002208:	00913423          	sd	s1,8(sp)
    8000220c:	02010413          	addi	s0,sp,32
    80002210:	0ff7f713          	andi	a4,a5,255
    80002214:	00900693          	li	a3,9
    80002218:	04d70c63          	beq	a4,a3,80002270 <devintr+0x84>
    8000221c:	fff00713          	li	a4,-1
    80002220:	03f71713          	slli	a4,a4,0x3f
    80002224:	00170713          	addi	a4,a4,1
    80002228:	00e78c63          	beq	a5,a4,80002240 <devintr+0x54>
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret
    80002240:	00000097          	auipc	ra,0x0
    80002244:	c8c080e7          	jalr	-884(ra) # 80001ecc <cpuid>
    80002248:	06050663          	beqz	a0,800022b4 <devintr+0xc8>
    8000224c:	144027f3          	csrr	a5,sip
    80002250:	ffd7f793          	andi	a5,a5,-3
    80002254:	14479073          	csrw	sip,a5
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	00200513          	li	a0,2
    80002268:	02010113          	addi	sp,sp,32
    8000226c:	00008067          	ret
    80002270:	00000097          	auipc	ra,0x0
    80002274:	254080e7          	jalr	596(ra) # 800024c4 <plic_claim>
    80002278:	00a00793          	li	a5,10
    8000227c:	00050493          	mv	s1,a0
    80002280:	06f50663          	beq	a0,a5,800022ec <devintr+0x100>
    80002284:	00100513          	li	a0,1
    80002288:	fa0482e3          	beqz	s1,8000222c <devintr+0x40>
    8000228c:	00048593          	mv	a1,s1
    80002290:	00002517          	auipc	a0,0x2
    80002294:	e6050513          	addi	a0,a0,-416 # 800040f0 <CONSOLE_STATUS+0xe0>
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	670080e7          	jalr	1648(ra) # 80002908 <__printf>
    800022a0:	00048513          	mv	a0,s1
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	258080e7          	jalr	600(ra) # 800024fc <plic_complete>
    800022ac:	00100513          	li	a0,1
    800022b0:	f7dff06f          	j	8000222c <devintr+0x40>
    800022b4:	00003517          	auipc	a0,0x3
    800022b8:	5bc50513          	addi	a0,a0,1468 # 80005870 <tickslock>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	320080e7          	jalr	800(ra) # 800035dc <acquire>
    800022c4:	00002717          	auipc	a4,0x2
    800022c8:	4a070713          	addi	a4,a4,1184 # 80004764 <ticks>
    800022cc:	00072783          	lw	a5,0(a4)
    800022d0:	00003517          	auipc	a0,0x3
    800022d4:	5a050513          	addi	a0,a0,1440 # 80005870 <tickslock>
    800022d8:	0017879b          	addiw	a5,a5,1
    800022dc:	00f72023          	sw	a5,0(a4)
    800022e0:	00001097          	auipc	ra,0x1
    800022e4:	3c8080e7          	jalr	968(ra) # 800036a8 <release>
    800022e8:	f65ff06f          	j	8000224c <devintr+0x60>
    800022ec:	00001097          	auipc	ra,0x1
    800022f0:	f24080e7          	jalr	-220(ra) # 80003210 <uartintr>
    800022f4:	fadff06f          	j	800022a0 <devintr+0xb4>
	...

0000000080002300 <kernelvec>:
    80002300:	f0010113          	addi	sp,sp,-256
    80002304:	00113023          	sd	ra,0(sp)
    80002308:	00213423          	sd	sp,8(sp)
    8000230c:	00313823          	sd	gp,16(sp)
    80002310:	00413c23          	sd	tp,24(sp)
    80002314:	02513023          	sd	t0,32(sp)
    80002318:	02613423          	sd	t1,40(sp)
    8000231c:	02713823          	sd	t2,48(sp)
    80002320:	02813c23          	sd	s0,56(sp)
    80002324:	04913023          	sd	s1,64(sp)
    80002328:	04a13423          	sd	a0,72(sp)
    8000232c:	04b13823          	sd	a1,80(sp)
    80002330:	04c13c23          	sd	a2,88(sp)
    80002334:	06d13023          	sd	a3,96(sp)
    80002338:	06e13423          	sd	a4,104(sp)
    8000233c:	06f13823          	sd	a5,112(sp)
    80002340:	07013c23          	sd	a6,120(sp)
    80002344:	09113023          	sd	a7,128(sp)
    80002348:	09213423          	sd	s2,136(sp)
    8000234c:	09313823          	sd	s3,144(sp)
    80002350:	09413c23          	sd	s4,152(sp)
    80002354:	0b513023          	sd	s5,160(sp)
    80002358:	0b613423          	sd	s6,168(sp)
    8000235c:	0b713823          	sd	s7,176(sp)
    80002360:	0b813c23          	sd	s8,184(sp)
    80002364:	0d913023          	sd	s9,192(sp)
    80002368:	0da13423          	sd	s10,200(sp)
    8000236c:	0db13823          	sd	s11,208(sp)
    80002370:	0dc13c23          	sd	t3,216(sp)
    80002374:	0fd13023          	sd	t4,224(sp)
    80002378:	0fe13423          	sd	t5,232(sp)
    8000237c:	0ff13823          	sd	t6,240(sp)
    80002380:	ccdff0ef          	jal	ra,8000204c <kerneltrap>
    80002384:	00013083          	ld	ra,0(sp)
    80002388:	00813103          	ld	sp,8(sp)
    8000238c:	01013183          	ld	gp,16(sp)
    80002390:	02013283          	ld	t0,32(sp)
    80002394:	02813303          	ld	t1,40(sp)
    80002398:	03013383          	ld	t2,48(sp)
    8000239c:	03813403          	ld	s0,56(sp)
    800023a0:	04013483          	ld	s1,64(sp)
    800023a4:	04813503          	ld	a0,72(sp)
    800023a8:	05013583          	ld	a1,80(sp)
    800023ac:	05813603          	ld	a2,88(sp)
    800023b0:	06013683          	ld	a3,96(sp)
    800023b4:	06813703          	ld	a4,104(sp)
    800023b8:	07013783          	ld	a5,112(sp)
    800023bc:	07813803          	ld	a6,120(sp)
    800023c0:	08013883          	ld	a7,128(sp)
    800023c4:	08813903          	ld	s2,136(sp)
    800023c8:	09013983          	ld	s3,144(sp)
    800023cc:	09813a03          	ld	s4,152(sp)
    800023d0:	0a013a83          	ld	s5,160(sp)
    800023d4:	0a813b03          	ld	s6,168(sp)
    800023d8:	0b013b83          	ld	s7,176(sp)
    800023dc:	0b813c03          	ld	s8,184(sp)
    800023e0:	0c013c83          	ld	s9,192(sp)
    800023e4:	0c813d03          	ld	s10,200(sp)
    800023e8:	0d013d83          	ld	s11,208(sp)
    800023ec:	0d813e03          	ld	t3,216(sp)
    800023f0:	0e013e83          	ld	t4,224(sp)
    800023f4:	0e813f03          	ld	t5,232(sp)
    800023f8:	0f013f83          	ld	t6,240(sp)
    800023fc:	10010113          	addi	sp,sp,256
    80002400:	10200073          	sret
    80002404:	00000013          	nop
    80002408:	00000013          	nop
    8000240c:	00000013          	nop

0000000080002410 <timervec>:
    80002410:	34051573          	csrrw	a0,mscratch,a0
    80002414:	00b53023          	sd	a1,0(a0)
    80002418:	00c53423          	sd	a2,8(a0)
    8000241c:	00d53823          	sd	a3,16(a0)
    80002420:	01853583          	ld	a1,24(a0)
    80002424:	02053603          	ld	a2,32(a0)
    80002428:	0005b683          	ld	a3,0(a1)
    8000242c:	00c686b3          	add	a3,a3,a2
    80002430:	00d5b023          	sd	a3,0(a1)
    80002434:	00200593          	li	a1,2
    80002438:	14459073          	csrw	sip,a1
    8000243c:	01053683          	ld	a3,16(a0)
    80002440:	00853603          	ld	a2,8(a0)
    80002444:	00053583          	ld	a1,0(a0)
    80002448:	34051573          	csrrw	a0,mscratch,a0
    8000244c:	30200073          	mret

0000000080002450 <plicinit>:
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	0c0007b7          	lui	a5,0xc000
    80002464:	00100713          	li	a4,1
    80002468:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000246c:	00e7a223          	sw	a4,4(a5)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <plicinithart>:
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00813023          	sd	s0,0(sp)
    80002480:	00113423          	sd	ra,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	a44080e7          	jalr	-1468(ra) # 80001ecc <cpuid>
    80002490:	0085171b          	slliw	a4,a0,0x8
    80002494:	0c0027b7          	lui	a5,0xc002
    80002498:	00e787b3          	add	a5,a5,a4
    8000249c:	40200713          	li	a4,1026
    800024a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	00d5151b          	slliw	a0,a0,0xd
    800024b0:	0c2017b7          	lui	a5,0xc201
    800024b4:	00a78533          	add	a0,a5,a0
    800024b8:	00052023          	sw	zero,0(a0)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <plic_claim>:
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00813023          	sd	s0,0(sp)
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	9f8080e7          	jalr	-1544(ra) # 80001ecc <cpuid>
    800024dc:	00813083          	ld	ra,8(sp)
    800024e0:	00013403          	ld	s0,0(sp)
    800024e4:	00d5151b          	slliw	a0,a0,0xd
    800024e8:	0c2017b7          	lui	a5,0xc201
    800024ec:	00a78533          	add	a0,a5,a0
    800024f0:	00452503          	lw	a0,4(a0)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <plic_complete>:
    800024fc:	fe010113          	addi	sp,sp,-32
    80002500:	00813823          	sd	s0,16(sp)
    80002504:	00913423          	sd	s1,8(sp)
    80002508:	00113c23          	sd	ra,24(sp)
    8000250c:	02010413          	addi	s0,sp,32
    80002510:	00050493          	mv	s1,a0
    80002514:	00000097          	auipc	ra,0x0
    80002518:	9b8080e7          	jalr	-1608(ra) # 80001ecc <cpuid>
    8000251c:	01813083          	ld	ra,24(sp)
    80002520:	01013403          	ld	s0,16(sp)
    80002524:	00d5179b          	slliw	a5,a0,0xd
    80002528:	0c201737          	lui	a4,0xc201
    8000252c:	00f707b3          	add	a5,a4,a5
    80002530:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002534:	00813483          	ld	s1,8(sp)
    80002538:	02010113          	addi	sp,sp,32
    8000253c:	00008067          	ret

0000000080002540 <consolewrite>:
    80002540:	fb010113          	addi	sp,sp,-80
    80002544:	04813023          	sd	s0,64(sp)
    80002548:	04113423          	sd	ra,72(sp)
    8000254c:	02913c23          	sd	s1,56(sp)
    80002550:	03213823          	sd	s2,48(sp)
    80002554:	03313423          	sd	s3,40(sp)
    80002558:	03413023          	sd	s4,32(sp)
    8000255c:	01513c23          	sd	s5,24(sp)
    80002560:	05010413          	addi	s0,sp,80
    80002564:	06c05c63          	blez	a2,800025dc <consolewrite+0x9c>
    80002568:	00060993          	mv	s3,a2
    8000256c:	00050a13          	mv	s4,a0
    80002570:	00058493          	mv	s1,a1
    80002574:	00000913          	li	s2,0
    80002578:	fff00a93          	li	s5,-1
    8000257c:	01c0006f          	j	80002598 <consolewrite+0x58>
    80002580:	fbf44503          	lbu	a0,-65(s0)
    80002584:	0019091b          	addiw	s2,s2,1
    80002588:	00148493          	addi	s1,s1,1
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	a9c080e7          	jalr	-1380(ra) # 80003028 <uartputc>
    80002594:	03298063          	beq	s3,s2,800025b4 <consolewrite+0x74>
    80002598:	00048613          	mv	a2,s1
    8000259c:	00100693          	li	a3,1
    800025a0:	000a0593          	mv	a1,s4
    800025a4:	fbf40513          	addi	a0,s0,-65
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	9dc080e7          	jalr	-1572(ra) # 80001f84 <either_copyin>
    800025b0:	fd5518e3          	bne	a0,s5,80002580 <consolewrite+0x40>
    800025b4:	04813083          	ld	ra,72(sp)
    800025b8:	04013403          	ld	s0,64(sp)
    800025bc:	03813483          	ld	s1,56(sp)
    800025c0:	02813983          	ld	s3,40(sp)
    800025c4:	02013a03          	ld	s4,32(sp)
    800025c8:	01813a83          	ld	s5,24(sp)
    800025cc:	00090513          	mv	a0,s2
    800025d0:	03013903          	ld	s2,48(sp)
    800025d4:	05010113          	addi	sp,sp,80
    800025d8:	00008067          	ret
    800025dc:	00000913          	li	s2,0
    800025e0:	fd5ff06f          	j	800025b4 <consolewrite+0x74>

00000000800025e4 <consoleread>:
    800025e4:	f9010113          	addi	sp,sp,-112
    800025e8:	06813023          	sd	s0,96(sp)
    800025ec:	04913c23          	sd	s1,88(sp)
    800025f0:	05213823          	sd	s2,80(sp)
    800025f4:	05313423          	sd	s3,72(sp)
    800025f8:	05413023          	sd	s4,64(sp)
    800025fc:	03513c23          	sd	s5,56(sp)
    80002600:	03613823          	sd	s6,48(sp)
    80002604:	03713423          	sd	s7,40(sp)
    80002608:	03813023          	sd	s8,32(sp)
    8000260c:	06113423          	sd	ra,104(sp)
    80002610:	01913c23          	sd	s9,24(sp)
    80002614:	07010413          	addi	s0,sp,112
    80002618:	00060b93          	mv	s7,a2
    8000261c:	00050913          	mv	s2,a0
    80002620:	00058c13          	mv	s8,a1
    80002624:	00060b1b          	sext.w	s6,a2
    80002628:	00003497          	auipc	s1,0x3
    8000262c:	26048493          	addi	s1,s1,608 # 80005888 <cons>
    80002630:	00400993          	li	s3,4
    80002634:	fff00a13          	li	s4,-1
    80002638:	00a00a93          	li	s5,10
    8000263c:	05705e63          	blez	s7,80002698 <consoleread+0xb4>
    80002640:	09c4a703          	lw	a4,156(s1)
    80002644:	0984a783          	lw	a5,152(s1)
    80002648:	0007071b          	sext.w	a4,a4
    8000264c:	08e78463          	beq	a5,a4,800026d4 <consoleread+0xf0>
    80002650:	07f7f713          	andi	a4,a5,127
    80002654:	00e48733          	add	a4,s1,a4
    80002658:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000265c:	0017869b          	addiw	a3,a5,1
    80002660:	08d4ac23          	sw	a3,152(s1)
    80002664:	00070c9b          	sext.w	s9,a4
    80002668:	0b370663          	beq	a4,s3,80002714 <consoleread+0x130>
    8000266c:	00100693          	li	a3,1
    80002670:	f9f40613          	addi	a2,s0,-97
    80002674:	000c0593          	mv	a1,s8
    80002678:	00090513          	mv	a0,s2
    8000267c:	f8e40fa3          	sb	a4,-97(s0)
    80002680:	00000097          	auipc	ra,0x0
    80002684:	8b8080e7          	jalr	-1864(ra) # 80001f38 <either_copyout>
    80002688:	01450863          	beq	a0,s4,80002698 <consoleread+0xb4>
    8000268c:	001c0c13          	addi	s8,s8,1
    80002690:	fffb8b9b          	addiw	s7,s7,-1
    80002694:	fb5c94e3          	bne	s9,s5,8000263c <consoleread+0x58>
    80002698:	000b851b          	sext.w	a0,s7
    8000269c:	06813083          	ld	ra,104(sp)
    800026a0:	06013403          	ld	s0,96(sp)
    800026a4:	05813483          	ld	s1,88(sp)
    800026a8:	05013903          	ld	s2,80(sp)
    800026ac:	04813983          	ld	s3,72(sp)
    800026b0:	04013a03          	ld	s4,64(sp)
    800026b4:	03813a83          	ld	s5,56(sp)
    800026b8:	02813b83          	ld	s7,40(sp)
    800026bc:	02013c03          	ld	s8,32(sp)
    800026c0:	01813c83          	ld	s9,24(sp)
    800026c4:	40ab053b          	subw	a0,s6,a0
    800026c8:	03013b03          	ld	s6,48(sp)
    800026cc:	07010113          	addi	sp,sp,112
    800026d0:	00008067          	ret
    800026d4:	00001097          	auipc	ra,0x1
    800026d8:	1d8080e7          	jalr	472(ra) # 800038ac <push_on>
    800026dc:	0984a703          	lw	a4,152(s1)
    800026e0:	09c4a783          	lw	a5,156(s1)
    800026e4:	0007879b          	sext.w	a5,a5
    800026e8:	fef70ce3          	beq	a4,a5,800026e0 <consoleread+0xfc>
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	234080e7          	jalr	564(ra) # 80003920 <pop_on>
    800026f4:	0984a783          	lw	a5,152(s1)
    800026f8:	07f7f713          	andi	a4,a5,127
    800026fc:	00e48733          	add	a4,s1,a4
    80002700:	01874703          	lbu	a4,24(a4)
    80002704:	0017869b          	addiw	a3,a5,1
    80002708:	08d4ac23          	sw	a3,152(s1)
    8000270c:	00070c9b          	sext.w	s9,a4
    80002710:	f5371ee3          	bne	a4,s3,8000266c <consoleread+0x88>
    80002714:	000b851b          	sext.w	a0,s7
    80002718:	f96bf2e3          	bgeu	s7,s6,8000269c <consoleread+0xb8>
    8000271c:	08f4ac23          	sw	a5,152(s1)
    80002720:	f7dff06f          	j	8000269c <consoleread+0xb8>

0000000080002724 <consputc>:
    80002724:	10000793          	li	a5,256
    80002728:	00f50663          	beq	a0,a5,80002734 <consputc+0x10>
    8000272c:	00001317          	auipc	t1,0x1
    80002730:	9f430067          	jr	-1548(t1) # 80003120 <uartputc_sync>
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    80002744:	00800513          	li	a0,8
    80002748:	00001097          	auipc	ra,0x1
    8000274c:	9d8080e7          	jalr	-1576(ra) # 80003120 <uartputc_sync>
    80002750:	02000513          	li	a0,32
    80002754:	00001097          	auipc	ra,0x1
    80002758:	9cc080e7          	jalr	-1588(ra) # 80003120 <uartputc_sync>
    8000275c:	00013403          	ld	s0,0(sp)
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00800513          	li	a0,8
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00001317          	auipc	t1,0x1
    80002770:	9b430067          	jr	-1612(t1) # 80003120 <uartputc_sync>

0000000080002774 <consoleintr>:
    80002774:	fe010113          	addi	sp,sp,-32
    80002778:	00813823          	sd	s0,16(sp)
    8000277c:	00913423          	sd	s1,8(sp)
    80002780:	01213023          	sd	s2,0(sp)
    80002784:	00113c23          	sd	ra,24(sp)
    80002788:	02010413          	addi	s0,sp,32
    8000278c:	00003917          	auipc	s2,0x3
    80002790:	0fc90913          	addi	s2,s2,252 # 80005888 <cons>
    80002794:	00050493          	mv	s1,a0
    80002798:	00090513          	mv	a0,s2
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	e40080e7          	jalr	-448(ra) # 800035dc <acquire>
    800027a4:	02048c63          	beqz	s1,800027dc <consoleintr+0x68>
    800027a8:	0a092783          	lw	a5,160(s2)
    800027ac:	09892703          	lw	a4,152(s2)
    800027b0:	07f00693          	li	a3,127
    800027b4:	40e7873b          	subw	a4,a5,a4
    800027b8:	02e6e263          	bltu	a3,a4,800027dc <consoleintr+0x68>
    800027bc:	00d00713          	li	a4,13
    800027c0:	04e48063          	beq	s1,a4,80002800 <consoleintr+0x8c>
    800027c4:	07f7f713          	andi	a4,a5,127
    800027c8:	00e90733          	add	a4,s2,a4
    800027cc:	0017879b          	addiw	a5,a5,1
    800027d0:	0af92023          	sw	a5,160(s2)
    800027d4:	00970c23          	sb	s1,24(a4)
    800027d8:	08f92e23          	sw	a5,156(s2)
    800027dc:	01013403          	ld	s0,16(sp)
    800027e0:	01813083          	ld	ra,24(sp)
    800027e4:	00813483          	ld	s1,8(sp)
    800027e8:	00013903          	ld	s2,0(sp)
    800027ec:	00003517          	auipc	a0,0x3
    800027f0:	09c50513          	addi	a0,a0,156 # 80005888 <cons>
    800027f4:	02010113          	addi	sp,sp,32
    800027f8:	00001317          	auipc	t1,0x1
    800027fc:	eb030067          	jr	-336(t1) # 800036a8 <release>
    80002800:	00a00493          	li	s1,10
    80002804:	fc1ff06f          	j	800027c4 <consoleintr+0x50>

0000000080002808 <consoleinit>:
    80002808:	fe010113          	addi	sp,sp,-32
    8000280c:	00113c23          	sd	ra,24(sp)
    80002810:	00813823          	sd	s0,16(sp)
    80002814:	00913423          	sd	s1,8(sp)
    80002818:	02010413          	addi	s0,sp,32
    8000281c:	00003497          	auipc	s1,0x3
    80002820:	06c48493          	addi	s1,s1,108 # 80005888 <cons>
    80002824:	00048513          	mv	a0,s1
    80002828:	00002597          	auipc	a1,0x2
    8000282c:	92058593          	addi	a1,a1,-1760 # 80004148 <CONSOLE_STATUS+0x138>
    80002830:	00001097          	auipc	ra,0x1
    80002834:	d88080e7          	jalr	-632(ra) # 800035b8 <initlock>
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	7ac080e7          	jalr	1964(ra) # 80002fe4 <uartinit>
    80002840:	01813083          	ld	ra,24(sp)
    80002844:	01013403          	ld	s0,16(sp)
    80002848:	00000797          	auipc	a5,0x0
    8000284c:	d9c78793          	addi	a5,a5,-612 # 800025e4 <consoleread>
    80002850:	0af4bc23          	sd	a5,184(s1)
    80002854:	00000797          	auipc	a5,0x0
    80002858:	cec78793          	addi	a5,a5,-788 # 80002540 <consolewrite>
    8000285c:	0cf4b023          	sd	a5,192(s1)
    80002860:	00813483          	ld	s1,8(sp)
    80002864:	02010113          	addi	sp,sp,32
    80002868:	00008067          	ret

000000008000286c <console_read>:
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00813423          	sd	s0,8(sp)
    80002874:	01010413          	addi	s0,sp,16
    80002878:	00813403          	ld	s0,8(sp)
    8000287c:	00003317          	auipc	t1,0x3
    80002880:	0c433303          	ld	t1,196(t1) # 80005940 <devsw+0x10>
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00030067          	jr	t1

000000008000288c <console_write>:
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00813423          	sd	s0,8(sp)
    80002894:	01010413          	addi	s0,sp,16
    80002898:	00813403          	ld	s0,8(sp)
    8000289c:	00003317          	auipc	t1,0x3
    800028a0:	0ac33303          	ld	t1,172(t1) # 80005948 <devsw+0x18>
    800028a4:	01010113          	addi	sp,sp,16
    800028a8:	00030067          	jr	t1

00000000800028ac <panic>:
    800028ac:	fe010113          	addi	sp,sp,-32
    800028b0:	00113c23          	sd	ra,24(sp)
    800028b4:	00813823          	sd	s0,16(sp)
    800028b8:	00913423          	sd	s1,8(sp)
    800028bc:	02010413          	addi	s0,sp,32
    800028c0:	00050493          	mv	s1,a0
    800028c4:	00002517          	auipc	a0,0x2
    800028c8:	88c50513          	addi	a0,a0,-1908 # 80004150 <CONSOLE_STATUS+0x140>
    800028cc:	00003797          	auipc	a5,0x3
    800028d0:	1007ae23          	sw	zero,284(a5) # 800059e8 <pr+0x18>
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	034080e7          	jalr	52(ra) # 80002908 <__printf>
    800028dc:	00048513          	mv	a0,s1
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	028080e7          	jalr	40(ra) # 80002908 <__printf>
    800028e8:	00002517          	auipc	a0,0x2
    800028ec:	84850513          	addi	a0,a0,-1976 # 80004130 <CONSOLE_STATUS+0x120>
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	018080e7          	jalr	24(ra) # 80002908 <__printf>
    800028f8:	00100793          	li	a5,1
    800028fc:	00002717          	auipc	a4,0x2
    80002900:	e6f72623          	sw	a5,-404(a4) # 80004768 <panicked>
    80002904:	0000006f          	j	80002904 <panic+0x58>

0000000080002908 <__printf>:
    80002908:	f3010113          	addi	sp,sp,-208
    8000290c:	08813023          	sd	s0,128(sp)
    80002910:	07313423          	sd	s3,104(sp)
    80002914:	09010413          	addi	s0,sp,144
    80002918:	05813023          	sd	s8,64(sp)
    8000291c:	08113423          	sd	ra,136(sp)
    80002920:	06913c23          	sd	s1,120(sp)
    80002924:	07213823          	sd	s2,112(sp)
    80002928:	07413023          	sd	s4,96(sp)
    8000292c:	05513c23          	sd	s5,88(sp)
    80002930:	05613823          	sd	s6,80(sp)
    80002934:	05713423          	sd	s7,72(sp)
    80002938:	03913c23          	sd	s9,56(sp)
    8000293c:	03a13823          	sd	s10,48(sp)
    80002940:	03b13423          	sd	s11,40(sp)
    80002944:	00003317          	auipc	t1,0x3
    80002948:	08c30313          	addi	t1,t1,140 # 800059d0 <pr>
    8000294c:	01832c03          	lw	s8,24(t1)
    80002950:	00b43423          	sd	a1,8(s0)
    80002954:	00c43823          	sd	a2,16(s0)
    80002958:	00d43c23          	sd	a3,24(s0)
    8000295c:	02e43023          	sd	a4,32(s0)
    80002960:	02f43423          	sd	a5,40(s0)
    80002964:	03043823          	sd	a6,48(s0)
    80002968:	03143c23          	sd	a7,56(s0)
    8000296c:	00050993          	mv	s3,a0
    80002970:	4a0c1663          	bnez	s8,80002e1c <__printf+0x514>
    80002974:	60098c63          	beqz	s3,80002f8c <__printf+0x684>
    80002978:	0009c503          	lbu	a0,0(s3)
    8000297c:	00840793          	addi	a5,s0,8
    80002980:	f6f43c23          	sd	a5,-136(s0)
    80002984:	00000493          	li	s1,0
    80002988:	22050063          	beqz	a0,80002ba8 <__printf+0x2a0>
    8000298c:	00002a37          	lui	s4,0x2
    80002990:	00018ab7          	lui	s5,0x18
    80002994:	000f4b37          	lui	s6,0xf4
    80002998:	00989bb7          	lui	s7,0x989
    8000299c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800029a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800029a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800029a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800029ac:	00148c9b          	addiw	s9,s1,1
    800029b0:	02500793          	li	a5,37
    800029b4:	01998933          	add	s2,s3,s9
    800029b8:	38f51263          	bne	a0,a5,80002d3c <__printf+0x434>
    800029bc:	00094783          	lbu	a5,0(s2)
    800029c0:	00078c9b          	sext.w	s9,a5
    800029c4:	1e078263          	beqz	a5,80002ba8 <__printf+0x2a0>
    800029c8:	0024849b          	addiw	s1,s1,2
    800029cc:	07000713          	li	a4,112
    800029d0:	00998933          	add	s2,s3,s1
    800029d4:	38e78a63          	beq	a5,a4,80002d68 <__printf+0x460>
    800029d8:	20f76863          	bltu	a4,a5,80002be8 <__printf+0x2e0>
    800029dc:	42a78863          	beq	a5,a0,80002e0c <__printf+0x504>
    800029e0:	06400713          	li	a4,100
    800029e4:	40e79663          	bne	a5,a4,80002df0 <__printf+0x4e8>
    800029e8:	f7843783          	ld	a5,-136(s0)
    800029ec:	0007a603          	lw	a2,0(a5)
    800029f0:	00878793          	addi	a5,a5,8
    800029f4:	f6f43c23          	sd	a5,-136(s0)
    800029f8:	42064a63          	bltz	a2,80002e2c <__printf+0x524>
    800029fc:	00a00713          	li	a4,10
    80002a00:	02e677bb          	remuw	a5,a2,a4
    80002a04:	00001d97          	auipc	s11,0x1
    80002a08:	774d8d93          	addi	s11,s11,1908 # 80004178 <digits>
    80002a0c:	00900593          	li	a1,9
    80002a10:	0006051b          	sext.w	a0,a2
    80002a14:	00000c93          	li	s9,0
    80002a18:	02079793          	slli	a5,a5,0x20
    80002a1c:	0207d793          	srli	a5,a5,0x20
    80002a20:	00fd87b3          	add	a5,s11,a5
    80002a24:	0007c783          	lbu	a5,0(a5)
    80002a28:	02e656bb          	divuw	a3,a2,a4
    80002a2c:	f8f40023          	sb	a5,-128(s0)
    80002a30:	14c5d863          	bge	a1,a2,80002b80 <__printf+0x278>
    80002a34:	06300593          	li	a1,99
    80002a38:	00100c93          	li	s9,1
    80002a3c:	02e6f7bb          	remuw	a5,a3,a4
    80002a40:	02079793          	slli	a5,a5,0x20
    80002a44:	0207d793          	srli	a5,a5,0x20
    80002a48:	00fd87b3          	add	a5,s11,a5
    80002a4c:	0007c783          	lbu	a5,0(a5)
    80002a50:	02e6d73b          	divuw	a4,a3,a4
    80002a54:	f8f400a3          	sb	a5,-127(s0)
    80002a58:	12a5f463          	bgeu	a1,a0,80002b80 <__printf+0x278>
    80002a5c:	00a00693          	li	a3,10
    80002a60:	00900593          	li	a1,9
    80002a64:	02d777bb          	remuw	a5,a4,a3
    80002a68:	02079793          	slli	a5,a5,0x20
    80002a6c:	0207d793          	srli	a5,a5,0x20
    80002a70:	00fd87b3          	add	a5,s11,a5
    80002a74:	0007c503          	lbu	a0,0(a5)
    80002a78:	02d757bb          	divuw	a5,a4,a3
    80002a7c:	f8a40123          	sb	a0,-126(s0)
    80002a80:	48e5f263          	bgeu	a1,a4,80002f04 <__printf+0x5fc>
    80002a84:	06300513          	li	a0,99
    80002a88:	02d7f5bb          	remuw	a1,a5,a3
    80002a8c:	02059593          	slli	a1,a1,0x20
    80002a90:	0205d593          	srli	a1,a1,0x20
    80002a94:	00bd85b3          	add	a1,s11,a1
    80002a98:	0005c583          	lbu	a1,0(a1)
    80002a9c:	02d7d7bb          	divuw	a5,a5,a3
    80002aa0:	f8b401a3          	sb	a1,-125(s0)
    80002aa4:	48e57263          	bgeu	a0,a4,80002f28 <__printf+0x620>
    80002aa8:	3e700513          	li	a0,999
    80002aac:	02d7f5bb          	remuw	a1,a5,a3
    80002ab0:	02059593          	slli	a1,a1,0x20
    80002ab4:	0205d593          	srli	a1,a1,0x20
    80002ab8:	00bd85b3          	add	a1,s11,a1
    80002abc:	0005c583          	lbu	a1,0(a1)
    80002ac0:	02d7d7bb          	divuw	a5,a5,a3
    80002ac4:	f8b40223          	sb	a1,-124(s0)
    80002ac8:	46e57663          	bgeu	a0,a4,80002f34 <__printf+0x62c>
    80002acc:	02d7f5bb          	remuw	a1,a5,a3
    80002ad0:	02059593          	slli	a1,a1,0x20
    80002ad4:	0205d593          	srli	a1,a1,0x20
    80002ad8:	00bd85b3          	add	a1,s11,a1
    80002adc:	0005c583          	lbu	a1,0(a1)
    80002ae0:	02d7d7bb          	divuw	a5,a5,a3
    80002ae4:	f8b402a3          	sb	a1,-123(s0)
    80002ae8:	46ea7863          	bgeu	s4,a4,80002f58 <__printf+0x650>
    80002aec:	02d7f5bb          	remuw	a1,a5,a3
    80002af0:	02059593          	slli	a1,a1,0x20
    80002af4:	0205d593          	srli	a1,a1,0x20
    80002af8:	00bd85b3          	add	a1,s11,a1
    80002afc:	0005c583          	lbu	a1,0(a1)
    80002b00:	02d7d7bb          	divuw	a5,a5,a3
    80002b04:	f8b40323          	sb	a1,-122(s0)
    80002b08:	3eeaf863          	bgeu	s5,a4,80002ef8 <__printf+0x5f0>
    80002b0c:	02d7f5bb          	remuw	a1,a5,a3
    80002b10:	02059593          	slli	a1,a1,0x20
    80002b14:	0205d593          	srli	a1,a1,0x20
    80002b18:	00bd85b3          	add	a1,s11,a1
    80002b1c:	0005c583          	lbu	a1,0(a1)
    80002b20:	02d7d7bb          	divuw	a5,a5,a3
    80002b24:	f8b403a3          	sb	a1,-121(s0)
    80002b28:	42eb7e63          	bgeu	s6,a4,80002f64 <__printf+0x65c>
    80002b2c:	02d7f5bb          	remuw	a1,a5,a3
    80002b30:	02059593          	slli	a1,a1,0x20
    80002b34:	0205d593          	srli	a1,a1,0x20
    80002b38:	00bd85b3          	add	a1,s11,a1
    80002b3c:	0005c583          	lbu	a1,0(a1)
    80002b40:	02d7d7bb          	divuw	a5,a5,a3
    80002b44:	f8b40423          	sb	a1,-120(s0)
    80002b48:	42ebfc63          	bgeu	s7,a4,80002f80 <__printf+0x678>
    80002b4c:	02079793          	slli	a5,a5,0x20
    80002b50:	0207d793          	srli	a5,a5,0x20
    80002b54:	00fd8db3          	add	s11,s11,a5
    80002b58:	000dc703          	lbu	a4,0(s11)
    80002b5c:	00a00793          	li	a5,10
    80002b60:	00900c93          	li	s9,9
    80002b64:	f8e404a3          	sb	a4,-119(s0)
    80002b68:	00065c63          	bgez	a2,80002b80 <__printf+0x278>
    80002b6c:	f9040713          	addi	a4,s0,-112
    80002b70:	00f70733          	add	a4,a4,a5
    80002b74:	02d00693          	li	a3,45
    80002b78:	fed70823          	sb	a3,-16(a4)
    80002b7c:	00078c93          	mv	s9,a5
    80002b80:	f8040793          	addi	a5,s0,-128
    80002b84:	01978cb3          	add	s9,a5,s9
    80002b88:	f7f40d13          	addi	s10,s0,-129
    80002b8c:	000cc503          	lbu	a0,0(s9)
    80002b90:	fffc8c93          	addi	s9,s9,-1
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	b90080e7          	jalr	-1136(ra) # 80002724 <consputc>
    80002b9c:	ffac98e3          	bne	s9,s10,80002b8c <__printf+0x284>
    80002ba0:	00094503          	lbu	a0,0(s2)
    80002ba4:	e00514e3          	bnez	a0,800029ac <__printf+0xa4>
    80002ba8:	1a0c1663          	bnez	s8,80002d54 <__printf+0x44c>
    80002bac:	08813083          	ld	ra,136(sp)
    80002bb0:	08013403          	ld	s0,128(sp)
    80002bb4:	07813483          	ld	s1,120(sp)
    80002bb8:	07013903          	ld	s2,112(sp)
    80002bbc:	06813983          	ld	s3,104(sp)
    80002bc0:	06013a03          	ld	s4,96(sp)
    80002bc4:	05813a83          	ld	s5,88(sp)
    80002bc8:	05013b03          	ld	s6,80(sp)
    80002bcc:	04813b83          	ld	s7,72(sp)
    80002bd0:	04013c03          	ld	s8,64(sp)
    80002bd4:	03813c83          	ld	s9,56(sp)
    80002bd8:	03013d03          	ld	s10,48(sp)
    80002bdc:	02813d83          	ld	s11,40(sp)
    80002be0:	0d010113          	addi	sp,sp,208
    80002be4:	00008067          	ret
    80002be8:	07300713          	li	a4,115
    80002bec:	1ce78a63          	beq	a5,a4,80002dc0 <__printf+0x4b8>
    80002bf0:	07800713          	li	a4,120
    80002bf4:	1ee79e63          	bne	a5,a4,80002df0 <__printf+0x4e8>
    80002bf8:	f7843783          	ld	a5,-136(s0)
    80002bfc:	0007a703          	lw	a4,0(a5)
    80002c00:	00878793          	addi	a5,a5,8
    80002c04:	f6f43c23          	sd	a5,-136(s0)
    80002c08:	28074263          	bltz	a4,80002e8c <__printf+0x584>
    80002c0c:	00001d97          	auipc	s11,0x1
    80002c10:	56cd8d93          	addi	s11,s11,1388 # 80004178 <digits>
    80002c14:	00f77793          	andi	a5,a4,15
    80002c18:	00fd87b3          	add	a5,s11,a5
    80002c1c:	0007c683          	lbu	a3,0(a5)
    80002c20:	00f00613          	li	a2,15
    80002c24:	0007079b          	sext.w	a5,a4
    80002c28:	f8d40023          	sb	a3,-128(s0)
    80002c2c:	0047559b          	srliw	a1,a4,0x4
    80002c30:	0047569b          	srliw	a3,a4,0x4
    80002c34:	00000c93          	li	s9,0
    80002c38:	0ee65063          	bge	a2,a4,80002d18 <__printf+0x410>
    80002c3c:	00f6f693          	andi	a3,a3,15
    80002c40:	00dd86b3          	add	a3,s11,a3
    80002c44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002c48:	0087d79b          	srliw	a5,a5,0x8
    80002c4c:	00100c93          	li	s9,1
    80002c50:	f8d400a3          	sb	a3,-127(s0)
    80002c54:	0cb67263          	bgeu	a2,a1,80002d18 <__printf+0x410>
    80002c58:	00f7f693          	andi	a3,a5,15
    80002c5c:	00dd86b3          	add	a3,s11,a3
    80002c60:	0006c583          	lbu	a1,0(a3)
    80002c64:	00f00613          	li	a2,15
    80002c68:	0047d69b          	srliw	a3,a5,0x4
    80002c6c:	f8b40123          	sb	a1,-126(s0)
    80002c70:	0047d593          	srli	a1,a5,0x4
    80002c74:	28f67e63          	bgeu	a2,a5,80002f10 <__printf+0x608>
    80002c78:	00f6f693          	andi	a3,a3,15
    80002c7c:	00dd86b3          	add	a3,s11,a3
    80002c80:	0006c503          	lbu	a0,0(a3)
    80002c84:	0087d813          	srli	a6,a5,0x8
    80002c88:	0087d69b          	srliw	a3,a5,0x8
    80002c8c:	f8a401a3          	sb	a0,-125(s0)
    80002c90:	28b67663          	bgeu	a2,a1,80002f1c <__printf+0x614>
    80002c94:	00f6f693          	andi	a3,a3,15
    80002c98:	00dd86b3          	add	a3,s11,a3
    80002c9c:	0006c583          	lbu	a1,0(a3)
    80002ca0:	00c7d513          	srli	a0,a5,0xc
    80002ca4:	00c7d69b          	srliw	a3,a5,0xc
    80002ca8:	f8b40223          	sb	a1,-124(s0)
    80002cac:	29067a63          	bgeu	a2,a6,80002f40 <__printf+0x638>
    80002cb0:	00f6f693          	andi	a3,a3,15
    80002cb4:	00dd86b3          	add	a3,s11,a3
    80002cb8:	0006c583          	lbu	a1,0(a3)
    80002cbc:	0107d813          	srli	a6,a5,0x10
    80002cc0:	0107d69b          	srliw	a3,a5,0x10
    80002cc4:	f8b402a3          	sb	a1,-123(s0)
    80002cc8:	28a67263          	bgeu	a2,a0,80002f4c <__printf+0x644>
    80002ccc:	00f6f693          	andi	a3,a3,15
    80002cd0:	00dd86b3          	add	a3,s11,a3
    80002cd4:	0006c683          	lbu	a3,0(a3)
    80002cd8:	0147d79b          	srliw	a5,a5,0x14
    80002cdc:	f8d40323          	sb	a3,-122(s0)
    80002ce0:	21067663          	bgeu	a2,a6,80002eec <__printf+0x5e4>
    80002ce4:	02079793          	slli	a5,a5,0x20
    80002ce8:	0207d793          	srli	a5,a5,0x20
    80002cec:	00fd8db3          	add	s11,s11,a5
    80002cf0:	000dc683          	lbu	a3,0(s11)
    80002cf4:	00800793          	li	a5,8
    80002cf8:	00700c93          	li	s9,7
    80002cfc:	f8d403a3          	sb	a3,-121(s0)
    80002d00:	00075c63          	bgez	a4,80002d18 <__printf+0x410>
    80002d04:	f9040713          	addi	a4,s0,-112
    80002d08:	00f70733          	add	a4,a4,a5
    80002d0c:	02d00693          	li	a3,45
    80002d10:	fed70823          	sb	a3,-16(a4)
    80002d14:	00078c93          	mv	s9,a5
    80002d18:	f8040793          	addi	a5,s0,-128
    80002d1c:	01978cb3          	add	s9,a5,s9
    80002d20:	f7f40d13          	addi	s10,s0,-129
    80002d24:	000cc503          	lbu	a0,0(s9)
    80002d28:	fffc8c93          	addi	s9,s9,-1
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	9f8080e7          	jalr	-1544(ra) # 80002724 <consputc>
    80002d34:	ff9d18e3          	bne	s10,s9,80002d24 <__printf+0x41c>
    80002d38:	0100006f          	j	80002d48 <__printf+0x440>
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	9e8080e7          	jalr	-1560(ra) # 80002724 <consputc>
    80002d44:	000c8493          	mv	s1,s9
    80002d48:	00094503          	lbu	a0,0(s2)
    80002d4c:	c60510e3          	bnez	a0,800029ac <__printf+0xa4>
    80002d50:	e40c0ee3          	beqz	s8,80002bac <__printf+0x2a4>
    80002d54:	00003517          	auipc	a0,0x3
    80002d58:	c7c50513          	addi	a0,a0,-900 # 800059d0 <pr>
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	94c080e7          	jalr	-1716(ra) # 800036a8 <release>
    80002d64:	e49ff06f          	j	80002bac <__printf+0x2a4>
    80002d68:	f7843783          	ld	a5,-136(s0)
    80002d6c:	03000513          	li	a0,48
    80002d70:	01000d13          	li	s10,16
    80002d74:	00878713          	addi	a4,a5,8
    80002d78:	0007bc83          	ld	s9,0(a5)
    80002d7c:	f6e43c23          	sd	a4,-136(s0)
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	9a4080e7          	jalr	-1628(ra) # 80002724 <consputc>
    80002d88:	07800513          	li	a0,120
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	998080e7          	jalr	-1640(ra) # 80002724 <consputc>
    80002d94:	00001d97          	auipc	s11,0x1
    80002d98:	3e4d8d93          	addi	s11,s11,996 # 80004178 <digits>
    80002d9c:	03ccd793          	srli	a5,s9,0x3c
    80002da0:	00fd87b3          	add	a5,s11,a5
    80002da4:	0007c503          	lbu	a0,0(a5)
    80002da8:	fffd0d1b          	addiw	s10,s10,-1
    80002dac:	004c9c93          	slli	s9,s9,0x4
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	974080e7          	jalr	-1676(ra) # 80002724 <consputc>
    80002db8:	fe0d12e3          	bnez	s10,80002d9c <__printf+0x494>
    80002dbc:	f8dff06f          	j	80002d48 <__printf+0x440>
    80002dc0:	f7843783          	ld	a5,-136(s0)
    80002dc4:	0007bc83          	ld	s9,0(a5)
    80002dc8:	00878793          	addi	a5,a5,8
    80002dcc:	f6f43c23          	sd	a5,-136(s0)
    80002dd0:	000c9a63          	bnez	s9,80002de4 <__printf+0x4dc>
    80002dd4:	1080006f          	j	80002edc <__printf+0x5d4>
    80002dd8:	001c8c93          	addi	s9,s9,1
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	948080e7          	jalr	-1720(ra) # 80002724 <consputc>
    80002de4:	000cc503          	lbu	a0,0(s9)
    80002de8:	fe0518e3          	bnez	a0,80002dd8 <__printf+0x4d0>
    80002dec:	f5dff06f          	j	80002d48 <__printf+0x440>
    80002df0:	02500513          	li	a0,37
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	930080e7          	jalr	-1744(ra) # 80002724 <consputc>
    80002dfc:	000c8513          	mv	a0,s9
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	924080e7          	jalr	-1756(ra) # 80002724 <consputc>
    80002e08:	f41ff06f          	j	80002d48 <__printf+0x440>
    80002e0c:	02500513          	li	a0,37
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	914080e7          	jalr	-1772(ra) # 80002724 <consputc>
    80002e18:	f31ff06f          	j	80002d48 <__printf+0x440>
    80002e1c:	00030513          	mv	a0,t1
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	7bc080e7          	jalr	1980(ra) # 800035dc <acquire>
    80002e28:	b4dff06f          	j	80002974 <__printf+0x6c>
    80002e2c:	40c0053b          	negw	a0,a2
    80002e30:	00a00713          	li	a4,10
    80002e34:	02e576bb          	remuw	a3,a0,a4
    80002e38:	00001d97          	auipc	s11,0x1
    80002e3c:	340d8d93          	addi	s11,s11,832 # 80004178 <digits>
    80002e40:	ff700593          	li	a1,-9
    80002e44:	02069693          	slli	a3,a3,0x20
    80002e48:	0206d693          	srli	a3,a3,0x20
    80002e4c:	00dd86b3          	add	a3,s11,a3
    80002e50:	0006c683          	lbu	a3,0(a3)
    80002e54:	02e557bb          	divuw	a5,a0,a4
    80002e58:	f8d40023          	sb	a3,-128(s0)
    80002e5c:	10b65e63          	bge	a2,a1,80002f78 <__printf+0x670>
    80002e60:	06300593          	li	a1,99
    80002e64:	02e7f6bb          	remuw	a3,a5,a4
    80002e68:	02069693          	slli	a3,a3,0x20
    80002e6c:	0206d693          	srli	a3,a3,0x20
    80002e70:	00dd86b3          	add	a3,s11,a3
    80002e74:	0006c683          	lbu	a3,0(a3)
    80002e78:	02e7d73b          	divuw	a4,a5,a4
    80002e7c:	00200793          	li	a5,2
    80002e80:	f8d400a3          	sb	a3,-127(s0)
    80002e84:	bca5ece3          	bltu	a1,a0,80002a5c <__printf+0x154>
    80002e88:	ce5ff06f          	j	80002b6c <__printf+0x264>
    80002e8c:	40e007bb          	negw	a5,a4
    80002e90:	00001d97          	auipc	s11,0x1
    80002e94:	2e8d8d93          	addi	s11,s11,744 # 80004178 <digits>
    80002e98:	00f7f693          	andi	a3,a5,15
    80002e9c:	00dd86b3          	add	a3,s11,a3
    80002ea0:	0006c583          	lbu	a1,0(a3)
    80002ea4:	ff100613          	li	a2,-15
    80002ea8:	0047d69b          	srliw	a3,a5,0x4
    80002eac:	f8b40023          	sb	a1,-128(s0)
    80002eb0:	0047d59b          	srliw	a1,a5,0x4
    80002eb4:	0ac75e63          	bge	a4,a2,80002f70 <__printf+0x668>
    80002eb8:	00f6f693          	andi	a3,a3,15
    80002ebc:	00dd86b3          	add	a3,s11,a3
    80002ec0:	0006c603          	lbu	a2,0(a3)
    80002ec4:	00f00693          	li	a3,15
    80002ec8:	0087d79b          	srliw	a5,a5,0x8
    80002ecc:	f8c400a3          	sb	a2,-127(s0)
    80002ed0:	d8b6e4e3          	bltu	a3,a1,80002c58 <__printf+0x350>
    80002ed4:	00200793          	li	a5,2
    80002ed8:	e2dff06f          	j	80002d04 <__printf+0x3fc>
    80002edc:	00001c97          	auipc	s9,0x1
    80002ee0:	27cc8c93          	addi	s9,s9,636 # 80004158 <CONSOLE_STATUS+0x148>
    80002ee4:	02800513          	li	a0,40
    80002ee8:	ef1ff06f          	j	80002dd8 <__printf+0x4d0>
    80002eec:	00700793          	li	a5,7
    80002ef0:	00600c93          	li	s9,6
    80002ef4:	e0dff06f          	j	80002d00 <__printf+0x3f8>
    80002ef8:	00700793          	li	a5,7
    80002efc:	00600c93          	li	s9,6
    80002f00:	c69ff06f          	j	80002b68 <__printf+0x260>
    80002f04:	00300793          	li	a5,3
    80002f08:	00200c93          	li	s9,2
    80002f0c:	c5dff06f          	j	80002b68 <__printf+0x260>
    80002f10:	00300793          	li	a5,3
    80002f14:	00200c93          	li	s9,2
    80002f18:	de9ff06f          	j	80002d00 <__printf+0x3f8>
    80002f1c:	00400793          	li	a5,4
    80002f20:	00300c93          	li	s9,3
    80002f24:	dddff06f          	j	80002d00 <__printf+0x3f8>
    80002f28:	00400793          	li	a5,4
    80002f2c:	00300c93          	li	s9,3
    80002f30:	c39ff06f          	j	80002b68 <__printf+0x260>
    80002f34:	00500793          	li	a5,5
    80002f38:	00400c93          	li	s9,4
    80002f3c:	c2dff06f          	j	80002b68 <__printf+0x260>
    80002f40:	00500793          	li	a5,5
    80002f44:	00400c93          	li	s9,4
    80002f48:	db9ff06f          	j	80002d00 <__printf+0x3f8>
    80002f4c:	00600793          	li	a5,6
    80002f50:	00500c93          	li	s9,5
    80002f54:	dadff06f          	j	80002d00 <__printf+0x3f8>
    80002f58:	00600793          	li	a5,6
    80002f5c:	00500c93          	li	s9,5
    80002f60:	c09ff06f          	j	80002b68 <__printf+0x260>
    80002f64:	00800793          	li	a5,8
    80002f68:	00700c93          	li	s9,7
    80002f6c:	bfdff06f          	j	80002b68 <__printf+0x260>
    80002f70:	00100793          	li	a5,1
    80002f74:	d91ff06f          	j	80002d04 <__printf+0x3fc>
    80002f78:	00100793          	li	a5,1
    80002f7c:	bf1ff06f          	j	80002b6c <__printf+0x264>
    80002f80:	00900793          	li	a5,9
    80002f84:	00800c93          	li	s9,8
    80002f88:	be1ff06f          	j	80002b68 <__printf+0x260>
    80002f8c:	00001517          	auipc	a0,0x1
    80002f90:	1d450513          	addi	a0,a0,468 # 80004160 <CONSOLE_STATUS+0x150>
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	918080e7          	jalr	-1768(ra) # 800028ac <panic>

0000000080002f9c <printfinit>:
    80002f9c:	fe010113          	addi	sp,sp,-32
    80002fa0:	00813823          	sd	s0,16(sp)
    80002fa4:	00913423          	sd	s1,8(sp)
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	02010413          	addi	s0,sp,32
    80002fb0:	00003497          	auipc	s1,0x3
    80002fb4:	a2048493          	addi	s1,s1,-1504 # 800059d0 <pr>
    80002fb8:	00048513          	mv	a0,s1
    80002fbc:	00001597          	auipc	a1,0x1
    80002fc0:	1b458593          	addi	a1,a1,436 # 80004170 <CONSOLE_STATUS+0x160>
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	5f4080e7          	jalr	1524(ra) # 800035b8 <initlock>
    80002fcc:	01813083          	ld	ra,24(sp)
    80002fd0:	01013403          	ld	s0,16(sp)
    80002fd4:	0004ac23          	sw	zero,24(s1)
    80002fd8:	00813483          	ld	s1,8(sp)
    80002fdc:	02010113          	addi	sp,sp,32
    80002fe0:	00008067          	ret

0000000080002fe4 <uartinit>:
    80002fe4:	ff010113          	addi	sp,sp,-16
    80002fe8:	00813423          	sd	s0,8(sp)
    80002fec:	01010413          	addi	s0,sp,16
    80002ff0:	100007b7          	lui	a5,0x10000
    80002ff4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002ff8:	f8000713          	li	a4,-128
    80002ffc:	00e781a3          	sb	a4,3(a5)
    80003000:	00300713          	li	a4,3
    80003004:	00e78023          	sb	a4,0(a5)
    80003008:	000780a3          	sb	zero,1(a5)
    8000300c:	00e781a3          	sb	a4,3(a5)
    80003010:	00700693          	li	a3,7
    80003014:	00d78123          	sb	a3,2(a5)
    80003018:	00e780a3          	sb	a4,1(a5)
    8000301c:	00813403          	ld	s0,8(sp)
    80003020:	01010113          	addi	sp,sp,16
    80003024:	00008067          	ret

0000000080003028 <uartputc>:
    80003028:	00001797          	auipc	a5,0x1
    8000302c:	7407a783          	lw	a5,1856(a5) # 80004768 <panicked>
    80003030:	00078463          	beqz	a5,80003038 <uartputc+0x10>
    80003034:	0000006f          	j	80003034 <uartputc+0xc>
    80003038:	fd010113          	addi	sp,sp,-48
    8000303c:	02813023          	sd	s0,32(sp)
    80003040:	00913c23          	sd	s1,24(sp)
    80003044:	01213823          	sd	s2,16(sp)
    80003048:	01313423          	sd	s3,8(sp)
    8000304c:	02113423          	sd	ra,40(sp)
    80003050:	03010413          	addi	s0,sp,48
    80003054:	00001917          	auipc	s2,0x1
    80003058:	71c90913          	addi	s2,s2,1820 # 80004770 <uart_tx_r>
    8000305c:	00093783          	ld	a5,0(s2)
    80003060:	00001497          	auipc	s1,0x1
    80003064:	71848493          	addi	s1,s1,1816 # 80004778 <uart_tx_w>
    80003068:	0004b703          	ld	a4,0(s1)
    8000306c:	02078693          	addi	a3,a5,32
    80003070:	00050993          	mv	s3,a0
    80003074:	02e69c63          	bne	a3,a4,800030ac <uartputc+0x84>
    80003078:	00001097          	auipc	ra,0x1
    8000307c:	834080e7          	jalr	-1996(ra) # 800038ac <push_on>
    80003080:	00093783          	ld	a5,0(s2)
    80003084:	0004b703          	ld	a4,0(s1)
    80003088:	02078793          	addi	a5,a5,32
    8000308c:	00e79463          	bne	a5,a4,80003094 <uartputc+0x6c>
    80003090:	0000006f          	j	80003090 <uartputc+0x68>
    80003094:	00001097          	auipc	ra,0x1
    80003098:	88c080e7          	jalr	-1908(ra) # 80003920 <pop_on>
    8000309c:	00093783          	ld	a5,0(s2)
    800030a0:	0004b703          	ld	a4,0(s1)
    800030a4:	02078693          	addi	a3,a5,32
    800030a8:	fce688e3          	beq	a3,a4,80003078 <uartputc+0x50>
    800030ac:	01f77693          	andi	a3,a4,31
    800030b0:	00003597          	auipc	a1,0x3
    800030b4:	94058593          	addi	a1,a1,-1728 # 800059f0 <uart_tx_buf>
    800030b8:	00d586b3          	add	a3,a1,a3
    800030bc:	00170713          	addi	a4,a4,1
    800030c0:	01368023          	sb	s3,0(a3)
    800030c4:	00e4b023          	sd	a4,0(s1)
    800030c8:	10000637          	lui	a2,0x10000
    800030cc:	02f71063          	bne	a4,a5,800030ec <uartputc+0xc4>
    800030d0:	0340006f          	j	80003104 <uartputc+0xdc>
    800030d4:	00074703          	lbu	a4,0(a4)
    800030d8:	00f93023          	sd	a5,0(s2)
    800030dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800030e0:	00093783          	ld	a5,0(s2)
    800030e4:	0004b703          	ld	a4,0(s1)
    800030e8:	00f70e63          	beq	a4,a5,80003104 <uartputc+0xdc>
    800030ec:	00564683          	lbu	a3,5(a2)
    800030f0:	01f7f713          	andi	a4,a5,31
    800030f4:	00e58733          	add	a4,a1,a4
    800030f8:	0206f693          	andi	a3,a3,32
    800030fc:	00178793          	addi	a5,a5,1
    80003100:	fc069ae3          	bnez	a3,800030d4 <uartputc+0xac>
    80003104:	02813083          	ld	ra,40(sp)
    80003108:	02013403          	ld	s0,32(sp)
    8000310c:	01813483          	ld	s1,24(sp)
    80003110:	01013903          	ld	s2,16(sp)
    80003114:	00813983          	ld	s3,8(sp)
    80003118:	03010113          	addi	sp,sp,48
    8000311c:	00008067          	ret

0000000080003120 <uartputc_sync>:
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00813423          	sd	s0,8(sp)
    80003128:	01010413          	addi	s0,sp,16
    8000312c:	00001717          	auipc	a4,0x1
    80003130:	63c72703          	lw	a4,1596(a4) # 80004768 <panicked>
    80003134:	02071663          	bnez	a4,80003160 <uartputc_sync+0x40>
    80003138:	00050793          	mv	a5,a0
    8000313c:	100006b7          	lui	a3,0x10000
    80003140:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003144:	02077713          	andi	a4,a4,32
    80003148:	fe070ce3          	beqz	a4,80003140 <uartputc_sync+0x20>
    8000314c:	0ff7f793          	andi	a5,a5,255
    80003150:	00f68023          	sb	a5,0(a3)
    80003154:	00813403          	ld	s0,8(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret
    80003160:	0000006f          	j	80003160 <uartputc_sync+0x40>

0000000080003164 <uartstart>:
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00813423          	sd	s0,8(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	00001617          	auipc	a2,0x1
    80003174:	60060613          	addi	a2,a2,1536 # 80004770 <uart_tx_r>
    80003178:	00001517          	auipc	a0,0x1
    8000317c:	60050513          	addi	a0,a0,1536 # 80004778 <uart_tx_w>
    80003180:	00063783          	ld	a5,0(a2)
    80003184:	00053703          	ld	a4,0(a0)
    80003188:	04f70263          	beq	a4,a5,800031cc <uartstart+0x68>
    8000318c:	100005b7          	lui	a1,0x10000
    80003190:	00003817          	auipc	a6,0x3
    80003194:	86080813          	addi	a6,a6,-1952 # 800059f0 <uart_tx_buf>
    80003198:	01c0006f          	j	800031b4 <uartstart+0x50>
    8000319c:	0006c703          	lbu	a4,0(a3)
    800031a0:	00f63023          	sd	a5,0(a2)
    800031a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031a8:	00063783          	ld	a5,0(a2)
    800031ac:	00053703          	ld	a4,0(a0)
    800031b0:	00f70e63          	beq	a4,a5,800031cc <uartstart+0x68>
    800031b4:	01f7f713          	andi	a4,a5,31
    800031b8:	00e806b3          	add	a3,a6,a4
    800031bc:	0055c703          	lbu	a4,5(a1)
    800031c0:	00178793          	addi	a5,a5,1
    800031c4:	02077713          	andi	a4,a4,32
    800031c8:	fc071ae3          	bnez	a4,8000319c <uartstart+0x38>
    800031cc:	00813403          	ld	s0,8(sp)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret

00000000800031d8 <uartgetc>:
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00813423          	sd	s0,8(sp)
    800031e0:	01010413          	addi	s0,sp,16
    800031e4:	10000737          	lui	a4,0x10000
    800031e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800031ec:	0017f793          	andi	a5,a5,1
    800031f0:	00078c63          	beqz	a5,80003208 <uartgetc+0x30>
    800031f4:	00074503          	lbu	a0,0(a4)
    800031f8:	0ff57513          	andi	a0,a0,255
    800031fc:	00813403          	ld	s0,8(sp)
    80003200:	01010113          	addi	sp,sp,16
    80003204:	00008067          	ret
    80003208:	fff00513          	li	a0,-1
    8000320c:	ff1ff06f          	j	800031fc <uartgetc+0x24>

0000000080003210 <uartintr>:
    80003210:	100007b7          	lui	a5,0x10000
    80003214:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003218:	0017f793          	andi	a5,a5,1
    8000321c:	0a078463          	beqz	a5,800032c4 <uartintr+0xb4>
    80003220:	fe010113          	addi	sp,sp,-32
    80003224:	00813823          	sd	s0,16(sp)
    80003228:	00913423          	sd	s1,8(sp)
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	02010413          	addi	s0,sp,32
    80003234:	100004b7          	lui	s1,0x10000
    80003238:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000323c:	0ff57513          	andi	a0,a0,255
    80003240:	fffff097          	auipc	ra,0xfffff
    80003244:	534080e7          	jalr	1332(ra) # 80002774 <consoleintr>
    80003248:	0054c783          	lbu	a5,5(s1)
    8000324c:	0017f793          	andi	a5,a5,1
    80003250:	fe0794e3          	bnez	a5,80003238 <uartintr+0x28>
    80003254:	00001617          	auipc	a2,0x1
    80003258:	51c60613          	addi	a2,a2,1308 # 80004770 <uart_tx_r>
    8000325c:	00001517          	auipc	a0,0x1
    80003260:	51c50513          	addi	a0,a0,1308 # 80004778 <uart_tx_w>
    80003264:	00063783          	ld	a5,0(a2)
    80003268:	00053703          	ld	a4,0(a0)
    8000326c:	04f70263          	beq	a4,a5,800032b0 <uartintr+0xa0>
    80003270:	100005b7          	lui	a1,0x10000
    80003274:	00002817          	auipc	a6,0x2
    80003278:	77c80813          	addi	a6,a6,1916 # 800059f0 <uart_tx_buf>
    8000327c:	01c0006f          	j	80003298 <uartintr+0x88>
    80003280:	0006c703          	lbu	a4,0(a3)
    80003284:	00f63023          	sd	a5,0(a2)
    80003288:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000328c:	00063783          	ld	a5,0(a2)
    80003290:	00053703          	ld	a4,0(a0)
    80003294:	00f70e63          	beq	a4,a5,800032b0 <uartintr+0xa0>
    80003298:	01f7f713          	andi	a4,a5,31
    8000329c:	00e806b3          	add	a3,a6,a4
    800032a0:	0055c703          	lbu	a4,5(a1)
    800032a4:	00178793          	addi	a5,a5,1
    800032a8:	02077713          	andi	a4,a4,32
    800032ac:	fc071ae3          	bnez	a4,80003280 <uartintr+0x70>
    800032b0:	01813083          	ld	ra,24(sp)
    800032b4:	01013403          	ld	s0,16(sp)
    800032b8:	00813483          	ld	s1,8(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret
    800032c4:	00001617          	auipc	a2,0x1
    800032c8:	4ac60613          	addi	a2,a2,1196 # 80004770 <uart_tx_r>
    800032cc:	00001517          	auipc	a0,0x1
    800032d0:	4ac50513          	addi	a0,a0,1196 # 80004778 <uart_tx_w>
    800032d4:	00063783          	ld	a5,0(a2)
    800032d8:	00053703          	ld	a4,0(a0)
    800032dc:	04f70263          	beq	a4,a5,80003320 <uartintr+0x110>
    800032e0:	100005b7          	lui	a1,0x10000
    800032e4:	00002817          	auipc	a6,0x2
    800032e8:	70c80813          	addi	a6,a6,1804 # 800059f0 <uart_tx_buf>
    800032ec:	01c0006f          	j	80003308 <uartintr+0xf8>
    800032f0:	0006c703          	lbu	a4,0(a3)
    800032f4:	00f63023          	sd	a5,0(a2)
    800032f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032fc:	00063783          	ld	a5,0(a2)
    80003300:	00053703          	ld	a4,0(a0)
    80003304:	02f70063          	beq	a4,a5,80003324 <uartintr+0x114>
    80003308:	01f7f713          	andi	a4,a5,31
    8000330c:	00e806b3          	add	a3,a6,a4
    80003310:	0055c703          	lbu	a4,5(a1)
    80003314:	00178793          	addi	a5,a5,1
    80003318:	02077713          	andi	a4,a4,32
    8000331c:	fc071ae3          	bnez	a4,800032f0 <uartintr+0xe0>
    80003320:	00008067          	ret
    80003324:	00008067          	ret

0000000080003328 <kinit>:
    80003328:	fc010113          	addi	sp,sp,-64
    8000332c:	02913423          	sd	s1,40(sp)
    80003330:	fffff7b7          	lui	a5,0xfffff
    80003334:	00003497          	auipc	s1,0x3
    80003338:	6db48493          	addi	s1,s1,1755 # 80006a0f <end+0xfff>
    8000333c:	02813823          	sd	s0,48(sp)
    80003340:	01313c23          	sd	s3,24(sp)
    80003344:	00f4f4b3          	and	s1,s1,a5
    80003348:	02113c23          	sd	ra,56(sp)
    8000334c:	03213023          	sd	s2,32(sp)
    80003350:	01413823          	sd	s4,16(sp)
    80003354:	01513423          	sd	s5,8(sp)
    80003358:	04010413          	addi	s0,sp,64
    8000335c:	000017b7          	lui	a5,0x1
    80003360:	01100993          	li	s3,17
    80003364:	00f487b3          	add	a5,s1,a5
    80003368:	01b99993          	slli	s3,s3,0x1b
    8000336c:	06f9e063          	bltu	s3,a5,800033cc <kinit+0xa4>
    80003370:	00002a97          	auipc	s5,0x2
    80003374:	6a0a8a93          	addi	s5,s5,1696 # 80005a10 <end>
    80003378:	0754ec63          	bltu	s1,s5,800033f0 <kinit+0xc8>
    8000337c:	0734fa63          	bgeu	s1,s3,800033f0 <kinit+0xc8>
    80003380:	00088a37          	lui	s4,0x88
    80003384:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003388:	00001917          	auipc	s2,0x1
    8000338c:	3f890913          	addi	s2,s2,1016 # 80004780 <kmem>
    80003390:	00ca1a13          	slli	s4,s4,0xc
    80003394:	0140006f          	j	800033a8 <kinit+0x80>
    80003398:	000017b7          	lui	a5,0x1
    8000339c:	00f484b3          	add	s1,s1,a5
    800033a0:	0554e863          	bltu	s1,s5,800033f0 <kinit+0xc8>
    800033a4:	0534f663          	bgeu	s1,s3,800033f0 <kinit+0xc8>
    800033a8:	00001637          	lui	a2,0x1
    800033ac:	00100593          	li	a1,1
    800033b0:	00048513          	mv	a0,s1
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	5e4080e7          	jalr	1508(ra) # 80003998 <__memset>
    800033bc:	00093783          	ld	a5,0(s2)
    800033c0:	00f4b023          	sd	a5,0(s1)
    800033c4:	00993023          	sd	s1,0(s2)
    800033c8:	fd4498e3          	bne	s1,s4,80003398 <kinit+0x70>
    800033cc:	03813083          	ld	ra,56(sp)
    800033d0:	03013403          	ld	s0,48(sp)
    800033d4:	02813483          	ld	s1,40(sp)
    800033d8:	02013903          	ld	s2,32(sp)
    800033dc:	01813983          	ld	s3,24(sp)
    800033e0:	01013a03          	ld	s4,16(sp)
    800033e4:	00813a83          	ld	s5,8(sp)
    800033e8:	04010113          	addi	sp,sp,64
    800033ec:	00008067          	ret
    800033f0:	00001517          	auipc	a0,0x1
    800033f4:	da050513          	addi	a0,a0,-608 # 80004190 <digits+0x18>
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	4b4080e7          	jalr	1204(ra) # 800028ac <panic>

0000000080003400 <freerange>:
    80003400:	fc010113          	addi	sp,sp,-64
    80003404:	000017b7          	lui	a5,0x1
    80003408:	02913423          	sd	s1,40(sp)
    8000340c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003410:	009504b3          	add	s1,a0,s1
    80003414:	fffff537          	lui	a0,0xfffff
    80003418:	02813823          	sd	s0,48(sp)
    8000341c:	02113c23          	sd	ra,56(sp)
    80003420:	03213023          	sd	s2,32(sp)
    80003424:	01313c23          	sd	s3,24(sp)
    80003428:	01413823          	sd	s4,16(sp)
    8000342c:	01513423          	sd	s5,8(sp)
    80003430:	01613023          	sd	s6,0(sp)
    80003434:	04010413          	addi	s0,sp,64
    80003438:	00a4f4b3          	and	s1,s1,a0
    8000343c:	00f487b3          	add	a5,s1,a5
    80003440:	06f5e463          	bltu	a1,a5,800034a8 <freerange+0xa8>
    80003444:	00002a97          	auipc	s5,0x2
    80003448:	5cca8a93          	addi	s5,s5,1484 # 80005a10 <end>
    8000344c:	0954e263          	bltu	s1,s5,800034d0 <freerange+0xd0>
    80003450:	01100993          	li	s3,17
    80003454:	01b99993          	slli	s3,s3,0x1b
    80003458:	0734fc63          	bgeu	s1,s3,800034d0 <freerange+0xd0>
    8000345c:	00058a13          	mv	s4,a1
    80003460:	00001917          	auipc	s2,0x1
    80003464:	32090913          	addi	s2,s2,800 # 80004780 <kmem>
    80003468:	00002b37          	lui	s6,0x2
    8000346c:	0140006f          	j	80003480 <freerange+0x80>
    80003470:	000017b7          	lui	a5,0x1
    80003474:	00f484b3          	add	s1,s1,a5
    80003478:	0554ec63          	bltu	s1,s5,800034d0 <freerange+0xd0>
    8000347c:	0534fa63          	bgeu	s1,s3,800034d0 <freerange+0xd0>
    80003480:	00001637          	lui	a2,0x1
    80003484:	00100593          	li	a1,1
    80003488:	00048513          	mv	a0,s1
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	50c080e7          	jalr	1292(ra) # 80003998 <__memset>
    80003494:	00093703          	ld	a4,0(s2)
    80003498:	016487b3          	add	a5,s1,s6
    8000349c:	00e4b023          	sd	a4,0(s1)
    800034a0:	00993023          	sd	s1,0(s2)
    800034a4:	fcfa76e3          	bgeu	s4,a5,80003470 <freerange+0x70>
    800034a8:	03813083          	ld	ra,56(sp)
    800034ac:	03013403          	ld	s0,48(sp)
    800034b0:	02813483          	ld	s1,40(sp)
    800034b4:	02013903          	ld	s2,32(sp)
    800034b8:	01813983          	ld	s3,24(sp)
    800034bc:	01013a03          	ld	s4,16(sp)
    800034c0:	00813a83          	ld	s5,8(sp)
    800034c4:	00013b03          	ld	s6,0(sp)
    800034c8:	04010113          	addi	sp,sp,64
    800034cc:	00008067          	ret
    800034d0:	00001517          	auipc	a0,0x1
    800034d4:	cc050513          	addi	a0,a0,-832 # 80004190 <digits+0x18>
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	3d4080e7          	jalr	980(ra) # 800028ac <panic>

00000000800034e0 <kfree>:
    800034e0:	fe010113          	addi	sp,sp,-32
    800034e4:	00813823          	sd	s0,16(sp)
    800034e8:	00113c23          	sd	ra,24(sp)
    800034ec:	00913423          	sd	s1,8(sp)
    800034f0:	02010413          	addi	s0,sp,32
    800034f4:	03451793          	slli	a5,a0,0x34
    800034f8:	04079c63          	bnez	a5,80003550 <kfree+0x70>
    800034fc:	00002797          	auipc	a5,0x2
    80003500:	51478793          	addi	a5,a5,1300 # 80005a10 <end>
    80003504:	00050493          	mv	s1,a0
    80003508:	04f56463          	bltu	a0,a5,80003550 <kfree+0x70>
    8000350c:	01100793          	li	a5,17
    80003510:	01b79793          	slli	a5,a5,0x1b
    80003514:	02f57e63          	bgeu	a0,a5,80003550 <kfree+0x70>
    80003518:	00001637          	lui	a2,0x1
    8000351c:	00100593          	li	a1,1
    80003520:	00000097          	auipc	ra,0x0
    80003524:	478080e7          	jalr	1144(ra) # 80003998 <__memset>
    80003528:	00001797          	auipc	a5,0x1
    8000352c:	25878793          	addi	a5,a5,600 # 80004780 <kmem>
    80003530:	0007b703          	ld	a4,0(a5)
    80003534:	01813083          	ld	ra,24(sp)
    80003538:	01013403          	ld	s0,16(sp)
    8000353c:	00e4b023          	sd	a4,0(s1)
    80003540:	0097b023          	sd	s1,0(a5)
    80003544:	00813483          	ld	s1,8(sp)
    80003548:	02010113          	addi	sp,sp,32
    8000354c:	00008067          	ret
    80003550:	00001517          	auipc	a0,0x1
    80003554:	c4050513          	addi	a0,a0,-960 # 80004190 <digits+0x18>
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	354080e7          	jalr	852(ra) # 800028ac <panic>

0000000080003560 <kalloc>:
    80003560:	fe010113          	addi	sp,sp,-32
    80003564:	00813823          	sd	s0,16(sp)
    80003568:	00913423          	sd	s1,8(sp)
    8000356c:	00113c23          	sd	ra,24(sp)
    80003570:	02010413          	addi	s0,sp,32
    80003574:	00001797          	auipc	a5,0x1
    80003578:	20c78793          	addi	a5,a5,524 # 80004780 <kmem>
    8000357c:	0007b483          	ld	s1,0(a5)
    80003580:	02048063          	beqz	s1,800035a0 <kalloc+0x40>
    80003584:	0004b703          	ld	a4,0(s1)
    80003588:	00001637          	lui	a2,0x1
    8000358c:	00500593          	li	a1,5
    80003590:	00048513          	mv	a0,s1
    80003594:	00e7b023          	sd	a4,0(a5)
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	400080e7          	jalr	1024(ra) # 80003998 <__memset>
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	00048513          	mv	a0,s1
    800035ac:	00813483          	ld	s1,8(sp)
    800035b0:	02010113          	addi	sp,sp,32
    800035b4:	00008067          	ret

00000000800035b8 <initlock>:
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00813423          	sd	s0,8(sp)
    800035c0:	01010413          	addi	s0,sp,16
    800035c4:	00813403          	ld	s0,8(sp)
    800035c8:	00b53423          	sd	a1,8(a0)
    800035cc:	00052023          	sw	zero,0(a0)
    800035d0:	00053823          	sd	zero,16(a0)
    800035d4:	01010113          	addi	sp,sp,16
    800035d8:	00008067          	ret

00000000800035dc <acquire>:
    800035dc:	fe010113          	addi	sp,sp,-32
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00913423          	sd	s1,8(sp)
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	01213023          	sd	s2,0(sp)
    800035f0:	02010413          	addi	s0,sp,32
    800035f4:	00050493          	mv	s1,a0
    800035f8:	10002973          	csrr	s2,sstatus
    800035fc:	100027f3          	csrr	a5,sstatus
    80003600:	ffd7f793          	andi	a5,a5,-3
    80003604:	10079073          	csrw	sstatus,a5
    80003608:	fffff097          	auipc	ra,0xfffff
    8000360c:	8e4080e7          	jalr	-1820(ra) # 80001eec <mycpu>
    80003610:	07852783          	lw	a5,120(a0)
    80003614:	06078e63          	beqz	a5,80003690 <acquire+0xb4>
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	8d4080e7          	jalr	-1836(ra) # 80001eec <mycpu>
    80003620:	07852783          	lw	a5,120(a0)
    80003624:	0004a703          	lw	a4,0(s1)
    80003628:	0017879b          	addiw	a5,a5,1
    8000362c:	06f52c23          	sw	a5,120(a0)
    80003630:	04071063          	bnez	a4,80003670 <acquire+0x94>
    80003634:	00100713          	li	a4,1
    80003638:	00070793          	mv	a5,a4
    8000363c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003640:	0007879b          	sext.w	a5,a5
    80003644:	fe079ae3          	bnez	a5,80003638 <acquire+0x5c>
    80003648:	0ff0000f          	fence
    8000364c:	fffff097          	auipc	ra,0xfffff
    80003650:	8a0080e7          	jalr	-1888(ra) # 80001eec <mycpu>
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00a4b823          	sd	a0,16(s1)
    80003660:	00013903          	ld	s2,0(sp)
    80003664:	00813483          	ld	s1,8(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00008067          	ret
    80003670:	0104b903          	ld	s2,16(s1)
    80003674:	fffff097          	auipc	ra,0xfffff
    80003678:	878080e7          	jalr	-1928(ra) # 80001eec <mycpu>
    8000367c:	faa91ce3          	bne	s2,a0,80003634 <acquire+0x58>
    80003680:	00001517          	auipc	a0,0x1
    80003684:	b1850513          	addi	a0,a0,-1256 # 80004198 <digits+0x20>
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	224080e7          	jalr	548(ra) # 800028ac <panic>
    80003690:	00195913          	srli	s2,s2,0x1
    80003694:	fffff097          	auipc	ra,0xfffff
    80003698:	858080e7          	jalr	-1960(ra) # 80001eec <mycpu>
    8000369c:	00197913          	andi	s2,s2,1
    800036a0:	07252e23          	sw	s2,124(a0)
    800036a4:	f75ff06f          	j	80003618 <acquire+0x3c>

00000000800036a8 <release>:
    800036a8:	fe010113          	addi	sp,sp,-32
    800036ac:	00813823          	sd	s0,16(sp)
    800036b0:	00113c23          	sd	ra,24(sp)
    800036b4:	00913423          	sd	s1,8(sp)
    800036b8:	01213023          	sd	s2,0(sp)
    800036bc:	02010413          	addi	s0,sp,32
    800036c0:	00052783          	lw	a5,0(a0)
    800036c4:	00079a63          	bnez	a5,800036d8 <release+0x30>
    800036c8:	00001517          	auipc	a0,0x1
    800036cc:	ad850513          	addi	a0,a0,-1320 # 800041a0 <digits+0x28>
    800036d0:	fffff097          	auipc	ra,0xfffff
    800036d4:	1dc080e7          	jalr	476(ra) # 800028ac <panic>
    800036d8:	01053903          	ld	s2,16(a0)
    800036dc:	00050493          	mv	s1,a0
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	80c080e7          	jalr	-2036(ra) # 80001eec <mycpu>
    800036e8:	fea910e3          	bne	s2,a0,800036c8 <release+0x20>
    800036ec:	0004b823          	sd	zero,16(s1)
    800036f0:	0ff0000f          	fence
    800036f4:	0f50000f          	fence	iorw,ow
    800036f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	7f0080e7          	jalr	2032(ra) # 80001eec <mycpu>
    80003704:	100027f3          	csrr	a5,sstatus
    80003708:	0027f793          	andi	a5,a5,2
    8000370c:	04079a63          	bnez	a5,80003760 <release+0xb8>
    80003710:	07852783          	lw	a5,120(a0)
    80003714:	02f05e63          	blez	a5,80003750 <release+0xa8>
    80003718:	fff7871b          	addiw	a4,a5,-1
    8000371c:	06e52c23          	sw	a4,120(a0)
    80003720:	00071c63          	bnez	a4,80003738 <release+0x90>
    80003724:	07c52783          	lw	a5,124(a0)
    80003728:	00078863          	beqz	a5,80003738 <release+0x90>
    8000372c:	100027f3          	csrr	a5,sstatus
    80003730:	0027e793          	ori	a5,a5,2
    80003734:	10079073          	csrw	sstatus,a5
    80003738:	01813083          	ld	ra,24(sp)
    8000373c:	01013403          	ld	s0,16(sp)
    80003740:	00813483          	ld	s1,8(sp)
    80003744:	00013903          	ld	s2,0(sp)
    80003748:	02010113          	addi	sp,sp,32
    8000374c:	00008067          	ret
    80003750:	00001517          	auipc	a0,0x1
    80003754:	a7050513          	addi	a0,a0,-1424 # 800041c0 <digits+0x48>
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	154080e7          	jalr	340(ra) # 800028ac <panic>
    80003760:	00001517          	auipc	a0,0x1
    80003764:	a4850513          	addi	a0,a0,-1464 # 800041a8 <digits+0x30>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	144080e7          	jalr	324(ra) # 800028ac <panic>

0000000080003770 <holding>:
    80003770:	00052783          	lw	a5,0(a0)
    80003774:	00079663          	bnez	a5,80003780 <holding+0x10>
    80003778:	00000513          	li	a0,0
    8000377c:	00008067          	ret
    80003780:	fe010113          	addi	sp,sp,-32
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	00113c23          	sd	ra,24(sp)
    80003790:	02010413          	addi	s0,sp,32
    80003794:	01053483          	ld	s1,16(a0)
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	754080e7          	jalr	1876(ra) # 80001eec <mycpu>
    800037a0:	01813083          	ld	ra,24(sp)
    800037a4:	01013403          	ld	s0,16(sp)
    800037a8:	40a48533          	sub	a0,s1,a0
    800037ac:	00153513          	seqz	a0,a0
    800037b0:	00813483          	ld	s1,8(sp)
    800037b4:	02010113          	addi	sp,sp,32
    800037b8:	00008067          	ret

00000000800037bc <push_off>:
    800037bc:	fe010113          	addi	sp,sp,-32
    800037c0:	00813823          	sd	s0,16(sp)
    800037c4:	00113c23          	sd	ra,24(sp)
    800037c8:	00913423          	sd	s1,8(sp)
    800037cc:	02010413          	addi	s0,sp,32
    800037d0:	100024f3          	csrr	s1,sstatus
    800037d4:	100027f3          	csrr	a5,sstatus
    800037d8:	ffd7f793          	andi	a5,a5,-3
    800037dc:	10079073          	csrw	sstatus,a5
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	70c080e7          	jalr	1804(ra) # 80001eec <mycpu>
    800037e8:	07852783          	lw	a5,120(a0)
    800037ec:	02078663          	beqz	a5,80003818 <push_off+0x5c>
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	6fc080e7          	jalr	1788(ra) # 80001eec <mycpu>
    800037f8:	07852783          	lw	a5,120(a0)
    800037fc:	01813083          	ld	ra,24(sp)
    80003800:	01013403          	ld	s0,16(sp)
    80003804:	0017879b          	addiw	a5,a5,1
    80003808:	06f52c23          	sw	a5,120(a0)
    8000380c:	00813483          	ld	s1,8(sp)
    80003810:	02010113          	addi	sp,sp,32
    80003814:	00008067          	ret
    80003818:	0014d493          	srli	s1,s1,0x1
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	6d0080e7          	jalr	1744(ra) # 80001eec <mycpu>
    80003824:	0014f493          	andi	s1,s1,1
    80003828:	06952e23          	sw	s1,124(a0)
    8000382c:	fc5ff06f          	j	800037f0 <push_off+0x34>

0000000080003830 <pop_off>:
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00813023          	sd	s0,0(sp)
    80003838:	00113423          	sd	ra,8(sp)
    8000383c:	01010413          	addi	s0,sp,16
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	6ac080e7          	jalr	1708(ra) # 80001eec <mycpu>
    80003848:	100027f3          	csrr	a5,sstatus
    8000384c:	0027f793          	andi	a5,a5,2
    80003850:	04079663          	bnez	a5,8000389c <pop_off+0x6c>
    80003854:	07852783          	lw	a5,120(a0)
    80003858:	02f05a63          	blez	a5,8000388c <pop_off+0x5c>
    8000385c:	fff7871b          	addiw	a4,a5,-1
    80003860:	06e52c23          	sw	a4,120(a0)
    80003864:	00071c63          	bnez	a4,8000387c <pop_off+0x4c>
    80003868:	07c52783          	lw	a5,124(a0)
    8000386c:	00078863          	beqz	a5,8000387c <pop_off+0x4c>
    80003870:	100027f3          	csrr	a5,sstatus
    80003874:	0027e793          	ori	a5,a5,2
    80003878:	10079073          	csrw	sstatus,a5
    8000387c:	00813083          	ld	ra,8(sp)
    80003880:	00013403          	ld	s0,0(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret
    8000388c:	00001517          	auipc	a0,0x1
    80003890:	93450513          	addi	a0,a0,-1740 # 800041c0 <digits+0x48>
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	018080e7          	jalr	24(ra) # 800028ac <panic>
    8000389c:	00001517          	auipc	a0,0x1
    800038a0:	90c50513          	addi	a0,a0,-1780 # 800041a8 <digits+0x30>
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	008080e7          	jalr	8(ra) # 800028ac <panic>

00000000800038ac <push_on>:
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00813823          	sd	s0,16(sp)
    800038b4:	00113c23          	sd	ra,24(sp)
    800038b8:	00913423          	sd	s1,8(sp)
    800038bc:	02010413          	addi	s0,sp,32
    800038c0:	100024f3          	csrr	s1,sstatus
    800038c4:	100027f3          	csrr	a5,sstatus
    800038c8:	0027e793          	ori	a5,a5,2
    800038cc:	10079073          	csrw	sstatus,a5
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	61c080e7          	jalr	1564(ra) # 80001eec <mycpu>
    800038d8:	07852783          	lw	a5,120(a0)
    800038dc:	02078663          	beqz	a5,80003908 <push_on+0x5c>
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	60c080e7          	jalr	1548(ra) # 80001eec <mycpu>
    800038e8:	07852783          	lw	a5,120(a0)
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	0017879b          	addiw	a5,a5,1
    800038f8:	06f52c23          	sw	a5,120(a0)
    800038fc:	00813483          	ld	s1,8(sp)
    80003900:	02010113          	addi	sp,sp,32
    80003904:	00008067          	ret
    80003908:	0014d493          	srli	s1,s1,0x1
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	5e0080e7          	jalr	1504(ra) # 80001eec <mycpu>
    80003914:	0014f493          	andi	s1,s1,1
    80003918:	06952e23          	sw	s1,124(a0)
    8000391c:	fc5ff06f          	j	800038e0 <push_on+0x34>

0000000080003920 <pop_on>:
    80003920:	ff010113          	addi	sp,sp,-16
    80003924:	00813023          	sd	s0,0(sp)
    80003928:	00113423          	sd	ra,8(sp)
    8000392c:	01010413          	addi	s0,sp,16
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	5bc080e7          	jalr	1468(ra) # 80001eec <mycpu>
    80003938:	100027f3          	csrr	a5,sstatus
    8000393c:	0027f793          	andi	a5,a5,2
    80003940:	04078463          	beqz	a5,80003988 <pop_on+0x68>
    80003944:	07852783          	lw	a5,120(a0)
    80003948:	02f05863          	blez	a5,80003978 <pop_on+0x58>
    8000394c:	fff7879b          	addiw	a5,a5,-1
    80003950:	06f52c23          	sw	a5,120(a0)
    80003954:	07853783          	ld	a5,120(a0)
    80003958:	00079863          	bnez	a5,80003968 <pop_on+0x48>
    8000395c:	100027f3          	csrr	a5,sstatus
    80003960:	ffd7f793          	andi	a5,a5,-3
    80003964:	10079073          	csrw	sstatus,a5
    80003968:	00813083          	ld	ra,8(sp)
    8000396c:	00013403          	ld	s0,0(sp)
    80003970:	01010113          	addi	sp,sp,16
    80003974:	00008067          	ret
    80003978:	00001517          	auipc	a0,0x1
    8000397c:	87050513          	addi	a0,a0,-1936 # 800041e8 <digits+0x70>
    80003980:	fffff097          	auipc	ra,0xfffff
    80003984:	f2c080e7          	jalr	-212(ra) # 800028ac <panic>
    80003988:	00001517          	auipc	a0,0x1
    8000398c:	84050513          	addi	a0,a0,-1984 # 800041c8 <digits+0x50>
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	f1c080e7          	jalr	-228(ra) # 800028ac <panic>

0000000080003998 <__memset>:
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	1a060e63          	beqz	a2,80003b60 <__memset+0x1c8>
    800039a8:	40a007b3          	neg	a5,a0
    800039ac:	0077f793          	andi	a5,a5,7
    800039b0:	00778693          	addi	a3,a5,7
    800039b4:	00b00813          	li	a6,11
    800039b8:	0ff5f593          	andi	a1,a1,255
    800039bc:	fff6071b          	addiw	a4,a2,-1
    800039c0:	1b06e663          	bltu	a3,a6,80003b6c <__memset+0x1d4>
    800039c4:	1cd76463          	bltu	a4,a3,80003b8c <__memset+0x1f4>
    800039c8:	1a078e63          	beqz	a5,80003b84 <__memset+0x1ec>
    800039cc:	00b50023          	sb	a1,0(a0)
    800039d0:	00100713          	li	a4,1
    800039d4:	1ae78463          	beq	a5,a4,80003b7c <__memset+0x1e4>
    800039d8:	00b500a3          	sb	a1,1(a0)
    800039dc:	00200713          	li	a4,2
    800039e0:	1ae78a63          	beq	a5,a4,80003b94 <__memset+0x1fc>
    800039e4:	00b50123          	sb	a1,2(a0)
    800039e8:	00300713          	li	a4,3
    800039ec:	18e78463          	beq	a5,a4,80003b74 <__memset+0x1dc>
    800039f0:	00b501a3          	sb	a1,3(a0)
    800039f4:	00400713          	li	a4,4
    800039f8:	1ae78263          	beq	a5,a4,80003b9c <__memset+0x204>
    800039fc:	00b50223          	sb	a1,4(a0)
    80003a00:	00500713          	li	a4,5
    80003a04:	1ae78063          	beq	a5,a4,80003ba4 <__memset+0x20c>
    80003a08:	00b502a3          	sb	a1,5(a0)
    80003a0c:	00700713          	li	a4,7
    80003a10:	18e79e63          	bne	a5,a4,80003bac <__memset+0x214>
    80003a14:	00b50323          	sb	a1,6(a0)
    80003a18:	00700e93          	li	t4,7
    80003a1c:	00859713          	slli	a4,a1,0x8
    80003a20:	00e5e733          	or	a4,a1,a4
    80003a24:	01059e13          	slli	t3,a1,0x10
    80003a28:	01c76e33          	or	t3,a4,t3
    80003a2c:	01859313          	slli	t1,a1,0x18
    80003a30:	006e6333          	or	t1,t3,t1
    80003a34:	02059893          	slli	a7,a1,0x20
    80003a38:	40f60e3b          	subw	t3,a2,a5
    80003a3c:	011368b3          	or	a7,t1,a7
    80003a40:	02859813          	slli	a6,a1,0x28
    80003a44:	0108e833          	or	a6,a7,a6
    80003a48:	03059693          	slli	a3,a1,0x30
    80003a4c:	003e589b          	srliw	a7,t3,0x3
    80003a50:	00d866b3          	or	a3,a6,a3
    80003a54:	03859713          	slli	a4,a1,0x38
    80003a58:	00389813          	slli	a6,a7,0x3
    80003a5c:	00f507b3          	add	a5,a0,a5
    80003a60:	00e6e733          	or	a4,a3,a4
    80003a64:	000e089b          	sext.w	a7,t3
    80003a68:	00f806b3          	add	a3,a6,a5
    80003a6c:	00e7b023          	sd	a4,0(a5)
    80003a70:	00878793          	addi	a5,a5,8
    80003a74:	fed79ce3          	bne	a5,a3,80003a6c <__memset+0xd4>
    80003a78:	ff8e7793          	andi	a5,t3,-8
    80003a7c:	0007871b          	sext.w	a4,a5
    80003a80:	01d787bb          	addw	a5,a5,t4
    80003a84:	0ce88e63          	beq	a7,a4,80003b60 <__memset+0x1c8>
    80003a88:	00f50733          	add	a4,a0,a5
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	0017871b          	addiw	a4,a5,1
    80003a94:	0cc77663          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	0027871b          	addiw	a4,a5,2
    80003aa4:	0ac77e63          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003aa8:	00e50733          	add	a4,a0,a4
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	0037871b          	addiw	a4,a5,3
    80003ab4:	0ac77663          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00b70023          	sb	a1,0(a4)
    80003ac0:	0047871b          	addiw	a4,a5,4
    80003ac4:	08c77e63          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003ac8:	00e50733          	add	a4,a0,a4
    80003acc:	00b70023          	sb	a1,0(a4)
    80003ad0:	0057871b          	addiw	a4,a5,5
    80003ad4:	08c77663          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003ad8:	00e50733          	add	a4,a0,a4
    80003adc:	00b70023          	sb	a1,0(a4)
    80003ae0:	0067871b          	addiw	a4,a5,6
    80003ae4:	06c77e63          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00b70023          	sb	a1,0(a4)
    80003af0:	0077871b          	addiw	a4,a5,7
    80003af4:	06c77663          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003af8:	00e50733          	add	a4,a0,a4
    80003afc:	00b70023          	sb	a1,0(a4)
    80003b00:	0087871b          	addiw	a4,a5,8
    80003b04:	04c77e63          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00b70023          	sb	a1,0(a4)
    80003b10:	0097871b          	addiw	a4,a5,9
    80003b14:	04c77663          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003b18:	00e50733          	add	a4,a0,a4
    80003b1c:	00b70023          	sb	a1,0(a4)
    80003b20:	00a7871b          	addiw	a4,a5,10
    80003b24:	02c77e63          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003b28:	00e50733          	add	a4,a0,a4
    80003b2c:	00b70023          	sb	a1,0(a4)
    80003b30:	00b7871b          	addiw	a4,a5,11
    80003b34:	02c77663          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003b38:	00e50733          	add	a4,a0,a4
    80003b3c:	00b70023          	sb	a1,0(a4)
    80003b40:	00c7871b          	addiw	a4,a5,12
    80003b44:	00c77e63          	bgeu	a4,a2,80003b60 <__memset+0x1c8>
    80003b48:	00e50733          	add	a4,a0,a4
    80003b4c:	00b70023          	sb	a1,0(a4)
    80003b50:	00d7879b          	addiw	a5,a5,13
    80003b54:	00c7f663          	bgeu	a5,a2,80003b60 <__memset+0x1c8>
    80003b58:	00f507b3          	add	a5,a0,a5
    80003b5c:	00b78023          	sb	a1,0(a5)
    80003b60:	00813403          	ld	s0,8(sp)
    80003b64:	01010113          	addi	sp,sp,16
    80003b68:	00008067          	ret
    80003b6c:	00b00693          	li	a3,11
    80003b70:	e55ff06f          	j	800039c4 <__memset+0x2c>
    80003b74:	00300e93          	li	t4,3
    80003b78:	ea5ff06f          	j	80003a1c <__memset+0x84>
    80003b7c:	00100e93          	li	t4,1
    80003b80:	e9dff06f          	j	80003a1c <__memset+0x84>
    80003b84:	00000e93          	li	t4,0
    80003b88:	e95ff06f          	j	80003a1c <__memset+0x84>
    80003b8c:	00000793          	li	a5,0
    80003b90:	ef9ff06f          	j	80003a88 <__memset+0xf0>
    80003b94:	00200e93          	li	t4,2
    80003b98:	e85ff06f          	j	80003a1c <__memset+0x84>
    80003b9c:	00400e93          	li	t4,4
    80003ba0:	e7dff06f          	j	80003a1c <__memset+0x84>
    80003ba4:	00500e93          	li	t4,5
    80003ba8:	e75ff06f          	j	80003a1c <__memset+0x84>
    80003bac:	00600e93          	li	t4,6
    80003bb0:	e6dff06f          	j	80003a1c <__memset+0x84>

0000000080003bb4 <__memmove>:
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00813423          	sd	s0,8(sp)
    80003bbc:	01010413          	addi	s0,sp,16
    80003bc0:	0e060863          	beqz	a2,80003cb0 <__memmove+0xfc>
    80003bc4:	fff6069b          	addiw	a3,a2,-1
    80003bc8:	0006881b          	sext.w	a6,a3
    80003bcc:	0ea5e863          	bltu	a1,a0,80003cbc <__memmove+0x108>
    80003bd0:	00758713          	addi	a4,a1,7
    80003bd4:	00a5e7b3          	or	a5,a1,a0
    80003bd8:	40a70733          	sub	a4,a4,a0
    80003bdc:	0077f793          	andi	a5,a5,7
    80003be0:	00f73713          	sltiu	a4,a4,15
    80003be4:	00174713          	xori	a4,a4,1
    80003be8:	0017b793          	seqz	a5,a5
    80003bec:	00e7f7b3          	and	a5,a5,a4
    80003bf0:	10078863          	beqz	a5,80003d00 <__memmove+0x14c>
    80003bf4:	00900793          	li	a5,9
    80003bf8:	1107f463          	bgeu	a5,a6,80003d00 <__memmove+0x14c>
    80003bfc:	0036581b          	srliw	a6,a2,0x3
    80003c00:	fff8081b          	addiw	a6,a6,-1
    80003c04:	02081813          	slli	a6,a6,0x20
    80003c08:	01d85893          	srli	a7,a6,0x1d
    80003c0c:	00858813          	addi	a6,a1,8
    80003c10:	00058793          	mv	a5,a1
    80003c14:	00050713          	mv	a4,a0
    80003c18:	01088833          	add	a6,a7,a6
    80003c1c:	0007b883          	ld	a7,0(a5)
    80003c20:	00878793          	addi	a5,a5,8
    80003c24:	00870713          	addi	a4,a4,8
    80003c28:	ff173c23          	sd	a7,-8(a4)
    80003c2c:	ff0798e3          	bne	a5,a6,80003c1c <__memmove+0x68>
    80003c30:	ff867713          	andi	a4,a2,-8
    80003c34:	02071793          	slli	a5,a4,0x20
    80003c38:	0207d793          	srli	a5,a5,0x20
    80003c3c:	00f585b3          	add	a1,a1,a5
    80003c40:	40e686bb          	subw	a3,a3,a4
    80003c44:	00f507b3          	add	a5,a0,a5
    80003c48:	06e60463          	beq	a2,a4,80003cb0 <__memmove+0xfc>
    80003c4c:	0005c703          	lbu	a4,0(a1)
    80003c50:	00e78023          	sb	a4,0(a5)
    80003c54:	04068e63          	beqz	a3,80003cb0 <__memmove+0xfc>
    80003c58:	0015c603          	lbu	a2,1(a1)
    80003c5c:	00100713          	li	a4,1
    80003c60:	00c780a3          	sb	a2,1(a5)
    80003c64:	04e68663          	beq	a3,a4,80003cb0 <__memmove+0xfc>
    80003c68:	0025c603          	lbu	a2,2(a1)
    80003c6c:	00200713          	li	a4,2
    80003c70:	00c78123          	sb	a2,2(a5)
    80003c74:	02e68e63          	beq	a3,a4,80003cb0 <__memmove+0xfc>
    80003c78:	0035c603          	lbu	a2,3(a1)
    80003c7c:	00300713          	li	a4,3
    80003c80:	00c781a3          	sb	a2,3(a5)
    80003c84:	02e68663          	beq	a3,a4,80003cb0 <__memmove+0xfc>
    80003c88:	0045c603          	lbu	a2,4(a1)
    80003c8c:	00400713          	li	a4,4
    80003c90:	00c78223          	sb	a2,4(a5)
    80003c94:	00e68e63          	beq	a3,a4,80003cb0 <__memmove+0xfc>
    80003c98:	0055c603          	lbu	a2,5(a1)
    80003c9c:	00500713          	li	a4,5
    80003ca0:	00c782a3          	sb	a2,5(a5)
    80003ca4:	00e68663          	beq	a3,a4,80003cb0 <__memmove+0xfc>
    80003ca8:	0065c703          	lbu	a4,6(a1)
    80003cac:	00e78323          	sb	a4,6(a5)
    80003cb0:	00813403          	ld	s0,8(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret
    80003cbc:	02061713          	slli	a4,a2,0x20
    80003cc0:	02075713          	srli	a4,a4,0x20
    80003cc4:	00e587b3          	add	a5,a1,a4
    80003cc8:	f0f574e3          	bgeu	a0,a5,80003bd0 <__memmove+0x1c>
    80003ccc:	02069613          	slli	a2,a3,0x20
    80003cd0:	02065613          	srli	a2,a2,0x20
    80003cd4:	fff64613          	not	a2,a2
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00c78633          	add	a2,a5,a2
    80003ce0:	fff7c683          	lbu	a3,-1(a5)
    80003ce4:	fff78793          	addi	a5,a5,-1
    80003ce8:	fff70713          	addi	a4,a4,-1
    80003cec:	00d70023          	sb	a3,0(a4)
    80003cf0:	fec798e3          	bne	a5,a2,80003ce0 <__memmove+0x12c>
    80003cf4:	00813403          	ld	s0,8(sp)
    80003cf8:	01010113          	addi	sp,sp,16
    80003cfc:	00008067          	ret
    80003d00:	02069713          	slli	a4,a3,0x20
    80003d04:	02075713          	srli	a4,a4,0x20
    80003d08:	00170713          	addi	a4,a4,1
    80003d0c:	00e50733          	add	a4,a0,a4
    80003d10:	00050793          	mv	a5,a0
    80003d14:	0005c683          	lbu	a3,0(a1)
    80003d18:	00178793          	addi	a5,a5,1
    80003d1c:	00158593          	addi	a1,a1,1
    80003d20:	fed78fa3          	sb	a3,-1(a5)
    80003d24:	fee798e3          	bne	a5,a4,80003d14 <__memmove+0x160>
    80003d28:	f89ff06f          	j	80003cb0 <__memmove+0xfc>

0000000080003d2c <__putc>:
    80003d2c:	fe010113          	addi	sp,sp,-32
    80003d30:	00813823          	sd	s0,16(sp)
    80003d34:	00113c23          	sd	ra,24(sp)
    80003d38:	02010413          	addi	s0,sp,32
    80003d3c:	00050793          	mv	a5,a0
    80003d40:	fef40593          	addi	a1,s0,-17
    80003d44:	00100613          	li	a2,1
    80003d48:	00000513          	li	a0,0
    80003d4c:	fef407a3          	sb	a5,-17(s0)
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	b3c080e7          	jalr	-1220(ra) # 8000288c <console_write>
    80003d58:	01813083          	ld	ra,24(sp)
    80003d5c:	01013403          	ld	s0,16(sp)
    80003d60:	02010113          	addi	sp,sp,32
    80003d64:	00008067          	ret

0000000080003d68 <__getc>:
    80003d68:	fe010113          	addi	sp,sp,-32
    80003d6c:	00813823          	sd	s0,16(sp)
    80003d70:	00113c23          	sd	ra,24(sp)
    80003d74:	02010413          	addi	s0,sp,32
    80003d78:	fe840593          	addi	a1,s0,-24
    80003d7c:	00100613          	li	a2,1
    80003d80:	00000513          	li	a0,0
    80003d84:	fffff097          	auipc	ra,0xfffff
    80003d88:	ae8080e7          	jalr	-1304(ra) # 8000286c <console_read>
    80003d8c:	fe844503          	lbu	a0,-24(s0)
    80003d90:	01813083          	ld	ra,24(sp)
    80003d94:	01013403          	ld	s0,16(sp)
    80003d98:	02010113          	addi	sp,sp,32
    80003d9c:	00008067          	ret

0000000080003da0 <console_handler>:
    80003da0:	fe010113          	addi	sp,sp,-32
    80003da4:	00813823          	sd	s0,16(sp)
    80003da8:	00113c23          	sd	ra,24(sp)
    80003dac:	00913423          	sd	s1,8(sp)
    80003db0:	02010413          	addi	s0,sp,32
    80003db4:	14202773          	csrr	a4,scause
    80003db8:	100027f3          	csrr	a5,sstatus
    80003dbc:	0027f793          	andi	a5,a5,2
    80003dc0:	06079e63          	bnez	a5,80003e3c <console_handler+0x9c>
    80003dc4:	00074c63          	bltz	a4,80003ddc <console_handler+0x3c>
    80003dc8:	01813083          	ld	ra,24(sp)
    80003dcc:	01013403          	ld	s0,16(sp)
    80003dd0:	00813483          	ld	s1,8(sp)
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00008067          	ret
    80003ddc:	0ff77713          	andi	a4,a4,255
    80003de0:	00900793          	li	a5,9
    80003de4:	fef712e3          	bne	a4,a5,80003dc8 <console_handler+0x28>
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	6dc080e7          	jalr	1756(ra) # 800024c4 <plic_claim>
    80003df0:	00a00793          	li	a5,10
    80003df4:	00050493          	mv	s1,a0
    80003df8:	02f50c63          	beq	a0,a5,80003e30 <console_handler+0x90>
    80003dfc:	fc0506e3          	beqz	a0,80003dc8 <console_handler+0x28>
    80003e00:	00050593          	mv	a1,a0
    80003e04:	00000517          	auipc	a0,0x0
    80003e08:	2ec50513          	addi	a0,a0,748 # 800040f0 <CONSOLE_STATUS+0xe0>
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	afc080e7          	jalr	-1284(ra) # 80002908 <__printf>
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	01813083          	ld	ra,24(sp)
    80003e1c:	00048513          	mv	a0,s1
    80003e20:	00813483          	ld	s1,8(sp)
    80003e24:	02010113          	addi	sp,sp,32
    80003e28:	ffffe317          	auipc	t1,0xffffe
    80003e2c:	6d430067          	jr	1748(t1) # 800024fc <plic_complete>
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	3e0080e7          	jalr	992(ra) # 80003210 <uartintr>
    80003e38:	fddff06f          	j	80003e14 <console_handler+0x74>
    80003e3c:	00000517          	auipc	a0,0x0
    80003e40:	3b450513          	addi	a0,a0,948 # 800041f0 <digits+0x78>
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	a68080e7          	jalr	-1432(ra) # 800028ac <panic>
	...
