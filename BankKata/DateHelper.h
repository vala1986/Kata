//
//  DateHelper.h
//  BankKata
//
//  Created by Bhagirathsinh Vala on 01/08/19.
//  Copyright © 2019 Bhagirthsinh Vala. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateHelper : NSObject{
    
    NSDateFormatter *dateFormatter;
}

- (NSString *) getTransactionDateString;
@end

NS_ASSUME_NONNULL_END
