//
//  ZennyISAViewController.h
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-20.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZennyInstViewController;

@interface ZennyISAViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UINavigationControllerDelegate>
{
    NSMutableArray *integerSets;
    NSMutableArray *neonSets;
    NSMutableArray *loadStoreSets;
    NSMutableArray *miscelleneousSets;
    
    ZennyInstViewController *instController;
}

@end
