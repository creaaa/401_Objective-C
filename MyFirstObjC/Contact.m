
#import "Contact.h"

@implementation Contact

static int idCount = 0;


- (instancetype)initWithName: (NSString*) name withEmail: (NSString*) email {
    
    self = [super init];
    
    if(self) {
        _id           = idCount;
        _name         = name;
        _email        = email;
        _phoneNumbers = [NSMutableDictionary dictionary];
    }
    
    idCount += 1;
    
    return self;
}


- (NSString *)description {
    
    NSMutableString* phoneInfo = [NSMutableString string];
    [phoneInfo appendString:@"  "];

    // iterate all phone info
    for (NSString* key in [_phoneNumbers allKeys]) {
        
        NSString* value= [_phoneNumbers objectForKey:key];
        
        NSString* s = [NSString stringWithFormat: @"%@, => %@, ", key, value];
        [phoneInfo appendString: s];
    }
    
    
    // trim
    long targetIdx = phoneInfo.length - 2;
    [phoneInfo deleteCharactersInRange: NSMakeRange(targetIdx, 2)];
    
    
    NSString* str = [NSString stringWithFormat: @"%d <%@> (%@),\n【 %@ 】", _id, _name, _email, phoneInfo];
    
    return str;
}

@end
