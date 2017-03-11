//
//  ZennyInstViewController.h
//  CPU Dasher
//
//  Created by adwo on 12-5-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZennyInstViewController : UIViewController
{
@private
    
    CGFloat descTextHeight;
    
@public
    
    NSInteger sectionIndex;
    NSInteger rowIndex;
    NSString *instName;
    
    NSInteger integerInstNumber;
    NSInteger neonInstNumbers;
    NSInteger loadStoreNumbers;
    NSInteger miscelleneousNumbers;
}

- (void)showTitle;
- (void)showContents;

@end


extern int freqTest(int cycles);

// 0
extern int adcImmMinTest(int cycles, void *pMem);
extern int adcImmMaxTest(int cycles, void *pMem);
extern int adcRegMinTest(int cycles, void *pMem);
extern int adcRegMaxTest(int cycles, void *pMem);
extern int adcShftMinTest(int cycles, void *pMem);
extern int adcShftMaxTest(int cycles, void *pMem);

// 1
extern int addImmMinTest(int cycles, void *pMem);
extern int addImmMaxTest(int cycles, void *pMem);
extern int addRegMinTest(int cycles, void *pMem);
extern int addRegMaxTest(int cycles, void *pMem);
extern int addShftMinTest(int cycles, void *pMem);
extern int addShftMaxTest(int cycles, void *pMem);

extern int addThumbImmT1MinTest(int cycles, void *pMem);
extern int addThumbImmT1MaxTest(int cycles, void *pMem);
extern int addThumbImmT2MinTest(int cycles, void *pMem);
extern int addThumbImmT2MaxTest(int cycles, void *pMem);
extern int addThumbImmT3MinTest(int cycles, void *pMem);
extern int addThumbImmT3MaxTest(int cycles, void *pMem);
extern int addThumbImmT4MinTest(int cycles, void *pMem);
extern int addThumbImmT4MaxTest(int cycles, void *pMem);

extern int addThumbRegT1MinTest(int cycles, void *pMem);
extern int addThumbRegT1MaxTest(int cycles, void *pMem);
extern int addThumbRegT2MinTest(int cycles, void *pMem);
extern int addThumbRegT2MaxTest(int cycles, void *pMem);
extern int addThumbRegT3MinTest(int cycles, void *pMem);
extern int addThumbRegT3MaxTest(int cycles, void *pMem);

// 2
extern int andImmMinTest(int cycles, void *pMem);
extern int andImmMaxTest(int cycles, void *pMem);
extern int andRegMinTest(int cycles, void *pMem);
extern int andRegMaxTest(int cycles, void *pMem);
extern int andShftMinTest(int cycles, void *pMem);
extern int andShftMaxTest(int cycles, void *pMem);

// 3
extern int asrImmMinTest(int cycles, void *pMem);
extern int asrImmMaxTest(int cycles, void *pMem);
extern int asrRegMinTest(int cycles, void *pMem);
extern int asrRegMaxTest(int cycles, void *pMem);

// 4
extern int bfcMinTest(int cycles, void *pMem);
extern int bfcMaxTest(int cycles, void *pMem);

// 5
extern int bfiMinTest(int cycles, void *pMem);
extern int bfiMaxTest(int cycles, void *pMem);

// 6
extern int bicImmMinTest(int cycles, void *pMem);
extern int bicImmMaxTest(int cycles, void *pMem);
extern int bicRegMinTest(int cycles, void *pMem);
extern int bicRegMaxTest(int cycles, void *pMem);
extern int bicShftMinTest(int cycles, void *pMem);
extern int bicShftMaxTest(int cycles, void *pMem);

extern int cbnzAvgTest(int cycles, void *pMem);

// 7
extern int clzMinTest(int cycles, void *pMem);
extern int clzMaxTest(int cycles, void *pMem);

// 8
extern int cmnImmMinTest(int cycles, void *pMem);
extern int cmnImmMaxTest(int cycles, void *pMem);
extern int cmnRegMinTest(int cycles, void *pMem);
extern int cmnRegMaxTest(int cycles, void *pMem);
extern int cmnShftMinTest(int cycles, void *pMem);
extern int cmnShftMaxTest(int cycles, void *pMem);

// 9
extern int cmpImmMinTest(int cycles, void *pMem);
extern int cmpImmMaxTest(int cycles, void *pMem);
extern int cmpRegMinTest(int cycles, void *pMem);
extern int cmpRegMaxTest(int cycles, void *pMem);
extern int cmpShftMinTest(int cycles, void *pMem);
extern int cmpShftMaxTest(int cycles, void *pMem);

// 10
extern int eorImmMinTest(int cycles, void *pMem);
extern int eorImmMaxTest(int cycles, void *pMem);
extern int eorRegMinTest(int cycles, void *pMem);
extern int eorRegMaxTest(int cycles, void *pMem);
extern int eorShftMinTest(int cycles, void *pMem);
extern int eorShftMaxTest(int cycles, void *pMem);

// 11
extern int lslImmMinTest(int cycles, void *pMem);
extern int lslImmMaxTest(int cycles, void *pMem);
extern int lslRegMinTest(int cycles, void *pMem);
extern int lslRegMaxTest(int cycles, void *pMem);

// 12
extern int lsrImmMinTest(int cycles, void *pMem);
extern int lsrImmMaxTest(int cycles, void *pMem);
extern int lsrRegMinTest(int cycles, void *pMem);
extern int lsrRegMaxTest(int cycles, void *pMem);

// 13
extern int mlaMinTest(int cycles, void *pMem);
extern int mlaMaxTest(int cycles, void *pMem);

// 14
extern int mlsMinTest(int cycles, void *pMem);
extern int mlsMaxTest(int cycles, void *pMem);

// 15
extern int movImmMinTest(int cycles, void *pMem);
extern int movImmMaxTest(int cycles, void *pMem);
extern int movRegMinTest(int cycles, void *pMem);
extern int movRegMaxTest(int cycles, void *pMem);
extern int movShftMinTest(int cycles, void *pMem);
extern int movShftMaxTest(int cycles, void *pMem);

// 16
extern int movtMinTest(int cycles, void *pMem);
extern int movtMaxTest(int cycles, void *pMem);

// 17
extern int mulMinTest(int cycles, void *pMem);
extern int mulMaxTest(int cycles, void *pMem);

// 18
extern int mvnImmMinTest(int cycles, void *pMem);
extern int mvnImmMaxTest(int cycles, void *pMem);
extern int mvnRegMinTest(int cycles, void *pMem);
extern int mvnRegMaxTest(int cycles, void *pMem);
extern int mvnShftMinTest(int cycles, void *pMem);
extern int mvnShftMaxTest(int cycles, void *pMem);

// 19
extern int ornImmMinTest(int cycles, void *pMem);
extern int ornImmMaxTest(int cycles, void *pMem);
extern int ornRegMinTest(int cycles, void *pMem);
extern int ornRegMaxTest(int cycles, void *pMem);

