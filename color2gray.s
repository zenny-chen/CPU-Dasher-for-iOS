//
//  color2gray.s
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-17.
//
//

.text
.align 4
.globl _ZennyColor2Gray, _ZennyColor2GrayNEON, _ZennyAtomAddBefore


// void ZennyColor2Gray(void *pDstBuffer, const void *pSrcBuffer, size_t nPixels)
_ZennyColor2Gray:

    push    {r4-r11, lr}

    mov     r2, r2, LSR #1          // r2 = nPixels / 2;
    mov     r12, #25                // B
    mov     r14, #129
    orr     r12, r12, r14, LSL #16  // r12 = GB constant
    mov     r3, #298
    mov     r14, #66
    orr     r14, r14, r3, LSL #16   // r14 = 298 | R constant
    mov     r10, #128               // r10 = 128
    mov     r3, #255                // r3 = alpha value(0xFF)

ZennyColor2Gray_LOOP:

    ldmia   r1!, {r4, r5}           // read 2 pixels

    and     r6, r4, r3              // r6 = first pixel B component
    and     r7, r3, r4, LSR #8      // r7 = first pixel G component
    and     r4, r3, r4, LSR #16     // r4 = first pixel R component

    and     r8, r5, r3              // r8 = second pixel B component
    and     r9, r3, r5, LSR #8      // r9 = second pixel G component
    and     r5, r3, r5, LSR #16     // r5 = second pixel R component

    smlabb  r6, r6, r12, r10        // b0 = b0 * 25 + 128
    smlabb  r8, r8, r12, r10        // b1 = b1 * 25 + 128
    smlabt  r7, r7, r12, r6         // g0 = g0 * 129 + b0
    smlabt  r9, r9, r12, r8         // g1 = g1 * 129 + b1
    smlabb  r4, r4, r14, r7         // r0 = y0 = r0 * 66 + g0
    smlabb  r5, r5, r14, r9         // r1 = y1 = r1 * 66 + g1

    mov     r4, r4, ASR #8          // y0 >>= 8
    mov     r5, r5, ASR #8          // y1 >>= 8

    smlabt  r4, r4, r14, r10        // y0 = y0 * 298 + 128
    smlabt  r5, r5, r14, r10        // y1 = y1 * 298 + 128

    mov     r4, r4, ASR #8
    mov     r5, r5, ASR #8

    // clamp
    cmp     r4, r3
    movhi   r4, r3
    cmp     r5, r3
    movhi   r5, r3

    // synthesize
    orr     r6, r4, r4, LSL #8
    orr     r7, r5, r5, LSL #8
    orr     r6, r4, r6, LSL #8
    orr     r7, r5, r7, LSL #8
    orr     r6, r6, r3, LSL #24
    orr     r7, r7, r3, LSL #24

    subs    r2, r2, #1
    stmia   r0!, {r6, r7}
    bne     ZennyColor2Gray_LOOP

    mov     r0, #0

    pop     {r4-r11, pc}


_ZennyColor2GrayNEON:

    push    {r4-r11, lr}
    vpush.64    {d8-d15}

    mov     r2, r2, LSR #3          // r2 = nPixels / 8
    mov     r3, #25
    mov     r12, #129
    vdup.32 q12, r3                 // q12 = B constant
    vdup.32 q13, r12                // q13 = G constant
    mov     r3, #66
    mov     r12, #128
    vdup.32 q14, r3                 // q14 = R constant
    vdup.32 q15, r12                // q15 = 128 constant
    mov     r3, #298
    mov     r12, #255
    vdup.32 q11, r3                 // q11 = 298 constant
    vdup.32 q10, r12                // q10 = alpha value(0xFF)

ZennyColor2GrayNEON_LOOP:

    vld1.64     {d0, d1, d2, d3}, [r1, :256]!

    vand        q2, q0, q10         // q2 = b0
    vand        q5, q1, q10         // q5 = b1
    vshr.u32    q3, q0, #8          // q3 = g0
    vshr.u32    q6, q1, #8          // q6 = g1
    vand        q3, q3, q10
    vand        q6, q6, q10
    vshr.u32    q0, q0, #16         // q0 = r0
    vshr.u32    q1, q1, #16         // q1 = r1
    vand        q0, q0, q10
    vand        q1, q1, q10

    vmul.s32    q2, q2, q12         // b0 = b0 * 25
    vmul.s32    q5, q5, q12         // b1 = b1 * 25
    vmla.s32    q2, q3, q13         // b0 += g0 * 129
    vmla.s32    q5, q6, q13         // b1 += g1 * 129
    vmla.s32    q2, q0, q14         // b0 += r0 * 66
    vmla.s32    q5, q1, q14         // b1 += r1 * 66
    vadd.i32    q2, q2, q15         // q2 = y0 = b0 + 128
    vadd.i32    q3, q5, q15         // q3 = y1 = b1 + 128

    vshr.s32    q2, q2, #8          // y0 >>= 8
    vshr.s32    q3, q3, #8          // y1 >>= 8

    vmul.s32    q2, q2, q11         // y0 *= 298
    vmul.s32    q3, q3, q11         // y1 *= 298
    vadd.i32    q2, q2, q15         // y0 += 128
    vadd.i32    q3, q3, q15         // y0 += 128
    vshr.s32    q2, q2, #8          // y0 >>= 8
    vshr.s32    q3, q3, #8          // y1 >>= 8

    // clamp
    vmin.s32    q2, q2, q10
    vmin.s32    q3, q3, q10

    // synthesize
    vshl.i32    q0, q2, #8          // q0 = r0 << 8
    vshl.i32    q1, q3, #8          // q1 = r1 << 8
    vorr        q0, q0, q2
    vorr        q1, q1, q3
    vshl.i32    q0, q0, #8
    vshl.i32    q1, q1, #8
    vorr        q0, q0, q2
    vorr        q1, q1, q3
    vshl.i32    q2, q10, #24        // q2 = vector 0xff000000
    vorr        q0, q0, q2          // r0 |= alpha
    vorr        q1, q1, q2          // r1 |= alpha

    subs        r2, r2, #1
    vst1.64     {d0, d1, d2, d3}, [r0, :256]!
    bne         ZennyColor2GrayNEON_LOOP

    vpop.64     {d8-d15}
    pop     {r4-r11, pc}


// int ZennyAtomAddBefore(volatile int *pValue, int incValue)
_ZennyAtomAddBefore:

    ldrex   r2, [r0]
    add     r12, r2, r1
    strex   r3, r12, [r0]
    cmp     r3, #0
    beq     ZennyAtomAddBefore_FINISH

    yield

    b       _ZennyAtomAddBefore

ZennyAtomAddBefore_FINISH:

    mov     r0, r2
    bx      lr








