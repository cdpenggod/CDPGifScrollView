//
//  CDPGifView.m
//  CDPGifView
//
//  Created by MAC on 15/4/7.
//  Copyright (c) 2015年 com.xuezi.CDP. All rights reserved.
//

#import "CDPGifView.h"

@implementation CDPGifView
//初始化
-(id)initWithFrame:(CGRect)frame withImageData:(NSData *)gifData{
    if (self=[super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.scalesPageToFit = YES;
        self.userInteractionEnabled=NO;
        [self loadData:gifData MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    }
    
    return self;
}

//改变当前图片
-(void)changeTheGifImageData:(NSData *)gifData{
    [self loadData:gifData MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
