//
//  memory_copy.s
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-27.
//
//

.text
.align 4

.globl _ZennyMemoryCopy, _ZennyMemoryCopyNEON, _ZennyMemoryCopyPrefetch
.reference _ZennyAtomAddBefore

.arm

// void ZennyMemoryCopy(void *pDst, const void *pSrc, size_t length)
_ZennyMemoryCopy:

    push    {r4-r8, lr}

    mov     r2, r2, LSR #5      // length /= 32

ZennyMemoryCopy_LOOP:

    ldmia   r1!, {r3-r8, r12, r14}
    subs    r2, r2, #1
    stmia   r0!, {r3-r8, r12, r14}
    bne     ZennyMemoryCopy_LOOP

    pop     {r4-r8, pc}


// void ZennyMemoryCopyNEON(void *pDst, const void *pSrc, size_t length)
_ZennyMemoryCopyNEON:

    mov     r2, r2, LSR #6      // length /= 64

ZennyMemoryCopyNEON_LOOP:

    vld1.64 {d0, d1, d2, d3}, [r1, :256]!
    vld1.64 {d4, d5, d6, d7}, [r1, :256]!
    subs    r2, r2, #1
    vst1.64 {d0, d1, d2, d3}, [r0, :256]!
    vst1.64 {d4, d5, d6, d7}, [r0, :256]!
    bne     ZennyMemoryCopyNEON_LOOP

    bx      lr


// void ZennyMemoryCopyPrefetch(void *pDst, const void *pSrc, size_t length)
#if 0
_ZennyMemoryCopyPrefetch:

    push    {lr}

    cmp     r2, #4096
    movlt   r12, #0
    mov     r12, r2, LSR #12    // r12 = length / 4096
    mov     r14, #4096

ZennyMemoryCopyPrefetch_PREFETCH_LOOP:

    pld     [r1, r14]
    //pldw    [r0, r14]
    cmp     r2, #4096
    movhi   r3, #4096
    movls   r3, r2

ZennyMemoryCopyPrefetch_INNER_LOOP:

    vld1.64 {d0, d1, d2, d3}, [r1, :256]!
    vld1.64 {d4, d5, d6, d7}, [r1, :256]!
    subs    r3, r3, #64
    vst1.64 {d0, d1, d2, d3}, [r0, :256]!
    vst1.64 {d4, d5, d6, d7}, [r0, :256]!
    bne     ZennyMemoryCopyPrefetch_INNER_LOOP

    subs    r12, r12, #1
    sub     r2, r2, #4096
    bgt     ZennyMemoryCopyPrefetch_PREFETCH_LOOP

    pop     {pc}

#else

_ZennyMemoryCopyPrefetch:

    pld     [r1]
    //pldw     [r0, #256]
    mov     r2, r2, LSR #6      // length /= 64

ZennyMemoryCopyPrefetch_LOOP:

    vld1.64 {d0, d1, d2, d3}, [r1, :256]!
    vld1.64 {d4, d5, d6, d7}, [r1, :256]!
    pld     [r1, #256]
    subs    r2, r2, #1
    vst1.64 {d0, d1, d2, d3}, [r0, :256]!
    vst1.64 {d4, d5, d6, d7}, [r0, :256]!
    //pldw     [r0, #256]
    bne     ZennyMemoryCopyPrefetch_LOOP

    bx      lr

#endif



