//
//  BusinessCardAdapter.h
//  AdapterPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BusinessCardAdapterProtocol.h"

@interface BusinessCardAdapter : NSObject<BusinessCardAdapterProtocol>

//接受数据 类型
@property(nonatomic,weak)id data;

-(instancetype)initWithData:(id)data;


@end
