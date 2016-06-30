//
//  AddGroceryCategory.h
//  GroceryLessonApp
//
//  Created by Mohammad Azam on 6/30/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddCategoryDelegate <NSObject>



-(void) saveButtonWasPressed: (NSString *) category;



@end


@interface AddGroceryCategoryViewController : UIViewController
{

}

@property (nonatomic,weak) IBOutlet UITextField *categoryNameTextField;


@property (nonatomic,weak) id<AddCategoryDelegate> delegate;



@end
