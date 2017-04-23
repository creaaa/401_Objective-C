
#import "PrescriptionDatabase.h"

@implementation PrescriptionDatabase


- (instancetype)init{
    
    self = [super init];
    if(self) {
       _record = [[NSMutableArray alloc] init];
    }
    
    return self;
}


@end
