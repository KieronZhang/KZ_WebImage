//
//  ViewController.m
//  KZ_WebImage_iOS
//
//  Created by Kieron Zhang on 2018/5/4.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import <KZ_Categories_iOS/UIView+KZ_Frame.h>
#import <KZ_Categories_iOS/UIScrollView+KZ_Frame.h>
#import <KZ_WebImage_iOS/KZ_ImageView+KZ_WebCache.h>
#import <KZ_WebImage_iOS/KZ_Button+KZ_WebCache.h>
#import <KZ_WebImage_iOS/KZ_Image+KZ_Common.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    UIImageView *firstImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, self.view.width - 40, self.view.width - 40)];
    firstImageView.image = [UIImage kz_imageNamed:@"niconiconi"];
    [scrollView addSubview:firstImageView];
    
    UIImageView *secondImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, firstImageView.maxY + 20, self.view.width - 40, self.view.width - 40)];
    [secondImageView kz_setImageWithURL:[NSURL URLWithString:@"http://img.soogif.com/w07hJIk1gWC8Ouv0WXfJuFyvVXkzXFA9.gif"]];
    [scrollView addSubview:secondImageView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, secondImageView.maxY + 20, self.view.width - 40, self.view.width - 40);
    [button kz_setImageWithURL:[NSURL URLWithString:@"http://img.soogif.com/fth9DTw0JiIwlDtqZEf1xPPX4hvjD2PS.gif"] forState:UIControlStateNormal];
    [scrollView addSubview:button];
    
    scrollView.contentHeight = button.maxY + 20;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
