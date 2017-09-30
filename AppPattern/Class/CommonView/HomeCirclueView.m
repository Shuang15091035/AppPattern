//
//  HomeCirclueView.m
//  AppPattern
//
//  Created by admin on 2017/9/22.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "HomeCirclueView.h"
#import "UIColor+Category.h"
#import "Masonry.h"

@interface HomeCirclueView()
@property (nonatomic, strong) UIImageView *gImageView;
@property (nonatomic, strong) UILabel *topView;
@property (nonatomic, strong) UILabel *midView;
@property (nonatomic, strong) UILabel *bottomView;
@end

@implementation HomeCirclueView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc]init];
        [self addSubview:imageView];
        self.gImageView = imageView;
        UILabel *topView = [UILabel new];
        topView.textAlignment = NSTextAlignmentCenter;
        topView.textColor = [UIColor redColor];
        topView.font = [UIFont systemFontOfSize:18.0f];
        [self addSubview:topView];
        self.topView = topView;
        UILabel *midView = [UILabel new];
        midView.textAlignment = NSTextAlignmentCenter;
        midView.textColor = RGB(132, 132, 132);
        midView.font = [UIFont systemFontOfSize:11];
        [self addSubview:midView];
        self.midView = midView;
        UILabel *bottomView = [UILabel new];
        bottomView.textAlignment = NSTextAlignmentCenter;
        bottomView.textColor = RGB(132, 132, 132);
        bottomView.font = [UIFont systemFontOfSize:10];
        [self addSubview:bottomView];
        self.bottomView = bottomView;
    }
    return self;
}

- (void)setBgImage:(NSString *)bgImage {
    _bgImage = bgImage;
    self.gImageView.image = [UIImage imageNamed:bgImage];
}

- (void)setTilte:(NSString *)tilte {
    _tilte = tilte;
    self.topView.text = tilte;
}

- (void)setSubTilte:(NSString *)subTilte{
    _subTilte = subTilte;
    self.midView.text = subTilte;
}

- (void)setContent:(NSString *)content {
    _content = content;
    self.bottomView.text = content;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (!self.bgImage) {
        self.gImageView.image = [UIImage imageNamed:@"homeCircleBg"];
    }
    UIView *superView = self;
    [self.gImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(superView);
    }];
    [self.topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(superView);
        make.bottom.equalTo(superView.mas_centerY);
        make.height.equalTo(@25);
    }];
    [self.midView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(superView);
        make.top.equalTo(superView.mas_centerY);
        make.height.equalTo(@15);
    }];
    [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(superView);
        make.top.equalTo(self.midView.mas_bottom);
        make.height.equalTo(@10);
    }];
}
@end
