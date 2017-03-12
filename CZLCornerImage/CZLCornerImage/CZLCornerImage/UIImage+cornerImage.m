//
//  UIImage+cornerImage.m
//  CZLCornerImage
//
//  Created by MAC on 2017/3/9.
//  Copyright © 2017年 czl. All rights reserved.
//

#import "UIImage+cornerImage.h"

@implementation UIImage (cornerImage)

/*
 1：图片size
 2：图片圆角半径
 */
-(UIImage *)converSize:(CGSize)size radius:(CGFloat)radius{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    CGContextAddPath(ctx,path.CGPath);
    CGContextClip(ctx);
    [self drawInRect:rect];
    CGContextDrawPath(ctx, kCGPathFillStroke);
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

/*
 
 全圆图片
 */
-(UIImage *)circleImage{
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    UIGraphicsBeginImageContext(self.size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx,rect);
    
    CGContextClip(ctx);
    [self drawInRect:rect];
    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;

}
@end
