//
//  UIFont+Size.m
//  SnapECG
//
//  Created by tan on 2017/3/22.
//  Copyright © 2017年 nanjingxijian. All rights reserved.
//

#import "UIFont+Size.h"
#import <objc/runtime.h>
#import "ECGLayoutConstraint.h"


@implementation UIFont (Size)

/**
 加载调用
 */
+ (void)load {
    Method imp = class_getClassMethod(self, @selector(systemFontOfSize:));
    Method myImp = class_getClassMethod(self, @selector(YX_systemFontOfSize:));
    method_exchangeImplementations(imp, myImp);
    
}


+ (UIFont *)YX_systemFontOfSize:(CGFloat)fontSize{
    
    if (ECGAdjuestFontSize(fontSize) == fontSize) {
        return [self YX_systemFontOfSize:fontSize];
    }
    return [self YX_systemFontOfSize:ECGAdjuestFontSize(fontSize)];
    
}

@end
