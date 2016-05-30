//
//  ViewController.m
//  FactoryPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"

#import "DeviceCreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BaseDevice *iPhone = [DeviceCreator deviceCreateWithDeviceType:kiPhone];
    [iPhone phoneCall];
    NSLog(@"%@",[iPhone systemInfomation]);
    
    BaseDevice *android = [DeviceCreator deviceCreateWithDeviceType:kAndroid];
    [android phoneCall];
    NSLog(@"%@",[android systemInfomation]);
    
    
    BaseDevice *windows = [DeviceCreator deviceCreateWithDeviceType:kWindows];
    [windows phoneCall];
    NSLog(@"%@",[windows systemInfomation]);

    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
