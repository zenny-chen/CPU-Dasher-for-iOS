//
//  load_store.s
//  CPU Dasher
//
//  Created by zenny_chen on 12-10-5.
//
//

.text
.align 4

.globl _ldmiaTest
.globl _ldrTest, _ldrAddTest, _ldrL2Test, _ldrMemTest
.globl _ldrbTest, _ldrbAddTest
.globl _ldrdTest, _ldrdAddTest
.globl _ldrhTest, _ldrhAddTest
.globl _ldrsbTest, _ldrsbAddTest
.globl _ldrshTest, _ldrshAddTest
.globl _stmiaTest
.globl _strTest, _strAddTest, _strL2Test, _strMemTest
.globl _strbTest, _strbAddTest
.globl _strdTest, _strdAddTest
.globl _strhTest, _strhAddTest
.globl _vld1FirstTest, _vld1SecondTest, _vld1ThirdTest, _vld1AddTest
.globl _vld2FirstTest, _vld2SecondTest, _vld2ThirdTest
.globl _vld3FirstTest, _vld3SecondTest, _vld3ThirdTest
.globl _vld4FirstTest, _vld4SecondTest, _vld4ThirdTest
.globl _vldmiaTest
.globl _vldrIntTest, _vldrLongTest, _vldrIntAddTest, _vldrLongAddTest
.globl _vst1FirstTest, _vst1SecondTest, _vst1AddTest
.globl _vst2FirstTest, _vst2SecondTest
.globl _vst3FirstTest, _vst3SecondTest
.globl _vst4FirstTest, _vst4SecondTest
.globl _vstmiaTest
.globl _vstrIntTest, _vstrLongTest, _vstrIntAddTest, _vstrLongAddTest

.globl _loadAddStoreNormalTest, _loadAddStoreNeonTest
.globl _loadAddStoreVerticalNormalTest, _loadAddStoreVerticalNeonTest, _loadAddStoreVerticalSeperateTest
.globl _loadMulStoreNormalTest
.globl _loadMulStoreVerticalNormalTest, _loadMulStoreVerticalNeonTest, _loadMulStoreVerticalSeperateTest


_ldmiaTest:

    push    {r14}

ldmiaTest_LOOP:

    // loop 1
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}

    // loop 2
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}

    // loop 3
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}

    // loop 4
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}

    // loop 5
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}
    ldmia   r1!, {r2, r3, r12, r14}

    sub     r1, r1, #(16 * 60)
    subs    r0, r0, #1
    bne     ldmiaTest_LOOP

    pop     {pc}


_ldrTest:

    push    {r4-r11, lr}

