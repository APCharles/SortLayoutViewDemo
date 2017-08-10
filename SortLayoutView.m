//
//  SortLayoutView.m
//  SortLayoutViewDemo
//
//  Created by 安鹏 on 16/6/16.
//  Copyright © 2016年 安鹏. All rights reserved.
//

#import "SortLayoutView.h"
#import "LXReorderableCollectionViewFlowLayout.h"
#import "SortLayoutCell.h"
#import "DataModel.h"
#import "UIView+APFrame.h"
static NSString * const identifier = @"SortCell";
@interface SortLayoutView() <LXReorderableCollectionViewDataSource,LXReorderableCollectionViewDelegateFlowLayout>


/** 存储数据源的数组 */
@property(strong,nonatomic)NSMutableArray *dataArray;
@end
@implementation SortLayoutView

- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSMutableArray *)dataArray{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        
    
        
        for (NSDictionary *dic in dataArray) {
            
            DataModel *model = [[DataModel alloc] initWithDic:dic];
            
            [self.dataArray addObject:model];
            
        }

        
        self.backgroundColor = [UIColor whiteColor];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 12, 0, 0)];
        label.text = @"点击进入，长按拖动";
        label.font = [UIFont systemFontOfSize:15];
        [label sizeToFit];
        [self addSubview:label];
        
            //中间排序
        LXReorderableCollectionViewFlowLayout *layout = [LXReorderableCollectionViewFlowLayout new];
        
        UICollectionView *collectView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 99,
                                                                                          frame.size.width,
                                                                                           frame.size.height-99) collectionViewLayout:layout];
        
        collectView.backgroundColor = [UIColor whiteColor];
        collectView.dataSource = self;
        collectView.delegate = self;
       
        [collectView registerClass:[SortLayoutCell class] forCellWithReuseIdentifier:identifier];
        
        [self addSubview:collectView];
        
        
            //设置cell大小和细节
        CGFloat margin = 20;
        CGFloat width  = ([UIScreen mainScreen].bounds.size.width - margin * 5) / 4.f;
        CGFloat height = width * 3.f / 7.f; // 按图片比例来的l
        layout.sectionInset = UIEdgeInsetsMake(5, margin, 10, margin);
        layout.itemSize = CGSizeMake(width, height);
        layout.minimumInteritemSpacing = margin;
        layout.minimumLineSpacing = 15;

        
    }
    
    return self;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    SortLayoutCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    DataModel *model = _dataArray[indexPath.row];

    [cell.sortBtn setTitle:model.sortName forState:UIControlStateNormal];

    
        // 在每个cell下面生成一个虚线的框框
    UIButton *placeholderBtn = [[UIButton alloc] initWithFrame:cell.frame];
    [placeholderBtn setBackgroundImage:[UIImage imageNamed:@"channel_sort_placeholder"] forState:UIControlStateNormal];
  
    placeholderBtn.center= cell.center;
    
    placeholderBtn.width  -= 1;
    placeholderBtn.height -= 1;
    
  
    [collectionView insertSubview:placeholderBtn atIndex:0];

    
    return cell;
}

#pragma mark LXReorderableCollectionViewDataSource
- (void)collectionView:(UICollectionView *)collectionView itemAtIndexPath:(NSIndexPath *)fromIndexPath willMoveToIndexPath:(NSIndexPath *)toIndexPath
{
    DataModel *model = _dataArray[fromIndexPath.item];
    [_dataArray removeObjectAtIndex:fromIndexPath.item];
    [_dataArray insertObject:model atIndex:toIndexPath.item];
}

- (void)collectionView:(UICollectionView *)collectionView itemAtIndexPath:(NSIndexPath *)fromIndexPath didMoveToIndexPath:(NSIndexPath *)toIndexPath
{
    
}

- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    return YES;
}
- (BOOL)collectionView:(UICollectionView *)collectionView itemAtIndexPath:(NSIndexPath *)fromIndexPath canMoveToIndexPath:(NSIndexPath *)toIndexPath
{
    
    return YES;
}



# pragma mark - getter

- (NSMutableArray *)dataArray
{
    if (!_dataArray ) {
        
        _dataArray = [NSMutableArray array];
    }
    

    
    return _dataArray;
}

@end
