
#import <Foundation/Foundation.h>
#import "PizzaSize.h"

@interface Pizza : NSObject

@property PizzaSize size;
@property NSMutableArray* topping;


- (instancetype) initWithSize: (PizzaSize) size withTopping: (NSArray*) topping;

- (PizzaSize*) getSize;
- (NSMutableArray*) getTopping;

- (NSString *)description;


@end
