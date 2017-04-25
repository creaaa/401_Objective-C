
#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property int                  id;
@property NSString*            name;
@property NSString*            email;
@property NSMutableDictionary* phoneNumbers;


- (instancetype) initWithName: (NSString*) name withEmail: (NSString*) email;

- (NSString *)description;


@end
