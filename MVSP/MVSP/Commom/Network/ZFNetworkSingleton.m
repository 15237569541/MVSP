//
//  ZFNetworkSingleton.m
//  findproperty
//
//  Created by MacAir on 16/7/24.
//  Copyright © 2016年 Centaline. All rights reserved.
//


/** 超时时间 */
#define TIMEOUT 7

#import "ZFNetworkSingleton.h"

@implementation ZFNetworkSingleton

+ (instancetype)sharedManagerClint {
    static ZFNetworkSingleton *_sharedManagerClint = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManagerClint = [ZFNetworkSingleton manager];
        _sharedManagerClint.requestSerializer.timeoutInterval = TIMEOUT;
//        [_sharedManagerClint.requestSerializer setValue:[RWSimpleTool getApptype] forHTTPHeaderField:@"appType"];
//        [_sharedManagerClint.requestSerializer setValue:[RWSimpleTool makeUUID] forHTTPHeaderField:@"Traceid"];
//        [_sharedManagerClint.requestSerializer setValue:[RWSimpleTool getCurrentDeviceType] forHTTPHeaderField:@"deviceType"];
//        [_sharedManagerClint.requestSerializer setValue:[RWSimpleTool getCFBundleVersion] forHTTPHeaderField:@"appVersionCode"];
//        [_sharedManagerClint.requestSerializer setValue:[RWSimpleTool getPhoneVersion] forHTTPHeaderField:@"deviceSystemVersion"];
//        [_sharedManagerClint.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//        [_sharedManagerClint.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"accept"];
//        [_sharedManagerClint.requestSerializer setValue:@"zh-CN" forHTTPHeaderField:@"language"];
//        _sharedManagerClint.requestSerializer.HTTPShouldHandleCookies = YES;
//        [[NSURLCache sharedURLCache] removeAllCachedResponses];
//        [_sharedManagerClint.requestSerializer setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
        
    });
    return _sharedManagerClint;
}

- (void)GET:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(SuccessBlock _Nullable )success failure:(FailureBlock _Nullable )failure;{
    AFHTTPSessionManager *manager = [ZFNetworkSingleton sharedManagerClint];
    NSString *urlString = [NetworkURLString stringByAppendingString:url];
    ZFLog(@"\n------>urlString:%@,\n------>params:%@",urlString,params);
    [manager GET:[NetworkURLString stringByAppendingString:url] parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSHTTPURLResponse *response = (NSHTTPURLResponse *)task.response;
        NSInteger statusCode = [response statusCode];
        ZFLog(@"\n------>成功\n------>urlString:%@ \n------>params:%@ \n------>statusCode:%ld \n------>responseObject:%@",urlString,params,statusCode,responseObject);
        if (success) {
            success(task, responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        ZFLog(@"\n------+++++++>urlString:%@ \n------>params:%@",urlString,params);
        if (failure) {
            failure(task,error);
        }
        
    }];
}


- (void)POST:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(SuccessBlock _Nullable )success failure:(FailureBlock _Nullable )failure {
    AFHTTPSessionManager *manager = [ZFNetworkSingleton sharedManagerClint];
    NSString *urlString = [NetworkURLString stringByAppendingString:url];
    [manager POST:urlString parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(task, responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(task,error);
        }
        
    }];
}
//上传图片
- (void)POST_uploadImages:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params imageArray:(NSMutableArray *_Nullable)imageArray progress:(ProgressBlock _Nullable)progress success:(SuccessBlock _Nullable )success failure:(FailureBlock _Nullable )failure{
    
    AFHTTPSessionManager *manager = [ZFNetworkSingleton sharedManagerClint];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"multipart/form-data", @"application/json", @"text/html", @"image/jpeg", @"image/png", @"application/octet-stream", @"text/json", nil];
    NSString *urlString = [NetworkURLString stringByAppendingString:url];
    ZFLog(@"\n------>urlString:%@,\n------>params:%@",urlString,params);
    [manager POST:urlString parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        for (int i = 0; i < imageArray.count; i++) {
            UIImage *image = imageArray[i];
            NSData *imageData = UIImageJPEGRepresentation(image, 0.5);
            // 在网络开发中，上传文件时，是文件不允许被覆盖，文件重名
            // 要解决此问题，
            // 可以在上传时使用当前的系统事件作为文件名
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            // 设置时间格式
            [formatter setDateFormat:@"yyyyMMddHHmmss"];
            NSString *dateString = [formatter stringFromDate:[NSDate date]];
            NSString *fileName = [NSString  stringWithFormat:@"%@.jpg", dateString];
            /*
             *该方法的参数
             1. appendPartWithFileData：要上传的照片[二进制流]
             2. name：对应网站上[upload.php中]处理文件的字段（比如upload）
             3. fileName：要保存在服务器上的文件名
             4. mimeType：上传的文件的类型
             */
            [formData appendPartWithFileData:imageData name:@"file" fileName:fileName mimeType:@"image/jpeg"]; //
        }
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        dispatch_queue_t queue = dispatch_get_main_queue();
        dispatch_async(queue, ^{
            progress(uploadProgress);
        });
    } success:^(NSURLSessionDataTask * _Nonnull task, id   responseObject) {
        NSHTTPURLResponse *response = (NSHTTPURLResponse *)task.response;
        NSInteger statusCode = [response statusCode];
         ZFLog(@"\n------>成功\n------>urlString:%@ \n------>params:%@ \n------>statusCode:%ld \n------>responseObject:%@",urlString,params,statusCode,responseObject);
        if (success) {
            success(task, responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(task,error);
        }
        NSLog(@"error:%@",error);
    }];
}






@end
