//
//  main.m
//  RandomPossessions
//
//  Created by Alexander Auritt on 1/10/13.
//  Copyright (c) 2013 Alexander Auritt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
//        
//        [items insertObject:@"Zero" atIndex:0];
        
//        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
//        NSLog(@"%@", p);
        
        for (int i = 0; i < 2; i++) {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        BNRItem *newbie = [[BNRItem alloc] initWithItemName:@"Smelly Cat" serialNumber:@"666"];
        [items addObject: newbie];

        for (int i = 0; i < [items count]; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        items = nil;
    }
    return 0;
}

