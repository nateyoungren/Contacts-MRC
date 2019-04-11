//
//  NYCDetailViewController.m
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCDetailViewController.h"
#import "NYCContactsController.h"
#import "NYCContact.h"

@interface NYCDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation NYCDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [_contact release];
    [_controller release];
    [super dealloc];
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.contact) {
        if (self.nameTextField.text && self.emailTextField.text && self.phoneNumberTextField.text.intValue) {
            [self.controller updateContact:self.contact
                                  withName:self.nameTextField.text
                                     email:self.emailTextField.text
                               phoneNumber:self.phoneNumberTextField.text.intValue];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }
    } else {
        if (self.nameTextField.text && self.emailTextField.text && self.phoneNumberTextField.text.intValue) {
            [self.controller addContactWithName:self.nameTextField.text
                                          email:self.emailTextField.text
                                    phoneNumber:self.phoneNumberTextField.text.intValue];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }
    }
}

- (void)updateViews {
    if (self.contact) {
        [self.navigationItem setTitle:@"Update Contact"];
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.emailAddress;
        
        NSNumber *phoneNumber = [NSNumber numberWithInt:self.contact.phoneNumber];
        self.phoneNumberTextField.text = [phoneNumber stringValue];
    } else {
        [self.navigationItem setTitle:@"Add Contact"];
    }
}

- (void)setContact:(NYCContact *)contact {
    [contact retain];
    [_contact release];
    _contact = contact;
    [self updateViews];
}

- (void)setController:(NYCContactsController *)controller {
    [controller retain];
    [_controller release];
    _controller = controller;
}

@end
