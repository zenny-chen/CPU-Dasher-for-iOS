//
//  ZennySelectionSortViewController.h
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-25.
//
//

#import <UIKit/UIKit.h>

@interface ZennySelectionSortViewController : UIViewController
{
@private
    
    BOOL mCanBeTouched;
    NSInteger mArrayLengthIndex, mDataTypeIndex, mCalcFormIndex;
    
    int mArrayBuffer[1 * 1024 * 1024 / 4];
}

@end
