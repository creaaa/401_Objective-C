

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
                

            } else if ([inputFromUser isEqualToString:@"list"]) {

                for (int i=0; i < contactList.contactAry.count; i++) {
                    NSLog(@"%@", contactList.contactAry[i]);
                }

            } else if ([inputFromUser isEqualToString:@"quit"]) {
                printf("Adieu.\n");
                break;
                
            // bonus
            } else if ([inputFromUser isEqualToString:@"show"]) {
                
            } else if ([inputFromUser isEqualToString:@"find"]) {
                
            } else if ([inputFromUser isEqualToString:@"history"]) {
                
            }
        }
    }
}
