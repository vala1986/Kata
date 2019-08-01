//
//  StatementPrinter.h
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Console.h"

NS_ASSUME_NONNULL_BEGIN

@interface StatementPrinter : NSObject{
    Console *console;
}

- (id) initWithConsole:(Console *) console;
- (void) printStatementForTransactions:(NSMutableArray *) array ;
@end

NS_ASSUME_NONNULL_END
