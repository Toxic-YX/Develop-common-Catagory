//
//  MBProgressHUD+ECGMBHelper.h
//  SnapECG
//
//  Created by 徐帅 on 2017/1/5.
//  Copyright © 2017年 nanjingxijian. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (ECGMBHelper)

+ (void)showActivityIndicatorView;

+ (void)showBottomToast:(NSString *)text duration:(uint64_t)duration;

+ (void)hideToastFromWindow;

@end
