
#import "AdditionQuestion2.h"

@implementation AdditionQuestion2


- (NSInteger) answer {
    _endTime = [NSDate date];
    return _correctAnswer;
}



- (instancetype) init {
    
    self = [super init];
    
    if (self) {
        _startTime = [NSDate date];
    }
    
    return self;
    
}


- (void)generateRandomQuestion {
    
    int int1 = arc4random_uniform(100);
    int int2 = arc4random_uniform(100) + 1;

    self.correctAnswer = int1 + int2;
    
    printf("What is %d + %d?\n", int1, int2);
    
}


// return whether the answer is right
- (Boolean) judge: (int) userAnswer {
        
    if (userAnswer == self.correctAnswer) {
        printf("Right!\n");
        return true;
    } else {
        printf("Wrong!\n");
        return false;
    }
}


- (NSTimeInterval) answerTime {
    
    NSDateFormatter *inputDateFormatter = [[NSDateFormatter alloc] init];
    [inputDateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSTimeInterval since;
    
    
    // dateBとdateAの時間の間隔を取得(dateB - dateAなイメージ)
    since = [_endTime timeIntervalSinceDate: _startTime];
    
    NSLog(@"%f秒", since);
    NSLog(@"%f分", since/60);
    NSLog(@"%f時", since/(60*60));
    NSLog(@"%f日", since/(24*60*60));
    
    return since;
    
}




@end






















