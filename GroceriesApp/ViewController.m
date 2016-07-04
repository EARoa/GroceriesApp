//
//  ViewController.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 6/28/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UITextField *categoryTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
        // Do any additional setup after loading the view, typically from a nib.
}


-(IBAction) close {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction) doneButtonPressed{
    
    
    NSString *testText = self.categoryTextField.text;
    
    NSLog(@"You've entered: %@", testText);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
