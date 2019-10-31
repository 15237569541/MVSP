//
//  Screen_Integrated.h
//  ZFHopesOne
//
//  Created by MacbookPro13 on 2017/7/14.
//  Copyright © 2017年 MacbookPro13. All rights reserved.
//

#ifndef Screen_Integrated_h
#define Screen_Integrated_h

/**
 获取屏幕大小
 */
#define Screen_Bounds   [UIScreen mainScreen].bounds
#define Screen_Size     Screen_Bounds.size
#define Screen_Width    Screen_Size.width
#define Screen_Height   Screen_Size.height

/**
 获取频幕的比列 X Y 高度宽度比例值
 */
#define XReal(value) ((value)/414.0f*[UIScreen mainScreen].bounds.size.width)
#define YReal(value) ((value)/736.0f*[UIScreen mainScreen].bounds.size.height)
#define WReal(value) ((value)/414.0f*[UIScreen mainScreen].bounds.size.width)
#define HReal(value) ((value)/736.0f*[UIScreen mainScreen].bounds.size.height)


/**
 常用系统的高度
 */
#define StatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height
#define NavBarHeight 44.0
#define TopHeight (StatusBarHeight + NavBarHeight)
#define TabBarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20.1?83.0:49.0)
#define TabBarArcHeight ([[UIApplication sharedApplication] statusBarFrame].size.height>20.1?34.0:0.0)


/**
 系统版本
 */
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define IOS6_OR_UP (IOS_VERSION >= 6.0) ? YES : NO
#define IOS7_OR_UP (IOS_VERSION >= 7.0) ? YES : NO
#define IOS8_OR_UP (IOS_VERSION >= 8.0) ? YES : NO
#define IOS9_OR_UP (IOS_VERSION >= 9.0) ? YES : NO

/**
 设备类型, 2 >> ipad, 1 >> iphone
 */
#define Device_Type (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) ? 1 : 2
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) ? YES : NO
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) ? YES : NO
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)



#endif /* Screen_Integrated.h */
