
#import "NSString+NSString.h"

@implementation NSString (NSString)


- (Boolean) judgeVowel: (NSInteger) idx {
    
    NSString* cc = [self substringWithRange:NSMakeRange(idx, 1)]; // i番目から1文字ぶん
    NSString* c  = [cc lowercaseString];
    NSArray* vowels = @[@"a", @"e", @"i", @"o", @"u"];
    
    for (NSString* vowel in vowels) {
        if ([c isEqualToString: vowel]) {
            return true;
        }
    }
    
    return false;
    
}


//- (Boolean) judgeConsonant: (NSInteger) idx {
//
//    NSString* cc = [self substringWithRange:NSMakeRange(idx, 1)]; // i番目から1文字ぶん
//    NSString* c  = [cc lowercaseString];
//
//    // printf("%s\n", [c UTF8String]);
//
//    
//    // B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, X, Z, and usually W and Y.
//    if (
//        [c isEqualToString:@"b"] ||
//        [c isEqualToString:@"c"] ||
//        [c isEqualToString:@"d"] ||
//        [c isEqualToString:@"f"] ||
//        [c isEqualToString:@"g"] ||
//        [c isEqualToString:@"h"] ||
//        [c isEqualToString:@"j"] ||
//        [c isEqualToString:@"k"] ||
//        [c isEqualToString:@"l"] ||
//        [c isEqualToString:@"m"] ||
//        [c isEqualToString:@"n"] ||
//        [c isEqualToString:@"p"] ||
//        [c isEqualToString:@"q"] ||
//        [c isEqualToString:@"r"] ||
//        [c isEqualToString:@"s"] ||
//        [c isEqualToString:@"t"] ||
//        [c isEqualToString:@"v"] ||
//        [c isEqualToString:@"w"] ||
//        [c isEqualToString:@"x"] ||
//        [c isEqualToString:@"y"] ||
//        [c isEqualToString:@"z"]
//        ) {
//        return true;
//    }
//    
//    return false;
//    
//}


- (NSString *)stringByPigLatinization {
    
    // NSInteger len   = [self length];
    NSInteger range = 1;  // 「何文字ぶん」

    NSString* firstHalf;

    NSString* c = [self substringWithRange:NSMakeRange(0, range)]; // i番目から1文字ぶん

    
    for (int i=0; i<self.length; i++) {

        if([c judgeVowel: range-1]) {
            firstHalf = [self substringWithRange:NSMakeRange(0, range-1)];
            break;
        } else {
            range += 1;
            continue;
        }
        
    }
    
    if (firstHalf == NULL) {
        NSString* s = [self substringWithRange:NSMakeRange(0, self.length)];
        return [NSString stringWithFormat:@"%@ay", s];
    }
    
    NSString* lastHalf = [self substringFromIndex: range-1];

    return [NSString stringWithFormat:@"%@%@ay", lastHalf, firstHalf];

}

@end
