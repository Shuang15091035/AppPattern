//
//  PrivateOfferViewModel.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrivateOfferModel.h"
#import "HeadInfoModel.h"

@interface PrivateOfferViewModel : NSObject
@property (nonatomic, strong) HeadInfoModel *headInfo;
@property (nonatomic, strong) NSArray *priviteOfferData;
@property (nonatomic, strong) RACCommand *privateOfferDataCommand;
@end
