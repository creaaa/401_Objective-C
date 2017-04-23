
#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray* dices;
@property NSMutableArray* heldDiceIndices;

- (instancetype)init;


- (void) holdDie: (int) idx;
- (void) resetDice;

- (void) printDiceState;
- (void) printCurrentScore;

@end
