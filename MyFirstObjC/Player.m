
#import "Player.h"

@implementation Player


- (instancetype) initWithName: (NSString*) name {
    
    self = [super init];
    
    if (self) {
        _name          = name;
        _gameOver      = NO;
        _currentSquare = 0;
        _gameLogic     = @{ @4:@14, @9:@31,  @20:@38, @28:@84, @40:@59, @51:@67, @63:@81, // ladder
                            @17:@7, @64:@60, @89:@26, @95:@73, @99:@78 };                 // sneak
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
                    printf("down by snake's curse...\n");
                 }
                 
                 printf("Moved from %d to %d\n", pastSquare, _currentSquare);
                 
                 
                 [NSDictionary dictionary];
                 
                 break;
                 
             }
         }
    // }
    
    [self output:diceValue];
    
    
    // judge it's game over
    if (_currentSquare >= 100) {
        printf("Congrats! Reached to the goal! Thanks for playing.\n");
        _gameOver = YES;
    }
    
}

-(void) output: (int) dv {
    NSLog(@"%@ rolled a %d",   _name, dv);
    NSLog(@"%@ randed on %ld", _name, (long)_currentSquare);
}


-(NSString*) score {
    
    NSString* result;
    
    result = [NSString stringWithFormat:@"%@: %d, ", _name, _currentSquare];

    return result;
}

@end


