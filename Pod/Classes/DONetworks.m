//
//  DONetworks.m
//  Pods
//
//  Created by 0day on 15/5/25.
//
//

#import "DONetworks.h"

@implementation DONetwork

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        self.ipAddress = json[@"ip_address"];
        self.netmask = json[@"netmask"];
        self.gateway = json[@"gateway"];
        NSString *type = json[@"type"];
        if ([type isEqualToString:@"public"]) {
            self.type = DONetworkTypePublic;
        } else if ([type isEqualToString:@"private"]) {
            self.type = DONetworkTypePrivate;
        } else {
            self.type = DONetworkTypeUnknow;
        }
    }
    
    return self;
}

@end

@implementation DONetworks

- (instancetype)initWithJSON:(NSDictionary *)json {
    self = [super init];
    if (self) {
        NSArray *v4Jsons = json[@"v4"];
        NSArray *v6Jsons = json[@"v6"];
        
        self.ipv4Networks = [NSMutableArray arrayWithCapacity:v4Jsons.count];
        [v4Jsons enumerateObjectsUsingBlock:^(NSDictionary *json, NSUInteger idx, BOOL *stop) {
            DONetwork *network = [[DONetwork alloc] initWithJSON:json];
            [self.ipv4Networks addObject:network];
        }];
        
        self.ipv6Networks = [NSMutableArray arrayWithCapacity:v6Jsons.count];
        [v6Jsons enumerateObjectsUsingBlock:^(NSDictionary *json, NSUInteger idx, BOOL *stop) {
            DONetwork *network = [[DONetwork alloc] initWithJSON:json];
            [self.ipv6Networks addObject:network];
        }];
    }
    
    return self;
}

@end
