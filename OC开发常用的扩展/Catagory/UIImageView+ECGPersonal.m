//
//  UIImageView+ECGPersonal.m
//  SnapEcgRecovery
//
//  Created by nanjingxijian on 15/11/24.
//  Copyright © 2015年 xijian. All rights reserved.
//

#import "UIImageView+ECGPersonal.h"
#import "ECGMacro.h"

@implementation UIImageView (ECGPersonal)
- (void)avatarStyle:(UIImage *)image borderWidth:(NSInteger)width borderColor:(UIColor *)color
{
    CGRect imageFrame = self.frame;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = ECG_HEIGHT(imageFrame) / 2;
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = CGSizeMake(4.0, 4.0);
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 2.0;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.image = image;
}
@end
