//
//  FoundationViewModel.m
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "PublicOfferViewModel.h"
#import "PublicOfferModel.h"
#import "FoundationModel.h"

@implementation PublicOfferViewModel

- (HeadInfoModel *)headInfo {
    if (_headInfo == nil) {
        _headInfo = [[HeadInfoModel alloc]init];
        _headInfo.leftTitle = @"公募优选";
        _headInfo.subtitle = @"明星经理集结";
        _headInfo.rightImage = @"arrow";
    }
    return _headInfo;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupRACCommand];
    }
    return self;
}
- (void)setupRACCommand{
    @weakify(self);
    _publicOfferDataCommand = [[RACCommand alloc]initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
        return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
            @strongify(self);
            [self fetchPublicOfferDataSuccess:^(id result) {
                NSArray *publicOfferData = [NSJSONSerialization JSONObjectWithData:result options:NSJSONReadingMutableContainers error:nil];
                [self loadPublicProducts:publicOfferData];
                [subscriber sendNext:self.publicOfferModels];
                [subscriber sendCompleted];
            } failure:^(NSError *error) {
                [subscriber sendError:error];
            } ];
            return nil;
        }];
    }];
}
//获取公募产品
- (void)fetchPublicOfferDataSuccess:(void(^)(id result))success failure:(void (^)(NSError *error))failure{
    NSDictionary *bodyDic = @{@"fundCode":@""};
    [HttpManager postWithURL:PublicOfferingProducts params:bodyDic success:^(id json) {
        success(json);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

- (void)loadPublicProducts:(NSArray *)productArray{
    NSMutableArray *publicOfferProduct = [NSMutableArray array];
//    for (NSDictionary *dic in productArray) {
//        PublicOfferModel *singleProduct = [PublicOfferModel yy_modelWithDictionary:dic];
//        [publicOfferProduct addObject:singleProduct];
//    }
    FoundationModel *foundationModel = [FoundationModel new];
    foundationModel.circleTitle = @"1.59";
    foundationModel.circleContent = @"单位净值";
    foundationModel.circleSubTitle = @"(03-28)";
    foundationModel.foundationViewTitle = @"景顺长城成长之星";
    foundationModel.foundationViewContent = @"人民币配置美元，回撤极小，出海盈利首选！";
    foundationModel.foundationViewadditionalInfo = @"近一年收益 25.69";
    [publicOfferProduct addObject:foundationModel];
    self.publicOfferModels = [publicOfferProduct copy];
//    [LSJpymModel shareJpymModel].publicOfferProducts = [self filterSamePublicProduct:publicOfferProduct];
//    self.returnBlock([LSJpymModel shareJpymModel].publicOfferProducts);
}
@end
