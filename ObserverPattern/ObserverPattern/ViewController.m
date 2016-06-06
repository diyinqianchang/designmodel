//
//  ViewController.m
//  ObserverPattern
//
//  Created by 万联 on 16/6/6.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"

#define SCIENCE @"SCIENCE"
#define NEWTON  @"NEWTON"

#import "SubscriptionServiceCenterProtocol.h"
#import "SubscriptionServiceCenter.h"
@interface ViewController ()<SubscriptionServiceCenterProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [SubscriptionServiceCenter createSubscriptNumber:SCIENCE];
    [SubscriptionServiceCenter createSubscriptNumber:NEWTON];
    
    
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:NEWTON];
    
    
    [SubscriptionServiceCenter sendMessage:@"爱因斯坦" toSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter sendMessage:@"小苹果" toSubscriptionNumber:SCIENCE];
    
}

-(void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber{


    if ([subscriptionNumber isEqualToString:NEWTON]) {
        
        NSLog(@"来自牛顿杂志的信息-%@",message);
        
    }else if ([subscriptionNumber isEqualToString:SCIENCE]){
    
        NSLog(@"来自科学美国人杂志的信息-%@",message);
    }



}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
