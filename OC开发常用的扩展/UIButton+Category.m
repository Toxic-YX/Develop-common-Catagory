//
//  UIButton+Category.m
//  ImgTableView
//
//  Created by YuXiang on 2017/8/29.
//  Copyright © 2017年 Rookie.YXiang. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)

- (void)creatButtonWithEdgeInsetsStyle:(YXButtonEdgeInsetsStyle)style
                       imageTitleSpace:(CGFloat)space {
    
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    
    CGFloat labelWidth = 0.0;
    CGFloat labelHeight = 0.0;
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        // 由于iOS8中titleLabel的size为0，用下面的这种设置
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
    
    switch (style) {
        case YXButtonEdgeInsetsStyleTop:
        {
            /**
             1. titleEdgeInsets是titleLabel相对于其上下左右的inset，跟tableView的contentInset是类似的；
             2. 如果只有title，那titleLabel的 上下左右 都是 相对于Button 的；
             3. 如果只有image，那imageView的 上下左右 都是 相对于Button 的；
             4. 如果同时有image和label，那image的 上下左 是 相对于Button 的，右 是 相对于label 的；
             label的 上下右 是 相对于Button的， 左 是 相对于image 的。
             
             */
            // 系统默认的图片在左,文字Lable在右,两者紧密结合,居中在button中的,
            //  我们想移动图片和文字Lable的位置,就要相对偏移多少位置,
            // 因此这里为什么这么写, 是相对原来的位置偏移多少.
            
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith, -imageHeight-space/2.0, 0);
        }
            break;
        case YXButtonEdgeInsetsStyleLeft:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
        }
            break;
        case YXButtonEdgeInsetsStyleBottom:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
        }
            break;
        case YXButtonEdgeInsetsStyleRight:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
        }
            break;
        default:
            break;
    }
    
    self.titleEdgeInsets = labelEdgeInsets;
    self.imageEdgeInsets = imageEdgeInsets;
}

@end
