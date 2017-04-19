//
//#import <Foundation/Foundation.h>
//
//
//int main(int argc, const char * argv[]) {
//    
//    @autoreleasepool {
//        
//        char inputChars[255];
//        
//        
//        while (true) {
//            
//            printf("Input Command No & target string: (e.g. 1 hello)\n");
//            fgets(inputChars, 255, stdin);
//            
//            
//            // variables to store input
//            NSString* inputString = [NSString stringWithUTF8String: inputChars];
//            NSArray* strAry = [inputString componentsSeparatedByString:@" "];
//            NSInteger commandNo = [strAry[0] intValue];  // return 0 if it can't cast to NSInteger
//            
//            
//            // invalid input check
//            if (commandNo == 0) {
//                printf("Invalid command number. Try again...\n");
//                continue;
//            } else if ([strAry count] < 2 || [strAry[1] isEqual: @"\n"]) {
//                printf("No target string. Try again.\n");
//                continue;
//            }
//            
//            
//            // variables to output result
//            NSString* result;    // for 1, 2, 6
//            NSInteger resultNo;  // for 3
//            
//            // for 4
//            NSString* newStr;
//            NSInteger count;
//            
//            // for 5
//            NSInteger ct = [strAry[1] length];
//            char lastC;
//            
//            
//            // execute command
//            switch (commandNo) {
//                    
//                case 1:
//                    result = [strAry[1] uppercaseString];
//                    NSLog(@"%@", result);
//                    break;
//                    
//                case 2:
//                    result = [strAry[1] lowercaseString];
//                    NSLog(@"%@", result);
//                    break;
//                    
//                case 3:
//                    resultNo = [strAry[1] intValue];
//                    NSLog(@"%ld", resultNo);
//                    break;
//                    
//                case 4:
//                    count = [strAry[1] length];
//                    // trim last \n
//                    newStr = [([strAry[1] substringToIndex:(count-1)]) stringByAppendingString:@", eh?"];
//                    NSLog(@"%@", newStr);
//                    break;
//                    
//                case 5:
//                    lastC = [strAry[1] characterAtIndex: ct-2];
//                    if (lastC == '!') {
//                        printf("Whoa, calm down!\n");
//                    } else if (lastC == '?') {
//                        printf("I don't know\n");
//                    }
//                    break;
//                    
//                case 6:
//                    result = [strAry[1] stringByReplacingOccurrencesOfString:@" " withString:@"-"];
//                    NSLog(@"%@", result);
//                    break;
//                    
//            } // switch
//        }  // while true
//    } // autoreleasepool
//    
//    return 0;
//    
//}
//
//
