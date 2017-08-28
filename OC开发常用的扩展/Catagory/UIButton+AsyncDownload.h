//
//  UIButton+AsyncDownload.h
//  SnapEcgRecovery
//
//  Created by baotiao ni on 16/2/24.
//  Copyright © 2016年 xijian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton(AsyncDownload)

- (void)setBackgroudImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
@end
