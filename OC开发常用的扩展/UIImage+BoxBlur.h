//
//  UIImage+BoxBlur.h
//  ImgTableView
//
//  Created by YuXiang on 2017/8/29.
//  Copyright © 2017年 Rookie.YXiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIImage (BoxBlur)

/**
 Image fuzzy view  
 Use when you need to import "Accelerate.framework"

 @param image image
 @param blur The fuzzy numerical setting 0.0 - 1.0
 @return image
 */
+ (UIImage *)boxBlurImage:(UIImage *)image  blurNumber:(CGFloat)blur;
@end
