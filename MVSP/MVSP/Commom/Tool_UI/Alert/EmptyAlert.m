//
//  ReloadView.m
//  centanet
//
//  Created by xunan on 16/5/25.
//  Copyright © 2016年 Vocinno Mac Mini 1. All rights reserved.
//

#import "EmptyAlert.h"

@implementation EmptyAlert

+(id)msGetInstance
{
    EmptyAlert *emptyAlert = [[[NSBundle mainBundle] loadNibNamed:@"EmptyAlert" owner:self options:nil] firstObject];
    emptyAlert.bgView.backgroundColor = Color_Hex(0x1f1f1f);
    return emptyAlert;
}

+ (instancetype)showReloadView:(UIView *)view
{
    EmptyAlert *emptyAlert =[[[NSBundle mainBundle]loadNibNamed:@"EmptyAlert" owner:self options:nil]firstObject];
    emptyAlert.bgView.backgroundColor = Color_Hex(0x1f1f1f);
    emptyAlert.frame = CGRectMake(0, 0, view.width, view.height);
    [view addSubview:emptyAlert];
    return emptyAlert;
}

+ (instancetype)showReloadView:(UIView *)view Title:(NSString *)title {
    EmptyAlert *emptyAlert =[[[NSBundle mainBundle]loadNibNamed:@"EmptyAlert" owner:self options:nil]firstObject];
    emptyAlert.bgView.backgroundColor = Color_Hex(0x1f1f1f);
    emptyAlert.frame = CGRectMake(0, 0, view.width, view.height);
    [view addSubview:emptyAlert];
    return emptyAlert;
}








@end
