
#import <Foundation/Foundation.h>

#import "AdditionQuestion2.h"
#import "InputHandler2.h"
#import "QuestionManager.h"
#import "ScoreKeeper2.h"



int main(int argc, const char * argv[]) {
    
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
            
            printf("total time: %ss\n", [s UTF8String]);
            
        }
        
        
        
    }
    
}
