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
    if (self.engine.getPosition < ARRAY_SIZE)
        self.label.text = [self.label.text stringByAppendingString:sender.titleLabel.text];
}

- (IBAction)operationPushed:(UIButton *)sender {
    if (self.label.text.length != 0) {
        [self.engine setOperand:self.label.text.doubleValue];
        self.label.text = @"";
    }
    
    if (self.engine.getPosition > 1) {
        double result = [self.engine performOperation:sender.titleLabel.text];
        self.resultLabel.text = [NSString stringWithFormat:@"%g", result];
    }
}

- (IBAction)enterPushed:(UIButton *)sender {
    if (self.label.text.length != 0) {
        [self.engine setOperand:self.label.text.doubleValue];
        self.label.text = @"";
    }
}

- (IBAction)backspacePushed:(UIButton *)sender {
    int stringLength = self.label.text.length;
    if (stringLength != 0)
        self.label.text = [self.label.text stringByPaddingToLength:stringLength - 1 withString:@"." startingAtIndex:0];
}

- (IBAction)clearallPushed:(UIButton *)sender {
    [self.engine setPosition:0];
    self.label.text = @"";
    self.resultLabel.text = @"";
}

- (IBAction)droprowPushed:(UIButton *)sender {
    int position = self.engine.getPosition;
    if (position > 0)
        [self.engine setPosition:position - 1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
