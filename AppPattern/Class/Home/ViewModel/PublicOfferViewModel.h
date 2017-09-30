//
//  FoundationViewModel.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HeadInfoModel.h"


@interface PublicOfferViewModel : NSObject

@property (nonatomic, strong) HeadInfoModel *headInfo;
@property (nonatomic, strong) NSArray *publicOfferModels;
@property (nonatomic, strong) RACCommand *publicOfferDataCommand;

@end
