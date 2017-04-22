
#import <Foundation/Foundation.h>

#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    
    
    
    @autoreleasepool {
        
        ContactList*    contactList    = [ContactList new];
        InputCollector* inputCollector = [InputCollector new];
        
        NSString* command;
        
        
        while (true) {
            
            command = [inputCollector inputForPrompt: @"What would you like to do next?\n\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n>"];
            
            if ([command isEqualToString:@"new"]) {
                printf("new!\n");
            } else if ([command isEqualToString:@"list"]) {
                printf("list!\n");
            } else if ([command isEqualToString:@"quit"]) {
                printf("quit!\n");
            }

            
            
        }
        
        
        
        
    }
}
