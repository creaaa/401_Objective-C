
#import "Player.h"

@implementation Player


- (instancetype) initWithName: (NSString*) name {
    
    self = [super init];
    
    if (self) {
        _name          = name;
        _gameOver      = NO;
        _currentSquare = 0;
        _gameLogic     = @{ @1:@23, @2:@45, @3:@87, @4:@46, @5:@77, @6:@99 };
    }
    
    return self;
}

-(void) roll {
    
    // 今回出たサイコロの目
    int diceValue = arc4random_uniform(6) + 1;
    
    _currentSquare += diceValue;
    
    
    // for (NSNumber* key in _gameLogic) {
        
        NSNumber* cs = [NSNumber numberWithInteger:_currentSquare];
        
         for (NSNumber* key in _gameLogic) {
             
             if ([key isEqualToNumber: cs]) {

                 NSNumber* n = _gameLogic[key];
                 
                 // jump
                 
                 int pastSquare = _currentSquare;
                 
                 _currentSquare = [n intValue];
                 
                 if (pastSquare < _currentSquare) {
                    printf("Stairway to heaven!\n");
                 } else {
                    printf("down by ssnake's curse...\n");
                 }
                 
                 printf("Moved from %d to %d\n", pastSquare, _currentSquare);
                 
                 break;
             }
         }
    // }
    
    [self output:diceValue];
    
    
    // judge it's game over
    if (_currentSquare >= 100) {
        _gameOver = YES;
    }
    
    
}

-(void) output: (int) dv {
    NSLog(@"%@ rolled a %d",   _name, dv);
    NSLog(@"%@ randed on %ld", _name, (long)_currentSquare);
}

@end












