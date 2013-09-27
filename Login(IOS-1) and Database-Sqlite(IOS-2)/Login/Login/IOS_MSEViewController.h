//
//  IOS_MSEViewController.h
//  Login
//
//  Created by pesit on 03/09/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WelcomeViewController.h"

@interface IOS_MSEViewController : UIViewController <UIAlertViewDelegate> 
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *password;
- (IBAction)loginButtonAction:(id)sender;
- (IBAction)hideKeyboard:(id)sender;

@end
