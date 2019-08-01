//
//  AccountService.m
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import "AccountService.h"
#import "Transaction.h"
#import "TranscationStore.h"
#import "StatementPrinter.h"

@implementation AccountService

- (id) initWithTransactionStore:(TranscationStore *) storeObj StatementPrint:(StatementPrinter *) printer{
    
    self = [super init];
    
    if(self){
        
        store = storeObj;
        statementPrinter = printer;
    }
    return self;
}
- (void) deposit:(int) amount{
    
    Transaction *transaction = [[Transaction alloc] initWithAmount:amount type:Deposit];
    [store processDeposit:transaction];
}
- (void) withdraw:(int) amount{
    
    Transaction *transaction = [[Transaction alloc] initWithAmount:amount type:Withdraw];
    [store processDeposit:transaction];
}
- (void) printStatement{
    
    [statementPrinter printStatementForTransactions:[self getTransactions]];
}
- (NSMutableArray *) getTransactions{
    
    return [store getAllTransactions];
}


@end
