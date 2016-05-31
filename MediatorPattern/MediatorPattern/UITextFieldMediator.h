//
//  UITextFieldMediator.h
//  MediatorPattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UITextFieldMediator : NSObject<UITextFieldDelegate>

@property(nonatomic,weak)UITextField *textField1;

@property(nonatomic,weak)UITextField *textField2;

@property(nonatomic,weak)UITextField *textField3;

@end
