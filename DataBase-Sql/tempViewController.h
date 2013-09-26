//
//  tempViewController.h
//  lab5
//
//  Created by MSE on 15/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"


@interface tempViewController : UIViewController<UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UITextField *regNoTextField;


@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (weak, nonatomic) IBOutlet UITextField *departmentTextField;

@property (weak, nonatomic) IBOutlet UITextField *yearTextField;

@property (weak, nonatomic) IBOutlet UITextField *findByRegisterNumberTextField;

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

- (IBAction)saveData:(id)sender;


- (IBAction)findData:(id)sender;


- (IBAction)deleteData:(id)sender;

@end
