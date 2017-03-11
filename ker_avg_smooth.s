//
//  ker_avg_smooth.s
//  CPU Dasher
//
//  Created by zenny_chen on 13-5-7.
//
//

.text
.align 4
.arm
.globl _KernelSmooth3x3Opt, _KernelSmooth3x3NEON, _KernelSmooth3x3DuoCore

// void KernelSmooth3x3Opt(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth)
_KernelSmooth3x3Opt:

    push    {r4-r11, lr}
    sub     sp, sp, #32

    str     r2, [sp, #24]           // save heightSWidth to sp[6]

    mov     r12, #0xffff
    mov     r3, r2, LSR #16         // r3 = height
    and     r2, r2, r12             // r2 = width
    str     r0, [sp, #8]            // save pDstImage to sp[2]
    str     r1, [sp, #28]           // save pSrcImage to sp[7]
    sub     r3, r3, #2              // height -= 2
    add     r0, r0, #4              // pDstImage += 4

    mov     r10, #0xff
    orr     r14, r10, r10, LSL #16  // r14 = 0x00ff00ff

KernelSmooth3x3Opt_ROWLOOP:

    add     r1, r1, r2, LSL #2      // currentRowIndex += nBytesPerRow
    add     r0, r0, r2, LSL #2      // pDstImage += nBytesPerRow
    mov     r11, #0                 // r11 = column index begins with the 1st pixel

KernelSmooth3x3Opt_COLLOOP:

    add     r12, r1, r11            // r12 = cursor = currentRowIndex + col

    /** For the first pixel */

    // fetch upper row data
    sub     r12, r12, r2, LSL #2    // cursor -= nBytesPerRow
    ldmia   r12, {r4-r7}
    and     r8, r10, r5, LSR #8     // r8 = G1
    and     r9, r10, r6, LSR #8     // r9 = G2
    str     r4, [sp]                // save upper left to sp[0]
    str     r7, [sp, #12]           // save upper right to sp[3]
    and     r5, r5, r14             // r5 = R1B1
    and     r6, r6, r14             // r6 = R2B2
    add     r8, r8, r9              // r8 = G1 += G2
    add     r12, r12, r2, LSL #2    // cursor += nBytesPerRow
    uadd16  r5, r5, r6              // r5 = R1B1 += R2B2

    // fetch center row
    ldmia   r12, {r4, r6, r7, r9}
    str     r4, [sp, #4]            // save center left to sp[1]
    str     r9, [sp, #16]           // save center right to sp[4]
    and     r4, r10, r6, LSR #8     // r4 = G1
    and     r9, r10, r7, LSR #8     // r9 = G2
    add     r12, r12, r2, LSL #2    // cursor += nBytesPerRow
    and     r6, r6, r14             // r6 = R1B1
    and     r7, r7, r14             // r7 = R2B2
    uadd16  r5, r5, r6              // sumup r5 += R1B1
    add     r4, r4, r9              // g1 += g2
    uadd16  r5, r5, r7              // sumup r5 += R2B2
    add     r8, r8, r4              // sumup r8 += g1

    // fetch next row
    ldmia   r12, {r4, r6, r7, r9}
    str     r9, [sp, #20]           // save next right to sp[5]
    and     r9, r10, r6, LSR #8     // r9 = G1
    and     r12, r10, r7, LSR #8    // r12 = G2
    and     r6, r6, r14             // r6 = R1B1
    and     r7, r7, r14             // r7 = R2B2
    uadd16  r5, r5, r6              // r5 = RB += R1B1
    add     r9, r9, r12             // G1 += G2
    uadd16  r5, r5, r7              // r5 = RB += R2B2
    add     r8, r8, r9              // r8 = G += G1

    // synthesize
    ldr     r7, [sp, #0]            // r7 = upperleft
    and     r6, r10, r4, LSR #8     // r6 = G0
    and     r4, r4, r14             // r4 = R0B0
    and     r9, r10, r7, LSR #8     // r9 = G0
    and     r7, r7, r14             // r7 = R0B0
    uadd16  r4, r4, r5              // r4 = R0B0 += RB
    add     r6, r6, r8              // r6 = G0 += G
    uadd16  r4, r4, r7              // r4 += r7
    ldr     r7, [sp, #4]            // r7 = centerleft
    add     r6, r6, r9              // r6 += r9
    and     r9, r10, r7, LSR #8     // r9 = G0
    and     r7, r7, r14             // r7 = R0B0
    add     r6, r6, r9
    mov     r10, #7282
    uadd16  r4, r4, r7
    smulwb  r6, r10, r6             // r6 = G * 7282 / 65536
    smulwt  r9, r10, r4             // r9 = R * 7282 / 65536
    smulwb  r4, r10, r4             // r4 = B * 7282 / 65536

    mov     r10, #0xff              // r10 = 0xff
    ldr     r7, [sp, #12]           // r7 = upper right A3R3G3B3
    orr     r4, r4, r6, LSL #8      // r4 = dst0 = B | (G << 8)
    orr     r4, r4, r9, LSL #16     // r4 |= R << 16
    orr     r4, r4, r10, LSL #24    // r4 |= A << 24

    and     r9, r10, r7, LSR #8     // r9 = G3
    and     r6, r7, r14             // r6 = R3B3
    add     r8, r8, r9              // r8 = G += G3
    ldr     r7, [sp, #16]           // r7 = center right A3R3G3B3
    uadd16  r5, r5, r6              // r5 = RB += R3B3
    and     r9, r10, r7, LSR #8
    and     r6, r7, r14
    add     r8, r8, r9
    ldr     r7, [sp, #20]
    uadd16  r5, r5, r6
    and     r9, r10, r7, LSR #8
    and     r6, r7, r14
    add     r8, r8, r9
    mov     r10, #7282
    uadd16  r5, r5, r6
    smulwb  r8, r10, r8             // r8 = G
    smulwt  r9, r10, r5             // r9 = R
    smulwb  r5, r10, r5             // r5 = B

    add     r12, r0, r11            // r12 = pDstImage + col
    mov     r10, #0xff
    orr     r5, r5, r8, LSL #8      // dst1 = B | (G << 8)
    add     r11, r11, #8            // col += 2
    orr     r5, r5, r9, LSL #16     // dst1 |= R << 16
    mov     r7, r2, LSL #2          // r7 = nBytesPerRow
    orr     r5, r5, r10, LSL #24    // dst1 |= A << 24
    sub     r7, r7, #8              // r7 -= 8
    stmia   r12, {r4, r5}           // write to pDstImage[col]
    cmp     r11, r7
    bne     KernelSmooth3x3Opt_COLLOOP

    subs    r3, r3, #1
    bne     KernelSmooth3x3Opt_ROWLOOP

    // process first & last line pixels
    ldr     r0, [sp, #8]            // load pDstImage to sp[2]
    ldr     r1, [sp, #28]           // load pSrcImage to sp[7]
    ldr     r2, [sp, #24]           // reload heightWidth
    blx     KernelSmooth3x3OptFirstLastLine

    // process corners
    blx     KernelSmooth3x3OptCorners

    // process side edges
    blx     KernelSmooth3x3OptSideEdges

    add     sp, sp, #32
    pop     {r4-r11, pc}


KernelSmooth3x3OptFirstLastLine:

    push    {r0-r2, r4-r11, lr}
    sub     sp, sp, #20

    mov     r12, #0xffff
    mov     r3, r2, LSR #16         // r3 = height
    and     r2, r2, r12             // r2 = width

    str     r1, [sp, #12]           // save pSrcImage to sp[3]

    // Because the process follows general optimal process,
    // Cache may be better reused if it begins from the last line
    mov     r12, r2, LSL #2         // r12 = width * 4
    mov     r14, #0xff              // r14 = 0xff
    mul     r12, r3, r12            // r12 *= height, the total bytes
    add     r0, r0, #4              // pDstImage += 4
    sub     r12, r12, r2, LSL #3    // r12 = total bytes - 4 * width * 2, r12 points to the second last line
    str     r0, [sp, #16]           // save pDstImage to sp[4]
    add     r1, r1, r12             // r1 = pSrcImage + r12
    add     r0, r0, r12             // pDstImage += r12
    orr     r12, r14, r14, LSL #16  // r12 = 0x00ff00ff
    add     r0, r0, r2, LSL #2      // pDstImage += width * 4, pDstImage points to the last line
    mov     r3, #2                  // r3 = row counter

KernelSmooth3x3OptFirstLastLine_ROWLOOP:

    sub     r11, r2, #2             // r11 = column counter = width - 2

KernelSmooth3x3OptFirstLastLine_COLLOOP:

    // process up row
    ldmia   r1, {r4-r7}
    add     r10, r1, r2, LSL #2     // cursor = &pSrcImage[width]
    stmia   sp, {r4, r7}            // upper left save to sp[0]; upper right save to sp[1]
    and     r8, r14, r5, LSR #8     // r8 = G0
    and     r9, r14, r6, LSR #8     // r9 = G1
    and     r5, r5, r12             // r5 = R0B0
    and     r6, r6, r12             // r6 = R1B1
    add     r8, r8, r9              // r8 = G = G0 + G1
    uadd16  r5, r5, r6              // r5 = RB = R0B0 + R1B1

    // process down row
    ldmia   r10, {r4, r6, r7, r9}
    str     r9, [sp, #8]            // down right save to sp[2]
    and     r10, r14, r6, LSR #8    // r10 = G0
    and     r9, r14, r7, LSR #8     // r9 = G1
    and     r6, r6, r12             // r6 = R0B0
    and     r7, r7, r12             // r7 = R1B1
    add     r9, r9, r10             // r9 = G0 + G1
    uadd16  r6, r6, r7              // r6 = R0B0 + R1B1

    add     r8, r8, r9              // synthesize r8 = G
    uadd16  r5, r5, r6              // synthesize r5 = RB
    ldr     r9, [sp, #0]            // r9 = upper left

    and     r7, r14, r4, LSR #8     // r7 = G0
    and     r4, r4, r12             // r4 = R0B0
    and     r6, r14, r9, LSR #8     // r6 = G0
    and     r9, r9, r12             // r9 = R0B0
    add     r6, r6, r7              // r6 as G0
    uadd16  r4, r4, r9              // r4 as R0B0

    // sum-up first pixel
    add     r6, r6, r8
    movw    r10, #10923
    uadd16  r4, r4, r5
    smulwb  r6, r10, r6             // r6 = G
    smulwb  r7, r10, r4             // r7 = B
    smulwt  r4, r10, r4             // r4 = R
    orr     r7, r7, r6, LSL #8      // r7 as dst0
    orr     r7, r7, r4, LSL #16
    ldr     r6, [sp, #4]            // r6 = upper right
    orr     r7, r7, r14, LSL #24

    and     r9, r14, r6, LSR #8     // r9 = G1
    and     r6, r6, r12             // r6 = R1B1
    ldr     r4, [sp, #8]            // r4 = down right
    add     r8, r8, r9              // G += G1
    uadd16  r5, r5, r6              // RB += R1B1
    and     r9, r14, r4, LSR #8     // r9 = G1
    and     r4, r4, r12             // r4 = R1B1

    // sum-up second pixel
    add     r8, r8, r9
    uadd16  r5, r5, r4
    smulwb  r8, r10, r8             // r8 as G
    smulwb  r4, r10, r5             // r4 as B
    smulwt  r5, r10, r5             // r5 as R
    orr     r9, r4, r8, LSL #8      // r9 as dst2
    add     r1, r1, #8              // pSrcImage += 2
    orr     r9, r9, r5, LSL #16
    subs    r11, r11, #2
    orr     r9, r9, r14, LSL #24

    // write to pDstImage
    stmia   r0!, {r7, r9}
    bne     KernelSmooth3x3OptFirstLastLine_COLLOOP

    subs    r3, r3, #1
    ldrne   r1, [sp, #12]
    ldrne   r0, [sp, #16]
    bne     KernelSmooth3x3OptFirstLastLine_ROWLOOP

    add     sp, sp, #20
    pop     {r0-r2, r4-r11, pc}


KernelSmooth3x3OptCorners:

    push    {r0-r2, r4-r11, lr}

    movw    r12, #0xffff
    mov     r3, r2, LSR #16             // r3 = height
    and     r2, r2, r12                 // r2 = width
    mov     r12, #0xff                  // r12 = 0xff
    orr     r14, r12, r12, LSL #16      // r14 = 0x00ff00ff

    // process top left pixel
    ldrd    r4, r5, [r1]                // fetch top left pixel
    add     r11, r1, r2, LSL #2         // r11 points to next line = pSrcImage + width * 4
    and     r6, r12, r4, LSR #8         // r6 = G0
    and     r4, r4, r14                 // r4 = R0B0
    ldrd    r8, r9, [r11]
    and     r7, r12, r5, LSR #8         // r7 = G1
    and     r5, r5, r14                 // r5 = R1B1
    add     r6, r6, r7                  // r6 = G = G0 + G1
    uadd16  r4, r4, r5                  // r4 = RB = R0B0 + R1B1
    and     r10, r12, r8, LSR #8        // r10 = G0
    and     r8, r8, r14                 // r8 = R0B0
    and     r7, r12, r9, LSR #8         // r7 = G1
    and     r9, r9, r14                 // r9 = R1B1
    add     r7, r10, r7                 // r7 = G = G0 + G1
    uadd16  r8, r8, r9                  // r8 = RB = R0B0 + R1B1
    // synthesize
    add     r6, r6, r7                  // sum-up G
    uadd16  r4, r4, r8                  // sum-up RB
    sub     r11, r11, #8                // r11 points to first line second last element
    mov     r6, r6, LSR #2              // r6 = G / 4
    mov     r7, r4, LSR #(16 + 2)       // r7 = R / 4
    and     r4, r12, r4, LSR #2         // r4 = B / 4
    ldrd    r8, r9, [r11]               // fetch top right pixel
    orr     r4, r4, r6, LSL #8          // r4 = dst = B | (G << 8)
    orr     r4, r4, r7, LSL #16         // dst |= R << 16
    mov     r2, r2, LSL #2              // r2 = width * 4
    orr     r4, r4, r12, LSL #24        // dst |= A << 24
    str     r4, [r0]

    // process top right pixel
    and     r5, r12, r8, LSR #8         // r5 = G0
    and     r8, r8, r14                 // r8 = R0B0
    ldrd    r6, r7, [r11, r2]           // fetch next line pixel
    and     r4, r12, r9, LSR #8         // r4 = G1
    and     r9, r9, r14                 // r9 = R1B1
    add     r4, r4, r5                  // r4 = G = G1 + G0
    uadd16  r8, r8, r9                  // r8 = RB = R0B0 + R1B1
    and     r5, r12, r6, LSR #8         // r5 = G0
    and     r6, r6, r14                 // r6 = R0B0
    and     r9, r12, r7, LSR #8         // r9  G1
    and     r7, r7, r14                 // r7 = R1B1
    add     r5, r5, r9                  // r5 = G = G0 + G1
    uadd16  r6, r6, r7                  // r6 = RB = R0B0 + R1B1

    // synthesize
    add     r4, r4, r5                  // r4 = G
    uadd16  r6, r6, r8                  // r6 = RB
    mov     r4, r4, LSR #2              // r4 = G / 4
    and     r5, r12, r6, LSR #2         // r5 = B / 4
    mov     r6, r6, LSR #(16 + 2)       // r6 = R / 4
    orr     r5, r5, r4, LSL #8
    mul     r10, r3, r2                 // r10 = height * width * 4
    orr     r5, r5, r6, LSL #16
    sub     r11, r2, #4                 // r11 = width * 4 - 4
    orr     r5, r5, r12, LSL #24
    sub     r10, r10, r2                // r10 = cursor = width * 4 * (height - 1)
    str     r5, [r0, r11]

    add     r1, r1, r10                 // pSrcImage += cursor
    add     r0, r0, r10                 // pDstImage += cursor

    // Process bottom left pixel
    ldrd    r4, r5, [r1, -r2]           // fetch upper line pixels
    and     r6, r12, r4, LSR #8         // r6 = G0
    and     r4, r4, r14                 // r4 = R0B0
    and     r7, r12, r5, LSR #8         // r7 = G1
    and     r5, r5, r14                 // r5 = R1B1
    ldrd    r8, r9, [r1]                // fetch current line pixels
    add     r6, r6, r7                  // r6 = G0 += G1
    uadd16  r4, r4, r5                  // r4 = R0B0 += RB1
    and     r7, r12, r8, LSR #8         // r7 = G0
    and     r8, r8, r14                 // r8 = R0B0
    and     r5, r12, r9, LSR #8         // r5 = G1
    and     r9, r9, r14                 // r9 = R1B1
    add     r7, r7, r5                  // r7 = G0 += G1
    uadd16  r8, r8, r9                  // r8 = R0B0 += R1B1
    // synthesize
    add     r6, r6, r7                  // sum-up G
    uadd16  r4, r4, r8                  // sum-up RB
    mov     r6, r6, LSR #2              // r6 = G /= 4
    and     r5, r12, r4, LSR #2         // r5 = B / 4
    mov     r4, r4, LSR #(16 + 2)       // r4 = R / 4
    orr     r5, r5, r6, LSL #8          // r5 = dst = B | (G << 8)
    add     r1, r1, r2                  // pSrcImage += width * 4
    orr     r5, r5, r4, LSL #16         // dst |= (R << 16)
    sub     r1, r1, #8                  // pSrcImage -= 2
    orr     r5, r5, r12, LSL #24        // dst |= (A << 24)
    ldrd    r6, r7, [r1, -r2]           // fetch upper line pixels
    str     r5, [r0], r2                // store dst and pDstImage += width * 4

    // process bottom right pixels
    and     r4, r12, r6, LSR #8         // r4 = G0
    and     r6, r6, r14                 // r6 = R0B0
    and     r5, r12, r7, LSR #8         // r5 = G1
    and     r7, r7, r14                 // r7 = R1B1
    ldrd    r8, r9, [r1]                // fetch current line pixels
    add     r4, r4, r5                  // r4 = G
    uadd16  r6, r6, r7                  // r6 = RB
    and     r5, r12, r8, LSR #8         // r5 = G0
    and     r8, r8, r14                 // r8 = R0B0
    and     r7, r12, r9, LSR #8         // r7 = G1
    and     r9, r9, r14                 // r9 = R1B1
    add     r5, r5, r7                  // r5 = G
    uadd16  r8, r8, r9                  // r8 = RB
    // synthesize
    add     r4, r4, r5
    uadd16  r6, r6, r8
    mov     r4, r4, LSR #2              // r4 = G / 4
    and     r5, r12, r6, LSR #2         // r5 = B / 4
    mov     r6, r6, LSR #(16 + 2)       // r6 = R / 4
    orr     r5, r5, r4, LSL #8
    orr     r5, r5, r6, LSL #16
    orr     r5, r5, r12, LSL #24
    str     r5, [r0, #-4]

    pop     {r0-r2, r4-r11, pc}


KernelSmooth3x3OptSideEdges:

    push    {r4-r11, lr}

    movw    r12, #0xffff
    mov     r3, r2, LSR #16             // r3 = height
    and     r2, r2, r12                 // r2 = width
    mov     r12, r12, LSR #8            // r12 = 0xff
    mov     r2, r2, LSL #2              // r2 = width * 4
    sub     r3, r3, #2                  // r3 = height - 2
    add     r1, r1, r2                  // r1 = pSrcImage + width * 4
    add     r0, r0, r2                  // r0 = pDstImage + width * 4
    orr     r14, r12, r12, LSL #16      // r14 = 0x00ff00ff

KernelSmooth3x3OptSideEdges_LOOP:

    // process left side pixel
    ldrd    r4, r5, [r1, -r2]           // fetch upper line pixels
    and     r6, r12, r4, LSR #8         // r6 = G0
    and     r4, r4, r14                 // r4 = R0B0
    ldrd    r8, r9, [r1]                // fetch current line pixels
    and     r7, r12, r5, LSR #8         // r7 = G1
    and     r5, r5, r14                 // r5 = R1B1
    add     r6, r6, r7                  // r6 = G
    uadd16  r4, r4, r5                  // r4 = RB
    and     r7, r12, r8, LSR #8         // r7 = G0
    and     r8, r8, r14                 // r8 = R0B0
    ldrd    r10, r11, [r1, r2]          // fetch next line pixels
    and     r5, r12, r9, LSR #8         // r5 = G1
    and     r9, r9, r14                 // r9 = R1B1
    add     r5, r7, r5                  // r5 = G
    uadd16  r8, r8, r9                  // r8 = RB
    add     r6, r6, r5                  // r6 = G
    uadd16  r4, r4, r8                  // r4 = RB
    and     r5, r12, r10, LSR #8        // r5 = G0
    and     r10, r10, r14               // r10 = R0B0
    and     r7, r12, r11, LSR #8        // r7 = G1
    and     r11, r11, r14               // r11 = R1B1
    add     r5, r5, r7                  // r5 = G
    uadd16  r10, r10, r11               // r10 = RB
    add     r6, r6, r5                  // r6 = G
    uadd16  r4, r4, r10                 // r4 = RB
    // synthesize
    movw    r11, #10923
    smulwb  r6, r11, r6                 // r6 = avg(G)
    smulwb  r5, r11, r4                 // r5 = avg(B)
    add     r1, r1, r2                  // pSrcImage += width * 4
    smulwt  r7, r11, r4                 // r7 = avg(R)
    sub     r1, r1, #8                  // pSrcImage -= 8
    orr     r6, r5, r6, LSL #8          // r6 = dst = B | (G << 8)
    ldrd    r4, r5, [r1, -r2]           // fetch upper line pixels
    orr     r6, r6, r7, LSL #16         // dst |= R << 16
    orr     r6, r6, r12, LSL #24        // dst |= A << 24
    str     r6, [r0], r2                // store dst to pDstImage, and pDstImage += width * 4
    sub     r0, r0, #4                  // pDstImage -= 4

    // process right side pixel
    and     r6, r12, r4, LSR #8         // r6 = G0
    and     r4, r4, r14                 // r4 = R0B0
    ldrd    r8, r9, [r1]                // fetch current line pixels
    and     r7, r12, r5, LSR #8         // r7 = G1
    and     r5, r5, r14                 // r5 = R1B1
    add     r6, r6, r7                  // r6 = G
    uadd16  r4, r4, r5                  // r4 = RB
    and     r7, r12, r8, LSR #8         // r7 = G0
    and     r8, r8, r14                 // r8 = R0B0
    ldrd    r10, r11, [r1, r2]          // fetch next line pixels
    and     r5, r12, r9, LSR #8         // r5 = G1
    and     r9, r9, r14                 // r9 = R1B1
    add     r5, r7, r5                  // r5 = G
    uadd16  r8, r8, r9                  // r8 = RB
    add     r6, r6, r5                  // r6 = G
    uadd16  r4, r4, r8                  // r4 = RB
    and     r5, r12, r10, LSR #8        // r5 = G0
    and     r10, r10, r14               // r10 = R0B0
    and     r7, r12, r11, LSR #8        // r7 = G1
    and     r11, r11, r14               // r11 = R1B1
    add     r5, r5, r7                  // r5 = G
    uadd16  r10, r10, r11               // r10 = RB
    add     r6, r6, r5                  // r6 = G
    uadd16  r4, r4, r10                 // r4 = RB
    // synthesize
    movw    r11, #10923
    smulwb  r6, r11, r6                 // r6 = avg(G)
    smulwb  r5, r11, r4                 // r5 = avg(B)
    add     r1, r1, #8                  // pSrcImage += 8
    smulwt  r7, r11, r4                 // r7 = avg(R)
    orr     r6, r5, r6, LSL #8          // r6 = dst = B | (G << 8)
    subs    r3, r3, #1                  // height--
    orr     r6, r6, r7, LSL #16         // dst |= R << 16
    orr     r6, r6, r12, LSL #24        // dst |= A << 24
    str     r6, [r0], #4                // store dst to pDstImage, and pDstImage += 4
    bne     KernelSmooth3x3OptSideEdges_LOOP

    pop     {r4-r11, pc}


_KernelSmooth3x3NEON:

    push        {r4-r6, lr}
    vpush.64    {d8-d15}
    sub         sp, sp, #8

    movw        r12, #0xffff
    str         r0, [sp]                // save pDstImage to sp[0]
    str         r1, [sp, #4]            // save pSrcImage to sp[1]
    mov         r3, r2, LSR #16         // r3 = height
    and         r2, r2, r12             // r2 = width

    add         r0, r0, r2, LSL #2      // pDstImage += width * 4
    add         r1, r1, r2, LSL #2      // pSrcImage += widht * 4
    add         r0, r0, #16             // pDstImage += 16; begins at the 4th pixel
    add         r1, r1, #16             // pSrcImage += 16; begins at the 4th pixel

    mov         r5, #0xff000000
    veor        d18, d18, d18
    mov         r4, r2, LSL #2          // r4 = width * 4
    vmov.32     d18[0], r5              // d18 = 0x00000000_ff000000
    sub         r12, r3, #2             // r12 = row loop count = height - 2
    mov         r14, #7282
    sub         r5, r1, r4              // r5 points to upper line
    add         r6, r1, r4              // r6 points to next line
    vdup.16     q15, r14                // d30 = 7282 vector constant

KernelSmooth3x3NEON_ROWLOOP:

    sub         r14, r2, #8             // r14 = col loop count = width - 8
    mov         r14, r14, LSR #2        // r14 /= 4

KernelSmooth3x3NEON_COLLOOP:

    // fetch upper line
    vldr.32     s0, [r5, #-4]
    vld4.32     {d2[0], d4[0], d6[0], d8[0]}, [r5, :128]
    vldr.32     s20, [r5, #16]

    // fetch current line
    vldr.32     s24, [r1, #-4]
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r1, :128]
    vldr.32     s28, [r1, #16]

    // vertically add the upper line with current line
    vaddl.u8    q0, d0, d12
    vaddl.u8    q1, d2, d22
    vldr.32     s24, [r6, #-4]          // fetch next line left
    vaddl.u8    q2, d4, d24
    vaddl.u8    q3, d6, d26
    vaddl.u8    q4, d8, d28
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r6, :128]    // fetch next line center
    vaddl.u8    q5, d10, d14
    vldr.32     s28, [r6, #16]          // fetch next line right

    vaddw.u8    q0, q0, d12
    vaddw.u8    q1, q1, d22
    vaddw.u8    q2, q2, d24
    vaddw.u8    q3, q3, d26
    vaddw.u8    q4, q4, d28
    vaddw.u8    q5, q5, d14

    vadd.i16    d2, d2, d4
    vadd.i16    d8, d8, d6
    vadd.i16    d0, d0, d2              // d0 = dst0
    vadd.i16    d12, d2, d6             // d12 = dst1
    vadd.i16    d14, d8, d4             // d14 = dst2
    vadd.i16    d10, d8, d10            // d10 = dst3

    vmull.u16   q0, d0, d30             // q0 = dst0
    vmull.u16   q1, d12, d30            // q1 = dst1
    vmull.u16   q2, d14, d30            // q2 = dst2
    vmull.u16   q3, d10, d30            // q3 = dst3
    vshrn.u32   d0, q0, #16
    vshrn.u32   d2, q1, #16
    vshrn.u32   d4, q2, #16
    vshrn.u32   d6, q3, #16
    vmovn.i16   d0, q0
    vmovn.i16   d2, q1
    vmovn.i16   d4, q2
    vmovn.i16   d6, q3
    vorr        d0, d0, d18
    vorr        d2, d2, d18
    vorr        d4, d4, d18
    vorr        d6, d6, d18
    vst4.32     {d0[0], d2[0], d4[0], d6[0]}, [r0, :128]

    add         r5, r5, #16
    add         r1, r1, #16
    add         r6, r6, #16
    subs        r14, r14, #1
    add         r0, r0, #16
    bne         KernelSmooth3x3NEON_COLLOOP

    add         r5, r5, #32
    add         r1, r1, #32
    add         r6, r6, #32
    subs        r12, r12, #1
    add         r0, r0, #32
    bne         KernelSmooth3x3NEON_ROWLOOP

    ldr         r0, [sp]                // load pDstImage to sp[0]
    ldr         r1, [sp, #4]            // load pSrcImage to sp[1]
    add         sp, sp, #8

    // process remain edge pixels
    blx         KernelSmooth3x3NEON_Edges

    // process first line pixels
    mov         r12, #0                 // r12 = 0, means process the first line
    blx         KernelSmooth3x3NEON_FirstOrLastLine

    // process last line pixels
    mov         r12, #1
    blx         KernelSmooth3x3NEON_FirstOrLastLine

    // process left side pixels
    mov         r12, #0
    blx         KernelSmooth3x3NEON_LeftOrRightSide

    // process right side pixels
    mov         r12, #1
    blx         KernelSmooth3x3NEON_LeftOrRightSide

    // process corners
    blx         KernelSmooth3x3NEON_Corners

    vpop.64     {d8-d15}
    pop         {r4-r6, pc}


KernelSmooth3x3NEON_Edges:

    push        {r0-r1, r3-r5, lr}

    mov         r4, #(4 * 4)            // r4 = src offset
    mov         r5, #(6 * 4)            // r5 = dst offset
    rsb         r4, r4, r2, LSL #2      // r4 = width * 4 - 16
    rsb         r5, r5, r2, LSL #2      // r5 = width * 4 - 24

    mov         r12, r1                 // r12 = upper line pointer
    add         r1, r1, r2, LSL #2      // r1 = pSrcImage += width * 4, current line pointer
    add         r0, r0, r2, LSL #2      // r0 = pDstImage += width * 4
    add         r14, r1, r2, LSL #2     // r14 = next line pointer
    add         r0, r0, #8              // pDstImage += 8

    sub         r3, r3, #2              // r3 = row loop = height - 2

KernelSmooth3x3NEON_Edges_LOOP:

    // fetch upper line
    vld4.32     {d0[0], d2[0], d4[0], d6[0]}, [r12, :128]       // q0-q3
    vldr.32     s16, [r12, #16]                     // q4

    // fetch current line
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r1, :128]    // q11-q14
    vldr.32     s20, [r1, #16]                      // q5

    vaddl.u8    q0, d0, d22
    vaddl.u8    q1, d2, d24
    vaddl.u8    q2, d4, d26
    vaddl.u8    q3, d6, d28
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r14, :128]
    vaddl.u8    q4, d8, d10
    vldr.32     s20, [r14, #16]

    vaddw.u8    q0, q0, d22
    vaddw.u8    q1, q1, d24
    vaddw.u8    q2, q2, d26
    vaddw.u8    q3, q3, d28
    vaddw.u8    q4, q4, d10
    // synthesize
    vadd.i16    d2, d2, d4
    vadd.i16    d8, d6, d8
    vadd.i16    d12, d0, d2              // d12 = dst0
    vadd.i16    d14, d2, d6              // d14 = dst1
    vadd.i16    d16, d4, d8              // d16 = dst2

    add         r12, r12, r4            // upper line pointer += src offset
    add         r1, r1, r4              // current line pointer += src offset
    add         r14, r14, r4            // next line pointer += src offset

    // fetch upper line
    vldr.32     s0, [r12, #-4]
    vld4.32     {d2[0], d4[0], d6[0], d8[0]}, [r12]

    vmull.u16   q6, d12, d30
    vmull.u16   q7, d14, d30
    vmull.u16   q8, d16, d30

    // fetch current line
    vldr.32     s20, [r1, #-4]
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r1]

    vshrn.u32   d12, q6, #16
    vshrn.u32   d14, q7, #16
    vshrn.u32   d16, q8, #16
    vmovn.i16   d12, q6
    vmovn.i16   d14, q7
    vmovn.i16   d16, q8
    vorr        d12, d12, d18
    vorr        d14, d14, d18
    vorr        d16, d16, d18
    vstr.32     s24, [r0, #-4]
    //vstr.32     s28, [r0]
    //vmov        d14, d16
    //vstr.32     s28, [r0, #4]
    vst2.32     {d14[0], d16[0]}, [r0]

    // Pass 2
    vaddl.u8    q0, d0, d10
    vaddl.u8    q1, d2, d22
    vaddl.u8    q2, d4, d24
    vaddl.u8    q3, d6, d26
    vaddl.u8    q4, d8, d28
    add         r0, r0, r5              // pDstImage += offset
    vldr.32     s20, [r14, #-4]
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r14, :128]

    vaddw.u8    q0, q0, d10
    vaddw.u8    q1, q1, d22
    vaddw.u8    q2, q2, d24
    vaddw.u8    q3, q3, d26
    vaddw.u8    q4, q4, d28

    vadd.i16    d2, d2, d4
    vadd.i16    d8, d6, d8
    vadd.i16    d0, d0, d2          // d0 = dst0
    vadd.i16    d2, d2, d6          // d2 = dst1
    vadd.i16    d4, d4, d8          // d4  =dst2
    vmull.u16   q0, d0, d30
    vmull.u16   q1, d2, d30
    vmull.u16   q2, d4, d30
    vshrn.u32   d0, q0, #16
    vshrn.u32   d2, q1, #16
    vshrn.u32   d4, q2, #16
    vmovn.i16   d0, q0
    vmovn.i16   d2, q1
    vmovn.i16   d4, q2

    add         r12, r12, #16       // upper line pointer += 16
    add         r1, r1, #16         // current line pointer += 16
    add         r14, r14, #16       // next line pointer += 16

    vst3.32     {d0[0], d2[0], d4[0]}, [r0]

    subs        r3, r3, #1          // loop counter--
    add         r0, r0, #24         // pDstImage += 24
    bne         KernelSmooth3x3NEON_Edges_LOOP

    pop         {r0-r1, r3-r5, pc}


KernelSmooth3x3NEON_FirstOrLastLine:

    push        {r0-r2, lr}

    cmp         r12, #0

    add         r0, r0, #8              // pDstImage += 8
    mov         r14, r1                 // r14 points to upper line
    
    beq         KernelSmooth3x3NEON_FirstOrLastLine_DO_CONTINUE

    // prepare for last line
    mul         r12, r2, r3             // r12 = width * height
    sub         r0, r0, r2, LSL #2      // pDstImage -= width * 4
    sub         r1, r1, r2, LSL #3      // lower line -= width * 4 * 2
    sub         r14, r14, r2, LSL #3    // upper line -= width * 4 * 2
    add         r0, r0, r12, LSL #2     // pDstImage += height * width * 4
    add         r14, r14, r12, LSL #2   // upper line += height * width * 4
    add         r1, r1, r12, LSL #2     // lower line += height * width * 4

KernelSmooth3x3NEON_FirstOrLastLine_DO_CONTINUE:

    add         r1, r1, r2, LSL #2      // lower line += width * 4
    mov         r12, #10923
    sub         r2, r2, #4              // r2 = col loop count = width - 4
    vdup.16     q15, r12                // q15 = 10923 constant
    mov         r2, r2, LSR #2          // r2 /= 4

    // first process the left pixel
    vld3.32     {d0[0], d2[0], d4[0]}, [r14]
    vld3.32     {d6[0], d8[0], d10[0]}, [r1]
    vaddl.u8    q0, d0, d6
    vaddl.u8    q1, d2, d8
    vaddl.u8    q2, d4, d10

    vadd.i16    d0, d0, d2              // q0 = dst0
    vadd.i16    d0, d0, d4
    vmull.u16   q0, d0, d30
    add         r14, r14, #8            // upper line += 8
    add         r1, r1, #8              // lower line += 8
    vshrn.u32   d0, q0, #16
    vmovn.i16   d0, q0
    vorr        d0, d0, d18
    vstr.32     s0, [r0, #-4]

KernelSmooth3x3NEON_FirstOrLastLine_ColLoop:

    vldr.32     s0, [r14, #-4]
    vld4.32     {d2[0], d4[0], d6[0], d8[0]}, [r14]
    vldr.32     s20, [r14, #16]

    vldr.32     s24, [r1, #-4]
    vld4.32     {d20[0], d22[0], d24[0], d26[0]}, [r1]
    vldr.32     s28, [r1, #16]

    vaddl.u8    q0, d0, d12
    vaddl.u8    q1, d2, d20
    vaddl.u8    q2, d4, d22
    vaddl.u8    q3, d6, d24
    vaddl.u8    q4, d8, d26
    vaddl.u8    q5, d10, d14

    vadd.i16    d2, d2, d4
    vadd.i16    d8, d6, d8
    vadd.i16    d0, d0, d2          // q0 = dst0
    vadd.i16    d2, d2, d6          // q1 = dst1
    vadd.i16    d4, d4, d8          // q2 = dst2
    vadd.i16    d6, d8, d10         // q3 = dst3

    vmull.u16   q0, d0, d30
    vmull.u16   q1, d2, d30
    vmull.u16   q2, d4, d30
    vmull.u16   q3, d6, d30
    vshrn.u32   d0, q0, #16
    vshrn.u32   d2, q1, #16
    vshrn.u32   d4, q2, #16
    vshrn.u32   d6, q3, #16
    vmovn.i16   d0, q0
    vmovn.i16   d2, q1
    vmovn.i16   d4, q2
    vmovn.i16   d6, q3
    vorr        d0, d0, d18
    vorr        d2, d2, d18
    vorr        d4, d4, d18
    vorr        d6, d6, d18
    vst4.32     {d0[0], d2[0], d4[0], d6[0]}, [r0]

    add         r14, r14, #16
    add         r1, r1, #16
    subs        r2, r2, #1
    add         r0, r0, #16
    bne         KernelSmooth3x3NEON_FirstOrLastLine_ColLoop

    // Process the right pixel
    sub         r14, r14, #4
    sub         r1, r1, #4
    vld3.32     {d0[0], d2[0], d4[0]}, [r14]
    vld3.32     {d6[0], d8[0], d10[0]}, [r1]
    vaddl.u8    q0, d0, d6
    vaddl.u8    q1, d2, d8
    vaddl.u8    q2, d4, d10

    vadd.i16    d0, d0, d2              // q0 = dst0
    vadd.i16    d0, d0, d4
    vmull.u16   q0, d0, d30
    vshrn.u32   d0, q0, #16
    vmovn.i16   d0, q0
    vorr        d0, d0, d18
    vstr.32     s0, [r0]

    pop         {r0-r2, pc}


KernelSmooth3x3NEON_LeftOrRightSide:

    push        {r0-r1, r3-r4, lr}

    cmp         r12, #0
    mov         r4, r1                  // r4 points to upper line
    add         r14, r1, r2, LSL #3     // r14 points to lower line = pSrcImage + width * 4 * 2
    add         r1, r1, r2, LSL #2      // r1 points to current line = pSrcImage + width * 4
    add         r0, r0, r2, LSL #2      // r0 = pDstImage += width * 4
    sub         r3, r3, #2              // r3 = row loop = height - 2
    beq         KernelSmooth3x3NEON_LeftOrRightSide_LOOP

    // prepare for right side operation
    add         r4, r4, r2, LSL #2
    add         r1, r1, r2, LSL #2
    add         r14, r14, r2, LSL #2
    add         r0, r0, r2, LSL #2
    sub         r4, r4, #8
    sub         r1, r1, #8
    sub         r14, r14, #8
    sub         r0, r0, #4

KernelSmooth3x3NEON_LeftOrRightSide_LOOP:

    vld2.32     {d0[0], d2[0]}, [r4]
    vld2.32     {d4[0], d6[0]}, [r1]
    vld2.32     {d8[0], d10[0]}, [r14]

    vaddl.u8    q0, d0, d2
    vaddl.u8    q2, d4, d6
    vaddl.u8    q4, d8, d10
    vadd.i16    d0, d0, d4
    vadd.i16    d0, d0, d8

    vmull.u16   q0, d0, d30
    vshrn.u32   d0, q0, #16
    vmovn.i16   d0, q0
    vstr.32     s0, [r0]

    add         r4, r4, r2, LSL #2
    add         r1, r1, r2, LSL #2
    add         r14, r14, r2, LSL #2
    subs        r3, r3, #1
    add         r0, r0, r2, LSL #2
    bne         KernelSmooth3x3NEON_LeftOrRightSide_LOOP

    pop         {r0-r1, r3-r4, pc}


KernelSmooth3x3NEON_Corners:

    push        {r4, lr}

    sub         r3, r3, #2              // r3 = height - 2
    mov         r12, r2, LSL #2         // r12 = src offset = width * 4
    mov         r14, r2, LSL #2         // r14 = dst offset = width * 4
    sub         r12, r12, #8            // r12 = src offset = width * 4 - 8
    sub         r14, r14, #4            // r14 = dst offset = width * 4 - 4
    add         r4, r1, r2, LSL #2      // r4 points to lower line

    // process top left & top right
    vld2.32     {d0[0], d2[0]}, [r1], r12
    vld2.32     {d4[0], d6[0]}, [r4], r12

    mul         r3, r3, r2              // r3 = (height - 2) * width

    vaddl.u8    q0, d0, d4
    vaddl.u8    q1, d2, d6

    vld2.32     {d8[0], d10[0]}, [r1]
    vld2.32     {d12[0], d14[0]}, [r4]
    add         r1, r1, r3, LSL #2
    add         r4, r4, r3, LSL #2
    vadd.i16    d0, d0, d2
    vaddl.u8    q4, d8, d12
    vaddl.u8    q5, d10, d14
    vshrn.u16   d0, q0, #2
    vadd.i16    d8, d8, d10
    vst1.32     {d0[0]}, [r0, :32], r14      // store dst0
    vshrn.u16   d8, q4, #2
    vld2.32     {d0[0], d2[0]}, [r1]
    vld2.32     {d4[0], d6[0]}, [r4]
    vst1.32     {d8[0]}, [r0, :32]

    sub         r1, r1, r12
    sub         r4, r4, r12
    add         r0, r0, r3, LSL #2

    vld2.32     {d8[0], d10[0]}, [r1]
    vld2.32     {d12[0], d14[0]}, [r4]

    vaddl.u8    q0, d0, d4
    vaddl.u8    q1, d2, d6
    add         r0, r0, r2, LSL #2
    vadd.i16    d0, d0, d2

    vaddl.u8    q4, d8, d12
    vaddl.u8    q5, d10, d14

    vshrn.u16   d0, q0, #2
    vadd.i16    d8, d8, d10
    vst1.32     {d0[0]}, [r0, :32]
    sub         r0, r0, r14
    vshrn.u16   d8, q4, #2
    vst1.32     {d8[0]}, [r0, :32]

    pop         {r4, pc}


_KernelSmooth3x3DuoCore:

    push        {r4-r6, lr}
    vpush.64    {d8-d15}
    sub         sp, sp, #12

    movw        r12, #0xffff
    str         r0, [sp]                // save pDstImage to sp[0]
    str         r1, [sp, #4]            // save pSrcImage to sp[1]
    mov         r3, r2, LSR #16         // r3 = height
    and         r2, r2, r12             // r2 = width
    movw        r12, #0x7fff
    mov         r14, r3, LSR #15        // r14 = flag for paragraph to be processed
    and         r3, r3, r12             // r3 = height, clear the flag bit
    str         r14, [sp, #8]           // save flag to sp[2]

    sub         r12, r3, #2             // r12 = row loop count = height - 2
    add         r0, r0, r2, LSL #2      // pDstImage += width * 4
    add         r1, r1, r2, LSL #2      // pSrcImage += widht * 4
    cmp         r14, #0
    add         r0, r0, #16             // pDstImage += 16; begins at the 4th pixel
    add         r1, r1, #16             // pSrcImage += 16; begins at the 4th pixel
    mov         r12, r12, LSR #1        // r12 = row loop count = (height - 2) / 2
    mov         r4, r2, LSL #2          // r4 = width * 4
    beq         KernelSmooth3x3DuoCore_CONTINUE

    // prepare for low half processing
    mul         r14, r12, r4
    add         r0, r0, r14
    add         r1, r1, r14

KernelSmooth3x3DuoCore_CONTINUE:

    mov         r5, #0xff000000
    veor        d18, d18, d18
    vmov.32     d18[0], r5              // d18 = 0x00000000_ff000000
    mov         r14, #7282
    sub         r5, r1, r4              // r5 points to upper line
    add         r6, r1, r4              // r6 points to next line
    vdup.16     q15, r14                // d30 = 7282 vector constant

    KernelSmooth3x3DuoCore_ROWLOOP:

    sub         r14, r2, #8             // r14 = col loop count = width - 8
    mov         r14, r14, LSR #2        // r14 /= 4

    KernelSmooth3x3DuoCore_COLLOOP:

    // fetch upper line
    vldr.32     s0, [r5, #-4]
    vld4.32     {d2[0], d4[0], d6[0], d8[0]}, [r5, :128]
    vldr.32     s20, [r5, #16]

    // fetch current line
    vldr.32     s24, [r1, #-4]
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r1, :128]
    vldr.32     s28, [r1, #16]

    // vertically add the upper line with current line
    vaddl.u8    q0, d0, d12
    vaddl.u8    q1, d2, d22
    vldr.32     s24, [r6, #-4]          // fetch next line left
    vaddl.u8    q2, d4, d24
    vaddl.u8    q3, d6, d26
    vaddl.u8    q4, d8, d28
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r6, :128]    // fetch next line center
    vaddl.u8    q5, d10, d14
    vldr.32     s28, [r6, #16]          // fetch next line right

    vaddw.u8    q0, q0, d12
    vaddw.u8    q1, q1, d22
    vaddw.u8    q2, q2, d24
    vaddw.u8    q3, q3, d26
    vaddw.u8    q4, q4, d28
    vaddw.u8    q5, q5, d14

    vadd.i16    d2, d2, d4
    vadd.i16    d8, d8, d6
    vadd.i16    d0, d0, d2              // d0 = dst0
    vadd.i16    d12, d2, d6             // d12 = dst1
    vadd.i16    d14, d8, d4             // d14 = dst2
    vadd.i16    d10, d8, d10            // d10 = dst3

    vmull.u16   q0, d0, d30             // q0 = dst0
    vmull.u16   q1, d12, d30            // q1 = dst1
    vmull.u16   q2, d14, d30            // q2 = dst2
    vmull.u16   q3, d10, d30            // q3 = dst3
    vshrn.u32   d0, q0, #16
    vshrn.u32   d2, q1, #16
    vshrn.u32   d4, q2, #16
    vshrn.u32   d6, q3, #16
    vmovn.i16   d0, q0
    vmovn.i16   d2, q1
    vmovn.i16   d4, q2
    vmovn.i16   d6, q3
    vorr        d0, d0, d18
    vorr        d2, d2, d18
    vorr        d4, d4, d18
    vorr        d6, d6, d18
    vst4.32     {d0[0], d2[0], d4[0], d6[0]}, [r0, :128]

    add         r5, r5, #16
    add         r1, r1, #16
    add         r6, r6, #16
    subs        r14, r14, #1
    add         r0, r0, #16
    bne         KernelSmooth3x3DuoCore_COLLOOP

    add         r5, r5, #32
    add         r1, r1, #32
    add         r6, r6, #32
    subs        r12, r12, #1
    add         r0, r0, #32
    bne         KernelSmooth3x3DuoCore_ROWLOOP

    ldr         r0, [sp]                // load pDstImage to sp[0]
    ldr         r1, [sp, #4]            // load pSrcImage to sp[1]
    ldr         r6, [sp, #8]            // r6 = flag
    add         sp, sp, #12

    // process remain edge pixels
    mov         r12, r6
    blx         KernelSmooth3x3NEON_Edges

    // process first line or last line
    mov         r12, r6                 // r12 = 0, means process the first line
    blx         KernelSmooth3x3NEON_FirstOrLastLine

    // process left side or right side
    mov         r12, r6
    blx         KernelSmooth3x3NEON_LeftOrRightSide

    cmp         r6, #0
    blxeq       KernelSmooth3x3NEON_Corners

    vpop.64     {d8-d15}
    pop         {r4-r6, pc}


KernelSmooth3x3DuoCore_Edges:

    push        {r0-r1, r3-r5, lr}

    cmp         r12, #0
    mov         r4, #(4 * 4)            // r4 = src offset
    mov         r5, #(6 * 4)            // r5 = dst offset
    sub         r3, r3, #2              // r3 = row loop = height - 2
    rsb         r4, r4, r2, LSL #2      // r4 = width * 4 - 16
    rsb         r5, r5, r2, LSL #2      // r5 = width * 4 - 24
    mov         r3, r3, LSR #1          // r3 = (height - 2) / 2
    beq         KernelSmooth3x3DuoCore_Edges_CONTINUE

    // prepare for lower half processing
    mul         r14, r2, r3
    add         r1, r1, r14, LSL #2
    add         r0, r0, r14, LSL #2

KernelSmooth3x3DuoCore_Edges_CONTINUE:

    mov         r12, r1                 // r12 = upper line pointer
    add         r1, r1, r2, LSL #2      // r1 = pSrcImage += width * 4, current line pointer
    add         r0, r0, r2, LSL #2      // r0 = pDstImage += width * 4
    add         r14, r1, r2, LSL #2     // r14 = next line pointer
    add         r0, r0, #8              // pDstImage += 8

KernelSmooth3x3DuoCore_Edges_LOOP:

    // fetch upper line
    vld4.32     {d0[0], d2[0], d4[0], d6[0]}, [r12, :128]       // q0-q3
    vldr.32     s16, [r12, #16]                     // q4

    // fetch current line
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r1, :128]    // q11-q14
    vldr.32     s20, [r1, #16]                      // q5

    vaddl.u8    q0, d0, d22
    vaddl.u8    q1, d2, d24
    vaddl.u8    q2, d4, d26
    vaddl.u8    q3, d6, d28
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r14, :128]
    vaddl.u8    q4, d8, d10
    vldr.32     s20, [r14, #16]

    vaddw.u8    q0, q0, d22
    vaddw.u8    q1, q1, d24
    vaddw.u8    q2, q2, d26
    vaddw.u8    q3, q3, d28
    vaddw.u8    q4, q4, d10
    // synthesize
    vadd.i16    d2, d2, d4
    vadd.i16    d8, d6, d8
    vadd.i16    d12, d0, d2              // d12 = dst0
    vadd.i16    d14, d2, d6              // d14 = dst1
    vadd.i16    d16, d4, d8              // d16 = dst2

    add         r12, r12, r4            // upper line pointer += src offset
    add         r1, r1, r4              // current line pointer += src offset
    add         r14, r14, r4            // next line pointer += src offset

    // fetch upper line
    vldr.32     s0, [r12, #-4]
    vld4.32     {d2[0], d4[0], d6[0], d8[0]}, [r12]

    vmull.u16   q6, d12, d30
    vmull.u16   q7, d14, d30
    vmull.u16   q8, d16, d30

    // fetch current line
    vldr.32     s20, [r1, #-4]
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r1]

    vshrn.u32   d12, q6, #16
    vshrn.u32   d14, q7, #16
    vshrn.u32   d16, q8, #16
    vmovn.i16   d12, q6
    vmovn.i16   d14, q7
    vmovn.i16   d16, q8
    vorr        d12, d12, d18
    vorr        d14, d14, d18
    vorr        d16, d16, d18
    vstr.32     s24, [r0, #-4]
    //vstr.32     s28, [r0]
    //vmov        d14, d16
    //vstr.32     s28, [r0, #4]
    vst2.32     {d14[0], d16[0]}, [r0]

    // Pass 2
    vaddl.u8    q0, d0, d10
    vaddl.u8    q1, d2, d22
    vaddl.u8    q2, d4, d24
    vaddl.u8    q3, d6, d26
    vaddl.u8    q4, d8, d28
    add         r0, r0, r5              // pDstImage += offset
    vldr.32     s20, [r14, #-4]
    vld4.32     {d22[0], d24[0], d26[0], d28[0]}, [r14, :128]

    vaddw.u8    q0, q0, d10
    vaddw.u8    q1, q1, d22
    vaddw.u8    q2, q2, d24
    vaddw.u8    q3, q3, d26
    vaddw.u8    q4, q4, d28

    vadd.i16    d2, d2, d4
    vadd.i16    d8, d6, d8
    vadd.i16    d0, d0, d2          // d0 = dst0
    vadd.i16    d2, d2, d6          // d2 = dst1
    vadd.i16    d4, d4, d8          // d4  =dst2
    vmull.u16   q0, d0, d30
    vmull.u16   q1, d2, d30
    vmull.u16   q2, d4, d30
    vshrn.u32   d0, q0, #16
    vshrn.u32   d2, q1, #16
    vshrn.u32   d4, q2, #16
    vmovn.i16   d0, q0
    vmovn.i16   d2, q1
    vmovn.i16   d4, q2

    add         r12, r12, #16       // upper line pointer += 16
    add         r1, r1, #16         // current line pointer += 16
    add         r14, r14, #16       // next line pointer += 16

    vst3.32     {d0[0], d2[0], d4[0]}, [r0]

    subs        r3, r3, #1          // loop counter--
    add         r0, r0, #24         // pDstImage += 24
    bne         KernelSmooth3x3DuoCore_Edges_LOOP

    pop         {r0-r1, r3-r5, pc}




