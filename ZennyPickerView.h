//
//  ZennyPickerView.h
//  CPU Dasher
//
//  Created by zenny_chen on 12-9-9.
//
//

#import <UIKit/UIKit.h>

@interface ZennyPickerView : UIView<UIPickerViewDataSource, UIPickerViewDelegate>
{
@private
    
    NSString* const *pItems;
    NSUInteger itemCount;
    
@public
    
    UIButton *inputButton;
    int *pOutputIndex;
    volatile BOOL *pIsFinished;
}

- (void)initPickerView:(NSString* const*)items count:(NSUInteger)count;

@end
