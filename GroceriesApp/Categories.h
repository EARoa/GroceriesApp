//
//  Categories.h
//  GroceriesApp
//
//  Created by Efrain Ayllon on 6/28/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Categories : NSObject

@property (nonatomic, copy) NSString *title;
- (instancetype) initWithTitle: (NSString *) title;

@end
