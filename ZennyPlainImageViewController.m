//
//  ZennyPlainImageViewController.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-17.
//
//

#import "ZennyPlainImageViewController.h"

@interface ZennyPlainImageViewController ()

@end

@implementation ZennyPlainImageViewController

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
    aView.backgroundColor = [UIColor blackColor];
    self.view = aView;
    [aView release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    CGFloat height = self.view.bounds.size.height;
    CGFloat imageHeight = self.view.bounds.size.width;
    CGFloat y = (height - imageHeight) * 0.5f;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, y, self.view.bounds.size.width, imageHeight)];
    imageView.backgroundColor = [UIColor clearColor];
    imageView.image = [UIImage imageNamed:@"photo.jpg"];
    imageView.contentScaleFactor = [UIScreen mainScreen].scale;
    [self.view addSubview:imageView];
    [imageView release];
    
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
