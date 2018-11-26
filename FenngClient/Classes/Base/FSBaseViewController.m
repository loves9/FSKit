//
//  FSBaseViewController.m
//  FenngClient
//
//  Created by iFeng on 2018/10/12.
//  Copyright © 2018 iFeng. All rights reserved.
//

#import "FSBaseViewController.h"

@interface FSBaseViewController ()

@end

@implementation FSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - 隐藏tabBar
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.tabBarController.tabBar.hidden = NO;
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    self.tabBarController.tabBar.hidden = YES;
    
}

@end
