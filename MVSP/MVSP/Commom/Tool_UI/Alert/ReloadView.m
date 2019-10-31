//
//  ReloadView.m
//  centanet
//
//  Created by xunan on 16/5/25.
//  Copyright © 2016年 Vocinno Mac Mini 1. All rights reserved.
//

#import "ReloadView.h"

@implementation ReloadView

+(id)msGetInstance
{
    ReloadView *reloadView = [[[NSBundle mainBundle] loadNibNamed:@"ReloadView" owner:self options:nil] firstObject];
    reloadView.backgroundColor = Color_Hex(0x1f1f1f);
    return reloadView;
}

+ (instancetype)showReloadView:(UIView *)view
{
    ReloadView *reloadView =[[[NSBundle mainBundle]loadNibNamed:@"ReloadView" owner:self options:nil]firstObject];
    reloadView.bgView.backgroundColor = Color_Hex(0x1f1f1f);
    reloadView.frame = CGRectMake(0, 0, view.width, view.height);
    [view addSubview:reloadView];
    return reloadView;
}

+ (instancetype)showReloadView:(UIView *)view Title:(NSString *)title {
    ReloadView *reloadView =[[[NSBundle mainBundle]loadNibNamed:@"ReloadView" owner:self options:nil]firstObject];
    reloadView.bgView.backgroundColor = Color_Hex(0x1f1f1f);
    reloadView.frame = CGRectMake(0, 0, view.width, view.height);
    if (reloadView) {
        [reloadView mInitProperty:view title:title];
    }
    [view addSubview:reloadView];
    return reloadView;
}

- (void)mInitProperty:(UIView *)view title:(NSString *)title {
    self.textLabel.text = title;
    if ([title isEqualToString:@"网络连接异常"]) {
        [self.infoImageView setImage:[UIImage imageNamed:@"wifi_error"]];
        [self.infoBtn setTitle:@"点我重试" forState:UIControlStateNormal];
        
    } else if ([title isEqualToString:@"暂无数据"]) {
        [self.infoImageView setImage:[UIImage imageNamed:@"shibai-"]];
        [self.infoBtn setTitle:@"点我刷新" forState:UIControlStateNormal];
    }
}


/**
 *  点击重试
 */
- (IBAction)reloadBtnClick:(UIButton *)sender {
    if (self.rBlock) {
        self.rBlock();
    }
    [self removeFromSuperview];
}
- (void)mSetBlock:(ReloadDataBlock)rBlock
{
    self.rBlock = rBlock;
}


@end
