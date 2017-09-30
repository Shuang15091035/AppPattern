//
//  UIColor+Category.h
//  AppPattern
//
//  Created by admin on 2017/9/22.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

@interface UIColor (RGB)
+ (UIColor*) colorWithARGB:(unsigned long)argb;
+ (UIColor*) colorWithRGB:(unsigned long)rgb;
@end

@interface UIColor (HEXString)
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
@end
