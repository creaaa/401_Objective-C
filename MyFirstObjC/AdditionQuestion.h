
#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

//@property int scannedAnswer;
@property int correctAnswer;

- (void)    generateRandomQuestion;
- (Boolean) judge: (int) userAnswer;

@end
