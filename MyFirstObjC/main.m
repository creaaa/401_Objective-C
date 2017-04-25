
#import <Foundation/Foundation.h>
#import "BaseExercise.h"
#import "BaseExercise.h"

#import "Main_Ex2.h"

#import "InputCollector.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        InputCollector* prompter = [InputCollector new];
        int             command;
        BaseExercise*   exercise;
        
        
//        command = [[prompter inputForPrompt:@"Input Assignment No: "] intValue];

        while(true) {

            command = [[prompter inputForPrompt:@"Input Assignment No: "] intValue];
            
            if (command <= 0) {
                printf("Invalid number. Try again...");
                continue;
            }
            
            break;
        }
        
        
        NSArray* classNameAry = @[@"Main_Ex1", @"Main_Ex2", @"Main_Ex3"];
        
        exercise = [NSClassFromString(classNameAry[command-1]) new];
        
        if (exercise != nil) {
            [exercise execute];
        } else {
            printf("Assignment not found. Try again...");
        }
    }
}



