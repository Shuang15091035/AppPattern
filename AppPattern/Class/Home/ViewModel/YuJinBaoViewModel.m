//
//  YuJinBaoViewModel.m
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "YuJinBaoViewModel.h"
#import "YuJinBaoModel.h"

@implementation YuJinBaoViewModel
- (instancetype)init
{
    if (self = [super init]) {
        [self setupRACCommand];
    }
    return self;
}
- (void)setupRACCommand{
    [self fetchYuJInBaoData];
}
- (NSMutableArray *)yuJinBaoArr {
    if (_yuJinBaoArr == nil) {
        _yuJinBaoArr = [NSMutableArray array] ;
    }
    return _yuJinBaoArr;
}

- (HeadInfoModel *)headInfo {
    if (_headInfo == nil) {
        _headInfo = [[HeadInfoModel alloc]init];
        _headInfo.leftTitle = @"钰金宝";
        _headInfo.subtitle = @"在线交易";
        _headInfo.rightImage = @"arrow";
    }
    return _headInfo;
}
//获取钰金宝产品
- (void)fetchYuJInBaoData{
    [HttpManager getWithURL:YuJinBaoProduct params:nil success:^(id json) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:json options:NSJSONReadingMutableContainers error:nil];
        YuJinBaoModel *model = [YuJinBaoModel yy_modelWithDictionary:dic];
        CGFloat incomdePercent = model.incomdePercent.floatValue;
        model.incomdePercent = [NSString stringWithFormat:@"+%.2f",incomdePercent];
        [self.yuJinBaoArr addObject:model];
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}
                
@end
