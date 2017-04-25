
#import "Ex10Helper.h"


@implementation Ex10Helper

+ (int) ensureUserCommand {
  
    InputCollector* prompter;
    NSString* userCommand;
    
    while (true) {
        
        userCommand = [prompter inputForPrompt:@"1: Paypal, 2: Stripe, 3: Amazon"];
        
        int command = [userCommand intValue];
        
        if (command >= 1 && command <= 3) {
            return command;
        }
        
        printf("Invalid command. Try again...\n");
        
        
    }
    
    return 1;
    
}

@end
