//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Vici Shaweddy on 2/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact; // forward declare the Swift class
//@class LSIContact;

NS_SWIFT_NAME(ContactsController)
@interface LSIContactController : NSObject

// lightweight generics
// nullability
// chaange names of classes
@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;
/*
 * nullable - optional in Swift (nil or value)
 [Contact]?
 * nonnul - not an optional (can never be nil)
 [Contact]
 * nil-resettable - UITextField.text = nil (Sets the text to "")
 [Contact]?
 * nil_unspecified - Default (implicity unwrapped optional)
 [Contact]!
 
 */

@end

