//
//  NSObject+DLIntrospection.h
//  DLIntrospection
//
//  Created by baotiao ni on 15/10/16.
//  Copyright © 2015年 xijian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DLIntrospection)

+ (NSArray *)classes;
+ (NSArray *)properties;
+ (NSArray *)instanceVariables;
+ (NSArray *)classMethods;
+ (NSArray *)instanceMethods;

+ (NSArray *)protocols;
+ (NSDictionary *)descriptionForProtocol:(Protocol *)proto;


+ (NSString *)parentClassHierarchy;

@end
