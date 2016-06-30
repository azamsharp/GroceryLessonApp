//
//  GroceryCategory.h
//  GroceryLessonApp
//
//  Created by Mohammad Azam on 6/30/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroceryCategory : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,strong) NSMutableArray *groceryItems;

@end
