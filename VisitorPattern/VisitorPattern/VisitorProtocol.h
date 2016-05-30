//
//  VisitorProtocol.h
//  VisitorPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ElementProtocol.h"

@protocol VisitorProtocol <NSObject>

-(void)visitElement:(id<ElementProtocol>)element;

@end
