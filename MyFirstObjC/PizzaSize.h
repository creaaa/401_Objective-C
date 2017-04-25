
#import <Foundation/Foundation.h>

//@interface PizzaSize : NSObject

typedef NS_ENUM (NSInteger, PizzaSize) {
    Small  = 0,
    Medium,
    Large
};

// enumと定義と一緒に文字列定義をマクロで記述
#define MyTypeStrings @[@"Small", @"Medium", @"Large"]

//@end
