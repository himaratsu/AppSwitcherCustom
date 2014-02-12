//
//  AppDelegate.m
//  AppSwitcherDemo
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


// アプリが終了されたタイミングでcallされる
- (void)applicationWillTerminate:(UIApplication *)application
{
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    if (notification)
    {
        notification.timeZone = [NSTimeZone defaultTimeZone];
        notification.repeatInterval = 0;
        notification.alertBody = @"アプリを終了するとログがとれなくなります。再起動しますか？";
        notification.alertAction = @"再起動する";
        notification.soundName = UILocalNotificationDefaultSoundName;
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    }
}

@end
