
#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray* contactAry;


-(instancetype) init;
-(void)addContact:(Contact *)newContact;


@end
