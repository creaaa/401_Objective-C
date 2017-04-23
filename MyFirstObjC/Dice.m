
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
    
    // ⚀ ⚁ ⚂ ⚃ ⚄ ⚅
    
    switch (_value) {
        case 1:
            return @"⚀";
            break;
        case 2:
            return @"⚁";
            break;
        case 3:
            return @"⚂";
            break;
        case 4:
            return @"⚃";
            break;
        case 5:
            return @"⚄";
            break;
        case 6:
            return @"⚅";
            break;
        default:
            return @"Irregular!";
            break;
    }
}

@end
