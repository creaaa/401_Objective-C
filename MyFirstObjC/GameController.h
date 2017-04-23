
#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray* allDices;
@property NSMutableArray* heldDiceIdx;


- (void) holdDie: (int) idx;
- (void) resetDice;


- (void) printDiceState;
- (void) printCurrentScore;

@end
