
#import <Foundation/Foundation.h>
#import "Contact.h"
#import "InputCollector.h"


@interface ContactList : NSObject

@property NSMutableArray* contactAry;


-(instancetype) init;
-(void)addContact:(Contact *)newContact;

// bonus
- (void) show: (int) id;
- (void) find: (NSString*) term;
- (void) addPhonesInfo: (int) id;

@end
