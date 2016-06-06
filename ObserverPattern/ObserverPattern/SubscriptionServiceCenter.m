//
//  SubscriptionServiceCenter.m
//  ObserverPattern
//
//  Created by 万联 on 16/6/6.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "SubscriptionServiceCenter.h"

static NSMutableDictionary *_subscriptionNumberDictionary = nil;

@implementation SubscriptionServiceCenter

/**
 *   每个类都会被runtime线程安全的调用一次initialize方法。
 *   父类会在子类前被调用。
 *   如果子类没有实现或者调用[super initialize]，则父类会被再次调用。
 */
+ (void)initialize
{
    if (self == [SubscriptionServiceCenter class]) {
        _subscriptionNumberDictionary = [NSMutableDictionary dictionary];
    }
}

+(void)createSubscriptNumber:(NSString *)subscriptionNumber{

    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        [_subscriptionNumberDictionary setObject:hashTable forKey:subscriptionNumber];
    }
    
}


+(void)removeSubscriptionNumber:(NSString *)subscriptionNumber{
    NSParameterAssert(subscriptionNumber);
    if ([self existSubscriptionNumber:subscriptionNumber]) {
        [_subscriptionNumberDictionary removeObjectForKey:subscriptionNumber];
    }

}

+(void)removeCustomer:(id<SubscriptionServiceCenterProtocol>)customer fromSubscriptionNumber:(NSString *)subscriptionNumber{

    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable && customer) {
        [hashTable removeObject:customer];
    }

}

+(void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber{

    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        id<SubscriptionServiceCenterProtocol> customer = nil;
        
        while (customer = [enumerator nextObject]) {
            if ([customer respondsToSelector:@selector(subscriptionMessage:subscriptionNumber:)]) {
                [customer subscriptionMessage:message subscriptionNumber:subscriptionNumber];
            }
        }
     
    }



}

+(void)addCustomer:(id<SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber{

    NSParameterAssert(customer);
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    [hashTable addObject:customer];
}


#pragma mark -私有方法
+(NSHashTable *)existSubscriptionNumber:(NSString *)subscriptionNumber {
    
    return [_subscriptionNumberDictionary objectForKey:subscriptionNumber];
}



@end
