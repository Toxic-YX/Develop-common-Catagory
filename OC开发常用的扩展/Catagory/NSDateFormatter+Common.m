//
//  NSDateFormatter+Common.m
//  SnapECG
//
//  Created by YuXiang on 2017/1/18.
//  Copyright © 2017年 nanjingxijian. All rights reserved.
//

#import "NSDateFormatter+Common.h"

@implementation NSDateFormatter_Common
/**
 时间格式
 
 @return NSDateFormatter
 */
+(NSDateFormatter *)formatter {
    NSDateFormatter *formatter = [NSDateFormatter new];
    if (formatter == nil) {
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    }
    return formatter;
}
@end
