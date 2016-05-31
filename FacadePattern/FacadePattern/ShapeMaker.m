//
//  ShapeMaker.m
//  FacadePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ShapeMaker.h"

@implementation ShapeMaker


+(void)drawCircleAndRectangle{

    Shape *circle = [Circle new];
    Shape *rect = [Rectangle new];
    [circle draw];
    [rect draw];

}

+(void)drawCircleAndSquare{

    Shape *circle = [Circle new];
    Shape *square = [Square new];
    [circle draw];
    [square draw];

}

+(void)drawAll{

    Shape *circle = [Circle new];
    Shape *rect = [Rectangle new];
    Shape *square = [Square new];
    [circle draw];
    [rect draw];
    [square draw];

}

@end
