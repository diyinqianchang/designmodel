//
//  DeviceCreator.h
//  FactoryPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeviceProtocol.h"

#import "AndroidDevice.h"
#import "iPhoneDevice.h"
#import "WindowDevice.h"

typedef enum:NSUInteger{

    kAndroid,
    kiPhone,
    kWindows,

}DeviceType;


@interface DeviceCreator : NSObject

+(BaseDevice *)deviceCreateWithDeviceType:(DeviceType)deviceType;

@end
