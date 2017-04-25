
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
    [_deliveryService deliverPizza:pizza];
    
}

@end
