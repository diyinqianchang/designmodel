//
//  BrandingFactory.h
//  AbstractFactoryPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface BrandingFactory : NSObject

/**
 *  抽象工厂方法
 *
 *  @return 具体工厂
 */
+(BrandingFactory *)factory;


/**
 *  该工厂生产的brandeView
 *
 *  @return 生产好的brandedView
 */
-(UIView *)brandeView;


/**
 *  该工厂生产的Button
 *
 *  @return 生产好的brandedMainButton
 */
-(UIButton *)brandedMainButton;



@end
