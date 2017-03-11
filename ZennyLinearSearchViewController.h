//
//  ZennyLinearSearchViewController.h
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-13.
//
//

#import <UIKit/UIKit.h>

@interface ZennyLinearSearchViewController : UIViewController
{
@private
    
    volatile BOOL mCanBeTouched;
    int mArrayLengthIndex, mTargetPositionIndex, mCalcFormIndex;
    
    unsigned char mCalcBuffer[8 * 1024 * 1024 + 64];
}

@end
