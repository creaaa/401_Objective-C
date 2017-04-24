
#import <Foundation/Foundation.h>

//@interface PizzaSize : NSObject

typedef NS_ENUM (NSInteger, PizzaSize) {
    Small = 0,
    Medium = 1,
    Large = 2
};

// enumと定義と一緒に文字列定義をマクロで記述
#define MyTypeStrings @[@"Small", @"Medium", @"Large"]

//@end
