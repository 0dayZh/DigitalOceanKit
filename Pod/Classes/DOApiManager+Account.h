//
//  DOApiManager+Account.h
//  Pods
//
//  Created by 0day on 15/5/24.
//
//

#import "DOApiManager.h"
#import "DOAccount.h"

@interface DOApiManager (Account)

- (void)getUserInformationWithComplete:(void (^)(DOAccount *account, NSError *error))completeHandler;

@end
