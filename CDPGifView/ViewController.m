//
//  ViewController.m
//  CDPGifView
//
//  Created by MAC on 15/4/7.
//  Copyright (c) 2015年 com.xuezi.CDP. All rights reserved.
//

#import "ViewController.h"
#import "CDPGifScrollView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSMutableArray *dataArr=[[NSMutableArray alloc] init];
    
    for (NSInteger i=1;i<6;i++) {
        NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%ld",(long)i] ofType:@"gif"];
        [dataArr addObject:path];
    }
    
    CDPGifScrollView *gifScrollView=[[CDPGifScrollView alloc] initWithGifImageArr:dataArr andFrame:CGRectMake(0,100,self.view.bounds.size.width,150)];
    
    [self.view addSubview:gifScrollView];
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(10,270,300,150)];
    label.numberOfLines=0;
    label.text=@"你可用CDPGifScrollView来做简单的引导页，但最好 gif图片尺寸=显示区域大小\n\nYou can use CDPGifScrollView to do the easy guidance page, but the best [GIF picture size = display area size]";
    [self.view addSubview:label];
}














- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
