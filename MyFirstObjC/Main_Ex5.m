
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
        
        
        
        
        

        
        printf("MATHS!\n");

        
        ScoreKeeper* scoreKeeper  = [ScoreKeeper new];
        
        QuestionManager* questionManager = [QuestionManager new];
        InputCollector*  prompter        = [InputCollector new];
        NSString*        command;

        
        Boolean gameOn  = YES;

        while (gameOn) {
            
            //Question* q = [SubtractionQuestion new];
            Question* q = [DivisionQuestion new];
            
            // printf("%ld, %ld\n", sub_q.leftValue, sub_q.rightValue);  // スーパークラスのプロパティが取得できる
            
            command = [prompter inputForPrompt: q.question];
            
            
            // ユーザー入力後の流れ
            if ([command intValue] == q.answer) {
                scoreKeeper.rightAnswer += 1;
                printf("Right!\n");
            } else {
                scoreKeeper.wrongAnswer += 1;
                printf("Wrong!\n");
            }

            [questionManager appendQuestion: q];
            [scoreKeeper printResult];
            printf("%s\n", [[questionManager timeOutput] UTF8String]);

        }
    }
}

@end

