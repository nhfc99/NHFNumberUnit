//
//  Number+Unit.m
//  jinhe
//
//  Created by 今合网技术部 on 15/11/17.
//  Copyright © 2015年 rockontrol. All rights reserved.
//

#import "NumberUnit.h"

@implementation NumberUnit

+ (NSString *)formatFloat:(CGFloat)data{
    return [NSString stringWithFormat:@"%.2f", data];
}

+ (NSString *)formatFloatThree:(CGFloat)data{
    return [NSString stringWithFormat:@"%.3f", data];
}

@end
