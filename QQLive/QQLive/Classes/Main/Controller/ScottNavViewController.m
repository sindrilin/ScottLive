//
//  ScottNavViewController.m
//  QQLive
//
//  Created by bopeng on 2016/11/24.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "ScottNavViewController.h"
#import "UIBarButtonItem+ScottExtension.h"
#import "ScottBaseViewController.h"

@interface ScottNavViewController ()

@end

@implementation ScottNavViewController

+ (void)initialize {
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [bar setBackgroundImage:[UIImage imageNamed:@"navBar_bg_414x70"] forBarMetrics:UIBarMetricsDefault];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 去掉根控制器以及栈底控制器
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        
        if ([viewController isKindOfClass:[ScottBaseViewController class]]) {
            ScottBaseViewController *baseVC = (ScottBaseViewController *)viewController;
            baseVC.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] scott_initWithTitle:@"" fontSize:0 target:self action:@selector(popToParent) isBack:YES];
        }
        // 如果自定义返回按钮后, 滑动返回可能失效, 需要添加下面的代码
        __weak typeof(viewController)Weakself = viewController;
        self.interactivePopGestureRecognizer.delegate = (id)Weakself;
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)popToParent {
    [self popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}

@end
