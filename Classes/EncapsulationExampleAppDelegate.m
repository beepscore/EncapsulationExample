//
//  EncapsulationExampleAppDelegate.m
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "EncapsulationExampleAppDelegate.h"

@implementation EncapsulationExampleAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
