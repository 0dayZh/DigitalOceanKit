//
//  DOAction.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "DOAction.h"
#import "NSDate+ISO8601.h"

@implementation DOAction

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.actionId = [json[@"id"] unsignedIntegerValue];
        NSString *status = json[@"status"];
        if ([status isEqualToString:@"in-progress"]) {
            self.status = DOActionStatusInProgress;
        } else if ([status isEqualToString:@"completed"]) {
            self.status = DOActionStatusCompleted;
        } else if ([status isEqualToString:@"errored"]) {
            self.status = DOActionStatusErrored;
        } else {
            self.status = DOActionStatusUnknow;
        }
        self.type = json[@"type"];
        self.startedTime = [NSDate dateWithISO8601String:json[@"started_at"]];
        self.completedTime = [NSDate dateWithISO8601String:json[@"completed_at"]];
        self.resourceId = [json[@"resource_id"] unsignedIntegerValue];
        self.resourceType = json[@"resource_type"];
        self.regionSlug = json[@"region_slug"];
    }
    
    return self;
}

@end
