
#import "Dice.h"

@implementation Dice

- (void) roll {
    int value = arc4random_uniform(6) + 1;
    _value = value;
}

- (instancetype)init {
    
    self = [super init];
    
    if(self) {
        _value = arc4random_uniform(6) + 1;
    }
    
    return self;
    
}

- (NSString *)description {
    return @"boke";
}

@end
