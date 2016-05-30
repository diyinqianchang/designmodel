//
//  VehicleBuilderProtocol.h
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VehicleBuilderProtocol <NSObject>

@required

-(void)buildVehicleChassis;

-(void)buildVehicleEngine;

-(void)buildVehicleWheels;

-(void)buildVehicleDoors;


@end
