# BHInfiniteScrollView (QQ交流群:206177395)
## IOS上功能最全的图片轮播库，支持图片左右滚动，上下滚动。Page Control 支持自由定制

![image](screenshot.gif)

##使用方法方便简单

###BHInfiniteScrollView* infinitePageView = [BHInfiniteScrollView infiniteScrollViewWithFrame:frame Delegate:delegate ImagesArray:图片数组];
#其中图片数组同时支持：网络连接，本地图片名字或者UIImage。

###滚动方向 BHInfiniteScrollViewScrollDirection
    BHInfiniteScrollViewScrollDirectionHorizontal,                 /** 水平滚动*/
    BHInfiniteScrollViewScrollDirectionVertical,                   /** 垂直滚动*/
  
###Page Control 水平方向布局 BHInfiniteScrollViewPageControlAlignHorizontal
    BHInfiniteScrollViewPageControlAlignHorizontalCenter,          /** page control 布局 水平居中*/
    BHInfiniteScrollViewPageControlAlignHorizontalRight,           /** page control 布局 水平靠右*/
    BHInfiniteScrollViewPageControlAlignHorizontalLeft,            /** page control 布局 水平靠左*/
    
###Page Control 垂直方向布局 BHInfiniteScrollViewPageControlAlignVertical
    BHInfiniteScrollViewPageControlAlignVerticalCenter,            /** page control 布局 垂直居中*/
    BHInfiniteScrollViewPageControlAlignVerticalTop,               /** page control 布局 垂直靠上*/
    BHInfiniteScrollViewPageControlAlignVerticalButtom,            /** page control 布局 垂直靠底*/
    
    
# 安装

1. 在 `Podfile` 中添加 `pod 'BHInfiniteScrollView'`。
2. 执行 `pod install` 或 `pod update`。
3. 导入 `<BHInfiniteScrollView/BHInfiniteScrollView.h>`。

# 要求

该项目最低支持 `iOS 6.0+` 和 `Xcode 7.0`。

# 许可证

BHInfiniteScrollView 使用 MIT 许可证，详情见 LICENSE 文件。

## usage
BHInfiniteScrollView* infinitePageView = [BHInfiniteScrollView infiniteScrollViewWithFrame:frame Delegate:delegate ImagesArray:array];
#array support ：url string，local image name string or UIImage。

### BHInfiniteScrollViewScrollDirection
    BHInfiniteScrollViewScrollDirectionHorizontal,                 /** horizontal scroll*/
    BHInfiniteScrollViewScrollDirectionVertical,                   /** vertical scroll*/
  
###Page Control horizontal layout BHInfiniteScrollViewPageControlAlignHorizontal
    BHInfiniteScrollViewPageControlAlignHorizontalCenter,          /** page control layout horizontal center*/
    BHInfiniteScrollViewPageControlAlignHorizontalRight,           /** page control layout horizontalRight*/
    BHInfiniteScrollViewPageControlAlignHorizontalLeft,            /** page control layout horizontalLeft*/
    
###Page Control vertical layout BHInfiniteScrollViewPageControlAlignVertical
    BHInfiniteScrollViewPageControlAlignVerticalCenter,            /** page control layout verticalcenter*/
    BHInfiniteScrollViewPageControlAlignVerticalTop,               /** page control layout verticalTop*/
    BHInfiniteScrollViewPageControlAlignVerticalButtom,            /** page control layout verticalButtom*/

# CocoaPods

1. Add `pod 'BHInfiniteScrollView'` to your Podfile.
2. Run `pod install` or `pod update`.
3. Import \<BHInfiniteScrollView/BHInfiniteScrollView.h\>.

# Requirements

This library requires `iOS 6.0+` and `Xcode 7.0+`.

# License

BHInfiniteScrollView is provided under the MIT license. See LICENSE file for details.

