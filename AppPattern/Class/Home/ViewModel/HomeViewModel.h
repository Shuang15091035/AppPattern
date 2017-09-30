//
//  HomeViewModel.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YuJinBaoViewModel.h"
#import "PublicOfferViewModel.h"
#import "PrivateOfferViewModel.h"

@interface HomeViewModel : NSObject

@property (nonatomic, strong) NSArray *headInfoArr;
@property (nonatomic, strong) YuJinBaoViewModel *yuJinBaoViewModel;
@property (nonatomic, strong) PublicOfferViewModel *publicOfferViewModel;
@property (nonatomic, strong) PrivateOfferViewModel *privateOfferViewModel;
@end
