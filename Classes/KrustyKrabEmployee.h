//
//  KrustyKrabEmployee.h
//  EncapsulationExample
//
//  Created by Steve Baker on 6/2/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//
//  ==========================================
//  Object state is held in instance variables
//  By default, instance variables are protected access and properties are public.
//  Ivars encapsulate data more than properties do.
//  One advantage of properties is using the getter and setter ensures consistent memory management.
//  References:
//  http://developer.apple.com/mac/library/documentation/cocoa/conceptual/objectivec/Articles/ocDefiningClasses.html
//  http://en.wikipedia.org/wiki/Encapsulation_%28object-oriented_programming%29

#import <Foundation/Foundation.h>

@interface KrustyKrabEmployee : NSObject
{
    #pragma mark Instance variables    
    
    @protected
    // protected ivars are private to the KrustyKrabEmployee class
    // default scope is @protected, and so will be inherited by subclasses
    NSString* chumBucketLocation;
    NSString* krabbyPattySecretFormula;    
    
    @public
    // public ivars can be accessed by other classes
    // Access the public property using pointer operator '->'
    // In Objective-C, accessor methods and properties are much more common than public ivars
    NSString* pickleColor;
}

#pragma mark Properties
// properties have accessor methods

// chumBucketLocation is a KrustyKrabEmployee property, accessible by other classes
@property (nonatomic, copy) NSString *chumBucketLocation;

- (id)init;

@end
