//
//  WelcomeViewController.m
//  Login
//
//  Created by pesit on 03/09/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "WelcomeViewController.h"


@implementation WelcomeViewController
@synthesize displayName;
@synthesize username;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"check welcome");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome" message:@"Login Successfull" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
    [displayName setText:username];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Desert.jpg"]]];
    
}

- (void)viewDidUnload
{
    [self setDisplayName:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)logout:(id)sender {
    
    IOS_MSEViewController * imse = [[IOS_MSEViewController alloc] initWithNibName:@"IOS_MSEViewController" bundle:nil];
    [self presentModalViewController:imse animated:YES];
        
}
@end
