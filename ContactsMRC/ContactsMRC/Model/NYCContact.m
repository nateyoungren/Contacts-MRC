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
        _name = name;
        _emailAddress = email;
        _phoneNumber = phone;
    }
    return self;
}

@end
