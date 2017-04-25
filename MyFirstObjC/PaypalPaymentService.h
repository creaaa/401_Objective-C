
#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService: NSObject<PaymentDelegate>

- (Boolean) canProcessPayment;
- (void) processPaymentAmount: (NSInteger) amount;

@end
