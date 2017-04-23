
#import "PrescriptionDatabase.h"

@implementation PrescriptionDatabase


static PrescriptionDatabase *sharedData_ = nil;

+ (PrescriptionDatabase*) sharedManager {
    
    if (!sharedData_) {
        sharedData_ = [PrescriptionDatabase new];
    }
    
    return sharedData_;
}


- (instancetype)init {
    
    self = [super init];
    if(self) {
       _record = [[NSMutableArray alloc] init];
    }
    
    return self;
}


- (NSString *)description {
    
    //NSString* str = [NSString stringWithFormat: @"name: %@, patient: %@", _name, _patient];
    
    for (int i=0; i<_record.count; i++) {
        NSLog(@"%@", _record[i]);
    }
    
    return @"";
    
}

@end
