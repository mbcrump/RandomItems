//
//  main.m
//  RandomItems
//
//  Created by Michael Crump on 4/28/14.
//  Copyright (c) 2014 Michael Crump. All rights reserved.
//

//#import <Foundation/Foundation.h>

@import Foundation;
#import "BNRItem.h"
//Gold Challenge
//#import "BNRContainer.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem * item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        //Bronze
        
        //NSString *eleventh = items[10];
        //NSLog(@"%@", eleventh);
        
        //Silver
        //BNRItem *anotherInit = [[BNRItem alloc]initWithItemName:@"Silver" serialNumber:@"ABC"];
        //NSLog(@"%@", anotherInit);
        
        //Gold
        // Create one BNRContainer object
        //        BNRContainer *myContainer = [[BNRContainer alloc] initWithItemName:@"One Container" valueInDollars:100 serialNumber:@"A1"];
        //
        //        // Fill container 1 with random items
        //        for (int i = 0; i < 2; i++) {
        //            BNRItem *item = [BNRItem randomItem];
        //            [myContainer addItems:item];
        //        }
        //
        //        // Create another BNRContainer object
        //        BNRContainer *myContainer2 = [[BNRContainer alloc] initWithItemName:@"My Container 2" valueInDollars:15 serialNumber:@"Cont 2"];
        //
        //        // Fill container 2 with random items
        //        for (int i = 0; i < 2; i++) {
        //            BNRItem *item = [BNRItem randomItem];
        //            [myContainer2 addItems:item];
        //        }
        //
        //        // Create a "large" container and add the first containers to it
        //        BNRContainer *largerContainer = [[BNRContainer alloc] initWithItemName:@"Large Container!" valueInDollars:100 serialNumber:@"Cont 3"];
        //        [largerContainer addItems:myContainer];
        //        [largerContainer addItems:myContainer2];
        //
        //
        //        // Create a "super" container with the "large" container and random items
        //        BNRContainer *superContainer = [[BNRContainer alloc] initWithItemName:@"Super Container!"];
        //        [superContainer addItems:largerContainer];
        //        for (int i = 0; i < 2; i++) {
        //            BNRItem *item = [BNRItem randomItem];
        //            [superContainer addItems:item];
        //        }
        //
        //        // Print description of the super container
        //        NSLog(@"%@", superContainer);
        //
        //        // Validation that super container responds to BNRItem methods
        //        NSLog(@"%@ with serial number (%@) is worth %d and was created on %@", superContainer.itemName, superContainer.serialNumber, superContainer.valueInDollars, superContainer.dateCreated);
        
        items = nil;
    }
    return 0;
}

