
#import "DeliveryService.h"

@implementation DeliveryService


- (void) deliverPizza:(Pizza *) pizza {
    [self printDeliveredPizzaInfo:pizza];
}

- (void) printDeliveredPizzaInfo:(Pizza *) pizza{
    [_deliveryCar deliverPizza:pizza];
}


//- (instancetype)init {
//    
//    self = [super init];
//    
//    if(self) {
//        _deliveryCar = [DeliveryCar new];
//    }
//    
//    return self;
//    
//}


- (instancetype)initWithDeliveryCar: (DeliveryCar*) car {
    
        self = [super init];
    
        if(self) {
            _deliveryCar = car;
        }
    
        return self;
    
}



@end
