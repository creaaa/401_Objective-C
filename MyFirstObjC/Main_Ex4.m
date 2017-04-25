
#import "Main_Ex4.h"

@implementation Main_Ex4

- (void) execute {

    
    @autoreleasepool {

        ContactList*    contactList    = [ContactList new];
        InputCollector* inputCollector = [InputCollector new];
        NSString*       inputFromUser;
        NSArray*        inputInfo;


        while (true) {

            inputFromUser = [inputCollector inputForPrompt: @"What would you like to do next?\n\nnew - Create a new contact\nlist - List all contacts\nshow - Designate id then show info\nfind - Designate term(substring) then show all datas matched\nphone - Designate id then add phone info\nhistory - Show past 3 command\nquit - Exit Application\n\n>"];

            inputInfo = [inputFromUser componentsSeparatedByString:@" "];

            if ([inputInfo[0] isEqualToString:@"new"]) {

                Boolean isDuplicatedEmail = false;

                NSString* email = [inputCollector inputForPrompt: @"what's an email?"];

                // for bonus 3: Prevent duplicate entries
                for (Contact* person in contactList.contactAry) {

                    if ([person.email isEqualToString: email]) {
                        printf("the contact already exists and cannot be created\n");
                        isDuplicatedEmail = true;
                        break;
                    }
                }

                if (isDuplicatedEmail) { continue; }

                NSString* name  = [inputCollector inputForPrompt: @"what's a name?"];

                Contact* newContact = [[Contact alloc] initWithName:name withEmail: email];

                [contactList addContact:newContact];

                [inputCollector.pastCommandAry addObject:@"new"];

            } else if ([inputInfo[0] isEqualToString:@"list"]) {

                for (int i=0; i < contactList.contactAry.count; i++) {
                    NSLog(@"%@", contactList.contactAry[i]);
                }

                [inputCollector.pastCommandAry addObject:@"list"];

            } else if ([inputInfo[0] isEqualToString:@"quit"]) {
                printf("Adieu.\n");
                break;

                // bonus
            } else if ([inputInfo[0] isEqualToString:@"show"]) {

                [inputCollector.pastCommandAry addObject:@"show"];

                [contactList show:[inputInfo[1] intValue]];


            } else if ([inputInfo[0] isEqualToString:@"find"]) {

                [inputCollector.pastCommandAry addObject:@"find"];

                [contactList find: inputInfo[1]];

            } else if ([inputInfo[0] isEqualToString:@"phone"]) {

                [contactList addPhonesInfo: [inputInfo[1] intValue]];

            } else if ([inputInfo[0] isEqualToString:@"history"]) {

                int i=0;
                NSInteger idx = inputCollector.pastCommandAry.count-1;

                while (i<3) {

                    if (idx < 0) {
                        break;
                    }

                    printf("%s\n", [inputCollector.pastCommandAry[idx] UTF8String]);
                    
                    idx--; i++;
                    
                }
                
                [inputCollector.pastCommandAry addObject:@"history"];
                
            }
        }
    }
}

@end
