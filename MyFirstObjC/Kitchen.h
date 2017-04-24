
#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "PizzaSize.h"

@interface Kitchen : NSObject

- (Pizza*) makePizzaWithSize:(PizzaSize*)size toppings:(NSArray *)toppings;

@end
