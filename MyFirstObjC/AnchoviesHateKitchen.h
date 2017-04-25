
#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface AnchoviesHateKitchen : NSObject<KitchenDelegate>

@property DeliveryService* deliveryService;


- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize) size andToppings: (NSArray*) toppings;
// trueなら、オーダーのサイズにかかわらず、必ずLargeサイズになる
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen;
// ピザが作られた直後に呼ばれる。
- (void)kitchenDidMakePizza: (Pizza*) pizza;


// - (instancetype)init;
- (instancetype)initWithDeliveryCar: (DeliveryCar*) car;


@end
