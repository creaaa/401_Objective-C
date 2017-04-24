
#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"
#import "InputCollector.h"  // from ex4


int main(int argc, const char * argv[]) {

    @autoreleasepool {

        InputCollector* prompter = [InputCollector new];
        NSString* userInput;

        // manager handles all player's instantiation
        PlayerManager* playerManager = [PlayerManager new];
        
        [playerManager decidePlayersNo];
        

        // no longer needed
        Player* player1 = [[Player alloc] init];
        
        

        while (!player1.gameOver) {

            userInput = [prompter inputForPrompt:@"Command?(roll)"];

            if ([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]) {
                [player1 roll];
            }

        }
    }
}
