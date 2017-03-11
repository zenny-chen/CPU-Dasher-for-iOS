//
//  ZennyColor2GrayViewController.h
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-17.
//
//

#import <UIKit/UIKit.h>

@class ZennyGLView;

@interface ZennyColor2GrayViewController : UIViewController
{
@private
    
    volatile BOOL mCanBeTouched;
    int mCalcFormIndex;
    
    unsigned char mSrcBuffer[31212 * 1024 + 64];
    unsigned char mDstBuffer[31212 * 1024 + 64];
    
    ZennyGLView *mGLView;
}

@end
