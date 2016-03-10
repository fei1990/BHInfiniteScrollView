//
//  BHInfiniteScrollViewCell.h
//  BHInfiniteScrollView
//
//  Created by libohao on 16/3/6.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BHInfiniteScrollViewCellIdentifier @"BHInfiniteScrollViewCellIdentifier"

@interface BHInfiniteScrollViewCell : UICollectionViewCell

- (void)setupWithUrlString:(NSString*)url placeholderImage:(UIImage*)placeholderImage;
- (void)setupWithImageName:(NSString*)imgName placeholderImage:(UIImage*)placeholderImage;
- (void)setupWithImage:(UIImage*)img placeholderImage:(UIImage*)placeholderImage;


@property (nonatomic, assign) UIViewContentMode contentMode;

@end
