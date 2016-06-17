//
//  DataModel.m
//  SortLayoutViewDemo
//
//  Created by 安鹏 on 16/6/17.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (instancetype)initWithDic:(NSDictionary *)dict{
    
    self = [super init];
    if (self) {
        
        [self setValuesForKeysWithDictionary:dict];
        
    }
    
    return self;
}
@end
