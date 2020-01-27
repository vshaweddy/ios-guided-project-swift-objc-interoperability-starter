//
//  LSIPerson.h
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import <Foundation/Foundation.h>

// TODO: Create an instance of the LSIPerson to see how it's properties and initializers are imported into Swift

// TODO: Add nullabilty annotations

@interface LSIPerson : NSObject


@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *birthYear;
@property (nonatomic, readonly) double height;
@property (nonatomic, copy, readonly) NSString *eyeColor;

- (instancetype)initWithName:(NSString *)name
                   birthYear:(NSString *)birthYear
                      height:(double)height
                    eyeColor:(NSString *)eyeColor;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;


@end
