
#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray* players;


- (instancetype) init;

- (void) decidePlayersNo;
- (void) createPlayers: (int) participantNo;


@end
