//
//  YuJinBaoCell.m
//  AppPattern
//
//  Created by admin on 2017/9/22.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "YuJinBaoCell.h"


@interface YuJinBaoCell()<YuJInBaoViewDelegate>

@property (nonatomic, strong) YuJInBaoView *yuJinBaoView;

@end

@implementation YuJinBaoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        YuJInBaoView *yuJinBaoView = [[YuJInBaoView alloc]init];
        yuJinBaoView.delegate = self;
        [self.contentView addSubview:yuJinBaoView];
        self.yuJinBaoView = yuJinBaoView;
        
        self.contentView.backgroundColor = [UIColor clearColor];
        self.hyb_lastViewInCell = self.yuJinBaoView;
        self.hyb_bottomOffsetToCell = 5;
    }
    return self;
}

- (void)setYuJinBaoModel:(YuJinBaoModel *)yuJinBaoModel{
    _yuJinBaoModel = yuJinBaoModel;
    self.yuJinBaoView.title =yuJinBaoModel.proName;
    NSDateFormatter *formater = [[NSDateFormatter alloc]init];
    [formater setDateFormat:@"yyyy-MM"];
    NSString *contenStr = [NSString stringWithFormat:@"%@%@ %@ 近七日年化",self.yuJinBaoModel.incomdePercent,@"%",[formater stringFromDate: self.yuJinBaoModel.fundDate]];
    self.yuJinBaoView.subtitle = contenStr;
    self.yuJinBaoView.btnTitle = @"立即存入";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    // Configure the view for the selected state
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    
}

#pragma mark - TODO
- (void)didSelectedStoreBtnViewYuJInBaoView:(YuJInBaoView*)yuJInBaoView{
    
}


- (void)layoutSubviews {
    [super layoutSubviews];
    UIView *superView = self.contentView;
    
    [self.yuJinBaoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView).offset(15);
        make.right.equalTo(superView).offset(-15);
        make.top.equalTo(self.homeHeadView.mas_bottom).offset(12);
        make.height.equalTo(@143);
    }];
}

@end
