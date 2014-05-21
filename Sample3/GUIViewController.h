//
//  GUIViewController.h
//  Sample3
//
//  Created by Kurt Cobain on 2014-05-15.
//  Copyright (c) 2014 Kurt Cobain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GUIViewController : UIViewController <UIPopoverControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIButton *Sc;
@property (strong, nonatomic) IBOutlet UILabel *reactantsLabel;
- (IBAction)Sc:(id)sender;

@end
