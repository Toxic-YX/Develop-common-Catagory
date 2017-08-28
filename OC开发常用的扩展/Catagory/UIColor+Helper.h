//
//  UIColor+Helper.h
//  SnapECG
//
//  Created by 徐帅 on 16/6/30.
//  Copyright © 2016年 beijingxijian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Helper)
+ (UIColor*) colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*) colorWithHex:(NSInteger)hexValue;
+ (UIColor*) colorWithHex_string:(NSString *)hexValue;
+ (NSString *) hexFromUIColor: (UIColor*) color;
@end
