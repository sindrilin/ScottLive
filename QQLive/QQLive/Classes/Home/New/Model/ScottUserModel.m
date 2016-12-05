//
//  ScottUserModel.m
//  QQLive
//
//  Created by bopeng on 2016/11/25.
//  Copyright © 2016年 Scott. All rights reserved.
//

#import "ScottUserModel.h"
#import "MJExtension.h"

@implementation ScottUserModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{@"newStar":@"new"};
}

@end
