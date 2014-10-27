//
//  CalcEngine.m
//  iphone-calculator
//
//  Created by Admin on 27.10.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "CalcEngine.h"

@implementation CalcEngine
int position = 0;

- (int)getPosition {
    return position;
}

- (void)setOperand:(double)number {
        operatorsArray[position] = number;
        position++;
}

- (double)performOperation:(NSString *)operation {
        position--;
           
        if ([@"+" isEqual:operation]) {
            operatorsArray[position - 1] += operatorsArray[position];
        } else if ([@"-" isEqual:operation]) {
            operatorsArray[position - 1] -= operatorsArray[position];
        } else if ([@"*" isEqual:operation]) {
            operatorsArray[position - 1] *= operatorsArray[position];
        } else if ([@"/" isEqual:operation]) {
            if (operatorsArray[position]) operatorsArray[position - 1] /= operatorsArray[position];
            else operatorsArray[position - 1] = 0;
        }
        return operatorsArray[position - 1];
}

@end