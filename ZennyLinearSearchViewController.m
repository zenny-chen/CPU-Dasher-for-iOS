//
//  ZennyLinearSearchViewController.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-13.
//
//

#import "ZennyLinearSearchViewController.h"
#import "ZennyPickerView.h"
#import "LavenderDeviceInfo.h"
#import "ZennyUITag.h"

@interface ZennyLinearSearchViewController ()

@end

@implementation ZennyLinearSearchViewController

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
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGFloat totalHeight = screenBounds.size.height - 20.0f;
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, screenBounds.size.width, totalHeight)];
    aView.backgroundColor = [UIColor whiteColor];
    self.view = aView;
    [aView release];
}

static NSString* const arrayLengthList[] = {
    @"1 mega bytes",
    @"2 mega bytes",
    @"4 mega bytes",
    @"8 mega bytes"
};

static NSString* const targetPositionList[] = {
    @"1/4 of total length",
    @"1/2 of total length",
    @"3/4 of total length",
    @"The last element"
};

static NSString* const calcForms[] = {
    @"Naive",
    @"ARMv6 based",
    @"NEON",
    @"Duo-core"
};

static const size_t arrayTotalLengths[] = {
    1 * 1024 * 1024UL,
    2 * 1024 * 1024UL,
    4 * 1024 * 1024UL,
    8 * 1024 * 1024
};