// 20
extern int orrImmMinTest(int cycles, void *pMem);
extern int orrImmMaxTest(int cycles, void *pMem);
extern int orrRegMinTest(int cycles, void *pMem);
extern int orrRegMaxTest(int cycles, void *pMem);
extern int orrShftMinTest(int cycles, void *pMem);
extern int orrShftMaxTest(int cycles, void *pMem);

// 21
extern int pkhMinTest(int cycles, void *pMem);
extern int pkhMaxTest(int cycles, void *pMem);

// 22
extern int qaddMinTest(int cycles, void *pMem);
extern int qaddMaxTest(int cycles, void *pMem);

// 23
extern int qadd16MinTest(int cycles, void *pMem);
extern int qadd16MaxTest(int cycles, void *pMem);

// 24
extern int qadd8MinTest(int cycles, void *pMem);
extern int qadd8MaxTest(int cycles, void *pMem);

// 25
extern int qasxMinTest(int cycles, void *pMem);
extern int qasxMaxTest(int cycles, void *pMem);

// 26
extern int qdaddMinTest(int cycles, void *pMem);
extern int qdaddMaxTest(int cycles, void *pMem);

// 27
extern int qdsubMinTest(int cycles, void *pMem);
extern int qdsubMaxTest(int cycles, void *pMem);

// 28
extern int qsaxMinTest(int cycles, void *pMem);
extern int qsaxMaxTest(int cycles, void *pMem);

// 29
extern int qsubMinTest(int cycles, void *pMem);
extern int qsubMaxTest(int cycles, void *pMem);

// 30
extern int qsub16MinTest(int cycles, void *pMem);
extern int qsub16MaxTest(int cycles, void *pMem);

// 31
extern int qsub8MinTest(int cycles, void *pMem);
extern int qsub8MaxTest(int cycles, void *pMem);

// 32
extern int rbitMinTest(int cycles, void *pMem);
extern int rbitMaxTest(int cycles, void *pMem);

// 33
extern int revMinTest(int cycles, void *pMem);
extern int revMaxTest(int cycles, void *pMem);

// 34
extern int rev16MinTest(int cycles, void *pMem);
extern int rev16MaxTest(int cycles, void *pMem);

// 35
extern int revshMinTest(int cycles, void *pMem);
extern int revshMaxTest(int cycles, void *pMem);

// 36
extern int rorImmMinTest(int cycles, void *pMem);
extern int rorImmMaxTest(int cycles, void *pMem);
extern int rorRegMinTest(int cycles, void *pMem);
extern int rorRegMaxTest(int cycles, void *pMem);

// 37
extern int rrxMinTest(int cycles, void *pMem);
extern int rrxMaxTest(int cycles, void *pMem);

// 38
extern int rsbImmMinTest(int cycles, void *pMem);
extern int rsbImmMaxTest(int cycles, void *pMem);
extern int rsbRegMinTest(int cycles, void *pMem);
extern int rsbRegMaxTest(int cycles, void *pMem);
extern int rsbShftMinTest(int cycles, void *pMem);
extern int rsbShftMaxTest(int cycles, void *pMem);

// 39
extern int rscImmMinTest(int cycles, void *pMem);
extern int rscImmMaxTest(int cycles, void *pMem);
extern int rscRegMinTest(int cycles, void *pMem);
extern int rscRegMaxTest(int cycles, void *pMem);
extern int rscShftMinTest(int cycles, void *pMem);
extern int rscShftMaxTest(int cycles, void *pMem);

// 40
extern int sadd16MinTest(int cycles, void *pMem);
extern int sadd16MaxTest(int cycles, void *pMem);

// 41
extern int sadd8MinTest(int cycles, void *pMem);
extern int sadd8MaxTest(int cycles, void *pMem);

// 42
extern int sasxMinTest(int cycles, void *pMem);
extern int sasxMaxTest(int cycles, void *pMem);

// 43
extern int sbcImmMinTest(int cycles, void *pMem);
extern int sbcImmMaxTest(int cycles, void *pMem);
extern int sbcRegMinTest(int cycles, void *pMem);
extern int sbcRegMaxTest(int cycles, void *pMem);
extern int sbcShftMinTest(int cycles, void *pMem);
extern int sbcShftMaxTest(int cycles, void *pMem);

// 44
extern int sbfxMinTest(int cycles, void *pMem);
extern int sbfxMaxTest(int cycles, void *pMem);

// 45
extern int selMinTest(int cycles, void *pMem);
extern int selMaxTest(int cycles, void *pMem);

// 46
extern int shadd16MinTest(int cycles, void *pMem);
extern int shadd16MaxTest(int cycles, void *pMem);

// 47
extern int shadd8MinTest(int cycles, void *pMem);
extern int shadd8MaxTest(int cycles, void *pMem);

// 48
extern int shasxMinTest(int cycles, void *pMem);
extern int shasxMaxTest(int cycles, void *pMem);

// 49
extern int shsaxMinTest(int cycles, void *pMem);
extern int shsaxMaxTest(int cycles, void *pMem);

// 50
extern int shsub16MinTest(int cycles, void *pMem);
extern int shsub16MaxTest(int cycles, void *pMem);

// 51
extern int shsub8MinTest(int cycles, void *pMem);
extern int shsub8MaxTest(int cycles, void *pMem);

// 52
extern int smlaMinTest(int cycles, void *pMem);
extern int smlaMaxTest(int cycles, void *pMem);

// 53
extern int smladMinTest(int cycles, void *pMem);
extern int smladMaxTest(int cycles, void *pMem);

// 54
extern int smlalMinTest(int cycles, void *pMem);
extern int smlalMaxTest(int cycles, void *pMem);

// 55
extern int smlalxyMinTest(int cycles, void *pMem);
extern int smlalxyMaxTest(int cycles, void *pMem);

// 56
extern int smlaldMinTest(int cycles, void *pMem);
extern int smlaldMaxTest(int cycles, void *pMem);

// 57
extern int smlawMinTest(int cycles, void *pMem);
extern int smlawMaxTest(int cycles, void *pMem);

// 58
extern int smlsdMinTest(int cycles, void *pMem);
extern int smlsdMaxTest(int cycles, void *pMem);

// 59
extern int smlsldMinTest(int cycles, void *pMem);
extern int smlsldMaxTest(int cycles, void *pMem);

// 60
extern int smmlaMinTest(int cycles, void *pMem);
extern int smmlaMaxTest(int cycles, void *pMem);

// 61
extern int smmlsMinTest(int cycles, void *pMem);
extern int smmlsMaxTest(int cycles, void *pMem);

// 62
extern int smmulMinTest(int cycles, void *pMem);
extern int smmulMaxTest(int cycles, void *pMem);

