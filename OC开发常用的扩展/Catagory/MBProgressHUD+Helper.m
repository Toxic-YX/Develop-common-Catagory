//
//  MBProgressHUD+Helper.m
//  ECGPatient
//
//  Created by 姚诺 on 14/12/26.
//  Copyright (c) 2014年 mhealth365. All rights reserved.
//

#import "MBProgressHUD+Helper.h"

@implementation MBProgressHUD (Helper)

+ (MBProgressHUD *)showmessage:(NSString *)message toView:(UIView *)view
{
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // YES代表需要蒙版效果
    //hud.dimBackground = YES;
    // 1秒之后再消失
    [hud hide:YES afterDelay:2.0];
    return hud;
}
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view
{
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // YES代表需要蒙版效果
    //hud.dimBackground = YES;
    
    return hud;
}

+ (void)showECGLongMessage:(NSString *)longText toView:(UIView *)view
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // Configure for text only and offset down
    hud.mode = MBProgressHUDModeText;
    hud.detailsLabelText = longText;
    hud.detailsLabelFont = [UIFont systemFontOfSize:15];
    //    hud.labelFont = [UIFont systemFontOfSize:10];
    hud.margin = 10;//10.f;
    hud.removeFromSuperViewOnHide = YES;
    
    [hud hide:YES afterDelay:2.0];
}


+ (void)showToast:(NSString *)text {
    [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = text;
    
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 1ull * NSEC_PER_SEC);
    dispatch_after(time, dispatch_get_main_queue(), ^{
        [MBProgressHUD hideAllHUDsForView:[UIApplication sharedApplication].keyWindow animated:YES];
    });
}

@end
