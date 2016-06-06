//
//  SystemNotificationCenterProtocol.h
//  ObserverPattern
//
//  Created by 万联 on 16/6/6.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SystemNotificationCenterProtocol <NSObject>

@required
/**
 *  监听通知信息
 *
 *  @param name   订阅的号码
 *  @param object 通知传递的对象
 */
- (void)listenWithNotificationName:(NSString *)name eventObject:(id)object;



@end
