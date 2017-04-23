
#import "Patient.h"

@implementation Patient


- (instancetype)init {
    
    self = [super init];
    
    if(self) {
        self = [self initWithId:0 withName:@"Fuga" withAge:25 withDiseaseName: @"Cough" withHasCard:false];
    }
    
    return self;
}


- (instancetype) initWithId: (int) id withName: (NSString*) name withAge: (int) age withDiseaseName: (NSString*) diseaseName withHasCard: (Boolean) hasHealthCard {
    
    self = [super init];
    
    if (self) {
        _id   = id;
        _name = name;
        _age  = age;
        _hasHealthCard = hasHealthCard;
    }
    
    return self;
    
}


- (NSString *)description {
    
    // display Bool → %hhu
    NSString* str = [NSString stringWithFormat: @"id: %d, name: %@, age: %d, card: %hhu", _id, _name, _age, _hasHealthCard];
    
    return str;
    
}

@end
