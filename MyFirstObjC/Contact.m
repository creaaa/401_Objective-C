
#import "Contact.h"

@implementation Contact



- (instancetype)initWithName: (NSString*) name withEmail: (NSString*) email {
    
    self = [super init];
    if(self){
        _name  = name;
        _email = email;
    }
    
    return self;
}

    





- (NSString *)description {
    
    NSString* str = [NSString stringWithFormat: @"<%@> (%@)", _name, _email];
    
    return str;
}

@end
