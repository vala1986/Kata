//
//  StatementPrinter.m
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import "StatementPrinter.h"

@implementation StatementPrinter

- (id) initWithConsole:(Console *) consoleObj{
    
    self = [super init];
    
    if(self){
        console = consoleObj;
    }
    
    return self;
}
- (void) printStatementForTransactions:(NSMutableArray *) array {
    
    NSString *string = [self getStringFromTransactionArray:array];
    
    [console printString:string];
    
}
- (NSString *) getStringFromTransactionArray:(NSMutableArray *) array {
    
    
    
    return @"";
}

@end
