
#import "Doctor.h"

@implementation Doctor


- (instancetype)init {
    
    self = [super init];
    
    if(self) {
       self = [self initWithName:@"Foo" withSpecialization:@"General"];
    }
    
    return self;
    
}

- (instancetype) initWithName: (NSString*) name withSpecialization: (NSString*) specialization {
 
    self = [super init];
    
    if (self) {
        _name = name;
        _specialization = specialization;
        _pastPatients = [[NSMutableArray alloc] init];
    }
    
    return self;
}




- (void) issuePrescription {
    
}

- (void) addPresctiptionToDB {
    
}

- (NSString *)description {
    
    NSString* str = [NSString stringWithFormat: @"name: %@, spec: %@", _name, _specialization];
    
    return str;
    
}

@end











