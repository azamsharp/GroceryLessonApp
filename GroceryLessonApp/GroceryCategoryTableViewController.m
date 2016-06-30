//
//  GroceryCategoryTableTableViewController.m
//  GroceryLessonApp
//
//  Created by Mohammad Azam on 6/30/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "GroceryCategoryTableViewController.h"

@interface GroceryCategoryTableViewController ()<AddCategoryDelegate>

@end

@implementation GroceryCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _groceryCategoriesArray = [[NSMutableArray alloc] init];
}

- (void) saveButtonWasPressed:(NSString *)category{
    
    // create the Grocery Category object
    GroceryCategory *groceryCategory = [[GroceryCategory alloc] init];
    groceryCategory.groceryItems = [NSMutableArray array];
    groceryCategory.title = category;
    
    [_groceryCategoriesArray addObject:groceryCategory];
    
    [self.tableView reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _groceryCategoriesArray.count
    ;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"AddGroceryCategorySegue"]) {
       
        AddGroceryCategoryViewController *addGroceryCategoryViewController = (AddGroceryCategoryViewController *)segue.destinationViewController;
        
        addGroceryCategoryViewController.delegate = self;
    }
    else if([segue.identifier isEqualToString:@"GroceryItemsSegue"]) {
        
        GroceryItemsTableViewController *groceryItemsTableViewController = (GroceryItemsTableViewController *) segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        GroceryCategory *selectedGroceryCategory = _groceryCategoriesArray[indexPath.row];
        
        groceryItemsTableViewController.selectedGroceryCategory = selectedGroceryCategory;
        
        // do something with the groceryItemsController
    }
    
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    GroceryCategory *groceryCategory = _groceryCategoriesArray[indexPath.row];
    cell.textLabel.text = groceryCategory.title;
    
    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
