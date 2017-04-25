

#import <Foundation/Foundation.h>

#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"


int main(int argc, const char * argv[]) {

    @autoreleasepool {

        ContactList*    contactList    = [ContactList new];
        InputCollector* inputCollector = [InputCollector new];
        NSString* inputFromUser;

        
        while (true) {

            inputFromUser = [inputCollector inputForPrompt: @"What would you like to do next?\n\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n>"];

            if ([inputFromUser isEqualToString:@"new"]) {

                NSString* name  = [inputCollector inputForPrompt: @"what's a name?"];
                NSString* email = [inputCollector inputForPrompt: @"what's an email?"];

                Contact* newContact = [[Contact alloc] initWithName:name withEmail: email];

                [contactList addContact:newContact];
                
                [inputCollector.pastCommandAry addObject:@"new"];

            } else if ([inputFromUser isEqualToString:@"list"]) {

                for (int i=0; i < contactList.contactAry.count; i++) {
                    NSLog(@"%@", contactList.contactAry[i]);
                }
                
                [inputCollector.pastCommandAry addObject:@"list"];

            } else if ([inputFromUser isEqualToString:@"quit"]) {
                printf("Adieu.\n");
                break;
                
            // bonus
            } else if ([inputFromUser isEqualToString:@"show"]) {
                
                [inputCollector.pastCommandAry addObject:@"show"];
                
            } else if ([inputFromUser isEqualToString:@"find"]) {
                
                [inputCollector.pastCommandAry addObject:@"find"];
                
            } else if ([inputFromUser isEqualToString:@"history"]) {
                
                int i=0;
                NSInteger idx = inputCollector.pastCommandAry.count-1;
                
                while (i<3) {
                    
                    if (idx < 0) {
                        break;
                    }
                    
                    printf("%s\n", [inputCollector.pastCommandAry[idx] UTF8String]);
                    
                    idx--;
                    i++;
                    
                }
                
                [inputCollector.pastCommandAry addObject:@"history"];
                
            }
        }
    }
}
