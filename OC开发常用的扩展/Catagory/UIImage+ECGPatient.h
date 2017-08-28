//
//  UIImage+ECGPatient.h
//  ECGPatient
//
//  Created by YaoNuo on 14-6-4.
//  Copyright (c) 2014年 mhealth365. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ECGPatient)
/**
 *  从Bundle里获取指定图片(eg:test.png),如果图片没找到，则返回nil。该方法获取的图片系统不会暂存图片(区别于：[UIImage imageNamed:])
 */
+ (UIImage *)ecg_imageWithBundle:(NSBundle *)bundle imageName:(NSString *)imageName;

@end
