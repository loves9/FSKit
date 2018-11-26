//
//  HomeViewController.m
//  FenngClient
//
//  Created by iFeng on 2018/10/12.
//  Copyright © 2018 iFeng. All rights reserved.
//

#import "HomeViewController.h"

#import "FSWXViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Home";
    
    [self setUI];
}

- (void)setUI
{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 55)];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(tapBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)tapBtn
{
    FSWXViewController * wxRender = [[FSWXViewController alloc]init];
    [self.navigationController pushViewController:wxRender animated:YES];
}

@end
