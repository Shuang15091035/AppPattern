//
//  HomeBaseCell.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HeadInfoModel.h"
#import "HomeHeadView.h"

@interface HomeBaseCell : UITableViewCell

@property (nonatomic, strong) HeadInfoModel *headInfo;
@property (nonatomic, strong) HomeHeadView *homeHeadView;

@end
