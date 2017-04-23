
#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Prescription : NSObject

@property NSString* name;  // disease name
@property Patient*  patient;


// - (instancetype)init;
- (instancetype) initWithName: (NSString*) name withPatient: (Patient*) patient;


- (NSString *)description;
    
    
@end
