//
//  UIButton+AsyncDownload.m
//  SnapEcgRecovery
//
//  Created by baotiao ni on 16/2/24.
//  Copyright © 2016年 xijian. All rights reserved.
//

#import "UIButton+AsyncDownload.h"
#import <SDWebImageManager.h>

@implementation UIButton(AsyncDownload)

- (void)setBackgroudImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder{
    // 预设一个图片，可以为 nil
    [self setBackgroundImage:placeholder forState:UIControlStateNormal];
    
    if (url) {
        [[SDWebImageManager sharedManager] downloadImageWithURL:url options:SDWebImageLowPriority progress:^(NSInteger receivedSize, NSInteger expectedSize) {
            
        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
            if (image) {
                [self setBackgroundImage:image forState:UIControlStateNormal];
            } else {
                NSLog(@"error when download:%@", error);
            }
        }];
    }
}

@end
