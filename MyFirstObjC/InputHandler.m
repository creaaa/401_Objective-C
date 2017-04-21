
#import "InputHandler.h"

@implementation InputHandler

- (int) scan {
    
    printf("Input the answer: \n");
    
    char sc[256];
    scanf("%s", sc);
    
    NSString* word = [NSString stringWithUTF8String: sc];
    NSString* exit = @"exit";
    
    if ([word isEqualToString: exit]) {
        printf("!!!!!\n");
        return -1; // represent exit
    }
    
    int result = [word intValue];
    
    return result;
}

@end
