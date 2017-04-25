
#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (Boolean) canProcessPayment {
    return arc4random_uniform(2) == 1 ? true : false;
}


- (void) processPaymentAmount: (NSInteger) amount {
    printf("Paypal processed amount $%ld\n", amount);
}

@end
