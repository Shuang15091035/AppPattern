//
//  TableHeadViewCell.m
//  AppPattern
//
//  Created by admin on 2017/9/21.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "HomeHeadView.h"
#import "Masonry.h"
#import "NSString+Category.h"

#define KHomeHeadViewTitleFontSize 13.0
#define KHomeHeadViewSubTitleFontSize 13.0
#define KHomeHeadViewTextHeight 30.0f

@interface HomeHeadView()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *lineView;
@property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UIButton *imageView;
@property (nonatomic, strong) UIView *bottomLineView;
@end

@implementation HomeHeadView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *titleLabel = [[UILabel alloc]init];
        titleLabel.font = [UIFont systemFontOfSize:KHomeHeadViewTitleFontSize];
        titleLabel.textColor = [UIColor blackColor];
        [self addSubview:titleLabel];
        self.titleLabel = titleLabel;
        
        UIView *lineView = [[UIView alloc]init];
        lineView.backgroundColor = [UIColor grayColor];
        [self addSubview:lineView];
        self.lineView = lineView;
        
        UILabel *subTitleLabel = [[UILabel alloc]init];
        subTitleLabel.font = [UIFont systemFontOfSize:KHomeHeadViewSubTitleFontSize];
        subTitleLabel.textColor = [UIColor lightGrayColor];
        [self addSubview:subTitleLabel];
        self.subTitleLabel = subTitleLabel;
        
        UIButton *imageView = [[UIButton alloc]init];
        [self addSubview:imageView];
        self.imageView = imageView;
        
        UIView *bottomLineView = [[UIView alloc]init];
        [self addSubview:bottomLineView];
        bottomLineView.backgroundColor = [UIColor lightGrayColor];
        self.bottomLineView = bottomLineView;
    }
    return self;
}

- (void)setLeftTitle:(NSString *)leftTitle{
    _leftTitle = leftTitle;
    self.titleLabel.text = leftTitle;
}

- (void)setSubtitle:(NSString *)subtitle {
    _subtitle = subtitle;
    self.subTitleLabel.text = subtitle;
}

- (void)setRightImage:(NSString *)rightImage {
    _rightImage = rightImage;
    [self.imageView setImage:[UIImage imageNamed:rightImage] forState:UIControlStateNormal];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UIView *superView = self;
    CGFloat titleWidth = [self.leftTitle calculateCurrentTextWidthWithFontSize:14.0f instrictHeight:KHomeHeadViewTextHeight];
    CGFloat subTitleWidth = [self.subtitle calculateCurrentTextWidthWithFontSize:14.0f instrictHeight:30];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView.mas_left);
        make.centerY.equalTo(superView.mas_centerY);
        make.height.equalTo(superView.mas_height);
        make.width.equalTo(@(titleWidth));
    }];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.titleLabel.mas_right).offset(5);
        make.centerY.equalTo(superView.mas_centerY);
        make.width.equalTo(@(1));
        make.height.equalTo(@(KHomeHeadViewTextHeight-15));
    }];
    
    [self.subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.lineView.mas_right).offset(5);
        make.centerY.equalTo(superView.mas_centerY);
        make.width.equalTo(@(subTitleWidth));
        make.height.equalTo(self.titleLabel.mas_height);
    }];
    
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(superView.mas_right);
        make.centerY.equalTo(superView.mas_centerY);
        make.width.equalTo(@(10));
        make.height.equalTo(@(10));
    }];
    [self.bottomLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView);
        make.right.equalTo(superView);
        make.top.equalTo(self.titleLabel.mas_bottom);
        make.height.equalTo(@(1));
    }];
}

@end
