//
//  BNRContainer.m
//  RandomItems
//
//  Created by Michael Crump on 5/4/14.
//  Copyright (c) 2014 Michael Crump. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer


// Add BNRItems or BNRContainers to the object array
- (void)addItems:(BNRItem *)item
{
    if (!_containerItems) {
        _containerItems = [[NSMutableArray alloc] init];
    }
    [_containerItems addObject:item];
}
// Override of valueInDollars
// BNRItems will return valueInDollars
// BNRContainers will call this method, recursively moving through containers
// until BNRItems are encountered and add those to X
// _valueInDollars also captures the container value itself
- (int)valueInDollars
{
    int x = 0;
    for (BNRItem *temp in _containerItems) {
        x = x + temp.valueInDollars;
    }
    x = x + _valueInDollars;
    return x;
}
// Override class description per book instructions
- (NSString *)description
{
    for (BNRItem *temp in _containerItems) {
        NSLog(@"%@", temp);
    }
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@: Worth %d",
                                   self.itemName,
                                   self.valueInDollars];
    return descriptionString;
}
@end
