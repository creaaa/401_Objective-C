
#import "Player.h"
#import "PlayerManager.h"
#import "InputCollector.h"  // from ex4


@implementation PlayerManager

- (instancetype) init {
    
    self = [super init];
    
    if (self) {
        _players = [[NSMutableArray alloc] init];
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


@end





