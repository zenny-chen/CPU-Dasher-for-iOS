//
//  neon.s
//  CPU Dasher
//
//  Created by zenny_chen on 12-8-6.
//
//

.text
.align 4

.globl _vabaS32MinTest, _vabaS32MaxTest, _vabalS32MinTest, _vabalS32MaxTest
.globl _vabdI4MinTest, _vabdI4MaxTest, _vabdF4MinTest, _vabdF4MaxTest, _vabdlI2MinTest, _vabdlI2MaxTest
.globl _vabsFMinTest, _vabsFMaxTest, _vabsDMinTest, _vabsDMaxTest, _vabsI4MinTest, _vabsI4MaxTest, _vabsF4MinTest, _vabsF4MaxTest
.globl _vacgeF4MinTest, _vacgeF4MaxTest
.globl _vaddFMinTest, _vaddFMaxTest, _vaddDMinTest, _vaddDMaxTest, _vaddI4MinTest, _vaddI4MaxTest, _vaddF4MinTest, _vaddF4MaxTest, _vaddL2MinTest, _vaddL2MaxTest
.globl _vaddhnI4MinTest, _vaddhnI4MaxTest, _vaddhnL2MinTest, _vaddhnL2MaxTest
.globl _vaddlI2MinTest, _vaddlI2MaxTest, _vaddwI4MinTest, _vaddwI4MaxTest
.globl _vandI4MinTest, _vandI4MaxTest
.globl _vbicImmMinTest, _vbicImmMaxTest, _vbicI4MinTest, _vbicI4MaxTest
.globl _vbifMinTest, _vbifMaxTest, _vbitMinTest, _vbitMaxTest, _vbifMinTest, _vbslMinTest, _vbslMaxTest
.globl _vceqI4RegMinTest, _vceqI4RegMaxTest, _vceqF4RegMinTest, _vceqF4RegMaxTest, _vceqI4ImmMinTest, _vceqI4ImmMaxTest, _vceqF4ImmMinTest, _vceqF4ImmMaxTest
.globl _vcgeI4RegMinTest, _vcgeI4RegMaxTest, _vcgeF4RegMinTest, _vcgeF4RegMaxTest, _vcgeI4ImmMinTest, _vcgeI4ImmMaxTest, _vcgeF4ImmMinTest, _vcgeF4ImmMaxTest
.globl _vcgtI4RegMinTest, _vcgtI4RegMaxTest, _vcgtF4RegMinTest, _vcgtF4RegMaxTest, _vcgtI4ImmMinTest, _vcgtI4ImmMaxTest, _vcgtF4ImmMinTest, _vcgtF4ImmMaxTest
.globl _vcleI4RegMinTest, _vcleI4RegMaxTest, _vcleF4RegMinTest, _vcleF4RegMaxTest, _vcleI4ImmMinTest, _vcleI4ImmMaxTest, _vcleF4ImmMinTest, _vcleF4ImmMaxTest
.globl _vclsI4MinTest, _vclsI4MaxTest
.globl _vclzI4MinTest, _vclzI4MaxTest
.globl _vcmpImmFMinTest, _vcmpImmFMaxTest, _vcmpImmDMinTest, _vcmpImmDMaxTest, _vcmpRegFMinTest, _vcmpRegFMaxTest, _vcmpRegDMinTest, _vcmpRegDMaxTest
.globl _vcntMinTest, _vcntMaxTest
.globl _vcvtI4F4MinTest, _vcvtI4F4MaxTest, _vcvtF4I4MinTest, _vcvtF4I4MaxTest
.globl _vcvtIFMinTest, _vcvtIFMaxTest, _vcvtIDMinTest, _vcvtIDMaxTest, _vcvtFIMinTest, _vcvtFIMaxTest, _vcvtDIMinTest, _vcvtDIMaxTest
.globl _vcvtI4F4FixedMinTest, _vcvtI4F4FixedMaxTest, _vcvtF4I4FixedMinTest, _vcvtF4I4FixedMaxTest
.globl _vcvtIFFixedMinTest, _vcvtIFFixedMaxTest, _vcvtIDFixedMinTest, _vcvtIDFixedMaxTest, _vcvtFIFixedMinTest, _vcvtFIFixedMaxTest, _vcvtDIFixedMinTest, _vcvtDIFixedMaxTest
.globl _vcvtFDMinTest, _vcvtFDMaxTest, _vcvtDFMinTest, _vcvtDFMaxTest
.globl _vcvtf16Tof32MinTest, _vcvtf16Tof32MaxTest, _vcvtf32Tof16MinTest, _vcvtf32Tof16MaxTest
.globl _vcvtbf16Tof32MinTest, _vcvtbf16Tof32MaxTest, _vcvtbf32Tof16MinTest, _vcvtbf32Tof16MaxTest
.globl _vdivFMinTest, _vdivFMaxTest, _vdivDMinTest, _vdivDMaxTest
.globl _vdupScalarMinTest, _vdupScalarMaxTest, _vdupRegMinTest, _vdupRegMaxTest
.globl _veorMinTest, _veorMaxTest
.globl _vextMinTest, _vextMaxTest
.globl _vfmaF4MinTest, _vfmaF4MaxTest, _vfmaDMinTest, _vfmaDMaxTest, _vfmaFMinTest, _vfmaFMaxTest
.globl _vfmsF4MinTest, _vfmsF4MaxTest, _vfmsDMinTest, _vfmsDMaxTest, _vfmsFMinTest, _vfmsFMaxTest
.globl _vfnmaDMinTest, _vfnmaDMaxTest, _vfnmaFMinTest, _vfnmaFMaxTest
.globl _vfnmsDMinTest, _vfnmsDMaxTest, _vfnmsFMinTest, _vfnmsFMaxTest
.globl _vhaddI4MinTest, _vhaddI4MaxTest
.globl _vhsubI4MinTest, _vhsubI4MaxTest
.globl _vmaxI4MinTest, _vmaxI4MaxTest, _vmaxF4MinTest, _vmaxF4MaxTest
.globl _vminI4MinTest, _vminI4MaxTest, _vminF4MinTest, _vminF4MaxTest
.globl _vmlaI4MinTest, _vmlaI4MaxTest, _vmlaF4MinTest, _vmlaF4MaxTest, _vmlaFMinTest, _vmlaFMaxTest, _vmlaDMinTest, _vmlaDMaxTest
.globl _vmlalI4MinTest, _vmlalI4MaxTest
.globl _vmlsI4MinTest, _vmlsI4MaxTest, _vmlsF4MinTest, _vmlsF4MaxTest, _vmlsFMinTest, _vmlsFMaxTest, _vmlsDMinTest, _vmlsDMaxTest
.globl _vmlslI4MinTest, _vmlslI4MaxTest
.globl _vmlaI4ScalarMinTest, _vmlaI4ScalarMaxTest, _vmlaF4ScalarMinTest, _vmlaF4ScalarMaxTest
.globl _vmlalI4ScalarMinTest, _vmlalI4ScalarMaxTest
.globl _vmlsI4ScalarMinTest, _vmlsI4ScalarMaxTest, _vmlsF4ScalarMinTest, _vmlsF4ScalarMaxTest
.globl _vmlslI4ScalarMinTest, _vmlslI4ScalarMaxTest
.globl _vmovI4ImmMinTest, _vmovI4ImmMaxTest, _vmovF4ImmMinTest, _vmovF4ImmMaxTest, _vmovFImmMinTest, _vmovFImmMaxTest, _vmovDImmMinTest, _vmovDImmMaxTest
.globl _vmovI4MinTest, _vmovI4MaxTest, _vmovF4MinTest, _vmovF4MaxTest, _vmovFMinTest, _vmovFMaxTest, _vmovDMinTest, _vmovDMaxTest
.globl _vmovScalarRegMinTest, _vmovScalarRegMaxTest, _vmovRegScalarMinTest, _vmovRegScalarMaxTest
.globl _vmovSRegMinTest, _vmovSRegMaxTest, _vmovRegSMinTest, _vmovRegSMaxTest
.globl _vmovSRegDualMinTest, _vmovSRegDualMaxTest, _vmovRegSDualMinTest, _vmovRegSDualMaxTest
.globl _vmovDRegDualMinTest, _vmovDRegDualMaxTest, _vmovRegDDualMinTest, _vmovRegDDualMaxTest
.globl _vmovlI4MinTest, _vmovlI4MaxTest
.globl _vmovnI4MinTest, _vmovnI4MaxTest
.globl _vmulI4MinTest, _vmulI4MaxTest, _vmulF4MinTest, _vmulF4MaxTest, _vmulFMinTest, _vmulFMaxTest, _vmulDMinTest, _vmulDMaxTest
.globl _vmullI4MinTest, _vmullI4MaxTest
.globl _vmulI4ScalarMinTest, _vmulI4ScalarMaxTest, _vmulF4ScalarMinTest, _vmulF4ScalarMaxTest
.globl _vmullI4ScalarMinTest, _vmullI4ScalarMaxTest
.globl _vmvnImmMinTest, _vmvnImmMaxTest, _vmvnMinTest, _vmvnMaxTest
.globl _vnegI4MinTest, _vnegI4MaxTest, _vnegF4MinTest, _vnegF4MaxTest, _vnegFMinTest, _vnegFMaxTest, _vnegDMinTest, _vnegDMaxTest
.globl _vnmlaSMinTest, _vnmlaSMaxTest, _vnmlaDMinTest, _vnmlaDMaxTest
.globl _vnmlsSMinTest, _vnmlsSMaxTest, _vnmlsDMinTest, _vnmlsDMaxTest
.globl _vnmulSMinTest, _vnmulSMaxTest, _vnmulDMinTest, _vnmulDMaxTest
.globl _vornMinTest, _vornMaxTest
.globl _vorrImmMinTest, _vorrImmMaxTest, _vorrMinTest, _vorrMaxTest
.globl _vpadalI4MinTest, _vpadalI4MaxTest
.globl _vpaddI4MinTest, _vpaddI4MaxTest, _vpaddF4MinTest, _vpaddF4MaxTest
.globl _vpaddlI4MinTest, _vpaddlI4MaxTest
.globl _vpmaxI4MinTest, _vpmaxI4MaxTest, _vpmaxF4MinTest, _vpmaxF4MaxTest
.globl _vpminI4MinTest, _vpminI4MaxTest, _vpminF4MinTest, _vpminF4MaxTest
.globl _vqabsI4MinTest, _vqabsI4MaxTest
.globl _vqaddI4MinTest, _vqaddI4MaxTest
.globl _vqdmlalI2MinTest, _vqdmlalI2MaxTest, _vqdmlalI2ScalarMinTest, _vqdmlalI2ScalarMaxTest
.globl _vqdmlslI2MinTest, _vqdmlslI2MaxTest, _vqdmlslI2ScalarMinTest, _vqdmlslI2ScalarMaxTest
.globl _vqdmulhI4MinTest, _vqdmulhI4MaxTest, _vqdmulhI4ScalarMinTest, _vqdmulhI4ScalarMaxTest
.globl _vqdmullI4MinTest, _vqdmullI4MaxTest, _vqdmullI4ScalarMinTest, _vqdmullI4ScalarMaxTest
.globl _vqmovnI4MinTest, _vqmovnI4MaxTest
.globl _vqnegI4MinTest, _vqnegI4MaxTest
.globl _vqrdmulhI4MinTest, _vqrdmulhI4MaxTest
.globl _vqrshlI4MinTest, _vqrshlI4MaxTest
.globl _vqrshrnI4MinTest, _vqrshrnI4MaxTest
.globl _vqrshrnI4MinTest, _vqrshrnI4MaxTest
.globl _vqshlI4MinTest, _vqshlI4MaxTest, _vqshlImmI4MinTest, _vqshlImmI4MaxTest
.globl _vqshrnI4MinTest, _vqshrnI4MaxTest
.globl _vqsubI4MinTest, _vqsubI4MaxTest
.globl _vraddhnI4MinTest, _vraddhnI4MaxTest
.globl _vrecpeI4MinTest, _vrecpeI4MaxTest, _vrecpeF4MinTest, _vrecpeF4MaxTest
.globl _vrecpsF4MinTest, _vrecpsF4MaxTest
.globl _vrev16MinTest, _vrev16MaxTest
.globl _vrev32MinTest, _vrev32MaxTest
.globl _vrev64MinTest, _vrev64MaxTest
.globl _vrhaddI4MinTest, _vrhaddI4MaxTest
.globl _vrshlI4MinTest, _vrshlI4MaxTest
.globl _vrshrI4MinTest, _vrshrI4MaxTest
.globl _vrshrnI4MinTest, _vrshrnI4MaxTest
.globl _vrsqrteI4MinTest, _vrsqrteI4MaxTest, _vrsqrteF4MinTest, _vrsqrteF4MaxTest
.globl _vrsqrtsF4MinTest, _vrsqrtsF4MaxTest
.globl _vrsraI4MinTest, _vrsraI4MaxTest
.globl _vrsubhnI4MinTest, _vrsubhnI4MaxTest
.globl _vshlImmMinTest, _vshlImmMaxTest, _vshlMinTest, _vshlMaxTest
.globl _vshllI2MinTest, _vshllI2MaxTest
.globl _vshrI4MinTest, _vshrI4MaxTest
.globl _vshrnI4MinTest, _vshrnI4MaxTest
.globl _vsliI4MinTest, _vsliI4MaxTest
.globl _vsqrtFMinTest, _vsqrtFMaxTest,_vsqrtDMinTest, _vsqrtDMaxTest
.globl _vsraI4MinTest, _vsraI4MaxTest
.globl _vsriI4MinTest, _vsriI4MaxTest
.globl _vsubI4MinTest, _vsubI4MaxTest, _vsubF4MinTest, _vsubF4MaxTest, _vsubFMinTest, _vsubFMaxTest, _vsubDMinTest, _vsubDMaxTest
.globl _vsubhnI4MinTest, _vsubhnI4MaxTest
.globl _vsublI4MinTest, _vsublI4MaxTest
.globl _vsubwI4MinTest, _vsubwI4MaxTest
.globl _vswpMinTest, _vswpMaxTest
.globl _vtblMinTest, _vtblMaxTest
.globl _vtrnI4MinTest, _vtrnI4MaxTest
.globl _vtstI4MinTest, _vtstI4MaxTest
.globl _vuzpI4MinTest, _vuzpI4MaxTest
.globl _vzipI4MinTest, _vzipI4MaxTest


.arm

_vabaS32MinTest:

    vpush.64    {d8-d15}

vabaS32MinTest_LOOP:

    // loop 1
    vaba.s32    q0, q0, q11
    vaba.s32    q1, q1, q0
    vaba.s32    q2, q2, q1
    vaba.s32    q3, q3, q2
    vaba.s32    q4, q4, q3
    vaba.s32    q5, q5, q4
    vaba.s32    q6, q6, q5
    vaba.s32    q7, q7, q6
    vaba.s32    q8, q8, q7
    vaba.s32    q9, q9, q8
    vaba.s32    q10, q10, q9
    vaba.s32    q11, q11, q10
    
    // loop 2
    vaba.s32    q0, q0, q11
    vaba.s32    q1, q1, q0
    vaba.s32    q2, q2, q1
    vaba.s32    q3, q3, q2
    vaba.s32    q4, q4, q3
    vaba.s32    q5, q5, q4
    vaba.s32    q6, q6, q5
    vaba.s32    q7, q7, q6
    vaba.s32    q8, q8, q7
    vaba.s32    q9, q9, q8
    vaba.s32    q10, q10, q9
    vaba.s32    q11, q11, q10

    // loop 3
    vaba.s32    q0, q0, q11
    vaba.s32    q1, q1, q0
    vaba.s32    q2, q2, q1
    vaba.s32    q3, q3, q2
    vaba.s32    q4, q4, q3
    vaba.s32    q5, q5, q4
    vaba.s32    q6, q6, q5
    vaba.s32    q7, q7, q6
    vaba.s32    q8, q8, q7
    vaba.s32    q9, q9, q8
    vaba.s32    q10, q10, q9
    vaba.s32    q11, q11, q10

    // loop 4
    vaba.s32    q0, q0, q11
    vaba.s32    q1, q1, q0
    vaba.s32    q2, q2, q1
    vaba.s32    q3, q3, q2
    vaba.s32    q4, q4, q3
    vaba.s32    q5, q5, q4
    vaba.s32    q6, q6, q5
    vaba.s32    q7, q7, q6
    vaba.s32    q8, q8, q7
    vaba.s32    q9, q9, q8
    vaba.s32    q10, q10, q9
    vaba.s32    q11, q11, q10

    // loop 5
    vaba.s32    q0, q0, q11
    vaba.s32    q1, q1, q0
    vaba.s32    q2, q2, q1
    vaba.s32    q3, q3, q2
    vaba.s32    q4, q4, q3
    vaba.s32    q5, q5, q4
    vaba.s32    q6, q6, q5
    vaba.s32    q7, q7, q6
    vaba.s32    q8, q8, q7
    vaba.s32    q9, q9, q8
    vaba.s32    q10, q10, q9
    vaba.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vabaS32MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabaS32MaxTest:

    vpush.64    {d8-d15}

vabaS32MaxTest_LOOP:

    // loop 1
    vaba.s32    q1, q0, q0
    vaba.s32    q2, q0, q0
    vaba.s32    q3, q0, q0
    vaba.s32    q4, q0, q0
    vaba.s32    q5, q0, q0
    vaba.s32    q6, q0, q0
    vaba.s32    q7, q0, q0
    vaba.s32    q8, q0, q0
    vaba.s32    q9, q0, q0
    vaba.s32    q10, q0, q0
    vaba.s32    q11, q0, q0
    vaba.s32    q12, q0, q0

    // loop 2
    vaba.s32    q1, q0, q0
    vaba.s32    q2, q0, q0
    vaba.s32    q3, q0, q0
    vaba.s32    q4, q0, q0
    vaba.s32    q5, q0, q0
    vaba.s32    q6, q0, q0
    vaba.s32    q7, q0, q0
    vaba.s32    q8, q0, q0
    vaba.s32    q9, q0, q0
    vaba.s32    q10, q0, q0
    vaba.s32    q11, q0, q0
    vaba.s32    q12, q0, q0

    // loop 3
    vaba.s32    q1, q0, q0
    vaba.s32    q2, q0, q0
    vaba.s32    q3, q0, q0
    vaba.s32    q4, q0, q0
    vaba.s32    q5, q0, q0
    vaba.s32    q6, q0, q0
    vaba.s32    q7, q0, q0
    vaba.s32    q8, q0, q0
    vaba.s32    q9, q0, q0
    vaba.s32    q10, q0, q0
    vaba.s32    q11, q0, q0
    vaba.s32    q12, q0, q0

    // loop 4
    vaba.s32    q1, q0, q0
    vaba.s32    q2, q0, q0
    vaba.s32    q3, q0, q0
    vaba.s32    q4, q0, q0
    vaba.s32    q5, q0, q0
    vaba.s32    q6, q0, q0
    vaba.s32    q7, q0, q0
    vaba.s32    q8, q0, q0
    vaba.s32    q9, q0, q0
    vaba.s32    q10, q0, q0
    vaba.s32    q11, q0, q0
    vaba.s32    q12, q0, q0

    // loop 5
    vaba.s32    q1, q0, q0
    vaba.s32    q2, q0, q0
    vaba.s32    q3, q0, q0
    vaba.s32    q4, q0, q0
    vaba.s32    q5, q0, q0
    vaba.s32    q6, q0, q0
    vaba.s32    q7, q0, q0
    vaba.s32    q8, q0, q0
    vaba.s32    q9, q0, q0
    vaba.s32    q10, q0, q0
    vaba.s32    q11, q0, q0
    vaba.s32    q12, q0, q0

    subs    r0, r0, #1
    bne     vabaS32MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vabalS32MinTest:

    vpush.64    {d8-d15}

vabalS32MinTest_LOOP:

    // loop 1
    vabal.s32   q0, d22, d23
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d2, d3
    vabal.s32   q3, d4, d5
    vabal.s32   q4, d6, d7
    vabal.s32   q5, d8, d9
    vabal.s32   q6, d10, d11
    vabal.s32   q7, d12, d13
    vabal.s32   q8, d14, d15
    vabal.s32   q9, d16, d17
    vabal.s32   q10, d18, d19
    vabal.s32   q11, d20, d21

    // loop 2
    vabal.s32   q0, d22, d23
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d2, d3
    vabal.s32   q3, d4, d5
    vabal.s32   q4, d6, d7
    vabal.s32   q5, d8, d9
    vabal.s32   q6, d10, d11
    vabal.s32   q7, d12, d13
    vabal.s32   q8, d14, d15
    vabal.s32   q9, d16, d17
    vabal.s32   q10, d18, d19
    vabal.s32   q11, d20, d21

    // loop 3
    vabal.s32   q0, d22, d23
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d2, d3
    vabal.s32   q3, d4, d5
    vabal.s32   q4, d6, d7
    vabal.s32   q5, d8, d9
    vabal.s32   q6, d10, d11
    vabal.s32   q7, d12, d13
    vabal.s32   q8, d14, d15
    vabal.s32   q9, d16, d17
    vabal.s32   q10, d18, d19
    vabal.s32   q11, d20, d21

    // loop 4
    vabal.s32   q0, d22, d23
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d2, d3
    vabal.s32   q3, d4, d5
    vabal.s32   q4, d6, d7
    vabal.s32   q5, d8, d9
    vabal.s32   q6, d10, d11
    vabal.s32   q7, d12, d13
    vabal.s32   q8, d14, d15
    vabal.s32   q9, d16, d17
    vabal.s32   q10, d18, d19
    vabal.s32   q11, d20, d21

    // loop 5
    vabal.s32   q0, d22, d23
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d2, d3
    vabal.s32   q3, d4, d5
    vabal.s32   q4, d6, d7
    vabal.s32   q5, d8, d9
    vabal.s32   q6, d10, d11
    vabal.s32   q7, d12, d13
    vabal.s32   q8, d14, d15
    vabal.s32   q9, d16, d17
    vabal.s32   q10, d18, d19
    vabal.s32   q11, d20, d21

    subs    r0, r0, #1
    bne     vabalS32MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabalS32MaxTest:

    vpush.64    {d8-d15}

vabalS32MaxTest_LOOP:

    // loop 1
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d0, d1
    vabal.s32   q3, d0, d1
    vabal.s32   q4, d0, d1
    vabal.s32   q5, d0, d1
    vabal.s32   q6, d0, d1
    vabal.s32   q7, d0, d1
    vabal.s32   q8, d0, d1
    vabal.s32   q9, d0, d1
    vabal.s32   q10, d0, d1
    vabal.s32   q11, d0, d1
    vabal.s32   q12, d0, d1

    // loop 2
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d0, d1
    vabal.s32   q3, d0, d1
    vabal.s32   q4, d0, d1
    vabal.s32   q5, d0, d1
    vabal.s32   q6, d0, d1
    vabal.s32   q7, d0, d1
    vabal.s32   q8, d0, d1
    vabal.s32   q9, d0, d1
    vabal.s32   q10, d0, d1
    vabal.s32   q11, d0, d1
    vabal.s32   q12, d0, d1

    // loop 3
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d0, d1
    vabal.s32   q3, d0, d1
    vabal.s32   q4, d0, d1
    vabal.s32   q5, d0, d1
    vabal.s32   q6, d0, d1
    vabal.s32   q7, d0, d1
    vabal.s32   q8, d0, d1
    vabal.s32   q9, d0, d1
    vabal.s32   q10, d0, d1
    vabal.s32   q11, d0, d1
    vabal.s32   q12, d0, d1

    // loop 4
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d0, d1
    vabal.s32   q3, d0, d1
    vabal.s32   q4, d0, d1
    vabal.s32   q5, d0, d1
    vabal.s32   q6, d0, d1
    vabal.s32   q7, d0, d1
    vabal.s32   q8, d0, d1
    vabal.s32   q9, d0, d1
    vabal.s32   q10, d0, d1
    vabal.s32   q11, d0, d1
    vabal.s32   q12, d0, d1

    // loop 5
    vabal.s32   q1, d0, d1
    vabal.s32   q2, d0, d1
    vabal.s32   q3, d0, d1
    vabal.s32   q4, d0, d1
    vabal.s32   q5, d0, d1
    vabal.s32   q6, d0, d1
    vabal.s32   q7, d0, d1
    vabal.s32   q8, d0, d1
    vabal.s32   q9, d0, d1
    vabal.s32   q10, d0, d1
    vabal.s32   q11, d0, d1
    vabal.s32   q12, d0, d1

    subs    r0, r0, #1
    bne     vabalS32MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vabdI4MinTest:

    vpush.64    {d8-d15}

vabdI4MinTest_LOOP:

    // loop 1
    vabd.s32    q0, q0, q11
    vabd.s32    q1, q1, q0
    vabd.s32    q2, q2, q1
    vabd.s32    q3, q3, q2
    vabd.s32    q4, q4, q3
    vabd.s32    q5, q5, q4
    vabd.s32    q6, q6, q5
    vabd.s32    q7, q7, q6
    vabd.s32    q8, q8, q7
    vabd.s32    q9, q9, q8
    vabd.s32    q10, q10, q9
    vabd.s32    q11, q11, q10

    // loop 2
    vabd.s32    q0, q0, q11
    vabd.s32    q1, q1, q0
    vabd.s32    q2, q2, q1
    vabd.s32    q3, q3, q2
    vabd.s32    q4, q4, q3
    vabd.s32    q5, q5, q4
    vabd.s32    q6, q6, q5
    vabd.s32    q7, q7, q6
    vabd.s32    q8, q8, q7
    vabd.s32    q9, q9, q8
    vabd.s32    q10, q10, q9
    vabd.s32    q11, q11, q10

    // loop 3
    vabd.s32    q0, q0, q11
    vabd.s32    q1, q1, q0
    vabd.s32    q2, q2, q1
    vabd.s32    q3, q3, q2
    vabd.s32    q4, q4, q3
    vabd.s32    q5, q5, q4
    vabd.s32    q6, q6, q5
    vabd.s32    q7, q7, q6
    vabd.s32    q8, q8, q7
    vabd.s32    q9, q9, q8
    vabd.s32    q10, q10, q9
    vabd.s32    q11, q11, q10

    // loop 4
    vabd.s32    q0, q0, q11
    vabd.s32    q1, q1, q0
    vabd.s32    q2, q2, q1
    vabd.s32    q3, q3, q2
    vabd.s32    q4, q4, q3
    vabd.s32    q5, q5, q4
    vabd.s32    q6, q6, q5
    vabd.s32    q7, q7, q6
    vabd.s32    q8, q8, q7
    vabd.s32    q9, q9, q8
    vabd.s32    q10, q10, q9
    vabd.s32    q11, q11, q10

    // loop 5
    vabd.s32    q0, q0, q11
    vabd.s32    q1, q1, q0
    vabd.s32    q2, q2, q1
    vabd.s32    q3, q3, q2
    vabd.s32    q4, q4, q3
    vabd.s32    q5, q5, q4
    vabd.s32    q6, q6, q5
    vabd.s32    q7, q7, q6
    vabd.s32    q8, q8, q7
    vabd.s32    q9, q9, q8
    vabd.s32    q10, q10, q9
    vabd.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vabdI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabdI4MaxTest:

    vpush.64    {d8-d15}

vabdI4MaxTest_LOOP:

    // loop 1
    vabd.s32    q1, q0, q0
    vabd.s32    q2, q0, q0
    vabd.s32    q3, q0, q0
    vabd.s32    q4, q0, q0
    vabd.s32    q5, q0, q0
    vabd.s32    q6, q0, q0
    vabd.s32    q7, q0, q0
    vabd.s32    q8, q0, q0
    vabd.s32    q9, q0, q0
    vabd.s32    q10, q0, q0
    vabd.s32    q11, q0, q0
    vabd.s32    q12, q0, q0

    // loop 2
    vabd.s32    q1, q0, q0
    vabd.s32    q2, q0, q0
    vabd.s32    q3, q0, q0
    vabd.s32    q4, q0, q0
    vabd.s32    q5, q0, q0
    vabd.s32    q6, q0, q0
    vabd.s32    q7, q0, q0
    vabd.s32    q8, q0, q0
    vabd.s32    q9, q0, q0
    vabd.s32    q10, q0, q0
    vabd.s32    q11, q0, q0
    vabd.s32    q12, q0, q0

    // loop 3
    vabd.s32    q1, q0, q0
    vabd.s32    q2, q0, q0
    vabd.s32    q3, q0, q0
    vabd.s32    q4, q0, q0
    vabd.s32    q5, q0, q0
    vabd.s32    q6, q0, q0
    vabd.s32    q7, q0, q0
    vabd.s32    q8, q0, q0
    vabd.s32    q9, q0, q0
    vabd.s32    q10, q0, q0
    vabd.s32    q11, q0, q0
    vabd.s32    q12, q0, q0

    // loop 4
    vabd.s32    q1, q0, q0
    vabd.s32    q2, q0, q0
    vabd.s32    q3, q0, q0
    vabd.s32    q4, q0, q0
    vabd.s32    q5, q0, q0
    vabd.s32    q6, q0, q0
    vabd.s32    q7, q0, q0
    vabd.s32    q8, q0, q0
    vabd.s32    q9, q0, q0
    vabd.s32    q10, q0, q0
    vabd.s32    q11, q0, q0
    vabd.s32    q12, q0, q0

    // loop 5
    vabd.s32    q1, q0, q0
    vabd.s32    q2, q0, q0
    vabd.s32    q3, q0, q0
    vabd.s32    q4, q0, q0
    vabd.s32    q5, q0, q0
    vabd.s32    q6, q0, q0
    vabd.s32    q7, q0, q0
    vabd.s32    q8, q0, q0
    vabd.s32    q9, q0, q0
    vabd.s32    q10, q0, q0
    vabd.s32    q11, q0, q0
    vabd.s32    q12, q0, q0

    subs    r0, r0, #1
    bne     vabdI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabdF4MinTest:

    vpush.64    {d8-d15}

vabdF4MinTest_LOOP:

    // loop 1
    vabd.f32    q0, q0, q11
    vabd.f32    q1, q1, q0
    vabd.f32    q2, q2, q1
    vabd.f32    q3, q3, q2
    vabd.f32    q4, q4, q3
    vabd.f32    q5, q5, q4
    vabd.f32    q6, q6, q5
    vabd.f32    q7, q7, q6
    vabd.f32    q8, q8, q7
    vabd.f32    q9, q9, q8
    vabd.f32    q10, q10, q9
    vabd.f32    q11, q11, q10

    // loop 2
    vabd.f32    q0, q0, q11
    vabd.f32    q1, q1, q0
    vabd.f32    q2, q2, q1
    vabd.f32    q3, q3, q2
    vabd.f32    q4, q4, q3
    vabd.f32    q5, q5, q4
    vabd.f32    q6, q6, q5
    vabd.f32    q7, q7, q6
    vabd.f32    q8, q8, q7
    vabd.f32    q9, q9, q8
    vabd.f32    q10, q10, q9
    vabd.f32    q11, q11, q10

    // loop 3
    vabd.f32    q0, q0, q11
    vabd.f32    q1, q1, q0
    vabd.f32    q2, q2, q1
    vabd.f32    q3, q3, q2
    vabd.f32    q4, q4, q3
    vabd.f32    q5, q5, q4
    vabd.f32    q6, q6, q5
    vabd.f32    q7, q7, q6
    vabd.f32    q8, q8, q7
    vabd.f32    q9, q9, q8
    vabd.f32    q10, q10, q9
    vabd.f32    q11, q11, q10

    // loop 4
    vabd.f32    q0, q0, q11
    vabd.f32    q1, q1, q0
    vabd.f32    q2, q2, q1
    vabd.f32    q3, q3, q2
    vabd.f32    q4, q4, q3
    vabd.f32    q5, q5, q4
    vabd.f32    q6, q6, q5
    vabd.f32    q7, q7, q6
    vabd.f32    q8, q8, q7
    vabd.f32    q9, q9, q8
    vabd.f32    q10, q10, q9
    vabd.f32    q11, q11, q10

    // loop 5
    vabd.f32    q0, q0, q11
    vabd.f32    q1, q1, q0
    vabd.f32    q2, q2, q1
    vabd.f32    q3, q3, q2
    vabd.f32    q4, q4, q3
    vabd.f32    q5, q5, q4
    vabd.f32    q6, q6, q5
    vabd.f32    q7, q7, q6
    vabd.f32    q8, q8, q7
    vabd.f32    q9, q9, q8
    vabd.f32    q10, q10, q9
    vabd.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vabdF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabdF4MaxTest:

    vpush.64    {d8-d15}

vabdF4MaxTest_LOOP:

    // loop 1
    vabd.f32    q1, q0, q0
    vabd.f32    q2, q0, q0
    vabd.f32    q3, q0, q0
    vabd.f32    q4, q0, q0
    vabd.f32    q5, q0, q0
    vabd.f32    q6, q0, q0
    vabd.f32    q7, q0, q0
    vabd.f32    q8, q0, q0
    vabd.f32    q9, q0, q0
    vabd.f32    q10, q0, q0
    vabd.f32    q11, q0, q0
    vabd.f32    q12, q0, q0

    // loop 2
    vabd.f32    q1, q0, q0
    vabd.f32    q2, q0, q0
    vabd.f32    q3, q0, q0
    vabd.f32    q4, q0, q0
    vabd.f32    q5, q0, q0
    vabd.f32    q6, q0, q0
    vabd.f32    q7, q0, q0
    vabd.f32    q8, q0, q0
    vabd.f32    q9, q0, q0
    vabd.f32    q10, q0, q0
    vabd.f32    q11, q0, q0
    vabd.f32    q12, q0, q0

    // loop 3
    vabd.f32    q1, q0, q0
    vabd.f32    q2, q0, q0
    vabd.f32    q3, q0, q0
    vabd.f32    q4, q0, q0
    vabd.f32    q5, q0, q0
    vabd.f32    q6, q0, q0
    vabd.f32    q7, q0, q0
    vabd.f32    q8, q0, q0
    vabd.f32    q9, q0, q0
    vabd.f32    q10, q0, q0
    vabd.f32    q11, q0, q0
    vabd.f32    q12, q0, q0

    // loop 4
    vabd.f32    q1, q0, q0
    vabd.f32    q2, q0, q0
    vabd.f32    q3, q0, q0
    vabd.f32    q4, q0, q0
    vabd.f32    q5, q0, q0
    vabd.f32    q6, q0, q0
    vabd.f32    q7, q0, q0
    vabd.f32    q8, q0, q0
    vabd.f32    q9, q0, q0
    vabd.f32    q10, q0, q0
    vabd.f32    q11, q0, q0
    vabd.f32    q12, q0, q0

    // loop 5
    vabd.f32    q1, q0, q0
    vabd.f32    q2, q0, q0
    vabd.f32    q3, q0, q0
    vabd.f32    q4, q0, q0
    vabd.f32    q5, q0, q0
    vabd.f32    q6, q0, q0
    vabd.f32    q7, q0, q0
    vabd.f32    q8, q0, q0
    vabd.f32    q9, q0, q0
    vabd.f32    q10, q0, q0
    vabd.f32    q11, q0, q0
    vabd.f32    q12, q0, q0

    subs    r0, r0, #1
    bne     vabdF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabdlI2MinTest:

    vpush.64    {d8-d15}

vabdlI2MinTest_LOOP:

    // loop 1
    vabdl.s32   q0, d22, d23
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d2, d3
    vabdl.s32   q3, d4, d5
    vabdl.s32   q4, d6, d7
    vabdl.s32   q5, d8, d9
    vabdl.s32   q6, d10, d11
    vabdl.s32   q7, d12, d13
    vabdl.s32   q8, d14, d15
    vabdl.s32   q9, d16, d17
    vabdl.s32   q10, d18, d19
    vabdl.s32   q11, d20, d21

    // loop 2
    vabdl.s32   q0, d22, d23
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d2, d3
    vabdl.s32   q3, d4, d5
    vabdl.s32   q4, d6, d7
    vabdl.s32   q5, d8, d9
    vabdl.s32   q6, d10, d11
    vabdl.s32   q7, d12, d13
    vabdl.s32   q8, d14, d15
    vabdl.s32   q9, d16, d17
    vabdl.s32   q10, d18, d19
    vabdl.s32   q11, d20, d21

    // loop 3
    vabdl.s32   q0, d22, d23
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d2, d3
    vabdl.s32   q3, d4, d5
    vabdl.s32   q4, d6, d7
    vabdl.s32   q5, d8, d9
    vabdl.s32   q6, d10, d11
    vabdl.s32   q7, d12, d13
    vabdl.s32   q8, d14, d15
    vabdl.s32   q9, d16, d17
    vabdl.s32   q10, d18, d19
    vabdl.s32   q11, d20, d21

    // loop 4
    vabdl.s32   q0, d22, d23
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d2, d3
    vabdl.s32   q3, d4, d5
    vabdl.s32   q4, d6, d7
    vabdl.s32   q5, d8, d9
    vabdl.s32   q6, d10, d11
    vabdl.s32   q7, d12, d13
    vabdl.s32   q8, d14, d15
    vabdl.s32   q9, d16, d17
    vabdl.s32   q10, d18, d19
    vabdl.s32   q11, d20, d21

    // loop 5
    vabdl.s32   q0, d22, d23
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d2, d3
    vabdl.s32   q3, d4, d5
    vabdl.s32   q4, d6, d7
    vabdl.s32   q5, d8, d9
    vabdl.s32   q6, d10, d11
    vabdl.s32   q7, d12, d13
    vabdl.s32   q8, d14, d15
    vabdl.s32   q9, d16, d17
    vabdl.s32   q10, d18, d19
    vabdl.s32   q11, d20, d21

    subs    r0, r0, #1
    bne     vabdlI2MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabdlI2MaxTest:

    vpush.64    {d8-d15}

vabdlI2MaxTest_LOOP:

    // loop 1
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d0, d1
    vabdl.s32   q3, d0, d1
    vabdl.s32   q4, d0, d1
    vabdl.s32   q5, d0, d1
    vabdl.s32   q6, d0, d1
    vabdl.s32   q7, d0, d1
    vabdl.s32   q8, d0, d1
    vabdl.s32   q9, d0, d1
    vabdl.s32   q10, d0, d1
    vabdl.s32   q11, d0, d1
    vabdl.s32   q12, d0, d1

    // loop 2
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d0, d1
    vabdl.s32   q3, d0, d1
    vabdl.s32   q4, d0, d1
    vabdl.s32   q5, d0, d1
    vabdl.s32   q6, d0, d1
    vabdl.s32   q7, d0, d1
    vabdl.s32   q8, d0, d1
    vabdl.s32   q9, d0, d1
    vabdl.s32   q10, d0, d1
    vabdl.s32   q11, d0, d1
    vabdl.s32   q12, d0, d1

    // loop 3
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d0, d1
    vabdl.s32   q3, d0, d1
    vabdl.s32   q4, d0, d1
    vabdl.s32   q5, d0, d1
    vabdl.s32   q6, d0, d1
    vabdl.s32   q7, d0, d1
    vabdl.s32   q8, d0, d1
    vabdl.s32   q9, d0, d1
    vabdl.s32   q10, d0, d1
    vabdl.s32   q11, d0, d1
    vabdl.s32   q12, d0, d1

    // loop 4
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d0, d1
    vabdl.s32   q3, d0, d1
    vabdl.s32   q4, d0, d1
    vabdl.s32   q5, d0, d1
    vabdl.s32   q6, d0, d1
    vabdl.s32   q7, d0, d1
    vabdl.s32   q8, d0, d1
    vabdl.s32   q9, d0, d1
    vabdl.s32   q10, d0, d1
    vabdl.s32   q11, d0, d1
    vabdl.s32   q12, d0, d1

    // loop 5
    vabdl.s32   q1, d0, d1
    vabdl.s32   q2, d0, d1
    vabdl.s32   q3, d0, d1
    vabdl.s32   q4, d0, d1
    vabdl.s32   q5, d0, d1
    vabdl.s32   q6, d0, d1
    vabdl.s32   q7, d0, d1
    vabdl.s32   q8, d0, d1
    vabdl.s32   q9, d0, d1
    vabdl.s32   q10, d0, d1
    vabdl.s32   q11, d0, d1
    vabdl.s32   q12, d0, d1

    subs    r0, r0, #1
    bne     vabdlI2MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vabsFMinTest:

    vpush.64    {d8-d15}

vabsFMinTest_LOOP:

    // loop 1
    vabs.f32    s0, s11
    vabs.f32    s1, s0
    vabs.f32    s2, s1
    vabs.f32    s3, s2
    vabs.f32    s4, s3
    vabs.f32    s5, s4
    vabs.f32    s6, s5
    vabs.f32    s7, s6
    vabs.f32    s8, s7
    vabs.f32    s9, s8
    vabs.f32    s10, s9
    vabs.f32    s11, s10

    // loop 2
    vabs.f32    s0, s11
    vabs.f32    s1, s0
    vabs.f32    s2, s1
    vabs.f32    s3, s2
    vabs.f32    s4, s3
    vabs.f32    s5, s4
    vabs.f32    s6, s5
    vabs.f32    s7, s6
    vabs.f32    s8, s7
    vabs.f32    s9, s8
    vabs.f32    s10, s9
    vabs.f32    s11, s10

    // loop 3
    vabs.f32    s0, s11
    vabs.f32    s1, s0
    vabs.f32    s2, s1
    vabs.f32    s3, s2
    vabs.f32    s4, s3
    vabs.f32    s5, s4
    vabs.f32    s6, s5
    vabs.f32    s7, s6
    vabs.f32    s8, s7
    vabs.f32    s9, s8
    vabs.f32    s10, s9
    vabs.f32    s11, s10

    // loop 4
    vabs.f32    s0, s11
    vabs.f32    s1, s0
    vabs.f32    s2, s1
    vabs.f32    s3, s2
    vabs.f32    s4, s3
    vabs.f32    s5, s4
    vabs.f32    s6, s5
    vabs.f32    s7, s6
    vabs.f32    s8, s7
    vabs.f32    s9, s8
    vabs.f32    s10, s9
    vabs.f32    s11, s10

    // loop 5
    vabs.f32    s0, s11
    vabs.f32    s1, s0
    vabs.f32    s2, s1
    vabs.f32    s3, s2
    vabs.f32    s4, s3
    vabs.f32    s5, s4
    vabs.f32    s6, s5
    vabs.f32    s7, s6
    vabs.f32    s8, s7
    vabs.f32    s9, s8
    vabs.f32    s10, s9
    vabs.f32    s11, s10

    subs    r0, r0, #1
    bne     vabsFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabsFMaxTest:

    vpush.64    {d8-d15}

vabsFMaxTest_LOOP:

    // loop 1
    vabs.f32    s1, s0
    vabs.f32    s2, s0
    vabs.f32    s3, s0
    vabs.f32    s4, s0
    vabs.f32    s5, s0
    vabs.f32    s6, s0
    vabs.f32    s7, s0
    vabs.f32    s8, s0
    vabs.f32    s9, s0
    vabs.f32    s10, s0
    vabs.f32    s11, s0
    vabs.f32    s12, s0

    // loop 2
    vabs.f32    s1, s0
    vabs.f32    s2, s0
    vabs.f32    s3, s0
    vabs.f32    s4, s0
    vabs.f32    s5, s0
    vabs.f32    s6, s0
    vabs.f32    s7, s0
    vabs.f32    s8, s0
    vabs.f32    s9, s0
    vabs.f32    s10, s0
    vabs.f32    s11, s0
    vabs.f32    s12, s0

    // loop 3
    vabs.f32    s1, s0
    vabs.f32    s2, s0
    vabs.f32    s3, s0
    vabs.f32    s4, s0
    vabs.f32    s5, s0
    vabs.f32    s6, s0
    vabs.f32    s7, s0
    vabs.f32    s8, s0
    vabs.f32    s9, s0
    vabs.f32    s10, s0
    vabs.f32    s11, s0
    vabs.f32    s12, s0

    // loop 4
    vabs.f32    s1, s0
    vabs.f32    s2, s0
    vabs.f32    s3, s0
    vabs.f32    s4, s0
    vabs.f32    s5, s0
    vabs.f32    s6, s0
    vabs.f32    s7, s0
    vabs.f32    s8, s0
    vabs.f32    s9, s0
    vabs.f32    s10, s0
    vabs.f32    s11, s0
    vabs.f32    s12, s0

    // loop 5
    vabs.f32    s1, s0
    vabs.f32    s2, s0
    vabs.f32    s3, s0
    vabs.f32    s4, s0
    vabs.f32    s5, s0
    vabs.f32    s6, s0
    vabs.f32    s7, s0
    vabs.f32    s8, s0
    vabs.f32    s9, s0
    vabs.f32    s10, s0
    vabs.f32    s11, s0
    vabs.f32    s12, s0

    subs    r0, r0, #1
    bne     vabsFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vabsDMinTest:

    vpush.64    {d8-d15}

vabsDMinTest_LOOP:

    // loop 1
    vabs.f64    d0, d11
    vabs.f64    d1, d0
    vabs.f64    d2, d1
    vabs.f64    d3, d2
    vabs.f64    d4, d3
    vabs.f64    d5, d4
    vabs.f64    d6, d5
    vabs.f64    d7, d6
    vabs.f64    d8, d7
    vabs.f64    d9, d8
    vabs.f64    d10, d9
    vabs.f64    d11, d10

    // loop 2
    vabs.f64    d0, d11
    vabs.f64    d1, d0
    vabs.f64    d2, d1
    vabs.f64    d3, d2
    vabs.f64    d4, d3
    vabs.f64    d5, d4
    vabs.f64    d6, d5
    vabs.f64    d7, d6
    vabs.f64    d8, d7
    vabs.f64    d9, d8
    vabs.f64    d10, d9
    vabs.f64    d11, d10

    // loop 3
    vabs.f64    d0, d11
    vabs.f64    d1, d0
    vabs.f64    d2, d1
    vabs.f64    d3, d2
    vabs.f64    d4, d3
    vabs.f64    d5, d4
    vabs.f64    d6, d5
    vabs.f64    d7, d6
    vabs.f64    d8, d7
    vabs.f64    d9, d8
    vabs.f64    d10, d9
    vabs.f64    d11, d10

    // loop 4
    vabs.f64    d0, d11
    vabs.f64    d1, d0
    vabs.f64    d2, d1
    vabs.f64    d3, d2
    vabs.f64    d4, d3
    vabs.f64    d5, d4
    vabs.f64    d6, d5
    vabs.f64    d7, d6
    vabs.f64    d8, d7
    vabs.f64    d9, d8
    vabs.f64    d10, d9
    vabs.f64    d11, d10

    // loop 5
    vabs.f64    d0, d11
    vabs.f64    d1, d0
    vabs.f64    d2, d1
    vabs.f64    d3, d2
    vabs.f64    d4, d3
    vabs.f64    d5, d4
    vabs.f64    d6, d5
    vabs.f64    d7, d6
    vabs.f64    d8, d7
    vabs.f64    d9, d8
    vabs.f64    d10, d9
    vabs.f64    d11, d10

    subs    r0, r0, #1
    bne     vabsDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabsDMaxTest:

    vpush.64    {d8-d15}

vabsDMaxTest_LOOP:

    // loop 1
    vabs.f64    d1, d0
    vabs.f64    d2, d0
    vabs.f64    d3, d0
    vabs.f64    d4, d0
    vabs.f64    d5, d0
    vabs.f64    d6, d0
    vabs.f64    d7, d0
    vabs.f64    d8, d0
    vabs.f64    d9, d0
    vabs.f64    d10, d0
    vabs.f64    d11, d0
    vabs.f64    d12, d0

    // loop 2
    vabs.f64    d1, d0
    vabs.f64    d2, d0
    vabs.f64    d3, d0
    vabs.f64    d4, d0
    vabs.f64    d5, d0
    vabs.f64    d6, d0
    vabs.f64    d7, d0
    vabs.f64    d8, d0
    vabs.f64    d9, d0
    vabs.f64    d10, d0
    vabs.f64    d11, d0
    vabs.f64    d12, d0

    // loop 3
    vabs.f64    d1, d0
    vabs.f64    d2, d0
    vabs.f64    d3, d0
    vabs.f64    d4, d0
    vabs.f64    d5, d0
    vabs.f64    d6, d0
    vabs.f64    d7, d0
    vabs.f64    d8, d0
    vabs.f64    d9, d0
    vabs.f64    d10, d0
    vabs.f64    d11, d0
    vabs.f64    d12, d0

    // loop 4
    vabs.f64    d1, d0
    vabs.f64    d2, d0
    vabs.f64    d3, d0
    vabs.f64    d4, d0
    vabs.f64    d5, d0
    vabs.f64    d6, d0
    vabs.f64    d7, d0
    vabs.f64    d8, d0
    vabs.f64    d9, d0
    vabs.f64    d10, d0
    vabs.f64    d11, d0
    vabs.f64    d12, d0

    // loop 5
    vabs.f64    d1, d0
    vabs.f64    d2, d0
    vabs.f64    d3, d0
    vabs.f64    d4, d0
    vabs.f64    d5, d0
    vabs.f64    d6, d0
    vabs.f64    d7, d0
    vabs.f64    d8, d0
    vabs.f64    d9, d0
    vabs.f64    d10, d0
    vabs.f64    d11, d0
    vabs.f64    d12, d0

    subs    r0, r0, #1
    bne     vabsDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabsI4MinTest:

    vpush.64    {d8-d15}

vabsI4MinTest_LOOP:

    // loop 1
    vabs.s32    q0, q11
    vabs.s32    q1, q0
    vabs.s32    q2, q1
    vabs.s32    q3, q2
    vabs.s32    q4, q3
    vabs.s32    q5, q4
    vabs.s32    q6, q5
    vabs.s32    q7, q6
    vabs.s32    q8, q7
    vabs.s32    q9, q8
    vabs.s32    q10, q9
    vabs.s32    q11, q10

    // loop 2
    vabs.s32    q0, q11
    vabs.s32    q1, q0
    vabs.s32    q2, q1
    vabs.s32    q3, q2
    vabs.s32    q4, q3
    vabs.s32    q5, q4
    vabs.s32    q6, q5
    vabs.s32    q7, q6
    vabs.s32    q8, q7
    vabs.s32    q9, q8
    vabs.s32    q10, q9
    vabs.s32    q11, q10

    // loop 3
    vabs.s32    q0, q11
    vabs.s32    q1, q0
    vabs.s32    q2, q1
    vabs.s32    q3, q2
    vabs.s32    q4, q3
    vabs.s32    q5, q4
    vabs.s32    q6, q5
    vabs.s32    q7, q6
    vabs.s32    q8, q7
    vabs.s32    q9, q8
    vabs.s32    q10, q9
    vabs.s32    q11, q10

    // loop 4
    vabs.s32    q0, q11
    vabs.s32    q1, q0
    vabs.s32    q2, q1
    vabs.s32    q3, q2
    vabs.s32    q4, q3
    vabs.s32    q5, q4
    vabs.s32    q6, q5
    vabs.s32    q7, q6
    vabs.s32    q8, q7
    vabs.s32    q9, q8
    vabs.s32    q10, q9
    vabs.s32    q11, q10

    // loop 5
    vabs.s32    q0, q11
    vabs.s32    q1, q0
    vabs.s32    q2, q1
    vabs.s32    q3, q2
    vabs.s32    q4, q3
    vabs.s32    q5, q4
    vabs.s32    q6, q5
    vabs.s32    q7, q6
    vabs.s32    q8, q7
    vabs.s32    q9, q8
    vabs.s32    q10, q9
    vabs.s32    q11, q10

    subs    r0, r0, #1
    bne     vabsI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabsI4MaxTest:

    vpush.64    {d8-d15}

vabsI4MaxTest_LOOP:

    // loop 1
    vabs.s32    q1, q0
    vabs.s32    q2, q0
    vabs.s32    q3, q0
    vabs.s32    q4, q0
    vabs.s32    q5, q0
    vabs.s32    q6, q0
    vabs.s32    q7, q0
    vabs.s32    q8, q0
    vabs.s32    q9, q0
    vabs.s32    q10, q0
    vabs.s32    q11, q0
    vabs.s32    q12, q0

    // loop 2
    vabs.s32    q1, q0
    vabs.s32    q2, q0
    vabs.s32    q3, q0
    vabs.s32    q4, q0
    vabs.s32    q5, q0
    vabs.s32    q6, q0
    vabs.s32    q7, q0
    vabs.s32    q8, q0
    vabs.s32    q9, q0
    vabs.s32    q10, q0
    vabs.s32    q11, q0
    vabs.s32    q12, q0

    // loop 3
    vabs.s32    q1, q0
    vabs.s32    q2, q0
    vabs.s32    q3, q0
    vabs.s32    q4, q0
    vabs.s32    q5, q0
    vabs.s32    q6, q0
    vabs.s32    q7, q0
    vabs.s32    q8, q0
    vabs.s32    q9, q0
    vabs.s32    q10, q0
    vabs.s32    q11, q0
    vabs.s32    q12, q0

    // loop 4
    vabs.s32    q1, q0
    vabs.s32    q2, q0
    vabs.s32    q3, q0
    vabs.s32    q4, q0
    vabs.s32    q5, q0
    vabs.s32    q6, q0
    vabs.s32    q7, q0
    vabs.s32    q8, q0
    vabs.s32    q9, q0
    vabs.s32    q10, q0
    vabs.s32    q11, q0
    vabs.s32    q12, q0

    // loop 5
    vabs.s32    q1, q0
    vabs.s32    q2, q0
    vabs.s32    q3, q0
    vabs.s32    q4, q0
    vabs.s32    q5, q0
    vabs.s32    q6, q0
    vabs.s32    q7, q0
    vabs.s32    q8, q0
    vabs.s32    q9, q0
    vabs.s32    q10, q0
    vabs.s32    q11, q0
    vabs.s32    q12, q0

    subs    r0, r0, #1
    bne     vabsI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabsF4MinTest:

    vpush.64    {d8-d15}

vabsF4MinTest_LOOP:

    // loop 1
    vabs.f32    q0, q11
    vabs.f32    q1, q0
    vabs.f32    q2, q1
    vabs.f32    q3, q2
    vabs.f32    q4, q3
    vabs.f32    q5, q4
    vabs.f32    q6, q5
    vabs.f32    q7, q6
    vabs.f32    q8, q7
    vabs.f32    q9, q8
    vabs.f32    q10, q9
    vabs.f32    q11, q10

    // loop 2
    vabs.f32    q0, q11
    vabs.f32    q1, q0
    vabs.f32    q2, q1
    vabs.f32    q3, q2
    vabs.f32    q4, q3
    vabs.f32    q5, q4
    vabs.f32    q6, q5
    vabs.f32    q7, q6
    vabs.f32    q8, q7
    vabs.f32    q9, q8
    vabs.f32    q10, q9
    vabs.f32    q11, q10

    // loop 3
    vabs.f32    q0, q11
    vabs.f32    q1, q0
    vabs.f32    q2, q1
    vabs.f32    q3, q2
    vabs.f32    q4, q3
    vabs.f32    q5, q4
    vabs.f32    q6, q5
    vabs.f32    q7, q6
    vabs.f32    q8, q7
    vabs.f32    q9, q8
    vabs.f32    q10, q9
    vabs.f32    q11, q10

    // loop 4
    vabs.f32    q0, q11
    vabs.f32    q1, q0
    vabs.f32    q2, q1
    vabs.f32    q3, q2
    vabs.f32    q4, q3
    vabs.f32    q5, q4
    vabs.f32    q6, q5
    vabs.f32    q7, q6
    vabs.f32    q8, q7
    vabs.f32    q9, q8
    vabs.f32    q10, q9
    vabs.f32    q11, q10

    // loop 5
    vabs.f32    q0, q11
    vabs.f32    q1, q0
    vabs.f32    q2, q1
    vabs.f32    q3, q2
    vabs.f32    q4, q3
    vabs.f32    q5, q4
    vabs.f32    q6, q5
    vabs.f32    q7, q6
    vabs.f32    q8, q7
    vabs.f32    q9, q8
    vabs.f32    q10, q9
    vabs.f32    q11, q10

    subs    r0, r0, #1
    bne     vabsF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vabsF4MaxTest:

    vpush.64    {d8-d15}

vabsF4MaxTest_LOOP:

    // loop 1
    vabs.f32    q1, q0
    vabs.f32    q2, q0
    vabs.f32    q3, q0
    vabs.f32    q4, q0
    vabs.f32    q5, q0
    vabs.f32    q6, q0
    vabs.f32    q7, q0
    vabs.f32    q8, q0
    vabs.f32    q9, q0
    vabs.f32    q10, q0
    vabs.f32    q11, q0
    vabs.f32    q12, q0

    // loop 2
    vabs.f32    q1, q0
    vabs.f32    q2, q0
    vabs.f32    q3, q0
    vabs.f32    q4, q0
    vabs.f32    q5, q0
    vabs.f32    q6, q0
    vabs.f32    q7, q0
    vabs.f32    q8, q0
    vabs.f32    q9, q0
    vabs.f32    q10, q0
    vabs.f32    q11, q0
    vabs.f32    q12, q0

    // loop 3
    vabs.f32    q1, q0
    vabs.f32    q2, q0
    vabs.f32    q3, q0
    vabs.f32    q4, q0
    vabs.f32    q5, q0
    vabs.f32    q6, q0
    vabs.f32    q7, q0
    vabs.f32    q8, q0
    vabs.f32    q9, q0
    vabs.f32    q10, q0
    vabs.f32    q11, q0
    vabs.f32    q12, q0

    // loop 4
    vabs.f32    q1, q0
    vabs.f32    q2, q0
    vabs.f32    q3, q0
    vabs.f32    q4, q0
    vabs.f32    q5, q0
    vabs.f32    q6, q0
    vabs.f32    q7, q0
    vabs.f32    q8, q0
    vabs.f32    q9, q0
    vabs.f32    q10, q0
    vabs.f32    q11, q0
    vabs.f32    q12, q0

    // loop 5
    vabs.f32    q1, q0
    vabs.f32    q2, q0
    vabs.f32    q3, q0
    vabs.f32    q4, q0
    vabs.f32    q5, q0
    vabs.f32    q6, q0
    vabs.f32    q7, q0
    vabs.f32    q8, q0
    vabs.f32    q9, q0
    vabs.f32    q10, q0
    vabs.f32    q11, q0
    vabs.f32    q12, q0

    subs    r0, r0, #1
    bne     vabsF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vacgeF4MinTest:

    vpush.64    {d8-d15}

vacgeF4MinTest_LOOP:

    // loop 1
    vacge.f32   q0, q0, q11
    vacge.f32   q1, q1, q0
    vacge.f32   q2, q2, q1
    vacge.f32   q3, q3, q2
    vacge.f32   q4, q4, q3
    vacge.f32   q5, q5, q4
    vacge.f32   q6, q6, q5
    vacge.f32   q7, q7, q6
    vacge.f32   q8, q8, q7
    vacge.f32   q9, q9, q8
    vacge.f32   q10, q10, q9
    vacge.f32   q11, q11, q10

    // loop 2
    vacge.f32   q0, q0, q11
    vacge.f32   q1, q1, q0
    vacge.f32   q2, q2, q1
    vacge.f32   q3, q3, q2
    vacge.f32   q4, q4, q3
    vacge.f32   q5, q5, q4
    vacge.f32   q6, q6, q5
    vacge.f32   q7, q7, q6
    vacge.f32   q8, q8, q7
    vacge.f32   q9, q9, q8
    vacge.f32   q10, q10, q9
    vacge.f32   q11, q11, q10

    // loop 3
    vacge.f32   q0, q0, q11
    vacge.f32   q1, q1, q0
    vacge.f32   q2, q2, q1
    vacge.f32   q3, q3, q2
    vacge.f32   q4, q4, q3
    vacge.f32   q5, q5, q4
    vacge.f32   q6, q6, q5
    vacge.f32   q7, q7, q6
    vacge.f32   q8, q8, q7
    vacge.f32   q9, q9, q8
    vacge.f32   q10, q10, q9
    vacge.f32   q11, q11, q10

    // loop 4
    vacge.f32   q0, q0, q11
    vacge.f32   q1, q1, q0
    vacge.f32   q2, q2, q1
    vacge.f32   q3, q3, q2
    vacge.f32   q4, q4, q3
    vacge.f32   q5, q5, q4
    vacge.f32   q6, q6, q5
    vacge.f32   q7, q7, q6
    vacge.f32   q8, q8, q7
    vacge.f32   q9, q9, q8
    vacge.f32   q10, q10, q9
    vacge.f32   q11, q11, q10

    // loop 5
    vacge.f32   q0, q0, q11
    vacge.f32   q1, q1, q0
    vacge.f32   q2, q2, q1
    vacge.f32   q3, q3, q2
    vacge.f32   q4, q4, q3
    vacge.f32   q5, q5, q4
    vacge.f32   q6, q6, q5
    vacge.f32   q7, q7, q6
    vacge.f32   q8, q8, q7
    vacge.f32   q9, q9, q8
    vacge.f32   q10, q10, q9
    vacge.f32   q11, q11, q10

    subs    r0, r0, #1
    bne     vacgeF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vacgeF4MaxTest:

    vpush.64    {d8-d15}

vacgeF4MaxTest_LOOP:

    // loop 1
    vacge.f32   q1, q0, q0
    vacge.f32   q2, q0, q0
    vacge.f32   q3, q0, q0
    vacge.f32   q4, q0, q0
    vacge.f32   q5, q0, q0
    vacge.f32   q6, q0, q0
    vacge.f32   q7, q0, q0
    vacge.f32   q8, q0, q0
    vacge.f32   q9, q0, q0
    vacge.f32   q10, q0, q0
    vacge.f32   q11, q0, q0
    vacge.f32   q12, q0, q0

    // loop 2
    vacge.f32   q1, q0, q0
    vacge.f32   q2, q0, q0
    vacge.f32   q3, q0, q0
    vacge.f32   q4, q0, q0
    vacge.f32   q5, q0, q0
    vacge.f32   q6, q0, q0
    vacge.f32   q7, q0, q0
    vacge.f32   q8, q0, q0
    vacge.f32   q9, q0, q0
    vacge.f32   q10, q0, q0
    vacge.f32   q11, q0, q0
    vacge.f32   q12, q0, q0

    // loop 3
    vacge.f32   q1, q0, q0
    vacge.f32   q2, q0, q0
    vacge.f32   q3, q0, q0
    vacge.f32   q4, q0, q0
    vacge.f32   q5, q0, q0
    vacge.f32   q6, q0, q0
    vacge.f32   q7, q0, q0
    vacge.f32   q8, q0, q0
    vacge.f32   q9, q0, q0
    vacge.f32   q10, q0, q0
    vacge.f32   q11, q0, q0
    vacge.f32   q12, q0, q0

    // loop 4
    vacge.f32   q1, q0, q0
    vacge.f32   q2, q0, q0
    vacge.f32   q3, q0, q0
    vacge.f32   q4, q0, q0
    vacge.f32   q5, q0, q0
    vacge.f32   q6, q0, q0
    vacge.f32   q7, q0, q0
    vacge.f32   q8, q0, q0
    vacge.f32   q9, q0, q0
    vacge.f32   q10, q0, q0
    vacge.f32   q11, q0, q0
    vacge.f32   q12, q0, q0

    // loop 5
    vacge.f32   q1, q0, q0
    vacge.f32   q2, q0, q0
    vacge.f32   q3, q0, q0
    vacge.f32   q4, q0, q0
    vacge.f32   q5, q0, q0
    vacge.f32   q6, q0, q0
    vacge.f32   q7, q0, q0
    vacge.f32   q8, q0, q0
    vacge.f32   q9, q0, q0
    vacge.f32   q10, q0, q0
    vacge.f32   q11, q0, q0
    vacge.f32   q12, q0, q0

    subs    r0, r0, #1
    bne     vacgeF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vaddFMinTest:

    vpush.64    {d8-d15}

vaddFMinTest_LOOP:

    // loop 1
    vadd.f32    s0, s0, s11
    vadd.f32    s1, s1, s0
    vadd.f32    s2, s2, s1
    vadd.f32    s3, s3, s2
    vadd.f32    s4, s4, s3
    vadd.f32    s5, s5, s4
    vadd.f32    s6, s6, s5
    vadd.f32    s7, s7, s6
    vadd.f32    s8, s8, s7
    vadd.f32    s9, s9, s8
    vadd.f32    s10, s10, s9
    vadd.f32    s11, s11, s10

    // loop 2
    vadd.f32    s0, s0, s11
    vadd.f32    s1, s1, s0
    vadd.f32    s2, s2, s1
    vadd.f32    s3, s3, s2
    vadd.f32    s4, s4, s3
    vadd.f32    s5, s5, s4
    vadd.f32    s6, s6, s5
    vadd.f32    s7, s7, s6
    vadd.f32    s8, s8, s7
    vadd.f32    s9, s9, s8
    vadd.f32    s10, s10, s9
    vadd.f32    s11, s11, s10

    // loop 3
    vadd.f32    s0, s0, s11
    vadd.f32    s1, s1, s0
    vadd.f32    s2, s2, s1
    vadd.f32    s3, s3, s2
    vadd.f32    s4, s4, s3
    vadd.f32    s5, s5, s4
    vadd.f32    s6, s6, s5
    vadd.f32    s7, s7, s6
    vadd.f32    s8, s8, s7
    vadd.f32    s9, s9, s8
    vadd.f32    s10, s10, s9
    vadd.f32    s11, s11, s10

    // loop 4
    vadd.f32    s0, s0, s11
    vadd.f32    s1, s1, s0
    vadd.f32    s2, s2, s1
    vadd.f32    s3, s3, s2
    vadd.f32    s4, s4, s3
    vadd.f32    s5, s5, s4
    vadd.f32    s6, s6, s5
    vadd.f32    s7, s7, s6
    vadd.f32    s8, s8, s7
    vadd.f32    s9, s9, s8
    vadd.f32    s10, s10, s9
    vadd.f32    s11, s11, s10

    // loop 5
    vadd.f32    s0, s0, s11
    vadd.f32    s1, s1, s0
    vadd.f32    s2, s2, s1
    vadd.f32    s3, s3, s2
    vadd.f32    s4, s4, s3
    vadd.f32    s5, s5, s4
    vadd.f32    s6, s6, s5
    vadd.f32    s7, s7, s6
    vadd.f32    s8, s8, s7
    vadd.f32    s9, s9, s8
    vadd.f32    s10, s10, s9
    vadd.f32    s11, s11, s10

    subs    r0, r0, #1
    bne     vaddFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddFMaxTest:

    vpush.64    {d8-d15}

vaddFMaxTest_LOOP:

    // loop 1
    vadd.f32    s1, s0, s0
    vadd.f32    s2, s0, s0
    vadd.f32    s3, s0, s0
    vadd.f32    s4, s0, s0
    vadd.f32    s5, s0, s0
    vadd.f32    s6, s0, s0
    vadd.f32    s7, s0, s0
    vadd.f32    s8, s0, s0
    vadd.f32    s9, s0, s0
    vadd.f32    s10, s0, s0
    vadd.f32    s11, s0, s0
    vadd.f32    s12, s0, s0

    // loop 2
    vadd.f32    s1, s0, s0
    vadd.f32    s2, s0, s0
    vadd.f32    s3, s0, s0
    vadd.f32    s4, s0, s0
    vadd.f32    s5, s0, s0
    vadd.f32    s6, s0, s0
    vadd.f32    s7, s0, s0
    vadd.f32    s8, s0, s0
    vadd.f32    s9, s0, s0
    vadd.f32    s10, s0, s0
    vadd.f32    s11, s0, s0
    vadd.f32    s12, s0, s0

    // loop 3
    vadd.f32    s1, s0, s0
    vadd.f32    s2, s0, s0
    vadd.f32    s3, s0, s0
    vadd.f32    s4, s0, s0
    vadd.f32    s5, s0, s0
    vadd.f32    s6, s0, s0
    vadd.f32    s7, s0, s0
    vadd.f32    s8, s0, s0
    vadd.f32    s9, s0, s0
    vadd.f32    s10, s0, s0
    vadd.f32    s11, s0, s0
    vadd.f32    s12, s0, s0

    // loop 4
    vadd.f32    s1, s0, s0
    vadd.f32    s2, s0, s0
    vadd.f32    s3, s0, s0
    vadd.f32    s4, s0, s0
    vadd.f32    s5, s0, s0
    vadd.f32    s6, s0, s0
    vadd.f32    s7, s0, s0
    vadd.f32    s8, s0, s0
    vadd.f32    s9, s0, s0
    vadd.f32    s10, s0, s0
    vadd.f32    s11, s0, s0
    vadd.f32    s12, s0, s0

    // loop 5
    vadd.f32    s1, s0, s0
    vadd.f32    s2, s0, s0
    vadd.f32    s3, s0, s0
    vadd.f32    s4, s0, s0
    vadd.f32    s5, s0, s0
    vadd.f32    s6, s0, s0
    vadd.f32    s7, s0, s0
    vadd.f32    s8, s0, s0
    vadd.f32    s9, s0, s0
    vadd.f32    s10, s0, s0
    vadd.f32    s11, s0, s0
    vadd.f32    s12, s0, s0

    subs    r0, r0, #1
    bne     vaddFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vaddDMinTest:

    vpush.64    {d8-d15}

vaddDMinTest_LOOP:

    // loop 1
    vadd.f64    d0, d0, d11
    vadd.f64    d1, d1, d0
    vadd.f64    d2, d2, d1
    vadd.f64    d3, d3, d2
    vadd.f64    d4, d4, d3
    vadd.f64    d5, d5, d4
    vadd.f64    d6, d6, d5
    vadd.f64    d7, d7, d6
    vadd.f64    d8, d8, d7
    vadd.f64    d9, d9, d8
    vadd.f64    d10, d10, d9
    vadd.f64    d11, d11, d10

    // loop 2
    vadd.f64    d0, d0, d11
    vadd.f64    d1, d1, d0
    vadd.f64    d2, d2, d1
    vadd.f64    d3, d3, d2
    vadd.f64    d4, d4, d3
    vadd.f64    d5, d5, d4
    vadd.f64    d6, d6, d5
    vadd.f64    d7, d7, d6
    vadd.f64    d8, d8, d7
    vadd.f64    d9, d9, d8
    vadd.f64    d10, d10, d9
    vadd.f64    d11, d11, d10

    // loop 3
    vadd.f64    d0, d0, d11
    vadd.f64    d1, d1, d0
    vadd.f64    d2, d2, d1
    vadd.f64    d3, d3, d2
    vadd.f64    d4, d4, d3
    vadd.f64    d5, d5, d4
    vadd.f64    d6, d6, d5
    vadd.f64    d7, d7, d6
    vadd.f64    d8, d8, d7
    vadd.f64    d9, d9, d8
    vadd.f64    d10, d10, d9
    vadd.f64    d11, d11, d10

    // loop 4
    vadd.f64    d0, d0, d11
    vadd.f64    d1, d1, d0
    vadd.f64    d2, d2, d1
    vadd.f64    d3, d3, d2
    vadd.f64    d4, d4, d3
    vadd.f64    d5, d5, d4
    vadd.f64    d6, d6, d5
    vadd.f64    d7, d7, d6
    vadd.f64    d8, d8, d7
    vadd.f64    d9, d9, d8
    vadd.f64    d10, d10, d9
    vadd.f64    d11, d11, d10

    // loop 5
    vadd.f64    d0, d0, d11
    vadd.f64    d1, d1, d0
    vadd.f64    d2, d2, d1
    vadd.f64    d3, d3, d2
    vadd.f64    d4, d4, d3
    vadd.f64    d5, d5, d4
    vadd.f64    d6, d6, d5
    vadd.f64    d7, d7, d6
    vadd.f64    d8, d8, d7
    vadd.f64    d9, d9, d8
    vadd.f64    d10, d10, d9
    vadd.f64    d11, d11, d10

    subs    r0, r0, #1
    bne     vaddDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddDMaxTest:

    vpush.64    {d8-d15}

vaddDMaxTest_LOOP:

    // loop 1
    vadd.f64    d1, d0, d0
    vadd.f64    d2, d0, d0
    vadd.f64    d3, d0, d0
    vadd.f64    d4, d0, d0
    vadd.f64    d5, d0, d0
    vadd.f64    d6, d0, d0
    vadd.f64    d7, d0, d0
    vadd.f64    d8, d0, d0
    vadd.f64    d9, d0, d0
    vadd.f64    d10, d0, d0
    vadd.f64    d11, d0, d0
    vadd.f64    d12, d0, d0

    // loop 2
    vadd.f64    d1, d0, d0
    vadd.f64    d2, d0, d0
    vadd.f64    d3, d0, d0
    vadd.f64    d4, d0, d0
    vadd.f64    d5, d0, d0
    vadd.f64    d6, d0, d0
    vadd.f64    d7, d0, d0
    vadd.f64    d8, d0, d0
    vadd.f64    d9, d0, d0
    vadd.f64    d10, d0, d0
    vadd.f64    d11, d0, d0
    vadd.f64    d12, d0, d0

    // loop 3
    vadd.f64    d1, d0, d0
    vadd.f64    d2, d0, d0
    vadd.f64    d3, d0, d0
    vadd.f64    d4, d0, d0
    vadd.f64    d5, d0, d0
    vadd.f64    d6, d0, d0
    vadd.f64    d7, d0, d0
    vadd.f64    d8, d0, d0
    vadd.f64    d9, d0, d0
    vadd.f64    d10, d0, d0
    vadd.f64    d11, d0, d0
    vadd.f64    d12, d0, d0

    // loop 4
    vadd.f64    d1, d0, d0
    vadd.f64    d2, d0, d0
    vadd.f64    d3, d0, d0
    vadd.f64    d4, d0, d0
    vadd.f64    d5, d0, d0
    vadd.f64    d6, d0, d0
    vadd.f64    d7, d0, d0
    vadd.f64    d8, d0, d0
    vadd.f64    d9, d0, d0
    vadd.f64    d10, d0, d0
    vadd.f64    d11, d0, d0
    vadd.f64    d12, d0, d0

    // loop 5
    vadd.f64    d1, d0, d0
    vadd.f64    d2, d0, d0
    vadd.f64    d3, d0, d0
    vadd.f64    d4, d0, d0
    vadd.f64    d5, d0, d0
    vadd.f64    d6, d0, d0
    vadd.f64    d7, d0, d0
    vadd.f64    d8, d0, d0
    vadd.f64    d9, d0, d0
    vadd.f64    d10, d0, d0
    vadd.f64    d11, d0, d0
    vadd.f64    d12, d0, d0

    subs    r0, r0, #1
    bne     vaddDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddL2MinTest:

    vpush.64    {d8-d15}

vaddL2MinTest_LOOP:

    // loop 1
    vadd.i64    q0, q0, q11
    vadd.i64    q1, q1, q0
    vadd.i64    q2, q2, q1
    vadd.i64    q3, q3, q2
    vadd.i64    q4, q4, q3
    vadd.i64    q5, q5, q4
    vadd.i64    q6, q6, q5
    vadd.i64    q7, q7, q6
    vadd.i64    q8, q8, q7
    vadd.i64    q9, q9, q8
    vadd.i64    q10, q10, q9
    vadd.i64    q11, q11, q10

    // loop 2
    vadd.i64    q0, q0, q11
    vadd.i64    q1, q1, q0
    vadd.i64    q2, q2, q1
    vadd.i64    q3, q3, q2
    vadd.i64    q4, q4, q3
    vadd.i64    q5, q5, q4
    vadd.i64    q6, q6, q5
    vadd.i64    q7, q7, q6
    vadd.i64    q8, q8, q7
    vadd.i64    q9, q9, q8
    vadd.i64    q10, q10, q9
    vadd.i64    q11, q11, q10

    // loop 3
    vadd.i64    q0, q0, q11
    vadd.i64    q1, q1, q0
    vadd.i64    q2, q2, q1
    vadd.i64    q3, q3, q2
    vadd.i64    q4, q4, q3
    vadd.i64    q5, q5, q4
    vadd.i64    q6, q6, q5
    vadd.i64    q7, q7, q6
    vadd.i64    q8, q8, q7
    vadd.i64    q9, q9, q8
    vadd.i64    q10, q10, q9
    vadd.i64    q11, q11, q10

    // loop 4
    vadd.i64    q0, q0, q11
    vadd.i64    q1, q1, q0
    vadd.i64    q2, q2, q1
    vadd.i64    q3, q3, q2
    vadd.i64    q4, q4, q3
    vadd.i64    q5, q5, q4
    vadd.i64    q6, q6, q5
    vadd.i64    q7, q7, q6
    vadd.i64    q8, q8, q7
    vadd.i64    q9, q9, q8
    vadd.i64    q10, q10, q9
    vadd.i64    q11, q11, q10

    // loop 5
    vadd.i64    q0, q0, q11
    vadd.i64    q1, q1, q0
    vadd.i64    q2, q2, q1
    vadd.i64    q3, q3, q2
    vadd.i64    q4, q4, q3
    vadd.i64    q5, q5, q4
    vadd.i64    q6, q6, q5
    vadd.i64    q7, q7, q6
    vadd.i64    q8, q8, q7
    vadd.i64    q9, q9, q8
    vadd.i64    q10, q10, q9
    vadd.i64    q11, q11, q10

    subs    r0, r0, #1
    bne     vaddL2MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddL2MaxTest:

    vpush.64    {d8-d15}

vaddL2MaxTest_LOOP:

    // loop 1
    vadd.i64    q1, q0, q0
    vadd.i64    q2, q0, q0
    vadd.i64    q3, q0, q0
    vadd.i64    q4, q0, q0
    vadd.i64    q5, q0, q0
    vadd.i64    q6, q0, q0
    vadd.i64    q7, q0, q0
    vadd.i64    q8, q0, q0
    vadd.i64    q9, q0, q0
    vadd.i64    q10, q0, q0
    vadd.i64    q11, q0, q0
    vadd.i64    q12, q0, q0

    // loop 2
    vadd.i64    q1, q0, q0
    vadd.i64    q2, q0, q0
    vadd.i64    q3, q0, q0
    vadd.i64    q4, q0, q0
    vadd.i64    q5, q0, q0
    vadd.i64    q6, q0, q0
    vadd.i64    q7, q0, q0
    vadd.i64    q8, q0, q0
    vadd.i64    q9, q0, q0
    vadd.i64    q10, q0, q0
    vadd.i64    q11, q0, q0
    vadd.i64    q12, q0, q0

    // loop 3
    vadd.i64    q1, q0, q0
    vadd.i64    q2, q0, q0
    vadd.i64    q3, q0, q0
    vadd.i64    q4, q0, q0
    vadd.i64    q5, q0, q0
    vadd.i64    q6, q0, q0
    vadd.i64    q7, q0, q0
    vadd.i64    q8, q0, q0
    vadd.i64    q9, q0, q0
    vadd.i64    q10, q0, q0
    vadd.i64    q11, q0, q0
    vadd.i64    q12, q0, q0

    // loop 4
    vadd.i64    q1, q0, q0
    vadd.i64    q2, q0, q0
    vadd.i64    q3, q0, q0
    vadd.i64    q4, q0, q0
    vadd.i64    q5, q0, q0
    vadd.i64    q6, q0, q0
    vadd.i64    q7, q0, q0
    vadd.i64    q8, q0, q0
    vadd.i64    q9, q0, q0
    vadd.i64    q10, q0, q0
    vadd.i64    q11, q0, q0
    vadd.i64    q12, q0, q0

    // loop 5
    vadd.i64    q1, q0, q0
    vadd.i64    q2, q0, q0
    vadd.i64    q3, q0, q0
    vadd.i64    q4, q0, q0
    vadd.i64    q5, q0, q0
    vadd.i64    q6, q0, q0
    vadd.i64    q7, q0, q0
    vadd.i64    q8, q0, q0
    vadd.i64    q9, q0, q0
    vadd.i64    q10, q0, q0
    vadd.i64    q11, q0, q0
    vadd.i64    q12, q0, q0

    subs    r0, r0, #1
    bne     vaddL2MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddI4MinTest:

    vpush.64    {d8-d15}

vaddI4MinTest_LOOP:

    // loop 1
    vadd.i32    q0, q0, q11
    vadd.i32    q1, q1, q0
    vadd.i32    q2, q2, q1
    vadd.i32    q3, q3, q2
    vadd.i32    q4, q4, q3
    vadd.i32    q5, q5, q4
    vadd.i32    q6, q6, q5
    vadd.i32    q7, q7, q6
    vadd.i32    q8, q8, q7
    vadd.i32    q9, q9, q8
    vadd.i32    q10, q10, q9
    vadd.i32    q11, q11, q10

    // loop 2
    vadd.i32    q0, q0, q11
    vadd.i32    q1, q1, q0
    vadd.i32    q2, q2, q1
    vadd.i32    q3, q3, q2
    vadd.i32    q4, q4, q3
    vadd.i32    q5, q5, q4
    vadd.i32    q6, q6, q5
    vadd.i32    q7, q7, q6
    vadd.i32    q8, q8, q7
    vadd.i32    q9, q9, q8
    vadd.i32    q10, q10, q9
    vadd.i32    q11, q11, q10

    // loop 3
    vadd.i32    q0, q0, q11
    vadd.i32    q1, q1, q0
    vadd.i32    q2, q2, q1
    vadd.i32    q3, q3, q2
    vadd.i32    q4, q4, q3
    vadd.i32    q5, q5, q4
    vadd.i32    q6, q6, q5
    vadd.i32    q7, q7, q6
    vadd.i32    q8, q8, q7
    vadd.i32    q9, q9, q8
    vadd.i32    q10, q10, q9
    vadd.i32    q11, q11, q10

    // loop 4
    vadd.i32    q0, q0, q11
    vadd.i32    q1, q1, q0
    vadd.i32    q2, q2, q1
    vadd.i32    q3, q3, q2
    vadd.i32    q4, q4, q3
    vadd.i32    q5, q5, q4
    vadd.i32    q6, q6, q5
    vadd.i32    q7, q7, q6
    vadd.i32    q8, q8, q7
    vadd.i32    q9, q9, q8
    vadd.i32    q10, q10, q9
    vadd.i32    q11, q11, q10

    // loop 5
    vadd.i32    q0, q0, q11
    vadd.i32    q1, q1, q0
    vadd.i32    q2, q2, q1
    vadd.i32    q3, q3, q2
    vadd.i32    q4, q4, q3
    vadd.i32    q5, q5, q4
    vadd.i32    q6, q6, q5
    vadd.i32    q7, q7, q6
    vadd.i32    q8, q8, q7
    vadd.i32    q9, q9, q8
    vadd.i32    q10, q10, q9
    vadd.i32    q11, q11, q10

    subs    r0, r0, #1
    bne     vaddI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddI4MaxTest:

    vpush.64    {d8-d15}

vaddI4MaxTest_LOOP:

    // loop 1
    vadd.i32    q1, q0, q0
    vadd.i32    q2, q0, q0
    vadd.i32    q3, q0, q0
    vadd.i32    q4, q0, q0
    vadd.i32    q5, q0, q0
    vadd.i32    q6, q0, q0
    vadd.i32    q7, q0, q0
    vadd.i32    q8, q0, q0
    vadd.i32    q9, q0, q0
    vadd.i32    q10, q0, q0
    vadd.i32    q11, q0, q0
    vadd.i32    q12, q0, q0

    // loop 2
    vadd.i32    q1, q0, q0
    vadd.i32    q2, q0, q0
    vadd.i32    q3, q0, q0
    vadd.i32    q4, q0, q0
    vadd.i32    q5, q0, q0
    vadd.i32    q6, q0, q0
    vadd.i32    q7, q0, q0
    vadd.i32    q8, q0, q0
    vadd.i32    q9, q0, q0
    vadd.i32    q10, q0, q0
    vadd.i32    q11, q0, q0
    vadd.i32    q12, q0, q0

    // loop 3
    vadd.i32    q1, q0, q0
    vadd.i32    q2, q0, q0
    vadd.i32    q3, q0, q0
    vadd.i32    q4, q0, q0
    vadd.i32    q5, q0, q0
    vadd.i32    q6, q0, q0
    vadd.i32    q7, q0, q0
    vadd.i32    q8, q0, q0
    vadd.i32    q9, q0, q0
    vadd.i32    q10, q0, q0
    vadd.i32    q11, q0, q0
    vadd.i32    q12, q0, q0

    // loop 4
    vadd.i32    q1, q0, q0
    vadd.i32    q2, q0, q0
    vadd.i32    q3, q0, q0
    vadd.i32    q4, q0, q0
    vadd.i32    q5, q0, q0
    vadd.i32    q6, q0, q0
    vadd.i32    q7, q0, q0
    vadd.i32    q8, q0, q0
    vadd.i32    q9, q0, q0
    vadd.i32    q10, q0, q0
    vadd.i32    q11, q0, q0
    vadd.i32    q12, q0, q0

    // loop 5
    vadd.i32    q1, q0, q0
    vadd.i32    q2, q0, q0
    vadd.i32    q3, q0, q0
    vadd.i32    q4, q0, q0
    vadd.i32    q5, q0, q0
    vadd.i32    q6, q0, q0
    vadd.i32    q7, q0, q0
    vadd.i32    q8, q0, q0
    vadd.i32    q9, q0, q0
    vadd.i32    q10, q0, q0
    vadd.i32    q11, q0, q0
    vadd.i32    q12, q0, q0

    subs    r0, r0, #1
    bne     vaddI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddF4MinTest:

    vpush.64    {d8-d15}

vaddF4MinTest_LOOP:

    // loop 1
    vadd.f32    q0, q0, q11
    vadd.f32    q1, q1, q0
    vadd.f32    q2, q2, q1
    vadd.f32    q3, q3, q2
    vadd.f32    q4, q4, q3
    vadd.f32    q5, q5, q4
    vadd.f32    q6, q6, q5
    vadd.f32    q7, q7, q6
    vadd.f32    q8, q8, q7
    vadd.f32    q9, q9, q8
    vadd.f32    q10, q10, q9
    vadd.f32    q11, q11, q10

    // loop 2
    vadd.f32    q0, q0, q11
    vadd.f32    q1, q1, q0
    vadd.f32    q2, q2, q1
    vadd.f32    q3, q3, q2
    vadd.f32    q4, q4, q3
    vadd.f32    q5, q5, q4
    vadd.f32    q6, q6, q5
    vadd.f32    q7, q7, q6
    vadd.f32    q8, q8, q7
    vadd.f32    q9, q9, q8
    vadd.f32    q10, q10, q9
    vadd.f32    q11, q11, q10

    // loop 3
    vadd.f32    q0, q0, q11
    vadd.f32    q1, q1, q0
    vadd.f32    q2, q2, q1
    vadd.f32    q3, q3, q2
    vadd.f32    q4, q4, q3
    vadd.f32    q5, q5, q4
    vadd.f32    q6, q6, q5
    vadd.f32    q7, q7, q6
    vadd.f32    q8, q8, q7
    vadd.f32    q9, q9, q8
    vadd.f32    q10, q10, q9
    vadd.f32    q11, q11, q10

    // loop 4
    vadd.f32    q0, q0, q11
    vadd.f32    q1, q1, q0
    vadd.f32    q2, q2, q1
    vadd.f32    q3, q3, q2
    vadd.f32    q4, q4, q3
    vadd.f32    q5, q5, q4
    vadd.f32    q6, q6, q5
    vadd.f32    q7, q7, q6
    vadd.f32    q8, q8, q7
    vadd.f32    q9, q9, q8
    vadd.f32    q10, q10, q9
    vadd.f32    q11, q11, q10

    // loop 5
    vadd.f32    q0, q0, q11
    vadd.f32    q1, q1, q0
    vadd.f32    q2, q2, q1
    vadd.f32    q3, q3, q2
    vadd.f32    q4, q4, q3
    vadd.f32    q5, q5, q4
    vadd.f32    q6, q6, q5
    vadd.f32    q7, q7, q6
    vadd.f32    q8, q8, q7
    vadd.f32    q9, q9, q8
    vadd.f32    q10, q10, q9
    vadd.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vaddF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddF4MaxTest:

    vpush.64    {d8-d15}

vaddF4MaxTest_LOOP:

    // loop 1
    vadd.f32    q1, q0, q0
    vadd.f32    q2, q0, q0
    vadd.f32    q3, q0, q0
    vadd.f32    q4, q0, q0
    vadd.f32    q5, q0, q0
    vadd.f32    q6, q0, q0
    vadd.f32    q7, q0, q0
    vadd.f32    q8, q0, q0
    vadd.f32    q9, q0, q0
    vadd.f32    q10, q0, q0
    vadd.f32    q11, q0, q0
    vadd.f32    q12, q0, q0

    // loop 2
    vadd.f32    q1, q0, q0
    vadd.f32    q2, q0, q0
    vadd.f32    q3, q0, q0
    vadd.f32    q4, q0, q0
    vadd.f32    q5, q0, q0
    vadd.f32    q6, q0, q0
    vadd.f32    q7, q0, q0
    vadd.f32    q8, q0, q0
    vadd.f32    q9, q0, q0
    vadd.f32    q10, q0, q0
    vadd.f32    q11, q0, q0
    vadd.f32    q12, q0, q0

    // loop 3
    vadd.f32    q1, q0, q0
    vadd.f32    q2, q0, q0
    vadd.f32    q3, q0, q0
    vadd.f32    q4, q0, q0
    vadd.f32    q5, q0, q0
    vadd.f32    q6, q0, q0
    vadd.f32    q7, q0, q0
    vadd.f32    q8, q0, q0
    vadd.f32    q9, q0, q0
    vadd.f32    q10, q0, q0
    vadd.f32    q11, q0, q0
    vadd.f32    q12, q0, q0

    // loop 4
    vadd.f32    q1, q0, q0
    vadd.f32    q2, q0, q0
    vadd.f32    q3, q0, q0
    vadd.f32    q4, q0, q0
    vadd.f32    q5, q0, q0
    vadd.f32    q6, q0, q0
    vadd.f32    q7, q0, q0
    vadd.f32    q8, q0, q0
    vadd.f32    q9, q0, q0
    vadd.f32    q10, q0, q0
    vadd.f32    q11, q0, q0
    vadd.f32    q12, q0, q0

    // loop 5
    vadd.f32    q1, q0, q0
    vadd.f32    q2, q0, q0
    vadd.f32    q3, q0, q0
    vadd.f32    q4, q0, q0
    vadd.f32    q5, q0, q0
    vadd.f32    q6, q0, q0
    vadd.f32    q7, q0, q0
    vadd.f32    q8, q0, q0
    vadd.f32    q9, q0, q0
    vadd.f32    q10, q0, q0
    vadd.f32    q11, q0, q0
    vadd.f32    q12, q0, q0

    subs    r0, r0, #1
    bne     vaddF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vaddhnI4MinTest:

    vpush.64    {d8-d15}

vaddhnI4MinTest_LOOP:

    // loop 1
    vaddhn.i32  d0, q0, q11
    vaddhn.i32  d2, q1, q0
    vaddhn.i32  d4, q2, q1
    vaddhn.i32  d6, q3, q2
    vaddhn.i32  d8, q4, q3
    vaddhn.i32  d10, q5, q4
    vaddhn.i32  d12, q6, q5
    vaddhn.i32  d14, q7, q6
    vaddhn.i32  d16, q8, q7
    vaddhn.i32  d18, q9, q8
    vaddhn.i32  d20, q10, q9
    vaddhn.i32  d22, q11, q10

    // loop 2
    vaddhn.i32  d0, q0, q11
    vaddhn.i32  d2, q1, q0
    vaddhn.i32  d4, q2, q1
    vaddhn.i32  d6, q3, q2
    vaddhn.i32  d8, q4, q3
    vaddhn.i32  d10, q5, q4
    vaddhn.i32  d12, q6, q5
    vaddhn.i32  d14, q7, q6
    vaddhn.i32  d16, q8, q7
    vaddhn.i32  d18, q9, q8
    vaddhn.i32  d20, q10, q9
    vaddhn.i32  d22, q11, q10

    // loop 3
    vaddhn.i32  d0, q0, q11
    vaddhn.i32  d2, q1, q0
    vaddhn.i32  d4, q2, q1
    vaddhn.i32  d6, q3, q2
    vaddhn.i32  d8, q4, q3
    vaddhn.i32  d10, q5, q4
    vaddhn.i32  d12, q6, q5
    vaddhn.i32  d14, q7, q6
    vaddhn.i32  d16, q8, q7
    vaddhn.i32  d18, q9, q8
    vaddhn.i32  d20, q10, q9
    vaddhn.i32  d22, q11, q10

    // loop 4
    vaddhn.i32  d0, q0, q11
    vaddhn.i32  d2, q1, q0
    vaddhn.i32  d4, q2, q1
    vaddhn.i32  d6, q3, q2
    vaddhn.i32  d8, q4, q3
    vaddhn.i32  d10, q5, q4
    vaddhn.i32  d12, q6, q5
    vaddhn.i32  d14, q7, q6
    vaddhn.i32  d16, q8, q7
    vaddhn.i32  d18, q9, q8
    vaddhn.i32  d20, q10, q9
    vaddhn.i32  d22, q11, q10

    // loop 5
    vaddhn.i32  d0, q0, q11
    vaddhn.i32  d2, q1, q0
    vaddhn.i32  d4, q2, q1
    vaddhn.i32  d6, q3, q2
    vaddhn.i32  d8, q4, q3
    vaddhn.i32  d10, q5, q4
    vaddhn.i32  d12, q6, q5
    vaddhn.i32  d14, q7, q6
    vaddhn.i32  d16, q8, q7
    vaddhn.i32  d18, q9, q8
    vaddhn.i32  d20, q10, q9
    vaddhn.i32  d22, q11, q10

    subs    r0, r0, #1
    bne     vaddhnI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddhnI4MaxTest:

    vpush.64    {d8-d15}

vaddhnI4MaxTest_LOOP:

    // loop 1
    vaddhn.i32  d2, q0, q0
    vaddhn.i32  d4, q0, q0
    vaddhn.i32  d6, q0, q0
    vaddhn.i32  d8, q0, q0
    vaddhn.i32  d10, q0, q0
    vaddhn.i32  d12, q0, q0
    vaddhn.i32  d14, q0, q0
    vaddhn.i32  d16, q0, q0
    vaddhn.i32  d18, q0, q0
    vaddhn.i32  d20, q0, q0
    vaddhn.i32  d22, q0, q0
    vaddhn.i32  d24, q0, q0

    // loop 2
    vaddhn.i32  d2, q0, q0
    vaddhn.i32  d4, q0, q0
    vaddhn.i32  d6, q0, q0
    vaddhn.i32  d8, q0, q0
    vaddhn.i32  d10, q0, q0
    vaddhn.i32  d12, q0, q0
    vaddhn.i32  d14, q0, q0
    vaddhn.i32  d16, q0, q0
    vaddhn.i32  d18, q0, q0
    vaddhn.i32  d20, q0, q0
    vaddhn.i32  d22, q0, q0
    vaddhn.i32  d24, q0, q0

    // loop 3
    vaddhn.i32  d2, q0, q0
    vaddhn.i32  d4, q0, q0
    vaddhn.i32  d6, q0, q0
    vaddhn.i32  d8, q0, q0
    vaddhn.i32  d10, q0, q0
    vaddhn.i32  d12, q0, q0
    vaddhn.i32  d14, q0, q0
    vaddhn.i32  d16, q0, q0
    vaddhn.i32  d18, q0, q0
    vaddhn.i32  d20, q0, q0
    vaddhn.i32  d22, q0, q0
    vaddhn.i32  d24, q0, q0

    // loop 4
    vaddhn.i32  d2, q0, q0
    vaddhn.i32  d4, q0, q0
    vaddhn.i32  d6, q0, q0
    vaddhn.i32  d8, q0, q0
    vaddhn.i32  d10, q0, q0
    vaddhn.i32  d12, q0, q0
    vaddhn.i32  d14, q0, q0
    vaddhn.i32  d16, q0, q0
    vaddhn.i32  d18, q0, q0
    vaddhn.i32  d20, q0, q0
    vaddhn.i32  d22, q0, q0
    vaddhn.i32  d24, q0, q0

    // loop 5
    vaddhn.i32  d2, q0, q0
    vaddhn.i32  d4, q0, q0
    vaddhn.i32  d6, q0, q0
    vaddhn.i32  d8, q0, q0
    vaddhn.i32  d10, q0, q0
    vaddhn.i32  d12, q0, q0
    vaddhn.i32  d14, q0, q0
    vaddhn.i32  d16, q0, q0
    vaddhn.i32  d18, q0, q0
    vaddhn.i32  d20, q0, q0
    vaddhn.i32  d22, q0, q0
    vaddhn.i32  d24, q0, q0

    subs    r0, r0, #1
    bne     vaddhnI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vaddhnL2MinTest:

    vpush.64    {d8-d15}

vaddhnL2MinTest_LOOP:

    // loop 1
    vaddhn.i64  d0, q0, q11
    vaddhn.i64  d2, q1, q0
    vaddhn.i64  d4, q2, q1
    vaddhn.i64  d6, q3, q2
    vaddhn.i64  d8, q4, q3
    vaddhn.i64  d10, q5, q4
    vaddhn.i64  d12, q6, q5
    vaddhn.i64  d14, q7, q6
    vaddhn.i64  d16, q8, q7
    vaddhn.i64  d18, q9, q8
    vaddhn.i64  d20, q10, q9
    vaddhn.i64  d22, q11, q10

    // loop 2
    vaddhn.i64  d0, q0, q11
    vaddhn.i64  d2, q1, q0
    vaddhn.i64  d4, q2, q1
    vaddhn.i64  d6, q3, q2
    vaddhn.i64  d8, q4, q3
    vaddhn.i64  d10, q5, q4
    vaddhn.i64  d12, q6, q5
    vaddhn.i64  d14, q7, q6
    vaddhn.i64  d16, q8, q7
    vaddhn.i64  d18, q9, q8
    vaddhn.i64  d20, q10, q9
    vaddhn.i64  d22, q11, q10

    // loop 3
    vaddhn.i64  d0, q0, q11
    vaddhn.i64  d2, q1, q0
    vaddhn.i64  d4, q2, q1
    vaddhn.i64  d6, q3, q2
    vaddhn.i64  d8, q4, q3
    vaddhn.i64  d10, q5, q4
    vaddhn.i64  d12, q6, q5
    vaddhn.i64  d14, q7, q6
    vaddhn.i64  d16, q8, q7
    vaddhn.i64  d18, q9, q8
    vaddhn.i64  d20, q10, q9
    vaddhn.i64  d22, q11, q10

    // loop 4
    vaddhn.i64  d0, q0, q11
    vaddhn.i64  d2, q1, q0
    vaddhn.i64  d4, q2, q1
    vaddhn.i64  d6, q3, q2
    vaddhn.i64  d8, q4, q3
    vaddhn.i64  d10, q5, q4
    vaddhn.i64  d12, q6, q5
    vaddhn.i64  d14, q7, q6
    vaddhn.i64  d16, q8, q7
    vaddhn.i64  d18, q9, q8
    vaddhn.i64  d20, q10, q9
    vaddhn.i64  d22, q11, q10

    // loop 5
    vaddhn.i64  d0, q0, q11
    vaddhn.i64  d2, q1, q0
    vaddhn.i64  d4, q2, q1
    vaddhn.i64  d6, q3, q2
    vaddhn.i64  d8, q4, q3
    vaddhn.i64  d10, q5, q4
    vaddhn.i64  d12, q6, q5
    vaddhn.i64  d14, q7, q6
    vaddhn.i64  d16, q8, q7
    vaddhn.i64  d18, q9, q8
    vaddhn.i64  d20, q10, q9
    vaddhn.i64  d22, q11, q10

    subs    r0, r0, #1
    bne     vaddhnL2MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddhnL2MaxTest:

    vpush.64    {d8-d15}

vaddhnL2MaxTest_LOOP:

    // loop 1
    vaddhn.i64  d2, q0, q0
    vaddhn.i64  d4, q0, q0
    vaddhn.i64  d6, q0, q0
    vaddhn.i64  d8, q0, q0
    vaddhn.i64  d10, q0, q0
    vaddhn.i64  d12, q0, q0
    vaddhn.i64  d14, q0, q0
    vaddhn.i64  d16, q0, q0
    vaddhn.i64  d18, q0, q0
    vaddhn.i64  d20, q0, q0
    vaddhn.i64  d22, q0, q0
    vaddhn.i64  d24, q0, q0

    // loop 2
    vaddhn.i64  d2, q0, q0
    vaddhn.i64  d4, q0, q0
    vaddhn.i64  d6, q0, q0
    vaddhn.i64  d8, q0, q0
    vaddhn.i64  d10, q0, q0
    vaddhn.i64  d12, q0, q0
    vaddhn.i64  d14, q0, q0
    vaddhn.i64  d16, q0, q0
    vaddhn.i64  d18, q0, q0
    vaddhn.i64  d20, q0, q0
    vaddhn.i64  d22, q0, q0
    vaddhn.i64  d24, q0, q0

    // loop 3
    vaddhn.i64  d2, q0, q0
    vaddhn.i64  d4, q0, q0
    vaddhn.i64  d6, q0, q0
    vaddhn.i64  d8, q0, q0
    vaddhn.i64  d10, q0, q0
    vaddhn.i64  d12, q0, q0
    vaddhn.i64  d14, q0, q0
    vaddhn.i64  d16, q0, q0
    vaddhn.i64  d18, q0, q0
    vaddhn.i64  d20, q0, q0
    vaddhn.i64  d22, q0, q0
    vaddhn.i64  d24, q0, q0

    // loop 4
    vaddhn.i64  d2, q0, q0
    vaddhn.i64  d4, q0, q0
    vaddhn.i64  d6, q0, q0
    vaddhn.i64  d8, q0, q0
    vaddhn.i64  d10, q0, q0
    vaddhn.i64  d12, q0, q0
    vaddhn.i64  d14, q0, q0
    vaddhn.i64  d16, q0, q0
    vaddhn.i64  d18, q0, q0
    vaddhn.i64  d20, q0, q0
    vaddhn.i64  d22, q0, q0
    vaddhn.i64  d24, q0, q0

    // loop 5
    vaddhn.i64  d2, q0, q0
    vaddhn.i64  d4, q0, q0
    vaddhn.i64  d6, q0, q0
    vaddhn.i64  d8, q0, q0
    vaddhn.i64  d10, q0, q0
    vaddhn.i64  d12, q0, q0
    vaddhn.i64  d14, q0, q0
    vaddhn.i64  d16, q0, q0
    vaddhn.i64  d18, q0, q0
    vaddhn.i64  d20, q0, q0
    vaddhn.i64  d22, q0, q0
    vaddhn.i64  d24, q0, q0

    subs    r0, r0, #1
    bne     vaddhnL2MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vaddlI2MinTest:

    vpush.64    {d8-d15}

vaddlI2MinTest_LOOP:

    // loop 1
    vaddl.s32   q0, d0, d22
    vaddl.s32   q1, d2, d1
    vaddl.s32   q2, d4, d3
    vaddl.s32   q3, d6, d5
    vaddl.s32   q4, d8, d7
    vaddl.s32   q5, d10, d9
    vaddl.s32   q6, d12, d11
    vaddl.s32   q7, d14, d13
    vaddl.s32   q8, d16, d14
    vaddl.s32   q9, d18, d16
    vaddl.s32   q10, d20, d18
    vaddl.s32   q11, d22, d20

    // loop 2
    vaddl.s32   q0, d0, d22
    vaddl.s32   q1, d2, d1
    vaddl.s32   q2, d4, d3
    vaddl.s32   q3, d6, d5
    vaddl.s32   q4, d8, d7
    vaddl.s32   q5, d10, d9
    vaddl.s32   q6, d12, d11
    vaddl.s32   q7, d14, d13
    vaddl.s32   q8, d16, d14
    vaddl.s32   q9, d18, d16
    vaddl.s32   q10, d20, d18
    vaddl.s32   q11, d22, d20

    // loop 3
    vaddl.s32   q0, d0, d22
    vaddl.s32   q1, d2, d1
    vaddl.s32   q2, d4, d3
    vaddl.s32   q3, d6, d5
    vaddl.s32   q4, d8, d7
    vaddl.s32   q5, d10, d9
    vaddl.s32   q6, d12, d11
    vaddl.s32   q7, d14, d13
    vaddl.s32   q8, d16, d14
    vaddl.s32   q9, d18, d16
    vaddl.s32   q10, d20, d18
    vaddl.s32   q11, d22, d20

    // loop 4
    vaddl.s32   q0, d0, d22
    vaddl.s32   q1, d2, d1
    vaddl.s32   q2, d4, d3
    vaddl.s32   q3, d6, d5
    vaddl.s32   q4, d8, d7
    vaddl.s32   q5, d10, d9
    vaddl.s32   q6, d12, d11
    vaddl.s32   q7, d14, d13
    vaddl.s32   q8, d16, d14
    vaddl.s32   q9, d18, d16
    vaddl.s32   q10, d20, d18
    vaddl.s32   q11, d22, d20

    // loop 5
    vaddl.s32   q0, d0, d22
    vaddl.s32   q1, d2, d1
    vaddl.s32   q2, d4, d3
    vaddl.s32   q3, d6, d5
    vaddl.s32   q4, d8, d7
    vaddl.s32   q5, d10, d9
    vaddl.s32   q6, d12, d11
    vaddl.s32   q7, d14, d13
    vaddl.s32   q8, d16, d14
    vaddl.s32   q9, d18, d16
    vaddl.s32   q10, d20, d18
    vaddl.s32   q11, d22, d20

    subs    r0, r0, #1
    bne     vaddlI2MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddlI2MaxTest:

    vpush.64    {d8-d15}

vaddlI2MaxTest_LOOP:

    // loop 1
    vaddl.s32   q1, d0, d0
    vaddl.s32   q2, d0, d0
    vaddl.s32   q3, d0, d0
    vaddl.s32   q4, d0, d0
    vaddl.s32   q5, d0, d0
    vaddl.s32   q6, d0, d0
    vaddl.s32   q7, d0, d0
    vaddl.s32   q8, d0, d0
    vaddl.s32   q9, d0, d0
    vaddl.s32   q10, d0, d0
    vaddl.s32   q11, d0, d0
    vaddl.s32   q12, d0, d0

    // loop 2
    vaddl.s32   q1, d0, d0
    vaddl.s32   q2, d0, d0
    vaddl.s32   q3, d0, d0
    vaddl.s32   q4, d0, d0
    vaddl.s32   q5, d0, d0
    vaddl.s32   q6, d0, d0
    vaddl.s32   q7, d0, d0
    vaddl.s32   q8, d0, d0
    vaddl.s32   q9, d0, d0
    vaddl.s32   q10, d0, d0
    vaddl.s32   q11, d0, d0
    vaddl.s32   q12, d0, d0

    // loop 3
    vaddl.s32   q1, d0, d0
    vaddl.s32   q2, d0, d0
    vaddl.s32   q3, d0, d0
    vaddl.s32   q4, d0, d0
    vaddl.s32   q5, d0, d0
    vaddl.s32   q6, d0, d0
    vaddl.s32   q7, d0, d0
    vaddl.s32   q8, d0, d0
    vaddl.s32   q9, d0, d0
    vaddl.s32   q10, d0, d0
    vaddl.s32   q11, d0, d0
    vaddl.s32   q12, d0, d0

    // loop 4
    vaddl.s32   q1, d0, d0
    vaddl.s32   q2, d0, d0
    vaddl.s32   q3, d0, d0
    vaddl.s32   q4, d0, d0
    vaddl.s32   q5, d0, d0
    vaddl.s32   q6, d0, d0
    vaddl.s32   q7, d0, d0
    vaddl.s32   q8, d0, d0
    vaddl.s32   q9, d0, d0
    vaddl.s32   q10, d0, d0
    vaddl.s32   q11, d0, d0
    vaddl.s32   q12, d0, d0

    // loop 5
    vaddl.s32   q1, d0, d0
    vaddl.s32   q2, d0, d0
    vaddl.s32   q3, d0, d0
    vaddl.s32   q4, d0, d0
    vaddl.s32   q5, d0, d0
    vaddl.s32   q6, d0, d0
    vaddl.s32   q7, d0, d0
    vaddl.s32   q8, d0, d0
    vaddl.s32   q9, d0, d0
    vaddl.s32   q10, d0, d0
    vaddl.s32   q11, d0, d0
    vaddl.s32   q12, d0, d0

    subs    r0, r0, #1
    bne     vaddlI2MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddwI4MinTest:

    vpush.64    {d8-d15}

vaddwI4MinTest_LOOP:

    // loop 1
    vaddw.s32   q0, q0, d22
    vaddw.s32   q1, q1, d0
    vaddw.s32   q2, q2, d2
    vaddw.s32   q3, q3, d4
    vaddw.s32   q4, q4, d6
    vaddw.s32   q5, q5, d8
    vaddw.s32   q6, q6, d10
    vaddw.s32   q7, q7, d12
    vaddw.s32   q8, q8, d14
    vaddw.s32   q9, q9, d16
    vaddw.s32   q10, q10, d18
    vaddw.s32   q11, q11, d20

    // loop 2
    vaddw.s32   q0, q0, d22
    vaddw.s32   q1, q1, d0
    vaddw.s32   q2, q2, d2
    vaddw.s32   q3, q3, d4
    vaddw.s32   q4, q4, d6
    vaddw.s32   q5, q5, d8
    vaddw.s32   q6, q6, d10
    vaddw.s32   q7, q7, d12
    vaddw.s32   q8, q8, d14
    vaddw.s32   q9, q9, d16
    vaddw.s32   q10, q10, d18
    vaddw.s32   q11, q11, d20

    // loop 3
    vaddw.s32   q0, q0, d22
    vaddw.s32   q1, q1, d0
    vaddw.s32   q2, q2, d2
    vaddw.s32   q3, q3, d4
    vaddw.s32   q4, q4, d6
    vaddw.s32   q5, q5, d8
    vaddw.s32   q6, q6, d10
    vaddw.s32   q7, q7, d12
    vaddw.s32   q8, q8, d14
    vaddw.s32   q9, q9, d16
    vaddw.s32   q10, q10, d18
    vaddw.s32   q11, q11, d20

    // loop 4
    vaddw.s32   q0, q0, d22
    vaddw.s32   q1, q1, d0
    vaddw.s32   q2, q2, d2
    vaddw.s32   q3, q3, d4
    vaddw.s32   q4, q4, d6
    vaddw.s32   q5, q5, d8
    vaddw.s32   q6, q6, d10
    vaddw.s32   q7, q7, d12
    vaddw.s32   q8, q8, d14
    vaddw.s32   q9, q9, d16
    vaddw.s32   q10, q10, d18
    vaddw.s32   q11, q11, d20

    // loop 5
    vaddw.s32   q0, q0, d22
    vaddw.s32   q1, q1, d0
    vaddw.s32   q2, q2, d2
    vaddw.s32   q3, q3, d4
    vaddw.s32   q4, q4, d6
    vaddw.s32   q5, q5, d8
    vaddw.s32   q6, q6, d10
    vaddw.s32   q7, q7, d12
    vaddw.s32   q8, q8, d14
    vaddw.s32   q9, q9, d16
    vaddw.s32   q10, q10, d18
    vaddw.s32   q11, q11, d20

    subs    r0, r0, #1
    bne     vaddwI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vaddwI4MaxTest:

    vpush.64    {d8-d15}

vaddwI4MaxTest_LOOP:

    // loop 1
    vaddw.s32   q1, q0, d0
    vaddw.s32   q2, q0, d0
    vaddw.s32   q3, q0, d0
    vaddw.s32   q4, q0, d0
    vaddw.s32   q5, q0, d0
    vaddw.s32   q6, q0, d0
    vaddw.s32   q7, q0, d0
    vaddw.s32   q8, q0, d0
    vaddw.s32   q9, q0, d0
    vaddw.s32   q10, q0, d0
    vaddw.s32   q11, q0, d0
    vaddw.s32   q12, q0, d0

    // loop 2
    vaddw.s32   q1, q0, d0
    vaddw.s32   q2, q0, d0
    vaddw.s32   q3, q0, d0
    vaddw.s32   q4, q0, d0
    vaddw.s32   q5, q0, d0
    vaddw.s32   q6, q0, d0
    vaddw.s32   q7, q0, d0
    vaddw.s32   q8, q0, d0
    vaddw.s32   q9, q0, d0
    vaddw.s32   q10, q0, d0
    vaddw.s32   q11, q0, d0
    vaddw.s32   q12, q0, d0

    // loop 3
    vaddw.s32   q1, q0, d0
    vaddw.s32   q2, q0, d0
    vaddw.s32   q3, q0, d0
    vaddw.s32   q4, q0, d0
    vaddw.s32   q5, q0, d0
    vaddw.s32   q6, q0, d0
    vaddw.s32   q7, q0, d0
    vaddw.s32   q8, q0, d0
    vaddw.s32   q9, q0, d0
    vaddw.s32   q10, q0, d0
    vaddw.s32   q11, q0, d0
    vaddw.s32   q12, q0, d0

    // loop 4
    vaddw.s32   q1, q0, d0
    vaddw.s32   q2, q0, d0
    vaddw.s32   q3, q0, d0
    vaddw.s32   q4, q0, d0
    vaddw.s32   q5, q0, d0
    vaddw.s32   q6, q0, d0
    vaddw.s32   q7, q0, d0
    vaddw.s32   q8, q0, d0
    vaddw.s32   q9, q0, d0
    vaddw.s32   q10, q0, d0
    vaddw.s32   q11, q0, d0
    vaddw.s32   q12, q0, d0

    // loop 5
    vaddw.s32   q1, q0, d0
    vaddw.s32   q2, q0, d0
    vaddw.s32   q3, q0, d0
    vaddw.s32   q4, q0, d0
    vaddw.s32   q5, q0, d0
    vaddw.s32   q6, q0, d0
    vaddw.s32   q7, q0, d0
    vaddw.s32   q8, q0, d0
    vaddw.s32   q9, q0, d0
    vaddw.s32   q10, q0, d0
    vaddw.s32   q11, q0, d0
    vaddw.s32   q12, q0, d0

    subs    r0, r0, #1
    bne     vaddwI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vandI4MinTest:

    vpush.64    {d8-d15}

vandI4MinTest_LOOP:

    // loop 1
    vand    q0, q0, q11
    vand    q1, q1, q0
    vand    q2, q2, q1
    vand    q3, q3, q2
    vand    q4, q4, q3
    vand    q5, q5, q4
    vand    q6, q6, q5
    vand    q7, q7, q6
    vand    q8, q8, q7
    vand    q9, q9, q8
    vand    q10, q10, q9
    vand    q11, q11, q10
    
    // loop 2
    vand    q0, q0, q11
    vand    q1, q1, q0
    vand    q2, q2, q1
    vand    q3, q3, q2
    vand    q4, q4, q3
    vand    q5, q5, q4
    vand    q6, q6, q5
    vand    q7, q7, q6
    vand    q8, q8, q7
    vand    q9, q9, q8
    vand    q10, q10, q9
    vand    q11, q11, q10

    // loop 3
    vand    q0, q0, q11
    vand    q1, q1, q0
    vand    q2, q2, q1
    vand    q3, q3, q2
    vand    q4, q4, q3
    vand    q5, q5, q4
    vand    q6, q6, q5
    vand    q7, q7, q6
    vand    q8, q8, q7
    vand    q9, q9, q8
    vand    q10, q10, q9
    vand    q11, q11, q10

    // loop 4
    vand    q0, q0, q11
    vand    q1, q1, q0
    vand    q2, q2, q1
    vand    q3, q3, q2
    vand    q4, q4, q3
    vand    q5, q5, q4
    vand    q6, q6, q5
    vand    q7, q7, q6
    vand    q8, q8, q7
    vand    q9, q9, q8
    vand    q10, q10, q9
    vand    q11, q11, q10

    // loop 5
    vand    q0, q0, q11
    vand    q1, q1, q0
    vand    q2, q2, q1
    vand    q3, q3, q2
    vand    q4, q4, q3
    vand    q5, q5, q4
    vand    q6, q6, q5
    vand    q7, q7, q6
    vand    q8, q8, q7
    vand    q9, q9, q8
    vand    q10, q10, q9
    vand    q11, q11, q10

    subs    r0, r0, #1
    bne     vandI4MinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vandI4MaxTest:

    vpush.64    {d8-d15}

vandI4MaxTest_LOOP:

    // loop 1
    vand    q1, q0, q0
    vand    q2, q0, q0
    vand    q3, q0, q0
    vand    q4, q0, q0
    vand    q5, q0, q0
    vand    q6, q0, q0
    vand    q7, q0, q0
    vand    q8, q0, q0
    vand    q9, q0, q0
    vand    q10, q0, q0
    vand    q11, q0, q0
    vand    q12, q0, q0

    // loop 2
    vand    q1, q0, q0
    vand    q2, q0, q0
    vand    q3, q0, q0
    vand    q4, q0, q0
    vand    q5, q0, q0
    vand    q6, q0, q0
    vand    q7, q0, q0
    vand    q8, q0, q0
    vand    q9, q0, q0
    vand    q10, q0, q0
    vand    q11, q0, q0
    vand    q12, q0, q0

    // loop 3
    vand    q1, q0, q0
    vand    q2, q0, q0
    vand    q3, q0, q0
    vand    q4, q0, q0
    vand    q5, q0, q0
    vand    q6, q0, q0
    vand    q7, q0, q0
    vand    q8, q0, q0
    vand    q9, q0, q0
    vand    q10, q0, q0
    vand    q11, q0, q0
    vand    q12, q0, q0

    // loop 4
    vand    q1, q0, q0
    vand    q2, q0, q0
    vand    q3, q0, q0
    vand    q4, q0, q0
    vand    q5, q0, q0
    vand    q6, q0, q0
    vand    q7, q0, q0
    vand    q8, q0, q0
    vand    q9, q0, q0
    vand    q10, q0, q0
    vand    q11, q0, q0
    vand    q12, q0, q0

    // loop 5
    vand    q1, q0, q0
    vand    q2, q0, q0
    vand    q3, q0, q0
    vand    q4, q0, q0
    vand    q5, q0, q0
    vand    q6, q0, q0
    vand    q7, q0, q0
    vand    q8, q0, q0
    vand    q9, q0, q0
    vand    q10, q0, q0
    vand    q11, q0, q0
    vand    q12, q0, q0

    subs    r0, r0, #1
    bne     vandI4MaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr


_vbicImmMinTest:

    vpush.64    {d8-d15}

vbicImmMinTest_LOOP:

    // loop 1
    vbic.i32    q0, #1
    vbic.i32    q0, #2
    vbic.i32    q0, #3
    vbic.i32    q0, #4
    vbic.i32    q0, #5
    vbic.i32    q0, #6
    vbic.i32    q0, #7
    vbic.i32    q0, #8
    vbic.i32    q0, #9
    vbic.i32    q0, #10
    vbic.i32    q0, #11
    vbic.i32    q0, #12

    // loop 2
    vbic.i32    q0, #1
    vbic.i32    q0, #2
    vbic.i32    q0, #3
    vbic.i32    q0, #4
    vbic.i32    q0, #5
    vbic.i32    q0, #6
    vbic.i32    q0, #7
    vbic.i32    q0, #8
    vbic.i32    q0, #9
    vbic.i32    q0, #10
    vbic.i32    q0, #11
    vbic.i32    q0, #12

    // loop 3
    vbic.i32    q0, #1
    vbic.i32    q0, #2
    vbic.i32    q0, #3
    vbic.i32    q0, #4
    vbic.i32    q0, #5
    vbic.i32    q0, #6
    vbic.i32    q0, #7
    vbic.i32    q0, #8
    vbic.i32    q0, #9
    vbic.i32    q0, #10
    vbic.i32    q0, #11
    vbic.i32    q0, #12

    // loop 4
    vbic.i32    q0, #1
    vbic.i32    q0, #2
    vbic.i32    q0, #3
    vbic.i32    q0, #4
    vbic.i32    q0, #5
    vbic.i32    q0, #6
    vbic.i32    q0, #7
    vbic.i32    q0, #8
    vbic.i32    q0, #9
    vbic.i32    q0, #10
    vbic.i32    q0, #11
    vbic.i32    q0, #12

    // loop 5
    vbic.i32    q0, #1
    vbic.i32    q0, #2
    vbic.i32    q0, #3
    vbic.i32    q0, #4
    vbic.i32    q0, #5
    vbic.i32    q0, #6
    vbic.i32    q0, #7
    vbic.i32    q0, #8
    vbic.i32    q0, #9
    vbic.i32    q0, #10
    vbic.i32    q0, #11
    vbic.i32    q0, #12

    subs    r0, r0, #1
    bne     vbicImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vbicImmMaxTest:

    vpush.64    {d8-d15}

vbicImmMaxTest_LOOP:

    // loop 1
    vbic.i32    q0, #0
    vbic.i32    q1, #0
    vbic.i32    q2, #0
    vbic.i32    q3, #0
    vbic.i32    q4, #0
    vbic.i32    q5, #0
    vbic.i32    q6, #0
    vbic.i32    q7, #0
    vbic.i32    q8, #0
    vbic.i32    q9, #0
    vbic.i32    q10, #0
    vbic.i32    q11, #0

    // loop 2
    vbic.i32    q0, #0
    vbic.i32    q1, #0
    vbic.i32    q2, #0
    vbic.i32    q3, #0
    vbic.i32    q4, #0
    vbic.i32    q5, #0
    vbic.i32    q6, #0
    vbic.i32    q7, #0
    vbic.i32    q8, #0
    vbic.i32    q9, #0
    vbic.i32    q10, #0
    vbic.i32    q11, #0

    // loop 3
    vbic.i32    q0, #0
    vbic.i32    q1, #0
    vbic.i32    q2, #0
    vbic.i32    q3, #0
    vbic.i32    q4, #0
    vbic.i32    q5, #0
    vbic.i32    q6, #0
    vbic.i32    q7, #0
    vbic.i32    q8, #0
    vbic.i32    q9, #0
    vbic.i32    q10, #0
    vbic.i32    q11, #0

    // loop 4
    vbic.i32    q0, #0
    vbic.i32    q1, #0
    vbic.i32    q2, #0
    vbic.i32    q3, #0
    vbic.i32    q4, #0
    vbic.i32    q5, #0
    vbic.i32    q6, #0
    vbic.i32    q7, #0
    vbic.i32    q8, #0
    vbic.i32    q9, #0
    vbic.i32    q10, #0
    vbic.i32    q11, #0

    // loop 5
    vbic.i32    q0, #0
    vbic.i32    q1, #0
    vbic.i32    q2, #0
    vbic.i32    q3, #0
    vbic.i32    q4, #0
    vbic.i32    q5, #0
    vbic.i32    q6, #0
    vbic.i32    q7, #0
    vbic.i32    q8, #0
    vbic.i32    q9, #0
    vbic.i32    q10, #0
    vbic.i32    q11, #0

    subs    r0, r0, #1
    bne     vbicImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vbicI4MinTest:

    vpush.64    {d8-d15}

vbicI4MinTest_LOOP:

    // loop 1
    vbic.i32    q0, q0, q11
    vbic.i32    q1, q1, q0
    vbic.i32    q2, q2, q1
    vbic.i32    q3, q3, q2
    vbic.i32    q4, q4, q3
    vbic.i32    q5, q5, q4
    vbic.i32    q6, q6, q5
    vbic.i32    q7, q7, q6
    vbic.i32    q8, q8, q7
    vbic.i32    q9, q9, q8
    vbic.i32    q10, q10, q9
    vbic.i32    q11, q11, q10

    // loop 2
    vbic.i32    q0, q0, q11
    vbic.i32    q1, q1, q0
    vbic.i32    q2, q2, q1
    vbic.i32    q3, q3, q2
    vbic.i32    q4, q4, q3
    vbic.i32    q5, q5, q4
    vbic.i32    q6, q6, q5
    vbic.i32    q7, q7, q6
    vbic.i32    q8, q8, q7
    vbic.i32    q9, q9, q8
    vbic.i32    q10, q10, q9
    vbic.i32    q11, q11, q10

    // loop 3
    vbic.i32    q0, q0, q11
    vbic.i32    q1, q1, q0
    vbic.i32    q2, q2, q1
    vbic.i32    q3, q3, q2
    vbic.i32    q4, q4, q3
    vbic.i32    q5, q5, q4
    vbic.i32    q6, q6, q5
    vbic.i32    q7, q7, q6
    vbic.i32    q8, q8, q7
    vbic.i32    q9, q9, q8
    vbic.i32    q10, q10, q9
    vbic.i32    q11, q11, q10

    // loop 4
    vbic.i32    q0, q0, q11
    vbic.i32    q1, q1, q0
    vbic.i32    q2, q2, q1
    vbic.i32    q3, q3, q2
    vbic.i32    q4, q4, q3
    vbic.i32    q5, q5, q4
    vbic.i32    q6, q6, q5
    vbic.i32    q7, q7, q6
    vbic.i32    q8, q8, q7
    vbic.i32    q9, q9, q8
    vbic.i32    q10, q10, q9
    vbic.i32    q11, q11, q10

    // loop 5
    vbic.i32    q0, q0, q11
    vbic.i32    q1, q1, q0
    vbic.i32    q2, q2, q1
    vbic.i32    q3, q3, q2
    vbic.i32    q4, q4, q3
    vbic.i32    q5, q5, q4
    vbic.i32    q6, q6, q5
    vbic.i32    q7, q7, q6
    vbic.i32    q8, q8, q7
    vbic.i32    q9, q9, q8
    vbic.i32    q10, q10, q9
    vbic.i32    q11, q11, q10

    subs    r0, r0, #1
    bne     vbicI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vbicI4MaxTest:

    vpush.64    {d8-d15}

vbicI4MaxTest_LOOP:

    // loop 1
    vbic.i32    q1, q0, q0
    vbic.i32    q2, q0, q0
    vbic.i32    q3, q0, q0
    vbic.i32    q4, q0, q0
    vbic.i32    q5, q0, q0
    vbic.i32    q6, q0, q0
    vbic.i32    q7, q0, q0
    vbic.i32    q8, q0, q0
    vbic.i32    q9, q0, q0
    vbic.i32    q10, q0, q0
    vbic.i32    q11, q0, q0
    vbic.i32    q12, q0, q0

    // loop 2
    vbic.i32    q1, q0, q0
    vbic.i32    q2, q0, q0
    vbic.i32    q3, q0, q0
    vbic.i32    q4, q0, q0
    vbic.i32    q5, q0, q0
    vbic.i32    q6, q0, q0
    vbic.i32    q7, q0, q0
    vbic.i32    q8, q0, q0
    vbic.i32    q9, q0, q0
    vbic.i32    q10, q0, q0
    vbic.i32    q11, q0, q0
    vbic.i32    q12, q0, q0

    // loop 3
    vbic.i32    q1, q0, q0
    vbic.i32    q2, q0, q0
    vbic.i32    q3, q0, q0
    vbic.i32    q4, q0, q0
    vbic.i32    q5, q0, q0
    vbic.i32    q6, q0, q0
    vbic.i32    q7, q0, q0
    vbic.i32    q8, q0, q0
    vbic.i32    q9, q0, q0
    vbic.i32    q10, q0, q0
    vbic.i32    q11, q0, q0
    vbic.i32    q12, q0, q0

    // loop 4
    vbic.i32    q1, q0, q0
    vbic.i32    q2, q0, q0
    vbic.i32    q3, q0, q0
    vbic.i32    q4, q0, q0
    vbic.i32    q5, q0, q0
    vbic.i32    q6, q0, q0
    vbic.i32    q7, q0, q0
    vbic.i32    q8, q0, q0
    vbic.i32    q9, q0, q0
    vbic.i32    q10, q0, q0
    vbic.i32    q11, q0, q0
    vbic.i32    q12, q0, q0

    // loop 5
    vbic.i32    q1, q0, q0
    vbic.i32    q2, q0, q0
    vbic.i32    q3, q0, q0
    vbic.i32    q4, q0, q0
    vbic.i32    q5, q0, q0
    vbic.i32    q6, q0, q0
    vbic.i32    q7, q0, q0
    vbic.i32    q8, q0, q0
    vbic.i32    q9, q0, q0
    vbic.i32    q10, q0, q0
    vbic.i32    q11, q0, q0
    vbic.i32    q12, q0, q0

    subs    r0, r0, #1
    bne     vbicI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vbifMinTest:

    vpush.64    {d8-d15}

vbifMinTest_LOOP:

    // loop 1
    vbif    q0, q0, q11
    vbif    q1, q1, q0
    vbif    q2, q2, q1
    vbif    q3, q3, q2
    vbif    q4, q4, q3
    vbif    q5, q5, q4
    vbif    q6, q6, q5
    vbif    q7, q7, q6
    vbif    q8, q8, q7
    vbif    q9, q9, q8
    vbif    q10, q10, q9
    vbif    q11, q11, q10
    
    // loop 2
    vbif    q0, q0, q11
    vbif    q1, q1, q0
    vbif    q2, q2, q1
    vbif    q3, q3, q2
    vbif    q4, q4, q3
    vbif    q5, q5, q4
    vbif    q6, q6, q5
    vbif    q7, q7, q6
    vbif    q8, q8, q7
    vbif    q9, q9, q8
    vbif    q10, q10, q9
    vbif    q11, q11, q10

    // loop 3
    vbif    q0, q0, q11
    vbif    q1, q1, q0
    vbif    q2, q2, q1
    vbif    q3, q3, q2
    vbif    q4, q4, q3
    vbif    q5, q5, q4
    vbif    q6, q6, q5
    vbif    q7, q7, q6
    vbif    q8, q8, q7
    vbif    q9, q9, q8
    vbif    q10, q10, q9
    vbif    q11, q11, q10

    // loop 4
    vbif    q0, q0, q11
    vbif    q1, q1, q0
    vbif    q2, q2, q1
    vbif    q3, q3, q2
    vbif    q4, q4, q3
    vbif    q5, q5, q4
    vbif    q6, q6, q5
    vbif    q7, q7, q6
    vbif    q8, q8, q7
    vbif    q9, q9, q8
    vbif    q10, q10, q9
    vbif    q11, q11, q10

    // loop 5
    vbif    q0, q0, q11
    vbif    q1, q1, q0
    vbif    q2, q2, q1
    vbif    q3, q3, q2
    vbif    q4, q4, q3
    vbif    q5, q5, q4
    vbif    q6, q6, q5
    vbif    q7, q7, q6
    vbif    q8, q8, q7
    vbif    q9, q9, q8
    vbif    q10, q10, q9
    vbif    q11, q11, q10

    subs    r0, r0, #1
    bne     vbifMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vbifMaxTest:

    vpush.64    {d8-d15}

vbifMaxTest_LOOP:

    // loop 1
    vbif    q1, q0, q0
    vbif    q2, q0, q0
    vbif    q3, q0, q0
    vbif    q4, q0, q0
    vbif    q5, q0, q0
    vbif    q6, q0, q0
    vbif    q7, q0, q0
    vbif    q8, q0, q0
    vbif    q9, q0, q0
    vbif    q10, q0, q0
    vbif    q11, q0, q0
    vbif    q12, q0, q0

    // loop 2
    vbif    q1, q0, q0
    vbif    q2, q0, q0
    vbif    q3, q0, q0
    vbif    q4, q0, q0
    vbif    q5, q0, q0
    vbif    q6, q0, q0
    vbif    q7, q0, q0
    vbif    q8, q0, q0
    vbif    q9, q0, q0
    vbif    q10, q0, q0
    vbif    q11, q0, q0
    vbif    q12, q0, q0

    // loop 3
    vbif    q1, q0, q0
    vbif    q2, q0, q0
    vbif    q3, q0, q0
    vbif    q4, q0, q0
    vbif    q5, q0, q0
    vbif    q6, q0, q0
    vbif    q7, q0, q0
    vbif    q8, q0, q0
    vbif    q9, q0, q0
    vbif    q10, q0, q0
    vbif    q11, q0, q0
    vbif    q12, q0, q0

    // loop 4
    vbif    q1, q0, q0
    vbif    q2, q0, q0
    vbif    q3, q0, q0
    vbif    q4, q0, q0
    vbif    q5, q0, q0
    vbif    q6, q0, q0
    vbif    q7, q0, q0
    vbif    q8, q0, q0
    vbif    q9, q0, q0
    vbif    q10, q0, q0
    vbif    q11, q0, q0
    vbif    q12, q0, q0

    // loop 5
    vbif    q1, q0, q0
    vbif    q2, q0, q0
    vbif    q3, q0, q0
    vbif    q4, q0, q0
    vbif    q5, q0, q0
    vbif    q6, q0, q0
    vbif    q7, q0, q0
    vbif    q8, q0, q0
    vbif    q9, q0, q0
    vbif    q10, q0, q0
    vbif    q11, q0, q0
    vbif    q12, q0, q0

    subs    r0, r0, #1
    bne     vbifMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vbitMinTest:

    vpush.64    {d8-d15}

vbitMinTest_LOOP:

    // loop 1
    vbit    q0, q0, q11
    vbit    q1, q1, q0
    vbit    q2, q2, q1
    vbit    q3, q3, q2
    vbit    q4, q4, q3
    vbit    q5, q5, q4
    vbit    q6, q6, q5
    vbit    q7, q7, q6
    vbit    q8, q8, q7
    vbit    q9, q9, q8
    vbit    q10, q10, q9
    vbit    q11, q11, q10

    // loop 2
    vbit    q0, q0, q11
    vbit    q1, q1, q0
    vbit    q2, q2, q1
    vbit    q3, q3, q2
    vbit    q4, q4, q3
    vbit    q5, q5, q4
    vbit    q6, q6, q5
    vbit    q7, q7, q6
    vbit    q8, q8, q7
    vbit    q9, q9, q8
    vbit    q10, q10, q9
    vbit    q11, q11, q10

    // loop 3
    vbit    q0, q0, q11
    vbit    q1, q1, q0
    vbit    q2, q2, q1
    vbit    q3, q3, q2
    vbit    q4, q4, q3
    vbit    q5, q5, q4
    vbit    q6, q6, q5
    vbit    q7, q7, q6
    vbit    q8, q8, q7
    vbit    q9, q9, q8
    vbit    q10, q10, q9
    vbit    q11, q11, q10

    // loop 4
    vbit    q0, q0, q11
    vbit    q1, q1, q0
    vbit    q2, q2, q1
    vbit    q3, q3, q2
    vbit    q4, q4, q3
    vbit    q5, q5, q4
    vbit    q6, q6, q5
    vbit    q7, q7, q6
    vbit    q8, q8, q7
    vbit    q9, q9, q8
    vbit    q10, q10, q9
    vbit    q11, q11, q10

    // loop 5
    vbit    q0, q0, q11
    vbit    q1, q1, q0
    vbit    q2, q2, q1
    vbit    q3, q3, q2
    vbit    q4, q4, q3
    vbit    q5, q5, q4
    vbit    q6, q6, q5
    vbit    q7, q7, q6
    vbit    q8, q8, q7
    vbit    q9, q9, q8
    vbit    q10, q10, q9
    vbit    q11, q11, q10

    subs    r0, r0, #1
    bne     vbitMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vbitMaxTest:

    vpush.64    {d8-d15}

vbitMaxTest_LOOP:

    // loop 1
    vbit    q1, q0, q0
    vbit    q2, q0, q0
    vbit    q3, q0, q0
    vbit    q4, q0, q0
    vbit    q5, q0, q0
    vbit    q6, q0, q0
    vbit    q7, q0, q0
    vbit    q8, q0, q0
    vbit    q9, q0, q0
    vbit    q10, q0, q0
    vbit    q11, q0, q0
    vbit    q12, q0, q0

    // loop 2
    vbit    q1, q0, q0
    vbit    q2, q0, q0
    vbit    q3, q0, q0
    vbit    q4, q0, q0
    vbit    q5, q0, q0
    vbit    q6, q0, q0
    vbit    q7, q0, q0
    vbit    q8, q0, q0
    vbit    q9, q0, q0
    vbit    q10, q0, q0
    vbit    q11, q0, q0
    vbit    q12, q0, q0

    // loop 3
    vbit    q1, q0, q0
    vbit    q2, q0, q0
    vbit    q3, q0, q0
    vbit    q4, q0, q0
    vbit    q5, q0, q0
    vbit    q6, q0, q0
    vbit    q7, q0, q0
    vbit    q8, q0, q0
    vbit    q9, q0, q0
    vbit    q10, q0, q0
    vbit    q11, q0, q0
    vbit    q12, q0, q0

    // loop 4
    vbit    q1, q0, q0
    vbit    q2, q0, q0
    vbit    q3, q0, q0
    vbit    q4, q0, q0
    vbit    q5, q0, q0
    vbit    q6, q0, q0
    vbit    q7, q0, q0
    vbit    q8, q0, q0
    vbit    q9, q0, q0
    vbit    q10, q0, q0
    vbit    q11, q0, q0
    vbit    q12, q0, q0

    // loop 5
    vbit    q1, q0, q0
    vbit    q2, q0, q0
    vbit    q3, q0, q0
    vbit    q4, q0, q0
    vbit    q5, q0, q0
    vbit    q6, q0, q0
    vbit    q7, q0, q0
    vbit    q8, q0, q0
    vbit    q9, q0, q0
    vbit    q10, q0, q0
    vbit    q11, q0, q0
    vbit    q12, q0, q0

    subs    r0, r0, #1
    bne     vbitMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vbslMinTest:

    vpush.64    {d8-d15}

vbslMinTest_LOOP:

    // loop 1
    vbsl    q0, q0, q11
    vbsl    q1, q1, q0
    vbsl    q2, q2, q1
    vbsl    q3, q3, q2
    vbsl    q4, q4, q3
    vbsl    q5, q5, q4
    vbsl    q6, q6, q5
    vbsl    q7, q7, q6
    vbsl    q8, q8, q7
    vbsl    q9, q9, q8
    vbsl    q10, q10, q9
    vbsl    q11, q11, q10

    // loop 2
    vbsl    q0, q0, q11
    vbsl    q1, q1, q0
    vbsl    q2, q2, q1
    vbsl    q3, q3, q2
    vbsl    q4, q4, q3
    vbsl    q5, q5, q4
    vbsl    q6, q6, q5
    vbsl    q7, q7, q6
    vbsl    q8, q8, q7
    vbsl    q9, q9, q8
    vbsl    q10, q10, q9
    vbsl    q11, q11, q10

    // loop 3
    vbsl    q0, q0, q11
    vbsl    q1, q1, q0
    vbsl    q2, q2, q1
    vbsl    q3, q3, q2
    vbsl    q4, q4, q3
    vbsl    q5, q5, q4
    vbsl    q6, q6, q5
    vbsl    q7, q7, q6
    vbsl    q8, q8, q7
    vbsl    q9, q9, q8
    vbsl    q10, q10, q9
    vbsl    q11, q11, q10

    // loop 4
    vbsl    q0, q0, q11
    vbsl    q1, q1, q0
    vbsl    q2, q2, q1
    vbsl    q3, q3, q2
    vbsl    q4, q4, q3
    vbsl    q5, q5, q4
    vbsl    q6, q6, q5
    vbsl    q7, q7, q6
    vbsl    q8, q8, q7
    vbsl    q9, q9, q8
    vbsl    q10, q10, q9
    vbsl    q11, q11, q10

    // loop 5
    vbsl    q0, q0, q11
    vbsl    q1, q1, q0
    vbsl    q2, q2, q1
    vbsl    q3, q3, q2
    vbsl    q4, q4, q3
    vbsl    q5, q5, q4
    vbsl    q6, q6, q5
    vbsl    q7, q7, q6
    vbsl    q8, q8, q7
    vbsl    q9, q9, q8
    vbsl    q10, q10, q9
    vbsl    q11, q11, q10

    subs    r0, r0, #1
    bne     vbslMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vbslMaxTest:

    vpush.64    {d8-d15}

vbslMaxTest_LOOP:

    // loop 1
    vbsl    q1, q0, q0
    vbsl    q2, q0, q0
    vbsl    q3, q0, q0
    vbsl    q4, q0, q0
    vbsl    q5, q0, q0
    vbsl    q6, q0, q0
    vbsl    q7, q0, q0
    vbsl    q8, q0, q0
    vbsl    q9, q0, q0
    vbsl    q10, q0, q0
    vbsl    q11, q0, q0
    vbsl    q12, q0, q0

    // loop 2
    vbsl    q1, q0, q0
    vbsl    q2, q0, q0
    vbsl    q3, q0, q0
    vbsl    q4, q0, q0
    vbsl    q5, q0, q0
    vbsl    q6, q0, q0
    vbsl    q7, q0, q0
    vbsl    q8, q0, q0
    vbsl    q9, q0, q0
    vbsl    q10, q0, q0
    vbsl    q11, q0, q0
    vbsl    q12, q0, q0

    // loop 3
    vbsl    q1, q0, q0
    vbsl    q2, q0, q0
    vbsl    q3, q0, q0
    vbsl    q4, q0, q0
    vbsl    q5, q0, q0
    vbsl    q6, q0, q0
    vbsl    q7, q0, q0
    vbsl    q8, q0, q0
    vbsl    q9, q0, q0
    vbsl    q10, q0, q0
    vbsl    q11, q0, q0
    vbsl    q12, q0, q0

    // loop 4
    vbsl    q1, q0, q0
    vbsl    q2, q0, q0
    vbsl    q3, q0, q0
    vbsl    q4, q0, q0
    vbsl    q5, q0, q0
    vbsl    q6, q0, q0
    vbsl    q7, q0, q0
    vbsl    q8, q0, q0
    vbsl    q9, q0, q0
    vbsl    q10, q0, q0
    vbsl    q11, q0, q0
    vbsl    q12, q0, q0

    // loop 5
    vbsl    q1, q0, q0
    vbsl    q2, q0, q0
    vbsl    q3, q0, q0
    vbsl    q4, q0, q0
    vbsl    q5, q0, q0
    vbsl    q6, q0, q0
    vbsl    q7, q0, q0
    vbsl    q8, q0, q0
    vbsl    q9, q0, q0
    vbsl    q10, q0, q0
    vbsl    q11, q0, q0
    vbsl    q12, q0, q0

    subs    r0, r0, #1
    bne     vbslMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr


_vceqI4RegMinTest:

    vpush.64    {d8-d15}

vceqI4RegMinTest_LOOP:

    // loop 1
    vceq.i32    q0, q0, q11
    vceq.i32    q1, q1, q0
    vceq.i32    q2, q2, q1
    vceq.i32    q3, q3, q2
    vceq.i32    q4, q4, q3
    vceq.i32    q5, q5, q4
    vceq.i32    q6, q6, q5
    vceq.i32    q7, q7, q6
    vceq.i32    q8, q8, q7
    vceq.i32    q9, q9, q8
    vceq.i32    q10, q10, q9
    vceq.i32    q11, q11, q10

    // loop 2
    vceq.i32    q0, q0, q11
    vceq.i32    q1, q1, q0
    vceq.i32    q2, q2, q1
    vceq.i32    q3, q3, q2
    vceq.i32    q4, q4, q3
    vceq.i32    q5, q5, q4
    vceq.i32    q6, q6, q5
    vceq.i32    q7, q7, q6
    vceq.i32    q8, q8, q7
    vceq.i32    q9, q9, q8
    vceq.i32    q10, q10, q9
    vceq.i32    q11, q11, q10

    // loop 3
    vceq.i32    q0, q0, q11
    vceq.i32    q1, q1, q0
    vceq.i32    q2, q2, q1
    vceq.i32    q3, q3, q2
    vceq.i32    q4, q4, q3
    vceq.i32    q5, q5, q4
    vceq.i32    q6, q6, q5
    vceq.i32    q7, q7, q6
    vceq.i32    q8, q8, q7
    vceq.i32    q9, q9, q8
    vceq.i32    q10, q10, q9
    vceq.i32    q11, q11, q10

    // loop 4
    vceq.i32    q0, q0, q11
    vceq.i32    q1, q1, q0
    vceq.i32    q2, q2, q1
    vceq.i32    q3, q3, q2
    vceq.i32    q4, q4, q3
    vceq.i32    q5, q5, q4
    vceq.i32    q6, q6, q5
    vceq.i32    q7, q7, q6
    vceq.i32    q8, q8, q7
    vceq.i32    q9, q9, q8
    vceq.i32    q10, q10, q9
    vceq.i32    q11, q11, q10

    // loop 5
    vceq.i32    q0, q0, q11
    vceq.i32    q1, q1, q0
    vceq.i32    q2, q2, q1
    vceq.i32    q3, q3, q2
    vceq.i32    q4, q4, q3
    vceq.i32    q5, q5, q4
    vceq.i32    q6, q6, q5
    vceq.i32    q7, q7, q6
    vceq.i32    q8, q8, q7
    vceq.i32    q9, q9, q8
    vceq.i32    q10, q10, q9
    vceq.i32    q11, q11, q10

    subs    r0, r0, #1
    bne     vceqI4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vceqI4RegMaxTest:

    vpush.64    {d8-d15}

vceqI4RegMaxTest_LOOP:

    // loop 1
    vceq.i32    q1, q0, q0
    vceq.i32    q2, q0, q0
    vceq.i32    q3, q0, q0
    vceq.i32    q4, q0, q0
    vceq.i32    q5, q0, q0
    vceq.i32    q6, q0, q0
    vceq.i32    q7, q0, q0
    vceq.i32    q8, q0, q0
    vceq.i32    q9, q0, q0
    vceq.i32    q10, q0, q0
    vceq.i32    q11, q0, q0
    vceq.i32    q12, q0, q0

    // loop 2
    vceq.i32    q1, q0, q0
    vceq.i32    q2, q0, q0
    vceq.i32    q3, q0, q0
    vceq.i32    q4, q0, q0
    vceq.i32    q5, q0, q0
    vceq.i32    q6, q0, q0
    vceq.i32    q7, q0, q0
    vceq.i32    q8, q0, q0
    vceq.i32    q9, q0, q0
    vceq.i32    q10, q0, q0
    vceq.i32    q11, q0, q0
    vceq.i32    q12, q0, q0

    // loop 3
    vceq.i32    q1, q0, q0
    vceq.i32    q2, q0, q0
    vceq.i32    q3, q0, q0
    vceq.i32    q4, q0, q0
    vceq.i32    q5, q0, q0
    vceq.i32    q6, q0, q0
    vceq.i32    q7, q0, q0
    vceq.i32    q8, q0, q0
    vceq.i32    q9, q0, q0
    vceq.i32    q10, q0, q0
    vceq.i32    q11, q0, q0
    vceq.i32    q12, q0, q0

    // loop 4
    vceq.i32    q1, q0, q0
    vceq.i32    q2, q0, q0
    vceq.i32    q3, q0, q0
    vceq.i32    q4, q0, q0
    vceq.i32    q5, q0, q0
    vceq.i32    q6, q0, q0
    vceq.i32    q7, q0, q0
    vceq.i32    q8, q0, q0
    vceq.i32    q9, q0, q0
    vceq.i32    q10, q0, q0
    vceq.i32    q11, q0, q0
    vceq.i32    q12, q0, q0

    // loop 5
    vceq.i32    q1, q0, q0
    vceq.i32    q2, q0, q0
    vceq.i32    q3, q0, q0
    vceq.i32    q4, q0, q0
    vceq.i32    q5, q0, q0
    vceq.i32    q6, q0, q0
    vceq.i32    q7, q0, q0
    vceq.i32    q8, q0, q0
    vceq.i32    q9, q0, q0
    vceq.i32    q10, q0, q0
    vceq.i32    q11, q0, q0
    vceq.i32    q12, q0, q0

    subs    r0, r0, #1
    bne     vceqI4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vceqF4RegMinTest:

    vpush.64    {d8-d15}

vceqF4RegMinTest_LOOP:

    // loop 1
    vceq.f32    q0, q0, q11
    vceq.f32    q1, q1, q0
    vceq.f32    q2, q2, q1
    vceq.f32    q3, q3, q2
    vceq.f32    q4, q4, q3
    vceq.f32    q5, q5, q4
    vceq.f32    q6, q6, q5
    vceq.f32    q7, q7, q6
    vceq.f32    q8, q8, q7
    vceq.f32    q9, q9, q8
    vceq.f32    q10, q10, q9
    vceq.f32    q11, q11, q10

    // loop 2
    vceq.f32    q0, q0, q11
    vceq.f32    q1, q1, q0
    vceq.f32    q2, q2, q1
    vceq.f32    q3, q3, q2
    vceq.f32    q4, q4, q3
    vceq.f32    q5, q5, q4
    vceq.f32    q6, q6, q5
    vceq.f32    q7, q7, q6
    vceq.f32    q8, q8, q7
    vceq.f32    q9, q9, q8
    vceq.f32    q10, q10, q9
    vceq.f32    q11, q11, q10

    // loop 3
    vceq.f32    q0, q0, q11
    vceq.f32    q1, q1, q0
    vceq.f32    q2, q2, q1
    vceq.f32    q3, q3, q2
    vceq.f32    q4, q4, q3
    vceq.f32    q5, q5, q4
    vceq.f32    q6, q6, q5
    vceq.f32    q7, q7, q6
    vceq.f32    q8, q8, q7
    vceq.f32    q9, q9, q8
    vceq.f32    q10, q10, q9
    vceq.f32    q11, q11, q10

    // loop 4
    vceq.f32    q0, q0, q11
    vceq.f32    q1, q1, q0
    vceq.f32    q2, q2, q1
    vceq.f32    q3, q3, q2
    vceq.f32    q4, q4, q3
    vceq.f32    q5, q5, q4
    vceq.f32    q6, q6, q5
    vceq.f32    q7, q7, q6
    vceq.f32    q8, q8, q7
    vceq.f32    q9, q9, q8
    vceq.f32    q10, q10, q9
    vceq.f32    q11, q11, q10

    // loop 5
    vceq.f32    q0, q0, q11
    vceq.f32    q1, q1, q0
    vceq.f32    q2, q2, q1
    vceq.f32    q3, q3, q2
    vceq.f32    q4, q4, q3
    vceq.f32    q5, q5, q4
    vceq.f32    q6, q6, q5
    vceq.f32    q7, q7, q6
    vceq.f32    q8, q8, q7
    vceq.f32    q9, q9, q8
    vceq.f32    q10, q10, q9
    vceq.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vceqF4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vceqF4RegMaxTest:

    vpush.64    {d8-d15}

vceqF4RegMaxTest_LOOP:

    // loop 1
    vceq.f32    q1, q0, q0
    vceq.f32    q2, q0, q0
    vceq.f32    q3, q0, q0
    vceq.f32    q4, q0, q0
    vceq.f32    q5, q0, q0
    vceq.f32    q6, q0, q0
    vceq.f32    q7, q0, q0
    vceq.f32    q8, q0, q0
    vceq.f32    q9, q0, q0
    vceq.f32    q10, q0, q0
    vceq.f32    q11, q0, q0
    vceq.f32    q12, q0, q0

    // loop 2
    vceq.f32    q1, q0, q0
    vceq.f32    q2, q0, q0
    vceq.f32    q3, q0, q0
    vceq.f32    q4, q0, q0
    vceq.f32    q5, q0, q0
    vceq.f32    q6, q0, q0
    vceq.f32    q7, q0, q0
    vceq.f32    q8, q0, q0
    vceq.f32    q9, q0, q0
    vceq.f32    q10, q0, q0
    vceq.f32    q11, q0, q0
    vceq.f32    q12, q0, q0

    // loop 3
    vceq.f32    q1, q0, q0
    vceq.f32    q2, q0, q0
    vceq.f32    q3, q0, q0
    vceq.f32    q4, q0, q0
    vceq.f32    q5, q0, q0
    vceq.f32    q6, q0, q0
    vceq.f32    q7, q0, q0
    vceq.f32    q8, q0, q0
    vceq.f32    q9, q0, q0
    vceq.f32    q10, q0, q0
    vceq.f32    q11, q0, q0
    vceq.f32    q12, q0, q0

    // loop 4
    vceq.f32    q1, q0, q0
    vceq.f32    q2, q0, q0
    vceq.f32    q3, q0, q0
    vceq.f32    q4, q0, q0
    vceq.f32    q5, q0, q0
    vceq.f32    q6, q0, q0
    vceq.f32    q7, q0, q0
    vceq.f32    q8, q0, q0
    vceq.f32    q9, q0, q0
    vceq.f32    q10, q0, q0
    vceq.f32    q11, q0, q0
    vceq.f32    q12, q0, q0

    // loop 5
    vceq.f32    q1, q0, q0
    vceq.f32    q2, q0, q0
    vceq.f32    q3, q0, q0
    vceq.f32    q4, q0, q0
    vceq.f32    q5, q0, q0
    vceq.f32    q6, q0, q0
    vceq.f32    q7, q0, q0
    vceq.f32    q8, q0, q0
    vceq.f32    q9, q0, q0
    vceq.f32    q10, q0, q0
    vceq.f32    q11, q0, q0
    vceq.f32    q12, q0, q0

    subs    r0, r0, #1
    bne     vceqF4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vceqI4ImmMinTest:

    vpush.64    {d8-d15}

vceqI4ImmMinTest_LOOP:

    // loop 1
    vceq.i32    q0, q11, #0
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q1, #0
    vceq.i32    q3, q2, #0
    vceq.i32    q4, q3, #0
    vceq.i32    q5, q4, #0
    vceq.i32    q6, q5, #0
    vceq.i32    q7, q6, #0
    vceq.i32    q8, q7, #0
    vceq.i32    q9, q8, #0
    vceq.i32    q10, q9, #0
    vceq.i32    q11, q10, #0

    // loop 2
    vceq.i32    q0, q11, #0
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q1, #0
    vceq.i32    q3, q2, #0
    vceq.i32    q4, q3, #0
    vceq.i32    q5, q4, #0
    vceq.i32    q6, q5, #0
    vceq.i32    q7, q6, #0
    vceq.i32    q8, q7, #0
    vceq.i32    q9, q8, #0
    vceq.i32    q10, q9, #0
    vceq.i32    q11, q10, #0

    // loop 3
    vceq.i32    q0, q11, #0
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q1, #0
    vceq.i32    q3, q2, #0
    vceq.i32    q4, q3, #0
    vceq.i32    q5, q4, #0
    vceq.i32    q6, q5, #0
    vceq.i32    q7, q6, #0
    vceq.i32    q8, q7, #0
    vceq.i32    q9, q8, #0
    vceq.i32    q10, q9, #0
    vceq.i32    q11, q10, #0

    // loop 4
    vceq.i32    q0, q11, #0
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q1, #0
    vceq.i32    q3, q2, #0
    vceq.i32    q4, q3, #0
    vceq.i32    q5, q4, #0
    vceq.i32    q6, q5, #0
    vceq.i32    q7, q6, #0
    vceq.i32    q8, q7, #0
    vceq.i32    q9, q8, #0
    vceq.i32    q10, q9, #0
    vceq.i32    q11, q10, #0

    // loop 5
    vceq.i32    q0, q11, #0
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q1, #0
    vceq.i32    q3, q2, #0
    vceq.i32    q4, q3, #0
    vceq.i32    q5, q4, #0
    vceq.i32    q6, q5, #0
    vceq.i32    q7, q6, #0
    vceq.i32    q8, q7, #0
    vceq.i32    q9, q8, #0
    vceq.i32    q10, q9, #0
    vceq.i32    q11, q10, #0

    subs    r0, r0, #1
    bne     vceqI4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vceqI4ImmMaxTest:

    vpush.64    {d8-d15}

vceqI4ImmMaxTest_LOOP:

    // loop 1
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q0, #0
    vceq.i32    q3, q0, #0
    vceq.i32    q4, q0, #0
    vceq.i32    q5, q0, #0
    vceq.i32    q6, q0, #0
    vceq.i32    q7, q0, #0
    vceq.i32    q8, q0, #0
    vceq.i32    q9, q0, #0
    vceq.i32    q10, q0, #0
    vceq.i32    q11, q0, #0
    vceq.i32    q12, q0, #0

    // loop 2
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q0, #0
    vceq.i32    q3, q0, #0
    vceq.i32    q4, q0, #0
    vceq.i32    q5, q0, #0
    vceq.i32    q6, q0, #0
    vceq.i32    q7, q0, #0
    vceq.i32    q8, q0, #0
    vceq.i32    q9, q0, #0
    vceq.i32    q10, q0, #0
    vceq.i32    q11, q0, #0
    vceq.i32    q12, q0, #0

    // loop 3
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q0, #0
    vceq.i32    q3, q0, #0
    vceq.i32    q4, q0, #0
    vceq.i32    q5, q0, #0
    vceq.i32    q6, q0, #0
    vceq.i32    q7, q0, #0
    vceq.i32    q8, q0, #0
    vceq.i32    q9, q0, #0
    vceq.i32    q10, q0, #0
    vceq.i32    q11, q0, #0
    vceq.i32    q12, q0, #0

    // loop 4
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q0, #0
    vceq.i32    q3, q0, #0
    vceq.i32    q4, q0, #0
    vceq.i32    q5, q0, #0
    vceq.i32    q6, q0, #0
    vceq.i32    q7, q0, #0
    vceq.i32    q8, q0, #0
    vceq.i32    q9, q0, #0
    vceq.i32    q10, q0, #0
    vceq.i32    q11, q0, #0
    vceq.i32    q12, q0, #0

    // loop 5
    vceq.i32    q1, q0, #0
    vceq.i32    q2, q0, #0
    vceq.i32    q3, q0, #0
    vceq.i32    q4, q0, #0
    vceq.i32    q5, q0, #0
    vceq.i32    q6, q0, #0
    vceq.i32    q7, q0, #0
    vceq.i32    q8, q0, #0
    vceq.i32    q9, q0, #0
    vceq.i32    q10, q0, #0
    vceq.i32    q11, q0, #0
    vceq.i32    q12, q0, #0

    subs    r0, r0, #1
    bne     vceqI4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vceqF4ImmMinTest:

    vpush.64    {d8-d15}

vceqF4ImmMinTest_LOOP:

    // loop 1
    vceq.f32    q0, q11, #0
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q1, #0
    vceq.f32    q3, q2, #0
    vceq.f32    q4, q3, #0
    vceq.f32    q5, q4, #0
    vceq.f32    q6, q5, #0
    vceq.f32    q7, q6, #0
    vceq.f32    q8, q7, #0
    vceq.f32    q9, q8, #0
    vceq.f32    q10, q9, #0
    vceq.f32    q11, q10, #0
        
    // loop 2
    vceq.f32    q0, q11, #0
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q1, #0
    vceq.f32    q3, q2, #0
    vceq.f32    q4, q3, #0
    vceq.f32    q5, q4, #0
    vceq.f32    q6, q5, #0
    vceq.f32    q7, q6, #0
    vceq.f32    q8, q7, #0
    vceq.f32    q9, q8, #0
    vceq.f32    q10, q9, #0
    vceq.f32    q11, q10, #0

    // loop 3
    vceq.f32    q0, q11, #0
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q1, #0
    vceq.f32    q3, q2, #0
    vceq.f32    q4, q3, #0
    vceq.f32    q5, q4, #0
    vceq.f32    q6, q5, #0
    vceq.f32    q7, q6, #0
    vceq.f32    q8, q7, #0
    vceq.f32    q9, q8, #0
    vceq.f32    q10, q9, #0
    vceq.f32    q11, q10, #0

    // loop 4
    vceq.f32    q0, q11, #0
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q1, #0
    vceq.f32    q3, q2, #0
    vceq.f32    q4, q3, #0
    vceq.f32    q5, q4, #0
    vceq.f32    q6, q5, #0
    vceq.f32    q7, q6, #0
    vceq.f32    q8, q7, #0
    vceq.f32    q9, q8, #0
    vceq.f32    q10, q9, #0
    vceq.f32    q11, q10, #0

    // loop 5
    vceq.f32    q0, q11, #0
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q1, #0
    vceq.f32    q3, q2, #0
    vceq.f32    q4, q3, #0
    vceq.f32    q5, q4, #0
    vceq.f32    q6, q5, #0
    vceq.f32    q7, q6, #0
    vceq.f32    q8, q7, #0
    vceq.f32    q9, q8, #0
    vceq.f32    q10, q9, #0
    vceq.f32    q11, q10, #0

    subs    r0, r0, #1
    bne     vceqF4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vceqF4ImmMaxTest:

    vpush.64    {d8-d15}

vceqF4ImmMaxTest_LOOP:

    // loop 1
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q0, #0
    vceq.f32    q3, q0, #0
    vceq.f32    q4, q0, #0
    vceq.f32    q5, q0, #0
    vceq.f32    q6, q0, #0
    vceq.f32    q7, q0, #0
    vceq.f32    q8, q0, #0
    vceq.f32    q9, q0, #0
    vceq.f32    q10, q0, #0
    vceq.f32    q11, q0, #0
    vceq.f32    q12, q0, #0

    // loop 2
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q0, #0
    vceq.f32    q3, q0, #0
    vceq.f32    q4, q0, #0
    vceq.f32    q5, q0, #0
    vceq.f32    q6, q0, #0
    vceq.f32    q7, q0, #0
    vceq.f32    q8, q0, #0
    vceq.f32    q9, q0, #0
    vceq.f32    q10, q0, #0
    vceq.f32    q11, q0, #0
    vceq.f32    q12, q0, #0

    // loop 3
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q0, #0
    vceq.f32    q3, q0, #0
    vceq.f32    q4, q0, #0
    vceq.f32    q5, q0, #0
    vceq.f32    q6, q0, #0
    vceq.f32    q7, q0, #0
    vceq.f32    q8, q0, #0
    vceq.f32    q9, q0, #0
    vceq.f32    q10, q0, #0
    vceq.f32    q11, q0, #0
    vceq.f32    q12, q0, #0

    // loop 4
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q0, #0
    vceq.f32    q3, q0, #0
    vceq.f32    q4, q0, #0
    vceq.f32    q5, q0, #0
    vceq.f32    q6, q0, #0
    vceq.f32    q7, q0, #0
    vceq.f32    q8, q0, #0
    vceq.f32    q9, q0, #0
    vceq.f32    q10, q0, #0
    vceq.f32    q11, q0, #0
    vceq.f32    q12, q0, #0

    // loop 5
    vceq.f32    q1, q0, #0
    vceq.f32    q2, q0, #0
    vceq.f32    q3, q0, #0
    vceq.f32    q4, q0, #0
    vceq.f32    q5, q0, #0
    vceq.f32    q6, q0, #0
    vceq.f32    q7, q0, #0
    vceq.f32    q8, q0, #0
    vceq.f32    q9, q0, #0
    vceq.f32    q10, q0, #0
    vceq.f32    q11, q0, #0
    vceq.f32    q12, q0, #0

    subs    r0, r0, #1
    bne     vceqF4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vcgeI4RegMinTest:

    vpush.64    {d8-d15}

vcgeI4RegMinTest_LOOP:

    // loop 1
    vcge.s32    q0, q0, q11
    vcge.s32    q1, q1, q0
    vcge.s32    q2, q2, q1
    vcge.s32    q3, q3, q2
    vcge.s32    q4, q4, q3
    vcge.s32    q5, q5, q4
    vcge.s32    q6, q6, q5
    vcge.s32    q7, q7, q6
    vcge.s32    q8, q8, q7
    vcge.s32    q9, q9, q8
    vcge.s32    q10, q10, q9
    vcge.s32    q11, q11, q10

    // loop 2
    vcge.s32    q0, q0, q11
    vcge.s32    q1, q1, q0
    vcge.s32    q2, q2, q1
    vcge.s32    q3, q3, q2
    vcge.s32    q4, q4, q3
    vcge.s32    q5, q5, q4
    vcge.s32    q6, q6, q5
    vcge.s32    q7, q7, q6
    vcge.s32    q8, q8, q7
    vcge.s32    q9, q9, q8
    vcge.s32    q10, q10, q9
    vcge.s32    q11, q11, q10

    // loop 3
    vcge.s32    q0, q0, q11
    vcge.s32    q1, q1, q0
    vcge.s32    q2, q2, q1
    vcge.s32    q3, q3, q2
    vcge.s32    q4, q4, q3
    vcge.s32    q5, q5, q4
    vcge.s32    q6, q6, q5
    vcge.s32    q7, q7, q6
    vcge.s32    q8, q8, q7
    vcge.s32    q9, q9, q8
    vcge.s32    q10, q10, q9
    vcge.s32    q11, q11, q10

    // loop 4
    vcge.s32    q0, q0, q11
    vcge.s32    q1, q1, q0
    vcge.s32    q2, q2, q1
    vcge.s32    q3, q3, q2
    vcge.s32    q4, q4, q3
    vcge.s32    q5, q5, q4
    vcge.s32    q6, q6, q5
    vcge.s32    q7, q7, q6
    vcge.s32    q8, q8, q7
    vcge.s32    q9, q9, q8
    vcge.s32    q10, q10, q9
    vcge.s32    q11, q11, q10

    // loop 5
    vcge.s32    q0, q0, q11
    vcge.s32    q1, q1, q0
    vcge.s32    q2, q2, q1
    vcge.s32    q3, q3, q2
    vcge.s32    q4, q4, q3
    vcge.s32    q5, q5, q4
    vcge.s32    q6, q6, q5
    vcge.s32    q7, q7, q6
    vcge.s32    q8, q8, q7
    vcge.s32    q9, q9, q8
    vcge.s32    q10, q10, q9
    vcge.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vcgeI4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgeI4RegMaxTest:

    vpush.64    {d8-d15}

vcgeI4RegMaxTest_LOOP:

    // loop 1
    vcge.s32    q1, q0, q0
    vcge.s32    q2, q0, q0
    vcge.s32    q3, q0, q0
    vcge.s32    q4, q0, q0
    vcge.s32    q5, q0, q0
    vcge.s32    q6, q0, q0
    vcge.s32    q7, q0, q0
    vcge.s32    q8, q0, q0
    vcge.s32    q9, q0, q0
    vcge.s32    q10, q0, q0
    vcge.s32    q11, q0, q0
    vcge.s32    q12, q0, q0

    // loop 2
    vcge.s32    q1, q0, q0
    vcge.s32    q2, q0, q0
    vcge.s32    q3, q0, q0
    vcge.s32    q4, q0, q0
    vcge.s32    q5, q0, q0
    vcge.s32    q6, q0, q0
    vcge.s32    q7, q0, q0
    vcge.s32    q8, q0, q0
    vcge.s32    q9, q0, q0
    vcge.s32    q10, q0, q0
    vcge.s32    q11, q0, q0
    vcge.s32    q12, q0, q0

    // loop 3
    vcge.s32    q1, q0, q0
    vcge.s32    q2, q0, q0
    vcge.s32    q3, q0, q0
    vcge.s32    q4, q0, q0
    vcge.s32    q5, q0, q0
    vcge.s32    q6, q0, q0
    vcge.s32    q7, q0, q0
    vcge.s32    q8, q0, q0
    vcge.s32    q9, q0, q0
    vcge.s32    q10, q0, q0
    vcge.s32    q11, q0, q0
    vcge.s32    q12, q0, q0

    // loop 4
    vcge.s32    q1, q0, q0
    vcge.s32    q2, q0, q0
    vcge.s32    q3, q0, q0
    vcge.s32    q4, q0, q0
    vcge.s32    q5, q0, q0
    vcge.s32    q6, q0, q0
    vcge.s32    q7, q0, q0
    vcge.s32    q8, q0, q0
    vcge.s32    q9, q0, q0
    vcge.s32    q10, q0, q0
    vcge.s32    q11, q0, q0
    vcge.s32    q12, q0, q0

    // loop 5
    vcge.s32    q1, q0, q0
    vcge.s32    q2, q0, q0
    vcge.s32    q3, q0, q0
    vcge.s32    q4, q0, q0
    vcge.s32    q5, q0, q0
    vcge.s32    q6, q0, q0
    vcge.s32    q7, q0, q0
    vcge.s32    q8, q0, q0
    vcge.s32    q9, q0, q0
    vcge.s32    q10, q0, q0
    vcge.s32    q11, q0, q0
    vcge.s32    q12, q0, q0

    subs    r0, r0, #1
    bne     vcgeI4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgeF4RegMinTest:

    vpush.64    {d8-d15}

vcgeF4RegMinTest_LOOP:

    // loop 1
    vcge.f32    q0, q0, q11
    vcge.f32    q1, q1, q0
    vcge.f32    q2, q2, q1
    vcge.f32    q3, q3, q2
    vcge.f32    q4, q4, q3
    vcge.f32    q5, q5, q4
    vcge.f32    q6, q6, q5
    vcge.f32    q7, q7, q6
    vcge.f32    q8, q8, q7
    vcge.f32    q9, q9, q8
    vcge.f32    q10, q10, q9
    vcge.f32    q11, q11, q10

    // loop 2
    vcge.f32    q0, q0, q11
    vcge.f32    q1, q1, q0
    vcge.f32    q2, q2, q1
    vcge.f32    q3, q3, q2
    vcge.f32    q4, q4, q3
    vcge.f32    q5, q5, q4
    vcge.f32    q6, q6, q5
    vcge.f32    q7, q7, q6
    vcge.f32    q8, q8, q7
    vcge.f32    q9, q9, q8
    vcge.f32    q10, q10, q9
    vcge.f32    q11, q11, q10

    // loop 3
    vcge.f32    q0, q0, q11
    vcge.f32    q1, q1, q0
    vcge.f32    q2, q2, q1
    vcge.f32    q3, q3, q2
    vcge.f32    q4, q4, q3
    vcge.f32    q5, q5, q4
    vcge.f32    q6, q6, q5
    vcge.f32    q7, q7, q6
    vcge.f32    q8, q8, q7
    vcge.f32    q9, q9, q8
    vcge.f32    q10, q10, q9
    vcge.f32    q11, q11, q10

    // loop 4
    vcge.f32    q0, q0, q11
    vcge.f32    q1, q1, q0
    vcge.f32    q2, q2, q1
    vcge.f32    q3, q3, q2
    vcge.f32    q4, q4, q3
    vcge.f32    q5, q5, q4
    vcge.f32    q6, q6, q5
    vcge.f32    q7, q7, q6
    vcge.f32    q8, q8, q7
    vcge.f32    q9, q9, q8
    vcge.f32    q10, q10, q9
    vcge.f32    q11, q11, q10

    // loop 5
    vcge.f32    q0, q0, q11
    vcge.f32    q1, q1, q0
    vcge.f32    q2, q2, q1
    vcge.f32    q3, q3, q2
    vcge.f32    q4, q4, q3
    vcge.f32    q5, q5, q4
    vcge.f32    q6, q6, q5
    vcge.f32    q7, q7, q6
    vcge.f32    q8, q8, q7
    vcge.f32    q9, q9, q8
    vcge.f32    q10, q10, q9
    vcge.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vcgeF4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgeF4RegMaxTest:

    vpush.64    {d8-d15}

vcgeF4RegMaxTest_LOOP:

    // loop 1
    vcge.f32    q1, q0, q0
    vcge.f32    q2, q0, q0
    vcge.f32    q3, q0, q0
    vcge.f32    q4, q0, q0
    vcge.f32    q5, q0, q0
    vcge.f32    q6, q0, q0
    vcge.f32    q7, q0, q0
    vcge.f32    q8, q0, q0
    vcge.f32    q9, q0, q0
    vcge.f32    q10, q0, q0
    vcge.f32    q11, q0, q0
    vcge.f32    q12, q0, q0

    // loop 2
    vcge.f32    q1, q0, q0
    vcge.f32    q2, q0, q0
    vcge.f32    q3, q0, q0
    vcge.f32    q4, q0, q0
    vcge.f32    q5, q0, q0
    vcge.f32    q6, q0, q0
    vcge.f32    q7, q0, q0
    vcge.f32    q8, q0, q0
    vcge.f32    q9, q0, q0
    vcge.f32    q10, q0, q0
    vcge.f32    q11, q0, q0
    vcge.f32    q12, q0, q0

    // loop 3
    vcge.f32    q1, q0, q0
    vcge.f32    q2, q0, q0
    vcge.f32    q3, q0, q0
    vcge.f32    q4, q0, q0
    vcge.f32    q5, q0, q0
    vcge.f32    q6, q0, q0
    vcge.f32    q7, q0, q0
    vcge.f32    q8, q0, q0
    vcge.f32    q9, q0, q0
    vcge.f32    q10, q0, q0
    vcge.f32    q11, q0, q0
    vcge.f32    q12, q0, q0

    // loop 4
    vcge.f32    q1, q0, q0
    vcge.f32    q2, q0, q0
    vcge.f32    q3, q0, q0
    vcge.f32    q4, q0, q0
    vcge.f32    q5, q0, q0
    vcge.f32    q6, q0, q0
    vcge.f32    q7, q0, q0
    vcge.f32    q8, q0, q0
    vcge.f32    q9, q0, q0
    vcge.f32    q10, q0, q0
    vcge.f32    q11, q0, q0
    vcge.f32    q12, q0, q0

    // loop 5
    vcge.f32    q1, q0, q0
    vcge.f32    q2, q0, q0
    vcge.f32    q3, q0, q0
    vcge.f32    q4, q0, q0
    vcge.f32    q5, q0, q0
    vcge.f32    q6, q0, q0
    vcge.f32    q7, q0, q0
    vcge.f32    q8, q0, q0
    vcge.f32    q9, q0, q0
    vcge.f32    q10, q0, q0
    vcge.f32    q11, q0, q0
    vcge.f32    q12, q0, q0

    subs    r0, r0, #1
    bne     vcgeF4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgeI4ImmMinTest:

    vpush.64    {d8-d15}

vcgeI4ImmMinTest_LOOP:

    // loop 1
    vcge.s32    q0, q11, #0
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q1, #0
    vcge.s32    q3, q2, #0
    vcge.s32    q4, q3, #0
    vcge.s32    q5, q4, #0
    vcge.s32    q6, q5, #0
    vcge.s32    q7, q6, #0
    vcge.s32    q8, q7, #0
    vcge.s32    q9, q8, #0
    vcge.s32    q10, q9, #0
    vcge.s32    q11, q10, #0

    // loop 2
    vcge.s32    q0, q11, #0
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q1, #0
    vcge.s32    q3, q2, #0
    vcge.s32    q4, q3, #0
    vcge.s32    q5, q4, #0
    vcge.s32    q6, q5, #0
    vcge.s32    q7, q6, #0
    vcge.s32    q8, q7, #0
    vcge.s32    q9, q8, #0
    vcge.s32    q10, q9, #0
    vcge.s32    q11, q10, #0

    // loop 3
    vcge.s32    q0, q11, #0
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q1, #0
    vcge.s32    q3, q2, #0
    vcge.s32    q4, q3, #0
    vcge.s32    q5, q4, #0
    vcge.s32    q6, q5, #0
    vcge.s32    q7, q6, #0
    vcge.s32    q8, q7, #0
    vcge.s32    q9, q8, #0
    vcge.s32    q10, q9, #0
    vcge.s32    q11, q10, #0

    // loop 4
    vcge.s32    q0, q11, #0
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q1, #0
    vcge.s32    q3, q2, #0
    vcge.s32    q4, q3, #0
    vcge.s32    q5, q4, #0
    vcge.s32    q6, q5, #0
    vcge.s32    q7, q6, #0
    vcge.s32    q8, q7, #0
    vcge.s32    q9, q8, #0
    vcge.s32    q10, q9, #0
    vcge.s32    q11, q10, #0

    // loop 5
    vcge.s32    q0, q11, #0
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q1, #0
    vcge.s32    q3, q2, #0
    vcge.s32    q4, q3, #0
    vcge.s32    q5, q4, #0
    vcge.s32    q6, q5, #0
    vcge.s32    q7, q6, #0
    vcge.s32    q8, q7, #0
    vcge.s32    q9, q8, #0
    vcge.s32    q10, q9, #0
    vcge.s32    q11, q10, #0

    subs    r0, r0, #1
    bne     vcgeI4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgeI4ImmMaxTest:

    vpush.64    {d8-d15}

vcgeI4ImmMaxTest_LOOP:

    // loop 1
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q0, #0
    vcge.s32    q3, q0, #0
    vcge.s32    q4, q0, #0
    vcge.s32    q5, q0, #0
    vcge.s32    q6, q0, #0
    vcge.s32    q7, q0, #0
    vcge.s32    q8, q0, #0
    vcge.s32    q9, q0, #0
    vcge.s32    q10, q0, #0
    vcge.s32    q11, q0, #0
    vcge.s32    q12, q0, #0

    // loop 2
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q0, #0
    vcge.s32    q3, q0, #0
    vcge.s32    q4, q0, #0
    vcge.s32    q5, q0, #0
    vcge.s32    q6, q0, #0
    vcge.s32    q7, q0, #0
    vcge.s32    q8, q0, #0
    vcge.s32    q9, q0, #0
    vcge.s32    q10, q0, #0
    vcge.s32    q11, q0, #0
    vcge.s32    q12, q0, #0

    // loop 3
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q0, #0
    vcge.s32    q3, q0, #0
    vcge.s32    q4, q0, #0
    vcge.s32    q5, q0, #0
    vcge.s32    q6, q0, #0
    vcge.s32    q7, q0, #0
    vcge.s32    q8, q0, #0
    vcge.s32    q9, q0, #0
    vcge.s32    q10, q0, #0
    vcge.s32    q11, q0, #0
    vcge.s32    q12, q0, #0

    // loop 4
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q0, #0
    vcge.s32    q3, q0, #0
    vcge.s32    q4, q0, #0
    vcge.s32    q5, q0, #0
    vcge.s32    q6, q0, #0
    vcge.s32    q7, q0, #0
    vcge.s32    q8, q0, #0
    vcge.s32    q9, q0, #0
    vcge.s32    q10, q0, #0
    vcge.s32    q11, q0, #0
    vcge.s32    q12, q0, #0

    // loop 5
    vcge.s32    q1, q0, #0
    vcge.s32    q2, q0, #0
    vcge.s32    q3, q0, #0
    vcge.s32    q4, q0, #0
    vcge.s32    q5, q0, #0
    vcge.s32    q6, q0, #0
    vcge.s32    q7, q0, #0
    vcge.s32    q8, q0, #0
    vcge.s32    q9, q0, #0
    vcge.s32    q10, q0, #0
    vcge.s32    q11, q0, #0
    vcge.s32    q12, q0, #0

    subs    r0, r0, #1
    bne     vcgeI4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgeF4ImmMinTest:

    vpush.64    {d8-d15}

vcgeF4ImmMinTest_LOOP:

    // loop 1
    vcge.f32    q0, q11, #0
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q1, #0
    vcge.f32    q3, q2, #0
    vcge.f32    q4, q3, #0
    vcge.f32    q5, q4, #0
    vcge.f32    q6, q5, #0
    vcge.f32    q7, q6, #0
    vcge.f32    q8, q7, #0
    vcge.f32    q9, q8, #0
    vcge.f32    q10, q9, #0
    vcge.f32    q11, q10, #0

    // loop 2
    vcge.f32    q0, q11, #0
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q1, #0
    vcge.f32    q3, q2, #0
    vcge.f32    q4, q3, #0
    vcge.f32    q5, q4, #0
    vcge.f32    q6, q5, #0
    vcge.f32    q7, q6, #0
    vcge.f32    q8, q7, #0
    vcge.f32    q9, q8, #0
    vcge.f32    q10, q9, #0
    vcge.f32    q11, q10, #0

    // loop 3
    vcge.f32    q0, q11, #0
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q1, #0
    vcge.f32    q3, q2, #0
    vcge.f32    q4, q3, #0
    vcge.f32    q5, q4, #0
    vcge.f32    q6, q5, #0
    vcge.f32    q7, q6, #0
    vcge.f32    q8, q7, #0
    vcge.f32    q9, q8, #0
    vcge.f32    q10, q9, #0
    vcge.f32    q11, q10, #0

    // loop 4
    vcge.f32    q0, q11, #0
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q1, #0
    vcge.f32    q3, q2, #0
    vcge.f32    q4, q3, #0
    vcge.f32    q5, q4, #0
    vcge.f32    q6, q5, #0
    vcge.f32    q7, q6, #0
    vcge.f32    q8, q7, #0
    vcge.f32    q9, q8, #0
    vcge.f32    q10, q9, #0
    vcge.f32    q11, q10, #0

    // loop 5
    vcge.f32    q0, q11, #0
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q1, #0
    vcge.f32    q3, q2, #0
    vcge.f32    q4, q3, #0
    vcge.f32    q5, q4, #0
    vcge.f32    q6, q5, #0
    vcge.f32    q7, q6, #0
    vcge.f32    q8, q7, #0
    vcge.f32    q9, q8, #0
    vcge.f32    q10, q9, #0
    vcge.f32    q11, q10, #0

    subs    r0, r0, #1
    bne     vcgeF4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgeF4ImmMaxTest:

    vpush.64    {d8-d15}

vcgeF4ImmMaxTest_LOOP:

    // loop 1
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q0, #0
    vcge.f32    q3, q0, #0
    vcge.f32    q4, q0, #0
    vcge.f32    q5, q0, #0
    vcge.f32    q6, q0, #0
    vcge.f32    q7, q0, #0
    vcge.f32    q8, q0, #0
    vcge.f32    q9, q0, #0
    vcge.f32    q10, q0, #0
    vcge.f32    q11, q0, #0
    vcge.f32    q12, q0, #0

    // loop 2
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q0, #0
    vcge.f32    q3, q0, #0
    vcge.f32    q4, q0, #0
    vcge.f32    q5, q0, #0
    vcge.f32    q6, q0, #0
    vcge.f32    q7, q0, #0
    vcge.f32    q8, q0, #0
    vcge.f32    q9, q0, #0
    vcge.f32    q10, q0, #0
    vcge.f32    q11, q0, #0
    vcge.f32    q12, q0, #0

    // loop 3
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q0, #0
    vcge.f32    q3, q0, #0
    vcge.f32    q4, q0, #0
    vcge.f32    q5, q0, #0
    vcge.f32    q6, q0, #0
    vcge.f32    q7, q0, #0
    vcge.f32    q8, q0, #0
    vcge.f32    q9, q0, #0
    vcge.f32    q10, q0, #0
    vcge.f32    q11, q0, #0
    vcge.f32    q12, q0, #0

    // loop 4
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q0, #0
    vcge.f32    q3, q0, #0
    vcge.f32    q4, q0, #0
    vcge.f32    q5, q0, #0
    vcge.f32    q6, q0, #0
    vcge.f32    q7, q0, #0
    vcge.f32    q8, q0, #0
    vcge.f32    q9, q0, #0
    vcge.f32    q10, q0, #0
    vcge.f32    q11, q0, #0
    vcge.f32    q12, q0, #0

    // loop 5
    vcge.f32    q1, q0, #0
    vcge.f32    q2, q0, #0
    vcge.f32    q3, q0, #0
    vcge.f32    q4, q0, #0
    vcge.f32    q5, q0, #0
    vcge.f32    q6, q0, #0
    vcge.f32    q7, q0, #0
    vcge.f32    q8, q0, #0
    vcge.f32    q9, q0, #0
    vcge.f32    q10, q0, #0
    vcge.f32    q11, q0, #0
    vcge.f32    q12, q0, #0

    subs    r0, r0, #1
    bne     vcgeF4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vcgtI4RegMinTest:

    vpush.64    {d8-d15}

vcgtI4RegMinTest_LOOP:

    // loop 1
    vcgt.s32    q0, q0, q11
    vcgt.s32    q1, q1, q0
    vcgt.s32    q2, q2, q1
    vcgt.s32    q3, q3, q2
    vcgt.s32    q4, q4, q3
    vcgt.s32    q5, q5, q4
    vcgt.s32    q6, q6, q5
    vcgt.s32    q7, q7, q6
    vcgt.s32    q8, q8, q7
    vcgt.s32    q9, q9, q8
    vcgt.s32    q10, q10, q9
    vcgt.s32    q11, q11, q10
    
    // loop 2
    vcgt.s32    q0, q0, q11
    vcgt.s32    q1, q1, q0
    vcgt.s32    q2, q2, q1
    vcgt.s32    q3, q3, q2
    vcgt.s32    q4, q4, q3
    vcgt.s32    q5, q5, q4
    vcgt.s32    q6, q6, q5
    vcgt.s32    q7, q7, q6
    vcgt.s32    q8, q8, q7
    vcgt.s32    q9, q9, q8
    vcgt.s32    q10, q10, q9
    vcgt.s32    q11, q11, q10

    // loop 3
    vcgt.s32    q0, q0, q11
    vcgt.s32    q1, q1, q0
    vcgt.s32    q2, q2, q1
    vcgt.s32    q3, q3, q2
    vcgt.s32    q4, q4, q3
    vcgt.s32    q5, q5, q4
    vcgt.s32    q6, q6, q5
    vcgt.s32    q7, q7, q6
    vcgt.s32    q8, q8, q7
    vcgt.s32    q9, q9, q8
    vcgt.s32    q10, q10, q9
    vcgt.s32    q11, q11, q10

    // loop 4
    vcgt.s32    q0, q0, q11
    vcgt.s32    q1, q1, q0
    vcgt.s32    q2, q2, q1
    vcgt.s32    q3, q3, q2
    vcgt.s32    q4, q4, q3
    vcgt.s32    q5, q5, q4
    vcgt.s32    q6, q6, q5
    vcgt.s32    q7, q7, q6
    vcgt.s32    q8, q8, q7
    vcgt.s32    q9, q9, q8
    vcgt.s32    q10, q10, q9
    vcgt.s32    q11, q11, q10

    // loop 5
    vcgt.s32    q0, q0, q11
    vcgt.s32    q1, q1, q0
    vcgt.s32    q2, q2, q1
    vcgt.s32    q3, q3, q2
    vcgt.s32    q4, q4, q3
    vcgt.s32    q5, q5, q4
    vcgt.s32    q6, q6, q5
    vcgt.s32    q7, q7, q6
    vcgt.s32    q8, q8, q7
    vcgt.s32    q9, q9, q8
    vcgt.s32    q10, q10, q9
    vcgt.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vcgtI4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgtI4RegMaxTest:

    vpush.64    {d8-d15}

vcgtI4RegMaxTest_LOOP:

    // loop 1
    vcgt.s32    q1, q0, q0
    vcgt.s32    q2, q0, q0
    vcgt.s32    q3, q0, q0
    vcgt.s32    q4, q0, q0
    vcgt.s32    q5, q0, q0
    vcgt.s32    q6, q0, q0
    vcgt.s32    q7, q0, q0
    vcgt.s32    q8, q0, q0
    vcgt.s32    q9, q0, q0
    vcgt.s32    q10, q0, q0
    vcgt.s32    q11, q0, q0
    vcgt.s32    q12, q0, q0

    // loop 2
    vcgt.s32    q1, q0, q0
    vcgt.s32    q2, q0, q0
    vcgt.s32    q3, q0, q0
    vcgt.s32    q4, q0, q0
    vcgt.s32    q5, q0, q0
    vcgt.s32    q6, q0, q0
    vcgt.s32    q7, q0, q0
    vcgt.s32    q8, q0, q0
    vcgt.s32    q9, q0, q0
    vcgt.s32    q10, q0, q0
    vcgt.s32    q11, q0, q0
    vcgt.s32    q12, q0, q0

    // loop 3
    vcgt.s32    q1, q0, q0
    vcgt.s32    q2, q0, q0
    vcgt.s32    q3, q0, q0
    vcgt.s32    q4, q0, q0
    vcgt.s32    q5, q0, q0
    vcgt.s32    q6, q0, q0
    vcgt.s32    q7, q0, q0
    vcgt.s32    q8, q0, q0
    vcgt.s32    q9, q0, q0
    vcgt.s32    q10, q0, q0
    vcgt.s32    q11, q0, q0
    vcgt.s32    q12, q0, q0

    // loop 4
    vcgt.s32    q1, q0, q0
    vcgt.s32    q2, q0, q0
    vcgt.s32    q3, q0, q0
    vcgt.s32    q4, q0, q0
    vcgt.s32    q5, q0, q0
    vcgt.s32    q6, q0, q0
    vcgt.s32    q7, q0, q0
    vcgt.s32    q8, q0, q0
    vcgt.s32    q9, q0, q0
    vcgt.s32    q10, q0, q0
    vcgt.s32    q11, q0, q0
    vcgt.s32    q12, q0, q0

    // loop 5
    vcgt.s32    q1, q0, q0
    vcgt.s32    q2, q0, q0
    vcgt.s32    q3, q0, q0
    vcgt.s32    q4, q0, q0
    vcgt.s32    q5, q0, q0
    vcgt.s32    q6, q0, q0
    vcgt.s32    q7, q0, q0
    vcgt.s32    q8, q0, q0
    vcgt.s32    q9, q0, q0
    vcgt.s32    q10, q0, q0
    vcgt.s32    q11, q0, q0
    vcgt.s32    q12, q0, q0

    subs    r0, r0, #1
    bne     vcgtI4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgtF4RegMinTest:

    vpush.64    {d8-d15}

vcgtF4RegMinTest_LOOP:

    // loop 1
    vcgt.f32    q0, q0, q11
    vcgt.f32    q1, q1, q0
    vcgt.f32    q2, q2, q1
    vcgt.f32    q3, q3, q2
    vcgt.f32    q4, q4, q3
    vcgt.f32    q5, q5, q4
    vcgt.f32    q6, q6, q5
    vcgt.f32    q7, q7, q6
    vcgt.f32    q8, q8, q7
    vcgt.f32    q9, q9, q8
    vcgt.f32    q10, q10, q9
    vcgt.f32    q11, q11, q10

    // loop 2
    vcgt.f32    q0, q0, q11
    vcgt.f32    q1, q1, q0
    vcgt.f32    q2, q2, q1
    vcgt.f32    q3, q3, q2
    vcgt.f32    q4, q4, q3
    vcgt.f32    q5, q5, q4
    vcgt.f32    q6, q6, q5
    vcgt.f32    q7, q7, q6
    vcgt.f32    q8, q8, q7
    vcgt.f32    q9, q9, q8
    vcgt.f32    q10, q10, q9
    vcgt.f32    q11, q11, q10

    // loop 3
    vcgt.f32    q0, q0, q11
    vcgt.f32    q1, q1, q0
    vcgt.f32    q2, q2, q1
    vcgt.f32    q3, q3, q2
    vcgt.f32    q4, q4, q3
    vcgt.f32    q5, q5, q4
    vcgt.f32    q6, q6, q5
    vcgt.f32    q7, q7, q6
    vcgt.f32    q8, q8, q7
    vcgt.f32    q9, q9, q8
    vcgt.f32    q10, q10, q9
    vcgt.f32    q11, q11, q10

    // loop 4
    vcgt.f32    q0, q0, q11
    vcgt.f32    q1, q1, q0
    vcgt.f32    q2, q2, q1
    vcgt.f32    q3, q3, q2
    vcgt.f32    q4, q4, q3
    vcgt.f32    q5, q5, q4
    vcgt.f32    q6, q6, q5
    vcgt.f32    q7, q7, q6
    vcgt.f32    q8, q8, q7
    vcgt.f32    q9, q9, q8
    vcgt.f32    q10, q10, q9
    vcgt.f32    q11, q11, q10

    // loop 5
    vcgt.f32    q0, q0, q11
    vcgt.f32    q1, q1, q0
    vcgt.f32    q2, q2, q1
    vcgt.f32    q3, q3, q2
    vcgt.f32    q4, q4, q3
    vcgt.f32    q5, q5, q4
    vcgt.f32    q6, q6, q5
    vcgt.f32    q7, q7, q6
    vcgt.f32    q8, q8, q7
    vcgt.f32    q9, q9, q8
    vcgt.f32    q10, q10, q9
    vcgt.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vcgtF4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgtF4RegMaxTest:

    vpush.64    {d8-d15}

vcgtF4RegMaxTest_LOOP:

    // loop 1
    vcgt.f32    q1, q0, q0
    vcgt.f32    q2, q0, q0
    vcgt.f32    q3, q0, q0
    vcgt.f32    q4, q0, q0
    vcgt.f32    q5, q0, q0
    vcgt.f32    q6, q0, q0
    vcgt.f32    q7, q0, q0
    vcgt.f32    q8, q0, q0
    vcgt.f32    q9, q0, q0
    vcgt.f32    q10, q0, q0
    vcgt.f32    q11, q0, q0
    vcgt.f32    q12, q0, q0

    // loop 2
    vcgt.f32    q1, q0, q0
    vcgt.f32    q2, q0, q0
    vcgt.f32    q3, q0, q0
    vcgt.f32    q4, q0, q0
    vcgt.f32    q5, q0, q0
    vcgt.f32    q6, q0, q0
    vcgt.f32    q7, q0, q0
    vcgt.f32    q8, q0, q0
    vcgt.f32    q9, q0, q0
    vcgt.f32    q10, q0, q0
    vcgt.f32    q11, q0, q0
    vcgt.f32    q12, q0, q0

    // loop 3
    vcgt.f32    q1, q0, q0
    vcgt.f32    q2, q0, q0
    vcgt.f32    q3, q0, q0
    vcgt.f32    q4, q0, q0
    vcgt.f32    q5, q0, q0
    vcgt.f32    q6, q0, q0
    vcgt.f32    q7, q0, q0
    vcgt.f32    q8, q0, q0
    vcgt.f32    q9, q0, q0
    vcgt.f32    q10, q0, q0
    vcgt.f32    q11, q0, q0
    vcgt.f32    q12, q0, q0

    // loop 4
    vcgt.f32    q1, q0, q0
    vcgt.f32    q2, q0, q0
    vcgt.f32    q3, q0, q0
    vcgt.f32    q4, q0, q0
    vcgt.f32    q5, q0, q0
    vcgt.f32    q6, q0, q0
    vcgt.f32    q7, q0, q0
    vcgt.f32    q8, q0, q0
    vcgt.f32    q9, q0, q0
    vcgt.f32    q10, q0, q0
    vcgt.f32    q11, q0, q0
    vcgt.f32    q12, q0, q0

    // loop 5
    vcgt.f32    q1, q0, q0
    vcgt.f32    q2, q0, q0
    vcgt.f32    q3, q0, q0
    vcgt.f32    q4, q0, q0
    vcgt.f32    q5, q0, q0
    vcgt.f32    q6, q0, q0
    vcgt.f32    q7, q0, q0
    vcgt.f32    q8, q0, q0
    vcgt.f32    q9, q0, q0
    vcgt.f32    q10, q0, q0
    vcgt.f32    q11, q0, q0
    vcgt.f32    q12, q0, q0

    subs    r0, r0, #1
    bne     vcgtF4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgtI4ImmMinTest:

    vpush.64    {d8-d15}

vcgtI4ImmMinTest_LOOP:

    // loop 1
    vcgt.s32    q0, q11, #0
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q1, #0
    vcgt.s32    q3, q2, #0
    vcgt.s32    q4, q3, #0
    vcgt.s32    q5, q4, #0
    vcgt.s32    q6, q5, #0
    vcgt.s32    q7, q6, #0
    vcgt.s32    q8, q7, #0
    vcgt.s32    q9, q8, #0
    vcgt.s32    q10, q9, #0
    vcgt.s32    q11, q10, #0

    // loop 2
    vcgt.s32    q0, q11, #0
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q1, #0
    vcgt.s32    q3, q2, #0
    vcgt.s32    q4, q3, #0
    vcgt.s32    q5, q4, #0
    vcgt.s32    q6, q5, #0
    vcgt.s32    q7, q6, #0
    vcgt.s32    q8, q7, #0
    vcgt.s32    q9, q8, #0
    vcgt.s32    q10, q9, #0
    vcgt.s32    q11, q10, #0

    // loop 3
    vcgt.s32    q0, q11, #0
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q1, #0
    vcgt.s32    q3, q2, #0
    vcgt.s32    q4, q3, #0
    vcgt.s32    q5, q4, #0
    vcgt.s32    q6, q5, #0
    vcgt.s32    q7, q6, #0
    vcgt.s32    q8, q7, #0
    vcgt.s32    q9, q8, #0
    vcgt.s32    q10, q9, #0
    vcgt.s32    q11, q10, #0

    // loop 4
    vcgt.s32    q0, q11, #0
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q1, #0
    vcgt.s32    q3, q2, #0
    vcgt.s32    q4, q3, #0
    vcgt.s32    q5, q4, #0
    vcgt.s32    q6, q5, #0
    vcgt.s32    q7, q6, #0
    vcgt.s32    q8, q7, #0
    vcgt.s32    q9, q8, #0
    vcgt.s32    q10, q9, #0
    vcgt.s32    q11, q10, #0

    // loop 5
    vcgt.s32    q0, q11, #0
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q1, #0
    vcgt.s32    q3, q2, #0
    vcgt.s32    q4, q3, #0
    vcgt.s32    q5, q4, #0
    vcgt.s32    q6, q5, #0
    vcgt.s32    q7, q6, #0
    vcgt.s32    q8, q7, #0
    vcgt.s32    q9, q8, #0
    vcgt.s32    q10, q9, #0
    vcgt.s32    q11, q10, #0

    subs    r0, r0, #1
    bne     vcgtI4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgtI4ImmMaxTest:

    vpush.64    {d8-d15}

vcgtI4ImmMaxTest_LOOP:

    // loop 1
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q0, #0
    vcgt.s32    q3, q0, #0
    vcgt.s32    q4, q0, #0
    vcgt.s32    q5, q0, #0
    vcgt.s32    q6, q0, #0
    vcgt.s32    q7, q0, #0
    vcgt.s32    q8, q0, #0
    vcgt.s32    q9, q0, #0
    vcgt.s32    q10, q0, #0
    vcgt.s32    q11, q0, #0
    vcgt.s32    q12, q0, #0

    // loop 2
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q0, #0
    vcgt.s32    q3, q0, #0
    vcgt.s32    q4, q0, #0
    vcgt.s32    q5, q0, #0
    vcgt.s32    q6, q0, #0
    vcgt.s32    q7, q0, #0
    vcgt.s32    q8, q0, #0
    vcgt.s32    q9, q0, #0
    vcgt.s32    q10, q0, #0
    vcgt.s32    q11, q0, #0
    vcgt.s32    q12, q0, #0

    // loop 3
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q0, #0
    vcgt.s32    q3, q0, #0
    vcgt.s32    q4, q0, #0
    vcgt.s32    q5, q0, #0
    vcgt.s32    q6, q0, #0
    vcgt.s32    q7, q0, #0
    vcgt.s32    q8, q0, #0
    vcgt.s32    q9, q0, #0
    vcgt.s32    q10, q0, #0
    vcgt.s32    q11, q0, #0
    vcgt.s32    q12, q0, #0

    // loop 4
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q0, #0
    vcgt.s32    q3, q0, #0
    vcgt.s32    q4, q0, #0
    vcgt.s32    q5, q0, #0
    vcgt.s32    q6, q0, #0
    vcgt.s32    q7, q0, #0
    vcgt.s32    q8, q0, #0
    vcgt.s32    q9, q0, #0
    vcgt.s32    q10, q0, #0
    vcgt.s32    q11, q0, #0
    vcgt.s32    q12, q0, #0

    // loop 5
    vcgt.s32    q1, q0, #0
    vcgt.s32    q2, q0, #0
    vcgt.s32    q3, q0, #0
    vcgt.s32    q4, q0, #0
    vcgt.s32    q5, q0, #0
    vcgt.s32    q6, q0, #0
    vcgt.s32    q7, q0, #0
    vcgt.s32    q8, q0, #0
    vcgt.s32    q9, q0, #0
    vcgt.s32    q10, q0, #0
    vcgt.s32    q11, q0, #0
    vcgt.s32    q12, q0, #0

    subs    r0, r0, #1
    bne     vcgtI4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgtF4ImmMinTest:

    vpush.64    {d8-d15}

vcgtF4ImmMinTest_LOOP:

    // loop 1
    vcgt.f32    q0, q11, #0
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q1, #0
    vcgt.f32    q3, q2, #0
    vcgt.f32    q4, q3, #0
    vcgt.f32    q5, q4, #0
    vcgt.f32    q6, q5, #0
    vcgt.f32    q7, q6, #0
    vcgt.f32    q8, q7, #0
    vcgt.f32    q9, q8, #0
    vcgt.f32    q10, q9, #0
    vcgt.f32    q11, q10, #0

    // loop 2
    vcgt.f32    q0, q11, #0
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q1, #0
    vcgt.f32    q3, q2, #0
    vcgt.f32    q4, q3, #0
    vcgt.f32    q5, q4, #0
    vcgt.f32    q6, q5, #0
    vcgt.f32    q7, q6, #0
    vcgt.f32    q8, q7, #0
    vcgt.f32    q9, q8, #0
    vcgt.f32    q10, q9, #0
    vcgt.f32    q11, q10, #0

    // loop 3
    vcgt.f32    q0, q11, #0
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q1, #0
    vcgt.f32    q3, q2, #0
    vcgt.f32    q4, q3, #0
    vcgt.f32    q5, q4, #0
    vcgt.f32    q6, q5, #0
    vcgt.f32    q7, q6, #0
    vcgt.f32    q8, q7, #0
    vcgt.f32    q9, q8, #0
    vcgt.f32    q10, q9, #0
    vcgt.f32    q11, q10, #0

    // loop 4
    vcgt.f32    q0, q11, #0
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q1, #0
    vcgt.f32    q3, q2, #0
    vcgt.f32    q4, q3, #0
    vcgt.f32    q5, q4, #0
    vcgt.f32    q6, q5, #0
    vcgt.f32    q7, q6, #0
    vcgt.f32    q8, q7, #0
    vcgt.f32    q9, q8, #0
    vcgt.f32    q10, q9, #0
    vcgt.f32    q11, q10, #0

    // loop 5
    vcgt.f32    q0, q11, #0
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q1, #0
    vcgt.f32    q3, q2, #0
    vcgt.f32    q4, q3, #0
    vcgt.f32    q5, q4, #0
    vcgt.f32    q6, q5, #0
    vcgt.f32    q7, q6, #0
    vcgt.f32    q8, q7, #0
    vcgt.f32    q9, q8, #0
    vcgt.f32    q10, q9, #0
    vcgt.f32    q11, q10, #0

    subs    r0, r0, #1
    bne     vcgtF4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcgtF4ImmMaxTest:

    vpush.64    {d8-d15}

vcgtF4ImmMaxTest_LOOP:

    // loop 1
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q0, #0
    vcgt.f32    q3, q0, #0
    vcgt.f32    q4, q0, #0
    vcgt.f32    q5, q0, #0
    vcgt.f32    q6, q0, #0
    vcgt.f32    q7, q0, #0
    vcgt.f32    q8, q0, #0
    vcgt.f32    q9, q0, #0
    vcgt.f32    q10, q0, #0
    vcgt.f32    q11, q0, #0
    vcgt.f32    q12, q0, #0

    // loop 2
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q0, #0
    vcgt.f32    q3, q0, #0
    vcgt.f32    q4, q0, #0
    vcgt.f32    q5, q0, #0
    vcgt.f32    q6, q0, #0
    vcgt.f32    q7, q0, #0
    vcgt.f32    q8, q0, #0
    vcgt.f32    q9, q0, #0
    vcgt.f32    q10, q0, #0
    vcgt.f32    q11, q0, #0
    vcgt.f32    q12, q0, #0

    // loop 3
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q0, #0
    vcgt.f32    q3, q0, #0
    vcgt.f32    q4, q0, #0
    vcgt.f32    q5, q0, #0
    vcgt.f32    q6, q0, #0
    vcgt.f32    q7, q0, #0
    vcgt.f32    q8, q0, #0
    vcgt.f32    q9, q0, #0
    vcgt.f32    q10, q0, #0
    vcgt.f32    q11, q0, #0
    vcgt.f32    q12, q0, #0

    // loop 4
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q0, #0
    vcgt.f32    q3, q0, #0
    vcgt.f32    q4, q0, #0
    vcgt.f32    q5, q0, #0
    vcgt.f32    q6, q0, #0
    vcgt.f32    q7, q0, #0
    vcgt.f32    q8, q0, #0
    vcgt.f32    q9, q0, #0
    vcgt.f32    q10, q0, #0
    vcgt.f32    q11, q0, #0
    vcgt.f32    q12, q0, #0

    // loop 5
    vcgt.f32    q1, q0, #0
    vcgt.f32    q2, q0, #0
    vcgt.f32    q3, q0, #0
    vcgt.f32    q4, q0, #0
    vcgt.f32    q5, q0, #0
    vcgt.f32    q6, q0, #0
    vcgt.f32    q7, q0, #0
    vcgt.f32    q8, q0, #0
    vcgt.f32    q9, q0, #0
    vcgt.f32    q10, q0, #0
    vcgt.f32    q11, q0, #0
    vcgt.f32    q12, q0, #0

    subs    r0, r0, #1
    bne     vcgtF4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vcleI4RegMinTest:

    vpush.64    {d8-d15}

vcleI4RegMinTest_LOOP:

    // loop 1
    vcle.s32    q0, q0, q11
    vcle.s32    q1, q1, q0
    vcle.s32    q2, q2, q1
    vcle.s32    q3, q3, q2
    vcle.s32    q4, q4, q3
    vcle.s32    q5, q5, q4
    vcle.s32    q6, q6, q5
    vcle.s32    q7, q7, q6
    vcle.s32    q8, q8, q7
    vcle.s32    q9, q9, q8
    vcle.s32    q10, q10, q9
    vcle.s32    q11, q11, q10
    
    // loop 2
    vcle.s32    q0, q0, q11
    vcle.s32    q1, q1, q0
    vcle.s32    q2, q2, q1
    vcle.s32    q3, q3, q2
    vcle.s32    q4, q4, q3
    vcle.s32    q5, q5, q4
    vcle.s32    q6, q6, q5
    vcle.s32    q7, q7, q6
    vcle.s32    q8, q8, q7
    vcle.s32    q9, q9, q8
    vcle.s32    q10, q10, q9
    vcle.s32    q11, q11, q10

    // loop 3
    vcle.s32    q0, q0, q11
    vcle.s32    q1, q1, q0
    vcle.s32    q2, q2, q1
    vcle.s32    q3, q3, q2
    vcle.s32    q4, q4, q3
    vcle.s32    q5, q5, q4
    vcle.s32    q6, q6, q5
    vcle.s32    q7, q7, q6
    vcle.s32    q8, q8, q7
    vcle.s32    q9, q9, q8
    vcle.s32    q10, q10, q9
    vcle.s32    q11, q11, q10

    // loop 4
    vcle.s32    q0, q0, q11
    vcle.s32    q1, q1, q0
    vcle.s32    q2, q2, q1
    vcle.s32    q3, q3, q2
    vcle.s32    q4, q4, q3
    vcle.s32    q5, q5, q4
    vcle.s32    q6, q6, q5
    vcle.s32    q7, q7, q6
    vcle.s32    q8, q8, q7
    vcle.s32    q9, q9, q8
    vcle.s32    q10, q10, q9
    vcle.s32    q11, q11, q10

    // loop 5
    vcle.s32    q0, q0, q11
    vcle.s32    q1, q1, q0
    vcle.s32    q2, q2, q1
    vcle.s32    q3, q3, q2
    vcle.s32    q4, q4, q3
    vcle.s32    q5, q5, q4
    vcle.s32    q6, q6, q5
    vcle.s32    q7, q7, q6
    vcle.s32    q8, q8, q7
    vcle.s32    q9, q9, q8
    vcle.s32    q10, q10, q9
    vcle.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vcleI4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcleI4RegMaxTest:

    vpush.64    {d8-d15}

vcleI4RegMaxTest_LOOP:

    // loop 1
    vcle.s32    q1, q0, q0
    vcle.s32    q2, q0, q0
    vcle.s32    q3, q0, q0
    vcle.s32    q4, q0, q0
    vcle.s32    q5, q0, q0
    vcle.s32    q6, q0, q0
    vcle.s32    q7, q0, q0
    vcle.s32    q8, q0, q0
    vcle.s32    q9, q0, q0
    vcle.s32    q10, q0, q0
    vcle.s32    q11, q0, q0
    vcle.s32    q12, q0, q0

    // loop 2
    vcle.s32    q1, q0, q0
    vcle.s32    q2, q0, q0
    vcle.s32    q3, q0, q0
    vcle.s32    q4, q0, q0
    vcle.s32    q5, q0, q0
    vcle.s32    q6, q0, q0
    vcle.s32    q7, q0, q0
    vcle.s32    q8, q0, q0
    vcle.s32    q9, q0, q0
    vcle.s32    q10, q0, q0
    vcle.s32    q11, q0, q0
    vcle.s32    q12, q0, q0

    // loop 3
    vcle.s32    q1, q0, q0
    vcle.s32    q2, q0, q0
    vcle.s32    q3, q0, q0
    vcle.s32    q4, q0, q0
    vcle.s32    q5, q0, q0
    vcle.s32    q6, q0, q0
    vcle.s32    q7, q0, q0
    vcle.s32    q8, q0, q0
    vcle.s32    q9, q0, q0
    vcle.s32    q10, q0, q0
    vcle.s32    q11, q0, q0
    vcle.s32    q12, q0, q0

    // loop 4
    vcle.s32    q1, q0, q0
    vcle.s32    q2, q0, q0
    vcle.s32    q3, q0, q0
    vcle.s32    q4, q0, q0
    vcle.s32    q5, q0, q0
    vcle.s32    q6, q0, q0
    vcle.s32    q7, q0, q0
    vcle.s32    q8, q0, q0
    vcle.s32    q9, q0, q0
    vcle.s32    q10, q0, q0
    vcle.s32    q11, q0, q0
    vcle.s32    q12, q0, q0

    // loop 5
    vcle.s32    q1, q0, q0
    vcle.s32    q2, q0, q0
    vcle.s32    q3, q0, q0
    vcle.s32    q4, q0, q0
    vcle.s32    q5, q0, q0
    vcle.s32    q6, q0, q0
    vcle.s32    q7, q0, q0
    vcle.s32    q8, q0, q0
    vcle.s32    q9, q0, q0
    vcle.s32    q10, q0, q0
    vcle.s32    q11, q0, q0
    vcle.s32    q12, q0, q0

    subs    r0, r0, #1
    bne     vcleI4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcleF4RegMinTest:

    vpush.64    {d8-d15}

vcleF4RegMinTest_LOOP:

    // loop 1
    vcle.f32    q0, q0, q11
    vcle.f32    q1, q1, q0
    vcle.f32    q2, q2, q1
    vcle.f32    q3, q3, q2
    vcle.f32    q4, q4, q3
    vcle.f32    q5, q5, q4
    vcle.f32    q6, q6, q5
    vcle.f32    q7, q7, q6
    vcle.f32    q8, q8, q7
    vcle.f32    q9, q9, q8
    vcle.f32    q10, q10, q9
    vcle.f32    q11, q11, q10
    
    // loop 2
    vcle.f32    q0, q0, q11
    vcle.f32    q1, q1, q0
    vcle.f32    q2, q2, q1
    vcle.f32    q3, q3, q2
    vcle.f32    q4, q4, q3
    vcle.f32    q5, q5, q4
    vcle.f32    q6, q6, q5
    vcle.f32    q7, q7, q6
    vcle.f32    q8, q8, q7
    vcle.f32    q9, q9, q8
    vcle.f32    q10, q10, q9
    vcle.f32    q11, q11, q10

    // loop 3
    vcle.f32    q0, q0, q11
    vcle.f32    q1, q1, q0
    vcle.f32    q2, q2, q1
    vcle.f32    q3, q3, q2
    vcle.f32    q4, q4, q3
    vcle.f32    q5, q5, q4
    vcle.f32    q6, q6, q5
    vcle.f32    q7, q7, q6
    vcle.f32    q8, q8, q7
    vcle.f32    q9, q9, q8
    vcle.f32    q10, q10, q9
    vcle.f32    q11, q11, q10

    // loop 4
    vcle.f32    q0, q0, q11
    vcle.f32    q1, q1, q0
    vcle.f32    q2, q2, q1
    vcle.f32    q3, q3, q2
    vcle.f32    q4, q4, q3
    vcle.f32    q5, q5, q4
    vcle.f32    q6, q6, q5
    vcle.f32    q7, q7, q6
    vcle.f32    q8, q8, q7
    vcle.f32    q9, q9, q8
    vcle.f32    q10, q10, q9
    vcle.f32    q11, q11, q10

    // loop 5
    vcle.f32    q0, q0, q11
    vcle.f32    q1, q1, q0
    vcle.f32    q2, q2, q1
    vcle.f32    q3, q3, q2
    vcle.f32    q4, q4, q3
    vcle.f32    q5, q5, q4
    vcle.f32    q6, q6, q5
    vcle.f32    q7, q7, q6
    vcle.f32    q8, q8, q7
    vcle.f32    q9, q9, q8
    vcle.f32    q10, q10, q9
    vcle.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vcleF4RegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcleF4RegMaxTest:

    vpush.64    {d8-d15}

vcleF4RegMaxTest_LOOP:

    // loop 1
    vcle.f32    q1, q0, q0
    vcle.f32    q2, q0, q0
    vcle.f32    q3, q0, q0
    vcle.f32    q4, q0, q0
    vcle.f32    q5, q0, q0
    vcle.f32    q6, q0, q0
    vcle.f32    q7, q0, q0
    vcle.f32    q8, q0, q0
    vcle.f32    q9, q0, q0
    vcle.f32    q10, q0, q0
    vcle.f32    q11, q0, q0
    vcle.f32    q12, q0, q0

    // loop 2
    vcle.f32    q1, q0, q0
    vcle.f32    q2, q0, q0
    vcle.f32    q3, q0, q0
    vcle.f32    q4, q0, q0
    vcle.f32    q5, q0, q0
    vcle.f32    q6, q0, q0
    vcle.f32    q7, q0, q0
    vcle.f32    q8, q0, q0
    vcle.f32    q9, q0, q0
    vcle.f32    q10, q0, q0
    vcle.f32    q11, q0, q0
    vcle.f32    q12, q0, q0

    // loop 3
    vcle.f32    q1, q0, q0
    vcle.f32    q2, q0, q0
    vcle.f32    q3, q0, q0
    vcle.f32    q4, q0, q0
    vcle.f32    q5, q0, q0
    vcle.f32    q6, q0, q0
    vcle.f32    q7, q0, q0
    vcle.f32    q8, q0, q0
    vcle.f32    q9, q0, q0
    vcle.f32    q10, q0, q0
    vcle.f32    q11, q0, q0
    vcle.f32    q12, q0, q0

    // loop 4
    vcle.f32    q1, q0, q0
    vcle.f32    q2, q0, q0
    vcle.f32    q3, q0, q0
    vcle.f32    q4, q0, q0
    vcle.f32    q5, q0, q0
    vcle.f32    q6, q0, q0
    vcle.f32    q7, q0, q0
    vcle.f32    q8, q0, q0
    vcle.f32    q9, q0, q0
    vcle.f32    q10, q0, q0
    vcle.f32    q11, q0, q0
    vcle.f32    q12, q0, q0

    // loop 5
    vcle.f32    q1, q0, q0
    vcle.f32    q2, q0, q0
    vcle.f32    q3, q0, q0
    vcle.f32    q4, q0, q0
    vcle.f32    q5, q0, q0
    vcle.f32    q6, q0, q0
    vcle.f32    q7, q0, q0
    vcle.f32    q8, q0, q0
    vcle.f32    q9, q0, q0
    vcle.f32    q10, q0, q0
    vcle.f32    q11, q0, q0
    vcle.f32    q12, q0, q0

    subs    r0, r0, #1
    bne     vcleF4RegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcleI4ImmMinTest:

    vpush.64    {d8-d15}

vcleI4ImmMinTest_LOOP:

    // loop 1
    vcle.s32    q0, q11, #0
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q1, #0
    vcle.s32    q3, q2, #0
    vcle.s32    q4, q3, #0
    vcle.s32    q5, q4, #0
    vcle.s32    q6, q5, #0
    vcle.s32    q7, q6, #0
    vcle.s32    q8, q7, #0
    vcle.s32    q9, q8, #0
    vcle.s32    q10, q9, #0
    vcle.s32    q11, q10, #0

    // loop 2
    vcle.s32    q0, q11, #0
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q1, #0
    vcle.s32    q3, q2, #0
    vcle.s32    q4, q3, #0
    vcle.s32    q5, q4, #0
    vcle.s32    q6, q5, #0
    vcle.s32    q7, q6, #0
    vcle.s32    q8, q7, #0
    vcle.s32    q9, q8, #0
    vcle.s32    q10, q9, #0
    vcle.s32    q11, q10, #0

    // loop 3
    vcle.s32    q0, q11, #0
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q1, #0
    vcle.s32    q3, q2, #0
    vcle.s32    q4, q3, #0
    vcle.s32    q5, q4, #0
    vcle.s32    q6, q5, #0
    vcle.s32    q7, q6, #0
    vcle.s32    q8, q7, #0
    vcle.s32    q9, q8, #0
    vcle.s32    q10, q9, #0
    vcle.s32    q11, q10, #0

    // loop 4
    vcle.s32    q0, q11, #0
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q1, #0
    vcle.s32    q3, q2, #0
    vcle.s32    q4, q3, #0
    vcle.s32    q5, q4, #0
    vcle.s32    q6, q5, #0
    vcle.s32    q7, q6, #0
    vcle.s32    q8, q7, #0
    vcle.s32    q9, q8, #0
    vcle.s32    q10, q9, #0
    vcle.s32    q11, q10, #0

    // loop 5
    vcle.s32    q0, q11, #0
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q1, #0
    vcle.s32    q3, q2, #0
    vcle.s32    q4, q3, #0
    vcle.s32    q5, q4, #0
    vcle.s32    q6, q5, #0
    vcle.s32    q7, q6, #0
    vcle.s32    q8, q7, #0
    vcle.s32    q9, q8, #0
    vcle.s32    q10, q9, #0
    vcle.s32    q11, q10, #0

    subs    r0, r0, #1
    bne     vcleI4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcleI4ImmMaxTest:

    vpush.64    {d8-d15}

vcleI4ImmMaxTest_LOOP:

    // loop 1
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q0, #0
    vcle.s32    q3, q0, #0
    vcle.s32    q4, q0, #0
    vcle.s32    q5, q0, #0
    vcle.s32    q6, q0, #0
    vcle.s32    q7, q0, #0
    vcle.s32    q8, q0, #0
    vcle.s32    q9, q0, #0
    vcle.s32    q10, q0, #0
    vcle.s32    q11, q0, #0
    vcle.s32    q12, q0, #0

    // loop 2
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q0, #0
    vcle.s32    q3, q0, #0
    vcle.s32    q4, q0, #0
    vcle.s32    q5, q0, #0
    vcle.s32    q6, q0, #0
    vcle.s32    q7, q0, #0
    vcle.s32    q8, q0, #0
    vcle.s32    q9, q0, #0
    vcle.s32    q10, q0, #0
    vcle.s32    q11, q0, #0
    vcle.s32    q12, q0, #0

    // loop 3
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q0, #0
    vcle.s32    q3, q0, #0
    vcle.s32    q4, q0, #0
    vcle.s32    q5, q0, #0
    vcle.s32    q6, q0, #0
    vcle.s32    q7, q0, #0
    vcle.s32    q8, q0, #0
    vcle.s32    q9, q0, #0
    vcle.s32    q10, q0, #0
    vcle.s32    q11, q0, #0
    vcle.s32    q12, q0, #0

    // loop 4
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q0, #0
    vcle.s32    q3, q0, #0
    vcle.s32    q4, q0, #0
    vcle.s32    q5, q0, #0
    vcle.s32    q6, q0, #0
    vcle.s32    q7, q0, #0
    vcle.s32    q8, q0, #0
    vcle.s32    q9, q0, #0
    vcle.s32    q10, q0, #0
    vcle.s32    q11, q0, #0
    vcle.s32    q12, q0, #0

    // loop 5
    vcle.s32    q1, q0, #0
    vcle.s32    q2, q0, #0
    vcle.s32    q3, q0, #0
    vcle.s32    q4, q0, #0
    vcle.s32    q5, q0, #0
    vcle.s32    q6, q0, #0
    vcle.s32    q7, q0, #0
    vcle.s32    q8, q0, #0
    vcle.s32    q9, q0, #0
    vcle.s32    q10, q0, #0
    vcle.s32    q11, q0, #0
    vcle.s32    q12, q0, #0

    subs    r0, r0, #1
    bne     vcleI4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcleF4ImmMinTest:

    vpush.64    {d8-d15}

vcleF4ImmMinTest_LOOP:

    // loop 1
    vcle.f32    q0, q11, #0
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q1, #0
    vcle.f32    q3, q2, #0
    vcle.f32    q4, q3, #0
    vcle.f32    q5, q4, #0
    vcle.f32    q6, q5, #0
    vcle.f32    q7, q6, #0
    vcle.f32    q8, q7, #0
    vcle.f32    q9, q8, #0
    vcle.f32    q10, q9, #0
    vcle.f32    q11, q10, #0

    // loop 2
    vcle.f32    q0, q11, #0
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q1, #0
    vcle.f32    q3, q2, #0
    vcle.f32    q4, q3, #0
    vcle.f32    q5, q4, #0
    vcle.f32    q6, q5, #0
    vcle.f32    q7, q6, #0
    vcle.f32    q8, q7, #0
    vcle.f32    q9, q8, #0
    vcle.f32    q10, q9, #0
    vcle.f32    q11, q10, #0

    // loop 3
    vcle.f32    q0, q11, #0
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q1, #0
    vcle.f32    q3, q2, #0
    vcle.f32    q4, q3, #0
    vcle.f32    q5, q4, #0
    vcle.f32    q6, q5, #0
    vcle.f32    q7, q6, #0
    vcle.f32    q8, q7, #0
    vcle.f32    q9, q8, #0
    vcle.f32    q10, q9, #0
    vcle.f32    q11, q10, #0

    // loop 4
    vcle.f32    q0, q11, #0
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q1, #0
    vcle.f32    q3, q2, #0
    vcle.f32    q4, q3, #0
    vcle.f32    q5, q4, #0
    vcle.f32    q6, q5, #0
    vcle.f32    q7, q6, #0
    vcle.f32    q8, q7, #0
    vcle.f32    q9, q8, #0
    vcle.f32    q10, q9, #0
    vcle.f32    q11, q10, #0

    // loop 5
    vcle.f32    q0, q11, #0
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q1, #0
    vcle.f32    q3, q2, #0
    vcle.f32    q4, q3, #0
    vcle.f32    q5, q4, #0
    vcle.f32    q6, q5, #0
    vcle.f32    q7, q6, #0
    vcle.f32    q8, q7, #0
    vcle.f32    q9, q8, #0
    vcle.f32    q10, q9, #0
    vcle.f32    q11, q10, #0

    subs    r0, r0, #1
    bne     vcleF4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcleF4ImmMaxTest:

    vpush.64    {d8-d15}

vcleF4ImmMaxTest_LOOP:

    // loop 1
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q0, #0
    vcle.f32    q3, q0, #0
    vcle.f32    q4, q0, #0
    vcle.f32    q5, q0, #0
    vcle.f32    q6, q0, #0
    vcle.f32    q7, q0, #0
    vcle.f32    q8, q0, #0
    vcle.f32    q9, q0, #0
    vcle.f32    q10, q0, #0
    vcle.f32    q11, q0, #0
    vcle.f32    q12, q0, #0

    // loop 2
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q0, #0
    vcle.f32    q3, q0, #0
    vcle.f32    q4, q0, #0
    vcle.f32    q5, q0, #0
    vcle.f32    q6, q0, #0
    vcle.f32    q7, q0, #0
    vcle.f32    q8, q0, #0
    vcle.f32    q9, q0, #0
    vcle.f32    q10, q0, #0
    vcle.f32    q11, q0, #0
    vcle.f32    q12, q0, #0

    // loop 3
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q0, #0
    vcle.f32    q3, q0, #0
    vcle.f32    q4, q0, #0
    vcle.f32    q5, q0, #0
    vcle.f32    q6, q0, #0
    vcle.f32    q7, q0, #0
    vcle.f32    q8, q0, #0
    vcle.f32    q9, q0, #0
    vcle.f32    q10, q0, #0
    vcle.f32    q11, q0, #0
    vcle.f32    q12, q0, #0

    // loop 4
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q0, #0
    vcle.f32    q3, q0, #0
    vcle.f32    q4, q0, #0
    vcle.f32    q5, q0, #0
    vcle.f32    q6, q0, #0
    vcle.f32    q7, q0, #0
    vcle.f32    q8, q0, #0
    vcle.f32    q9, q0, #0
    vcle.f32    q10, q0, #0
    vcle.f32    q11, q0, #0
    vcle.f32    q12, q0, #0

    // loop 5
    vcle.f32    q1, q0, #0
    vcle.f32    q2, q0, #0
    vcle.f32    q3, q0, #0
    vcle.f32    q4, q0, #0
    vcle.f32    q5, q0, #0
    vcle.f32    q6, q0, #0
    vcle.f32    q7, q0, #0
    vcle.f32    q8, q0, #0
    vcle.f32    q9, q0, #0
    vcle.f32    q10, q0, #0
    vcle.f32    q11, q0, #0
    vcle.f32    q12, q0, #0

    subs    r0, r0, #1
    bne     vcleF4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vclsI4MinTest:

    vpush.64    {d8-d15}

vclsI4MinTest_LOOP:

    // loop 1
    vcls.s32    q0, q11
    vcls.s32    q1, q0
    vcls.s32    q2, q1
    vcls.s32    q3, q2
    vcls.s32    q4, q3
    vcls.s32    q5, q4
    vcls.s32    q6, q5
    vcls.s32    q7, q6
    vcls.s32    q8, q7
    vcls.s32    q9, q8
    vcls.s32    q10, q9
    vcls.s32    q11, q10
    
    // loop 2
    vcls.s32    q0, q11
    vcls.s32    q1, q0
    vcls.s32    q2, q1
    vcls.s32    q3, q2
    vcls.s32    q4, q3
    vcls.s32    q5, q4
    vcls.s32    q6, q5
    vcls.s32    q7, q6
    vcls.s32    q8, q7
    vcls.s32    q9, q8
    vcls.s32    q10, q9
    vcls.s32    q11, q10

    // loop 3
    vcls.s32    q0, q11
    vcls.s32    q1, q0
    vcls.s32    q2, q1
    vcls.s32    q3, q2
    vcls.s32    q4, q3
    vcls.s32    q5, q4
    vcls.s32    q6, q5
    vcls.s32    q7, q6
    vcls.s32    q8, q7
    vcls.s32    q9, q8
    vcls.s32    q10, q9
    vcls.s32    q11, q10

    // loop 4
    vcls.s32    q0, q11
    vcls.s32    q1, q0
    vcls.s32    q2, q1
    vcls.s32    q3, q2
    vcls.s32    q4, q3
    vcls.s32    q5, q4
    vcls.s32    q6, q5
    vcls.s32    q7, q6
    vcls.s32    q8, q7
    vcls.s32    q9, q8
    vcls.s32    q10, q9
    vcls.s32    q11, q10

    // loop 5
    vcls.s32    q0, q11
    vcls.s32    q1, q0
    vcls.s32    q2, q1
    vcls.s32    q3, q2
    vcls.s32    q4, q3
    vcls.s32    q5, q4
    vcls.s32    q6, q5
    vcls.s32    q7, q6
    vcls.s32    q8, q7
    vcls.s32    q9, q8
    vcls.s32    q10, q9
    vcls.s32    q11, q10

    subs    r0, r0, #1
    bne     vclsI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vclsI4MaxTest:

    vpush.64    {d8-d15}

vclsI4MaxTest_LOOP:

    // loop 1
    vcls.s32    q1, q0
    vcls.s32    q2, q0
    vcls.s32    q3, q0
    vcls.s32    q4, q0
    vcls.s32    q5, q0
    vcls.s32    q6, q0
    vcls.s32    q7, q0
    vcls.s32    q8, q0
    vcls.s32    q9, q0
    vcls.s32    q10, q0
    vcls.s32    q11, q0
    vcls.s32    q12, q0

    // loop 2
    vcls.s32    q1, q0
    vcls.s32    q2, q0
    vcls.s32    q3, q0
    vcls.s32    q4, q0
    vcls.s32    q5, q0
    vcls.s32    q6, q0
    vcls.s32    q7, q0
    vcls.s32    q8, q0
    vcls.s32    q9, q0
    vcls.s32    q10, q0
    vcls.s32    q11, q0
    vcls.s32    q12, q0

    // loop 3
    vcls.s32    q1, q0
    vcls.s32    q2, q0
    vcls.s32    q3, q0
    vcls.s32    q4, q0
    vcls.s32    q5, q0
    vcls.s32    q6, q0
    vcls.s32    q7, q0
    vcls.s32    q8, q0
    vcls.s32    q9, q0
    vcls.s32    q10, q0
    vcls.s32    q11, q0
    vcls.s32    q12, q0

    // loop 4
    vcls.s32    q1, q0
    vcls.s32    q2, q0
    vcls.s32    q3, q0
    vcls.s32    q4, q0
    vcls.s32    q5, q0
    vcls.s32    q6, q0
    vcls.s32    q7, q0
    vcls.s32    q8, q0
    vcls.s32    q9, q0
    vcls.s32    q10, q0
    vcls.s32    q11, q0
    vcls.s32    q12, q0

    // loop 5
    vcls.s32    q1, q0
    vcls.s32    q2, q0
    vcls.s32    q3, q0
    vcls.s32    q4, q0
    vcls.s32    q5, q0
    vcls.s32    q6, q0
    vcls.s32    q7, q0
    vcls.s32    q8, q0
    vcls.s32    q9, q0
    vcls.s32    q10, q0
    vcls.s32    q11, q0
    vcls.s32    q12, q0

    subs    r0, r0, #1
    bne     vclsI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vclzI4MinTest:

    vpush.64    {d8-d15}

vclzI4MinTest_LOOP:

    // loop 1
    vclz.i32    q0, q11
    vclz.i32    q1, q0
    vclz.i32    q2, q1
    vclz.i32    q3, q2
    vclz.i32    q4, q3
    vclz.i32    q5, q4
    vclz.i32    q6, q5
    vclz.i32    q7, q6
    vclz.i32    q8, q7
    vclz.i32    q9, q8
    vclz.i32    q10, q9
    vclz.i32    q11, q10

    // loop 2
    vclz.i32    q0, q11
    vclz.i32    q1, q0
    vclz.i32    q2, q1
    vclz.i32    q3, q2
    vclz.i32    q4, q3
    vclz.i32    q5, q4
    vclz.i32    q6, q5
    vclz.i32    q7, q6
    vclz.i32    q8, q7
    vclz.i32    q9, q8
    vclz.i32    q10, q9
    vclz.i32    q11, q10

    // loop 3
    vclz.i32    q0, q11
    vclz.i32    q1, q0
    vclz.i32    q2, q1
    vclz.i32    q3, q2
    vclz.i32    q4, q3
    vclz.i32    q5, q4
    vclz.i32    q6, q5
    vclz.i32    q7, q6
    vclz.i32    q8, q7
    vclz.i32    q9, q8
    vclz.i32    q10, q9
    vclz.i32    q11, q10

    // loop 4
    vclz.i32    q0, q11
    vclz.i32    q1, q0
    vclz.i32    q2, q1
    vclz.i32    q3, q2
    vclz.i32    q4, q3
    vclz.i32    q5, q4
    vclz.i32    q6, q5
    vclz.i32    q7, q6
    vclz.i32    q8, q7
    vclz.i32    q9, q8
    vclz.i32    q10, q9
    vclz.i32    q11, q10

    // loop 5
    vclz.i32    q0, q11
    vclz.i32    q1, q0
    vclz.i32    q2, q1
    vclz.i32    q3, q2
    vclz.i32    q4, q3
    vclz.i32    q5, q4
    vclz.i32    q6, q5
    vclz.i32    q7, q6
    vclz.i32    q8, q7
    vclz.i32    q9, q8
    vclz.i32    q10, q9
    vclz.i32    q11, q10

    subs    r0, r0, #1
    bne     vclzI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vclzI4MaxTest:
    
    vpush.64    {d8-d15}

vclzI4MaxTest_LOOP:

    // loop 1
    vclz.i32    q1, q0
    vclz.i32    q2, q0
    vclz.i32    q3, q0
    vclz.i32    q4, q0
    vclz.i32    q5, q0
    vclz.i32    q6, q0
    vclz.i32    q7, q0
    vclz.i32    q8, q0
    vclz.i32    q9, q0
    vclz.i32    q10, q0
    vclz.i32    q11, q0
    vclz.i32    q12, q0

    // loop 2
    vclz.i32    q1, q0
    vclz.i32    q2, q0
    vclz.i32    q3, q0
    vclz.i32    q4, q0
    vclz.i32    q5, q0
    vclz.i32    q6, q0
    vclz.i32    q7, q0
    vclz.i32    q8, q0
    vclz.i32    q9, q0
    vclz.i32    q10, q0
    vclz.i32    q11, q0
    vclz.i32    q12, q0

    // loop 3
    vclz.i32    q1, q0
    vclz.i32    q2, q0
    vclz.i32    q3, q0
    vclz.i32    q4, q0
    vclz.i32    q5, q0
    vclz.i32    q6, q0
    vclz.i32    q7, q0
    vclz.i32    q8, q0
    vclz.i32    q9, q0
    vclz.i32    q10, q0
    vclz.i32    q11, q0
    vclz.i32    q12, q0

    // loop 4
    vclz.i32    q1, q0
    vclz.i32    q2, q0
    vclz.i32    q3, q0
    vclz.i32    q4, q0
    vclz.i32    q5, q0
    vclz.i32    q6, q0
    vclz.i32    q7, q0
    vclz.i32    q8, q0
    vclz.i32    q9, q0
    vclz.i32    q10, q0
    vclz.i32    q11, q0
    vclz.i32    q12, q0

    // loop 5
    vclz.i32    q1, q0
    vclz.i32    q2, q0
    vclz.i32    q3, q0
    vclz.i32    q4, q0
    vclz.i32    q5, q0
    vclz.i32    q6, q0
    vclz.i32    q7, q0
    vclz.i32    q8, q0
    vclz.i32    q9, q0
    vclz.i32    q10, q0
    vclz.i32    q11, q0
    vclz.i32    q12, q0

    subs    r0, r0, #1
    bne     vclzI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vcmpImmFMinTest:

    // loop 1
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0

    // loop 2
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0

    // loop 3
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0

    // loop 4
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0

    // loop 5
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0
    vcmp.f32    s0, #0.0

    subs    r0, r0, #1
    bne     _vcmpImmFMinTest
    bx      lr

_vcmpImmFMaxTest:

    // loop 1
    vcmp.f32    s0, #0.0
    vcmp.f32    s1, #0.0
    vcmp.f32    s2, #0.0
    vcmp.f32    s3, #0.0
    vcmp.f32    s4, #0.0
    vcmp.f32    s5, #0.0
    vcmp.f32    s6, #0.0
    vcmp.f32    s7, #0.0
    vcmp.f32    s8, #0.0
    vcmp.f32    s9, #0.0
    vcmp.f32    s10, #0.0
    vcmp.f32    s11, #0.0

    // loop 2
    vcmp.f32    s0, #0.0
    vcmp.f32    s1, #0.0
    vcmp.f32    s2, #0.0
    vcmp.f32    s3, #0.0
    vcmp.f32    s4, #0.0
    vcmp.f32    s5, #0.0
    vcmp.f32    s6, #0.0
    vcmp.f32    s7, #0.0
    vcmp.f32    s8, #0.0
    vcmp.f32    s9, #0.0
    vcmp.f32    s10, #0.0
    vcmp.f32    s11, #0.0

    // loop 3
    vcmp.f32    s0, #0.0
    vcmp.f32    s1, #0.0
    vcmp.f32    s2, #0.0
    vcmp.f32    s3, #0.0
    vcmp.f32    s4, #0.0
    vcmp.f32    s5, #0.0
    vcmp.f32    s6, #0.0
    vcmp.f32    s7, #0.0
    vcmp.f32    s8, #0.0
    vcmp.f32    s9, #0.0
    vcmp.f32    s10, #0.0
    vcmp.f32    s11, #0.0

    // loop 4
    vcmp.f32    s0, #0.0
    vcmp.f32    s1, #0.0
    vcmp.f32    s2, #0.0
    vcmp.f32    s3, #0.0
    vcmp.f32    s4, #0.0
    vcmp.f32    s5, #0.0
    vcmp.f32    s6, #0.0
    vcmp.f32    s7, #0.0
    vcmp.f32    s8, #0.0
    vcmp.f32    s9, #0.0
    vcmp.f32    s10, #0.0
    vcmp.f32    s11, #0.0

    // loop 5
    vcmp.f32    s0, #0.0
    vcmp.f32    s1, #0.0
    vcmp.f32    s2, #0.0
    vcmp.f32    s3, #0.0
    vcmp.f32    s4, #0.0
    vcmp.f32    s5, #0.0
    vcmp.f32    s6, #0.0
    vcmp.f32    s7, #0.0
    vcmp.f32    s8, #0.0
    vcmp.f32    s9, #0.0
    vcmp.f32    s10, #0.0
    vcmp.f32    s11, #0.0

    subs    r0, r0, #1
    bne     _vcmpImmFMaxTest
    bx      lr

_vcmpImmDMinTest:

    // loop 1
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0

    // loop 2
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0

    // loop 3
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0

    // loop 4
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0

    // loop 5
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0
    vcmp.f64    d0, #0.0

    subs    r0, r0, #1
    bne     _vcmpImmDMinTest
    bx      lr

_vcmpImmDMaxTest:

    vpush.64    {d8-d15}

vcmpImmDMaxTest_LOOP:

    // loop 1
    vcmp.f64    d0, #0.0
    vcmp.f64    d1, #0.0
    vcmp.f64    d2, #0.0
    vcmp.f64    d3, #0.0
    vcmp.f64    d4, #0.0
    vcmp.f64    d5, #0.0
    vcmp.f64    d6, #0.0
    vcmp.f64    d7, #0.0
    vcmp.f64    d8, #0.0
    vcmp.f64    d9, #0.0
    vcmp.f64    d10, #0.0
    vcmp.f64    d11, #0.0

    // loop 2
    vcmp.f64    d0, #0.0
    vcmp.f64    d1, #0.0
    vcmp.f64    d2, #0.0
    vcmp.f64    d3, #0.0
    vcmp.f64    d4, #0.0
    vcmp.f64    d5, #0.0
    vcmp.f64    d6, #0.0
    vcmp.f64    d7, #0.0
    vcmp.f64    d8, #0.0
    vcmp.f64    d9, #0.0
    vcmp.f64    d10, #0.0
    vcmp.f64    d11, #0.0

    // loop 3
    vcmp.f64    d0, #0.0
    vcmp.f64    d1, #0.0
    vcmp.f64    d2, #0.0
    vcmp.f64    d3, #0.0
    vcmp.f64    d4, #0.0
    vcmp.f64    d5, #0.0
    vcmp.f64    d6, #0.0
    vcmp.f64    d7, #0.0
    vcmp.f64    d8, #0.0
    vcmp.f64    d9, #0.0
    vcmp.f64    d10, #0.0
    vcmp.f64    d11, #0.0

    // loop 4
    vcmp.f64    d0, #0.0
    vcmp.f64    d1, #0.0
    vcmp.f64    d2, #0.0
    vcmp.f64    d3, #0.0
    vcmp.f64    d4, #0.0
    vcmp.f64    d5, #0.0
    vcmp.f64    d6, #0.0
    vcmp.f64    d7, #0.0
    vcmp.f64    d8, #0.0
    vcmp.f64    d9, #0.0
    vcmp.f64    d10, #0.0
    vcmp.f64    d11, #0.0

    // loop 5
    vcmp.f64    d0, #0.0
    vcmp.f64    d1, #0.0
    vcmp.f64    d2, #0.0
    vcmp.f64    d3, #0.0
    vcmp.f64    d4, #0.0
    vcmp.f64    d5, #0.0
    vcmp.f64    d6, #0.0
    vcmp.f64    d7, #0.0
    vcmp.f64    d8, #0.0
    vcmp.f64    d9, #0.0
    vcmp.f64    d10, #0.0
    vcmp.f64    d11, #0.0

    subs    r0, r0, #1
    bne     vcmpImmDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcmpRegFMinTest:

    // loop 1
    vcmp.f32    s0, s11
    vcmp.f32    s1, s0
    vcmp.f32    s2, s1
    vcmp.f32    s3, s2
    vcmp.f32    s4, s3
    vcmp.f32    s5, s4
    vcmp.f32    s6, s5
    vcmp.f32    s7, s6
    vcmp.f32    s8, s7
    vcmp.f32    s9, s8
    vcmp.f32    s10, s9
    vcmp.f32    s11, s10
    
    // loop 2
    vcmp.f32    s0, s11
    vcmp.f32    s1, s0
    vcmp.f32    s2, s1
    vcmp.f32    s3, s2
    vcmp.f32    s4, s3
    vcmp.f32    s5, s4
    vcmp.f32    s6, s5
    vcmp.f32    s7, s6
    vcmp.f32    s8, s7
    vcmp.f32    s9, s8
    vcmp.f32    s10, s9
    vcmp.f32    s11, s10

    // loop 3
    vcmp.f32    s0, s11
    vcmp.f32    s1, s0
    vcmp.f32    s2, s1
    vcmp.f32    s3, s2
    vcmp.f32    s4, s3
    vcmp.f32    s5, s4
    vcmp.f32    s6, s5
    vcmp.f32    s7, s6
    vcmp.f32    s8, s7
    vcmp.f32    s9, s8
    vcmp.f32    s10, s9
    vcmp.f32    s11, s10

    // loop 4
    vcmp.f32    s0, s11
    vcmp.f32    s1, s0
    vcmp.f32    s2, s1
    vcmp.f32    s3, s2
    vcmp.f32    s4, s3
    vcmp.f32    s5, s4
    vcmp.f32    s6, s5
    vcmp.f32    s7, s6
    vcmp.f32    s8, s7
    vcmp.f32    s9, s8
    vcmp.f32    s10, s9
    vcmp.f32    s11, s10

    // loop 5
    vcmp.f32    s0, s11
    vcmp.f32    s1, s0
    vcmp.f32    s2, s1
    vcmp.f32    s3, s2
    vcmp.f32    s4, s3
    vcmp.f32    s5, s4
    vcmp.f32    s6, s5
    vcmp.f32    s7, s6
    vcmp.f32    s8, s7
    vcmp.f32    s9, s8
    vcmp.f32    s10, s9
    vcmp.f32    s11, s10

    subs    r0, r0, #1
    bne     _vcmpRegFMinTest
    bx      lr

_vcmpRegFMaxTest:

    // loop 1
    vcmp.f32    s1, s0
    vcmp.f32    s2, s0
    vcmp.f32    s3, s0
    vcmp.f32    s4, s0
    vcmp.f32    s5, s0
    vcmp.f32    s6, s0
    vcmp.f32    s7, s0
    vcmp.f32    s8, s0
    vcmp.f32    s9, s0
    vcmp.f32    s10, s0
    vcmp.f32    s11, s0
    vcmp.f32    s12, s0

    // loop 2
    vcmp.f32    s1, s0
    vcmp.f32    s2, s0
    vcmp.f32    s3, s0
    vcmp.f32    s4, s0
    vcmp.f32    s5, s0
    vcmp.f32    s6, s0
    vcmp.f32    s7, s0
    vcmp.f32    s8, s0
    vcmp.f32    s9, s0
    vcmp.f32    s10, s0
    vcmp.f32    s11, s0
    vcmp.f32    s12, s0

    // loop 3
    vcmp.f32    s1, s0
    vcmp.f32    s2, s0
    vcmp.f32    s3, s0
    vcmp.f32    s4, s0
    vcmp.f32    s5, s0
    vcmp.f32    s6, s0
    vcmp.f32    s7, s0
    vcmp.f32    s8, s0
    vcmp.f32    s9, s0
    vcmp.f32    s10, s0
    vcmp.f32    s11, s0
    vcmp.f32    s12, s0

    // loop 4
    vcmp.f32    s1, s0
    vcmp.f32    s2, s0
    vcmp.f32    s3, s0
    vcmp.f32    s4, s0
    vcmp.f32    s5, s0
    vcmp.f32    s6, s0
    vcmp.f32    s7, s0
    vcmp.f32    s8, s0
    vcmp.f32    s9, s0
    vcmp.f32    s10, s0
    vcmp.f32    s11, s0
    vcmp.f32    s12, s0

    // loop 5
    vcmp.f32    s1, s0
    vcmp.f32    s2, s0
    vcmp.f32    s3, s0
    vcmp.f32    s4, s0
    vcmp.f32    s5, s0
    vcmp.f32    s6, s0
    vcmp.f32    s7, s0
    vcmp.f32    s8, s0
    vcmp.f32    s9, s0
    vcmp.f32    s10, s0
    vcmp.f32    s11, s0
    vcmp.f32    s12, s0

    subs    r0, r0, #1
    bne     _vcmpRegFMaxTest
    bx      lr

_vcmpRegDMinTest:

    vpush.64    {d8-d15}

vcmpRegDMinTest_LOOP:

    // loop 1
    vcmp.f64    d0, d11
    vcmp.f64    d1, d0
    vcmp.f64    d2, d1
    vcmp.f64    d3, d2
    vcmp.f64    d4, d3
    vcmp.f64    d5, d4
    vcmp.f64    d6, d5
    vcmp.f64    d7, d6
    vcmp.f64    d8, d7
    vcmp.f64    d9, d8
    vcmp.f64    d10, d9
    vcmp.f64    d11, d10

    // loop 2
    vcmp.f64    d0, d11
    vcmp.f64    d1, d0
    vcmp.f64    d2, d1
    vcmp.f64    d3, d2
    vcmp.f64    d4, d3
    vcmp.f64    d5, d4
    vcmp.f64    d6, d5
    vcmp.f64    d7, d6
    vcmp.f64    d8, d7
    vcmp.f64    d9, d8
    vcmp.f64    d10, d9
    vcmp.f64    d11, d10

    // loop 3
    vcmp.f64    d0, d11
    vcmp.f64    d1, d0
    vcmp.f64    d2, d1
    vcmp.f64    d3, d2
    vcmp.f64    d4, d3
    vcmp.f64    d5, d4
    vcmp.f64    d6, d5
    vcmp.f64    d7, d6
    vcmp.f64    d8, d7
    vcmp.f64    d9, d8
    vcmp.f64    d10, d9
    vcmp.f64    d11, d10

    // loop 4
    vcmp.f64    d0, d11
    vcmp.f64    d1, d0
    vcmp.f64    d2, d1
    vcmp.f64    d3, d2
    vcmp.f64    d4, d3
    vcmp.f64    d5, d4
    vcmp.f64    d6, d5
    vcmp.f64    d7, d6
    vcmp.f64    d8, d7
    vcmp.f64    d9, d8
    vcmp.f64    d10, d9
    vcmp.f64    d11, d10

    // loop 5
    vcmp.f64    d0, d11
    vcmp.f64    d1, d0
    vcmp.f64    d2, d1
    vcmp.f64    d3, d2
    vcmp.f64    d4, d3
    vcmp.f64    d5, d4
    vcmp.f64    d6, d5
    vcmp.f64    d7, d6
    vcmp.f64    d8, d7
    vcmp.f64    d9, d8
    vcmp.f64    d10, d9
    vcmp.f64    d11, d10

    subs    r0, r0, #1
    bne     vcmpRegDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcmpRegDMaxTest:

    vpush.64    {d8-d15}

vcmpRegDMaxTest_LOOP:

    // loop 1
    vcmp.f64    d1, d0
    vcmp.f64    d2, d0
    vcmp.f64    d3, d0
    vcmp.f64    d4, d0
    vcmp.f64    d5, d0
    vcmp.f64    d6, d0
    vcmp.f64    d7, d0
    vcmp.f64    d8, d0
    vcmp.f64    d9, d0
    vcmp.f64    d10, d0
    vcmp.f64    d11, d0
    vcmp.f64    d12, d0

    // loop 2
    vcmp.f64    d1, d0
    vcmp.f64    d2, d0
    vcmp.f64    d3, d0
    vcmp.f64    d4, d0
    vcmp.f64    d5, d0
    vcmp.f64    d6, d0
    vcmp.f64    d7, d0
    vcmp.f64    d8, d0
    vcmp.f64    d9, d0
    vcmp.f64    d10, d0
    vcmp.f64    d11, d0
    vcmp.f64    d12, d0

    // loop 3
    vcmp.f64    d1, d0
    vcmp.f64    d2, d0
    vcmp.f64    d3, d0
    vcmp.f64    d4, d0
    vcmp.f64    d5, d0
    vcmp.f64    d6, d0
    vcmp.f64    d7, d0
    vcmp.f64    d8, d0
    vcmp.f64    d9, d0
    vcmp.f64    d10, d0
    vcmp.f64    d11, d0
    vcmp.f64    d12, d0

    // loop 4
    vcmp.f64    d1, d0
    vcmp.f64    d2, d0
    vcmp.f64    d3, d0
    vcmp.f64    d4, d0
    vcmp.f64    d5, d0
    vcmp.f64    d6, d0
    vcmp.f64    d7, d0
    vcmp.f64    d8, d0
    vcmp.f64    d9, d0
    vcmp.f64    d10, d0
    vcmp.f64    d11, d0
    vcmp.f64    d12, d0

    // loop 5
    vcmp.f64    d1, d0
    vcmp.f64    d2, d0
    vcmp.f64    d3, d0
    vcmp.f64    d4, d0
    vcmp.f64    d5, d0
    vcmp.f64    d6, d0
    vcmp.f64    d7, d0
    vcmp.f64    d8, d0
    vcmp.f64    d9, d0
    vcmp.f64    d10, d0
    vcmp.f64    d11, d0
    vcmp.f64    d12, d0

    subs    r0, r0, #1
    bne     vcmpRegDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vcntMinTest:

    vpush       {d8-d15}

vcntMinTest_LOOP:

    // loop 1
    vcnt.8      q0, q11
    vcnt.8      q1, q0
    vcnt.8      q2, q1
    vcnt.8      q3, q2
    vcnt.8      q4, q3
    vcnt.8      q5, q4
    vcnt.8      q6, q5
    vcnt.8      q7, q6
    vcnt.8      q8, q7
    vcnt.8      q9, q8
    vcnt.8      q10, q9
    vcnt.8      q11, q10

    // loop 2
    vcnt.8      q0, q11
    vcnt.8      q1, q0
    vcnt.8      q2, q1
    vcnt.8      q3, q2
    vcnt.8      q4, q3
    vcnt.8      q5, q4
    vcnt.8      q6, q5
    vcnt.8      q7, q6
    vcnt.8      q8, q7
    vcnt.8      q9, q8
    vcnt.8      q10, q9
    vcnt.8      q11, q10

    // loop 3
    vcnt.8      q0, q11
    vcnt.8      q1, q0
    vcnt.8      q2, q1
    vcnt.8      q3, q2
    vcnt.8      q4, q3
    vcnt.8      q5, q4
    vcnt.8      q6, q5
    vcnt.8      q7, q6
    vcnt.8      q8, q7
    vcnt.8      q9, q8
    vcnt.8      q10, q9
    vcnt.8      q11, q10

    // loop 4
    vcnt.8      q0, q11
    vcnt.8      q1, q0
    vcnt.8      q2, q1
    vcnt.8      q3, q2
    vcnt.8      q4, q3
    vcnt.8      q5, q4
    vcnt.8      q6, q5
    vcnt.8      q7, q6
    vcnt.8      q8, q7
    vcnt.8      q9, q8
    vcnt.8      q10, q9
    vcnt.8      q11, q10

    // loop 5
    vcnt.8      q0, q11
    vcnt.8      q1, q0
    vcnt.8      q2, q1
    vcnt.8      q3, q2
    vcnt.8      q4, q3
    vcnt.8      q5, q4
    vcnt.8      q6, q5
    vcnt.8      q7, q6
    vcnt.8      q8, q7
    vcnt.8      q9, q8
    vcnt.8      q10, q9
    vcnt.8      q11, q10

    subs    r0, r0, #1
    bne     vcntMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vcntMaxTest:

    vpush.64    {d8-d15}

vcntMaxTest_LOOP:

    // loop 1
    vcnt.8      q1, q0
    vcnt.8      q2, q0
    vcnt.8      q3, q0
    vcnt.8      q4, q0
    vcnt.8      q5, q0
    vcnt.8      q6, q0
    vcnt.8      q7, q0
    vcnt.8      q8, q0
    vcnt.8      q9, q0
    vcnt.8      q10, q0
    vcnt.8      q11, q0
    vcnt.8      q12, q0

    // loop 2
    vcnt.8      q1, q0
    vcnt.8      q2, q0
    vcnt.8      q3, q0
    vcnt.8      q4, q0
    vcnt.8      q5, q0
    vcnt.8      q6, q0
    vcnt.8      q7, q0
    vcnt.8      q8, q0
    vcnt.8      q9, q0
    vcnt.8      q10, q0
    vcnt.8      q11, q0
    vcnt.8      q12, q0

    // loop 3
    vcnt.8      q1, q0
    vcnt.8      q2, q0
    vcnt.8      q3, q0
    vcnt.8      q4, q0
    vcnt.8      q5, q0
    vcnt.8      q6, q0
    vcnt.8      q7, q0
    vcnt.8      q8, q0
    vcnt.8      q9, q0
    vcnt.8      q10, q0
    vcnt.8      q11, q0
    vcnt.8      q12, q0

    // loop 4
    vcnt.8      q1, q0
    vcnt.8      q2, q0
    vcnt.8      q3, q0
    vcnt.8      q4, q0
    vcnt.8      q5, q0
    vcnt.8      q6, q0
    vcnt.8      q7, q0
    vcnt.8      q8, q0
    vcnt.8      q9, q0
    vcnt.8      q10, q0
    vcnt.8      q11, q0
    vcnt.8      q12, q0

    // loop 5
    vcnt.8      q1, q0
    vcnt.8      q2, q0
    vcnt.8      q3, q0
    vcnt.8      q4, q0
    vcnt.8      q5, q0
    vcnt.8      q6, q0
    vcnt.8      q7, q0
    vcnt.8      q8, q0
    vcnt.8      q9, q0
    vcnt.8      q10, q0
    vcnt.8      q11, q0
    vcnt.8      q12, q0

    subs    r0, r0, #1
    bne     vcntMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vcvtI4F4MinTest:

    vpush.64        {d8-d15}

vcvtI4F4MinTest_LOOP:

    // loop 1
    vcvt.s32.f32    q0, q11
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q1
    vcvt.s32.f32    q3, q2
    vcvt.s32.f32    q4, q3
    vcvt.s32.f32    q5, q4
    vcvt.s32.f32    q6, q5
    vcvt.s32.f32    q7, q6
    vcvt.s32.f32    q8, q7
    vcvt.s32.f32    q9, q8
    vcvt.s32.f32    q10, q9
    vcvt.s32.f32    q11, q10

    // loop 2
    vcvt.s32.f32    q0, q11
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q1
    vcvt.s32.f32    q3, q2
    vcvt.s32.f32    q4, q3
    vcvt.s32.f32    q5, q4
    vcvt.s32.f32    q6, q5
    vcvt.s32.f32    q7, q6
    vcvt.s32.f32    q8, q7
    vcvt.s32.f32    q9, q8
    vcvt.s32.f32    q10, q9
    vcvt.s32.f32    q11, q10

    // loop 3
    vcvt.s32.f32    q0, q11
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q1
    vcvt.s32.f32    q3, q2
    vcvt.s32.f32    q4, q3
    vcvt.s32.f32    q5, q4
    vcvt.s32.f32    q6, q5
    vcvt.s32.f32    q7, q6
    vcvt.s32.f32    q8, q7
    vcvt.s32.f32    q9, q8
    vcvt.s32.f32    q10, q9
    vcvt.s32.f32    q11, q10

    // loop 4
    vcvt.s32.f32    q0, q11
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q1
    vcvt.s32.f32    q3, q2
    vcvt.s32.f32    q4, q3
    vcvt.s32.f32    q5, q4
    vcvt.s32.f32    q6, q5
    vcvt.s32.f32    q7, q6
    vcvt.s32.f32    q8, q7
    vcvt.s32.f32    q9, q8
    vcvt.s32.f32    q10, q9
    vcvt.s32.f32    q11, q10

    // loop 5
    vcvt.s32.f32    q0, q11
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q1
    vcvt.s32.f32    q3, q2
    vcvt.s32.f32    q4, q3
    vcvt.s32.f32    q5, q4
    vcvt.s32.f32    q6, q5
    vcvt.s32.f32    q7, q6
    vcvt.s32.f32    q8, q7
    vcvt.s32.f32    q9, q8
    vcvt.s32.f32    q10, q9
    vcvt.s32.f32    q11, q10

    subs    r0, r0, #1
    bne     vcvtI4F4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtI4F4MaxTest:

    vpush.64        {d8-d15}

vcvtI4F4MaxTest_LOOP:

    // loop 1
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q0
    vcvt.s32.f32    q3, q0
    vcvt.s32.f32    q4, q0
    vcvt.s32.f32    q5, q0
    vcvt.s32.f32    q6, q0
    vcvt.s32.f32    q7, q0
    vcvt.s32.f32    q8, q0
    vcvt.s32.f32    q9, q0
    vcvt.s32.f32    q10, q0
    vcvt.s32.f32    q11, q0
    vcvt.s32.f32    q12, q0

    // loop 2
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q0
    vcvt.s32.f32    q3, q0
    vcvt.s32.f32    q4, q0
    vcvt.s32.f32    q5, q0
    vcvt.s32.f32    q6, q0
    vcvt.s32.f32    q7, q0
    vcvt.s32.f32    q8, q0
    vcvt.s32.f32    q9, q0
    vcvt.s32.f32    q10, q0
    vcvt.s32.f32    q11, q0
    vcvt.s32.f32    q12, q0

    // loop 3
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q0
    vcvt.s32.f32    q3, q0
    vcvt.s32.f32    q4, q0
    vcvt.s32.f32    q5, q0
    vcvt.s32.f32    q6, q0
    vcvt.s32.f32    q7, q0
    vcvt.s32.f32    q8, q0
    vcvt.s32.f32    q9, q0
    vcvt.s32.f32    q10, q0
    vcvt.s32.f32    q11, q0
    vcvt.s32.f32    q12, q0

    // loop 4
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q0
    vcvt.s32.f32    q3, q0
    vcvt.s32.f32    q4, q0
    vcvt.s32.f32    q5, q0
    vcvt.s32.f32    q6, q0
    vcvt.s32.f32    q7, q0
    vcvt.s32.f32    q8, q0
    vcvt.s32.f32    q9, q0
    vcvt.s32.f32    q10, q0
    vcvt.s32.f32    q11, q0
    vcvt.s32.f32    q12, q0

    // loop 5
    vcvt.s32.f32    q1, q0
    vcvt.s32.f32    q2, q0
    vcvt.s32.f32    q3, q0
    vcvt.s32.f32    q4, q0
    vcvt.s32.f32    q5, q0
    vcvt.s32.f32    q6, q0
    vcvt.s32.f32    q7, q0
    vcvt.s32.f32    q8, q0
    vcvt.s32.f32    q9, q0
    vcvt.s32.f32    q10, q0
    vcvt.s32.f32    q11, q0
    vcvt.s32.f32    q12, q0

    subs    r0, r0, #1
    bne     vcvtI4F4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtF4I4MinTest:

    vpush.64        {d8-d15}

vcvtF4I4MinTest_LOOP:

    // loop 1
    vcvt.f32.s32    q0, q11
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q1
    vcvt.f32.s32    q3, q2
    vcvt.f32.s32    q4, q3
    vcvt.f32.s32    q5, q4
    vcvt.f32.s32    q6, q5
    vcvt.f32.s32    q7, q6
    vcvt.f32.s32    q8, q7
    vcvt.f32.s32    q9, q8
    vcvt.f32.s32    q10, q9
    vcvt.f32.s32    q11, q10

    // loop 2
    vcvt.f32.s32    q0, q11
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q1
    vcvt.f32.s32    q3, q2
    vcvt.f32.s32    q4, q3
    vcvt.f32.s32    q5, q4
    vcvt.f32.s32    q6, q5
    vcvt.f32.s32    q7, q6
    vcvt.f32.s32    q8, q7
    vcvt.f32.s32    q9, q8
    vcvt.f32.s32    q10, q9
    vcvt.f32.s32    q11, q10

    // loop 3
    vcvt.f32.s32    q0, q11
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q1
    vcvt.f32.s32    q3, q2
    vcvt.f32.s32    q4, q3
    vcvt.f32.s32    q5, q4
    vcvt.f32.s32    q6, q5
    vcvt.f32.s32    q7, q6
    vcvt.f32.s32    q8, q7
    vcvt.f32.s32    q9, q8
    vcvt.f32.s32    q10, q9
    vcvt.f32.s32    q11, q10

    // loop 4
    vcvt.f32.s32    q0, q11
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q1
    vcvt.f32.s32    q3, q2
    vcvt.f32.s32    q4, q3
    vcvt.f32.s32    q5, q4
    vcvt.f32.s32    q6, q5
    vcvt.f32.s32    q7, q6
    vcvt.f32.s32    q8, q7
    vcvt.f32.s32    q9, q8
    vcvt.f32.s32    q10, q9
    vcvt.f32.s32    q11, q10

    // loop 5
    vcvt.f32.s32    q0, q11
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q1
    vcvt.f32.s32    q3, q2
    vcvt.f32.s32    q4, q3
    vcvt.f32.s32    q5, q4
    vcvt.f32.s32    q6, q5
    vcvt.f32.s32    q7, q6
    vcvt.f32.s32    q8, q7
    vcvt.f32.s32    q9, q8
    vcvt.f32.s32    q10, q9
    vcvt.f32.s32    q11, q10

    subs    r0, r0, #1
    bne     vcvtF4I4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtF4I4MaxTest:

    vpush.64        {d8-d15}

vcvtF4I4MaxTest_LOOP:

    // loop 1
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q0
    vcvt.f32.s32    q3, q0
    vcvt.f32.s32    q4, q0
    vcvt.f32.s32    q5, q0
    vcvt.f32.s32    q6, q0
    vcvt.f32.s32    q7, q0
    vcvt.f32.s32    q8, q0
    vcvt.f32.s32    q9, q0
    vcvt.f32.s32    q10, q0
    vcvt.f32.s32    q11, q0
    vcvt.f32.s32    q12, q0

    // loop 2
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q0
    vcvt.f32.s32    q3, q0
    vcvt.f32.s32    q4, q0
    vcvt.f32.s32    q5, q0
    vcvt.f32.s32    q6, q0
    vcvt.f32.s32    q7, q0
    vcvt.f32.s32    q8, q0
    vcvt.f32.s32    q9, q0
    vcvt.f32.s32    q10, q0
    vcvt.f32.s32    q11, q0
    vcvt.f32.s32    q12, q0

    // loop 3
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q0
    vcvt.f32.s32    q3, q0
    vcvt.f32.s32    q4, q0
    vcvt.f32.s32    q5, q0
    vcvt.f32.s32    q6, q0
    vcvt.f32.s32    q7, q0
    vcvt.f32.s32    q8, q0
    vcvt.f32.s32    q9, q0
    vcvt.f32.s32    q10, q0
    vcvt.f32.s32    q11, q0
    vcvt.f32.s32    q12, q0

    // loop 4
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q0
    vcvt.f32.s32    q3, q0
    vcvt.f32.s32    q4, q0
    vcvt.f32.s32    q5, q0
    vcvt.f32.s32    q6, q0
    vcvt.f32.s32    q7, q0
    vcvt.f32.s32    q8, q0
    vcvt.f32.s32    q9, q0
    vcvt.f32.s32    q10, q0
    vcvt.f32.s32    q11, q0
    vcvt.f32.s32    q12, q0

    // loop 5
    vcvt.f32.s32    q1, q0
    vcvt.f32.s32    q2, q0
    vcvt.f32.s32    q3, q0
    vcvt.f32.s32    q4, q0
    vcvt.f32.s32    q5, q0
    vcvt.f32.s32    q6, q0
    vcvt.f32.s32    q7, q0
    vcvt.f32.s32    q8, q0
    vcvt.f32.s32    q9, q0
    vcvt.f32.s32    q10, q0
    vcvt.f32.s32    q11, q0
    vcvt.f32.s32    q12, q0

    subs    r0, r0, #1
    bne     vcvtF4I4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vcvtIFMinTest:

    vpush.64        {d8-d15}

vcvtIFMinTest_LOOP:

    // loop 1
    vcvt.s32.f32    s0, s11
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s1
    vcvt.s32.f32    s3, s2
    vcvt.s32.f32    s4, s3
    vcvt.s32.f32    s5, s4
    vcvt.s32.f32    s6, s5
    vcvt.s32.f32    s7, s6
    vcvt.s32.f32    s8, s7
    vcvt.s32.f32    s9, s8
    vcvt.s32.f32    s10, s9
    vcvt.s32.f32    s11, s10

    // loop 2
    vcvt.s32.f32    s0, s11
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s1
    vcvt.s32.f32    s3, s2
    vcvt.s32.f32    s4, s3
    vcvt.s32.f32    s5, s4
    vcvt.s32.f32    s6, s5
    vcvt.s32.f32    s7, s6
    vcvt.s32.f32    s8, s7
    vcvt.s32.f32    s9, s8
    vcvt.s32.f32    s10, s9
    vcvt.s32.f32    s11, s10

    // loop 3
    vcvt.s32.f32    s0, s11
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s1
    vcvt.s32.f32    s3, s2
    vcvt.s32.f32    s4, s3
    vcvt.s32.f32    s5, s4
    vcvt.s32.f32    s6, s5
    vcvt.s32.f32    s7, s6
    vcvt.s32.f32    s8, s7
    vcvt.s32.f32    s9, s8
    vcvt.s32.f32    s10, s9
    vcvt.s32.f32    s11, s10

    // loop 4
    vcvt.s32.f32    s0, s11
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s1
    vcvt.s32.f32    s3, s2
    vcvt.s32.f32    s4, s3
    vcvt.s32.f32    s5, s4
    vcvt.s32.f32    s6, s5
    vcvt.s32.f32    s7, s6
    vcvt.s32.f32    s8, s7
    vcvt.s32.f32    s9, s8
    vcvt.s32.f32    s10, s9
    vcvt.s32.f32    s11, s10

    // loop 5
    vcvt.s32.f32    s0, s11
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s1
    vcvt.s32.f32    s3, s2
    vcvt.s32.f32    s4, s3
    vcvt.s32.f32    s5, s4
    vcvt.s32.f32    s6, s5
    vcvt.s32.f32    s7, s6
    vcvt.s32.f32    s8, s7
    vcvt.s32.f32    s9, s8
    vcvt.s32.f32    s10, s9
    vcvt.s32.f32    s11, s10

    subs    r0, r0, #1
    bne     vcvtIFMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtIFMaxTest:

    vpush.64        {d8-d15}

vcvtIFMaxTest_LOOP:

    // loop 1
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s0
    vcvt.s32.f32    s3, s0
    vcvt.s32.f32    s4, s0
    vcvt.s32.f32    s5, s0
    vcvt.s32.f32    s6, s0
    vcvt.s32.f32    s7, s0
    vcvt.s32.f32    s8, s0
    vcvt.s32.f32    s9, s0
    vcvt.s32.f32    s10, s0
    vcvt.s32.f32    s11, s0
    vcvt.s32.f32    s12, s0

    // loop 2
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s0
    vcvt.s32.f32    s3, s0
    vcvt.s32.f32    s4, s0
    vcvt.s32.f32    s5, s0
    vcvt.s32.f32    s6, s0
    vcvt.s32.f32    s7, s0
    vcvt.s32.f32    s8, s0
    vcvt.s32.f32    s9, s0
    vcvt.s32.f32    s10, s0
    vcvt.s32.f32    s11, s0
    vcvt.s32.f32    s12, s0

    // loop 3
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s0
    vcvt.s32.f32    s3, s0
    vcvt.s32.f32    s4, s0
    vcvt.s32.f32    s5, s0
    vcvt.s32.f32    s6, s0
    vcvt.s32.f32    s7, s0
    vcvt.s32.f32    s8, s0
    vcvt.s32.f32    s9, s0
    vcvt.s32.f32    s10, s0
    vcvt.s32.f32    s11, s0
    vcvt.s32.f32    s12, s0

    // loop 4
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s0
    vcvt.s32.f32    s3, s0
    vcvt.s32.f32    s4, s0
    vcvt.s32.f32    s5, s0
    vcvt.s32.f32    s6, s0
    vcvt.s32.f32    s7, s0
    vcvt.s32.f32    s8, s0
    vcvt.s32.f32    s9, s0
    vcvt.s32.f32    s10, s0
    vcvt.s32.f32    s11, s0
    vcvt.s32.f32    s12, s0

    // loop 5
    vcvt.s32.f32    s1, s0
    vcvt.s32.f32    s2, s0
    vcvt.s32.f32    s3, s0
    vcvt.s32.f32    s4, s0
    vcvt.s32.f32    s5, s0
    vcvt.s32.f32    s6, s0
    vcvt.s32.f32    s7, s0
    vcvt.s32.f32    s8, s0
    vcvt.s32.f32    s9, s0
    vcvt.s32.f32    s10, s0
    vcvt.s32.f32    s11, s0
    vcvt.s32.f32    s12, s0

    subs    r0, r0, #1
    bne     vcvtIFMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtIDMinTest:

    vpush.64        {d8-d15}

vcvtIDMinTest_LOOP:

    // loop 1
    vcvt.s32.f64    s0, d11
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d1
    vcvt.s32.f64    s6, d2
    vcvt.s32.f64    s8, d3
    vcvt.s32.f64    s10, d4
    vcvt.s32.f64    s12, d5
    vcvt.s32.f64    s14, d6
    vcvt.s32.f64    s16, d7
    vcvt.s32.f64    s18, d8
    vcvt.s32.f64    s20, d9
    vcvt.s32.f64    s22, d10
    
    // loop 2
    vcvt.s32.f64    s0, d11
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d1
    vcvt.s32.f64    s6, d2
    vcvt.s32.f64    s8, d3
    vcvt.s32.f64    s10, d4
    vcvt.s32.f64    s12, d5
    vcvt.s32.f64    s14, d6
    vcvt.s32.f64    s16, d7
    vcvt.s32.f64    s18, d8
    vcvt.s32.f64    s20, d9
    vcvt.s32.f64    s22, d10

    // loop 3
    vcvt.s32.f64    s0, d11
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d1
    vcvt.s32.f64    s6, d2
    vcvt.s32.f64    s8, d3
    vcvt.s32.f64    s10, d4
    vcvt.s32.f64    s12, d5
    vcvt.s32.f64    s14, d6
    vcvt.s32.f64    s16, d7
    vcvt.s32.f64    s18, d8
    vcvt.s32.f64    s20, d9
    vcvt.s32.f64    s22, d10

    // loop 4
    vcvt.s32.f64    s0, d11
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d1
    vcvt.s32.f64    s6, d2
    vcvt.s32.f64    s8, d3
    vcvt.s32.f64    s10, d4
    vcvt.s32.f64    s12, d5
    vcvt.s32.f64    s14, d6
    vcvt.s32.f64    s16, d7
    vcvt.s32.f64    s18, d8
    vcvt.s32.f64    s20, d9
    vcvt.s32.f64    s22, d10

    // loop 5
    vcvt.s32.f64    s0, d11
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d1
    vcvt.s32.f64    s6, d2
    vcvt.s32.f64    s8, d3
    vcvt.s32.f64    s10, d4
    vcvt.s32.f64    s12, d5
    vcvt.s32.f64    s14, d6
    vcvt.s32.f64    s16, d7
    vcvt.s32.f64    s18, d8
    vcvt.s32.f64    s20, d9
    vcvt.s32.f64    s22, d10

    subs    r0, r0, #1
    bne     vcvtIDMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtIDMaxTest:

    vpush.64        {d8-d15}

vcvtIDMaxTest_LOOP:

    // loop 1
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d0
    vcvt.s32.f64    s6, d0
    vcvt.s32.f64    s8, d0
    vcvt.s32.f64    s10, d0
    vcvt.s32.f64    s12, d0
    vcvt.s32.f64    s14, d0
    vcvt.s32.f64    s16, d0
    vcvt.s32.f64    s18, d0
    vcvt.s32.f64    s20, d0
    vcvt.s32.f64    s22, d0
    vcvt.s32.f64    s24, d0

    // loop 2
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d0
    vcvt.s32.f64    s6, d0
    vcvt.s32.f64    s8, d0
    vcvt.s32.f64    s10, d0
    vcvt.s32.f64    s12, d0
    vcvt.s32.f64    s14, d0
    vcvt.s32.f64    s16, d0
    vcvt.s32.f64    s18, d0
    vcvt.s32.f64    s20, d0
    vcvt.s32.f64    s22, d0
    vcvt.s32.f64    s24, d0

    // loop 3
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d0
    vcvt.s32.f64    s6, d0
    vcvt.s32.f64    s8, d0
    vcvt.s32.f64    s10, d0
    vcvt.s32.f64    s12, d0
    vcvt.s32.f64    s14, d0
    vcvt.s32.f64    s16, d0
    vcvt.s32.f64    s18, d0
    vcvt.s32.f64    s20, d0
    vcvt.s32.f64    s22, d0
    vcvt.s32.f64    s24, d0

    // loop 4
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d0
    vcvt.s32.f64    s6, d0
    vcvt.s32.f64    s8, d0
    vcvt.s32.f64    s10, d0
    vcvt.s32.f64    s12, d0
    vcvt.s32.f64    s14, d0
    vcvt.s32.f64    s16, d0
    vcvt.s32.f64    s18, d0
    vcvt.s32.f64    s20, d0
    vcvt.s32.f64    s22, d0
    vcvt.s32.f64    s24, d0

    // loop 5
    vcvt.s32.f64    s2, d0
    vcvt.s32.f64    s4, d0
    vcvt.s32.f64    s6, d0
    vcvt.s32.f64    s8, d0
    vcvt.s32.f64    s10, d0
    vcvt.s32.f64    s12, d0
    vcvt.s32.f64    s14, d0
    vcvt.s32.f64    s16, d0
    vcvt.s32.f64    s18, d0
    vcvt.s32.f64    s20, d0
    vcvt.s32.f64    s22, d0
    vcvt.s32.f64    s24, d0

    subs    r0, r0, #1
    bne     vcvtIDMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtFIMinTest:

    vpush.64        {d8-d15}

vcvtFIMinTest_LOOP:

    // loop 1
    vcvt.f32.s32    s0, s11
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s1
    vcvt.f32.s32    s3, s2
    vcvt.f32.s32    s4, s3
    vcvt.f32.s32    s5, s4
    vcvt.f32.s32    s6, s5
    vcvt.f32.s32    s7, s6
    vcvt.f32.s32    s8, s7
    vcvt.f32.s32    s9, s8
    vcvt.f32.s32    s10, s9
    vcvt.f32.s32    s11, s10
    
    // loop 2
    vcvt.f32.s32    s0, s11
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s1
    vcvt.f32.s32    s3, s2
    vcvt.f32.s32    s4, s3
    vcvt.f32.s32    s5, s4
    vcvt.f32.s32    s6, s5
    vcvt.f32.s32    s7, s6
    vcvt.f32.s32    s8, s7
    vcvt.f32.s32    s9, s8
    vcvt.f32.s32    s10, s9
    vcvt.f32.s32    s11, s10

    // loop 3
    vcvt.f32.s32    s0, s11
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s1
    vcvt.f32.s32    s3, s2
    vcvt.f32.s32    s4, s3
    vcvt.f32.s32    s5, s4
    vcvt.f32.s32    s6, s5
    vcvt.f32.s32    s7, s6
    vcvt.f32.s32    s8, s7
    vcvt.f32.s32    s9, s8
    vcvt.f32.s32    s10, s9
    vcvt.f32.s32    s11, s10

    // loop 4
    vcvt.f32.s32    s0, s11
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s1
    vcvt.f32.s32    s3, s2
    vcvt.f32.s32    s4, s3
    vcvt.f32.s32    s5, s4
    vcvt.f32.s32    s6, s5
    vcvt.f32.s32    s7, s6
    vcvt.f32.s32    s8, s7
    vcvt.f32.s32    s9, s8
    vcvt.f32.s32    s10, s9
    vcvt.f32.s32    s11, s10

    // loop 5
    vcvt.f32.s32    s0, s11
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s1
    vcvt.f32.s32    s3, s2
    vcvt.f32.s32    s4, s3
    vcvt.f32.s32    s5, s4
    vcvt.f32.s32    s6, s5
    vcvt.f32.s32    s7, s6
    vcvt.f32.s32    s8, s7
    vcvt.f32.s32    s9, s8
    vcvt.f32.s32    s10, s9
    vcvt.f32.s32    s11, s10

    subs    r0, r0, #1
    bne     vcvtFIMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtFIMaxTest:

    vpush.64        {d8-d15}

vcvtFIMaxTest_LOOP:

    // loop 1
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s0
    vcvt.f32.s32    s3, s0
    vcvt.f32.s32    s4, s0
    vcvt.f32.s32    s5, s0
    vcvt.f32.s32    s6, s0
    vcvt.f32.s32    s7, s0
    vcvt.f32.s32    s8, s0
    vcvt.f32.s32    s9, s0
    vcvt.f32.s32    s10, s0
    vcvt.f32.s32    s11, s0
    vcvt.f32.s32    s12, s0

    // loop 2
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s0
    vcvt.f32.s32    s3, s0
    vcvt.f32.s32    s4, s0
    vcvt.f32.s32    s5, s0
    vcvt.f32.s32    s6, s0
    vcvt.f32.s32    s7, s0
    vcvt.f32.s32    s8, s0
    vcvt.f32.s32    s9, s0
    vcvt.f32.s32    s10, s0
    vcvt.f32.s32    s11, s0
    vcvt.f32.s32    s12, s0

    // loop 3
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s0
    vcvt.f32.s32    s3, s0
    vcvt.f32.s32    s4, s0
    vcvt.f32.s32    s5, s0
    vcvt.f32.s32    s6, s0
    vcvt.f32.s32    s7, s0
    vcvt.f32.s32    s8, s0
    vcvt.f32.s32    s9, s0
    vcvt.f32.s32    s10, s0
    vcvt.f32.s32    s11, s0
    vcvt.f32.s32    s12, s0

    // loop 4
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s0
    vcvt.f32.s32    s3, s0
    vcvt.f32.s32    s4, s0
    vcvt.f32.s32    s5, s0
    vcvt.f32.s32    s6, s0
    vcvt.f32.s32    s7, s0
    vcvt.f32.s32    s8, s0
    vcvt.f32.s32    s9, s0
    vcvt.f32.s32    s10, s0
    vcvt.f32.s32    s11, s0
    vcvt.f32.s32    s12, s0

    // loop 5
    vcvt.f32.s32    s1, s0
    vcvt.f32.s32    s2, s0
    vcvt.f32.s32    s3, s0
    vcvt.f32.s32    s4, s0
    vcvt.f32.s32    s5, s0
    vcvt.f32.s32    s6, s0
    vcvt.f32.s32    s7, s0
    vcvt.f32.s32    s8, s0
    vcvt.f32.s32    s9, s0
    vcvt.f32.s32    s10, s0
    vcvt.f32.s32    s11, s0
    vcvt.f32.s32    s12, s0

    subs    r0, r0, #1
    bne     vcvtFIMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtDIMinTest:

    vpush.64        {d8-d15}

vcvtDIMinTest_LOOP:

    // loop 1
    vcvt.f64.s32    d0, s22
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s2
    vcvt.f64.s32    d3, s4
    vcvt.f64.s32    d4, s6
    vcvt.f64.s32    d5, s8
    vcvt.f64.s32    d6, s10
    vcvt.f64.s32    d7, s12
    vcvt.f64.s32    d8, s14
    vcvt.f64.s32    d9, s16
    vcvt.f64.s32    d10, s18
    vcvt.f64.s32    d11, s20

    // loop 2
    vcvt.f64.s32    d0, s22
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s2
    vcvt.f64.s32    d3, s4
    vcvt.f64.s32    d4, s6
    vcvt.f64.s32    d5, s8
    vcvt.f64.s32    d6, s10
    vcvt.f64.s32    d7, s12
    vcvt.f64.s32    d8, s14
    vcvt.f64.s32    d9, s16
    vcvt.f64.s32    d10, s18
    vcvt.f64.s32    d11, s20

    // loop 3
    vcvt.f64.s32    d0, s22
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s2
    vcvt.f64.s32    d3, s4
    vcvt.f64.s32    d4, s6
    vcvt.f64.s32    d5, s8
    vcvt.f64.s32    d6, s10
    vcvt.f64.s32    d7, s12
    vcvt.f64.s32    d8, s14
    vcvt.f64.s32    d9, s16
    vcvt.f64.s32    d10, s18
    vcvt.f64.s32    d11, s20

    // loop 4
    vcvt.f64.s32    d0, s22
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s2
    vcvt.f64.s32    d3, s4
    vcvt.f64.s32    d4, s6
    vcvt.f64.s32    d5, s8
    vcvt.f64.s32    d6, s10
    vcvt.f64.s32    d7, s12
    vcvt.f64.s32    d8, s14
    vcvt.f64.s32    d9, s16
    vcvt.f64.s32    d10, s18
    vcvt.f64.s32    d11, s20

    // loop 5
    vcvt.f64.s32    d0, s22
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s2
    vcvt.f64.s32    d3, s4
    vcvt.f64.s32    d4, s6
    vcvt.f64.s32    d5, s8
    vcvt.f64.s32    d6, s10
    vcvt.f64.s32    d7, s12
    vcvt.f64.s32    d8, s14
    vcvt.f64.s32    d9, s16
    vcvt.f64.s32    d10, s18
    vcvt.f64.s32    d11, s20

    subs    r0, r0, #1
    bne     vcvtDIMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtDIMaxTest:

    vpush.64        {d8-d15}

vcvtDIMaxTest_LOOP:

    // loop 1
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s0
    vcvt.f64.s32    d3, s0
    vcvt.f64.s32    d4, s0
    vcvt.f64.s32    d5, s0
    vcvt.f64.s32    d6, s0
    vcvt.f64.s32    d7, s0
    vcvt.f64.s32    d8, s0
    vcvt.f64.s32    d9, s0
    vcvt.f64.s32    d10, s0
    vcvt.f64.s32    d11, s0
    vcvt.f64.s32    d12, s0

    // loop 2
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s0
    vcvt.f64.s32    d3, s0
    vcvt.f64.s32    d4, s0
    vcvt.f64.s32    d5, s0
    vcvt.f64.s32    d6, s0
    vcvt.f64.s32    d7, s0
    vcvt.f64.s32    d8, s0
    vcvt.f64.s32    d9, s0
    vcvt.f64.s32    d10, s0
    vcvt.f64.s32    d11, s0
    vcvt.f64.s32    d12, s0

    // loop 3
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s0
    vcvt.f64.s32    d3, s0
    vcvt.f64.s32    d4, s0
    vcvt.f64.s32    d5, s0
    vcvt.f64.s32    d6, s0
    vcvt.f64.s32    d7, s0
    vcvt.f64.s32    d8, s0
    vcvt.f64.s32    d9, s0
    vcvt.f64.s32    d10, s0
    vcvt.f64.s32    d11, s0
    vcvt.f64.s32    d12, s0

    // loop 4
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s0
    vcvt.f64.s32    d3, s0
    vcvt.f64.s32    d4, s0
    vcvt.f64.s32    d5, s0
    vcvt.f64.s32    d6, s0
    vcvt.f64.s32    d7, s0
    vcvt.f64.s32    d8, s0
    vcvt.f64.s32    d9, s0
    vcvt.f64.s32    d10, s0
    vcvt.f64.s32    d11, s0
    vcvt.f64.s32    d12, s0

    // loop 5
    vcvt.f64.s32    d1, s0
    vcvt.f64.s32    d2, s0
    vcvt.f64.s32    d3, s0
    vcvt.f64.s32    d4, s0
    vcvt.f64.s32    d5, s0
    vcvt.f64.s32    d6, s0
    vcvt.f64.s32    d7, s0
    vcvt.f64.s32    d8, s0
    vcvt.f64.s32    d9, s0
    vcvt.f64.s32    d10, s0
    vcvt.f64.s32    d11, s0
    vcvt.f64.s32    d12, s0

    subs    r0, r0, #1
    bne     vcvtDIMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vcvtI4F4FixedMinTest:

    vpush.64        {d8-d15}

vcvtI4F4FixedMinTest_LOOP:

    // loop 1
    vcvt.s32.f32    q0, q11, #1
    vcvt.s32.f32    q1, q0, #2
    vcvt.s32.f32    q2, q1, #3
    vcvt.s32.f32    q3, q2, #4
    vcvt.s32.f32    q4, q3, #5
    vcvt.s32.f32    q5, q4, #6
    vcvt.s32.f32    q6, q5, #7
    vcvt.s32.f32    q7, q6, #8
    vcvt.s32.f32    q8, q7, #9
    vcvt.s32.f32    q9, q8, #10
    vcvt.s32.f32    q10, q9, #11
    vcvt.s32.f32    q11, q10, #12

    // loop 2
    vcvt.s32.f32    q0, q11, #1
    vcvt.s32.f32    q1, q0, #2
    vcvt.s32.f32    q2, q1, #3
    vcvt.s32.f32    q3, q2, #4
    vcvt.s32.f32    q4, q3, #5
    vcvt.s32.f32    q5, q4, #6
    vcvt.s32.f32    q6, q5, #7
    vcvt.s32.f32    q7, q6, #8
    vcvt.s32.f32    q8, q7, #9
    vcvt.s32.f32    q9, q8, #10
    vcvt.s32.f32    q10, q9, #11
    vcvt.s32.f32    q11, q10, #12

    // loop 3
    vcvt.s32.f32    q0, q11, #1
    vcvt.s32.f32    q1, q0, #2
    vcvt.s32.f32    q2, q1, #3
    vcvt.s32.f32    q3, q2, #4
    vcvt.s32.f32    q4, q3, #5
    vcvt.s32.f32    q5, q4, #6
    vcvt.s32.f32    q6, q5, #7
    vcvt.s32.f32    q7, q6, #8
    vcvt.s32.f32    q8, q7, #9
    vcvt.s32.f32    q9, q8, #10
    vcvt.s32.f32    q10, q9, #11
    vcvt.s32.f32    q11, q10, #12

    // loop 4
    vcvt.s32.f32    q0, q11, #1
    vcvt.s32.f32    q1, q0, #2
    vcvt.s32.f32    q2, q1, #3
    vcvt.s32.f32    q3, q2, #4
    vcvt.s32.f32    q4, q3, #5
    vcvt.s32.f32    q5, q4, #6
    vcvt.s32.f32    q6, q5, #7
    vcvt.s32.f32    q7, q6, #8
    vcvt.s32.f32    q8, q7, #9
    vcvt.s32.f32    q9, q8, #10
    vcvt.s32.f32    q10, q9, #11
    vcvt.s32.f32    q11, q10, #12

    // loopp 5
    vcvt.s32.f32    q0, q11, #1
    vcvt.s32.f32    q1, q0, #2
    vcvt.s32.f32    q2, q1, #3
    vcvt.s32.f32    q3, q2, #4
    vcvt.s32.f32    q4, q3, #5
    vcvt.s32.f32    q5, q4, #6
    vcvt.s32.f32    q6, q5, #7
    vcvt.s32.f32    q7, q6, #8
    vcvt.s32.f32    q8, q7, #9
    vcvt.s32.f32    q9, q8, #10
    vcvt.s32.f32    q10, q9, #11
    vcvt.s32.f32    q11, q10, #12

    subs    r0, r0, #1
    bne     vcvtI4F4FixedMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtI4F4FixedMaxTest:

    vpush.64        {d8-d15}

vcvtI4F4FixedMaxTest_LOOP:

    // loop 1
    vcvt.s32.f32    q1, q0, #16
    vcvt.s32.f32    q2, q0, #16
    vcvt.s32.f32    q3, q0, #16
    vcvt.s32.f32    q4, q0, #16
    vcvt.s32.f32    q5, q0, #16
    vcvt.s32.f32    q6, q0, #16
    vcvt.s32.f32    q7, q0, #16
    vcvt.s32.f32    q8, q0, #16
    vcvt.s32.f32    q9, q0, #16
    vcvt.s32.f32    q10, q0, #16
    vcvt.s32.f32    q11, q0, #16
    vcvt.s32.f32    q12, q0, #16

    // loop 2
    vcvt.s32.f32    q1, q0, #16
    vcvt.s32.f32    q2, q0, #16
    vcvt.s32.f32    q3, q0, #16
    vcvt.s32.f32    q4, q0, #16
    vcvt.s32.f32    q5, q0, #16
    vcvt.s32.f32    q6, q0, #16
    vcvt.s32.f32    q7, q0, #16
    vcvt.s32.f32    q8, q0, #16
    vcvt.s32.f32    q9, q0, #16
    vcvt.s32.f32    q10, q0, #16
    vcvt.s32.f32    q11, q0, #16
    vcvt.s32.f32    q12, q0, #16

    // loop 3
    vcvt.s32.f32    q1, q0, #16
    vcvt.s32.f32    q2, q0, #16
    vcvt.s32.f32    q3, q0, #16
    vcvt.s32.f32    q4, q0, #16
    vcvt.s32.f32    q5, q0, #16
    vcvt.s32.f32    q6, q0, #16
    vcvt.s32.f32    q7, q0, #16
    vcvt.s32.f32    q8, q0, #16
    vcvt.s32.f32    q9, q0, #16
    vcvt.s32.f32    q10, q0, #16
    vcvt.s32.f32    q11, q0, #16
    vcvt.s32.f32    q12, q0, #16

    // loop 4
    vcvt.s32.f32    q1, q0, #16
    vcvt.s32.f32    q2, q0, #16
    vcvt.s32.f32    q3, q0, #16
    vcvt.s32.f32    q4, q0, #16
    vcvt.s32.f32    q5, q0, #16
    vcvt.s32.f32    q6, q0, #16
    vcvt.s32.f32    q7, q0, #16
    vcvt.s32.f32    q8, q0, #16
    vcvt.s32.f32    q9, q0, #16
    vcvt.s32.f32    q10, q0, #16
    vcvt.s32.f32    q11, q0, #16
    vcvt.s32.f32    q12, q0, #16

    // loop 5
    vcvt.s32.f32    q1, q0, #16
    vcvt.s32.f32    q2, q0, #16
    vcvt.s32.f32    q3, q0, #16
    vcvt.s32.f32    q4, q0, #16
    vcvt.s32.f32    q5, q0, #16
    vcvt.s32.f32    q6, q0, #16
    vcvt.s32.f32    q7, q0, #16
    vcvt.s32.f32    q8, q0, #16
    vcvt.s32.f32    q9, q0, #16
    vcvt.s32.f32    q10, q0, #16
    vcvt.s32.f32    q11, q0, #16
    vcvt.s32.f32    q12, q0, #16

    subs    r0, r0, #1
    bne     vcvtI4F4FixedMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtF4I4FixedMinTest:

    vpush.64        {d8-d15}

vcvtF4I4FixedMinTest_LOOP:

    // loop 1
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 2
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 3
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 4
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 5
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    subs    r0, r0, #1
    bne     vcvtF4I4FixedMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtF4I4FixedMaxTest:

    vpush.64        {d8-d15}

vcvtF4I4FixedMaxTest_LOOP:

    // loop 1
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 2
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 3
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 4
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 5
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    subs    r0, r0, #1
    bne     vcvtF4I4FixedMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vcvtIFFixedMinTest:

    vpush.64        {d8-d15}

vcvtIFFixedMinTest_LOOP:

    // loop 1
    vcvt.s32.f32    s1, s0, #1
    vcvt.s32.f32    s2, s1, #2
    vcvt.s32.f32    s3, s2, #3
    vcvt.s32.f32    s4, s3, #4
    vcvt.s32.f32    s5, s4, #5
    vcvt.s32.f32    s6, s5, #6
    vcvt.s32.f32    s7, s6, #7
    vcvt.s32.f32    s8, s7, #8
    vcvt.s32.f32    s9, s8, #9
    vcvt.s32.f32    s10, s9, #10
    vcvt.s32.f32    s11, s10, #11
    vcvt.s32.f32    s0, s11, #12

    // loop 2
    vcvt.s32.f32    s1, s0, #1
    vcvt.s32.f32    s2, s1, #2
    vcvt.s32.f32    s3, s2, #3
    vcvt.s32.f32    s4, s3, #4
    vcvt.s32.f32    s5, s4, #5
    vcvt.s32.f32    s6, s5, #6
    vcvt.s32.f32    s7, s6, #7
    vcvt.s32.f32    s8, s7, #8
    vcvt.s32.f32    s9, s8, #9
    vcvt.s32.f32    s10, s9, #10
    vcvt.s32.f32    s11, s10, #11
    vcvt.s32.f32    s0, s11, #12

    // loop 3
    vcvt.s32.f32    s1, s0, #1
    vcvt.s32.f32    s2, s1, #2
    vcvt.s32.f32    s3, s2, #3
    vcvt.s32.f32    s4, s3, #4
    vcvt.s32.f32    s5, s4, #5
    vcvt.s32.f32    s6, s5, #6
    vcvt.s32.f32    s7, s6, #7
    vcvt.s32.f32    s8, s7, #8
    vcvt.s32.f32    s9, s8, #9
    vcvt.s32.f32    s10, s9, #10
    vcvt.s32.f32    s11, s10, #11
    vcvt.s32.f32    s0, s11, #12

    // loop 4
    vcvt.s32.f32    s1, s0, #1
    vcvt.s32.f32    s2, s1, #2
    vcvt.s32.f32    s3, s2, #3
    vcvt.s32.f32    s4, s3, #4
    vcvt.s32.f32    s5, s4, #5
    vcvt.s32.f32    s6, s5, #6
    vcvt.s32.f32    s7, s6, #7
    vcvt.s32.f32    s8, s7, #8
    vcvt.s32.f32    s9, s8, #9
    vcvt.s32.f32    s10, s9, #10
    vcvt.s32.f32    s11, s10, #11
    vcvt.s32.f32    s0, s11, #12

    // loop 5
    vcvt.s32.f32    s1, s0, #1
    vcvt.s32.f32    s2, s1, #2
    vcvt.s32.f32    s3, s2, #3
    vcvt.s32.f32    s4, s3, #4
    vcvt.s32.f32    s5, s4, #5
    vcvt.s32.f32    s6, s5, #6
    vcvt.s32.f32    s7, s6, #7
    vcvt.s32.f32    s8, s7, #8
    vcvt.s32.f32    s9, s8, #9
    vcvt.s32.f32    s10, s9, #10
    vcvt.s32.f32    s11, s10, #11
    vcvt.s32.f32    s0, s11, #12

    subs    r0, r0, #1
    bne     vcvtIFFixedMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtIFFixedMaxTest:

    vpush.64        {d8-d15}

vcvtIFFixedMaxTest_LOOP:

    // loop 1
    vcvt.s32.f32    s1, s0, #16
    vcvt.s32.f32    s2, s0, #16
    vcvt.s32.f32    s3, s0, #16
    vcvt.s32.f32    s4, s0, #16
    vcvt.s32.f32    s5, s0, #16
    vcvt.s32.f32    s6, s0, #16
    vcvt.s32.f32    s7, s0, #16
    vcvt.s32.f32    s8, s0, #16
    vcvt.s32.f32    s9, s0, #16
    vcvt.s32.f32    s10, s0, #16
    vcvt.s32.f32    s11, s0, #16
    vcvt.s32.f32    s12, s0, #16

    // loop 2
    vcvt.s32.f32    s1, s0, #16
    vcvt.s32.f32    s2, s0, #16
    vcvt.s32.f32    s3, s0, #16
    vcvt.s32.f32    s4, s0, #16
    vcvt.s32.f32    s5, s0, #16
    vcvt.s32.f32    s6, s0, #16
    vcvt.s32.f32    s7, s0, #16
    vcvt.s32.f32    s8, s0, #16
    vcvt.s32.f32    s9, s0, #16
    vcvt.s32.f32    s10, s0, #16
    vcvt.s32.f32    s11, s0, #16
    vcvt.s32.f32    s12, s0, #16

    // loop 3
    vcvt.s32.f32    s1, s0, #16
    vcvt.s32.f32    s2, s0, #16
    vcvt.s32.f32    s3, s0, #16
    vcvt.s32.f32    s4, s0, #16
    vcvt.s32.f32    s5, s0, #16
    vcvt.s32.f32    s6, s0, #16
    vcvt.s32.f32    s7, s0, #16
    vcvt.s32.f32    s8, s0, #16
    vcvt.s32.f32    s9, s0, #16
    vcvt.s32.f32    s10, s0, #16
    vcvt.s32.f32    s11, s0, #16
    vcvt.s32.f32    s12, s0, #16

    // loop 4
    vcvt.s32.f32    s1, s0, #16
    vcvt.s32.f32    s2, s0, #16
    vcvt.s32.f32    s3, s0, #16
    vcvt.s32.f32    s4, s0, #16
    vcvt.s32.f32    s5, s0, #16
    vcvt.s32.f32    s6, s0, #16
    vcvt.s32.f32    s7, s0, #16
    vcvt.s32.f32    s8, s0, #16
    vcvt.s32.f32    s9, s0, #16
    vcvt.s32.f32    s10, s0, #16
    vcvt.s32.f32    s11, s0, #16
    vcvt.s32.f32    s12, s0, #16

    // loop 5
    vcvt.s32.f32    s1, s0, #16
    vcvt.s32.f32    s2, s0, #16
    vcvt.s32.f32    s3, s0, #16
    vcvt.s32.f32    s4, s0, #16
    vcvt.s32.f32    s5, s0, #16
    vcvt.s32.f32    s6, s0, #16
    vcvt.s32.f32    s7, s0, #16
    vcvt.s32.f32    s8, s0, #16
    vcvt.s32.f32    s9, s0, #16
    vcvt.s32.f32    s10, s0, #16
    vcvt.s32.f32    s11, s0, #16
    vcvt.s32.f32    s12, s0, #16

    subs    r0, r0, #1
    bne     vcvtIFFixedMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtIDFixedMinTest:

    vpush.64        {d8-d15}

vcvtIDFixedMinTest_LOOP:

    // loop 1
    vcvt.s32.f64    d0, d11, #1
    vcvt.s32.f64    d1, d0, #2
    vcvt.s32.f64    d2, d1, #3
    vcvt.s32.f64    d3, d2, #4
    vcvt.s32.f64    d4, d3, #5
    vcvt.s32.f64    d5, d4, #6
    vcvt.s32.f64    d6, d5, #7
    vcvt.s32.f64    d7, d6, #8
    vcvt.s32.f64    d8, d7, #9
    vcvt.s32.f64    d9, d8, #10
    vcvt.s32.f64    d10, d9, #11
    vcvt.s32.f64    d11, d10, #12

    // loop 2
    vcvt.s32.f64    d0, d11, #1
    vcvt.s32.f64    d1, d0, #2
    vcvt.s32.f64    d2, d1, #3
    vcvt.s32.f64    d3, d2, #4
    vcvt.s32.f64    d4, d3, #5
    vcvt.s32.f64    d5, d4, #6
    vcvt.s32.f64    d6, d5, #7
    vcvt.s32.f64    d7, d6, #8
    vcvt.s32.f64    d8, d7, #9
    vcvt.s32.f64    d9, d8, #10
    vcvt.s32.f64    d10, d9, #11
    vcvt.s32.f64    d11, d10, #12

    // loop 3
    vcvt.s32.f64    d0, d11, #1
    vcvt.s32.f64    d1, d0, #2
    vcvt.s32.f64    d2, d1, #3
    vcvt.s32.f64    d3, d2, #4
    vcvt.s32.f64    d4, d3, #5
    vcvt.s32.f64    d5, d4, #6
    vcvt.s32.f64    d6, d5, #7
    vcvt.s32.f64    d7, d6, #8
    vcvt.s32.f64    d8, d7, #9
    vcvt.s32.f64    d9, d8, #10
    vcvt.s32.f64    d10, d9, #11
    vcvt.s32.f64    d11, d10, #12

    // loop 4
    vcvt.s32.f64    d0, d11, #1
    vcvt.s32.f64    d1, d0, #2
    vcvt.s32.f64    d2, d1, #3
    vcvt.s32.f64    d3, d2, #4
    vcvt.s32.f64    d4, d3, #5
    vcvt.s32.f64    d5, d4, #6
    vcvt.s32.f64    d6, d5, #7
    vcvt.s32.f64    d7, d6, #8
    vcvt.s32.f64    d8, d7, #9
    vcvt.s32.f64    d9, d8, #10
    vcvt.s32.f64    d10, d9, #11
    vcvt.s32.f64    d11, d10, #12

    // loop 5
    vcvt.s32.f64    d0, d11, #1
    vcvt.s32.f64    d1, d0, #2
    vcvt.s32.f64    d2, d1, #3
    vcvt.s32.f64    d3, d2, #4
    vcvt.s32.f64    d4, d3, #5
    vcvt.s32.f64    d5, d4, #6
    vcvt.s32.f64    d6, d5, #7
    vcvt.s32.f64    d7, d6, #8
    vcvt.s32.f64    d8, d7, #9
    vcvt.s32.f64    d9, d8, #10
    vcvt.s32.f64    d10, d9, #11
    vcvt.s32.f64    d11, d10, #12

    subs    r0, r0, #1
    bne     vcvtIDFixedMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtIDFixedMaxTest:

    vpush.64        {d8-d15}

vcvtIDFixedMaxTest_LOOP:

    // loop 1
    vcvt.s32.f64    d1, d0, #16
    vcvt.s32.f64    d2, d0, #16
    vcvt.s32.f64    d3, d0, #16
    vcvt.s32.f64    d4, d0, #16
    vcvt.s32.f64    d5, d0, #16
    vcvt.s32.f64    d6, d0, #16
    vcvt.s32.f64    d7, d0, #16
    vcvt.s32.f64    d8, d0, #16
    vcvt.s32.f64    d9, d0, #16
    vcvt.s32.f64    d10, d0, #16
    vcvt.s32.f64    d11, d0, #16
    vcvt.s32.f64    d12, d0, #16

    // loop 2
    vcvt.s32.f64    d1, d0, #16
    vcvt.s32.f64    d2, d0, #16
    vcvt.s32.f64    d3, d0, #16
    vcvt.s32.f64    d4, d0, #16
    vcvt.s32.f64    d5, d0, #16
    vcvt.s32.f64    d6, d0, #16
    vcvt.s32.f64    d7, d0, #16
    vcvt.s32.f64    d8, d0, #16
    vcvt.s32.f64    d9, d0, #16
    vcvt.s32.f64    d10, d0, #16
    vcvt.s32.f64    d11, d0, #16
    vcvt.s32.f64    d12, d0, #16

    // loop 3
    vcvt.s32.f64    d1, d0, #16
    vcvt.s32.f64    d2, d0, #16
    vcvt.s32.f64    d3, d0, #16
    vcvt.s32.f64    d4, d0, #16
    vcvt.s32.f64    d5, d0, #16
    vcvt.s32.f64    d6, d0, #16
    vcvt.s32.f64    d7, d0, #16
    vcvt.s32.f64    d8, d0, #16
    vcvt.s32.f64    d9, d0, #16
    vcvt.s32.f64    d10, d0, #16
    vcvt.s32.f64    d11, d0, #16
    vcvt.s32.f64    d12, d0, #16

    // loop 4
    vcvt.s32.f64    d1, d0, #16
    vcvt.s32.f64    d2, d0, #16
    vcvt.s32.f64    d3, d0, #16
    vcvt.s32.f64    d4, d0, #16
    vcvt.s32.f64    d5, d0, #16
    vcvt.s32.f64    d6, d0, #16
    vcvt.s32.f64    d7, d0, #16
    vcvt.s32.f64    d8, d0, #16
    vcvt.s32.f64    d9, d0, #16
    vcvt.s32.f64    d10, d0, #16
    vcvt.s32.f64    d11, d0, #16
    vcvt.s32.f64    d12, d0, #16

    // loop 5
    vcvt.s32.f64    d1, d0, #16
    vcvt.s32.f64    d2, d0, #16
    vcvt.s32.f64    d3, d0, #16
    vcvt.s32.f64    d4, d0, #16
    vcvt.s32.f64    d5, d0, #16
    vcvt.s32.f64    d6, d0, #16
    vcvt.s32.f64    d7, d0, #16
    vcvt.s32.f64    d8, d0, #16
    vcvt.s32.f64    d9, d0, #16
    vcvt.s32.f64    d10, d0, #16
    vcvt.s32.f64    d11, d0, #16
    vcvt.s32.f64    d12, d0, #16

    subs    r0, r0, #1
    bne     vcvtIDFixedMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtFIFixedMinTest:

    vpush.64        {d8-d15}

vcvtFIFixedMinTest_LOOP:

    // loop 1
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 2
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 3
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 4
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    // loop 5
    vcvt.f32.s32    q0, q11, #1
    vcvt.f32.s32    q1, q0, #2
    vcvt.f32.s32    q2, q1, #3
    vcvt.f32.s32    q3, q2, #4
    vcvt.f32.s32    q4, q3, #5
    vcvt.f32.s32    q5, q4, #6
    vcvt.f32.s32    q6, q5, #7
    vcvt.f32.s32    q7, q6, #8
    vcvt.f32.s32    q8, q7, #9
    vcvt.f32.s32    q9, q8, #10
    vcvt.f32.s32    q10, q9, #11
    vcvt.f32.s32    q11, q10, #12

    subs    r0, r0, #1
    bne     vcvtFIFixedMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtFIFixedMaxTest:

    vpush.64        {d8-d15}

vcvtFIFixedMaxTest_LOOP:

    // loop 1
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 2
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 3
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 4
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    // loop 5
    vcvt.f32.s32    q1, q0, #16
    vcvt.f32.s32    q2, q0, #16
    vcvt.f32.s32    q3, q0, #16
    vcvt.f32.s32    q4, q0, #16
    vcvt.f32.s32    q5, q0, #16
    vcvt.f32.s32    q6, q0, #16
    vcvt.f32.s32    q7, q0, #16
    vcvt.f32.s32    q8, q0, #16
    vcvt.f32.s32    q9, q0, #16
    vcvt.f32.s32    q10, q0, #16
    vcvt.f32.s32    q11, q0, #16
    vcvt.f32.s32    q12, q0, #16

    subs    r0, r0, #1
    bne     vcvtFIFixedMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtDIFixedMinTest:

    vpush.64        {d8-d15}

vcvtDIFixedMinTest_LOOP:

    // loop 1
    vcvt.f64.s32    d0, d11, #1
    vcvt.f64.s32    d1, d0, #2
    vcvt.f64.s32    d2, d1, #3
    vcvt.f64.s32    d3, d2, #4
    vcvt.f64.s32    d4, d3, #5
    vcvt.f64.s32    d5, d4, #6
    vcvt.f64.s32    d6, d5, #7
    vcvt.f64.s32    d7, d6, #8
    vcvt.f64.s32    d8, d7, #9
    vcvt.f64.s32    d9, d8, #10
    vcvt.f64.s32    d10, d9, #11
    vcvt.f64.s32    d11, d10, #12

    // loop 2
    vcvt.f64.s32    d0, d11, #1
    vcvt.f64.s32    d1, d0, #2
    vcvt.f64.s32    d2, d1, #3
    vcvt.f64.s32    d3, d2, #4
    vcvt.f64.s32    d4, d3, #5
    vcvt.f64.s32    d5, d4, #6
    vcvt.f64.s32    d6, d5, #7
    vcvt.f64.s32    d7, d6, #8
    vcvt.f64.s32    d8, d7, #9
    vcvt.f64.s32    d9, d8, #10
    vcvt.f64.s32    d10, d9, #11
    vcvt.f64.s32    d11, d10, #12

    // loop 3
    vcvt.f64.s32    d0, d11, #1
    vcvt.f64.s32    d1, d0, #2
    vcvt.f64.s32    d2, d1, #3
    vcvt.f64.s32    d3, d2, #4
    vcvt.f64.s32    d4, d3, #5
    vcvt.f64.s32    d5, d4, #6
    vcvt.f64.s32    d6, d5, #7
    vcvt.f64.s32    d7, d6, #8
    vcvt.f64.s32    d8, d7, #9
    vcvt.f64.s32    d9, d8, #10
    vcvt.f64.s32    d10, d9, #11
    vcvt.f64.s32    d11, d10, #12

    // loop 4
    vcvt.f64.s32    d0, d11, #1
    vcvt.f64.s32    d1, d0, #2
    vcvt.f64.s32    d2, d1, #3
    vcvt.f64.s32    d3, d2, #4
    vcvt.f64.s32    d4, d3, #5
    vcvt.f64.s32    d5, d4, #6
    vcvt.f64.s32    d6, d5, #7
    vcvt.f64.s32    d7, d6, #8
    vcvt.f64.s32    d8, d7, #9
    vcvt.f64.s32    d9, d8, #10
    vcvt.f64.s32    d10, d9, #11
    vcvt.f64.s32    d11, d10, #12

    // loop 5
    vcvt.f64.s32    d0, d11, #1
    vcvt.f64.s32    d1, d0, #2
    vcvt.f64.s32    d2, d1, #3
    vcvt.f64.s32    d3, d2, #4
    vcvt.f64.s32    d4, d3, #5
    vcvt.f64.s32    d5, d4, #6
    vcvt.f64.s32    d6, d5, #7
    vcvt.f64.s32    d7, d6, #8
    vcvt.f64.s32    d8, d7, #9
    vcvt.f64.s32    d9, d8, #10
    vcvt.f64.s32    d10, d9, #11
    vcvt.f64.s32    d11, d10, #12

    subs    r0, r0, #1
    bne     vcvtDIFixedMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtDIFixedMaxTest:

    vpush.64        {d8-d15}

vcvtDIFixedMaxTest_LOOP:

    // loop 1
    vcvt.f64.s32    d1, d0, #16
    vcvt.f64.s32    d2, d0, #16
    vcvt.f64.s32    d3, d0, #16
    vcvt.f64.s32    d4, d0, #16
    vcvt.f64.s32    d5, d0, #16
    vcvt.f64.s32    d6, d0, #16
    vcvt.f64.s32    d7, d0, #16
    vcvt.f64.s32    d8, d0, #16
    vcvt.f64.s32    d9, d0, #16
    vcvt.f64.s32    d10, d0, #16
    vcvt.f64.s32    d11, d0, #16
    vcvt.f64.s32    d12, d0, #16

    // loop 2
    vcvt.f64.s32    d1, d0, #16
    vcvt.f64.s32    d2, d0, #16
    vcvt.f64.s32    d3, d0, #16
    vcvt.f64.s32    d4, d0, #16
    vcvt.f64.s32    d5, d0, #16
    vcvt.f64.s32    d6, d0, #16
    vcvt.f64.s32    d7, d0, #16
    vcvt.f64.s32    d8, d0, #16
    vcvt.f64.s32    d9, d0, #16
    vcvt.f64.s32    d10, d0, #16
    vcvt.f64.s32    d11, d0, #16
    vcvt.f64.s32    d12, d0, #16

    // loop 3
    vcvt.f64.s32    d1, d0, #16
    vcvt.f64.s32    d2, d0, #16
    vcvt.f64.s32    d3, d0, #16
    vcvt.f64.s32    d4, d0, #16
    vcvt.f64.s32    d5, d0, #16
    vcvt.f64.s32    d6, d0, #16
    vcvt.f64.s32    d7, d0, #16
    vcvt.f64.s32    d8, d0, #16
    vcvt.f64.s32    d9, d0, #16
    vcvt.f64.s32    d10, d0, #16
    vcvt.f64.s32    d11, d0, #16
    vcvt.f64.s32    d12, d0, #16

    // loop 4
    vcvt.f64.s32    d1, d0, #16
    vcvt.f64.s32    d2, d0, #16
    vcvt.f64.s32    d3, d0, #16
    vcvt.f64.s32    d4, d0, #16
    vcvt.f64.s32    d5, d0, #16
    vcvt.f64.s32    d6, d0, #16
    vcvt.f64.s32    d7, d0, #16
    vcvt.f64.s32    d8, d0, #16
    vcvt.f64.s32    d9, d0, #16
    vcvt.f64.s32    d10, d0, #16
    vcvt.f64.s32    d11, d0, #16
    vcvt.f64.s32    d12, d0, #16

    // loop 5
    vcvt.f64.s32    d1, d0, #16
    vcvt.f64.s32    d2, d0, #16
    vcvt.f64.s32    d3, d0, #16
    vcvt.f64.s32    d4, d0, #16
    vcvt.f64.s32    d5, d0, #16
    vcvt.f64.s32    d6, d0, #16
    vcvt.f64.s32    d7, d0, #16
    vcvt.f64.s32    d8, d0, #16
    vcvt.f64.s32    d9, d0, #16
    vcvt.f64.s32    d10, d0, #16
    vcvt.f64.s32    d11, d0, #16
    vcvt.f64.s32    d12, d0, #16

    subs    r0, r0, #1
    bne     vcvtDIFixedMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vcvtFDMinTest:

    vpush.64        {d8-d15}

vcvtFDMinTest_LOOP:

    // loop 1
    vcvt.f32.f64    s0, d11
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d1
    vcvt.f32.f64    s6, d2
    vcvt.f32.f64    s8, d3
    vcvt.f32.f64    s10, d4
    vcvt.f32.f64    s12, d5
    vcvt.f32.f64    s14, d6
    vcvt.f32.f64    s16, d7
    vcvt.f32.f64    s18, d8
    vcvt.f32.f64    s20, d9
    vcvt.f32.f64    s22, d10

    // loop 2
    vcvt.f32.f64    s0, d11
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d1
    vcvt.f32.f64    s6, d2
    vcvt.f32.f64    s8, d3
    vcvt.f32.f64    s10, d4
    vcvt.f32.f64    s12, d5
    vcvt.f32.f64    s14, d6
    vcvt.f32.f64    s16, d7
    vcvt.f32.f64    s18, d8
    vcvt.f32.f64    s20, d9
    vcvt.f32.f64    s22, d10

    // loop 3
    vcvt.f32.f64    s0, d11
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d1
    vcvt.f32.f64    s6, d2
    vcvt.f32.f64    s8, d3
    vcvt.f32.f64    s10, d4
    vcvt.f32.f64    s12, d5
    vcvt.f32.f64    s14, d6
    vcvt.f32.f64    s16, d7
    vcvt.f32.f64    s18, d8
    vcvt.f32.f64    s20, d9
    vcvt.f32.f64    s22, d10

    // loop 4
    vcvt.f32.f64    s0, d11
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d1
    vcvt.f32.f64    s6, d2
    vcvt.f32.f64    s8, d3
    vcvt.f32.f64    s10, d4
    vcvt.f32.f64    s12, d5
    vcvt.f32.f64    s14, d6
    vcvt.f32.f64    s16, d7
    vcvt.f32.f64    s18, d8
    vcvt.f32.f64    s20, d9
    vcvt.f32.f64    s22, d10

    // loop 5
    vcvt.f32.f64    s0, d11
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d1
    vcvt.f32.f64    s6, d2
    vcvt.f32.f64    s8, d3
    vcvt.f32.f64    s10, d4
    vcvt.f32.f64    s12, d5
    vcvt.f32.f64    s14, d6
    vcvt.f32.f64    s16, d7
    vcvt.f32.f64    s18, d8
    vcvt.f32.f64    s20, d9
    vcvt.f32.f64    s22, d10

    subs    r0, r0, #1
    bne     vcvtFDMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtFDMaxTest:

    vpush.64        {d8-d15}

vcvtFDMaxTest_LOOP:

    // loop 1
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d0
    vcvt.f32.f64    s6, d0
    vcvt.f32.f64    s8, d0
    vcvt.f32.f64    s10, d0
    vcvt.f32.f64    s12, d0
    vcvt.f32.f64    s14, d0
    vcvt.f32.f64    s16, d0
    vcvt.f32.f64    s18, d0
    vcvt.f32.f64    s20, d0
    vcvt.f32.f64    s22, d0
    vcvt.f32.f64    s24, d0

    // loop 2
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d0
    vcvt.f32.f64    s6, d0
    vcvt.f32.f64    s8, d0
    vcvt.f32.f64    s10, d0
    vcvt.f32.f64    s12, d0
    vcvt.f32.f64    s14, d0
    vcvt.f32.f64    s16, d0
    vcvt.f32.f64    s18, d0
    vcvt.f32.f64    s20, d0
    vcvt.f32.f64    s22, d0
    vcvt.f32.f64    s24, d0

    // loop 3
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d0
    vcvt.f32.f64    s6, d0
    vcvt.f32.f64    s8, d0
    vcvt.f32.f64    s10, d0
    vcvt.f32.f64    s12, d0
    vcvt.f32.f64    s14, d0
    vcvt.f32.f64    s16, d0
    vcvt.f32.f64    s18, d0
    vcvt.f32.f64    s20, d0
    vcvt.f32.f64    s22, d0
    vcvt.f32.f64    s24, d0

    // loop 4
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d0
    vcvt.f32.f64    s6, d0
    vcvt.f32.f64    s8, d0
    vcvt.f32.f64    s10, d0
    vcvt.f32.f64    s12, d0
    vcvt.f32.f64    s14, d0
    vcvt.f32.f64    s16, d0
    vcvt.f32.f64    s18, d0
    vcvt.f32.f64    s20, d0
    vcvt.f32.f64    s22, d0
    vcvt.f32.f64    s24, d0

    // loop 5
    vcvt.f32.f64    s2, d0
    vcvt.f32.f64    s4, d0
    vcvt.f32.f64    s6, d0
    vcvt.f32.f64    s8, d0
    vcvt.f32.f64    s10, d0
    vcvt.f32.f64    s12, d0
    vcvt.f32.f64    s14, d0
    vcvt.f32.f64    s16, d0
    vcvt.f32.f64    s18, d0
    vcvt.f32.f64    s20, d0
    vcvt.f32.f64    s22, d0
    vcvt.f32.f64    s24, d0

    subs    r0, r0, #1
    bne     vcvtFDMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtDFMinTest:

    vpush.64        {d8-d15}

vcvtDFMinTest_LOOP:

    // loop 1
    vcvt.f64.f32    d0, s22
    vcvt.f64.f32    d1, s0
    vcvt.f64.f32    d2, s2
    vcvt.f64.f32    d3, s4
    vcvt.f64.f32    d4, s6
    vcvt.f64.f32    d5, s8
    vcvt.f64.f32    d6, s10
    vcvt.f64.f32    d7, s12
    vcvt.f64.f32    d8, s14
    vcvt.f64.f32    d9, s16
    vcvt.f64.f32    d10, s18
    vcvt.f64.f32    d11, s20

    // loop 2
    vcvt.f64.f32    d0, s22
    vcvt.f64.f32    d1, s0
    vcvt.f64.f32    d2, s2
    vcvt.f64.f32    d3, s4
    vcvt.f64.f32    d4, s6
    vcvt.f64.f32    d5, s8
    vcvt.f64.f32    d6, s10
    vcvt.f64.f32    d7, s12
    vcvt.f64.f32    d8, s14
    vcvt.f64.f32    d9, s16
    vcvt.f64.f32    d10, s18
    vcvt.f64.f32    d11, s20

    // loop 3
    vcvt.f64.f32    d0, s22
    vcvt.f64.f32    d1, s0
    vcvt.f64.f32    d2, s2
    vcvt.f64.f32    d3, s4
    vcvt.f64.f32    d4, s6
    vcvt.f64.f32    d5, s8
    vcvt.f64.f32    d6, s10
    vcvt.f64.f32    d7, s12
    vcvt.f64.f32    d8, s14
    vcvt.f64.f32    d9, s16
    vcvt.f64.f32    d10, s18
    vcvt.f64.f32    d11, s20

    // loop 4
    vcvt.f64.f32    d0, s22
    vcvt.f64.f32    d1, s0
    vcvt.f64.f32    d2, s2
    vcvt.f64.f32    d3, s4
    vcvt.f64.f32    d4, s6
    vcvt.f64.f32    d5, s8
    vcvt.f64.f32    d6, s10
    vcvt.f64.f32    d7, s12
    vcvt.f64.f32    d8, s14
    vcvt.f64.f32    d9, s16
    vcvt.f64.f32    d10, s18
    vcvt.f64.f32    d11, s20

    // loop 5
    vcvt.f64.f32    d0, s22
    vcvt.f64.f32    d1, s0
    vcvt.f64.f32    d2, s2
    vcvt.f64.f32    d3, s4
    vcvt.f64.f32    d4, s6
    vcvt.f64.f32    d5, s8
    vcvt.f64.f32    d6, s10
    vcvt.f64.f32    d7, s12
    vcvt.f64.f32    d8, s14
    vcvt.f64.f32    d9, s16
    vcvt.f64.f32    d10, s18
    vcvt.f64.f32    d11, s20

    subs    r0, r0, #1
    bne     vcvtDFMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vcvtDFMaxTest:

    vpush.64        {d8-d15}

vcvtDFMaxTest_LOOP:

    // loop 1
    vcvt.f64.f32    d2, s0
    vcvt.f64.f32    d3, s0
    vcvt.f64.f32    d4, s0
    vcvt.f64.f32    d5, s0
    vcvt.f64.f32    d6, s0
    vcvt.f64.f32    d7, s0
    vcvt.f64.f32    d8, s0
    vcvt.f64.f32    d9, s0
    vcvt.f64.f32    d10, s0
    vcvt.f64.f32    d11, s0
    vcvt.f64.f32    d12, s0
    vcvt.f64.f32    d13, s0

    // loop 2
    vcvt.f64.f32    d2, s0
    vcvt.f64.f32    d3, s0
    vcvt.f64.f32    d4, s0
    vcvt.f64.f32    d5, s0
    vcvt.f64.f32    d6, s0
    vcvt.f64.f32    d7, s0
    vcvt.f64.f32    d8, s0
    vcvt.f64.f32    d9, s0
    vcvt.f64.f32    d10, s0
    vcvt.f64.f32    d11, s0
    vcvt.f64.f32    d12, s0
    vcvt.f64.f32    d13, s0

    // loop 3
    vcvt.f64.f32    d2, s0
    vcvt.f64.f32    d3, s0
    vcvt.f64.f32    d4, s0
    vcvt.f64.f32    d5, s0
    vcvt.f64.f32    d6, s0
    vcvt.f64.f32    d7, s0
    vcvt.f64.f32    d8, s0
    vcvt.f64.f32    d9, s0
    vcvt.f64.f32    d10, s0
    vcvt.f64.f32    d11, s0
    vcvt.f64.f32    d12, s0
    vcvt.f64.f32    d13, s0

    // loop 4
    vcvt.f64.f32    d2, s0
    vcvt.f64.f32    d3, s0
    vcvt.f64.f32    d4, s0
    vcvt.f64.f32    d5, s0
    vcvt.f64.f32    d6, s0
    vcvt.f64.f32    d7, s0
    vcvt.f64.f32    d8, s0
    vcvt.f64.f32    d9, s0
    vcvt.f64.f32    d10, s0
    vcvt.f64.f32    d11, s0
    vcvt.f64.f32    d12, s0
    vcvt.f64.f32    d13, s0

    // loop 5
    vcvt.f64.f32    d2, s0
    vcvt.f64.f32    d3, s0
    vcvt.f64.f32    d4, s0
    vcvt.f64.f32    d5, s0
    vcvt.f64.f32    d6, s0
    vcvt.f64.f32    d7, s0
    vcvt.f64.f32    d8, s0
    vcvt.f64.f32    d9, s0
    vcvt.f64.f32    d10, s0
    vcvt.f64.f32    d11, s0
    vcvt.f64.f32    d12, s0
    vcvt.f64.f32    d13, s0

    subs    r0, r0, #1
    bne     vcvtDFMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vdivFMinTest:

    vpush.64    {d8-d15}

    vmov.f32    s0, #1.0
    vmov.f32    s1, #2.0
    vmov.f32    s2, #3.0
    vmov.f32    s3, #4.0
    vmov.f32    s4, #5.0
    vmov.f32    s5, #6.0
    vmov.f32    s6, #7.0
    vmov.f32    s7, #8.0
    vmov.f32    s8, #9.0
    vmov.f32    s9, #10.0
    vmov.f32    s10, #11.0
    vmov.f32    s11, #12.0


vdivFMinTest_LOOP:

    // loop 1
    vdiv.f32    s0, s0, s11
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s1
    vdiv.f32    s3, s3, s2
    vdiv.f32    s4, s4, s3
    vdiv.f32    s5, s5, s4
    vdiv.f32    s6, s6, s5
    vdiv.f32    s7, s7, s6
    vdiv.f32    s8, s8, s7
    vdiv.f32    s9, s9, s8
    vdiv.f32    s10, s10, s9
    vdiv.f32    s11, s11, s10

    // loop 2
    vdiv.f32    s0, s0, s11
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s1
    vdiv.f32    s3, s3, s2
    vdiv.f32    s4, s4, s3
    vdiv.f32    s5, s5, s4
    vdiv.f32    s6, s6, s5
    vdiv.f32    s7, s7, s6
    vdiv.f32    s8, s8, s7
    vdiv.f32    s9, s9, s8
    vdiv.f32    s10, s10, s9
    vdiv.f32    s11, s11, s10
    
    // loop 3
    vdiv.f32    s0, s0, s11
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s1
    vdiv.f32    s3, s3, s2
    vdiv.f32    s4, s4, s3
    vdiv.f32    s5, s5, s4
    vdiv.f32    s6, s6, s5
    vdiv.f32    s7, s7, s6
    vdiv.f32    s8, s8, s7
    vdiv.f32    s9, s9, s8
    vdiv.f32    s10, s10, s9
    vdiv.f32    s11, s11, s10

    // loop 4
    vdiv.f32    s0, s0, s11
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s1
    vdiv.f32    s3, s3, s2
    vdiv.f32    s4, s4, s3
    vdiv.f32    s5, s5, s4
    vdiv.f32    s6, s6, s5
    vdiv.f32    s7, s7, s6
    vdiv.f32    s8, s8, s7
    vdiv.f32    s9, s9, s8
    vdiv.f32    s10, s10, s9
    vdiv.f32    s11, s11, s10

    // loop 5
    vdiv.f32    s0, s0, s11
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s1
    vdiv.f32    s3, s3, s2
    vdiv.f32    s4, s4, s3
    vdiv.f32    s5, s5, s4
    vdiv.f32    s6, s6, s5
    vdiv.f32    s7, s7, s6
    vdiv.f32    s8, s8, s7
    vdiv.f32    s9, s9, s8
    vdiv.f32    s10, s10, s9
    vdiv.f32    s11, s11, s10

    subs    r0, r0, #1
    bne     vdivFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vdivFMaxTest:

    vpush.64    {d8-d15}

    vmov.f32    s0, #1.0
    vmov.f32    s1, #2.0
    vmov.f32    s2, #3.0
    vmov.f32    s3, #4.0
    vmov.f32    s4, #5.0
    vmov.f32    s5, #6.0
    vmov.f32    s6, #7.0
    vmov.f32    s7, #8.0
    vmov.f32    s8, #9.0
    vmov.f32    s9, #10.0
    vmov.f32    s10, #11.0
    vmov.f32    s11, #12.0
    vmov.f32    s12, #13.0

vdivFMaxTest_LOOP:

    // loop 1
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s0
    vdiv.f32    s3, s3, s0
    vdiv.f32    s4, s4, s0
    vdiv.f32    s5, s5, s0
    vdiv.f32    s6, s6, s0
    vdiv.f32    s7, s7, s0
    vdiv.f32    s8, s8, s0
    vdiv.f32    s9, s9, s0
    vdiv.f32    s10, s10, s0
    vdiv.f32    s11, s11, s0
    vdiv.f32    s12, s12, s0

    // loop 2
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s0
    vdiv.f32    s3, s3, s0
    vdiv.f32    s4, s4, s0
    vdiv.f32    s5, s5, s0
    vdiv.f32    s6, s6, s0
    vdiv.f32    s7, s7, s0
    vdiv.f32    s8, s8, s0
    vdiv.f32    s9, s9, s0
    vdiv.f32    s10, s10, s0
    vdiv.f32    s11, s11, s0
    vdiv.f32    s12, s12, s0

    // loop 3
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s0
    vdiv.f32    s3, s3, s0
    vdiv.f32    s4, s4, s0
    vdiv.f32    s5, s5, s0
    vdiv.f32    s6, s6, s0
    vdiv.f32    s7, s7, s0
    vdiv.f32    s8, s8, s0
    vdiv.f32    s9, s9, s0
    vdiv.f32    s10, s10, s0
    vdiv.f32    s11, s11, s0
    vdiv.f32    s12, s12, s0
    
    // loop 4
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s0
    vdiv.f32    s3, s3, s0
    vdiv.f32    s4, s4, s0
    vdiv.f32    s5, s5, s0
    vdiv.f32    s6, s6, s0
    vdiv.f32    s7, s7, s0
    vdiv.f32    s8, s8, s0
    vdiv.f32    s9, s9, s0
    vdiv.f32    s10, s10, s0
    vdiv.f32    s11, s11, s0
    vdiv.f32    s12, s12, s0

    // loop 5
    vdiv.f32    s1, s1, s0
    vdiv.f32    s2, s2, s0
    vdiv.f32    s3, s3, s0
    vdiv.f32    s4, s4, s0
    vdiv.f32    s5, s5, s0
    vdiv.f32    s6, s6, s0
    vdiv.f32    s7, s7, s0
    vdiv.f32    s8, s8, s0
    vdiv.f32    s9, s9, s0
    vdiv.f32    s10, s10, s0
    vdiv.f32    s11, s11, s0
    vdiv.f32    s12, s12, s0

    subs    r0, r0, #1
    bne     vdivFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vdivDMinTest:

    vpush.64    {d8-d15}

    vmov.f64    d0, #1.0
    vmov.f64    d1, #2.0
    vmov.f64    d2, #3.0
    vmov.f64    d3, #4.0
    vmov.f64    d4, #5.0
    vmov.f64    d5, #6.0
    vmov.f64    d6, #7.0
    vmov.f64    d7, #8.0
    vmov.f64    d8, #9.0
    vmov.f64    d9, #10.0
    vmov.f64    d10, #11.0
    vmov.f64    d11, #12.0

vdivDMinTest_LOOP:

    // loop 1
    vdiv.f64    d0, d0, d11
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d1
    vdiv.f64    d3, d3, d2
    vdiv.f64    d4, d4, d3
    vdiv.f64    d5, d5, d4
    vdiv.f64    d6, d6, d5
    vdiv.f64    d7, d7, d6
    vdiv.f64    d8, d8, d7
    vdiv.f64    d9, d9, d8
    vdiv.f64    d10, d10, d9
    vdiv.f64    d11, d11, d10

    // loop 2
    vdiv.f64    d0, d0, d11
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d1
    vdiv.f64    d3, d3, d2
    vdiv.f64    d4, d4, d3
    vdiv.f64    d5, d5, d4
    vdiv.f64    d6, d6, d5
    vdiv.f64    d7, d7, d6
    vdiv.f64    d8, d8, d7
    vdiv.f64    d9, d9, d8
    vdiv.f64    d10, d10, d9
    vdiv.f64    d11, d11, d10
    
    // loop 3
    vdiv.f64    d0, d0, d11
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d1
    vdiv.f64    d3, d3, d2
    vdiv.f64    d4, d4, d3
    vdiv.f64    d5, d5, d4
    vdiv.f64    d6, d6, d5
    vdiv.f64    d7, d7, d6
    vdiv.f64    d8, d8, d7
    vdiv.f64    d9, d9, d8
    vdiv.f64    d10, d10, d9
    vdiv.f64    d11, d11, d10
    
    // loop 4
    vdiv.f64    d0, d0, d11
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d1
    vdiv.f64    d3, d3, d2
    vdiv.f64    d4, d4, d3
    vdiv.f64    d5, d5, d4
    vdiv.f64    d6, d6, d5
    vdiv.f64    d7, d7, d6
    vdiv.f64    d8, d8, d7
    vdiv.f64    d9, d9, d8
    vdiv.f64    d10, d10, d9
    vdiv.f64    d11, d11, d10

    // loop 5
    vdiv.f64    d0, d0, d11
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d1
    vdiv.f64    d3, d3, d2
    vdiv.f64    d4, d4, d3
    vdiv.f64    d5, d5, d4
    vdiv.f64    d6, d6, d5
    vdiv.f64    d7, d7, d6
    vdiv.f64    d8, d8, d7
    vdiv.f64    d9, d9, d8
    vdiv.f64    d10, d10, d9
    vdiv.f64    d11, d11, d10

    subs    r0, r0, #1
    bne     vdivDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vdivDMaxTest:

    vpush.64    {d8-d15}

    vmov.f64    d0, #1.0
    vmov.f64    d1, #2.0
    vmov.f64    d2, #3.0
    vmov.f64    d3, #4.0
    vmov.f64    d4, #5.0
    vmov.f64    d5, #6.0
    vmov.f64    d6, #7.0
    vmov.f64    d7, #8.0
    vmov.f64    d8, #9.0
    vmov.f64    d9, #10.0
    vmov.f64    d10, #11.0
    vmov.f64    d11, #12.0
    vmov.f64    d12, #13.0

vdivDMaxTest_LOOP:

    // loop 1
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d0
    vdiv.f64    d3, d3, d0
    vdiv.f64    d4, d4, d0
    vdiv.f64    d5, d5, d0
    vdiv.f64    d6, d6, d0
    vdiv.f64    d7, d7, d0
    vdiv.f64    d8, d8, d0
    vdiv.f64    d9, d9, d0
    vdiv.f64    d10, d10, d0
    vdiv.f64    d11, d11, d0
    vdiv.f64    d12, d12, d0

    // loop 2
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d0
    vdiv.f64    d3, d3, d0
    vdiv.f64    d4, d4, d0
    vdiv.f64    d5, d5, d0
    vdiv.f64    d6, d6, d0
    vdiv.f64    d7, d7, d0
    vdiv.f64    d8, d8, d0
    vdiv.f64    d9, d9, d0
    vdiv.f64    d10, d10, d0
    vdiv.f64    d11, d11, d0
    vdiv.f64    d12, d12, d0

    // loop 3
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d0
    vdiv.f64    d3, d3, d0
    vdiv.f64    d4, d4, d0
    vdiv.f64    d5, d5, d0
    vdiv.f64    d6, d6, d0
    vdiv.f64    d7, d7, d0
    vdiv.f64    d8, d8, d0
    vdiv.f64    d9, d9, d0
    vdiv.f64    d10, d10, d0
    vdiv.f64    d11, d11, d0
    vdiv.f64    d12, d12, d0

    // loop 4
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d0
    vdiv.f64    d3, d3, d0
    vdiv.f64    d4, d4, d0
    vdiv.f64    d5, d5, d0
    vdiv.f64    d6, d6, d0
    vdiv.f64    d7, d7, d0
    vdiv.f64    d8, d8, d0
    vdiv.f64    d9, d9, d0
    vdiv.f64    d10, d10, d0
    vdiv.f64    d11, d11, d0
    vdiv.f64    d12, d12, d0

    // loop 5
    vdiv.f64    d1, d1, d0
    vdiv.f64    d2, d2, d0
    vdiv.f64    d3, d3, d0
    vdiv.f64    d4, d4, d0
    vdiv.f64    d5, d5, d0
    vdiv.f64    d6, d6, d0
    vdiv.f64    d7, d7, d0
    vdiv.f64    d8, d8, d0
    vdiv.f64    d9, d9, d0
    vdiv.f64    d10, d10, d0
    vdiv.f64    d11, d11, d0
    vdiv.f64    d12, d12, d0

    subs    r0, r0, #1
    bne     vdivDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vdupScalarMinTest:

    vpush.64    {d8-d15}

vdupScalarMinTest_LOOP:

    // loop 1
    vdup.32     q0, d22[1]
    vdup.32     q1, d0[1]
    vdup.32     q2, d2[1]
    vdup.32     q3, d4[1]
    vdup.32     q4, d6[1]
    vdup.32     q5, d8[1]
    vdup.32     q6, d10[1]
    vdup.32     q7, d12[1]
    vdup.32     q8, d14[1]
    vdup.32     q9, d16[1]
    vdup.32     q10, d18[1]
    vdup.32     q11, d20[1]

    // loop 2
    vdup.32     q0, d22[1]
    vdup.32     q1, d0[1]
    vdup.32     q2, d2[1]
    vdup.32     q3, d4[1]
    vdup.32     q4, d6[1]
    vdup.32     q5, d8[1]
    vdup.32     q6, d10[1]
    vdup.32     q7, d12[1]
    vdup.32     q8, d14[1]
    vdup.32     q9, d16[1]
    vdup.32     q10, d18[1]
    vdup.32     q11, d20[1]

    // loop 3
    vdup.32     q0, d22[1]
    vdup.32     q1, d0[1]
    vdup.32     q2, d2[1]
    vdup.32     q3, d4[1]
    vdup.32     q4, d6[1]
    vdup.32     q5, d8[1]
    vdup.32     q6, d10[1]
    vdup.32     q7, d12[1]
    vdup.32     q8, d14[1]
    vdup.32     q9, d16[1]
    vdup.32     q10, d18[1]
    vdup.32     q11, d20[1]

    // loop 4
    vdup.32     q0, d22[1]
    vdup.32     q1, d0[1]
    vdup.32     q2, d2[1]
    vdup.32     q3, d4[1]
    vdup.32     q4, d6[1]
    vdup.32     q5, d8[1]
    vdup.32     q6, d10[1]
    vdup.32     q7, d12[1]
    vdup.32     q8, d14[1]
    vdup.32     q9, d16[1]
    vdup.32     q10, d18[1]
    vdup.32     q11, d20[1]

    // loop 5
    vdup.32     q0, d22[1]
    vdup.32     q1, d0[1]
    vdup.32     q2, d2[1]
    vdup.32     q3, d4[1]
    vdup.32     q4, d6[1]
    vdup.32     q5, d8[1]
    vdup.32     q6, d10[1]
    vdup.32     q7, d12[1]
    vdup.32     q8, d14[1]
    vdup.32     q9, d16[1]
    vdup.32     q10, d18[1]
    vdup.32     q11, d20[1]

    subs    r0, r0, #1
    bne     vdupScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vdupScalarMaxTest:

    vpush.64    {d8-d15}

vdupScalarMaxTest_LOOP:

    // loop 1
    vdup.32     q1, d0[1]
    vdup.32     q2, d0[1]
    vdup.32     q3, d0[1]
    vdup.32     q4, d0[1]
    vdup.32     q5, d0[1]
    vdup.32     q6, d0[1]
    vdup.32     q7, d0[1]
    vdup.32     q8, d0[1]
    vdup.32     q9, d0[1]
    vdup.32     q10, d0[1]
    vdup.32     q11, d0[1]
    vdup.32     q12, d0[1]

    // loop 2
    vdup.32     q1, d0[1]
    vdup.32     q2, d0[1]
    vdup.32     q3, d0[1]
    vdup.32     q4, d0[1]
    vdup.32     q5, d0[1]
    vdup.32     q6, d0[1]
    vdup.32     q7, d0[1]
    vdup.32     q8, d0[1]
    vdup.32     q9, d0[1]
    vdup.32     q10, d0[1]
    vdup.32     q11, d0[1]
    vdup.32     q12, d0[1]

    // loop 3
    vdup.32     q1, d0[1]
    vdup.32     q2, d0[1]
    vdup.32     q3, d0[1]
    vdup.32     q4, d0[1]
    vdup.32     q5, d0[1]
    vdup.32     q6, d0[1]
    vdup.32     q7, d0[1]
    vdup.32     q8, d0[1]
    vdup.32     q9, d0[1]
    vdup.32     q10, d0[1]
    vdup.32     q11, d0[1]
    vdup.32     q12, d0[1]

    // loop 4
    vdup.32     q1, d0[1]
    vdup.32     q2, d0[1]
    vdup.32     q3, d0[1]
    vdup.32     q4, d0[1]
    vdup.32     q5, d0[1]
    vdup.32     q6, d0[1]
    vdup.32     q7, d0[1]
    vdup.32     q8, d0[1]
    vdup.32     q9, d0[1]
    vdup.32     q10, d0[1]
    vdup.32     q11, d0[1]
    vdup.32     q12, d0[1]

    // loop 5
    vdup.32     q1, d0[1]
    vdup.32     q2, d0[1]
    vdup.32     q3, d0[1]
    vdup.32     q4, d0[1]
    vdup.32     q5, d0[1]
    vdup.32     q6, d0[1]
    vdup.32     q7, d0[1]
    vdup.32     q8, d0[1]
    vdup.32     q9, d0[1]
    vdup.32     q10, d0[1]
    vdup.32     q11, d0[1]
    vdup.32     q12, d0[1]

    subs    r0, r0, #1
    bne     vdupScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vdupRegMinTest:

    vpush.64    {d8-d15}

vdupRegMinTest_LOOP:

    // loop 1
    vdup.32     q0, r0
    vdup.32     q0, r1
    vdup.32     q0, r2
    vdup.32     q0, r3
    vdup.32     q0, r4
    vdup.32     q0, r5
    vdup.32     q0, r6
    vdup.32     q0, r7
    vdup.32     q0, r8
    vdup.32     q0, r9
    vdup.32     q0, r10
    vdup.32     q0, r11

    // loop 2
    vdup.32     q0, r0
    vdup.32     q0, r1
    vdup.32     q0, r2
    vdup.32     q0, r3
    vdup.32     q0, r4
    vdup.32     q0, r5
    vdup.32     q0, r6
    vdup.32     q0, r7
    vdup.32     q0, r8
    vdup.32     q0, r9
    vdup.32     q0, r10
    vdup.32     q0, r11

    // loop 3
    vdup.32     q0, r0
    vdup.32     q0, r1
    vdup.32     q0, r2
    vdup.32     q0, r3
    vdup.32     q0, r4
    vdup.32     q0, r5
    vdup.32     q0, r6
    vdup.32     q0, r7
    vdup.32     q0, r8
    vdup.32     q0, r9
    vdup.32     q0, r10
    vdup.32     q0, r11

    // loop 4
    vdup.32     q0, r0
    vdup.32     q0, r1
    vdup.32     q0, r2
    vdup.32     q0, r3
    vdup.32     q0, r4
    vdup.32     q0, r5
    vdup.32     q0, r6
    vdup.32     q0, r7
    vdup.32     q0, r8
    vdup.32     q0, r9
    vdup.32     q0, r10
    vdup.32     q0, r11

    // loop 5
    vdup.32     q0, r0
    vdup.32     q0, r1
    vdup.32     q0, r2
    vdup.32     q0, r3
    vdup.32     q0, r4
    vdup.32     q0, r5
    vdup.32     q0, r6
    vdup.32     q0, r7
    vdup.32     q0, r8
    vdup.32     q0, r9
    vdup.32     q0, r10
    vdup.32     q0, r11

    subs    r0, r0, #1
    bne     vdupRegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vdupRegMaxTest:

    vpush.64    {d8-d15}

vdupRegMaxTest_LOOP:

    // loop 1
    vdup.32     q0, r12
    vdup.32     q1, r12
    vdup.32     q2, r12
    vdup.32     q3, r12
    vdup.32     q4, r12
    vdup.32     q5, r12
    vdup.32     q6, r12
    vdup.32     q7, r12
    vdup.32     q8, r12
    vdup.32     q9, r12
    vdup.32     q10, r12
    vdup.32     q11, r12

    // loop 2
    vdup.32     q0, r12
    vdup.32     q1, r12
    vdup.32     q2, r12
    vdup.32     q3, r12
    vdup.32     q4, r12
    vdup.32     q5, r12
    vdup.32     q6, r12
    vdup.32     q7, r12
    vdup.32     q8, r12
    vdup.32     q9, r12
    vdup.32     q10, r12
    vdup.32     q11, r12

    // loop 3
    vdup.32     q0, r12
    vdup.32     q1, r12
    vdup.32     q2, r12
    vdup.32     q3, r12
    vdup.32     q4, r12
    vdup.32     q5, r12
    vdup.32     q6, r12
    vdup.32     q7, r12
    vdup.32     q8, r12
    vdup.32     q9, r12
    vdup.32     q10, r12
    vdup.32     q11, r12

    // loop 4
    vdup.32     q0, r12
    vdup.32     q1, r12
    vdup.32     q2, r12
    vdup.32     q3, r12
    vdup.32     q4, r12
    vdup.32     q5, r12
    vdup.32     q6, r12
    vdup.32     q7, r12
    vdup.32     q8, r12
    vdup.32     q9, r12
    vdup.32     q10, r12
    vdup.32     q11, r12

    // loop 5
    vdup.32     q0, r12
    vdup.32     q1, r12
    vdup.32     q2, r12
    vdup.32     q3, r12
    vdup.32     q4, r12
    vdup.32     q5, r12
    vdup.32     q6, r12
    vdup.32     q7, r12
    vdup.32     q8, r12
    vdup.32     q9, r12
    vdup.32     q10, r12
    vdup.32     q11, r12

    subs    r0, r0, #1
    bne     vdupRegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_veorMinTest:

    vpush.64    {d8-d15}

veorMinTest_LOOP:

    // loop 1
    veor    q0, q0, q11
    veor    q1, q1, q0
    veor    q2, q2, q1
    veor    q3, q3, q2
    veor    q4, q4, q3
    veor    q5, q5, q4
    veor    q6, q6, q5
    veor    q7, q7, q6
    veor    q8, q8, q7
    veor    q9, q9, q8
    veor    q10, q10, q9
    veor    q11, q11, q10

    // loop 2
    veor    q0, q0, q11
    veor    q1, q1, q0
    veor    q2, q2, q1
    veor    q3, q3, q2
    veor    q4, q4, q3
    veor    q5, q5, q4
    veor    q6, q6, q5
    veor    q7, q7, q6
    veor    q8, q8, q7
    veor    q9, q9, q8
    veor    q10, q10, q9
    veor    q11, q11, q10

    // loop 3
    veor    q0, q0, q11
    veor    q1, q1, q0
    veor    q2, q2, q1
    veor    q3, q3, q2
    veor    q4, q4, q3
    veor    q5, q5, q4
    veor    q6, q6, q5
    veor    q7, q7, q6
    veor    q8, q8, q7
    veor    q9, q9, q8
    veor    q10, q10, q9
    veor    q11, q11, q10

    // loop 4
    veor    q0, q0, q11
    veor    q1, q1, q0
    veor    q2, q2, q1
    veor    q3, q3, q2
    veor    q4, q4, q3
    veor    q5, q5, q4
    veor    q6, q6, q5
    veor    q7, q7, q6
    veor    q8, q8, q7
    veor    q9, q9, q8
    veor    q10, q10, q9
    veor    q11, q11, q10

    // loop 5
    veor    q0, q0, q11
    veor    q1, q1, q0
    veor    q2, q2, q1
    veor    q3, q3, q2
    veor    q4, q4, q3
    veor    q5, q5, q4
    veor    q6, q6, q5
    veor    q7, q7, q6
    veor    q8, q8, q7
    veor    q9, q9, q8
    veor    q10, q10, q9
    veor    q11, q11, q10

    subs    r0, r0, #1
    bne     veorMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_veorMaxTest:

    vpush.64    {d8-d15}

veorMaxTest_LOOP:

    // loop 1
    veor    q1, q1, q0
    veor    q2, q2, q0
    veor    q3, q3, q0
    veor    q4, q4, q0
    veor    q5, q5, q0
    veor    q6, q6, q0
    veor    q7, q7, q0
    veor    q8, q8, q0
    veor    q9, q9, q0
    veor    q10, q10, q0
    veor    q11, q11, q0
    veor    q12, q12, q0

    // loop 2
    veor    q1, q1, q0
    veor    q2, q2, q0
    veor    q3, q3, q0
    veor    q4, q4, q0
    veor    q5, q5, q0
    veor    q6, q6, q0
    veor    q7, q7, q0
    veor    q8, q8, q0
    veor    q9, q9, q0
    veor    q10, q10, q0
    veor    q11, q11, q0
    veor    q12, q12, q0

    // loop 3
    veor    q1, q1, q0
    veor    q2, q2, q0
    veor    q3, q3, q0
    veor    q4, q4, q0
    veor    q5, q5, q0
    veor    q6, q6, q0
    veor    q7, q7, q0
    veor    q8, q8, q0
    veor    q9, q9, q0
    veor    q10, q10, q0
    veor    q11, q11, q0
    veor    q12, q12, q0

    // loop 4
    veor    q1, q1, q0
    veor    q2, q2, q0
    veor    q3, q3, q0
    veor    q4, q4, q0
    veor    q5, q5, q0
    veor    q6, q6, q0
    veor    q7, q7, q0
    veor    q8, q8, q0
    veor    q9, q9, q0
    veor    q10, q10, q0
    veor    q11, q11, q0
    veor    q12, q12, q0

    // loop 5
    veor    q1, q1, q0
    veor    q2, q2, q0
    veor    q3, q3, q0
    veor    q4, q4, q0
    veor    q5, q5, q0
    veor    q6, q6, q0
    veor    q7, q7, q0
    veor    q8, q8, q0
    veor    q9, q9, q0
    veor    q10, q10, q0
    veor    q11, q11, q0
    veor    q12, q12, q0

    subs    r0, r0, #1
    bne     veorMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr


_vextMinTest:

    vpush.64    {d8-d15}

vextMinTest_LOOP:

    // loop 1
    vext.8      q0, q0, q11, #15
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q1, #15
    vext.8      q3, q3, q2, #15
    vext.8      q4, q4, q3, #15
    vext.8      q5, q5, q4, #15
    vext.8      q6, q6, q5, #15
    vext.8      q7, q7, q6, #15
    vext.8      q8, q8, q7, #15
    vext.8      q9, q9, q8, #15
    vext.8      q10, q10, q9, #15
    vext.8      q11, q11, q10, #15

    // loop 2
    vext.8      q0, q0, q11, #15
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q1, #15
    vext.8      q3, q3, q2, #15
    vext.8      q4, q4, q3, #15
    vext.8      q5, q5, q4, #15
    vext.8      q6, q6, q5, #15
    vext.8      q7, q7, q6, #15
    vext.8      q8, q8, q7, #15
    vext.8      q9, q9, q8, #15
    vext.8      q10, q10, q9, #15
    vext.8      q11, q11, q10, #15

    // loop 3
    vext.8      q0, q0, q11, #15
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q1, #15
    vext.8      q3, q3, q2, #15
    vext.8      q4, q4, q3, #15
    vext.8      q5, q5, q4, #15
    vext.8      q6, q6, q5, #15
    vext.8      q7, q7, q6, #15
    vext.8      q8, q8, q7, #15
    vext.8      q9, q9, q8, #15
    vext.8      q10, q10, q9, #15
    vext.8      q11, q11, q10, #15

    // loop 4
    vext.8      q0, q0, q11, #15
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q1, #15
    vext.8      q3, q3, q2, #15
    vext.8      q4, q4, q3, #15
    vext.8      q5, q5, q4, #15
    vext.8      q6, q6, q5, #15
    vext.8      q7, q7, q6, #15
    vext.8      q8, q8, q7, #15
    vext.8      q9, q9, q8, #15
    vext.8      q10, q10, q9, #15
    vext.8      q11, q11, q10, #15

    // loop 5
    vext.8      q0, q0, q11, #15
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q1, #15
    vext.8      q3, q3, q2, #15
    vext.8      q4, q4, q3, #15
    vext.8      q5, q5, q4, #15
    vext.8      q6, q6, q5, #15
    vext.8      q7, q7, q6, #15
    vext.8      q8, q8, q7, #15
    vext.8      q9, q9, q8, #15
    vext.8      q10, q10, q9, #15
    vext.8      q11, q11, q10, #15

    subs    r0, r0, #1
    bne     vextMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vextMaxTest:

    vpush.64    {d8-d15}

vextMaxTest_LOOP:

    // loop 1
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q0, #15
    vext.8      q3, q3, q0, #15
    vext.8      q4, q4, q0, #15
    vext.8      q5, q5, q0, #15
    vext.8      q6, q6, q0, #15
    vext.8      q7, q7, q0, #15
    vext.8      q8, q8, q0, #15
    vext.8      q9, q9, q0, #15
    vext.8      q10, q10, q0, #15
    vext.8      q11, q11, q0, #15
    vext.8      q12, q12, q0, #15

    // loop 2
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q0, #15
    vext.8      q3, q3, q0, #15
    vext.8      q4, q4, q0, #15
    vext.8      q5, q5, q0, #15
    vext.8      q6, q6, q0, #15
    vext.8      q7, q7, q0, #15
    vext.8      q8, q8, q0, #15
    vext.8      q9, q9, q0, #15
    vext.8      q10, q10, q0, #15
    vext.8      q11, q11, q0, #15
    vext.8      q12, q12, q0, #15

    // loop 3
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q0, #15
    vext.8      q3, q3, q0, #15
    vext.8      q4, q4, q0, #15
    vext.8      q5, q5, q0, #15
    vext.8      q6, q6, q0, #15
    vext.8      q7, q7, q0, #15
    vext.8      q8, q8, q0, #15
    vext.8      q9, q9, q0, #15
    vext.8      q10, q10, q0, #15
    vext.8      q11, q11, q0, #15
    vext.8      q12, q12, q0, #15

    // loop 4
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q0, #15
    vext.8      q3, q3, q0, #15
    vext.8      q4, q4, q0, #15
    vext.8      q5, q5, q0, #15
    vext.8      q6, q6, q0, #15
    vext.8      q7, q7, q0, #15
    vext.8      q8, q8, q0, #15
    vext.8      q9, q9, q0, #15
    vext.8      q10, q10, q0, #15
    vext.8      q11, q11, q0, #15
    vext.8      q12, q12, q0, #15

    // loop 5
    vext.8      q1, q1, q0, #15
    vext.8      q2, q2, q0, #15
    vext.8      q3, q3, q0, #15
    vext.8      q4, q4, q0, #15
    vext.8      q5, q5, q0, #15
    vext.8      q6, q6, q0, #15
    vext.8      q7, q7, q0, #15
    vext.8      q8, q8, q0, #15
    vext.8      q9, q9, q0, #15
    vext.8      q10, q10, q0, #15
    vext.8      q11, q11, q0, #15
    vext.8      q12, q12, q0, #15

    subs    r0, r0, #1
    bne     vextMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vhaddI4MinTest:

    vpush.64    {d8-d15}

vhaddI4MinTest_LOOP:

    // loop 1
    vhadd.s32   q0, q0, q11
    vhadd.s32   q1, q1, q0
    vhadd.s32   q2, q2, q1
    vhadd.s32   q3, q3, q2
    vhadd.s32   q4, q4, q3
    vhadd.s32   q5, q5, q4
    vhadd.s32   q6, q6, q5
    vhadd.s32   q7, q7, q6
    vhadd.s32   q8, q8, q7
    vhadd.s32   q9, q9, q8
    vhadd.s32   q10, q10, q9
    vhadd.s32   q11, q11, q10
    
    // loop 2
    vhadd.s32   q0, q0, q11
    vhadd.s32   q1, q1, q0
    vhadd.s32   q2, q2, q1
    vhadd.s32   q3, q3, q2
    vhadd.s32   q4, q4, q3
    vhadd.s32   q5, q5, q4
    vhadd.s32   q6, q6, q5
    vhadd.s32   q7, q7, q6
    vhadd.s32   q8, q8, q7
    vhadd.s32   q9, q9, q8
    vhadd.s32   q10, q10, q9
    vhadd.s32   q11, q11, q10

    // loop 3
    vhadd.s32   q0, q0, q11
    vhadd.s32   q1, q1, q0
    vhadd.s32   q2, q2, q1
    vhadd.s32   q3, q3, q2
    vhadd.s32   q4, q4, q3
    vhadd.s32   q5, q5, q4
    vhadd.s32   q6, q6, q5
    vhadd.s32   q7, q7, q6
    vhadd.s32   q8, q8, q7
    vhadd.s32   q9, q9, q8
    vhadd.s32   q10, q10, q9
    vhadd.s32   q11, q11, q10

    // loop 4
    vhadd.s32   q0, q0, q11
    vhadd.s32   q1, q1, q0
    vhadd.s32   q2, q2, q1
    vhadd.s32   q3, q3, q2
    vhadd.s32   q4, q4, q3
    vhadd.s32   q5, q5, q4
    vhadd.s32   q6, q6, q5
    vhadd.s32   q7, q7, q6
    vhadd.s32   q8, q8, q7
    vhadd.s32   q9, q9, q8
    vhadd.s32   q10, q10, q9
    vhadd.s32   q11, q11, q10

    // loop 5
    vhadd.s32   q0, q0, q11
    vhadd.s32   q1, q1, q0
    vhadd.s32   q2, q2, q1
    vhadd.s32   q3, q3, q2
    vhadd.s32   q4, q4, q3
    vhadd.s32   q5, q5, q4
    vhadd.s32   q6, q6, q5
    vhadd.s32   q7, q7, q6
    vhadd.s32   q8, q8, q7
    vhadd.s32   q9, q9, q8
    vhadd.s32   q10, q10, q9
    vhadd.s32   q11, q11, q10

    subs    r0, r0, #1
    bne     vhaddI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vhaddI4MaxTest:

    vpush.64    {d8-d15}

vhaddI4MaxTest_LOOP:

    // loop 1
    vhadd.s32   q1, q0, q0
    vhadd.s32   q2, q0, q0
    vhadd.s32   q3, q0, q0
    vhadd.s32   q4, q0, q0
    vhadd.s32   q5, q0, q0
    vhadd.s32   q6, q0, q0
    vhadd.s32   q7, q0, q0
    vhadd.s32   q8, q0, q0
    vhadd.s32   q9, q0, q0
    vhadd.s32   q10, q0, q0
    vhadd.s32   q11, q0, q0
    vhadd.s32   q12, q0, q0

    // loop 2
    vhadd.s32   q1, q0, q0
    vhadd.s32   q2, q0, q0
    vhadd.s32   q3, q0, q0
    vhadd.s32   q4, q0, q0
    vhadd.s32   q5, q0, q0
    vhadd.s32   q6, q0, q0
    vhadd.s32   q7, q0, q0
    vhadd.s32   q8, q0, q0
    vhadd.s32   q9, q0, q0
    vhadd.s32   q10, q0, q0
    vhadd.s32   q11, q0, q0
    vhadd.s32   q12, q0, q0

    // loop 3
    vhadd.s32   q1, q0, q0
    vhadd.s32   q2, q0, q0
    vhadd.s32   q3, q0, q0
    vhadd.s32   q4, q0, q0
    vhadd.s32   q5, q0, q0
    vhadd.s32   q6, q0, q0
    vhadd.s32   q7, q0, q0
    vhadd.s32   q8, q0, q0
    vhadd.s32   q9, q0, q0
    vhadd.s32   q10, q0, q0
    vhadd.s32   q11, q0, q0
    vhadd.s32   q12, q0, q0

    // loop 4
    vhadd.s32   q1, q0, q0
    vhadd.s32   q2, q0, q0
    vhadd.s32   q3, q0, q0
    vhadd.s32   q4, q0, q0
    vhadd.s32   q5, q0, q0
    vhadd.s32   q6, q0, q0
    vhadd.s32   q7, q0, q0
    vhadd.s32   q8, q0, q0
    vhadd.s32   q9, q0, q0
    vhadd.s32   q10, q0, q0
    vhadd.s32   q11, q0, q0
    vhadd.s32   q12, q0, q0

    // loop 5
    vhadd.s32   q1, q0, q0
    vhadd.s32   q2, q0, q0
    vhadd.s32   q3, q0, q0
    vhadd.s32   q4, q0, q0
    vhadd.s32   q5, q0, q0
    vhadd.s32   q6, q0, q0
    vhadd.s32   q7, q0, q0
    vhadd.s32   q8, q0, q0
    vhadd.s32   q9, q0, q0
    vhadd.s32   q10, q0, q0
    vhadd.s32   q11, q0, q0
    vhadd.s32   q12, q0, q0

    subs    r0, r0, #1
    bne     vhaddI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vhsubI4MinTest:

    vpush.64    {d8-d15}

vhsubI4MinTest_LOOP:

    // loop 1
    vhsub.s32   q0, q0, q11
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q1
    vhsub.s32   q3, q3, q2
    vhsub.s32   q4, q4, q3
    vhsub.s32   q5, q5, q4
    vhsub.s32   q6, q6, q5
    vhsub.s32   q7, q7, q6
    vhsub.s32   q8, q8, q7
    vhsub.s32   q9, q9, q8
    vhsub.s32   q10, q10, q9
    vhsub.s32   q11, q11, q10

    // loop 2
    vhsub.s32   q0, q0, q11
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q1
    vhsub.s32   q3, q3, q2
    vhsub.s32   q4, q4, q3
    vhsub.s32   q5, q5, q4
    vhsub.s32   q6, q6, q5
    vhsub.s32   q7, q7, q6
    vhsub.s32   q8, q8, q7
    vhsub.s32   q9, q9, q8
    vhsub.s32   q10, q10, q9
    vhsub.s32   q11, q11, q10

    // loop 3
    vhsub.s32   q0, q0, q11
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q1
    vhsub.s32   q3, q3, q2
    vhsub.s32   q4, q4, q3
    vhsub.s32   q5, q5, q4
    vhsub.s32   q6, q6, q5
    vhsub.s32   q7, q7, q6
    vhsub.s32   q8, q8, q7
    vhsub.s32   q9, q9, q8
    vhsub.s32   q10, q10, q9
    vhsub.s32   q11, q11, q10

    // loop 4
    vhsub.s32   q0, q0, q11
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q1
    vhsub.s32   q3, q3, q2
    vhsub.s32   q4, q4, q3
    vhsub.s32   q5, q5, q4
    vhsub.s32   q6, q6, q5
    vhsub.s32   q7, q7, q6
    vhsub.s32   q8, q8, q7
    vhsub.s32   q9, q9, q8
    vhsub.s32   q10, q10, q9
    vhsub.s32   q11, q11, q10

    // loop 5
    vhsub.s32   q0, q0, q11
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q1
    vhsub.s32   q3, q3, q2
    vhsub.s32   q4, q4, q3
    vhsub.s32   q5, q5, q4
    vhsub.s32   q6, q6, q5
    vhsub.s32   q7, q7, q6
    vhsub.s32   q8, q8, q7
    vhsub.s32   q9, q9, q8
    vhsub.s32   q10, q10, q9
    vhsub.s32   q11, q11, q10

    subs    r0, r0, #1
    bne     vhsubI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vhsubI4MaxTest:

    vpush.64    {d8-d15}

vhsubI4MaxTest_LOOP:

    // loop 1
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q0
    vhsub.s32   q3, q3, q0
    vhsub.s32   q4, q4, q0
    vhsub.s32   q5, q5, q0
    vhsub.s32   q6, q6, q0
    vhsub.s32   q7, q7, q0
    vhsub.s32   q8, q8, q0
    vhsub.s32   q9, q9, q0
    vhsub.s32   q10, q10, q0
    vhsub.s32   q11, q11, q0
    vhsub.s32   q12, q12, q0

    // loop 2
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q0
    vhsub.s32   q3, q3, q0
    vhsub.s32   q4, q4, q0
    vhsub.s32   q5, q5, q0
    vhsub.s32   q6, q6, q0
    vhsub.s32   q7, q7, q0
    vhsub.s32   q8, q8, q0
    vhsub.s32   q9, q9, q0
    vhsub.s32   q10, q10, q0
    vhsub.s32   q11, q11, q0
    vhsub.s32   q12, q12, q0

    // loop 3
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q0
    vhsub.s32   q3, q3, q0
    vhsub.s32   q4, q4, q0
    vhsub.s32   q5, q5, q0
    vhsub.s32   q6, q6, q0
    vhsub.s32   q7, q7, q0
    vhsub.s32   q8, q8, q0
    vhsub.s32   q9, q9, q0
    vhsub.s32   q10, q10, q0
    vhsub.s32   q11, q11, q0
    vhsub.s32   q12, q12, q0

    // loop 4
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q0
    vhsub.s32   q3, q3, q0
    vhsub.s32   q4, q4, q0
    vhsub.s32   q5, q5, q0
    vhsub.s32   q6, q6, q0
    vhsub.s32   q7, q7, q0
    vhsub.s32   q8, q8, q0
    vhsub.s32   q9, q9, q0
    vhsub.s32   q10, q10, q0
    vhsub.s32   q11, q11, q0
    vhsub.s32   q12, q12, q0

    // loop 5
    vhsub.s32   q1, q1, q0
    vhsub.s32   q2, q2, q0
    vhsub.s32   q3, q3, q0
    vhsub.s32   q4, q4, q0
    vhsub.s32   q5, q5, q0
    vhsub.s32   q6, q6, q0
    vhsub.s32   q7, q7, q0
    vhsub.s32   q8, q8, q0
    vhsub.s32   q9, q9, q0
    vhsub.s32   q10, q10, q0
    vhsub.s32   q11, q11, q0
    vhsub.s32   q12, q12, q0

    subs    r0, r0, #1
    bne     vhsubI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmaxI4MinTest:

    vpush.64    {d8-d15}

vmaxI4MinTest_LOOP:

    // loop 1
    vmax.s32    q0, q0, q11
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q1
    vmax.s32    q3, q3, q2
    vmax.s32    q4, q4, q3
    vmax.s32    q5, q5, q4
    vmax.s32    q6, q6, q5
    vmax.s32    q7, q7, q6
    vmax.s32    q8, q8, q7
    vmax.s32    q9, q9, q8
    vmax.s32    q10, q10, q9
    vmax.s32    q11, q11, q10
    
    // loop 2
    vmax.s32    q0, q0, q11
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q1
    vmax.s32    q3, q3, q2
    vmax.s32    q4, q4, q3
    vmax.s32    q5, q5, q4
    vmax.s32    q6, q6, q5
    vmax.s32    q7, q7, q6
    vmax.s32    q8, q8, q7
    vmax.s32    q9, q9, q8
    vmax.s32    q10, q10, q9
    vmax.s32    q11, q11, q10

    // loop 3
    vmax.s32    q0, q0, q11
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q1
    vmax.s32    q3, q3, q2
    vmax.s32    q4, q4, q3
    vmax.s32    q5, q5, q4
    vmax.s32    q6, q6, q5
    vmax.s32    q7, q7, q6
    vmax.s32    q8, q8, q7
    vmax.s32    q9, q9, q8
    vmax.s32    q10, q10, q9
    vmax.s32    q11, q11, q10

    // loop 4
    vmax.s32    q0, q0, q11
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q1
    vmax.s32    q3, q3, q2
    vmax.s32    q4, q4, q3
    vmax.s32    q5, q5, q4
    vmax.s32    q6, q6, q5
    vmax.s32    q7, q7, q6
    vmax.s32    q8, q8, q7
    vmax.s32    q9, q9, q8
    vmax.s32    q10, q10, q9
    vmax.s32    q11, q11, q10

    // loop 5
    vmax.s32    q0, q0, q11
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q1
    vmax.s32    q3, q3, q2
    vmax.s32    q4, q4, q3
    vmax.s32    q5, q5, q4
    vmax.s32    q6, q6, q5
    vmax.s32    q7, q7, q6
    vmax.s32    q8, q8, q7
    vmax.s32    q9, q9, q8
    vmax.s32    q10, q10, q9
    vmax.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmaxI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmaxI4MaxTest:

    vpush.64    {d8-d15}

vmaxI4MaxTest_LOOP:

    // loop 1
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q0
    vmax.s32    q3, q3, q0
    vmax.s32    q4, q4, q0
    vmax.s32    q5, q5, q0
    vmax.s32    q6, q6, q0
    vmax.s32    q7, q7, q0
    vmax.s32    q8, q8, q0
    vmax.s32    q9, q9, q0
    vmax.s32    q10, q10, q0
    vmax.s32    q11, q11, q0
    vmax.s32    q12, q12, q0

    // loop 2
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q0
    vmax.s32    q3, q3, q0
    vmax.s32    q4, q4, q0
    vmax.s32    q5, q5, q0
    vmax.s32    q6, q6, q0
    vmax.s32    q7, q7, q0
    vmax.s32    q8, q8, q0
    vmax.s32    q9, q9, q0
    vmax.s32    q10, q10, q0
    vmax.s32    q11, q11, q0
    vmax.s32    q12, q12, q0

    // loop 3
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q0
    vmax.s32    q3, q3, q0
    vmax.s32    q4, q4, q0
    vmax.s32    q5, q5, q0
    vmax.s32    q6, q6, q0
    vmax.s32    q7, q7, q0
    vmax.s32    q8, q8, q0
    vmax.s32    q9, q9, q0
    vmax.s32    q10, q10, q0
    vmax.s32    q11, q11, q0
    vmax.s32    q12, q12, q0

    // loop 4
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q0
    vmax.s32    q3, q3, q0
    vmax.s32    q4, q4, q0
    vmax.s32    q5, q5, q0
    vmax.s32    q6, q6, q0
    vmax.s32    q7, q7, q0
    vmax.s32    q8, q8, q0
    vmax.s32    q9, q9, q0
    vmax.s32    q10, q10, q0
    vmax.s32    q11, q11, q0
    vmax.s32    q12, q12, q0

    // loop 5
    vmax.s32    q1, q1, q0
    vmax.s32    q2, q2, q0
    vmax.s32    q3, q3, q0
    vmax.s32    q4, q4, q0
    vmax.s32    q5, q5, q0
    vmax.s32    q6, q6, q0
    vmax.s32    q7, q7, q0
    vmax.s32    q8, q8, q0
    vmax.s32    q9, q9, q0
    vmax.s32    q10, q10, q0
    vmax.s32    q11, q11, q0
    vmax.s32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmaxI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmaxF4MinTest:

    vpush.64    {d8-d15}

vmaxF4MinTest_LOOP:

    // loop 1
    vmax.f32    q0, q0, q11
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q1
    vmax.f32    q3, q3, q2
    vmax.f32    q4, q4, q3
    vmax.f32    q5, q5, q4
    vmax.f32    q6, q6, q5
    vmax.f32    q7, q7, q6
    vmax.f32    q8, q8, q7
    vmax.f32    q9, q9, q8
    vmax.f32    q10, q10, q9
    vmax.f32    q11, q11, q10

    // loop 2
    vmax.f32    q0, q0, q11
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q1
    vmax.f32    q3, q3, q2
    vmax.f32    q4, q4, q3
    vmax.f32    q5, q5, q4
    vmax.f32    q6, q6, q5
    vmax.f32    q7, q7, q6
    vmax.f32    q8, q8, q7
    vmax.f32    q9, q9, q8
    vmax.f32    q10, q10, q9
    vmax.f32    q11, q11, q10

    // loop 3
    vmax.f32    q0, q0, q11
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q1
    vmax.f32    q3, q3, q2
    vmax.f32    q4, q4, q3
    vmax.f32    q5, q5, q4
    vmax.f32    q6, q6, q5
    vmax.f32    q7, q7, q6
    vmax.f32    q8, q8, q7
    vmax.f32    q9, q9, q8
    vmax.f32    q10, q10, q9
    vmax.f32    q11, q11, q10

    // loop 4
    vmax.f32    q0, q0, q11
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q1
    vmax.f32    q3, q3, q2
    vmax.f32    q4, q4, q3
    vmax.f32    q5, q5, q4
    vmax.f32    q6, q6, q5
    vmax.f32    q7, q7, q6
    vmax.f32    q8, q8, q7
    vmax.f32    q9, q9, q8
    vmax.f32    q10, q10, q9
    vmax.f32    q11, q11, q10

    // loop 5
    vmax.f32    q0, q0, q11
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q1
    vmax.f32    q3, q3, q2
    vmax.f32    q4, q4, q3
    vmax.f32    q5, q5, q4
    vmax.f32    q6, q6, q5
    vmax.f32    q7, q7, q6
    vmax.f32    q8, q8, q7
    vmax.f32    q9, q9, q8
    vmax.f32    q10, q10, q9
    vmax.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmaxF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmaxF4MaxTest:

    vpush.64    {d8-d15}

vmaxF4MaxTest_LOOP:

    // loop 1
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q0
    vmax.f32    q3, q3, q0
    vmax.f32    q4, q4, q0
    vmax.f32    q5, q5, q0
    vmax.f32    q6, q6, q0
    vmax.f32    q7, q7, q0
    vmax.f32    q8, q8, q0
    vmax.f32    q9, q9, q0
    vmax.f32    q10, q10, q0
    vmax.f32    q11, q11, q0
    vmax.f32    q12, q12, q0

    // loop 2
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q0
    vmax.f32    q3, q3, q0
    vmax.f32    q4, q4, q0
    vmax.f32    q5, q5, q0
    vmax.f32    q6, q6, q0
    vmax.f32    q7, q7, q0
    vmax.f32    q8, q8, q0
    vmax.f32    q9, q9, q0
    vmax.f32    q10, q10, q0
    vmax.f32    q11, q11, q0
    vmax.f32    q12, q12, q0

    // loop 3
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q0
    vmax.f32    q3, q3, q0
    vmax.f32    q4, q4, q0
    vmax.f32    q5, q5, q0
    vmax.f32    q6, q6, q0
    vmax.f32    q7, q7, q0
    vmax.f32    q8, q8, q0
    vmax.f32    q9, q9, q0
    vmax.f32    q10, q10, q0
    vmax.f32    q11, q11, q0
    vmax.f32    q12, q12, q0

    // loop 4
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q0
    vmax.f32    q3, q3, q0
    vmax.f32    q4, q4, q0
    vmax.f32    q5, q5, q0
    vmax.f32    q6, q6, q0
    vmax.f32    q7, q7, q0
    vmax.f32    q8, q8, q0
    vmax.f32    q9, q9, q0
    vmax.f32    q10, q10, q0
    vmax.f32    q11, q11, q0
    vmax.f32    q12, q12, q0

    // loop 5
    vmax.f32    q1, q1, q0
    vmax.f32    q2, q2, q0
    vmax.f32    q3, q3, q0
    vmax.f32    q4, q4, q0
    vmax.f32    q5, q5, q0
    vmax.f32    q6, q6, q0
    vmax.f32    q7, q7, q0
    vmax.f32    q8, q8, q0
    vmax.f32    q9, q9, q0
    vmax.f32    q10, q10, q0
    vmax.f32    q11, q11, q0
    vmax.f32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmaxF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vminI4MinTest:

    vpush.64    {d8-d15}

vminI4MinTest_LOOP:

    // loop 1
    vmin.s32    q0, q0, q11
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q1
    vmin.s32    q3, q3, q2
    vmin.s32    q4, q4, q3
    vmin.s32    q5, q5, q4
    vmin.s32    q6, q6, q5
    vmin.s32    q7, q7, q6
    vmin.s32    q8, q8, q7
    vmin.s32    q9, q9, q8
    vmin.s32    q10, q10, q9
    vmin.s32    q11, q11, q10

    // loop 2
    vmin.s32    q0, q0, q11
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q1
    vmin.s32    q3, q3, q2
    vmin.s32    q4, q4, q3
    vmin.s32    q5, q5, q4
    vmin.s32    q6, q6, q5
    vmin.s32    q7, q7, q6
    vmin.s32    q8, q8, q7
    vmin.s32    q9, q9, q8
    vmin.s32    q10, q10, q9
    vmin.s32    q11, q11, q10

    // loop 3
    vmin.s32    q0, q0, q11
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q1
    vmin.s32    q3, q3, q2
    vmin.s32    q4, q4, q3
    vmin.s32    q5, q5, q4
    vmin.s32    q6, q6, q5
    vmin.s32    q7, q7, q6
    vmin.s32    q8, q8, q7
    vmin.s32    q9, q9, q8
    vmin.s32    q10, q10, q9
    vmin.s32    q11, q11, q10

    // loop 4
    vmin.s32    q0, q0, q11
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q1
    vmin.s32    q3, q3, q2
    vmin.s32    q4, q4, q3
    vmin.s32    q5, q5, q4
    vmin.s32    q6, q6, q5
    vmin.s32    q7, q7, q6
    vmin.s32    q8, q8, q7
    vmin.s32    q9, q9, q8
    vmin.s32    q10, q10, q9
    vmin.s32    q11, q11, q10

    // loop 5
    vmin.s32    q0, q0, q11
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q1
    vmin.s32    q3, q3, q2
    vmin.s32    q4, q4, q3
    vmin.s32    q5, q5, q4
    vmin.s32    q6, q6, q5
    vmin.s32    q7, q7, q6
    vmin.s32    q8, q8, q7
    vmin.s32    q9, q9, q8
    vmin.s32    q10, q10, q9
    vmin.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vminI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vminI4MaxTest:

    vpush.64    {d8-d15}

vminI4MaxTest_LOOP:

    // loop 1
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q0
    vmin.s32    q3, q3, q0
    vmin.s32    q4, q4, q0
    vmin.s32    q5, q5, q0
    vmin.s32    q6, q6, q0
    vmin.s32    q7, q7, q0
    vmin.s32    q8, q8, q0
    vmin.s32    q9, q9, q0
    vmin.s32    q10, q10, q0
    vmin.s32    q11, q11, q0
    vmin.s32    q12, q12, q0

    // loop 2
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q0
    vmin.s32    q3, q3, q0
    vmin.s32    q4, q4, q0
    vmin.s32    q5, q5, q0
    vmin.s32    q6, q6, q0
    vmin.s32    q7, q7, q0
    vmin.s32    q8, q8, q0
    vmin.s32    q9, q9, q0
    vmin.s32    q10, q10, q0
    vmin.s32    q11, q11, q0
    vmin.s32    q12, q12, q0

    // loop 3
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q0
    vmin.s32    q3, q3, q0
    vmin.s32    q4, q4, q0
    vmin.s32    q5, q5, q0
    vmin.s32    q6, q6, q0
    vmin.s32    q7, q7, q0
    vmin.s32    q8, q8, q0
    vmin.s32    q9, q9, q0
    vmin.s32    q10, q10, q0
    vmin.s32    q11, q11, q0
    vmin.s32    q12, q12, q0

    // loop 4
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q0
    vmin.s32    q3, q3, q0
    vmin.s32    q4, q4, q0
    vmin.s32    q5, q5, q0
    vmin.s32    q6, q6, q0
    vmin.s32    q7, q7, q0
    vmin.s32    q8, q8, q0
    vmin.s32    q9, q9, q0
    vmin.s32    q10, q10, q0
    vmin.s32    q11, q11, q0
    vmin.s32    q12, q12, q0

    // loop 5
    vmin.s32    q1, q1, q0
    vmin.s32    q2, q2, q0
    vmin.s32    q3, q3, q0
    vmin.s32    q4, q4, q0
    vmin.s32    q5, q5, q0
    vmin.s32    q6, q6, q0
    vmin.s32    q7, q7, q0
    vmin.s32    q8, q8, q0
    vmin.s32    q9, q9, q0
    vmin.s32    q10, q10, q0
    vmin.s32    q11, q11, q0
    vmin.s32    q12, q12, q0

    subs    r0, r0, #1
    bne     vminI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vminF4MinTest:

    vpush.64    {d8-d15}

vminF4MinTest_LOOP:

    // loop 1
    vmin.f32    q0, q0, q11
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q1
    vmin.f32    q3, q3, q2
    vmin.f32    q4, q4, q3
    vmin.f32    q5, q5, q4
    vmin.f32    q6, q6, q5
    vmin.f32    q7, q7, q6
    vmin.f32    q8, q8, q7
    vmin.f32    q9, q9, q8
    vmin.f32    q10, q10, q9
    vmin.f32    q11, q11, q10

    // loop 2
    vmin.f32    q0, q0, q11
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q1
    vmin.f32    q3, q3, q2
    vmin.f32    q4, q4, q3
    vmin.f32    q5, q5, q4
    vmin.f32    q6, q6, q5
    vmin.f32    q7, q7, q6
    vmin.f32    q8, q8, q7
    vmin.f32    q9, q9, q8
    vmin.f32    q10, q10, q9
    vmin.f32    q11, q11, q10

    // loop 3
    vmin.f32    q0, q0, q11
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q1
    vmin.f32    q3, q3, q2
    vmin.f32    q4, q4, q3
    vmin.f32    q5, q5, q4
    vmin.f32    q6, q6, q5
    vmin.f32    q7, q7, q6
    vmin.f32    q8, q8, q7
    vmin.f32    q9, q9, q8
    vmin.f32    q10, q10, q9
    vmin.f32    q11, q11, q10

    // loop 4
    vmin.f32    q0, q0, q11
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q1
    vmin.f32    q3, q3, q2
    vmin.f32    q4, q4, q3
    vmin.f32    q5, q5, q4
    vmin.f32    q6, q6, q5
    vmin.f32    q7, q7, q6
    vmin.f32    q8, q8, q7
    vmin.f32    q9, q9, q8
    vmin.f32    q10, q10, q9
    vmin.f32    q11, q11, q10

    // loop 5
    vmin.f32    q0, q0, q11
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q1
    vmin.f32    q3, q3, q2
    vmin.f32    q4, q4, q3
    vmin.f32    q5, q5, q4
    vmin.f32    q6, q6, q5
    vmin.f32    q7, q7, q6
    vmin.f32    q8, q8, q7
    vmin.f32    q9, q9, q8
    vmin.f32    q10, q10, q9
    vmin.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vminF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vminF4MaxTest:

    vpush.64    {d8-d15}

vminF4MaxTest_LOOP:

    // loop 1
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q0
    vmin.f32    q3, q3, q0
    vmin.f32    q4, q4, q0
    vmin.f32    q5, q5, q0
    vmin.f32    q6, q6, q0
    vmin.f32    q7, q7, q0
    vmin.f32    q8, q8, q0
    vmin.f32    q9, q9, q0
    vmin.f32    q10, q10, q0
    vmin.f32    q11, q11, q0
    vmin.f32    q12, q12, q0

    // loop 2
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q0
    vmin.f32    q3, q3, q0
    vmin.f32    q4, q4, q0
    vmin.f32    q5, q5, q0
    vmin.f32    q6, q6, q0
    vmin.f32    q7, q7, q0
    vmin.f32    q8, q8, q0
    vmin.f32    q9, q9, q0
    vmin.f32    q10, q10, q0
    vmin.f32    q11, q11, q0
    vmin.f32    q12, q12, q0

    // loop 3
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q0
    vmin.f32    q3, q3, q0
    vmin.f32    q4, q4, q0
    vmin.f32    q5, q5, q0
    vmin.f32    q6, q6, q0
    vmin.f32    q7, q7, q0
    vmin.f32    q8, q8, q0
    vmin.f32    q9, q9, q0
    vmin.f32    q10, q10, q0
    vmin.f32    q11, q11, q0
    vmin.f32    q12, q12, q0

    // loop 4
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q0
    vmin.f32    q3, q3, q0
    vmin.f32    q4, q4, q0
    vmin.f32    q5, q5, q0
    vmin.f32    q6, q6, q0
    vmin.f32    q7, q7, q0
    vmin.f32    q8, q8, q0
    vmin.f32    q9, q9, q0
    vmin.f32    q10, q10, q0
    vmin.f32    q11, q11, q0
    vmin.f32    q12, q12, q0

    // loop 5
    vmin.f32    q1, q1, q0
    vmin.f32    q2, q2, q0
    vmin.f32    q3, q3, q0
    vmin.f32    q4, q4, q0
    vmin.f32    q5, q5, q0
    vmin.f32    q6, q6, q0
    vmin.f32    q7, q7, q0
    vmin.f32    q8, q8, q0
    vmin.f32    q9, q9, q0
    vmin.f32    q10, q10, q0
    vmin.f32    q11, q11, q0
    vmin.f32    q12, q12, q0

    subs    r0, r0, #1
    bne     vminF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlaI4MinTest:

    vpush.64    {d8-d15}

vmlaI4MinTest_LOOP:

    // loop 1
    vmla.s32    q0, q11, q11
    vmla.s32    q1, q0, q0
    vmla.s32    q2, q1, q1
    vmla.s32    q3, q2, q2
    vmla.s32    q4, q3, q3
    vmla.s32    q5, q4, q4
    vmla.s32    q6, q5, q5
    vmla.s32    q7, q6, q6
    vmla.s32    q8, q8, q7
    vmla.s32    q9, q9, q8
    vmla.s32    q10, q10, q9
    vmla.s32    q11, q11, q10
    
    // loop 2
    vmla.s32    q0, q11, q11
    vmla.s32    q1, q0, q0
    vmla.s32    q2, q1, q1
    vmla.s32    q3, q2, q2
    vmla.s32    q4, q3, q3
    vmla.s32    q5, q4, q4
    vmla.s32    q6, q5, q5
    vmla.s32    q7, q6, q6
    vmla.s32    q8, q8, q7
    vmla.s32    q9, q9, q8
    vmla.s32    q10, q10, q9
    vmla.s32    q11, q11, q10

    // loop 3
    vmla.s32    q0, q11, q11
    vmla.s32    q1, q0, q0
    vmla.s32    q2, q1, q1
    vmla.s32    q3, q2, q2
    vmla.s32    q4, q3, q3
    vmla.s32    q5, q4, q4
    vmla.s32    q6, q5, q5
    vmla.s32    q7, q6, q6
    vmla.s32    q8, q8, q7
    vmla.s32    q9, q9, q8
    vmla.s32    q10, q10, q9
    vmla.s32    q11, q11, q10

    // loop 4
    vmla.s32    q0, q11, q11
    vmla.s32    q1, q0, q0
    vmla.s32    q2, q1, q1
    vmla.s32    q3, q2, q2
    vmla.s32    q4, q3, q3
    vmla.s32    q5, q4, q4
    vmla.s32    q6, q5, q5
    vmla.s32    q7, q6, q6
    vmla.s32    q8, q8, q7
    vmla.s32    q9, q9, q8
    vmla.s32    q10, q10, q9
    vmla.s32    q11, q11, q10

    // loop 5
    vmla.s32    q0, q11, q11
    vmla.s32    q1, q0, q0
    vmla.s32    q2, q1, q1
    vmla.s32    q3, q2, q2
    vmla.s32    q4, q3, q3
    vmla.s32    q5, q4, q4
    vmla.s32    q6, q5, q5
    vmla.s32    q7, q6, q6
    vmla.s32    q8, q8, q7
    vmla.s32    q9, q9, q8
    vmla.s32    q10, q10, q9
    vmla.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmlaI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaI4MaxTest:

    vpush.64    {d8-d15}

vmlaI4MaxTest_LOOP:

    // loop 1
    vmla.s32    q1, q1, q0
    vmla.s32    q2, q2, q0
    vmla.s32    q3, q3, q0
    vmla.s32    q4, q4, q0
    vmla.s32    q5, q5, q0
    vmla.s32    q6, q6, q0
    vmla.s32    q7, q7, q0
    vmla.s32    q8, q8, q0
    vmla.s32    q9, q9, q0
    vmla.s32    q10, q10, q0
    vmla.s32    q11, q11, q0
    vmla.s32    q12, q12, q0

    // loop 2
    vmla.s32    q1, q1, q0
    vmla.s32    q2, q2, q0
    vmla.s32    q3, q3, q0
    vmla.s32    q4, q4, q0
    vmla.s32    q5, q5, q0
    vmla.s32    q6, q6, q0
    vmla.s32    q7, q7, q0
    vmla.s32    q8, q8, q0
    vmla.s32    q9, q9, q0
    vmla.s32    q10, q10, q0
    vmla.s32    q11, q11, q0
    vmla.s32    q12, q12, q0

    // loop 3
    vmla.s32    q1, q1, q0
    vmla.s32    q2, q2, q0
    vmla.s32    q3, q3, q0
    vmla.s32    q4, q4, q0
    vmla.s32    q5, q5, q0
    vmla.s32    q6, q6, q0
    vmla.s32    q7, q7, q0
    vmla.s32    q8, q8, q0
    vmla.s32    q9, q9, q0
    vmla.s32    q10, q10, q0
    vmla.s32    q11, q11, q0
    vmla.s32    q12, q12, q0

    // loop 4
    vmla.s32    q1, q1, q0
    vmla.s32    q2, q2, q0
    vmla.s32    q3, q3, q0
    vmla.s32    q4, q4, q0
    vmla.s32    q5, q5, q0
    vmla.s32    q6, q6, q0
    vmla.s32    q7, q7, q0
    vmla.s32    q8, q8, q0
    vmla.s32    q9, q9, q0
    vmla.s32    q10, q10, q0
    vmla.s32    q11, q11, q0
    vmla.s32    q12, q12, q0

    // loop 5
    vmla.s32    q1, q1, q0
    vmla.s32    q2, q2, q0
    vmla.s32    q3, q3, q0
    vmla.s32    q4, q4, q0
    vmla.s32    q5, q5, q0
    vmla.s32    q6, q6, q0
    vmla.s32    q7, q7, q0
    vmla.s32    q8, q8, q0
    vmla.s32    q9, q9, q0
    vmla.s32    q10, q10, q0
    vmla.s32    q11, q11, q0
    vmla.s32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmlaI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr
    
_vmlaF4MinTest:

    vpush.64    {d8-d15}

vmlaF4MinTest_LOOP:

    // loop 1
    vmla.f32    q0, q0, q11
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q1
    vmla.f32    q3, q3, q2
    vmla.f32    q4, q4, q3
    vmla.f32    q5, q5, q4
    vmla.f32    q6, q6, q5
    vmla.f32    q7, q7, q6
    vmla.f32    q8, q8, q7
    vmla.f32    q9, q9, q8
    vmla.f32    q10, q10, q9
    vmla.f32    q11, q11, q10
    
    // loop 2
    vmla.f32    q0, q0, q11
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q1
    vmla.f32    q3, q3, q2
    vmla.f32    q4, q4, q3
    vmla.f32    q5, q5, q4
    vmla.f32    q6, q6, q5
    vmla.f32    q7, q7, q6
    vmla.f32    q8, q8, q7
    vmla.f32    q9, q9, q8
    vmla.f32    q10, q10, q9
    vmla.f32    q11, q11, q10

    // loop 3
    vmla.f32    q0, q0, q11
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q1
    vmla.f32    q3, q3, q2
    vmla.f32    q4, q4, q3
    vmla.f32    q5, q5, q4
    vmla.f32    q6, q6, q5
    vmla.f32    q7, q7, q6
    vmla.f32    q8, q8, q7
    vmla.f32    q9, q9, q8
    vmla.f32    q10, q10, q9
    vmla.f32    q11, q11, q10

    // loop 4
    vmla.f32    q0, q0, q11
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q1
    vmla.f32    q3, q3, q2
    vmla.f32    q4, q4, q3
    vmla.f32    q5, q5, q4
    vmla.f32    q6, q6, q5
    vmla.f32    q7, q7, q6
    vmla.f32    q8, q8, q7
    vmla.f32    q9, q9, q8
    vmla.f32    q10, q10, q9
    vmla.f32    q11, q11, q10

    // loop 5
    vmla.f32    q0, q0, q11
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q1
    vmla.f32    q3, q3, q2
    vmla.f32    q4, q4, q3
    vmla.f32    q5, q5, q4
    vmla.f32    q6, q6, q5
    vmla.f32    q7, q7, q6
    vmla.f32    q8, q8, q7
    vmla.f32    q9, q9, q8
    vmla.f32    q10, q10, q9
    vmla.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmlaF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaF4MaxTest:

    vpush.64    {d8-d15}

vmlaF4MaxTest_LOOP:

    // loop 1
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q0
    vmla.f32    q3, q3, q0
    vmla.f32    q4, q4, q0
    vmla.f32    q5, q5, q0
    vmla.f32    q6, q6, q0
    vmla.f32    q7, q7, q0
    vmla.f32    q8, q8, q0
    vmla.f32    q9, q9, q0
    vmla.f32    q10, q10, q0
    vmla.f32    q11, q11, q0
    vmla.f32    q12, q12, q0

    // loop 2
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q0
    vmla.f32    q3, q3, q0
    vmla.f32    q4, q4, q0
    vmla.f32    q5, q5, q0
    vmla.f32    q6, q6, q0
    vmla.f32    q7, q7, q0
    vmla.f32    q8, q8, q0
    vmla.f32    q9, q9, q0
    vmla.f32    q10, q10, q0
    vmla.f32    q11, q11, q0
    vmla.f32    q12, q12, q0

    // loop 3
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q0
    vmla.f32    q3, q3, q0
    vmla.f32    q4, q4, q0
    vmla.f32    q5, q5, q0
    vmla.f32    q6, q6, q0
    vmla.f32    q7, q7, q0
    vmla.f32    q8, q8, q0
    vmla.f32    q9, q9, q0
    vmla.f32    q10, q10, q0
    vmla.f32    q11, q11, q0
    vmla.f32    q12, q12, q0

    // loop 4
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q0
    vmla.f32    q3, q3, q0
    vmla.f32    q4, q4, q0
    vmla.f32    q5, q5, q0
    vmla.f32    q6, q6, q0
    vmla.f32    q7, q7, q0
    vmla.f32    q8, q8, q0
    vmla.f32    q9, q9, q0
    vmla.f32    q10, q10, q0
    vmla.f32    q11, q11, q0
    vmla.f32    q12, q12, q0

    // loop 5
    vmla.f32    q1, q1, q0
    vmla.f32    q2, q2, q0
    vmla.f32    q3, q3, q0
    vmla.f32    q4, q4, q0
    vmla.f32    q5, q5, q0
    vmla.f32    q6, q6, q0
    vmla.f32    q7, q7, q0
    vmla.f32    q8, q8, q0
    vmla.f32    q9, q9, q0
    vmla.f32    q10, q10, q0
    vmla.f32    q11, q11, q0
    vmla.f32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmlaF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaFMinTest:

    vpush.64    {d8-d15}

vmlaFMinTest_LOOP:

    // loop 1
    vmla.f32    s0, s0, s11
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s1
    vmla.f32    s3, s3, s2
    vmla.f32    s4, s4, s3
    vmla.f32    s5, s5, s4
    vmla.f32    s6, s6, s5
    vmla.f32    s7, s7, s6
    vmla.f32    s8, s8, s7
    vmla.f32    s9, s9, s8
    vmla.f32    s10, s10, s9
    vmla.f32    s11, s11, s10

    // loop 2
    vmla.f32    s0, s0, s11
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s1
    vmla.f32    s3, s3, s2
    vmla.f32    s4, s4, s3
    vmla.f32    s5, s5, s4
    vmla.f32    s6, s6, s5
    vmla.f32    s7, s7, s6
    vmla.f32    s8, s8, s7
    vmla.f32    s9, s9, s8
    vmla.f32    s10, s10, s9
    vmla.f32    s11, s11, s10

    // loop 3
    vmla.f32    s0, s0, s11
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s1
    vmla.f32    s3, s3, s2
    vmla.f32    s4, s4, s3
    vmla.f32    s5, s5, s4
    vmla.f32    s6, s6, s5
    vmla.f32    s7, s7, s6
    vmla.f32    s8, s8, s7
    vmla.f32    s9, s9, s8
    vmla.f32    s10, s10, s9
    vmla.f32    s11, s11, s10

    // loop 4
    vmla.f32    s0, s0, s11
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s1
    vmla.f32    s3, s3, s2
    vmla.f32    s4, s4, s3
    vmla.f32    s5, s5, s4
    vmla.f32    s6, s6, s5
    vmla.f32    s7, s7, s6
    vmla.f32    s8, s8, s7
    vmla.f32    s9, s9, s8
    vmla.f32    s10, s10, s9
    vmla.f32    s11, s11, s10

    // loop 5
    vmla.f32    s0, s0, s11
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s1
    vmla.f32    s3, s3, s2
    vmla.f32    s4, s4, s3
    vmla.f32    s5, s5, s4
    vmla.f32    s6, s6, s5
    vmla.f32    s7, s7, s6
    vmla.f32    s8, s8, s7
    vmla.f32    s9, s9, s8
    vmla.f32    s10, s10, s9
    vmla.f32    s11, s11, s10

    subs    r0, r0, #1
    bne     vmlaFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaFMaxTest:

    vpush.64    {d8-d15}

vmlaFMaxTest_LOOP:

    // loop 1
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s0
    vmla.f32    s3, s3, s0
    vmla.f32    s4, s4, s0
    vmla.f32    s5, s5, s0
    vmla.f32    s6, s6, s0
    vmla.f32    s7, s7, s0
    vmla.f32    s8, s8, s0
    vmla.f32    s9, s9, s0
    vmla.f32    s10, s10, s0
    vmla.f32    s11, s11, s0
    vmla.f32    s12, s12, s0

    // loop 2
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s0
    vmla.f32    s3, s3, s0
    vmla.f32    s4, s4, s0
    vmla.f32    s5, s5, s0
    vmla.f32    s6, s6, s0
    vmla.f32    s7, s7, s0
    vmla.f32    s8, s8, s0
    vmla.f32    s9, s9, s0
    vmla.f32    s10, s10, s0
    vmla.f32    s11, s11, s0
    vmla.f32    s12, s12, s0

    // loop 3
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s0
    vmla.f32    s3, s3, s0
    vmla.f32    s4, s4, s0
    vmla.f32    s5, s5, s0
    vmla.f32    s6, s6, s0
    vmla.f32    s7, s7, s0
    vmla.f32    s8, s8, s0
    vmla.f32    s9, s9, s0
    vmla.f32    s10, s10, s0
    vmla.f32    s11, s11, s0
    vmla.f32    s12, s12, s0

    // loop 4
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s0
    vmla.f32    s3, s3, s0
    vmla.f32    s4, s4, s0
    vmla.f32    s5, s5, s0
    vmla.f32    s6, s6, s0
    vmla.f32    s7, s7, s0
    vmla.f32    s8, s8, s0
    vmla.f32    s9, s9, s0
    vmla.f32    s10, s10, s0
    vmla.f32    s11, s11, s0
    vmla.f32    s12, s12, s0

    // loop 5
    vmla.f32    s1, s1, s0
    vmla.f32    s2, s2, s0
    vmla.f32    s3, s3, s0
    vmla.f32    s4, s4, s0
    vmla.f32    s5, s5, s0
    vmla.f32    s6, s6, s0
    vmla.f32    s7, s7, s0
    vmla.f32    s8, s8, s0
    vmla.f32    s9, s9, s0
    vmla.f32    s10, s10, s0
    vmla.f32    s11, s11, s0
    vmla.f32    s12, s12, s0

    subs    r0, r0, #1
    bne     vmlaFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaDMinTest:

    vpush.64    {d8-d15}

vmlaDMinTest_LOOP:

    // loop 1
    vmla.f64    d0, d0, d11
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d1
    vmla.f64    d3, d3, d2
    vmla.f64    d4, d4, d3
    vmla.f64    d5, d5, d4
    vmla.f64    d6, d6, d5
    vmla.f64    d7, d7, d6
    vmla.f64    d8, d8, d7
    vmla.f64    d9, d9, d8
    vmla.f64    d10, d10, d9
    vmla.f64    d11, d11, d10

    // loop 2
    vmla.f64    d0, d0, d11
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d1
    vmla.f64    d3, d3, d2
    vmla.f64    d4, d4, d3
    vmla.f64    d5, d5, d4
    vmla.f64    d6, d6, d5
    vmla.f64    d7, d7, d6
    vmla.f64    d8, d8, d7
    vmla.f64    d9, d9, d8
    vmla.f64    d10, d10, d9
    vmla.f64    d11, d11, d10

    // loop 3
    vmla.f64    d0, d0, d11
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d1
    vmla.f64    d3, d3, d2
    vmla.f64    d4, d4, d3
    vmla.f64    d5, d5, d4
    vmla.f64    d6, d6, d5
    vmla.f64    d7, d7, d6
    vmla.f64    d8, d8, d7
    vmla.f64    d9, d9, d8
    vmla.f64    d10, d10, d9
    vmla.f64    d11, d11, d10

    // loop 4
    vmla.f64    d0, d0, d11
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d1
    vmla.f64    d3, d3, d2
    vmla.f64    d4, d4, d3
    vmla.f64    d5, d5, d4
    vmla.f64    d6, d6, d5
    vmla.f64    d7, d7, d6
    vmla.f64    d8, d8, d7
    vmla.f64    d9, d9, d8
    vmla.f64    d10, d10, d9
    vmla.f64    d11, d11, d10

    // loop 5
    vmla.f64    d0, d0, d11
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d1
    vmla.f64    d3, d3, d2
    vmla.f64    d4, d4, d3
    vmla.f64    d5, d5, d4
    vmla.f64    d6, d6, d5
    vmla.f64    d7, d7, d6
    vmla.f64    d8, d8, d7
    vmla.f64    d9, d9, d8
    vmla.f64    d10, d10, d9
    vmla.f64    d11, d11, d10

    subs    r0, r0, #1
    bne     vmlaDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaDMaxTest:

    vpush.64    {d8-d15}

vmlaDMaxTest_LOOP:

    // loop 1
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d0
    vmla.f64    d3, d3, d0
    vmla.f64    d4, d4, d0
    vmla.f64    d5, d5, d0
    vmla.f64    d6, d6, d0
    vmla.f64    d7, d7, d0
    vmla.f64    d8, d8, d0
    vmla.f64    d9, d9, d0
    vmla.f64    d10, d10, d0
    vmla.f64    d11, d11, d0
    vmla.f64    d12, d12, d0

    // loop 2
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d0
    vmla.f64    d3, d3, d0
    vmla.f64    d4, d4, d0
    vmla.f64    d5, d5, d0
    vmla.f64    d6, d6, d0
    vmla.f64    d7, d7, d0
    vmla.f64    d8, d8, d0
    vmla.f64    d9, d9, d0
    vmla.f64    d10, d10, d0
    vmla.f64    d11, d11, d0
    vmla.f64    d12, d12, d0

    // loop 3
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d0
    vmla.f64    d3, d3, d0
    vmla.f64    d4, d4, d0
    vmla.f64    d5, d5, d0
    vmla.f64    d6, d6, d0
    vmla.f64    d7, d7, d0
    vmla.f64    d8, d8, d0
    vmla.f64    d9, d9, d0
    vmla.f64    d10, d10, d0
    vmla.f64    d11, d11, d0
    vmla.f64    d12, d12, d0

    // loop 4
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d0
    vmla.f64    d3, d3, d0
    vmla.f64    d4, d4, d0
    vmla.f64    d5, d5, d0
    vmla.f64    d6, d6, d0
    vmla.f64    d7, d7, d0
    vmla.f64    d8, d8, d0
    vmla.f64    d9, d9, d0
    vmla.f64    d10, d10, d0
    vmla.f64    d11, d11, d0
    vmla.f64    d12, d12, d0

    // loop 5
    vmla.f64    d1, d1, d0
    vmla.f64    d2, d2, d0
    vmla.f64    d3, d3, d0
    vmla.f64    d4, d4, d0
    vmla.f64    d5, d5, d0
    vmla.f64    d6, d6, d0
    vmla.f64    d7, d7, d0
    vmla.f64    d8, d8, d0
    vmla.f64    d9, d9, d0
    vmla.f64    d10, d10, d0
    vmla.f64    d11, d11, d0
    vmla.f64    d12, d12, d0

    subs    r0, r0, #1
    bne     vmlaDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlalI4MinTest:

    vpush.64    {d8-d15}

vmlalI4MinTest_LOOP:

    // loop 1
    vmlal.s32   q0, d0, d22
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d2
    vmlal.s32   q3, d6, d4
    vmlal.s32   q4, d8, d6
    vmlal.s32   q5, d10, d8
    vmlal.s32   q6, d12, d10
    vmlal.s32   q7, d14, d12
    vmlal.s32   q8, d16, d14
    vmlal.s32   q9, d18, d16
    vmlal.s32   q10, d20, d18
    vmlal.s32   q11, d22, d20

    // loop 2
    vmlal.s32   q0, d0, d22
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d2
    vmlal.s32   q3, d6, d4
    vmlal.s32   q4, d8, d6
    vmlal.s32   q5, d10, d8
    vmlal.s32   q6, d12, d10
    vmlal.s32   q7, d14, d12
    vmlal.s32   q8, d16, d14
    vmlal.s32   q9, d18, d16
    vmlal.s32   q10, d20, d18
    vmlal.s32   q11, d22, d20

    // loop 3
    vmlal.s32   q0, d0, d22
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d2
    vmlal.s32   q3, d6, d4
    vmlal.s32   q4, d8, d6
    vmlal.s32   q5, d10, d8
    vmlal.s32   q6, d12, d10
    vmlal.s32   q7, d14, d12
    vmlal.s32   q8, d16, d14
    vmlal.s32   q9, d18, d16
    vmlal.s32   q10, d20, d18
    vmlal.s32   q11, d22, d20

    // loop 4
    vmlal.s32   q0, d0, d22
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d2
    vmlal.s32   q3, d6, d4
    vmlal.s32   q4, d8, d6
    vmlal.s32   q5, d10, d8
    vmlal.s32   q6, d12, d10
    vmlal.s32   q7, d14, d12
    vmlal.s32   q8, d16, d14
    vmlal.s32   q9, d18, d16
    vmlal.s32   q10, d20, d18
    vmlal.s32   q11, d22, d20

    // loop 5
    vmlal.s32   q0, d0, d22
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d2
    vmlal.s32   q3, d6, d4
    vmlal.s32   q4, d8, d6
    vmlal.s32   q5, d10, d8
    vmlal.s32   q6, d12, d10
    vmlal.s32   q7, d14, d12
    vmlal.s32   q8, d16, d14
    vmlal.s32   q9, d18, d16
    vmlal.s32   q10, d20, d18
    vmlal.s32   q11, d22, d20
    
    subs    r0, r0, #1
    bne     vmlalI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlalI4MaxTest:

    vpush.64    {d8-d15}

vmlalI4MaxTest_LOOP:

    // loop 1
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d0
    vmlal.s32   q3, d6, d0
    vmlal.s32   q4, d8, d0
    vmlal.s32   q5, d10, d0
    vmlal.s32   q6, d12, d0
    vmlal.s32   q7, d14, d0
    vmlal.s32   q8, d16, d0
    vmlal.s32   q9, d18, d0
    vmlal.s32   q10, d20, d0
    vmlal.s32   q11, d22, d0
    vmlal.s32   q12, d24, d0

    // loop 2
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d0
    vmlal.s32   q3, d6, d0
    vmlal.s32   q4, d8, d0
    vmlal.s32   q5, d10, d0
    vmlal.s32   q6, d12, d0
    vmlal.s32   q7, d14, d0
    vmlal.s32   q8, d16, d0
    vmlal.s32   q9, d18, d0
    vmlal.s32   q10, d20, d0
    vmlal.s32   q11, d22, d0
    vmlal.s32   q12, d24, d0

    // loop 3
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d0
    vmlal.s32   q3, d6, d0
    vmlal.s32   q4, d8, d0
    vmlal.s32   q5, d10, d0
    vmlal.s32   q6, d12, d0
    vmlal.s32   q7, d14, d0
    vmlal.s32   q8, d16, d0
    vmlal.s32   q9, d18, d0
    vmlal.s32   q10, d20, d0
    vmlal.s32   q11, d22, d0
    vmlal.s32   q12, d24, d0

    // loop 4
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d0
    vmlal.s32   q3, d6, d0
    vmlal.s32   q4, d8, d0
    vmlal.s32   q5, d10, d0
    vmlal.s32   q6, d12, d0
    vmlal.s32   q7, d14, d0
    vmlal.s32   q8, d16, d0
    vmlal.s32   q9, d18, d0
    vmlal.s32   q10, d20, d0
    vmlal.s32   q11, d22, d0
    vmlal.s32   q12, d24, d0

    // loop 5
    vmlal.s32   q1, d2, d0
    vmlal.s32   q2, d4, d0
    vmlal.s32   q3, d6, d0
    vmlal.s32   q4, d8, d0
    vmlal.s32   q5, d10, d0
    vmlal.s32   q6, d12, d0
    vmlal.s32   q7, d14, d0
    vmlal.s32   q8, d16, d0
    vmlal.s32   q9, d18, d0
    vmlal.s32   q10, d20, d0
    vmlal.s32   q11, d22, d0
    vmlal.s32   q12, d24, d0

    subs    r0, r0, #1
    bne     vmlalI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlsI4MinTest:

    vpush.64    {d8-d15}

vmlsI4MinTest_LOOP:

    // loop 1
    vmls.s32    q0, q0, q11
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q1
    vmls.s32    q3, q3, q2
    vmls.s32    q4, q4, q3
    vmls.s32    q5, q5, q4
    vmls.s32    q6, q6, q5
    vmls.s32    q7, q7, q6
    vmls.s32    q8, q8, q7
    vmls.s32    q9, q9, q8
    vmls.s32    q10, q10, q9
    vmls.s32    q11, q11, q10
    
    // loop 2
    vmls.s32    q0, q0, q11
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q1
    vmls.s32    q3, q3, q2
    vmls.s32    q4, q4, q3
    vmls.s32    q5, q5, q4
    vmls.s32    q6, q6, q5
    vmls.s32    q7, q7, q6
    vmls.s32    q8, q8, q7
    vmls.s32    q9, q9, q8
    vmls.s32    q10, q10, q9
    vmls.s32    q11, q11, q10

    // loop 3
    vmls.s32    q0, q0, q11
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q1
    vmls.s32    q3, q3, q2
    vmls.s32    q4, q4, q3
    vmls.s32    q5, q5, q4
    vmls.s32    q6, q6, q5
    vmls.s32    q7, q7, q6
    vmls.s32    q8, q8, q7
    vmls.s32    q9, q9, q8
    vmls.s32    q10, q10, q9
    vmls.s32    q11, q11, q10

    // loop 4
    vmls.s32    q0, q0, q11
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q1
    vmls.s32    q3, q3, q2
    vmls.s32    q4, q4, q3
    vmls.s32    q5, q5, q4
    vmls.s32    q6, q6, q5
    vmls.s32    q7, q7, q6
    vmls.s32    q8, q8, q7
    vmls.s32    q9, q9, q8
    vmls.s32    q10, q10, q9
    vmls.s32    q11, q11, q10

    // loop 5
    vmls.s32    q0, q0, q11
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q1
    vmls.s32    q3, q3, q2
    vmls.s32    q4, q4, q3
    vmls.s32    q5, q5, q4
    vmls.s32    q6, q6, q5
    vmls.s32    q7, q7, q6
    vmls.s32    q8, q8, q7
    vmls.s32    q9, q9, q8
    vmls.s32    q10, q10, q9
    vmls.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmlsI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsI4MaxTest:

    vpush.64    {d8-d15}

vmlsI4MaxTest_LOOP:

    // loop 1
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q0
    vmls.s32    q3, q3, q0
    vmls.s32    q4, q4, q0
    vmls.s32    q5, q5, q0
    vmls.s32    q6, q6, q0
    vmls.s32    q7, q7, q0
    vmls.s32    q8, q8, q0
    vmls.s32    q9, q9, q0
    vmls.s32    q10, q10, q0
    vmls.s32    q11, q11, q0
    vmls.s32    q12, q12, q0

    // loop 2
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q0
    vmls.s32    q3, q3, q0
    vmls.s32    q4, q4, q0
    vmls.s32    q5, q5, q0
    vmls.s32    q6, q6, q0
    vmls.s32    q7, q7, q0
    vmls.s32    q8, q8, q0
    vmls.s32    q9, q9, q0
    vmls.s32    q10, q10, q0
    vmls.s32    q11, q11, q0
    vmls.s32    q12, q12, q0

    // loop 3
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q0
    vmls.s32    q3, q3, q0
    vmls.s32    q4, q4, q0
    vmls.s32    q5, q5, q0
    vmls.s32    q6, q6, q0
    vmls.s32    q7, q7, q0
    vmls.s32    q8, q8, q0
    vmls.s32    q9, q9, q0
    vmls.s32    q10, q10, q0
    vmls.s32    q11, q11, q0
    vmls.s32    q12, q12, q0

    // loop 4
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q0
    vmls.s32    q3, q3, q0
    vmls.s32    q4, q4, q0
    vmls.s32    q5, q5, q0
    vmls.s32    q6, q6, q0
    vmls.s32    q7, q7, q0
    vmls.s32    q8, q8, q0
    vmls.s32    q9, q9, q0
    vmls.s32    q10, q10, q0
    vmls.s32    q11, q11, q0
    vmls.s32    q12, q12, q0

    // loop 5
    vmls.s32    q1, q1, q0
    vmls.s32    q2, q2, q0
    vmls.s32    q3, q3, q0
    vmls.s32    q4, q4, q0
    vmls.s32    q5, q5, q0
    vmls.s32    q6, q6, q0
    vmls.s32    q7, q7, q0
    vmls.s32    q8, q8, q0
    vmls.s32    q9, q9, q0
    vmls.s32    q10, q10, q0
    vmls.s32    q11, q11, q0
    vmls.s32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmlsI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsF4MinTest:

    vpush.64    {d8-d15}

vmlsF4MinTest_LOOP:

    // loop 1
    vmls.f32    q0, q0, q11
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q1
    vmls.f32    q3, q3, q2
    vmls.f32    q4, q4, q3
    vmls.f32    q5, q5, q4
    vmls.f32    q6, q6, q5
    vmls.f32    q7, q7, q6
    vmls.f32    q8, q8, q7
    vmls.f32    q9, q9, q8
    vmls.f32    q10, q10, q9
    vmls.f32    q11, q11, q10
    
    // loop 2
    vmls.f32    q0, q0, q11
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q1
    vmls.f32    q3, q3, q2
    vmls.f32    q4, q4, q3
    vmls.f32    q5, q5, q4
    vmls.f32    q6, q6, q5
    vmls.f32    q7, q7, q6
    vmls.f32    q8, q8, q7
    vmls.f32    q9, q9, q8
    vmls.f32    q10, q10, q9
    vmls.f32    q11, q11, q10

    // loop 3
    vmls.f32    q0, q0, q11
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q1
    vmls.f32    q3, q3, q2
    vmls.f32    q4, q4, q3
    vmls.f32    q5, q5, q4
    vmls.f32    q6, q6, q5
    vmls.f32    q7, q7, q6
    vmls.f32    q8, q8, q7
    vmls.f32    q9, q9, q8
    vmls.f32    q10, q10, q9
    vmls.f32    q11, q11, q10

    // loop 4
    vmls.f32    q0, q0, q11
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q1
    vmls.f32    q3, q3, q2
    vmls.f32    q4, q4, q3
    vmls.f32    q5, q5, q4
    vmls.f32    q6, q6, q5
    vmls.f32    q7, q7, q6
    vmls.f32    q8, q8, q7
    vmls.f32    q9, q9, q8
    vmls.f32    q10, q10, q9
    vmls.f32    q11, q11, q10

    // loop 5
    vmls.f32    q0, q0, q11
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q1
    vmls.f32    q3, q3, q2
    vmls.f32    q4, q4, q3
    vmls.f32    q5, q5, q4
    vmls.f32    q6, q6, q5
    vmls.f32    q7, q7, q6
    vmls.f32    q8, q8, q7
    vmls.f32    q9, q9, q8
    vmls.f32    q10, q10, q9
    vmls.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmlsF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsF4MaxTest:

    vpush.64    {d8-d15}

vmlsF4MaxTest_LOOP:

    // loop 1
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q0
    vmls.f32    q3, q3, q0
    vmls.f32    q4, q4, q0
    vmls.f32    q5, q5, q0
    vmls.f32    q6, q6, q0
    vmls.f32    q7, q7, q0
    vmls.f32    q8, q8, q0
    vmls.f32    q9, q9, q0
    vmls.f32    q10, q10, q0
    vmls.f32    q11, q11, q0
    vmls.f32    q12, q12, q0

    // loop 2
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q0
    vmls.f32    q3, q3, q0
    vmls.f32    q4, q4, q0
    vmls.f32    q5, q5, q0
    vmls.f32    q6, q6, q0
    vmls.f32    q7, q7, q0
    vmls.f32    q8, q8, q0
    vmls.f32    q9, q9, q0
    vmls.f32    q10, q10, q0
    vmls.f32    q11, q11, q0
    vmls.f32    q12, q12, q0

    // loop 3
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q0
    vmls.f32    q3, q3, q0
    vmls.f32    q4, q4, q0
    vmls.f32    q5, q5, q0
    vmls.f32    q6, q6, q0
    vmls.f32    q7, q7, q0
    vmls.f32    q8, q8, q0
    vmls.f32    q9, q9, q0
    vmls.f32    q10, q10, q0
    vmls.f32    q11, q11, q0
    vmls.f32    q12, q12, q0

    // loop 4
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q0
    vmls.f32    q3, q3, q0
    vmls.f32    q4, q4, q0
    vmls.f32    q5, q5, q0
    vmls.f32    q6, q6, q0
    vmls.f32    q7, q7, q0
    vmls.f32    q8, q8, q0
    vmls.f32    q9, q9, q0
    vmls.f32    q10, q10, q0
    vmls.f32    q11, q11, q0
    vmls.f32    q12, q12, q0

    // loop 5
    vmls.f32    q1, q1, q0
    vmls.f32    q2, q2, q0
    vmls.f32    q3, q3, q0
    vmls.f32    q4, q4, q0
    vmls.f32    q5, q5, q0
    vmls.f32    q6, q6, q0
    vmls.f32    q7, q7, q0
    vmls.f32    q8, q8, q0
    vmls.f32    q9, q9, q0
    vmls.f32    q10, q10, q0
    vmls.f32    q11, q11, q0
    vmls.f32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmlsF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsFMinTest:

    vpush.64    {d8-d15}

vmlsFMinTest_LOOP:

    // loop 1
    vmls.f32    s0, s11, s11
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s1
    vmls.f32    s3, s3, s2
    vmls.f32    s4, s4, s3
    vmls.f32    s5, s5, s4
    vmls.f32    s6, s6, s5
    vmls.f32    s7, s7, s6
    vmls.f32    s8, s8, s7
    vmls.f32    s9, s9, s8
    vmls.f32    s10, s10, s9
    vmls.f32    s11, s11, s10
    
    // loop 2
    vmls.f32    s0, s11, s11
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s1
    vmls.f32    s3, s3, s2
    vmls.f32    s4, s4, s3
    vmls.f32    s5, s5, s4
    vmls.f32    s6, s6, s5
    vmls.f32    s7, s7, s6
    vmls.f32    s8, s8, s7
    vmls.f32    s9, s9, s8
    vmls.f32    s10, s10, s9
    vmls.f32    s11, s11, s10

    // loop 3
    vmls.f32    s0, s11, s11
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s1
    vmls.f32    s3, s3, s2
    vmls.f32    s4, s4, s3
    vmls.f32    s5, s5, s4
    vmls.f32    s6, s6, s5
    vmls.f32    s7, s7, s6
    vmls.f32    s8, s8, s7
    vmls.f32    s9, s9, s8
    vmls.f32    s10, s10, s9
    vmls.f32    s11, s11, s10

    // loop 4
    vmls.f32    s0, s11, s11
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s1
    vmls.f32    s3, s3, s2
    vmls.f32    s4, s4, s3
    vmls.f32    s5, s5, s4
    vmls.f32    s6, s6, s5
    vmls.f32    s7, s7, s6
    vmls.f32    s8, s8, s7
    vmls.f32    s9, s9, s8
    vmls.f32    s10, s10, s9
    vmls.f32    s11, s11, s10

    // loop 5
    vmls.f32    s0, s11, s11
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s1
    vmls.f32    s3, s3, s2
    vmls.f32    s4, s4, s3
    vmls.f32    s5, s5, s4
    vmls.f32    s6, s6, s5
    vmls.f32    s7, s7, s6
    vmls.f32    s8, s8, s7
    vmls.f32    s9, s9, s8
    vmls.f32    s10, s10, s9
    vmls.f32    s11, s11, s10

    subs    r0, r0, #1
    bne     vmlsFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsFMaxTest:

    vpush.64    {d8-d15}

vmlsFMaxTest_LOOP:

    // loop 1
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s0
    vmls.f32    s3, s3, s0
    vmls.f32    s4, s4, s0
    vmls.f32    s5, s5, s0
    vmls.f32    s6, s6, s0
    vmls.f32    s7, s7, s0
    vmls.f32    s8, s8, s0
    vmls.f32    s9, s9, s0
    vmls.f32    s10, s10, s0
    vmls.f32    s11, s11, s0
    vmls.f32    s12, s12, s0

    // loop 2
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s0
    vmls.f32    s3, s3, s0
    vmls.f32    s4, s4, s0
    vmls.f32    s5, s5, s0
    vmls.f32    s6, s6, s0
    vmls.f32    s7, s7, s0
    vmls.f32    s8, s8, s0
    vmls.f32    s9, s9, s0
    vmls.f32    s10, s10, s0
    vmls.f32    s11, s11, s0
    vmls.f32    s12, s12, s0

    // loop 3
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s0
    vmls.f32    s3, s3, s0
    vmls.f32    s4, s4, s0
    vmls.f32    s5, s5, s0
    vmls.f32    s6, s6, s0
    vmls.f32    s7, s7, s0
    vmls.f32    s8, s8, s0
    vmls.f32    s9, s9, s0
    vmls.f32    s10, s10, s0
    vmls.f32    s11, s11, s0
    vmls.f32    s12, s12, s0

    // loop 4
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s0
    vmls.f32    s3, s3, s0
    vmls.f32    s4, s4, s0
    vmls.f32    s5, s5, s0
    vmls.f32    s6, s6, s0
    vmls.f32    s7, s7, s0
    vmls.f32    s8, s8, s0
    vmls.f32    s9, s9, s0
    vmls.f32    s10, s10, s0
    vmls.f32    s11, s11, s0
    vmls.f32    s12, s12, s0

    // loop 5
    vmls.f32    s1, s1, s0
    vmls.f32    s2, s2, s0
    vmls.f32    s3, s3, s0
    vmls.f32    s4, s4, s0
    vmls.f32    s5, s5, s0
    vmls.f32    s6, s6, s0
    vmls.f32    s7, s7, s0
    vmls.f32    s8, s8, s0
    vmls.f32    s9, s9, s0
    vmls.f32    s10, s10, s0
    vmls.f32    s11, s11, s0
    vmls.f32    s12, s12, s0

    subs    r0, r0, #1
    bne     vmlsFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsDMinTest:

    vpush.64    {d8-d15}

vmlsDMinTest_LOOP:

    // loop 1
    vmls.f64    d0, d0, d11
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d1
    vmls.f64    d3, d3, d2
    vmls.f64    d4, d4, d3
    vmls.f64    d5, d5, d4
    vmls.f64    d6, d6, d5
    vmls.f64    d7, d7, d6
    vmls.f64    d8, d8, d7
    vmls.f64    d9, d9, d8
    vmls.f64    d10, d10, d9
    vmls.f64    d11, d11, d10

    // loop 2
    vmls.f64    d0, d0, d11
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d1
    vmls.f64    d3, d3, d2
    vmls.f64    d4, d4, d3
    vmls.f64    d5, d5, d4
    vmls.f64    d6, d6, d5
    vmls.f64    d7, d7, d6
    vmls.f64    d8, d8, d7
    vmls.f64    d9, d9, d8
    vmls.f64    d10, d10, d9
    vmls.f64    d11, d11, d10

    // loop 3
    vmls.f64    d0, d0, d11
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d1
    vmls.f64    d3, d3, d2
    vmls.f64    d4, d4, d3
    vmls.f64    d5, d5, d4
    vmls.f64    d6, d6, d5
    vmls.f64    d7, d7, d6
    vmls.f64    d8, d8, d7
    vmls.f64    d9, d9, d8
    vmls.f64    d10, d10, d9
    vmls.f64    d11, d11, d10

    // loop 4
    vmls.f64    d0, d0, d11
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d1
    vmls.f64    d3, d3, d2
    vmls.f64    d4, d4, d3
    vmls.f64    d5, d5, d4
    vmls.f64    d6, d6, d5
    vmls.f64    d7, d7, d6
    vmls.f64    d8, d8, d7
    vmls.f64    d9, d9, d8
    vmls.f64    d10, d10, d9
    vmls.f64    d11, d11, d10

    // loop 5
    vmls.f64    d0, d0, d11
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d1
    vmls.f64    d3, d3, d2
    vmls.f64    d4, d4, d3
    vmls.f64    d5, d5, d4
    vmls.f64    d6, d6, d5
    vmls.f64    d7, d7, d6
    vmls.f64    d8, d8, d7
    vmls.f64    d9, d9, d8
    vmls.f64    d10, d10, d9
    vmls.f64    d11, d11, d10

    subs    r0, r0, #1
    bne     vmlsDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsDMaxTest:

    vpush.64    {d8-d15}

vmlsDMaxTest_LOOP:

    // loop 1
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d0
    vmls.f64    d3, d3, d0
    vmls.f64    d4, d4, d0
    vmls.f64    d5, d5, d0
    vmls.f64    d6, d6, d0
    vmls.f64    d7, d7, d0
    vmls.f64    d8, d8, d0
    vmls.f64    d9, d9, d0
    vmls.f64    d10, d10, d0
    vmls.f64    d11, d11, d0
    vmls.f64    d12, d12, d0

    // loop 2
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d0
    vmls.f64    d3, d3, d0
    vmls.f64    d4, d4, d0
    vmls.f64    d5, d5, d0
    vmls.f64    d6, d6, d0
    vmls.f64    d7, d7, d0
    vmls.f64    d8, d8, d0
    vmls.f64    d9, d9, d0
    vmls.f64    d10, d10, d0
    vmls.f64    d11, d11, d0
    vmls.f64    d12, d12, d0

    // loop 3
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d0
    vmls.f64    d3, d3, d0
    vmls.f64    d4, d4, d0
    vmls.f64    d5, d5, d0
    vmls.f64    d6, d6, d0
    vmls.f64    d7, d7, d0
    vmls.f64    d8, d8, d0
    vmls.f64    d9, d9, d0
    vmls.f64    d10, d10, d0
    vmls.f64    d11, d11, d0
    vmls.f64    d12, d12, d0

    // loop 4
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d0
    vmls.f64    d3, d3, d0
    vmls.f64    d4, d4, d0
    vmls.f64    d5, d5, d0
    vmls.f64    d6, d6, d0
    vmls.f64    d7, d7, d0
    vmls.f64    d8, d8, d0
    vmls.f64    d9, d9, d0
    vmls.f64    d10, d10, d0
    vmls.f64    d11, d11, d0
    vmls.f64    d12, d12, d0

    // loop 5
    vmls.f64    d1, d1, d0
    vmls.f64    d2, d2, d0
    vmls.f64    d3, d3, d0
    vmls.f64    d4, d4, d0
    vmls.f64    d5, d5, d0
    vmls.f64    d6, d6, d0
    vmls.f64    d7, d7, d0
    vmls.f64    d8, d8, d0
    vmls.f64    d9, d9, d0
    vmls.f64    d10, d10, d0
    vmls.f64    d11, d11, d0
    vmls.f64    d12, d12, d0

    subs    r0, r0, #1
    bne     vmlsDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlslI4MinTest:

    vpush.64    {d8-d15}

vmlslI4MinTest_LOOP:

    // loop 1
    vmlsl.s32   q0, d0, d22
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d2
    vmlsl.s32   q3, d6, d4
    vmlsl.s32   q4, d8, d6
    vmlsl.s32   q5, d10, d8
    vmlsl.s32   q6, d12, d10
    vmlsl.s32   q7, d14, d12
    vmlsl.s32   q8, d16, d14
    vmlsl.s32   q9, d18, d16
    vmlsl.s32   q10, d20, d18
    vmlsl.s32   q11, d22, d20

    // loop 2
    vmlsl.s32   q0, d0, d22
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d2
    vmlsl.s32   q3, d6, d4
    vmlsl.s32   q4, d8, d6
    vmlsl.s32   q5, d10, d8
    vmlsl.s32   q6, d12, d10
    vmlsl.s32   q7, d14, d12
    vmlsl.s32   q8, d16, d14
    vmlsl.s32   q9, d18, d16
    vmlsl.s32   q10, d20, d18
    vmlsl.s32   q11, d22, d20

    // loop 3
    vmlsl.s32   q0, d0, d22
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d2
    vmlsl.s32   q3, d6, d4
    vmlsl.s32   q4, d8, d6
    vmlsl.s32   q5, d10, d8
    vmlsl.s32   q6, d12, d10
    vmlsl.s32   q7, d14, d12
    vmlsl.s32   q8, d16, d14
    vmlsl.s32   q9, d18, d16
    vmlsl.s32   q10, d20, d18
    vmlsl.s32   q11, d22, d20

    // loop 4
    vmlsl.s32   q0, d0, d22
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d2
    vmlsl.s32   q3, d6, d4
    vmlsl.s32   q4, d8, d6
    vmlsl.s32   q5, d10, d8
    vmlsl.s32   q6, d12, d10
    vmlsl.s32   q7, d14, d12
    vmlsl.s32   q8, d16, d14
    vmlsl.s32   q9, d18, d16
    vmlsl.s32   q10, d20, d18
    vmlsl.s32   q11, d22, d20

    // loop 5
    vmlsl.s32   q0, d0, d22
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d2
    vmlsl.s32   q3, d6, d4
    vmlsl.s32   q4, d8, d6
    vmlsl.s32   q5, d10, d8
    vmlsl.s32   q6, d12, d10
    vmlsl.s32   q7, d14, d12
    vmlsl.s32   q8, d16, d14
    vmlsl.s32   q9, d18, d16
    vmlsl.s32   q10, d20, d18
    vmlsl.s32   q11, d22, d20

    subs    r0, r0, #1
    bne     vmlslI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlslI4MaxTest:

    vpush.64    {d8-d15}

vmlslI4MaxTest_LOOP:

    // loop 1
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d0
    vmlsl.s32   q3, d6, d0
    vmlsl.s32   q4, d8, d0
    vmlsl.s32   q5, d10, d0
    vmlsl.s32   q6, d12, d0
    vmlsl.s32   q7, d14, d0
    vmlsl.s32   q8, d16, d0
    vmlsl.s32   q9, d18, d0
    vmlsl.s32   q10, d20, d0
    vmlsl.s32   q11, d22, d0
    vmlsl.s32   q12, d24, d0

    // loop 2
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d0
    vmlsl.s32   q3, d6, d0
    vmlsl.s32   q4, d8, d0
    vmlsl.s32   q5, d10, d0
    vmlsl.s32   q6, d12, d0
    vmlsl.s32   q7, d14, d0
    vmlsl.s32   q8, d16, d0
    vmlsl.s32   q9, d18, d0
    vmlsl.s32   q10, d20, d0
    vmlsl.s32   q11, d22, d0
    vmlsl.s32   q12, d24, d0

    // loop 3
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d0
    vmlsl.s32   q3, d6, d0
    vmlsl.s32   q4, d8, d0
    vmlsl.s32   q5, d10, d0
    vmlsl.s32   q6, d12, d0
    vmlsl.s32   q7, d14, d0
    vmlsl.s32   q8, d16, d0
    vmlsl.s32   q9, d18, d0
    vmlsl.s32   q10, d20, d0
    vmlsl.s32   q11, d22, d0
    vmlsl.s32   q12, d24, d0

    // loop 4
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d0
    vmlsl.s32   q3, d6, d0
    vmlsl.s32   q4, d8, d0
    vmlsl.s32   q5, d10, d0
    vmlsl.s32   q6, d12, d0
    vmlsl.s32   q7, d14, d0
    vmlsl.s32   q8, d16, d0
    vmlsl.s32   q9, d18, d0
    vmlsl.s32   q10, d20, d0
    vmlsl.s32   q11, d22, d0
    vmlsl.s32   q12, d24, d0

    // loop 5
    vmlsl.s32   q1, d2, d0
    vmlsl.s32   q2, d4, d0
    vmlsl.s32   q3, d6, d0
    vmlsl.s32   q4, d8, d0
    vmlsl.s32   q5, d10, d0
    vmlsl.s32   q6, d12, d0
    vmlsl.s32   q7, d14, d0
    vmlsl.s32   q8, d16, d0
    vmlsl.s32   q9, d18, d0
    vmlsl.s32   q10, d20, d0
    vmlsl.s32   q11, d22, d0
    vmlsl.s32   q12, d24, d0

    subs    r0, r0, #1
    bne     vmlslI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlaI4ScalarMinTest:

    vpush.64    {d8-d15}

vmlaI4ScalarMinTest_LOOP:

    // loop 1
    vmla.s32    q0, q0, d10[0]
    vmla.s32    q0, q0, d0[1]
    vmla.s32    q1, q1, d1[1]
    vmla.s32    q1, q1, d2[1]
    vmla.s32    q2, q2, d3[1]
    vmla.s32    q2, q2, d4[1]
    vmla.s32    q3, q3, d5[1]
    vmla.s32    q3, q3, d6[1]
    vmla.s32    q4, q4, d7[1]
    vmla.s32    q4, q4, d8[1]
    vmla.s32    q5, q5, d9[1]
    vmla.s32    q5, q5, d10[1]

    // loop 2
    vmla.s32    q0, q0, d10[0]
    vmla.s32    q0, q0, d0[1]
    vmla.s32    q1, q1, d1[1]
    vmla.s32    q1, q1, d2[1]
    vmla.s32    q2, q2, d3[1]
    vmla.s32    q2, q2, d4[1]
    vmla.s32    q3, q3, d5[1]
    vmla.s32    q3, q3, d6[1]
    vmla.s32    q4, q4, d7[1]
    vmla.s32    q4, q4, d8[1]
    vmla.s32    q5, q5, d9[1]
    vmla.s32    q5, q5, d10[1]

    // loop 3
    vmla.s32    q0, q0, d10[0]
    vmla.s32    q0, q0, d0[1]
    vmla.s32    q1, q1, d1[1]
    vmla.s32    q1, q1, d2[1]
    vmla.s32    q2, q2, d3[1]
    vmla.s32    q2, q2, d4[1]
    vmla.s32    q3, q3, d5[1]
    vmla.s32    q3, q3, d6[1]
    vmla.s32    q4, q4, d7[1]
    vmla.s32    q4, q4, d8[1]
    vmla.s32    q5, q5, d9[1]
    vmla.s32    q5, q5, d10[1]

    // loop 4
    vmla.s32    q0, q0, d10[0]
    vmla.s32    q0, q0, d0[1]
    vmla.s32    q1, q1, d1[1]
    vmla.s32    q1, q1, d2[1]
    vmla.s32    q2, q2, d3[1]
    vmla.s32    q2, q2, d4[1]
    vmla.s32    q3, q3, d5[1]
    vmla.s32    q3, q3, d6[1]
    vmla.s32    q4, q4, d7[1]
    vmla.s32    q4, q4, d8[1]
    vmla.s32    q5, q5, d9[1]
    vmla.s32    q5, q5, d10[1]

    // loop 5
    vmla.s32    q0, q0, d10[0]
    vmla.s32    q0, q0, d0[1]
    vmla.s32    q1, q1, d1[1]
    vmla.s32    q1, q1, d2[1]
    vmla.s32    q2, q2, d3[1]
    vmla.s32    q2, q2, d4[1]
    vmla.s32    q3, q3, d5[1]
    vmla.s32    q3, q3, d6[1]
    vmla.s32    q4, q4, d7[1]
    vmla.s32    q4, q4, d8[1]
    vmla.s32    q5, q5, d9[1]
    vmla.s32    q5, q5, d10[1]

    subs    r0, r0, #1
    bne     vmlaI4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaI4ScalarMaxTest:

    vpush.64    {d8-d15}

vmlaI4ScalarMaxTest_LOOP:

    // loop 1
    vmla.s32    q1, q1, d0[1]
    vmla.s32    q2, q2, d0[1]
    vmla.s32    q3, q3, d0[1]
    vmla.s32    q4, q4, d0[1]
    vmla.s32    q5, q5, d0[1]
    vmla.s32    q6, q6, d0[1]
    vmla.s32    q7, q7, d0[1]
    vmla.s32    q8, q8, d0[1]
    vmla.s32    q9, q9, d0[1]
    vmla.s32    q10, q10, d0[1]
    vmla.s32    q11, q11, d0[1]
    vmla.s32    q12, q12, d0[1]

    // loop 2
    vmla.s32    q1, q1, d0[1]
    vmla.s32    q2, q2, d0[1]
    vmla.s32    q3, q3, d0[1]
    vmla.s32    q4, q4, d0[1]
    vmla.s32    q5, q5, d0[1]
    vmla.s32    q6, q6, d0[1]
    vmla.s32    q7, q7, d0[1]
    vmla.s32    q8, q8, d0[1]
    vmla.s32    q9, q9, d0[1]
    vmla.s32    q10, q10, d0[1]
    vmla.s32    q11, q11, d0[1]
    vmla.s32    q12, q12, d0[1]

    // loop 3
    vmla.s32    q1, q1, d0[1]
    vmla.s32    q2, q2, d0[1]
    vmla.s32    q3, q3, d0[1]
    vmla.s32    q4, q4, d0[1]
    vmla.s32    q5, q5, d0[1]
    vmla.s32    q6, q6, d0[1]
    vmla.s32    q7, q7, d0[1]
    vmla.s32    q8, q8, d0[1]
    vmla.s32    q9, q9, d0[1]
    vmla.s32    q10, q10, d0[1]
    vmla.s32    q11, q11, d0[1]
    vmla.s32    q12, q12, d0[1]

    // loop 4
    vmla.s32    q1, q1, d0[1]
    vmla.s32    q2, q2, d0[1]
    vmla.s32    q3, q3, d0[1]
    vmla.s32    q4, q4, d0[1]
    vmla.s32    q5, q5, d0[1]
    vmla.s32    q6, q6, d0[1]
    vmla.s32    q7, q7, d0[1]
    vmla.s32    q8, q8, d0[1]
    vmla.s32    q9, q9, d0[1]
    vmla.s32    q10, q10, d0[1]
    vmla.s32    q11, q11, d0[1]
    vmla.s32    q12, q12, d0[1]

    // loop 5
    vmla.s32    q1, q1, d0[1]
    vmla.s32    q2, q2, d0[1]
    vmla.s32    q3, q3, d0[1]
    vmla.s32    q4, q4, d0[1]
    vmla.s32    q5, q5, d0[1]
    vmla.s32    q6, q6, d0[1]
    vmla.s32    q7, q7, d0[1]
    vmla.s32    q8, q8, d0[1]
    vmla.s32    q9, q9, d0[1]
    vmla.s32    q10, q10, d0[1]
    vmla.s32    q11, q11, d0[1]
    vmla.s32    q12, q12, d0[1]

    subs    r0, r0, #1
    bne     vmlaI4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaF4ScalarMinTest:

    vpush.64    {d8-d15}

vmlaF4ScalarMinTest_LOOP:

    // loop 1
    vmla.f32    q0, q0, d10[1]
    vmla.f32    q0, q0, d0[1]
    vmla.f32    q1, q1, d1[1]
    vmla.f32    q1, q1, d2[1]
    vmla.f32    q2, q2, d3[1]
    vmla.f32    q2, q2, d4[1]
    vmla.f32    q3, q3, d5[1]
    vmla.f32    q3, q3, d6[1]
    vmla.f32    q4, q4, d7[1]
    vmla.f32    q4, q4, d8[1]
    vmla.f32    q5, q5, d9[1]
    vmla.f32    q5, q5, d10[1]

    // loop 2
    vmla.f32    q0, q0, d10[1]
    vmla.f32    q0, q0, d0[1]
    vmla.f32    q1, q1, d1[1]
    vmla.f32    q1, q1, d2[1]
    vmla.f32    q2, q2, d3[1]
    vmla.f32    q2, q2, d4[1]
    vmla.f32    q3, q3, d5[1]
    vmla.f32    q3, q3, d6[1]
    vmla.f32    q4, q4, d7[1]
    vmla.f32    q4, q4, d8[1]
    vmla.f32    q5, q5, d9[1]
    vmla.f32    q5, q5, d10[1]

    // loop 3
    vmla.f32    q0, q0, d10[1]
    vmla.f32    q0, q0, d0[1]
    vmla.f32    q1, q1, d1[1]
    vmla.f32    q1, q1, d2[1]
    vmla.f32    q2, q2, d3[1]
    vmla.f32    q2, q2, d4[1]
    vmla.f32    q3, q3, d5[1]
    vmla.f32    q3, q3, d6[1]
    vmla.f32    q4, q4, d7[1]
    vmla.f32    q4, q4, d8[1]
    vmla.f32    q5, q5, d9[1]
    vmla.f32    q5, q5, d10[1]

    // loop 4
    vmla.f32    q0, q0, d10[1]
    vmla.f32    q0, q0, d0[1]
    vmla.f32    q1, q1, d1[1]
    vmla.f32    q1, q1, d2[1]
    vmla.f32    q2, q2, d3[1]
    vmla.f32    q2, q2, d4[1]
    vmla.f32    q3, q3, d5[1]
    vmla.f32    q3, q3, d6[1]
    vmla.f32    q4, q4, d7[1]
    vmla.f32    q4, q4, d8[1]
    vmla.f32    q5, q5, d9[1]
    vmla.f32    q5, q5, d10[1]

    // loop 5
    vmla.f32    q0, q0, d10[1]
    vmla.f32    q0, q0, d0[1]
    vmla.f32    q1, q1, d1[1]
    vmla.f32    q1, q1, d2[1]
    vmla.f32    q2, q2, d3[1]
    vmla.f32    q2, q2, d4[1]
    vmla.f32    q3, q3, d5[1]
    vmla.f32    q3, q3, d6[1]
    vmla.f32    q4, q4, d7[1]
    vmla.f32    q4, q4, d8[1]
    vmla.f32    q5, q5, d9[1]
    vmla.f32    q5, q5, d10[1]

    subs    r0, r0, #1
    bne     vmlaF4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlaF4ScalarMaxTest:

    vpush.64    {d8-d15}

vmlaF4ScalarMaxTest_LOOP:

    // loop 1
    vmla.f32    q1, q1, d0[1]
    vmla.f32    q2, q2, d0[1]
    vmla.f32    q3, q3, d0[1]
    vmla.f32    q4, q4, d0[1]
    vmla.f32    q5, q5, d0[1]
    vmla.f32    q6, q6, d0[1]
    vmla.f32    q7, q7, d0[1]
    vmla.f32    q8, q8, d0[1]
    vmla.f32    q9, q9, d0[1]
    vmla.f32    q10, q10, d0[1]
    vmla.f32    q11, q11, d0[1]
    vmla.f32    q12, q12, d0[1]

    // loop 2
    vmla.f32    q1, q1, d0[1]
    vmla.f32    q2, q2, d0[1]
    vmla.f32    q3, q3, d0[1]
    vmla.f32    q4, q4, d0[1]
    vmla.f32    q5, q5, d0[1]
    vmla.f32    q6, q6, d0[1]
    vmla.f32    q7, q7, d0[1]
    vmla.f32    q8, q8, d0[1]
    vmla.f32    q9, q9, d0[1]
    vmla.f32    q10, q10, d0[1]
    vmla.f32    q11, q11, d0[1]
    vmla.f32    q12, q12, d0[1]

    // loop 3
    vmla.f32    q1, q1, d0[1]
    vmla.f32    q2, q2, d0[1]
    vmla.f32    q3, q3, d0[1]
    vmla.f32    q4, q4, d0[1]
    vmla.f32    q5, q5, d0[1]
    vmla.f32    q6, q6, d0[1]
    vmla.f32    q7, q7, d0[1]
    vmla.f32    q8, q8, d0[1]
    vmla.f32    q9, q9, d0[1]
    vmla.f32    q10, q10, d0[1]
    vmla.f32    q11, q11, d0[1]
    vmla.f32    q12, q12, d0[1]

    // loop 4
    vmla.f32    q1, q1, d0[1]
    vmla.f32    q2, q2, d0[1]
    vmla.f32    q3, q3, d0[1]
    vmla.f32    q4, q4, d0[1]
    vmla.f32    q5, q5, d0[1]
    vmla.f32    q6, q6, d0[1]
    vmla.f32    q7, q7, d0[1]
    vmla.f32    q8, q8, d0[1]
    vmla.f32    q9, q9, d0[1]
    vmla.f32    q10, q10, d0[1]
    vmla.f32    q11, q11, d0[1]
    vmla.f32    q12, q12, d0[1]

    // loop 5
    vmla.f32    q1, q1, d0[1]
    vmla.f32    q2, q2, d0[1]
    vmla.f32    q3, q3, d0[1]
    vmla.f32    q4, q4, d0[1]
    vmla.f32    q5, q5, d0[1]
    vmla.f32    q6, q6, d0[1]
    vmla.f32    q7, q7, d0[1]
    vmla.f32    q8, q8, d0[1]
    vmla.f32    q9, q9, d0[1]
    vmla.f32    q10, q10, d0[1]
    vmla.f32    q11, q11, d0[1]
    vmla.f32    q12, q12, d0[1]

    subs    r0, r0, #1
    bne     vmlaF4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlalI4ScalarMinTest:

    vpush.64    {d8-d15}

vmlalI4ScalarMinTest_LOOP:

    // loop 1
    vmlal.s32   q0, d0, d11[1]
    vmlal.s32   q0, d1, d0[1]
    vmlal.s32   q1, d2, d1[1]
    vmlal.s32   q1, d3, d2[1]
    vmlal.s32   q2, d4, d3[1]
    vmlal.s32   q2, d5, d4[1]
    vmlal.s32   q3, d6, d5[1]
    vmlal.s32   q3, d7, d6[1]
    vmlal.s32   q4, d8, d7[1]
    vmlal.s32   q4, d9, d8[1]
    vmlal.s32   q5, d10, d9[1]
    vmlal.s32   q5, d11, d10[1]

    // loop 2
    vmlal.s32   q0, d0, d11[1]
    vmlal.s32   q0, d1, d0[1]
    vmlal.s32   q1, d2, d1[1]
    vmlal.s32   q1, d3, d2[1]
    vmlal.s32   q2, d4, d3[1]
    vmlal.s32   q2, d5, d4[1]
    vmlal.s32   q3, d6, d5[1]
    vmlal.s32   q3, d7, d6[1]
    vmlal.s32   q4, d8, d7[1]
    vmlal.s32   q4, d9, d8[1]
    vmlal.s32   q5, d10, d9[1]
    vmlal.s32   q5, d11, d10[1]

    // loop 3
    vmlal.s32   q0, d0, d11[1]
    vmlal.s32   q0, d1, d0[1]
    vmlal.s32   q1, d2, d1[1]
    vmlal.s32   q1, d3, d2[1]
    vmlal.s32   q2, d4, d3[1]
    vmlal.s32   q2, d5, d4[1]
    vmlal.s32   q3, d6, d5[1]
    vmlal.s32   q3, d7, d6[1]
    vmlal.s32   q4, d8, d7[1]
    vmlal.s32   q4, d9, d8[1]
    vmlal.s32   q5, d10, d9[1]
    vmlal.s32   q5, d11, d10[1]

    // loop 4
    vmlal.s32   q0, d0, d11[1]
    vmlal.s32   q0, d1, d0[1]
    vmlal.s32   q1, d2, d1[1]
    vmlal.s32   q1, d3, d2[1]
    vmlal.s32   q2, d4, d3[1]
    vmlal.s32   q2, d5, d4[1]
    vmlal.s32   q3, d6, d5[1]
    vmlal.s32   q3, d7, d6[1]
    vmlal.s32   q4, d8, d7[1]
    vmlal.s32   q4, d9, d8[1]
    vmlal.s32   q5, d10, d9[1]
    vmlal.s32   q5, d11, d10[1]

    // loop 5
    vmlal.s32   q0, d0, d11[1]
    vmlal.s32   q0, d1, d0[1]
    vmlal.s32   q1, d2, d1[1]
    vmlal.s32   q1, d3, d2[1]
    vmlal.s32   q2, d4, d3[1]
    vmlal.s32   q2, d5, d4[1]
    vmlal.s32   q3, d6, d5[1]
    vmlal.s32   q3, d7, d6[1]
    vmlal.s32   q4, d8, d7[1]
    vmlal.s32   q4, d9, d8[1]
    vmlal.s32   q5, d10, d9[1]
    vmlal.s32   q5, d11, d10[1]

    subs    r0, r0, #1
    bne     vmlalI4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlalI4ScalarMaxTest:

    vpush.64    {d8-d15}

vmlalI4ScalarMaxTest_LOOP:

    // loop 1
    vmlal.s32   q1, d2, d0[1]
    vmlal.s32   q2, d4, d0[1]
    vmlal.s32   q3, d6, d0[1]
    vmlal.s32   q4, d8, d0[1]
    vmlal.s32   q5, d10, d0[1]
    vmlal.s32   q6, d12, d0[1]
    vmlal.s32   q7, d14, d0[1]
    vmlal.s32   q8, d16, d0[1]
    vmlal.s32   q9, d18, d0[1]
    vmlal.s32   q10, d20, d0[1]
    vmlal.s32   q11, d22, d0[1]
    vmlal.s32   q12, d24, d0[1]

    // loop 2
    vmlal.s32   q1, d2, d0[1]
    vmlal.s32   q2, d4, d0[1]
    vmlal.s32   q3, d6, d0[1]
    vmlal.s32   q4, d8, d0[1]
    vmlal.s32   q5, d10, d0[1]
    vmlal.s32   q6, d12, d0[1]
    vmlal.s32   q7, d14, d0[1]
    vmlal.s32   q8, d16, d0[1]
    vmlal.s32   q9, d18, d0[1]
    vmlal.s32   q10, d20, d0[1]
    vmlal.s32   q11, d22, d0[1]
    vmlal.s32   q12, d24, d0[1]

    // loop 3
    vmlal.s32   q1, d2, d0[1]
    vmlal.s32   q2, d4, d0[1]
    vmlal.s32   q3, d6, d0[1]
    vmlal.s32   q4, d8, d0[1]
    vmlal.s32   q5, d10, d0[1]
    vmlal.s32   q6, d12, d0[1]
    vmlal.s32   q7, d14, d0[1]
    vmlal.s32   q8, d16, d0[1]
    vmlal.s32   q9, d18, d0[1]
    vmlal.s32   q10, d20, d0[1]
    vmlal.s32   q11, d22, d0[1]
    vmlal.s32   q12, d24, d0[1]

    // loop 4
    vmlal.s32   q1, d2, d0[1]
    vmlal.s32   q2, d4, d0[1]
    vmlal.s32   q3, d6, d0[1]
    vmlal.s32   q4, d8, d0[1]
    vmlal.s32   q5, d10, d0[1]
    vmlal.s32   q6, d12, d0[1]
    vmlal.s32   q7, d14, d0[1]
    vmlal.s32   q8, d16, d0[1]
    vmlal.s32   q9, d18, d0[1]
    vmlal.s32   q10, d20, d0[1]
    vmlal.s32   q11, d22, d0[1]
    vmlal.s32   q12, d24, d0[1]

    // loop 5
    vmlal.s32   q1, d2, d0[1]
    vmlal.s32   q2, d4, d0[1]
    vmlal.s32   q3, d6, d0[1]
    vmlal.s32   q4, d8, d0[1]
    vmlal.s32   q5, d10, d0[1]
    vmlal.s32   q6, d12, d0[1]
    vmlal.s32   q7, d14, d0[1]
    vmlal.s32   q8, d16, d0[1]
    vmlal.s32   q9, d18, d0[1]
    vmlal.s32   q10, d20, d0[1]
    vmlal.s32   q11, d22, d0[1]
    vmlal.s32   q12, d24, d0[1]

    subs    r0, r0, #1
    bne     vmlalI4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlsI4ScalarMinTest:

    vpush.64    {d8-d15}

vmlsI4ScalarMinTest_LOOP:

    // loop 1
    vmls.s32    q0, q0, d11[1]
    vmls.s32    q0, q0, d0[1]
    vmls.s32    q1, q1, d1[1]
    vmls.s32    q1, q1, d2[1]
    vmls.s32    q2, q2, d3[1]
    vmls.s32    q2, q2, d4[1]
    vmls.s32    q3, q3, d5[1]
    vmls.s32    q3, q3, d6[1]
    vmls.s32    q4, q4, d7[1]
    vmls.s32    q4, q4, d8[1]
    vmls.s32    q5, q5, d9[1]
    vmls.s32    q5, q5, d10[1]

    // loop 2
    vmls.s32    q0, q0, d11[1]
    vmls.s32    q0, q0, d0[1]
    vmls.s32    q1, q1, d1[1]
    vmls.s32    q1, q1, d2[1]
    vmls.s32    q2, q2, d3[1]
    vmls.s32    q2, q2, d4[1]
    vmls.s32    q3, q3, d5[1]
    vmls.s32    q3, q3, d6[1]
    vmls.s32    q4, q4, d7[1]
    vmls.s32    q4, q4, d8[1]
    vmls.s32    q5, q5, d9[1]
    vmls.s32    q5, q5, d10[1]

    // loop 3
    vmls.s32    q0, q0, d11[1]
    vmls.s32    q0, q0, d0[1]
    vmls.s32    q1, q1, d1[1]
    vmls.s32    q1, q1, d2[1]
    vmls.s32    q2, q2, d3[1]
    vmls.s32    q2, q2, d4[1]
    vmls.s32    q3, q3, d5[1]
    vmls.s32    q3, q3, d6[1]
    vmls.s32    q4, q4, d7[1]
    vmls.s32    q4, q4, d8[1]
    vmls.s32    q5, q5, d9[1]
    vmls.s32    q5, q5, d10[1]

    // loop 4
    vmls.s32    q0, q0, d11[1]
    vmls.s32    q0, q0, d0[1]
    vmls.s32    q1, q1, d1[1]
    vmls.s32    q1, q1, d2[1]
    vmls.s32    q2, q2, d3[1]
    vmls.s32    q2, q2, d4[1]
    vmls.s32    q3, q3, d5[1]
    vmls.s32    q3, q3, d6[1]
    vmls.s32    q4, q4, d7[1]
    vmls.s32    q4, q4, d8[1]
    vmls.s32    q5, q5, d9[1]
    vmls.s32    q5, q5, d10[1]

    // loop 5
    vmls.s32    q0, q0, d11[1]
    vmls.s32    q0, q0, d0[1]
    vmls.s32    q1, q1, d1[1]
    vmls.s32    q1, q1, d2[1]
    vmls.s32    q2, q2, d3[1]
    vmls.s32    q2, q2, d4[1]
    vmls.s32    q3, q3, d5[1]
    vmls.s32    q3, q3, d6[1]
    vmls.s32    q4, q4, d7[1]
    vmls.s32    q4, q4, d8[1]
    vmls.s32    q5, q5, d9[1]
    vmls.s32    q5, q5, d10[1]

    subs    r0, r0, #1
    bne     vmlsI4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsI4ScalarMaxTest:

    vpush.64    {d8-d15}

vmlsI4ScalarMaxTest_LOOP:

    // loop 1
    vmls.s32    q1, q1, d0[1]
    vmls.s32    q2, q2, d0[1]
    vmls.s32    q3, q3, d0[1]
    vmls.s32    q4, q4, d0[1]
    vmls.s32    q5, q5, d0[1]
    vmls.s32    q6, q6, d0[1]
    vmls.s32    q7, q7, d0[1]
    vmls.s32    q8, q8, d0[1]
    vmls.s32    q9, q9, d0[1]
    vmls.s32    q10, q10, d0[1]
    vmls.s32    q11, q11, d0[1]
    vmls.s32    q12, q12, d0[1]

    // loop 2
    vmls.s32    q1, q1, d0[1]
    vmls.s32    q2, q2, d0[1]
    vmls.s32    q3, q3, d0[1]
    vmls.s32    q4, q4, d0[1]
    vmls.s32    q5, q5, d0[1]
    vmls.s32    q6, q6, d0[1]
    vmls.s32    q7, q7, d0[1]
    vmls.s32    q8, q8, d0[1]
    vmls.s32    q9, q9, d0[1]
    vmls.s32    q10, q10, d0[1]
    vmls.s32    q11, q11, d0[1]
    vmls.s32    q12, q12, d0[1]

    // loop 3
    vmls.s32    q1, q1, d0[1]
    vmls.s32    q2, q2, d0[1]
    vmls.s32    q3, q3, d0[1]
    vmls.s32    q4, q4, d0[1]
    vmls.s32    q5, q5, d0[1]
    vmls.s32    q6, q6, d0[1]
    vmls.s32    q7, q7, d0[1]
    vmls.s32    q8, q8, d0[1]
    vmls.s32    q9, q9, d0[1]
    vmls.s32    q10, q10, d0[1]
    vmls.s32    q11, q11, d0[1]
    vmls.s32    q12, q12, d0[1]

    // loop 4
    vmls.s32    q1, q1, d0[1]
    vmls.s32    q2, q2, d0[1]
    vmls.s32    q3, q3, d0[1]
    vmls.s32    q4, q4, d0[1]
    vmls.s32    q5, q5, d0[1]
    vmls.s32    q6, q6, d0[1]
    vmls.s32    q7, q7, d0[1]
    vmls.s32    q8, q8, d0[1]
    vmls.s32    q9, q9, d0[1]
    vmls.s32    q10, q10, d0[1]
    vmls.s32    q11, q11, d0[1]
    vmls.s32    q12, q12, d0[1]

    // loop 5
    vmls.s32    q1, q1, d0[1]
    vmls.s32    q2, q2, d0[1]
    vmls.s32    q3, q3, d0[1]
    vmls.s32    q4, q4, d0[1]
    vmls.s32    q5, q5, d0[1]
    vmls.s32    q6, q6, d0[1]
    vmls.s32    q7, q7, d0[1]
    vmls.s32    q8, q8, d0[1]
    vmls.s32    q9, q9, d0[1]
    vmls.s32    q10, q10, d0[1]
    vmls.s32    q11, q11, d0[1]
    vmls.s32    q12, q12, d0[1]

    subs    r0, r0, #1
    bne     vmlsI4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsF4ScalarMinTest:

    vpush.64    {d8-d15}

vmlsF4ScalarMinTest_LOOP:

    // loop 1
    vmls.f32    q0, q0, d11[1]
    vmls.f32    q0, q0, d0[1]
    vmls.f32    q1, q1, d1[1]
    vmls.f32    q1, q1, d2[1]
    vmls.f32    q2, q2, d3[1]
    vmls.f32    q2, q2, d4[1]
    vmls.f32    q3, q3, d5[1]
    vmls.f32    q3, q3, d6[1]
    vmls.f32    q4, q4, d7[1]
    vmls.f32    q4, q4, d8[1]
    vmls.f32    q5, q5, d9[1]
    vmls.f32    q5, q5, d10[1]

    // loop 2
    vmls.f32    q0, q0, d11[1]
    vmls.f32    q0, q0, d0[1]
    vmls.f32    q1, q1, d1[1]
    vmls.f32    q1, q1, d2[1]
    vmls.f32    q2, q2, d3[1]
    vmls.f32    q2, q2, d4[1]
    vmls.f32    q3, q3, d5[1]
    vmls.f32    q3, q3, d6[1]
    vmls.f32    q4, q4, d7[1]
    vmls.f32    q4, q4, d8[1]
    vmls.f32    q5, q5, d9[1]
    vmls.f32    q5, q5, d10[1]

    // loop 3
    vmls.f32    q0, q0, d11[1]
    vmls.f32    q0, q0, d0[1]
    vmls.f32    q1, q1, d1[1]
    vmls.f32    q1, q1, d2[1]
    vmls.f32    q2, q2, d3[1]
    vmls.f32    q2, q2, d4[1]
    vmls.f32    q3, q3, d5[1]
    vmls.f32    q3, q3, d6[1]
    vmls.f32    q4, q4, d7[1]
    vmls.f32    q4, q4, d8[1]
    vmls.f32    q5, q5, d9[1]
    vmls.f32    q5, q5, d10[1]

    // loop 4
    vmls.f32    q0, q0, d11[1]
    vmls.f32    q0, q0, d0[1]
    vmls.f32    q1, q1, d1[1]
    vmls.f32    q1, q1, d2[1]
    vmls.f32    q2, q2, d3[1]
    vmls.f32    q2, q2, d4[1]
    vmls.f32    q3, q3, d5[1]
    vmls.f32    q3, q3, d6[1]
    vmls.f32    q4, q4, d7[1]
    vmls.f32    q4, q4, d8[1]
    vmls.f32    q5, q5, d9[1]
    vmls.f32    q5, q5, d10[1]

    // loop 5
    vmls.f32    q0, q0, d11[1]
    vmls.f32    q0, q0, d0[1]
    vmls.f32    q1, q1, d1[1]
    vmls.f32    q1, q1, d2[1]
    vmls.f32    q2, q2, d3[1]
    vmls.f32    q2, q2, d4[1]
    vmls.f32    q3, q3, d5[1]
    vmls.f32    q3, q3, d6[1]
    vmls.f32    q4, q4, d7[1]
    vmls.f32    q4, q4, d8[1]
    vmls.f32    q5, q5, d9[1]
    vmls.f32    q5, q5, d10[1]

    subs    r0, r0, #1
    bne     vmlsF4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlsF4ScalarMaxTest:

    vpush.64    {d8-d15}

vmlsF4ScalarMaxTest_LOOP:

    // loop 1
    vmls.f32    q1, q1, d0[1]
    vmls.f32    q2, q2, d0[1]
    vmls.f32    q3, q3, d0[1]
    vmls.f32    q4, q4, d0[1]
    vmls.f32    q5, q5, d0[1]
    vmls.f32    q6, q6, d0[1]
    vmls.f32    q7, q7, d0[1]
    vmls.f32    q8, q8, d0[1]
    vmls.f32    q9, q9, d0[1]
    vmls.f32    q10, q10, d0[1]
    vmls.f32    q11, q11, d0[1]
    vmls.f32    q12, q12, d0[1]

    // loop 2
    vmls.f32    q1, q1, d0[1]
    vmls.f32    q2, q2, d0[1]
    vmls.f32    q3, q3, d0[1]
    vmls.f32    q4, q4, d0[1]
    vmls.f32    q5, q5, d0[1]
    vmls.f32    q6, q6, d0[1]
    vmls.f32    q7, q7, d0[1]
    vmls.f32    q8, q8, d0[1]
    vmls.f32    q9, q9, d0[1]
    vmls.f32    q10, q10, d0[1]
    vmls.f32    q11, q11, d0[1]
    vmls.f32    q12, q12, d0[1]

    // loop 3
    vmls.f32    q1, q1, d0[1]
    vmls.f32    q2, q2, d0[1]
    vmls.f32    q3, q3, d0[1]
    vmls.f32    q4, q4, d0[1]
    vmls.f32    q5, q5, d0[1]
    vmls.f32    q6, q6, d0[1]
    vmls.f32    q7, q7, d0[1]
    vmls.f32    q8, q8, d0[1]
    vmls.f32    q9, q9, d0[1]
    vmls.f32    q10, q10, d0[1]
    vmls.f32    q11, q11, d0[1]
    vmls.f32    q12, q12, d0[1]

    // loop 4
    vmls.f32    q1, q1, d0[1]
    vmls.f32    q2, q2, d0[1]
    vmls.f32    q3, q3, d0[1]
    vmls.f32    q4, q4, d0[1]
    vmls.f32    q5, q5, d0[1]
    vmls.f32    q6, q6, d0[1]
    vmls.f32    q7, q7, d0[1]
    vmls.f32    q8, q8, d0[1]
    vmls.f32    q9, q9, d0[1]
    vmls.f32    q10, q10, d0[1]
    vmls.f32    q11, q11, d0[1]
    vmls.f32    q12, q12, d0[1]

    // loop 5
    vmls.f32    q1, q1, d0[1]
    vmls.f32    q2, q2, d0[1]
    vmls.f32    q3, q3, d0[1]
    vmls.f32    q4, q4, d0[1]
    vmls.f32    q5, q5, d0[1]
    vmls.f32    q6, q6, d0[1]
    vmls.f32    q7, q7, d0[1]
    vmls.f32    q8, q8, d0[1]
    vmls.f32    q9, q9, d0[1]
    vmls.f32    q10, q10, d0[1]
    vmls.f32    q11, q11, d0[1]
    vmls.f32    q12, q12, d0[1]

    subs    r0, r0, #1
    bne     vmlsF4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmlslI4ScalarMinTest:

    vpush.64    {d8-d15}

vmlslI4ScalarMinTest_LOOP:

    // loop 1
    vmlsl.s32   q0, d0, d11[1]
    vmlsl.s32   q0, d1, d0[1]
    vmlsl.s32   q1, d2, d1[1]
    vmlsl.s32   q1, d3, d2[1]
    vmlsl.s32   q2, d4, d3[1]
    vmlsl.s32   q2, d5, d4[1]
    vmlsl.s32   q3, d6, d5[1]
    vmlsl.s32   q3, d7, d6[1]
    vmlsl.s32   q4, d8, d7[1]
    vmlsl.s32   q4, d9, d8[1]
    vmlsl.s32   q5, d10, d9[1]
    vmlsl.s32   q5, d11, d10[1]

    // loop 2
    vmlsl.s32   q0, d0, d11[1]
    vmlsl.s32   q0, d1, d0[1]
    vmlsl.s32   q1, d2, d1[1]
    vmlsl.s32   q1, d3, d2[1]
    vmlsl.s32   q2, d4, d3[1]
    vmlsl.s32   q2, d5, d4[1]
    vmlsl.s32   q3, d6, d5[1]
    vmlsl.s32   q3, d7, d6[1]
    vmlsl.s32   q4, d8, d7[1]
    vmlsl.s32   q4, d9, d8[1]
    vmlsl.s32   q5, d10, d9[1]
    vmlsl.s32   q5, d11, d10[1]

    // loop 3
    vmlsl.s32   q0, d0, d11[1]
    vmlsl.s32   q0, d1, d0[1]
    vmlsl.s32   q1, d2, d1[1]
    vmlsl.s32   q1, d3, d2[1]
    vmlsl.s32   q2, d4, d3[1]
    vmlsl.s32   q2, d5, d4[1]
    vmlsl.s32   q3, d6, d5[1]
    vmlsl.s32   q3, d7, d6[1]
    vmlsl.s32   q4, d8, d7[1]
    vmlsl.s32   q4, d9, d8[1]
    vmlsl.s32   q5, d10, d9[1]
    vmlsl.s32   q5, d11, d10[1]

    // loop 4
    vmlsl.s32   q0, d0, d11[1]
    vmlsl.s32   q0, d1, d0[1]
    vmlsl.s32   q1, d2, d1[1]
    vmlsl.s32   q1, d3, d2[1]
    vmlsl.s32   q2, d4, d3[1]
    vmlsl.s32   q2, d5, d4[1]
    vmlsl.s32   q3, d6, d5[1]
    vmlsl.s32   q3, d7, d6[1]
    vmlsl.s32   q4, d8, d7[1]
    vmlsl.s32   q4, d9, d8[1]
    vmlsl.s32   q5, d10, d9[1]
    vmlsl.s32   q5, d11, d10[1]

    // loop 5
    vmlsl.s32   q0, d0, d11[1]
    vmlsl.s32   q0, d1, d0[1]
    vmlsl.s32   q1, d2, d1[1]
    vmlsl.s32   q1, d3, d2[1]
    vmlsl.s32   q2, d4, d3[1]
    vmlsl.s32   q2, d5, d4[1]
    vmlsl.s32   q3, d6, d5[1]
    vmlsl.s32   q3, d7, d6[1]
    vmlsl.s32   q4, d8, d7[1]
    vmlsl.s32   q4, d9, d8[1]
    vmlsl.s32   q5, d10, d9[1]
    vmlsl.s32   q5, d11, d10[1]

    subs    r0, r0, #1
    bne     vmlslI4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmlslI4ScalarMaxTest:

    vpush.64    {d8-d15}

vmlslI4ScalarMaxTest_LOOP:

    // loop 1
    vmlsl.s32   q1, d2, d0[1]
    vmlsl.s32   q2, d4, d0[1]
    vmlsl.s32   q3, d6, d0[1]
    vmlsl.s32   q4, d8, d0[1]
    vmlsl.s32   q5, d10, d0[1]
    vmlsl.s32   q6, d12, d0[1]
    vmlsl.s32   q7, d14, d0[1]
    vmlsl.s32   q8, d16, d0[1]
    vmlsl.s32   q9, d18, d0[1]
    vmlsl.s32   q10, d20, d0[1]
    vmlsl.s32   q11, d22, d0[1]
    vmlsl.s32   q12, d24, d0[1]

    // loop 2
    vmlsl.s32   q1, d2, d0[1]
    vmlsl.s32   q2, d4, d0[1]
    vmlsl.s32   q3, d6, d0[1]
    vmlsl.s32   q4, d8, d0[1]
    vmlsl.s32   q5, d10, d0[1]
    vmlsl.s32   q6, d12, d0[1]
    vmlsl.s32   q7, d14, d0[1]
    vmlsl.s32   q8, d16, d0[1]
    vmlsl.s32   q9, d18, d0[1]
    vmlsl.s32   q10, d20, d0[1]
    vmlsl.s32   q11, d22, d0[1]
    vmlsl.s32   q12, d24, d0[1]

    // loop 3
    vmlsl.s32   q1, d2, d0[1]
    vmlsl.s32   q2, d4, d0[1]
    vmlsl.s32   q3, d6, d0[1]
    vmlsl.s32   q4, d8, d0[1]
    vmlsl.s32   q5, d10, d0[1]
    vmlsl.s32   q6, d12, d0[1]
    vmlsl.s32   q7, d14, d0[1]
    vmlsl.s32   q8, d16, d0[1]
    vmlsl.s32   q9, d18, d0[1]
    vmlsl.s32   q10, d20, d0[1]
    vmlsl.s32   q11, d22, d0[1]
    vmlsl.s32   q12, d24, d0[1]

    // loop 4
    vmlsl.s32   q1, d2, d0[1]
    vmlsl.s32   q2, d4, d0[1]
    vmlsl.s32   q3, d6, d0[1]
    vmlsl.s32   q4, d8, d0[1]
    vmlsl.s32   q5, d10, d0[1]
    vmlsl.s32   q6, d12, d0[1]
    vmlsl.s32   q7, d14, d0[1]
    vmlsl.s32   q8, d16, d0[1]
    vmlsl.s32   q9, d18, d0[1]
    vmlsl.s32   q10, d20, d0[1]
    vmlsl.s32   q11, d22, d0[1]
    vmlsl.s32   q12, d24, d0[1]

    // loop 5
    vmlsl.s32   q1, d2, d0[1]
    vmlsl.s32   q2, d4, d0[1]
    vmlsl.s32   q3, d6, d0[1]
    vmlsl.s32   q4, d8, d0[1]
    vmlsl.s32   q5, d10, d0[1]
    vmlsl.s32   q6, d12, d0[1]
    vmlsl.s32   q7, d14, d0[1]
    vmlsl.s32   q8, d16, d0[1]
    vmlsl.s32   q9, d18, d0[1]
    vmlsl.s32   q10, d20, d0[1]
    vmlsl.s32   q11, d22, d0[1]
    vmlsl.s32   q12, d24, d0[1]

    subs    r0, r0, #1
    bne     vmlslI4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmovI4ImmMinTest:

    vpush.64    {d8-d15}

vmovI4ImmMinTest_LOOP:

    // loop 1
    vmov.i32    q0, #1
    vmov.i32    q0, #2
    vmov.i32    q0, #3
    vmov.i32    q0, #4
    vmov.i32    q0, #5
    vmov.i32    q0, #6
    vmov.i32    q0, #7
    vmov.i32    q0, #8
    vmov.i32    q0, #9
    vmov.i32    q0, #10
    vmov.i32    q0, #11
    vmov.i32    q0, #12

    // loop 2
    vmov.i32    q0, #1
    vmov.i32    q0, #2
    vmov.i32    q0, #3
    vmov.i32    q0, #4
    vmov.i32    q0, #5
    vmov.i32    q0, #6
    vmov.i32    q0, #7
    vmov.i32    q0, #8
    vmov.i32    q0, #9
    vmov.i32    q0, #10
    vmov.i32    q0, #11
    vmov.i32    q0, #12

    // loop 3
    vmov.i32    q0, #1
    vmov.i32    q0, #2
    vmov.i32    q0, #3
    vmov.i32    q0, #4
    vmov.i32    q0, #5
    vmov.i32    q0, #6
    vmov.i32    q0, #7
    vmov.i32    q0, #8
    vmov.i32    q0, #9
    vmov.i32    q0, #10
    vmov.i32    q0, #11
    vmov.i32    q0, #12

    // loop 4
    vmov.i32    q0, #1
    vmov.i32    q0, #2
    vmov.i32    q0, #3
    vmov.i32    q0, #4
    vmov.i32    q0, #5
    vmov.i32    q0, #6
    vmov.i32    q0, #7
    vmov.i32    q0, #8
    vmov.i32    q0, #9
    vmov.i32    q0, #10
    vmov.i32    q0, #11
    vmov.i32    q0, #12

    // loop 5
    vmov.i32    q0, #1
    vmov.i32    q0, #2
    vmov.i32    q0, #3
    vmov.i32    q0, #4
    vmov.i32    q0, #5
    vmov.i32    q0, #6
    vmov.i32    q0, #7
    vmov.i32    q0, #8
    vmov.i32    q0, #9
    vmov.i32    q0, #10
    vmov.i32    q0, #11
    vmov.i32    q0, #12

    subs    r0, r0, #1
    bne     vmovI4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovI4ImmMaxTest:

    vpush.64    {d8-d15}

vmovI4ImmMaxTest_LOOP:

    // loop 1
    vmov.i32    q0, #1
    vmov.i32    q1, #1
    vmov.i32    q2, #1
    vmov.i32    q3, #1
    vmov.i32    q4, #1
    vmov.i32    q5, #1
    vmov.i32    q6, #1
    vmov.i32    q7, #1
    vmov.i32    q8, #1
    vmov.i32    q9, #1
    vmov.i32    q10, #1
    vmov.i32    q11, #1

    // loop 2
    vmov.i32    q0, #1
    vmov.i32    q1, #1
    vmov.i32    q2, #1
    vmov.i32    q3, #1
    vmov.i32    q4, #1
    vmov.i32    q5, #1
    vmov.i32    q6, #1
    vmov.i32    q7, #1
    vmov.i32    q8, #1
    vmov.i32    q9, #1
    vmov.i32    q10, #1
    vmov.i32    q11, #1

    // loop 3
    vmov.i32    q0, #1
    vmov.i32    q1, #1
    vmov.i32    q2, #1
    vmov.i32    q3, #1
    vmov.i32    q4, #1
    vmov.i32    q5, #1
    vmov.i32    q6, #1
    vmov.i32    q7, #1
    vmov.i32    q8, #1
    vmov.i32    q9, #1
    vmov.i32    q10, #1
    vmov.i32    q11, #1

    // loop 4
    vmov.i32    q0, #1
    vmov.i32    q1, #1
    vmov.i32    q2, #1
    vmov.i32    q3, #1
    vmov.i32    q4, #1
    vmov.i32    q5, #1
    vmov.i32    q6, #1
    vmov.i32    q7, #1
    vmov.i32    q8, #1
    vmov.i32    q9, #1
    vmov.i32    q10, #1
    vmov.i32    q11, #1

    // loop 5
    vmov.i32    q0, #1
    vmov.i32    q1, #1
    vmov.i32    q2, #1
    vmov.i32    q3, #1
    vmov.i32    q4, #1
    vmov.i32    q5, #1
    vmov.i32    q6, #1
    vmov.i32    q7, #1
    vmov.i32    q8, #1
    vmov.i32    q9, #1
    vmov.i32    q10, #1
    vmov.i32    q11, #1

    subs    r0, r0, #1
    bne     vmovI4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovF4ImmMinTest:

    vpush.64    {d8-d15}

vmovF4ImmMinTest_LOOP:

    // loop 1
    vmov.f32    q0, #0.05
    vmov.f32    q0, #0.15
    vmov.f32    q0, #0.25
    vmov.f32    q0, #0.35
    vmov.f32    q0, #0.45
    vmov.f32    q0, #0.55
    vmov.f32    q0, #0.65
    vmov.f32    q0, #0.75
    vmov.f32    q0, #0.85
    vmov.f32    q0, #0.95
    vmov.f32    q0, #1.15
    vmov.f32    q0, #1.25

    // loop 2
    vmov.f32    q0, #0.05
    vmov.f32    q0, #0.15
    vmov.f32    q0, #0.25
    vmov.f32    q0, #0.35
    vmov.f32    q0, #0.45
    vmov.f32    q0, #0.55
    vmov.f32    q0, #0.65
    vmov.f32    q0, #0.75
    vmov.f32    q0, #0.85
    vmov.f32    q0, #0.95
    vmov.f32    q0, #1.15
    vmov.f32    q0, #1.25

    // loop 3
    vmov.f32    q0, #0.05
    vmov.f32    q0, #0.15
    vmov.f32    q0, #0.25
    vmov.f32    q0, #0.35
    vmov.f32    q0, #0.45
    vmov.f32    q0, #0.55
    vmov.f32    q0, #0.65
    vmov.f32    q0, #0.75
    vmov.f32    q0, #0.85
    vmov.f32    q0, #0.95
    vmov.f32    q0, #1.15
    vmov.f32    q0, #1.25

    // loop 4
    vmov.f32    q0, #0.05
    vmov.f32    q0, #0.15
    vmov.f32    q0, #0.25
    vmov.f32    q0, #0.35
    vmov.f32    q0, #0.45
    vmov.f32    q0, #0.55
    vmov.f32    q0, #0.65
    vmov.f32    q0, #0.75
    vmov.f32    q0, #0.85
    vmov.f32    q0, #0.95
    vmov.f32    q0, #1.15
    vmov.f32    q0, #1.25

    // loop 5
    vmov.f32    q0, #0.05
    vmov.f32    q0, #0.15
    vmov.f32    q0, #0.25
    vmov.f32    q0, #0.35
    vmov.f32    q0, #0.45
    vmov.f32    q0, #0.55
    vmov.f32    q0, #0.65
    vmov.f32    q0, #0.75
    vmov.f32    q0, #0.85
    vmov.f32    q0, #0.95
    vmov.f32    q0, #1.15
    vmov.f32    q0, #1.25

    subs    r0, r0, #1
    bne     vmovF4ImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovF4ImmMaxTest:

    vpush.64    {d8-d15}

vmovF4ImmMaxTest_LOOP:

    // loop 1
    vmov.f32    q0, #0.25
    vmov.f32    q1, #0.25
    vmov.f32    q2, #0.25
    vmov.f32    q3, #0.25
    vmov.f32    q4, #0.25
    vmov.f32    q5, #0.25
    vmov.f32    q6, #0.25
    vmov.f32    q7, #0.25
    vmov.f32    q8, #0.25
    vmov.f32    q9, #0.25
    vmov.f32    q10, #0.25
    vmov.f32    q11, #0.25

    // loop 2
    vmov.f32    q0, #0.25
    vmov.f32    q1, #0.25
    vmov.f32    q2, #0.25
    vmov.f32    q3, #0.25
    vmov.f32    q4, #0.25
    vmov.f32    q5, #0.25
    vmov.f32    q6, #0.25
    vmov.f32    q7, #0.25
    vmov.f32    q8, #0.25
    vmov.f32    q9, #0.25
    vmov.f32    q10, #0.25
    vmov.f32    q11, #0.25

    // loop 3
    vmov.f32    q0, #0.25
    vmov.f32    q1, #0.25
    vmov.f32    q2, #0.25
    vmov.f32    q3, #0.25
    vmov.f32    q4, #0.25
    vmov.f32    q5, #0.25
    vmov.f32    q6, #0.25
    vmov.f32    q7, #0.25
    vmov.f32    q8, #0.25
    vmov.f32    q9, #0.25
    vmov.f32    q10, #0.25
    vmov.f32    q11, #0.25

    // loop 4
    vmov.f32    q0, #0.25
    vmov.f32    q1, #0.25
    vmov.f32    q2, #0.25
    vmov.f32    q3, #0.25
    vmov.f32    q4, #0.25
    vmov.f32    q5, #0.25
    vmov.f32    q6, #0.25
    vmov.f32    q7, #0.25
    vmov.f32    q8, #0.25
    vmov.f32    q9, #0.25
    vmov.f32    q10, #0.25
    vmov.f32    q11, #0.25

    // loop 5
    vmov.f32    q0, #0.25
    vmov.f32    q1, #0.25
    vmov.f32    q2, #0.25
    vmov.f32    q3, #0.25
    vmov.f32    q4, #0.25
    vmov.f32    q5, #0.25
    vmov.f32    q6, #0.25
    vmov.f32    q7, #0.25
    vmov.f32    q8, #0.25
    vmov.f32    q9, #0.25
    vmov.f32    q10, #0.25
    vmov.f32    q11, #0.25

    subs    r0, r0, #1
    bne     vmovF4ImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb
.thumb_func
_vmovFImmMinTest:

    vpush.64    {d8-d15}

vmovFImmMinTest_LOOP:

    // loop 1
    vmov.f32    s0, #0.75
    vmov.f32    s0, #0.5
    vmov.f32    s0, #0.25
    vmov.f32    s0, #0.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #1.5
    vmov.f32    s0, #1.25
    vmov.f32    s0, #1.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #2.0
    vmov.f32    s0, #2.125
    vmov.f32    s0, #2.25

    // loop 2
    vmov.f32    s0, #0.75
    vmov.f32    s0, #0.5
    vmov.f32    s0, #0.25
    vmov.f32    s0, #0.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #1.5
    vmov.f32    s0, #1.25
    vmov.f32    s0, #1.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #2.0
    vmov.f32    s0, #2.125
    vmov.f32    s0, #2.25

    // loop 3
    vmov.f32    s0, #0.75
    vmov.f32    s0, #0.5
    vmov.f32    s0, #0.25
    vmov.f32    s0, #0.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #1.5
    vmov.f32    s0, #1.25
    vmov.f32    s0, #1.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #2.0
    vmov.f32    s0, #2.125
    vmov.f32    s0, #2.25

    // loop 4
    vmov.f32    s0, #0.75
    vmov.f32    s0, #0.5
    vmov.f32    s0, #0.25
    vmov.f32    s0, #0.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #1.5
    vmov.f32    s0, #1.25
    vmov.f32    s0, #1.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #2.0
    vmov.f32    s0, #2.125
    vmov.f32    s0, #2.25

    // loop 5
    vmov.f32    s0, #0.75
    vmov.f32    s0, #0.5
    vmov.f32    s0, #0.25
    vmov.f32    s0, #0.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #1.5
    vmov.f32    s0, #1.25
    vmov.f32    s0, #1.125
    vmov.f32    s0, #1.75
    vmov.f32    s0, #2.0
    vmov.f32    s0, #2.125
    vmov.f32    s0, #2.25

    subs    r0, r0, #1
    bne     vmovFImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb_func
_vmovFImmMaxTest:

    vpush.64    {d8-d15}
    mov         r0, r0

vmovFImmMaxTest_LOOP:

    // loop 1
    vmov.f32    s0, #0.5
    vmov.f32    s1, #0.5
    vmov.f32    s2, #0.5
    vmov.f32    s3, #0.5
    vmov.f32    s4, #0.5
    vmov.f32    s5, #0.5
    vmov.f32    s6, #0.5
    vmov.f32    s7, #0.5
    vmov.f32    s8, #0.5
    vmov.f32    s9, #0.5
    vmov.f32    s10, #0.5
    vmov.f32    s11, #0.5

    // loop 2
    vmov.f32    s0, #0.5
    vmov.f32    s1, #0.5
    vmov.f32    s2, #0.5
    vmov.f32    s3, #0.5
    vmov.f32    s4, #0.5
    vmov.f32    s5, #0.5
    vmov.f32    s6, #0.5
    vmov.f32    s7, #0.5
    vmov.f32    s8, #0.5
    vmov.f32    s9, #0.5
    vmov.f32    s10, #0.5
    vmov.f32    s11, #0.5

    // loop 3
    vmov.f32    s0, #0.5
    vmov.f32    s1, #0.5
    vmov.f32    s2, #0.5
    vmov.f32    s3, #0.5
    vmov.f32    s4, #0.5
    vmov.f32    s5, #0.5
    vmov.f32    s6, #0.5
    vmov.f32    s7, #0.5
    vmov.f32    s8, #0.5
    vmov.f32    s9, #0.5
    vmov.f32    s10, #0.5
    vmov.f32    s11, #0.5

    // loop 4
    vmov.f32    s0, #0.5
    vmov.f32    s1, #0.5
    vmov.f32    s2, #0.5
    vmov.f32    s3, #0.5
    vmov.f32    s4, #0.5
    vmov.f32    s5, #0.5
    vmov.f32    s6, #0.5
    vmov.f32    s7, #0.5
    vmov.f32    s8, #0.5
    vmov.f32    s9, #0.5
    vmov.f32    s10, #0.5
    vmov.f32    s11, #0.5

    // loop 5
    vmov.f32    s0, #0.5
    vmov.f32    s1, #0.5
    vmov.f32    s2, #0.5
    vmov.f32    s3, #0.5
    vmov.f32    s4, #0.5
    vmov.f32    s5, #0.5
    vmov.f32    s6, #0.5
    vmov.f32    s7, #0.5
    vmov.f32    s8, #0.5
    vmov.f32    s9, #0.5
    vmov.f32    s10, #0.5
    vmov.f32    s11, #0.5

    subs    r0, r0, #1
    bne     vmovFImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb_func
_vmovDImmMinTest:

    vpush.64    {d8-d15}
    mov         r0, r0

vmovDImmMinTest_LOOP:

    // loop 1
    vmov.f64    d0, #0.75
    vmov.f64    d0, #0.5
    vmov.f64    d0, #0.25
    vmov.f64    d0, #0.125
    vmov.f64    d0, #1.75
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.125
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.75
    vmov.f64    d0, #2.125

    // loop 2
    vmov.f64    d0, #0.75
    vmov.f64    d0, #0.5
    vmov.f64    d0, #0.25
    vmov.f64    d0, #0.125
    vmov.f64    d0, #1.75
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.125
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.75
    vmov.f64    d0, #2.125

    // loop 3
    vmov.f64    d0, #0.75
    vmov.f64    d0, #0.5
    vmov.f64    d0, #0.25
    vmov.f64    d0, #0.125
    vmov.f64    d0, #1.75
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.125
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.75
    vmov.f64    d0, #2.125

    // loop 4
    vmov.f64    d0, #0.75
    vmov.f64    d0, #0.5
    vmov.f64    d0, #0.25
    vmov.f64    d0, #0.125
    vmov.f64    d0, #1.75
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.125
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.75
    vmov.f64    d0, #2.125

    // loop 5
    vmov.f64    d0, #0.75
    vmov.f64    d0, #0.5
    vmov.f64    d0, #0.25
    vmov.f64    d0, #0.125
    vmov.f64    d0, #1.75
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.125
    vmov.f64    d0, #1.25
    vmov.f64    d0, #1.5
    vmov.f64    d0, #1.75
    vmov.f64    d0, #2.125

    subs    r0, r0, #1
    bne     vmovDImmMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb_func
_vmovDImmMaxTest:

    vpush.64    {d8-d15}
    mov         r0, r0

vmovDImmMaxTest_LOOP:

    // loop 1
    vmov.f64    d0, #0.5
    vmov.f64    d1, #0.5
    vmov.f64    d2, #0.5
    vmov.f64    d3, #0.5
    vmov.f64    d4, #0.5
    vmov.f64    d5, #0.5
    vmov.f64    d6, #0.5
    vmov.f64    d7, #0.5
    vmov.f64    d8, #0.5
    vmov.f64    d9, #0.5
    vmov.f64    d10, #0.5
    vmov.f64    d11, #0.5

    // loop 2
    vmov.f64    d0, #0.5
    vmov.f64    d1, #0.5
    vmov.f64    d2, #0.5
    vmov.f64    d3, #0.5
    vmov.f64    d4, #0.5
    vmov.f64    d5, #0.5
    vmov.f64    d6, #0.5
    vmov.f64    d7, #0.5
    vmov.f64    d8, #0.5
    vmov.f64    d9, #0.5
    vmov.f64    d10, #0.5
    vmov.f64    d11, #0.5

    // loop 3
    vmov.f64    d0, #0.5
    vmov.f64    d1, #0.5
    vmov.f64    d2, #0.5
    vmov.f64    d3, #0.5
    vmov.f64    d4, #0.5
    vmov.f64    d5, #0.5
    vmov.f64    d6, #0.5
    vmov.f64    d7, #0.5
    vmov.f64    d8, #0.5
    vmov.f64    d9, #0.5
    vmov.f64    d10, #0.5
    vmov.f64    d11, #0.5

    // loop 4
    vmov.f64    d0, #0.5
    vmov.f64    d1, #0.5
    vmov.f64    d2, #0.5
    vmov.f64    d3, #0.5
    vmov.f64    d4, #0.5
    vmov.f64    d5, #0.5
    vmov.f64    d6, #0.5
    vmov.f64    d7, #0.5
    vmov.f64    d8, #0.5
    vmov.f64    d9, #0.5
    vmov.f64    d10, #0.5
    vmov.f64    d11, #0.5

    // loop 5
    vmov.f64    d0, #0.5
    vmov.f64    d1, #0.5
    vmov.f64    d2, #0.5
    vmov.f64    d3, #0.5
    vmov.f64    d4, #0.5
    vmov.f64    d5, #0.5
    vmov.f64    d6, #0.5
    vmov.f64    d7, #0.5
    vmov.f64    d8, #0.5
    vmov.f64    d9, #0.5
    vmov.f64    d10, #0.5
    vmov.f64    d11, #0.5

    subs    r0, r0, #1
    bne     vmovDImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.arm
.align 4

_vmovI4MinTest:

    vpush.64    {d8-d15}

vmovI4MinTest_LOOP:

    // loop 1
    vmov.i32    q0, q11
    vmov.i32    q1, q0
    vmov.i32    q2, q1
    vmov.i32    q3, q2
    vmov.i32    q4, q3
    vmov.i32    q5, q4
    vmov.i32    q6, q5
    vmov.i32    q7, q6
    vmov.i32    q8, q7
    vmov.i32    q9, q8
    vmov.i32    q10, q9
    vmov.i32    q11, q10

    // loop 2
    vmov.i32    q0, q11
    vmov.i32    q1, q0
    vmov.i32    q2, q1
    vmov.i32    q3, q2
    vmov.i32    q4, q3
    vmov.i32    q5, q4
    vmov.i32    q6, q5
    vmov.i32    q7, q6
    vmov.i32    q8, q7
    vmov.i32    q9, q8
    vmov.i32    q10, q9
    vmov.i32    q11, q10

    // loop 3
    vmov.i32    q0, q11
    vmov.i32    q1, q0
    vmov.i32    q2, q1
    vmov.i32    q3, q2
    vmov.i32    q4, q3
    vmov.i32    q5, q4
    vmov.i32    q6, q5
    vmov.i32    q7, q6
    vmov.i32    q8, q7
    vmov.i32    q9, q8
    vmov.i32    q10, q9
    vmov.i32    q11, q10

    // loop 4
    vmov.i32    q0, q11
    vmov.i32    q1, q0
    vmov.i32    q2, q1
    vmov.i32    q3, q2
    vmov.i32    q4, q3
    vmov.i32    q5, q4
    vmov.i32    q6, q5
    vmov.i32    q7, q6
    vmov.i32    q8, q7
    vmov.i32    q9, q8
    vmov.i32    q10, q9
    vmov.i32    q11, q10

    // loop 5
    vmov.i32    q0, q11
    vmov.i32    q1, q0
    vmov.i32    q2, q1
    vmov.i32    q3, q2
    vmov.i32    q4, q3
    vmov.i32    q5, q4
    vmov.i32    q6, q5
    vmov.i32    q7, q6
    vmov.i32    q8, q7
    vmov.i32    q9, q8
    vmov.i32    q10, q9
    vmov.i32    q11, q10

    subs    r0, r0, #1
    bne     vmovI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovI4MaxTest:

    vpush.64    {d8-d15}

vmovI4MaxTest_LOOP:

    // loop 1
    vmov.i32    q1, q0
    vmov.i32    q2, q0
    vmov.i32    q3, q0
    vmov.i32    q4, q0
    vmov.i32    q5, q0
    vmov.i32    q6, q0
    vmov.i32    q7, q0
    vmov.i32    q8, q0
    vmov.i32    q9, q0
    vmov.i32    q10, q0
    vmov.i32    q11, q0
    vmov.i32    q12, q0

    // loop 2
    vmov.i32    q1, q0
    vmov.i32    q2, q0
    vmov.i32    q3, q0
    vmov.i32    q4, q0
    vmov.i32    q5, q0
    vmov.i32    q6, q0
    vmov.i32    q7, q0
    vmov.i32    q8, q0
    vmov.i32    q9, q0
    vmov.i32    q10, q0
    vmov.i32    q11, q0
    vmov.i32    q12, q0

    // loop 3
    vmov.i32    q1, q0
    vmov.i32    q2, q0
    vmov.i32    q3, q0
    vmov.i32    q4, q0
    vmov.i32    q5, q0
    vmov.i32    q6, q0
    vmov.i32    q7, q0
    vmov.i32    q8, q0
    vmov.i32    q9, q0
    vmov.i32    q10, q0
    vmov.i32    q11, q0
    vmov.i32    q12, q0

    // loop 4
    vmov.i32    q1, q0
    vmov.i32    q2, q0
    vmov.i32    q3, q0
    vmov.i32    q4, q0
    vmov.i32    q5, q0
    vmov.i32    q6, q0
    vmov.i32    q7, q0
    vmov.i32    q8, q0
    vmov.i32    q9, q0
    vmov.i32    q10, q0
    vmov.i32    q11, q0
    vmov.i32    q12, q0

    // loop 5
    vmov.i32    q1, q0
    vmov.i32    q2, q0
    vmov.i32    q3, q0
    vmov.i32    q4, q0
    vmov.i32    q5, q0
    vmov.i32    q6, q0
    vmov.i32    q7, q0
    vmov.i32    q8, q0
    vmov.i32    q9, q0
    vmov.i32    q10, q0
    vmov.i32    q11, q0
    vmov.i32    q12, q0

    subs    r0, r0, #1
    bne     vmovI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovF4MinTest:

    vpush.64    {d8-d15}

vmovF4MinTest_LOOP:

    // loop 1
    vmov.f32    q0, q11
    vmov.f32    q1, q0
    vmov.f32    q2, q1
    vmov.f32    q3, q2
    vmov.f32    q4, q3
    vmov.f32    q5, q4
    vmov.f32    q6, q5
    vmov.f32    q7, q6
    vmov.f32    q8, q7
    vmov.f32    q9, q8
    vmov.f32    q10, q9
    vmov.f32    q11, q10

    // loop 2
    vmov.f32    q0, q11
    vmov.f32    q1, q0
    vmov.f32    q2, q1
    vmov.f32    q3, q2
    vmov.f32    q4, q3
    vmov.f32    q5, q4
    vmov.f32    q6, q5
    vmov.f32    q7, q6
    vmov.f32    q8, q7
    vmov.f32    q9, q8
    vmov.f32    q10, q9
    vmov.f32    q11, q10

    // loop 3
    vmov.f32    q0, q11
    vmov.f32    q1, q0
    vmov.f32    q2, q1
    vmov.f32    q3, q2
    vmov.f32    q4, q3
    vmov.f32    q5, q4
    vmov.f32    q6, q5
    vmov.f32    q7, q6
    vmov.f32    q8, q7
    vmov.f32    q9, q8
    vmov.f32    q10, q9
    vmov.f32    q11, q10

    // loop 4
    vmov.f32    q0, q11
    vmov.f32    q1, q0
    vmov.f32    q2, q1
    vmov.f32    q3, q2
    vmov.f32    q4, q3
    vmov.f32    q5, q4
    vmov.f32    q6, q5
    vmov.f32    q7, q6
    vmov.f32    q8, q7
    vmov.f32    q9, q8
    vmov.f32    q10, q9
    vmov.f32    q11, q10

    // loop 5
    vmov.f32    q0, q11
    vmov.f32    q1, q0
    vmov.f32    q2, q1
    vmov.f32    q3, q2
    vmov.f32    q4, q3
    vmov.f32    q5, q4
    vmov.f32    q6, q5
    vmov.f32    q7, q6
    vmov.f32    q8, q7
    vmov.f32    q9, q8
    vmov.f32    q10, q9
    vmov.f32    q11, q10

    subs    r0, r0, #1
    bne     vmovF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovF4MaxTest:

    vpush.64    {d8-d15}

vmovF4MaxTest_LOOP:

    // loop 1
    vmov.f32    q1, q0
    vmov.f32    q2, q0
    vmov.f32    q3, q0
    vmov.f32    q4, q0
    vmov.f32    q5, q0
    vmov.f32    q6, q0
    vmov.f32    q7, q0
    vmov.f32    q8, q0
    vmov.f32    q9, q0
    vmov.f32    q10, q0
    vmov.f32    q11, q0
    vmov.f32    q12, q0

    // loop 2
    vmov.f32    q1, q0
    vmov.f32    q2, q0
    vmov.f32    q3, q0
    vmov.f32    q4, q0
    vmov.f32    q5, q0
    vmov.f32    q6, q0
    vmov.f32    q7, q0
    vmov.f32    q8, q0
    vmov.f32    q9, q0
    vmov.f32    q10, q0
    vmov.f32    q11, q0
    vmov.f32    q12, q0

    // loop 3
    vmov.f32    q1, q0
    vmov.f32    q2, q0
    vmov.f32    q3, q0
    vmov.f32    q4, q0
    vmov.f32    q5, q0
    vmov.f32    q6, q0
    vmov.f32    q7, q0
    vmov.f32    q8, q0
    vmov.f32    q9, q0
    vmov.f32    q10, q0
    vmov.f32    q11, q0
    vmov.f32    q12, q0

    // loop 4
    vmov.f32    q1, q0
    vmov.f32    q2, q0
    vmov.f32    q3, q0
    vmov.f32    q4, q0
    vmov.f32    q5, q0
    vmov.f32    q6, q0
    vmov.f32    q7, q0
    vmov.f32    q8, q0
    vmov.f32    q9, q0
    vmov.f32    q10, q0
    vmov.f32    q11, q0
    vmov.f32    q12, q0

    // loop 5
    vmov.f32    q1, q0
    vmov.f32    q2, q0
    vmov.f32    q3, q0
    vmov.f32    q4, q0
    vmov.f32    q5, q0
    vmov.f32    q6, q0
    vmov.f32    q7, q0
    vmov.f32    q8, q0
    vmov.f32    q9, q0
    vmov.f32    q10, q0
    vmov.f32    q11, q0
    vmov.f32    q12, q0

    subs    r0, r0, #1
    bne     vmovF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb
.thumb_func
_vmovFMinTest:

    vpush.64    {d8-d15}

vmovFMinTest_LOOP:

    // loop 1
    vmov.f32    s0, s11
    vmov.f32    s1, s0
    vmov.f32    s2, s1
    vmov.f32    s3, s2
    vmov.f32    s4, s3
    vmov.f32    s5, s4
    vmov.f32    s6, s5
    vmov.f32    s7, s6
    vmov.f32    s8, s7
    vmov.f32    s9, s8
    vmov.f32    s10, s9
    vmov.f32    s11, s10

    // loop 2
    vmov.f32    s0, s11
    vmov.f32    s1, s0
    vmov.f32    s2, s1
    vmov.f32    s3, s2
    vmov.f32    s4, s3
    vmov.f32    s5, s4
    vmov.f32    s6, s5
    vmov.f32    s7, s6
    vmov.f32    s8, s7
    vmov.f32    s9, s8
    vmov.f32    s10, s9
    vmov.f32    s11, s10

    // loop 3
    vmov.f32    s0, s11
    vmov.f32    s1, s0
    vmov.f32    s2, s1
    vmov.f32    s3, s2
    vmov.f32    s4, s3
    vmov.f32    s5, s4
    vmov.f32    s6, s5
    vmov.f32    s7, s6
    vmov.f32    s8, s7
    vmov.f32    s9, s8
    vmov.f32    s10, s9
    vmov.f32    s11, s10

    // loop 4
    vmov.f32    s0, s11
    vmov.f32    s1, s0
    vmov.f32    s2, s1
    vmov.f32    s3, s2
    vmov.f32    s4, s3
    vmov.f32    s5, s4
    vmov.f32    s6, s5
    vmov.f32    s7, s6
    vmov.f32    s8, s7
    vmov.f32    s9, s8
    vmov.f32    s10, s9
    vmov.f32    s11, s10

    // loop 5
    vmov.f32    s0, s11
    vmov.f32    s1, s0
    vmov.f32    s2, s1
    vmov.f32    s3, s2
    vmov.f32    s4, s3
    vmov.f32    s5, s4
    vmov.f32    s6, s5
    vmov.f32    s7, s6
    vmov.f32    s8, s7
    vmov.f32    s9, s8
    vmov.f32    s10, s9
    vmov.f32    s11, s10

    subs    r0, r0, #1
    bne     vmovFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb_func
_vmovFMaxTest:

    vpush.64    {d8-d15}
    mov     r0, r0

vmovFMaxTest_LOOP:

    // loop 1
    vmov.f32    s1, s0
    vmov.f32    s2, s0
    vmov.f32    s3, s0
    vmov.f32    s4, s0
    vmov.f32    s5, s0
    vmov.f32    s6, s0
    vmov.f32    s7, s0
    vmov.f32    s8, s0
    vmov.f32    s9, s0
    vmov.f32    s10, s0
    vmov.f32    s11, s0
    vmov.f32    s12, s0

    // loop 2
    vmov.f32    s1, s0
    vmov.f32    s2, s0
    vmov.f32    s3, s0
    vmov.f32    s4, s0
    vmov.f32    s5, s0
    vmov.f32    s6, s0
    vmov.f32    s7, s0
    vmov.f32    s8, s0
    vmov.f32    s9, s0
    vmov.f32    s10, s0
    vmov.f32    s11, s0
    vmov.f32    s12, s0

    // loop 3
    vmov.f32    s1, s0
    vmov.f32    s2, s0
    vmov.f32    s3, s0
    vmov.f32    s4, s0
    vmov.f32    s5, s0
    vmov.f32    s6, s0
    vmov.f32    s7, s0
    vmov.f32    s8, s0
    vmov.f32    s9, s0
    vmov.f32    s10, s0
    vmov.f32    s11, s0
    vmov.f32    s12, s0

    // loop 4
    vmov.f32    s1, s0
    vmov.f32    s2, s0
    vmov.f32    s3, s0
    vmov.f32    s4, s0
    vmov.f32    s5, s0
    vmov.f32    s6, s0
    vmov.f32    s7, s0
    vmov.f32    s8, s0
    vmov.f32    s9, s0
    vmov.f32    s10, s0
    vmov.f32    s11, s0
    vmov.f32    s12, s0

    // loop 5
    vmov.f32    s1, s0
    vmov.f32    s2, s0
    vmov.f32    s3, s0
    vmov.f32    s4, s0
    vmov.f32    s5, s0
    vmov.f32    s6, s0
    vmov.f32    s7, s0
    vmov.f32    s8, s0
    vmov.f32    s9, s0
    vmov.f32    s10, s0
    vmov.f32    s11, s0
    vmov.f32    s12, s0

    subs    r0, r0, #1
    bne     vmovFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb_func
_vmovDMinTest:

    vpush.64    {d8-d15}
    mov     r0, r0

vmovDMinTest_LOOP:

    // loop 1
    vmov.f64    d0, d11
    vmov.f64    d1, d0
    vmov.f64    d2, d1
    vmov.f64    d3, d2
    vmov.f64    d4, d3
    vmov.f64    d5, d4
    vmov.f64    d6, d5
    vmov.f64    d7, d6
    vmov.f64    d8, d7
    vmov.f64    d9, d8
    vmov.f64    d10, d9
    vmov.f64    d11, d10

    // loop 2
    vmov.f64    d0, d11
    vmov.f64    d1, d0
    vmov.f64    d2, d1
    vmov.f64    d3, d2
    vmov.f64    d4, d3
    vmov.f64    d5, d4
    vmov.f64    d6, d5
    vmov.f64    d7, d6
    vmov.f64    d8, d7
    vmov.f64    d9, d8
    vmov.f64    d10, d9
    vmov.f64    d11, d10

    // loop 3
    vmov.f64    d0, d11
    vmov.f64    d1, d0
    vmov.f64    d2, d1
    vmov.f64    d3, d2
    vmov.f64    d4, d3
    vmov.f64    d5, d4
    vmov.f64    d6, d5
    vmov.f64    d7, d6
    vmov.f64    d8, d7
    vmov.f64    d9, d8
    vmov.f64    d10, d9
    vmov.f64    d11, d10

    // loop 4
    vmov.f64    d0, d11
    vmov.f64    d1, d0
    vmov.f64    d2, d1
    vmov.f64    d3, d2
    vmov.f64    d4, d3
    vmov.f64    d5, d4
    vmov.f64    d6, d5
    vmov.f64    d7, d6
    vmov.f64    d8, d7
    vmov.f64    d9, d8
    vmov.f64    d10, d9
    vmov.f64    d11, d10

    // loop 5
    vmov.f64    d0, d11
    vmov.f64    d1, d0
    vmov.f64    d2, d1
    vmov.f64    d3, d2
    vmov.f64    d4, d3
    vmov.f64    d5, d4
    vmov.f64    d6, d5
    vmov.f64    d7, d6
    vmov.f64    d8, d7
    vmov.f64    d9, d8
    vmov.f64    d10, d9
    vmov.f64    d11, d10

    subs    r0, r0, #1
    bne     vmovDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.thumb_func
_vmovDMaxTest:

    vpush.64    {d8-d15}
    mov     r0, r0

vmovDMaxTest_LOOP:

    // loop 1
    vmov.f64    d1, d0
    vmov.f64    d2, d0
    vmov.f64    d3, d0
    vmov.f64    d4, d0
    vmov.f64    d5, d0
    vmov.f64    d6, d0
    vmov.f64    d7, d0
    vmov.f64    d8, d0
    vmov.f64    d9, d0
    vmov.f64    d10, d0
    vmov.f64    d11, d0
    vmov.f64    d12, d0

    // loop 2
    vmov.f64    d1, d0
    vmov.f64    d2, d0
    vmov.f64    d3, d0
    vmov.f64    d4, d0
    vmov.f64    d5, d0
    vmov.f64    d6, d0
    vmov.f64    d7, d0
    vmov.f64    d8, d0
    vmov.f64    d9, d0
    vmov.f64    d10, d0
    vmov.f64    d11, d0
    vmov.f64    d12, d0

    // loop 3
    vmov.f64    d1, d0
    vmov.f64    d2, d0
    vmov.f64    d3, d0
    vmov.f64    d4, d0
    vmov.f64    d5, d0
    vmov.f64    d6, d0
    vmov.f64    d7, d0
    vmov.f64    d8, d0
    vmov.f64    d9, d0
    vmov.f64    d10, d0
    vmov.f64    d11, d0
    vmov.f64    d12, d0

    // loop 4
    vmov.f64    d1, d0
    vmov.f64    d2, d0
    vmov.f64    d3, d0
    vmov.f64    d4, d0
    vmov.f64    d5, d0
    vmov.f64    d6, d0
    vmov.f64    d7, d0
    vmov.f64    d8, d0
    vmov.f64    d9, d0
    vmov.f64    d10, d0
    vmov.f64    d11, d0
    vmov.f64    d12, d0

    // loop 5
    vmov.f64    d1, d0
    vmov.f64    d2, d0
    vmov.f64    d3, d0
    vmov.f64    d4, d0
    vmov.f64    d5, d0
    vmov.f64    d6, d0
    vmov.f64    d7, d0
    vmov.f64    d8, d0
    vmov.f64    d9, d0
    vmov.f64    d10, d0
    vmov.f64    d11, d0
    vmov.f64    d12, d0

    subs    r0, r0, #1
    bne     vmovDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

.arm
.align 4

_vmovScalarRegMinTest:

    vpush.64    {d8-d15}

vmovScalarRegMinTest_LOOP:

    // loop 1
    vmov.32     d0[1], r0
    vmov.32     d0[1], r1
    vmov.32     d0[1], r2
    vmov.32     d0[1], r3
    vmov.32     d0[1], r4
    vmov.32     d0[1], r5
    vmov.32     d0[1], r6
    vmov.32     d0[1], r7
    vmov.32     d0[1], r8
    vmov.32     d0[1], r9
    vmov.32     d0[1], r10
    vmov.32     d0[1], r11

    // loop 2
    vmov.32     d0[1], r0
    vmov.32     d0[1], r1
    vmov.32     d0[1], r2
    vmov.32     d0[1], r3
    vmov.32     d0[1], r4
    vmov.32     d0[1], r5
    vmov.32     d0[1], r6
    vmov.32     d0[1], r7
    vmov.32     d0[1], r8
    vmov.32     d0[1], r9
    vmov.32     d0[1], r10
    vmov.32     d0[1], r11

    // loop 3
    vmov.32     d0[1], r0
    vmov.32     d0[1], r1
    vmov.32     d0[1], r2
    vmov.32     d0[1], r3
    vmov.32     d0[1], r4
    vmov.32     d0[1], r5
    vmov.32     d0[1], r6
    vmov.32     d0[1], r7
    vmov.32     d0[1], r8
    vmov.32     d0[1], r9
    vmov.32     d0[1], r10
    vmov.32     d0[1], r11

    // loop 4
    vmov.32     d0[1], r0
    vmov.32     d0[1], r1
    vmov.32     d0[1], r2
    vmov.32     d0[1], r3
    vmov.32     d0[1], r4
    vmov.32     d0[1], r5
    vmov.32     d0[1], r6
    vmov.32     d0[1], r7
    vmov.32     d0[1], r8
    vmov.32     d0[1], r9
    vmov.32     d0[1], r10
    vmov.32     d0[1], r11

    // loop 5
    vmov.32     d0[1], r0
    vmov.32     d0[1], r1
    vmov.32     d0[1], r2
    vmov.32     d0[1], r3
    vmov.32     d0[1], r4
    vmov.32     d0[1], r5
    vmov.32     d0[1], r6
    vmov.32     d0[1], r7
    vmov.32     d0[1], r8
    vmov.32     d0[1], r9
    vmov.32     d0[1], r10
    vmov.32     d0[1], r11

    subs    r0, r0, #1
    bne     vmovScalarRegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovScalarRegMaxTest:

    vpush.64    {d8-d15}

vmovScalarRegMaxTest_LOOP:

    // loop 1
    vmov.32     d0[0], r0
    vmov.32     d1[0], r1
    vmov.32     d2[0], r2
    vmov.32     d3[0], r3
    vmov.32     d4[0], r4
    vmov.32     d5[0], r5
    vmov.32     d6[0], r6
    vmov.32     d7[0], r7
    vmov.32     d8[0], r8
    vmov.32     d9[0], r9
    vmov.32     d10[0], r10
    vmov.32     d11[0], r11

    // loop 2
    vmov.32     d0[0], r0
    vmov.32     d1[0], r1
    vmov.32     d2[0], r2
    vmov.32     d3[0], r3
    vmov.32     d4[0], r4
    vmov.32     d5[0], r5
    vmov.32     d6[0], r6
    vmov.32     d7[0], r7
    vmov.32     d8[0], r8
    vmov.32     d9[0], r9
    vmov.32     d10[0], r10
    vmov.32     d11[0], r11

    // loop 3
    vmov.32     d0[0], r0
    vmov.32     d1[0], r1
    vmov.32     d2[0], r2
    vmov.32     d3[0], r3
    vmov.32     d4[0], r4
    vmov.32     d5[0], r5
    vmov.32     d6[0], r6
    vmov.32     d7[0], r7
    vmov.32     d8[0], r8
    vmov.32     d9[0], r9
    vmov.32     d10[0], r10
    vmov.32     d11[0], r11

    // loop 4
    vmov.32     d0[0], r0
    vmov.32     d1[0], r1
    vmov.32     d2[0], r2
    vmov.32     d3[0], r3
    vmov.32     d4[0], r4
    vmov.32     d5[0], r5
    vmov.32     d6[0], r6
    vmov.32     d7[0], r7
    vmov.32     d8[0], r8
    vmov.32     d9[0], r9
    vmov.32     d10[0], r10
    vmov.32     d11[0], r11

    // loop 5
    vmov.32     d0[0], r0
    vmov.32     d1[0], r1
    vmov.32     d2[0], r2
    vmov.32     d3[0], r3
    vmov.32     d4[0], r4
    vmov.32     d5[0], r5
    vmov.32     d6[0], r6
    vmov.32     d7[0], r7
    vmov.32     d8[0], r8
    vmov.32     d9[0], r9
    vmov.32     d10[0], r10
    vmov.32     d11[0], r11

    subs    r0, r0, #1
    bne     vmovScalarRegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovRegScalarMinTest:

    vpush.64    {d8-d15}

vmovRegScalarMinTest_LOOP:

    // loop 1
    vmov.32     r1, d0[1]
    vmov.32     r1, d1[1]
    vmov.32     r1, d2[1]
    vmov.32     r1, d3[1]
    vmov.32     r1, d4[1]
    vmov.32     r1, d5[1]
    vmov.32     r1, d6[1]
    vmov.32     r1, d7[1]
    vmov.32     r1, d8[1]
    vmov.32     r1, d9[1]
    vmov.32     r1, d10[1]
    vmov.32     r1, d11[1]

     // loop 2
    vmov.32     r1, d0[1]
    vmov.32     r1, d1[1]
    vmov.32     r1, d2[1]
    vmov.32     r1, d3[1]
    vmov.32     r1, d4[1]
    vmov.32     r1, d5[1]
    vmov.32     r1, d6[1]
    vmov.32     r1, d7[1]
    vmov.32     r1, d8[1]
    vmov.32     r1, d9[1]
    vmov.32     r1, d10[1]
    vmov.32     r1, d11[1]

    // loop 3
    vmov.32     r1, d0[1]
    vmov.32     r1, d1[1]
    vmov.32     r1, d2[1]
    vmov.32     r1, d3[1]
    vmov.32     r1, d4[1]
    vmov.32     r1, d5[1]
    vmov.32     r1, d6[1]
    vmov.32     r1, d7[1]
    vmov.32     r1, d8[1]
    vmov.32     r1, d9[1]
    vmov.32     r1, d10[1]
    vmov.32     r1, d11[1]

    // loop 4
    vmov.32     r1, d0[1]
    vmov.32     r1, d1[1]
    vmov.32     r1, d2[1]
    vmov.32     r1, d3[1]
    vmov.32     r1, d4[1]
    vmov.32     r1, d5[1]
    vmov.32     r1, d6[1]
    vmov.32     r1, d7[1]
    vmov.32     r1, d8[1]
    vmov.32     r1, d9[1]
    vmov.32     r1, d10[1]
    vmov.32     r1, d11[1]

    // loop 5
    vmov.32     r1, d0[1]
    vmov.32     r1, d1[1]
    vmov.32     r1, d2[1]
    vmov.32     r1, d3[1]
    vmov.32     r1, d4[1]
    vmov.32     r1, d5[1]
    vmov.32     r1, d6[1]
    vmov.32     r1, d7[1]
    vmov.32     r1, d8[1]
    vmov.32     r1, d9[1]
    vmov.32     r1, d10[1]
    vmov.32     r1, d11[1]

    subs    r0, r0, #1
    bne     vmovRegScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovRegScalarMaxTest:

    push        {r4-r11, lr}
    vpush.64    {d8-d15}

vmovRegScalarMaxTest_LOOP:

    // loop 1
    vmov.32     r1, d0[1]
    vmov.32     r2, d0[1]
    vmov.32     r3, d0[1]
    vmov.32     r4, d0[1]
    vmov.32     r5, d0[1]
    vmov.32     r6, d0[1]
    vmov.32     r7, d0[1]
    vmov.32     r8, d0[1]
    vmov.32     r9, d0[1]
    vmov.32     r10, d0[1]
    vmov.32     r11, d0[1]
    vmov.32     r12, d0[1]

    // loop 2
    vmov.32     r1, d0[1]
    vmov.32     r2, d0[1]
    vmov.32     r3, d0[1]
    vmov.32     r4, d0[1]
    vmov.32     r5, d0[1]
    vmov.32     r6, d0[1]
    vmov.32     r7, d0[1]
    vmov.32     r8, d0[1]
    vmov.32     r9, d0[1]
    vmov.32     r10, d0[1]
    vmov.32     r11, d0[1]
    vmov.32     r12, d0[1]

    // loop 3
    vmov.32     r1, d0[1]
    vmov.32     r2, d0[1]
    vmov.32     r3, d0[1]
    vmov.32     r4, d0[1]
    vmov.32     r5, d0[1]
    vmov.32     r6, d0[1]
    vmov.32     r7, d0[1]
    vmov.32     r8, d0[1]
    vmov.32     r9, d0[1]
    vmov.32     r10, d0[1]
    vmov.32     r11, d0[1]
    vmov.32     r12, d0[1]

    // loop 4
    vmov.32     r1, d0[1]
    vmov.32     r2, d0[1]
    vmov.32     r3, d0[1]
    vmov.32     r4, d0[1]
    vmov.32     r5, d0[1]
    vmov.32     r6, d0[1]
    vmov.32     r7, d0[1]
    vmov.32     r8, d0[1]
    vmov.32     r9, d0[1]
    vmov.32     r10, d0[1]
    vmov.32     r11, d0[1]
    vmov.32     r12, d0[1]

    // loop 5
    vmov.32     r1, d0[1]
    vmov.32     r2, d0[1]
    vmov.32     r3, d0[1]
    vmov.32     r4, d0[1]
    vmov.32     r5, d0[1]
    vmov.32     r6, d0[1]
    vmov.32     r7, d0[1]
    vmov.32     r8, d0[1]
    vmov.32     r9, d0[1]
    vmov.32     r10, d0[1]
    vmov.32     r11, d0[1]
    vmov.32     r12, d0[1]

    subs    r0, r0, #1
    bne     vmovRegScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    pop         {r4-r11, pc}


_vmovSRegMinTest:

    vpush.64    {d8-d15}

vmovSRegMinTest_LOOP:

    // loop 1
    vmov        s0, r1
    vmov        s0, r2
    vmov        s0, r3
    vmov        s0, r4
    vmov        s0, r5
    vmov        s0, r6
    vmov        s0, r7
    vmov        s0, r8
    vmov        s0, r9
    vmov        s0, r10
    vmov        s0, r11
    vmov        s0, r12

    // loop 2
    vmov        s0, r1
    vmov        s0, r2
    vmov        s0, r3
    vmov        s0, r4
    vmov        s0, r5
    vmov        s0, r6
    vmov        s0, r7
    vmov        s0, r8
    vmov        s0, r9
    vmov        s0, r10
    vmov        s0, r11
    vmov        s0, r12

    // loop 3
    vmov        s0, r1
    vmov        s0, r2
    vmov        s0, r3
    vmov        s0, r4
    vmov        s0, r5
    vmov        s0, r6
    vmov        s0, r7
    vmov        s0, r8
    vmov        s0, r9
    vmov        s0, r10
    vmov        s0, r11
    vmov        s0, r12

    // loop 4
    vmov        s0, r1
    vmov        s0, r2
    vmov        s0, r3
    vmov        s0, r4
    vmov        s0, r5
    vmov        s0, r6
    vmov        s0, r7
    vmov        s0, r8
    vmov        s0, r9
    vmov        s0, r10
    vmov        s0, r11
    vmov        s0, r12

    // loop 5
    vmov        s0, r1
    vmov        s0, r2
    vmov        s0, r3
    vmov        s0, r4
    vmov        s0, r5
    vmov        s0, r6
    vmov        s0, r7
    vmov        s0, r8
    vmov        s0, r9
    vmov        s0, r10
    vmov        s0, r11
    vmov        s0, r12

    subs    r0, r0, #1
    bne     vmovSRegMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovSRegMaxTest:

    vpush.64    {d8-d15}

vmovSRegMaxTest_LOOP:

    // loop 1
    vmov        s0, r1
    vmov        s1, r2
    vmov        s2, r3
    vmov        s3, r4
    vmov        s4, r5
    vmov        s5, r6
    vmov        s6, r7
    vmov        s7, r8
    vmov        s8, r9
    vmov        s9, r10
    vmov        s10, r11
    vmov        s11, r12

    // loop 2
    vmov        s0, r1
    vmov        s1, r2
    vmov        s2, r3
    vmov        s3, r4
    vmov        s4, r5
    vmov        s5, r6
    vmov        s6, r7
    vmov        s7, r8
    vmov        s8, r9
    vmov        s9, r10
    vmov        s10, r11
    vmov        s11, r12

    // loop 3
    vmov        s0, r1
    vmov        s1, r2
    vmov        s2, r3
    vmov        s3, r4
    vmov        s4, r5
    vmov        s5, r6
    vmov        s6, r7
    vmov        s7, r8
    vmov        s8, r9
    vmov        s9, r10
    vmov        s10, r11
    vmov        s11, r12

    // loop 4
    vmov        s0, r1
    vmov        s1, r2
    vmov        s2, r3
    vmov        s3, r4
    vmov        s4, r5
    vmov        s5, r6
    vmov        s6, r7
    vmov        s7, r8
    vmov        s8, r9
    vmov        s9, r10
    vmov        s10, r11
    vmov        s11, r12

    // loop 5
    vmov        s0, r1
    vmov        s1, r2
    vmov        s2, r3
    vmov        s3, r4
    vmov        s4, r5
    vmov        s5, r6
    vmov        s6, r7
    vmov        s7, r8
    vmov        s8, r9
    vmov        s9, r10
    vmov        s10, r11
    vmov        s11, r12

    subs    r0, r0, #1
    bne     vmovSRegMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovRegSMinTest:

    vpush.64    {d8-d15}

vmovRegSMinTest_LOOP:

    // loop 1
    vmov        r1, s0
    vmov        r1, s1
    vmov        r1, s2
    vmov        r1, s3
    vmov        r1, s4
    vmov        r1, s5
    vmov        r1, s6
    vmov        r1, s7
    vmov        r1, s8
    vmov        r1, s9
    vmov        r1, s10
    vmov        r1, s11
    
    // loop 2
    vmov        r1, s0
    vmov        r1, s1
    vmov        r1, s2
    vmov        r1, s3
    vmov        r1, s4
    vmov        r1, s5
    vmov        r1, s6
    vmov        r1, s7
    vmov        r1, s8
    vmov        r1, s9
    vmov        r1, s10
    vmov        r1, s11

    // loop 3
    vmov        r1, s0
    vmov        r1, s1
    vmov        r1, s2
    vmov        r1, s3
    vmov        r1, s4
    vmov        r1, s5
    vmov        r1, s6
    vmov        r1, s7
    vmov        r1, s8
    vmov        r1, s9
    vmov        r1, s10
    vmov        r1, s11

    // loop 4
    vmov        r1, s0
    vmov        r1, s1
    vmov        r1, s2
    vmov        r1, s3
    vmov        r1, s4
    vmov        r1, s5
    vmov        r1, s6
    vmov        r1, s7
    vmov        r1, s8
    vmov        r1, s9
    vmov        r1, s10
    vmov        r1, s11

    // loop 5
    vmov        r1, s0
    vmov        r1, s1
    vmov        r1, s2
    vmov        r1, s3
    vmov        r1, s4
    vmov        r1, s5
    vmov        r1, s6
    vmov        r1, s7
    vmov        r1, s8
    vmov        r1, s9
    vmov        r1, s10
    vmov        r1, s11

    subs    r0, r0, #1
    bne     vmovRegSMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovRegSMaxTest:

    push        {r4-r11, lr}
    vpush.64    {d8-d15}

vmovRegSMaxTest_LOOP:

    // loop 1
    vmov        r1, s0
    vmov        r2, s1
    vmov        r3, s2
    vmov        r4, s3
    vmov        r5, s4
    vmov        r6, s5
    vmov        r7, s6
    vmov        r8, s7
    vmov        r9, s8
    vmov        r10, s9
    vmov        r11, s10
    vmov        r12, s11

    // loop 2
    vmov        r1, s0
    vmov        r2, s1
    vmov        r3, s2
    vmov        r4, s3
    vmov        r5, s4
    vmov        r6, s5
    vmov        r7, s6
    vmov        r8, s7
    vmov        r9, s8
    vmov        r10, s9
    vmov        r11, s10
    vmov        r12, s11

    // loop 3
    vmov        r1, s0
    vmov        r2, s1
    vmov        r3, s2
    vmov        r4, s3
    vmov        r5, s4
    vmov        r6, s5
    vmov        r7, s6
    vmov        r8, s7
    vmov        r9, s8
    vmov        r10, s9
    vmov        r11, s10
    vmov        r12, s11

    // loop 4
    vmov        r1, s0
    vmov        r2, s1
    vmov        r3, s2
    vmov        r4, s3
    vmov        r5, s4
    vmov        r6, s5
    vmov        r7, s6
    vmov        r8, s7
    vmov        r9, s8
    vmov        r10, s9
    vmov        r11, s10
    vmov        r12, s11

    // loop 5
    vmov        r1, s0
    vmov        r2, s1
    vmov        r3, s2
    vmov        r4, s3
    vmov        r5, s4
    vmov        r6, s5
    vmov        r7, s6
    vmov        r8, s7
    vmov        r9, s8
    vmov        r10, s9
    vmov        r11, s10
    vmov        r12, s11

    subs    r0, r0, #1
    bne     vmovRegSMaxTest_LOOP
    vpop.64     {d8-d15}
    pop         {r4-r11, pc}


_vmovSRegDualMinTest:

    vpush.64    {d8-d15}

vmovSRegDualMinTest_LOOP:

    // loop 1
    vmov    s0, s1, r1, r2
    vmov    s0, s1, r2, r3
    vmov    s0, s1, r3, r4
    vmov    s0, s1, r4, r5
    vmov    s0, s1, r5, r6
    vmov    s0, s1, r6, r7
    vmov    s0, s1, r7, r8
    vmov    s0, s1, r8, r9
    vmov    s0, s1, r10, r11
    vmov    s0, s1, r12, r14

    // loop 2
    vmov    s0, s1, r1, r2
    vmov    s0, s1, r2, r3
    vmov    s0, s1, r3, r4
    vmov    s0, s1, r4, r5
    vmov    s0, s1, r5, r6
    vmov    s0, s1, r6, r7
    vmov    s0, s1, r7, r8
    vmov    s0, s1, r8, r9
    vmov    s0, s1, r10, r11
    vmov    s0, s1, r12, r14

    // loop 3
    vmov    s0, s1, r1, r2
    vmov    s0, s1, r2, r3
    vmov    s0, s1, r3, r4
    vmov    s0, s1, r4, r5
    vmov    s0, s1, r5, r6
    vmov    s0, s1, r6, r7
    vmov    s0, s1, r7, r8
    vmov    s0, s1, r8, r9
    vmov    s0, s1, r10, r11
    vmov    s0, s1, r12, r14

    // loop 4
    vmov    s0, s1, r1, r2
    vmov    s0, s1, r2, r3
    vmov    s0, s1, r3, r4
    vmov    s0, s1, r4, r5
    vmov    s0, s1, r5, r6
    vmov    s0, s1, r6, r7
    vmov    s0, s1, r7, r8
    vmov    s0, s1, r8, r9
    vmov    s0, s1, r10, r11
    vmov    s0, s1, r12, r14

    // loop 5
    vmov    s0, s1, r1, r2
    vmov    s0, s1, r2, r3
    vmov    s0, s1, r3, r4
    vmov    s0, s1, r4, r5
    vmov    s0, s1, r5, r6
    vmov    s0, s1, r6, r7
    vmov    s0, s1, r7, r8
    vmov    s0, s1, r8, r9
    vmov    s0, s1, r10, r11
    vmov    s0, s1, r12, r14

    // loop 6
    vmov    s0, s1, r1, r2
    vmov    s0, s1, r2, r3
    vmov    s0, s1, r3, r4
    vmov    s0, s1, r4, r5
    vmov    s0, s1, r5, r6
    vmov    s0, s1, r6, r7
    vmov    s0, s1, r7, r8
    vmov    s0, s1, r8, r9
    vmov    s0, s1, r10, r11
    vmov    s0, s1, r12, r14

    subs    r0, r0, #1
    bne     vmovSRegDualMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vmovSRegDualMaxTest:

    vpush.64    {d8-d15}

vmovSRegDualMaxTest_LOOP:

    // loop 1
    vmov    s0, s1, r1, r2
    vmov    s2, s3, r3, r4
    vmov    s4, s5, r5, r6
    vmov    s6, s7, r7, r8
    vmov    s8, s9, r1, r2
    vmov    s10, s11, r3, r4
    vmov    s12, s13, r5, r6
    vmov    s14, s15, r7, r8
    vmov    s16, s17, r9, r10
    vmov    s18, s19, r11, r12

    // loop 2
    vmov    s0, s1, r1, r2
    vmov    s2, s3, r3, r4
    vmov    s4, s5, r5, r6
    vmov    s6, s7, r7, r8
    vmov    s8, s9, r1, r2
    vmov    s10, s11, r3, r4
    vmov    s12, s13, r5, r6
    vmov    s14, s15, r7, r8
    vmov    s16, s17, r9, r10
    vmov    s18, s19, r11, r12

    // loop 3
    vmov    s0, s1, r1, r2
    vmov    s2, s3, r3, r4
    vmov    s4, s5, r5, r6
    vmov    s6, s7, r7, r8
    vmov    s8, s9, r1, r2
    vmov    s10, s11, r3, r4
    vmov    s12, s13, r5, r6
    vmov    s14, s15, r7, r8
    vmov    s16, s17, r9, r10
    vmov    s18, s19, r11, r12

    // loop 4
    vmov    s0, s1, r1, r2
    vmov    s2, s3, r3, r4
    vmov    s4, s5, r5, r6
    vmov    s6, s7, r7, r8
    vmov    s8, s9, r1, r2
    vmov    s10, s11, r3, r4
    vmov    s12, s13, r5, r6
    vmov    s14, s15, r7, r8
    vmov    s16, s17, r9, r10
    vmov    s18, s19, r11, r12

    // loop 5
    vmov    s0, s1, r1, r2
    vmov    s2, s3, r3, r4
    vmov    s4, s5, r5, r6
    vmov    s6, s7, r7, r8
    vmov    s8, s9, r1, r2
    vmov    s10, s11, r3, r4
    vmov    s12, s13, r5, r6
    vmov    s14, s15, r7, r8
    vmov    s16, s17, r9, r10
    vmov    s18, s19, r11, r12

    // loop 6
    vmov    s0, s1, r1, r2
    vmov    s2, s3, r3, r4
    vmov    s4, s5, r5, r6
    vmov    s6, s7, r7, r8
    vmov    s8, s9, r1, r2
    vmov    s10, s11, r3, r4
    vmov    s12, s13, r5, r6
    vmov    s14, s15, r7, r8
    vmov    s16, s17, r9, r10
    vmov    s18, s19, r11, r12

    subs    r0, r0, #1
    bne     vmovSRegDualMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vmovRegSDualMinTest:

    vpush.64    {d8-d15}

vmovRegSDualMinTest_LOOP:

    // loop 1
    vmov    r1, r2, s0, s1
    vmov    r1, r2, s2, s3
    vmov    r1, r2, s4, s5
    vmov    r1, r2, s6, s7
    vmov    r1, r2, s8, s9
    vmov    r1, r2, s10, s11
    vmov    r1, r2, s12, s13
    vmov    r1, r2, s14, s15
    vmov    r1, r2, s16, s17
    vmov    r1, r2, s18, s19
    vmov    r1, r2, s20, s21
    vmov    r1, r2, s22, s23

    // loop 2
    vmov    r1, r2, s0, s1
    vmov    r1, r2, s2, s3
    vmov    r1, r2, s4, s5
    vmov    r1, r2, s6, s7
    vmov    r1, r2, s8, s9
    vmov    r1, r2, s10, s11
    vmov    r1, r2, s12, s13
    vmov    r1, r2, s14, s15
    vmov    r1, r2, s16, s17
    vmov    r1, r2, s18, s19
    vmov    r1, r2, s20, s21
    vmov    r1, r2, s22, s23

    // loop 3
    vmov    r1, r2, s0, s1
    vmov    r1, r2, s2, s3
    vmov    r1, r2, s4, s5
    vmov    r1, r2, s6, s7
    vmov    r1, r2, s8, s9
    vmov    r1, r2, s10, s11
    vmov    r1, r2, s12, s13
    vmov    r1, r2, s14, s15
    vmov    r1, r2, s16, s17
    vmov    r1, r2, s18, s19
    vmov    r1, r2, s20, s21
    vmov    r1, r2, s22, s23

    // loop 4
    vmov    r1, r2, s0, s1
    vmov    r1, r2, s2, s3
    vmov    r1, r2, s4, s5
    vmov    r1, r2, s6, s7
    vmov    r1, r2, s8, s9
    vmov    r1, r2, s10, s11
    vmov    r1, r2, s12, s13
    vmov    r1, r2, s14, s15
    vmov    r1, r2, s16, s17
    vmov    r1, r2, s18, s19
    vmov    r1, r2, s20, s21
    vmov    r1, r2, s22, s23

    // loop 5
    vmov    r1, r2, s0, s1
    vmov    r1, r2, s2, s3
    vmov    r1, r2, s4, s5
    vmov    r1, r2, s6, s7
    vmov    r1, r2, s8, s9
    vmov    r1, r2, s10, s11
    vmov    r1, r2, s12, s13
    vmov    r1, r2, s14, s15
    vmov    r1, r2, s16, s17
    vmov    r1, r2, s18, s19
    vmov    r1, r2, s20, s21
    vmov    r1, r2, s22, s23

    subs    r0, r0, #1
    bne     vmovRegSDualMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr
    

_vmovRegSDualMaxTest:

    stmdb   sp!, {r4-r11, lr}

    vpush.64    {d8-d15}

vmovRegSDualMaxTest_LOOP:

    // loop 1
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11

    // loop 2
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11

    // loop 3
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11

    // loop 4
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11

    // loop 5
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11
    vmov    r1, r2, s0, s1
    vmov    r3, r4, s2, s3
    vmov    r5, r6, s4, s5
    vmov    r7, r8, s6, s7
    vmov    r9, r10, s8, s9
    vmov    r11, r12, s10, s11

    subs    r0, r0, #1
    bne     vmovRegSDualMaxTest_LOOP
    vpop.64 {d8-d15}
    ldmia   sp!, {r4-r11, pc}


_vmovDRegDualMinTest:

    vpush.64    {d8-d15}

vmovDRegDualMinTest_LOOP:

    // loop 1
    vmov    d0, r0, r1
    vmov    d0, r1, r2
    vmov    d0, r2, r3
    vmov    d0, r3, r4
    vmov    d0, r4, r5
    vmov    d0, r5, r6
    vmov    d0, r6, r7
    vmov    d0, r7, r8
    vmov    d0, r8, r9
    vmov    d0, r9, r10
    vmov    d0, r10, r11
    vmov    d0, r11, r12

    // loop 2
    vmov    d0, r0, r1
    vmov    d0, r1, r2
    vmov    d0, r2, r3
    vmov    d0, r3, r4
    vmov    d0, r4, r5
    vmov    d0, r5, r6
    vmov    d0, r6, r7
    vmov    d0, r7, r8
    vmov    d0, r8, r9
    vmov    d0, r9, r10
    vmov    d0, r10, r11
    vmov    d0, r11, r12

    // loop 3
    vmov    d0, r0, r1
    vmov    d0, r1, r2
    vmov    d0, r2, r3
    vmov    d0, r3, r4
    vmov    d0, r4, r5
    vmov    d0, r5, r6
    vmov    d0, r6, r7
    vmov    d0, r7, r8
    vmov    d0, r8, r9
    vmov    d0, r9, r10
    vmov    d0, r10, r11
    vmov    d0, r11, r12

    // loop 4
    vmov    d0, r0, r1
    vmov    d0, r1, r2
    vmov    d0, r2, r3
    vmov    d0, r3, r4
    vmov    d0, r4, r5
    vmov    d0, r5, r6
    vmov    d0, r6, r7
    vmov    d0, r7, r8
    vmov    d0, r8, r9
    vmov    d0, r9, r10
    vmov    d0, r10, r11
    vmov    d0, r11, r12

    // loop 5
    vmov    d0, r0, r1
    vmov    d0, r1, r2
    vmov    d0, r2, r3
    vmov    d0, r3, r4
    vmov    d0, r4, r5
    vmov    d0, r5, r6
    vmov    d0, r6, r7
    vmov    d0, r7, r8
    vmov    d0, r8, r9
    vmov    d0, r9, r10
    vmov    d0, r10, r11
    vmov    d0, r11, r12

    subs    r0, r0, #1
    bne     vmovDRegDualMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vmovDRegDualMaxTest:

    vpush.64    {d8-d15}

vmovDRegDualMaxTest_LOOP:

    // loop 1
    vmov    d0, r0, r1
    vmov    d1, r2, r3
    vmov    d2, r4, r5
    vmov    d3, r6, r7
    vmov    d4, r8, r9
    vmov    d5, r10, r11
    vmov    d6, r12, r13
    vmov    d7, r0, r1
    vmov    d8, r2, r3
    vmov    d9, r4, r5
    vmov    d10, r6, r7
    vmov    d11, r8, r9

    // loop 2
    vmov    d0, r0, r1
    vmov    d1, r2, r3
    vmov    d2, r4, r5
    vmov    d3, r6, r7
    vmov    d4, r8, r9
    vmov    d5, r10, r11
    vmov    d6, r12, r13
    vmov    d7, r0, r1
    vmov    d8, r2, r3
    vmov    d9, r4, r5
    vmov    d10, r6, r7
    vmov    d11, r8, r9

    // loop 3
    vmov    d0, r0, r1
    vmov    d1, r2, r3
    vmov    d2, r4, r5
    vmov    d3, r6, r7
    vmov    d4, r8, r9
    vmov    d5, r10, r11
    vmov    d6, r12, r13
    vmov    d7, r0, r1
    vmov    d8, r2, r3
    vmov    d9, r4, r5
    vmov    d10, r6, r7
    vmov    d11, r8, r9

    // loop 4
    vmov    d0, r0, r1
    vmov    d1, r2, r3
    vmov    d2, r4, r5
    vmov    d3, r6, r7
    vmov    d4, r8, r9
    vmov    d5, r10, r11
    vmov    d6, r12, r13
    vmov    d7, r0, r1
    vmov    d8, r2, r3
    vmov    d9, r4, r5
    vmov    d10, r6, r7
    vmov    d11, r8, r9

    // loop 5
    vmov    d0, r0, r1
    vmov    d1, r2, r3
    vmov    d2, r4, r5
    vmov    d3, r6, r7
    vmov    d4, r8, r9
    vmov    d5, r10, r11
    vmov    d6, r12, r13
    vmov    d7, r0, r1
    vmov    d8, r2, r3
    vmov    d9, r4, r5
    vmov    d10, r6, r7
    vmov    d11, r8, r9

    subs    r0, r0, #1
    bne     vmovDRegDualMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vmovRegDDualMinTest:

    vpush.64    {d8-d15}

vmovRegDDualMinTest_LOOP:

    // loop 1
    vmov    r1, r2, d0
    vmov    r1, r2, d1
    vmov    r1, r2, d2
    vmov    r1, r2, d3
    vmov    r1, r2, d4
    vmov    r1, r2, d5
    vmov    r1, r2, d6
    vmov    r1, r2, d7
    vmov    r1, r2, d8
    vmov    r1, r2, d9
    vmov    r1, r2, d10
    vmov    r1, r2, d11

    // loop 2
    vmov    r1, r2, d0
    vmov    r1, r2, d1
    vmov    r1, r2, d2
    vmov    r1, r2, d3
    vmov    r1, r2, d4
    vmov    r1, r2, d5
    vmov    r1, r2, d6
    vmov    r1, r2, d7
    vmov    r1, r2, d8
    vmov    r1, r2, d9
    vmov    r1, r2, d10
    vmov    r1, r2, d11

    // loop 3
    vmov    r1, r2, d0
    vmov    r1, r2, d1
    vmov    r1, r2, d2
    vmov    r1, r2, d3
    vmov    r1, r2, d4
    vmov    r1, r2, d5
    vmov    r1, r2, d6
    vmov    r1, r2, d7
    vmov    r1, r2, d8
    vmov    r1, r2, d9
    vmov    r1, r2, d10
    vmov    r1, r2, d11

    // loop 4
    vmov    r1, r2, d0
    vmov    r1, r2, d1
    vmov    r1, r2, d2
    vmov    r1, r2, d3
    vmov    r1, r2, d4
    vmov    r1, r2, d5
    vmov    r1, r2, d6
    vmov    r1, r2, d7
    vmov    r1, r2, d8
    vmov    r1, r2, d9
    vmov    r1, r2, d10
    vmov    r1, r2, d11

    // loop 5
    vmov    r1, r2, d0
    vmov    r1, r2, d1
    vmov    r1, r2, d2
    vmov    r1, r2, d3
    vmov    r1, r2, d4
    vmov    r1, r2, d5
    vmov    r1, r2, d6
    vmov    r1, r2, d7
    vmov    r1, r2, d8
    vmov    r1, r2, d9
    vmov    r1, r2, d10
    vmov    r1, r2, d11

    subs    r0, r0, #1
    bne     vmovRegDDualMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr


_vmovRegDDualMaxTest:

    stmdb   sp!, {r4-r11, lr}
    vpush.64    {d8-d15}

vmovRegDDualMaxTest_LOOP:

    // loop 1
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5

    // loop 2
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5

    // loop 3
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5

    // loop 4
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5

    // loop 5
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5
    vmov    r1, r2, d0
    vmov    r3, r4, d1
    vmov    r5, r6, d2
    vmov    r7, r8, d3
    vmov    r9, r10, d4
    vmov    r11, r12, d5

    subs    r0, r0, #1
    bne     vmovRegDDualMaxTest_LOOP
    vpop.64 {d8-d15}
    ldmia   sp!, {r4-r11, pc}


_vmovlI4MinTest:

    vpush.64    {d8-d15}

vmovlI4MinTest_LOOP:

    // loop 1
    vmovl.s32   q0, d22
    vmovl.s32   q1, d0
    vmovl.s32   q2, d2
    vmovl.s32   q3, d4
    vmovl.s32   q4, d6
    vmovl.s32   q5, d8
    vmovl.s32   q6, d10
    vmovl.s32   q7, d12
    vmovl.s32   q8, d14
    vmovl.s32   q9, d16
    vmovl.s32   q10, d18
    vmovl.s32   q11, d20

    // loop 2
    vmovl.s32   q0, d22
    vmovl.s32   q1, d0
    vmovl.s32   q2, d2
    vmovl.s32   q3, d4
    vmovl.s32   q4, d6
    vmovl.s32   q5, d8
    vmovl.s32   q6, d10
    vmovl.s32   q7, d12
    vmovl.s32   q8, d14
    vmovl.s32   q9, d16
    vmovl.s32   q10, d18
    vmovl.s32   q11, d20

    // loop 3
    vmovl.s32   q0, d22
    vmovl.s32   q1, d0
    vmovl.s32   q2, d2
    vmovl.s32   q3, d4
    vmovl.s32   q4, d6
    vmovl.s32   q5, d8
    vmovl.s32   q6, d10
    vmovl.s32   q7, d12
    vmovl.s32   q8, d14
    vmovl.s32   q9, d16
    vmovl.s32   q10, d18
    vmovl.s32   q11, d20

    // loop 4
    vmovl.s32   q0, d22
    vmovl.s32   q1, d0
    vmovl.s32   q2, d2
    vmovl.s32   q3, d4
    vmovl.s32   q4, d6
    vmovl.s32   q5, d8
    vmovl.s32   q6, d10
    vmovl.s32   q7, d12
    vmovl.s32   q8, d14
    vmovl.s32   q9, d16
    vmovl.s32   q10, d18
    vmovl.s32   q11, d20

    // loop 5
    vmovl.s32   q0, d22
    vmovl.s32   q1, d0
    vmovl.s32   q2, d2
    vmovl.s32   q3, d4
    vmovl.s32   q4, d6
    vmovl.s32   q5, d8
    vmovl.s32   q6, d10
    vmovl.s32   q7, d12
    vmovl.s32   q8, d14
    vmovl.s32   q9, d16
    vmovl.s32   q10, d18
    vmovl.s32   q11, d20

    subs    r0, r0, #1
    bne     vmovlI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovlI4MaxTest:

    vpush.64    {d8-d15}

vmovlI4MaxTest_LOOP:

    // loop 1
    vmovl.s32   q1, d0
    vmovl.s32   q2, d0
    vmovl.s32   q3, d0
    vmovl.s32   q4, d0
    vmovl.s32   q5, d0
    vmovl.s32   q6, d0
    vmovl.s32   q7, d0
    vmovl.s32   q8, d0
    vmovl.s32   q9, d0
    vmovl.s32   q10, d0
    vmovl.s32   q11, d0
    vmovl.s32   q12, d0

    // loop 2
    vmovl.s32   q1, d0
    vmovl.s32   q2, d0
    vmovl.s32   q3, d0
    vmovl.s32   q4, d0
    vmovl.s32   q5, d0
    vmovl.s32   q6, d0
    vmovl.s32   q7, d0
    vmovl.s32   q8, d0
    vmovl.s32   q9, d0
    vmovl.s32   q10, d0
    vmovl.s32   q11, d0
    vmovl.s32   q12, d0

    // loop 3
    vmovl.s32   q1, d0
    vmovl.s32   q2, d0
    vmovl.s32   q3, d0
    vmovl.s32   q4, d0
    vmovl.s32   q5, d0
    vmovl.s32   q6, d0
    vmovl.s32   q7, d0
    vmovl.s32   q8, d0
    vmovl.s32   q9, d0
    vmovl.s32   q10, d0
    vmovl.s32   q11, d0
    vmovl.s32   q12, d0

    // loop 4
    vmovl.s32   q1, d0
    vmovl.s32   q2, d0
    vmovl.s32   q3, d0
    vmovl.s32   q4, d0
    vmovl.s32   q5, d0
    vmovl.s32   q6, d0
    vmovl.s32   q7, d0
    vmovl.s32   q8, d0
    vmovl.s32   q9, d0
    vmovl.s32   q10, d0
    vmovl.s32   q11, d0
    vmovl.s32   q12, d0

    // loop 5
    vmovl.s32   q1, d0
    vmovl.s32   q2, d0
    vmovl.s32   q3, d0
    vmovl.s32   q4, d0
    vmovl.s32   q5, d0
    vmovl.s32   q6, d0
    vmovl.s32   q7, d0
    vmovl.s32   q8, d0
    vmovl.s32   q9, d0
    vmovl.s32   q10, d0
    vmovl.s32   q11, d0
    vmovl.s32   q12, d0

    subs    r0, r0, #1
    bne     vmovlI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmovnI4MinTest:

    vpush.64    {d8-d15}

vmovnI4MinTest_LOOP:

    // loop 1
    vmovn.i32   d0, q11
    vmovn.i32   d2, q0
    vmovn.i32   d4, q1
    vmovn.i32   d6, q2
    vmovn.i32   d8, q3
    vmovn.i32   d10, q4
    vmovn.i32   d12, q5
    vmovn.i32   d14, q6
    vmovn.i32   d16, q7
    vmovn.i32   d18, q8
    vmovn.i32   d20, q9
    vmovn.i32   d22, q10

    // loop 2
    vmovn.i32   d0, q11
    vmovn.i32   d2, q0
    vmovn.i32   d4, q1
    vmovn.i32   d6, q2
    vmovn.i32   d8, q3
    vmovn.i32   d10, q4
    vmovn.i32   d12, q5
    vmovn.i32   d14, q6
    vmovn.i32   d16, q7
    vmovn.i32   d18, q8
    vmovn.i32   d20, q9
    vmovn.i32   d22, q10

    // loop 3
    vmovn.i32   d0, q11
    vmovn.i32   d2, q0
    vmovn.i32   d4, q1
    vmovn.i32   d6, q2
    vmovn.i32   d8, q3
    vmovn.i32   d10, q4
    vmovn.i32   d12, q5
    vmovn.i32   d14, q6
    vmovn.i32   d16, q7
    vmovn.i32   d18, q8
    vmovn.i32   d20, q9
    vmovn.i32   d22, q10

    // loop 4
    vmovn.i32   d0, q11
    vmovn.i32   d2, q0
    vmovn.i32   d4, q1
    vmovn.i32   d6, q2
    vmovn.i32   d8, q3
    vmovn.i32   d10, q4
    vmovn.i32   d12, q5
    vmovn.i32   d14, q6
    vmovn.i32   d16, q7
    vmovn.i32   d18, q8
    vmovn.i32   d20, q9
    vmovn.i32   d22, q10

    // loop 5
    vmovn.i32   d0, q11
    vmovn.i32   d2, q0
    vmovn.i32   d4, q1
    vmovn.i32   d6, q2
    vmovn.i32   d8, q3
    vmovn.i32   d10, q4
    vmovn.i32   d12, q5
    vmovn.i32   d14, q6
    vmovn.i32   d16, q7
    vmovn.i32   d18, q8
    vmovn.i32   d20, q9
    vmovn.i32   d22, q10

    subs    r0, r0, #1
    bne     vmovnI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmovnI4MaxTest:

    vpush.64    {d8-d15}

vmovnI4MaxTest_LOOP:

    // loop 1
    vmovn.i32   d2, q0
    vmovn.i32   d4, q0
    vmovn.i32   d6, q0
    vmovn.i32   d8, q0
    vmovn.i32   d10, q0
    vmovn.i32   d12, q0
    vmovn.i32   d14, q0
    vmovn.i32   d16, q0
    vmovn.i32   d18, q0
    vmovn.i32   d20, q0
    vmovn.i32   d22, q0
    vmovn.i32   d24, q0

    // loop 2
    vmovn.i32   d2, q0
    vmovn.i32   d4, q0
    vmovn.i32   d6, q0
    vmovn.i32   d8, q0
    vmovn.i32   d10, q0
    vmovn.i32   d12, q0
    vmovn.i32   d14, q0
    vmovn.i32   d16, q0
    vmovn.i32   d18, q0
    vmovn.i32   d20, q0
    vmovn.i32   d22, q0
    vmovn.i32   d24, q0

    // loop 3
    vmovn.i32   d2, q0
    vmovn.i32   d4, q0
    vmovn.i32   d6, q0
    vmovn.i32   d8, q0
    vmovn.i32   d10, q0
    vmovn.i32   d12, q0
    vmovn.i32   d14, q0
    vmovn.i32   d16, q0
    vmovn.i32   d18, q0
    vmovn.i32   d20, q0
    vmovn.i32   d22, q0
    vmovn.i32   d24, q0

    // loop 4
    vmovn.i32   d2, q0
    vmovn.i32   d4, q0
    vmovn.i32   d6, q0
    vmovn.i32   d8, q0
    vmovn.i32   d10, q0
    vmovn.i32   d12, q0
    vmovn.i32   d14, q0
    vmovn.i32   d16, q0
    vmovn.i32   d18, q0
    vmovn.i32   d20, q0
    vmovn.i32   d22, q0
    vmovn.i32   d24, q0

    // loop 5
    vmovn.i32   d2, q0
    vmovn.i32   d4, q0
    vmovn.i32   d6, q0
    vmovn.i32   d8, q0
    vmovn.i32   d10, q0
    vmovn.i32   d12, q0
    vmovn.i32   d14, q0
    vmovn.i32   d16, q0
    vmovn.i32   d18, q0
    vmovn.i32   d20, q0
    vmovn.i32   d22, q0
    vmovn.i32   d24, q0

    subs    r0, r0, #1
    bne     vmovnI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmulI4MinTest:

    vpush.64    {d8-d15}

vmulI4MinTest_LOOP:

    // loop 1
    vmul.i32    q0, q0, q11
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q1
    vmul.i32    q3, q3, q2
    vmul.i32    q4, q4, q3
    vmul.i32    q5, q5, q4
    vmul.i32    q6, q6, q5
    vmul.i32    q7, q7, q6
    vmul.i32    q8, q8, q7
    vmul.i32    q9, q9, q8
    vmul.i32    q10, q10, q9
    vmul.i32    q11, q11, q10

    // loop 2
    vmul.i32    q0, q0, q11
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q1
    vmul.i32    q3, q3, q2
    vmul.i32    q4, q4, q3
    vmul.i32    q5, q5, q4
    vmul.i32    q6, q6, q5
    vmul.i32    q7, q7, q6
    vmul.i32    q8, q8, q7
    vmul.i32    q9, q9, q8
    vmul.i32    q10, q10, q9
    vmul.i32    q11, q11, q10

    // loop 3
    vmul.i32    q0, q0, q11
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q1
    vmul.i32    q3, q3, q2
    vmul.i32    q4, q4, q3
    vmul.i32    q5, q5, q4
    vmul.i32    q6, q6, q5
    vmul.i32    q7, q7, q6
    vmul.i32    q8, q8, q7
    vmul.i32    q9, q9, q8
    vmul.i32    q10, q10, q9
    vmul.i32    q11, q11, q10

    // loop 4
    vmul.i32    q0, q0, q11
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q1
    vmul.i32    q3, q3, q2
    vmul.i32    q4, q4, q3
    vmul.i32    q5, q5, q4
    vmul.i32    q6, q6, q5
    vmul.i32    q7, q7, q6
    vmul.i32    q8, q8, q7
    vmul.i32    q9, q9, q8
    vmul.i32    q10, q10, q9
    vmul.i32    q11, q11, q10

    // loop 5
    vmul.i32    q0, q0, q11
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q1
    vmul.i32    q3, q3, q2
    vmul.i32    q4, q4, q3
    vmul.i32    q5, q5, q4
    vmul.i32    q6, q6, q5
    vmul.i32    q7, q7, q6
    vmul.i32    q8, q8, q7
    vmul.i32    q9, q9, q8
    vmul.i32    q10, q10, q9
    vmul.i32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmulI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulI4MaxTest:

    vpush.64    {d8-d15}

vmulI4MaxTest_LOOP:

    // loop 1
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q0
    vmul.i32    q3, q3, q0
    vmul.i32    q4, q4, q0
    vmul.i32    q5, q5, q0
    vmul.i32    q6, q6, q0
    vmul.i32    q7, q7, q0
    vmul.i32    q8, q8, q0
    vmul.i32    q9, q9, q0
    vmul.i32    q10, q10, q0
    vmul.i32    q11, q11, q0
    vmul.i32    q12, q12, q0

    // loop 2
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q0
    vmul.i32    q3, q3, q0
    vmul.i32    q4, q4, q0
    vmul.i32    q5, q5, q0
    vmul.i32    q6, q6, q0
    vmul.i32    q7, q7, q0
    vmul.i32    q8, q8, q0
    vmul.i32    q9, q9, q0
    vmul.i32    q10, q10, q0
    vmul.i32    q11, q11, q0
    vmul.i32    q12, q12, q0

    // loop 3
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q0
    vmul.i32    q3, q3, q0
    vmul.i32    q4, q4, q0
    vmul.i32    q5, q5, q0
    vmul.i32    q6, q6, q0
    vmul.i32    q7, q7, q0
    vmul.i32    q8, q8, q0
    vmul.i32    q9, q9, q0
    vmul.i32    q10, q10, q0
    vmul.i32    q11, q11, q0
    vmul.i32    q12, q12, q0

    // loop 4
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q0
    vmul.i32    q3, q3, q0
    vmul.i32    q4, q4, q0
    vmul.i32    q5, q5, q0
    vmul.i32    q6, q6, q0
    vmul.i32    q7, q7, q0
    vmul.i32    q8, q8, q0
    vmul.i32    q9, q9, q0
    vmul.i32    q10, q10, q0
    vmul.i32    q11, q11, q0
    vmul.i32    q12, q12, q0

    // loop 5
    vmul.i32    q1, q1, q0
    vmul.i32    q2, q2, q0
    vmul.i32    q3, q3, q0
    vmul.i32    q4, q4, q0
    vmul.i32    q5, q5, q0
    vmul.i32    q6, q6, q0
    vmul.i32    q7, q7, q0
    vmul.i32    q8, q8, q0
    vmul.i32    q9, q9, q0
    vmul.i32    q10, q10, q0
    vmul.i32    q11, q11, q0
    vmul.i32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmulI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulF4MinTest:

    vpush.64    {d8-d15}

vmulF4MinTest_LOOP:

    // loop 1
    vmul.f32    q0, q0, q11
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q1
    vmul.f32    q3, q3, q2
    vmul.f32    q4, q4, q3
    vmul.f32    q5, q5, q4
    vmul.f32    q6, q6, q5
    vmul.f32    q7, q7, q6
    vmul.f32    q8, q8, q7
    vmul.f32    q9, q9, q8
    vmul.f32    q10, q10, q9
    vmul.f32    q11, q11, q10

    // loop 2
    vmul.f32    q0, q0, q11
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q1
    vmul.f32    q3, q3, q2
    vmul.f32    q4, q4, q3
    vmul.f32    q5, q5, q4
    vmul.f32    q6, q6, q5
    vmul.f32    q7, q7, q6
    vmul.f32    q8, q8, q7
    vmul.f32    q9, q9, q8
    vmul.f32    q10, q10, q9
    vmul.f32    q11, q11, q10

    // loop 3
    vmul.f32    q0, q0, q11
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q1
    vmul.f32    q3, q3, q2
    vmul.f32    q4, q4, q3
    vmul.f32    q5, q5, q4
    vmul.f32    q6, q6, q5
    vmul.f32    q7, q7, q6
    vmul.f32    q8, q8, q7
    vmul.f32    q9, q9, q8
    vmul.f32    q10, q10, q9
    vmul.f32    q11, q11, q10

    // loop 4
    vmul.f32    q0, q0, q11
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q1
    vmul.f32    q3, q3, q2
    vmul.f32    q4, q4, q3
    vmul.f32    q5, q5, q4
    vmul.f32    q6, q6, q5
    vmul.f32    q7, q7, q6
    vmul.f32    q8, q8, q7
    vmul.f32    q9, q9, q8
    vmul.f32    q10, q10, q9
    vmul.f32    q11, q11, q10

    // loop 5
    vmul.f32    q0, q0, q11
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q1
    vmul.f32    q3, q3, q2
    vmul.f32    q4, q4, q3
    vmul.f32    q5, q5, q4
    vmul.f32    q6, q6, q5
    vmul.f32    q7, q7, q6
    vmul.f32    q8, q8, q7
    vmul.f32    q9, q9, q8
    vmul.f32    q10, q10, q9
    vmul.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vmulF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulF4MaxTest:

    vpush.64    {d8-d15}

vmulF4MaxTest_LOOP:

    // loop 1
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q0
    vmul.f32    q3, q3, q0
    vmul.f32    q4, q4, q0
    vmul.f32    q5, q5, q0
    vmul.f32    q6, q6, q0
    vmul.f32    q7, q7, q0
    vmul.f32    q8, q8, q0
    vmul.f32    q9, q9, q0
    vmul.f32    q10, q10, q0
    vmul.f32    q11, q11, q0
    vmul.f32    q12, q12, q0

    // loop 2
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q0
    vmul.f32    q3, q3, q0
    vmul.f32    q4, q4, q0
    vmul.f32    q5, q5, q0
    vmul.f32    q6, q6, q0
    vmul.f32    q7, q7, q0
    vmul.f32    q8, q8, q0
    vmul.f32    q9, q9, q0
    vmul.f32    q10, q10, q0
    vmul.f32    q11, q11, q0
    vmul.f32    q12, q12, q0

    // loop 3
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q0
    vmul.f32    q3, q3, q0
    vmul.f32    q4, q4, q0
    vmul.f32    q5, q5, q0
    vmul.f32    q6, q6, q0
    vmul.f32    q7, q7, q0
    vmul.f32    q8, q8, q0
    vmul.f32    q9, q9, q0
    vmul.f32    q10, q10, q0
    vmul.f32    q11, q11, q0
    vmul.f32    q12, q12, q0

    // loop 4
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q0
    vmul.f32    q3, q3, q0
    vmul.f32    q4, q4, q0
    vmul.f32    q5, q5, q0
    vmul.f32    q6, q6, q0
    vmul.f32    q7, q7, q0
    vmul.f32    q8, q8, q0
    vmul.f32    q9, q9, q0
    vmul.f32    q10, q10, q0
    vmul.f32    q11, q11, q0
    vmul.f32    q12, q12, q0

    // loop 5
    vmul.f32    q1, q1, q0
    vmul.f32    q2, q2, q0
    vmul.f32    q3, q3, q0
    vmul.f32    q4, q4, q0
    vmul.f32    q5, q5, q0
    vmul.f32    q6, q6, q0
    vmul.f32    q7, q7, q0
    vmul.f32    q8, q8, q0
    vmul.f32    q9, q9, q0
    vmul.f32    q10, q10, q0
    vmul.f32    q11, q11, q0
    vmul.f32    q12, q12, q0

    subs    r0, r0, #1
    bne     vmulF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulFMinTest:

    vpush.64    {d8-d15}

vmulFMinTest_LOOP:

    // loop 1
    vmul.f32    s0, s0, s11
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s1
    vmul.f32    s3, s3, s2
    vmul.f32    s4, s4, s3
    vmul.f32    s5, s5, s4
    vmul.f32    s6, s6, s5
    vmul.f32    s7, s7, s6
    vmul.f32    s8, s8, s7
    vmul.f32    s9, s9, s8
    vmul.f32    s10, s10, s9
    vmul.f32    s11, s11, s10

    // loop 2
    vmul.f32    s0, s0, s11
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s1
    vmul.f32    s3, s3, s2
    vmul.f32    s4, s4, s3
    vmul.f32    s5, s5, s4
    vmul.f32    s6, s6, s5
    vmul.f32    s7, s7, s6
    vmul.f32    s8, s8, s7
    vmul.f32    s9, s9, s8
    vmul.f32    s10, s10, s9
    vmul.f32    s11, s11, s10

    // loop 3
    vmul.f32    s0, s0, s11
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s1
    vmul.f32    s3, s3, s2
    vmul.f32    s4, s4, s3
    vmul.f32    s5, s5, s4
    vmul.f32    s6, s6, s5
    vmul.f32    s7, s7, s6
    vmul.f32    s8, s8, s7
    vmul.f32    s9, s9, s8
    vmul.f32    s10, s10, s9
    vmul.f32    s11, s11, s10

    // loop 4
    vmul.f32    s0, s0, s11
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s1
    vmul.f32    s3, s3, s2
    vmul.f32    s4, s4, s3
    vmul.f32    s5, s5, s4
    vmul.f32    s6, s6, s5
    vmul.f32    s7, s7, s6
    vmul.f32    s8, s8, s7
    vmul.f32    s9, s9, s8
    vmul.f32    s10, s10, s9
    vmul.f32    s11, s11, s10

    // loop 5
    vmul.f32    s0, s0, s11
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s1
    vmul.f32    s3, s3, s2
    vmul.f32    s4, s4, s3
    vmul.f32    s5, s5, s4
    vmul.f32    s6, s6, s5
    vmul.f32    s7, s7, s6
    vmul.f32    s8, s8, s7
    vmul.f32    s9, s9, s8
    vmul.f32    s10, s10, s9
    vmul.f32    s11, s11, s10

    subs    r0, r0, #1
    bne     vmulFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulFMaxTest:

    vpush.64    {d8-d15}

vmulFMaxTest_LOOP:

    // loop 1
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s0
    vmul.f32    s3, s3, s0
    vmul.f32    s4, s4, s0
    vmul.f32    s5, s5, s0
    vmul.f32    s6, s6, s0
    vmul.f32    s7, s7, s0
    vmul.f32    s8, s8, s0
    vmul.f32    s9, s9, s0
    vmul.f32    s10, s10, s0
    vmul.f32    s11, s11, s0
    vmul.f32    s12, s12, s0

    // loop 2
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s0
    vmul.f32    s3, s3, s0
    vmul.f32    s4, s4, s0
    vmul.f32    s5, s5, s0
    vmul.f32    s6, s6, s0
    vmul.f32    s7, s7, s0
    vmul.f32    s8, s8, s0
    vmul.f32    s9, s9, s0
    vmul.f32    s10, s10, s0
    vmul.f32    s11, s11, s0
    vmul.f32    s12, s12, s0

    // loop 3
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s0
    vmul.f32    s3, s3, s0
    vmul.f32    s4, s4, s0
    vmul.f32    s5, s5, s0
    vmul.f32    s6, s6, s0
    vmul.f32    s7, s7, s0
    vmul.f32    s8, s8, s0
    vmul.f32    s9, s9, s0
    vmul.f32    s10, s10, s0
    vmul.f32    s11, s11, s0
    vmul.f32    s12, s12, s0

    // loop 4
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s0
    vmul.f32    s3, s3, s0
    vmul.f32    s4, s4, s0
    vmul.f32    s5, s5, s0
    vmul.f32    s6, s6, s0
    vmul.f32    s7, s7, s0
    vmul.f32    s8, s8, s0
    vmul.f32    s9, s9, s0
    vmul.f32    s10, s10, s0
    vmul.f32    s11, s11, s0
    vmul.f32    s12, s12, s0

    // loop 5
    vmul.f32    s1, s1, s0
    vmul.f32    s2, s2, s0
    vmul.f32    s3, s3, s0
    vmul.f32    s4, s4, s0
    vmul.f32    s5, s5, s0
    vmul.f32    s6, s6, s0
    vmul.f32    s7, s7, s0
    vmul.f32    s8, s8, s0
    vmul.f32    s9, s9, s0
    vmul.f32    s10, s10, s0
    vmul.f32    s11, s11, s0
    vmul.f32    s12, s12, s0

    subs    r0, r0, #1
    bne     vmulFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulDMinTest:

    vpush.64    {d8-d15}

vmulDMinTest_LOOP:

    // loop 1
    vmul.f64    d0, d0, d11
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d1
    vmul.f64    d3, d3, d2
    vmul.f64    d4, d4, d3
    vmul.f64    d5, d5, d4
    vmul.f64    d6, d6, d5
    vmul.f64    d7, d7, d6
    vmul.f64    d8, d8, d7
    vmul.f64    d9, d9, d8
    vmul.f64    d10, d10, d9
    vmul.f64    d11, d11, d10

    // loop 2
    vmul.f64    d0, d0, d11
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d1
    vmul.f64    d3, d3, d2
    vmul.f64    d4, d4, d3
    vmul.f64    d5, d5, d4
    vmul.f64    d6, d6, d5
    vmul.f64    d7, d7, d6
    vmul.f64    d8, d8, d7
    vmul.f64    d9, d9, d8
    vmul.f64    d10, d10, d9
    vmul.f64    d11, d11, d10

    // loop 3
    vmul.f64    d0, d0, d11
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d1
    vmul.f64    d3, d3, d2
    vmul.f64    d4, d4, d3
    vmul.f64    d5, d5, d4
    vmul.f64    d6, d6, d5
    vmul.f64    d7, d7, d6
    vmul.f64    d8, d8, d7
    vmul.f64    d9, d9, d8
    vmul.f64    d10, d10, d9
    vmul.f64    d11, d11, d10

    // loop 4
    vmul.f64    d0, d0, d11
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d1
    vmul.f64    d3, d3, d2
    vmul.f64    d4, d4, d3
    vmul.f64    d5, d5, d4
    vmul.f64    d6, d6, d5
    vmul.f64    d7, d7, d6
    vmul.f64    d8, d8, d7
    vmul.f64    d9, d9, d8
    vmul.f64    d10, d10, d9
    vmul.f64    d11, d11, d10

    // loop 5
    vmul.f64    d0, d0, d11
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d1
    vmul.f64    d3, d3, d2
    vmul.f64    d4, d4, d3
    vmul.f64    d5, d5, d4
    vmul.f64    d6, d6, d5
    vmul.f64    d7, d7, d6
    vmul.f64    d8, d8, d7
    vmul.f64    d9, d9, d8
    vmul.f64    d10, d10, d9
    vmul.f64    d11, d11, d10

    subs    r0, r0, #1
    bne     vmulDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulDMaxTest:

    vpush.64    {d8-d15}

vmulDMaxTest_LOOP:

    // loop 1
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d0
    vmul.f64    d3, d3, d0
    vmul.f64    d4, d4, d0
    vmul.f64    d5, d5, d0
    vmul.f64    d6, d6, d0
    vmul.f64    d7, d7, d0
    vmul.f64    d8, d8, d0
    vmul.f64    d9, d9, d0
    vmul.f64    d10, d10, d0
    vmul.f64    d11, d11, d0
    vmul.f64    d12, d12, d0

    // loop 2
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d0
    vmul.f64    d3, d3, d0
    vmul.f64    d4, d4, d0
    vmul.f64    d5, d5, d0
    vmul.f64    d6, d6, d0
    vmul.f64    d7, d7, d0
    vmul.f64    d8, d8, d0
    vmul.f64    d9, d9, d0
    vmul.f64    d10, d10, d0
    vmul.f64    d11, d11, d0
    vmul.f64    d12, d12, d0

    // loop 3
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d0
    vmul.f64    d3, d3, d0
    vmul.f64    d4, d4, d0
    vmul.f64    d5, d5, d0
    vmul.f64    d6, d6, d0
    vmul.f64    d7, d7, d0
    vmul.f64    d8, d8, d0
    vmul.f64    d9, d9, d0
    vmul.f64    d10, d10, d0
    vmul.f64    d11, d11, d0
    vmul.f64    d12, d12, d0

    // loop 4
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d0
    vmul.f64    d3, d3, d0
    vmul.f64    d4, d4, d0
    vmul.f64    d5, d5, d0
    vmul.f64    d6, d6, d0
    vmul.f64    d7, d7, d0
    vmul.f64    d8, d8, d0
    vmul.f64    d9, d9, d0
    vmul.f64    d10, d10, d0
    vmul.f64    d11, d11, d0
    vmul.f64    d12, d12, d0

    // loop 5
    vmul.f64    d1, d1, d0
    vmul.f64    d2, d2, d0
    vmul.f64    d3, d3, d0
    vmul.f64    d4, d4, d0
    vmul.f64    d5, d5, d0
    vmul.f64    d6, d6, d0
    vmul.f64    d7, d7, d0
    vmul.f64    d8, d8, d0
    vmul.f64    d9, d9, d0
    vmul.f64    d10, d10, d0
    vmul.f64    d11, d11, d0
    vmul.f64    d12, d12, d0

    subs    r0, r0, #1
    bne     vmulDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmullI4MinTest:

    vpush.64    {d8-d15}

vmullI4MinTest_LOOP:

    // loop 1
    vmull.s32   q0, d0, d22
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d2
    vmull.s32   q3, d6, d4
    vmull.s32   q4, d8, d6
    vmull.s32   q5, d10, d8
    vmull.s32   q6, d12, d10
    vmull.s32   q7, d14, d12
    vmull.s32   q8, d16, d14
    vmull.s32   q9, d18, d16
    vmull.s32   q10, d20, d18
    vmull.s32   q11, d22, d20

    // loop 2
    vmull.s32   q0, d0, d22
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d2
    vmull.s32   q3, d6, d4
    vmull.s32   q4, d8, d6
    vmull.s32   q5, d10, d8
    vmull.s32   q6, d12, d10
    vmull.s32   q7, d14, d12
    vmull.s32   q8, d16, d14
    vmull.s32   q9, d18, d16
    vmull.s32   q10, d20, d18
    vmull.s32   q11, d22, d20

    // loop 3
    vmull.s32   q0, d0, d22
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d2
    vmull.s32   q3, d6, d4
    vmull.s32   q4, d8, d6
    vmull.s32   q5, d10, d8
    vmull.s32   q6, d12, d10
    vmull.s32   q7, d14, d12
    vmull.s32   q8, d16, d14
    vmull.s32   q9, d18, d16
    vmull.s32   q10, d20, d18
    vmull.s32   q11, d22, d20

    // loop 4
    vmull.s32   q0, d0, d22
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d2
    vmull.s32   q3, d6, d4
    vmull.s32   q4, d8, d6
    vmull.s32   q5, d10, d8
    vmull.s32   q6, d12, d10
    vmull.s32   q7, d14, d12
    vmull.s32   q8, d16, d14
    vmull.s32   q9, d18, d16
    vmull.s32   q10, d20, d18
    vmull.s32   q11, d22, d20

    // loop 5
    vmull.s32   q0, d0, d22
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d2
    vmull.s32   q3, d6, d4
    vmull.s32   q4, d8, d6
    vmull.s32   q5, d10, d8
    vmull.s32   q6, d12, d10
    vmull.s32   q7, d14, d12
    vmull.s32   q8, d16, d14
    vmull.s32   q9, d18, d16
    vmull.s32   q10, d20, d18
    vmull.s32   q11, d22, d20

    subs    r0, r0, #1
    bne     vmullI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmullI4MaxTest:

    vpush.64    {d8-d15}

vmullI4MaxTest_LOOP:

    // loop 1
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d0
    vmull.s32   q3, d6, d0
    vmull.s32   q4, d8, d0
    vmull.s32   q5, d10, d0
    vmull.s32   q6, d12, d0
    vmull.s32   q7, d14, d0
    vmull.s32   q8, d16, d0
    vmull.s32   q9, d18, d0
    vmull.s32   q10, d20, d0
    vmull.s32   q11, d22, d0
    vmull.s32   q12, d24, d0

    // loop 2
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d0
    vmull.s32   q3, d6, d0
    vmull.s32   q4, d8, d0
    vmull.s32   q5, d10, d0
    vmull.s32   q6, d12, d0
    vmull.s32   q7, d14, d0
    vmull.s32   q8, d16, d0
    vmull.s32   q9, d18, d0
    vmull.s32   q10, d20, d0
    vmull.s32   q11, d22, d0
    vmull.s32   q12, d24, d0

    // loop 3
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d0
    vmull.s32   q3, d6, d0
    vmull.s32   q4, d8, d0
    vmull.s32   q5, d10, d0
    vmull.s32   q6, d12, d0
    vmull.s32   q7, d14, d0
    vmull.s32   q8, d16, d0
    vmull.s32   q9, d18, d0
    vmull.s32   q10, d20, d0
    vmull.s32   q11, d22, d0
    vmull.s32   q12, d24, d0

    // loop 4
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d0
    vmull.s32   q3, d6, d0
    vmull.s32   q4, d8, d0
    vmull.s32   q5, d10, d0
    vmull.s32   q6, d12, d0
    vmull.s32   q7, d14, d0
    vmull.s32   q8, d16, d0
    vmull.s32   q9, d18, d0
    vmull.s32   q10, d20, d0
    vmull.s32   q11, d22, d0
    vmull.s32   q12, d24, d0

    // loop 5
    vmull.s32   q1, d2, d0
    vmull.s32   q2, d4, d0
    vmull.s32   q3, d6, d0
    vmull.s32   q4, d8, d0
    vmull.s32   q5, d10, d0
    vmull.s32   q6, d12, d0
    vmull.s32   q7, d14, d0
    vmull.s32   q8, d16, d0
    vmull.s32   q9, d18, d0
    vmull.s32   q10, d20, d0
    vmull.s32   q11, d22, d0
    vmull.s32   q12, d24, d0

    subs    r0, r0, #1
    bne     vmullI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmulI4ScalarMinTest:

    vpush.64    {d8-d15}

vmulI4ScalarMinTest_LOOP:

    // loop 1
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]

    // loop 2
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]

    // loop 3
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]

    // loop 4
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]

    // loop 5
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]
    vmul.i32    q0, q0, d10[1]
    vmul.i32    q1, q1, d0[1]
    vmul.i32    q2, q2, d2[1]
    vmul.i32    q3, q3, d4[1]
    vmul.i32    q4, q4, d6[1]
    vmul.i32    q5, q5, d8[1]

    subs    r0, r0, #1
    bne     vmulI4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulI4ScalarMaxTest:

    vpush.64    {d8-d15}

vmulI4ScalarMaxTest_LOOP:

    // loop 1
    vmul.i32    q1, q1, d0[0]
    vmul.i32    q2, q2, d0[0]
    vmul.i32    q3, q3, d0[0]
    vmul.i32    q4, q4, d0[0]
    vmul.i32    q5, q5, d0[0]
    vmul.i32    q6, q6, d0[0]
    vmul.i32    q7, q7, d0[0]
    vmul.i32    q8, q8, d0[0]
    vmul.i32    q9, q9, d0[0]
    vmul.i32    q10, q10, d0[0]
    vmul.i32    q11, q11, d0[0]
    vmul.i32    q12, q12, d0[0]

    // loop 2
    vmul.i32    q1, q1, d0[0]
    vmul.i32    q2, q2, d0[0]
    vmul.i32    q3, q3, d0[0]
    vmul.i32    q4, q4, d0[0]
    vmul.i32    q5, q5, d0[0]
    vmul.i32    q6, q6, d0[0]
    vmul.i32    q7, q7, d0[0]
    vmul.i32    q8, q8, d0[0]
    vmul.i32    q9, q9, d0[0]
    vmul.i32    q10, q10, d0[0]
    vmul.i32    q11, q11, d0[0]
    vmul.i32    q12, q12, d0[0]

    // loop 3
    vmul.i32    q1, q1, d0[0]
    vmul.i32    q2, q2, d0[0]
    vmul.i32    q3, q3, d0[0]
    vmul.i32    q4, q4, d0[0]
    vmul.i32    q5, q5, d0[0]
    vmul.i32    q6, q6, d0[0]
    vmul.i32    q7, q7, d0[0]
    vmul.i32    q8, q8, d0[0]
    vmul.i32    q9, q9, d0[0]
    vmul.i32    q10, q10, d0[0]
    vmul.i32    q11, q11, d0[0]
    vmul.i32    q12, q12, d0[0]

    // loop 4
    vmul.i32    q1, q1, d0[0]
    vmul.i32    q2, q2, d0[0]
    vmul.i32    q3, q3, d0[0]
    vmul.i32    q4, q4, d0[0]
    vmul.i32    q5, q5, d0[0]
    vmul.i32    q6, q6, d0[0]
    vmul.i32    q7, q7, d0[0]
    vmul.i32    q8, q8, d0[0]
    vmul.i32    q9, q9, d0[0]
    vmul.i32    q10, q10, d0[0]
    vmul.i32    q11, q11, d0[0]
    vmul.i32    q12, q12, d0[0]

    // loop 5
    vmul.i32    q1, q1, d0[0]
    vmul.i32    q2, q2, d0[0]
    vmul.i32    q3, q3, d0[0]
    vmul.i32    q4, q4, d0[0]
    vmul.i32    q5, q5, d0[0]
    vmul.i32    q6, q6, d0[0]
    vmul.i32    q7, q7, d0[0]
    vmul.i32    q8, q8, d0[0]
    vmul.i32    q9, q9, d0[0]
    vmul.i32    q10, q10, d0[0]
    vmul.i32    q11, q11, d0[0]
    vmul.i32    q12, q12, d0[0]

    subs    r0, r0, #1
    bne     vmulI4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulF4ScalarMinTest:

    vpush.64    {d8-d15}

vmulF4ScalarMinTest_LOOP:

    // loop 1
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]

    // loop 2
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]

    // loop 3
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]

    // loop 4
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]

    // loop 5
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]
    vmul.f32    q0, q0, d10[1]
    vmul.f32    q1, q1, d0[1]
    vmul.f32    q2, q2, d2[1]
    vmul.f32    q3, q3, d4[1]
    vmul.f32    q4, q4, d6[1]
    vmul.f32    q5, q5, d8[1]

    subs    r0, r0, #1
    bne     vmulF4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmulF4ScalarMaxTest:

    vpush.64    {d8-d15}

vmulF4ScalarMaxTest_LOOP:

    // loop 1
    vmul.f32    q1, q1, d0[0]
    vmul.f32    q2, q2, d0[0]
    vmul.f32    q3, q3, d0[0]
    vmul.f32    q4, q4, d0[0]
    vmul.f32    q5, q5, d0[0]
    vmul.f32    q6, q6, d0[0]
    vmul.f32    q7, q7, d0[0]
    vmul.f32    q8, q8, d0[0]
    vmul.f32    q9, q9, d0[0]
    vmul.f32    q10, q10, d0[0]
    vmul.f32    q11, q11, d0[0]
    vmul.f32    q12, q12, d0[0]

    // loop 2
    vmul.f32    q1, q1, d0[0]
    vmul.f32    q2, q2, d0[0]
    vmul.f32    q3, q3, d0[0]
    vmul.f32    q4, q4, d0[0]
    vmul.f32    q5, q5, d0[0]
    vmul.f32    q6, q6, d0[0]
    vmul.f32    q7, q7, d0[0]
    vmul.f32    q8, q8, d0[0]
    vmul.f32    q9, q9, d0[0]
    vmul.f32    q10, q10, d0[0]
    vmul.f32    q11, q11, d0[0]
    vmul.f32    q12, q12, d0[0]

    // loop 3
    vmul.f32    q1, q1, d0[0]
    vmul.f32    q2, q2, d0[0]
    vmul.f32    q3, q3, d0[0]
    vmul.f32    q4, q4, d0[0]
    vmul.f32    q5, q5, d0[0]
    vmul.f32    q6, q6, d0[0]
    vmul.f32    q7, q7, d0[0]
    vmul.f32    q8, q8, d0[0]
    vmul.f32    q9, q9, d0[0]
    vmul.f32    q10, q10, d0[0]
    vmul.f32    q11, q11, d0[0]
    vmul.f32    q12, q12, d0[0]

    // loop 4
    vmul.f32    q1, q1, d0[0]
    vmul.f32    q2, q2, d0[0]
    vmul.f32    q3, q3, d0[0]
    vmul.f32    q4, q4, d0[0]
    vmul.f32    q5, q5, d0[0]
    vmul.f32    q6, q6, d0[0]
    vmul.f32    q7, q7, d0[0]
    vmul.f32    q8, q8, d0[0]
    vmul.f32    q9, q9, d0[0]
    vmul.f32    q10, q10, d0[0]
    vmul.f32    q11, q11, d0[0]
    vmul.f32    q12, q12, d0[0]

    // loop 5
    vmul.f32    q1, q1, d0[0]
    vmul.f32    q2, q2, d0[0]
    vmul.f32    q3, q3, d0[0]
    vmul.f32    q4, q4, d0[0]
    vmul.f32    q5, q5, d0[0]
    vmul.f32    q6, q6, d0[0]
    vmul.f32    q7, q7, d0[0]
    vmul.f32    q8, q8, d0[0]
    vmul.f32    q9, q9, d0[0]
    vmul.f32    q10, q10, d0[0]
    vmul.f32    q11, q11, d0[0]
    vmul.f32    q12, q12, d0[0]

    subs    r0, r0, #1
    bne     vmulF4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmullI4ScalarMinTest:

    vpush.64    {d8-d15}

vmullI4ScalarMinTest_LOOP:

    // loop 1
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]

    // loop 2
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]

    // loop 3
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]

    // loop 4
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]

    // loop 5
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]
    vmull.s32   q0, d0, d10[1]
    vmull.s32   q1, d2, d0[1]
    vmull.s32   q2, d4, d2[1]
    vmull.s32   q3, d6, d4[1]
    vmull.s32   q4, d8, d6[1]
    vmull.s32   q5, d10, d8[1]

    subs    r0, r0, #1
    bne     vmullI4ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmullI4ScalarMaxTest:

    vpush.64    {d8-d15}

vmullI4ScalarMaxTest_LOOP:

    // loop 1
    vmull.s32   q1, d2, d0[0]
    vmull.s32   q2, d4, d0[0]
    vmull.s32   q3, d6, d0[0]
    vmull.s32   q4, d8, d0[0]
    vmull.s32   q5, d10, d0[0]
    vmull.s32   q6, d12, d0[0]
    vmull.s32   q7, d14, d0[0]
    vmull.s32   q8, d16, d0[0]
    vmull.s32   q9, d18, d0[0]
    vmull.s32   q10, d20, d0[0]
    vmull.s32   q11, d22, d0[0]
    vmull.s32   q12, d24, d0[0]

    // loop 2
    vmull.s32   q1, d2, d0[0]
    vmull.s32   q2, d4, d0[0]
    vmull.s32   q3, d6, d0[0]
    vmull.s32   q4, d8, d0[0]
    vmull.s32   q5, d10, d0[0]
    vmull.s32   q6, d12, d0[0]
    vmull.s32   q7, d14, d0[0]
    vmull.s32   q8, d16, d0[0]
    vmull.s32   q9, d18, d0[0]
    vmull.s32   q10, d20, d0[0]
    vmull.s32   q11, d22, d0[0]
    vmull.s32   q12, d24, d0[0]

    // loop 3
    vmull.s32   q1, d2, d0[0]
    vmull.s32   q2, d4, d0[0]
    vmull.s32   q3, d6, d0[0]
    vmull.s32   q4, d8, d0[0]
    vmull.s32   q5, d10, d0[0]
    vmull.s32   q6, d12, d0[0]
    vmull.s32   q7, d14, d0[0]
    vmull.s32   q8, d16, d0[0]
    vmull.s32   q9, d18, d0[0]
    vmull.s32   q10, d20, d0[0]
    vmull.s32   q11, d22, d0[0]
    vmull.s32   q12, d24, d0[0]

    // loop 4
    vmull.s32   q1, d2, d0[0]
    vmull.s32   q2, d4, d0[0]
    vmull.s32   q3, d6, d0[0]
    vmull.s32   q4, d8, d0[0]
    vmull.s32   q5, d10, d0[0]
    vmull.s32   q6, d12, d0[0]
    vmull.s32   q7, d14, d0[0]
    vmull.s32   q8, d16, d0[0]
    vmull.s32   q9, d18, d0[0]
    vmull.s32   q10, d20, d0[0]
    vmull.s32   q11, d22, d0[0]
    vmull.s32   q12, d24, d0[0]

    // loop 5
    vmull.s32   q1, d2, d0[0]
    vmull.s32   q2, d4, d0[0]
    vmull.s32   q3, d6, d0[0]
    vmull.s32   q4, d8, d0[0]
    vmull.s32   q5, d10, d0[0]
    vmull.s32   q6, d12, d0[0]
    vmull.s32   q7, d14, d0[0]
    vmull.s32   q8, d16, d0[0]
    vmull.s32   q9, d18, d0[0]
    vmull.s32   q10, d20, d0[0]
    vmull.s32   q11, d22, d0[0]
    vmull.s32   q12, d24, d0[0]

    subs    r0, r0, #1
    bne     vmullI4ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vmvnImmMinTest:

    // loop 1
    vmvn.i32    q0, #10
    vmvn.i32    q0, #20
    vmvn.i32    q0, #30
    vmvn.i32    q0, #40
    vmvn.i32    q0, #50
    vmvn.i32    q0, #60
    vmvn.i32    q0, #70
    vmvn.i32    q0, #80
    vmvn.i32    q0, #90
    vmvn.i32    q0, #100
    vmvn.i32    q0, #110
    vmvn.i32    q0, #120

    // loop 2
    vmvn.i32    q0, #10
    vmvn.i32    q0, #20
    vmvn.i32    q0, #30
    vmvn.i32    q0, #40
    vmvn.i32    q0, #50
    vmvn.i32    q0, #60
    vmvn.i32    q0, #70
    vmvn.i32    q0, #80
    vmvn.i32    q0, #90
    vmvn.i32    q0, #100
    vmvn.i32    q0, #110
    vmvn.i32    q0, #120

    // loop 3
    vmvn.i32    q0, #10
    vmvn.i32    q0, #20
    vmvn.i32    q0, #30
    vmvn.i32    q0, #40
    vmvn.i32    q0, #50
    vmvn.i32    q0, #60
    vmvn.i32    q0, #70
    vmvn.i32    q0, #80
    vmvn.i32    q0, #90
    vmvn.i32    q0, #100
    vmvn.i32    q0, #110
    vmvn.i32    q0, #120

    // loop 4
    vmvn.i32    q0, #10
    vmvn.i32    q0, #20
    vmvn.i32    q0, #30
    vmvn.i32    q0, #40
    vmvn.i32    q0, #50
    vmvn.i32    q0, #60
    vmvn.i32    q0, #70
    vmvn.i32    q0, #80
    vmvn.i32    q0, #90
    vmvn.i32    q0, #100
    vmvn.i32    q0, #110
    vmvn.i32    q0, #120

    // loop 5
    vmvn.i32    q0, #10
    vmvn.i32    q0, #20
    vmvn.i32    q0, #30
    vmvn.i32    q0, #40
    vmvn.i32    q0, #50
    vmvn.i32    q0, #60
    vmvn.i32    q0, #70
    vmvn.i32    q0, #80
    vmvn.i32    q0, #90
    vmvn.i32    q0, #100
    vmvn.i32    q0, #110
    vmvn.i32    q0, #120

    subs    r0, r0, #1
    bne     _vmvnImmMinTest
    bx      lr

_vmvnImmMaxTest:

    vpush.64    {d8-d15}

vmvnImmMaxTest_LOOP:

    // loop 1
    vmvn.i32    q0, #10
    vmvn.i32    q1, #10
    vmvn.i32    q2, #10
    vmvn.i32    q3, #10
    vmvn.i32    q4, #10
    vmvn.i32    q5, #10
    vmvn.i32    q6, #10
    vmvn.i32    q7, #10
    vmvn.i32    q8, #10
    vmvn.i32    q9, #10
    vmvn.i32    q10, #10
    vmvn.i32    q11, #10

    // loop 2
    vmvn.i32    q0, #10
    vmvn.i32    q1, #10
    vmvn.i32    q2, #10
    vmvn.i32    q3, #10
    vmvn.i32    q4, #10
    vmvn.i32    q5, #10
    vmvn.i32    q6, #10
    vmvn.i32    q7, #10
    vmvn.i32    q8, #10
    vmvn.i32    q9, #10
    vmvn.i32    q10, #10
    vmvn.i32    q11, #10

    // loop 3
    vmvn.i32    q0, #10
    vmvn.i32    q1, #10
    vmvn.i32    q2, #10
    vmvn.i32    q3, #10
    vmvn.i32    q4, #10
    vmvn.i32    q5, #10
    vmvn.i32    q6, #10
    vmvn.i32    q7, #10
    vmvn.i32    q8, #10
    vmvn.i32    q9, #10
    vmvn.i32    q10, #10
    vmvn.i32    q11, #10

    // loop 4
    vmvn.i32    q0, #10
    vmvn.i32    q1, #10
    vmvn.i32    q2, #10
    vmvn.i32    q3, #10
    vmvn.i32    q4, #10
    vmvn.i32    q5, #10
    vmvn.i32    q6, #10
    vmvn.i32    q7, #10
    vmvn.i32    q8, #10
    vmvn.i32    q9, #10
    vmvn.i32    q10, #10
    vmvn.i32    q11, #10

    // loop 5
    vmvn.i32    q0, #10
    vmvn.i32    q1, #10
    vmvn.i32    q2, #10
    vmvn.i32    q3, #10
    vmvn.i32    q4, #10
    vmvn.i32    q5, #10
    vmvn.i32    q6, #10
    vmvn.i32    q7, #10
    vmvn.i32    q8, #10
    vmvn.i32    q9, #10
    vmvn.i32    q10, #10
    vmvn.i32    q11, #10

    subs    r0, r0, #1
    bne     vmvnImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vmvnMinTest:

    vpush.64    {d8-d15}

vmvnMinTest_LOOP:

    // loop 1
    vmvn    q0, q11
    vmvn    q1, q0
    vmvn    q2, q1
    vmvn    q3, q2
    vmvn    q4, q3
    vmvn    q5, q4
    vmvn    q6, q5
    vmvn    q7, q6
    vmvn    q8, q7
    vmvn    q9, q8
    vmvn    q10, q9
    vmvn    q11, q10

    // loop 2
    vmvn    q0, q11
    vmvn    q1, q0
    vmvn    q2, q1
    vmvn    q3, q2
    vmvn    q4, q3
    vmvn    q5, q4
    vmvn    q6, q5
    vmvn    q7, q6
    vmvn    q8, q7
    vmvn    q9, q8
    vmvn    q10, q9
    vmvn    q11, q10

    // loop 3
    vmvn    q0, q11
    vmvn    q1, q0
    vmvn    q2, q1
    vmvn    q3, q2
    vmvn    q4, q3
    vmvn    q5, q4
    vmvn    q6, q5
    vmvn    q7, q6
    vmvn    q8, q7
    vmvn    q9, q8
    vmvn    q10, q9
    vmvn    q11, q10

    // loop 4
    vmvn    q0, q11
    vmvn    q1, q0
    vmvn    q2, q1
    vmvn    q3, q2
    vmvn    q4, q3
    vmvn    q5, q4
    vmvn    q6, q5
    vmvn    q7, q6
    vmvn    q8, q7
    vmvn    q9, q8
    vmvn    q10, q9
    vmvn    q11, q10

    // loop 5
    vmvn    q0, q11
    vmvn    q1, q0
    vmvn    q2, q1
    vmvn    q3, q2
    vmvn    q4, q3
    vmvn    q5, q4
    vmvn    q6, q5
    vmvn    q7, q6
    vmvn    q8, q7
    vmvn    q9, q8
    vmvn    q10, q9
    vmvn    q11, q10

    subs    r0, r0, #1
    bne     vmvnMinTest_LOOP
    vpop.64  {d8-d15}
    bx      lr

_vmvnMaxTest:

    vpush.64    {d8-d15}

vmvnMaxTest_LOOP:

    // loop 1
    vmvn    q1, q0
    vmvn    q2, q0
    vmvn    q3, q0
    vmvn    q4, q0
    vmvn    q5, q0
    vmvn    q6, q0
    vmvn    q7, q0
    vmvn    q8, q0
    vmvn    q9, q0
    vmvn    q10, q0
    vmvn    q11, q0
    vmvn    q12, q0

    // loop 2
    vmvn    q1, q0
    vmvn    q2, q0
    vmvn    q3, q0
    vmvn    q4, q0
    vmvn    q5, q0
    vmvn    q6, q0
    vmvn    q7, q0
    vmvn    q8, q0
    vmvn    q9, q0
    vmvn    q10, q0
    vmvn    q11, q0
    vmvn    q12, q0

    // loop 3
    vmvn    q1, q0
    vmvn    q2, q0
    vmvn    q3, q0
    vmvn    q4, q0
    vmvn    q5, q0
    vmvn    q6, q0
    vmvn    q7, q0
    vmvn    q8, q0
    vmvn    q9, q0
    vmvn    q10, q0
    vmvn    q11, q0
    vmvn    q12, q0

    // loop 4
    vmvn    q1, q0
    vmvn    q2, q0
    vmvn    q3, q0
    vmvn    q4, q0
    vmvn    q5, q0
    vmvn    q6, q0
    vmvn    q7, q0
    vmvn    q8, q0
    vmvn    q9, q0
    vmvn    q10, q0
    vmvn    q11, q0
    vmvn    q12, q0

    // loop 5
    vmvn    q1, q0
    vmvn    q2, q0
    vmvn    q3, q0
    vmvn    q4, q0
    vmvn    q5, q0
    vmvn    q6, q0
    vmvn    q7, q0
    vmvn    q8, q0
    vmvn    q9, q0
    vmvn    q10, q0
    vmvn    q11, q0
    vmvn    q12, q0

    subs    r0, r0, #1
    bne     vmvnMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr


_vnegI4MinTest:

    vpush.64    {d8-d15}

vnegI4MinTest_LOOP:

    // loop 1
    vneg.s32    q0, q11
    vneg.s32    q1, q0
    vneg.s32    q2, q1
    vneg.s32    q3, q2
    vneg.s32    q4, q3
    vneg.s32    q5, q4
    vneg.s32    q6, q5
    vneg.s32    q7, q6
    vneg.s32    q8, q7
    vneg.s32    q9, q8
    vneg.s32    q10, q9
    vneg.s32    q11, q10

    // loop 2
    vneg.s32    q0, q11
    vneg.s32    q1, q0
    vneg.s32    q2, q1
    vneg.s32    q3, q2
    vneg.s32    q4, q3
    vneg.s32    q5, q4
    vneg.s32    q6, q5
    vneg.s32    q7, q6
    vneg.s32    q8, q7
    vneg.s32    q9, q8
    vneg.s32    q10, q9
    vneg.s32    q11, q10

    // loop 3
    vneg.s32    q0, q11
    vneg.s32    q1, q0
    vneg.s32    q2, q1
    vneg.s32    q3, q2
    vneg.s32    q4, q3
    vneg.s32    q5, q4
    vneg.s32    q6, q5
    vneg.s32    q7, q6
    vneg.s32    q8, q7
    vneg.s32    q9, q8
    vneg.s32    q10, q9
    vneg.s32    q11, q10

    // loop 4
    vneg.s32    q0, q11
    vneg.s32    q1, q0
    vneg.s32    q2, q1
    vneg.s32    q3, q2
    vneg.s32    q4, q3
    vneg.s32    q5, q4
    vneg.s32    q6, q5
    vneg.s32    q7, q6
    vneg.s32    q8, q7
    vneg.s32    q9, q8
    vneg.s32    q10, q9
    vneg.s32    q11, q10

    // loop 5
    vneg.s32    q0, q11
    vneg.s32    q1, q0
    vneg.s32    q2, q1
    vneg.s32    q3, q2
    vneg.s32    q4, q3
    vneg.s32    q5, q4
    vneg.s32    q6, q5
    vneg.s32    q7, q6
    vneg.s32    q8, q7
    vneg.s32    q9, q8
    vneg.s32    q10, q9
    vneg.s32    q11, q10

    subs    r0, r0, #1
    bne     vnegI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnegI4MaxTest:

    vpush.64    {d8-d15}

vnegI4MaxTest_LOOP:

    // loop 1
    vneg.s32    q1, q0
    vneg.s32    q2, q0
    vneg.s32    q3, q0
    vneg.s32    q4, q0
    vneg.s32    q5, q0
    vneg.s32    q6, q0
    vneg.s32    q7, q0
    vneg.s32    q8, q0
    vneg.s32    q9, q0
    vneg.s32    q10, q0
    vneg.s32    q11, q0
    vneg.s32    q12, q0

    // loop 2
    vneg.s32    q1, q0
    vneg.s32    q2, q0
    vneg.s32    q3, q0
    vneg.s32    q4, q0
    vneg.s32    q5, q0
    vneg.s32    q6, q0
    vneg.s32    q7, q0
    vneg.s32    q8, q0
    vneg.s32    q9, q0
    vneg.s32    q10, q0
    vneg.s32    q11, q0
    vneg.s32    q12, q0

    // loop 3
    vneg.s32    q1, q0
    vneg.s32    q2, q0
    vneg.s32    q3, q0
    vneg.s32    q4, q0
    vneg.s32    q5, q0
    vneg.s32    q6, q0
    vneg.s32    q7, q0
    vneg.s32    q8, q0
    vneg.s32    q9, q0
    vneg.s32    q10, q0
    vneg.s32    q11, q0
    vneg.s32    q12, q0

    // loop 4
    vneg.s32    q1, q0
    vneg.s32    q2, q0
    vneg.s32    q3, q0
    vneg.s32    q4, q0
    vneg.s32    q5, q0
    vneg.s32    q6, q0
    vneg.s32    q7, q0
    vneg.s32    q8, q0
    vneg.s32    q9, q0
    vneg.s32    q10, q0
    vneg.s32    q11, q0
    vneg.s32    q12, q0

    // loop 5
    vneg.s32    q1, q0
    vneg.s32    q2, q0
    vneg.s32    q3, q0
    vneg.s32    q4, q0
    vneg.s32    q5, q0
    vneg.s32    q6, q0
    vneg.s32    q7, q0
    vneg.s32    q8, q0
    vneg.s32    q9, q0
    vneg.s32    q10, q0
    vneg.s32    q11, q0
    vneg.s32    q12, q0

    subs    r0, r0, #1
    bne     vnegI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnegF4MinTest:

    vpush.64    {d8-d15}

vnegF4MinTest_LOOP:

    // loop 1
    vneg.f32    q0, q11
    vneg.f32    q1, q0
    vneg.f32    q2, q1
    vneg.f32    q3, q2
    vneg.f32    q4, q3
    vneg.f32    q5, q4
    vneg.f32    q6, q5
    vneg.f32    q7, q6
    vneg.f32    q8, q7
    vneg.f32    q9, q8
    vneg.f32    q10, q9
    vneg.f32    q11, q10

    // loop 2
    vneg.f32    q0, q11
    vneg.f32    q1, q0
    vneg.f32    q2, q1
    vneg.f32    q3, q2
    vneg.f32    q4, q3
    vneg.f32    q5, q4
    vneg.f32    q6, q5
    vneg.f32    q7, q6
    vneg.f32    q8, q7
    vneg.f32    q9, q8
    vneg.f32    q10, q9
    vneg.f32    q11, q10

    // loop 3
    vneg.f32    q0, q11
    vneg.f32    q1, q0
    vneg.f32    q2, q1
    vneg.f32    q3, q2
    vneg.f32    q4, q3
    vneg.f32    q5, q4
    vneg.f32    q6, q5
    vneg.f32    q7, q6
    vneg.f32    q8, q7
    vneg.f32    q9, q8
    vneg.f32    q10, q9
    vneg.f32    q11, q10

    // loop 4
    vneg.f32    q0, q11
    vneg.f32    q1, q0
    vneg.f32    q2, q1
    vneg.f32    q3, q2
    vneg.f32    q4, q3
    vneg.f32    q5, q4
    vneg.f32    q6, q5
    vneg.f32    q7, q6
    vneg.f32    q8, q7
    vneg.f32    q9, q8
    vneg.f32    q10, q9
    vneg.f32    q11, q10

    // loop 5
    vneg.f32    q0, q11
    vneg.f32    q1, q0
    vneg.f32    q2, q1
    vneg.f32    q3, q2
    vneg.f32    q4, q3
    vneg.f32    q5, q4
    vneg.f32    q6, q5
    vneg.f32    q7, q6
    vneg.f32    q8, q7
    vneg.f32    q9, q8
    vneg.f32    q10, q9
    vneg.f32    q11, q10

    subs    r0, r0, #1
    bne     vnegF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnegF4MaxTest:

    vpush.64    {d8-d15}

vnegF4MaxTest_LOOP:

    // loop 1
    vneg.f32    q1, q0
    vneg.f32    q2, q0
    vneg.f32    q3, q0
    vneg.f32    q4, q0
    vneg.f32    q5, q0
    vneg.f32    q6, q0
    vneg.f32    q7, q0
    vneg.f32    q8, q0
    vneg.f32    q9, q0
    vneg.f32    q10, q0
    vneg.f32    q11, q0
    vneg.f32    q12, q0

    // loop 2
    vneg.f32    q1, q0
    vneg.f32    q2, q0
    vneg.f32    q3, q0
    vneg.f32    q4, q0
    vneg.f32    q5, q0
    vneg.f32    q6, q0
    vneg.f32    q7, q0
    vneg.f32    q8, q0
    vneg.f32    q9, q0
    vneg.f32    q10, q0
    vneg.f32    q11, q0
    vneg.f32    q12, q0

    // loop 3
    vneg.f32    q1, q0
    vneg.f32    q2, q0
    vneg.f32    q3, q0
    vneg.f32    q4, q0
    vneg.f32    q5, q0
    vneg.f32    q6, q0
    vneg.f32    q7, q0
    vneg.f32    q8, q0
    vneg.f32    q9, q0
    vneg.f32    q10, q0
    vneg.f32    q11, q0
    vneg.f32    q12, q0

    // loop 4
    vneg.f32    q1, q0
    vneg.f32    q2, q0
    vneg.f32    q3, q0
    vneg.f32    q4, q0
    vneg.f32    q5, q0
    vneg.f32    q6, q0
    vneg.f32    q7, q0
    vneg.f32    q8, q0
    vneg.f32    q9, q0
    vneg.f32    q10, q0
    vneg.f32    q11, q0
    vneg.f32    q12, q0

    // loop 5
    vneg.f32    q1, q0
    vneg.f32    q2, q0
    vneg.f32    q3, q0
    vneg.f32    q4, q0
    vneg.f32    q5, q0
    vneg.f32    q6, q0
    vneg.f32    q7, q0
    vneg.f32    q8, q0
    vneg.f32    q9, q0
    vneg.f32    q10, q0
    vneg.f32    q11, q0
    vneg.f32    q12, q0

    subs    r0, r0, #1
    bne     vnegF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnegFMinTest:

    vpush.64    {d8-d15}

vnegFMinTest_LOOP:

    // loop 1
    vneg.f32    s0, s11
    vneg.f32    s1, s0
    vneg.f32    s2, s1
    vneg.f32    s3, s2
    vneg.f32    s4, s3
    vneg.f32    s5, s4
    vneg.f32    s6, s5
    vneg.f32    s7, s6
    vneg.f32    s8, s7
    vneg.f32    s9, s8
    vneg.f32    s10, s9
    vneg.f32    s11, s10

    // loop 2
    vneg.f32    s0, s11
    vneg.f32    s1, s0
    vneg.f32    s2, s1
    vneg.f32    s3, s2
    vneg.f32    s4, s3
    vneg.f32    s5, s4
    vneg.f32    s6, s5
    vneg.f32    s7, s6
    vneg.f32    s8, s7
    vneg.f32    s9, s8
    vneg.f32    s10, s9
    vneg.f32    s11, s10

    // loop 3
    vneg.f32    s0, s11
    vneg.f32    s1, s0
    vneg.f32    s2, s1
    vneg.f32    s3, s2
    vneg.f32    s4, s3
    vneg.f32    s5, s4
    vneg.f32    s6, s5
    vneg.f32    s7, s6
    vneg.f32    s8, s7
    vneg.f32    s9, s8
    vneg.f32    s10, s9
    vneg.f32    s11, s10

    // loop 4
    vneg.f32    s0, s11
    vneg.f32    s1, s0
    vneg.f32    s2, s1
    vneg.f32    s3, s2
    vneg.f32    s4, s3
    vneg.f32    s5, s4
    vneg.f32    s6, s5
    vneg.f32    s7, s6
    vneg.f32    s8, s7
    vneg.f32    s9, s8
    vneg.f32    s10, s9
    vneg.f32    s11, s10

    // loop 5
    vneg.f32    s0, s11
    vneg.f32    s1, s0
    vneg.f32    s2, s1
    vneg.f32    s3, s2
    vneg.f32    s4, s3
    vneg.f32    s5, s4
    vneg.f32    s6, s5
    vneg.f32    s7, s6
    vneg.f32    s8, s7
    vneg.f32    s9, s8
    vneg.f32    s10, s9
    vneg.f32    s11, s10

    subs    r0, r0, #1
    bne     vnegFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnegFMaxTest:

    vpush.64    {d8-d15}

vnegFMaxTest_LOOP:

    // loop 1
    vneg.f32    s1, s0
    vneg.f32    s2, s0
    vneg.f32    s3, s0
    vneg.f32    s4, s0
    vneg.f32    s5, s0
    vneg.f32    s6, s0
    vneg.f32    s7, s0
    vneg.f32    s8, s0
    vneg.f32    s9, s0
    vneg.f32    s10, s0
    vneg.f32    s11, s0
    vneg.f32    s12, s0

    // loop 2
    vneg.f32    s1, s0
    vneg.f32    s2, s0
    vneg.f32    s3, s0
    vneg.f32    s4, s0
    vneg.f32    s5, s0
    vneg.f32    s6, s0
    vneg.f32    s7, s0
    vneg.f32    s8, s0
    vneg.f32    s9, s0
    vneg.f32    s10, s0
    vneg.f32    s11, s0
    vneg.f32    s12, s0

    // loop 3
    vneg.f32    s1, s0
    vneg.f32    s2, s0
    vneg.f32    s3, s0
    vneg.f32    s4, s0
    vneg.f32    s5, s0
    vneg.f32    s6, s0
    vneg.f32    s7, s0
    vneg.f32    s8, s0
    vneg.f32    s9, s0
    vneg.f32    s10, s0
    vneg.f32    s11, s0
    vneg.f32    s12, s0

    // loop 4
    vneg.f32    s1, s0
    vneg.f32    s2, s0
    vneg.f32    s3, s0
    vneg.f32    s4, s0
    vneg.f32    s5, s0
    vneg.f32    s6, s0
    vneg.f32    s7, s0
    vneg.f32    s8, s0
    vneg.f32    s9, s0
    vneg.f32    s10, s0
    vneg.f32    s11, s0
    vneg.f32    s12, s0

    // loop 5
    vneg.f32    s1, s0
    vneg.f32    s2, s0
    vneg.f32    s3, s0
    vneg.f32    s4, s0
    vneg.f32    s5, s0
    vneg.f32    s6, s0
    vneg.f32    s7, s0
    vneg.f32    s8, s0
    vneg.f32    s9, s0
    vneg.f32    s10, s0
    vneg.f32    s11, s0
    vneg.f32    s12, s0

    subs    r0, r0, #1
    bne     vnegFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnegDMinTest:

    vpush.64    {d8-d15}

vnegDMinTest_LOOP:

    // loop 1
    vneg.f64    d0, d11
    vneg.f64    d1, d0
    vneg.f64    d2, d1
    vneg.f64    d3, d2
    vneg.f64    d4, d3
    vneg.f64    d5, d4
    vneg.f64    d6, d5
    vneg.f64    d7, d6
    vneg.f64    d8, d7
    vneg.f64    d9, d8
    vneg.f64    d10, d9
    vneg.f64    d11, d10

    // loop 2
    vneg.f64    d0, d11
    vneg.f64    d1, d0
    vneg.f64    d2, d1
    vneg.f64    d3, d2
    vneg.f64    d4, d3
    vneg.f64    d5, d4
    vneg.f64    d6, d5
    vneg.f64    d7, d6
    vneg.f64    d8, d7
    vneg.f64    d9, d8
    vneg.f64    d10, d9
    vneg.f64    d11, d10

    // loop 3
    vneg.f64    d0, d11
    vneg.f64    d1, d0
    vneg.f64    d2, d1
    vneg.f64    d3, d2
    vneg.f64    d4, d3
    vneg.f64    d5, d4
    vneg.f64    d6, d5
    vneg.f64    d7, d6
    vneg.f64    d8, d7
    vneg.f64    d9, d8
    vneg.f64    d10, d9
    vneg.f64    d11, d10

    // loop 4
    vneg.f64    d0, d11
    vneg.f64    d1, d0
    vneg.f64    d2, d1
    vneg.f64    d3, d2
    vneg.f64    d4, d3
    vneg.f64    d5, d4
    vneg.f64    d6, d5
    vneg.f64    d7, d6
    vneg.f64    d8, d7
    vneg.f64    d9, d8
    vneg.f64    d10, d9
    vneg.f64    d11, d10

    // loop 5
    vneg.f64    d0, d11
    vneg.f64    d1, d0
    vneg.f64    d2, d1
    vneg.f64    d3, d2
    vneg.f64    d4, d3
    vneg.f64    d5, d4
    vneg.f64    d6, d5
    vneg.f64    d7, d6
    vneg.f64    d8, d7
    vneg.f64    d9, d8
    vneg.f64    d10, d9
    vneg.f64    d11, d10

    subs    r0, r0, #1
    bne     vnegDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnegDMaxTest:

    vpush.64    {d8-d15}

vnegDMaxTest_LOOP:

    // loop 1
    vneg.f64    d1, d0
    vneg.f64    d2, d0
    vneg.f64    d3, d0
    vneg.f64    d4, d0
    vneg.f64    d5, d0
    vneg.f64    d6, d0
    vneg.f64    d7, d0
    vneg.f64    d8, d0
    vneg.f64    d9, d0
    vneg.f64    d10, d0
    vneg.f64    d11, d0
    vneg.f64    d12, d0

    // loop 2
    vneg.f64    d1, d0
    vneg.f64    d2, d0
    vneg.f64    d3, d0
    vneg.f64    d4, d0
    vneg.f64    d5, d0
    vneg.f64    d6, d0
    vneg.f64    d7, d0
    vneg.f64    d8, d0
    vneg.f64    d9, d0
    vneg.f64    d10, d0
    vneg.f64    d11, d0
    vneg.f64    d12, d0

    // loop 3
    vneg.f64    d1, d0
    vneg.f64    d2, d0
    vneg.f64    d3, d0
    vneg.f64    d4, d0
    vneg.f64    d5, d0
    vneg.f64    d6, d0
    vneg.f64    d7, d0
    vneg.f64    d8, d0
    vneg.f64    d9, d0
    vneg.f64    d10, d0
    vneg.f64    d11, d0
    vneg.f64    d12, d0

    // loop 4
    vneg.f64    d1, d0
    vneg.f64    d2, d0
    vneg.f64    d3, d0
    vneg.f64    d4, d0
    vneg.f64    d5, d0
    vneg.f64    d6, d0
    vneg.f64    d7, d0
    vneg.f64    d8, d0
    vneg.f64    d9, d0
    vneg.f64    d10, d0
    vneg.f64    d11, d0
    vneg.f64    d12, d0

    // loop 5
    vneg.f64    d1, d0
    vneg.f64    d2, d0
    vneg.f64    d3, d0
    vneg.f64    d4, d0
    vneg.f64    d5, d0
    vneg.f64    d6, d0
    vneg.f64    d7, d0
    vneg.f64    d8, d0
    vneg.f64    d9, d0
    vneg.f64    d10, d0
    vneg.f64    d11, d0
    vneg.f64    d12, d0

    subs    r0, r0, #1
    bne     vnegDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vnmlaSMinTest:

    vpush.64    {d8-d15}

vnmlaSMinTest_LOOP:

    // loop 1
    vnmla.f32   s0, s0, s11
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s1
    vnmla.f32   s3, s3, s2
    vnmla.f32   s4, s4, s3
    vnmla.f32   s5, s5, s4
    vnmla.f32   s6, s6, s5
    vnmla.f32   s7, s7, s6
    vnmla.f32   s8, s8, s7
    vnmla.f32   s9, s9, s8
    vnmla.f32   s10, s10, s9
    vnmla.f32   s11, s11, s10

    // loop 2
    vnmla.f32   s0, s0, s11
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s1
    vnmla.f32   s3, s3, s2
    vnmla.f32   s4, s4, s3
    vnmla.f32   s5, s5, s4
    vnmla.f32   s6, s6, s5
    vnmla.f32   s7, s7, s6
    vnmla.f32   s8, s8, s7
    vnmla.f32   s9, s9, s8
    vnmla.f32   s10, s10, s9
    vnmla.f32   s11, s11, s10

    // loop 3
    vnmla.f32   s0, s0, s11
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s1
    vnmla.f32   s3, s3, s2
    vnmla.f32   s4, s4, s3
    vnmla.f32   s5, s5, s4
    vnmla.f32   s6, s6, s5
    vnmla.f32   s7, s7, s6
    vnmla.f32   s8, s8, s7
    vnmla.f32   s9, s9, s8
    vnmla.f32   s10, s10, s9
    vnmla.f32   s11, s11, s10

    // loop 4
    vnmla.f32   s0, s0, s11
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s1
    vnmla.f32   s3, s3, s2
    vnmla.f32   s4, s4, s3
    vnmla.f32   s5, s5, s4
    vnmla.f32   s6, s6, s5
    vnmla.f32   s7, s7, s6
    vnmla.f32   s8, s8, s7
    vnmla.f32   s9, s9, s8
    vnmla.f32   s10, s10, s9
    vnmla.f32   s11, s11, s10

    // loop 5
    vnmla.f32   s0, s0, s11
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s1
    vnmla.f32   s3, s3, s2
    vnmla.f32   s4, s4, s3
    vnmla.f32   s5, s5, s4
    vnmla.f32   s6, s6, s5
    vnmla.f32   s7, s7, s6
    vnmla.f32   s8, s8, s7
    vnmla.f32   s9, s9, s8
    vnmla.f32   s10, s10, s9
    vnmla.f32   s11, s11, s10

    subs    r0, r0, #1
    bne     vnmlaSMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmlaSMaxTest:

    vpush.64    {d8-d15}

vnmlaSMaxTest_LOOP:

    // loop 1
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s0
    vnmla.f32   s3, s3, s0
    vnmla.f32   s4, s4, s0
    vnmla.f32   s5, s5, s0
    vnmla.f32   s6, s6, s0
    vnmla.f32   s7, s7, s0
    vnmla.f32   s8, s8, s0
    vnmla.f32   s9, s9, s0
    vnmla.f32   s10, s10, s0
    vnmla.f32   s11, s11, s0
    vnmla.f32   s12, s12, s0

    // loop 2
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s0
    vnmla.f32   s3, s3, s0
    vnmla.f32   s4, s4, s0
    vnmla.f32   s5, s5, s0
    vnmla.f32   s6, s6, s0
    vnmla.f32   s7, s7, s0
    vnmla.f32   s8, s8, s0
    vnmla.f32   s9, s9, s0
    vnmla.f32   s10, s10, s0
    vnmla.f32   s11, s11, s0
    vnmla.f32   s12, s12, s0

    // loop 3
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s0
    vnmla.f32   s3, s3, s0
    vnmla.f32   s4, s4, s0
    vnmla.f32   s5, s5, s0
    vnmla.f32   s6, s6, s0
    vnmla.f32   s7, s7, s0
    vnmla.f32   s8, s8, s0
    vnmla.f32   s9, s9, s0
    vnmla.f32   s10, s10, s0
    vnmla.f32   s11, s11, s0
    vnmla.f32   s12, s12, s0

    // loop 4
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s0
    vnmla.f32   s3, s3, s0
    vnmla.f32   s4, s4, s0
    vnmla.f32   s5, s5, s0
    vnmla.f32   s6, s6, s0
    vnmla.f32   s7, s7, s0
    vnmla.f32   s8, s8, s0
    vnmla.f32   s9, s9, s0
    vnmla.f32   s10, s10, s0
    vnmla.f32   s11, s11, s0
    vnmla.f32   s12, s12, s0

    // loop 5
    vnmla.f32   s1, s1, s0
    vnmla.f32   s2, s2, s0
    vnmla.f32   s3, s3, s0
    vnmla.f32   s4, s4, s0
    vnmla.f32   s5, s5, s0
    vnmla.f32   s6, s6, s0
    vnmla.f32   s7, s7, s0
    vnmla.f32   s8, s8, s0
    vnmla.f32   s9, s9, s0
    vnmla.f32   s10, s10, s0
    vnmla.f32   s11, s11, s0
    vnmla.f32   s12, s12, s0

    subs    r0, r0, #1
    bne     vnmlaSMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmlaDMinTest:

    vpush.64    {d8-d15}

vnmlaDMinTest_LOOP:

    // loop 1
    vnmla.f64   d0, d0, d11
    vnmla.f64   d1, d0, d0
    vnmla.f64   d2, d1, d1
    vnmla.f64   d3, d2, d2
    vnmla.f64   d4, d3, d3
    vnmla.f64   d5, d4, d4
    vnmla.f64   d6, d5, d5
    vnmla.f64   d7, d6, d6
    vnmla.f64   d8, d8, d7
    vnmla.f64  d9, d9, d8
    vnmla.f64   d10, d10, d9
    vnmla.f64   d11, d11, d10

    // loop 2
    vnmla.f64   d0, d0, d11
    vnmla.f64   d1, d0, d0
    vnmla.f64   d2, d1, d1
    vnmla.f64   d3, d2, d2
    vnmla.f64   d4, d3, d3
    vnmla.f64   d5, d4, d4
    vnmla.f64   d6, d5, d5
    vnmla.f64   d7, d6, d6
    vnmla.f64   d8, d8, d7
    vnmla.f64  d9, d9, d8
    vnmla.f64   d10, d10, d9
    vnmla.f64   d11, d11, d10

    // loop 3
    vnmla.f64   d0, d0, d11
    vnmla.f64   d1, d0, d0
    vnmla.f64   d2, d1, d1
    vnmla.f64   d3, d2, d2
    vnmla.f64   d4, d3, d3
    vnmla.f64   d5, d4, d4
    vnmla.f64   d6, d5, d5
    vnmla.f64   d7, d6, d6
    vnmla.f64   d8, d8, d7
    vnmla.f64  d9, d9, d8
    vnmla.f64   d10, d10, d9
    vnmla.f64   d11, d11, d10

    // loop 4
    vnmla.f64   d0, d0, d11
    vnmla.f64   d1, d0, d0
    vnmla.f64   d2, d1, d1
    vnmla.f64   d3, d2, d2
    vnmla.f64   d4, d3, d3
    vnmla.f64   d5, d4, d4
    vnmla.f64   d6, d5, d5
    vnmla.f64   d7, d6, d6
    vnmla.f64   d8, d8, d7
    vnmla.f64  d9, d9, d8
    vnmla.f64   d10, d10, d9
    vnmla.f64   d11, d11, d10

    // loop 5
    vnmla.f64   d0, d0, d11
    vnmla.f64   d1, d0, d0
    vnmla.f64   d2, d1, d1
    vnmla.f64   d3, d2, d2
    vnmla.f64   d4, d3, d3
    vnmla.f64   d5, d4, d4
    vnmla.f64   d6, d5, d5
    vnmla.f64   d7, d6, d6
    vnmla.f64   d8, d8, d7
    vnmla.f64  d9, d9, d8
    vnmla.f64   d10, d10, d9
    vnmla.f64   d11, d11, d10

    subs    r0, r0, #1
    bne     vnmlaDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmlaDMaxTest:

    vpush.64    {d8-d15}

vnmlaDMaxTest_LOOP:

    // loop 1
    vnmla.f64   d1, d1, d0
    vnmla.f64   d2, d2, d0
    vnmla.f64   d3, d3, d0
    vnmla.f64   d4, d4, d0
    vnmla.f64   d5, d5, d0
    vnmla.f64   d6, d6, d0
    vnmla.f64   d7, d7, d0
    vnmla.f64   d8, d8, d0
    vnmla.f64   d9, d9, d0
    vnmla.f64   d10, d10, d0
    vnmla.f64   d11, d11, d0
    vnmla.f64   d12, d12, d0

    // loop 2
    vnmla.f64   d1, d1, d0
    vnmla.f64   d2, d2, d0
    vnmla.f64   d3, d3, d0
    vnmla.f64   d4, d4, d0
    vnmla.f64   d5, d5, d0
    vnmla.f64   d6, d6, d0
    vnmla.f64   d7, d7, d0
    vnmla.f64   d8, d8, d0
    vnmla.f64   d9, d9, d0
    vnmla.f64   d10, d10, d0
    vnmla.f64   d11, d11, d0
    vnmla.f64   d12, d12, d0

    // loop 3
    vnmla.f64   d1, d1, d0
    vnmla.f64   d2, d2, d0
    vnmla.f64   d3, d3, d0
    vnmla.f64   d4, d4, d0
    vnmla.f64   d5, d5, d0
    vnmla.f64   d6, d6, d0
    vnmla.f64   d7, d7, d0
    vnmla.f64   d8, d8, d0
    vnmla.f64   d9, d9, d0
    vnmla.f64   d10, d10, d0
    vnmla.f64   d11, d11, d0
    vnmla.f64   d12, d12, d0

    // loop 4
    vnmla.f64   d1, d1, d0
    vnmla.f64   d2, d2, d0
    vnmla.f64   d3, d3, d0
    vnmla.f64   d4, d4, d0
    vnmla.f64   d5, d5, d0
    vnmla.f64   d6, d6, d0
    vnmla.f64   d7, d7, d0
    vnmla.f64   d8, d8, d0
    vnmla.f64   d9, d9, d0
    vnmla.f64   d10, d10, d0
    vnmla.f64   d11, d11, d0
    vnmla.f64   d12, d12, d0

    // loop 5
    vnmla.f64   d1, d1, d0
    vnmla.f64   d2, d2, d0
    vnmla.f64   d3, d3, d0
    vnmla.f64   d4, d4, d0
    vnmla.f64   d5, d5, d0
    vnmla.f64   d6, d6, d0
    vnmla.f64   d7, d7, d0
    vnmla.f64   d8, d8, d0
    vnmla.f64   d9, d9, d0
    vnmla.f64   d10, d10, d0
    vnmla.f64   d11, d11, d0
    vnmla.f64   d12, d12, d0

    subs    r0, r0, #1
    bne     vnmlaDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vnmlsSMinTest:

    vpush.64    {d8-d15}

vnmlsSMinTest_LOOP:

    // loop 1
    vnmls.f32   s0, s0, s11
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s1
    vnmls.f32   s3, s3, s2
    vnmls.f32   s4, s4, s3
    vnmls.f32   s5, s5, s4
    vnmls.f32   s6, s6, s5
    vnmls.f32   s7, s7, s6
    vnmls.f32   s8, s8, s7
    vnmls.f32   s9, s9, s8
    vnmls.f32   s10, s10, s9
    vnmls.f32   s11, s11, s10

    // loop 2
    vnmls.f32   s0, s0, s11
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s1
    vnmls.f32   s3, s3, s2
    vnmls.f32   s4, s4, s3
    vnmls.f32   s5, s5, s4
    vnmls.f32   s6, s6, s5
    vnmls.f32   s7, s7, s6
    vnmls.f32   s8, s8, s7
    vnmls.f32   s9, s9, s8
    vnmls.f32   s10, s10, s9
    vnmls.f32   s11, s11, s10

    // loop 3
    vnmls.f32   s0, s0, s11
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s1
    vnmls.f32   s3, s3, s2
    vnmls.f32   s4, s4, s3
    vnmls.f32   s5, s5, s4
    vnmls.f32   s6, s6, s5
    vnmls.f32   s7, s7, s6
    vnmls.f32   s8, s8, s7
    vnmls.f32   s9, s9, s8
    vnmls.f32   s10, s10, s9
    vnmls.f32   s11, s11, s10

    // loop 4
    vnmls.f32   s0, s0, s11
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s1
    vnmls.f32   s3, s3, s2
    vnmls.f32   s4, s4, s3
    vnmls.f32   s5, s5, s4
    vnmls.f32   s6, s6, s5
    vnmls.f32   s7, s7, s6
    vnmls.f32   s8, s8, s7
    vnmls.f32   s9, s9, s8
    vnmls.f32   s10, s10, s9
    vnmls.f32   s11, s11, s10

    // loop 5
    vnmls.f32   s0, s0, s11
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s1
    vnmls.f32   s3, s3, s2
    vnmls.f32   s4, s4, s3
    vnmls.f32   s5, s5, s4
    vnmls.f32   s6, s6, s5
    vnmls.f32   s7, s7, s6
    vnmls.f32   s8, s8, s7
    vnmls.f32   s9, s9, s8
    vnmls.f32   s10, s10, s9
    vnmls.f32   s11, s11, s10

    subs    r0, r0, #1
    bne     vnmlsSMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmlsSMaxTest:

    vpush.64    {d8-d15}

vnmlsSMaxTest_LOOP:

    // loop 1
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s0
    vnmls.f32   s3, s3, s0
    vnmls.f32   s4, s4, s0
    vnmls.f32   s5, s5, s0
    vnmls.f32   s6, s6, s0
    vnmls.f32   s7, s7, s0
    vnmls.f32   s8, s8, s0
    vnmls.f32   s9, s9, s0
    vnmls.f32   s10, s10, s0
    vnmls.f32   s11, s11, s0
    vnmls.f32   s12, s12, s0

    // loop 2
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s0
    vnmls.f32   s3, s3, s0
    vnmls.f32   s4, s4, s0
    vnmls.f32   s5, s5, s0
    vnmls.f32   s6, s6, s0
    vnmls.f32   s7, s7, s0
    vnmls.f32   s8, s8, s0
    vnmls.f32   s9, s9, s0
    vnmls.f32   s10, s10, s0
    vnmls.f32   s11, s11, s0
    vnmls.f32   s12, s12, s0

    // loop 3
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s0
    vnmls.f32   s3, s3, s0
    vnmls.f32   s4, s4, s0
    vnmls.f32   s5, s5, s0
    vnmls.f32   s6, s6, s0
    vnmls.f32   s7, s7, s0
    vnmls.f32   s8, s8, s0
    vnmls.f32   s9, s9, s0
    vnmls.f32   s10, s10, s0
    vnmls.f32   s11, s11, s0
    vnmls.f32   s12, s12, s0

    // loop 4
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s0
    vnmls.f32   s3, s3, s0
    vnmls.f32   s4, s4, s0
    vnmls.f32   s5, s5, s0
    vnmls.f32   s6, s6, s0
    vnmls.f32   s7, s7, s0
    vnmls.f32   s8, s8, s0
    vnmls.f32   s9, s9, s0
    vnmls.f32   s10, s10, s0
    vnmls.f32   s11, s11, s0
    vnmls.f32   s12, s12, s0

    // loop 5
    vnmls.f32   s1, s1, s0
    vnmls.f32   s2, s2, s0
    vnmls.f32   s3, s3, s0
    vnmls.f32   s4, s4, s0
    vnmls.f32   s5, s5, s0
    vnmls.f32   s6, s6, s0
    vnmls.f32   s7, s7, s0
    vnmls.f32   s8, s8, s0
    vnmls.f32   s9, s9, s0
    vnmls.f32   s10, s10, s0
    vnmls.f32   s11, s11, s0
    vnmls.f32   s12, s12, s0

    subs    r0, r0, #1
    bne     vnmlsSMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmlsDMinTest:

    vpush.64    {d8-d15}

vnmlsDMinTest_LOOP:

    // loop 1
    vnmls.f64   d0, d0, d11
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d1
    vnmls.f64   d3, d3, d2
    vnmls.f64   d4, d4, d3
    vnmls.f64   d5, d5, d4
    vnmls.f64   d6, d6, d5
    vnmls.f64   d7, d7, d6
    vnmls.f64   d8, d8, d7
    vnmls.f64   d9, d9, d8
    vnmls.f64   d10, d10, d9
    vnmls.f64   d11, d11, d10

    // loop 2
    vnmls.f64   d0, d0, d11
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d1
    vnmls.f64   d3, d3, d2
    vnmls.f64   d4, d4, d3
    vnmls.f64   d5, d5, d4
    vnmls.f64   d6, d6, d5
    vnmls.f64   d7, d7, d6
    vnmls.f64   d8, d8, d7
    vnmls.f64   d9, d9, d8
    vnmls.f64   d10, d10, d9
    vnmls.f64   d11, d11, d10

    // loop 3
    vnmls.f64   d0, d0, d11
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d1
    vnmls.f64   d3, d3, d2
    vnmls.f64   d4, d4, d3
    vnmls.f64   d5, d5, d4
    vnmls.f64   d6, d6, d5
    vnmls.f64   d7, d7, d6
    vnmls.f64   d8, d8, d7
    vnmls.f64   d9, d9, d8
    vnmls.f64   d10, d10, d9
    vnmls.f64   d11, d11, d10

    // loop 4
    vnmls.f64   d0, d0, d11
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d1
    vnmls.f64   d3, d3, d2
    vnmls.f64   d4, d4, d3
    vnmls.f64   d5, d5, d4
    vnmls.f64   d6, d6, d5
    vnmls.f64   d7, d7, d6
    vnmls.f64   d8, d8, d7
    vnmls.f64   d9, d9, d8
    vnmls.f64   d10, d10, d9
    vnmls.f64   d11, d11, d10

    // loop 5
    vnmls.f64   d0, d0, d11
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d1
    vnmls.f64   d3, d3, d2
    vnmls.f64   d4, d4, d3
    vnmls.f64   d5, d5, d4
    vnmls.f64   d6, d6, d5
    vnmls.f64   d7, d7, d6
    vnmls.f64   d8, d8, d7
    vnmls.f64   d9, d9, d8
    vnmls.f64   d10, d10, d9
    vnmls.f64   d11, d11, d10

    subs    r0, r0, #1
    bne     vnmlsDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmlsDMaxTest:

    vpush.64    {d8-d15}

vnmlsDMaxTest_LOOP:

    // loop 1
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d0
    vnmls.f64   d3, d3, d0
    vnmls.f64   d4, d4, d0
    vnmls.f64   d5, d5, d0
    vnmls.f64   d6, d6, d0
    vnmls.f64   d7, d7, d0
    vnmls.f64   d8, d8, d0
    vnmls.f64   d9, d9, d0
    vnmls.f64   d10, d10, d0
    vnmls.f64   d11, d11, d0
    vnmls.f64   d12, d12, d0

    // loop 2
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d0
    vnmls.f64   d3, d3, d0
    vnmls.f64   d4, d4, d0
    vnmls.f64   d5, d5, d0
    vnmls.f64   d6, d6, d0
    vnmls.f64   d7, d7, d0
    vnmls.f64   d8, d8, d0
    vnmls.f64   d9, d9, d0
    vnmls.f64   d10, d10, d0
    vnmls.f64   d11, d11, d0
    vnmls.f64   d12, d12, d0

    // loop 3
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d0
    vnmls.f64   d3, d3, d0
    vnmls.f64   d4, d4, d0
    vnmls.f64   d5, d5, d0
    vnmls.f64   d6, d6, d0
    vnmls.f64   d7, d7, d0
    vnmls.f64   d8, d8, d0
    vnmls.f64   d9, d9, d0
    vnmls.f64   d10, d10, d0
    vnmls.f64   d11, d11, d0
    vnmls.f64   d12, d12, d0

    // loop 4
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d0
    vnmls.f64   d3, d3, d0
    vnmls.f64   d4, d4, d0
    vnmls.f64   d5, d5, d0
    vnmls.f64   d6, d6, d0
    vnmls.f64   d7, d7, d0
    vnmls.f64   d8, d8, d0
    vnmls.f64   d9, d9, d0
    vnmls.f64   d10, d10, d0
    vnmls.f64   d11, d11, d0
    vnmls.f64   d12, d12, d0

    // loop 5
    vnmls.f64   d1, d1, d0
    vnmls.f64   d2, d2, d0
    vnmls.f64   d3, d3, d0
    vnmls.f64   d4, d4, d0
    vnmls.f64   d5, d5, d0
    vnmls.f64   d6, d6, d0
    vnmls.f64   d7, d7, d0
    vnmls.f64   d8, d8, d0
    vnmls.f64   d9, d9, d0
    vnmls.f64   d10, d10, d0
    vnmls.f64   d11, d11, d0
    vnmls.f64   d12, d12, d0

    subs    r0, r0, #1
    bne     vnmlsDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vnmulSMinTest:

    vpush.64    {d8-d15}

vnmulSMinTest_LOOP:

    // loop 1
    vnmul.f32   s0, s0, s11
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s1
    vnmul.f32   s3, s3, s2
    vnmul.f32   s4, s4, s3
    vnmul.f32   s5, s5, s4
    vnmul.f32   s6, s6, s5
    vnmul.f32   s7, s7, s6
    vnmul.f32   s8, s8, s7
    vnmul.f32   s9, s9, s8
    vnmul.f32   s10, s10, s9
    vnmul.f32   s11, s11, s10
    
    // loop 2
    vnmul.f32   s0, s0, s11
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s1
    vnmul.f32   s3, s3, s2
    vnmul.f32   s4, s4, s3
    vnmul.f32   s5, s5, s4
    vnmul.f32   s6, s6, s5
    vnmul.f32   s7, s7, s6
    vnmul.f32   s8, s8, s7
    vnmul.f32   s9, s9, s8
    vnmul.f32   s10, s10, s9
    vnmul.f32   s11, s11, s10

    // loop 3
    vnmul.f32   s0, s0, s11
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s1
    vnmul.f32   s3, s3, s2
    vnmul.f32   s4, s4, s3
    vnmul.f32   s5, s5, s4
    vnmul.f32   s6, s6, s5
    vnmul.f32   s7, s7, s6
    vnmul.f32   s8, s8, s7
    vnmul.f32   s9, s9, s8
    vnmul.f32   s10, s10, s9
    vnmul.f32   s11, s11, s10

    // loop 4
    vnmul.f32   s0, s0, s11
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s1
    vnmul.f32   s3, s3, s2
    vnmul.f32   s4, s4, s3
    vnmul.f32   s5, s5, s4
    vnmul.f32   s6, s6, s5
    vnmul.f32   s7, s7, s6
    vnmul.f32   s8, s8, s7
    vnmul.f32   s9, s9, s8
    vnmul.f32   s10, s10, s9
    vnmul.f32   s11, s11, s10

    // loop 5
    vnmul.f32   s0, s0, s11
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s1
    vnmul.f32   s3, s3, s2
    vnmul.f32   s4, s4, s3
    vnmul.f32   s5, s5, s4
    vnmul.f32   s6, s6, s5
    vnmul.f32   s7, s7, s6
    vnmul.f32   s8, s8, s7
    vnmul.f32   s9, s9, s8
    vnmul.f32   s10, s10, s9
    vnmul.f32   s11, s11, s10

    subs    r0, r0, #1
    bne     vnmulSMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmulSMaxTest:

    vpush.64    {d8-d15}

vnmulSMaxTest_LOOP:

    // loop 1
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s0
    vnmul.f32   s3, s3, s0
    vnmul.f32   s4, s4, s0
    vnmul.f32   s5, s5, s0
    vnmul.f32   s6, s6, s0
    vnmul.f32   s7, s7, s0
    vnmul.f32   s8, s8, s0
    vnmul.f32   s9, s9, s0
    vnmul.f32   s10, s10, s0
    vnmul.f32   s11, s11, s0
    vnmul.f32   s12, s12, s0

    // loop 2
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s0
    vnmul.f32   s3, s3, s0
    vnmul.f32   s4, s4, s0
    vnmul.f32   s5, s5, s0
    vnmul.f32   s6, s6, s0
    vnmul.f32   s7, s7, s0
    vnmul.f32   s8, s8, s0
    vnmul.f32   s9, s9, s0
    vnmul.f32   s10, s10, s0
    vnmul.f32   s11, s11, s0
    vnmul.f32   s12, s12, s0

    // loop 3
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s0
    vnmul.f32   s3, s3, s0
    vnmul.f32   s4, s4, s0
    vnmul.f32   s5, s5, s0
    vnmul.f32   s6, s6, s0
    vnmul.f32   s7, s7, s0
    vnmul.f32   s8, s8, s0
    vnmul.f32   s9, s9, s0
    vnmul.f32   s10, s10, s0
    vnmul.f32   s11, s11, s0
    vnmul.f32   s12, s12, s0

    // loop 4
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s0
    vnmul.f32   s3, s3, s0
    vnmul.f32   s4, s4, s0
    vnmul.f32   s5, s5, s0
    vnmul.f32   s6, s6, s0
    vnmul.f32   s7, s7, s0
    vnmul.f32   s8, s8, s0
    vnmul.f32   s9, s9, s0
    vnmul.f32   s10, s10, s0
    vnmul.f32   s11, s11, s0
    vnmul.f32   s12, s12, s0

    // loop 5
    vnmul.f32   s1, s1, s0
    vnmul.f32   s2, s2, s0
    vnmul.f32   s3, s3, s0
    vnmul.f32   s4, s4, s0
    vnmul.f32   s5, s5, s0
    vnmul.f32   s6, s6, s0
    vnmul.f32   s7, s7, s0
    vnmul.f32   s8, s8, s0
    vnmul.f32   s9, s9, s0
    vnmul.f32   s10, s10, s0
    vnmul.f32   s11, s11, s0
    vnmul.f32   s12, s12, s0

    subs    r0, r0, #1
    bne     vnmulSMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmulDMinTest:

    vpush.64    {d8-d15}

vnmulDMinTest_LOOP:

    // loop 1
    vnmul.f64   d0, d0, d11
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d1
    vnmul.f64   d3, d3, d2
    vnmul.f64   d4, d4, d3
    vnmul.f64   d5, d5, d4
    vnmul.f64   d6, d6, d5
    vnmul.f64   d7, d7, d6
    vnmul.f64   d8, d8, d7
    vnmul.f64   d9, d9, d8
    vnmul.f64   d10, d10, d9
    vnmul.f64   d11, d11, d10

    // loop 2
    vnmul.f64   d0, d0, d11
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d1
    vnmul.f64   d3, d3, d2
    vnmul.f64   d4, d4, d3
    vnmul.f64   d5, d5, d4
    vnmul.f64   d6, d6, d5
    vnmul.f64   d7, d7, d6
    vnmul.f64   d8, d8, d7
    vnmul.f64   d9, d9, d8
    vnmul.f64   d10, d10, d9
    vnmul.f64   d11, d11, d10

    // loop 3
    vnmul.f64   d0, d0, d11
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d1
    vnmul.f64   d3, d3, d2
    vnmul.f64   d4, d4, d3
    vnmul.f64   d5, d5, d4
    vnmul.f64   d6, d6, d5
    vnmul.f64   d7, d7, d6
    vnmul.f64   d8, d8, d7
    vnmul.f64   d9, d9, d8
    vnmul.f64   d10, d10, d9
    vnmul.f64   d11, d11, d10

    // loop 4
    vnmul.f64   d0, d0, d11
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d1
    vnmul.f64   d3, d3, d2
    vnmul.f64   d4, d4, d3
    vnmul.f64   d5, d5, d4
    vnmul.f64   d6, d6, d5
    vnmul.f64   d7, d7, d6
    vnmul.f64   d8, d8, d7
    vnmul.f64   d9, d9, d8
    vnmul.f64   d10, d10, d9
    vnmul.f64   d11, d11, d10

    // loop 5
    vnmul.f64   d0, d0, d11
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d1
    vnmul.f64   d3, d3, d2
    vnmul.f64   d4, d4, d3
    vnmul.f64   d5, d5, d4
    vnmul.f64   d6, d6, d5
    vnmul.f64   d7, d7, d6
    vnmul.f64   d8, d8, d7
    vnmul.f64   d9, d9, d8
    vnmul.f64   d10, d10, d9
    vnmul.f64   d11, d11, d10

    subs    r0, r0, #1
    bne     vnmulDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vnmulDMaxTest:

    vpush.64    {d8-d15}

vnmulDMaxTest_LOOP:

    // loop 1
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d0
    vnmul.f64   d3, d3, d0
    vnmul.f64   d4, d4, d0
    vnmul.f64   d5, d5, d0
    vnmul.f64   d6, d6, d0
    vnmul.f64   d7, d7, d0
    vnmul.f64   d8, d8, d0
    vnmul.f64   d9, d9, d0
    vnmul.f64   d10, d10, d0
    vnmul.f64   d11, d11, d0
    vnmul.f64   d12, d12, d0

    // loop 2
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d0
    vnmul.f64   d3, d3, d0
    vnmul.f64   d4, d4, d0
    vnmul.f64   d5, d5, d0
    vnmul.f64   d6, d6, d0
    vnmul.f64   d7, d7, d0
    vnmul.f64   d8, d8, d0
    vnmul.f64   d9, d9, d0
    vnmul.f64   d10, d10, d0
    vnmul.f64   d11, d11, d0
    vnmul.f64   d12, d12, d0

    // loop 3
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d0
    vnmul.f64   d3, d3, d0
    vnmul.f64   d4, d4, d0
    vnmul.f64   d5, d5, d0
    vnmul.f64   d6, d6, d0
    vnmul.f64   d7, d7, d0
    vnmul.f64   d8, d8, d0
    vnmul.f64   d9, d9, d0
    vnmul.f64   d10, d10, d0
    vnmul.f64   d11, d11, d0
    vnmul.f64   d12, d12, d0

    // loop 4
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d0
    vnmul.f64   d3, d3, d0
    vnmul.f64   d4, d4, d0
    vnmul.f64   d5, d5, d0
    vnmul.f64   d6, d6, d0
    vnmul.f64   d7, d7, d0
    vnmul.f64   d8, d8, d0
    vnmul.f64   d9, d9, d0
    vnmul.f64   d10, d10, d0
    vnmul.f64   d11, d11, d0
    vnmul.f64   d12, d12, d0

    // loop 5
    vnmul.f64   d1, d1, d0
    vnmul.f64   d2, d2, d0
    vnmul.f64   d3, d3, d0
    vnmul.f64   d4, d4, d0
    vnmul.f64   d5, d5, d0
    vnmul.f64   d6, d6, d0
    vnmul.f64   d7, d7, d0
    vnmul.f64   d8, d8, d0
    vnmul.f64   d9, d9, d0
    vnmul.f64   d10, d10, d0
    vnmul.f64   d11, d11, d0
    vnmul.f64   d12, d12, d0

    subs    r0, r0, #1
    bne     vnmulDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vornMinTest:

    vpush.64    {d8-d15}

vornMinTest_LOOP:

    // loop 1
    vorn    q0, q0, q11
    vorn    q1, q1, q0
    vorn    q2, q2, q1
    vorn    q3, q3, q2
    vorn    q4, q4, q3
    vorn    q5, q5, q4
    vorn    q6, q6, q5
    vorn    q7, q7, q6
    vorn    q8, q8, q7
    vorn    q9, q9, q8
    vorn    q10, q10, q9
    vorn    q11, q11, q10

    // loop 2
    vorn    q0, q0, q11
    vorn    q1, q1, q0
    vorn    q2, q2, q1
    vorn    q3, q3, q2
    vorn    q4, q4, q3
    vorn    q5, q5, q4
    vorn    q6, q6, q5
    vorn    q7, q7, q6
    vorn    q8, q8, q7
    vorn    q9, q9, q8
    vorn    q10, q10, q9
    vorn    q11, q11, q10

    // loop 3
    vorn    q0, q0, q11
    vorn    q1, q1, q0
    vorn    q2, q2, q1
    vorn    q3, q3, q2
    vorn    q4, q4, q3
    vorn    q5, q5, q4
    vorn    q6, q6, q5
    vorn    q7, q7, q6
    vorn    q8, q8, q7
    vorn    q9, q9, q8
    vorn    q10, q10, q9
    vorn    q11, q11, q10

    // loop 4
    vorn    q0, q0, q11
    vorn    q1, q1, q0
    vorn    q2, q2, q1
    vorn    q3, q3, q2
    vorn    q4, q4, q3
    vorn    q5, q5, q4
    vorn    q6, q6, q5
    vorn    q7, q7, q6
    vorn    q8, q8, q7
    vorn    q9, q9, q8
    vorn    q10, q10, q9
    vorn    q11, q11, q10

    // loop 5
    vorn    q0, q0, q11
    vorn    q1, q1, q0
    vorn    q2, q2, q1
    vorn    q3, q3, q2
    vorn    q4, q4, q3
    vorn    q5, q5, q4
    vorn    q6, q6, q5
    vorn    q7, q7, q6
    vorn    q8, q8, q7
    vorn    q9, q9, q8
    vorn    q10, q10, q9
    vorn    q11, q11, q10

    subs    r0, r0, #1
    bne     vornMinTest_LOOP
    vpop.64 {d8-d15}
    bx      lr

_vornMaxTest:

    vpush.64    {d8-d15}

vornMaxTest_LOOP:

    // loop 1
    vorn    q1, q1, q0
    vorn    q2, q2, q0
    vorn    q3, q3, q0
    vorn    q4, q4, q0
    vorn    q5, q5, q0
    vorn    q6, q6, q0
    vorn    q7, q7, q0
    vorn    q8, q8, q0
    vorn    q9, q9, q0
    vorn    q10, q10, q0
    vorn    q11, q11, q0
    vorn    q12, q12, q0

    // loop 2
    vorn    q1, q1, q0
    vorn    q2, q2, q0
    vorn    q3, q3, q0
    vorn    q4, q4, q0
    vorn    q5, q5, q0
    vorn    q6, q6, q0
    vorn    q7, q7, q0
    vorn    q8, q8, q0
    vorn    q9, q9, q0
    vorn    q10, q10, q0
    vorn    q11, q11, q0
    vorn    q12, q12, q0

    // loop 3
    vorn    q1, q1, q0
    vorn    q2, q2, q0
    vorn    q3, q3, q0
    vorn    q4, q4, q0
    vorn    q5, q5, q0
    vorn    q6, q6, q0
    vorn    q7, q7, q0
    vorn    q8, q8, q0
    vorn    q9, q9, q0
    vorn    q10, q10, q0
    vorn    q11, q11, q0
    vorn    q12, q12, q0

    // loop 4
    vorn    q1, q1, q0
    vorn    q2, q2, q0
    vorn    q3, q3, q0
    vorn    q4, q4, q0
    vorn    q5, q5, q0
    vorn    q6, q6, q0
    vorn    q7, q7, q0
    vorn    q8, q8, q0
    vorn    q9, q9, q0
    vorn    q10, q10, q0
    vorn    q11, q11, q0
    vorn    q12, q12, q0

    // loop 5
    vorn    q1, q1, q0
    vorn    q2, q2, q0
    vorn    q3, q3, q0
    vorn    q4, q4, q0
    vorn    q5, q5, q0
    vorn    q6, q6, q0
    vorn    q7, q7, q0
    vorn    q8, q8, q0
    vorn    q9, q9, q0
    vorn    q10, q10, q0
    vorn    q11, q11, q0
    vorn    q12, q12, q0

    subs    r0, r0, #1
    bne     vornMaxTest_LOOP
    vpop.64 {d8-d15}
    bx      lr


_vorrImmMinTest:

    // loop 1
    vorr.i32    q0, #1
    vorr.i32    q0, #2
    vorr.i32    q0, #3
    vorr.i32    q0, #4
    vorr.i32    q0, #5
    vorr.i32    q0, #6
    vorr.i32    q0, #7
    vorr.i32    q0, #8
    vorr.i32    q0, #9
    vorr.i32    q0, #10
    vorr.i32    q0, #11
    vorr.i32    q0, #12

    // loop 2
    vorr.i32    q0, #1
    vorr.i32    q0, #2
    vorr.i32    q0, #3
    vorr.i32    q0, #4
    vorr.i32    q0, #5
    vorr.i32    q0, #6
    vorr.i32    q0, #7
    vorr.i32    q0, #8
    vorr.i32    q0, #9
    vorr.i32    q0, #10
    vorr.i32    q0, #11
    vorr.i32    q0, #12

    // loop 3
    vorr.i32    q0, #1
    vorr.i32    q0, #2
    vorr.i32    q0, #3
    vorr.i32    q0, #4
    vorr.i32    q0, #5
    vorr.i32    q0, #6
    vorr.i32    q0, #7
    vorr.i32    q0, #8
    vorr.i32    q0, #9
    vorr.i32    q0, #10
    vorr.i32    q0, #11
    vorr.i32    q0, #12

    // loop 4
    vorr.i32    q0, #1
    vorr.i32    q0, #2
    vorr.i32    q0, #3
    vorr.i32    q0, #4
    vorr.i32    q0, #5
    vorr.i32    q0, #6
    vorr.i32    q0, #7
    vorr.i32    q0, #8
    vorr.i32    q0, #9
    vorr.i32    q0, #10
    vorr.i32    q0, #11
    vorr.i32    q0, #12

    // loop 5
    vorr.i32    q0, #1
    vorr.i32    q0, #2
    vorr.i32    q0, #3
    vorr.i32    q0, #4
    vorr.i32    q0, #5
    vorr.i32    q0, #6
    vorr.i32    q0, #7
    vorr.i32    q0, #8
    vorr.i32    q0, #9
    vorr.i32    q0, #10
    vorr.i32    q0, #11
    vorr.i32    q0, #12

    subs    r0, r0, #1
    bne     _vorrImmMinTest
    bx      lr

_vorrImmMaxTest:

    vpush.64    {d8-d15}

vorrImmMaxTest_LOOP:

    // loop 1
    vorr.i32    q0, #0
    vorr.i32    q1, #0
    vorr.i32    q2, #0
    vorr.i32    q3, #0
    vorr.i32    q4, #0
    vorr.i32    q5, #0
    vorr.i32    q6, #0
    vorr.i32    q7, #0
    vorr.i32    q8, #0
    vorr.i32    q9, #0
    vorr.i32    q10, #0
    vorr.i32    q11, #0

    // loop 2
    vorr.i32    q0, #0
    vorr.i32    q1, #0
    vorr.i32    q2, #0
    vorr.i32    q3, #0
    vorr.i32    q4, #0
    vorr.i32    q5, #0
    vorr.i32    q6, #0
    vorr.i32    q7, #0
    vorr.i32    q8, #0
    vorr.i32    q9, #0
    vorr.i32    q10, #0
    vorr.i32    q11, #0

    // loop 3
    vorr.i32    q0, #0
    vorr.i32    q1, #0
    vorr.i32    q2, #0
    vorr.i32    q3, #0
    vorr.i32    q4, #0
    vorr.i32    q5, #0
    vorr.i32    q6, #0
    vorr.i32    q7, #0
    vorr.i32    q8, #0
    vorr.i32    q9, #0
    vorr.i32    q10, #0
    vorr.i32    q11, #0

    // loop 4
    vorr.i32    q0, #0
    vorr.i32    q1, #0
    vorr.i32    q2, #0
    vorr.i32    q3, #0
    vorr.i32    q4, #0
    vorr.i32    q5, #0
    vorr.i32    q6, #0
    vorr.i32    q7, #0
    vorr.i32    q8, #0
    vorr.i32    q9, #0
    vorr.i32    q10, #0
    vorr.i32    q11, #0

    // loop 5
    vorr.i32    q0, #0
    vorr.i32    q1, #0
    vorr.i32    q2, #0
    vorr.i32    q3, #0
    vorr.i32    q4, #0
    vorr.i32    q5, #0
    vorr.i32    q6, #0
    vorr.i32    q7, #0
    vorr.i32    q8, #0
    vorr.i32    q9, #0
    vorr.i32    q10, #0
    vorr.i32    q11, #0

    subs    r0, r0, #1
    bne     vorrImmMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vorrMinTest:

    vpush.64    {d8-d15}

vorrMinTest_LOOP:

    // loop 1
    vorr.i32    q0, q0, q11
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q1
    vorr.i32    q3, q3, q2
    vorr.i32    q4, q4, q3
    vorr.i32    q5, q5, q4
    vorr.i32    q6, q6, q5
    vorr.i32    q7, q7, q6
    vorr.i32    q8, q8, q7
    vorr.i32    q9, q9, q8
    vorr.i32    q10, q10, q9
    vorr.i32    q11, q11, q10

    // loop 2
    vorr.i32    q0, q0, q11
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q1
    vorr.i32    q3, q3, q2
    vorr.i32    q4, q4, q3
    vorr.i32    q5, q5, q4
    vorr.i32    q6, q6, q5
    vorr.i32    q7, q7, q6
    vorr.i32    q8, q8, q7
    vorr.i32    q9, q9, q8
    vorr.i32    q10, q10, q9
    vorr.i32    q11, q11, q10

    // loop 3
    vorr.i32    q0, q0, q11
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q1
    vorr.i32    q3, q3, q2
    vorr.i32    q4, q4, q3
    vorr.i32    q5, q5, q4
    vorr.i32    q6, q6, q5
    vorr.i32    q7, q7, q6
    vorr.i32    q8, q8, q7
    vorr.i32    q9, q9, q8
    vorr.i32    q10, q10, q9
    vorr.i32    q11, q11, q10

    // loop 4
    vorr.i32    q0, q0, q11
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q1
    vorr.i32    q3, q3, q2
    vorr.i32    q4, q4, q3
    vorr.i32    q5, q5, q4
    vorr.i32    q6, q6, q5
    vorr.i32    q7, q7, q6
    vorr.i32    q8, q8, q7
    vorr.i32    q9, q9, q8
    vorr.i32    q10, q10, q9
    vorr.i32    q11, q11, q10

    // loop 5
    vorr.i32    q0, q0, q11
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q1
    vorr.i32    q3, q3, q2
    vorr.i32    q4, q4, q3
    vorr.i32    q5, q5, q4
    vorr.i32    q6, q6, q5
    vorr.i32    q7, q7, q6
    vorr.i32    q8, q8, q7
    vorr.i32    q9, q9, q8
    vorr.i32    q10, q10, q9
    vorr.i32    q11, q11, q10

    subs    r0, r0, #1
    bne     vorrMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vorrMaxTest:

    vpush.64    {d8-d15}

vorrMaxTest_LOOP:

    // loop 1
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q0
    vorr.i32    q3, q3, q0
    vorr.i32    q4, q4, q0
    vorr.i32    q5, q5, q0
    vorr.i32    q6, q6, q0
    vorr.i32    q7, q7, q0
    vorr.i32    q8, q8, q0
    vorr.i32    q9, q9, q0
    vorr.i32    q10, q10, q0
    vorr.i32    q11, q11, q0
    vorr.i32    q12, q12, q0

    // loop 2
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q0
    vorr.i32    q3, q3, q0
    vorr.i32    q4, q4, q0
    vorr.i32    q5, q5, q0
    vorr.i32    q6, q6, q0
    vorr.i32    q7, q7, q0
    vorr.i32    q8, q8, q0
    vorr.i32    q9, q9, q0
    vorr.i32    q10, q10, q0
    vorr.i32    q11, q11, q0
    vorr.i32    q12, q12, q0

    // loop 3
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q0
    vorr.i32    q3, q3, q0
    vorr.i32    q4, q4, q0
    vorr.i32    q5, q5, q0
    vorr.i32    q6, q6, q0
    vorr.i32    q7, q7, q0
    vorr.i32    q8, q8, q0
    vorr.i32    q9, q9, q0
    vorr.i32    q10, q10, q0
    vorr.i32    q11, q11, q0
    vorr.i32    q12, q12, q0

    // loop 4
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q0
    vorr.i32    q3, q3, q0
    vorr.i32    q4, q4, q0
    vorr.i32    q5, q5, q0
    vorr.i32    q6, q6, q0
    vorr.i32    q7, q7, q0
    vorr.i32    q8, q8, q0
    vorr.i32    q9, q9, q0
    vorr.i32    q10, q10, q0
    vorr.i32    q11, q11, q0
    vorr.i32    q12, q12, q0

    // loop 5
    vorr.i32    q1, q1, q0
    vorr.i32    q2, q2, q0
    vorr.i32    q3, q3, q0
    vorr.i32    q4, q4, q0
    vorr.i32    q5, q5, q0
    vorr.i32    q6, q6, q0
    vorr.i32    q7, q7, q0
    vorr.i32    q8, q8, q0
    vorr.i32    q9, q9, q0
    vorr.i32    q10, q10, q0
    vorr.i32    q11, q11, q0
    vorr.i32    q12, q12, q0

    subs    r0, r0, #1
    bne     vorrMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vpadalI4MinTest:

    vpush.64    {d8-d15}

vpadalI4MinTest_LOOP:

    // loop 1
    vpadal.s32  q0, q11
    vpadal.s32  q1, q0
    vpadal.s32  q2, q1
    vpadal.s32  q3, q2
    vpadal.s32  q4, q3
    vpadal.s32  q5, q4
    vpadal.s32  q6, q5
    vpadal.s32  q7, q6
    vpadal.s32  q8, q7
    vpadal.s32  q9, q8
    vpadal.s32  q10, q9
    vpadal.s32  q11, q10

    // loop 2
    vpadal.s32  q0, q11
    vpadal.s32  q1, q0
    vpadal.s32  q2, q1
    vpadal.s32  q3, q2
    vpadal.s32  q4, q3
    vpadal.s32  q5, q4
    vpadal.s32  q6, q5
    vpadal.s32  q7, q6
    vpadal.s32  q8, q7
    vpadal.s32  q9, q8
    vpadal.s32  q10, q9
    vpadal.s32  q11, q10

    // loop 3
    vpadal.s32  q0, q11
    vpadal.s32  q1, q0
    vpadal.s32  q2, q1
    vpadal.s32  q3, q2
    vpadal.s32  q4, q3
    vpadal.s32  q5, q4
    vpadal.s32  q6, q5
    vpadal.s32  q7, q6
    vpadal.s32  q8, q7
    vpadal.s32  q9, q8
    vpadal.s32  q10, q9
    vpadal.s32  q11, q10

    // loop 4
    vpadal.s32  q0, q11
    vpadal.s32  q1, q0
    vpadal.s32  q2, q1
    vpadal.s32  q3, q2
    vpadal.s32  q4, q3
    vpadal.s32  q5, q4
    vpadal.s32  q6, q5
    vpadal.s32  q7, q6
    vpadal.s32  q8, q7
    vpadal.s32  q9, q8
    vpadal.s32  q10, q9
    vpadal.s32  q11, q10

    // loop 5
    vpadal.s32  q0, q11
    vpadal.s32  q1, q0
    vpadal.s32  q2, q1
    vpadal.s32  q3, q2
    vpadal.s32  q4, q3
    vpadal.s32  q5, q4
    vpadal.s32  q6, q5
    vpadal.s32  q7, q6
    vpadal.s32  q8, q7
    vpadal.s32  q9, q8
    vpadal.s32  q10, q9
    vpadal.s32  q11, q10

    subs    r0, r0, #1
    bne     vpadalI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpadalI4MaxTest:

    vpush.64    {d8-d15}

vpadalI4MaxTest_LOOP:

    // loop 1
    vpadal.s32  q1, q0
    vpadal.s32  q2, q0
    vpadal.s32  q3, q0
    vpadal.s32  q4, q0
    vpadal.s32  q5, q0
    vpadal.s32  q6, q0
    vpadal.s32  q7, q0
    vpadal.s32  q8, q0
    vpadal.s32  q9, q0
    vpadal.s32  q10, q0
    vpadal.s32  q11, q0
    vpadal.s32  q12, q0

    // loop 2
    vpadal.s32  q1, q0
    vpadal.s32  q2, q0
    vpadal.s32  q3, q0
    vpadal.s32  q4, q0
    vpadal.s32  q5, q0
    vpadal.s32  q6, q0
    vpadal.s32  q7, q0
    vpadal.s32  q8, q0
    vpadal.s32  q9, q0
    vpadal.s32  q10, q0
    vpadal.s32  q11, q0
    vpadal.s32  q12, q0

    // loop 3
    vpadal.s32  q1, q0
    vpadal.s32  q2, q0
    vpadal.s32  q3, q0
    vpadal.s32  q4, q0
    vpadal.s32  q5, q0
    vpadal.s32  q6, q0
    vpadal.s32  q7, q0
    vpadal.s32  q8, q0
    vpadal.s32  q9, q0
    vpadal.s32  q10, q0
    vpadal.s32  q11, q0
    vpadal.s32  q12, q0

    // loop 4
    vpadal.s32  q1, q0
    vpadal.s32  q2, q0
    vpadal.s32  q3, q0
    vpadal.s32  q4, q0
    vpadal.s32  q5, q0
    vpadal.s32  q6, q0
    vpadal.s32  q7, q0
    vpadal.s32  q8, q0
    vpadal.s32  q9, q0
    vpadal.s32  q10, q0
    vpadal.s32  q11, q0
    vpadal.s32  q12, q0

    // loop 5
    vpadal.s32  q1, q0
    vpadal.s32  q2, q0
    vpadal.s32  q3, q0
    vpadal.s32  q4, q0
    vpadal.s32  q5, q0
    vpadal.s32  q6, q0
    vpadal.s32  q7, q0
    vpadal.s32  q8, q0
    vpadal.s32  q9, q0
    vpadal.s32  q10, q0
    vpadal.s32  q11, q0
    vpadal.s32  q12, q0

    subs    r0, r0, #1
    bne     vpadalI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vpaddI4MinTest:

    vpush.64    {d8-d15}

vpaddI4MinTest_LOOP:

    // loop 1
    vpadd.i32   d0, d0, d11
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d1
    vpadd.i32   d3, d3, d2
    vpadd.i32   d4, d4, d3
    vpadd.i32   d5, d5, d4
    vpadd.i32   d6, d6, d5
    vpadd.i32   d7, d7, d6
    vpadd.i32   d8, d8, d7
    vpadd.i32   d9, d9, d8
    vpadd.i32   d10, d10, d9
    vpadd.i32   d11, d11, d10

    // loop 2
    vpadd.i32   d0, d0, d11
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d1
    vpadd.i32   d3, d3, d2
    vpadd.i32   d4, d4, d3
    vpadd.i32   d5, d5, d4
    vpadd.i32   d6, d6, d5
    vpadd.i32   d7, d7, d6
    vpadd.i32   d8, d8, d7
    vpadd.i32   d9, d9, d8
    vpadd.i32   d10, d10, d9
    vpadd.i32   d11, d11, d10

    // loop 3
    vpadd.i32   d0, d0, d11
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d1
    vpadd.i32   d3, d3, d2
    vpadd.i32   d4, d4, d3
    vpadd.i32   d5, d5, d4
    vpadd.i32   d6, d6, d5
    vpadd.i32   d7, d7, d6
    vpadd.i32   d8, d8, d7
    vpadd.i32   d9, d9, d8
    vpadd.i32   d10, d10, d9
    vpadd.i32   d11, d11, d10

    // loop 4
    vpadd.i32   d0, d0, d11
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d1
    vpadd.i32   d3, d3, d2
    vpadd.i32   d4, d4, d3
    vpadd.i32   d5, d5, d4
    vpadd.i32   d6, d6, d5
    vpadd.i32   d7, d7, d6
    vpadd.i32   d8, d8, d7
    vpadd.i32   d9, d9, d8
    vpadd.i32   d10, d10, d9
    vpadd.i32   d11, d11, d10

    // loop 5
    vpadd.i32   d0, d0, d11
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d1
    vpadd.i32   d3, d3, d2
    vpadd.i32   d4, d4, d3
    vpadd.i32   d5, d5, d4
    vpadd.i32   d6, d6, d5
    vpadd.i32   d7, d7, d6
    vpadd.i32   d8, d8, d7
    vpadd.i32   d9, d9, d8
    vpadd.i32   d10, d10, d9
    vpadd.i32   d11, d11, d10

    subs    r0, r0, #1
    bne     vpaddI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpaddI4MaxTest:

    vpush.64    {d8-d15}

vpaddI4MaxTest_LOOP:

    // loop 1
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d0
    vpadd.i32   d3, d3, d0
    vpadd.i32   d4, d4, d0
    vpadd.i32   d5, d5, d0
    vpadd.i32   d6, d6, d0
    vpadd.i32   d7, d7, d0
    vpadd.i32   d8, d8, d0
    vpadd.i32   d9, d9, d0
    vpadd.i32   d10, d10, d0
    vpadd.i32   d11, d11, d0
    vpadd.i32   d12, d12, d0

    // loop 2
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d0
    vpadd.i32   d3, d3, d0
    vpadd.i32   d4, d4, d0
    vpadd.i32   d5, d5, d0
    vpadd.i32   d6, d6, d0
    vpadd.i32   d7, d7, d0
    vpadd.i32   d8, d8, d0
    vpadd.i32   d9, d9, d0
    vpadd.i32   d10, d10, d0
    vpadd.i32   d11, d11, d0
    vpadd.i32   d12, d12, d0

    // loop 3
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d0
    vpadd.i32   d3, d3, d0
    vpadd.i32   d4, d4, d0
    vpadd.i32   d5, d5, d0
    vpadd.i32   d6, d6, d0
    vpadd.i32   d7, d7, d0
    vpadd.i32   d8, d8, d0
    vpadd.i32   d9, d9, d0
    vpadd.i32   d10, d10, d0
    vpadd.i32   d11, d11, d0
    vpadd.i32   d12, d12, d0

    // loop 4
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d0
    vpadd.i32   d3, d3, d0
    vpadd.i32   d4, d4, d0
    vpadd.i32   d5, d5, d0
    vpadd.i32   d6, d6, d0
    vpadd.i32   d7, d7, d0
    vpadd.i32   d8, d8, d0
    vpadd.i32   d9, d9, d0
    vpadd.i32   d10, d10, d0
    vpadd.i32   d11, d11, d0
    vpadd.i32   d12, d12, d0

    // loop 5
    vpadd.i32   d1, d1, d0
    vpadd.i32   d2, d2, d0
    vpadd.i32   d3, d3, d0
    vpadd.i32   d4, d4, d0
    vpadd.i32   d5, d5, d0
    vpadd.i32   d6, d6, d0
    vpadd.i32   d7, d7, d0
    vpadd.i32   d8, d8, d0
    vpadd.i32   d9, d9, d0
    vpadd.i32   d10, d10, d0
    vpadd.i32   d11, d11, d0
    vpadd.i32   d12, d12, d0

    subs    r0, r0, #1
    bne     vpaddI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpaddF4MinTest:

    vpush.64    {d8-d15}

vpaddF4MinTest_LOOP:

    // loop 1
    vpadd.f32   d0, d0, d11
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d1
    vpadd.f32   d3, d3, d2
    vpadd.f32   d4, d4, d3
    vpadd.f32   d5, d5, d4
    vpadd.f32   d6, d6, d5
    vpadd.f32   d7, d7, d6
    vpadd.f32   d8, d8, d7
    vpadd.f32   d9, d9, d8
    vpadd.f32   d10, d10, d9
    vpadd.f32   d11, d11, d10

    // loop 2
    vpadd.f32   d0, d0, d11
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d1
    vpadd.f32   d3, d3, d2
    vpadd.f32   d4, d4, d3
    vpadd.f32   d5, d5, d4
    vpadd.f32   d6, d6, d5
    vpadd.f32   d7, d7, d6
    vpadd.f32   d8, d8, d7
    vpadd.f32   d9, d9, d8
    vpadd.f32   d10, d10, d9
    vpadd.f32   d11, d11, d10

    // loop 3
    vpadd.f32   d0, d0, d11
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d1
    vpadd.f32   d3, d3, d2
    vpadd.f32   d4, d4, d3
    vpadd.f32   d5, d5, d4
    vpadd.f32   d6, d6, d5
    vpadd.f32   d7, d7, d6
    vpadd.f32   d8, d8, d7
    vpadd.f32   d9, d9, d8
    vpadd.f32   d10, d10, d9
    vpadd.f32   d11, d11, d10

    // loop 4
    vpadd.f32   d0, d0, d11
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d1
    vpadd.f32   d3, d3, d2
    vpadd.f32   d4, d4, d3
    vpadd.f32   d5, d5, d4
    vpadd.f32   d6, d6, d5
    vpadd.f32   d7, d7, d6
    vpadd.f32   d8, d8, d7
    vpadd.f32   d9, d9, d8
    vpadd.f32   d10, d10, d9
    vpadd.f32   d11, d11, d10

    // loop 5
    vpadd.f32   d0, d0, d11
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d1
    vpadd.f32   d3, d3, d2
    vpadd.f32   d4, d4, d3
    vpadd.f32   d5, d5, d4
    vpadd.f32   d6, d6, d5
    vpadd.f32   d7, d7, d6
    vpadd.f32   d8, d8, d7
    vpadd.f32   d9, d9, d8
    vpadd.f32   d10, d10, d9
    vpadd.f32   d11, d11, d10

    subs    r0, r0, #1
    bne     vpaddF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpaddF4MaxTest:

    vpush.64    {d8-d15}

vpaddF4MaxTest_LOOP:

    // loop 1
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d0
    vpadd.f32   d3, d3, d0
    vpadd.f32   d4, d4, d0
    vpadd.f32   d5, d5, d0
    vpadd.f32   d6, d6, d0
    vpadd.f32   d7, d7, d0
    vpadd.f32   d8, d8, d0
    vpadd.f32   d9, d9, d0
    vpadd.f32   d10, d10, d0
    vpadd.f32   d11, d11, d0
    vpadd.f32   d12, d12, d0

    // loop 2
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d0
    vpadd.f32   d3, d3, d0
    vpadd.f32   d4, d4, d0
    vpadd.f32   d5, d5, d0
    vpadd.f32   d6, d6, d0
    vpadd.f32   d7, d7, d0
    vpadd.f32   d8, d8, d0
    vpadd.f32   d9, d9, d0
    vpadd.f32   d10, d10, d0
    vpadd.f32   d11, d11, d0
    vpadd.f32   d12, d12, d0

    // loop 3
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d0
    vpadd.f32   d3, d3, d0
    vpadd.f32   d4, d4, d0
    vpadd.f32   d5, d5, d0
    vpadd.f32   d6, d6, d0
    vpadd.f32   d7, d7, d0
    vpadd.f32   d8, d8, d0
    vpadd.f32   d9, d9, d0
    vpadd.f32   d10, d10, d0
    vpadd.f32   d11, d11, d0
    vpadd.f32   d12, d12, d0

    // loop 4
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d0
    vpadd.f32   d3, d3, d0
    vpadd.f32   d4, d4, d0
    vpadd.f32   d5, d5, d0
    vpadd.f32   d6, d6, d0
    vpadd.f32   d7, d7, d0
    vpadd.f32   d8, d8, d0
    vpadd.f32   d9, d9, d0
    vpadd.f32   d10, d10, d0
    vpadd.f32   d11, d11, d0
    vpadd.f32   d12, d12, d0

    // loop 5
    vpadd.f32   d1, d1, d0
    vpadd.f32   d2, d2, d0
    vpadd.f32   d3, d3, d0
    vpadd.f32   d4, d4, d0
    vpadd.f32   d5, d5, d0
    vpadd.f32   d6, d6, d0
    vpadd.f32   d7, d7, d0
    vpadd.f32   d8, d8, d0
    vpadd.f32   d9, d9, d0
    vpadd.f32   d10, d10, d0
    vpadd.f32   d11, d11, d0
    vpadd.f32   d12, d12, d0

    subs    r0, r0, #1
    bne     vpaddF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vpaddlI4MinTest:

    vpush.64    {d8-d15}

vpaddlI4MinTest_LOOP:

    // loop 1
    vpaddl.s32  q0, q11
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q1
    vpaddl.s32  q3, q2
    vpaddl.s32  q4, q3
    vpaddl.s32  q5, q4
    vpaddl.s32  q6, q5
    vpaddl.s32  q7, q6
    vpaddl.s32  q8, q7
    vpaddl.s32  q9, q8
    vpaddl.s32  q10, q9
    vpaddl.s32  q11, q10

    // loop 2
    vpaddl.s32  q0, q11
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q1
    vpaddl.s32  q3, q2
    vpaddl.s32  q4, q3
    vpaddl.s32  q5, q4
    vpaddl.s32  q6, q5
    vpaddl.s32  q7, q6
    vpaddl.s32  q8, q7
    vpaddl.s32  q9, q8
    vpaddl.s32  q10, q9
    vpaddl.s32  q11, q10

    // loop 3
    vpaddl.s32  q0, q11
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q1
    vpaddl.s32  q3, q2
    vpaddl.s32  q4, q3
    vpaddl.s32  q5, q4
    vpaddl.s32  q6, q5
    vpaddl.s32  q7, q6
    vpaddl.s32  q8, q7
    vpaddl.s32  q9, q8
    vpaddl.s32  q10, q9
    vpaddl.s32  q11, q10

    // loop 4
    vpaddl.s32  q0, q11
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q1
    vpaddl.s32  q3, q2
    vpaddl.s32  q4, q3
    vpaddl.s32  q5, q4
    vpaddl.s32  q6, q5
    vpaddl.s32  q7, q6
    vpaddl.s32  q8, q7
    vpaddl.s32  q9, q8
    vpaddl.s32  q10, q9
    vpaddl.s32  q11, q10

    // loop 5
    vpaddl.s32  q0, q11
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q1
    vpaddl.s32  q3, q2
    vpaddl.s32  q4, q3
    vpaddl.s32  q5, q4
    vpaddl.s32  q6, q5
    vpaddl.s32  q7, q6
    vpaddl.s32  q8, q7
    vpaddl.s32  q9, q8
    vpaddl.s32  q10, q9
    vpaddl.s32  q11, q10

    subs    r0, r0, #1
    bne     vpaddlI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpaddlI4MaxTest:

    vpush.64    {d8-d15}

vpaddlI4MaxTest_LOOP:

    // loop 1
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q0
    vpaddl.s32  q3, q0
    vpaddl.s32  q4, q0
    vpaddl.s32  q5, q0
    vpaddl.s32  q6, q0
    vpaddl.s32  q7, q0
    vpaddl.s32  q8, q0
    vpaddl.s32  q9, q0
    vpaddl.s32  q10, q0
    vpaddl.s32  q11, q0
    vpaddl.s32  q12, q0

    // loop 2
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q0
    vpaddl.s32  q3, q0
    vpaddl.s32  q4, q0
    vpaddl.s32  q5, q0
    vpaddl.s32  q6, q0
    vpaddl.s32  q7, q0
    vpaddl.s32  q8, q0
    vpaddl.s32  q9, q0
    vpaddl.s32  q10, q0
    vpaddl.s32  q11, q0
    vpaddl.s32  q12, q0

    // loop 3
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q0
    vpaddl.s32  q3, q0
    vpaddl.s32  q4, q0
    vpaddl.s32  q5, q0
    vpaddl.s32  q6, q0
    vpaddl.s32  q7, q0
    vpaddl.s32  q8, q0
    vpaddl.s32  q9, q0
    vpaddl.s32  q10, q0
    vpaddl.s32  q11, q0
    vpaddl.s32  q12, q0

    // loop 4
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q0
    vpaddl.s32  q3, q0
    vpaddl.s32  q4, q0
    vpaddl.s32  q5, q0
    vpaddl.s32  q6, q0
    vpaddl.s32  q7, q0
    vpaddl.s32  q8, q0
    vpaddl.s32  q9, q0
    vpaddl.s32  q10, q0
    vpaddl.s32  q11, q0
    vpaddl.s32  q12, q0

    // loop 5
    vpaddl.s32  q1, q0
    vpaddl.s32  q2, q0
    vpaddl.s32  q3, q0
    vpaddl.s32  q4, q0
    vpaddl.s32  q5, q0
    vpaddl.s32  q6, q0
    vpaddl.s32  q7, q0
    vpaddl.s32  q8, q0
    vpaddl.s32  q9, q0
    vpaddl.s32  q10, q0
    vpaddl.s32  q11, q0
    vpaddl.s32  q12, q0

    subs    r0, r0, #1
    bne     vpaddlI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vpmaxI4MinTest:

    vpush.64    {d8-d15}

vpmaxI4MinTest_LOOP:

    // loop 1
    vpmax.s32   d0, d0, d11
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d1
    vpmax.s32   d3, d3, d2
    vpmax.s32   d4, d4, d3
    vpmax.s32   d5, d5, d4
    vpmax.s32   d6, d6, d5
    vpmax.s32   d7, d7, d6
    vpmax.s32   d8, d8, d7
    vpmax.s32   d9, d9, d8
    vpmax.s32   d10, d10, d9
    vpmax.s32   d11, d11, d10
    
    // loop 2
    vpmax.s32   d0, d0, d11
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d1
    vpmax.s32   d3, d3, d2
    vpmax.s32   d4, d4, d3
    vpmax.s32   d5, d5, d4
    vpmax.s32   d6, d6, d5
    vpmax.s32   d7, d7, d6
    vpmax.s32   d8, d8, d7
    vpmax.s32   d9, d9, d8
    vpmax.s32   d10, d10, d9
    vpmax.s32   d11, d11, d10

    // loop 3
    vpmax.s32   d0, d0, d11
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d1
    vpmax.s32   d3, d3, d2
    vpmax.s32   d4, d4, d3
    vpmax.s32   d5, d5, d4
    vpmax.s32   d6, d6, d5
    vpmax.s32   d7, d7, d6
    vpmax.s32   d8, d8, d7
    vpmax.s32   d9, d9, d8
    vpmax.s32   d10, d10, d9
    vpmax.s32   d11, d11, d10

    // loop 4
    vpmax.s32   d0, d0, d11
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d1
    vpmax.s32   d3, d3, d2
    vpmax.s32   d4, d4, d3
    vpmax.s32   d5, d5, d4
    vpmax.s32   d6, d6, d5
    vpmax.s32   d7, d7, d6
    vpmax.s32   d8, d8, d7
    vpmax.s32   d9, d9, d8
    vpmax.s32   d10, d10, d9
    vpmax.s32   d11, d11, d10

    // loop 5
    vpmax.s32   d0, d0, d11
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d1
    vpmax.s32   d3, d3, d2
    vpmax.s32   d4, d4, d3
    vpmax.s32   d5, d5, d4
    vpmax.s32   d6, d6, d5
    vpmax.s32   d7, d7, d6
    vpmax.s32   d8, d8, d7
    vpmax.s32   d9, d9, d8
    vpmax.s32   d10, d10, d9
    vpmax.s32   d11, d11, d10

    subs    r0, r0, #1
    bne     vpmaxI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpmaxI4MaxTest:

    vpush.64    {d8-d15}

vpmaxI4MaxTest_LOOP:

    // loop 1
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d0
    vpmax.s32   d3, d3, d0
    vpmax.s32   d4, d4, d0
    vpmax.s32   d5, d5, d0
    vpmax.s32   d6, d6, d0
    vpmax.s32   d7, d7, d0
    vpmax.s32   d8, d8, d0
    vpmax.s32   d9, d9, d0
    vpmax.s32   d10, d10, d0
    vpmax.s32   d11, d11, d0
    vpmax.s32   d12, d12, d0

    // loop 2
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d0
    vpmax.s32   d3, d3, d0
    vpmax.s32   d4, d4, d0
    vpmax.s32   d5, d5, d0
    vpmax.s32   d6, d6, d0
    vpmax.s32   d7, d7, d0
    vpmax.s32   d8, d8, d0
    vpmax.s32   d9, d9, d0
    vpmax.s32   d10, d10, d0
    vpmax.s32   d11, d11, d0
    vpmax.s32   d12, d12, d0

    // loop 3
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d0
    vpmax.s32   d3, d3, d0
    vpmax.s32   d4, d4, d0
    vpmax.s32   d5, d5, d0
    vpmax.s32   d6, d6, d0
    vpmax.s32   d7, d7, d0
    vpmax.s32   d8, d8, d0
    vpmax.s32   d9, d9, d0
    vpmax.s32   d10, d10, d0
    vpmax.s32   d11, d11, d0
    vpmax.s32   d12, d12, d0

    // loop 4
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d0
    vpmax.s32   d3, d3, d0
    vpmax.s32   d4, d4, d0
    vpmax.s32   d5, d5, d0
    vpmax.s32   d6, d6, d0
    vpmax.s32   d7, d7, d0
    vpmax.s32   d8, d8, d0
    vpmax.s32   d9, d9, d0
    vpmax.s32   d10, d10, d0
    vpmax.s32   d11, d11, d0
    vpmax.s32   d12, d12, d0

    // loop 5
    vpmax.s32   d1, d1, d0
    vpmax.s32   d2, d2, d0
    vpmax.s32   d3, d3, d0
    vpmax.s32   d4, d4, d0
    vpmax.s32   d5, d5, d0
    vpmax.s32   d6, d6, d0
    vpmax.s32   d7, d7, d0
    vpmax.s32   d8, d8, d0
    vpmax.s32   d9, d9, d0
    vpmax.s32   d10, d10, d0
    vpmax.s32   d11, d11, d0
    vpmax.s32   d12, d12, d0

    subs    r0, r0, #1
    bne     vpmaxI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpmaxF4MinTest:

    vpush.64    {d8-d15}

vpmaxF4MinTest_LOOP:

    // loop 1
    vpmax.f32   d0, d0, d11
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d1
    vpmax.f32   d3, d3, d2
    vpmax.f32   d4, d4, d3
    vpmax.f32   d5, d5, d4
    vpmax.f32   d6, d6, d5
    vpmax.f32   d7, d7, d6
    vpmax.f32   d8, d8, d7
    vpmax.f32   d9, d9, d8
    vpmax.f32   d10, d10, d9
    vpmax.f32   d11, d11, d10

    // loop 2
    vpmax.f32   d0, d0, d11
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d1
    vpmax.f32   d3, d3, d2
    vpmax.f32   d4, d4, d3
    vpmax.f32   d5, d5, d4
    vpmax.f32   d6, d6, d5
    vpmax.f32   d7, d7, d6
    vpmax.f32   d8, d8, d7
    vpmax.f32   d9, d9, d8
    vpmax.f32   d10, d10, d9
    vpmax.f32   d11, d11, d10

    // loop 3
    vpmax.f32   d0, d0, d11
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d1
    vpmax.f32   d3, d3, d2
    vpmax.f32   d4, d4, d3
    vpmax.f32   d5, d5, d4
    vpmax.f32   d6, d6, d5
    vpmax.f32   d7, d7, d6
    vpmax.f32   d8, d8, d7
    vpmax.f32   d9, d9, d8
    vpmax.f32   d10, d10, d9
    vpmax.f32   d11, d11, d10

    // loop 4
    vpmax.f32   d0, d0, d11
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d1
    vpmax.f32   d3, d3, d2
    vpmax.f32   d4, d4, d3
    vpmax.f32   d5, d5, d4
    vpmax.f32   d6, d6, d5
    vpmax.f32   d7, d7, d6
    vpmax.f32   d8, d8, d7
    vpmax.f32   d9, d9, d8
    vpmax.f32   d10, d10, d9
    vpmax.f32   d11, d11, d10

    // loop 5
    vpmax.f32   d0, d0, d11
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d1
    vpmax.f32   d3, d3, d2
    vpmax.f32   d4, d4, d3
    vpmax.f32   d5, d5, d4
    vpmax.f32   d6, d6, d5
    vpmax.f32   d7, d7, d6
    vpmax.f32   d8, d8, d7
    vpmax.f32   d9, d9, d8
    vpmax.f32   d10, d10, d9
    vpmax.f32   d11, d11, d10

    subs    r0, r0, #1
    bne     vpmaxF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpmaxF4MaxTest:

    vpush.64    {d8-d15}

vpmaxF4MaxTest_LOOP:

    // loop 1
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d0
    vpmax.f32   d3, d3, d0
    vpmax.f32   d4, d4, d0
    vpmax.f32   d5, d5, d0
    vpmax.f32   d6, d6, d0
    vpmax.f32   d7, d7, d0
    vpmax.f32   d8, d8, d0
    vpmax.f32   d9, d9, d0
    vpmax.f32   d10, d10, d0
    vpmax.f32   d11, d11, d0
    vpmax.f32   d12, d12, d0

    // loop 2
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d0
    vpmax.f32   d3, d3, d0
    vpmax.f32   d4, d4, d0
    vpmax.f32   d5, d5, d0
    vpmax.f32   d6, d6, d0
    vpmax.f32   d7, d7, d0
    vpmax.f32   d8, d8, d0
    vpmax.f32   d9, d9, d0
    vpmax.f32   d10, d10, d0
    vpmax.f32   d11, d11, d0
    vpmax.f32   d12, d12, d0

    // loop 3
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d0
    vpmax.f32   d3, d3, d0
    vpmax.f32   d4, d4, d0
    vpmax.f32   d5, d5, d0
    vpmax.f32   d6, d6, d0
    vpmax.f32   d7, d7, d0
    vpmax.f32   d8, d8, d0
    vpmax.f32   d9, d9, d0
    vpmax.f32   d10, d10, d0
    vpmax.f32   d11, d11, d0
    vpmax.f32   d12, d12, d0

    // loop 4
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d0
    vpmax.f32   d3, d3, d0
    vpmax.f32   d4, d4, d0
    vpmax.f32   d5, d5, d0
    vpmax.f32   d6, d6, d0
    vpmax.f32   d7, d7, d0
    vpmax.f32   d8, d8, d0
    vpmax.f32   d9, d9, d0
    vpmax.f32   d10, d10, d0
    vpmax.f32   d11, d11, d0
    vpmax.f32   d12, d12, d0

    // loop 5
    vpmax.f32   d1, d1, d0
    vpmax.f32   d2, d2, d0
    vpmax.f32   d3, d3, d0
    vpmax.f32   d4, d4, d0
    vpmax.f32   d5, d5, d0
    vpmax.f32   d6, d6, d0
    vpmax.f32   d7, d7, d0
    vpmax.f32   d8, d8, d0
    vpmax.f32   d9, d9, d0
    vpmax.f32   d10, d10, d0
    vpmax.f32   d11, d11, d0
    vpmax.f32   d12, d12, d0

    subs    r0, r0, #1
    bne     vpmaxF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vpminI4MinTest:

    vpush.64    {d8-d15}

vpminI4MinTest_LOOP:

    // loop 1
    vpmin.s32   d0, d0, d11
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d1
    vpmin.s32   d3, d3, d2
    vpmin.s32   d4, d4, d3
    vpmin.s32   d5, d5, d4
    vpmin.s32   d6, d6, d5
    vpmin.s32   d7, d7, d6
    vpmin.s32   d8, d8, d7
    vpmin.s32   d9, d9, d8
    vpmin.s32   d10, d10, d9
    vpmin.s32   d11, d11, d10

    // loop 2
    vpmin.s32   d0, d0, d11
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d1
    vpmin.s32   d3, d3, d2
    vpmin.s32   d4, d4, d3
    vpmin.s32   d5, d5, d4
    vpmin.s32   d6, d6, d5
    vpmin.s32   d7, d7, d6
    vpmin.s32   d8, d8, d7
    vpmin.s32   d9, d9, d8
    vpmin.s32   d10, d10, d9
    vpmin.s32   d11, d11, d10

    // loop 3
    vpmin.s32   d0, d0, d11
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d1
    vpmin.s32   d3, d3, d2
    vpmin.s32   d4, d4, d3
    vpmin.s32   d5, d5, d4
    vpmin.s32   d6, d6, d5
    vpmin.s32   d7, d7, d6
    vpmin.s32   d8, d8, d7
    vpmin.s32   d9, d9, d8
    vpmin.s32   d10, d10, d9
    vpmin.s32   d11, d11, d10

    // loop 4
    vpmin.s32   d0, d0, d11
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d1
    vpmin.s32   d3, d3, d2
    vpmin.s32   d4, d4, d3
    vpmin.s32   d5, d5, d4
    vpmin.s32   d6, d6, d5
    vpmin.s32   d7, d7, d6
    vpmin.s32   d8, d8, d7
    vpmin.s32   d9, d9, d8
    vpmin.s32   d10, d10, d9
    vpmin.s32   d11, d11, d10

    // loop 5
    vpmin.s32   d0, d0, d11
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d1
    vpmin.s32   d3, d3, d2
    vpmin.s32   d4, d4, d3
    vpmin.s32   d5, d5, d4
    vpmin.s32   d6, d6, d5
    vpmin.s32   d7, d7, d6
    vpmin.s32   d8, d8, d7
    vpmin.s32   d9, d9, d8
    vpmin.s32   d10, d10, d9
    vpmin.s32   d11, d11, d10

    subs    r0, r0, #1
    bne     vpminI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpminI4MaxTest:

    vpush.64    {d8-d15}

vpminI4MaxTest_LOOP:

    // loop 1
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d0
    vpmin.s32   d3, d3, d0
    vpmin.s32   d4, d4, d0
    vpmin.s32   d5, d5, d0
    vpmin.s32   d6, d6, d0
    vpmin.s32   d7, d7, d0
    vpmin.s32   d8, d8, d0
    vpmin.s32   d9, d9, d0
    vpmin.s32   d10, d10, d0
    vpmin.s32   d11, d11, d0
    vpmin.s32   d12, d12, d0

    // loop 2
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d0
    vpmin.s32   d3, d3, d0
    vpmin.s32   d4, d4, d0
    vpmin.s32   d5, d5, d0
    vpmin.s32   d6, d6, d0
    vpmin.s32   d7, d7, d0
    vpmin.s32   d8, d8, d0
    vpmin.s32   d9, d9, d0
    vpmin.s32   d10, d10, d0
    vpmin.s32   d11, d11, d0
    vpmin.s32   d12, d12, d0

    // loop 3
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d0
    vpmin.s32   d3, d3, d0
    vpmin.s32   d4, d4, d0
    vpmin.s32   d5, d5, d0
    vpmin.s32   d6, d6, d0
    vpmin.s32   d7, d7, d0
    vpmin.s32   d8, d8, d0
    vpmin.s32   d9, d9, d0
    vpmin.s32   d10, d10, d0
    vpmin.s32   d11, d11, d0
    vpmin.s32   d12, d12, d0

    // loop 4
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d0
    vpmin.s32   d3, d3, d0
    vpmin.s32   d4, d4, d0
    vpmin.s32   d5, d5, d0
    vpmin.s32   d6, d6, d0
    vpmin.s32   d7, d7, d0
    vpmin.s32   d8, d8, d0
    vpmin.s32   d9, d9, d0
    vpmin.s32   d10, d10, d0
    vpmin.s32   d11, d11, d0
    vpmin.s32   d12, d12, d0

    // loop 5
    vpmin.s32   d1, d1, d0
    vpmin.s32   d2, d2, d0
    vpmin.s32   d3, d3, d0
    vpmin.s32   d4, d4, d0
    vpmin.s32   d5, d5, d0
    vpmin.s32   d6, d6, d0
    vpmin.s32   d7, d7, d0
    vpmin.s32   d8, d8, d0
    vpmin.s32   d9, d9, d0
    vpmin.s32   d10, d10, d0
    vpmin.s32   d11, d11, d0
    vpmin.s32   d12, d12, d0

    subs    r0, r0, #1
    bne     vpminI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpminF4MinTest:

    vpush.64    {d8-d15}

vpminF4MinTest_LOOP:

    // loop 1
    vpmin.f32   d0, d0, d11
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d1
    vpmin.f32   d3, d3, d2
    vpmin.f32   d4, d4, d3
    vpmin.f32   d5, d5, d4
    vpmin.f32   d6, d6, d5
    vpmin.f32   d7, d7, d6
    vpmin.f32   d8, d8, d7
    vpmin.f32   d9, d9, d8
    vpmin.f32   d10, d10, d9
    vpmin.f32   d11, d11, d10

    // loop 2
    vpmin.f32   d0, d0, d11
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d1
    vpmin.f32   d3, d3, d2
    vpmin.f32   d4, d4, d3
    vpmin.f32   d5, d5, d4
    vpmin.f32   d6, d6, d5
    vpmin.f32   d7, d7, d6
    vpmin.f32   d8, d8, d7
    vpmin.f32   d9, d9, d8
    vpmin.f32   d10, d10, d9
    vpmin.f32   d11, d11, d10

    // loop 3
    vpmin.f32   d0, d0, d11
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d1
    vpmin.f32   d3, d3, d2
    vpmin.f32   d4, d4, d3
    vpmin.f32   d5, d5, d4
    vpmin.f32   d6, d6, d5
    vpmin.f32   d7, d7, d6
    vpmin.f32   d8, d8, d7
    vpmin.f32   d9, d9, d8
    vpmin.f32   d10, d10, d9
    vpmin.f32   d11, d11, d10

    // loop 4
    vpmin.f32   d0, d0, d11
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d1
    vpmin.f32   d3, d3, d2
    vpmin.f32   d4, d4, d3
    vpmin.f32   d5, d5, d4
    vpmin.f32   d6, d6, d5
    vpmin.f32   d7, d7, d6
    vpmin.f32   d8, d8, d7
    vpmin.f32   d9, d9, d8
    vpmin.f32   d10, d10, d9
    vpmin.f32   d11, d11, d10

    // loop 5
    vpmin.f32   d0, d0, d11
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d1
    vpmin.f32   d3, d3, d2
    vpmin.f32   d4, d4, d3
    vpmin.f32   d5, d5, d4
    vpmin.f32   d6, d6, d5
    vpmin.f32   d7, d7, d6
    vpmin.f32   d8, d8, d7
    vpmin.f32   d9, d9, d8
    vpmin.f32   d10, d10, d9
    vpmin.f32   d11, d11, d10

    subs    r0, r0, #1
    bne     vpminF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vpminF4MaxTest:

    vpush.64    {d8-d15}

vpminF4MaxTest_LOOP:

    // loop 1
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d0
    vpmin.f32   d3, d3, d0
    vpmin.f32   d4, d4, d0
    vpmin.f32   d5, d5, d0
    vpmin.f32   d6, d6, d0
    vpmin.f32   d7, d7, d0
    vpmin.f32   d8, d8, d0
    vpmin.f32   d9, d9, d0
    vpmin.f32   d10, d10, d0
    vpmin.f32   d11, d11, d0
    vpmin.f32   d12, d12, d0

    // loop 2
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d0
    vpmin.f32   d3, d3, d0
    vpmin.f32   d4, d4, d0
    vpmin.f32   d5, d5, d0
    vpmin.f32   d6, d6, d0
    vpmin.f32   d7, d7, d0
    vpmin.f32   d8, d8, d0
    vpmin.f32   d9, d9, d0
    vpmin.f32   d10, d10, d0
    vpmin.f32   d11, d11, d0
    vpmin.f32   d12, d12, d0

    // loop 3
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d0
    vpmin.f32   d3, d3, d0
    vpmin.f32   d4, d4, d0
    vpmin.f32   d5, d5, d0
    vpmin.f32   d6, d6, d0
    vpmin.f32   d7, d7, d0
    vpmin.f32   d8, d8, d0
    vpmin.f32   d9, d9, d0
    vpmin.f32   d10, d10, d0
    vpmin.f32   d11, d11, d0
    vpmin.f32   d12, d12, d0

    // loop 4
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d0
    vpmin.f32   d3, d3, d0
    vpmin.f32   d4, d4, d0
    vpmin.f32   d5, d5, d0
    vpmin.f32   d6, d6, d0
    vpmin.f32   d7, d7, d0
    vpmin.f32   d8, d8, d0
    vpmin.f32   d9, d9, d0
    vpmin.f32   d10, d10, d0
    vpmin.f32   d11, d11, d0
    vpmin.f32   d12, d12, d0

    // loop 5
    vpmin.f32   d1, d1, d0
    vpmin.f32   d2, d2, d0
    vpmin.f32   d3, d3, d0
    vpmin.f32   d4, d4, d0
    vpmin.f32   d5, d5, d0
    vpmin.f32   d6, d6, d0
    vpmin.f32   d7, d7, d0
    vpmin.f32   d8, d8, d0
    vpmin.f32   d9, d9, d0
    vpmin.f32   d10, d10, d0
    vpmin.f32   d11, d11, d0
    vpmin.f32   d12, d12, d0

    subs    r0, r0, #1
    bne     vpminF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vqabsI4MinTest:

    vpush.64    {d8-d15}

vqabsI4MinTest_LOOP:

    // loop 1
    vqabs.s32   q0, q11
    vqabs.s32   q1, q0
    vqabs.s32   q2, q1
    vqabs.s32   q3, q2
    vqabs.s32   q4, q3
    vqabs.s32   q5, q4
    vqabs.s32   q6, q5
    vqabs.s32   q7, q6
    vqabs.s32   q8, q7
    vqabs.s32   q9, q8
    vqabs.s32   q10, q9
    vqabs.s32   q11, q10

    // loop 2
    vqabs.s32   q0, q11
    vqabs.s32   q1, q0
    vqabs.s32   q2, q1
    vqabs.s32   q3, q2
    vqabs.s32   q4, q3
    vqabs.s32   q5, q4
    vqabs.s32   q6, q5
    vqabs.s32   q7, q6
    vqabs.s32   q8, q7
    vqabs.s32   q9, q8
    vqabs.s32   q10, q9
    vqabs.s32   q11, q10

    // loop 3
    vqabs.s32   q0, q11
    vqabs.s32   q1, q0
    vqabs.s32   q2, q1
    vqabs.s32   q3, q2
    vqabs.s32   q4, q3
    vqabs.s32   q5, q4
    vqabs.s32   q6, q5
    vqabs.s32   q7, q6
    vqabs.s32   q8, q7
    vqabs.s32   q9, q8
    vqabs.s32   q10, q9
    vqabs.s32   q11, q10

    // loop 4
    vqabs.s32   q0, q11
    vqabs.s32   q1, q0
    vqabs.s32   q2, q1
    vqabs.s32   q3, q2
    vqabs.s32   q4, q3
    vqabs.s32   q5, q4
    vqabs.s32   q6, q5
    vqabs.s32   q7, q6
    vqabs.s32   q8, q7
    vqabs.s32   q9, q8
    vqabs.s32   q10, q9
    vqabs.s32   q11, q10

    // loop 5
    vqabs.s32   q0, q11
    vqabs.s32   q1, q0
    vqabs.s32   q2, q1
    vqabs.s32   q3, q2
    vqabs.s32   q4, q3
    vqabs.s32   q5, q4
    vqabs.s32   q6, q5
    vqabs.s32   q7, q6
    vqabs.s32   q8, q7
    vqabs.s32   q9, q8
    vqabs.s32   q10, q9
    vqabs.s32   q11, q10

    subs    r0, r0, #1
    bne     vqabsI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vqabsI4MaxTest:

    vpush.64    {d8-d15}

vqabsI4MaxTest_LOOP:

    // loop 1
    vqabs.s32   q1, q0
    vqabs.s32   q2, q0
    vqabs.s32   q3, q0
    vqabs.s32   q4, q0
    vqabs.s32   q5, q0
    vqabs.s32   q6, q0
    vqabs.s32   q7, q0
    vqabs.s32   q8, q0
    vqabs.s32   q9, q0
    vqabs.s32   q10, q0
    vqabs.s32   q11, q0
    vqabs.s32   q12, q0

    // loop 2
    vqabs.s32   q1, q0
    vqabs.s32   q2, q0
    vqabs.s32   q3, q0
    vqabs.s32   q4, q0
    vqabs.s32   q5, q0
    vqabs.s32   q6, q0
    vqabs.s32   q7, q0
    vqabs.s32   q8, q0
    vqabs.s32   q9, q0
    vqabs.s32   q10, q0
    vqabs.s32   q11, q0
    vqabs.s32   q12, q0

    // loop 3
    vqabs.s32   q1, q0
    vqabs.s32   q2, q0
    vqabs.s32   q3, q0
    vqabs.s32   q4, q0
    vqabs.s32   q5, q0
    vqabs.s32   q6, q0
    vqabs.s32   q7, q0
    vqabs.s32   q8, q0
    vqabs.s32   q9, q0
    vqabs.s32   q10, q0
    vqabs.s32   q11, q0
    vqabs.s32   q12, q0

    // loop 4
    vqabs.s32   q1, q0
    vqabs.s32   q2, q0
    vqabs.s32   q3, q0
    vqabs.s32   q4, q0
    vqabs.s32   q5, q0
    vqabs.s32   q6, q0
    vqabs.s32   q7, q0
    vqabs.s32   q8, q0
    vqabs.s32   q9, q0
    vqabs.s32   q10, q0
    vqabs.s32   q11, q0
    vqabs.s32   q12, q0

    // loop 5
    vqabs.s32   q1, q0
    vqabs.s32   q2, q0
    vqabs.s32   q3, q0
    vqabs.s32   q4, q0
    vqabs.s32   q5, q0
    vqabs.s32   q6, q0
    vqabs.s32   q7, q0
    vqabs.s32   q8, q0
    vqabs.s32   q9, q0
    vqabs.s32   q10, q0
    vqabs.s32   q11, q0
    vqabs.s32   q12, q0

    subs    r0, r0, #1
    bne     vqabsI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vqaddI4MinTest:

    vpush.64    {d8-d15}

vqaddI4MinTest_LOOP:

    // loop 1
    vqadd.s32   q0, q0, q11
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q1
    vqadd.s32   q3, q3, q2
    vqadd.s32   q4, q4, q3
    vqadd.s32   q5, q5, q4
    vqadd.s32   q6, q6, q5
    vqadd.s32   q7, q7, q6
    vqadd.s32   q8, q8, q7
    vqadd.s32   q9, q9, q8
    vqadd.s32   q10, q10, q9
    vqadd.s32   q11, q11, q10

    // loop 2
    vqadd.s32   q0, q0, q11
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q1
    vqadd.s32   q3, q3, q2
    vqadd.s32   q4, q4, q3
    vqadd.s32   q5, q5, q4
    vqadd.s32   q6, q6, q5
    vqadd.s32   q7, q7, q6
    vqadd.s32   q8, q8, q7
    vqadd.s32   q9, q9, q8
    vqadd.s32   q10, q10, q9
    vqadd.s32   q11, q11, q10

    // loop 3
    vqadd.s32   q0, q0, q11
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q1
    vqadd.s32   q3, q3, q2
    vqadd.s32   q4, q4, q3
    vqadd.s32   q5, q5, q4
    vqadd.s32   q6, q6, q5
    vqadd.s32   q7, q7, q6
    vqadd.s32   q8, q8, q7
    vqadd.s32   q9, q9, q8
    vqadd.s32   q10, q10, q9
    vqadd.s32   q11, q11, q10

    // loop 4
    vqadd.s32   q0, q0, q11
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q1
    vqadd.s32   q3, q3, q2
    vqadd.s32   q4, q4, q3
    vqadd.s32   q5, q5, q4
    vqadd.s32   q6, q6, q5
    vqadd.s32   q7, q7, q6
    vqadd.s32   q8, q8, q7
    vqadd.s32   q9, q9, q8
    vqadd.s32   q10, q10, q9
    vqadd.s32   q11, q11, q10

    // loop 5
    vqadd.s32   q0, q0, q11
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q1
    vqadd.s32   q3, q3, q2
    vqadd.s32   q4, q4, q3
    vqadd.s32   q5, q5, q4
    vqadd.s32   q6, q6, q5
    vqadd.s32   q7, q7, q6
    vqadd.s32   q8, q8, q7
    vqadd.s32   q9, q9, q8
    vqadd.s32   q10, q10, q9
    vqadd.s32   q11, q11, q10

    subs    r0, r0, #1
    bne     vqaddI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vqaddI4MaxTest:

    vpush.64    {d8-d15}

vqaddI4MaxTest_LOOP:

    // loop 1
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q0
    vqadd.s32   q3, q3, q0
    vqadd.s32   q4, q4, q0
    vqadd.s32   q5, q5, q0
    vqadd.s32   q6, q6, q0
    vqadd.s32   q7, q7, q0
    vqadd.s32   q8, q8, q0
    vqadd.s32   q9, q9, q0
    vqadd.s32   q10, q10, q0
    vqadd.s32   q11, q11, q0
    vqadd.s32   q12, q12, q0

    // loop 2
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q0
    vqadd.s32   q3, q3, q0
    vqadd.s32   q4, q4, q0
    vqadd.s32   q5, q5, q0
    vqadd.s32   q6, q6, q0
    vqadd.s32   q7, q7, q0
    vqadd.s32   q8, q8, q0
    vqadd.s32   q9, q9, q0
    vqadd.s32   q10, q10, q0
    vqadd.s32   q11, q11, q0
    vqadd.s32   q12, q12, q0

    // loop 3
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q0
    vqadd.s32   q3, q3, q0
    vqadd.s32   q4, q4, q0
    vqadd.s32   q5, q5, q0
    vqadd.s32   q6, q6, q0
    vqadd.s32   q7, q7, q0
    vqadd.s32   q8, q8, q0
    vqadd.s32   q9, q9, q0
    vqadd.s32   q10, q10, q0
    vqadd.s32   q11, q11, q0
    vqadd.s32   q12, q12, q0

    // loop 4
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q0
    vqadd.s32   q3, q3, q0
    vqadd.s32   q4, q4, q0
    vqadd.s32   q5, q5, q0
    vqadd.s32   q6, q6, q0
    vqadd.s32   q7, q7, q0
    vqadd.s32   q8, q8, q0
    vqadd.s32   q9, q9, q0
    vqadd.s32   q10, q10, q0
    vqadd.s32   q11, q11, q0
    vqadd.s32   q12, q12, q0

    // loop 5
    vqadd.s32   q1, q1, q0
    vqadd.s32   q2, q2, q0
    vqadd.s32   q3, q3, q0
    vqadd.s32   q4, q4, q0
    vqadd.s32   q5, q5, q0
    vqadd.s32   q6, q6, q0
    vqadd.s32   q7, q7, q0
    vqadd.s32   q8, q8, q0
    vqadd.s32   q9, q9, q0
    vqadd.s32   q10, q10, q0
    vqadd.s32   q11, q11, q0
    vqadd.s32   q12, q12, q0

    subs    r0, r0, #1
    bne     vqaddI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vqdmlalI2MinTest:

    vpush.64    {d8-d15}

vqdmlalI2MinTest_LOOP:

    // loop 1
    vqdmlal.s32 q0, d0, d23
    vqdmlal.s32 q1, d2, d1
    vqdmlal.s32 q2, d4, d3
    vqdmlal.s32 q3, d6, d5
    vqdmlal.s32 q4, d8, d7
    vqdmlal.s32 q5, d10, d9
    vqdmlal.s32 q6, d12, d11
    vqdmlal.s32 q7, d14, d13
    vqdmlal.s32 q8, d16, d15
    vqdmlal.s32 q9, d18, d17
    vqdmlal.s32 q10, d20, d19
    vqdmlal.s32 q11, d22, d21

    // loop 2
    vqdmlal.s32 q0, d0, d23
    vqdmlal.s32 q1, d2, d1
    vqdmlal.s32 q2, d4, d3
    vqdmlal.s32 q3, d6, d5
    vqdmlal.s32 q4, d8, d7
    vqdmlal.s32 q5, d10, d9
    vqdmlal.s32 q6, d12, d11
    vqdmlal.s32 q7, d14, d13
    vqdmlal.s32 q8, d16, d15
    vqdmlal.s32 q9, d18, d17
    vqdmlal.s32 q10, d20, d19
    vqdmlal.s32 q11, d22, d21

    // loop 3
    vqdmlal.s32 q0, d0, d23
    vqdmlal.s32 q1, d2, d1
    vqdmlal.s32 q2, d4, d3
    vqdmlal.s32 q3, d6, d5
    vqdmlal.s32 q4, d8, d7
    vqdmlal.s32 q5, d10, d9
    vqdmlal.s32 q6, d12, d11
    vqdmlal.s32 q7, d14, d13
    vqdmlal.s32 q8, d16, d15
    vqdmlal.s32 q9, d18, d17
    vqdmlal.s32 q10, d20, d19
    vqdmlal.s32 q11, d22, d21

    // loop 4
    vqdmlal.s32 q0, d0, d23
    vqdmlal.s32 q1, d2, d1
    vqdmlal.s32 q2, d4, d3
    vqdmlal.s32 q3, d6, d5
    vqdmlal.s32 q4, d8, d7
    vqdmlal.s32 q5, d10, d9
    vqdmlal.s32 q6, d12, d11
    vqdmlal.s32 q7, d14, d13
    vqdmlal.s32 q8, d16, d15
    vqdmlal.s32 q9, d18, d17
    vqdmlal.s32 q10, d20, d19
    vqdmlal.s32 q11, d22, d21

    // loop 5
    vqdmlal.s32 q0, d0, d23
    vqdmlal.s32 q1, d2, d1
    vqdmlal.s32 q2, d4, d3
    vqdmlal.s32 q3, d6, d5
    vqdmlal.s32 q4, d8, d7
    vqdmlal.s32 q5, d10, d9
    vqdmlal.s32 q6, d12, d11
    vqdmlal.s32 q7, d14, d13
    vqdmlal.s32 q8, d16, d15
    vqdmlal.s32 q9, d18, d17
    vqdmlal.s32 q10, d20, d19
    vqdmlal.s32 q11, d22, d21

    subs    r0, r0, #1
    bne     vqdmlalI2MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vqdmlalI2MaxTest:

    vpush.64    {d8-d15}

vqdmlalI2MaxTest_LOOP:

    // loop 1
    vqdmlal.s32 q1, d2, d0
    vqdmlal.s32 q2, d4, d0
    vqdmlal.s32 q3, d6, d0
    vqdmlal.s32 q4, d8, d0
    vqdmlal.s32 q5, d10, d0
    vqdmlal.s32 q6, d12, d0
    vqdmlal.s32 q7, d14, d0
    vqdmlal.s32 q8, d16, d0
    vqdmlal.s32 q9, d18, d0
    vqdmlal.s32 q10, d20, d0
    vqdmlal.s32 q11, d22, d0
    vqdmlal.s32 q12, d24, d0

    // loop 2
    vqdmlal.s32 q1, d2, d0
    vqdmlal.s32 q2, d4, d0
    vqdmlal.s32 q3, d6, d0
    vqdmlal.s32 q4, d8, d0
    vqdmlal.s32 q5, d10, d0
    vqdmlal.s32 q6, d12, d0
    vqdmlal.s32 q7, d14, d0
    vqdmlal.s32 q8, d16, d0
    vqdmlal.s32 q9, d18, d0
    vqdmlal.s32 q10, d20, d0
    vqdmlal.s32 q11, d22, d0
    vqdmlal.s32 q12, d24, d0

    // loop 3
    vqdmlal.s32 q1, d2, d0
    vqdmlal.s32 q2, d4, d0
    vqdmlal.s32 q3, d6, d0
    vqdmlal.s32 q4, d8, d0
    vqdmlal.s32 q5, d10, d0
    vqdmlal.s32 q6, d12, d0
    vqdmlal.s32 q7, d14, d0
    vqdmlal.s32 q8, d16, d0
    vqdmlal.s32 q9, d18, d0
    vqdmlal.s32 q10, d20, d0
    vqdmlal.s32 q11, d22, d0
    vqdmlal.s32 q12, d24, d0

    // loop 4
    vqdmlal.s32 q1, d2, d0
    vqdmlal.s32 q2, d4, d0
    vqdmlal.s32 q3, d6, d0
    vqdmlal.s32 q4, d8, d0
    vqdmlal.s32 q5, d10, d0
    vqdmlal.s32 q6, d12, d0
    vqdmlal.s32 q7, d14, d0
    vqdmlal.s32 q8, d16, d0
    vqdmlal.s32 q9, d18, d0
    vqdmlal.s32 q10, d20, d0
    vqdmlal.s32 q11, d22, d0
    vqdmlal.s32 q12, d24, d0

    // loop 5
    vqdmlal.s32 q1, d2, d0
    vqdmlal.s32 q2, d4, d0
    vqdmlal.s32 q3, d6, d0
    vqdmlal.s32 q4, d8, d0
    vqdmlal.s32 q5, d10, d0
    vqdmlal.s32 q6, d12, d0
    vqdmlal.s32 q7, d14, d0
    vqdmlal.s32 q8, d16, d0
    vqdmlal.s32 q9, d18, d0
    vqdmlal.s32 q10, d20, d0
    vqdmlal.s32 q11, d22, d0
    vqdmlal.s32 q12, d24, d0

    subs    r0, r0, #1
    bne     vqdmlalI2MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vqdmlalI2ScalarMinTest:

    vpush.64        {d8-d15}

vqdmlalI2ScalarMinTest_LOOP:

    // loop 1
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]

    // loop 2
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]

    // loop 3
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]

    // loop 4
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]

    // loop 5
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]
    vqdmlal.s32     q0, d0, d10[1]
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d2[1]
    vqdmlal.s32     q3, d6, d4[1]
    vqdmlal.s32     q4, d8, d6[1]
    vqdmlal.s32     q5, d10, d8[1]

    subs    r0, r0, #1
    bne     vqdmlalI2ScalarMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqdmlalI2ScalarMaxTest:

    vpush.64        {d8-d15}

vqdmlalI2ScalarMaxTest_LOOP:

    // loop 1
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d0[1]
    vqdmlal.s32     q3, d6, d0[1]
    vqdmlal.s32     q4, d8, d0[1]
    vqdmlal.s32     q5, d10, d0[1]
    vqdmlal.s32     q6, d12, d0[1]
    vqdmlal.s32     q7, d14, d0[1]
    vqdmlal.s32     q8, d16, d0[1]
    vqdmlal.s32     q9, d18, d0[1]
    vqdmlal.s32     q10, d20, d0[1]
    vqdmlal.s32     q11, d22, d0[1]
    vqdmlal.s32     q12, d24, d0[1]

    // loop 2
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d0[1]
    vqdmlal.s32     q3, d6, d0[1]
    vqdmlal.s32     q4, d8, d0[1]
    vqdmlal.s32     q5, d10, d0[1]
    vqdmlal.s32     q6, d12, d0[1]
    vqdmlal.s32     q7, d14, d0[1]
    vqdmlal.s32     q8, d16, d0[1]
    vqdmlal.s32     q9, d18, d0[1]
    vqdmlal.s32     q10, d20, d0[1]
    vqdmlal.s32     q11, d22, d0[1]
    vqdmlal.s32     q12, d24, d0[1]

    // loop 3
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d0[1]
    vqdmlal.s32     q3, d6, d0[1]
    vqdmlal.s32     q4, d8, d0[1]
    vqdmlal.s32     q5, d10, d0[1]
    vqdmlal.s32     q6, d12, d0[1]
    vqdmlal.s32     q7, d14, d0[1]
    vqdmlal.s32     q8, d16, d0[1]
    vqdmlal.s32     q9, d18, d0[1]
    vqdmlal.s32     q10, d20, d0[1]
    vqdmlal.s32     q11, d22, d0[1]
    vqdmlal.s32     q12, d24, d0[1]

    // loop 4
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d0[1]
    vqdmlal.s32     q3, d6, d0[1]
    vqdmlal.s32     q4, d8, d0[1]
    vqdmlal.s32     q5, d10, d0[1]
    vqdmlal.s32     q6, d12, d0[1]
    vqdmlal.s32     q7, d14, d0[1]
    vqdmlal.s32     q8, d16, d0[1]
    vqdmlal.s32     q9, d18, d0[1]
    vqdmlal.s32     q10, d20, d0[1]
    vqdmlal.s32     q11, d22, d0[1]
    vqdmlal.s32     q12, d24, d0[1]

    // loop 5
    vqdmlal.s32     q1, d2, d0[1]
    vqdmlal.s32     q2, d4, d0[1]
    vqdmlal.s32     q3, d6, d0[1]
    vqdmlal.s32     q4, d8, d0[1]
    vqdmlal.s32     q5, d10, d0[1]
    vqdmlal.s32     q6, d12, d0[1]
    vqdmlal.s32     q7, d14, d0[1]
    vqdmlal.s32     q8, d16, d0[1]
    vqdmlal.s32     q9, d18, d0[1]
    vqdmlal.s32     q10, d20, d0[1]
    vqdmlal.s32     q11, d22, d0[1]
    vqdmlal.s32     q12, d24, d0[1]

    subs    r0, r0, #1
    bne     vqdmlalI2ScalarMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqdmlslI2MinTest:

    vpush.64        {d8-d15}

vqdmlslI2MinTest_LOOP:

    // loop 1
    vqdmlsl.s32     q0, d0, d23
    vqdmlsl.s32     q1, d2, d1
    vqdmlsl.s32     q2, d4, d3
    vqdmlsl.s32     q3, d6, d5
    vqdmlsl.s32     q4, d8, d7
    vqdmlsl.s32     q5, d10, d9
    vqdmlsl.s32     q6, d12, d11
    vqdmlsl.s32     q7, d14, d13
    vqdmlsl.s32     q8, d16, d15
    vqdmlsl.s32     q9, d18, d17
    vqdmlsl.s32     q10, d20, d19
    vqdmlsl.s32     q11, d22, d21

    // loop 2
    vqdmlsl.s32     q0, d0, d23
    vqdmlsl.s32     q1, d2, d1
    vqdmlsl.s32     q2, d4, d3
    vqdmlsl.s32     q3, d6, d5
    vqdmlsl.s32     q4, d8, d7
    vqdmlsl.s32     q5, d10, d9
    vqdmlsl.s32     q6, d12, d11
    vqdmlsl.s32     q7, d14, d13
    vqdmlsl.s32     q8, d16, d15
    vqdmlsl.s32     q9, d18, d17
    vqdmlsl.s32     q10, d20, d19
    vqdmlsl.s32     q11, d22, d21

    // loop 3
    vqdmlsl.s32     q0, d0, d23
    vqdmlsl.s32     q1, d2, d1
    vqdmlsl.s32     q2, d4, d3
    vqdmlsl.s32     q3, d6, d5
    vqdmlsl.s32     q4, d8, d7
    vqdmlsl.s32     q5, d10, d9
    vqdmlsl.s32     q6, d12, d11
    vqdmlsl.s32     q7, d14, d13
    vqdmlsl.s32     q8, d16, d15
    vqdmlsl.s32     q9, d18, d17
    vqdmlsl.s32     q10, d20, d19
    vqdmlsl.s32     q11, d22, d21

    // loop 4
    vqdmlsl.s32     q0, d0, d23
    vqdmlsl.s32     q1, d2, d1
    vqdmlsl.s32     q2, d4, d3
    vqdmlsl.s32     q3, d6, d5
    vqdmlsl.s32     q4, d8, d7
    vqdmlsl.s32     q5, d10, d9
    vqdmlsl.s32     q6, d12, d11
    vqdmlsl.s32     q7, d14, d13
    vqdmlsl.s32     q8, d16, d15
    vqdmlsl.s32     q9, d18, d17
    vqdmlsl.s32     q10, d20, d19
    vqdmlsl.s32     q11, d22, d21

    // loop 5
    vqdmlsl.s32     q0, d0, d23
    vqdmlsl.s32     q1, d2, d1
    vqdmlsl.s32     q2, d4, d3
    vqdmlsl.s32     q3, d6, d5
    vqdmlsl.s32     q4, d8, d7
    vqdmlsl.s32     q5, d10, d9
    vqdmlsl.s32     q6, d12, d11
    vqdmlsl.s32     q7, d14, d13
    vqdmlsl.s32     q8, d16, d15
    vqdmlsl.s32     q9, d18, d17
    vqdmlsl.s32     q10, d20, d19
    vqdmlsl.s32     q11, d22, d21

    subs    r0, r0, #1
    bne     vqdmlslI2MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vqdmlslI2MaxTest:

    vpush.64        {d8-d15}

vqdmlslI2MaxTest_LOOP:

    // loop 1
    vqdmlsl.s32     q1, d2, d0
    vqdmlsl.s32     q2, d4, d0
    vqdmlsl.s32     q3, d6, d0
    vqdmlsl.s32     q4, d8, d0
    vqdmlsl.s32     q5, d10, d0
    vqdmlsl.s32     q6, d12, d0
    vqdmlsl.s32     q7, d14, d0
    vqdmlsl.s32     q8, d16, d0
    vqdmlsl.s32     q9, d18, d0
    vqdmlsl.s32     q10, d20, d0
    vqdmlsl.s32     q11, d22, d0
    vqdmlsl.s32     q12, d24, d0

    // loop 2
    vqdmlsl.s32     q1, d2, d0
    vqdmlsl.s32     q2, d4, d0
    vqdmlsl.s32     q3, d6, d0
    vqdmlsl.s32     q4, d8, d0
    vqdmlsl.s32     q5, d10, d0
    vqdmlsl.s32     q6, d12, d0
    vqdmlsl.s32     q7, d14, d0
    vqdmlsl.s32     q8, d16, d0
    vqdmlsl.s32     q9, d18, d0
    vqdmlsl.s32     q10, d20, d0
    vqdmlsl.s32     q11, d22, d0
    vqdmlsl.s32     q12, d24, d0

    // loop 3
    vqdmlsl.s32     q1, d2, d0
    vqdmlsl.s32     q2, d4, d0
    vqdmlsl.s32     q3, d6, d0
    vqdmlsl.s32     q4, d8, d0
    vqdmlsl.s32     q5, d10, d0
    vqdmlsl.s32     q6, d12, d0
    vqdmlsl.s32     q7, d14, d0
    vqdmlsl.s32     q8, d16, d0
    vqdmlsl.s32     q9, d18, d0
    vqdmlsl.s32     q10, d20, d0
    vqdmlsl.s32     q11, d22, d0
    vqdmlsl.s32     q12, d24, d0

    // loop 4
    vqdmlsl.s32     q1, d2, d0
    vqdmlsl.s32     q2, d4, d0
    vqdmlsl.s32     q3, d6, d0
    vqdmlsl.s32     q4, d8, d0
    vqdmlsl.s32     q5, d10, d0
    vqdmlsl.s32     q6, d12, d0
    vqdmlsl.s32     q7, d14, d0
    vqdmlsl.s32     q8, d16, d0
    vqdmlsl.s32     q9, d18, d0
    vqdmlsl.s32     q10, d20, d0
    vqdmlsl.s32     q11, d22, d0
    vqdmlsl.s32     q12, d24, d0

    // loop 5
    vqdmlsl.s32     q1, d2, d0
    vqdmlsl.s32     q2, d4, d0
    vqdmlsl.s32     q3, d6, d0
    vqdmlsl.s32     q4, d8, d0
    vqdmlsl.s32     q5, d10, d0
    vqdmlsl.s32     q6, d12, d0
    vqdmlsl.s32     q7, d14, d0
    vqdmlsl.s32     q8, d16, d0
    vqdmlsl.s32     q9, d18, d0
    vqdmlsl.s32     q10, d20, d0
    vqdmlsl.s32     q11, d22, d0
    vqdmlsl.s32     q12, d24, d0

    subs    r0, r0, #1
    bne     vqdmlslI2MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vqdmlslI2ScalarMinTest:

    vpush.64    {d8-d15}

vqdmlslI2ScalarMinTest_LOOP:

    // loop 1
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]

    // loop 2
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]

    // loop 3
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]

    // loop 4
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]

    // loop 5
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]
    vqdmlsl.s32 q0, d0, d10[1]
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d2[1]
    vqdmlsl.s32 q3, d6, d4[1]
    vqdmlsl.s32 q4, d8, d6[1]
    vqdmlsl.s32 q5, d10, d8[1]

    subs    r0, r0, #1
    bne     vqdmlslI2ScalarMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vqdmlslI2ScalarMaxTest:

    vpush.64    {d8-d15}

vqdmlslI2ScalarMaxTest_LOOP:

    // loop 1
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d0[1]
    vqdmlsl.s32 q3, d6, d0[1]
    vqdmlsl.s32 q4, d8, d0[1]
    vqdmlsl.s32 q5, d10, d0[1]
    vqdmlsl.s32 q6, d12, d0[1]
    vqdmlsl.s32 q7, d14, d0[1]
    vqdmlsl.s32 q8, d16, d0[1]
    vqdmlsl.s32 q9, d18, d0[1]
    vqdmlsl.s32 q10, d20, d0[1]
    vqdmlsl.s32 q11, d22, d0[1]
    vqdmlsl.s32 q12, d24, d0[1]

    // loop 2
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d0[1]
    vqdmlsl.s32 q3, d6, d0[1]
    vqdmlsl.s32 q4, d8, d0[1]
    vqdmlsl.s32 q5, d10, d0[1]
    vqdmlsl.s32 q6, d12, d0[1]
    vqdmlsl.s32 q7, d14, d0[1]
    vqdmlsl.s32 q8, d16, d0[1]
    vqdmlsl.s32 q9, d18, d0[1]
    vqdmlsl.s32 q10, d20, d0[1]
    vqdmlsl.s32 q11, d22, d0[1]
    vqdmlsl.s32 q12, d24, d0[1]

    // loop 3
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d0[1]
    vqdmlsl.s32 q3, d6, d0[1]
    vqdmlsl.s32 q4, d8, d0[1]
    vqdmlsl.s32 q5, d10, d0[1]
    vqdmlsl.s32 q6, d12, d0[1]
    vqdmlsl.s32 q7, d14, d0[1]
    vqdmlsl.s32 q8, d16, d0[1]
    vqdmlsl.s32 q9, d18, d0[1]
    vqdmlsl.s32 q10, d20, d0[1]
    vqdmlsl.s32 q11, d22, d0[1]
    vqdmlsl.s32 q12, d24, d0[1]

    // loop 4
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d0[1]
    vqdmlsl.s32 q3, d6, d0[1]
    vqdmlsl.s32 q4, d8, d0[1]
    vqdmlsl.s32 q5, d10, d0[1]
    vqdmlsl.s32 q6, d12, d0[1]
    vqdmlsl.s32 q7, d14, d0[1]
    vqdmlsl.s32 q8, d16, d0[1]
    vqdmlsl.s32 q9, d18, d0[1]
    vqdmlsl.s32 q10, d20, d0[1]
    vqdmlsl.s32 q11, d22, d0[1]
    vqdmlsl.s32 q12, d24, d0[1]

    // loop 5
    vqdmlsl.s32 q1, d2, d0[1]
    vqdmlsl.s32 q2, d4, d0[1]
    vqdmlsl.s32 q3, d6, d0[1]
    vqdmlsl.s32 q4, d8, d0[1]
    vqdmlsl.s32 q5, d10, d0[1]
    vqdmlsl.s32 q6, d12, d0[1]
    vqdmlsl.s32 q7, d14, d0[1]
    vqdmlsl.s32 q8, d16, d0[1]
    vqdmlsl.s32 q9, d18, d0[1]
    vqdmlsl.s32 q10, d20, d0[1]
    vqdmlsl.s32 q11, d22, d0[1]
    vqdmlsl.s32 q12, d24, d0[1]

    subs    r0, r0, #1
    bne     vqdmlslI2ScalarMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vqdmulhI4MinTest:

    vpush.64        {d8-d15}

vqdmulhI4MinTest_LOOP:

    // loop 1
    vqdmulh.s32     q0, q0, q11
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q1
    vqdmulh.s32     q3, q3, q2
    vqdmulh.s32     q4, q4, q3
    vqdmulh.s32     q5, q5, q4
    vqdmulh.s32     q6, q6, q5
    vqdmulh.s32     q7, q7, q6
    vqdmulh.s32     q8, q8, q7
    vqdmulh.s32     q9, q9, q8
    vqdmulh.s32     q10, q10, q9
    vqdmulh.s32     q11, q11, q10
    
    // loop 2
    vqdmulh.s32     q0, q0, q11
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q1
    vqdmulh.s32     q3, q3, q2
    vqdmulh.s32     q4, q4, q3
    vqdmulh.s32     q5, q5, q4
    vqdmulh.s32     q6, q6, q5
    vqdmulh.s32     q7, q7, q6
    vqdmulh.s32     q8, q8, q7
    vqdmulh.s32     q9, q9, q8
    vqdmulh.s32     q10, q10, q9
    vqdmulh.s32     q11, q11, q10

    // loop 3
    vqdmulh.s32     q0, q0, q11
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q1
    vqdmulh.s32     q3, q3, q2
    vqdmulh.s32     q4, q4, q3
    vqdmulh.s32     q5, q5, q4
    vqdmulh.s32     q6, q6, q5
    vqdmulh.s32     q7, q7, q6
    vqdmulh.s32     q8, q8, q7
    vqdmulh.s32     q9, q9, q8
    vqdmulh.s32     q10, q10, q9
    vqdmulh.s32     q11, q11, q10

    // loop 4
    vqdmulh.s32     q0, q0, q11
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q1
    vqdmulh.s32     q3, q3, q2
    vqdmulh.s32     q4, q4, q3
    vqdmulh.s32     q5, q5, q4
    vqdmulh.s32     q6, q6, q5
    vqdmulh.s32     q7, q7, q6
    vqdmulh.s32     q8, q8, q7
    vqdmulh.s32     q9, q9, q8
    vqdmulh.s32     q10, q10, q9
    vqdmulh.s32     q11, q11, q10

    // loop 5
    vqdmulh.s32     q0, q0, q11
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q1
    vqdmulh.s32     q3, q3, q2
    vqdmulh.s32     q4, q4, q3
    vqdmulh.s32     q5, q5, q4
    vqdmulh.s32     q6, q6, q5
    vqdmulh.s32     q7, q7, q6
    vqdmulh.s32     q8, q8, q7
    vqdmulh.s32     q9, q9, q8
    vqdmulh.s32     q10, q10, q9
    vqdmulh.s32     q11, q11, q10

    subs    r0, r0, #1
    bne     vqdmulhI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqdmulhI4MaxTest:

    vpush.64        {d8-d15}

vqdmulhI4MaxTest_LOOP:

    // loop 1
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q0
    vqdmulh.s32     q3, q3, q0
    vqdmulh.s32     q4, q4, q0
    vqdmulh.s32     q5, q5, q0
    vqdmulh.s32     q6, q6, q0
    vqdmulh.s32     q7, q7, q0
    vqdmulh.s32     q8, q8, q0
    vqdmulh.s32     q9, q9, q0
    vqdmulh.s32     q10, q10, q0
    vqdmulh.s32     q11, q11, q0
    vqdmulh.s32     q12, q12, q0

    // loop 2
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q0
    vqdmulh.s32     q3, q3, q0
    vqdmulh.s32     q4, q4, q0
    vqdmulh.s32     q5, q5, q0
    vqdmulh.s32     q6, q6, q0
    vqdmulh.s32     q7, q7, q0
    vqdmulh.s32     q8, q8, q0
    vqdmulh.s32     q9, q9, q0
    vqdmulh.s32     q10, q10, q0
    vqdmulh.s32     q11, q11, q0
    vqdmulh.s32     q12, q12, q0

    // loop 3
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q0
    vqdmulh.s32     q3, q3, q0
    vqdmulh.s32     q4, q4, q0
    vqdmulh.s32     q5, q5, q0
    vqdmulh.s32     q6, q6, q0
    vqdmulh.s32     q7, q7, q0
    vqdmulh.s32     q8, q8, q0
    vqdmulh.s32     q9, q9, q0
    vqdmulh.s32     q10, q10, q0
    vqdmulh.s32     q11, q11, q0
    vqdmulh.s32     q12, q12, q0

    // loop 4
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q0
    vqdmulh.s32     q3, q3, q0
    vqdmulh.s32     q4, q4, q0
    vqdmulh.s32     q5, q5, q0
    vqdmulh.s32     q6, q6, q0
    vqdmulh.s32     q7, q7, q0
    vqdmulh.s32     q8, q8, q0
    vqdmulh.s32     q9, q9, q0
    vqdmulh.s32     q10, q10, q0
    vqdmulh.s32     q11, q11, q0
    vqdmulh.s32     q12, q12, q0

    // loop 5
    vqdmulh.s32     q1, q1, q0
    vqdmulh.s32     q2, q2, q0
    vqdmulh.s32     q3, q3, q0
    vqdmulh.s32     q4, q4, q0
    vqdmulh.s32     q5, q5, q0
    vqdmulh.s32     q6, q6, q0
    vqdmulh.s32     q7, q7, q0
    vqdmulh.s32     q8, q8, q0
    vqdmulh.s32     q9, q9, q0
    vqdmulh.s32     q10, q10, q0
    vqdmulh.s32     q11, q11, q0
    vqdmulh.s32     q12, q12, q0

    subs    r0, r0, #1
    bne     vqdmulhI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqdmulhI4ScalarMinTest:

    vpush.64        {d8-d15}

vqdmulhI4ScalarMinTest_LOOP:

    // loop 1
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]

    // loop 2
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]

    // loop 3
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]

    // loop 4
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]

    // loop 5
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]
    vqdmulh.s32     q0, q0, d10[1]
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d2[1]
    vqdmulh.s32     q3, q3, d4[1]
    vqdmulh.s32     q4, q4, d6[1]
    vqdmulh.s32     q5, q5, d8[1]

    subs    r0, r0, #1
    bne     vqdmulhI4ScalarMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqdmulhI4ScalarMaxTest:

    vpush.64        {d8-d15}

vqdmulhI4ScalarMaxTest_LOOP:

    // loop 1
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d0[1]
    vqdmulh.s32     q3, q3, d0[1]
    vqdmulh.s32     q4, q4, d0[1]
    vqdmulh.s32     q5, q5, d0[1]
    vqdmulh.s32     q6, q6, d0[1]
    vqdmulh.s32     q7, q7, d0[1]
    vqdmulh.s32     q8, q8, d0[1]
    vqdmulh.s32     q9, q9, d0[1]
    vqdmulh.s32     q10, q10, d0[1]
    vqdmulh.s32     q11, q11, d0[1]
    vqdmulh.s32     q12, q12, d0[1]

    // loop 2
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d0[1]
    vqdmulh.s32     q3, q3, d0[1]
    vqdmulh.s32     q4, q4, d0[1]
    vqdmulh.s32     q5, q5, d0[1]
    vqdmulh.s32     q6, q6, d0[1]
    vqdmulh.s32     q7, q7, d0[1]
    vqdmulh.s32     q8, q8, d0[1]
    vqdmulh.s32     q9, q9, d0[1]
    vqdmulh.s32     q10, q10, d0[1]
    vqdmulh.s32     q11, q11, d0[1]
    vqdmulh.s32     q12, q12, d0[1]

    // loop 3
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d0[1]
    vqdmulh.s32     q3, q3, d0[1]
    vqdmulh.s32     q4, q4, d0[1]
    vqdmulh.s32     q5, q5, d0[1]
    vqdmulh.s32     q6, q6, d0[1]
    vqdmulh.s32     q7, q7, d0[1]
    vqdmulh.s32     q8, q8, d0[1]
    vqdmulh.s32     q9, q9, d0[1]
    vqdmulh.s32     q10, q10, d0[1]
    vqdmulh.s32     q11, q11, d0[1]
    vqdmulh.s32     q12, q12, d0[1]

    // loop 4
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d0[1]
    vqdmulh.s32     q3, q3, d0[1]
    vqdmulh.s32     q4, q4, d0[1]
    vqdmulh.s32     q5, q5, d0[1]
    vqdmulh.s32     q6, q6, d0[1]
    vqdmulh.s32     q7, q7, d0[1]
    vqdmulh.s32     q8, q8, d0[1]
    vqdmulh.s32     q9, q9, d0[1]
    vqdmulh.s32     q10, q10, d0[1]
    vqdmulh.s32     q11, q11, d0[1]
    vqdmulh.s32     q12, q12, d0[1]

    // loop 5
    vqdmulh.s32     q1, q1, d0[1]
    vqdmulh.s32     q2, q2, d0[1]
    vqdmulh.s32     q3, q3, d0[1]
    vqdmulh.s32     q4, q4, d0[1]
    vqdmulh.s32     q5, q5, d0[1]
    vqdmulh.s32     q6, q6, d0[1]
    vqdmulh.s32     q7, q7, d0[1]
    vqdmulh.s32     q8, q8, d0[1]
    vqdmulh.s32     q9, q9, d0[1]
    vqdmulh.s32     q10, q10, d0[1]
    vqdmulh.s32     q11, q11, d0[1]
    vqdmulh.s32     q12, q12, d0[1]

    subs    r0, r0, #1
    bne     vqdmulhI4ScalarMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqdmullI4MinTest:

    vpush.64        {d8-d15}

vqdmullI4MinTest_LOOP:

    // loop 1
    vqdmull.s32     q0, d0, d22
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d2
    vqdmull.s32     q3, d6, d4
    vqdmull.s32     q4, d8, d6
    vqdmull.s32     q5, d10, d8
    vqdmull.s32     q6, d12, d10
    vqdmull.s32     q7, d14, d12
    vqdmull.s32     q8, d16, d14
    vqdmull.s32     q9, d18, d16
    vqdmull.s32     q10, d20, d18
    vqdmull.s32     q11, d22, d20

    // loop 2
    vqdmull.s32     q0, d0, d22
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d2
    vqdmull.s32     q3, d6, d4
    vqdmull.s32     q4, d8, d6
    vqdmull.s32     q5, d10, d8
    vqdmull.s32     q6, d12, d10
    vqdmull.s32     q7, d14, d12
    vqdmull.s32     q8, d16, d14
    vqdmull.s32     q9, d18, d16
    vqdmull.s32     q10, d20, d18
    vqdmull.s32     q11, d22, d20

    // loop 3
    vqdmull.s32     q0, d0, d22
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d2
    vqdmull.s32     q3, d6, d4
    vqdmull.s32     q4, d8, d6
    vqdmull.s32     q5, d10, d8
    vqdmull.s32     q6, d12, d10
    vqdmull.s32     q7, d14, d12
    vqdmull.s32     q8, d16, d14
    vqdmull.s32     q9, d18, d16
    vqdmull.s32     q10, d20, d18
    vqdmull.s32     q11, d22, d20

    // loop 4
    vqdmull.s32     q0, d0, d22
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d2
    vqdmull.s32     q3, d6, d4
    vqdmull.s32     q4, d8, d6
    vqdmull.s32     q5, d10, d8
    vqdmull.s32     q6, d12, d10
    vqdmull.s32     q7, d14, d12
    vqdmull.s32     q8, d16, d14
    vqdmull.s32     q9, d18, d16
    vqdmull.s32     q10, d20, d18
    vqdmull.s32     q11, d22, d20

    // loop 5
    vqdmull.s32     q0, d0, d22
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d2
    vqdmull.s32     q3, d6, d4
    vqdmull.s32     q4, d8, d6
    vqdmull.s32     q5, d10, d8
    vqdmull.s32     q6, d12, d10
    vqdmull.s32     q7, d14, d12
    vqdmull.s32     q8, d16, d14
    vqdmull.s32     q9, d18, d16
    vqdmull.s32     q10, d20, d18
    vqdmull.s32     q11, d22, d20

    subs    r0, r0, #1
    bne     vqdmullI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqdmullI4MaxTest:

    vpush.64        {d8-d15}

vqdmullI4MaxTest_LOOP:

    // loop 1
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d0
    vqdmull.s32     q3, d6, d0
    vqdmull.s32     q4, d8, d0
    vqdmull.s32     q5, d10, d0
    vqdmull.s32     q6, d12, d0
    vqdmull.s32     q7, d14, d0
    vqdmull.s32     q8, d16, d0
    vqdmull.s32     q9, d18, d0
    vqdmull.s32     q10, d20, d0
    vqdmull.s32     q11, d22, d0
    vqdmull.s32     q12, d24, d0

    // loop 2
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d0
    vqdmull.s32     q3, d6, d0
    vqdmull.s32     q4, d8, d0
    vqdmull.s32     q5, d10, d0
    vqdmull.s32     q6, d12, d0
    vqdmull.s32     q7, d14, d0
    vqdmull.s32     q8, d16, d0
    vqdmull.s32     q9, d18, d0
    vqdmull.s32     q10, d20, d0
    vqdmull.s32     q11, d22, d0
    vqdmull.s32     q12, d24, d0

    // loop 3
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d0
    vqdmull.s32     q3, d6, d0
    vqdmull.s32     q4, d8, d0
    vqdmull.s32     q5, d10, d0
    vqdmull.s32     q6, d12, d0
    vqdmull.s32     q7, d14, d0
    vqdmull.s32     q8, d16, d0
    vqdmull.s32     q9, d18, d0
    vqdmull.s32     q10, d20, d0
    vqdmull.s32     q11, d22, d0
    vqdmull.s32     q12, d24, d0

    // loop 4
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d0
    vqdmull.s32     q3, d6, d0
    vqdmull.s32     q4, d8, d0
    vqdmull.s32     q5, d10, d0
    vqdmull.s32     q6, d12, d0
    vqdmull.s32     q7, d14, d0
    vqdmull.s32     q8, d16, d0
    vqdmull.s32     q9, d18, d0
    vqdmull.s32     q10, d20, d0
    vqdmull.s32     q11, d22, d0
    vqdmull.s32     q12, d24, d0

    // loop 5
    vqdmull.s32     q1, d2, d0
    vqdmull.s32     q2, d4, d0
    vqdmull.s32     q3, d6, d0
    vqdmull.s32     q4, d8, d0
    vqdmull.s32     q5, d10, d0
    vqdmull.s32     q6, d12, d0
    vqdmull.s32     q7, d14, d0
    vqdmull.s32     q8, d16, d0
    vqdmull.s32     q9, d18, d0
    vqdmull.s32     q10, d20, d0
    vqdmull.s32     q11, d22, d0
    vqdmull.s32     q12, d24, d0

    subs    r0, r0, #1
    bne     vqdmullI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqdmullI4ScalarMinTest:

    vpush.64        {d8-d15}

vqdmullI4ScalarMinTest_LOOP:

    // loop 1
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]

    // loop 2
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]

    // loop 3
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]

    // loop 4
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]

    // loop 5
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]
    vqdmull.s32     q0, d0, d10[1]
    vqdmull.s32     q1, d2, d0[1]
    vqdmull.s32     q2, d4, d2[1]
    vqdmull.s32     q3, d6, d4[1]
    vqdmull.s32     q4, d8, d6[1]
    vqdmull.s32     q5, d10, d8[1]

    subs    r0, r0, #1
    bne     vqdmullI4ScalarMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqdmullI4ScalarMaxTest:

    vpush.64        {d8-d15}

vqdmullI4ScalarMaxTest_LOOP:

    // loop 1
    vqdmull.s32     q1, d2, d0[0]
    vqdmull.s32     q2, d4, d0[0]
    vqdmull.s32     q3, d6, d0[0]
    vqdmull.s32     q4, d8, d0[0]
    vqdmull.s32     q5, d10, d0[0]
    vqdmull.s32     q6, d12, d0[0]
    vqdmull.s32     q7, d14, d0[0]
    vqdmull.s32     q8, d16, d0[0]
    vqdmull.s32     q9, d18, d0[0]
    vqdmull.s32     q10, d20, d0[0]
    vqdmull.s32     q11, d22, d0[0]
    vqdmull.s32     q12, d24, d0[0]

    // loop 2
    vqdmull.s32     q1, d2, d0[0]
    vqdmull.s32     q2, d4, d0[0]
    vqdmull.s32     q3, d6, d0[0]
    vqdmull.s32     q4, d8, d0[0]
    vqdmull.s32     q5, d10, d0[0]
    vqdmull.s32     q6, d12, d0[0]
    vqdmull.s32     q7, d14, d0[0]
    vqdmull.s32     q8, d16, d0[0]
    vqdmull.s32     q9, d18, d0[0]
    vqdmull.s32     q10, d20, d0[0]
    vqdmull.s32     q11, d22, d0[0]
    vqdmull.s32     q12, d24, d0[0]

    // loop 3
    vqdmull.s32     q1, d2, d0[0]
    vqdmull.s32     q2, d4, d0[0]
    vqdmull.s32     q3, d6, d0[0]
    vqdmull.s32     q4, d8, d0[0]
    vqdmull.s32     q5, d10, d0[0]
    vqdmull.s32     q6, d12, d0[0]
    vqdmull.s32     q7, d14, d0[0]
    vqdmull.s32     q8, d16, d0[0]
    vqdmull.s32     q9, d18, d0[0]
    vqdmull.s32     q10, d20, d0[0]
    vqdmull.s32     q11, d22, d0[0]
    vqdmull.s32     q12, d24, d0[0]

    // loop 4
    vqdmull.s32     q1, d2, d0[0]
    vqdmull.s32     q2, d4, d0[0]
    vqdmull.s32     q3, d6, d0[0]
    vqdmull.s32     q4, d8, d0[0]
    vqdmull.s32     q5, d10, d0[0]
    vqdmull.s32     q6, d12, d0[0]
    vqdmull.s32     q7, d14, d0[0]
    vqdmull.s32     q8, d16, d0[0]
    vqdmull.s32     q9, d18, d0[0]
    vqdmull.s32     q10, d20, d0[0]
    vqdmull.s32     q11, d22, d0[0]
    vqdmull.s32     q12, d24, d0[0]

    // loop 5
    vqdmull.s32     q1, d2, d0[0]
    vqdmull.s32     q2, d4, d0[0]
    vqdmull.s32     q3, d6, d0[0]
    vqdmull.s32     q4, d8, d0[0]
    vqdmull.s32     q5, d10, d0[0]
    vqdmull.s32     q6, d12, d0[0]
    vqdmull.s32     q7, d14, d0[0]
    vqdmull.s32     q8, d16, d0[0]
    vqdmull.s32     q9, d18, d0[0]
    vqdmull.s32     q10, d20, d0[0]
    vqdmull.s32     q11, d22, d0[0]
    vqdmull.s32     q12, d24, d0[0]

    subs    r0, r0, #1
    bne     vqdmullI4ScalarMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqmovnI4MinTest:

    vpush.64        {d8-d15}

vqmovnI4MinTest_LOOP:

    // loop 1
    vqmovn.s32      d0, q11
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q1
    vqmovn.s32      d6, q2
    vqmovn.s32      d8, q3
    vqmovn.s32      d10, q4
    vqmovn.s32      d12, q5
    vqmovn.s32      d14, q6
    vqmovn.s32      d16, q7
    vqmovn.s32      d18, q8
    vqmovn.s32      d20, q9
    vqmovn.s32      d22, q10

    // loop 2
    vqmovn.s32      d0, q11
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q1
    vqmovn.s32      d6, q2
    vqmovn.s32      d8, q3
    vqmovn.s32      d10, q4
    vqmovn.s32      d12, q5
    vqmovn.s32      d14, q6
    vqmovn.s32      d16, q7
    vqmovn.s32      d18, q8
    vqmovn.s32      d20, q9
    vqmovn.s32      d22, q10

    // loop 3
    vqmovn.s32      d0, q11
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q1
    vqmovn.s32      d6, q2
    vqmovn.s32      d8, q3
    vqmovn.s32      d10, q4
    vqmovn.s32      d12, q5
    vqmovn.s32      d14, q6
    vqmovn.s32      d16, q7
    vqmovn.s32      d18, q8
    vqmovn.s32      d20, q9
    vqmovn.s32      d22, q10

    // loop 4
    vqmovn.s32      d0, q11
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q1
    vqmovn.s32      d6, q2
    vqmovn.s32      d8, q3
    vqmovn.s32      d10, q4
    vqmovn.s32      d12, q5
    vqmovn.s32      d14, q6
    vqmovn.s32      d16, q7
    vqmovn.s32      d18, q8
    vqmovn.s32      d20, q9
    vqmovn.s32      d22, q10

    // loop 5
    vqmovn.s32      d0, q11
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q1
    vqmovn.s32      d6, q2
    vqmovn.s32      d8, q3
    vqmovn.s32      d10, q4
    vqmovn.s32      d12, q5
    vqmovn.s32      d14, q6
    vqmovn.s32      d16, q7
    vqmovn.s32      d18, q8
    vqmovn.s32      d20, q9
    vqmovn.s32      d22, q10

    subs    r0, r0, #1
    bne     vqmovnI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqmovnI4MaxTest:

    vpush.64        {d8-d15}

vqmovnI4MaxTest_LOOP:

    // loop 1
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q0
    vqmovn.s32      d6, q0
    vqmovn.s32      d8, q0
    vqmovn.s32      d10, q0
    vqmovn.s32      d12, q0
    vqmovn.s32      d14, q0
    vqmovn.s32      d16, q0
    vqmovn.s32      d18, q0
    vqmovn.s32      d20, q0
    vqmovn.s32      d22, q0
    vqmovn.s32      d24, q0

    // loop 2
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q0
    vqmovn.s32      d6, q0
    vqmovn.s32      d8, q0
    vqmovn.s32      d10, q0
    vqmovn.s32      d12, q0
    vqmovn.s32      d14, q0
    vqmovn.s32      d16, q0
    vqmovn.s32      d18, q0
    vqmovn.s32      d20, q0
    vqmovn.s32      d22, q0
    vqmovn.s32      d24, q0

    // loop 3
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q0
    vqmovn.s32      d6, q0
    vqmovn.s32      d8, q0
    vqmovn.s32      d10, q0
    vqmovn.s32      d12, q0
    vqmovn.s32      d14, q0
    vqmovn.s32      d16, q0
    vqmovn.s32      d18, q0
    vqmovn.s32      d20, q0
    vqmovn.s32      d22, q0
    vqmovn.s32      d24, q0

    // loop 4
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q0
    vqmovn.s32      d6, q0
    vqmovn.s32      d8, q0
    vqmovn.s32      d10, q0
    vqmovn.s32      d12, q0
    vqmovn.s32      d14, q0
    vqmovn.s32      d16, q0
    vqmovn.s32      d18, q0
    vqmovn.s32      d20, q0
    vqmovn.s32      d22, q0
    vqmovn.s32      d24, q0

    // loop 5
    vqmovn.s32      d2, q0
    vqmovn.s32      d4, q0
    vqmovn.s32      d6, q0
    vqmovn.s32      d8, q0
    vqmovn.s32      d10, q0
    vqmovn.s32      d12, q0
    vqmovn.s32      d14, q0
    vqmovn.s32      d16, q0
    vqmovn.s32      d18, q0
    vqmovn.s32      d20, q0
    vqmovn.s32      d22, q0
    vqmovn.s32      d24, q0

    subs    r0, r0, #1
    bne     vqmovnI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqnegI4MinTest:

    vpush.64        {d8-d15}

vqnegI4MinTest_LOOP:

    // loop 1
    vqneg.s32       q0, q11
    vqneg.s32       q1, q0
    vqneg.s32       q2, q1
    vqneg.s32       q3, q2
    vqneg.s32       q4, q3
    vqneg.s32       q5, q4
    vqneg.s32       q6, q5
    vqneg.s32       q7, q6
    vqneg.s32       q8, q7
    vqneg.s32       q9, q8
    vqneg.s32       q10, q9
    vqneg.s32       q11, q10

    // loop 2
    vqneg.s32       q0, q11
    vqneg.s32       q1, q0
    vqneg.s32       q2, q1
    vqneg.s32       q3, q2
    vqneg.s32       q4, q3
    vqneg.s32       q5, q4
    vqneg.s32       q6, q5
    vqneg.s32       q7, q6
    vqneg.s32       q8, q7
    vqneg.s32       q9, q8
    vqneg.s32       q10, q9
    vqneg.s32       q11, q10

    // loop 3
    vqneg.s32       q0, q11
    vqneg.s32       q1, q0
    vqneg.s32       q2, q1
    vqneg.s32       q3, q2
    vqneg.s32       q4, q3
    vqneg.s32       q5, q4
    vqneg.s32       q6, q5
    vqneg.s32       q7, q6
    vqneg.s32       q8, q7
    vqneg.s32       q9, q8
    vqneg.s32       q10, q9
    vqneg.s32       q11, q10

    // loop 4
    vqneg.s32       q0, q11
    vqneg.s32       q1, q0
    vqneg.s32       q2, q1
    vqneg.s32       q3, q2
    vqneg.s32       q4, q3
    vqneg.s32       q5, q4
    vqneg.s32       q6, q5
    vqneg.s32       q7, q6
    vqneg.s32       q8, q7
    vqneg.s32       q9, q8
    vqneg.s32       q10, q9
    vqneg.s32       q11, q10

    // loop 5
    vqneg.s32       q0, q11
    vqneg.s32       q1, q0
    vqneg.s32       q2, q1
    vqneg.s32       q3, q2
    vqneg.s32       q4, q3
    vqneg.s32       q5, q4
    vqneg.s32       q6, q5
    vqneg.s32       q7, q6
    vqneg.s32       q8, q7
    vqneg.s32       q9, q8
    vqneg.s32       q10, q9
    vqneg.s32       q11, q10

    subs    r0, r0, #1
    bne     vqnegI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqnegI4MaxTest:

    vpush.64        {d8-d15}

vqnegI4MaxTest_LOOP:

    // loop 1
    vqneg.s32       q1, q0
    vqneg.s32       q2, q0
    vqneg.s32       q3, q0
    vqneg.s32       q4, q0
    vqneg.s32       q5, q0
    vqneg.s32       q6, q0
    vqneg.s32       q7, q0
    vqneg.s32       q8, q0
    vqneg.s32       q9, q0
    vqneg.s32       q10, q0
    vqneg.s32       q11, q0
    vqneg.s32       q12, q0

    // loop 2
    vqneg.s32       q1, q0
    vqneg.s32       q2, q0
    vqneg.s32       q3, q0
    vqneg.s32       q4, q0
    vqneg.s32       q5, q0
    vqneg.s32       q6, q0
    vqneg.s32       q7, q0
    vqneg.s32       q8, q0
    vqneg.s32       q9, q0
    vqneg.s32       q10, q0
    vqneg.s32       q11, q0
    vqneg.s32       q12, q0

    // loop 3
    vqneg.s32       q1, q0
    vqneg.s32       q2, q0
    vqneg.s32       q3, q0
    vqneg.s32       q4, q0
    vqneg.s32       q5, q0
    vqneg.s32       q6, q0
    vqneg.s32       q7, q0
    vqneg.s32       q8, q0
    vqneg.s32       q9, q0
    vqneg.s32       q10, q0
    vqneg.s32       q11, q0
    vqneg.s32       q12, q0

    // loop 4
    vqneg.s32       q1, q0
    vqneg.s32       q2, q0
    vqneg.s32       q3, q0
    vqneg.s32       q4, q0
    vqneg.s32       q5, q0
    vqneg.s32       q6, q0
    vqneg.s32       q7, q0
    vqneg.s32       q8, q0
    vqneg.s32       q9, q0
    vqneg.s32       q10, q0
    vqneg.s32       q11, q0
    vqneg.s32       q12, q0

    // loop 5
    vqneg.s32       q1, q0
    vqneg.s32       q2, q0
    vqneg.s32       q3, q0
    vqneg.s32       q4, q0
    vqneg.s32       q5, q0
    vqneg.s32       q6, q0
    vqneg.s32       q7, q0
    vqneg.s32       q8, q0
    vqneg.s32       q9, q0
    vqneg.s32       q10, q0
    vqneg.s32       q11, q0
    vqneg.s32       q12, q0

    subs    r0, r0, #1
    bne     vqnegI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqrdmulhI4MinTest:

    vpush.64        {d8-d15}

vqrdmulhI4MinTest_LOOP:

    // loop 1
    vqrdmulh.s32    q0, q0, q11
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q1
    vqrdmulh.s32    q3, q3, q2
    vqrdmulh.s32    q4, q4, q3
    vqrdmulh.s32    q5, q5, q4
    vqrdmulh.s32    q6, q6, q5
    vqrdmulh.s32    q7, q7, q6
    vqrdmulh.s32    q8, q8, q7
    vqrdmulh.s32    q9, q9, q8
    vqrdmulh.s32    q10, q10, q9
    vqrdmulh.s32    q11, q11, q10

    // loop 2
    vqrdmulh.s32    q0, q0, q11
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q1
    vqrdmulh.s32    q3, q3, q2
    vqrdmulh.s32    q4, q4, q3
    vqrdmulh.s32    q5, q5, q4
    vqrdmulh.s32    q6, q6, q5
    vqrdmulh.s32    q7, q7, q6
    vqrdmulh.s32    q8, q8, q7
    vqrdmulh.s32    q9, q9, q8
    vqrdmulh.s32    q10, q10, q9
    vqrdmulh.s32    q11, q11, q10

    // loop 3
    vqrdmulh.s32    q0, q0, q11
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q1
    vqrdmulh.s32    q3, q3, q2
    vqrdmulh.s32    q4, q4, q3
    vqrdmulh.s32    q5, q5, q4
    vqrdmulh.s32    q6, q6, q5
    vqrdmulh.s32    q7, q7, q6
    vqrdmulh.s32    q8, q8, q7
    vqrdmulh.s32    q9, q9, q8
    vqrdmulh.s32    q10, q10, q9
    vqrdmulh.s32    q11, q11, q10

    // loop 4
    vqrdmulh.s32    q0, q0, q11
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q1
    vqrdmulh.s32    q3, q3, q2
    vqrdmulh.s32    q4, q4, q3
    vqrdmulh.s32    q5, q5, q4
    vqrdmulh.s32    q6, q6, q5
    vqrdmulh.s32    q7, q7, q6
    vqrdmulh.s32    q8, q8, q7
    vqrdmulh.s32    q9, q9, q8
    vqrdmulh.s32    q10, q10, q9
    vqrdmulh.s32    q11, q11, q10

    // loop 5
    vqrdmulh.s32    q0, q0, q11
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q1
    vqrdmulh.s32    q3, q3, q2
    vqrdmulh.s32    q4, q4, q3
    vqrdmulh.s32    q5, q5, q4
    vqrdmulh.s32    q6, q6, q5
    vqrdmulh.s32    q7, q7, q6
    vqrdmulh.s32    q8, q8, q7
    vqrdmulh.s32    q9, q9, q8
    vqrdmulh.s32    q10, q10, q9
    vqrdmulh.s32    q11, q11, q10

    subs    r0, r0, #1
    bne     vqrdmulhI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqrdmulhI4MaxTest:

    vpush.64        {d8-d15}

vqrdmulhI4MaxTest_LOOP:

    // loop 1
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q0
    vqrdmulh.s32    q3, q3, q0
    vqrdmulh.s32    q4, q4, q0
    vqrdmulh.s32    q5, q5, q0
    vqrdmulh.s32    q6, q6, q0
    vqrdmulh.s32    q7, q7, q0
    vqrdmulh.s32    q8, q8, q0
    vqrdmulh.s32    q9, q9, q0
    vqrdmulh.s32    q10, q10, q0
    vqrdmulh.s32    q11, q11, q0
    vqrdmulh.s32    q12, q12, q0

    // loop 2
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q0
    vqrdmulh.s32    q3, q3, q0
    vqrdmulh.s32    q4, q4, q0
    vqrdmulh.s32    q5, q5, q0
    vqrdmulh.s32    q6, q6, q0
    vqrdmulh.s32    q7, q7, q0
    vqrdmulh.s32    q8, q8, q0
    vqrdmulh.s32    q9, q9, q0
    vqrdmulh.s32    q10, q10, q0
    vqrdmulh.s32    q11, q11, q0
    vqrdmulh.s32    q12, q12, q0

    // loop 3
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q0
    vqrdmulh.s32    q3, q3, q0
    vqrdmulh.s32    q4, q4, q0
    vqrdmulh.s32    q5, q5, q0
    vqrdmulh.s32    q6, q6, q0
    vqrdmulh.s32    q7, q7, q0
    vqrdmulh.s32    q8, q8, q0
    vqrdmulh.s32    q9, q9, q0
    vqrdmulh.s32    q10, q10, q0
    vqrdmulh.s32    q11, q11, q0
    vqrdmulh.s32    q12, q12, q0

    // loop 4
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q0
    vqrdmulh.s32    q3, q3, q0
    vqrdmulh.s32    q4, q4, q0
    vqrdmulh.s32    q5, q5, q0
    vqrdmulh.s32    q6, q6, q0
    vqrdmulh.s32    q7, q7, q0
    vqrdmulh.s32    q8, q8, q0
    vqrdmulh.s32    q9, q9, q0
    vqrdmulh.s32    q10, q10, q0
    vqrdmulh.s32    q11, q11, q0
    vqrdmulh.s32    q12, q12, q0

    // loop 5
    vqrdmulh.s32    q1, q1, q0
    vqrdmulh.s32    q2, q2, q0
    vqrdmulh.s32    q3, q3, q0
    vqrdmulh.s32    q4, q4, q0
    vqrdmulh.s32    q5, q5, q0
    vqrdmulh.s32    q6, q6, q0
    vqrdmulh.s32    q7, q7, q0
    vqrdmulh.s32    q8, q8, q0
    vqrdmulh.s32    q9, q9, q0
    vqrdmulh.s32    q10, q10, q0
    vqrdmulh.s32    q11, q11, q0
    vqrdmulh.s32    q12, q12, q0

    subs    r0, r0, #1
    bne     vqrdmulhI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqrshlI4MinTest:

    vpush.64        {d8-d15}

vqrshlI4MinTest_LOOP:

    // loop 1
    vqrshl.s32      q0, q0, q11
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q1
    vqrshl.s32      q3, q3, q2
    vqrshl.s32      q4, q4, q3
    vqrshl.s32      q5, q5, q4
    vqrshl.s32      q6, q6, q5
    vqrshl.s32      q7, q7, q6
    vqrshl.s32      q8, q8, q7
    vqrshl.s32      q9, q9, q8
    vqrshl.s32      q10, q10, q9
    vqrshl.s32      q11, q11, q10
    
    // loop 2
    vqrshl.s32      q0, q0, q11
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q1
    vqrshl.s32      q3, q3, q2
    vqrshl.s32      q4, q4, q3
    vqrshl.s32      q5, q5, q4
    vqrshl.s32      q6, q6, q5
    vqrshl.s32      q7, q7, q6
    vqrshl.s32      q8, q8, q7
    vqrshl.s32      q9, q9, q8
    vqrshl.s32      q10, q10, q9
    vqrshl.s32      q11, q11, q10

    // loop 3
    vqrshl.s32      q0, q0, q11
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q1
    vqrshl.s32      q3, q3, q2
    vqrshl.s32      q4, q4, q3
    vqrshl.s32      q5, q5, q4
    vqrshl.s32      q6, q6, q5
    vqrshl.s32      q7, q7, q6
    vqrshl.s32      q8, q8, q7
    vqrshl.s32      q9, q9, q8
    vqrshl.s32      q10, q10, q9
    vqrshl.s32      q11, q11, q10

    // loop 4
    vqrshl.s32      q0, q0, q11
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q1
    vqrshl.s32      q3, q3, q2
    vqrshl.s32      q4, q4, q3
    vqrshl.s32      q5, q5, q4
    vqrshl.s32      q6, q6, q5
    vqrshl.s32      q7, q7, q6
    vqrshl.s32      q8, q8, q7
    vqrshl.s32      q9, q9, q8
    vqrshl.s32      q10, q10, q9
    vqrshl.s32      q11, q11, q10

    // loop 5
    vqrshl.s32      q0, q0, q11
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q1
    vqrshl.s32      q3, q3, q2
    vqrshl.s32      q4, q4, q3
    vqrshl.s32      q5, q5, q4
    vqrshl.s32      q6, q6, q5
    vqrshl.s32      q7, q7, q6
    vqrshl.s32      q8, q8, q7
    vqrshl.s32      q9, q9, q8
    vqrshl.s32      q10, q10, q9
    vqrshl.s32      q11, q11, q10

    subs    r0, r0, #1
    bne     vqrshlI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqrshlI4MaxTest:

    vpush.64        {d8-d15}

vqrshlI4MaxTest_LOOP:

    // loop 1
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q0
    vqrshl.s32      q3, q3, q0
    vqrshl.s32      q4, q4, q0
    vqrshl.s32      q5, q5, q0
    vqrshl.s32      q6, q6, q0
    vqrshl.s32      q7, q7, q0
    vqrshl.s32      q8, q8, q0
    vqrshl.s32      q9, q9, q0
    vqrshl.s32      q10, q10, q0
    vqrshl.s32      q11, q11, q0
    vqrshl.s32      q12, q12, q0

    // loop 2
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q0
    vqrshl.s32      q3, q3, q0
    vqrshl.s32      q4, q4, q0
    vqrshl.s32      q5, q5, q0
    vqrshl.s32      q6, q6, q0
    vqrshl.s32      q7, q7, q0
    vqrshl.s32      q8, q8, q0
    vqrshl.s32      q9, q9, q0
    vqrshl.s32      q10, q10, q0
    vqrshl.s32      q11, q11, q0
    vqrshl.s32      q12, q12, q0

    // loop 3
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q0
    vqrshl.s32      q3, q3, q0
    vqrshl.s32      q4, q4, q0
    vqrshl.s32      q5, q5, q0
    vqrshl.s32      q6, q6, q0
    vqrshl.s32      q7, q7, q0
    vqrshl.s32      q8, q8, q0
    vqrshl.s32      q9, q9, q0
    vqrshl.s32      q10, q10, q0
    vqrshl.s32      q11, q11, q0
    vqrshl.s32      q12, q12, q0

    // loop 4
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q0
    vqrshl.s32      q3, q3, q0
    vqrshl.s32      q4, q4, q0
    vqrshl.s32      q5, q5, q0
    vqrshl.s32      q6, q6, q0
    vqrshl.s32      q7, q7, q0
    vqrshl.s32      q8, q8, q0
    vqrshl.s32      q9, q9, q0
    vqrshl.s32      q10, q10, q0
    vqrshl.s32      q11, q11, q0
    vqrshl.s32      q12, q12, q0

    // loop 5
    vqrshl.s32      q1, q1, q0
    vqrshl.s32      q2, q2, q0
    vqrshl.s32      q3, q3, q0
    vqrshl.s32      q4, q4, q0
    vqrshl.s32      q5, q5, q0
    vqrshl.s32      q6, q6, q0
    vqrshl.s32      q7, q7, q0
    vqrshl.s32      q8, q8, q0
    vqrshl.s32      q9, q9, q0
    vqrshl.s32      q10, q10, q0
    vqrshl.s32      q11, q11, q0
    vqrshl.s32      q12, q12, q0

    subs    r0, r0, #1
    bne     vqrshlI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqrshrnI4MinTest:

    vpush.64        {d8-d15}

vqrshrnI4MinTest_LOOP:

    // loop 1
    vqrshrn.s32     d0, q11, #1
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q1, #3
    vqrshrn.s32     d6, q2, #4
    vqrshrn.s32     d8, q3, #5
    vqrshrn.s32     d10, q4, #6
    vqrshrn.s32     d12, q5, #7
    vqrshrn.s32     d14, q6, #8
    vqrshrn.s32     d16, q7, #9
    vqrshrn.s32     d18, q8, #10
    vqrshrn.s32     d20, q9, #11
    vqrshrn.s32     d22, q10, #12

    // loop 2
    vqrshrn.s32     d0, q11, #1
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q1, #3
    vqrshrn.s32     d6, q2, #4
    vqrshrn.s32     d8, q3, #5
    vqrshrn.s32     d10, q4, #6
    vqrshrn.s32     d12, q5, #7
    vqrshrn.s32     d14, q6, #8
    vqrshrn.s32     d16, q7, #9
    vqrshrn.s32     d18, q8, #10
    vqrshrn.s32     d20, q9, #11
    vqrshrn.s32     d22, q10, #12

    // loop 3
    vqrshrn.s32     d0, q11, #1
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q1, #3
    vqrshrn.s32     d6, q2, #4
    vqrshrn.s32     d8, q3, #5
    vqrshrn.s32     d10, q4, #6
    vqrshrn.s32     d12, q5, #7
    vqrshrn.s32     d14, q6, #8
    vqrshrn.s32     d16, q7, #9
    vqrshrn.s32     d18, q8, #10
    vqrshrn.s32     d20, q9, #11
    vqrshrn.s32     d22, q10, #12

    // loop 4
    vqrshrn.s32     d0, q11, #1
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q1, #3
    vqrshrn.s32     d6, q2, #4
    vqrshrn.s32     d8, q3, #5
    vqrshrn.s32     d10, q4, #6
    vqrshrn.s32     d12, q5, #7
    vqrshrn.s32     d14, q6, #8
    vqrshrn.s32     d16, q7, #9
    vqrshrn.s32     d18, q8, #10
    vqrshrn.s32     d20, q9, #11
    vqrshrn.s32     d22, q10, #12

    // loop 5
    vqrshrn.s32     d0, q11, #1
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q1, #3
    vqrshrn.s32     d6, q2, #4
    vqrshrn.s32     d8, q3, #5
    vqrshrn.s32     d10, q4, #6
    vqrshrn.s32     d12, q5, #7
    vqrshrn.s32     d14, q6, #8
    vqrshrn.s32     d16, q7, #9
    vqrshrn.s32     d18, q8, #10
    vqrshrn.s32     d20, q9, #11
    vqrshrn.s32     d22, q10, #12

    subs    r0, r0, #1
    bne     vqrshrnI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqrshrnI4MaxTest:

    vpush.64        {d8-d15}

vqrshrnI4MaxTest_LOOP:

    // loop 1
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q0, #3
    vqrshrn.s32     d6, q0, #4
    vqrshrn.s32     d8, q0, #5
    vqrshrn.s32     d10, q0, #6
    vqrshrn.s32     d12, q0, #7
    vqrshrn.s32     d14, q0, #8
    vqrshrn.s32     d16, q0, #9
    vqrshrn.s32     d18, q0, #10
    vqrshrn.s32     d20, q0, #11
    vqrshrn.s32     d22, q0, #12
    vqrshrn.s32     d24, q0, #13

    // loop 2
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q0, #3
    vqrshrn.s32     d6, q0, #4
    vqrshrn.s32     d8, q0, #5
    vqrshrn.s32     d10, q0, #6
    vqrshrn.s32     d12, q0, #7
    vqrshrn.s32     d14, q0, #8
    vqrshrn.s32     d16, q0, #9
    vqrshrn.s32     d18, q0, #10
    vqrshrn.s32     d20, q0, #11
    vqrshrn.s32     d22, q0, #12
    vqrshrn.s32     d24, q0, #13

    // loop 3
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q0, #3
    vqrshrn.s32     d6, q0, #4
    vqrshrn.s32     d8, q0, #5
    vqrshrn.s32     d10, q0, #6
    vqrshrn.s32     d12, q0, #7
    vqrshrn.s32     d14, q0, #8
    vqrshrn.s32     d16, q0, #9
    vqrshrn.s32     d18, q0, #10
    vqrshrn.s32     d20, q0, #11
    vqrshrn.s32     d22, q0, #12
    vqrshrn.s32     d24, q0, #13

    // loop 4
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q0, #3
    vqrshrn.s32     d6, q0, #4
    vqrshrn.s32     d8, q0, #5
    vqrshrn.s32     d10, q0, #6
    vqrshrn.s32     d12, q0, #7
    vqrshrn.s32     d14, q0, #8
    vqrshrn.s32     d16, q0, #9
    vqrshrn.s32     d18, q0, #10
    vqrshrn.s32     d20, q0, #11
    vqrshrn.s32     d22, q0, #12
    vqrshrn.s32     d24, q0, #13

    // loop 5
    vqrshrn.s32     d2, q0, #2
    vqrshrn.s32     d4, q0, #3
    vqrshrn.s32     d6, q0, #4
    vqrshrn.s32     d8, q0, #5
    vqrshrn.s32     d10, q0, #6
    vqrshrn.s32     d12, q0, #7
    vqrshrn.s32     d14, q0, #8
    vqrshrn.s32     d16, q0, #9
    vqrshrn.s32     d18, q0, #10
    vqrshrn.s32     d20, q0, #11
    vqrshrn.s32     d22, q0, #12
    vqrshrn.s32     d24, q0, #13

    subs    r0, r0, #1
    bne     vqrshrnI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqshlI4MinTest:

    vpush.64        {d8-d15}

vqshlI4MinTest_LOOP:

    // loop 1
    vqshl.s32       q0, q0, q11
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q1
    vqshl.s32       q3, q3, q2
    vqshl.s32       q4, q4, q3
    vqshl.s32       q5, q5, q4
    vqshl.s32       q6, q6, q5
    vqshl.s32       q7, q7, q6
    vqshl.s32       q8, q8, q7
    vqshl.s32       q9, q9, q8
    vqshl.s32       q10, q10, q9
    vqshl.s32       q11, q11, q10

    // loop 2
    vqshl.s32       q0, q0, q11
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q1
    vqshl.s32       q3, q3, q2
    vqshl.s32       q4, q4, q3
    vqshl.s32       q5, q5, q4
    vqshl.s32       q6, q6, q5
    vqshl.s32       q7, q7, q6
    vqshl.s32       q8, q8, q7
    vqshl.s32       q9, q9, q8
    vqshl.s32       q10, q10, q9
    vqshl.s32       q11, q11, q10

    // loop 3
    vqshl.s32       q0, q0, q11
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q1
    vqshl.s32       q3, q3, q2
    vqshl.s32       q4, q4, q3
    vqshl.s32       q5, q5, q4
    vqshl.s32       q6, q6, q5
    vqshl.s32       q7, q7, q6
    vqshl.s32       q8, q8, q7
    vqshl.s32       q9, q9, q8
    vqshl.s32       q10, q10, q9
    vqshl.s32       q11, q11, q10

    // loop 4
    vqshl.s32       q0, q0, q11
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q1
    vqshl.s32       q3, q3, q2
    vqshl.s32       q4, q4, q3
    vqshl.s32       q5, q5, q4
    vqshl.s32       q6, q6, q5
    vqshl.s32       q7, q7, q6
    vqshl.s32       q8, q8, q7
    vqshl.s32       q9, q9, q8
    vqshl.s32       q10, q10, q9
    vqshl.s32       q11, q11, q10

    // loop 5
    vqshl.s32       q0, q0, q11
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q1
    vqshl.s32       q3, q3, q2
    vqshl.s32       q4, q4, q3
    vqshl.s32       q5, q5, q4
    vqshl.s32       q6, q6, q5
    vqshl.s32       q7, q7, q6
    vqshl.s32       q8, q8, q7
    vqshl.s32       q9, q9, q8
    vqshl.s32       q10, q10, q9
    vqshl.s32       q11, q11, q10

    subs    r0, r0, #1
    bne     vqshlI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqshlI4MaxTest:

    vpush.64        {d8-d15}

vqshlI4MaxTest_LOOP:

    // loop 1
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q0
    vqshl.s32       q3, q3, q0
    vqshl.s32       q4, q4, q0
    vqshl.s32       q5, q5, q0
    vqshl.s32       q6, q6, q0
    vqshl.s32       q7, q7, q0
    vqshl.s32       q8, q8, q0
    vqshl.s32       q9, q9, q0
    vqshl.s32       q10, q10, q0
    vqshl.s32       q11, q11, q0
    vqshl.s32       q12, q12, q0

    // loop 2
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q0
    vqshl.s32       q3, q3, q0
    vqshl.s32       q4, q4, q0
    vqshl.s32       q5, q5, q0
    vqshl.s32       q6, q6, q0
    vqshl.s32       q7, q7, q0
    vqshl.s32       q8, q8, q0
    vqshl.s32       q9, q9, q0
    vqshl.s32       q10, q10, q0
    vqshl.s32       q11, q11, q0
    vqshl.s32       q12, q12, q0

    // loop 3
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q0
    vqshl.s32       q3, q3, q0
    vqshl.s32       q4, q4, q0
    vqshl.s32       q5, q5, q0
    vqshl.s32       q6, q6, q0
    vqshl.s32       q7, q7, q0
    vqshl.s32       q8, q8, q0
    vqshl.s32       q9, q9, q0
    vqshl.s32       q10, q10, q0
    vqshl.s32       q11, q11, q0
    vqshl.s32       q12, q12, q0

    // loop 4
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q0
    vqshl.s32       q3, q3, q0
    vqshl.s32       q4, q4, q0
    vqshl.s32       q5, q5, q0
    vqshl.s32       q6, q6, q0
    vqshl.s32       q7, q7, q0
    vqshl.s32       q8, q8, q0
    vqshl.s32       q9, q9, q0
    vqshl.s32       q10, q10, q0
    vqshl.s32       q11, q11, q0
    vqshl.s32       q12, q12, q0

    // loop 5
    vqshl.s32       q1, q1, q0
    vqshl.s32       q2, q2, q0
    vqshl.s32       q3, q3, q0
    vqshl.s32       q4, q4, q0
    vqshl.s32       q5, q5, q0
    vqshl.s32       q6, q6, q0
    vqshl.s32       q7, q7, q0
    vqshl.s32       q8, q8, q0
    vqshl.s32       q9, q9, q0
    vqshl.s32       q10, q10, q0
    vqshl.s32       q11, q11, q0
    vqshl.s32       q12, q12, q0

    subs    r0, r0, #1
    bne     vqshlI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqshlImmI4MinTest:

    vpush.64        {d8-d15}

vqshlImmI4MinTest_LOOP:

    // loop 1
    vqshl.s32       q0, q11, #1
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q1, #3
    vqshl.s32       q3, q2, #4
    vqshl.s32       q4, q3, #5
    vqshl.s32       q5, q4, #6
    vqshl.s32       q6, q5, #7
    vqshl.s32       q7, q6, #8
    vqshl.s32       q8, q7, #9
    vqshl.s32       q9, q8, #10
    vqshl.s32       q10, q9, #11
    vqshl.s32       q11, q10, #12

    // loop 2
    vqshl.s32       q0, q11, #1
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q1, #3
    vqshl.s32       q3, q2, #4
    vqshl.s32       q4, q3, #5
    vqshl.s32       q5, q4, #6
    vqshl.s32       q6, q5, #7
    vqshl.s32       q7, q6, #8
    vqshl.s32       q8, q7, #9
    vqshl.s32       q9, q8, #10
    vqshl.s32       q10, q9, #11
    vqshl.s32       q11, q10, #12

    // loop 3
    vqshl.s32       q0, q11, #1
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q1, #3
    vqshl.s32       q3, q2, #4
    vqshl.s32       q4, q3, #5
    vqshl.s32       q5, q4, #6
    vqshl.s32       q6, q5, #7
    vqshl.s32       q7, q6, #8
    vqshl.s32       q8, q7, #9
    vqshl.s32       q9, q8, #10
    vqshl.s32       q10, q9, #11
    vqshl.s32       q11, q10, #12

    // loop 4
    vqshl.s32       q0, q11, #1
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q1, #3
    vqshl.s32       q3, q2, #4
    vqshl.s32       q4, q3, #5
    vqshl.s32       q5, q4, #6
    vqshl.s32       q6, q5, #7
    vqshl.s32       q7, q6, #8
    vqshl.s32       q8, q7, #9
    vqshl.s32       q9, q8, #10
    vqshl.s32       q10, q9, #11
    vqshl.s32       q11, q10, #12

    // loop 5
    vqshl.s32       q0, q11, #1
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q1, #3
    vqshl.s32       q3, q2, #4
    vqshl.s32       q4, q3, #5
    vqshl.s32       q5, q4, #6
    vqshl.s32       q6, q5, #7
    vqshl.s32       q7, q6, #8
    vqshl.s32       q8, q7, #9
    vqshl.s32       q9, q8, #10
    vqshl.s32       q10, q9, #11
    vqshl.s32       q11, q10, #12

    subs    r0, r0, #1
    bne     vqshlImmI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqshlImmI4MaxTest:

    vpush.64        {d8-d15}

vqshlImmI4MaxTest_LOOP:

    // loop 1
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q0, #3
    vqshl.s32       q3, q0, #4
    vqshl.s32       q4, q0, #5
    vqshl.s32       q5, q0, #6
    vqshl.s32       q6, q0, #7
    vqshl.s32       q7, q0, #8
    vqshl.s32       q8, q0, #9
    vqshl.s32       q9, q0, #10
    vqshl.s32       q10, q0, #11
    vqshl.s32       q11, q0, #12
    vqshl.s32       q12, q0, #13

    // loop 2
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q0, #3
    vqshl.s32       q3, q0, #4
    vqshl.s32       q4, q0, #5
    vqshl.s32       q5, q0, #6
    vqshl.s32       q6, q0, #7
    vqshl.s32       q7, q0, #8
    vqshl.s32       q8, q0, #9
    vqshl.s32       q9, q0, #10
    vqshl.s32       q10, q0, #11
    vqshl.s32       q11, q0, #12
    vqshl.s32       q12, q0, #13

    // loop 3
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q0, #3
    vqshl.s32       q3, q0, #4
    vqshl.s32       q4, q0, #5
    vqshl.s32       q5, q0, #6
    vqshl.s32       q6, q0, #7
    vqshl.s32       q7, q0, #8
    vqshl.s32       q8, q0, #9
    vqshl.s32       q9, q0, #10
    vqshl.s32       q10, q0, #11
    vqshl.s32       q11, q0, #12
    vqshl.s32       q12, q0, #13

    // loop 4
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q0, #3
    vqshl.s32       q3, q0, #4
    vqshl.s32       q4, q0, #5
    vqshl.s32       q5, q0, #6
    vqshl.s32       q6, q0, #7
    vqshl.s32       q7, q0, #8
    vqshl.s32       q8, q0, #9
    vqshl.s32       q9, q0, #10
    vqshl.s32       q10, q0, #11
    vqshl.s32       q11, q0, #12
    vqshl.s32       q12, q0, #13

    // loop 5
    vqshl.s32       q1, q0, #2
    vqshl.s32       q2, q0, #3
    vqshl.s32       q3, q0, #4
    vqshl.s32       q4, q0, #5
    vqshl.s32       q5, q0, #6
    vqshl.s32       q6, q0, #7
    vqshl.s32       q7, q0, #8
    vqshl.s32       q8, q0, #9
    vqshl.s32       q9, q0, #10
    vqshl.s32       q10, q0, #11
    vqshl.s32       q11, q0, #12
    vqshl.s32       q12, q0, #13

    subs    r0, r0, #1
    bne     vqshlImmI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqshrnI4MinTest:

    vpush.64        {d8-d15}

vqshrnI4MinTest_LOOP:

    // loop 1
    vqshrn.s32      d0, q11, #1
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q1, #3
    vqshrn.s32      d6, q2, #4
    vqshrn.s32      d8, q3, #5
    vqshrn.s32      d10, q4, #6
    vqshrn.s32      d12, q5, #7
    vqshrn.s32      d14, q6, #8
    vqshrn.s32      d16, q7, #9
    vqshrn.s32      d18, q8, #10
    vqshrn.s32      d20, q9, #11
    vqshrn.s32      d22, q10, #12

    // loop 2
    vqshrn.s32      d0, q11, #1
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q1, #3
    vqshrn.s32      d6, q2, #4
    vqshrn.s32      d8, q3, #5
    vqshrn.s32      d10, q4, #6
    vqshrn.s32      d12, q5, #7
    vqshrn.s32      d14, q6, #8
    vqshrn.s32      d16, q7, #9
    vqshrn.s32      d18, q8, #10
    vqshrn.s32      d20, q9, #11
    vqshrn.s32      d22, q10, #12

    // loop 3
    vqshrn.s32      d0, q11, #1
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q1, #3
    vqshrn.s32      d6, q2, #4
    vqshrn.s32      d8, q3, #5
    vqshrn.s32      d10, q4, #6
    vqshrn.s32      d12, q5, #7
    vqshrn.s32      d14, q6, #8
    vqshrn.s32      d16, q7, #9
    vqshrn.s32      d18, q8, #10
    vqshrn.s32      d20, q9, #11
    vqshrn.s32      d22, q10, #12

    // loop 4
    vqshrn.s32      d0, q11, #1
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q1, #3
    vqshrn.s32      d6, q2, #4
    vqshrn.s32      d8, q3, #5
    vqshrn.s32      d10, q4, #6
    vqshrn.s32      d12, q5, #7
    vqshrn.s32      d14, q6, #8
    vqshrn.s32      d16, q7, #9
    vqshrn.s32      d18, q8, #10
    vqshrn.s32      d20, q9, #11
    vqshrn.s32      d22, q10, #12

    // loop 5
    vqshrn.s32      d0, q11, #1
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q1, #3
    vqshrn.s32      d6, q2, #4
    vqshrn.s32      d8, q3, #5
    vqshrn.s32      d10, q4, #6
    vqshrn.s32      d12, q5, #7
    vqshrn.s32      d14, q6, #8
    vqshrn.s32      d16, q7, #9
    vqshrn.s32      d18, q8, #10
    vqshrn.s32      d20, q9, #11
    vqshrn.s32      d22, q10, #12

    subs    r0, r0, #1
    bne     vqshrnI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqshrnI4MaxTest:

    vpush.64        {d8-d15}

vqshrnI4MaxTest_LOOP:

    // loop 1
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q0, #3
    vqshrn.s32      d6, q0, #4
    vqshrn.s32      d8, q0, #5
    vqshrn.s32      d10, q0, #6
    vqshrn.s32      d12, q0, #7
    vqshrn.s32      d14, q0, #8
    vqshrn.s32      d16, q0, #9
    vqshrn.s32      d18, q0, #10
    vqshrn.s32      d20, q0, #11
    vqshrn.s32      d22, q0, #12
    vqshrn.s32      d24, q0, #14

    // loop 2
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q0, #3
    vqshrn.s32      d6, q0, #4
    vqshrn.s32      d8, q0, #5
    vqshrn.s32      d10, q0, #6
    vqshrn.s32      d12, q0, #7
    vqshrn.s32      d14, q0, #8
    vqshrn.s32      d16, q0, #9
    vqshrn.s32      d18, q0, #10
    vqshrn.s32      d20, q0, #11
    vqshrn.s32      d22, q0, #12
    vqshrn.s32      d24, q0, #14

    // loop 3
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q0, #3
    vqshrn.s32      d6, q0, #4
    vqshrn.s32      d8, q0, #5
    vqshrn.s32      d10, q0, #6
    vqshrn.s32      d12, q0, #7
    vqshrn.s32      d14, q0, #8
    vqshrn.s32      d16, q0, #9
    vqshrn.s32      d18, q0, #10
    vqshrn.s32      d20, q0, #11
    vqshrn.s32      d22, q0, #12
    vqshrn.s32      d24, q0, #14

    // loop 4
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q0, #3
    vqshrn.s32      d6, q0, #4
    vqshrn.s32      d8, q0, #5
    vqshrn.s32      d10, q0, #6
    vqshrn.s32      d12, q0, #7
    vqshrn.s32      d14, q0, #8
    vqshrn.s32      d16, q0, #9
    vqshrn.s32      d18, q0, #10
    vqshrn.s32      d20, q0, #11
    vqshrn.s32      d22, q0, #12
    vqshrn.s32      d24, q0, #14

    // loop 5
    vqshrn.s32      d2, q0, #2
    vqshrn.s32      d4, q0, #3
    vqshrn.s32      d6, q0, #4
    vqshrn.s32      d8, q0, #5
    vqshrn.s32      d10, q0, #6
    vqshrn.s32      d12, q0, #7
    vqshrn.s32      d14, q0, #8
    vqshrn.s32      d16, q0, #9
    vqshrn.s32      d18, q0, #10
    vqshrn.s32      d20, q0, #11
    vqshrn.s32      d22, q0, #12
    vqshrn.s32      d24, q0, #14

    subs    r0, r0, #1
    bne     vqshrnI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vqsubI4MinTest:

    vpush.64        {d8-d15}

vqsubI4MinTest_LOOP:

    // loop 1
    vqsub.s32       q0, q0, q11
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q1
    vqsub.s32       q3, q3, q2
    vqsub.s32       q4, q4, q3
    vqsub.s32       q5, q5, q4
    vqsub.s32       q6, q6, q5
    vqsub.s32       q7, q7, q6
    vqsub.s32       q8, q8, q7
    vqsub.s32       q9, q9, q8
    vqsub.s32       q10, q10, q9
    vqsub.s32       q11, q11, q10

    // loop 2
    vqsub.s32       q0, q0, q11
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q1
    vqsub.s32       q3, q3, q2
    vqsub.s32       q4, q4, q3
    vqsub.s32       q5, q5, q4
    vqsub.s32       q6, q6, q5
    vqsub.s32       q7, q7, q6
    vqsub.s32       q8, q8, q7
    vqsub.s32       q9, q9, q8
    vqsub.s32       q10, q10, q9
    vqsub.s32       q11, q11, q10

    // loop 3
    vqsub.s32       q0, q0, q11
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q1
    vqsub.s32       q3, q3, q2
    vqsub.s32       q4, q4, q3
    vqsub.s32       q5, q5, q4
    vqsub.s32       q6, q6, q5
    vqsub.s32       q7, q7, q6
    vqsub.s32       q8, q8, q7
    vqsub.s32       q9, q9, q8
    vqsub.s32       q10, q10, q9
    vqsub.s32       q11, q11, q10

    // loop 4
    vqsub.s32       q0, q0, q11
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q1
    vqsub.s32       q3, q3, q2
    vqsub.s32       q4, q4, q3
    vqsub.s32       q5, q5, q4
    vqsub.s32       q6, q6, q5
    vqsub.s32       q7, q7, q6
    vqsub.s32       q8, q8, q7
    vqsub.s32       q9, q9, q8
    vqsub.s32       q10, q10, q9
    vqsub.s32       q11, q11, q10

    // loop 5
    vqsub.s32       q0, q0, q11
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q1
    vqsub.s32       q3, q3, q2
    vqsub.s32       q4, q4, q3
    vqsub.s32       q5, q5, q4
    vqsub.s32       q6, q6, q5
    vqsub.s32       q7, q7, q6
    vqsub.s32       q8, q8, q7
    vqsub.s32       q9, q9, q8
    vqsub.s32       q10, q10, q9
    vqsub.s32       q11, q11, q10

    subs    r0, r0, #1
    bne     vqsubI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vqsubI4MaxTest:

    vpush.64        {d8-d15}

vqsubI4MaxTest_LOOP:

    // loop 1
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q0
    vqsub.s32       q3, q3, q0
    vqsub.s32       q4, q4, q0
    vqsub.s32       q5, q5, q0
    vqsub.s32       q6, q6, q0
    vqsub.s32       q7, q7, q0
    vqsub.s32       q8, q8, q0
    vqsub.s32       q9, q9, q0
    vqsub.s32       q10, q10, q0
    vqsub.s32       q11, q11, q0
    vqsub.s32       q12, q12, q0

    // loop 2
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q0
    vqsub.s32       q3, q3, q0
    vqsub.s32       q4, q4, q0
    vqsub.s32       q5, q5, q0
    vqsub.s32       q6, q6, q0
    vqsub.s32       q7, q7, q0
    vqsub.s32       q8, q8, q0
    vqsub.s32       q9, q9, q0
    vqsub.s32       q10, q10, q0
    vqsub.s32       q11, q11, q0
    vqsub.s32       q12, q12, q0

    // loop 3
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q0
    vqsub.s32       q3, q3, q0
    vqsub.s32       q4, q4, q0
    vqsub.s32       q5, q5, q0
    vqsub.s32       q6, q6, q0
    vqsub.s32       q7, q7, q0
    vqsub.s32       q8, q8, q0
    vqsub.s32       q9, q9, q0
    vqsub.s32       q10, q10, q0
    vqsub.s32       q11, q11, q0
    vqsub.s32       q12, q12, q0

    // loop 4
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q0
    vqsub.s32       q3, q3, q0
    vqsub.s32       q4, q4, q0
    vqsub.s32       q5, q5, q0
    vqsub.s32       q6, q6, q0
    vqsub.s32       q7, q7, q0
    vqsub.s32       q8, q8, q0
    vqsub.s32       q9, q9, q0
    vqsub.s32       q10, q10, q0
    vqsub.s32       q11, q11, q0
    vqsub.s32       q12, q12, q0

    // loop 5
    vqsub.s32       q1, q1, q0
    vqsub.s32       q2, q2, q0
    vqsub.s32       q3, q3, q0
    vqsub.s32       q4, q4, q0
    vqsub.s32       q5, q5, q0
    vqsub.s32       q6, q6, q0
    vqsub.s32       q7, q7, q0
    vqsub.s32       q8, q8, q0
    vqsub.s32       q9, q9, q0
    vqsub.s32       q10, q10, q0
    vqsub.s32       q11, q11, q0
    vqsub.s32       q12, q12, q0

    subs    r0, r0, #1
    bne     vqsubI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vraddhnI4MinTest:

    vpush.64        {d8-d15}

vraddhnI4MinTest_LOOP:

    // loop 1
    vraddhn.i32     d0, q0, q11
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q1
    vraddhn.i32     d6, q3, q2
    vraddhn.i32     d8, q4, q3
    vraddhn.i32     d10, q5, q4
    vraddhn.i32     d12, q6, q5
    vraddhn.i32     d14, q7, q6
    vraddhn.i32     d16, q8, q7
    vraddhn.i32     d18, q9, q8
    vraddhn.i32     d20, q10, q9
    vraddhn.i32     d22, q11, q10

    // loop 2
    vraddhn.i32     d0, q0, q11
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q1
    vraddhn.i32     d6, q3, q2
    vraddhn.i32     d8, q4, q3
    vraddhn.i32     d10, q5, q4
    vraddhn.i32     d12, q6, q5
    vraddhn.i32     d14, q7, q6
    vraddhn.i32     d16, q8, q7
    vraddhn.i32     d18, q9, q8
    vraddhn.i32     d20, q10, q9
    vraddhn.i32     d22, q11, q10

    // loop 3
    vraddhn.i32     d0, q0, q11
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q1
    vraddhn.i32     d6, q3, q2
    vraddhn.i32     d8, q4, q3
    vraddhn.i32     d10, q5, q4
    vraddhn.i32     d12, q6, q5
    vraddhn.i32     d14, q7, q6
    vraddhn.i32     d16, q8, q7
    vraddhn.i32     d18, q9, q8
    vraddhn.i32     d20, q10, q9
    vraddhn.i32     d22, q11, q10

    // loop 4
    vraddhn.i32     d0, q0, q11
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q1
    vraddhn.i32     d6, q3, q2
    vraddhn.i32     d8, q4, q3
    vraddhn.i32     d10, q5, q4
    vraddhn.i32     d12, q6, q5
    vraddhn.i32     d14, q7, q6
    vraddhn.i32     d16, q8, q7
    vraddhn.i32     d18, q9, q8
    vraddhn.i32     d20, q10, q9
    vraddhn.i32     d22, q11, q10

    // loop 5
    vraddhn.i32     d0, q0, q11
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q1
    vraddhn.i32     d6, q3, q2
    vraddhn.i32     d8, q4, q3
    vraddhn.i32     d10, q5, q4
    vraddhn.i32     d12, q6, q5
    vraddhn.i32     d14, q7, q6
    vraddhn.i32     d16, q8, q7
    vraddhn.i32     d18, q9, q8
    vraddhn.i32     d20, q10, q9
    vraddhn.i32     d22, q11, q10

    subs    r0, r0, #1
    bne     vraddhnI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vraddhnI4MaxTest:

    vpush.64        {d8-d15}

vraddhnI4MaxTest_LOOP:

    // loop 1
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q0
    vraddhn.i32     d6, q3, q0
    vraddhn.i32     d8, q4, q0
    vraddhn.i32     d10, q5, q0
    vraddhn.i32     d12, q6, q0
    vraddhn.i32     d14, q7, q0
    vraddhn.i32     d16, q8, q0
    vraddhn.i32     d18, q9, q0
    vraddhn.i32     d20, q10, q0
    vraddhn.i32     d22, q11, q0
    vraddhn.i32     d24, q12, q0

    // loop 2
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q0
    vraddhn.i32     d6, q3, q0
    vraddhn.i32     d8, q4, q0
    vraddhn.i32     d10, q5, q0
    vraddhn.i32     d12, q6, q0
    vraddhn.i32     d14, q7, q0
    vraddhn.i32     d16, q8, q0
    vraddhn.i32     d18, q9, q0
    vraddhn.i32     d20, q10, q0
    vraddhn.i32     d22, q11, q0
    vraddhn.i32     d24, q12, q0

    // loop 3
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q0
    vraddhn.i32     d6, q3, q0
    vraddhn.i32     d8, q4, q0
    vraddhn.i32     d10, q5, q0
    vraddhn.i32     d12, q6, q0
    vraddhn.i32     d14, q7, q0
    vraddhn.i32     d16, q8, q0
    vraddhn.i32     d18, q9, q0
    vraddhn.i32     d20, q10, q0
    vraddhn.i32     d22, q11, q0
    vraddhn.i32     d24, q12, q0

    // loop 4
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q0
    vraddhn.i32     d6, q3, q0
    vraddhn.i32     d8, q4, q0
    vraddhn.i32     d10, q5, q0
    vraddhn.i32     d12, q6, q0
    vraddhn.i32     d14, q7, q0
    vraddhn.i32     d16, q8, q0
    vraddhn.i32     d18, q9, q0
    vraddhn.i32     d20, q10, q0
    vraddhn.i32     d22, q11, q0
    vraddhn.i32     d24, q12, q0

    // loop 5
    vraddhn.i32     d2, q1, q0
    vraddhn.i32     d4, q2, q0
    vraddhn.i32     d6, q3, q0
    vraddhn.i32     d8, q4, q0
    vraddhn.i32     d10, q5, q0
    vraddhn.i32     d12, q6, q0
    vraddhn.i32     d14, q7, q0
    vraddhn.i32     d16, q8, q0
    vraddhn.i32     d18, q9, q0
    vraddhn.i32     d20, q10, q0
    vraddhn.i32     d22, q11, q0
    vraddhn.i32     d24, q12, q0

    subs    r0, r0, #1
    bne     vraddhnI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrecpeI4MinTest:

    vpush.64        {d8-d15}

vrecpeI4MinTest_LOOP:

    // loop 1
    vrecpe.u32      q0, q11
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q1
    vrecpe.u32      q3, q2
    vrecpe.u32      q4, q3
    vrecpe.u32      q5, q4
    vrecpe.u32      q6, q5
    vrecpe.u32      q7, q6
    vrecpe.u32      q8, q7
    vrecpe.u32      q9, q8
    vrecpe.u32      q10, q9
    vrecpe.u32      q11, q10

    // loop 2
    vrecpe.u32      q0, q11
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q1
    vrecpe.u32      q3, q2
    vrecpe.u32      q4, q3
    vrecpe.u32      q5, q4
    vrecpe.u32      q6, q5
    vrecpe.u32      q7, q6
    vrecpe.u32      q8, q7
    vrecpe.u32      q9, q8
    vrecpe.u32      q10, q9
    vrecpe.u32      q11, q10

    // loop 3
    vrecpe.u32      q0, q11
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q1
    vrecpe.u32      q3, q2
    vrecpe.u32      q4, q3
    vrecpe.u32      q5, q4
    vrecpe.u32      q6, q5
    vrecpe.u32      q7, q6
    vrecpe.u32      q8, q7
    vrecpe.u32      q9, q8
    vrecpe.u32      q10, q9
    vrecpe.u32      q11, q10

    // loop 4
    vrecpe.u32      q0, q11
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q1
    vrecpe.u32      q3, q2
    vrecpe.u32      q4, q3
    vrecpe.u32      q5, q4
    vrecpe.u32      q6, q5
    vrecpe.u32      q7, q6
    vrecpe.u32      q8, q7
    vrecpe.u32      q9, q8
    vrecpe.u32      q10, q9
    vrecpe.u32      q11, q10

    // loop 5
    vrecpe.u32      q0, q11
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q1
    vrecpe.u32      q3, q2
    vrecpe.u32      q4, q3
    vrecpe.u32      q5, q4
    vrecpe.u32      q6, q5
    vrecpe.u32      q7, q6
    vrecpe.u32      q8, q7
    vrecpe.u32      q9, q8
    vrecpe.u32      q10, q9
    vrecpe.u32      q11, q10

    subs    r0, r0, #1
    bne     vrecpeI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrecpeI4MaxTest:

    vpush.64        {d8-d15}

vrecpeI4MaxTest_LOOP:

    // loop 1
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q0
    vrecpe.u32      q3, q0
    vrecpe.u32      q4, q0
    vrecpe.u32      q5, q0
    vrecpe.u32      q6, q0
    vrecpe.u32      q7, q0
    vrecpe.u32      q8, q0
    vrecpe.u32      q9, q0
    vrecpe.u32      q10, q0
    vrecpe.u32      q11, q0
    vrecpe.u32      q12, q0

    // loop 2
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q0
    vrecpe.u32      q3, q0
    vrecpe.u32      q4, q0
    vrecpe.u32      q5, q0
    vrecpe.u32      q6, q0
    vrecpe.u32      q7, q0
    vrecpe.u32      q8, q0
    vrecpe.u32      q9, q0
    vrecpe.u32      q10, q0
    vrecpe.u32      q11, q0
    vrecpe.u32      q12, q0

    // loop 3
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q0
    vrecpe.u32      q3, q0
    vrecpe.u32      q4, q0
    vrecpe.u32      q5, q0
    vrecpe.u32      q6, q0
    vrecpe.u32      q7, q0
    vrecpe.u32      q8, q0
    vrecpe.u32      q9, q0
    vrecpe.u32      q10, q0
    vrecpe.u32      q11, q0
    vrecpe.u32      q12, q0

    // loop 4
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q0
    vrecpe.u32      q3, q0
    vrecpe.u32      q4, q0
    vrecpe.u32      q5, q0
    vrecpe.u32      q6, q0
    vrecpe.u32      q7, q0
    vrecpe.u32      q8, q0
    vrecpe.u32      q9, q0
    vrecpe.u32      q10, q0
    vrecpe.u32      q11, q0
    vrecpe.u32      q12, q0

    // loop 5
    vrecpe.u32      q1, q0
    vrecpe.u32      q2, q0
    vrecpe.u32      q3, q0
    vrecpe.u32      q4, q0
    vrecpe.u32      q5, q0
    vrecpe.u32      q6, q0
    vrecpe.u32      q7, q0
    vrecpe.u32      q8, q0
    vrecpe.u32      q9, q0
    vrecpe.u32      q10, q0
    vrecpe.u32      q11, q0
    vrecpe.u32      q12, q0

    subs    r0, r0, #1
    bne     vrecpeI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrecpeF4MinTest:

    vpush.64        {d8-d15}

vrecpeF4MinTest_LOOP:

    // loop 1
    vrecpe.f32      q0, q11
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q1
    vrecpe.f32      q3, q2
    vrecpe.f32      q4, q3
    vrecpe.f32      q5, q4
    vrecpe.f32      q6, q5
    vrecpe.f32      q7, q6
    vrecpe.f32      q8, q7
    vrecpe.f32      q9, q8
    vrecpe.f32      q10, q9
    vrecpe.f32      q11, q10

    // loop 2
    vrecpe.f32      q0, q11
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q1
    vrecpe.f32      q3, q2
    vrecpe.f32      q4, q3
    vrecpe.f32      q5, q4
    vrecpe.f32      q6, q5
    vrecpe.f32      q7, q6
    vrecpe.f32      q8, q7
    vrecpe.f32      q9, q8
    vrecpe.f32      q10, q9
    vrecpe.f32      q11, q10

    // loop 3
    vrecpe.f32      q0, q11
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q1
    vrecpe.f32      q3, q2
    vrecpe.f32      q4, q3
    vrecpe.f32      q5, q4
    vrecpe.f32      q6, q5
    vrecpe.f32      q7, q6
    vrecpe.f32      q8, q7
    vrecpe.f32      q9, q8
    vrecpe.f32      q10, q9
    vrecpe.f32      q11, q10

    // loop 4
    vrecpe.f32      q0, q11
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q1
    vrecpe.f32      q3, q2
    vrecpe.f32      q4, q3
    vrecpe.f32      q5, q4
    vrecpe.f32      q6, q5
    vrecpe.f32      q7, q6
    vrecpe.f32      q8, q7
    vrecpe.f32      q9, q8
    vrecpe.f32      q10, q9
    vrecpe.f32      q11, q10

    // loop 5
    vrecpe.f32      q0, q11
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q1
    vrecpe.f32      q3, q2
    vrecpe.f32      q4, q3
    vrecpe.f32      q5, q4
    vrecpe.f32      q6, q5
    vrecpe.f32      q7, q6
    vrecpe.f32      q8, q7
    vrecpe.f32      q9, q8
    vrecpe.f32      q10, q9
    vrecpe.f32      q11, q10

    subs    r0, r0, #1
    bne     vrecpeF4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrecpeF4MaxTest:

    vpush.64        {d8-d15}

vrecpeF4MaxTest_LOOP:

    // loop 1
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q0
    vrecpe.f32      q3, q0
    vrecpe.f32      q4, q0
    vrecpe.f32      q5, q0
    vrecpe.f32      q6, q0
    vrecpe.f32      q7, q0
    vrecpe.f32      q8, q0
    vrecpe.f32      q9, q0
    vrecpe.f32      q10, q0
    vrecpe.f32      q11, q0
    vrecpe.f32      q12, q0

    // loop 2
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q0
    vrecpe.f32      q3, q0
    vrecpe.f32      q4, q0
    vrecpe.f32      q5, q0
    vrecpe.f32      q6, q0
    vrecpe.f32      q7, q0
    vrecpe.f32      q8, q0
    vrecpe.f32      q9, q0
    vrecpe.f32      q10, q0
    vrecpe.f32      q11, q0
    vrecpe.f32      q12, q0

    // loop 3
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q0
    vrecpe.f32      q3, q0
    vrecpe.f32      q4, q0
    vrecpe.f32      q5, q0
    vrecpe.f32      q6, q0
    vrecpe.f32      q7, q0
    vrecpe.f32      q8, q0
    vrecpe.f32      q9, q0
    vrecpe.f32      q10, q0
    vrecpe.f32      q11, q0
    vrecpe.f32      q12, q0

    // loop 4
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q0
    vrecpe.f32      q3, q0
    vrecpe.f32      q4, q0
    vrecpe.f32      q5, q0
    vrecpe.f32      q6, q0
    vrecpe.f32      q7, q0
    vrecpe.f32      q8, q0
    vrecpe.f32      q9, q0
    vrecpe.f32      q10, q0
    vrecpe.f32      q11, q0
    vrecpe.f32      q12, q0

    // loop 5
    vrecpe.f32      q1, q0
    vrecpe.f32      q2, q0
    vrecpe.f32      q3, q0
    vrecpe.f32      q4, q0
    vrecpe.f32      q5, q0
    vrecpe.f32      q6, q0
    vrecpe.f32      q7, q0
    vrecpe.f32      q8, q0
    vrecpe.f32      q9, q0
    vrecpe.f32      q10, q0
    vrecpe.f32      q11, q0
    vrecpe.f32      q12, q0

    subs    r0, r0, #1
    bne     vrecpeF4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrecpsF4MinTest:

    vpush.64        {d8-d15}

vrecpsF4MinTest_LOOP:

    // loop 1
    vrecps.f32      q0, q0, q11
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q1
    vrecps.f32      q3, q3, q2
    vrecps.f32      q4, q4, q3
    vrecps.f32      q5, q5, q4
    vrecps.f32      q6, q6, q5
    vrecps.f32      q7, q7, q6
    vrecps.f32      q8, q8, q7
    vrecps.f32      q9, q9, q8
    vrecps.f32      q10, q10, q9
    vrecps.f32      q11, q11, q10

    // loop 2
    vrecps.f32      q0, q0, q11
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q1
    vrecps.f32      q3, q3, q2
    vrecps.f32      q4, q4, q3
    vrecps.f32      q5, q5, q4
    vrecps.f32      q6, q6, q5
    vrecps.f32      q7, q7, q6
    vrecps.f32      q8, q8, q7
    vrecps.f32      q9, q9, q8
    vrecps.f32      q10, q10, q9
    vrecps.f32      q11, q11, q10

    // loop 3
    vrecps.f32      q0, q0, q11
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q1
    vrecps.f32      q3, q3, q2
    vrecps.f32      q4, q4, q3
    vrecps.f32      q5, q5, q4
    vrecps.f32      q6, q6, q5
    vrecps.f32      q7, q7, q6
    vrecps.f32      q8, q8, q7
    vrecps.f32      q9, q9, q8
    vrecps.f32      q10, q10, q9
    vrecps.f32      q11, q11, q10

    // loop 4
    vrecps.f32      q0, q0, q11
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q1
    vrecps.f32      q3, q3, q2
    vrecps.f32      q4, q4, q3
    vrecps.f32      q5, q5, q4
    vrecps.f32      q6, q6, q5
    vrecps.f32      q7, q7, q6
    vrecps.f32      q8, q8, q7
    vrecps.f32      q9, q9, q8
    vrecps.f32      q10, q10, q9
    vrecps.f32      q11, q11, q10

    // loop 5
    vrecps.f32      q0, q0, q11
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q1
    vrecps.f32      q3, q3, q2
    vrecps.f32      q4, q4, q3
    vrecps.f32      q5, q5, q4
    vrecps.f32      q6, q6, q5
    vrecps.f32      q7, q7, q6
    vrecps.f32      q8, q8, q7
    vrecps.f32      q9, q9, q8
    vrecps.f32      q10, q10, q9
    vrecps.f32      q11, q11, q10

    subs    r0, r0, #1
    bne     vrecpsF4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrecpsF4MaxTest:

    vpush.64        {d8-d15}

vrecpsF4MaxTest_LOOP:

    // loop 1
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q0
    vrecps.f32      q3, q3, q0
    vrecps.f32      q4, q4, q0
    vrecps.f32      q5, q5, q0
    vrecps.f32      q6, q6, q0
    vrecps.f32      q7, q7, q0
    vrecps.f32      q8, q8, q0
    vrecps.f32      q9, q9, q0
    vrecps.f32      q10, q10, q0
    vrecps.f32      q11, q11, q0
    vrecps.f32      q12, q12, q0

    // loop 2
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q0
    vrecps.f32      q3, q3, q0
    vrecps.f32      q4, q4, q0
    vrecps.f32      q5, q5, q0
    vrecps.f32      q6, q6, q0
    vrecps.f32      q7, q7, q0
    vrecps.f32      q8, q8, q0
    vrecps.f32      q9, q9, q0
    vrecps.f32      q10, q10, q0
    vrecps.f32      q11, q11, q0
    vrecps.f32      q12, q12, q0

    // loop 3
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q0
    vrecps.f32      q3, q3, q0
    vrecps.f32      q4, q4, q0
    vrecps.f32      q5, q5, q0
    vrecps.f32      q6, q6, q0
    vrecps.f32      q7, q7, q0
    vrecps.f32      q8, q8, q0
    vrecps.f32      q9, q9, q0
    vrecps.f32      q10, q10, q0
    vrecps.f32      q11, q11, q0
    vrecps.f32      q12, q12, q0

    // loop 4
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q0
    vrecps.f32      q3, q3, q0
    vrecps.f32      q4, q4, q0
    vrecps.f32      q5, q5, q0
    vrecps.f32      q6, q6, q0
    vrecps.f32      q7, q7, q0
    vrecps.f32      q8, q8, q0
    vrecps.f32      q9, q9, q0
    vrecps.f32      q10, q10, q0
    vrecps.f32      q11, q11, q0
    vrecps.f32      q12, q12, q0

    // loop 5
    vrecps.f32      q1, q1, q0
    vrecps.f32      q2, q2, q0
    vrecps.f32      q3, q3, q0
    vrecps.f32      q4, q4, q0
    vrecps.f32      q5, q5, q0
    vrecps.f32      q6, q6, q0
    vrecps.f32      q7, q7, q0
    vrecps.f32      q8, q8, q0
    vrecps.f32      q9, q9, q0
    vrecps.f32      q10, q10, q0
    vrecps.f32      q11, q11, q0
    vrecps.f32      q12, q12, q0

    subs    r0, r0, #1
    bne     vrecpsF4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrev16MinTest:

    vpush.64        {d8-d15}

vrev16MinTest_LOOP:

    // loop 1
    vrev16.8        q0, q11
    vrev16.8        q1, q0
    vrev16.8        q2, q1
    vrev16.8        q3, q2
    vrev16.8        q4, q3
    vrev16.8        q5, q4
    vrev16.8        q6, q5
    vrev16.8        q7, q6
    vrev16.8        q8, q7
    vrev16.8        q9, q8
    vrev16.8        q10, q9
    vrev16.8        q11, q10

    // loop 2
    vrev16.8        q0, q11
    vrev16.8        q1, q0
    vrev16.8        q2, q1
    vrev16.8        q3, q2
    vrev16.8        q4, q3
    vrev16.8        q5, q4
    vrev16.8        q6, q5
    vrev16.8        q7, q6
    vrev16.8        q8, q7
    vrev16.8        q9, q8
    vrev16.8        q10, q9
    vrev16.8        q11, q10

    // loop 3
    vrev16.8        q0, q11
    vrev16.8        q1, q0
    vrev16.8        q2, q1
    vrev16.8        q3, q2
    vrev16.8        q4, q3
    vrev16.8        q5, q4
    vrev16.8        q6, q5
    vrev16.8        q7, q6
    vrev16.8        q8, q7
    vrev16.8        q9, q8
    vrev16.8        q10, q9
    vrev16.8        q11, q10

    // loop 4
    vrev16.8        q0, q11
    vrev16.8        q1, q0
    vrev16.8        q2, q1
    vrev16.8        q3, q2
    vrev16.8        q4, q3
    vrev16.8        q5, q4
    vrev16.8        q6, q5
    vrev16.8        q7, q6
    vrev16.8        q8, q7
    vrev16.8        q9, q8
    vrev16.8        q10, q9
    vrev16.8        q11, q10

    // loop 5
    vrev16.8        q0, q11
    vrev16.8        q1, q0
    vrev16.8        q2, q1
    vrev16.8        q3, q2
    vrev16.8        q4, q3
    vrev16.8        q5, q4
    vrev16.8        q6, q5
    vrev16.8        q7, q6
    vrev16.8        q8, q7
    vrev16.8        q9, q8
    vrev16.8        q10, q9
    vrev16.8        q11, q10

    subs    r0, r0, #1
    bne     vrev16MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrev16MaxTest:

    vpush.64        {d8-d15}

vrev16MaxTest_LOOP:

    // loop 1
    vrev16.8        q1, q0
    vrev16.8        q2, q0
    vrev16.8        q3, q0
    vrev16.8        q4, q0
    vrev16.8        q5, q0
    vrev16.8        q6, q0
    vrev16.8        q7, q0
    vrev16.8        q8, q0
    vrev16.8        q9, q0
    vrev16.8        q10, q0
    vrev16.8        q11, q0
    vrev16.8        q12, q0

    // loop 2
    vrev16.8        q1, q0
    vrev16.8        q2, q0
    vrev16.8        q3, q0
    vrev16.8        q4, q0
    vrev16.8        q5, q0
    vrev16.8        q6, q0
    vrev16.8        q7, q0
    vrev16.8        q8, q0
    vrev16.8        q9, q0
    vrev16.8        q10, q0
    vrev16.8        q11, q0
    vrev16.8        q12, q0

    // loop 3
    vrev16.8        q1, q0
    vrev16.8        q2, q0
    vrev16.8        q3, q0
    vrev16.8        q4, q0
    vrev16.8        q5, q0
    vrev16.8        q6, q0
    vrev16.8        q7, q0
    vrev16.8        q8, q0
    vrev16.8        q9, q0
    vrev16.8        q10, q0
    vrev16.8        q11, q0
    vrev16.8        q12, q0

    // loop 4
    vrev16.8        q1, q0
    vrev16.8        q2, q0
    vrev16.8        q3, q0
    vrev16.8        q4, q0
    vrev16.8        q5, q0
    vrev16.8        q6, q0
    vrev16.8        q7, q0
    vrev16.8        q8, q0
    vrev16.8        q9, q0
    vrev16.8        q10, q0
    vrev16.8        q11, q0
    vrev16.8        q12, q0

    // loop 5
    vrev16.8        q1, q0
    vrev16.8        q2, q0
    vrev16.8        q3, q0
    vrev16.8        q4, q0
    vrev16.8        q5, q0
    vrev16.8        q6, q0
    vrev16.8        q7, q0
    vrev16.8        q8, q0
    vrev16.8        q9, q0
    vrev16.8        q10, q0
    vrev16.8        q11, q0
    vrev16.8        q12, q0

    subs    r0, r0, #1
    bne     vrev16MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrev32MinTest:

    vpush.64        {d8-d15}

vrev32MinTest_LOOP:

    // loop 1
    vrev32.8        q0, q11
    vrev32.8        q1, q0
    vrev32.8        q2, q1
    vrev32.8        q3, q2
    vrev32.8        q4, q3
    vrev32.8        q5, q4
    vrev32.8        q6, q5
    vrev32.8        q7, q6
    vrev32.8        q8, q7
    vrev32.8        q9, q8
    vrev32.8        q10, q9
    vrev32.8        q11, q10

    // loop 2
    vrev32.8        q0, q11
    vrev32.8        q1, q0
    vrev32.8        q2, q1
    vrev32.8        q3, q2
    vrev32.8        q4, q3
    vrev32.8        q5, q4
    vrev32.8        q6, q5
    vrev32.8        q7, q6
    vrev32.8        q8, q7
    vrev32.8        q9, q8
    vrev32.8        q10, q9
    vrev32.8        q11, q10

    // loop 3
    vrev32.8        q0, q11
    vrev32.8        q1, q0
    vrev32.8        q2, q1
    vrev32.8        q3, q2
    vrev32.8        q4, q3
    vrev32.8        q5, q4
    vrev32.8        q6, q5
    vrev32.8        q7, q6
    vrev32.8        q8, q7
    vrev32.8        q9, q8
    vrev32.8        q10, q9
    vrev32.8        q11, q10

    // loop 4
    vrev32.8        q0, q11
    vrev32.8        q1, q0
    vrev32.8        q2, q1
    vrev32.8        q3, q2
    vrev32.8        q4, q3
    vrev32.8        q5, q4
    vrev32.8        q6, q5
    vrev32.8        q7, q6
    vrev32.8        q8, q7
    vrev32.8        q9, q8
    vrev32.8        q10, q9
    vrev32.8        q11, q10

    // loop 5
    vrev32.8        q0, q11
    vrev32.8        q1, q0
    vrev32.8        q2, q1
    vrev32.8        q3, q2
    vrev32.8        q4, q3
    vrev32.8        q5, q4
    vrev32.8        q6, q5
    vrev32.8        q7, q6
    vrev32.8        q8, q7
    vrev32.8        q9, q8
    vrev32.8        q10, q9
    vrev32.8        q11, q10

    subs    r0, r0, #1
    bne     vrev32MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrev32MaxTest:

    vpush.64        {d8-d15}

vrev32MaxTest_LOOP:

    // loop 1
    vrev32.8        q1, q0
    vrev32.8        q2, q0
    vrev32.8        q3, q0
    vrev32.8        q4, q0
    vrev32.8        q5, q0
    vrev32.8        q6, q0
    vrev32.8        q7, q0
    vrev32.8        q8, q0
    vrev32.8        q9, q0
    vrev32.8        q10, q0
    vrev32.8        q11, q0
    vrev32.8        q12, q0

    // loop 2
    vrev32.8        q1, q0
    vrev32.8        q2, q0
    vrev32.8        q3, q0
    vrev32.8        q4, q0
    vrev32.8        q5, q0
    vrev32.8        q6, q0
    vrev32.8        q7, q0
    vrev32.8        q8, q0
    vrev32.8        q9, q0
    vrev32.8        q10, q0
    vrev32.8        q11, q0
    vrev32.8        q12, q0

    // loop 3
    vrev32.8        q1, q0
    vrev32.8        q2, q0
    vrev32.8        q3, q0
    vrev32.8        q4, q0
    vrev32.8        q5, q0
    vrev32.8        q6, q0
    vrev32.8        q7, q0
    vrev32.8        q8, q0
    vrev32.8        q9, q0
    vrev32.8        q10, q0
    vrev32.8        q11, q0
    vrev32.8        q12, q0

    // loop 4
    vrev32.8        q1, q0
    vrev32.8        q2, q0
    vrev32.8        q3, q0
    vrev32.8        q4, q0
    vrev32.8        q5, q0
    vrev32.8        q6, q0
    vrev32.8        q7, q0
    vrev32.8        q8, q0
    vrev32.8        q9, q0
    vrev32.8        q10, q0
    vrev32.8        q11, q0
    vrev32.8        q12, q0

    // loop 5
    vrev32.8        q1, q0
    vrev32.8        q2, q0
    vrev32.8        q3, q0
    vrev32.8        q4, q0
    vrev32.8        q5, q0
    vrev32.8        q6, q0
    vrev32.8        q7, q0
    vrev32.8        q8, q0
    vrev32.8        q9, q0
    vrev32.8        q10, q0
    vrev32.8        q11, q0
    vrev32.8        q12, q0

    subs    r0, r0, #1
    bne     vrev32MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrev64MinTest:

    vpush.64        {d8-d15}

vrev64MinTest_LOOP:

    // loop 1
    vrev64.8        q0, q11
    vrev64.8        q1, q0
    vrev64.8        q2, q1
    vrev64.8        q3, q2
    vrev64.8        q4, q3
    vrev64.8        q5, q4
    vrev64.8        q6, q5
    vrev64.8        q7, q6
    vrev64.8        q8, q7
    vrev64.8        q9, q8
    vrev64.8        q10, q9
    vrev64.8        q11, q10

    // loop 2
    vrev64.8        q0, q11
    vrev64.8        q1, q0
    vrev64.8        q2, q1
    vrev64.8        q3, q2
    vrev64.8        q4, q3
    vrev64.8        q5, q4
    vrev64.8        q6, q5
    vrev64.8        q7, q6
    vrev64.8        q8, q7
    vrev64.8        q9, q8
    vrev64.8        q10, q9
    vrev64.8        q11, q10

    // loop 3
    vrev64.8        q0, q11
    vrev64.8        q1, q0
    vrev64.8        q2, q1
    vrev64.8        q3, q2
    vrev64.8        q4, q3
    vrev64.8        q5, q4
    vrev64.8        q6, q5
    vrev64.8        q7, q6
    vrev64.8        q8, q7
    vrev64.8        q9, q8
    vrev64.8        q10, q9
    vrev64.8        q11, q10

    // loop 4
    vrev64.8        q0, q11
    vrev64.8        q1, q0
    vrev64.8        q2, q1
    vrev64.8        q3, q2
    vrev64.8        q4, q3
    vrev64.8        q5, q4
    vrev64.8        q6, q5
    vrev64.8        q7, q6
    vrev64.8        q8, q7
    vrev64.8        q9, q8
    vrev64.8        q10, q9
    vrev64.8        q11, q10

    // loop 5
    vrev64.8        q0, q11
    vrev64.8        q1, q0
    vrev64.8        q2, q1
    vrev64.8        q3, q2
    vrev64.8        q4, q3
    vrev64.8        q5, q4
    vrev64.8        q6, q5
    vrev64.8        q7, q6
    vrev64.8        q8, q7
    vrev64.8        q9, q8
    vrev64.8        q10, q9
    vrev64.8        q11, q10

    subs    r0, r0, #1
    bne     vrev64MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrev64MaxTest:

    vpush.64        {d8-d15}

vrev64MaxTest_LOOP:

    // loop 1
    vrev64.8        q1, q0
    vrev64.8        q2, q0
    vrev64.8        q3, q0
    vrev64.8        q4, q0
    vrev64.8        q5, q0
    vrev64.8        q6, q0
    vrev64.8        q7, q0
    vrev64.8        q8, q0
    vrev64.8        q9, q0
    vrev64.8        q10, q0
    vrev64.8        q11, q0
    vrev64.8        q12, q0

    // loop 2
    vrev64.8        q1, q0
    vrev64.8        q2, q0
    vrev64.8        q3, q0
    vrev64.8        q4, q0
    vrev64.8        q5, q0
    vrev64.8        q6, q0
    vrev64.8        q7, q0
    vrev64.8        q8, q0
    vrev64.8        q9, q0
    vrev64.8        q10, q0
    vrev64.8        q11, q0
    vrev64.8        q12, q0

    // loop 3
    vrev64.8        q1, q0
    vrev64.8        q2, q0
    vrev64.8        q3, q0
    vrev64.8        q4, q0
    vrev64.8        q5, q0
    vrev64.8        q6, q0
    vrev64.8        q7, q0
    vrev64.8        q8, q0
    vrev64.8        q9, q0
    vrev64.8        q10, q0
    vrev64.8        q11, q0
    vrev64.8        q12, q0

    // loop 4
    vrev64.8        q1, q0
    vrev64.8        q2, q0
    vrev64.8        q3, q0
    vrev64.8        q4, q0
    vrev64.8        q5, q0
    vrev64.8        q6, q0
    vrev64.8        q7, q0
    vrev64.8        q8, q0
    vrev64.8        q9, q0
    vrev64.8        q10, q0
    vrev64.8        q11, q0
    vrev64.8        q12, q0

    // loop 5
    vrev64.8        q1, q0
    vrev64.8        q2, q0
    vrev64.8        q3, q0
    vrev64.8        q4, q0
    vrev64.8        q5, q0
    vrev64.8        q6, q0
    vrev64.8        q7, q0
    vrev64.8        q8, q0
    vrev64.8        q9, q0
    vrev64.8        q10, q0
    vrev64.8        q11, q0
    vrev64.8        q12, q0

    subs    r0, r0, #1
    bne     vrev64MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrhaddI4MinTest:

    vpush.64        {d8-d15}

vrhaddI4MinTest_LOOP:

    // loop 1
    vrhadd.s32      q0, q0, q11
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q1
    vrhadd.s32      q3, q3, q2
    vrhadd.s32      q4, q4, q3
    vrhadd.s32      q5, q5, q4
    vrhadd.s32      q6, q6, q5
    vrhadd.s32      q7, q7, q6
    vrhadd.s32      q8, q8, q7
    vrhadd.s32      q9, q9, q8
    vrhadd.s32      q10, q10, q9
    vrhadd.s32      q11, q11, q10

    // loop 2
    vrhadd.s32      q0, q0, q11
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q1
    vrhadd.s32      q3, q3, q2
    vrhadd.s32      q4, q4, q3
    vrhadd.s32      q5, q5, q4
    vrhadd.s32      q6, q6, q5
    vrhadd.s32      q7, q7, q6
    vrhadd.s32      q8, q8, q7
    vrhadd.s32      q9, q9, q8
    vrhadd.s32      q10, q10, q9
    vrhadd.s32      q11, q11, q10

    // loop 3
    vrhadd.s32      q0, q0, q11
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q1
    vrhadd.s32      q3, q3, q2
    vrhadd.s32      q4, q4, q3
    vrhadd.s32      q5, q5, q4
    vrhadd.s32      q6, q6, q5
    vrhadd.s32      q7, q7, q6
    vrhadd.s32      q8, q8, q7
    vrhadd.s32      q9, q9, q8
    vrhadd.s32      q10, q10, q9
    vrhadd.s32      q11, q11, q10

    // loop 4
    vrhadd.s32      q0, q0, q11
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q1
    vrhadd.s32      q3, q3, q2
    vrhadd.s32      q4, q4, q3
    vrhadd.s32      q5, q5, q4
    vrhadd.s32      q6, q6, q5
    vrhadd.s32      q7, q7, q6
    vrhadd.s32      q8, q8, q7
    vrhadd.s32      q9, q9, q8
    vrhadd.s32      q10, q10, q9
    vrhadd.s32      q11, q11, q10

    // loop 5
    vrhadd.s32      q0, q0, q11
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q1
    vrhadd.s32      q3, q3, q2
    vrhadd.s32      q4, q4, q3
    vrhadd.s32      q5, q5, q4
    vrhadd.s32      q6, q6, q5
    vrhadd.s32      q7, q7, q6
    vrhadd.s32      q8, q8, q7
    vrhadd.s32      q9, q9, q8
    vrhadd.s32      q10, q10, q9
    vrhadd.s32      q11, q11, q10

    subs    r0, r0, #1
    bne     vrhaddI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrhaddI4MaxTest:

    vpush.64        {d8-d15}

vrhaddI4MaxTest_LOOP:

    // loop 1
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q0
    vrhadd.s32      q3, q3, q0
    vrhadd.s32      q4, q4, q0
    vrhadd.s32      q5, q5, q0
    vrhadd.s32      q6, q6, q0
    vrhadd.s32      q7, q7, q0
    vrhadd.s32      q8, q8, q0
    vrhadd.s32      q9, q9, q0
    vrhadd.s32      q10, q10, q0
    vrhadd.s32      q11, q11, q0
    vrhadd.s32      q12, q12, q0

    // loop 2
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q0
    vrhadd.s32      q3, q3, q0
    vrhadd.s32      q4, q4, q0
    vrhadd.s32      q5, q5, q0
    vrhadd.s32      q6, q6, q0
    vrhadd.s32      q7, q7, q0
    vrhadd.s32      q8, q8, q0
    vrhadd.s32      q9, q9, q0
    vrhadd.s32      q10, q10, q0
    vrhadd.s32      q11, q11, q0
    vrhadd.s32      q12, q12, q0

    // loop 3
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q0
    vrhadd.s32      q3, q3, q0
    vrhadd.s32      q4, q4, q0
    vrhadd.s32      q5, q5, q0
    vrhadd.s32      q6, q6, q0
    vrhadd.s32      q7, q7, q0
    vrhadd.s32      q8, q8, q0
    vrhadd.s32      q9, q9, q0
    vrhadd.s32      q10, q10, q0
    vrhadd.s32      q11, q11, q0
    vrhadd.s32      q12, q12, q0

    // loop 4
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q0
    vrhadd.s32      q3, q3, q0
    vrhadd.s32      q4, q4, q0
    vrhadd.s32      q5, q5, q0
    vrhadd.s32      q6, q6, q0
    vrhadd.s32      q7, q7, q0
    vrhadd.s32      q8, q8, q0
    vrhadd.s32      q9, q9, q0
    vrhadd.s32      q10, q10, q0
    vrhadd.s32      q11, q11, q0
    vrhadd.s32      q12, q12, q0

    // loop 5
    vrhadd.s32      q1, q1, q0
    vrhadd.s32      q2, q2, q0
    vrhadd.s32      q3, q3, q0
    vrhadd.s32      q4, q4, q0
    vrhadd.s32      q5, q5, q0
    vrhadd.s32      q6, q6, q0
    vrhadd.s32      q7, q7, q0
    vrhadd.s32      q8, q8, q0
    vrhadd.s32      q9, q9, q0
    vrhadd.s32      q10, q10, q0
    vrhadd.s32      q11, q11, q0
    vrhadd.s32      q12, q12, q0

    subs    r0, r0, #1
    bne     vrhaddI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrshlI4MinTest:

    vpush.64        {d8-d15}

vrshlI4MinTest_LOOP:

    // loop 1
    vrshl.s32       q0, q0, q11
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q1
    vrshl.s32       q3, q3, q2
    vrshl.s32       q4, q4, q3
    vrshl.s32       q5, q5, q4
    vrshl.s32       q6, q6, q5
    vrshl.s32       q7, q7, q6
    vrshl.s32       q8, q8, q7
    vrshl.s32       q9, q9, q8
    vrshl.s32       q10, q10, q9
    vrshl.s32       q11, q11, q10

    // loop 2
    vrshl.s32       q0, q0, q11
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q1
    vrshl.s32       q3, q3, q2
    vrshl.s32       q4, q4, q3
    vrshl.s32       q5, q5, q4
    vrshl.s32       q6, q6, q5
    vrshl.s32       q7, q7, q6
    vrshl.s32       q8, q8, q7
    vrshl.s32       q9, q9, q8
    vrshl.s32       q10, q10, q9
    vrshl.s32       q11, q11, q10

    // loop 3
    vrshl.s32       q0, q0, q11
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q1
    vrshl.s32       q3, q3, q2
    vrshl.s32       q4, q4, q3
    vrshl.s32       q5, q5, q4
    vrshl.s32       q6, q6, q5
    vrshl.s32       q7, q7, q6
    vrshl.s32       q8, q8, q7
    vrshl.s32       q9, q9, q8
    vrshl.s32       q10, q10, q9
    vrshl.s32       q11, q11, q10

    // loop 4
    vrshl.s32       q0, q0, q11
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q1
    vrshl.s32       q3, q3, q2
    vrshl.s32       q4, q4, q3
    vrshl.s32       q5, q5, q4
    vrshl.s32       q6, q6, q5
    vrshl.s32       q7, q7, q6
    vrshl.s32       q8, q8, q7
    vrshl.s32       q9, q9, q8
    vrshl.s32       q10, q10, q9
    vrshl.s32       q11, q11, q10

    // loop 5
    vrshl.s32       q0, q0, q11
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q1
    vrshl.s32       q3, q3, q2
    vrshl.s32       q4, q4, q3
    vrshl.s32       q5, q5, q4
    vrshl.s32       q6, q6, q5
    vrshl.s32       q7, q7, q6
    vrshl.s32       q8, q8, q7
    vrshl.s32       q9, q9, q8
    vrshl.s32       q10, q10, q9
    vrshl.s32       q11, q11, q10

    subs    r0, r0, #1
    bne     vrshlI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrshlI4MaxTest:

    vpush.64        {d8-d15}

vrshlI4MaxTest_LOOP:

    // loop 1
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q0
    vrshl.s32       q3, q3, q0
    vrshl.s32       q4, q4, q0
    vrshl.s32       q5, q5, q0
    vrshl.s32       q6, q6, q0
    vrshl.s32       q7, q7, q0
    vrshl.s32       q8, q8, q0
    vrshl.s32       q9, q9, q0
    vrshl.s32       q10, q10, q0
    vrshl.s32       q11, q11, q0
    vrshl.s32       q12, q12, q0

    // loop 2
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q0
    vrshl.s32       q3, q3, q0
    vrshl.s32       q4, q4, q0
    vrshl.s32       q5, q5, q0
    vrshl.s32       q6, q6, q0
    vrshl.s32       q7, q7, q0
    vrshl.s32       q8, q8, q0
    vrshl.s32       q9, q9, q0
    vrshl.s32       q10, q10, q0
    vrshl.s32       q11, q11, q0
    vrshl.s32       q12, q12, q0

    // loop 3
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q0
    vrshl.s32       q3, q3, q0
    vrshl.s32       q4, q4, q0
    vrshl.s32       q5, q5, q0
    vrshl.s32       q6, q6, q0
    vrshl.s32       q7, q7, q0
    vrshl.s32       q8, q8, q0
    vrshl.s32       q9, q9, q0
    vrshl.s32       q10, q10, q0
    vrshl.s32       q11, q11, q0
    vrshl.s32       q12, q12, q0

    // loop 4
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q0
    vrshl.s32       q3, q3, q0
    vrshl.s32       q4, q4, q0
    vrshl.s32       q5, q5, q0
    vrshl.s32       q6, q6, q0
    vrshl.s32       q7, q7, q0
    vrshl.s32       q8, q8, q0
    vrshl.s32       q9, q9, q0
    vrshl.s32       q10, q10, q0
    vrshl.s32       q11, q11, q0
    vrshl.s32       q12, q12, q0

    // loop 5
    vrshl.s32       q1, q1, q0
    vrshl.s32       q2, q2, q0
    vrshl.s32       q3, q3, q0
    vrshl.s32       q4, q4, q0
    vrshl.s32       q5, q5, q0
    vrshl.s32       q6, q6, q0
    vrshl.s32       q7, q7, q0
    vrshl.s32       q8, q8, q0
    vrshl.s32       q9, q9, q0
    vrshl.s32       q10, q10, q0
    vrshl.s32       q11, q11, q0
    vrshl.s32       q12, q12, q0

    subs    r0, r0, #1
    bne     vrshlI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrshrI4MinTest:

    vpush.64        {d8-d15}

vrshrI4MinTest_LOOP:

    // loop 1
    vrshr.s32       q0, q11, #1
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q1, #3
    vrshr.s32       q3, q2, #4
    vrshr.s32       q4, q3, #5
    vrshr.s32       q5, q4, #6
    vrshr.s32       q6, q5, #7
    vrshr.s32       q7, q6, #8
    vrshr.s32       q8, q7, #9
    vrshr.s32       q9, q8, #10
    vrshr.s32       q10, q9, #11
    vrshr.s32       q11, q10, #12

    // loop 2
    vrshr.s32       q0, q11, #1
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q1, #3
    vrshr.s32       q3, q2, #4
    vrshr.s32       q4, q3, #5
    vrshr.s32       q5, q4, #6
    vrshr.s32       q6, q5, #7
    vrshr.s32       q7, q6, #8
    vrshr.s32       q8, q7, #9
    vrshr.s32       q9, q8, #10
    vrshr.s32       q10, q9, #11
    vrshr.s32       q11, q10, #12

    // loop 3
    vrshr.s32       q0, q11, #1
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q1, #3
    vrshr.s32       q3, q2, #4
    vrshr.s32       q4, q3, #5
    vrshr.s32       q5, q4, #6
    vrshr.s32       q6, q5, #7
    vrshr.s32       q7, q6, #8
    vrshr.s32       q8, q7, #9
    vrshr.s32       q9, q8, #10
    vrshr.s32       q10, q9, #11
    vrshr.s32       q11, q10, #12

    // loop 4
    vrshr.s32       q0, q11, #1
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q1, #3
    vrshr.s32       q3, q2, #4
    vrshr.s32       q4, q3, #5
    vrshr.s32       q5, q4, #6
    vrshr.s32       q6, q5, #7
    vrshr.s32       q7, q6, #8
    vrshr.s32       q8, q7, #9
    vrshr.s32       q9, q8, #10
    vrshr.s32       q10, q9, #11
    vrshr.s32       q11, q10, #12

    // loop 5
    vrshr.s32       q0, q11, #1
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q1, #3
    vrshr.s32       q3, q2, #4
    vrshr.s32       q4, q3, #5
    vrshr.s32       q5, q4, #6
    vrshr.s32       q6, q5, #7
    vrshr.s32       q7, q6, #8
    vrshr.s32       q8, q7, #9
    vrshr.s32       q9, q8, #10
    vrshr.s32       q10, q9, #11
    vrshr.s32       q11, q10, #12

    subs    r0, r0, #1
    bne     vrshrI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrshrI4MaxTest:

    vpush.64        {d8-d15}

vrshrI4MaxTest_LOOP:

    // loop 1
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q0, #3
    vrshr.s32       q3, q0, #4
    vrshr.s32       q4, q0, #5
    vrshr.s32       q5, q0, #6
    vrshr.s32       q6, q0, #7
    vrshr.s32       q7, q0, #8
    vrshr.s32       q8, q0, #9
    vrshr.s32       q9, q0, #10
    vrshr.s32       q10, q0, #11
    vrshr.s32       q11, q0, #12
    vrshr.s32       q12, q0, #13

    // loop 2
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q0, #3
    vrshr.s32       q3, q0, #4
    vrshr.s32       q4, q0, #5
    vrshr.s32       q5, q0, #6
    vrshr.s32       q6, q0, #7
    vrshr.s32       q7, q0, #8
    vrshr.s32       q8, q0, #9
    vrshr.s32       q9, q0, #10
    vrshr.s32       q10, q0, #11
    vrshr.s32       q11, q0, #12
    vrshr.s32       q12, q0, #13

    // loop 3
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q0, #3
    vrshr.s32       q3, q0, #4
    vrshr.s32       q4, q0, #5
    vrshr.s32       q5, q0, #6
    vrshr.s32       q6, q0, #7
    vrshr.s32       q7, q0, #8
    vrshr.s32       q8, q0, #9
    vrshr.s32       q9, q0, #10
    vrshr.s32       q10, q0, #11
    vrshr.s32       q11, q0, #12
    vrshr.s32       q12, q0, #13

    // loop 4
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q0, #3
    vrshr.s32       q3, q0, #4
    vrshr.s32       q4, q0, #5
    vrshr.s32       q5, q0, #6
    vrshr.s32       q6, q0, #7
    vrshr.s32       q7, q0, #8
    vrshr.s32       q8, q0, #9
    vrshr.s32       q9, q0, #10
    vrshr.s32       q10, q0, #11
    vrshr.s32       q11, q0, #12
    vrshr.s32       q12, q0, #13

    // loop 5
    vrshr.s32       q1, q0, #2
    vrshr.s32       q2, q0, #3
    vrshr.s32       q3, q0, #4
    vrshr.s32       q4, q0, #5
    vrshr.s32       q5, q0, #6
    vrshr.s32       q6, q0, #7
    vrshr.s32       q7, q0, #8
    vrshr.s32       q8, q0, #9
    vrshr.s32       q9, q0, #10
    vrshr.s32       q10, q0, #11
    vrshr.s32       q11, q0, #12
    vrshr.s32       q12, q0, #13

    subs    r0, r0, #1
    bne     vrshrI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrshrnI4MinTest:

    vpush.64        {d8-d15}

vrshrnI4MinTest_LOOP:

    // loop 1
    vrshrn.i32      d0, q11, #1
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q1, #3
    vrshrn.i32      d6, q2, #4
    vrshrn.i32      d8, q3, #5
    vrshrn.i32      d10, q4, #6
    vrshrn.i32      d12, q5, #7
    vrshrn.i32      d14, q6, #8
    vrshrn.i32      d16, q7, #9
    vrshrn.i32      d18, q8, #10
    vrshrn.i32      d20, q9, #11
    vrshrn.i32      d22, q10, #12

    // loop 2
    vrshrn.i32      d0, q11, #1
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q1, #3
    vrshrn.i32      d6, q2, #4
    vrshrn.i32      d8, q3, #5
    vrshrn.i32      d10, q4, #6
    vrshrn.i32      d12, q5, #7
    vrshrn.i32      d14, q6, #8
    vrshrn.i32      d16, q7, #9
    vrshrn.i32      d18, q8, #10
    vrshrn.i32      d20, q9, #11
    vrshrn.i32      d22, q10, #12

    // loop 3
    vrshrn.i32      d0, q11, #1
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q1, #3
    vrshrn.i32      d6, q2, #4
    vrshrn.i32      d8, q3, #5
    vrshrn.i32      d10, q4, #6
    vrshrn.i32      d12, q5, #7
    vrshrn.i32      d14, q6, #8
    vrshrn.i32      d16, q7, #9
    vrshrn.i32      d18, q8, #10
    vrshrn.i32      d20, q9, #11
    vrshrn.i32      d22, q10, #12

    // loop 4
    vrshrn.i32      d0, q11, #1
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q1, #3
    vrshrn.i32      d6, q2, #4
    vrshrn.i32      d8, q3, #5
    vrshrn.i32      d10, q4, #6
    vrshrn.i32      d12, q5, #7
    vrshrn.i32      d14, q6, #8
    vrshrn.i32      d16, q7, #9
    vrshrn.i32      d18, q8, #10
    vrshrn.i32      d20, q9, #11
    vrshrn.i32      d22, q10, #12

    // loop 5
    vrshrn.i32      d0, q11, #1
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q1, #3
    vrshrn.i32      d6, q2, #4
    vrshrn.i32      d8, q3, #5
    vrshrn.i32      d10, q4, #6
    vrshrn.i32      d12, q5, #7
    vrshrn.i32      d14, q6, #8
    vrshrn.i32      d16, q7, #9
    vrshrn.i32      d18, q8, #10
    vrshrn.i32      d20, q9, #11
    vrshrn.i32      d22, q10, #12

    subs    r0, r0, #1
    bne     vrshrnI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrshrnI4MaxTest:

    vpush.64        {d8-d15}

vrshrnI4MaxTest_LOOP:

    // loop 1
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q0, #3
    vrshrn.i32      d6, q0, #4
    vrshrn.i32      d8, q0, #5
    vrshrn.i32      d10, q0, #6
    vrshrn.i32      d12, q0, #7
    vrshrn.i32      d14, q0, #8
    vrshrn.i32      d16, q0, #9
    vrshrn.i32      d18, q0, #10
    vrshrn.i32      d20, q0, #11
    vrshrn.i32      d22, q0, #12
    vrshrn.i32      d24, q0, #13

    // loop 2
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q0, #3
    vrshrn.i32      d6, q0, #4
    vrshrn.i32      d8, q0, #5
    vrshrn.i32      d10, q0, #6
    vrshrn.i32      d12, q0, #7
    vrshrn.i32      d14, q0, #8
    vrshrn.i32      d16, q0, #9
    vrshrn.i32      d18, q0, #10
    vrshrn.i32      d20, q0, #11
    vrshrn.i32      d22, q0, #12
    vrshrn.i32      d24, q0, #13

    // loop 3
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q0, #3
    vrshrn.i32      d6, q0, #4
    vrshrn.i32      d8, q0, #5
    vrshrn.i32      d10, q0, #6
    vrshrn.i32      d12, q0, #7
    vrshrn.i32      d14, q0, #8
    vrshrn.i32      d16, q0, #9
    vrshrn.i32      d18, q0, #10
    vrshrn.i32      d20, q0, #11
    vrshrn.i32      d22, q0, #12
    vrshrn.i32      d24, q0, #13

    // loop 4
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q0, #3
    vrshrn.i32      d6, q0, #4
    vrshrn.i32      d8, q0, #5
    vrshrn.i32      d10, q0, #6
    vrshrn.i32      d12, q0, #7
    vrshrn.i32      d14, q0, #8
    vrshrn.i32      d16, q0, #9
    vrshrn.i32      d18, q0, #10
    vrshrn.i32      d20, q0, #11
    vrshrn.i32      d22, q0, #12
    vrshrn.i32      d24, q0, #13

    // loop 5
    vrshrn.i32      d2, q0, #2
    vrshrn.i32      d4, q0, #3
    vrshrn.i32      d6, q0, #4
    vrshrn.i32      d8, q0, #5
    vrshrn.i32      d10, q0, #6
    vrshrn.i32      d12, q0, #7
    vrshrn.i32      d14, q0, #8
    vrshrn.i32      d16, q0, #9
    vrshrn.i32      d18, q0, #10
    vrshrn.i32      d20, q0, #11
    vrshrn.i32      d22, q0, #12
    vrshrn.i32      d24, q0, #13

    subs    r0, r0, #1
    bne     vrshrnI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrsqrteI4MinTest:

    vpush.64        {d8-d15}

vrsqrteI4MinTest_LOOP:

    // loop 1
    vrsqrte.u32     q0, q11
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q1
    vrsqrte.u32     q3, q2
    vrsqrte.u32     q4, q3
    vrsqrte.u32     q5, q4
    vrsqrte.u32     q6, q5
    vrsqrte.u32     q7, q6
    vrsqrte.u32     q8, q7
    vrsqrte.u32     q9, q8
    vrsqrte.u32     q10, q9
    vrsqrte.u32     q11, q10

    // loop 2
    vrsqrte.u32     q0, q11
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q1
    vrsqrte.u32     q3, q2
    vrsqrte.u32     q4, q3
    vrsqrte.u32     q5, q4
    vrsqrte.u32     q6, q5
    vrsqrte.u32     q7, q6
    vrsqrte.u32     q8, q7
    vrsqrte.u32     q9, q8
    vrsqrte.u32     q10, q9
    vrsqrte.u32     q11, q10

    // loop 3
    vrsqrte.u32     q0, q11
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q1
    vrsqrte.u32     q3, q2
    vrsqrte.u32     q4, q3
    vrsqrte.u32     q5, q4
    vrsqrte.u32     q6, q5
    vrsqrte.u32     q7, q6
    vrsqrte.u32     q8, q7
    vrsqrte.u32     q9, q8
    vrsqrte.u32     q10, q9
    vrsqrte.u32     q11, q10

    // loop 4
    vrsqrte.u32     q0, q11
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q1
    vrsqrte.u32     q3, q2
    vrsqrte.u32     q4, q3
    vrsqrte.u32     q5, q4
    vrsqrte.u32     q6, q5
    vrsqrte.u32     q7, q6
    vrsqrte.u32     q8, q7
    vrsqrte.u32     q9, q8
    vrsqrte.u32     q10, q9
    vrsqrte.u32     q11, q10

    // loop 5
    vrsqrte.u32     q0, q11
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q1
    vrsqrte.u32     q3, q2
    vrsqrte.u32     q4, q3
    vrsqrte.u32     q5, q4
    vrsqrte.u32     q6, q5
    vrsqrte.u32     q7, q6
    vrsqrte.u32     q8, q7
    vrsqrte.u32     q9, q8
    vrsqrte.u32     q10, q9
    vrsqrte.u32     q11, q10

    subs    r0, r0, #1
    bne     vrsqrteI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrsqrteI4MaxTest:

    vpush.64        {d8-d15}

vrsqrteI4MaxTest_LOOP:

    // loop 1
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q0
    vrsqrte.u32     q3, q0
    vrsqrte.u32     q4, q0
    vrsqrte.u32     q5, q0
    vrsqrte.u32     q6, q0
    vrsqrte.u32     q7, q0
    vrsqrte.u32     q8, q0
    vrsqrte.u32     q9, q0
    vrsqrte.u32     q10, q0
    vrsqrte.u32     q11, q0
    vrsqrte.u32     q12, q0

    // loop 2
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q0
    vrsqrte.u32     q3, q0
    vrsqrte.u32     q4, q0
    vrsqrte.u32     q5, q0
    vrsqrte.u32     q6, q0
    vrsqrte.u32     q7, q0
    vrsqrte.u32     q8, q0
    vrsqrte.u32     q9, q0
    vrsqrte.u32     q10, q0
    vrsqrte.u32     q11, q0
    vrsqrte.u32     q12, q0

    // loop 3
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q0
    vrsqrte.u32     q3, q0
    vrsqrte.u32     q4, q0
    vrsqrte.u32     q5, q0
    vrsqrte.u32     q6, q0
    vrsqrte.u32     q7, q0
    vrsqrte.u32     q8, q0
    vrsqrte.u32     q9, q0
    vrsqrte.u32     q10, q0
    vrsqrte.u32     q11, q0
    vrsqrte.u32     q12, q0

    // loop 4
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q0
    vrsqrte.u32     q3, q0
    vrsqrte.u32     q4, q0
    vrsqrte.u32     q5, q0
    vrsqrte.u32     q6, q0
    vrsqrte.u32     q7, q0
    vrsqrte.u32     q8, q0
    vrsqrte.u32     q9, q0
    vrsqrte.u32     q10, q0
    vrsqrte.u32     q11, q0
    vrsqrte.u32     q12, q0

    // loop 5
    vrsqrte.u32     q1, q0
    vrsqrte.u32     q2, q0
    vrsqrte.u32     q3, q0
    vrsqrte.u32     q4, q0
    vrsqrte.u32     q5, q0
    vrsqrte.u32     q6, q0
    vrsqrte.u32     q7, q0
    vrsqrte.u32     q8, q0
    vrsqrte.u32     q9, q0
    vrsqrte.u32     q10, q0
    vrsqrte.u32     q11, q0
    vrsqrte.u32     q12, q0

    subs    r0, r0, #1
    bne     vrsqrteI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrsqrteF4MinTest:

    vpush.64        {d8-d15}

vrsqrteF4MinTest_LOOP:

    // loop 1
    vrsqrte.f32     q0, q11
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q1
    vrsqrte.f32     q3, q2
    vrsqrte.f32     q4, q3
    vrsqrte.f32     q5, q4
    vrsqrte.f32     q6, q5
    vrsqrte.f32     q7, q6
    vrsqrte.f32     q8, q7
    vrsqrte.f32     q9, q8
    vrsqrte.f32     q10, q9
    vrsqrte.f32     q11, q10

    // loop 2
    vrsqrte.f32     q0, q11
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q1
    vrsqrte.f32     q3, q2
    vrsqrte.f32     q4, q3
    vrsqrte.f32     q5, q4
    vrsqrte.f32     q6, q5
    vrsqrte.f32     q7, q6
    vrsqrte.f32     q8, q7
    vrsqrte.f32     q9, q8
    vrsqrte.f32     q10, q9
    vrsqrte.f32     q11, q10

    // loop 3
    vrsqrte.f32     q0, q11
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q1
    vrsqrte.f32     q3, q2
    vrsqrte.f32     q4, q3
    vrsqrte.f32     q5, q4
    vrsqrte.f32     q6, q5
    vrsqrte.f32     q7, q6
    vrsqrte.f32     q8, q7
    vrsqrte.f32     q9, q8
    vrsqrte.f32     q10, q9
    vrsqrte.f32     q11, q10

    // loop 4
    vrsqrte.f32     q0, q11
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q1
    vrsqrte.f32     q3, q2
    vrsqrte.f32     q4, q3
    vrsqrte.f32     q5, q4
    vrsqrte.f32     q6, q5
    vrsqrte.f32     q7, q6
    vrsqrte.f32     q8, q7
    vrsqrte.f32     q9, q8
    vrsqrte.f32     q10, q9
    vrsqrte.f32     q11, q10

    // loop 5
    vrsqrte.f32     q0, q11
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q1
    vrsqrte.f32     q3, q2
    vrsqrte.f32     q4, q3
    vrsqrte.f32     q5, q4
    vrsqrte.f32     q6, q5
    vrsqrte.f32     q7, q6
    vrsqrte.f32     q8, q7
    vrsqrte.f32     q9, q8
    vrsqrte.f32     q10, q9
    vrsqrte.f32     q11, q10

    subs    r0, r0, #1
    bne     vrsqrteF4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrsqrteF4MaxTest:

    vpush.64        {d8-d15}

vrsqrteF4MaxTest_LOOP:

    // loop 1
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q0
    vrsqrte.f32     q3, q0
    vrsqrte.f32     q4, q0
    vrsqrte.f32     q5, q0
    vrsqrte.f32     q6, q0
    vrsqrte.f32     q7, q0
    vrsqrte.f32     q8, q0
    vrsqrte.f32     q9, q0
    vrsqrte.f32     q10, q0
    vrsqrte.f32     q11, q0
    vrsqrte.f32     q12, q0

    // loop 2
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q0
    vrsqrte.f32     q3, q0
    vrsqrte.f32     q4, q0
    vrsqrte.f32     q5, q0
    vrsqrte.f32     q6, q0
    vrsqrte.f32     q7, q0
    vrsqrte.f32     q8, q0
    vrsqrte.f32     q9, q0
    vrsqrte.f32     q10, q0
    vrsqrte.f32     q11, q0
    vrsqrte.f32     q12, q0

    // loop 3
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q0
    vrsqrte.f32     q3, q0
    vrsqrte.f32     q4, q0
    vrsqrte.f32     q5, q0
    vrsqrte.f32     q6, q0
    vrsqrte.f32     q7, q0
    vrsqrte.f32     q8, q0
    vrsqrte.f32     q9, q0
    vrsqrte.f32     q10, q0
    vrsqrte.f32     q11, q0
    vrsqrte.f32     q12, q0

    // loop 4
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q0
    vrsqrte.f32     q3, q0
    vrsqrte.f32     q4, q0
    vrsqrte.f32     q5, q0
    vrsqrte.f32     q6, q0
    vrsqrte.f32     q7, q0
    vrsqrte.f32     q8, q0
    vrsqrte.f32     q9, q0
    vrsqrte.f32     q10, q0
    vrsqrte.f32     q11, q0
    vrsqrte.f32     q12, q0

    // loop 5
    vrsqrte.f32     q1, q0
    vrsqrte.f32     q2, q0
    vrsqrte.f32     q3, q0
    vrsqrte.f32     q4, q0
    vrsqrte.f32     q5, q0
    vrsqrte.f32     q6, q0
    vrsqrte.f32     q7, q0
    vrsqrte.f32     q8, q0
    vrsqrte.f32     q9, q0
    vrsqrte.f32     q10, q0
    vrsqrte.f32     q11, q0
    vrsqrte.f32     q12, q0

    subs    r0, r0, #1
    bne     vrsqrteF4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrsqrtsF4MinTest:

    vpush.64        {d8-d15}

vrsqrtsF4MinTest_LOOP:

    // loop 1
    vrsqrts.f32     q0, q0, q11
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q1
    vrsqrts.f32     q3, q3, q2
    vrsqrts.f32     q4, q4, q3
    vrsqrts.f32     q5, q5, q4
    vrsqrts.f32     q6, q6, q5
    vrsqrts.f32     q7, q7, q6
    vrsqrts.f32     q8, q8, q7
    vrsqrts.f32     q9, q9, q8
    vrsqrts.f32     q10, q10, q9
    vrsqrts.f32     q11, q11, q10

    // loop 2
    vrsqrts.f32     q0, q0, q11
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q1
    vrsqrts.f32     q3, q3, q2
    vrsqrts.f32     q4, q4, q3
    vrsqrts.f32     q5, q5, q4
    vrsqrts.f32     q6, q6, q5
    vrsqrts.f32     q7, q7, q6
    vrsqrts.f32     q8, q8, q7
    vrsqrts.f32     q9, q9, q8
    vrsqrts.f32     q10, q10, q9
    vrsqrts.f32     q11, q11, q10

    // loop 3
    vrsqrts.f32     q0, q0, q11
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q1
    vrsqrts.f32     q3, q3, q2
    vrsqrts.f32     q4, q4, q3
    vrsqrts.f32     q5, q5, q4
    vrsqrts.f32     q6, q6, q5
    vrsqrts.f32     q7, q7, q6
    vrsqrts.f32     q8, q8, q7
    vrsqrts.f32     q9, q9, q8
    vrsqrts.f32     q10, q10, q9
    vrsqrts.f32     q11, q11, q10

    // loop 4
    vrsqrts.f32     q0, q0, q11
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q1
    vrsqrts.f32     q3, q3, q2
    vrsqrts.f32     q4, q4, q3
    vrsqrts.f32     q5, q5, q4
    vrsqrts.f32     q6, q6, q5
    vrsqrts.f32     q7, q7, q6
    vrsqrts.f32     q8, q8, q7
    vrsqrts.f32     q9, q9, q8
    vrsqrts.f32     q10, q10, q9
    vrsqrts.f32     q11, q11, q10

    // loop 5
    vrsqrts.f32     q0, q0, q11
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q1
    vrsqrts.f32     q3, q3, q2
    vrsqrts.f32     q4, q4, q3
    vrsqrts.f32     q5, q5, q4
    vrsqrts.f32     q6, q6, q5
    vrsqrts.f32     q7, q7, q6
    vrsqrts.f32     q8, q8, q7
    vrsqrts.f32     q9, q9, q8
    vrsqrts.f32     q10, q10, q9
    vrsqrts.f32     q11, q11, q10

    subs    r0, r0, #1
    bne     vrsqrtsF4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrsqrtsF4MaxTest:

    vpush.64        {d8-d15}

vrsqrtsF4MaxTest_LOOP:

    // loop 1
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q0
    vrsqrts.f32     q3, q3, q0
    vrsqrts.f32     q4, q4, q0
    vrsqrts.f32     q5, q5, q0
    vrsqrts.f32     q6, q6, q0
    vrsqrts.f32     q7, q7, q0
    vrsqrts.f32     q8, q8, q0
    vrsqrts.f32     q9, q9, q0
    vrsqrts.f32     q10, q10, q0
    vrsqrts.f32     q11, q11, q0
    vrsqrts.f32     q12, q12, q0

    // loop 2
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q0
    vrsqrts.f32     q3, q3, q0
    vrsqrts.f32     q4, q4, q0
    vrsqrts.f32     q5, q5, q0
    vrsqrts.f32     q6, q6, q0
    vrsqrts.f32     q7, q7, q0
    vrsqrts.f32     q8, q8, q0
    vrsqrts.f32     q9, q9, q0
    vrsqrts.f32     q10, q10, q0
    vrsqrts.f32     q11, q11, q0
    vrsqrts.f32     q12, q12, q0

    // loop 3
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q0
    vrsqrts.f32     q3, q3, q0
    vrsqrts.f32     q4, q4, q0
    vrsqrts.f32     q5, q5, q0
    vrsqrts.f32     q6, q6, q0
    vrsqrts.f32     q7, q7, q0
    vrsqrts.f32     q8, q8, q0
    vrsqrts.f32     q9, q9, q0
    vrsqrts.f32     q10, q10, q0
    vrsqrts.f32     q11, q11, q0
    vrsqrts.f32     q12, q12, q0

    // loop 4
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q0
    vrsqrts.f32     q3, q3, q0
    vrsqrts.f32     q4, q4, q0
    vrsqrts.f32     q5, q5, q0
    vrsqrts.f32     q6, q6, q0
    vrsqrts.f32     q7, q7, q0
    vrsqrts.f32     q8, q8, q0
    vrsqrts.f32     q9, q9, q0
    vrsqrts.f32     q10, q10, q0
    vrsqrts.f32     q11, q11, q0
    vrsqrts.f32     q12, q12, q0

    // loop 5
    vrsqrts.f32     q1, q1, q0
    vrsqrts.f32     q2, q2, q0
    vrsqrts.f32     q3, q3, q0
    vrsqrts.f32     q4, q4, q0
    vrsqrts.f32     q5, q5, q0
    vrsqrts.f32     q6, q6, q0
    vrsqrts.f32     q7, q7, q0
    vrsqrts.f32     q8, q8, q0
    vrsqrts.f32     q9, q9, q0
    vrsqrts.f32     q10, q10, q0
    vrsqrts.f32     q11, q11, q0
    vrsqrts.f32     q12, q12, q0

    subs    r0, r0, #1
    bne     vrsqrtsF4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrsraI4MinTest:

    vpush.64        {d8-d15}

vrsraI4MinTest_LOOP:

    // loop 1
    vrsra.s32       q0, q11, #1
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q1, #3
    vrsra.s32       q3, q2, #4
    vrsra.s32       q4, q3, #5
    vrsra.s32       q5, q4, #6
    vrsra.s32       q6, q5, #7
    vrsra.s32       q7, q6, #8
    vrsra.s32       q8, q7, #9
    vrsra.s32       q9, q8, #10
    vrsra.s32       q10, q9, #11
    vrsra.s32       q11, q10, #12

    // loop 2
    vrsra.s32       q0, q11, #1
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q1, #3
    vrsra.s32       q3, q2, #4
    vrsra.s32       q4, q3, #5
    vrsra.s32       q5, q4, #6
    vrsra.s32       q6, q5, #7
    vrsra.s32       q7, q6, #8
    vrsra.s32       q8, q7, #9
    vrsra.s32       q9, q8, #10
    vrsra.s32       q10, q9, #11
    vrsra.s32       q11, q10, #12

    // loop 3
    vrsra.s32       q0, q11, #1
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q1, #3
    vrsra.s32       q3, q2, #4
    vrsra.s32       q4, q3, #5
    vrsra.s32       q5, q4, #6
    vrsra.s32       q6, q5, #7
    vrsra.s32       q7, q6, #8
    vrsra.s32       q8, q7, #9
    vrsra.s32       q9, q8, #10
    vrsra.s32       q10, q9, #11
    vrsra.s32       q11, q10, #12

    // loop 4
    vrsra.s32       q0, q11, #1
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q1, #3
    vrsra.s32       q3, q2, #4
    vrsra.s32       q4, q3, #5
    vrsra.s32       q5, q4, #6
    vrsra.s32       q6, q5, #7
    vrsra.s32       q7, q6, #8
    vrsra.s32       q8, q7, #9
    vrsra.s32       q9, q8, #10
    vrsra.s32       q10, q9, #11
    vrsra.s32       q11, q10, #12

    // loop 5
    vrsra.s32       q0, q11, #1
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q1, #3
    vrsra.s32       q3, q2, #4
    vrsra.s32       q4, q3, #5
    vrsra.s32       q5, q4, #6
    vrsra.s32       q6, q5, #7
    vrsra.s32       q7, q6, #8
    vrsra.s32       q8, q7, #9
    vrsra.s32       q9, q8, #10
    vrsra.s32       q10, q9, #11
    vrsra.s32       q11, q10, #12

    subs    r0, r0, #1
    bne     vrsraI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrsraI4MaxTest:

    vpush.64        {d8-d15}

vrsraI4MaxTest_LOOP:

    // loop 1
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q0, #3
    vrsra.s32       q3, q0, #4
    vrsra.s32       q4, q0, #5
    vrsra.s32       q5, q0, #6
    vrsra.s32       q6, q0, #7
    vrsra.s32       q7, q0, #8
    vrsra.s32       q8, q0, #9
    vrsra.s32       q9, q0, #10
    vrsra.s32       q10, q0, #11
    vrsra.s32       q11, q0, #12
    vrsra.s32       q12, q0, #13

    // loop 2
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q0, #3
    vrsra.s32       q3, q0, #4
    vrsra.s32       q4, q0, #5
    vrsra.s32       q5, q0, #6
    vrsra.s32       q6, q0, #7
    vrsra.s32       q7, q0, #8
    vrsra.s32       q8, q0, #9
    vrsra.s32       q9, q0, #10
    vrsra.s32       q10, q0, #11
    vrsra.s32       q11, q0, #12
    vrsra.s32       q12, q0, #13

    // loop 3
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q0, #3
    vrsra.s32       q3, q0, #4
    vrsra.s32       q4, q0, #5
    vrsra.s32       q5, q0, #6
    vrsra.s32       q6, q0, #7
    vrsra.s32       q7, q0, #8
    vrsra.s32       q8, q0, #9
    vrsra.s32       q9, q0, #10
    vrsra.s32       q10, q0, #11
    vrsra.s32       q11, q0, #12
    vrsra.s32       q12, q0, #13

    // loop 4
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q0, #3
    vrsra.s32       q3, q0, #4
    vrsra.s32       q4, q0, #5
    vrsra.s32       q5, q0, #6
    vrsra.s32       q6, q0, #7
    vrsra.s32       q7, q0, #8
    vrsra.s32       q8, q0, #9
    vrsra.s32       q9, q0, #10
    vrsra.s32       q10, q0, #11
    vrsra.s32       q11, q0, #12
    vrsra.s32       q12, q0, #13

    // loop 5
    vrsra.s32       q1, q0, #2
    vrsra.s32       q2, q0, #3
    vrsra.s32       q3, q0, #4
    vrsra.s32       q4, q0, #5
    vrsra.s32       q5, q0, #6
    vrsra.s32       q6, q0, #7
    vrsra.s32       q7, q0, #8
    vrsra.s32       q8, q0, #9
    vrsra.s32       q9, q0, #10
    vrsra.s32       q10, q0, #11
    vrsra.s32       q11, q0, #12
    vrsra.s32       q12, q0, #13

    subs    r0, r0, #1
    bne     vrsraI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vrsubhnI4MinTest:

    vpush.64        {d8-d15}

vrsubhnI4MinTest_LOOP:

    // loop 1
    vrsubhn.i32     d0, q0, q11
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q1
    vrsubhn.i32     d6, q3, q2
    vrsubhn.i32     d8, q4, q3
    vrsubhn.i32     d10, q5, q4
    vrsubhn.i32     d12, q6, q5
    vrsubhn.i32     d14, q7, q6
    vrsubhn.i32     d16, q8, q7
    vrsubhn.i32     d18, q9, q8
    vrsubhn.i32     d20, q10, q9
    vrsubhn.i32     d22, q11, q10

    // loop 2
    vrsubhn.i32     d0, q0, q11
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q1
    vrsubhn.i32     d6, q3, q2
    vrsubhn.i32     d8, q4, q3
    vrsubhn.i32     d10, q5, q4
    vrsubhn.i32     d12, q6, q5
    vrsubhn.i32     d14, q7, q6
    vrsubhn.i32     d16, q8, q7
    vrsubhn.i32     d18, q9, q8
    vrsubhn.i32     d20, q10, q9
    vrsubhn.i32     d22, q11, q10

    // loop 3
    vrsubhn.i32     d0, q0, q11
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q1
    vrsubhn.i32     d6, q3, q2
    vrsubhn.i32     d8, q4, q3
    vrsubhn.i32     d10, q5, q4
    vrsubhn.i32     d12, q6, q5
    vrsubhn.i32     d14, q7, q6
    vrsubhn.i32     d16, q8, q7
    vrsubhn.i32     d18, q9, q8
    vrsubhn.i32     d20, q10, q9
    vrsubhn.i32     d22, q11, q10

    // loop 4
    vrsubhn.i32     d0, q0, q11
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q1
    vrsubhn.i32     d6, q3, q2
    vrsubhn.i32     d8, q4, q3
    vrsubhn.i32     d10, q5, q4
    vrsubhn.i32     d12, q6, q5
    vrsubhn.i32     d14, q7, q6
    vrsubhn.i32     d16, q8, q7
    vrsubhn.i32     d18, q9, q8
    vrsubhn.i32     d20, q10, q9
    vrsubhn.i32     d22, q11, q10

    // loop 5
    vrsubhn.i32     d0, q0, q11
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q1
    vrsubhn.i32     d6, q3, q2
    vrsubhn.i32     d8, q4, q3
    vrsubhn.i32     d10, q5, q4
    vrsubhn.i32     d12, q6, q5
    vrsubhn.i32     d14, q7, q6
    vrsubhn.i32     d16, q8, q7
    vrsubhn.i32     d18, q9, q8
    vrsubhn.i32     d20, q10, q9
    vrsubhn.i32     d22, q11, q10

    subs    r0, r0, #1
    bne     vrsubhnI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vrsubhnI4MaxTest:

    vpush.64        {d8-d15}

vrsubhnI4MaxTest_LOOP:

    // loop 1
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q0
    vrsubhn.i32     d6, q3, q0
    vrsubhn.i32     d8, q4, q0
    vrsubhn.i32     d10, q5, q0
    vrsubhn.i32     d12, q6, q0
    vrsubhn.i32     d14, q7, q0
    vrsubhn.i32     d16, q8, q0
    vrsubhn.i32     d18, q9, q0
    vrsubhn.i32     d20, q10, q0
    vrsubhn.i32     d22, q11, q0
    vrsubhn.i32     d24, q12, q0

    // loop 2
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q0
    vrsubhn.i32     d6, q3, q0
    vrsubhn.i32     d8, q4, q0
    vrsubhn.i32     d10, q5, q0
    vrsubhn.i32     d12, q6, q0
    vrsubhn.i32     d14, q7, q0
    vrsubhn.i32     d16, q8, q0
    vrsubhn.i32     d18, q9, q0
    vrsubhn.i32     d20, q10, q0
    vrsubhn.i32     d22, q11, q0
    vrsubhn.i32     d24, q12, q0

    // loop 3
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q0
    vrsubhn.i32     d6, q3, q0
    vrsubhn.i32     d8, q4, q0
    vrsubhn.i32     d10, q5, q0
    vrsubhn.i32     d12, q6, q0
    vrsubhn.i32     d14, q7, q0
    vrsubhn.i32     d16, q8, q0
    vrsubhn.i32     d18, q9, q0
    vrsubhn.i32     d20, q10, q0
    vrsubhn.i32     d22, q11, q0
    vrsubhn.i32     d24, q12, q0

    // loop 4
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q0
    vrsubhn.i32     d6, q3, q0
    vrsubhn.i32     d8, q4, q0
    vrsubhn.i32     d10, q5, q0
    vrsubhn.i32     d12, q6, q0
    vrsubhn.i32     d14, q7, q0
    vrsubhn.i32     d16, q8, q0
    vrsubhn.i32     d18, q9, q0
    vrsubhn.i32     d20, q10, q0
    vrsubhn.i32     d22, q11, q0
    vrsubhn.i32     d24, q12, q0

    // loop 5
    vrsubhn.i32     d2, q1, q0
    vrsubhn.i32     d4, q2, q0
    vrsubhn.i32     d6, q3, q0
    vrsubhn.i32     d8, q4, q0
    vrsubhn.i32     d10, q5, q0
    vrsubhn.i32     d12, q6, q0
    vrsubhn.i32     d14, q7, q0
    vrsubhn.i32     d16, q8, q0
    vrsubhn.i32     d18, q9, q0
    vrsubhn.i32     d20, q10, q0
    vrsubhn.i32     d22, q11, q0
    vrsubhn.i32     d24, q12, q0

    subs    r0, r0, #1
    bne     vrsubhnI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vshlImmMinTest:

    vpush.64        {d8-d15}

vshlImmMinTest_LOOP:

    // loop 1
    vshl.i32        q0, q11, #1
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q1, #3
    vshl.i32        q3, q2, #4
    vshl.i32        q4, q3, #5
    vshl.i32        q5, q4, #6
    vshl.i32        q6, q5, #7
    vshl.i32        q7, q6, #8
    vshl.i32        q8, q7, #9
    vshl.i32        q9, q8, #10
    vshl.i32        q10, q9, #11
    vshl.i32        q11, q10, #12

    // loop 2
    vshl.i32        q0, q11, #1
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q1, #3
    vshl.i32        q3, q2, #4
    vshl.i32        q4, q3, #5
    vshl.i32        q5, q4, #6
    vshl.i32        q6, q5, #7
    vshl.i32        q7, q6, #8
    vshl.i32        q8, q7, #9
    vshl.i32        q9, q8, #10
    vshl.i32        q10, q9, #11
    vshl.i32        q11, q10, #12

    // loop 3
    vshl.i32        q0, q11, #1
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q1, #3
    vshl.i32        q3, q2, #4
    vshl.i32        q4, q3, #5
    vshl.i32        q5, q4, #6
    vshl.i32        q6, q5, #7
    vshl.i32        q7, q6, #8
    vshl.i32        q8, q7, #9
    vshl.i32        q9, q8, #10
    vshl.i32        q10, q9, #11
    vshl.i32        q11, q10, #12

    // loop 4
    vshl.i32        q0, q11, #1
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q1, #3
    vshl.i32        q3, q2, #4
    vshl.i32        q4, q3, #5
    vshl.i32        q5, q4, #6
    vshl.i32        q6, q5, #7
    vshl.i32        q7, q6, #8
    vshl.i32        q8, q7, #9
    vshl.i32        q9, q8, #10
    vshl.i32        q10, q9, #11
    vshl.i32        q11, q10, #12

    // loop 5
    vshl.i32        q0, q11, #1
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q1, #3
    vshl.i32        q3, q2, #4
    vshl.i32        q4, q3, #5
    vshl.i32        q5, q4, #6
    vshl.i32        q6, q5, #7
    vshl.i32        q7, q6, #8
    vshl.i32        q8, q7, #9
    vshl.i32        q9, q8, #10
    vshl.i32        q10, q9, #11
    vshl.i32        q11, q10, #12

    subs    r0, r0, #1
    bne     vshlImmMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vshlImmMaxTest:

    vpush.64        {d8-d15}

vshlImmMaxTest_LOOP:

    // loop 1
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q0, #3
    vshl.i32        q3, q0, #4
    vshl.i32        q4, q0, #5
    vshl.i32        q5, q0, #6
    vshl.i32        q6, q0, #7
    vshl.i32        q7, q0, #8
    vshl.i32        q8, q0, #9
    vshl.i32        q9, q0, #10
    vshl.i32        q10, q0, #11
    vshl.i32        q11, q0, #12
    vshl.i32        q12, q0, #13

    // loop 2
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q0, #3
    vshl.i32        q3, q0, #4
    vshl.i32        q4, q0, #5
    vshl.i32        q5, q0, #6
    vshl.i32        q6, q0, #7
    vshl.i32        q7, q0, #8
    vshl.i32        q8, q0, #9
    vshl.i32        q9, q0, #10
    vshl.i32        q10, q0, #11
    vshl.i32        q11, q0, #12
    vshl.i32        q12, q0, #13

    // loop 3
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q0, #3
    vshl.i32        q3, q0, #4
    vshl.i32        q4, q0, #5
    vshl.i32        q5, q0, #6
    vshl.i32        q6, q0, #7
    vshl.i32        q7, q0, #8
    vshl.i32        q8, q0, #9
    vshl.i32        q9, q0, #10
    vshl.i32        q10, q0, #11
    vshl.i32        q11, q0, #12
    vshl.i32        q12, q0, #13

    // loop 4
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q0, #3
    vshl.i32        q3, q0, #4
    vshl.i32        q4, q0, #5
    vshl.i32        q5, q0, #6
    vshl.i32        q6, q0, #7
    vshl.i32        q7, q0, #8
    vshl.i32        q8, q0, #9
    vshl.i32        q9, q0, #10
    vshl.i32        q10, q0, #11
    vshl.i32        q11, q0, #12
    vshl.i32        q12, q0, #13

    // loop 5
    vshl.i32        q1, q0, #2
    vshl.i32        q2, q0, #3
    vshl.i32        q3, q0, #4
    vshl.i32        q4, q0, #5
    vshl.i32        q5, q0, #6
    vshl.i32        q6, q0, #7
    vshl.i32        q7, q0, #8
    vshl.i32        q8, q0, #9
    vshl.i32        q9, q0, #10
    vshl.i32        q10, q0, #11
    vshl.i32        q11, q0, #12
    vshl.i32        q12, q0, #13

    subs    r0, r0, #1
    bne     vshlImmMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vshlMinTest:

    vpush.64        {d8-d15}

vshlMinTest_LOOP:

    // loop 1
    vshl.s32        q0, q0, q11
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q1
    vshl.s32        q3, q3, q2
    vshl.s32        q4, q4, q3
    vshl.s32        q5, q5, q4
    vshl.s32        q6, q6, q5
    vshl.s32        q7, q7, q6
    vshl.s32        q8, q8, q7
    vshl.s32        q9, q9, q8
    vshl.s32        q10, q10, q9
    vshl.s32        q11, q11, q10

    // loop 2
    vshl.s32        q0, q0, q11
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q1
    vshl.s32        q3, q3, q2
    vshl.s32        q4, q4, q3
    vshl.s32        q5, q5, q4
    vshl.s32        q6, q6, q5
    vshl.s32        q7, q7, q6
    vshl.s32        q8, q8, q7
    vshl.s32        q9, q9, q8
    vshl.s32        q10, q10, q9
    vshl.s32        q11, q11, q10

    // loop 3
    vshl.s32        q0, q0, q11
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q1
    vshl.s32        q3, q3, q2
    vshl.s32        q4, q4, q3
    vshl.s32        q5, q5, q4
    vshl.s32        q6, q6, q5
    vshl.s32        q7, q7, q6
    vshl.s32        q8, q8, q7
    vshl.s32        q9, q9, q8
    vshl.s32        q10, q10, q9
    vshl.s32        q11, q11, q10

    // loop 4
    vshl.s32        q0, q0, q11
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q1
    vshl.s32        q3, q3, q2
    vshl.s32        q4, q4, q3
    vshl.s32        q5, q5, q4
    vshl.s32        q6, q6, q5
    vshl.s32        q7, q7, q6
    vshl.s32        q8, q8, q7
    vshl.s32        q9, q9, q8
    vshl.s32        q10, q10, q9
    vshl.s32        q11, q11, q10

    // loop 5
    vshl.s32        q0, q0, q11
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q1
    vshl.s32        q3, q3, q2
    vshl.s32        q4, q4, q3
    vshl.s32        q5, q5, q4
    vshl.s32        q6, q6, q5
    vshl.s32        q7, q7, q6
    vshl.s32        q8, q8, q7
    vshl.s32        q9, q9, q8
    vshl.s32        q10, q10, q9
    vshl.s32        q11, q11, q10

    subs    r0, r0, #1
    bne     vshlMinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vshlMaxTest:

    vpush.64        {d8-d15}

vshlMaxTest_LOOP:

    // loop 1
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q0
    vshl.s32        q3, q3, q0
    vshl.s32        q4, q4, q0
    vshl.s32        q5, q5, q0
    vshl.s32        q6, q6, q0
    vshl.s32        q7, q7, q0
    vshl.s32        q8, q8, q0
    vshl.s32        q9, q9, q0
    vshl.s32        q10, q10, q0
    vshl.s32        q11, q11, q0
    vshl.s32        q12, q12, q0

    // loop 2
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q0
    vshl.s32        q3, q3, q0
    vshl.s32        q4, q4, q0
    vshl.s32        q5, q5, q0
    vshl.s32        q6, q6, q0
    vshl.s32        q7, q7, q0
    vshl.s32        q8, q8, q0
    vshl.s32        q9, q9, q0
    vshl.s32        q10, q10, q0
    vshl.s32        q11, q11, q0
    vshl.s32        q12, q12, q0

    // loop 3
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q0
    vshl.s32        q3, q3, q0
    vshl.s32        q4, q4, q0
    vshl.s32        q5, q5, q0
    vshl.s32        q6, q6, q0
    vshl.s32        q7, q7, q0
    vshl.s32        q8, q8, q0
    vshl.s32        q9, q9, q0
    vshl.s32        q10, q10, q0
    vshl.s32        q11, q11, q0
    vshl.s32        q12, q12, q0

    // loop 4
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q0
    vshl.s32        q3, q3, q0
    vshl.s32        q4, q4, q0
    vshl.s32        q5, q5, q0
    vshl.s32        q6, q6, q0
    vshl.s32        q7, q7, q0
    vshl.s32        q8, q8, q0
    vshl.s32        q9, q9, q0
    vshl.s32        q10, q10, q0
    vshl.s32        q11, q11, q0
    vshl.s32        q12, q12, q0

    // loop 5
    vshl.s32        q1, q1, q0
    vshl.s32        q2, q2, q0
    vshl.s32        q3, q3, q0
    vshl.s32        q4, q4, q0
    vshl.s32        q5, q5, q0
    vshl.s32        q6, q6, q0
    vshl.s32        q7, q7, q0
    vshl.s32        q8, q8, q0
    vshl.s32        q9, q9, q0
    vshl.s32        q10, q10, q0
    vshl.s32        q11, q11, q0
    vshl.s32        q12, q12, q0

    subs    r0, r0, #1
    bne     vshlMaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vshllI2MinTest:

    vpush.64        {d8-d15}

vshllI2MinTest_LOOP:

    // loop 1
    vshll.s32       q0, d22, #1
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d2, #3
    vshll.s32       q3, d4, #4
    vshll.s32       q4, d6, #5
    vshll.s32       q5, d8, #6
    vshll.s32       q6, d10, #7
    vshll.s32       q7, d12, #8
    vshll.s32       q8, d14, #9
    vshll.s32       q9, d16, #10
    vshll.s32       q10, d18, #11
    vshll.s32       q11, d20, #12

    // loop 2
    vshll.s32       q0, d22, #1
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d2, #3
    vshll.s32       q3, d4, #4
    vshll.s32       q4, d6, #5
    vshll.s32       q5, d8, #6
    vshll.s32       q6, d10, #7
    vshll.s32       q7, d12, #8
    vshll.s32       q8, d14, #9
    vshll.s32       q9, d16, #10
    vshll.s32       q10, d18, #11
    vshll.s32       q11, d20, #12

    // loop 3
    vshll.s32       q0, d22, #1
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d2, #3
    vshll.s32       q3, d4, #4
    vshll.s32       q4, d6, #5
    vshll.s32       q5, d8, #6
    vshll.s32       q6, d10, #7
    vshll.s32       q7, d12, #8
    vshll.s32       q8, d14, #9
    vshll.s32       q9, d16, #10
    vshll.s32       q10, d18, #11
    vshll.s32       q11, d20, #12

    // loop 4
    vshll.s32       q0, d22, #1
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d2, #3
    vshll.s32       q3, d4, #4
    vshll.s32       q4, d6, #5
    vshll.s32       q5, d8, #6
    vshll.s32       q6, d10, #7
    vshll.s32       q7, d12, #8
    vshll.s32       q8, d14, #9
    vshll.s32       q9, d16, #10
    vshll.s32       q10, d18, #11
    vshll.s32       q11, d20, #12

    // loop 5
    vshll.s32       q0, d22, #1
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d2, #3
    vshll.s32       q3, d4, #4
    vshll.s32       q4, d6, #5
    vshll.s32       q5, d8, #6
    vshll.s32       q6, d10, #7
    vshll.s32       q7, d12, #8
    vshll.s32       q8, d14, #9
    vshll.s32       q9, d16, #10
    vshll.s32       q10, d18, #11
    vshll.s32       q11, d20, #12

    subs    r0, r0, #1
    bne     vshllI2MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vshllI2MaxTest:

    vpush.64        {d8-d15}

vshllI2MaxTest_LOOP:

    // loop 1
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d0, #3
    vshll.s32       q3, d0, #4
    vshll.s32       q4, d0, #5
    vshll.s32       q5, d0, #6
    vshll.s32       q6, d0, #7
    vshll.s32       q7, d0, #8
    vshll.s32       q8, d0, #9
    vshll.s32       q9, d0, #10
    vshll.s32       q10, d0, #11
    vshll.s32       q11, d0, #12
    vshll.s32       q12, d0, #13

    // loop 2
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d0, #3
    vshll.s32       q3, d0, #4
    vshll.s32       q4, d0, #5
    vshll.s32       q5, d0, #6
    vshll.s32       q6, d0, #7
    vshll.s32       q7, d0, #8
    vshll.s32       q8, d0, #9
    vshll.s32       q9, d0, #10
    vshll.s32       q10, d0, #11
    vshll.s32       q11, d0, #12
    vshll.s32       q12, d0, #13

    // loop 3
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d0, #3
    vshll.s32       q3, d0, #4
    vshll.s32       q4, d0, #5
    vshll.s32       q5, d0, #6
    vshll.s32       q6, d0, #7
    vshll.s32       q7, d0, #8
    vshll.s32       q8, d0, #9
    vshll.s32       q9, d0, #10
    vshll.s32       q10, d0, #11
    vshll.s32       q11, d0, #12
    vshll.s32       q12, d0, #13

    // loop 4
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d0, #3
    vshll.s32       q3, d0, #4
    vshll.s32       q4, d0, #5
    vshll.s32       q5, d0, #6
    vshll.s32       q6, d0, #7
    vshll.s32       q7, d0, #8
    vshll.s32       q8, d0, #9
    vshll.s32       q9, d0, #10
    vshll.s32       q10, d0, #11
    vshll.s32       q11, d0, #12
    vshll.s32       q12, d0, #13

    // loop 5
    vshll.s32       q1, d0, #2
    vshll.s32       q2, d0, #3
    vshll.s32       q3, d0, #4
    vshll.s32       q4, d0, #5
    vshll.s32       q5, d0, #6
    vshll.s32       q6, d0, #7
    vshll.s32       q7, d0, #8
    vshll.s32       q8, d0, #9
    vshll.s32       q9, d0, #10
    vshll.s32       q10, d0, #11
    vshll.s32       q11, d0, #12
    vshll.s32       q12, d0, #13

    subs    r0, r0, #1
    bne     vshllI2MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vshrI4MinTest:

    vpush.64        {d8-d15}

vshrI4MinTest_LOOP:

    // loop 1
    vshr.s32        q0, q11, #1
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q1, #3
    vshr.s32        q3, q2, #4
    vshr.s32        q4, q3, #5
    vshr.s32        q5, q4, #6
    vshr.s32        q6, q5, #7
    vshr.s32        q7, q6, #8
    vshr.s32        q8, q7, #9
    vshr.s32        q9, q8, #10
    vshr.s32        q10, q9, #11
    vshr.s32        q11, q10, #12

    // loop 2
    vshr.s32        q0, q11, #1
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q1, #3
    vshr.s32        q3, q2, #4
    vshr.s32        q4, q3, #5
    vshr.s32        q5, q4, #6
    vshr.s32        q6, q5, #7
    vshr.s32        q7, q6, #8
    vshr.s32        q8, q7, #9
    vshr.s32        q9, q8, #10
    vshr.s32        q10, q9, #11
    vshr.s32        q11, q10, #12

    // loop 3
    vshr.s32        q0, q11, #1
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q1, #3
    vshr.s32        q3, q2, #4
    vshr.s32        q4, q3, #5
    vshr.s32        q5, q4, #6
    vshr.s32        q6, q5, #7
    vshr.s32        q7, q6, #8
    vshr.s32        q8, q7, #9
    vshr.s32        q9, q8, #10
    vshr.s32        q10, q9, #11
    vshr.s32        q11, q10, #12

    // loop 4
    vshr.s32        q0, q11, #1
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q1, #3
    vshr.s32        q3, q2, #4
    vshr.s32        q4, q3, #5
    vshr.s32        q5, q4, #6
    vshr.s32        q6, q5, #7
    vshr.s32        q7, q6, #8
    vshr.s32        q8, q7, #9
    vshr.s32        q9, q8, #10
    vshr.s32        q10, q9, #11
    vshr.s32        q11, q10, #12

    // loop 5
    vshr.s32        q0, q11, #1
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q1, #3
    vshr.s32        q3, q2, #4
    vshr.s32        q4, q3, #5
    vshr.s32        q5, q4, #6
    vshr.s32        q6, q5, #7
    vshr.s32        q7, q6, #8
    vshr.s32        q8, q7, #9
    vshr.s32        q9, q8, #10
    vshr.s32        q10, q9, #11
    vshr.s32        q11, q10, #12

    subs    r0, r0, #1
    bne     vshrI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vshrI4MaxTest:

    vpush.64        {d8-d15}

vshrI4MaxTest_LOOP:

    // loop 1
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q0, #3
    vshr.s32        q3, q0, #4
    vshr.s32        q4, q0, #5
    vshr.s32        q5, q0, #6
    vshr.s32        q6, q0, #7
    vshr.s32        q7, q0, #8
    vshr.s32        q8, q0, #9
    vshr.s32        q9, q0, #10
    vshr.s32        q10, q0, #11
    vshr.s32        q11, q0, #12
    vshr.s32        q12, q0, #13

    // loop 2
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q0, #3
    vshr.s32        q3, q0, #4
    vshr.s32        q4, q0, #5
    vshr.s32        q5, q0, #6
    vshr.s32        q6, q0, #7
    vshr.s32        q7, q0, #8
    vshr.s32        q8, q0, #9
    vshr.s32        q9, q0, #10
    vshr.s32        q10, q0, #11
    vshr.s32        q11, q0, #12
    vshr.s32        q12, q0, #13

    // loop 3
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q0, #3
    vshr.s32        q3, q0, #4
    vshr.s32        q4, q0, #5
    vshr.s32        q5, q0, #6
    vshr.s32        q6, q0, #7
    vshr.s32        q7, q0, #8
    vshr.s32        q8, q0, #9
    vshr.s32        q9, q0, #10
    vshr.s32        q10, q0, #11
    vshr.s32        q11, q0, #12
    vshr.s32        q12, q0, #13

    // loop 4
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q0, #3
    vshr.s32        q3, q0, #4
    vshr.s32        q4, q0, #5
    vshr.s32        q5, q0, #6
    vshr.s32        q6, q0, #7
    vshr.s32        q7, q0, #8
    vshr.s32        q8, q0, #9
    vshr.s32        q9, q0, #10
    vshr.s32        q10, q0, #11
    vshr.s32        q11, q0, #12
    vshr.s32        q12, q0, #13

    // loop 5
    vshr.s32        q1, q0, #2
    vshr.s32        q2, q0, #3
    vshr.s32        q3, q0, #4
    vshr.s32        q4, q0, #5
    vshr.s32        q5, q0, #6
    vshr.s32        q6, q0, #7
    vshr.s32        q7, q0, #8
    vshr.s32        q8, q0, #9
    vshr.s32        q9, q0, #10
    vshr.s32        q10, q0, #11
    vshr.s32        q11, q0, #12
    vshr.s32        q12, q0, #13

    subs    r0, r0, #1
    bne     vshrI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vshrnI4MinTest:

    vpush.64        {d8-d15}

vshrnI4MinTest_LOOP:

    // loop 1
    vshrn.i32       d0, q11, #1
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q1, #3
    vshrn.i32       d6, q2, #4
    vshrn.i32       d8, q3, #5
    vshrn.i32       d10, q4, #6
    vshrn.i32       d12, q5, #7
    vshrn.i32       d14, q6, #8
    vshrn.i32       d16, q7, #9
    vshrn.i32       d18, q8, #10
    vshrn.i32       d20, q9, #11
    vshrn.i32       d22, q10, #12

    // loop 2
    vshrn.i32       d0, q11, #1
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q1, #3
    vshrn.i32       d6, q2, #4
    vshrn.i32       d8, q3, #5
    vshrn.i32       d10, q4, #6
    vshrn.i32       d12, q5, #7
    vshrn.i32       d14, q6, #8
    vshrn.i32       d16, q7, #9
    vshrn.i32       d18, q8, #10
    vshrn.i32       d20, q9, #11
    vshrn.i32       d22, q10, #12

    // loop 3
    vshrn.i32       d0, q11, #1
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q1, #3
    vshrn.i32       d6, q2, #4
    vshrn.i32       d8, q3, #5
    vshrn.i32       d10, q4, #6
    vshrn.i32       d12, q5, #7
    vshrn.i32       d14, q6, #8
    vshrn.i32       d16, q7, #9
    vshrn.i32       d18, q8, #10
    vshrn.i32       d20, q9, #11
    vshrn.i32       d22, q10, #12

     // loop 4
    vshrn.i32       d0, q11, #1
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q1, #3
    vshrn.i32       d6, q2, #4
    vshrn.i32       d8, q3, #5
    vshrn.i32       d10, q4, #6
    vshrn.i32       d12, q5, #7
    vshrn.i32       d14, q6, #8
    vshrn.i32       d16, q7, #9
    vshrn.i32       d18, q8, #10
    vshrn.i32       d20, q9, #11
    vshrn.i32       d22, q10, #12

    // loop 5
    vshrn.i32       d0, q11, #1
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q1, #3
    vshrn.i32       d6, q2, #4
    vshrn.i32       d8, q3, #5
    vshrn.i32       d10, q4, #6
    vshrn.i32       d12, q5, #7
    vshrn.i32       d14, q6, #8
    vshrn.i32       d16, q7, #9
    vshrn.i32       d18, q8, #10
    vshrn.i32       d20, q9, #11
    vshrn.i32       d22, q10, #12

    subs    r0, r0, #1
    bne     vshrnI4MinTest_LOOP
    vpop.64         {d8-d15}
    bx      lr

_vshrnI4MaxTest:

    vpush.64        {d8-d15}

vshrnI4MaxTest_LOOP:

    // loop 1
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q0, #3
    vshrn.i32       d6, q0, #4
    vshrn.i32       d8, q0, #5
    vshrn.i32       d10, q0, #6
    vshrn.i32       d12, q0, #7
    vshrn.i32       d14, q0, #8
    vshrn.i32       d16, q0, #9
    vshrn.i32       d18, q0, #10
    vshrn.i32       d20, q0, #11
    vshrn.i32       d22, q0, #12
    vshrn.i32       d24, q0, #13

    // loop 2
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q0, #3
    vshrn.i32       d6, q0, #4
    vshrn.i32       d8, q0, #5
    vshrn.i32       d10, q0, #6
    vshrn.i32       d12, q0, #7
    vshrn.i32       d14, q0, #8
    vshrn.i32       d16, q0, #9
    vshrn.i32       d18, q0, #10
    vshrn.i32       d20, q0, #11
    vshrn.i32       d22, q0, #12
    vshrn.i32       d24, q0, #13

    // loop 3
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q0, #3
    vshrn.i32       d6, q0, #4
    vshrn.i32       d8, q0, #5
    vshrn.i32       d10, q0, #6
    vshrn.i32       d12, q0, #7
    vshrn.i32       d14, q0, #8
    vshrn.i32       d16, q0, #9
    vshrn.i32       d18, q0, #10
    vshrn.i32       d20, q0, #11
    vshrn.i32       d22, q0, #12
    vshrn.i32       d24, q0, #13

    // loop 4
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q0, #3
    vshrn.i32       d6, q0, #4
    vshrn.i32       d8, q0, #5
    vshrn.i32       d10, q0, #6
    vshrn.i32       d12, q0, #7
    vshrn.i32       d14, q0, #8
    vshrn.i32       d16, q0, #9
    vshrn.i32       d18, q0, #10
    vshrn.i32       d20, q0, #11
    vshrn.i32       d22, q0, #12
    vshrn.i32       d24, q0, #13

    // loop 5
    vshrn.i32       d2, q0, #2
    vshrn.i32       d4, q0, #3
    vshrn.i32       d6, q0, #4
    vshrn.i32       d8, q0, #5
    vshrn.i32       d10, q0, #6
    vshrn.i32       d12, q0, #7
    vshrn.i32       d14, q0, #8
    vshrn.i32       d16, q0, #9
    vshrn.i32       d18, q0, #10
    vshrn.i32       d20, q0, #11
    vshrn.i32       d22, q0, #12
    vshrn.i32       d24, q0, #13

    subs    r0, r0, #1
    bne     vshrnI4MaxTest_LOOP
    vpop.64         {d8-d15}
    bx      lr


_vsliI4MinTest:

    vpush.64    {d8-d15}

vsliI4MinTest_LOOP:

    // loop 1
    vsli.32     q0, q11, #1
    vsli.32     q1, q0, #2
    vsli.32     q2, q1, #3
    vsli.32     q3, q2, #4
    vsli.32     q4, q3, #5
    vsli.32     q5, q4, #6
    vsli.32     q6, q5, #7
    vsli.32     q7, q6, #8
    vsli.32     q8, q7, #9
    vsli.32     q9, q8, #10
    vsli.32     q10, q9, #11
    vsli.32     q11, q10, #12

    // loop 2
    vsli.32     q0, q11, #1
    vsli.32     q1, q0, #2
    vsli.32     q2, q1, #3
    vsli.32     q3, q2, #4
    vsli.32     q4, q3, #5
    vsli.32     q5, q4, #6
    vsli.32     q6, q5, #7
    vsli.32     q7, q6, #8
    vsli.32     q8, q7, #9
    vsli.32     q9, q8, #10
    vsli.32     q10, q9, #11
    vsli.32     q11, q10, #12

    // loop 3
    vsli.32     q0, q11, #1
    vsli.32     q1, q0, #2
    vsli.32     q2, q1, #3
    vsli.32     q3, q2, #4
    vsli.32     q4, q3, #5
    vsli.32     q5, q4, #6
    vsli.32     q6, q5, #7
    vsli.32     q7, q6, #8
    vsli.32     q8, q7, #9
    vsli.32     q9, q8, #10
    vsli.32     q10, q9, #11
    vsli.32     q11, q10, #12

    // loop 4
    vsli.32     q0, q11, #1
    vsli.32     q1, q0, #2
    vsli.32     q2, q1, #3
    vsli.32     q3, q2, #4
    vsli.32     q4, q3, #5
    vsli.32     q5, q4, #6
    vsli.32     q6, q5, #7
    vsli.32     q7, q6, #8
    vsli.32     q8, q7, #9
    vsli.32     q9, q8, #10
    vsli.32     q10, q9, #11
    vsli.32     q11, q10, #12

    // loop 5
    vsli.32     q0, q11, #1
    vsli.32     q1, q0, #2
    vsli.32     q2, q1, #3
    vsli.32     q3, q2, #4
    vsli.32     q4, q3, #5
    vsli.32     q5, q4, #6
    vsli.32     q6, q5, #7
    vsli.32     q7, q6, #8
    vsli.32     q8, q7, #9
    vsli.32     q9, q8, #10
    vsli.32     q10, q9, #11
    vsli.32     q11, q10, #12

    subs    r0, r0, #1
    bne     vsliI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsliI4MaxTest:

    vpush.64    {d8-d15}

vsliI4MaxTest_LOOP:

    // loop 1
    vsli.32     q1, q0, #2
    vsli.32     q2, q0, #3
    vsli.32     q3, q0, #4
    vsli.32     q4, q0, #5
    vsli.32     q5, q0, #6
    vsli.32     q6, q0, #7
    vsli.32     q7, q0, #8
    vsli.32     q8, q0, #9
    vsli.32     q9, q0, #10
    vsli.32     q10, q0, #11
    vsli.32     q11, q0, #12
    vsli.32     q12, q0, #13

    // loop 2
    vsli.32     q1, q0, #2
    vsli.32     q2, q0, #3
    vsli.32     q3, q0, #4
    vsli.32     q4, q0, #5
    vsli.32     q5, q0, #6
    vsli.32     q6, q0, #7
    vsli.32     q7, q0, #8
    vsli.32     q8, q0, #9
    vsli.32     q9, q0, #10
    vsli.32     q10, q0, #11
    vsli.32     q11, q0, #12
    vsli.32     q12, q0, #13

    // loop 3
    vsli.32     q1, q0, #2
    vsli.32     q2, q0, #3
    vsli.32     q3, q0, #4
    vsli.32     q4, q0, #5
    vsli.32     q5, q0, #6
    vsli.32     q6, q0, #7
    vsli.32     q7, q0, #8
    vsli.32     q8, q0, #9
    vsli.32     q9, q0, #10
    vsli.32     q10, q0, #11
    vsli.32     q11, q0, #12
    vsli.32     q12, q0, #13

    // loop 4
    vsli.32     q1, q0, #2
    vsli.32     q2, q0, #3
    vsli.32     q3, q0, #4
    vsli.32     q4, q0, #5
    vsli.32     q5, q0, #6
    vsli.32     q6, q0, #7
    vsli.32     q7, q0, #8
    vsli.32     q8, q0, #9
    vsli.32     q9, q0, #10
    vsli.32     q10, q0, #11
    vsli.32     q11, q0, #12
    vsli.32     q12, q0, #13

    // loop 5
    vsli.32     q1, q0, #2
    vsli.32     q2, q0, #3
    vsli.32     q3, q0, #4
    vsli.32     q4, q0, #5
    vsli.32     q5, q0, #6
    vsli.32     q6, q0, #7
    vsli.32     q7, q0, #8
    vsli.32     q8, q0, #9
    vsli.32     q9, q0, #10
    vsli.32     q10, q0, #11
    vsli.32     q11, q0, #12
    vsli.32     q12, q0, #13

    subs    r0, r0, #1
    bne     vsliI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vsqrtFMinTest:

    vpush.64    {d8-d15}

vsqrtFMinTest_LOOP:

    // loop 1
    vsqrt.f32   s0, s11
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s1
    vsqrt.f32   s3, s2
    vsqrt.f32   s4, s3
    vsqrt.f32   s5, s4
    vsqrt.f32   s6, s5
    vsqrt.f32   s7, s6
    vsqrt.f32   s8, s7
    vsqrt.f32   s9, s8
    vsqrt.f32   s10, s9
    vsqrt.f32   s11, s10

    // loop 2
    vsqrt.f32   s0, s11
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s1
    vsqrt.f32   s3, s2
    vsqrt.f32   s4, s3
    vsqrt.f32   s5, s4
    vsqrt.f32   s6, s5
    vsqrt.f32   s7, s6
    vsqrt.f32   s8, s7
    vsqrt.f32   s9, s8
    vsqrt.f32   s10, s9
    vsqrt.f32   s11, s10

    // loop 3
    vsqrt.f32   s0, s11
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s1
    vsqrt.f32   s3, s2
    vsqrt.f32   s4, s3
    vsqrt.f32   s5, s4
    vsqrt.f32   s6, s5
    vsqrt.f32   s7, s6
    vsqrt.f32   s8, s7
    vsqrt.f32   s9, s8
    vsqrt.f32   s10, s9
    vsqrt.f32   s11, s10

    // loop 4
    vsqrt.f32   s0, s11
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s1
    vsqrt.f32   s3, s2
    vsqrt.f32   s4, s3
    vsqrt.f32   s5, s4
    vsqrt.f32   s6, s5
    vsqrt.f32   s7, s6
    vsqrt.f32   s8, s7
    vsqrt.f32   s9, s8
    vsqrt.f32   s10, s9
    vsqrt.f32   s11, s10

    // loop 5
    vsqrt.f32   s0, s11
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s1
    vsqrt.f32   s3, s2
    vsqrt.f32   s4, s3
    vsqrt.f32   s5, s4
    vsqrt.f32   s6, s5
    vsqrt.f32   s7, s6
    vsqrt.f32   s8, s7
    vsqrt.f32   s9, s8
    vsqrt.f32   s10, s9
    vsqrt.f32   s11, s10

    subs    r0, r0, #1
    bne     vsqrtFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsqrtFMaxTest:

    vpush.64    {d8-d15}

vsqrtFMaxTest_LOOP:

    // loop 1
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s0
    vsqrt.f32   s3, s0
    vsqrt.f32   s4, s0
    vsqrt.f32   s5, s0
    vsqrt.f32   s6, s0
    vsqrt.f32   s7, s0
    vsqrt.f32   s8, s0
    vsqrt.f32   s9, s0
    vsqrt.f32   s10, s0
    vsqrt.f32   s11, s0
    vsqrt.f32   s12, s0

    // loop 2
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s0
    vsqrt.f32   s3, s0
    vsqrt.f32   s4, s0
    vsqrt.f32   s5, s0
    vsqrt.f32   s6, s0
    vsqrt.f32   s7, s0
    vsqrt.f32   s8, s0
    vsqrt.f32   s9, s0
    vsqrt.f32   s10, s0
    vsqrt.f32   s11, s0
    vsqrt.f32   s12, s0

    // loop 3
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s0
    vsqrt.f32   s3, s0
    vsqrt.f32   s4, s0
    vsqrt.f32   s5, s0
    vsqrt.f32   s6, s0
    vsqrt.f32   s7, s0
    vsqrt.f32   s8, s0
    vsqrt.f32   s9, s0
    vsqrt.f32   s10, s0
    vsqrt.f32   s11, s0
    vsqrt.f32   s12, s0

    // loop 4
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s0
    vsqrt.f32   s3, s0
    vsqrt.f32   s4, s0
    vsqrt.f32   s5, s0
    vsqrt.f32   s6, s0
    vsqrt.f32   s7, s0
    vsqrt.f32   s8, s0
    vsqrt.f32   s9, s0
    vsqrt.f32   s10, s0
    vsqrt.f32   s11, s0
    vsqrt.f32   s12, s0

    // loop 5
    vsqrt.f32   s1, s0
    vsqrt.f32   s2, s0
    vsqrt.f32   s3, s0
    vsqrt.f32   s4, s0
    vsqrt.f32   s5, s0
    vsqrt.f32   s6, s0
    vsqrt.f32   s7, s0
    vsqrt.f32   s8, s0
    vsqrt.f32   s9, s0
    vsqrt.f32   s10, s0
    vsqrt.f32   s11, s0
    vsqrt.f32   s12, s0

    subs    r0, r0, #1
    bne     vsqrtFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsqrtDMinTest:

    vpush.64    {d8-d15}

vsqrtDMinTest_LOOP:

    // loop 1
    vsqrt.f64   d0, d11
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d1
    vsqrt.f64   d3, d2
    vsqrt.f64   d4, d3
    vsqrt.f64   d5, d4
    vsqrt.f64   d6, d5
    vsqrt.f64   d7, d6
    vsqrt.f64   d8, d7
    vsqrt.f64   d9, d8
    vsqrt.f64   d10, d9
    vsqrt.f64   d11, d10

    // loop 2
    vsqrt.f64   d0, d11
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d1
    vsqrt.f64   d3, d2
    vsqrt.f64   d4, d3
    vsqrt.f64   d5, d4
    vsqrt.f64   d6, d5
    vsqrt.f64   d7, d6
    vsqrt.f64   d8, d7
    vsqrt.f64   d9, d8
    vsqrt.f64   d10, d9
    vsqrt.f64   d11, d10

    // loop 3
    vsqrt.f64   d0, d11
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d1
    vsqrt.f64   d3, d2
    vsqrt.f64   d4, d3
    vsqrt.f64   d5, d4
    vsqrt.f64   d6, d5
    vsqrt.f64   d7, d6
    vsqrt.f64   d8, d7
    vsqrt.f64   d9, d8
    vsqrt.f64   d10, d9
    vsqrt.f64   d11, d10

    // loop 4
    vsqrt.f64   d0, d11
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d1
    vsqrt.f64   d3, d2
    vsqrt.f64   d4, d3
    vsqrt.f64   d5, d4
    vsqrt.f64   d6, d5
    vsqrt.f64   d7, d6
    vsqrt.f64   d8, d7
    vsqrt.f64   d9, d8
    vsqrt.f64   d10, d9
    vsqrt.f64   d11, d10

    // loop 5
    vsqrt.f64   d0, d11
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d1
    vsqrt.f64   d3, d2
    vsqrt.f64   d4, d3
    vsqrt.f64   d5, d4
    vsqrt.f64   d6, d5
    vsqrt.f64   d7, d6
    vsqrt.f64   d8, d7
    vsqrt.f64   d9, d8
    vsqrt.f64   d10, d9
    vsqrt.f64   d11, d10

    subs    r0, r0, #1
    bne     vsqrtDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsqrtDMaxTest:

    vpush.64    {d8-d15}

vsqrtDMaxTest_LOOP:

    // loop 1
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d0
    vsqrt.f64   d3, d0
    vsqrt.f64   d4, d0
    vsqrt.f64   d5, d0
    vsqrt.f64   d6, d0
    vsqrt.f64   d7, d0
    vsqrt.f64   d8, d0
    vsqrt.f64   d9, d0
    vsqrt.f64   d10, d0
    vsqrt.f64   d11, d0
    vsqrt.f64   d12, d0

    // loop 2
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d0
    vsqrt.f64   d3, d0
    vsqrt.f64   d4, d0
    vsqrt.f64   d5, d0
    vsqrt.f64   d6, d0
    vsqrt.f64   d7, d0
    vsqrt.f64   d8, d0
    vsqrt.f64   d9, d0
    vsqrt.f64   d10, d0
    vsqrt.f64   d11, d0
    vsqrt.f64   d12, d0

    // loop 3
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d0
    vsqrt.f64   d3, d0
    vsqrt.f64   d4, d0
    vsqrt.f64   d5, d0
    vsqrt.f64   d6, d0
    vsqrt.f64   d7, d0
    vsqrt.f64   d8, d0
    vsqrt.f64   d9, d0
    vsqrt.f64   d10, d0
    vsqrt.f64   d11, d0
    vsqrt.f64   d12, d0

    // loop 4
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d0
    vsqrt.f64   d3, d0
    vsqrt.f64   d4, d0
    vsqrt.f64   d5, d0
    vsqrt.f64   d6, d0
    vsqrt.f64   d7, d0
    vsqrt.f64   d8, d0
    vsqrt.f64   d9, d0
    vsqrt.f64   d10, d0
    vsqrt.f64   d11, d0
    vsqrt.f64   d12, d0

    // loop 5
    vsqrt.f64   d1, d0
    vsqrt.f64   d2, d0
    vsqrt.f64   d3, d0
    vsqrt.f64   d4, d0
    vsqrt.f64   d5, d0
    vsqrt.f64   d6, d0
    vsqrt.f64   d7, d0
    vsqrt.f64   d8, d0
    vsqrt.f64   d9, d0
    vsqrt.f64   d10, d0
    vsqrt.f64   d11, d0
    vsqrt.f64   d12, d0

    subs    r0, r0, #1
    bne     vsqrtDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vsraI4MinTest:

    vpush.64    {d8-d15}

vsraI4MinTest_LOOP:

    // loop 1
    vsra.s32    q0, q11, #1
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q1, #3
    vsra.s32    q3, q2, #4
    vsra.s32    q4, q3, #5
    vsra.s32    q5, q4, #6
    vsra.s32    q6, q5, #7
    vsra.s32    q7, q6, #8
    vsra.s32    q8, q7, #9
    vsra.s32    q9, q8, #10
    vsra.s32    q10, q9, #11
    vsra.s32    q11, q10, #12

    // loop 2
    vsra.s32    q0, q11, #1
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q1, #3
    vsra.s32    q3, q2, #4
    vsra.s32    q4, q3, #5
    vsra.s32    q5, q4, #6
    vsra.s32    q6, q5, #7
    vsra.s32    q7, q6, #8
    vsra.s32    q8, q7, #9
    vsra.s32    q9, q8, #10
    vsra.s32    q10, q9, #11
    vsra.s32    q11, q10, #12

    // loop 3
    vsra.s32    q0, q11, #1
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q1, #3
    vsra.s32    q3, q2, #4
    vsra.s32    q4, q3, #5
    vsra.s32    q5, q4, #6
    vsra.s32    q6, q5, #7
    vsra.s32    q7, q6, #8
    vsra.s32    q8, q7, #9
    vsra.s32    q9, q8, #10
    vsra.s32    q10, q9, #11
    vsra.s32    q11, q10, #12

    // loop 4
    vsra.s32    q0, q11, #1
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q1, #3
    vsra.s32    q3, q2, #4
    vsra.s32    q4, q3, #5
    vsra.s32    q5, q4, #6
    vsra.s32    q6, q5, #7
    vsra.s32    q7, q6, #8
    vsra.s32    q8, q7, #9
    vsra.s32    q9, q8, #10
    vsra.s32    q10, q9, #11
    vsra.s32    q11, q10, #12

    // loop 5
    vsra.s32    q0, q11, #1
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q1, #3
    vsra.s32    q3, q2, #4
    vsra.s32    q4, q3, #5
    vsra.s32    q5, q4, #6
    vsra.s32    q6, q5, #7
    vsra.s32    q7, q6, #8
    vsra.s32    q8, q7, #9
    vsra.s32    q9, q8, #10
    vsra.s32    q10, q9, #11
    vsra.s32    q11, q10, #12

    subs    r0, r0, #1
    bne     vsraI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsraI4MaxTest:

    vpush.64    {d8-d15}

vsraI4MaxTest_LOOP:

    // loop 1
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q0, #3
    vsra.s32    q3, q0, #4
    vsra.s32    q4, q0, #5
    vsra.s32    q5, q0, #6
    vsra.s32    q6, q0, #7
    vsra.s32    q7, q0, #8
    vsra.s32    q8, q0, #9
    vsra.s32    q9, q0, #10
    vsra.s32    q10, q0, #11
    vsra.s32    q11, q0, #12
    vsra.s32    q12, q0, #13

    // loop 2
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q0, #3
    vsra.s32    q3, q0, #4
    vsra.s32    q4, q0, #5
    vsra.s32    q5, q0, #6
    vsra.s32    q6, q0, #7
    vsra.s32    q7, q0, #8
    vsra.s32    q8, q0, #9
    vsra.s32    q9, q0, #10
    vsra.s32    q10, q0, #11
    vsra.s32    q11, q0, #12
    vsra.s32    q12, q0, #13

    // loop 3
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q0, #3
    vsra.s32    q3, q0, #4
    vsra.s32    q4, q0, #5
    vsra.s32    q5, q0, #6
    vsra.s32    q6, q0, #7
    vsra.s32    q7, q0, #8
    vsra.s32    q8, q0, #9
    vsra.s32    q9, q0, #10
    vsra.s32    q10, q0, #11
    vsra.s32    q11, q0, #12
    vsra.s32    q12, q0, #13

    // loop 4
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q0, #3
    vsra.s32    q3, q0, #4
    vsra.s32    q4, q0, #5
    vsra.s32    q5, q0, #6
    vsra.s32    q6, q0, #7
    vsra.s32    q7, q0, #8
    vsra.s32    q8, q0, #9
    vsra.s32    q9, q0, #10
    vsra.s32    q10, q0, #11
    vsra.s32    q11, q0, #12
    vsra.s32    q12, q0, #13

    // loop 5
    vsra.s32    q1, q0, #2
    vsra.s32    q2, q0, #3
    vsra.s32    q3, q0, #4
    vsra.s32    q4, q0, #5
    vsra.s32    q5, q0, #6
    vsra.s32    q6, q0, #7
    vsra.s32    q7, q0, #8
    vsra.s32    q8, q0, #9
    vsra.s32    q9, q0, #10
    vsra.s32    q10, q0, #11
    vsra.s32    q11, q0, #12
    vsra.s32    q12, q0, #13

    subs    r0, r0, #1
    bne     vsraI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vsriI4MinTest:

    vpush.64    {d8-d15}

vsriI4MinTest_LOOP:

    // loop 1
    vsri.32     q0, q11, #1
    vsri.32     q1, q0, #2
    vsri.32     q2, q1, #3
    vsri.32     q3, q2, #4
    vsri.32     q4, q3, #5
    vsri.32     q5, q4, #6
    vsri.32     q6, q5, #7
    vsri.32     q7, q6, #8
    vsri.32     q8, q7, #9
    vsri.32     q9, q8, #10
    vsri.32     q10, q9, #11
    vsri.32     q11, q10, #12

    // loop 2
    vsri.32     q0, q11, #1
    vsri.32     q1, q0, #2
    vsri.32     q2, q1, #3
    vsri.32     q3, q2, #4
    vsri.32     q4, q3, #5
    vsri.32     q5, q4, #6
    vsri.32     q6, q5, #7
    vsri.32     q7, q6, #8
    vsri.32     q8, q7, #9
    vsri.32     q9, q8, #10
    vsri.32     q10, q9, #11
    vsri.32     q11, q10, #12

    // loop 3
    vsri.32     q0, q11, #1
    vsri.32     q1, q0, #2
    vsri.32     q2, q1, #3
    vsri.32     q3, q2, #4
    vsri.32     q4, q3, #5
    vsri.32     q5, q4, #6
    vsri.32     q6, q5, #7
    vsri.32     q7, q6, #8
    vsri.32     q8, q7, #9
    vsri.32     q9, q8, #10
    vsri.32     q10, q9, #11
    vsri.32     q11, q10, #12

    // loop 4
    vsri.32     q0, q11, #1
    vsri.32     q1, q0, #2
    vsri.32     q2, q1, #3
    vsri.32     q3, q2, #4
    vsri.32     q4, q3, #5
    vsri.32     q5, q4, #6
    vsri.32     q6, q5, #7
    vsri.32     q7, q6, #8
    vsri.32     q8, q7, #9
    vsri.32     q9, q8, #10
    vsri.32     q10, q9, #11
    vsri.32     q11, q10, #12

    // loop 5
    vsri.32     q0, q11, #1
    vsri.32     q1, q0, #2
    vsri.32     q2, q1, #3
    vsri.32     q3, q2, #4
    vsri.32     q4, q3, #5
    vsri.32     q5, q4, #6
    vsri.32     q6, q5, #7
    vsri.32     q7, q6, #8
    vsri.32     q8, q7, #9
    vsri.32     q9, q8, #10
    vsri.32     q10, q9, #11
    vsri.32     q11, q10, #12

    subs    r0, r0, #1
    bne     vsriI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsriI4MaxTest:

    vpush.64    {d8-d15}

vsriI4MaxTest_LOOP:

    // loop 1
    vsri.32     q1, q0, #2
    vsri.32     q2, q0, #3
    vsri.32     q3, q0, #4
    vsri.32     q4, q0, #5
    vsri.32     q5, q0, #6
    vsri.32     q6, q0, #7
    vsri.32     q7, q0, #8
    vsri.32     q8, q0, #9
    vsri.32     q9, q0, #10
    vsri.32     q10, q0, #11
    vsri.32     q11, q0, #12
    vsri.32     q12, q0, #13

    // loop 2
    vsri.32     q1, q0, #2
    vsri.32     q2, q0, #3
    vsri.32     q3, q0, #4
    vsri.32     q4, q0, #5
    vsri.32     q5, q0, #6
    vsri.32     q6, q0, #7
    vsri.32     q7, q0, #8
    vsri.32     q8, q0, #9
    vsri.32     q9, q0, #10
    vsri.32     q10, q0, #11
    vsri.32     q11, q0, #12
    vsri.32     q12, q0, #13

    // loop 3
    vsri.32     q1, q0, #2
    vsri.32     q2, q0, #3
    vsri.32     q3, q0, #4
    vsri.32     q4, q0, #5
    vsri.32     q5, q0, #6
    vsri.32     q6, q0, #7
    vsri.32     q7, q0, #8
    vsri.32     q8, q0, #9
    vsri.32     q9, q0, #10
    vsri.32     q10, q0, #11
    vsri.32     q11, q0, #12
    vsri.32     q12, q0, #13

    // loop 4
    vsri.32     q1, q0, #2
    vsri.32     q2, q0, #3
    vsri.32     q3, q0, #4
    vsri.32     q4, q0, #5
    vsri.32     q5, q0, #6
    vsri.32     q6, q0, #7
    vsri.32     q7, q0, #8
    vsri.32     q8, q0, #9
    vsri.32     q9, q0, #10
    vsri.32     q10, q0, #11
    vsri.32     q11, q0, #12
    vsri.32     q12, q0, #13

    // loop 5
    vsri.32     q1, q0, #2
    vsri.32     q2, q0, #3
    vsri.32     q3, q0, #4
    vsri.32     q4, q0, #5
    vsri.32     q5, q0, #6
    vsri.32     q6, q0, #7
    vsri.32     q7, q0, #8
    vsri.32     q8, q0, #9
    vsri.32     q9, q0, #10
    vsri.32     q10, q0, #11
    vsri.32     q11, q0, #12
    vsri.32     q12, q0, #13

    subs    r0, r0, #1
    bne     vsriI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vsubI4MinTest:

    vpush.64    {d8-d15}

vsubI4MinTest_LOOP:

    // loop 1
    vsub.i32    q0, q0, q11
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q1
    vsub.i32    q3, q3, q2
    vsub.i32    q4, q4, q3
    vsub.i32    q5, q5, q4
    vsub.i32    q6, q6, q5
    vsub.i32    q7, q7, q6
    vsub.i32    q8, q8, q7
    vsub.i32    q9, q9, q8
    vsub.i32    q10, q10, q9
    vsub.i32    q11, q11, q10
    
    // loop 2
    vsub.i32    q0, q0, q11
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q1
    vsub.i32    q3, q3, q2
    vsub.i32    q4, q4, q3
    vsub.i32    q5, q5, q4
    vsub.i32    q6, q6, q5
    vsub.i32    q7, q7, q6
    vsub.i32    q8, q8, q7
    vsub.i32    q9, q9, q8
    vsub.i32    q10, q10, q9
    vsub.i32    q11, q11, q10

    // loop 3
    vsub.i32    q0, q0, q11
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q1
    vsub.i32    q3, q3, q2
    vsub.i32    q4, q4, q3
    vsub.i32    q5, q5, q4
    vsub.i32    q6, q6, q5
    vsub.i32    q7, q7, q6
    vsub.i32    q8, q8, q7
    vsub.i32    q9, q9, q8
    vsub.i32    q10, q10, q9
    vsub.i32    q11, q11, q10

    // loop 4
    vsub.i32    q0, q0, q11
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q1
    vsub.i32    q3, q3, q2
    vsub.i32    q4, q4, q3
    vsub.i32    q5, q5, q4
    vsub.i32    q6, q6, q5
    vsub.i32    q7, q7, q6
    vsub.i32    q8, q8, q7
    vsub.i32    q9, q9, q8
    vsub.i32    q10, q10, q9
    vsub.i32    q11, q11, q10

    // loop 5
    vsub.i32    q0, q0, q11
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q1
    vsub.i32    q3, q3, q2
    vsub.i32    q4, q4, q3
    vsub.i32    q5, q5, q4
    vsub.i32    q6, q6, q5
    vsub.i32    q7, q7, q6
    vsub.i32    q8, q8, q7
    vsub.i32    q9, q9, q8
    vsub.i32    q10, q10, q9
    vsub.i32    q11, q11, q10

    subs    r0, r0, #1
    bne     vsubI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubI4MaxTest:

    vpush.64    {d8-d15}

vsubI4MaxTest_LOOP:

    // loop 1
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q0
    vsub.i32    q3, q3, q0
    vsub.i32    q4, q4, q0
    vsub.i32    q5, q5, q0
    vsub.i32    q6, q6, q0
    vsub.i32    q7, q7, q0
    vsub.i32    q8, q8, q0
    vsub.i32    q9, q9, q0
    vsub.i32    q10, q10, q0
    vsub.i32    q11, q11, q0
    vsub.i32    q12, q12, q0

    // loop 2
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q0
    vsub.i32    q3, q3, q0
    vsub.i32    q4, q4, q0
    vsub.i32    q5, q5, q0
    vsub.i32    q6, q6, q0
    vsub.i32    q7, q7, q0
    vsub.i32    q8, q8, q0
    vsub.i32    q9, q9, q0
    vsub.i32    q10, q10, q0
    vsub.i32    q11, q11, q0
    vsub.i32    q12, q12, q0

    // loop 3
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q0
    vsub.i32    q3, q3, q0
    vsub.i32    q4, q4, q0
    vsub.i32    q5, q5, q0
    vsub.i32    q6, q6, q0
    vsub.i32    q7, q7, q0
    vsub.i32    q8, q8, q0
    vsub.i32    q9, q9, q0
    vsub.i32    q10, q10, q0
    vsub.i32    q11, q11, q0
    vsub.i32    q12, q12, q0

    // loop 4
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q0
    vsub.i32    q3, q3, q0
    vsub.i32    q4, q4, q0
    vsub.i32    q5, q5, q0
    vsub.i32    q6, q6, q0
    vsub.i32    q7, q7, q0
    vsub.i32    q8, q8, q0
    vsub.i32    q9, q9, q0
    vsub.i32    q10, q10, q0
    vsub.i32    q11, q11, q0
    vsub.i32    q12, q12, q0

    // loop 5
    vsub.i32    q1, q1, q0
    vsub.i32    q2, q2, q0
    vsub.i32    q3, q3, q0
    vsub.i32    q4, q4, q0
    vsub.i32    q5, q5, q0
    vsub.i32    q6, q6, q0
    vsub.i32    q7, q7, q0
    vsub.i32    q8, q8, q0
    vsub.i32    q9, q9, q0
    vsub.i32    q10, q10, q0
    vsub.i32    q11, q11, q0
    vsub.i32    q12, q12, q0

    subs    r0, r0, #1
    bne     vsubI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubF4MinTest:

    vpush.64    {d8-d15}

vsubF4MinTest_LOOP:

    // loop 1
    vsub.f32    q0, q0, q11
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q1
    vsub.f32    q3, q3, q2
    vsub.f32    q4, q4, q3
    vsub.f32    q5, q5, q4
    vsub.f32    q6, q6, q5
    vsub.f32    q7, q7, q6
    vsub.f32    q8, q8, q7
    vsub.f32    q9, q9, q8
    vsub.f32    q10, q10, q9
    vsub.f32    q11, q11, q10

    // loop 2
    vsub.f32    q0, q0, q11
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q1
    vsub.f32    q3, q3, q2
    vsub.f32    q4, q4, q3
    vsub.f32    q5, q5, q4
    vsub.f32    q6, q6, q5
    vsub.f32    q7, q7, q6
    vsub.f32    q8, q8, q7
    vsub.f32    q9, q9, q8
    vsub.f32    q10, q10, q9
    vsub.f32    q11, q11, q10

    // loop 3
    vsub.f32    q0, q0, q11
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q1
    vsub.f32    q3, q3, q2
    vsub.f32    q4, q4, q3
    vsub.f32    q5, q5, q4
    vsub.f32    q6, q6, q5
    vsub.f32    q7, q7, q6
    vsub.f32    q8, q8, q7
    vsub.f32    q9, q9, q8
    vsub.f32    q10, q10, q9
    vsub.f32    q11, q11, q10

    // loop 4
    vsub.f32    q0, q0, q11
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q1
    vsub.f32    q3, q3, q2
    vsub.f32    q4, q4, q3
    vsub.f32    q5, q5, q4
    vsub.f32    q6, q6, q5
    vsub.f32    q7, q7, q6
    vsub.f32    q8, q8, q7
    vsub.f32    q9, q9, q8
    vsub.f32    q10, q10, q9
    vsub.f32    q11, q11, q10

    // loop 5
    vsub.f32    q0, q0, q11
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q1
    vsub.f32    q3, q3, q2
    vsub.f32    q4, q4, q3
    vsub.f32    q5, q5, q4
    vsub.f32    q6, q6, q5
    vsub.f32    q7, q7, q6
    vsub.f32    q8, q8, q7
    vsub.f32    q9, q9, q8
    vsub.f32    q10, q10, q9
    vsub.f32    q11, q11, q10

    subs    r0, r0, #1
    bne     vsubF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubF4MaxTest:

    vpush.64    {d8-d15}

vsubF4MaxTest_LOOP:

    // loop 1
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q0
    vsub.f32    q3, q3, q0
    vsub.f32    q4, q4, q0
    vsub.f32    q5, q5, q0
    vsub.f32    q6, q6, q0
    vsub.f32    q7, q7, q0
    vsub.f32    q8, q8, q0
    vsub.f32    q9, q9, q0
    vsub.f32    q10, q10, q0
    vsub.f32    q11, q11, q0
    vsub.f32    q12, q12, q0

    // loop 2
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q0
    vsub.f32    q3, q3, q0
    vsub.f32    q4, q4, q0
    vsub.f32    q5, q5, q0
    vsub.f32    q6, q6, q0
    vsub.f32    q7, q7, q0
    vsub.f32    q8, q8, q0
    vsub.f32    q9, q9, q0
    vsub.f32    q10, q10, q0
    vsub.f32    q11, q11, q0
    vsub.f32    q12, q12, q0

    // loop 3
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q0
    vsub.f32    q3, q3, q0
    vsub.f32    q4, q4, q0
    vsub.f32    q5, q5, q0
    vsub.f32    q6, q6, q0
    vsub.f32    q7, q7, q0
    vsub.f32    q8, q8, q0
    vsub.f32    q9, q9, q0
    vsub.f32    q10, q10, q0
    vsub.f32    q11, q11, q0
    vsub.f32    q12, q12, q0

    // loop 4
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q0
    vsub.f32    q3, q3, q0
    vsub.f32    q4, q4, q0
    vsub.f32    q5, q5, q0
    vsub.f32    q6, q6, q0
    vsub.f32    q7, q7, q0
    vsub.f32    q8, q8, q0
    vsub.f32    q9, q9, q0
    vsub.f32    q10, q10, q0
    vsub.f32    q11, q11, q0
    vsub.f32    q12, q12, q0

    // loop 5
    vsub.f32    q1, q1, q0
    vsub.f32    q2, q2, q0
    vsub.f32    q3, q3, q0
    vsub.f32    q4, q4, q0
    vsub.f32    q5, q5, q0
    vsub.f32    q6, q6, q0
    vsub.f32    q7, q7, q0
    vsub.f32    q8, q8, q0
    vsub.f32    q9, q9, q0
    vsub.f32    q10, q10, q0
    vsub.f32    q11, q11, q0
    vsub.f32    q12, q12, q0

    subs    r0, r0, #1
    bne     vsubF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubFMinTest:

    vpush.64    {d8-d15}

vsubFMinTest_LOOP:

    // loop 1
    vsub.f32    s0, s0, s11
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s1
    vsub.f32    s3, s3, s2
    vsub.f32    s4, s4, s3
    vsub.f32    s5, s5, s4
    vsub.f32    s6, s6, s5
    vsub.f32    s7, s7, s6
    vsub.f32    s8, s8, s7
    vsub.f32    s9, s9, s8
    vsub.f32    s10, s10, s9
    vsub.f32    s11, s11, s10

    // loop 2
    vsub.f32    s0, s0, s11
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s1
    vsub.f32    s3, s3, s2
    vsub.f32    s4, s4, s3
    vsub.f32    s5, s5, s4
    vsub.f32    s6, s6, s5
    vsub.f32    s7, s7, s6
    vsub.f32    s8, s8, s7
    vsub.f32    s9, s9, s8
    vsub.f32    s10, s10, s9
    vsub.f32    s11, s11, s10

    // loop 3
    vsub.f32    s0, s0, s11
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s1
    vsub.f32    s3, s3, s2
    vsub.f32    s4, s4, s3
    vsub.f32    s5, s5, s4
    vsub.f32    s6, s6, s5
    vsub.f32    s7, s7, s6
    vsub.f32    s8, s8, s7
    vsub.f32    s9, s9, s8
    vsub.f32    s10, s10, s9
    vsub.f32    s11, s11, s10

    // loop 4
    vsub.f32    s0, s0, s11
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s1
    vsub.f32    s3, s3, s2
    vsub.f32    s4, s4, s3
    vsub.f32    s5, s5, s4
    vsub.f32    s6, s6, s5
    vsub.f32    s7, s7, s6
    vsub.f32    s8, s8, s7
    vsub.f32    s9, s9, s8
    vsub.f32    s10, s10, s9
    vsub.f32    s11, s11, s10

    // loop 5
    vsub.f32    s0, s0, s11
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s1
    vsub.f32    s3, s3, s2
    vsub.f32    s4, s4, s3
    vsub.f32    s5, s5, s4
    vsub.f32    s6, s6, s5
    vsub.f32    s7, s7, s6
    vsub.f32    s8, s8, s7
    vsub.f32    s9, s9, s8
    vsub.f32    s10, s10, s9
    vsub.f32    s11, s11, s10

    subs    r0, r0, #1
    bne     vsubFMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubFMaxTest:

    vpush.64    {d8-d15}

vsubFMaxTest_LOOP:

    // loop 1
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s0
    vsub.f32    s3, s3, s0
    vsub.f32    s4, s4, s0
    vsub.f32    s5, s5, s0
    vsub.f32    s6, s6, s0
    vsub.f32    s7, s7, s0
    vsub.f32    s8, s8, s0
    vsub.f32    s9, s9, s0
    vsub.f32    s10, s10, s0
    vsub.f32    s11, s11, s0
    vsub.f32    s12, s12, s0

    // loop 2
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s0
    vsub.f32    s3, s3, s0
    vsub.f32    s4, s4, s0
    vsub.f32    s5, s5, s0
    vsub.f32    s6, s6, s0
    vsub.f32    s7, s7, s0
    vsub.f32    s8, s8, s0
    vsub.f32    s9, s9, s0
    vsub.f32    s10, s10, s0
    vsub.f32    s11, s11, s0
    vsub.f32    s12, s12, s0

    // loop 3
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s0
    vsub.f32    s3, s3, s0
    vsub.f32    s4, s4, s0
    vsub.f32    s5, s5, s0
    vsub.f32    s6, s6, s0
    vsub.f32    s7, s7, s0
    vsub.f32    s8, s8, s0
    vsub.f32    s9, s9, s0
    vsub.f32    s10, s10, s0
    vsub.f32    s11, s11, s0
    vsub.f32    s12, s12, s0

    // loop 4
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s0
    vsub.f32    s3, s3, s0
    vsub.f32    s4, s4, s0
    vsub.f32    s5, s5, s0
    vsub.f32    s6, s6, s0
    vsub.f32    s7, s7, s0
    vsub.f32    s8, s8, s0
    vsub.f32    s9, s9, s0
    vsub.f32    s10, s10, s0
    vsub.f32    s11, s11, s0
    vsub.f32    s12, s12, s0

    // loop 5
    vsub.f32    s1, s1, s0
    vsub.f32    s2, s2, s0
    vsub.f32    s3, s3, s0
    vsub.f32    s4, s4, s0
    vsub.f32    s5, s5, s0
    vsub.f32    s6, s6, s0
    vsub.f32    s7, s7, s0
    vsub.f32    s8, s8, s0
    vsub.f32    s9, s9, s0
    vsub.f32    s10, s10, s0
    vsub.f32    s11, s11, s0
    vsub.f32    s12, s12, s0

    subs    r0, r0, #1
    bne     vsubFMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubDMinTest:

    vpush.64    {d8-d15}

vsubDMinTest_LOOP:

    // loop 1
    vsub.f64    d0, d0, d11
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d1
    vsub.f64    d3, d3, d2
    vsub.f64    d4, d4, d3
    vsub.f64    d5, d5, d4
    vsub.f64    d6, d6, d5
    vsub.f64    d7, d7, d6
    vsub.f64    d8, d8, d7
    vsub.f64    d9, d9, d8
    vsub.f64    d10, d10, d9
    vsub.f64    d11, d11, d10

    // loop 2
    vsub.f64    d0, d0, d11
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d1
    vsub.f64    d3, d3, d2
    vsub.f64    d4, d4, d3
    vsub.f64    d5, d5, d4
    vsub.f64    d6, d6, d5
    vsub.f64    d7, d7, d6
    vsub.f64    d8, d8, d7
    vsub.f64    d9, d9, d8
    vsub.f64    d10, d10, d9
    vsub.f64    d11, d11, d10

    // loop 3
    vsub.f64    d0, d0, d11
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d1
    vsub.f64    d3, d3, d2
    vsub.f64    d4, d4, d3
    vsub.f64    d5, d5, d4
    vsub.f64    d6, d6, d5
    vsub.f64    d7, d7, d6
    vsub.f64    d8, d8, d7
    vsub.f64    d9, d9, d8
    vsub.f64    d10, d10, d9
    vsub.f64    d11, d11, d10

    // loop 4
    vsub.f64    d0, d0, d11
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d1
    vsub.f64    d3, d3, d2
    vsub.f64    d4, d4, d3
    vsub.f64    d5, d5, d4
    vsub.f64    d6, d6, d5
    vsub.f64    d7, d7, d6
    vsub.f64    d8, d8, d7
    vsub.f64    d9, d9, d8
    vsub.f64    d10, d10, d9
    vsub.f64    d11, d11, d10

    // loop 5
    vsub.f64    d0, d0, d11
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d1
    vsub.f64    d3, d3, d2
    vsub.f64    d4, d4, d3
    vsub.f64    d5, d5, d4
    vsub.f64    d6, d6, d5
    vsub.f64    d7, d7, d6
    vsub.f64    d8, d8, d7
    vsub.f64    d9, d9, d8
    vsub.f64    d10, d10, d9
    vsub.f64    d11, d11, d10

    subs    r0, r0, #1
    bne     vsubDMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubDMaxTest:

    vpush.64    {d8-d15}

vsubDMaxTest_LOOP:

    // loop 1
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d0
    vsub.f64    d3, d3, d0
    vsub.f64    d4, d4, d0
    vsub.f64    d5, d5, d0
    vsub.f64    d6, d6, d0
    vsub.f64    d7, d7, d0
    vsub.f64    d8, d8, d0
    vsub.f64    d9, d9, d0
    vsub.f64    d10, d10, d0
    vsub.f64    d11, d11, d0
    vsub.f64    d12, d12, d0

    // loop 2
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d0
    vsub.f64    d3, d3, d0
    vsub.f64    d4, d4, d0
    vsub.f64    d5, d5, d0
    vsub.f64    d6, d6, d0
    vsub.f64    d7, d7, d0
    vsub.f64    d8, d8, d0
    vsub.f64    d9, d9, d0
    vsub.f64    d10, d10, d0
    vsub.f64    d11, d11, d0
    vsub.f64    d12, d12, d0

    // loop 3
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d0
    vsub.f64    d3, d3, d0
    vsub.f64    d4, d4, d0
    vsub.f64    d5, d5, d0
    vsub.f64    d6, d6, d0
    vsub.f64    d7, d7, d0
    vsub.f64    d8, d8, d0
    vsub.f64    d9, d9, d0
    vsub.f64    d10, d10, d0
    vsub.f64    d11, d11, d0
    vsub.f64    d12, d12, d0

    // loop 4
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d0
    vsub.f64    d3, d3, d0
    vsub.f64    d4, d4, d0
    vsub.f64    d5, d5, d0
    vsub.f64    d6, d6, d0
    vsub.f64    d7, d7, d0
    vsub.f64    d8, d8, d0
    vsub.f64    d9, d9, d0
    vsub.f64    d10, d10, d0
    vsub.f64    d11, d11, d0
    vsub.f64    d12, d12, d0

    // loop 5
    vsub.f64    d1, d1, d0
    vsub.f64    d2, d2, d0
    vsub.f64    d3, d3, d0
    vsub.f64    d4, d4, d0
    vsub.f64    d5, d5, d0
    vsub.f64    d6, d6, d0
    vsub.f64    d7, d7, d0
    vsub.f64    d8, d8, d0
    vsub.f64    d9, d9, d0
    vsub.f64    d10, d10, d0
    vsub.f64    d11, d11, d0
    vsub.f64    d12, d12, d0

    subs    r0, r0, #1
    bne     vsubDMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vsubhnI4MinTest:

    vpush.64    {d8-d15}

vsubhnI4MinTest_LOOP:

    // loop 1
    vsubhn.i32  d0, q0, q11
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q1
    vsubhn.i32  d6, q3, q2
    vsubhn.i32  d8, q4, q3
    vsubhn.i32  d10, q5, q4
    vsubhn.i32  d12, q6, q5
    vsubhn.i32  d14, q7, q6
    vsubhn.i32  d16, q8, q7
    vsubhn.i32  d18, q9, q8
    vsubhn.i32  d20, q10, q9
    vsubhn.i32  d22, q11, q10

    // loop 2
    vsubhn.i32  d0, q0, q11
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q1
    vsubhn.i32  d6, q3, q2
    vsubhn.i32  d8, q4, q3
    vsubhn.i32  d10, q5, q4
    vsubhn.i32  d12, q6, q5
    vsubhn.i32  d14, q7, q6
    vsubhn.i32  d16, q8, q7
    vsubhn.i32  d18, q9, q8
    vsubhn.i32  d20, q10, q9
    vsubhn.i32  d22, q11, q10

    // loop 3
    vsubhn.i32  d0, q0, q11
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q1
    vsubhn.i32  d6, q3, q2
    vsubhn.i32  d8, q4, q3
    vsubhn.i32  d10, q5, q4
    vsubhn.i32  d12, q6, q5
    vsubhn.i32  d14, q7, q6
    vsubhn.i32  d16, q8, q7
    vsubhn.i32  d18, q9, q8
    vsubhn.i32  d20, q10, q9
    vsubhn.i32  d22, q11, q10

    // loop 4
    vsubhn.i32  d0, q0, q11
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q1
    vsubhn.i32  d6, q3, q2
    vsubhn.i32  d8, q4, q3
    vsubhn.i32  d10, q5, q4
    vsubhn.i32  d12, q6, q5
    vsubhn.i32  d14, q7, q6
    vsubhn.i32  d16, q8, q7
    vsubhn.i32  d18, q9, q8
    vsubhn.i32  d20, q10, q9
    vsubhn.i32  d22, q11, q10

    // loop 5
    vsubhn.i32  d0, q0, q11
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q1
    vsubhn.i32  d6, q3, q2
    vsubhn.i32  d8, q4, q3
    vsubhn.i32  d10, q5, q4
    vsubhn.i32  d12, q6, q5
    vsubhn.i32  d14, q7, q6
    vsubhn.i32  d16, q8, q7
    vsubhn.i32  d18, q9, q8
    vsubhn.i32  d20, q10, q9
    vsubhn.i32  d22, q11, q10

    subs    r0, r0, #1
    bne     vsubhnI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubhnI4MaxTest:

    vpush.64    {d8-d15}

vsubhnI4MaxTest_LOOP:

    // loop 1
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q0
    vsubhn.i32  d6, q3, q0
    vsubhn.i32  d8, q4, q0
    vsubhn.i32  d10, q5, q0
    vsubhn.i32  d12, q6, q0
    vsubhn.i32  d14, q7, q0
    vsubhn.i32  d16, q8, q0
    vsubhn.i32  d18, q9, q0
    vsubhn.i32  d20, q10, q0
    vsubhn.i32  d22, q11, q0
    vsubhn.i32  d24, q12, q0

    // loop 2
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q0
    vsubhn.i32  d6, q3, q0
    vsubhn.i32  d8, q4, q0
    vsubhn.i32  d10, q5, q0
    vsubhn.i32  d12, q6, q0
    vsubhn.i32  d14, q7, q0
    vsubhn.i32  d16, q8, q0
    vsubhn.i32  d18, q9, q0
    vsubhn.i32  d20, q10, q0
    vsubhn.i32  d22, q11, q0
    vsubhn.i32  d24, q12, q0

    // loop 3
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q0
    vsubhn.i32  d6, q3, q0
    vsubhn.i32  d8, q4, q0
    vsubhn.i32  d10, q5, q0
    vsubhn.i32  d12, q6, q0
    vsubhn.i32  d14, q7, q0
    vsubhn.i32  d16, q8, q0
    vsubhn.i32  d18, q9, q0
    vsubhn.i32  d20, q10, q0
    vsubhn.i32  d22, q11, q0
    vsubhn.i32  d24, q12, q0

    // loop 4
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q0
    vsubhn.i32  d6, q3, q0
    vsubhn.i32  d8, q4, q0
    vsubhn.i32  d10, q5, q0
    vsubhn.i32  d12, q6, q0
    vsubhn.i32  d14, q7, q0
    vsubhn.i32  d16, q8, q0
    vsubhn.i32  d18, q9, q0
    vsubhn.i32  d20, q10, q0
    vsubhn.i32  d22, q11, q0
    vsubhn.i32  d24, q12, q0

    // loop 5
    vsubhn.i32  d2, q1, q0
    vsubhn.i32  d4, q2, q0
    vsubhn.i32  d6, q3, q0
    vsubhn.i32  d8, q4, q0
    vsubhn.i32  d10, q5, q0
    vsubhn.i32  d12, q6, q0
    vsubhn.i32  d14, q7, q0
    vsubhn.i32  d16, q8, q0
    vsubhn.i32  d18, q9, q0
    vsubhn.i32  d20, q10, q0
    vsubhn.i32  d22, q11, q0
    vsubhn.i32  d24, q12, q0

    subs    r0, r0, #1
    bne     vsubhnI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vsublI4MinTest:

    vpush.64    {d8-d15}

vsublI4MinTest_LOOP:

    // loop 1
    vsubl.s32   q1, d2, d24
    vsubl.s32   q2, d4, d2
    vsubl.s32   q3, d6, d4
    vsubl.s32   q4, d8, d6
    vsubl.s32   q5, d10, d8
    vsubl.s32   q6, d12, d10
    vsubl.s32   q7, d14, d12
    vsubl.s32   q8, d16, d14
    vsubl.s32   q9, d18, d16
    vsubl.s32   q10, d20, d18
    vsubl.s32   q11, d22, d20
    vsubl.s32   q12, d24, d22

    // loop 2
    vsubl.s32   q1, d2, d24
    vsubl.s32   q2, d4, d2
    vsubl.s32   q3, d6, d4
    vsubl.s32   q4, d8, d6
    vsubl.s32   q5, d10, d8
    vsubl.s32   q6, d12, d10
    vsubl.s32   q7, d14, d12
    vsubl.s32   q8, d16, d14
    vsubl.s32   q9, d18, d16
    vsubl.s32   q10, d20, d18
    vsubl.s32   q11, d22, d20
    vsubl.s32   q12, d24, d22

    // loop 3
    vsubl.s32   q1, d2, d24
    vsubl.s32   q2, d4, d2
    vsubl.s32   q3, d6, d4
    vsubl.s32   q4, d8, d6
    vsubl.s32   q5, d10, d8
    vsubl.s32   q6, d12, d10
    vsubl.s32   q7, d14, d12
    vsubl.s32   q8, d16, d14
    vsubl.s32   q9, d18, d16
    vsubl.s32   q10, d20, d18
    vsubl.s32   q11, d22, d20
    vsubl.s32   q12, d24, d22

    // loop 4
    vsubl.s32   q1, d2, d24
    vsubl.s32   q2, d4, d2
    vsubl.s32   q3, d6, d4
    vsubl.s32   q4, d8, d6
    vsubl.s32   q5, d10, d8
    vsubl.s32   q6, d12, d10
    vsubl.s32   q7, d14, d12
    vsubl.s32   q8, d16, d14
    vsubl.s32   q9, d18, d16
    vsubl.s32   q10, d20, d18
    vsubl.s32   q11, d22, d20
    vsubl.s32   q12, d24, d22

    // loop 5
    vsubl.s32   q1, d2, d24
    vsubl.s32   q2, d4, d2
    vsubl.s32   q3, d6, d4
    vsubl.s32   q4, d8, d6
    vsubl.s32   q5, d10, d8
    vsubl.s32   q6, d12, d10
    vsubl.s32   q7, d14, d12
    vsubl.s32   q8, d16, d14
    vsubl.s32   q9, d18, d16
    vsubl.s32   q10, d20, d18
    vsubl.s32   q11, d22, d20
    vsubl.s32   q12, d24, d22

    subs    r0, r0, #1
    bne     vsublI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsublI4MaxTest:

    vpush.64    {d8-d15}

vsublI4MaxTest_LOOP:

    // loop 1
    vsubl.s32   q1, d2, d0
    vsubl.s32   q2, d4, d0
    vsubl.s32   q3, d6, d0
    vsubl.s32   q4, d8, d0
    vsubl.s32   q5, d10, d0
    vsubl.s32   q6, d12, d0
    vsubl.s32   q7, d14, d0
    vsubl.s32   q8, d16, d0
    vsubl.s32   q9, d18, d0
    vsubl.s32   q10, d20, d0
    vsubl.s32   q11, d22, d0
    vsubl.s32   q12, d24, d0

    // loop 2
    vsubl.s32   q1, d2, d0
    vsubl.s32   q2, d4, d0
    vsubl.s32   q3, d6, d0
    vsubl.s32   q4, d8, d0
    vsubl.s32   q5, d10, d0
    vsubl.s32   q6, d12, d0
    vsubl.s32   q7, d14, d0
    vsubl.s32   q8, d16, d0
    vsubl.s32   q9, d18, d0
    vsubl.s32   q10, d20, d0
    vsubl.s32   q11, d22, d0
    vsubl.s32   q12, d24, d0

    // loop 3
    vsubl.s32   q1, d2, d0
    vsubl.s32   q2, d4, d0
    vsubl.s32   q3, d6, d0
    vsubl.s32   q4, d8, d0
    vsubl.s32   q5, d10, d0
    vsubl.s32   q6, d12, d0
    vsubl.s32   q7, d14, d0
    vsubl.s32   q8, d16, d0
    vsubl.s32   q9, d18, d0
    vsubl.s32   q10, d20, d0
    vsubl.s32   q11, d22, d0
    vsubl.s32   q12, d24, d0

    // loop 4
    vsubl.s32   q1, d2, d0
    vsubl.s32   q2, d4, d0
    vsubl.s32   q3, d6, d0
    vsubl.s32   q4, d8, d0
    vsubl.s32   q5, d10, d0
    vsubl.s32   q6, d12, d0
    vsubl.s32   q7, d14, d0
    vsubl.s32   q8, d16, d0
    vsubl.s32   q9, d18, d0
    vsubl.s32   q10, d20, d0
    vsubl.s32   q11, d22, d0
    vsubl.s32   q12, d24, d0

    // loop 5
    vsubl.s32   q1, d2, d0
    vsubl.s32   q2, d4, d0
    vsubl.s32   q3, d6, d0
    vsubl.s32   q4, d8, d0
    vsubl.s32   q5, d10, d0
    vsubl.s32   q6, d12, d0
    vsubl.s32   q7, d14, d0
    vsubl.s32   q8, d16, d0
    vsubl.s32   q9, d18, d0
    vsubl.s32   q10, d20, d0
    vsubl.s32   q11, d22, d0
    vsubl.s32   q12, d24, d0

    subs    r0, r0, #1
    bne     vsublI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vsubwI4MinTest:

    vpush.64    {d8-d15}

vsubwI4MinTest_LOOP:

    // loop 1
    vsubw.s32   q0, q0, d22
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d2
    vsubw.s32   q3, q3, d4
    vsubw.s32   q4, q4, d6
    vsubw.s32   q5, q5, d8
    vsubw.s32   q6, q6, d10
    vsubw.s32   q7, q7, d12
    vsubw.s32   q8, q8, d14
    vsubw.s32   q9, q9, d16
    vsubw.s32   q10, q10, d18
    vsubw.s32   q11, q11, d20

    // loop 2
    vsubw.s32   q0, q0, d22
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d2
    vsubw.s32   q3, q3, d4
    vsubw.s32   q4, q4, d6
    vsubw.s32   q5, q5, d8
    vsubw.s32   q6, q6, d10
    vsubw.s32   q7, q7, d12
    vsubw.s32   q8, q8, d14
    vsubw.s32   q9, q9, d16
    vsubw.s32   q10, q10, d18
    vsubw.s32   q11, q11, d20

    // loop 3
    vsubw.s32   q0, q0, d22
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d2
    vsubw.s32   q3, q3, d4
    vsubw.s32   q4, q4, d6
    vsubw.s32   q5, q5, d8
    vsubw.s32   q6, q6, d10
    vsubw.s32   q7, q7, d12
    vsubw.s32   q8, q8, d14
    vsubw.s32   q9, q9, d16
    vsubw.s32   q10, q10, d18
    vsubw.s32   q11, q11, d20

    // loop 4
    vsubw.s32   q0, q0, d22
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d2
    vsubw.s32   q3, q3, d4
    vsubw.s32   q4, q4, d6
    vsubw.s32   q5, q5, d8
    vsubw.s32   q6, q6, d10
    vsubw.s32   q7, q7, d12
    vsubw.s32   q8, q8, d14
    vsubw.s32   q9, q9, d16
    vsubw.s32   q10, q10, d18
    vsubw.s32   q11, q11, d20

    // loop 5
    vsubw.s32   q0, q0, d22
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d2
    vsubw.s32   q3, q3, d4
    vsubw.s32   q4, q4, d6
    vsubw.s32   q5, q5, d8
    vsubw.s32   q6, q6, d10
    vsubw.s32   q7, q7, d12
    vsubw.s32   q8, q8, d14
    vsubw.s32   q9, q9, d16
    vsubw.s32   q10, q10, d18
    vsubw.s32   q11, q11, d20

    subs    r0, r0, #1
    bne     vsubwI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vsubwI4MaxTest:

    vpush.64    {d8-d15}

vsubwI4MaxTest_LOOP:

    // loop 1
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d0
    vsubw.s32   q3, q3, d0
    vsubw.s32   q4, q4, d0
    vsubw.s32   q5, q5, d0
    vsubw.s32   q6, q6, d0
    vsubw.s32   q7, q7, d0
    vsubw.s32   q8, q8, d0
    vsubw.s32   q9, q9, d0
    vsubw.s32   q10, q10, d0
    vsubw.s32   q11, q11, d0
    vsubw.s32   q12, q12, d0

    // loop 2
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d0
    vsubw.s32   q3, q3, d0
    vsubw.s32   q4, q4, d0
    vsubw.s32   q5, q5, d0
    vsubw.s32   q6, q6, d0
    vsubw.s32   q7, q7, d0
    vsubw.s32   q8, q8, d0
    vsubw.s32   q9, q9, d0
    vsubw.s32   q10, q10, d0
    vsubw.s32   q11, q11, d0
    vsubw.s32   q12, q12, d0

    // loop 3
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d0
    vsubw.s32   q3, q3, d0
    vsubw.s32   q4, q4, d0
    vsubw.s32   q5, q5, d0
    vsubw.s32   q6, q6, d0
    vsubw.s32   q7, q7, d0
    vsubw.s32   q8, q8, d0
    vsubw.s32   q9, q9, d0
    vsubw.s32   q10, q10, d0
    vsubw.s32   q11, q11, d0
    vsubw.s32   q12, q12, d0

    // loop 4
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d0
    vsubw.s32   q3, q3, d0
    vsubw.s32   q4, q4, d0
    vsubw.s32   q5, q5, d0
    vsubw.s32   q6, q6, d0
    vsubw.s32   q7, q7, d0
    vsubw.s32   q8, q8, d0
    vsubw.s32   q9, q9, d0
    vsubw.s32   q10, q10, d0
    vsubw.s32   q11, q11, d0
    vsubw.s32   q12, q12, d0

    // loop 5
    vsubw.s32   q1, q1, d0
    vsubw.s32   q2, q2, d0
    vsubw.s32   q3, q3, d0
    vsubw.s32   q4, q4, d0
    vsubw.s32   q5, q5, d0
    vsubw.s32   q6, q6, d0
    vsubw.s32   q7, q7, d0
    vsubw.s32   q8, q8, d0
    vsubw.s32   q9, q9, d0
    vsubw.s32   q10, q10, d0
    vsubw.s32   q11, q11, d0
    vsubw.s32   q12, q12, d0

    subs    r0, r0, #1
    bne     vsubwI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vswpMinTest:

    vpush.64    {d8-d15}

vswpMinTest_LOOP:

    // loop 1
    vswp        q0, q11
    vswp        q1, q0
    vswp        q2, q1
    vswp        q3, q2
    vswp        q4, q3
    vswp        q5, q4
    vswp        q6, q5
    vswp        q7, q6
    vswp        q8, q7
    vswp        q9, q8
    vswp        q10, q9
    vswp        q11, q10

    // loop 2
    vswp        q0, q11
    vswp        q1, q0
    vswp        q2, q1
    vswp        q3, q2
    vswp        q4, q3
    vswp        q5, q4
    vswp        q6, q5
    vswp        q7, q6
    vswp        q8, q7
    vswp        q9, q8
    vswp        q10, q9
    vswp        q11, q10

    // loop 3
    vswp        q0, q11
    vswp        q1, q0
    vswp        q2, q1
    vswp        q3, q2
    vswp        q4, q3
    vswp        q5, q4
    vswp        q6, q5
    vswp        q7, q6
    vswp        q8, q7
    vswp        q9, q8
    vswp        q10, q9
    vswp        q11, q10

    // loop 4
    vswp        q0, q11
    vswp        q1, q0
    vswp        q2, q1
    vswp        q3, q2
    vswp        q4, q3
    vswp        q5, q4
    vswp        q6, q5
    vswp        q7, q6
    vswp        q8, q7
    vswp        q9, q8
    vswp        q10, q9
    vswp        q11, q10

    // loop 5
    vswp        q0, q11
    vswp        q1, q0
    vswp        q2, q1
    vswp        q3, q2
    vswp        q4, q3
    vswp        q5, q4
    vswp        q6, q5
    vswp        q7, q6
    vswp        q8, q7
    vswp        q9, q8
    vswp        q10, q9
    vswp        q11, q10

    subs    r0, r0, #1
    bne     vswpMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vswpMaxTest:

    vpush.64    {d8-d15}

vswpMaxTest_LOOP:

    // loop 1
    vswp        q1, q0
    vswp        q2, q0
    vswp        q3, q0
    vswp        q4, q0
    vswp        q5, q0
    vswp        q6, q0
    vswp        q7, q0
    vswp        q8, q0
    vswp        q9, q0
    vswp        q10, q0
    vswp        q11, q0
    vswp        q12, q0

    // loop 2
    vswp        q1, q0
    vswp        q2, q0
    vswp        q3, q0
    vswp        q4, q0
    vswp        q5, q0
    vswp        q6, q0
    vswp        q7, q0
    vswp        q8, q0
    vswp        q9, q0
    vswp        q10, q0
    vswp        q11, q0
    vswp        q12, q0

    // loop 3
    vswp        q1, q0
    vswp        q2, q0
    vswp        q3, q0
    vswp        q4, q0
    vswp        q5, q0
    vswp        q6, q0
    vswp        q7, q0
    vswp        q8, q0
    vswp        q9, q0
    vswp        q10, q0
    vswp        q11, q0
    vswp        q12, q0

    // loop 4
    vswp        q1, q0
    vswp        q2, q0
    vswp        q3, q0
    vswp        q4, q0
    vswp        q5, q0
    vswp        q6, q0
    vswp        q7, q0
    vswp        q8, q0
    vswp        q9, q0
    vswp        q10, q0
    vswp        q11, q0
    vswp        q12, q0

    // loop 5
    vswp        q1, q0
    vswp        q2, q0
    vswp        q3, q0
    vswp        q4, q0
    vswp        q5, q0
    vswp        q6, q0
    vswp        q7, q0
    vswp        q8, q0
    vswp        q9, q0
    vswp        q10, q0
    vswp        q11, q0
    vswp        q12, q0

    subs    r0, r0, #1
    bne     vswpMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vtblMinTest:

    mov         r1, #0x0403
    mov         r2, #0x0007
    orr         r1, r1, #0x00050000
    orr         r2, r2, #0x0800
    orr         r1, r1, #0x06000000
    orr         r2, r2, #0x00090000
    vmov.32     d30[0], r1
    orr         r2, r2, #0x0A000000
    vmov.32     d30[1], r2

    vpush.64    {d8-d15}

vtblMinTest_LOOP:

    // loop 1
    vtbx.8      d0, {d8, d9, d10, d11}, d30
    vtbx.8      d1, {d0, d1, d2, d3}, d30
    vtbx.8      d2, {d1, d2, d3, d4}, d30
    vtbx.8      d3, {d2, d3, d4, d5}, d30
    vtbx.8      d4, {d3, d4, d5, d6}, d30
    vtbx.8      d5, {d4, d5, d6, d7}, d30
    vtbx.8      d6, {d5, d6, d7, d8}, d30
    vtbx.8      d7, {d6, d7, d8, d9}, d30
    vtbx.8      d8, {d6, d7, d8, d9}, d30
    vtbx.8      d9, {d7, d8, d9, d10}, d30
    vtbx.8      d10, {d7, d8, d9, d10}, d30
    vtbx.8      d11, {d8, d9, d10, d11}, d30

    // loop 2
    vtbx.8      d0, {d8, d9, d10, d11}, d30
    vtbx.8      d1, {d0, d1, d2, d3}, d30
    vtbx.8      d2, {d1, d2, d3, d4}, d30
    vtbx.8      d3, {d2, d3, d4, d5}, d30
    vtbx.8      d4, {d3, d4, d5, d6}, d30
    vtbx.8      d5, {d4, d5, d6, d7}, d30
    vtbx.8      d6, {d5, d6, d7, d8}, d30
    vtbx.8      d7, {d6, d7, d8, d9}, d30
    vtbx.8      d8, {d6, d7, d8, d9}, d30
    vtbx.8      d9, {d7, d8, d9, d10}, d30
    vtbx.8      d10, {d7, d8, d9, d10}, d30
    vtbx.8      d11, {d8, d9, d10, d11}, d30

    // loop 3
    vtbx.8      d0, {d8, d9, d10, d11}, d30
    vtbx.8      d1, {d0, d1, d2, d3}, d30
    vtbx.8      d2, {d1, d2, d3, d4}, d30
    vtbx.8      d3, {d2, d3, d4, d5}, d30
    vtbx.8      d4, {d3, d4, d5, d6}, d30
    vtbx.8      d5, {d4, d5, d6, d7}, d30
    vtbx.8      d6, {d5, d6, d7, d8}, d30
    vtbx.8      d7, {d6, d7, d8, d9}, d30
    vtbx.8      d8, {d6, d7, d8, d9}, d30
    vtbx.8      d9, {d7, d8, d9, d10}, d30
    vtbx.8      d10, {d7, d8, d9, d10}, d30
    vtbx.8      d11, {d8, d9, d10, d11}, d30

    // loop 4
    vtbx.8      d0, {d8, d9, d10, d11}, d30
    vtbx.8      d1, {d0, d1, d2, d3}, d30
    vtbx.8      d2, {d1, d2, d3, d4}, d30
    vtbx.8      d3, {d2, d3, d4, d5}, d30
    vtbx.8      d4, {d3, d4, d5, d6}, d30
    vtbx.8      d5, {d4, d5, d6, d7}, d30
    vtbx.8      d6, {d5, d6, d7, d8}, d30
    vtbx.8      d7, {d6, d7, d8, d9}, d30
    vtbx.8      d8, {d6, d7, d8, d9}, d30
    vtbx.8      d9, {d7, d8, d9, d10}, d30
    vtbx.8      d10, {d7, d8, d9, d10}, d30
    vtbx.8      d11, {d8, d9, d10, d11}, d30

    // loop 5
    vtbx.8      d0, {d8, d9, d10, d11}, d30
    vtbx.8      d1, {d0, d1, d2, d3}, d30
    vtbx.8      d2, {d1, d2, d3, d4}, d30
    vtbx.8      d3, {d2, d3, d4, d5}, d30
    vtbx.8      d4, {d3, d4, d5, d6}, d30
    vtbx.8      d5, {d4, d5, d6, d7}, d30
    vtbx.8      d6, {d5, d6, d7, d8}, d30
    vtbx.8      d7, {d6, d7, d8, d9}, d30
    vtbx.8      d8, {d6, d7, d8, d9}, d30
    vtbx.8      d9, {d7, d8, d9, d10}, d30
    vtbx.8      d10, {d7, d8, d9, d10}, d30
    vtbx.8      d11, {d8, d9, d10, d11}, d30

    subs    r0, r0, #1
    bne     vtblMinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vtblMaxTest:

    mov         r1, #0x0403
    mov         r2, #0x0007
    orr         r1, r1, #0x00050000
    orr         r2, r2, #0x0800
    orr         r1, r1, #0x06000000
    orr         r2, r2, #0x00090000
    vmov.32     d30[0], r1
    orr         r2, r2, #0x0A000000
    vmov.32     d30[1], r2

    vpush.64    {d8-d15}

vtblMaxTest_LOOP:

    // loop 1
    vtbx.8      d4, {d0, d1, d2, d3}, d30
    vtbx.8      d5, {d0, d1, d2, d3}, d30
    vtbx.8      d6, {d0, d1, d2, d3}, d30
    vtbx.8      d7, {d0, d1, d2, d3}, d30
    vtbx.8      d8, {d0, d1, d2, d3}, d30
    vtbx.8      d9, {d0, d1, d2, d3}, d30
    vtbx.8      d10, {d0, d1, d2, d3}, d30
    vtbx.8      d11, {d0, d1, d2, d3}, d30
    vtbx.8      d12, {d0, d1, d2, d3}, d30
    vtbx.8      d13, {d0, d1, d2, d3}, d30
    vtbx.8      d14, {d0, d1, d2, d3}, d30
    vtbx.8      d15, {d0, d1, d2, d3}, d30

    // loop 2
    vtbx.8      d4, {d0, d1, d2, d3}, d30
    vtbx.8      d5, {d0, d1, d2, d3}, d30
    vtbx.8      d6, {d0, d1, d2, d3}, d30
    vtbx.8      d7, {d0, d1, d2, d3}, d30
    vtbx.8      d8, {d0, d1, d2, d3}, d30
    vtbx.8      d9, {d0, d1, d2, d3}, d30
    vtbx.8      d10, {d0, d1, d2, d3}, d30
    vtbx.8      d11, {d0, d1, d2, d3}, d30
    vtbx.8      d12, {d0, d1, d2, d3}, d30
    vtbx.8      d13, {d0, d1, d2, d3}, d30
    vtbx.8      d14, {d0, d1, d2, d3}, d30
    vtbx.8      d15, {d0, d1, d2, d3}, d30

    // loop 3
    vtbx.8      d4, {d0, d1, d2, d3}, d30
    vtbx.8      d5, {d0, d1, d2, d3}, d30
    vtbx.8      d6, {d0, d1, d2, d3}, d30
    vtbx.8      d7, {d0, d1, d2, d3}, d30
    vtbx.8      d8, {d0, d1, d2, d3}, d30
    vtbx.8      d9, {d0, d1, d2, d3}, d30
    vtbx.8      d10, {d0, d1, d2, d3}, d30
    vtbx.8      d11, {d0, d1, d2, d3}, d30
    vtbx.8      d12, {d0, d1, d2, d3}, d30
    vtbx.8      d13, {d0, d1, d2, d3}, d30
    vtbx.8      d14, {d0, d1, d2, d3}, d30
    vtbx.8      d15, {d0, d1, d2, d3}, d30

    // loop 4
    vtbx.8      d4, {d0, d1, d2, d3}, d30
    vtbx.8      d5, {d0, d1, d2, d3}, d30
    vtbx.8      d6, {d0, d1, d2, d3}, d30
    vtbx.8      d7, {d0, d1, d2, d3}, d30
    vtbx.8      d8, {d0, d1, d2, d3}, d30
    vtbx.8      d9, {d0, d1, d2, d3}, d30
    vtbx.8      d10, {d0, d1, d2, d3}, d30
    vtbx.8      d11, {d0, d1, d2, d3}, d30
    vtbx.8      d12, {d0, d1, d2, d3}, d30
    vtbx.8      d13, {d0, d1, d2, d3}, d30
    vtbx.8      d14, {d0, d1, d2, d3}, d30
    vtbx.8      d15, {d0, d1, d2, d3}, d30

    // loop 5
    vtbx.8      d4, {d0, d1, d2, d3}, d30
    vtbx.8      d5, {d0, d1, d2, d3}, d30
    vtbx.8      d6, {d0, d1, d2, d3}, d30
    vtbx.8      d7, {d0, d1, d2, d3}, d30
    vtbx.8      d8, {d0, d1, d2, d3}, d30
    vtbx.8      d9, {d0, d1, d2, d3}, d30
    vtbx.8      d10, {d0, d1, d2, d3}, d30
    vtbx.8      d11, {d0, d1, d2, d3}, d30
    vtbx.8      d12, {d0, d1, d2, d3}, d30
    vtbx.8      d13, {d0, d1, d2, d3}, d30
    vtbx.8      d14, {d0, d1, d2, d3}, d30
    vtbx.8      d15, {d0, d1, d2, d3}, d30

    subs    r0, r0, #1
    bne     vtblMaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vtrnI4MinTest:

    vpush.64    {d8-d15}

vtrnI4MinTest_LOOP:

    // loop 1
    vtrn.32     q0, q11
    vtrn.32     q1, q0
    vtrn.32     q2, q1
    vtrn.32     q3, q2
    vtrn.32     q4, q3
    vtrn.32     q5, q4
    vtrn.32     q6, q5
    vtrn.32     q7, q6
    vtrn.32     q8, q7
    vtrn.32     q9, q8
    vtrn.32     q10, q9
    vtrn.32     q11, q10

    // loop 2
    vtrn.32     q0, q11
    vtrn.32     q1, q0
    vtrn.32     q2, q1
    vtrn.32     q3, q2
    vtrn.32     q4, q3
    vtrn.32     q5, q4
    vtrn.32     q6, q5
    vtrn.32     q7, q6
    vtrn.32     q8, q7
    vtrn.32     q9, q8
    vtrn.32     q10, q9
    vtrn.32     q11, q10

    // loop 3
    vtrn.32     q0, q11
    vtrn.32     q1, q0
    vtrn.32     q2, q1
    vtrn.32     q3, q2
    vtrn.32     q4, q3
    vtrn.32     q5, q4
    vtrn.32     q6, q5
    vtrn.32     q7, q6
    vtrn.32     q8, q7
    vtrn.32     q9, q8
    vtrn.32     q10, q9
    vtrn.32     q11, q10

    // loop 4
    vtrn.32     q0, q11
    vtrn.32     q1, q0
    vtrn.32     q2, q1
    vtrn.32     q3, q2
    vtrn.32     q4, q3
    vtrn.32     q5, q4
    vtrn.32     q6, q5
    vtrn.32     q7, q6
    vtrn.32     q8, q7
    vtrn.32     q9, q8
    vtrn.32     q10, q9
    vtrn.32     q11, q10

    // loop 5
    vtrn.32     q0, q11
    vtrn.32     q1, q0
    vtrn.32     q2, q1
    vtrn.32     q3, q2
    vtrn.32     q4, q3
    vtrn.32     q5, q4
    vtrn.32     q6, q5
    vtrn.32     q7, q6
    vtrn.32     q8, q7
    vtrn.32     q9, q8
    vtrn.32     q10, q9
    vtrn.32     q11, q10

    subs    r0, r0, #1
    bne     vtrnI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vtrnI4MaxTest:

    vpush.64    {d8-d15}

vtrnI4MaxTest_LOOP:

    // loop 1
    vtrn.32     q1, q1
    vtrn.32     q2, q2
    vtrn.32     q3, q3
    vtrn.32     q4, q4
    vtrn.32     q5, q5
    vtrn.32     q6, q6
    vtrn.32     q7, q7
    vtrn.32     q8, q8
    vtrn.32     q9, q9
    vtrn.32     q10, q10
    vtrn.32     q11, q11
    vtrn.32     q12, q12

    // loop 2
    vtrn.32     q1, q1
    vtrn.32     q2, q2
    vtrn.32     q3, q3
    vtrn.32     q4, q4
    vtrn.32     q5, q5
    vtrn.32     q6, q6
    vtrn.32     q7, q7
    vtrn.32     q8, q8
    vtrn.32     q9, q9
    vtrn.32     q10, q10
    vtrn.32     q11, q11
    vtrn.32     q12, q12

    // loop 3
    vtrn.32     q1, q1
    vtrn.32     q2, q2
    vtrn.32     q3, q3
    vtrn.32     q4, q4
    vtrn.32     q5, q5
    vtrn.32     q6, q6
    vtrn.32     q7, q7
    vtrn.32     q8, q8
    vtrn.32     q9, q9
    vtrn.32     q10, q10
    vtrn.32     q11, q11
    vtrn.32     q12, q12

    // loop 4
    vtrn.32     q1, q1
    vtrn.32     q2, q2
    vtrn.32     q3, q3
    vtrn.32     q4, q4
    vtrn.32     q5, q5
    vtrn.32     q6, q6
    vtrn.32     q7, q7
    vtrn.32     q8, q8
    vtrn.32     q9, q9
    vtrn.32     q10, q10
    vtrn.32     q11, q11
    vtrn.32     q12, q12

    // loop 5
    vtrn.32     q1, q1
    vtrn.32     q2, q2
    vtrn.32     q3, q3
    vtrn.32     q4, q4
    vtrn.32     q5, q5
    vtrn.32     q6, q6
    vtrn.32     q7, q7
    vtrn.32     q8, q8
    vtrn.32     q9, q9
    vtrn.32     q10, q10
    vtrn.32     q11, q11
    vtrn.32     q12, q12

    subs    r0, r0, #1
    bne     vtrnI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vtstI4MinTest:

    vpush.64    {d8-d15}

vtstI4MinTest_LOOP:

    // loop 1
    vtst.32     q0, q0, q11
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q1
    vtst.32     q3, q3, q2
    vtst.32     q4, q4, q3
    vtst.32     q5, q5, q4
    vtst.32     q6, q6, q5
    vtst.32     q7, q7, q6
    vtst.32     q8, q8, q7
    vtst.32     q9, q9, q8
    vtst.32     q10, q10, q9
    vtst.32     q11, q11, q10

    // loop 2
    vtst.32     q0, q0, q11
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q1
    vtst.32     q3, q3, q2
    vtst.32     q4, q4, q3
    vtst.32     q5, q5, q4
    vtst.32     q6, q6, q5
    vtst.32     q7, q7, q6
    vtst.32     q8, q8, q7
    vtst.32     q9, q9, q8
    vtst.32     q10, q10, q9
    vtst.32     q11, q11, q10

    // loop 3
    vtst.32     q0, q0, q11
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q1
    vtst.32     q3, q3, q2
    vtst.32     q4, q4, q3
    vtst.32     q5, q5, q4
    vtst.32     q6, q6, q5
    vtst.32     q7, q7, q6
    vtst.32     q8, q8, q7
    vtst.32     q9, q9, q8
    vtst.32     q10, q10, q9
    vtst.32     q11, q11, q10

    // loop 4
    vtst.32     q0, q0, q11
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q1
    vtst.32     q3, q3, q2
    vtst.32     q4, q4, q3
    vtst.32     q5, q5, q4
    vtst.32     q6, q6, q5
    vtst.32     q7, q7, q6
    vtst.32     q8, q8, q7
    vtst.32     q9, q9, q8
    vtst.32     q10, q10, q9
    vtst.32     q11, q11, q10

    // loop 5
    vtst.32     q0, q0, q11
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q1
    vtst.32     q3, q3, q2
    vtst.32     q4, q4, q3
    vtst.32     q5, q5, q4
    vtst.32     q6, q6, q5
    vtst.32     q7, q7, q6
    vtst.32     q8, q8, q7
    vtst.32     q9, q9, q8
    vtst.32     q10, q10, q9
    vtst.32     q11, q11, q10

    subs    r0, r0, #1
    bne     vtstI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vtstI4MaxTest:

    vpush.64    {d8-d15}

vtstI4MaxTest_LOOP:

    // loop 1
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q0
    vtst.32     q3, q3, q0
    vtst.32     q4, q4, q0
    vtst.32     q5, q5, q0
    vtst.32     q6, q6, q0
    vtst.32     q7, q7, q0
    vtst.32     q8, q8, q0
    vtst.32     q9, q9, q0
    vtst.32     q10, q10, q0
    vtst.32     q11, q11, q0
    vtst.32     q12, q12, q0

    // loop 2
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q0
    vtst.32     q3, q3, q0
    vtst.32     q4, q4, q0
    vtst.32     q5, q5, q0
    vtst.32     q6, q6, q0
    vtst.32     q7, q7, q0
    vtst.32     q8, q8, q0
    vtst.32     q9, q9, q0
    vtst.32     q10, q10, q0
    vtst.32     q11, q11, q0
    vtst.32     q12, q12, q0

    // loop 3
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q0
    vtst.32     q3, q3, q0
    vtst.32     q4, q4, q0
    vtst.32     q5, q5, q0
    vtst.32     q6, q6, q0
    vtst.32     q7, q7, q0
    vtst.32     q8, q8, q0
    vtst.32     q9, q9, q0
    vtst.32     q10, q10, q0
    vtst.32     q11, q11, q0
    vtst.32     q12, q12, q0

    // loop 4
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q0
    vtst.32     q3, q3, q0
    vtst.32     q4, q4, q0
    vtst.32     q5, q5, q0
    vtst.32     q6, q6, q0
    vtst.32     q7, q7, q0
    vtst.32     q8, q8, q0
    vtst.32     q9, q9, q0
    vtst.32     q10, q10, q0
    vtst.32     q11, q11, q0
    vtst.32     q12, q12, q0

    // loop 5
    vtst.32     q1, q1, q0
    vtst.32     q2, q2, q0
    vtst.32     q3, q3, q0
    vtst.32     q4, q4, q0
    vtst.32     q5, q5, q0
    vtst.32     q6, q6, q0
    vtst.32     q7, q7, q0
    vtst.32     q8, q8, q0
    vtst.32     q9, q9, q0
    vtst.32     q10, q10, q0
    vtst.32     q11, q11, q0
    vtst.32     q12, q12, q0

    subs    r0, r0, #1
    bne     vtstI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vuzpI4MinTest:

    vpush.64    {d8-d15}

vuzpI4MinTest_LOOP:

    // loop 1
    vuzp.32     q0, q11
    vuzp.32     q1, q0
    vuzp.32     q2, q1
    vuzp.32     q3, q2
    vuzp.32     q4, q3
    vuzp.32     q5, q4
    vuzp.32     q6, q5
    vuzp.32     q7, q6
    vuzp.32     q8, q7
    vuzp.32     q9, q8
    vuzp.32     q10, q9
    vuzp.32     q11, q10

    // loop 2
    vuzp.32     q0, q11
    vuzp.32     q1, q0
    vuzp.32     q2, q1
    vuzp.32     q3, q2
    vuzp.32     q4, q3
    vuzp.32     q5, q4
    vuzp.32     q6, q5
    vuzp.32     q7, q6
    vuzp.32     q8, q7
    vuzp.32     q9, q8
    vuzp.32     q10, q9
    vuzp.32     q11, q10

    // loop 3
    vuzp.32     q0, q11
    vuzp.32     q1, q0
    vuzp.32     q2, q1
    vuzp.32     q3, q2
    vuzp.32     q4, q3
    vuzp.32     q5, q4
    vuzp.32     q6, q5
    vuzp.32     q7, q6
    vuzp.32     q8, q7
    vuzp.32     q9, q8
    vuzp.32     q10, q9
    vuzp.32     q11, q10

    // loop 4
    vuzp.32     q0, q11
    vuzp.32     q1, q0
    vuzp.32     q2, q1
    vuzp.32     q3, q2
    vuzp.32     q4, q3
    vuzp.32     q5, q4
    vuzp.32     q6, q5
    vuzp.32     q7, q6
    vuzp.32     q8, q7
    vuzp.32     q9, q8
    vuzp.32     q10, q9
    vuzp.32     q11, q10

    // loop 5
    vuzp.32     q0, q11
    vuzp.32     q1, q0
    vuzp.32     q2, q1
    vuzp.32     q3, q2
    vuzp.32     q4, q3
    vuzp.32     q5, q4
    vuzp.32     q6, q5
    vuzp.32     q7, q6
    vuzp.32     q8, q7
    vuzp.32     q9, q8
    vuzp.32     q10, q9
    vuzp.32     q11, q10

    subs    r0, r0, #1
    bne     vuzpI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vuzpI4MaxTest:

    vpush.64    {d8-d15}

vuzpI4MaxTest_LOOP:

    // loop 1
    vuzp.32     q1, q1
    vuzp.32     q2, q2
    vuzp.32     q3, q3
    vuzp.32     q4, q4
    vuzp.32     q5, q5
    vuzp.32     q6, q6
    vuzp.32     q7, q7
    vuzp.32     q8, q8
    vuzp.32     q9, q9
    vuzp.32     q10, q10
    vuzp.32     q11, q11
    vuzp.32     q12, q12

    // loop 2
    vuzp.32     q1, q1
    vuzp.32     q2, q2
    vuzp.32     q3, q3
    vuzp.32     q4, q4
    vuzp.32     q5, q5
    vuzp.32     q6, q6
    vuzp.32     q7, q7
    vuzp.32     q8, q8
    vuzp.32     q9, q9
    vuzp.32     q10, q10
    vuzp.32     q11, q11
    vuzp.32     q12, q12

    // loop 3
    vuzp.32     q1, q1
    vuzp.32     q2, q2
    vuzp.32     q3, q3
    vuzp.32     q4, q4
    vuzp.32     q5, q5
    vuzp.32     q6, q6
    vuzp.32     q7, q7
    vuzp.32     q8, q8
    vuzp.32     q9, q9
    vuzp.32     q10, q10
    vuzp.32     q11, q11
    vuzp.32     q12, q12

    // loop 4
    vuzp.32     q1, q1
    vuzp.32     q2, q2
    vuzp.32     q3, q3
    vuzp.32     q4, q4
    vuzp.32     q5, q5
    vuzp.32     q6, q6
    vuzp.32     q7, q7
    vuzp.32     q8, q8
    vuzp.32     q9, q9
    vuzp.32     q10, q10
    vuzp.32     q11, q11
    vuzp.32     q12, q12

    // loop 5
    vuzp.32     q1, q1
    vuzp.32     q2, q2
    vuzp.32     q3, q3
    vuzp.32     q4, q4
    vuzp.32     q5, q5
    vuzp.32     q6, q6
    vuzp.32     q7, q7
    vuzp.32     q8, q8
    vuzp.32     q9, q9
    vuzp.32     q10, q10
    vuzp.32     q11, q11
    vuzp.32     q12, q12

    subs    r0, r0, #1
    bne     vuzpI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr


_vzipI4MinTest:

    vpush.64    {d8-d15}

vzipI4MinTest_LOOP:

    // loop 1
    vzip.32     q0, q11
    vzip.32     q1, q0
    vzip.32     q2, q1
    vzip.32     q3, q2
    vzip.32     q4, q3
    vzip.32     q5, q4
    vzip.32     q6, q5
    vzip.32     q7, q6
    vzip.32     q8, q7
    vzip.32     q9, q8
    vzip.32     q10, q9
    vzip.32     q11, q10
    
    // loop 2
    vzip.32     q0, q11
    vzip.32     q1, q0
    vzip.32     q2, q1
    vzip.32     q3, q2
    vzip.32     q4, q3
    vzip.32     q5, q4
    vzip.32     q6, q5
    vzip.32     q7, q6
    vzip.32     q8, q7
    vzip.32     q9, q8
    vzip.32     q10, q9
    vzip.32     q11, q10

    // loop 3
    vzip.32     q0, q11
    vzip.32     q1, q0
    vzip.32     q2, q1
    vzip.32     q3, q2
    vzip.32     q4, q3
    vzip.32     q5, q4
    vzip.32     q6, q5
    vzip.32     q7, q6
    vzip.32     q8, q7
    vzip.32     q9, q8
    vzip.32     q10, q9
    vzip.32     q11, q10

    // loop 4
    vzip.32     q0, q11
    vzip.32     q1, q0
    vzip.32     q2, q1
    vzip.32     q3, q2
    vzip.32     q4, q3
    vzip.32     q5, q4
    vzip.32     q6, q5
    vzip.32     q7, q6
    vzip.32     q8, q7
    vzip.32     q9, q8
    vzip.32     q10, q9
    vzip.32     q11, q10

    // loop 5
    vzip.32     q0, q11
    vzip.32     q1, q0
    vzip.32     q2, q1
    vzip.32     q3, q2
    vzip.32     q4, q3
    vzip.32     q5, q4
    vzip.32     q6, q5
    vzip.32     q7, q6
    vzip.32     q8, q7
    vzip.32     q9, q8
    vzip.32     q10, q9
    vzip.32     q11, q10

    subs    r0, r0, #1
    bne     vzipI4MinTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vzipI4MaxTest:

    vpush.64    {d8-d15}

vzipI4MaxTest_LOOP:

    // loop 1
    vzip.32     q1, q1
    vzip.32     q2, q2
    vzip.32     q3, q3
    vzip.32     q4, q4
    vzip.32     q5, q5
    vzip.32     q6, q6
    vzip.32     q7, q7
    vzip.32     q8, q8
    vzip.32     q9, q9
    vzip.32     q10, q10
    vzip.32     q11, q11
    vzip.32     q12, q12

    // loop 2
    vzip.32     q1, q1
    vzip.32     q2, q2
    vzip.32     q3, q3
    vzip.32     q4, q4
    vzip.32     q5, q5
    vzip.32     q6, q6
    vzip.32     q7, q7
    vzip.32     q8, q8
    vzip.32     q9, q9
    vzip.32     q10, q10
    vzip.32     q11, q11
    vzip.32     q12, q12

    // loop 3
    vzip.32     q1, q1
    vzip.32     q2, q2
    vzip.32     q3, q3
    vzip.32     q4, q4
    vzip.32     q5, q5
    vzip.32     q6, q6
    vzip.32     q7, q7
    vzip.32     q8, q8
    vzip.32     q9, q9
    vzip.32     q10, q10
    vzip.32     q11, q11
    vzip.32     q12, q12

    // loop 4
    vzip.32     q1, q1
    vzip.32     q2, q2
    vzip.32     q3, q3
    vzip.32     q4, q4
    vzip.32     q5, q5
    vzip.32     q6, q6
    vzip.32     q7, q7
    vzip.32     q8, q8
    vzip.32     q9, q9
    vzip.32     q10, q10
    vzip.32     q11, q11
    vzip.32     q12, q12

    // loop 5
    vzip.32     q1, q1
    vzip.32     q2, q2
    vzip.32     q3, q3
    vzip.32     q4, q4
    vzip.32     q5, q5
    vzip.32     q6, q6
    vzip.32     q7, q7
    vzip.32     q8, q8
    vzip.32     q9, q9
    vzip.32     q10, q10
    vzip.32     q11, q11
    vzip.32     q12, q12

    subs    r0, r0, #1
    bne     vzipI4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

/******** The following functions use VFP4 ********/

#if defined(__ARM_VFPV4__)


_vfmaF4MinTest:

    vpush.64    {d8-d15}

vfmaF4MinTest_LOOP:

    // loop 1
    vfma.f32    q0, q0, q0
    vfma.f32    q1, q1, q1
    vfma.f32    q2, q2, q2
    vfma.f32    q3, q3, q3
    vfma.f32    q4, q4, q4
    vfma.f32    q5, q5, q5
    vfma.f32    q6, q6, q6
    vfma.f32    q7, q7, q7
    vfma.f32    q8, q8, q8
    vfma.f32    q9, q9, q9
    vfma.f32    q10, q10, q10
    vfma.f32    q11, q11, q11

    // loop 2
    vfma.f32    q0, q0, q0
    vfma.f32    q1, q1, q1
    vfma.f32    q2, q2, q2
    vfma.f32    q3, q3, q3
    vfma.f32    q4, q4, q4
    vfma.f32    q5, q5, q5
    vfma.f32    q6, q6, q6
    vfma.f32    q7, q7, q7
    vfma.f32    q8, q8, q8
    vfma.f32    q9, q9, q9
    vfma.f32    q10, q10, q10
    vfma.f32    q11, q11, q11

    // loop 3
    vfma.f32    q0, q0, q0
    vfma.f32    q1, q1, q1
    vfma.f32    q2, q2, q2
    vfma.f32    q3, q3, q3
    vfma.f32    q4, q4, q4
    vfma.f32    q5, q5, q5
    vfma.f32    q6, q6, q6
    vfma.f32    q7, q7, q7
    vfma.f32    q8, q8, q8
    vfma.f32    q9, q9, q9
    vfma.f32    q10, q10, q10
    vfma.f32    q11, q11, q11

    // loop 4
    vfma.f32    q0, q0, q0
    vfma.f32    q1, q1, q1
    vfma.f32    q2, q2, q2
    vfma.f32    q3, q3, q3
    vfma.f32    q4, q4, q4
    vfma.f32    q5, q5, q5
    vfma.f32    q6, q6, q6
    vfma.f32    q7, q7, q7
    vfma.f32    q8, q8, q8
    vfma.f32    q9, q9, q9
    vfma.f32    q10, q10, q10
    vfma.f32    q11, q11, q11

    // loop 5
    vfma.f32    q0, q0, q0
    vfma.f32    q1, q1, q1
    vfma.f32    q2, q2, q2
    vfma.f32    q3, q3, q3
    vfma.f32    q4, q4, q4
    vfma.f32    q5, q5, q5
    vfma.f32    q6, q6, q6
    vfma.f32    q7, q7, q7
    vfma.f32    q8, q8, q8
    vfma.f32    q9, q9, q9
    vfma.f32    q10, q10, q10
    vfma.f32    q11, q11, q11

    subs    r0, r0, #1
    bne     vfmaF4MinTest_LOOP
    vpop.64     {d8-d15}

    bx      lr

_vfmaF4MaxTest:

    vpush.64    {d8-d15}

vfmaF4MaxTest_LOOP:

    // loop 1
    vfma.f32    q1, q1, q0
    vfma.f32    q2, q2, q1
    vfma.f32    q3, q3, q2
    vfma.f32    q4, q4, q3
    vfma.f32    q5, q5, q4
    vfma.f32    q6, q6, q5
    vfma.f32    q7, q7, q6
    vfma.f32    q8, q8, q7
    vfma.f32    q9, q9, q8
    vfma.f32    q10, q10, q9
    vfma.f32    q11, q11, q10
    vfma.f32    q0, q0, q11

    // loop 2
    vfma.f32    q1, q1, q0
    vfma.f32    q2, q2, q1
    vfma.f32    q3, q3, q2
    vfma.f32    q4, q4, q3
    vfma.f32    q5, q5, q4
    vfma.f32    q6, q6, q5
    vfma.f32    q7, q7, q6
    vfma.f32    q8, q8, q7
    vfma.f32    q9, q9, q8
    vfma.f32    q10, q10, q9
    vfma.f32    q11, q11, q10
    vfma.f32    q0, q0, q11

    // loop 3
    vfma.f32    q1, q1, q0
    vfma.f32    q2, q2, q1
    vfma.f32    q3, q3, q2
    vfma.f32    q4, q4, q3
    vfma.f32    q5, q5, q4
    vfma.f32    q6, q6, q5
    vfma.f32    q7, q7, q6
    vfma.f32    q8, q8, q7
    vfma.f32    q9, q9, q8
    vfma.f32    q10, q10, q9
    vfma.f32    q11, q11, q10
    vfma.f32    q0, q0, q11

    // loop 4
    vfma.f32    q1, q1, q0
    vfma.f32    q2, q2, q1
    vfma.f32    q3, q3, q2
    vfma.f32    q4, q4, q3
    vfma.f32    q5, q5, q4
    vfma.f32    q6, q6, q5
    vfma.f32    q7, q7, q6
    vfma.f32    q8, q8, q7
    vfma.f32    q9, q9, q8
    vfma.f32    q10, q10, q9
    vfma.f32    q11, q11, q10
    vfma.f32    q0, q0, q11

    // loop 5
    vfma.f32    q1, q1, q0
    vfma.f32    q2, q2, q1
    vfma.f32    q3, q3, q2
    vfma.f32    q4, q4, q3
    vfma.f32    q5, q5, q4
    vfma.f32    q6, q6, q5
    vfma.f32    q7, q7, q6
    vfma.f32    q8, q8, q7
    vfma.f32    q9, q9, q8
    vfma.f32    q10, q10, q9
    vfma.f32    q11, q11, q10
    vfma.f32    q0, q0, q11

    subs    r0, r0, #1
    bne     vfmaF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx      lr

_vfmaDMinTest:

    vpush.64    {d8-d11}

vfmaDMinTest_LOOP:

    // loop 1
    vfma.f64    d0, d0, d0
    vfma.f64    d1, d1, d1
    vfma.f64    d2, d2, d2
    vfma.f64    d3, d3, d3
    vfma.f64    d4, d4, d4
    vfma.f64    d5, d5, d5
    vfma.f64    d6, d6, d6
    vfma.f64    d7, d7, d7
    vfma.f64    d8, d8, d8
    vfma.f64    d9, d9, d9
    vfma.f64    d10, d10, d10
    vfma.f64    d11, d11, d11

    // loop 2
    vfma.f64    d0, d0, d0
    vfma.f64    d1, d1, d1
    vfma.f64    d2, d2, d2
    vfma.f64    d3, d3, d3
    vfma.f64    d4, d4, d4
    vfma.f64    d5, d5, d5
    vfma.f64    d6, d6, d6
    vfma.f64    d7, d7, d7
    vfma.f64    d8, d8, d8
    vfma.f64    d9, d9, d9
    vfma.f64    d10, d10, d10
    vfma.f64    d11, d11, d11

    // loop 3
    vfma.f64    d0, d0, d0
    vfma.f64    d1, d1, d1
    vfma.f64    d2, d2, d2
    vfma.f64    d3, d3, d3
    vfma.f64    d4, d4, d4
    vfma.f64    d5, d5, d5
    vfma.f64    d6, d6, d6
    vfma.f64    d7, d7, d7
    vfma.f64    d8, d8, d8
    vfma.f64    d9, d9, d9
    vfma.f64    d10, d10, d10
    vfma.f64    d11, d11, d11

    // loop 4
    vfma.f64    d0, d0, d0
    vfma.f64    d1, d1, d1
    vfma.f64    d2, d2, d2
    vfma.f64    d3, d3, d3
    vfma.f64    d4, d4, d4
    vfma.f64    d5, d5, d5
    vfma.f64    d6, d6, d6
    vfma.f64    d7, d7, d7
    vfma.f64    d8, d8, d8
    vfma.f64    d9, d9, d9
    vfma.f64    d10, d10, d10
    vfma.f64    d11, d11, d11

    // loop 5
    vfma.f64    d0, d0, d0
    vfma.f64    d1, d1, d1
    vfma.f64    d2, d2, d2
    vfma.f64    d3, d3, d3
    vfma.f64    d4, d4, d4
    vfma.f64    d5, d5, d5
    vfma.f64    d6, d6, d6
    vfma.f64    d7, d7, d7
    vfma.f64    d8, d8, d8
    vfma.f64    d9, d9, d9
    vfma.f64    d10, d10, d10
    vfma.f64    d11, d11, d11

    subs    r0, r0, #1
    bne     vfmaDMinTest_LOOP
    vpop.64     {d8-d11}
    bx      lr

_vfmaDMaxTest:

    vpush.64    {d8-d11}

vfmaDMaxTest_LOOP:

    // loop 1
    vfma.f64    d1, d1, d0
    vfma.f64    d2, d2, d1
    vfma.f64    d3, d3, d2
    vfma.f64    d4, d4, d3
    vfma.f64    d5, d5, d4
    vfma.f64    d6, d6, d5
    vfma.f64    d7, d7, d6
    vfma.f64    d8, d8, d7
    vfma.f64    d9, d9, d8
    vfma.f64    d10, d10, d9
    vfma.f64    d11, d11, d10
    vfma.f64    d0, d0, d11

    // loop 2
    vfma.f64    d1, d1, d0
    vfma.f64    d2, d2, d1
    vfma.f64    d3, d3, d2
    vfma.f64    d4, d4, d3
    vfma.f64    d5, d5, d4
    vfma.f64    d6, d6, d5
    vfma.f64    d7, d7, d6
    vfma.f64    d8, d8, d7
    vfma.f64    d9, d9, d8
    vfma.f64    d10, d10, d9
    vfma.f64    d11, d11, d10
    vfma.f64    d0, d0, d11

    // loop 3
    vfma.f64    d1, d1, d0
    vfma.f64    d2, d2, d1
    vfma.f64    d3, d3, d2
    vfma.f64    d4, d4, d3
    vfma.f64    d5, d5, d4
    vfma.f64    d6, d6, d5
    vfma.f64    d7, d7, d6
    vfma.f64    d8, d8, d7
    vfma.f64    d9, d9, d8
    vfma.f64    d10, d10, d9
    vfma.f64    d11, d11, d10
    vfma.f64    d0, d0, d11

    // loop 4
    vfma.f64    d1, d1, d0
    vfma.f64    d2, d2, d1
    vfma.f64    d3, d3, d2
    vfma.f64    d4, d4, d3
    vfma.f64    d5, d5, d4
    vfma.f64    d6, d6, d5
    vfma.f64    d7, d7, d6
    vfma.f64    d8, d8, d7
    vfma.f64    d9, d9, d8
    vfma.f64    d10, d10, d9
    vfma.f64    d11, d11, d10
    vfma.f64    d0, d0, d11

    // loop 5
    vfma.f64    d1, d1, d0
    vfma.f64    d2, d2, d1
    vfma.f64    d3, d3, d2
    vfma.f64    d4, d4, d3
    vfma.f64    d5, d5, d4
    vfma.f64    d6, d6, d5
    vfma.f64    d7, d7, d6
    vfma.f64    d8, d8, d7
    vfma.f64    d9, d9, d8
    vfma.f64    d10, d10, d9
    vfma.f64    d11, d11, d10
    vfma.f64    d0, d0, d11

    subs    r0, r0, #1
    bne     vfmaDMaxTest_LOOP
    vpop.64     {d8-d11}
    bx      lr

_vfmaFMinTest:

    // loop 1
    vfma.f32    s0, s0, s0
    vfma.f32    s1, s1, s1
    vfma.f32    s2, s2, s2
    vfma.f32    s3, s3, s3
    vfma.f32    s4, s4, s4
    vfma.f32    s5, s5, s5
    vfma.f32    s6, s6, s6
    vfma.f32    s7, s7, s7
    vfma.f32    s8, s8, s8
    vfma.f32    s9, s9, s9
    vfma.f32    s10, s10, s10
    vfma.f32    s11, s11, s11

    // loop 2
    vfma.f32    s0, s0, s0
    vfma.f32    s1, s1, s1
    vfma.f32    s2, s2, s2
    vfma.f32    s3, s3, s3
    vfma.f32    s4, s4, s4
    vfma.f32    s5, s5, s5
    vfma.f32    s6, s6, s6
    vfma.f32    s7, s7, s7
    vfma.f32    s8, s8, s8
    vfma.f32    s9, s9, s9
    vfma.f32    s10, s10, s10
    vfma.f32    s11, s11, s11

    // loop 3
    vfma.f32    s0, s0, s0
    vfma.f32    s1, s1, s1
    vfma.f32    s2, s2, s2
    vfma.f32    s3, s3, s3
    vfma.f32    s4, s4, s4
    vfma.f32    s5, s5, s5
    vfma.f32    s6, s6, s6
    vfma.f32    s7, s7, s7
    vfma.f32    s8, s8, s8
    vfma.f32    s9, s9, s9
    vfma.f32    s10, s10, s10
    vfma.f32    s11, s11, s11

    // loop 4
    vfma.f32    s0, s0, s0
    vfma.f32    s1, s1, s1
    vfma.f32    s2, s2, s2
    vfma.f32    s3, s3, s3
    vfma.f32    s4, s4, s4
    vfma.f32    s5, s5, s5
    vfma.f32    s6, s6, s6
    vfma.f32    s7, s7, s7
    vfma.f32    s8, s8, s8
    vfma.f32    s9, s9, s9
    vfma.f32    s10, s10, s10
    vfma.f32    s11, s11, s11

    // loop 5
    vfma.f32    s0, s0, s0
    vfma.f32    s1, s1, s1
    vfma.f32    s2, s2, s2
    vfma.f32    s3, s3, s3
    vfma.f32    s4, s4, s4
    vfma.f32    s5, s5, s5
    vfma.f32    s6, s6, s6
    vfma.f32    s7, s7, s7
    vfma.f32    s8, s8, s8
    vfma.f32    s9, s9, s9
    vfma.f32    s10, s10, s10
    vfma.f32    s11, s11, s11

    subs    r0, r0, #1
    bne     _vfmaFMinTest
    bx      lr

_vfmaFMaxTest:

    // loop 1
    vfma.f32    s1, s1, s0
    vfma.f32    s2, s2, s1
    vfma.f32    s3, s3, s2
    vfma.f32    s4, s4, s3
    vfma.f32    s5, s5, s4
    vfma.f32    s6, s6, s5
    vfma.f32    s7, s7, s6
    vfma.f32    s8, s8, s7
    vfma.f32    s9, s9, s8
    vfma.f32    s10, s10, s9
    vfma.f32    s11, s11, s10
    vfma.f32    s0, s0, s11

    // loop 2
    vfma.f32    s1, s1, s0
    vfma.f32    s2, s2, s1
    vfma.f32    s3, s3, s2
    vfma.f32    s4, s4, s3
    vfma.f32    s5, s5, s4
    vfma.f32    s6, s6, s5
    vfma.f32    s7, s7, s6
    vfma.f32    s8, s8, s7
    vfma.f32    s9, s9, s8
    vfma.f32    s10, s10, s9
    vfma.f32    s11, s11, s10
    vfma.f32    s0, s0, s11

    // loop 3
    vfma.f32    s1, s1, s0
    vfma.f32    s2, s2, s1
    vfma.f32    s3, s3, s2
    vfma.f32    s4, s4, s3
    vfma.f32    s5, s5, s4
    vfma.f32    s6, s6, s5
    vfma.f32    s7, s7, s6
    vfma.f32    s8, s8, s7
    vfma.f32    s9, s9, s8
    vfma.f32    s10, s10, s9
    vfma.f32    s11, s11, s10
    vfma.f32    s0, s0, s11

    // loop 4
    vfma.f32    s1, s1, s0
    vfma.f32    s2, s2, s1
    vfma.f32    s3, s3, s2
    vfma.f32    s4, s4, s3
    vfma.f32    s5, s5, s4
    vfma.f32    s6, s6, s5
    vfma.f32    s7, s7, s6
    vfma.f32    s8, s8, s7
    vfma.f32    s9, s9, s8
    vfma.f32    s10, s10, s9
    vfma.f32    s11, s11, s10
    vfma.f32    s0, s0, s11

    // loop 5
    vfma.f32    s1, s1, s0
    vfma.f32    s2, s2, s1
    vfma.f32    s3, s3, s2
    vfma.f32    s4, s4, s3
    vfma.f32    s5, s5, s4
    vfma.f32    s6, s6, s5
    vfma.f32    s7, s7, s6
    vfma.f32    s8, s8, s7
    vfma.f32    s9, s9, s8
    vfma.f32    s10, s10, s9
    vfma.f32    s11, s11, s10
    vfma.f32    s0, s0, s11

    subs    r0, r0, #1
    bne     _vfmaFMaxTest
    bx      lr

_vfmsF4MinTest:

    vpush.64    {d8-d15}

vfmsF4MinTest_LOOP:

    // loop 1
    vfms.f32    q0, q0, q0
    vfms.f32    q1, q1, q1
    vfms.f32    q2, q2, q2
    vfms.f32    q3, q3, q3
    vfms.f32    q4, q4, q4
    vfms.f32    q5, q5, q5
    vfms.f32    q6, q6, q6
    vfms.f32    q7, q7, q7
    vfms.f32    q8, q8, q8
    vfms.f32    q9, q9, q9
    vfms.f32    q10, q10, q10
    vfms.f32    q11, q11, q11

    // loop 2
    vfms.f32    q0, q0, q0
    vfms.f32    q1, q1, q1
    vfms.f32    q2, q2, q2
    vfms.f32    q3, q3, q3
    vfms.f32    q4, q4, q4
    vfms.f32    q5, q5, q5
    vfms.f32    q6, q6, q6
    vfms.f32    q7, q7, q7
    vfms.f32    q8, q8, q8
    vfms.f32    q9, q9, q9
    vfms.f32    q10, q10, q10
    vfms.f32    q11, q11, q11

    // loop 3
    vfms.f32    q0, q0, q0
    vfms.f32    q1, q1, q1
    vfms.f32    q2, q2, q2
    vfms.f32    q3, q3, q3
    vfms.f32    q4, q4, q4
    vfms.f32    q5, q5, q5
    vfms.f32    q6, q6, q6
    vfms.f32    q7, q7, q7
    vfms.f32    q8, q8, q8
    vfms.f32    q9, q9, q9
    vfms.f32    q10, q10, q10
    vfms.f32    q11, q11, q11

    // loop 4
    vfms.f32    q0, q0, q0
    vfms.f32    q1, q1, q1
    vfms.f32    q2, q2, q2
    vfms.f32    q3, q3, q3
    vfms.f32    q4, q4, q4
    vfms.f32    q5, q5, q5
    vfms.f32    q6, q6, q6
    vfms.f32    q7, q7, q7
    vfms.f32    q8, q8, q8
    vfms.f32    q9, q9, q9
    vfms.f32    q10, q10, q10
    vfms.f32    q11, q11, q11

    // loop 5
    vfms.f32    q0, q0, q0
    vfms.f32    q1, q1, q1
    vfms.f32    q2, q2, q2
    vfms.f32    q3, q3, q3
    vfms.f32    q4, q4, q4
    vfms.f32    q5, q5, q5
    vfms.f32    q6, q6, q6
    vfms.f32    q7, q7, q7
    vfms.f32    q8, q8, q8
    vfms.f32    q9, q9, q9
    vfms.f32    q10, q10, q10
    vfms.f32    q11, q11, q11

    subs        r0, r0, #1
    bne         vfmsF4MinTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vfmsF4MaxTest:

    vpush.64    {d8-d15}

vfmsF4MaxTest_LOOP:

    // loop 1
    vfms.f32    q1, q1, q0
    vfms.f32    q2, q2, q1
    vfms.f32    q3, q3, q2
    vfms.f32    q4, q4, q3
    vfms.f32    q5, q5, q4
    vfms.f32    q6, q6, q5
    vfms.f32    q7, q7, q6
    vfms.f32    q8, q8, q7
    vfms.f32    q9, q9, q8
    vfms.f32    q10, q10, q9
    vfms.f32    q11, q11, q10
    vfms.f32    q0, q0, q11

    // loop 2
    vfms.f32    q1, q1, q0
    vfms.f32    q2, q2, q1
    vfms.f32    q3, q3, q2
    vfms.f32    q4, q4, q3
    vfms.f32    q5, q5, q4
    vfms.f32    q6, q6, q5
    vfms.f32    q7, q7, q6
    vfms.f32    q8, q8, q7
    vfms.f32    q9, q9, q8
    vfms.f32    q10, q10, q9
    vfms.f32    q11, q11, q10
    vfms.f32    q0, q0, q11

    // loop 3
    vfms.f32    q1, q1, q0
    vfms.f32    q2, q2, q1
    vfms.f32    q3, q3, q2
    vfms.f32    q4, q4, q3
    vfms.f32    q5, q5, q4
    vfms.f32    q6, q6, q5
    vfms.f32    q7, q7, q6
    vfms.f32    q8, q8, q7
    vfms.f32    q9, q9, q8
    vfms.f32    q10, q10, q9
    vfms.f32    q11, q11, q10
    vfms.f32    q0, q0, q11

    // loop 4
    vfms.f32    q1, q1, q0
    vfms.f32    q2, q2, q1
    vfms.f32    q3, q3, q2
    vfms.f32    q4, q4, q3
    vfms.f32    q5, q5, q4
    vfms.f32    q6, q6, q5
    vfms.f32    q7, q7, q6
    vfms.f32    q8, q8, q7
    vfms.f32    q9, q9, q8
    vfms.f32    q10, q10, q9
    vfms.f32    q11, q11, q10
    vfms.f32    q0, q0, q11

    // loop 5
    vfms.f32    q1, q1, q0
    vfms.f32    q2, q2, q1
    vfms.f32    q3, q3, q2
    vfms.f32    q4, q4, q3
    vfms.f32    q5, q5, q4
    vfms.f32    q6, q6, q5
    vfms.f32    q7, q7, q6
    vfms.f32    q8, q8, q7
    vfms.f32    q9, q9, q8
    vfms.f32    q10, q10, q9
    vfms.f32    q11, q11, q10
    vfms.f32    q0, q0, q11

    subs        r0, r0, #1
    bne         vfmsF4MaxTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vfmsDMinTest:

    vpush.64    {d8-d11}

vfmsDMinTest_LOOP:

    // loop 1
    vfms.f64    d0, d0, d0
    vfms.f64    d1, d1, d1
    vfms.f64    d2, d2, d2
    vfms.f64    d3, d3, d3
    vfms.f64    d4, d4, d4
    vfms.f64    d5, d5, d5
    vfms.f64    d6, d6, d6
    vfms.f64    d7, d7, d7
    vfms.f64    d8, d8, d8
    vfms.f64    d9, d9, d9
    vfms.f64    d10, d10, d10
    vfms.f64    d11, d11, d11

    // loop 2
    vfms.f64    d0, d0, d0
    vfms.f64    d1, d1, d1
    vfms.f64    d2, d2, d2
    vfms.f64    d3, d3, d3
    vfms.f64    d4, d4, d4
    vfms.f64    d5, d5, d5
    vfms.f64    d6, d6, d6
    vfms.f64    d7, d7, d7
    vfms.f64    d8, d8, d8
    vfms.f64    d9, d9, d9
    vfms.f64    d10, d10, d10
    vfms.f64    d11, d11, d11

    // loop 3
    vfms.f64    d0, d0, d0
    vfms.f64    d1, d1, d1
    vfms.f64    d2, d2, d2
    vfms.f64    d3, d3, d3
    vfms.f64    d4, d4, d4
    vfms.f64    d5, d5, d5
    vfms.f64    d6, d6, d6
    vfms.f64    d7, d7, d7
    vfms.f64    d8, d8, d8
    vfms.f64    d9, d9, d9
    vfms.f64    d10, d10, d10
    vfms.f64    d11, d11, d11

    // loop 4
    vfms.f64    d0, d0, d0
    vfms.f64    d1, d1, d1
    vfms.f64    d2, d2, d2
    vfms.f64    d3, d3, d3
    vfms.f64    d4, d4, d4
    vfms.f64    d5, d5, d5
    vfms.f64    d6, d6, d6
    vfms.f64    d7, d7, d7
    vfms.f64    d8, d8, d8
    vfms.f64    d9, d9, d9
    vfms.f64    d10, d10, d10
    vfms.f64    d11, d11, d11

    // loop 5
    vfms.f64    d0, d0, d0
    vfms.f64    d1, d1, d1
    vfms.f64    d2, d2, d2
    vfms.f64    d3, d3, d3
    vfms.f64    d4, d4, d4
    vfms.f64    d5, d5, d5
    vfms.f64    d6, d6, d6
    vfms.f64    d7, d7, d7
    vfms.f64    d8, d8, d8
    vfms.f64    d9, d9, d9
    vfms.f64    d10, d10, d10
    vfms.f64    d11, d11, d11

    subs        r0, r0, #1
    bne         vfmsDMinTest_LOOP
    vpop.64     {d8-d11}
    bx          lr

_vfmsDMaxTest:

    vpush.64    {d8-d11}

vfmsDMaxTest_LOOP:

    // loop 1
    vfms.f64    d1, d1, d0
    vfms.f64    d2, d2, d1
    vfms.f64    d3, d3, d2
    vfms.f64    d4, d4, d3
    vfms.f64    d5, d5, d4
    vfms.f64    d6, d6, d5
    vfms.f64    d7, d7, d6
    vfms.f64    d8, d8, d7
    vfms.f64    d9, d9, d8
    vfms.f64    d10, d10, d9
    vfms.f64    d11, d11, d10
    vfms.f64    d0, d0, d11

    // loop 2
    vfms.f64    d1, d1, d0
    vfms.f64    d2, d2, d1
    vfms.f64    d3, d3, d2
    vfms.f64    d4, d4, d3
    vfms.f64    d5, d5, d4
    vfms.f64    d6, d6, d5
    vfms.f64    d7, d7, d6
    vfms.f64    d8, d8, d7
    vfms.f64    d9, d9, d8
    vfms.f64    d10, d10, d9
    vfms.f64    d11, d11, d10
    vfms.f64    d0, d0, d11

    // loop 3
    vfms.f64    d1, d1, d0
    vfms.f64    d2, d2, d1
    vfms.f64    d3, d3, d2
    vfms.f64    d4, d4, d3
    vfms.f64    d5, d5, d4
    vfms.f64    d6, d6, d5
    vfms.f64    d7, d7, d6
    vfms.f64    d8, d8, d7
    vfms.f64    d9, d9, d8
    vfms.f64    d10, d10, d9
    vfms.f64    d11, d11, d10
    vfms.f64    d0, d0, d11

    // loop 4
    vfms.f64    d1, d1, d0
    vfms.f64    d2, d2, d1
    vfms.f64    d3, d3, d2
    vfms.f64    d4, d4, d3
    vfms.f64    d5, d5, d4
    vfms.f64    d6, d6, d5
    vfms.f64    d7, d7, d6
    vfms.f64    d8, d8, d7
    vfms.f64    d9, d9, d8
    vfms.f64    d10, d10, d9
    vfms.f64    d11, d11, d10
    vfms.f64    d0, d0, d11

    // loop 5
    vfms.f64    d1, d1, d0
    vfms.f64    d2, d2, d1
    vfms.f64    d3, d3, d2
    vfms.f64    d4, d4, d3
    vfms.f64    d5, d5, d4
    vfms.f64    d6, d6, d5
    vfms.f64    d7, d7, d6
    vfms.f64    d8, d8, d7
    vfms.f64    d9, d9, d8
    vfms.f64    d10, d10, d9
    vfms.f64    d11, d11, d10
    vfms.f64    d0, d0, d11

    subs        r0, r0, #1
    bne         vfmsDMaxTest_LOOP
    vpop.64     {d8-d11}
    bx          lr

_vfmsFMinTest:

    // loop 1
    vfms.f32    s0, s0, s0
    vfms.f32    s1, s1, s1
    vfms.f32    s2, s2, s2
    vfms.f32    s3, s3, s3
    vfms.f32    s4, s4, s4
    vfms.f32    s5, s5, s5
    vfms.f32    s6, s6, s6
    vfms.f32    s7, s7, s7
    vfms.f32    s8, s8, s8
    vfms.f32    s9, s9, s9
    vfms.f32    s10, s10, s10
    vfms.f32    s11, s11, s11

    // loop 2
    vfms.f32    s0, s0, s0
    vfms.f32    s1, s1, s1
    vfms.f32    s2, s2, s2
    vfms.f32    s3, s3, s3
    vfms.f32    s4, s4, s4
    vfms.f32    s5, s5, s5
    vfms.f32    s6, s6, s6
    vfms.f32    s7, s7, s7
    vfms.f32    s8, s8, s8
    vfms.f32    s9, s9, s9
    vfms.f32    s10, s10, s10
    vfms.f32    s11, s11, s11

    // loop 3
    vfms.f32    s0, s0, s0
    vfms.f32    s1, s1, s1
    vfms.f32    s2, s2, s2
    vfms.f32    s3, s3, s3
    vfms.f32    s4, s4, s4
    vfms.f32    s5, s5, s5
    vfms.f32    s6, s6, s6
    vfms.f32    s7, s7, s7
    vfms.f32    s8, s8, s8
    vfms.f32    s9, s9, s9
    vfms.f32    s10, s10, s10
    vfms.f32    s11, s11, s11

    // loop 4
    vfms.f32    s0, s0, s0
    vfms.f32    s1, s1, s1
    vfms.f32    s2, s2, s2
    vfms.f32    s3, s3, s3
    vfms.f32    s4, s4, s4
    vfms.f32    s5, s5, s5
    vfms.f32    s6, s6, s6
    vfms.f32    s7, s7, s7
    vfms.f32    s8, s8, s8
    vfms.f32    s9, s9, s9
    vfms.f32    s10, s10, s10
    vfms.f32    s11, s11, s11

    // loop 5
    vfms.f32    s0, s0, s0
    vfms.f32    s1, s1, s1
    vfms.f32    s2, s2, s2
    vfms.f32    s3, s3, s3
    vfms.f32    s4, s4, s4
    vfms.f32    s5, s5, s5
    vfms.f32    s6, s6, s6
    vfms.f32    s7, s7, s7
    vfms.f32    s8, s8, s8
    vfms.f32    s9, s9, s9
    vfms.f32    s10, s10, s10
    vfms.f32    s11, s11, s11

    subs        r0, r0, #1
    bne         _vfmsFMinTest
    bx          lr

_vfmsFMaxTest:

    // loop 1
    vfms.f32    s1, s1, s0
    vfms.f32    s2, s2, s1
    vfms.f32    s3, s3, s2
    vfms.f32    s4, s4, s3
    vfms.f32    s5, s5, s4
    vfms.f32    s6, s6, s5
    vfms.f32    s7, s7, s6
    vfms.f32    s8, s8, s7
    vfms.f32    s9, s9, s8
    vfms.f32    s10, s10, s9
    vfms.f32    s11, s11, s10
    vfms.f32    s0, s0, s11

    // loop 2
    vfms.f32    s1, s1, s0
    vfms.f32    s2, s2, s1
    vfms.f32    s3, s3, s2
    vfms.f32    s4, s4, s3
    vfms.f32    s5, s5, s4
    vfms.f32    s6, s6, s5
    vfms.f32    s7, s7, s6
    vfms.f32    s8, s8, s7
    vfms.f32    s9, s9, s8
    vfms.f32    s10, s10, s9
    vfms.f32    s11, s11, s10
    vfms.f32    s0, s0, s11

    // loop 3
    vfms.f32    s1, s1, s0
    vfms.f32    s2, s2, s1
    vfms.f32    s3, s3, s2
    vfms.f32    s4, s4, s3
    vfms.f32    s5, s5, s4
    vfms.f32    s6, s6, s5
    vfms.f32    s7, s7, s6
    vfms.f32    s8, s8, s7
    vfms.f32    s9, s9, s8
    vfms.f32    s10, s10, s9
    vfms.f32    s11, s11, s10
    vfms.f32    s0, s0, s11

    // loop 4
    vfms.f32    s1, s1, s0
    vfms.f32    s2, s2, s1
    vfms.f32    s3, s3, s2
    vfms.f32    s4, s4, s3
    vfms.f32    s5, s5, s4
    vfms.f32    s6, s6, s5
    vfms.f32    s7, s7, s6
    vfms.f32    s8, s8, s7
    vfms.f32    s9, s9, s8
    vfms.f32    s10, s10, s9
    vfms.f32    s11, s11, s10
    vfms.f32    s0, s0, s11

    // loop 5
    vfms.f32    s1, s1, s0
    vfms.f32    s2, s2, s1
    vfms.f32    s3, s3, s2
    vfms.f32    s4, s4, s3
    vfms.f32    s5, s5, s4
    vfms.f32    s6, s6, s5
    vfms.f32    s7, s7, s6
    vfms.f32    s8, s8, s7
    vfms.f32    s9, s9, s8
    vfms.f32    s10, s10, s9
    vfms.f32    s11, s11, s10
    vfms.f32    s0, s0, s11

    subs    r0, r0, #1
    bne     _vfmsFMaxTest
    bx      lr

_vfnmaDMinTest:

    vpush.64    {d8-d11}

vfnmaDMinTest_LOOP:

    // loop 1
    vfnma.f64    d0, d0, d0
    vfnma.f64    d1, d1, d1
    vfnma.f64    d2, d2, d2
    vfnma.f64    d3, d3, d3
    vfnma.f64    d4, d4, d4
    vfnma.f64    d5, d5, d5
    vfnma.f64    d6, d6, d6
    vfnma.f64    d7, d7, d7
    vfnma.f64    d8, d8, d8
    vfnma.f64    d9, d9, d9
    vfnma.f64    d10, d10, d10
    vfnma.f64    d11, d11, d11

    // loop 2
    vfnma.f64    d0, d0, d0
    vfnma.f64    d1, d1, d1
    vfnma.f64    d2, d2, d2
    vfnma.f64    d3, d3, d3
    vfnma.f64    d4, d4, d4
    vfnma.f64    d5, d5, d5
    vfnma.f64    d6, d6, d6
    vfnma.f64    d7, d7, d7
    vfnma.f64    d8, d8, d8
    vfnma.f64    d9, d9, d9
    vfnma.f64    d10, d10, d10
    vfnma.f64    d11, d11, d11

    // loop 3
    vfnma.f64    d0, d0, d0
    vfnma.f64    d1, d1, d1
    vfnma.f64    d2, d2, d2
    vfnma.f64    d3, d3, d3
    vfnma.f64    d4, d4, d4
    vfnma.f64    d5, d5, d5
    vfnma.f64    d6, d6, d6
    vfnma.f64    d7, d7, d7
    vfnma.f64    d8, d8, d8
    vfnma.f64    d9, d9, d9
    vfnma.f64    d10, d10, d10
    vfnma.f64    d11, d11, d11

    // loop 4
    vfnma.f64    d0, d0, d0
    vfnma.f64    d1, d1, d1
    vfnma.f64    d2, d2, d2
    vfnma.f64    d3, d3, d3
    vfnma.f64    d4, d4, d4
    vfnma.f64    d5, d5, d5
    vfnma.f64    d6, d6, d6
    vfnma.f64    d7, d7, d7
    vfnma.f64    d8, d8, d8
    vfnma.f64    d9, d9, d9
    vfnma.f64    d10, d10, d10
    vfnma.f64    d11, d11, d11

    // loop 5
    vfnma.f64    d0, d0, d0
    vfnma.f64    d1, d1, d1
    vfnma.f64    d2, d2, d2
    vfnma.f64    d3, d3, d3
    vfnma.f64    d4, d4, d4
    vfnma.f64    d5, d5, d5
    vfnma.f64    d6, d6, d6
    vfnma.f64    d7, d7, d7
    vfnma.f64    d8, d8, d8
    vfnma.f64    d9, d9, d9
    vfnma.f64    d10, d10, d10
    vfnma.f64    d11, d11, d11

    subs        r0, r0, #1
    bne         vfnmaDMinTest_LOOP
    vpop.64     {d8-d11}
    bx          lr

_vfnmaDMaxTest:

    vpush.64    {d8-d11}

vfnmaDMaxTest_LOOP:

    // loop 1
    vfnma.f64    d1, d1, d0
    vfnma.f64    d2, d2, d1
    vfnma.f64    d3, d3, d2
    vfnma.f64    d4, d4, d3
    vfnma.f64    d5, d5, d4
    vfnma.f64    d6, d6, d5
    vfnma.f64    d7, d7, d6
    vfnma.f64    d8, d8, d7
    vfnma.f64    d9, d9, d8
    vfnma.f64    d10, d10, d9
    vfnma.f64    d11, d11, d10
    vfnma.f64    d0, d0, d11

    // loop 2
    vfnma.f64    d1, d1, d0
    vfnma.f64    d2, d2, d1
    vfnma.f64    d3, d3, d2
    vfnma.f64    d4, d4, d3
    vfnma.f64    d5, d5, d4
    vfnma.f64    d6, d6, d5
    vfnma.f64    d7, d7, d6
    vfnma.f64    d8, d8, d7
    vfnma.f64    d9, d9, d8
    vfnma.f64    d10, d10, d9
    vfnma.f64    d11, d11, d10
    vfnma.f64    d0, d0, d11

    // loop 3
    vfnma.f64    d1, d1, d0
    vfnma.f64    d2, d2, d1
    vfnma.f64    d3, d3, d2
    vfnma.f64    d4, d4, d3
    vfnma.f64    d5, d5, d4
    vfnma.f64    d6, d6, d5
    vfnma.f64    d7, d7, d6
    vfnma.f64    d8, d8, d7
    vfnma.f64    d9, d9, d8
    vfnma.f64    d10, d10, d9
    vfnma.f64    d11, d11, d10
    vfnma.f64    d0, d0, d11

    // loop 4
    vfnma.f64    d1, d1, d0
    vfnma.f64    d2, d2, d1
    vfnma.f64    d3, d3, d2
    vfnma.f64    d4, d4, d3
    vfnma.f64    d5, d5, d4
    vfnma.f64    d6, d6, d5
    vfnma.f64    d7, d7, d6
    vfnma.f64    d8, d8, d7
    vfnma.f64    d9, d9, d8
    vfnma.f64    d10, d10, d9
    vfnma.f64    d11, d11, d10
    vfnma.f64    d0, d0, d11

    // loop 5
    vfnma.f64    d1, d1, d0
    vfnma.f64    d2, d2, d1
    vfnma.f64    d3, d3, d2
    vfnma.f64    d4, d4, d3
    vfnma.f64    d5, d5, d4
    vfnma.f64    d6, d6, d5
    vfnma.f64    d7, d7, d6
    vfnma.f64    d8, d8, d7
    vfnma.f64    d9, d9, d8
    vfnma.f64    d10, d10, d9
    vfnma.f64    d11, d11, d10
    vfnma.f64    d0, d0, d11

    subs        r0, r0, #1
    bne         vfnmaDMaxTest_LOOP
    vpop.64     {d8-d11}
    bx          lr

_vfnmaFMinTest:

    // loop 1
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 2
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 3
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 4
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 5
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    subs    r0, r0, #1
    bne     _vfnmaFMinTest
    bx      lr

_vfnmaFMaxTest:

    // loop 1
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 2
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 3
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 4
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 5
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    subs    r0, r0, #1
    bne     _vfnmaFMaxTest
    bx      lr

_vfnmsDMinTest:

    vpush.64    {d8-d11}

vfnmsDMinTest_LOOP:

    // loop 1
    vfnms.f64    d0, d0, d0
    vfnms.f64    d1, d1, d1
    vfnms.f64    d2, d2, d2
    vfnms.f64    d3, d3, d3
    vfnms.f64    d4, d4, d4
    vfnms.f64    d5, d5, d5
    vfnms.f64    d6, d6, d6
    vfnms.f64    d7, d7, d7
    vfnms.f64    d8, d8, d8
    vfnms.f64    d9, d9, d9
    vfnms.f64    d10, d10, d10
    vfnms.f64    d11, d11, d11

    // loop 2
    vfnms.f64    d0, d0, d0
    vfnms.f64    d1, d1, d1
    vfnms.f64    d2, d2, d2
    vfnms.f64    d3, d3, d3
    vfnms.f64    d4, d4, d4
    vfnms.f64    d5, d5, d5
    vfnms.f64    d6, d6, d6
    vfnms.f64    d7, d7, d7
    vfnms.f64    d8, d8, d8
    vfnms.f64    d9, d9, d9
    vfnms.f64    d10, d10, d10
    vfnms.f64    d11, d11, d11

    // loop 3
    vfnms.f64    d0, d0, d0
    vfnms.f64    d1, d1, d1
    vfnms.f64    d2, d2, d2
    vfnms.f64    d3, d3, d3
    vfnms.f64    d4, d4, d4
    vfnms.f64    d5, d5, d5
    vfnms.f64    d6, d6, d6
    vfnms.f64    d7, d7, d7
    vfnms.f64    d8, d8, d8
    vfnms.f64    d9, d9, d9
    vfnms.f64    d10, d10, d10
    vfnms.f64    d11, d11, d11

    // loop 4
    vfnms.f64    d0, d0, d0
    vfnms.f64    d1, d1, d1
    vfnms.f64    d2, d2, d2
    vfnms.f64    d3, d3, d3
    vfnms.f64    d4, d4, d4
    vfnms.f64    d5, d5, d5
    vfnms.f64    d6, d6, d6
    vfnms.f64    d7, d7, d7
    vfnms.f64    d8, d8, d8
    vfnms.f64    d9, d9, d9
    vfnms.f64    d10, d10, d10
    vfnms.f64    d11, d11, d11

    // loop 5
    vfnms.f64    d0, d0, d0
    vfnms.f64    d1, d1, d1
    vfnms.f64    d2, d2, d2
    vfnms.f64    d3, d3, d3
    vfnms.f64    d4, d4, d4
    vfnms.f64    d5, d5, d5
    vfnms.f64    d6, d6, d6
    vfnms.f64    d7, d7, d7
    vfnms.f64    d8, d8, d8
    vfnms.f64    d9, d9, d9
    vfnms.f64    d10, d10, d10
    vfnms.f64    d11, d11, d11

    subs        r0, r0, #1
    bne         vfnmsDMinTest_LOOP
    vpop.64     {d8-d11}
    bx          lr

_vfnmsDMaxTest:

    vpush.64    {d8-d11}

vfnmsDMaxTest_LOOP:

    // loop 1
    vfnms.f64    d1, d1, d0
    vfnms.f64    d2, d2, d1
    vfnms.f64    d3, d3, d2
    vfnms.f64    d4, d4, d3
    vfnms.f64    d5, d5, d4
    vfnms.f64    d6, d6, d5
    vfnms.f64    d7, d7, d6
    vfnms.f64    d8, d8, d7
    vfnms.f64    d9, d9, d8
    vfnms.f64    d10, d10, d9
    vfnms.f64    d11, d11, d10
    vfnms.f64    d0, d0, d11

    // loop 2
    vfnms.f64    d1, d1, d0
    vfnms.f64    d2, d2, d1
    vfnms.f64    d3, d3, d2
    vfnms.f64    d4, d4, d3
    vfnms.f64    d5, d5, d4
    vfnms.f64    d6, d6, d5
    vfnms.f64    d7, d7, d6
    vfnms.f64    d8, d8, d7
    vfnms.f64    d9, d9, d8
    vfnms.f64    d10, d10, d9
    vfnms.f64    d11, d11, d10
    vfnms.f64    d0, d0, d11

    // loop 3
    vfnms.f64    d1, d1, d0
    vfnms.f64    d2, d2, d1
    vfnms.f64    d3, d3, d2
    vfnms.f64    d4, d4, d3
    vfnms.f64    d5, d5, d4
    vfnms.f64    d6, d6, d5
    vfnms.f64    d7, d7, d6
    vfnms.f64    d8, d8, d7
    vfnms.f64    d9, d9, d8
    vfnms.f64    d10, d10, d9
    vfnms.f64    d11, d11, d10
    vfnms.f64    d0, d0, d11

    // loop 4
    vfnms.f64    d1, d1, d0
    vfnms.f64    d2, d2, d1
    vfnms.f64    d3, d3, d2
    vfnms.f64    d4, d4, d3
    vfnms.f64    d5, d5, d4
    vfnms.f64    d6, d6, d5
    vfnms.f64    d7, d7, d6
    vfnms.f64    d8, d8, d7
    vfnms.f64    d9, d9, d8
    vfnms.f64    d10, d10, d9
    vfnms.f64    d11, d11, d10
    vfnms.f64    d0, d0, d11

    // loop 5
    vfnms.f64    d1, d1, d0
    vfnms.f64    d2, d2, d1
    vfnms.f64    d3, d3, d2
    vfnms.f64    d4, d4, d3
    vfnms.f64    d5, d5, d4
    vfnms.f64    d6, d6, d5
    vfnms.f64    d7, d7, d6
    vfnms.f64    d8, d8, d7
    vfnms.f64    d9, d9, d8
    vfnms.f64    d10, d10, d9
    vfnms.f64    d11, d11, d10
    vfnms.f64    d0, d0, d11

    subs        r0, r0, #1
    bne         vfnmsDMaxTest_LOOP
    vpop.64     {d8-d11}
    bx          lr

_vfnmsFMinTest:

    // loop 1
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 2
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 3
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 4
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    // loop 5
    vfnma.f32    s0, s0, s0
    vfnma.f32    s1, s1, s1
    vfnma.f32    s2, s2, s2
    vfnma.f32    s3, s3, s3
    vfnma.f32    s4, s4, s4
    vfnma.f32    s5, s5, s5
    vfnma.f32    s6, s6, s6
    vfnma.f32    s7, s7, s7
    vfnma.f32    s8, s8, s8
    vfnma.f32    s9, s9, s9
    vfnma.f32    s10, s10, s10
    vfnma.f32    s11, s11, s11

    subs        r0, r0, #1
    bne         _vfnmsFMinTest
    bx          lr

_vfnmsFMaxTest:

    // loop 1
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 2
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 3
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 4
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    // loop 5
    vfnma.f32    s1, s1, s0
    vfnma.f32    s2, s2, s1
    vfnma.f32    s3, s3, s2
    vfnma.f32    s4, s4, s3
    vfnma.f32    s5, s5, s4
    vfnma.f32    s6, s6, s5
    vfnma.f32    s7, s7, s6
    vfnma.f32    s8, s8, s7
    vfnma.f32    s9, s9, s8
    vfnma.f32    s10, s10, s9
    vfnma.f32    s11, s11, s10
    vfnma.f32    s0, s0, s11

    subs        r0, r0, #1
    bne         _vfnmsFMaxTest
    bx          lr

_vcvtf16Tof32MinTest:

    vpush.64    {d8-d15}

vcvtf16Tof32MinTest_LOOP:

    // loop 1
    vcvt.f32.f16    q0, d0
    vcvt.f32.f16    q1, d2
    vcvt.f32.f16    q2, d4
    vcvt.f32.f16    q3, d6
    vcvt.f32.f16    q4, d8
    vcvt.f32.f16    q5, d10
    vcvt.f32.f16    q6, d12
    vcvt.f32.f16    q7, d14
    vcvt.f32.f16    q8, d16
    vcvt.f32.f16    q9, d18
    vcvt.f32.f16    q10, d20
    vcvt.f32.f16    q11, d22

    // loop 2
    vcvt.f32.f16    q0, d0
    vcvt.f32.f16    q1, d2
    vcvt.f32.f16    q2, d4
    vcvt.f32.f16    q3, d6
    vcvt.f32.f16    q4, d8
    vcvt.f32.f16    q5, d10
    vcvt.f32.f16    q6, d12
    vcvt.f32.f16    q7, d14
    vcvt.f32.f16    q8, d16
    vcvt.f32.f16    q9, d18
    vcvt.f32.f16    q10, d20
    vcvt.f32.f16    q11, d22

    // loop 3
    vcvt.f32.f16    q0, d0
    vcvt.f32.f16    q1, d2
    vcvt.f32.f16    q2, d4
    vcvt.f32.f16    q3, d6
    vcvt.f32.f16    q4, d8
    vcvt.f32.f16    q5, d10
    vcvt.f32.f16    q6, d12
    vcvt.f32.f16    q7, d14
    vcvt.f32.f16    q8, d16
    vcvt.f32.f16    q9, d18
    vcvt.f32.f16    q10, d20
    vcvt.f32.f16    q11, d22

    // loop 4
    vcvt.f32.f16    q0, d0
    vcvt.f32.f16    q1, d2
    vcvt.f32.f16    q2, d4
    vcvt.f32.f16    q3, d6
    vcvt.f32.f16    q4, d8
    vcvt.f32.f16    q5, d10
    vcvt.f32.f16    q6, d12
    vcvt.f32.f16    q7, d14
    vcvt.f32.f16    q8, d16
    vcvt.f32.f16    q9, d18
    vcvt.f32.f16    q10, d20
    vcvt.f32.f16    q11, d22

    // loop 5
    vcvt.f32.f16    q0, d0
    vcvt.f32.f16    q1, d2
    vcvt.f32.f16    q2, d4
    vcvt.f32.f16    q3, d6
    vcvt.f32.f16    q4, d8
    vcvt.f32.f16    q5, d10
    vcvt.f32.f16    q6, d12
    vcvt.f32.f16    q7, d14
    vcvt.f32.f16    q8, d16
    vcvt.f32.f16    q9, d18
    vcvt.f32.f16    q10, d20
    vcvt.f32.f16    q11, d22

    subs        r0, r0, #1
    bne         vcvtf16Tof32MinTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vcvtf16Tof32MaxTest:

    vpush.64    {d8-d15}

vcvtf16Tof32MaxTest_LOOP:

    // loop 1
    vcvt.f32.f16    q1, d0
    vcvt.f32.f16    q2, d2
    vcvt.f32.f16    q3, d4
    vcvt.f32.f16    q4, d6
    vcvt.f32.f16    q5, d8
    vcvt.f32.f16    q6, d10
    vcvt.f32.f16    q7, d12
    vcvt.f32.f16    q8, d14
    vcvt.f32.f16    q9, d16
    vcvt.f32.f16    q10, d18
    vcvt.f32.f16    q11, d20
    vcvt.f32.f16    q0, d22

    // loop 2
    vcvt.f32.f16    q1, d0
    vcvt.f32.f16    q2, d2
    vcvt.f32.f16    q3, d4
    vcvt.f32.f16    q4, d6
    vcvt.f32.f16    q5, d8
    vcvt.f32.f16    q6, d10
    vcvt.f32.f16    q7, d12
    vcvt.f32.f16    q8, d14
    vcvt.f32.f16    q9, d16
    vcvt.f32.f16    q10, d18
    vcvt.f32.f16    q11, d20
    vcvt.f32.f16    q0, d22

    // loop 3
    vcvt.f32.f16    q1, d0
    vcvt.f32.f16    q2, d2
    vcvt.f32.f16    q3, d4
    vcvt.f32.f16    q4, d6
    vcvt.f32.f16    q5, d8
    vcvt.f32.f16    q6, d10
    vcvt.f32.f16    q7, d12
    vcvt.f32.f16    q8, d14
    vcvt.f32.f16    q9, d16
    vcvt.f32.f16    q10, d18
    vcvt.f32.f16    q11, d20
    vcvt.f32.f16    q0, d22

    // loop 4
    vcvt.f32.f16    q1, d0
    vcvt.f32.f16    q2, d2
    vcvt.f32.f16    q3, d4
    vcvt.f32.f16    q4, d6
    vcvt.f32.f16    q5, d8
    vcvt.f32.f16    q6, d10
    vcvt.f32.f16    q7, d12
    vcvt.f32.f16    q8, d14
    vcvt.f32.f16    q9, d16
    vcvt.f32.f16    q10, d18
    vcvt.f32.f16    q11, d20
    vcvt.f32.f16    q0, d22

    // loop 5
    vcvt.f32.f16    q1, d0
    vcvt.f32.f16    q2, d2
    vcvt.f32.f16    q3, d4
    vcvt.f32.f16    q4, d6
    vcvt.f32.f16    q5, d8
    vcvt.f32.f16    q6, d10
    vcvt.f32.f16    q7, d12
    vcvt.f32.f16    q8, d14
    vcvt.f32.f16    q9, d16
    vcvt.f32.f16    q10, d18
    vcvt.f32.f16    q11, d20
    vcvt.f32.f16    q0, d22

    subs        r0, r0, #1
    bne         vcvtf16Tof32MaxTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vcvtf32Tof16MinTest:

    vpush.64    {d8-d15}

vcvtf32Tof16MinTest_LOOP:

    // loop 1
    vcvt.f16.f32    d0, q0
    vcvt.f16.f32    d2, q1
    vcvt.f16.f32    d4, q2
    vcvt.f16.f32    d6, q3
    vcvt.f16.f32    d8, q4
    vcvt.f16.f32    d10, q5
    vcvt.f16.f32    d12, q6
    vcvt.f16.f32    d14, q7
    vcvt.f16.f32    d16, q8
    vcvt.f16.f32    d18, q9
    vcvt.f16.f32    d20, q10
    vcvt.f16.f32    d22, q11

    // loop 2
    vcvt.f16.f32    d0, q0
    vcvt.f16.f32    d2, q1
    vcvt.f16.f32    d4, q2
    vcvt.f16.f32    d6, q3
    vcvt.f16.f32    d8, q4
    vcvt.f16.f32    d10, q5
    vcvt.f16.f32    d12, q6
    vcvt.f16.f32    d14, q7
    vcvt.f16.f32    d16, q8
    vcvt.f16.f32    d18, q9
    vcvt.f16.f32    d20, q10
    vcvt.f16.f32    d22, q11

    // loop 3
    vcvt.f16.f32    d0, q0
    vcvt.f16.f32    d2, q1
    vcvt.f16.f32    d4, q2
    vcvt.f16.f32    d6, q3
    vcvt.f16.f32    d8, q4
    vcvt.f16.f32    d10, q5
    vcvt.f16.f32    d12, q6
    vcvt.f16.f32    d14, q7
    vcvt.f16.f32    d16, q8
    vcvt.f16.f32    d18, q9
    vcvt.f16.f32    d20, q10
    vcvt.f16.f32    d22, q11

    // loop 4
    vcvt.f16.f32    d0, q0
    vcvt.f16.f32    d2, q1
    vcvt.f16.f32    d4, q2
    vcvt.f16.f32    d6, q3
    vcvt.f16.f32    d8, q4
    vcvt.f16.f32    d10, q5
    vcvt.f16.f32    d12, q6
    vcvt.f16.f32    d14, q7
    vcvt.f16.f32    d16, q8
    vcvt.f16.f32    d18, q9
    vcvt.f16.f32    d20, q10
    vcvt.f16.f32    d22, q11

    // loop 5
    vcvt.f16.f32    d0, q0
    vcvt.f16.f32    d2, q1
    vcvt.f16.f32    d4, q2
    vcvt.f16.f32    d6, q3
    vcvt.f16.f32    d8, q4
    vcvt.f16.f32    d10, q5
    vcvt.f16.f32    d12, q6
    vcvt.f16.f32    d14, q7
    vcvt.f16.f32    d16, q8
    vcvt.f16.f32    d18, q9
    vcvt.f16.f32    d20, q10
    vcvt.f16.f32    d22, q11

    subs        r0, r0, #1
    bne         vcvtf32Tof16MinTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vcvtf32Tof16MaxTest:

    vpush.64    {d8-d15}

vcvtf32Tof16MaxTest_LOOP:

    // loop 1
    vcvt.f16.f32    d2, q0
    vcvt.f16.f32    d4, q1
    vcvt.f16.f32    d6, q2
    vcvt.f16.f32    d8, q3
    vcvt.f16.f32    d10, q4
    vcvt.f16.f32    d12, q5
    vcvt.f16.f32    d14, q6
    vcvt.f16.f32    d16, q7
    vcvt.f16.f32    d18, q8
    vcvt.f16.f32    d20, q9
    vcvt.f16.f32    d22, q10
    vcvt.f16.f32    d0, q11

    // loop 2
    vcvt.f16.f32    d2, q0
    vcvt.f16.f32    d4, q1
    vcvt.f16.f32    d6, q2
    vcvt.f16.f32    d8, q3
    vcvt.f16.f32    d10, q4
    vcvt.f16.f32    d12, q5
    vcvt.f16.f32    d14, q6
    vcvt.f16.f32    d16, q7
    vcvt.f16.f32    d18, q8
    vcvt.f16.f32    d20, q9
    vcvt.f16.f32    d22, q10
    vcvt.f16.f32    d0, q11

    // loop 3
    vcvt.f16.f32    d2, q0
    vcvt.f16.f32    d4, q1
    vcvt.f16.f32    d6, q2
    vcvt.f16.f32    d8, q3
    vcvt.f16.f32    d10, q4
    vcvt.f16.f32    d12, q5
    vcvt.f16.f32    d14, q6
    vcvt.f16.f32    d16, q7
    vcvt.f16.f32    d18, q8
    vcvt.f16.f32    d20, q9
    vcvt.f16.f32    d22, q10
    vcvt.f16.f32    d0, q11

    // loop 4
    vcvt.f16.f32    d2, q0
    vcvt.f16.f32    d4, q1
    vcvt.f16.f32    d6, q2
    vcvt.f16.f32    d8, q3
    vcvt.f16.f32    d10, q4
    vcvt.f16.f32    d12, q5
    vcvt.f16.f32    d14, q6
    vcvt.f16.f32    d16, q7
    vcvt.f16.f32    d18, q8
    vcvt.f16.f32    d20, q9
    vcvt.f16.f32    d22, q10
    vcvt.f16.f32    d0, q11

    // loop 5
    vcvt.f16.f32    d2, q0
    vcvt.f16.f32    d4, q1
    vcvt.f16.f32    d6, q2
    vcvt.f16.f32    d8, q3
    vcvt.f16.f32    d10, q4
    vcvt.f16.f32    d12, q5
    vcvt.f16.f32    d14, q6
    vcvt.f16.f32    d16, q7
    vcvt.f16.f32    d18, q8
    vcvt.f16.f32    d20, q9
    vcvt.f16.f32    d22, q10
    vcvt.f16.f32    d0, q11

    subs        r0, r0, #1
    bne         vcvtf32Tof16MaxTest_LOOP
    vpop.64     {d8-d15}
    bx          lr

_vcvtbf16Tof32MinTest:

    // loop 1
    vcvtb.f32.f16   s0, s0
    vcvtb.f32.f16   s1, s1
    vcvtb.f32.f16   s2, s2
    vcvtb.f32.f16   s3, s3
    vcvtb.f32.f16   s4, s4
    vcvtb.f32.f16   s5, s5
    vcvtb.f32.f16   s6, s6
    vcvtb.f32.f16   s7, s7
    vcvtb.f32.f16   s8, s8
    vcvtb.f32.f16   s9, s9
    vcvtb.f32.f16   s10, s10
    vcvtb.f32.f16   s11, s11

    // loop 2
    vcvtb.f32.f16   s0, s0
    vcvtb.f32.f16   s1, s1
    vcvtb.f32.f16   s2, s2
    vcvtb.f32.f16   s3, s3
    vcvtb.f32.f16   s4, s4
    vcvtb.f32.f16   s5, s5
    vcvtb.f32.f16   s6, s6
    vcvtb.f32.f16   s7, s7
    vcvtb.f32.f16   s8, s8
    vcvtb.f32.f16   s9, s9
    vcvtb.f32.f16   s10, s10
    vcvtb.f32.f16   s11, s11

    // loop 3
    vcvtb.f32.f16   s0, s0
    vcvtb.f32.f16   s1, s1
    vcvtb.f32.f16   s2, s2
    vcvtb.f32.f16   s3, s3
    vcvtb.f32.f16   s4, s4
    vcvtb.f32.f16   s5, s5
    vcvtb.f32.f16   s6, s6
    vcvtb.f32.f16   s7, s7
    vcvtb.f32.f16   s8, s8
    vcvtb.f32.f16   s9, s9
    vcvtb.f32.f16   s10, s10
    vcvtb.f32.f16   s11, s11

    // loop 4
    vcvtb.f32.f16   s0, s0
    vcvtb.f32.f16   s1, s1
    vcvtb.f32.f16   s2, s2
    vcvtb.f32.f16   s3, s3
    vcvtb.f32.f16   s4, s4
    vcvtb.f32.f16   s5, s5
    vcvtb.f32.f16   s6, s6
    vcvtb.f32.f16   s7, s7
    vcvtb.f32.f16   s8, s8
    vcvtb.f32.f16   s9, s9
    vcvtb.f32.f16   s10, s10
    vcvtb.f32.f16   s11, s11

    // loop 5
    vcvtb.f32.f16   s0, s0
    vcvtb.f32.f16   s1, s1
    vcvtb.f32.f16   s2, s2
    vcvtb.f32.f16   s3, s3
    vcvtb.f32.f16   s4, s4
    vcvtb.f32.f16   s5, s5
    vcvtb.f32.f16   s6, s6
    vcvtb.f32.f16   s7, s7
    vcvtb.f32.f16   s8, s8
    vcvtb.f32.f16   s9, s9
    vcvtb.f32.f16   s10, s10
    vcvtb.f32.f16   s11, s11

    subs        r0, r0, #1
    bne         _vcvtbf16Tof32MinTest
    bx          lr

_vcvtbf16Tof32MaxTest:

    // loop 1
    vcvtb.f32.f16   s1, s0
    vcvtb.f32.f16   s2, s1
    vcvtb.f32.f16   s3, s2
    vcvtb.f32.f16   s4, s3
    vcvtb.f32.f16   s5, s4
    vcvtb.f32.f16   s6, s5
    vcvtb.f32.f16   s7, s6
    vcvtb.f32.f16   s8, s7
    vcvtb.f32.f16   s9, s8
    vcvtb.f32.f16   s10, s9
    vcvtb.f32.f16   s11, s10
    vcvtb.f32.f16   s0, s11

    // loop 2
    vcvtb.f32.f16   s1, s0
    vcvtb.f32.f16   s2, s1
    vcvtb.f32.f16   s3, s2
    vcvtb.f32.f16   s4, s3
    vcvtb.f32.f16   s5, s4
    vcvtb.f32.f16   s6, s5
    vcvtb.f32.f16   s7, s6
    vcvtb.f32.f16   s8, s7
    vcvtb.f32.f16   s9, s8
    vcvtb.f32.f16   s10, s9
    vcvtb.f32.f16   s11, s10
    vcvtb.f32.f16   s0, s11

    // loop 3
    vcvtb.f32.f16   s1, s0
    vcvtb.f32.f16   s2, s1
    vcvtb.f32.f16   s3, s2
    vcvtb.f32.f16   s4, s3
    vcvtb.f32.f16   s5, s4
    vcvtb.f32.f16   s6, s5
    vcvtb.f32.f16   s7, s6
    vcvtb.f32.f16   s8, s7
    vcvtb.f32.f16   s9, s8
    vcvtb.f32.f16   s10, s9
    vcvtb.f32.f16   s11, s10
    vcvtb.f32.f16   s0, s11

    // loop 4
    vcvtb.f32.f16   s1, s0
    vcvtb.f32.f16   s2, s1
    vcvtb.f32.f16   s3, s2
    vcvtb.f32.f16   s4, s3
    vcvtb.f32.f16   s5, s4
    vcvtb.f32.f16   s6, s5
    vcvtb.f32.f16   s7, s6
    vcvtb.f32.f16   s8, s7
    vcvtb.f32.f16   s9, s8
    vcvtb.f32.f16   s10, s9
    vcvtb.f32.f16   s11, s10
    vcvtb.f32.f16   s0, s11

    // loop 5
    vcvtb.f32.f16   s1, s0
    vcvtb.f32.f16   s2, s1
    vcvtb.f32.f16   s3, s2
    vcvtb.f32.f16   s4, s3
    vcvtb.f32.f16   s5, s4
    vcvtb.f32.f16   s6, s5
    vcvtb.f32.f16   s7, s6
    vcvtb.f32.f16   s8, s7
    vcvtb.f32.f16   s9, s8
    vcvtb.f32.f16   s10, s9
    vcvtb.f32.f16   s11, s10
    vcvtb.f32.f16   s0, s11

    subs        r0, r0, #1
    bne         _vcvtbf16Tof32MaxTest
    bx          lr

_vcvtbf32Tof16MinTest:

    // loop 1
    vcvtb.f16.f32   s0, s0
    vcvtb.f16.f32   s1, s1
    vcvtb.f16.f32   s2, s2
    vcvtb.f16.f32   s3, s3
    vcvtb.f16.f32   s4, s4
    vcvtb.f16.f32   s5, s5
    vcvtb.f16.f32   s6, s6
    vcvtb.f16.f32   s7, s7
    vcvtb.f16.f32   s8, s8
    vcvtb.f16.f32   s9, s9
    vcvtb.f16.f32   s10, s10
    vcvtb.f16.f32   s11, s11

    // loop 2
    vcvtb.f16.f32   s0, s0
    vcvtb.f16.f32   s1, s1
    vcvtb.f16.f32   s2, s2
    vcvtb.f16.f32   s3, s3
    vcvtb.f16.f32   s4, s4
    vcvtb.f16.f32   s5, s5
    vcvtb.f16.f32   s6, s6
    vcvtb.f16.f32   s7, s7
    vcvtb.f16.f32   s8, s8
    vcvtb.f16.f32   s9, s9
    vcvtb.f16.f32   s10, s10
    vcvtb.f16.f32   s11, s11

    // loop 3
    vcvtb.f16.f32   s0, s0
    vcvtb.f16.f32   s1, s1
    vcvtb.f16.f32   s2, s2
    vcvtb.f16.f32   s3, s3
    vcvtb.f16.f32   s4, s4
    vcvtb.f16.f32   s5, s5
    vcvtb.f16.f32   s6, s6
    vcvtb.f16.f32   s7, s7
    vcvtb.f16.f32   s8, s8
    vcvtb.f16.f32   s9, s9
    vcvtb.f16.f32   s10, s10
    vcvtb.f16.f32   s11, s11

    // loop 4
    vcvtb.f16.f32   s0, s0
    vcvtb.f16.f32   s1, s1
    vcvtb.f16.f32   s2, s2
    vcvtb.f16.f32   s3, s3
    vcvtb.f16.f32   s4, s4
    vcvtb.f16.f32   s5, s5
    vcvtb.f16.f32   s6, s6
    vcvtb.f16.f32   s7, s7
    vcvtb.f16.f32   s8, s8
    vcvtb.f16.f32   s9, s9
    vcvtb.f16.f32   s10, s10
    vcvtb.f16.f32   s11, s11

    // loop 5
    vcvtb.f16.f32   s0, s0
    vcvtb.f16.f32   s1, s1
    vcvtb.f16.f32   s2, s2
    vcvtb.f16.f32   s3, s3
    vcvtb.f16.f32   s4, s4
    vcvtb.f16.f32   s5, s5
    vcvtb.f16.f32   s6, s6
    vcvtb.f16.f32   s7, s7
    vcvtb.f16.f32   s8, s8
    vcvtb.f16.f32   s9, s9
    vcvtb.f16.f32   s10, s10
    vcvtb.f16.f32   s11, s11

    subs    r0, r0, #1
    bne     _vcvtbf32Tof16MinTest
    bx      lr

_vcvtbf32Tof16MaxTest:

    // loop 1
    vcvtb.f16.f32   s1, s0
    vcvtb.f16.f32   s2, s1
    vcvtb.f16.f32   s3, s2
    vcvtb.f16.f32   s4, s3
    vcvtb.f16.f32   s5, s4
    vcvtb.f16.f32   s6, s5
    vcvtb.f16.f32   s7, s6
    vcvtb.f16.f32   s8, s7
    vcvtb.f16.f32   s9, s8
    vcvtb.f16.f32   s10, s9
    vcvtb.f16.f32   s11, s10
    vcvtb.f16.f32   s0, s11

    // loop 2
    vcvtb.f16.f32   s1, s0
    vcvtb.f16.f32   s2, s1
    vcvtb.f16.f32   s3, s2
    vcvtb.f16.f32   s4, s3
    vcvtb.f16.f32   s5, s4
    vcvtb.f16.f32   s6, s5
    vcvtb.f16.f32   s7, s6
    vcvtb.f16.f32   s8, s7
    vcvtb.f16.f32   s9, s8
    vcvtb.f16.f32   s10, s9
    vcvtb.f16.f32   s11, s10
    vcvtb.f16.f32   s0, s11

    // loop 3
    vcvtb.f16.f32   s1, s0
    vcvtb.f16.f32   s2, s1
    vcvtb.f16.f32   s3, s2
    vcvtb.f16.f32   s4, s3
    vcvtb.f16.f32   s5, s4
    vcvtb.f16.f32   s6, s5
    vcvtb.f16.f32   s7, s6
    vcvtb.f16.f32   s8, s7
    vcvtb.f16.f32   s9, s8
    vcvtb.f16.f32   s10, s9
    vcvtb.f16.f32   s11, s10
    vcvtb.f16.f32   s0, s11

    // loop 4
    vcvtb.f16.f32   s1, s0
    vcvtb.f16.f32   s2, s1
    vcvtb.f16.f32   s3, s2
    vcvtb.f16.f32   s4, s3
    vcvtb.f16.f32   s5, s4
    vcvtb.f16.f32   s6, s5
    vcvtb.f16.f32   s7, s6
    vcvtb.f16.f32   s8, s7
    vcvtb.f16.f32   s9, s8
    vcvtb.f16.f32   s10, s9
    vcvtb.f16.f32   s11, s10
    vcvtb.f16.f32   s0, s11

    // loop 5
    vcvtb.f16.f32   s1, s0
    vcvtb.f16.f32   s2, s1
    vcvtb.f16.f32   s3, s2
    vcvtb.f16.f32   s4, s3
    vcvtb.f16.f32   s5, s4
    vcvtb.f16.f32   s6, s5
    vcvtb.f16.f32   s7, s6
    vcvtb.f16.f32   s8, s7
    vcvtb.f16.f32   s9, s8
    vcvtb.f16.f32   s10, s9
    vcvtb.f16.f32   s11, s10
    vcvtb.f16.f32   s0, s11

    subs    r0, r0, #1
    bne     _vcvtbf32Tof16MaxTest
    bx      lr

#endif











