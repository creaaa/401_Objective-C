
#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property int       id;
@property NSString* name;
@property int       age;
@property NSString* diseaseName;
@property Boolean   hasHealthCard;


- (instancetype)init;
- (instancetype) initWithId: (int) id withName: (NSString*) name withAge: (int) age withDiseaseName: (NSString*) diseaseName withHasCard: (Boolean) hasHealthCard;


- (NSString *)description;


@end
