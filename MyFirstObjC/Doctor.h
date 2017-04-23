
#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"


@interface Doctor : NSObject

@property NSString* name;
@property NSString* specialization;
@property NSMutableArray* pastPatients;


- (instancetype)init;
- (instancetype) initWithName: (NSString*) name withSpecialization: (NSString*) specialization;


- (void) acceptPatient: (Patient*) patient;
- (Prescription*) requestPrescription: (Patient*) patient;
- (void) addPresctiptionToDB;


- (NSString *)description;


@end
