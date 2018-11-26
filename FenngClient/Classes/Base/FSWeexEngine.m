//
//  FSWeexEngine.m
//  FenngClient
//
//  Created by iFeng on 2018/11/26.
//  Copyright © 2018 iFeng. All rights reserved.
//

#import "FSWeexEngine.h"

#import <WeexSDK/WeexSDK.h>
#import "WXNavigationDefaultImpl.h"

@implementation FSWeexEngine

+ (void)startWeexEngine
{
    //business configuration
    [WXAppConfiguration setAppGroup:@"FSApp"];
    [WXAppConfiguration setAppName:@"FSWeexDemo"];
    [WXAppConfiguration setAppVersion:@"1.0.0"];
    
    //init sdk environment
    [WXSDKEngine initSDKEnvironment];
    
    //register custom module and component，optional
//    [WXSDKEngine registerComponent:@"MyView" withClass:[MyViewComponent class]];
//    [WXSDKEngine registerModule:@"event" withClass:[WXEventModule class]];
    
    //register the implementation of protocol, optional
    [WXSDKEngine registerHandler:[WXNavigationDefaultImpl new] withProtocol:@protocol(WXNavigationProtocol)];
    
    //set the log level
    [WXLog setLogLevel: WXLogLevelAll];
}

@end
