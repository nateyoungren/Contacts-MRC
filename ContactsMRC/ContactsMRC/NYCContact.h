//
//  NYCContact.h
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NYCContact : NSObject

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(int)phone;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *emailAddress;
@property (nonatomic, assign) int phoneNumber;

@end

NS_ASSUME_NONNULL_END
