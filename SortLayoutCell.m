//
//  SortLayoutCell.m
//  SortLayoutViewDemo
//
//  Created by 安鹏 on 16/6/17.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "SortLayoutCell.h"

@implementation SortLayoutCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _sortBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [_sortBtn setBackgroundImage:[UIImage imageNamed:@"channel_sort_circle"] forState:UIControlStateNormal];
        [_sortBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _sortBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:_sortBtn];
    }
    return self;
}
@end
