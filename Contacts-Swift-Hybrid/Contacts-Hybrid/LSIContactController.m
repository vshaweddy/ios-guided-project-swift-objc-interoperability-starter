//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Vici Shaweddy on 2/10/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"
#import "Contacts_Hybrid-Swift.h" // "ProjectName-Swift.h" Spaces/Special characters = "_"

@implementation LSIContactController

- (instancetype) init {
    self = [super init];
    if (self) {
        _contacts = @[
            [[Contact alloc] initWithName:@"Vici" relationship:@"Myself"],
            [[Contact alloc] initWithName:@"Robin" relationship:@"Spouse"]
        ];
    }
    return self;
}

@end
