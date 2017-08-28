//
//  NSString+Common.m
//  ECGPatient
//
//  Created by YaoNuo on 14-7-2.
//  Copyright (c) 2014年 mhealth365. All rights reserved.
//

#import "NSString+Common.h"
#import "NSData+Common.h"

@implementation NSString (Common)

- (NSString *)md5Hash_32
{
    return [[self dataUsingEncoding:NSUTF8StringEncoding] md5Hash_32_test];
}

+ (NSString *)stringByTrimmingWhitespace:(NSString *)sourceString
{
    if (sourceString)
    {
        return [sourceString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    
    return nil;
}

- (BOOL)isEmptyOrNil
{
    if (self) {
        NSString *result = [NSString stringByTrimmingWhitespace:self];
        if (result == nil || [result isEqualToString:@""]) {
            return YES;
        }
        
        return NO;
    }
    
    return YES;
}

+ (NSString *)stringWithNumberDate:(NSDate *)date
{
    if (!date) {
        return @"0";
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMddHHmmss"];

    NSString *dateStr = [dateFormatter stringFromDate:date];
    return dateStr;
}

+ (NSDate *)stringToDate:(NSString *)dateString formatter:(NSString *)formatter
{
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter]; //@"yyyy-MM-dd HH:mm:ss"
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    [dateFormatter setTimeZone:timeZone];
    
    
    NSDate *date = [dateFormatter dateFromString:dateString];
    NSLog(@"%@", date);
    
    return date;
}

- (int)charNumbers
{
    if (self == nil || self.length == 0) {
        return 0;
    }
    
    int strlength = 0;
    char* p = (char*)[self cStringUsingEncoding:NSUTF8StringEncoding];
    for (int i=0 ; i<[self lengthOfBytesUsingEncoding:NSUTF8StringEncoding] ;i++) {
        if (*p) {
            if(*p == '\xe4' || *p == '\xe5' || *p == '\xe6' || *p == '\xe7' || *p == '\xe8' || *p == '\xe9')
            {
                strlength--;
            }
            p++;
            strlength++;
        }
        else {
            p++;
        }
    }
    return strlength;
}

- (NSString *)hyb_toDateWithTimeStamp:(NSString *)timeStamp {
    
    NSString *arg = timeStamp;
    if (![timeStamp isKindOfClass:[NSString class]]) {
        arg = [NSString stringWithFormat:@"%@", timeStamp];
    }
    NSTimeInterval time = [timeStamp doubleValue];
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];//实例化一个NSDateFormatter对象
    [dateFormat setDateFormat:@"yyyyMMddHHmmss"];//设定时间格式,这里可以设置成自己需要的格式
    NSString *currentDateStr = [dateFormat stringFromDate:[NSDate dateWithTimeIntervalSince1970:time]];
    return currentDateStr;
}

- (NSString*)dictionaryToJson:(NSDictionary *)dic {
    NSError *parseError = nil;
    NSData  *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

- (NSString *)removeSignalBeforeCharacter:(NSString *)str {
    NSMutableString *muStr = [NSMutableString stringWithString:str];
    NSInteger loc = 0;
    for (NSInteger i = 0; i < muStr.length; i ++) {
        if ([muStr characterAtIndex:i] == '#') {
            loc = i;
        }
    }
    [muStr deleteCharactersInRange:NSMakeRange(0, loc + 1)];
    return muStr;
}
@end
