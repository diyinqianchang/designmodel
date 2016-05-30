//
//  ElementA.m
//  VisitorPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ElementA.h"
#import "VisitorProtocol.h"
@implementation ElementA

-(void)accept:(id<VisitorProtocol>)visitor{

    [visitor visitElement:self];
}
-(void)operation{

    NSLog(@"Element_A operation start.");
}
-(void)elementASpecialOperationA{

    NSLog(@"Element_A special operation.");
}

@end
