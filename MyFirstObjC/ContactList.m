
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


// bonus
-(void) show: (int) id {
    
    for (Contact* person in _contactAry) {
        
        if (person.id == id) {
            printf("HIT!!\n");
            NSLog(@"%d", person.id);
            NSLog(@"%@", person.name);
            NSLog(@"%@", person.email);
            return;
        }
        
    }
    
    printf("Not found...\n");
    
}


- (void) find: (NSString*) term {
    
    for (Contact* person in _contactAry) {
        
        NSRange range1 = [[person.name  lowercaseString] rangeOfString: [term lowercaseString]];
        NSRange range2 = [[person.email lowercaseString] rangeOfString: [term lowercaseString]];
        
        if (range1.location != NSNotFound) {
            NSLog(@"%@", person);
        } else if (range2.location != NSNotFound) {
            NSLog(@"%@", person);
        }
        
    }
}


- (void) addPhonesInfo: (int) id {
    
    if(id >= _contactAry.count) {
        printf("Unexist id. Try again...\n");
        return;
    }
    
    InputCollector* prompter = [InputCollector new];
    Contact* contact = _contactAry[id];
    
    
    while (true) {
        
        NSString* phoneLabel;
        NSString* phoneNumber;
        
        phoneLabel  = [prompter inputForPrompt:@"Label?"];
        phoneNumber = [prompter inputForPrompt:@"Phone number?"];
        
        [contact.phoneNumbers setObject:phoneNumber forKey:phoneLabel];
        
        NSString* i = [prompter inputForPrompt:@"add more phone number? (y/n)"];
        
        if ([i isEqualToString:@"y"]) {
            continue;
        }
        
        break;
        
    }

}


@end








