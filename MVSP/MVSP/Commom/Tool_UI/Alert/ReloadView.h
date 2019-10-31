//
//  ReloadView.h
//  centanet
//
//  Created by xunan on 16/5/25.
//  Copyright © 2016年 Vocinno Mac Mini 1. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ReloadDataBlock)(void);


@interface ReloadView : UIView
@property (weak, nonatomic) IBOutlet UIView *bgView;

/** 使用的标题 */
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
/** 使用的界面图片 */
@property (weak, nonatomic) IBOutlet UIImageView *infoImageView;
/** 信息按钮 */
@property (weak, nonatomic) IBOutlet UIButton *infoBtn;

@property (copy, nonatomic)ReloadDataBlock rBlock;

+ (instancetype)showReloadView:(UIView *)view;

+ (id)msGetInstance;

+ (instancetype)showReloadView:(UIView *)view Title:(NSString *)title;


- (void)mSetBlock:(ReloadDataBlock)rBlock;
@end
