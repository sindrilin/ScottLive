//
//  AppDelegate.m
//  QQLive
//
//  Created by bopeng on 2016/11/17.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "AppDelegate.h"
#import "ScottMainTabBarController.h"
#import "AFNetworking.h"

@interface AppDelegate ()

@property (nonatomic, strong) AFNetworkReachabilityManager *reachiabilityManager;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ScottMainTabBarController *tabBarVC = [[ScottMainTabBarController alloc] init];
    self.window.rootViewController = tabBarVC;
    
    [self checkNetwork];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)checkNetwork {
    __block NSString *tips;
    _reachiabilityManager = [AFNetworkReachabilityManager manager];
    [_reachiabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    
        switch (status) {
            case -1:{
                tips = @"未知网络错误";
            }
                break;
            case 0:{
                tips = @"暂无网络，请检查网络";
            }
                break;
            case 1:{
                tips = @"当前连接的数据流量";
            }
                break;
            case 2:{
                
            }
                break;
            default:
                break;
        }
        if (tips.length) {
            [[[UIAlertView alloc] initWithTitle:@"提示" message:tips delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil, nil] show];
        }
    }];
    [_reachiabilityManager startMonitoring];
}


- (void)applicationWillResignActive:(UIApplication *)application {}


- (void)applicationDidEnterBackground:(UIApplication *)application {}


- (void)applicationWillEnterForeground:(UIApplication *)application {}


- (void)applicationDidBecomeActive:(UIApplication *)application {}


- (void)applicationWillTerminate:(UIApplication *)application {}


@end
