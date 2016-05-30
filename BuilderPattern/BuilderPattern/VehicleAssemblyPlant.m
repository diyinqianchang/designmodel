//
//  VehicleAssemblyPlant.m
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "VehicleAssemblyPlant.h"

@implementation VehicleAssemblyPlant

+(VehicleBuilder *)vehicleAssembly:(VehicleBuilder *)vehicleBuilder{

    [vehicleBuilder buildVehicleChassis];
    [vehicleBuilder buildVehicleDoors];
    [vehicleBuilder buildVehicleEngine];
    [vehicleBuilder buildVehicleWheels];
    
    return vehicleBuilder;

}


@end
