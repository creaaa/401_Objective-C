
#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "AnchoviesHateKitchen.h"
#import "VeryGenerousKitchen.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

#import "InputCollector.h"  // from ex4


int main(int argc, const char * argv[]) {

    @autoreleasepool {

        // delegator(委譲する)
        Kitchen* kitchen = [Kitchen new];

        // delegate(委譲される)  for Assignment 11
//        AnchoviesHateKitchen* ah_kitchen = [[AnchoviesHateKitchen alloc] init];
//        VeryGenerousKitchen*  vg_kitchen = [VeryGenerousKitchen new];
        
        // delegate(委譲される)  for Assignment 12
        DeliveryCar*          car = [DeliveryCar new];
        AnchoviesHateKitchen* ah_kitchen  = [[AnchoviesHateKitchen alloc] initWithDeliveryCar:car];
        VeryGenerousKitchen*  vg_kitchen  = [[VeryGenerousKitchen  alloc] initWithDeliveryCar:car];
        

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
        NSLog(@"Dive in! %@", madePizza);

    }

}


