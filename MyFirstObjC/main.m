
#import <Foundation/Foundation.h>

#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    
    
    
    @autoreleasepool {
        
        ContactList*    contactList    = [ContactList new];
        InputCollector* inputCollector = [InputCollector new];
        
        NSString* inputFromUser;
        
        Contact* c;
        
        while (true) {
            
            inputFromUser = [inputCollector inputForPrompt: @"What would you like to do next?\n\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n>"];
            
            if ([inputFromUser isEqualToString:@"new"]) {
                
                printf("new!\n");
                
                NSString* name  = [inputCollector inputForPrompt: @"what's name"];
                NSString* email = [inputCollector inputForPrompt: @"what's email"];
                
                c = [[Contact alloc] initWithName:name withEmail: email];
                
                NSLog(@"%@", c);
                
            } else if ([inputFromUser isEqualToString:@"list"]) {
                printf("list!\n");
            } else if ([inputFromUser isEqualToString:@"quit"]) {
                printf("Adieu.\n");
                break;
            }

            
            
        }
        
        
        
        
    }
}
