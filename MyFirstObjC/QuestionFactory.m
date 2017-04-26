
#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question*) generateRandomQuestion {
    
    NSArray* questionSubclassNames = @[@"SubtractionQuestion",
                                       @"MultiplicationQuestion",
                                       @"DivisionQuestion"];
    
    NSString* className = questionSubclassNames[arc4random_uniform(3)];
    
    return [NSClassFromString(className) new];

}

@end
