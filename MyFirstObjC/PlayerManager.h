
#import <Foundation/Foundation.h>
#import "Player.h"


@interface PlayerManager : NSObject

@property NSMutableArray* players;
@property NSInteger       currentIndex;

- (instancetype) init;

- (void) decidePlayersNo;
- (void) createPlayers: (int) participantNo;

- (Player*) currentPlayer;


-(void) roll;
-(void) output: (int) dv;
-(NSString*) score;

-(int)  quit;
-(void) restartGame;
-(void) judgeGameEnd;


@end