// 63
extern int smuadMinTest(int cycles, void *pMem);
extern int smuadMaxTest(int cycles, void *pMem);

// 64
extern int smulMinTest(int cycles, void *pMem);
extern int smulMaxTest(int cycles, void *pMem);

// 65
extern int smullMinTest(int cycles, void *pMem);
extern int smullMaxTest(int cycles, void *pMem);

// 66
extern int smulwMinTest(int cycles, void *pMem);
extern int smulwMaxTest(int cycles, void *pMem);

// 67
extern int smusdMinTest(int cycles, void *pMem);
extern int smusdMaxTest(int cycles, void *pMem);

// 68
extern int ssatMinTest(int cycles, void *pMem);
extern int ssatMaxTest(int cycles, void *pMem);

// 69
extern int ssat16MinTest(int cycles, void *pMem);
extern int ssat16MaxTest(int cycles, void *pMem);

// 70
extern int ssaxMinTest(int cycles, void *pMem);
extern int ssaxMaxTest(int cycles, void *pMem);

// 71
extern int ssub16MinTest(int cycles, void *pMem);
extern int ssub16MaxTest(int cycles, void *pMem);

// 72
extern int ssub8MinTest(int cycles, void *pMem);
extern int ssub8MaxTest(int cycles, void *pMem);

// 73
extern int subImmMinTest(int cycles, void *pMem);
extern int subImmMaxTest(int cycles, void *pMem);
extern int subRegMinTest(int cycles, void *pMem);
extern int subRegMaxTest(int cycles, void *pMem);
extern int subShftMinTest(int cycles, void *pMem);
extern int subShftMaxTest(int cycles, void *pMem);

extern int subImmThumbT1MinTest(int cycles, void *pMem);
extern int subImmThumbT1MaxTest(int cycles, void *pMem);
extern int subImmThumbT2MinTest(int cycles, void *pMem);
extern int subImmThumbT2MaxTest(int cycles, void *pMem);
extern int subImmThumbT3MinTest(int cycles, void *pMem);
extern int subImmThumbT3MaxTest(int cycles, void *pMem);
extern int subImmThumbT4MinTest(int cycles, void *pMem);
extern int subImmThumbT4MaxTest(int cycles, void *pMem);

// 74
extern int sxtabMinTest(int cycles, void *pMem);
extern int sxtabMaxTest(int cycles, void *pMem);

// 75
extern int sxtab16MinTest(int cycles, void *pMem);
extern int sxtab16MaxTest(int cycles, void *pMem);

// 76
extern int sxtahMinTest(int cycles, void *pMem);
extern int sxtahMaxTest(int cycles, void *pMem);

// 77
extern int sxtbMinTest(int cycles, void *pMem);
extern int sxtbMaxTest(int cycles, void *pMem);

// 78
extern int sxtb16MinTest(int cycles, void *pMem);
extern int sxtb16MaxTest(int cycles, void *pMem);

// 79
extern int sxthMinTest(int cycles, void *pMem);
extern int sxthMaxTest(int cycles, void *pMem);

// 80
extern int teqImmMinTest(int cycles, void *pMem);
extern int teqImmMaxTest(int cycles, void *pMem);
extern int teqRegMinTest(int cycles, void *pMem);
extern int teqRegMaxTest(int cycles, void *pMem);
extern int teqShftMinTest(int cycles, void *pMem);
extern int teqShftMaxTest(int cycles, void *pMem);

// 81
extern int tstImmMinTest(int cycles, void *pMem);
extern int tstImmMaxTest(int cycles, void *pMem);
extern int tstRegMinTest(int cycles, void *pMem);
extern int tstRegMaxTest(int cycles, void *pMem);
extern int tstShftMinTest(int cycles, void *pMem);
extern int tstShftMaxTest(int cycles, void *pMem);

// 82
extern int uadd16MinTest(int cycles, void *pMem);
extern int uadd16MaxTest(int cycles, void *pMem);

// 83
extern int uadd8MinTest(int cycles, void *pMem);
extern int uadd8MaxTest(int cycles, void *pMem);

// 84
extern int uasxMinTest(int cycles, void *pMem);
extern int uasxMaxTest(int cycles, void *pMem);

// 85
extern int ubfxMinTest(int cycles, void *pMem);
extern int ubfxMaxTest(int cycles, void *pMem);

// 86
extern int uhadd16MinTest(int cycles, void *pMem);
extern int uhadd16MaxTest(int cycles, void *pMem);

// 87
extern int uhadd8MinTest(int cycles, void *pMem);
extern int uhadd8MaxTest(int cycles, void *pMem);

// 88
extern int umaalMinTest(int cycles, void *pMem);
extern int umaalMaxTest(int cycles, void *pMem);

// 89
extern int umlalMinTest(int cycles, void *pMem);
extern int umlalMaxTest(int cycles, void *pMem);

// 90
extern int umullMinTest(int cycles, void *pMem);
extern int umullMaxTest(int cycles, void *pMem);

// 91
extern int uqadd16MinTest(int cycles, void *pMem);
extern int uqadd16MaxTest(int cycles, void *pMem);

// 92
extern int uqadd8MinTest(int cycles, void *pMem);
extern int uqadd8MaxTest(int cycles, void *pMem);

// 93
extern int uqasxMinTest(int cycles, void *pMem);
extern int uqasxMaxTest(int cycles, void *pMem);

// 94
extern int uqsaxMinTest(int cycles, void *pMem);
extern int uqsaxMaxTest(int cycles, void *pMem);

// 95
extern int uqsub16MinTest(int cycles, void *pMem);
extern int uqsub16MaxTest(int cycles, void *pMem);

// 96
extern int uqsub8MinTest(int cycles, void *pMem);
extern int uqsub8MaxTest(int cycles, void *pMem);

// 97
extern int usad8MinTest(int cycles, void *pMem);
extern int usad8MaxTest(int cycles, void *pMem);

// 98
extern int usada8MinTest(int cycles, void *pMem);
extern int usada8MaxTest(int cycles, void *pMem);

// 99
extern int usatMinTest(int cycles, void *pMem);
extern int usatMaxTest(int cycles, void *pMem);

// 100
extern int usat16MinTest(int cycles, void *pMem);
extern int usat16MaxTest(int cycles, void *pMem);

// 101
extern int usaxMinTest(int cycles, void *pMem);
extern int usaxMaxTest(int cycles, void *pMem);

// 102
extern int usub16MinTest(int cycles, void *pMem);
extern int usub16MaxTest(int cycles, void *pMem);

// 103
extern int usub8MinTest(int cycles, void *pMem);
extern int usub8MaxTest(int cycles, void *pMem);

// 104
extern int uxtabMinTest(int cycles, void *pMem);
extern int uxtabMaxTest(int cycles, void *pMem);

// 105
extern int uxtab16MinTest(int cycles, void *pMem);
extern int uxtab16MaxTest(int cycles, void *pMem);

