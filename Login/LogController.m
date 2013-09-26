//
//  LoginViewController.m
//  thirdTry
//
//  Created by MSE on 21/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "LoginViewController.h"
#import "secondView.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"run.jpeg"]];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)onClick:(id)sender {
    if([userName.text isEqualToString:passKey.text]){
        secondView *sv = [[secondView alloc] initWithNibName:@"secondView" bundle:nil];
        sv.name = self.userName.text;
        [self addChildViewController:sv];
        [self.view addSubview:sv.view];
        [sv didMoveToParentViewController:self];
        sv = nil;
        NSLog(@"This is it!");
    }
    else{
        UIAlertView *alrt= [[UIAlertView alloc]initWithTitle:@"LOGIN ERROR" message:@"invalid login credentials" delegate:nil cancelButtonTitle:@"TRY again" otherButtonTitles:nil];
        [alrt show];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@synthesize userName;
@synthesize passKey;
    @end
