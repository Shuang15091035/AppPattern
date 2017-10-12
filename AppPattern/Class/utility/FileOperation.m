//
//  FileOperation.m
//  AppPattern
//
//  Created by admin on 2017/10/12.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import "FileOperation.h"

@interface FileOperation(){
   
}

@end

@implementation FileOperation

/**
 移动指定类型文件 到某个目录中
 @param path <#path description#>
 */
+ (void)moveFilesFrom:(NSString *)path toNewDirectory:(NSString *)newPath fileType:(NSString *)type errorInfo:(void (^)(NSError *error)) error {
     NSError *mRrror;
    // 1.判断文件还是目录
    NSFileManager * fileManger = [NSFileManager defaultManager];
    BOOL isDir = NO;
    BOOL isExist = [fileManger fileExistsAtPath:path isDirectory:&isDir];
    if (isExist) {
        // 2. 判断是不是目录
        if (isDir) {
            NSArray * dirArray = [fileManger contentsOfDirectoryAtPath:path error:&mRrror];
            error(mRrror);
            NSString * subPath = nil;
            for (NSString * str in dirArray) {
                subPath  = [path stringByAppendingPathComponent:str];
                BOOL issubDir = NO;
                [fileManger fileExistsAtPath:subPath isDirectory:&issubDir];
                [self moveFilesFrom:subPath toNewDirectory:newPath fileType:type errorInfo:error];
            }
        }else if([path hasSuffix:type]){
            if (![fileManger fileExistsAtPath:newPath]) {
                [fileManger createDirectoryAtPath:newPath withIntermediateDirectories:YES attributes:nil error:nil];
            }
            [fileManger copyItemAtPath:path toPath:[newPath stringByAppendingPathComponent:[path lastPathComponent]] error:&mRrror];
            error(mRrror);
        }
    }else{
        NSError *cError = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:@{@"error":@"你打印的是目录或者不存在"}];
        error(cError);
    }
}
@end