// 106
extern int uxtahMinTest(int cycles, void *pMem);
extern int uxtahMaxTest(int cycles, void *pMem);

// 107
extern int uxtbMinTest(int cycles, void *pMem);
extern int uxtbMaxTest(int cycles, void *pMem);

// 108
extern int uxtb16MinTest(int cycles, void *pMem);
extern int uxtb16MaxTest(int cycles, void *pMem);

// 109
extern int uxthMinTest(int cycles, void *pMem);
extern int uxthMaxTest(int cycles, void *pMem);

// 110
extern int vabaS32MinTest(int cycles, void *pMem);
extern int vabaS32MaxTest(int cycles, void *pMem);
extern int vabalS32MinTest(int cycles, void *pMem);
extern int vabalS32MaxTest(int cycles, void *pMem);

// 111
extern int vabdI4MinTest(int cycles, void *pMem);
extern int vabdI4MaxTest(int cycles, void *pMem);
extern int vabdF4MinTest(int cycles, void *pMem);
extern int vabdF4MaxTest(int cycles, void *pMem);
extern int vabdlI2MinTest(int cycles, void *pMem);
extern int vabdlI2MaxTest(int cycles, void *pMem);

// 112
extern int vabsFMinTest(int cycles, void *pMem);
extern int vabsFMaxTest(int cycles, void *pMem);
extern int vabsDMinTest(int cycles, void *pMem);
extern int vabsDMaxTest(int cycles, void *pMem);
extern int vabsI4MinTest(int cycles, void *pMem);
extern int vabsI4MaxTest(int cycles, void *pMem);
extern int vabsF4MinTest(int cycles, void *pMem);
extern int vabsF4MaxTest(int cycles, void *pMem);

// 113
extern int vacgeF4MinTest(int cycles, void *pMem);
extern int vacgeF4MaxTest(int cycles, void *pMem);

// 114
extern int vaddFMinTest(int cycles, void *pMem);
extern int vaddFMaxTest(int cycles, void *pMem);
extern int vaddDMinTest(int cycles, void *pMem);
extern int vaddDMaxTest(int cycles, void *pMem);
extern int vaddL2MinTest(int cycles, void *pMem);
extern int vaddL2MaxTest(int cycles, void *pMem);
extern int vaddI4MinTest(int cycles, void *pMem);
extern int vaddI4MaxTest(int cycles, void *pMem);
extern int vaddF4MinTest(int cycles, void *pMem);
extern int vaddF4MaxTest(int cycles, void *pMem);

// 115
extern int vaddhnI4MinTest(int cycles, void *pMem);
extern int vaddhnI4MaxTest(int cycles, void *pMem);
extern int vaddhnL2MinTest(int cycles, void *pMem);
extern int vaddhnL2MaxTest(int cycles, void *pMem);

// 116
extern int vaddlI2MinTest(int cycles, void *pMem);
extern int vaddlI2MaxTest(int cycles, void *pMem);
extern int vaddwI4MinTest(int cycles, void *pMem);
extern int vaddwI4MaxTest(int cycles, void *pMem);

// 117
extern int vandI4MinTest(int cycles, void *pMem);
extern int vandI4MaxTest(int cycles, void *pMem);

// 118
extern int vbicImmMinTest(int cycles, void *pMem);
extern int vbicImmMaxTest(int cycles, void *pMem);
extern int vbicI4MinTest(int cycles, void *pMem);
extern int vbicI4MaxTest(int cycles, void *pMem);

// 119
extern int vbifMinTest(int cycles, void *pMem);
extern int vbifMaxTest(int cycles, void *pMem);
extern int vbitMinTest(int cycles, void *pMem);
extern int vbitMaxTest(int cycles, void *pMem);
extern int vbslMinTest(int cycles, void *pMem);
extern int vbslMaxTest(int cycles, void *pMem);

// 120
extern int vceqI4RegMinTest(int cycles, void *pMem);
extern int vceqI4RegMaxTest(int cycles, void *pMem);
extern int vceqF4RegMinTest(int cycles, void *pMem);
extern int vceqF4RegMaxTest(int cycles, void *pMem);
extern int vceqI4ImmMinTest(int cycles, void *pMem);
extern int vceqI4ImmMaxTest(int cycles, void *pMem);
extern int vceqF4ImmMinTest(int cycles, void *pMem);
extern int vceqF4ImmMaxTest(int cycles, void *pMem);

// 121
extern int vcgeI4RegMinTest(int cycles, void *pMem);
extern int vcgeI4RegMaxTest(int cycles, void *pMem);
extern int vcgeF4RegMinTest(int cycles, void *pMem);
extern int vcgeF4RegMaxTest(int cycles, void *pMem);
extern int vcgeI4ImmMinTest(int cycles, void *pMem);
extern int vcgeI4ImmMaxTest(int cycles, void *pMem);
extern int vcgeF4ImmMinTest(int cycles, void *pMem);
extern int vcgeF4ImmMaxTest(int cycles, void *pMem);

// 122
extern int vcgtI4RegMinTest(int cycles, void *pMem);
extern int vcgtI4RegMaxTest(int cycles, void *pMem);
extern int vcgtF4RegMinTest(int cycles, void *pMem);
extern int vcgtF4RegMaxTest(int cycles, void *pMem);
extern int vcgtI4ImmMinTest(int cycles, void *pMem);
extern int vcgtI4ImmMaxTest(int cycles, void *pMem);
extern int vcgtF4ImmMinTest(int cycles, void *pMem);
extern int vcgtF4ImmMaxTest(int cycles, void *pMem);

// 123
extern int vcleI4RegMinTest(int cycles, void *pMem);
extern int vcleI4RegMaxTest(int cycles, void *pMem);
extern int vcleF4RegMinTest(int cycles, void *pMem);
extern int vcleF4RegMaxTest(int cycles, void *pMem);
extern int vcleI4ImmMinTest(int cycles, void *pMem);
extern int vcleI4ImmMaxTest(int cycles, void *pMem);
extern int vcleF4ImmMinTest(int cycles, void *pMem);
extern int vcleF4ImmMaxTest(int cycles, void *pMem);

// 124
extern int vclsI4MinTest(int cycles, void *pMem);
extern int vclsI4MaxTest(int cycles, void *pMem);

// 125
extern int vclzI4MinTest(int cycles, void *pMem);
extern int vclzI4MaxTest(int cycles, void *pMem);

// 126
extern int vcmpImmFMinTest(int cycles, void *pMem);
extern int vcmpImmFMaxTest(int cycles, void *pMem);
extern int vcmpImmDMinTest(int cycles, void *pMem);
extern int vcmpImmDMaxTest(int cycles, void *pMem);
extern int vcmpRegFMinTest(int cycles, void *pMem);
extern int vcmpRegFMaxTest(int cycles, void *pMem);
extern int vcmpRegDMinTest(int cycles, void *pMem);
extern int vcmpRegDMaxTest(int cycles, void *pMem);

