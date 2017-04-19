//
//#import <Foundation/Foundation.h>
//
//// NSLog(@"Hello, World!");
////
////        char c = 'g';
////        int i = 1;
////        unsigned int j = 2;
////        short int si = 1;  // 2byte
////        long  int li = 1;
////        long long ll = 1;
////
////        float  f = 10.1f;
////        double d = 10.21;
////
////        BOOL b = YES; // NO;
////        bool bb = true;  // なんとこれでも動く
////        BOOL h = false;   // これでもいいよ
////
////        NSLog(@"%i", si); // i = d みたいなもの
////        NSLog(@"%e", d);  // 指数表現で出力
//
//
//// Hello, CornerStone!
//NSString* message = @"Hello CornerStone";
//NSString* result  = [message uppercaseString];
//
//
//NSString* newStr  = [[NSString alloc] init];
//newStr            = @"WHATSUP";
//
//NSLog(@"%@", newStr); // %@ はオブジェクトの出力。これは覚えとけ
//
//
////        NSDate* current = [NSDate date];
////        NSLog(@"%@", current);
//
//NSDate* cDate = [[NSDate alloc] init];
//cDate         = [NSDate date];
//
//NSLog(@"%@", cDate);
//
//
//// メソッド呼び出し
//// [result stringByAppendingString:@"as" with: @"sd"]; // こんなかんじ
//
//
//// NSMutableString* mutStr = @"abc";  // これエラー
//NSMutableString *mutStr = [NSMutableString string]; // これはOK
//
//[mutStr appendString:@"def"];
//
//NSLog(@"%@", mutStr);
