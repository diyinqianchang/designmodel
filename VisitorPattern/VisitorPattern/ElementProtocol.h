//
//  ElementProtocol.h
//  VisitorPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VisitorProtocol;
@protocol ElementProtocol <NSObject>

-(void)accept:(id<VisitorProtocol>)visitor;

-(void)operation;

@end
