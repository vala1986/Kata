//
//  TranscationStore.m
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import "TranscationStore.h"

@implementation TranscationStore

-(id) init {
    
    self = [super init];
    if (self){
        allTransactions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) processDeposit:(Transaction *) transaction{
    [allTransactions addObject:transaction];
    
}
- (NSMutableArray *) getAllTransactions{
    return allTransactions;
}
@end
