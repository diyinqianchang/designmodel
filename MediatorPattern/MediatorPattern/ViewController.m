//
//  ViewController.m
//  MediatorPattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"
#import "UITextFieldMediator.h"
/**
 *  用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
 *  注：中介者对象本身没有复用价值，只是将逻辑操作封装在一个类里面而已
 */
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;

@property(nonatomic,strong) UITextFieldMediator *mediator;

@end

@implementation ViewController

- (void)viewDidLoad {
[super viewDidLoad];


    self.mediator = [[UITextFieldMediator alloc] init];
    self.mediator.textField1 = self.textField1;
    self.mediator.textField2 = self.textField2;
    self.mediator.textField3 = self.textField3;

    self.textField1.delegate = self.mediator;
    self.textField2.delegate = self.mediator;
    self.textField3.delegate = self.mediator;


}






- (void)didReceiveMemoryWarning {
[super didReceiveMemoryWarning];
// Dispose of any resources that can be recreated.
}

@end
