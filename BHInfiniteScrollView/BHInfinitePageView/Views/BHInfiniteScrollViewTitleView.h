//
//  BHInfiniteScrollViewTitleView.h
//  BHInfiniteScrollView
//
//  Created by libohao on 16/3/7.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BHInfiniteScrollViewTitleView : UIView

@property (nonatomic, strong) UIColor* defaultBackgroundColor;

@property (nonatomic, strong) UIColor* textColor;

@property (nonatomic, strong) UIFont* font;

@property (nonatomic, assign) NSTextAlignment alignment;

@property (nonatomic, strong) NSString* titleText;

@property (nonatomic, assign) CGFloat margin;


@end
