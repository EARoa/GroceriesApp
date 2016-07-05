//
//  GroceryItemsTableViewController.h
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCategory.h"
#import "GroceryItem.h"
#import "GroceryItemsViewController.h"

@interface GroceryItemsTableViewController : UITableViewController


@property (nonatomic,strong) GroceryCategory *selectedGroceryCategory;
@property (nonatomic, strong) NSMutableArray *groceryItemsArray;


@end
