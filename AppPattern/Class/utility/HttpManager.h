//
//  HttpManager.h
//  Jpym
//
//  Created by 刘双 on 2017/5/24.
//  Copyright © 2017年 jpym.product.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpManager : NSObject

+ (void)getWithURL:(NSString *)url params:(id)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failureError;

+ (void)postWithURL:(NSString *)url params:(id)params success:(void (^)(id json))success failure:(void (^)(NSError * error))failureError;

@end
