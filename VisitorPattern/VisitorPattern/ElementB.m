//
//  ElementB.m
//  VisitorPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ElementB.h"

#import "VisitorProtocol.h"

@implementation ElementB

-(void)accept:(id<VisitorProtocol>)visitor{

    [visitor visitElement:self];

}
-(void)operation{

    NSLog(@"Element_B operation start.");
}
-(void)elementBSpecialOperationB{


    NSLog(@"Element_B special operation.");
}

@end
