
#import <Foundation/Foundation.h>
#import "InputCollector.h"  // from Ex4


// @class BaseExercise;
@protocol BaseProtocol <NSObject>

- (void) execute;

@end


@interface BaseExercise : NSObject<BaseProtocol>

- (void) execute;

@end
