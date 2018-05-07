//
//  ViewController.m
//  KZ_WebImage_macOS
//
//  Created by Kieron Zhang on 2018/5/7.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import <KZ_WebImage_macOS/KZ_ImageView+KZ_WebCache.h>
#import <KZ_WebImage_macOS/KZ_Button+KZ_WebCache.h>
#import <KZ_WebImage_macOS/KZ_Image+KZ_Common.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSImageView *firstImageView = [[NSImageView alloc] initWithFrame:CGRectMake(20, 20, 120, 120)];
    firstImageView.wantsLayer = YES;
    firstImageView.image = [NSImage kz_imageNamed:@"niconiconi"];
    [self.view addSubview:firstImageView];
    
    NSImageView *secondImageView = [[NSImageView alloc] initWithFrame:CGRectMake(20, 160, 120, 120)];
    secondImageView.animates = YES;
    [secondImageView kz_setImageWithURL:[NSURL URLWithString:@"http://img.soogif.com/w07hJIk1gWC8Ouv0WXfJuFyvVXkzXFA9.gif"]];
    [self.view addSubview:secondImageView];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
