//
//  UIImage+Orientaion.h
//  SnapEcgDoctor
//
//  Created by baotiao ni on 15/7/3.
//  Copyright (c) 2015年 baotiao ni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImage(Orientaion)

/**
 *  解决拍照自动旋转90度问题
 *
 *  @param aImage <#aImage description#>
 *
 *  @return <#return value description#>
 */
- (UIImage *)fixOrientation:(UIImage *)aImage;
@end
