//
//  NYCContactsTableViewController.m
//  ContactsMRC
//
//  Created by Nathanael Youngren on 4/10/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCContactsTableViewController.h"
#import "NYCDetailViewController.h"
#import "NYCContactsController.h"
#import "NYCContact.h"

@interface NYCContactsTableViewController ()

@end

@implementation NYCContactsTableViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        _controller = [[NYCContactsController alloc] init];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _controller = [[NYCContactsController alloc] init];

        [self.controller addContactWithName:@"Bob" email:@"email" phoneNumber:55555555];
        [self.controller addContactWithName:@"Tim" email:@"email" phoneNumber:55555555];
        
        NYCContact *first = [[[self controller] contacts] firstObject];
        [self.controller removeContact:first];
    }
    return self;
}

- (void)dealloc
{
    [_controller release];
    [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.controller.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    NYCContact *contact = self.controller.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"DetailShow"]) {
        NYCDetailViewController *addVC = segue.destinationViewController;
        NSIndexPath *index = [[self tableView] indexPathForSelectedRow];
        addVC.contact = self.controller.contacts[index.row];
        addVC.controller = self.controller;
//        [addVC release];
//        [index release];
//        [[self controller] release];
    }
    
    if ([segue.identifier isEqualToString:@"AddShow"]) {
        NYCDetailViewController *addVC = segue.destinationViewController;
        addVC.controller = self.controller;
//        [addVC release];
//        [[self controller] release];
    }
}

@end
