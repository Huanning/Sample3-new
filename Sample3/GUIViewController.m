//
//  GUIViewController.m
//  Sample3
//
//  Created by Kurt Cobain on 2014-05-15.
//  Copyright (c) 2014 Kurt Cobain. All rights reserved.
//

#import "GUIViewController.h"

@interface GUIViewController ()
{
    UIPopoverController *popoverController;
    UIPickerView *categoryPicker;
    UIToolbar *pickerToolBar;
    NSMutableArray *arrayOfCategories;
}
@end

@implementation GUIViewController

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
    
    arrayOfCategories = [[NSMutableArray alloc]initWithObjects:@"one", @"two", @"three", @"four", @"five", nil];
    
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

- (IBAction)Sc:(id)sender {
    categoryPicker = [[UIPickerView alloc]init];
    pickerToolBar = [[UIToolbar alloc]init];
    
    UIViewController *popoverContent = [[UIViewController alloc]init];
    UIView *popoverView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [categoryPicker frame].size.width, [categoryPicker frame].size.height+44)];
    
    categoryPicker = [[UIPickerView alloc]initWithFrame:CGRectMake([popoverView frame].origin.x, [popoverView frame].origin.y+44, 0, 0)];
    pickerToolBar = [[UIToolbar alloc]initWithFrame:CGRectMake([popoverView frame].origin.x, [popoverView frame].origin.y, [popoverView frame].size.width, 44)];
    
    [categoryPicker setDataSource:self];
    [categoryPicker setDelegate:self];
    [categoryPicker setShowsSelectionIndicator:YES];
    
    [pickerToolBar setBarStyle:UIBarStyleBlack];
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"OK" style:UIBarButtonItemStyleBordered target:self action:@selector (donePressed)];
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector (cancelPressed)];
    
    [pickerToolBar setItems: [NSArray arrayWithObjects:flexSpace, doneButton, cancelButton, nil]];
    
    [popoverView addSubview:categoryPicker];
    [popoverView addSubview:pickerToolBar];
    [popoverContent setView:popoverView];
    
    
    popoverController = [[UIPopoverController alloc]initWithContentViewController:popoverContent];
    popoverController.popoverContentSize = CGSizeMake([categoryPicker frame].size.width, [popoverView frame].size.height);
    [popoverController presentPopoverFromRect:[self Sc].frame inView:[self view] permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [arrayOfCategories count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [arrayOfCategories objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [[self reactantsLabel]setText: [arrayOfCategories objectAtIndex:row]];
}
                           
- (void)donePressed
{
    [[self reactantsLabel]setText:@"DONE!!"];
    [popoverController dismissPopoverAnimated:YES];

}

-(void) cancelPressed
{
    [[self reactantsLabel]setText:@"Cancel pressed"];
    [popoverController dismissPopoverAnimated:YES];
}
                           
@end
                           
                           
                           
                           
                           
