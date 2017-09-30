//
//  HomeViewModel.m
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "HomeViewModel.h"

@interface HomeViewModel()
@property (nonatomic, strong)YuJinBaoViewModel  *mYuJinBaoViewModel;
@property (nonatomic, strong)PublicOfferViewModel  *mPublicOfferViewModel;
@property (nonatomic, strong)PrivateOfferViewModel  *mPrivateOfferViewModel;
@end

@implementation HomeViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.yuJinBaoViewModel = self.mYuJinBaoViewModel;
        self.publicOfferViewModel = self.mPublicOfferViewModel;
        self.privateOfferViewModel = self.mPrivateOfferViewModel;
    }
    return self;
}
- (NSArray *)headInfoArr{
    if (_headInfoArr == nil) {
        _headInfoArr = @[self.yuJinBaoViewModel.headInfo,self.publicOfferViewModel.headInfo,self.privateOfferViewModel.headInfo];
    }
    return _headInfoArr;
}

- (YuJinBaoViewModel *)mYuJinBaoViewModel {
    if (_yuJinBaoViewModel == nil) {
        _yuJinBaoViewModel = [[YuJinBaoViewModel alloc]init];
    }
    return _yuJinBaoViewModel;
}
- (PublicOfferViewModel *)mPublicOfferViewModel {
    if (_publicOfferViewModel == nil) {
        _publicOfferViewModel = [[PublicOfferViewModel alloc]init];
    }
    return _publicOfferViewModel;
}

- (PrivateOfferViewModel *)mPrivateOfferViewModel {
    if (_privateOfferViewModel == nil) {
        _privateOfferViewModel = [[PrivateOfferViewModel alloc]init];
    }
    return _privateOfferViewModel;
}

@end
