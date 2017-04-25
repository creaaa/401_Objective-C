
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
        NSString*       userInput;

        
        while (true) {

            userInput = [prompter inputForPrompt:@"Which manager do you like? (anchovies/gene)"];

            if ([userInput isEqualToString:@"anchovies"]) {
                printf("delegated to AnchoviesHateKitchen\n");
                kitchen.delegate = ah_kitchen;
                break;
            }
            
            else if ([userInput isEqualToString:@"gene"]) {
                printf("delegated to VeryGenerousKitchen\n");
                kitchen.delegate = vg_kitchen;
                break;
            } else {
                printf("didn't delegate task to the manager.\n");
                break;
            }
        }
        
        
        userInput = [prompter inputForPrompt:@"♪ Input MAKEPIZZA command: >\n"];
        NSArray* commandWords = [userInput componentsSeparatedByString:@" "];
        
        
        // store size
        PizzaSize size;
        // store topping
        NSMutableArray* toppingAry = [[NSMutableArray alloc] init];

        
        for (int i=0; i < commandWords.count; i++) {
            
            if (i == 0) {
                // fixme
                // size = (PizzaSize)commandWords[i];
                size = [kitchen convertStringToEnum: commandWords[i]]; 
            }
            
            else {
                [toppingAry addObject:commandWords[i]];
            }
            
        }
        
        // madePizza = [kitchen makePizzaWithSize:Medium toppings:@[@"cheese"]];
        
        madePizza = [kitchen makePizzaWithSize: size toppings: toppingAry];
        
        NSLog(@"Dive in! %@", madePizza);

    }

}








