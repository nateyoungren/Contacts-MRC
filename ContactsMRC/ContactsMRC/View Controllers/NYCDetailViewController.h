//
//  NYCDetailViewController.h
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NYCContactsController;
@class NYCContact;

NS_ASSUME_NONNULL_BEGIN

@interface NYCDetailViewController : UIViewController

@property (retain, nonatomic) NYCContact *contact;
@property (retain, nonatomic) NYCContactsController *controller;

@end

NS_ASSUME_NONNULL_END
