
#import "Main_Ex5.h"

@implementation Main_Ex5

- (void) execute {
    
    @autoreleasepool {

        printf("MATHS!\n");

        QuestionFactory* factory  = [QuestionFactory new];
        ScoreKeeper* scoreKeeper  = [ScoreKeeper new];
        
        QuestionManager* questionManager = [QuestionManager new];
        InputCollector*  prompter        = [InputCollector new];
        NSString*        command;

        
        while (true) {
            
            Question* q = [factory generateRandomQuestion];
            
            command = [prompter inputForPrompt: q.question];
            
            if ([command isEqualToString:@"exit"]) {
                [scoreKeeper printResult];
                printf("Bye.\n");
                break;
            }
            
            // judge whether answer is right
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

