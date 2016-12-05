//
//  ScottLayerViewController.m
//  QQLive
//
//  Created by bopeng on 2016/11/30.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "ScottLayerViewController.h"
#import "ScottCircleView.h"

@interface ScottLayerViewController ()

@property (weak, nonatomic) IBOutlet ScottCircleView *circleView;

@end

@implementation ScottLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)startDrawCircle:(UIButton *)sender {
    [self.circleView startAnimation];
}

- (IBAction)cleanLayerClick:(UIButton *)sender {
    [self.circleView clearCircleLayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
