//
//  GroceryItemsTableViewController.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "GroceryItemsTableViewController.h"

@interface GroceryItemsTableViewController ()<AddItemDelegate>

@end

@implementation GroceryItemsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.selectedGroceryCategory.title;
    _groceryItemsArray = self.selectedGroceryCategory.groceryItemsArray;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) itemAddButtonWasPressed: (NSString *) item{
    
    //create the grocery item object
    GroceryItem *groceryItem = [[GroceryItem alloc] init];
    groceryItem.itemTitle = item;
    
    [_groceryItemsArray addObject:groceryItem];
    
    
    [self.tableView reloadData];
    NSLog(@"%@", item);
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _groceryItemsArray.count;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"AddGroceryItemsSegue"]){
        GroceryItemsViewController *addGroceryItemsViewController = (GroceryItemsViewController *)segue.destinationViewController;
        addGroceryItemsViewController.addItemDelegate = self;
    };
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceryItemCell" forIndexPath:indexPath];
    
    GroceryItem *groceryItem = _groceryItemsArray[indexPath.row];
    cell.textLabel.text = groceryItem.itemTitle;
    
    
    return cell;
}
@end

