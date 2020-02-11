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

class Contact {
    var name: String
    var relationship: String?
    
    init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
