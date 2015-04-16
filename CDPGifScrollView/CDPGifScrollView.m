//
//  CDPGifScrollView.m
//  CDPGifScrollView
//
//  Created by MAC on 15/4/16.
//  Copyright (c) 2015年 com.xuezi.CDP. All rights reserved.
//

#import "CDPGifScrollView.h"

@implementation CDPGifScrollView

-(id)initWithGifImageArr:(NSArray *)gifImageArr andFrame:(CGRect)frame{
    if (self=[super init]) {
        self.backgroundColor=[UIColor clearColor];
        self.pagingEnabled=YES;
        self.frame=frame;
        self.contentSize=CGSizeMake(gifImageArr.count*frame.size.width,frame.size.height);
        self.bounces=NO;
        self.showsHorizontalScrollIndicator=NO;
        
        for (NSInteger i=0;i<gifImageArr.count;i++) {
            NSString *path=[gifImageArr objectAtIndex:i];
            NSData *gifData = [NSData dataWithContentsOfFile:path];
            
            CDPGifView *gifView=[[CDPGifView alloc] initWithFrame:CGRectMake(frame.size.width*i,0,frame.size.width,frame.size.height) withImageData:gifData];
            [self addSubview:gifView];
        }
    }
    
    return self;
}













/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
