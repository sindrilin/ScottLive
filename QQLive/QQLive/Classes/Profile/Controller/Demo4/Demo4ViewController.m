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
    
    UIView *v = [[UIView alloc]  initWithFrame:CGRectMake(10, 10, 200, 200)];
    v.backgroundColor = [UIColor redColor];
    [self.view addSubview:v];
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
