//
//  MBProgressHUD+Helper.h
//  ECGPatient
//
//  Created by 姚诺 on 14/12/26.
//  Copyright (c) 2014年 mhealth365. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Helper)


+ (MBProgressHUD *)showmessage:(NSString *)message toView:(UIView *)view;
/** helper: 快速显示一个消息*/
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

/** helper: 快速显示一个长文本信息，1秒后消失*/
+ (void)showECGLongMessage:(NSString *)longText toView:(UIView *)view;

+ (void)showToast:(NSString *)text;

@end
