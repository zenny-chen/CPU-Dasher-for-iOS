//
//  ViewController.m
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-20.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import "ViewController.h"
#import "ZennyOverviewViewController.h"
#import "ZennyISAViewController.h"
#import "ZennyPerformanceViewController.h"

#include "ZennyUITag.h"

#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)prefersStatusBarHidden
{
    return NO;
}

- (void)sortTest
{
    int a[] = {2, 5, 6, 9};
    
    // Depth 0
    // comparator A
    if(a[0] > a[1])
    {
        int temp = a[0];
        a[0] = a[1];
        a[1] = temp;
    }
    // Comparator B
    if(a[2] > a[3])
    {
        int temp = a[2];
        a[2] = a[3];
        a[3] = temp;
    }
    
    // Depth 1
    // Comparator C
    if(a[0] > a[2])
    {
        int temp = a[0];
        a[0] = a[2];
        a[2] = temp;
    }
    // Comparator D
    if(a[1] > a[3])
    {
        int temp = a[1];
        a[1] = a[3];
        a[3] = temp;
    }
    
    // Depth 2
    // Comparator E
    if(a[1] > a[2])
    {
        int temp = a[1];
        a[1] = a[2];
        a[2] = temp;
    }
    
    printf("The result is: ");
    for(int i = 0; i < sizeof(a) / sizeof(a[0]); i++)
        printf("%d  ", a[i]);
    puts("");
}

void BitonicSort(int array[], size_t length)
{
    for(size_t k = 2; k <= length; k *= 2)
    {
        for(size_t j = k / 2; j > 0; j /= 2)
        {
            for(size_t i = 0; i < length; i++)
            {
                size_t cmpIndex = i ^ j;
                if(cmpIndex > i)
                {
                    if((i & k) == 0 && array[i] > array[cmpIndex])
                    {
                        int temp = array[i];
                        array[i] = array[cmpIndex];
                        array[cmpIndex] = temp;
                    }
                    else if((i & k) != 0 && array[i] < array[cmpIndex])
                    {
                        int temp = array[i];
                        array[i] = array[cmpIndex];
                        array[cmpIndex] = temp;
                    }
                }
            }
        }
    }
}

- (void)loadView
{
    [super loadView];
    
    self.wantsFullScreenLayout = YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
#if 0
    
    [self sortTest];
    
    int buf[] = { 5, 2, 6, 7, 3, 9, 1, 4 };
    BitonicSort(buf, sizeof(buf) / sizeof(buf[0]));
    
    extern void instTest(void);
    
    instTest();
    
    extern int clipFunc(int);
    
    NSLog(@"The value is: %d", clipFunc(256));
    
#endif
    
    overviewController = [[ZennyOverviewViewController alloc] init];
    isaController = [[ZennyISAViewController alloc] init];
    performanceController = [[ZennyPerformanceViewController alloc] init];
    isaNaviController = [[UINavigationController alloc] initWithRootViewController:isaController];
    isaNaviController.toolbarHidden = YES;
    isaNaviController.navigationBarHidden = YES;
    isaNaviController.delegate = isaController;
    
    perfNaviController = [[UINavigationController alloc] initWithRootViewController:performanceController];
    perfNaviController.toolbarHidden = YES;
    perfNaviController.navigationBarHidden = YES;
    
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    isaNaviController.view.frame = CGRectMake(0.0f, 20.0f, screenBounds.size.width, screenBounds.size.height - 20.0f);
    isaNaviController.view.backgroundColor = [UIColor clearColor];
    
    perfNaviController.view.frame = CGRectMake(0.0f, 20.0f, screenBounds.size.width, screenBounds.size.height - 20.0f);
    perfNaviController.view.backgroundColor = [UIColor clearColor];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"Overview" image:[UIImage imageNamed:@"baritem_device.png"] tag:ROOT_TABBARITEM1_TAG];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"Instruction cycles" image:[UIImage imageNamed:@"baritem_instructions.png"] tag:ROOT_TABBARITEM2_TAG];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"Performance" image:[UIImage imageNamed:@"baritem_rank.png"] tag:ROOT_TABBARITEM3_TAG];
    
    CGFloat dheight = [UIViewController instancesRespondToSelector:@selector(prefersStatusBarHidden)]? 55.0f : 45.0f;
    
    UITabBar *tabBar = [[UITabBar alloc] initWithFrame:CGRectMake(0.0f, screenBounds.size.height - dheight, screenBounds.size.width, 45.0f)];
    tabBar.layer.contentsScale = [[UIScreen mainScreen] scale];
    tabBar.items = [NSArray arrayWithObjects:item1, item2, item3, nil];
    [item1 release];
    [item2 release];
    [item3 release];
    
    tabBar.delegate = self;
    tabBar.selectedItem = item1;
    [self.view addSubview:tabBar];
    [tabBar release];
    
    [self.view insertSubview:overviewController.view belowSubview:tabBar];
    currController = overviewController;
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    [currController.view removeFromSuperview];
    
    switch(item.tag)
    {
        case ROOT_TABBARITEM1_TAG:
            currController = overviewController;
            break;
            
        case ROOT_TABBARITEM2_TAG:
            currController = isaNaviController;
            break;
            
        case ROOT_TABBARITEM3_TAG:
            currController = perfNaviController;
            break;
    }
    
    [self.view insertSubview:currController.view belowSubview:tabBar];
}

- (void)becomeInactive
{
    [overviewController destroyCells];
}

- (void)becomeActive
{
    [overviewController createCells];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end


