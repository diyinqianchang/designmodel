//
//  ViewController.m
//  BridgePattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"

#import "GameBoyConsoleController.h"
#import "GameBoyEmulator.h"

#import "GameGearConsoleController.h"
#import "GameGearEmulator.h"

/**
 *  其实,就是抽象的管理类管理一个抽象的执行类,通过一个方法或者多个方法来让抽象执行类完成功能,这就是传说中的桥接模式
 *  ConsoleController 抽象的管理类  → 管理执行,子类调用父类的方法。  执行有管理类管理。 管理类有一个对执行类的引用
 *  ConsoleEmulator   抽象的执行类  → 执行有具体的子类去负责
 */


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GameBoyConsoleController *gameBoyConsoleController = [GameBoyConsoleController new];
    gameBoyConsoleController.emulator                  = [GameBoyEmulator new];
    [gameBoyConsoleController up];
    
    GameGearConsoleController *gameGearConsoleController = [GameGearConsoleController new];
    gameGearConsoleController.emulator                   = [GameGearEmulator new];
    [gameGearConsoleController up];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
