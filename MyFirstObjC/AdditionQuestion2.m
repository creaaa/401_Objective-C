
#import "AdditionQuestion2.h"

@implementation AdditionQuestion2


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


@end
