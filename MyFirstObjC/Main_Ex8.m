
#import "Main_Ex8.h"

@implementation Main_Ex8

- (void) execute {
    
    @autoreleasepool {

        NSArray* ary        = @[@"egg", @"cheese", @"salami"];
        Pizza* myPizza      = [[Pizza alloc] initWithSize: Medium withTopping: ary];
        Pizza* myPepperoniL = [Pizza largePepperoni];
        Pizza* myMearLoverM = [Pizza meatLoversWithSize: Medium];
        
        NSLog(@"%@", myPizza);
        NSLog(@"%@", myPepperoniL);
        NSLog(@"%@", myMearLoverM);
        
    }
}

@end
