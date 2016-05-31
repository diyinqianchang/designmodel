//
//  ShapeMaker.h
//  FacadePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Circle.h"
#import "Square.h"
#import "Rectangle.h"

@interface ShapeMaker : NSObject

+(void)drawCircleAndRectangle;
+(void)drawCircleAndSquare;
+(void)drawAll;

@end