// 127
extern int vcntMinTest(int cycles, void *pMem);
extern int vcntMaxTest(int cycles, void *pMem);

// 128
extern int vcvtI4F4MinTest(int cycles, void *pMem);
extern int vcvtI4F4MaxTest(int cycles, void *pMem);
extern int vcvtF4I4MinTest(int cycles, void *pMem);
extern int vcvtF4I4MaxTest(int cycles, void *pMem);

// 129
extern int vcvtIFMinTest(int cycles, void *pMem);
extern int vcvtIFMaxTest(int cycles, void *pMem);
extern int vcvtIDMinTest(int cycles, void *pMem);
extern int vcvtIDMaxTest(int cycles, void *pMem);
extern int vcvtFIMinTest(int cycles, void *pMem);
extern int vcvtFIMaxTest(int cycles, void *pMem);
extern int vcvtDIMinTest(int cycles, void *pMem);
extern int vcvtDIMaxTest(int cycles, void *pMem);

// 130
extern int vcvtI4F4FixedMinTest(int cycles, void *pMem);
extern int vcvtI4F4FixedMaxTest(int cycles, void *pMem);
extern int vcvtF4I4FixedMinTest(int cycles, void *pMem);
extern int vcvtF4I4FixedMaxTest(int cycles, void *pMem);

// 131
extern int vcvtIFFixedMinTest(int cycles, void *pMem);
extern int vcvtIFFixedMaxTest(int cycles, void *pMem);
extern int vcvtIDFixedMinTest(int cycles, void *pMem);
extern int vcvtIDFixedMaxTest(int cycles, void *pMem);
extern int vcvtFIFixedMinTest(int cycles, void *pMem);
extern int vcvtFIFixedMaxTest(int cycles, void *pMem);
extern int vcvtDIFixedMinTest(int cycles, void *pMem);
extern int vcvtDIFixedMaxTest(int cycles, void *pMem);

// 132
extern int vcvtFDMinTest(int cycles, void *pMem);
extern int vcvtFDMaxTest(int cycles, void *pMem);
extern int vcvtDFMinTest(int cycles, void *pMem);
extern int vcvtDFMaxTest(int cycles, void *pMem);

extern int vcvtf16Tof32MinTest(int cycles, void *pMem);
extern int vcvtf16Tof32MaxTest(int cycles, void *pMem);
extern int vcvtf32Tof16MinTest(int cycles, void *pMem);
extern int vcvtf32Tof16MaxTest(int cycles, void *pMem);

extern int vcvtbf16Tof32MinTest(int cycles, void *pMem);
extern int vcvtbf16Tof32MaxTest(int cycles, void *pMem);
extern int vcvtbf32Tof16MinTest(int cycles, void *pMem);
extern int vcvtbf32Tof16MaxTest(int cycles, void *pMem);

// 133
extern int vdivFMinTest(int cycles, void *pMem);
extern int vdivFMaxTest(int cycles, void *pMem);
extern int vdivDMinTest(int cycles, void *pMem);
extern int vdivDMaxTest(int cycles, void *pMem);

// 134
extern int vdupScalarMinTest(int cycles, void *pMem);
extern int vdupScalarMaxTest(int cycles, void *pMem);
extern int vdupRegMinTest(int cycles, void *pMem);
extern int vdupRegMaxTest(int cycles, void *pMem);

// 135
extern int veorMinTest(int cycles, void *pMem);
extern int veorMaxTest(int cycles, void *pMem);

// 136
extern int vextMinTest(int cycles, void *pMem);
extern int vextMaxTest(int cycles, void *pMem);

// 137
extern int vhaddI4MinTest(int cycles, void *pMem);
extern int vhaddI4MaxTest(int cycles, void *pMem);

// 138
extern int vhsubI4MinTest(int cycles, void *pMem);
extern int vhsubI4MaxTest(int cycles, void *pMem);

// 139
extern int vmaxI4MinTest(int cycles, void *pMem);
extern int vmaxI4MaxTest(int cycles, void *pMem);
extern int vmaxF4MinTest(int cycles, void *pMem);
extern int vmaxF4MaxTest(int cycles, void *pMem);

// 140
extern int vminI4MinTest(int cycles, void *pMem);
extern int vminI4MaxTest(int cycles, void *pMem);
extern int vminF4MinTest(int cycles, void *pMem);
extern int vminF4MaxTest(int cycles, void *pMem);

// 141
extern int vmlaI4MinTest(int cycles, void *pMem);
extern int vmlaI4MaxTest(int cycles, void *pMem);
extern int vmlaF4MinTest(int cycles, void *pMem);
extern int vmlaF4MaxTest(int cycles, void *pMem);
extern int vmlaFMinTest(int cycles, void *pMem);
extern int vmlaFMaxTest(int cycles, void *pMem);
extern int vmlaDMinTest(int cycles, void *pMem);
extern int vmlaDMaxTest(int cycles, void *pMem);

// 142
extern int vmlalI4MinTest(int cycles, void *pMem);
extern int vmlalI4MaxTest(int cycles, void *pMem);

// 143
extern int vmlsI4MinTest(int cycles, void *pMem);
extern int vmlsI4MaxTest(int cycles, void *pMem);
extern int vmlsF4MinTest(int cycles, void *pMem);
extern int vmlsF4MaxTest(int cycles, void *pMem);
extern int vmlsFMinTest(int cycles, void *pMem);
extern int vmlsFMaxTest(int cycles, void *pMem);
extern int vmlsDMinTest(int cycles, void *pMem);
extern int vmlsDMaxTest(int cycles, void *pMem);

// 144
extern int vmlslI4MinTest(int cycles, void *pMem);
extern int vmlslI4MaxTest(int cycles, void *pMem);

// 145
extern int vmlaI4ScalarMinTest(int cycles, void *pMem);
extern int vmlaI4ScalarMaxTest(int cycles, void *pMem);
extern int vmlaF4ScalarMinTest(int cycles, void *pMem);
extern int vmlaF4ScalarMaxTest(int cycles, void *pMem);

// 146
extern int vmlalI4ScalarMinTest(int cycles, void *pMem);
extern int vmlalI4ScalarMaxTest(int cycles, void *pMem);

// 147
extern int vmlsI4ScalarMinTest(int cycles, void *pMem);
extern int vmlsI4ScalarMaxTest(int cycles, void *pMem);
extern int vmlsF4ScalarMinTest(int cycles, void *pMem);
extern int vmlsF4ScalarMaxTest(int cycles, void *pMem);

// 148
extern int vmlslI4ScalarMinTest(int cycles, void *pMem);
extern int vmlslI4ScalarMaxTest(int cycles, void *pMem);

