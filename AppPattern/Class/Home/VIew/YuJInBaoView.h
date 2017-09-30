//
//  YuJInBaoView.h
//  AppPattern
//
//  Created by admin on 2017/9/21.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YuJInBaoView;

@protocol YuJInBaoViewDelegate <NSObject>
- (void)didSelectedStoreBtnViewYuJInBaoView:(YuJInBaoView*)yuJInBaoView;
@end

@interface YuJInBaoView : UIView
@property (nonatomic, weak) id<YuJInBaoViewDelegate> delegate;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, strong) NSString *btnTitle;
@end
