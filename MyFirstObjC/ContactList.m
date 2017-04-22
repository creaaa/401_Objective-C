
#import "ContactList.h"
#import "Contact.h"

@implementation ContactList


- (instancetype)init{
    
    self = [super init];
    if(self) {
        _contactAry = [[NSMutableArray alloc] init];
    }
    
    return self;
}


-(void)addContact:(Contact *) newContact {
    [_contactAry addObject:newContact];
}

@end
