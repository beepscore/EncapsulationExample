//
//  EncapsulationExampleAppDelegate.h
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KrustyKrabEmployee;
@class SpongeBob;

@interface EncapsulationExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    
    KrustyKrabEmployee* squidward;
    
    // SpongeBob is a subclass of KrustyKrabEmployee
    SpongeBob *spongeBob;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

