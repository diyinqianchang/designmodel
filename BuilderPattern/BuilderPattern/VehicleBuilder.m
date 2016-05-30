//
//  VehicleBuilder.m
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "VehicleBuilder.h"

@implementation VehicleBuilder


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.vehicleInfo = [NSMutableDictionary dictionary];
    }
    return self;
}

/**
 *  抛出异常
 */
-(void)buildVehicleChassis{

    [NSException raise:NSInternalInconsistencyException format:@"对不起，您不能直接调用'%@ %d'中的方法'%@',您需要通过继承其子类，在子类中重载该方法",[NSString stringWithUTF8String:__FILE__].lastPathComponent,__LINE__,NSStringFromSelector(_cmd)];

}

-(void)buildVehicleEngine{

    [NSException raise:NSInternalInconsistencyException format:@"对不起，您不能直接调用'%@ %d'中的方法'%@',您需要通过继承其子类，在子类中重载该方法",[NSString stringWithUTF8String:__FILE__].lastPathComponent,__LINE__,NSStringFromSelector(_cmd)];

}

-(void)buildVehicleWheels{

    [NSException raise:NSInternalInconsistencyException format:@"对不起，您不能直接调用'%@ %d'中的方法'%@',您需要通过继承其子类，在子类中重载该方法",[NSString stringWithUTF8String:__FILE__].lastPathComponent,__LINE__,NSStringFromSelector(_cmd)];


}

-(void)buildVehicleDoors{

    [NSException raise:NSInternalInconsistencyException format:@"对不起，您不能直接调用'%@ %d'中的方法'%@',您需要通过继承其子类，在子类中重载该方法",[NSString stringWithUTF8String:__FILE__].lastPathComponent,__LINE__,NSStringFromSelector(_cmd)];

}



@end
