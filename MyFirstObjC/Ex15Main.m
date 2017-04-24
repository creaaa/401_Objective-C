//
//#import <Foundation/Foundation.h>
//#import "PlayerManager.h"
//#import "InputCollector.h"  // from ex4
//
//
//int main(int argc, const char * argv[]) {
//    
//    @autoreleasepool {
//        
//        printf("Welcome to SNAKES AND LADDERS!\n");
//        
//        InputCollector* prompter = [InputCollector new];
//        NSString* userInput;
//        
//        // manager handles all player's instantiation
//        PlayerManager* playerManager = [PlayerManager new];
//        
//        [playerManager decidePlayersNo];
//        
//        
//        while (true) {
//            
//            userInput = [prompter inputForPrompt:@"Type 'roll' or 'r'"];
//            userInput = [userInput lowercaseString];
//            
//            if ([userInput isEqualToString:@"r"] || [userInput isEqualToString:@"roll"]) {
//                [playerManager roll];
//            }
//            
//            else if ([userInput isEqualToString:@"quit"]) {
//                printf("thanks for playing.\n");
//                break;
//            }
//        }
//    }
//}
