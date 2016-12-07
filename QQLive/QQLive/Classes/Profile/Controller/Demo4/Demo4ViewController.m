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

@property (nonatomic, strong) UIButton *btn;

@end

@implementation Demo4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [_btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.backgroundColor = [UIColor blueColor];
    [rightBtn setTitle:@"添加好友" forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(addFriendClick:) forControlEvents:UIControlEventTouchUpInside];
    self.rightView = rightBtn;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    _btn.center = self.view.center;
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
