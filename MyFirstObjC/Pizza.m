
#import "Pizza.h"

@implementation Pizza


- (instancetype) initWithSize: (PizzaSize) size withTopping: (NSArray*) toppings {

    self = [super init];
    
    if (self) {
        _size = size; // なんかここ、最初から最初のcase = Smallで初期化されるぽいな。。。
        _topping = [[NSMutableArray alloc] init];
        
        for (int i=0; i < toppings.count; i++) {
            [_topping addObject:toppings[i]];
        }
        

    }
    
    return self;
}

+ (Pizza*) largePepperoni {
    Pizza* pizza = [[Pizza alloc] initWithSize:Large withTopping: @[@"Pepperoni"] ];
    return pizza;
}

+ (Pizza*) meatLoversWithSize: (PizzaSize) size {
    Pizza* pizza = [[Pizza alloc] initWithSize:size withTopping: @[@"Meat"] ];
    return pizza;
}


- (NSString *)description {
    
    NSMutableString* result = [NSMutableString string];
    
    switch (_size) {
        case 0:
            [result appendString:@"Size: Small, "];
            break;
        case 1:
            [result appendString:@"Size: Medium, "];
            break;
        case 2:
            [result appendString:@"Size: Large, "];
            break;
    }
    
    [result appendString: @"Topping: "];

    for (int i=0; i<_topping.count; i++) {
        
        NSString* s = [NSString stringWithFormat: @"%@, ", _topping[i]];
        
        [result appendString: s];
    }
    
    long targetIdx = result.length - 2;
    [result deleteCharactersInRange: NSMakeRange(targetIdx,2)];
    
    return result;
    
}

@end

















