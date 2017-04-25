
#import <Foundation/Foundation.h>
#import "BaseExercise.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        InputCollector* prompter = [InputCollector new];
        int             command;
        
        
        NSArray* classNameAry = @[@"Main_Ex1", @"Main_Ex2", @"Main_Ex3", @"Main_Ex4", @"Main_Ex5",
                                  @"Main_Ex6", @"Main_Ex7", @"Main_Ex8", @"Main_Ex9", @"Main_Ex10",
                                  @"Main_Ex11", @"Main_Ex12", @"Main_Ex13", @"Main_Ex14", @"Main_Ex15"];
        
        while (true) {

            command = [[prompter inputForPrompt:@"Input Assignment No: "] intValue];
            
            if (command <= 0 || command > classNameAry.count) {
                printf("Invalid number. Try again...\n");
                continue;
            }
            
            break;
        }
        
        BaseExercise* exercise = [NSClassFromString(classNameAry[command-1]) new];
        [exercise execute];
        
    }
    
    return 0;
    
}



