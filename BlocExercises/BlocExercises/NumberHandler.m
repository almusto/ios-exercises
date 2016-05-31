//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler


- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {

    //NSInteger originalValue = [number integerValue];
    //return @(originalValue);
    
    NSInteger doub = [number intValue]*2;
    
    
    return @(doub);

}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    NSMutableArray *numbers = [NSMutableArray new];
    NSInteger lowNumber = MIN(number, otherNumber);
    NSInteger highNumber = MAX(number, otherNumber);

    for (NSInteger count = lowNumber; count <= highNumber; count++) {
        [numbers addObject:@(count)];
    }
    return numbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSInteger lowest = NSIntegerMax;
    
    for (NSNumber *number in arrayOfNumbers) {
        NSInteger maybeLowest = [number intValue];
        if (maybeLowest <= lowest){
            lowest = maybeLowest;
        }
    }
    return lowest;
}

@end
