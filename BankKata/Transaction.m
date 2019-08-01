//
//  Transaction.m
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import "Transaction.h"
#import "DateHelper.h"

@implementation Transaction

- (id) initWithAmount:(int) amountObj type:(TransactionType)typeObj{
    
    self = [super init];
    
    if(self){
        
        amount = amountObj;
        date = [[[DateHelper alloc] init] getTransactionDateString];
        type = typeObj;
    }
    
    return self;
}
@end
