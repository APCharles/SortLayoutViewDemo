//
//  SortLayoutView.h
//  SortLayoutViewDemo
//
//  Created by 安鹏 on 16/6/16.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SortLayoutView : UIView



/**
 *  设置view的数据源
 *
 *  @param frame     frame
 *  @param dataArray 数据源
 *
 *  @return 操作完成后的view
 */
- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSMutableArray *)dataArray;
@end
