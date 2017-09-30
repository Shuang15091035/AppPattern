//
//  HomeBaseCell.m
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "HomeBaseCell.h"


@interface HomeBaseCell() <HomeHeadViewDelegate>

@end
@implementation HomeBaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        HomeHeadView *homeHeadView = [[HomeHeadView alloc]init];
        homeHeadView.delegate = self;
        [self.contentView addSubview:homeHeadView];
        self.homeHeadView = homeHeadView;
    }
    return self;
}
    
- (void)setHeadInfo:(HeadInfoModel *)headInfo {
    _headInfo = headInfo;
    self.homeHeadView.leftTitle = headInfo.leftTitle;
    self.homeHeadView.subtitle = headInfo.subtitle;
    self.homeHeadView.rightImage = headInfo.rightImage;
}

- (void)didSelectedRihtImageViewHomeHeadView:(HomeHeadView *)homeHeadView {
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    UIView *superView = self.contentView;
    
    [self.homeHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView.mas_left).offset(15);
        make.right.equalTo(superView.mas_right).offset(-15);
        make.top.equalTo(superView);
        make.height.equalTo(@44);
    }];
//     NSLog(@"%@,%p",NSStringFromCGRect(self.homeHeadView.frame),superView);
}

@end
