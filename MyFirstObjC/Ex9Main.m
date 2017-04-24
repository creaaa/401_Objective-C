//
//#import <Foundation/Foundation.h>
//#import "FoodTruck.h"
//#import "Cook.h"
//
//
//int main(int argc, const char * argv[]) {
//    
//    @autoreleasepool {
//        
//        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
//        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
//        
//        // create instances of your delegate class
//        // set truckA and truckB's delegate to your new instance.
//        Cook* myCook = [Cook new];
//        
//        truckA.delegate = myCook;
//        truckB.delegate = myCook;
//        
//        [truckA serve:10];
//        [truckB serve:5];
//        
//        [truckA cashOut];
//        [truckB cashOut];
//        
//    }
//    
//    return 0;
//    
//}
