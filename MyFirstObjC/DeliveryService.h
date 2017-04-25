
#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

@property DeliveryCar* deliveryCar;


- (void) deliverPizza:(Pizza *) pizza;
- (void) printDeliveredPizzaInfo:(Pizza *) pizza;

- (instancetype)initWithDeliveryCar: (DeliveryCar*) car;

@end
