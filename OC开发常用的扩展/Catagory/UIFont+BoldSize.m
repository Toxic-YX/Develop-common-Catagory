//
//  UIFont+BoldSize.m
//  Test
//
//  Created by tan on 2017/3/22.
//  Copyright © 2017年 tantan. All rights reserved.
//

#import "UIFont+BoldSize.h"
#import <objc/runtime.h>
#import "ECGLayoutConstraint.h"

@implementation UIFont (BoldSize)

/**
 加载调用
 */

+ (void)load{
    
    Method imp = class_getClassMethod(self, @selector(boldSystemFontOfSize:));
    Method myImp = class_getClassMethod(self, @selector(customBoldSystemFontOfSize:));
    method_exchangeImplementations(imp, myImp);
    
}

+ (UIFont *)customBoldSystemFontOfSize:(CGFloat)fontSize{
    if (ECGAdjuestFontSize(fontSize) == fontSize) {
        return [self customBoldSystemFontOfSize:fontSize];
    }
    return [self customBoldSystemFontOfSize:ECGAdjuestFontSize(fontSize)];
    
}


@end
