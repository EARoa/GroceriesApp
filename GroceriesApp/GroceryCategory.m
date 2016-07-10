//
//  GroceryCategory.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "GroceryCategory.h"

@implementation GroceryCategory


- (instancetype)initWithCoder:(NSCoder *)coder{
    
    self = [super init];
    
    self.title = [coder decodeObjectForKey:@"title"];
    self.groceryItemsArray = [coder decodeObjectForKey:@"groceryItemsArray"];

    return self;
    
}


- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.title forKey:@"title"];
    [coder encodeObject:self.groceryItemsArray forKey:@"groceryItemsArray"];
    
}


@end
