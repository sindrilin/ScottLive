//
//  NSObject+ScottExtension.m
//  QQLive
//
//  Created by bopeng on 2016/11/24.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "NSObject+ScottExtension.h"

@implementation NSObject (ScottExtension)

- (void)showInfo:(NSString *)info {
    if ([self isKindOfClass:[UIViewController class]] || [self isKindOfClass:[UIView class]]) {
        [[[UIAlertView alloc] initWithTitle:@"温馨提示" message:info delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil, nil] show];
    }
}

@end
