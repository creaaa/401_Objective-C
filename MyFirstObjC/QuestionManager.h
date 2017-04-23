
#import <Foundation/Foundation.h>
#import "AdditionQuestion2.h"


@interface QuestionManager : NSObject

@property NSMutableArray* questions;
@property double          totalSum;

- (instancetype)init;

-(void)addQuestion:(AdditionQuestion2 *) newQuestion;
- (NSString*) timeOutput;

@end
