//
//  ZennyKernelAverageSmootherViewController.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-5-5.
//
//

#import "ZennyKernelAverageSmootherViewController.h"
#import "LavenderDeviceInfo.h"
#import "ZennyPickerView.h"
#import "ZennyPlainImageViewController.h"
#import "ZennyViewDstImageViewController.h"
#import "ZennyGLViewController.h"
#import "ZennyUITag.h"

@interface ZennyKernelAverageSmootherViewController ()

@end

@implementation ZennyKernelAverageSmootherViewController

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

static NSString* const kernelSizes[] = {
    @"3x3",
    @"5x5"
};

static NSString* const calcForms[] = {
    @"Naive",
    @"ARMv6 based",
    @"NEON",
    @"GPU based",
    @"Duo-core"
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
    title.text = @"Kernel Average Smoother";
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
    
    UIControlContentHorizontalAlignment buttonAlignment = [UIViewController instancesRespondToSelector:@selector(prefersStatusBarHidden)]? UIControlContentHorizontalAlignmentLeft : UIControlContentHorizontalAlignmentCenter;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 50.0f, width, 30.0f)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentRight;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"Calculation form:";
    [self.view addSubview:label];
    [label release];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 50.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:calcForms[0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(formTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(rightX, 100.0f, width, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:@"Calculate" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(calculateTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    buttonAlignment = UIControlContentHorizontalAlignmentRight;
    
    if(width < 160.0f)
    {
        width = 160.0f;
        buttonAlignment = UIControlContentHorizontalAlignmentCenter;
    }
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(edgeMargin, 150.0f, width + 10.0f, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:@"View original image" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(viewOrgImageTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.tag = VIEW_DST_IMAGE_BUTTON_TAG;
    button.frame = CGRectMake(edgeMargin, 200.0f, width + 10.0f, 30.0f);
    button.contentHorizontalAlignment = buttonAlignment;
    [button setTitle:@"View processed image" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(viewDstImageTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.hidden = YES;
    
    width = 0.875 * screenBounds.size.width;
    edgeMargin = (screenBounds.size.width - width) * 0.5f;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(edgeMargin, 260.0f, width, 100.0f)];
    label.tag = CALC_AVERAGE_LABEL_TAG;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentLeft;
    label.font = [UIFont fontWithName:@"Helvetica" size:16.0f];
    label.text = @"";
    label.numberOfLines = 5;
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

- (void)kernelSizeTouched:(id)sender
{
    if(!mCanBeTouched)
        return;
    mCanBeTouched = NO;
    
    UIButton *dstImageButton = (UIButton*)[self.view viewWithTag:VIEW_DST_IMAGE_BUTTON_TAG];
    dstImageButton.hidden = YES;
    
    CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height - 20.0f;
    
    ZennyPickerView *pickerView = [[ZennyPickerView alloc] initWithFrame:CGRectMake(0.0f, screenHeight, 0.0f, 0.0f)];
    pickerView->inputButton = sender;
    pickerView->pOutputIndex = &mKernelSizeIndex;
    pickerView->pIsFinished = &mCanBeTouched;
    [pickerView initPickerView:kernelSizes count:sizeof(kernelSizes) / sizeof(kernelSizes[0])];
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
    
    UIButton *dstImageButton = (UIButton*)[self.view viewWithTag:VIEW_DST_IMAGE_BUTTON_TAG];
    dstImageButton.hidden = YES;
    
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

- (void)viewOrgImageTouched:(id)sender
{
    if(!mCanBeTouched)
        return;
    
    ZennyPlainImageViewController *ctrl = [[ZennyPlainImageViewController alloc] init];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentModalViewController:ctrl animated:YES];
    [ctrl release];
}

- (void)viewDstImageTouched:(id)sender
{
    if(!mCanBeTouched)
        return;
    
    UIViewController *viewController;
    
    if(mCalcFormIndex != 3)
    {
        size_t initAddress = (size_t)mDstBuffer;
        unsigned char *pAlignedDstBuffer = (unsigned char*)((initAddress + 31) & ~31);
        
        ZennyViewDstImageViewController *ctrl = [[ZennyViewDstImageViewController alloc] init];
        ctrl->iImageBuffer = pAlignedDstBuffer;
        ctrl->iImageWidth = 2048;
        ctrl->iImageHeight = 2048;
        viewController = ctrl;
    }
    else
    {
        size_t initAddress = (size_t)mSrcBuffer;
        unsigned char *pAlignedDstBuffer = (unsigned char*)((initAddress + 31) & ~31);
        
        ZennyGLViewController *ctrl = [[ZennyGLViewController alloc] init];
        ctrl->iCalcForm = ZENNY_SHADER_CALC_CONVOLUTION_KERNEL3X3;
        ctrl->iImageData = pAlignedDstBuffer;
        viewController = ctrl;
    }
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentModalViewController:viewController animated:YES];
    [viewController release];
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

static void KernelSmooth3x3(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth);
extern void KernelSmooth3x3Opt(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth);
extern void KernelSmooth3x3NEON(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth);
extern void KernelSmooth3x3DuoCore(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth);
static void KernelSmooth3x3DuoCoreCalc(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth);

static void (* const sCalcFuncs[1][5])(unsigned char*, const unsigned char*, size_t) = {
    { &KernelSmooth3x3, &KernelSmooth3x3Opt, &KernelSmooth3x3NEON, NULL, &KernelSmooth3x3DuoCoreCalc }
};

- (void)doCalculate:(UILabel*)label
{
    size_t initAddress = (size_t)mSrcBuffer;
    // 32 bytes aligned
    unsigned char *pAlignedSrcBuffer = (unsigned char*)((initAddress + 31) & ~31);
    initAddress = (size_t)mDstBuffer;
    unsigned char *pAlignedDstBuffer = (unsigned char*)((initAddress + 31) & ~31);
    
    CGBitmapInfo bitmapInfo = kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big;
    
    // Initialize the source image buffer
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGContextRef context = CGBitmapContextCreate(pAlignedSrcBuffer,
												 2048,
												 2048,
												 8,         /* bits per component*/
												 2048 * 4,  /* bytes per row */
												 colorSpace,
												 bitmapInfo);
    
	CGColorSpaceRelease(colorSpace);
    
    CGContextTranslateCTM(context, 0.0f, 2048.0f);
    CGContextScaleCTM(context, 1.0f, -1.0f);
    
    UIImage *image = [UIImage imageNamed:@"photo.jpg"];
    
    CGContextDrawImage(context, CGRectMake(0.0f, 0.0f, 2048.0f, 2048.0f), [image CGImage]);
    CGContextRelease(context);
    
    void (*pFunc)(unsigned char*, const unsigned char*, size_t) = sCalcFuncs[mKernelSizeIndex][mCalcFormIndex];
    
    const int numberOfStats = 5;
    NSTimeInterval beginTimes[numberOfStats], endTimes[numberOfStats], deltaTimes[numberOfStats];
    
    // Do calculate
    if(mCalcFormIndex != 3)
    {
        for(int i = 0; i < numberOfStats; i++)
        {
            beginTimes[i] = [[NSProcessInfo processInfo] systemUptime];
            (*pFunc)(pAlignedDstBuffer, pAlignedSrcBuffer, (2048 << 16) | 2048);
            endTimes[i] = [[NSProcessInfo processInfo] systemUptime];
        }
        
#if 0
        unsigned int *pSrc = (unsigned int*)pAlignedSrcBuffer;
        printf("Upper: ");
        for(int i = 2045; i < 2048; i++)
            printf("0x%.8X  ", pSrc[2048 * 0 + i]);
        printf("\nCenter: ");
        for(int i = 2045; i < 2048; i++)
            printf("0x%.8X  ", pSrc[2048 * 1 + i]);
        printf("\nNext: ");
        for(int i = 2045; i < 2048; i++)
            printf("0x%.8X  ", pSrc[2048 * 2 + i]);
        
        unsigned int *tmpBuffer = (unsigned int*)malloc(2048 * 2048 * 4);
        KernelSmooth3x3((unsigned char*)tmpBuffer, pAlignedSrcBuffer, (2048 << 16) | 2048);
        unsigned int *pDst = (unsigned int*)pAlignedDstBuffer;
        
        for(int row = 0; row < 2048; row++)
        {
            BOOL isToBreak = NO;
            for(int col = 0; col < 2048; col++)
            {
                if(tmpBuffer[row * 2048 + col] != pDst[row * 2048 + col])
                {
                    NSLog(@"Diff @row: %d, @col: %d, org = 0x%.8X, dst = 0x%.8X", row, col, tmpBuffer[row * 2048 + col], pDst[row * 2048 + col]);
                    isToBreak = YES;
                    break;
                }
            }
            if(isToBreak)
                break;
        }
        free(tmpBuffer);
#endif
        
        deltaTimes[0] = endTimes[0] - beginTimes[0];
        NSTimeInterval minTime = deltaTimes[0];
        NSTimeInterval maxTime = minTime;
        NSTimeInterval sumTime = minTime;
        
        for(int i = 1; i < numberOfStats; i++)
        {
            deltaTimes[i] = endTimes[i] - beginTimes[i];
            if(minTime > deltaTimes[i])
                minTime = deltaTimes[i];
            if(maxTime < deltaTimes[i])
                maxTime = deltaTimes[i];
            sumTime += deltaTimes[i];
        }
        minTime *= 1000.0;
        maxTime *= 1000.0;
        sumTime *= 1000.0;
        
        label.text = [NSString stringWithFormat:@"Photo resolution: 2048x2048\nKernel size: 3x3\nMaximum time spent: %.3f ms\nAverage time spent: %.3f ms\nMinimum time spent: %.3f ms", maxTime, sumTime / (double)numberOfStats, minTime];
    }
    else
    {
        mGLView = [[ZennyGLView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 2048.0f, 2048.0f)];
        [mGLView determineShaders:ZENNY_SHADER_CALC_CONVOLUTION_KERNEL3X3];
        if(mGLView == nil)
        {
            label.text = @"Your device is not available for GPU processing!";
            mCanBeTouched = YES;
            return;
        }
        [mGLView layoutSubviews];
        if(![mGLView isCapableForGLProcessing])
        {
            label.text = @"The GPU's max texture size is not large enough for processing the photo!";
            mCanBeTouched = YES;
            [mGLView release];
            return;
        }
        mGLView->ipTextureData = pAlignedSrcBuffer;
        mGLView->iTargetObject = self;
        mGLView->iCompleteSelector = @selector(statsGLComputeFinish);
        [mGLView startAnimate];
        return;
    }
    
    mCanBeTouched = YES;
    
    UIButton *dstImageButton = (UIButton*)[self.view viewWithTag:VIEW_DST_IMAGE_BUTTON_TAG];
    dstImageButton.hidden = NO;
}

- (void)statsGLComputeFinish
{
    UILabel *label = (UILabel*)[self.view viewWithTag:CALC_AVERAGE_LABEL_TAG];
    label.text = [NSString stringWithFormat:@"Photo resolution: 2048x2048\nKernel size: 3x3\nMaximum time spent: %.3f ms\nAverage time spent: %.3f ms\nMinimum time spent: %.3f ms", mGLView->iMaxTime, mGLView->iAverageTime, mGLView->iMinTime];
    [mGLView performSelector:@selector(release) withObject:nil afterDelay:0.1];
    
    UIButton *dstImageButton = (UIButton*)[self.view viewWithTag:VIEW_DST_IMAGE_BUTTON_TAG];
    dstImageButton.hidden = NO;
    mCanBeTouched = YES;
}

static void KernelSmooth3x3(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth)
{
    const int width = heightWidth & 0xffff;
    const int height = heightWidth >> 16;
    const int rowBytes = width * 4;
    
    int upperRowIndex = -rowBytes;
    int currentRowIndex = 0;
    int nextRowIndex = rowBytes;
    
    for(int row = 0; row < height; row++)
    {
        for(int col = 0; col < rowBytes; col += 4)
        {
            int nValues = 0;
            int sumR = 0, sumG = 0, sumB = 0;
            
            // for Upper row
            int cursor = upperRowIndex + col;
            if(cursor >= 0)
            {
                // cursor - 1
                if(cursor - 4 >= upperRowIndex)
                {
                    sumB += pSrcImage[cursor - 4 + 0];
                    sumG += pSrcImage[cursor - 4 + 1];
                    sumR += pSrcImage[cursor - 4 + 2];
                    nValues++;
                }
                
                // cursor
                sumB += pSrcImage[cursor + 0];
                sumG += pSrcImage[cursor + 1];
                sumR += pSrcImage[cursor + 2];
                nValues++;
                
                // cursor + 1
                if(cursor + 4 < currentRowIndex)
                {
                    sumB += pSrcImage[cursor + 4 + 0];
                    sumG += pSrcImage[cursor + 4 + 1];
                    sumR += pSrcImage[cursor + 4 + 2];
                    nValues++;
                }
            }
            
            // current row
            cursor = currentRowIndex + col;
            if(cursor - 4 >= currentRowIndex)
            {
                sumB += pSrcImage[cursor - 4 + 0];
                sumG += pSrcImage[cursor - 4 + 1];
                sumR += pSrcImage[cursor - 4 + 2];
                nValues++;
            }
            
            sumB += pSrcImage[cursor + 0];
            sumG += pSrcImage[cursor + 1];
            sumR += pSrcImage[cursor + 2];
            nValues++;
            
            if(cursor + 4 < nextRowIndex)
            {
                sumB += pSrcImage[cursor + 4 + 0];
                sumG += pSrcImage[cursor + 4 + 1];
                sumR += pSrcImage[cursor + 4 + 2];
                nValues++;
            }
            
            // next row
            cursor = nextRowIndex + col;
            if(cursor < rowBytes * height)
            {
                if(cursor - 4 >= nextRowIndex)
                {
                    sumB += pSrcImage[cursor - 4 + 0];
                    sumG += pSrcImage[cursor - 4 + 1];
                    sumR += pSrcImage[cursor - 4 + 2];
                    nValues++;
                }
                
                sumB += pSrcImage[cursor + 0];
                sumG += pSrcImage[cursor + 1];
                sumR += pSrcImage[cursor + 2];
                nValues++;
                
                if(cursor + 4 < nextRowIndex + rowBytes)
                {
                    sumB += pSrcImage[cursor + 4 + 0];
                    sumG += pSrcImage[cursor + 4 + 1];
                    sumR += pSrcImage[cursor + 4 + 2];
                    nValues++;
                }
            }
            
            // sum-up
            pDstImage[currentRowIndex + col + 0] = sumB / nValues;
            pDstImage[currentRowIndex + col + 1] = sumG / nValues;
            pDstImage[currentRowIndex + col + 2] = sumR / nValues;
            pDstImage[currentRowIndex + col + 3] = 255;
        }
        upperRowIndex += rowBytes;
        currentRowIndex += rowBytes;
        nextRowIndex += rowBytes;
    }
}

static void KernelSmooth3x3DuoCoreCalc(unsigned char *pDstImage, const unsigned char *pSrcImage, size_t heightWidth)
{
    dispatch_queue_t queue = dispatch_queue_create("Zenny_Queue", NULL);
    
    __block BOOL isFinished = NO;
    
    dispatch_async(queue, ^void(void) {
        
        KernelSmooth3x3DuoCore(pDstImage, pSrcImage, (1 << 31) | (2048 << 16) | 2048);
        isFinished = YES;
    });
    
    KernelSmooth3x3DuoCore(pDstImage, pSrcImage, (2048 << 16) | 2048);
    
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
