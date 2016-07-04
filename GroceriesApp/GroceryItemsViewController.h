//
//  GroceryItemsViewController.h
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol AddItemDelegate <NSObject>

-(void) itemAddButtonWasPressed: (NSString *) item;

@end


@interface GroceryItemsViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *groceryItemsTextField;

@property(nonatomic,weak) id<AddItemDelegate> addItemDelegate;


@end
