//
//  ViewController.m
//  BHInfiniteScrollView
//
//  Created by libohao on 16/3/8.
//  Copyright © 2016年 libohao. All rights reserved.
//

#import "ViewController.h"
#import "BHInfiniteScrollView.h"


@interface ViewController ()<BHInfiniteScrollViewDelegate>

@property (nonatomic, strong) BHInfiniteScrollView* infinitePageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.edgesForExtendedLayout = UIRectEdgeNone;
//    self.automaticallyAdjustsScrollViewInsets = YES;
    
    NSArray* urlsArray = @[
                           @"http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1602/26/c0/18646722_1456498424671_800x600.jpg",
                           @"http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1602/26/c0/18646649_1456498410838_800x600.jpg",
                           @"http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1602/26/c0/18646706_1456498430419_800x600.jpg",
                           @"http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1602/26/c0/18646723_1456498427059_800x600.jpg",
                           @"http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1602/26/c0/18646705_1456498422529_800x600.jpg"
                           ];
    
    
    NSArray* titlesArray = @[@"欢迎使用BHInfiniteScrollView无限轮播图",
                             @"如果你在使用过程中遇到什么疑问",
                             @"可以添加QQ群：206177395",
                             ];
    
    CGFloat viewHeight = [UIScreen mainScreen].bounds.size.height/4;
    
    BHInfiniteScrollView* infinitePageView1 = [BHInfiniteScrollView
                                              infiniteScrollViewWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), viewHeight) Delegate:self ImagesArray:urlsArray];
    
    infinitePageView1.titlesArray = titlesArray;
    infinitePageView1.pageControl.dotSize = 10;
    infinitePageView1.pageControlAlignmentOffset = CGSizeMake(0, 20);
    infinitePageView1.placeholderImage = [UIImage imageNamed:@"holder.png"];
    infinitePageView1.titleView.textColor = [UIColor whiteColor];
    infinitePageView1.titleView.margin = 30;
    infinitePageView1.scrollTimeInterval = 4;
    infinitePageView1.autoScrollToNextPage = YES;
    infinitePageView1.delegate = self;
    [self.view addSubview:infinitePageView1];
    
    
    
    BHInfiniteScrollView* infinitePageView2 = [BHInfiniteScrollView
                                               infiniteScrollViewWithFrame:CGRectMake(0, viewHeight, CGRectGetWidth(self.view.frame), viewHeight) Delegate:self ImagesArray:urlsArray];
    
    infinitePageView2.titlesArray = titlesArray;
    infinitePageView2.pageControl.dotSize = 10;
    infinitePageView2.pageControlAlignmentOffset = CGSizeMake(0,10);
    infinitePageView2.placeholderImage = [UIImage imageNamed:@"holder.png"];
    infinitePageView2.titleView.textColor = [UIColor whiteColor];
    infinitePageView2.titleView.margin = 30;
    infinitePageView2.scrollTimeInterval = 2;
    infinitePageView2.autoScrollToNextPage = YES;
    infinitePageView2.scrollDirection = BHInfiniteScrollViewScrollDirectionHorizontal;
    infinitePageView2.pageControlAlignmentH = BHInfiniteScrollViewPageControlAlignHorizontalRight;
    infinitePageView2.pageControlAlignmentV = BHInfiniteScrollViewPageControlAlignVerticalButtom;
    infinitePageView2.reverseDirection = YES;
    [self.view addSubview:infinitePageView2];
    
}

- (void)scrollTopage {
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)infiniteScrollView:(BHInfiniteScrollView *)infiniteScrollView didScrollToIndex:(NSInteger)index {
    NSLog(@"did scroll to index %ld", index);
}

- (void)infiniteScrollView:(BHInfiniteScrollView *)infiniteScrollView didSelectItemAtIndex:(NSInteger)index {
    //NSLog(@"did select item at index %ld", index);
}

@end
