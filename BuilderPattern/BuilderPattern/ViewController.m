//
//  ViewController.m
//  BuilderPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import "ViewController.h"
#import "SportsCar.h"
#import "SuperBike.h"
#import "VehicleAssemblyPlant.h"


/**
 *  生成器模式可以理解为零部件组装工厂,与工厂方法是非常相似的!
    VehicleBuilder是一个抽象接口,声明一个或几个建造方法(不同部件)。这些方法有具体的Builder负责实现，已构造实际产品。
 *  VehicleAssemblyPlant定义了一个构造方法，命令Builder的实例去实现具体的制造行为。
 *  同时VehicleAssemblyPlant与VehicleBuilder结合,但是VehicleAssemblyPlant并不负责VehicleBuilder的生存期
 */


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    VehicleBuilder *sportCar  = [VehicleAssemblyPlant vehicleAssembly:[SportsCar new]];
    VehicleBuilder *superBike = [VehicleAssemblyPlant vehicleAssembly:[SuperBike new]];
    
    NSLog(@"%@", sportCar.vehicleInfo);
    NSLog(@"%@", superBike.vehicleInfo);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
