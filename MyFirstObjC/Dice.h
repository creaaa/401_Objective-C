
#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int value;

- (void) roll;

- (instancetype)init;

- (NSString *)description;

@end
