//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Alexander Auritt on 1/10/13.
//  Copyright (c) 2013 Alexander Auritt. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
-(id)init
{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

-(id)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
    }
    return self;
}

-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (void)setContainedItem:(BNRItem *)i
{
    containedItem = i;
    [i setContainer:self];
}

- (BNRItem *)containedItem
{
    return containedItem;
}

- (void)setContainer:(BNRItem *)i
{
    container = i;
}

- (BNRItem *)container
{
    return container;
}

+ (id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}

- (void)setItemName:(NSString *)str
{
    itemName = str;
}

- (NSString *)itemName
{
    return itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate*)dateCreated
{
    return dateCreated;
}

-(void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}
@end
