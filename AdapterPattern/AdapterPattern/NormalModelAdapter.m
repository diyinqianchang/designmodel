//
//  NormalModelAdapter.m
//  AdapterPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "NormalModelAdapter.h"
#import "NormalModel.h"

@implementation NormalModelAdapter


-(NSString *)name{

    NormalModel *model = self.data;
    return model.name;

}

-(UIColor *)lineColor{

    NormalModel *model = self.data;
    return model.lineColor;

}

-(NSString *)phoneNumber{

    NormalModel *model =self.data;
    return model.phoneNumber;

}

@end
