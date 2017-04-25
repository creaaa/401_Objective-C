
#import <Foundation/Foundation.h>
#import "BaseExercise.h"
#import "BaseExercise.h"

#import "Ex2Main.m"

#import "InputCollector.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        InputCollector* prompter = [InputCollector new];
        NSString*       command;
        BaseExercise*   exercise;
        
        
        while(command != 0) {
            
            command = [prompter inputForPrompt:@"Input Assignment No"];
            
            if ([command intValue] == 0) {
                printf("Invalid number. Try again...");
            }
        
            break;
        }
        
        Ex2Main
        
        
//        exercise = 
//        
//        [exercise execute];
        
    }
}



