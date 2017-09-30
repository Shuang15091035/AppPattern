//
//  PublicOfferModel.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductTBList : NSObject
@property (nonatomic,copy) NSString *gpdm;
@property (nonatomic,copy) NSString *gpmc;
@property (nonatomic,copy) NSString *sl;
@property (nonatomic,copy) NSString *gyjz;
@property (nonatomic,copy) NSString *bl;
@property (nonatomic,copy) NSString *type;
@property (nonatomic,copy) NSString *refFundCode;
@end

@interface PublicOfferModel : NSObject
//基金所属的模块 3.公募推荐 4.平衡型 5.稳健型 6.激进型 7.钰茂推荐 8.热门主题 9.热销排行
@property (nonatomic,copy) NSString *moduleType;
@property (nonatomic,copy) NSString *fundCode;
@property (nonatomic,copy) NSString *proName;
@property (nonatomic,copy) NSString *proStatus;
//基金类型 1. 指数型 2.混合型 3.债券型 4.货币型 5.ETF 6.股票型 7.QDll
@property (nonatomic,copy) NSString *proType;
@property (nonatomic,copy) NSString *risk;
//基金规模
@property (nonatomic,copy) NSString *fundSize;
@property (nonatomic,copy) NSString *currency;
//推荐理由
@property (nonatomic,copy) NSString *recommandReson;
//成立时间
@property (nonatomic,copy) NSString *setupDate;
//净值日期
@property (nonatomic,copy) NSString *fundDate;
//万份收益
@property (nonatomic,copy) NSString *dividendAmount;
//货币基金成立以来的收益
@property (nonatomic,copy) NSString *incomdePercent;
//单位净值
@property (nonatomic,copy) NSString *fundValue;
//累计净值
@property (nonatomic,copy) NSString *fundTotalNetval;
//近一月增长率
@property (nonatomic,copy) NSString *incomdepercentMonth1;
@property (nonatomic,copy) NSString *incomdepercentMonth3;
@property (nonatomic,copy) NSString *incomdepercentYear1;
@property (nonatomic,copy) NSString *incomdepercentNow;
//minimumPurchaseAmount
@property (nonatomic,copy) NSString *minimumPurchaseAmount;
@property (nonatomic,copy) NSString *proManager;
@property (nonatomic,copy) NSString *proDeposit;
@property (nonatomic,copy) NSString *investment;
@property (nonatomic,copy) NSString *investmentStrategy;
@property (nonatomic,copy) NSString *investmentRange;
//风险收益率特征
@property (nonatomic,copy) NSString *riskReturn;
@property (nonatomic,copy) NSString *fieldName1;
@property (nonatomic,copy) NSString *investmentManagerId;
@property (nonatomic,copy) NSString *investmentManagerName;
@property (nonatomic,copy) NSString *synosis;
@property (nonatomic,copy) NSString *investIdea;
@property (nonatomic,strong) NSArray *productTBLists;
@end
