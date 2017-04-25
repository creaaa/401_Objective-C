
#import <Foundation/Foundation.h>
#import "PizzaSize.h"

@interface Pizza : NSObject

@property PizzaSize size;
@property NSMutableArray* topping;


- (instancetype) initWithSize: (PizzaSize) size withTopping: (NSArray*) toppings;
+ (Pizza*) largePepperoni;
+ (Pizza*) meatLoversWithSize: (PizzaSize) size;


- (NSString *)description;


@end
