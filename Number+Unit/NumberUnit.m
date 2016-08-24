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
    CGFloat one = [[NSString stringWithFormat:@"%.1f", data] floatValue];
    CGFloat two = [[NSString stringWithFormat:@"%.2f", data] floatValue];
    if (one == data) {
        return [NSString stringWithFormat:@"%.1f", data];
    }
    
    if (two == data) {
        return [NSString stringWithFormat:@"%.2f", data];
    }
    
    return [NSString stringWithFormat:@"%.2f", data];
}

+ (NSString *)formatFloatThree:(CGFloat)data{
    CGFloat one = [[NSString stringWithFormat:@"%.1f", data] floatValue];
    CGFloat two = [[NSString stringWithFormat:@"%.2f", data] floatValue];
    if (one == data) {
        return [NSString stringWithFormat:@"%.1f00", data];
    }
    
    if (two == data) {
        return [NSString stringWithFormat:@"%.2f00", data];
    }
    
    return [NSString stringWithFormat:@"%.2f", data];
}

@end
