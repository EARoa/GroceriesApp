//
//  GroceryCategoryTableViewController.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "GroceryCategoryTableViewController.h"
#import "GroceryItemsTableViewController.h"

@interface GroceryCategoryTableViewController () <AddCategoryDelegate>

@end

@implementation GroceryCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSData *categoryData = [[NSUserDefaults standardUserDefaults] objectForKey:@"categoryArrayData"];
    
    if(categoryData == nil){
        _groceryCategoriesArray = [NSMutableArray array];
    } else {
        _groceryCategoriesArray = (NSMutableArray *) [NSKeyedUnarchiver unarchiveObjectWithData:categoryData];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) addButtonWasPressed: (NSString *) category{
    
    //create the Grocery Category Object
    GroceryCategory *groceryCategory = [[GroceryCategory alloc]init];
    groceryCategory.title = category;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    [_groceryCategoriesArray addObject:groceryCategory];
    NSData *categoryArrayData = [NSKeyedArchiver archivedDataWithRootObject:_groceryCategoriesArray];
    [userDefaults setObject:categoryArrayData forKey:@"categoryArrayData"];
    [userDefaults synchronize];
    
    
    [self.tableView reloadData];
    NSLog(@"%@", categoryArrayData);
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _groceryCategoriesArray.count;
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"AddGroceryCategorySegue"]){
        AddGroceryCategoryViewController *addGroceryViewController = (AddGroceryCategoryViewController *)segue.destinationViewController;
        addGroceryViewController.delegate = self;
    }
    else if([segue.identifier isEqualToString:@"GroceryItemsSegue"]){
        
        GroceryItemsTableViewController *groceryItemsTableViewController = (GroceryItemsTableViewController *)segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        GroceryCategory *selectedGroceryCategory = _groceryCategoriesArray [indexPath.row];
        
        groceryItemsTableViewController.selectedGroceryCategory = selectedGroceryCategory;

    };
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    GroceryCategory *groceryCategory = _groceryCategoriesArray[indexPath.row];
    cell.textLabel.text = groceryCategory.title;
    
    return cell;
}

@end

