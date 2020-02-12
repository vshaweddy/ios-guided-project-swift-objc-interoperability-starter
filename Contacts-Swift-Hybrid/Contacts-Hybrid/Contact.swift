//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Vici Shaweddy on 2/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// struct from Swift doesn't work in Objective-C
// Must use a class om Swift if we want to use it from Objective-C
// Model controller is going to be in Objective-C

//@objc(LSIContact) // rename our Swift class to LSIContact (Buggy with Objective-C forward class declaration)
// BUG: Going from Swift to Objective-C to Swift seems to cause problems with renaming the build symbol

@objc
class Contact: NSObject{
    @objc var name: String
    @objc var relationship: String?
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}

// 1. Use Swift classes
// 2. 
