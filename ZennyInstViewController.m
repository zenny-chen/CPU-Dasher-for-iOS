//
//  ZennyInstViewController.m
//  CPU Dasher
//
//  Created by adwo on 12-5-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ZennyInstViewController.h"
#import "LavenderDeviceInfo.h"

#include "ZennyUITag.h"

#import <QuartzCore/QuartzCore.h>


@interface ZennyInstViewController ()

@end

#define ZENNY_ISA_NUMBER_OF_TEST_INSTRUCTIONS       60.0

@implementation ZennyInstViewController

static NSString* GetInstructionCyclesString(int (*pFunc)(int, void*), int nLoop, void *pMem)
{
    volatile NSTimeInterval timeBegin[100];
    volatile NSTimeInterval timeEnd[100];
    NSTimeInterval retTime;
    
    for(int i = 0; i < 100; i++)
    {
        timeBegin[i] = [[NSProcessInfo processInfo] systemUptime];
        (*pFunc)(nLoop, pMem);
        timeEnd[i] = [[NSProcessInfo processInfo] systemUptime];
    }
    
    retTime = timeEnd[0] - timeBegin[0];
    
    for(int i = 1; i < 100; i++)
    {
        NSTimeInterval deltaTime = timeEnd[i] - timeBegin[i];
        if(retTime > deltaTime)
            retTime = deltaTime;
    }
    
    double totalCycles = retTime * [LavenderDeviceInfo getInstance]->absoluteFrequency;
    totalCycles /= (double)nLoop * ZENNY_ISA_NUMBER_OF_TEST_INSTRUCTIONS;
    
    return [ZennyInstViewController getFilteredFloatString:[NSString stringWithFormat:@"%.1f", totalCycles]];
}

+ (NSString*)getFilteredFloatString:(NSString*)orgStr
{
    unichar orgBuffer[32] = { };
    unichar dstBuffer[32] = { };
    NSUInteger len = [orgStr length];
    
    [orgStr getCharacters:orgBuffer range:NSMakeRange(0, len)];
    
    NSUInteger index, dstIndex;
    BOOL hasPoint = NO;
    BOOL hasZero = NO;
    NSUInteger anchor = 0;
    
    for(index = 0, dstIndex = 0; index < len; index++)
    {
        unichar ch = orgBuffer[index];
        
        if(!hasPoint)
        {
            if(ch == L'.')
                hasPoint = YES;
            dstBuffer[dstIndex++] = ch;
        }
        else
        {
            if(!hasZero)
            {
                if(ch == L'0')
                {
                    hasZero = YES;
                    anchor = index;
                }
                else
                    dstBuffer[dstIndex++] = ch;
            }
            else
            {
                NSUInteger zeroCursor;
                for(zeroCursor = index; zeroCursor < len; zeroCursor++)
                {
                    unichar ch = orgBuffer[zeroCursor];
                    if(ch != L'0')
                    {
                        for(NSUInteger i = anchor; i <= zeroCursor; i++)
                            dstBuffer[dstIndex++] = orgBuffer[i];
                        hasZero = NO;
                        index = zeroCursor;
                        break;
                    }
                }
                if(zeroCursor + 1 == len)
                    break;
            }
        }
    }
    
    dstBuffer[dstIndex] = L'0';
    if(dstBuffer[dstIndex - 1] == (unichar)L'.')
        dstIndex--;
    
    return [NSString stringWithCharacters:dstBuffer length:dstIndex];
}

#pragma mark - calculation selectors

static NSString* GetMiscCyclesString(int (*pFunc)(void*, int), void *pMem, int nLoop)
{
    volatile NSTimeInterval timeBegin[100];
    volatile NSTimeInterval timeEnd[100];
    NSTimeInterval retTime;
    
    for(int i = 0; i < 100; i++)
    {
        timeBegin[i] = [[NSProcessInfo processInfo] systemUptime];
        (*pFunc)(pMem, nLoop);
        timeEnd[i] = [[NSProcessInfo processInfo] systemUptime];
    }
    
    retTime = timeEnd[0] - timeBegin[0];
    
    for(int i = 1; i < 100; i++)
    {
        NSTimeInterval deltaTime = timeEnd[i] - timeBegin[i];
        if(retTime > deltaTime)
            retTime = deltaTime;
    }
    
    double totalCycles = retTime * [LavenderDeviceInfo getInstance]->absoluteFrequency;
    totalCycles /= (double)nLoop * 32;
    
    return [ZennyInstViewController getFilteredFloatString:[NSString stringWithFormat:@"%.1f", totalCycles]];
}

