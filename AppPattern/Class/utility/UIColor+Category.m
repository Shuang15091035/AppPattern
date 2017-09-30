//
//  UIColor+Category.m
//  AppPattern
//
//  Created by admin on 2017/9/22.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "UIColor+Category.h"

@implementation UIColor (RGB)
- (UIColor *)initWithARGB:(unsigned long)argb
{
    CGFloat a = (CGFloat)((argb & 0xff000000) >> 24) / 255.0f;
    CGFloat r = (CGFloat)((argb & 0x00ff0000) >> 16) / 255.0f;
    CGFloat g = (CGFloat)((argb & 0x0000ff00) >> 8 ) / 255.0f;
    CGFloat b = (CGFloat) (argb & 0x000000ff)        / 255.0f;
    return [self initWithRed:r green:g blue:b alpha:a];
}

- (UIColor *)initWithRGB:(unsigned long)rgb
{
    NSInteger argb = 0xff000000 | rgb;
    return [self initWithARGB:argb];
}
@end

@implementation UIColor (HEXString)
- (UIColor *)colorWithHexString:(NSString *)stringToConvert
{
    if ([stringToConvert hasPrefix:@"#"])
    {
        stringToConvert = [stringToConvert substringFromIndex:1];
    }
    
    NSScanner *scanner = [NSScanner scannerWithString:stringToConvert];
    unsigned hexNum;
    
    if (![scanner scanHexInt:&hexNum])
    {
        return nil;
    }
    
    return [self colorWithRGBHex:hexNum];
}
- (UIColor *)colorWithRGBHex:(UInt32)hex
{
    
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}
@end
