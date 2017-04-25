
#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;


- (instancetype) generateBox:    (float) height withWidth: (float) width withLength: (float) length;
- (instancetype) initWithHeight: (float) height withWidth: (float) width WithLength: (float) length;

- (float) calc;
- (float) howManyTimes: (Box*) anotherBox;

@end
