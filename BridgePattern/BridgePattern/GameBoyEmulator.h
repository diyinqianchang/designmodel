//
//  GameBoyEmulator.h
//  BridgePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ConsoleEmulator.h"

@interface GameBoyEmulator : ConsoleEmulator

/**
 *  加载指令
 *
 *  @param commad 指令
 */
-(void)loadInstructionsForCommand:(ConsoleCommand)commad;


/**
 *  执行指令
 */
-(void)excuteInstructions;


@end
