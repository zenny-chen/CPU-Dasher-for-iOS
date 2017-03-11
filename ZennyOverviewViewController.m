//
//  ZennyOverviewViewController.m
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-21.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import "ZennyOverviewViewController.h"
#import "LavenderDeviceInfo.h"

#include "ZennyUITag.h"

@interface ZennyOverviewViewController ()

@end

static NSString* sectionTitles[] = {
    @"Device info",
    @"CPU info"
};

extern int getUserEnabled(void);

@implementation ZennyOverviewViewController

@synthesize appBackURL;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [self destroyCells];
    
    [super dealloc];
}

- (void)destroyCells
{
    if(deviceCells != nil)
    {
        [deviceCells removeAllObjects];
        [deviceCells release];
        deviceCells = nil;
    }
    if(cpuCells != nil)
    {
        [cpuCells removeAllObjects];
        [cpuCells release];
        cpuCells = nil;
    }
    
    [LavenderDeviceInfo destroyInstance];
}

static int GetIntegralFrequency(int freq)
{
    int remainder = freq % 100;
    if(remainder > 90)
        freq += 100 - remainder;
    
    return freq;
}

- (void)createCells
{
    deviceCells = [[NSMutableArray alloc] initWithCapacity:16];
    cpuCells = [[NSMutableArray alloc] initWithCapacity:24];
    cellList[0] = deviceCells;
    cellList[1] = cpuCells;
    
    NSString* titles[20];
    NSString* values[20];
    
    LavenderDeviceInfo *deviceInfo = [LavenderDeviceInfo getInstance];
    
    NSInteger index = 0;
    
    titles[index] = @"Device:";
    values[index++] = deviceInfo->deviceCategory;
    
    titles[index] = @"Device Model:";
    values[index++] = deviceInfo->machineDetail;
    
    titles[index] = @"iOS Version:";
    values[index++] = deviceInfo->osVersion;
    
    titles[index] = @"Memory Size:";
    values[index++] = [NSString stringWithFormat:@"%lld MB", deviceInfo->memSize / (1024 * 1024)];
    
    titles[index] = @"Screen Resolution:";
    CGFloat scale = [UIScreen mainScreen].scale;
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    values[index++] = [NSString stringWithFormat:@"%dx%d", (int)(screenSize.width * scale), (int)(screenSize.height * scale)];
    
    titles[index] = @"IP Address:";
    values[index++] = deviceInfo->ipAddr;
    
    CGFloat halfWidth = ([UIScreen mainScreen].bounds.size.width - 40.0f) * 0.5f;
    
    for(NSInteger i = 0; i < index; i++)
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, halfWidth, cell.bounds.size.height)];
        title.backgroundColor = [UIColor clearColor];
        title.textAlignment = UITextAlignmentCenter;
        title.textColor = [UIColor blackColor];
        title.font = [UIFont fontWithName:@"Helvetica-Bold" size:15.0f];
        title.text = titles[i];
        [cell.contentView addSubview:title];
        [title release];
        
        UILabel *value = [[UILabel alloc] initWithFrame:CGRectMake(halfWidth + 10.0f, 0.0f, halfWidth, cell.bounds.size.height)];
        value.backgroundColor = [UIColor clearColor];
        value.textAlignment = UITextAlignmentCenter;
        value.textColor = [UIColor blackColor];
        value.font = [UIFont fontWithName:@"Helvetica" size:15.0f];
        value.text = values[i];
        [cell.contentView addSubview:value];
        [value release];
        
        [deviceCells addObject:cell];
        [cell release];
    }
    
    index = 0;
    
    titles[index] = @"CPU Type:";
    values[index++] = deviceInfo->cpuType;
    
    titles[index] = @"CPU Architecture:";
    values[index++] = deviceInfo->armArch;
    
    titles[index] = @"Number of Cores:";
    values[index++] = [NSString stringWithFormat:@"%d", deviceInfo->nCores];
    
    titles[index] = @"Byte Order:";
    values[index++] = deviceInfo->isLittleEndian? @"Little Endian" : @"Big Endian";
    
    titles[index] = @"Cache Line Size:";
    values[index++] = [NSString stringWithFormat:@"%lld Bytes", deviceInfo->cachelineSize];
    
    titles[index] = @"L1 Inst. Cache:";
    values[index++] = [NSString stringWithFormat:@"%lld KB", deviceInfo->l1iCache / 1024];
    
    titles[index] = @"L1 Data Cache:";
    values[index++] = [NSString stringWithFormat:@"%lld KB", deviceInfo->l1dCache / 1024];
    
    titles[index] = @"L2 Cache:";
    values[index++] = [NSString stringWithFormat:@"%lld KB", deviceInfo->l2Cache / 1024];
    
    titles[index] = @"L3 Cache:";
    values[index++] = [NSString stringWithFormat:@"%lld KB", deviceInfo->l3Cache / 1024];
    
    titles[index] = @"Page Size:";
    values[index++] = [NSString stringWithFormat:@"%d KB", deviceInfo->pageSize / 1024];
    
    titles[index] = @"CPU Frequency:";
    values[index++] = [NSString stringWithFormat:@"%d MHz", GetIntegralFrequency(deviceInfo->cpuFreq / (1000 * 1000))];
    
    for(NSInteger i = 0; i < index; i++)
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, halfWidth, cell.bounds.size.height)];
        title.backgroundColor = [UIColor clearColor];
        title.textAlignment = UITextAlignmentCenter;
        title.textColor = [UIColor blackColor];
        title.font = [UIFont fontWithName:@"Helvetica-Bold" size:15.0f];
        title.text = titles[i];
        [cell.contentView addSubview:title];
        [title release];
        
        UILabel *value = [[UILabel alloc] initWithFrame:CGRectMake(halfWidth + 10.0f, 0.0f, halfWidth, cell.bounds.size.height)];
        value.backgroundColor = [UIColor clearColor];
        value.textAlignment = UITextAlignmentCenter;
        value.textColor = [UIColor blackColor];
        value.font = [UIFont fontWithName:@"Helvetica" size:15.0f];
        value.text = values[i];
        [cell.contentView addSubview:value];
        [value release];
        
        [cpuCells addObject:cell];
        [cell release];
    }
    
    UITableView *tableView = (UITableView*)[self.view viewWithTag:OVERVIEW_TABLEVIEW_TAG];
    [tableView reloadData];
}

