//
//  BHInfiniteScrollViewTitleView.m
//  BHInfiniteScrollView
//
//  Created by libohao on 16/3/7.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import "BHInfiniteScrollViewTitleView.h"

@interface BHInfiniteScrollViewTitleView()

@property (nonatomic, strong) UILabel* titleLabel;

@end


@implementation BHInfiniteScrollViewTitleView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
    _font = [UIFont systemFontOfSize:14];
    _textColor = [UIColor blackColor];
    _alignment = NSTextAlignmentLeft;
    _defaultBackgroundColor = [UIColor clearColor];
    _margin = 10;
    self.backgroundColor = self.defaultBackgroundColor;
    
    [self addSubview:self.titleLabel];
}

- (UILabel *)titleLabel {
    if(!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(_margin, 0, self.frame.size.width, self.frame.size.height)];
        _titleLabel.font = _font;
        _titleLabel.textColor = _textColor;
        _titleLabel.textAlignment = _alignment;
    }
    return _titleLabel;
}

- (void)setTitleText:(NSString *)titleText {
    _titleText = titleText;
    self.titleLabel.text = _titleText;
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    self.titleLabel.textColor = textColor;
}

- (void)setFont:(UIFont *)font {
    _font = font;
    self.titleLabel.font = font;
}

- (void)setAlignment:(NSTextAlignment)alignment {
    _alignment = alignment;
    self.titleLabel.textAlignment = alignment;
}

- (void)setMargin:(CGFloat)margin {
    _margin = margin;
    if (self.titleLabel.textAlignment == NSTextAlignmentLeft) {
        self.titleLabel.frame = CGRectMake(_margin, _titleLabel.frame.origin.y, CGRectGetWidth(_titleLabel.frame), CGRectGetHeight(_titleLabel.frame));
    }else if (self.titleLabel.textAlignment == NSTextAlignmentRight) {
        self.titleLabel.frame = CGRectMake(0, _titleLabel.frame.origin.y, CGRectGetWidth(_titleLabel.frame) - margin, CGRectGetHeight(_titleLabel.frame));
    }
    
}
@end
