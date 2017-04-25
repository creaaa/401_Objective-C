
#import "Contact.h"

@implementation Contact

static int idCount = 0;


- (instancetype)initWithName: (NSString*) name withEmail: (NSString*) email {
    
    self = [super init];
    
    if(self) {
        _id    = idCount;
        _name  = name;
        _email = email;
    }
    
    idCount += 1;
    
    return self;
}


- (NSString *)description {
    
    NSString* str = [NSString stringWithFormat: @"%d <%@> (%@)", _id, _name, _email];
    
    return str;
}

@end
