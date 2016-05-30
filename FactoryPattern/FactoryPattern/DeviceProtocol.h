//
//  DeviceProtocol.h
//  FactoryPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DeviceProtocol <NSObject>


-(void)phoneCall;


/**
 *  系统信息
 *
 *  @return 返回系统信息
 */
-(NSString*)systemInfomation;

@end
