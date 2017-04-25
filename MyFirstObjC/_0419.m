//
//#import <Foundation/Foundation.h>
//
//// 4/19 ヘッダファイルを使うにはこうね
//#import "Person.h"
//
//
//int main(int argc, const char * argv[]) {
//    
//    @autoreleasepool {
//        
//        Person* p1 = [[Person alloc] init];
//        
//        //      [p1 print_name: @"Hello"];
//        [p1 print_name2: @"Hello" withAge: 24];
//        
//        [p1 name];
//        [p1 age];
//        
//        // デフォルトで実装される
//        [p1 setName:@"FUGA"];
//        [p1 setAge:54];
//        
//        
//        // パラメータ付のイニシャライザ
//        Person* p2 = [[Person alloc] initWithName:@"fdf" WithAge:23];
//        NSLog(@"%@", [p2 name]);
//        
//        
//        NSString* st1 = [NSString stringWithFormat:@"My name is %@", @"Derrick"];
//        
//    } // autoreleasepool
//    
//    return 0;
//    
//}
