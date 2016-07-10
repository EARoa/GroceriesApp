//
//  GroceryCategory.h
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceryCategory : NSObject<NSCoding>

@property (nonatomic,copy) NSString *title;

@property (nonatomic,strong) NSMutableArray *groceryItemsArray;



@end
