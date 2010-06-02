//
//  EncapsulationExampleAppDelegate.h
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EncapsulationExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

