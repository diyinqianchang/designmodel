//
//  GameGearConsoleController.m
//  BridgePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "GameGearConsoleController.h"

@implementation GameGearConsoleController


-(void)up{
    
    [super excuteCommand:kConsoleCommandUp];
    
}
-(void)down{
    
    [super excuteCommand:kConsoleCommandDown];
    
}
-(void)left{
    
    [super excuteCommand:kConsoleCommandLeft];
    
}
-(void)right{
    
    [super excuteCommand:kConsoleCommandRight];
    
}

-(void)select{
    
    [super excuteCommand:kConsoleCommandSelect];
    
}

-(void)start{
    
    [super excuteCommand:kConsoleCommandStart];
    
}
@end
