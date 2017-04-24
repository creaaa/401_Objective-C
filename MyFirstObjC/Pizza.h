
#import <Foundation/Foundation.h>
#import "PizzaSize.h"

@interface Pizza : NSObject

@property PizzaSize size;
@property NSMutableArray* topping;


- (instancetype) initWithSize: (PizzaSize) size withTopping: (NSArray*) topping;
+ (Pizza*) largePepperoni;
+ (Pizza*) meatLoversWithSize: (PizzaSize) size;



- (PizzaSize*) getSize;
- (NSMutableArray*) getTopping;

- (NSString *)description;


@end
