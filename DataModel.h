//
//  DataModel.h
//  SortLayoutViewDemo
//
//  Created by 安鹏 on 16/6/17.
//  Copyright © 2016年 安鹏. All rights reserved.
//

/**
 *  这个模型是存储需要拖拽排序操作数据
 */
#import <Foundation/Foundation.h>

@interface DataModel : NSObject


/** 名称 */
@property(strong,nonatomic)NSString *sortName;


/** 标记id 扩充选项 */
@property(strong,nonatomic)NSString *sortId;


- (instancetype)initWithDic:(NSDictionary *)dict;

/** zhushi  */
@property(strong,nonatomic)NSDictionary *dic;
@end
