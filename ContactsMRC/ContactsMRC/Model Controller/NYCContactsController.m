//
//  NYCContactsController.m
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCContactsController.h"
#import "NYCContact.h"

@interface NYCContactsController ()

@property (nonatomic, strong) NSMutableArray<NYCContact *>  *internalContacts;

@end

@implementation NYCContactsController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContactWithName:(NSString *)name email:(NSString *)email phoneNumber:(int)phone {
    NYCContact *contact = [[NYCContact alloc] initWithName:name email:email phoneNumber:phone];
    [[self internalContacts] addObject:contact];
    [contact release];
}

- (void)updateContact:(NYCContact *)contact withName:(NSString *)name email:(NSString *)email phoneNumber:(int)phone {
    contact.name = name;
    contact.emailAddress = email;
    contact.phoneNumber = phone;
}

- (void)removeContact:(NYCContact *)contact {
    [[self internalContacts] removeObject:contact];
    [contact release];
    contact = nil;
}

- (NSArray<NYCContact *> *)contacts {
    return [self internalContacts];
}

@end
