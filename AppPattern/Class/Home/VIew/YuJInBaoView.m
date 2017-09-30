//
//  YuJInBaoView.m
//  AppPattern
//
//  Created by admin on 2017/9/21.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "YuJInBaoView.h"
#import "NSString+Category.h"

#define KYuJInBaoViewTitleFontSize 18.0
#define KYuJInBaoViewSubTitleFontSize 15.0
#define KYuJInBaoViewButtonTitleFontSize 18.0
#define KHomeHeadViewLeftAndRihtSpace 15.0

@interface YuJInBaoView()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UIButton *bottomBtn;
@end

@implementation YuJInBaoView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *titleLabel = [[UILabel alloc]init];
        titleLabel.font = [UIFont systemFontOfSize:KYuJInBaoViewTitleFontSize];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:titleLabel];
        self.titleLabel = titleLabel;
        
        UILabel *subTitleLabel = [[UILabel alloc]init];
        subTitleLabel.font = [UIFont systemFontOfSize:KYuJInBaoViewTitleFontSize];
        subTitleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:subTitleLabel];
        self.subTitleLabel = subTitleLabel;
        
        UIButton *bottomBtn = [[UIButton alloc]init];
        bottomBtn.layer.cornerRadius = 5.0f;
        bottomBtn.layer.masksToBounds = YES;
        bottomBtn.layer.borderWidth = 2.0f;
        bottomBtn.layer.borderColor = [UIColor grayColor].CGColor;
        [bottomBtn addTarget:self action:@selector(storeButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:bottomBtn];
        self.bottomBtn = bottomBtn;
    }
    return self;
}
- (void)storeButtonClick:(UIButton *)stroeBtn{
    if (_delegate && [self.delegate respondsToSelector:@selector(didSelectedStoreBtnViewYuJInBaoView:)]) {
        [_delegate didSelectedStoreBtnViewYuJInBaoView:self];
    }
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleLabel.text = title;
    self.titleLabel.textColor = [UIColor blackColor];
}

- (void)setSubtitle:(NSString *)subtitle {
    _subtitle = subtitle;
    self.subTitleLabel.text = subtitle;
    self.subTitleLabel.textColor = [UIColor lightGrayColor];
}

- (void)setBtnTitle:(NSString *)btnTitle {
    _btnTitle = btnTitle;
    [self.bottomBtn setTitle:btnTitle forState:UIControlStateNormal];
    [self.bottomBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    UIView *superView = self;
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superView.mas_top).offset(5);
        make.left.right.equalTo(superView);
        make.width.equalTo(superView);
        make.height.equalTo(@25);
    }];
    [self.subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).offset(5);
        make.left.right.equalTo(superView);
        make.width.equalTo(superView);
        make.height.greaterThanOrEqualTo(@0);
    }];
    [self.bottomBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.subTitleLabel.mas_bottom).offset(15);
        make.left.equalTo(superView.mas_left).offset(60);
        make.right.equalTo(superView.mas_right).offset(-60);
        make.height.equalTo(@44);
    }];
}
@end
