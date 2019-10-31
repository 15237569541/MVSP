//
//  General_Integrated.h
//  ZFHopesOne
//
//  Created by MacbookPro13 on 2017/7/14.
//  Copyright © 2017年 MacbookPro13. All rights reserved.
//


#ifndef General_Integrated_h
#define General_Integrated_h

#ifdef DEBUG
#define ZFLog(format, ...) \
do { \
NSLog(@"<%@ : %d : %s>-: %@", \
[[NSString stringWithUTF8String:__FILE__] lastPathComponent], \
__LINE__, \
__FUNCTION__, \
[NSString stringWithFormat:format, ##__VA_ARGS__]); \
} while(0)
#elif ktools_kaifa
#define ZFLog(format, ...) \
do { \
NSLog(@"<%@ : %d : %s>-: %@", \
[[NSString stringWithUTF8String:__FILE__] lastPathComponent], \
__LINE__, \
__FUNCTION__, \
[NSString stringWithFormat:format, ##__VA_ARGS__]); \
} while(0)
#else
#define ZFLog(...)
#endif



// 来自YYKit
#ifndef weakify
#if DEBUG
#if __has_feature(objc_arc)
#define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#else
#if __has_feature(objc_arc)
#define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
#endif
#endif
#endif

#ifndef strongify
#if DEBUG
#if __has_feature(objc_arc)
#define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
#endif
#else
#if __has_feature(objc_arc)
#define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
#endif
#endif
#endif



//分页数据每次返回数据条数
#define PageSize 20
//类本身的弱引用 防止循环引用。
#define WeakSelf __weak typeof(self) weakSelf = self;
//窗口window的调用
#define ZFWindow UIWindow *window = [UIApplication sharedApplication].keyWindow;
//block安全调用
#define SafeRun_Block(block, ...) block ? block(__VA_ARGS__) : nil

#endif /* General_Integrated.h */
