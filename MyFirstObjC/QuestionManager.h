
#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray* questions;
@property double          totalSum;

- (instancetype)init;

- (void)      appendQuestion: (Question*) newQuestion;
- (NSString*) timeOutput;

@end
