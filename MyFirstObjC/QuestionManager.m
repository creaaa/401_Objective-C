
#import "QuestionManager.h"
#import "AdditionQuestion2.h"


@implementation QuestionManager

- (instancetype)init{
    
    self = [super init];
    if(self) {
        _questions = [[NSMutableArray alloc] init];
    }
    
    return self;
}


-(void)addQuestion:(AdditionQuestion2 *) newQuestion {
    
    [_questions addObject:newQuestion];
    
    
    
}


- (NSString*) timeOutput {
    
    // not NSTimeInterval* because this is actually double type
    
    AdditionQuestion2* lastQuestion = _questions.lastObject;
    
    NSTimeInterval timeInterval = [lastQuestion answerTime];
    
    // add totalSum
    _totalSum += timeInterval;
    
    NSString* result = [NSString stringWithFormat:@"total time: %.1fs, average time: %.1fs", _totalSum, _totalSum / _questions.count];
    
    return result;
    
}

@end













