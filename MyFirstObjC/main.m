
#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "PizzaSize.h"
#import "NSArray+EnumExtensions.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // NSArray* ary = @[@"tamago", @"butter"];
        
        // Pizza* myPizza      = [[Pizza alloc] initWithSize:Medium withTopping: ary];
        // Pizza* myPepperoniL = [Pizza largePepperoni];
        Pizza* myMearLoverM    = [Pizza meatLoversWithSize: Medium];
        
        //NSLog(@"%@", myPizza);
        // NSLog(@"%@", myPepperoniL);
        NSLog(@"%@", myMearLoverM);
        
    }
}
