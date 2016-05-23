//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    
    NSString *item;
    NSString *getOut = @"get out of my store";
    NSString *have = @"have ";
    
    
    
    
    if (dollars <= 4) {
        return getOut;
    } else if (dollars == 5) {
        item = @"some gum";
        return [have stringByAppendingString:item];
    } else if (dollars >= 6 && dollars < 1000) {
        item = @"an apple";
        return [have stringByAppendingString:item];
    } else if (dollars >= 1000 && dollars < 1000000000) {
        item = @"an Apple computer";
        return [have stringByAppendingString:item];
    } else {
        item = @"The Big Apple";
        return [have stringByAppendingString:item];
    }
    
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = (self.getsDiscount) ? 18 : 24;
    
  
    
    return cost;
}

@end
