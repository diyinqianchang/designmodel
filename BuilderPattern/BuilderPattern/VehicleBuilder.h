//
//  VehicleBuilder.h
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VehicleBuilderProtocol.h"


@interface VehicleBuilder : NSObject<VehicleBuilderProtocol>

@property(nonatomic,strong)NSMutableDictionary *vehicleInfo;


@end
