//
//  NYCDetailViewController.m
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCDetailViewController.h"

@interface NYCDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation NYCDetailViewController

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}

- (IBAction)saveButtonTapped:(id)sender {
    
}

@end
