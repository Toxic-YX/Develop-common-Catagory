//
//  UIImage+BoxBlur.m
//  ImgTableView
//
//  Created by YuXiang on 2017/8/29.
//  Copyright © 2017年 Rookie.YXiang. All rights reserved.
//

#import "UIImage+BoxBlur.h"
#import <Accelerate/Accelerate.h>

@implementation UIImage (BoxBlur)
+ (UIImage *)boxBlurImage:(UIImage *)image  blurNumber:(CGFloat)blur {
    
    if (blur < 0.f || blur > 1.f) {
        blur = 0.5f;
    }
    
    int boxSize = (int)(blur * 40);
    boxSize = boxSize - (boxSize % 2) + 1;
    
    CGImageRef img = image.CGImage;
    
    vImage_Buffer inBuffer;
    vImage_Buffer outBuffer;
    vImage_Error error;
    
    void *pixelBuffer;
    
    // 从CGImage中获取数据
    CGDataProviderRef inProvide =  CGImageGetDataProvider(img);
    CFDataRef intBitMapData = CGDataProviderCopyData(inProvide);
    
    // 设置从CGImage 获取对象的属性
    inBuffer.width = CGImageGetWidth(img);
    inBuffer.height = CGImageGetHeight(img);
    inBuffer.rowBytes = CGImageGetBytesPerRow(img);
    
    inBuffer.data = (void *)CFDataGetBytePtr(intBitMapData);
    
    pixelBuffer = malloc(CGImageGetBytesPerRow(img) * CGImageGetHeight(img));
    
    if (pixelBuffer == NULL) {
        NSLog(@"NO pixelBuffer --- 无像素缓冲区");
    }
    
    outBuffer.data = pixelBuffer;
    outBuffer.height = CGImageGetHeight(img);
    outBuffer.width = CGImageGetWidth(img);
    outBuffer.rowBytes = CGImageGetBytesPerRow(img);
    
    error = vImageBoxConvolve_ARGB8888(&inBuffer, &outBuffer, NULL, 0, 0, boxSize, boxSize, NULL, kvImageEdgeExtend);
    if (error) {
        NSLog(@"error from convolution %ld", error);
    }
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef ctx = CGBitmapContextCreate(
                                             outBuffer.data,
                                             outBuffer.width,
                                             outBuffer.height,
                                             8,
                                             outBuffer.rowBytes,
                                             colorSpace,
                                             kCGImageAlphaNoneSkipLast);
    CGImageRef imageRef = CGBitmapContextCreateImage (ctx);
    UIImage *returnImage = [UIImage imageWithCGImage:imageRef];
    
    //clean up
    CGContextRelease(ctx);
    CGColorSpaceRelease(colorSpace);
    
    free(pixelBuffer);
    CFRelease(intBitMapData);
    
    CGColorSpaceRelease(colorSpace);
    CGImageRelease(imageRef);
    
    return returnImage;
    
}

@end
