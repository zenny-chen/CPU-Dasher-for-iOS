//
//  ZennyGLViewController.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-18.
//
//

#import "ZennyGLViewController.h"

@interface ZennyGLViewController ()

@end

@implementation ZennyGLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    CGFloat width = self.view.bounds.size.width;
    CGFloat height = self.view.bounds.size.height;
    CGFloat imageHeigth = width;
    
    ZennyGLView *glView = [[ZennyGLView alloc] initWithFrame:CGRectMake(0.0f, (height - imageHeigth) * 0.5f, width, imageHeigth)];
    glView.backgroundColor = [UIColor clearColor];
    glView.contentScaleFactor = [UIScreen mainScreen].scale;
    glView->ipTextureData = iImageData;
    [glView determineShaders:iCalcForm];
    [self.view addSubview:glView];
    [glView release];
    
    UIButton *button = [[UIButton alloc] initWithFrame:self.view.bounds];
    button.backgroundColor = [UIColor clearColor];
    [button addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button release];
}

- (void)buttonTouched:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
