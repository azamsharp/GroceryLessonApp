//
//  GroceryCategoryTableTableViewController.h
//  GroceryLessonApp
//
//  Created by Mohammad Azam on 6/30/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddGroceryCategoryViewController.h"
#import "GroceryCategory.h" 
#import "GroceryItemsTableViewController.h" 

@interface GroceryCategoryTableViewController : UITableViewController
{
    NSMutableArray *_groceryCategoriesArray;
}
@end
