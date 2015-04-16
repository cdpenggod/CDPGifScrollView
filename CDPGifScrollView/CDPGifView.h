//
//  CDPGifView.h
//  CDPGifView
//
//  Created by MAC on 15/4/7.
//  Copyright (c) 2015年 com.xuezi.CDP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDPGifView : UIWebView
//初始化
-(id)initWithFrame:(CGRect)frame withImageData:(NSData *)gifData;
//更换gif图片
-(void)changeTheGifImageData:(NSData *)gifData;

@end
