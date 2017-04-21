
#import "ScoreKeeper.h"

@implementation ScoreKeeper


- (void) printResult {
    
    // 0 / 0 = NaN
    float answerPercentage = (float)_rightAnswer / ((float)_rightAnswer + (float)_wrongAnswer);
    
    printf("score: %d right, %d wrong ---- %.1lf %%\n", _rightAnswer, _wrongAnswer, answerPercentage * 100);
}

@end
