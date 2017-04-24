
//
//  NSArray+EnumExtensions.h
//

#import <Foundation/Foundation.h>

@interface NSArray (EnumExtensions)

/**
 * enum to string
 * @param value enum value
 * @return NSString string value
 */
- (NSString *)stringFromEnum:(NSInteger)value;

/**
 * string to enum
 * @param value string value
 * @return NSInteger enum value
 */
- (NSInteger)enumFromString:(NSString *)value;

/**
 * string to enum
 * @param value string value
 * @param def default enum value
 * @return NSInteger enum value
 */
- (NSInteger)enumFromString:(NSString *)value def:(NSInteger)def;


@end
