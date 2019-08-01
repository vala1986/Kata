//
//  TranscationStore.h
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Transaction.h"

NS_ASSUME_NONNULL_BEGIN

@interface TranscationStore : NSObject{
    NSMutableArray *allTransactions;
    
}
- (void) processDeposit:(Transaction *) transaction;
- (NSMutableArray *) getAllTransactions;
@end

NS_ASSUME_NONNULL_END
