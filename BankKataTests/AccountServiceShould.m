//
//  AccountServiceShould.m
//  BankKataTests
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//
/*
 
 // the following two verifications work exactly the same
 [verify(mockArray) addObject:@"once"];
 [verifyCount(mockArray, times(1)) addObject:@"once"];

 
 [given([mockArray count]) willReturn:@3];
 
 */

@import OCMockitoIOS;
@import OCHamcrestIOS;
#import <XCTest/XCTest.h>
#import "AccountService.h"
#import "TranscationStore.h"

@interface AccountServiceShould : XCTestCase{
    AccountService *service;
    TranscationStore *store;
}

@end

@implementation AccountServiceShould

- (void)setUp {
    store = [[TranscationStore alloc] init];
    service = [[AccountService alloc] initWithTransactionStore:store];
}

- (void) test_deposit{
    
    [service deposit:1000];
    NSMutableArray *allTransaction = [service getTransactions];
    XCTAssertTrue( [allTransaction count] == 1, @"Show show one transaction" );
}
- (void) test_withdraw{
    
    [service withdraw:500];
    NSMutableArray *allTransaction = [service getTransactions];
    XCTAssertTrue([allTransaction count] >= 1, @"Should return two transactions");
}
- (void) test_print_transaction{
    [service printStatement];
}
@end
