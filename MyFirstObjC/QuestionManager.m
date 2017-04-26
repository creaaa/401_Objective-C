
#import "QuestionManager.h"
#import "AdditionQuestion2.h"


@implementation QuestionManager

- (instancetype) init {
    
    self = [super init];
    if(self) {
        _questions = [[NSMutableArray alloc] init];
    }
    
    return self;
}


- (void) appendQuestion: (Question*) newQuestion {
    [_questions addObject: newQuestion];
}


- (NSString*) timeOutput {
    
    Question* lastQuestion      = _questions.lastObject;
    
    NSTimeInterval timeInterval = [lastQuestion timeToAnswer];
    
    // add totalSum
    _totalSum += timeInterval;
    
    NSString* result = [NSString stringWithFormat:@"total time: %.1fs, average time: %.1fs", _totalSum, _totalSum / _questions.count];
    
    return result;
    
}

@end

