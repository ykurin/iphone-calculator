//
//  ViewController.h
//  iphone-calculator
//
//  Created by Admin on 26.10.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalcEngine.h"

@interface ViewController : UIViewController {
    CalcEngine *engine;
}

@property (strong, nonatomic) IBOutlet UILabel *label;

- (IBAction)numberPushed:(UIButton *)sender;
- (IBAction)operationPushed:(UIButton *)sender;

@end

