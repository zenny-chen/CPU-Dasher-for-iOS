//
//  ZennyCalcViewController.m
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-21.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import "ZennyCalcViewController.h"
#import "LavenderDeviceInfo.h"
#import "ZennyPickerView.h"

#include "ZennyUITag.h"

@interface ZennyCalcViewController ()

@end

@implementation ZennyCalcViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        size_t address = (size_t)inputBuffer1;
        address = (address & ~31) + 32;
        pAlignedInput1 = (void*)address;
        
        address = (size_t)inputBuffer2;
        address = (address & ~31) + 32;
        pAlignedInput2 = (void*)address;
        
        address = (size_t)outputBuffer;
        address = (address & ~31) + 32;
        pAlignedOutput = (void*)address;
        
        address = (size_t)testOutputBuffer;
        address = (address & ~31) + 32;
        pAlignedTest = (void*)address;
    }
    return self;
}

static const int elemCountList[] = { 64, 128, 256, 512, 1024 };

static NSString* const matrixForms[] = {
    @"64x64",
    @"128x128",
    @"256x256",
    @"512x512",
    @"1024x1024"
};

static NSString* const calcForms[] = {
    @"Naive",
    @"Memory access",
    @"ARMv6 based",
    @"NEON",
    @"Duo-core"
};

static NSString* const dataTypes[] = {
    @"32-bit integer",
    @"32-bit float"
};

static void NaiveInteger64(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    
    for(int row = 0; row < 64; row++)
    {
        for(int col = 0; col < 64; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 64; i++)
                sum += p1[i] * p2[64 * i + col];
            
            p3[row * 64 + col] = sum;
        }
        
        p1 += 64;
    }
}

static void NaiveInteger128(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    
    for(int row = 0; row < 128; row++)
    {
        for(int col = 0; col < 128; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 128; i++)
                sum += p1[i] * p2[128 * i + col];
            
            p3[row * 128 + col] = sum;
        }
        
        p1 += 128;
    }
}

static void NaiveInteger256(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    
    for(int row = 0; row < 256; row++)
    {
        for(int col = 0; col < 256; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 256; i++)
                sum += p1[i] * p2[256 * i + col];
            
            p3[row * 256 + col] = sum;
        }
        
        p1 += 256;
    }
}

static void NaiveInteger512(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    
    for(int row = 0; row < 512; row++)
    {
        for(int col = 0; col < 512; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 512; i++)
                sum += p1[i] * p2[512 * i + col];
            
            p3[row * 512 + col] = sum;
        }
        
        p1 += 512;
    }
}

static void NaiveInteger1024(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    
    for(int row = 0; row < 1024; row++)
    {
        for(int col = 0; col < 1024; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 1024; i++)
                sum += p1[i] * p2[1024 * i + col];
            
            p3[row * 1024 + col] = sum;
        }
        
        p1 += 1024;
    }
}

static void NaiveFloat64(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    
    for(int row = 0; row < 64; row++)
    {
        for(int col = 0; col < 64; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 64; i++)
                sum += p1[i] * p2[64 * i + col];
            
            p3[row * 64 + col] = sum;
        }
        
        p1 += 64;
    }
}

static void NaiveFloat128(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    
    for(int row = 0; row < 128; row++)
    {
        for(int col = 0; col < 128; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 128; i++)
                sum += p1[i] * p2[128 * i + col];
            
            p3[row * 128 + col] = sum;
        }
        
        p1 += 128;
    }
}

static void NaiveFloat256(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    
    for(int row = 0; row < 256; row++)
    {
        for(int col = 0; col < 256; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 256; i++)
                sum += p1[i] * p2[256 * i + col];
            
            p3[row * 256 + col] = sum;
        }
        
        p1 += 256;
    }
}

static void NaiveFloat512(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    
    for(int row = 0; row < 512; row++)
    {
        for(int col = 0; col < 512; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 512; i++)
                sum += p1[i] * p2[512 * i + col];
            
            p3[row * 512 + col] = sum;
        }
        
        p1 += 512;
    }
}

