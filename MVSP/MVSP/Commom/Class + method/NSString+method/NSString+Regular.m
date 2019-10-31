//
//  NSObject+Regular.m
//  DC_BZPhoto
//
//  Created by duocai on 2019/4/27.
//  Copyright © 2019 duocai. All rights reserved.
//

#import "NSString+Regular.h"

@implementation NSString (Regular)


/**
 验证是否时 手机号码
 
 @return YES 是 NO 否
 */
- (BOOL)checkPhoneNumber {
    NSString * MOBIL = @"^1(3[0-9]|4[57]|5[0-35-9]|8[0-9]|70)\\d{8}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBIL];
    if ([regextestmobile evaluateWithObject:self]) {
        return YES;
    }
    return NO;
}

/**
 验证email地址

 @return YES 是 NO 否
 */
- (BOOL)checkEmailCode; {
    NSString *pattern = @"^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    return [pred evaluateWithObject:self];
}

/**
 判断是否为整形：

 @param string 参数
 @return YES 是 NO 否
 */
- (BOOL)isPureInt:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

/**
 正则匹验证码,6位的数字

 @return YES 是 NO 否
 */
- (BOOL)checkVerifyCode{
    NSString *pattern = @"^[0-9]{6}$";
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
    
}

/**
 正则匹配用户身份证号15或18位

 @return YES 是 NO 否
 */
- (BOOL)checkUserIDCard {
    BOOL flag;
    if (self.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *pattern = @"(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
    
}

/**
 判断是否是一个网络链接

 @param string 参数
 @return YES 是 NO 否
 */
+ (BOOL)urlValidation:(NSString *)string{
    NSError *error;
    NSString * regulaStr =@"((http[s]{0,1}|ftp)://[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)|(www.[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)";
    NSRegularExpression *reges = [NSRegularExpression regularExpressionWithPattern:regulaStr options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSArray *arrayOfAllMatches = [reges matchesInString:string options:0 range:NSMakeRange(0, [string length])];
    
    for (NSTextCheckingResult *match in arrayOfAllMatches){
        NSString* substringForMatch = [string substringWithRange:match.range];
        return YES;
    }
    return NO;
}


@end
