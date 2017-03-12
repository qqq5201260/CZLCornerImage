//
//  UIImage+cornerImage.h
//  CZLCornerImage
//
//  Created by MAC on 2017/3/9.
//  Copyright © 2017年 czl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (cornerImage)


/*
 1：图片size
 2：图片圆角半径
 */
-(UIImage *)converSize:(CGSize)size radius:(CGFloat)radius;

/*
 
 全圆图片
 */
-(UIImage *)circleImage;


@end
