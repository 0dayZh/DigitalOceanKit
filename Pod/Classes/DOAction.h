//
//  DOAction.h
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DOActionStatus) {
    DOActionStatusUnknow,
    DOActionStatusInProgress,
    DOActionStatusCompleted,
    DOActionStatusErrored
};

@interface DOAction : NSObject

@property (nonatomic, assign) NSUInteger    actionId;
@property (nonatomic, assign) DOActionStatus    status;
@property (nonatomic, strong) NSString  *type;
@property (nonatomic, strong) NSDate    *startedTime;
@property (nonatomic, strong) NSDate    *completedTime;
@property (nonatomic, assign) NSUInteger    resourceId;
@property (nonatomic, strong) NSString  *resourceType;
@property (nonatomic, strong) NSString  *regionSlug;

- (instancetype)initWithJSON:(NSDictionary *)json;

@end
