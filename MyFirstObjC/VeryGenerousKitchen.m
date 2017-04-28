
#import "VeryGenerousKitchen.h"

@implementation VeryGenerousKitchen

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize) size andToppings: (NSArray*) toppings {
    return true;
}

// trueなら、オーダーのサイズにかかわらず、必ずLargeサイズになる
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen {
    return true;
}

// ピザが作られた直後に呼ばれる。
- (void)kitchenDidMakePizza: (Pizza*) pizza {
    
    NSLog(@"Coming right up♪");
    [_deliveryService deliverPizza: pizza];
    
}


//- (instancetype)init {
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
