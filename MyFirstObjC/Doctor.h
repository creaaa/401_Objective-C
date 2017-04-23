
#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property NSString* name;
@property NSString* specialization;
@property NSMutableArray* pastPatients;


- (instancetype)init;
- (instancetype) initWithName: (NSString*) name withSpecialization: (NSString*) specialization;

- (void) issuePrescription;
- (void) addPresctiptionToDB;


- (NSString *)description;


@end
