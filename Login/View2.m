//
//  secondView.m
//  thirdTry
//
//  Created by MSE on 21/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "secondView.h"

@interface secondView ()

@end

@implementation secondView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [userName setText:_name];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ima.jpeg"]];
}
- (IBAction)onClick:(id)sender {
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@synthesize userName;
@end
