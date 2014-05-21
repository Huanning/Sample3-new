//
//  KeyViewController.h
//  Sample3
//
//  Created by Kurt Cobain on 2014-05-15.
//  Copyright (c) 2014 Kurt Cobain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyViewController : UIViewController

- (IBAction)backgroundTap:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *reactantTF;

@property (strong, nonatomic) IBOutlet UITextField *productTF;

- (IBAction)balanceButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *finalEquationLabel;

@end
