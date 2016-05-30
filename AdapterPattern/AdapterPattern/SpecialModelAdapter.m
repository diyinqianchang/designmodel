//
//  SpecialModelAdapter.m
//  AdapterPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "SpecialModelAdapter.h"
#import "SpecialModel.h"
@implementation SpecialModelAdapter

-(NSString *)name{

    SpecialModel *model = self.data;
    return model.name;

}
-(UIColor *)lineColor{

    SpecialModel *model = self.data;
    UIColor *color = nil;
    if ([model.colorString isEqualToString:@"red"]) {
        
        color = [UIColor redColor];
    }else if ([model.colorString isEqualToString:@"green"]){
    
        color = [UIColor greenColor];
    
    }else{
    
        color = [UIColor blackColor];
    }
    return color;

}

-(NSString *)phoneNumber{

    SpecialModel *model = self.data;
    return model.phoneNumber;

}



@end
