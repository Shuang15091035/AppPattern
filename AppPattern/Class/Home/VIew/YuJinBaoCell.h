//
//  YuJinBaoCell.h
//  AppPattern
//
//  Created by admin on 2017/9/22.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YuJInBaoView.h"
#import "YuJinBaoModel.h"
#import "HomeBaseCell.h"

@class YuJinBaoCell;

@protocol YuJinBaoCellDelegate <NSObject>
- (void)didSelectedYuJinBaoViewButton:(YuJinBaoCell *)yuJinBaoCell;
@end

@interface YuJinBaoCell : HomeBaseCell

@property (nonatomic, weak) id<YuJinBaoCellDelegate> delegate;
@property (nonatomic, strong) YuJinBaoModel *yuJinBaoModel;

@end
