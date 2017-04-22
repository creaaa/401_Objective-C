
#import <Foundation/Foundation.h>

@interface AdditionQuestion2 : NSObject

//@property int scannedAnswer;
@property int correctAnswer;

// added in Ex5
@property NSDate* startTime;
@property NSDate* endTime;


- (void)    generateRandomQuestion;
- (Boolean) judge: (int) userAnswer;

@end
