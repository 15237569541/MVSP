//
//  HX_ProgressHUD.h
//  SmartCity
//
//  Created by 洪欣 on 16/10/27.
//  Copyright © 2016年 NRH. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, HXProgressHUDMode) {
    HXProgressHUDModeloading,
    HXProgressHUDModeText,
    HXProgressHUDModeCustomView
};
@interface HX_ProgressHUD : NSObject


/**
 *  显示菊花
 */
+ (void)show;

/**
 *  显示加载框背景可编辑
 */
+ (void)show_loading;

+ (void)showWithTitle:(NSString *)title WithModel:(HXProgressHUDMode)model AfterDelay:(NSTimeInterval)time;

/**
 *  显示成功 带图片
 */
+ (void)showSucceedWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time;

/**
 *  成功 只显示图片不显示文字
 */
+ (void)showSucceedWithAfterDelay:(NSTimeInterval)time;

/**
 *  显示失败 带图片
 */
+ (void)showFailureWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time;

/**
 *  失败 只显示图片不显示文字
 */
+ (void)showFailureWithAfterDelay:(NSTimeInterval)time;

/**
 *  显示警告 带图片
 */
+ (void)showWarningWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time;

/**
 *  警告 只显示图片不显示文字
 */
+ (void)showWarningWithAfterDelay:(NSTimeInterval)time;

/**
 *  只显示文字
 */
+ (void)showWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time;

+ (void)showWithTitle:(NSString *)title font:(CGFloat)font cornerRadius:(CGFloat)cornerRadius AfterDelay:(NSTimeInterval)time;

+ (void)showWithTitle:(NSString *)title WithModel:(HXProgressHUDMode)model;

+ (void)showWithTitle:(NSString *)title WithImageName:(NSString *)imageName;

+ (void)changeTitle:(NSString *)title;

+ (void)changeImageWithName:(NSString *)imageName;

+ (void)changeModel:(HXProgressHUDMode)model;

/**
 *  圆形进度条
 */
+ (void)showRoundProgress;

/**
 *  带文字的圆形进度条
 */
+ (void)showRoundProgressWithTitle:(NSString *)title;

/**
 *  条形进度条
 */
+ (void)showBartypeProgress;

/**
 *  带文字的条形进度条
 */
+ (void)showBartypeProgressWithTitle:(NSString *)title;

/**
 *  饼状进度条
 */
+ (void)showCakyProgress;

/**
 *  带文字的饼状进度条
 */
+ (void)showCakyProgressWithTitle:(NSString *)title;

/**
 *  通过这个方法改变进度
 */
+ (void)changeProgress:(CGFloat)progress;

+ (void)dismiss;

+ (void)dismissWithAfterDelay:(NSTimeInterval)time;

@end
