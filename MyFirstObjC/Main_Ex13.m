
#import "Main_Ex13.h"

@implementation Main_Ex13

- (void) execute {
    
    @autoreleasepool {

        InputCollector* prompter = [InputCollector new];

        NSString* inputString  = [prompter inputForPrompt:@"input keyword: >"];
        NSArray * wordsAry     = [inputString componentsSeparatedByString:@" "];
        NSMutableArray * resultAry    = [[NSMutableArray alloc] init];


        for (int i=0; i < wordsAry.count; i++) {
            NSString* tmp = [wordsAry[i] stringByPigLatinization];
            [resultAry addObject: tmp];
        }


        NSMutableString* result = [NSMutableString string];

        for (int i=0; i<resultAry.count; i++) {
            [result appendString: resultAry[i]];
            [result appendString: @" "];
        }
        
        printf("%s\n", [result UTF8String]);
        
    }
    
}

@end
