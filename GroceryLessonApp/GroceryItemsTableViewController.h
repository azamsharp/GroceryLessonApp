//
//  GroceryItemsTableViewController.h
//  GroceryLessonApp
//
//  Created by Mohammad Azam on 6/30/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCategory.h"

@interface GroceryItemsTableViewController : UITableViewController

@property (nonatomic,strong) GroceryCategory *selectedGroceryCategory; 

@end
