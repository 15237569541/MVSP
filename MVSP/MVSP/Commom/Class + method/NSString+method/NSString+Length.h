//
//  NSString+Category.h
//  ZSBTB
//
//  Created by DJ on 16/12/12.
//  Copyright © 2016年 DJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Length)

#pragma mark-  字符串高度宽度的计算
/**求取一般字符串高度**/
-(CGFloat)getStringHeight:(UIFont*)font width:(CGFloat)width;

/**求取一般字符串宽度**/
-(CGFloat)getStringWidth:(UIFont*)font;

/**求取特殊字符串高度**/
-(CGFloat)mutableAttributedStringWithFont:(UIFont *)font
                                    width:(CGFloat)width
                             andLineSpace:(CGFloat)lineSpace;


@end
