//
//  GameGearEmulator.h
//  BridgePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ConsoleEmulator.h"

@interface GameGearEmulator : ConsoleEmulator


- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)excuteInstructions;

@end
