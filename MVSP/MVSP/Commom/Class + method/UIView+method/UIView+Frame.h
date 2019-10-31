//
//  UIView+Category.h
//  ZFHopesOne
//
//  Created by MacbookPro13 on 2017/7/14.
//  Copyright © 2017年 MacbookPro13. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat maxX;
@property (nonatomic, assign) CGFloat maxY;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)isShowingOnKeyWindow;

/**
 *  从 xib 文件中加载文件
 */
+ (instancetype)viewFromXib;

//获取该视图的控制器
- (UIViewController*)viewController;

//删除当前视图内的所有子视图
- (void)removeChildViews;




@end
