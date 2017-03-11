//
//  ZennyKernelAverageSmootherViewController.h
//  CPU Dasher
//
//  Created by zenny_chen on 13-5-5.
//
//

#import <UIKit/UIKit.h>

@class ZennyGLView;

@interface ZennyKernelAverageSmootherViewController : UIViewController
{
@private
    
    BOOL mCanBeTouched;
    NSInteger mCalcFormIndex, mKernelSizeIndex;
    unsigned char mSrcBuffer[31212 * 1024 + 64];
    unsigned char mDstBuffer[31212 * 1024 + 64];
    
    ZennyGLView *mGLView;
}

@end
