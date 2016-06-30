//
//  AddGroceryCategory.m
//  GroceryLessonApp
//
//  Created by Mohammad Azam on 6/30/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "AddGroceryCategoryViewController.h"

@interface AddGroceryCategoryViewController ()




@end

@implementation AddGroceryCategoryViewController

-(IBAction)close:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)saveButtonPressed:(id)sender {
    [self.delegate saveButtonWasPressed: self.categoryNameTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
