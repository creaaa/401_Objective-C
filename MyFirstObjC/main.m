
#import <Foundation/Foundation.h>

#import "GameController.h"


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // ⚀ ⚁ ⚂ ⚃ ⚄ ⚅
        
        GameController* gameController = [GameController new];
        
        int rollCount = 0;
        
        // Player only can roll up to 5 times (original rule)
        while (rollCount < 5) {
            
            [gameController printDiceState];
            
            rollCount += 1;
            printf("%d\n", rollCount);
            
        }
        
    
        
    }
    
}
