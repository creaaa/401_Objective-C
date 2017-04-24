
#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "AnchoviesHateKitchen.h"
#import "VeryGenerousKitchen.h"
#import "InputCollector.h"  // from ex4


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // delegator(委譲する)
        Kitchen* kitchen = [Kitchen new];

        // delegate(委譲される)
        AnchoviesHateKitchen* ah_kitchen = [[AnchoviesHateKitchen alloc] init];
        VeryGenerousKitchen*  vg_kitchen = [VeryGenerousKitchen new];
        
        // 生成されたピザ
        Pizza* madePizza;
        
        InputCollector* prompter = [InputCollector new];
        NSString* userInput;
        
        //　while (true) {
            
            userInput = [prompter inputForPrompt:@"Which manager do you like? (anc/gene)"];
            
            if ([userInput isEqualToString:@"anc"]) {
                printf("delegated to AnchoviesHateKitchen\n");
                kitchen.delegate = ah_kitchen;
            } else if ([userInput isEqualToString:@"gene"]) {
                printf("delegated to VeryGenerousKitchen\n");
                kitchen.delegate = vg_kitchen;
            }
            
        //  break;
            
        // }
        
        madePizza = [kitchen makePizzaWithSize:Medium toppings:@[@"cheese"]];
        
        
    }
    
}
