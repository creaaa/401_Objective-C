
#import "Question.h"

@implementation Question

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}


- (NSTimeInterval) timeToAnswer {
   
    NSDateFormatter *inputDateFormatter = [[NSDateFormatter alloc] init];
    [inputDateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSTimeInterval since;
    
    
    // dateBとdateAの時間の間隔を取得(dateB - dateAなイメージ)
    since = [_endTime timeIntervalSinceDate: _startTime];
    
    //    NSLog(@"%f秒", since);
    //    NSLog(@"%f分", since/60);
    //    NSLog(@"%f時", since/(60*60));
    //    NSLog(@"%f日", since/(24*60*60));
    
    return since;
    
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
