//
//  NSObject+Regular.h
//  DC_BZPhoto
//
//  Created by duocai on 2019/4/27.
//  Copyright © 2019 duocai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Regular)
/**
 验证是否时 手机号码
 
 @return YES 是 NO 否
 */
- (BOOL)checkPhoneNumber;
/**
 验证email地址
 
 @return YES 是 NO 否
 */
- (BOOL)checkEmailCode;
/**
 判断是否为整形：
 
 @param string 参数
 @return YES 是 NO 否
 */
- (BOOL)isPureInt:(NSString*)string;
/**
 正则匹验证码,6位的数字
 
 @return YES 是 NO 否
 */
- (BOOL)checkVerifyCode;
/**
 正则匹配用户身份证号15或18位
 
 @return YES 是 NO 否
 */
- (BOOL)checkUserIDCard;
/**
 判断是否是一个网络链接
 
 @param string 参数
 @return YES 是 NO 否
 */
+ (BOOL)urlValidation:(NSString *)string;
@end

NS_ASSUME_NONNULL_END
