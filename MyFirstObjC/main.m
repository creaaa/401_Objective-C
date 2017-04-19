
#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        
        Box* myBox1 = [Box alloc];
        myBox1 = [myBox1 initWithHeight:1.2 withWidth:2 WithLength:5];
        
        NSLog(@"volume: %f", [myBox1 calc]);
        
        
        Box* myBox2 = [Box alloc];
        myBox2 = [myBox2 initWithHeight:1 withWidth:2 WithLength:3];
        
        float result = [myBox1 howManyTimes:myBox2];
        
        NSLog(@"1st box is %f times bigger than 2nd box", result);
        
    
        
    }
    
}
