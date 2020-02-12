//
//  LSIPersonSearchTableViewController.m
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import "LSIPersonSearchTableViewController.h"
#import "Star_Wars_Hybrid-Swift.h"
#import "LSIPerson.h"

@interface LSIPersonSearchTableViewController () <UISearchBarDelegate>

@property (nonatomic) NSArray<LSIPerson *> *people;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation LSIPersonSearchTableViewController

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.people.count;
    
	
	return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	LSIPersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    
    LSIPerson *person = [self.people objectAtIndex:indexPath.row];
    
    cell.person = person;
	
    return cell;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
//    __weak LSIPersonSearchTableViewController *weakSelf = self;

    [LSIPersonController.sharedController searchForPeopleWithSearchTerm:searchBar.text completionHandler:^(NSArray<LSIPerson *> * _Nullable people, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error searching for %@: %@", searchBar.text, error);
        }
        
        self.people = people;
        [self.tableView reloadData];
    }];
    
	// TODO: Save the result and have the UI update itself
}

@end
