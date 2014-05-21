//
//  ViewController.m
//  Sample3
//
//  Created by Kurt Cobain on 2014-05-12.
//  Copyright (c) 2014 Kurt Cobain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [scroller setScrollEnabled:true];
    [scroller setContentSize:CGSizeMake(320,1000)];
      
	// Do any additional setup after loading the view, typically from a nib.
      
    
    /*array = [[NSMutableArray alloc] init];
    
    [array addObject:@"Apple"];
    [array addObject:@"2"];
    [array addObject:@"3"];
    [array addObject:@"4"];
    [array addObject:@"5"];
    [array addObject:@"6"];
    
     output all font names
     
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 60)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Using Custom Fonts";
    label.font = [UIFont fontWithName:@"Entypo" size:20];
     
     */
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
