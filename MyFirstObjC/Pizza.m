
#import "Pizza.h"

@implementation Pizza


- (instancetype) initWithSize: (PizzaSize) size withTopping: (NSArray*) topping {

    self = [super init];
    
    if (self) {
        _size = size; // なんかここ、最初から最初のcase = Smallで初期化されるぽいな。。。
        _topping = [[NSMutableArray alloc] init];
        
        for (int i=0; i<topping.count; i++) {
            [_topping addObject:topping[i]];
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




- (PizzaSize*) getSize {
    return _size;
}

- (NSMutableArray*) getTopping {
    return _topping;
}

- (NSString *)description {
    
    printf("Pizza info\n");
    
    for (int i=0; i<_topping.count; i++) {
        NSLog(@"%@", _topping[i]);
    }
    
    NSString* s;
    
    switch (_size) {
        case 0:
            s = @"Small";
            break;
        case 1:
            s = @"Medium";
            break;
        case 2:
            s = @"Large";
            break;
    }
    
    NSString* str = [NSString stringWithFormat: @"size: %@", s];
    
    return str;
    
}

@end
















