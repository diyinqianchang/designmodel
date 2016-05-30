//
//  SportsCar.m
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "SportsCar.h"

@implementation SportsCar

-(void)buildVehicleChassis{

    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Chassis"];

}
-(void)buildVehicleEngine{

    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Engine"];

}
-(void)buildVehicleWheels{

    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Wheels"];

}
-(void)buildVehicleDoors{

    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Doors"];

}

@end
