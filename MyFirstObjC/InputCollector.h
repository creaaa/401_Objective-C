
#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray* pastCommandAry;


-(instancetype) init;

- (NSString *) inputForPrompt: (NSString *) promptString;

@end
