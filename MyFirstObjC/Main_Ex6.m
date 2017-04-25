
#import "Main_Ex6.h"

@implementation Main_Ex6

- (void) execute {
    
    @autoreleasepool {

        int rollCount = 0;

        GameController* gameController = [GameController new];
        InputCollector* inputCollector = [InputCollector new];
        NSString*       userInput;

        [gameController printDiceState];
        [gameController printCurrentScore];


        // Player only can roll up to 5 times (original rule)
        while (rollCount < 7) {

            userInput = [inputCollector inputForPrompt:@"Command? (roll / hold / reset)"];

            if ([userInput isEqualToString:@"roll"]) {

                [gameController rollDices];

            } else if ([userInput isEqualToString:@"hold"]) {

                userInput = [inputCollector inputForPrompt:@"Which dice? (1-5)"];
                [gameController holdDie: [userInput intValue]];

            } else if ([userInput isEqualToString:@"reset"]) {

                [gameController resetDice];
                [gameController printDiceState];
                [gameController printCurrentScore];
                
            }
            
            rollCount += 1;
        }
    }
    
}

@end
