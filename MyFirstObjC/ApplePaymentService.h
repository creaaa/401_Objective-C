
#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface ApplePaymentService : NSObject<PaymentDelegate>

- (Boolean) canProcessPayment;
- (void) processPaymentAmount: (NSInteger) amount;


@end
