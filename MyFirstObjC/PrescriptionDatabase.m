
#import "PrescriptionDatabase.h"

@implementation PrescriptionDatabase


- (instancetype)init{
    
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
