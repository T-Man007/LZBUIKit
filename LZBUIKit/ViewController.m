//
//  ViewController.m
//  LZBUIKit
//
//  Created by ZhaoBin Li on 2018/1/26.
//  Copyright © 2018年 ZhaoBin Li. All rights reserved.
//

#import "ViewController.h"
#import "LZBUIKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UILabel *label = [LZBUIKit labelWithTextColor:[UIColor redColor] fontSize:16.0];
//    [self.view addSubview:label];
//    label.frame = CGRectMake(100, 100, 200, 50);
//    label.backgroundColor = [UIColor purpleColor];
    
    UIButton *v = [LZBUIKit buttonWithTitle:@"" fontSize:17 titleColor:[UIColor orangeColor] cornerRadius:5.0 borderColor:[UIColor blueColor] borderWidth:5 normalImage:Nil selectedImage:Nil target:self action:@selector(VAction:)];
    [self.view addSubview:v];
    v.frame = CGRectMake(100, 100, 200, 50);
    v.backgroundColor = [UIColor purpleColor];
}

- (void)VAction:(UIButton *)button
{
    NSLog(@"按钮");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
