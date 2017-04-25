
#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject<PaymentDelegate>

- (Boolean) canProcessPayment;
- (void) processPaymentAmount: (NSInteger) amount;

@end
