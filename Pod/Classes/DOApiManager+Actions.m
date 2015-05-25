//
//  DOApiManager+Actions.m
//  Pods
//
//  Created by 0day on 15/5/24.
//
//

#import "DOApiManager+Actions.h"

@implementation DOApiManager (Actions)

- (void)listActionsWithPageRange:(NSRange)range complete:(void (^)(NSArray *actions, NSUInteger totalCount, NSError *error))completeHandler {
    NSString *path = [NSString stringWithFormat:kAPI_Action_ListActions, self.apiVersion];
    NSDictionary *params = @{@"page": @(range.location),
                             @"per_page": @(range.length)};
    
    [self GET:path parameters:params success:^(NSURLSessionTask *task, id responseObject) {
        NSArray *actionsJson = responseObject[@"actions"];
        NSDictionary *meta = responseObject[@"meta"];
        NSMutableArray *actions = [NSMutableArray arrayWithCapacity:actionsJson.count];
        [actionsJson enumerateObjectsUsingBlock:^(NSDictionary *actionJson, NSUInteger idx, BOOL *stop) {
            DOAction *action = [[DOAction alloc] initWithJSON:actionJson];
            [actions addObject:action];
        }];
        NSUInteger totalCount = [meta[@"total"] unsignedIntegerValue];
        if (completeHandler) {
            completeHandler(actions, totalCount, nil);
        }
    } failure:^(NSURLSessionTask *task, NSError *error) {
        if (completeHandler) {
            completeHandler(nil, NSNotFound, error);
        }
    }];
}

- (void)getActionWithActionId:(NSUInteger)actionId complete:(void (^)(DOAction *action, NSError *error))completeHandler {
    NSString *path = [NSString stringWithFormat:kAPI_Action_GetAction, self.apiVersion, actionId];
    
    [self GET:path parameters:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSDictionary *actionJson = responseObject[@"action"];
        DOAction *action = [[DOAction alloc] initWithJSON:actionJson];
        if (completeHandler) {
            completeHandler(action, nil);
        }
    } failure:^(NSURLSessionTask *task, NSError *error) {
        if (completeHandler) {
            completeHandler(nil, error);
        }
    }];
}

@end
