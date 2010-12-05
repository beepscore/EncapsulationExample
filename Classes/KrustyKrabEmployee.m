//
//  KrustyKrabEmployee.m
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "KrustyKrabEmployee.h"


@implementation KrustyKrabEmployee

#pragma mark Properties
// synthesize generates a getter and setter accessor method, part of the object's behavior
@synthesize chumBucketLocation;


- (id)init
{
    self = [super init];
    if (self) 
    {
        krabbyPattySecretFormula = @"love";
        chumBucketLocation = @"acrossTheStreet";
        pickleColor = @"green";
    }
    return self;
}


#pragma mark Memory management
- (void)dealloc
{    
    [chumBucketLocation release];
    
    [super dealloc];
}

@end
