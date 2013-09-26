//
//  tempViewController.m
//  lab5
//
//  Created by MSE on 15/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "tempViewController.h"
#import "DBManager.h"


@interface tempViewController()
@end



@implementation tempViewController

@synthesize regNoTextField;
@synthesize nameTextField;
@synthesize yearTextField;
@synthesize departmentTextField;
@synthesize findByRegisterNumberTextField;
@synthesize myScrollView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)
nibBundleOrNil
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)saveData:(id)sender{
    BOOL success = NO;
    NSString *alertString = @"Data Insertion failed";
    if (regNoTextField.text.length>0 && nameTextField.text.length>0 && departmentTextField.text.length>0 && yearTextField.text.length>0 )
    {
        success = [[DBManager getSharedInstance]saveData:
                   regNoTextField.text name:nameTextField.text department:
                   departmentTextField.text year:yearTextField.text];
    }
    else{
        alertString = @"Enter all fields";
    }
    if (success == NO) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:alertString message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)deleteData:(id)sender
{
    BOOL success = NO;
    NSString *alertString = @"Deletion failed";
    if (findByRegisterNumberTextField.text.length>0)
    {
        success = [[DBManager getSharedInstance]deleteByRegisterNumber:findByRegisterNumberTextField.text];
    }
    else
    {
        alertString = @"Enter register number";
    }
    if (success == NO)
    {
        UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:alertString message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [myAlert show];
    }
    else if (success == YES)
    {
        alertString = @"Deleted";
        UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:alertString message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [myAlert show];
        }    
}



-(IBAction)findData:(id)sender{
    NSArray *data = [[DBManager getSharedInstance]findByRegisterNumber:
                     findByRegisterNumberTextField.text];
    if (data == nil) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:
                              @"Data not found" message:nil delegate:nil cancelButtonTitle:
                              @"OK" otherButtonTitles:nil];
        [alert show];
        regNoTextField.text = @"";
        nameTextField.text =@"";
        departmentTextField.text = @"";
        yearTextField.text =@"";
    }
    else{
        regNoTextField.text = findByRegisterNumberTextField.text;
        nameTextField.text =[data objectAtIndex:0];
        departmentTextField.text = [data objectAtIndex:1];
        yearTextField.text =[data objectAtIndex:2];
    }
}


#pragma mark - Text field delegate
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [myScrollView setFrame:CGRectMake(10, 50, 300, 200)];
    [myScrollView setContentSize:CGSizeMake(300, 350)];
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    [myScrollView setFrame:CGRectMake(10, 50, 300, 350)];
    
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

@end