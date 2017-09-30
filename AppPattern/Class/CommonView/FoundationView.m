//
//  FoundationView.m
//  AppPattern
//
//  Created by admin on 2017/9/22.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "FoundationView.h"
#import "Masonry.h"
#import "NSString+Category.h"

#define KFoundationViewTitleFontSize 18.0

@interface FoundationView()
@property (nonatomic, strong) UILabel *rightTitle;
@property (nonatomic, strong) UILabel *rightContent;
@property (nonatomic, strong) UILabel *overheadInfo;

@end

@implementation FoundationView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
//        self.layer.masksToBounds = YES;
        
        UILabel *rightTitleLabel = [[UILabel alloc]init];
        rightTitleLabel.numberOfLines = 0;
        rightTitleLabel.font = [UIFont systemFontOfSize:20.0f];
        [self addSubview: rightTitleLabel];
        self.rightTitle = rightTitleLabel;
        
        UILabel *rightContentLabel = [[UILabel alloc]init];
        rightContentLabel.font = [UIFont systemFontOfSize:13.0f];
        rightContentLabel.textColor = [UIColor lightGrayColor];
        rightContentLabel.numberOfLines = 0;
        [self addSubview: rightContentLabel];
        self.rightContent = rightContentLabel;
        
        UILabel *bottomLabel = [[UILabel alloc]init];
        bottomLabel.font = [UIFont systemFontOfSize:12.0f];
        bottomLabel.textColor = [UIColor lightGrayColor];
        [self addSubview: bottomLabel];
        self.overheadInfo = bottomLabel;
    }
    return self;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.rightTitle.text = title;
}
- (void)setContent:(NSString *)content {
    _content = content;
    self.rightContent.text = content;
}
- (void)setAdditionalInfo:(NSString *)additionalInfo{
    _additionalInfo = additionalInfo;
    self.overheadInfo.text = additionalInfo;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    UIView *superView =  self;
    [self.rightTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView);
        make.top.equalTo(superView).offset(15);
        make.right.equalTo(superView).offset(-15);
        make.height.greaterThanOrEqualTo(@0);
    }];
    [self.rightContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView);
        make.top.equalTo(self.rightTitle.mas_bottom).offset(12);
        make.right.equalTo(superView).offset(-15);
        make.height.greaterThanOrEqualTo(@0);
    }];
    [self.overheadInfo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(superView.mas_right).offset(-15);
        make.top.equalTo(self.rightContent.mas_bottom).offset(7);
        make.height.equalTo(@15);
    }];
}
@end
