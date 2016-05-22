//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
   NSMutableString *numbers = [[NSMutableString alloc]init];
    NSInteger lowNumber;
    NSInteger highNumber;
    
    //NSInteger lowNumber = MIN(number, otherNumber);
    //NSInteger highNumber = MAX(number, otherNumber);
    
    if (number < otherNumber){
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        highNumber = number;
        lowNumber = otherNumber;
    }
        for (NSInteger countUp = lowNumber; countUp <= highNumber ; countUp++) {
            [numbers appendString:[NSString stringWithFormat:@"%ld", (long)countUp]];
        }
        return numbers;
}
    
@end
