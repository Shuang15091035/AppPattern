//
//  PublicOfferModel.m
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "PublicOfferModel.h"

@implementation ProductTBList

@end

@implementation PublicOfferModel
// 返回容器类中的所需要存放的数据类型 (以 Class 或 Class Name 的形式)。
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"productTBLists" : [ProductTBList class]};
}
@end
