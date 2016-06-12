//
//  File.h
//  CompositePattern
//
//  Created by 万联 on 16/6/12.
//  Copyright © 2016年 wl.wanlian. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum:NSUInteger{

    kFolder,
    kFile,
}FileType;

@interface File : NSObject

@property(nonatomic,assign)FileType fileType;

@property(nonatomic,strong)NSString *name;

/**
 *  添加条件
 *
 *  @param file 文件
 */
-(void)add:(File*)file;

/**
 *  所有文件
 *
 *  @return 文件的文件夹
 */
-(NSArray<File *>*)files;

/**
 *  返回创建出来的文件夹或文件
 *
 *  @param type 文件类型
 *  @param name 文件名字
 *
 *  @return 创建出来的实例对象
 */
+(instancetype)createWithFileType:(FileType)type name:(NSString *)name;


@end
