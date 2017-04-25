
#import <Foundation/Foundation.h>

@class BaseExercise;

@protocol BaseProtocol <NSObject>

- (void) execute;

@end


@interface BaseExercise : NSObject<BaseProtocol>

- (void) execute;

@end



//@class PaymentGateway;
//
//@protocol PaymentDelegate <NSObject>
//
//- (Boolean) canProcessPayment;
//- (void)    processPaymentAmount: (NSInteger) amount;
//
//@end
//
//
//@interface PaymentGateway : NSObject
//
//@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;
//
//- (void) processPaymentAmount: (NSInteger) amount;
//
//@end
