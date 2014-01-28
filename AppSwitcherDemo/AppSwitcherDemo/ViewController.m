//
//  ViewController.m
//  AppSwitcherDemo
//
//  Created by rhiramat on 2014/01/28.
//  Copyright (c) 2014年 Ryosuke Hiramatsu. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()
<CLLocationManagerDelegate>

@property (nonatomic) CLLocationManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 位置情報の取得を開始（ダミー）
    if ([CLLocationManager locationServicesEnabled])
    {
        _manager = [[CLLocationManager alloc] init];
        _manager.delegate = self;
        
        [_manager startUpdatingLocation];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
