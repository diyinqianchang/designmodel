//
//  BusinessCardView.h
//  AdapterPattern
//
//  Created by 万联 on 16/5/30.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BusinessCardAdapterProtocol.h"

#define BUSINESS_FRAME CGRectMake(0,0,200,130)

@interface BusinessCardView : UIView<BusinessCardAdapterProtocol>


@property(nonatomic,strong)NSString *name;

@property(nonatomic,strong)UIColor *lineColor;

@property(nonatomic,strong)NSString *phoneNumber;


-(void)loadData:(id<BusinessCardAdapterProtocol>)data;

@end
