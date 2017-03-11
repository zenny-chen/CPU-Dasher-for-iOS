//
//  ViewController.h
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-20.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZennyISAViewController;
@class ZennyOverviewViewController;
@class ZennyPerformanceViewController;

@interface ViewController : UIViewController<UITabBarDelegate>
{
    ZennyISAViewController *isaController;
    ZennyPerformanceViewController *performanceController;
    UINavigationController *isaNaviController, *perfNaviController;
    
    UIViewController *currController;
    
@public
    
    ZennyOverviewViewController *overviewController;
}

- (void)becomeInactive;
- (void)becomeActive;

@end


