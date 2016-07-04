//
//  AddGroceryCategoryViewController.h
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol AddCategoryDelegate <NSObject>

-(void) addButtonWasPressed: (NSString *) category;

@end


@interface AddGroceryCategoryViewController : UIViewController{
    
}

@property (nonatomic,weak) IBOutlet UITextField *categoryNameTextField;

@property(nonatomic,weak) id<AddCategoryDelegate> delegate;


@end
