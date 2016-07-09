//
//  NoProductView.m
//  MVVMTableDemo
//
//  Created by Jonren on 16/4/12.
//  Copyright © 2016年 常宣任. All rights reserved.
//

#import "NoProductView.h"

@implementation NoProductView

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image title:(NSString *)title {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        [self addSubview:self.imageView];
        [self addSubview:self.titleLabel];
        
        _imageView.image = image;
        _titleLabel.text = title;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image {
    return [self initWithFrame:frame image:image title:nil];
}

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title {
    return [self initWithFrame:frame image:nil title:title];
}


#pragma mark - gets

- (UIImageView *)imageView {
    if (!_imageView) {
        CGRect rect = self.frame;
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake((CGRectGetWidth(rect) - NoProductImageViewRadius) / 2, (CGRectGetHeight(rect) - 125) / 2 - 20, NoProductImageViewRadius, NoProductImageViewRadius)];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _imageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_imageView.frame) + 10, CGRectGetWidth(self.frame), 20)];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textColor = [UIColor grayColor];
        _titleLabel.font = [UIFont systemFontOfSize:15];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}


@end
