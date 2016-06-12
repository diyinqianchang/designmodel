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
 *  让一个对象,遵循某种制定的协议(接口)来完成特定的功能,是cocoa开发中很重要的一种技巧
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
