
#import "Main_Ex3.h"

@implementation Main_Ex3

- (void) execute {
    
    @autoreleasepool {
        
        AdditionQuestion* questionManager = [AdditionQuestion new];
        InputHandler*     inputHandler    = [InputHandler new];
        ScoreKeeper*      scoreKeeper     = [ScoreKeeper new];

        while (true) {

            [questionManager generateRandomQuestion];

            int userInput = [inputHandler scan];

            // exit game if the input is "exit"
            if (userInput == -1) {
                [scoreKeeper printResult];
                printf("Bye.\n");
                break;
            }

            Boolean isCorrect = [questionManager judge: userInput];

            if (isCorrect) {
                scoreKeeper.rightAnswer += 1;
            } else {
                scoreKeeper.wrongAnswer += 1;
            }
            
            [scoreKeeper printResult];
        }
    }
}

@end
