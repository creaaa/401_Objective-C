
#import "Main_Ex5.h"

@implementation Main_Ex5

- (void) execute {
    
    @autoreleasepool {

        // AdditionQuestion2* additionQuestion = [AdditionQuestion2 new];
        InputHandler2*     inputHandler     = [InputHandler2 new];

        QuestionManager* questionManager = [QuestionManager new];
        ScoreKeeper2*    scoreKeeper     = [ScoreKeeper2 new];


        while (true) {

            AdditionQuestion2* question = [AdditionQuestion2 new];

            [question generateRandomQuestion];
            int userInput = [inputHandler scan];

            // early return
            if (userInput == -1) {
                printf("Bye.\n");
                break;
            }


            if ([question answer] == userInput) {
                scoreKeeper.rightAnswer += 1;
                printf("Right!\n");
            } else {
                scoreKeeper.wrongAnswer += 1;
                printf("Wrong!\n");
            }
            [scoreKeeper printResult];


            [questionManager addQuestion:question];
            NSString* s = [questionManager timeOutput];
            
            printf("%s\n", [s UTF8String]);
            
        }
    }
    
}

@end
