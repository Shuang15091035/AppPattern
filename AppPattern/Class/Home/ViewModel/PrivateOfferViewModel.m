//
//  PrivateOfferViewModel.m
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "PrivateOfferViewModel.h"
#import "FoundationModel.h"

@implementation PrivateOfferViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupRACCommand];
    }
    return self;
}
- (HeadInfoModel *)headInfo {
    if (_headInfo == nil) {
        _headInfo = [[HeadInfoModel alloc]init];
        _headInfo.leftTitle = @"私募基金";
        _headInfo.subtitle = @"地产";
        _headInfo.rightImage = @"arrow";
    }
    return _headInfo;
}
- (void)setupRACCommand{
    @weakify(self);
    _privateOfferDataCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
        return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
            @strongify(self);
            [self fetchPrivateOfferDataSuccess:^(id result) {
                NSArray *privateProduct = [NSJSONSerialization JSONObjectWithData:result options:NSJSONReadingMutableContainers error:nil];
                [self loadPrivateOfferProduct:privateProduct];
                [subscriber sendNext:self.priviteOfferData];
                [subscriber sendCompleted];
            } failure:^(NSError *error) {
                [subscriber sendError:error];
            }];
            return nil;
        }];
    }];
}
//获取私募产品
- (void)fetchPrivateOfferDataSuccess:(void(^)(id result))success failure:(void (^)(NSError *error))failure{
    NSDictionary *dic = @{@"proId":@""};
    [HttpManager postWithURL:PrivateOfferProducts params:dic success:^(id json) {
        success(json);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)loadPrivateOfferProduct:(NSArray *)products{
    NSMutableArray *privateProducts = [NSMutableArray array];
//    for (NSDictionary *dic in products) {
//        PrivateOfferModel *product = [PrivateOfferModel yy_modelWithDictionary:dic];
//        [privateProducts addObject:product];
//    }
    FoundationModel *foundationModel = [FoundationModel new];
    foundationModel.circleTitle = @"房地产";
    foundationModel.circleSubTitle = @"投资反向";
    foundationModel.circleContent = @"(03-28)";
    
    foundationModel.foundationViewTitle = @"钜洲鸿途一号二期";
    foundationModel.foundationViewContent = @"实力雄厚交易对手，二线城市最后价格洼地！";
    foundationModel.foundationViewadditionalInfo = @"起投金额100万";
    [privateProducts addObject: foundationModel];
    self.priviteOfferData = [privateProducts copy];
//    [LSJpymModel shareJpymModel].privateOfferProducts = privateProducts;
//    self.returnBlock(privateProducts);
}
@end
