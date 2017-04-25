
#import "Main_Ex10.h"

@implementation Main_Ex10

- (void) execute {
    
        @autoreleasepool {
    
            InputCollector* prompter = [InputCollector new];
            NSString*       userInput;
    
            int price = arc4random_uniform(901) + 100;
    
            printf("Thank you for shopping at Acme.com. Your total today is $%d.\n", price);
            printf("Please select your payment method:\n");
    
            userInput = [prompter inputForPrompt:@"1: Paypal, 2: Stripe, 3: Amazon, 4: Apple Pay"];
            int command = [userInput intValue];
    
            printf("%d\n", command);
    
            PaymentGateway*       gateway = [PaymentGateway new];
            PaypalPaymentService* paypal  = [PaypalPaymentService new];
            StripePaymentService* stripe  = [StripePaymentService new];
            AmazonPaymentService* amazon  = [AmazonPaymentService new];
            ApplePaymentService*  apple   = [ApplePaymentService  new];
    
            switch (command) {
    
                    
                case 1:
                    gateway.paymentDelegate = paypal;
                    break;
                case 2:
                    gateway.paymentDelegate = stripe;
                    break;
                case 3:
                    gateway.paymentDelegate = amazon;
                    break;
                case 4:
                    gateway.paymentDelegate = apple;
                    break;

            }
            
            int payAmount = arc4random_uniform(201);
            [gateway processPaymentAmount: payAmount];
            
        }
    
}

@end
