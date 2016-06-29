//
//  ShoppingCategoriesTableViewController.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 6/28/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "ShoppingCategoriesTableViewController.h"

@interface ShoppingCategoriesTableViewController ()

@end

@implementation ShoppingCategoriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    groceryCategory = [NSMutableArray arrayWithObjects:@"Lunch",@"Dinner", nil];
    
    Categories *firstCategory = [[Categories alloc]initWithTitle:@"Breakfast"];
    Categories *secondCategory = [[Categories alloc]initWithTitle:@"Lunch"];

    
    groceryCategory = [NSMutableArray arrayWithObjects:firstCategory.title, secondCategory.title, nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return groceryCategory.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = groceryCategory[indexPath.row];
    
    return cell;
}

@end
