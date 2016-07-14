//
//  GroceryItem.m
//  GroceriesApp
//
//  Created by Efrain Ayllon on 7/4/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "GroceryItem.h"

@implementation GroceryItem

- (instancetype)initWithCoder:(NSCoder *)coder{
    
    self = [super init];
    
    self.itemTitle = [coder decodeObjectForKey:@"itemTitle"];
    
    return self;
    
}


- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.itemTitle forKey:@"itemTitle"];
    
}



@end