ldrTest_LOOP:

    // loop 1
    ldr     r2, [r1, #0]
    ldr     r3, [r1, #4]
    ldr     r4, [r1, #8]
    ldr     r5, [r1, #12]
    ldr     r6, [r1, #16]
    ldr     r7, [r1, #20]
    ldr     r8, [r1, #24]
    ldr     r9, [r1, #28]
    ldr     r10, [r1, #32]
    ldr     r11, [r1, #36]
    ldr     r12, [r1, #40]
    ldr     r14, [r1, #44]

    // loop 2
    ldr     r2, [r1, #48]
    ldr     r3, [r1, #52]
    ldr     r4, [r1, #56]
    ldr     r5, [r1, #60]
    ldr     r6, [r1, #64]
    ldr     r7, [r1, #68]
    ldr     r8, [r1, #72]
    ldr     r9, [r1, #76]
    ldr     r10, [r1, #80]
    ldr     r11, [r1, #84]
    ldr     r12, [r1, #88]
    ldr     r14, [r1, #92]

    // loop 3
    ldr     r2, [r1, #96]
    ldr     r3, [r1, #100]
    ldr     r4, [r1, #104]
    ldr     r5, [r1, #108]
    ldr     r6, [r1, #112]
    ldr     r7, [r1, #116]
    ldr     r8, [r1, #120]
    ldr     r9, [r1, #124]
    ldr     r10, [r1, #128]
    ldr     r11, [r1, #132]
    ldr     r12, [r1, #136]
    ldr     r14, [r1, #140]

    // loop 4
    ldr     r2, [r1, #144]
    ldr     r3, [r1, #148]
    ldr     r4, [r1, #152]
    ldr     r5, [r1, #156]
    ldr     r6, [r1, #160]
    ldr     r7, [r1, #164]
    ldr     r8, [r1, #168]
    ldr     r9, [r1, #172]
    ldr     r10, [r1, #176]
    ldr     r11, [r1, #180]
    ldr     r12, [r1, #184]
    ldr     r14, [r1, #188]

    // loop 5
    ldr     r2, [r1, #192]
    ldr     r3, [r1, #196]
    ldr     r4, [r1, #200]
    ldr     r5, [r1, #204]
    ldr     r6, [r1, #208]
    ldr     r7, [r1, #212]
    ldr     r8, [r1, #216]
    ldr     r9, [r1, #220]
    ldr     r10, [r1, #224]
    ldr     r11, [r1, #228]
    ldr     r12, [r1, #232]
    ldr     r14, [r1, #236]

    subs    r0, r0, #1
    bne     ldrTest_LOOP
    pop     {r4-r11, pc}

_ldrAddTest:

    push    {r4-r11, lr}

ldrAddTest_LOOP:

    // loop 1
    ldr     r2, [r1, #0]
    add     r12, r12, r2
    ldr     r3, [r1, #4]
    add     r12, r12, r3
    ldr     r4, [r1, #8]
    add     r12, r12, r4
    ldr     r5, [r1, #12]
    add     r12, r12, r5
    ldr     r6, [r1, #16]
    add     r12, r12, r6
    ldr     r7, [r1, #20]
    add     r12, r12, r7
    ldr     r8, [r1, #24]
    add     r12, r12, r8
    ldr     r9, [r1, #28]
    add     r12, r12, r9
    ldr     r10, [r1, #32]
    add     r12, r12, r10
    ldr     r11, [r1, #36]
    add     r4, r4, r11
    ldr     r12, [r1, #40]
    add     r4, r4, r12
    ldr     r14, [r1, #44]
    add     r4, r4, r14

    // loop 2
    ldr     r2, [r1, #48]
    add     r12, r12, r2
    ldr     r3, [r1, #52]
    add     r12, r12, r3
    ldr     r4, [r1, #56]
    add     r12, r12, r4
    ldr     r5, [r1, #60]
    add     r12, r12, r5
    ldr     r6, [r1, #64]
    add     r12, r12, r6
    ldr     r7, [r1, #68]
    add     r12, r12, r7
    ldr     r8, [r1, #72]
    add     r12, r12, r8
    ldr     r9, [r1, #76]
    add     r12, r12, r9
    ldr     r10, [r1, #80]
    add     r12, r12, r10
    ldr     r11, [r1, #84]
    add     r4, r4, r11
    ldr     r12, [r1, #88]
    add     r4, r4, r12
    ldr     r14, [r1, #92]
    add     r4, r4, r14

    // loop 3
    ldr     r2, [r1, #96]
    add     r12, r12, r2
    ldr     r3, [r1, #100]
    add     r12, r12, r3
    ldr     r4, [r1, #104]
    add     r12, r12, r4
    ldr     r5, [r1, #108]
    add     r12, r12, r5
    ldr     r6, [r1, #112]
    add     r12, r12, r6
    ldr     r7, [r1, #116]
    add     r12, r12, r7
    ldr     r8, [r1, #120]
    add     r12, r12, r8
    ldr     r9, [r1, #124]
    add     r12, r12, r9
    ldr     r10, [r1, #128]
    add     r12, r12, r10
    ldr     r11, [r1, #132]
    add     r4, r4, r11
    ldr     r12, [r1, #136]
    add     r4, r4, r12
    ldr     r14, [r1, #140]
    add     r4, r4, r14

    // loop 4
    ldr     r2, [r1, #144]
    add     r12, r12, r2
    ldr     r3, [r1, #148]
    add     r12, r12, r3
    ldr     r4, [r1, #152]
    add     r12, r12, r4
    ldr     r5, [r1, #156]
    add     r12, r12, r5
    ldr     r6, [r1, #160]
    add     r12, r12, r6
    ldr     r7, [r1, #164]
    add     r12, r12, r7
    ldr     r8, [r1, #168]
    add     r12, r12, r8
    ldr     r9, [r1, #172]
    add     r12, r12, r9
    ldr     r10, [r1, #176]
    add     r12, r12, r10
    ldr     r11, [r1, #180]
    add     r4, r4, r11
    ldr     r12, [r1, #184]
    add     r4, r4, r12
    ldr     r14, [r1, #188]
    add     r4, r4, r14

    // loop 5
    ldr     r2, [r1, #192]
    add     r12, r12, r2
    ldr     r3, [r1, #196]
    add     r12, r12, r3
    ldr     r4, [r1, #200]
    add     r12, r12, r4
    ldr     r5, [r1, #204]
    add     r12, r12, r5
    ldr     r6, [r1, #208]
    add     r12, r12, r6
    ldr     r7, [r1, #212]
    add     r12, r12, r7
    ldr     r8, [r1, #216]
    add     r12, r12, r8
    ldr     r9, [r1, #220]
    add     r12, r12, r9
    ldr     r10, [r1, #224]
    add     r12, r12, r10
    ldr     r11, [r1, #228]
    add     r4, r4, r11
    ldr     r12, [r1, #232]
    add     r4, r4, r12
    ldr     r14, [r1, #236]
    add     r4, r4, r14

    subs    r0, r0, #1
    bne     ldrAddTest_LOOP
    pop     {r4-r11, pc}

_ldrL2Test:

    push    {r4-r11, lr}
    mov     r14, #0x800

ldrL2Test_LOOP:

    // loop 1
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 2
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 3
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 4
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 5
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    sub     r1, r1, r14, LSL #6
    add     r1, r1, r14, LSL #2
    subs    r0, r0, #1
    bne     ldrL2Test_LOOP
    pop     {r4-r11, pc}

_ldrMemTest:

    push    {r4-r11, lr}
    mov     r14, #0x80000

ldrMemTest_LOOP:

    // loop 1
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 2
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 3
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 4
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    // loop 5
    ldr     r2, [r1], r14
    add     r12, r12, r2
    ldr     r3, [r1], r14
    add     r12, r12, r3
    ldr     r4, [r1], r14
    add     r12, r12, r4
    ldr     r5, [r1], r14
    add     r12, r12, r5
    ldr     r6, [r1], r14
    add     r12, r12, r6
    ldr     r7, [r1], r14
    add     r12, r12, r7
    ldr     r8, [r1], r14
    add     r12, r12, r8
    ldr     r9, [r1], r14
    add     r12, r12, r9
    ldr     r10, [r1], r14
    add     r12, r12, r10
    ldr     r11, [r1], r14
    add     r4, r4, r11
    ldr     r12, [r1], r14
    add     r4, r4, r12
    ldr     r8, [r1], r14
    add     r4, r4, r8

    sub     r1, r1, r14, LSL #6
    add     r1, r1, r14, LSL #2
    subs    r0, r0, #1
    bne     ldrMemTest_LOOP
    pop     {r4-r11, pc}


_ldrbTest:

    push    {r4-r11, lr}

ldrbTest_LOOP:

    // loop 1
    ldrb    r2, [r1, #0]
    ldrb    r3, [r1, #4]
    ldrb    r4, [r1, #8]
    ldrb    r5, [r1, #12]
    ldrb    r6, [r1, #16]
    ldrb    r7, [r1, #20]
    ldrb    r8, [r1, #24]
    ldrb    r9, [r1, #28]
    ldrb    r10, [r1, #32]
    ldrb    r11, [r1, #36]
    ldrb    r12, [r1, #40]
    ldrb    r14, [r1, #44]

    // loop 2
    ldrb    r2, [r1, #48]
    ldrb    r3, [r1, #52]
    ldrb    r4, [r1, #56]
    ldrb    r5, [r1, #60]
    ldrb    r6, [r1, #64]
    ldrb    r7, [r1, #68]
    ldrb    r8, [r1, #72]
    ldrb    r9, [r1, #76]
    ldrb    r10, [r1, #80]
    ldrb    r11, [r1, #84]
    ldrb    r12, [r1, #88]
    ldrb    r14, [r1, #92]

    // loop 3
    ldrb    r2, [r1, #96]
    ldrb    r3, [r1, #100]
    ldrb    r4, [r1, #104]
    ldrb    r5, [r1, #108]
    ldrb    r6, [r1, #112]
    ldrb    r7, [r1, #116]
    ldrb    r8, [r1, #120]
    ldrb    r9, [r1, #124]
    ldrb    r10, [r1, #128]
    ldrb    r11, [r1, #132]
    ldrb    r12, [r1, #136]
    ldrb    r14, [r1, #140]

    // loop 4
    ldrb    r2, [r1, #144]
    ldrb    r3, [r1, #148]
    ldrb    r4, [r1, #152]
    ldrb    r5, [r1, #156]
    ldrb    r6, [r1, #160]
    ldrb    r7, [r1, #164]
    ldrb    r8, [r1, #168]
    ldrb    r9, [r1, #172]
    ldrb    r10, [r1, #176]
    ldrb    r11, [r1, #180]
    ldrb    r12, [r1, #184]
    ldrb    r14, [r1, #188]

    // loop 5
    ldrb    r2, [r1, #192]
    ldrb    r3, [r1, #196]
    ldrb    r4, [r1, #200]
    ldrb    r5, [r1, #204]
    ldrb    r6, [r1, #208]
    ldrb    r7, [r1, #212]
    ldrb    r8, [r1, #216]
    ldrb    r9, [r1, #220]
    ldrb    r10, [r1, #224]
    ldrb    r11, [r1, #228]
    ldrb    r12, [r1, #232]
    ldrb    r14, [r1, #236]

    subs    r0, r0, #1
    bne     ldrbTest_LOOP
    pop     {r4-r11, pc}

_ldrbAddTest:

    push    {r4-r11, lr}

ldrbAddTest_LOOP:

    // loop 1
    ldrb     r2, [r1, #0]
    add     r12, r12, r2
    ldrb     r3, [r1, #4]
    add     r12, r12, r3
    ldrb     r4, [r1, #8]
    add     r12, r12, r4
    ldrb     r5, [r1, #12]
    add     r12, r12, r5
    ldrb     r6, [r1, #16]
    add     r12, r12, r6
    ldrb     r7, [r1, #20]
    add     r12, r12, r7
    ldrb     r8, [r1, #24]
    add     r12, r12, r8
    ldrb     r9, [r1, #28]
    add     r12, r12, r9
    ldrb    r10, [r1, #32]
    add     r12, r12, r10
    ldrb    r11, [r1, #36]
    add     r5, r5, r11
    ldrb    r12, [r1, #40]
    add     r5, r5, r12
    ldrb    r14, [r1, #44]
    add     r5, r5, r14

    // loop 2
    ldrb     r2, [r1, #48]
    add     r12, r12, r2
    ldrb     r3, [r1, #52]
    add     r12, r12, r3
    ldrb     r4, [r1, #56]
    add     r12, r12, r4
    ldrb     r5, [r1, #60]
    add     r12, r12, r5
    ldrb     r6, [r1, #64]
    add     r12, r12, r6
    ldrb     r7, [r1, #68]
    add     r12, r12, r7
    ldrb     r8, [r1, #72]
    add     r12, r12, r8
    ldrb     r9, [r1, #76]
    add     r12, r12, r9
    ldrb    r10, [r1, #80]
    add     r12, r12, r10
    ldrb    r11, [r1, #84]
    add     r5, r5, r11
    ldrb    r12, [r1, #88]
    add     r5, r5, r12
    ldrb    r14, [r1, #92]
    add     r5, r5, r14

    // loop 3
    ldrb     r2, [r1, #96]
    add     r12, r12, r2
    ldrb     r3, [r1, #100]
    add     r12, r12, r3
    ldrb     r4, [r1, #104]
    add     r12, r12, r4
    ldrb     r5, [r1, #108]
    add     r12, r12, r5
    ldrb     r6, [r1, #112]
    add     r12, r12, r6
    ldrb     r7, [r1, #116]
    add     r12, r12, r7
    ldrb     r8, [r1, #120]
    add     r12, r12, r8
    ldrb     r9, [r1, #124]
    add     r12, r12, r9
    ldrb    r10, [r1, #128]
    add     r12, r12, r10
    ldrb    r11, [r1, #132]
    add     r5, r5, r11
    ldrb    r12, [r1, #136]
    add     r5, r5, r12
    ldrb    r14, [r1, #140]
    add     r5, r5, r14

    // loop 4
    ldrb     r2, [r1, #144]
    add     r12, r12, r2
    ldrb     r3, [r1, #148]
    add     r12, r12, r3
    ldrb     r4, [r1, #152]
    add     r12, r12, r4
    ldrb     r5, [r1, #156]
    add     r12, r12, r5
    ldrb     r6, [r1, #160]
    add     r12, r12, r6
    ldrb     r7, [r1, #164]
    add     r12, r12, r7
    ldrb     r8, [r1, #168]
    add     r12, r12, r8
    ldrb     r9, [r1, #172]
    add     r12, r12, r9
    ldrb    r10, [r1, #176]
    add     r12, r12, r10
    ldrb    r11, [r1, #180]
    add     r5, r5, r11
    ldrb    r12, [r1, #184]
    add     r5, r5, r12
    ldrb    r14, [r1, #188]
    add     r5, r5, r14

    // loop 5
    ldrb     r2, [r1, #192]
    add     r12, r12, r2
    ldrb     r3, [r1, #196]
    add     r12, r12, r3
    ldrb     r4, [r1, #200]
    add     r12, r12, r4
    ldrb     r5, [r1, #204]
    add     r12, r12, r5
    ldrb     r6, [r1, #208]
    add     r12, r12, r6
    ldrb     r7, [r1, #212]
    add     r12, r12, r7
    ldrb     r8, [r1, #216]
    add     r12, r12, r8
    ldrb     r9, [r1, #220]
    add     r12, r12, r9
    ldrb    r10, [r1, #224]
    add     r12, r12, r10
    ldrb    r11, [r1, #228]
    add     r5, r5, r11
    ldrb    r12, [r1, #232]
    add     r5, r5, r12
    ldrb    r14, [r1, #236]
    add     r5, r5, r14

    subs    r0, r0, #1
    bne     ldrbAddTest_LOOP
    pop     {r4-r11, pc}


.thumb
.thumb_func
_ldrdTest:

    push    {r4-r11, lr}

ldrdTest_LOOP:

    // loop 1
    ldrd    r2, r3, [r1, #0]
    ldrd    r4, r5, [r1, #8]
    ldrd    r6, r7, [r1, #16]
    ldrd    r8, r9, [r1, #24]
    ldrd    r10, r11, [r1, #32]
    ldrd    r2, r3, [r1, #40]
    ldrd    r4, r5, [r1, #48]
    ldrd    r6, r7, [r1, #56]
    ldrd    r8, r9, [r1, #64]
    ldrd    r10, r11, [r1, #72]

    // loop 2
    ldrd    r2, r3, [r1, #80]
    ldrd    r4, r5, [r1, #88]
    ldrd    r6, r7, [r1, #96]
    ldrd    r8, r9, [r1, #104]
    ldrd    r10, r11, [r1, #112]
    ldrd    r2, r3, [r1, #120]
    ldrd    r4, r5, [r1, #128]
    ldrd    r6, r7, [r1, #136]
    ldrd    r8, r9, [r1, #144]
    ldrd    r10, r11, [r1, #152]

    // loop 3
    ldrd    r2, r3, [r1, #160]
    ldrd    r4, r5, [r1, #168]
    ldrd    r6, r7, [r1, #176]
    ldrd    r8, r9, [r1, #184]
    ldrd    r10, r11, [r1, #192]
    ldrd    r2, r3, [r1, #200]
    ldrd    r4, r5, [r1, #208]
    ldrd    r6, r7, [r1, #216]
    ldrd    r8, r9, [r1, #224]
    ldrd    r10, r11, [r1, #232]

    // loop 4
    ldrd    r2, r3, [r1, #240]
    ldrd    r4, r5, [r1, #248]
    ldrd    r6, r7, [r1, #256]
    ldrd    r8, r9, [r1, #264]
    ldrd    r10, r11, [r1, #272]
    ldrd    r2, r3, [r1, #280]
    ldrd    r4, r5, [r1, #288]
    ldrd    r6, r7, [r1, #296]
    ldrd    r8, r9, [r1, #304]
    ldrd    r10, r11, [r1, #312]

    // loop 5
    ldrd    r2, r3, [r1, #320]
    ldrd    r4, r5, [r1, #328]
    ldrd    r6, r7, [r1, #336]
    ldrd    r8, r9, [r1, #344]
    ldrd    r10, r11, [r1, #352]
    ldrd    r2, r3, [r1, #360]
    ldrd    r4, r5, [r1, #368]
    ldrd    r6, r7, [r1, #376]
    ldrd    r8, r9, [r1, #384]
    ldrd    r10, r11, [r1, #392]

    // loop 6
    ldrd    r2, r3, [r1, #400]
    ldrd    r4, r5, [r1, #408]
    ldrd    r6, r7, [r1, #416]
    ldrd    r8, r9, [r1, #424]
    ldrd    r10, r11, [r1, #432]
    ldrd    r2, r3, [r1, #440]
    ldrd    r4, r5, [r1, #448]
    ldrd    r6, r7, [r1, #456]
    ldrd    r8, r9, [r1, #464]
    ldrd    r10, r11, [r1, #472]

    subs    r0, r0, #1
    bne     ldrdTest_LOOP
    pop     {r4-r11, pc}

.thumb
.thumb_func
_ldrdAddTest:

    push    {r4-r11, lr}

ldrdAddTest_LOOP:

    // loop 1
    ldrd    r2, r3, [r1, #0]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #8]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #16]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #24]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #32]
    add     r12, r10, r11
    ldrd    r2, r3, [r1, #40]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #48]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #56]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #64]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #72]
    add     r12, r10, r11

    // loop 2
    ldrd    r2, r3, [r1, #80]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #88]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #96]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #104]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #112]
    add     r12, r10, r11
    ldrd    r2, r3, [r1, #120]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #128]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #136]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #144]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #152]
    add     r12, r10, r11

    // loop 3
    ldrd    r2, r3, [r1, #160]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #168]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #176]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #184]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #192]
    add     r12, r10, r11
    ldrd    r2, r3, [r1, #200]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #208]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #216]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #224]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #232]
    add     r12, r10, r11

    // loop 4
    ldrd    r2, r3, [r1, #240]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #248]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #256]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #264]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #272]
    add     r12, r10, r11
    ldrd    r2, r3, [r1, #280]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #288]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #296]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #304]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #312]
    add     r12, r10, r11

    // loop 5
    ldrd    r2, r3, [r1, #320]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #328]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #336]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #344]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #352]
    add     r12, r10, r11
    ldrd    r2, r3, [r1, #360]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #368]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #376]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #384]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #392]
    add     r12, r10, r11

    // loop 6
    ldrd    r2, r3, [r1, #400]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #408]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #416]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #424]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #432]
    add     r12, r10, r11
    ldrd    r2, r3, [r1, #440]
    add     r12, r2, r3
    ldrd    r4, r5, [r1, #448]
    add     r12, r4, r5
    ldrd    r6, r7, [r1, #456]
    add     r12, r6, r7
    ldrd    r8, r9, [r1, #464]
    add     r12, r8, r9
    ldrd    r10, r11, [r1, #472]
    add     r12, r10, r11

    subs    r0, r0, #1
    bne.w   ldrdAddTest_LOOP
    pop     {r4-r11, pc}
    mov     r0, r0

.arm

_ldrhTest:

    push    {r4-r11, lr}

ldrhTest_LOOP:

    // loop 1
    ldrh    r2, [r1, #0]
    ldrh    r3, [r1, #4]
    ldrh    r4, [r1, #8]
    ldrh    r5, [r1, #12]
    ldrh    r6, [r1, #16]
    ldrh    r7, [r1, #20]
    ldrh    r8, [r1, #24]
    ldrh    r9, [r1, #28]
    ldrh    r10, [r1, #32]
    ldrh    r11, [r1, #36]
    ldrh    r12, [r1, #40]
    ldrh    r14, [r1, #44]

    // loop 2
    ldrh    r2, [r1, #48]
    ldrh    r3, [r1, #52]
    ldrh    r4, [r1, #56]
    ldrh    r5, [r1, #60]
    ldrh    r6, [r1, #64]
    ldrh    r7, [r1, #68]
    ldrh    r8, [r1, #72]
    ldrh    r9, [r1, #76]
    ldrh    r10, [r1, #80]
    ldrh    r11, [r1, #84]
    ldrh    r12, [r1, #88]
    ldrh    r14, [r1, #92]

    // loop 3
    ldrh    r2, [r1, #96]
    ldrh    r3, [r1, #100]
    ldrh    r4, [r1, #104]
    ldrh    r5, [r1, #108]
    ldrh    r6, [r1, #112]
    ldrh    r7, [r1, #116]
    ldrh    r8, [r1, #120]
    ldrh    r9, [r1, #124]
    ldrh    r10, [r1, #128]
    ldrh    r11, [r1, #132]
    ldrh    r12, [r1, #136]
    ldrh    r14, [r1, #140]

    // loop 4
    ldrh    r2, [r1, #144]
    ldrh    r3, [r1, #148]
    ldrh    r4, [r1, #152]
    ldrh    r5, [r1, #156]
    ldrh    r6, [r1, #160]
    ldrh    r7, [r1, #164]
    ldrh    r8, [r1, #168]
    ldrh    r9, [r1, #172]
    ldrh    r10, [r1, #176]
    ldrh    r11, [r1, #180]
    ldrh    r12, [r1, #184]
    ldrh    r14, [r1, #188]

    // loop 5
    ldrh    r2, [r1, #192]
    ldrh    r3, [r1, #196]
    ldrh    r4, [r1, #200]
    ldrh    r5, [r1, #204]
    ldrh    r6, [r1, #208]
    ldrh    r7, [r1, #212]
    ldrh    r8, [r1, #216]
    ldrh    r9, [r1, #220]
    ldrh    r10, [r1, #224]
    ldrh    r11, [r1, #228]
    ldrh    r12, [r1, #232]
    ldrh    r14, [r1, #236]

    subs    r0, r0, #1
    bne     ldrhTest_LOOP
    pop     {r4-r11, pc}

_ldrhAddTest:

    push    {r4-r11, lr}

ldrhAddTest_LOOP:

    // loop 1
    ldrh     r2, [r1, #0]
    add     r12, r12, r2
    ldrh     r3, [r1, #4]
    add     r12, r12, r3
    ldrh     r4, [r1, #8]
    add     r12, r12, r4
    ldrh     r5, [r1, #12]
    add     r12, r12, r5
    ldrh     r6, [r1, #16]
    add     r12, r12, r6
    ldrh     r7, [r1, #20]
    add     r12, r12, r7
    ldrh     r8, [r1, #24]
    add     r12, r12, r8
    ldrh     r9, [r1, #28]
    add     r12, r12, r9
    ldrh    r10, [r1, #32]
    add     r12, r12, r10
    ldrh    r11, [r1, #36]
    add     r5, r5, r11
    ldrh    r12, [r1, #40]
    add     r5, r5, r12
    ldrh    r14, [r1, #44]
    add    r5, r5, r14

    // loop 2
    ldrh     r2, [r1, #48]
    add     r12, r12, r2
    ldrh     r3, [r1, #52]
    add     r12, r12, r3
    ldrh     r4, [r1, #56]
    add     r12, r12, r4
    ldrh     r5, [r1, #60]
    add     r12, r12, r5
    ldrh     r6, [r1, #64]
    add     r12, r12, r6
    ldrh     r7, [r1, #68]
    add     r12, r12, r7
    ldrh     r8, [r1, #72]
    add     r12, r12, r8
    ldrh     r9, [r1, #76]
    add     r12, r12, r9
    ldrh    r10, [r1, #80]
    add     r12, r12, r10
    ldrh    r11, [r1, #84]
    add     r5, r5, r11
    ldrh    r12, [r1, #88]
    add     r5, r5, r12
    ldrh    r14, [r1, #92]
    add    r5, r5, r14

    // loop 3
    ldrh     r2, [r1, #96]
    add     r12, r12, r2
    ldrh     r3, [r1, #100]
    add     r12, r12, r3
    ldrh     r4, [r1, #104]
    add     r12, r12, r4
    ldrh     r5, [r1, #108]
    add     r12, r12, r5
    ldrh     r6, [r1, #112]
    add     r12, r12, r6
    ldrh     r7, [r1, #116]
    add     r12, r12, r7
    ldrh     r8, [r1, #120]
    add     r12, r12, r8
    ldrh     r9, [r1, #124]
    add     r12, r12, r9
    ldrh    r10, [r1, #128]
    add     r12, r12, r10
    ldrh    r11, [r1, #132]
    add     r5, r5, r11
    ldrh    r12, [r1, #136]
    add     r5, r5, r12
    ldrh    r14, [r1, #140]
    add    r5, r5, r14

    // loop 4
    ldrh     r2, [r1, #144]
    add     r12, r12, r2
    ldrh     r3, [r1, #148]
    add     r12, r12, r3
    ldrh     r4, [r1, #152]
    add     r12, r12, r4
    ldrh     r5, [r1, #156]
    add     r12, r12, r5
    ldrh     r6, [r1, #160]
    add     r12, r12, r6
    ldrh     r7, [r1, #164]
    add     r12, r12, r7
    ldrh     r8, [r1, #168]
    add     r12, r12, r8
    ldrh     r9, [r1, #172]
    add     r12, r12, r9
    ldrh    r10, [r1, #176]
    add     r12, r12, r10
    ldrh    r11, [r1, #180]
    add     r5, r5, r11
    ldrh    r12, [r1, #184]
    add     r5, r5, r12
    ldrh    r14, [r1, #188]
    add    r5, r5, r14

    // loop 5
    ldrh     r2, [r1, #192]
    add     r12, r12, r2
    ldrh     r3, [r1, #196]
    add     r12, r12, r3
    ldrh     r4, [r1, #200]
    add     r12, r12, r4
    ldrh     r5, [r1, #204]
    add     r12, r12, r5
    ldrh     r6, [r1, #208]
    add     r12, r12, r6
    ldrh     r7, [r1, #212]
    add     r12, r12, r7
    ldrh     r8, [r1, #216]
    add     r12, r12, r8
    ldrh     r9, [r1, #220]
    add     r12, r12, r9
    ldrh    r10, [r1, #224]
    add     r12, r12, r10
    ldrh    r11, [r1, #228]
    add     r5, r5, r11
    ldrh    r12, [r1, #232]
    add     r5, r5, r12
    ldrh    r14, [r1, #236]
    add    r5, r5, r14

    subs    r0, r0, #1
    bne     ldrhAddTest_LOOP
    pop     {r4-r11, pc}


_ldrsbTest:

    push    {r4-r11, lr}

ldrsbTest_LOOP:

    // loop 1
    ldrsb   r2, [r1, #0]
    ldrsb   r3, [r1, #4]
    ldrsb   r4, [r1, #8]
    ldrsb   r5, [r1, #12]
    ldrsb   r6, [r1, #16]
    ldrsb   r7, [r1, #20]
    ldrsb   r8, [r1, #24]
    ldrsb   r9, [r1, #28]
    ldrsb   r10, [r1, #32]
    ldrsb   r11, [r1, #36]
    ldrsb   r12, [r1, #40]
    ldrsb   r14, [r1, #44]

    // loop 2
    ldrsb   r2, [r1, #48]
    ldrsb   r3, [r1, #52]
    ldrsb   r4, [r1, #56]
    ldrsb   r5, [r1, #60]
    ldrsb   r6, [r1, #64]
    ldrsb   r7, [r1, #68]
    ldrsb   r8, [r1, #72]
    ldrsb   r9, [r1, #76]
    ldrsb   r10, [r1, #80]
    ldrsb   r11, [r1, #84]
    ldrsb   r12, [r1, #88]
    ldrsb   r14, [r1, #92]

    // loop 3
    ldrsb   r2, [r1, #96]
    ldrsb   r3, [r1, #100]
    ldrsb   r4, [r1, #104]
    ldrsb   r5, [r1, #108]
    ldrsb   r6, [r1, #112]
    ldrsb   r7, [r1, #116]
    ldrsb   r8, [r1, #120]
    ldrsb   r9, [r1, #124]
    ldrsb   r10, [r1, #128]
    ldrsb   r11, [r1, #132]
    ldrsb   r12, [r1, #136]
    ldrsb   r14, [r1, #140]

    // loop 4
    ldrsb   r2, [r1, #144]
    ldrsb   r3, [r1, #148]
    ldrsb   r4, [r1, #152]
    ldrsb   r5, [r1, #156]
    ldrsb   r6, [r1, #160]
    ldrsb   r7, [r1, #164]
    ldrsb   r8, [r1, #168]
    ldrsb   r9, [r1, #172]
    ldrsb   r10, [r1, #176]
    ldrsb   r11, [r1, #180]
    ldrsb   r12, [r1, #184]
    ldrsb   r14, [r1, #188]

    // loop 5
    ldrsb   r2, [r1, #192]
    ldrsb   r3, [r1, #196]
    ldrsb   r4, [r1, #200]
    ldrsb   r5, [r1, #204]
    ldrsb   r6, [r1, #208]
    ldrsb   r7, [r1, #212]
    ldrsb   r8, [r1, #216]
    ldrsb   r9, [r1, #220]
    ldrsb   r10, [r1, #224]
    ldrsb   r11, [r1, #228]
    ldrsb   r12, [r1, #232]
    ldrsb   r14, [r1, #236]

    subs    r0, r0, #1
    bne     ldrsbTest_LOOP
    pop     {r4-r11, pc}

_ldrsbAddTest:

    push    {r4-r11, lr}

ldrsbAddTest_LOOP:

    // loop 1
    ldrsb   r2, [r1, #0]
    add     r12, r12, r2
    ldrsb   r3, [r1, #4]
    add     r12, r12, r3
    ldrsb   r4, [r1, #8]
    add     r12, r12, r4
    ldrsb   r5, [r1, #12]
    add     r12, r12, r5
    ldrsb   r6, [r1, #16]
    add     r12, r12, r6
    ldrsb   r7, [r1, #20]
    add     r12, r12, r7
    ldrsb   r8, [r1, #24]
    add     r12, r12, r8
    ldrsb   r9, [r1, #28]
    add     r12, r12, r9
    ldrsb   r10, [r1, #32]
    add     r12, r12, r10
    ldrsb   r11, [r1, #36]
    add     r5, r5, r11
    ldrsb   r12, [r1, #40]
    add     r5, r5, r12
    ldrsb   r14, [r1, #44]
    add     r5, r5, r14

    // loop 2
    ldrsb   r2, [r1, #48]
    add     r12, r12, r2
    ldrsb   r3, [r1, #52]
    add     r12, r12, r3
    ldrsb   r4, [r1, #56]
    add     r12, r12, r4
    ldrsb   r5, [r1, #60]
    add     r12, r12, r5
    ldrsb   r6, [r1, #64]
    add     r12, r12, r6
    ldrsb   r7, [r1, #68]
    add     r12, r12, r7
    ldrsb   r8, [r1, #72]
    add     r12, r12, r8
    ldrsb   r9, [r1, #76]
    add     r12, r12, r9
    ldrsb   r10, [r1, #80]
    add     r12, r12, r10
    ldrsb   r11, [r1, #84]
    add     r5, r5, r11
    ldrsb   r12, [r1, #88]
    add     r5, r5, r12
    ldrsb   r14, [r1, #92]
    add     r5, r5, r14

    // loop 3
    ldrsb   r2, [r1, #96]
    add     r12, r12, r2
    ldrsb   r3, [r1, #100]
    add     r12, r12, r3
    ldrsb   r4, [r1, #104]
    add     r12, r12, r4
    ldrsb   r5, [r1, #108]
    add     r12, r12, r5
    ldrsb   r6, [r1, #112]
    add     r12, r12, r6
    ldrsb   r7, [r1, #116]
    add     r12, r12, r7
    ldrsb   r8, [r1, #120]
    add     r12, r12, r8
    ldrsb   r9, [r1, #124]
    add     r12, r12, r9
    ldrsb   r10, [r1, #128]
    add     r12, r12, r10
    ldrsb   r11, [r1, #132]
    add     r5, r5, r11
    ldrsb   r12, [r1, #136]
    add     r5, r5, r12
    ldrsb   r14, [r1, #140]
    add     r5, r5, r14

    // loop 4
    ldrsb   r2, [r1, #144]
    add     r12, r12, r2
    ldrsb   r3, [r1, #148]
    add     r12, r12, r3
    ldrsb   r4, [r1, #152]
    add     r12, r12, r4
    ldrsb   r5, [r1, #156]
    add     r12, r12, r5
    ldrsb   r6, [r1, #160]
    add     r12, r12, r6
    ldrsb   r7, [r1, #164]
    add     r12, r12, r7
    ldrsb   r8, [r1, #168]
    add     r12, r12, r8
    ldrsb   r9, [r1, #172]
    add     r12, r12, r9
    ldrsb   r10, [r1, #176]
    add     r12, r12, r10
    ldrsb   r11, [r1, #180]
    add     r5, r5, r11
    ldrsb   r12, [r1, #184]
    add     r5, r5, r12
    ldrsb   r14, [r1, #188]
    add     r5, r5, r14

    // loop 5
    ldrsb   r2, [r1, #192]
    add     r12, r12, r2
    ldrsb   r3, [r1, #196]
    add     r12, r12, r3
    ldrsb   r4, [r1, #200]
    add     r12, r12, r4
    ldrsb   r5, [r1, #204]
    add     r12, r12, r5
    ldrsb   r6, [r1, #208]
    add     r12, r12, r6
    ldrsb   r7, [r1, #212]
    add     r12, r12, r7
    ldrsb   r8, [r1, #216]
    add     r12, r12, r8
    ldrsb   r9, [r1, #220]
    add     r12, r12, r9
    ldrsb   r10, [r1, #224]
    add     r12, r12, r10
    ldrsb   r11, [r1, #228]
    add     r5, r5, r11
    ldrsb   r12, [r1, #232]
    add     r5, r5, r12
    ldrsb   r14, [r1, #236]
    add     r5, r5, r14

    subs    r0, r0, #1
    bne     ldrsbAddTest_LOOP
    pop     {r4-r11, pc}


_ldrshTest:

    push    {r4-r11, lr}

ldrshTest_LOOP:

    // loop 1
    ldrsh   r2, [r1, #0]
    ldrsh   r3, [r1, #4]
    ldrsh   r4, [r1, #8]
    ldrsh   r5, [r1, #12]
    ldrsh   r6, [r1, #16]
    ldrsh   r7, [r1, #20]
    ldrsh   r8, [r1, #24]
    ldrsh   r9, [r1, #28]
    ldrsh   r10, [r1, #32]
    ldrsh   r11, [r1, #36]
    ldrsh   r12, [r1, #40]
    ldrsh   r14, [r1, #44]

    // loop 2
    ldrsh   r2, [r1, #48]
    ldrsh   r3, [r1, #52]
    ldrsh   r4, [r1, #56]
    ldrsh   r5, [r1, #60]
    ldrsh   r6, [r1, #64]
    ldrsh   r7, [r1, #68]
    ldrsh   r8, [r1, #72]
    ldrsh   r9, [r1, #76]
    ldrsh   r10, [r1, #80]
    ldrsh   r11, [r1, #84]
    ldrsh   r12, [r1, #88]
    ldrsh   r14, [r1, #92]

    // loop 3
    ldrsh   r2, [r1, #96]
    ldrsh   r3, [r1, #100]
    ldrsh   r4, [r1, #104]
    ldrsh   r5, [r1, #108]
    ldrsh   r6, [r1, #112]
    ldrsh   r7, [r1, #116]
    ldrsh   r8, [r1, #120]
    ldrsh   r9, [r1, #124]
    ldrsh   r10, [r1, #128]
    ldrsh   r11, [r1, #132]
    ldrsh   r12, [r1, #136]
    ldrsh   r14, [r1, #140]

    // loop 4
    ldrsh   r2, [r1, #144]
    ldrsh   r3, [r1, #148]
    ldrsh   r4, [r1, #152]
    ldrsh   r5, [r1, #156]
    ldrsh   r6, [r1, #160]
    ldrsh   r7, [r1, #164]
    ldrsh   r8, [r1, #168]
    ldrsh   r9, [r1, #172]
    ldrsh   r10, [r1, #176]
    ldrsh   r11, [r1, #180]
    ldrsh   r12, [r1, #184]
    ldrsh   r14, [r1, #188]

    // loop 5
    ldrsh   r2, [r1, #192]
    ldrsh   r3, [r1, #196]
    ldrsh   r4, [r1, #200]
    ldrsh   r5, [r1, #204]
    ldrsh   r6, [r1, #208]
    ldrsh   r7, [r1, #212]
    ldrsh   r8, [r1, #216]
    ldrsh   r9, [r1, #220]
    ldrsh   r10, [r1, #224]
    ldrsh   r11, [r1, #228]
    ldrsh   r12, [r1, #232]
    ldrsh   r14, [r1, #236]

    subs    r0, r0, #1
    bne     ldrshTest_LOOP
    pop     {r4-r11, pc}

_ldrshAddTest:

    push    {r4-r11, lr}

ldrshAddTest_LOOP:

    // loop 1
    ldrsh   r2, [r1, #0]
    add     r12, r12, r2
    ldrsh   r3, [r1, #4]
    add     r12, r12, r3
    ldrsh   r4, [r1, #8]
    add     r12, r12, r4
    ldrsh   r5, [r1, #12]
    add     r12, r12, r5
    ldrsh   r6, [r1, #16]
    add     r12, r12, r6
    ldrsh   r7, [r1, #20]
    add     r12, r12, r7
    ldrsh   r8, [r1, #24]
    add     r12, r12, r8
    ldrsh   r9, [r1, #28]
    add     r12, r12, r9
    ldrsh   r10, [r1, #32]
    add     r12, r12, r10
    ldrsh   r11, [r1, #36]
    add     r5, r5, r11
    ldrsh   r12, [r1, #40]
    add     r5, r5, r12
    ldrsh   r14, [r1, #44]
    add     r5, r5, r14

    // loop 2
    ldrsh   r2, [r1, #48]
    add     r12, r12, r2
    ldrsh   r3, [r1, #52]
    add     r12, r12, r3
    ldrsh   r4, [r1, #56]
    add     r12, r12, r4
    ldrsh   r5, [r1, #60]
    add     r12, r12, r5
    ldrsh   r6, [r1, #64]
    add     r12, r12, r6
    ldrsh   r7, [r1, #68]
    add     r12, r12, r7
    ldrsh   r8, [r1, #72]
    add     r12, r12, r8
    ldrsh   r9, [r1, #76]
    add     r12, r12, r9
    ldrsh   r10, [r1, #80]
    add     r12, r12, r10
    ldrsh   r11, [r1, #84]
    add     r5, r5, r11
    ldrsh   r12, [r1, #98]
    add     r5, r5, r12
    ldrsh   r14, [r1, #92]
    add     r5, r5, r14

    // loop 3
    ldrsh   r2, [r1, #96]
    add     r12, r12, r2
    ldrsh   r3, [r1, #100]
    add     r12, r12, r3
    ldrsh   r4, [r1, #104]
    add     r12, r12, r4
    ldrsh   r5, [r1, #108]
    add     r12, r12, r5
    ldrsh   r6, [r1, #112]
    add     r12, r12, r6
    ldrsh   r7, [r1, #116]
    add     r12, r12, r7
    ldrsh   r8, [r1, #120]
    add     r12, r12, r8
    ldrsh   r9, [r1, #124]
    add     r12, r12, r9
    ldrsh   r10, [r1, #128]
    add     r12, r12, r10
    ldrsh   r11, [r1, #132]
    add     r5, r5, r11
    ldrsh   r12, [r1, #136]
    add     r5, r5, r12
    ldrsh   r14, [r1, #140]
    add     r5, r5, r14

    // loop 4
    ldrsh   r2, [r1, #144]
    add     r12, r12, r2
    ldrsh   r3, [r1, #148]
    add     r12, r12, r3
    ldrsh   r4, [r1, #152]
    add     r12, r12, r4
    ldrsh   r5, [r1, #156]
    add     r12, r12, r5
    ldrsh   r6, [r1, #160]
    add     r12, r12, r6
    ldrsh   r7, [r1, #164]
    add     r12, r12, r7
    ldrsh   r8, [r1, #168]
    add     r12, r12, r8
    ldrsh   r9, [r1, #172]
    add     r12, r12, r9
    ldrsh   r10, [r1, #176]
    add     r12, r12, r10
    ldrsh   r11, [r1, #180]
    add     r5, r5, r11
    ldrsh   r12, [r1, #184]
    add     r5, r5, r12
    ldrsh   r14, [r1, #188]
    add     r5, r5, r14

    // loop 5
    ldrsh   r2, [r1, #192]
    add     r12, r12, r2
    ldrsh   r3, [r1, #196]
    add     r12, r12, r3
    ldrsh   r4, [r1, #200]
    add     r12, r12, r4
    ldrsh   r5, [r1, #204]
    add     r12, r12, r5
    ldrsh   r6, [r1, #208]
    add     r12, r12, r6
    ldrsh   r7, [r1, #212]
    add     r12, r12, r7
    ldrsh   r8, [r1, #216]
    add     r12, r12, r8
    ldrsh   r9, [r1, #220]
    add     r12, r12, r9
    ldrsh   r10, [r1, #224]
    add     r12, r12, r10
    ldrsh   r11, [r1, #228]
    add     r5, r5, r11
    ldrsh   r12, [r1, #232]
    add     r5, r5, r12
    ldrsh   r14, [r1, #236]
    add     r5, r5, r14

    subs    r0, r0, #1
    bne     ldrshAddTest_LOOP
    pop     {r4-r11, pc}


_stmiaTest:

    push    {lr}

stmiaTest_LOOP:

    // loop 1
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}

    // loop 2
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}

    // loop 3
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}

    // loop 4
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}

    // loop 5
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}
    stmia   r1!, {r2, r3, r4, r5}
    stmia   r1!, {r6, r7, r8, r9}
    stmia   r1!, {r10, r11, r12, r14}

    sub     r1, r1, #(16 * 32)
    subs    r0, r0, #1
    bne     stmiaTest_LOOP
    pop     {pc}


_strTest:

    // loop 1
    str     r2, [r1, #0]
    str     r3, [r1, #4]
    str     r4, [r1, #8]
    str     r5, [r1, #12]
    str     r6, [r1, #16]
    str     r7, [r1, #20]
    str     r8, [r1, #24]
    str     r9, [r1, #28]
    str     r10, [r1, #32]
    str     r11, [r1, #36]
    str     r12, [r1, #40]
    str     r14, [r1, #44]

    // loop 2
    str     r2, [r1, #48]
    str     r3, [r1, #52]
    str     r4, [r1, #56]
    str     r5, [r1, #60]
    str     r6, [r1, #64]
    str     r7, [r1, #68]
    str     r8, [r1, #72]
    str     r9, [r1, #76]
    str     r10, [r1, #80]
    str     r11, [r1, #84]
    str     r12, [r1, #88]
    str     r14, [r1, #92]

    // loop 3
    str     r2, [r1, #96]
    str     r3, [r1, #100]
    str     r4, [r1, #104]
    str     r5, [r1, #108]
    str     r6, [r1, #112]
    str     r7, [r1, #116]
    str     r8, [r1, #120]
    str     r9, [r1, #124]
    str     r10, [r1, #128]
    str     r11, [r1, #132]
    str     r12, [r1, #136]
    str     r14, [r1, #140]

    // loop 4
    str     r2, [r1, #144]
    str     r3, [r1, #148]
    str     r4, [r1, #152]
    str     r5, [r1, #156]
    str     r6, [r1, #160]
    str     r7, [r1, #164]
    str     r8, [r1, #168]
    str     r9, [r1, #172]
    str     r10, [r1, #176]
    str     r11, [r1, #180]
    str     r12, [r1, #184]
    str     r14, [r1, #188]

    // loop 5
    str     r2, [r1, #192]
    str     r3, [r1, #196]
    str     r4, [r1, #200]
    str     r5, [r1, #204]
    str     r6, [r1, #208]
    str     r7, [r1, #212]
    str     r8, [r1, #216]
    str     r9, [r1, #220]
    str     r10, [r1, #224]
    str     r11, [r1, #228]
    str     r12, [r1, #232]
    str     r14, [r1, #236]

    subs    r0, r0, #1
    bne     _strTest
    bx      lr

_strAddTest:

    push    {r4-r11, lr}

strAddTest_LOOP:

    // loop 1
    add     r2, r2, #1
    str     r2, [r1, #0]
    add     r3, r3, #1
    str     r3, [r1, #4]
    add     r4, r4, #1
    str     r4, [r1, #8]
    add     r5, r5, #1
    str     r5, [r1, #12]
    add     r6, r6, #1
    str     r6, [r1, #16]
    add     r7, r7, #1
    str     r7, [r1, #20]
    add     r8, r8, #1
    str     r8, [r1, #24]
    add     r9, r9, #1
    str     r9, [r1, #28]
    add     r10, r10, #1
    str     r10, [r1, #32]
    add     r11, r11, #1
    str     r11, [r1, #36]
    add     r12, r12, #1
    str     r12, [r1, #40]
    add     r14, r14, #1
    str     r14, [r1, #44]

    // loop 2
    add     r2, r2, #1
    str     r2, [r1, #48]
    add     r3, r3, #1
    str     r3, [r1, #52]
    add     r4, r4, #1
    str     r4, [r1, #56]
    add     r5, r5, #1
    str     r5, [r1, #60]
    add     r6, r6, #1
    str     r6, [r1, #64]
    add     r7, r7, #1
    str     r7, [r1, #68]
    add     r8, r8, #1
    str     r8, [r1, #72]
    add     r9, r9, #1
    str     r9, [r1, #76]
    add     r10, r10, #1
    str     r10, [r1, #80]
    add     r11, r11, #1
    str     r11, [r1, #84]
    add     r12, r12, #1
    str     r12, [r1, #88]
    add     r14, r14, #1
    str     r14, [r1, #92]

    // loop 3
    add     r2, r2, #1
    str     r2, [r1, #96]
    add     r3, r3, #1
    str     r3, [r1, #100]
    add     r4, r4, #1
    str     r4, [r1, #104]
    add     r5, r5, #1
    str     r5, [r1, #108]
    add     r6, r6, #1
    str     r6, [r1, #112]
    add     r7, r7, #1
    str     r7, [r1, #116]
    add     r8, r8, #1
    str     r8, [r1, #120]
    add     r9, r9, #1
    str     r9, [r1, #124]
    add     r10, r10, #1
    str     r10, [r1, #128]
    add     r11, r11, #1
    str     r11, [r1, #132]
    add     r12, r12, #1
    str     r12, [r1, #136]
    add     r14, r14, #1
    str     r14, [r1, #140]

    // loop 4
    add     r2, r2, #1
    str     r2, [r1, #144]
    add     r3, r3, #1
    str     r3, [r1, #148]
    add     r4, r4, #1
    str     r4, [r1, #152]
    add     r5, r5, #1
    str     r5, [r1, #156]
    add     r6, r6, #1
    str     r6, [r1, #160]
    add     r7, r7, #1
    str     r7, [r1, #164]
    add     r8, r8, #1
    str     r8, [r1, #168]
    add     r9, r9, #1
    str     r9, [r1, #172]
    add     r10, r10, #1
    str     r10, [r1, #176]
    add     r11, r11, #1
    str     r11, [r1, #180]
    add     r12, r12, #1
    str     r12, [r1, #184]
    add     r14, r14, #1
    str     r14, [r1, #188]

    // loop 5
    add     r2, r2, #1
    str     r2, [r1, #192]
    add     r3, r3, #1
    str     r3, [r1, #196]
    add     r4, r4, #1
    str     r4, [r1, #200]
    add     r5, r5, #1
    str     r5, [r1, #204]
    add     r6, r6, #1
    str     r6, [r1, #208]
    add     r7, r7, #1
    str     r7, [r1, #212]
    add     r8, r8, #1
    str     r8, [r1, #216]
    add     r9, r9, #1
    str     r9, [r1, #220]
    add     r10, r10, #1
    str     r10, [r1, #224]
    add     r11, r11, #1
    str     r11, [r1, #228]
    add     r12, r12, #1
    str     r12, [r1, #232]
    add     r14, r14, #1
    str     r14, [r1, #236]

    subs    r0, r0, #1
    bne     strAddTest_LOOP
    pop     {r4-r11, pc}

_strL2Test:

    mov     r3, #0x0800

strL2Test_LOOP:

    // loop 1
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 2
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 4
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 5
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    sub     r1, r1, r3, LSL #6
    add     r1, r1, r3, LSL #2
    subs    r0, r0, #1
    bne     strL2Test_LOOP
    bx      lr

_strMemTest:

    mov     r3, #0x80000

strMemTest_LOOP:

    // loop 1
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 2
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 4
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    // loop 5
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3
    add     r2, r2, #1
    str     r2, [r1], r3

    sub     r1, r1, r3, LSL #6
    add     r1, r1, r3, LSL #2
    subs    r0, r0, #1
    bne     strMemTest_LOOP
    bx      lr


_strbTest:

    // loop 1
    strb    r2, [r1, #0]
    strb    r3, [r1, #4]
    strb    r4, [r1, #8]
    strb    r5, [r1, #12]
    strb    r6, [r1, #16]
    strb    r7, [r1, #20]
    strb    r8, [r1, #24]
    strb    r9, [r1, #28]
    strb    r10, [r1, #32]
    strb    r11, [r1, #36]
    strb    r12, [r1, #40]
    strb    r14, [r1, #44]

    // loop 2
    strb    r2, [r1, #48]
    strb    r3, [r1, #52]
    strb    r4, [r1, #56]
    strb    r5, [r1, #60]
    strb    r6, [r1, #64]
    strb    r7, [r1, #68]
    strb    r8, [r1, #72]
    strb    r9, [r1, #76]
    strb    r10, [r1, #80]
    strb    r11, [r1, #84]
    strb    r12, [r1, #88]
    strb    r14, [r1, #92]

    // loop 3
    strb    r2, [r1, #96]
    strb    r3, [r1, #100]
    strb    r4, [r1, #104]
    strb    r5, [r1, #108]
    strb    r6, [r1, #112]
    strb    r7, [r1, #116]
    strb    r8, [r1, #120]
    strb    r9, [r1, #124]
    strb    r10, [r1, #128]
    strb    r11, [r1, #132]
    strb    r12, [r1, #136]
    strb    r14, [r1, #140]

    // loop 4
    strb    r2, [r1, #144]
    strb    r3, [r1, #148]
    strb    r4, [r1, #152]
    strb    r5, [r1, #156]
    strb    r6, [r1, #160]
    strb    r7, [r1, #164]
    strb    r8, [r1, #168]
    strb    r9, [r1, #172]
    strb    r10, [r1, #176]
    strb    r11, [r1, #180]
    strb    r12, [r1, #184]
    strb    r14, [r1, #188]

    // loop 5
    strb    r2, [r1, #192]
    strb    r3, [r1, #196]
    strb    r4, [r1, #200]
    strb    r5, [r1, #204]
    strb    r6, [r1, #208]
    strb    r7, [r1, #212]
    strb    r8, [r1, #216]
    strb    r9, [r1, #220]
    strb    r10, [r1, #224]
    strb    r11, [r1, #228]
    strb    r12, [r1, #232]
    strb    r14, [r1, #236]

    subs    r0, r0, #1
    bne     _strbTest
    bx      lr

_strbAddTest:

    push    {r4-r11, lr}

strbAddTest_LOOP:

    // loop 1
    add     r2, r2, #1
    strb    r2, [r1, #0]
    add     r3, r3, #1
    strb    r3, [r1, #4]
    add     r4, r4, #1
    strb    r4, [r1, #8]
    add     r5, r5, #1
    strb    r5, [r1, #12]
    add     r6, r6, #1
    strb    r6, [r1, #16]
    add     r7, r7, #1
    strb    r7, [r1, #20]
    add     r8, r8, #1
    strb    r8, [r1, #24]
    add     r9, r9, #1
    strb    r9, [r1, #28]
    add     r10, r10, #1
    strb    r10, [r1, #32]
    add     r11, r11, #1
    strb    r11, [r1, #36]
    add     r12, r12, #1
    strb    r12, [r1, #40]
    add     r14, r14, #1
    strb    r14, [r1, #44]

    // loop 2
    add     r2, r2, #1
    strb    r2, [r1, #48]
    add     r3, r3, #1
    strb    r3, [r1, #52]
    add     r4, r4, #1
    strb    r4, [r1, #56]
    add     r5, r5, #1
    strb    r5, [r1, #60]
    add     r6, r6, #1
    strb    r6, [r1, #64]
    add     r7, r7, #1
    strb    r7, [r1, #68]
    add     r8, r8, #1
    strb    r8, [r1, #72]
    add     r9, r9, #1
    strb    r9, [r1, #76]
    add     r10, r10, #1
    strb    r10, [r1, #80]
    add     r11, r11, #1
    strb    r11, [r1, #84]
    add     r12, r12, #1
    strb    r12, [r1, #88]
    add     r14, r14, #1
    strb    r14, [r1, #92]

    // loop 3
    add     r2, r2, #1
    strb    r2, [r1, #96]
    add     r3, r3, #1
    strb    r3, [r1, #100]
    add     r4, r4, #1
    strb    r4, [r1, #104]
    add     r5, r5, #1
    strb    r5, [r1, #108]
    add     r6, r6, #1
    strb    r6, [r1, #112]
    add     r7, r7, #1
    strb    r7, [r1, #116]
    add     r8, r8, #1
    strb    r8, [r1, #120]
    add     r9, r9, #1
    strb    r9, [r1, #124]
    add     r10, r10, #1
    strb    r10, [r1, #128]
    add     r11, r11, #1
    strb    r11, [r1, #132]
    add     r12, r12, #1
    strb    r12, [r1, #136]
    add     r14, r14, #1
    strb    r14, [r1, #140]

    // loop 4
    add     r2, r2, #1
    strb    r2, [r1, #144]
    add     r3, r3, #1
    strb    r3, [r1, #148]
    add     r4, r4, #1
    strb    r4, [r1, #152]
    add     r5, r5, #1
    strb    r5, [r1, #156]
    add     r6, r6, #1
    strb    r6, [r1, #160]
    add     r7, r7, #1
    strb    r7, [r1, #164]
    add     r8, r8, #1
    strb    r8, [r1, #168]
    add     r9, r9, #1
    strb    r9, [r1, #172]
    add     r10, r10, #1
    strb    r10, [r1, #176]
    add     r11, r11, #1
    strb    r11, [r1, #180]
    add     r12, r12, #1
    strb    r12, [r1, #184]
    add     r14, r14, #1
    strb    r14, [r1, #188]

    // loop 5
    add     r2, r2, #1
    strb    r2, [r1, #192]
    add     r3, r3, #1
    strb    r3, [r1, #196]
    add     r4, r4, #1
    strb    r4, [r1, #200]
    add     r5, r5, #1
    strb    r5, [r1, #204]
    add     r6, r6, #1
    strb    r6, [r1, #208]
    add     r7, r7, #1
    strb    r7, [r1, #212]
    add     r8, r8, #1
    strb    r8, [r1, #216]
    add     r9, r9, #1
    strb    r9, [r1, #220]
    add     r10, r10, #1
    strb    r10, [r1, #224]
    add     r11, r11, #1
    strb    r11, [r1, #228]
    add     r12, r12, #1
    strb    r12, [r1, #232]
    add     r14, r14, #1
    strb    r14, [r1, #236]

    subs    r0, r0, #1
    bne     strbAddTest_LOOP
    pop     {r4-r11, pc}

.thumb
.thumb_func
_strdTest:

    // loop 1
    strd    r2, r3, [r1, #0]
    strd    r4, r5, [r1, #8]
    strd    r6, r7, [r1, #16]
    strd    r8, r9, [r1, #24]
    strd    r10, r11, [r1, #32]
    strd    r2, r3, [r1, #40]
    strd    r4, r5, [r1, #48]
    strd    r6, r7, [r1, #56]
    strd    r8, r9, [r1, #64]
    strd    r10, r11, [r1, #72]

    // loop 2
    strd    r2, r3, [r1, #80]
    strd    r4, r5, [r1, #88]
    strd    r6, r7, [r1, #96]
    strd    r8, r9, [r1, #104]
    strd    r10, r11, [r1, #112]
    strd    r2, r3, [r1, #120]
    strd    r4, r5, [r1, #128]
    strd    r6, r7, [r1, #136]
    strd    r8, r9, [r1, #144]
    strd    r10, r11, [r1, #152]

    // loop 3
    strd    r2, r3, [r1, #160]
    strd    r4, r5, [r1, #168]
    strd    r6, r7, [r1, #176]
    strd    r8, r9, [r1, #184]
    strd    r10, r11, [r1, #192]
    strd    r2, r3, [r1, #200]
    strd    r4, r5, [r1, #208]
    strd    r6, r7, [r1, #216]
    strd    r8, r9, [r1, #224]
    strd    r10, r11, [r1, #232]

    // loop 4
    strd    r2, r3, [r1, #240]
    strd    r4, r5, [r1, #248]
    strd    r6, r7, [r1, #256]
    strd    r8, r9, [r1, #264]
    strd    r10, r11, [r1, #272]
    strd    r2, r3, [r1, #280]
    strd    r4, r5, [r1, #288]
    strd    r6, r7, [r1, #296]
    strd    r8, r9, [r1, #304]
    strd    r10, r11, [r1, #312]

    // loop 5
    strd    r2, r3, [r1, #320]
    strd    r4, r5, [r1, #328]
    strd    r6, r7, [r1, #336]
    strd    r8, r9, [r1, #344]
    strd    r10, r11, [r1, #352]
    strd    r2, r3, [r1, #360]
    strd    r4, r5, [r1, #368]
    strd    r6, r7, [r1, #376]
    strd    r8, r9, [r1, #384]
    strd    r10, r11, [r1, #392]

    // loop 6
    strd    r2, r3, [r1, #400]
    strd    r4, r5, [r1, #408]
    strd    r6, r7, [r1, #416]
    strd    r8, r9, [r1, #424]
    strd    r10, r11, [r1, #432]
    strd    r2, r3, [r1, #440]
    strd    r4, r5, [r1, #448]
    strd    r6, r7, [r1, #456]
    strd    r8, r9, [r1, #464]
    strd    r10, r11, [r1, #472]

    subs    r0, r0, #1
    bne.w    _strdTest
    bx      lr

.thumb_func
_strdAddTest:

    push    {r4-r11, lr}

strdAddTest_LOOP:

    // loop 1
    add     r2, r2, r3
    strd    r2, r3, [r1, #0]
    add     r4, r4, r5
    strd    r4, r5, [r1, #8]
    add     r6, r6, r7
    strd    r6, r7, [r1, #16]
    add     r8, r8, r9
    strd    r8, r9, [r1, #24]
    add     r10, r10, r11
    strd    r10, r11, [r1, #32]
    add     r2, r2, r3
    strd    r2, r3, [r1, #40]
    add     r4, r4, r5
    strd    r4, r5, [r1, #48]
    add     r6, r6, r7
    strd    r6, r7, [r1, #56]
    add     r8, r8, r9
    strd    r8, r9, [r1, #64]
    add     r10, r10, r11
    strd    r10, r11, [r1, #72]

    // loop 2
    add     r2, r2, r3
    strd    r2, r3, [r1, #80]
    add     r4, r4, r5
    strd    r4, r5, [r1, #88]
    add     r6, r6, r7
    strd    r6, r7, [r1, #96]
    add     r8, r8, r9
    strd    r8, r9, [r1, #104]
    add     r10, r10, r11
    strd    r10, r11, [r1, #112]
    add     r2, r2, r3
    strd    r2, r3, [r1, #120]
    add     r4, r4, r5
    strd    r4, r5, [r1, #128]
    add     r6, r6, r7
    strd    r6, r7, [r1, #136]
    add     r8, r8, r9
    strd    r8, r9, [r1, #144]
    add     r10, r10, r11
    strd    r10, r11, [r1, #152]

    // loop 3
    add     r2, r2, r3
    strd    r2, r3, [r1, #160]
    add     r4, r4, r5
    strd    r4, r5, [r1, #168]
    add     r6, r6, r7
    strd    r6, r7, [r1, #176]
    add     r8, r8, r9
    strd    r8, r9, [r1, #184]
    add     r10, r10, r11
    strd    r10, r11, [r1, #192]
    add     r2, r2, r3
    strd    r2, r3, [r1, #200]
    add     r4, r4, r5
    strd    r4, r5, [r1, #208]
    add     r6, r6, r7
    strd    r6, r7, [r1, #216]
    add     r8, r8, r9
    strd    r8, r9, [r1, #224]
    add     r10, r10, r11
    strd    r10, r11, [r1, #232]

    // loop 4
    add     r2, r2, r3
    strd    r2, r3, [r1, #240]
    add     r4, r4, r5
    strd    r4, r5, [r1, #248]
    add     r6, r6, r7
    strd    r6, r7, [r1, #256]
    add     r8, r8, r9
    strd    r8, r9, [r1, #264]
    add     r10, r10, r11
    strd    r10, r11, [r1, #272]
    add     r2, r2, r3
    strd    r2, r3, [r1, #280]
    add     r4, r4, r5
    strd    r4, r5, [r1, #288]
    add     r6, r6, r7
    strd    r6, r7, [r1, #296]
    add     r8, r8, r9
    strd    r8, r9, [r1, #304]
    add     r10, r10, r11
    strd    r10, r11, [r1, #312]

    // loop 5
    add     r2, r2, r3
    strd    r2, r3, [r1, #320]
    add     r4, r4, r5
    strd    r4, r5, [r1, #328]
    add     r6, r6, r7
    strd    r6, r7, [r1, #336]
    add     r8, r8, r9
    strd    r8, r9, [r1, #344]
    add     r10, r10, r11
    strd    r10, r11, [r1, #352]
    add     r2, r2, r3
    strd    r2, r3, [r1, #360]
    add     r4, r4, r5
    strd    r4, r5, [r1, #368]
    add     r6, r6, r7
    strd    r6, r7, [r1, #376]
    add     r8, r8, r9
    strd    r8, r9, [r1, #384]
    add     r10, r10, r11
    strd    r10, r11, [r1, #392]

    // loop 6
    add     r2, r2, r3
    strd    r2, r3, [r1, #400]
    add     r4, r4, r5
    strd    r4, r5, [r1, #408]
    add     r6, r6, r7
    strd    r6, r7, [r1, #416]
    add     r8, r8, r9
    strd    r8, r9, [r1, #424]
    add     r10, r10, r11
    strd    r10, r11, [r1, #432]
    add     r2, r2, r3
    strd    r2, r3, [r1, #440]
    add     r4, r4, r5
    strd    r4, r5, [r1, #448]
    add     r6, r6, r7
    strd    r6, r7, [r1, #456]
    add     r8, r8, r9
    strd    r8, r9, [r1, #464]
    add     r10, r10, r11
    strd    r10, r11, [r1, #472]

    subs    r0, r0, #1
    bne.w   strdAddTest_LOOP
    pop     {r4-r11, pc}
    mov     r0, r0

.arm

_strhTest:

    // loop 1
    strh    r2, [r1, #0]
    strh    r3, [r1, #4]
    strh    r4, [r1, #8]
    strh    r5, [r1, #12]
    strh    r6, [r1, #16]
    strh    r7, [r1, #20]
    strh    r8, [r1, #24]
    strh    r9, [r1, #28]
    strh    r10, [r1, #32]
    strh    r11, [r1, #36]
    strh    r12, [r1, #40]
    strh    r14, [r1, #44]

    // loop 2
    strh    r2, [r1, #48]
    strh    r3, [r1, #52]
    strh    r4, [r1, #56]
    strh    r5, [r1, #60]
    strh    r6, [r1, #64]
    strh    r7, [r1, #68]
    strh    r8, [r1, #72]
    strh    r9, [r1, #76]
    strh    r10, [r1, #80]
    strh    r11, [r1, #84]
    strh    r12, [r1, #88]
    strh    r14, [r1, #92]

    // loop 3
    strh    r2, [r1, #96]
    strh    r3, [r1, #100]
    strh    r4, [r1, #104]
    strh    r5, [r1, #108]
    strh    r6, [r1, #112]
    strh    r7, [r1, #116]
    strh    r8, [r1, #120]
    strh    r9, [r1, #124]
    strh    r10, [r1, #128]
    strh    r11, [r1, #132]
    strh    r12, [r1, #136]
    strh    r14, [r1, #140]

    // loop 4
    strh    r2, [r1, #144]
    strh    r3, [r1, #148]
    strh    r4, [r1, #152]
    strh    r5, [r1, #156]
    strh    r6, [r1, #160]
    strh    r7, [r1, #164]
    strh    r8, [r1, #168]
    strh    r9, [r1, #172]
    strh    r10, [r1, #176]
    strh    r11, [r1, #180]
    strh    r12, [r1, #184]
    strh    r14, [r1, #188]

    // loop 5
    strh    r2, [r1, #192]
    strh    r3, [r1, #196]
    strh    r4, [r1, #200]
    strh    r5, [r1, #204]
    strh    r6, [r1, #208]
    strh    r7, [r1, #212]
    strh    r8, [r1, #216]
    strh    r9, [r1, #220]
    strh    r10, [r1, #224]
    strh    r11, [r1, #228]
    strh    r12, [r1, #232]
    strh    r14, [r1, #236]

    subs    r0, r0, #1
    bne     _strhTest
    bx      lr

_strhAddTest:

    push    {r4-r11, lr}

strhAddTest_LOOP:

    // loop 1
    add     r2, r2, #1
    strh    r2, [r1, #0]
    add     r3, r3, #1
    strh    r3, [r1, #4]
    add     r4, r4, #1
    strh    r4, [r1, #8]
    add     r5, r5, #1
    strh    r5, [r1, #12]
    add     r6, r6, #1
    strh    r6, [r1, #16]
    add     r7, r7, #1
    strh    r7, [r1, #20]
    add     r8, r8, #1
    strh    r8, [r1, #24]
    add     r9, r9, #1
    strh    r9, [r1, #28]
    add     r10, r10, #1
    strh    r10, [r1, #32]
    add     r11, r11, #1
    strh    r11, [r1, #36]
    add     r12, r12, #1
    strh    r12, [r1, #40]
    add     r14, r14, #1
    strh    r14, [r1, #44]

    // loop 2
    add     r2, r2, #1
    strh    r2, [r1, #48]
    add     r3, r3, #1
    strh    r3, [r1, #52]
    add     r4, r4, #1
    strh    r4, [r1, #56]
    add     r5, r5, #1
    strh    r5, [r1, #60]
    add     r6, r6, #1
    strh    r6, [r1, #64]
    add     r7, r7, #1
    strh    r7, [r1, #68]
    add     r8, r8, #1
    strh    r8, [r1, #72]
    add     r9, r9, #1
    strh    r9, [r1, #76]
    add     r10, r10, #1
    strh    r10, [r1, #80]
    add     r11, r11, #1
    strh    r11, [r1, #84]
    add     r12, r12, #1
    strh    r12, [r1, #88]
    add     r14, r14, #1
    strh    r14, [r1, #92]

    // loop 3
    add     r2, r2, #1
    strh    r2, [r1, #96]
    add     r3, r3, #1
    strh    r3, [r1, #100]
    add     r4, r4, #1
    strh    r4, [r1, #104]
    add     r5, r5, #1
    strh    r5, [r1, #108]
    add     r6, r6, #1
    strh    r6, [r1, #112]
    add     r7, r7, #1
    strh    r7, [r1, #116]
    add     r8, r8, #1
    strh    r8, [r1, #120]
    add     r9, r9, #1
    strh    r9, [r1, #124]
    add     r10, r10, #1
    strh    r10, [r1, #128]
    add     r11, r11, #1
    strh    r11, [r1, #132]
    add     r12, r12, #1
    strh    r12, [r1, #136]
    add     r14, r14, #1
    strh    r14, [r1, #140]

    // loop 4
    add     r2, r2, #1
    strh    r2, [r1, #144]
    add     r3, r3, #1
    strh    r3, [r1, #148]
    add     r4, r4, #1
    strh    r4, [r1, #152]
    add     r5, r5, #1
    strh    r5, [r1, #156]
    add     r6, r6, #1
    strh    r6, [r1, #160]
    add     r7, r7, #1
    strh    r7, [r1, #164]
    add     r8, r8, #1
    strh    r8, [r1, #168]
    add     r9, r9, #1
    strh    r9, [r1, #172]
    add     r10, r10, #1
    strh    r10, [r1, #176]
    add     r11, r11, #1
    strh    r11, [r1, #180]
    add     r12, r12, #1
    strh    r12, [r1, #184]
    add     r14, r14, #1
    strh    r14, [r1, #188]

    // loop 5
    add     r2, r2, #1
    strh    r2, [r1, #192]
    add     r3, r3, #1
    strh    r3, [r1, #196]
    add     r4, r4, #1
    strh    r4, [r1, #200]
    add     r5, r5, #1
    strh    r5, [r1, #204]
    add     r6, r6, #1
    strh    r6, [r1, #208]
    add     r7, r7, #1
    strh    r7, [r1, #212]
    add     r8, r8, #1
    strh    r8, [r1, #216]
    add     r9, r9, #1
    strh    r9, [r1, #220]
    add     r10, r10, #1
    strh    r10, [r1, #224]
    add     r11, r11, #1
    strh    r11, [r1, #228]
    add     r12, r12, #1
    strh    r12, [r1, #232]
    add     r14, r14, #1
    strh    r14, [r1, #236]

    subs    r0, r0, #1
    bne     strhAddTest_LOOP
    pop     {r4-r11, pc}


_vld1FirstTest:

    // loop 1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 2
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 3
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 4
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 5
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!

    sub         r1, r1, #(60 * 32)
    subs        r0, r0, #1
    bne         _vld1FirstTest
    bx          lr

_vld1AddTest:

    // loop 1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1

    // loop 2
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1

    // loop 3
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1

    // loop 4
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1

    // loop 5
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vld1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1

    sub         r1, r1, #(60 * 32)
    subs        r0, r0, #1
    bne         _vld1AddTest
    bx          lr

_vld1SecondTest:

    // loop 1
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!

    // loop 2
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!

    // loop 3
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!

    // loop 4
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!

    // loop 5
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!
    vld1.32     {d0[0]}, [r1, :32]!

    sub         r1, r1, #(4 * 60)
    subs        r0, r0, #1
    bne         _vld1SecondTest
    bx          lr

_vld1ThirdTest:

    // loop 1
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!

    // loop 2
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!

    // loop 3
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!

    // loop 4
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!

    // loop 5
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!
    vld1.32     {d0[], d1[]}, [r1, :32]!

    sub         r1, r1, #(4 * 60)
    subs        r0, r0, #1
    bne         _vld1ThirdTest
    bx          lr


_vld2FirstTest:

    // loop 1
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 2
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 3
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 4
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 5
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!
    vld2.32     {d0, d1, d2, d3}, [r1, :256]!

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vld2FirstTest
    bx          lr

_vld2SecondTest:

    // loop 1
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!

    // loop 2
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!

    // loop 3
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!

    // loop 4
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!

    // loop 5
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!
    vld2.32     {d0[0], d1[0]}, [r1]!

    sub         r1, r1, #(8 * 60)
    subs        r0, r0, #1
    bne         _vld2SecondTest
    bx          lr

_vld2ThirdTest:

    // loop 1
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!

    // loop 2
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!

    // loop 3
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!

    // loop 4
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!

    // loop 5
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!
    vld2.32     {d0[], d1[]}, [r1]!

    sub         r1, r1, #(8 * 60)
    subs        r0, r0, #1
    bne         _vld2ThirdTest
    bx          lr

_vld3FirstTest:

    // loop 1
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!

    // loop 2
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!

    // loop 3
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!

    // loop 4
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!

    // loop 5
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!
    vld3.32     {d0, d1, d2}, [r1]!

    sub         r1, r1, #(24 * 60)
    subs        r0, r0, #1
    bne         _vld3FirstTest
    bx          lr

_vld3SecondTest:

    // loop 1
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 2
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 3
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 4
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 5
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vld3.32     {d0[0], d1[0], d2[0]}, [r1]!

    sub         r1, r1, #(12 * 60)
    subs        r0, r0, #1
    bne         _vld3SecondTest
    bx          lr

_vld3ThirdTest:

    // loop 1
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!

    // loop 2
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!

    // loop 3
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!

    // loop 4
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!

    // loop 5
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!
    vld3.32     {d0[], d1[], d2[]}, [r1]!

    sub         r1, r1, #(12 * 60)
    subs        r0, r0, #1
    bne         _vld3ThirdTest
    bx          lr


_vld4FirstTest:

    // loop 1
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 2
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 3
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 4
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 5
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!
    vld4.32     {d0, d1, d2, d3}, [r1, :256]!

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vld4FirstTest
    bx          lr

_vld4SecondTest:

    // loop 1
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 2
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 3
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 4
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 5
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vld4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    sub         r1, r1, #(16 * 60)
    subs        r0, r0, #1
    bne         _vld4SecondTest
    bx          lr

_vld4ThirdTest:

    // loop 1
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!

    // loop 2
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!

    // loop 3
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!

    // loop 4
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!

    // loop 5
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!
    vld4.32     {d0[], d1[], d2[], d3[]}, [r1, :128]!

    sub         r1, r1, #(16 * 60)
    subs        r0, r0, #1
    bne         _vld4ThirdTest
    bx          lr


_vldmiaTest:

    // loop 1
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}

    // loop 2
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}

    // loop 3
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}

    // loop 4
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}

    // loop 5
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}
    vldmia.64   r1!, {d0, d1, d2, d3}

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vldmiaTest
    bx          lr


_vldrIntTest:

    vpush.64    {d8-d15}

vldrIntTest_LOOP:

    // loop 1
    vldr        s0, [r1]
    vldr        s1, [r1, #4]
    vldr        s2, [r1, #8]
    vldr        s3, [r1, #12]
    vldr        s4, [r1, #16]
    vldr        s5, [r1, #20]
    vldr        s6, [r1, #24]
    vldr        s7, [r1, #28]
    vldr        s8, [r1, #32]
    vldr        s9, [r1, #36]
    vldr        s10, [r1, #40]
    vldr        s11, [r1, #44]

    // loop 2
    vldr        s1, [r1, #48]
    vldr        s2, [r1, #52]
    vldr        s3, [r1, #56]
    vldr        s4, [r1, #60]
    vldr        s5, [r1, #64]
    vldr        s6, [r1, #68]
    vldr        s7, [r1, #72]
    vldr        s8, [r1, #76]
    vldr        s9, [r1, #80]
    vldr        s10, [r1, #84]
    vldr        s11, [r1, #88]
    vldr        s12, [r1, #92]

    // loop 3
    vldr        s1, [r1, #96]
    vldr        s2, [r1, #100]
    vldr        s3, [r1, #104]
    vldr        s4, [r1, #108]
    vldr        s5, [r1, #112]
    vldr        s6, [r1, #116]
    vldr        s7, [r1, #120]
    vldr        s8, [r1, #124]
    vldr        s9, [r1, #128]
    vldr        s10, [r1, #132]
    vldr        s11, [r1, #136]
    vldr        s12, [r1, #140]

    // loop 4
    vldr        s1, [r1, #144]
    vldr        s2, [r1, #148]
    vldr        s3, [r1, #152]
    vldr        s4, [r1, #156]
    vldr        s5, [r1, #160]
    vldr        s6, [r1, #164]
    vldr        s7, [r1, #168]
    vldr        s8, [r1, #172]
    vldr        s9, [r1, #176]
    vldr        s10, [r1, #180]
    vldr        s11, [r1, #184]
    vldr        s12, [r1, #188]

    // loop 5
    vldr        s1, [r1, #192]
    vldr        s2, [r1, #196]
    vldr        s3, [r1, #200]
    vldr        s4, [r1, #204]
    vldr        s5, [r1, #208]
    vldr        s6, [r1, #212]
    vldr        s7, [r1, #216]
    vldr        s8, [r1, #220]
    vldr        s9, [r1, #224]
    vldr        s10, [r1, #228]
    vldr        s11, [r1, #232]
    vldr        s12, [r1, #236]

    subs        r0, r0, #1
    bne         vldrIntTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vldrIntAddTest:

    vpush.64    {d8-d15}

vldrIntAddTest_LOOP:

    // loop 1
    vldr        s0, [r1, #0]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #4]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #8]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #12]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #16]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #20]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #24]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #28]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #32]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #36]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #40]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #44]
    vadd.f32    s1, s1, s0

    // loop 2
    vldr        s0, [r1, #48]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #52]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #56]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #60]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #64]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #68]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #72]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #76]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #80]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #84]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #88]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #92]
    vadd.f32    s1, s1, s0

    // loop 3
    vldr        s0, [r1, #96]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #100]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #104]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #108]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #112]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #116]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #120]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #124]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #128]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #132]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #136]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #140]
    vadd.f32    s1, s1, s0

    // loop 4
    vldr        s0, [r1, #144]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #148]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #152]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #156]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #160]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #164]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #168]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #172]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #176]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #180]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #184]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #188]
    vadd.f32    s1, s1, s0

    // loop 5
    vldr        s0, [r1, #192]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #196]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #200]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #204]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #208]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #212]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #216]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #220]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #224]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #228]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #232]
    vadd.f32    s1, s1, s0
    vldr        s0, [r1, #236]
    vadd.f32    s1, s1, s0

    subs        r0, r0, #1
    bne         vldrIntAddTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vldrLongTest:

    vpush.64    {d8-d15}

vldrLongTest_LOOP:

    // loop 1
    vldr        d0, [r1, #0]
    vldr        d1, [r1, #8]
    vldr        d2, [r1, #16]
    vldr        d3, [r1, #24]
    vldr        d4, [r1, #32]
    vldr        d5, [r1, #40]
    vldr        d6, [r1, #48]
    vldr        d7, [r1, #56]
    vldr        d8, [r1, #64]
    vldr        d9, [r1, #72]

    // loop 2
    vldr        d0, [r1, #80]
    vldr        d1, [r1, #88]
    vldr        d2, [r1, #96]
    vldr        d3, [r1, #104]
    vldr        d4, [r1, #112]
    vldr        d5, [r1, #120]
    vldr        d6, [r1, #128]
    vldr        d7, [r1, #136]
    vldr        d8, [r1, #144]
    vldr        d9, [r1, #152]

    // loop 3
    vldr        d0, [r1, #160]
    vldr        d1, [r1, #168]
    vldr        d2, [r1, #176]
    vldr        d3, [r1, #184]
    vldr        d4, [r1, #192]
    vldr        d5, [r1, #200]
    vldr        d6, [r1, #208]
    vldr        d7, [r1, #216]
    vldr        d8, [r1, #224]
    vldr        d9, [r1, #232]

    // loop 4
    vldr        d0, [r1, #240]
    vldr        d1, [r1, #248]
    vldr        d2, [r1, #256]
    vldr        d3, [r1, #264]
    vldr        d4, [r1, #272]
    vldr        d5, [r1, #280]
    vldr        d6, [r1, #288]
    vldr        d7, [r1, #296]
    vldr        d8, [r1, #304]
    vldr        d9, [r1, #312]

    // loop 5
    vldr        d0, [r1, #320]
    vldr        d1, [r1, #328]
    vldr        d2, [r1, #336]
    vldr        d3, [r1, #344]
    vldr        d4, [r1, #352]
    vldr        d5, [r1, #360]
    vldr        d6, [r1, #368]
    vldr        d7, [r1, #376]
    vldr        d8, [r1, #384]
    vldr        d9, [r1, #392]

    // loop 6
    vldr        d0, [r1, #400]
    vldr        d1, [r1, #408]
    vldr        d2, [r1, #416]
    vldr        d3, [r1, #424]
    vldr        d4, [r1, #432]
    vldr        d5, [r1, #440]
    vldr        d6, [r1, #448]
    vldr        d7, [r1, #456]
    vldr        d8, [r1, #464]
    vldr        d9, [r1, #472]

    subs        r0, r0, #1
    bne         vldrLongTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vldrLongAddTest:

    // loop 1
    vldr        d0, [r1, #0]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #8]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #16]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #24]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #32]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #40]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #48]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #56]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #64]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #72]
    vadd.f64    d1, d1, d0

    // loop 2
    vldr        d0, [r1, #80]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #88]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #96]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #104]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #112]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #120]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #128]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #136]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #144]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #152]
    vadd.f64    d1, d1, d0

    // loop 3
    vldr        d0, [r1, #160]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #168]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #176]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #184]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #192]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #200]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #208]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #216]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #224]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #232]
    vadd.f64    d1, d1, d0

    // loop 4
    vldr        d0, [r1, #240]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #248]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #256]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #264]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #272]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #280]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #288]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #296]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #304]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #312]
    vadd.f64    d1, d1, d0

    // loop 5
    vldr        d0, [r1, #320]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #328]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #336]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #344]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #352]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #360]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #368]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #376]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #384]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #392]
    vadd.f64    d1, d1, d0

    // loop 6
    vldr        d0, [r1, #400]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #408]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #416]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #424]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #432]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #440]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #448]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #456]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #464]
    vadd.f64    d1, d1, d0
    vldr        d0, [r1, #472]
    vadd.f64    d1, d1, d0

    subs        r0, r0, #1
    bne         _vldrLongAddTest
    bx          lr


_vst1FirstTest:

    // loop 1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 2
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 3
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 4
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 5
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vst1FirstTest
    bx          lr

_vst1AddTest:

    // loop 1
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 2
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 3
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 4
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    // loop 5
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!
    vadd.i32    q0, q0, q1
    vst1.64     {d0, d1, d2, d3}, [r1, :256]!

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vst1AddTest
    bx          lr

_vst1SecondTest:

    // loop 1
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!

    // loop 2
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!

    // loop 3
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!

    // loop 4
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!

    // loop 5
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!
    vst1.32     {d0[0]}, [r1, :32]!

    sub         r1, r1, #(4 * 60)
    subs        r0, r0, #1
    bne         _vst1SecondTest
    bx          lr


_vst2FirstTest:

    // loop 1
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 2
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 3
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 4
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 5
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!
    vst2.32     {d0, d1, d2, d3}, [r1, :256]!

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vst2FirstTest
    bx          lr

_vst2SecondTest:

    // loop 1
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!

    // loop 2
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!

    // loop 3
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!

    // loop 4
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!

    // loop 5
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!
    vst2.32     {d0[0], d1[0]}, [r1]!

    sub         r1, r1, #(8 * 60)
    subs        r0, r0, #1
    bne         _vst2SecondTest
    bx          lr


_vst3FirstTest:

    // loop 1
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!

    // loop 2
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!

    // loop 3
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!

    // loop 4
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!

    // loop 5
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!
    vst3.32     {d0, d1, d2}, [r1]!

    sub         r1, r1, #(24 * 60)
    subs        r0, r0, #1
    bne         _vst3FirstTest
    bx          lr

_vst3SecondTest:

    // loop 1
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 2
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 3
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 4
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!

    // loop 5
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!
    vst3.32     {d0[0], d1[0], d2[0]}, [r1]!

    sub         r1, r1, #(12 * 60)
    subs        r0, r0, #1
    bne         _vst3SecondTest
    bx          lr


_vst4FirstTest:

    // loop 1
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 2
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 3
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 4
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!

    // loop 5
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!
    vst4.32     {d0, d1, d2, d3}, [r1, :256]!

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vst4FirstTest
    bx          lr

_vst4SecondTest:

    // loop 1
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 2
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 3
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 4
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    // loop 5
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!
    vst4.32     {d0[0], d1[0], d2[0], d3[0]}, [r1, :128]!

    sub         r1, r1, #(16 * 60)
    subs        r0, r0, #1
    bne         _vst4SecondTest
    bx          lr


_vstmiaTest:

    // loop 1
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}

    // loop 2
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}

    // loop 3
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}

    // loop 4
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}

    // loop 5
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}
    vstmia.64   r1!, {d0, d1, d2, d3}

    sub         r1, r1, #(32 * 60)
    subs        r0, r0, #1
    bne         _vstmiaTest
    bx          lr


_vstrIntTest:

    vpush.64    {d8-d15}

vstrIntTest_LOOP:

    // loop 1
    vstr        s0, [r1, #0]
    vstr        s1, [r1, #4]
    vstr        s2, [r1, #8]
    vstr        s3, [r1, #12]
    vstr        s4, [r1, #16]
    vstr        s5, [r1, #20]
    vstr        s6, [r1, #24]
    vstr        s7, [r1, #28]
    vstr        s8, [r1, #32]
    vstr        s9, [r1, #36]
    vstr        s10, [r1, #40]
    vstr        s11, [r1, #44]

    // loop 2
    vstr        s0, [r1, #48]
    vstr        s1, [r1, #52]
    vstr        s2, [r1, #56]
    vstr        s3, [r1, #60]
    vstr        s4, [r1, #64]
    vstr        s5, [r1, #68]
    vstr        s6, [r1, #72]
    vstr        s7, [r1, #76]
    vstr        s8, [r1, #80]
    vstr        s9, [r1, #84]
    vstr        s10, [r1, #88]
    vstr        s11, [r1, #92]

    // loop 3
    vstr        s0, [r1, #96]
    vstr        s1, [r1, #100]
    vstr        s2, [r1, #104]
    vstr        s3, [r1, #108]
    vstr        s4, [r1, #112]
    vstr        s5, [r1, #116]
    vstr        s6, [r1, #120]
    vstr        s7, [r1, #124]
    vstr        s8, [r1, #128]
    vstr        s9, [r1, #132]
    vstr        s10, [r1, #136]
    vstr        s11, [r1, #140]

    // loop 4
    vstr        s0, [r1, #144]
    vstr        s1, [r1, #148]
    vstr        s2, [r1, #152]
    vstr        s3, [r1, #156]
    vstr        s4, [r1, #160]
    vstr        s5, [r1, #164]
    vstr        s6, [r1, #168]
    vstr        s7, [r1, #172]
    vstr        s8, [r1, #176]
    vstr        s9, [r1, #180]
    vstr        s10, [r1, #184]
    vstr        s11, [r1, #188]

    // loop 5
    vstr        s0, [r1, #192]
    vstr        s1, [r1, #196]
    vstr        s2, [r1, #200]
    vstr        s3, [r1, #204]
    vstr        s4, [r1, #208]
    vstr        s5, [r1, #212]
    vstr        s6, [r1, #216]
    vstr        s7, [r1, #220]
    vstr        s8, [r1, #224]
    vstr        s9, [r1, #228]
    vstr        s10, [r1, #232]
    vstr        s11, [r1, #236]

    subs        r0, r0, #1
    bne         vstrIntTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vstrIntAddTest:

    vpush.64    {d8-d15}

vstrIntAddTest_LOOP:

    // loop 1
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #0]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #4]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #8]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #12]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #16]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #20]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #24]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #28]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #32]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #36]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #40]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #44]

    // loop 2
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #48]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #52]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #56]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #60]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #64]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #68]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #72]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #76]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #80]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #84]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #88]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #92]

    // loop 3
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #96]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #100]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #104]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #108]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #112]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #116]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #120]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #124]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #128]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #132]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #136]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #140]

    // loop 4
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #144]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #148]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #152]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #156]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #160]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #164]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #168]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #172]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #176]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #180]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #184]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #188]

    // loop 5
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #192]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #196]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #200]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #204]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #208]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #212]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #216]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #220]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #224]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #228]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #232]
    vadd.f32    s0, s0, s1
    vstr        s0, [r1, #236]

    subs        r0, r0, #1
    bne         vstrIntAddTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vstrLongTest:

    vpush.64    {d8-d15}

vstrLongTest_LOOP:

    // loop 1
    vstr        d0, [r1, #0]
    vstr        d1, [r1, #8]
    vstr        d2, [r1, #16]
    vstr        d3, [r1, #24]
    vstr        d4, [r1, #32]
    vstr        d5, [r1, #40]
    vstr        d6, [r1, #48]
    vstr        d7, [r1, #56]
    vstr        d8, [r1, #64]
    vstr        d9, [r1, #72]

    // loop 2
    vstr        d0, [r1, #80]
    vstr        d1, [r1, #88]
    vstr        d2, [r1, #96]
    vstr        d3, [r1, #104]
    vstr        d4, [r1, #112]
    vstr        d5, [r1, #120]
    vstr        d6, [r1, #128]
    vstr        d7, [r1, #136]
    vstr        d8, [r1, #144]
    vstr        d9, [r1, #152]

    // loop 3
    vstr        d0, [r1, #160]
    vstr        d1, [r1, #168]
    vstr        d2, [r1, #176]
    vstr        d3, [r1, #184]
    vstr        d4, [r1, #192]
    vstr        d5, [r1, #200]
    vstr        d6, [r1, #208]
    vstr        d7, [r1, #216]
    vstr        d8, [r1, #224]
    vstr        d9, [r1, #232]

    // loop 4
    vstr        d0, [r1, #240]
    vstr        d1, [r1, #248]
    vstr        d2, [r1, #256]
    vstr        d3, [r1, #264]
    vstr        d4, [r1, #272]
    vstr        d5, [r1, #280]
    vstr        d6, [r1, #288]
    vstr        d7, [r1, #296]
    vstr        d8, [r1, #304]
    vstr        d9, [r1, #312]

    // loop 5
    vstr        d0, [r1, #320]
    vstr        d1, [r1, #328]
    vstr        d2, [r1, #336]
    vstr        d3, [r1, #344]
    vstr        d4, [r1, #352]
    vstr        d5, [r1, #360]
    vstr        d6, [r1, #368]
    vstr        d7, [r1, #376]
    vstr        d8, [r1, #384]
    vstr        d9, [r1, #392]

    // loop 6
    vstr        d0, [r1, #400]
    vstr        d1, [r1, #408]
    vstr        d2, [r1, #416]
    vstr        d3, [r1, #424]
    vstr        d4, [r1, #432]
    vstr        d5, [r1, #440]
    vstr        d6, [r1, #448]
    vstr        d7, [r1, #456]
    vstr        d8, [r1, #464]
    vstr        d9, [r1, #472]

    subs        r0, r0, #1
    bne         vstrLongTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vstrLongAddTest:

    // loop 1
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #0]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #8]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #16]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #24]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #32]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #40]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #48]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #56]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #64]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #72]

    // loop 2
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #80]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #88]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #96]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #104]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #112]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #120]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #128]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #136]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #144]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #152]

    // loop 3
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #160]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #168]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #176]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #184]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #192]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #200]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #208]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #216]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #224]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #232]

    // loop 4
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #240]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #248]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #256]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #264]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #272]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #280]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #288]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #296]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #304]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #312]

    // loop 5
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #320]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #328]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #336]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #344]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #352]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #360]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #368]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #376]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #384]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #392]

    // loop 6
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #400]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #408]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #412]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #424]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #432]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #440]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #448]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #456]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #464]
    vadd.f64    d0, d0, d1
    vstr        d0, [r1, #472]

    subs        r0, r0, #1
    bne         _vstrLongAddTest
    bx          lr


_loadAddStoreNormalTest:

    push    {r4-r8, lr}

loadAddStoreNormalTest_LOOP:

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]


    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]


    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]


    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]


    ldmia   r0!, {r2-r8, r14}
    add     r2, r2, r3
    add     r4, r4, r5
    add     r6, r6, r7
    add     r8, r8, r14
    add     r2, r2, r4
    add     r6, r6, r8
    add     r2, r2, r6
    str     r2, [r0]

    sub     r0, r0, #(32 * 32)
    subs    r1, r1, #1
    bne     loadAddStoreNormalTest_LOOP

    pop     {r4-r8, pc}

_loadAddStoreNeonTest:

    vpush.64    {d8-d15}

loadAddStoreNeonTest_LOOP:

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    mov         r2, r0
    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vld1.64     {d8, d9, d10, d11}, [r0, :256]!
    vld1.64     {d12, d13, d14, d15}, [r0, :256]!
    vadd.i32    q0, q0, q1
    vadd.i32    q2, q2, q3
    vadd.i32    q4, q4, q5
    vadd.i32    q6, q6, q7
    vpadd.i32   d0, d0, d1
    vpadd.i32   d4, d4, d5
    vpadd.i32   d8, d8, d9
    vpadd.i32   d12, d12, d13
    vpadd.i32   d0, d0, d0
    vpadd.i32   d4, d4, d4
    vpadd.i32   d8, d8, d8
    vpadd.i32   d12, d12, d12
    vstr        s0, [r2, #32]
    vstr        s8, [r2, #64]
    vstr        s16, [r2, #96]
    vstr        s24, [r2, #128]

    sub         r0, r0, #(32 * 32)
    subs        r1, r1, #1
    bne         loadAddStoreNeonTest_LOOP
    vpop.64     {d8-d15}
    bx          lr


_loadAddStoreVerticalNormalTest:

    push        {r4-r9, lr}

loadAddStoreVerticalNormalTest_LOOP:

    mov         r12, r0
    add         r14, r0, #32

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    add         r2, r2, r6
    add         r3, r3, r7
    add         r4, r4, r8
    add         r5, r5, r9
    stmia       r12!, {r2-r5}

    sub         r0, r0, #(32 * 32)
    subs        r1, r1, #1
    bne         loadAddStoreVerticalNormalTest_LOOP
    pop         {r4-r9, pc}


_loadAddStoreVerticalSeperateTest:

    push        {r4, lr}

loadAddStoreVerticalSeperateTest_LOOP:

    mov         r12, r0
    add         r14, r0, #32

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    add         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    add         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    sub         r0, r0, #(32 * 32)
    subs        r1, r1, #1
    bne         loadAddStoreVerticalSeperateTest_LOOP
    pop         {r4, pc}


_loadAddStoreVerticalNeonTest:

    vpush.64    {d8-d15}

loadAddStoreVerticalNeonTest_LOOP:

    mov         r2, r0

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vadd.i32    q0, q0, q2
    vadd.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    sub         r0, r0, #(64 * 32)
    subs        r1, r1, #1
    bne         loadAddStoreVerticalNeonTest_LOOP
    vpop.64     {d8-d15}
    bx          lr


_loadMulStoreNormalTest:

    push    {r4-r7, lr}

loadMulStoreNormalTest_LOOP:

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    ldmia   r0!, {r2-r7, r12, r14}
    mul     r2, r2, r3
    mul     r4, r4, r5
    mul     r6, r6, r7
    mul     r12, r12, r14
    mul     r2, r2, r4
    mul     r6, r6, r12
    mul     r2, r2, r6
    str     r2, [r0]

    sub     r0, r0, #(32 * 32)
    subs    r1, r1, #1
    bne     loadMulStoreNormalTest_LOOP
    pop     {r4-r7, pc}


_loadMulStoreVerticalNormalTest:

    push        {r4-r9, lr}

loadMulStoreVerticalNormalTest_LOOP:

    mov         r12, r0
    add         r14, r0, #32

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}
    ldmia       r0!, {r2-r5}
    ldmia       r14!, {r6-r9}
    mul         r2, r2, r6
    mul         r3, r3, r7
    mul         r4, r4, r8
    mul         r5, r5, r9
    stmia       r12!, {r2-r5}

    sub         r0, r0, #(32 * 32)
    subs        r1, r1, #1
    bne         loadMulStoreVerticalNormalTest_LOOP
    pop         {r4-r9, pc}


_loadMulStoreVerticalSeperateTest:

    push        {r4, lr}

loadMulStoreVerticalSeperateTest_LOOP:

    mov         r12, r0
    add         r14, r0, #32

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 1
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 2
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 3
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 4
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 5
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 6
    ldr         r2, [r0], #4
    ldr         r3, [r14], #4
    mul         r2, r2, r3
    str         r2, [r12], #4       // pass 7
    ldr         r3, [r0], #4
    ldr         r4, [r14], #4
    mul         r3, r3, r4
    str         r3, [r12], #4       // pass 8

    sub         r0, r0, #(32 * 32)
    subs        r1, r1, #1
    bne         loadMulStoreVerticalSeperateTest_LOOP
    pop         {r4, pc}


_loadMulStoreVerticalNeonTest:

    vpush.64    {d8-d15}

loadMulStoreVerticalNeonTest_LOOP:

    mov         r2, r0

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    vld1.64     {d0, d1, d2, d3}, [r0, :256]!
    vld1.64     {d4, d5, d6, d7}, [r0, :256]!
    vmul.i32    q0, q0, q2
    vmul.i32    q1, q1, q3
    vstmia.64   r2!, {d0, d1, d2, d3}

    sub         r0, r0, #(64 * 16)
    subs        r1, r1, #1
    bne         loadMulStoreVerticalNeonTest_LOOP
    vpop.64     {d8-d15}
    bx          lr











