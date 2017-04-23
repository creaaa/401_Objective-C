
#import <Foundation/Foundation.h>

@interface PrescriptionDatabase : NSObject

@property NSMutableArray* record;  // store Prescription object

- (instancetype)init;

- (NSString *)description;

@end