static void NaiveFloat1024(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    
    for(int row = 0; row < 1024; row++)
    {
        for(int col = 0; col < 1024; col++)
        {
            int sum = 0;
            
            for(int i = 0; i < 1024; i++)
                sum += p1[i] * p2[1024 * i + col];
            
            p3[row * 1024 + col] = sum;
        }
        
        p1 += 1024;
    }
}

static void MemoryInteger64(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    int __attribute__((aligned(32))) buffer[64];
    
    for(int col = 0; col < 64; col++)
    {
        for(int i = 0; i < 64; i++)
            buffer[i] = p2[64 * i + col];
        
        for(int row = 0; row < 64; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 64; i++)
                sum += p1[64 * row + i] * buffer[i];
            
            p3[row * 64 + col] = sum;
        }
    }
}

static void MemoryInteger128(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    int __attribute__((aligned(32))) buffer[128];
    
    for(int col = 0; col < 128; col++)
    {
        for(int i = 0; i < 128; i++)
            buffer[i] = p2[128 * i + col];
        
        for(int row = 0; row < 128; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 128; i++)
                sum += p1[128 * row + i] * buffer[i];
            
            p3[row * 128 + col] = sum;
        }
    }
}

static void MemoryInteger256(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    int __attribute__((aligned(32))) buffer[256];
    
    for(int col = 0; col < 256; col++)
    {
        for(int i = 0; i < 256; i++)
            buffer[i] = p2[256 * i + col];
        
        for(int row = 0; row < 256; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 256; i++)
                sum += p1[256 * row + i] * buffer[i];
            
            p3[row * 256 + col] = sum;
        }
    }
}

static void MemoryInteger512(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    int __attribute__((aligned(32))) buffer[512];
    
    for(int col = 0; col < 512; col++)
    {
        for(int i = 0; i < 512; i++)
            buffer[i] = p2[512 * i + col];
        
        for(int row = 0; row < 512; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 512; i++)
                sum += p1[512 * row + i] * buffer[i];
            
            p3[row * 512 + col] = sum;
        }
    }
}

static void MemoryInteger1024(const void *pIn1, const void *pIn2, void *pOut)
{
    const int *p1 = (const int*)pIn1;
    const int *p2 = (const int*)pIn2;
    int *p3 = (int*)pOut;
    int __attribute__((aligned(32))) buffer[1024];
    
    for(int col = 0; col < 1024; col++)
    {
        for(int i = 0; i < 1024; i++)
            buffer[i] = p2[1024 * i + col];
        
        for(int row = 0; row < 1024; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 1024; i++)
                sum += p1[1024 * row + i] * buffer[i];
            
            p3[row * 1024 + col] = sum;
        }
    }
}

static void MemoryFloat64(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    float __attribute__((aligned(32))) buffer[64];
    
    for(int col = 0; col < 64; col++)
    {
        for(int i = 0; i < 64; i++)
            buffer[i] = p2[64 * i + col];
        
        for(int row = 0; row < 64; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 64; i++)
                sum += p1[64 * row + i] * buffer[i];
            
            p3[row * 64 + col] = sum;
        }
    }
}

static void MemoryFloat128(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    float __attribute__((aligned(32))) buffer[128];
    
    for(int col = 0; col < 128; col++)
    {
        for(int i = 0; i < 128; i++)
            buffer[i] = p2[128 * i + col];
        
        for(int row = 0; row < 128; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 128; i++)
                sum += p1[128 * row + i] * buffer[i];
            
            p3[row * 128 + col] = sum;
        }
    }
}

static void MemoryFloat256(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    float __attribute__((aligned(32))) buffer[256];
    
    for(int col = 0; col < 256; col++)
    {
        for(int i = 0; i < 256; i++)
            buffer[i] = p2[256 * i + col];
        
        for(int row = 0; row < 256; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 256; i++)
                sum += p1[256 * row + i] * buffer[i];
            
            p3[row * 256 + col] = sum;
        }
    }
}

