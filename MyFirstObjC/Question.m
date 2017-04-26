
#import "Question.h"

@implementation Question


- (NSTimeInterval) timeToAnswer {
   return 0;
}

- (void) generateQuestion {
    
}


- (instancetype) init {
    
    self = [super init];
    
    if (self) {
        
        _startTime = [NSDate date];
        
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        
    }
    
    return self;
    
}

@end
