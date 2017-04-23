
#import "GameController.h"
#import "Dice.h"

@implementation GameController


- (instancetype)init {
    
    self = [super init];
    if(self) {
        _dices = [[NSMutableArray alloc] init];
        _heldDiceIndices = [[NSMutableArray alloc] init];
        
        for (int i=0; i<5; i++) {
            Dice* dice = [Dice new];
            [_dices addObject: dice];
        }
        
    }
    
    return self;
}



- (void) holdDie: (int) idx {
    
}

- (void) resetDice {
    
}

- (void) printDiceState {
    NSLog(@"%@ %@ %@ %@ %@", _dices[0], _dices[1], _dices[2], _dices[3], _dices[4]);
}

- (void) printCurrentScore {
    
}


@end
