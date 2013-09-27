//
//  WelcomeViewController.h
//  Login
//
//  Created by pesit on 03/09/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IOS_MSEViewController.h"

@interface WelcomeViewController : UIViewController {
    NSString * username;
}

@property (strong, nonatomic) NSString *username;
- (IBAction)logout:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *displayName;

@end
