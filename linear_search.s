//
//  linear_search.s
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-14.
//
//

.text
.align 4

.globl _LinearSearchProcARMv6, _LinearSearchProcNEON

.arm


// size_t LinearSearchProcARMv6(const int *pSrc, size_t length, size_t targetValue)
_LinearSearchProcARMv6:

    push    {r4-r10, lr}

    // r12 = target value
    mov     r12, r2

    // r1 = counter = length / 8
    mov     r1, r1, LSR #3
    mov     r14, #0             // as a sequential index

LinearSearchProcARMv6_LOOP:

    ldmia   r0!, {r3-r10}

    cmp     r3, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH
    cmp     r4, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH
    cmp     r5, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH
    cmp     r6, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH
    cmp     r7, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH
    cmp     r8, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH
    cmp     r9, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH
    cmp     r10, r12
    beq     LinearSearchProcARMv6_COMPARE_FINISH

    subs    r1, r1, #1
    add     r14, r14, #8
    bne     LinearSearchProcARMv6_LOOP

LinearSearchProcARMv6_COMPARE_FINISH:

    mov     r0, #-1
    mov     r2, r0

    cmp     r3, r12
    moveq   r0, #0
    cmp     r4, r12
    moveq   r0, #1
    cmp     r5, r12
    moveq   r0, #2
    cmp     r6, r12
    moveq   r0, #3
    cmp     r7, r12
    moveq   r0, #4
    cmp     r8, r12
    moveq   r0, #5
    cmp     r9, r12
    moveq   r0, #6
    cmp     r10, r12
    moveq   r0, #7

    cmp     r0, r2
    addne   r0, r0, r14

    pop     {r4-r10, pc}


// size_t LinearSearchProcARMv6(const int *pSrc, size_t length, size_t targetValue)
_LinearSearchProcNEON:

    push    {r4-r5, lr}
    vpush.64    {d8-d15}

    mov     r12, #0             // r12 used for sequential counter
    mov     r1, r1, LSR #4      // r1 = counter = length / 16
    vdup.32 q8, r2              // q8 as the target value vector
    veor    q9, q9              // q9 as all zero vector

LinearSearchProcNEON_LOOP:

    vld1.64     {d0, d1, d2, d3}, [r0, :128]!
    vld1.64     {d4, d5, d6, d7}, [r0, :128]!

    vceq.i32    q4, q0, q8
    vceq.i32    q5, q1, q8
    vshrn.i32   d8, q4, #16
    vshrn.i32   d10, q5, #16

    // first, unzip d8(q4)
    vuzp.8      d8, d18

    vceq.i32    q6, q2, q8
    vceq.i32    q7, q3, q8

    // second, unzip d10(q5)
    vuzp.8      d10, d19

    vshrn.i32   d12, q6, #16
    vshrn.i32   d14, q7, #16

    // third, unzip d12
    vuzp.8      d12, d18

    vmov.32     r3, d8[0]       // get first vector
    vmov.32     r14, d10[0]     // get second vector

    // last, unzip d14
    vuzp.8      d14, d19

    cmp         r3, #0
    bne         LinearSearchProcNEON_FINISH

    vmov.32     r4, d12[0]      // get third vector
    vmov.32     r5, d14[0]      // get last vector

    cmp         r14, #0
    bne         LinearSearchProcNEON_FINISH
    cmp         r4, #0
    bne         LinearSearchProcNEON_FINISH
    cmp         r5, #0
    bne         LinearSearchProcNEON_FINISH

    subs        r1, r1, #1
    add         r12, r12, #16
    bne         LinearSearchProcNEON_LOOP

LinearSearchProcNEON_FINISH:

    mov     r0, #-1
    mov     r2, r0

    // compare first vector
    tst     r3, #0xff
    movne   r0, #0
    tst     r3, #0xff00
    movne   r0, #1
    tst     r3, #0x00ff0000
    movne   r0, #2
    tst     r3, #0xff000000
    movne   r0, #3

    // compare second vector
    tst     r14, #0xff
    movne   r0, #4
    tst     r14, #0xff00
    movne   r0, #5
    tst     r14, #0x00ff0000
    movne   r0, #6
    tst     r14, #0xff000000
    movne   r0, #7

    // compare third vector
    tst     r4, #0xff
    movne   r0, #8
    tst     r4, #0xff00
    movne   r0, #9
    tst     r4, #0x00ff0000
    movne   r0, #10
    tst     r4, #0xff000000
    movne   r0, #11

    // compare last vector
    tst     r5, #0xff
    movne   r0, #12
    tst     r5, #0xff00
    movne   r0, #13
    tst     r5, #0x00ff0000
    movne   r0, #14
    tst     r5, #0xff000000
    movne   r0, #15

    cmp     r0, r2
    addne   r0, r0, r12

    vpop.64 {d8-d15}
    pop     {r4-r5, pc}



