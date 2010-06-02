//
//  SpongeBob.m
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "SpongeBob.h"


@implementation SpongeBob

// this method is similar to a getter accessor for krabbyPattySecretFormula 
-(void)sayFormula
{
    NSLog(@"SpongeBob says the krabbyPattySecretFormula is... %@", krabbyPattySecretFormula);
}
      
@end
