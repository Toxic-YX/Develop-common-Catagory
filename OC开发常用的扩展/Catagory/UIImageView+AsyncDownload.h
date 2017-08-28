//
//  UIImageView+AsyncDownload.h
//  SnapEcgRecovery
//
//  Created by baotiao ni on 16/2/22.
//  Copyright © 2016年 xijian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView(AsyncDownload)

// 通过为 ImageView 设置 tag 防止错位
// tag 指向的永远是当前可见图片的 url， 这样通过 tag 就可以过滤掉已经滑出屏幕的图片的 url
@property(copy, nonatomic)NSString *tag;

- (void)setHeadImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;

@end
