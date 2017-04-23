
#import <Foundation/Foundation.h>
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        Doctor* dr_Mike = [Doctor new];
        Doctor* dr_Bob  = [[Doctor alloc] initWithName:@"Bob" withSpecialization:@"Surgeon"];
        
        NSLog(@"%@", dr_Mike);
        NSLog(@"%@", dr_Bob);
        
    }
}
