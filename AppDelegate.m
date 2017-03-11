//
//  AppDelegate.m
//  CPU Dasher
//
//  Created by Zenny Chen on 14-4-29.
//  Copyright (c) 2014年 GreenGames Studio. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LavenderDeviceInfo.h"
#import "ZennyOverviewViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIWindow *aWindow = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window = aWindow;
    [aWindow release];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController *controller = [[ViewController alloc] init];
    self.window.rootViewController = controller;
    [controller release];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL*)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    NSString *urlContent = url.absoluteString;
    do
    {
        NSRange range = [urlContent rangeOfString:@"back="];
        if(range.location == NSNotFound)
            break;
        
        NSString *backURLString = [urlContent substringFromIndex:range.location + range.length];
        if(backURLString == nil || [backURLString length] == 0)
            break;
        
        NSURL *backURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@://back=cpudasher", backURLString]];
        if(backURL == nil || [backURL.absoluteString length] == 0)
            break;
        
        ViewController *controller = (ViewController*)self.window.rootViewController;
        [controller->overviewController addBackButton:backURL];
    }
    while(NO);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    ViewController *controller = (ViewController*)self.window.rootViewController;
    [controller becomeInactive];
    [controller->overviewController removeBackButton];
    
    [LavenderDeviceInfo destroyInstance];
    
    isFirstTimeToLaunch = NO;
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    if(!isFirstTimeToLaunch)
    {
        ViewController *controller = (ViewController*)self.window.rootViewController;
        [controller becomeActive];
    }
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    NSLog(@"Memory Warning...");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

