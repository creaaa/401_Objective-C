
#import "Box.h"

@implementation Box

- (instancetype) generateBox: (float) height withWidth: (float) width withLength: (float) length {
    Box* newBox = [self initWithHeight: height withWidth: width WithLength:length];
    return newBox;
}

- (instancetype)initWithHeight: (float) height withWidth: (float) width WithLength: (float) length;
{
    self = [super init];
    if (self) {
        self.height = height;
        self.width  = width;
        self.length = length;
    }
    
    return self;
    
}

- (float) calc {
    float result = self.height * self.width * self.length;
    return result;
}

- (float) howManyTimes: (Box*) anotherBox {
    return [self calc] / [anotherBox calc];
}

@end











