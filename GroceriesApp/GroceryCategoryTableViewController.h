//
//  GroceryCategoryTableViewController.h
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddGroceryCategoryViewController.h"
#import "GroceryCategory.h"
#import "GroceryItemsTableViewController.h"


@interface GroceryCategoryTableViewController : UITableViewController{
    
    NSMutableArray *_groceryCategoriesArray;
}

@end
