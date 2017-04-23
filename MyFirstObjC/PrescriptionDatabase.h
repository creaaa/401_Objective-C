
#import <Foundation/Foundation.h>

@interface PrescriptionDatabase : NSObject

@property NSMutableArray* record;  // store Prescription object

+ (PrescriptionDatabase *)sharedManager;
// - (instancetype)init;

- (NSString *)description;

@end
