//
//  performance.s
//  CPU Dasher
//
//  Created by zenny_chen on 12-9-12.
//
//

.text
.align 2

.globl _neonInt64x64, _neonInt128x128, _neonInt256x256, _neonInt512x512, _neonInt1024x1024
.globl _neonFloat64x64, _neonFloat128x128, _neonFloat256x256, _neonFloat512x512, _neonFloat1024x1024
.globl _duoInt64x64, _duoInt128x128, _duoInt256x256, _duoInt512x512, _duoInt1024x1024
.globl _duoFloat64x64, _duoFloat128x128, _duoFloat256x256, _duoFloat512x512, _duoFloat1024x1024
.globl _normalInt64x64, _normalInt128x128, _normalInt256x256, _normalInt512x512, _normalInt1024x1024
.globl _normalFloat64x64, _normalFloat128x128, _normalFloat256x256, _normalFloat512x512, _normalFloat1024x1024


_neonInt64x64:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    mov     r5, #(64 * 4)   // r5: the constant
    mov     r12, #0         // total column loop count

    // All column loop
neonInt64x64_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #4          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonInt64x64_BUFFERING:
    
    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5
    
    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonInt64x64_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #64     // row loop count

neonInt64x64_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #2      // mult loop count
    veor    q8, q8, q8  // for accumulation

neonInt64x64_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vld1.64     {d18, d19, d20, d21}, [r4, :256]!
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    vld1.64     {d22, d23, d24, d25}, [r9, :256]!
    vadd.s32    q8, q8, q0
    vld1.64     {d8, d9, d10, d11}, [r4, :256]!

    vmul.s32    q9, q9, q11
    vmul.s32    q10, q10, q12
    vadd.s32    q8, q8, q1
    vld1.64     {d0, d1, d2, d3}, [r9, :256]!
    vmla.s32    q9, q4, q0
    vmla.s32    q10, q5, q1
    vadd.s32    q8, q8, q9
    subs        r7, r7, #1
    vadd.s32    q8, q8, q10
    bne         neonInt64x64_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     neonInt64x64_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #64
    bne     neonInt64x64_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_neonInt128x128:

    push {r4-r10, lr}
    vpush.64        {d8-d15}

    mov     r5, #(128 * 4)  // r5: the constant
    mov     r12, #0         // total column loop count

// All column loop
neonInt128x128_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2

    // preload
    pld     [r4]

    mov     r6, r3
    mov     r7, #8          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonInt128x128_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    // preload
    pld     [r4]

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonInt128x128_BUFFERING

    // preload
    pld     [r0]
    pld     [r3]

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #128    // row loop count

neonInt128x128_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #4      // mult loop count
    veor    q8, q8, q8  // for accumulation

neonInt128x128_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vld1.64     {d18, d19, d20, d21}, [r4, :256]!
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    vld1.64     {d22, d23, d24, d25}, [r9, :256]!
    vadd.s32    q8, q8, q0
    vld1.64     {d8, d9, d10, d11}, [r4, :256]!

    vmul.s32    q9, q9, q11
    vmul.s32    q10, q10, q12
    vadd.s32    q8, q8, q1
    vld1.64     {d0, d1, d2, d3}, [r9, :256]!
    vmla.s32    q9, q4, q0
    vmla.s32    q10, q5, q1
    vadd.s32    q8, q8, q9
    subs        r7, r7, #1
    vadd.s32    q8, q8, q10
    bne         neonInt128x128_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     neonInt128x128_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #128
    bne     neonInt128x128_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}
    

_neonInt256x256:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    mov     r5, #(256 * 4)  // r5: the constant
    mov     r12, #0         // total column loop count

    // All column loop
neonInt256x256_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2

    // preload
    pld     [r4]
    
    mov     r6, r3
    mov     r7, #16          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonInt256x256_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    // preload
    pld     [r4]

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonInt256x256_BUFFERING

    // preload
    pld     [r0]
    pld     [r3]

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #256    // row loop count

neonInt256x256_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #8      // mult loop count
    veor    q8, q8, q8  // for accumulation

