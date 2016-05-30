//
//  ViewController.m
//  VisitorPattern
//
//  Created by 万联 on 16/5/27.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"

#import "ElementCollection.h"

#import "ElementA.h"
#import "ElementB.h"

#import "Visitor.h"


@interface ViewController ()

@property(nonatomic,strong)ElementCollection *collection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collection = [[ElementCollection alloc] init];
    [self.collection addElement:[[ElementA alloc] init] withKey:@"ElementA"];
    [self.collection addElement:[[ElementB alloc] init] withKey:@"ElementB"];
    
    for (int i =0; i<self.collection.allKeys.count; i++) {
        NSString *key = self.collection.allKeys[i];
        id<ElementProtocol> element = [self.collection elementWithKey:key];
        Visitor *visitor = [[Visitor alloc] init];
        [element accept:visitor];
        
    }
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
