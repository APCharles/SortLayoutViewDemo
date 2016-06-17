//
//  ViewController.m
//  SortLayoutViewDemo
//
//  Created by 安鹏 on 16/6/16.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "ViewController.h"
#import "SortLayoutView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSArray *arr = @[@{@"sortName":@"文艺",
                       @"sortId":@"11111111"},
                     
                     @{@"sortName":@"综艺",
                       @"sortId":@"22222222"},
                     @{@"sortName":@"体育",
                       @"sortId":@"33333333"},
                     @{@"sortName":@"电影",
                       @"sortId":@"44444444"},
                     @{@"sortName":@"纪录",
                       @"sortId":@"55555555"},

                     @{@"sortName":@"文学",
                       @"sortId":@"66666666"}

                     ];
    NSMutableArray *dataArr = [[NSMutableArray alloc] initWithArray:arr];
    SortLayoutView *view = [[SortLayoutView alloc] initWithFrame:self.view.frame dataArray:dataArr];
    
    [self.view addSubview:view];
    
}

@end
