//
//  FoundationCell.m
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "FoundationCell.h"
#import "HomeCirclueView.h"
#import "FoundationView.h"

@interface FoundationCell()
@property (nonatomic, strong) HomeCirclueView *circleView;
@property (nonatomic, strong) FoundationView *foundateView;
@property (nonatomic, strong) UIImageView *bottomView;
@end

@implementation FoundationCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        HomeCirclueView *circleView = [HomeCirclueView new];
        [self.contentView addSubview:circleView];
        self.circleView = circleView;
        
        FoundationView *foundateView = [FoundationView new];
        [self.contentView addSubview:foundateView];
        self.foundateView = foundateView;
        
        UIImageView *bottomView = [[UIImageView alloc]init];
        bottomView.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:bottomView];
        self.bottomView = bottomView;
        
        self.hyb_lastViewInCell = self.bottomView;
        self.hyb_bottomOffsetToCell = 25;
    }
    return self;
}

- (void)setFoundationModel:(FoundationModel *)foundationModel {
    _foundationModel = foundationModel;
    self.circleView.tilte = foundationModel.circleTitle;
    self.circleView.subTilte = foundationModel.circleSubTitle;
    self.circleView.content = foundationModel.circleContent;
    
    self.foundateView.title = foundationModel.foundationViewTitle;
    self.foundateView.content = foundationModel.foundationViewContent;
    self.foundateView.additionalInfo = foundationModel.foundationViewadditionalInfo;
}

#warning - how to setup height of foundationView
- (void)layoutSubviews {
    [super layoutSubviews];
    
    UIView *superView =self.contentView;
    
    [self.circleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView.mas_left).offset(15);
        make.top.equalTo(self.homeHeadView.mas_bottom).offset(15);
        make.height.equalTo(@95);
        make.width.equalTo(@95);
    }];
    [self.foundateView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.circleView.mas_right).offset(30);
        make.top.equalTo(self.homeHeadView.mas_bottom).offset(15);
        make.right.equalTo(superView).offset(-15);
       // make.height.equalTo(@95); //此处的高应该如何设置？？
    }];
    [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView.mas_left).offset(15);
        make.right.equalTo(superView.mas_right).offset(-15);
        make.bottom.equalTo(superView.mas_bottom).offset(-5);
        make.height.equalTo(@3);
    }];
}

@end
