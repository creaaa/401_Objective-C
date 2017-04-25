
#import "InputCollector.h"

@implementation InputCollector


-(instancetype) init {
    
    self = [super init];
    
    if(self) {
        _pastCommandAry = [[NSMutableArray alloc] init];
    }
    
    return self;
    
}


- (NSString *) inputForPrompt: (NSString *) promptString {
    
    printf("%s\n", [promptString UTF8String]);

    char input[255];
    fgets(input, 255, stdin);
    
    //NSString *string = [NSString stringWithCString:input encoding:4];
    
    //self.promptString = [string stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    // trim \n
    NSString *string = [[NSString stringWithCString:input encoding:4] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return string;
    
}

@end
