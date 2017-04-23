
#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property int       id;
@property NSString* name;
@property int       age;
@property Boolean   hasHealthCard;


- (instancetype)init;

@end
