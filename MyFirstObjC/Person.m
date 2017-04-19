
#import "Person.h"

@implementation Person

- (void) print_name:(NSString*) name {
    NSLog(@"%@", name);
}

- (void) print_name2:(NSString*) name withAge:(int) age {
    NSLog(@"%@ %d", name, age);
}

+ (void)printSomething {
    printf("Hello, World!!\n");
}









- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"DEEEE";
        self.age = 10;
    }
    
    return self;
}


// ↑をやるなら、こっちのほうがシンプルや
//- (instancetype)init
//{
//    self = [self initWithName:@"" WithAge:0];
//    return self;
//}





- (instancetype)initWithName: (NSString*) name WithAge:(int) age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
    }
    
    return self;
}


@end
