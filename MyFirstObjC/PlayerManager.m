
#import "Player.h"
#import "PlayerManager.h"
#import "InputCollector.h"  // from ex4


@implementation PlayerManager

- (instancetype) init {
    
    self = [super init];
    
    if (self) {
        _players      = [[NSMutableArray alloc] init];
        _currentIndex = 0l;
    }
    
    return self;
}


- (void) decidePlayersNo {
    
    InputCollector* prompter = [InputCollector new];
    NSString* userInput;
    
    while (true) {

        userInput = [prompter inputForPrompt:@"How many player? (input number)"];
        int playersNo = [userInput intValue];

        if(playersNo > 0) {
            [self createPlayers: playersNo];
            printf("Accepted. %d player(s) participated in!\n", playersNo);
            printf("\n");
            break;
        } else {
            printf("Invalid number. Try again.\n");
        }
        
    }
    
}


- (void) createPlayers: (int) participantNo {
    
    for (int i=0; i<participantNo; i++) {
        
        NSString* playerName = [NSString stringWithFormat:@"Player%d", i+1];
        Player*   player = [[Player alloc] initWithName:playerName];
        
        [_players addObject:player];
        
    }
    
}


- (Player*) currentPlayer {
    
    int idx = (int)_currentIndex;
    
    return _players[idx];
    
}


-(void) roll {
   
    Player* p = [self currentPlayer];
    
    [p roll];
    
    
    if (_currentIndex+1 >= _players.count) {
        _currentIndex = 0;
    } else {
        _currentIndex += 1;
    }
    
}

-(void) output: (int) dv {
    
    Player* p = [self currentPlayer];
    
    [p output: dv];
    
}

-(int) quit {
    
    InputCollector* prompter = [InputCollector new];
    NSString* userInput;
    
    while (true) {
        userInput = [prompter inputForPrompt:@"Really quit? (quit / restart)"];
        if ([userInput isEqualToString:@"quit"] || [userInput isEqualToString:@"restart"] ) {
            break;
        } else {
            printf("Invalid command. Try again.\n");
        }
    }

    if ([userInput isEqualToString:@"quit"]) {
        
        return 0; // means "quit"
        
    }
    
    // else if ([userInput isEqualToString:@"restart"]) {
    return 1;  // // means "erstart"
    // }
    
}


-(void) restartGame {
    
    // re-initialize players and game condition
    _players      = [[NSMutableArray alloc] init];
    _currentIndex = 0l;
    
    // decide players
    [self decidePlayersNo];
    
}


-(void) judgeGameEnd {
    
    for (int i=0; i < _players.count; i++) {
        
        if( ((Player*)_players[i]).currentSquare >= 100 ) {
            printf("%s reached to the GOAL! Thanks for playing!\n", [((Player*)_players[i]).name UTF8String]);
            printf("\n");
            
            exit(0);
        }
    }
}


@end





