
#import "SubtractionQuestion.h"

@implementation SubtractionQuestion


- (instancetype)init {
     
     if (self = [super init]) {
         [self generateQuestion];
     }
     return self;
}


- (void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld - %ld?", super.leftValue, super.rightValue];
    super.answer = super.leftValue - super.rightValue;
}


@end

