
#import "Main_Ex2.h"

@implementation Main_Ex2

- (void) execute {
    
    @autoreleasepool {

        Box* myBox1 = [Box alloc];
        myBox1 = [myBox1 initWithHeight:12 withWidth:2 WithLength:5];

        NSLog(@"volume: %.1f", [myBox1 calc]);


        Box* myBox2 = [Box alloc];
        myBox2 = [myBox2 initWithHeight:1 withWidth:2 WithLength:3];
        float result = [myBox1 howManyTimes:myBox2];

        NSLog(@"1st box is %.1f times bigger than 2nd box", result);
        
    }
    
}

@end
