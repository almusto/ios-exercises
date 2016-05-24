//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    
    NSArray *stringArray = [characterString componentsSeparatedByString:@";"];
    
    return stringArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
   
    
    NSString *arrayToString = [characterArray componentsJoinedByString:@";"];
    
    return arrayToString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *charCopy = [characterArray mutableCopy];
   
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [charCopy sortUsingDescriptors:@[sort]];
    
    return charCopy;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {

    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS 'Worf'"];
    NSMutableArray *charCopy = [characterArray mutableCopy];
   [charCopy filterUsingPredicate:containsWorf];
    
    return (charCopy.count> 0);

//    for (NSString *string in characterArray) {
//        NSRange range = [string rangeOfString:@"Worf"];
//        if (range.location != NSNotFound) {
//            return YES;
//        }
//    }
//    return NO;
}

@end
