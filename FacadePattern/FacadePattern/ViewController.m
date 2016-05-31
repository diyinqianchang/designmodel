//
//  ViewController.m
//  FacadePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"

#import "ShapeMaker.h"


/**
 *  1. 当客服端需要使用一个复杂的子系统(子系统之间关系错综复杂),但又不想和他们扯上关系时,我们需要单独的写出一个类来与子系统交互,隔离客户端与子系统之间的联系,客户端只与这个单独写出来的类交互
 *  2. 外观模式实质为为系统中的一组接口提供一个统一的接口,外观定义了一个高层接口,让子系统易于使用
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [ShapeMaker drawCircleAndRectangle];
    [ShapeMaker drawCircleAndSquare];
    [ShapeMaker drawAll];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
