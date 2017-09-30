//
//  YuJinBaoModel.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YuJinBaoModel : NSObject
@property (nonatomic,assign) uint64_t fundCode;
@property (nonatomic,copy) NSString *proName;
@property (nonatomic,copy) NSString *recommandReson;
@property (nonatomic,strong) NSDate *fundDate;
@property (nonatomic,copy) NSString *dividendAmount;
@property (nonatomic,copy) NSString *incomdePercent;
@end
