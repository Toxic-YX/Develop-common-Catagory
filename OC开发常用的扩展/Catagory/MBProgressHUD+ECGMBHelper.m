//
//  MBProgressHUD+ECGMBHelper.m
//  SnapECG
//
//  Created by 徐帅 on 2017/1/5.
//  Copyright © 2017年 nanjingxijian. All rights reserved.
//

#import "MBProgressHUD+ECGMBHelper.h"
#import "ECGConst.h"
#import "ECGMacro.h"
@implementation MBProgressHUD (ECGMBHelper)


+ (void)showActivityIndicatorView {
    [MBProgressHUD hideHUDForView:[UIApplication sharedApplication].keyWindow animated:YES];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
}

/**
 底部纯文本显示提示

 @param text 提示内容
 @param duration 持续时间
 */
+ (void)showBottomToast:(NSString *)text duration:(uint64_t)duration {
    [MBProgressHUD hideHUDForView:[UIApplication sharedApplication].keyWindow animated:YES];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[UIApplication sharedApplication].keyWindow animated:YES];
    hud.mode = MBProgressHUDModeCustomView;
    hud.detailsLabel.text = text;
    hud.detailsLabel.font = SystemFont(14);
    [hud setOffset:CGPointMake(0, [UIScreen mainScreen].bounds.size.height/ 2.f - 30)];
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC);
    dispatch_after(time, dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:[UIApplication sharedApplication].keyWindow animated:YES];
    });
}

+ (void)hideToastFromWindow {
    dispatch_async(dispatch_get_main_queue(), ^{
         [MBProgressHUD hideHUDForView:[UIApplication sharedApplication].keyWindow animated:YES];
    });
}

@end
