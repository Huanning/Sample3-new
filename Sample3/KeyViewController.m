//
//  KeyViewController.m
//  Sample3
//
//  Created by Kurt Cobain on 2014-05-15.
//  Copyright (c) 2014 Kurt Cobain. All rights reserved.
//

#import "KeyViewController.h"

@interface KeyViewController ()

@end

@implementation KeyViewController

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
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:true];
    
}

- (IBAction)balanceButton:(id)sender {
    
    NSString *reactants = [_reactantTF text];
    NSString *products = [_productTF text];
    NSString *final = [NSString stringWithFormat:@"%@%@", reactants, products];
    _finalEquationLabel.text = final;
    
    NSLog(@"variable: %@",reactants);
}

@end
