//
//  FileOperation.h
//  AppPattern
//
//  Created by admin on 2017/10/12.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileOperation : NSObject
+ (void)moveFilesFrom:(NSString *)path toNewDirectory:(NSString *)newPath fileType:(NSString *)type errorInfo:(void (^)(NSError *error)) error;
@end
