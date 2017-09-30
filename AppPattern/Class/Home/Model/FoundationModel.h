//
//  FoundationModel.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>

//self.circleView.tilte = @"1.59";
//self.circleView.subTilte = @"单位净值";
//self.circleView.content = @"(03-28)";
//
//self.foundateView.title = @"景顺长城成长之星";
//self.foundateView.content = @"人民币配置美元，回撤极小，出海盈利首选！";
//self.foundateView.additionalInfo = @"近一年收益 25.69";
@interface FoundationModel : NSObject

@property (nonatomic, copy) NSString *circleTitle;
@property (nonatomic, copy) NSString *circleSubTitle;
@property (nonatomic, copy) NSString *circleContent;
@property (nonatomic, copy) NSString *foundationViewTitle;
@property (nonatomic, copy) NSString *foundationViewContent;
@property (nonatomic, copy) NSString *foundationViewadditionalInfo;

@end

