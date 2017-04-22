
#import <Foundation/Foundation.h>

#import "AdditionQuestion2.h"
#import "InputHandler2.h"


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {

        AdditionQuestion2* additionQuestion = [AdditionQuestion2 new];
        InputHandler2*     inputHandler     = [InputHandler2  new];
        
        // not NSTimeInterval* because this is actually double type
        NSTimeInterval     timeInterval;
        
        while (true) {
            
            [additionQuestion generateRandomQuestion];
            int userInput = [inputHandler scan];
            
            
            if (userInput == -1) {
                printf("Bye.\n");
            }
            
            
            if ([additionQuestion answer] == userInput) {
                timeInterval = [additionQuestion answerTime];
                NSLog(@"%f", timeInterval);
            }
            
        }
        
        
        
    }
    
}
