//
//  ZennyMemoryCopyViewController.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-27.
//
//

#import "ZennyMemoryCopyViewController.h"
#import "ZennyUITag.h"
#import "ZennyPickerView.h"
#import "LavenderDeviceInfo.h"


@interface ZennyMemoryCopyViewController ()

@end

@implementation ZennyMemoryCopyViewController

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
    @"32 kilobytes",
    @"128 kilobytes",
    @"1 megabytes",
    @"2 megabytes",
    @"4 megabytes",
    @"8 megabytes"
};

static NSString* const calcForms[] = {
    @"Naive",
    @"ARMv6 based",
    @"NEON",
    @"NEON with Prefetch",
    @"Library",
    @"Duo-core"
};

static const size_t arrayTotalLengths[] = {
    32 * 1024UL,
    128 * 1024UL,
    1 * 1024 * 1024UL,
    2 * 1024 * 1024UL,
    4 * 1024 * 1024UL,
    8 * 1024 * 1024UL
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
    title.text = @"Memory Copy";
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
    label.text = @"Calculation form:";
    [self.view addSubview:label];
    [label release];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 100.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:calcForms[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(formTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 150.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:@"Calculate" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(calculateTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    width = 0.875 * screenBounds.size.width;
    edgeMargin = (screenBounds.size.width - width) * 0.5f;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 210.0f, width, 80.0f)];
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

#pragma mark - button events

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

- (void)calculateTouched:(id)sender
{
    if(!mCanBeTouched)
        return;
    mCanBeTouched = NO;
    
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.hidden = NO;
    label.text = @"This may take several seconds. Please wait...";
    [self performSelector:@selector(doCalculate:) withObject:label afterDelay:0.1];
}

#pragma mark - Calculations

static void MemoryCopy(void *pDst, const void *pSrc, size_t nBytes);
static void MemoryCopyLib(void *pDst, const void *pSrc, size_t nBytes);
static void MemoryCopyDuoCore(void *pDst, const void *pSrc, size_t nBytes);
extern void ZennyMemoryCopy(void *pDst, const void *pSrc, size_t length);
extern void ZennyMemoryCopyNEON(void *pDst, const void *pSrc, size_t length);
extern void ZennyMemoryCopyPrefetch(void *pDst, const void *pSrc, size_t length);
extern int ZennyAtomAddBefore(volatile int *pValue, int incValue); 

static void (* const pFuncList[])(void*, const void*, size_t) = {
    &MemoryCopy,
    &ZennyMemoryCopy,
    &ZennyMemoryCopyNEON,
    &ZennyMemoryCopyPrefetch,
    &MemoryCopyLib,
    &MemoryCopyDuoCore
};

- (void)doCalculate:(UILabel*)label
{
    /** Just for test */
#if 0
    int __attribute__((aligned(64))) buf1[64], buf2[64];
    for(int i = 0; i < 64; i++)
        buf1[i] = i;
    memset(buf2, 0, 256);
    
    ZennyMemoryCopyPrefetch(buf2, buf1, 256);
#endif
    
    size_t initAddress = (size_t)mSrcBuffer;
    // 64 bytes aligned
    int *pAlignedSrcMem = (int*)((initAddress + 63) & ~63);
    
    initAddress = (size_t)mDstBuffer;
    int *pAlignedDstMem = (int*)((initAddress + 63) & ~63);
    
    size_t length = arrayTotalLengths[mArrayLengthIndex];
    
    // Initialize the buffer
    for(size_t i = 0; i < length / 4; i++)
        pAlignedSrcMem[i] = i;
    memset(pAlignedDstMem, 0, length);
    
    // Do calculation
    NSTimeInterval beginTimes[5];
    NSTimeInterval endTimes[5];
    NSTimeInterval deltaResults[5];
    NSProcessInfo *processor = [NSProcessInfo processInfo];
    void (*pCalcProc)(void*, const void*, size_t) = pFuncList[mCalcFormIndex];
    for(int i = 0; i < 5; i++)
    {
        beginTimes[i] = [processor systemUptime];
        (*pCalcProc)(pAlignedDstMem, pAlignedSrcMem, length);
        endTimes[i] = [processor systemUptime];
    }
    
#if 0
    /** Verification */
    
    for(size_t i = 0; i < length / 4; i++)
    {
        if(pAlignedSrcMem[i] != pAlignedDstMem[i])
        {
            NSLog(@"Not equal @: %lu", i);
            break;
        }
    }
    NSLog(@"Verification finished!");

#endif
    
    // Statistics
    for(int i = 0; i < 5; i++)
        deltaResults[i] = endTimes[i] - beginTimes[i];
    
    NSTimeInterval minTime = deltaResults[0];
    NSTimeInterval maxTime = deltaResults[0];
    NSTimeInterval sumTime = deltaResults[0];
    for(int i = 1; i < 5; i++)
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
    
    label.text = [NSString stringWithFormat:@"Maximum time spent: %.3f ms\nAverage time spent: %.3f ms\nMinimum time spent: %.3f ms", maxTime, sumTime / 5.0, minTime];
    
    mCanBeTouched = YES;
}

static void MemoryCopy(void *pDst, const void *pSrc, size_t nBytes)
{
    unsigned char *dstBuf = (unsigned char*)pDst;
    const unsigned char *srcBuf = (const unsigned char*)pSrc;
    
    for(size_t i = 0; i < nBytes; i++)
        dstBuf[i] = srcBuf[i];
}

static void MemoryCopyLib(void *pDst, const void *pSrc, size_t nBytes)
{
    memcpy(pDst, pSrc, nBytes);
}

static void MemoryCopyDuoCore(void *pDst, const void *pSrc, size_t nBytes)
{
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    __block BOOL isFinished = NO;
    __block int index = 0;
    
    unsigned char *pDstBuf = (unsigned char*)pDst;
    const unsigned char *pSrcBuf = (const unsigned char*)pSrc;
    
    dispatch_async(queue, ^void(void) {
        for(int i = ZennyAtomAddBefore(&index, 8 * 1024); i < nBytes; i = ZennyAtomAddBefore(&index, 8 * 1024))
            ZennyMemoryCopyPrefetch(&pDstBuf[i], &pSrcBuf[i], 8 * 1024);
        
        isFinished = YES;
    });
    
    for(int i = ZennyAtomAddBefore(&index, 8 * 1024); i < nBytes; i = ZennyAtomAddBefore(&index, 8 * 1024))
        ZennyMemoryCopyPrefetch(&pDstBuf[i], &pSrcBuf[i], 8 * 1024);
    
    while(!isFinished)
        __asm__("yield");
    
    dispatch_release(queue);
}

#pragma mark -

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