// 149
extern int vmovI4ImmMinTest(int cycles, void *pMem);
extern int vmovI4ImmMaxTest(int cycles, void *pMem);
extern int vmovF4ImmMinTest(int cycles, void *pMem);
extern int vmovF4ImmMaxTest(int cycles, void *pMem);
extern int vmovFImmMinTest(int cycles, void *pMem);
extern int vmovFImmMaxTest(int cycles, void *pMem);
extern int vmovDImmMinTest(int cycles, void *pMem);
extern int vmovDImmMaxTest(int cycles, void *pMem);

// 150
extern int vmovI4MinTest(int cycles, void *pMem);
extern int vmovI4MaxTest(int cycles, void *pMem);
extern int vmovF4MinTest(int cycles, void *pMem);
extern int vmovF4MaxTest(int cycles, void *pMem);
extern int vmovFMinTest(int cycles, void *pMem);
extern int vmovFMaxTest(int cycles, void *pMem);
extern int vmovDMinTest(int cycles, void *pMem);
extern int vmovDMaxTest(int cycles, void *pMem);

// 151
extern int vmovScalarRegMinTest(int cycles, void *pMem);
extern int vmovScalarRegMaxTest(int cycles, void *pMem);
extern int vmovRegScalarMinTest(int cycles, void *pMem);
extern int vmovRegScalarMaxTest(int cycles, void *pMem);

// 152
extern int vmovSRegMinTest(int cycles, void *pMem);
extern int vmovSRegMaxTest(int cycles, void *pMem);
extern int vmovRegSMinTest(int cycles, void *pMem);
extern int vmovRegSMaxTest(int cycles, void *pMem);

// 153
extern int vmovSRegDualMinTest(int cycles, void *pMem);
extern int vmovSRegDualMaxTest(int cycles, void *pMem);
extern int vmovRegSDualMinTest(int cycles, void *pMem);
extern int vmovRegSDualMaxTest(int cycles, void *pMem);

// 154
extern int vmovDRegDualMinTest(int cycles, void *pMem);
extern int vmovDRegDualMaxTest(int cycles, void *pMem);
extern int vmovRegDDualMinTest(int cycles, void *pMem);
extern int vmovRegDDualMaxTest(int cycles, void *pMem);

// 155
extern int vmovlI4MinTest(int cycles, void *pMem);
extern int vmovlI4MaxTest(int cycles, void *pMem);

// 156
extern int vmovnI4MinTest(int cycles, void *pMem);
extern int vmovnI4MaxTest(int cycles, void *pMem);

// 157
extern int vmulI4MinTest(int cycles, void *pMem);
extern int vmulI4MaxTest(int cycles, void *pMem);
extern int vmulF4MinTest(int cycles, void *pMem);
extern int vmulF4MaxTest(int cycles, void *pMem);
extern int vmulFMinTest(int cycles, void *pMem);
extern int vmulFMaxTest(int cycles, void *pMem);
extern int vmulDMinTest(int cycles, void *pMem);
extern int vmulDMaxTest(int cycles, void *pMem);

// 158
extern int vmullI4MinTest(int cycles, void *pMem);
extern int vmullI4MaxTest(int cycles, void *pMem);

// 159
extern int vmulI4ScalarMinTest(int cycles, void *pMem);
extern int vmulI4ScalarMaxTest(int cycles, void *pMem);
extern int vmulF4ScalarMinTest(int cycles, void *pMem);
extern int vmulF4ScalarMaxTest(int cycles, void *pMem);

// 160
extern int vmullI4ScalarMinTest(int cycles, void *pMem);
extern int vmullI4ScalarMaxTest(int cycles, void *pMem);

// 161
extern int vmvnImmMinTest(int cycles, void *pMem);
extern int vmvnImmMaxTest(int cycles, void *pMem);
extern int vmvnMinTest(int cycles, void *pMem);
extern int vmvnMaxTest(int cycles, void *pMem);

// 162
extern int vnegI4MinTest(int cycles, void *pMem);
extern int vnegI4MaxTest(int cycles, void *pMem);
extern int vnegF4MinTest(int cycles, void *pMem);
extern int vnegF4MaxTest(int cycles, void *pMem);
extern int vnegFMinTest(int cycles, void *pMem);
extern int vnegFMaxTest(int cycles, void *pMem);
extern int vnegDMinTest(int cycles, void *pMem);
extern int vnegDMaxTest(int cycles, void *pMem);

// 163
extern int vnmlaSMinTest(int cycles, void *pMem);
extern int vnmlaSMaxTest(int cycles, void *pMem);
extern int vnmlaDMinTest(int cycles, void *pMem);
extern int vnmlaDMaxTest(int cycles, void *pMem);

// 164
extern int vnmlsSMinTest(int cycles, void *pMem);
extern int vnmlsSMaxTest(int cycles, void *pMem);
extern int vnmlsDMinTest(int cycles, void *pMem);
extern int vnmlsDMaxTest(int cycles, void *pMem);

// 165
extern int vnmulSMinTest(int cycles, void *pMem);
extern int vnmulSMaxTest(int cycles, void *pMem);
extern int vnmulDMinTest(int cycles, void *pMem);
extern int vnmulDMaxTest(int cycles, void *pMem);

// 166
extern int vornMinTest(int cycles, void *pMem);
extern int vornMaxTest(int cycles, void *pMem);

// 167
extern int vorrImmMinTest(int cycles, void *pMem);
extern int vorrImmMaxTest(int cycles, void *pMem);
extern int vorrMinTest(int cycles, void *pMem);
extern int vorrMaxTest(int cycles, void *pMem);

// 168
extern int vpadalI4MinTest(int cycles, void *pMem);
extern int vpadalI4MaxTest(int cycles, void *pMem);

// 169
extern int vpaddI4MinTest(int cycles, void *pMem);
extern int vpaddI4MaxTest(int cycles, void *pMem);
extern int vpaddF4MinTest(int cycles, void *pMem);
extern int vpaddF4MaxTest(int cycles, void *pMem);

// 170
extern int vpaddlI4MinTest(int cycles, void *pMem);
extern int vpaddlI4MaxTest(int cycles, void *pMem);

// 171
extern int vpmaxI4MinTest(int cycles, void *pMem);
extern int vpmaxI4MaxTest(int cycles, void *pMem);
extern int vpmaxF4MinTest(int cycles, void *pMem);
extern int vpmaxF4MaxTest(int cycles, void *pMem);

// 172
extern int vpminI4MinTest(int cycles, void *pMem);
extern int vpminI4MaxTest(int cycles, void *pMem);
extern int vpminF4MinTest(int cycles, void *pMem);
extern int vpminF4MaxTest(int cycles, void *pMem);

// 173
extern int vqabsI4MinTest(int cycles, void *pMem);
extern int vqabsI4MaxTest(int cycles, void *pMem);

// 174
extern int vqaddI4MinTest(int cycles, void *pMem);
extern int vqaddI4MaxTest(int cycles, void *pMem);

