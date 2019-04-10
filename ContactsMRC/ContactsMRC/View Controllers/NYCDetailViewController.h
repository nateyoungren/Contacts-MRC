//
//  NYCDetailViewController.h
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NYCContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface NYCDetailViewController : UIViewController

@property (retain, nonatomic) NYCContact *contact;

@end

NS_ASSUME_NONNULL_END
