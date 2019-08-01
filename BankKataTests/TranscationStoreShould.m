//
//  TranscationStoreShould.m
//  BankKataTests
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TranscationStore.h"
#import "Transaction.h"


@interface TranscationStoreShould : XCTestCase{
    TranscationStore *store;
    Transaction *transaction;
}

@end

@implementation TranscationStoreShould

- (void)setUp {
    store = [[TranscationStore alloc] init];
}
- (void) test_process_deposit{
    
    transaction = [[Transaction alloc] initWithAmount:1000 type:Deposit];
    [store processDeposit:transaction];
    
    NSMutableArray *allTransaction = [store getAllTransactions];
    XCTAssertTrue( [allTransaction count] == 1, @"Show show one transaction" );

}

@end
