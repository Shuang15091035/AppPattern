//
//  NSString+CalculateLength.m
//  AppPattern
//
//  Created by admin on 2017/9/21.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "NSString+Category.h"

@implementation NSString (CalculateLength)
- (CGFloat)calculateCurrentTextWidthWithFontSize:(CGFloat)fontSize instrictHeight:(CGFloat)height{
    CGSize textSize = CGSizeZero;
    if ([[UIDevice currentDevice].systemVersion floatValue] > 7.0) {
       textSize = [self sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]}];
    }else{
        textSize = [self sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(MAXFLOAT, height) lineBreakMode:NSLineBreakByWordWrapping];
    }
    return textSize.width;
}
- (CGFloat)calculateCurrentTextHeightWithFontSize:(CGFloat)fontSize instrictWidth:(CGFloat)width{
    CGSize textSize = CGSizeZero;
    if ([[UIDevice currentDevice].systemVersion floatValue] > 7.0) {
        textSize = [self sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]}];
    }else{
        textSize = [self sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(width, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
    }
    return textSize.height;
}
@end

#import <CommonCrypto/CommonDigest.h>

#define FIIRST_KEY @"kingdom"
#define SENCOND_KEY @"kdwis"
#define THIRD_KEY @"des"

@implementation NSString (Password)
- (NSString *)MD5{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (int)strlen(cStr), digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    
    return result;
}

- (NSString *)SHA1{
    const char *cStr = [self UTF8String];
    NSData *data = [NSData dataWithBytes:cStr length:self.length];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, (int)data.length, digest);
    
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    
    return result;
}

- (NSString *)base64Encode{
    const char *cStr = [self UTF8String];
    NSData *data = [NSData dataWithBytes:cStr length:self.length];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)base64Decode{
    NSData *data = [[NSData alloc]initWithBase64EncodedString:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

@end
