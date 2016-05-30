//
//  SpecialModel.h
//  AdapterPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SpecialModel : NSObject

/**
 *  名字
 */
@property (nonatomic, strong) NSString *name;

/**
 *  线条颜色    NSString
 */
@property (nonatomic, strong) NSString *colorString;

/**
 *  电话号码
 */
@property (nonatomic, strong) NSString *phoneNumber;


@end
