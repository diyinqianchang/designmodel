//
//  UITextFieldMediator.m
//  MediatorPattern
//
//  Created by 万联 on 16/5/31.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "UITextFieldMediator.h"

@implementation UITextFieldMediator


-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    if ([textField isEqual:self.textField1]) {
        
        NSString *currentNum = [self currentStringWithTextField:textField replacementString:string inRange:range];
        self.textField2.text = [NSString stringWithFormat:@"%.f",currentNum.floatValue * 7];
        self.textField3.text = [NSString stringWithFormat:@"%.f",currentNum.floatValue * 14];
        
        
    }else if ([textField isEqual:self.textField2]){
        
        NSString *currentNum = [self currentStringWithTextField:textField replacementString:string inRange:range];
        self.textField1.text = [NSString stringWithFormat:@"%.f",currentNum.floatValue / 7];
        self.textField3.text = [NSString stringWithFormat:@"%.f",currentNum.floatValue * 2];

    
    }else{
    
        NSString *currentNum = [self currentStringWithTextField:textField replacementString:string inRange:range];
        self.textField1.text = [NSString stringWithFormat:@"%.f",currentNum.floatValue / 14];
        self.textField2.text = [NSString stringWithFormat:@"%.f",currentNum.floatValue / 2];
    
    
    }
    return YES;
}

-(NSString *)currentStringWithTextField:(UITextField *)textField replacementString:(NSString *)string inRange:(NSRange)range{

    NSMutableString *mutableString = [NSMutableString stringWithString:textField.text];
    if (string.length) {
        [mutableString insertString:string atIndex:range.location];
    }else{
    
        [mutableString deleteCharactersInRange:range];
    
    }
    
    return [NSString stringWithString:mutableString];
}


@end
