//
//  UIImage+ECGPatient.m
//  ECGPatient
//
//  Created by YaoNuo on 14-6-4.
//  Copyright (c) 2014年 mhealth365. All rights reserved.
//

#import "UIImage+ECGPatient.h"

@implementation UIImage (ECGPatient)

+ (UIImage *)ecg_imageWithBundle:(NSBundle *)bundle imageName:(NSString *)imageName
{
    if (!imageName)
    {
        return nil;
    }

    if (bundle)
    {
        NSString * path = [bundle resourcePath];
        if (path)
        {
            path = [path stringByAppendingPathComponent:imageName];
            UIImage *image = [UIImage imageWithContentsOfFile:path];

            return image;
        }
    }

    return nil;
}

@end
