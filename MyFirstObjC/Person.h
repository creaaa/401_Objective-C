
#import <Foundation/Foundation.h>
#

@interface Person : NSObject


// 昔はこれ必要だった。今はいらん
//{
//    int _gender;
//    NSString* address;
//}
//- (int) gender;
//- (NSString*) address;


// インスタンスプロパティ
@property int age;
@property NSString* name;

// メソッド
- (void) print_name:  (NSString*) name;
- (void) print_name2: (NSString*) name withAge:(int) age;

+ (void) printSomething;


// イニシャライザ
- (instancetype)init;
- (instancetype)initWithName: (NSString*) name WithAge:(int) age;

@end
