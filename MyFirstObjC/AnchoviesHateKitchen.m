
#import "AnchoviesHateKitchen.h"

@implementation AnchoviesHateKitchen

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize) size andToppings: (NSArray*) toppings {
    return false;
}

// trueなら、オーダーのサイズにかかわらず、必ずLargeサイズになる
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen {
    return false;
}

// ピザが作られた直後に呼ばれる。
- (void)kitchenDidMakePizza: (Pizza*) pizza {
    
}

@end
