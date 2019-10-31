//
//  ZFNetworkSingleton.h
//  findproperty
//
//  Created by MacAir on 16/7/24.
//  Copyright © 2016年 Centaline. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ZFConst.h"
//请求超时
/** 成功的网络请求 */
typedef void(^SuccessBlock)(NSURLSessionDataTask * _Nonnull task, id _Nonnull responseObject);
/** 失败的网络请求 */
typedef void(^FailureBlock)(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error);

/** 上传图片进度 */
typedef void (^ProgressBlock)(NSProgress * _Nonnull progress);
/** 网络监测状态 block */
typedef void(^NetWorkStatusBlock)(NSInteger networkStatus);

@interface ZFNetworkSingleton : AFHTTPSessionManager

/** 共享的网络请求管理者 */
+ (instancetype _Nonnull)sharedManagerClint;

/** GET URL */
- (void)GET:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(SuccessBlock _Nullable )success failure:(FailureBlock _Nullable )failure;


/** POST URL */
- (void)POST:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(SuccessBlock _Nullable )success failure:(FailureBlock _Nullable )failure;
/** POST URL  上传图片*/
- (void)POST_uploadImages:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params imageArray:(NSMutableArray *_Nullable)imageArray progress:(ProgressBlock _Nullable)progress success:(SuccessBlock _Nullable )success failure:(FailureBlock _Nullable )failure;





@end
