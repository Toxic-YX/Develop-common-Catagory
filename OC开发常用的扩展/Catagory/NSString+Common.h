//
//  NSString+Common.h
//  ECGPatient
//
//  Created by YaoNuo on 14-7-2.
//  Copyright (c) 2014年 mhealth365. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Common)

/**
 * @brief ECGPatient :将字符串进行三十二位md5加密
 * @param 返回md5字符串
 */
- (NSString *)md5Hash_32;

/**
 * @brief 去掉字符串首尾字符串
 * @param 返回新的字符串
 */
+ (NSString *)stringByTrimmingWhitespace:(NSString *)sourceString;

/**
 判断当前的字符串是否为空或nil(过滤掉首尾的空格)
 */
- (BOOL)isEmptyOrNil;

/** 将Data转化成yymmddmmss格式，可用uint64_t类型持有*/
+ (NSString *)stringWithNumberDate:(NSDate *)date;

/***/
+ (NSDate *)stringToDate:(NSString *)dateString formatter:(NSString *)formatter;

/** 计算字符串的字符串，utf-8*/
- (int)charNumbers;

/**
 字符串时间处理

 @param timeStamp <#timeStamp description#>
 @return <#return value description#>
 */
- (NSString *)hyb_toDateWithTimeStamp:(NSString *)timeStamp;

/**
 字典转换成字符串

 @param dic <#dic description#>
 @return <#return value description#>
 */
- (NSString*)dictionaryToJson:(NSDictionary *)dic;

/**
 去除警号之前的字符

 @param str 处理的字符串
 @return 截取后的字符串
 */
- (NSString *)removeSignalBeforeCharacter:(NSString *)str;
@end