// 175
extern int vqdmlalI2MinTest(int cycles, void *pMem);
extern int vqdmlalI2MaxTest(int cycles, void *pMem);
extern int vqdmlalI2ScalarMinTest(int cycles, void *pMem);
extern int vqdmlalI2ScalarMaxTest(int cycles, void *pMem);

// 176
extern int vqdmlslI2MinTest(int cycles, void *pMem);
extern int vqdmlslI2MaxTest(int cycles, void *pMem);
extern int vqdmlslI2ScalarMinTest(int cycles, void *pMem);
extern int vqdmlslI2ScalarMaxTest(int cycles, void *pMem);

// 177
extern int vqdmulhI4MinTest(int cycles, void *pMem);
extern int vqdmulhI4MaxTest(int cycles, void *pMem);
extern int vqdmulhI4ScalarMinTest(int cycles, void *pMem);
extern int vqdmulhI4ScalarMaxTest(int cycles, void *pMem);

// 178
extern int vqdmullI4MinTest(int cycles, void *pMem);
extern int vqdmullI4MaxTest(int cycles, void *pMem);
extern int vqdmullI4ScalarMinTest(int cycles, void *pMem);
extern int vqdmullI4ScalarMaxTest(int cycles, void *pMem);

// 179
extern int vqmovnI4MinTest(int cycles, void *pMem);
extern int vqmovnI4MaxTest(int cycles, void *pMem);

// 180
extern int vqnegI4MinTest(int cycles, void *pMem);
extern int vqnegI4MaxTest(int cycles, void *pMem);

// 181
extern int vqrdmulhI4MinTest(int cycles, void *pMem);
extern int vqrdmulhI4MaxTest(int cycles, void *pMem);

// 182
extern int vqrshlI4MinTest(int cycles, void *pMem);
extern int vqrshlI4MaxTest(int cycles, void *pMem);

// 183
extern int vqrshrnI4MinTest(int cycles, void *pMem);
extern int vqrshrnI4MaxTest(int cycles, void *pMem);

// 184
extern int vqshlI4MinTest(int cycles, void *pMem);
extern int vqshlI4MaxTest(int cycles, void *pMem);
extern int vqshlImmI4MinTest(int cycles, void *pMem);
extern int vqshlImmI4MaxTest(int cycles, void *pMem);

// 185
extern int vqshrnI4MinTest(int cycles, void *pMem);
extern int vqshrnI4MaxTest(int cycles, void *pMem);

// 186
extern int vqsubI4MinTest(int cycles, void *pMem);
extern int vqsubI4MaxTest(int cycles, void *pMem);

// 187
extern int vraddhnI4MinTest(int cycles, void *pMem);
extern int vraddhnI4MaxTest(int cycles, void *pMem);

// 188
extern int vrecpeI4MinTest(int cycles, void *pMem);
extern int vrecpeI4MaxTest(int cycles, void *pMem);
extern int vrecpeF4MinTest(int cycles, void *pMem);
extern int vrecpeF4MaxTest(int cycles, void *pMem);

// 189
extern int vrecpsF4MinTest(int cycles, void *pMem);
extern int vrecpsF4MaxTest(int cycles, void *pMem);

// 190
extern int vrev16MinTest(int cycles, void *pMem);
extern int vrev16MaxTest(int cycles, void *pMem);

// 191
extern int vrev32MinTest(int cycles, void *pMem);
extern int vrev32MaxTest(int cycles, void *pMem);

// 192
extern int vrev64MinTest(int cycles, void *pMem);
extern int vrev64MaxTest(int cycles, void *pMem);

// 193
extern int vrhaddI4MinTest(int cycles, void *pMem);
extern int vrhaddI4MaxTest(int cycles, void *pMem);

// 194
extern int vrshlI4MinTest(int cycles, void *pMem);
extern int vrshlI4MaxTest(int cycles, void *pMem);

// 195
extern int vrshrI4MinTest(int cycles, void *pMem);
extern int vrshrI4MaxTest(int cycles, void *pMem);

// 196
extern int vrshrnI4MinTest(int cycles, void *pMem);
extern int vrshrnI4MaxTest(int cycles, void *pMem);

// 197
extern int vrsqrteI4MinTest(int cycles, void *pMem);
extern int vrsqrteI4MaxTest(int cycles, void *pMem);
extern int vrsqrteF4MinTest(int cycles, void *pMem);
extern int vrsqrteF4MaxTest(int cycles, void *pMem);

// 198
extern int vrsqrtsF4MinTest(int cycles, void *pMem);
extern int vrsqrtsF4MaxTest(int cycles, void *pMem);

// 199
extern int vrsraI4MinTest(int cycles, void *pMem);
extern int vrsraI4MaxTest(int cycles, void *pMem);

// 200
extern int vrsubhnI4MinTest(int cycles, void *pMem);
extern int vrsubhnI4MaxTest(int cycles, void *pMem);

// 201
extern int vshlImmMinTest(int cycles, void *pMem);
extern int vshlImmMaxTest(int cycles, void *pMem);
extern int vshlMinTest(int cycles, void *pMem);
extern int vshlMaxTest(int cycles, void *pMem);

// 202
extern int vshllI2MinTest(int cycles, void *pMem);
extern int vshllI2MaxTest(int cycles, void *pMem);

// 203
extern int vshrI4MinTest(int cycles, void *pMem);
extern int vshrI4MaxTest(int cycles, void *pMem);

// 204
extern int vshrnI4MinTest(int cycles, void *pMem);
extern int vshrnI4MaxTest(int cycles, void *pMem);

// 205
extern int vsliI4MinTest(int cycles, void *pMem);
extern int vsliI4MaxTest(int cycles, void *pMem);

// 206
extern int vsqrtFMinTest(int cycles, void *pMem);
extern int vsqrtFMaxTest(int cycles, void *pMem);
extern int vsqrtDMinTest(int cycles, void *pMem);
extern int vsqrtDMaxTest(int cycles, void *pMem);

// 207
extern int vsraI4MinTest(int cycles, void *pMem);
extern int vsraI4MaxTest(int cycles, void *pMem);

// 208
extern int vsriI4MinTest(int cycles, void *pMem);
extern int vsriI4MaxTest(int cycles, void *pMem);

// 209
extern int vsubI4MinTest(int cycles, void *pMem);
extern int vsubI4MaxTest(int cycles, void *pMem);
extern int vsubF4MinTest(int cycles, void *pMem);
extern int vsubF4MaxTest(int cycles, void *pMem);
extern int vsubFMinTest(int cycles, void *pMem);
extern int vsubFMaxTest(int cycles, void *pMem);
extern int vsubDMinTest(int cycles, void *pMem);
extern int vsubDMaxTest(int cycles, void *pMem);

// 210
extern int vsubhnI4MinTest(int cycles, void *pMem);
extern int vsubhnI4MaxTest(int cycles, void *pMem);