static const float targetPositionOffset[] = {
    0.25f,
    0.5f,
    0.75f,
    1.0f
};

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, screenBounds.size.width, 35.0f)];
    title.backgroundColor = [UIColor colorWithRed:0.5098f green:0.8627f blue:0.7539f alpha:1.0f];
    title.textAlignment = UITextAlignmentCenter;
    title.textColor = [UIColor colorWithRed:0.7961f green:0.1922f blue:0.4588f alpha:1.0f];
    title.font = [UIFont fontWithName:@"Helvetica-Bold" size:18.0f];
    title.text = @"Linear Search";
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
    label.text = @"Array length:";
    [self.view addSubview:label];
    [label release];
    
    const UIControlContentHorizontalAlignment buttonAlignment = [UIViewController instancesRespondToSelector:@selector(prefersStatusBarHidden)]? UIControlContentHorizontalAlignmentLeft : UIControlContentHorizontalAlignmentCenter;
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 50.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:arrayLengthList[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(arrayLengthTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 100.0f, width, 30.0f)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentRight;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"Target position:";
    [self.view addSubview:label];
    [label release];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 100.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:targetPositionList[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(targetPositionTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 150.0f, width, 30.0f)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentRight;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"Calculation form:";
    [self.view addSubview:label];
    [label release];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 150.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:calcForms[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(formTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 200.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:@"Calculate" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(calculateTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    width = 0.875 * screenBounds.size.width;
    edgeMargin = (screenBounds.size.width - width) * 0.5f;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 260.0f, width, 80.0f)];
    label.tag = CALC_AVERAGE_LABEL_TAG;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentLeft;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"";
    label.numberOfLines = 4;
    label.hidden = YES;
    [self.view addSubview:label];
    [label release];
    
    mCanBeTouched = YES;
}

#pragma mark - button-event handlers

- (void)backButtonTouched:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)arrayLengthTouched:(UIButton*)sender
{
    if(!mCanBeTouched)
        return;
    mCanBeTouched = NO;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &mArrayLengthIndex;
    pickerView->pIsFinished = &mCanBeTouched;
    [pickerView initPickerView:arrayLengthList count:sizeof(arrayLengthList) / sizeof(arrayLengthList[0])];
    [self.view addSubview:pickerView];
    [pickerView release];
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.text = @"";
    
    [UIView animateWithDuration:0.6 animations:^void(void){
        pickerView.frame = CGRectMake(0.0f, screenHeight - 45.0f - pickerView.frame.size.height, pickerView.frame.size.width, pickerView.frame.size.height);
    }completion:^void(BOOL finished){
        
    }];
}

- (void)targetPositionTouched:(UIButton*)sender
{
    if(!mCanBeTouched)
        return;
    mCanBeTouched = NO;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &mTargetPositionIndex;
    pickerView->pIsFinished = &mCanBeTouched;
    [pickerView initPickerView:targetPositionList count:sizeof(targetPositionList) / sizeof(targetPositionList[0])];
    [self.view addSubview:pickerView];
    [pickerView release];
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.text = @"";
    
    [UIView animateWithDuration:0.6 animations:^void(void){
        pickerView.frame = CGRectMake(0.0f, screenHeight - 45.0f - pickerView.frame.size.height, pickerView.frame.size.width, pickerView.frame.size.height);
    }completion:^void(BOOL finished){
        
    }];
}

- (void)formTouched:(UIButton*)sender
{
    if(!mCanBeTouched)
        return;
    mCanBeTouched = NO;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &mCalcFormIndex;
    pickerView->pIsFinished = &mCanBeTouched;
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

- (void)calculateTouched:(UIButton*)sender
{
    if(!mCanBeTouched)
        return;
    mCanBeTouched = NO;
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.hidden = NO;
    label.text = @"This may take several seconds. Please wait...";
    [self performSelector:@selector(doCalculate:) withObject:label afterDelay:0.1];
}

#pragma mark - Calculation

static int LinearSearchProc(const int *pSrc, size_t length, size_t targetValue);
static int LinearSearchProcDuoCore(const int *pSrc, size_t length, size_t targetValue);
extern int LinearSearchProcARMv6(const int *pSrc, size_t length, size_t targetValue);
extern int LinearSearchProcNEON(const int *pSrc, size_t length, size_t targetValue);

static int (* const linearSearchProcList[])(const int*, size_t, size_t) = {
    &LinearSearchProc,
    &LinearSearchProcARMv6,
    &LinearSearchProcNEON,
    &LinearSearchProcDuoCore
};

- (void)doCalculate:(UILabel*)label
{    
    size_t initAddress = (size_t)mCalcBuffer;
    // 32 bytes aligned
    int *pAlignedMem = (int*)((initAddress + 31) & ~31);
    size_t length = arrayTotalLengths[mArrayLengthIndex];
    
    // Initialize with zero
    memset(pAlignedMem, 0, length);
    
    // Get the number of total elements
    length /= 4;
    
    // Get the target index
    size_t targetIndex = (size_t)((float)length * targetPositionOffset[mTargetPositionIndex]) - 1UL;
    pAlignedMem[targetIndex] = 1;
    
    // Do calculation
    NSTimeInterval beginTimes[10];
    NSTimeInterval endTimes[10];
    NSTimeInterval deltaResults[10];
    NSProcessInfo *processor = [NSProcessInfo processInfo];
    int result = -1;
    int (*pCalcProc)(const int*, size_t, size_t) = linearSearchProcList[mCalcFormIndex];
    for(int i = 0; i < 10; i++)
    {
        beginTimes[i] = [processor systemUptime];
        result = (*pCalcProc)(pAlignedMem, length, 1);
        endTimes[i] = [processor systemUptime];
    }
    
    // Statistics
    for(int i = 0; i < 10; i++)
        deltaResults[i] = endTimes[i] - beginTimes[i];
    
    NSTimeInterval minTime = deltaResults[0];
    NSTimeInterval maxTime = deltaResults[0];
    NSTimeInterval sumTime = deltaResults[0];
    for(int i = 1; i < 10; i++)
    {
        if(minTime > deltaResults[i])
            minTime = deltaResults[i];
        if(maxTime < deltaResults[i])
            maxTime = deltaResults[i];
        sumTime += deltaResults[i];
    }
    minTime *= 1000.0;
    maxTime *= 1000.0;
    sumTime *= 1000.0;
    
    label.text = [NSString stringWithFormat:@"Target element index: %d\nMaximum time spent: %.3f ms\nAverage time spent: %.3f ms\nMinimum time spent: %.3f ms", result, maxTime, sumTime / 10.0, minTime];
    
    mCanBeTouched = YES;
}

static int LinearSearchProc(const int *pSrc, size_t length, size_t targetValue)
{
    int resultIndex = -1;
    for(size_t i = 0; i < length; i++)
    {
        if(pSrc[i] == targetValue)
        {
            resultIndex = i;
            break;
        }
    }
    
    return resultIndex;
}

static int LinearSearchProcDuoCore(const int *pSrc, size_t length, size_t targetValue)
{    
    __block BOOL isFinished = NO;
    __block int innerResult = -1;
    
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    dispatch_async(queue, ^void(void) {
        
        innerResult = LinearSearchProcNEON(&pSrc[length / 2], length / 2, 1);
        isFinished = YES;
    });
    
    int outerResult = LinearSearchProcNEON(pSrc, length / 2, 1);
    
    while(!isFinished)
        __asm__("yield");
    
    if(innerResult > -1)
        outerResult = innerResult + (length / 2);
    
    dispatch_release(queue);
    
    return outerResult;
}

#pragma mark - 

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
