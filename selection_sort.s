//
//  selection_sort.s
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-25.
//
//

.text
.align 4
.globl _ZennySelectionSort, _ZennySelectionSortFloat

.arm

// void ZennySelectionSort(int *pBuffer, size_t length)
_ZennySelectionSort:

    push    {r4-r6, lr}

    sub     r1, r1, #1              // r1 = traverseCount = length - 1
    mov     r12, r1                 // r12 = innerLoopCount = traverseCount
    mov     r14, #0                 // r14 = firstIndex = 0

ZennySelectionSort_TRAVERSE_LOOP:

    ldr     r2, [r0, r14, LSL #2]   // r2 = maxValue = pBuffer[firstIndex]
    mov     r3, r14                 // r3 = maxIndex = firstIndex
    mov     r4, r12                 // r4 = j = innerLoopCount
    add     r5, r3, #1              // r5 = k = maxIndex + 1

ZennySelectionSort_INNER_LOOP:

    ldr     r6, [r0, r5, LSL #2]    // r6 = value = pBuffer[k]
    add     r5, r5, #1              // k++
    cmp     r2, r6                  // if(maxValue < value)
    movlt   r2, r6                  // maxValue = value
    sublt   r3, r5, #1              // maxIndex = k - 1

    subs    r4, r4, #1              // j--
    bne     ZennySelectionSort_INNER_LOOP

    cmp     r3, r14                 // if(maxIndex != firstIndex)
    sub     r12, r12, #1            // innerLoopCount--
    ldrne   r6, [r0, r14, LSL #2]   // value = pBuffer[firstIndex]
    strne   r2, [r0, r14, LSL #2]   // pBuffer[firstIndex] = maxValue
    add     r14, r14, #1            // firstIndex++
    strne   r6, [r0, r3, LSL #2]    // pBuffer[maxIndex] = value

    cmp     r1, r14                 // if(traverseCount > firstIndex)
    bhi     ZennySelectionSort_TRAVERSE_LOOP

    pop     {r4-r6, pc}


_ZennySelectionSortFloat:

    push    {r4-r6, lr}

    sub     r1, r1, #1              // r1 = traverseCount = length - 1
    mov     r12, r1                 // r12 = innerLoopCount = traverseCount
    mov     r14, #0                 // r14 = firstIndex = 0

ZennySelectionSortFloat_TRAVERSE_LOOP:

    add     r6, r0, r14, LSL #2     // r6 = &pBuffer[firstIndex]
    mov     r3, r14                 // r3 = maxIndex = firstIndex
    mov     r4, r12                 // r4 = j = innerLoopCount
    vldr    s4, [r6]                // s4 = maxValue = pBuffer[firstIndex]
    add     r5, r3, #1              // r5 = k = maxIndex + 1
    add     r6, r0, r5, LSL #2      // r6 = &pBuffer[k]

ZennySelectionSortFloat_INNER_LOOP:

    vldr    s0, [r6]                // s0 = value = *pBuffer
    vcmp.f32    s4, s0              // if(maxValue < value)
    add     r5, r5, #1              // k++
    vmrs    apsr_nzcv, fpscr
    add     r6, r6, #4              // pBuffer++
    vmovlt.f32  s4, s0              // maxValue = value
    sublt   r3, r5, #1              // maxIndex = k - 1

    subs    r4, r4, #1              // j--
    bne     ZennySelectionSortFloat_INNER_LOOP

    cmp     r3, r14                 // if(maxIndex != firstIndex)
    add     r5, r0, r14, LSL #2     // r5 = &pBuffer[firstIndex]
    sub     r12, r12, #1            // innerLoopCount--
    vldrne  s0, [r5]                // value = pBuffer[firstIndex]
    add     r6, r0, r3, LSL #2      // r6 = &pBuffer[maxIndex]
    vstrne  s4, [r5]                // pBuffer[firstIndex] = maxValue
    add     r14, r14, #1            // firstIndex++
    vstrne  s0, [r6]                // pBuffer[maxIndex] = value

    cmp     r1, r14                 // if(traverseCount > firstIndex)
    bhi     ZennySelectionSortFloat_TRAVERSE_LOOP

    pop     {r4-r6, pc}



