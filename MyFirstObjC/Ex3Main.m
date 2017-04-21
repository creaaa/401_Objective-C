//
//
//#import <Foundation/Foundation.h>
//#import "AdditionQuestion.h"
//#import "InputHandler.h"
//#import "ScoreKeeper.h"
//
//
//int main(int argc, const char * argv[]) {
//    
//    @autoreleasepool {
//        
//        AdditionQuestion* questionManager = [AdditionQuestion new];
//        InputHandler*     inputHandler = [InputHandler new];
//        ScoreKeeper*     scoreKeeper = [ScoreKeeper new];
//        
//        
//        while (true) {
//            
//            [questionManager generateRandomQuestion];
//            
//            int userInput = [inputHandler scan];
//            
//            // exit game if the input is ""
//            if (userInput == -1) {
//                printf("Bye.\n");
//                break;
//            }
//            
//            Boolean isCorrect = [questionManager judge: userInput];
//            
//            if (isCorrect) {
//                scoreKeeper.rightAnswer += 1;
//            } else {
//                scoreKeeper.wrongAnswer += 1;
//            }
//        }
//        
//        [scoreKeeper printResult];
//        
//    }
//}
