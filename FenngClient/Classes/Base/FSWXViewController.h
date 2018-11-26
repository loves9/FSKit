//
//  FSWXViewController.h
//  FenngClient
//
//  Created by iFeng on 2018/11/26.
//  Copyright © 2018 iFeng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <WeexSDK/WXSDKInstance.h>

NS_ASSUME_NONNULL_BEGIN

@interface FSWXViewController : UIViewController

@property(nonatomic, strong) WXSDKInstance * instance;
@property(nonatomic, strong) NSURL * WXBundleUrl;
@end

NS_ASSUME_NONNULL_END