neonInt256x256_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vld1.64     {d18, d19, d20, d21}, [r4, :256]!
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    vld1.64     {d22, d23, d24, d25}, [r9, :256]!
    vadd.s32    q8, q8, q0
    vld1.64     {d8, d9, d10, d11}, [r4, :256]!

    vmul.s32    q9, q9, q11
    vmul.s32    q10, q10, q12
    vadd.s32    q8, q8, q1
    vld1.64     {d0, d1, d2, d3}, [r9, :256]!
    vmla.s32    q9, q4, q0
    vmla.s32    q10, q5, q1
    vadd.s32    q8, q8, q9
    subs        r7, r7, #1
    vadd.s32    q8, q8, q10
    bne         neonInt256x256_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix

    bne     neonInt256x256_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #256
    bne     neonInt256x256_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop         {r4-r10, pc}


_neonInt512x512:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    mov     r5, #(512 * 4)  // r5: the constant
    mov     r12, #0         // total column loop count

// All column loop
neonInt512x512_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2

    // preload
    pld     [r4]

    mov     r6, r3
    mov     r7, #32          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonInt512x512_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    // preload
    pld     [r4]

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonInt512x512_BUFFERING

    // preload
    pld     [r0]
    pld     [r3]

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #512    // row loop count

neonInt512x512_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #16     // mult loop count
    veor    q8, q8, q8  // for accumulation

neonInt512x512_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vld1.64     {d18, d19, d20, d21}, [r4, :256]!
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    vld1.64     {d22, d23, d24, d25}, [r9, :256]!
    vadd.s32    q8, q8, q0
    vld1.64     {d8, d9, d10, d11}, [r4, :256]!

    vmul.s32    q9, q9, q11
    vmul.s32    q10, q10, q12
    vadd.s32    q8, q8, q1
    vld1.64     {d0, d1, d2, d3}, [r9, :256]!
    vmla.s32    q9, q4, q0
    vmla.s32    q10, q5, q1
    vadd.s32    q8, q8, q9
    subs        r7, r7, #1
    vadd.s32    q8, q8, q10
    bne         neonInt512x512_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     neonInt512x512_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #512
    bne     neonInt512x512_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_neonInt1024x1024:

    push {r4-r10, lr}
    vpush.64        {d8-d15}

    mov     r5, #(1024 * 4)  // r5: the constant
    mov     r12, #0         // total column loop count

    // All column loop
neonInt1024x1024_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #64          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonInt1024x1024_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonInt1024x1024_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #1024    // row loop count

neonInt1024x1024_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #32     // mult loop count
    veor    q8, q8, q8  // for accumulation

neonInt1024x1024_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vld1.64     {d18, d19, d20, d21}, [r4, :256]!
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    vld1.64     {d22, d23, d24, d25}, [r9, :256]!
    vadd.s32    q8, q8, q0
    vld1.64     {d8, d9, d10, d11}, [r4, :256]!

    vmul.s32    q9, q9, q11
    vmul.s32    q10, q10, q12
    vadd.s32    q8, q8, q1
    vld1.64     {d0, d1, d2, d3}, [r9, :256]!
    vmla.s32    q9, q4, q0
    vmla.s32    q10, q5, q1
    vadd.s32    q8, q8, q9
    subs        r7, r7, #1
    vadd.s32    q8, q8, q10
    bne         neonInt1024x1024_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     neonInt1024x1024_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #1024
    bne     neonInt1024x1024_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_neonFloat64x64:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    mov     r5, #(64 * 4)   // r5: the constant
    mov     r12, #0         // total column loop count

// All column loop
neonFloat64x64_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #4          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonFloat64x64_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonFloat64x64_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #64     // row loop count

neonFloat64x64_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #4      // mult loop count
    veor    q8, q8, q8  // for accumulation

neonFloat64x64_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         neonFloat64x64_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     neonFloat64x64_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #64
    bne     neonFloat64x64_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_neonFloat128x128:

    push {r4-r10, lr}
    vpush.64        {d8-d15}

    mov     r5, #(128 * 4)   // r5: the constant
    mov     r12, #0         // total column loop count

