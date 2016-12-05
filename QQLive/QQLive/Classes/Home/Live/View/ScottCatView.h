//
//  ScottCatView.h
//  QQLive
//
//  Created by bopeng on 2016/11/28.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScottLiveModel;
@interface ScottCatView : UIView

+ (instancetype)catView;

@property (nonatomic, strong) ScottLiveModel *liveModel;


@end
