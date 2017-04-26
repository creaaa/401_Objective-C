
#import <Foundation/Foundation.h>

@interface AdditionQuestion2 : NSObject

@property int correctAnswer;
- (NSInteger) answer;

// added in Ex5
@property NSDate* startTime;  // 出題の開始
@property NSDate* endTime;    // 回答終了


- (instancetype) init;

- (void)    generateRandomQuestion;
- (Boolean) judge: (int) userAnswer;

- (NSTimeInterval) answerTime;

@end
