//
//  CDPGifScrollView.h
//  CDPGifScrollView
//
//  Created by MAC on 15/4/16.
//  Copyright (c) 2015年 com.xuezi.CDP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDPGifView.h"
@interface CDPGifScrollView : UIScrollView
//初始化并传入gif图片数组(数组里为gifImage地址路径)
-(id)initWithGifImageArr:(NSArray *)gifImageArr andFrame:(CGRect)frame;

@end
