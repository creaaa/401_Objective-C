
#import "NSString+NSString.h"

@implementation NSString (NSString)


- (Boolean) judgeVowel {
    
    NSString* c     = [self lowercaseString];
    NSArray* vowels = @[@"a", @"e", @"i", @"o", @"u"];
    
    for (NSString* vowel in vowels) {
        if ([c isEqualToString: vowel]) {
            return true;
        }
    }
    
    return false;
}
    
    
- (NSString *)stringByPigLatinization {
    

    NSInteger range = 1;  // 「何文字ぶん」
    NSString* firstHalf;

    
    for (int i=0; i<self.length; i++) {
        
        NSString* c = [self substringWithRange:NSMakeRange(i, 1)];

        if([c judgeVowel]) {
            firstHalf = [self substringWithRange: NSMakeRange(0, range-1)];
            break;
        } else { // 子音なら
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
