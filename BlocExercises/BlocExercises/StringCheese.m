//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    
    
    NSString *favCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return favCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        
        
       return   [cheeseName stringByReplacingCharactersInRange:
                 [[cheeseName lowercaseString] rangeOfString:@" cheese"]
                                                                     withString:@""];
    
        //ANOTHER ALTENRATIVE BELOW 
        //return [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@""];
        
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        
        return cheeseName;
        
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        return [NSString stringWithFormat:@"1 cheese"];
        
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        
        return [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
