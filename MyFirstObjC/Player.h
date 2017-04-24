
#import <Foundation/Foundation.h>

@interface Player : NSObject

@property Boolean       gameOver;
@property int           currentSquare;
@property NSDictionary* gameLogic;

- (instancetype) init;

-(void) roll;
-(void) output: (int) dv;

@end
