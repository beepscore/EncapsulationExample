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
    [window makeKeyAndVisible];

    
    squidward = [[KrustyKrabEmployee alloc] init];
    
    // This warns: 'KrustyKrabEmployee' may not respond to '-krabbyPattySecretFormula'
    // NSLog(@"[squidward krabbyPattySecretFormula] = %@", [squidward krabbyPattySecretFormula]);
    
    // Attempting to access the instance variable using pointer operator '->' gives error:
    // Instance variable 'krabbyPattySecretFormula' is declared protected
    // NSLog(@"squidward->krabbyPattySecretFormula = %@", squidward->krabbyPattySecretFormula);
    
    NSLog(@"[squidward chumBucketLocation] = %@", [squidward chumBucketLocation]);  
    
    NSLog(@"squidward->pickleColor = %@", squidward->pickleColor);  

    
    spongeBob = [[SpongeBob alloc] init];
    NSLog(@"[spongeBob chumBucketLocation] = %@", [spongeBob chumBucketLocation]);
	[spongeBob sayFormula];


    return YES;
}


#pragma mark Memory management
- (void)dealloc {
    [window release];
    [squidward release];
    [spongeBob release];
    
    [super dealloc];
}

@end
