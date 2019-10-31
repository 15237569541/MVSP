//
//  NSString+Category.h
//  ZSBTB
//
//  Created by DJ on 16/12/12.
//  Copyright © 2016年 DJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Empty)


#pragma mark-  判断字符串
/**判断是否是空字符**/
+ (BOOL)isBlankString:(NSString *)string;
/**判断字符串是否有空行**/
- (BOOL)matchBlankSpace;

- (NSString *)imgStrByAppendingString;

@end
