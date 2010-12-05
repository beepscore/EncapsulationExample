//
//  EncapsulationExampleAppDelegate.m
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "EncapsulationExampleAppDelegate.h"
#import "KrustyKrabEmployee.h"
#import "SpongeBob.h"

@implementation EncapsulationExampleAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    // Override point for customization after application launch
    
    squidward = [[KrustyKrabEmployee alloc] init];

    // KrustyKrabEmployee has a protected ivar chumBucketLocation.
    // chumBucketLocation has an accessor method, so this works:
    NSLog(@"[squidward chumBucketLocation] = %@", [squidward chumBucketLocation]);  

    // Typically ivars are protected and you must use an accessor method
    // However pickleColor ivar is public, so this works:
    NSLog(@"squidward->pickleColor = %@", squidward->pickleColor);      
    
    // KrustyKrabEmployee has a protected ivar krabbyPattySecretFormula.    
    // Attempting to access krabbyPattySecretFormula using pointer operator '->' fails with error:
    // Instance variable 'krabbyPattySecretFormula' is declared protected
    // NSLog(@"squidward->krabbyPattySecretFormula = %@", squidward->krabbyPattySecretFormula);

    // krabbyPattySecretFormula does not have an accessor method.
    // Attempting to access krabbyPattySecretFormula using accessor warns:
    // 'KrustyKrabEmployee' may not respond to '-krabbyPattySecretFormula'
    // NSLog(@"[squidward krabbyPattySecretFormula] = %@", [squidward krabbyPattySecretFormula]);
    
    
    spongeBob = [[SpongeBob alloc] init];
    NSLog(@"[spongeBob chumBucketLocation] = %@", [spongeBob chumBucketLocation]);
    // spongeBob can say the formula
	[spongeBob sayFormula];

    
    [window makeKeyAndVisible];
    return YES;
}


#pragma mark Memory management
- (void)dealloc
{
    [window release];
    [squidward release];
    [spongeBob release];
    
    [super dealloc];
}

@end
