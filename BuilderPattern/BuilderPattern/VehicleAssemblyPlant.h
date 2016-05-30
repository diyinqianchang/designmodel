//
//  VehicleAssemblyPlant.h
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VehicleBuilder.h"

@interface VehicleAssemblyPlant : NSObject

/**
 *  组装车辆
 *
 *  @param vehicleBuilder 组装方案
 *
 *  @return 组装好的车辆
 */
+(VehicleBuilder *)vehicleAssembly:(VehicleBuilder *)vehicleBuilder;



@end
