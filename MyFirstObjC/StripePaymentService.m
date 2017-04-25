
#import "StripePaymentService.h"

@implementation StripePaymentService


- (Boolean) canProcessPayment {
    return arc4random_uniform(2) == 1 ? true : false;
}

- (void) processPaymentAmount: (NSInteger) amount {
    printf("Stripe processed amount $%ld\n", amount);
}

@end
