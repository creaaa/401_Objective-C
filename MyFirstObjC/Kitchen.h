
#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "PizzaSize.h"

@class Kitchen;  // なんかこれないと、@protocol内でメソッド定義した時おかしくなる

@protocol KitchenDelegate <NSObject>

// falseなら、ピザは作られない
- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize: (PizzaSize) size andToppings: (NSArray*) toppings;
// trueなら、オーダーのサイズにかかわらず、必ずLargeサイズになる
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen;
// ピザが作られた直後に呼ばれる。
- (void)kitchenDidMakePizza: (Pizza*) pizza;

@end




@interface Kitchen : NSObject

@property (nonatomic, weak) id<KitchenDelegate> delegate;

- (Pizza*) makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end
