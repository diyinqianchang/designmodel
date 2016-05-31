//
//  ConsoleController.h
//  BridgePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ConsoleEmulator.h"

@interface ConsoleController : NSObject
/**
 *  抽象模拟器
 */
@property(nonatomic,strong)ConsoleEmulator *emulator;
/**
 *  执行指令
 *  @param command 指令
 */
-(void)excuteCommand:(ConsoleCommand)command;

@end
