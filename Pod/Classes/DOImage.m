//
//  DOImage.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "DOImage.h"

@implementation DOImage

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.imageId = [json[@"id"] unsignedIntegerValue];
        self.name = json[@"name"];
        NSString *type = json[@"type"];
        if ([type isEqualToString:@"snapshot"]) {
            self.type = DOImageTypeSnapshot;
        } else if ([type isEqualToString:@"temporary"]) {
            self.type = DOImageTypeTemporary;
        } else if ([type isEqualToString:@"backup"]) {
            self.type = DOImageTypeBackup;
        } else {
            self.type = DOImageTypeUnknow;
        }
        self.distribution = json[@"distribution"];
        self.slug = json[@"slug"];
        self.publicImage = [json[@"public"] boolValue];
        self.regions = json[@"regions"];
        self.minDiskSize = [json[@"min_disk_size"] unsignedIntegerValue];
    }
    
    return self;
}

@end
