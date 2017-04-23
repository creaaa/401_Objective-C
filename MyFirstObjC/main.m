
#import <Foundation/Foundation.h>

#import "GameController.h"


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
                
        GameController* gameController = [GameController new];
        
        [gameController printDiceState];

        int rollCount = 0;
        
        // Player only can roll up to 5 times (original rule)
        while (rollCount < 5) {
            rollCount += 1;
        }
        
    
        
    }
    
}
