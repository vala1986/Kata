//
//  Transaction.h
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum transactionType
{
    Deposit,
    Withdraw,
} TransactionType;

@interface Transaction : NSObject{
    
    int amount;
    NSString *date;
    TransactionType type;
    
}

- (id) initWithAmount:(int) amountObj type:(TransactionType)typeObj;

@end

NS_ASSUME_NONNULL_END
