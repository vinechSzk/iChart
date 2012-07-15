//
//  AppDelegate.m
//  iChartApp
//
//  Created by szk on 12-7-13.
//  Copyright (c) 2012年 __Vinech__. All rights reserved.
//

#import "AppDelegate.h"
#import "MarketViewController.h"
#import "NewsAnalysisViewController.h"
#import "TradeSignalsViewController.h"
#import "ChartViewController.h"
#import "SetupViewController.h"
@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    MarketViewController * marketV = [[MarketViewController alloc] init];
    marketV.title = @"行情报价";
    UINavigationController * ngaVmarket = [[UINavigationController alloc] initWithRootViewController:marketV];
    
    NewsAnalysisViewController * newsV = [[NewsAnalysisViewController alloc] init];
    newsV.title  = @"新闻与分析";
    UINavigationController * ngaVnews = [[UINavigationController alloc] initWithRootViewController:newsV];
    
    TradeSignalsViewController * tradeV = [[TradeSignalsViewController alloc] init];
    tradeV.title = @"交易信号";
    UINavigationController * ngaVtrade = [[UINavigationController alloc] initWithRootViewController:tradeV];
    
    ChartViewController * chartV = [[ChartViewController alloc] init];
    chartV.title = @"图表";
    UINavigationController * ngaVchart = [[UINavigationController alloc] initWithRootViewController:chartV];
    
    SetupViewController * setupV = [[SetupViewController alloc] init];
    setupV.title = @"设置";
    UINavigationController * ngaVsetup = [[UINavigationController alloc] initWithRootViewController:setupV];
    
    UITabBarController * tabbarV = [[UITabBarController alloc] init];
    tabbarV.viewControllers = [NSArray arrayWithObjects:ngaVmarket,ngaVnews,ngaVtrade,ngaVchart,ngaVsetup, nil];
    
    self.window.rootViewController = tabbarV;
    

    
    [self.window makeKeyAndVisible];
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
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
