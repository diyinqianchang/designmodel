//
//  ConsoleController.m
//  BridgePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController


-(void)excuteCommand:(ConsoleCommand)command{

    //具体的执行类 去执行
    
    [_emulator loadInstructionsForCommand:command];
    [_emulator excuteInstructions];
    NSLog(@"%@",NSStringFromClass([_emulator class]));

}


@end
