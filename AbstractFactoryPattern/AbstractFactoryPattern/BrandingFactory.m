//
//  BrandingFactory.m
//  AbstractFactoryPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory


+(BrandingFactory *)factory{

    if ([[self class] isSubclassOfClass:[AcmeBrandingFactory class]]) {
        return [AcmeBrandingFactory new];
    }else if ([[self class] isSubclassOfClass:[SierraBrandingFactory class]]){
    
        return [SierraBrandingFactory new];
    }else{
    
        return nil;
    }
}

-(UIButton *)brandedMainButton{

    return nil;

}
-(UIView *)brandeView{

    return nil;

}



@end
