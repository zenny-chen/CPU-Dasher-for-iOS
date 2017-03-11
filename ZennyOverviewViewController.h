//
//  ZennyOverviewViewController.h
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-21.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZennyOverviewViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *deviceCells;
    NSMutableArray *cpuCells;
    NSArray *cellList[2];
    
@private
    
    NSURL *appBackURL;
}

@property (nonatomic, retain) NSURL *appBackURL;

- (void)createCells;
- (void)destroyCells;

- (void)addBackButton:(NSURL*)backURL;
- (void)removeBackButton;

@end

