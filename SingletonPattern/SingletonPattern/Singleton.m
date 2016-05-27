//
//  Singleton.m
//  singleton
//
//  Created by 万联 on 16/5/27.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "Singleton.h"



static Singleton *_sharedSingleton = nil;

@implementation Singleton

+(Singleton *)shareInstance{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedSingleton = [[Singleton alloc] initInstance];
    });
    
    return _sharedSingleton;
}

-(id)copyWithZone:(NSZone *)zone{

    [NSException raise:@"SingletonPattern" format:@"Cannot copy singleton using copy method, sharedInstance must be used"];
    return nil;
}
- (instancetype)init
{
    [NSException raise:@"SingletonPattern" format:@"Cannot instance singleton using init methon,sharedInstance must be used"];
    return nil;
}

-(id)initInstance{

    return [super init];

}


@end
