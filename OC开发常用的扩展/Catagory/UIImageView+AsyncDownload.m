//
//  UIImageView+AsyncDownload.m
//  SnapEcgRecovery
//
//  Created by baotiao ni on 16/2/22.
//  Copyright © 2016年 xijian. All rights reserved.
//

#import "UIImageView+AsyncDownload.h"
#import <SDWebImageManager.h>

@implementation UIImageView(AsyncDownload)
- (void)setHeadImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder{
    // 给  ImageView 设置 tag, 指向当前 url
    self.tag = [url absoluteString];
    
    // 预设一个图片，可以为 nil
    // 主要是为了清除由于复用以前可能存在的图片
    self.image = placeholder;

    if (url) {
        [[SDWebImageManager sharedManager] downloadImageWithURL:url options:SDWebImageLowPriority progress:^(NSInteger receivedSize, NSInteger expectedSize) {
            
        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
            if (image && [self.tag isEqualToString:[imageURL absoluteString]]) {
                self.image = image;
            } else {
                NSLog(@"error when download:%@", error);
            }
        }];
    }
}

@end
