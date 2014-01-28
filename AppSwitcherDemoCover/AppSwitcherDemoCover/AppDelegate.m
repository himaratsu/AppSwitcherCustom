//
//  AppDelegate.m
//  AppSwitcherDemoCover
//
//  Created by rhiramat on 2014/01/28.
//  Copyright (c) 2014年 Ryosuke Hiramatsu. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    [self setCoverPage];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [self removeCoverPage];
}


#pragma mark -

// バックグラウンド時に重ねるView
- (UIView *)coverView {
    if (_coverView == nil) {
        UIStoryboard *board = self.window.rootViewController.storyboard;
        UIViewController *vc = [board instantiateViewControllerWithIdentifier:@"CoverViewController"];
        _coverView = vc.view;
    }
    return _coverView;
}

- (void)setCoverPage {
    [self.window addSubview:self.coverView];
}

- (void)removeCoverPage {
    [self.coverView removeFromSuperview];
}


@end
