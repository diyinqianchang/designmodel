//
//  SuperBike.m
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "SuperBike.h"

@implementation SuperBike

- (void)buildVehicleChassis {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Chassis"];
}

- (void)buildVehicleEngine {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Engine"];
}

- (void)buildVehicleWheels {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Wheels"];
}

- (void)buildVehicleDoors {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Doors"];
}


@end
