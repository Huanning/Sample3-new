//
//  popViewController.h
//  Sample3
//
//  Created by Kurt Cobain on 2014-05-20.
//  Copyright (c) 2014 Kurt Cobain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIPopover.h"
@interface popViewController : UIViewController <UIPopoverControllerDelegate>{
    IBOutlet UIViewController *popoverView;
    IBOutlet UIButton *popButton;
}

@end