// 211
extern int vsublI4MinTest(int cycles, void *pMem);
extern int vsublI4MaxTest(int cycles, void *pMem);

// 212
extern int vsubwI4MinTest(int cycles, void *pMem);
extern int vsubwI4MaxTest(int cycles, void *pMem);

// 213
extern int vswpMinTest(int cycles, void *pMem);
extern int vswpMaxTest(int cycles, void *pMem);

// 214
extern int vtblMinTest(int cycles, void *pMem);
extern int vtblMaxTest(int cycles, void *pMem);

// 215
extern int vtrnI4MinTest(int cycles, void *pMem);
extern int vtrnI4MaxTest(int cycles, void *pMem);

// 216
extern int vtstI4MinTest(int cycles, void *pMem);
extern int vtstI4MaxTest(int cycles, void *pMem);

// 217
extern int vuzpI4MinTest(int cycles, void *pMem);
extern int vuzpI4MaxTest(int cycles, void *pMem);

// 218
extern int vzipI4MinTest(int cycles, void *pMem);
extern int vzipI4MaxTest(int cycles, void *pMem);

// 219
extern int vfmaF4MinTest(int cycles, void *pMem);
extern int vfmaF4MaxTest(int cycles, void *pMem);
extern int vfmaDMinTest(int cycles, void *pMem);
extern int vfmaDMaxTest(int cycles, void *pMem);
extern int vfmaFMinTest(int cycles, void *pMem);
extern int vfmaFMaxTest(int cycles, void *pMem);

// 220
extern int vfmsF4MinTest(int cycles, void *pMem);
extern int vfmsF4MaxTest(int cycles, void *pMem);
extern int vfmsDMinTest(int cycles, void *pMem);
extern int vfmsDMaxTest(int cycles, void *pMem);
extern int vfmsFMinTest(int cycles, void *pMem);
extern int vfmsFMaxTest(int cycles, void *pMem);

// 221
extern int vfnmaDMinTest(int cycles, void *pMem);
extern int vfnmaDMaxTest(int cycles, void *pMem);
extern int vfnmaFMinTest(int cycles, void *pMem);
extern int vfnmaFMaxTest(int cycles, void *pMem);

extern int vfnmsDMinTest(int cycles, void *pMem);
extern int vfnmsDMaxTest(int cycles, void *pMem);
extern int vfnmsFMinTest(int cycles, void *pMem);
extern int vfnmsFMaxTest(int cycles, void *pMem);

extern int ldmiaTest(int cycles, void *pBuffer);

extern int ldrTest(int cycles, void *pBuffer);
extern int ldrAddTest(int cycles, void *pBuffer);
extern int ldrL2Test(int cycles, void *pBuffer);
extern int ldrMemTest(int cycles, void *pBuffer);

extern int ldrbTest(int cycles, void *pBuffer);
extern int ldrbAddTest(int cycles, void *pBuffer);

extern int ldrdTest(int cycles, void *pBuffer);
extern int ldrdAddTest(int cycles, void *pBuffer);

extern int ldrhTest(int cycles, void *pBuffer);
extern int ldrhAddTest(int cycles, void *pBuffer);

extern int ldrsbTest(int cycles, void *pBuffer);
extern int ldrsbAddTest(int cycles, void *pBuffer);

extern int ldrshTest(int cycles, void *pBuffer);
extern int ldrshAddTest(int cycles, void *pBuffer);

extern int stmiaTest(int cycles, void *pBuffer);

extern int strTest(int cycles, void *pBuffer);
extern int strAddTest(int cycles, void *pBuffer);
extern int strL2Test(int cycles, void *pBuffer);
extern int strMemTest(int cycles, void *pBuffer);

extern int strbTest(int cycles, void *pBuffer);
extern int strbAddTest(int cycles, void *pBuffer);

extern int strdTest(int cycles, void *pBuffer);
extern int strdAddTest(int cycles, void *pBuffer);

extern int strhTest(int cycles, void *pBuffer);
extern int strhAddTest(int cycles, void *pBuffer);

extern int vld1FirstTest(int cycles, void* pBuffer);
extern int vld1AddTest(int cycles, void* pBuffer);
extern int vld1SecondTest(int cycles, void* pBuffer);
extern int vld1ThirdTest(int cycles, void* pBuffer);

extern int vld2FirstTest(int cycles, void* pBuffer);
extern int vld2SecondTest(int cycles, void* pBuffer);
extern int vld2ThirdTest(int cycles, void* pBuffer);

extern int vld3FirstTest(int cycles, void* pBuffer);
extern int vld3SecondTest(int cycles, void* pBuffer);
extern int vld3ThirdTest(int cycles, void* pBuffer);

extern int vld4FirstTest(int cycles, void* pBuffer);
extern int vld4SecondTest(int cycles, void* pBuffer);
extern int vld4ThirdTest(int cycles, void* pBuffer);

extern int vldmiaTest(int cycles, void* pBuffer);

extern int vldrIntTest(int cycles, void* pBuffer);
extern int vldrIntAddTest(int cycles, void* pBuffer);
extern int vldrLongTest(int cycles, void* pBuffer);
extern int vldrLongAddTest(int cycles, void* pBuffer);

extern int vst1FirstTest(int cycles, void* pBuffer);
extern int vst1AddTest(int cycles, void* pBuffer);
extern int vst1SecondTest(int cycles, void* pBuffer);

extern int vst2FirstTest(int cycles, void* pBuffer);
extern int vst2SecondTest(int cycles, void* pBuffer);

extern int vst3FirstTest(int cycles, void* pBuffer);
extern int vst3SecondTest(int cycles, void* pBuffer);

extern int vst4FirstTest(int cycles, void* pBuffer);
extern int vst4SecondTest(int cycles, void* pBuffer);

extern int vstmiaTest(int cycles, void* pBuffer);

extern int vstrIntTest(int cycles, void* pBuffer);
extern int vstrIntAddTest(int cycles, void* pBuffer);
extern int vstrLongTest(int cycles, void* pBuffer);
extern int vstrLongAddTest(int cycles, void* pBuffer);

extern int loadAddStoreNormalTest(void* pBuffer, int cycles);
extern int loadAddStoreNeonTest(void* pBuffer, int cycles);

extern int loadAddStoreVerticalNormalTest(void* pBuffer, int cycles);
extern int loadAddStoreVerticalSeperateTest(void* pBuffer, int cycles);
extern int loadAddStoreVerticalNeonTest(void* pBuffer, int cycles);

extern int loadMulStoreNormalTest(void* pBuffer, int cycles);

extern int loadMulStoreVerticalNormalTest(void* pBuffer, int cycles);
extern int loadMulStoreVerticalSeperateTest(void *pBuffer, int cycles);
extern int loadMulStoreVerticalNeonTest(void* pBuffer, int cycles);

