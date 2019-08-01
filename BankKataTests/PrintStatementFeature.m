//
//  PrintStatementFeature.m
//  BankKataTests
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//
@import OCMockitoIOS;
@import OCHamcrestIOS;

#import <XCTest/XCTest.h>
#import "AccountService.h"
#include "Console.h"

@interface PrintStatementFeature : XCTestCase{
    AccountService *service;
    Console *console;
}

@end

@implementation PrintStatementFeature

- (void)setUp {
    service = [[AccountService alloc] init];
    console = mock([Console class]);
}
- (void) test_print_statements {
    
    [service deposit:1000];
    [service deposit:2000];
    [service withdraw:500];
    
    [service printStatement];
    
    //[verify(mockArray) addObject:@"once"];
    /*
     
     // using mock object
     [mockArray removeObject:@"This is a test"];
     
     // verification
     [verify(mockArray) removeObject:startsWith(@"This is")];

     
     */
    
    
    
    //[console printString:@"Date          || Amount || Balance"];
    [verify(console) printString:@"Date          || Amount || Balance"];
    [verify(console) printString:@"01/08/2019    || -500   || 2500"];
    [verify(console) printString:@"01/08/2019    || 2000   || 3000"];
    [verify(console) printString:@"01/08/2019    || 1000   || 1000"];
    
    
    
    /*
     
     Date       || Amount || Balance
     14/01/2012 || -500   || 2500
     13/01/2012 || 2000   || 3000
     10/01/2012 || 1000   || 1000

     
     */
}

@end
