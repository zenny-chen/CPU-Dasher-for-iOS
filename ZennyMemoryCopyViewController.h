//
//  ZennyMemoryCopyViewController.h
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-27.
//
//

#import <UIKit/UIKit.h>

@interface ZennyMemoryCopyViewController : UIViewController
{
@private
    
    BOOL mCanBeTouched;
    NSInteger mArrayLengthIndex, mCalcFormIndex;
    unsigned char mSrcBuffer[8 * 1024 * 1024 + 128];
    unsigned char mDstBuffer[8 * 1024 * 1024 + 128];
}

@end
