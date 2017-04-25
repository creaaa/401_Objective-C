
#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (Boolean) canProcessPayment {
    return arc4random_uniform(2) == 1 ? true : false;
}


- (void) processPaymentAmount: (NSInteger) amount {
    printf("Apple processed amount $%ld\n", amount);
}


@end
