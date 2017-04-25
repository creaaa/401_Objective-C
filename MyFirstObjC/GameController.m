
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
        
        _heldDiceIndices[0] = @0;
        _heldDiceIndices[1] = @0;
        _heldDiceIndices[2] = @0;
        _heldDiceIndices[3] = @0;
        _heldDiceIndices[4] = @0;
        
    }
    
    return self;
}



- (void) rollDices {
    
    for (int i=0; i<5; i++) {
        if ([_heldDiceIndices[i]  isEqual: @0]) {  // unhold
            [_dices[i] roll];
        }
    }
    
    [self printDiceState];
    [self printCurrentScore];
    
}

- (void) holdDie: (int) idx {
    _heldDiceIndices[idx-1] = @1;
    
    [self printDiceState];
    [self printCurrentScore];
    
}

- (void) resetDice {
    _heldDiceIndices[0] = @0;
    _heldDiceIndices[1] = @0;
    _heldDiceIndices[2] = @0;
    _heldDiceIndices[3] = @0;
    _heldDiceIndices[4] = @0;
    
    [self printDiceState];
    [self printCurrentScore];
}

- (void) printDiceState {
//    NSLog(@"%@ %@ %@ %@ %@", _dices[0], _dices[1], _dices[2], _dices[3], _dices[4]);
    
    NSString* d1stateLeft  = [_heldDiceIndices[0]  isEqual: @1] ? @"[" : @"";
    NSString* d1stateRight = [_heldDiceIndices[0]  isEqual: @1] ? @"]" : @"";
    NSString* d2stateLeft  = [_heldDiceIndices[1]  isEqual: @1] ? @"[" : @"";
    NSString* d2stateRight = [_heldDiceIndices[1]  isEqual: @1] ? @"]" : @"";
    NSString* d3stateLeft  = [_heldDiceIndices[2]  isEqual: @1] ? @"[" : @"";
    NSString* d3stateRight = [_heldDiceIndices[2]  isEqual: @1] ? @"]" : @"";
    NSString* d4stateLeft  = [_heldDiceIndices[3]  isEqual: @1] ? @"[" : @"";
    NSString* d4stateRight = [_heldDiceIndices[3]  isEqual: @1] ? @"]" : @"";
    NSString* d5stateLeft  = [_heldDiceIndices[4]  isEqual: @1] ? @"[" : @"";
    NSString* d5stateRight = [_heldDiceIndices[4]  isEqual: @1] ? @"]" : @"";
    
    NSLog(@"%@%@%@ %@%@%@ %@%@%@ %@%@%@ %@%@%@", d1stateLeft, _dices[0], d1stateRight, d2stateLeft, _dices[1], d2stateRight, d3stateLeft, _dices[2], d3stateRight, d4stateLeft, _dices[3], d4stateRight, d5stateLeft, _dices[4], d5stateRight);
    
}

- (void) printCurrentScore {
    
    int sum = 0;
    
    for (int i=0; i<5; i++) {
        
        Dice* d = _dices[i];
        
        if (d.value == 3) {
            // nothing
        } else {
            sum += d.value;
        }
    }
    
    printf("Current Score: %d\n", sum);
    
}


@end
