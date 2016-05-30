//
//  Visitor.m
//  VisitorPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "Visitor.h"


@interface Visitor ()

@property(nonatomic,weak)ElementA *elementA;
@property(nonatomic,weak)ElementB *elementB;

@end



@implementation Visitor


-(void)visitElementA:(ElementA *)elementA{

    self.elementA = elementA;
    [elementA operation];
    [elementA elementASpecialOperationA];

}

-(void)visitElementB:(ElementB *)elementB{
    
    self.elementB = elementB;
    [elementB operation];
    [elementB elementBSpecialOperationB];
    
}





-(void)visitElement:(id<ElementProtocol>)element{

    if ([element isMemberOfClass:[ElementA class]]) {
        
        [self visitElementA:element];
        
    }else if ([element isMemberOfClass:[ElementB class]]){
    
        [self visitElementB:element];
    
    }



}



@end
