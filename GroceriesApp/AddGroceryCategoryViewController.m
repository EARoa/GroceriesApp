//
//  AddGroceryCategoryViewController.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "AddGroceryCategoryViewController.h"

@interface AddGroceryCategoryViewController ()


@end

@implementation AddGroceryCategoryViewController

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

-(IBAction)addButtonPressed:(id)sender{
    [self.delegate addButtonWasPressed:self.categoryNameTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
