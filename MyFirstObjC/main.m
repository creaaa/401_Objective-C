
#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "Ex10Helper.h"

#import "InputCollector.h"  // from ex4


int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        InputCollector* prompter = [InputCollector new];
        NSString*       userInput;
        
        int price = arc4random_uniform(901) + 100;
        
        printf("Thank you for shopping at Acme.com. Your total today is $%d.\n", price);
        printf("Please select your payment method:\n");
        //printf("1: Paypal, 2: Stripe, 3: Amazon\n");
        
        userInput = [prompter inputForPrompt:@"1: Paypal, 2: Stripe, 3: Amazon"];
        int command = [userInput intValue];
        
        printf("%d\n", command);
        
        PaymentGateway*       gateway = [PaymentGateway new];
        PaypalPaymentService* paypal  = [PaypalPaymentService new];
        StripePaymentService* stripe  = [StripePaymentService new];
        AmazonPaymentService* amazon  = [AmazonPaymentService new];
        
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
        }
        
        
        int payAmount = arc4random_uniform(201);
        
        [gateway processPaymentAmount: payAmount];
        
        
        
    }
}