// All column loop
neonFloat128x128_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #8          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonFloat128x128_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonFloat128x128_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #128     // row loop count

neonFloat128x128_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #8      // mult loop count
    veor    q8, q8, q8  // for accumulation

neonFloat128x128_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         neonFloat128x128_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     neonFloat128x128_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #128
    bne     neonFloat128x128_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_neonFloat256x256:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    mov     r5, #(256 * 4)   // r5: the constant
    mov     r12, #0         // total column loop count

    // All column loop
neonFloat256x256_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #16          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonFloat256x256_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonFloat256x256_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #256     // row loop count

neonFloat256x256_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #16      // mult loop count
    veor    q8, q8, q8  // for accumulation

neonFloat256x256_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         neonFloat256x256_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     neonFloat256x256_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #256
    bne     neonFloat256x256_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_neonFloat512x512:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    mov     r5, #(512 * 4)   // r5: the constant
    mov     r12, #0         // total column loop count

    // All column loop
neonFloat512x512_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #32          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonFloat512x512_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonFloat512x512_BUFFERING

    // One col to all rows
    mov     r9, r0          // input 1
    mov     r6, #512        // row loop count

neonFloat512x512_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #32     // mult loop count
    veor    q8, q8, q8  // for accumulation

neonFloat512x512_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         neonFloat512x512_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     neonFloat512x512_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #512
    bne     neonFloat512x512_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_neonFloat1024x1024:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    mov     r5, #(1024 * 4)   // r5: the constant
    mov     r12, #0         // total column loop count

    // All column loop
neonFloat1024x1024_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #64          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

neonFloat1024x1024_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     neonFloat1024x1024_BUFFERING

    // One col to all rows
    mov     r9, r0          // input 1
    mov     r6, #1024        // row loop count

neonFloat1024x1024_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #64     // mult loop count
    veor    q8, q8, q8  // for accumulation

neonFloat1024x1024_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         neonFloat1024x1024_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     neonFloat1024x1024_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, #1024
    bne     neonFloat1024x1024_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_duoInt64x64:

    push {r4-r11, lr}
    vpush.64    {d8-d15}

    ldr     r12, [sp, #36]  // total column loop count
    mov     r5, #(64 * 4)   // r5: the constant
    add     r11, r12, #32
    
    // All column loop
duoInt64x64_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #4          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoInt64x64_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoInt64x64_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #64     // row loop count

duoInt64x64_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #4      // mult loop count
    veor    q8, q8, q8  // for accumulation

duoInt64x64_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    subs    r7, r7, #1
    vadd.i32    q0, q0, q1
    vadd.i32    q8, q8, q0      // accumulate values
    bne         duoInt64x64_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     duoInt64x64_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r11
    bne     duoInt64x64_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r11, pc}


_duoInt128x128:

    push {r4-r11, lr}
    vpush.64    {d8-d15}

    ldr     r12, [sp, #36]  // total column loop count
    mov     r5, #(128 * 4)  // r5: the constant
    add     r11, r12, #64

    // All column loop
    duoInt128x128_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #8          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoInt128x128_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoInt128x128_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #128    // row loop count

duoInt128x128_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #8      // mult loop count
    veor    q8, q8, q8  // for accumulation

duoInt128x128_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    subs    r7, r7, #1
    vadd.i32    q0, q0, q1
    vadd.i32    q8, q8, q0      // accumulate values
    bne         duoInt128x128_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     duoInt128x128_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r11
    bne     duoInt128x128_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r11, pc}


_duoInt256x256:

    push {r4-r11, lr}
    vpush.64    {d8-d15}

    ldr     r12, [sp, #36]  // total column loop count
    mov     r5, #(256 * 4)  // r5: the constant
    add     r11, r12, #128

// All column loop
duoInt256x256_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #16          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoInt256x256_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoInt256x256_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #256    // row loop count

duoInt256x256_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #16     // mult loop count
    veor    q8, q8, q8  // for accumulation

duoInt256x256_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    subs    r7, r7, #1
    vadd.i32    q0, q0, q1
    vadd.i32    q8, q8, q0      // accumulate values
    bne         duoInt256x256_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     duoInt256x256_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r11
    bne     duoInt256x256_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r11, pc}


