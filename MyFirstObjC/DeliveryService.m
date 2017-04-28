
#import "DeliveryService.h"

@implementation DeliveryService


- (void) deliverPizza:(Pizza *) pizza {
    [self printDeliveredPizzaInfo: pizza];
}

- (void) printDeliveredPizzaInfo:(Pizza *) pizza {
    
    _pizzaInfos = pizza.description;
    
    [_deliveryCar deliverPizza: pizza];
}


- (instancetype)initWithDeliveryCar: (DeliveryCar*) car {
    
        self = [super init];
    
        if(self) {
            _deliveryCar = car;
        }
    
        return self;
    
}



@end
