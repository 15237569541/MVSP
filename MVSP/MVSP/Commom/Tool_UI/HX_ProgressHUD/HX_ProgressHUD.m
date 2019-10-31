//
//  HX_ProgressHUD.m
//  SmartCity
//
//  Created by 洪欣 on 16/10/27.
//  Copyright © 2016年 NRH. All rights reserved.
//

#import "HX_ProgressHUD.h"

static HX_ProgressHUD *progressHUD;
@interface HX_ProgressHUD ()
@property (strong, nonatomic) MBProgressHUD *hx_HUD;
@end

@implementation HX_ProgressHUD

+ (instancetype)sharedManager
{
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        progressHUD = [[self alloc] init];
        progressHUD.hx_HUD = [[MBProgressHUD alloc] initWithWindow:[UIApplication sharedApplication].keyWindow];
    });
    return progressHUD;
}

+ (void)show
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        progressHUD.hx_HUD.labelText = @"";
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.mode = MBProgressHUDModeIndeterminate;
        progressHUD.hx_HUD.userInteractionEnabled = YES;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)show_loading
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        progressHUD.hx_HUD.labelText = @"";
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.mode = MBProgressHUDModeIndeterminate;
        progressHUD.hx_HUD.userInteractionEnabled = NO;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)showSucceedWithAfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        UIImage *image = [UIImage imageNamed:@"bz-cehnggong"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
        progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        [progressHUD.hx_HUD show:YES];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showSucceedWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        UIImage *image = [UIImage imageNamed:@"bz-cehnggong"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
        progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        [progressHUD.hx_HUD show:YES];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showFailureWithAfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        UIImage *image = [UIImage imageNamed:@"bz-shibai"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
        progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        [progressHUD.hx_HUD show:YES];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showFailureWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        UIImage *image = [UIImage imageNamed:@"bz-shibai"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
        progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        [progressHUD.hx_HUD show:YES];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showWarningWithAfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        UIImage *image = [UIImage imageNamed:@"bz-jinggao"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
        progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        [progressHUD.hx_HUD show:YES];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showWarningWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        UIImage *image = [UIImage imageNamed:@"bz-jinggao"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
        progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        [progressHUD.hx_HUD show:YES];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showRoundProgress
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.mode = MBProgressHUDModeAnnularDeterminate;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)showRoundProgressWithTitle:(NSString *)title
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        progressHUD.hx_HUD.mode = MBProgressHUDModeAnnularDeterminate;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)showBartypeProgress
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.mode = MBProgressHUDModeDeterminateHorizontalBar;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)showBartypeProgressWithTitle:(NSString *)title
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        progressHUD.hx_HUD.mode = MBProgressHUDModeDeterminateHorizontalBar;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)showCakyProgress
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.mode = MBProgressHUDModeDeterminate;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)showCakyProgressWithTitle:(NSString *)title
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        progressHUD.hx_HUD.mode = MBProgressHUDModeDeterminate;
        [progressHUD.hx_HUD show:YES];
    });
}



+ (void)changeProgress:(CGFloat)progress
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        progressHUD.hx_HUD.progress = progress;
    });
}

+ (void)showWithTitle:(NSString *)title WithModel:(HXProgressHUDMode)model AfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        if (model == HXProgressHUDModeloading) {
            progressHUD.hx_HUD.mode = MBProgressHUDModeIndeterminate;
        }else if (model == HXProgressHUDModeText) {
            progressHUD.hx_HUD.mode = MBProgressHUDModeText;
        }
        [progressHUD.hx_HUD show:YES];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showWithTitle:(NSString *)title AfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        progressHUD.hx_HUD.mode = MBProgressHUDModeText;
        [progressHUD.hx_HUD show:YES ];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showWithTitle:(NSString *)title font:(CGFloat)font cornerRadius:(CGFloat)cornerRadius AfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        progressHUD.hx_HUD.labelFont = [UIFont systemFontOfSize:font];
        progressHUD.hx_HUD.cornerRadius = cornerRadius;
        progressHUD.hx_HUD.mode = MBProgressHUDModeText;
        [progressHUD.hx_HUD show:YES ];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

+ (void)showWithTitle:(NSString *)title WithModel:(HXProgressHUDMode)model
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        progressHUD.hx_HUD.userInteractionEnabled = YES; 
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        if (model == HXProgressHUDModeloading) {
            progressHUD.hx_HUD.mode = MBProgressHUDModeIndeterminate;
        }else if (model == HXProgressHUDModeText) {
            progressHUD.hx_HUD.mode = MBProgressHUDModeText;
        }
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)showWithTitle:(NSString *)title WithImageName:(NSString *)imageName
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [[UIApplication sharedApplication].keyWindow addSubview:progressHUD.hx_HUD];
        progressHUD.hx_HUD.removeFromSuperViewOnHide = YES;
        progressHUD.hx_HUD.labelText = title;
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
        progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        [progressHUD.hx_HUD show:YES];
    });
}

+ (void)changeTitle:(NSString *)title
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        progressHUD. hx_HUD.labelText = title;
    });
}

+ (void)changeImageWithName:(NSString *)imageName
{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        progressHUD.hx_HUD.customView = imageView;
    });
}

+ (void)changeModel:(HXProgressHUDMode)model
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        if (model == HXProgressHUDModeloading) {
            progressHUD.hx_HUD.mode = MBProgressHUDModeIndeterminate;
        }else if (model == HXProgressHUDModeText) {
            progressHUD.hx_HUD.mode = MBProgressHUDModeText;
        }else {
            progressHUD.hx_HUD.mode = MBProgressHUDModeCustomView;
        }
    });
}

+ (void)dismiss {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [progressHUD.hx_HUD hide:YES];
    });
}

+ (void)dismissWithAfterDelay:(NSTimeInterval)time
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self sharedManager];
        [progressHUD.hx_HUD hide:YES afterDelay:time];
    });
}

@end
