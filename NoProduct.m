//
//  NoProduct.m
//  MVVMTableDemo
//
//  Created by Jonren on 16/4/12.
//  Copyright © 2016年 常宣任. All rights reserved.
//

#import "NoProduct.h"

static NSInteger const NoProductViewTag = 101; // 设置NoProductViewTag tag值，用于获取该view


@implementation NoProduct

+ (void)showOnView:(UIView *)view {
    [self showOnView:view image:nil title:nil];
}

+ (void)showOnView:(UIView *)view image:(UIImage *)image {
    [self showOnView:view image:image title:nil];
}

+ (void)showOnView:(UIView *)view title:(NSString *)title {
    [self showOnView:view image:nil title:title];
}

+ (void)showOnView:(UIView *)view image:(UIImage *)image title:(NSString *)title {
    CGRect frame = [self frameOfView:view];
    [self showOnView:view image:image title:title frame:frame];
}

+ (void)showOnView:(UIView *)view image:(UIImage *)image title:(NSString *)title frame:(CGRect)frame {
    image = [self imageWith:image];
    title = [self titleWith:title];
    [self removeOldViewOnView:view];
    [self addNewViewOnView:view image:image title:title frame:frame];
}



#pragma mark - gets

+ (CGRect)frameOfView:(UIView *)view {
    CGRect rect = view.frame;
    CGRect frame = CGRectMake(0, (CGRectGetHeight(rect) - CGRectGetWidth(rect)) / 2 - 50, CGRectGetWidth(rect), CGRectGetWidth(rect));
    return frame;
}

+ (UIImage *)imageWith:(UIImage *)image {
    if (!image) {
        image = [UIImage imageNamed:@"no_message"];
    }
    return image;
}

+ (NSString *)titleWith:(NSString *)title {
    if (!title) {
        title = @"暂无数据";
    }
    return title;
}



#pragma mark - Action

+ (void)removeOldViewOnView:(UIView *)view {
    NoProductView *oldView = (NoProductView *)[view viewWithTag:NoProductViewTag];
    if (oldView) {
        [oldView removeFromSuperview];
        oldView = nil;
    }
}

+ (void)addNewViewOnView:(UIView *)view image:(UIImage *)image title:(NSString *)title frame:(CGRect)frame {
    NoProductView *noView = [[NoProductView alloc] initWithFrame:frame image:image title:title];
    noView.tag = NoProductViewTag;
    [view addSubview:noView];
}

+ (void)hiddenOnView:(UIView *)view {
    NoProductView *noView = (NoProductView *)[view viewWithTag:NoProductViewTag];
    [noView removeFromSuperview];
    noView = nil;
}


+ (BOOL)isShowedOnView:(UIView *)view {
    NoProductView *noView = (NoProductView *)[view viewWithTag:NoProductViewTag];
    if (noView) {
        return YES;
    }
    return NO;
}




@end
