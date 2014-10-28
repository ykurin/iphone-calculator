//
//  CalcEngine.h
//  iphone-calculator
//
//  Created by Admin on 27.10.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//
#import <Foundation/Foundation.h>
#define ARRAY_SIZE 128

@interface CalcEngine : NSObject {
    int position;
    double operatorsArray[ARRAY_SIZE];
}

- (void)setPosition:(int)pos;
- (int)getPosition;
- (void)setOperand:(double)number;
- (double)performOperation:(NSString *)operation;

@end
