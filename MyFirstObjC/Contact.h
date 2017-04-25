
#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property int       id;
@property NSString* name;
@property NSString* email;

- (instancetype) initWithName: (NSString*) name withEmail: (NSString*) email;

- (NSString *)description;


@end
