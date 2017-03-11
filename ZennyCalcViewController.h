//
//  ZennyCalcViewController.h
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-21.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZennyCalcViewController : UIViewController
{
    volatile BOOL canBeTouched;
    int matrixFormIndex, calcFormIndex, dataTypeIndex;
    
    int inputBuffer1[1024 * 1024 + 32];
    int inputBuffer2[1024 * 1024 + 32];
    int outputBuffer[1024 * 1024 + 32];
    int testOutputBuffer[1024 * 1024 + 32];
    void *pAlignedTest;
    
    void *pAlignedInput1, *pAlignedInput2, *pAlignedOutput;
}

extern void neonInt64x64(const void*, const void*, void*, void*);
extern void neonInt128x128(const void*, const void*, void*, void*);
extern void neonInt256x256(const void*, const void*, void*, void*);
extern void neonInt512x512(const void*, const void*, void*, void*);
extern void neonInt1024x1024(const void*, const void*, void*, void*);

extern void neonFloat64x64(const void*, const void*, void*, void*);
extern void neonFloat128x128(const void*, const void*, void*, void*);
extern void neonFloat256x256(const void*, const void*, void*, void*);
extern void neonFloat512x512(const void*, const void*, void*, void*);
extern void neonFloat1024x1024(const void*, const void*, void*, void*);

extern void duoInt64x64(const void*, const void*, void*, void*, int start);
extern void duoInt128x128(const void*, const void*, void*, void*, int start);
extern void duoInt256x256(const void*, const void*, void*, void*, int start);
extern void duoInt256x256(const void*, const void*, void*, void*, int start);
extern void duoInt512x512(const void*, const void*, void*, void*, int start);
extern void duoInt1024x1024(const void*, const void*, void*, void*, int start);

extern void duoFloat64x64(const void*, const void*, void*, void*, int start);
extern void duoFloat128x128(const void*, const void*, void*, void*, int start);
extern void duoFloat256x256(const void*, const void*, void*, void*, int start);
extern void duoFloat512x512(const void*, const void*, void*, void*, int start);
extern void duoFloat1024x1024(const void*, const void*, void*, void*, int start);

extern void normalInt64x64(const void*, const void*, void*, void*);
extern void normalInt128x128(const void*, const void*, void*, void*);
extern void normalInt256x256(const void*, const void*, void*, void*);
extern void normalInt512x512(const void*, const void*, void*, void*);
extern void normalInt1024x1024(const void*, const void*, void*, void*);

extern void normalFloat64x64(const void*, const void*, void*, void*);
extern void normalFloat128x128(const void*, const void*, void*, void*);
extern void normalFloat256x256(const void*, const void*, void*, void*);
extern void normalFloat512x512(const void*, const void*, void*, void*);
extern void normalFloat1024x1024(const void*, const void*, void*, void*);

@end
