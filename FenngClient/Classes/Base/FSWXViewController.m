//
//  FSWXViewController.m
//  FenngClient
//
//  Created by iFeng on 2018/11/26.
//  Copyright © 2018 iFeng. All rights reserved.
//

#import "FSWXViewController.h"


@interface FSWXViewController ()

@property (nonatomic, strong) UIView *weexView;


@end

@implementation FSWXViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _instance = [[WXSDKInstance alloc] init];
    _instance.viewController = self;
    _instance.frame = self.view.frame;
    
    __weak typeof(self) weakSelf = self;
    _instance.onCreate = ^(UIView *view) {
        [weakSelf.weexView removeFromSuperview];
        weakSelf.weexView = view;
        [weakSelf.view addSubview:weakSelf.weexView];
    };
    
    _instance.onFailed = ^(NSError *error) {
        //process failure
    };
    
    _instance.renderFinish = ^ (UIView *view) {
        //process renderFinish
    };
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"landing.weex" withExtension:@"js"];
    _WXBundleUrl = [NSURL URLWithString:@"http://10.65.105.224:8081/dist/index.js"];
    [_instance renderWithURL:_WXBundleUrl options:@{} data:nil];
}

- (void)dealloc
{
    [_instance destroyInstance];
}

@end
