//
//  DateHelper.m
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import "DateHelper.h"

@implementation DateHelper

- (id) init{
    self = [super init];
    
    if(self){
        dateFormatter = [[NSDateFormatter alloc] init];
    }
    return self;
}

- (NSString *) getTransactionDateString{
    
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    return [dateFormatter stringFromDate:[NSDate date]];
}

@end
