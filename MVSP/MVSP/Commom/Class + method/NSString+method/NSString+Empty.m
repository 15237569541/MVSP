//
//  NSString+Category.m
//  ZSBTB
//
//  Created by DJ on 16/12/12.
//  Copyright © 2016年 DJ. All rights reserved.
//

#import "NSString+Empty.h"

@implementation NSString (Empty)

#pragma mark-  判断是否是空字符
+ (BOOL) isBlankString:(NSString *)string {
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}


#pragma mark-  判断字符串是否有空行
- (BOOL)matchBlankSpace {
    
    NSString *pattern = @"[\\w\\s]*\\n*[\\s]*[\\n][\\w\\s]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
}
- (NSString *)imgStrByAppendingString{
    NSString *imgStr = [NSString stringWithFormat:@"https://dckjbrowser.oss-cn-beijing.aliyuncs.com/wallpaper/%@",self];
    return imgStr;    
}


@end
