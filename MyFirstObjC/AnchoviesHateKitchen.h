
#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface AnchoviesHateKitchen : NSObject<KitchenDelegate>

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize) size andToppings: (NSArray*) toppings;
// trueなら、オーダーのサイズにかかわらず、必ずLargeサイズになる
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen;
// ピザが作られた直後に呼ばれる。
- (void)kitchenDidMakePizza: (Pizza*) pizza;

@end
