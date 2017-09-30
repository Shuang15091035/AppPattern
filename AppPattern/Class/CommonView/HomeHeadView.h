//
//  TableHeadViewCell.h
//  AppPattern
//
//  Created by admin on 2017/9/21.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HomeHeadView;

@protocol HomeHeadViewDelegate <NSObject>
- (void)didSelectedRihtImageViewHomeHeadView:(HomeHeadView*)homeHeadView;
@end

@interface HomeHeadView : UIView
@property (nonatomic, weak) id<HomeHeadViewDelegate> delegate;
@property (nonatomic, strong) NSString *leftTitle;
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, strong) NSString *rightImage;
@end
