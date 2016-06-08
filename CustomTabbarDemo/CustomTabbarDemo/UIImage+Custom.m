//
//  UIImage+Custom.m
//  CustomTabbarDemo
//
//  Created by dev on 6/8/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

#import "UIImage+Custom.h"

@implementation UIImage (Custom)

+ (UIImage *)imageWithColor:(UIColor *)color
                       size:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, (CGRect){.size = size});
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    return [UIImage imageWithColor:color
                              size:CGSizeMake(1.0f, 1.0f)];
}

@end
