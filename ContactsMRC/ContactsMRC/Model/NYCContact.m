//
//  NYCContact.m
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCContact.h"

@implementation NYCContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(int)phone {
    
    self = [super init];
    if (self) {
        _name = [name copy];
        _emailAddress = [email copy];
        _phoneNumber = phone;
    }
    return self;
}

- (void)setName:(NSString *)name {
    _name = [name copy];
}

@end
