
#import "Main_Ex11.h"

@implementation Main_Ex11

- (void) execute {
    
    @autoreleasepool {

        // delegator(委譲する)
        Kitchen* kitchen = [Kitchen new];

        // delegate(委譲される)
        AnchoviesHateKitchen* ah_kitchen = [[AnchoviesHateKitchen alloc] init];
        VeryGenerousKitchen*  vg_kitchen = [VeryGenerousKitchen new];

        // 生成されたピザ
        Pizza* madePizza;

        InputCollector* prompter = [InputCollector new];
        NSString*       userInput;


        userInput = [prompter inputForPrompt:@"Which manager do you like? (anchovies/generous)"];

        if ([userInput isEqualToString:@"anchovies"]) {
            printf("delegated to AnchoviesHateKitchen\n");
            kitchen.delegate = ah_kitchen;
        }

        else if ([userInput isEqualToString:@"generous"]) {
            printf("delegated to VeryGenerousKitchen\n");
            kitchen.delegate = vg_kitchen;

        } else {
            printf("didn't delegate task to the manager.\n");
        }

        
        madePizza = [kitchen makePizza];
        if (madePizza != nil) {
            NSLog(@"Dive in! %@", madePizza);
        }
        
    }
    
}

@end