static NSString* doADC(ZennyInstViewController* controller)
{
    NSMutableString *str = [NSMutableString stringWithCapacity:1024];
    [str appendString:@"Description:\nAdd with Carry adds a value(the second source operand) and the carry flag value to a register value(the first source operand), and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [str appendFormat:@"ADC (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&adcImmMinTest, 10000, NULL)];
    [str appendFormat:@"ADC (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&adcImmMaxTest, 10000, NULL)];
    [str appendFormat:@"ADC (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&adcRegMinTest, 10000, NULL)];
    [str appendFormat:@"ADC (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&adcRegMaxTest, 10000, NULL)];
    [str appendFormat:@"ADC (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&adcShftMinTest, 10000, NULL)];
    [str appendFormat:@"ADC (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&adcShftMaxTest, 10000, NULL)];
    
    return str;
}

static NSString* doADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1024];
    [descStr appendString:@"Description:\nThis instruction adds a register value and an optionally-shifted register value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"ADD (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&addImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addImmMaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&addRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addRegMaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&addShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doADDThumbImm(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1024];
    [descStr appendString:@"Description:\nThis instruction adds an immediate value to a register value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"ADD (Thumb, T1) Maximum Cycles: %@\n", GetInstructionCyclesString(&addThumbImmT1MaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (Thumb, T1) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addThumbImmT1MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"ADD (Thumb, T2) Maximum Cycles: %@\n", GetInstructionCyclesString(&addThumbImmT2MaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (Thumb, T2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addThumbImmT2MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"ADD (Thumb, T3) Maximum Cycles: %@\n", GetInstructionCyclesString(&addThumbImmT3MaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (Thumb, T3) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addThumbImmT3MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"ADD (Thumb, T4) Maximum Cycles: %@\n", GetInstructionCyclesString(&addThumbImmT4MaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (Thumb, T4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addThumbImmT4MinTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doADDThumbReg(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1024];
    [descStr appendString:@"Description:\nThis instruction adds a register value and an optionally-shifted register value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"ADD (Thumb, T1) Maximum Cycles: %@\n", GetInstructionCyclesString(&addThumbRegT1MaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (Thumb, T1) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addThumbRegT1MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"ADD (Thumb, T2) Maximum Cycles: %@\n", GetInstructionCyclesString(&addThumbRegT2MaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (Thumb, T2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addThumbRegT2MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"ADD (Thumb, T3) Maximum Cycles: %@\n", GetInstructionCyclesString(&addThumbRegT3MaxTest, 10000, NULL)];
    [descStr appendFormat:@"ADD (Thumb, T3) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&addThumbRegT3MinTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doAND(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nThis instruction performs a bitwise AND of a register value(the first source operand) and another value(the second source operand), and writes the result to the destination register.\n\n"];
    
    [descStr appendFormat:@"AND (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&andImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"AND (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&andImmMaxTest, 10000, NULL)];
    [descStr appendFormat:@"AND (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&andRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"AND (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&andRegMaxTest, 10000, NULL)];
    [descStr appendFormat:@"AND (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&andShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"AND (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&andShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doASR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nArithmetic Shift Right shifts a register value right by a number of bits, shifting in copies of its sign bit, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"ASR (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&asrImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"ASR (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&asrImmMaxTest, 10000, NULL)];
    [descStr appendFormat:@"ASR (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&asrRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"ASR (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&asrRegMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doBFC(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nBit Field Clear clears any number of adjacent bits at any position in a register, without affecting the other bits in the register.\n\n"];
    
    [descStr appendFormat:@"BFC Maximum Cycles: %@\n", GetInstructionCyclesString(&bfcMinTest, 10000, NULL)];
    [descStr appendFormat:@"BFC Minimum Cycles: %@\n\n", GetInstructionCyclesString(&bfcMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doBFI(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nBit Field Insert copies any number of low order bits from a register into the same number of adjacent bits at any position in the destination register.\n\n"];
    
    [descStr appendFormat:@"BFI Maximum Cycles: %@\n", GetInstructionCyclesString(&bfiMinTest, 10000, NULL)];
    [descStr appendFormat:@"BFI Minimum Cycles: %@\n\n", GetInstructionCyclesString(&bfiMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doBIC(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nBitwise Bit Clear performs a bitwise AND of a register value and the complement of the third operand, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"BIC (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&bicImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"BIC (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&bicImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"BIC (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&bicRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"BIC (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&bicRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"BIC (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&bicShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"BIC (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&bicShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doCBNZ(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nCompare and Branch on Nonzero and Compare and Branch on Zero compare the value in a register with zero, and conditionally branch forward a constant value. They do not affect the condition flags. (Thumb T1)\n\n"];
    
    [descStr appendFormat:@"CBNZ Average Cycles: %@\n", GetInstructionCyclesString(&cbnzAvgTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doCLZ(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nCount Leading Zeros returns the number of binary zero bits before the first binary one bit in a value.\n\n"];
    
    [descStr appendFormat:@"CLZ Maximum Cycles: %@\n", GetInstructionCyclesString(&clzMinTest, 10000, NULL)];
    [descStr appendFormat:@"CLZ Minimum Cycles: %@\n\n", GetInstructionCyclesString(&clzMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doCMN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nCompare Negative adds a register value and another value. It updates the condition flags based on the result, and discards the result.\n\n"];
    
    [descStr appendFormat:@"CMN (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&cmnImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"CMN (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&cmnImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"CMN (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&cmnRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"CMN (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&cmnRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"CMN (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&cmnShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"CMN (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&cmnShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doCMP(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nCompare subtracts a value(second source) from a register value(first source). It updates the condition flags based on the result, and discards the result.\n\n"];
    
    [descStr appendFormat:@"CMN (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&cmpImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"CMN (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&cmpImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"CMN (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&cmpRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"CMN (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&cmpRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"CMN (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&cmpShftMaxTest, 10000, NULL)];
    [descStr appendFormat:@"CMN (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&cmpShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doEOR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nBitwise Exclusive OR performs a bitwise Exclusive OR of a register value and a second source value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"EOR (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&eorImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"EOR (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&eorImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"EOR (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&eorRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"EOR (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&eorRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"EOR (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&eorShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"EOR (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&eorShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doLSL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nLogical Shift Left shifts the first source register value left by the second source number of bits, shifting in zeros, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"LSL (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&lslImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"LSL (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&lslImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"LSL (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&lslRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"LSL (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&lslRegMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doLSR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nLogical Shift Right shifts the first source register value right by the second source number of bits, shifting in zeros, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"LSR (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&lsrImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"LSR (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&lsrImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"LSR (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&lsrRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"LSR (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&lsrRegMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doMLA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nMultiply Accumulate multiplies two register values, and adds a third register value. The least significant 32 bits of the result are written to the destination register. These 32 bits do not depend on whether the source register values are considered to be signed values or unsigned values.\nIn ARM code, the condition flags can optionally be updated based on the result. Use of this option adversely affects performance on many processor implementations.\n\n"];
    
    [descStr appendFormat:@"MLA Maximum Cycles: %@\n", GetInstructionCyclesString(&mlaMinTest, 10000, NULL)];
    [descStr appendFormat:@"MLA Minimum Cycles: %@\n\n", GetInstructionCyclesString(&mlaMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doMLS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nMultiply and Subtract multiplies two register values, and subtracts the product from a third register value. The least significant 32 bits of the result are written to the destination register. These 32 bits do not depend on whether the source register values are considered to be signed values or unsigned values.\nIn ARM code, the condition flags can optionally be updated based on the result. Use of this option adversely affects performance on many processor implementations.\n\n"];
    
    [descStr appendFormat:@"MLS Maximum Cycles: %@\n", GetInstructionCyclesString(&mlsMinTest, 10000, NULL)];
    [descStr appendFormat:@"MLS Minimum Cycles: %@\n\n", GetInstructionCyclesString(&mlsMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doMOV(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nMove writes the source value to the destination register. It can optionally update the condition flags based on the value.\n\n"];
    
    [descStr appendFormat:@"MOV (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&movImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"MOV (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&movImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"MOV (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&movRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"MOV (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&movRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"MOV (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&movShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"MOV (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&movShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doMOVT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nMove Top writes an immediate value to the top halfword of the destination register. It does not affect the contents of the bottom halfword.\n\n"];
    
    [descStr appendFormat:@"MOVT Maximum Cycles: %@\n", GetInstructionCyclesString(&movtMinTest, 10000, NULL)];
    [descStr appendFormat:@"MOVT Minimum Cycles: %@\n\n", GetInstructionCyclesString(&movtMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doMUL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nMultiply multiplies two register values. The least significant 32 bits of the result are written to the destination register. These 32 bits do not depend on whether the source register values are considered to be signed values or unsigned values.\nOptionally, it can update the condition flags based on the result. In the Thumb instruction set, this option is limited to only a few forms of the instruction. Use of this option adversely affects performance on many processor implementations.\n\n"];
    
    [descStr appendFormat:@"MUL Maximum Cycles: %@\n", GetInstructionCyclesString(&mulMinTest, 10000, NULL)];
    [descStr appendFormat:@"MUL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&mulMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doMVN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nBitwise NOT writes the bitwise inverse of the source value to the destination register. It can optionally update the condition flags based on the value.\n\n"];
    
    [descStr appendFormat:@"MVN (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&mvnImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"MVN (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&mvnImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"MVN (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&mvnRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"MVN (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&mvnRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"MVN (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&mvnShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"MVN (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&mvnShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doORN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nBitwise OR NOT performs a bitwise (inclusive) OR of a register value and the complement of the second source value, and writes the result to the destination register. It can optionally update the condition flags based on the result. (Thumb T1)\n\n"];
    
    [descStr appendFormat:@"ORN (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&ornImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"ORN (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ornImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"ORN (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&ornRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"ORN (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ornRegMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doORR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nBitwise OR performs a bitwise (inclusive) OR of a register value and the second source value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"ORR (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&orrImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"ORR (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&orrImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"ORR (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&orrRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"ORR (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&orrRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"ORR (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&orrShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"ORR (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&orrShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doPKH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nPack Halfword combines one halfword of its first operand with the other halfword of its shifted second operand.\n\n"];
    
    [descStr appendFormat:@"PKH Maximum Cycles: %@\n", GetInstructionCyclesString(&pkhMinTest, 10000, NULL)];
    [descStr appendFormat:@"PKH Minimum Cycles: %@\n\n", GetInstructionCyclesString(&pkhMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nSaturating Add adds two register values, saturates the result to the 32-bit signed integer range –2^31 ≤ x ≤ 2^31 – 1, and writes the result to the destination register. If saturation occurs, it sets the Q flag in the APSR.\n\n"];
    
    [descStr appendFormat:@"QADD Maximum Cycles: %@\n", GetInstructionCyclesString(&qaddMinTest, 10000, NULL)];
    [descStr appendFormat:@"QADD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qaddMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQADD16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Add 16 performs two 16-bit integer additions, saturates the results to the 16-bit signed integer range –2^15 ≤ x ≤ 2^15 – 1, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"QADD16 Maximum Cycles: %@\n", GetInstructionCyclesString(&qadd16MinTest, 10000, NULL)];
    [descStr appendFormat:@"QADD16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qadd16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQADD8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Add 8 performs four 8-bit integer additions, saturates the results to the 8-bit signed integer range –2^7 ≤ x ≤ 2^7 – 1, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"QADD8 Maximum Cycles: %@\n", GetInstructionCyclesString(&qadd8MinTest, 10000, NULL)];
    [descStr appendFormat:@"QADD8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qadd8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQASX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Add and Subtract with Exchange exchanges the two halfwords of the second operand, performs one 16-bit integer addition and one 16-bit subtraction, saturates the results to the 16-bit signed integer range –2^15 ≤ x ≤ 2^15 – 1, and writes the results to the destination register.\nThe pre-UAL syntax QADDSUBX<c> is equivalent to QASX<c>.\n\n"];
    
    [descStr appendFormat:@"QASX Maximum Cycles: %@\n", GetInstructionCyclesString(&qasxMinTest, 10000, NULL)];
    [descStr appendFormat:@"QASX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qasxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQDADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Double and Add adds a doubled register value to another register value, and writes the result to the destination register. Both the doubling and the addition have their results saturated to the 32-bit signed integer range –2^31 ≤ x ≤ 2^31 – 1. If saturation occurs in either operation, it sets the Q flag in the APSR.\n\n"];
    
    [descStr appendFormat:@"QDADD Maximum Cycles: %@\n", GetInstructionCyclesString(&qdaddMinTest, 10000, NULL)];
    [descStr appendFormat:@"QDADD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qdaddMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQDSUB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Double and Subtract subtracts a doubled register value from another register value, and writes the result to the destination register. Both the doubling and the subtraction have their results saturated to the 32-bit signed integer range –2^31 ≤ x ≤ 2^31 – 1. If saturation occurs in either operation, it sets the Q flag in the APSR.\n\n"];
    
    [descStr appendFormat:@"QDSUB Maximum Cycles: %@\n", GetInstructionCyclesString(&qdsubMinTest, 10000, NULL)];
    [descStr appendFormat:@"QDSUB Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qdsubMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQSAX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Subtract and Add with Exchange exchanges the two halfwords of the second operand, performs one 16-bit integer subtraction and one 16-bit addition, saturates the results to the 16-bit signed integer range –2^15 ≤ x ≤ 2^15 – 1, and writes the results to the destination register.\nThe pre-UAL syntax QSUBADDX<c> is equivalent to QSAX<c>.\n\n"];
    
    [descStr appendFormat:@"QSAX Maximum Cycles: %@\n", GetInstructionCyclesString(&qsaxMinTest, 10000, NULL)];
    [descStr appendFormat:@"QSAX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qsaxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQSUB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Subtract subtracts one register value from another register value, saturates the result to the 32-bit signed integer range –2^31 ≤ x ≤ 2^31 – 1, and writes the result to the destination register. If saturation occurs, it sets the Q flag in the APSR.\n\n"];
    
    [descStr appendFormat:@"QSUB Maximum Cycles: %@\n", GetInstructionCyclesString(&qsubMinTest, 10000, NULL)];
    [descStr appendFormat:@"QSUB Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qsubMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQSUB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Subtract 16 performs two 16-bit integer subtractions, saturates the results to the 16-bit signed integer range –2^15 ≤ x ≤ 2^15 – 1, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"QSUB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&qsub16MinTest, 10000, NULL)];
    [descStr appendFormat:@"QSUB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qsub16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doQSUB8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Saturating Subtract 8 performs four 8-bit integer subtractions, saturates the results to the 8-bit signed integer range –2^7 ≤ x ≤ 2^7 – 1, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"QSUB8 Maximum Cycles: %@\n", GetInstructionCyclesString(&qsub8MinTest, 10000, NULL)];
    [descStr appendFormat:@"QSUB8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&qsub8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doRBIT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Reverse Bits reverses the bit order in a 32-bit register.\n\n"];
    
    [descStr appendFormat:@"RBIT Maximum Cycles: %@\n", GetInstructionCyclesString(&rbitMinTest, 10000, NULL)];
    [descStr appendFormat:@"RBIT Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rbitMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doREV(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Byte-Reverse Word reverses the byte order in a 32-bit register.\n\n"];
    
    [descStr appendFormat:@"REV Maximum Cycles: %@\n", GetInstructionCyclesString(&revMinTest, 10000, NULL)];
    [descStr appendFormat:@"REV Minimum Cycles: %@\n\n", GetInstructionCyclesString(&revMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doREV16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Byte-Reverse Packed Halfword reverses the byte order in each16-bit halfword of a 32-bit register.\n\n"];
    
    [descStr appendFormat:@"REV16 Maximum Cycles: %@\n", GetInstructionCyclesString(&rev16MinTest, 10000, NULL)];
    [descStr appendFormat:@"REV16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rev16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doREVSH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Byte-Reverse Signed Halfword reverses the byte order in the lower 16-bit halfword of a 32-bit register, and sign-extends the result to 32 bits.\n\n"];
    
    [descStr appendFormat:@"REVSH Maximum Cycles: %@\n", GetInstructionCyclesString(&revshMinTest, 10000, NULL)];
    [descStr appendFormat:@"REVSH Minimum Cycles: %@\n\n", GetInstructionCyclesString(&revshMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doROR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nRotate Right provides the value of the contents of a register rotated by a variable number of bits. The bits that are rotated off the right end are inserted into the vacated bit positions on the left. The variable number of bits is read from the bottom byte of a register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"ROR (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&rorImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"ROR (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rorImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"ROR (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&rorRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"ROR (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rorRegMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doRRX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Rotate Right with Extend provides the value of the contentsof a register shifted right by one place, with the carry flag shifted into bit [31].\nRRX can optionally update the condition flags based on the result. In that case, bit [0] is shifted into the carry flag.\n\n"];
    
    [descStr appendFormat:@"RRX Maximum Cycles: %@\n", GetInstructionCyclesString(&rrxMinTest, 10000, NULL)];
    [descStr appendFormat:@"RRX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rrxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doRSB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nReverse Subtract subtracts the first source operand value from the second source operand, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"RSB (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&rsbImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"RSB (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rsbImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"RSB (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&rsbRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"RSB (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rsbRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"RSB (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&rsbShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"RSB (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rsbShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doRSC(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nReverse Subtract with Carry subtracts the first source operand value and the value of NOT (Carry flag) from the second source operand value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"RSC (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&rscImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"RSC (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rscImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"RSC (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&rscRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"RSC (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rscRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"RSC (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&rscShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"RSC (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&rscShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSADD16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Add 16 performs two 16-bit signed integer additions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the additions.\n\n"];
    
    [descStr appendFormat:@"SADD16 Maximum Cycles: %@\n", GetInstructionCyclesString(&sadd16MinTest, 10000, NULL)];
    [descStr appendFormat:@"SADD16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sadd16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSADD8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Add 8 performs four 8-bit signed integer additions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the additions.\n\n"];
    
    [descStr appendFormat:@"SADD8 Maximum Cycles: %@\n", GetInstructionCyclesString(&sadd8MinTest, 10000, NULL)];
    [descStr appendFormat:@"SADD8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sadd8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSASX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Add and Subtract with Exchange exchanges the two halfwords of the second operand, performs one 16-bit integer addition and one 16-bit subtraction, and writes the results to the destination register. It sets the APSR.GE bits according to the results.\nThe pre-UAL syntax SADDSUBX<c> is equivalent to SASX<c>.\n\n"];
    
    [descStr appendFormat:@"SASX Maximum Cycles: %@\n", GetInstructionCyclesString(&sasxMinTest, 10000, NULL)];
    [descStr appendFormat:@"SASX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sasxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSBC(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nSubtract with Carry subtracts the second source operand  value and the value of NOT (Carry flag) from the first source operand value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"SBC (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&sbcImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"SBC (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sbcImmMaxTest, 10000, NULL)];
    [descStr appendFormat:@"SBC (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&sbcRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"SBC (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sbcRegMaxTest, 10000, NULL)];
    [descStr appendFormat:@"SBC(register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&sbcShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"SBC(register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sbcShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSBFX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Bit Field Extract extracts any number of adjacent bits at any position from a register, sign-extends them to 32 bits, and writes the result to the destination register.\n\n"];
    
    [descStr appendFormat:@"SBFX Maximum Cycles: %@\n", GetInstructionCyclesString(&sbfxMinTest, 10000, NULL)];
    [descStr appendFormat:@"SBFX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sbfxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSEL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Select Bytes selects each byte of its result from either its first operand or its second operand, according to the values of the GE flags.\n\n"];
    
    [descStr appendFormat:@"SEL Maximum Cycles: %@\n", GetInstructionCyclesString(&selMinTest, 10000, NULL)];
    [descStr appendFormat:@"SEL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&selMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* SHADD16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Halving Add 16 performs two signed 16-bit integer additions, halves the results, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"SHADD16 Maximum Cycles: %@\n", GetInstructionCyclesString(&shadd16MinTest, 10000, NULL)];
    [descStr appendFormat:@"SHADD16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&shadd16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* SHADD8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Halving Add 8 performs four signed 8-bit integer additions, halves the results, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"SHADD8 Maximum Cycles: %@\n", GetInstructionCyclesString(&shadd8MinTest, 10000, NULL)];
    [descStr appendFormat:@"SHADD8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&shadd8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* SHASX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Halving Add and Subtract with Exchange exchanges the two halfwords of the second operand, performs one signed 16-bit integer addition and one signed 16-bit subtraction, halves the results, and writes the results to the destination register.\nThe pre-UAL syntax SHADDSUBX<c> is equivalent to SHASX<c>.\n\n"];
    
    [descStr appendFormat:@"SHASX Maximum Cycles: %@\n", GetInstructionCyclesString(&shasxMinTest, 10000, NULL)];
    [descStr appendFormat:@"SHASX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&shasxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSHSAX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Halving Subtract and Add with Exchange exchanges the two halfwords of the second operand, performs one signed 16-bit integer subtraction and one signed 16-bit addition, halves the results, and writes the results to the destination register.\nThe pre-UAL syntax SHSUBADDX<c> is equivalent to SHSAX<c>.\n\n"];
    
    [descStr appendFormat:@"SHSAX Maximum Cycles: %@\n", GetInstructionCyclesString(&shsaxMinTest, 10000, NULL)];
    [descStr appendFormat:@"SHSAX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&shsaxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSHSUB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Halving Subtract 16 performs two signed 16-bit integer subtractions, halves the results, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"SHSUB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&shsub16MinTest, 10000, NULL)];
    [descStr appendFormat:@"SHSUB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&shsub16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSHSUB8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Halving Subtract 8 performs four signed 8-bit integer subtractions, halves the results, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"SHSUB8 Maximum Cycles: %@\n", GetInstructionCyclesString(&shsub8MinTest, 10000, NULL)];
    [descStr appendFormat:@"SHSUB8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&shsub8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Accumulate (halfwords) performs a signed multiply-accumulate operation. The multiply acts on two signed 16-bit quantities, taken from either the bottom or the top half of their respective source registers. The other halves of these source registers are ignored. The 32-bit product is added to a 32-bit accumulate value and the result is written to the destination register.\nIf overflow occurs during the addition of the accumulate value, the instruction sets the Q flag in the APSR. It is not possible for overflow to occur during the multiplication.\n\n"];
    
    [descStr appendFormat:@"SMLA Maximum Cycles: %@\n", GetInstructionCyclesString(&smlaMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLA Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smlaMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLAD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Accumulate Dual performs two signed 16 x 16-bit multiplications. It adds the products to a 32-bit accumulate operand.\nOptionally, you can exchange the halfwords of the second operand before performing the arithmetic. This produces top × bottom and bottom × top multiplication.\nThis instruction sets the Q flag if the accumulate operation overflows. Overflow cannot occur during the multiplications.\n\n"];
    
    [descStr appendFormat:@"SMLAD Maximum Cycles: %@\n", GetInstructionCyclesString(&smladMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLAD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smladMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLAL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Accumulate Long multiplies two signed 32-bit values to produce a 64-bit value, and accumulates this with a 64-bit value.\nIn ARM code, the condition flags can optionally be updated based on the result. Use of this option adversely affects performance on many processor implementations.\n\n"];
    
    [descStr appendFormat:@"SMLAL Maximum Cycles: %@\n", GetInstructionCyclesString(&smlalMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLAL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smlalMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLALxy(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Accumulate Long (halfwords) multiplies two signed 16-bit values to produce a 32-bit value, and accumulates this with a 64-bit value. The multiply acts on two signed 16-bit quantities, taken from either the bottom or the top half of their respective source registers. The other halves of these source registers are ignored. The 32-bit product is sign-extended and accumulated with a 64-bit accumulate value.\nOverflow is possible during this instruction, but only as a result of the 64-bit addition. This overflow is not detected if it occurs. Instead, the result wraps around modulo 2^64\n\n"];
    
    [descStr appendFormat:@"SMLAL<x><y> Maximum Cycles: %@\n", GetInstructionCyclesString(&smlalxyMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLAL<x><y> Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smlalxyMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLALD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Accumulate Long Dual performs two signed 16 × 16-bit multiplications. It adds the products to a 64-bit accumulate operand.\nOptionally, you can exchange the halfwords of the second operand before performing the arithmetic. This produces top × bottom and bottom × top multiplication.\nOverflow is possible during this instruction, but only as a result of the 64-bit addition. This overflow is not detected if it occurs. Instead, the result wraps around modulo 2^64.\n\n"];
    
    [descStr appendFormat:@"SMLALD Maximum Cycles: %@\n", GetInstructionCyclesString(&smlaldMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLALD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smlaldMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLALW(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Accumulate (word by halfword) performs a signed multiply-accumulate operation. The multiply acts on a signed 32-bit quantity and a signed 16-bit quantity. The signed 16-bit quantity is taken from either the bottom or the top half of its source register. The other half of the second source register is ignored. The top 32 bits of the 48-bit product are added to a 32-bit accumulate value and the result is written to the destination register. The bottom 16 bits of the 48-bit product are ignored.\nIf overflow occurs during the addition of the accumulate value, the instruction sets the Q flag in the APSR. No overflow can occur during the multiplication.\n\n"];
    
    [descStr appendFormat:@"SMLAW Maximum Cycles: %@\n", GetInstructionCyclesString(&smlawMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLAW Minimum Cycles: %@\n", GetInstructionCyclesString(&smlawMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLSD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Subtract Dual performs two signed 16 × 16-bit multiplications. It adds the difference of the products to a 32-bit accumulate operand.\nOptionally, you can exchange the halfwords of the second operand before performing the arithmetic. This produces top × bottom and bottom × top multiplication.\nThis instruction sets the Q flag if the accumulate operation overflows. Overflow cannot occur during the multiplications or subtraction.\n\n"];
    
    [descStr appendFormat:@"SMLSD Maximum Cycles: %@\n", GetInstructionCyclesString(&smlsdMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLSD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smlsdMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMLSLD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Subtract Long Dual performs two signed 16 × 16-bit multiplications. It adds the difference of the products to a 64-bit accumulate operand.\nOptionally, you can exchange the halfwords of the second operand before performing the arithmetic. This produces top × bottom and bottom × top multiplication.\nOverflow is possible during this instruction, but only as a result of the 64-bit addition. This overflow is not detected if it occurs. Instead, the result wraps around modulo 2^64.\n\n"];
    
    [descStr appendFormat:@"SMLSLD Maximum Cycles: %@\n", GetInstructionCyclesString(&smlsldMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMLSLD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smlsldMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMMLA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Most Significant Word Multiply Accumulate multiplies two signed 32-bit values, extracts the most significant 32 bits of the result, and adds an accumulate value.\nOptionally, you can specify that the result is rounded instead of being truncated. In this case, the constant 0x80000000 is added to the product before the high word is extracted.\n\n"];
    
    [descStr appendFormat:@"SMMLA Maximum Cycles: %@\n", GetInstructionCyclesString(&smmlaMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMMLA Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smmlaMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMMLS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Most Significant Word Multiply Subtract multiplies two signed 32-bit values, extracts the most significant 32 bits of the result, and subtracts it from an accumulate value.\nOptionally, you can specify that the result is rounded instead of being truncated. In this case, the constant 0x80000000 is added to the product before the high word is extracted.\n\n"];
    
    [descStr appendFormat:@"SMMLS Maximum Cycles: %@\n", GetInstructionCyclesString(&smmlsMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMMLS Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smmlsMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMMUL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Most Significant Word Multiply multiplies two signed 32-bit values, extracts the most significant 32 bits of the result, and writes those bits to the destination register.\nOptionally, you can specify that the result is rounded instead of being truncated. In this case, the constant 0x80000000 is added to the product before the high word is extracted.\n\n"];
    
    [descStr appendFormat:@"SMMUL Maximum Cycles: %@\n", GetInstructionCyclesString(&smmlsMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMMUL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smmlsMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMUAD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Dual Multiply Add performs two signed 16 × 16-bit multiplications. It adds the products together, and writes the result to the destination register.\nOptionally, you can exchange the halfwords of the second operand before performing the arithmetic. This produces top × bottom and bottom × top multiplication.\nThis instruction sets the Q flag if the addition overflows. The multiplications cannot overflow.\n\n"];
    
    [descStr appendFormat:@"SMUAD Maximum Cycles: %@\n", GetInstructionCyclesString(&smuadMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMUAD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smuadMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMUL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply (halfwords) multiplies two signed 16-bit quantities, taken from either the bottom or the top half of their respective source registers. The other halves of these source registers are ignored. The 32-bit product is written to the destination register. No overflow is possible during this instruction.\n\n"];
    
    [descStr appendFormat:@"SMUL Maximum Cycles: %@\n", GetInstructionCyclesString(&smulMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMUL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smulMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMULL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply Long multiplies two 32-bit signed values to produce a 64-bit result.\nIn ARM code, the condition flags can optionally be updated based on the result. Use of this option adversely affects performance on many processor implementations.\n\n"];
    
    [descStr appendFormat:@"SMULL Maximum Cycles: %@\n", GetInstructionCyclesString(&smullMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMULL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smullMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMULW(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Multiply (word by halfword) multiplies a signed 32-bit quantity and a signed 16-bit quantity. The signed 16-bit quantity is taken from either the bottom or the top half of its source register. The other half of the second source register is ignored. The top 32 bits of the 48-bit product are written to the destination register. The bottom 16 bits of the 48-bit product are ignored. No overflow is possible during this instruction.\n\n"];
    
    [descStr appendFormat:@"SMULW Maximum Cycles: %@\n", GetInstructionCyclesString(&smulwMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMULW Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smulwMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSMUSD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Dual Multiply Subtract performs two signed 16 × 16-bit multiplications. It subtracts one of the products from the other, and writes the result to the destination register.\nOptionally, you can exchange the halfwords of the second operand before performing the arithmetic. This produces top × bottom and bottom × top multiplication.\nOverflow cannot occur.\n\n"];
    
    [descStr appendFormat:@"SMUSD Maximum Cycles: %@\n", GetInstructionCyclesString(&smusdMinTest, 10000, NULL)];
    [descStr appendFormat:@"SMUSD Minimum Cycles: %@\n\n", GetInstructionCyclesString(&smusdMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSSAT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Saturate saturates an optionally-shifted signed value to a selectable signed range.\n\n"];
    
    [descStr appendFormat:@"SSAT Maximum Cycles: %@\n", GetInstructionCyclesString(&ssatMinTest, 10000, NULL)];
    [descStr appendFormat:@"SSAT Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ssatMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSSAT16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Saturate 16 saturates two signed 16-bit values to a selected signed range.\nThe Q flag is set if the operation saturates.\n\n"];
    
    [descStr appendFormat:@"SSAT16 Maximum Cycles: %@\n", GetInstructionCyclesString(&ssat16MinTest, 10000, NULL)];
    [descStr appendFormat:@"SSAT16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ssat16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSSAX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Subtract and Add with Exchange exchanges the two halfwords of the second operand, performs one 16-bit integer subtraction and one 16-bit addition, and writes the results to the destination register. It sets the APSR.GE bits according to the results.\nThe pre-UAL syntax SSUBADDX<c> is equivalent to SSAX<c>.\n\n"];
    
    [descStr appendFormat:@"SSAX Maximum Cycles: %@\n", GetInstructionCyclesString(&ssaxMinTest, 10000, NULL)];
    [descStr appendFormat:@"SSAX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ssaxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSSUB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Subtract 16 performs two 16-bit signed integer subtractions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the subtractions.\n\n"];
    
    [descStr appendFormat:@"SSUB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&ssub16MinTest, 10000, NULL)];
    [descStr appendFormat:@"SSUB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ssub16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSSUB8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Subtract 8 performs four 8-bit signed integer subtractions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the subtractions.\n\n"];
    
    [descStr appendFormat:@"SSUB8 Maximum Cycles: %@\n", GetInstructionCyclesString(&ssub8MinTest, 10000, NULL)];
    [descStr appendFormat:@"SSUB8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ssub8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSUB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction subtracts the second source operand value from the first source operand value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"SUB (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&subImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"SUB (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&subImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"SUB (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&subRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"SUB (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&subRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"SUB (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&subShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"SUB (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&subShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSUBThumbImm(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction subtracts an immediate value from a register value, and writes the result to the destination register. It can optionally update the condition flags based on the result.\n\n"];
    
    [descStr appendFormat:@"SUB (immediate, Thumb T1) Maximum Cycles: %@\n", GetInstructionCyclesString(&subImmThumbT1MaxTest, 10000, NULL)];
    [descStr appendFormat:@"SUB (immediate, Thumb T1) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&subImmThumbT1MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"SUB (immediate, Thumb T2) Maximum Cycles: %@\n", GetInstructionCyclesString(&subImmThumbT2MaxTest, 10000, NULL)];
    [descStr appendFormat:@"SUB (immediate, Thumb T2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&subImmThumbT2MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"SUB (immediate, Thumb T3) Maximum Cycles: %@\n", GetInstructionCyclesString(&subImmThumbT3MaxTest, 10000, NULL)];
    [descStr appendFormat:@"SUB (immediate, Thumb T3) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&subImmThumbT3MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"SUB (immediate, Thumb T4) Maximum Cycles: %@\n", GetInstructionCyclesString(&subImmThumbT4MaxTest, 10000, NULL)];
    [descStr appendFormat:@"SUB (immediate, Thumb T4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&subImmThumbT4MinTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSXTAB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Extend and Add Byte extracts an 8-bit value from a register, sign-extends it to 32 bits, adds the result to the value in another register, and writes the final result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit value.\n\n"];
    
    [descStr appendFormat:@"SXTAB Maximum Cycles: %@\n", GetInstructionCyclesString(&sxtabMinTest, 10000, NULL)];
    [descStr appendFormat:@"SXTAB Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sxtabMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSXTAB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Extend and Add Byte 16 extracts two 8-bit values from a register, sign-extends them to 16 bits each, adds the results to two 16-bit values from another register, and writes the final results to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit values.\n\n"];
    
    [descStr appendFormat:@"SXTAB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&sxtab16MinTest, 10000, NULL)];
    [descStr appendFormat:@"SXTAB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sxtab16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSXTAH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Extend and Add Halfword extracts a 16-bit value from a register, sign-extends it to 32 bits, adds the result to a value from another register, and writes the final result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 16-bit value.\n\n"];
    
    [descStr appendFormat:@"SXTAH Maximum Cycles: %@\n", GetInstructionCyclesString(&sxtahMinTest, 10000, NULL)];
    [descStr appendFormat:@"SXTAH Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sxtahMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSXTB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Extend Byte extracts an 8-bit value from a register, sign-extends it to 32 bits, and writes the result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit value.\n\n"];
    
    [descStr appendFormat:@"SXTB Maximum Cycles: %@\n", GetInstructionCyclesString(&sxtbMinTest, 10000, NULL)];
    [descStr appendFormat:@"SXTB Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sxtbMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSXTB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Extend Byte 16 extracts two 8-bit values from a register, sign-extends them to 16 bits each, and writes the results to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit values.\n\n"];
    
    [descStr appendFormat:@"SXTB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&sxtb16MinTest, 10000, NULL)];
    [descStr appendFormat:@"SXTB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sxtb16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doSXTH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Signed Extend Halfword extracts a 16-bit value from a register, sign-extends it to 32 bits, and writes the result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 16-bit value.\n\n"];
    
    [descStr appendFormat:@"SXTH Maximum Cycles: %@\n", GetInstructionCyclesString(&sxthMinTest, 10000, NULL)];
    [descStr appendFormat:@"SXTH Minimum Cycles: %@\n\n", GetInstructionCyclesString(&sxthMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doTEQ(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Test Equivalence performs a bitwise exclusive OR operation on the first source register value and the second source operand value. It updates the condition flags based on the result, and discards the result.\n\n"];
    
    [descStr appendFormat:@"TEQ (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&teqImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"TEQ (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&teqImmMaxTest, 10000, NULL)];
    [descStr appendFormat:@"TEQ (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&teqRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"TEQ (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&teqRegMaxTest, 10000, NULL)];
    [descStr appendFormat:@"TEQ (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&teqShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"TEQ (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&teqShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doTST(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Test performs a bitwise AND operation on the first source register value and the second source operand value. It updates the condition flags based on the result, and discards the result.\n\n"];
    
    [descStr appendFormat:@"TST (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&tstImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"TST (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&tstImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"TST (register) Maximum Cycles: %@\n", GetInstructionCyclesString(&tstRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"TST (register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&tstRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"TST (register-shifted register) Maximum Cycles: %@\n", GetInstructionCyclesString(&tstShftMinTest, 10000, NULL)];
    [descStr appendFormat:@"TST (register-shifted register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&tstShftMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUADD16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Add 16 performs two 16-bit unsigned integer additions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the additions.\n\n"];
    
    [descStr appendFormat:@"UADD16 Maximum Cycles: %@\n", GetInstructionCyclesString(&uadd16MinTest, 10000, NULL)];
    [descStr appendFormat:@"UADD16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uadd16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUADD8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Add 8 performs four unsigned 8-bit integer additions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the additions.\n\n"];
    
    [descStr appendFormat:@"UADD8 Maximum Cycles: %@\n", GetInstructionCyclesString(&uadd8MinTest, 10000, NULL)];
    [descStr appendFormat:@"UADD8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uadd8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUASX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Add and Subtract with Exchange exchanges the two halfwords of the second operand, performs one unsigned 16-bit integer addition and one unsigned 16-bit subtraction, and writes the results to the destination register. It sets the APSR.GE bits according to the results.\nThe pre-UAL syntax UADDSUBX<c> is equivalent to UASX<c>.\n\n"];
    
    [descStr appendFormat:@"UASX Maximum Cycles: %@\n", GetInstructionCyclesString(&uasxMinTest, 10000, NULL)];
    [descStr appendFormat:@"UASX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uasxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUBFX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Bit Field Extract extracts any number of adjacent bits at any position from a register, zero-extends them to 32 bits, and writes the result to the destination register.\n\n"];
    
    [descStr appendFormat:@"UBFX Maximum Cycles: %@\n", GetInstructionCyclesString(&ubfxMinTest, 10000, NULL)];
    [descStr appendFormat:@"UBFX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&ubfxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUHADD16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Halving Add 16 performs two unsigned 16-bit integer additions, halves the results, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"UHADD16 Maximum Cycles: %@\n", GetInstructionCyclesString(&uhadd16MinTest, 10000, NULL)];
    [descStr appendFormat:@"UHADD16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uhadd16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUHADD8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Halving Add 8 performs four unsigned 8-bit integer additions, halves the results, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"UHADD8 Maximum Cycles: %@\n", GetInstructionCyclesString(&uhadd8MinTest, 10000, NULL)];
    [descStr appendFormat:@"UHADD8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uhadd8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUMAAL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Multiply Accumulate Accumulate Long multiplies two unsigned 32-bit values to produce a 64-bit value, adds two unsigned 32-bit values, and writes the 64-bit result to two registers.\n\n"];
    
    [descStr appendFormat:@"UMAAL Maximum Cycles: %@\n", GetInstructionCyclesString(&umaalMinTest, 10000, NULL)];
    [descStr appendFormat:@"UMAAL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&umaalMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUMLAL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Multiply Accumulate Long multiplies two unsigned32-bit values to produce a 64-bit value, and accumulates this with a 64-bit value.\nIn ARM code, the condition flags can optionally be updated based on the result. Use of this option adversely affects performance on many processor implementations.\n\n"];
    
    [descStr appendFormat:@"UMLAL Maximum Cycles: %@\n", GetInstructionCyclesString(&umlalMinTest, 10000, NULL)];
    [descStr appendFormat:@"UMLAL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&umlalMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUMULL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Multiply Long multiplies two 32-bit unsigned values to produce a 64-bit result.\nIn ARM code, the condition flags can optionally be updated based on the result. Use of this option adversely affects performance on many processor implementations.\n\n"];
    
    [descStr appendFormat:@"UMULL Maximum Cycles: %@\n", GetInstructionCyclesString(&umullMinTest, 10000, NULL)];
    [descStr appendFormat:@"UMULL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&umullMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUQADD16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturating Add 16 performs two unsigned 16-bit integer additions, saturates the results to the 16-bit unsigned integer range 0 ≤ x ≤ 2^16 – 1, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"UQADD16 Maximum Cycles: %@\n", GetInstructionCyclesString(&uqadd16MinTest, 10000, NULL)];
    [descStr appendFormat:@"UQADD16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uqadd16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUQADD8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturating Add 8 performs four unsigned 8-bit integer additions, saturates the results to the 8-bit unsigned integer range 0 ≤ x ≤ 2^8 – 1, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"UQADD8 Maximum Cycles: %@\n", GetInstructionCyclesString(&uqadd8MinTest, 10000, NULL)];
    [descStr appendFormat:@"UQADD8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uqadd8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUQASX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturating Add and Subtract with Exchange exchanges the two halfwords of the second operand, performs one unsigned 16-bit integer addition and one unsigned 16-bit subtraction, saturates the results to the 16-bit unsigned integer range 0 ≤ x ≤ 2^16 – 1, and writes the results to the destination register.\nThe pre-UAL syntax UQADDSUBX<c> is equivalent to UQASX<c>.\n\n"];
    
    [descStr appendFormat:@"UQASX Maximum Cycles: %@\n", GetInstructionCyclesString(&uqasxMinTest, 10000, NULL)];
    [descStr appendFormat:@"UQASX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uqasxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUQSAX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturating Subtract and Add with Exchange exchanges the two halfwords of the second operand, performs one unsigned 16-bit integer subtraction and one unsigned 16-bit addition, saturates the results to the 16-bit unsigned integer range 0 ≤ x ≤ 2^16 – 1, and writes the results to the destination register.\nThe pre-UAL syntax UQSUBADDX<c> is equivalent to UQSAX<c>.\n\n"];
    
    [descStr appendFormat:@"UQSAX Maximum Cycles: %@\n", GetInstructionCyclesString(&uqsaxMinTest, 10000, NULL)];
    [descStr appendFormat:@"UQSAX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uqsaxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUQSUB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturating Subtract 16 performs two unsigned 16-bit integer subtractions, saturates the results to the 16-bit unsigned integer range 0 ≤ x ≤ 2^16 – 1, and writes the results to the destination register.\n\n"];
    
    [descStr appendFormat:@"UQSUB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&uqsub16MinTest, 10000, NULL)];
    [descStr appendFormat:@"UQSUB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uqsub16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUQSUB8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturating Subtract 8 performs four unsigned 8-bit integer subtractions, saturates the results to the 8-bit unsigned integer range 0 ≤ x ≤ 2^8 – 1, and writes the results to the destination register.\n\n\n"];
    
    [descStr appendFormat:@"UQSUB8 Maximum Cycles: %@\n", GetInstructionCyclesString(&uqsub8MinTest, 10000, NULL)];
    [descStr appendFormat:@"UQSUB8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uqsub8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUSAD8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Sum of Absolute Differences performs four unsigned 8-bit subtractions, and adds the absolute values of the differences together.\n\n"];
    
    [descStr appendFormat:@"USAD8 Maximum Cycles: %@\n", GetInstructionCyclesString(&usad8MinTest, 10000, NULL)];
    [descStr appendFormat:@"USAD8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&usad8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUSADA8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Sum of Absolute Differences and Accumulate performs four unsigned 8-bit subtractions, and adds the absolute values of the differences to a 32-bit accumulate operand.\n\n"];
    
    [descStr appendFormat:@"USADA8 Maximum Cycles: %@\n", GetInstructionCyclesString(&usada8MinTest, 10000, NULL)];
    [descStr appendFormat:@"USADA8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&usada8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUSAT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturate saturates an optionally-shifted signed value to a selected unsigned range.\nThe Q flag is set if the operation saturates.\n\n"];
    
    [descStr appendFormat:@"USAT Maximum Cycles: %@\n", GetInstructionCyclesString(&usatMinTest, 10000, NULL)];
    [descStr appendFormat:@"USAT Minimum Cycles: %@\n\n", GetInstructionCyclesString(&usatMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUSAT16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Saturate 16 saturates two signed 16-bit values to a selected unsigned range.\nThe Q flag is set if the operation saturates.\n\n"];
    
    [descStr appendFormat:@"USAT16 Maximum Cycles: %@\n", GetInstructionCyclesString(&usat16MinTest, 10000, NULL)];
    [descStr appendFormat:@"USAT16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&usat16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUSAX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Subtract and Add with Exchange exchanges the two halfwords of the second operand, performs one unsigned 16-bit integer subtraction and one unsigned 16-bit addition, and writes the results to the destination register. It sets the APSR.GE bits according to the results.\nThe pre-UAL syntax USUBADDX<c> is equivalent to USAX<c>.\n\n"];
    
    [descStr appendFormat:@"USAX Maximum Cycles: %@\n", GetInstructionCyclesString(&usaxMinTest, 10000, NULL)];
    [descStr appendFormat:@"USAX Minimum Cycles: %@\n\n", GetInstructionCyclesString(&usaxMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUSUB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Subtract 16 performs two 16-bit unsigned integer subtractions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the subtractions.\n\n"];
    
    [descStr appendFormat:@"USUB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&usub16MinTest, 10000, NULL)];
    [descStr appendFormat:@"USUB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&usub16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUSUB8(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Subtract 8 performs four 8-bit unsigned integer subtractions, and writes the results to the destination register. It sets the APSR.GE bits according to the results of the subtractions.\n\n"];
    
    [descStr appendFormat:@"USUB8 Maximum Cycles: %@\n", GetInstructionCyclesString(&usub8MinTest, 10000, NULL)];
    [descStr appendFormat:@"USUB8 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&usub8MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUXTAB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Extend and Add Byte extracts an 8-bit value from a register, zero-extends it to 32 bits, adds the result to the value in another register, and writes the final result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit value.\nAn assembler can permit ROR #0 to mean the same thing as omitting the rotation, possibly with restrictions on the permitted encodings, but this is not standard UAL and must not be used for disassembly.\n\n"];
    
    [descStr appendFormat:@"UXTAB Maximum Cycles: %@\n", GetInstructionCyclesString(&uxtabMinTest, 10000, NULL)];
    [descStr appendFormat:@"UXTAB Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uxtabMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUXTAB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Extend and Add Byte 16 extracts two 8-bit values from a register, zero-extends them to 16 bits each, adds the results to two 16-bit values from another register, and writes the final results to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit values.\nAn assembler can permit ROR #0 to mean the same thing as omitting the rotation, possibly with restrictions on the permitted encodings, but this is not standard UAL and must not be used for disassembly.\n\n"];
    
    [descStr appendFormat:@"UXTAB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&uxtab16MinTest, 10000, NULL)];
    [descStr appendFormat:@"UXTAB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uxtab16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUXTAH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Extend and Add Halfword extracts a 16-bit value from a register, zero-extends it to 32 bits, adds the result to a value from another register, and writes the final result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 16-bit value.\nAn assembler can permit ROR #0 to mean the same thing as omitting the rotation, possibly with restrictions on the permitted encodings, but this is not standard UAL and must not be used for disassembly.\n\n"];
    
    [descStr appendFormat:@"UXTAH Maximum Cycles: %@\n", GetInstructionCyclesString(&uxtahMinTest, 10000, NULL)];
    [descStr appendFormat:@"UXTAH Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uxtahMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUXTB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Extend Byte extracts an 8-bit value from a register, zero-extends it to 32 bits, and writes the result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit value.\nAn assembler can permit ROR #0 to mean the same thing as omitting the rotation, possibly with restrictions on the permitted encodings, but this is not standard UAL and must not be used for disassembly.\n\n"];
    
    [descStr appendFormat:@"UXTB Maximum Cycles: %@\n", GetInstructionCyclesString(&uxtbMinTest, 10000, NULL)];
    [descStr appendFormat:@"UXTB Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uxtbMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUXTB16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Extend Byte 16 extracts two 8-bit values from a register, zero-extends them to 16 bits each, and writes the results to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 8-bit values.\nAn assembler can permit ROR #0 to mean the same thing as omitting the rotation, possibly with restrictions on the permitted encodings, but this is not standard UAL and must not be used for disassembly.\n\n"];
    
    [descStr appendFormat:@"UXTB16 Maximum Cycles: %@\n", GetInstructionCyclesString(&uxtb16MinTest, 10000, NULL)];
    [descStr appendFormat:@"UXTB16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uxtb16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doUXTH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Unsigned Extend Halfword extracts a 16-bit value from a register, zero-extends it to 32 bits, and writes the result to the destination register. You can specify a rotation by 0, 8, 16, or 24 bits before extracting the 16-bit value.\nAn assembler can permit ROR #0 to mean the same thing as omitting the rotation, possibly with restrictions on the permitted encodings, but this is not standard UAL and must not be used for disassembly.\n\n"];
    
    [descStr appendFormat:@"UXTH Maximum Cycles: %@\n", GetInstructionCyclesString(&uxthMinTest, 10000, NULL)];
    [descStr appendFormat:@"UXTH Minimum Cycles: %@\n\n", GetInstructionCyclesString(&uxthMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* (* const gpInstArray[])(ZennyInstViewController*) = {
    &doADC,
    &doADD,
    &doADDThumbImm,
    &doADDThumbReg,
    &doAND,
    &doASR,
    &doBFC,
    &doBFI,
    &doBIC,
    &doCBNZ,
    &doCLZ,
    &doCMN,
    &doCMP,
    &doEOR,
    &doLSL,
    &doLSR,
    &doMLA,
    &doMLS,
    &doMOV,
    &doMOVT,
    &doMUL,
    &doMVN,
    &doORN,
    &doORR,
    &doPKH,
    &doQADD,
    &doQADD16,
    &doQADD8,
    &doQASX,
    &doQDADD,
    &doQDSUB,
    &doQSAX,
    &doQSUB,
    &doQSUB16,
    &doQSUB8,
    &doRBIT,
    &doREV,
    &doREV16,
    &doREVSH,
    &doROR,
    &doRRX,
    &doRSB,
    &doRSC,
    &doSADD16,
    &doSADD8,
    &doSASX,
    &doSBC,
    &doSBFX,
    &doSEL,
    &SHADD16,
    &SHADD8,
    &SHASX,
    &doSHSAX,
    &doSHSUB16,
    &doSHSUB8,
    &doSMLA,
    &doSMLAD,
    &doSMLAL,
    &doSMLALxy,
    &doSMLALD,
    &doSMLALW,
    &doSMLSD,
    &doSMLSLD,
    &doSMMLA,
    &doSMMLS,
    &doSMMUL,
    &doSMUAD,
    &doSMUL,
    &doSMULL,
    &doSMULW,
    &doSMUSD,
    &doSSAT,
    &doSSAT16,
    &doSSAX,
    &doSSUB16,
    &doSSUB8,
    &doSUB,
    &doSUBThumbImm,
    &doSXTAB,
    &doSXTAB16,
    &doSXTAH,
    &doSXTB,
    &doSXTB16,
    &doSXTH,
    &doTEQ,
    &doTST,
    &doUADD16,
    &doUADD8,
    &doUASX,
    &doUBFX,
    &doUHADD16,
    &doUHADD8,
    &doUMAAL,
    &doUMLAL,
    &doUMULL,
    &doUQADD16,
    &doUQADD8,
    &doUQASX,
    &doUQSAX,
    &doUQSUB16,
    &doUQSUB8,
    &doUSAD8,
    &doUSADA8,
    &doUSAT,
    &doUSAT16,
    &doUSAX,
    &doUSUB16,
    &doUSUB8,
    &doUXTAB,
    &doUXTAB16,
    &doUXTAH,
    &doUXTB,
    &doUXTB16,
    &doUXTH
};


#pragma mark - NEON set

static NSString* doVABA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Absolute Difference and Accumulate {Long} subtracts the elements of one vector from the corresponding elements of another vector, and accumulates the absolute values of the results into the elements of the destination vector.\nOperand and result elements are either all integers of the same length, or optionally the results can be double the length of the operands.\n\n"];
    
    [descStr appendFormat:@"VABA (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabaS32MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABA (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabaS32MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VABAL (int2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabalS32MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABAL (int2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabalS32MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVABD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Absolute Difference {Long} subtracts the elements of one vector from the corresponding elements of another vector, and places the absolute values of the results in the elements of the destination vector.\nOperand and result elements are either all integers of the same length, or optionally the results can be double the length of the operands.\n\n"];
    
    [descStr appendFormat:@"VABD (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabdI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABD (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabdI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VABD (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabdF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABD (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabdF4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VABDL (int2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabdlI2MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABDL (int2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabdlI2MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVABS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Absolute takes the absolute value of each element in a vector, and places the results in a second vector. The floating-point version only clears the sign bit.\n\n"];
    
    [descStr appendFormat:@"VABS (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabsFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VABS (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabsFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VABS (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabdI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABS (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabsDMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VABS (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabsI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABS (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabsI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VABS (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vabsF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VABS (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vabsF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVACGE(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VACGE (Vector Absolute Compare Greater Than or Equal) and VACGT (Vector Absolute Compare Greater Than) take the absolute value of each element in a vector, and compare it with the absolute value of the corresponding element of a second vector. If the condition is true, the corresponding element in the destination vector is set to all ones. Otherwise, it is set to all zeros.\nVACLE (Vector Absolute Compare Less Than or Equal) is a pseudo-instruction, equivalent to a VACGE instruction with the operands reversed. Disassembly produces the VACGE instruction.\nVACLT (Vector Absolute Compare Less Than) is a pseudo-instruction, equivalent to a VACGT instruction with the operands reversed. Disassembly produces the VACGT instruction.\nThe operands and result can be quadword or doubleword vectors. They must all be the same size.\nThe operand vector elements must be 32-bit floating-point numbers.\nThe result vector elements are 32-bit bitfields.\n\n"];
    
    [descStr appendFormat:@"VACGE (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vacgeF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VACGE (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vacgeF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Add adds corresponding elements in two vectors, and places the results in the destination vector.\n\n"];
    
    [descStr appendFormat:@"VADD (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VADD (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VADD (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VADD (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddDMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VADD (long2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddL2MinTest, 10000, NULL)];
    [descStr appendFormat:@"VADD (long2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddL2MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VADD (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VADD (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VADD (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VADD (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVADDHN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Add and Narrow, returning High Half adds corresponding elements in two quadword vectors, and places the most significant half of each result in a doubleword vector. The results are truncated.\nThe operand elements can be 16-bit, 32-bit, or 64-bit integers. There is no distinction between signed and unsigned integers.\n\n"];
    
    [descStr appendFormat:@"VADDHN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddhnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VADDHN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddhnI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VADDHN (long2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddhnL2MinTest, 10000, NULL)];
    [descStr appendFormat:@"VADDHN (long2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddhnL2MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVADDL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VADDL (Vector Add Long) adds corresponding elements in two doubleword vectors, and places the results in a quadword vector. Before adding, it sign-extends or zero-extends the elements of both operands.\nVADDW (Vector Add Wide) adds corresponding elements in one quadword and one doubleword vector, and places the results in a quadword vector. Before adding, it sign-extends or zero-extends the elements of the doubleword operand.\n\n"];
    
    [descStr appendFormat:@"VADDL (int2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddlI2MinTest, 10000, NULL)];
    [descStr appendFormat:@"VADDL (int2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddlI2MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VADDW (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vaddwI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VADDW (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vaddwI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVAND(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction performs a bitwise AND operation between two registers, and places the result in the destination register.\n\n"];
    
    [descStr appendFormat:@"VAND Maximum Cycles: %@\n", GetInstructionCyclesString(&vandI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VAND Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vandI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVBIC(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Description:\nVector Bitwise Bit Clear (immediate) performs a bitwise AND between a register value and the complement of an immediate value, and returns the result into the destination vector.\nVAND can be used with a range of constants that are the bitwise inverse of the available constants for VBIC. This is assembled as the equivalent VBIC instruction. Disassembly produces the VBIC form.\nVector Bitwise Bit Clear (register) performs a bitwise AND between a register value and the complement of a register value, and places the result in the destination register.\n\n"];
    
    [descStr appendFormat:@"VBIC (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&vbicImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VBIC (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vbicImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VBIC (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vbicI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VBIC (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vbicI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVBIF(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VBIF (Vector Bitwise Insert if False), VBIT (Vector Bitwise Insert if True), and VBSL (Vector Bitwise Select) perform bitwise selection under the control of a mask, and place the results in the destination register. The registers can be either quadword or doubleword, and must all be the same size.\n\n"];
    
    [descStr appendFormat:@"VBIF Maximum Cycles: %@\n", GetInstructionCyclesString(&vbifMinTest, 10000, NULL)];
    [descStr appendFormat:@"VBIF Minimum Cycles: %@\n\n",GetInstructionCyclesString(&vbifMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VBIT Maximum Cycles: %@\n", GetInstructionCyclesString(&vbitMinTest, 10000, NULL)];
    [descStr appendFormat:@"VBIT Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vbitMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VBSL Maximum Cycles: %@\n", GetInstructionCyclesString(&vbslMinTest, 10000, NULL)];
    [descStr appendFormat:@"VBSL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vbslMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCEQ(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VCEQ (Vector Compare Equal) takes each element in a vector, and compares it with the corresponding element of a second vector. If they are equal, the corresponding element in the destination vector is set to all ones. Otherwise, it is set to all zeros.\n\n"];
    
    [descStr appendFormat:@"VCEQ (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vceqI4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCEQ (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vceqI4RegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCEQ (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vceqF4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCEQ (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vceqF4RegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCEQ (Immediate #0, int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vceqI4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCEQ (Immediate #0, int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vceqI4ImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCEQ (Immediate #0, float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vceqF4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCEQ (Immediate #0, float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vceqF4ImmMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCGE(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VCGE (Vector Compare Greater Than or Equal) takes each element in a vector, and compares it with the corresponding element of a second vector. If the first is greater than or equal to the second, the corresponding element in the destination vector is set to all ones. Otherwise, it is set to all zeros.\n\n"];
    
    [descStr appendFormat:@"VCGE (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgeI4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGE (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgeI4RegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCGE (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgeF4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGE (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgeF4RegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCGE (Immediate #0, int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgeI4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGE (Immediate #0, int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgeI4ImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCGE (Immediate #0, float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgeF4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGE (Immediate #0, float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgeF4ImmMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCGT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VCGT (Vector Compare Greater Than) takes each element in a vector, and compares it with the corresponding element of a second vector. If the first is greater than the second, the corresponding element in the destination vector is set to all ones. Otherwise, it is set to all zeros.\n\n"];
    
    [descStr appendFormat:@"VCGT (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgtI4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGT (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgtI4RegMaxTest, 10000, NULL)];

    [descStr appendFormat:@"VCGT (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgtF4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGT (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgtF4RegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCGT (Immediate #0, int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgtI4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGT (Immediate #0, int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgtI4ImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCGT (Immediate #0, float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcgtF4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCGT (Immediate #0, float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcgtF4ImmMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCLE(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VCLE is a pseudo-instruction, equivalent to a VCGE instruction with the operands reversed.\nVCLE #0 (Vector Compare Less Than or Equal to Zero) take each element in a vector, and compares it with zero. If it is less than or equal to zero, the corresponding element in the destination vector is set to all ones. Otherwise, it is set to all zeros.\n\n"];
    
    [descStr appendFormat:@"VCLE (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcleI4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCLE (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcleI4RegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCLE (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcleF4RegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCLE (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcleF4RegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCLE (Immediate #0, int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcleI4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCLE (Immediate #0, int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcleI4ImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCLE (Immediate #0, float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcleF4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCLE (Immediate #0, float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcleF4ImmMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCLS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Count Leading Sign Bits counts the number of consecutive bits following the topmost bit, that are the same as the topmost bit, in each element in a vector, and places the results in a second vector. The count does not include the topmost bit itself.\nThe operand vector elements can be any one of 8-bit, 16-bit, or 32-bit signed integers.\nThe result vector elements are the same data type as the operand vector elements.\n\n"];
    
    [descStr appendFormat:@"VCLS (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vclsI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VCLS (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vclsI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCLZ(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Count Leading Zeros counts the number of consecutive zeros, starting from the most significant bit, in each element in a vector, and places the results in a second vector.\nThe operand vector elements can be any one of 8-bit, 16-bit, or 32-bit integers. There is no distinction between signed and unsigned integers.\nThe result vector elements are the same data type as the operand vector elements.\n\n"];
    
    [descStr appendFormat:@"VCLZ (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vclzI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VCLZ (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vclzI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCMP(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction compares two floating-point registers, or one floating-point register and zero. It writes the result to the FPSCR flags. These are normally transferred to the ARM flags by a subsequent VMRS instruction.\nIt can optionally raise an Invalid Operation exception if either operand is any type of NaN. It always raises an Invalid Operation exception if either operand is a signaling NaN.\n\n"];
    
    [descStr appendFormat:@"VCMP (float, immediate #0.0) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcmpImmFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCMP (float, immediate #0.0) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcmpImmFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCMP (double, immediate #0.0) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcmpImmDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCMP (double, immediate #0.0) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcmpImmDMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCMP (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcmpRegFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCMP (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcmpRegFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCMP (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcmpRegDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCMP (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcmpRegDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCNT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction counts the number of bits that are one in each element in a vector, and places the results in a second vector.\nThe operand vector elements must be 8-bit bitfields.\nThe result vector elements are 8-bit integers.\n\n"];
    
    [descStr appendFormat:@"VCNT Maximum Cycles: %@\n", GetInstructionCyclesString(&vcntMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCNT Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcntMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCVT1(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction converts each element in a vector from floating-point to integer, or from integer to floating-point, and places the results in a second vector.\nThe vector elements must be 32-bit floating-point numbers, or 32-bit integers. Signed and unsigned integers are distinct.\nThe floating-point to integer operation uses the Round towards Zero rounding mode. The integer to floating-point operation uses the Round to Nearest rounding mode.\n\n"];
    
    [descStr appendFormat:@"VCVT (float4 -> int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtI4F4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (float4 -> int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtI4F4MaxTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (int4 -> float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtF4I4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (int4 -> float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtF4I4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCVT2(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"These instructions convert a value in a register from floating-point to a 32-bit integer, or from a 32-bit integer to floating-point, and place the result in a second register.\nThe floating-point to integer operation normally uses the Round towards Zero rounding mode, but can optionally use the rounding mode specified by the FPSCR. The integer to floating-point operation uses the rounding mode specified by the FPSCR.\n\n"];
    
    [descStr appendFormat:@"VCVT (float -> int) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtIFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (float -> int) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtIFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (double -> int) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtIDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (double -> int) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtIDMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (int -> float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtFIMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (int -> float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtFIMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (int -> double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtDIMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (int -> double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtDIMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCVT3(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction converts each element in a vector from floating-point to fixed-point, or from fixed-point to floating-point, and places the results in a second vector.\nThe vector elements must be 32-bit floating-point numbers, or 32-bit integers. Signed and unsigned integers are distinct.\nThe floating-point to fixed-point operation uses the Round towards Zero rounding mode. The fixed-point to floating-point operation uses the Round to Nearest rounding mode.\n\n"];
    
    [descStr appendFormat:@"VCVT (float4 -> int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtI4F4FixedMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (float4 -> int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtI4F4FixedMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (int4 -> float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtF4I4FixedMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (int4 -> float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtF4I4FixedMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCVT4(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction converts a value in a register from floating-point to fixed-point, or from fixed-point to floating-point. You can specify the fixed-point value as either signed or unsigned.\nThe floating-point value can be single-precision or double-precision.\nThe fixed-point value can be 16-bit or 32-bit. Conversions from fixed-point values take their operand from the low-order bits of the source register and ignore any remaining bits. Signed conversions to fixed-point values sign-extend the result value to the destination register width. Unsigned conversions to fixed-point values zero-extend the result value to the destination register width.\nThe floating-point to fixed-point operation uses the Round towards Zero rounding mode. The fixed-point to floating-point operation uses the Round to Nearest rounding mode.\n\n"];
    
    [descStr appendFormat:@"VCVT (float -> int) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtIFFixedMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (float -> int) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtIFFixedMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (double -> int) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtIDFixedMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (double -> int) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtIDFixedMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (int -> float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtFIFixedMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (int -> float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtFIFixedMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (int -> double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtDIFixedMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (int -> double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtDIFixedMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCVT5(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction does one of the following:\nconverts the value in a double-precision register to single-precision and writes the result to a single-precision register;\nconverts the value in a single-precision register to double-precision and writes the result to a double-precision register.\n\n"];
    
    [descStr appendFormat:@"VCVT (double -> float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtFDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (double -> float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtFDMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (float -> double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtDFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (float -> double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtDFMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVCVT6(ZennyInstViewController* controller)
{
    // UI display
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction converts each element in a vector from single-precision to half-precision floating-point or from half-precision to single-precision, and places the results in a second vector.\n\n"];

#if !defined(FP_FAST_FMA)

    [descStr appendString:@"The current CPU does not support FP16 feature!"];
    
#else
    
    [descStr appendFormat:@"VCVT (half -> float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtf16Tof32MaxTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (half -> float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtf16Tof32MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVT (float -> half) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtf32Tof16MaxTest, 10000, NULL)];
    [descStr appendFormat:@"VCVT (float -> half) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtf32Tof16MinTest, 10000, NULL)];

#endif
    
    return descStr;
}

static NSString* doVCVT7(ZennyInstViewController* controller)
{
    // UI display
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Convert Bottom and Vector Convert Top do one of the following:\nconvert the half-precision value in the top or bottom half of a single-precision register to single-precision and write the result to a single-precision register\nconvert the value in a single-precision register to half-precision and write the result into the top or bottom half of a single-precision register, preserving the other half of the target register.\n\n"];
    
#if !defined(FP_FAST_FMA)
    
    [descStr appendString:@"The current CPU does not support FP16 feature!"];
    
#else
    
    [descStr appendFormat:@"VCVTB (half -> float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtbf16Tof32MaxTest, 10000, NULL)];
    [descStr appendFormat:@"VCVTB (half -> float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtbf16Tof32MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VCVTB (float -> half) Maximum Cycles: %@\n", GetInstructionCyclesString(&vcvtbf32Tof16MaxTest, 10000, NULL)];
    [descStr appendFormat:@"VCVTB (float -> half) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vcvtbf32Tof16MinTest, 10000, NULL)];
    
#endif
    
    return descStr;
}

static NSString* doVDIV(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction divides one floating-point value by another floating-point value and writes the result to a third floating-point register.\n\n"];
    
    [descStr appendFormat:@"VDIV (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vdivFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VDIV (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vdivFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VDIV (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vdivDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VDIV (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vdivDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVDUP(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction divides one floating-point value by another floating-point value and writes the result to a third floating-point register.\n\n"];
    
    [descStr appendFormat:@"VDUP (scalar) Maximum Cycles: %@\n", GetInstructionCyclesString(&vdupScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VDUP (scalar) Minimum Cycles: %@\n", GetInstructionCyclesString(&vdupScalarMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VDUP (ARM core register) Maximum Cycles: %@\n", GetInstructionCyclesString(&vdupRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VDUP (ARM core register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vdupRegMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVEOR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Bitwise Exclusive OR performs a bitwise Exclusive OR operation between two registers, and places the result in the destination register. The operand and result registers can be quadword or doubleword. They must all be the same size.\n\n"];
    
    [descStr appendFormat:@"VEOR Maximum Cycles: %@\n", GetInstructionCyclesString(&veorMinTest, 10000, NULL)];
    [descStr appendFormat:@"VEOR Minimum Cycles: %@\n\n", GetInstructionCyclesString(&veorMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVEXT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Extract extracts elements from the bottom end of the second operand vector and the top end of the first, concatenates them and places the result in the destination vector.\nThe elements of the vectors are treated as being 8-bit bitfields. There is no distinction between data types.\n\n"];
    
    [descStr appendFormat:@"VEXT Maximum Cycles: %@\n", GetInstructionCyclesString(&vextMinTest, 10000, NULL)];
    [descStr appendFormat:@"VEXT Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vextMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVFMA(ZennyInstViewController* controller)
{
    // UI display
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Fused Multiply Accumulate multiplies corresponding elements of two vectors, and accumulates the results into the elements of the destination vector. The instruction does not round the result of the multiply before the accumulation.\n\n"];
    
#if !defined(FP_FAST_FMA)
    
    [descStr appendString:@"The current CPU does not support FMA feature!"];
    
#else
    
    [descStr appendFormat:@"VFMA (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfmaF4MaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFMA (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfmaF4MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VFMA (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfmaDMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFMA (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfmaDMinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VFMA (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfmaFMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFMA (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfmaFMinTest, 10000, NULL)];
    
#endif
    
    return descStr;
}

static NSString* doVFMS(ZennyInstViewController* controller)
{
    // UI display
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Fused Multiply Subtract negates the elements of one vector and multiplies them with the corresponding elements of another vector, adds the products to the corresponding elements of the destination vector, and places the results in the destination vector. The instruction does not round the result of the multiply before the addition.\n\n"];
    
#if !defined(FP_FAST_FMA)
    
    [descStr appendString:@"The current CPU does not support FMA feature!"];

#else
    
    [descStr appendFormat:@"VFMS (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfmsF4MaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFMS (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfmsF4MinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VFMS (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfmsDMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFMS (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfmsDMinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VFMS (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfmsFMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFMS (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfmsFMinTest, 10000, NULL)];
    
#endif
    
    return descStr;
}

static NSString* doVFNMA(ZennyInstViewController* controller)
{
    // UI display
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Fused Negate Multiply Accumulate negates one floating-point register value and multiplies it by another floating-point register value, adds the negation of the floating-point value in the destination register to the product, and writes the result back to the destination register. The instruction does not round the result of the multiply before the addition.\n\n"];
    
#if !defined(FP_FAST_FMA)
    
    [descStr appendString:@"The current CPU does not support FMA feature!"];
    
#else
    
    [descStr appendFormat:@"VFNMA (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfnmaDMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFNMA (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfnmaDMinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VFNMA (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfnmaFMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFNMA (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfnmaFMinTest, 10000, NULL)];
    
#endif
    
    return descStr;
}

static NSString* doVFNMS(ZennyInstViewController* controller)
{
    // UI display
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Fused Negate Multiply Subtract multiplies together two floating-point register values, adds the negation of the floating-point value in the destination register to the product, and writes the result back to the destination register. The instruction does not round the result of the multiply before the addition.\n\n"];
    
#if !defined(FP_FAST_FMA)
    
    [descStr appendString:@"The current CPU does not support FMA feature!"];
    
#else
    
    [descStr appendFormat:@"VFNMS (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfnmsDMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFNMS (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfnmsDMinTest, 10000, NULL)];
    
    [descStr appendFormat:@"VFNMS (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vfnmsFMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VFNMS (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vfnmsFMinTest, 10000, NULL)];
    
#endif
    
    return descStr;
}

static NSString* doVHADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Halving Add adds corresponding elements in two vectors of integers, shifts each result right one bit, and places the final results in the destination vector. The results of the halving operations are truncated.\n\n"];
    
    [descStr appendFormat:@"VHADD (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vhaddI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VHADD (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vhaddI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVHSUB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Halving Subtract subtracts the elements of the second operand from the corresponding elements of the first operand, shifts each result right one bit, and places the final results in the destination vector. The results of the halving operations are truncated.\n\n"];
    
    [descStr appendFormat:@"VHSUB (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vhsubI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VHSUB (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vhsubI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMAX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Maximum compares corresponding elements in two vectors, and copies the larger of each pair into the corresponding element in the destination vector.\n\n"];
    
    [descStr appendFormat:@"VMAX (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmaxI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMAX (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmaxI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMAX (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmaxF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMAX (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmaxF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMIN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Minimum compares corresponding elements in two vectors, and copies the smaller of each pair into the corresponding element in the destination vector.\n\n"];
    
    [descStr appendFormat:@"VMIN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vminI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMIN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vminI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMIN (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vminF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMIN (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vminF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Accumulate.\n\n"];
    
    [descStr appendFormat:@"VMLA (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlaI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLA (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlaI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLA (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlaF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLA (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlaF4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLA (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlaFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLA (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlaFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLA (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlaDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLA (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlaDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLAL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Accumulate Long.\n\n"];
    
    [descStr appendFormat:@"VMLAL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlalI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLAL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlalI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Subtract.\n\n"];
    
    [descStr appendFormat:@"VMLS (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlsI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLS (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlsI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLS (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlsF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLS (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlsF4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLS (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlsFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLS (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlsFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLS (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlsDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLS (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlsDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLSL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Subtract Long.\n\n"];
    
    [descStr appendFormat:@"VMLSL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlslI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLSL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlslI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLA_scalar(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Accumulate\n\n"];
    
    [descStr appendFormat:@"VMLA (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlaI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLA (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlaI4ScalarMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLA (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlaF4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLA (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlaF4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLAL_scalar(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Accumulate Long.\n\n"];
    
    [descStr appendFormat:@"VMLAL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlalI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLAL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlalI4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLS_scalar(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Subtract\n\n"];
    
    [descStr appendFormat:@"VMLS (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlsI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLS (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlsI4ScalarMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMLS (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlsF4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLS (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlsF4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMLSL_scalar(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Subtract Long.\n\n"];
    
    [descStr appendFormat:@"VMLSL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmlslI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMLSL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmlslI4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOVImm(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction places an immediate constant into every element of the destination register.\n\n"];
    
    [descStr appendFormat:@"VMOV (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovI4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovI4ImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovF4ImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovF4ImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovFImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovFImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovDImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovDImmMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOV(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction copies the contents of one register to another.\n\n"];
    
    [descStr appendFormat:@"VMOV (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovF4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOVScalarReg(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction copies a byte, halfword, or word from an ARM core register into an Advanced SIMD scalar.This instruction copies a byte, halfword, or word from an Advanced SIMD scalar to an ARM core register. Bytes and halfwords can be either zero-extended or sign-extended.\n\n"];
    
    [descStr appendFormat:@"VMOV (Core Register -> Scalar) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovScalarRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (Core Register -> Scalar) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovScalarRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (Scalar -> Core Register) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovRegScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (Scalar -> Core Register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovRegScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOVSReg(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction transfers the contents of a single-precision VFP register to an ARM core register, or the contents of an ARM core register to a single-precision VFP register.\n\n"];
    
    [descStr appendFormat:@"VMOV (Core Register -> float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovSRegMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (Core Register -> float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovSRegMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (float -> Core Register) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovRegSMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (float -> Core Register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovRegSMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOVSRegDual(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction transfers the contents of two consecutively numbered single-precision VFP registers to two ARM core registers, or the contents of two ARM core registers to a pair of single-precision VFP registers. The ARM core registers do not have to be contiguous.\n\n"];
    
    [descStr appendFormat:@"VMOV (Core Register -> float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovSRegDualMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (Core Register -> float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovSRegDualMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (float -> Core Register) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovRegSDualMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (float -> Core Register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovRegSDualMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOVDRegDual(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction copies two words from two ARM core registers into a doubleword extension register, or from a doubleword extension register to two ARM core registers.\n\n"];
    
    [descStr appendFormat:@"VMOV (Core Register -> double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovDRegDualMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (Core Register -> double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovDRegDualMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMOV (double -> Core Register) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovRegDDualMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOV (double -> Core Register) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovRegDDualMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOVL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Move Long takes each element in a doubleword vector, sign or zero-extends them to twice their original length, and places the results in a quadword vector.\n\n"];
    
    [descStr appendFormat:@"VMOVL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovlI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOVL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovlI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMOVN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Move and Narrow copies the least significant half of each element of a quadword vector into the corresponding elements of a doubleword vector.\nThe operand vector elements can be any one of 16-bit, 32-bit, or 64-bit integers. There is no distinction between signed and unsigned integers.\n\n"];
    
    [descStr appendFormat:@"VMOVN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmovnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMOVN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmovnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMUL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply multiplies corresponding elements in two vectors.\n\n"];
    
    [descStr appendFormat:@"VMUL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmulI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMUL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmulI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMUL (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmulF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMUL (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmulF4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMUL (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmulFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMUL (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmulFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMUL (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmulDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMUL (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmulDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMULL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Long does the same thing, but with destination vector elements that are twice as long as the elements that are multiplied.\n\n"];
    
    [descStr appendFormat:@"VMULL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmullI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VMULL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmullI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMULScalar(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply multiplies each element in a vector by a scalar, and places the results in a second vector.\n\n"];
    
    [descStr appendFormat:@"VMUL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmulI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMUL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmulI4ScalarMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMUL (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmulF4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMUL (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmulF4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMULLScalar(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Multiply Long does the same thing, but with destination vector elements that are twice as long as the elements that are multiplied.\n\n"];
    
    [descStr appendFormat:@"VMULL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmullI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMULL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmullI4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVMVN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Bitwise NOT places the bitwise inverse of the second operand into every element of the destination register. \n\n"];
    
    [descStr appendFormat:@"VMVN (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&vmvnImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMVN (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmvnImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VMVN Maximum Cycles: %@\n", GetInstructionCyclesString(&vmvnMinTest, 10000, NULL)];
    [descStr appendFormat:@"VMVN Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vmvnMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVNEG(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Negate negates each element in a vector, and places the results in a second vector. The floating-point version only inverts the sign bit.\n\n"];
    
    [descStr appendFormat:@"VNEG (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnegI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VNEG (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnegI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VNEG (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnegF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VNEG (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnegF4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VNEG (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnegFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNEG (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnegFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VNEG (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnegDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNEG (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnegDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVNMLA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VNMLA multiplies together two floating-point register values, adds the negation of the floating-point value in the destination register to the negation of the product, and writes the result back to the destination register.\n\n"];
    
    [descStr appendFormat:@"VNMLA (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnmlaSMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNMLA (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnmlaSMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VNMLA (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnmlaDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNMLA (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnmlaDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVNMLS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VNMLS multiplies together two floating-point register values, adds the negation of the floating-point value in the destination register to the product, and writes the result back to the destination register.\n\n"];
    
    [descStr appendFormat:@"VNMLS (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnmlsSMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNMLS (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnmlsSMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VNMLS (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnmlsDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNMLS (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnmlsDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVNMUL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VNMUL multiplies together two floating-point register values, and writes the negation of the result to the destination register.\n\n"];
    
    [descStr appendFormat:@"VNMUL (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnmulSMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNMUL (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnmulSMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VNMUL (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vnmulDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VNMUL (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vnmulDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVORN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction performs a bitwise OR NOT operation between two registers, and places the result in the destination register. The operand and result registers can be quadword or doubleword. They must all be the same size.\n\n"];
    
    [descStr appendFormat:@"VORN Maximum Cycles: %@\n", GetInstructionCyclesString(&vornMinTest, 10000, NULL)];
    [descStr appendFormat:@"VORN Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vornMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVORR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction takes the contents of the destination vector, performs a bitwise OR with an immediate constant, and returns the result into the destination vector. \n\n"];
    
    [descStr appendFormat:@"VORR (immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&vorrImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VORR (immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vorrImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VORR Maximum Cycles: %@\n", GetInstructionCyclesString(&vorrMinTest, 10000, NULL)];
    [descStr appendFormat:@"VORR Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vorrMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVPADAL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Pairwise Add and Accumulate Long adds adjacent pairs of elements of a vector, and accumulates the results into the elements of the destination vector.\nThe vectors can be doubleword or quadword. The operand elements can be 8-bit, 16-bit, or 32-bit integers. The result elements are twice the length of the operand elements.\n\n"];
    
    [descStr appendFormat:@"VPADAL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpadalI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPADAL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpadalI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVPADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Pairwise Add adds adjacent pairs of elements of two vectors, and places the results in the destination vector.\n\n"];
    
    [descStr appendFormat:@"VPADD (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpaddI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPADD (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpaddI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VPADD (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpaddF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPADD (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpaddF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVPADDL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Pairwise Add Long adds adjacent pairs of elements of two vectors, and places the results in the destination vector.\nThe vectors can be doubleword or quadword. The operand elements can be 8-bit, 16-bit, or 32-bit integers. The result elements are twice the length of the operand elements.\n\n"];
    
    [descStr appendFormat:@"VPADDL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpaddlI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPADDL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpaddlI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVPMAX(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Pairwise Maximum compares adjacent pairs of elements in two doubleword vectors, and copies the larger of each pair into the corresponding element in the destination doubleword vector.\n\n"];
    
    [descStr appendFormat:@"VPMAX (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpmaxI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPMAX (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpmaxI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VPMAX (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpmaxF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPMAX (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpmaxF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVPMIN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Pairwise Minimum compares adjacent pairs of elements in two doubleword vectors, and copies the smaller of each pair into the corresponding element in the destination doubleword vector.\n\n"];
    
    [descStr appendFormat:@"VPMIN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpminI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPMIN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpminI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VPMIN (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vpminF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VPMIN (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vpminF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQABS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Absolute takes the absolute value of each element in a vector, and places the results in the destination vector.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQABS (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqabsI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQABS (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqabsI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Add adds the values of corresponding elements of two vectors, and places the results in the destination vector.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs. \n\n"];
    
    [descStr appendFormat:@"VQADD (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqaddI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQADD (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqaddI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQDMLAL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Doubling Multiply Accumulate Long multiplies corresponding elements in two doubleword vectors, doubles the products, and accumulates the results into the elements of a quadword vector.\n\n"];
    
    [descStr appendFormat:@"VQDMLAL (int2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmlalI2MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMLAL (int2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmlalI2MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VQDMLAL (int2, scalar) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmlalI2ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMLAL (int2, scalar) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmlalI2ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQDMLSL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Doubling Multiply Subtract Long multiplies corresponding elements in two doubleword vectors, subtracts double the products from corresponding elements of a quadword vector, and places the results in the same quadword vector.\n\n"];
    
    [descStr appendFormat:@"VQDMLSL (int2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmlslI2MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMLSL (int2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmlslI2MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VQDMLSL (int2, scalar) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmlslI2ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMLSL (int2, scalar) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmlslI2ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQDMULH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Doubling Multiply Returning High Half multiplies corresponding elements in two vectors, doubles the results, and places the most significant half of the final results in the destination vector. The results are truncated.\nThe second operand can be a scalar instead of a vector.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQDMULH (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmulhI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMULH (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmulhI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VQDMULH (int4, scalar) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmulhI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMULH (int4, scalar) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmulhI4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQDMULL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Doubling Multiply Long multiplies corresponding elements in two doubleword vectors, doubles the products, and places the results in a quadword vector.\nThe second operand can be a scalar instead of a vector.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQDMULL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmullI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMULL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmullI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VQDMULL (int4, scalar) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqdmullI4ScalarMinTest, 10000, NULL)];
    [descStr appendFormat:@"VQDMULL (int4, scalar) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqdmullI4ScalarMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQMOVN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Move and Narrow copies each element of the operand vector to the corresponding element of the destination vector.\nThe result is a doubleword vector. The elements are half the length of the operand vector elements. If the operand is unsigned, the results are unsigned. If the operand is signed, the results can be signed or unsigned.\n\n"];
    
    [descStr appendFormat:@"VQMOVN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqmovnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQMOVN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqmovnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQNEG(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Negate negates each element in a vector, and places the results in the destination vector.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQNEG (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqnegI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQNEG (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqnegI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQRDMULH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Rounding Doubling Multiply Returning High Half multiplies corresponding elements in two vectors, doubles the results, and places the most significant half of the final results in the destination vector. The results are rounded.\nThe second operand can be a scalar instead of a vector.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQRDMULH (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqrdmulhI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQRDMULH (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqrdmulhI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQRSHL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Rounding Shift Left takes each element in a vector, shifts them by a value from the least significant byte of the corresponding element of a second vector, and places the results in the destination vector. If the shift value is positive, the operation is a left shift. Otherwise, it is a right shift.\nThe second operand is a signed integer of the same size.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQRSHL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqrshlI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQRSHL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqrshlI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQRSHRN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Rounding Shift Right, Narrow takes each element in a quadword vector of integers, right shifts them by an immediate value, and places the rounded results in a doubleword vector.\nThe result elements are half the width of the operand elements. If the operand elements are signed, the results can be either signed or unsigned. If the operand elements are unsigned, the result elements must also be unsigned.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQRSHRN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqrshrnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQRSHRN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqrshrnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQSHL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Shift Left (immediate) takes each element in a vector of integers, left shifts them by an immediate value, and places the results in a second vector.\nThe result elements are the same size as the operand elements. If the operand elements are signed, the results can be either signed or unsigned. If the operand elements are unsigned, the result elements must also be unsigned.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQSHL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqshlI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQSHL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqshlI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VQSHL (int4, immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqshlImmI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQSHL (int4, immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqshlImmI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQSHRN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Shift Right, Narrow takes each element in a quadword vector of integers, right shifts them by an immediate value, and places the truncated results in a doubleword vector.\nThe result elements are half the width of the operand elements. If the operand elements are signed, the results can be either signed or unsigned. If the operand elements are unsigned, the result elements must also be unsigned.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs.\n\n"];
    
    [descStr appendFormat:@"VQSHRN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqshrnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQSHRN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqshrnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVQSUB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Saturating Subtract subtracts the elements of the second operand vector from the corresponding elements of the first operand vector, and places the results in the destination vector. Signed and unsigned operations are distinct.\nIf any of the results overflow, they are saturated. The cumulative saturation flag, QC, is set if saturation occurs. \n\n"];
    
    [descStr appendFormat:@"VQSUB (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vqsubI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VQSUB (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vqsubI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRADDHN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Rounding Add and Narrow, returning High Half adds corresponding elements in two quadword vectors, and places the most significant half of each result in a doubleword vector. The results are rounded.\nThe operand elements can be 16-bit, 32-bit, or 64-bit integers. There is no distinction between signed and unsigned integers.\n\n"];
    
    [descStr appendFormat:@"VRADDHN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vraddhnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRADDHN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vraddhnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRECPE(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Reciprocal Estimate finds an approximate reciprocal of each element in the operand vector, and places the results in the destination vector.\nThe operand and result elements are the same type, and can be 32-bit floating-point numbers, or 32-bit unsigned integers.\n\n"];
    
    [descStr appendFormat:@"VRECPE (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrecpeI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRECPE (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrecpeI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VRECPE (int4, immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrecpeF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRECPE (int4, immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrecpeF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRECPS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Reciprocal Step multiplies the elements of one vector by the corresponding elements of another vector, subtracts each of the products from 2.0, and places the results into the elements of the destination vector.\n\n"];
    
    [descStr appendFormat:@"VRECPS (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrecpsF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRECPS (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrecpsF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVREV16(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VREV16 (Vector Reverse in halfwords) reverses the order of 8-bit elements in each halfword of the vector, and places the result in the corresponding destination vector.\n\n"];
    
    [descStr appendFormat:@"VREV16 Maximum Cycles: %@\n", GetInstructionCyclesString(&vrev16MinTest, 10000, NULL)];
    [descStr appendFormat:@"VREV16 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrev16MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVREV32(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VREV32 (Vector Reverse in words) reverses the order of 8-bit or 16-bit elements in each word of the vector, and places the result in the corresponding destination vector.\n\n"];
    
    [descStr appendFormat:@"VREV32 Maximum Cycles: %@\n", GetInstructionCyclesString(&vrev32MinTest, 10000, NULL)];
    [descStr appendFormat:@"VREV32 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrev32MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVREV64(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VREV64 (Vector Reverse in doublewords) reverses the order of 8-bit, 16-bit, or 32-bit elements in each doubleword of the vector, and places the result in the corresponding destination vector.\n\n"];
    
    [descStr appendFormat:@"VREV64 Maximum Cycles: %@\n", GetInstructionCyclesString(&vrev64MinTest, 10000, NULL)];
    [descStr appendFormat:@"VREV64 Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrev64MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRHADD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Rounding Halving Add adds corresponding elements in two vectors of integers, shifts each result right one bit, and places the final results in the destination vector.\nThe results of the halving operations are rounded.\n\n"];
    
    [descStr appendFormat:@"VRHADD (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrhaddI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRHADD (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrhaddI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRSHL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Rounding Shift Left takes each element in a vector, shifts them by a value from the least significant byte of the corresponding element of a second vector, and places the results in the destination vector. If the shift value is positive, the operation is a left shift. If the shift value is negative, it is a rounding right shift.\nThe second operand is always a signed integer of the same size.\n\n"];
    
    [descStr appendFormat:@"VRSHL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrshlI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSHL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrshlI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRSHR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Rounding Shift Right takes each element in a vector, right shifts them by an immediate value, and places the rounded results in the destination vector.\n\n"];
    
    [descStr appendFormat:@"VRSHR (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrshrI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSHR (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrshrI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRSHRN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Rounding Shift Right and Narrow takes each element in a vector, right shifts them by an immediate value, and places the rounded results in the destination vector.\nThe operand elements can be 16-bit, 32-bit, or 64-bit integers. There is no distinction between signed and unsigned integers. The destination elements are half the size of the source elements.\n\n"];
    
    [descStr appendFormat:@"VRSHRN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrshrnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSHRN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrshrnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRSQRTE(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Reciprocal Square Root Estimate finds an approximate reciprocal square root of each element in a vector, and places the results in a second vector.\nThe operand and result elements are the same type, and can be 32-bit floating-point numbers, or 32-bit unsigned integers.\n\n"];
    
    [descStr appendFormat:@"VRSQRTE (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrsqrteI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSQRTE (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrsqrteI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VRSQRTE (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrsqrteF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSQRTE (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrsqrteF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRSQRTS(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Reciprocal Square Root Step multiplies the elements of one vector by the corresponding elements of another vector, subtracts each of the products from 3.0, divides these results by 2.0, and places the results into the elements of the destination vector.\n\n"];
    
    [descStr appendFormat:@"VRSQRTS (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrsqrtsF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSQRTS (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrsqrtsF4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRSRA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Reciprocal Square Root Step multiplies the elements of one vector by the corresponding elements of another vector, subtracts each of the products from 3.0, divides these results by 2.0, and places the results into the elements of the destination vector.\n\n"];
    
    [descStr appendFormat:@"VRSRA (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrsraI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSRA (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrsraI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVRSUBHN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Rounding Subtract and Narrow, returning High Half subtracts the elements of one quadword vector from the corresponding elements of another quadword vector takes the most significant half of each result, and places the final results in a doubleword vector. The results are rounded.\n\n"];
    
    [descStr appendFormat:@"VRSUBHN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vrsubhnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VRSUBHN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vrsubhnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSHL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Shift Left (immediate) takes each element in a vector of integers, left shifts them by an immediate value, and places the results in the destination vector.\nVector Shift Left (register) takes each element in a vector, shifts them by a value from the least significant byte of the corresponding element of a second vector, and places the results in the destination vector. If the shift value is positive, the operation is a left shift. If the shift value is negative, it is a truncating right shift.\n\n"];
    
    [descStr appendFormat:@"VSHL (int4, immediate) Maximum Cycles: %@\n", GetInstructionCyclesString(&vshlImmMinTest, 10000, NULL)];
    [descStr appendFormat:@"VSHL (int4, immediate) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vshlImmMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VSHL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vshlMinTest, 10000, NULL)];
    [descStr appendFormat:@"VSHL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vshlMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSHLL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Shift Left Long takes each element in a doubleword vector, left shifts them by an immediate value, and places the results in a quadword vector.\n\n"];
    
    [descStr appendFormat:@"VSHLL (int2) Maximum Cycles: %@\n", GetInstructionCyclesString(&vshllI2MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSHLL (int2) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vshllI2MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSHR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Shift Right takes each element in a vector, right shifts them by an immediate value, and places the truncated results in the destination vector.\n\n"];
    
    [descStr appendFormat:@"VSHR (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vshrI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSHR (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vshrI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSHRN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Shift Right Narrow takes each element in a vector, right shifts them by an immediate value, and places the truncated results in the destination vector.\nThe operand elements can be 16-bit, 32-bit, or 64-bit integers. There is no distinction between signed and unsigned integers. The destination elements are half the size of the source elements.\n\n"];
    
    [descStr appendFormat:@"VSHRN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vshrnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSHRN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vshrnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSLI(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Shift Left and Insert takes each element in the operand vector, left shifts them by an immediate value, and inserts the results in the destination vector. Bits shifted out of the left of each element are lost.\nThe elements must all be the same size, and can be 8-bit, 16-bit, 32-bit, or 64-bit. There is no distinction between data types.\n\n"];
    
    [descStr appendFormat:@"VSLI (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsliI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSLI (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsliI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSQRT(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction calculates the square root of the value in a floating-point register and writes the result to another floating-point register.\n\n"];
    
    [descStr appendFormat:@"VSQRT (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsqrtFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VSQRT (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsqrtFMaxTest, 10000, NULL)];
    [descStr appendFormat:@"VSQRT (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsqrtDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VSQRT (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsqrtDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSRA(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Shift Right and Accumulate takes each element in a vector, right shifts them by an immediate value, and accumulates the truncated results into the destination vector.\n\n"];
    
    [descStr appendFormat:@"VSRA (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsraI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSRA (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsraI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSRI(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Shift Right and Insert takes each element in the operand vector, right shifts them by an immediate value, and inserts the results in the destination vector. Bits shifted out of the right of each element are lost.\nThe elements must all be the same size, and can be 8-bit, 16-bit, 32-bit, or 64-bit. There is no distinction between data types.\n\n"];
    
    [descStr appendFormat:@"VSRI (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsriI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSRI (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsriI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSUB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Subtract subtracts the elements of one vector from the corresponding elements of another vector, and places the results in the destination vector.\n\n"];
    
    [descStr appendFormat:@"VSUB (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsubI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSUB (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsubI4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VSUB (float4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsubF4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSUB (float4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsubF4MaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VSUB (float) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsubFMinTest, 10000, NULL)];
    [descStr appendFormat:@"VSUB (float) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsubFMaxTest, 10000, NULL)];
    
    [descStr appendFormat:@"VSUB (double) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsubDMinTest, 10000, NULL)];
    [descStr appendFormat:@"VSUB (double) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsubDMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSUBHN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Subtract and Narrow, returning High Half subtracts the elements of one quadword vector from the corresponding elements of another quadword vector takes the most significant half of each result, and places the final results in a doubleword vector. The results are truncated.\n\n"];
    
    [descStr appendFormat:@"VSUBHN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsubhnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSUBHN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsubhnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSUBL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Subtract Long subtracts the elements of one doubleword vector from the corresponding elements of another doubleword vector, and places the results in a quadword vector. Before subtracting, it sign-extends or zero-extends the elements of both operands.\n\n"];
    
    [descStr appendFormat:@"VSUBL (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsublI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSUBL (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsublI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSUBW(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Subtract Wide subtracts the elements of a doubleword vector from the corresponding elements of a quadword vector, and places the results in another quadword vector. Before subtracting, it sign-extends or zero-extends the elements of the doubleword operand.\n\n"];
    
    [descStr appendFormat:@"VSUBW (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vsubwI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VSUBW (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vsubwI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVSWP(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"VSWP (Vector Swap) exchanges the contents of two vectors. The vectors can be either doubleword or quadword. There is no distinction between data types.\n\n"];
    
    [descStr appendFormat:@"VSWP Maximum Cycles: %@\n", GetInstructionCyclesString(&vswpMinTest, 10000, NULL)];
    [descStr appendFormat:@"VSWP Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vswpMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVTBL(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Table Lookup uses byte indexes in a control vector to look up byte values in a table and generate a new vector. Indexes out of range return 0.\nVector Table Extension works in the same way, except that indexes out of range leave the destination element unchanged.\n\n"];
    
    [descStr appendFormat:@"VTBL Maximum Cycles: %@\n", GetInstructionCyclesString(&vtblMinTest, 10000, NULL)];
    [descStr appendFormat:@"VTBL Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vtblMaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVTRN(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Transpose treats the elements of its operand vectors as elements of 2 × 2 matrices, and transposes the matrices.\nThe elements of the vectors can be 8-bit, 16-bit, or 32-bit. There is no distinction between data types.\n\n"];
    
    [descStr appendFormat:@"VTRN (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vtrnI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VTRN (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vtrnI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVTST(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Test Bits takes each element in a vector, and bitwise ANDs it with the corresponding element of a second vector. If the result is not zero, the corresponding element in the destination vector is set to all ones. Otherwise, it is set to all zeros.\n\n"];
    
    [descStr appendFormat:@"VTST (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vtstI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VTST (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vtstI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVUZP(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Unzip de-interleaves the elements of two vectors. See Table A8-13 and Table A8-14 for examples of the operation.\nThe elements of the vectors can be 8-bit, 16-bit, or 32-bit. There is no distinction between data types.\n\n"];
    
    [descStr appendFormat:@"VUZP (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vuzpI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VUZP (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vuzpI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* doVZIP(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Zip interleaves the elements of two vectors. See Table A8-15 and Table A8-16 for examples of the operation.\nThe elements of the vectors can be 8-bit, 16-bit, or 32-bit. There is no distinction between data types.\n\n"];
    
    [descStr appendFormat:@"VZIP (int4) Maximum Cycles: %@\n", GetInstructionCyclesString(&vzipI4MinTest, 10000, NULL)];
    [descStr appendFormat:@"VZIP (int4) Minimum Cycles: %@\n\n", GetInstructionCyclesString(&vzipI4MaxTest, 10000, NULL)];
    
    return descStr;
}

static NSString* (* const neonInstArray[])(ZennyInstViewController*) = {
    &doVABA,
    &doVABD,
    &doVABS,
    &doVACGE,
    &doVADD,
    &doVADDHN,
    &doVADDL,
    &doVAND,
    &doVBIC,
    &doVBIF,
    &doVCEQ,
    &doVCGE,
    &doVCGT,
    &doVCLE,
    &doVCLS,
    &doVCLZ,
    &doVCMP,
    &doVCNT,
    &doVCVT1,
    &doVCVT2,
    &doVCVT3,
    &doVCVT4,
    &doVCVT5,
    &doVCVT6,
    &doVCVT7,
    &doVDIV,
    &doVDUP,
    &doVEOR,
    &doVEXT,
    &doVFMA,
    &doVFMS,
    &doVFNMA,
    &doVFNMS,
    &doVHADD,
    &doVHSUB,
    &doVMAX,
    &doVMIN,
    &doVMLA,
    &doVMLAL,
    &doVMLS,
    &doVMLSL,
    &doVMLA_scalar,
    &doVMLAL_scalar,
    &doVMLS_scalar,
    &doVMLSL_scalar,
    &doVMOVImm,
    &doVMOV,
    &doVMOVScalarReg,
    &doVMOVSReg,
    &doVMOVSRegDual,
    &doVMOVDRegDual,
    &doVMOVL,
    &doVMOVN,
    &doVMUL,
    &doVMULL,
    &doVMULScalar,
    &doVMULLScalar,
    &doVMVN,
    &doVNEG,
    &doVNMLA,
    &doVNMLS,
    &doVNMUL,
    &doVORN,
    &doVORR,
    &doVPADAL,
    &doVPADD,
    &doVPADDL,
    &doVPMAX,
    &doVPMIN,
    &doVQABS,
    &doVQADD,
    &doVQDMLAL,
    &doVQDMLSL,
    &doVQDMULH,
    &doVQDMULL,
    &doVQMOVN,
    &doVQNEG,
    &doVQRDMULH,
    &doVQRSHL,
    &doVQRSHRN,
    &doVQSHL,
    &doVQSHRN,
    &doVQSUB,
    &doVRADDHN,
    &doVRECPE,
    &doVRECPS,
    &doVREV16,
    &doVREV32,
    &doVREV64,
    &doVRHADD,
    &doVRSHL,
    &doVRSHR,
    &doVRSHRN,
    &doVRSQRTE,
    &doVRSQRTS,
    &doVRSRA,
    &doVRSUBHN,
    &doVSHL,
    &doVSHLL,
    &doVSHR,
    &doVSHRN,
    &doVSLI,
    &doVSQRT,
    &doVSRA,
    &doVSRI,
    &doVSUB,
    &doVSUBHN,
    &doVSUBL,
    &doVSUBW,
    &doVSWP,
    &doVTBL,
    &doVTRN,
    &doVTST,
    &doVUZP,
    &doVZIP
};

#pragma mark - load & store

static NSString* doLDM(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load Multiple Increment After (Load Multiple Full Descending) loads multiple registers from consecutive memory locations using an address from a base register. The consecutive memory locations start at this address, and the address just above the highest of those locations can optionally be written back to the base register.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"LDMIA (int4) Average cycles: %@", GetInstructionCyclesString(&ldmiaTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLDR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load Register (immediate) calculates an address from a base register value and an immediate offset, loads a word from memory, and writes it to a register. It can use offset, post-indexed, or pre-indexed addressing.\nLoad Register (register) calculates an address from a base register value and an offset register value, loads a word from memory, and writes it to a register. The offset register value can optionally be shifted.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"LDR Average cycles: %@\n", GetInstructionCyclesString(&ldrTest, 10000, buffer)];
    [descStr appendFormat:@"LDR (with add) Average cycles: %@\n", GetInstructionCyclesString(&ldrAddTest, 10000, buffer)];
    [descStr appendFormat:@"LDR (L2 Cache) Average cycles: %@\n", GetInstructionCyclesString(&ldrL2Test, 10000, buffer)];
    [descStr appendFormat:@"LDR (External Memory) Average cycles: %@\n", GetInstructionCyclesString(&ldrMemTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLDRB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load Register Byte (immediate) calculates an address from a base register value and an immediate offset, loads a byte from memory, zero-extends it to form a 32-bit word, and writes it to a register. It can use offset, post-indexed, or pre-indexed addressing.\n\n"];

    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"LDRB Average cycles: %@\n", GetInstructionCyclesString(&ldrbTest, 10000, buffer)];
    [descStr appendFormat:@"LDRB (with add) Average cycles: %@\n", GetInstructionCyclesString(&ldrbAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLDRD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load Register Dual (immediate) calculates an address from a base register value and an immediate offset, loads two words from memory, and writes them to two registers. It can use offset, post-indexed, or pre-indexed addressing.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"LDRD Average cycles: %@\n", GetInstructionCyclesString(&ldrdTest, 10000, buffer)];
    [descStr appendFormat:@"LDRD (with add) Average cycles: %@\n\n", GetInstructionCyclesString(&ldrdAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLDRH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load Register Halfword (immediate) calculates an address from a base register value and an immediate offset, loads a halfword from memory, zero-extends it to form a 32-bit word, and writes it to a register. It can use offset, post-indexed, or pre-indexed addressing.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"LDRH Average cycles: %@\n", GetInstructionCyclesString(&ldrhTest, 10000, buffer)];
    [descStr appendFormat:@"LDRH (with add) Average cycles: %@\n\n", GetInstructionCyclesString(&ldrhAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLDRSB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load Register Signed Byte (immediate) calculates an address from a base register value and an immediate offset, loads a byte from memory, sign-extends it to form a 32-bit word, and writes it to a register. It can use offset, post-indexed, or pre-indexed addressing.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"LDRSB Average cycles: %@\n", GetInstructionCyclesString(&ldrsbTest, 10000, buffer)];
    [descStr appendFormat:@"LDRSB (with add) Average cycles: %@\n\n", GetInstructionCyclesString(&ldrsbAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLDRSH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load Register Signed Halfword (immediate) calculates an address from a base register value and an immediate offset, loads a halfword from memory, sign-extends it to form a 32-bit word, and writes it to a register. It can use offset, post-indexed, or pre-indexed addressing.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"LDRSH Average cycles: %@\n", GetInstructionCyclesString(&ldrshTest, 10000, buffer)];
    [descStr appendFormat:@"LDRSH (with add) Average cycles: %@\n\n", GetInstructionCyclesString(&ldrshAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doSTM(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Store Multiple Increment After (Store Multiple Empty Ascending) stores multiple registers to consecutive memory locations using an address from a base register. The consecutive memory locations start at this address, and the address just above the last of those locations can optionally be written back to the base register.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"STMIA (int4) Average cycles: %@", GetInstructionCyclesString(&stmiaTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doSTR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Store Register (immediate) calculates an address from a base register value and an immediate offset, and stores a word from a register to memory. It can use offset, post-indexed, or pre-indexed addressing.\nStore Register (register) calculates an address from a base register value and an offset register value, stores a word from a register to memory. The offset register value can optionally be shifted.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"STR Average cycles: %@\n", GetInstructionCyclesString(&strTest, 10000, buffer)];
    [descStr appendFormat:@"STR (with add) Average cycles: %@\n", GetInstructionCyclesString(&strAddTest, 10000, buffer)];
    
    [descStr appendFormat:@"STR (L2 Cache) Average cycles: %@\n", GetInstructionCyclesString(&strL2Test, 10000, buffer)];
    [descStr appendFormat:@"STR (External Memory) Average cycles: %@\n\n", GetInstructionCyclesString(&strMemTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doSTRB(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Store Register Byte (immediate) calculates an address from a base register value and an immediate offset, and stores a byte from a register to memory. It can use offset, post-indexed, or pre-indexed addressing.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"STRB Average cycles: %@\n", GetInstructionCyclesString(&strbTest, 10000, buffer)];
    [descStr appendFormat:@"STRB (with add) Average cycles: %@\n\n", GetInstructionCyclesString(&strbAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doSTRD(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Store Register Dual (immediate) calculates an address from a base register value and an immediate offset, and stores two words from two registers to memory. It can use offset, post-indexed, or pre-indexed addressing.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"STRD Average cycles: %@\n", GetInstructionCyclesString(&strdTest, 10000, buffer)];
    [descStr appendFormat:@"STRD (with add) Average cycles: %@\n\n", GetInstructionCyclesString(&strdAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doSTRH(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Store Register Halfword (immediate) calculates an address from a base register value and an immediate offset, and stores a halfword from a register to memory. It can use offset, post-indexed, or pre-indexed addressing. \n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"STRH Average cycles: %@\n", GetInstructionCyclesString(&strhTest, 10000, buffer)];
    [descStr appendFormat:@"STRH (with add) Average cycles: %@\n\n", GetInstructionCyclesString(&strhAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVLD1(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction loads elements from memory into one, two, three, or four registers, without de-interleaving. Every element of each register is loaded.\nThis instruction loads one element from memory into one element of a register. Elements of the register that are not loaded are unchanged.\nThis instruction loads one element from memory into every element of one or two vectors.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VLD1 (multiple single elements) Average cycles: %@\n", GetInstructionCyclesString(&vld1FirstTest, 10000, buffer)];
    [descStr appendFormat:@"VLD1 (multiple single elements, with add) Average cycles: %@\n", GetInstructionCyclesString(&vld1AddTest, 10000, buffer)];
    [descStr appendFormat:@"VLD1 (single element to one lane) Average cycles: %@\n", GetInstructionCyclesString(&vld1SecondTest, 10000, buffer)];
    [descStr appendFormat:@"VLD1 (single element to all lanes) Average cycles: %@\n\n", GetInstructionCyclesString(&vld1ThirdTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVLD2(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction loads multiple 2-element structures from memory into two or four registers, with de-interleaving.\nThis instruction loads one 2-element structure from memory into corresponding elements of two registers. Elements of the registers that are not loaded are unchanged.\nThis instruction loads one 2-element structure from memory into all lanes of two registers.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VLD2 (multiple 2-element structures) Average cycles: %@\n", GetInstructionCyclesString(&vld2FirstTest, 10000, buffer)];
    [descStr appendFormat:@"VLD2 (single 2-element structure to one lane) Average cycles: %@\n", GetInstructionCyclesString(&vld2SecondTest, 10000, buffer)];
    [descStr appendFormat:@"VLD2 (single 2-element structure to all lanes) Average cycles: %@\n", GetInstructionCyclesString(&vld2ThirdTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVLD3(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction loads multiple 3-element structures from memory into three registers, with de-interleaving.\nThis instruction loads one 3-element structure from memory into corresponding elements of three registers. Elements of the registers that are not loaded are unchanged.\nThis instruction loads one 3-element structure from memory into all lanes of three registers.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VLD3 (multiple 3-element structures) Average cycles: %@\n", GetInstructionCyclesString(&vld3FirstTest, 10000, buffer)];
    [descStr appendFormat:@"VLD3 (single 3-element structure to one lane) Average cycles: %@\n", GetInstructionCyclesString(&vld3SecondTest, 10000, buffer)];
    [descStr appendFormat:@"VLD3 (single 3-element structure to all lanes) Average cycles: %@\n", GetInstructionCyclesString(&vld3ThirdTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVLD4(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction loads multiple 4-element structures from memory into four registers, with de-interleaving.\nThis instruction loads one 4-element structure from memory into corresponding elements of four registers.\nThis instruction loads one 4-element structure from memory into all lanes of four registers.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VLD4 (multiple 4-element structures) Average cycles: %@\n", GetInstructionCyclesString(&vld4FirstTest, 10000, buffer)];
    [descStr appendFormat:@"VLD4 (single 4-element structure to one lane) Average cycles: %@\n", GetInstructionCyclesString(&vld4SecondTest, 10000, buffer)];
    [descStr appendFormat:@"VLD4 (single 4-element structure to all lanes) Average cycles: %@\n\n", GetInstructionCyclesString(&vld4ThirdTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVLDM(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Load Multiple loads multiple extension registers from consecutive memory locations using an address from an ARM core register.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VLDMIA (long4) Average cycles: %@\n\n", GetInstructionCyclesString(&vldmiaTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVLDR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction loads a single extension register from memory, using an address from an ARM core register, with an optional offset.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VLDR (float) Average cycles: %@\n", GetInstructionCyclesString(&vldrIntTest, 10000, buffer)];
    [descStr appendFormat:@"VLDR (float, with add) Average cycles: %@\n", GetInstructionCyclesString(&vldrIntAddTest, 10000, buffer)];
    [descStr appendFormat:@"VLDR (double) Average cycles: %@\n", GetInstructionCyclesString(&vldrLongTest, 10000, buffer)];
    [descStr appendFormat:@"VLDR (double, with add) Average cycles: %@\n\n", GetInstructionCyclesString(&vldrLongAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVST1(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Store (multiple single elements) stores elements to memory from one, two, three, or four registers, without interleaving. Every element of each register is stored.\nVector Store (single element from one lane) stores one element to memory from one element of a register.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VST1 (multiple single elements) Average cycles: %@\n", GetInstructionCyclesString(&vst1FirstTest, 10000, buffer)];
    [descStr appendFormat:@"VST1 (multiple single elements, with add) Average cycles: %@\n", GetInstructionCyclesString(&vst1AddTest, 10000, buffer)];
    [descStr appendFormat:@"VST1 (single element to one lane) Average cycles: %@\n\n", GetInstructionCyclesString(&vst1SecondTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVST2(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction stores multiple 2-element structures from two or four registers to memory, with interleaving.\nThis instruction stores one 2-element structure to memory from corresponding elements of two registers.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VST2(multiple 2-element structures):\nAverage cycles: %@\n", GetInstructionCyclesString(&vst2FirstTest, 10000, buffer)];
    [descStr appendFormat:@"\nVST2(single 2-element structure from one lane):\nAverage cycles: %@\n", GetInstructionCyclesString(&vst2SecondTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVST3(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction stores multiple 3-element structures from two or four registers to memory, with interleaving.\nThis instruction stores one 3-element structure to memory from corresponding elements of two registers.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VST3 (multiple 3-element structures) Average cycles: %@\n", GetInstructionCyclesString(&vst3FirstTest, 10000, buffer)];
    [descStr appendFormat:@"VST3 (single 3-element structure from one lane) Average cycles: %@\n\n", GetInstructionCyclesString(&vst3SecondTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVST4(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction stores multiple 3-element structures from two or four registers to memory, with interleaving.\nThis instruction stores one 3-element structure to memory from corresponding elements of two registers.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VST4 (multiple 4-element structures) Average cycles: %@\n", GetInstructionCyclesString(&vst4FirstTest, 10000, buffer)];
    [descStr appendFormat:@"VST4 (single 4-element structure from one lane) Average cycles: %@\n\n", GetInstructionCyclesString(&vst4SecondTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVSTM(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Vector Store Multiple stores multiple extension registers to consecutive memory locations using an address from an ARM core register.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VSTMIA (long4) Average cycles: %@\n", GetInstructionCyclesString(&vstmiaTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doVSTR(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"This instruction stores a single extension register to memory, using an address from an ARM core register, with an optional offset.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"VSTR (float) Average cycles: %@\n", GetInstructionCyclesString(&vstrIntTest, 10000, buffer)];
    [descStr appendFormat:@"VSTR (float, with add) Average cycles: %@\n", GetInstructionCyclesString(&vstrIntAddTest, 10000, buffer)];
    [descStr appendFormat:@"VSTR (double) Average cycles: %@\n", GetInstructionCyclesString(&vstrLongTest, 10000, buffer)];
    [descStr appendFormat:@"VSTR (double, with add) Average cycles: %@\n\n", GetInstructionCyclesString(&vstrLongAddTest, 10000, buffer)];
    
    free(mempool);
    
    return descStr;
}

static NSString* (* const loadStoreArray[])(ZennyInstViewController*) = {
    &doLDM,
    &doLDR,
    &doLDRB,
    &doLDRD,
    &doLDRH,
    &doLDRSB,
    &doLDRSH,
    &doSTM,
    &doSTR,
    &doSTRB,
    &doSTRD,
    &doSTRH,
    &doVLD1,
    &doVLD2,
    &doVLD3,
    &doVLD4,
    &doVLDM,
    &doVLDR,
    &doVST1,
    &doVST2,
    &doVST3,
    &doVST4,
    &doVSTM,
    &doVSTR
};

#pragma mark - Misc

static NSString* doLoadAddStore(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load-add-store horizontal loads eight 32-bit integers from a buffer, and add each other, and then store the sum.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"load-add-store (ARMv6-based) Average cycles: %@\n", GetMiscCyclesString(&loadAddStoreNormalTest, buffer, 10000)];
    [descStr appendFormat:@"load-add-store (NEON based) Average cycles: %@\n\n", GetMiscCyclesString(&loadAddStoreNeonTest, buffer, 10000)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLoadAddStoreVertical(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load-add-store vertical loads eight 32-bit integers from a buffer, and load another eight 32-bit integers from another buffer, add each pair, and then store the eight paired results to the first buffer.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"load-add-store (ARMv6-based) Average cycles: %@\n", GetMiscCyclesString(&loadAddStoreVerticalNormalTest, buffer, 10000)];
    [descStr appendFormat:@"load-add-store(ARMv6-based, seperately) Average cycles: %@\n", GetMiscCyclesString(&loadAddStoreVerticalNeonTest, buffer, 10000)];
    [descStr appendFormat:@"load-add-store(NEON based) Average cycles: %@\n\n", GetMiscCyclesString(&loadAddStoreVerticalSeperateTest, buffer, 10000)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLoadMulStore(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load-add-store horizontal loads eight 32-bit integers from a buffer, and multiply each other, and then store the sum.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"load-multiply-store Average cycles: %@\n\n", GetMiscCyclesString(&loadMulStoreNormalTest, buffer, 10000)];
    
    free(mempool);
    
    return descStr;
}

static NSString* doLoadMulStoreVertical(ZennyInstViewController* controller)
{
    NSMutableString *descStr = [NSMutableString stringWithCapacity:1000];
    [descStr appendString:@"Load-multiply-store vertical loads eight 32-bit integers from a buffer, and load another eight 32-bit integers from another buffer, multiply each pair, and then store the eight paired results to the first buffer.\n\n"];
    
    void *mempool = malloc(60 * 1024 * 1024 + 32);
    void *buffer = (void*)(((size_t)mempool & ~0x1fUL) + 32);
    memset(buffer, 2, 16 * 1024 * 1024);
    
    [descStr appendFormat:@"load-multiply-store(ARMv6-based) Average cycles: %@\n", GetMiscCyclesString(&loadMulStoreVerticalNormalTest, buffer, 10000)];
    [descStr appendFormat:@"load-multiply-store(ARMv6-based, seperately) Average cycles: %@\n", GetMiscCyclesString(&loadMulStoreVerticalNeonTest, buffer, 10000)];
    [descStr appendFormat:@"load-multiply-store(NEON based) Average cycles: %@\n", GetMiscCyclesString(&loadMulStoreVerticalSeperateTest, buffer, 10000)];
    
    free(mempool);
    
    return descStr;
}

static NSString* (* const miscelleneousArray[])(ZennyInstViewController*) = {
    &doLoadAddStore,
    &doLoadAddStoreVertical,
    &doLoadMulStore,
    &doLoadMulStoreVertical
};

#pragma mark -

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)loadView
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    descTextHeight = screenHeight - 45.0f - 40.0f + 10.0f;
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, width, screenHeight)];
    aView.backgroundColor = [UIColor whiteColor];
    self.view = aView;
    [aView release];
    
    aView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, width, 35.0f)];
    aView.backgroundColor = [UIColor colorWithRed:0.5098f green:0.8627f blue:0.7539f alpha:1.0f];
    [self.view addSubview:aView];
    [aView release];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(40.0f, 0.0f, width - 60.0f, 35.0f)];
    title.tag = INST_ISA_TITLE_VIEW_TAG;
    title.backgroundColor = [UIColor clearColor];
    title.textAlignment = UITextAlignmentCenter;
    title.textColor = [UIColor colorWithRed:0.7961f green:0.1922f blue:0.4588f alpha:1.0f];
    title.font = [UIFont fontWithName:@"Helvetica-Bold" size:18.0f];
    title.adjustsFontSizeToFitWidth  =YES;
    title.minimumFontSize = 10.0f;
    [self.view addSubview:title];
    [title release];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10.0f, 7.0f, 30.0f, 21.0f)];
    button.layer.contentsScale = [[UIScreen mainScreen] scale];
    [button setImage:[UIImage imageNamed:@"baritem_back.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button release];
}


- (void)backButtonTouched:(id)sender
{
    UIView *scrollView = [self.view viewWithTag:INST_ISA_TEXT_VIEW_TAG];
    if(scrollView != nil)
        [scrollView removeFromSuperview];
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)showTitle
{
    UIView *scrollView = [self.view viewWithTag:INST_ISA_TEXT_VIEW_TAG];
    if(scrollView == nil)
    {
        UILabel *title = (UILabel*)[self.view viewWithTag:INST_ISA_TITLE_VIEW_TAG];
        title.text = instName;
    }
}

- (void)showContents
{
    UIView *scrollView = [self.view viewWithTag:INST_ISA_TEXT_VIEW_TAG];
    
    NSString *descStr = @"";
    
    if(scrollView == nil)
    {
        switch(sectionIndex)
        {
            case 0:
            default:
                descStr = gpInstArray[rowIndex](self);
                break;
                
            case 1:
                descStr = neonInstArray[rowIndex](self);
                break;
                
            case 2:
                descStr = loadStoreArray[rowIndex](self);
                break;
                
            case 3:
                descStr = miscelleneousArray[rowIndex](self);
                break;
        }
        
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        
        UITextView *desctext = [[UITextView alloc] initWithFrame:CGRectMake(6.0f, 40.0f, width - 6.0f, descTextHeight)];
        desctext.tag = INST_ISA_TEXT_VIEW_TAG;
        desctext.backgroundColor = [UIColor clearColor];
        desctext.textAlignment = NSTextAlignmentLeft;
        desctext.textColor = [UIColor blackColor];
        desctext.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
        desctext.scrollEnabled = YES;
        desctext.editable = NO;
        desctext.text = descStr;
        [self.view addSubview:desctext];
        [desctext release];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end


