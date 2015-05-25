//
//  DODroplet.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "DODroplet.h"
#import "DORegion.h"
#import "DOImage.h"
#import "DOSize.h"
#import "DONetworks.h"
#import "DOKernel.h"
#import "NSDate+ISO8601.h"

@implementation DODroplet

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.dropletId = [json[@"id"] unsignedIntegerValue];
        self.name = json[@"name"];
        self.memory = [json[@"memory"] unsignedIntegerValue];
        self.numberOfVirtualCPUs = [json[@"vcpus"] unsignedIntegerValue];
        self.sizeOfDisk = [json[@"disk"] unsignedIntegerValue];
        self.locked = [json[@"locked"] boolValue];
        self.createdTime = [NSDate dateWithISO8601String:json[@"created_at"]];
        NSString *status = json[@"status"];
        if ([status isEqualToString:@"new"]) {
            self.status = DODropletStatusNew;
        } else if ([status isEqualToString:@"active"]) {
            self.status = DODropletStatusActive;
        } else if ([status isEqualToString:@"off"]) {
            self.status = DODropletStatusOff;
        } else if ([status isEqualToString:@"archive"]) {
            self.status = DODropletStatusArchive;
        } else {
            self.status = DODropletStatusUnknow;
        }
        self.backupIds = json[@"backup_ids"];
        self.snapshotIds = json[@"snapshot_ids"];
        self.features = json[@"features"];
        
        self.region = [[DORegion alloc] initWithJSON:json[@"region"]];
        self.image = [[DOImage alloc] initWithJSON:json[@"image"]];
        self.size = [[DOSize alloc] initWithJSON:json[@"size"]];
        self.sizeSlug = json[@"size_slug"];
        self.networks = [[DONetworks alloc] initWithJSON:json[@"networks"]];
        self.kernel = [[DOKernel alloc] initWithJSON:json[@"kernel"]];
    }
    
    return self;
}

@end
