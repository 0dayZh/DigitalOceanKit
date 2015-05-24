//
//  DOApiManager+Account.m
//  Pods
//
//  Created by 0day on 15/5/24.
//
//

#import "DOApiManager+Account.h"

@implementation DOApiManager (Account)

- (void)getUserInformationWithComplete:(void (^)(DOAccount *account, NSError *error))completeHandler {
    NSString *path = [NSString stringWithFormat:kAPI_Account_GetAccount, self.apiVersion];
    
    [self GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        DOAccount *account = [[DOAccount alloc] initWithJSON:responseObject[@"account"]];
        if (completeHandler) {
            completeHandler(account, nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (completeHandler) {
            completeHandler(nil, error);
        }
    }];
}

@end
