//
//  GroceryItemsViewController.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "GroceryItemsViewController.h"

@interface GroceryItemsViewController ()

@end

@implementation GroceryItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction) close:(id) sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction) itemAddButtonPressed:(id)sender{
    
    [self.addItemDelegate itemAddButtonWasPressed:self.groceryItemsTextField.text];
    NSLog(@"%@", self.groceryItemsTextField.text);
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
