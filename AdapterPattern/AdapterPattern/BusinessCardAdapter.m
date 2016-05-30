//
//  BusinessCardAdapter.m
//  AdapterPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "BusinessCardAdapter.h"



@implementation BusinessCardAdapter

-(instancetype)initWithData:(id)data{

    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;

}
-(NSString *)name{

    return nil;
}
-(UIColor *)lineColor{

    return nil;
}
-(NSString *)phoneNumber{

    return nil;
}


@end
