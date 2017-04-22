
#import <Foundation/Foundation.h>

@interface AdditionQuestion2 : NSObject

//@property int scannedAnswer;
@property int correctAnswer;

- (void)    generateRandomQuestion;
- (Boolean) judge: (int) userAnswer;

@end
