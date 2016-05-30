//
//  ViewController.m
//  AbstractFactoryPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@interface ViewController ()

@end




/**
 *  1. 抽象工厂指的是提供一个创建一系列相关或者相互依赖对象的接口,而无需指定它们具体的类
 *  2. 如果多个类有相同的行为,但实际实现不同,则可能需要某种抽象类型作为其父类被继承,抽象类型定义了所有相关具体类将共有的共同行为
 */


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BrandingFactory *acmeFactory = [AcmeBrandingFactory factory];
    [acmeFactory brandeView];
    [acmeFactory brandedMainButton];
    
    
    BrandingFactory *sierraFactory = [SierraBrandingFactory factory];
    [sierraFactory brandedMainButton];
    [sierraFactory brandeView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
