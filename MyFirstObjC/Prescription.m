
#import "Prescription.h"

@implementation Prescription


//- (instancetype)init {
//    
//    self = [super init];
//    
//    if(self) {
//        self = [self initWithName:@"serious problem" withPatient:<#(Patient *)#>]
//    }
//    
//    return self;
//    
//}


- (instancetype) initWithName: (NSString*) name withPatient: (Patient*) patient {

    self = [super init];
    
    if (self) {
        _name = name;
        _patient = patient;
    }
    
    return self;
    
}


- (NSString *)description {
    
    NSString* str = [NSString stringWithFormat: @"name: %@, patient: %@", _name, _patient];
    
    return str;
    
}


@end
