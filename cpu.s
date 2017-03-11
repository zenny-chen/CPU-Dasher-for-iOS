//
//  cpu.s
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-20.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

.text
.align 4

.globl _getUserEnabled
.globl _adcImmMinTest, _adcImmMaxTest, _adcRegMinTest, _adcRegMaxTest, _adcShftMinTest, _adcShftMaxTest
.globl _addImmMinTest, _addImmMaxTest, _addRegMinTest, _addRegMaxTest, _addShftMinTest, _addShftMaxTest
.globl _addThumbImmT1MinTest, _addThumbImmT1MaxTest, _addThumbImmT2MinTest, _addThumbImmT2MaxTest, _addThumbImmT3MinTest, _addThumbImmT3MaxTest, _addThumbImmT4MinTest, _addThumbImmT4MaxTest
.globl _addThumbRegT1MinTest, _addThumbRegT1MaxTest, _addThumbRegT2MinTest, _addThumbRegT2MaxTest, _addThumbRegT3MinTest, _addThumbRegT3MaxTest
.globl _andImmMinTest, _andImmMaxTest, _andRegMinTest, _andRegMaxTest, _andShftMinTest, _andShftMaxTest
.globl _asrImmMinTest, _asrImmMaxTest, _asrRegMinTest, _asrRegMaxTest
.globl _bfcMinTest, _bfcMaxTest
.globl _bfiMinTest, _bfiMaxTest
.globl _bicImmMinTest, _bicImmMaxTest, _bicRegMinTest, _bicRegMaxTest, _bicShftMinTest, _bicShftMaxTest
.globl _cbnzAvgTest
.globl _clzMinTest, _clzMaxTest
.globl _cmnImmMinTest, _cmnImmMaxTest, _cmnRegMinTest, _cmnRegMaxTest, _cmnShftMinTest, _cmnShftMaxTest
.globl _cmpImmMinTest, _cmpImmMaxTest, _cmpRegMinTest, _cmpRegMaxTest, _cmpShftMinTest, _cmpShftMaxTest
.globl _eorImmMinTest, _eorImmMaxTest, _eorRegMinTest, _eorRegMaxTest, _eorShftMinTest, _eorShftMaxTest
.globl _lslImmMinTest, _lslImmMaxTest, _lslRegMinTest, _lslRegMaxTest
.globl _lsrImmMinTest, _lsrImmMaxTest, _lsrRegMinTest, _lsrRegMaxTest
.globl _mlaMinTest, _mlaMaxTest
.globl _mlsMinTest, _mlsMaxTest
.globl _movImmMinTest, _movImmMaxTest, _movRegMinTest, _movRegMaxTest, _movShftMinTest, _movShftMaxTest
.globl _movtMinTest, _movtMaxTest
.globl _mulMinTest, _mulMaxTest
.globl _mvnImmMinTest, _mvnImmMaxTest, _mvnRegMinTest, _mvnRegMaxTest, _mvnShftMinTest, _mvnShftMaxTest
.globl _ornImmMinTest, _ornImmMaxTest, _ornRegMinTest, _ornRegMaxTest
.globl _orrImmMinTest, _orrImmMaxTest, _orrRegMinTest, _orrRegMaxTest, _orrShftMinTest, _orrShftMaxTest
.globl _pkhMinTest, _pkhMaxTest
.globl _qaddMinTest, _qaddMaxTest
.globl _qadd16MinTest, _qadd16MaxTest
.globl _qadd8MinTest, _qadd8MaxTest
.globl _qasxMinTest, _qasxMaxTest
.globl _qdaddMinTest, _qdaddMaxTest
.globl _qdsubMinTest, _qdsubMaxTest
.globl _qsaxMinTest, _qsaxMaxTest
.globl _qsubMinTest, _qsubMaxTest
.globl _qsub16MinTest, _qsub16MaxTest
.globl _qsub8MinTest, _qsub8MaxTest
.globl _rbitMinTest, _rbitMaxTest
.globl _revMinTest, _revMaxTest
.globl _rev16MinTest, _rev16MaxTest
.globl _revshMinTest, _revshMaxTest
.globl _rorImmMinTest, _rorImmMaxTest, _rorRegMinTest, _rorRegMaxTest
.globl _rrxMinTest, _rrxMaxTest
.globl _rsbImmMinTest, _rsbImmMaxTest, _rsbRegMinTest, _rsbRegMaxTest, _rsbShftMinTest, _rsbShftMaxTest
.globl _rscImmMinTest, _rscImmMaxTest, _rscRegMinTest, _rscRegMaxTest, _rscShftMinTest, _rscShftMaxTest
.globl _sadd16MinTest, _sadd16MaxTest
.globl _sadd8MinTest, _sadd8MaxTest
.globl _sasxMinTest, _sasxMaxTest
.globl _sbcImmMinTest, _sbcImmMaxTest, _sbcRegMinTest, _sbcRegMaxTest, _sbcShftMinTest, _sbcShftMaxTest
.globl _sbfxMinTest, _sbfxMaxTest
.globl _selMinTest, _selMaxTest
.globl _shadd16MinTest, _shadd16MaxTest
.globl _shadd8MinTest, _shadd8MaxTest
.globl _shasxMinTest, _shasxMaxTest
.globl _shsaxMinTest, _shsaxMaxTest
.globl _shsub16MinTest, _shsub16MaxTest
.globl _shsub8MinTest, _shsub8MaxTest
.globl _smlaMinTest, _smlaMaxTest
.globl _smladMinTest, _smladMaxTest
.globl _smlalMinTest, _smlalMaxTest
.globl _smlalxyMinTest, _smlalxyMaxTest
.globl _smlaldMinTest, _smlaldMaxTest
.globl _smlawMinTest, _smlawMaxTest
.globl _smlsdMinTest, _smlsdMaxTest
.globl _smlsldMinTest, _smlsldMaxTest
.globl _smmlaMinTest, _smmlaMaxTest
.globl _smmlsMinTest, _smmlsMaxTest
.globl _smmulMinTest, _smmulMaxTest
.globl _smuadMinTest, _smuadMaxTest
.globl _smulMinTest, _smulMaxTest
.globl _smullMinTest, _smullMaxTest
.globl _smulwMinTest, _smulwMaxTest
.globl _smusdMinTest, _smusdMaxTest
.globl _ssatMinTest, _ssatMaxTest
.globl _ssat16MinTest, _ssat16MaxTest
.globl _ssaxMinTest, _ssaxMaxTest
.globl _ssub16MinTest, _ssub16MaxTest
.globl _ssub8MinTest, _ssub8MaxTest
.globl _subImmMinTest, _subImmMaxTest, _subRegMinTest, _subRegMaxTest, _subShftMinTest, _subShftMaxTest
.globl _subImmThumbT1MinTest, _subImmThumbT1MaxTest, _subImmThumbT2MinTest, _subImmThumbT2MaxTest, _subImmThumbT3MinTest, _subImmThumbT3MaxTest, _subImmThumbT4MinTest, _subImmThumbT4MaxTest
.globl _sxtabMinTest, _sxtabMaxTest
.globl _sxtab16MinTest, _sxtab16MaxTest
.globl _sxtahMinTest, _sxtahMaxTest
.globl _sxtbMinTest, _sxtbMaxTest
.globl _sxtb16MinTest, _sxtb16MaxTest
.globl _sxthMinTest, _sxthMaxTest
.globl _teqImmMinTest, _teqImmMaxTest, _teqRegMinTest, _teqRegMaxTest, _teqShftMinTest, _teqShftMaxTest
.globl _tstImmMinTest, _tstImmMaxTest, _tstRegMinTest, _tstRegMaxTest, _tstShftMinTest, _tstShftMaxTest
.globl _uadd16MinTest, _uadd16MaxTest
.globl _uadd8MinTest, _uadd8MaxTest
.globl _uasxMinTest, _uasxMaxTest
.globl _ubfxMinTest, _ubfxMaxTest
.globl _uhadd16MinTest, _uhadd16MaxTest
.globl _uhadd8MinTest, _uhadd8MaxTest
.globl _umaalMinTest, _umaalMaxTest
.globl _umlalMinTest, _umlalMaxTest
.globl _umullMinTest, _umullMaxTest
.globl _uqadd16MinTest, _uqadd16MaxTest
.globl _uqadd8MinTest, _uqadd8MaxTest
.globl _uqasxMinTest, _uqasxMaxTest
.globl _uqsaxMinTest, _uqsaxMaxTest
.globl _uqsub16MinTest, _uqsub16MaxTest
.globl _uqsub8MinTest, _uqsub8MaxTest
.globl _usad8MinTest, _usad8MaxTest
.globl _usada8MinTest, _usada8MaxTest
.globl _usatMinTest, _usatMaxTest
.globl _usat16MinTest, _usat16MaxTest
.globl _usaxMinTest, _usaxMaxTest
.globl _usub16MinTest, _usub16MaxTest
.globl _usub8MinTest, _usub8MaxTest
.globl _uxtabMinTest, _uxtabMaxTest
.globl _uxtab16MinTest, _uxtab16MaxTest
.globl _uxtahMinTest, _uxtahMaxTest
.globl _uxtbMinTest, _uxtbMaxTest
.globl _uxtb16MinTest, _uxtb16MaxTest
.globl _uxthMinTest, _uxthMaxTest

.globl _freqTest, _jumpCost, _instTest, _clipFunc


.thumb
.thumb_func
_instTest:

    push     {r9, lr}

    add.w   r0, r0, r1, lsl #2

    pop     {r9, pc}


.arm

_clipFunc:

    mov     r1, #0xff
    cmp     r0, r1
    bichi   r0, r1, r0, asr #31
    
    bx      lr
    

_freqTest:

    push    {r4-r11, lr}

freqTest_LOOP:

    // loop 1
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 2
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 3
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 4
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 5
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 6
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 7
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 8
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 9
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    // loop 10
    add     r2, r2, r1
    add     r3, r3, r2
    add     r4, r4, r3
    add     r5, r5, r4
    add     r6, r6, r5
    add     r7, r7, r6
    add     r8, r8, r7
    add     r9, r9, r8
    add     r10, r10, r9
    add     r11, r11, r10
    add     r12, r12, r11
    add     r14, r14, r12
    add     r1, r1, r14

    subs    r0, r0, #1
    bne     freqTest_LOOP
    pop     {r4-r11, pc}


_jumpCost:

    subs    r0, r0, #1
    bne     _jumpCost
    bx      lr


_getUserEnabled:

    mrc p15, 0, r0, c9, c14, 0
    bx  lr


_adcImmMinTest:

    push    {r4-r11, lr}

adcImmMinTest_LOOP:

    // loop 1
    adc     r2, r1, #1
    adc     r3, r2, #2
    adc     r4, r3, #3
    adc     r5, r4, #4
    adc     r6, r5, #5
    adc     r7, r6, #6
    adc     r8, r7, #7
    adc     r9, r8, #8
    adc     r10, r9, #9
    adc     r11, r10, #10
    adc     r12, r11, #11
    adc     r1, r12, #12

    // loop 2
    adc     r2, r1, #1
    adc     r3, r2, #2
    adc     r4, r3, #3
    adc     r5, r4, #4
    adc     r6, r5, #5
    adc     r7, r6, #6
    adc     r8, r7, #7
    adc     r9, r8, #8
    adc     r10, r9, #9
    adc     r11, r10, #10
    adc     r12, r11, #11
    adc     r1, r12, #12

    // loop 3
    adc     r2, r1, #1
    adc     r3, r2, #2
    adc     r4, r3, #3
    adc     r5, r4, #4
    adc     r6, r5, #5
    adc     r7, r6, #6
    adc     r8, r7, #7
    adc     r9, r8, #8
    adc     r10, r9, #9
    adc     r11, r10, #10
    adc     r12, r11, #11
    adc     r1, r12, #12

    // loop 4
    adc     r2, r1, #1
    adc     r3, r2, #2
    adc     r4, r3, #3
    adc     r5, r4, #4
    adc     r6, r5, #5
    adc     r7, r6, #6
    adc     r8, r7, #7
    adc     r9, r8, #8
    adc     r10, r9, #9
    adc     r11, r10, #10
    adc     r12, r11, #11
    adc     r1, r12, #12

    // loop 5
    adc     r2, r1, #1
    adc     r3, r2, #2
    adc     r4, r3, #3
    adc     r5, r4, #4
    adc     r6, r5, #5
    adc     r7, r6, #6
    adc     r8, r7, #7
    adc     r9, r8, #8
    adc     r10, r9, #9
    adc     r11, r10, #10
    adc     r12, r11, #11
    adc     r1, r12, #12

    subs    r0, r0, #1
    bne     adcImmMinTest_LOOP
    pop     {r4-r11, pc}

_adcImmMaxTest:

    push    {r4-r11, lr}

adcImmMaxTest_LOOP:

    // loop 1
    adc     r1, r1, #1
    adc     r2, r2, #2
    adc     r3, r3, #3
    adc     r4, r4, #4
    adc     r5, r5, #5
    adc     r6, r6, #6
    adc     r7, r7, #7
    adc     r8, r8, #8
    adc     r9, r9, #9
    adc     r10, r10, #10
    adc     r11, r11, #11
    adc     r12, r12, #12

    // loop 2
    adc     r1, r1, #1
    adc     r2, r2, #2
    adc     r3, r3, #3
    adc     r4, r4, #4
    adc     r5, r5, #5
    adc     r6, r6, #6
    adc     r7, r7, #7
    adc     r8, r8, #8
    adc     r9, r9, #9
    adc     r10, r10, #10
    adc     r11, r11, #11
    adc     r12, r12, #12

    // loop 3
    adc     r1, r1, #1
    adc     r2, r2, #2
    adc     r3, r3, #3
    adc     r4, r4, #4
    adc     r5, r5, #5
    adc     r6, r6, #6
    adc     r7, r7, #7
    adc     r8, r8, #8
    adc     r9, r9, #9
    adc     r10, r10, #10
    adc     r11, r11, #11
    adc     r12, r12, #12

    // loop 4
    adc     r1, r1, #1
    adc     r2, r2, #2
    adc     r3, r3, #3
    adc     r4, r4, #4
    adc     r5, r5, #5
    adc     r6, r6, #6
    adc     r7, r7, #7
    adc     r8, r8, #8
    adc     r9, r9, #9
    adc     r10, r10, #10
    adc     r11, r11, #11
    adc     r12, r12, #12

    // loop 5
    adc     r1, r1, #1
    adc     r2, r2, #2
    adc     r3, r3, #3
    adc     r4, r4, #4
    adc     r5, r5, #5
    adc     r6, r6, #6
    adc     r7, r7, #7
    adc     r8, r8, #8
    adc     r9, r9, #9
    adc     r10, r10, #10
    adc     r11, r11, #11
    adc     r12, r12, #12

    subs    r0, r0, #1
    bne     adcImmMaxTest_LOOP
    pop     {r4-r11, pc}

_adcRegMinTest:

    push    {r4-r11, lr}

adcRegMinTest_LOOP:

    // loop 1
    adc     r2, r2, r1, LSL #1
    adc     r3, r3, r2, LSL #2
    adc     r4, r3, r3, LSL #3
    adc     r5, r5, r4, LSL #4
    adc     r6, r6, r5, LSL #5
    adc     r7, r7, r6, LSL #6
    adc     r8, r8, r7, LSL #7
    adc     r9, r9, r8, LSL #8
    adc     r10, r10, r9, LSL #9
    adc     r11, r11, r10, LSL #10
    adc     r12, r12, r11, LSL #11
    adc     r1, r1, r12, LSL #12

    // loop 2
    adc     r2, r2, r1, LSL #1
    adc     r3, r3, r2, LSL #2
    adc     r4, r3, r3, LSL #3
    adc     r5, r5, r4, LSL #4
    adc     r6, r6, r5, LSL #5
    adc     r7, r7, r6, LSL #6
    adc     r8, r8, r7, LSL #7
    adc     r9, r9, r8, LSL #8
    adc     r10, r10, r9, LSL #9
    adc     r11, r11, r10, LSL #10
    adc     r12, r12, r11, LSL #11
    adc     r1, r1, r12, LSL #12

    // loop 3
    adc     r2, r2, r1, LSL #1
    adc     r3, r3, r2, LSL #2
    adc     r4, r3, r3, LSL #3
    adc     r5, r5, r4, LSL #4
    adc     r6, r6, r5, LSL #5
    adc     r7, r7, r6, LSL #6
    adc     r8, r8, r7, LSL #7
    adc     r9, r9, r8, LSL #8
    adc     r10, r10, r9, LSL #9
    adc     r11, r11, r10, LSL #10
    adc     r12, r12, r11, LSL #11
    adc     r1, r1, r12, LSL #12

    // loop 4
    adc     r2, r2, r1, LSL #1
    adc     r3, r3, r2, LSL #2
    adc     r4, r3, r3, LSL #3
    adc     r5, r5, r4, LSL #4
    adc     r6, r6, r5, LSL #5
    adc     r7, r7, r6, LSL #6
    adc     r8, r8, r7, LSL #7
    adc     r9, r9, r8, LSL #8
    adc     r10, r10, r9, LSL #9
    adc     r11, r11, r10, LSL #10
    adc     r12, r12, r11, LSL #11
    adc     r1, r1, r12, LSL #12

    // loop 5
    adc     r2, r2, r1, LSL #1
    adc     r3, r3, r2, LSL #2
    adc     r4, r3, r3, LSL #3
    adc     r5, r5, r4, LSL #4
    adc     r6, r6, r5, LSL #5
    adc     r7, r7, r6, LSL #6
    adc     r8, r8, r7, LSL #7
    adc     r9, r9, r8, LSL #8
    adc     r10, r10, r9, LSL #9
    adc     r11, r11, r10, LSL #10
    adc     r12, r12, r11, LSL #11
    adc     r1, r1, r12, LSL #12

    subs    r0, r0, #1
    bne     adcRegMinTest_LOOP
    pop     {r4-r11, pc}

_adcRegMaxTest:

    push    {r4-r11, lr}

adcRegMaxTest_LOOP:

    // loop 1
    adc     r1, r1, r1
    adc     r2, r2, r2
    adc     r3, r3, r3
    adc     r4, r4, r4
    adc     r5, r5, r5
    adc     r6, r6, r6
    adc     r7, r7, r7
    adc     r8, r8, r8
    adc     r9, r9, r9
    adc     r10, r10, r10
    adc     r11, r11, r11
    adc     r12, r12, r12

    // loop 2
    adc     r1, r1, r1
    adc     r2, r2, r2
    adc     r3, r3, r3
    adc     r4, r4, r4
    adc     r5, r5, r5
    adc     r6, r6, r6
    adc     r7, r7, r7
    adc     r8, r8, r8
    adc     r9, r9, r9
    adc     r10, r10, r10
    adc     r11, r11, r11
    adc     r12, r12, r12

    // loop 3
    adc     r1, r1, r1
    adc     r2, r2, r2
    adc     r3, r3, r3
    adc     r4, r4, r4
    adc     r5, r5, r5
    adc     r6, r6, r6
    adc     r7, r7, r7
    adc     r8, r8, r8
    adc     r9, r9, r9
    adc     r10, r10, r10
    adc     r11, r11, r11
    adc     r12, r12, r12

    // loop 4
    adc     r1, r1, r1
    adc     r2, r2, r2
    adc     r3, r3, r3
    adc     r4, r4, r4
    adc     r5, r5, r5
    adc     r6, r6, r6
    adc     r7, r7, r7
    adc     r8, r8, r8
    adc     r9, r9, r9
    adc     r10, r10, r10
    adc     r11, r11, r11
    adc     r12, r12, r12

    // loop 5
    adc     r1, r1, r1
    adc     r2, r2, r2
    adc     r3, r3, r3
    adc     r4, r4, r4
    adc     r5, r5, r5
    adc     r6, r6, r6
    adc     r7, r7, r7
    adc     r8, r8, r8
    adc     r9, r9, r9
    adc     r10, r10, r10
    adc     r11, r11, r11
    adc     r12, r12, r12

    subs    r0, r0, #1
    bne     adcRegMaxTest_LOOP
    pop     {r4-r11, pc}

_adcShftMinTest:

    push    {r4-r11, lr}

adcShftMinTest_LOOP:

    // loop 1
    adc     r2, r2, r1, LSL r1
    adc     r3, r3, r2, LSL r2
    adc     r4, r4, r3, LSL r3
    adc     r5, r5, r4, LSL r4
    adc     r6, r6, r5, LSL r5
    adc     r7, r7, r6, LSL r6
    adc     r8, r8, r7, LSL r7
    adc     r9, r9, r8, LSL r8
    adc     r10, r10, r9, LSL r9
    adc     r11, r11, r10, LSL r10
    adc     r12, r12, r11, LSL r11
    adc     r1, r1, r12, LSL r12

    // loop 2
    adc     r2, r2, r1, LSL r1
    adc     r3, r3, r2, LSL r2
    adc     r4, r4, r3, LSL r3
    adc     r5, r5, r4, LSL r4
    adc     r6, r6, r5, LSL r5
    adc     r7, r7, r6, LSL r6
    adc     r8, r8, r7, LSL r7
    adc     r9, r9, r8, LSL r8
    adc     r10, r10, r9, LSL r9
    adc     r11, r11, r10, LSL r10
    adc     r12, r12, r11, LSL r11
    adc     r1, r1, r12, LSL r12

    // loop 3
    adc     r2, r2, r1, LSL r1
    adc     r3, r3, r2, LSL r2
    adc     r4, r4, r3, LSL r3
    adc     r5, r5, r4, LSL r4
    adc     r6, r6, r5, LSL r5
    adc     r7, r7, r6, LSL r6
    adc     r8, r8, r7, LSL r7
    adc     r9, r9, r8, LSL r8
    adc     r10, r10, r9, LSL r9
    adc     r11, r11, r10, LSL r10
    adc     r12, r12, r11, LSL r11
    adc     r1, r1, r12, LSL r12

    // loop 4
    adc     r2, r2, r1, LSL r1
    adc     r3, r3, r2, LSL r2
    adc     r4, r4, r3, LSL r3
    adc     r5, r5, r4, LSL r4
    adc     r6, r6, r5, LSL r5
    adc     r7, r7, r6, LSL r6
    adc     r8, r8, r7, LSL r7
    adc     r9, r9, r8, LSL r8
    adc     r10, r10, r9, LSL r9
    adc     r11, r11, r10, LSL r10
    adc     r12, r12, r11, LSL r11
    adc     r1, r1, r12, LSL r12

    // loop 5
    adc     r2, r2, r1, LSL r1
    adc     r3, r3, r2, LSL r2
    adc     r4, r4, r3, LSL r3
    adc     r5, r5, r4, LSL r4
    adc     r6, r6, r5, LSL r5
    adc     r7, r7, r6, LSL r6
    adc     r8, r8, r7, LSL r7
    adc     r9, r9, r8, LSL r8
    adc     r10, r10, r9, LSL r9
    adc     r11, r11, r10, LSL r10
    adc     r12, r12, r11, LSL r11
    adc     r1, r1, r12, LSL r12

    subs    r0, r0, #1
    bne     adcShftMinTest_LOOP
    pop     {r4-r11, pc}

_adcShftMaxTest:

    push    {r4-r11, lr}

adcShftMaxTest_LOOP:

    // loop 1
    adc     r1, r1, r1, ROR r1
    adc     r2, r2, r2, ROR r2
    adc     r3, r3, r3, ROR r3
    adc     r4, r4, r4, ROR r4
    adc     r5, r5, r5, ROR r5
    adc     r6, r6, r6, ROR r6
    adc     r7, r7, r7, ROR r7
    adc     r8, r8, r8, ROR r8
    adc     r9, r9, r9, ROR r9
    adc     r10, r10, r10, ROR r10
    adc     r11, r11, r11, ROR r11
    adc     r12, r12, r12, ROR r12

    // loop 2
    adc     r1, r1, r1, ROR r1
    adc     r2, r2, r2, ROR r2
    adc     r3, r3, r3, ROR r3
    adc     r4, r4, r4, ROR r4
    adc     r5, r5, r5, ROR r5
    adc     r6, r6, r6, ROR r6
    adc     r7, r7, r7, ROR r7
    adc     r8, r8, r8, ROR r8
    adc     r9, r9, r9, ROR r9
    adc     r10, r10, r10, ROR r10
    adc     r11, r11, r11, ROR r11
    adc     r12, r12, r12, ROR r12

    // loop 3
    adc     r1, r1, r1, ROR r1
    adc     r2, r2, r2, ROR r2
    adc     r3, r3, r3, ROR r3
    adc     r4, r4, r4, ROR r4
    adc     r5, r5, r5, ROR r5
    adc     r6, r6, r6, ROR r6
    adc     r7, r7, r7, ROR r7
    adc     r8, r8, r8, ROR r8
    adc     r9, r9, r9, ROR r9
    adc     r10, r10, r10, ROR r10
    adc     r11, r11, r11, ROR r11
    adc     r12, r12, r12, ROR r12

    // loop 4
    adc     r1, r1, r1, ROR r1
    adc     r2, r2, r2, ROR r2
    adc     r3, r3, r3, ROR r3
    adc     r4, r4, r4, ROR r4
    adc     r5, r5, r5, ROR r5
    adc     r6, r6, r6, ROR r6
    adc     r7, r7, r7, ROR r7
    adc     r8, r8, r8, ROR r8
    adc     r9, r9, r9, ROR r9
    adc     r10, r10, r10, ROR r10
    adc     r11, r11, r11, ROR r11
    adc     r12, r12, r12, ROR r12

    // loop 5
    adc     r1, r1, r1, ROR r1
    adc     r2, r2, r2, ROR r2
    adc     r3, r3, r3, ROR r3
    adc     r4, r4, r4, ROR r4
    adc     r5, r5, r5, ROR r5
    adc     r6, r6, r6, ROR r6
    adc     r7, r7, r7, ROR r7
    adc     r8, r8, r8, ROR r8
    adc     r9, r9, r9, ROR r9
    adc     r10, r10, r10, ROR r10
    adc     r11, r11, r11, ROR r11
    adc     r12, r12, r12, ROR r12

    subs    r0, r0, #1
    bne     adcShftMaxTest_LOOP
    pop     {r4-r11, pc}


_addImmMinTest:

    push    {r4-r11, lr}

addImmMinTest_LOOP:

    // loop 1
    add     r2, r1, #1
    add     r3, r2, #2
    add     r4, r3, #3
    add     r5, r4, #4
    add     r6, r5, #5
    add     r7, r6, #6
    add     r8, r7, #7
    add     r9, r8, #8
    add     r10, r9, #9
    add     r11, r10, #10
    add     r12, r11, #11
    add     r1, r12, #12

    // loop 2
    add     r2, r1, #1
    add     r3, r2, #2
    add     r4, r3, #3
    add     r5, r4, #4
    add     r6, r5, #5
    add     r7, r6, #6
    add     r8, r7, #7
    add     r9, r8, #8
    add     r10, r9, #9
    add     r11, r10, #10
    add     r12, r11, #11
    add     r1, r12, #12

    // loop 3
    add     r2, r1, #1
    add     r3, r2, #2
    add     r4, r3, #3
    add     r5, r4, #4
    add     r6, r5, #5
    add     r7, r6, #6
    add     r8, r7, #7
    add     r9, r8, #8
    add     r10, r9, #9
    add     r11, r10, #10
    add     r12, r11, #11
    add     r1, r12, #12

    // loop 4
    add     r2, r1, #1
    add     r3, r2, #2
    add     r4, r3, #3
    add     r5, r4, #4
    add     r6, r5, #5
    add     r7, r6, #6
    add     r8, r7, #7
    add     r9, r8, #8
    add     r10, r9, #9
    add     r11, r10, #10
    add     r12, r11, #11
    add     r1, r12, #12

    // loop 5
    add     r2, r1, #1
    add     r3, r2, #2
    add     r4, r3, #3
    add     r5, r4, #4
    add     r6, r5, #5
    add     r7, r6, #6
    add     r8, r7, #7
    add     r9, r8, #8
    add     r10, r9, #9
    add     r11, r10, #10
    add     r12, r11, #11
    add     r1, r12, #12

    subs    r0, r0, #1
    bne     addImmMinTest_LOOP
    pop     {r4-r11, pc}

_addImmMaxTest:

    push    {r4-r11, lr}

addImmMaxTest_LOOP:

    // loop 1
    add     r1, r1, #1
    add     r2, r2, #2
    add     r3, r3, #3
    add     r4, r4, #4
    add     r5, r5, #5
    add     r6, r6, #6
    add     r7, r7, #7
    add     r8, r8, #8
    add     r9, r9, #9
    add     r10, r10, #0
    add     r11, r11, #11
    add     r12, r12, #12

    // loop 2
    add     r1, r1, #1
    add     r2, r2, #2
    add     r3, r3, #3
    add     r4, r4, #4
    add     r5, r5, #5
    add     r6, r6, #6
    add     r7, r7, #7
    add     r8, r8, #8
    add     r9, r9, #9
    add     r10, r10, #0
    add     r11, r11, #11
    add     r12, r12, #12

    // loop 3
    add     r1, r1, #1
    add     r2, r2, #2
    add     r3, r3, #3
    add     r4, r4, #4
    add     r5, r5, #5
    add     r6, r6, #6
    add     r7, r7, #7
    add     r8, r8, #8
    add     r9, r9, #9
    add     r10, r10, #0
    add     r11, r11, #11
    add     r12, r12, #12

    // loop 4
    add     r1, r1, #1
    add     r2, r2, #2
    add     r3, r3, #3
    add     r4, r4, #4
    add     r5, r5, #5
    add     r6, r6, #6
    add     r7, r7, #7
    add     r8, r8, #8
    add     r9, r9, #9
    add     r10, r10, #0
    add     r11, r11, #11
    add     r12, r12, #12

    // loop 5
    add     r1, r1, #1
    add     r2, r2, #2
    add     r3, r3, #3
    add     r4, r4, #4
    add     r5, r5, #5
    add     r6, r6, #6
    add     r7, r7, #7
    add     r8, r8, #8
    add     r9, r9, #9
    add     r10, r10, #0
    add     r11, r11, #11
    add     r12, r12, #12

    subs    r0, r0, #1
    bne     addImmMaxTest_LOOP
    pop     {r4-r11, pc}

.thumb

.thumb_func
_addThumbImmT1MinTest:

    push    {r4-r7, lr}

.thumb_func
addThumbImmT1MinTest_LOOP:

    // loop 1
    adds    r1, r1, #0
    adds    r2, r2, #1
    adds    r3, r3, #2
    adds    r4, r4, #3
    adds    r5, r5, #4
    adds    r6, r6, #5
    adds    r7, r7, #6
    adds    r1, r1, #7
    adds    r2, r2, #0
    adds    r3, r3, #1
    adds    r4, r4, #2
    adds    r5, r5, #3

    // loop 2
    adds    r1, r1, #0
    adds    r2, r2, #1
    adds    r3, r3, #2
    adds    r4, r4, #3
    adds    r5, r5, #4
    adds    r6, r6, #5
    adds    r7, r7, #6
    adds    r1, r1, #7
    adds    r2, r2, #0
    adds    r3, r3, #1
    adds    r4, r4, #2
    adds    r5, r5, #3

    // loop 3
    adds    r1, r1, #0
    adds    r2, r2, #1
    adds    r3, r3, #2
    adds    r4, r4, #3
    adds    r5, r5, #4
    adds    r6, r6, #5
    adds    r7, r7, #6
    adds    r1, r1, #7
    adds    r2, r2, #0
    adds    r3, r3, #1
    adds    r4, r4, #2
    adds    r5, r5, #3

    // loop 4
    adds    r1, r1, #0
    adds    r2, r2, #1
    adds    r3, r3, #2
    adds    r4, r4, #3
    adds    r5, r5, #4
    adds    r6, r6, #5
    adds    r7, r7, #6
    adds    r1, r1, #7
    adds    r2, r2, #0
    adds    r3, r3, #1
    adds    r4, r4, #2
    adds    r5, r5, #3

    // loop 5
    adds    r1, r1, #0
    adds    r2, r2, #1
    adds    r3, r3, #2
    adds    r4, r4, #3
    adds    r5, r5, #4
    adds    r6, r6, #5
    adds    r7, r7, #6
    adds    r1, r1, #7
    adds    r2, r2, #0
    adds    r3, r3, #1
    adds    r4, r4, #2
    adds    r5, r5, #3

    subs    r0, r0, #1
    bne    addThumbImmT1MinTest_LOOP
    pop     {r4-r7, pc}

.thumb_func
_addThumbImmT1MaxTest:

    push    {r4-r7, lr}

.thumb_func
addThumbImmT1MaxTest_LOOP:

    // loop 1
    adds    r2, r1, #0
    adds    r3, r2, #1
    adds    r4, r3, #2
    adds    r5, r4, #3
    adds    r6, r5, #4
    adds    r7, r6, #5
    adds    r1, r7, #6
    adds    r2, r1, #7
    adds    r3, r2, #0
    adds    r4, r3, #1
    adds    r5, r4, #2
    adds    r6, r5, #3

    // loop 2
    adds    r7, r6, #0
    adds    r1, r7, #1
    adds    r2, r1, #2
    adds    r3, r2, #3
    adds    r4, r3, #4
    adds    r5, r4, #5
    adds    r6, r5, #6
    adds    r7, r6, #7
    adds    r1, r7, #0
    adds    r2, r1, #1
    adds    r3, r2, #2
    adds    r4, r3, #3

    // loop 3
    adds    r5, r4, #0
    adds    r6, r5, #1
    adds    r7, r6, #2
    adds    r1, r7, #3
    adds    r2, r1, #4
    adds    r3, r2, #5
    adds    r4, r3, #6
    adds    r5, r4, #7
    adds    r6, r5, #0
    adds    r7, r6, #1
    adds    r1, r7, #2
    adds    r2, r1, #3

    // loop 4
    adds    r3, r2, #0
    adds    r4, r3, #1
    adds    r5, r4, #2
    adds    r6, r5, #3
    adds    r7, r6, #4
    adds    r1, r7, #5
    adds    r2, r1, #6
    adds    r3, r2, #7
    adds    r4, r3, #0
    adds    r5, r4, #1
    adds    r6, r5, #2
    adds    r7, r6, #3

    // loop 5
    adds    r1, r7, #0
    adds    r2, r1, #1
    adds    r3, r2, #2
    adds    r4, r3, #3
    adds    r5, r4, #4
    adds    r6, r5, #5
    adds    r7, r6, #6
    adds    r1, r7, #7
    adds    r2, r1, #0
    adds    r3, r2, #1
    adds    r4, r3, #2
    adds    r5, r4, #3

    subs    r0, r0, #1
    bne    addThumbImmT1MaxTest_LOOP
    pop     {r4-r7, pc}

.thumb_func
_addThumbImmT2MinTest:

    push    {r4-r11, lr}

.thumb_func
addThumbImmT2MinTest_LOOP:

    // loop 1
    adds    r1, #1
    adds    r2, #2
    adds    r3, #3
    adds    r4, #4
    adds    r5, #5
    adds    r6, #6
    adds    r7, #7
    adds    r8, #8
    adds    r9, #9
    adds    r10, #10
    adds    r11, #11
    adds    r12, #12

    // loop 2
    adds    r1, #1
    adds    r2, #2
    adds    r3, #3
    adds    r4, #4
    adds    r5, #5
    adds    r6, #6
    adds    r7, #7
    adds    r8, #8
    adds    r9, #9
    adds    r10, #10
    adds    r11, #11
    adds    r12, #12

    // loop 3
    adds    r1, #1
    adds    r2, #2
    adds    r3, #3
    adds    r4, #4
    adds    r5, #5
    adds    r6, #6
    adds    r7, #7
    adds    r8, #8
    adds    r9, #9
    adds    r10, #10
    adds    r11, #11
    adds    r12, #12

    // loop 4
    adds    r1, #1
    adds    r2, #2
    adds    r3, #3
    adds    r4, #4
    adds    r5, #5
    adds    r6, #6
    adds    r7, #7
    adds    r8, #8
    adds    r9, #9
    adds    r10, #10
    adds    r11, #11
    adds    r12, #12

    // loop 5
    adds    r1, #1
    adds    r2, #2
    adds    r3, #3
    adds    r4, #4
    adds    r5, #5
    adds    r6, #6
    adds    r7, #7
    adds    r8, #8
    adds    r9, #9
    adds    r10, #10
    adds    r11, #11
    adds    r12, #12

    subs    r0, r0, #1
    bne    addThumbImmT2MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbImmT2MaxTest:

    push    {r4-r11, lr}

.thumb_func
addThumbImmT2MaxTest_LOOP:

    // loop 1
    adds    r1, #1
    adds    r1, #2
    adds    r1, #3
    adds    r1, #4
    adds    r1, #5
    adds    r1, #6
    adds    r1, #7
    adds    r1, #8
    adds    r1, #9
    adds    r1, #10
    adds    r1, #11
    adds    r1, #12

    // loop 2
    adds    r1, #1
    adds    r1, #2
    adds    r1, #3
    adds    r1, #4
    adds    r1, #5
    adds    r1, #6
    adds    r1, #7
    adds    r1, #8
    adds    r1, #9
    adds    r1, #10
    adds    r1, #11
    adds    r1, #12

    // loop 3
    adds    r1, #1
    adds    r1, #2
    adds    r1, #3
    adds    r1, #4
    adds    r1, #5
    adds    r1, #6
    adds    r1, #7
    adds    r1, #8
    adds    r1, #9
    adds    r1, #10
    adds    r1, #11
    adds    r1, #12

    // loop 4
    adds    r1, #1
    adds    r1, #2
    adds    r1, #3
    adds    r1, #4
    adds    r1, #5
    adds    r1, #6
    adds    r1, #7
    adds    r1, #8
    adds    r1, #9
    adds    r1, #10
    adds    r1, #11
    adds    r1, #12

    // loop 5
    adds    r1, #1
    adds    r1, #2
    adds    r1, #3
    adds    r1, #4
    adds    r1, #5
    adds    r1, #6
    adds    r1, #7
    adds    r1, #8
    adds    r1, #9
    adds    r1, #10
    adds    r1, #11
    adds    r1, #12

    subs    r0, r0, #1
    bne     addThumbImmT2MaxTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbImmT3MinTest:

    push    {r4-r11, lr}

.thumb_func
addThumbImmT3MinTest_LOOP:

    // loop 1
    add.w   r1, r1, #1
    add.w   r2, r2, #2
    add.w   r3, r3, #3
    add.w   r4, r4, #4
    add.w   r5, r5, #5
    add.w   r6, r6, #6
    add.w   r7, r7, #7
    add.w   r8, r8, #8
    add.w   r9, r9, #9
    add.w   r10, r10, #10
    add.w   r11, r11, #11
    add.w   r12, r12, #12

    // loop 2
    add.w   r1, r1, #1
    add.w   r2, r2, #2
    add.w   r3, r3, #3
    add.w   r4, r4, #4
    add.w   r5, r5, #5
    add.w   r6, r6, #6
    add.w   r7, r7, #7
    add.w   r8, r8, #8
    add.w   r9, r9, #9
    add.w   r10, r10, #10
    add.w   r11, r11, #11
    add.w   r12, r12, #12

    // loop 3
    add.w   r1, r1, #1
    add.w   r2, r2, #2
    add.w   r3, r3, #3
    add.w   r4, r4, #4
    add.w   r5, r5, #5
    add.w   r6, r6, #6
    add.w   r7, r7, #7
    add.w   r8, r8, #8
    add.w   r9, r9, #9
    add.w   r10, r10, #10
    add.w   r11, r11, #11
    add.w   r12, r12, #12

    // loop 4
    add.w   r1, r1, #1
    add.w   r2, r2, #2
    add.w   r3, r3, #3
    add.w   r4, r4, #4
    add.w   r5, r5, #5
    add.w   r6, r6, #6
    add.w   r7, r7, #7
    add.w   r8, r8, #8
    add.w   r9, r9, #9
    add.w   r10, r10, #10
    add.w   r11, r11, #11
    add.w   r12, r12, #12

    // loop 5
    add.w   r1, r1, #1
    add.w   r2, r2, #2
    add.w   r3, r3, #3
    add.w   r4, r4, #4
    add.w   r5, r5, #5
    add.w   r6, r6, #6
    add.w   r7, r7, #7
    add.w   r8, r8, #8
    add.w   r9, r9, #9
    add.w   r10, r10, #10
    add.w   r11, r11, #11
    add.w   r12, r12, #12

    subs    r0, r0, #1
    bne     addThumbImmT3MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbImmT3MaxTest:

    push    {r4-r11, lr}

.thumb_func
addThumbImmT3MaxTest_LOOP:

    // loop 1
    add.w   r2, r1, #1
    add.w   r3, r2, #2
    add.w   r4, r3, #3
    add.w   r5, r4, #4
    add.w   r6, r5, #5
    add.w   r7, r6, #6
    add.w   r8, r7, #7
    add.w   r9, r8, #8
    add.w   r10, r9, #9
    add.w   r11, r10, #10
    add.w   r12, r11, #11
    add.w   r1, r12, #12

    // loop 2
    add.w   r2, r1, #1
    add.w   r3, r2, #2
    add.w   r4, r3, #3
    add.w   r5, r4, #4
    add.w   r6, r5, #5
    add.w   r7, r6, #6
    add.w   r8, r7, #7
    add.w   r9, r8, #8
    add.w   r10, r9, #9
    add.w   r11, r10, #10
    add.w   r12, r11, #11
    add.w   r1, r12, #12

    // loop 3
    add.w   r2, r1, #1
    add.w   r3, r2, #2
    add.w   r4, r3, #3
    add.w   r5, r4, #4
    add.w   r6, r5, #5
    add.w   r7, r6, #6
    add.w   r8, r7, #7
    add.w   r9, r8, #8
    add.w   r10, r9, #9
    add.w   r11, r10, #10
    add.w   r12, r11, #11
    add.w   r1, r12, #12

    // loop 4
    add.w   r2, r1, #1
    add.w   r3, r2, #2
    add.w   r4, r3, #3
    add.w   r5, r4, #4
    add.w   r6, r5, #5
    add.w   r7, r6, #6
    add.w   r8, r7, #7
    add.w   r9, r8, #8
    add.w   r10, r9, #9
    add.w   r11, r10, #10
    add.w   r12, r11, #11
    add.w   r1, r12, #12

    // loop 5
    add.w   r2, r1, #1
    add.w   r3, r2, #2
    add.w   r4, r3, #3
    add.w   r5, r4, #4
    add.w   r6, r5, #5
    add.w   r7, r6, #6
    add.w   r8, r7, #7
    add.w   r9, r8, #8
    add.w   r10, r9, #9
    add.w   r11, r10, #10
    add.w   r12, r11, #11
    add.w   r1, r12, #12

    subs    r0, r0, #1
    bne     addThumbImmT3MaxTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbImmT4MinTest:

    push    {r4-r11, lr}

.thumb_func
addThumbImmT4MinTest_LOOP:

    // loop 1
    addw   r1, r1, #1
    addw   r2, r2, #2
    addw   r3, r3, #3
    addw   r4, r4, #4
    addw   r5, r5, #5
    addw   r6, r6, #6
    addw   r7, r7, #7
    addw   r8, r8, #8
    addw   r9, r9, #9
    addw   r10, r10, #10
    addw   r11, r11, #11
    addw   r12, r12, #12

    // loop 2
    addw   r1, r1, #1
    addw   r2, r2, #2
    addw   r3, r3, #3
    addw   r4, r4, #4
    addw   r5, r5, #5
    addw   r6, r6, #6
    addw   r7, r7, #7
    addw   r8, r8, #8
    addw   r9, r9, #9
    addw   r10, r10, #10
    addw   r11, r11, #11
    addw   r12, r12, #12

    // loop 3
    addw   r1, r1, #1
    addw   r2, r2, #2
    addw   r3, r3, #3
    addw   r4, r4, #4
    addw   r5, r5, #5
    addw   r6, r6, #6
    addw   r7, r7, #7
    addw   r8, r8, #8
    addw   r9, r9, #9
    addw   r10, r10, #10
    addw   r11, r11, #11
    addw   r12, r12, #12

    // loop 4
    addw   r1, r1, #1
    addw   r2, r2, #2
    addw   r3, r3, #3
    addw   r4, r4, #4
    addw   r5, r5, #5
    addw   r6, r6, #6
    addw   r7, r7, #7
    addw   r8, r8, #8
    addw   r9, r9, #9
    addw   r10, r10, #10
    addw   r11, r11, #11
    addw   r12, r12, #12

    // loop 5
    addw   r1, r1, #1
    addw   r2, r2, #2
    addw   r3, r3, #3
    addw   r4, r4, #4
    addw   r5, r5, #5
    addw   r6, r6, #6
    addw   r7, r7, #7
    addw   r8, r8, #8
    addw   r9, r9, #9
    addw   r10, r10, #10
    addw   r11, r11, #11
    addw   r12, r12, #12

    subs    r0, r0, #1
    bne     addThumbImmT4MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbImmT4MaxTest:

    push    {r4-r11, lr}

.thumb_func
addThumbImmT4MaxTest_LOOP:

    // loop 1
    addw   r2, r1, #1
    addw   r3, r2, #2
    addw   r4, r3, #3
    addw   r5, r4, #4
    addw   r6, r5, #5
    addw   r7, r6, #6
    addw   r8, r7, #7
    addw   r9, r8, #8
    addw   r10, r9, #9
    addw   r11, r10, #10
    addw   r12, r11, #11
    addw   r1, r12, #12

    // loop 2
    addw   r2, r1, #1
    addw   r3, r2, #2
    addw   r4, r3, #3
    addw   r5, r4, #4
    addw   r6, r5, #5
    addw   r7, r6, #6
    addw   r8, r7, #7
    addw   r9, r8, #8
    addw   r10, r9, #9
    addw   r11, r10, #10
    addw   r12, r11, #11
    addw   r1, r12, #12

    // loop 3
    addw   r2, r1, #1
    addw   r3, r2, #2
    addw   r4, r3, #3
    addw   r5, r4, #4
    addw   r6, r5, #5
    addw   r7, r6, #6
    addw   r8, r7, #7
    addw   r9, r8, #8
    addw   r10, r9, #9
    addw   r11, r10, #10
    addw   r12, r11, #11
    addw   r1, r12, #12

    // loop 4
    addw   r2, r1, #1
    addw   r3, r2, #2
    addw   r4, r3, #3
    addw   r5, r4, #4
    addw   r6, r5, #5
    addw   r7, r6, #6
    addw   r8, r7, #7
    addw   r9, r8, #8
    addw   r10, r9, #9
    addw   r11, r10, #10
    addw   r12, r11, #11
    addw   r1, r12, #12

    // loop 5
    addw   r2, r1, #1
    addw   r3, r2, #2
    addw   r4, r3, #3
    addw   r5, r4, #4
    addw   r6, r5, #5
    addw   r7, r6, #6
    addw   r8, r7, #7
    addw   r9, r8, #8
    addw   r10, r9, #9
    addw   r11, r10, #10
    addw   r12, r11, #11
    addw   r1, r12, #12

    subs    r0, r0, #1
    bne     addThumbImmT4MaxTest_LOOP
    pop     {r4-r11, pc}


.thumb_func
_addThumbRegT1MinTest:

    push    {r4-r11, lr}

.thumb_func
addThumbRegT1MinTest_LOOP:

    // loop 1
    adds     r1, r1, r1
    adds     r2, r2, r2
    adds     r3, r3, r3
    adds     r4, r4, r4
    adds     r5, r5, r5
    adds     r6, r6, r6
    adds     r7, r7, r7
    adds     r8, r8, r8
    adds     r9, r9, r9
    adds     r10, r10, r10
    adds     r11, r11, r11
    adds     r12, r12, r12

    // loop 2
    adds     r1, r1, r1
    adds     r2, r2, r2
    adds     r3, r3, r3
    adds     r4, r4, r4
    adds     r5, r5, r5
    adds     r6, r6, r6
    adds     r7, r7, r7
    adds     r8, r8, r8
    adds     r9, r9, r9
    adds     r10, r10, r10
    adds     r11, r11, r11
    adds     r12, r12, r12

    // loop 3
    adds     r1, r1, r1
    adds     r2, r2, r2
    adds     r3, r3, r3
    adds     r4, r4, r4
    adds     r5, r5, r5
    adds     r6, r6, r6
    adds     r7, r7, r7
    adds     r8, r8, r8
    adds     r9, r9, r9
    adds     r10, r10, r10
    adds     r11, r11, r11
    adds     r12, r12, r12

    // loop 4
    adds     r1, r1, r1
    adds     r2, r2, r2
    adds     r3, r3, r3
    adds     r4, r4, r4
    adds     r5, r5, r5
    adds     r6, r6, r6
    adds     r7, r7, r7
    adds     r8, r8, r8
    adds     r9, r9, r9
    adds     r10, r10, r10
    adds     r11, r11, r11
    adds     r12, r12, r12

    // loop 5
    adds     r1, r1, r1
    adds     r2, r2, r2
    adds     r3, r3, r3
    adds     r4, r4, r4
    adds     r5, r5, r5
    adds     r6, r6, r6
    adds     r7, r7, r7
    adds     r8, r8, r8
    adds     r9, r9, r9
    adds     r10, r10, r10
    adds     r11, r11, r11
    adds     r12, r12, r12

    subs    r0, r0, #1
    bne     addThumbRegT1MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbRegT1MaxTest:

    push    {r4-r11, lr}

.thumb_func
addThumbRegT1MaxTest_LOOP:

    // loop 1
    adds     r2, r2, r1
    adds     r3, r3, r2
    adds     r4, r4, r3
    adds     r5, r5, r4
    adds     r6, r6, r5
    adds     r7, r7, r6
    adds     r8, r8, r7
    adds     r9, r9, r8
    adds     r10, r10, r9
    adds     r11, r11, r10
    adds     r12, r12, r11
    adds     r1, r1, r12

    // loop 2
    adds     r2, r2, r1
    adds     r3, r3, r2
    adds     r4, r4, r3
    adds     r5, r5, r4
    adds     r6, r6, r5
    adds     r7, r7, r6
    adds     r8, r8, r7
    adds     r9, r9, r8
    adds     r10, r10, r9
    adds     r11, r11, r10
    adds     r12, r12, r11
    adds     r1, r1, r12

    // loop 3
    adds     r2, r2, r1
    adds     r3, r3, r2
    adds     r4, r4, r3
    adds     r5, r5, r4
    adds     r6, r6, r5
    adds     r7, r7, r6
    adds     r8, r8, r7
    adds     r9, r9, r8
    adds     r10, r10, r9
    adds     r11, r11, r10
    adds     r12, r12, r11
    adds     r1, r1, r12

    // loop 4
    adds     r2, r2, r1
    adds     r3, r3, r2
    adds     r4, r4, r3
    adds     r5, r5, r4
    adds     r6, r6, r5
    adds     r7, r7, r6
    adds     r8, r8, r7
    adds     r9, r9, r8
    adds     r10, r10, r9
    adds     r11, r11, r10
    adds     r12, r12, r11
    adds     r1, r1, r12

    // loop 5
    adds     r2, r2, r1
    adds     r3, r3, r2
    adds     r4, r4, r3
    adds     r5, r5, r4
    adds     r6, r6, r5
    adds     r7, r7, r6
    adds     r8, r8, r7
    adds     r9, r9, r8
    adds     r10, r10, r9
    adds     r11, r11, r10
    adds     r12, r12, r11
    adds     r1, r1, r12

    subs    r0, r0, #1
    bne     addThumbRegT1MaxTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbRegT2MinTest:

    push    {r4-r11, lr}

addThumbRegT2MinTest_LOOP:

    // loop 1
    add     r1, r1
    add     r2, r2
    add     r3, r3
    add     r4, r4
    add     r5, r5
    add     r6, r6
    add     r7, r7
    add     r8, r8
    add     r9, r9
    add     r10, r10
    add     r11, r11
    add     r12, r12

    // loop 2
    add     r1, r1
    add     r2, r2
    add     r3, r3
    add     r4, r4
    add     r5, r5
    add     r6, r6
    add     r7, r7
    add     r8, r8
    add     r9, r9
    add     r10, r10
    add     r11, r11
    add     r12, r12

    // loop 3
    add     r1, r1
    add     r2, r2
    add     r3, r3
    add     r4, r4
    add     r5, r5
    add     r6, r6
    add     r7, r7
    add     r8, r8
    add     r9, r9
    add     r10, r10
    add     r11, r11
    add     r12, r12

    // loop 4
    add     r1, r1
    add     r2, r2
    add     r3, r3
    add     r4, r4
    add     r5, r5
    add     r6, r6
    add     r7, r7
    add     r8, r8
    add     r9, r9
    add     r10, r10
    add     r11, r11
    add     r12, r12

    // loop 5
    add     r1, r1
    add     r2, r2
    add     r3, r3
    add     r4, r4
    add     r5, r5
    add     r6, r6
    add     r7, r7
    add     r8, r8
    add     r9, r9
    add     r10, r10
    add     r11, r11
    add     r12, r12

    subs    r0, r0, #1
    bne     addThumbRegT2MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbRegT2MaxTest:

    push    {r4-r11, lr}

addThumbRegT2MaxTest_LOOP:

    // loop 1
    add     r2, r1
    add     r3, r2
    add     r4, r3
    add     r5, r4
    add     r6, r5
    add     r7, r6
    add     r8, r7
    add     r9, r8
    add     r10, r9
    add     r11, r10
    add     r12, r11
    add     r1, r12

    // loop 2
    add     r2, r1
    add     r3, r2
    add     r4, r3
    add     r5, r4
    add     r6, r5
    add     r7, r6
    add     r8, r7
    add     r9, r8
    add     r10, r9
    add     r11, r10
    add     r12, r11
    add     r1, r12

    // loop 3
    add     r2, r1
    add     r3, r2
    add     r4, r3
    add     r5, r4
    add     r6, r5
    add     r7, r6
    add     r8, r7
    add     r9, r8
    add     r10, r9
    add     r11, r10
    add     r12, r11
    add     r1, r12

    // loop 4
    add     r2, r1
    add     r3, r2
    add     r4, r3
    add     r5, r4
    add     r6, r5
    add     r7, r6
    add     r8, r7
    add     r9, r8
    add     r10, r9
    add     r11, r10
    add     r12, r11
    add     r1, r12

    // loop 5
    add     r2, r1
    add     r3, r2
    add     r4, r3
    add     r5, r4
    add     r6, r5
    add     r7, r6
    add     r8, r7
    add     r9, r8
    add     r10, r9
    add     r11, r10
    add     r12, r11
    add     r1, r12

    subs    r0, r0, #1
    bne     addThumbRegT2MaxTest_LOOP
    pop     {r4-r11, pc}


.thumb_func
_addThumbRegT3MinTest:

    push    {r4-r11, lr}

addThumbRegT3MinTest_LOOP:

    // loop 1
    add.w     r1, r1, r1
    add.w     r2, r2, r2
    add.w     r3, r3, r3
    add.w     r4, r4, r4
    add.w     r5, r5, r5
    add.w     r6, r6, r6
    add.w     r7, r7, r7
    add.w     r8, r8, r8
    add.w     r9, r9, r9
    add.w     r10, r10, r10
    add.w     r11, r11, r11
    add.w     r12, r12, r12

    // loop 2
    add.w     r1, r1, r1
    add.w     r2, r2, r2
    add.w     r3, r3, r3
    add.w     r4, r4, r4
    add.w     r5, r5, r5
    add.w     r6, r6, r6
    add.w     r7, r7, r7
    add.w     r8, r8, r8
    add.w     r9, r9, r9
    add.w     r10, r10, r10
    add.w     r11, r11, r11
    add.w     r12, r12, r12

    // loop 3
    add.w     r1, r1, r1
    add.w     r2, r2, r2
    add.w     r3, r3, r3
    add.w     r4, r4, r4
    add.w     r5, r5, r5
    add.w     r6, r6, r6
    add.w     r7, r7, r7
    add.w     r8, r8, r8
    add.w     r9, r9, r9
    add.w     r10, r10, r10
    add.w     r11, r11, r11
    add.w     r12, r12, r12

    // loop 4
    add.w     r1, r1, r1
    add.w     r2, r2, r2
    add.w     r3, r3, r3
    add.w     r4, r4, r4
    add.w     r5, r5, r5
    add.w     r6, r6, r6
    add.w     r7, r7, r7
    add.w     r8, r8, r8
    add.w     r9, r9, r9
    add.w     r10, r10, r10
    add.w     r11, r11, r11
    add.w     r12, r12, r12

    // loop 5
    add.w     r1, r1, r1
    add.w     r2, r2, r2
    add.w     r3, r3, r3
    add.w     r4, r4, r4
    add.w     r5, r5, r5
    add.w     r6, r6, r6
    add.w     r7, r7, r7
    add.w     r8, r8, r8
    add.w     r9, r9, r9
    add.w     r10, r10, r10
    add.w     r11, r11, r11
    add.w     r12, r12, r12

    subs    r0, r0, #1
    bne     addThumbRegT3MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_addThumbRegT3MaxTest:

    push    {r4-r11, lr}

addThumbRegT3MaxTest_LOOP:

    // loop 1
    add.w     r2, r2, r1, LSL #1
    add.w     r3, r3, r2, LSR #2
    add.w     r4, r4, r3, ASL #3
    add.w     r5, r5, r4, ROR #4
    add.w     r6, r6, r5, LSL #5
    add.w     r7, r7, r6, LSR #6
    add.w     r8, r8, r7, ASR #7
    add.w     r9, r9, r8, ROR #8
    add.w     r10, r10, r9, LSL #9
    add.w     r11, r11, r10, LSR #10
    add.w     r12, r12, r11, ASR #11
    add.w     r1, r1, r12, ROR #12

    // loop 2
    add.w     r2, r2, r1, LSL #1
    add.w     r3, r3, r2, LSR #2
    add.w     r4, r4, r3, ASL #3
    add.w     r5, r5, r4, ROR #4
    add.w     r6, r6, r5, LSL #5
    add.w     r7, r7, r6, LSR #6
    add.w     r8, r8, r7, ASR #7
    add.w     r9, r9, r8, ROR #8
    add.w     r10, r10, r9, LSL #9
    add.w     r11, r11, r10, LSR #10
    add.w     r12, r12, r11, ASR #11
    add.w     r1, r1, r12, ROR #12

    // loop 3
    add.w     r2, r2, r1, LSL #1
    add.w     r3, r3, r2, LSR #2
    add.w     r4, r4, r3, ASL #3
    add.w     r5, r5, r4, ROR #4
    add.w     r6, r6, r5, LSL #5
    add.w     r7, r7, r6, LSR #6
    add.w     r8, r8, r7, ASR #7
    add.w     r9, r9, r8, ROR #8
    add.w     r10, r10, r9, LSL #9
    add.w     r11, r11, r10, LSR #10
    add.w     r12, r12, r11, ASR #11
    add.w     r1, r1, r12, ROR #12

    // loop 4
    add.w     r2, r2, r1, LSL #1
    add.w     r3, r3, r2, LSR #2
    add.w     r4, r4, r3, ASL #3
    add.w     r5, r5, r4, ROR #4
    add.w     r6, r6, r5, LSL #5
    add.w     r7, r7, r6, LSR #6
    add.w     r8, r8, r7, ASR #7
    add.w     r9, r9, r8, ROR #8
    add.w     r10, r10, r9, LSL #9
    add.w     r11, r11, r10, LSR #10
    add.w     r12, r12, r11, ASR #11
    add.w     r1, r1, r12, ROR #12

    // loop 5
    add.w     r2, r2, r1, LSL #1
    add.w     r3, r3, r2, LSR #2
    add.w     r4, r4, r3, ASL #3
    add.w     r5, r5, r4, ROR #4
    add.w     r6, r6, r5, LSL #5
    add.w     r7, r7, r6, LSR #6
    add.w     r8, r8, r7, ASR #7
    add.w     r9, r9, r8, ROR #8
    add.w     r10, r10, r9, LSL #9
    add.w     r11, r11, r10, LSR #10
    add.w     r12, r12, r11, ASR #11
    add.w     r1, r1, r12, ROR #12

    subs    r0, r0, #1
    bne     addThumbRegT3MaxTest_LOOP
    pop     {r4-r11, pc}



.arm

_addRegMinTest:

    push    {r4-r11, lr}

addRegMinTest_LOOP:

    // loop 1
    add     r2, r2, r1, ROR #1
    add     r3, r3, r2, ROR #2
    add     r4, r4, r3, ROR #3
    add     r5, r5, r4, ROR #4
    add     r6, r6, r5, ROR #5
    add     r7, r7, r6, ROR #6
    add     r8, r8, r7, ROR #7
    add     r9, r9, r8, ROR #8
    add     r10, r10, r9, ROR #9
    add     r11, r11, r10, ROR #10
    add     r12, r12, r11, ROR #11
    add     r1, r1, r12, ROR #12

    // loop 2
    add     r2, r2, r1, ROR #1
    add     r3, r3, r2, ROR #2
    add     r4, r4, r3, ROR #3
    add     r5, r5, r4, ROR #4
    add     r6, r6, r5, ROR #5
    add     r7, r7, r6, ROR #6
    add     r8, r8, r7, ROR #7
    add     r9, r9, r8, ROR #8
    add     r10, r10, r9, ROR #9
    add     r11, r11, r10, ROR #10
    add     r12, r12, r11, ROR #11
    add     r1, r1, r12, ROR #12

    // loop 3
    add     r2, r2, r1, ROR #1
    add     r3, r3, r2, ROR #2
    add     r4, r4, r3, ROR #3
    add     r5, r5, r4, ROR #4
    add     r6, r6, r5, ROR #5
    add     r7, r7, r6, ROR #6
    add     r8, r8, r7, ROR #7
    add     r9, r9, r8, ROR #8
    add     r10, r10, r9, ROR #9
    add     r11, r11, r10, ROR #10
    add     r12, r12, r11, ROR #11
    add     r1, r1, r12, ROR #12

    // loop 4
    add     r2, r2, r1, ROR #1
    add     r3, r3, r2, ROR #2
    add     r4, r4, r3, ROR #3
    add     r5, r5, r4, ROR #4
    add     r6, r6, r5, ROR #5
    add     r7, r7, r6, ROR #6
    add     r8, r8, r7, ROR #7
    add     r9, r9, r8, ROR #8
    add     r10, r10, r9, ROR #9
    add     r11, r11, r10, ROR #10
    add     r12, r12, r11, ROR #11
    add     r1, r1, r12, ROR #12

    // loop 5
    add     r2, r2, r1, ROR #1
    add     r3, r3, r2, ROR #2
    add     r4, r4, r3, ROR #3
    add     r5, r5, r4, ROR #4
    add     r6, r6, r5, ROR #5
    add     r7, r7, r6, ROR #6
    add     r8, r8, r7, ROR #7
    add     r9, r9, r8, ROR #8
    add     r10, r10, r9, ROR #9
    add     r11, r11, r10, ROR #10
    add     r12, r12, r11, ROR #11
    add     r1, r1, r12, ROR #12

    subs    r0, r0, #1
    bne     addRegMinTest_LOOP
    pop     {r4-r11, pc}

_addRegMaxTest:

    push    {r4-r11, lr}

addRegMaxTest_LOOP:

    // loop 1
    add     r1, r1, r1
    add     r2, r2, r2
    add     r3, r3, r3
    add     r4, r4, r4
    add     r5, r5, r5
    add     r6, r6, r6
    add     r7, r7, r7
    add     r8, r8, r8
    add     r9, r9, r9
    add     r10, r10, r10
    add     r11, r11, r11
    add     r12, r12, r12

    // loop 2
    add     r1, r1, r1
    add     r2, r2, r2
    add     r3, r3, r3
    add     r4, r4, r4
    add     r5, r5, r5
    add     r6, r6, r6
    add     r7, r7, r7
    add     r8, r8, r8
    add     r9, r9, r9
    add     r10, r10, r10
    add     r11, r11, r11
    add     r12, r12, r12

    // loop 3
    add     r1, r1, r1
    add     r2, r2, r2
    add     r3, r3, r3
    add     r4, r4, r4
    add     r5, r5, r5
    add     r6, r6, r6
    add     r7, r7, r7
    add     r8, r8, r8
    add     r9, r9, r9
    add     r10, r10, r10
    add     r11, r11, r11
    add     r12, r12, r12

    // loop 4
    add     r1, r1, r1
    add     r2, r2, r2
    add     r3, r3, r3
    add     r4, r4, r4
    add     r5, r5, r5
    add     r6, r6, r6
    add     r7, r7, r7
    add     r8, r8, r8
    add     r9, r9, r9
    add     r10, r10, r10
    add     r11, r11, r11
    add     r12, r12, r12

    // loop 5
    add     r1, r1, r1
    add     r2, r2, r2
    add     r3, r3, r3
    add     r4, r4, r4
    add     r5, r5, r5
    add     r6, r6, r6
    add     r7, r7, r7
    add     r8, r8, r8
    add     r9, r9, r9
    add     r10, r10, r10
    add     r11, r11, r11
    add     r12, r12, r12

    subs    r0, r0, #1
    bne     addRegMaxTest_LOOP
    pop     {r4-r11, pc}

_addShftMinTest:

    push    {r4-r11, lr}

addShftMinTest_LOOP:

    // loop 1
    add     r2, r2, r1, ROR r1
    add     r3, r3, r2, ROR r2
    add     r4, r4, r3, ROR r3
    add     r5, r5, r4, ROR r4
    add     r6, r6, r5, ROR r5
    add     r7, r7, r6, ROR r6
    add     r8, r8, r7, ROR r7
    add     r9, r9, r8, ROR r8
    add     r10, r10, r9, ROR r9
    add     r11, r11, r10, ROR r10
    add     r12, r12, r11, ROR r11
    add     r1, r1, r12, ROR r12

    // loop 2
    add     r2, r2, r1, ROR r1
    add     r3, r3, r2, ROR r2
    add     r4, r4, r3, ROR r3
    add     r5, r5, r4, ROR r4
    add     r6, r6, r5, ROR r5
    add     r7, r7, r6, ROR r6
    add     r8, r8, r7, ROR r7
    add     r9, r9, r8, ROR r8
    add     r10, r10, r9, ROR r9
    add     r11, r11, r10, ROR r10
    add     r12, r12, r11, ROR r11
    add     r1, r1, r12, ROR r12

    // loop 3
    add     r2, r2, r1, ROR r1
    add     r3, r3, r2, ROR r2
    add     r4, r4, r3, ROR r3
    add     r5, r5, r4, ROR r4
    add     r6, r6, r5, ROR r5
    add     r7, r7, r6, ROR r6
    add     r8, r8, r7, ROR r7
    add     r9, r9, r8, ROR r8
    add     r10, r10, r9, ROR r9
    add     r11, r11, r10, ROR r10
    add     r12, r12, r11, ROR r11
    add     r1, r1, r12, ROR r12

    // loop 4
    add     r2, r2, r1, ROR r1
    add     r3, r3, r2, ROR r2
    add     r4, r4, r3, ROR r3
    add     r5, r5, r4, ROR r4
    add     r6, r6, r5, ROR r5
    add     r7, r7, r6, ROR r6
    add     r8, r8, r7, ROR r7
    add     r9, r9, r8, ROR r8
    add     r10, r10, r9, ROR r9
    add     r11, r11, r10, ROR r10
    add     r12, r12, r11, ROR r11
    add     r1, r1, r12, ROR r12

    // loop 5
    add     r2, r2, r1, ROR r1
    add     r3, r3, r2, ROR r2
    add     r4, r4, r3, ROR r3
    add     r5, r5, r4, ROR r4
    add     r6, r6, r5, ROR r5
    add     r7, r7, r6, ROR r6
    add     r8, r8, r7, ROR r7
    add     r9, r9, r8, ROR r8
    add     r10, r10, r9, ROR r9
    add     r11, r11, r10, ROR r10
    add     r12, r12, r11, ROR r11
    add     r1, r1, r12, ROR r12

    subs    r0, r0, #1
    bne     addShftMinTest_LOOP
    pop     {r4-r11, pc}

_addShftMaxTest:

    push    {r4-r11, lr}

addShftMaxTest_LOOP:

    // loop 1
    add     r1, r1, r1, ROR r1
    add     r2, r2, r2, ROR r2
    add     r3, r3, r3, ROR r3
    add     r4, r4, r4, ROR r4
    add     r5, r5, r5, ROR r5
    add     r6, r6, r6, ROR r6
    add     r7, r7, r7, ROR r7
    add     r8, r8, r8, ROR r8
    add     r9, r9, r9, ROR r9
    add     r10, r10, r10, ROR r10
    add     r11, r11, r11, ROR r11
    add     r12, r12, r12, ROR r12

    // loop 2
    add     r1, r1, r1, ROR r1
    add     r2, r2, r2, ROR r2
    add     r3, r3, r3, ROR r3
    add     r4, r4, r4, ROR r4
    add     r5, r5, r5, ROR r5
    add     r6, r6, r6, ROR r6
    add     r7, r7, r7, ROR r7
    add     r8, r8, r8, ROR r8
    add     r9, r9, r9, ROR r9
    add     r10, r10, r10, ROR r10
    add     r11, r11, r11, ROR r11
    add     r12, r12, r12, ROR r12

    // loop 3
    add     r1, r1, r1, ROR r1
    add     r2, r2, r2, ROR r2
    add     r3, r3, r3, ROR r3
    add     r4, r4, r4, ROR r4
    add     r5, r5, r5, ROR r5
    add     r6, r6, r6, ROR r6
    add     r7, r7, r7, ROR r7
    add     r8, r8, r8, ROR r8
    add     r9, r9, r9, ROR r9
    add     r10, r10, r10, ROR r10
    add     r11, r11, r11, ROR r11
    add     r12, r12, r12, ROR r12

    // loop 4
    add     r1, r1, r1, ROR r1
    add     r2, r2, r2, ROR r2
    add     r3, r3, r3, ROR r3
    add     r4, r4, r4, ROR r4
    add     r5, r5, r5, ROR r5
    add     r6, r6, r6, ROR r6
    add     r7, r7, r7, ROR r7
    add     r8, r8, r8, ROR r8
    add     r9, r9, r9, ROR r9
    add     r10, r10, r10, ROR r10
    add     r11, r11, r11, ROR r11
    add     r12, r12, r12, ROR r12

    // loop 5
    add     r1, r1, r1, ROR r1
    add     r2, r2, r2, ROR r2
    add     r3, r3, r3, ROR r3
    add     r4, r4, r4, ROR r4
    add     r5, r5, r5, ROR r5
    add     r6, r6, r6, ROR r6
    add     r7, r7, r7, ROR r7
    add     r8, r8, r8, ROR r8
    add     r9, r9, r9, ROR r9
    add     r10, r10, r10, ROR r10
    add     r11, r11, r11, ROR r11
    add     r12, r12, r12, ROR r12

    subs    r0, r0, #1
    bne     addShftMaxTest_LOOP
    pop     {r4-r11, pc}


_andImmMinTest:

    push    {r4-r11, lr}

andImmMinTest_LOOP:

    // loop 1
    and     r2, r1, #1
    and     r3, r2, #2
    and     r4, r3, #3
    and     r5, r4, #4
    and     r6, r5, #5
    and     r7, r6, #6
    and     r8, r7, #7
    and     r9, r8, #8
    and     r10, r9, #9
    and     r11, r10, #10
    and     r12, r11, #11
    and     r1, r12, #12

    // loop 2
    and     r2, r1, #1
    and     r3, r2, #2
    and     r4, r3, #3
    and     r5, r4, #4
    and     r6, r5, #5
    and     r7, r6, #6
    and     r8, r7, #7
    and     r9, r8, #8
    and     r10, r9, #9
    and     r11, r10, #10
    and     r12, r11, #11
    and     r1, r12, #12

    // loop 3
    and     r2, r1, #1
    and     r3, r2, #2
    and     r4, r3, #3
    and     r5, r4, #4
    and     r6, r5, #5
    and     r7, r6, #6
    and     r8, r7, #7
    and     r9, r8, #8
    and     r10, r9, #9
    and     r11, r10, #10
    and     r12, r11, #11
    and     r1, r12, #12

    // loop 4
    and     r2, r1, #1
    and     r3, r2, #2
    and     r4, r3, #3
    and     r5, r4, #4
    and     r6, r5, #5
    and     r7, r6, #6
    and     r8, r7, #7
    and     r9, r8, #8
    and     r10, r9, #9
    and     r11, r10, #10
    and     r12, r11, #11
    and     r1, r12, #12

    // loop 5
    and     r2, r1, #1
    and     r3, r2, #2
    and     r4, r3, #3
    and     r5, r4, #4
    and     r6, r5, #5
    and     r7, r6, #6
    and     r8, r7, #7
    and     r9, r8, #8
    and     r10, r9, #9
    and     r11, r10, #10
    and     r12, r11, #11
    and     r1, r12, #12

    subs    r0, r0, #1
    bne     andImmMinTest_LOOP
    pop     {r4-r11, pc}

_andImmMaxTest:

    push    {r4-r11, lr}

andImmMaxTest_LOOP:

    // loop 1
    and     r1, r1, #1
    and     r2, r2, #2
    and     r3, r3, #3
    and     r4, r4, #4
    and     r5, r5, #5
    and     r6, r6, #6
    and     r7, r7, #7
    and     r8, r8, #8
    and     r9, r9, #9
    and     r10, r10, #10
    and     r11, r11, #11
    and     r12, r12, #12

    // loop 2
    and     r1, r1, #1
    and     r2, r2, #2
    and     r3, r3, #3
    and     r4, r4, #4
    and     r5, r5, #5
    and     r6, r6, #6
    and     r7, r7, #7
    and     r8, r8, #8
    and     r9, r9, #9
    and     r10, r10, #10
    and     r11, r11, #11
    and     r12, r12, #12

    // loop 3
    and     r1, r1, #1
    and     r2, r2, #2
    and     r3, r3, #3
    and     r4, r4, #4
    and     r5, r5, #5
    and     r6, r6, #6
    and     r7, r7, #7
    and     r8, r8, #8
    and     r9, r9, #9
    and     r10, r10, #10
    and     r11, r11, #11
    and     r12, r12, #12

    // loop 4
    and     r1, r1, #1
    and     r2, r2, #2
    and     r3, r3, #3
    and     r4, r4, #4
    and     r5, r5, #5
    and     r6, r6, #6
    and     r7, r7, #7
    and     r8, r8, #8
    and     r9, r9, #9
    and     r10, r10, #10
    and     r11, r11, #11
    and     r12, r12, #12

    // loop 5
    and     r1, r1, #1
    and     r2, r2, #2
    and     r3, r3, #3
    and     r4, r4, #4
    and     r5, r5, #5
    and     r6, r6, #6
    and     r7, r7, #7
    and     r8, r8, #8
    and     r9, r9, #9
    and     r10, r10, #10
    and     r11, r11, #11
    and     r12, r12, #12

    subs    r0, r0, #1
    bne     andImmMaxTest_LOOP
    pop     {r4-r11, pc}

_andRegMinTest:

    push    {r4-r11, lr}

andRegMinTest_LOOP:

    // loop 1
    and     r2, r2, r1, ROR #1
    and     r3, r3, r2, ROR #2
    and     r4, r4, r3, ROR #3
    and     r5, r5, r4, ROR #4
    and     r6, r6, r5, ROR #5
    and     r7, r7, r6, ROR #6
    and     r8, r8, r7, ROR #7
    and     r9, r9, r8, ROR #8
    and     r10, r10, r9, ROR #9
    and     r11, r11, r10, ROR #10
    and     r12, r12, r11, ROR #11
    and     r1, r1, r12, ROR #12

    // loop 2
    and     r2, r2, r1, ROR #1
    and     r3, r3, r2, ROR #2
    and     r4, r4, r3, ROR #3
    and     r5, r5, r4, ROR #4
    and     r6, r6, r5, ROR #5
    and     r7, r7, r6, ROR #6
    and     r8, r8, r7, ROR #7
    and     r9, r9, r8, ROR #8
    and     r10, r10, r9, ROR #9
    and     r11, r11, r10, ROR #10
    and     r12, r12, r11, ROR #11
    and     r1, r1, r12, ROR #12

    // loop 3
    and     r2, r2, r1, ROR #1
    and     r3, r3, r2, ROR #2
    and     r4, r4, r3, ROR #3
    and     r5, r5, r4, ROR #4
    and     r6, r6, r5, ROR #5
    and     r7, r7, r6, ROR #6
    and     r8, r8, r7, ROR #7
    and     r9, r9, r8, ROR #8
    and     r10, r10, r9, ROR #9
    and     r11, r11, r10, ROR #10
    and     r12, r12, r11, ROR #11
    and     r1, r1, r12, ROR #12

    // loop 4
    and     r2, r2, r1, ROR #1
    and     r3, r3, r2, ROR #2
    and     r4, r4, r3, ROR #3
    and     r5, r5, r4, ROR #4
    and     r6, r6, r5, ROR #5
    and     r7, r7, r6, ROR #6
    and     r8, r8, r7, ROR #7
    and     r9, r9, r8, ROR #8
    and     r10, r10, r9, ROR #9
    and     r11, r11, r10, ROR #10
    and     r12, r12, r11, ROR #11
    and     r1, r1, r12, ROR #12

    // loop 5
    and     r2, r2, r1, ROR #1
    and     r3, r3, r2, ROR #2
    and     r4, r4, r3, ROR #3
    and     r5, r5, r4, ROR #4
    and     r6, r6, r5, ROR #5
    and     r7, r7, r6, ROR #6
    and     r8, r8, r7, ROR #7
    and     r9, r9, r8, ROR #8
    and     r10, r10, r9, ROR #9
    and     r11, r11, r10, ROR #10
    and     r12, r12, r11, ROR #11
    and     r1, r1, r12, ROR #12

    subs    r0, r0, #1
    bne     andRegMinTest_LOOP
    pop     {r4-r11, pc}

_andRegMaxTest:

    push    {r4-r11, lr}

andRegMaxTest_LOOP:

    // loop 1
    and     r1, r1, r1
    and     r2, r2, r2
    and     r3, r3, r3
    and     r4, r4, r4
    and     r5, r5, r5
    and     r6, r6, r6
    and     r7, r7, r7
    and     r8, r8, r8
    and     r9, r9, r9
    and     r10, r10, r10
    and     r11, r11, r11
    and     r12, r12, r12

    // loop 2
    and     r1, r1, r1
    and     r2, r2, r2
    and     r3, r3, r3
    and     r4, r4, r4
    and     r5, r5, r5
    and     r6, r6, r6
    and     r7, r7, r7
    and     r8, r8, r8
    and     r9, r9, r9
    and     r10, r10, r10
    and     r11, r11, r11
    and     r12, r12, r12

    // loop 3
    and     r1, r1, r1
    and     r2, r2, r2
    and     r3, r3, r3
    and     r4, r4, r4
    and     r5, r5, r5
    and     r6, r6, r6
    and     r7, r7, r7
    and     r8, r8, r8
    and     r9, r9, r9
    and     r10, r10, r10
    and     r11, r11, r11
    and     r12, r12, r12

    // loop 4
    and     r1, r1, r1
    and     r2, r2, r2
    and     r3, r3, r3
    and     r4, r4, r4
    and     r5, r5, r5
    and     r6, r6, r6
    and     r7, r7, r7
    and     r8, r8, r8
    and     r9, r9, r9
    and     r10, r10, r10
    and     r11, r11, r11
    and     r12, r12, r12

    // loop 5
    and     r1, r1, r1
    and     r2, r2, r2
    and     r3, r3, r3
    and     r4, r4, r4
    and     r5, r5, r5
    and     r6, r6, r6
    and     r7, r7, r7
    and     r8, r8, r8
    and     r9, r9, r9
    and     r10, r10, r10
    and     r11, r11, r11
    and     r12, r12, r12

    subs    r0, r0, #1
    bne     andRegMaxTest_LOOP
    pop     {r4-r11, pc}

_andShftMinTest:

    push    {r4-r11, lr}

andShftMinTest_LOOP:

    // loop 1
    and     r2, r2, r1, ROR r1
    and     r3, r3, r2, ROR r2
    and     r4, r4, r3, ROR r3
    and     r5, r5, r4, ROR r4
    and     r6, r6, r5, ROR r5
    and     r7, r7, r6, ROR r6
    and     r8, r8, r7, ROR r7
    and     r9, r9, r8, ROR r8
    and     r10, r10, r9, ROR r9
    and     r11, r11, r10, ROR r10
    and     r12, r12, r11, ROR r11
    and     r1, r1, r12, ROR r12

    // loop 2
    and     r2, r2, r1, ROR r1
    and     r3, r3, r2, ROR r2
    and     r4, r4, r3, ROR r3
    and     r5, r5, r4, ROR r4
    and     r6, r6, r5, ROR r5
    and     r7, r7, r6, ROR r6
    and     r8, r8, r7, ROR r7
    and     r9, r9, r8, ROR r8
    and     r10, r10, r9, ROR r9
    and     r11, r11, r10, ROR r10
    and     r12, r12, r11, ROR r11
    and     r1, r1, r12, ROR r12

    // loop 3
    and     r2, r2, r1, ROR r1
    and     r3, r3, r2, ROR r2
    and     r4, r4, r3, ROR r3
    and     r5, r5, r4, ROR r4
    and     r6, r6, r5, ROR r5
    and     r7, r7, r6, ROR r6
    and     r8, r8, r7, ROR r7
    and     r9, r9, r8, ROR r8
    and     r10, r10, r9, ROR r9
    and     r11, r11, r10, ROR r10
    and     r12, r12, r11, ROR r11
    and     r1, r1, r12, ROR r12

    // loop 4
    and     r2, r2, r1, ROR r1
    and     r3, r3, r2, ROR r2
    and     r4, r4, r3, ROR r3
    and     r5, r5, r4, ROR r4
    and     r6, r6, r5, ROR r5
    and     r7, r7, r6, ROR r6
    and     r8, r8, r7, ROR r7
    and     r9, r9, r8, ROR r8
    and     r10, r10, r9, ROR r9
    and     r11, r11, r10, ROR r10
    and     r12, r12, r11, ROR r11
    and     r1, r1, r12, ROR r12

    // loop 5
    and     r2, r2, r1, ROR r1
    and     r3, r3, r2, ROR r2
    and     r4, r4, r3, ROR r3
    and     r5, r5, r4, ROR r4
    and     r6, r6, r5, ROR r5
    and     r7, r7, r6, ROR r6
    and     r8, r8, r7, ROR r7
    and     r9, r9, r8, ROR r8
    and     r10, r10, r9, ROR r9
    and     r11, r11, r10, ROR r10
    and     r12, r12, r11, ROR r11
    and     r1, r1, r12, ROR r12

    subs    r0, r0, #1
    bne     andShftMinTest_LOOP
    pop     {r4-r11, pc}

_andShftMaxTest:

    push    {r4-r11, lr}

andShftMaxTest_LOOP:

    // loop 1
    and     r1, r1, r1, ROR r1
    and     r2, r2, r2, ROR r2
    and     r3, r3, r3, ROR r3
    and     r4, r4, r4, ROR r4
    and     r5, r5, r5, ROR r5
    and     r6, r6, r6, ROR r6
    and     r7, r7, r7, ROR r7
    and     r8, r8, r8, ROR r8
    and     r9, r9, r9, ROR r9
    and     r10, r10, r10, ROR r10
    and     r11, r11, r11, ROR r11
    and     r12, r12, r12, ROR r12

    // loop 2
    and     r1, r1, r1, ROR r1
    and     r2, r2, r2, ROR r2
    and     r3, r3, r3, ROR r3
    and     r4, r4, r4, ROR r4
    and     r5, r5, r5, ROR r5
    and     r6, r6, r6, ROR r6
    and     r7, r7, r7, ROR r7
    and     r8, r8, r8, ROR r8
    and     r9, r9, r9, ROR r9
    and     r10, r10, r10, ROR r10
    and     r11, r11, r11, ROR r11
    and     r12, r12, r12, ROR r12

    // loop 3
    and     r1, r1, r1, ROR r1
    and     r2, r2, r2, ROR r2
    and     r3, r3, r3, ROR r3
    and     r4, r4, r4, ROR r4
    and     r5, r5, r5, ROR r5
    and     r6, r6, r6, ROR r6
    and     r7, r7, r7, ROR r7
    and     r8, r8, r8, ROR r8
    and     r9, r9, r9, ROR r9
    and     r10, r10, r10, ROR r10
    and     r11, r11, r11, ROR r11
    and     r12, r12, r12, ROR r12

    // loop 4
    and     r1, r1, r1, ROR r1
    and     r2, r2, r2, ROR r2
    and     r3, r3, r3, ROR r3
    and     r4, r4, r4, ROR r4
    and     r5, r5, r5, ROR r5
    and     r6, r6, r6, ROR r6
    and     r7, r7, r7, ROR r7
    and     r8, r8, r8, ROR r8
    and     r9, r9, r9, ROR r9
    and     r10, r10, r10, ROR r10
    and     r11, r11, r11, ROR r11
    and     r12, r12, r12, ROR r12

    // loop 5
    and     r1, r1, r1, ROR r1
    and     r2, r2, r2, ROR r2
    and     r3, r3, r3, ROR r3
    and     r4, r4, r4, ROR r4
    and     r5, r5, r5, ROR r5
    and     r6, r6, r6, ROR r6
    and     r7, r7, r7, ROR r7
    and     r8, r8, r8, ROR r8
    and     r9, r9, r9, ROR r9
    and     r10, r10, r10, ROR r10
    and     r11, r11, r11, ROR r11
    and     r12, r12, r12, ROR r12

    subs    r0, r0, #1
    bne     andShftMaxTest_LOOP
    pop     {r4-r11, pc}


_asrImmMinTest:

    push    {r4-r11, lr}

asrImmMinTest_LOOP:

    // loop 1
    asr     r2, r1, #1
    asr     r3, r2, #2
    asr     r4, r3, #3
    asr     r5, r4, #4
    asr     r6, r5, #5
    asr     r7, r6, #6
    asr     r8, r7, #7
    asr     r9, r8, #8
    asr     r10, r9, #9
    asr     r11, r10, #10
    asr     r12, r11, #11
    asr     r1, r12, #12

    // loop 2
    asr     r2, r1, #1
    asr     r3, r2, #2
    asr     r4, r3, #3
    asr     r5, r4, #4
    asr     r6, r5, #5
    asr     r7, r6, #6
    asr     r8, r7, #7
    asr     r9, r8, #8
    asr     r10, r9, #9
    asr     r11, r10, #10
    asr     r12, r11, #11
    asr     r1, r12, #12

    // loop 3
    asr     r2, r1, #1
    asr     r3, r2, #2
    asr     r4, r3, #3
    asr     r5, r4, #4
    asr     r6, r5, #5
    asr     r7, r6, #6
    asr     r8, r7, #7
    asr     r9, r8, #8
    asr     r10, r9, #9
    asr     r11, r10, #10
    asr     r12, r11, #11
    asr     r1, r12, #12

    // loop 4
    asr     r2, r1, #1
    asr     r3, r2, #2
    asr     r4, r3, #3
    asr     r5, r4, #4
    asr     r6, r5, #5
    asr     r7, r6, #6
    asr     r8, r7, #7
    asr     r9, r8, #8
    asr     r10, r9, #9
    asr     r11, r10, #10
    asr     r12, r11, #11
    asr     r1, r12, #12

    // loop 5
    asr     r2, r1, #1
    asr     r3, r2, #2
    asr     r4, r3, #3
    asr     r5, r4, #4
    asr     r6, r5, #5
    asr     r7, r6, #6
    asr     r8, r7, #7
    asr     r9, r8, #8
    asr     r10, r9, #9
    asr     r11, r10, #10
    asr     r12, r11, #11
    asr     r1, r12, #12

    subs    r0, r0, #1
    bne     asrImmMinTest_LOOP
    pop     {r4-r11, pc}

_asrImmMaxTest:

    push    {r4-r11, lr}

asrImmMaxTest_LOOP:

    // loop 1
    asr     r1, r1, #1
    asr     r2, r2, #2
    asr     r3, r3, #3
    asr     r4, r4, #4
    asr     r5, r5, #5
    asr     r6, r6, #6
    asr     r7, r7, #7
    asr     r8, r8, #8
    asr     r9, r9, #9
    asr     r10, r10, #10
    asr     r11, r11, #11
    asr     r12, r12, #12

    // loop 2
    asr     r1, r1, #1
    asr     r2, r2, #2
    asr     r3, r3, #3
    asr     r4, r4, #4
    asr     r5, r5, #5
    asr     r6, r6, #6
    asr     r7, r7, #7
    asr     r8, r8, #8
    asr     r9, r9, #9
    asr     r10, r10, #10
    asr     r11, r11, #11
    asr     r12, r12, #12

    // loop 3
    asr     r1, r1, #1
    asr     r2, r2, #2
    asr     r3, r3, #3
    asr     r4, r4, #4
    asr     r5, r5, #5
    asr     r6, r6, #6
    asr     r7, r7, #7
    asr     r8, r8, #8
    asr     r9, r9, #9
    asr     r10, r10, #10
    asr     r11, r11, #11
    asr     r12, r12, #12

    // loop 4
    asr     r1, r1, #1
    asr     r2, r2, #2
    asr     r3, r3, #3
    asr     r4, r4, #4
    asr     r5, r5, #5
    asr     r6, r6, #6
    asr     r7, r7, #7
    asr     r8, r8, #8
    asr     r9, r9, #9
    asr     r10, r10, #10
    asr     r11, r11, #11
    asr     r12, r12, #12

    // loop 5
    asr     r1, r1, #1
    asr     r2, r2, #2
    asr     r3, r3, #3
    asr     r4, r4, #4
    asr     r5, r5, #5
    asr     r6, r6, #6
    asr     r7, r7, #7
    asr     r8, r8, #8
    asr     r9, r9, #9
    asr     r10, r10, #10
    asr     r11, r11, #11
    asr     r12, r12, #12

    subs    r0, r0, #1
    bne     asrImmMaxTest_LOOP
    pop     {r4-r11, pc}

_asrRegMinTest:

    push    {r4-r11, lr}

asrRegMinTest_LOOP:

    // loop 1
    asr     r2, r2, r1
    asr     r3, r3, r2
    asr     r4, r4, r3
    asr     r5, r5, r4
    asr     r6, r6, r5
    asr     r7, r7, r6
    asr     r8, r8, r7
    asr     r9, r9, r8
    asr     r10, r10, r9
    asr     r11, r11, r10
    asr     r12, r12, r11
    asr     r1, r1, r12

    // loop 2
    asr     r2, r2, r1
    asr     r3, r3, r2
    asr     r4, r4, r3
    asr     r5, r5, r4
    asr     r6, r6, r5
    asr     r7, r7, r6
    asr     r8, r8, r7
    asr     r9, r9, r8
    asr     r10, r10, r9
    asr     r11, r11, r10
    asr     r12, r12, r11
    asr     r1, r1, r12

    // loop 3
    asr     r2, r2, r1
    asr     r3, r3, r2
    asr     r4, r4, r3
    asr     r5, r5, r4
    asr     r6, r6, r5
    asr     r7, r7, r6
    asr     r8, r8, r7
    asr     r9, r9, r8
    asr     r10, r10, r9
    asr     r11, r11, r10
    asr     r12, r12, r11
    asr     r1, r1, r12

    // loop 4
    asr     r2, r2, r1
    asr     r3, r3, r2
    asr     r4, r4, r3
    asr     r5, r5, r4
    asr     r6, r6, r5
    asr     r7, r7, r6
    asr     r8, r8, r7
    asr     r9, r9, r8
    asr     r10, r10, r9
    asr     r11, r11, r10
    asr     r12, r12, r11
    asr     r1, r1, r12

    // loop 5
    asr     r2, r2, r1
    asr     r3, r3, r2
    asr     r4, r4, r3
    asr     r5, r5, r4
    asr     r6, r6, r5
    asr     r7, r7, r6
    asr     r8, r8, r7
    asr     r9, r9, r8
    asr     r10, r10, r9
    asr     r11, r11, r10
    asr     r12, r12, r11
    asr     r1, r1, r12

    subs    r0, r0, #1
    bne     asrRegMinTest_LOOP
    pop     {r4-r11, pc}

_asrRegMaxTest:

    push    {r4-r11, lr}

asrRegMaxTest_LOOP:

    // loop 1
    asr     r1, r1, r1
    asr     r2, r2, r2
    asr     r3, r3, r3
    asr     r4, r4, r4
    asr     r5, r5, r5
    asr     r6, r6, r6
    asr     r7, r7, r7
    asr     r8, r8, r8
    asr     r9, r9, r9
    asr     r10, r10, r10
    asr     r11, r11, r11
    asr     r12, r12, r12

    // loop 2
    asr     r1, r1, r1
    asr     r2, r2, r2
    asr     r3, r3, r3
    asr     r4, r4, r4
    asr     r5, r5, r5
    asr     r6, r6, r6
    asr     r7, r7, r7
    asr     r8, r8, r8
    asr     r9, r9, r9
    asr     r10, r10, r10
    asr     r11, r11, r11
    asr     r12, r12, r12

    // loop 3
    asr     r1, r1, r1
    asr     r2, r2, r2
    asr     r3, r3, r3
    asr     r4, r4, r4
    asr     r5, r5, r5
    asr     r6, r6, r6
    asr     r7, r7, r7
    asr     r8, r8, r8
    asr     r9, r9, r9
    asr     r10, r10, r10
    asr     r11, r11, r11
    asr     r12, r12, r12

    // loop 4
    asr     r1, r1, r1
    asr     r2, r2, r2
    asr     r3, r3, r3
    asr     r4, r4, r4
    asr     r5, r5, r5
    asr     r6, r6, r6
    asr     r7, r7, r7
    asr     r8, r8, r8
    asr     r9, r9, r9
    asr     r10, r10, r10
    asr     r11, r11, r11
    asr     r12, r12, r12

    // loop 5
    asr     r1, r1, r1
    asr     r2, r2, r2
    asr     r3, r3, r3
    asr     r4, r4, r4
    asr     r5, r5, r5
    asr     r6, r6, r6
    asr     r7, r7, r7
    asr     r8, r8, r8
    asr     r9, r9, r9
    asr     r10, r10, r10
    asr     r11, r11, r11
    asr     r12, r12, r12

    subs    r0, r0, #1
    bne     asrRegMaxTest_LOOP
    pop     {r4-r11, pc}


_bfcMinTest:

    // loop 1
    bfc     r1, #0, #1
    bfc     r1, #1, #2
    bfc     r1, #2, #3
    bfc     r1, #3, #4
    bfc     r1, #4, #5
    bfc     r1, #5, #6
    bfc     r1, #6, #7
    bfc     r1, #7, #8
    bfc     r1, #8, #9
    bfc     r1, #9, #10
    bfc     r1, #10, #11
    bfc     r1, #11, #12

    // loop 2
    bfc     r1, #0, #1
    bfc     r1, #1, #2
    bfc     r1, #2, #3
    bfc     r1, #3, #4
    bfc     r1, #4, #5
    bfc     r1, #5, #6
    bfc     r1, #6, #7
    bfc     r1, #7, #8
    bfc     r1, #8, #9
    bfc     r1, #9, #10
    bfc     r1, #10, #11
    bfc     r1, #11, #12

    // loop 3
    bfc     r1, #0, #1
    bfc     r1, #1, #2
    bfc     r1, #2, #3
    bfc     r1, #3, #4
    bfc     r1, #4, #5
    bfc     r1, #5, #6
    bfc     r1, #6, #7
    bfc     r1, #7, #8
    bfc     r1, #8, #9
    bfc     r1, #9, #10
    bfc     r1, #10, #11
    bfc     r1, #11, #12

    // loop 4
    bfc     r1, #0, #1
    bfc     r1, #1, #2
    bfc     r1, #2, #3
    bfc     r1, #3, #4
    bfc     r1, #4, #5
    bfc     r1, #5, #6
    bfc     r1, #6, #7
    bfc     r1, #7, #8
    bfc     r1, #8, #9
    bfc     r1, #9, #10
    bfc     r1, #10, #11
    bfc     r1, #11, #12

    // loop 5
    bfc     r1, #0, #1
    bfc     r1, #1, #2
    bfc     r1, #2, #3
    bfc     r1, #3, #4
    bfc     r1, #4, #5
    bfc     r1, #5, #6
    bfc     r1, #6, #7
    bfc     r1, #7, #8
    bfc     r1, #8, #9
    bfc     r1, #9, #10
    bfc     r1, #10, #11
    bfc     r1, #11, #12

    subs    r0, r0, #1
    bne     _bfcMinTest
    bx      lr

_bfcMaxTest:

    push    {r4-r11, lr}

bfcMaxTest_LOOP:

    // loop 1
    bfc     r1, #0, #1
    bfc     r2, #1, #2
    bfc     r3, #2, #3
    bfc     r4, #3, #4
    bfc     r5, #4, #5
    bfc     r6, #5, #6
    bfc     r7, #6, #7
    bfc     r8, #7, #8
    bfc     r9, #8, #9
    bfc     r10, #9, #10
    bfc     r11, #10, #11
    bfc     r12, #11, #12

    // loop 2
    bfc     r1, #0, #1
    bfc     r2, #1, #2
    bfc     r3, #2, #3
    bfc     r4, #3, #4
    bfc     r5, #4, #5
    bfc     r6, #5, #6
    bfc     r7, #6, #7
    bfc     r8, #7, #8
    bfc     r9, #8, #9
    bfc     r10, #9, #10
    bfc     r11, #10, #11
    bfc     r12, #11, #12

    // loop 3
    bfc     r1, #0, #1
    bfc     r2, #1, #2
    bfc     r3, #2, #3
    bfc     r4, #3, #4
    bfc     r5, #4, #5
    bfc     r6, #5, #6
    bfc     r7, #6, #7
    bfc     r8, #7, #8
    bfc     r9, #8, #9
    bfc     r10, #9, #10
    bfc     r11, #10, #11
    bfc     r12, #11, #12

    // loop 4
    bfc     r1, #0, #1
    bfc     r2, #1, #2
    bfc     r3, #2, #3
    bfc     r4, #3, #4
    bfc     r5, #4, #5
    bfc     r6, #5, #6
    bfc     r7, #6, #7
    bfc     r8, #7, #8
    bfc     r9, #8, #9
    bfc     r10, #9, #10
    bfc     r11, #10, #11
    bfc     r12, #11, #12

    // loop 5
    bfc     r1, #0, #1
    bfc     r2, #1, #2
    bfc     r3, #2, #3
    bfc     r4, #3, #4
    bfc     r5, #4, #5
    bfc     r6, #5, #6
    bfc     r7, #6, #7
    bfc     r8, #7, #8
    bfc     r9, #8, #9
    bfc     r10, #9, #10
    bfc     r11, #10, #11
    bfc     r12, #11, #12

    subs    r0, r0, #1
    bne     bfcMaxTest_LOOP
    pop     {r4-r11, pc}


_bfiMinTest:

    push    {r4-r11, lr}

bfiMinTest_LOOP:

    // loop 1
    bfi     r2, r1, #0, #1
    bfi     r3, r2, #1, #2
    bfi     r4, r3, #2, #3
    bfi     r5, r4, #3, #4
    bfi     r6, r5, #4, #5
    bfi     r7, r6, #5, #6
    bfi     r8, r7, #6, #7
    bfi     r9, r8, #7, #8
    bfi     r10, r9, #8, #9
    bfi     r11, r10, #9, #10
    bfi     r12, r11, #10, #11
    bfi     r1, r12, #11, #12

    // loop 2
    bfi     r2, r1, #0, #1
    bfi     r3, r2, #1, #2
    bfi     r4, r3, #2, #3
    bfi     r5, r4, #3, #4
    bfi     r6, r5, #4, #5
    bfi     r7, r6, #5, #6
    bfi     r8, r7, #6, #7
    bfi     r9, r8, #7, #8
    bfi     r10, r9, #8, #9
    bfi     r11, r10, #9, #10
    bfi     r12, r11, #10, #11
    bfi     r1, r12, #11, #12

    // loop 3
    bfi     r2, r1, #0, #1
    bfi     r3, r2, #1, #2
    bfi     r4, r3, #2, #3
    bfi     r5, r4, #3, #4
    bfi     r6, r5, #4, #5
    bfi     r7, r6, #5, #6
    bfi     r8, r7, #6, #7
    bfi     r9, r8, #7, #8
    bfi     r10, r9, #8, #9
    bfi     r11, r10, #9, #10
    bfi     r12, r11, #10, #11
    bfi     r1, r12, #11, #12

    // loop 4
    bfi     r2, r1, #0, #1
    bfi     r3, r2, #1, #2
    bfi     r4, r3, #2, #3
    bfi     r5, r4, #3, #4
    bfi     r6, r5, #4, #5
    bfi     r7, r6, #5, #6
    bfi     r8, r7, #6, #7
    bfi     r9, r8, #7, #8
    bfi     r10, r9, #8, #9
    bfi     r11, r10, #9, #10
    bfi     r12, r11, #10, #11
    bfi     r1, r12, #11, #12

    // loop 5
    bfi     r2, r1, #0, #1
    bfi     r3, r2, #1, #2
    bfi     r4, r3, #2, #3
    bfi     r5, r4, #3, #4
    bfi     r6, r5, #4, #5
    bfi     r7, r6, #5, #6
    bfi     r8, r7, #6, #7
    bfi     r9, r8, #7, #8
    bfi     r10, r9, #8, #9
    bfi     r11, r10, #9, #10
    bfi     r12, r11, #10, #11
    bfi     r1, r12, #11, #12

    subs    r0, r0, #1
    bne     bfiMinTest_LOOP
    pop     {r4-r11, pc}

_bfiMaxTest:

    push    {r4-r11, lr}

bfiMaxTest_LOOP:

    // loop 1
    bfi     r1, r1, #0, #1
    bfi     r2, r2, #1, #2
    bfi     r3, r3, #2, #3
    bfi     r4, r4, #3, #4
    bfi     r5, r5, #4, #5
    bfi     r6, r6, #5, #6
    bfi     r7, r7, #6, #7
    bfi     r8, r8, #7, #8
    bfi     r9, r9, #8, #9
    bfi     r10, r10, #9, #10
    bfi     r11, r11, #10, #11
    bfi     r12, r12, #11, #12

    // loop 2
    bfi     r1, r1, #0, #1
    bfi     r2, r2, #1, #2
    bfi     r3, r3, #2, #3
    bfi     r4, r4, #3, #4
    bfi     r5, r5, #4, #5
    bfi     r6, r6, #5, #6
    bfi     r7, r7, #6, #7
    bfi     r8, r8, #7, #8
    bfi     r9, r9, #8, #9
    bfi     r10, r10, #9, #10
    bfi     r11, r11, #10, #11
    bfi     r12, r12, #11, #12

    // loop 3
    bfi     r1, r1, #0, #1
    bfi     r2, r2, #1, #2
    bfi     r3, r3, #2, #3
    bfi     r4, r4, #3, #4
    bfi     r5, r5, #4, #5
    bfi     r6, r6, #5, #6
    bfi     r7, r7, #6, #7
    bfi     r8, r8, #7, #8
    bfi     r9, r9, #8, #9
    bfi     r10, r10, #9, #10
    bfi     r11, r11, #10, #11
    bfi     r12, r12, #11, #12

    // loop 4
    bfi     r1, r1, #0, #1
    bfi     r2, r2, #1, #2
    bfi     r3, r3, #2, #3
    bfi     r4, r4, #3, #4
    bfi     r5, r5, #4, #5
    bfi     r6, r6, #5, #6
    bfi     r7, r7, #6, #7
    bfi     r8, r8, #7, #8
    bfi     r9, r9, #8, #9
    bfi     r10, r10, #9, #10
    bfi     r11, r11, #10, #11
    bfi     r12, r12, #11, #12

    // loop 5
    bfi     r1, r1, #0, #1
    bfi     r2, r2, #1, #2
    bfi     r3, r3, #2, #3
    bfi     r4, r4, #3, #4
    bfi     r5, r5, #4, #5
    bfi     r6, r6, #5, #6
    bfi     r7, r7, #6, #7
    bfi     r8, r8, #7, #8
    bfi     r9, r9, #8, #9
    bfi     r10, r10, #9, #10
    bfi     r11, r11, #10, #11
    bfi     r12, r12, #11, #12

    subs    r0, r0, #1
    bne     bfiMaxTest_LOOP
    pop     {r4-r11, pc}


_bicImmMinTest:

    push    {r4-r11, lr}

bicImmMinTest_LOOP:

    // loop 1
    bic     r2, r1, #1
    bic     r3, r2, #2
    bic     r4, r3, #3
    bic     r5, r4, #4
    bic     r6, r5, #5
    bic     r7, r6, #6
    bic     r8, r7, #7
    bic     r9, r8, #8
    bic     r10, r9, #9
    bic     r11, r10, #10
    bic     r12, r11, #11
    bic     r1, r12, #12

    // loop 2
    bic     r2, r1, #1
    bic     r3, r2, #2
    bic     r4, r3, #3
    bic     r5, r4, #4
    bic     r6, r5, #5
    bic     r7, r6, #6
    bic     r8, r7, #7
    bic     r9, r8, #8
    bic     r10, r9, #9
    bic     r11, r10, #10
    bic     r12, r11, #11
    bic     r1, r12, #12

    // loop 3
    bic     r2, r1, #1
    bic     r3, r2, #2
    bic     r4, r3, #3
    bic     r5, r4, #4
    bic     r6, r5, #5
    bic     r7, r6, #6
    bic     r8, r7, #7
    bic     r9, r8, #8
    bic     r10, r9, #9
    bic     r11, r10, #10
    bic     r12, r11, #11
    bic     r1, r12, #12

    // loop 4
    bic     r2, r1, #1
    bic     r3, r2, #2
    bic     r4, r3, #3
    bic     r5, r4, #4
    bic     r6, r5, #5
    bic     r7, r6, #6
    bic     r8, r7, #7
    bic     r9, r8, #8
    bic     r10, r9, #9
    bic     r11, r10, #10
    bic     r12, r11, #11
    bic     r1, r12, #12

    // loop 5
    bic     r2, r1, #1
    bic     r3, r2, #2
    bic     r4, r3, #3
    bic     r5, r4, #4
    bic     r6, r5, #5
    bic     r7, r6, #6
    bic     r8, r7, #7
    bic     r9, r8, #8
    bic     r10, r9, #9
    bic     r11, r10, #10
    bic     r12, r11, #11
    bic     r1, r12, #12

    subs    r0, r0, #1
    bne     bicImmMinTest_LOOP
    pop     {r4-r11, pc}

_bicImmMaxTest:

    push    {r4-r11, lr}

bicImmMaxTest_LOOP:

    // loop 1
    bic     r1, r1, #1
    bic     r2, r2, #2
    bic     r3, r3, #3
    bic     r4, r4, #4
    bic     r5, r5, #5
    bic     r6, r6, #6
    bic     r7, r7, #7
    bic     r8, r8, #8
    bic     r9, r9, #9
    bic     r10, r10, #10
    bic     r11, r11, #11
    bic     r12, r12, #12

    // loop 2
    bic     r1, r1, #1
    bic     r2, r2, #2
    bic     r3, r3, #3
    bic     r4, r4, #4
    bic     r5, r5, #5
    bic     r6, r6, #6
    bic     r7, r7, #7
    bic     r8, r8, #8
    bic     r9, r9, #9
    bic     r10, r10, #10
    bic     r11, r11, #11
    bic     r12, r12, #12

    // loop 3
    bic     r1, r1, #1
    bic     r2, r2, #2
    bic     r3, r3, #3
    bic     r4, r4, #4
    bic     r5, r5, #5
    bic     r6, r6, #6
    bic     r7, r7, #7
    bic     r8, r8, #8
    bic     r9, r9, #9
    bic     r10, r10, #10
    bic     r11, r11, #11
    bic     r12, r12, #12

    // loop 4
    bic     r1, r1, #1
    bic     r2, r2, #2
    bic     r3, r3, #3
    bic     r4, r4, #4
    bic     r5, r5, #5
    bic     r6, r6, #6
    bic     r7, r7, #7
    bic     r8, r8, #8
    bic     r9, r9, #9
    bic     r10, r10, #10
    bic     r11, r11, #11
    bic     r12, r12, #12

    // loop 5
    bic     r1, r1, #1
    bic     r2, r2, #2
    bic     r3, r3, #3
    bic     r4, r4, #4
    bic     r5, r5, #5
    bic     r6, r6, #6
    bic     r7, r7, #7
    bic     r8, r8, #8
    bic     r9, r9, #9
    bic     r10, r10, #10
    bic     r11, r11, #11
    bic     r12, r12, #12

    subs    r0, r0, #1
    bne     bicImmMaxTest_LOOP
    pop     {r4-r11, pc}

_bicRegMinTest:

    push    {r4-r11, lr}

bicRegMinTest_LOOP:

    // loop 1
    bic     r2, r2, r1, ROR #1
    bic     r3, r3, r2, ROR #2
    bic     r4, r4, r3, ROR #3
    bic     r5, r5, r4, ROR #4
    bic     r6, r6, r5, ROR #5
    bic     r7, r7, r6, ROR #6
    bic     r8, r8, r7, ROR #7
    bic     r9, r9, r8, ROR #8
    bic     r10, r10, r9, ROR #9
    bic     r11, r11, r10, ROR #10
    bic     r12, r12, r11, ROR #11
    bic     r1, r1, r12, ROR #12

    // loop 2
    bic     r2, r2, r1, ROR #1
    bic     r3, r3, r2, ROR #2
    bic     r4, r4, r3, ROR #3
    bic     r5, r5, r4, ROR #4
    bic     r6, r6, r5, ROR #5
    bic     r7, r7, r6, ROR #6
    bic     r8, r8, r7, ROR #7
    bic     r9, r9, r8, ROR #8
    bic     r10, r10, r9, ROR #9
    bic     r11, r11, r10, ROR #10
    bic     r12, r12, r11, ROR #11
    bic     r1, r1, r12, ROR #12

    // loop 3
    bic     r2, r2, r1, ROR #1
    bic     r3, r3, r2, ROR #2
    bic     r4, r4, r3, ROR #3
    bic     r5, r5, r4, ROR #4
    bic     r6, r6, r5, ROR #5
    bic     r7, r7, r6, ROR #6
    bic     r8, r8, r7, ROR #7
    bic     r9, r9, r8, ROR #8
    bic     r10, r10, r9, ROR #9
    bic     r11, r11, r10, ROR #10
    bic     r12, r12, r11, ROR #11
    bic     r1, r1, r12, ROR #12

    // loop 4
    bic     r2, r2, r1, ROR #1
    bic     r3, r3, r2, ROR #2
    bic     r4, r4, r3, ROR #3
    bic     r5, r5, r4, ROR #4
    bic     r6, r6, r5, ROR #5
    bic     r7, r7, r6, ROR #6
    bic     r8, r8, r7, ROR #7
    bic     r9, r9, r8, ROR #8
    bic     r10, r10, r9, ROR #9
    bic     r11, r11, r10, ROR #10
    bic     r12, r12, r11, ROR #11
    bic     r1, r1, r12, ROR #12

    // loop 5
    bic     r2, r2, r1, ROR #1
    bic     r3, r3, r2, ROR #2
    bic     r4, r4, r3, ROR #3
    bic     r5, r5, r4, ROR #4
    bic     r6, r6, r5, ROR #5
    bic     r7, r7, r6, ROR #6
    bic     r8, r8, r7, ROR #7
    bic     r9, r9, r8, ROR #8
    bic     r10, r10, r9, ROR #9
    bic     r11, r11, r10, ROR #10
    bic     r12, r12, r11, ROR #11
    bic     r1, r1, r12, ROR #12

    subs    r0, r0, #1
    bne     bicRegMinTest_LOOP
    pop     {r4-r11, pc}

_bicRegMaxTest:

    push    {r4-r11, lr}

bicRegMaxTest_LOOP:

    // loop 1
    bic     r1, r1, r1
    bic     r2, r2, r2
    bic     r3, r3, r3
    bic     r4, r4, r4
    bic     r5, r5, r5
    bic     r6, r6, r6
    bic     r7, r7, r7
    bic     r8, r8, r8
    bic     r9, r9, r9
    bic     r10, r10, r10
    bic     r11, r11, r11
    bic     r12, r12, r12

    // loop 2
    bic     r1, r1, r1
    bic     r2, r2, r2
    bic     r3, r3, r3
    bic     r4, r4, r4
    bic     r5, r5, r5
    bic     r6, r6, r6
    bic     r7, r7, r7
    bic     r8, r8, r8
    bic     r9, r9, r9
    bic     r10, r10, r10
    bic     r11, r11, r11
    bic     r12, r12, r12

    // loop 3
    bic     r1, r1, r1
    bic     r2, r2, r2
    bic     r3, r3, r3
    bic     r4, r4, r4
    bic     r5, r5, r5
    bic     r6, r6, r6
    bic     r7, r7, r7
    bic     r8, r8, r8
    bic     r9, r9, r9
    bic     r10, r10, r10
    bic     r11, r11, r11
    bic     r12, r12, r12

    // loop 4
    bic     r1, r1, r1
    bic     r2, r2, r2
    bic     r3, r3, r3
    bic     r4, r4, r4
    bic     r5, r5, r5
    bic     r6, r6, r6
    bic     r7, r7, r7
    bic     r8, r8, r8
    bic     r9, r9, r9
    bic     r10, r10, r10
    bic     r11, r11, r11
    bic     r12, r12, r12

    // loop 5
    bic     r1, r1, r1
    bic     r2, r2, r2
    bic     r3, r3, r3
    bic     r4, r4, r4
    bic     r5, r5, r5
    bic     r6, r6, r6
    bic     r7, r7, r7
    bic     r8, r8, r8
    bic     r9, r9, r9
    bic     r10, r10, r10
    bic     r11, r11, r11
    bic     r12, r12, r12

    subs    r0, r0, #1
    bne     bicRegMaxTest_LOOP
    pop     {r4-r11, pc}

_bicShftMinTest:

    push    {r4-r11, lr}

bicShftMinTest_LOOP:

    // loop 1
    bic     r2, r2, r1, ROR r1
    bic     r3, r3, r2, ROR r2
    bic     r4, r4, r3, ROR r3
    bic     r5, r5, r4, ROR r4
    bic     r6, r6, r5, ROR r5
    bic     r7, r7, r6, ROR r6
    bic     r8, r8, r7, ROR r7
    bic     r9, r9, r8, ROR r8
    bic     r10, r10, r9, ROR r9
    bic     r11, r11, r10, ROR r10
    bic     r12, r12, r11, ROR r11
    bic     r1, r1, r12, ROR r12

    // loop 2
    bic     r2, r2, r1, ROR r1
    bic     r3, r3, r2, ROR r2
    bic     r4, r4, r3, ROR r3
    bic     r5, r5, r4, ROR r4
    bic     r6, r6, r5, ROR r5
    bic     r7, r7, r6, ROR r6
    bic     r8, r8, r7, ROR r7
    bic     r9, r9, r8, ROR r8
    bic     r10, r10, r9, ROR r9
    bic     r11, r11, r10, ROR r10
    bic     r12, r12, r11, ROR r11
    bic     r1, r1, r12, ROR r12

    // loop 3
    bic     r2, r2, r1, ROR r1
    bic     r3, r3, r2, ROR r2
    bic     r4, r4, r3, ROR r3
    bic     r5, r5, r4, ROR r4
    bic     r6, r6, r5, ROR r5
    bic     r7, r7, r6, ROR r6
    bic     r8, r8, r7, ROR r7
    bic     r9, r9, r8, ROR r8
    bic     r10, r10, r9, ROR r9
    bic     r11, r11, r10, ROR r10
    bic     r12, r12, r11, ROR r11
    bic     r1, r1, r12, ROR r12

    // loop 4
    bic     r2, r2, r1, ROR r1
    bic     r3, r3, r2, ROR r2
    bic     r4, r4, r3, ROR r3
    bic     r5, r5, r4, ROR r4
    bic     r6, r6, r5, ROR r5
    bic     r7, r7, r6, ROR r6
    bic     r8, r8, r7, ROR r7
    bic     r9, r9, r8, ROR r8
    bic     r10, r10, r9, ROR r9
    bic     r11, r11, r10, ROR r10
    bic     r12, r12, r11, ROR r11
    bic     r1, r1, r12, ROR r12

    // loop 5
    bic     r2, r2, r1, ROR r1
    bic     r3, r3, r2, ROR r2
    bic     r4, r4, r3, ROR r3
    bic     r5, r5, r4, ROR r4
    bic     r6, r6, r5, ROR r5
    bic     r7, r7, r6, ROR r6
    bic     r8, r8, r7, ROR r7
    bic     r9, r9, r8, ROR r8
    bic     r10, r10, r9, ROR r9
    bic     r11, r11, r10, ROR r10
    bic     r12, r12, r11, ROR r11
    bic     r1, r1, r12, ROR r12

    subs    r0, r0, #1
    bne     bicShftMinTest_LOOP
    pop     {r4-r11, pc}

_bicShftMaxTest:

    push    {r4-r11, lr}

bicShftMaxTest_LOOP:

    // loop 1
    bic     r1, r1, r1, ROR r1
    bic     r2, r2, r2, ROR r2
    bic     r3, r3, r3, ROR r3
    bic     r4, r4, r4, ROR r4
    bic     r5, r5, r5, ROR r5
    bic     r6, r6, r6, ROR r6
    bic     r7, r7, r7, ROR r7
    bic     r8, r8, r8, ROR r8
    bic     r9, r9, r9, ROR r9
    bic     r10, r10, r10, ROR r10
    bic     r11, r11, r11, ROR r11
    bic     r12, r12, r12, ROR r12

    // loop 2
    bic     r1, r1, r1, ROR r1
    bic     r2, r2, r2, ROR r2
    bic     r3, r3, r3, ROR r3
    bic     r4, r4, r4, ROR r4
    bic     r5, r5, r5, ROR r5
    bic     r6, r6, r6, ROR r6
    bic     r7, r7, r7, ROR r7
    bic     r8, r8, r8, ROR r8
    bic     r9, r9, r9, ROR r9
    bic     r10, r10, r10, ROR r10
    bic     r11, r11, r11, ROR r11
    bic     r12, r12, r12, ROR r12

    // loop 3
    bic     r1, r1, r1, ROR r1
    bic     r2, r2, r2, ROR r2
    bic     r3, r3, r3, ROR r3
    bic     r4, r4, r4, ROR r4
    bic     r5, r5, r5, ROR r5
    bic     r6, r6, r6, ROR r6
    bic     r7, r7, r7, ROR r7
    bic     r8, r8, r8, ROR r8
    bic     r9, r9, r9, ROR r9
    bic     r10, r10, r10, ROR r10
    bic     r11, r11, r11, ROR r11
    bic     r12, r12, r12, ROR r12

    // loop 4
    bic     r1, r1, r1, ROR r1
    bic     r2, r2, r2, ROR r2
    bic     r3, r3, r3, ROR r3
    bic     r4, r4, r4, ROR r4
    bic     r5, r5, r5, ROR r5
    bic     r6, r6, r6, ROR r6
    bic     r7, r7, r7, ROR r7
    bic     r8, r8, r8, ROR r8
    bic     r9, r9, r9, ROR r9
    bic     r10, r10, r10, ROR r10
    bic     r11, r11, r11, ROR r11
    bic     r12, r12, r12, ROR r12

    // loop 5
    bic     r1, r1, r1, ROR r1
    bic     r2, r2, r2, ROR r2
    bic     r3, r3, r3, ROR r3
    bic     r4, r4, r4, ROR r4
    bic     r5, r5, r5, ROR r5
    bic     r6, r6, r6, ROR r6
    bic     r7, r7, r7, ROR r7
    bic     r8, r8, r8, ROR r8
    bic     r9, r9, r9, ROR r9
    bic     r10, r10, r10, ROR r10
    bic     r11, r11, r11, ROR r11
    bic     r12, r12, r12, ROR r12

    subs    r0, r0, #1
    bne     bicShftMaxTest_LOOP
    pop     {r4-r11, pc}

.thumb
.thumb_func

_cbnzAvgTest:

    mov     r2, #0

cbnzAvgTest_LOOP:

    // loop 1
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest

    // loop 2
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest

    // loop 3
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest

    // loop 4
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest

    // loop 5
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest
    cbnz    r2, _cbnzAvgTest

    subs    r0, r0, #1
    bne     cbnzAvgTest_LOOP
    bx      lr
    nop


.arm


_clzMinTest:

    push    {r4-r11, lr}

clzMinTest_LOOP:

    // loop 1
    clz     r2, r1
    clz     r3, r2
    clz     r4, r3
    clz     r5, r4
    clz     r6, r5
    clz     r7, r6
    clz     r8, r7
    clz     r9, r8
    clz     r10, r9
    clz     r11, r10
    clz     r12, r11
    clz     r1, r12

    // loop 2
    clz     r2, r1
    clz     r3, r2
    clz     r4, r3
    clz     r5, r4
    clz     r6, r5
    clz     r7, r6
    clz     r8, r7
    clz     r9, r8
    clz     r10, r9
    clz     r11, r10
    clz     r12, r11
    clz     r1, r12

    // loop 3
    clz     r2, r1
    clz     r3, r2
    clz     r4, r3
    clz     r5, r4
    clz     r6, r5
    clz     r7, r6
    clz     r8, r7
    clz     r9, r8
    clz     r10, r9
    clz     r11, r10
    clz     r12, r11
    clz     r1, r12

    // loop 4
    clz     r2, r1
    clz     r3, r2
    clz     r4, r3
    clz     r5, r4
    clz     r6, r5
    clz     r7, r6
    clz     r8, r7
    clz     r9, r8
    clz     r10, r9
    clz     r11, r10
    clz     r12, r11
    clz     r1, r12

    // loop 5
    clz     r2, r1
    clz     r3, r2
    clz     r4, r3
    clz     r5, r4
    clz     r6, r5
    clz     r7, r6
    clz     r8, r7
    clz     r9, r8
    clz     r10, r9
    clz     r11, r10
    clz     r12, r11
    clz     r1, r12

    subs    r0, r0, #1
    bne     clzMinTest_LOOP
    pop     {r4-r11, pc}

_clzMaxTest:

    push    {r4-r11, lr}

clzMaxTest_LOOP:

    // loop 1
    clz     r1, r1
    clz     r2, r2
    clz     r3, r3
    clz     r4, r4
    clz     r5, r5
    clz     r6, r6
    clz     r7, r7
    clz     r8, r8
    clz     r9, r9
    clz     r10, r10
    clz     r11, r11
    clz     r12, r12

    // loop 2
    clz     r1, r1
    clz     r2, r2
    clz     r3, r3
    clz     r4, r4
    clz     r5, r5
    clz     r6, r6
    clz     r7, r7
    clz     r8, r8
    clz     r9, r9
    clz     r10, r10
    clz     r11, r11
    clz     r12, r12

    // loop 3
    clz     r1, r1
    clz     r2, r2
    clz     r3, r3
    clz     r4, r4
    clz     r5, r5
    clz     r6, r6
    clz     r7, r7
    clz     r8, r8
    clz     r9, r9
    clz     r10, r10
    clz     r11, r11
    clz     r12, r12

    // loop 4
    clz     r1, r1
    clz     r2, r2
    clz     r3, r3
    clz     r4, r4
    clz     r5, r5
    clz     r6, r6
    clz     r7, r7
    clz     r8, r8
    clz     r9, r9
    clz     r10, r10
    clz     r11, r11
    clz     r12, r12

    // loop 5
    clz     r1, r1
    clz     r2, r2
    clz     r3, r3
    clz     r4, r4
    clz     r5, r5
    clz     r6, r6
    clz     r7, r7
    clz     r8, r8
    clz     r9, r9
    clz     r10, r10
    clz     r11, r11
    clz     r12, r12

    subs    r0, r0, #1
    bne     clzMaxTest_LOOP
    pop     {r4-r11, pc}


_cmnImmMinTest:

    // loop 1
    cmn     r1, #1
    cmn     r1, #2
    cmn     r1, #3
    cmn     r1, #4
    cmn     r1, #5
    cmn     r1, #6
    cmn     r1, #7
    cmn     r1, #8
    cmn     r1, #9
    cmn     r1, #10
    cmn     r1, #11
    cmn     r1, #12

    // loop 2
    cmn     r1, #1
    cmn     r1, #2
    cmn     r1, #3
    cmn     r1, #4
    cmn     r1, #5
    cmn     r1, #6
    cmn     r1, #7
    cmn     r1, #8
    cmn     r1, #9
    cmn     r1, #10
    cmn     r1, #11
    cmn     r1, #12

    // loop 3
    cmn     r1, #1
    cmn     r1, #2
    cmn     r1, #3
    cmn     r1, #4
    cmn     r1, #5
    cmn     r1, #6
    cmn     r1, #7
    cmn     r1, #8
    cmn     r1, #9
    cmn     r1, #10
    cmn     r1, #11
    cmn     r1, #12

    // loop 4
    cmn     r1, #1
    cmn     r1, #2
    cmn     r1, #3
    cmn     r1, #4
    cmn     r1, #5
    cmn     r1, #6
    cmn     r1, #7
    cmn     r1, #8
    cmn     r1, #9
    cmn     r1, #10
    cmn     r1, #11
    cmn     r1, #12

    // loop 5
    cmn     r1, #1
    cmn     r1, #2
    cmn     r1, #3
    cmn     r1, #4
    cmn     r1, #5
    cmn     r1, #6
    cmn     r1, #7
    cmn     r1, #8
    cmn     r1, #9
    cmn     r1, #10
    cmn     r1, #11
    cmn     r1, #12

    subs    r0, r0, #1
    bne     _cmnImmMinTest
    bx      lr

_cmnImmMaxTest:

    push    {r4-r11, lr}

cmnImmMaxTest_LOOP:

    // loop 1
    cmn     r1, #1
    cmn     r2, #2
    cmn     r3, #3
    cmn     r4, #4
    cmn     r5, #5
    cmn     r6, #6
    cmn     r7, #7
    cmn     r8, #8
    cmn     r9, #9
    cmn     r10, #10
    cmn     r11, #11
    cmn     r12, #12

    // loop 2
    cmn     r1, #1
    cmn     r2, #2
    cmn     r3, #3
    cmn     r4, #4
    cmn     r5, #5
    cmn     r6, #6
    cmn     r7, #7
    cmn     r8, #8
    cmn     r9, #9
    cmn     r10, #10
    cmn     r11, #11
    cmn     r12, #12

    // loop 3
    cmn     r1, #1
    cmn     r2, #2
    cmn     r3, #3
    cmn     r4, #4
    cmn     r5, #5
    cmn     r6, #6
    cmn     r7, #7
    cmn     r8, #8
    cmn     r9, #9
    cmn     r10, #10
    cmn     r11, #11
    cmn     r12, #12

    // loop 4
    cmn     r1, #1
    cmn     r2, #2
    cmn     r3, #3
    cmn     r4, #4
    cmn     r5, #5
    cmn     r6, #6
    cmn     r7, #7
    cmn     r8, #8
    cmn     r9, #9
    cmn     r10, #10
    cmn     r11, #11
    cmn     r12, #12

    // loop 5
    cmn     r1, #1
    cmn     r2, #2
    cmn     r3, #3
    cmn     r4, #4
    cmn     r5, #5
    cmn     r6, #6
    cmn     r7, #7
    cmn     r8, #8
    cmn     r9, #9
    cmn     r10, #10
    cmn     r11, #11
    cmn     r12, #12

    subs    r0, r0, #1
    bne     cmnImmMaxTest_LOOP
    pop     {r4-r11, pc}

_cmnRegMinTest:

    push    {r4-r11, lr}

cmnRegMinTest_LOOP:

    // loop 1
    cmn     r2, r1, ROR #1
    cmn     r3, r2, ROR #2
    cmn     r4, r3, ROR #3
    cmn     r5, r4, ROR #4
    cmn     r6, r5, ROR #5
    cmn     r7, r6, ROR #6
    cmn     r8, r7, ROR #7
    cmn     r9, r8, ROR #8
    cmn     r10, r9, ROR #9
    cmn     r11, r10, ROR #10
    cmn     r12, r11, ROR #11
    cmn     r1, r12, ROR #12

    // loop 2
    cmn     r2, r1, ROR #1
    cmn     r3, r2, ROR #2
    cmn     r4, r3, ROR #3
    cmn     r5, r4, ROR #4
    cmn     r6, r5, ROR #5
    cmn     r7, r6, ROR #6
    cmn     r8, r7, ROR #7
    cmn     r9, r8, ROR #8
    cmn     r10, r9, ROR #9
    cmn     r11, r10, ROR #10
    cmn     r12, r11, ROR #11
    cmn     r1, r12, ROR #12

    // loop 3
    cmn     r2, r1, ROR #1
    cmn     r3, r2, ROR #2
    cmn     r4, r3, ROR #3
    cmn     r5, r4, ROR #4
    cmn     r6, r5, ROR #5
    cmn     r7, r6, ROR #6
    cmn     r8, r7, ROR #7
    cmn     r9, r8, ROR #8
    cmn     r10, r9, ROR #9
    cmn     r11, r10, ROR #10
    cmn     r12, r11, ROR #11
    cmn     r1, r12, ROR #12

    // loop 4
    cmn     r2, r1, ROR #1
    cmn     r3, r2, ROR #2
    cmn     r4, r3, ROR #3
    cmn     r5, r4, ROR #4
    cmn     r6, r5, ROR #5
    cmn     r7, r6, ROR #6
    cmn     r8, r7, ROR #7
    cmn     r9, r8, ROR #8
    cmn     r10, r9, ROR #9
    cmn     r11, r10, ROR #10
    cmn     r12, r11, ROR #11
    cmn     r1, r12, ROR #12

    // loop 5
    cmn     r2, r1, ROR #1
    cmn     r3, r2, ROR #2
    cmn     r4, r3, ROR #3
    cmn     r5, r4, ROR #4
    cmn     r6, r5, ROR #5
    cmn     r7, r6, ROR #6
    cmn     r8, r7, ROR #7
    cmn     r9, r8, ROR #8
    cmn     r10, r9, ROR #9
    cmn     r11, r10, ROR #10
    cmn     r12, r11, ROR #11
    cmn     r1, r12, ROR #12

    subs    r0, r0, #1
    bne     cmnRegMinTest_LOOP
    pop     {r4-r11, pc}

_cmnRegMaxTest:

    push    {r4-r11, lr}

cmnRegMaxTest_LOOP:

    // loop 1
    cmn     r1, r1
    cmn     r2, r2
    cmn     r3, r3
    cmn     r4, r4
    cmn     r5, r5
    cmn     r6, r6
    cmn     r7, r7
    cmn     r8, r8
    cmn     r9, r9
    cmn     r10, r10
    cmn     r11, r11
    cmn     r12, r12

    // loop 2
    cmn     r1, r1
    cmn     r2, r2
    cmn     r3, r3
    cmn     r4, r4
    cmn     r5, r5
    cmn     r6, r6
    cmn     r7, r7
    cmn     r8, r8
    cmn     r9, r9
    cmn     r10, r10
    cmn     r11, r11
    cmn     r12, r12

    // loop 3
    cmn     r1, r1
    cmn     r2, r2
    cmn     r3, r3
    cmn     r4, r4
    cmn     r5, r5
    cmn     r6, r6
    cmn     r7, r7
    cmn     r8, r8
    cmn     r9, r9
    cmn     r10, r10
    cmn     r11, r11
    cmn     r12, r12

    // loop 4
    cmn     r1, r1
    cmn     r2, r2
    cmn     r3, r3
    cmn     r4, r4
    cmn     r5, r5
    cmn     r6, r6
    cmn     r7, r7
    cmn     r8, r8
    cmn     r9, r9
    cmn     r10, r10
    cmn     r11, r11
    cmn     r12, r12

    // loop 5
    cmn     r1, r1
    cmn     r2, r2
    cmn     r3, r3
    cmn     r4, r4
    cmn     r5, r5
    cmn     r6, r6
    cmn     r7, r7
    cmn     r8, r8
    cmn     r9, r9
    cmn     r10, r10
    cmn     r11, r11
    cmn     r12, r12

    subs    r0, r0, #1
    bne     cmnRegMaxTest_LOOP
    pop     {r4-r11, pc}

_cmnShftMinTest:

    push    {r4-r11, lr}

cmnShftMinTest_LOOP:

    // loop 1
    cmn     r2, r1, ROR r1
    cmn     r3, r2, ROR r2
    cmn     r4, r3, ROR r3
    cmn     r5, r4, ROR r4
    cmn     r6, r5, ROR r5
    cmn     r7, r6, ROR r6
    cmn     r8, r7, ROR r7
    cmn     r9, r8, ROR r8
    cmn     r10, r9, ROR r9
    cmn     r11, r10, ROR r10
    cmn     r12, r11, ROR r11
    cmn     r1, r12, ROR r12

    // loop 2
    cmn     r2, r1, ROR r1
    cmn     r3, r2, ROR r2
    cmn     r4, r3, ROR r3
    cmn     r5, r4, ROR r4
    cmn     r6, r5, ROR r5
    cmn     r7, r6, ROR r6
    cmn     r8, r7, ROR r7
    cmn     r9, r8, ROR r8
    cmn     r10, r9, ROR r9
    cmn     r11, r10, ROR r10
    cmn     r12, r11, ROR r11
    cmn     r1, r12, ROR r12

    // loop 3
    cmn     r2, r1, ROR r1
    cmn     r3, r2, ROR r2
    cmn     r4, r3, ROR r3
    cmn     r5, r4, ROR r4
    cmn     r6, r5, ROR r5
    cmn     r7, r6, ROR r6
    cmn     r8, r7, ROR r7
    cmn     r9, r8, ROR r8
    cmn     r10, r9, ROR r9
    cmn     r11, r10, ROR r10
    cmn     r12, r11, ROR r11
    cmn     r1, r12, ROR r12

    // loop 4
    cmn     r2, r1, ROR r1
    cmn     r3, r2, ROR r2
    cmn     r4, r3, ROR r3
    cmn     r5, r4, ROR r4
    cmn     r6, r5, ROR r5
    cmn     r7, r6, ROR r6
    cmn     r8, r7, ROR r7
    cmn     r9, r8, ROR r8
    cmn     r10, r9, ROR r9
    cmn     r11, r10, ROR r10
    cmn     r12, r11, ROR r11
    cmn     r1, r12, ROR r12

    // loop 5
    cmn     r2, r1, ROR r1
    cmn     r3, r2, ROR r2
    cmn     r4, r3, ROR r3
    cmn     r5, r4, ROR r4
    cmn     r6, r5, ROR r5
    cmn     r7, r6, ROR r6
    cmn     r8, r7, ROR r7
    cmn     r9, r8, ROR r8
    cmn     r10, r9, ROR r9
    cmn     r11, r10, ROR r10
    cmn     r12, r11, ROR r11
    cmn     r1, r12, ROR r12

    subs    r0, r0, #1
    bne     cmnShftMinTest_LOOP
    pop     {r4-r11, pc}

_cmnShftMaxTest:

    push    {r4-r11, lr}

cmnShftMaxTest_LOOP:

    // loop 1
    cmn     r1, r1, ROR r1
    cmn     r2, r2, ROR r2
    cmn     r3, r3, ROR r3
    cmn     r4, r4, ROR r4
    cmn     r5, r5, ROR r5
    cmn     r6, r6, ROR r6
    cmn     r7, r7, ROR r7
    cmn     r8, r8, ROR r8
    cmn     r9, r9, ROR r9
    cmn     r10, r10, ROR r10
    cmn     r11, r11, ROR r11
    cmn     r12, r12, ROR r12

    // loop 2
    cmn     r1, r1, ROR r1
    cmn     r2, r2, ROR r2
    cmn     r3, r3, ROR r3
    cmn     r4, r4, ROR r4
    cmn     r5, r5, ROR r5
    cmn     r6, r6, ROR r6
    cmn     r7, r7, ROR r7
    cmn     r8, r8, ROR r8
    cmn     r9, r9, ROR r9
    cmn     r10, r10, ROR r10
    cmn     r11, r11, ROR r11
    cmn     r12, r12, ROR r12

    // loop 3
    cmn     r1, r1, ROR r1
    cmn     r2, r2, ROR r2
    cmn     r3, r3, ROR r3
    cmn     r4, r4, ROR r4
    cmn     r5, r5, ROR r5
    cmn     r6, r6, ROR r6
    cmn     r7, r7, ROR r7
    cmn     r8, r8, ROR r8
    cmn     r9, r9, ROR r9
    cmn     r10, r10, ROR r10
    cmn     r11, r11, ROR r11
    cmn     r12, r12, ROR r12

    // loop 4
    cmn     r1, r1, ROR r1
    cmn     r2, r2, ROR r2
    cmn     r3, r3, ROR r3
    cmn     r4, r4, ROR r4
    cmn     r5, r5, ROR r5
    cmn     r6, r6, ROR r6
    cmn     r7, r7, ROR r7
    cmn     r8, r8, ROR r8
    cmn     r9, r9, ROR r9
    cmn     r10, r10, ROR r10
    cmn     r11, r11, ROR r11
    cmn     r12, r12, ROR r12

    // loop 5
    cmn     r1, r1, ROR r1
    cmn     r2, r2, ROR r2
    cmn     r3, r3, ROR r3
    cmn     r4, r4, ROR r4
    cmn     r5, r5, ROR r5
    cmn     r6, r6, ROR r6
    cmn     r7, r7, ROR r7
    cmn     r8, r8, ROR r8
    cmn     r9, r9, ROR r9
    cmn     r10, r10, ROR r10
    cmn     r11, r11, ROR r11
    cmn     r12, r12, ROR r12

    subs    r0, r0, #1
    bne     cmnShftMaxTest_LOOP
    pop     {r4-r11, pc}


_cmpImmMinTest:

    // loop 1
    cmp     r1, #1
    cmp     r1, #2
    cmp     r1, #3
    cmp     r1, #4
    cmp     r1, #5
    cmp     r1, #6
    cmp     r1, #7
    cmp     r1, #8
    cmp     r1, #9
    cmp     r1, #10
    cmp     r1, #11
    cmp     r1, #12

    // loop 2
    cmp     r1, #1
    cmp     r1, #2
    cmp     r1, #3
    cmp     r1, #4
    cmp     r1, #5
    cmp     r1, #6
    cmp     r1, #7
    cmp     r1, #8
    cmp     r1, #9
    cmp     r1, #10
    cmp     r1, #11
    cmp     r1, #12

    // loop 3
    cmp     r1, #1
    cmp     r1, #2
    cmp     r1, #3
    cmp     r1, #4
    cmp     r1, #5
    cmp     r1, #6
    cmp     r1, #7
    cmp     r1, #8
    cmp     r1, #9
    cmp     r1, #10
    cmp     r1, #11
    cmp     r1, #12

    // loop 4
    cmp     r1, #1
    cmp     r1, #2
    cmp     r1, #3
    cmp     r1, #4
    cmp     r1, #5
    cmp     r1, #6
    cmp     r1, #7
    cmp     r1, #8
    cmp     r1, #9
    cmp     r1, #10
    cmp     r1, #11
    cmp     r1, #12

    // loop 5
    cmp     r1, #1
    cmp     r1, #2
    cmp     r1, #3
    cmp     r1, #4
    cmp     r1, #5
    cmp     r1, #6
    cmp     r1, #7
    cmp     r1, #8
    cmp     r1, #9
    cmp     r1, #10
    cmp     r1, #11
    cmp     r1, #12

    subs    r0, r0, #1
    bne     _cmpImmMinTest
    bx      lr

_cmpImmMaxTest:

    push    {r4-r11, lr}

cmpImmMaxTest_LOOP:

    // loop 1
    cmp     r1, #1
    cmp     r2, #2
    cmp     r3, #3
    cmp     r4, #4
    cmp     r5, #5
    cmp     r6, #6
    cmp     r7, #7
    cmp     r8, #8
    cmp     r9, #9
    cmp     r10, #10
    cmp     r11, #11
    cmp     r12, #12

    // loop 2
    cmp     r1, #1
    cmp     r2, #2
    cmp     r3, #3
    cmp     r4, #4
    cmp     r5, #5
    cmp     r6, #6
    cmp     r7, #7
    cmp     r8, #8
    cmp     r9, #9
    cmp     r10, #10
    cmp     r11, #11
    cmp     r12, #12

    // loop 3
    cmp     r1, #1
    cmp     r2, #2
    cmp     r3, #3
    cmp     r4, #4
    cmp     r5, #5
    cmp     r6, #6
    cmp     r7, #7
    cmp     r8, #8
    cmp     r9, #9
    cmp     r10, #10
    cmp     r11, #11
    cmp     r12, #12

    // loop 4
    cmp     r1, #1
    cmp     r2, #2
    cmp     r3, #3
    cmp     r4, #4
    cmp     r5, #5
    cmp     r6, #6
    cmp     r7, #7
    cmp     r8, #8
    cmp     r9, #9
    cmp     r10, #10
    cmp     r11, #11
    cmp     r12, #12

    // loop 5
    cmp     r1, #1
    cmp     r2, #2
    cmp     r3, #3
    cmp     r4, #4
    cmp     r5, #5
    cmp     r6, #6
    cmp     r7, #7
    cmp     r8, #8
    cmp     r9, #9
    cmp     r10, #10
    cmp     r11, #11
    cmp     r12, #12

    subs    r0, r0, #1
    bne     cmpImmMaxTest_LOOP
    pop     {r4-r11, pc}

_cmpRegMinTest:

    push    {r4-r11, lr}

cmpRegMinTest_LOOP:

    // loop 1
    cmp     r2, r1, ROR #1
    cmp     r3, r2, ROR #2
    cmp     r4, r3, ROR #3
    cmp     r5, r4, ROR #4
    cmp     r6, r5, ROR #5
    cmp     r7, r6, ROR #6
    cmp     r8, r7, ROR #7
    cmp     r9, r8, ROR #8
    cmp     r10, r9, ROR #9
    cmp     r11, r10, ROR #10
    cmp     r12, r11, ROR #11
    cmp     r1, r12, ROR #12

    // loop 2
    cmp     r2, r1, ROR #1
    cmp     r3, r2, ROR #2
    cmp     r4, r3, ROR #3
    cmp     r5, r4, ROR #4
    cmp     r6, r5, ROR #5
    cmp     r7, r6, ROR #6
    cmp     r8, r7, ROR #7
    cmp     r9, r8, ROR #8
    cmp     r10, r9, ROR #9
    cmp     r11, r10, ROR #10
    cmp     r12, r11, ROR #11
    cmp     r1, r12, ROR #12

    // loop 3
    cmp     r2, r1, ROR #1
    cmp     r3, r2, ROR #2
    cmp     r4, r3, ROR #3
    cmp     r5, r4, ROR #4
    cmp     r6, r5, ROR #5
    cmp     r7, r6, ROR #6
    cmp     r8, r7, ROR #7
    cmp     r9, r8, ROR #8
    cmp     r10, r9, ROR #9
    cmp     r11, r10, ROR #10
    cmp     r12, r11, ROR #11
    cmp     r1, r12, ROR #12

    // loop 4
    cmp     r2, r1, ROR #1
    cmp     r3, r2, ROR #2
    cmp     r4, r3, ROR #3
    cmp     r5, r4, ROR #4
    cmp     r6, r5, ROR #5
    cmp     r7, r6, ROR #6
    cmp     r8, r7, ROR #7
    cmp     r9, r8, ROR #8
    cmp     r10, r9, ROR #9
    cmp     r11, r10, ROR #10
    cmp     r12, r11, ROR #11
    cmp     r1, r12, ROR #12

    // loop 5
    cmp     r2, r1, ROR #1
    cmp     r3, r2, ROR #2
    cmp     r4, r3, ROR #3
    cmp     r5, r4, ROR #4
    cmp     r6, r5, ROR #5
    cmp     r7, r6, ROR #6
    cmp     r8, r7, ROR #7
    cmp     r9, r8, ROR #8
    cmp     r10, r9, ROR #9
    cmp     r11, r10, ROR #10
    cmp     r12, r11, ROR #11
    cmp     r1, r12, ROR #12

    subs    r0, r0, #1
    bne     cmpRegMinTest_LOOP
    pop     {r4-r11, pc}

_cmpRegMaxTest:

    push    {r4-r11, lr}

cmpRegMaxTest_LOOP:

    // loop 1
    cmp     r1, r1
    cmp     r2, r2
    cmp     r3, r3
    cmp     r4, r4
    cmp     r5, r5
    cmp     r6, r6
    cmp     r7, r7
    cmp     r8, r8
    cmp     r9, r9
    cmp     r10, r10
    cmp     r11, r11
    cmp     r12, r12

    // loop 2
    cmp     r1, r1
    cmp     r2, r2
    cmp     r3, r3
    cmp     r4, r4
    cmp     r5, r5
    cmp     r6, r6
    cmp     r7, r7
    cmp     r8, r8
    cmp     r9, r9
    cmp     r10, r10
    cmp     r11, r11
    cmp     r12, r12

    // loop 3
    cmp     r1, r1
    cmp     r2, r2
    cmp     r3, r3
    cmp     r4, r4
    cmp     r5, r5
    cmp     r6, r6
    cmp     r7, r7
    cmp     r8, r8
    cmp     r9, r9
    cmp     r10, r10
    cmp     r11, r11
    cmp     r12, r12

    // loop 4
    cmp     r1, r1
    cmp     r2, r2
    cmp     r3, r3
    cmp     r4, r4
    cmp     r5, r5
    cmp     r6, r6
    cmp     r7, r7
    cmp     r8, r8
    cmp     r9, r9
    cmp     r10, r10
    cmp     r11, r11
    cmp     r12, r12

    // loop 5
    cmp     r1, r1
    cmp     r2, r2
    cmp     r3, r3
    cmp     r4, r4
    cmp     r5, r5
    cmp     r6, r6
    cmp     r7, r7
    cmp     r8, r8
    cmp     r9, r9
    cmp     r10, r10
    cmp     r11, r11
    cmp     r12, r12

    subs    r0, r0, #1
    bne     cmpRegMaxTest_LOOP
    pop     {r4-r11, pc}

_cmpShftMinTest:

    push    {r4-r11, lr}

cmpShftMinTest_LOOP:

    // loop 1
    cmp     r2, r1, ROR r1
    cmp     r3, r2, ROR r2
    cmp     r4, r3, ROR r3
    cmp     r5, r4, ROR r4
    cmp     r6, r5, ROR r5
    cmp     r7, r6, ROR r6
    cmp     r8, r7, ROR r7
    cmp     r9, r8, ROR r8
    cmp     r10, r9, ROR r9
    cmp     r11, r10, ROR r10
    cmp     r12, r11, ROR r11
    cmp     r1, r12, ROR r12

    // loop 2
    cmp     r2, r1, ROR r1
    cmp     r3, r2, ROR r2
    cmp     r4, r3, ROR r3
    cmp     r5, r4, ROR r4
    cmp     r6, r5, ROR r5
    cmp     r7, r6, ROR r6
    cmp     r8, r7, ROR r7
    cmp     r9, r8, ROR r8
    cmp     r10, r9, ROR r9
    cmp     r11, r10, ROR r10
    cmp     r12, r11, ROR r11
    cmp     r1, r12, ROR r12

    // loop 3
    cmp     r2, r1, ROR r1
    cmp     r3, r2, ROR r2
    cmp     r4, r3, ROR r3
    cmp     r5, r4, ROR r4
    cmp     r6, r5, ROR r5
    cmp     r7, r6, ROR r6
    cmp     r8, r7, ROR r7
    cmp     r9, r8, ROR r8
    cmp     r10, r9, ROR r9
    cmp     r11, r10, ROR r10
    cmp     r12, r11, ROR r11
    cmp     r1, r12, ROR r12

    // loop 4
    cmp     r2, r1, ROR r1
    cmp     r3, r2, ROR r2
    cmp     r4, r3, ROR r3
    cmp     r5, r4, ROR r4
    cmp     r6, r5, ROR r5
    cmp     r7, r6, ROR r6
    cmp     r8, r7, ROR r7
    cmp     r9, r8, ROR r8
    cmp     r10, r9, ROR r9
    cmp     r11, r10, ROR r10
    cmp     r12, r11, ROR r11
    cmp     r1, r12, ROR r12

    // loop 5
    cmp     r2, r1, ROR r1
    cmp     r3, r2, ROR r2
    cmp     r4, r3, ROR r3
    cmp     r5, r4, ROR r4
    cmp     r6, r5, ROR r5
    cmp     r7, r6, ROR r6
    cmp     r8, r7, ROR r7
    cmp     r9, r8, ROR r8
    cmp     r10, r9, ROR r9
    cmp     r11, r10, ROR r10
    cmp     r12, r11, ROR r11
    cmp     r1, r12, ROR r12

    subs    r0, r0, #1
    bne     cmpShftMinTest_LOOP
    pop     {r4-r11, pc}

_cmpShftMaxTest:

    push    {r4-r11, lr}

cmpShftMaxTest_LOOP:

    // loop 1
    cmp     r1, r1, ROR r1
    cmp     r2, r2, ROR r2
    cmp     r3, r3, ROR r3
    cmp     r4, r4, ROR r4
    cmp     r5, r5, ROR r5
    cmp     r6, r6, ROR r6
    cmp     r7, r7, ROR r7
    cmp     r8, r8, ROR r8
    cmp     r9, r9, ROR r9
    cmp     r10, r10, ROR r10
    cmp     r11, r11, ROR r11
    cmp     r12, r12, ROR r12

    // loop 2
    cmp     r1, r1, ROR r1
    cmp     r2, r2, ROR r2
    cmp     r3, r3, ROR r3
    cmp     r4, r4, ROR r4
    cmp     r5, r5, ROR r5
    cmp     r6, r6, ROR r6
    cmp     r7, r7, ROR r7
    cmp     r8, r8, ROR r8
    cmp     r9, r9, ROR r9
    cmp     r10, r10, ROR r10
    cmp     r11, r11, ROR r11
    cmp     r12, r12, ROR r12

    // loop 3
    cmp     r1, r1, ROR r1
    cmp     r2, r2, ROR r2
    cmp     r3, r3, ROR r3
    cmp     r4, r4, ROR r4
    cmp     r5, r5, ROR r5
    cmp     r6, r6, ROR r6
    cmp     r7, r7, ROR r7
    cmp     r8, r8, ROR r8
    cmp     r9, r9, ROR r9
    cmp     r10, r10, ROR r10
    cmp     r11, r11, ROR r11
    cmp     r12, r12, ROR r12

    // loop 4
    cmp     r1, r1, ROR r1
    cmp     r2, r2, ROR r2
    cmp     r3, r3, ROR r3
    cmp     r4, r4, ROR r4
    cmp     r5, r5, ROR r5
    cmp     r6, r6, ROR r6
    cmp     r7, r7, ROR r7
    cmp     r8, r8, ROR r8
    cmp     r9, r9, ROR r9
    cmp     r10, r10, ROR r10
    cmp     r11, r11, ROR r11
    cmp     r12, r12, ROR r12

    // loop 5
    cmp     r1, r1, ROR r1
    cmp     r2, r2, ROR r2
    cmp     r3, r3, ROR r3
    cmp     r4, r4, ROR r4
    cmp     r5, r5, ROR r5
    cmp     r6, r6, ROR r6
    cmp     r7, r7, ROR r7
    cmp     r8, r8, ROR r8
    cmp     r9, r9, ROR r9
    cmp     r10, r10, ROR r10
    cmp     r11, r11, ROR r11
    cmp     r12, r12, ROR r12

    subs    r0, r0, #1
    bne     cmpShftMaxTest_LOOP
    pop     {r4-r11, pc}


_eorImmMinTest:

    push    {r4-r11, lr}

eorImmMinTest_LOOP:

    // loop 1
    eor     r2, r1, #1
    eor     r3, r2, #2
    eor     r4, r3, #3
    eor     r5, r4, #4
    eor     r6, r5, #5
    eor     r7, r6, #6
    eor     r8, r7, #7
    eor     r9, r8, #8
    eor     r10, r9, #9
    eor     r11, r10, #10
    eor     r12, r11, #11
    eor     r1, r12, #12

    // loop 2
    eor     r2, r1, #1
    eor     r3, r2, #2
    eor     r4, r3, #3
    eor     r5, r4, #4
    eor     r6, r5, #5
    eor     r7, r6, #6
    eor     r8, r7, #7
    eor     r9, r8, #8
    eor     r10, r9, #9
    eor     r11, r10, #10
    eor     r12, r11, #11
    eor     r1, r12, #12

    // loop 3
    eor     r2, r1, #1
    eor     r3, r2, #2
    eor     r4, r3, #3
    eor     r5, r4, #4
    eor     r6, r5, #5
    eor     r7, r6, #6
    eor     r8, r7, #7
    eor     r9, r8, #8
    eor     r10, r9, #9
    eor     r11, r10, #10
    eor     r12, r11, #11
    eor     r1, r12, #12

    // loop 4
    eor     r2, r1, #1
    eor     r3, r2, #2
    eor     r4, r3, #3
    eor     r5, r4, #4
    eor     r6, r5, #5
    eor     r7, r6, #6
    eor     r8, r7, #7
    eor     r9, r8, #8
    eor     r10, r9, #9
    eor     r11, r10, #10
    eor     r12, r11, #11
    eor     r1, r12, #12

    // loop 5
    eor     r2, r1, #1
    eor     r3, r2, #2
    eor     r4, r3, #3
    eor     r5, r4, #4
    eor     r6, r5, #5
    eor     r7, r6, #6
    eor     r8, r7, #7
    eor     r9, r8, #8
    eor     r10, r9, #9
    eor     r11, r10, #10
    eor     r12, r11, #11
    eor     r1, r12, #12

    subs    r0, r0, #1
    bne     eorImmMinTest_LOOP
    pop     {r4-r11, pc}

_eorImmMaxTest:

    push    {r4-r11, lr}

eorImmMaxTest_LOOP:

    // loop 1
    eor     r1, r1, #1
    eor     r2, r2, #2
    eor     r3, r3, #3
    eor     r4, r4, #4
    eor     r5, r5, #5
    eor     r6, r6, #6
    eor     r7, r7, #7
    eor     r8, r8, #8
    eor     r9, r9, #9
    eor     r10, r10, #10
    eor     r11, r11, #11
    eor     r12, r12, #12

    // loop 2
    eor     r1, r1, #1
    eor     r2, r2, #2
    eor     r3, r3, #3
    eor     r4, r4, #4
    eor     r5, r5, #5
    eor     r6, r6, #6
    eor     r7, r7, #7
    eor     r8, r8, #8
    eor     r9, r9, #9
    eor     r10, r10, #10
    eor     r11, r11, #11
    eor     r12, r12, #12

    // loop 3
    eor     r1, r1, #1
    eor     r2, r2, #2
    eor     r3, r3, #3
    eor     r4, r4, #4
    eor     r5, r5, #5
    eor     r6, r6, #6
    eor     r7, r7, #7
    eor     r8, r8, #8
    eor     r9, r9, #9
    eor     r10, r10, #10
    eor     r11, r11, #11
    eor     r12, r12, #12

    // loop 4
    eor     r1, r1, #1
    eor     r2, r2, #2
    eor     r3, r3, #3
    eor     r4, r4, #4
    eor     r5, r5, #5
    eor     r6, r6, #6
    eor     r7, r7, #7
    eor     r8, r8, #8
    eor     r9, r9, #9
    eor     r10, r10, #10
    eor     r11, r11, #11
    eor     r12, r12, #12

    // loop 5
    eor     r1, r1, #1
    eor     r2, r2, #2
    eor     r3, r3, #3
    eor     r4, r4, #4
    eor     r5, r5, #5
    eor     r6, r6, #6
    eor     r7, r7, #7
    eor     r8, r8, #8
    eor     r9, r9, #9
    eor     r10, r10, #10
    eor     r11, r11, #11
    eor     r12, r12, #12

    subs    r0, r0, #1
    bne     eorImmMaxTest_LOOP
    pop     {r4-r11, pc}


_eorRegMinTest:

    push    {r4-r11, lr}

eorRegMinTest_LOOP:

    // loop 1
    eor     r2, r2, r1, ROR #1
    eor     r3, r3, r2, ROR #2
    eor     r4, r4, r3, ROR #3
    eor     r5, r5, r4, ROR #4
    eor     r6, r6, r5, ROR #5
    eor     r7, r7, r6, ROR #6
    eor     r8, r8, r7, ROR #7
    eor     r9, r9, r8, ROR #8
    eor     r10, r10, r9, ROR #9
    eor     r11, r11, r10, ROR #10
    eor     r12, r12, r11, ROR #11
    eor     r1, r1, r12, ROR #12

    // loop 2
    eor     r2, r2, r1, ROR #1
    eor     r3, r3, r2, ROR #2
    eor     r4, r4, r3, ROR #3
    eor     r5, r5, r4, ROR #4
    eor     r6, r6, r5, ROR #5
    eor     r7, r7, r6, ROR #6
    eor     r8, r8, r7, ROR #7
    eor     r9, r9, r8, ROR #8
    eor     r10, r10, r9, ROR #9
    eor     r11, r11, r10, ROR #10
    eor     r12, r12, r11, ROR #11
    eor     r1, r1, r12, ROR #12

    // loop 3
    eor     r2, r2, r1, ROR #1
    eor     r3, r3, r2, ROR #2
    eor     r4, r4, r3, ROR #3
    eor     r5, r5, r4, ROR #4
    eor     r6, r6, r5, ROR #5
    eor     r7, r7, r6, ROR #6
    eor     r8, r8, r7, ROR #7
    eor     r9, r9, r8, ROR #8
    eor     r10, r10, r9, ROR #9
    eor     r11, r11, r10, ROR #10
    eor     r12, r12, r11, ROR #11
    eor     r1, r1, r12, ROR #12

    // loop 4
    eor     r2, r2, r1, ROR #1
    eor     r3, r3, r2, ROR #2
    eor     r4, r4, r3, ROR #3
    eor     r5, r5, r4, ROR #4
    eor     r6, r6, r5, ROR #5
    eor     r7, r7, r6, ROR #6
    eor     r8, r8, r7, ROR #7
    eor     r9, r9, r8, ROR #8
    eor     r10, r10, r9, ROR #9
    eor     r11, r11, r10, ROR #10
    eor     r12, r12, r11, ROR #11
    eor     r1, r1, r12, ROR #12

    // loop 5
    eor     r2, r2, r1, ROR #1
    eor     r3, r3, r2, ROR #2
    eor     r4, r4, r3, ROR #3
    eor     r5, r5, r4, ROR #4
    eor     r6, r6, r5, ROR #5
    eor     r7, r7, r6, ROR #6
    eor     r8, r8, r7, ROR #7
    eor     r9, r9, r8, ROR #8
    eor     r10, r10, r9, ROR #9
    eor     r11, r11, r10, ROR #10
    eor     r12, r12, r11, ROR #11
    eor     r1, r1, r12, ROR #12

    subs    r0, r0, #1
    bne     eorRegMinTest_LOOP
    pop     {r4-r11, pc}

_eorRegMaxTest:

    push    {r4-r11, lr}

eorRegMaxTest_LOOP:

    // loop 1
    eor     r1, r1, r1
    eor     r2, r2, r2
    eor     r3, r3, r3
    eor     r4, r4, r4
    eor     r5, r5, r5
    eor     r6, r6, r6
    eor     r7, r7, r7
    eor     r8, r8, r8
    eor     r9, r9, r9
    eor     r10, r10, r10
    eor     r11, r11, r11
    eor     r12, r12, r12

    // loop 2
    eor     r1, r1, r1
    eor     r2, r2, r2
    eor     r3, r3, r3
    eor     r4, r4, r4
    eor     r5, r5, r5
    eor     r6, r6, r6
    eor     r7, r7, r7
    eor     r8, r8, r8
    eor     r9, r9, r9
    eor     r10, r10, r10
    eor     r11, r11, r11
    eor     r12, r12, r12

    // loop 3
    eor     r1, r1, r1
    eor     r2, r2, r2
    eor     r3, r3, r3
    eor     r4, r4, r4
    eor     r5, r5, r5
    eor     r6, r6, r6
    eor     r7, r7, r7
    eor     r8, r8, r8
    eor     r9, r9, r9
    eor     r10, r10, r10
    eor     r11, r11, r11
    eor     r12, r12, r12

    // loop 4
    eor     r1, r1, r1
    eor     r2, r2, r2
    eor     r3, r3, r3
    eor     r4, r4, r4
    eor     r5, r5, r5
    eor     r6, r6, r6
    eor     r7, r7, r7
    eor     r8, r8, r8
    eor     r9, r9, r9
    eor     r10, r10, r10
    eor     r11, r11, r11
    eor     r12, r12, r12

    // loop 5
    eor     r1, r1, r1
    eor     r2, r2, r2
    eor     r3, r3, r3
    eor     r4, r4, r4
    eor     r5, r5, r5
    eor     r6, r6, r6
    eor     r7, r7, r7
    eor     r8, r8, r8
    eor     r9, r9, r9
    eor     r10, r10, r10
    eor     r11, r11, r11
    eor     r12, r12, r12

    subs    r0, r0, #1
    bne     eorRegMaxTest_LOOP
    pop     {r4-r11, pc}

_eorShftMinTest:

    push    {r4-r11, lr}

eorShftMinTest_LOOP:

    // loop 1
    eor     r2, r2, r1, ROR r1
    eor     r3, r3, r2, ROR r2
    eor     r4, r4, r3, ROR r3
    eor     r5, r5, r4, ROR r4
    eor     r6, r6, r5, ROR r5
    eor     r7, r7, r6, ROR r6
    eor     r8, r8, r7, ROR r7
    eor     r9, r9, r8, ROR r8
    eor     r10, r10, r9, ROR r9
    eor     r11, r11, r10, ROR r10
    eor     r12, r12, r11, ROR r11
    eor     r1, r1, r12, ROR r12

    // loop 2
    eor     r2, r2, r1, ROR r1
    eor     r3, r3, r2, ROR r2
    eor     r4, r4, r3, ROR r3
    eor     r5, r5, r4, ROR r4
    eor     r6, r6, r5, ROR r5
    eor     r7, r7, r6, ROR r6
    eor     r8, r8, r7, ROR r7
    eor     r9, r9, r8, ROR r8
    eor     r10, r10, r9, ROR r9
    eor     r11, r11, r10, ROR r10
    eor     r12, r12, r11, ROR r11
    eor     r1, r1, r12, ROR r12

    // loop 3
    eor     r2, r2, r1, ROR r1
    eor     r3, r3, r2, ROR r2
    eor     r4, r4, r3, ROR r3
    eor     r5, r5, r4, ROR r4
    eor     r6, r6, r5, ROR r5
    eor     r7, r7, r6, ROR r6
    eor     r8, r8, r7, ROR r7
    eor     r9, r9, r8, ROR r8
    eor     r10, r10, r9, ROR r9
    eor     r11, r11, r10, ROR r10
    eor     r12, r12, r11, ROR r11
    eor     r1, r1, r12, ROR r12

    // loop 4
    eor     r2, r2, r1, ROR r1
    eor     r3, r3, r2, ROR r2
    eor     r4, r4, r3, ROR r3
    eor     r5, r5, r4, ROR r4
    eor     r6, r6, r5, ROR r5
    eor     r7, r7, r6, ROR r6
    eor     r8, r8, r7, ROR r7
    eor     r9, r9, r8, ROR r8
    eor     r10, r10, r9, ROR r9
    eor     r11, r11, r10, ROR r10
    eor     r12, r12, r11, ROR r11
    eor     r1, r1, r12, ROR r12

    // loop 5
    eor     r2, r2, r1, ROR r1
    eor     r3, r3, r2, ROR r2
    eor     r4, r4, r3, ROR r3
    eor     r5, r5, r4, ROR r4
    eor     r6, r6, r5, ROR r5
    eor     r7, r7, r6, ROR r6
    eor     r8, r8, r7, ROR r7
    eor     r9, r9, r8, ROR r8
    eor     r10, r10, r9, ROR r9
    eor     r11, r11, r10, ROR r10
    eor     r12, r12, r11, ROR r11
    eor     r1, r1, r12, ROR r12

    subs    r0, r0, #1
    bne     eorShftMinTest_LOOP
    pop     {r4-r11, pc}

_eorShftMaxTest:

    push    {r4-r11, lr}

eorShftMaxTest_LOOP:

    // loop 1
    eor     r1, r1, r1, ROR r1
    eor     r2, r2, r2, ROR r2
    eor     r3, r3, r3, ROR r3
    eor     r4, r4, r4, ROR r4
    eor     r5, r5, r5, ROR r5
    eor     r6, r6, r6, ROR r6
    eor     r7, r7, r7, ROR r7
    eor     r8, r8, r8, ROR r8
    eor     r9, r9, r9, ROR r9
    eor     r10, r10, r10, ROR r10
    eor     r11, r11, r11, ROR r11
    eor     r12, r12, r12, ROR r12

    // loop 2
    eor     r1, r1, r1, ROR r1
    eor     r2, r2, r2, ROR r2
    eor     r3, r3, r3, ROR r3
    eor     r4, r4, r4, ROR r4
    eor     r5, r5, r5, ROR r5
    eor     r6, r6, r6, ROR r6
    eor     r7, r7, r7, ROR r7
    eor     r8, r8, r8, ROR r8
    eor     r9, r9, r9, ROR r9
    eor     r10, r10, r10, ROR r10
    eor     r11, r11, r11, ROR r11
    eor     r12, r12, r12, ROR r12

    // loop 3
    eor     r1, r1, r1, ROR r1
    eor     r2, r2, r2, ROR r2
    eor     r3, r3, r3, ROR r3
    eor     r4, r4, r4, ROR r4
    eor     r5, r5, r5, ROR r5
    eor     r6, r6, r6, ROR r6
    eor     r7, r7, r7, ROR r7
    eor     r8, r8, r8, ROR r8
    eor     r9, r9, r9, ROR r9
    eor     r10, r10, r10, ROR r10
    eor     r11, r11, r11, ROR r11
    eor     r12, r12, r12, ROR r12

    // loop 4
    eor     r1, r1, r1, ROR r1
    eor     r2, r2, r2, ROR r2
    eor     r3, r3, r3, ROR r3
    eor     r4, r4, r4, ROR r4
    eor     r5, r5, r5, ROR r5
    eor     r6, r6, r6, ROR r6
    eor     r7, r7, r7, ROR r7
    eor     r8, r8, r8, ROR r8
    eor     r9, r9, r9, ROR r9
    eor     r10, r10, r10, ROR r10
    eor     r11, r11, r11, ROR r11
    eor     r12, r12, r12, ROR r12

    // loop 5
    eor     r1, r1, r1, ROR r1
    eor     r2, r2, r2, ROR r2
    eor     r3, r3, r3, ROR r3
    eor     r4, r4, r4, ROR r4
    eor     r5, r5, r5, ROR r5
    eor     r6, r6, r6, ROR r6
    eor     r7, r7, r7, ROR r7
    eor     r8, r8, r8, ROR r8
    eor     r9, r9, r9, ROR r9
    eor     r10, r10, r10, ROR r10
    eor     r11, r11, r11, ROR r11
    eor     r12, r12, r12, ROR r12

    subs    r0, r0, #1
    bne     eorShftMaxTest_LOOP
    pop     {r4-r11, pc}


_lslImmMinTest:

    push    {r4-r11, lr}

lslImmMinTest_LOOP:

    // loop 1
    lsl     r2, r1, #1
    lsl     r3, r2, #2
    lsl     r4, r3, #3
    lsl     r5, r4, #4
    lsl     r6, r5, #5
    lsl     r7, r6, #6
    lsl     r8, r7, #7
    lsl     r9, r8, #8
    lsl     r10, r9, #9
    lsl     r11, r10, #10
    lsl     r12, r11, #11
    lsl     r1, r12, #12

    // loop 2
    lsl     r2, r1, #1
    lsl     r3, r2, #2
    lsl     r4, r3, #3
    lsl     r5, r4, #4
    lsl     r6, r5, #5
    lsl     r7, r6, #6
    lsl     r8, r7, #7
    lsl     r9, r8, #8
    lsl     r10, r9, #9
    lsl     r11, r10, #10
    lsl     r12, r11, #11
    lsl     r1, r12, #12

    // loop 3
    lsl     r2, r1, #1
    lsl     r3, r2, #2
    lsl     r4, r3, #3
    lsl     r5, r4, #4
    lsl     r6, r5, #5
    lsl     r7, r6, #6
    lsl     r8, r7, #7
    lsl     r9, r8, #8
    lsl     r10, r9, #9
    lsl     r11, r10, #10
    lsl     r12, r11, #11
    lsl     r1, r12, #12

    // loop 4
    lsl     r2, r1, #1
    lsl     r3, r2, #2
    lsl     r4, r3, #3
    lsl     r5, r4, #4
    lsl     r6, r5, #5
    lsl     r7, r6, #6
    lsl     r8, r7, #7
    lsl     r9, r8, #8
    lsl     r10, r9, #9
    lsl     r11, r10, #10
    lsl     r12, r11, #11
    lsl     r1, r12, #12

    // loop 5
    lsl     r2, r1, #1
    lsl     r3, r2, #2
    lsl     r4, r3, #3
    lsl     r5, r4, #4
    lsl     r6, r5, #5
    lsl     r7, r6, #6
    lsl     r8, r7, #7
    lsl     r9, r8, #8
    lsl     r10, r9, #9
    lsl     r11, r10, #10
    lsl     r12, r11, #11
    lsl     r1, r12, #12

    subs    r0, r0, #1
    bne     lslImmMinTest_LOOP
    pop     {r4-r11, pc}

_lslImmMaxTest:

    push    {r4-r11, lr}

lslImmMaxTest_LOOP:

    // loop 1
    lsl     r1, r1, #1
    lsl     r2, r2, #2
    lsl     r3, r3, #3
    lsl     r4, r4, #4
    lsl     r5, r5, #5
    lsl     r6, r6, #6
    lsl     r7, r7, #7
    lsl     r8, r8, #8
    lsl     r9, r9, #9
    lsl     r10, r10, #10
    lsl     r11, r11, #11
    lsl     r12, r12, #12

    // loop 2
    lsl     r1, r1, #1
    lsl     r2, r2, #2
    lsl     r3, r3, #3
    lsl     r4, r4, #4
    lsl     r5, r5, #5
    lsl     r6, r6, #6
    lsl     r7, r7, #7
    lsl     r8, r8, #8
    lsl     r9, r9, #9
    lsl     r10, r10, #10
    lsl     r11, r11, #11
    lsl     r12, r12, #12

    // loop 3
    lsl     r1, r1, #1
    lsl     r2, r2, #2
    lsl     r3, r3, #3
    lsl     r4, r4, #4
    lsl     r5, r5, #5
    lsl     r6, r6, #6
    lsl     r7, r7, #7
    lsl     r8, r8, #8
    lsl     r9, r9, #9
    lsl     r10, r10, #10
    lsl     r11, r11, #11
    lsl     r12, r12, #12

    // loop 4
    lsl     r1, r1, #1
    lsl     r2, r2, #2
    lsl     r3, r3, #3
    lsl     r4, r4, #4
    lsl     r5, r5, #5
    lsl     r6, r6, #6
    lsl     r7, r7, #7
    lsl     r8, r8, #8
    lsl     r9, r9, #9
    lsl     r10, r10, #10
    lsl     r11, r11, #11
    lsl     r12, r12, #12

    // loop 5
    lsl     r1, r1, #1
    lsl     r2, r2, #2
    lsl     r3, r3, #3
    lsl     r4, r4, #4
    lsl     r5, r5, #5
    lsl     r6, r6, #6
    lsl     r7, r7, #7
    lsl     r8, r8, #8
    lsl     r9, r9, #9
    lsl     r10, r10, #10
    lsl     r11, r11, #11
    lsl     r12, r12, #12

    subs    r0, r0, #1
    bne     lslImmMaxTest_LOOP
    pop     {r4-r11, pc}

_lslRegMinTest:

    push    {r4-r11, lr}

lslRegMinTest_LOOP:

    // loop 1
    lsl     r2, r2, r1
    lsl     r3, r3, r2
    lsl     r4, r4, r3
    lsl     r5, r5, r4
    lsl     r6, r6, r5
    lsl     r7, r7, r6
    lsl     r8, r8, r7
    lsl     r9, r9, r8
    lsl     r10, r10, r9
    lsl     r11, r11, r10
    lsl     r12, r12, r11
    lsl     r1, r1, r12

    // loop 2
    lsl     r2, r2, r1
    lsl     r3, r3, r2
    lsl     r4, r4, r3
    lsl     r5, r5, r4
    lsl     r6, r6, r5
    lsl     r7, r7, r6
    lsl     r8, r8, r7
    lsl     r9, r9, r8
    lsl     r10, r10, r9
    lsl     r11, r11, r10
    lsl     r12, r12, r11
    lsl     r1, r1, r12

    // loop 3
    lsl     r2, r2, r1
    lsl     r3, r3, r2
    lsl     r4, r4, r3
    lsl     r5, r5, r4
    lsl     r6, r6, r5
    lsl     r7, r7, r6
    lsl     r8, r8, r7
    lsl     r9, r9, r8
    lsl     r10, r10, r9
    lsl     r11, r11, r10
    lsl     r12, r12, r11
    lsl     r1, r1, r12

    // loop 4
    lsl     r2, r2, r1
    lsl     r3, r3, r2
    lsl     r4, r4, r3
    lsl     r5, r5, r4
    lsl     r6, r6, r5
    lsl     r7, r7, r6
    lsl     r8, r8, r7
    lsl     r9, r9, r8
    lsl     r10, r10, r9
    lsl     r11, r11, r10
    lsl     r12, r12, r11
    lsl     r1, r1, r12

    // loop 5
    lsl     r2, r2, r1
    lsl     r3, r3, r2
    lsl     r4, r4, r3
    lsl     r5, r5, r4
    lsl     r6, r6, r5
    lsl     r7, r7, r6
    lsl     r8, r8, r7
    lsl     r9, r9, r8
    lsl     r10, r10, r9
    lsl     r11, r11, r10
    lsl     r12, r12, r11
    lsl     r1, r1, r12

    subs    r0, r0, #1
    bne     lslRegMinTest_LOOP
    pop     {r4-r11, pc}

_lslRegMaxTest:

    push    {r4-r11, lr}

lslRegMaxTest_LOOP:

    // loop 1
    lsl     r1, r1, r1
    lsl     r2, r2, r2
    lsl     r3, r3, r3
    lsl     r4, r4, r4
    lsl     r5, r5, r5
    lsl     r6, r6, r6
    lsl     r7, r7, r7
    lsl     r8, r8, r8
    lsl     r9, r9, r9
    lsl     r10, r10, r10
    lsl     r11, r11, r11
    lsl     r12, r12, r12

    // loop 2
    lsl     r1, r1, r1
    lsl     r2, r2, r2
    lsl     r3, r3, r3
    lsl     r4, r4, r4
    lsl     r5, r5, r5
    lsl     r6, r6, r6
    lsl     r7, r7, r7
    lsl     r8, r8, r8
    lsl     r9, r9, r9
    lsl     r10, r10, r10
    lsl     r11, r11, r11
    lsl     r12, r12, r12

    // loop 3
    lsl     r1, r1, r1
    lsl     r2, r2, r2
    lsl     r3, r3, r3
    lsl     r4, r4, r4
    lsl     r5, r5, r5
    lsl     r6, r6, r6
    lsl     r7, r7, r7
    lsl     r8, r8, r8
    lsl     r9, r9, r9
    lsl     r10, r10, r10
    lsl     r11, r11, r11
    lsl     r12, r12, r12

    // loop 4
    lsl     r1, r1, r1
    lsl     r2, r2, r2
    lsl     r3, r3, r3
    lsl     r4, r4, r4
    lsl     r5, r5, r5
    lsl     r6, r6, r6
    lsl     r7, r7, r7
    lsl     r8, r8, r8
    lsl     r9, r9, r9
    lsl     r10, r10, r10
    lsl     r11, r11, r11
    lsl     r12, r12, r12

    // loop 5
    lsl     r1, r1, r1
    lsl     r2, r2, r2
    lsl     r3, r3, r3
    lsl     r4, r4, r4
    lsl     r5, r5, r5
    lsl     r6, r6, r6
    lsl     r7, r7, r7
    lsl     r8, r8, r8
    lsl     r9, r9, r9
    lsl     r10, r10, r10
    lsl     r11, r11, r11
    lsl     r12, r12, r12

    subs    r0, r0, #1
    bne     lslRegMaxTest_LOOP
    pop     {r4-r11, pc}


_lsrImmMinTest:

    push    {r4-r11, lr}

lsrImmMinTest_LOOP:

    // loop 1
    lsr     r2, r1, #1
    lsr     r3, r2, #2
    lsr     r4, r3, #3
    lsr     r5, r4, #4
    lsr     r6, r5, #5
    lsr     r7, r6, #6
    lsr     r8, r7, #7
    lsr     r9, r8, #8
    lsr     r10, r9, #9
    lsr     r11, r10, #10
    lsr     r12, r11, #11
    lsr     r1, r12, #12

    // loop 2
    lsr     r2, r1, #1
    lsr     r3, r2, #2
    lsr     r4, r3, #3
    lsr     r5, r4, #4
    lsr     r6, r5, #5
    lsr     r7, r6, #6
    lsr     r8, r7, #7
    lsr     r9, r8, #8
    lsr     r10, r9, #9
    lsr     r11, r10, #10
    lsr     r12, r11, #11
    lsr     r1, r12, #12

    // loop 3
    lsr     r2, r1, #1
    lsr     r3, r2, #2
    lsr     r4, r3, #3
    lsr     r5, r4, #4
    lsr     r6, r5, #5
    lsr     r7, r6, #6
    lsr     r8, r7, #7
    lsr     r9, r8, #8
    lsr     r10, r9, #9
    lsr     r11, r10, #10
    lsr     r12, r11, #11
    lsr     r1, r12, #12

    // loop 4
    lsr     r2, r1, #1
    lsr     r3, r2, #2
    lsr     r4, r3, #3
    lsr     r5, r4, #4
    lsr     r6, r5, #5
    lsr     r7, r6, #6
    lsr     r8, r7, #7
    lsr     r9, r8, #8
    lsr     r10, r9, #9
    lsr     r11, r10, #10
    lsr     r12, r11, #11
    lsr     r1, r12, #12

    // loop 5
    lsr     r2, r1, #1
    lsr     r3, r2, #2
    lsr     r4, r3, #3
    lsr     r5, r4, #4
    lsr     r6, r5, #5
    lsr     r7, r6, #6
    lsr     r8, r7, #7
    lsr     r9, r8, #8
    lsr     r10, r9, #9
    lsr     r11, r10, #10
    lsr     r12, r11, #11
    lsr     r1, r12, #12

    subs    r0, r0, #1
    bne     lsrImmMinTest_LOOP
    pop     {r4-r11, pc}

_lsrImmMaxTest:

    push    {r4-r11, lr}

lsrImmMaxTest_LOOP:

    // loop 1
    lsr     r1, r1, #1
    lsr     r2, r2, #2
    lsr     r3, r3, #3
    lsr     r4, r4, #4
    lsr     r5, r5, #5
    lsr     r6, r6, #6
    lsr     r7, r7, #7
    lsr     r8, r8, #8
    lsr     r9, r9, #9
    lsr     r10, r10, #10
    lsr     r11, r11, #11
    lsr     r12, r12, #12

    // loop 2
    lsr     r1, r1, #1
    lsr     r2, r2, #2
    lsr     r3, r3, #3
    lsr     r4, r4, #4
    lsr     r5, r5, #5
    lsr     r6, r6, #6
    lsr     r7, r7, #7
    lsr     r8, r8, #8
    lsr     r9, r9, #9
    lsr     r10, r10, #10
    lsr     r11, r11, #11
    lsr     r12, r12, #12

    // loop 3
    lsr     r1, r1, #1
    lsr     r2, r2, #2
    lsr     r3, r3, #3
    lsr     r4, r4, #4
    lsr     r5, r5, #5
    lsr     r6, r6, #6
    lsr     r7, r7, #7
    lsr     r8, r8, #8
    lsr     r9, r9, #9
    lsr     r10, r10, #10
    lsr     r11, r11, #11
    lsr     r12, r12, #12

    // loop 4
    lsr     r1, r1, #1
    lsr     r2, r2, #2
    lsr     r3, r3, #3
    lsr     r4, r4, #4
    lsr     r5, r5, #5
    lsr     r6, r6, #6
    lsr     r7, r7, #7
    lsr     r8, r8, #8
    lsr     r9, r9, #9
    lsr     r10, r10, #10
    lsr     r11, r11, #11
    lsr     r12, r12, #12

    // loop 5
    lsr     r1, r1, #1
    lsr     r2, r2, #2
    lsr     r3, r3, #3
    lsr     r4, r4, #4
    lsr     r5, r5, #5
    lsr     r6, r6, #6
    lsr     r7, r7, #7
    lsr     r8, r8, #8
    lsr     r9, r9, #9
    lsr     r10, r10, #10
    lsr     r11, r11, #11
    lsr     r12, r12, #12

    subs    r0, r0, #1
    bne     lsrImmMaxTest_LOOP
    pop     {r4-r11, pc}

_lsrRegMinTest:

    push    {r4-r11, lr}

lsrRegMinTest_LOOP:

    // loop 1
    lsr     r2, r2, r1
    lsr     r3, r3, r2
    lsr     r4, r4, r3
    lsr     r5, r5, r4
    lsr     r6, r6, r5
    lsr     r7, r7, r6
    lsr     r8, r8, r7
    lsr     r9, r9, r8
    lsr     r10, r10, r9
    lsr     r11, r11, r10
    lsr     r12, r12, r11
    lsr     r1, r1, r12

    // loop 2
    lsr     r2, r2, r1
    lsr     r3, r3, r2
    lsr     r4, r4, r3
    lsr     r5, r5, r4
    lsr     r6, r6, r5
    lsr     r7, r7, r6
    lsr     r8, r8, r7
    lsr     r9, r9, r8
    lsr     r10, r10, r9
    lsr     r11, r11, r10
    lsr     r12, r12, r11
    lsr     r1, r1, r12

    // loop 3
    lsr     r2, r2, r1
    lsr     r3, r3, r2
    lsr     r4, r4, r3
    lsr     r5, r5, r4
    lsr     r6, r6, r5
    lsr     r7, r7, r6
    lsr     r8, r8, r7
    lsr     r9, r9, r8
    lsr     r10, r10, r9
    lsr     r11, r11, r10
    lsr     r12, r12, r11
    lsr     r1, r1, r12

    // loop 4
    lsr     r2, r2, r1
    lsr     r3, r3, r2
    lsr     r4, r4, r3
    lsr     r5, r5, r4
    lsr     r6, r6, r5
    lsr     r7, r7, r6
    lsr     r8, r8, r7
    lsr     r9, r9, r8
    lsr     r10, r10, r9
    lsr     r11, r11, r10
    lsr     r12, r12, r11
    lsr     r1, r1, r12

    // loop 5
    lsr     r2, r2, r1
    lsr     r3, r3, r2
    lsr     r4, r4, r3
    lsr     r5, r5, r4
    lsr     r6, r6, r5
    lsr     r7, r7, r6
    lsr     r8, r8, r7
    lsr     r9, r9, r8
    lsr     r10, r10, r9
    lsr     r11, r11, r10
    lsr     r12, r12, r11
    lsr     r1, r1, r12

    subs    r0, r0, #1
    bne     lsrRegMinTest_LOOP
    pop     {r4-r11, pc}

_lsrRegMaxTest:

    push    {r4-r11, lr}

lsrRegMaxTest_LOOP:

    // loop 1
    lsr     r1, r1, r1
    lsr     r2, r2, r2
    lsr     r3, r3, r3
    lsr     r4, r4, r4
    lsr     r5, r5, r5
    lsr     r6, r6, r6
    lsr     r7, r7, r7
    lsr     r8, r8, r8
    lsr     r9, r9, r9
    lsr     r10, r10, r10
    lsr     r11, r11, r11
    lsr     r12, r12, r12

    // loop 2
    lsr     r1, r1, r1
    lsr     r2, r2, r2
    lsr     r3, r3, r3
    lsr     r4, r4, r4
    lsr     r5, r5, r5
    lsr     r6, r6, r6
    lsr     r7, r7, r7
    lsr     r8, r8, r8
    lsr     r9, r9, r9
    lsr     r10, r10, r10
    lsr     r11, r11, r11
    lsr     r12, r12, r12

    // loop 3
    lsr     r1, r1, r1
    lsr     r2, r2, r2
    lsr     r3, r3, r3
    lsr     r4, r4, r4
    lsr     r5, r5, r5
    lsr     r6, r6, r6
    lsr     r7, r7, r7
    lsr     r8, r8, r8
    lsr     r9, r9, r9
    lsr     r10, r10, r10
    lsr     r11, r11, r11
    lsr     r12, r12, r12

    // loop 4
    lsr     r1, r1, r1
    lsr     r2, r2, r2
    lsr     r3, r3, r3
    lsr     r4, r4, r4
    lsr     r5, r5, r5
    lsr     r6, r6, r6
    lsr     r7, r7, r7
    lsr     r8, r8, r8
    lsr     r9, r9, r9
    lsr     r10, r10, r10
    lsr     r11, r11, r11
    lsr     r12, r12, r12

    // loop 5
    lsr     r1, r1, r1
    lsr     r2, r2, r2
    lsr     r3, r3, r3
    lsr     r4, r4, r4
    lsr     r5, r5, r5
    lsr     r6, r6, r6
    lsr     r7, r7, r7
    lsr     r8, r8, r8
    lsr     r9, r9, r9
    lsr     r10, r10, r10
    lsr     r11, r11, r11
    lsr     r12, r12, r12

    subs    r0, r0, #1
    bne     lsrRegMaxTest_LOOP
    pop     {r4-r11, pc}


_mlaMinTest:

    stmfd   sp!, {r4-r11, lr}

mlaMinTest_LOOP:

    // loop 1
    mla     r2, r1, r2, r1
    mla     r3, r2, r3, r2
    mla     r4, r3, r4, r3
    mla     r5, r4, r5, r4
    mla     r6, r5, r6, r5
    mla     r7, r6, r7, r6
    mla     r8, r7, r8, r7
    mla     r9, r8, r9, r8
    mla     r10, r9, r10, r9
    mla     r11, r10, r11, r10
    mla     r12, r11, r12, r11
    mla     r1, r12, r1, r12

    // loop 2
    mla     r2, r1, r2, r1
    mla     r3, r2, r3, r2
    mla     r4, r3, r4, r3
    mla     r5, r4, r5, r4
    mla     r6, r5, r6, r5
    mla     r7, r6, r7, r6
    mla     r8, r7, r8, r7
    mla     r9, r8, r9, r8
    mla     r10, r9, r10, r9
    mla     r11, r10, r11, r10
    mla     r12, r11, r12, r11
    mla     r1, r12, r1, r12

    // loop 3
    mla     r2, r1, r2, r1
    mla     r3, r2, r3, r2
    mla     r4, r3, r4, r3
    mla     r5, r4, r5, r4
    mla     r6, r5, r6, r5
    mla     r7, r6, r7, r6
    mla     r8, r7, r8, r7
    mla     r9, r8, r9, r8
    mla     r10, r9, r10, r9
    mla     r11, r10, r11, r10
    mla     r12, r11, r12, r11
    mla     r1, r12, r1, r12

    // loop 4
    mla     r2, r1, r2, r1
    mla     r3, r2, r3, r2
    mla     r4, r3, r4, r3
    mla     r5, r4, r5, r4
    mla     r6, r5, r6, r5
    mla     r7, r6, r7, r6
    mla     r8, r7, r8, r7
    mla     r9, r8, r9, r8
    mla     r10, r9, r10, r9
    mla     r11, r10, r11, r10
    mla     r12, r11, r12, r11
    mla     r1, r12, r1, r12

    // loop 5
    mla     r2, r1, r2, r1
    mla     r3, r2, r3, r2
    mla     r4, r3, r4, r3
    mla     r5, r4, r5, r4
    mla     r6, r5, r6, r5
    mla     r7, r6, r7, r6
    mla     r8, r7, r8, r7
    mla     r9, r8, r9, r8
    mla     r10, r9, r10, r9
    mla     r11, r10, r11, r10
    mla     r12, r11, r12, r11
    mla     r1, r12, r1, r12

    subs    r0, r0, #1
    bne     mlaMinTest_LOOP
    ldmfd   sp!, {r4-r11, pc}

_mlaMaxTest:

    stmfd   sp!, {r4-r11, lr}

mlaMaxTest_LOOP:

    // loop 1
    mla     r1, r1, r1, r1
    mla     r2, r2, r2, r2
    mla     r3, r3, r3, r3
    mla     r4, r4, r4, r4
    mla     r5, r5, r5, r5
    mla     r6, r6, r6, r6
    mla     r7, r7, r7, r7
    mla     r8, r8, r8, r8
    mla     r9, r9, r9, r9
    mla     r10, r10, r10, r10
    mla     r11, r11, r11, r11
    mla     r12, r12, r12, r12

    // loop 2
    mla     r1, r1, r1, r1
    mla     r2, r2, r2, r2
    mla     r3, r3, r3, r3
    mla     r4, r4, r4, r4
    mla     r5, r5, r5, r5
    mla     r6, r6, r6, r6
    mla     r7, r7, r7, r7
    mla     r8, r8, r8, r8
    mla     r9, r9, r9, r9
    mla     r10, r10, r10, r10
    mla     r11, r11, r11, r11
    mla     r12, r12, r12, r12

    // loop 3
    mla     r1, r1, r1, r1
    mla     r2, r2, r2, r2
    mla     r3, r3, r3, r3
    mla     r4, r4, r4, r4
    mla     r5, r5, r5, r5
    mla     r6, r6, r6, r6
    mla     r7, r7, r7, r7
    mla     r8, r8, r8, r8
    mla     r9, r9, r9, r9
    mla     r10, r10, r10, r10
    mla     r11, r11, r11, r11
    mla     r12, r12, r12, r12

    // loop 4
    mla     r1, r1, r1, r1
    mla     r2, r2, r2, r2
    mla     r3, r3, r3, r3
    mla     r4, r4, r4, r4
    mla     r5, r5, r5, r5
    mla     r6, r6, r6, r6
    mla     r7, r7, r7, r7
    mla     r8, r8, r8, r8
    mla     r9, r9, r9, r9
    mla     r10, r10, r10, r10
    mla     r11, r11, r11, r11
    mla     r12, r12, r12, r12

    // loop 5
    mla     r1, r1, r1, r1
    mla     r2, r2, r2, r2
    mla     r3, r3, r3, r3
    mla     r4, r4, r4, r4
    mla     r5, r5, r5, r5
    mla     r6, r6, r6, r6
    mla     r7, r7, r7, r7
    mla     r8, r8, r8, r8
    mla     r9, r9, r9, r9
    mla     r10, r10, r10, r10
    mla     r11, r11, r11, r11
    mla     r12, r12, r12, r12

    subs    r0, r0, #1
    bne     mlaMaxTest_LOOP
    ldmfd   sp!, {r4-r11, pc}


_mlsMinTest:

    stmfd   sp!, {r4-r11, lr}

mlsMinTest_LOOP:

    // loop 1
    mls     r2, r2, r1, r1
    mls     r3, r3, r2, r2
    mls     r4, r4, r3, r3
    mls     r5, r5, r4, r4
    mls     r6, r6, r5, r5
    mls     r7, r7, r6, r6
    mls     r8, r8, r7, r7
    mls     r9, r9, r8, r8
    mls     r10, r10, r9, r9
    mls     r11, r11, r10, r10
    mls     r12, r12, r11, r11
    mls     r1, r1, r12, r12

    // loop 2
    mls     r2, r2, r1, r1
    mls     r3, r3, r2, r2
    mls     r4, r4, r3, r3
    mls     r5, r5, r4, r4
    mls     r6, r6, r5, r5
    mls     r7, r7, r6, r6
    mls     r8, r8, r7, r7
    mls     r9, r9, r8, r8
    mls     r10, r10, r9, r9
    mls     r11, r11, r10, r10
    mls     r12, r12, r11, r11
    mls     r1, r1, r12, r12

    // loop 3
    mls     r2, r2, r1, r1
    mls     r3, r3, r2, r2
    mls     r4, r4, r3, r3
    mls     r5, r5, r4, r4
    mls     r6, r6, r5, r5
    mls     r7, r7, r6, r6
    mls     r8, r8, r7, r7
    mls     r9, r9, r8, r8
    mls     r10, r10, r9, r9
    mls     r11, r11, r10, r10
    mls     r12, r12, r11, r11
    mls     r1, r1, r12, r12

    // loop 4
    mls     r2, r2, r1, r1
    mls     r3, r3, r2, r2
    mls     r4, r4, r3, r3
    mls     r5, r5, r4, r4
    mls     r6, r6, r5, r5
    mls     r7, r7, r6, r6
    mls     r8, r8, r7, r7
    mls     r9, r9, r8, r8
    mls     r10, r10, r9, r9
    mls     r11, r11, r10, r10
    mls     r12, r12, r11, r11
    mls     r1, r1, r12, r12

    // loop 5
    mls     r2, r2, r1, r1
    mls     r3, r3, r2, r2
    mls     r4, r4, r3, r3
    mls     r5, r5, r4, r4
    mls     r6, r6, r5, r5
    mls     r7, r7, r6, r6
    mls     r8, r8, r7, r7
    mls     r9, r9, r8, r8
    mls     r10, r10, r9, r9
    mls     r11, r11, r10, r10
    mls     r12, r12, r11, r11
    mls     r1, r1, r12, r12

    subs    r0, r0, #1
    bne     mlsMinTest_LOOP
    ldmfd   sp!, {r4-r11, pc}

_mlsMaxTest:

    stmfd   sp!, {r4-r11, lr}

mlsMaxTest_LOOP:

    // loop 1
    mls     r1, r1, r1, r1
    mls     r2, r2, r2, r2
    mls     r3, r3, r3, r3
    mls     r4, r4, r4, r4
    mls     r5, r5, r5, r5
    mls     r6, r6, r6, r6
    mls     r7, r7, r7, r7
    mls     r8, r8, r8, r8
    mls     r9, r9, r9, r9
    mls     r10, r10, r10, r10
    mls     r11, r11, r11, r11
    mls     r12, r12, r12, r12

    // loop 2
    mls     r1, r1, r1, r1
    mls     r2, r2, r2, r2
    mls     r3, r3, r3, r3
    mls     r4, r4, r4, r4
    mls     r5, r5, r5, r5
    mls     r6, r6, r6, r6
    mls     r7, r7, r7, r7
    mls     r8, r8, r8, r8
    mls     r9, r9, r9, r9
    mls     r10, r10, r10, r10
    mls     r11, r11, r11, r11
    mls     r12, r12, r12, r12

    // loop 3
    mls     r1, r1, r1, r1
    mls     r2, r2, r2, r2
    mls     r3, r3, r3, r3
    mls     r4, r4, r4, r4
    mls     r5, r5, r5, r5
    mls     r6, r6, r6, r6
    mls     r7, r7, r7, r7
    mls     r8, r8, r8, r8
    mls     r9, r9, r9, r9
    mls     r10, r10, r10, r10
    mls     r11, r11, r11, r11
    mls     r12, r12, r12, r12

    // loop 4
    mls     r1, r1, r1, r1
    mls     r2, r2, r2, r2
    mls     r3, r3, r3, r3
    mls     r4, r4, r4, r4
    mls     r5, r5, r5, r5
    mls     r6, r6, r6, r6
    mls     r7, r7, r7, r7
    mls     r8, r8, r8, r8
    mls     r9, r9, r9, r9
    mls     r10, r10, r10, r10
    mls     r11, r11, r11, r11
    mls     r12, r12, r12, r12

    // loop 5
    mls     r1, r1, r1, r1
    mls     r2, r2, r2, r2
    mls     r3, r3, r3, r3
    mls     r4, r4, r4, r4
    mls     r5, r5, r5, r5
    mls     r6, r6, r6, r6
    mls     r7, r7, r7, r7
    mls     r8, r8, r8, r8
    mls     r9, r9, r9, r9
    mls     r10, r10, r10, r10
    mls     r11, r11, r11, r11
    mls     r12, r12, r12, r12

    subs    r0, r0, #1
    bne     mlsMaxTest_LOOP
    ldmfd   sp!, {r4-r11, pc}


_movImmMinTest:

    // loop 1
    mov     r1, #1
    mov     r1, #2
    mov     r1, #3
    mov     r1, #4
    mov     r1, #5
    mov     r1, #6
    mov     r1, #7
    mov     r1, #8
    mov     r1, #9
    mov     r1, #10
    mov     r1, #11
    mov     r1, #12

    // loop 2
    mov     r1, #1
    mov     r1, #2
    mov     r1, #3
    mov     r1, #4
    mov     r1, #5
    mov     r1, #6
    mov     r1, #7
    mov     r1, #8
    mov     r1, #9
    mov     r1, #10
    mov     r1, #11
    mov     r1, #12

    // loop 3
    mov     r1, #1
    mov     r1, #2
    mov     r1, #3
    mov     r1, #4
    mov     r1, #5
    mov     r1, #6
    mov     r1, #7
    mov     r1, #8
    mov     r1, #9
    mov     r1, #10
    mov     r1, #11
    mov     r1, #12

    // loop 4
    mov     r1, #1
    mov     r1, #2
    mov     r1, #3
    mov     r1, #4
    mov     r1, #5
    mov     r1, #6
    mov     r1, #7
    mov     r1, #8
    mov     r1, #9
    mov     r1, #10
    mov     r1, #11
    mov     r1, #12

    // loop 5
    mov     r1, #1
    mov     r1, #2
    mov     r1, #3
    mov     r1, #4
    mov     r1, #5
    mov     r1, #6
    mov     r1, #7
    mov     r1, #8
    mov     r1, #9
    mov     r1, #10
    mov     r1, #11
    mov     r1, #12

    subs    r0, r0, #1
    bne     _movImmMinTest
    bx      lr

_movImmMaxTest:

    push    {r4-r11, lr}

movImmMaxTest_LOOP:

    // loop 1
    mov     r1, #1
    mov     r2, #2
    mov     r3, #3
    mov     r4, #4
    mov     r5, #5
    mov     r6, #6
    mov     r7, #7
    mov     r8, #8
    mov     r9, #9
    mov     r10, #10
    mov     r11, #11
    mov     r12, #12

    // loop 2
    mov     r1, #1
    mov     r2, #2
    mov     r3, #3
    mov     r4, #4
    mov     r5, #5
    mov     r6, #6
    mov     r7, #7
    mov     r8, #8
    mov     r9, #9
    mov     r10, #10
    mov     r11, #11
    mov     r12, #12

    // loop 3
    mov     r1, #1
    mov     r2, #2
    mov     r3, #3
    mov     r4, #4
    mov     r5, #5
    mov     r6, #6
    mov     r7, #7
    mov     r8, #8
    mov     r9, #9
    mov     r10, #10
    mov     r11, #11
    mov     r12, #12

    // loop 4
    mov     r1, #1
    mov     r2, #2
    mov     r3, #3
    mov     r4, #4
    mov     r5, #5
    mov     r6, #6
    mov     r7, #7
    mov     r8, #8
    mov     r9, #9
    mov     r10, #10
    mov     r11, #11
    mov     r12, #12

    // loop 5
    mov     r1, #1
    mov     r2, #2
    mov     r3, #3
    mov     r4, #4
    mov     r5, #5
    mov     r6, #6
    mov     r7, #7
    mov     r8, #8
    mov     r9, #9
    mov     r10, #10
    mov     r11, #11
    mov     r12, #12

    subs    r0, r0, #1
    bne     movImmMaxTest_LOOP
    pop     {r4-r11, pc}

_movRegMinTest:

    push    {r4-r11, lr}

movRegMinTest_LOOP:

    // loop 1
    mov     r2, r1, RRX
    mov     r3, r2, RRX
    mov     r4, r3, RRX
    mov     r5, r4, RRX
    mov     r6, r5, RRX
    mov     r7, r6, RRX
    mov     r8, r7, RRX
    mov     r9, r8, RRX
    mov     r10, r9, RRX
    mov     r11, r10, RRX
    mov     r12, r11, RRX
    mov     r1, r12, RRX

    // loop 2
    mov     r2, r1, RRX
    mov     r3, r2, RRX
    mov     r4, r3, RRX
    mov     r5, r4, RRX
    mov     r6, r5, RRX
    mov     r7, r6, RRX
    mov     r8, r7, RRX
    mov     r9, r8, RRX
    mov     r10, r9, RRX
    mov     r11, r10, RRX
    mov     r12, r11, RRX
    mov     r1, r12, RRX

    // loop 3
    mov     r2, r1, RRX
    mov     r3, r2, RRX
    mov     r4, r3, RRX
    mov     r5, r4, RRX
    mov     r6, r5, RRX
    mov     r7, r6, RRX
    mov     r8, r7, RRX
    mov     r9, r8, RRX
    mov     r10, r9, RRX
    mov     r11, r10, RRX
    mov     r12, r11, RRX
    mov     r1, r12, RRX

    // loop 4
    mov     r2, r1, RRX
    mov     r3, r2, RRX
    mov     r4, r3, RRX
    mov     r5, r4, RRX
    mov     r6, r5, RRX
    mov     r7, r6, RRX
    mov     r8, r7, RRX
    mov     r9, r8, RRX
    mov     r10, r9, RRX
    mov     r11, r10, RRX
    mov     r12, r11, RRX
    mov     r1, r12, RRX

    // loop 5
    mov     r2, r1, RRX
    mov     r3, r2, RRX
    mov     r4, r3, RRX
    mov     r5, r4, RRX
    mov     r6, r5, RRX
    mov     r7, r6, RRX
    mov     r8, r7, RRX
    mov     r9, r8, RRX
    mov     r10, r9, RRX
    mov     r11, r10, RRX
    mov     r12, r11, RRX
    mov     r1, r12, RRX

    subs    r0, r0, #1
    bne     movRegMinTest_LOOP
    pop     {r4-r11, pc}


_movRegMaxTest:

    push    {r4-r11, lr}

movRegMaxTest_LOOP:

    // loop 1
    mov     r1, r1
    mov     r2, r2
    mov     r3, r3
    mov     r4, r4
    mov     r5, r5
    mov     r6, r6
    mov     r7, r7
    mov     r8, r8
    mov     r9, r9
    mov     r10, r10
    mov     r11, r11
    mov     r12, r12

    // loop 2
    mov     r1, r1
    mov     r2, r2
    mov     r3, r3
    mov     r4, r4
    mov     r5, r5
    mov     r6, r6
    mov     r7, r7
    mov     r8, r8
    mov     r9, r9
    mov     r10, r10
    mov     r11, r11
    mov     r12, r12

    // loop 3
    mov     r1, r1
    mov     r2, r2
    mov     r3, r3
    mov     r4, r4
    mov     r5, r5
    mov     r6, r6
    mov     r7, r7
    mov     r8, r8
    mov     r9, r9
    mov     r10, r10
    mov     r11, r11
    mov     r12, r12

    // loop 4
    mov     r1, r1
    mov     r2, r2
    mov     r3, r3
    mov     r4, r4
    mov     r5, r5
    mov     r6, r6
    mov     r7, r7
    mov     r8, r8
    mov     r9, r9
    mov     r10, r10
    mov     r11, r11
    mov     r12, r12

    // loop 5
    mov     r1, r1
    mov     r2, r2
    mov     r3, r3
    mov     r4, r4
    mov     r5, r5
    mov     r6, r6
    mov     r7, r7
    mov     r8, r8
    mov     r9, r9
    mov     r10, r10
    mov     r11, r11
    mov     r12, r12

    subs    r0, r0, #1
    bne     movRegMaxTest_LOOP
    pop     {r4-r11, pc}

_movShftMinTest:

    push    {r4-r11, lr}

movShftMinTest_LOOP:

    // loop 1
    mov     r2, r1, LSL r1
    mov     r3, r2, LSL r2
    mov     r4, r3, LSL r3
    mov     r5, r4, LSL r4
    mov     r6, r5, LSL r5
    mov     r7, r6, LSL r6
    mov     r8, r7, LSL r7
    mov     r9, r8, LSL r8
    mov     r10, r9, LSL r9
    mov     r11, r10, LSL r10
    mov     r12, r11, LSL r11
    mov     r1, r12, LSL r12

    // loop 2
    mov     r2, r1, LSL r1
    mov     r3, r2, LSL r2
    mov     r4, r3, LSL r3
    mov     r5, r4, LSL r4
    mov     r6, r5, LSL r5
    mov     r7, r6, LSL r6
    mov     r8, r7, LSL r7
    mov     r9, r8, LSL r8
    mov     r10, r9, LSL r9
    mov     r11, r10, LSL r10
    mov     r12, r11, LSL r11
    mov     r1, r12, LSL r12

    // loop 3
    mov     r2, r1, LSL r1
    mov     r3, r2, LSL r2
    mov     r4, r3, LSL r3
    mov     r5, r4, LSL r4
    mov     r6, r5, LSL r5
    mov     r7, r6, LSL r6
    mov     r8, r7, LSL r7
    mov     r9, r8, LSL r8
    mov     r10, r9, LSL r9
    mov     r11, r10, LSL r10
    mov     r12, r11, LSL r11
    mov     r1, r12, LSL r12

    // loop 4
    mov     r2, r1, LSL r1
    mov     r3, r2, LSL r2
    mov     r4, r3, LSL r3
    mov     r5, r4, LSL r4
    mov     r6, r5, LSL r5
    mov     r7, r6, LSL r6
    mov     r8, r7, LSL r7
    mov     r9, r8, LSL r8
    mov     r10, r9, LSL r9
    mov     r11, r10, LSL r10
    mov     r12, r11, LSL r11
    mov     r1, r12, LSL r12

    // loop 5
    mov     r2, r1, LSL r1
    mov     r3, r2, LSL r2
    mov     r4, r3, LSL r3
    mov     r5, r4, LSL r4
    mov     r6, r5, LSL r5
    mov     r7, r6, LSL r6
    mov     r8, r7, LSL r7
    mov     r9, r8, LSL r8
    mov     r10, r9, LSL r9
    mov     r11, r10, LSL r10
    mov     r12, r11, LSL r11
    mov     r1, r12, LSL r12

    subs    r0, r0, #1
    bne     movShftMinTest_LOOP
    pop     {r4-r11, pc}

_movShftMaxTest:

    push    {r4-r11, lr}

movShftMaxTest_LOOP:

    // loop 1
    mov     r1, r1, LSL r1
    mov     r2, r2, LSL r2
    mov     r3, r3, LSL r3
    mov     r4, r4, LSL r4
    mov     r5, r5, LSL r5
    mov     r6, r6, LSL r6
    mov     r7, r7, LSL r7
    mov     r8, r8, LSL r8
    mov     r9, r9, LSL r9
    mov     r10, r10, LSL r10
    mov     r11, r11, LSL r11
    mov     r12, r12, LSL r12

    // loop 2
    mov     r1, r1, LSL r1
    mov     r2, r2, LSL r2
    mov     r3, r3, LSL r3
    mov     r4, r4, LSL r4
    mov     r5, r5, LSL r5
    mov     r6, r6, LSL r6
    mov     r7, r7, LSL r7
    mov     r8, r8, LSL r8
    mov     r9, r9, LSL r9
    mov     r10, r10, LSL r10
    mov     r11, r11, LSL r11
    mov     r12, r12, LSL r12

    // loop 3
    mov     r1, r1, LSL r1
    mov     r2, r2, LSL r2
    mov     r3, r3, LSL r3
    mov     r4, r4, LSL r4
    mov     r5, r5, LSL r5
    mov     r6, r6, LSL r6
    mov     r7, r7, LSL r7
    mov     r8, r8, LSL r8
    mov     r9, r9, LSL r9
    mov     r10, r10, LSL r10
    mov     r11, r11, LSL r11
    mov     r12, r12, LSL r12

    // loop 4
    mov     r1, r1, LSL r1
    mov     r2, r2, LSL r2
    mov     r3, r3, LSL r3
    mov     r4, r4, LSL r4
    mov     r5, r5, LSL r5
    mov     r6, r6, LSL r6
    mov     r7, r7, LSL r7
    mov     r8, r8, LSL r8
    mov     r9, r9, LSL r9
    mov     r10, r10, LSL r10
    mov     r11, r11, LSL r11
    mov     r12, r12, LSL r12

    // loop 5
    mov     r1, r1, LSL r1
    mov     r2, r2, LSL r2
    mov     r3, r3, LSL r3
    mov     r4, r4, LSL r4
    mov     r5, r5, LSL r5
    mov     r6, r6, LSL r6
    mov     r7, r7, LSL r7
    mov     r8, r8, LSL r8
    mov     r9, r9, LSL r9
    mov     r10, r10, LSL r10
    mov     r11, r11, LSL r11
    mov     r12, r12, LSL r12

    subs    r0, r0, #1
    bne     movShftMaxTest_LOOP
    pop     {r4-r11, pc}


_movtMinTest:

    // loop 1
    movt    r1, #1
    movt    r1, #2
    movt    r1, #3
    movt    r1, #4
    movt    r1, #5
    movt    r1, #6
    movt    r1, #7
    movt    r1, #8
    movt    r1, #9
    movt    r1, #10
    movt    r1, #11
    movt    r1, #12

    // loop 2
    movt    r1, #1
    movt    r1, #2
    movt    r1, #3
    movt    r1, #4
    movt    r1, #5
    movt    r1, #6
    movt    r1, #7
    movt    r1, #8
    movt    r1, #9
    movt    r1, #10
    movt    r1, #11
    movt    r1, #12

    // loop 3
    movt    r1, #1
    movt    r1, #2
    movt    r1, #3
    movt    r1, #4
    movt    r1, #5
    movt    r1, #6
    movt    r1, #7
    movt    r1, #8
    movt    r1, #9
    movt    r1, #10
    movt    r1, #11
    movt    r1, #12

    // loop 4
    movt    r1, #1
    movt    r1, #2
    movt    r1, #3
    movt    r1, #4
    movt    r1, #5
    movt    r1, #6
    movt    r1, #7
    movt    r1, #8
    movt    r1, #9
    movt    r1, #10
    movt    r1, #11
    movt    r1, #12

    // loop 5
    movt    r1, #1
    movt    r1, #2
    movt    r1, #3
    movt    r1, #4
    movt    r1, #5
    movt    r1, #6
    movt    r1, #7
    movt    r1, #8
    movt    r1, #9
    movt    r1, #10
    movt    r1, #11
    movt    r1, #12

    subs    r0, r0, #1
    bne     _movtMinTest
    bx      lr

_movtMaxTest:

    push    {r4-r11, lr}

movtMaxTest_LOOP:

    // loop 1
    movt    r1, #1
    movt    r2, #2
    movt    r3, #3
    movt    r4, #4
    movt    r5, #5
    movt    r6, #6
    movt    r7, #7
    movt    r8, #8
    movt    r9, #9
    movt    r10, #10
    movt    r11, #11
    movt    r12, #12

    // loop 2
    movt    r1, #1
    movt    r2, #2
    movt    r3, #3
    movt    r4, #4
    movt    r5, #5
    movt    r6, #6
    movt    r7, #7
    movt    r8, #8
    movt    r9, #9
    movt    r10, #10
    movt    r11, #11
    movt    r12, #12

    // loop 3
    movt    r1, #1
    movt    r2, #2
    movt    r3, #3
    movt    r4, #4
    movt    r5, #5
    movt    r6, #6
    movt    r7, #7
    movt    r8, #8
    movt    r9, #9
    movt    r10, #10
    movt    r11, #11
    movt    r12, #12

    // loop 4
    movt    r1, #1
    movt    r2, #2
    movt    r3, #3
    movt    r4, #4
    movt    r5, #5
    movt    r6, #6
    movt    r7, #7
    movt    r8, #8
    movt    r9, #9
    movt    r10, #10
    movt    r11, #11
    movt    r12, #12

    // loop 5
    movt    r1, #1
    movt    r2, #2
    movt    r3, #3
    movt    r4, #4
    movt    r5, #5
    movt    r6, #6
    movt    r7, #7
    movt    r8, #8
    movt    r9, #9
    movt    r10, #10
    movt    r11, #11
    movt    r12, #12

    subs    r0, r0, #1
    bne     movtMaxTest_LOOP
    pop     {r4-r11, pc}


_mulMinTest:

    stmfd   sp!, {r4-r11, lr}

mulMinTest_LOOP:

    // loop 1
    mul     r2, r2, r1
    mul     r3, r3, r2
    mul     r4, r4, r3
    mul     r5, r5, r4
    mul     r6, r6, r5
    mul     r7, r7, r6
    mul     r8, r8, r7
    mul     r9, r9, r8
    mul     r10, r10, r9
    mul     r11, r11, r10
    mul     r12, r12, r11
    mul     r1, r1, r12

    // loop 2
    mul     r2, r2, r1
    mul     r3, r3, r2
    mul     r4, r4, r3
    mul     r5, r5, r4
    mul     r6, r6, r5
    mul     r7, r7, r6
    mul     r8, r8, r7
    mul     r9, r9, r8
    mul     r10, r10, r9
    mul     r11, r11, r10
    mul     r12, r12, r11
    mul     r1, r1, r12

    // loop 3
    mul     r2, r2, r1
    mul     r3, r3, r2
    mul     r4, r4, r3
    mul     r5, r5, r4
    mul     r6, r6, r5
    mul     r7, r7, r6
    mul     r8, r8, r7
    mul     r9, r9, r8
    mul     r10, r10, r9
    mul     r11, r11, r10
    mul     r12, r12, r11
    mul     r1, r1, r12

    // loop 4
    mul     r2, r2, r1
    mul     r3, r3, r2
    mul     r4, r4, r3
    mul     r5, r5, r4
    mul     r6, r6, r5
    mul     r7, r7, r6
    mul     r8, r8, r7
    mul     r9, r9, r8
    mul     r10, r10, r9
    mul     r11, r11, r10
    mul     r12, r12, r11
    mul     r1, r1, r12

    // loop 5
    mul     r2, r2, r1
    mul     r3, r3, r2
    mul     r4, r4, r3
    mul     r5, r5, r4
    mul     r6, r6, r5
    mul     r7, r7, r6
    mul     r8, r8, r7
    mul     r9, r9, r8
    mul     r10, r10, r9
    mul     r11, r11, r10
    mul     r12, r12, r11
    mul     r1, r1, r12

    subs    r0, r0, #1
    bne     mulMinTest_LOOP
    ldmfd   sp!, {r4-r11, pc}

_mulMaxTest:

    stmfd   sp!, {r4-r11, lr}

mulMaxTest_LOOP:

    // loop 1
    mul     r1, r1, r1
    mul     r2, r2, r2
    mul     r3, r3, r3
    mul     r4, r4, r4
    mul     r5, r5, r5
    mul     r6, r6, r6
    mul     r7, r7, r7
    mul     r8, r8, r8
    mul     r9, r9, r9
    mul     r10, r10, r10
    mul     r11, r11, r11
    mul     r12, r12, r12

    // loop 2
    mul     r1, r1, r1
    mul     r2, r2, r2
    mul     r3, r3, r3
    mul     r4, r4, r4
    mul     r5, r5, r5
    mul     r6, r6, r6
    mul     r7, r7, r7
    mul     r8, r8, r8
    mul     r9, r9, r9
    mul     r10, r10, r10
    mul     r11, r11, r11
    mul     r12, r12, r12

    // loop 3
    mul     r1, r1, r1
    mul     r2, r2, r2
    mul     r3, r3, r3
    mul     r4, r4, r4
    mul     r5, r5, r5
    mul     r6, r6, r6
    mul     r7, r7, r7
    mul     r8, r8, r8
    mul     r9, r9, r9
    mul     r10, r10, r10
    mul     r11, r11, r11
    mul     r12, r12, r12

    // loop 4
    mul     r1, r1, r1
    mul     r2, r2, r2
    mul     r3, r3, r3
    mul     r4, r4, r4
    mul     r5, r5, r5
    mul     r6, r6, r6
    mul     r7, r7, r7
    mul     r8, r8, r8
    mul     r9, r9, r9
    mul     r10, r10, r10
    mul     r11, r11, r11
    mul     r12, r12, r12

    // loop 5
    mul     r1, r1, r1
    mul     r2, r2, r2
    mul     r3, r3, r3
    mul     r4, r4, r4
    mul     r5, r5, r5
    mul     r6, r6, r6
    mul     r7, r7, r7
    mul     r8, r8, r8
    mul     r9, r9, r9
    mul     r10, r10, r10
    mul     r11, r11, r11
    mul     r12, r12, r12

    subs    r0, r0, #1
    bne     mulMaxTest_LOOP
    ldmfd   sp!, {r4-r11, pc}


_mvnImmMinTest:

    // loop 1
    mvn     r1, #1
    mvn     r1, #2
    mvn     r1, #3
    mvn     r1, #4
    mvn     r1, #5
    mvn     r1, #6
    mvn     r1, #7
    mvn     r1, #8
    mvn     r1, #9
    mvn     r1, #10
    mvn     r1, #11
    mvn     r1, #12

    // loop 2
    mvn     r1, #1
    mvn     r1, #2
    mvn     r1, #3
    mvn     r1, #4
    mvn     r1, #5
    mvn     r1, #6
    mvn     r1, #7
    mvn     r1, #8
    mvn     r1, #9
    mvn     r1, #10
    mvn     r1, #11
    mvn     r1, #12

    // loop 3
    mvn     r1, #1
    mvn     r1, #2
    mvn     r1, #3
    mvn     r1, #4
    mvn     r1, #5
    mvn     r1, #6
    mvn     r1, #7
    mvn     r1, #8
    mvn     r1, #9
    mvn     r1, #10
    mvn     r1, #11
    mvn     r1, #12

    // loop 4
    mvn     r1, #1
    mvn     r1, #2
    mvn     r1, #3
    mvn     r1, #4
    mvn     r1, #5
    mvn     r1, #6
    mvn     r1, #7
    mvn     r1, #8
    mvn     r1, #9
    mvn     r1, #10
    mvn     r1, #11
    mvn     r1, #12

    // loop 5
    mvn     r1, #1
    mvn     r1, #2
    mvn     r1, #3
    mvn     r1, #4
    mvn     r1, #5
    mvn     r1, #6
    mvn     r1, #7
    mvn     r1, #8
    mvn     r1, #9
    mvn     r1, #10
    mvn     r1, #11
    mvn     r1, #12

    subs    r0, r0, #1
    bne     _mvnImmMinTest
    bx      lr

_mvnImmMaxTest:

    push    {r4-r11, lr}

mvnImmMaxTest_LOOP:

    // loop 1
    mvn     r1, #1
    mvn     r2, #2
    mvn     r3, #3
    mvn     r4, #4
    mvn     r5, #5
    mvn     r6, #6
    mvn     r7, #7
    mvn     r8, #8
    mvn     r9, #9
    mvn     r10, #10
    mvn     r11, #11
    mvn     r12, #12

    // loop 2
    mvn     r1, #1
    mvn     r2, #2
    mvn     r3, #3
    mvn     r4, #4
    mvn     r5, #5
    mvn     r6, #6
    mvn     r7, #7
    mvn     r8, #8
    mvn     r9, #9
    mvn     r10, #10
    mvn     r11, #11
    mvn     r12, #12

    // loop 3
    mvn     r1, #1
    mvn     r2, #2
    mvn     r3, #3
    mvn     r4, #4
    mvn     r5, #5
    mvn     r6, #6
    mvn     r7, #7
    mvn     r8, #8
    mvn     r9, #9
    mvn     r10, #10
    mvn     r11, #11
    mvn     r12, #12

    // loop 4
    mvn     r1, #1
    mvn     r2, #2
    mvn     r3, #3
    mvn     r4, #4
    mvn     r5, #5
    mvn     r6, #6
    mvn     r7, #7
    mvn     r8, #8
    mvn     r9, #9
    mvn     r10, #10
    mvn     r11, #11
    mvn     r12, #12

    // loop 5
    mvn     r1, #1
    mvn     r2, #2
    mvn     r3, #3
    mvn     r4, #4
    mvn     r5, #5
    mvn     r6, #6
    mvn     r7, #7
    mvn     r8, #8
    mvn     r9, #9
    mvn     r10, #10
    mvn     r11, #11
    mvn     r12, #12

    subs    r0, r0, #1
    bne     mvnImmMaxTest_LOOP
    pop     {r4-r11, pc}

_mvnRegMinTest:

    push    {r4-r11, lr}

mvnRegMinTest_LOOP:

    // loop 1
    mvn     r2, r1, ROR #1
    mvn     r3, r2, ROR #2
    mvn     r4, r3, ROR #3
    mvn     r5, r4, ROR #4
    mvn     r6, r5, ROR #5
    mvn     r7, r6, ROR #6
    mvn     r8, r7, ROR #7
    mvn     r9, r8, ROR #8
    mvn     r10, r9, ROR #9
    mvn     r11, r10, ROR #10
    mvn     r12, r11, ROR #11
    mvn     r1, r12, ROR #12

    // loop 2
    mvn     r2, r1, ROR #1
    mvn     r3, r2, ROR #2
    mvn     r4, r3, ROR #3
    mvn     r5, r4, ROR #4
    mvn     r6, r5, ROR #5
    mvn     r7, r6, ROR #6
    mvn     r8, r7, ROR #7
    mvn     r9, r8, ROR #8
    mvn     r10, r9, ROR #9
    mvn     r11, r10, ROR #10
    mvn     r12, r11, ROR #11
    mvn     r1, r12, ROR #12

    // loop 3
    mvn     r2, r1, ROR #1
    mvn     r3, r2, ROR #2
    mvn     r4, r3, ROR #3
    mvn     r5, r4, ROR #4
    mvn     r6, r5, ROR #5
    mvn     r7, r6, ROR #6
    mvn     r8, r7, ROR #7
    mvn     r9, r8, ROR #8
    mvn     r10, r9, ROR #9
    mvn     r11, r10, ROR #10
    mvn     r12, r11, ROR #11
    mvn     r1, r12, ROR #12

    // loop 4
    mvn     r2, r1, ROR #1
    mvn     r3, r2, ROR #2
    mvn     r4, r3, ROR #3
    mvn     r5, r4, ROR #4
    mvn     r6, r5, ROR #5
    mvn     r7, r6, ROR #6
    mvn     r8, r7, ROR #7
    mvn     r9, r8, ROR #8
    mvn     r10, r9, ROR #9
    mvn     r11, r10, ROR #10
    mvn     r12, r11, ROR #11
    mvn     r1, r12, ROR #12

    // loop 5
    mvn     r2, r1, ROR #1
    mvn     r3, r2, ROR #2
    mvn     r4, r3, ROR #3
    mvn     r5, r4, ROR #4
    mvn     r6, r5, ROR #5
    mvn     r7, r6, ROR #6
    mvn     r8, r7, ROR #7
    mvn     r9, r8, ROR #8
    mvn     r10, r9, ROR #9
    mvn     r11, r10, ROR #10
    mvn     r12, r11, ROR #11
    mvn     r1, r12, ROR #12

    subs    r0, r0, #1
    bne     mvnRegMinTest_LOOP
    pop     {r4-r11, pc}

_mvnRegMaxTest:

    push    {r4-r11, lr}

mvnRegMaxTest_LOOP:

    // loop 1
    mvn     r1, r1
    mvn     r2, r2
    mvn     r3, r3
    mvn     r4, r4
    mvn     r5, r5
    mvn     r6, r6
    mvn     r7, r7
    mvn     r8, r8
    mvn     r9, r9
    mvn     r10, r10
    mvn     r11, r11
    mvn     r12, r12

    // loop 2
    mvn     r1, r1
    mvn     r2, r2
    mvn     r3, r3
    mvn     r4, r4
    mvn     r5, r5
    mvn     r6, r6
    mvn     r7, r7
    mvn     r8, r8
    mvn     r9, r9
    mvn     r10, r10
    mvn     r11, r11
    mvn     r12, r12

    // loop 3
    mvn     r1, r1
    mvn     r2, r2
    mvn     r3, r3
    mvn     r4, r4
    mvn     r5, r5
    mvn     r6, r6
    mvn     r7, r7
    mvn     r8, r8
    mvn     r9, r9
    mvn     r10, r10
    mvn     r11, r11
    mvn     r12, r12

    // loop 4
    mvn     r1, r1
    mvn     r2, r2
    mvn     r3, r3
    mvn     r4, r4
    mvn     r5, r5
    mvn     r6, r6
    mvn     r7, r7
    mvn     r8, r8
    mvn     r9, r9
    mvn     r10, r10
    mvn     r11, r11
    mvn     r12, r12

    // loop 5
    mvn     r1, r1
    mvn     r2, r2
    mvn     r3, r3
    mvn     r4, r4
    mvn     r5, r5
    mvn     r6, r6
    mvn     r7, r7
    mvn     r8, r8
    mvn     r9, r9
    mvn     r10, r10
    mvn     r11, r11
    mvn     r12, r12

    subs    r0, r0, #1
    bne     mvnRegMaxTest_LOOP
    pop     {r4-r11, pc}

_mvnShftMinTest:

    push    {r4-r11, lr}

mvnShftMinTest_LOOP:

    // loop 1
    mvn     r2, r1, ROR r1
    mvn     r3, r2, ROR r2
    mvn     r4, r3, ROR r3
    mvn     r5, r4, ROR r4
    mvn     r6, r5, ROR r5
    mvn     r7, r6, ROR r6
    mvn     r8, r7, ROR r7
    mvn     r9, r8, ROR r8
    mvn     r10, r9, ROR r9
    mvn     r11, r10, ROR r10
    mvn     r12, r11, ROR r11
    mvn     r1, r12, ROR r12

    // loop 2
    mvn     r2, r1, ROR r1
    mvn     r3, r2, ROR r2
    mvn     r4, r3, ROR r3
    mvn     r5, r4, ROR r4
    mvn     r6, r5, ROR r5
    mvn     r7, r6, ROR r6
    mvn     r8, r7, ROR r7
    mvn     r9, r8, ROR r8
    mvn     r10, r9, ROR r9
    mvn     r11, r10, ROR r10
    mvn     r12, r11, ROR r11
    mvn     r1, r12, ROR r12

    // loop 3
    mvn     r2, r1, ROR r1
    mvn     r3, r2, ROR r2
    mvn     r4, r3, ROR r3
    mvn     r5, r4, ROR r4
    mvn     r6, r5, ROR r5
    mvn     r7, r6, ROR r6
    mvn     r8, r7, ROR r7
    mvn     r9, r8, ROR r8
    mvn     r10, r9, ROR r9
    mvn     r11, r10, ROR r10
    mvn     r12, r11, ROR r11
    mvn     r1, r12, ROR r12

    // loop 4
    mvn     r2, r1, ROR r1
    mvn     r3, r2, ROR r2
    mvn     r4, r3, ROR r3
    mvn     r5, r4, ROR r4
    mvn     r6, r5, ROR r5
    mvn     r7, r6, ROR r6
    mvn     r8, r7, ROR r7
    mvn     r9, r8, ROR r8
    mvn     r10, r9, ROR r9
    mvn     r11, r10, ROR r10
    mvn     r12, r11, ROR r11
    mvn     r1, r12, ROR r12

    // loop 5
    mvn     r2, r1, ROR r1
    mvn     r3, r2, ROR r2
    mvn     r4, r3, ROR r3
    mvn     r5, r4, ROR r4
    mvn     r6, r5, ROR r5
    mvn     r7, r6, ROR r6
    mvn     r8, r7, ROR r7
    mvn     r9, r8, ROR r8
    mvn     r10, r9, ROR r9
    mvn     r11, r10, ROR r10
    mvn     r12, r11, ROR r11
    mvn     r1, r12, ROR r12

    subs    r0, r0, #1
    bne     mvnShftMinTest_LOOP
    pop     {r4-r11, pc}

_mvnShftMaxTest:

    push    {r4-r11, lr}

mvnShftMaxTest_LOOP:

    // loop 1
    mvn     r1, r1, ROR r1
    mvn     r2, r2, ROR r2
    mvn     r3, r3, ROR r3
    mvn     r4, r4, ROR r4
    mvn     r5, r5, ROR r5
    mvn     r6, r6, ROR r6
    mvn     r7, r7, ROR r7
    mvn     r8, r8, ROR r8
    mvn     r9, r9, ROR r9
    mvn     r10, r10, ROR r10
    mvn     r11, r11, ROR r11
    mvn     r12, r12, ROR r12

    // loop 2
    mvn     r1, r1, ROR r1
    mvn     r2, r2, ROR r2
    mvn     r3, r3, ROR r3
    mvn     r4, r4, ROR r4
    mvn     r5, r5, ROR r5
    mvn     r6, r6, ROR r6
    mvn     r7, r7, ROR r7
    mvn     r8, r8, ROR r8
    mvn     r9, r9, ROR r9
    mvn     r10, r10, ROR r10
    mvn     r11, r11, ROR r11
    mvn     r12, r12, ROR r12

    // loop 3
    mvn     r1, r1, ROR r1
    mvn     r2, r2, ROR r2
    mvn     r3, r3, ROR r3
    mvn     r4, r4, ROR r4
    mvn     r5, r5, ROR r5
    mvn     r6, r6, ROR r6
    mvn     r7, r7, ROR r7
    mvn     r8, r8, ROR r8
    mvn     r9, r9, ROR r9
    mvn     r10, r10, ROR r10
    mvn     r11, r11, ROR r11
    mvn     r12, r12, ROR r12

    // loop 4
    mvn     r1, r1, ROR r1
    mvn     r2, r2, ROR r2
    mvn     r3, r3, ROR r3
    mvn     r4, r4, ROR r4
    mvn     r5, r5, ROR r5
    mvn     r6, r6, ROR r6
    mvn     r7, r7, ROR r7
    mvn     r8, r8, ROR r8
    mvn     r9, r9, ROR r9
    mvn     r10, r10, ROR r10
    mvn     r11, r11, ROR r11
    mvn     r12, r12, ROR r12

    // loop 5
    mvn     r1, r1, ROR r1
    mvn     r2, r2, ROR r2
    mvn     r3, r3, ROR r3
    mvn     r4, r4, ROR r4
    mvn     r5, r5, ROR r5
    mvn     r6, r6, ROR r6
    mvn     r7, r7, ROR r7
    mvn     r8, r8, ROR r8
    mvn     r9, r9, ROR r9
    mvn     r10, r10, ROR r10
    mvn     r11, r11, ROR r11
    mvn     r12, r12, ROR r12

    subs    r0, r0, #1
    bne     mvnShftMaxTest_LOOP
    pop     {r4-r11, pc}


.thumb
.thumb_func
_ornImmMinTest:

    push    {r4-r11, lr}

ornImmMinTest_LOOP:

    // loop 1
    orn     r2, r1, #1
    orn     r3, r2, #2
    orn     r4, r3, #3
    orn     r5, r4, #4
    orn     r6, r5, #5
    orn     r7, r6, #6
    orn     r8, r7, #7
    orn     r9, r8, #8
    orn     r10, r9, #9
    orn     r11, r10, #10
    orn     r12, r11, #11
    orn     r1, r12, #12

    // loop 2
    orn     r2, r1, #1
    orn     r3, r2, #2
    orn     r4, r3, #3
    orn     r5, r4, #4
    orn     r6, r5, #5
    orn     r7, r6, #6
    orn     r8, r7, #7
    orn     r9, r8, #8
    orn     r10, r9, #9
    orn     r11, r10, #10
    orn     r12, r11, #11
    orn     r1, r12, #12

    // loop 3
    orn     r2, r1, #1
    orn     r3, r2, #2
    orn     r4, r3, #3
    orn     r5, r4, #4
    orn     r6, r5, #5
    orn     r7, r6, #6
    orn     r8, r7, #7
    orn     r9, r8, #8
    orn     r10, r9, #9
    orn     r11, r10, #10
    orn     r12, r11, #11
    orn     r1, r12, #12

    // loop 4
    orn     r2, r1, #1
    orn     r3, r2, #2
    orn     r4, r3, #3
    orn     r5, r4, #4
    orn     r6, r5, #5
    orn     r7, r6, #6
    orn     r8, r7, #7
    orn     r9, r8, #8
    orn     r10, r9, #9
    orn     r11, r10, #10
    orn     r12, r11, #11
    orn     r1, r12, #12

    // loop 5
    orn     r2, r1, #1
    orn     r3, r2, #2
    orn     r4, r3, #3
    orn     r5, r4, #4
    orn     r6, r5, #5
    orn     r7, r6, #6
    orn     r8, r7, #7
    orn     r9, r8, #8
    orn     r10, r9, #9
    orn     r11, r10, #10
    orn     r12, r11, #11
    orn     r1, r12, #12

    subs     r0, r0, #1
    bne     ornImmMinTest_LOOP
    pop     {r4-r11, pc}


.thumb_func
_ornImmMaxTest:

    push    {r4-r11, lr}

ornImmMaxTest_LOOP:

    // loop 1
    orn     r1, r1, #1
    orn     r2, r2, #2
    orn     r3, r3, #3
    orn     r4, r4, #4
    orn     r5, r5, #5
    orn     r6, r6, #6
    orn     r7, r7, #7
    orn     r8, r8, #8
    orn     r9, r9, #9
    orn     r10, r10, #10
    orn     r11, r11, #11
    orn     r12, r12, #12

    // loop 2
    orn     r1, r1, #1
    orn     r2, r2, #2
    orn     r3, r3, #3
    orn     r4, r4, #4
    orn     r5, r5, #5
    orn     r6, r6, #6
    orn     r7, r7, #7
    orn     r8, r8, #8
    orn     r9, r9, #9
    orn     r10, r10, #10
    orn     r11, r11, #11
    orn     r12, r12, #12

    // loop 3
    orn     r1, r1, #1
    orn     r2, r2, #2
    orn     r3, r3, #3
    orn     r4, r4, #4
    orn     r5, r5, #5
    orn     r6, r6, #6
    orn     r7, r7, #7
    orn     r8, r8, #8
    orn     r9, r9, #9
    orn     r10, r10, #10
    orn     r11, r11, #11
    orn     r12, r12, #12

    // loop 4
    orn     r1, r1, #1
    orn     r2, r2, #2
    orn     r3, r3, #3
    orn     r4, r4, #4
    orn     r5, r5, #5
    orn     r6, r6, #6
    orn     r7, r7, #7
    orn     r8, r8, #8
    orn     r9, r9, #9
    orn     r10, r10, #10
    orn     r11, r11, #11
    orn     r12, r12, #12

    // loop 5
    orn     r1, r1, #1
    orn     r2, r2, #2
    orn     r3, r3, #3
    orn     r4, r4, #4
    orn     r5, r5, #5
    orn     r6, r6, #6
    orn     r7, r7, #7
    orn     r8, r8, #8
    orn     r9, r9, #9
    orn     r10, r10, #10
    orn     r11, r11, #11
    orn     r12, r12, #12

    subs    r0, r0, #1
    bne     ornImmMaxTest_LOOP
    pop     {r4-r11, pc}


.thumb_func
_ornRegMinTest:

    push    {r4-r11, lr}

ornRegMinTest_LOOP:

    // loop 1
    orn     r2, r1, ROR #1
    orn     r3, r2, ROR #2
    orn     r4, r3, ROR #3
    orn     r5, r4, ROR #4
    orn     r6, r5, ROR #5
    orn     r7, r6, ROR #6
    orn     r8, r7, ROR #7
    orn     r9, r8, ROR #8
    orn     r10, r9, ROR #9
    orn     r11, r10, ROR #10
    orn     r12, r11, ROR #11
    orn     r1, r12, ROR #12

    // loop 2
    orn     r2, r1, ROR #1
    orn     r3, r2, ROR #2
    orn     r4, r3, ROR #3
    orn     r5, r4, ROR #4
    orn     r6, r5, ROR #5
    orn     r7, r6, ROR #6
    orn     r8, r7, ROR #7
    orn     r9, r8, ROR #8
    orn     r10, r9, ROR #9
    orn     r11, r10, ROR #10
    orn     r12, r11, ROR #11
    orn     r1, r12, ROR #12

    // loop 3
    orn     r2, r1, ROR #1
    orn     r3, r2, ROR #2
    orn     r4, r3, ROR #3
    orn     r5, r4, ROR #4
    orn     r6, r5, ROR #5
    orn     r7, r6, ROR #6
    orn     r8, r7, ROR #7
    orn     r9, r8, ROR #8
    orn     r10, r9, ROR #9
    orn     r11, r10, ROR #10
    orn     r12, r11, ROR #11
    orn     r1, r12, ROR #12

    // loop 4
    orn     r2, r1, ROR #1
    orn     r3, r2, ROR #2
    orn     r4, r3, ROR #3
    orn     r5, r4, ROR #4
    orn     r6, r5, ROR #5
    orn     r7, r6, ROR #6
    orn     r8, r7, ROR #7
    orn     r9, r8, ROR #8
    orn     r10, r9, ROR #9
    orn     r11, r10, ROR #10
    orn     r12, r11, ROR #11
    orn     r1, r12, ROR #12

    // loop 5
    orn     r2, r1, ROR #1
    orn     r3, r2, ROR #2
    orn     r4, r3, ROR #3
    orn     r5, r4, ROR #4
    orn     r6, r5, ROR #5
    orn     r7, r6, ROR #6
    orn     r8, r7, ROR #7
    orn     r9, r8, ROR #8
    orn     r10, r9, ROR #9
    orn     r11, r10, ROR #10
    orn     r12, r11, ROR #11
    orn     r1, r12, ROR #12

    subs    r0, r0, #1
    bne     ornRegMinTest_LOOP
    pop     {r4-r11, pc}


.thumb_func
_ornRegMaxTest:

    push    {r4-r11, lr}

ornRegMaxTest_LOOP:

    // loop 1
    orn     r1, r1, r1
    orn     r2, r2, r2
    orn     r3, r3, r3
    orn     r4, r4, r4
    orn     r5, r5, r5
    orn     r6, r6, r6
    orn     r7, r7, r7
    orn     r8, r8, r8
    orn     r9, r9, r9
    orn     r10, r10, r10
    orn     r11, r11, r11
    orn     r12, r12, r12

    // loop 2
    orn     r1, r1, r1
    orn     r2, r2, r2
    orn     r3, r3, r3
    orn     r4, r4, r4
    orn     r5, r5, r5
    orn     r6, r6, r6
    orn     r7, r7, r7
    orn     r8, r8, r8
    orn     r9, r9, r9
    orn     r10, r10, r10
    orn     r11, r11, r11
    orn     r12, r12, r12

    // loop 3
    orn     r1, r1, r1
    orn     r2, r2, r2
    orn     r3, r3, r3
    orn     r4, r4, r4
    orn     r5, r5, r5
    orn     r6, r6, r6
    orn     r7, r7, r7
    orn     r8, r8, r8
    orn     r9, r9, r9
    orn     r10, r10, r10
    orn     r11, r11, r11
    orn     r12, r12, r12

    // loop 4
    orn     r1, r1, r1
    orn     r2, r2, r2
    orn     r3, r3, r3
    orn     r4, r4, r4
    orn     r5, r5, r5
    orn     r6, r6, r6
    orn     r7, r7, r7
    orn     r8, r8, r8
    orn     r9, r9, r9
    orn     r10, r10, r10
    orn     r11, r11, r11
    orn     r12, r12, r12

    // loop 5
    orn     r1, r1, r1
    orn     r2, r2, r2
    orn     r3, r3, r3
    orn     r4, r4, r4
    orn     r5, r5, r5
    orn     r6, r6, r6
    orn     r7, r7, r7
    orn     r8, r8, r8
    orn     r9, r9, r9
    orn     r10, r10, r10
    orn     r11, r11, r11
    orn     r12, r12, r12

    subs    r0, r0, #1
    bne     ornRegMaxTest_LOOP
    pop     {r4-r11, pc}


.arm

_orrImmMinTest:

    push    {r4-r11, lr}

orrImmMinTest_LOOP:

    // loop 1
    orr     r2, r1, #1
    orr     r3, r2, #2
    orr     r4, r3, #3
    orr     r5, r4, #4
    orr     r6, r5, #5
    orr     r7, r6, #6
    orr     r8, r7, #7
    orr     r9, r8, #8
    orr     r10, r9, #9
    orr     r11, r10, #10
    orr     r12, r11, #11
    orr     r1, r12, #12

    // loop 2
    orr     r2, r1, #1
    orr     r3, r2, #2
    orr     r4, r3, #3
    orr     r5, r4, #4
    orr     r6, r5, #5
    orr     r7, r6, #6
    orr     r8, r7, #7
    orr     r9, r8, #8
    orr     r10, r9, #9
    orr     r11, r10, #10
    orr     r12, r11, #11
    orr     r1, r12, #12

    // loop 3
    orr     r2, r1, #1
    orr     r3, r2, #2
    orr     r4, r3, #3
    orr     r5, r4, #4
    orr     r6, r5, #5
    orr     r7, r6, #6
    orr     r8, r7, #7
    orr     r9, r8, #8
    orr     r10, r9, #9
    orr     r11, r10, #10
    orr     r12, r11, #11
    orr     r1, r12, #12

    // loop 4
    orr     r2, r1, #1
    orr     r3, r2, #2
    orr     r4, r3, #3
    orr     r5, r4, #4
    orr     r6, r5, #5
    orr     r7, r6, #6
    orr     r8, r7, #7
    orr     r9, r8, #8
    orr     r10, r9, #9
    orr     r11, r10, #10
    orr     r12, r11, #11
    orr     r1, r12, #12

    // loop 5
    orr     r2, r1, #1
    orr     r3, r2, #2
    orr     r4, r3, #3
    orr     r5, r4, #4
    orr     r6, r5, #5
    orr     r7, r6, #6
    orr     r8, r7, #7
    orr     r9, r8, #8
    orr     r10, r9, #9
    orr     r11, r10, #10
    orr     r12, r11, #11
    orr     r1, r12, #12

    subs    r0, r0, #1
    bne     orrImmMinTest_LOOP
    pop     {r4-r11, pc}

_orrImmMaxTest:

    push    {r4-r11, lr}

orrImmMaxTest_LOOP:

    // loop 1
    orr     r1, r1, #1
    orr     r2, r2, #2
    orr     r3, r3, #3
    orr     r4, r4, #4
    orr     r5, r5, #5
    orr     r6, r6, #6
    orr     r7, r7, #7
    orr     r8, r8, #8
    orr     r9, r9, #9
    orr     r10, r10, #10
    orr     r11, r11, #11
    orr     r12, r12, #12

    // loop 2
    orr     r1, r1, #1
    orr     r2, r2, #2
    orr     r3, r3, #3
    orr     r4, r4, #4
    orr     r5, r5, #5
    orr     r6, r6, #6
    orr     r7, r7, #7
    orr     r8, r8, #8
    orr     r9, r9, #9
    orr     r10, r10, #10
    orr     r11, r11, #11
    orr     r12, r12, #12

    // loop 3
    orr     r1, r1, #1
    orr     r2, r2, #2
    orr     r3, r3, #3
    orr     r4, r4, #4
    orr     r5, r5, #5
    orr     r6, r6, #6
    orr     r7, r7, #7
    orr     r8, r8, #8
    orr     r9, r9, #9
    orr     r10, r10, #10
    orr     r11, r11, #11
    orr     r12, r12, #12

    // loop 4
    orr     r1, r1, #1
    orr     r2, r2, #2
    orr     r3, r3, #3
    orr     r4, r4, #4
    orr     r5, r5, #5
    orr     r6, r6, #6
    orr     r7, r7, #7
    orr     r8, r8, #8
    orr     r9, r9, #9
    orr     r10, r10, #10
    orr     r11, r11, #11
    orr     r12, r12, #12

    // loop 5
    orr     r1, r1, #1
    orr     r2, r2, #2
    orr     r3, r3, #3
    orr     r4, r4, #4
    orr     r5, r5, #5
    orr     r6, r6, #6
    orr     r7, r7, #7
    orr     r8, r8, #8
    orr     r9, r9, #9
    orr     r10, r10, #10
    orr     r11, r11, #11
    orr     r12, r12, #12

    subs    r0, r0, #1
    bne     orrImmMaxTest_LOOP
    pop     {r4-r11, pc}

_orrRegMinTest:

    push    {r4-r11, lr}

orrRegMinTest_LOOP:

    // loop 1
    orr     r2, r2, r1, ROR #1
    orr     r3, r3, r2, ROR #2
    orr     r4, r4, r3, ROR #3
    orr     r5, r5, r4, ROR #4
    orr     r6, r6, r5, ROR #5
    orr     r7, r7, r6, ROR #6
    orr     r8, r8, r7, ROR #7
    orr     r9, r9, r8, ROR #8
    orr     r10, r10, r9, ROR #9
    orr     r11, r11, r10, ROR #10
    orr     r12, r12, r11, ROR #11
    orr     r1, r1, r12, ROR #12

    // loop 2
    orr     r2, r2, r1, ROR #1
    orr     r3, r3, r2, ROR #2
    orr     r4, r4, r3, ROR #3
    orr     r5, r5, r4, ROR #4
    orr     r6, r6, r5, ROR #5
    orr     r7, r7, r6, ROR #6
    orr     r8, r8, r7, ROR #7
    orr     r9, r9, r8, ROR #8
    orr     r10, r10, r9, ROR #9
    orr     r11, r11, r10, ROR #10
    orr     r12, r12, r11, ROR #11
    orr     r1, r1, r12, ROR #12

    // loop 3
    orr     r2, r2, r1, ROR #1
    orr     r3, r3, r2, ROR #2
    orr     r4, r4, r3, ROR #3
    orr     r5, r5, r4, ROR #4
    orr     r6, r6, r5, ROR #5
    orr     r7, r7, r6, ROR #6
    orr     r8, r8, r7, ROR #7
    orr     r9, r9, r8, ROR #8
    orr     r10, r10, r9, ROR #9
    orr     r11, r11, r10, ROR #10
    orr     r12, r12, r11, ROR #11
    orr     r1, r1, r12, ROR #12

    // loop 4
    orr     r2, r2, r1, ROR #1
    orr     r3, r3, r2, ROR #2
    orr     r4, r4, r3, ROR #3
    orr     r5, r5, r4, ROR #4
    orr     r6, r6, r5, ROR #5
    orr     r7, r7, r6, ROR #6
    orr     r8, r8, r7, ROR #7
    orr     r9, r9, r8, ROR #8
    orr     r10, r10, r9, ROR #9
    orr     r11, r11, r10, ROR #10
    orr     r12, r12, r11, ROR #11
    orr     r1, r1, r12, ROR #12

    // loop 5
    orr     r2, r2, r1, ROR #1
    orr     r3, r3, r2, ROR #2
    orr     r4, r4, r3, ROR #3
    orr     r5, r5, r4, ROR #4
    orr     r6, r6, r5, ROR #5
    orr     r7, r7, r6, ROR #6
    orr     r8, r8, r7, ROR #7
    orr     r9, r9, r8, ROR #8
    orr     r10, r10, r9, ROR #9
    orr     r11, r11, r10, ROR #10
    orr     r12, r12, r11, ROR #11
    orr     r1, r1, r12, ROR #12

    subs    r0, r0, #1
    bne     orrRegMinTest_LOOP
    pop     {r4-r11, pc}

_orrRegMaxTest:

    push    {r4-r11, lr}

orrRegMaxTest_LOOP:

    // loop 1
    orr     r1, r1, r1
    orr     r2, r2, r2
    orr     r3, r3, r3
    orr     r4, r4, r4
    orr     r5, r5, r5
    orr     r6, r6, r6
    orr     r7, r7, r7
    orr     r8, r8, r8
    orr     r9, r9, r9
    orr     r10, r10, r10
    orr     r11, r11, r11
    orr     r12, r12, r12

    // loop 2
    orr     r1, r1, r1
    orr     r2, r2, r2
    orr     r3, r3, r3
    orr     r4, r4, r4
    orr     r5, r5, r5
    orr     r6, r6, r6
    orr     r7, r7, r7
    orr     r8, r8, r8
    orr     r9, r9, r9
    orr     r10, r10, r10
    orr     r11, r11, r11
    orr     r12, r12, r12

    // loop 3
    orr     r1, r1, r1
    orr     r2, r2, r2
    orr     r3, r3, r3
    orr     r4, r4, r4
    orr     r5, r5, r5
    orr     r6, r6, r6
    orr     r7, r7, r7
    orr     r8, r8, r8
    orr     r9, r9, r9
    orr     r10, r10, r10
    orr     r11, r11, r11
    orr     r12, r12, r12

    // loop 4
    orr     r1, r1, r1
    orr     r2, r2, r2
    orr     r3, r3, r3
    orr     r4, r4, r4
    orr     r5, r5, r5
    orr     r6, r6, r6
    orr     r7, r7, r7
    orr     r8, r8, r8
    orr     r9, r9, r9
    orr     r10, r10, r10
    orr     r11, r11, r11
    orr     r12, r12, r12

    // loop 5
    orr     r1, r1, r1
    orr     r2, r2, r2
    orr     r3, r3, r3
    orr     r4, r4, r4
    orr     r5, r5, r5
    orr     r6, r6, r6
    orr     r7, r7, r7
    orr     r8, r8, r8
    orr     r9, r9, r9
    orr     r10, r10, r10
    orr     r11, r11, r11
    orr     r12, r12, r12

    subs    r0, r0, #1
    bne     orrRegMaxTest_LOOP
    pop     {r4-r11, pc}

_orrShftMinTest:

    push    {r4-r11, lr}

orrShftMinTest_LOOP:

    // loop 1
    orr     r2, r2, r1, ROR r1
    orr     r3, r3, r2, ROR r2
    orr     r4, r4, r3, ROR r3
    orr     r5, r5, r4, ROR r4
    orr     r6, r6, r5, ROR r5
    orr     r7, r7, r6, ROR r6
    orr     r8, r8, r7, ROR r7
    orr     r9, r9, r8, ROR r8
    orr     r10, r10, r9, ROR r9
    orr     r11, r11, r10, ROR r10
    orr     r12, r12, r11, ROR r11
    orr     r1, r1, r12, ROR r12

    // loop 2
    orr     r2, r2, r1, ROR r1
    orr     r3, r3, r2, ROR r2
    orr     r4, r4, r3, ROR r3
    orr     r5, r5, r4, ROR r4
    orr     r6, r6, r5, ROR r5
    orr     r7, r7, r6, ROR r6
    orr     r8, r8, r7, ROR r7
    orr     r9, r9, r8, ROR r8
    orr     r10, r10, r9, ROR r9
    orr     r11, r11, r10, ROR r10
    orr     r12, r12, r11, ROR r11
    orr     r1, r1, r12, ROR r12

    // loop 3
    orr     r2, r2, r1, ROR r1
    orr     r3, r3, r2, ROR r2
    orr     r4, r4, r3, ROR r3
    orr     r5, r5, r4, ROR r4
    orr     r6, r6, r5, ROR r5
    orr     r7, r7, r6, ROR r6
    orr     r8, r8, r7, ROR r7
    orr     r9, r9, r8, ROR r8
    orr     r10, r10, r9, ROR r9
    orr     r11, r11, r10, ROR r10
    orr     r12, r12, r11, ROR r11
    orr     r1, r1, r12, ROR r12

    // loop 4
    orr     r2, r2, r1, ROR r1
    orr     r3, r3, r2, ROR r2
    orr     r4, r4, r3, ROR r3
    orr     r5, r5, r4, ROR r4
    orr     r6, r6, r5, ROR r5
    orr     r7, r7, r6, ROR r6
    orr     r8, r8, r7, ROR r7
    orr     r9, r9, r8, ROR r8
    orr     r10, r10, r9, ROR r9
    orr     r11, r11, r10, ROR r10
    orr     r12, r12, r11, ROR r11
    orr     r1, r1, r12, ROR r12

    // loop 5
    orr     r2, r2, r1, ROR r1
    orr     r3, r3, r2, ROR r2
    orr     r4, r4, r3, ROR r3
    orr     r5, r5, r4, ROR r4
    orr     r6, r6, r5, ROR r5
    orr     r7, r7, r6, ROR r6
    orr     r8, r8, r7, ROR r7
    orr     r9, r9, r8, ROR r8
    orr     r10, r10, r9, ROR r9
    orr     r11, r11, r10, ROR r10
    orr     r12, r12, r11, ROR r11
    orr     r1, r1, r12, ROR r12

    subs    r0, r0, #1
    bne     orrShftMinTest_LOOP
    pop     {r4-r11, pc}

_orrShftMaxTest:

    push    {r4-r11, lr}

orrShftMaxTest_LOOP:

    // loop 1
    orr     r1, r1, r1, ROR r1
    orr     r2, r2, r2, ROR r2
    orr     r3, r3, r3, ROR r3
    orr     r4, r4, r4, ROR r4
    orr     r5, r5, r5, ROR r5
    orr     r6, r6, r6, ROR r6
    orr     r7, r7, r7, ROR r7
    orr     r8, r8, r8, ROR r8
    orr     r9, r9, r9, ROR r9
    orr     r10, r10, r10, ROR r10
    orr     r11, r11, r11, ROR r11
    orr     r12, r12, r12, ROR r12

    // loop 2
    orr     r1, r1, r1, ROR r1
    orr     r2, r2, r2, ROR r2
    orr     r3, r3, r3, ROR r3
    orr     r4, r4, r4, ROR r4
    orr     r5, r5, r5, ROR r5
    orr     r6, r6, r6, ROR r6
    orr     r7, r7, r7, ROR r7
    orr     r8, r8, r8, ROR r8
    orr     r9, r9, r9, ROR r9
    orr     r10, r10, r10, ROR r10
    orr     r11, r11, r11, ROR r11
    orr     r12, r12, r12, ROR r12

    // loop 3
    orr     r1, r1, r1, ROR r1
    orr     r2, r2, r2, ROR r2
    orr     r3, r3, r3, ROR r3
    orr     r4, r4, r4, ROR r4
    orr     r5, r5, r5, ROR r5
    orr     r6, r6, r6, ROR r6
    orr     r7, r7, r7, ROR r7
    orr     r8, r8, r8, ROR r8
    orr     r9, r9, r9, ROR r9
    orr     r10, r10, r10, ROR r10
    orr     r11, r11, r11, ROR r11
    orr     r12, r12, r12, ROR r12

    // loop 4
    orr     r1, r1, r1, ROR r1
    orr     r2, r2, r2, ROR r2
    orr     r3, r3, r3, ROR r3
    orr     r4, r4, r4, ROR r4
    orr     r5, r5, r5, ROR r5
    orr     r6, r6, r6, ROR r6
    orr     r7, r7, r7, ROR r7
    orr     r8, r8, r8, ROR r8
    orr     r9, r9, r9, ROR r9
    orr     r10, r10, r10, ROR r10
    orr     r11, r11, r11, ROR r11
    orr     r12, r12, r12, ROR r12

    // loop 5
    orr     r1, r1, r1, ROR r1
    orr     r2, r2, r2, ROR r2
    orr     r3, r3, r3, ROR r3
    orr     r4, r4, r4, ROR r4
    orr     r5, r5, r5, ROR r5
    orr     r6, r6, r6, ROR r6
    orr     r7, r7, r7, ROR r7
    orr     r8, r8, r8, ROR r8
    orr     r9, r9, r9, ROR r9
    orr     r10, r10, r10, ROR r10
    orr     r11, r11, r11, ROR r11
    orr     r12, r12, r12, ROR r12

    subs    r0, r0, #1
    bne     orrShftMaxTest_LOOP
    pop     {r4-r11, pc}


_pkhMinTest:

    push    {r4-r11, lr}

pkhMinTest_LOOP:

    // loop 1
    pkhbt   r2, r2, r1, LSL #1
    pkhbt   r3, r3, r2, LSL #2
    pkhbt   r4, r4, r3, LSL #3
    pkhbt   r5, r5, r4, LSL #4
    pkhbt   r6, r6, r5, LSL #5
    pkhbt   r7, r7, r6, LSL #6
    pkhbt   r8, r8, r7, LSL #7
    pkhbt   r9, r9, r8, LSL #8
    pkhbt   r10, r10, r9, LSL #9
    pkhbt   r11, r11, r10, LSL #10
    pkhbt   r12, r12, r11, LSL #11
    pkhbt   r1, r1, r12, LSL #12

    // loop 2
    pkhbt   r2, r2, r1, LSL #1
    pkhbt   r3, r3, r2, LSL #2
    pkhbt   r4, r4, r3, LSL #3
    pkhbt   r5, r5, r4, LSL #4
    pkhbt   r6, r6, r5, LSL #5
    pkhbt   r7, r7, r6, LSL #6
    pkhbt   r8, r8, r7, LSL #7
    pkhbt   r9, r9, r8, LSL #8
    pkhbt   r10, r10, r9, LSL #9
    pkhbt   r11, r11, r10, LSL #10
    pkhbt   r12, r12, r11, LSL #11
    pkhbt   r1, r1, r12, LSL #12

    // loop 3
    pkhbt   r2, r2, r1, LSL #1
    pkhbt   r3, r3, r2, LSL #2
    pkhbt   r4, r4, r3, LSL #3
    pkhbt   r5, r5, r4, LSL #4
    pkhbt   r6, r6, r5, LSL #5
    pkhbt   r7, r7, r6, LSL #6
    pkhbt   r8, r8, r7, LSL #7
    pkhbt   r9, r9, r8, LSL #8
    pkhbt   r10, r10, r9, LSL #9
    pkhbt   r11, r11, r10, LSL #10
    pkhbt   r12, r12, r11, LSL #11
    pkhbt   r1, r1, r12, LSL #12

    // loop 4
    pkhbt   r2, r2, r1, LSL #1
    pkhbt   r3, r3, r2, LSL #2
    pkhbt   r4, r4, r3, LSL #3
    pkhbt   r5, r5, r4, LSL #4
    pkhbt   r6, r6, r5, LSL #5
    pkhbt   r7, r7, r6, LSL #6
    pkhbt   r8, r8, r7, LSL #7
    pkhbt   r9, r9, r8, LSL #8
    pkhbt   r10, r10, r9, LSL #9
    pkhbt   r11, r11, r10, LSL #10
    pkhbt   r12, r12, r11, LSL #11
    pkhbt   r1, r1, r12, LSL #12

    // loop 5
    pkhbt   r2, r2, r1, LSL #1
    pkhbt   r3, r3, r2, LSL #2
    pkhbt   r4, r4, r3, LSL #3
    pkhbt   r5, r5, r4, LSL #4
    pkhbt   r6, r6, r5, LSL #5
    pkhbt   r7, r7, r6, LSL #6
    pkhbt   r8, r8, r7, LSL #7
    pkhbt   r9, r9, r8, LSL #8
    pkhbt   r10, r10, r9, LSL #9
    pkhbt   r11, r11, r10, LSL #10
    pkhbt   r12, r12, r11, LSL #11
    pkhbt   r1, r1, r12, LSL #12

    subs    r0, r0, #1
    bne     pkhMinTest_LOOP
    pop     {r4-r11, pc}

_pkhMaxTest:

    push    {r4-r11, lr}

pkhMaxTest_LOOP:

    // loop 1
    pkhtb   r1, r1, r1
    pkhtb   r2, r2, r2
    pkhtb   r3, r3, r3
    pkhtb   r4, r4, r4
    pkhtb   r5, r5, r5
    pkhtb   r6, r6, r6
    pkhtb   r7, r7, r7
    pkhtb   r8, r8, r8
    pkhtb   r9, r9, r9
    pkhtb   r10, r10, r10
    pkhtb   r11, r11, r11
    pkhtb   r12, r12, r12

    // loop 2
    pkhtb   r1, r1, r1
    pkhtb   r2, r2, r2
    pkhtb   r3, r3, r3
    pkhtb   r4, r4, r4
    pkhtb   r5, r5, r5
    pkhtb   r6, r6, r6
    pkhtb   r7, r7, r7
    pkhtb   r8, r8, r8
    pkhtb   r9, r9, r9
    pkhtb   r10, r10, r10
    pkhtb   r11, r11, r11
    pkhtb   r12, r12, r12

    // loop 3
    pkhtb   r1, r1, r1
    pkhtb   r2, r2, r2
    pkhtb   r3, r3, r3
    pkhtb   r4, r4, r4
    pkhtb   r5, r5, r5
    pkhtb   r6, r6, r6
    pkhtb   r7, r7, r7
    pkhtb   r8, r8, r8
    pkhtb   r9, r9, r9
    pkhtb   r10, r10, r10
    pkhtb   r11, r11, r11
    pkhtb   r12, r12, r12

    // loop 4
    pkhtb   r1, r1, r1
    pkhtb   r2, r2, r2
    pkhtb   r3, r3, r3
    pkhtb   r4, r4, r4
    pkhtb   r5, r5, r5
    pkhtb   r6, r6, r6
    pkhtb   r7, r7, r7
    pkhtb   r8, r8, r8
    pkhtb   r9, r9, r9
    pkhtb   r10, r10, r10
    pkhtb   r11, r11, r11
    pkhtb   r12, r12, r12

    // loop 5
    pkhtb   r1, r1, r1
    pkhtb   r2, r2, r2
    pkhtb   r3, r3, r3
    pkhtb   r4, r4, r4
    pkhtb   r5, r5, r5
    pkhtb   r6, r6, r6
    pkhtb   r7, r7, r7
    pkhtb   r8, r8, r8
    pkhtb   r9, r9, r9
    pkhtb   r10, r10, r10
    pkhtb   r11, r11, r11
    pkhtb   r12, r12, r12

    subs    r0, r0, #1
    bne     pkhMaxTest_LOOP
    pop     {r4-r11, pc}


_qaddMinTest:

    push    {r4-r11, lr}

qaddMinTest_LOOP:

    // loop 1
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 2
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 3
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 4
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 5
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    subs    r0, r0, #1
    bne     qaddMinTest_LOOP
    pop     {r4-r11, pc}

_qaddMaxTest:

    push    {r4-r11, lr}

qaddMaxTest_LOOP:

    // loop 1
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 2
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 3
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 4
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 5
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    subs    r0, r0, #1
    bne     qaddMaxTest_LOOP
    pop     {r4-r11, pc}    


_qadd16MinTest:

    push    {r4-r11, lr}

qadd16MinTest_LOOP:

    // loop 1
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 2
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 3
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 4
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    // loop 5
    qadd    r2, r2, r1
    qadd    r3, r3, r2
    qadd    r4, r4, r3
    qadd    r5, r5, r4
    qadd    r6, r6, r5
    qadd    r7, r7, r6
    qadd    r8, r8, r7
    qadd    r9, r9, r8
    qadd    r10, r10, r9
    qadd    r11, r11, r10
    qadd    r12, r12, r11
    qadd    r1, r1, r12

    subs    r0, r0, #1
    bne     qadd16MinTest_LOOP
    pop     {r4-r11, pc}

_qadd16MaxTest:

    push    {r4-r11, lr}

qadd16MaxTest_LOOP:

    // loop 1
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 2
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 3
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 4
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    // loop 5
    qadd    r1, r1, r1
    qadd    r2, r2, r2
    qadd    r3, r3, r3
    qadd    r4, r4, r4
    qadd    r5, r5, r5
    qadd    r6, r6, r6
    qadd    r7, r7, r7
    qadd    r8, r8, r8
    qadd    r9, r9, r9
    qadd    r10, r10, r10
    qadd    r11, r11, r11
    qadd    r12, r12, r12

    subs    r0, r0, #1
    bne     qadd16MaxTest_LOOP
    pop     {r4-r11, pc}


_qadd8MinTest:

    push    {r4-r11, lr}

qadd8MinTest_LOOP:

    // loop 1
    qadd8   r2, r2, r1
    qadd8   r3, r3, r2
    qadd8   r4, r4, r3
    qadd8   r5, r5, r4
    qadd8   r6, r6, r5
    qadd8   r7, r7, r6
    qadd8   r8, r8, r7
    qadd8   r9, r9, r8
    qadd8   r10, r10, r9
    qadd8   r11, r11, r10
    qadd8   r12, r12, r11
    qadd8   r1, r1, r12

    // loop 2
    qadd8   r2, r2, r1
    qadd8   r3, r3, r2
    qadd8   r4, r4, r3
    qadd8   r5, r5, r4
    qadd8   r6, r6, r5
    qadd8   r7, r7, r6
    qadd8   r8, r8, r7
    qadd8   r9, r9, r8
    qadd8   r10, r10, r9
    qadd8   r11, r11, r10
    qadd8   r12, r12, r11
    qadd8   r1, r1, r12

    // loop 3
    qadd8   r2, r2, r1
    qadd8   r3, r3, r2
    qadd8   r4, r4, r3
    qadd8   r5, r5, r4
    qadd8   r6, r6, r5
    qadd8   r7, r7, r6
    qadd8   r8, r8, r7
    qadd8   r9, r9, r8
    qadd8   r10, r10, r9
    qadd8   r11, r11, r10
    qadd8   r12, r12, r11
    qadd8   r1, r1, r12

    // loop 4
    qadd8   r2, r2, r1
    qadd8   r3, r3, r2
    qadd8   r4, r4, r3
    qadd8   r5, r5, r4
    qadd8   r6, r6, r5
    qadd8   r7, r7, r6
    qadd8   r8, r8, r7
    qadd8   r9, r9, r8
    qadd8   r10, r10, r9
    qadd8   r11, r11, r10
    qadd8   r12, r12, r11
    qadd8   r1, r1, r12

    // loop 5
    qadd8   r2, r2, r1
    qadd8   r3, r3, r2
    qadd8   r4, r4, r3
    qadd8   r5, r5, r4
    qadd8   r6, r6, r5
    qadd8   r7, r7, r6
    qadd8   r8, r8, r7
    qadd8   r9, r9, r8
    qadd8   r10, r10, r9
    qadd8   r11, r11, r10
    qadd8   r12, r12, r11
    qadd8   r1, r1, r12

    subs    r0, r0, #1
    bne     qadd8MinTest_LOOP
    pop     {r4-r11, pc}

_qadd8MaxTest:

    push    {r4-r11, lr}

qadd8MaxTest_LOOP:

    // loop 1
    qadd8   r1, r1, r1
    qadd8   r2, r2, r2
    qadd8   r3, r3, r3
    qadd8   r4, r4, r4
    qadd8   r5, r5, r5
    qadd8   r6, r6, r6
    qadd8   r7, r7, r7
    qadd8   r8, r8, r8
    qadd8   r9, r9, r9
    qadd8   r10, r10, r10
    qadd8   r11, r11, r11
    qadd8   r12, r12, r12

    // loop 2
    qadd8   r1, r1, r1
    qadd8   r2, r2, r2
    qadd8   r3, r3, r3
    qadd8   r4, r4, r4
    qadd8   r5, r5, r5
    qadd8   r6, r6, r6
    qadd8   r7, r7, r7
    qadd8   r8, r8, r8
    qadd8   r9, r9, r9
    qadd8   r10, r10, r10
    qadd8   r11, r11, r11
    qadd8   r12, r12, r12

    // loop 3
    qadd8   r1, r1, r1
    qadd8   r2, r2, r2
    qadd8   r3, r3, r3
    qadd8   r4, r4, r4
    qadd8   r5, r5, r5
    qadd8   r6, r6, r6
    qadd8   r7, r7, r7
    qadd8   r8, r8, r8
    qadd8   r9, r9, r9
    qadd8   r10, r10, r10
    qadd8   r11, r11, r11
    qadd8   r12, r12, r12

    // loop 4
    qadd8   r1, r1, r1
    qadd8   r2, r2, r2
    qadd8   r3, r3, r3
    qadd8   r4, r4, r4
    qadd8   r5, r5, r5
    qadd8   r6, r6, r6
    qadd8   r7, r7, r7
    qadd8   r8, r8, r8
    qadd8   r9, r9, r9
    qadd8   r10, r10, r10
    qadd8   r11, r11, r11
    qadd8   r12, r12, r12

    // loop 5
    qadd8   r1, r1, r1
    qadd8   r2, r2, r2
    qadd8   r3, r3, r3
    qadd8   r4, r4, r4
    qadd8   r5, r5, r5
    qadd8   r6, r6, r6
    qadd8   r7, r7, r7
    qadd8   r8, r8, r8
    qadd8   r9, r9, r9
    qadd8   r10, r10, r10
    qadd8   r11, r11, r11
    qadd8   r12, r12, r12

    subs    r0, r0, #1
    bne     qadd8MaxTest_LOOP
    pop     {r4-r11, pc}


_qasxMinTest:

    push    {r4-r11, lr}

qasxMinTest_LOOP:

    // loop 1
    qasx    r2, r2, r1
    qasx    r3, r3, r2
    qasx    r4, r4, r3
    qasx    r5, r5, r4
    qasx    r6, r6, r5
    qasx    r7, r7, r6
    qasx    r8, r8, r7
    qasx    r9, r9, r8
    qasx    r10, r10, r9
    qasx    r11, r11, r10
    qasx    r12, r12, r11
    qasx    r1, r1, r12

    // loop 2
    qasx    r2, r2, r1
    qasx    r3, r3, r2
    qasx    r4, r4, r3
    qasx    r5, r5, r4
    qasx    r6, r6, r5
    qasx    r7, r7, r6
    qasx    r8, r8, r7
    qasx    r9, r9, r8
    qasx    r10, r10, r9
    qasx    r11, r11, r10
    qasx    r12, r12, r11
    qasx    r1, r1, r12

    // loop 3
    qasx    r2, r2, r1
    qasx    r3, r3, r2
    qasx    r4, r4, r3
    qasx    r5, r5, r4
    qasx    r6, r6, r5
    qasx    r7, r7, r6
    qasx    r8, r8, r7
    qasx    r9, r9, r8
    qasx    r10, r10, r9
    qasx    r11, r11, r10
    qasx    r12, r12, r11
    qasx    r1, r1, r12

    // loop 4
    qasx    r2, r2, r1
    qasx    r3, r3, r2
    qasx    r4, r4, r3
    qasx    r5, r5, r4
    qasx    r6, r6, r5
    qasx    r7, r7, r6
    qasx    r8, r8, r7
    qasx    r9, r9, r8
    qasx    r10, r10, r9
    qasx    r11, r11, r10
    qasx    r12, r12, r11
    qasx    r1, r1, r12

    // loop 5
    qasx    r2, r2, r1
    qasx    r3, r3, r2
    qasx    r4, r4, r3
    qasx    r5, r5, r4
    qasx    r6, r6, r5
    qasx    r7, r7, r6
    qasx    r8, r8, r7
    qasx    r9, r9, r8
    qasx    r10, r10, r9
    qasx    r11, r11, r10
    qasx    r12, r12, r11
    qasx    r1, r1, r12

    subs    r0, r0, #1
    bne     qasxMinTest_LOOP
    pop     {r4-r11, pc}

_qasxMaxTest:

    push    {r4-r11, lr}

qasxMaxTest_LOOP:

    // loop 1
    qasx    r1, r1, r1
    qasx    r2, r2, r2
    qasx    r3, r3, r3
    qasx    r4, r4, r4
    qasx    r5, r5, r5
    qasx    r6, r6, r6
    qasx    r7, r7, r7
    qasx    r8, r8, r8
    qasx    r9, r9, r9
    qasx    r10, r10, r10
    qasx    r11, r11, r11
    qasx    r12, r12, r12

    // loop 2
    qasx    r1, r1, r1
    qasx    r2, r2, r2
    qasx    r3, r3, r3
    qasx    r4, r4, r4
    qasx    r5, r5, r5
    qasx    r6, r6, r6
    qasx    r7, r7, r7
    qasx    r8, r8, r8
    qasx    r9, r9, r9
    qasx    r10, r10, r10
    qasx    r11, r11, r11
    qasx    r12, r12, r12

    // loop 3
    qasx    r1, r1, r1
    qasx    r2, r2, r2
    qasx    r3, r3, r3
    qasx    r4, r4, r4
    qasx    r5, r5, r5
    qasx    r6, r6, r6
    qasx    r7, r7, r7
    qasx    r8, r8, r8
    qasx    r9, r9, r9
    qasx    r10, r10, r10
    qasx    r11, r11, r11
    qasx    r12, r12, r12

    // loop 4
    qasx    r1, r1, r1
    qasx    r2, r2, r2
    qasx    r3, r3, r3
    qasx    r4, r4, r4
    qasx    r5, r5, r5
    qasx    r6, r6, r6
    qasx    r7, r7, r7
    qasx    r8, r8, r8
    qasx    r9, r9, r9
    qasx    r10, r10, r10
    qasx    r11, r11, r11
    qasx    r12, r12, r12

    // loop 5
    qasx    r1, r1, r1
    qasx    r2, r2, r2
    qasx    r3, r3, r3
    qasx    r4, r4, r4
    qasx    r5, r5, r5
    qasx    r6, r6, r6
    qasx    r7, r7, r7
    qasx    r8, r8, r8
    qasx    r9, r9, r9
    qasx    r10, r10, r10
    qasx    r11, r11, r11
    qasx    r12, r12, r12

    subs    r0, r0, #1
    bne     qasxMaxTest_LOOP
    pop     {r4-r11, pc}


_qdaddMinTest:

    push    {r4-r11, lr}

qdaddMinTest_LOOP:

    // loop 1
    qdadd   r2, r2, r1
    qdadd   r3, r3, r2
    qdadd   r4, r4, r3
    qdadd   r5, r5, r4
    qdadd   r6, r6, r5
    qdadd   r7, r7, r6
    qdadd   r8, r8, r7
    qdadd   r9, r9, r8
    qdadd   r10, r10, r9
    qdadd   r11, r11, r10
    qdadd   r12, r12, r11
    qdadd   r1, r1, r12

    // loop 2
    qdadd   r2, r2, r1
    qdadd   r3, r3, r2
    qdadd   r4, r4, r3
    qdadd   r5, r5, r4
    qdadd   r6, r6, r5
    qdadd   r7, r7, r6
    qdadd   r8, r8, r7
    qdadd   r9, r9, r8
    qdadd   r10, r10, r9
    qdadd   r11, r11, r10
    qdadd   r12, r12, r11
    qdadd   r1, r1, r12

    // loop 3
    qdadd   r2, r2, r1
    qdadd   r3, r3, r2
    qdadd   r4, r4, r3
    qdadd   r5, r5, r4
    qdadd   r6, r6, r5
    qdadd   r7, r7, r6
    qdadd   r8, r8, r7
    qdadd   r9, r9, r8
    qdadd   r10, r10, r9
    qdadd   r11, r11, r10
    qdadd   r12, r12, r11
    qdadd   r1, r1, r12

    // loop 4
    qdadd   r2, r2, r1
    qdadd   r3, r3, r2
    qdadd   r4, r4, r3
    qdadd   r5, r5, r4
    qdadd   r6, r6, r5
    qdadd   r7, r7, r6
    qdadd   r8, r8, r7
    qdadd   r9, r9, r8
    qdadd   r10, r10, r9
    qdadd   r11, r11, r10
    qdadd   r12, r12, r11
    qdadd   r1, r1, r12

    // loop 5
    qdadd   r2, r2, r1
    qdadd   r3, r3, r2
    qdadd   r4, r4, r3
    qdadd   r5, r5, r4
    qdadd   r6, r6, r5
    qdadd   r7, r7, r6
    qdadd   r8, r8, r7
    qdadd   r9, r9, r8
    qdadd   r10, r10, r9
    qdadd   r11, r11, r10
    qdadd   r12, r12, r11
    qdadd   r1, r1, r12

    subs    r0, r0, #1
    bne     qdaddMinTest_LOOP
    pop     {r4-r11, pc}

_qdaddMaxTest:

    push    {r4-r11, lr}

qdaddMaxTest_LOOP:

    // loop 1
    qdadd   r1, r1, r1
    qdadd   r2, r2, r2
    qdadd   r3, r3, r3
    qdadd   r4, r4, r4
    qdadd   r5, r5, r5
    qdadd   r6, r6, r6
    qdadd   r7, r7, r7
    qdadd   r8, r8, r8
    qdadd   r9, r9, r9
    qdadd   r10, r10, r10
    qdadd   r11, r11, r11
    qdadd   r12, r12, r12

    // loop 2
    qdadd   r1, r1, r1
    qdadd   r2, r2, r2
    qdadd   r3, r3, r3
    qdadd   r4, r4, r4
    qdadd   r5, r5, r5
    qdadd   r6, r6, r6
    qdadd   r7, r7, r7
    qdadd   r8, r8, r8
    qdadd   r9, r9, r9
    qdadd   r10, r10, r10
    qdadd   r11, r11, r11
    qdadd   r12, r12, r12

    // loop 3
    qdadd   r1, r1, r1
    qdadd   r2, r2, r2
    qdadd   r3, r3, r3
    qdadd   r4, r4, r4
    qdadd   r5, r5, r5
    qdadd   r6, r6, r6
    qdadd   r7, r7, r7
    qdadd   r8, r8, r8
    qdadd   r9, r9, r9
    qdadd   r10, r10, r10
    qdadd   r11, r11, r11
    qdadd   r12, r12, r12

    // loop 4
    qdadd   r1, r1, r1
    qdadd   r2, r2, r2
    qdadd   r3, r3, r3
    qdadd   r4, r4, r4
    qdadd   r5, r5, r5
    qdadd   r6, r6, r6
    qdadd   r7, r7, r7
    qdadd   r8, r8, r8
    qdadd   r9, r9, r9
    qdadd   r10, r10, r10
    qdadd   r11, r11, r11
    qdadd   r12, r12, r12

    // loop 5
    qdadd   r1, r1, r1
    qdadd   r2, r2, r2
    qdadd   r3, r3, r3
    qdadd   r4, r4, r4
    qdadd   r5, r5, r5
    qdadd   r6, r6, r6
    qdadd   r7, r7, r7
    qdadd   r8, r8, r8
    qdadd   r9, r9, r9
    qdadd   r10, r10, r10
    qdadd   r11, r11, r11
    qdadd   r12, r12, r12

    subs    r0, r0, #1
    bne     qdaddMaxTest_LOOP
    pop     {r4-r11, pc}


_qdsubMinTest:

    push    {r4-r11, lr}

qdsubMinTest_LOOP:

    // loop 1
    qdsub   r2, r2, r1
    qdsub   r3, r3, r2
    qdsub   r4, r4, r3
    qdsub   r5, r5, r4
    qdsub   r6, r6, r5
    qdsub   r7, r7, r6
    qdsub   r8, r8, r7
    qdsub   r9, r9, r8
    qdsub   r10, r10, r9
    qdsub   r11, r11, r10
    qdsub   r12, r12, r11
    qdsub   r1, r1, r12

    // loop 2
    qdsub   r2, r2, r1
    qdsub   r3, r3, r2
    qdsub   r4, r4, r3
    qdsub   r5, r5, r4
    qdsub   r6, r6, r5
    qdsub   r7, r7, r6
    qdsub   r8, r8, r7
    qdsub   r9, r9, r8
    qdsub   r10, r10, r9
    qdsub   r11, r11, r10
    qdsub   r12, r12, r11
    qdsub   r1, r1, r12

    // loop 3
    qdsub   r2, r2, r1
    qdsub   r3, r3, r2
    qdsub   r4, r4, r3
    qdsub   r5, r5, r4
    qdsub   r6, r6, r5
    qdsub   r7, r7, r6
    qdsub   r8, r8, r7
    qdsub   r9, r9, r8
    qdsub   r10, r10, r9
    qdsub   r11, r11, r10
    qdsub   r12, r12, r11
    qdsub   r1, r1, r12

    // loop 4
    qdsub   r2, r2, r1
    qdsub   r3, r3, r2
    qdsub   r4, r4, r3
    qdsub   r5, r5, r4
    qdsub   r6, r6, r5
    qdsub   r7, r7, r6
    qdsub   r8, r8, r7
    qdsub   r9, r9, r8
    qdsub   r10, r10, r9
    qdsub   r11, r11, r10
    qdsub   r12, r12, r11
    qdsub   r1, r1, r12

    // loop 5
    qdsub   r2, r2, r1
    qdsub   r3, r3, r2
    qdsub   r4, r4, r3
    qdsub   r5, r5, r4
    qdsub   r6, r6, r5
    qdsub   r7, r7, r6
    qdsub   r8, r8, r7
    qdsub   r9, r9, r8
    qdsub   r10, r10, r9
    qdsub   r11, r11, r10
    qdsub   r12, r12, r11
    qdsub   r1, r1, r12

    subs    r0, r0, #1
    bne     qdsubMinTest_LOOP
    pop     {r4-r11, pc}

_qdsubMaxTest:

    push    {r4-r11, lr}

qdsubMaxTest_LOOP:

    // loop 1
    qdsub   r1, r1, r1
    qdsub   r2, r2, r2
    qdsub   r3, r3, r3
    qdsub   r4, r4, r4
    qdsub   r5, r5, r5
    qdsub   r6, r6, r6
    qdsub   r7, r7, r7
    qdsub   r8, r8, r8
    qdsub   r9, r9, r9
    qdsub   r10, r10, r10
    qdsub   r11, r11, r11
    qdsub   r12, r12, r12

    // loop 2
    qdsub   r1, r1, r1
    qdsub   r2, r2, r2
    qdsub   r3, r3, r3
    qdsub   r4, r4, r4
    qdsub   r5, r5, r5
    qdsub   r6, r6, r6
    qdsub   r7, r7, r7
    qdsub   r8, r8, r8
    qdsub   r9, r9, r9
    qdsub   r10, r10, r10
    qdsub   r11, r11, r11
    qdsub   r12, r12, r12

    // loop 3
    qdsub   r1, r1, r1
    qdsub   r2, r2, r2
    qdsub   r3, r3, r3
    qdsub   r4, r4, r4
    qdsub   r5, r5, r5
    qdsub   r6, r6, r6
    qdsub   r7, r7, r7
    qdsub   r8, r8, r8
    qdsub   r9, r9, r9
    qdsub   r10, r10, r10
    qdsub   r11, r11, r11
    qdsub   r12, r12, r12

    // loop 4
    qdsub   r1, r1, r1
    qdsub   r2, r2, r2
    qdsub   r3, r3, r3
    qdsub   r4, r4, r4
    qdsub   r5, r5, r5
    qdsub   r6, r6, r6
    qdsub   r7, r7, r7
    qdsub   r8, r8, r8
    qdsub   r9, r9, r9
    qdsub   r10, r10, r10
    qdsub   r11, r11, r11
    qdsub   r12, r12, r12

    // loop 5
    qdsub   r1, r1, r1
    qdsub   r2, r2, r2
    qdsub   r3, r3, r3
    qdsub   r4, r4, r4
    qdsub   r5, r5, r5
    qdsub   r6, r6, r6
    qdsub   r7, r7, r7
    qdsub   r8, r8, r8
    qdsub   r9, r9, r9
    qdsub   r10, r10, r10
    qdsub   r11, r11, r11
    qdsub   r12, r12, r12

    subs    r0, r0, #1
    bne     qdsubMaxTest_LOOP
    pop     {r4-r11, pc}


_qsaxMinTest:

    push        {r4-r11, lr}

qsaxMinTest_LOOP:

    // loop 1
    qsubaddx    r2, r2, r1
    qsubaddx    r3, r3, r2
    qsubaddx    r4, r4, r3
    qsubaddx    r5, r5, r4
    qsubaddx    r6, r6, r5
    qsubaddx    r7, r7, r6
    qsubaddx    r8, r8, r7
    qsubaddx    r9, r9, r8
    qsubaddx    r10, r10, r9
    qsubaddx    r11, r11, r10
    qsubaddx    r12, r12, r11
    qsubaddx    r1, r1, r12

    // loop 2
    qsubaddx    r2, r2, r1
    qsubaddx    r3, r3, r2
    qsubaddx    r4, r4, r3
    qsubaddx    r5, r5, r4
    qsubaddx    r6, r6, r5
    qsubaddx    r7, r7, r6
    qsubaddx    r8, r8, r7
    qsubaddx    r9, r9, r8
    qsubaddx    r10, r10, r9
    qsubaddx    r11, r11, r10
    qsubaddx    r12, r12, r11
    qsubaddx    r1, r1, r12

    // loop 3
    qsubaddx    r2, r2, r1
    qsubaddx    r3, r3, r2
    qsubaddx    r4, r4, r3
    qsubaddx    r5, r5, r4
    qsubaddx    r6, r6, r5
    qsubaddx    r7, r7, r6
    qsubaddx    r8, r8, r7
    qsubaddx    r9, r9, r8
    qsubaddx    r10, r10, r9
    qsubaddx    r11, r11, r10
    qsubaddx    r12, r12, r11
    qsubaddx    r1, r1, r12

    // loop 4
    qsubaddx    r2, r2, r1
    qsubaddx    r3, r3, r2
    qsubaddx    r4, r4, r3
    qsubaddx    r5, r5, r4
    qsubaddx    r6, r6, r5
    qsubaddx    r7, r7, r6
    qsubaddx    r8, r8, r7
    qsubaddx    r9, r9, r8
    qsubaddx    r10, r10, r9
    qsubaddx    r11, r11, r10
    qsubaddx    r12, r12, r11
    qsubaddx    r1, r1, r12

    // loop 5
    qsubaddx    r2, r2, r1
    qsubaddx    r3, r3, r2
    qsubaddx    r4, r4, r3
    qsubaddx    r5, r5, r4
    qsubaddx    r6, r6, r5
    qsubaddx    r7, r7, r6
    qsubaddx    r8, r8, r7
    qsubaddx    r9, r9, r8
    qsubaddx    r10, r10, r9
    qsubaddx    r11, r11, r10
    qsubaddx    r12, r12, r11
    qsubaddx    r1, r1, r12

    subs        r0, r0, #1
    bne         qsaxMinTest_LOOP
    pop         {r4-r11, pc}

_qsaxMaxTest:

    push        {r4-r11, lr}

qsaxMaxTest_LOOP:

    // loop 1
    qsubaddx    r1, r1, r1
    qsubaddx    r2, r2, r2
    qsubaddx    r3, r3, r3
    qsubaddx    r4, r4, r4
    qsubaddx    r5, r5, r5
    qsubaddx    r6, r6, r6
    qsubaddx    r7, r7, r7
    qsubaddx    r8, r8, r8
    qsubaddx    r9, r9, r9
    qsubaddx    r10, r10, r10
    qsubaddx    r11, r11, r11
    qsubaddx    r12, r12, r12

    // loop 2
    qsubaddx    r1, r1, r1
    qsubaddx    r2, r2, r2
    qsubaddx    r3, r3, r3
    qsubaddx    r4, r4, r4
    qsubaddx    r5, r5, r5
    qsubaddx    r6, r6, r6
    qsubaddx    r7, r7, r7
    qsubaddx    r8, r8, r8
    qsubaddx    r9, r9, r9
    qsubaddx    r10, r10, r10
    qsubaddx    r11, r11, r11
    qsubaddx    r12, r12, r12

    // loop 3
    qsubaddx    r1, r1, r1
    qsubaddx    r2, r2, r2
    qsubaddx    r3, r3, r3
    qsubaddx    r4, r4, r4
    qsubaddx    r5, r5, r5
    qsubaddx    r6, r6, r6
    qsubaddx    r7, r7, r7
    qsubaddx    r8, r8, r8
    qsubaddx    r9, r9, r9
    qsubaddx    r10, r10, r10
    qsubaddx    r11, r11, r11
    qsubaddx    r12, r12, r12

    // loop 4
    qsubaddx    r1, r1, r1
    qsubaddx    r2, r2, r2
    qsubaddx    r3, r3, r3
    qsubaddx    r4, r4, r4
    qsubaddx    r5, r5, r5
    qsubaddx    r6, r6, r6
    qsubaddx    r7, r7, r7
    qsubaddx    r8, r8, r8
    qsubaddx    r9, r9, r9
    qsubaddx    r10, r10, r10
    qsubaddx    r11, r11, r11
    qsubaddx    r12, r12, r12

    // loop 5
    qsubaddx    r1, r1, r1
    qsubaddx    r2, r2, r2
    qsubaddx    r3, r3, r3
    qsubaddx    r4, r4, r4
    qsubaddx    r5, r5, r5
    qsubaddx    r6, r6, r6
    qsubaddx    r7, r7, r7
    qsubaddx    r8, r8, r8
    qsubaddx    r9, r9, r9
    qsubaddx    r10, r10, r10
    qsubaddx    r11, r11, r11
    qsubaddx    r12, r12, r12

    subs        r0, r0, #1
    bne         qsaxMaxTest_LOOP
    pop         {r4-r11, pc}


_qsubMinTest:

    push    {r4-r11, lr}

qsubMinTest_LOOP:

    // loop 1
    qsub    r2, r2, r1
    qsub    r3, r3, r2
    qsub    r4, r4, r3
    qsub    r5, r5, r4
    qsub    r6, r6, r5
    qsub    r7, r7, r6
    qsub    r8, r8, r7
    qsub    r9, r9, r8
    qsub    r10, r10, r9
    qsub    r11, r11, r10
    qsub    r12, r12, r11
    qsub    r1, r1, r12

    // loop 2
    qsub    r2, r2, r1
    qsub    r3, r3, r2
    qsub    r4, r4, r3
    qsub    r5, r5, r4
    qsub    r6, r6, r5
    qsub    r7, r7, r6
    qsub    r8, r8, r7
    qsub    r9, r9, r8
    qsub    r10, r10, r9
    qsub    r11, r11, r10
    qsub    r12, r12, r11
    qsub    r1, r1, r12

    // loop 3
    qsub    r2, r2, r1
    qsub    r3, r3, r2
    qsub    r4, r4, r3
    qsub    r5, r5, r4
    qsub    r6, r6, r5
    qsub    r7, r7, r6
    qsub    r8, r8, r7
    qsub    r9, r9, r8
    qsub    r10, r10, r9
    qsub    r11, r11, r10
    qsub    r12, r12, r11
    qsub    r1, r1, r12

    // loop 4
    qsub    r2, r2, r1
    qsub    r3, r3, r2
    qsub    r4, r4, r3
    qsub    r5, r5, r4
    qsub    r6, r6, r5
    qsub    r7, r7, r6
    qsub    r8, r8, r7
    qsub    r9, r9, r8
    qsub    r10, r10, r9
    qsub    r11, r11, r10
    qsub    r12, r12, r11
    qsub    r1, r1, r12

    // loop 5
    qsub    r2, r2, r1
    qsub    r3, r3, r2
    qsub    r4, r4, r3
    qsub    r5, r5, r4
    qsub    r6, r6, r5
    qsub    r7, r7, r6
    qsub    r8, r8, r7
    qsub    r9, r9, r8
    qsub    r10, r10, r9
    qsub    r11, r11, r10
    qsub    r12, r12, r11
    qsub    r1, r1, r12

    subs    r0, r0, #1
    bne     qsubMinTest_LOOP
    pop     {r4-r11, pc}

_qsubMaxTest:

    push    {r4-r11, lr}

qsubMaxTest_LOOP:

    // loop 1
    qsub    r1, r1, r1
    qsub    r2, r2, r2
    qsub    r3, r3, r3
    qsub    r4, r4, r4
    qsub    r5, r5, r5
    qsub    r6, r6, r6
    qsub    r7, r7, r7
    qsub    r8, r8, r8
    qsub    r9, r9, r9
    qsub    r10, r10, r10
    qsub    r11, r11, r11
    qsub    r12, r12, r12

    // loop 2
    qsub    r1, r1, r1
    qsub    r2, r2, r2
    qsub    r3, r3, r3
    qsub    r4, r4, r4
    qsub    r5, r5, r5
    qsub    r6, r6, r6
    qsub    r7, r7, r7
    qsub    r8, r8, r8
    qsub    r9, r9, r9
    qsub    r10, r10, r10
    qsub    r11, r11, r11
    qsub    r12, r12, r12

    // loop 3
    qsub    r1, r1, r1
    qsub    r2, r2, r2
    qsub    r3, r3, r3
    qsub    r4, r4, r4
    qsub    r5, r5, r5
    qsub    r6, r6, r6
    qsub    r7, r7, r7
    qsub    r8, r8, r8
    qsub    r9, r9, r9
    qsub    r10, r10, r10
    qsub    r11, r11, r11
    qsub    r12, r12, r12

    // loop 4
    qsub    r1, r1, r1
    qsub    r2, r2, r2
    qsub    r3, r3, r3
    qsub    r4, r4, r4
    qsub    r5, r5, r5
    qsub    r6, r6, r6
    qsub    r7, r7, r7
    qsub    r8, r8, r8
    qsub    r9, r9, r9
    qsub    r10, r10, r10
    qsub    r11, r11, r11
    qsub    r12, r12, r12

    // loop 5
    qsub    r1, r1, r1
    qsub    r2, r2, r2
    qsub    r3, r3, r3
    qsub    r4, r4, r4
    qsub    r5, r5, r5
    qsub    r6, r6, r6
    qsub    r7, r7, r7
    qsub    r8, r8, r8
    qsub    r9, r9, r9
    qsub    r10, r10, r10
    qsub    r11, r11, r11
    qsub    r12, r12, r12

    subs    r0, r0, #1
    bne     qsubMaxTest_LOOP
    pop     {r4-r11, pc}


_qsub16MinTest:

    push    {r4-r11, lr}

qsub16MinTest_LOOP:

    // loop 1
    qsub16  r2, r2, r1
    qsub16  r3, r3, r2
    qsub16  r4, r4, r3
    qsub16  r5, r5, r4
    qsub16  r6, r6, r5
    qsub16  r7, r7, r6
    qsub16  r8, r8, r7
    qsub16  r9, r9, r8
    qsub16  r10, r10, r9
    qsub16  r11, r11, r10
    qsub16  r12, r12, r11
    qsub16  r1, r1, r12

    // loop 2
    qsub16  r2, r2, r1
    qsub16  r3, r3, r2
    qsub16  r4, r4, r3
    qsub16  r5, r5, r4
    qsub16  r6, r6, r5
    qsub16  r7, r7, r6
    qsub16  r8, r8, r7
    qsub16  r9, r9, r8
    qsub16  r10, r10, r9
    qsub16  r11, r11, r10
    qsub16  r12, r12, r11
    qsub16  r1, r1, r12

    // loop 3
    qsub16  r2, r2, r1
    qsub16  r3, r3, r2
    qsub16  r4, r4, r3
    qsub16  r5, r5, r4
    qsub16  r6, r6, r5
    qsub16  r7, r7, r6
    qsub16  r8, r8, r7
    qsub16  r9, r9, r8
    qsub16  r10, r10, r9
    qsub16  r11, r11, r10
    qsub16  r12, r12, r11
    qsub16  r1, r1, r12

    // loop 4
    qsub16  r2, r2, r1
    qsub16  r3, r3, r2
    qsub16  r4, r4, r3
    qsub16  r5, r5, r4
    qsub16  r6, r6, r5
    qsub16  r7, r7, r6
    qsub16  r8, r8, r7
    qsub16  r9, r9, r8
    qsub16  r10, r10, r9
    qsub16  r11, r11, r10
    qsub16  r12, r12, r11
    qsub16  r1, r1, r12

    // loop 5
    qsub16  r2, r2, r1
    qsub16  r3, r3, r2
    qsub16  r4, r4, r3
    qsub16  r5, r5, r4
    qsub16  r6, r6, r5
    qsub16  r7, r7, r6
    qsub16  r8, r8, r7
    qsub16  r9, r9, r8
    qsub16  r10, r10, r9
    qsub16  r11, r11, r10
    qsub16  r12, r12, r11
    qsub16  r1, r1, r12

    subs    r0, r0, #1
    bne     qsub16MinTest_LOOP
    pop     {r4-r11, pc}

_qsub16MaxTest:

    push    {r4-r11, lr}

qsub16MaxTest_LOOP:

    // loop 1
    qsub16  r1, r1, r1
    qsub16  r2, r2, r2
    qsub16  r3, r3, r3
    qsub16  r4, r4, r4
    qsub16  r5, r5, r5
    qsub16  r6, r6, r6
    qsub16  r7, r7, r7
    qsub16  r8, r8, r8
    qsub16  r9, r9, r9
    qsub16  r10, r10, r10
    qsub16  r11, r11, r11
    qsub16  r12, r12, r12

    // loop 2
    qsub16  r1, r1, r1
    qsub16  r2, r2, r2
    qsub16  r3, r3, r3
    qsub16  r4, r4, r4
    qsub16  r5, r5, r5
    qsub16  r6, r6, r6
    qsub16  r7, r7, r7
    qsub16  r8, r8, r8
    qsub16  r9, r9, r9
    qsub16  r10, r10, r10
    qsub16  r11, r11, r11
    qsub16  r12, r12, r12

    // loop 3
    qsub16  r1, r1, r1
    qsub16  r2, r2, r2
    qsub16  r3, r3, r3
    qsub16  r4, r4, r4
    qsub16  r5, r5, r5
    qsub16  r6, r6, r6
    qsub16  r7, r7, r7
    qsub16  r8, r8, r8
    qsub16  r9, r9, r9
    qsub16  r10, r10, r10
    qsub16  r11, r11, r11
    qsub16  r12, r12, r12

    // loop 4
    qsub16  r1, r1, r1
    qsub16  r2, r2, r2
    qsub16  r3, r3, r3
    qsub16  r4, r4, r4
    qsub16  r5, r5, r5
    qsub16  r6, r6, r6
    qsub16  r7, r7, r7
    qsub16  r8, r8, r8
    qsub16  r9, r9, r9
    qsub16  r10, r10, r10
    qsub16  r11, r11, r11
    qsub16  r12, r12, r12

    // loop 5
    qsub16  r1, r1, r1
    qsub16  r2, r2, r2
    qsub16  r3, r3, r3
    qsub16  r4, r4, r4
    qsub16  r5, r5, r5
    qsub16  r6, r6, r6
    qsub16  r7, r7, r7
    qsub16  r8, r8, r8
    qsub16  r9, r9, r9
    qsub16  r10, r10, r10
    qsub16  r11, r11, r11
    qsub16  r12, r12, r12

    subs    r0, r0, #1
    bne     qsub16MaxTest_LOOP
    pop     {r4-r11, pc}


_qsub8MinTest:

    push    {r4-r11, lr}

qsub8MinTest_LOOP:

    // loop 1
    qsub8   r2, r2, r1
    qsub8   r3, r3, r2
    qsub8   r4, r4, r3
    qsub8   r5, r5, r4
    qsub8   r6, r6, r5
    qsub8   r7, r7, r6
    qsub8   r8, r8, r7
    qsub8   r9, r9, r8
    qsub8   r10, r10, r9
    qsub8   r11, r11, r10
    qsub8   r12, r12, r11
    qsub8   r1, r1, r12

    // loop 2
    qsub8   r2, r2, r1
    qsub8   r3, r3, r2
    qsub8   r4, r4, r3
    qsub8   r5, r5, r4
    qsub8   r6, r6, r5
    qsub8   r7, r7, r6
    qsub8   r8, r8, r7
    qsub8   r9, r9, r8
    qsub8   r10, r10, r9
    qsub8   r11, r11, r10
    qsub8   r12, r12, r11
    qsub8   r1, r1, r12

    // loop 3
    qsub8   r2, r2, r1
    qsub8   r3, r3, r2
    qsub8   r4, r4, r3
    qsub8   r5, r5, r4
    qsub8   r6, r6, r5
    qsub8   r7, r7, r6
    qsub8   r8, r8, r7
    qsub8   r9, r9, r8
    qsub8   r10, r10, r9
    qsub8   r11, r11, r10
    qsub8   r12, r12, r11
    qsub8   r1, r1, r12

    // loop 4
    qsub8   r2, r2, r1
    qsub8   r3, r3, r2
    qsub8   r4, r4, r3
    qsub8   r5, r5, r4
    qsub8   r6, r6, r5
    qsub8   r7, r7, r6
    qsub8   r8, r8, r7
    qsub8   r9, r9, r8
    qsub8   r10, r10, r9
    qsub8   r11, r11, r10
    qsub8   r12, r12, r11
    qsub8   r1, r1, r12

    // loop 5
    qsub8   r2, r2, r1
    qsub8   r3, r3, r2
    qsub8   r4, r4, r3
    qsub8   r5, r5, r4
    qsub8   r6, r6, r5
    qsub8   r7, r7, r6
    qsub8   r8, r8, r7
    qsub8   r9, r9, r8
    qsub8   r10, r10, r9
    qsub8   r11, r11, r10
    qsub8   r12, r12, r11
    qsub8   r1, r1, r12

    subs    r0, r0, #1
    bne     qsub8MinTest_LOOP
    pop     {r4-r11, pc}

_qsub8MaxTest:

    push    {r4-r11, lr}

qsub8MaxTest_LOOP:

    // loop 1
    qsub8   r1, r1, r1
    qsub8   r2, r2, r2
    qsub8   r3, r3, r3
    qsub8   r4, r4, r4
    qsub8   r5, r5, r5
    qsub8   r6, r6, r6
    qsub8   r7, r7, r7
    qsub8   r8, r8, r8
    qsub8   r9, r9, r9
    qsub8   r10, r10, r10
    qsub8   r11, r11, r11
    qsub8   r12, r12, r12

    // loop 2
    qsub8   r1, r1, r1
    qsub8   r2, r2, r2
    qsub8   r3, r3, r3
    qsub8   r4, r4, r4
    qsub8   r5, r5, r5
    qsub8   r6, r6, r6
    qsub8   r7, r7, r7
    qsub8   r8, r8, r8
    qsub8   r9, r9, r9
    qsub8   r10, r10, r10
    qsub8   r11, r11, r11
    qsub8   r12, r12, r12

    // loop 3
    qsub8   r1, r1, r1
    qsub8   r2, r2, r2
    qsub8   r3, r3, r3
    qsub8   r4, r4, r4
    qsub8   r5, r5, r5
    qsub8   r6, r6, r6
    qsub8   r7, r7, r7
    qsub8   r8, r8, r8
    qsub8   r9, r9, r9
    qsub8   r10, r10, r10
    qsub8   r11, r11, r11
    qsub8   r12, r12, r12

    // loop 4
    qsub8   r1, r1, r1
    qsub8   r2, r2, r2
    qsub8   r3, r3, r3
    qsub8   r4, r4, r4
    qsub8   r5, r5, r5
    qsub8   r6, r6, r6
    qsub8   r7, r7, r7
    qsub8   r8, r8, r8
    qsub8   r9, r9, r9
    qsub8   r10, r10, r10
    qsub8   r11, r11, r11
    qsub8   r12, r12, r12

    // loop 5
    qsub8   r1, r1, r1
    qsub8   r2, r2, r2
    qsub8   r3, r3, r3
    qsub8   r4, r4, r4
    qsub8   r5, r5, r5
    qsub8   r6, r6, r6
    qsub8   r7, r7, r7
    qsub8   r8, r8, r8
    qsub8   r9, r9, r9
    qsub8   r10, r10, r10
    qsub8   r11, r11, r11
    qsub8   r12, r12, r12

    subs    r0, r0, #1
    bne     qsub8MaxTest_LOOP
    pop     {r4-r11, pc}


_rbitMinTest:

    push    {r4-r11, lr}

rbitMinTest_LOOP:

    // loop 1
    rbit    r2, r1
    rbit    r3, r2
    rbit    r4, r3
    rbit    r5, r4
    rbit    r6, r5
    rbit    r7, r6
    rbit    r8, r7
    rbit    r9, r8
    rbit    r10, r9
    rbit    r11, r10
    rbit    r12, r11
    rbit    r1, r12

    // loop 2
    rbit    r2, r1
    rbit    r3, r2
    rbit    r4, r3
    rbit    r5, r4
    rbit    r6, r5
    rbit    r7, r6
    rbit    r8, r7
    rbit    r9, r8
    rbit    r10, r9
    rbit    r11, r10
    rbit    r12, r11
    rbit    r1, r12

    // loop 3
    rbit    r2, r1
    rbit    r3, r2
    rbit    r4, r3
    rbit    r5, r4
    rbit    r6, r5
    rbit    r7, r6
    rbit    r8, r7
    rbit    r9, r8
    rbit    r10, r9
    rbit    r11, r10
    rbit    r12, r11
    rbit    r1, r12

    // loop 4
    rbit    r2, r1
    rbit    r3, r2
    rbit    r4, r3
    rbit    r5, r4
    rbit    r6, r5
    rbit    r7, r6
    rbit    r8, r7
    rbit    r9, r8
    rbit    r10, r9
    rbit    r11, r10
    rbit    r12, r11
    rbit    r1, r12

    // loop 5
    rbit    r2, r1
    rbit    r3, r2
    rbit    r4, r3
    rbit    r5, r4
    rbit    r6, r5
    rbit    r7, r6
    rbit    r8, r7
    rbit    r9, r8
    rbit    r10, r9
    rbit    r11, r10
    rbit    r12, r11
    rbit    r1, r12

    subs    r0, r0, #1
    bne     rbitMinTest_LOOP
    pop     {r4-r11, pc}

_rbitMaxTest:

    push    {r4-r11, lr}

rbitMaxTest_LOOP:

    // loop 1
    rbit    r1, r1
    rbit    r2, r2
    rbit    r3, r3
    rbit    r4, r4
    rbit    r5, r5
    rbit    r6, r6
    rbit    r7, r7
    rbit    r8, r8
    rbit    r9, r9
    rbit    r10, r10
    rbit    r11, r11
    rbit    r12, r12

    // loop 2
    rbit    r1, r1
    rbit    r2, r2
    rbit    r3, r3
    rbit    r4, r4
    rbit    r5, r5
    rbit    r6, r6
    rbit    r7, r7
    rbit    r8, r8
    rbit    r9, r9
    rbit    r10, r10
    rbit    r11, r11
    rbit    r12, r12

    // loop 3
    rbit    r1, r1
    rbit    r2, r2
    rbit    r3, r3
    rbit    r4, r4
    rbit    r5, r5
    rbit    r6, r6
    rbit    r7, r7
    rbit    r8, r8
    rbit    r9, r9
    rbit    r10, r10
    rbit    r11, r11
    rbit    r12, r12

    // loop 4
    rbit    r1, r1
    rbit    r2, r2
    rbit    r3, r3
    rbit    r4, r4
    rbit    r5, r5
    rbit    r6, r6
    rbit    r7, r7
    rbit    r8, r8
    rbit    r9, r9
    rbit    r10, r10
    rbit    r11, r11
    rbit    r12, r12

    // loop 5
    rbit    r1, r1
    rbit    r2, r2
    rbit    r3, r3
    rbit    r4, r4
    rbit    r5, r5
    rbit    r6, r6
    rbit    r7, r7
    rbit    r8, r8
    rbit    r9, r9
    rbit    r10, r10
    rbit    r11, r11
    rbit    r12, r12

    subs    r0, r0, #1
    bne     rbitMaxTest_LOOP
    pop     {r4-r11, pc}


_revMinTest:

    push    {r4-r11, lr}

revMinTest_LOOP:

    // loop 1
    rev     r2, r1
    rev     r3, r2
    rev     r4, r3
    rev     r5, r4
    rev     r6, r5
    rev     r7, r6
    rev     r8, r7
    rev     r9, r8
    rev     r10, r9
    rev     r11, r10
    rev     r12, r11
    rev     r1, r12

    // loop 2
    rev     r2, r1
    rev     r3, r2
    rev     r4, r3
    rev     r5, r4
    rev     r6, r5
    rev     r7, r6
    rev     r8, r7
    rev     r9, r8
    rev     r10, r9
    rev     r11, r10
    rev     r12, r11
    rev     r1, r12

    // loop 3
    rev     r2, r1
    rev     r3, r2
    rev     r4, r3
    rev     r5, r4
    rev     r6, r5
    rev     r7, r6
    rev     r8, r7
    rev     r9, r8
    rev     r10, r9
    rev     r11, r10
    rev     r12, r11
    rev     r1, r12

    // loop 4
    rev     r2, r1
    rev     r3, r2
    rev     r4, r3
    rev     r5, r4
    rev     r6, r5
    rev     r7, r6
    rev     r8, r7
    rev     r9, r8
    rev     r10, r9
    rev     r11, r10
    rev     r12, r11
    rev     r1, r12

    // loop 5
    rev     r2, r1
    rev     r3, r2
    rev     r4, r3
    rev     r5, r4
    rev     r6, r5
    rev     r7, r6
    rev     r8, r7
    rev     r9, r8
    rev     r10, r9
    rev     r11, r10
    rev     r12, r11
    rev     r1, r12

    subs    r0, r0, #1
    bne     revMinTest_LOOP
    pop     {r4-r11, pc}

_revMaxTest:

    push    {r4-r11, lr}

revMaxTest_LOOP:

    // loop 1
    rev     r1, r1
    rev     r2, r2
    rev     r3, r3
    rev     r4, r4
    rev     r5, r5
    rev     r6, r6
    rev     r7, r7
    rev     r8, r8
    rev     r9, r9
    rev     r10, r10
    rev     r11, r11
    rev     r12, r12

    // loop 2
    rev     r1, r1
    rev     r2, r2
    rev     r3, r3
    rev     r4, r4
    rev     r5, r5
    rev     r6, r6
    rev     r7, r7
    rev     r8, r8
    rev     r9, r9
    rev     r10, r10
    rev     r11, r11
    rev     r12, r12

    // loop 3
    rev     r1, r1
    rev     r2, r2
    rev     r3, r3
    rev     r4, r4
    rev     r5, r5
    rev     r6, r6
    rev     r7, r7
    rev     r8, r8
    rev     r9, r9
    rev     r10, r10
    rev     r11, r11
    rev     r12, r12

    // loop 4
    rev     r1, r1
    rev     r2, r2
    rev     r3, r3
    rev     r4, r4
    rev     r5, r5
    rev     r6, r6
    rev     r7, r7
    rev     r8, r8
    rev     r9, r9
    rev     r10, r10
    rev     r11, r11
    rev     r12, r12

    // loop 5
    rev     r1, r1
    rev     r2, r2
    rev     r3, r3
    rev     r4, r4
    rev     r5, r5
    rev     r6, r6
    rev     r7, r7
    rev     r8, r8
    rev     r9, r9
    rev     r10, r10
    rev     r11, r11
    rev     r12, r12

    subs    r0, r0, #1
    bne     revMaxTest_LOOP
    pop     {r4-r11, pc}


_rev16MinTest:

    push    {r4-r11, lr}

rev16MinTest_LOOP:

    // loop 1
    rev16   r2, r1
    rev16   r3, r2
    rev16   r4, r3
    rev16   r5, r4
    rev16   r6, r5
    rev16   r7, r6
    rev16   r8, r7
    rev16   r9, r8
    rev16   r10, r9
    rev16   r11, r10
    rev16   r12, r11
    rev16   r1, r12

    // loop 2
    rev16   r2, r1
    rev16   r3, r2
    rev16   r4, r3
    rev16   r5, r4
    rev16   r6, r5
    rev16   r7, r6
    rev16   r8, r7
    rev16   r9, r8
    rev16   r10, r9
    rev16   r11, r10
    rev16   r12, r11
    rev16   r1, r12

    // loop 3
    rev16   r2, r1
    rev16   r3, r2
    rev16   r4, r3
    rev16   r5, r4
    rev16   r6, r5
    rev16   r7, r6
    rev16   r8, r7
    rev16   r9, r8
    rev16   r10, r9
    rev16   r11, r10
    rev16   r12, r11
    rev16   r1, r12

    // loop 4
    rev16   r2, r1
    rev16   r3, r2
    rev16   r4, r3
    rev16   r5, r4
    rev16   r6, r5
    rev16   r7, r6
    rev16   r8, r7
    rev16   r9, r8
    rev16   r10, r9
    rev16   r11, r10
    rev16   r12, r11
    rev16   r1, r12

    // loop 5
    rev16   r2, r1
    rev16   r3, r2
    rev16   r4, r3
    rev16   r5, r4
    rev16   r6, r5
    rev16   r7, r6
    rev16   r8, r7
    rev16   r9, r8
    rev16   r10, r9
    rev16   r11, r10
    rev16   r12, r11
    rev16   r1, r12

    subs    r0, r0, #1
    bne     rev16MinTest_LOOP
    pop     {r4-r11, pc}

_rev16MaxTest:

    push    {r4-r11, lr}

rev16MaxTest_LOOP:

    // loop 1
    rev16   r1, r1
    rev16   r2, r2
    rev16   r3, r3
    rev16   r4, r4
    rev16   r5, r5
    rev16   r6, r6
    rev16   r7, r7
    rev16   r8, r8
    rev16   r9, r9
    rev16   r10, r10
    rev16   r11, r11
    rev16   r12, r12

    // loop 2
    rev16   r1, r1
    rev16   r2, r2
    rev16   r3, r3
    rev16   r4, r4
    rev16   r5, r5
    rev16   r6, r6
    rev16   r7, r7
    rev16   r8, r8
    rev16   r9, r9
    rev16   r10, r10
    rev16   r11, r11
    rev16   r12, r12

    // loop 3
    rev16   r1, r1
    rev16   r2, r2
    rev16   r3, r3
    rev16   r4, r4
    rev16   r5, r5
    rev16   r6, r6
    rev16   r7, r7
    rev16   r8, r8
    rev16   r9, r9
    rev16   r10, r10
    rev16   r11, r11
    rev16   r12, r12

    // loop 4
    rev16   r1, r1
    rev16   r2, r2
    rev16   r3, r3
    rev16   r4, r4
    rev16   r5, r5
    rev16   r6, r6
    rev16   r7, r7
    rev16   r8, r8
    rev16   r9, r9
    rev16   r10, r10
    rev16   r11, r11
    rev16   r12, r12

    // loop 5
    rev16   r1, r1
    rev16   r2, r2
    rev16   r3, r3
    rev16   r4, r4
    rev16   r5, r5
    rev16   r6, r6
    rev16   r7, r7
    rev16   r8, r8
    rev16   r9, r9
    rev16   r10, r10
    rev16   r11, r11
    rev16   r12, r12

    subs    r0, r0, #1
    bne     rev16MaxTest_LOOP
    pop     {r4-r11, pc}


_revshMinTest:

    push    {r4-r11, lr}

revshMinTest_LOOP:

    // loop 1
    revsh   r2, r1
    revsh   r3, r2
    revsh   r4, r3
    revsh   r5, r4
    revsh   r6, r5
    revsh   r7, r6
    revsh   r8, r7
    revsh   r9, r8
    revsh   r10, r9
    revsh   r11, r10
    revsh   r12, r11
    revsh   r1, r12

    // loop 2
    revsh   r2, r1
    revsh   r3, r2
    revsh   r4, r3
    revsh   r5, r4
    revsh   r6, r5
    revsh   r7, r6
    revsh   r8, r7
    revsh   r9, r8
    revsh   r10, r9
    revsh   r11, r10
    revsh   r12, r11
    revsh   r1, r12

    // loop 3
    revsh   r2, r1
    revsh   r3, r2
    revsh   r4, r3
    revsh   r5, r4
    revsh   r6, r5
    revsh   r7, r6
    revsh   r8, r7
    revsh   r9, r8
    revsh   r10, r9
    revsh   r11, r10
    revsh   r12, r11
    revsh   r1, r12

    // loop 4
    revsh   r2, r1
    revsh   r3, r2
    revsh   r4, r3
    revsh   r5, r4
    revsh   r6, r5
    revsh   r7, r6
    revsh   r8, r7
    revsh   r9, r8
    revsh   r10, r9
    revsh   r11, r10
    revsh   r12, r11
    revsh   r1, r12

    // loop 5
    revsh   r2, r1
    revsh   r3, r2
    revsh   r4, r3
    revsh   r5, r4
    revsh   r6, r5
    revsh   r7, r6
    revsh   r8, r7
    revsh   r9, r8
    revsh   r10, r9
    revsh   r11, r10
    revsh   r12, r11
    revsh   r1, r12

    subs    r0, r0, #1
    bne     revshMinTest_LOOP
    pop     {r4-r11, pc}

_revshMaxTest:

    push    {r4-r11, lr}

revshMaxTest_LOOP:

    // loop 1
    revsh   r1, r1
    revsh   r2, r2
    revsh   r3, r3
    revsh   r4, r4
    revsh   r5, r5
    revsh   r6, r6
    revsh   r7, r7
    revsh   r8, r8
    revsh   r9, r9
    revsh   r10, r10
    revsh   r11, r11
    revsh   r12, r12

    // loop 2
    revsh   r1, r1
    revsh   r2, r2
    revsh   r3, r3
    revsh   r4, r4
    revsh   r5, r5
    revsh   r6, r6
    revsh   r7, r7
    revsh   r8, r8
    revsh   r9, r9
    revsh   r10, r10
    revsh   r11, r11
    revsh   r12, r12

    // loop 3
    revsh   r1, r1
    revsh   r2, r2
    revsh   r3, r3
    revsh   r4, r4
    revsh   r5, r5
    revsh   r6, r6
    revsh   r7, r7
    revsh   r8, r8
    revsh   r9, r9
    revsh   r10, r10
    revsh   r11, r11
    revsh   r12, r12

    // loop 4
    revsh   r1, r1
    revsh   r2, r2
    revsh   r3, r3
    revsh   r4, r4
    revsh   r5, r5
    revsh   r6, r6
    revsh   r7, r7
    revsh   r8, r8
    revsh   r9, r9
    revsh   r10, r10
    revsh   r11, r11
    revsh   r12, r12

    // loop 5
    revsh   r1, r1
    revsh   r2, r2
    revsh   r3, r3
    revsh   r4, r4
    revsh   r5, r5
    revsh   r6, r6
    revsh   r7, r7
    revsh   r8, r8
    revsh   r9, r9
    revsh   r10, r10
    revsh   r11, r11
    revsh   r12, r12

    subs    r0, r0, #1
    bne     revshMaxTest_LOOP
    pop     {r4-r11, pc}


_rorImmMinTest:

    push    {r4-r11, lr}

rorImmMinTest_LOOP:

    // loop 1
    ror     r2, r1, #1
    ror     r3, r2, #2
    ror     r4, r3, #3
    ror     r5, r4, #4
    ror     r6, r5, #5
    ror     r7, r6, #6
    ror     r8, r7, #7
    ror     r9, r8, #8
    ror     r10, r9, #9
    ror     r11, r10, #10
    ror     r12, r11, #11
    ror     r1, r12, #12

    // loop 2
    ror     r2, r1, #1
    ror     r3, r2, #2
    ror     r4, r3, #3
    ror     r5, r4, #4
    ror     r6, r5, #5
    ror     r7, r6, #6
    ror     r8, r7, #7
    ror     r9, r8, #8
    ror     r10, r9, #9
    ror     r11, r10, #10
    ror     r12, r11, #11
    ror     r1, r12, #12

    // loop 3
    ror     r2, r1, #1
    ror     r3, r2, #2
    ror     r4, r3, #3
    ror     r5, r4, #4
    ror     r6, r5, #5
    ror     r7, r6, #6
    ror     r8, r7, #7
    ror     r9, r8, #8
    ror     r10, r9, #9
    ror     r11, r10, #10
    ror     r12, r11, #11
    ror     r1, r12, #12

    // loop 4
    ror     r2, r1, #1
    ror     r3, r2, #2
    ror     r4, r3, #3
    ror     r5, r4, #4
    ror     r6, r5, #5
    ror     r7, r6, #6
    ror     r8, r7, #7
    ror     r9, r8, #8
    ror     r10, r9, #9
    ror     r11, r10, #10
    ror     r12, r11, #11
    ror     r1, r12, #12

    // loop 5
    ror     r2, r1, #1
    ror     r3, r2, #2
    ror     r4, r3, #3
    ror     r5, r4, #4
    ror     r6, r5, #5
    ror     r7, r6, #6
    ror     r8, r7, #7
    ror     r9, r8, #8
    ror     r10, r9, #9
    ror     r11, r10, #10
    ror     r12, r11, #11
    ror     r1, r12, #12

    subs    r0, r0, #1
    bne     rorImmMinTest_LOOP
    pop     {r4-r11, pc}

_rorImmMaxTest:

    push    {r4-r11, lr}

rorImmMaxTest_LOOP:

    // loop 1
    ror     r1, r1, #1
    ror     r2, r2, #2
    ror     r3, r3, #3
    ror     r4, r4, #4
    ror     r5, r5, #5
    ror     r6, r6, #6
    ror     r7, r7, #7
    ror     r8, r8, #8
    ror     r9, r9, #9
    ror     r10, r10, #10
    ror     r11, r11, #11
    ror     r12, r12, #12

    // loop 2
    ror     r1, r1, #1
    ror     r2, r2, #2
    ror     r3, r3, #3
    ror     r4, r4, #4
    ror     r5, r5, #5
    ror     r6, r6, #6
    ror     r7, r7, #7
    ror     r8, r8, #8
    ror     r9, r9, #9
    ror     r10, r10, #10
    ror     r11, r11, #11
    ror     r12, r12, #12

    // loop 3
    ror     r1, r1, #1
    ror     r2, r2, #2
    ror     r3, r3, #3
    ror     r4, r4, #4
    ror     r5, r5, #5
    ror     r6, r6, #6
    ror     r7, r7, #7
    ror     r8, r8, #8
    ror     r9, r9, #9
    ror     r10, r10, #10
    ror     r11, r11, #11
    ror     r12, r12, #12

    // loop 4
    ror     r1, r1, #1
    ror     r2, r2, #2
    ror     r3, r3, #3
    ror     r4, r4, #4
    ror     r5, r5, #5
    ror     r6, r6, #6
    ror     r7, r7, #7
    ror     r8, r8, #8
    ror     r9, r9, #9
    ror     r10, r10, #10
    ror     r11, r11, #11
    ror     r12, r12, #12

    // loop 5
    ror     r1, r1, #1
    ror     r2, r2, #2
    ror     r3, r3, #3
    ror     r4, r4, #4
    ror     r5, r5, #5
    ror     r6, r6, #6
    ror     r7, r7, #7
    ror     r8, r8, #8
    ror     r9, r9, #9
    ror     r10, r10, #10
    ror     r11, r11, #11
    ror     r12, r12, #12

    subs    r0, r0, #1
    bne     rorImmMaxTest_LOOP
    pop     {r4-r11, pc}

_rorRegMinTest:

    push    {r4-r11, lr}

rorRegMinTest_LOOP:

    // loop 1
    ror     r2, r2, r1
    ror     r3, r3, r2
    ror     r4, r4, r3
    ror     r5, r5, r4
    ror     r6, r6, r5
    ror     r7, r7, r6
    ror     r8, r8, r7
    ror     r9, r9, r8
    ror     r10, r10, r9
    ror     r11, r11, r10
    ror     r12, r12, r11
    ror     r1, r1, r12

    // loop 2
    ror     r2, r2, r1
    ror     r3, r3, r2
    ror     r4, r4, r3
    ror     r5, r5, r4
    ror     r6, r6, r5
    ror     r7, r7, r6
    ror     r8, r8, r7
    ror     r9, r9, r8
    ror     r10, r10, r9
    ror     r11, r11, r10
    ror     r12, r12, r11
    ror     r1, r1, r12

    // loop 3
    ror     r2, r2, r1
    ror     r3, r3, r2
    ror     r4, r4, r3
    ror     r5, r5, r4
    ror     r6, r6, r5
    ror     r7, r7, r6
    ror     r8, r8, r7
    ror     r9, r9, r8
    ror     r10, r10, r9
    ror     r11, r11, r10
    ror     r12, r12, r11
    ror     r1, r1, r12

    // loop 4
    ror     r2, r2, r1
    ror     r3, r3, r2
    ror     r4, r4, r3
    ror     r5, r5, r4
    ror     r6, r6, r5
    ror     r7, r7, r6
    ror     r8, r8, r7
    ror     r9, r9, r8
    ror     r10, r10, r9
    ror     r11, r11, r10
    ror     r12, r12, r11
    ror     r1, r1, r12

    // loop 5
    ror     r2, r2, r1
    ror     r3, r3, r2
    ror     r4, r4, r3
    ror     r5, r5, r4
    ror     r6, r6, r5
    ror     r7, r7, r6
    ror     r8, r8, r7
    ror     r9, r9, r8
    ror     r10, r10, r9
    ror     r11, r11, r10
    ror     r12, r12, r11
    ror     r1, r1, r12

    subs    r0, r0, #1
    bne     rorRegMinTest_LOOP
    pop     {r4-r11, pc}

_rorRegMaxTest:

    push    {r4-r11, lr}

rorRegMaxTest_LOOP:

    // loop 1
    ror     r1, r1, r1
    ror     r2, r2, r2
    ror     r3, r3, r3
    ror     r4, r4, r4
    ror     r5, r5, r5
    ror     r6, r6, r6
    ror     r7, r7, r7
    ror     r8, r8, r8
    ror     r9, r9, r9
    ror     r10, r10, r10
    ror     r11, r11, r11
    ror     r12, r12, r12

    // loop 2
    ror     r1, r1, r1
    ror     r2, r2, r2
    ror     r3, r3, r3
    ror     r4, r4, r4
    ror     r5, r5, r5
    ror     r6, r6, r6
    ror     r7, r7, r7
    ror     r8, r8, r8
    ror     r9, r9, r9
    ror     r10, r10, r10
    ror     r11, r11, r11
    ror     r12, r12, r12

    // loop 3
    ror     r1, r1, r1
    ror     r2, r2, r2
    ror     r3, r3, r3
    ror     r4, r4, r4
    ror     r5, r5, r5
    ror     r6, r6, r6
    ror     r7, r7, r7
    ror     r8, r8, r8
    ror     r9, r9, r9
    ror     r10, r10, r10
    ror     r11, r11, r11
    ror     r12, r12, r12

    // loop 4
    ror     r1, r1, r1
    ror     r2, r2, r2
    ror     r3, r3, r3
    ror     r4, r4, r4
    ror     r5, r5, r5
    ror     r6, r6, r6
    ror     r7, r7, r7
    ror     r8, r8, r8
    ror     r9, r9, r9
    ror     r10, r10, r10
    ror     r11, r11, r11
    ror     r12, r12, r12

    // loop 5
    ror     r1, r1, r1
    ror     r2, r2, r2
    ror     r3, r3, r3
    ror     r4, r4, r4
    ror     r5, r5, r5
    ror     r6, r6, r6
    ror     r7, r7, r7
    ror     r8, r8, r8
    ror     r9, r9, r9
    ror     r10, r10, r10
    ror     r11, r11, r11
    ror     r12, r12, r12

    subs    r0, r0, #1
    bne     rorRegMaxTest_LOOP
    pop     {r4-r11, pc}


_rrxMinTest:

    push    {r4-r11, lr}

rrxMinTest_LOOP:

    // loop 1
    rrx     r2, r1
    rrx     r3, r2
    rrx     r4, r3
    rrx     r5, r4
    rrx     r6, r5
    rrx     r7, r6
    rrx     r8, r7
    rrx     r9, r8
    rrx     r10, r9
    rrx     r11, r10
    rrx     r12, r11
    rrx     r1, r12

    // loop 2
    rrx     r2, r1
    rrx     r3, r2
    rrx     r4, r3
    rrx     r5, r4
    rrx     r6, r5
    rrx     r7, r6
    rrx     r8, r7
    rrx     r9, r8
    rrx     r10, r9
    rrx     r11, r10
    rrx     r12, r11
    rrx     r1, r12

    // loop 3
    rrx     r2, r1
    rrx     r3, r2
    rrx     r4, r3
    rrx     r5, r4
    rrx     r6, r5
    rrx     r7, r6
    rrx     r8, r7
    rrx     r9, r8
    rrx     r10, r9
    rrx     r11, r10
    rrx     r12, r11
    rrx     r1, r12

    // loop 4
    rrx     r2, r1
    rrx     r3, r2
    rrx     r4, r3
    rrx     r5, r4
    rrx     r6, r5
    rrx     r7, r6
    rrx     r8, r7
    rrx     r9, r8
    rrx     r10, r9
    rrx     r11, r10
    rrx     r12, r11
    rrx     r1, r12

    // loop 5
    rrx     r2, r1
    rrx     r3, r2
    rrx     r4, r3
    rrx     r5, r4
    rrx     r6, r5
    rrx     r7, r6
    rrx     r8, r7
    rrx     r9, r8
    rrx     r10, r9
    rrx     r11, r10
    rrx     r12, r11
    rrx     r1, r12

    subs    r0, r0, #1
    bne     rrxMinTest_LOOP
    pop     {r4-r11, pc}

_rrxMaxTest:

    push    {r4-r11, lr}

rrxMaxTest_LOOP:

    // loop 1
    rrx     r1, r1
    rrx     r2, r2
    rrx     r3, r2
    rrx     r4, r4
    rrx     r5, r5
    rrx     r6, r6
    rrx     r7, r7
    rrx     r8, r8
    rrx     r9, r9
    rrx     r10, r10
    rrx     r11, r11
    rrx     r12, r12

    // loop 2
    rrx     r1, r1
    rrx     r2, r2
    rrx     r3, r2
    rrx     r4, r4
    rrx     r5, r5
    rrx     r6, r6
    rrx     r7, r7
    rrx     r8, r8
    rrx     r9, r9
    rrx     r10, r10
    rrx     r11, r11
    rrx     r12, r12

    // loop 3
    rrx     r1, r1
    rrx     r2, r2
    rrx     r3, r2
    rrx     r4, r4
    rrx     r5, r5
    rrx     r6, r6
    rrx     r7, r7
    rrx     r8, r8
    rrx     r9, r9
    rrx     r10, r10
    rrx     r11, r11
    rrx     r12, r12

    // loop 4
    rrx     r1, r1
    rrx     r2, r2
    rrx     r3, r2
    rrx     r4, r4
    rrx     r5, r5
    rrx     r6, r6
    rrx     r7, r7
    rrx     r8, r8
    rrx     r9, r9
    rrx     r10, r10
    rrx     r11, r11
    rrx     r12, r12

    // loop 5
    rrx     r1, r1
    rrx     r2, r2
    rrx     r3, r2
    rrx     r4, r4
    rrx     r5, r5
    rrx     r6, r6
    rrx     r7, r7
    rrx     r8, r8
    rrx     r9, r9
    rrx     r10, r10
    rrx     r11, r11
    rrx     r12, r12

    subs    r0, r0, #1
    bne     rrxMaxTest_LOOP
    pop     {r4-r11, pc}


_rsbImmMinTest:

    push    {r4-r11, lr}

rsbImmMinTest_LOOP:

    // loop 1
    rsb     r2, r1, #1
    rsb     r3, r2, #2
    rsb     r4, r3, #3
    rsb     r5, r4, #4
    rsb     r6, r5, #5
    rsb     r7, r6, #6
    rsb     r8, r7, #7
    rsb     r9, r8, #8
    rsb     r10, r9, #9
    rsb     r11, r10, #10
    rsb     r12, r11, #11
    rsb     r1, r12, #12

    // loop 2
    rsb     r2, r1, #1
    rsb     r3, r2, #2
    rsb     r4, r3, #3
    rsb     r5, r4, #4
    rsb     r6, r5, #5
    rsb     r7, r6, #6
    rsb     r8, r7, #7
    rsb     r9, r8, #8
    rsb     r10, r9, #9
    rsb     r11, r10, #10
    rsb     r12, r11, #11
    rsb     r1, r12, #12

    // loop 3
    rsb     r2, r1, #1
    rsb     r3, r2, #2
    rsb     r4, r3, #3
    rsb     r5, r4, #4
    rsb     r6, r5, #5
    rsb     r7, r6, #6
    rsb     r8, r7, #7
    rsb     r9, r8, #8
    rsb     r10, r9, #9
    rsb     r11, r10, #10
    rsb     r12, r11, #11
    rsb     r1, r12, #12

    // loop 4
    rsb     r2, r1, #1
    rsb     r3, r2, #2
    rsb     r4, r3, #3
    rsb     r5, r4, #4
    rsb     r6, r5, #5
    rsb     r7, r6, #6
    rsb     r8, r7, #7
    rsb     r9, r8, #8
    rsb     r10, r9, #9
    rsb     r11, r10, #10
    rsb     r12, r11, #11
    rsb     r1, r12, #12

    // loop 5
    rsb     r2, r1, #1
    rsb     r3, r2, #2
    rsb     r4, r3, #3
    rsb     r5, r4, #4
    rsb     r6, r5, #5
    rsb     r7, r6, #6
    rsb     r8, r7, #7
    rsb     r9, r8, #8
    rsb     r10, r9, #9
    rsb     r11, r10, #10
    rsb     r12, r11, #11
    rsb     r1, r12, #12

    subs    r0, r0, #1
    bne     rsbImmMinTest_LOOP
    pop     {r4-r11, pc}

_rsbImmMaxTest:

    push    {r4-r11, lr}

rsbImmMaxTest_LOOP:

    // loop 1
    rsb     r1, r1, #1
    rsb     r2, r2, #2
    rsb     r3, r3, #3
    rsb     r4, r4, #4
    rsb     r5, r5, #5
    rsb     r6, r6, #6
    rsb     r7, r7, #7
    rsb     r8, r8, #8
    rsb     r9, r9, #9
    rsb     r10, r10, #10
    rsb     r11, r11, #11
    rsb     r12, r12, #12

    // loop 2
    rsb     r1, r1, #1
    rsb     r2, r2, #2
    rsb     r3, r3, #3
    rsb     r4, r4, #4
    rsb     r5, r5, #5
    rsb     r6, r6, #6
    rsb     r7, r7, #7
    rsb     r8, r8, #8
    rsb     r9, r9, #9
    rsb     r10, r10, #10
    rsb     r11, r11, #11
    rsb     r12, r12, #12

    // loop 3
    rsb     r1, r1, #1
    rsb     r2, r2, #2
    rsb     r3, r3, #3
    rsb     r4, r4, #4
    rsb     r5, r5, #5
    rsb     r6, r6, #6
    rsb     r7, r7, #7
    rsb     r8, r8, #8
    rsb     r9, r9, #9
    rsb     r10, r10, #10
    rsb     r11, r11, #11
    rsb     r12, r12, #12

    // loop 4
    rsb     r1, r1, #1
    rsb     r2, r2, #2
    rsb     r3, r3, #3
    rsb     r4, r4, #4
    rsb     r5, r5, #5
    rsb     r6, r6, #6
    rsb     r7, r7, #7
    rsb     r8, r8, #8
    rsb     r9, r9, #9
    rsb     r10, r10, #10
    rsb     r11, r11, #11
    rsb     r12, r12, #12

    // loop 5
    rsb     r1, r1, #1
    rsb     r2, r2, #2
    rsb     r3, r3, #3
    rsb     r4, r4, #4
    rsb     r5, r5, #5
    rsb     r6, r6, #6
    rsb     r7, r7, #7
    rsb     r8, r8, #8
    rsb     r9, r9, #9
    rsb     r10, r10, #10
    rsb     r11, r11, #11
    rsb     r12, r12, #12

    subs    r0, r0, #1
    bne     rsbImmMaxTest_LOOP
    pop     {r4-r11, pc}

_rsbRegMinTest:

    push    {r4-r11, lr}

rsbRegMinTest_LOOP:

    // loop 1
    rsb     r2, r2, r1, LSL #1
    rsb     r3, r3, r2, LSL #2
    rsb     r4, r4, r3, LSL #3
    rsb     r5, r5, r4, LSL #4
    rsb     r6, r6, r5, LSL #5
    rsb     r7, r7, r6, LSL #6
    rsb     r8, r8, r7, LSL #7
    rsb     r9, r9, r8, LSL #8
    rsb     r10, r10, r9, LSL #9
    rsb     r11, r11, r10, LSL #10
    rsb     r12, r12, r11, LSL #11
    rsb     r1, r1, r12, LSL #12

    // loop 2
    rsb     r2, r2, r1, LSL #1
    rsb     r3, r3, r2, LSL #2
    rsb     r4, r4, r3, LSL #3
    rsb     r5, r5, r4, LSL #4
    rsb     r6, r6, r5, LSL #5
    rsb     r7, r7, r6, LSL #6
    rsb     r8, r8, r7, LSL #7
    rsb     r9, r9, r8, LSL #8
    rsb     r10, r10, r9, LSL #9
    rsb     r11, r11, r10, LSL #10
    rsb     r12, r12, r11, LSL #11
    rsb     r1, r1, r12, LSL #12

    // loop 3
    rsb     r2, r2, r1, LSL #1
    rsb     r3, r3, r2, LSL #2
    rsb     r4, r4, r3, LSL #3
    rsb     r5, r5, r4, LSL #4
    rsb     r6, r6, r5, LSL #5
    rsb     r7, r7, r6, LSL #6
    rsb     r8, r8, r7, LSL #7
    rsb     r9, r9, r8, LSL #8
    rsb     r10, r10, r9, LSL #9
    rsb     r11, r11, r10, LSL #10
    rsb     r12, r12, r11, LSL #11
    rsb     r1, r1, r12, LSL #12

    // loop 4
    rsb     r2, r2, r1, LSL #1
    rsb     r3, r3, r2, LSL #2
    rsb     r4, r4, r3, LSL #3
    rsb     r5, r5, r4, LSL #4
    rsb     r6, r6, r5, LSL #5
    rsb     r7, r7, r6, LSL #6
    rsb     r8, r8, r7, LSL #7
    rsb     r9, r9, r8, LSL #8
    rsb     r10, r10, r9, LSL #9
    rsb     r11, r11, r10, LSL #10
    rsb     r12, r12, r11, LSL #11
    rsb     r1, r1, r12, LSL #12

    // loop 5
    rsb     r2, r2, r1, LSL #1
    rsb     r3, r3, r2, LSL #2
    rsb     r4, r4, r3, LSL #3
    rsb     r5, r5, r4, LSL #4
    rsb     r6, r6, r5, LSL #5
    rsb     r7, r7, r6, LSL #6
    rsb     r8, r8, r7, LSL #7
    rsb     r9, r9, r8, LSL #8
    rsb     r10, r10, r9, LSL #9
    rsb     r11, r11, r10, LSL #10
    rsb     r12, r12, r11, LSL #11
    rsb     r1, r1, r12, LSL #12

    subs    r0, r0, #1
    bne     rsbRegMinTest_LOOP
    pop     {r4-r11, pc}

_rsbRegMaxTest:

    push    {r4-r11, lr}

rsbRegMaxTest_LOOP:

    // loop 1
    rsb     r1, r1, r1
    rsb     r2, r2, r2
    rsb     r3, r3, r3
    rsb     r4, r4, r4
    rsb     r5, r5, r5
    rsb     r6, r6, r6
    rsb     r7, r7, r7
    rsb     r8, r8, r8
    rsb     r9, r9, r9
    rsb     r10, r10, r10
    rsb     r11, r11, r11
    rsb     r12, r12, r12

    // loop 2
    rsb     r1, r1, r1
    rsb     r2, r2, r2
    rsb     r3, r3, r3
    rsb     r4, r4, r4
    rsb     r5, r5, r5
    rsb     r6, r6, r6
    rsb     r7, r7, r7
    rsb     r8, r8, r8
    rsb     r9, r9, r9
    rsb     r10, r10, r10
    rsb     r11, r11, r11
    rsb     r12, r12, r12

    // loop 3
    rsb     r1, r1, r1
    rsb     r2, r2, r2
    rsb     r3, r3, r3
    rsb     r4, r4, r4
    rsb     r5, r5, r5
    rsb     r6, r6, r6
    rsb     r7, r7, r7
    rsb     r8, r8, r8
    rsb     r9, r9, r9
    rsb     r10, r10, r10
    rsb     r11, r11, r11
    rsb     r12, r12, r12

    // loop 4
    rsb     r1, r1, r1
    rsb     r2, r2, r2
    rsb     r3, r3, r3
    rsb     r4, r4, r4
    rsb     r5, r5, r5
    rsb     r6, r6, r6
    rsb     r7, r7, r7
    rsb     r8, r8, r8
    rsb     r9, r9, r9
    rsb     r10, r10, r10
    rsb     r11, r11, r11
    rsb     r12, r12, r12

    // loop 5
    rsb     r1, r1, r1
    rsb     r2, r2, r2
    rsb     r3, r3, r3
    rsb     r4, r4, r4
    rsb     r5, r5, r5
    rsb     r6, r6, r6
    rsb     r7, r7, r7
    rsb     r8, r8, r8
    rsb     r9, r9, r9
    rsb     r10, r10, r10
    rsb     r11, r11, r11
    rsb     r12, r12, r12

    subs    r0, r0, #1
    bne     rsbRegMaxTest_LOOP
    pop     {r4-r11, pc}

_rsbShftMinTest:

    push    {r4-r11, lr}

rsbShftMinTest_LOOP:

    // loop 1
    rsb     r2, r2, r1, LSL r1
    rsb     r3, r3, r2, LSL r2
    rsb     r4, r4, r3, LSL r3
    rsb     r5, r5, r4, LSL r4
    rsb     r6, r6, r5, LSL r5
    rsb     r7, r7, r6, LSL r6
    rsb     r8, r8, r7, LSL r7
    rsb     r9, r9, r8, LSL r8
    rsb     r10, r10, r9, LSL r9
    rsb     r11, r11, r10, LSL r10
    rsb     r12, r12, r11, LSL r11
    rsb     r1, r1, r12, LSL r12

    // loop 2
    rsb     r2, r2, r1, LSL r1
    rsb     r3, r3, r2, LSL r2
    rsb     r4, r4, r3, LSL r3
    rsb     r5, r5, r4, LSL r4
    rsb     r6, r6, r5, LSL r5
    rsb     r7, r7, r6, LSL r6
    rsb     r8, r8, r7, LSL r7
    rsb     r9, r9, r8, LSL r8
    rsb     r10, r10, r9, LSL r9
    rsb     r11, r11, r10, LSL r10
    rsb     r12, r12, r11, LSL r11
    rsb     r1, r1, r12, LSL r12

    // loop 3
    rsb     r2, r2, r1, LSL r1
    rsb     r3, r3, r2, LSL r2
    rsb     r4, r4, r3, LSL r3
    rsb     r5, r5, r4, LSL r4
    rsb     r6, r6, r5, LSL r5
    rsb     r7, r7, r6, LSL r6
    rsb     r8, r8, r7, LSL r7
    rsb     r9, r9, r8, LSL r8
    rsb     r10, r10, r9, LSL r9
    rsb     r11, r11, r10, LSL r10
    rsb     r12, r12, r11, LSL r11
    rsb     r1, r1, r12, LSL r12

    // loop 4
    rsb     r2, r2, r1, LSL r1
    rsb     r3, r3, r2, LSL r2
    rsb     r4, r4, r3, LSL r3
    rsb     r5, r5, r4, LSL r4
    rsb     r6, r6, r5, LSL r5
    rsb     r7, r7, r6, LSL r6
    rsb     r8, r8, r7, LSL r7
    rsb     r9, r9, r8, LSL r8
    rsb     r10, r10, r9, LSL r9
    rsb     r11, r11, r10, LSL r10
    rsb     r12, r12, r11, LSL r11
    rsb     r1, r1, r12, LSL r12

    // loop 5
    rsb     r2, r2, r1, LSL r1
    rsb     r3, r3, r2, LSL r2
    rsb     r4, r4, r3, LSL r3
    rsb     r5, r5, r4, LSL r4
    rsb     r6, r6, r5, LSL r5
    rsb     r7, r7, r6, LSL r6
    rsb     r8, r8, r7, LSL r7
    rsb     r9, r9, r8, LSL r8
    rsb     r10, r10, r9, LSL r9
    rsb     r11, r11, r10, LSL r10
    rsb     r12, r12, r11, LSL r11
    rsb     r1, r1, r12, LSL r12

    subs    r0, r0, #1
    bne     rsbShftMinTest_LOOP
    pop     {r4-r11, pc}

_rsbShftMaxTest:

    push    {r4-r11, lr}

rsbShftMaxTest_LOOP:

    // loop 1
    rsb     r1, r1, r1, LSL r1
    rsb     r2, r2, r2, LSL r2
    rsb     r3, r3, r3, LSL r3
    rsb     r4, r4, r4, LSL r4
    rsb     r5, r5, r5, LSL r5
    rsb     r6, r6, r6, LSL r6
    rsb     r7, r7, r7, LSL r7
    rsb     r8, r8, r8, LSL r8
    rsb     r9, r9, r9, LSL r9
    rsb     r10, r10, r10, LSL r10
    rsb     r11, r11, r11, LSL r11
    rsb     r12, r12, r12, LSL r12

    // loop 2
    rsb     r1, r1, r1, LSL r1
    rsb     r2, r2, r2, LSL r2
    rsb     r3, r3, r3, LSL r3
    rsb     r4, r4, r4, LSL r4
    rsb     r5, r5, r5, LSL r5
    rsb     r6, r6, r6, LSL r6
    rsb     r7, r7, r7, LSL r7
    rsb     r8, r8, r8, LSL r8
    rsb     r9, r9, r9, LSL r9
    rsb     r10, r10, r10, LSL r10
    rsb     r11, r11, r11, LSL r11
    rsb     r12, r12, r12, LSL r12

    // loop 3
    rsb     r1, r1, r1, LSL r1
    rsb     r2, r2, r2, LSL r2
    rsb     r3, r3, r3, LSL r3
    rsb     r4, r4, r4, LSL r4
    rsb     r5, r5, r5, LSL r5
    rsb     r6, r6, r6, LSL r6
    rsb     r7, r7, r7, LSL r7
    rsb     r8, r8, r8, LSL r8
    rsb     r9, r9, r9, LSL r9
    rsb     r10, r10, r10, LSL r10
    rsb     r11, r11, r11, LSL r11
    rsb     r12, r12, r12, LSL r12

    // loop 4
    rsb     r1, r1, r1, LSL r1
    rsb     r2, r2, r2, LSL r2
    rsb     r3, r3, r3, LSL r3
    rsb     r4, r4, r4, LSL r4
    rsb     r5, r5, r5, LSL r5
    rsb     r6, r6, r6, LSL r6
    rsb     r7, r7, r7, LSL r7
    rsb     r8, r8, r8, LSL r8
    rsb     r9, r9, r9, LSL r9
    rsb     r10, r10, r10, LSL r10
    rsb     r11, r11, r11, LSL r11
    rsb     r12, r12, r12, LSL r12

    // loop 5
    rsb     r1, r1, r1, LSL r1
    rsb     r2, r2, r2, LSL r2
    rsb     r3, r3, r3, LSL r3
    rsb     r4, r4, r4, LSL r4
    rsb     r5, r5, r5, LSL r5
    rsb     r6, r6, r6, LSL r6
    rsb     r7, r7, r7, LSL r7
    rsb     r8, r8, r8, LSL r8
    rsb     r9, r9, r9, LSL r9
    rsb     r10, r10, r10, LSL r10
    rsb     r11, r11, r11, LSL r11
    rsb     r12, r12, r12, LSL r12

    subs    r0, r0, #1
    bne     rsbShftMaxTest_LOOP
    pop     {r4-r11, pc}


_rscImmMinTest:

    push    {r4-r11, lr}

rscImmMinTest_LOOP:

    // loop 1
    rsc     r2, r1, #1
    rsc     r3, r2, #2
    rsc     r4, r3, #3
    rsc     r5, r4, #4
    rsc     r6, r5, #5
    rsc     r7, r6, #6
    rsc     r8, r7, #7
    rsc     r9, r8, #8
    rsc     r10, r9, #9
    rsc     r11, r10, #10
    rsc     r12, r11, #11
    rsc     r1, r12, #12

    // loop 2
    rsc     r2, r1, #1
    rsc     r3, r2, #2
    rsc     r4, r3, #3
    rsc     r5, r4, #4
    rsc     r6, r5, #5
    rsc     r7, r6, #6
    rsc     r8, r7, #7
    rsc     r9, r8, #8
    rsc     r10, r9, #9
    rsc     r11, r10, #10
    rsc     r12, r11, #11
    rsc     r1, r12, #12

    // loop 3
    rsc     r2, r1, #1
    rsc     r3, r2, #2
    rsc     r4, r3, #3
    rsc     r5, r4, #4
    rsc     r6, r5, #5
    rsc     r7, r6, #6
    rsc     r8, r7, #7
    rsc     r9, r8, #8
    rsc     r10, r9, #9
    rsc     r11, r10, #10
    rsc     r12, r11, #11
    rsc     r1, r12, #12

    // loop 4
    rsc     r2, r1, #1
    rsc     r3, r2, #2
    rsc     r4, r3, #3
    rsc     r5, r4, #4
    rsc     r6, r5, #5
    rsc     r7, r6, #6
    rsc     r8, r7, #7
    rsc     r9, r8, #8
    rsc     r10, r9, #9
    rsc     r11, r10, #10
    rsc     r12, r11, #11
    rsc     r1, r12, #12

    // loop 5
    rsc     r2, r1, #1
    rsc     r3, r2, #2
    rsc     r4, r3, #3
    rsc     r5, r4, #4
    rsc     r6, r5, #5
    rsc     r7, r6, #6
    rsc     r8, r7, #7
    rsc     r9, r8, #8
    rsc     r10, r9, #9
    rsc     r11, r10, #10
    rsc     r12, r11, #11
    rsc     r1, r12, #12

    subs    r0, r0, #1
    bne     rscImmMinTest_LOOP
    pop     {r4-r11, pc}

_rscImmMaxTest:

    push    {r4-r11, lr}

rscImmMaxTest_LOOP:

    // loop 1
    rsc     r1, r1, #1
    rsc     r2, r2, #2
    rsc     r3, r3, #3
    rsc     r4, r4, #4
    rsc     r5, r5, #5
    rsc     r6, r6, #6
    rsc     r7, r7, #7
    rsc     r8, r8, #8
    rsc     r9, r9, #9
    rsc     r10, r10, #10
    rsc     r11, r11, #11
    rsc     r12, r12, #12

    // loop 2
    rsc     r1, r1, #1
    rsc     r2, r2, #2
    rsc     r3, r3, #3
    rsc     r4, r4, #4
    rsc     r5, r5, #5
    rsc     r6, r6, #6
    rsc     r7, r7, #7
    rsc     r8, r8, #8
    rsc     r9, r9, #9
    rsc     r10, r10, #10
    rsc     r11, r11, #11
    rsc     r12, r12, #12

    // loop 3
    rsc     r1, r1, #1
    rsc     r2, r2, #2
    rsc     r3, r3, #3
    rsc     r4, r4, #4
    rsc     r5, r5, #5
    rsc     r6, r6, #6
    rsc     r7, r7, #7
    rsc     r8, r8, #8
    rsc     r9, r9, #9
    rsc     r10, r10, #10
    rsc     r11, r11, #11
    rsc     r12, r12, #12

    // loop 4
    rsc     r1, r1, #1
    rsc     r2, r2, #2
    rsc     r3, r3, #3
    rsc     r4, r4, #4
    rsc     r5, r5, #5
    rsc     r6, r6, #6
    rsc     r7, r7, #7
    rsc     r8, r8, #8
    rsc     r9, r9, #9
    rsc     r10, r10, #10
    rsc     r11, r11, #11
    rsc     r12, r12, #12

    // loop 5
    rsc     r1, r1, #1
    rsc     r2, r2, #2
    rsc     r3, r3, #3
    rsc     r4, r4, #4
    rsc     r5, r5, #5
    rsc     r6, r6, #6
    rsc     r7, r7, #7
    rsc     r8, r8, #8
    rsc     r9, r9, #9
    rsc     r10, r10, #10
    rsc     r11, r11, #11
    rsc     r12, r12, #12

    subs    r0, r0, #1
    bne     rscImmMaxTest_LOOP
    pop     {r4-r11, pc}

_rscRegMinTest:

    push    {r4-r11, lr}

rscRegMinTest_LOOP:

    // loop 1
    rsc     r2, r2, r1, LSL #1
    rsc     r3, r3, r2, LSL #2
    rsc     r4, r4, r3, LSL #3
    rsc     r5, r5, r4, LSL #4
    rsc     r6, r6, r5, LSL #5
    rsc     r7, r7, r6, LSL #6
    rsc     r8, r8, r7, LSL #7
    rsc     r9, r9, r8, LSL #8
    rsc     r10, r10, r9, LSL #9
    rsc     r11, r11, r10, LSL #10
    rsc     r12, r12, r11, LSL #11
    rsc     r1, r1, r12, LSL #12

    // loop 2
    rsc     r2, r2, r1, LSL #1
    rsc     r3, r3, r2, LSL #2
    rsc     r4, r4, r3, LSL #3
    rsc     r5, r5, r4, LSL #4
    rsc     r6, r6, r5, LSL #5
    rsc     r7, r7, r6, LSL #6
    rsc     r8, r8, r7, LSL #7
    rsc     r9, r9, r8, LSL #8
    rsc     r10, r10, r9, LSL #9
    rsc     r11, r11, r10, LSL #10
    rsc     r12, r12, r11, LSL #11
    rsc     r1, r1, r12, LSL #12

    // loop 3
    rsc     r2, r2, r1, LSL #1
    rsc     r3, r3, r2, LSL #2
    rsc     r4, r4, r3, LSL #3
    rsc     r5, r5, r4, LSL #4
    rsc     r6, r6, r5, LSL #5
    rsc     r7, r7, r6, LSL #6
    rsc     r8, r8, r7, LSL #7
    rsc     r9, r9, r8, LSL #8
    rsc     r10, r10, r9, LSL #9
    rsc     r11, r11, r10, LSL #10
    rsc     r12, r12, r11, LSL #11
    rsc     r1, r1, r12, LSL #12

    // loop 4
    rsc     r2, r2, r1, LSL #1
    rsc     r3, r3, r2, LSL #2
    rsc     r4, r4, r3, LSL #3
    rsc     r5, r5, r4, LSL #4
    rsc     r6, r6, r5, LSL #5
    rsc     r7, r7, r6, LSL #6
    rsc     r8, r8, r7, LSL #7
    rsc     r9, r9, r8, LSL #8
    rsc     r10, r10, r9, LSL #9
    rsc     r11, r11, r10, LSL #10
    rsc     r12, r12, r11, LSL #11
    rsc     r1, r1, r12, LSL #12

    // loop 5
    rsc     r2, r2, r1, LSL #1
    rsc     r3, r3, r2, LSL #2
    rsc     r4, r4, r3, LSL #3
    rsc     r5, r5, r4, LSL #4
    rsc     r6, r6, r5, LSL #5
    rsc     r7, r7, r6, LSL #6
    rsc     r8, r8, r7, LSL #7
    rsc     r9, r9, r8, LSL #8
    rsc     r10, r10, r9, LSL #9
    rsc     r11, r11, r10, LSL #10
    rsc     r12, r12, r11, LSL #11
    rsc     r1, r1, r12, LSL #12

    subs    r0, r0, #1
    bne     rscRegMinTest_LOOP
    pop     {r4-r11, pc}

_rscRegMaxTest:

    push    {r4-r11, lr}

rscRegMaxTest_LOOP:

    // loop 1
    rsc     r1, r1, r1
    rsc     r2, r2, r2
    rsc     r3, r3, r3
    rsc     r4, r4, r4
    rsc     r5, r5, r5
    rsc     r6, r6, r6
    rsc     r7, r7, r7
    rsc     r8, r8, r8
    rsc     r9, r9, r9
    rsc     r10, r10, r10
    rsc     r11, r11, r11
    rsc     r12, r12, r12

    // loop 2
    rsc     r1, r1, r1
    rsc     r2, r2, r2
    rsc     r3, r3, r3
    rsc     r4, r4, r4
    rsc     r5, r5, r5
    rsc     r6, r6, r6
    rsc     r7, r7, r7
    rsc     r8, r8, r8
    rsc     r9, r9, r9
    rsc     r10, r10, r10
    rsc     r11, r11, r11
    rsc     r12, r12, r12

    // loop 3
    rsc     r1, r1, r1
    rsc     r2, r2, r2
    rsc     r3, r3, r3
    rsc     r4, r4, r4
    rsc     r5, r5, r5
    rsc     r6, r6, r6
    rsc     r7, r7, r7
    rsc     r8, r8, r8
    rsc     r9, r9, r9
    rsc     r10, r10, r10
    rsc     r11, r11, r11
    rsc     r12, r12, r12

    // loop 4
    rsc     r1, r1, r1
    rsc     r2, r2, r2
    rsc     r3, r3, r3
    rsc     r4, r4, r4
    rsc     r5, r5, r5
    rsc     r6, r6, r6
    rsc     r7, r7, r7
    rsc     r8, r8, r8
    rsc     r9, r9, r9
    rsc     r10, r10, r10
    rsc     r11, r11, r11
    rsc     r12, r12, r12

    // loop 5
    rsc     r1, r1, r1
    rsc     r2, r2, r2
    rsc     r3, r3, r3
    rsc     r4, r4, r4
    rsc     r5, r5, r5
    rsc     r6, r6, r6
    rsc     r7, r7, r7
    rsc     r8, r8, r8
    rsc     r9, r9, r9
    rsc     r10, r10, r10
    rsc     r11, r11, r11
    rsc     r12, r12, r12

    subs    r0, r0, #1
    bne     rscRegMaxTest_LOOP
    pop     {r4-r11, pc}

_rscShftMinTest:

    push    {r4-r11, lr}

rscShftMinTest_LOOP:

    // loop 1
    rsc     r2, r2, r1, LSL r1
    rsc     r3, r3, r2, LSL r2
    rsc     r4, r4, r3, LSL r3
    rsc     r5, r5, r4, LSL r4
    rsc     r6, r6, r5, LSL r5
    rsc     r7, r7, r6, LSL r6
    rsc     r8, r8, r7, LSL r7
    rsc     r9, r9, r8, LSL r8
    rsc     r10, r10, r9, LSL r9
    rsc     r11, r11, r10, LSL r10
    rsc     r12, r12, r11, LSL r11
    rsc     r1, r1, r12, LSL r12

    // loop 2
    rsc     r2, r2, r1, LSL r1
    rsc     r3, r3, r2, LSL r2
    rsc     r4, r4, r3, LSL r3
    rsc     r5, r5, r4, LSL r4
    rsc     r6, r6, r5, LSL r5
    rsc     r7, r7, r6, LSL r6
    rsc     r8, r8, r7, LSL r7
    rsc     r9, r9, r8, LSL r8
    rsc     r10, r10, r9, LSL r9
    rsc     r11, r11, r10, LSL r10
    rsc     r12, r12, r11, LSL r11
    rsc     r1, r1, r12, LSL r12

    // loop 3
    rsc     r2, r2, r1, LSL r1
    rsc     r3, r3, r2, LSL r2
    rsc     r4, r4, r3, LSL r3
    rsc     r5, r5, r4, LSL r4
    rsc     r6, r6, r5, LSL r5
    rsc     r7, r7, r6, LSL r6
    rsc     r8, r8, r7, LSL r7
    rsc     r9, r9, r8, LSL r8
    rsc     r10, r10, r9, LSL r9
    rsc     r11, r11, r10, LSL r10
    rsc     r12, r12, r11, LSL r11
    rsc     r1, r1, r12, LSL r12

    // loop 4
    rsc     r2, r2, r1, LSL r1
    rsc     r3, r3, r2, LSL r2
    rsc     r4, r4, r3, LSL r3
    rsc     r5, r5, r4, LSL r4
    rsc     r6, r6, r5, LSL r5
    rsc     r7, r7, r6, LSL r6
    rsc     r8, r8, r7, LSL r7
    rsc     r9, r9, r8, LSL r8
    rsc     r10, r10, r9, LSL r9
    rsc     r11, r11, r10, LSL r10
    rsc     r12, r12, r11, LSL r11
    rsc     r1, r1, r12, LSL r12

    // loop 5
    rsc     r2, r2, r1, LSL r1
    rsc     r3, r3, r2, LSL r2
    rsc     r4, r4, r3, LSL r3
    rsc     r5, r5, r4, LSL r4
    rsc     r6, r6, r5, LSL r5
    rsc     r7, r7, r6, LSL r6
    rsc     r8, r8, r7, LSL r7
    rsc     r9, r9, r8, LSL r8
    rsc     r10, r10, r9, LSL r9
    rsc     r11, r11, r10, LSL r10
    rsc     r12, r12, r11, LSL r11
    rsc     r1, r1, r12, LSL r12

    subs    r0, r0, #1
    bne     rscShftMinTest_LOOP
    pop     {r4-r11, pc}

_rscShftMaxTest:

    push    {r4-r11, lr}

rscShftMaxTest_LOOP:

    // loop 1
    rsc     r1, r1, r1, LSL r1
    rsc     r2, r2, r2, LSL r2
    rsc     r3, r3, r3, LSL r3
    rsc     r4, r4, r4, LSL r4
    rsc     r5, r5, r5, LSL r5
    rsc     r6, r6, r6, LSL r6
    rsc     r7, r7, r7, LSL r7
    rsc     r8, r8, r8, LSL r8
    rsc     r9, r9, r9, LSL r9
    rsc     r10, r10, r10, LSL r10
    rsc     r11, r11, r11, LSL r11
    rsc     r12, r12, r12, LSL r12

    // loop 2
    rsc     r1, r1, r1, LSL r1
    rsc     r2, r2, r2, LSL r2
    rsc     r3, r3, r3, LSL r3
    rsc     r4, r4, r4, LSL r4
    rsc     r5, r5, r5, LSL r5
    rsc     r6, r6, r6, LSL r6
    rsc     r7, r7, r7, LSL r7
    rsc     r8, r8, r8, LSL r8
    rsc     r9, r9, r9, LSL r9
    rsc     r10, r10, r10, LSL r10
    rsc     r11, r11, r11, LSL r11
    rsc     r12, r12, r12, LSL r12

    // loop 3
    rsc     r1, r1, r1, LSL r1
    rsc     r2, r2, r2, LSL r2
    rsc     r3, r3, r3, LSL r3
    rsc     r4, r4, r4, LSL r4
    rsc     r5, r5, r5, LSL r5
    rsc     r6, r6, r6, LSL r6
    rsc     r7, r7, r7, LSL r7
    rsc     r8, r8, r8, LSL r8
    rsc     r9, r9, r9, LSL r9
    rsc     r10, r10, r10, LSL r10
    rsc     r11, r11, r11, LSL r11
    rsc     r12, r12, r12, LSL r12

    // loop 4
    rsc     r1, r1, r1, LSL r1
    rsc     r2, r2, r2, LSL r2
    rsc     r3, r3, r3, LSL r3
    rsc     r4, r4, r4, LSL r4
    rsc     r5, r5, r5, LSL r5
    rsc     r6, r6, r6, LSL r6
    rsc     r7, r7, r7, LSL r7
    rsc     r8, r8, r8, LSL r8
    rsc     r9, r9, r9, LSL r9
    rsc     r10, r10, r10, LSL r10
    rsc     r11, r11, r11, LSL r11
    rsc     r12, r12, r12, LSL r12

    // loop 5
    rsc     r1, r1, r1, LSL r1
    rsc     r2, r2, r2, LSL r2
    rsc     r3, r3, r3, LSL r3
    rsc     r4, r4, r4, LSL r4
    rsc     r5, r5, r5, LSL r5
    rsc     r6, r6, r6, LSL r6
    rsc     r7, r7, r7, LSL r7
    rsc     r8, r8, r8, LSL r8
    rsc     r9, r9, r9, LSL r9
    rsc     r10, r10, r10, LSL r10
    rsc     r11, r11, r11, LSL r11
    rsc     r12, r12, r12, LSL r12

    subs    r0, r0, #1
    bne     rscShftMaxTest_LOOP
    pop     {r4-r11, pc}


_sadd16MinTest:

    push    {r4-r11, lr}

sadd16MinTest_LOOP:

    // loop 1
    sadd16  r2, r2, r1
    sadd16  r3, r3, r2
    sadd16  r4, r4, r3
    sadd16  r5, r5, r4
    sadd16  r6, r6, r5
    sadd16  r7, r7, r6
    sadd16  r8, r8, r7
    sadd16  r9, r9, r8
    sadd16  r10, r10, r9
    sadd16  r11, r11, r10
    sadd16  r12, r12, r11
    sadd16  r1, r1, r12

    // loop 2
    sadd16  r2, r2, r1
    sadd16  r3, r3, r2
    sadd16  r4, r4, r3
    sadd16  r5, r5, r4
    sadd16  r6, r6, r5
    sadd16  r7, r7, r6
    sadd16  r8, r8, r7
    sadd16  r9, r9, r8
    sadd16  r10, r10, r9
    sadd16  r11, r11, r10
    sadd16  r12, r12, r11
    sadd16  r1, r1, r12

    // loop 3
    sadd16  r2, r2, r1
    sadd16  r3, r3, r2
    sadd16  r4, r4, r3
    sadd16  r5, r5, r4
    sadd16  r6, r6, r5
    sadd16  r7, r7, r6
    sadd16  r8, r8, r7
    sadd16  r9, r9, r8
    sadd16  r10, r10, r9
    sadd16  r11, r11, r10
    sadd16  r12, r12, r11
    sadd16  r1, r1, r12

    // loop 4
    sadd16  r2, r2, r1
    sadd16  r3, r3, r2
    sadd16  r4, r4, r3
    sadd16  r5, r5, r4
    sadd16  r6, r6, r5
    sadd16  r7, r7, r6
    sadd16  r8, r8, r7
    sadd16  r9, r9, r8
    sadd16  r10, r10, r9
    sadd16  r11, r11, r10
    sadd16  r12, r12, r11
    sadd16  r1, r1, r12

    // loop 5
    sadd16  r2, r2, r1
    sadd16  r3, r3, r2
    sadd16  r4, r4, r3
    sadd16  r5, r5, r4
    sadd16  r6, r6, r5
    sadd16  r7, r7, r6
    sadd16  r8, r8, r7
    sadd16  r9, r9, r8
    sadd16  r10, r10, r9
    sadd16  r11, r11, r10
    sadd16  r12, r12, r11
    sadd16  r1, r1, r12

    subs    r0, r0, #1
    bne     sadd16MinTest_LOOP
    pop     {r4-r11, pc}

_sadd16MaxTest:

    push    {r4-r11, lr}

sadd16MaxTest_LOOP:

    // loop 1
    sadd16  r1, r1, r1
    sadd16  r2, r2, r2
    sadd16  r3, r3, r3
    sadd16  r4, r4, r4
    sadd16  r5, r5, r5
    sadd16  r6, r6, r6
    sadd16  r7, r7, r7
    sadd16  r8, r8, r8
    sadd16  r9, r9, r9
    sadd16  r10, r10, r10
    sadd16  r11, r11, r11
    sadd16  r12, r12, r12

    // loop 2
    sadd16  r1, r1, r1
    sadd16  r2, r2, r2
    sadd16  r3, r3, r3
    sadd16  r4, r4, r4
    sadd16  r5, r5, r5
    sadd16  r6, r6, r6
    sadd16  r7, r7, r7
    sadd16  r8, r8, r8
    sadd16  r9, r9, r9
    sadd16  r10, r10, r10
    sadd16  r11, r11, r11
    sadd16  r12, r12, r12

    // loop 3
    sadd16  r1, r1, r1
    sadd16  r2, r2, r2
    sadd16  r3, r3, r3
    sadd16  r4, r4, r4
    sadd16  r5, r5, r5
    sadd16  r6, r6, r6
    sadd16  r7, r7, r7
    sadd16  r8, r8, r8
    sadd16  r9, r9, r9
    sadd16  r10, r10, r10
    sadd16  r11, r11, r11
    sadd16  r12, r12, r12

    // loop 4
    sadd16  r1, r1, r1
    sadd16  r2, r2, r2
    sadd16  r3, r3, r3
    sadd16  r4, r4, r4
    sadd16  r5, r5, r5
    sadd16  r6, r6, r6
    sadd16  r7, r7, r7
    sadd16  r8, r8, r8
    sadd16  r9, r9, r9
    sadd16  r10, r10, r10
    sadd16  r11, r11, r11
    sadd16  r12, r12, r12

    // loop 5
    sadd16  r1, r1, r1
    sadd16  r2, r2, r2
    sadd16  r3, r3, r3
    sadd16  r4, r4, r4
    sadd16  r5, r5, r5
    sadd16  r6, r6, r6
    sadd16  r7, r7, r7
    sadd16  r8, r8, r8
    sadd16  r9, r9, r9
    sadd16  r10, r10, r10
    sadd16  r11, r11, r11
    sadd16  r12, r12, r12

    subs    r0, r0, #1
    bne     sadd16MaxTest_LOOP
    pop     {r4-r11, pc}


_sadd8MinTest:

    push    {r4-r11, lr}

sadd8MinTest_LOOP:

    // loop 1
    sadd8   r2, r2, r1
    sadd8   r3, r2, r2
    sadd8   r4, r3, r3
    sadd8   r5, r5, r4
    sadd8   r6, r6, r5
    sadd8   r7, r7, r6
    sadd8   r8, r8, r7
    sadd8   r9, r9, r8
    sadd8   r10, r9, r9
    sadd8   r11, r11, r10
    sadd8   r12, r12, r11
    sadd8   r1, r1, r12

    // loop 2
    sadd8   r2, r2, r1
    sadd8   r3, r2, r2
    sadd8   r4, r3, r3
    sadd8   r5, r5, r4
    sadd8   r6, r6, r5
    sadd8   r7, r7, r6
    sadd8   r8, r8, r7
    sadd8   r9, r9, r8
    sadd8   r10, r9, r9
    sadd8   r11, r11, r10
    sadd8   r12, r12, r11
    sadd8   r1, r1, r12

    // loop 3
    sadd8   r2, r2, r1
    sadd8   r3, r2, r2
    sadd8   r4, r3, r3
    sadd8   r5, r5, r4
    sadd8   r6, r6, r5
    sadd8   r7, r7, r6
    sadd8   r8, r8, r7
    sadd8   r9, r9, r8
    sadd8   r10, r9, r9
    sadd8   r11, r11, r10
    sadd8   r12, r12, r11
    sadd8   r1, r1, r12

    // loop 4
    sadd8   r2, r2, r1
    sadd8   r3, r2, r2
    sadd8   r4, r3, r3
    sadd8   r5, r5, r4
    sadd8   r6, r6, r5
    sadd8   r7, r7, r6
    sadd8   r8, r8, r7
    sadd8   r9, r9, r8
    sadd8   r10, r9, r9
    sadd8   r11, r11, r10
    sadd8   r12, r12, r11
    sadd8   r1, r1, r12

    // loop 5
    sadd8   r2, r2, r1
    sadd8   r3, r2, r2
    sadd8   r4, r3, r3
    sadd8   r5, r5, r4
    sadd8   r6, r6, r5
    sadd8   r7, r7, r6
    sadd8   r8, r8, r7
    sadd8   r9, r9, r8
    sadd8   r10, r9, r9
    sadd8   r11, r11, r10
    sadd8   r12, r12, r11
    sadd8   r1, r1, r12

    subs    r0, r0, #1
    bne     sadd8MinTest_LOOP
    pop     {r4-r11, pc}

_sadd8MaxTest:

    push    {r4-r11, lr}

sadd8MaxTest_LOOP:

    // loop 1
    sadd8   r1, r1, r1
    sadd8   r2, r2, r2
    sadd8   r3, r3, r3
    sadd8   r4, r4, r4
    sadd8   r5, r5, r5
    sadd8   r6, r6, r6
    sadd8   r7, r7, r7
    sadd8   r8, r8, r8
    sadd8   r9, r9, r9
    sadd8   r10, r10, r10
    sadd8   r11, r11, r11
    sadd8   r12, r12, r12

    // loop 2
    sadd8   r1, r1, r1
    sadd8   r2, r2, r2
    sadd8   r3, r3, r3
    sadd8   r4, r4, r4
    sadd8   r5, r5, r5
    sadd8   r6, r6, r6
    sadd8   r7, r7, r7
    sadd8   r8, r8, r8
    sadd8   r9, r9, r9
    sadd8   r10, r10, r10
    sadd8   r11, r11, r11
    sadd8   r12, r12, r12

    // loop 3
    sadd8   r1, r1, r1
    sadd8   r2, r2, r2
    sadd8   r3, r3, r3
    sadd8   r4, r4, r4
    sadd8   r5, r5, r5
    sadd8   r6, r6, r6
    sadd8   r7, r7, r7
    sadd8   r8, r8, r8
    sadd8   r9, r9, r9
    sadd8   r10, r10, r10
    sadd8   r11, r11, r11
    sadd8   r12, r12, r12

    // loop 4
    sadd8   r1, r1, r1
    sadd8   r2, r2, r2
    sadd8   r3, r3, r3
    sadd8   r4, r4, r4
    sadd8   r5, r5, r5
    sadd8   r6, r6, r6
    sadd8   r7, r7, r7
    sadd8   r8, r8, r8
    sadd8   r9, r9, r9
    sadd8   r10, r10, r10
    sadd8   r11, r11, r11
    sadd8   r12, r12, r12

    // loop 5
    sadd8   r1, r1, r1
    sadd8   r2, r2, r2
    sadd8   r3, r3, r3
    sadd8   r4, r4, r4
    sadd8   r5, r5, r5
    sadd8   r6, r6, r6
    sadd8   r7, r7, r7
    sadd8   r8, r8, r8
    sadd8   r9, r9, r9
    sadd8   r10, r10, r10
    sadd8   r11, r11, r11
    sadd8   r12, r12, r12

    subs    r0, r0, #1
    bne     sadd8MaxTest_LOOP
    pop     {r4-r11, pc}


_sasxMinTest:

    push        {r4-r11, lr}

sasxMinTest_LOOP:

    // loop 1
    sasx        r2, r2, r1
    sasx        r3, r3, r2
    sasx        r4, r4, r3
    sasx        r5, r5, r4
    saddsubx    r6, r6, r5
    saddsubx    r7, r7, r6
    saddsubx    r8, r8, r7
    saddsubx    r9, r9, r8
    saddsubx    r10, r10, r9
    saddsubx    r11, r11, r10
    saddsubx    r12, r12, r11
    saddsubx    r1, r1, r12

    // loop 2
    sasx        r2, r2, r1
    sasx        r3, r3, r2
    sasx        r4, r4, r3
    sasx        r5, r5, r4
    saddsubx    r6, r6, r5
    saddsubx    r7, r7, r6
    saddsubx    r8, r8, r7
    saddsubx    r9, r9, r8
    saddsubx    r10, r10, r9
    saddsubx    r11, r11, r10
    saddsubx    r12, r12, r11
    saddsubx    r1, r1, r12

    // loop 3
    sasx        r2, r2, r1
    sasx        r3, r3, r2
    sasx        r4, r4, r3
    sasx        r5, r5, r4
    saddsubx    r6, r6, r5
    saddsubx    r7, r7, r6
    saddsubx    r8, r8, r7
    saddsubx    r9, r9, r8
    saddsubx    r10, r10, r9
    saddsubx    r11, r11, r10
    saddsubx    r12, r12, r11
    saddsubx    r1, r1, r12

    // loop 4
    sasx        r2, r2, r1
    sasx        r3, r3, r2
    sasx        r4, r4, r3
    sasx        r5, r5, r4
    saddsubx    r6, r6, r5
    saddsubx    r7, r7, r6
    saddsubx    r8, r8, r7
    saddsubx    r9, r9, r8
    saddsubx    r10, r10, r9
    saddsubx    r11, r11, r10
    saddsubx    r12, r12, r11
    saddsubx    r1, r1, r12

    // loop 5
    sasx        r2, r2, r1
    sasx        r3, r3, r2
    sasx        r4, r4, r3
    sasx        r5, r5, r4
    saddsubx    r6, r6, r5
    saddsubx    r7, r7, r6
    saddsubx    r8, r8, r7
    saddsubx    r9, r9, r8
    saddsubx    r10, r10, r9
    saddsubx    r11, r11, r10
    saddsubx    r12, r12, r11
    saddsubx    r1, r1, r12

    subs    r0, r0, #1
    bne     sasxMinTest_LOOP
    pop     {r4-r11, pc}

_sasxMaxTest:

    push        {r4-r11, lr}

sasxMaxTest_LOOP:

    // loop 1
    sasx        r1, r1, r1
    sasx        r2, r2, r2
    sasx        r3, r3, r3
    sasx        r4, r4, r4
    saddsubx    r5, r5, r5
    saddsubx    r6, r6, r6
    saddsubx    r7, r7, r7
    saddsubx    r8, r8, r8
    saddsubx    r9, r9, r9
    saddsubx    r10, r10, r10
    saddsubx    r11, r11, r11
    saddsubx    r12, r12, r12

    // loop 2
    sasx        r1, r1, r1
    sasx        r2, r2, r2
    sasx        r3, r3, r3
    sasx        r4, r4, r4
    saddsubx    r5, r5, r5
    saddsubx    r6, r6, r6
    saddsubx    r7, r7, r7
    saddsubx    r8, r8, r8
    saddsubx    r9, r9, r9
    saddsubx    r10, r10, r10
    saddsubx    r11, r11, r11
    saddsubx    r12, r12, r12

    // loop 3
    sasx        r1, r1, r1
    sasx        r2, r2, r2
    sasx        r3, r3, r3
    sasx        r4, r4, r4
    saddsubx    r5, r5, r5
    saddsubx    r6, r6, r6
    saddsubx    r7, r7, r7
    saddsubx    r8, r8, r8
    saddsubx    r9, r9, r9
    saddsubx    r10, r10, r10
    saddsubx    r11, r11, r11
    saddsubx    r12, r12, r12

    // loop 4
    sasx        r1, r1, r1
    sasx        r2, r2, r2
    sasx        r3, r3, r3
    sasx        r4, r4, r4
    saddsubx    r5, r5, r5
    saddsubx    r6, r6, r6
    saddsubx    r7, r7, r7
    saddsubx    r8, r8, r8
    saddsubx    r9, r9, r9
    saddsubx    r10, r10, r10
    saddsubx    r11, r11, r11
    saddsubx    r12, r12, r12

    // loop 5
    sasx        r1, r1, r1
    sasx        r2, r2, r2
    sasx        r3, r3, r3
    sasx        r4, r4, r4
    saddsubx    r5, r5, r5
    saddsubx    r6, r6, r6
    saddsubx    r7, r7, r7
    saddsubx    r8, r8, r8
    saddsubx    r9, r9, r9
    saddsubx    r10, r10, r10
    saddsubx    r11, r11, r11
    saddsubx    r12, r12, r12

    subs    r0, r0, #1
    bne     sasxMaxTest_LOOP
    pop     {r4-r11, pc}
    

_sbcImmMinTest:

    push    {r4-r11, lr}

sbcImmMinTest_LOOP:

    // loop 1
    sbc     r2, r1, #1
    sbc     r3, r2, #2
    sbc     r4, r3, #3
    sbc     r5, r4, #4
    sbc     r6, r5, #5
    sbc     r7, r6, #6
    sbc     r8, r7, #7
    sbc     r9, r8, #8
    sbc     r10, r9, #9
    sbc     r11, r10, #10
    sbc     r12, r11, #11
    sbc     r1, r12, #12

    // loop 2
    sbc     r2, r1, #1
    sbc     r3, r2, #2
    sbc     r4, r3, #3
    sbc     r5, r4, #4
    sbc     r6, r5, #5
    sbc     r7, r6, #6
    sbc     r8, r7, #7
    sbc     r9, r8, #8
    sbc     r10, r9, #9
    sbc     r11, r10, #10
    sbc     r12, r11, #11
    sbc     r1, r12, #12

    // loop 3
    sbc     r2, r1, #1
    sbc     r3, r2, #2
    sbc     r4, r3, #3
    sbc     r5, r4, #4
    sbc     r6, r5, #5
    sbc     r7, r6, #6
    sbc     r8, r7, #7
    sbc     r9, r8, #8
    sbc     r10, r9, #9
    sbc     r11, r10, #10
    sbc     r12, r11, #11
    sbc     r1, r12, #12

    // loop 4
    sbc     r2, r1, #1
    sbc     r3, r2, #2
    sbc     r4, r3, #3
    sbc     r5, r4, #4
    sbc     r6, r5, #5
    sbc     r7, r6, #6
    sbc     r8, r7, #7
    sbc     r9, r8, #8
    sbc     r10, r9, #9
    sbc     r11, r10, #10
    sbc     r12, r11, #11
    sbc     r1, r12, #12

    // loop 5
    sbc     r2, r1, #1
    sbc     r3, r2, #2
    sbc     r4, r3, #3
    sbc     r5, r4, #4
    sbc     r6, r5, #5
    sbc     r7, r6, #6
    sbc     r8, r7, #7
    sbc     r9, r8, #8
    sbc     r10, r9, #9
    sbc     r11, r10, #10
    sbc     r12, r11, #11
    sbc     r1, r12, #12

    subs    r0, r0, #1
    bne     sbcImmMinTest_LOOP
    pop     {r4-r11, pc}

_sbcImmMaxTest:

    push    {r4-r11, lr}

sbcImmMaxTest_LOOP:

    // loop 1
    sbc     r1, r1, #1
    sbc     r2, r2, #2
    sbc     r3, r3, #3
    sbc     r4, r4, #4
    sbc     r5, r5, #5
    sbc     r6, r6, #6
    sbc     r7, r7, #7
    sbc     r8, r8, #8
    sbc     r9, r9, #9
    sbc     r10, r10, #10
    sbc     r11, r11, #11
    sbc     r12, r12, #12

    // loop 2
    sbc     r1, r1, #1
    sbc     r2, r2, #2
    sbc     r3, r3, #3
    sbc     r4, r4, #4
    sbc     r5, r5, #5
    sbc     r6, r6, #6
    sbc     r7, r7, #7
    sbc     r8, r8, #8
    sbc     r9, r9, #9
    sbc     r10, r10, #10
    sbc     r11, r11, #11
    sbc     r12, r12, #12

    // loop 3
    sbc     r1, r1, #1
    sbc     r2, r2, #2
    sbc     r3, r3, #3
    sbc     r4, r4, #4
    sbc     r5, r5, #5
    sbc     r6, r6, #6
    sbc     r7, r7, #7
    sbc     r8, r8, #8
    sbc     r9, r9, #9
    sbc     r10, r10, #10
    sbc     r11, r11, #11
    sbc     r12, r12, #12

    // loop 4
    sbc     r1, r1, #1
    sbc     r2, r2, #2
    sbc     r3, r3, #3
    sbc     r4, r4, #4
    sbc     r5, r5, #5
    sbc     r6, r6, #6
    sbc     r7, r7, #7
    sbc     r8, r8, #8
    sbc     r9, r9, #9
    sbc     r10, r10, #10
    sbc     r11, r11, #11
    sbc     r12, r12, #12

    // loop 5
    sbc     r1, r1, #1
    sbc     r2, r2, #2
    sbc     r3, r3, #3
    sbc     r4, r4, #4
    sbc     r5, r5, #5
    sbc     r6, r6, #6
    sbc     r7, r7, #7
    sbc     r8, r8, #8
    sbc     r9, r9, #9
    sbc     r10, r10, #10
    sbc     r11, r11, #11
    sbc     r12, r12, #12

    subs    r0, r0, #1
    bne     sbcImmMaxTest_LOOP
    pop     {r4-r11, pc}

_sbcRegMinTest:

    push    {r4-r11, lr}

sbcRegMinTest_LOOP:

    // loop 1
    sbc     r2, r2, r1, LSL #1
    sbc     r3, r3, r2, LSL #2
    sbc     r4, r4, r3, LSL #3
    sbc     r5, r5, r4, LSL #4
    sbc     r6, r6, r5, LSL #5
    sbc     r7, r7, r6, LSL #6
    sbc     r8, r8, r7, LSL #7
    sbc     r9, r9, r8, LSL #8
    sbc     r10, r10, r9, LSL #9
    sbc     r11, r11, r10, LSL #10
    sbc     r12, r12, r11, LSL #11
    sbc     r1, r1, r12, LSL #12

    // loop 2
    sbc     r2, r2, r1, LSL #1
    sbc     r3, r3, r2, LSL #2
    sbc     r4, r4, r3, LSL #3
    sbc     r5, r5, r4, LSL #4
    sbc     r6, r6, r5, LSL #5
    sbc     r7, r7, r6, LSL #6
    sbc     r8, r8, r7, LSL #7
    sbc     r9, r9, r8, LSL #8
    sbc     r10, r10, r9, LSL #9
    sbc     r11, r11, r10, LSL #10
    sbc     r12, r12, r11, LSL #11
    sbc     r1, r1, r12, LSL #12

    // loop 3
    sbc     r2, r2, r1, LSL #1
    sbc     r3, r3, r2, LSL #2
    sbc     r4, r4, r3, LSL #3
    sbc     r5, r5, r4, LSL #4
    sbc     r6, r6, r5, LSL #5
    sbc     r7, r7, r6, LSL #6
    sbc     r8, r8, r7, LSL #7
    sbc     r9, r9, r8, LSL #8
    sbc     r10, r10, r9, LSL #9
    sbc     r11, r11, r10, LSL #10
    sbc     r12, r12, r11, LSL #11
    sbc     r1, r1, r12, LSL #12

    // loop 4
    sbc     r2, r2, r1, LSL #1
    sbc     r3, r3, r2, LSL #2
    sbc     r4, r4, r3, LSL #3
    sbc     r5, r5, r4, LSL #4
    sbc     r6, r6, r5, LSL #5
    sbc     r7, r7, r6, LSL #6
    sbc     r8, r8, r7, LSL #7
    sbc     r9, r9, r8, LSL #8
    sbc     r10, r10, r9, LSL #9
    sbc     r11, r11, r10, LSL #10
    sbc     r12, r12, r11, LSL #11
    sbc     r1, r1, r12, LSL #12

    // loop 5
    sbc     r2, r2, r1, LSL #1
    sbc     r3, r3, r2, LSL #2
    sbc     r4, r4, r3, LSL #3
    sbc     r5, r5, r4, LSL #4
    sbc     r6, r6, r5, LSL #5
    sbc     r7, r7, r6, LSL #6
    sbc     r8, r8, r7, LSL #7
    sbc     r9, r9, r8, LSL #8
    sbc     r10, r10, r9, LSL #9
    sbc     r11, r11, r10, LSL #10
    sbc     r12, r12, r11, LSL #11
    sbc     r1, r1, r12, LSL #12

    subs    r0, r0, #1
    bne     sbcRegMinTest_LOOP
    pop     {r4-r11, pc}

_sbcRegMaxTest:

    push    {r4-r11, lr}

sbcRegMaxTest_LOOP:

    // loop 1
    sbc     r1, r1, r1
    sbc     r2, r2, r2
    sbc     r3, r3, r3
    sbc     r4, r4, r4
    sbc     r5, r5, r5
    sbc     r6, r6, r6
    sbc     r7, r7, r7
    sbc     r8, r8, r8
    sbc     r9, r9, r9
    sbc     r10, r10, r10
    sbc     r11, r11, r11
    sbc     r12, r12, r12

    // loop 2
    sbc     r1, r1, r1
    sbc     r2, r2, r2
    sbc     r3, r3, r3
    sbc     r4, r4, r4
    sbc     r5, r5, r5
    sbc     r6, r6, r6
    sbc     r7, r7, r7
    sbc     r8, r8, r8
    sbc     r9, r9, r9
    sbc     r10, r10, r10
    sbc     r11, r11, r11
    sbc     r12, r12, r12

    // loop 3
    sbc     r1, r1, r1
    sbc     r2, r2, r2
    sbc     r3, r3, r3
    sbc     r4, r4, r4
    sbc     r5, r5, r5
    sbc     r6, r6, r6
    sbc     r7, r7, r7
    sbc     r8, r8, r8
    sbc     r9, r9, r9
    sbc     r10, r10, r10
    sbc     r11, r11, r11
    sbc     r12, r12, r12

    // loop 4
    sbc     r1, r1, r1
    sbc     r2, r2, r2
    sbc     r3, r3, r3
    sbc     r4, r4, r4
    sbc     r5, r5, r5
    sbc     r6, r6, r6
    sbc     r7, r7, r7
    sbc     r8, r8, r8
    sbc     r9, r9, r9
    sbc     r10, r10, r10
    sbc     r11, r11, r11
    sbc     r12, r12, r12

    // loop 5
    sbc     r1, r1, r1
    sbc     r2, r2, r2
    sbc     r3, r3, r3
    sbc     r4, r4, r4
    sbc     r5, r5, r5
    sbc     r6, r6, r6
    sbc     r7, r7, r7
    sbc     r8, r8, r8
    sbc     r9, r9, r9
    sbc     r10, r10, r10
    sbc     r11, r11, r11
    sbc     r12, r12, r12

    subs    r0, r0, #1
    bne     sbcRegMaxTest_LOOP
    pop     {r4-r11, pc}

_sbcShftMinTest:

    push    {r4-r11, lr}

sbcShftMinTest_LOOP:

    // loop 1
    sbc     r2, r2, r1, LSL r1
    sbc     r3, r3, r2, LSL r2
    sbc     r4, r4, r3, LSL r3
    sbc     r5, r5, r4, LSL r4
    sbc     r6, r6, r5, LSL r5
    sbc     r7, r7, r6, LSL r6
    sbc     r8, r8, r7, LSL r7
    sbc     r9, r9, r8, LSL r8
    sbc     r10, r10, r9, LSL r9
    sbc     r11, r11, r10, LSL r10
    sbc     r12, r12, r11, LSL r11
    sbc     r1, r1, r12, LSL r12

    // loop 2
    sbc     r2, r2, r1, LSL r1
    sbc     r3, r3, r2, LSL r2
    sbc     r4, r4, r3, LSL r3
    sbc     r5, r5, r4, LSL r4
    sbc     r6, r6, r5, LSL r5
    sbc     r7, r7, r6, LSL r6
    sbc     r8, r8, r7, LSL r7
    sbc     r9, r9, r8, LSL r8
    sbc     r10, r10, r9, LSL r9
    sbc     r11, r11, r10, LSL r10
    sbc     r12, r12, r11, LSL r11
    sbc     r1, r1, r12, LSL r12

    // loop 3
    sbc     r2, r2, r1, LSL r1
    sbc     r3, r3, r2, LSL r2
    sbc     r4, r4, r3, LSL r3
    sbc     r5, r5, r4, LSL r4
    sbc     r6, r6, r5, LSL r5
    sbc     r7, r7, r6, LSL r6
    sbc     r8, r8, r7, LSL r7
    sbc     r9, r9, r8, LSL r8
    sbc     r10, r10, r9, LSL r9
    sbc     r11, r11, r10, LSL r10
    sbc     r12, r12, r11, LSL r11
    sbc     r1, r1, r12, LSL r12

    // loop 4
    sbc     r2, r2, r1, LSL r1
    sbc     r3, r3, r2, LSL r2
    sbc     r4, r4, r3, LSL r3
    sbc     r5, r5, r4, LSL r4
    sbc     r6, r6, r5, LSL r5
    sbc     r7, r7, r6, LSL r6
    sbc     r8, r8, r7, LSL r7
    sbc     r9, r9, r8, LSL r8
    sbc     r10, r10, r9, LSL r9
    sbc     r11, r11, r10, LSL r10
    sbc     r12, r12, r11, LSL r11
    sbc     r1, r1, r12, LSL r12

    // loop 5
    sbc     r2, r2, r1, LSL r1
    sbc     r3, r3, r2, LSL r2
    sbc     r4, r4, r3, LSL r3
    sbc     r5, r5, r4, LSL r4
    sbc     r6, r6, r5, LSL r5
    sbc     r7, r7, r6, LSL r6
    sbc     r8, r8, r7, LSL r7
    sbc     r9, r9, r8, LSL r8
    sbc     r10, r10, r9, LSL r9
    sbc     r11, r11, r10, LSL r10
    sbc     r12, r12, r11, LSL r11
    sbc     r1, r1, r12, LSL r12

    subs    r0, r0, #1
    bne     sbcShftMinTest_LOOP
    pop     {r4-r11, pc}

_sbcShftMaxTest:

    push    {r4-r11, lr}

sbcShftMaxTest_LOOP:

    // loop 1
    sbc     r1, r1, r1, LSL r1
    sbc     r2, r2, r2, LSL r2
    sbc     r3, r3, r3, LSL r3
    sbc     r4, r4, r4, LSL r4
    sbc     r5, r5, r5, LSL r5
    sbc     r6, r6, r6, LSL r6
    sbc     r7, r7, r7, LSL r7
    sbc     r8, r8, r8, LSL r8
    sbc     r9, r9, r9, LSL r9
    sbc     r10, r10, r10, LSL r10
    sbc     r11, r11, r11, LSL r11
    sbc     r12, r12, r12, LSL r12

    // loop 2
    sbc     r1, r1, r1, LSL r1
    sbc     r2, r2, r2, LSL r2
    sbc     r3, r3, r3, LSL r3
    sbc     r4, r4, r4, LSL r4
    sbc     r5, r5, r5, LSL r5
    sbc     r6, r6, r6, LSL r6
    sbc     r7, r7, r7, LSL r7
    sbc     r8, r8, r8, LSL r8
    sbc     r9, r9, r9, LSL r9
    sbc     r10, r10, r10, LSL r10
    sbc     r11, r11, r11, LSL r11
    sbc     r12, r12, r12, LSL r12

    // loop 3
    sbc     r1, r1, r1, LSL r1
    sbc     r2, r2, r2, LSL r2
    sbc     r3, r3, r3, LSL r3
    sbc     r4, r4, r4, LSL r4
    sbc     r5, r5, r5, LSL r5
    sbc     r6, r6, r6, LSL r6
    sbc     r7, r7, r7, LSL r7
    sbc     r8, r8, r8, LSL r8
    sbc     r9, r9, r9, LSL r9
    sbc     r10, r10, r10, LSL r10
    sbc     r11, r11, r11, LSL r11
    sbc     r12, r12, r12, LSL r12

    // loop 4
    sbc     r1, r1, r1, LSL r1
    sbc     r2, r2, r2, LSL r2
    sbc     r3, r3, r3, LSL r3
    sbc     r4, r4, r4, LSL r4
    sbc     r5, r5, r5, LSL r5
    sbc     r6, r6, r6, LSL r6
    sbc     r7, r7, r7, LSL r7
    sbc     r8, r8, r8, LSL r8
    sbc     r9, r9, r9, LSL r9
    sbc     r10, r10, r10, LSL r10
    sbc     r11, r11, r11, LSL r11
    sbc     r12, r12, r12, LSL r12

    // loop 5
    sbc     r1, r1, r1, LSL r1
    sbc     r2, r2, r2, LSL r2
    sbc     r3, r3, r3, LSL r3
    sbc     r4, r4, r4, LSL r4
    sbc     r5, r5, r5, LSL r5
    sbc     r6, r6, r6, LSL r6
    sbc     r7, r7, r7, LSL r7
    sbc     r8, r8, r8, LSL r8
    sbc     r9, r9, r9, LSL r9
    sbc     r10, r10, r10, LSL r10
    sbc     r11, r11, r11, LSL r11
    sbc     r12, r12, r12, LSL r12

    subs    r0, r0, #1
    bne     sbcShftMaxTest_LOOP
    pop     {r4-r11, pc}


_sbfxMinTest:

    push    {r4-r11, lr}

sbfxMinTest_LOOP:

    // loop 1
    sbfx    r2, r1, #0, #8
    sbfx    r3, r2, #1, #8
    sbfx    r4, r3, #2, #8
    sbfx    r5, r4, #3, #8
    sbfx    r6, r5, #4, #8
    sbfx    r7, r6, #5, #8
    sbfx    r8, r7, #6, #8
    sbfx    r9, r8, #7, #8
    sbfx    r10, r9, #8, #8
    sbfx    r11, r10, #9, #8
    sbfx    r12, r11, #10, #8
    sbfx    r1, r12, #11, #8

    // loop 2
    sbfx    r2, r1, #0, #8
    sbfx    r3, r2, #1, #8
    sbfx    r4, r3, #2, #8
    sbfx    r5, r4, #3, #8
    sbfx    r6, r5, #4, #8
    sbfx    r7, r6, #5, #8
    sbfx    r8, r7, #6, #8
    sbfx    r9, r8, #7, #8
    sbfx    r10, r9, #8, #8
    sbfx    r11, r10, #9, #8
    sbfx    r12, r11, #10, #8
    sbfx    r1, r12, #11, #8

    // loop 3
    sbfx    r2, r1, #0, #8
    sbfx    r3, r2, #1, #8
    sbfx    r4, r3, #2, #8
    sbfx    r5, r4, #3, #8
    sbfx    r6, r5, #4, #8
    sbfx    r7, r6, #5, #8
    sbfx    r8, r7, #6, #8
    sbfx    r9, r8, #7, #8
    sbfx    r10, r9, #8, #8
    sbfx    r11, r10, #9, #8
    sbfx    r12, r11, #10, #8
    sbfx    r1, r12, #11, #8

    // loop 4
    sbfx    r2, r1, #0, #8
    sbfx    r3, r2, #1, #8
    sbfx    r4, r3, #2, #8
    sbfx    r5, r4, #3, #8
    sbfx    r6, r5, #4, #8
    sbfx    r7, r6, #5, #8
    sbfx    r8, r7, #6, #8
    sbfx    r9, r8, #7, #8
    sbfx    r10, r9, #8, #8
    sbfx    r11, r10, #9, #8
    sbfx    r12, r11, #10, #8
    sbfx    r1, r12, #11, #8

    // loop 5
    sbfx    r2, r1, #0, #8
    sbfx    r3, r2, #1, #8
    sbfx    r4, r3, #2, #8
    sbfx    r5, r4, #3, #8
    sbfx    r6, r5, #4, #8
    sbfx    r7, r6, #5, #8
    sbfx    r8, r7, #6, #8
    sbfx    r9, r8, #7, #8
    sbfx    r10, r9, #8, #8
    sbfx    r11, r10, #9, #8
    sbfx    r12, r11, #10, #8
    sbfx    r1, r12, #11, #8

    subs    r0, r0, #1
    bne     sbfxMinTest_LOOP
    pop     {r4-r11, pc}

_sbfxMaxTest:

    push    {r4-r11, lr}

sbfxMaxTest_LOOP:

    // loop 1
    sbfx    r1, r1, #0, #8
    sbfx    r2, r2, #1, #8
    sbfx    r3, r3, #2, #8
    sbfx    r4, r4, #3, #8
    sbfx    r5, r5, #4, #8
    sbfx    r6, r6, #5, #8
    sbfx    r7, r7, #6, #8
    sbfx    r8, r8, #7, #8
    sbfx    r9, r9, #8, #8
    sbfx    r10, r10, #9, #8
    sbfx    r11, r11, #10, #8
    sbfx    r12, r12, #11, #8

    // loop 2
    sbfx    r1, r1, #0, #8
    sbfx    r2, r2, #1, #8
    sbfx    r3, r3, #2, #8
    sbfx    r4, r4, #3, #8
    sbfx    r5, r5, #4, #8
    sbfx    r6, r6, #5, #8
    sbfx    r7, r7, #6, #8
    sbfx    r8, r8, #7, #8
    sbfx    r9, r9, #8, #8
    sbfx    r10, r10, #9, #8
    sbfx    r11, r11, #10, #8
    sbfx    r12, r12, #11, #8

    // loop 3
    sbfx    r1, r1, #0, #8
    sbfx    r2, r2, #1, #8
    sbfx    r3, r3, #2, #8
    sbfx    r4, r4, #3, #8
    sbfx    r5, r5, #4, #8
    sbfx    r6, r6, #5, #8
    sbfx    r7, r7, #6, #8
    sbfx    r8, r8, #7, #8
    sbfx    r9, r9, #8, #8
    sbfx    r10, r10, #9, #8
    sbfx    r11, r11, #10, #8
    sbfx    r12, r12, #11, #8

    // loop 4
    sbfx    r1, r1, #0, #8
    sbfx    r2, r2, #1, #8
    sbfx    r3, r3, #2, #8
    sbfx    r4, r4, #3, #8
    sbfx    r5, r5, #4, #8
    sbfx    r6, r6, #5, #8
    sbfx    r7, r7, #6, #8
    sbfx    r8, r8, #7, #8
    sbfx    r9, r9, #8, #8
    sbfx    r10, r10, #9, #8
    sbfx    r11, r11, #10, #8
    sbfx    r12, r12, #11, #8

    // loop 5
    sbfx    r1, r1, #0, #8
    sbfx    r2, r2, #1, #8
    sbfx    r3, r3, #2, #8
    sbfx    r4, r4, #3, #8
    sbfx    r5, r5, #4, #8
    sbfx    r6, r6, #5, #8
    sbfx    r7, r7, #6, #8
    sbfx    r8, r8, #7, #8
    sbfx    r9, r9, #8, #8
    sbfx    r10, r10, #9, #8
    sbfx    r11, r11, #10, #8
    sbfx    r12, r12, #11, #8

    subs    r0, r0, #1
    bne     sbfxMaxTest_LOOP
    pop     {r4-r11, pc}


_selMinTest:

    push    {r4-r11, lr}

selMinTest_LOOP:

    // loop 1
    sel     r2, r2, r1
    sel     r3, r3, r2
    sel     r4, r4, r3
    sel     r5, r5, r4
    sel     r6, r6, r5
    sel     r7, r7, r6
    sel     r8, r8, r7
    sel     r9, r9, r8
    sel     r10, r10, r9
    sel     r11, r11, r10
    sel     r12, r12, r11
    sel     r1, r1, r12

    // loop 2
    sel     r2, r2, r1
    sel     r3, r3, r2
    sel     r4, r4, r3
    sel     r5, r5, r4
    sel     r6, r6, r5
    sel     r7, r7, r6
    sel     r8, r8, r7
    sel     r9, r9, r8
    sel     r10, r10, r9
    sel     r11, r11, r10
    sel     r12, r12, r11
    sel     r1, r1, r12

    // loop 3
    sel     r2, r2, r1
    sel     r3, r3, r2
    sel     r4, r4, r3
    sel     r5, r5, r4
    sel     r6, r6, r5
    sel     r7, r7, r6
    sel     r8, r8, r7
    sel     r9, r9, r8
    sel     r10, r10, r9
    sel     r11, r11, r10
    sel     r12, r12, r11
    sel     r1, r1, r12

    // loop 4
    sel     r2, r2, r1
    sel     r3, r3, r2
    sel     r4, r4, r3
    sel     r5, r5, r4
    sel     r6, r6, r5
    sel     r7, r7, r6
    sel     r8, r8, r7
    sel     r9, r9, r8
    sel     r10, r10, r9
    sel     r11, r11, r10
    sel     r12, r12, r11
    sel     r1, r1, r12

    // loop 5
    sel     r2, r2, r1
    sel     r3, r3, r2
    sel     r4, r4, r3
    sel     r5, r5, r4
    sel     r6, r6, r5
    sel     r7, r7, r6
    sel     r8, r8, r7
    sel     r9, r9, r8
    sel     r10, r10, r9
    sel     r11, r11, r10
    sel     r12, r12, r11
    sel     r1, r1, r12

    subs    r0, r0, #1
    bne     selMinTest_LOOP
    pop     {r4-r11, pc}

_selMaxTest:

    push    {r4-r11, lr}

selMaxTest_LOOP:

    // loop 1
    sel     r1, r1, r1
    sel     r2, r2, r2
    sel     r3, r3, r3
    sel     r4, r4, r4
    sel     r5, r5, r5
    sel     r6, r6, r6
    sel     r7, r7, r7
    sel     r8, r8, r8
    sel     r9, r9, r9
    sel     r10, r10, r10
    sel     r11, r11, r11
    sel     r12, r12, r12

    // loop 2
    sel     r1, r1, r1
    sel     r2, r2, r2
    sel     r3, r3, r3
    sel     r4, r4, r4
    sel     r5, r5, r5
    sel     r6, r6, r6
    sel     r7, r7, r7
    sel     r8, r8, r8
    sel     r9, r9, r9
    sel     r10, r10, r10
    sel     r11, r11, r11
    sel     r12, r12, r12

    // loop 3
    sel     r1, r1, r1
    sel     r2, r2, r2
    sel     r3, r3, r3
    sel     r4, r4, r4
    sel     r5, r5, r5
    sel     r6, r6, r6
    sel     r7, r7, r7
    sel     r8, r8, r8
    sel     r9, r9, r9
    sel     r10, r10, r10
    sel     r11, r11, r11
    sel     r12, r12, r12

    // loop 4
    sel     r1, r1, r1
    sel     r2, r2, r2
    sel     r3, r3, r3
    sel     r4, r4, r4
    sel     r5, r5, r5
    sel     r6, r6, r6
    sel     r7, r7, r7
    sel     r8, r8, r8
    sel     r9, r9, r9
    sel     r10, r10, r10
    sel     r11, r11, r11
    sel     r12, r12, r12

    // loop 5
    sel     r1, r1, r1
    sel     r2, r2, r2
    sel     r3, r3, r3
    sel     r4, r4, r4
    sel     r5, r5, r5
    sel     r6, r6, r6
    sel     r7, r7, r7
    sel     r8, r8, r8
    sel     r9, r9, r9
    sel     r10, r10, r10
    sel     r11, r11, r11
    sel     r12, r12, r12

    subs    r0, r0, #1
    bne     selMaxTest_LOOP
    pop     {r4-r11, pc}


_shadd16MinTest:

    push    {r4-r11, lr}

shadd16MinTest_LOOP:

    // loop 1
    shadd16 r2, r2, r1
    shadd16 r3, r3, r2
    shadd16 r4, r4, r3
    shadd16 r5, r6, r4
    shadd16 r6, r6, r5
    shadd16 r7, r7, r6
    shadd16 r8, r8, r7
    shadd16 r9, r9, r8
    shadd16 r10, r10, r9
    shadd16 r11, r11, r10
    shadd16 r12, r12, r11
    shadd16 r1, r1, r12

    // loop 2
    shadd16 r2, r2, r1
    shadd16 r3, r3, r2
    shadd16 r4, r4, r3
    shadd16 r5, r6, r4
    shadd16 r6, r6, r5
    shadd16 r7, r7, r6
    shadd16 r8, r8, r7
    shadd16 r9, r9, r8
    shadd16 r10, r10, r9
    shadd16 r11, r11, r10
    shadd16 r12, r12, r11
    shadd16 r1, r1, r12

    // loop 3
    shadd16 r2, r2, r1
    shadd16 r3, r3, r2
    shadd16 r4, r4, r3
    shadd16 r5, r6, r4
    shadd16 r6, r6, r5
    shadd16 r7, r7, r6
    shadd16 r8, r8, r7
    shadd16 r9, r9, r8
    shadd16 r10, r10, r9
    shadd16 r11, r11, r10
    shadd16 r12, r12, r11
    shadd16 r1, r1, r12

    // loop 4
    shadd16 r2, r2, r1
    shadd16 r3, r3, r2
    shadd16 r4, r4, r3
    shadd16 r5, r6, r4
    shadd16 r6, r6, r5
    shadd16 r7, r7, r6
    shadd16 r8, r8, r7
    shadd16 r9, r9, r8
    shadd16 r10, r10, r9
    shadd16 r11, r11, r10
    shadd16 r12, r12, r11
    shadd16 r1, r1, r12

    // loop 5
    shadd16 r2, r2, r1
    shadd16 r3, r3, r2
    shadd16 r4, r4, r3
    shadd16 r5, r6, r4
    shadd16 r6, r6, r5
    shadd16 r7, r7, r6
    shadd16 r8, r8, r7
    shadd16 r9, r9, r8
    shadd16 r10, r10, r9
    shadd16 r11, r11, r10
    shadd16 r12, r12, r11
    shadd16 r1, r1, r12

    subs    r0, r0, #1
    bne     shadd16MinTest_LOOP
    pop     {r4-r11, pc}

_shadd16MaxTest:

    push    {r4-r11, lr}

shadd16MaxTest_LOOP:

    // loop 1
    shadd16 r1, r1, r1
    shadd16 r2, r2, r2
    shadd16 r3, r3, r3
    shadd16 r4, r4, r4
    shadd16 r5, r5, r5
    shadd16 r6, r6, r6
    shadd16 r7, r7, r7
    shadd16 r8, r8, r8
    shadd16 r9, r9, r9
    shadd16 r10, r10, r10
    shadd16 r11, r11, r11
    shadd16 r12, r12, r12

    // loop 2
    shadd16 r1, r1, r1
    shadd16 r2, r2, r2
    shadd16 r3, r3, r3
    shadd16 r4, r4, r4
    shadd16 r5, r5, r5
    shadd16 r6, r6, r6
    shadd16 r7, r7, r7
    shadd16 r8, r8, r8
    shadd16 r9, r9, r9
    shadd16 r10, r10, r10
    shadd16 r11, r11, r11
    shadd16 r12, r12, r12

    // loop 3
    shadd16 r1, r1, r1
    shadd16 r2, r2, r2
    shadd16 r3, r3, r3
    shadd16 r4, r4, r4
    shadd16 r5, r5, r5
    shadd16 r6, r6, r6
    shadd16 r7, r7, r7
    shadd16 r8, r8, r8
    shadd16 r9, r9, r9
    shadd16 r10, r10, r10
    shadd16 r11, r11, r11
    shadd16 r12, r12, r12

    // loop 4
    shadd16 r1, r1, r1
    shadd16 r2, r2, r2
    shadd16 r3, r3, r3
    shadd16 r4, r4, r4
    shadd16 r5, r5, r5
    shadd16 r6, r6, r6
    shadd16 r7, r7, r7
    shadd16 r8, r8, r8
    shadd16 r9, r9, r9
    shadd16 r10, r10, r10
    shadd16 r11, r11, r11
    shadd16 r12, r12, r12

    // loop 5
    shadd16 r1, r1, r1
    shadd16 r2, r2, r2
    shadd16 r3, r3, r3
    shadd16 r4, r4, r4
    shadd16 r5, r5, r5
    shadd16 r6, r6, r6
    shadd16 r7, r7, r7
    shadd16 r8, r8, r8
    shadd16 r9, r9, r9
    shadd16 r10, r10, r10
    shadd16 r11, r11, r11
    shadd16 r12, r12, r12

    subs    r0, r0, #1
    bne     shadd16MaxTest_LOOP
    pop     {r4-r11, pc}


_shadd8MinTest:

    push    {r4-r11, lr}

shadd8MinTest_LOOP:

    // loop 1
    shadd8  r2, r2, r1
    shadd8  r3, r3, r2
    shadd8  r4, r4, r3
    shadd8  r5, r5, r4
    shadd8  r6, r6, r5
    shadd8  r7, r7, r6
    shadd8  r8, r8, r7
    shadd8  r9, r9, r8
    shadd8  r10, r10, r9
    shadd8  r11, r11, r10
    shadd8  r12, r12, r11
    shadd8  r1, r1, r12

    // loop 2
    shadd8  r2, r2, r1
    shadd8  r3, r3, r2
    shadd8  r4, r4, r3
    shadd8  r5, r5, r4
    shadd8  r6, r6, r5
    shadd8  r7, r7, r6
    shadd8  r8, r8, r7
    shadd8  r9, r9, r8
    shadd8  r10, r10, r9
    shadd8  r11, r11, r10
    shadd8  r12, r12, r11
    shadd8  r1, r1, r12

    // loop 3
    shadd8  r2, r2, r1
    shadd8  r3, r3, r2
    shadd8  r4, r4, r3
    shadd8  r5, r5, r4
    shadd8  r6, r6, r5
    shadd8  r7, r7, r6
    shadd8  r8, r8, r7
    shadd8  r9, r9, r8
    shadd8  r10, r10, r9
    shadd8  r11, r11, r10
    shadd8  r12, r12, r11
    shadd8  r1, r1, r12

    // loop 4
    shadd8  r2, r2, r1
    shadd8  r3, r3, r2
    shadd8  r4, r4, r3
    shadd8  r5, r5, r4
    shadd8  r6, r6, r5
    shadd8  r7, r7, r6
    shadd8  r8, r8, r7
    shadd8  r9, r9, r8
    shadd8  r10, r10, r9
    shadd8  r11, r11, r10
    shadd8  r12, r12, r11
    shadd8  r1, r1, r12

    // loop 5
    shadd8  r2, r2, r1
    shadd8  r3, r3, r2
    shadd8  r4, r4, r3
    shadd8  r5, r5, r4
    shadd8  r6, r6, r5
    shadd8  r7, r7, r6
    shadd8  r8, r8, r7
    shadd8  r9, r9, r8
    shadd8  r10, r10, r9
    shadd8  r11, r11, r10
    shadd8  r12, r12, r11
    shadd8  r1, r1, r12

    subs    r0, r0, #1
    bne     shadd8MinTest_LOOP
    pop     {r4-r11, pc}

_shadd8MaxTest:

    push    {r4-r11, lr}

shadd8MaxTest_LOOP:

    // loop 1
    shadd8  r1, r1, r1
    shadd8  r2, r2, r2
    shadd8  r3, r3, r3
    shadd8  r4, r4, r4
    shadd8  r5, r5, r5
    shadd8  r6, r6, r6
    shadd8  r7, r7, r7
    shadd8  r8, r8, r8
    shadd8  r9, r9, r9
    shadd8  r10, r10, r10
    shadd8  r11, r11, r11
    shadd8  r12, r12, r12

    // loop 2
    shadd8  r1, r1, r1
    shadd8  r2, r2, r2
    shadd8  r3, r3, r3
    shadd8  r4, r4, r4
    shadd8  r5, r5, r5
    shadd8  r6, r6, r6
    shadd8  r7, r7, r7
    shadd8  r8, r8, r8
    shadd8  r9, r9, r9
    shadd8  r10, r10, r10
    shadd8  r11, r11, r11
    shadd8  r12, r12, r12

    // loop 3
    shadd8  r1, r1, r1
    shadd8  r2, r2, r2
    shadd8  r3, r3, r3
    shadd8  r4, r4, r4
    shadd8  r5, r5, r5
    shadd8  r6, r6, r6
    shadd8  r7, r7, r7
    shadd8  r8, r8, r8
    shadd8  r9, r9, r9
    shadd8  r10, r10, r10
    shadd8  r11, r11, r11
    shadd8  r12, r12, r12

    // loop 4
    shadd8  r1, r1, r1
    shadd8  r2, r2, r2
    shadd8  r3, r3, r3
    shadd8  r4, r4, r4
    shadd8  r5, r5, r5
    shadd8  r6, r6, r6
    shadd8  r7, r7, r7
    shadd8  r8, r8, r8
    shadd8  r9, r9, r9
    shadd8  r10, r10, r10
    shadd8  r11, r11, r11
    shadd8  r12, r12, r12

    // loop 5
    shadd8  r1, r1, r1
    shadd8  r2, r2, r2
    shadd8  r3, r3, r3
    shadd8  r4, r4, r4
    shadd8  r5, r5, r5
    shadd8  r6, r6, r6
    shadd8  r7, r7, r7
    shadd8  r8, r8, r8
    shadd8  r9, r9, r9
    shadd8  r10, r10, r10
    shadd8  r11, r11, r11
    shadd8  r12, r12, r12

    subs    r0, r0, #1
    bne     shadd8MaxTest_LOOP
    pop     {r4-r11, pc}


_shasxMinTest:

    push        {r4-r11, lr}

shasxMinTest_LOOP:

    // loop 1
    shasx       r2, r2, r1
    shasx       r3, r3, r2
    shasx       r4, r4, r3
    shaddsubx   r5, r5, r4
    shaddsubx   r6, r6, r5
    shaddsubx   r7, r7, r6
    shaddsubx   r8, r8, r7
    shaddsubx   r9, r9, r8
    shaddsubx   r10, r10, r9
    shaddsubx   r11, r11, r10
    shaddsubx   r12, r12, r11
    shaddsubx   r1, r1, r12

    // loop 2
    shasx       r2, r2, r1
    shasx       r3, r3, r2
    shasx       r4, r4, r3
    shaddsubx   r5, r5, r4
    shaddsubx   r6, r6, r5
    shaddsubx   r7, r7, r6
    shaddsubx   r8, r8, r7
    shaddsubx   r9, r9, r8
    shaddsubx   r10, r10, r9
    shaddsubx   r11, r11, r10
    shaddsubx   r12, r12, r11
    shaddsubx   r1, r1, r12

    // loop 3
    shasx       r2, r2, r1
    shasx       r3, r3, r2
    shasx       r4, r4, r3
    shaddsubx   r5, r5, r4
    shaddsubx   r6, r6, r5
    shaddsubx   r7, r7, r6
    shaddsubx   r8, r8, r7
    shaddsubx   r9, r9, r8
    shaddsubx   r10, r10, r9
    shaddsubx   r11, r11, r10
    shaddsubx   r12, r12, r11
    shaddsubx   r1, r1, r12

    // loop 4
    shasx       r2, r2, r1
    shasx       r3, r3, r2
    shasx       r4, r4, r3
    shaddsubx   r5, r5, r4
    shaddsubx   r6, r6, r5
    shaddsubx   r7, r7, r6
    shaddsubx   r8, r8, r7
    shaddsubx   r9, r9, r8
    shaddsubx   r10, r10, r9
    shaddsubx   r11, r11, r10
    shaddsubx   r12, r12, r11
    shaddsubx   r1, r1, r12

    // loop 5
    shasx       r2, r2, r1
    shasx       r3, r3, r2
    shasx       r4, r4, r3
    shaddsubx   r5, r5, r4
    shaddsubx   r6, r6, r5
    shaddsubx   r7, r7, r6
    shaddsubx   r8, r8, r7
    shaddsubx   r9, r9, r8
    shaddsubx   r10, r10, r9
    shaddsubx   r11, r11, r10
    shaddsubx   r12, r12, r11
    shaddsubx   r1, r1, r12

    subs    r0, r0, #1
    bne     shasxMinTest_LOOP
    pop     {r4-r11, pc}

_shasxMaxTest:

    push        {r4-r11, lr}

shasxMaxTest_LOOP:

    // loop 1
    shasx       r1, r1, r1
    shasx       r2, r2, r2
    shasx       r3, r3, r3
    shasx       r4, r4, r4
    shaddsubx   r5, r5, r5
    shaddsubx   r6, r6, r6
    shaddsubx   r7, r7, r7
    shaddsubx   r8, r8, r8
    shaddsubx   r9, r9, r9
    shaddsubx   r10, r10, r10
    shaddsubx   r11, r11, r11
    shaddsubx   r12, r12, r12

    // loop 2
    shasx       r1, r1, r1
    shasx       r2, r2, r2
    shasx       r3, r3, r3
    shasx       r4, r4, r4
    shaddsubx   r5, r5, r5
    shaddsubx   r6, r6, r6
    shaddsubx   r7, r7, r7
    shaddsubx   r8, r8, r8
    shaddsubx   r9, r9, r9
    shaddsubx   r10, r10, r10
    shaddsubx   r11, r11, r11
    shaddsubx   r12, r12, r12

    // loop 3
    shasx       r1, r1, r1
    shasx       r2, r2, r2
    shasx       r3, r3, r3
    shasx       r4, r4, r4
    shaddsubx   r5, r5, r5
    shaddsubx   r6, r6, r6
    shaddsubx   r7, r7, r7
    shaddsubx   r8, r8, r8
    shaddsubx   r9, r9, r9
    shaddsubx   r10, r10, r10
    shaddsubx   r11, r11, r11
    shaddsubx   r12, r12, r12

    // loop 4
    shasx       r1, r1, r1
    shasx       r2, r2, r2
    shasx       r3, r3, r3
    shasx       r4, r4, r4
    shaddsubx   r5, r5, r5
    shaddsubx   r6, r6, r6
    shaddsubx   r7, r7, r7
    shaddsubx   r8, r8, r8
    shaddsubx   r9, r9, r9
    shaddsubx   r10, r10, r10
    shaddsubx   r11, r11, r11
    shaddsubx   r12, r12, r12

    // loop 5
    shasx       r1, r1, r1
    shasx       r2, r2, r2
    shasx       r3, r3, r3
    shasx       r4, r4, r4
    shaddsubx   r5, r5, r5
    shaddsubx   r6, r6, r6
    shaddsubx   r7, r7, r7
    shaddsubx   r8, r8, r8
    shaddsubx   r9, r9, r9
    shaddsubx   r10, r10, r10
    shaddsubx   r11, r11, r11
    shaddsubx   r12, r12, r12

    subs    r0, r0, #1
    bne     shasxMaxTest_LOOP
    pop     {r4-r11, pc}


_shsaxMinTest:

    push        {r4-r11, lr}

shsaxMinTest_LOOP:

    // loop 1
    shsax       r2, r2, r1
    shsax       r3, r3, r2
    shsax       r4, r4, r3
    shsax       r5, r5, r4
    shsubaddx   r6, r6, r5
    shsubaddx   r7, r7, r6
    shsubaddx   r8, r8, r7
    shsubaddx   r9, r9, r8
    shsubaddx   r10, r10, r9
    shsubaddx   r11, r11, r10
    shsubaddx   r12, r12, r11
    shsubaddx   r1, r1, r12

    // loop 2
    shsax       r2, r2, r1
    shsax       r3, r3, r2
    shsax       r4, r4, r3
    shsax       r5, r5, r4
    shsubaddx   r6, r6, r5
    shsubaddx   r7, r7, r6
    shsubaddx   r8, r8, r7
    shsubaddx   r9, r9, r8
    shsubaddx   r10, r10, r9
    shsubaddx   r11, r11, r10
    shsubaddx   r12, r12, r11
    shsubaddx   r1, r1, r12

    // loop 3
    shsax       r2, r2, r1
    shsax       r3, r3, r2
    shsax       r4, r4, r3
    shsax       r5, r5, r4
    shsubaddx   r6, r6, r5
    shsubaddx   r7, r7, r6
    shsubaddx   r8, r8, r7
    shsubaddx   r9, r9, r8
    shsubaddx   r10, r10, r9
    shsubaddx   r11, r11, r10
    shsubaddx   r12, r12, r11
    shsubaddx   r1, r1, r12

    // loop 4
    shsax       r2, r2, r1
    shsax       r3, r3, r2
    shsax       r4, r4, r3
    shsax       r5, r5, r4
    shsubaddx   r6, r6, r5
    shsubaddx   r7, r7, r6
    shsubaddx   r8, r8, r7
    shsubaddx   r9, r9, r8
    shsubaddx   r10, r10, r9
    shsubaddx   r11, r11, r10
    shsubaddx   r12, r12, r11
    shsubaddx   r1, r1, r12

    // loop 5
    shsax       r2, r2, r1
    shsax       r3, r3, r2
    shsax       r4, r4, r3
    shsax       r5, r5, r4
    shsubaddx   r6, r6, r5
    shsubaddx   r7, r7, r6
    shsubaddx   r8, r8, r7
    shsubaddx   r9, r9, r8
    shsubaddx   r10, r10, r9
    shsubaddx   r11, r11, r10
    shsubaddx   r12, r12, r11
    shsubaddx   r1, r1, r12

    subs    r0, r0, #1
    bne     shsaxMinTest_LOOP
    pop     {r4-r11, pc}

_shsaxMaxTest:

    push        {r4-r11, lr}

shsaxMaxTest_LOOP:

    // loop 1
    shsax       r1, r1, r1
    shsax       r2, r2, r2
    shsax       r3, r3, r3
    shsax       r4, r4, r4
    shsubaddx   r5, r5, r5
    shsubaddx   r6, r6, r6
    shsubaddx   r7, r7, r7
    shsubaddx   r8, r8, r8
    shsubaddx   r9, r9, r9
    shsubaddx   r10, r10, r10
    shsubaddx   r11, r11, r11
    shsubaddx   r12, r12, r12

    // loop 2
    shsax       r1, r1, r1
    shsax       r2, r2, r2
    shsax       r3, r3, r3
    shsax       r4, r4, r4
    shsubaddx   r5, r5, r5
    shsubaddx   r6, r6, r6
    shsubaddx   r7, r7, r7
    shsubaddx   r8, r8, r8
    shsubaddx   r9, r9, r9
    shsubaddx   r10, r10, r10
    shsubaddx   r11, r11, r11
    shsubaddx   r12, r12, r12

    // loop 3
    shsax       r1, r1, r1
    shsax       r2, r2, r2
    shsax       r3, r3, r3
    shsax       r4, r4, r4
    shsubaddx   r5, r5, r5
    shsubaddx   r6, r6, r6
    shsubaddx   r7, r7, r7
    shsubaddx   r8, r8, r8
    shsubaddx   r9, r9, r9
    shsubaddx   r10, r10, r10
    shsubaddx   r11, r11, r11
    shsubaddx   r12, r12, r12

    // loop 4
    shsax       r1, r1, r1
    shsax       r2, r2, r2
    shsax       r3, r3, r3
    shsax       r4, r4, r4
    shsubaddx   r5, r5, r5
    shsubaddx   r6, r6, r6
    shsubaddx   r7, r7, r7
    shsubaddx   r8, r8, r8
    shsubaddx   r9, r9, r9
    shsubaddx   r10, r10, r10
    shsubaddx   r11, r11, r11
    shsubaddx   r12, r12, r12

    // loop 5
    shsax       r1, r1, r1
    shsax       r2, r2, r2
    shsax       r3, r3, r3
    shsax       r4, r4, r4
    shsubaddx   r5, r5, r5
    shsubaddx   r6, r6, r6
    shsubaddx   r7, r7, r7
    shsubaddx   r8, r8, r8
    shsubaddx   r9, r9, r9
    shsubaddx   r10, r10, r10
    shsubaddx   r11, r11, r11
    shsubaddx   r12, r12, r12

    subs    r0, r0, #1
    bne     shsaxMaxTest_LOOP
    pop     {r4-r11, pc}


_shsub16MinTest:

    push    {r4-r11, lr}

shsub16MinTest_LOOP:

    // loop 1
    shsub16 r2, r2, r1
    shsub16 r3, r3, r2
    shsub16 r4, r4, r3
    shsub16 r5, r5, r4
    shsub16 r6, r6, r5
    shsub16 r7, r7, r6
    shsub16 r8, r8, r7
    shsub16 r9, r9, r8
    shsub16 r10, r10, r9
    shsub16 r11, r11, r10
    shsub16 r12, r12, r11
    shsub16 r1, r1, r12

    // loop 2
    shsub16 r2, r2, r1
    shsub16 r3, r3, r2
    shsub16 r4, r4, r3
    shsub16 r5, r5, r4
    shsub16 r6, r6, r5
    shsub16 r7, r7, r6
    shsub16 r8, r8, r7
    shsub16 r9, r9, r8
    shsub16 r10, r10, r9
    shsub16 r11, r11, r10
    shsub16 r12, r12, r11
    shsub16 r1, r1, r12

    // loop 3
    shsub16 r2, r2, r1
    shsub16 r3, r3, r2
    shsub16 r4, r4, r3
    shsub16 r5, r5, r4
    shsub16 r6, r6, r5
    shsub16 r7, r7, r6
    shsub16 r8, r8, r7
    shsub16 r9, r9, r8
    shsub16 r10, r10, r9
    shsub16 r11, r11, r10
    shsub16 r12, r12, r11
    shsub16 r1, r1, r12

    // loop 4
    shsub16 r2, r2, r1
    shsub16 r3, r3, r2
    shsub16 r4, r4, r3
    shsub16 r5, r5, r4
    shsub16 r6, r6, r5
    shsub16 r7, r7, r6
    shsub16 r8, r8, r7
    shsub16 r9, r9, r8
    shsub16 r10, r10, r9
    shsub16 r11, r11, r10
    shsub16 r12, r12, r11
    shsub16 r1, r1, r12

    // loop 5
    shsub16 r2, r2, r1
    shsub16 r3, r3, r2
    shsub16 r4, r4, r3
    shsub16 r5, r5, r4
    shsub16 r6, r6, r5
    shsub16 r7, r7, r6
    shsub16 r8, r8, r7
    shsub16 r9, r9, r8
    shsub16 r10, r10, r9
    shsub16 r11, r11, r10
    shsub16 r12, r12, r11
    shsub16 r1, r1, r12

    subs    r0, r0, #1
    bne     shsub16MinTest_LOOP
    pop     {r4-r11, pc}

_shsub16MaxTest:

    push    {r4-r11, lr}

shsub16MaxTest_LOOP:

    // loop 1
    shsub16 r1, r1, r1
    shsub16 r2, r2, r2
    shsub16 r3, r3, r3
    shsub16 r4, r4, r4
    shsub16 r5, r5, r5
    shsub16 r6, r6, r6
    shsub16 r7, r7, r7
    shsub16 r8, r8, r8
    shsub16 r9, r9, r9
    shsub16 r10, r10, r10
    shsub16 r11, r11, r11
    shsub16 r12, r12, r12

    // loop 2
    shsub16 r1, r1, r1
    shsub16 r2, r2, r2
    shsub16 r3, r3, r3
    shsub16 r4, r4, r4
    shsub16 r5, r5, r5
    shsub16 r6, r6, r6
    shsub16 r7, r7, r7
    shsub16 r8, r8, r8
    shsub16 r9, r9, r9
    shsub16 r10, r10, r10
    shsub16 r11, r11, r11
    shsub16 r12, r12, r12

    // loop 3
    shsub16 r1, r1, r1
    shsub16 r2, r2, r2
    shsub16 r3, r3, r3
    shsub16 r4, r4, r4
    shsub16 r5, r5, r5
    shsub16 r6, r6, r6
    shsub16 r7, r7, r7
    shsub16 r8, r8, r8
    shsub16 r9, r9, r9
    shsub16 r10, r10, r10
    shsub16 r11, r11, r11
    shsub16 r12, r12, r12

    // loop 4
    shsub16 r1, r1, r1
    shsub16 r2, r2, r2
    shsub16 r3, r3, r3
    shsub16 r4, r4, r4
    shsub16 r5, r5, r5
    shsub16 r6, r6, r6
    shsub16 r7, r7, r7
    shsub16 r8, r8, r8
    shsub16 r9, r9, r9
    shsub16 r10, r10, r10
    shsub16 r11, r11, r11
    shsub16 r12, r12, r12

    // loop 5
    shsub16 r1, r1, r1
    shsub16 r2, r2, r2
    shsub16 r3, r3, r3
    shsub16 r4, r4, r4
    shsub16 r5, r5, r5
    shsub16 r6, r6, r6
    shsub16 r7, r7, r7
    shsub16 r8, r8, r8
    shsub16 r9, r9, r9
    shsub16 r10, r10, r10
    shsub16 r11, r11, r11
    shsub16 r12, r12, r12

    subs    r0, r0, #1
    bne     shsub16MaxTest_LOOP
    pop     {r4-r11, pc}


_shsub8MinTest:

    push    {r4-r11, lr}

shsub8MinTest_LOOP:

    // loop 1
    shsub8  r2, r2, r1
    shsub8  r3, r3, r2
    shsub8  r4, r4, r3
    shsub8  r5, r5, r4
    shsub8  r6, r6, r5
    shsub8  r7, r7, r6
    shsub8  r8, r8, r7
    shsub8  r9, r9, r8
    shsub8  r10, r10, r9
    shsub8  r11, r11, r10
    shsub8  r12, r12, r11
    shsub8  r1, r1, r12

    // loop 2
    shsub8  r2, r2, r1
    shsub8  r3, r3, r2
    shsub8  r4, r4, r3
    shsub8  r5, r5, r4
    shsub8  r6, r6, r5
    shsub8  r7, r7, r6
    shsub8  r8, r8, r7
    shsub8  r9, r9, r8
    shsub8  r10, r10, r9
    shsub8  r11, r11, r10
    shsub8  r12, r12, r11
    shsub8  r1, r1, r12

    // loop 3
    shsub8  r2, r2, r1
    shsub8  r3, r3, r2
    shsub8  r4, r4, r3
    shsub8  r5, r5, r4
    shsub8  r6, r6, r5
    shsub8  r7, r7, r6
    shsub8  r8, r8, r7
    shsub8  r9, r9, r8
    shsub8  r10, r10, r9
    shsub8  r11, r11, r10
    shsub8  r12, r12, r11
    shsub8  r1, r1, r12

    // loop 4
    shsub8  r2, r2, r1
    shsub8  r3, r3, r2
    shsub8  r4, r4, r3
    shsub8  r5, r5, r4
    shsub8  r6, r6, r5
    shsub8  r7, r7, r6
    shsub8  r8, r8, r7
    shsub8  r9, r9, r8
    shsub8  r10, r10, r9
    shsub8  r11, r11, r10
    shsub8  r12, r12, r11
    shsub8  r1, r1, r12

    // loop 5
    shsub8  r2, r2, r1
    shsub8  r3, r3, r2
    shsub8  r4, r4, r3
    shsub8  r5, r5, r4
    shsub8  r6, r6, r5
    shsub8  r7, r7, r6
    shsub8  r8, r8, r7
    shsub8  r9, r9, r8
    shsub8  r10, r10, r9
    shsub8  r11, r11, r10
    shsub8  r12, r12, r11
    shsub8  r1, r1, r12

    subs    r0, r0, #1
    bne     shsub8MinTest_LOOP
    pop     {r4-r11, pc}

_shsub8MaxTest:

    push    {r4-r11, lr}

shsub8MaxTest_LOOP:

    // loop 1
    shsub8  r1, r1, r1
    shsub8  r2, r2, r2
    shsub8  r3, r3, r3
    shsub8  r4, r4, r4
    shsub8  r5, r5, r5
    shsub8  r6, r6, r6
    shsub8  r7, r7, r7
    shsub8  r8, r8, r8
    shsub8  r9, r9, r9
    shsub8  r10, r10, r10
    shsub8  r11, r11, r11
    shsub8  r12, r12, r12

    // loop 2
    shsub8  r1, r1, r1
    shsub8  r2, r2, r2
    shsub8  r3, r3, r3
    shsub8  r4, r4, r4
    shsub8  r5, r5, r5
    shsub8  r6, r6, r6
    shsub8  r7, r7, r7
    shsub8  r8, r8, r8
    shsub8  r9, r9, r9
    shsub8  r10, r10, r10
    shsub8  r11, r11, r11
    shsub8  r12, r12, r12

    // loop 3
    shsub8  r1, r1, r1
    shsub8  r2, r2, r2
    shsub8  r3, r3, r3
    shsub8  r4, r4, r4
    shsub8  r5, r5, r5
    shsub8  r6, r6, r6
    shsub8  r7, r7, r7
    shsub8  r8, r8, r8
    shsub8  r9, r9, r9
    shsub8  r10, r10, r10
    shsub8  r11, r11, r11
    shsub8  r12, r12, r12

    // loop 4
    shsub8  r1, r1, r1
    shsub8  r2, r2, r2
    shsub8  r3, r3, r3
    shsub8  r4, r4, r4
    shsub8  r5, r5, r5
    shsub8  r6, r6, r6
    shsub8  r7, r7, r7
    shsub8  r8, r8, r8
    shsub8  r9, r9, r9
    shsub8  r10, r10, r10
    shsub8  r11, r11, r11
    shsub8  r12, r12, r12

    // loop 5
    shsub8  r1, r1, r1
    shsub8  r2, r2, r2
    shsub8  r3, r3, r3
    shsub8  r4, r4, r4
    shsub8  r5, r5, r5
    shsub8  r6, r6, r6
    shsub8  r7, r7, r7
    shsub8  r8, r8, r8
    shsub8  r9, r9, r9
    shsub8  r10, r10, r10
    shsub8  r11, r11, r11
    shsub8  r12, r12, r12

    subs    r0, r0, #1
    bne     shsub8MaxTest_LOOP
    pop     {r4-r11, pc}


_smlaMinTest:

    stmdb   sp!, {r4-r11, lr}

smlaMinTest_LOOP:

    // loop 1
    smlabt  r2, r2, r1, r1
    smlatb  r3, r3, r2, r2
    smlatt  r4, r4, r3, r3
    smlabb  r5, r5, r4, r4
    smlabt  r6, r6, r5, r5
    smlatb  r7, r7, r6, r6
    smlatt  r8, r8, r7, r7
    smlatb  r9, r9, r8, r8
    smlatt  r10, r10, r9, r9
    smlatb  r11, r11, r10, r10
    smlatt  r12, r12, r11, r11
    smlatb  r1, r1, r12, r12

    // loop 2
    smlabt  r2, r2, r1, r1
    smlatb  r3, r3, r2, r2
    smlatt  r4, r4, r3, r3
    smlabb  r5, r5, r4, r4
    smlabt  r6, r6, r5, r5
    smlatb  r7, r7, r6, r6
    smlatt  r8, r8, r7, r7
    smlatb  r9, r9, r8, r8
    smlatt  r10, r10, r9, r9
    smlatb  r11, r11, r10, r10
    smlatt  r12, r12, r11, r11
    smlatb  r1, r1, r12, r12

    // loop 3
    smlabt  r2, r2, r1, r1
    smlatb  r3, r3, r2, r2
    smlatt  r4, r4, r3, r3
    smlabb  r5, r5, r4, r4
    smlabt  r6, r6, r5, r5
    smlatb  r7, r7, r6, r6
    smlatt  r8, r8, r7, r7
    smlatb  r9, r9, r8, r8
    smlatt  r10, r10, r9, r9
    smlatb  r11, r11, r10, r10
    smlatt  r12, r12, r11, r11
    smlatb  r1, r1, r12, r12

    // loop 4
    smlabt  r2, r2, r1, r1
    smlatb  r3, r3, r2, r2
    smlatt  r4, r4, r3, r3
    smlabb  r5, r5, r4, r4
    smlabt  r6, r6, r5, r5
    smlatb  r7, r7, r6, r6
    smlatt  r8, r8, r7, r7
    smlatb  r9, r9, r8, r8
    smlatt  r10, r10, r9, r9
    smlatb  r11, r11, r10, r10
    smlatt  r12, r12, r11, r11
    smlatb  r1, r1, r12, r12

    // loop 5
    smlabt  r2, r2, r1, r1
    smlatb  r3, r3, r2, r2
    smlatt  r4, r4, r3, r3
    smlabb  r5, r5, r4, r4
    smlabt  r6, r6, r5, r5
    smlatb  r7, r7, r6, r6
    smlatt  r8, r8, r7, r7
    smlatb  r9, r9, r8, r8
    smlatt  r10, r10, r9, r9
    smlatb  r11, r11, r10, r10
    smlatt  r12, r12, r11, r11
    smlatb  r1, r1, r12, r12

    subs    r0, r0, #1
    bne     smlaMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smlaMaxTest:

    stmdb   sp!, {r4-r11, lr}

smlaMaxTest_LOOP:

    // loop 1
    smlabb  r1, r1, r1, r1
    smlabt  r2, r2, r2, r2
    smlabb  r3, r3, r3, r3
    smlabt  r4, r4, r4, r4
    smlabb  r5, r5, r5, r5
    smlabt  r6, r6, r6, r6
    smlabb  r7, r7, r7, r7
    smlabt  r8, r8, r8, r8
    smlabb  r9, r9, r9, r9
    smlabt  r10, r10, r10, r10
    smlabb  r11, r11, r11, r11
    smlabt  r12, r12, r12, r12

    // loop 2
    smlabb  r1, r1, r1, r1
    smlabt  r2, r2, r2, r2
    smlabb  r3, r3, r3, r3
    smlabt  r4, r4, r4, r4
    smlabb  r5, r5, r5, r5
    smlabt  r6, r6, r6, r6
    smlabb  r7, r7, r7, r7
    smlabt  r8, r8, r8, r8
    smlabb  r9, r9, r9, r9
    smlabt  r10, r10, r10, r10
    smlabb  r11, r11, r11, r11
    smlabt  r12, r12, r12, r12

    // loop 3
    smlabb  r1, r1, r1, r1
    smlabt  r2, r2, r2, r2
    smlabb  r3, r3, r3, r3
    smlabt  r4, r4, r4, r4
    smlabb  r5, r5, r5, r5
    smlabt  r6, r6, r6, r6
    smlabb  r7, r7, r7, r7
    smlabt  r8, r8, r8, r8
    smlabb  r9, r9, r9, r9
    smlabt  r10, r10, r10, r10
    smlabb  r11, r11, r11, r11
    smlabt  r12, r12, r12, r12

    // loop 4
    smlabb  r1, r1, r1, r1
    smlabt  r2, r2, r2, r2
    smlabb  r3, r3, r3, r3
    smlabt  r4, r4, r4, r4
    smlabb  r5, r5, r5, r5
    smlabt  r6, r6, r6, r6
    smlabb  r7, r7, r7, r7
    smlabt  r8, r8, r8, r8
    smlabb  r9, r9, r9, r9
    smlabt  r10, r10, r10, r10
    smlabb  r11, r11, r11, r11
    smlabt  r12, r12, r12, r12

    // loop 5
    smlabb  r1, r1, r1, r1
    smlabt  r2, r2, r2, r2
    smlabb  r3, r3, r3, r3
    smlabt  r4, r4, r4, r4
    smlabb  r5, r5, r5, r5
    smlabt  r6, r6, r6, r6
    smlabb  r7, r7, r7, r7
    smlabt  r8, r8, r8, r8
    smlabb  r9, r9, r9, r9
    smlabt  r10, r10, r10, r10
    smlabb  r11, r11, r11, r11
    smlabt  r12, r12, r12, r12

    subs    r0, r0, #1
    bne     smlaMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smladMinTest:

    stmdb   sp!, {r4-r11, lr}

smladMinTest_LOOP:

    // loop 1
    smlad   r2, r2, r1, r1
    smladx  r3, r3, r2, r2
    smlad   r4, r4, r3, r3
    smladx  r5, r5, r4, r4
    smlad   r6, r6, r5, r5
    smladx  r7, r7, r6, r6
    smlad   r8, r8, r7, r7
    smladx  r9, r9, r8, r8
    smlad   r10, r10, r9, r9
    smladx  r11, r11, r10, r10
    smlad   r12, r12, r11, r11
    smladx  r1, r1, r12, r12

    // loop 2
    smlad   r2, r2, r1, r1
    smladx  r3, r3, r2, r2
    smlad   r4, r4, r3, r3
    smladx  r5, r5, r4, r4
    smlad   r6, r6, r5, r5
    smladx  r7, r7, r6, r6
    smlad   r8, r8, r7, r7
    smladx  r9, r9, r8, r8
    smlad   r10, r10, r9, r9
    smladx  r11, r11, r10, r10
    smlad   r12, r12, r11, r11
    smladx  r1, r1, r12, r12

    // loop 3
    smlad   r2, r2, r1, r1
    smladx  r3, r3, r2, r2
    smlad   r4, r4, r3, r3
    smladx  r5, r5, r4, r4
    smlad   r6, r6, r5, r5
    smladx  r7, r7, r6, r6
    smlad   r8, r8, r7, r7
    smladx  r9, r9, r8, r8
    smlad   r10, r10, r9, r9
    smladx  r11, r11, r10, r10
    smlad   r12, r12, r11, r11
    smladx  r1, r1, r12, r12

    // loop 4
    smlad   r2, r2, r1, r1
    smladx  r3, r3, r2, r2
    smlad   r4, r4, r3, r3
    smladx  r5, r5, r4, r4
    smlad   r6, r6, r5, r5
    smladx  r7, r7, r6, r6
    smlad   r8, r8, r7, r7
    smladx  r9, r9, r8, r8
    smlad   r10, r10, r9, r9
    smladx  r11, r11, r10, r10
    smlad   r12, r12, r11, r11
    smladx  r1, r1, r12, r12

    // loop 5
    smlad   r2, r2, r1, r1
    smladx  r3, r3, r2, r2
    smlad   r4, r4, r3, r3
    smladx  r5, r5, r4, r4
    smlad   r6, r6, r5, r5
    smladx  r7, r7, r6, r6
    smlad   r8, r8, r7, r7
    smladx  r9, r9, r8, r8
    smlad   r10, r10, r9, r9
    smladx  r11, r11, r10, r10
    smlad   r12, r12, r11, r11
    smladx  r1, r1, r12, r12

    subs    r0, r0, #1
    bne     smladMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smladMaxTest:

    stmdb   sp!, {r4-r11, lr}

smladMaxTest_LOOP:

    // loop 1
    smlad   r1, r1, r1, r1
    smladx  r2, r2, r2, r2
    smlad   r3, r3, r3, r3
    smladx  r4, r4, r4, r4
    smlad   r5, r5, r5, r5
    smladx  r6, r6, r6, r6
    smlad   r7, r7, r7, r7
    smladx  r8, r8, r8, r8
    smlad   r9, r9, r9, r9
    smladx  r10, r10, r10, r10
    smlad   r11, r11, r11, r11
    smladx  r12, r12, r12, r12

    // loop 2
    smlad   r1, r1, r1, r1
    smladx  r2, r2, r2, r2
    smlad   r3, r3, r3, r3
    smladx  r4, r4, r4, r4
    smlad   r5, r5, r5, r5
    smladx  r6, r6, r6, r6
    smlad   r7, r7, r7, r7
    smladx  r8, r8, r8, r8
    smlad   r9, r9, r9, r9
    smladx  r10, r10, r10, r10
    smlad   r11, r11, r11, r11
    smladx  r12, r12, r12, r12

    // loop 3
    smlad   r1, r1, r1, r1
    smladx  r2, r2, r2, r2
    smlad   r3, r3, r3, r3
    smladx  r4, r4, r4, r4
    smlad   r5, r5, r5, r5
    smladx  r6, r6, r6, r6
    smlad   r7, r7, r7, r7
    smladx  r8, r8, r8, r8
    smlad   r9, r9, r9, r9
    smladx  r10, r10, r10, r10
    smlad   r11, r11, r11, r11
    smladx  r12, r12, r12, r12

    // loop 4
    smlad   r1, r1, r1, r1
    smladx  r2, r2, r2, r2
    smlad   r3, r3, r3, r3
    smladx  r4, r4, r4, r4
    smlad   r5, r5, r5, r5
    smladx  r6, r6, r6, r6
    smlad   r7, r7, r7, r7
    smladx  r8, r8, r8, r8
    smlad   r9, r9, r9, r9
    smladx  r10, r10, r10, r10
    smlad   r11, r11, r11, r11
    smladx  r12, r12, r12, r12

    // loop 5
    smlad   r1, r1, r1, r1
    smladx  r2, r2, r2, r2
    smlad   r3, r3, r3, r3
    smladx  r4, r4, r4, r4
    smlad   r5, r5, r5, r5
    smladx  r6, r6, r6, r6
    smlad   r7, r7, r7, r7
    smladx  r8, r8, r8, r8
    smlad   r9, r9, r9, r9
    smladx  r10, r10, r10, r10
    smlad   r11, r11, r11, r11
    smladx  r12, r12, r12, r12

    subs    r0, r0, #1
    bne     smladMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smlalMinTest:

    stmdb   sp!, {r4-r11, lr}

smlalMinTest_LOOP:

    // loop 1
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10

    // loop 2
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10

    // loop 3
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10

    // loop 4
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10

    // loop 5
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10
    smlal   r2, r1, r11, r12
    smlal   r4, r3, r1, r2
    smlal   r6, r5, r4, r3
    smlal   r7, r8, r5, r6
    smlal   r9, r10, r7, r8
    smlal   r11, r12, r9, r10

    subs    r0, r0, #1
    bne     smlalMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smlalMaxTest:

    stmdb   sp!, {r4-r11, lr}

    mov     r14, #100

smlalMaxTest_LOOP:

    // loop 1
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14

    // loop 2
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14

    // loop 3
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14

    // loop 4
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14

    // loop 5
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14
    smlal   r1, r2, r14, r14
    smlal   r3, r4, r14, r14
    smlal   r5, r6, r14, r14
    smlal   r7, r8, r14, r14
    smlal   r9, r10, r14, r14
    smlal   r11, r12, r14, r14

    subs    r0, r0, #1
    bne     smlalMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smlalxyMinTest:

    stmdb   sp!, {r4-r11, lr}

smlalxyMinTest_LOOP:

    // loop 1
    smlalbb     r2, r1, r2, r1
    smlalbt     r3, r2, r3, r2
    smlaltb     r4, r3, r4, r3
    smlaltt     r5, r4, r5, r4
    smlalbb     r6, r5, r6, r5
    smlalbt     r7, r6, r7, r6
    smlaltb     r8, r7, r8, r7
    smlaltt     r9, r8, r9, r8
    smlaltb     r10, r9, r10, r9
    smlaltt     r11, r10, r11, r10
    smlaltb     r12, r11, r12, r11
    smlaltt     r1, r12, r1, r12

    // loop 2
    smlalbb     r2, r1, r2, r1
    smlalbt     r3, r2, r3, r2
    smlaltb     r4, r3, r4, r3
    smlaltt     r5, r4, r5, r4
    smlalbb     r6, r5, r6, r5
    smlalbt     r7, r6, r7, r6
    smlaltb     r8, r7, r8, r7
    smlaltt     r9, r8, r9, r8
    smlaltb     r10, r9, r10, r9
    smlaltt     r11, r10, r11, r10
    smlaltb     r12, r11, r12, r11
    smlaltt     r1, r12, r1, r12

    // loop 3
    smlalbb     r2, r1, r2, r1
    smlalbt     r3, r2, r3, r2
    smlaltb     r4, r3, r4, r3
    smlaltt     r5, r4, r5, r4
    smlalbb     r6, r5, r6, r5
    smlalbt     r7, r6, r7, r6
    smlaltb     r8, r7, r8, r7
    smlaltt     r9, r8, r9, r8
    smlaltb     r10, r9, r10, r9
    smlaltt     r11, r10, r11, r10
    smlaltb     r12, r11, r12, r11
    smlaltt     r1, r12, r1, r12

    // loop 4
    smlalbb     r2, r1, r2, r1
    smlalbt     r3, r2, r3, r2
    smlaltb     r4, r3, r4, r3
    smlaltt     r5, r4, r5, r4
    smlalbb     r6, r5, r6, r5
    smlalbt     r7, r6, r7, r6
    smlaltb     r8, r7, r8, r7
    smlaltt     r9, r8, r9, r8
    smlaltb     r10, r9, r10, r9
    smlaltt     r11, r10, r11, r10
    smlaltb     r12, r11, r12, r11
    smlaltt     r1, r12, r1, r12

    // loop 5
    smlalbb     r2, r1, r2, r1
    smlalbt     r3, r2, r3, r2
    smlaltb     r4, r3, r4, r3
    smlaltt     r5, r4, r5, r4
    smlalbb     r6, r5, r6, r5
    smlalbt     r7, r6, r7, r6
    smlaltb     r8, r7, r8, r7
    smlaltt     r9, r8, r9, r8
    smlaltb     r10, r9, r10, r9
    smlaltt     r11, r10, r11, r10
    smlaltb     r12, r11, r12, r11
    smlaltt     r1, r12, r1, r12

    subs    r0, r0, #1
    bne     smlalxyMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smlalxyMaxTest:

    stmdb   sp!, {r4-r11, lr}

smlalxyMaxTest_LOOP:

    // loop 1
    smlalbb r1, r8, r1, r1
    smlalbb r2, r9, r2, r2
    smlalbb r3, r10, r3, r3
    smlalbb r4, r11, r4, r4
    smlalbb r5, r12, r5, r5
    smlalbb r6, r14, r6, r6
    smlalbb r7, r1, r7, r7
    smlalbb r8, r2, r8, r8
    smlalbb r9, r3, r9, r9
    smlalbb r10, r4, r10, r10
    smlalbb r11, r5, r11, r11
    smlalbb r12, r6, r12, r12

    // loop 2
    smlalbb r1, r8, r1, r1
    smlalbb r2, r9, r2, r2
    smlalbb r3, r10, r3, r3
    smlalbb r4, r11, r4, r4
    smlalbb r5, r12, r5, r5
    smlalbb r6, r14, r6, r6
    smlalbb r7, r1, r7, r7
    smlalbb r8, r2, r8, r8
    smlalbb r9, r3, r9, r9
    smlalbb r10, r4, r10, r10
    smlalbb r11, r5, r11, r11
    smlalbb r12, r6, r12, r12

    // loop 3
    smlalbb r1, r8, r1, r1
    smlalbb r2, r9, r2, r2
    smlalbb r3, r10, r3, r3
    smlalbb r4, r11, r4, r4
    smlalbb r5, r12, r5, r5
    smlalbb r6, r14, r6, r6
    smlalbb r7, r1, r7, r7
    smlalbb r8, r2, r8, r8
    smlalbb r9, r3, r9, r9
    smlalbb r10, r4, r10, r10
    smlalbb r11, r5, r11, r11
    smlalbb r12, r6, r12, r12

    // loop 4
    smlalbb r1, r8, r1, r1
    smlalbb r2, r9, r2, r2
    smlalbb r3, r10, r3, r3
    smlalbb r4, r11, r4, r4
    smlalbb r5, r12, r5, r5
    smlalbb r6, r14, r6, r6
    smlalbb r7, r1, r7, r7
    smlalbb r8, r2, r8, r8
    smlalbb r9, r3, r9, r9
    smlalbb r10, r4, r10, r10
    smlalbb r11, r5, r11, r11
    smlalbb r12, r6, r12, r12

    // loop 5
    smlalbb r1, r8, r1, r1
    smlalbb r2, r9, r2, r2
    smlalbb r3, r10, r3, r3
    smlalbb r4, r11, r4, r4
    smlalbb r5, r12, r5, r5
    smlalbb r6, r14, r6, r6
    smlalbb r7, r1, r7, r7
    smlalbb r8, r2, r8, r8
    smlalbb r9, r3, r9, r9
    smlalbb r10, r4, r10, r10
    smlalbb r11, r5, r11, r11
    smlalbb r12, r6, r12, r12

    subs    r0, r0, #1
    bne     smlalxyMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smlaldMinTest:

    stmdb   sp!, {r4-r11, lr}

smlaldMinTest_LOOP:

    // loop 1
    smlald  r2, r1, r2, r1
    smlaldx r3, r2, r3, r2
    smlald  r4, r3, r4, r3
    smlaldx r5, r4, r5, r4
    smlald  r6, r5, r6, r5
    smlaldx r7, r6, r7, r6
    smlald  r8, r7, r8, r7
    smlaldx r9, r8, r9, r8
    smlald  r10, r9, r10, r9
    smlaldx r11, r10, r11, r10
    smlald  r12, r11, r12, r11
    smlaldx r1, r12, r1, r12

    // loop 2
    smlald  r2, r1, r2, r1
    smlaldx r3, r2, r3, r2
    smlald  r4, r3, r4, r3
    smlaldx r5, r4, r5, r4
    smlald  r6, r5, r6, r5
    smlaldx r7, r6, r7, r6
    smlald  r8, r7, r8, r7
    smlaldx r9, r8, r9, r8
    smlald  r10, r9, r10, r9
    smlaldx r11, r10, r11, r10
    smlald  r12, r11, r12, r11
    smlaldx r1, r12, r1, r12

    // loop 3
    smlald  r2, r1, r2, r1
    smlaldx r3, r2, r3, r2
    smlald  r4, r3, r4, r3
    smlaldx r5, r4, r5, r4
    smlald  r6, r5, r6, r5
    smlaldx r7, r6, r7, r6
    smlald  r8, r7, r8, r7
    smlaldx r9, r8, r9, r8
    smlald  r10, r9, r10, r9
    smlaldx r11, r10, r11, r10
    smlald  r12, r11, r12, r11
    smlaldx r1, r12, r1, r12

    // loop 4
    smlald  r2, r1, r2, r1
    smlaldx r3, r2, r3, r2
    smlald  r4, r3, r4, r3
    smlaldx r5, r4, r5, r4
    smlald  r6, r5, r6, r5
    smlaldx r7, r6, r7, r6
    smlald  r8, r7, r8, r7
    smlaldx r9, r8, r9, r8
    smlald  r10, r9, r10, r9
    smlaldx r11, r10, r11, r10
    smlald  r12, r11, r12, r11
    smlaldx r1, r12, r1, r12

    // loop 5
    smlald  r2, r1, r2, r1
    smlaldx r3, r2, r3, r2
    smlald  r4, r3, r4, r3
    smlaldx r5, r4, r5, r4
    smlald  r6, r5, r6, r5
    smlaldx r7, r6, r7, r6
    smlald  r8, r7, r8, r7
    smlaldx r9, r8, r9, r8
    smlald  r10, r9, r10, r9
    smlaldx r11, r10, r11, r10
    smlald  r12, r11, r12, r11
    smlaldx r1, r12, r1, r12

    subs    r0, r0, #1
    bne     smlaldMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smlaldMaxTest:

    stmdb   sp!, {r4-r11, lr}

smlaldMaxTest_LOOP:

    // loop 1
    smlaldx r1, r8, r0, r0
    smlald  r2, r9, r0, r0
    smlaldx r3, r10, r0, r0
    smlald  r4, r11, r0, r0
    smlaldx r5, r12, r0, r0
    smlald  r6, r14, r0, r0
    smlaldx r7, r1, r0, r0
    smlald  r8, r2, r0, r0
    smlaldx r9, r3, r0, r0
    smlald  r10, r4, r0, r0
    smlaldx r11, r5, r0, r0
    smlald  r12, r6, r0, r0

    // loop 2
    smlaldx r1, r8, r0, r0
    smlald  r2, r9, r0, r0
    smlaldx r3, r10, r0, r0
    smlald  r4, r11, r0, r0
    smlaldx r5, r12, r0, r0
    smlald  r6, r14, r0, r0
    smlaldx r7, r1, r0, r0
    smlald  r8, r2, r0, r0
    smlaldx r9, r3, r0, r0
    smlald  r10, r4, r0, r0
    smlaldx r11, r5, r0, r0
    smlald  r12, r6, r0, r0

    // loop 3
    smlaldx r1, r8, r0, r0
    smlald  r2, r9, r0, r0
    smlaldx r3, r10, r0, r0
    smlald  r4, r11, r0, r0
    smlaldx r5, r12, r0, r0
    smlald  r6, r14, r0, r0
    smlaldx r7, r1, r0, r0
    smlald  r8, r2, r0, r0
    smlaldx r9, r3, r0, r0
    smlald  r10, r4, r0, r0
    smlaldx r11, r5, r0, r0
    smlald  r12, r6, r0, r0

    // loop 4
    smlaldx r1, r8, r0, r0
    smlald  r2, r9, r0, r0
    smlaldx r3, r10, r0, r0
    smlald  r4, r11, r0, r0
    smlaldx r5, r12, r0, r0
    smlald  r6, r14, r0, r0
    smlaldx r7, r1, r0, r0
    smlald  r8, r2, r0, r0
    smlaldx r9, r3, r0, r0
    smlald  r10, r4, r0, r0
    smlaldx r11, r5, r0, r0
    smlald  r12, r6, r0, r0

    // loop 5
    smlaldx r1, r8, r0, r0
    smlald  r2, r9, r0, r0
    smlaldx r3, r10, r0, r0
    smlald  r4, r11, r0, r0
    smlaldx r5, r12, r0, r0
    smlald  r6, r14, r0, r0
    smlaldx r7, r1, r0, r0
    smlald  r8, r2, r0, r0
    smlaldx r9, r3, r0, r0
    smlald  r10, r4, r0, r0
    smlaldx r11, r5, r0, r0
    smlald  r12, r6, r0, r0

    subs    r0, r0, #1
    bne     smlaldMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smlawMinTest:

    stmdb   sp!, {r4-r11, lr}

smlawMinTest_LOOP:

    // loop 1
    smlawb  r2, r1, r2, r1
    smlawt  r3, r2, r3, r2
    smlawb  r4, r3, r4, r3
    smlawt  r5, r4, r5, r4
    smlawb  r6, r5, r6, r5
    smlawt  r7, r6, r7, r6
    smlawb  r8, r7, r8, r7
    smlawt  r9, r8, r9, r8
    smlawb  r10, r9, r10, r9
    smlawt  r11, r10, r11, r10
    smlawb  r12, r11, r12, r11
    smlawt  r1, r12, r1, r12

    // loop 2
    smlawb  r2, r1, r2, r1
    smlawt  r3, r2, r3, r2
    smlawb  r4, r3, r4, r3
    smlawt  r5, r4, r5, r4
    smlawb  r6, r5, r6, r5
    smlawt  r7, r6, r7, r6
    smlawb  r8, r7, r8, r7
    smlawt  r9, r8, r9, r8
    smlawb  r10, r9, r10, r9
    smlawt  r11, r10, r11, r10
    smlawb  r12, r11, r12, r11
    smlawt  r1, r12, r1, r12

    // loop 3
    smlawb  r2, r1, r2, r1
    smlawt  r3, r2, r3, r2
    smlawb  r4, r3, r4, r3
    smlawt  r5, r4, r5, r4
    smlawb  r6, r5, r6, r5
    smlawt  r7, r6, r7, r6
    smlawb  r8, r7, r8, r7
    smlawt  r9, r8, r9, r8
    smlawb  r10, r9, r10, r9
    smlawt  r11, r10, r11, r10
    smlawb  r12, r11, r12, r11
    smlawt  r1, r12, r1, r12

    // loop 4
    smlawb  r2, r1, r2, r1
    smlawt  r3, r2, r3, r2
    smlawb  r4, r3, r4, r3
    smlawt  r5, r4, r5, r4
    smlawb  r6, r5, r6, r5
    smlawt  r7, r6, r7, r6
    smlawb  r8, r7, r8, r7
    smlawt  r9, r8, r9, r8
    smlawb  r10, r9, r10, r9
    smlawt  r11, r10, r11, r10
    smlawb  r12, r11, r12, r11
    smlawt  r1, r12, r1, r12

    // loop 5
    smlawb  r2, r1, r2, r1
    smlawt  r3, r2, r3, r2
    smlawb  r4, r3, r4, r3
    smlawt  r5, r4, r5, r4
    smlawb  r6, r5, r6, r5
    smlawt  r7, r6, r7, r6
    smlawb  r8, r7, r8, r7
    smlawt  r9, r8, r9, r8
    smlawb  r10, r9, r10, r9
    smlawt  r11, r10, r11, r10
    smlawb  r12, r11, r12, r11
    smlawt  r1, r12, r1, r12

    subs    r0, r0, #1
    bne     smlawMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smlawMaxTest:

    stmdb   sp!, {r4-r11, lr}

smlawMaxTest_LOOP:

    // loop 1
    smlawb  r1, r0, r0, r0
    smlawt  r2, r0, r0, r0
    smlawb  r3, r0, r0, r0
    smlawt  r4, r0, r0, r0
    smlawb  r5, r0, r0, r0
    smlawt  r6, r0, r0, r0
    smlawb  r7, r0, r0, r0
    smlawt  r8, r0, r0, r0
    smlawb  r9, r0, r0, r0
    smlawt  r10, r0, r0, r0
    smlawb  r11, r0, r0, r0
    smlawt  r12, r0, r0, r0

    // loop 2
    smlawb  r1, r0, r0, r0
    smlawt  r2, r0, r0, r0
    smlawb  r3, r0, r0, r0
    smlawt  r4, r0, r0, r0
    smlawb  r5, r0, r0, r0
    smlawt  r6, r0, r0, r0
    smlawb  r7, r0, r0, r0
    smlawt  r8, r0, r0, r0
    smlawb  r9, r0, r0, r0
    smlawt  r10, r0, r0, r0
    smlawb  r11, r0, r0, r0
    smlawt  r12, r0, r0, r0

    // loop 3
    smlawb  r1, r0, r0, r0
    smlawt  r2, r0, r0, r0
    smlawb  r3, r0, r0, r0
    smlawt  r4, r0, r0, r0
    smlawb  r5, r0, r0, r0
    smlawt  r6, r0, r0, r0
    smlawb  r7, r0, r0, r0
    smlawt  r8, r0, r0, r0
    smlawb  r9, r0, r0, r0
    smlawt  r10, r0, r0, r0
    smlawb  r11, r0, r0, r0
    smlawt  r12, r0, r0, r0

    // loop 4
    smlawb  r1, r0, r0, r0
    smlawt  r2, r0, r0, r0
    smlawb  r3, r0, r0, r0
    smlawt  r4, r0, r0, r0
    smlawb  r5, r0, r0, r0
    smlawt  r6, r0, r0, r0
    smlawb  r7, r0, r0, r0
    smlawt  r8, r0, r0, r0
    smlawb  r9, r0, r0, r0
    smlawt  r10, r0, r0, r0
    smlawb  r11, r0, r0, r0
    smlawt  r12, r0, r0, r0

    // loop 5
    smlawb  r1, r0, r0, r0
    smlawt  r2, r0, r0, r0
    smlawb  r3, r0, r0, r0
    smlawt  r4, r0, r0, r0
    smlawb  r5, r0, r0, r0
    smlawt  r6, r0, r0, r0
    smlawb  r7, r0, r0, r0
    smlawt  r8, r0, r0, r0
    smlawb  r9, r0, r0, r0
    smlawt  r10, r0, r0, r0
    smlawb  r11, r0, r0, r0
    smlawt  r12, r0, r0, r0

    subs    r0, r0, #1
    bne     smlawMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smlsdMinTest:

    stmdb   sp!, {r4-r11, lr}

smlsdMinTest_LOOP:

    // loop 1
    smlsd   r2, r1, r2, r1
    smlsdx  r3, r2, r3, r2
    smlsd   r4, r3, r4, r3
    smlsdx  r5, r4, r5, r4
    smlsd   r6, r5, r6, r5
    smlsdx  r7, r6, r7, r6
    smlsd   r8, r7, r8, r7
    smlsdx  r9, r8, r9, r8
    smlsd   r10, r9, r10, r9
    smlsdx  r11, r10, r11, r10
    smlsd   r12, r11, r12, r11
    smlsdx  r1, r12, r1, r12

    // loop 2
    smlsd   r2, r1, r2, r1
    smlsdx  r3, r2, r3, r2
    smlsd   r4, r3, r4, r3
    smlsdx  r5, r4, r5, r4
    smlsd   r6, r5, r6, r5
    smlsdx  r7, r6, r7, r6
    smlsd   r8, r7, r8, r7
    smlsdx  r9, r8, r9, r8
    smlsd   r10, r9, r10, r9
    smlsdx  r11, r10, r11, r10
    smlsd   r12, r11, r12, r11
    smlsdx  r1, r12, r1, r12

    // loop 3
    smlsd   r2, r1, r2, r1
    smlsdx  r3, r2, r3, r2
    smlsd   r4, r3, r4, r3
    smlsdx  r5, r4, r5, r4
    smlsd   r6, r5, r6, r5
    smlsdx  r7, r6, r7, r6
    smlsd   r8, r7, r8, r7
    smlsdx  r9, r8, r9, r8
    smlsd   r10, r9, r10, r9
    smlsdx  r11, r10, r11, r10
    smlsd   r12, r11, r12, r11
    smlsdx  r1, r12, r1, r12

    // loop 4
    smlsd   r2, r1, r2, r1
    smlsdx  r3, r2, r3, r2
    smlsd   r4, r3, r4, r3
    smlsdx  r5, r4, r5, r4
    smlsd   r6, r5, r6, r5
    smlsdx  r7, r6, r7, r6
    smlsd   r8, r7, r8, r7
    smlsdx  r9, r8, r9, r8
    smlsd   r10, r9, r10, r9
    smlsdx  r11, r10, r11, r10
    smlsd   r12, r11, r12, r11
    smlsdx  r1, r12, r1, r12

    // loop 5
    smlsd   r2, r1, r2, r1
    smlsdx  r3, r2, r3, r2
    smlsd   r4, r3, r4, r3
    smlsdx  r5, r4, r5, r4
    smlsd   r6, r5, r6, r5
    smlsdx  r7, r6, r7, r6
    smlsd   r8, r7, r8, r7
    smlsdx  r9, r8, r9, r8
    smlsd   r10, r9, r10, r9
    smlsdx  r11, r10, r11, r10
    smlsd   r12, r11, r12, r11
    smlsdx  r1, r12, r1, r12
    
    subs    r0, r0, #1
    bne     smlsdMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smlsdMaxTest:

    stmdb   sp!, {r4-r11, lr}

smlsdMaxTest_LOOP:

    // loop 1
    smlsd   r1, r0, r0, r0
    smlsdx  r2, r0, r0, r0
    smlsd   r3, r0, r0, r0
    smlsdx  r4, r0, r0, r0
    smlsd   r5, r0, r0, r0
    smlsdx  r6, r0, r0, r0
    smlsd   r7, r0, r0, r0
    smlsdx  r8, r0, r0, r0
    smlsd   r9, r0, r0, r0
    smlsdx  r10, r0, r0, r0
    smlsd   r11, r0, r0, r0
    smlsdx  r12, r0, r0, r0

    // loop 2
    smlsd   r1, r0, r0, r0
    smlsdx  r2, r0, r0, r0
    smlsd   r3, r0, r0, r0
    smlsdx  r4, r0, r0, r0
    smlsd   r5, r0, r0, r0
    smlsdx  r6, r0, r0, r0
    smlsd   r7, r0, r0, r0
    smlsdx  r8, r0, r0, r0
    smlsd   r9, r0, r0, r0
    smlsdx  r10, r0, r0, r0
    smlsd   r11, r0, r0, r0
    smlsdx  r12, r0, r0, r0

    // loop 3
    smlsd   r1, r0, r0, r0
    smlsdx  r2, r0, r0, r0
    smlsd   r3, r0, r0, r0
    smlsdx  r4, r0, r0, r0
    smlsd   r5, r0, r0, r0
    smlsdx  r6, r0, r0, r0
    smlsd   r7, r0, r0, r0
    smlsdx  r8, r0, r0, r0
    smlsd   r9, r0, r0, r0
    smlsdx  r10, r0, r0, r0
    smlsd   r11, r0, r0, r0
    smlsdx  r12, r0, r0, r0

    // loop 4
    smlsd   r1, r0, r0, r0
    smlsdx  r2, r0, r0, r0
    smlsd   r3, r0, r0, r0
    smlsdx  r4, r0, r0, r0
    smlsd   r5, r0, r0, r0
    smlsdx  r6, r0, r0, r0
    smlsd   r7, r0, r0, r0
    smlsdx  r8, r0, r0, r0
    smlsd   r9, r0, r0, r0
    smlsdx  r10, r0, r0, r0
    smlsd   r11, r0, r0, r0
    smlsdx  r12, r0, r0, r0

    // loop 5
    smlsd   r1, r0, r0, r0
    smlsdx  r2, r0, r0, r0
    smlsd   r3, r0, r0, r0
    smlsdx  r4, r0, r0, r0
    smlsd   r5, r0, r0, r0
    smlsdx  r6, r0, r0, r0
    smlsd   r7, r0, r0, r0
    smlsdx  r8, r0, r0, r0
    smlsd   r9, r0, r0, r0
    smlsdx  r10, r0, r0, r0
    smlsd   r11, r0, r0, r0
    smlsdx  r12, r0, r0, r0

    subs    r0, r0, #1
    bne     smlsdMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smlsldMinTest:

    stmdb   sp!, {r4-r11, lr}

smlsldMinTest_LOOP:

    // loop 1
    smlsld  r2, r1, r2, r1
    smlsldx r3, r2, r3, r2
    smlsld  r4, r3, r4, r3
    smlsldx r5, r4, r5, r4
    smlsld  r6, r5, r6, r5
    smlsldx r7, r6, r7, r6
    smlsld  r8, r7, r8, r7
    smlsldx r9, r8, r9, r8
    smlsld  r10, r9, r10, r9
    smlsldx r11, r10, r11, r10
    smlsld  r12, r11, r12, r11
    smlsldx r1, r12, r1, r12

    // loop 2
    smlsld  r2, r1, r2, r1
    smlsldx r3, r2, r3, r2
    smlsld  r4, r3, r4, r3
    smlsldx r5, r4, r5, r4
    smlsld  r6, r5, r6, r5
    smlsldx r7, r6, r7, r6
    smlsld  r8, r7, r8, r7
    smlsldx r9, r8, r9, r8
    smlsld  r10, r9, r10, r9
    smlsldx r11, r10, r11, r10
    smlsld  r12, r11, r12, r11
    smlsldx r1, r12, r1, r12

    // loop 3
    smlsld  r2, r1, r2, r1
    smlsldx r3, r2, r3, r2
    smlsld  r4, r3, r4, r3
    smlsldx r5, r4, r5, r4
    smlsld  r6, r5, r6, r5
    smlsldx r7, r6, r7, r6
    smlsld  r8, r7, r8, r7
    smlsldx r9, r8, r9, r8
    smlsld  r10, r9, r10, r9
    smlsldx r11, r10, r11, r10
    smlsld  r12, r11, r12, r11
    smlsldx r1, r12, r1, r12

    // loop 4
    smlsld  r2, r1, r2, r1
    smlsldx r3, r2, r3, r2
    smlsld  r4, r3, r4, r3
    smlsldx r5, r4, r5, r4
    smlsld  r6, r5, r6, r5
    smlsldx r7, r6, r7, r6
    smlsld  r8, r7, r8, r7
    smlsldx r9, r8, r9, r8
    smlsld  r10, r9, r10, r9
    smlsldx r11, r10, r11, r10
    smlsld  r12, r11, r12, r11
    smlsldx r1, r12, r1, r12

    // loop 5
    smlsld  r2, r1, r2, r1
    smlsldx r3, r2, r3, r2
    smlsld  r4, r3, r4, r3
    smlsldx r5, r4, r5, r4
    smlsld  r6, r5, r6, r5
    smlsldx r7, r6, r7, r6
    smlsld  r8, r7, r8, r7
    smlsldx r9, r8, r9, r8
    smlsld  r10, r9, r10, r9
    smlsldx r11, r10, r11, r10
    smlsld  r12, r11, r12, r11
    smlsldx r1, r12, r1, r12

    subs    r0, r0, #1
    bne     smlsldMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smlsldMaxTest:

    stmdb   sp!, {r4-r11, lr}

smlsldMaxTest_LOOP:

    // loop 1
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0

    // loop 2
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0

    // loop 3
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0

    // loop 4
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0

    // loop 5
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0
    smlsldx r1, r2, r0, r0
    smlsld  r3, r4, r0, r0
    smlsldx r5, r6, r0, r0
    smlsld  r7, r8, r0, r0
    smlsldx r9, r10, r0, r0
    smlsld  r11, r12, r0, r0

    subs    r0, r0, #1
    bne     smlsldMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smmlaMinTest:

    stmdb   sp!, {r4-r11, lr}

smmlaMinTest_LOOP:

    // loop 1
    smmla   r2, r1, r2, r1
    smmlar  r3, r2, r3, r2
    smmlar  r4, r3, r4, r3
    smmla   r5, r4, r5, r4
    smmlar  r6, r5, r6, r5
    smmla   r7, r6, r7, r6
    smmlar  r8, r7, r8, r7
    smmla   r9, r8, r9, r8
    smmlar  r10, r9, r10, r9
    smmla   r11, r10, r11, r10
    smmlar  r12, r11, r12, r11
    smmla   r1, r12, r1, r12

    // loop 2
    smmla   r2, r1, r2, r1
    smmlar  r3, r2, r3, r2
    smmlar  r4, r3, r4, r3
    smmla   r5, r4, r5, r4
    smmlar  r6, r5, r6, r5
    smmla   r7, r6, r7, r6
    smmlar  r8, r7, r8, r7
    smmla   r9, r8, r9, r8
    smmlar  r10, r9, r10, r9
    smmla   r11, r10, r11, r10
    smmlar  r12, r11, r12, r11
    smmla   r1, r12, r1, r12

    // loop 3
    smmla   r2, r1, r2, r1
    smmlar  r3, r2, r3, r2
    smmlar  r4, r3, r4, r3
    smmla   r5, r4, r5, r4
    smmlar  r6, r5, r6, r5
    smmla   r7, r6, r7, r6
    smmlar  r8, r7, r8, r7
    smmla   r9, r8, r9, r8
    smmlar  r10, r9, r10, r9
    smmla   r11, r10, r11, r10
    smmlar  r12, r11, r12, r11
    smmla   r1, r12, r1, r12

    // loop 4
    smmla   r2, r1, r2, r1
    smmlar  r3, r2, r3, r2
    smmlar  r4, r3, r4, r3
    smmla   r5, r4, r5, r4
    smmlar  r6, r5, r6, r5
    smmla   r7, r6, r7, r6
    smmlar  r8, r7, r8, r7
    smmla   r9, r8, r9, r8
    smmlar  r10, r9, r10, r9
    smmla   r11, r10, r11, r10
    smmlar  r12, r11, r12, r11
    smmla   r1, r12, r1, r12

    // loop 5
    smmla   r2, r1, r2, r1
    smmlar  r3, r2, r3, r2
    smmlar  r4, r3, r4, r3
    smmla   r5, r4, r5, r4
    smmlar  r6, r5, r6, r5
    smmla   r7, r6, r7, r6
    smmlar  r8, r7, r8, r7
    smmla   r9, r8, r9, r8
    smmlar  r10, r9, r10, r9
    smmla   r11, r10, r11, r10
    smmlar  r12, r11, r12, r11
    smmla   r1, r12, r1, r12

    subs    r0, r0, #1
    bne     smmlaMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smmlaMaxTest:

    stmdb   sp!, {r4-r11, lr}

smmlaMaxTest_LOOP:

    // loop 1
    smmla   r1, r0, r0, r0
    smmlar  r2, r0, r0, r0
    smmla   r3, r0, r0, r0
    smmlar  r4, r0, r0, r0
    smmla   r5, r0, r0, r0
    smmlar  r6, r0, r0, r0
    smmla   r7, r0, r0, r0
    smmlar  r8, r0, r0, r0
    smmla   r9, r0, r0, r0
    smmlar  r10, r0, r0, r0
    smmla   r11, r0, r0, r0
    smmlar  r12, r0, r0, r0

    // loop 2
    smmla   r1, r0, r0, r0
    smmlar  r2, r0, r0, r0
    smmla   r3, r0, r0, r0
    smmlar  r4, r0, r0, r0
    smmla   r5, r0, r0, r0
    smmlar  r6, r0, r0, r0
    smmla   r7, r0, r0, r0
    smmlar  r8, r0, r0, r0
    smmla   r9, r0, r0, r0
    smmlar  r10, r0, r0, r0
    smmla   r11, r0, r0, r0
    smmlar  r12, r0, r0, r0

    // loop 3
    smmla   r1, r0, r0, r0
    smmlar  r2, r0, r0, r0
    smmla   r3, r0, r0, r0
    smmlar  r4, r0, r0, r0
    smmla   r5, r0, r0, r0
    smmlar  r6, r0, r0, r0
    smmla   r7, r0, r0, r0
    smmlar  r8, r0, r0, r0
    smmla   r9, r0, r0, r0
    smmlar  r10, r0, r0, r0
    smmla   r11, r0, r0, r0
    smmlar  r12, r0, r0, r0

    // loop 4
    smmla   r1, r0, r0, r0
    smmlar  r2, r0, r0, r0
    smmla   r3, r0, r0, r0
    smmlar  r4, r0, r0, r0
    smmla   r5, r0, r0, r0
    smmlar  r6, r0, r0, r0
    smmla   r7, r0, r0, r0
    smmlar  r8, r0, r0, r0
    smmla   r9, r0, r0, r0
    smmlar  r10, r0, r0, r0
    smmla   r11, r0, r0, r0
    smmlar  r12, r0, r0, r0

    // loop 5
    smmla   r1, r0, r0, r0
    smmlar  r2, r0, r0, r0
    smmla   r3, r0, r0, r0
    smmlar  r4, r0, r0, r0
    smmla   r5, r0, r0, r0
    smmlar  r6, r0, r0, r0
    smmla   r7, r0, r0, r0
    smmlar  r8, r0, r0, r0
    smmla   r9, r0, r0, r0
    smmlar  r10, r0, r0, r0
    smmla   r11, r0, r0, r0
    smmlar  r12, r0, r0, r0

    subs    r0, r0, #1
    bne     smmlaMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smmlsMinTest:

    stmdb   sp!, {r4-r11, lr}

smmlsMinTest_LOOP:

    // loop 1
    smmlsr  r2, r1, r2, r1
    smmls   r3, r2, r3, r2
    smmlsr  r4, r3, r4, r3
    smmls   r5, r4, r5, r4
    smmlsr  r6, r5, r6, r5
    smmls   r7, r6, r7, r6
    smmlsr  r8, r7, r8, r7
    smmls   r9, r8, r9, r8
    smmlsr  r10, r9, r10, r9
    smmls   r11, r10, r11, r10
    smmlsr  r12, r11, r12, r11
    smmls   r1, r12, r1, r12

    // loop 2
    smmlsr  r2, r1, r2, r1
    smmls   r3, r2, r3, r2
    smmlsr  r4, r3, r4, r3
    smmls   r5, r4, r5, r4
    smmlsr  r6, r5, r6, r5
    smmls   r7, r6, r7, r6
    smmlsr  r8, r7, r8, r7
    smmls   r9, r8, r9, r8
    smmlsr  r10, r9, r10, r9
    smmls   r11, r10, r11, r10
    smmlsr  r12, r11, r12, r11
    smmls   r1, r12, r1, r12

    // loop 3
    smmlsr  r2, r1, r2, r1
    smmls   r3, r2, r3, r2
    smmlsr  r4, r3, r4, r3
    smmls   r5, r4, r5, r4
    smmlsr  r6, r5, r6, r5
    smmls   r7, r6, r7, r6
    smmlsr  r8, r7, r8, r7
    smmls   r9, r8, r9, r8
    smmlsr  r10, r9, r10, r9
    smmls   r11, r10, r11, r10
    smmlsr  r12, r11, r12, r11
    smmls   r1, r12, r1, r12

    // loop 4
    smmlsr  r2, r1, r2, r1
    smmls   r3, r2, r3, r2
    smmlsr  r4, r3, r4, r3
    smmls   r5, r4, r5, r4
    smmlsr  r6, r5, r6, r5
    smmls   r7, r6, r7, r6
    smmlsr  r8, r7, r8, r7
    smmls   r9, r8, r9, r8
    smmlsr  r10, r9, r10, r9
    smmls   r11, r10, r11, r10
    smmlsr  r12, r11, r12, r11
    smmls   r1, r12, r1, r12

    // loop 5
    smmlsr  r2, r1, r2, r1
    smmls   r3, r2, r3, r2
    smmlsr  r4, r3, r4, r3
    smmls   r5, r4, r5, r4
    smmlsr  r6, r5, r6, r5
    smmls   r7, r6, r7, r6
    smmlsr  r8, r7, r8, r7
    smmls   r9, r8, r9, r8
    smmlsr  r10, r9, r10, r9
    smmls   r11, r10, r11, r10
    smmlsr  r12, r11, r12, r11
    smmls   r1, r12, r1, r12

    subs    r0, r0, #1
    bne     smmlsMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smmlsMaxTest:

    stmdb   sp!, {r4-r11, lr}

smmlsMaxTest_LOOP:

    // loop 1
    smmls   r1, r0, r0, r0
    smmlsr  r2, r0, r0, r0
    smmls   r3, r0, r0, r0
    smmlsr  r4, r0, r0, r0
    smmls   r5, r0, r0, r0
    smmlsr  r6, r0, r0, r0
    smmls   r7, r0, r0, r0
    smmlsr  r8, r0, r0, r0
    smmls   r9, r0, r0, r0
    smmlsr  r10, r0, r0, r0
    smmls   r11, r0, r0, r0
    smmlsr  r12, r0, r0, r0

    // loop 2
    smmls   r1, r0, r0, r0
    smmlsr  r2, r0, r0, r0
    smmls   r3, r0, r0, r0
    smmlsr  r4, r0, r0, r0
    smmls   r5, r0, r0, r0
    smmlsr  r6, r0, r0, r0
    smmls   r7, r0, r0, r0
    smmlsr  r8, r0, r0, r0
    smmls   r9, r0, r0, r0
    smmlsr  r10, r0, r0, r0
    smmls   r11, r0, r0, r0
    smmlsr  r12, r0, r0, r0

    // loop 3
    smmls   r1, r0, r0, r0
    smmlsr  r2, r0, r0, r0
    smmls   r3, r0, r0, r0
    smmlsr  r4, r0, r0, r0
    smmls   r5, r0, r0, r0
    smmlsr  r6, r0, r0, r0
    smmls   r7, r0, r0, r0
    smmlsr  r8, r0, r0, r0
    smmls   r9, r0, r0, r0
    smmlsr  r10, r0, r0, r0
    smmls   r11, r0, r0, r0
    smmlsr  r12, r0, r0, r0

    // loop 4
    smmls   r1, r0, r0, r0
    smmlsr  r2, r0, r0, r0
    smmls   r3, r0, r0, r0
    smmlsr  r4, r0, r0, r0
    smmls   r5, r0, r0, r0
    smmlsr  r6, r0, r0, r0
    smmls   r7, r0, r0, r0
    smmlsr  r8, r0, r0, r0
    smmls   r9, r0, r0, r0
    smmlsr  r10, r0, r0, r0
    smmls   r11, r0, r0, r0
    smmlsr  r12, r0, r0, r0

    // loop 5
    smmls   r1, r0, r0, r0
    smmlsr  r2, r0, r0, r0
    smmls   r3, r0, r0, r0
    smmlsr  r4, r0, r0, r0
    smmls   r5, r0, r0, r0
    smmlsr  r6, r0, r0, r0
    smmls   r7, r0, r0, r0
    smmlsr  r8, r0, r0, r0
    smmls   r9, r0, r0, r0
    smmlsr  r10, r0, r0, r0
    smmls   r11, r0, r0, r0
    smmlsr  r12, r0, r0, r0

    subs    r0, r0, #1
    bne     smmlsMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smmulMinTest:

    stmdb   sp!, {r4-r11, lr}

smmulMinTest_LOOP:

    // loop 1
    smmulr  r2, r2, r1
    smmul   r3, r3, r2
    smmulr  r4, r4, r3
    smmul   r5, r5, r4
    smmulr  r6, r6, r5
    smmul   r7, r7, r6
    smmulr  r8, r8, r7
    smmul   r9, r9, r8
    smmulr  r10, r10, r9
    smmul   r11, r11, r10
    smmulr  r12, r12, r11
    smmul   r1, r1, r12

    // loop 2
    smmulr  r2, r2, r1
    smmul   r3, r3, r2
    smmulr  r4, r4, r3
    smmul   r5, r5, r4
    smmulr  r6, r6, r5
    smmul   r7, r7, r6
    smmulr  r8, r8, r7
    smmul   r9, r9, r8
    smmulr  r10, r10, r9
    smmul   r11, r11, r10
    smmulr  r12, r12, r11
    smmul   r1, r1, r12

    // loop 3
    smmulr  r2, r2, r1
    smmul   r3, r3, r2
    smmulr  r4, r4, r3
    smmul   r5, r5, r4
    smmulr  r6, r6, r5
    smmul   r7, r7, r6
    smmulr  r8, r8, r7
    smmul   r9, r9, r8
    smmulr  r10, r10, r9
    smmul   r11, r11, r10
    smmulr  r12, r12, r11
    smmul   r1, r1, r12

    // loop 4
    smmulr  r2, r2, r1
    smmul   r3, r3, r2
    smmulr  r4, r4, r3
    smmul   r5, r5, r4
    smmulr  r6, r6, r5
    smmul   r7, r7, r6
    smmulr  r8, r8, r7
    smmul   r9, r9, r8
    smmulr  r10, r10, r9
    smmul   r11, r11, r10
    smmulr  r12, r12, r11
    smmul   r1, r1, r12

    // loop 5
    smmulr  r2, r2, r1
    smmul   r3, r3, r2
    smmulr  r4, r4, r3
    smmul   r5, r5, r4
    smmulr  r6, r6, r5
    smmul   r7, r7, r6
    smmulr  r8, r8, r7
    smmul   r9, r9, r8
    smmulr  r10, r10, r9
    smmul   r11, r11, r10
    smmulr  r12, r12, r11
    smmul   r1, r1, r12

    subs    r0, r0, #1
    bne     smmulMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smmulMaxTest:

    stmdb   sp!, {r4-r11, lr}

smmulMaxTest_LOOP:

    // loop 1
    smmul   r1, r0, r0
    smmulr  r2, r0, r0
    smmul   r3, r0, r0
    smmulr  r4, r0, r0
    smmul   r5, r0, r0
    smmulr  r6, r0, r0
    smmul   r7, r0, r0
    smmulr  r8, r0, r0
    smmul   r9, r0, r0
    smmulr  r10, r0, r0
    smmul   r11, r0, r0
    smmulr  r12, r0, r0

    // loop 2
    smmul   r1, r0, r0
    smmulr  r2, r0, r0
    smmul   r3, r0, r0
    smmulr  r4, r0, r0
    smmul   r5, r0, r0
    smmulr  r6, r0, r0
    smmul   r7, r0, r0
    smmulr  r8, r0, r0
    smmul   r9, r0, r0
    smmulr  r10, r0, r0
    smmul   r11, r0, r0
    smmulr  r12, r0, r0

    // loop 3
    smmul   r1, r0, r0
    smmulr  r2, r0, r0
    smmul   r3, r0, r0
    smmulr  r4, r0, r0
    smmul   r5, r0, r0
    smmulr  r6, r0, r0
    smmul   r7, r0, r0
    smmulr  r8, r0, r0
    smmul   r9, r0, r0
    smmulr  r10, r0, r0
    smmul   r11, r0, r0
    smmulr  r12, r0, r0

    // loop 4
    smmul   r1, r0, r0
    smmulr  r2, r0, r0
    smmul   r3, r0, r0
    smmulr  r4, r0, r0
    smmul   r5, r0, r0
    smmulr  r6, r0, r0
    smmul   r7, r0, r0
    smmulr  r8, r0, r0
    smmul   r9, r0, r0
    smmulr  r10, r0, r0
    smmul   r11, r0, r0
    smmulr  r12, r0, r0

    // loop 5
    smmul   r1, r0, r0
    smmulr  r2, r0, r0
    smmul   r3, r0, r0
    smmulr  r4, r0, r0
    smmul   r5, r0, r0
    smmulr  r6, r0, r0
    smmul   r7, r0, r0
    smmulr  r8, r0, r0
    smmul   r9, r0, r0
    smmulr  r10, r0, r0
    smmul   r11, r0, r0
    smmulr  r12, r0, r0

    subs    r0, r0, #1
    bne     smmulMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smuadMinTest:

    stmdb   sp!, {r4-r11, lr}

smuadMinTest_LOOP:

    // loop 1
    smuad   r2, r2, r1
    smuad   r3, r3, r2
    smuad   r4, r4, r3
    smuad   r5, r5, r4
    smuad   r6, r6, r5
    smuad   r7, r7, r6
    smuad   r8, r8, r7
    smuad   r9, r9, r8
    smuad   r10, r10, r9
    smuad   r11, r11, r10
    smuad   r12, r12, r11
    smuad   r1, r1, r12

    // loop 2
    smuad   r2, r2, r1
    smuad   r3, r3, r2
    smuad   r4, r4, r3
    smuad   r5, r5, r4
    smuad   r6, r6, r5
    smuad   r7, r7, r6
    smuad   r8, r8, r7
    smuad   r9, r9, r8
    smuad   r10, r10, r9
    smuad   r11, r11, r10
    smuad   r12, r12, r11
    smuad   r1, r1, r12

    // loop 3
    smuad   r2, r2, r1
    smuad   r3, r3, r2
    smuad   r4, r4, r3
    smuad   r5, r5, r4
    smuad   r6, r6, r5
    smuad   r7, r7, r6
    smuad   r8, r8, r7
    smuad   r9, r9, r8
    smuad   r10, r10, r9
    smuad   r11, r11, r10
    smuad   r12, r12, r11
    smuad   r1, r1, r12

    // loop 4
    smuad   r2, r2, r1
    smuad   r3, r3, r2
    smuad   r4, r4, r3
    smuad   r5, r5, r4
    smuad   r6, r6, r5
    smuad   r7, r7, r6
    smuad   r8, r8, r7
    smuad   r9, r9, r8
    smuad   r10, r10, r9
    smuad   r11, r11, r10
    smuad   r12, r12, r11
    smuad   r1, r1, r12

    // loop 5
    smuad   r2, r2, r1
    smuad   r3, r3, r2
    smuad   r4, r4, r3
    smuad   r5, r5, r4
    smuad   r6, r6, r5
    smuad   r7, r7, r6
    smuad   r8, r8, r7
    smuad   r9, r9, r8
    smuad   r10, r10, r9
    smuad   r11, r11, r10
    smuad   r12, r12, r11
    smuad   r1, r1, r12

    subs    r0, r0, #1
    bne     smuadMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smuadMaxTest:

    stmdb   sp!, {r4-r11, lr}

smuadMaxTest_LOOP:

    // loop 1
    smuad   r1, r0, r0
    smuadx  r2, r0, r0
    smuad   r3, r0, r0
    smuadx  r4, r0, r0
    smuad   r5, r0, r0
    smuadx  r6, r0, r0
    smuad   r7, r0, r0
    smuadx  r8, r0, r0
    smuad   r9, r0, r0
    smuadx  r10, r0, r0
    smuad   r11, r0, r0
    smuadx  r12, r0, r0

    // loop 2
    smuad   r1, r0, r0
    smuadx  r2, r0, r0
    smuad   r3, r0, r0
    smuadx  r4, r0, r0
    smuad   r5, r0, r0
    smuadx  r6, r0, r0
    smuad   r7, r0, r0
    smuadx  r8, r0, r0
    smuad   r9, r0, r0
    smuadx  r10, r0, r0
    smuad   r11, r0, r0
    smuadx  r12, r0, r0

    // loop 3
    smuad   r1, r0, r0
    smuadx  r2, r0, r0
    smuad   r3, r0, r0
    smuadx  r4, r0, r0
    smuad   r5, r0, r0
    smuadx  r6, r0, r0
    smuad   r7, r0, r0
    smuadx  r8, r0, r0
    smuad   r9, r0, r0
    smuadx  r10, r0, r0
    smuad   r11, r0, r0
    smuadx  r12, r0, r0

    // loop 4
    smuad   r1, r0, r0
    smuadx  r2, r0, r0
    smuad   r3, r0, r0
    smuadx  r4, r0, r0
    smuad   r5, r0, r0
    smuadx  r6, r0, r0
    smuad   r7, r0, r0
    smuadx  r8, r0, r0
    smuad   r9, r0, r0
    smuadx  r10, r0, r0
    smuad   r11, r0, r0
    smuadx  r12, r0, r0

    // loop 5
    smuad   r1, r0, r0
    smuadx  r2, r0, r0
    smuad   r3, r0, r0
    smuadx  r4, r0, r0
    smuad   r5, r0, r0
    smuadx  r6, r0, r0
    smuad   r7, r0, r0
    smuadx  r8, r0, r0
    smuad   r9, r0, r0
    smuadx  r10, r0, r0
    smuad   r11, r0, r0
    smuadx  r12, r0, r0

    subs    r0, r0, #1
    bne     smuadMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smulMinTest:

    stmdb   sp!, {r4-r11, lr}

smulMinTest_LOOP:

    // loop 1
    smulbt  r2, r2, r1
    smultb  r3, r3, r2
    smultt  r4, r4, r3
    smulbb  r5, r5, r4
    smulbt  r6, r6, r5
    smultb  r7, r7, r6
    smultt  r8, r8, r7
    smultb  r9, r9, r8
    smultt  r10, r10, r9
    smultb  r11, r11, r10
    smultt  r12, r12, r11
    smultb  r1, r1, r12

    // loop 2
    smulbt  r2, r2, r1
    smultb  r3, r3, r2
    smultt  r4, r4, r3
    smulbb  r5, r5, r4
    smulbt  r6, r6, r5
    smultb  r7, r7, r6
    smultt  r8, r8, r7
    smultb  r9, r9, r8
    smultt  r10, r10, r9
    smultb  r11, r11, r10
    smultt  r12, r12, r11
    smultb  r1, r1, r12

    // loop 3
    smulbt  r2, r2, r1
    smultb  r3, r3, r2
    smultt  r4, r4, r3
    smulbb  r5, r5, r4
    smulbt  r6, r6, r5
    smultb  r7, r7, r6
    smultt  r8, r8, r7
    smultb  r9, r9, r8
    smultt  r10, r10, r9
    smultb  r11, r11, r10
    smultt  r12, r12, r11
    smultb  r1, r1, r12

    // loop 4
    smulbt  r2, r2, r1
    smultb  r3, r3, r2
    smultt  r4, r4, r3
    smulbb  r5, r5, r4
    smulbt  r6, r6, r5
    smultb  r7, r7, r6
    smultt  r8, r8, r7
    smultb  r9, r9, r8
    smultt  r10, r10, r9
    smultb  r11, r11, r10
    smultt  r12, r12, r11
    smultb  r1, r1, r12

    // loop 5
    smulbt  r2, r2, r1
    smultb  r3, r3, r2
    smultt  r4, r4, r3
    smulbb  r5, r5, r4
    smulbt  r6, r6, r5
    smultb  r7, r7, r6
    smultt  r8, r8, r7
    smultb  r9, r9, r8
    smultt  r10, r10, r9
    smultb  r11, r11, r10
    smultt  r12, r12, r11
    smultb  r1, r1, r12

    subs    r0, r0, #1
    bne     smulMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smulMaxTest:

    stmdb   sp!, {r4-r11, lr}

smulMaxTest_LOOP:

    // loop 1
    smulbb  r1, r0, r0
    smulbt  r2, r0, r0
    smultb  r3, r0, r0
    smultt  r4, r0, r0
    smulbb  r5, r0, r0
    smulbt  r6, r0, r0
    smultb  r7, r0, r0
    smultt  r8, r0, r0
    smulbt  r9, r0, r0
    smultb  r10, r0, r0
    smultt  r11, r0, r0
    smulbb  r12, r0, r0

    // loop 2
    smulbb  r1, r0, r0
    smulbt  r2, r0, r0
    smultb  r3, r0, r0
    smultt  r4, r0, r0
    smulbb  r5, r0, r0
    smulbt  r6, r0, r0
    smultb  r7, r0, r0
    smultt  r8, r0, r0
    smulbt  r9, r0, r0
    smultb  r10, r0, r0
    smultt  r11, r0, r0
    smulbb  r12, r0, r0

    // loop 3
    smulbb  r1, r0, r0
    smulbt  r2, r0, r0
    smultb  r3, r0, r0
    smultt  r4, r0, r0
    smulbb  r5, r0, r0
    smulbt  r6, r0, r0
    smultb  r7, r0, r0
    smultt  r8, r0, r0
    smulbt  r9, r0, r0
    smultb  r10, r0, r0
    smultt  r11, r0, r0
    smulbb  r12, r0, r0

    // loop 4
    smulbb  r1, r0, r0
    smulbt  r2, r0, r0
    smultb  r3, r0, r0
    smultt  r4, r0, r0
    smulbb  r5, r0, r0
    smulbt  r6, r0, r0
    smultb  r7, r0, r0
    smultt  r8, r0, r0
    smulbt  r9, r0, r0
    smultb  r10, r0, r0
    smultt  r11, r0, r0
    smulbb  r12, r0, r0

    // loop 5
    smulbb  r1, r0, r0
    smulbt  r2, r0, r0
    smultb  r3, r0, r0
    smultt  r4, r0, r0
    smulbb  r5, r0, r0
    smulbt  r6, r0, r0
    smultb  r7, r0, r0
    smultt  r8, r0, r0
    smulbt  r9, r0, r0
    smultb  r10, r0, r0
    smultt  r11, r0, r0
    smulbb  r12, r0, r0

    subs    r0, r0, #1
    bne     smulMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smullMinTest:

    stmdb   sp!, {r4-r11, lr}

smullMinTest_LOOP:

    // loop 1
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10

    // loop 2
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10

    // loop 3
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10

    // loop 4
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10

    // loop 5
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10
    smull   r1, r2, r11, r12
    smull   r3, r4, r1, r2
    smull   r5, r6, r3, r4
    smull   r7, r8, r5, r6
    smull   r9, r10, r7, r8
    smull   r11, r12, r9, r10

    subs    r0, r0, #1
    bne     smullMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smullMaxTest:

    stmdb   sp!, {r4-r11, lr}

smullMaxTest_LOOP:

    // loop 1
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0

    // loop 2
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0

    // loop 3
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0

    // loop 4
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0

    // loop 5
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0
    smull   r1, r2, r0, r0
    smull   r3, r4, r0, r0
    smull   r5, r6, r0, r0
    smull   r7, r8, r0, r0
    smull   r9, r10, r0, r0
    smull   r11, r12, r0, r0

    subs    r0, r0, #1
    bne     smullMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smulwMinTest:

    stmdb   sp!, {r4-r11, lr}

smulwMinTest_LOOP:

    // loop 1
    smulwt  r2, r2, r1
    smulwb  r3, r3, r2
    smulwt  r4, r4, r3
    smulwb  r5, r5, r4
    smulwt  r6, r6, r5
    smulwb  r7, r7, r6
    smulwt  r8, r8, r7
    smulwb  r9, r9, r8
    smulwt  r10, r10, r9
    smulwb  r11, r11, r10
    smulwt  r12, r12, r11
    smulwb  r1, r1, r12

    // loop 2
    smulwt  r2, r2, r1
    smulwb  r3, r3, r2
    smulwt  r4, r4, r3
    smulwb  r5, r5, r4
    smulwt  r6, r6, r5
    smulwb  r7, r7, r6
    smulwt  r8, r8, r7
    smulwb  r9, r9, r8
    smulwt  r10, r10, r9
    smulwb  r11, r11, r10
    smulwt  r12, r12, r11
    smulwb  r1, r1, r12

    // loop 3
    smulwt  r2, r2, r1
    smulwb  r3, r3, r2
    smulwt  r4, r4, r3
    smulwb  r5, r5, r4
    smulwt  r6, r6, r5
    smulwb  r7, r7, r6
    smulwt  r8, r8, r7
    smulwb  r9, r9, r8
    smulwt  r10, r10, r9
    smulwb  r11, r11, r10
    smulwt  r12, r12, r11
    smulwb  r1, r1, r12

    // loop 4
    smulwt  r2, r2, r1
    smulwb  r3, r3, r2
    smulwt  r4, r4, r3
    smulwb  r5, r5, r4
    smulwt  r6, r6, r5
    smulwb  r7, r7, r6
    smulwt  r8, r8, r7
    smulwb  r9, r9, r8
    smulwt  r10, r10, r9
    smulwb  r11, r11, r10
    smulwt  r12, r12, r11
    smulwb  r1, r1, r12

    // loop 5
    smulwt  r2, r2, r1
    smulwb  r3, r3, r2
    smulwt  r4, r4, r3
    smulwb  r5, r5, r4
    smulwt  r6, r6, r5
    smulwb  r7, r7, r6
    smulwt  r8, r8, r7
    smulwb  r9, r9, r8
    smulwt  r10, r10, r9
    smulwb  r11, r11, r10
    smulwt  r12, r12, r11
    smulwb  r1, r1, r12

    subs    r0, r0, #1
    bne     smulwMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smulwMaxTest:

    stmdb   sp!, {r4-r11, lr}

smulwMaxTest_LOOP:

    // loop 1
    smulwb  r1, r0, r0
    smulwt  r2, r0, r0
    smulwb  r3, r0, r0
    smulwt  r4, r0, r0
    smulwb  r5, r0, r0
    smulwt  r6, r0, r0
    smulwb  r7, r0, r0
    smulwt  r8, r0, r0
    smulwb  r9, r0, r0
    smulwt  r10, r0, r0
    smulwb  r11, r0, r0
    smulwt  r12, r0, r0

    // loop 2
    smulwb  r1, r0, r0
    smulwt  r2, r0, r0
    smulwb  r3, r0, r0
    smulwt  r4, r0, r0
    smulwb  r5, r0, r0
    smulwt  r6, r0, r0
    smulwb  r7, r0, r0
    smulwt  r8, r0, r0
    smulwb  r9, r0, r0
    smulwt  r10, r0, r0
    smulwb  r11, r0, r0
    smulwt  r12, r0, r0

    // loop 3
    smulwb  r1, r0, r0
    smulwt  r2, r0, r0
    smulwb  r3, r0, r0
    smulwt  r4, r0, r0
    smulwb  r5, r0, r0
    smulwt  r6, r0, r0
    smulwb  r7, r0, r0
    smulwt  r8, r0, r0
    smulwb  r9, r0, r0
    smulwt  r10, r0, r0
    smulwb  r11, r0, r0
    smulwt  r12, r0, r0

    // loop 4
    smulwb  r1, r0, r0
    smulwt  r2, r0, r0
    smulwb  r3, r0, r0
    smulwt  r4, r0, r0
    smulwb  r5, r0, r0
    smulwt  r6, r0, r0
    smulwb  r7, r0, r0
    smulwt  r8, r0, r0
    smulwb  r9, r0, r0
    smulwt  r10, r0, r0
    smulwb  r11, r0, r0
    smulwt  r12, r0, r0

    // loop 5
    smulwb  r1, r0, r0
    smulwt  r2, r0, r0
    smulwb  r3, r0, r0
    smulwt  r4, r0, r0
    smulwb  r5, r0, r0
    smulwt  r6, r0, r0
    smulwb  r7, r0, r0
    smulwt  r8, r0, r0
    smulwb  r9, r0, r0
    smulwt  r10, r0, r0
    smulwb  r11, r0, r0
    smulwt  r12, r0, r0

    subs    r0, r0, #1
    bne     smulwMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_smusdMinTest:

    stmdb   sp!, {r4-r11, lr}

smusdMinTest_LOOP:

    // loop 1
    smusd   r2, r2, r1
    smusdx  r3, r3, r2
    smusd   r4, r4, r3
    smusdx  r5, r5, r4
    smusd   r6, r6, r5
    smusdx  r7, r7, r6
    smusd   r8, r8, r7
    smusdx  r9, r9, r8
    smusd   r10, r10, r9
    smusdx  r11, r11, r10
    smusd   r12, r12, r11
    smusdx  r1, r1, r12

    // loop 2
    smusd   r2, r2, r1
    smusdx  r3, r3, r2
    smusd   r4, r4, r3
    smusdx  r5, r5, r4
    smusd   r6, r6, r5
    smusdx  r7, r7, r6
    smusd   r8, r8, r7
    smusdx  r9, r9, r8
    smusd   r10, r10, r9
    smusdx  r11, r11, r10
    smusd   r12, r12, r11
    smusdx  r1, r1, r12

    // loop 3
    smusd   r2, r2, r1
    smusdx  r3, r3, r2
    smusd   r4, r4, r3
    smusdx  r5, r5, r4
    smusd   r6, r6, r5
    smusdx  r7, r7, r6
    smusd   r8, r8, r7
    smusdx  r9, r9, r8
    smusd   r10, r10, r9
    smusdx  r11, r11, r10
    smusd   r12, r12, r11
    smusdx  r1, r1, r12

    // loop 4
    smusd   r2, r2, r1
    smusdx  r3, r3, r2
    smusd   r4, r4, r3
    smusdx  r5, r5, r4
    smusd   r6, r6, r5
    smusdx  r7, r7, r6
    smusd   r8, r8, r7
    smusdx  r9, r9, r8
    smusd   r10, r10, r9
    smusdx  r11, r11, r10
    smusd   r12, r12, r11
    smusdx  r1, r1, r12

    // loop 5
    smusd   r2, r2, r1
    smusdx  r3, r3, r2
    smusd   r4, r4, r3
    smusdx  r5, r5, r4
    smusd   r6, r6, r5
    smusdx  r7, r7, r6
    smusd   r8, r8, r7
    smusdx  r9, r9, r8
    smusd   r10, r10, r9
    smusdx  r11, r11, r10
    smusd   r12, r12, r11
    smusdx  r1, r1, r12
    
    subs    r0, r0, #1
    bne     smusdMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_smusdMaxTest:

    stmdb   sp!, {r4-r11, lr}

smusdMaxTest_LOOP:

    // loop 1
    smusd   r1, r0, r0
    smusdx  r2, r0, r0
    smusd   r3, r0, r0
    smusdx  r4, r0, r0
    smusd   r5, r0, r0
    smusdx  r6, r0, r0
    smusd   r7, r0, r0
    smusdx  r8, r0, r0
    smusd   r9, r0, r0
    smusdx  r10, r0, r0
    smusd   r11, r0, r0
    smusdx  r12, r0, r0

    // loop 2
    smusd   r1, r0, r0
    smusdx  r2, r0, r0
    smusd   r3, r0, r0
    smusdx  r4, r0, r0
    smusd   r5, r0, r0
    smusdx  r6, r0, r0
    smusd   r7, r0, r0
    smusdx  r8, r0, r0
    smusd   r9, r0, r0
    smusdx  r10, r0, r0
    smusd   r11, r0, r0
    smusdx  r12, r0, r0

    // loop 3
    smusd   r1, r0, r0
    smusdx  r2, r0, r0
    smusd   r3, r0, r0
    smusdx  r4, r0, r0
    smusd   r5, r0, r0
    smusdx  r6, r0, r0
    smusd   r7, r0, r0
    smusdx  r8, r0, r0
    smusd   r9, r0, r0
    smusdx  r10, r0, r0
    smusd   r11, r0, r0
    smusdx  r12, r0, r0

    // loop 4
    smusd   r1, r0, r0
    smusdx  r2, r0, r0
    smusd   r3, r0, r0
    smusdx  r4, r0, r0
    smusd   r5, r0, r0
    smusdx  r6, r0, r0
    smusd   r7, r0, r0
    smusdx  r8, r0, r0
    smusd   r9, r0, r0
    smusdx  r10, r0, r0
    smusd   r11, r0, r0
    smusdx  r12, r0, r0

    // loop 5
    smusd   r1, r0, r0
    smusdx  r2, r0, r0
    smusd   r3, r0, r0
    smusdx  r4, r0, r0
    smusd   r5, r0, r0
    smusdx  r6, r0, r0
    smusd   r7, r0, r0
    smusdx  r8, r0, r0
    smusd   r9, r0, r0
    smusdx  r10, r0, r0
    smusd   r11, r0, r0
    smusdx  r12, r0, r0

    subs    r0, r0, #1
    bne     smusdMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_ssatMinTest:

    push    {r4-r11, lr}

ssatMinTest_LOOP:

    // loop 1
    ssat    r2, #1, r1, LSL #1
    ssat    r3, #2, r2, LSL #2
    ssat    r4, #3, r3, LSL #3
    ssat    r5, #4, r4, LSL #4
    ssat    r6, #5, r5, LSL #5
    ssat    r7, #6, r6, LSL #6
    ssat    r8, #7, r7, LSL #7
    ssat    r9, #8, r8, LSL #8
    ssat    r10, #9, r9, LSL #9
    ssat    r11, #10, r10, LSL #10
    ssat    r12, #11, r11, LSL #11
    ssat    r1, #12, r12, LSL #12

    // loop 2
    ssat    r2, #1, r1, LSL #1
    ssat    r3, #2, r2, LSL #2
    ssat    r4, #3, r3, LSL #3
    ssat    r5, #4, r4, LSL #4
    ssat    r6, #5, r5, LSL #5
    ssat    r7, #6, r6, LSL #6
    ssat    r8, #7, r7, LSL #7
    ssat    r9, #8, r8, LSL #8
    ssat    r10, #9, r9, LSL #9
    ssat    r11, #10, r10, LSL #10
    ssat    r12, #11, r11, LSL #11
    ssat    r1, #12, r12, LSL #12

    // loop 3
    ssat    r2, #1, r1, LSL #1
    ssat    r3, #2, r2, LSL #2
    ssat    r4, #3, r3, LSL #3
    ssat    r5, #4, r4, LSL #4
    ssat    r6, #5, r5, LSL #5
    ssat    r7, #6, r6, LSL #6
    ssat    r8, #7, r7, LSL #7
    ssat    r9, #8, r8, LSL #8
    ssat    r10, #9, r9, LSL #9
    ssat    r11, #10, r10, LSL #10
    ssat    r12, #11, r11, LSL #11
    ssat    r1, #12, r12, LSL #12

    // loop 4
    ssat    r2, #1, r1, LSL #1
    ssat    r3, #2, r2, LSL #2
    ssat    r4, #3, r3, LSL #3
    ssat    r5, #4, r4, LSL #4
    ssat    r6, #5, r5, LSL #5
    ssat    r7, #6, r6, LSL #6
    ssat    r8, #7, r7, LSL #7
    ssat    r9, #8, r8, LSL #8
    ssat    r10, #9, r9, LSL #9
    ssat    r11, #10, r10, LSL #10
    ssat    r12, #11, r11, LSL #11
    ssat    r1, #12, r12, LSL #12

    // loop 5
    ssat    r2, #1, r1, LSL #1
    ssat    r3, #2, r2, LSL #2
    ssat    r4, #3, r3, LSL #3
    ssat    r5, #4, r4, LSL #4
    ssat    r6, #5, r5, LSL #5
    ssat    r7, #6, r6, LSL #6
    ssat    r8, #7, r7, LSL #7
    ssat    r9, #8, r8, LSL #8
    ssat    r10, #9, r9, LSL #9
    ssat    r11, #10, r10, LSL #10
    ssat    r12, #11, r11, LSL #11
    ssat    r1, #12, r12, LSL #12

    subs    r0, r0, #1
    bne     ssatMinTest_LOOP
    pop     {r4-r11, pc}

_ssatMaxTest:

    push    {r4-r11, lr}

ssatMaxTest_LOOP:

    // loop 1
    ssat    r1, #1, r0, LSL #1
    ssat    r2, #2, r0, LSL #2
    ssat    r3, #3, r0, LSL #3
    ssat    r4, #4, r0, LSL #4
    ssat    r5, #5, r0, LSL #5
    ssat    r6, #6, r0, LSL #6
    ssat    r7, #7, r0, LSL #7
    ssat    r8, #8, r0, LSL #8
    ssat    r9, #9, r0, LSL #9
    ssat    r10, #10, r0, LSL #10
    ssat    r11, #11, r0, LSL #11
    ssat    r12, #12, r0, LSL #12

    // loop 2
    ssat    r1, #1, r0, LSL #1
    ssat    r2, #2, r0, LSL #2
    ssat    r3, #3, r0, LSL #3
    ssat    r4, #4, r0, LSL #4
    ssat    r5, #5, r0, LSL #5
    ssat    r6, #6, r0, LSL #6
    ssat    r7, #7, r0, LSL #7
    ssat    r8, #8, r0, LSL #8
    ssat    r9, #9, r0, LSL #9
    ssat    r10, #10, r0, LSL #10
    ssat    r11, #11, r0, LSL #11
    ssat    r12, #12, r0, LSL #12

    // loop 3
    ssat    r1, #1, r0, LSL #1
    ssat    r2, #2, r0, LSL #2
    ssat    r3, #3, r0, LSL #3
    ssat    r4, #4, r0, LSL #4
    ssat    r5, #5, r0, LSL #5
    ssat    r6, #6, r0, LSL #6
    ssat    r7, #7, r0, LSL #7
    ssat    r8, #8, r0, LSL #8
    ssat    r9, #9, r0, LSL #9
    ssat    r10, #10, r0, LSL #10
    ssat    r11, #11, r0, LSL #11
    ssat    r12, #12, r0, LSL #12

    // loop 4
    ssat    r1, #1, r0, LSL #1
    ssat    r2, #2, r0, LSL #2
    ssat    r3, #3, r0, LSL #3
    ssat    r4, #4, r0, LSL #4
    ssat    r5, #5, r0, LSL #5
    ssat    r6, #6, r0, LSL #6
    ssat    r7, #7, r0, LSL #7
    ssat    r8, #8, r0, LSL #8
    ssat    r9, #9, r0, LSL #9
    ssat    r10, #10, r0, LSL #10
    ssat    r11, #11, r0, LSL #11
    ssat    r12, #12, r0, LSL #12

    // loop 5
    ssat    r1, #1, r0, LSL #1
    ssat    r2, #2, r0, LSL #2
    ssat    r3, #3, r0, LSL #3
    ssat    r4, #4, r0, LSL #4
    ssat    r5, #5, r0, LSL #5
    ssat    r6, #6, r0, LSL #6
    ssat    r7, #7, r0, LSL #7
    ssat    r8, #8, r0, LSL #8
    ssat    r9, #9, r0, LSL #9
    ssat    r10, #10, r0, LSL #10
    ssat    r11, #11, r0, LSL #11
    ssat    r12, #12, r0, LSL #12

    subs    r0, r0, #1
    bne     ssatMaxTest_LOOP
    pop     {r4-r11, pc}


_ssat16MinTest:

    push    {r4-r11, lr}

ssat16MinTest_LOOP:

    // loop 1
    ssat16  r2, #2, r1
    ssat16  r3, #3, r2
    ssat16  r4, #4, r3
    ssat16  r5, #5, r4
    ssat16  r6, #6, r5
    ssat16  r7, #7, r6
    ssat16  r8, #8, r7
    ssat16  r9, #9, r8
    ssat16  r10, #10, r9
    ssat16  r11, #11, r10
    ssat16  r12, #12, r11
    ssat16  r1, #13, r12

    // loop 2
    ssat16  r2, #2, r1
    ssat16  r3, #3, r2
    ssat16  r4, #4, r3
    ssat16  r5, #5, r4
    ssat16  r6, #6, r5
    ssat16  r7, #7, r6
    ssat16  r8, #8, r7
    ssat16  r9, #9, r8
    ssat16  r10, #10, r9
    ssat16  r11, #11, r10
    ssat16  r12, #12, r11
    ssat16  r1, #13, r12

    // loop 3
    ssat16  r2, #2, r1
    ssat16  r3, #3, r2
    ssat16  r4, #4, r3
    ssat16  r5, #5, r4
    ssat16  r6, #6, r5
    ssat16  r7, #7, r6
    ssat16  r8, #8, r7
    ssat16  r9, #9, r8
    ssat16  r10, #10, r9
    ssat16  r11, #11, r10
    ssat16  r12, #12, r11
    ssat16  r1, #13, r12

    // loop 4
    ssat16  r2, #2, r1
    ssat16  r3, #3, r2
    ssat16  r4, #4, r3
    ssat16  r5, #5, r4
    ssat16  r6, #6, r5
    ssat16  r7, #7, r6
    ssat16  r8, #8, r7
    ssat16  r9, #9, r8
    ssat16  r10, #10, r9
    ssat16  r11, #11, r10
    ssat16  r12, #12, r11
    ssat16  r1, #13, r12

    // loop 5
    ssat16  r2, #2, r1
    ssat16  r3, #3, r2
    ssat16  r4, #4, r3
    ssat16  r5, #5, r4
    ssat16  r6, #6, r5
    ssat16  r7, #7, r6
    ssat16  r8, #8, r7
    ssat16  r9, #9, r8
    ssat16  r10, #10, r9
    ssat16  r11, #11, r10
    ssat16  r12, #12, r11
    ssat16  r1, #13, r12

    subs    r0, r0, #1
    bne     ssat16MinTest_LOOP
    pop     {r4-r11, pc}

_ssat16MaxTest:

    push    {r4-r11, lr}

ssat16MaxTest_LOOP:

    // loop 1
    ssat16  r1, #1, r0
    ssat16  r2, #2, r0
    ssat16  r3, #3, r0
    ssat16  r4, #4, r0
    ssat16  r5, #5, r0
    ssat16  r6, #6, r0
    ssat16  r7, #7, r0
    ssat16  r8, #8, r0
    ssat16  r9, #9, r0
    ssat16  r10, #10, r0
    ssat16  r11, #11, r0
    ssat16  r12, #12, r0

    // loop 2
    ssat16  r1, #1, r0
    ssat16  r2, #2, r0
    ssat16  r3, #3, r0
    ssat16  r4, #4, r0
    ssat16  r5, #5, r0
    ssat16  r6, #6, r0
    ssat16  r7, #7, r0
    ssat16  r8, #8, r0
    ssat16  r9, #9, r0
    ssat16  r10, #10, r0
    ssat16  r11, #11, r0
    ssat16  r12, #12, r0

    // loop 3
    ssat16  r1, #1, r0
    ssat16  r2, #2, r0
    ssat16  r3, #3, r0
    ssat16  r4, #4, r0
    ssat16  r5, #5, r0
    ssat16  r6, #6, r0
    ssat16  r7, #7, r0
    ssat16  r8, #8, r0
    ssat16  r9, #9, r0
    ssat16  r10, #10, r0
    ssat16  r11, #11, r0
    ssat16  r12, #12, r0

    // loop 4
    ssat16  r1, #1, r0
    ssat16  r2, #2, r0
    ssat16  r3, #3, r0
    ssat16  r4, #4, r0
    ssat16  r5, #5, r0
    ssat16  r6, #6, r0
    ssat16  r7, #7, r0
    ssat16  r8, #8, r0
    ssat16  r9, #9, r0
    ssat16  r10, #10, r0
    ssat16  r11, #11, r0
    ssat16  r12, #12, r0

    // loop 5
    ssat16  r1, #1, r0
    ssat16  r2, #2, r0
    ssat16  r3, #3, r0
    ssat16  r4, #4, r0
    ssat16  r5, #5, r0
    ssat16  r6, #6, r0
    ssat16  r7, #7, r0
    ssat16  r8, #8, r0
    ssat16  r9, #9, r0
    ssat16  r10, #10, r0
    ssat16  r11, #11, r0
    ssat16  r12, #12, r0

    subs    r0, r0, #1
    bne     ssat16MaxTest_LOOP
    pop     {r4-r11, pc}


_ssaxMinTest:

    push        {r4-r11, lr}

ssaxMinTest_LOOP:

    // loop 1
    ssax        r2, r2, r1
    ssax        r3, r3, r2
    ssax        r4, r4, r3
    ssax        r5, r5, r12
    ssubaddx    r6, r6, r5
    ssubaddx    r7, r7, r6
    ssubaddx    r8, r8, r7
    ssubaddx    r9, r9, r8
    ssubaddx    r10, r10, r9
    ssubaddx    r11, r11, r10
    ssubaddx    r12, r12, r11
    ssubaddx    r1, r1, r12

    // loop 2
    ssax        r2, r2, r1
    ssax        r3, r3, r2
    ssax        r4, r4, r3
    ssax        r5, r5, r12
    ssubaddx    r6, r6, r5
    ssubaddx    r7, r7, r6
    ssubaddx    r8, r8, r7
    ssubaddx    r9, r9, r8
    ssubaddx    r10, r10, r9
    ssubaddx    r11, r11, r10
    ssubaddx    r12, r12, r11
    ssubaddx    r1, r1, r12

    // loop 3
    ssax        r2, r2, r1
    ssax        r3, r3, r2
    ssax        r4, r4, r3
    ssax        r5, r5, r12
    ssubaddx    r6, r6, r5
    ssubaddx    r7, r7, r6
    ssubaddx    r8, r8, r7
    ssubaddx    r9, r9, r8
    ssubaddx    r10, r10, r9
    ssubaddx    r11, r11, r10
    ssubaddx    r12, r12, r11
    ssubaddx    r1, r1, r12

    // loop 4
    ssax        r2, r2, r1
    ssax        r3, r3, r2
    ssax        r4, r4, r3
    ssax        r5, r5, r12
    ssubaddx    r6, r6, r5
    ssubaddx    r7, r7, r6
    ssubaddx    r8, r8, r7
    ssubaddx    r9, r9, r8
    ssubaddx    r10, r10, r9
    ssubaddx    r11, r11, r10
    ssubaddx    r12, r12, r11
    ssubaddx    r1, r1, r12

    // loop 5
    ssax        r2, r2, r1
    ssax        r3, r3, r2
    ssax        r4, r4, r3
    ssax        r5, r5, r12
    ssubaddx    r6, r6, r5
    ssubaddx    r7, r7, r6
    ssubaddx    r8, r8, r7
    ssubaddx    r9, r9, r8
    ssubaddx    r10, r10, r9
    ssubaddx    r11, r11, r10
    ssubaddx    r12, r12, r11
    ssubaddx    r1, r1, r12

    subs    r0, r0, #1
    bne     ssaxMinTest_LOOP
    pop         {r4-r11, pc}

_ssaxMaxTest:

    push        {r4-r11, lr}

ssaxMaxTest_LOOP:

    // loop 1
    ssax        r1, r0, r0
    ssax        r2, r0, r0
    ssax        r3, r0, r0
    ssax        r4, r0, r0
    ssubaddx    r5, r0, r0
    ssubaddx    r6, r0, r0
    ssubaddx    r7, r0, r0
    ssubaddx    r8, r0, r0
    ssubaddx    r9, r0, r0
    ssubaddx    r10, r0, r0
    ssubaddx    r11, r0, r0
    ssubaddx    r12, r0, r0

    // loop 2
    ssax        r1, r0, r0
    ssax        r2, r0, r0
    ssax        r3, r0, r0
    ssax        r4, r0, r0
    ssubaddx    r5, r0, r0
    ssubaddx    r6, r0, r0
    ssubaddx    r7, r0, r0
    ssubaddx    r8, r0, r0
    ssubaddx    r9, r0, r0
    ssubaddx    r10, r0, r0
    ssubaddx    r11, r0, r0
    ssubaddx    r12, r0, r0

    // loop 3
    ssax        r1, r0, r0
    ssax        r2, r0, r0
    ssax        r3, r0, r0
    ssax        r4, r0, r0
    ssubaddx    r5, r0, r0
    ssubaddx    r6, r0, r0
    ssubaddx    r7, r0, r0
    ssubaddx    r8, r0, r0
    ssubaddx    r9, r0, r0
    ssubaddx    r10, r0, r0
    ssubaddx    r11, r0, r0
    ssubaddx    r12, r0, r0

    // loop 4
    ssax        r1, r0, r0
    ssax        r2, r0, r0
    ssax        r3, r0, r0
    ssax        r4, r0, r0
    ssubaddx    r5, r0, r0
    ssubaddx    r6, r0, r0
    ssubaddx    r7, r0, r0
    ssubaddx    r8, r0, r0
    ssubaddx    r9, r0, r0
    ssubaddx    r10, r0, r0
    ssubaddx    r11, r0, r0
    ssubaddx    r12, r0, r0

    // loop 5
    ssax        r1, r0, r0
    ssax        r2, r0, r0
    ssax        r3, r0, r0
    ssax        r4, r0, r0
    ssubaddx    r5, r0, r0
    ssubaddx    r6, r0, r0
    ssubaddx    r7, r0, r0
    ssubaddx    r8, r0, r0
    ssubaddx    r9, r0, r0
    ssubaddx    r10, r0, r0
    ssubaddx    r11, r0, r0
    ssubaddx    r12, r0, r0

    subs    r0, r0, #1
    bne     ssaxMaxTest_LOOP
    pop     {r4-r11, pc}


_ssub16MinTest:

    push    {r4-r11, lr}

ssub16MinTest_LOOP:

    // loop 1
    ssub16  r2, r2, r1
    ssub16  r3, r3, r2
    ssub16  r4, r4, r3
    ssub16  r5, r5, r4
    ssub16  r6, r6, r5
    ssub16  r7, r7, r6
    ssub16  r8, r8, r7
    ssub16  r9, r9, r8
    ssub16  r10, r10, r9
    ssub16  r11, r11, r10
    ssub16  r12, r12, r11
    ssub16  r1, r1, r12

    // loop 2
    ssub16  r2, r2, r1
    ssub16  r3, r3, r2
    ssub16  r4, r4, r3
    ssub16  r5, r5, r4
    ssub16  r6, r6, r5
    ssub16  r7, r7, r6
    ssub16  r8, r8, r7
    ssub16  r9, r9, r8
    ssub16  r10, r10, r9
    ssub16  r11, r11, r10
    ssub16  r12, r12, r11
    ssub16  r1, r1, r12

    // loop 3
    ssub16  r2, r2, r1
    ssub16  r3, r3, r2
    ssub16  r4, r4, r3
    ssub16  r5, r5, r4
    ssub16  r6, r6, r5
    ssub16  r7, r7, r6
    ssub16  r8, r8, r7
    ssub16  r9, r9, r8
    ssub16  r10, r10, r9
    ssub16  r11, r11, r10
    ssub16  r12, r12, r11
    ssub16  r1, r1, r12

    // loop 4
    ssub16  r2, r2, r1
    ssub16  r3, r3, r2
    ssub16  r4, r4, r3
    ssub16  r5, r5, r4
    ssub16  r6, r6, r5
    ssub16  r7, r7, r6
    ssub16  r8, r8, r7
    ssub16  r9, r9, r8
    ssub16  r10, r10, r9
    ssub16  r11, r11, r10
    ssub16  r12, r12, r11
    ssub16  r1, r1, r12

    // loop 5
    ssub16  r2, r2, r1
    ssub16  r3, r3, r2
    ssub16  r4, r4, r3
    ssub16  r5, r5, r4
    ssub16  r6, r6, r5
    ssub16  r7, r7, r6
    ssub16  r8, r8, r7
    ssub16  r9, r9, r8
    ssub16  r10, r10, r9
    ssub16  r11, r11, r10
    ssub16  r12, r12, r11
    ssub16  r1, r1, r12

    subs    r0, r0, #1
    bne     ssub16MinTest_LOOP
    pop     {r4-r11, pc}

_ssub16MaxTest:

    push    {r4-r11, lr}

ssub16MaxTest_LOOP:

    // loop 1
    ssub16  r1, r0, r0
    ssub16  r2, r0, r0
    ssub16  r3, r0, r0
    ssub16  r4, r0, r0
    ssub16  r5, r0, r0
    ssub16  r6, r0, r0
    ssub16  r7, r0, r0
    ssub16  r8, r0, r0
    ssub16  r9, r0, r0
    ssub16  r10, r0, r0
    ssub16  r11, r0, r0
    ssub16  r12, r0, r0

    // loop 2
    ssub16  r1, r0, r0
    ssub16  r2, r0, r0
    ssub16  r3, r0, r0
    ssub16  r4, r0, r0
    ssub16  r5, r0, r0
    ssub16  r6, r0, r0
    ssub16  r7, r0, r0
    ssub16  r8, r0, r0
    ssub16  r9, r0, r0
    ssub16  r10, r0, r0
    ssub16  r11, r0, r0
    ssub16  r12, r0, r0

    // loop 3
    ssub16  r1, r0, r0
    ssub16  r2, r0, r0
    ssub16  r3, r0, r0
    ssub16  r4, r0, r0
    ssub16  r5, r0, r0
    ssub16  r6, r0, r0
    ssub16  r7, r0, r0
    ssub16  r8, r0, r0
    ssub16  r9, r0, r0
    ssub16  r10, r0, r0
    ssub16  r11, r0, r0
    ssub16  r12, r0, r0

    // loop 4
    ssub16  r1, r0, r0
    ssub16  r2, r0, r0
    ssub16  r3, r0, r0
    ssub16  r4, r0, r0
    ssub16  r5, r0, r0
    ssub16  r6, r0, r0
    ssub16  r7, r0, r0
    ssub16  r8, r0, r0
    ssub16  r9, r0, r0
    ssub16  r10, r0, r0
    ssub16  r11, r0, r0
    ssub16  r12, r0, r0

    // loop 5
    ssub16  r1, r0, r0
    ssub16  r2, r0, r0
    ssub16  r3, r0, r0
    ssub16  r4, r0, r0
    ssub16  r5, r0, r0
    ssub16  r6, r0, r0
    ssub16  r7, r0, r0
    ssub16  r8, r0, r0
    ssub16  r9, r0, r0
    ssub16  r10, r0, r0
    ssub16  r11, r0, r0
    ssub16  r12, r0, r0

    subs    r0, r0, #1
    bne     ssub16MaxTest_LOOP
    pop     {r4-r11, pc}

_ssub8MinTest:

    push    {r4-r11, lr}

ssub8MinTest_LOOP:

    // loop 1
    ssub8   r2, r2, r1
    ssub8   r3, r3, r2
    ssub8   r4, r4, r3
    ssub8   r5, r5, r4
    ssub8   r6, r6, r5
    ssub8   r7, r7, r6
    ssub8   r8, r8, r7
    ssub8   r9, r9, r8
    ssub8   r10, r10, r9
    ssub8   r11, r11, r10
    ssub8   r12, r12, r11
    ssub8   r1, r1, r12

    // loop 2
    ssub8   r2, r2, r1
    ssub8   r3, r3, r2
    ssub8   r4, r4, r3
    ssub8   r5, r5, r4
    ssub8   r6, r6, r5
    ssub8   r7, r7, r6
    ssub8   r8, r8, r7
    ssub8   r9, r9, r8
    ssub8   r10, r10, r9
    ssub8   r11, r11, r10
    ssub8   r12, r12, r11
    ssub8   r1, r1, r12

    // loop 3
    ssub8   r2, r2, r1
    ssub8   r3, r3, r2
    ssub8   r4, r4, r3
    ssub8   r5, r5, r4
    ssub8   r6, r6, r5
    ssub8   r7, r7, r6
    ssub8   r8, r8, r7
    ssub8   r9, r9, r8
    ssub8   r10, r10, r9
    ssub8   r11, r11, r10
    ssub8   r12, r12, r11
    ssub8   r1, r1, r12

    // loop 4
    ssub8   r2, r2, r1
    ssub8   r3, r3, r2
    ssub8   r4, r4, r3
    ssub8   r5, r5, r4
    ssub8   r6, r6, r5
    ssub8   r7, r7, r6
    ssub8   r8, r8, r7
    ssub8   r9, r9, r8
    ssub8   r10, r10, r9
    ssub8   r11, r11, r10
    ssub8   r12, r12, r11
    ssub8   r1, r1, r12

    // loop 5
    ssub8   r2, r2, r1
    ssub8   r3, r3, r2
    ssub8   r4, r4, r3
    ssub8   r5, r5, r4
    ssub8   r6, r6, r5
    ssub8   r7, r7, r6
    ssub8   r8, r8, r7
    ssub8   r9, r9, r8
    ssub8   r10, r10, r9
    ssub8   r11, r11, r10
    ssub8   r12, r12, r11
    ssub8   r1, r1, r12

    subs    r0, r0, #1
    bne     ssub8MinTest_LOOP
    pop     {r4-r11, pc}

_ssub8MaxTest:

    push    {r4-r11, lr}

ssub8MaxTest_LOOP:

    // loop 1
    ssub8   r1, r0, r0
    ssub8   r2, r0, r0
    ssub8   r3, r0, r0
    ssub8   r4, r0, r0
    ssub8   r5, r0, r0
    ssub8   r6, r0, r0
    ssub8   r7, r0, r0
    ssub8   r8, r0, r0
    ssub8   r9, r0, r0
    ssub8   r10, r0, r0
    ssub8   r11, r0, r0
    ssub8   r12, r0, r0

    // loop 2
    ssub8   r1, r0, r0
    ssub8   r2, r0, r0
    ssub8   r3, r0, r0
    ssub8   r4, r0, r0
    ssub8   r5, r0, r0
    ssub8   r6, r0, r0
    ssub8   r7, r0, r0
    ssub8   r8, r0, r0
    ssub8   r9, r0, r0
    ssub8   r10, r0, r0
    ssub8   r11, r0, r0
    ssub8   r12, r0, r0

    // loop 3
    ssub8   r1, r0, r0
    ssub8   r2, r0, r0
    ssub8   r3, r0, r0
    ssub8   r4, r0, r0
    ssub8   r5, r0, r0
    ssub8   r6, r0, r0
    ssub8   r7, r0, r0
    ssub8   r8, r0, r0
    ssub8   r9, r0, r0
    ssub8   r10, r0, r0
    ssub8   r11, r0, r0
    ssub8   r12, r0, r0

    // loop 4
    ssub8   r1, r0, r0
    ssub8   r2, r0, r0
    ssub8   r3, r0, r0
    ssub8   r4, r0, r0
    ssub8   r5, r0, r0
    ssub8   r6, r0, r0
    ssub8   r7, r0, r0
    ssub8   r8, r0, r0
    ssub8   r9, r0, r0
    ssub8   r10, r0, r0
    ssub8   r11, r0, r0
    ssub8   r12, r0, r0

    // loop 5
    ssub8   r1, r0, r0
    ssub8   r2, r0, r0
    ssub8   r3, r0, r0
    ssub8   r4, r0, r0
    ssub8   r5, r0, r0
    ssub8   r6, r0, r0
    ssub8   r7, r0, r0
    ssub8   r8, r0, r0
    ssub8   r9, r0, r0
    ssub8   r10, r0, r0
    ssub8   r11, r0, r0
    ssub8   r12, r0, r0

    subs    r0, r0, #1
    bne     ssub8MaxTest_LOOP
    pop     {r4-r11, pc}


_subImmMinTest:

    push    {r4-r11, lr}

subImmMinTest_LOOP:

    // loop 1
    sub     r2, r1, #1
    sub     r3, r2, #2
    sub     r4, r3, #3
    sub     r5, r4, #4
    sub     r6, r5, #5
    sub     r7, r6, #6
    sub     r8, r7, #7
    sub     r9, r8, #8
    sub     r10, r9, #9
    sub     r11, r10, #10
    sub     r12, r11, #11
    sub     r1, r12, #12

    // loop 2
    sub     r2, r1, #1
    sub     r3, r2, #2
    sub     r4, r3, #3
    sub     r5, r4, #4
    sub     r6, r5, #5
    sub     r7, r6, #6
    sub     r8, r7, #7
    sub     r9, r8, #8
    sub     r10, r9, #9
    sub     r11, r10, #10
    sub     r12, r11, #11
    sub     r1, r12, #12

    // loop 3
    sub     r2, r1, #1
    sub     r3, r2, #2
    sub     r4, r3, #3
    sub     r5, r4, #4
    sub     r6, r5, #5
    sub     r7, r6, #6
    sub     r8, r7, #7
    sub     r9, r8, #8
    sub     r10, r9, #9
    sub     r11, r10, #10
    sub     r12, r11, #11
    sub     r1, r12, #12

    // loop 4
    sub     r2, r1, #1
    sub     r3, r2, #2
    sub     r4, r3, #3
    sub     r5, r4, #4
    sub     r6, r5, #5
    sub     r7, r6, #6
    sub     r8, r7, #7
    sub     r9, r8, #8
    sub     r10, r9, #9
    sub     r11, r10, #10
    sub     r12, r11, #11
    sub     r1, r12, #12

    // loop 5
    sub     r2, r1, #1
    sub     r3, r2, #2
    sub     r4, r3, #3
    sub     r5, r4, #4
    sub     r6, r5, #5
    sub     r7, r6, #6
    sub     r8, r7, #7
    sub     r9, r8, #8
    sub     r10, r9, #9
    sub     r11, r10, #10
    sub     r12, r11, #11
    sub     r1, r12, #12

    subs    r0, r0, #1
    bne     subImmMinTest_LOOP
    pop     {r4-r11, pc}

_subImmMaxTest:

    push    {r4-r11, lr}

subImmMaxTest_LOOP:

    // loop 1
    sub     r1, r0, #1
    sub     r2, r0, #2
    sub     r3, r0, #3
    sub     r4, r0, #4
    sub     r5, r0, #5
    sub     r6, r0, #6
    sub     r7, r0, #7
    sub     r8, r0, #8
    sub     r9, r0, #9
    sub     r10, r0, #10
    sub     r11, r0, #11
    sub     r12, r0, #12

    // loop 2
    sub     r1, r0, #1
    sub     r2, r0, #2
    sub     r3, r0, #3
    sub     r4, r0, #4
    sub     r5, r0, #5
    sub     r6, r0, #6
    sub     r7, r0, #7
    sub     r8, r0, #8
    sub     r9, r0, #9
    sub     r10, r0, #10
    sub     r11, r0, #11
    sub     r12, r0, #12

    // loop 3
    sub     r1, r0, #1
    sub     r2, r0, #2
    sub     r3, r0, #3
    sub     r4, r0, #4
    sub     r5, r0, #5
    sub     r6, r0, #6
    sub     r7, r0, #7
    sub     r8, r0, #8
    sub     r9, r0, #9
    sub     r10, r0, #10
    sub     r11, r0, #11
    sub     r12, r0, #12

    // loop 4
    sub     r1, r0, #1
    sub     r2, r0, #2
    sub     r3, r0, #3
    sub     r4, r0, #4
    sub     r5, r0, #5
    sub     r6, r0, #6
    sub     r7, r0, #7
    sub     r8, r0, #8
    sub     r9, r0, #9
    sub     r10, r0, #10
    sub     r11, r0, #11
    sub     r12, r0, #12

    // loop 5
    sub     r1, r0, #1
    sub     r2, r0, #2
    sub     r3, r0, #3
    sub     r4, r0, #4
    sub     r5, r0, #5
    sub     r6, r0, #6
    sub     r7, r0, #7
    sub     r8, r0, #8
    sub     r9, r0, #9
    sub     r10, r0, #10
    sub     r11, r0, #11
    sub     r12, r0, #12

    subs    r0, r0, #1
    bne     subImmMaxTest_LOOP
    pop     {r4-r11, pc}

_subRegMinTest:

    push    {r4-r11, lr}

subRegMinTest_LOOP:

    // loop 1
    sub     r2, r2, r1, LSL #1
    sub     r3, r3, r2, LSL #2
    sub     r4, r4, r3, LSL #3
    sub     r5, r5, r4, LSL #4
    sub     r6, r6, r5, LSL #5
    sub     r7, r7, r6, LSL #6
    sub     r8, r8, r7, LSL #7
    sub     r9, r9, r8, LSL #8
    sub     r10, r10, r9, LSL #9
    sub     r11, r11, r10, LSL #10
    sub     r12, r12, r11, LSL #11
    sub     r1, r1, r12, LSL #12

    // loop 2
    sub     r2, r2, r1, LSL #1
    sub     r3, r3, r2, LSL #2
    sub     r4, r4, r3, LSL #3
    sub     r5, r5, r4, LSL #4
    sub     r6, r6, r5, LSL #5
    sub     r7, r7, r6, LSL #6
    sub     r8, r8, r7, LSL #7
    sub     r9, r9, r8, LSL #8
    sub     r10, r10, r9, LSL #9
    sub     r11, r11, r10, LSL #10
    sub     r12, r12, r11, LSL #11
    sub     r1, r1, r12, LSL #12

    // loop 3
    sub     r2, r2, r1, LSL #1
    sub     r3, r3, r2, LSL #2
    sub     r4, r4, r3, LSL #3
    sub     r5, r5, r4, LSL #4
    sub     r6, r6, r5, LSL #5
    sub     r7, r7, r6, LSL #6
    sub     r8, r8, r7, LSL #7
    sub     r9, r9, r8, LSL #8
    sub     r10, r10, r9, LSL #9
    sub     r11, r11, r10, LSL #10
    sub     r12, r12, r11, LSL #11
    sub     r1, r1, r12, LSL #12

    // loop 4
    sub     r2, r2, r1, LSL #1
    sub     r3, r3, r2, LSL #2
    sub     r4, r4, r3, LSL #3
    sub     r5, r5, r4, LSL #4
    sub     r6, r6, r5, LSL #5
    sub     r7, r7, r6, LSL #6
    sub     r8, r8, r7, LSL #7
    sub     r9, r9, r8, LSL #8
    sub     r10, r10, r9, LSL #9
    sub     r11, r11, r10, LSL #10
    sub     r12, r12, r11, LSL #11
    sub     r1, r1, r12, LSL #12

    // loop 5
    sub     r2, r2, r1, LSL #1
    sub     r3, r3, r2, LSL #2
    sub     r4, r4, r3, LSL #3
    sub     r5, r5, r4, LSL #4
    sub     r6, r6, r5, LSL #5
    sub     r7, r7, r6, LSL #6
    sub     r8, r8, r7, LSL #7
    sub     r9, r9, r8, LSL #8
    sub     r10, r10, r9, LSL #9
    sub     r11, r11, r10, LSL #10
    sub     r12, r12, r11, LSL #11
    sub     r1, r1, r12, LSL #12

    subs    r0, r0, #1
    bne     subRegMinTest_LOOP
    pop     {r4-r11, pc}

_subRegMaxTest:

    push    {r4-r11, lr}

subRegMaxTest_LOOP:

    // loop 1
    sub     r1, r0, r0
    sub     r2, r0, r0
    sub     r3, r0, r0
    sub     r4, r0, r0
    sub     r5, r0, r0
    sub     r6, r0, r0
    sub     r7, r0, r0
    sub     r8, r0, r0
    sub     r9, r0, r0
    sub     r10, r0, r0
    sub     r11, r0, r0
    sub     r12, r0, r0

    // loop 2
    sub     r1, r0, r0
    sub     r2, r0, r0
    sub     r3, r0, r0
    sub     r4, r0, r0
    sub     r5, r0, r0
    sub     r6, r0, r0
    sub     r7, r0, r0
    sub     r8, r0, r0
    sub     r9, r0, r0
    sub     r10, r0, r0
    sub     r11, r0, r0
    sub     r12, r0, r0

    // loop 3
    sub     r1, r0, r0
    sub     r2, r0, r0
    sub     r3, r0, r0
    sub     r4, r0, r0
    sub     r5, r0, r0
    sub     r6, r0, r0
    sub     r7, r0, r0
    sub     r8, r0, r0
    sub     r9, r0, r0
    sub     r10, r0, r0
    sub     r11, r0, r0
    sub     r12, r0, r0

    // loop 4
    sub     r1, r0, r0
    sub     r2, r0, r0
    sub     r3, r0, r0
    sub     r4, r0, r0
    sub     r5, r0, r0
    sub     r6, r0, r0
    sub     r7, r0, r0
    sub     r8, r0, r0
    sub     r9, r0, r0
    sub     r10, r0, r0
    sub     r11, r0, r0
    sub     r12, r0, r0

    // loop 5
    sub     r1, r0, r0
    sub     r2, r0, r0
    sub     r3, r0, r0
    sub     r4, r0, r0
    sub     r5, r0, r0
    sub     r6, r0, r0
    sub     r7, r0, r0
    sub     r8, r0, r0
    sub     r9, r0, r0
    sub     r10, r0, r0
    sub     r11, r0, r0
    sub     r12, r0, r0

    subs    r0, r0, #1
    bne     subRegMaxTest_LOOP
    pop     {r4-r11, pc}

_subShftMinTest:

    push    {r4-r11, lr}

subShftMinTest_LOOP:

    // loop 1
    sub     r2, r2, r1, LSL r1
    sub     r3, r3, r2, LSL r2
    sub     r4, r4, r3, LSL r3
    sub     r5, r5, r4, LSL r4
    sub     r6, r6, r5, LSL r5
    sub     r7, r7, r6, LSL r6
    sub     r8, r8, r7, LSL r7
    sub     r9, r9, r8, LSL r8
    sub     r10, r10, r9, LSL r9
    sub     r11, r11, r10, LSL r10
    sub     r12, r12, r11, LSL r11
    sub     r1, r1, r12, LSL r12

    // loop 2
    sub     r2, r2, r1, LSL r1
    sub     r3, r3, r2, LSL r2
    sub     r4, r4, r3, LSL r3
    sub     r5, r5, r4, LSL r4
    sub     r6, r6, r5, LSL r5
    sub     r7, r7, r6, LSL r6
    sub     r8, r8, r7, LSL r7
    sub     r9, r9, r8, LSL r8
    sub     r10, r10, r9, LSL r9
    sub     r11, r11, r10, LSL r10
    sub     r12, r12, r11, LSL r11
    sub     r1, r1, r12, LSL r12

    // loop 3
    sub     r2, r2, r1, LSL r1
    sub     r3, r3, r2, LSL r2
    sub     r4, r4, r3, LSL r3
    sub     r5, r5, r4, LSL r4
    sub     r6, r6, r5, LSL r5
    sub     r7, r7, r6, LSL r6
    sub     r8, r8, r7, LSL r7
    sub     r9, r9, r8, LSL r8
    sub     r10, r10, r9, LSL r9
    sub     r11, r11, r10, LSL r10
    sub     r12, r12, r11, LSL r11
    sub     r1, r1, r12, LSL r12

    // loop 4
    sub     r2, r2, r1, LSL r1
    sub     r3, r3, r2, LSL r2
    sub     r4, r4, r3, LSL r3
    sub     r5, r5, r4, LSL r4
    sub     r6, r6, r5, LSL r5
    sub     r7, r7, r6, LSL r6
    sub     r8, r8, r7, LSL r7
    sub     r9, r9, r8, LSL r8
    sub     r10, r10, r9, LSL r9
    sub     r11, r11, r10, LSL r10
    sub     r12, r12, r11, LSL r11
    sub     r1, r1, r12, LSL r12

    // loop 5
    sub     r2, r2, r1, LSL r1
    sub     r3, r3, r2, LSL r2
    sub     r4, r4, r3, LSL r3
    sub     r5, r5, r4, LSL r4
    sub     r6, r6, r5, LSL r5
    sub     r7, r7, r6, LSL r6
    sub     r8, r8, r7, LSL r7
    sub     r9, r9, r8, LSL r8
    sub     r10, r10, r9, LSL r9
    sub     r11, r11, r10, LSL r10
    sub     r12, r12, r11, LSL r11
    sub     r1, r1, r12, LSL r12

    subs    r0, r0, #1
    bne     subShftMinTest_LOOP
    pop     {r4-r11, pc}

_subShftMaxTest:

    push    {r4-r11, lr}

subShftMaxTest_LOOP:

    // loop 1
    sub     r1, r0, r0, LSL r0
    sub     r2, r0, r0, LSL r0
    sub     r3, r0, r0, LSL r0
    sub     r4, r0, r0, LSL r0
    sub     r5, r0, r0, LSL r0
    sub     r6, r0, r0, LSL r0
    sub     r7, r0, r0, LSL r0
    sub     r8, r0, r0, LSL r0
    sub     r9, r0, r0, LSL r0
    sub     r10, r0, r0, LSL r0
    sub     r11, r0, r0, LSL r0
    sub     r12, r0, r0, LSL r0

    // loop 2
    sub     r1, r0, r0, LSL r0
    sub     r2, r0, r0, LSL r0
    sub     r3, r0, r0, LSL r0
    sub     r4, r0, r0, LSL r0
    sub     r5, r0, r0, LSL r0
    sub     r6, r0, r0, LSL r0
    sub     r7, r0, r0, LSL r0
    sub     r8, r0, r0, LSL r0
    sub     r9, r0, r0, LSL r0
    sub     r10, r0, r0, LSL r0
    sub     r11, r0, r0, LSL r0
    sub     r12, r0, r0, LSL r0

    // loop 3
    sub     r1, r0, r0, LSL r0
    sub     r2, r0, r0, LSL r0
    sub     r3, r0, r0, LSL r0
    sub     r4, r0, r0, LSL r0
    sub     r5, r0, r0, LSL r0
    sub     r6, r0, r0, LSL r0
    sub     r7, r0, r0, LSL r0
    sub     r8, r0, r0, LSL r0
    sub     r9, r0, r0, LSL r0
    sub     r10, r0, r0, LSL r0
    sub     r11, r0, r0, LSL r0
    sub     r12, r0, r0, LSL r0

    // loop 4
    sub     r1, r0, r0, LSL r0
    sub     r2, r0, r0, LSL r0
    sub     r3, r0, r0, LSL r0
    sub     r4, r0, r0, LSL r0
    sub     r5, r0, r0, LSL r0
    sub     r6, r0, r0, LSL r0
    sub     r7, r0, r0, LSL r0
    sub     r8, r0, r0, LSL r0
    sub     r9, r0, r0, LSL r0
    sub     r10, r0, r0, LSL r0
    sub     r11, r0, r0, LSL r0
    sub     r12, r0, r0, LSL r0

    // loop 5
    sub     r1, r0, r0, LSL r0
    sub     r2, r0, r0, LSL r0
    sub     r3, r0, r0, LSL r0
    sub     r4, r0, r0, LSL r0
    sub     r5, r0, r0, LSL r0
    sub     r6, r0, r0, LSL r0
    sub     r7, r0, r0, LSL r0
    sub     r8, r0, r0, LSL r0
    sub     r9, r0, r0, LSL r0
    sub     r10, r0, r0, LSL r0
    sub     r11, r0, r0, LSL r0
    sub     r12, r0, r0, LSL r0

    subs    r0, r0, #1
    bne     subShftMaxTest_LOOP
    pop     {r4-r11, pc}


.thumb
.thumb_func
_subImmThumbT1MinTest:

    push    {r4-r11, lr}

subImmThumbT1MinTest_LOOP:

    // loop 1
    subs     r1, r1, #2
    subs     r2, r2, #3
    subs     r3, r3, #4
    subs     r4, r4, #5
    subs     r5, r5, #6
    subs     r6, r6, #7
    subs     r7, r7, #1
    subs     r8, r8, #2
    subs     r9, r9, #3
    subs     r10, r10, #4
    subs     r11, r11, #5
    subs     r12, r12, #6

    // loop 2
    subs     r1, r1, #2
    subs     r2, r2, #3
    subs     r3, r3, #4
    subs     r4, r4, #5
    subs     r5, r5, #6
    subs     r6, r6, #7
    subs     r7, r7, #1
    subs     r8, r8, #2
    subs     r9, r9, #3
    subs     r10, r10, #4
    subs     r11, r11, #5
    subs     r12, r12, #6

    // loop 3
    subs     r1, r1, #2
    subs     r2, r2, #3
    subs     r3, r3, #4
    subs     r4, r4, #5
    subs     r5, r5, #6
    subs     r6, r6, #7
    subs     r7, r7, #1
    subs     r8, r8, #2
    subs     r9, r9, #3
    subs     r10, r10, #4
    subs     r11, r11, #5
    subs     r12, r12, #6

    // loop 4
    subs     r1, r1, #2
    subs     r2, r2, #3
    subs     r3, r3, #4
    subs     r4, r4, #5
    subs     r5, r5, #6
    subs     r6, r6, #7
    subs     r7, r7, #1
    subs     r8, r8, #2
    subs     r9, r9, #3
    subs     r10, r10, #4
    subs     r11, r11, #5
    subs     r12, r12, #6

    // loop 5
    subs     r1, r1, #2
    subs     r2, r2, #3
    subs     r3, r3, #4
    subs     r4, r4, #5
    subs     r5, r5, #6
    subs     r6, r6, #7
    subs     r7, r7, #1
    subs     r8, r8, #2
    subs     r9, r9, #3
    subs     r10, r10, #4
    subs     r11, r11, #5
    subs     r12, r12, #6

    subs    r0, r0, #1
    bne    subImmThumbT1MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_subImmThumbT1MaxTest:

    push    {r4-r11, lr}

.thumb_func
subImmThumbT1MaxTest_LOOP:

    // loop 1
    subs     r2, r1, #1
    subs     r3, r2, #2
    subs     r4, r3, #3
    subs     r5, r4, #4
    subs     r6, r5, #5
    subs     r7, r6, #6
    subs     r8, r7, #7
    subs     r9, r8, #1
    subs     r10, r9, #2
    subs     r11, r10, #3
    subs     r12, r11, #4
    subs     r1, r12, #5

    // loop 2
    subs     r2, r1, #1
    subs     r3, r2, #2
    subs     r4, r3, #3
    subs     r5, r4, #4
    subs     r6, r5, #5
    subs     r7, r6, #6
    subs     r8, r7, #7
    subs     r9, r8, #1
    subs     r10, r9, #2
    subs     r11, r10, #3
    subs     r12, r11, #4
    subs     r1, r12, #5

    // loop 3
    subs     r2, r1, #1
    subs     r3, r2, #2
    subs     r4, r3, #3
    subs     r5, r4, #4
    subs     r6, r5, #5
    subs     r7, r6, #6
    subs     r8, r7, #7
    subs     r9, r8, #1
    subs     r10, r9, #2
    subs     r11, r10, #3
    subs     r12, r11, #4
    subs     r1, r12, #5

    // loop 4
    subs     r2, r1, #1
    subs     r3, r2, #2
    subs     r4, r3, #3
    subs     r5, r4, #4
    subs     r6, r5, #5
    subs     r7, r6, #6
    subs     r8, r7, #7
    subs     r9, r8, #1
    subs     r10, r9, #2
    subs     r11, r10, #3
    subs     r12, r11, #4
    subs     r1, r12, #5

    // loop 5
    subs     r2, r1, #1
    subs     r3, r2, #2
    subs     r4, r3, #3
    subs     r5, r4, #4
    subs     r6, r5, #5
    subs     r7, r6, #6
    subs     r8, r7, #7
    subs     r9, r8, #1
    subs     r10, r9, #2
    subs     r11, r10, #3
    subs     r12, r11, #4
    subs     r1, r12, #5

    subs    r0, r0, #1
    bne     subImmThumbT1MaxTest_LOOP
    pop     {r4-r11, pc}


.thumb_func
_subImmThumbT2MinTest:

    push    {r4-r11, lr}

.thumb_func
subImmThumbT2MinTest_LOOP:

    // loop 1
    subs     r1, #2
    subs     r2, #3
    subs     r3, #4
    subs     r4, #5
    subs     r5, #6
    subs     r6, #7
    subs     r7, #8
    subs     r8, #9
    subs     r9, #10
    subs     r10, #11
    subs     r11, #12
    subs     r12, #13

    // loop 2
    subs     r1, #2
    subs     r2, #3
    subs     r3, #4
    subs     r4, #5
    subs     r5, #6
    subs     r6, #7
    subs     r7, #8
    subs     r8, #9
    subs     r9, #10
    subs     r10, #11
    subs     r11, #12
    subs     r12, #13

    // loop 3
    subs     r1, #2
    subs     r2, #3
    subs     r3, #4
    subs     r4, #5
    subs     r5, #6
    subs     r6, #7
    subs     r7, #8
    subs     r8, #9
    subs     r9, #10
    subs     r10, #11
    subs     r11, #12
    subs     r12, #13

    // loop 4
    subs     r1, #2
    subs     r2, #3
    subs     r3, #4
    subs     r4, #5
    subs     r5, #6
    subs     r6, #7
    subs     r7, #8
    subs     r8, #9
    subs     r9, #10
    subs     r10, #11
    subs     r11, #12
    subs     r12, #13

    // loop 5
    subs     r1, #2
    subs     r2, #3
    subs     r3, #4
    subs     r4, #5
    subs     r5, #6
    subs     r6, #7
    subs     r7, #8
    subs     r8, #9
    subs     r9, #10
    subs     r10, #11
    subs     r11, #12
    subs     r12, #13

    subs    r0, r0, #1
    bne     subImmThumbT2MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_subImmThumbT2MaxTest:

    push    {r4-r11, lr}

subImmThumbT2MaxTest_LOOP:

    // loop 1
    subs     r1, #2
    subs     r1, #3
    subs     r1, #4
    subs     r1, #5
    subs     r1, #6
    subs     r1, #7
    subs     r1, #8
    subs     r1, #9
    subs     r1, #10
    subs     r1, #11
    subs     r1, #12
    subs     r1, #13

    // loop 2
    subs     r1, #2
    subs     r1, #3
    subs     r1, #4
    subs     r1, #5
    subs     r1, #6
    subs     r1, #7
    subs     r1, #8
    subs     r1, #9
    subs     r1, #10
    subs     r1, #11
    subs     r1, #12
    subs     r1, #13

    // loop 3
    subs     r1, #2
    subs     r1, #3
    subs     r1, #4
    subs     r1, #5
    subs     r1, #6
    subs     r1, #7
    subs     r1, #8
    subs     r1, #9
    subs     r1, #10
    subs     r1, #11
    subs     r1, #12
    subs     r1, #13

    // loop 4
    subs     r1, #2
    subs     r1, #3
    subs     r1, #4
    subs     r1, #5
    subs     r1, #6
    subs     r1, #7
    subs     r1, #8
    subs     r1, #9
    subs     r1, #10
    subs     r1, #11
    subs     r1, #12
    subs     r1, #13

    // loop 5
    subs     r1, #2
    subs     r1, #3
    subs     r1, #4
    subs     r1, #5
    subs     r1, #6
    subs     r1, #7
    subs     r1, #8
    subs     r1, #9
    subs     r1, #10
    subs     r1, #11
    subs     r1, #12
    subs     r1, #13

    subs    r0, r0, #1
    bne     subImmThumbT2MaxTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_subImmThumbT3MinTest:

    push    {r4-r11, lr}

subImmThumbT3MinTest_LOOP:

    // loop 1
    sub.w     r1, r1, #2
    sub.w     r2, r2, #3
    sub.w     r3, r3, #4
    sub.w     r4, r4, #5
    sub.w     r5, r5, #6
    sub.w     r6, r6, #7
    sub.w     r7, r7, #1
    sub.w     r8, r8, #2
    sub.w     r9, r9, #3
    sub.w     r10, r10, #4
    sub.w     r11, r11, #5
    sub.w     r12, r12, #6

    // loop 2
    sub.w     r1, r1, #2
    sub.w     r2, r2, #3
    sub.w     r3, r3, #4
    sub.w     r4, r4, #5
    sub.w     r5, r5, #6
    sub.w     r6, r6, #7
    sub.w     r7, r7, #1
    sub.w     r8, r8, #2
    sub.w     r9, r9, #3
    sub.w     r10, r10, #4
    sub.w     r11, r11, #5
    sub.w     r12, r12, #6

    // loop 3
    sub.w     r1, r1, #2
    sub.w     r2, r2, #3
    sub.w     r3, r3, #4
    sub.w     r4, r4, #5
    sub.w     r5, r5, #6
    sub.w     r6, r6, #7
    sub.w     r7, r7, #1
    sub.w     r8, r8, #2
    sub.w     r9, r9, #3
    sub.w     r10, r10, #4
    sub.w     r11, r11, #5
    sub.w     r12, r12, #6

    // loop 4
    sub.w     r1, r1, #2
    sub.w     r2, r2, #3
    sub.w     r3, r3, #4
    sub.w     r4, r4, #5
    sub.w     r5, r5, #6
    sub.w     r6, r6, #7
    sub.w     r7, r7, #1
    sub.w     r8, r8, #2
    sub.w     r9, r9, #3
    sub.w     r10, r10, #4
    sub.w     r11, r11, #5
    sub.w     r12, r12, #6

    // loop 5
    sub.w     r1, r1, #2
    sub.w     r2, r2, #3
    sub.w     r3, r3, #4
    sub.w     r4, r4, #5
    sub.w     r5, r5, #6
    sub.w     r6, r6, #7
    sub.w     r7, r7, #1
    sub.w     r8, r8, #2
    sub.w     r9, r9, #3
    sub.w     r10, r10, #4
    sub.w     r11, r11, #5
    sub.w     r12, r12, #6

    subs    r0, r0, #1
    bne     subImmThumbT3MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_subImmThumbT3MaxTest:

    push    {r4-r11, lr}

subImmThumbT3MaxTest_LOOP:

    // loop 1
    sub.w     r2, r1, #2
    sub.w     r3, r2, #3
    sub.w     r4, r3, #4
    sub.w     r5, r4, #5
    sub.w     r6, r5, #6
    sub.w     r7, r6, #7
    sub.w     r8, r7, #1
    sub.w     r9, r8, #2
    sub.w     r10, r9, #3
    sub.w     r11, r10, #4
    sub.w     r12, r11, #5
    sub.w     r1, r12, #6

    // loop 2
    sub.w     r2, r1, #2
    sub.w     r3, r2, #3
    sub.w     r4, r3, #4
    sub.w     r5, r4, #5
    sub.w     r6, r5, #6
    sub.w     r7, r6, #7
    sub.w     r8, r7, #1
    sub.w     r9, r8, #2
    sub.w     r10, r9, #3
    sub.w     r11, r10, #4
    sub.w     r12, r11, #5
    sub.w     r1, r12, #6

    // loop 3
    sub.w     r2, r1, #2
    sub.w     r3, r2, #3
    sub.w     r4, r3, #4
    sub.w     r5, r4, #5
    sub.w     r6, r5, #6
    sub.w     r7, r6, #7
    sub.w     r8, r7, #1
    sub.w     r9, r8, #2
    sub.w     r10, r9, #3
    sub.w     r11, r10, #4
    sub.w     r12, r11, #5
    sub.w     r1, r12, #6

    // loop 4
    sub.w     r2, r1, #2
    sub.w     r3, r2, #3
    sub.w     r4, r3, #4
    sub.w     r5, r4, #5
    sub.w     r6, r5, #6
    sub.w     r7, r6, #7
    sub.w     r8, r7, #1
    sub.w     r9, r8, #2
    sub.w     r10, r9, #3
    sub.w     r11, r10, #4
    sub.w     r12, r11, #5
    sub.w     r1, r12, #6

    // loop 5
    sub.w     r2, r1, #2
    sub.w     r3, r2, #3
    sub.w     r4, r3, #4
    sub.w     r5, r4, #5
    sub.w     r6, r5, #6
    sub.w     r7, r6, #7
    sub.w     r8, r7, #1
    sub.w     r9, r8, #2
    sub.w     r10, r9, #3
    sub.w     r11, r10, #4
    sub.w     r12, r11, #5
    sub.w     r1, r12, #6

    subs    r0, r0, #1
    bne     subImmThumbT3MaxTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_subImmThumbT4MinTest:

    push    {r4-r11, lr}

subImmThumbT4MinTest_LOOP:

    // loop 1
    subw     r1, r1, #2
    subw     r2, r2, #3
    subw     r3, r3, #4
    subw     r4, r4, #5
    subw     r5, r5, #6
    subw     r6, r6, #7
    subw     r7, r7, #8
    subw     r8, r8, #9
    subw     r9, r9, #10
    subw     r10, r10, #11
    subw     r11, r11, #12
    subw     r12, r12, #13

    // loop 2
    subw     r1, r1, #2
    subw     r2, r2, #3
    subw     r3, r3, #4
    subw     r4, r4, #5
    subw     r5, r5, #6
    subw     r6, r6, #7
    subw     r7, r7, #8
    subw     r8, r8, #9
    subw     r9, r9, #10
    subw     r10, r10, #11
    subw     r11, r11, #12
    subw     r12, r12, #13

    // loop 3
    subw     r1, r1, #2
    subw     r2, r2, #3
    subw     r3, r3, #4
    subw     r4, r4, #5
    subw     r5, r5, #6
    subw     r6, r6, #7
    subw     r7, r7, #8
    subw     r8, r8, #9
    subw     r9, r9, #10
    subw     r10, r10, #11
    subw     r11, r11, #12
    subw     r12, r12, #13

    // loop 4
    subw     r1, r1, #2
    subw     r2, r2, #3
    subw     r3, r3, #4
    subw     r4, r4, #5
    subw     r5, r5, #6
    subw     r6, r6, #7
    subw     r7, r7, #8
    subw     r8, r8, #9
    subw     r9, r9, #10
    subw     r10, r10, #11
    subw     r11, r11, #12
    subw     r12, r12, #13

    // loop 5
    subw     r1, r1, #2
    subw     r2, r2, #3
    subw     r3, r3, #4
    subw     r4, r4, #5
    subw     r5, r5, #6
    subw     r6, r6, #7
    subw     r7, r7, #8
    subw     r8, r8, #9
    subw     r9, r9, #10
    subw     r10, r10, #11
    subw     r11, r11, #12
    subw     r12, r12, #13

    subs    r0, r0, #1
    bne     subImmThumbT4MinTest_LOOP
    pop     {r4-r11, pc}

.thumb_func
_subImmThumbT4MaxTest:

    push    {r4-r11, lr}

subImmThumbT4MaxTest_LOOP:

    // loop 1
    subw     r2, r1, #2
    subw     r3, r2, #3
    subw     r4, r3, #4
    subw     r5, r4, #5
    subw     r6, r5, #6
    subw     r7, r6, #7
    subw     r8, r7, #8
    subw     r9, r8, #9
    subw     r10, r9, #10
    subw     r11, r10, #11
    subw     r12, r11, #12
    subw     r1, r12, #13

    // loop 2
    subw     r2, r1, #2
    subw     r3, r2, #3
    subw     r4, r3, #4
    subw     r5, r4, #5
    subw     r6, r5, #6
    subw     r7, r6, #7
    subw     r8, r7, #8
    subw     r9, r8, #9
    subw     r10, r9, #10
    subw     r11, r10, #11
    subw     r12, r11, #12
    subw     r1, r12, #13

    // loop 3
    subw     r2, r1, #2
    subw     r3, r2, #3
    subw     r4, r3, #4
    subw     r5, r4, #5
    subw     r6, r5, #6
    subw     r7, r6, #7
    subw     r8, r7, #8
    subw     r9, r8, #9
    subw     r10, r9, #10
    subw     r11, r10, #11
    subw     r12, r11, #12
    subw     r1, r12, #13

    // loop 4
    subw     r2, r1, #2
    subw     r3, r2, #3
    subw     r4, r3, #4
    subw     r5, r4, #5
    subw     r6, r5, #6
    subw     r7, r6, #7
    subw     r8, r7, #8
    subw     r9, r8, #9
    subw     r10, r9, #10
    subw     r11, r10, #11
    subw     r12, r11, #12
    subw     r1, r12, #13

    // loop 5
    subw     r2, r1, #2
    subw     r3, r2, #3
    subw     r4, r3, #4
    subw     r5, r4, #5
    subw     r6, r5, #6
    subw     r7, r6, #7
    subw     r8, r7, #8
    subw     r9, r8, #9
    subw     r10, r9, #10
    subw     r11, r10, #11
    subw     r12, r11, #12
    subw     r1, r12, #13

    subs    r0, r0, #1
    bne     subImmThumbT4MaxTest_LOOP
    pop     {r4-r11, pc}


.arm

_sxtabMinTest:

    push    {r4-r11, lr}

sxtabMinTest_LOOP:

    // loop 1
    sxtab   r2, r2, r1, ROR #0
    sxtab   r3, r3, r2, ROR #8
    sxtab   r4, r4, r3, ROR #16
    sxtab   r5, r5, r4, ROR #24
    sxtab   r6, r6, r5, ROR #0
    sxtab   r7, r7, r6, ROR #8
    sxtab   r8, r8, r7, ROR #16
    sxtab   r9, r9, r8, ROR #24
    sxtab   r10, r10, r9, ROR #0
    sxtab   r11, r11, r10, ROR #8
    sxtab   r12, r12, r11, ROR #16
    sxtab   r1, r1, r12, ROR #24

    // loop 2
    sxtab   r2, r2, r1, ROR #0
    sxtab   r3, r3, r2, ROR #8
    sxtab   r4, r4, r3, ROR #16
    sxtab   r5, r5, r4, ROR #24
    sxtab   r6, r6, r5, ROR #0
    sxtab   r7, r7, r6, ROR #8
    sxtab   r8, r8, r7, ROR #16
    sxtab   r9, r9, r8, ROR #24
    sxtab   r10, r10, r9, ROR #0
    sxtab   r11, r11, r10, ROR #8
    sxtab   r12, r12, r11, ROR #16
    sxtab   r1, r1, r12, ROR #24

    // loop 3
    sxtab   r2, r2, r1, ROR #0
    sxtab   r3, r3, r2, ROR #8
    sxtab   r4, r4, r3, ROR #16
    sxtab   r5, r5, r4, ROR #24
    sxtab   r6, r6, r5, ROR #0
    sxtab   r7, r7, r6, ROR #8
    sxtab   r8, r8, r7, ROR #16
    sxtab   r9, r9, r8, ROR #24
    sxtab   r10, r10, r9, ROR #0
    sxtab   r11, r11, r10, ROR #8
    sxtab   r12, r12, r11, ROR #16
    sxtab   r1, r1, r12, ROR #24

    // loop 4
    sxtab   r2, r2, r1, ROR #0
    sxtab   r3, r3, r2, ROR #8
    sxtab   r4, r4, r3, ROR #16
    sxtab   r5, r5, r4, ROR #24
    sxtab   r6, r6, r5, ROR #0
    sxtab   r7, r7, r6, ROR #8
    sxtab   r8, r8, r7, ROR #16
    sxtab   r9, r9, r8, ROR #24
    sxtab   r10, r10, r9, ROR #0
    sxtab   r11, r11, r10, ROR #8
    sxtab   r12, r12, r11, ROR #16
    sxtab   r1, r1, r12, ROR #24

    // loop 5
    sxtab   r2, r2, r1, ROR #0
    sxtab   r3, r3, r2, ROR #8
    sxtab   r4, r4, r3, ROR #16
    sxtab   r5, r5, r4, ROR #24
    sxtab   r6, r6, r5, ROR #0
    sxtab   r7, r7, r6, ROR #8
    sxtab   r8, r8, r7, ROR #16
    sxtab   r9, r9, r8, ROR #24
    sxtab   r10, r10, r9, ROR #0
    sxtab   r11, r11, r10, ROR #8
    sxtab   r12, r12, r11, ROR #16
    sxtab   r1, r1, r12, ROR #24

    subs    r0, r0, #1
    bne     sxtabMinTest_LOOP
    pop     {r4-r11, pc}

_sxtabMaxTest:

    push    {r4-r11, lr}

sxtabMaxTest_LOOP:

    // loop 1
    sxtab   r1, r0, r0
    sxtab   r2, r0, r0
    sxtab   r3, r0, r0
    sxtab   r4, r0, r0
    sxtab   r5, r0, r0
    sxtab   r6, r0, r0
    sxtab   r7, r0, r0
    sxtab   r8, r0, r0
    sxtab   r9, r0, r0
    sxtab   r10, r0, r0
    sxtab   r11, r0, r0
    sxtab   r12, r0, r0

    // loop 2
    sxtab   r1, r0, r0
    sxtab   r2, r0, r0
    sxtab   r3, r0, r0
    sxtab   r4, r0, r0
    sxtab   r5, r0, r0
    sxtab   r6, r0, r0
    sxtab   r7, r0, r0
    sxtab   r8, r0, r0
    sxtab   r9, r0, r0
    sxtab   r10, r0, r0
    sxtab   r11, r0, r0
    sxtab   r12, r0, r0

    // loop 3
    sxtab   r1, r0, r0
    sxtab   r2, r0, r0
    sxtab   r3, r0, r0
    sxtab   r4, r0, r0
    sxtab   r5, r0, r0
    sxtab   r6, r0, r0
    sxtab   r7, r0, r0
    sxtab   r8, r0, r0
    sxtab   r9, r0, r0
    sxtab   r10, r0, r0
    sxtab   r11, r0, r0
    sxtab   r12, r0, r0

    // loop 4
    sxtab   r1, r0, r0
    sxtab   r2, r0, r0
    sxtab   r3, r0, r0
    sxtab   r4, r0, r0
    sxtab   r5, r0, r0
    sxtab   r6, r0, r0
    sxtab   r7, r0, r0
    sxtab   r8, r0, r0
    sxtab   r9, r0, r0
    sxtab   r10, r0, r0
    sxtab   r11, r0, r0
    sxtab   r12, r0, r0

    // loop 5
    sxtab   r1, r0, r0
    sxtab   r2, r0, r0
    sxtab   r3, r0, r0
    sxtab   r4, r0, r0
    sxtab   r5, r0, r0
    sxtab   r6, r0, r0
    sxtab   r7, r0, r0
    sxtab   r8, r0, r0
    sxtab   r9, r0, r0
    sxtab   r10, r0, r0
    sxtab   r11, r0, r0
    sxtab   r12, r0, r0

    subs    r0, r0, #1
    bne     sxtabMaxTest_LOOP
    pop     {r4-r11, pc}

_sxtab16MinTest:

    push    {r4-r11, lr}

sxtab16MinTest_LOOP:

    // loop 1
    sxtab16 r2, r2, r1, ROR #0
    sxtab16 r3, r3, r2, ROR #8
    sxtab16 r4, r4, r3, ROR #16
    sxtab16 r5, r5, r4, ROR #24
    sxtab16 r6, r6, r5, ROR #0
    sxtab16 r7, r7, r6, ROR #8
    sxtab16 r8, r8, r7, ROR #16
    sxtab16 r9, r9, r8, ROR #24
    sxtab16 r10, r10, r9, ROR #0
    sxtab16 r11, r11, r10, ROR #8
    sxtab16 r12, r12, r11, ROR #16
    sxtab16 r1, r1, r12, ROR #24

    // loop 2
    sxtab16 r2, r2, r1, ROR #0
    sxtab16 r3, r3, r2, ROR #8
    sxtab16 r4, r4, r3, ROR #16
    sxtab16 r5, r5, r4, ROR #24
    sxtab16 r6, r6, r5, ROR #0
    sxtab16 r7, r7, r6, ROR #8
    sxtab16 r8, r8, r7, ROR #16
    sxtab16 r9, r9, r8, ROR #24
    sxtab16 r10, r10, r9, ROR #0
    sxtab16 r11, r11, r10, ROR #8
    sxtab16 r12, r12, r11, ROR #16
    sxtab16 r1, r1, r12, ROR #24

    // loop 3
    sxtab16 r2, r2, r1, ROR #0
    sxtab16 r3, r3, r2, ROR #8
    sxtab16 r4, r4, r3, ROR #16
    sxtab16 r5, r5, r4, ROR #24
    sxtab16 r6, r6, r5, ROR #0
    sxtab16 r7, r7, r6, ROR #8
    sxtab16 r8, r8, r7, ROR #16
    sxtab16 r9, r9, r8, ROR #24
    sxtab16 r10, r10, r9, ROR #0
    sxtab16 r11, r11, r10, ROR #8
    sxtab16 r12, r12, r11, ROR #16
    sxtab16 r1, r1, r12, ROR #24

    // loop 4
    sxtab16 r2, r2, r1, ROR #0
    sxtab16 r3, r3, r2, ROR #8
    sxtab16 r4, r4, r3, ROR #16
    sxtab16 r5, r5, r4, ROR #24
    sxtab16 r6, r6, r5, ROR #0
    sxtab16 r7, r7, r6, ROR #8
    sxtab16 r8, r8, r7, ROR #16
    sxtab16 r9, r9, r8, ROR #24
    sxtab16 r10, r10, r9, ROR #0
    sxtab16 r11, r11, r10, ROR #8
    sxtab16 r12, r12, r11, ROR #16
    sxtab16 r1, r1, r12, ROR #24

    // loop 5
    sxtab16 r2, r2, r1, ROR #0
    sxtab16 r3, r3, r2, ROR #8
    sxtab16 r4, r4, r3, ROR #16
    sxtab16 r5, r5, r4, ROR #24
    sxtab16 r6, r6, r5, ROR #0
    sxtab16 r7, r7, r6, ROR #8
    sxtab16 r8, r8, r7, ROR #16
    sxtab16 r9, r9, r8, ROR #24
    sxtab16 r10, r10, r9, ROR #0
    sxtab16 r11, r11, r10, ROR #8
    sxtab16 r12, r12, r11, ROR #16
    sxtab16 r1, r1, r12, ROR #24

    subs    r0, r0, #1
    bne     sxtab16MinTest_LOOP
    pop     {r4-r11, pc}

_sxtab16MaxTest:

    push    {r4-r11, lr}

sxtab16MaxTest_LOOP:

    // loop 1
    sxtab16 r1, r0, r0
    sxtab16 r2, r0, r0
    sxtab16 r3, r0, r0
    sxtab16 r4, r0, r0
    sxtab16 r5, r0, r0
    sxtab16 r6, r0, r0
    sxtab16 r7, r0, r0
    sxtab16 r8, r0, r0
    sxtab16 r9, r0, r0
    sxtab16 r10, r0, r0
    sxtab16 r11, r0, r0
    sxtab16 r12, r0, r0

    // loop 2
    sxtab16 r1, r0, r0
    sxtab16 r2, r0, r0
    sxtab16 r3, r0, r0
    sxtab16 r4, r0, r0
    sxtab16 r5, r0, r0
    sxtab16 r6, r0, r0
    sxtab16 r7, r0, r0
    sxtab16 r8, r0, r0
    sxtab16 r9, r0, r0
    sxtab16 r10, r0, r0
    sxtab16 r11, r0, r0
    sxtab16 r12, r0, r0

    // loop 3
    sxtab16 r1, r0, r0
    sxtab16 r2, r0, r0
    sxtab16 r3, r0, r0
    sxtab16 r4, r0, r0
    sxtab16 r5, r0, r0
    sxtab16 r6, r0, r0
    sxtab16 r7, r0, r0
    sxtab16 r8, r0, r0
    sxtab16 r9, r0, r0
    sxtab16 r10, r0, r0
    sxtab16 r11, r0, r0
    sxtab16 r12, r0, r0

    // loop 4
    sxtab16 r1, r0, r0
    sxtab16 r2, r0, r0
    sxtab16 r3, r0, r0
    sxtab16 r4, r0, r0
    sxtab16 r5, r0, r0
    sxtab16 r6, r0, r0
    sxtab16 r7, r0, r0
    sxtab16 r8, r0, r0
    sxtab16 r9, r0, r0
    sxtab16 r10, r0, r0
    sxtab16 r11, r0, r0
    sxtab16 r12, r0, r0

    // loop 5
    sxtab16 r1, r0, r0
    sxtab16 r2, r0, r0
    sxtab16 r3, r0, r0
    sxtab16 r4, r0, r0
    sxtab16 r5, r0, r0
    sxtab16 r6, r0, r0
    sxtab16 r7, r0, r0
    sxtab16 r8, r0, r0
    sxtab16 r9, r0, r0
    sxtab16 r10, r0, r0
    sxtab16 r11, r0, r0
    sxtab16 r12, r0, r0

    subs    r0, r0, #1
    bne     sxtab16MaxTest_LOOP
    pop     {r4-r11, pc}


_sxtahMinTest:

    push    {r4-r11, lr}

sxtahMinTest_LOOP:

    // loop 1
    sxtah   r2, r2, r1, ROR #0
    sxtah   r3, r2, r2, ROR #8
    sxtah   r4, r3, r3, ROR #16
    sxtah   r5, r5, r4, ROR #24
    sxtah   r6, r6, r5, ROR #0
    sxtah   r7, r7, r6, ROR #8
    sxtah   r8, r8, r7, ROR #16
    sxtah   r9, r9, r8, ROR #24
    sxtah   r10, r10, r9, ROR #0
    sxtah   r11, r11, r10, ROR #8
    sxtah   r12, r12, r11, ROR #16
    sxtah   r1, r1, r12, ROR #24

    // loop 2
    sxtah   r2, r2, r1, ROR #0
    sxtah   r3, r2, r2, ROR #8
    sxtah   r4, r3, r3, ROR #16
    sxtah   r5, r5, r4, ROR #24
    sxtah   r6, r6, r5, ROR #0
    sxtah   r7, r7, r6, ROR #8
    sxtah   r8, r8, r7, ROR #16
    sxtah   r9, r9, r8, ROR #24
    sxtah   r10, r10, r9, ROR #0
    sxtah   r11, r11, r10, ROR #8
    sxtah   r12, r12, r11, ROR #16
    sxtah   r1, r1, r12, ROR #24

    // loop 3
    sxtah   r2, r2, r1, ROR #0
    sxtah   r3, r2, r2, ROR #8
    sxtah   r4, r3, r3, ROR #16
    sxtah   r5, r5, r4, ROR #24
    sxtah   r6, r6, r5, ROR #0
    sxtah   r7, r7, r6, ROR #8
    sxtah   r8, r8, r7, ROR #16
    sxtah   r9, r9, r8, ROR #24
    sxtah   r10, r10, r9, ROR #0
    sxtah   r11, r11, r10, ROR #8
    sxtah   r12, r12, r11, ROR #16
    sxtah   r1, r1, r12, ROR #24

    // loop 4
    sxtah   r2, r2, r1, ROR #0
    sxtah   r3, r2, r2, ROR #8
    sxtah   r4, r3, r3, ROR #16
    sxtah   r5, r5, r4, ROR #24
    sxtah   r6, r6, r5, ROR #0
    sxtah   r7, r7, r6, ROR #8
    sxtah   r8, r8, r7, ROR #16
    sxtah   r9, r9, r8, ROR #24
    sxtah   r10, r10, r9, ROR #0
    sxtah   r11, r11, r10, ROR #8
    sxtah   r12, r12, r11, ROR #16
    sxtah   r1, r1, r12, ROR #24

    // loop 5
    sxtah   r2, r2, r1, ROR #0
    sxtah   r3, r2, r2, ROR #8
    sxtah   r4, r3, r3, ROR #16
    sxtah   r5, r5, r4, ROR #24
    sxtah   r6, r6, r5, ROR #0
    sxtah   r7, r7, r6, ROR #8
    sxtah   r8, r8, r7, ROR #16
    sxtah   r9, r9, r8, ROR #24
    sxtah   r10, r10, r9, ROR #0
    sxtah   r11, r11, r10, ROR #8
    sxtah   r12, r12, r11, ROR #16
    sxtah   r1, r1, r12, ROR #24

    subs    r0, r0, #1
    bne     sxtahMinTest_LOOP
    pop     {r4-r11, pc}

_sxtahMaxTest:

    push    {r4-r11, lr}

sxtahMaxTest_LOOP:

    // loop 1
    sxtah   r1, r0, r0
    sxtah   r2, r0, r0
    sxtah   r3, r0, r0
    sxtah   r4, r0, r0
    sxtah   r5, r0, r0
    sxtah   r6, r0, r0
    sxtah   r7, r0, r0
    sxtah   r8, r0, r0
    sxtah   r9, r0, r0
    sxtah   r10, r0, r0
    sxtah   r11, r0, r0
    sxtah   r12, r0, r0

    // loop 2
    sxtah   r1, r0, r0
    sxtah   r2, r0, r0
    sxtah   r3, r0, r0
    sxtah   r4, r0, r0
    sxtah   r5, r0, r0
    sxtah   r6, r0, r0
    sxtah   r7, r0, r0
    sxtah   r8, r0, r0
    sxtah   r9, r0, r0
    sxtah   r10, r0, r0
    sxtah   r11, r0, r0
    sxtah   r12, r0, r0

    // loop 3
    sxtah   r1, r0, r0
    sxtah   r2, r0, r0
    sxtah   r3, r0, r0
    sxtah   r4, r0, r0
    sxtah   r5, r0, r0
    sxtah   r6, r0, r0
    sxtah   r7, r0, r0
    sxtah   r8, r0, r0
    sxtah   r9, r0, r0
    sxtah   r10, r0, r0
    sxtah   r11, r0, r0
    sxtah   r12, r0, r0

    // loop 4
    sxtah   r1, r0, r0
    sxtah   r2, r0, r0
    sxtah   r3, r0, r0
    sxtah   r4, r0, r0
    sxtah   r5, r0, r0
    sxtah   r6, r0, r0
    sxtah   r7, r0, r0
    sxtah   r8, r0, r0
    sxtah   r9, r0, r0
    sxtah   r10, r0, r0
    sxtah   r11, r0, r0
    sxtah   r12, r0, r0

    // loop 5
    sxtah   r1, r0, r0
    sxtah   r2, r0, r0
    sxtah   r3, r0, r0
    sxtah   r4, r0, r0
    sxtah   r5, r0, r0
    sxtah   r6, r0, r0
    sxtah   r7, r0, r0
    sxtah   r8, r0, r0
    sxtah   r9, r0, r0
    sxtah   r10, r0, r0
    sxtah   r11, r0, r0
    sxtah   r12, r0, r0

    subs    r0, r0, #1
    bne     sxtahMaxTest_LOOP
    pop     {r4-r11, pc}


_sxtbMinTest:

    push    {r4-r11, lr}

sxtbMinTest_LOOP:

    // loop 1
    sxtb    r2, r1, ROR #0
    sxtb    r3, r2, ROR #8
    sxtb    r4, r3, ROR #16
    sxtb    r5, r4, ROR #24
    sxtb    r6, r5, ROR #0
    sxtb    r7, r6, ROR #8
    sxtb    r8, r7, ROR #16
    sxtb    r9, r8, ROR #24
    sxtb    r10, r9, ROR #0
    sxtb    r11, r10, ROR #8
    sxtb    r12, r11, ROR #16
    sxtb    r1, r12, ROR #24

    // loop 2
    sxtb    r2, r1, ROR #0
    sxtb    r3, r2, ROR #8
    sxtb    r4, r3, ROR #16
    sxtb    r5, r4, ROR #24
    sxtb    r6, r5, ROR #0
    sxtb    r7, r6, ROR #8
    sxtb    r8, r7, ROR #16
    sxtb    r9, r8, ROR #24
    sxtb    r10, r9, ROR #0
    sxtb    r11, r10, ROR #8
    sxtb    r12, r11, ROR #16
    sxtb    r1, r12, ROR #24

    // loop 3
    sxtb    r2, r1, ROR #0
    sxtb    r3, r2, ROR #8
    sxtb    r4, r3, ROR #16
    sxtb    r5, r4, ROR #24
    sxtb    r6, r5, ROR #0
    sxtb    r7, r6, ROR #8
    sxtb    r8, r7, ROR #16
    sxtb    r9, r8, ROR #24
    sxtb    r10, r9, ROR #0
    sxtb    r11, r10, ROR #8
    sxtb    r12, r11, ROR #16
    sxtb    r1, r12, ROR #24

    // loop 4
    sxtb    r2, r1, ROR #0
    sxtb    r3, r2, ROR #8
    sxtb    r4, r3, ROR #16
    sxtb    r5, r4, ROR #24
    sxtb    r6, r5, ROR #0
    sxtb    r7, r6, ROR #8
    sxtb    r8, r7, ROR #16
    sxtb    r9, r8, ROR #24
    sxtb    r10, r9, ROR #0
    sxtb    r11, r10, ROR #8
    sxtb    r12, r11, ROR #16
    sxtb    r1, r12, ROR #24

    // loop 5
    sxtb    r2, r1, ROR #0
    sxtb    r3, r2, ROR #8
    sxtb    r4, r3, ROR #16
    sxtb    r5, r4, ROR #24
    sxtb    r6, r5, ROR #0
    sxtb    r7, r6, ROR #8
    sxtb    r8, r7, ROR #16
    sxtb    r9, r8, ROR #24
    sxtb    r10, r9, ROR #0
    sxtb    r11, r10, ROR #8
    sxtb    r12, r11, ROR #16
    sxtb    r1, r12, ROR #24

    subs    r0, r0, #1
    bne     sxtbMinTest_LOOP
    pop     {r4-r11, pc}

_sxtbMaxTest:

    push    {r4-r11, lr}

sxtbMaxTest_LOOP:

    // loop 1
    sxtb    r1, r0
    sxtb    r2, r0
    sxtb    r3, r0
    sxtb    r4, r0
    sxtb    r5, r0
    sxtb    r6, r0
    sxtb    r7, r0
    sxtb    r8, r0
    sxtb    r9, r0
    sxtb    r10, r0
    sxtb    r11, r0
    sxtb    r12, r0

    // loop 2
    sxtb    r1, r0
    sxtb    r2, r0
    sxtb    r3, r0
    sxtb    r4, r0
    sxtb    r5, r0
    sxtb    r6, r0
    sxtb    r7, r0
    sxtb    r8, r0
    sxtb    r9, r0
    sxtb    r10, r0
    sxtb    r11, r0
    sxtb    r12, r0

    // loop 3
    sxtb    r1, r0
    sxtb    r2, r0
    sxtb    r3, r0
    sxtb    r4, r0
    sxtb    r5, r0
    sxtb    r6, r0
    sxtb    r7, r0
    sxtb    r8, r0
    sxtb    r9, r0
    sxtb    r10, r0
    sxtb    r11, r0
    sxtb    r12, r0

    // loop 4
    sxtb    r1, r0
    sxtb    r2, r0
    sxtb    r3, r0
    sxtb    r4, r0
    sxtb    r5, r0
    sxtb    r6, r0
    sxtb    r7, r0
    sxtb    r8, r0
    sxtb    r9, r0
    sxtb    r10, r0
    sxtb    r11, r0
    sxtb    r12, r0

    // loop 5
    sxtb    r1, r0
    sxtb    r2, r0
    sxtb    r3, r0
    sxtb    r4, r0
    sxtb    r5, r0
    sxtb    r6, r0
    sxtb    r7, r0
    sxtb    r8, r0
    sxtb    r9, r0
    sxtb    r10, r0
    sxtb    r11, r0
    sxtb    r12, r0

    subs    r0, r0, #1
    bne     sxtbMaxTest_LOOP
    pop     {r4-r11, pc}


_sxtb16MinTest:

    push    {r4-r11, lr}

sxtb16MinTest_LOOP:

    // loop 1
    sxtb16  r2, r1, ROR #0
    sxtb16  r3, r2, ROR #8
    sxtb16  r4, r3, ROR #16
    sxtb16  r5, r4, ROR #24
    sxtb16  r6, r5, ROR #0
    sxtb16  r7, r6, ROR #8
    sxtb16  r8, r7, ROR #16
    sxtb16  r9, r8, ROR #24
    sxtb16  r10, r9, ROR #0
    sxtb16  r11, r10, ROR #8
    sxtb16  r12, r11, ROR #16
    sxtb16  r1, r12, ROR #24

    // loop 2
    sxtb16  r2, r1, ROR #0
    sxtb16  r3, r2, ROR #8
    sxtb16  r4, r3, ROR #16
    sxtb16  r5, r4, ROR #24
    sxtb16  r6, r5, ROR #0
    sxtb16  r7, r6, ROR #8
    sxtb16  r8, r7, ROR #16
    sxtb16  r9, r8, ROR #24
    sxtb16  r10, r9, ROR #0
    sxtb16  r11, r10, ROR #8
    sxtb16  r12, r11, ROR #16
    sxtb16  r1, r12, ROR #24

    // loop 3
    sxtb16  r2, r1, ROR #0
    sxtb16  r3, r2, ROR #8
    sxtb16  r4, r3, ROR #16
    sxtb16  r5, r4, ROR #24
    sxtb16  r6, r5, ROR #0
    sxtb16  r7, r6, ROR #8
    sxtb16  r8, r7, ROR #16
    sxtb16  r9, r8, ROR #24
    sxtb16  r10, r9, ROR #0
    sxtb16  r11, r10, ROR #8
    sxtb16  r12, r11, ROR #16
    sxtb16  r1, r12, ROR #24

    // loop 4
    sxtb16  r2, r1, ROR #0
    sxtb16  r3, r2, ROR #8
    sxtb16  r4, r3, ROR #16
    sxtb16  r5, r4, ROR #24
    sxtb16  r6, r5, ROR #0
    sxtb16  r7, r6, ROR #8
    sxtb16  r8, r7, ROR #16
    sxtb16  r9, r8, ROR #24
    sxtb16  r10, r9, ROR #0
    sxtb16  r11, r10, ROR #8
    sxtb16  r12, r11, ROR #16
    sxtb16  r1, r12, ROR #24

    // loop 5
    sxtb16  r2, r1, ROR #0
    sxtb16  r3, r2, ROR #8
    sxtb16  r4, r3, ROR #16
    sxtb16  r5, r4, ROR #24
    sxtb16  r6, r5, ROR #0
    sxtb16  r7, r6, ROR #8
    sxtb16  r8, r7, ROR #16
    sxtb16  r9, r8, ROR #24
    sxtb16  r10, r9, ROR #0
    sxtb16  r11, r10, ROR #8
    sxtb16  r12, r11, ROR #16
    sxtb16  r1, r12, ROR #24

    subs    r0, r0, #1
    bne     sxtb16MinTest_LOOP
    pop     {r4-r11, pc}

_sxtb16MaxTest:

    push    {r4-r11, lr}

sxtb16MaxTest_LOOP:

    // loop 1
    sxtb16  r1, r0
    sxtb16  r2, r0
    sxtb16  r3, r0
    sxtb16  r4, r0
    sxtb16  r5, r0
    sxtb16  r6, r0
    sxtb16  r7, r0
    sxtb16  r8, r0
    sxtb16  r9, r0
    sxtb16  r10, r0
    sxtb16  r11, r0
    sxtb16  r12, r0

    // loop 2
    sxtb16  r1, r0
    sxtb16  r2, r0
    sxtb16  r3, r0
    sxtb16  r4, r0
    sxtb16  r5, r0
    sxtb16  r6, r0
    sxtb16  r7, r0
    sxtb16  r8, r0
    sxtb16  r9, r0
    sxtb16  r10, r0
    sxtb16  r11, r0
    sxtb16  r12, r0

    // loop 3
    sxtb16  r1, r0
    sxtb16  r2, r0
    sxtb16  r3, r0
    sxtb16  r4, r0
    sxtb16  r5, r0
    sxtb16  r6, r0
    sxtb16  r7, r0
    sxtb16  r8, r0
    sxtb16  r9, r0
    sxtb16  r10, r0
    sxtb16  r11, r0
    sxtb16  r12, r0

    // loop 4
    sxtb16  r1, r0
    sxtb16  r2, r0
    sxtb16  r3, r0
    sxtb16  r4, r0
    sxtb16  r5, r0
    sxtb16  r6, r0
    sxtb16  r7, r0
    sxtb16  r8, r0
    sxtb16  r9, r0
    sxtb16  r10, r0
    sxtb16  r11, r0
    sxtb16  r12, r0

    // loop 5
    sxtb16  r1, r0
    sxtb16  r2, r0
    sxtb16  r3, r0
    sxtb16  r4, r0
    sxtb16  r5, r0
    sxtb16  r6, r0
    sxtb16  r7, r0
    sxtb16  r8, r0
    sxtb16  r9, r0
    sxtb16  r10, r0
    sxtb16  r11, r0
    sxtb16  r12, r0

    subs    r0, r0, #1
    bne     sxtb16MaxTest_LOOP
    pop     {r4-r11, pc}


_sxthMinTest:

    push    {r4-r11, lr}

sxthMinTest_LOOP:

    // loop 1
    sxth    r2, r1, ROR #0
    sxth    r3, r2, ROR #8
    sxth    r4, r3, ROR #16
    sxth    r5, r4, ROR #24
    sxth    r6, r5, ROR #0
    sxth    r7, r6, ROR #8
    sxth    r8, r7, ROR #16
    sxth    r9, r8, ROR #24
    sxth    r10, r9, ROR #0
    sxth    r11, r10, ROR #8
    sxth    r12, r11, ROR #16
    sxth    r1, r12, ROR #24

    // loop 2
    sxth    r2, r1, ROR #0
    sxth    r3, r2, ROR #8
    sxth    r4, r3, ROR #16
    sxth    r5, r4, ROR #24
    sxth    r6, r5, ROR #0
    sxth    r7, r6, ROR #8
    sxth    r8, r7, ROR #16
    sxth    r9, r8, ROR #24
    sxth    r10, r9, ROR #0
    sxth    r11, r10, ROR #8
    sxth    r12, r11, ROR #16
    sxth    r1, r12, ROR #24

    // loop 3
    sxth    r2, r1, ROR #0
    sxth    r3, r2, ROR #8
    sxth    r4, r3, ROR #16
    sxth    r5, r4, ROR #24
    sxth    r6, r5, ROR #0
    sxth    r7, r6, ROR #8
    sxth    r8, r7, ROR #16
    sxth    r9, r8, ROR #24
    sxth    r10, r9, ROR #0
    sxth    r11, r10, ROR #8
    sxth    r12, r11, ROR #16
    sxth    r1, r12, ROR #24

    // loop 4
    sxth    r2, r1, ROR #0
    sxth    r3, r2, ROR #8
    sxth    r4, r3, ROR #16
    sxth    r5, r4, ROR #24
    sxth    r6, r5, ROR #0
    sxth    r7, r6, ROR #8
    sxth    r8, r7, ROR #16
    sxth    r9, r8, ROR #24
    sxth    r10, r9, ROR #0
    sxth    r11, r10, ROR #8
    sxth    r12, r11, ROR #16
    sxth    r1, r12, ROR #24

    // loop 5
    sxth    r2, r1, ROR #0
    sxth    r3, r2, ROR #8
    sxth    r4, r3, ROR #16
    sxth    r5, r4, ROR #24
    sxth    r6, r5, ROR #0
    sxth    r7, r6, ROR #8
    sxth    r8, r7, ROR #16
    sxth    r9, r8, ROR #24
    sxth    r10, r9, ROR #0
    sxth    r11, r10, ROR #8
    sxth    r12, r11, ROR #16
    sxth    r1, r12, ROR #24

    subs    r0, r0, #1
    bne     sxthMinTest_LOOP
    pop     {r4-r11, pc}

_sxthMaxTest:

    push    {r4-r11, lr}

sxthMaxTest_LOOP:

    // loop 1
    sxth    r1, r0
    sxth    r2, r0
    sxth    r3, r0
    sxth    r4, r0
    sxth    r5, r0
    sxth    r6, r0
    sxth    r7, r0
    sxth    r8, r0
    sxth    r9, r0
    sxth    r10, r0
    sxth    r11, r0
    sxth    r12, r0

    // loop 2
    sxth    r1, r0
    sxth    r2, r0
    sxth    r3, r0
    sxth    r4, r0
    sxth    r5, r0
    sxth    r6, r0
    sxth    r7, r0
    sxth    r8, r0
    sxth    r9, r0
    sxth    r10, r0
    sxth    r11, r0
    sxth    r12, r0

    // loop 3
    sxth    r1, r0
    sxth    r2, r0
    sxth    r3, r0
    sxth    r4, r0
    sxth    r5, r0
    sxth    r6, r0
    sxth    r7, r0
    sxth    r8, r0
    sxth    r9, r0
    sxth    r10, r0
    sxth    r11, r0
    sxth    r12, r0

    // loop 4
    sxth    r1, r0
    sxth    r2, r0
    sxth    r3, r0
    sxth    r4, r0
    sxth    r5, r0
    sxth    r6, r0
    sxth    r7, r0
    sxth    r8, r0
    sxth    r9, r0
    sxth    r10, r0
    sxth    r11, r0
    sxth    r12, r0

    // loop 5
    sxth    r1, r0
    sxth    r2, r0
    sxth    r3, r0
    sxth    r4, r0
    sxth    r5, r0
    sxth    r6, r0
    sxth    r7, r0
    sxth    r8, r0
    sxth    r9, r0
    sxth    r10, r0
    sxth    r11, r0
    sxth    r12, r0

    subs    r0, r0, #1
    bne     sxthMaxTest_LOOP
    pop     {r4-r11, pc}


_teqImmMaxTest:

    push    {r4-r11, lr}

teqImmMaxTest_LOOP:

    // loop 1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1

    // loop 2
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1

    // loop 3
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1

    // loop 4
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1

    // loop 5
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1
    teq     r1, #1

    subs    r0, r0, #1
    bne     teqImmMaxTest_LOOP
    pop     {r4-r11, pc}

_teqImmMinTest:

    push    {r4-r11, lr}

teqImmMinTest_LOOP:

    // loop 1
    teq     r1, #1
    teq     r2, #1
    teq     r3, #1
    teq     r4, #1
    teq     r5, #1
    teq     r6, #1
    teq     r7, #1
    teq     r8, #1
    teq     r9, #1
    teq     r10, #1
    teq     r11, #1
    teq     r12, #1

    // loop 2
    teq     r1, #1
    teq     r2, #1
    teq     r3, #1
    teq     r4, #1
    teq     r5, #1
    teq     r6, #1
    teq     r7, #1
    teq     r8, #1
    teq     r9, #1
    teq     r10, #1
    teq     r11, #1
    teq     r12, #1

    // loop 3
    teq     r1, #1
    teq     r2, #1
    teq     r3, #1
    teq     r4, #1
    teq     r5, #1
    teq     r6, #1
    teq     r7, #1
    teq     r8, #1
    teq     r9, #1
    teq     r10, #1
    teq     r11, #1
    teq     r12, #1

    // loop 4
    teq     r1, #1
    teq     r2, #1
    teq     r3, #1
    teq     r4, #1
    teq     r5, #1
    teq     r6, #1
    teq     r7, #1
    teq     r8, #1
    teq     r9, #1
    teq     r10, #1
    teq     r11, #1
    teq     r12, #1

    // loop 5
    teq     r1, #1
    teq     r2, #1
    teq     r3, #1
    teq     r4, #1
    teq     r5, #1
    teq     r6, #1
    teq     r7, #1
    teq     r8, #1
    teq     r9, #1
    teq     r10, #1
    teq     r11, #1
    teq     r12, #1

    subs    r0, r0, #1
    bne     teqImmMinTest_LOOP
    pop     {r4-r11, pc}

_teqRegMinTest:

    push    {r4-r11, lr}

teqRegMinTest_LOOP:

    // loop 1
    teq     r2, r1, LSL #1
    teq     r3, r2, LSL #2
    teq     r4, r3, LSL #3
    teq     r5, r4, LSL #4
    teq     r6, r5, LSL #1
    teq     r7, r6, LSL #2
    teq     r8, r7, LSL #3
    teq     r9, r8, LSL #4
    teq     r10, r9, LSL #1
    teq     r11, r10, LSL #2
    teq     r12, r11, LSL #3
    teq     r1, r12, LSL #4

    // loop 2
    teq     r2, r1, LSL #1
    teq     r3, r2, LSL #2
    teq     r4, r3, LSL #3
    teq     r5, r4, LSL #4
    teq     r6, r5, LSL #1
    teq     r7, r6, LSL #2
    teq     r8, r7, LSL #3
    teq     r9, r8, LSL #4
    teq     r10, r9, LSL #1
    teq     r11, r10, LSL #2
    teq     r12, r11, LSL #3
    teq     r1, r12, LSL #4

    // loop 3
    teq     r2, r1, LSL #1
    teq     r3, r2, LSL #2
    teq     r4, r3, LSL #3
    teq     r5, r4, LSL #4
    teq     r6, r5, LSL #1
    teq     r7, r6, LSL #2
    teq     r8, r7, LSL #3
    teq     r9, r8, LSL #4
    teq     r10, r9, LSL #1
    teq     r11, r10, LSL #2
    teq     r12, r11, LSL #3
    teq     r1, r12, LSL #4

    // loop 4
    teq     r2, r1, LSL #1
    teq     r3, r2, LSL #2
    teq     r4, r3, LSL #3
    teq     r5, r4, LSL #4
    teq     r6, r5, LSL #1
    teq     r7, r6, LSL #2
    teq     r8, r7, LSL #3
    teq     r9, r8, LSL #4
    teq     r10, r9, LSL #1
    teq     r11, r10, LSL #2
    teq     r12, r11, LSL #3
    teq     r1, r12, LSL #4

    // loop 5
    teq     r2, r1, LSL #1
    teq     r3, r2, LSL #2
    teq     r4, r3, LSL #3
    teq     r5, r4, LSL #4
    teq     r6, r5, LSL #1
    teq     r7, r6, LSL #2
    teq     r8, r7, LSL #3
    teq     r9, r8, LSL #4
    teq     r10, r9, LSL #1
    teq     r11, r10, LSL #2
    teq     r12, r11, LSL #3
    teq     r1, r12, LSL #4

    subs    r0, r0, #1
    bne     teqRegMinTest_LOOP
    pop     {r4-r11, pc}

_teqRegMaxTest:

    push    {r4-r11, lr}

teqRegMaxTest_LOOP:

    // loop 1
    teq     r1, r0
    teq     r2, r0
    teq     r3, r0
    teq     r4, r0
    teq     r5, r0
    teq     r6, r0
    teq     r7, r0
    teq     r8, r0
    teq     r9, r0
    teq     r10, r0
    teq     r11, r0
    teq     r12, r0

    // loop 2
    teq     r1, r0
    teq     r2, r0
    teq     r3, r0
    teq     r4, r0
    teq     r5, r0
    teq     r6, r0
    teq     r7, r0
    teq     r8, r0
    teq     r9, r0
    teq     r10, r0
    teq     r11, r0
    teq     r12, r0

    // loop 3
    teq     r1, r0
    teq     r2, r0
    teq     r3, r0
    teq     r4, r0
    teq     r5, r0
    teq     r6, r0
    teq     r7, r0
    teq     r8, r0
    teq     r9, r0
    teq     r10, r0
    teq     r11, r0
    teq     r12, r0

    // loop 4
    teq     r1, r0
    teq     r2, r0
    teq     r3, r0
    teq     r4, r0
    teq     r5, r0
    teq     r6, r0
    teq     r7, r0
    teq     r8, r0
    teq     r9, r0
    teq     r10, r0
    teq     r11, r0
    teq     r12, r0

    // loop 5
    teq     r1, r0
    teq     r2, r0
    teq     r3, r0
    teq     r4, r0
    teq     r5, r0
    teq     r6, r0
    teq     r7, r0
    teq     r8, r0
    teq     r9, r0
    teq     r10, r0
    teq     r11, r0
    teq     r12, r0

    subs    r0, r0, #1
    bne     teqRegMaxTest_LOOP
    pop     {r4-r11, pc}

_teqShftMinTest:

    push    {r4-r11, lr}

teqShftMinTest_LOOP:

    // loop 1
    teq     r2, r1, ROR r1
    teq     r3, r2, ROR r2
    teq     r4, r3, ROR r3
    teq     r5, r4, ROR r4
    teq     r6, r5, ROR r5
    teq     r7, r6, ROR r6
    teq     r8, r7, ROR r7
    teq     r9, r8, ROR r8
    teq     r10, r9, ROR r9
    teq     r11, r10, ROR r10
    teq     r12, r11, ROR r11
    teq     r1, r12, ROR r12

    // loop 2
    teq     r2, r1, ROR r1
    teq     r3, r2, ROR r2
    teq     r4, r3, ROR r3
    teq     r5, r4, ROR r4
    teq     r6, r5, ROR r5
    teq     r7, r6, ROR r6
    teq     r8, r7, ROR r7
    teq     r9, r8, ROR r8
    teq     r10, r9, ROR r9
    teq     r11, r10, ROR r10
    teq     r12, r11, ROR r11
    teq     r1, r12, ROR r12

    // loop 3
    teq     r2, r1, ROR r1
    teq     r3, r2, ROR r2
    teq     r4, r3, ROR r3
    teq     r5, r4, ROR r4
    teq     r6, r5, ROR r5
    teq     r7, r6, ROR r6
    teq     r8, r7, ROR r7
    teq     r9, r8, ROR r8
    teq     r10, r9, ROR r9
    teq     r11, r10, ROR r10
    teq     r12, r11, ROR r11
    teq     r1, r12, ROR r12

    // loop 4
    teq     r2, r1, ROR r1
    teq     r3, r2, ROR r2
    teq     r4, r3, ROR r3
    teq     r5, r4, ROR r4
    teq     r6, r5, ROR r5
    teq     r7, r6, ROR r6
    teq     r8, r7, ROR r7
    teq     r9, r8, ROR r8
    teq     r10, r9, ROR r9
    teq     r11, r10, ROR r10
    teq     r12, r11, ROR r11
    teq     r1, r12, ROR r12

    // loop 5
    teq     r2, r1, ROR r1
    teq     r3, r2, ROR r2
    teq     r4, r3, ROR r3
    teq     r5, r4, ROR r4
    teq     r6, r5, ROR r5
    teq     r7, r6, ROR r6
    teq     r8, r7, ROR r7
    teq     r9, r8, ROR r8
    teq     r10, r9, ROR r9
    teq     r11, r10, ROR r10
    teq     r12, r11, ROR r11
    teq     r1, r12, ROR r12

    subs    r0, r0, #1
    bne     teqShftMinTest_LOOP
    pop     {r4-r11, pc}

_teqShftMaxTest:

    push    {r4-r11, lr}

teqShftMaxTest_LOOP:

    // loop 1
    teq     r1, r0, ROR r0
    teq     r2, r0, ROR r0
    teq     r3, r0, ROR r0
    teq     r4, r0, ROR r0
    teq     r5, r0, ROR r0
    teq     r6, r0, ROR r0
    teq     r7, r0, ROR r0
    teq     r8, r0, ROR r0
    teq     r9, r0, ROR r0
    teq     r10, r0, ROR r0
    teq     r11, r0, ROR r0
    teq     r12, r0, ROR r0

    // loop 2
    teq     r1, r0, ROR r0
    teq     r2, r0, ROR r0
    teq     r3, r0, ROR r0
    teq     r4, r0, ROR r0
    teq     r5, r0, ROR r0
    teq     r6, r0, ROR r0
    teq     r7, r0, ROR r0
    teq     r8, r0, ROR r0
    teq     r9, r0, ROR r0
    teq     r10, r0, ROR r0
    teq     r11, r0, ROR r0
    teq     r12, r0, ROR r0

    // loop 3
    teq     r1, r0, ROR r0
    teq     r2, r0, ROR r0
    teq     r3, r0, ROR r0
    teq     r4, r0, ROR r0
    teq     r5, r0, ROR r0
    teq     r6, r0, ROR r0
    teq     r7, r0, ROR r0
    teq     r8, r0, ROR r0
    teq     r9, r0, ROR r0
    teq     r10, r0, ROR r0
    teq     r11, r0, ROR r0
    teq     r12, r0, ROR r0

    // loop 4
    teq     r1, r0, ROR r0
    teq     r2, r0, ROR r0
    teq     r3, r0, ROR r0
    teq     r4, r0, ROR r0
    teq     r5, r0, ROR r0
    teq     r6, r0, ROR r0
    teq     r7, r0, ROR r0
    teq     r8, r0, ROR r0
    teq     r9, r0, ROR r0
    teq     r10, r0, ROR r0
    teq     r11, r0, ROR r0
    teq     r12, r0, ROR r0

    // loop 5
    teq     r1, r0, ROR r0
    teq     r2, r0, ROR r0
    teq     r3, r0, ROR r0
    teq     r4, r0, ROR r0
    teq     r5, r0, ROR r0
    teq     r6, r0, ROR r0
    teq     r7, r0, ROR r0
    teq     r8, r0, ROR r0
    teq     r9, r0, ROR r0
    teq     r10, r0, ROR r0
    teq     r11, r0, ROR r0
    teq     r12, r0, ROR r0

    subs    r0, r0, #1
    bne     teqShftMaxTest_LOOP
    pop     {r4-r11, pc}


_tstImmMaxTest:

    push    {r4-r11, lr}

tstImmMaxTest_LOOP:

    // loop 1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1

    // loop 2
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1

    // loop 3
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1

    // loop 4
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1

    // loop 5
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1
    tst     r1, #1

    subs    r0, r0, #1
    bne     tstImmMaxTest_LOOP
    pop     {r4-r11, pc}

_tstImmMinTest:

    push    {r4-r11, lr}

tstImmMinTest_LOOP:

    // loop 1
    tst     r1, #1
    tst     r2, #2
    tst     r3, #3
    tst     r4, #4
    tst     r5, #5
    tst     r6, #6
    tst     r7, #7
    tst     r8, #8
    tst     r9, #9
    tst     r10, #10
    tst     r11, #11
    tst     r12, #12

    // loop 2
    tst     r1, #1
    tst     r2, #2
    tst     r3, #3
    tst     r4, #4
    tst     r5, #5
    tst     r6, #6
    tst     r7, #7
    tst     r8, #8
    tst     r9, #9
    tst     r10, #10
    tst     r11, #11
    tst     r12, #12

    // loop 3
    tst     r1, #1
    tst     r2, #2
    tst     r3, #3
    tst     r4, #4
    tst     r5, #5
    tst     r6, #6
    tst     r7, #7
    tst     r8, #8
    tst     r9, #9
    tst     r10, #10
    tst     r11, #11
    tst     r12, #12

    // loop 4
    tst     r1, #1
    tst     r2, #2
    tst     r3, #3
    tst     r4, #4
    tst     r5, #5
    tst     r6, #6
    tst     r7, #7
    tst     r8, #8
    tst     r9, #9
    tst     r10, #10
    tst     r11, #11
    tst     r12, #12

    // loop 5
    tst     r1, #1
    tst     r2, #2
    tst     r3, #3
    tst     r4, #4
    tst     r5, #5
    tst     r6, #6
    tst     r7, #7
    tst     r8, #8
    tst     r9, #9
    tst     r10, #10
    tst     r11, #11
    tst     r12, #12

    subs    r0, r0, #1
    bne     tstImmMinTest_LOOP
    pop     {r4-r11, pc}

_tstRegMinTest:

    push    {r4-r11, lr}

tstRegMinTest_LOOP:

    // loop 1
    tst     r2, r1, LSL #1
    tst     r3, r2, LSL #2
    tst     r4, r3, LSL #3
    tst     r5, r4, LSL #4
    tst     r6, r5, LSL #5
    tst     r7, r6, LSL #6
    tst     r8, r7, LSL #7
    tst     r9, r8, LSL #8
    tst     r10, r9, LSL #9
    tst     r11, r10, LSL #10
    tst     r12, r11, LSL #11
    tst     r1, r12, LSL #12

    // loop 2
    tst     r2, r1, LSL #1
    tst     r3, r2, LSL #2
    tst     r4, r3, LSL #3
    tst     r5, r4, LSL #4
    tst     r6, r5, LSL #5
    tst     r7, r6, LSL #6
    tst     r8, r7, LSL #7
    tst     r9, r8, LSL #8
    tst     r10, r9, LSL #9
    tst     r11, r10, LSL #10
    tst     r12, r11, LSL #11
    tst     r1, r12, LSL #12

    // loop 3
    tst     r2, r1, LSL #1
    tst     r3, r2, LSL #2
    tst     r4, r3, LSL #3
    tst     r5, r4, LSL #4
    tst     r6, r5, LSL #5
    tst     r7, r6, LSL #6
    tst     r8, r7, LSL #7
    tst     r9, r8, LSL #8
    tst     r10, r9, LSL #9
    tst     r11, r10, LSL #10
    tst     r12, r11, LSL #11
    tst     r1, r12, LSL #12

    // loop 4
    tst     r2, r1, LSL #1
    tst     r3, r2, LSL #2
    tst     r4, r3, LSL #3
    tst     r5, r4, LSL #4
    tst     r6, r5, LSL #5
    tst     r7, r6, LSL #6
    tst     r8, r7, LSL #7
    tst     r9, r8, LSL #8
    tst     r10, r9, LSL #9
    tst     r11, r10, LSL #10
    tst     r12, r11, LSL #11
    tst     r1, r12, LSL #12

    // loop 5
    tst     r2, r1, LSL #1
    tst     r3, r2, LSL #2
    tst     r4, r3, LSL #3
    tst     r5, r4, LSL #4
    tst     r6, r5, LSL #5
    tst     r7, r6, LSL #6
    tst     r8, r7, LSL #7
    tst     r9, r8, LSL #8
    tst     r10, r9, LSL #9
    tst     r11, r10, LSL #10
    tst     r12, r11, LSL #11
    tst     r1, r12, LSL #12

    subs    r0, r0, #1
    bne     tstRegMinTest_LOOP
    pop     {r4-r11, pc}

_tstRegMaxTest:

    push    {r4-r11, lr}

tstRegMaxTest_LOOP:

    // loop 1
    tst     r1, r0
    tst     r2, r0
    tst     r3, r0
    tst     r4, r0
    tst     r5, r0
    tst     r6, r0
    tst     r7, r0
    tst     r8, r0
    tst     r9, r0
    tst     r10, r0
    tst     r11, r0
    tst     r12, r0

    // loop 2
    tst     r1, r0
    tst     r2, r0
    tst     r3, r0
    tst     r4, r0
    tst     r5, r0
    tst     r6, r0
    tst     r7, r0
    tst     r8, r0
    tst     r9, r0
    tst     r10, r0
    tst     r11, r0
    tst     r12, r0

    // loop 3
    tst     r1, r0
    tst     r2, r0
    tst     r3, r0
    tst     r4, r0
    tst     r5, r0
    tst     r6, r0
    tst     r7, r0
    tst     r8, r0
    tst     r9, r0
    tst     r10, r0
    tst     r11, r0
    tst     r12, r0

    // loop 4
    tst     r1, r0
    tst     r2, r0
    tst     r3, r0
    tst     r4, r0
    tst     r5, r0
    tst     r6, r0
    tst     r7, r0
    tst     r8, r0
    tst     r9, r0
    tst     r10, r0
    tst     r11, r0
    tst     r12, r0

    // loop 5
    tst     r1, r0
    tst     r2, r0
    tst     r3, r0
    tst     r4, r0
    tst     r5, r0
    tst     r6, r0
    tst     r7, r0
    tst     r8, r0
    tst     r9, r0
    tst     r10, r0
    tst     r11, r0
    tst     r12, r0

    subs    r0, r0, #1
    bne     tstRegMaxTest_LOOP
    pop     {r4-r11, pc}

_tstShftMinTest:

    push    {r4-r11, lr}

tstShftMinTest_LOOP:

    // loop 1
    tst     r2, r1, ROR r1
    tst     r3, r2, ROR r2
    tst     r4, r3, ROR r3
    tst     r5, r4, ROR r4
    tst     r6, r5, ROR r5
    tst     r7, r6, ROR r6
    tst     r8, r7, ROR r7
    tst     r9, r8, ROR r8
    tst     r10, r9, ROR r9
    tst     r11, r10, ROR r10
    tst     r12, r11, ROR r11
    tst     r1, r12, ROR r12

    // loop 2
    tst     r2, r1, ROR r1
    tst     r3, r2, ROR r2
    tst     r4, r3, ROR r3
    tst     r5, r4, ROR r4
    tst     r6, r5, ROR r5
    tst     r7, r6, ROR r6
    tst     r8, r7, ROR r7
    tst     r9, r8, ROR r8
    tst     r10, r9, ROR r9
    tst     r11, r10, ROR r10
    tst     r12, r11, ROR r11
    tst     r1, r12, ROR r12

    // loop 3
    tst     r2, r1, ROR r1
    tst     r3, r2, ROR r2
    tst     r4, r3, ROR r3
    tst     r5, r4, ROR r4
    tst     r6, r5, ROR r5
    tst     r7, r6, ROR r6
    tst     r8, r7, ROR r7
    tst     r9, r8, ROR r8
    tst     r10, r9, ROR r9
    tst     r11, r10, ROR r10
    tst     r12, r11, ROR r11
    tst     r1, r12, ROR r12

    // loop 4
    tst     r2, r1, ROR r1
    tst     r3, r2, ROR r2
    tst     r4, r3, ROR r3
    tst     r5, r4, ROR r4
    tst     r6, r5, ROR r5
    tst     r7, r6, ROR r6
    tst     r8, r7, ROR r7
    tst     r9, r8, ROR r8
    tst     r10, r9, ROR r9
    tst     r11, r10, ROR r10
    tst     r12, r11, ROR r11
    tst     r1, r12, ROR r12

    // loop 5
    tst     r2, r1, ROR r1
    tst     r3, r2, ROR r2
    tst     r4, r3, ROR r3
    tst     r5, r4, ROR r4
    tst     r6, r5, ROR r5
    tst     r7, r6, ROR r6
    tst     r8, r7, ROR r7
    tst     r9, r8, ROR r8
    tst     r10, r9, ROR r9
    tst     r11, r10, ROR r10
    tst     r12, r11, ROR r11
    tst     r1, r12, ROR r12

    subs    r0, r0, #1
    bne     tstShftMinTest_LOOP
    pop     {r4-r11, pc}

_tstShftMaxTest:

    push    {r4-r11, lr}

tstShftMaxTest_LOOP:

    // loop 1
    tst     r1, r0, ROR r0
    tst     r2, r0, ROR r0
    tst     r3, r0, ROR r0
    tst     r4, r0, ROR r0
    tst     r5, r0, ROR r0
    tst     r6, r0, ROR r0
    tst     r7, r0, ROR r0
    tst     r8, r0, ROR r0
    tst     r9, r0, ROR r0
    tst     r10, r0, ROR r0
    tst     r11, r0, ROR r0
    tst     r12, r0, ROR r0

    // loop 2
    tst     r1, r0, ROR r0
    tst     r2, r0, ROR r0
    tst     r3, r0, ROR r0
    tst     r4, r0, ROR r0
    tst     r5, r0, ROR r0
    tst     r6, r0, ROR r0
    tst     r7, r0, ROR r0
    tst     r8, r0, ROR r0
    tst     r9, r0, ROR r0
    tst     r10, r0, ROR r0
    tst     r11, r0, ROR r0
    tst     r12, r0, ROR r0

    // loop 3
    tst     r1, r0, ROR r0
    tst     r2, r0, ROR r0
    tst     r3, r0, ROR r0
    tst     r4, r0, ROR r0
    tst     r5, r0, ROR r0
    tst     r6, r0, ROR r0
    tst     r7, r0, ROR r0
    tst     r8, r0, ROR r0
    tst     r9, r0, ROR r0
    tst     r10, r0, ROR r0
    tst     r11, r0, ROR r0
    tst     r12, r0, ROR r0

    // loop 4
    tst     r1, r0, ROR r0
    tst     r2, r0, ROR r0
    tst     r3, r0, ROR r0
    tst     r4, r0, ROR r0
    tst     r5, r0, ROR r0
    tst     r6, r0, ROR r0
    tst     r7, r0, ROR r0
    tst     r8, r0, ROR r0
    tst     r9, r0, ROR r0
    tst     r10, r0, ROR r0
    tst     r11, r0, ROR r0
    tst     r12, r0, ROR r0

    // loop 5
    tst     r1, r0, ROR r0
    tst     r2, r0, ROR r0
    tst     r3, r0, ROR r0
    tst     r4, r0, ROR r0
    tst     r5, r0, ROR r0
    tst     r6, r0, ROR r0
    tst     r7, r0, ROR r0
    tst     r8, r0, ROR r0
    tst     r9, r0, ROR r0
    tst     r10, r0, ROR r0
    tst     r11, r0, ROR r0
    tst     r12, r0, ROR r0

    subs    r0, r0, #1
    bne     tstShftMaxTest_LOOP
    pop     {r4-r11, pc}


_uadd16MinTest:

    push    {r4-r11, lr}

uadd16MinTest_LOOP:

    // loop 1
    uadd16  r2, r2, r1
    uadd16  r3, r3, r2
    uadd16  r4, r4, r3
    uadd16  r5, r5, r4
    uadd16  r6, r6, r5
    uadd16  r7, r7, r6
    uadd16  r8, r8, r7
    uadd16  r9, r9, r8
    uadd16  r10, r10, r9
    uadd16  r11, r11, r10
    uadd16  r12, r12, r11
    uadd16  r1, r1, r12

    // loop 2
    uadd16  r2, r2, r1
    uadd16  r3, r3, r2
    uadd16  r4, r4, r3
    uadd16  r5, r5, r4
    uadd16  r6, r6, r5
    uadd16  r7, r7, r6
    uadd16  r8, r8, r7
    uadd16  r9, r9, r8
    uadd16  r10, r10, r9
    uadd16  r11, r11, r10
    uadd16  r12, r12, r11
    uadd16  r1, r1, r12

    // loop 3
    uadd16  r2, r2, r1
    uadd16  r3, r3, r2
    uadd16  r4, r4, r3
    uadd16  r5, r5, r4
    uadd16  r6, r6, r5
    uadd16  r7, r7, r6
    uadd16  r8, r8, r7
    uadd16  r9, r9, r8
    uadd16  r10, r10, r9
    uadd16  r11, r11, r10
    uadd16  r12, r12, r11
    uadd16  r1, r1, r12

    // loop 4
    uadd16  r2, r2, r1
    uadd16  r3, r3, r2
    uadd16  r4, r4, r3
    uadd16  r5, r5, r4
    uadd16  r6, r6, r5
    uadd16  r7, r7, r6
    uadd16  r8, r8, r7
    uadd16  r9, r9, r8
    uadd16  r10, r10, r9
    uadd16  r11, r11, r10
    uadd16  r12, r12, r11
    uadd16  r1, r1, r12

    // loop 5
    uadd16  r2, r2, r1
    uadd16  r3, r3, r2
    uadd16  r4, r4, r3
    uadd16  r5, r5, r4
    uadd16  r6, r6, r5
    uadd16  r7, r7, r6
    uadd16  r8, r8, r7
    uadd16  r9, r9, r8
    uadd16  r10, r10, r9
    uadd16  r11, r11, r10
    uadd16  r12, r12, r11
    uadd16  r1, r1, r12

    subs    r0, r0, #1
    bne     uadd16MinTest_LOOP
    pop     {r4-r11, pc}

_uadd16MaxTest:

    push    {r4-r11, lr}

uadd16MaxTest_LOOP:

    // loop 1
    uadd16  r1, r0, r0
    uadd16  r2, r0, r0
    uadd16  r3, r0, r0
    uadd16  r4, r0, r0
    uadd16  r5, r0, r0
    uadd16  r6, r0, r0
    uadd16  r7, r0, r0
    uadd16  r8, r0, r0
    uadd16  r9, r0, r0
    uadd16  r10, r0, r0
    uadd16  r11, r0, r0
    uadd16  r12, r0, r0

    // loop 2
    uadd16  r1, r0, r0
    uadd16  r2, r0, r0
    uadd16  r3, r0, r0
    uadd16  r4, r0, r0
    uadd16  r5, r0, r0
    uadd16  r6, r0, r0
    uadd16  r7, r0, r0
    uadd16  r8, r0, r0
    uadd16  r9, r0, r0
    uadd16  r10, r0, r0
    uadd16  r11, r0, r0
    uadd16  r12, r0, r0

    // loop 3
    uadd16  r1, r0, r0
    uadd16  r2, r0, r0
    uadd16  r3, r0, r0
    uadd16  r4, r0, r0
    uadd16  r5, r0, r0
    uadd16  r6, r0, r0
    uadd16  r7, r0, r0
    uadd16  r8, r0, r0
    uadd16  r9, r0, r0
    uadd16  r10, r0, r0
    uadd16  r11, r0, r0
    uadd16  r12, r0, r0

    // loop 4
    uadd16  r1, r0, r0
    uadd16  r2, r0, r0
    uadd16  r3, r0, r0
    uadd16  r4, r0, r0
    uadd16  r5, r0, r0
    uadd16  r6, r0, r0
    uadd16  r7, r0, r0
    uadd16  r8, r0, r0
    uadd16  r9, r0, r0
    uadd16  r10, r0, r0
    uadd16  r11, r0, r0
    uadd16  r12, r0, r0

    // loop 5
    uadd16  r1, r0, r0
    uadd16  r2, r0, r0
    uadd16  r3, r0, r0
    uadd16  r4, r0, r0
    uadd16  r5, r0, r0
    uadd16  r6, r0, r0
    uadd16  r7, r0, r0
    uadd16  r8, r0, r0
    uadd16  r9, r0, r0
    uadd16  r10, r0, r0
    uadd16  r11, r0, r0
    uadd16  r12, r0, r0

    subs    r0, r0, #1
    bne     uadd16MaxTest_LOOP
    pop     {r4-r11, pc}


_uadd8MinTest:

    push    {r4-r11, lr}

uadd8MinTest_LOOP:

    // loop 1
    uadd8   r2, r2, r1
    uadd8   r3, r3, r2
    uadd8   r4, r4, r3
    uadd8   r5, r5, r4
    uadd8   r6, r6, r5
    uadd8   r7, r7, r6
    uadd8   r8, r8, r7
    uadd8   r9, r9, r8
    uadd8   r10, r10, r9
    uadd8   r11, r11, r10
    uadd8   r12, r12, r11
    uadd8   r1, r1, r12

    // loop 2
    uadd8   r2, r2, r1
    uadd8   r3, r3, r2
    uadd8   r4, r4, r3
    uadd8   r5, r5, r4
    uadd8   r6, r6, r5
    uadd8   r7, r7, r6
    uadd8   r8, r8, r7
    uadd8   r9, r9, r8
    uadd8   r10, r10, r9
    uadd8   r11, r11, r10
    uadd8   r12, r12, r11
    uadd8   r1, r1, r12

    // loop 3
    uadd8   r2, r2, r1
    uadd8   r3, r3, r2
    uadd8   r4, r4, r3
    uadd8   r5, r5, r4
    uadd8   r6, r6, r5
    uadd8   r7, r7, r6
    uadd8   r8, r8, r7
    uadd8   r9, r9, r8
    uadd8   r10, r10, r9
    uadd8   r11, r11, r10
    uadd8   r12, r12, r11
    uadd8   r1, r1, r12

    // loop 4
    uadd8   r2, r2, r1
    uadd8   r3, r3, r2
    uadd8   r4, r4, r3
    uadd8   r5, r5, r4
    uadd8   r6, r6, r5
    uadd8   r7, r7, r6
    uadd8   r8, r8, r7
    uadd8   r9, r9, r8
    uadd8   r10, r10, r9
    uadd8   r11, r11, r10
    uadd8   r12, r12, r11
    uadd8   r1, r1, r12

    // loop 5
    uadd8   r2, r2, r1
    uadd8   r3, r3, r2
    uadd8   r4, r4, r3
    uadd8   r5, r5, r4
    uadd8   r6, r6, r5
    uadd8   r7, r7, r6
    uadd8   r8, r8, r7
    uadd8   r9, r9, r8
    uadd8   r10, r10, r9
    uadd8   r11, r11, r10
    uadd8   r12, r12, r11
    uadd8   r1, r1, r12

    subs    r0, r0, #1
    bne     uadd8MinTest_LOOP
    pop     {r4-r11, pc}

_uadd8MaxTest:

    push    {r4-r11, lr}

uadd8MaxTest_LOOP:

    // loop 1
    uadd8   r1, r0, r0
    uadd8   r2, r0, r0
    uadd8   r3, r0, r0
    uadd8   r4, r0, r0
    uadd8   r5, r0, r0
    uadd8   r6, r0, r0
    uadd8   r7, r0, r0
    uadd8   r8, r0, r0
    uadd8   r9, r0, r0
    uadd8   r10, r0, r0
    uadd8   r11, r0, r0
    uadd8   r12, r0, r0

    // loop 2
    uadd8   r1, r0, r0
    uadd8   r2, r0, r0
    uadd8   r3, r0, r0
    uadd8   r4, r0, r0
    uadd8   r5, r0, r0
    uadd8   r6, r0, r0
    uadd8   r7, r0, r0
    uadd8   r8, r0, r0
    uadd8   r9, r0, r0
    uadd8   r10, r0, r0
    uadd8   r11, r0, r0
    uadd8   r12, r0, r0

    // loop 3
    uadd8   r1, r0, r0
    uadd8   r2, r0, r0
    uadd8   r3, r0, r0
    uadd8   r4, r0, r0
    uadd8   r5, r0, r0
    uadd8   r6, r0, r0
    uadd8   r7, r0, r0
    uadd8   r8, r0, r0
    uadd8   r9, r0, r0
    uadd8   r10, r0, r0
    uadd8   r11, r0, r0
    uadd8   r12, r0, r0

    // loop 4
    uadd8   r1, r0, r0
    uadd8   r2, r0, r0
    uadd8   r3, r0, r0
    uadd8   r4, r0, r0
    uadd8   r5, r0, r0
    uadd8   r6, r0, r0
    uadd8   r7, r0, r0
    uadd8   r8, r0, r0
    uadd8   r9, r0, r0
    uadd8   r10, r0, r0
    uadd8   r11, r0, r0
    uadd8   r12, r0, r0

    // loop 5
    uadd8   r1, r0, r0
    uadd8   r2, r0, r0
    uadd8   r3, r0, r0
    uadd8   r4, r0, r0
    uadd8   r5, r0, r0
    uadd8   r6, r0, r0
    uadd8   r7, r0, r0
    uadd8   r8, r0, r0
    uadd8   r9, r0, r0
    uadd8   r10, r0, r0
    uadd8   r11, r0, r0
    uadd8   r12, r0, r0

    subs    r0, r0, #1
    bne     uadd8MaxTest_LOOP
    pop     {r4-r11, pc}


_uasxMinTest:

    push        {r4-r11, lr}

uasxMinTest_LOOP:

    // loop 1
    uaddsubx    r2, r2, r1
    uaddsubx    r3, r3, r2
    uaddsubx    r4, r4, r3
    uaddsubx    r5, r5, r4
    uaddsubx    r6, r6, r5
    uaddsubx    r7, r7, r6
    uaddsubx    r8, r8, r9
    uasx        r9, r9, r8
    uasx        r10, r10, r9
    uasx        r11, r11, r10
    uasx        r12, r12, r11
    uasx        r1, r1, r12

    // loop 2
    uaddsubx    r2, r2, r1
    uaddsubx    r3, r3, r2
    uaddsubx    r4, r4, r3
    uaddsubx    r5, r5, r4
    uaddsubx    r6, r6, r5
    uaddsubx    r7, r7, r6
    uaddsubx    r8, r8, r9
    uasx        r9, r9, r8
    uasx        r10, r10, r9
    uasx        r11, r11, r10
    uasx        r12, r12, r11
    uasx        r1, r1, r12

    // loop 3
    uaddsubx    r2, r2, r1
    uaddsubx    r3, r3, r2
    uaddsubx    r4, r4, r3
    uaddsubx    r5, r5, r4
    uaddsubx    r6, r6, r5
    uaddsubx    r7, r7, r6
    uaddsubx    r8, r8, r9
    uasx        r9, r9, r8
    uasx        r10, r10, r9
    uasx        r11, r11, r10
    uasx        r12, r12, r11
    uasx        r1, r1, r12

    // loop 4
    uaddsubx    r2, r2, r1
    uaddsubx    r3, r3, r2
    uaddsubx    r4, r4, r3
    uaddsubx    r5, r5, r4
    uaddsubx    r6, r6, r5
    uaddsubx    r7, r7, r6
    uaddsubx    r8, r8, r9
    uasx        r9, r9, r8
    uasx        r10, r10, r9
    uasx        r11, r11, r10
    uasx        r12, r12, r11
    uasx        r1, r1, r12

    // loop 5
    uaddsubx    r2, r2, r1
    uaddsubx    r3, r3, r2
    uaddsubx    r4, r4, r3
    uaddsubx    r5, r5, r4
    uaddsubx    r6, r6, r5
    uaddsubx    r7, r7, r6
    uaddsubx    r8, r8, r9
    uasx        r9, r9, r8
    uasx        r10, r10, r9
    uasx        r11, r11, r10
    uasx        r12, r12, r11
    uasx        r1, r1, r12

    subs    r0, r0, #1
    bne     uasxMinTest_LOOP
    pop         {r4-r11, pc}

_uasxMaxTest:

    push        {r4-r11, lr}

uasxMaxTest_LOOP:

    // loop 1
    uaddsubx    r1, r0, r0
    uaddsubx    r2, r0, r0
    uaddsubx    r3, r0, r0
    uaddsubx    r4, r0, r0
    uaddsubx    r5, r0, r0
    uaddsubx    r6, r0, r0
    uaddsubx    r7, r0, r0
    uaddsubx    r8, r0, r0
    uasx        r9, r0, r0
    uasx        r10, r0, r0
    uasx        r11, r0, r0
    uasx        r12, r0, r0

    // loop 2
    uaddsubx    r1, r0, r0
    uaddsubx    r2, r0, r0
    uaddsubx    r3, r0, r0
    uaddsubx    r4, r0, r0
    uaddsubx    r5, r0, r0
    uaddsubx    r6, r0, r0
    uaddsubx    r7, r0, r0
    uaddsubx    r8, r0, r0
    uasx        r9, r0, r0
    uasx        r10, r0, r0
    uasx        r11, r0, r0
    uasx        r12, r0, r0

    // loop 3
    uaddsubx    r1, r0, r0
    uaddsubx    r2, r0, r0
    uaddsubx    r3, r0, r0
    uaddsubx    r4, r0, r0
    uaddsubx    r5, r0, r0
    uaddsubx    r6, r0, r0
    uaddsubx    r7, r0, r0
    uaddsubx    r8, r0, r0
    uasx        r9, r0, r0
    uasx        r10, r0, r0
    uasx        r11, r0, r0
    uasx        r12, r0, r0

    // loop 4
    uaddsubx    r1, r0, r0
    uaddsubx    r2, r0, r0
    uaddsubx    r3, r0, r0
    uaddsubx    r4, r0, r0
    uaddsubx    r5, r0, r0
    uaddsubx    r6, r0, r0
    uaddsubx    r7, r0, r0
    uaddsubx    r8, r0, r0
    uasx        r9, r0, r0
    uasx        r10, r0, r0
    uasx        r11, r0, r0
    uasx        r12, r0, r0

    // loop 5
    uaddsubx    r1, r0, r0
    uaddsubx    r2, r0, r0
    uaddsubx    r3, r0, r0
    uaddsubx    r4, r0, r0
    uaddsubx    r5, r0, r0
    uaddsubx    r6, r0, r0
    uaddsubx    r7, r0, r0
    uaddsubx    r8, r0, r0
    uasx        r9, r0, r0
    uasx        r10, r0, r0
    uasx        r11, r0, r0
    uasx        r12, r0, r0

    subs    r0, r0, #1
    bne     uasxMaxTest_LOOP
    pop     {r4-r11, pc}


_ubfxMinTest:

    push    {r4-r11, lr}

ubfxMinTest_LOOP:

    // loop 1
    ubfx    r2, r1, #0, #1
    ubfx    r3, r2, #1, #2
    ubfx    r4, r3, #2, #3
    ubfx    r5, r4, #3, #4
    ubfx    r6, r5, #0, #1
    ubfx    r7, r6, #1, #2
    ubfx    r8, r7, #2, #3
    ubfx    r9, r8, #3, #4
    ubfx    r10, r9, #0, #1
    ubfx    r11, r10, #1, #2
    ubfx    r12, r11, #2, #3
    ubfx    r1, r12, #3, #4

    // loop 2
    ubfx    r2, r1, #0, #1
    ubfx    r3, r2, #1, #2
    ubfx    r4, r3, #2, #3
    ubfx    r5, r4, #3, #4
    ubfx    r6, r5, #0, #1
    ubfx    r7, r6, #1, #2
    ubfx    r8, r7, #2, #3
    ubfx    r9, r8, #3, #4
    ubfx    r10, r9, #0, #1
    ubfx    r11, r10, #1, #2
    ubfx    r12, r11, #2, #3
    ubfx    r1, r12, #3, #4

    // loop 3
    ubfx    r2, r1, #0, #1
    ubfx    r3, r2, #1, #2
    ubfx    r4, r3, #2, #3
    ubfx    r5, r4, #3, #4
    ubfx    r6, r5, #0, #1
    ubfx    r7, r6, #1, #2
    ubfx    r8, r7, #2, #3
    ubfx    r9, r8, #3, #4
    ubfx    r10, r9, #0, #1
    ubfx    r11, r10, #1, #2
    ubfx    r12, r11, #2, #3
    ubfx    r1, r12, #3, #4

    // loop 4
    ubfx    r2, r1, #0, #1
    ubfx    r3, r2, #1, #2
    ubfx    r4, r3, #2, #3
    ubfx    r5, r4, #3, #4
    ubfx    r6, r5, #0, #1
    ubfx    r7, r6, #1, #2
    ubfx    r8, r7, #2, #3
    ubfx    r9, r8, #3, #4
    ubfx    r10, r9, #0, #1
    ubfx    r11, r10, #1, #2
    ubfx    r12, r11, #2, #3
    ubfx    r1, r12, #3, #4

    // loop 5
    ubfx    r2, r1, #0, #1
    ubfx    r3, r2, #1, #2
    ubfx    r4, r3, #2, #3
    ubfx    r5, r4, #3, #4
    ubfx    r6, r5, #0, #1
    ubfx    r7, r6, #1, #2
    ubfx    r8, r7, #2, #3
    ubfx    r9, r8, #3, #4
    ubfx    r10, r9, #0, #1
    ubfx    r11, r10, #1, #2
    ubfx    r12, r11, #2, #3
    ubfx    r1, r12, #3, #4

    subs    r0, r0, #1
    bne     ubfxMinTest_LOOP
    pop     {r4-r11, pc}

_ubfxMaxTest:

    push    {r4-r11, lr}

ubfxMaxTest_LOOP:

    // loop 1
    ubfx    r1, r0, #0, #1
    ubfx    r2, r0, #1, #2
    ubfx    r3, r0, #2, #3
    ubfx    r4, r0, #3, #4
    ubfx    r5, r0, #4, #5
    ubfx    r6, r0, #5, #6
    ubfx    r7, r0, #6, #7
    ubfx    r8, r0, #7, #8
    ubfx    r9, r0, #0, #1
    ubfx    r10, r0, #1, #2
    ubfx    r11, r0, #2, #3
    ubfx    r12, r0, #3, #4

    // loop 2
    ubfx    r1, r0, #0, #1
    ubfx    r2, r0, #1, #2
    ubfx    r3, r0, #2, #3
    ubfx    r4, r0, #3, #4
    ubfx    r5, r0, #4, #5
    ubfx    r6, r0, #5, #6
    ubfx    r7, r0, #6, #7
    ubfx    r8, r0, #7, #8
    ubfx    r9, r0, #0, #1
    ubfx    r10, r0, #1, #2
    ubfx    r11, r0, #2, #3
    ubfx    r12, r0, #3, #4

    // loop 3
    ubfx    r1, r0, #0, #1
    ubfx    r2, r0, #1, #2
    ubfx    r3, r0, #2, #3
    ubfx    r4, r0, #3, #4
    ubfx    r5, r0, #4, #5
    ubfx    r6, r0, #5, #6
    ubfx    r7, r0, #6, #7
    ubfx    r8, r0, #7, #8
    ubfx    r9, r0, #0, #1
    ubfx    r10, r0, #1, #2
    ubfx    r11, r0, #2, #3
    ubfx    r12, r0, #3, #4

    // loop 4
    ubfx    r1, r0, #0, #1
    ubfx    r2, r0, #1, #2
    ubfx    r3, r0, #2, #3
    ubfx    r4, r0, #3, #4
    ubfx    r5, r0, #4, #5
    ubfx    r6, r0, #5, #6
    ubfx    r7, r0, #6, #7
    ubfx    r8, r0, #7, #8
    ubfx    r9, r0, #0, #1
    ubfx    r10, r0, #1, #2
    ubfx    r11, r0, #2, #3
    ubfx    r12, r0, #3, #4

    // loop 5
    ubfx    r1, r0, #0, #1
    ubfx    r2, r0, #1, #2
    ubfx    r3, r0, #2, #3
    ubfx    r4, r0, #3, #4
    ubfx    r5, r0, #4, #5
    ubfx    r6, r0, #5, #6
    ubfx    r7, r0, #6, #7
    ubfx    r8, r0, #7, #8
    ubfx    r9, r0, #0, #1
    ubfx    r10, r0, #1, #2
    ubfx    r11, r0, #2, #3
    ubfx    r12, r0, #3, #4

    subs    r0, r0, #1
    bne     ubfxMaxTest_LOOP
    pop     {r4-r11, pc}


_uhadd16MinTest:

    push        {r4-r11, lr}

uhadd16MinTest_LOOP:

    // loop 1
    uhadd16     r2, r2, r1
    uhadd16     r3, r3, r2
    uhadd16     r4, r4, r3
    uhadd16     r5, r5, r4
    uhadd16     r6, r6, r5
    uhadd16     r7, r7, r6
    uhadd16     r8, r8, r7
    uhadd16     r9, r9, r8
    uhadd16     r10, r10, r9
    uhadd16     r11, r11, r10
    uhadd16     r12, r12, r11
    uhadd16     r1, r1, r12

    // loop 2
    uhadd16     r2, r2, r1
    uhadd16     r3, r3, r2
    uhadd16     r4, r4, r3
    uhadd16     r5, r5, r4
    uhadd16     r6, r6, r5
    uhadd16     r7, r7, r6
    uhadd16     r8, r8, r7
    uhadd16     r9, r9, r8
    uhadd16     r10, r10, r9
    uhadd16     r11, r11, r10
    uhadd16     r12, r12, r11
    uhadd16     r1, r1, r12

    // loop 3
    uhadd16     r2, r2, r1
    uhadd16     r3, r3, r2
    uhadd16     r4, r4, r3
    uhadd16     r5, r5, r4
    uhadd16     r6, r6, r5
    uhadd16     r7, r7, r6
    uhadd16     r8, r8, r7
    uhadd16     r9, r9, r8
    uhadd16     r10, r10, r9
    uhadd16     r11, r11, r10
    uhadd16     r12, r12, r11
    uhadd16     r1, r1, r12

    // loop 4
    uhadd16     r2, r2, r1
    uhadd16     r3, r3, r2
    uhadd16     r4, r4, r3
    uhadd16     r5, r5, r4
    uhadd16     r6, r6, r5
    uhadd16     r7, r7, r6
    uhadd16     r8, r8, r7
    uhadd16     r9, r9, r8
    uhadd16     r10, r10, r9
    uhadd16     r11, r11, r10
    uhadd16     r12, r12, r11
    uhadd16     r1, r1, r12

    // loop 5
    uhadd16     r2, r2, r1
    uhadd16     r3, r3, r2
    uhadd16     r4, r4, r3
    uhadd16     r5, r5, r4
    uhadd16     r6, r6, r5
    uhadd16     r7, r7, r6
    uhadd16     r8, r8, r7
    uhadd16     r9, r9, r8
    uhadd16     r10, r10, r9
    uhadd16     r11, r11, r10
    uhadd16     r12, r12, r11
    uhadd16     r1, r1, r12

    subs    r0, r0, #1
    bne     uhadd16MinTest_LOOP
    pop     {r4-r11, pc}

_uhadd16MaxTest:

    push        {r4-r11, lr}

uhadd16MaxTest_LOOP:

    // loop 1
    uhadd16     r1, r0, r0
    uhadd16     r2, r0, r0
    uhadd16     r3, r0, r0
    uhadd16     r4, r0, r0
    uhadd16     r5, r0, r0
    uhadd16     r6, r0, r0
    uhadd16     r7, r0, r0
    uhadd16     r8, r0, r0
    uhadd16     r9, r0, r0
    uhadd16     r10, r0, r0
    uhadd16     r11, r0, r0
    uhadd16     r12, r0, r0

    // loop 2
    uhadd16     r1, r0, r0
    uhadd16     r2, r0, r0
    uhadd16     r3, r0, r0
    uhadd16     r4, r0, r0
    uhadd16     r5, r0, r0
    uhadd16     r6, r0, r0
    uhadd16     r7, r0, r0
    uhadd16     r8, r0, r0
    uhadd16     r9, r0, r0
    uhadd16     r10, r0, r0
    uhadd16     r11, r0, r0
    uhadd16     r12, r0, r0

    // loop 3
    uhadd16     r1, r0, r0
    uhadd16     r2, r0, r0
    uhadd16     r3, r0, r0
    uhadd16     r4, r0, r0
    uhadd16     r5, r0, r0
    uhadd16     r6, r0, r0
    uhadd16     r7, r0, r0
    uhadd16     r8, r0, r0
    uhadd16     r9, r0, r0
    uhadd16     r10, r0, r0
    uhadd16     r11, r0, r0
    uhadd16     r12, r0, r0

    // loop 4
    uhadd16     r1, r0, r0
    uhadd16     r2, r0, r0
    uhadd16     r3, r0, r0
    uhadd16     r4, r0, r0
    uhadd16     r5, r0, r0
    uhadd16     r6, r0, r0
    uhadd16     r7, r0, r0
    uhadd16     r8, r0, r0
    uhadd16     r9, r0, r0
    uhadd16     r10, r0, r0
    uhadd16     r11, r0, r0
    uhadd16     r12, r0, r0

    // loop 5
    uhadd16     r1, r0, r0
    uhadd16     r2, r0, r0
    uhadd16     r3, r0, r0
    uhadd16     r4, r0, r0
    uhadd16     r5, r0, r0
    uhadd16     r6, r0, r0
    uhadd16     r7, r0, r0
    uhadd16     r8, r0, r0
    uhadd16     r9, r0, r0
    uhadd16     r10, r0, r0
    uhadd16     r11, r0, r0
    uhadd16     r12, r0, r0

    subs    r0, r0, #1
    bne     uhadd16MaxTest_LOOP
    pop     {r4-r11, pc}


_uhadd8MinTest:

    push        {r4-r11, lr}

uhadd8MinTest_LOOP:

    // loop 1
    uhadd8      r2, r2, r1
    uhadd8      r3, r3, r2
    uhadd8      r4, r4, r3
    uhadd8      r5, r5, r4
    uhadd8      r6, r6, r5
    uhadd8      r7, r7, r6
    uhadd8      r8, r8, r7
    uhadd8      r9, r9, r8
    uhadd8      r10, r9, r9
    uhadd8      r11, r10, r10
    uhadd8      r12, r11, r11
    uhadd8      r1, r1, r12

    // loop 2
    uhadd8      r2, r2, r1
    uhadd8      r3, r3, r2
    uhadd8      r4, r4, r3
    uhadd8      r5, r5, r4
    uhadd8      r6, r6, r5
    uhadd8      r7, r7, r6
    uhadd8      r8, r8, r7
    uhadd8      r9, r9, r8
    uhadd8      r10, r9, r9
    uhadd8      r11, r10, r10
    uhadd8      r12, r11, r11
    uhadd8      r1, r1, r12

    // loop 3
    uhadd8      r2, r2, r1
    uhadd8      r3, r3, r2
    uhadd8      r4, r4, r3
    uhadd8      r5, r5, r4
    uhadd8      r6, r6, r5
    uhadd8      r7, r7, r6
    uhadd8      r8, r8, r7
    uhadd8      r9, r9, r8
    uhadd8      r10, r9, r9
    uhadd8      r11, r10, r10
    uhadd8      r12, r11, r11
    uhadd8      r1, r1, r12

    // loop 4
    uhadd8      r2, r2, r1
    uhadd8      r3, r3, r2
    uhadd8      r4, r4, r3
    uhadd8      r5, r5, r4
    uhadd8      r6, r6, r5
    uhadd8      r7, r7, r6
    uhadd8      r8, r8, r7
    uhadd8      r9, r9, r8
    uhadd8      r10, r9, r9
    uhadd8      r11, r10, r10
    uhadd8      r12, r11, r11
    uhadd8      r1, r1, r12

    // loop 5
    uhadd8      r2, r2, r1
    uhadd8      r3, r3, r2
    uhadd8      r4, r4, r3
    uhadd8      r5, r5, r4
    uhadd8      r6, r6, r5
    uhadd8      r7, r7, r6
    uhadd8      r8, r8, r7
    uhadd8      r9, r9, r8
    uhadd8      r10, r9, r9
    uhadd8      r11, r10, r10
    uhadd8      r12, r11, r11
    uhadd8      r1, r1, r12

    subs        r0, r0, #1
    bne         uhadd8MinTest_LOOP
    pop         {r4-r11, pc}

_uhadd8MaxTest:

    push        {r4-r11, lr}

uhadd8MaxTest_LOOP:

    // loop 1
    uhadd8      r1, r0, r0
    uhadd8      r2, r0, r0
    uhadd8      r3, r0, r0
    uhadd8      r4, r0, r0
    uhadd8      r5, r0, r0
    uhadd8      r6, r0, r0
    uhadd8      r7, r0, r0
    uhadd8      r8, r0, r0
    uhadd8      r9, r0, r0
    uhadd8      r10, r0, r0
    uhadd8      r11, r0, r0
    uhadd8      r12, r0, r0

    // loop 2
    uhadd8      r1, r0, r0
    uhadd8      r2, r0, r0
    uhadd8      r3, r0, r0
    uhadd8      r4, r0, r0
    uhadd8      r5, r0, r0
    uhadd8      r6, r0, r0
    uhadd8      r7, r0, r0
    uhadd8      r8, r0, r0
    uhadd8      r9, r0, r0
    uhadd8      r10, r0, r0
    uhadd8      r11, r0, r0
    uhadd8      r12, r0, r0

    // loop 3
    uhadd8      r1, r0, r0
    uhadd8      r2, r0, r0
    uhadd8      r3, r0, r0
    uhadd8      r4, r0, r0
    uhadd8      r5, r0, r0
    uhadd8      r6, r0, r0
    uhadd8      r7, r0, r0
    uhadd8      r8, r0, r0
    uhadd8      r9, r0, r0
    uhadd8      r10, r0, r0
    uhadd8      r11, r0, r0
    uhadd8      r12, r0, r0

    // loop 4
    uhadd8      r1, r0, r0
    uhadd8      r2, r0, r0
    uhadd8      r3, r0, r0
    uhadd8      r4, r0, r0
    uhadd8      r5, r0, r0
    uhadd8      r6, r0, r0
    uhadd8      r7, r0, r0
    uhadd8      r8, r0, r0
    uhadd8      r9, r0, r0
    uhadd8      r10, r0, r0
    uhadd8      r11, r0, r0
    uhadd8      r12, r0, r0

    // loop 5
    uhadd8      r1, r0, r0
    uhadd8      r2, r0, r0
    uhadd8      r3, r0, r0
    uhadd8      r4, r0, r0
    uhadd8      r5, r0, r0
    uhadd8      r6, r0, r0
    uhadd8      r7, r0, r0
    uhadd8      r8, r0, r0
    uhadd8      r9, r0, r0
    uhadd8      r10, r0, r0
    uhadd8      r11, r0, r0
    uhadd8      r12, r0, r0

    subs        r0, r0, #1
    bne         uhadd8MaxTest_LOOP
    pop         {r4-r11, pc}


_umaalMinTest:

    stmdb   sp!, {r4-r11, lr}

umaalMinTest_LOOP:

    // loop 1
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10

    // loop 2
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10

    // loop 3
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10

    // loop 4
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10

    // loop 5
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10
    umaal   r1, r2, r11, r12
    umaal   r3, r4, r1, r2
    umaal   r5, r6, r3, r4
    umaal   r7, r8, r5, r6
    umaal   r9, r10, r7, r8
    umaal   r11, r12, r9, r10

    subs    r0, r0, #1
    bne     umaalMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_umaalMaxTest:

    stmdb   sp!, {r4-r11, lr}

umaalMaxTest_LOOP:

    // loop 1
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0

    // loop 2
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0

    // loop 3
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0

    // loop 4
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0

    // loop 5
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0
    umaal   r1, r2, r0, r0
    umaal   r3, r4, r0, r0
    umaal   r5, r6, r0, r0
    umaal   r7, r8, r0, r0
    umaal   r9, r10, r0, r0
    umaal   r11, r12, r0, r0

    subs    r0, r0, #1
    bne     umaalMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_umlalMinTest:

    stmdb   sp!, {r4-r11, lr}

umlalMinTest_LOOP:

    // loop 1
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10

    // loop 2
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10

    // loop 3
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10

    // loop 4
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10

    // loop 5
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10
    umlal   r1, r2, r11, r12
    umlal   r3, r4, r1, r2
    umlal   r5, r6, r3, r4
    umlal   r7, r8, r5, r6
    umlal   r9, r10, r7, r8
    umlal   r11, r12, r9, r10

    subs    r0, r0, #1
    bne     umlalMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_umlalMaxTest:

    stmdb   sp!, {r4-r11, lr}

umlalMaxTest_LOOP:

    // loop 1
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0

    // loop 2
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0

    // loop 3
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0

    // loop 4
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0

    // loop 5
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0
    umlal   r1, r2, r0, r0
    umlal   r3, r4, r0, r0
    umlal   r5, r6, r0, r0
    umlal   r7, r8, r0, r0
    umlal   r9, r10, r0, r0
    umlal   r11, r12, r0, r0

    subs    r0, r0, #1
    bne     umlalMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_umullMinTest:

    stmdb   sp!, {r4-r11, lr}

umullMinTest_LOOP:

    // loop 1
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10

    // loop 2
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10

    // loop 3
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10

    // loop 4
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10

    // loop 5
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10
    umull   r1, r2, r11, r12
    umull   r3, r4, r1, r2
    umull   r5, r6, r3, r4
    umull   r7, r8, r5, r6
    umull   r9, r10, r7, r8
    umull   r11, r12, r9, r10

    subs    r0, r0, #1
    bne     umullMinTest_LOOP
    ldmia   sp!, {r4-r11, pc}

_umullMaxTest:

    stmdb   sp!, {r4-r11, lr}
    
umullMaxTest_LOOP:

    // loop 1
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0

    // loop 2
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0

    // loop 3
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0

    // loop 4
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0

    // loop 5
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0
    umull   r1, r2, r0, r0
    umull   r3, r4, r0, r0
    umull   r5, r6, r0, r0
    umull   r7, r8, r0, r0
    umull   r9, r10, r0, r0
    umull   r11, r12, r0, r0

    subs    r0, r0, #1
    bne     umullMaxTest_LOOP
    ldmia   sp!, {r4-r11, pc}


_uqadd16MinTest:

    push        {r4-r11, lr}

uqadd16MinTest_LOOP:

    // loop 1
    uqadd16     r2, r2, r1
    uqadd16     r3, r3, r2
    uqadd16     r4, r4, r3
    uqadd16     r5, r5, r4
    uqadd16     r6, r6, r5
    uqadd16     r7, r7, r6
    uqadd16     r8, r8, r7
    uqadd16     r9, r9, r8
    uqadd16     r10, r10, r9
    uqadd16     r11, r11, r10
    uqadd16     r12, r12, r11
    uqadd16     r1, r1, r12

    // loop 2
    uqadd16     r2, r2, r1
    uqadd16     r3, r3, r2
    uqadd16     r4, r4, r3
    uqadd16     r5, r5, r4
    uqadd16     r6, r6, r5
    uqadd16     r7, r7, r6
    uqadd16     r8, r8, r7
    uqadd16     r9, r9, r8
    uqadd16     r10, r10, r9
    uqadd16     r11, r11, r10
    uqadd16     r12, r12, r11
    uqadd16     r1, r1, r12

    // loop 3
    uqadd16     r2, r2, r1
    uqadd16     r3, r3, r2
    uqadd16     r4, r4, r3
    uqadd16     r5, r5, r4
    uqadd16     r6, r6, r5
    uqadd16     r7, r7, r6
    uqadd16     r8, r8, r7
    uqadd16     r9, r9, r8
    uqadd16     r10, r10, r9
    uqadd16     r11, r11, r10
    uqadd16     r12, r12, r11
    uqadd16     r1, r1, r12

    // loop 4
    uqadd16     r2, r2, r1
    uqadd16     r3, r3, r2
    uqadd16     r4, r4, r3
    uqadd16     r5, r5, r4
    uqadd16     r6, r6, r5
    uqadd16     r7, r7, r6
    uqadd16     r8, r8, r7
    uqadd16     r9, r9, r8
    uqadd16     r10, r10, r9
    uqadd16     r11, r11, r10
    uqadd16     r12, r12, r11
    uqadd16     r1, r1, r12

    // loop 5
    uqadd16     r2, r2, r1
    uqadd16     r3, r3, r2
    uqadd16     r4, r4, r3
    uqadd16     r5, r5, r4
    uqadd16     r6, r6, r5
    uqadd16     r7, r7, r6
    uqadd16     r8, r8, r7
    uqadd16     r9, r9, r8
    uqadd16     r10, r10, r9
    uqadd16     r11, r11, r10
    uqadd16     r12, r12, r11
    uqadd16     r1, r1, r12

    subs        r0, r0, #1
    bne         uqadd16MinTest_LOOP
    pop         {r4-r11, pc}

_uqadd16MaxTest:

    push        {r4-r11, lr}

uqadd16MaxTest_LOOP:

    // loop 1
    uqadd16     r1, r0, r0
    uqadd16     r2, r0, r0
    uqadd16     r3, r0, r0
    uqadd16     r4, r0, r0
    uqadd16     r5, r0, r0
    uqadd16     r6, r0, r0
    uqadd16     r7, r0, r0
    uqadd16     r8, r0, r0
    uqadd16     r9, r0, r0
    uqadd16     r10, r0, r0
    uqadd16     r11, r0, r0
    uqadd16     r12, r0, r0

    // loop 2
    uqadd16     r1, r0, r0
    uqadd16     r2, r0, r0
    uqadd16     r3, r0, r0
    uqadd16     r4, r0, r0
    uqadd16     r5, r0, r0
    uqadd16     r6, r0, r0
    uqadd16     r7, r0, r0
    uqadd16     r8, r0, r0
    uqadd16     r9, r0, r0
    uqadd16     r10, r0, r0
    uqadd16     r11, r0, r0
    uqadd16     r12, r0, r0

    // loop 3
    uqadd16     r1, r0, r0
    uqadd16     r2, r0, r0
    uqadd16     r3, r0, r0
    uqadd16     r4, r0, r0
    uqadd16     r5, r0, r0
    uqadd16     r6, r0, r0
    uqadd16     r7, r0, r0
    uqadd16     r8, r0, r0
    uqadd16     r9, r0, r0
    uqadd16     r10, r0, r0
    uqadd16     r11, r0, r0
    uqadd16     r12, r0, r0

    // loop 4
    uqadd16     r1, r0, r0
    uqadd16     r2, r0, r0
    uqadd16     r3, r0, r0
    uqadd16     r4, r0, r0
    uqadd16     r5, r0, r0
    uqadd16     r6, r0, r0
    uqadd16     r7, r0, r0
    uqadd16     r8, r0, r0
    uqadd16     r9, r0, r0
    uqadd16     r10, r0, r0
    uqadd16     r11, r0, r0
    uqadd16     r12, r0, r0

    // loop 5
    uqadd16     r1, r0, r0
    uqadd16     r2, r0, r0
    uqadd16     r3, r0, r0
    uqadd16     r4, r0, r0
    uqadd16     r5, r0, r0
    uqadd16     r6, r0, r0
    uqadd16     r7, r0, r0
    uqadd16     r8, r0, r0
    uqadd16     r9, r0, r0
    uqadd16     r10, r0, r0
    uqadd16     r11, r0, r0
    uqadd16     r12, r0, r0

    subs    r0, r0, #1
    bne     uqadd16MaxTest_LOOP
    pop     {r4-r11, pc}


_uqadd8MinTest:

    push    {r4-r11, lr}

uqadd8MinTest_LOOP:

    // loop 1
    uqadd8  r2, r2, r1
    uqadd8  r3, r3, r2
    uqadd8  r4, r4, r3
    uqadd8  r5, r5, r4
    uqadd8  r6, r6, r5
    uqadd8  r7, r7, r6
    uqadd8  r8, r8, r7
    uqadd8  r9, r9, r8
    uqadd8  r10, r10, r9
    uqadd8  r11, r11, r10
    uqadd8  r12, r12, r11
    uqadd8  r1, r1, r12

    // loop 2
    uqadd8  r2, r2, r1
    uqadd8  r3, r3, r2
    uqadd8  r4, r4, r3
    uqadd8  r5, r5, r4
    uqadd8  r6, r6, r5
    uqadd8  r7, r7, r6
    uqadd8  r8, r8, r7
    uqadd8  r9, r9, r8
    uqadd8  r10, r10, r9
    uqadd8  r11, r11, r10
    uqadd8  r12, r12, r11
    uqadd8  r1, r1, r12

    // loop 3
    uqadd8  r2, r2, r1
    uqadd8  r3, r3, r2
    uqadd8  r4, r4, r3
    uqadd8  r5, r5, r4
    uqadd8  r6, r6, r5
    uqadd8  r7, r7, r6
    uqadd8  r8, r8, r7
    uqadd8  r9, r9, r8
    uqadd8  r10, r10, r9
    uqadd8  r11, r11, r10
    uqadd8  r12, r12, r11
    uqadd8  r1, r1, r12

    // loop 4
    uqadd8  r2, r2, r1
    uqadd8  r3, r3, r2
    uqadd8  r4, r4, r3
    uqadd8  r5, r5, r4
    uqadd8  r6, r6, r5
    uqadd8  r7, r7, r6
    uqadd8  r8, r8, r7
    uqadd8  r9, r9, r8
    uqadd8  r10, r10, r9
    uqadd8  r11, r11, r10
    uqadd8  r12, r12, r11
    uqadd8  r1, r1, r12

    // loop 5
    uqadd8  r2, r2, r1
    uqadd8  r3, r3, r2
    uqadd8  r4, r4, r3
    uqadd8  r5, r5, r4
    uqadd8  r6, r6, r5
    uqadd8  r7, r7, r6
    uqadd8  r8, r8, r7
    uqadd8  r9, r9, r8
    uqadd8  r10, r10, r9
    uqadd8  r11, r11, r10
    uqadd8  r12, r12, r11
    uqadd8  r1, r1, r12

    subs    r0, r0, #1
    bne     uqadd8MinTest_LOOP
    pop     {r4-r11, pc}

_uqadd8MaxTest:

    push    {r4-r11, lr}

uqadd8MaxTest_LOOP:

    // loop 1
    uqadd8  r1, r0, r0
    uqadd8  r2, r0, r0
    uqadd8  r3, r0, r0
    uqadd8  r4, r0, r0
    uqadd8  r5, r0, r0
    uqadd8  r6, r0, r0
    uqadd8  r7, r0, r0
    uqadd8  r8, r0, r0
    uqadd8  r9, r0, r0
    uqadd8  r10, r0, r0
    uqadd8  r11, r0, r0
    uqadd8  r12, r0, r0

    // loop 2
    uqadd8  r1, r0, r0
    uqadd8  r2, r0, r0
    uqadd8  r3, r0, r0
    uqadd8  r4, r0, r0
    uqadd8  r5, r0, r0
    uqadd8  r6, r0, r0
    uqadd8  r7, r0, r0
    uqadd8  r8, r0, r0
    uqadd8  r9, r0, r0
    uqadd8  r10, r0, r0
    uqadd8  r11, r0, r0
    uqadd8  r12, r0, r0

    // loop 3
    uqadd8  r1, r0, r0
    uqadd8  r2, r0, r0
    uqadd8  r3, r0, r0
    uqadd8  r4, r0, r0
    uqadd8  r5, r0, r0
    uqadd8  r6, r0, r0
    uqadd8  r7, r0, r0
    uqadd8  r8, r0, r0
    uqadd8  r9, r0, r0
    uqadd8  r10, r0, r0
    uqadd8  r11, r0, r0
    uqadd8  r12, r0, r0

    // loop 4
    uqadd8  r1, r0, r0
    uqadd8  r2, r0, r0
    uqadd8  r3, r0, r0
    uqadd8  r4, r0, r0
    uqadd8  r5, r0, r0
    uqadd8  r6, r0, r0
    uqadd8  r7, r0, r0
    uqadd8  r8, r0, r0
    uqadd8  r9, r0, r0
    uqadd8  r10, r0, r0
    uqadd8  r11, r0, r0
    uqadd8  r12, r0, r0

    // loop 5
    uqadd8  r1, r0, r0
    uqadd8  r2, r0, r0
    uqadd8  r3, r0, r0
    uqadd8  r4, r0, r0
    uqadd8  r5, r0, r0
    uqadd8  r6, r0, r0
    uqadd8  r7, r0, r0
    uqadd8  r8, r0, r0
    uqadd8  r9, r0, r0
    uqadd8  r10, r0, r0
    uqadd8  r11, r0, r0
    uqadd8  r12, r0, r0

    subs    r0, r0, #1
    bne     uqadd8MaxTest_LOOP
    pop     {r4-r11, pc}


_uqasxMinTest:

    push        {r4-r11, lr}

uqasxMinTest_LOOP:

    // loop 1
    uqaddsubx   r2, r2, r1
    uqaddsubx   r3, r3, r2
    uqaddsubx   r4, r4, r3
    uqaddsubx   r5, r5, r4
    uqasx       r6, r6, r5
    uqasx       r7, r7, r6
    uqasx       r8, r8, r7
    uqasx       r9, r9, r8
    uqasx       r10, r10, r9
    uqasx       r11, r11, r10
    uqasx       r12, r12, r11
    uqasx       r1, r1, r12

    // loop 2
    uqaddsubx   r2, r2, r1
    uqaddsubx   r3, r3, r2
    uqaddsubx   r4, r4, r3
    uqaddsubx   r5, r5, r4
    uqasx       r6, r6, r5
    uqasx       r7, r7, r6
    uqasx       r8, r8, r7
    uqasx       r9, r9, r8
    uqasx       r10, r10, r9
    uqasx       r11, r11, r10
    uqasx       r12, r12, r11
    uqasx       r1, r1, r12

    // loop 3
    uqaddsubx   r2, r2, r1
    uqaddsubx   r3, r3, r2
    uqaddsubx   r4, r4, r3
    uqaddsubx   r5, r5, r4
    uqasx       r6, r6, r5
    uqasx       r7, r7, r6
    uqasx       r8, r8, r7
    uqasx       r9, r9, r8
    uqasx       r10, r10, r9
    uqasx       r11, r11, r10
    uqasx       r12, r12, r11
    uqasx       r1, r1, r12

    // loop 4
    uqaddsubx   r2, r2, r1
    uqaddsubx   r3, r3, r2
    uqaddsubx   r4, r4, r3
    uqaddsubx   r5, r5, r4
    uqasx       r6, r6, r5
    uqasx       r7, r7, r6
    uqasx       r8, r8, r7
    uqasx       r9, r9, r8
    uqasx       r10, r10, r9
    uqasx       r11, r11, r10
    uqasx       r12, r12, r11
    uqasx       r1, r1, r12

    // loop 5
    uqaddsubx   r2, r2, r1
    uqaddsubx   r3, r3, r2
    uqaddsubx   r4, r4, r3
    uqaddsubx   r5, r5, r4
    uqasx       r6, r6, r5
    uqasx       r7, r7, r6
    uqasx       r8, r8, r7
    uqasx       r9, r9, r8
    uqasx       r10, r10, r9
    uqasx       r11, r11, r10
    uqasx       r12, r12, r11
    uqasx       r1, r1, r12

    subs    r0, r0, #1
    bne     uqasxMinTest_LOOP
    pop     {r4-r11, pc}

_uqasxMaxTest:

    push        {r4-r11, lr}

uqasxMaxTest_LOOP:

    // loop 1
    uqasx       r1, r0, r0
    uqasx       r2, r0, r0
    uqasx       r3, r0, r0
    uqasx       r4, r0, r0
    uqasx       r5, r0, r0
    uqaddsubx   r6, r0, r0
    uqaddsubx   r7, r0, r0
    uqaddsubx   r8, r0, r0
    uqaddsubx   r9, r0, r0
    uqaddsubx   r10, r0, r0
    uqaddsubx   r11, r0, r0
    uqaddsubx   r12, r0, r0

    // loop 2
    uqaddsubx   r1, r0, r0
    uqaddsubx   r2, r0, r0
    uqaddsubx   r3, r0, r0
    uqaddsubx   r4, r0, r0
    uqaddsubx   r5, r0, r0
    uqaddsubx   r6, r0, r0
    uqaddsubx   r7, r0, r0
    uqaddsubx   r8, r0, r0
    uqaddsubx   r9, r0, r0
    uqaddsubx   r10, r0, r0
    uqaddsubx   r11, r0, r0
    uqaddsubx   r12, r0, r0

    // loop 3
    uqaddsubx   r1, r0, r0
    uqaddsubx   r2, r0, r0
    uqaddsubx   r3, r0, r0
    uqaddsubx   r4, r0, r0
    uqaddsubx   r5, r0, r0
    uqaddsubx   r6, r0, r0
    uqaddsubx   r7, r0, r0
    uqaddsubx   r8, r0, r0
    uqaddsubx   r9, r0, r0
    uqaddsubx   r10, r0, r0
    uqaddsubx   r11, r0, r0
    uqaddsubx   r12, r0, r0

    // loop 4
    uqaddsubx   r1, r0, r0
    uqaddsubx   r2, r0, r0
    uqaddsubx   r3, r0, r0
    uqaddsubx   r4, r0, r0
    uqaddsubx   r5, r0, r0
    uqaddsubx   r6, r0, r0
    uqaddsubx   r7, r0, r0
    uqaddsubx   r8, r0, r0
    uqaddsubx   r9, r0, r0
    uqaddsubx   r10, r0, r0
    uqaddsubx   r11, r0, r0
    uqaddsubx   r12, r0, r0

    // loop 5
    uqaddsubx   r1, r0, r0
    uqaddsubx   r2, r0, r0
    uqaddsubx   r3, r0, r0
    uqaddsubx   r4, r0, r0
    uqaddsubx   r5, r0, r0
    uqaddsubx   r6, r0, r0
    uqaddsubx   r7, r0, r0
    uqaddsubx   r8, r0, r0
    uqaddsubx   r9, r0, r0
    uqaddsubx   r10, r0, r0
    uqaddsubx   r11, r0, r0
    uqaddsubx   r12, r0, r0

    subs    r0, r0, #1
    bne     uqasxMaxTest_LOOP
    pop     {r4-r11, pc}


_uqsaxMinTest:

    uqsax   r1, r0, r0
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3
    uqsax   r1, r12, r12
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3

    uqsax   r1, r12, r12
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3
    uqsax   r1, r12, r12
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3

    uqsax   r1, r12, r12
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3
    uqsax   r1, r12, r12
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3

    uqsax   r1, r12, r12
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3
    uqsax   r1, r12, r12
    uqsax   r2, r1, r1
    uqsax   r3, r2, r2
    uqsax   r12, r3, r3

    subs    r0, r0, #1
    bne     _uqsaxMinTest
    bx      lr

_uqsaxMaxTest:

    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0
    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0

    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0
    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0

    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0
    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0

    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0
    uqsax   r1, r0, r0
    uqsax   r2, r0, r0
    uqsax   r3, r0, r0
    uqsax   r12, r0, r0

    subs    r0, r0, #1
    bne     _uqsaxMaxTest
    bx      lr


_uqsub16MinTest:

    push    {r4-r11, lr}

uqsub16MinTest_LOOP:

    // loop 1
    uqsub16 r2, r2, r1
    uqsub16 r3, r3, r2
    uqsub16 r4, r4, r3
    uqsub16 r5, r5, r4
    uqsub16 r6, r6, r5
    uqsub16 r7, r7, r6
    uqsub16 r8, r8, r7
    uqsub16 r9, r9, r8
    uqsub16 r10, r10, r9
    uqsub16 r11, r11, r10
    uqsub16 r12, r12, r11
    uqsub16 r1, r1, r12

    // loop 2
    uqsub16 r2, r2, r1
    uqsub16 r3, r3, r2
    uqsub16 r4, r4, r3
    uqsub16 r5, r5, r4
    uqsub16 r6, r6, r5
    uqsub16 r7, r7, r6
    uqsub16 r8, r8, r7
    uqsub16 r9, r9, r8
    uqsub16 r10, r10, r9
    uqsub16 r11, r11, r10
    uqsub16 r12, r12, r11
    uqsub16 r1, r1, r12

    // loop 3
    uqsub16 r2, r2, r1
    uqsub16 r3, r3, r2
    uqsub16 r4, r4, r3
    uqsub16 r5, r5, r4
    uqsub16 r6, r6, r5
    uqsub16 r7, r7, r6
    uqsub16 r8, r8, r7
    uqsub16 r9, r9, r8
    uqsub16 r10, r10, r9
    uqsub16 r11, r11, r10
    uqsub16 r12, r12, r11
    uqsub16 r1, r1, r12

    // loop 4
    uqsub16 r2, r2, r1
    uqsub16 r3, r3, r2
    uqsub16 r4, r4, r3
    uqsub16 r5, r5, r4
    uqsub16 r6, r6, r5
    uqsub16 r7, r7, r6
    uqsub16 r8, r8, r7
    uqsub16 r9, r9, r8
    uqsub16 r10, r10, r9
    uqsub16 r11, r11, r10
    uqsub16 r12, r12, r11
    uqsub16 r1, r1, r12

    // loop 5
    uqsub16 r2, r2, r1
    uqsub16 r3, r3, r2
    uqsub16 r4, r4, r3
    uqsub16 r5, r5, r4
    uqsub16 r6, r6, r5
    uqsub16 r7, r7, r6
    uqsub16 r8, r8, r7
    uqsub16 r9, r9, r8
    uqsub16 r10, r10, r9
    uqsub16 r11, r11, r10
    uqsub16 r12, r12, r11
    uqsub16 r1, r1, r12

    subs    r0, r0, #1
    bne     uqsub16MinTest_LOOP
    pop     {r4-r11, pc}

_uqsub16MaxTest:

    push    {r4-r11, lr}

uqsub16MaxTest_LOOP:

    // loop 1
    uqsub16 r1, r0, r0
    uqsub16 r2, r0, r0
    uqsub16 r3, r0, r0
    uqsub16 r4, r0, r0
    uqsub16 r5, r0, r0
    uqsub16 r6, r0, r0
    uqsub16 r7, r0, r0
    uqsub16 r8, r0, r0
    uqsub16 r9, r0, r0
    uqsub16 r10, r0, r0
    uqsub16 r11, r0, r0
    uqsub16 r12, r0, r0

    // loop 2
    uqsub16 r1, r0, r0
    uqsub16 r2, r0, r0
    uqsub16 r3, r0, r0
    uqsub16 r4, r0, r0
    uqsub16 r5, r0, r0
    uqsub16 r6, r0, r0
    uqsub16 r7, r0, r0
    uqsub16 r8, r0, r0
    uqsub16 r9, r0, r0
    uqsub16 r10, r0, r0
    uqsub16 r11, r0, r0
    uqsub16 r12, r0, r0

    // loop 3
    uqsub16 r1, r0, r0
    uqsub16 r2, r0, r0
    uqsub16 r3, r0, r0
    uqsub16 r4, r0, r0
    uqsub16 r5, r0, r0
    uqsub16 r6, r0, r0
    uqsub16 r7, r0, r0
    uqsub16 r8, r0, r0
    uqsub16 r9, r0, r0
    uqsub16 r10, r0, r0
    uqsub16 r11, r0, r0
    uqsub16 r12, r0, r0

    // loop 4
    uqsub16 r1, r0, r0
    uqsub16 r2, r0, r0
    uqsub16 r3, r0, r0
    uqsub16 r4, r0, r0
    uqsub16 r5, r0, r0
    uqsub16 r6, r0, r0
    uqsub16 r7, r0, r0
    uqsub16 r8, r0, r0
    uqsub16 r9, r0, r0
    uqsub16 r10, r0, r0
    uqsub16 r11, r0, r0
    uqsub16 r12, r0, r0

    // loop 5
    uqsub16 r1, r0, r0
    uqsub16 r2, r0, r0
    uqsub16 r3, r0, r0
    uqsub16 r4, r0, r0
    uqsub16 r5, r0, r0
    uqsub16 r6, r0, r0
    uqsub16 r7, r0, r0
    uqsub16 r8, r0, r0
    uqsub16 r9, r0, r0
    uqsub16 r10, r0, r0
    uqsub16 r11, r0, r0
    uqsub16 r12, r0, r0

    subs    r0, r0, #1
    bne     uqsub16MaxTest_LOOP
    pop     {r4-r11, pc}


_uqsub8MinTest:

    push    {r4-r11, lr}

uqsub8MinTest_LOOP:

    // loop 1
    uqsub8  r2, r1, r1
    uqsub8  r3, r3, r2
    uqsub8  r4, r4, r3
    uqsub8  r5, r5, r4
    uqsub8  r6, r6, r5
    uqsub8  r7, r7, r6
    uqsub8  r8, r8, r7
    uqsub8  r9, r9, r8
    uqsub8  r10, r10, r9
    uqsub8  r11, r11, r10
    uqsub8  r12, r12, r11
    uqsub8  r1, r1, r12

    // loop 2
    uqsub8  r2, r1, r1
    uqsub8  r3, r3, r2
    uqsub8  r4, r4, r3
    uqsub8  r5, r5, r4
    uqsub8  r6, r6, r5
    uqsub8  r7, r7, r6
    uqsub8  r8, r8, r7
    uqsub8  r9, r9, r8
    uqsub8  r10, r10, r9
    uqsub8  r11, r11, r10
    uqsub8  r12, r12, r11
    uqsub8  r1, r1, r12

    // loop 3
    uqsub8  r2, r1, r1
    uqsub8  r3, r3, r2
    uqsub8  r4, r4, r3
    uqsub8  r5, r5, r4
    uqsub8  r6, r6, r5
    uqsub8  r7, r7, r6
    uqsub8  r8, r8, r7
    uqsub8  r9, r9, r8
    uqsub8  r10, r10, r9
    uqsub8  r11, r11, r10
    uqsub8  r12, r12, r11
    uqsub8  r1, r1, r12

    // loop 4
    uqsub8  r2, r1, r1
    uqsub8  r3, r3, r2
    uqsub8  r4, r4, r3
    uqsub8  r5, r5, r4
    uqsub8  r6, r6, r5
    uqsub8  r7, r7, r6
    uqsub8  r8, r8, r7
    uqsub8  r9, r9, r8
    uqsub8  r10, r10, r9
    uqsub8  r11, r11, r10
    uqsub8  r12, r12, r11
    uqsub8  r1, r1, r12

    // loop 5
    uqsub8  r2, r1, r1
    uqsub8  r3, r3, r2
    uqsub8  r4, r4, r3
    uqsub8  r5, r5, r4
    uqsub8  r6, r6, r5
    uqsub8  r7, r7, r6
    uqsub8  r8, r8, r7
    uqsub8  r9, r9, r8
    uqsub8  r10, r10, r9
    uqsub8  r11, r11, r10
    uqsub8  r12, r12, r11
    uqsub8  r1, r1, r12

    subs    r0, r0, #1
    bne     uqsub8MinTest_LOOP
    pop     {r4-r11, pc}

_uqsub8MaxTest:

    push    {r4-r11, lr}

uqsub8MaxTest_LOOP:

    // loop 1
    uqsub8  r1, r0, r0
    uqsub8  r2, r0, r0
    uqsub8  r3, r0, r0
    uqsub8  r4, r0, r0
    uqsub8  r5, r0, r0
    uqsub8  r6, r0, r0
    uqsub8  r7, r0, r0
    uqsub8  r8, r0, r0
    uqsub8  r9, r0, r0
    uqsub8  r10, r0, r0
    uqsub8  r11, r0, r0
    uqsub8  r12, r0, r0

    // loop 2
    uqsub8  r1, r0, r0
    uqsub8  r2, r0, r0
    uqsub8  r3, r0, r0
    uqsub8  r4, r0, r0
    uqsub8  r5, r0, r0
    uqsub8  r6, r0, r0
    uqsub8  r7, r0, r0
    uqsub8  r8, r0, r0
    uqsub8  r9, r0, r0
    uqsub8  r10, r0, r0
    uqsub8  r11, r0, r0
    uqsub8  r12, r0, r0

    // loop 3
    uqsub8  r1, r0, r0
    uqsub8  r2, r0, r0
    uqsub8  r3, r0, r0
    uqsub8  r4, r0, r0
    uqsub8  r5, r0, r0
    uqsub8  r6, r0, r0
    uqsub8  r7, r0, r0
    uqsub8  r8, r0, r0
    uqsub8  r9, r0, r0
    uqsub8  r10, r0, r0
    uqsub8  r11, r0, r0
    uqsub8  r12, r0, r0

    // loop 4
    uqsub8  r1, r0, r0
    uqsub8  r2, r0, r0
    uqsub8  r3, r0, r0
    uqsub8  r4, r0, r0
    uqsub8  r5, r0, r0
    uqsub8  r6, r0, r0
    uqsub8  r7, r0, r0
    uqsub8  r8, r0, r0
    uqsub8  r9, r0, r0
    uqsub8  r10, r0, r0
    uqsub8  r11, r0, r0
    uqsub8  r12, r0, r0

    // loop 5
    uqsub8  r1, r0, r0
    uqsub8  r2, r0, r0
    uqsub8  r3, r0, r0
    uqsub8  r4, r0, r0
    uqsub8  r5, r0, r0
    uqsub8  r6, r0, r0
    uqsub8  r7, r0, r0
    uqsub8  r8, r0, r0
    uqsub8  r9, r0, r0
    uqsub8  r10, r0, r0
    uqsub8  r11, r0, r0
    uqsub8  r12, r0, r0

    subs    r0, r0, #1
    bne     uqsub8MaxTest_LOOP
    pop     {r4-r11, pc}


_usad8MinTest:

    push    {r4-r11, lr}

usad8MinTest_LOOP:

    // loop 1
    usad8   r2, r1, r1
    usad8   r3, r3, r2
    usad8   r4, r4, r3
    usad8   r5, r5, r4
    usad8   r6, r6, r5
    usad8   r7, r7, r6
    usad8   r8, r8, r7
    usad8   r9, r9, r8
    usad8   r10, r10, r9
    usad8   r11, r11, r10
    usad8   r12, r12, r11
    usad8   r1, r1, r12

    // loop 2
    usad8   r2, r1, r1
    usad8   r3, r3, r2
    usad8   r4, r4, r3
    usad8   r5, r5, r4
    usad8   r6, r6, r5
    usad8   r7, r7, r6
    usad8   r8, r8, r7
    usad8   r9, r9, r8
    usad8   r10, r10, r9
    usad8   r11, r11, r10
    usad8   r12, r12, r11
    usad8   r1, r1, r12

    // loop 3
    usad8   r2, r1, r1
    usad8   r3, r3, r2
    usad8   r4, r4, r3
    usad8   r5, r5, r4
    usad8   r6, r6, r5
    usad8   r7, r7, r6
    usad8   r8, r8, r7
    usad8   r9, r9, r8
    usad8   r10, r10, r9
    usad8   r11, r11, r10
    usad8   r12, r12, r11
    usad8   r1, r1, r12

    // loop 4
    usad8   r2, r1, r1
    usad8   r3, r3, r2
    usad8   r4, r4, r3
    usad8   r5, r5, r4
    usad8   r6, r6, r5
    usad8   r7, r7, r6
    usad8   r8, r8, r7
    usad8   r9, r9, r8
    usad8   r10, r10, r9
    usad8   r11, r11, r10
    usad8   r12, r12, r11
    usad8   r1, r1, r12

    // loop 5
    usad8   r2, r1, r1
    usad8   r3, r3, r2
    usad8   r4, r4, r3
    usad8   r5, r5, r4
    usad8   r6, r6, r5
    usad8   r7, r7, r6
    usad8   r8, r8, r7
    usad8   r9, r9, r8
    usad8   r10, r10, r9
    usad8   r11, r11, r10
    usad8   r12, r12, r11
    usad8   r1, r1, r12

    subs    r0, r0, #1
    bne     usad8MinTest_LOOP
    pop     {r4-r11, pc}

_usad8MaxTest:

    push    {r4-r11, lr}

usad8MaxTest_LOOP:

    // loop 1
    usad8   r1, r1, r1
    usad8   r2, r2, r2
    usad8   r3, r3, r3
    usad8   r4, r4, r4
    usad8   r5, r5, r5
    usad8   r6, r6, r6
    usad8   r7, r7, r7
    usad8   r8, r8, r8
    usad8   r9, r9, r9
    usad8   r10, r10, r10
    usad8   r11, r11, r11
    usad8   r12, r12, r12

    // loop 2
    usad8   r1, r1, r1
    usad8   r2, r2, r2
    usad8   r3, r3, r3
    usad8   r4, r4, r4
    usad8   r5, r5, r5
    usad8   r6, r6, r6
    usad8   r7, r7, r7
    usad8   r8, r8, r8
    usad8   r9, r9, r9
    usad8   r10, r10, r10
    usad8   r11, r11, r11
    usad8   r12, r12, r12

    // loop 3
    usad8   r1, r1, r1
    usad8   r2, r2, r2
    usad8   r3, r3, r3
    usad8   r4, r4, r4
    usad8   r5, r5, r5
    usad8   r6, r6, r6
    usad8   r7, r7, r7
    usad8   r8, r8, r8
    usad8   r9, r9, r9
    usad8   r10, r10, r10
    usad8   r11, r11, r11
    usad8   r12, r12, r12

    // loop 4
    usad8   r1, r1, r1
    usad8   r2, r2, r2
    usad8   r3, r3, r3
    usad8   r4, r4, r4
    usad8   r5, r5, r5
    usad8   r6, r6, r6
    usad8   r7, r7, r7
    usad8   r8, r8, r8
    usad8   r9, r9, r9
    usad8   r10, r10, r10
    usad8   r11, r11, r11
    usad8   r12, r12, r12

    // loop 5
    usad8   r1, r1, r1
    usad8   r2, r2, r2
    usad8   r3, r3, r3
    usad8   r4, r4, r4
    usad8   r5, r5, r5
    usad8   r6, r6, r6
    usad8   r7, r7, r7
    usad8   r8, r8, r8
    usad8   r9, r9, r9
    usad8   r10, r10, r10
    usad8   r11, r11, r11
    usad8   r12, r12, r12

    subs    r0, r0, #1
    bne     usad8MaxTest_LOOP
    pop     {r4-r11, pc}


_usada8MinTest:

    push    {r4-r11, lr}

usada8MinTest_LOOP:

    // loop 1
    usada8  r2, r1, r2, r1
    usada8  r3, r2, r3, r2
    usada8  r4, r3, r4, r3
    usada8  r5, r4, r5, r4
    usada8  r6, r5, r6, r5
    usada8  r7, r6, r7, r6
    usada8  r8, r7, r8, r7
    usada8  r9, r8, r9, r8
    usada8  r10, r9, r10, r9
    usada8  r11, r10, r11, r10
    usada8  r12, r11, r12, r11
    usada8  r1, r12, r1, r12

    // loop 2
    usada8  r2, r1, r2, r1
    usada8  r3, r2, r3, r2
    usada8  r4, r3, r4, r3
    usada8  r5, r4, r5, r4
    usada8  r6, r5, r6, r5
    usada8  r7, r6, r7, r6
    usada8  r8, r7, r8, r7
    usada8  r9, r8, r9, r8
    usada8  r10, r9, r10, r9
    usada8  r11, r10, r11, r10
    usada8  r12, r11, r12, r11
    usada8  r1, r12, r1, r12

    // loop 3
    usada8  r2, r1, r2, r1
    usada8  r3, r2, r3, r2
    usada8  r4, r3, r4, r3
    usada8  r5, r4, r5, r4
    usada8  r6, r5, r6, r5
    usada8  r7, r6, r7, r6
    usada8  r8, r7, r8, r7
    usada8  r9, r8, r9, r8
    usada8  r10, r9, r10, r9
    usada8  r11, r10, r11, r10
    usada8  r12, r11, r12, r11
    usada8  r1, r12, r1, r12

    // loop 4
    usada8  r2, r1, r2, r1
    usada8  r3, r2, r3, r2
    usada8  r4, r3, r4, r3
    usada8  r5, r4, r5, r4
    usada8  r6, r5, r6, r5
    usada8  r7, r6, r7, r6
    usada8  r8, r7, r8, r7
    usada8  r9, r8, r9, r8
    usada8  r10, r9, r10, r9
    usada8  r11, r10, r11, r10
    usada8  r12, r11, r12, r11
    usada8  r1, r12, r1, r12

    // loop 5
    usada8  r2, r1, r2, r1
    usada8  r3, r2, r3, r2
    usada8  r4, r3, r4, r3
    usada8  r5, r4, r5, r4
    usada8  r6, r5, r6, r5
    usada8  r7, r6, r7, r6
    usada8  r8, r7, r8, r7
    usada8  r9, r8, r9, r8
    usada8  r10, r9, r10, r9
    usada8  r11, r10, r11, r10
    usada8  r12, r11, r12, r11
    usada8  r1, r12, r1, r12

    subs    r0, r0, #1
    bne     usada8MinTest_LOOP
    pop     {r4-r11, pc}

_usada8MaxTest:

    push    {r4-r11, lr}

usada8MaxTest_LOOP:

    // loop 1
    usada8  r1, r0, r0, r0
    usada8  r2, r0, r0, r0
    usada8  r3, r0, r0, r0
    usada8  r4, r0, r0, r0
    usada8  r5, r0, r0, r0
    usada8  r6, r0, r0, r0
    usada8  r7, r0, r0, r0
    usada8  r8, r0, r0, r0
    usada8  r9, r0, r0, r0
    usada8  r10, r0, r0, r0
    usada8  r11, r0, r0, r0
    usada8  r12, r0, r0, r0

    // loop 2
    usada8  r1, r0, r0, r0
    usada8  r2, r0, r0, r0
    usada8  r3, r0, r0, r0
    usada8  r4, r0, r0, r0
    usada8  r5, r0, r0, r0
    usada8  r6, r0, r0, r0
    usada8  r7, r0, r0, r0
    usada8  r8, r0, r0, r0
    usada8  r9, r0, r0, r0
    usada8  r10, r0, r0, r0
    usada8  r11, r0, r0, r0
    usada8  r12, r0, r0, r0

    // loop 3
    usada8  r1, r0, r0, r0
    usada8  r2, r0, r0, r0
    usada8  r3, r0, r0, r0
    usada8  r4, r0, r0, r0
    usada8  r5, r0, r0, r0
    usada8  r6, r0, r0, r0
    usada8  r7, r0, r0, r0
    usada8  r8, r0, r0, r0
    usada8  r9, r0, r0, r0
    usada8  r10, r0, r0, r0
    usada8  r11, r0, r0, r0
    usada8  r12, r0, r0, r0

    // loop 4
    usada8  r1, r0, r0, r0
    usada8  r2, r0, r0, r0
    usada8  r3, r0, r0, r0
    usada8  r4, r0, r0, r0
    usada8  r5, r0, r0, r0
    usada8  r6, r0, r0, r0
    usada8  r7, r0, r0, r0
    usada8  r8, r0, r0, r0
    usada8  r9, r0, r0, r0
    usada8  r10, r0, r0, r0
    usada8  r11, r0, r0, r0
    usada8  r12, r0, r0, r0

    // loop 5
    usada8  r1, r0, r0, r0
    usada8  r2, r0, r0, r0
    usada8  r3, r0, r0, r0
    usada8  r4, r0, r0, r0
    usada8  r5, r0, r0, r0
    usada8  r6, r0, r0, r0
    usada8  r7, r0, r0, r0
    usada8  r8, r0, r0, r0
    usada8  r9, r0, r0, r0
    usada8  r10, r0, r0, r0
    usada8  r11, r0, r0, r0
    usada8  r12, r0, r0, r0

    subs    r0, r0, #1
    bne     usada8MaxTest_LOOP
    pop     {r4-r11, pc}


_usatMinTest:

    push    {r4-r11, lr}

usatMinTest_LOOP:

    // loop 1
    usat    r2, #2, r1, LSL #1
    usat    r3, #3, r2, LSL #2
    usat    r4, #4, r3, LSL #3
    usat    r5, #5, r4, LSL #4
    usat    r6, #6, r5, LSL #5
    usat    r7, #7, r6, LSL #6
    usat    r8, #8, r7, LSL #7
    usat    r9, #9, r8, LSL #8
    usat    r10, #10, r9, LSL #9
    usat    r11, #11, r10, LSL #10
    usat    r12, #12, r11, LSL #11
    usat    r1, #13, r12, LSL #12

    // loop 2
    usat    r2, #2, r1, LSL #1
    usat    r3, #3, r2, LSL #2
    usat    r4, #4, r3, LSL #3
    usat    r5, #5, r4, LSL #4
    usat    r6, #6, r5, LSL #5
    usat    r7, #7, r6, LSL #6
    usat    r8, #8, r7, LSL #7
    usat    r9, #9, r8, LSL #8
    usat    r10, #10, r9, LSL #9
    usat    r11, #11, r10, LSL #10
    usat    r12, #12, r11, LSL #11
    usat    r1, #13, r12, LSL #12

    // loop 3
    usat    r2, #2, r1, LSL #1
    usat    r3, #3, r2, LSL #2
    usat    r4, #4, r3, LSL #3
    usat    r5, #5, r4, LSL #4
    usat    r6, #6, r5, LSL #5
    usat    r7, #7, r6, LSL #6
    usat    r8, #8, r7, LSL #7
    usat    r9, #9, r8, LSL #8
    usat    r10, #10, r9, LSL #9
    usat    r11, #11, r10, LSL #10
    usat    r12, #12, r11, LSL #11
    usat    r1, #13, r12, LSL #12

    // loop 4
    usat    r2, #2, r1, LSL #1
    usat    r3, #3, r2, LSL #2
    usat    r4, #4, r3, LSL #3
    usat    r5, #5, r4, LSL #4
    usat    r6, #6, r5, LSL #5
    usat    r7, #7, r6, LSL #6
    usat    r8, #8, r7, LSL #7
    usat    r9, #9, r8, LSL #8
    usat    r10, #10, r9, LSL #9
    usat    r11, #11, r10, LSL #10
    usat    r12, #12, r11, LSL #11
    usat    r1, #13, r12, LSL #12

    // loop 5
    usat    r2, #2, r1, LSL #1
    usat    r3, #3, r2, LSL #2
    usat    r4, #4, r3, LSL #3
    usat    r5, #5, r4, LSL #4
    usat    r6, #6, r5, LSL #5
    usat    r7, #7, r6, LSL #6
    usat    r8, #8, r7, LSL #7
    usat    r9, #9, r8, LSL #8
    usat    r10, #10, r9, LSL #9
    usat    r11, #11, r10, LSL #10
    usat    r12, #12, r11, LSL #11
    usat    r1, #13, r12, LSL #12

    subs    r0, r0, #1
    bne     usatMinTest_LOOP
    pop     {r4-r11, pc}

_usatMaxTest:

    push    {r4-r11, lr}

usatMaxTest_LOOP:

    // loop 1
    usat    r1, #1, r0
    usat    r2, #1, r0
    usat    r3, #1, r0
    usat    r4, #1, r0
    usat    r5, #1, r0
    usat    r6, #1, r0
    usat    r7, #1, r0
    usat    r8, #1, r0
    usat    r9, #1, r0
    usat    r10, #1, r0
    usat    r11, #1, r0
    usat    r12, #1, r0

    // loop 2
    usat    r1, #1, r0
    usat    r2, #1, r0
    usat    r3, #1, r0
    usat    r4, #1, r0
    usat    r5, #1, r0
    usat    r6, #1, r0
    usat    r7, #1, r0
    usat    r8, #1, r0
    usat    r9, #1, r0
    usat    r10, #1, r0
    usat    r11, #1, r0
    usat    r12, #1, r0

    // loop 3
    usat    r1, #1, r0
    usat    r2, #1, r0
    usat    r3, #1, r0
    usat    r4, #1, r0
    usat    r5, #1, r0
    usat    r6, #1, r0
    usat    r7, #1, r0
    usat    r8, #1, r0
    usat    r9, #1, r0
    usat    r10, #1, r0
    usat    r11, #1, r0
    usat    r12, #1, r0

    // loop 4
    usat    r1, #1, r0
    usat    r2, #1, r0
    usat    r3, #1, r0
    usat    r4, #1, r0
    usat    r5, #1, r0
    usat    r6, #1, r0
    usat    r7, #1, r0
    usat    r8, #1, r0
    usat    r9, #1, r0
    usat    r10, #1, r0
    usat    r11, #1, r0
    usat    r12, #1, r0

    // loop 5
    usat    r1, #1, r0
    usat    r2, #1, r0
    usat    r3, #1, r0
    usat    r4, #1, r0
    usat    r5, #1, r0
    usat    r6, #1, r0
    usat    r7, #1, r0
    usat    r8, #1, r0
    usat    r9, #1, r0
    usat    r10, #1, r0
    usat    r11, #1, r0
    usat    r12, #1, r0

    subs    r0, r0, #1
    bne     usatMaxTest_LOOP
    pop     {r4-r11, pc}


_usat16MinTest:

    push    {r4-r11, lr}

usat16MinTest_LOOP:

    // loop 1
    usat16  r2, #2, r1
    usat16  r3, #3, r2
    usat16  r4, #4, r3
    usat16  r5, #5, r4
    usat16  r6, #6, r5
    usat16  r7, #7, r6
    usat16  r8, #8, r7
    usat16  r9, #9, r8
    usat16  r10, #10, r9
    usat16  r11, #11, r10
    usat16  r12, #12, r11
    usat16  r1, #1, r12

    // loop 2
    usat16  r2, #2, r1
    usat16  r3, #3, r2
    usat16  r4, #4, r3
    usat16  r5, #5, r4
    usat16  r6, #6, r5
    usat16  r7, #7, r6
    usat16  r8, #8, r7
    usat16  r9, #9, r8
    usat16  r10, #10, r9
    usat16  r11, #11, r10
    usat16  r12, #12, r11
    usat16  r1, #1, r12

    // loop 3
    usat16  r2, #2, r1
    usat16  r3, #3, r2
    usat16  r4, #4, r3
    usat16  r5, #5, r4
    usat16  r6, #6, r5
    usat16  r7, #7, r6
    usat16  r8, #8, r7
    usat16  r9, #9, r8
    usat16  r10, #10, r9
    usat16  r11, #11, r10
    usat16  r12, #12, r11
    usat16  r1, #1, r12

    // loop 4
    usat16  r2, #2, r1
    usat16  r3, #3, r2
    usat16  r4, #4, r3
    usat16  r5, #5, r4
    usat16  r6, #6, r5
    usat16  r7, #7, r6
    usat16  r8, #8, r7
    usat16  r9, #9, r8
    usat16  r10, #10, r9
    usat16  r11, #11, r10
    usat16  r12, #12, r11
    usat16  r1, #1, r12

    // loop 5
    usat16  r2, #2, r1
    usat16  r3, #3, r2
    usat16  r4, #4, r3
    usat16  r5, #5, r4
    usat16  r6, #6, r5
    usat16  r7, #7, r6
    usat16  r8, #8, r7
    usat16  r9, #9, r8
    usat16  r10, #10, r9
    usat16  r11, #11, r10
    usat16  r12, #12, r11
    usat16  r1, #1, r12

    subs    r0, r0, #1
    bne     usat16MinTest_LOOP
    pop     {r4-r11, pc}

_usat16MaxTest:

    push    {r4-r11, lr}

usat16MaxTest_LOOP:

    // loop 1
    usat16  r1, #1, r0
    usat16  r2, #1, r0
    usat16  r3, #1, r0
    usat16  r4, #1, r0
    usat16  r5, #1, r0
    usat16  r6, #1, r0
    usat16  r7, #1, r0
    usat16  r8, #1, r0
    usat16  r9, #1, r0
    usat16  r10, #1, r0
    usat16  r11, #1, r0
    usat16  r12, #1, r0

    // loop 2
    usat16  r1, #1, r0
    usat16  r2, #1, r0
    usat16  r3, #1, r0
    usat16  r4, #1, r0
    usat16  r5, #1, r0
    usat16  r6, #1, r0
    usat16  r7, #1, r0
    usat16  r8, #1, r0
    usat16  r9, #1, r0
    usat16  r10, #1, r0
    usat16  r11, #1, r0
    usat16  r12, #1, r0

    // loop 3
    usat16  r1, #1, r0
    usat16  r2, #1, r0
    usat16  r3, #1, r0
    usat16  r4, #1, r0
    usat16  r5, #1, r0
    usat16  r6, #1, r0
    usat16  r7, #1, r0
    usat16  r8, #1, r0
    usat16  r9, #1, r0
    usat16  r10, #1, r0
    usat16  r11, #1, r0
    usat16  r12, #1, r0

    // loop 4
    usat16  r1, #1, r0
    usat16  r2, #1, r0
    usat16  r3, #1, r0
    usat16  r4, #1, r0
    usat16  r5, #1, r0
    usat16  r6, #1, r0
    usat16  r7, #1, r0
    usat16  r8, #1, r0
    usat16  r9, #1, r0
    usat16  r10, #1, r0
    usat16  r11, #1, r0
    usat16  r12, #1, r0

    // loop 5
    usat16  r1, #1, r0
    usat16  r2, #1, r0
    usat16  r3, #1, r0
    usat16  r4, #1, r0
    usat16  r5, #1, r0
    usat16  r6, #1, r0
    usat16  r7, #1, r0
    usat16  r8, #1, r0
    usat16  r9, #1, r0
    usat16  r10, #1, r0
    usat16  r11, #1, r0
    usat16  r12, #1, r0

    subs    r0, r0, #1
    bne     usat16MaxTest_LOOP
    pop     {r4-r11, pc}


_usaxMinTest:

    push    {r4-r11, lr}

usaxMinTest_LOOP:

    // loop 1
    usax    r2, r2, r1
    usax    r3, r3, r2
    usax    r4, r4, r3
    usax    r5, r5, r4
    usax    r6, r6, r5
    usax    r7, r7, r6
    usax    r8, r8, r7
    usax    r9, r9, r8
    usax    r10, r10, r9
    usax    r11, r11, r10
    usax    r12, r12, r11
    usax    r1, r1, r12

    // loop 2
    usax    r2, r2, r1
    usax    r3, r3, r2
    usax    r4, r4, r3
    usax    r5, r5, r4
    usax    r6, r6, r5
    usax    r7, r7, r6
    usax    r8, r8, r7
    usax    r9, r9, r8
    usax    r10, r10, r9
    usax    r11, r11, r10
    usax    r12, r12, r11
    usax    r1, r1, r12

    // loop 3
    usax    r2, r2, r1
    usax    r3, r3, r2
    usax    r4, r4, r3
    usax    r5, r5, r4
    usax    r6, r6, r5
    usax    r7, r7, r6
    usax    r8, r8, r7
    usax    r9, r9, r8
    usax    r10, r10, r9
    usax    r11, r11, r10
    usax    r12, r12, r11
    usax    r1, r1, r12

    // loop 4
    usax    r2, r2, r1
    usax    r3, r3, r2
    usax    r4, r4, r3
    usax    r5, r5, r4
    usax    r6, r6, r5
    usax    r7, r7, r6
    usax    r8, r8, r7
    usax    r9, r9, r8
    usax    r10, r10, r9
    usax    r11, r11, r10
    usax    r12, r12, r11
    usax    r1, r1, r12

    // loop 5
    usax    r2, r2, r1
    usax    r3, r3, r2
    usax    r4, r4, r3
    usax    r5, r5, r4
    usax    r6, r6, r5
    usax    r7, r7, r6
    usax    r8, r8, r7
    usax    r9, r9, r8
    usax    r10, r10, r9
    usax    r11, r11, r10
    usax    r12, r12, r11
    usax    r1, r1, r12

    subs    r0, r0, #1
    bne     usaxMinTest_LOOP
    pop     {r4-r11, pc}

_usaxMaxTest:

    push    {r4-r11, lr}

usaxMaxTest_LOOP:

    // loop 1
    usax    r1, r0, r0
    usax    r2, r0, r0
    usax    r3, r0, r0
    usax    r4, r0, r0
    usax    r5, r0, r0
    usax    r6, r0, r0
    usax    r7, r0, r0
    usax    r8, r0, r0
    usax    r9, r0, r0
    usax    r10, r0, r0
    usax    r11, r0, r0
    usax    r12, r0, r0

    // loop 2
    usax    r1, r0, r0
    usax    r2, r0, r0
    usax    r3, r0, r0
    usax    r4, r0, r0
    usax    r5, r0, r0
    usax    r6, r0, r0
    usax    r7, r0, r0
    usax    r8, r0, r0
    usax    r9, r0, r0
    usax    r10, r0, r0
    usax    r11, r0, r0
    usax    r12, r0, r0

    // loop 3
    usax    r1, r0, r0
    usax    r2, r0, r0
    usax    r3, r0, r0
    usax    r4, r0, r0
    usax    r5, r0, r0
    usax    r6, r0, r0
    usax    r7, r0, r0
    usax    r8, r0, r0
    usax    r9, r0, r0
    usax    r10, r0, r0
    usax    r11, r0, r0
    usax    r12, r0, r0

    // loop 4
    usax    r1, r0, r0
    usax    r2, r0, r0
    usax    r3, r0, r0
    usax    r4, r0, r0
    usax    r5, r0, r0
    usax    r6, r0, r0
    usax    r7, r0, r0
    usax    r8, r0, r0
    usax    r9, r0, r0
    usax    r10, r0, r0
    usax    r11, r0, r0
    usax    r12, r0, r0

    // loop 5
    usax    r1, r0, r0
    usax    r2, r0, r0
    usax    r3, r0, r0
    usax    r4, r0, r0
    usax    r5, r0, r0
    usax    r6, r0, r0
    usax    r7, r0, r0
    usax    r8, r0, r0
    usax    r9, r0, r0
    usax    r10, r0, r0
    usax    r11, r0, r0
    usax    r12, r0, r0

    subs    r0, r0, #1
    bne     usaxMaxTest_LOOP
    pop     {r4-r11, pc}


_usub16MinTest:

    push    {r4-r11, lr}

usub16MinTest_LOOP:

    // loop 1
    usub16  r2, r2, r1
    usub16  r3, r3, r2
    usub16  r4, r4, r3
    usub16  r5, r5, r4
    usub16  r6, r6, r5
    usub16  r7, r7, r6
    usub16  r8, r8, r7
    usub16  r9, r9, r8
    usub16  r10, r10, r9
    usub16  r11, r11, r10
    usub16  r12, r12, r11
    usub16  r1, r1, r12

    // loop 2
    usub16  r2, r2, r1
    usub16  r3, r3, r2
    usub16  r4, r4, r3
    usub16  r5, r5, r4
    usub16  r6, r6, r5
    usub16  r7, r7, r6
    usub16  r8, r8, r7
    usub16  r9, r9, r8
    usub16  r10, r10, r9
    usub16  r11, r11, r10
    usub16  r12, r12, r11
    usub16  r1, r1, r12

    // loop 3
    usub16  r2, r2, r1
    usub16  r3, r3, r2
    usub16  r4, r4, r3
    usub16  r5, r5, r4
    usub16  r6, r6, r5
    usub16  r7, r7, r6
    usub16  r8, r8, r7
    usub16  r9, r9, r8
    usub16  r10, r10, r9
    usub16  r11, r11, r10
    usub16  r12, r12, r11
    usub16  r1, r1, r12

    // loop 4
    usub16  r2, r2, r1
    usub16  r3, r3, r2
    usub16  r4, r4, r3
    usub16  r5, r5, r4
    usub16  r6, r6, r5
    usub16  r7, r7, r6
    usub16  r8, r8, r7
    usub16  r9, r9, r8
    usub16  r10, r10, r9
    usub16  r11, r11, r10
    usub16  r12, r12, r11
    usub16  r1, r1, r12

    // loop 5
    usub16  r2, r2, r1
    usub16  r3, r3, r2
    usub16  r4, r4, r3
    usub16  r5, r5, r4
    usub16  r6, r6, r5
    usub16  r7, r7, r6
    usub16  r8, r8, r7
    usub16  r9, r9, r8
    usub16  r10, r10, r9
    usub16  r11, r11, r10
    usub16  r12, r12, r11
    usub16  r1, r1, r12

    subs    r0, r0, #1
    bne     usub16MinTest_LOOP
    pop     {r4-r11, pc}

_usub16MaxTest:

    push    {r4-r11, lr}

usub16MaxTest_LOOP:

    // loop 1
    usub16  r1, r0, r0
    usub16  r2, r0, r0
    usub16  r3, r0, r0
    usub16  r4, r0, r0
    usub16  r5, r0, r0
    usub16  r6, r0, r0
    usub16  r7, r0, r0
    usub16  r8, r0, r0
    usub16  r9, r0, r0
    usub16  r10, r0, r0
    usub16  r11, r0, r0
    usub16  r12, r0, r0

    // loop 2
    usub16  r1, r0, r0
    usub16  r2, r0, r0
    usub16  r3, r0, r0
    usub16  r4, r0, r0
    usub16  r5, r0, r0
    usub16  r6, r0, r0
    usub16  r7, r0, r0
    usub16  r8, r0, r0
    usub16  r9, r0, r0
    usub16  r10, r0, r0
    usub16  r11, r0, r0
    usub16  r12, r0, r0

    // loop 3
    usub16  r1, r0, r0
    usub16  r2, r0, r0
    usub16  r3, r0, r0
    usub16  r4, r0, r0
    usub16  r5, r0, r0
    usub16  r6, r0, r0
    usub16  r7, r0, r0
    usub16  r8, r0, r0
    usub16  r9, r0, r0
    usub16  r10, r0, r0
    usub16  r11, r0, r0
    usub16  r12, r0, r0

    // loop 4
    usub16  r1, r0, r0
    usub16  r2, r0, r0
    usub16  r3, r0, r0
    usub16  r4, r0, r0
    usub16  r5, r0, r0
    usub16  r6, r0, r0
    usub16  r7, r0, r0
    usub16  r8, r0, r0
    usub16  r9, r0, r0
    usub16  r10, r0, r0
    usub16  r11, r0, r0
    usub16  r12, r0, r0

    // loop 5
    usub16  r1, r0, r0
    usub16  r2, r0, r0
    usub16  r3, r0, r0
    usub16  r4, r0, r0
    usub16  r5, r0, r0
    usub16  r6, r0, r0
    usub16  r7, r0, r0
    usub16  r8, r0, r0
    usub16  r9, r0, r0
    usub16  r10, r0, r0
    usub16  r11, r0, r0
    usub16  r12, r0, r0

    subs    r0, r0, #1
    bne     usub16MaxTest_LOOP
    pop     {r4-r11, pc}


_usub8MinTest:

    push    {r4-r11, lr}

usub8MinTest_LOOP:

    // loop 1
    usub8   r2, r2, r1
    usub8   r3, r3, r2
    usub8   r4, r4, r3
    usub8   r5, r5, r4
    usub8   r6, r6, r5
    usub8   r7, r7, r6
    usub8   r8, r8, r7
    usub8   r9, r9, r8
    usub8   r10, r10, r9
    usub8   r11, r11, r10
    usub8   r12, r12, r11
    usub8   r1, r1, r12

    // loop 2
    usub8   r2, r2, r1
    usub8   r3, r3, r2
    usub8   r4, r4, r3
    usub8   r5, r5, r4
    usub8   r6, r6, r5
    usub8   r7, r7, r6
    usub8   r8, r8, r7
    usub8   r9, r9, r8
    usub8   r10, r10, r9
    usub8   r11, r11, r10
    usub8   r12, r12, r11
    usub8   r1, r1, r12

    // loop 3
    usub8   r2, r2, r1
    usub8   r3, r3, r2
    usub8   r4, r4, r3
    usub8   r5, r5, r4
    usub8   r6, r6, r5
    usub8   r7, r7, r6
    usub8   r8, r8, r7
    usub8   r9, r9, r8
    usub8   r10, r10, r9
    usub8   r11, r11, r10
    usub8   r12, r12, r11
    usub8   r1, r1, r12

    // loop 4
    usub8   r2, r2, r1
    usub8   r3, r3, r2
    usub8   r4, r4, r3
    usub8   r5, r5, r4
    usub8   r6, r6, r5
    usub8   r7, r7, r6
    usub8   r8, r8, r7
    usub8   r9, r9, r8
    usub8   r10, r10, r9
    usub8   r11, r11, r10
    usub8   r12, r12, r11
    usub8   r1, r1, r12

    // loop 5
    usub8   r2, r2, r1
    usub8   r3, r3, r2
    usub8   r4, r4, r3
    usub8   r5, r5, r4
    usub8   r6, r6, r5
    usub8   r7, r7, r6
    usub8   r8, r8, r7
    usub8   r9, r9, r8
    usub8   r10, r10, r9
    usub8   r11, r11, r10
    usub8   r12, r12, r11
    usub8   r1, r1, r12

    subs    r0, r0, #1
    bne     usub8MinTest_LOOP
    pop     {r4-r11, pc}

_usub8MaxTest:

    push    {r4-r11, lr}

usub8MaxTest_LOOP:

    // loop 1
    usub8   r1, r0, r0
    usub8   r2, r0, r0
    usub8   r3, r0, r0
    usub8   r4, r0, r0
    usub8   r5, r0, r0
    usub8   r6, r0, r0
    usub8   r7, r0, r0
    usub8   r8, r0, r0
    usub8   r9, r0, r0
    usub8   r10, r0, r0
    usub8   r11, r0, r0
    usub8   r12, r0, r0

    // loop 2
    usub8   r1, r0, r0
    usub8   r2, r0, r0
    usub8   r3, r0, r0
    usub8   r4, r0, r0
    usub8   r5, r0, r0
    usub8   r6, r0, r0
    usub8   r7, r0, r0
    usub8   r8, r0, r0
    usub8   r9, r0, r0
    usub8   r10, r0, r0
    usub8   r11, r0, r0
    usub8   r12, r0, r0

    // loop 3
    usub8   r1, r0, r0
    usub8   r2, r0, r0
    usub8   r3, r0, r0
    usub8   r4, r0, r0
    usub8   r5, r0, r0
    usub8   r6, r0, r0
    usub8   r7, r0, r0
    usub8   r8, r0, r0
    usub8   r9, r0, r0
    usub8   r10, r0, r0
    usub8   r11, r0, r0
    usub8   r12, r0, r0

    // loop 4
    usub8   r1, r0, r0
    usub8   r2, r0, r0
    usub8   r3, r0, r0
    usub8   r4, r0, r0
    usub8   r5, r0, r0
    usub8   r6, r0, r0
    usub8   r7, r0, r0
    usub8   r8, r0, r0
    usub8   r9, r0, r0
    usub8   r10, r0, r0
    usub8   r11, r0, r0
    usub8   r12, r0, r0

    // loop 5
    usub8   r1, r0, r0
    usub8   r2, r0, r0
    usub8   r3, r0, r0
    usub8   r4, r0, r0
    usub8   r5, r0, r0
    usub8   r6, r0, r0
    usub8   r7, r0, r0
    usub8   r8, r0, r0
    usub8   r9, r0, r0
    usub8   r10, r0, r0
    usub8   r11, r0, r0
    usub8   r12, r0, r0

    subs    r0, r0, #1
    bne     usub8MaxTest_LOOP
    pop     {r4-r11, pc}


_uxtabMinTest:

    push    {r4-r11, lr}

uxtabMinTest_LOOP:

    // loop 1
    uxtab   r2, r2, r1, ROR #8
    uxtab   r3, r3, r2, ROR #16
    uxtab   r4, r4, r3, ROR #24
    uxtab   r5, r5, r4, ROR #0
    uxtab   r6, r6, r5, ROR #8
    uxtab   r7, r7, r6, ROR #16
    uxtab   r8, r8, r7, ROR #24
    uxtab   r9, r9, r8, ROR #0
    uxtab   r10, r10, r9, ROR #8
    uxtab   r11, r11, r10, ROR #16
    uxtab   r12, r12, r11, ROR #24
    uxtab   r1, r1, r12, ROR #0

    // loop 2
    uxtab   r2, r2, r1, ROR #8
    uxtab   r3, r3, r2, ROR #16
    uxtab   r4, r4, r3, ROR #24
    uxtab   r5, r5, r4, ROR #0
    uxtab   r6, r6, r5, ROR #8
    uxtab   r7, r7, r6, ROR #16
    uxtab   r8, r8, r7, ROR #24
    uxtab   r9, r9, r8, ROR #0
    uxtab   r10, r10, r9, ROR #8
    uxtab   r11, r11, r10, ROR #16
    uxtab   r12, r12, r11, ROR #24
    uxtab   r1, r1, r12, ROR #0

    // loop 3
    uxtab   r2, r2, r1, ROR #8
    uxtab   r3, r3, r2, ROR #16
    uxtab   r4, r4, r3, ROR #24
    uxtab   r5, r5, r4, ROR #0
    uxtab   r6, r6, r5, ROR #8
    uxtab   r7, r7, r6, ROR #16
    uxtab   r8, r8, r7, ROR #24
    uxtab   r9, r9, r8, ROR #0
    uxtab   r10, r10, r9, ROR #8
    uxtab   r11, r11, r10, ROR #16
    uxtab   r12, r12, r11, ROR #24
    uxtab   r1, r1, r12, ROR #0

    // loop 4
    uxtab   r2, r2, r1, ROR #8
    uxtab   r3, r3, r2, ROR #16
    uxtab   r4, r4, r3, ROR #24
    uxtab   r5, r5, r4, ROR #0
    uxtab   r6, r6, r5, ROR #8
    uxtab   r7, r7, r6, ROR #16
    uxtab   r8, r8, r7, ROR #24
    uxtab   r9, r9, r8, ROR #0
    uxtab   r10, r10, r9, ROR #8
    uxtab   r11, r11, r10, ROR #16
    uxtab   r12, r12, r11, ROR #24
    uxtab   r1, r1, r12, ROR #0

    // loop 5
    uxtab   r2, r2, r1, ROR #8
    uxtab   r3, r3, r2, ROR #16
    uxtab   r4, r4, r3, ROR #24
    uxtab   r5, r5, r4, ROR #0
    uxtab   r6, r6, r5, ROR #8
    uxtab   r7, r7, r6, ROR #16
    uxtab   r8, r8, r7, ROR #24
    uxtab   r9, r9, r8, ROR #0
    uxtab   r10, r10, r9, ROR #8
    uxtab   r11, r11, r10, ROR #16
    uxtab   r12, r12, r11, ROR #24
    uxtab   r1, r1, r12, ROR #0

    subs    r0, r0, #1
    bne     uxtabMinTest_LOOP
    pop     {r4-r11, pc}

_uxtabMaxTest:

    push    {r4-r11, lr}

uxtabMaxTest_LOOP:

    // loop 1
    uxtab   r1, r0, r0
    uxtab   r2, r0, r0
    uxtab   r3, r0, r0
    uxtab   r4, r0, r0
    uxtab   r5, r0, r0
    uxtab   r6, r0, r0
    uxtab   r7, r0, r0
    uxtab   r8, r0, r0
    uxtab   r9, r0, r0
    uxtab   r10, r0, r0
    uxtab   r11, r0, r0
    uxtab   r12, r0, r0

    // loop 2
    uxtab   r1, r0, r0
    uxtab   r2, r0, r0
    uxtab   r3, r0, r0
    uxtab   r4, r0, r0
    uxtab   r5, r0, r0
    uxtab   r6, r0, r0
    uxtab   r7, r0, r0
    uxtab   r8, r0, r0
    uxtab   r9, r0, r0
    uxtab   r10, r0, r0
    uxtab   r11, r0, r0
    uxtab   r12, r0, r0

    // loop 3
    uxtab   r1, r0, r0
    uxtab   r2, r0, r0
    uxtab   r3, r0, r0
    uxtab   r4, r0, r0
    uxtab   r5, r0, r0
    uxtab   r6, r0, r0
    uxtab   r7, r0, r0
    uxtab   r8, r0, r0
    uxtab   r9, r0, r0
    uxtab   r10, r0, r0
    uxtab   r11, r0, r0
    uxtab   r12, r0, r0

    // loop 4
    uxtab   r1, r0, r0
    uxtab   r2, r0, r0
    uxtab   r3, r0, r0
    uxtab   r4, r0, r0
    uxtab   r5, r0, r0
    uxtab   r6, r0, r0
    uxtab   r7, r0, r0
    uxtab   r8, r0, r0
    uxtab   r9, r0, r0
    uxtab   r10, r0, r0
    uxtab   r11, r0, r0
    uxtab   r12, r0, r0

    // loop 5
    uxtab   r1, r0, r0
    uxtab   r2, r0, r0
    uxtab   r3, r0, r0
    uxtab   r4, r0, r0
    uxtab   r5, r0, r0
    uxtab   r6, r0, r0
    uxtab   r7, r0, r0
    uxtab   r8, r0, r0
    uxtab   r9, r0, r0
    uxtab   r10, r0, r0
    uxtab   r11, r0, r0
    uxtab   r12, r0, r0

    subs    r0, r0, #1
    bne     uxtabMaxTest_LOOP
    pop     {r4-r11, pc}


_uxtab16MinTest:

    push    {r4-r11, lr}

uxtab16MinTest_LOOP:

    // loop 1
    uxtab16 r2, r2, r1, ROR #0
    uxtab16 r3, r3, r2, ROR #8
    uxtab16 r4, r4, r3, ROR #16
    uxtab16 r5, r5, r4, ROR #24
    uxtab16 r6, r6, r5, ROR #0
    uxtab16 r7, r7, r6, ROR #8
    uxtab16 r8, r8, r7, ROR #16
    uxtab16 r9, r9, r8, ROR #24
    uxtab16 r10, r10, r9, ROR #0
    uxtab16 r11, r11, r10, ROR #8
    uxtab16 r12, r12, r11, ROR #16
    uxtab16 r1, r1, r12, ROR #24

    // loop 2
    uxtab16 r2, r2, r1, ROR #0
    uxtab16 r3, r3, r2, ROR #8
    uxtab16 r4, r4, r3, ROR #16
    uxtab16 r5, r5, r4, ROR #24
    uxtab16 r6, r6, r5, ROR #0
    uxtab16 r7, r7, r6, ROR #8
    uxtab16 r8, r8, r7, ROR #16
    uxtab16 r9, r9, r8, ROR #24
    uxtab16 r10, r10, r9, ROR #0
    uxtab16 r11, r11, r10, ROR #8
    uxtab16 r12, r12, r11, ROR #16
    uxtab16 r1, r1, r12, ROR #24

    // loop 3
    uxtab16 r2, r2, r1, ROR #0
    uxtab16 r3, r3, r2, ROR #8
    uxtab16 r4, r4, r3, ROR #16
    uxtab16 r5, r5, r4, ROR #24
    uxtab16 r6, r6, r5, ROR #0
    uxtab16 r7, r7, r6, ROR #8
    uxtab16 r8, r8, r7, ROR #16
    uxtab16 r9, r9, r8, ROR #24
    uxtab16 r10, r10, r9, ROR #0
    uxtab16 r11, r11, r10, ROR #8
    uxtab16 r12, r12, r11, ROR #16
    uxtab16 r1, r1, r12, ROR #24

    // loop 4
    uxtab16 r2, r2, r1, ROR #0
    uxtab16 r3, r3, r2, ROR #8
    uxtab16 r4, r4, r3, ROR #16
    uxtab16 r5, r5, r4, ROR #24
    uxtab16 r6, r6, r5, ROR #0
    uxtab16 r7, r7, r6, ROR #8
    uxtab16 r8, r8, r7, ROR #16
    uxtab16 r9, r9, r8, ROR #24
    uxtab16 r10, r10, r9, ROR #0
    uxtab16 r11, r11, r10, ROR #8
    uxtab16 r12, r12, r11, ROR #16
    uxtab16 r1, r1, r12, ROR #24

    // loop 5
    uxtab16 r2, r2, r1, ROR #0
    uxtab16 r3, r3, r2, ROR #8
    uxtab16 r4, r4, r3, ROR #16
    uxtab16 r5, r5, r4, ROR #24
    uxtab16 r6, r6, r5, ROR #0
    uxtab16 r7, r7, r6, ROR #8
    uxtab16 r8, r8, r7, ROR #16
    uxtab16 r9, r9, r8, ROR #24
    uxtab16 r10, r10, r9, ROR #0
    uxtab16 r11, r11, r10, ROR #8
    uxtab16 r12, r12, r11, ROR #16
    uxtab16 r1, r1, r12, ROR #24

    subs    r0, r0, #1
    bne     uxtab16MinTest_LOOP
    pop     {r4-r11, pc}

_uxtab16MaxTest:

    push    {r4-r11, lr}

uxtab16MaxTest_LOOP:

    // loop 1
    uxtab16 r1, r0, r0
    uxtab16 r2, r0, r0
    uxtab16 r3, r0, r0
    uxtab16 r4, r0, r0
    uxtab16 r5, r0, r0
    uxtab16 r6, r0, r0
    uxtab16 r7, r0, r0
    uxtab16 r8, r0, r0
    uxtab16 r9, r0, r0
    uxtab16 r10, r0, r0
    uxtab16 r11, r0, r0
    uxtab16 r12, r0, r0

    // loop 2
    uxtab16 r1, r0, r0
    uxtab16 r2, r0, r0
    uxtab16 r3, r0, r0
    uxtab16 r4, r0, r0
    uxtab16 r5, r0, r0
    uxtab16 r6, r0, r0
    uxtab16 r7, r0, r0
    uxtab16 r8, r0, r0
    uxtab16 r9, r0, r0
    uxtab16 r10, r0, r0
    uxtab16 r11, r0, r0
    uxtab16 r12, r0, r0

    // loop 3
    uxtab16 r1, r0, r0
    uxtab16 r2, r0, r0
    uxtab16 r3, r0, r0
    uxtab16 r4, r0, r0
    uxtab16 r5, r0, r0
    uxtab16 r6, r0, r0
    uxtab16 r7, r0, r0
    uxtab16 r8, r0, r0
    uxtab16 r9, r0, r0
    uxtab16 r10, r0, r0
    uxtab16 r11, r0, r0
    uxtab16 r12, r0, r0

    // loop 4
    uxtab16 r1, r0, r0
    uxtab16 r2, r0, r0
    uxtab16 r3, r0, r0
    uxtab16 r4, r0, r0
    uxtab16 r5, r0, r0
    uxtab16 r6, r0, r0
    uxtab16 r7, r0, r0
    uxtab16 r8, r0, r0
    uxtab16 r9, r0, r0
    uxtab16 r10, r0, r0
    uxtab16 r11, r0, r0
    uxtab16 r12, r0, r0

    // loop 5
    uxtab16 r1, r0, r0
    uxtab16 r2, r0, r0
    uxtab16 r3, r0, r0
    uxtab16 r4, r0, r0
    uxtab16 r5, r0, r0
    uxtab16 r6, r0, r0
    uxtab16 r7, r0, r0
    uxtab16 r8, r0, r0
    uxtab16 r9, r0, r0
    uxtab16 r10, r0, r0
    uxtab16 r11, r0, r0
    uxtab16 r12, r0, r0

    subs    r0, r0, #1
    bne     uxtab16MaxTest_LOOP
    pop     {r4-r11, pc}


_uxtahMinTest:

    push    {r4-r11, lr}

uxtahMinTest_LOOP:

    // loop 1
    uxtah   r2, r2, r1, ROR #0
    uxtah   r3, r3, r2, ROR #8
    uxtah   r4, r4, r3, ROR #16
    uxtah   r5, r5, r4, ROR #24
    uxtah   r6, r6, r5, ROR #0
    uxtah   r7, r7, r6, ROR #8
    uxtah   r8, r8, r7, ROR #16
    uxtah   r9, r9, r8, ROR #24
    uxtah   r10, r10, r9, ROR #0
    uxtah   r11, r11, r10, ROR #8
    uxtah   r12, r12, r11, ROR #16
    uxtah   r1, r1, r12, ROR #24

    // loop 2
    uxtah   r2, r2, r1, ROR #0
    uxtah   r3, r3, r2, ROR #8
    uxtah   r4, r4, r3, ROR #16
    uxtah   r5, r5, r4, ROR #24
    uxtah   r6, r6, r5, ROR #0
    uxtah   r7, r7, r6, ROR #8
    uxtah   r8, r8, r7, ROR #16
    uxtah   r9, r9, r8, ROR #24
    uxtah   r10, r10, r9, ROR #0
    uxtah   r11, r11, r10, ROR #8
    uxtah   r12, r12, r11, ROR #16
    uxtah   r1, r1, r12, ROR #24

    // loop 3
    uxtah   r2, r2, r1, ROR #0
    uxtah   r3, r3, r2, ROR #8
    uxtah   r4, r4, r3, ROR #16
    uxtah   r5, r5, r4, ROR #24
    uxtah   r6, r6, r5, ROR #0
    uxtah   r7, r7, r6, ROR #8
    uxtah   r8, r8, r7, ROR #16
    uxtah   r9, r9, r8, ROR #24
    uxtah   r10, r10, r9, ROR #0
    uxtah   r11, r11, r10, ROR #8
    uxtah   r12, r12, r11, ROR #16
    uxtah   r1, r1, r12, ROR #24

    // loop 4
    uxtah   r2, r2, r1, ROR #0
    uxtah   r3, r3, r2, ROR #8
    uxtah   r4, r4, r3, ROR #16
    uxtah   r5, r5, r4, ROR #24
    uxtah   r6, r6, r5, ROR #0
    uxtah   r7, r7, r6, ROR #8
    uxtah   r8, r8, r7, ROR #16
    uxtah   r9, r9, r8, ROR #24
    uxtah   r10, r10, r9, ROR #0
    uxtah   r11, r11, r10, ROR #8
    uxtah   r12, r12, r11, ROR #16
    uxtah   r1, r1, r12, ROR #24

    // loop 5
    uxtah   r2, r2, r1, ROR #0
    uxtah   r3, r3, r2, ROR #8
    uxtah   r4, r4, r3, ROR #16
    uxtah   r5, r5, r4, ROR #24
    uxtah   r6, r6, r5, ROR #0
    uxtah   r7, r7, r6, ROR #8
    uxtah   r8, r8, r7, ROR #16
    uxtah   r9, r9, r8, ROR #24
    uxtah   r10, r10, r9, ROR #0
    uxtah   r11, r11, r10, ROR #8
    uxtah   r12, r12, r11, ROR #16
    uxtah   r1, r1, r12, ROR #24

    subs    r0, r0, #1
    bne     uxtahMinTest_LOOP
    pop     {r4-r11, pc}

_uxtahMaxTest:

    push    {r4-r11, lr}

uxtahMaxTest_LOOP:

    // loop 1
    uxtah   r1, r0, r0
    uxtah   r2, r0, r0
    uxtah   r3, r0, r0
    uxtah   r4, r0, r0
    uxtah   r5, r0, r0
    uxtah   r6, r0, r0
    uxtah   r7, r0, r0
    uxtah   r8, r0, r0
    uxtah   r9, r0, r0
    uxtah   r10, r0, r0
    uxtah   r11, r0, r0
    uxtah   r12, r0, r0

    // loop 2
    uxtah   r1, r0, r0
    uxtah   r2, r0, r0
    uxtah   r3, r0, r0
    uxtah   r4, r0, r0
    uxtah   r5, r0, r0
    uxtah   r6, r0, r0
    uxtah   r7, r0, r0
    uxtah   r8, r0, r0
    uxtah   r9, r0, r0
    uxtah   r10, r0, r0
    uxtah   r11, r0, r0
    uxtah   r12, r0, r0

    // loop 3
    uxtah   r1, r0, r0
    uxtah   r2, r0, r0
    uxtah   r3, r0, r0
    uxtah   r4, r0, r0
    uxtah   r5, r0, r0
    uxtah   r6, r0, r0
    uxtah   r7, r0, r0
    uxtah   r8, r0, r0
    uxtah   r9, r0, r0
    uxtah   r10, r0, r0
    uxtah   r11, r0, r0
    uxtah   r12, r0, r0

    // loop 4
    uxtah   r1, r0, r0
    uxtah   r2, r0, r0
    uxtah   r3, r0, r0
    uxtah   r4, r0, r0
    uxtah   r5, r0, r0
    uxtah   r6, r0, r0
    uxtah   r7, r0, r0
    uxtah   r8, r0, r0
    uxtah   r9, r0, r0
    uxtah   r10, r0, r0
    uxtah   r11, r0, r0
    uxtah   r12, r0, r0

    // loop 5
    uxtah   r1, r0, r0
    uxtah   r2, r0, r0
    uxtah   r3, r0, r0
    uxtah   r4, r0, r0
    uxtah   r5, r0, r0
    uxtah   r6, r0, r0
    uxtah   r7, r0, r0
    uxtah   r8, r0, r0
    uxtah   r9, r0, r0
    uxtah   r10, r0, r0
    uxtah   r11, r0, r0
    uxtah   r12, r0, r0

    subs    r0, r0, #1
    bne     uxtahMaxTest_LOOP
    pop     {r4-r11, pc}


_uxtbMinTest:

    push    {r4-r11, lr}

uxtbMinTest_LOOP:

    // loop 1
    uxtb    r2, r1, ROR #0
    uxtb    r3, r2, ROR #8
    uxtb    r4, r3, ROR #16
    uxtb    r5, r4, ROR #24
    uxtb    r6, r5, ROR #0
    uxtb    r7, r6, ROR #8
    uxtb    r8, r7, ROR #16
    uxtb    r9, r8, ROR #24
    uxtb    r10, r9, ROR #0
    uxtb    r11, r10, ROR #8
    uxtb    r12, r11, ROR #16
    uxtb    r1, r12, ROR #24

    // loop 2
    uxtb    r2, r1, ROR #0
    uxtb    r3, r2, ROR #8
    uxtb    r4, r3, ROR #16
    uxtb    r5, r4, ROR #24
    uxtb    r6, r5, ROR #0
    uxtb    r7, r6, ROR #8
    uxtb    r8, r7, ROR #16
    uxtb    r9, r8, ROR #24
    uxtb    r10, r9, ROR #0
    uxtb    r11, r10, ROR #8
    uxtb    r12, r11, ROR #16
    uxtb    r1, r12, ROR #24

    // loop 3
    uxtb    r2, r1, ROR #0
    uxtb    r3, r2, ROR #8
    uxtb    r4, r3, ROR #16
    uxtb    r5, r4, ROR #24
    uxtb    r6, r5, ROR #0
    uxtb    r7, r6, ROR #8
    uxtb    r8, r7, ROR #16
    uxtb    r9, r8, ROR #24
    uxtb    r10, r9, ROR #0
    uxtb    r11, r10, ROR #8
    uxtb    r12, r11, ROR #16
    uxtb    r1, r12, ROR #24

    // loop 4
    uxtb    r2, r1, ROR #0
    uxtb    r3, r2, ROR #8
    uxtb    r4, r3, ROR #16
    uxtb    r5, r4, ROR #24
    uxtb    r6, r5, ROR #0
    uxtb    r7, r6, ROR #8
    uxtb    r8, r7, ROR #16
    uxtb    r9, r8, ROR #24
    uxtb    r10, r9, ROR #0
    uxtb    r11, r10, ROR #8
    uxtb    r12, r11, ROR #16
    uxtb    r1, r12, ROR #24

    // loop 5
    uxtb    r2, r1, ROR #0
    uxtb    r3, r2, ROR #8
    uxtb    r4, r3, ROR #16
    uxtb    r5, r4, ROR #24
    uxtb    r6, r5, ROR #0
    uxtb    r7, r6, ROR #8
    uxtb    r8, r7, ROR #16
    uxtb    r9, r8, ROR #24
    uxtb    r10, r9, ROR #0
    uxtb    r11, r10, ROR #8
    uxtb    r12, r11, ROR #16
    uxtb    r1, r12, ROR #24

    subs    r0, r0, #1
    bne     uxtbMinTest_LOOP
    pop     {r4-r11, pc}

_uxtbMaxTest:

    push    {r4-r11, lr}

uxtbMaxTest_LOOP:

    // loop 1
    uxtb    r1, r0
    uxtb    r2, r0
    uxtb    r3, r0
    uxtb    r4, r0
    uxtb    r5, r0
    uxtb    r6, r0
    uxtb    r7, r0
    uxtb    r8, r0
    uxtb    r9, r0
    uxtb    r10, r0
    uxtb    r11, r0
    uxtb    r12, r0

    // loop 2
    uxtb    r1, r0
    uxtb    r2, r0
    uxtb    r3, r0
    uxtb    r4, r0
    uxtb    r5, r0
    uxtb    r6, r0
    uxtb    r7, r0
    uxtb    r8, r0
    uxtb    r9, r0
    uxtb    r10, r0
    uxtb    r11, r0
    uxtb    r12, r0

    // loop 3
    uxtb    r1, r0
    uxtb    r2, r0
    uxtb    r3, r0
    uxtb    r4, r0
    uxtb    r5, r0
    uxtb    r6, r0
    uxtb    r7, r0
    uxtb    r8, r0
    uxtb    r9, r0
    uxtb    r10, r0
    uxtb    r11, r0
    uxtb    r12, r0

    // loop 4
    uxtb    r1, r0
    uxtb    r2, r0
    uxtb    r3, r0
    uxtb    r4, r0
    uxtb    r5, r0
    uxtb    r6, r0
    uxtb    r7, r0
    uxtb    r8, r0
    uxtb    r9, r0
    uxtb    r10, r0
    uxtb    r11, r0
    uxtb    r12, r0

    // loop 5
    uxtb    r1, r0
    uxtb    r2, r0
    uxtb    r3, r0
    uxtb    r4, r0
    uxtb    r5, r0
    uxtb    r6, r0
    uxtb    r7, r0
    uxtb    r8, r0
    uxtb    r9, r0
    uxtb    r10, r0
    uxtb    r11, r0
    uxtb    r12, r0

    subs    r0, r0, #1
    bne     uxtbMaxTest_LOOP
    pop     {r4-r11, pc}


_uxtb16MinTest:

    push    {r4-r11, lr}

uxtb16MinTest_LOOP:

    // loop 1
    uxtb16  r2, r1, ROR #0
    uxtb16  r3, r2, ROR #8
    uxtb16  r4, r3, ROR #16
    uxtb16  r5, r4, ROR #24
    uxtb16  r6, r5, ROR #0
    uxtb16  r7, r6, ROR #8
    uxtb16  r8, r7, ROR #16
    uxtb16  r9, r8, ROR #24
    uxtb16  r10, r9, ROR #0
    uxtb16  r11, r10, ROR #8
    uxtb16  r12, r11, ROR #16
    uxtb16  r1, r12, ROR #24

    // loop 2
    uxtb16  r2, r1, ROR #0
    uxtb16  r3, r2, ROR #8
    uxtb16  r4, r3, ROR #16
    uxtb16  r5, r4, ROR #24
    uxtb16  r6, r5, ROR #0
    uxtb16  r7, r6, ROR #8
    uxtb16  r8, r7, ROR #16
    uxtb16  r9, r8, ROR #24
    uxtb16  r10, r9, ROR #0
    uxtb16  r11, r10, ROR #8
    uxtb16  r12, r11, ROR #16
    uxtb16  r1, r12, ROR #24

    // loop 3
    uxtb16  r2, r1, ROR #0
    uxtb16  r3, r2, ROR #8
    uxtb16  r4, r3, ROR #16
    uxtb16  r5, r4, ROR #24
    uxtb16  r6, r5, ROR #0
    uxtb16  r7, r6, ROR #8
    uxtb16  r8, r7, ROR #16
    uxtb16  r9, r8, ROR #24
    uxtb16  r10, r9, ROR #0
    uxtb16  r11, r10, ROR #8
    uxtb16  r12, r11, ROR #16
    uxtb16  r1, r12, ROR #24

    // loop 4
    uxtb16  r2, r1, ROR #0
    uxtb16  r3, r2, ROR #8
    uxtb16  r4, r3, ROR #16
    uxtb16  r5, r4, ROR #24
    uxtb16  r6, r5, ROR #0
    uxtb16  r7, r6, ROR #8
    uxtb16  r8, r7, ROR #16
    uxtb16  r9, r8, ROR #24
    uxtb16  r10, r9, ROR #0
    uxtb16  r11, r10, ROR #8
    uxtb16  r12, r11, ROR #16
    uxtb16  r1, r12, ROR #24

    // loop 5
    uxtb16  r2, r1, ROR #0
    uxtb16  r3, r2, ROR #8
    uxtb16  r4, r3, ROR #16
    uxtb16  r5, r4, ROR #24
    uxtb16  r6, r5, ROR #0
    uxtb16  r7, r6, ROR #8
    uxtb16  r8, r7, ROR #16
    uxtb16  r9, r8, ROR #24
    uxtb16  r10, r9, ROR #0
    uxtb16  r11, r10, ROR #8
    uxtb16  r12, r11, ROR #16
    uxtb16  r1, r12, ROR #24

    subs    r0, r0, #1
    bne     uxtb16MinTest_LOOP
    pop     {r4-r11, pc}

_uxtb16MaxTest:

    push    {r4-r11, lr}

uxtb16MaxTest_LOOP:

    // loop 1
    uxtb16  r1, r0
    uxtb16  r2, r0
    uxtb16  r3, r0
    uxtb16  r4, r0
    uxtb16  r5, r0
    uxtb16  r6, r0
    uxtb16  r7, r0
    uxtb16  r8, r0
    uxtb16  r9, r0
    uxtb16  r10, r0
    uxtb16  r11, r0
    uxtb16  r12, r0

    // loop 2
    uxtb16  r1, r0
    uxtb16  r2, r0
    uxtb16  r3, r0
    uxtb16  r4, r0
    uxtb16  r5, r0
    uxtb16  r6, r0
    uxtb16  r7, r0
    uxtb16  r8, r0
    uxtb16  r9, r0
    uxtb16  r10, r0
    uxtb16  r11, r0
    uxtb16  r12, r0

    // loop 3
    uxtb16  r1, r0
    uxtb16  r2, r0
    uxtb16  r3, r0
    uxtb16  r4, r0
    uxtb16  r5, r0
    uxtb16  r6, r0
    uxtb16  r7, r0
    uxtb16  r8, r0
    uxtb16  r9, r0
    uxtb16  r10, r0
    uxtb16  r11, r0
    uxtb16  r12, r0

    // loop 4
    uxtb16  r1, r0
    uxtb16  r2, r0
    uxtb16  r3, r0
    uxtb16  r4, r0
    uxtb16  r5, r0
    uxtb16  r6, r0
    uxtb16  r7, r0
    uxtb16  r8, r0
    uxtb16  r9, r0
    uxtb16  r10, r0
    uxtb16  r11, r0
    uxtb16  r12, r0

    // loop 5
    uxtb16  r1, r0
    uxtb16  r2, r0
    uxtb16  r3, r0
    uxtb16  r4, r0
    uxtb16  r5, r0
    uxtb16  r6, r0
    uxtb16  r7, r0
    uxtb16  r8, r0
    uxtb16  r9, r0
    uxtb16  r10, r0
    uxtb16  r11, r0
    uxtb16  r12, r0

    subs    r0, r0, #1
    bne     uxtb16MaxTest_LOOP
    pop     {r4-r11, pc}


_uxthMinTest:

    push    {r4-r11, lr}

uxthMinTest_LOOP:

    // loop 1
    uxth    r2, r1, ROR #0
    uxth    r3, r2, ROR #8
    uxth    r4, r3, ROR #16
    uxth    r5, r4, ROR #24
    uxth    r6, r5, ROR #0
    uxth    r7, r6, ROR #8
    uxth    r8, r7, ROR #16
    uxth    r9, r8, ROR #24
    uxth    r10, r9, ROR #0
    uxth    r11, r10, ROR #8
    uxth    r12, r11, ROR #16
    uxth    r1, r12, ROR #24

    // loop 2
    uxth    r2, r1, ROR #0
    uxth    r3, r2, ROR #8
    uxth    r4, r3, ROR #16
    uxth    r5, r4, ROR #24
    uxth    r6, r5, ROR #0
    uxth    r7, r6, ROR #8
    uxth    r8, r7, ROR #16
    uxth    r9, r8, ROR #24
    uxth    r10, r9, ROR #0
    uxth    r11, r10, ROR #8
    uxth    r12, r11, ROR #16
    uxth    r1, r12, ROR #24

    // loop 3
    uxth    r2, r1, ROR #0
    uxth    r3, r2, ROR #8
    uxth    r4, r3, ROR #16
    uxth    r5, r4, ROR #24
    uxth    r6, r5, ROR #0
    uxth    r7, r6, ROR #8
    uxth    r8, r7, ROR #16
    uxth    r9, r8, ROR #24
    uxth    r10, r9, ROR #0
    uxth    r11, r10, ROR #8
    uxth    r12, r11, ROR #16
    uxth    r1, r12, ROR #24

    // loop 4
    uxth    r2, r1, ROR #0
    uxth    r3, r2, ROR #8
    uxth    r4, r3, ROR #16
    uxth    r5, r4, ROR #24
    uxth    r6, r5, ROR #0
    uxth    r7, r6, ROR #8
    uxth    r8, r7, ROR #16
    uxth    r9, r8, ROR #24
    uxth    r10, r9, ROR #0
    uxth    r11, r10, ROR #8
    uxth    r12, r11, ROR #16
    uxth    r1, r12, ROR #24

    // loop 5
    uxth    r2, r1, ROR #0
    uxth    r3, r2, ROR #8
    uxth    r4, r3, ROR #16
    uxth    r5, r4, ROR #24
    uxth    r6, r5, ROR #0
    uxth    r7, r6, ROR #8
    uxth    r8, r7, ROR #16
    uxth    r9, r8, ROR #24
    uxth    r10, r9, ROR #0
    uxth    r11, r10, ROR #8
    uxth    r12, r11, ROR #16
    uxth    r1, r12, ROR #24

    subs    r0, r0, #1
    bne     uxthMinTest_LOOP
    pop     {r4-r11, pc}

_uxthMaxTest:

    push    {r4-r11, lr}

uxthMaxTest_LOOP:

    // loop 1
    uxth    r1, r0
    uxth    r2, r0
    uxth    r3, r0
    uxth    r4, r0
    uxth    r5, r0
    uxth    r6, r0
    uxth    r7, r0
    uxth    r8, r0
    uxth    r9, r0
    uxth    r10, r0
    uxth    r11, r0
    uxth    r12, r0

    // loop 2
    uxth    r1, r0
    uxth    r2, r0
    uxth    r3, r0
    uxth    r4, r0
    uxth    r5, r0
    uxth    r6, r0
    uxth    r7, r0
    uxth    r8, r0
    uxth    r9, r0
    uxth    r10, r0
    uxth    r11, r0
    uxth    r12, r0

    // loop 3
    uxth    r1, r0
    uxth    r2, r0
    uxth    r3, r0
    uxth    r4, r0
    uxth    r5, r0
    uxth    r6, r0
    uxth    r7, r0
    uxth    r8, r0
    uxth    r9, r0
    uxth    r10, r0
    uxth    r11, r0
    uxth    r12, r0

    // loop 4
    uxth    r1, r0
    uxth    r2, r0
    uxth    r3, r0
    uxth    r4, r0
    uxth    r5, r0
    uxth    r6, r0
    uxth    r7, r0
    uxth    r8, r0
    uxth    r9, r0
    uxth    r10, r0
    uxth    r11, r0
    uxth    r12, r0

    // loop 5
    uxth    r1, r0
    uxth    r2, r0
    uxth    r3, r0
    uxth    r4, r0
    uxth    r5, r0
    uxth    r6, r0
    uxth    r7, r0
    uxth    r8, r0
    uxth    r9, r0
    uxth    r10, r0
    uxth    r11, r0
    uxth    r12, r0

    subs    r0, r0, #1
    bne     uxthMaxTest_LOOP
    pop     {r4-r11, pc}



