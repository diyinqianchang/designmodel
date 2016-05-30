//
//  ElementCollection.m
//  VisitorPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ElementCollection.h"
#import "ElementProtocol.h"

@interface ElementCollection ()

@property(nonatomic,strong)NSMutableDictionary *elementsDictionary;

@end

@implementation ElementCollection

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.elementsDictionary = [NSMutableDictionary dictionary];
    }
    return self;
}

-(void)addElement:(id<ElementProtocol>)elment withKey:(NSString *)key{

    NSParameterAssert(elment);
    NSParameterAssert(key);
    [self.elementsDictionary setObject:elment forKey:key];
}
-(NSArray *)allKeys{

    return self.elementsDictionary.allKeys;

}

-(id<ElementProtocol>)elementWithKey:(NSString *)key{

    NSParameterAssert(key);
    return [self.elementsDictionary objectForKey:key];


}


@end
