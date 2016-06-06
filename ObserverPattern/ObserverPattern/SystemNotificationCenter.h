//
//  SystemNotificationCenter.h
//  ObserverPattern
//
//  Created by 万联 on 16/6/6.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SystemNotificationCenterProtocol.h"

@interface SystemNotificationCenter : NSObject

/**
 *  注册订阅号
 *
 *  @param name 订阅的号码
 */
+(void)registerNotificationName:(NSString *)name;

/**
 *  移除订阅号
 *
 *  @param name 订阅号
 */
+(void)removeNotificationName:(NSString *)name;

/**
 *  添加客户到指定的订阅号
 *
 *  @param customer 客户
 *  @param name     订阅的号码
 */
+ (void)addCustomer:(id <SystemNotificationCenterProtocol>)customer withNotificationName:(NSString *)name;

/**
 *  将客户从指定的订阅号移除
 *
 *  @param customer 客户
 *  @param name     订阅的号码
 */
+ (void)removeCustomer:(id <SystemNotificationCenterProtocol>)customer withNotificationName:(NSString *)name;


@end
