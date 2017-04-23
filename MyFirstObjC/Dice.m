
#import "Dice.h"

@implementation Dice

- (void) roll {
    int value = arc4random_uniform(6) + 1;
    _value = value;
}

- (NSString *)description {
    return @"";
}

@end
