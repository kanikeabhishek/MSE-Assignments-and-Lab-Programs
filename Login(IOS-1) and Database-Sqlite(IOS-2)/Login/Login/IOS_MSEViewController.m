//
//  IOS_MSEViewController.m
//  Login
//
//  Created by pesit on 03/09/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "IOS_MSEViewController.h"

@implementation IOS_MSEViewController
@synthesize userName;
@synthesize password;



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Desert.jpg"]]];
    
    
}

- (void)viewDidUnload
{
    [self setUserName:nil];
    [self setPassword:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    userName.text = @"";
    password.text = @"";
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)loginButtonAction:(id)sender {
    
    if([userName.text isEqualToString:@"a4"] && [password.text isEqualToString:@"a4"])
    {
        NSLog(@"check");
         
        WelcomeViewController * wvc = [[WelcomeViewController alloc] initWithNibName:@"WelcomeViewController" bundle:nil];
        [wvc setUsername:userName.text];
//        WelcomeViewController * wvc = [[WelcomeViewController alloc] init];
        [self presentModalViewController:wvc animated:YES];
        //[self.navigationController pushViewController:wvc animated:YES];        
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login" message:@"Username or Password donot match. Please re-enter." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
       // [alert release];
        //alert
    }
}

- (IBAction)hideKeyboard:(id)sender {
    NSLog(@"check keyboard");
    [self.view endEditing:YES];
}
@end
