//
//  BHInfiniteScrollViewCell.m
//  BHInfiniteScrollView
//
//  Created by libohao on 16/3/6.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import "BHInfiniteScrollViewCell.h"

#if __has_include(<UIImageView+WebCache.h>)
#import <UIImageView+WebCache.h>
#else 
#import "UIImageView+WebCache.h"
#endif

@interface BHInfiniteScrollViewCell()

@property (nonatomic, strong) UIImageView* imageView;

@end

@implementation BHInfiniteScrollViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupImageView];
    }
    return self;
}


- (void)setupWithUrlString:(NSString*)url placeholderImage:(UIImage*)placeholderImage {
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholderImage];
}

- (void)setupWithImageName:(NSString*)imgName placeholderImage:(UIImage*)placeholderImage {
    UIImage* image = [UIImage imageNamed:imgName];
    if (!image) {
        image  = placeholderImage;
    }
    self.imageView.image = image;
}

- (void)setupWithImage:(UIImage*)img placeholderImage:(UIImage*)placeholderImage {
    if (img) {
        self.imageView.image = img;
    }else {
        self.imageView.image = placeholderImage;
    }
    
}

- (void)setupImageView {
    [self.contentView addSubview:self.imageView];
}

- (UIImageView* )imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc]initWithFrame:self.bounds];
        _imageView.layer.masksToBounds = YES;
    }
    return _imageView;
}

- (void)setContentMode:(UIViewContentMode)pageViewContentMode {
    _contentMode = pageViewContentMode;
    self.imageView.contentMode = pageViewContentMode;
}

@end
