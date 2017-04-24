
#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    
    // Type A
    // return 10.0;
    
    // Type B
    if ([food isEqualToString:@"bao"]) {
        return 8.0;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 25.0;
    }
    
    return 0.0;
    
}

@end
