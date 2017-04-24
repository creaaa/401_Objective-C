
//
//  NSArray+EnumExtensions.m
//

#import "NSArray+EnumExtensions.h"
#import <Foundation/Foundation.h>

@implementation NSArray (EnumExtensions)

- (NSString *)stringFromEnum:(NSInteger)value {
    return [self objectAtIndex:value];
}

- (NSInteger)enumFromString:(NSString *)value {
    return [self enumFromString:value def:0];
}

- (NSInteger)enumFromString:(NSString *)value def:(NSInteger)def {
    NSInteger n = [self indexOfObject:value];
    if(n == NSNotFound) n = def;
    return n;
}

@end
