//
//  NoProductView.h
//  MVVMTableDemo
//
//  Created by Jonren on 16/4/12.
//  Copyright © 2016年 常宣任. All rights reserved.
//

#import <UIKit/UIKit.h>

static CGFloat const NoProductImageViewRadius = 90;

@interface NoProductView : UIView

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image title:(NSString *)title;

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title;

@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UILabel *titleLabel;


@end
