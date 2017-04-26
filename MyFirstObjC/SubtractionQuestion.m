
#import "SubtractionQuestion.h"

@implementation SubtractionQuestion


- (instancetype)init {
     
     if (self = [super init]) {
         [self generateQuestion];
     }
     return self;
}


- (void)generateQuestion {
    
    // set super.question here
    // set super.answer here
    
    //printf("%ld - %ld?\n", super.leftValue, super.rightValue);
    
    super.question = [NSString stringWithFormat:@"%ld - %ld?\n", super.leftValue, super.rightValue];
    super.answer = super.leftValue - super.rightValue;
    
}


@end

