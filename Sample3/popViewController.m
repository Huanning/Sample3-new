//
//  popViewController.m
//  Sample3
//
//  Created by Kurt Cobain on 2014-05-20.
//  Copyright (c) 2014 Kurt Cobain. All rights reserved.
//


@interface UIPopoverController (overrides)
+(BOOL)_popoverDisabled;
@end


@implementation UIPopoverController (overrides)

+(BOOL)_popoverDisabled{return NO;}

@end




#import "popViewController.h"

@interface popViewController ()

@end

@implementation popViewController

-(IBAction)showPop{
    UIPopoverController *pop = [[UIPopoverController alloc] initWithContentViewController:popoverView];
    [pop setDelegate:self];
    [pop presentPopoverFromRect:popButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}

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

@end
