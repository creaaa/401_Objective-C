
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


- (void) acceptPatient: (Patient*) patient {
    
    if (patient.hasHealthCard) {
        printf("You are accepted\n");
        [_pastPatients addObject:patient];
        
        NSLog(@"%@", self);
        
    } else {
        printf("Bring your health card\n");
        NSLog(@"%@", self);
    }
    
}

- (Prescription*) requestPrescription: (Patient*) patient {
    
    for (int i=0; i<_pastPatients.count; i++) {
        
        Patient* storedPatient = _pastPatients[i];
        
        if (storedPatient.id == patient.id) {
            
            printf("Hit!\n");
            
            Prescription* pres = [[Prescription alloc] initWithName: storedPatient.diseaseName withPatient: storedPatient];
            
            // add prescription to DB before return
            [self addPresctiptionToDB:pres];
            
            return pres;
            
        }
    }
    
    printf("Please take diagnosis first\n");
    return NULL;
    
}


- (void) addPresctiptionToDB: (Prescription*) pres {
    
    [[PrescriptionDatabase sharedManager].record addObject:pres];
    

}


- (NSString *)description {
    
    NSLog(@"past patients list: ");
    for (int i=0; i<_pastPatients.count; i++) {
        NSLog(@"%@", ((Patient*)_pastPatients[i]).name);
    }
    
    NSString* str = [NSString stringWithFormat: @"name: %@, spec: %@", _name, _specialization];
    
    return str;
    
}

@end