_duoInt512x512:

    push    {r4-r11, lr}
    vpush.64    {d8-d15}

    ldr     r12, [sp, #36]      // total column loop count
    mov     r5, #(512 * 4)      // r5: the constant
    add     r11, r12, #256

    // All column loop
duoInt512x512_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #32          // loop count
    add     r10, r2, r12, LSL #2    // the current output buffer address

duoInt512x512_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoInt512x512_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #512    // row loop count

duoInt512x512_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #32     // mult loop count
    veor    q8, q8, q8  // for accumulation

duoInt512x512_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    subs    r7, r7, #1
    vadd.i32    q0, q0, q1
    vadd.i32    q8, q8, q0      // accumulate values
    bne         duoInt512x512_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     duoInt512x512_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r11
    bne     duoInt512x512_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop     {r4-r11, pc}


_duoInt1024x1024:

    push    {r4-r11, lr}
    vpush.64    {d8-d15}

    ldr     r12, [sp, #36]      // total column loop count
    mov     r5, #(1024 * 4)     // r5: the constant
    add     r11, r12, #512

    // All column loop
duoInt1024x1024_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #64                 // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoInt1024x1024_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoInt1024x1024_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #1024    // row loop count

duoInt1024x1024_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #64     // mult loop count
    veor    q8, q8, q8  // for accumulation

duoInt1024x1024_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.s32    q0, q0, q4
    vmul.s32    q1, q1, q5
    vmla.s32    q0, q2, q6
    vmla.s32    q1, q3, q7
    subs    r7, r7, #1
    vadd.i32    q0, q0, q1
    vadd.i32    q8, q8, q0      // accumulate values
    bne         duoInt1024x1024_ONECOL_ONEROW

    vpadd.i32   d0, d16, d17
    subs        r6, r6, #1
    vmov.32     r8, d0[0]
    vmov.32     r14, d0[1]
    add     r8, r8, r14
    str     r8, [r10], r5       // write to destination matrix
    bne     duoInt1024x1024_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r11
    bne     duoInt1024x1024_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop     {r4-r11, pc}


_duoFloat64x64:

    push {r4-r10, lr}
    vpush.64    {d8-d15}

    ldr     r12, [sp, #32]      // total column loop count
    mov     r5, #(64 * 4)       // r5: the constant
    add     r14, r12, #32

// All column loop
duoFloat64x64_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #4                  // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoFloat64x64_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoFloat64x64_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #64     // row loop count

duoFloat64x64_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #4      // mult loop count
    veor    q8, q8, q8  // for accumulation

duoFloat64x64_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         duoFloat64x64_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     duoFloat64x64_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r14
    bne     duoFloat64x64_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_duoFloat128x128:

    ldr     r12, [sp, #0]       // total column loop count
    push    {r4-r10, lr}
    vpush.64    {d8-d15}
    mov     r5, #(128 * 4)      // r5: the constant
    add     r14, r12, #64

    // All column loop
duoFloat128x128_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #8                  // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoFloat128x128_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoFloat128x128_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #128     // row loop count

duoFloat128x128_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #8      // mult loop count
    veor    q8, q8, q8  // for accumulation

duoFloat128x128_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         duoFloat128x128_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     duoFloat128x128_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r14
    bne     duoFloat128x128_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_duoFloat256x256:

    ldr     r12, [sp, #0]       // total column loop count
    push    {r4-r10, lr}
    vpush.64    {d8-d15}
    mov     r5, #(256 * 4)      // r5: the constant
    add     r14, r12, #128

    // All column loop
duoFloat256x256_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #16          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoFloat256x256_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoFloat256x256_BUFFERING

    // One col to all rows
    mov     r9, r0      // input 1
    mov     r6, #256     // row loop count

duoFloat256x256_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #16      // mult loop count
    veor    q8, q8, q8  // for accumulation

duoFloat256x256_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         duoFloat256x256_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     duoFloat256x256_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r14
    bne     duoFloat256x256_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_duoFloat512x512:

    ldr     r12, [sp, #0]       // total column loop count
    push    {r4-r10, lr}
    vpush.64    {d8-d15}
    mov     r5, #(512 * 4)      // r5: the constant
    add     r14, r12, #256

    // All column loop
duoFloat512x512_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #32          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoFloat512x512_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoFloat512x512_BUFFERING

    // One col to all rows
    mov     r9, r0          // input 1
    mov     r6, #512        // row loop count

duoFloat512x512_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #32     // mult loop count
    veor    q8, q8, q8  // for accumulation

duoFloat512x512_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         duoFloat512x512_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     duoFloat512x512_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r14
    bne     duoFloat512x512_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop {r4-r10, pc}


_duoFloat1024x1024:

    ldr     r12, [sp, #0]       // total column loop count
    push    {r4-r10, lr}
    vpush.64    {d8-d15}
    mov     r5, #(1024 * 4)     // r5: the constant
    add     r14, r12, #512

    // All column loop
duoFloat1024x1024_ALL_COL_LOOP:

    // Memory Access optimization
    add     r4, r1, r12, LSL #2
    mov     r6, r3
    mov     r7, #64          // loop count

    add     r10, r2, r12, LSL #2    // the current output buffer address

duoFloat1024x1024_BUFFERING:

    vldr.32     s0, [r4]
    add     r4, r4, r5
    vldr.32     s1, [r4]
    add     r4, r4, r5
    vldr.32     s2, [r4]
    add     r4, r4, r5
    vldr.32     s3, [r4]
    add     r4, r4, r5

    vldr.32     s4, [r4]
    add     r4, r4, r5
    vldr.32     s5, [r4]
    add     r4, r4, r5
    vldr.32     s6, [r4]
    add     r4, r4, r5
    vldr.32     s7, [r4]
    add     r4, r4, r5

    vldr.32     s8, [r4]
    add     r4, r4, r5
    vldr.32     s9, [r4]
    add     r4, r4, r5
    vldr.32     s10, [r4]
    add     r4, r4, r5
    vldr.32     s11, [r4]
    add     r4, r4, r5

    vldr.32     s12, [r4]
    add     r4, r4, r5
    vldr.32     s13, [r4]
    add     r4, r4, r5
    vldr.32     s14, [r4]
    add     r4, r4, r5
    vldr.32     s15, [r4]
    add     r4, r4, r5

    subs    r7, r7, #1

    vst1.64     {d0, d1, d2, d3}, [r6, :256]!
    vst1.64     {d4, d5, d6, d7}, [r6, :256]!

    bne     duoFloat1024x1024_BUFFERING

    // One col to all rows
    mov     r9, r0          // input 1
    mov     r6, #1024       // row loop count

duoFloat1024x1024_ONE_WHOLE_ROW:

    mov     r4, r3      // buffer
    mov     r7, #64     // mult loop count
    veor    q8, q8, q8  // for accumulation

duoFloat1024x1024_ONECOL_ONEROW:

    vld1.64     {d0, d1, d2, d3}, [r4, :256]!
    vld1.64     {d4, d5, d6, d7}, [r4, :256]!
    vld1.64     {d8, d9, d10, d11}, [r9, :256]!
    vld1.64     {d12, d13, d14, d15}, [r9, :256]!

    vmul.f32    q0, q0, q4
    vmul.f32    q1, q1, q5
    vmla.f32    q0, q2, q6
    vmla.f32    q1, q3, q7
    subs    r7, r7, #1
    vadd.f32    q0, q0, q1
    vadd.f32    q8, q8, q0      // accumulate values
    bne         duoFloat1024x1024_ONECOL_ONEROW

    vpadd.f32   d0, d16, d17
    subs        r6, r6, #1
    vadd.f32    s0, s0, s1
    vmov.32     r8, d0[0]
    str     r8, [r10], r5       // write to destination matrix
    bne     duoFloat1024x1024_ONE_WHOLE_ROW

    add     r12, r12, #1
    cmp     r12, r14
    bne     duoFloat1024x1024_ALL_COL_LOOP

    vpop.64     {d8-d15}
    pop     {r4-r10, pc}


_normalInt64x64:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(64 * 4)  // row stride

    // All column loop
normalInt64x64_ALL_COL_LOOP:

    mov     r4, #(64 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalInt64x64_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalInt64x64_BUFFERING_LOOP

    // For all row loop
    mov     r4, #64                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalInt64x64_ALL_ROW_LOOP:

    mov     r7, #(64 / 2)           // calculation loop count
    mov     r6, #0                  // for sum

normalInt64x64_ONE_ROW_LOOP:

    ldrd    r8, r9, [r0], #8
    ldrd    r10, r11, [r3], #8
    mul     r8, r8, r10
    subs    r7, r7, #1
    mla     r9, r9, r11, r8
    add     r6, r6, r9
    bne     normalInt64x64_ONE_ROW_LOOP

    str     r6, [r5], r14
    sub     r3, r3, r14
    subs    r4, r4, #1
    bne     normalInt64x64_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #64
    sub     r0, r0, #(64 * 64 * 4)
    bne     normalInt64x64_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalInt128x128:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(128 * 4)  // row stride

    // All column loop
normalInt128x128_ALL_COL_LOOP:

    mov     r4, #(128 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalInt128x128_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalInt128x128_BUFFERING_LOOP

    // For all row loop
    mov     r4, #128                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalInt128x128_ALL_ROW_LOOP:

    mov     r7, #(128 / 2)           // calculation loop count
    mov     r6, #0                  // for sum

normalInt128x128_ONE_ROW_LOOP:

    ldrd    r8, r9, [r0], #8
    ldrd    r10, r11, [r3], #8
    mul     r8, r8, r10
    subs    r7, r7, #1
    mla     r9, r9, r11, r8
    add     r6, r6, r9
    bne     normalInt128x128_ONE_ROW_LOOP

    str     r6, [r5], r14
    sub     r3, r3, r14
    subs    r4, r4, #1
    bne     normalInt128x128_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #128
    sub     r0, r0, #(128 * 128 * 4)
    bne     normalInt128x128_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalInt256x256:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(256 * 4)  // row stride

    // All column loop
normalInt256x256_ALL_COL_LOOP:

    mov     r4, #(256 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalInt256x256_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalInt256x256_BUFFERING_LOOP

    // For all row loop
    mov     r4, #256                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalInt256x256_ALL_ROW_LOOP:

    mov     r7, #(256 / 4)           // calculation loop count
    mov     r6, #0                  // for sum

normalInt256x256_ONE_ROW_LOOP:

    ldmia   r0!, {r8, r9}
    ldmia   r3!, {r10, r11}
    mla     r6, r8, r10, r6
    mul     r9, r11, r9
    ldmia   r3!, {r10, r11}
    add     r6, r6, r9
    ldmia   r0!, {r8, r9}
    mla     r6, r8, r10, r6
    mul     r9, r11, r9
    subs    r7, r7, #1
    add     r6, r6, r9
    bne     normalInt256x256_ONE_ROW_LOOP

    str     r6, [r5], r14
    sub     r3, r3, r14
    subs    r4, r4, #1
    bne     normalInt256x256_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #256
    sub     r0, r0, #(256 * 256 * 4)
    bne     normalInt256x256_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalInt512x512:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(512 * 4)  // row stride

    // All column loop
normalInt512x512_ALL_COL_LOOP:

    mov     r4, #(512 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalInt512x512_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalInt512x512_BUFFERING_LOOP

    // For all row loop
    mov     r4, #512                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalInt512x512_ALL_ROW_LOOP:

    mov     r7, #(512 / 2)           // calculation loop count
    mov     r6, #0                  // for sum

normalInt512x512_ONE_ROW_LOOP:

    ldrd    r8, r9, [r0], #8
    ldrd    r10, r11, [r3], #8
    mul     r8, r8, r10
    subs    r7, r7, #1
    mla     r9, r9, r11, r8
    add     r6, r6, r9
    bne     normalInt512x512_ONE_ROW_LOOP

    str     r6, [r5], r14
    sub     r3, r3, r14
    subs    r4, r4, #1
    bne     normalInt512x512_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #512
    sub     r0, r0, #(512 * 512 * 4)
    bne     normalInt512x512_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalInt1024x1024:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(1024 * 4)  // row stride

    // All column loop
normalInt1024x1024_ALL_COL_LOOP:

    mov     r4, #(1024 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalInt1024x1024_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalInt1024x1024_BUFFERING_LOOP

    // For all row loop
    mov     r4, #1024                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalInt1024x1024_ALL_ROW_LOOP:

    mov     r7, #(1024 / 2)           // calculation loop count
    mov     r6, #0                  // for sum

normalInt1024x1024_ONE_ROW_LOOP:

    ldrd    r8, r9, [r0], #8
    ldrd    r10, r11, [r3], #8
    mul     r8, r8, r10
    subs    r7, r7, #1
    mla     r9, r9, r11, r8
    add     r6, r6, r9
    bne     normalInt1024x1024_ONE_ROW_LOOP

    str     r6, [r5], r14
    sub     r3, r3, r14
    subs    r4, r4, #1
    bne     normalInt1024x1024_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #1024
    sub     r0, r0, #(1024 * 1024 * 4)
    bne     normalInt1024x1024_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalFloat64x64:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(64 * 4)  // row stride

    // All column loop
normalFloat64x64_ALL_COL_LOOP:

    mov     r4, #(64 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalFloat64x64_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalFloat64x64_BUFFERING_LOOP

    // For all row loop
    mov     r4, #64                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalFloat64x64_ALL_ROW_LOOP:

    mov     r7, #(64 / 2)           // calculation loop count
    fsubs   s0, s0, s0              // for sum

normalFloat64x64_ONE_ROW_LOOP:

    flds    s2, [r0]
    flds    s3, [r0, #4]
    flds    s4, [r3]
    flds    s5, [r3, #4]
    fmuls   s2, s2, s4
    subs    r7, r7, #1
    add     r0, r0, #8
    fmacs   s2, s3, s5
    add     r3, r3, #8
    fadds   s0, s0, s2
    bne     normalFloat64x64_ONE_ROW_LOOP

    fsts    s0, [r5]
    sub     r3, r3, r14
    add     r5, r5, r14
    subs    r4, r4, #1
    bne     normalFloat64x64_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #64
    sub     r0, r0, #(64 * 64 * 4)
    bne     normalFloat64x64_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalFloat128x128:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(128 * 4)  // row stride

    // All column loop
normalFloat128x128_ALL_COL_LOOP:

    mov     r4, #(128 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalFloat128x128_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalFloat128x128_BUFFERING_LOOP

    // For all row loop
    mov     r4, #128                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalFloat128x128_ALL_ROW_LOOP:

    mov     r7, #(128 / 2)           // calculation loop count
    fsubs   s0, s0, s0              // for sum

normalFloat128x128_ONE_ROW_LOOP:

    flds    s2, [r0]
    flds    s3, [r0, #4]
    flds    s4, [r3]
    flds    s5, [r3, #4]
    fmuls   s2, s2, s4
    subs    r7, r7, #1
    add     r0, r0, #8
    fmacs   s2, s3, s5
    add     r3, r3, #8
    fadds   s0, s0, s2
    bne     normalFloat128x128_ONE_ROW_LOOP

    fsts    s0, [r5]
    sub     r3, r3, r14
    add     r5, r5, r14
    subs    r4, r4, #1
    bne     normalFloat128x128_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #128
    sub     r0, r0, #(128 * 128 * 4)
    bne     normalFloat128x128_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalFloat256x256:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(256 * 4)  // row stride

    // All column loop
normalFloat256x256_ALL_COL_LOOP:

    mov     r4, #(256 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalFloat256x256_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalFloat256x256_BUFFERING_LOOP

    // For all row loop
    mov     r4, #256                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalFloat256x256_ALL_ROW_LOOP:

    mov     r7, #(256 / 2)           // calculation loop count
    fsubs   s0, s0, s0              // for sum

normalFloat256x256_ONE_ROW_LOOP:

    flds    s2, [r0]
    flds    s3, [r0, #4]
    flds    s4, [r3]
    flds    s5, [r3, #4]
    fmuls   s2, s2, s4
    subs    r7, r7, #1
    add     r0, r0, #8
    fmacs   s2, s3, s5
    add     r3, r3, #8
    fadds   s0, s0, s2
    bne     normalFloat256x256_ONE_ROW_LOOP

    fsts    s0, [r5]
    sub     r3, r3, r14
    add     r5, r5, r14
    subs    r4, r4, #1
    bne     normalFloat256x256_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #256
    sub     r0, r0, #(256 * 256 * 4)
    bne     normalFloat256x256_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalFloat512x512:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(512 * 4)  // row stride

    // All column loop
normalFloat512x512_ALL_COL_LOOP:

    mov     r4, #(512 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalFloat512x512_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalFloat512x512_BUFFERING_LOOP

    // For all row loop
    mov     r4, #512                 // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalFloat512x512_ALL_ROW_LOOP:

    mov     r7, #(512 / 2)           // calculation loop count
    fsubs   s0, s0, s0              // for sum

normalFloat512x512_ONE_ROW_LOOP:

    flds    s2, [r0]
    flds    s3, [r0, #4]
    flds    s4, [r3]
    flds    s5, [r3, #4]
    fmuls   s2, s2, s4
    subs    r7, r7, #1
    add     r0, r0, #8
    fmacs   s2, s3, s5
    add     r3, r3, #8
    fadds   s0, s0, s2
    bne     normalFloat512x512_ONE_ROW_LOOP

    fsts    s0, [r5]
    sub     r3, r3, r14
    add     r5, r5, r14
    subs    r4, r4, #1
    bne     normalFloat512x512_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #512
    sub     r0, r0, #(512 * 512 * 4)
    bne     normalFloat512x512_ALL_COL_LOOP

    pop     {r4-r11, pc}


_normalFloat1024x1024:

    push    {r4-r11, lr}

    mov     r12, #0         // Column loop count
    mov     r14, #(1024 * 4)  // row stride

    // All column loop
normalFloat1024x1024_ALL_COL_LOOP:

    mov     r4, #(1024 / 4)           // buffering loop count
    mov     r10, r3                 // Init buffer address
    add     r5, r1, r12, LSL #2     // Init mat 2 column address

normalFloat1024x1024_BUFFERING_LOOP:

    ldr     r6, [r5], r14
    ldr     r7, [r5], r14
    ldr     r8, [r5], r14
    ldr     r9, [r5], r14
    subs    r4, r4, #1
    stmia   r10!, {r6-r9}
    bne     normalFloat1024x1024_BUFFERING_LOOP

    // For all row loop
    mov     r4, #1024               // row loop count
    add     r5, r2, r12, LSL #2     // output init address

normalFloat1024x1024_ALL_ROW_LOOP:

    mov     r7, #(1024 / 2)         // calculation loop count
    fsubs   s0, s0, s0              // for sum

normalFloat1024x1024_ONE_ROW_LOOP:

    flds    s2, [r0]
    flds    s3, [r0, #4]
    flds    s4, [r3]
    flds    s5, [r3, #4]
    fmuls   s2, s2, s4
    subs    r7, r7, #1
    add     r0, r0, #8
    fmacs   s2, s3, s5
    add     r3, r3, #8
    fadds   s0, s0, s2
    bne     normalFloat1024x1024_ONE_ROW_LOOP

    fsts    s0, [r5]
    sub     r3, r3, r14
    add     r5, r5, r14
    subs    r4, r4, #1
    bne     normalFloat1024x1024_ALL_ROW_LOOP

    add     r12, r12, #1
    cmp     r12, #1024
    sub     r0, r0, #(1024 * 1024 * 4)
    bne     normalFloat1024x1024_ALL_COL_LOOP

    pop     {r4-r11, pc}









