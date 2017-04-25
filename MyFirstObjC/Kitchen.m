
#import "Kitchen.h"

@implementation Kitchen

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
