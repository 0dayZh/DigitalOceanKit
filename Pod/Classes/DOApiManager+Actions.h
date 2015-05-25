//
//  DOApiManager+Actions.h
//  Pods
//
//  Created by 0day on 15/5/24.
//
//

#import "DOApiManager.h"
#import "DOAction.h"

@interface DOApiManager (Actions)

- (void)listActionsWithPageRange:(NSRange)range complete:(void (^)(NSArray *actions, NSUInteger totalCount, NSError *error))completeHandler;
- (void)getActionWithActionId:(NSUInteger)actionId complete:(void (^)(DOAction *action, NSError *error))completeHandler;

@end
