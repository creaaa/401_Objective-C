
#import "AmazonPaymentService.h"

@implementation AmazonPaymentService


- (Boolean) canProcessPayment {
    return arc4random_uniform(2) == 1 ? true : false;
}

- (void) processPaymentAmount: (NSInteger) amount {
    printf("Amazon processed amount $%ld\n", amount);
}

@end
