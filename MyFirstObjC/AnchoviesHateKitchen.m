
#import "AnchoviesHateKitchen.h"

@implementation AnchoviesHateKitchen

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize) size andToppings: (NSArray*) toppings {
    
    for (int i=0; i < toppings.count; i++) {
        
        NSString* topping = [toppings[i] lowercaseString];
        
        // if it includes anchovies
        if ([topping isEqualToString:@"anchovy"] || [topping isEqualToString:@"anchovies"]) {
            printf("Oh, I hate anchovies. I don't make anything!\n");
            return false;
        }
    }
    
    return true;
    
}

// trueなら、オーダーのサイズにかかわらず、必ずLargeサイズになる
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen {
    return false;
}

// ピザが作られた直後に呼ばれる。
- (void)kitchenDidMakePizza: (Pizza*) pizza {
    [_deliveryService deliverPizza:pizza];
}


//- (instancetype) init {
//    
//    self = [super init];
//    
//    if(self) {
//        _deliveryService = [DeliveryService new];
//    }
//    
//    return self;
//    
//}


- (instancetype)initWithDeliveryCar: (DeliveryCar*) car {

        self = [super init];
    
        if(self) {
            _deliveryService = [[DeliveryService alloc] initWithDeliveryCar:car];
        }
    
        return self;
    
}



@end
