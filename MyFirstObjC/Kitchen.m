
#import "Kitchen.h"
#import "AnchoviesHateKitchen.h"
#import "VeryGenerousKitchen.h"
#import "InputCollector.h"  // from Ex4


@implementation Kitchen

// FIXME: - doesn't work
- (id<KitchenDelegate>) setDelegateFromUserInput {

    InputCollector* prompter = [InputCollector new];
    
    // AnchoviesHateKitchen* ah_kitchen = [[AnchoviesHateKitchen alloc] init];
    // VeryGenerousKitchen*  vg_kitchen = [VeryGenerousKitchen new];
    
    
    // while (true) {

        NSString* userInput = [prompter inputForPrompt:@"Which manager do you like? (anchovies/gene)"];

        if ([userInput isEqualToString:@"anchovies"]) {
            printf("delegated to AnchoviesHateKitchen\n");
            
            return [[AnchoviesHateKitchen alloc] init];
            
            //_delegate = ah_kitchen;
            // break;
        }

        else if ([userInput isEqualToString:@"gene"]) {
            printf("delegated to VeryGenerousKitchen\n");
            
            return [VeryGenerousKitchen new];
            
            // _delegate = vg_kitchen;
            //self.delegate = vg_kitchen;
            // break;
        } else {
            printf("didn't delegate task to the manager.\n");
            return NULL;
            // break;
        }
    
    // }
    
}


- (Pizza*) makePizza {
    
    InputCollector* prompter = [InputCollector new];
    
    printf("\n");
    NSString* userInput = [prompter inputForPrompt:@"♪ Input MAKEPIZZA command: >\n"];
    NSArray*  commandWords = [userInput componentsSeparatedByString:@" "];
    
    
    // store size
    PizzaSize size;
    // store topping
    NSMutableArray* toppingAry = [[NSMutableArray alloc] init];
    
    
    for (int i=0; i < commandWords.count; i++) {
        
        if (i == 0) {
            // fixme
            // size = (PizzaSize)commandWords[i];
            size = [self convertStringToEnum: commandWords[i]];
        }
        
        else {
            [toppingAry addObject:commandWords[i]];
        }
        
    }
    
    return [self makePizzaWithSize: size toppings: toppingAry];
    
}


- (Pizza*) makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    // set false if there is no delegate
    Boolean shouldMakePizza = [self.delegate kitchen:self shouldMakePizzaOfSize: Small andToppings: toppings];
    Boolean shouldMakeSizeLarge = [self.delegate kitchenShouldUpgradeOrder:self];
    
    
    if (shouldMakePizza) {
        
        if (shouldMakeSizeLarge) {
            Pizza* pizza = [[Pizza alloc] initWithSize: Large withTopping: toppings];
            
            // 注意: (kitchenDidMakePizza:pizza:)ではない！！第1引数は無視されるので書いちゃダメ！
            // 条件がおかしくなるぞ！！
            if ([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
            
            
            return pizza;
        }
        
        Pizza* pizza = [[Pizza alloc] initWithSize: size withTopping: toppings];
        
        if ([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
            [self.delegate kitchenDidMakePizza:pizza];
        }
        
        return pizza;
    }
    
    printf("failed to make pizza. Returns nothing...\n");
    
    return NULL;
    
}


// helper method
- (PizzaSize) convertStringToEnum: (NSString*) sizeStr {

    NSString* s = [sizeStr lowercaseString];
    
    if ([s isEqualToString:@"small"]) {
        return Small;
    }
    
    else if ([s isEqualToString:@"medium"]) {
        return Medium;
    }
    
    else if ([s isEqualToString:@"large"]) {
        return Large;
    }

    return NULL;
    
}




@end
