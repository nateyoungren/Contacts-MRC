//
//  NYCContactsController.h
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NYCContact;

NS_ASSUME_NONNULL_BEGIN

@interface NYCContactsController : NSObject

- (void)addContactWithName:(NSString *)name email:(NSString *)email phoneNumber:(int)phone;

- (void)updateContact:(NYCContact *)contact withName:(NSString *)name email:(NSString *)email phoneNumber:(int)phone;

- (void)removeContact:(NYCContact *)contact;

@property (nonatomic, strong) NSArray<NYCContact *> *contacts;

@end

NS_ASSUME_NONNULL_END
