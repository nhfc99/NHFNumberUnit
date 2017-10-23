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
    return [[NumberUnit notRounding:data roundingMode:NSRoundPlain afterPoint:2] stringValue];
}

+ (NSString *)formatFloatThree:(CGFloat)data {
    return [[NumberUnit notRounding:data roundingMode:NSRoundPlain afterPoint:3] stringValue];
}

+ (NSDecimalNumber *)notRounding:(CGFloat)price
                    roundingMode:(NSRoundingMode)roundingMode
                      afterPoint:(NSInteger)position {
    NSDecimalNumberHandler* roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:roundingMode scale:position raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    
    NSDecimalNumber *ouncesDecimal = [[NSDecimalNumber alloc] initWithFloat:price];
    NSDecimalNumber *resultRoundedOunces = [ouncesDecimal decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    return resultRoundedOunces;
}

@end