- (void)loadView
{
    self.wantsFullScreenLayout = YES;
    
    [super loadView];
}

- (void)viewDidLoad
{
    CGFloat initY = 20.0f;
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGFloat totalHeight = screenBounds.size.height - initY;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    totalHeight -= 65.0f;
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, initY, screenBounds.size.width, 35.0f)];
    title.backgroundColor = [UIColor colorWithRed:0.5098f green:0.8627f blue:0.7539f alpha:1.0f];
    title.textAlignment = UITextAlignmentCenter;
    title.textColor = [UIColor colorWithRed:0.7961f green:0.1922f blue:0.4588f alpha:1.0f];
    title.font = [UIFont fontWithName:@"Helvetica-Bold" size:18.0f];
    title.text = @"CPU Dasher";
    [self.view addSubview:title];
    [title release];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0.0f, initY + 35.0f, screenBounds.size.width, totalHeight - 35.0f) style:UITableViewStyleGrouped];
    tableView.tag = OVERVIEW_TABLEVIEW_TAG;
    tableView.backgroundColor = [UIColor clearColor];
    tableView.allowsSelection  = NO;
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    [tableView release];
    
    [self createCells];
}

- (void)addBackButton:(NSURL*)url
{
    UIButton *button = (UIButton*)[self.view viewWithTag:1024];
    if(button == nil)
    {
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        button = width > 700.0f? [[UIButton alloc] initWithFrame:CGRectMake(10.0f, 0.0f, 50.0f, 35.0f)] : [[UIButton alloc] initWithFrame:CGRectMake(10.0f, 7.0f, 30.0f, 21.0f)];
        button.tag = 1024;
        button.layer.contentsScale = [[UIScreen mainScreen] scale];
        [button setImage:[UIImage imageNamed:@"baritem_back.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(backButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        [button release];
    }
    
    self.appBackURL = url;
}

- (void)removeBackButton
{
    UIButton *button = (UIButton*)[self.view viewWithTag:1024];
    if(button != nil)
        [button removeFromSuperview];
    
    self.appBackURL = nil;
}

#pragma mark - UIViewTable data source & delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [cellList[[indexPath section]] objectAtIndex:[indexPath row]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [cellList[section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return sectionTitles[section];
}

#pragma mark - 

- (void)backButtonTouched:(id)sender
{
    if(self.appBackURL != nil)
        [[UIApplication sharedApplication] openURL:self.appBackURL];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end

