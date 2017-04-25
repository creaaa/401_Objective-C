
#import "Kitchen.h"

@implementation Kitchen


- (Pizza*) makePizza {
    
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
    
}


- (Pizza*) makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    
    Boolean shouldMakePizza = [self.delegate kitchen:self shouldMakePizzaOfSize: Small andToppings: toppings];
    Boolean shouldMakeSizeLarge = [self.delegate kitchenShouldUpgradeOrder:self];
    
    
    if (shouldMakePizza) {
        
        if (shouldMakeSizeLarge) {
            Pizza* pizza = [[Pizza alloc] initWithSize: Large withTopping: toppings];
            return pizza;
        }
        
        Pizza* pizza = [[Pizza alloc] initWithSize: size withTopping: toppings];
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
