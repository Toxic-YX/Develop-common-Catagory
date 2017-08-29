//
//  UIButton+Category.h
//  ImgTableView
//
//  Created by YuXiang on 2017/8/29.
//  Copyright © 2017年 Rookie.YXiang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, YXButtonEdgeInsetsStyle) {
    YXButtonEdgeInsetsStyleTop, // image在上，label在下
    YXButtonEdgeInsetsStyleLeft, // image在左，label在右
    YXButtonEdgeInsetsStyleBottom, // image在下，label在上
    YXButtonEdgeInsetsStyleRight // image在右，label在左
};

@interface UIButton (Category)
/**
 自定义Button样式
 
 @param style 样式
 @param space 图片和文字间隔
 */
- (void)creatButtonWithEdgeInsetsStyle:(YXButtonEdgeInsetsStyle)style
                       imageTitleSpace:(CGFloat)space;
@end
