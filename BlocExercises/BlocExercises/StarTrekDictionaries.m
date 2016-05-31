//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
   
    
    return [characterDictionary valueForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *favDrink = [[NSMutableArray alloc]init];
    
    for (NSDictionary *dict in charactersArray) {
        [favDrink addObject:dict[@"favorite drink"]];
    }
    
    
    return favDrink;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *qoute = [characterDictionary mutableCopy];
    
    [qoute setObject:@"This is a quote" forKey:@"quote"];
    
    return qoute;
}

@end
