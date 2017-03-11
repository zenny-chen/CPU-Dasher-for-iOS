//
//  ZennyPickerView.m
//  CPU Dasher
//
//  Created by zenny_chen on 12-9-9.
//
//

#import "ZennyPickerView.h"

#include "ZennyUITag.h"

#import <QuartzCore/QuartzCore.h>

@implementation ZennyPickerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, 251.0f);
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, width, 35.0f)];
        imageView.backgroundColor = [UIColor clearColor];
        imageView.layer.contentsScale = [[UIScreen mainScreen] scale];
        imageView.image = [UIImage imageNamed:@"title_banner.png"];
        [self addSubview:imageView];
        [imageView release];
        
        CGFloat edgeMargin = (width - 51.0f * 2.0f - 40.0f) * 0.5f;
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(edgeMargin + 51.0f + 40.0f, 5.0f, 51.0f, 25.0f)];
        button.backgroundColor = [UIColor clearColor];
        button.layer.contentsScale = [[UIScreen mainScreen] scale];
        [button setImage:[UIImage imageNamed:@"pick_side_button.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(confirmTouched:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        [button release];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 51.0f, 25.0f)];
        label.backgroundColor = [UIColor clearColor];
        label.layer.contentsScale = [[UIScreen mainScreen] scale];
        label.textAlignment = UITextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont fontWithName:@"Helvetica" size:11.0f];
        label.text = @"Confirm";
        [button addSubview:label];
        [label release];
        
        button = [[UIButton alloc] initWithFrame:CGRectMake(edgeMargin, 5.0f, 51.0f, 25.0f)];
        button.backgroundColor = [UIColor clearColor];
        button.layer.contentsScale = [[UIScreen mainScreen] scale];
        [button setImage:[UIImage imageNamed:@"pick_side_button.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(cancelTouched:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        [button release];
        
        label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 51.0f, 25.0f)];
        label.backgroundColor = [UIColor clearColor];
        label.layer.contentsScale = [[UIScreen mainScreen] scale];
        label.textAlignment = UITextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont fontWithName:@"Helvetica" size:11.0f];
        label.text = @"Cancel";
        [button addSubview:label];
        [label release];
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)initPickerView:(NSString* const*)items count:(NSUInteger)count
{
    pItems = items;
    itemCount = count;
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    UIPickerView *picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0.0f, 35.0f, width, 216.0f)];
    picker.tag = PICKER_PICKERVIEW_TAG;
    picker.showsSelectionIndicator = YES;
    picker.dataSource = self;
    picker.delegate = self;
    [self addSubview:picker];
    [picker release];
    [picker selectRow:*pOutputIndex inComponent:0 animated:NO];
}

- (void)confirmTouched:(id)sender
{
    UIPickerView *picker = (UIPickerView*)[self viewWithTag:PICKER_PICKERVIEW_TAG];
    int index = [picker selectedRowInComponent:0];
    [inputButton setTitle:pItems[index] forState:UIControlStateNormal];
    *pOutputIndex = index;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    [UIView animateWithDuration:0.6 animations:^void(void){
        self.frame = CGRectMake(0.0f, screenHeight, self.frame.size.width, self.frame.size.height);
    }completion:^void(BOOL finished){
        *pIsFinished = YES;
        [self removeFromSuperview];
    }];
}

- (void)cancelTouched:(id)sender
{
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    [UIView animateWithDuration:0.6 animations:^void(void){
        self.frame = CGRectMake(0.0f, screenHeight, self.frame.size.width, self.frame.size.height);
    }completion:^void(BOOL finished){
        *pIsFinished = YES;
        [self removeFromSuperview];
    }];
}

#pragma mark - picker data source and delegates

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return itemCount;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return pItems[row];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
