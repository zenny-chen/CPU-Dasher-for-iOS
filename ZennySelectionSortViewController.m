//
//  ZennySelectionSortViewController.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-25.
//
//

#import "ZennySelectionSortViewController.h"
#import "ZennyPickerView.h"
#import "LavenderDeviceInfo.h"
#import "ZennyUITag.h"

@interface ZennySelectionSortViewController ()

@end

@implementation ZennySelectionSortViewController

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
    @"10 kilobytes",
    @"20 kilobytes",
    @"40 kilobytes",
    @"80 kilobytes"
};

static NSString* const dataTypes[] = {
    @"Integer",
    @"Float"
};

static NSString* const calcForms[] = {
    @"Naive",
    @"ARMv6 based"
};

static const size_t arrayTotalLengths[] = {
    10 * 1024UL,
    20 * 1024UL,
    40 * 1024UL,
    80 * 1024UL
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
    title.text = @"Selection Sort";
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
    label.text = @"Data type:";
    [self.view addSubview:label];
    [label release];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 100.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:dataTypes[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(dataTypeTouched:) forControlEvents:UIControlEventTouchUpInside];
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

#pragma mark - button events

- (void)backButtonTouched:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)arrayLengthTouched:(id)sender
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

- (void)dataTypeTouched:(UIButton*)sender
{
    if(!mCanBeTouched)
        return;
    mCanBeTouched = NO;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &mDataTypeIndex;
    pickerView->pIsFinished = &mCanBeTouched;
    NSUInteger forms = sizeof(dataTypes) / sizeof(dataTypes[0]);
    [pickerView initPickerView:dataTypes count:forms];
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

#pragma mark - calculation

extern void ZennySelectionSort(int *pBuffer, size_t length);
extern void ZennySelectionSortFloat(float *pBuffer, size_t length);
static void SelectionSort(int *pBuffer, size_t length);
//static void SelectionSortOpt(int *pBuffer, size_t length);
static void SelectionSortFloat(float *pBuffer, size_t length);

static void (* const sCalcFuncList[])(int*, size_t) = {
    &SelectionSort,
    &ZennySelectionSort,
};

static void (* const sCalcFuncListFloat[])(float*, size_t) = {
    &SelectionSortFloat,
    &ZennySelectionSortFloat
};

- (void)doCalculate:(UILabel*)label
{
    size_t length = arrayTotalLengths[mArrayLengthIndex];
    
    // Get the number of total elements
    length /= 4;
    
    float *pBuf = (float*)mArrayBuffer;
    
    if(mDataTypeIndex == 0)
    {
        for(int i = 0; i < length; i++)
            mArrayBuffer[i] = i + 1;
    }
    else
    {
        for(int i = 0; i < length; i++)
            pBuf[i] = (float)i + 1.0f;
    }
#if 0
    ZennySelectionSortFloat(pBuf, 8);
    printf("The elements: ");
    for(int i = 0; i < 8; i++)
        printf("%f  ", pBuf[i]);
    puts("");
#endif
    
    // Do calculation
    NSTimeInterval beginTimes[5];
    NSTimeInterval endTimes[5];
    NSTimeInterval deltaResults[5];
    NSProcessInfo *processor = [NSProcessInfo processInfo];
    
    if(mDataTypeIndex == 0)
    {
        for(int i = 0; i < 5; i++)
        {
            beginTimes[i] = [processor systemUptime];
            (*sCalcFuncList[mCalcFormIndex])(mArrayBuffer, length);
            endTimes[i] = [processor systemUptime];
        }
    }
    else
    {
        for(int i = 0; i < 5; i++)
        {
            beginTimes[i] = [processor systemUptime];
            (*sCalcFuncListFloat[mCalcFormIndex])(pBuf, length);
            endTimes[i] = [processor systemUptime];
        }
    }
    
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
    
    label.text = [NSString stringWithFormat:@"Total elements: %lu\nMaximum time spent: %.3f ms\nAverage time spent: %.3f ms\nMinimum time spent: %.3f ms", length, maxTime, sumTime / 5.0, minTime];
    
    mCanBeTouched = YES;
}

static void SelectionSort(int *pBuffer, size_t length)
{
    for(size_t i = 0; i < length - 1; i++)
    {
        size_t maxIndex = i;
        
        for(size_t j = i + 1; j < length; j++)
        {
            if(pBuffer[maxIndex] < pBuffer[j])
                maxIndex = j;
        }
        if(maxIndex != i)
        {
            int temp = pBuffer[maxIndex];
            pBuffer[maxIndex] = pBuffer[i];
            pBuffer[i] = temp;
        }
    }
}

#if 0

static void SelectionSortOpt(int *pBuffer, size_t length)
{
    const size_t traverseCount = length - 1;
    size_t innerLoopCount = traverseCount;
    
    for(size_t firstIndex = 0; firstIndex < traverseCount; firstIndex++)
    {
        int maxValue = pBuffer[firstIndex];
        size_t maxIndex = firstIndex;
        
        for(size_t j = innerLoopCount, k = maxIndex; j != 0; j--)
        {
            int value = pBuffer[++k];
            if(maxValue < value)
            {
                maxValue = value;
                maxIndex = k;
            }
        }
        if(maxIndex != firstIndex)
        {
            pBuffer[maxIndex] = pBuffer[firstIndex];
            pBuffer[firstIndex] = maxValue;
        }
        
        innerLoopCount--;
    }
}

#endif

static void SelectionSortFloat(float *pBuffer, size_t length)
{
    for(size_t i = 0; i < length - 1; i++)
    {
        size_t maxIndex = i;
        
        for(size_t j = i + 1; j < length; j++)
        {
            if(pBuffer[maxIndex] < pBuffer[j])
                maxIndex = j;
        }
        if(maxIndex != i)
        {
            float temp = pBuffer[maxIndex];
            pBuffer[maxIndex] = pBuffer[i];
            pBuffer[i] = temp;
        }
    }
}

#pragma mark -

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


