//
//  DeviceCreator.m
//  FactoryPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "DeviceCreator.h"

@implementation DeviceCreator

+(BaseDevice *)deviceCreateWithDeviceType:(DeviceType)deviceType{

    if (deviceType == kiPhone) {
        return [iPhoneDevice new];
    }else if (deviceType == kAndroid){
    
        return [[AndroidDevice alloc] init];
    }else if (deviceType == kWindows){
    
        return [WindowDevice new];
    
    }else{
    
        return [BaseDevice new];
    
    }



}

@end
