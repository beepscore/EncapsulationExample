//
//  KrustyKrabEmployee.h
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KrustyKrabEmployee : NSObject
{
    #pragma mark Instance variables
    //  KrustyKrabEmployee object state is held in instance variables
    
    // default scope is @protected, and so will be inherited by subclasses
    // instance variable with @public scope can be accessed by other classes
    // In Objective-C, accessor methods are much more common than public ivars
    // Reference http://developer.apple.com/mac/library/documentation/cocoa/conceptual/objectivec/Articles/ocDefiningClasses.html
    
    // @protected is default
    // krabbyPattySecretFormula has no accessor (getter) method,
    // and is private to the KrustyKrabEmployee class
    NSString* krabbyPattySecretFormula;
    
    NSString* chumBucketLocation;
    
    @public
    // pickleColor is a KrustyKrabEmployee public instance variable, accessible by other classes
    // Access the public property using pointer operator '->'
        NSString* pickleColor;
}

#pragma mark Properties
// properties have accessor methods
// chumBucketLocation is a KrustyKrabEmployee property, accessible by other classes
@property (nonatomic, retain) NSString *chumBucketLocation;

- (id)init;

@end
