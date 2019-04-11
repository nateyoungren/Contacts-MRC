//
//  NYCContactsTableViewController.h
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NYCContactsController;

NS_ASSUME_NONNULL_BEGIN

@interface NYCContactsTableViewController : UITableViewController

@property (nonatomic, strong) NYCContactsController *controller;

@end

NS_ASSUME_NONNULL_END
