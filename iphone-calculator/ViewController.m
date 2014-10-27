//
//  ViewController.m
//  iphone-calculator
//
//  Created by Admin on 26.10.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "ViewController.h"
#import "CalcEngine.h"


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (CalcEngine *)engine {
    if (!engine) engine = CalcEngine.alloc.init;
    return engine;
}

- (IBAction)numberPushed:(UIButton *)sender {
    if (self.engine.getPosition < ARRAY_SIZE) {
        self.label.text = sender.titleLabel.text;
        [self.engine setOperand:sender.titleLabel.text.doubleValue];
    }
}

- (IBAction)operationPushed:(UIButton *)sender {
    if (self.engine.getPosition > 1) {
        double result = [self.engine performOperation:sender.titleLabel.text];
        self.label.text = [NSString stringWithFormat:@"%g", result];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
