//
//  NoProduct.h
//  MVVMTableDemo
//
//  Created by Jonren on 16/4/12.
//  Copyright © 2016年 常宣任. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoProductView.h"

static NSString * const RequestBackError = @"服务器异常";


@interface NoProduct : NSObject

// view上显示无数据提示（默认图片和提示）
+ (void)showOnView:(UIView *)view;

// view上显示无数据提示（可自定义图片，默认提示）
+ (void)showOnView:(UIView *)view image:(UIImage *)image;

// view上显示无数据提示（默认图片，可自定义提示）
+ (void)showOnView:(UIView *)view title:(NSString *)title;

// view上显示无数据提示（可自定义图片、提示）
+ (void)showOnView:(UIView *)view image:(UIImage *)image title:(NSString *)title;

// view上显示无数据提示（可自定义图片、提示和frame）
+ (void)showOnView:(UIView *)view image:(UIImage *)image title:(NSString *)title frame:(CGRect)frame;


// 隐藏无数据提示
+ (void)hiddenOnView:(UIView *)view;

// 判断view上是否存在无数据提示
+ (BOOL)isShowedOnView:(UIView *)view;



@end
