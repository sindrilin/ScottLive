//
//  Demo4ViewController.m
//  QQLive
//
//  Created by Scott_Mr on 2016/12/3.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "Demo4ViewController.h"
#import "ScottPopMenu.h"


#define titles @[@"修改", @"删除", @"扫一扫",@"付款"]
#define icon  @[@"good1_30x30",@"good2_30x30",@"good3_30x30",@"good4_30x30"]

@interface Demo4ViewController ()<ScottPopMenuDelegate>

@end

@implementation Demo4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *v = [[UIView alloc]  initWithFrame:CGRectMake(10, 10, 50, 50)];
    v.backgroundColor = [UIColor redColor];
    [self.view addSubview:v];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = v.center;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [v addSubview:btn];
    
    
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.backgroundColor = [UIColor blueColor];
    rightBtn.frame = CGRectMake(0, 0, 80, 30);
    [rightBtn setTitle:@"添加好友" forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(addFriendClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    
    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];

    self.navigationItem.rightBarButtonItems = @[addItem,flexibleSpace];
}

- (void)addFriendClick:(UIButton *)btn {
    ScottPopMenu *popMenu = [ScottPopMenu popMenuRelyOnView:btn withTitles:titles icons:icon menuWidth:120 delegate:self];
    popMenu.textFontSize = 12;
}

- (void)btnClick:(UIButton *)btn {
    ScottPopMenu *popMenu = [ScottPopMenu popMenuRelyOnView:btn withTitles:titles icons:icon menuWidth:120 delegate:self];
    popMenu.textFontSize = 12;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint point = [touch locationInView:self.view];

    ScottPopMenu *popMenu = [ScottPopMenu popMenuAtPoint:point withTitles:titles icons:icon menuWidth:120 delegate:self];
    popMenu.translucent = NO;
    popMenu.textFontSize = 12;
}

#pragma mark - ScottPopMenuDelegate
- (void)popMenu:(ScottPopMenu *)popMenu didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@",titles[indexPath.row]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
