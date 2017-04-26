
#import "Main_Ex5.h"

@implementation Main_Ex5

- (void) execute {
    
    @autoreleasepool {

//        
//        InputHandler2*   inputHandler    = [InputHandler2 new];
//        QuestionManager* questionManager = [QuestionManager new];
//        ScoreKeeper2*    scoreKeeper     = [ScoreKeeper2 new];
//
//
//        while (true) {
//
//            AdditionQuestion2* question = [AdditionQuestion2 new];
//
//            [question generateRandomQuestion];
//            int userInput = [inputHandler scan];
//
//            // early return
//            if (userInput == -1) {
//                printf("Bye.\n");
//                break;
//            }
//
//
//            if ([question answer] == userInput) {
//                scoreKeeper.rightAnswer += 1;
//                printf("Right!\n");
//            } else {
//                scoreKeeper.wrongAnswer += 1;
//                printf("Wrong!\n");
//            }
//            
//            [scoreKeeper printResult];
//
//
//            [questionManager addQuestion:question];
//            NSString* s = [questionManager timeOutput];
//            
//            printf("%s\n", [s UTF8String]);
//            
//        }
        
        
        
        
        
        Boolean gameOn = YES;
        printf("MATHS!\n");
        
        NSString* right = @"Right!";
        NSString* wrong = @"Wrong!";
        
        ScoreKeeper2*  scoreKeeper  = [ScoreKeeper2 new];
        
        // InputHandler2* inputHandler = [InputHandler2 new];
        
//        InputCollector* prompter;
        int             command;
        
        
        
        QuestionManager* questionManager = [QuestionManager new];
        // QuestionFactory* questionFactory = [QuestionFactory new];
        
        
        while (gameOn) {
            // do stg
            SubtractionQuestion* sub_q = [SubtractionQuestion new];
            printf("%ld, %ld\n", sub_q.leftValue, sub_q.rightValue);  // スーパークラスのプロパティが取得できる
            
            InputCollector* prompter;
            command = [[prompter inputForPrompt: @"Boke??"] intValue];
            
            break;
            
        }
    }
}

@end

