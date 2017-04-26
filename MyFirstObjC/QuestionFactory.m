
#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question*) generateRandomQuestion {
    
    NSArray* questionSubclassNames = @[@"AdditionQuestion2",
                                       @"SubtractionQuestion",
                                       @"MultiplicationQuestion",
                                       @"DivisionQuestion"];
    
    NSString* className = questionSubclassNames[arc4random_uniform(4)];
    
    return [NSClassFromString(className) new];

}

@end
