//
//  FileCell.h
//  CompositePattern
//
//  Created by 万联 on 16/6/12.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileCell : UITableViewCell

@property(nonatomic,weak)id  data;

@property(nonatomic,weak)NSIndexPath *indexPath;

@property(nonatomic,weak)UITableView *tableView;

@property(nonatomic,weak)UIViewController *controller;


-(void)loadContent;


@end
