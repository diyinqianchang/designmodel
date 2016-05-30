//
//  ViewController.m
//  SingletonPattern
//
//  Created by 万联 on 16/5/27.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",[Singleton shareInstance]);
     NSLog(@"%@",[Singleton shareInstance]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
