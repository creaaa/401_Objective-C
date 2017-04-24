
#import <Foundation/Foundation.h>
#import "NSString+NSString.h"
#import "InputCollector.h"  // from ex4


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        InputCollector* prompter = [InputCollector new];
        
        NSString* inputString  = [prompter inputForPrompt:@"input keyword: >"];
        NSArray * wordsAry     = [inputString componentsSeparatedByString:@" "];
        NSMutableArray * resultAry    = [[NSMutableArray alloc] init];
        
        
        for (int i=0; i < wordsAry.count; i++) {
            NSString* tmp = [wordsAry[i] stringByPigLatinization];
            [resultAry addObject: tmp];
        }
        
        for (int i=0; i < resultAry.count; i++) {
            printf("%s\n", [resultAry[i] UTF8String]);
        }
        
    }
}
