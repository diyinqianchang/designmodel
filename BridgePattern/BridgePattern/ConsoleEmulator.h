//
//  ConsoleEmulator.h
//  BridgePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum:NSUInteger{

    kConsoleCommandUp,
    kConsoleCommandDown,
    kConsoleCommandLeft,
    kConsoleCommandRight,
    
    kConsoleCommandSelect,
    kConsoleCommandStart,
    
    kConsoleCommandAction1,
    kConsoleCommandAction2,

}ConsoleCommand;

@interface ConsoleEmulator : NSObject

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
