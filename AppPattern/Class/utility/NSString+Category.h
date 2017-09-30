//
//  NSString+CalculateLength.h
//  AppPattern
//
//  Created by admin on 2017/9/21.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (CalculateLength)
- (CGFloat)calculateCurrentTextWidthWithFontSize:(CGFloat)fontSize instrictHeight:(CGFloat)height;
- (CGFloat)calculateCurrentTextHeightWithFontSize:(CGFloat)fontSize instrictWidth:(CGFloat)width;
@end

@interface NSString (Password)

/**
 32位MD5加密
 
 @return 加密结果
 */
- (NSString *)MD5;


/**
 SHA1加密
 
 @return SHA1加密结果
 */
- (NSString *)SHA1;


/**
 base64加密
 
 @return 加密之后的结果
 */
- (NSString *)base64Encode;


/**
 base64解码
 
 @return 返回解码后的结果
 */
- (NSString *)base64Decode;


@end
