
#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject<PaymentDelegate>

- (Boolean) canProcessPayment;
- (void) processPaymentAmount: (NSInteger) amount;

@end
