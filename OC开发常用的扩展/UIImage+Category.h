//
//  UIImage+Category.h
//  ImgTableView
//
//  Created by YuXiang on 2017/8/29.
//  Copyright © 2017年 Rookie.YXiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Category)

+ (UIImage *)originImage:(UIImage *)image scaleToSize:(CGSize)size;

/**
 Image fuzzy view
 Use when you need to import "Accelerate.framework"
 
 @param image image
 @param blur The fuzzy numerical setting 0.0 - 1.0
 @return image
 */
+ (UIImage *)boxBlurImage:(UIImage *)image  blurNumber:(CGFloat)blur;

/**
 毛玻璃效果
 
 @param blurRadius 半径
 @param tintColor 颜色
 @param saturationDeltaFactor 色彩饱和度
 @param maskImage image
 @return image
 */
- (UIImage *)imageBluredWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;

@end