static void MemoryFloat512(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    float __attribute__((aligned(32))) buffer[512];
    
    for(int col = 0; col < 512; col++)
    {
        for(int i = 0; i < 512; i++)
            buffer[i] = p2[512 * i + col];
        
        for(int row = 0; row < 512; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 512; i++)
                sum += p1[512 * row + i] * buffer[i];
            
            p3[row * 512 + col] = sum;
        }
    }
}

static void MemoryFloat1024(const void *pIn1, const void *pIn2, void *pOut)
{
    const float *p1 = (const float*)pIn1;
    const float *p2 = (const float*)pIn2;
    float *p3 = (float*)pOut;
    float __attribute__((aligned(32))) buffer[1024];
    
    for(int col = 0; col < 1024; col++)
    {
        for(int i = 0; i < 1024; i++)
            buffer[i] = p2[1024 * i + col];
        
        for(int row = 0; row < 1024; row++)
        {
            int sum = 0;
            
            for(int i = 0; i < 1024; i++)
                sum += p1[1024 * row + i] * buffer[i];
            
            p3[row * 1024 + col] = sum;
        }
    }
}

static void NormalInteger64(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[64];
    
    normalInt64x64(pIn1, pIn2, pOut, buffer);
}

static void NormalInteger128(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[128];
    
    normalInt128x128(pIn1, pIn2, pOut, buffer);
}

static void NormalInteger256(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[256];
    
    normalInt256x256(pIn1, pIn2, pOut, buffer);
}

static void NormalInteger512(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[512];
    
    normalInt512x512(pIn1, pIn2, pOut, buffer);
}

static void NormalInteger1024(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[1024];
    
    normalInt1024x1024(pIn1, pIn2, pOut, buffer);
}

static void NormalFloat64(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[64];
    
    normalFloat64x64(pIn1, pIn2, pOut, buffer);
}

static void NormalFloat128(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[128];
    
    normalFloat128x128(pIn1, pIn2, pOut, buffer);
}

static void NormalFloat256(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[256];
    
    normalFloat256x256(pIn1, pIn2, pOut, buffer);
}

static void NormalFloat512(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[512];
    
    normalFloat512x512(pIn1, pIn2, pOut, buffer);
}

static void NormalFloat1024(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[1024];
    
    normalFloat1024x1024(pIn1, pIn2, pOut, buffer);
}

static void NeonInteger64(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[64];
    
    neonInt64x64(pIn1, pIn2, pOut, buffer);
}

static void NeonInteger128(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[128];
    
    neonInt128x128(pIn1, pIn2, pOut, buffer);
}

static void NeonInteger256(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[256];
    
    neonInt256x256(pIn1, pIn2, pOut, buffer);
}

static void NeonInteger512(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[512];
    
    neonInt512x512(pIn1, pIn2, pOut, buffer);
}

static void NeonInteger1024(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[1024];
    
    neonInt1024x1024(pIn1, pIn2, pOut, buffer);
}


static void NeonFloat64(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[64];
    
    neonFloat64x64(pIn1, pIn2, pOut, buffer);
}

static void NeonFloat128(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[128];
    
    neonFloat128x128(pIn1, pIn2, pOut, buffer);
}

static void NeonFloat256(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[256];
    
    neonFloat256x256(pIn1, pIn2, pOut, buffer);
}

static void NeonFloat512(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[512];
    
    neonFloat512x512(pIn1, pIn2, pOut, buffer);
}

static void NeonFloat1024(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer[1024];
    
    neonFloat1024x1024(pIn1, pIn2, pOut, buffer);
}

