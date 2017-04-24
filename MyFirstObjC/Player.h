
#import <Foundation/Foundation.h>

@interface Player : NSObject

@property Boolean       gameOver;
@property NSString*     name;
@property int           currentSquare;
@property NSDictionary* gameLogic;


- (instancetype) initWithName: (NSString*) name;

-(void) roll;
-(void) output: (int) dv;

@end
