//
//  AccountService.h
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TranscationStore.h"
#import "StatementPrinter.h"
NS_ASSUME_NONNULL_BEGIN

@interface AccountService : NSObject{
    
    TranscationStore *store;
    StatementPrinter *statementPrinter;
}
- (id) initWithTransactionStore:(TranscationStore *) store StatementPrint:(StatementPrinter *) printer;
- (void) deposit:(int) amount;
- (void) withdraw:(int) amount;
- (void) printStatement;
- (NSMutableArray *) getTransactions;
@end


NS_ASSUME_NONNULL_END
