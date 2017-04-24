
#import <Foundation/Foundation.h>
#import "PlayerManager.h"
#import "InputCollector.h"  // from ex4


int main(int argc, const char * argv[]) {

    @autoreleasepool {

        printf("Welcome to SNAKES AND LADDERS!\n");

        InputCollector* prompter = [InputCollector new];
        NSString* userInput;

        // manager handles all player's instantiation
        PlayerManager* playerManager = [PlayerManager new];

        [playerManager decidePlayersNo];


        while (true) {

            userInput = [prompter inputForPrompt:@"Type 'roll'('r') or 'quit'"];
            userInput = [userInput lowercaseString];

            if ([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]) {
                
                [playerManager roll];
                
                [playerManager judgeGameEnd];
                
            }

            else if ([userInput isEqualToString:@"quit"]) {
                
                int result = [playerManager quit];
                
                if (result == 0) {
                    printf("Thanks for playing.\n");
                    break;
                }
                
                else if (result == 1) {
                    printf("Continue.\n");
                    [playerManager restartGame];
                }
                
            }
            
        }   // end of infinite roop
    }
}









