
#import "Main_Ex14.h"

@implementation Main_Ex14

- (void) execute {
    
    @autoreleasepool {

        // Player* player1 = [[Player alloc] init];
        Player* player1 = [[Player alloc] initWithName:@"Spider Man"];

        InputCollector* prompter = [InputCollector new];
        NSString* userInput;

        printf("Welcome to SNAKES AND LADDERS!\n");
        
        while (!player1.gameOver) {

            userInput = [prompter inputForPrompt:@"Command?(roll)"];

            if ([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]) {
                [player1 roll];
            }
        }
    }
}

@end
