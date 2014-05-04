//
//  BNRContainer.h
//  RandomItems
//
//  Created by Michael Crump on 5/4/14.
//  Copyright (c) 2014 Michael Crump. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_containerItems;
}

-(void)addItems:(BNRItem *)item;

@end