static void DuoInteger64(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer2[64];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        int __attribute__((aligned(32))) buffer1[64];
        duoInt64x64(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoInt64x64(pIn1, pIn2, pOut, buffer2, 32);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoInteger128(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer2[128];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        int __attribute__((aligned(32))) buffer1[128];
        duoInt128x128(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoInt128x128(pIn1, pIn2, pOut, buffer2, 64);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoInteger256(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer2[256];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        int __attribute__((aligned(32))) buffer1[256];
        duoInt256x256(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoInt256x256(pIn1, pIn2, pOut, buffer2, 128);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoInteger512(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer2[512];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        int __attribute__((aligned(32))) buffer1[512];
        duoInt512x512(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoInt512x512(pIn1, pIn2, pOut, buffer2, 256);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoInteger1024(const void *pIn1, const void *pIn2, void *pOut)
{
    int __attribute__((aligned(32))) buffer2[1024];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        int __attribute__((aligned(32))) buffer1[1024];
        duoInt1024x1024(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoInt1024x1024(pIn1, pIn2, pOut, buffer2, 512);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoFloat64(const void *pIn1, const void *pIn2, void *pOut)
{
    float __attribute__((aligned(32))) buffer2[64];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        float __attribute__((aligned(32))) buffer1[64];
        duoFloat64x64(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoFloat64x64(pIn1, pIn2, pOut, buffer2, 32);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoFloat128(const void *pIn1, const void *pIn2, void *pOut)
{
    float __attribute__((aligned(32))) buffer2[128];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        float __attribute__((aligned(32))) buffer1[128];
        duoFloat128x128(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoFloat128x128(pIn1, pIn2, pOut, buffer2, 64);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoFloat256(const void *pIn1, const void *pIn2, void *pOut)
{
    float __attribute__((aligned(32))) buffer2[256];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        float __attribute__((aligned(32))) buffer1[256];
        duoFloat256x256(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoFloat256x256(pIn1, pIn2, pOut, buffer2, 128);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoFloat512(const void *pIn1, const void *pIn2, void *pOut)
{
    float __attribute__((aligned(32))) buffer2[512];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        float __attribute__((aligned(32))) buffer1[512];
        duoFloat512x512(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoFloat512x512(pIn1, pIn2, pOut, buffer2, 256);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void DuoFloat1024(const void *pIn1, const void *pIn2, void *pOut)
{
    float __attribute__((aligned(32))) buffer2[1024];
    
    __block BOOL isFinished = NO;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        float __attribute__((aligned(32))) buffer1[1024];
        duoFloat1024x1024(pIn1, pIn2, pOut, buffer1, 0);
        isFinished = YES;
    });
    
    duoFloat1024x1024(pIn1, pIn2, pOut, buffer2, 512);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

static void (*pFuncList[2][5][5])(const void*, const void*, void*) = {
    // integer
    {
        // Naive
        { &NaiveInteger64, &NaiveInteger128, &NaiveInteger256, &NaiveInteger512, &NaiveInteger1024 },
        // Memory access
        { &MemoryInteger64, &MemoryInteger128, &MemoryInteger256, &MemoryInteger512, &MemoryInteger1024 },
        // ARMv6 based
        { &NormalInteger64, &NormalInteger128, &NormalInteger256, &NormalInteger512, &NormalInteger1024 },
        // NEON
        { &NeonInteger64, &NeonInteger128, &NeonInteger256, &NeonInteger512, &NeonInteger1024 },
        // Duo-core
        { &DuoInteger64, &DuoInteger128, &DuoInteger256, &DuoInteger512, &DuoInteger1024 }
    },
    
    // float
    {
        // Naive
        { &NaiveFloat64, &NaiveFloat128, &NaiveFloat256, &NaiveFloat512, &NaiveFloat1024 },
        // Memory access
        { &MemoryFloat64, &MemoryFloat128, &MemoryFloat256, &MemoryFloat512, &MemoryFloat1024 },
        // ARMv6 based
        { &NormalFloat64, &NormalFloat128, &NormalFloat256, &NormalFloat512, &NormalFloat1024 },
        // NEON
        { &NeonFloat64, &NeonFloat128, &NeonFloat256, &NeonFloat512, &NeonFloat1024 },
        // Duo-core
        { &DuoFloat64, &DuoFloat128, &DuoFloat256, &DuoFloat512, &DuoFloat1024 }
    }
};

- (void)loadView
{
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGFloat totalHeight = screenBounds.size.height - 20.0f;
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, screenBounds.size.width, totalHeight)];
    aView.backgroundColor = [UIColor whiteColor];
    self.view = aView;
    [aView release];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, screenBounds.size.width, 35.0f)];
    title.backgroundColor = [UIColor colorWithRed:0.5098f green:0.8627f blue:0.7539f alpha:1.0f];
    title.textAlignment = UITextAlignmentCenter;
    title.textColor = [UIColor colorWithRed:0.7961f green:0.1922f blue:0.4588f alpha:1.0f];
    title.font = [UIFont fontWithName:@"Helvetica-Bold" size:18.0f];
    title.text = @"Matrix Multiplication";
    [self.view addSubview:title];
    [title release];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10.0f, 7.0f, 30.0f, 21.0f)];
    button.contentScaleFactor = [[UIScreen mainScreen] scale];
    [button setImage:[UIImage imageNamed:@"baritem_back.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button release];
    
    CGFloat width = screenBounds.size.width * 0.40625f;
    CGFloat edgeMargin = (screenBounds.size.width - width * 2.0f - 40.0f) * 0.5f;
    CGFloat rightX = edgeMargin + width + 40.0f;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 50.0f, width, 30.0f)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentRight;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"Matrix form:";
    [self.view addSubview:label];
    [label release];
    
    const UIControlContentHorizontalAlignment buttonAlignment = [UIViewController instancesRespondToSelector:@selector(prefersStatusBarHidden)]? UIControlContentHorizontalAlignmentLeft : UIControlContentHorizontalAlignmentCenter;
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 50.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:matrixForms[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(matrixTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 100.0f, width, 30.0f)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentRight;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"Calculation form:";
    [self.view addSubview:label];
    [label release];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 100.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:calcForms[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(formTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 150.0f, width, 30.0f)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentRight;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"Data type:";
    [self.view addSubview:label];
    [label release];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 150.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:dataTypes[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(typeTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 200.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:@"Calculate" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(calculateTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    width = 0.875 * screenBounds.size.width;
    edgeMargin = (screenBounds.size.width - width) * 0.5f;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 300.0f, width, 90.0f)];
    label.tag = CALC_AVERAGE_LABEL_TAG;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentLeft;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"";
    label.numberOfLines = 3;
    
    label.hidden = YES;
    [self.view addSubview:label];
    [label release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    canBeTouched = YES;
    
    matrixFormIndex = calcFormIndex = dataTypeIndex = 0;
}

- (void)matrixTouched:(id)sender
{
    if(!canBeTouched)
        return;
    canBeTouched = NO;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &matrixFormIndex;
    pickerView->pIsFinished = &canBeTouched;
    [pickerView initPickerView:matrixForms count:sizeof(matrixForms) / sizeof(matrixForms[0])];
    [self.view addSubview:pickerView];
    [pickerView release];
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.text = @"";
    
    [UIView animateWithDuration:0.6 animations:^void(void){
        pickerView.frame = CGRectMake(0.0f, screenHeight - 45.0f - pickerView.frame.size.height, pickerView.frame.size.width, pickerView.frame.size.height);
    }completion:^void(BOOL finished){
        
    }];
}

- (void)formTouched:(id)sender
{
    if(!canBeTouched)
        return;
    canBeTouched = NO;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &calcFormIndex;
    pickerView->pIsFinished = &canBeTouched;
    NSUInteger forms = sizeof(calcForms) / sizeof(calcForms[0]);
    if([LavenderDeviceInfo getInstance]->nCores < 2)
        forms--;
    [pickerView initPickerView:calcForms count:forms];
    [self.view addSubview:pickerView];
    [pickerView release];
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.text = @"";
    
    [UIView animateWithDuration:0.6 animations:^void(void){
        pickerView.frame = CGRectMake(0.0f, screenHeight - 45.0f - pickerView.frame.size.height, pickerView.frame.size.width, pickerView.frame.size.height);
    }completion:^void(BOOL finished){
        
    }];
}

- (void)typeTouched:(id)sender
{
    if(!canBeTouched)
        return;
    canBeTouched = NO;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &dataTypeIndex;
    pickerView->pIsFinished = &canBeTouched;
    [pickerView initPickerView:dataTypes count:sizeof(dataTypes) / sizeof(dataTypes[0])];
    [self.view addSubview:pickerView];
    [pickerView release];
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.text = @"";
    
    [UIView animateWithDuration:0.6 animations:^void(void){
        pickerView.frame = CGRectMake(0.0f, screenHeight - 45.0f - pickerView.frame.size.height, pickerView.frame.size.width, pickerView.frame.size.height);
    }completion:^void(BOOL finished){
        
    }];
}

- (void)calculateTouched:(id)sender
{
    if(!canBeTouched)
        return;
    
    canBeTouched = NO;
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    if(matrixFormIndex > 1)
    {
        label.hidden = NO;
        switch(matrixFormIndex)
        {
            case 2:
                label.text = @"This may take several seconds. Please wait...";
                break;
                
            case 3:
                label.text = @"This may take several dozens of seconds. Please wait...";
                break;
                
            case 4:
                label.text = @"This may take several minutes. Please wait...";
                break;
        }
    }
    
    [self performSelector:@selector(calculateTime:) withObject:label afterDelay:0.1];
}

- (void)backButtonTouched:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)calculateTime:(UILabel*)label
{
    int count = elemCountList[matrixFormIndex];
    count *= count;
    
    if(dataTypeIndex == 0)
    {
        int *p = pAlignedInput1;
        for(int i = 0; i < count; i++)
            p[i] = rand() % 20 - 1;
    }
    else
    {
        float *p = (float*)pAlignedInput1;
        for(int i = 0; i < count; i++)
            p[i] = (float)(rand() % 20 - 10);
    }
    
    memcpy(pAlignedInput2, pAlignedInput1, count * 4);
    memset(pAlignedOutput, 0, count * 4);
    
    (*pFuncList[dataTypeIndex][calcFormIndex][matrixFormIndex])(pAlignedInput1, pAlignedInput2, pAlignedOutput);
    
#if 0
    
    NaiveInteger256(pAlignedInput1, pAlignedInput2, pAlignedTest);
    int *pOrg = (int*)pAlignedOutput;
    int *pDst = (int*)pAlignedTest;
    
    for(int i = 0; i < 1024 * 1024; i++)
    {
        if(pOrg[i] != pDst[i])
        {
            printf("Error @%d, org: %d, opt: %d\n", i, pOrg[i], pDst[i]);
            return;
        }
    }
    
    puts("Equal");
    
#else
    
    const int statsCount = 2;
    NSTimeInterval processingIntervals[statsCount];
    
    for(int i = 0; i < 2; i++)
    {
        NSTimeInterval beginTime = [[NSProcessInfo processInfo] systemUptime];
        (*pFuncList[dataTypeIndex][calcFormIndex][matrixFormIndex])(pAlignedInput1, pAlignedInput2, pAlignedOutput);
        NSTimeInterval endTime = [[NSProcessInfo processInfo] systemUptime];
        processingIntervals[i] = (endTime - beginTime) * 1000.0;
    }
    
    NSTimeInterval maxTime = processingIntervals[0];
    NSTimeInterval minTime = maxTime;
    NSTimeInterval sumTime = maxTime;
    for(int i = 1; i < statsCount; i++)
    {
        if(maxTime < processingIntervals[i])
            maxTime = processingIntervals[i];
        if(minTime > processingIntervals[i])
            minTime = processingIntervals[i];
        sumTime += processingIntervals[i];
    }
    
    label.hidden = NO;
    label.text = [NSString stringWithFormat:@"Maximum time spent: %.3f ms\nAverage Time spent: %.3f ms\nMinimum time spent: %.3f ms", maxTime, sumTime / (NSTimeInterval)statsCount, minTime];
    
#endif
    
    canBeTouched = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown;
}

@end
