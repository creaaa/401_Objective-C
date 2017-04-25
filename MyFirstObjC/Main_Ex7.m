
#import "Main_Ex7.h"

@implementation Main_Ex7

- (void) execute {
        
    @autoreleasepool {

        // Doctor* dr_Foo  = [Doctor new];
        Doctor* dr_Bob  = [[Doctor alloc] initWithName:@"Bob" withSpecialization:@"Surgeon"];

        // Patient* fuga   = [Patient new];
        Patient* taro   = [[Patient alloc] initWithId:1 withName:@"taro" withAge:38 withDiseaseName: @"injure"  withHasCard:true];
        
        Patient* mika   = [[Patient alloc] initWithId:1 withName:@"mika" withAge:62 withDiseaseName: @"Cold" withHasCard:false];

        // Prescription* pr1 = [[Prescription alloc] initWithName:@"Serious Problem" withPatient: taro];

        PrescriptionDatabase* db = [PrescriptionDatabase sharedManager];

        InputCollector* prompter = [InputCollector new];
        NSString* userInput;


        while (true) {

            userInput = [prompter inputForPrompt:@"Command?(accept/request)"];

            if ([userInput isEqualToString:@"accept"]) {
                [dr_Bob acceptPatient: taro];
                
            } else if ([userInput isEqualToString:@"request"]) {
                
                Prescription* pres = [dr_Bob requestPrescription: taro];
                
                if(pres != nil) {
                    NSLog(@"%@", db);
                    NSLog(@"Prescription: %@", pres);
                }
            }
        }
    }
}

@end
