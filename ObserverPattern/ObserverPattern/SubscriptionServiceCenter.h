//
//  SubscriptionServiceCenter.h
//  ObserverPattern
//
//  Created by 万联 on 16/6/6.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscriptionServiceCenterProtocol.h"

@interface SubscriptionServiceCenter : NSObject

/**
 *  创建订阅号
 *
 *  @param subscriptionNumber 订阅号码
 */
+(void)createSubscriptNumber:(NSString *)subscriptionNumber;

/**
 *  移除订阅号
 *
 *  @param subscriptionNumber 订阅号
 */
+(void)removeSubscriptionNumber:(NSString *)subscriptionNumber;
/**
 *  将指定客户从指定订阅号上移除掉
 *
 *  @param customer           客户
 *  @param subscriptionNumber 订阅号码
 */
+(void)removeCustomer:(id<SubscriptionServiceCenterProtocol >)customer fromSubscriptionNumber:(NSString *)subscriptionNumber;
/**
 *  通知签订了订阅号的对象
 *
 *  @param message            信息对象
 *  @param subscriptionNumber 订阅号
 */
+(void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  客户订阅指定的订阅号
 *
 *  @param customer           客户对象
 *  @param subscriptionNumber 订阅号码
 */
+ (void)addCustomer:(id <SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;
@end
