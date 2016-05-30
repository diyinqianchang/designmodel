//
//  ElementCollection.h
//  VisitorPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ElementProtocol;

@interface ElementCollection : NSObject

/**
 *  添加元素
 *
 *  @param elment 元素
 *  @param key    元素的键值
 */
-(void)addElement:(id<ElementProtocol>)elment withKey:(NSString *)key;

/**
 *  获取所有元素的键值
 *
 *  @return 所有元素的键值
 */
-(NSArray *)allKeys;

-(id<ElementProtocol>)elementWithKey:(NSString *)key;

@end
